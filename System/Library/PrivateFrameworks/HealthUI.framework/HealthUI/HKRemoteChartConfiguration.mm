@interface HKRemoteChartConfiguration
- (HKRemoteChartConfiguration)initWithStatisticIntervalComponentsByTimeScope:(id)a3;
- (id)statisticIntervalComponentsForTimeScope:(int64_t)a3;
@end

@implementation HKRemoteChartConfiguration

- (HKRemoteChartConfiguration)initWithStatisticIntervalComponentsByTimeScope:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKRemoteChartConfiguration;
  v6 = [(HKRemoteChartConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statisticIntervalComponentsByTimeScope, a3);
  }

  return v7;
}

- (id)statisticIntervalComponentsForTimeScope:(int64_t)a3
{
  statisticIntervalComponentsByTimeScope = self->_statisticIntervalComponentsByTimeScope;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSDictionary *)statisticIntervalComponentsByTimeScope objectForKeyedSubscript:v4];

  return v5;
}

@end