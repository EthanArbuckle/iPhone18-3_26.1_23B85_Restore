@interface HKRemoteChartConfiguration
- (HKRemoteChartConfiguration)initWithStatisticIntervalComponentsByTimeScope:(id)scope;
- (id)statisticIntervalComponentsForTimeScope:(int64_t)scope;
@end

@implementation HKRemoteChartConfiguration

- (HKRemoteChartConfiguration)initWithStatisticIntervalComponentsByTimeScope:(id)scope
{
  scopeCopy = scope;
  v9.receiver = self;
  v9.super_class = HKRemoteChartConfiguration;
  v6 = [(HKRemoteChartConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statisticIntervalComponentsByTimeScope, scope);
  }

  return v7;
}

- (id)statisticIntervalComponentsForTimeScope:(int64_t)scope
{
  statisticIntervalComponentsByTimeScope = self->_statisticIntervalComponentsByTimeScope;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:scope];
  v5 = [(NSDictionary *)statisticIntervalComponentsByTimeScope objectForKeyedSubscript:v4];

  return v5;
}

@end