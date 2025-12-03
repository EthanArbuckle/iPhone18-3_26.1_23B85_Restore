@interface BCSBusinessCallerFetchMetric
+ (id)metricWithPostProcessingMetricHandlers:(id)handlers;
@end

@implementation BCSBusinessCallerFetchMetric

+ (id)metricWithPostProcessingMetricHandlers:(id)handlers
{
  handlersCopy = handlers;
  v4 = [(BCSMetric *)[BCSBusinessCallerFetchMetric alloc] _initWithType:0 context:handlersCopy postProcessingMetricHandlers:?];

  return v4;
}

@end