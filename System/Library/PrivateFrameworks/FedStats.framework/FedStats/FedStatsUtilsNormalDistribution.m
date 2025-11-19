@interface FedStatsUtilsNormalDistribution
- (FedStatsUtilsNormalDistribution)init;
- (FedStatsUtilsNormalDistribution)initWithMean:(double)a3;
- (FedStatsUtilsNormalDistribution)initWithMean:(double)a3 standardDeviation:(double)a4;
- (FedStatsUtilsNormalDistribution)initWithStandardDeviation:(double)a3;
- (double)sample;
- (double)sampleWithUnitNumberGenerator:(id)a3;
- (double)variance;
- (double)varianceOfSecondMoment;
@end

@implementation FedStatsUtilsNormalDistribution

- (FedStatsUtilsNormalDistribution)initWithMean:(double)a3 standardDeviation:(double)a4
{
  v7.receiver = self;
  v7.super_class = FedStatsUtilsNormalDistribution;
  result = [(FedStatsUtilsNormalDistribution *)&v7 init];
  if (result)
  {
    result->_mean = a3;
    result->_standardDeviation = a4;
  }

  return result;
}

- (FedStatsUtilsNormalDistribution)initWithMean:(double)a3
{
  v4 = [[FedStatsUtilsNormalDistribution alloc] initWithMean:a3 standardDeviation:1.0];

  return v4;
}

- (FedStatsUtilsNormalDistribution)initWithStandardDeviation:(double)a3
{
  v4 = [[FedStatsUtilsNormalDistribution alloc] initWithMean:0.0 standardDeviation:a3];

  return v4;
}

- (FedStatsUtilsNormalDistribution)init
{
  v3 = [[FedStatsUtilsNormalDistribution alloc] initWithMean:0.0 standardDeviation:1.0];

  return v3;
}

- (double)sampleWithUnitNumberGenerator:(id)a3
{
  v4 = a3;
  [v4 sample];
  v6 = sqrt(log(v5) * -2.0);
  [v4 sample];
  v8 = v7;

  v9 = v6 * cos(v8 * 6.28318531);
  [(FedStatsUtilsNormalDistribution *)self standardDeviation];
  v11 = v10;
  [(FedStatsUtilsNormalDistribution *)self mean];
  return v12 + v9 * v11;
}

- (double)sample
{
  v3 = objc_alloc_init(FedStatsUtilsUniformUnitIntervalDistribution);
  [(FedStatsUtilsNormalDistribution *)self sampleWithUnitNumberGenerator:v3];
  v5 = v4;

  return v5;
}

- (double)variance
{
  [(FedStatsUtilsNormalDistribution *)self standardDeviation];
  v4 = v3;
  [(FedStatsUtilsNormalDistribution *)self standardDeviation];
  return v4 * v5;
}

- (double)varianceOfSecondMoment
{
  [(FedStatsUtilsNormalDistribution *)self variance];
  v4 = v3;
  v5 = v3 + v3;
  [(FedStatsUtilsNormalDistribution *)self mean];
  v7 = v6 + v6;
  [(FedStatsUtilsNormalDistribution *)self mean];
  return v5 * (v4 + v7 * v8);
}

@end