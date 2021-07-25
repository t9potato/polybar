#!/bin/sh

prepend_zero () {
    seq -f "%02g" $1 $1
}
song=$(echo -n $(cmus-remote -C status | grep title | cut -c 11-))

echo -n "$song"
