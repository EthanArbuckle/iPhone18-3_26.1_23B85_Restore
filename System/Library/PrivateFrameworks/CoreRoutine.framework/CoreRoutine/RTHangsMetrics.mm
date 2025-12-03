@interface RTHangsMetrics
- (RTHangsMetrics)init;
- (void)submitToCoreAnalytics:(id)analytics type:(int64_t)type duration:(double)duration;
@end

@implementation RTHangsMetrics

- (RTHangsMetrics)init
{
  v3.receiver = self;
  v3.super_class = RTHangsMetrics;
  return [(RTHangsMetrics *)&v3 init];
}

- (void)submitToCoreAnalytics:(id)analytics type:(int64_t)type duration:(double)duration
{
  v8 = MEMORY[0x1E696AEC0];
  label = dispatch_queue_get_label(0);
  analyticsCopy = analytics;
  v11 = [v8 stringWithCString:label encoding:4];
  v12 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"- "];
  v13 = [v11 componentsSeparatedByCharactersInSet:v12];
  v20 = [v13 objectAtIndexedSubscript:0];

  v14 = objc_opt_new();
  [v14 setObject:analyticsCopy forKeyedSubscript:@"hungObject"];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [v14 setObject:v15 forKeyedSubscript:@"hangType"];

  v16 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  [v14 setObject:v16 forKeyedSubscript:@"hangDuration"];

  [v14 setObject:v20 forKeyedSubscript:@"hungQueue"];
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18 = [v17 initWithCString:RTAnalyticsEventHangsMetrics encoding:1];
  log_analytics_submission(v18, v14);
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.%@", v18];
  AnalyticsSendEvent();
}

@end