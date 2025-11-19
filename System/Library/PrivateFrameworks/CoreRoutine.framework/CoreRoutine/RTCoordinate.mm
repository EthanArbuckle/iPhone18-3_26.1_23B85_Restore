@interface RTCoordinate
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCoordinate:(id)a3;
- (RTCoordinate)initWithCoder:(id)a3;
- (RTCoordinate)initWithLatitude:(double)a3 longitude:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (RTCoordinate)initWithLatitude:(double)a3 longitude:(double)a4
{
  v7.receiver = self;
  v7.super_class = RTCoordinate;
  result = [(RTCoordinate *)&v7 init];
  if (result)
  {
    result->_latitude = a3;
    result->_longitude = a4;
  }

  return result;
}

- (RTCoordinate)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"latitude"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"longitude"];
  v8 = v7;

  return [(RTCoordinate *)self initWithLatitude:v6 longitude:v8];
}

- (void)encodeWithCoder:(id)a3
{
  latitude = self->_latitude;
  v5 = a3;
  [v5 encodeDouble:@"latitude" forKey:latitude];
  [v5 encodeDouble:@"longitude" forKey:self->_longitude];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  latitude = self->_latitude;
  longitude = self->_longitude;

  return [v4 initWithLatitude:latitude longitude:longitude];
}

- (BOOL)isEqualToCoordinate:(id)a3
{
  v4 = a3;
  v5 = round(self->_latitude * 1000000.0);
  [v4 latitude];
  if (v5 == round(v6 * 1000000.0))
  {
    v7 = round(self->_longitude * 1000000.0);
    [v4 longitude];
    v9 = v7 == round(v8 * 1000000.0);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTCoordinate *)self isEqualToCoordinate:v5];
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