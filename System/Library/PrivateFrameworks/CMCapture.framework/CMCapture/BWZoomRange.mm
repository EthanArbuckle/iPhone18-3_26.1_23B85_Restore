@interface BWZoomRange
+ (id)fudgedZoomRangeWithLower:(float)lower upperBound:(float)bound fudgedLowerBound:(float)lowerBound fudgedUpperBound:(float)upperBound;
+ (id)zoomRangeWithLower:(float)lower upperBound:(float)bound;
- (BOOL)isEqual:(id)equal;
- (BWZoomRange)initWithLowerBound:(float)bound upperBound:(float)upperBound;
- (BWZoomRange)initWithLowerBound:(float)bound upperBound:(float)upperBound fudgedLowerBound:(float)lowerBound fudgedUpperBound:(float)fudgedUpperBound;
- (float)applyFudgeToZoomFactor:(float)factor;
- (float)removeFudgeFromZoomFactor:(float)factor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation BWZoomRange

+ (id)zoomRangeWithLower:(float)lower upperBound:(float)bound
{
  v6 = [BWZoomRange alloc];
  *&v7 = lower;
  *&v8 = bound;
  v9 = [(BWZoomRange *)v6 initWithLowerBound:v7 upperBound:v8];

  return v9;
}

+ (id)fudgedZoomRangeWithLower:(float)lower upperBound:(float)bound fudgedLowerBound:(float)lowerBound fudgedUpperBound:(float)upperBound
{
  v10 = [BWZoomRange alloc];
  *&v11 = lower;
  *&v12 = bound;
  *&v13 = lowerBound;
  *&v14 = upperBound;
  v15 = [(BWZoomRange *)v10 initWithLowerBound:v11 upperBound:v12 fudgedLowerBound:v13 fudgedUpperBound:v14];

  return v15;
}

- (BWZoomRange)initWithLowerBound:(float)bound upperBound:(float)upperBound fudgedLowerBound:(float)lowerBound fudgedUpperBound:(float)fudgedUpperBound
{
  v23.receiver = self;
  v23.super_class = BWZoomRange;
  result = [(BWZoomRange *)&v23 init];
  if (result)
  {
    if (bound < upperBound && lowerBound < fudgedUpperBound)
    {
      result->_lowerBound = bound;
      result->_upperBound = upperBound;
      result->_fudgedLowerBound = lowerBound;
      result->_fudgedUpperBound = fudgedUpperBound;
      boundCopy = bound * 1024.0;
      if (bound >= 1024.0)
      {
        boundCopy = bound;
      }

      v13 = boundCopy;
      upperBoundCopy = upperBound * 1024.0;
      if (upperBound >= 1024.0)
      {
        upperBoundCopy = upperBound;
      }

      v15 = upperBoundCopy;
      if (fudgedUpperBound >= 1024.0)
      {
        v16 = 2.0;
      }

      else
      {
        v16 = 2048.0;
      }

      v17 = (v16 * fudgedUpperBound);
      if (lowerBound >= 1024.0)
      {
        v18 = 2.0;
      }

      else
      {
        v18 = 2048.0;
      }

      v19 = (v18 * lowerBound);
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

- (BWZoomRange)initWithLowerBound:(float)bound upperBound:(float)upperBound
{
  *&v4 = bound;
  *&v5 = upperBound;
  return [(BWZoomRange *)self initWithLowerBound:*&bound upperBound:*&upperBound fudgedLowerBound:v4 fudgedUpperBound:v5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BWZoomRange allocWithZone:zone];
  *&v5 = self->_lowerBound;
  *&v6 = self->_upperBound;
  *&v7 = self->_fudgedLowerBound;
  *&v8 = self->_fudgedUpperBound;

  return [(BWZoomRange *)v4 initWithLowerBound:v5 upperBound:v6 fudgedLowerBound:v7 fudgedUpperBound:v8];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [equal lowerBound];
  if (v5 != self->_lowerBound)
  {
    return 0;
  }

  [equal upperBound];
  if (v6 != self->_upperBound)
  {
    return 0;
  }

  [equal fudgedLowerBound];
  if (v7 != self->_fudgedLowerBound)
  {
    return 0;
  }

  [equal fudgedUpperBound];
  return v9 == self->_fudgedUpperBound;
}

- (float)applyFudgeToZoomFactor:(float)factor
{
  lowerBound = self->_lowerBound;
  if (lowerBound > factor)
  {
    return self->_fudgedLowerBound;
  }

  upperBound = self->_upperBound;
  if (upperBound >= factor)
  {
    return self->_fudgedLowerBound + ((self->_fudgedUpperBound - self->_fudgedLowerBound) * ((factor - lowerBound) / (upperBound - lowerBound)));
  }

  else
  {
    return self->_fudgedUpperBound;
  }
}

- (float)removeFudgeFromZoomFactor:(float)factor
{
  fudgedLowerBound = self->_fudgedLowerBound;
  if (fudgedLowerBound > factor)
  {
    return self->_lowerBound;
  }

  fudgedUpperBound = self->_fudgedUpperBound;
  if (fudgedUpperBound >= factor)
  {
    return self->_lowerBound + ((self->_upperBound - self->_lowerBound) * ((factor - fudgedLowerBound) / (fudgedUpperBound - fudgedLowerBound)));
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