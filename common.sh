#!/bin/bash

function required_envvars {
    condition_met=true
    for i in "$@"; do
    if [ -z "$i" ]; then
            echo "ERROR: $i needs to be set. Make sure your params.tpl or other foo.tpl files contains it"
            condition_met=false
        else
            echo "$i=${!i}"
        fi
    done
    if [ "$condition_met" = "false" ]; then
        echo
        exit 1
    fi
}

log()
{
	echo "$1"
}