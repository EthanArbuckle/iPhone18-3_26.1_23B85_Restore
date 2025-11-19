@interface BWMovingWindowStats
- (BOOL)addDataPointP:(double)a3;
- (BWMovingWindowStats)initWithWindowSize:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation BWMovingWindowStats

- (BWMovingWindowStats)initWithWindowSize:(int)a3
{
  if (a3 <= 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Window size needs to be greater than 0" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = BWMovingWindowStats;
  result = [(BWMedianStats *)&v5 initWithMaxNumberOfSamplesForMedianCalculation:a3];
  if (result)
  {
    result->_windowSize = a3;
    result->_dataPointIndex = 0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWMovingWindowStats;
  [(BWMedianStats *)&v2 dealloc];
}

- (BOOL)addDataPointP:(double)a3
{
  if ([(BWStats *)self numberOfSamples]>= self->_windowSize)
  {
    v5 = [(BWMedianStats *)self addDataPointP:a3 atIndex:?];
    if (v5)
    {
      dataPointIndex = self->_dataPointIndex;
      self->_dataPointIndex = dataPointIndex + 1;
      if (dataPointIndex + 1 < self->_windowSize)
      {
        v7 = dataPointIndex + 1;
      }

      else
      {
        v7 = 0;
      }

      self->_dataPointIndex = v7;
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BWMovingWindowStats;
    LOBYTE(v5) = [(BWMedianStats *)&v9 addDataPointP:a3];
  }

  return v5;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = BWMovingWindowStats;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"Moving Average: %@", -[BWMedianStats description](&v3, sel_description)];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = BWMovingWindowStats;
  result = [(BWMedianStats *)&v5 copyWithZone:a3];
  *(result + 20) = self->_windowSize;
  *(result + 21) = self->_dataPointIndex;
  return result;
}

@end