@interface NgtMenstrualAlgorithmsHeartRateStatistics
- (NgtMenstrualAlgorithmsHeartRateStatistics)initWithCoder:(id)a3;
- (NgtMenstrualAlgorithmsHeartRateStatistics)initWithLowerPercentile:(id)a3 forSampleCount:(int)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NgtMenstrualAlgorithmsHeartRateStatistics

- (NgtMenstrualAlgorithmsHeartRateStatistics)initWithLowerPercentile:(id)a3 forSampleCount:(int)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = NgtMenstrualAlgorithmsHeartRateStatistics;
  v8 = [(NgtMenstrualAlgorithmsHeartRateStatistics *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lowerPercentile, a3);
    v9->_sampleCount = a4;
    v10 = v9;
  }

  return v9;
}

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

- (NgtMenstrualAlgorithmsHeartRateStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NgtMenstrualAlgorithmsHeartRateStatistics *)self init];
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