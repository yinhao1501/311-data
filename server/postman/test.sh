# this hits all the endpoints in the given postman collection, using the
# given environment

# run from the /server directory while the api is running


COLLECTION=311-ci
ENVIRONMENT=311-local

docker run \
  --network host \
  -v `pwd`/postman/collections:/etc/newman \
  -v `pwd`/postman/environments:/etc/newman-envs \
  -t postman/newman:alpine run ${COLLECTION}.postman_collection.json \
  --environment="/etc/newman-envs/${ENVIRONMENT}.postman_environment.json"
