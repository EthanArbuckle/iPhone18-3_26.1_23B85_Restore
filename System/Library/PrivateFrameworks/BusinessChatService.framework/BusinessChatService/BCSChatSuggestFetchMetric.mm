@interface BCSChatSuggestFetchMetric
+ (id)metricWithPostProcessingMetricHandlers:(id)handlers;
- (NSDictionary)coreAnalyticsPayload;
@end

@implementation BCSChatSuggestFetchMetric

- (NSDictionary)coreAnalyticsPayload
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"duration";
  v3 = MEMORY[0x277CCABB0];
  timingMeasurement = [(BCSChatSuggestFetchMetric *)self timingMeasurement];
  [timingMeasurement duration];
  v6 = [v3 numberWithInteger:(v5 * 1000.0)];
  v11[1] = @"errorCode";
  v12[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BCSChatSuggestFetchMetric errorCode](self, "errorCode")}];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)metricWithPostProcessingMetricHandlers:(id)handlers
{
  handlersCopy = handlers;
  v4 = [(BCSMetric *)[BCSChatSuggestFetchMetric alloc] _initWithType:0 context:handlersCopy postProcessingMetricHandlers:?];

  return v4;
}

@end