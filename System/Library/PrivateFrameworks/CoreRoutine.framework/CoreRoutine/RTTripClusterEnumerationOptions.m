@interface RTTripClusterEnumerationOptions
- (BOOL)isEqual:(id)a3;
- (RTTripClusterEnumerationOptions)initWithCoder:(id)a3;
- (RTTripClusterEnumerationOptions)initWithMinCountOfTraversal:(unsigned __int16)a3 startLatitude:(double)a4 startLongitude:(double)a5 endLatitude:(double)a6 endLongitude:(double)a7;
- (RTTripClusterEnumerationOptions)initWithbatchSize:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripClusterEnumerationOptions

- (RTTripClusterEnumerationOptions)initWithbatchSize:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTTripClusterEnumerationOptions;
  result = [(RTTripClusterEnumerationOptions *)&v5 init];
  if (result)
  {
    result->_batchSize = a3;
  }

  return result;
}

- (RTTripClusterEnumerationOptions)initWithMinCountOfTraversal:(unsigned __int16)a3 startLatitude:(double)a4 startLongitude:(double)a5 endLatitude:(double)a6 endLongitude:(double)a7
{
  v13.receiver = self;
  v13.super_class = RTTripClusterEnumerationOptions;
  result = [(RTTripClusterEnumerationOptions *)&v13 init];
  if (result)
  {
    result->_startLatitude = a4;
    result->_startLongitude = a5;
    result->_endLatitude = a6;
    result->_endLongitude = a7;
    result->_batchSize = 0;
    result->_minCountOfTraversal = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(RTTripClusterEnumerationOptions *)self startLatitude];
  v6 = v5;
  [(RTTripClusterEnumerationOptions *)self startLongitude];
  v8 = v7;
  [(RTTripClusterEnumerationOptions *)self endLatitude];
  v10 = v9;
  [(RTTripClusterEnumerationOptions *)self endLongitude];

  return [v4 initWithStartAndEndVisitLatitude:v6 startLongitude:v8 endLatitude:v10 endLongitude:v11];
}

- (void)encodeWithCoder:(id)a3
{
  batchSize = self->_batchSize;
  v5 = a3;
  [v5 encodeInteger:batchSize forKey:@"batchSize"];
  [v5 encodeDouble:@"startLatitude" forKey:self->_startLatitude];
  [v5 encodeDouble:@"startLongitude" forKey:self->_startLongitude];
  [v5 encodeDouble:@"endLatitude" forKey:self->_endLatitude];
  [v5 encodeDouble:@"endLongitude" forKey:self->_endLongitude];
  [v5 encodeInteger:self->_minCountOfTraversal forKey:@"minCountOfTraversal"];
}

- (RTTripClusterEnumerationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"startLatitude"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"startLongitude"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"endLatitude"];
  v10 = v9;
  [v4 decodeDoubleForKey:@"endLongitude"];
  v12 = v11;
  v13 = [v4 decodeIntegerForKey:@"minCountOfTraversal"];

  return [(RTTripClusterEnumerationOptions *)self initWithMinCountOfTraversal:v13 startLatitude:v6 startLongitude:v8 endLatitude:v10 endLongitude:v12];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v21 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
      v20 = [(RTTripClusterEnumerationOptions *)self minCountOfTraversal];
      v21 = v20 == [(RTTripClusterEnumerationOptions *)v6 minCountOfTraversal];
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
  v4 = [(RTTripClusterEnumerationOptions *)self batchSize];
  [(RTTripClusterEnumerationOptions *)self startLatitude];
  v6 = v5;
  [(RTTripClusterEnumerationOptions *)self startLongitude];
  v8 = v7;
  [(RTTripClusterEnumerationOptions *)self endLatitude];
  v10 = v9;
  [(RTTripClusterEnumerationOptions *)self endLongitude];
  return [v3 stringWithFormat:@"batchSize, %lu, startLat, %.7f, startLon, %.7f, endLat, %.7f, endLon, %.7f, minCntTraversal, %d", v4, v6, v8, v10, v11, -[RTTripClusterEnumerationOptions minCountOfTraversal](self, "minCountOfTraversal")];
}

@end