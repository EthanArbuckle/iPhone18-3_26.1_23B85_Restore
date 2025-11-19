@interface HDStatisticsPercentileConfiguration
- (HDStatisticsPercentileConfiguration)initWithPercentile:(id)a3;
@end

@implementation HDStatisticsPercentileConfiguration

- (HDStatisticsPercentileConfiguration)initWithPercentile:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HDStatisticsPercentileConfiguration;
  v6 = [(HDStatisticsPercentileConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_percentile, a3);
  }

  return v7;
}

@end