@interface RTCoordinate
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCoordinate:(id)coordinate;
- (RTCoordinate)initWithCoder:(id)coder;
- (RTCoordinate)initWithLatitude:(double)latitude longitude:(double)longitude;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTCoordinate

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(RTCoordinate *)self latitude];
  v5 = v4;
  [(RTCoordinate *)self longitude];
  return [v3 stringWithFormat:@"<%.6f, %.6f>", v5, v6];
}

- (RTCoordinate)initWithLatitude:(double)latitude longitude:(double)longitude
{
  v7.receiver = self;
  v7.super_class = RTCoordinate;
  result = [(RTCoordinate *)&v7 init];
  if (result)
  {
    result->_latitude = latitude;
    result->_longitude = longitude;
  }

  return result;
}

- (RTCoordinate)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"latitude"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"longitude"];
  v8 = v7;

  return [(RTCoordinate *)self initWithLatitude:v6 longitude:v8];
}

- (void)encodeWithCoder:(id)coder
{
  latitude = self->_latitude;
  coderCopy = coder;
  [coderCopy encodeDouble:@"latitude" forKey:latitude];
  [coderCopy encodeDouble:@"longitude" forKey:self->_longitude];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  latitude = self->_latitude;
  longitude = self->_longitude;

  return [v4 initWithLatitude:latitude longitude:longitude];
}

- (BOOL)isEqualToCoordinate:(id)coordinate
{
  coordinateCopy = coordinate;
  v5 = round(self->_latitude * 1000000.0);
  [coordinateCopy latitude];
  if (v5 == round(v6 * 1000000.0))
  {
    v7 = round(self->_longitude * 1000000.0);
    [coordinateCopy longitude];
    v9 = v7 == round(v8 * 1000000.0);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTCoordinate *)self isEqualToCoordinate:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:round(self->_latitude * 1000000.0)];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:round(self->_longitude * 1000000.0)];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end