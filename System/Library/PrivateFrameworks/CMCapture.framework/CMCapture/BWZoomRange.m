@interface BWZoomRange
+ (id)fudgedZoomRangeWithLower:(float)a3 upperBound:(float)a4 fudgedLowerBound:(float)a5 fudgedUpperBound:(float)a6;
+ (id)zoomRangeWithLower:(float)a3 upperBound:(float)a4;
- (BOOL)isEqual:(id)a3;
- (BWZoomRange)initWithLowerBound:(float)a3 upperBound:(float)a4;
- (BWZoomRange)initWithLowerBound:(float)a3 upperBound:(float)a4 fudgedLowerBound:(float)a5 fudgedUpperBound:(float)a6;
- (float)applyFudgeToZoomFactor:(float)a3;
- (float)removeFudgeFromZoomFactor:(float)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation BWZoomRange

+ (id)zoomRangeWithLower:(float)a3 upperBound:(float)a4
{
  v6 = [BWZoomRange alloc];
  *&v7 = a3;
  *&v8 = a4;
  v9 = [(BWZoomRange *)v6 initWithLowerBound:v7 upperBound:v8];

  return v9;
}

+ (id)fudgedZoomRangeWithLower:(float)a3 upperBound:(float)a4 fudgedLowerBound:(float)a5 fudgedUpperBound:(float)a6
{
  v10 = [BWZoomRange alloc];
  *&v11 = a3;
  *&v12 = a4;
  *&v13 = a5;
  *&v14 = a6;
  v15 = [(BWZoomRange *)v10 initWithLowerBound:v11 upperBound:v12 fudgedLowerBound:v13 fudgedUpperBound:v14];

  return v15;
}

- (BWZoomRange)initWithLowerBound:(float)a3 upperBound:(float)a4 fudgedLowerBound:(float)a5 fudgedUpperBound:(float)a6
{
  v23.receiver = self;
  v23.super_class = BWZoomRange;
  result = [(BWZoomRange *)&v23 init];
  if (result)
  {
    if (a3 < a4 && a5 < a6)
    {
      result->_lowerBound = a3;
      result->_upperBound = a4;
      result->_fudgedLowerBound = a5;
      result->_fudgedUpperBound = a6;
      v12 = a3 * 1024.0;
      if (a3 >= 1024.0)
      {
        v12 = a3;
      }

      v13 = v12;
      v14 = a4 * 1024.0;
      if (a4 >= 1024.0)
      {
        v14 = a4;
      }

      v15 = v14;
      if (a6 >= 1024.0)
      {
        v16 = 2.0;
      }

      else
      {
        v16 = 2048.0;
      }

      v17 = (v16 * a6);
      if (a5 >= 1024.0)
      {
        v18 = 2.0;
      }

      else
      {
        v18 = 2048.0;
      }

      v19 = (v18 * a5);
      v20 = v15 ^ v13;
      if (v13 == v19 || v15 == v17)
      {
        v22 = v20;
      }

      else
      {
        v22 = v20 ^ v19 ^ v17;
      }

      result->_hash = v22;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

- (BWZoomRange)initWithLowerBound:(float)a3 upperBound:(float)a4
{
  *&v4 = a3;
  *&v5 = a4;
  return [(BWZoomRange *)self initWithLowerBound:*&a3 upperBound:*&a4 fudgedLowerBound:v4 fudgedUpperBound:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BWZoomRange allocWithZone:a3];
  *&v5 = self->_lowerBound;
  *&v6 = self->_upperBound;
  *&v7 = self->_fudgedLowerBound;
  *&v8 = self->_fudgedUpperBound;

  return [(BWZoomRange *)v4 initWithLowerBound:v5 upperBound:v6 fudgedLowerBound:v7 fudgedUpperBound:v8];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [a3 lowerBound];
  if (v5 != self->_lowerBound)
  {
    return 0;
  }

  [a3 upperBound];
  if (v6 != self->_upperBound)
  {
    return 0;
  }

  [a3 fudgedLowerBound];
  if (v7 != self->_fudgedLowerBound)
  {
    return 0;
  }

  [a3 fudgedUpperBound];
  return v9 == self->_fudgedUpperBound;
}

- (float)applyFudgeToZoomFactor:(float)a3
{
  lowerBound = self->_lowerBound;
  if (lowerBound > a3)
  {
    return self->_fudgedLowerBound;
  }

  upperBound = self->_upperBound;
  if (upperBound >= a3)
  {
    return self->_fudgedLowerBound + ((self->_fudgedUpperBound - self->_fudgedLowerBound) * ((a3 - lowerBound) / (upperBound - lowerBound)));
  }

  else
  {
    return self->_fudgedUpperBound;
  }
}

- (float)removeFudgeFromZoomFactor:(float)a3
{
  fudgedLowerBound = self->_fudgedLowerBound;
  if (fudgedLowerBound > a3)
  {
    return self->_lowerBound;
  }

  fudgedUpperBound = self->_fudgedUpperBound;
  if (fudgedUpperBound >= a3)
  {
    return self->_lowerBound + ((self->_upperBound - self->_lowerBound) * ((a3 - fudgedLowerBound) / (fudgedUpperBound - fudgedLowerBound)));
  }

  else
  {
    return self->_upperBound;
  }
}

- (id)description
{
  lowerBound = self->_lowerBound;
  upperBound = self->_upperBound;
  fudgedLowerBound = self->_fudgedLowerBound;
  fudgedUpperBound = self->_fudgedUpperBound;
  v6 = lowerBound;
  v7 = upperBound;
  if (lowerBound == fudgedLowerBound && upperBound == fudgedUpperBound)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"[%f..%f]", v6, v7, lowerBound, upperBound, v10, v11];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"[%f..%f] -> [%f..%f]", v6, v7, lowerBound, upperBound, fudgedLowerBound, fudgedUpperBound];
  }
}

@end