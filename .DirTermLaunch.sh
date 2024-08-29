#!/bin/bash

pgrep -x nemo > /dev/null
STATUS=$?

if [ $STATUS -eq 0 ]; then
	
	xdotool key ctrl+l
	#sleep 1
	xdotool key ctrl+c
	#sleep 1
	CURRENT_DIR=$(xsel -b)
	if [ -z "$CURRENT_DIR" ]; then
		CURRENT_DIR="$HOME"
	fi
	gnome-terminal --working-directory="$CURRENT_DIR"
fi
