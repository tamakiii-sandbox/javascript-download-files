.PHONY: help install dependencies server clean

PORT := 3030

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	dependencies \
	node_modules

dependencies:
	type node > /dev/null

server:
	npx --no-install http-server -p $(PORT) .

node_modules:
	npm install

clean:
	rm -rf node_modules