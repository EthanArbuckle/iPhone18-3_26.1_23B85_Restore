@interface BCSBusinessLinkHashFetchMetric
+ (id)metricWithPostProcessingMetricHandlers:(id)a3;
- (NSDictionary)coreAnalyticsPayload;
@end

@implementation BCSBusinessLinkHashFetchMetric

- (NSDictionary)coreAnalyticsPayload
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"duration";
  v3 = MEMORY[0x277CCABB0];
  v4 = [(BCSBusinessLinkHashFetchMetric *)self timingMeasurement];
  [v4 duration];
  v6 = [v3 numberWithInteger:(v5 * 1000.0)];
  v11[1] = @"errorCode";
  v12[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BCSBusinessLinkHashFetchMetric errorCode](self, "errorCode")}];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)metricWithPostProcessingMetricHandlers:(id)a3
{
  v3 = a3;
  v4 = [(BCSMetric *)[BCSBusinessLinkHashFetchMetric alloc] _initWithType:0 context:v3 postProcessingMetricHandlers:?];

  return v4;
}

@end