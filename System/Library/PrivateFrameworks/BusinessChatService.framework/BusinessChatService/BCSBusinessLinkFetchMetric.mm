@interface BCSBusinessLinkFetchMetric
+ (id)metricWithPostProcessingMetricHandlers:(id)handlers;
- (NSDictionary)coreAnalyticsPayload;
@end

@implementation BCSBusinessLinkFetchMetric

- (NSDictionary)coreAnalyticsPayload
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"choppingEnabled";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[BCSBusinessLinkFetchMetric isChoppingEnabled](self, "isChoppingEnabled")}];
  v14[0] = v3;
  v13[1] = @"successfulChop";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BCSBusinessLinkFetchMetric successfulChop](self, "successfulChop")}];
  v14[1] = v4;
  v13[2] = @"duration";
  v5 = MEMORY[0x277CCABB0];
  timingMeasurement = [(BCSBusinessLinkFetchMetric *)self timingMeasurement];
  [timingMeasurement duration];
  v8 = [v5 numberWithInteger:(v7 * 1000.0)];
  v14[2] = v8;
  v13[3] = @"errorCode";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BCSBusinessLinkFetchMetric errorCode](self, "errorCode")}];
  v14[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)metricWithPostProcessingMetricHandlers:(id)handlers
{
  handlersCopy = handlers;
  v4 = [(BCSMetric *)[BCSBusinessLinkFetchMetric alloc] _initWithType:0 context:handlersCopy postProcessingMetricHandlers:?];

  return v4;
}

@end