@interface NgtMenstrualAlgorithmsHeartRateStatistics
- (NgtMenstrualAlgorithmsHeartRateStatistics)initWithCoder:(id)coder;
- (NgtMenstrualAlgorithmsHeartRateStatistics)initWithLowerPercentile:(id)percentile forSampleCount:(int)count;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NgtMenstrualAlgorithmsHeartRateStatistics

- (NgtMenstrualAlgorithmsHeartRateStatistics)initWithLowerPercentile:(id)percentile forSampleCount:(int)count
{
  percentileCopy = percentile;
  v12.receiver = self;
  v12.super_class = NgtMenstrualAlgorithmsHeartRateStatistics;
  v8 = [(NgtMenstrualAlgorithmsHeartRateStatistics *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lowerPercentile, percentile);
    v9->_sampleCount = count;
    v10 = v9;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  lowerPercentile = self->_lowerPercentile;
  v5 = NSStringFromSelector(sel_lowerPercentile);
  [coderCopy encodeObject:lowerPercentile forKey:v5];

  sampleCount = self->_sampleCount;
  v7 = NSStringFromSelector(sel_sampleCount);
  [coderCopy encodeInteger:sampleCount forKey:v7];
}

- (NgtMenstrualAlgorithmsHeartRateStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NgtMenstrualAlgorithmsHeartRateStatistics *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_lowerPercentile);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    lowerPercentile = v5->_lowerPercentile;
    v5->_lowerPercentile = v8;

    v10 = NSStringFromSelector(sel_sampleCount);
    v5->_sampleCount = [coderCopy decodeIntegerForKey:v10];

    v11 = v5;
  }

  return v5;
}

@end