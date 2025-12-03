@interface RTTripClusterEnumerationOptions
- (BOOL)isEqual:(id)equal;
- (RTTripClusterEnumerationOptions)initWithCoder:(id)coder;
- (RTTripClusterEnumerationOptions)initWithMinCountOfTraversal:(unsigned __int16)traversal startLatitude:(double)latitude startLongitude:(double)longitude endLatitude:(double)endLatitude endLongitude:(double)endLongitude;
- (RTTripClusterEnumerationOptions)initWithbatchSize:(unint64_t)size;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripClusterEnumerationOptions

- (RTTripClusterEnumerationOptions)initWithbatchSize:(unint64_t)size
{
  v5.receiver = self;
  v5.super_class = RTTripClusterEnumerationOptions;
  result = [(RTTripClusterEnumerationOptions *)&v5 init];
  if (result)
  {
    result->_batchSize = size;
  }

  return result;
}

- (RTTripClusterEnumerationOptions)initWithMinCountOfTraversal:(unsigned __int16)traversal startLatitude:(double)latitude startLongitude:(double)longitude endLatitude:(double)endLatitude endLongitude:(double)endLongitude
{
  v13.receiver = self;
  v13.super_class = RTTripClusterEnumerationOptions;
  result = [(RTTripClusterEnumerationOptions *)&v13 init];
  if (result)
  {
    result->_startLatitude = latitude;
    result->_startLongitude = longitude;
    result->_endLatitude = endLatitude;
    result->_endLongitude = endLongitude;
    result->_batchSize = 0;
    result->_minCountOfTraversal = traversal;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(RTTripClusterEnumerationOptions *)self startLatitude];
  v6 = v5;
  [(RTTripClusterEnumerationOptions *)self startLongitude];
  v8 = v7;
  [(RTTripClusterEnumerationOptions *)self endLatitude];
  v10 = v9;
  [(RTTripClusterEnumerationOptions *)self endLongitude];

  return [v4 initWithStartAndEndVisitLatitude:v6 startLongitude:v8 endLatitude:v10 endLongitude:v11];
}

- (void)encodeWithCoder:(id)coder
{
  batchSize = self->_batchSize;
  coderCopy = coder;
  [coderCopy encodeInteger:batchSize forKey:@"batchSize"];
  [coderCopy encodeDouble:@"startLatitude" forKey:self->_startLatitude];
  [coderCopy encodeDouble:@"startLongitude" forKey:self->_startLongitude];
  [coderCopy encodeDouble:@"endLatitude" forKey:self->_endLatitude];
  [coderCopy encodeDouble:@"endLongitude" forKey:self->_endLongitude];
  [coderCopy encodeInteger:self->_minCountOfTraversal forKey:@"minCountOfTraversal"];
}

- (RTTripClusterEnumerationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"startLatitude"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"startLongitude"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"endLatitude"];
  v10 = v9;
  [coderCopy decodeDoubleForKey:@"endLongitude"];
  v12 = v11;
  v13 = [coderCopy decodeIntegerForKey:@"minCountOfTraversal"];

  return [(RTTripClusterEnumerationOptions *)self initWithMinCountOfTraversal:v13 startLatitude:v6 startLongitude:v8 endLatitude:v10 endLongitude:v12];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v21 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    [(RTTripClusterEnumerationOptions *)self startLatitude];
    v8 = v7;
    [(RTTripClusterEnumerationOptions *)v6 startLatitude];
    if (vabdd_f64(v8, v9) >= 2.22044605e-16)
    {
      goto LABEL_12;
    }

    [(RTTripClusterEnumerationOptions *)self startLongitude];
    v11 = v10;
    [(RTTripClusterEnumerationOptions *)v6 startLongitude];
    if (vabdd_f64(v11, v12) >= 2.22044605e-16)
    {
      goto LABEL_12;
    }

    [(RTTripClusterEnumerationOptions *)self endLatitude];
    v14 = v13;
    [(RTTripClusterEnumerationOptions *)v6 endLatitude];
    if (vabdd_f64(v14, v15) < 2.22044605e-16 && ([(RTTripClusterEnumerationOptions *)self endLongitude], v17 = v16, [(RTTripClusterEnumerationOptions *)v6 endLongitude], vabdd_f64(v17, v18) < 2.22044605e-16) && (v19 = [(RTTripClusterEnumerationOptions *)self batchSize], v19 == [(RTTripClusterEnumerationOptions *)v6 batchSize]))
    {
      minCountOfTraversal = [(RTTripClusterEnumerationOptions *)self minCountOfTraversal];
      v21 = minCountOfTraversal == [(RTTripClusterEnumerationOptions *)v6 minCountOfTraversal];
    }

    else
    {
LABEL_12:
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_batchSize];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startLatitude];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startLongitude];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endLatitude];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endLongitude];
  v12 = [v11 hash];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_minCountOfTraversal];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  batchSize = [(RTTripClusterEnumerationOptions *)self batchSize];
  [(RTTripClusterEnumerationOptions *)self startLatitude];
  v6 = v5;
  [(RTTripClusterEnumerationOptions *)self startLongitude];
  v8 = v7;
  [(RTTripClusterEnumerationOptions *)self endLatitude];
  v10 = v9;
  [(RTTripClusterEnumerationOptions *)self endLongitude];
  return [v3 stringWithFormat:@"batchSize, %lu, startLat, %.7f, startLon, %.7f, endLat, %.7f, endLon, %.7f, minCntTraversal, %d", batchSize, v6, v8, v10, v11, -[RTTripClusterEnumerationOptions minCountOfTraversal](self, "minCountOfTraversal")];
}

@end