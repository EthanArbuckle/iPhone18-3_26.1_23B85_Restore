@interface HAMenstrualAlgorithmsHeartRateStatistics
- (HAMenstrualAlgorithmsHeartRateStatistics)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HAMenstrualAlgorithmsHeartRateStatistics

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  lowerPercentile = self->_lowerPercentile;
  v5 = NSStringFromSelector(sel_lowerPercentile);
  [v8 encodeObject:lowerPercentile forKey:v5];

  sampleCount = self->_sampleCount;
  v7 = NSStringFromSelector(sel_sampleCount);
  [v8 encodeInteger:sampleCount forKey:v7];
}

- (HAMenstrualAlgorithmsHeartRateStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HAMenstrualAlgorithmsHeartRateStatistics *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_lowerPercentile);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    lowerPercentile = v5->_lowerPercentile;
    v5->_lowerPercentile = v8;

    v10 = NSStringFromSelector(sel_sampleCount);
    v5->_sampleCount = [v4 decodeIntegerForKey:v10];

    v11 = v5;
  }

  return v5;
}

@end