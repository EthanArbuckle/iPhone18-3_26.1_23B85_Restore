@interface BWMedianStats
- (BOOL)addDataPointP:(double)p;
- (BWMedianStats)initWithMaxNumberOfSamplesForMedianCalculation:(int64_t)calculation;
- (double)median;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (uint64_t)addDataPointP:(double)p atIndex:;
- (void)dealloc;
@end

@implementation BWMedianStats

- (BWMedianStats)initWithMaxNumberOfSamplesForMedianCalculation:(int64_t)calculation
{
  if (calculation < 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid median max number of samples" userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = BWMedianStats;
  v4 = [(BWStats *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_maxNumberOfSamplesForMedianCalculation = calculation;
    v4->_samples = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v5;
}

- (BOOL)addDataPointP:(double)p
{
  v7.receiver = self;
  v7.super_class = BWMedianStats;
  v5 = [(BWStats *)&v7 addDataPointP:?];
  if (v5)
  {
    if (self->_maxNumberOfSamplesForMedianCalculation < 1 || [(BWStats *)self numberOfSamples]<= self->_maxNumberOfSamplesForMedianCalculation)
    {
      -[NSMutableArray addObject:](self->_samples, "addObject:", [MEMORY[0x1E696AD98] numberWithDouble:p]);
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (uint64_t)addDataPointP:(double)p atIndex:
{
  if (result)
  {
    if ((a2 & 0x8000000000000000) != 0 || (v5 = result, [*(result + 72) count] <= a2))
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Index out of range" userInfo:0]);
    }

    v8.receiver = v5;
    v8.super_class = BWMedianStats;
    result = objc_msgSendSuper2(&v8, sel_addDataPointP_, p);
    if (result)
    {
      [objc_msgSend(*(v5 + 72) objectAtIndexedSubscript:{a2), "doubleValue"}];
      --*(v5 + 24);
      v6 = *(v5 + 56);
      *(v5 + 48) = *(v5 + 48) - v7;
      *(v5 + 56) = v6 - v7 * v7;
      [*(v5 + 72) setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithDouble:", p), a2}];
      return 1;
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMedianStats;
  [(BWStats *)&v3 dealloc];
}

- (double)median
{
  v3 = [(NSMutableArray *)self->_samples count];
  if (v3)
  {
    v4 = v3;
    v5 = [(NSMutableArray *)self->_samples sortedArrayUsingSelector:sel_compare_];
    v6 = v5;
    if (v4)
    {
      [objc_msgSend(v5 objectAtIndex:{v4 >> 1), "doubleValue"}];
      v10 = v11;
    }

    else
    {
      [objc_msgSend(v5 objectAtIndex:{(v4 >> 1) - 1), "doubleValue"}];
      v8 = v7;
      [objc_msgSend(v6 objectAtIndex:{v4 >> 1), "doubleValue"}];
      v10 = (v8 + v9) * 0.5;
    }
  }

  else
  {
    v10 = 0.0;
  }

  [(BWStats *)self multiplier];
  return v10 * v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = BWMedianStats;
  v4 = [(BWStats *)&v7 description];
  [(BWMedianStats *)self median];
  return [v3 stringWithFormat:@"%@, median: %lf%@ over %lu samples", v4, v5, -[BWStats unitDesignator](self, "unitDesignator"), -[NSMutableArray count](self->_samples, "count")];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v4[8] = self->_maxNumberOfSamplesForMedianCalculation;
  v4[9] = [(NSMutableArray *)self->_samples copy];
  return v4;
}

@end