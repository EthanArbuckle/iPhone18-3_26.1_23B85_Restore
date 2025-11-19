@interface BCSBusinessCallerFetchMetric
+ (id)metricWithPostProcessingMetricHandlers:(id)a3;
@end

@implementation BCSBusinessCallerFetchMetric

+ (id)metricWithPostProcessingMetricHandlers:(id)a3
{
  v3 = a3;
  v4 = [(BCSMetric *)[BCSBusinessCallerFetchMetric alloc] _initWithType:0 context:v3 postProcessingMetricHandlers:?];

  return v4;
}

@end