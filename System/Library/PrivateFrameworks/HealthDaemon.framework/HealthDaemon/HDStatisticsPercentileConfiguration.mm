@interface HDStatisticsPercentileConfiguration
- (HDStatisticsPercentileConfiguration)initWithPercentile:(id)percentile;
@end

@implementation HDStatisticsPercentileConfiguration

- (HDStatisticsPercentileConfiguration)initWithPercentile:(id)percentile
{
  percentileCopy = percentile;
  v9.receiver = self;
  v9.super_class = HDStatisticsPercentileConfiguration;
  v6 = [(HDStatisticsPercentileConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_percentile, percentile);
  }

  return v7;
}

@end