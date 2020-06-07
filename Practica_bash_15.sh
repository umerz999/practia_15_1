#!/bin/bash 
# https://github.com/FJBERNI/Practica1.git
# Muestra si el usuario es root.

if [[ "${UID}" -eq 0 ]]
then
  echo 'You are root.'

	# Pide el nombre usuario.
	read -p 'Introduzca nombre de usuario: ' USER
  

	# Pide nombre real.
	read -p 'Nombre de la persona que usara esté usuario: ' NOMBRE
 		
		
	# Pide el password.
	read -p 'Introduzca la contraseña: ' PASSWORD
 	if [[ "${?}" -ne 0 ]]
	then
	echo "Tu usuario es ${USER}"
	else
			echo 'El comando no se ha ejecutado correctamente'
fi
	# Crea el user.
	useradd -c "${NOMBRE}" -m ${USER}
	if [[ "${?}" -ne 0 ]]
	then
	echo "Tu nombre es ${NOMBRE}"
		  
		  else
			echo 'El comando no se ha ejecutado correctamente'
	fi	
	# Forzar el cambio de contraseña en el primer inicio.
	passwd -e ${USER}

	# Muestra el nombre de usuario.
	echo "Tu nombre de usuario es ${USER}"

	#Muestra la contraseña de usurio.
	echo "La contraseña es ${PASSWORD}"

	# Muestra el host
	echo "El usuario se ha creado en el host $HOSTNAME"
	
else
  echo 'You are not root.'
fi
