@interface HAMenstrualAlgorithmsHeartRateStatistics
- (HAMenstrualAlgorithmsHeartRateStatistics)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HAMenstrualAlgorithmsHeartRateStatistics

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

- (HAMenstrualAlgorithmsHeartRateStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HAMenstrualAlgorithmsHeartRateStatistics *)self init];
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