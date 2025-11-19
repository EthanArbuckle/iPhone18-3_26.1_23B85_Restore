@interface HKSleepAnalysisDataSourceContext
+ (id)sleepAnalysisDataSourceContextWithChartType:(int64_t)a3 timeScope:(int64_t)a4;
@end

@implementation HKSleepAnalysisDataSourceContext

+ (id)sleepAnalysisDataSourceContextWithChartType:(int64_t)a3 timeScope:(int64_t)a4
{
  v6 = objc_alloc_init(HKSleepAnalysisDataSourceContext);
  [(HKSleepAnalysisDataSourceContext *)v6 setChartType:a3];
  [(HKSleepAnalysisDataSourceContext *)v6 setTimeScope:a4];

  return v6;
}

@end