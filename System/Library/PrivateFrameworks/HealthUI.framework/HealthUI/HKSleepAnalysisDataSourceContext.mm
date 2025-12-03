@interface HKSleepAnalysisDataSourceContext
+ (id)sleepAnalysisDataSourceContextWithChartType:(int64_t)type timeScope:(int64_t)scope;
@end

@implementation HKSleepAnalysisDataSourceContext

+ (id)sleepAnalysisDataSourceContextWithChartType:(int64_t)type timeScope:(int64_t)scope
{
  v6 = objc_alloc_init(HKSleepAnalysisDataSourceContext);
  [(HKSleepAnalysisDataSourceContext *)v6 setChartType:type];
  [(HKSleepAnalysisDataSourceContext *)v6 setTimeScope:scope];

  return v6;
}

@end