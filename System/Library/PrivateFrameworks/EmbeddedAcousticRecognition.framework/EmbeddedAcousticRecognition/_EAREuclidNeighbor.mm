@interface _EAREuclidNeighbor
- (_EAREuclidNeighbor)initWithName:(id)name distance:(id)distance;
- (id)description;
@end

@implementation _EAREuclidNeighbor

- (_EAREuclidNeighbor)initWithName:(id)name distance:(id)distance
{
  nameCopy = name;
  distanceCopy = distance;
  name = self->_name;
  self->_name = nameCopy;
  v9 = nameCopy;

  distance = self->_distance;
  self->_distance = distanceCopy;

  return self;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = _EAREuclidNeighbor;
  v3 = [(_EAREuclidNeighbor *)&v8 description];
  name = [(_EAREuclidNeighbor *)self name];
  distance = [(_EAREuclidNeighbor *)self distance];
  v6 = [v3 stringByAppendingFormat:@" name=%@, distance=%@", name, distance];

  return v6;
}

@end