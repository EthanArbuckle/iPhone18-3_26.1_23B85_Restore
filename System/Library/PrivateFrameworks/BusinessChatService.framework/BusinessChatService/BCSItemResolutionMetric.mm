@interface BCSItemResolutionMetric
+ (id)metricForItemIdentifier:(id)identifier postProcessingMetricHandlers:(id)handlers;
- (BCSItemIdentifying)itemIdentifier;
- (NSDictionary)coreAnalyticsPayload;
@end

@implementation BCSItemResolutionMetric

- (NSDictionary)coreAnalyticsPayload
{
  v18[4] = *MEMORY[0x277D85DE8];
  v17[0] = @"type";
  v3 = MEMORY[0x277CCABB0];
  itemIdentifier = [(BCSItemResolutionMetric *)self itemIdentifier];
  v5 = [v3 numberWithInteger:{objc_msgSend(itemIdentifier, "type")}];
  v18[0] = v5;
  v17[1] = @"cacheHit";
  v6 = MEMORY[0x277CCABB0];
  cacheHitMeasurement = [(BCSItemResolutionMetric *)self cacheHitMeasurement];
  v8 = [v6 numberWithBool:{objc_msgSend(cacheHitMeasurement, "flag")}];
  v18[1] = v8;
  v17[2] = @"duration";
  v9 = MEMORY[0x277CCABB0];
  timingMeasurement = [(BCSItemResolutionMetric *)self timingMeasurement];
  [timingMeasurement duration];
  v12 = [v9 numberWithInteger:(v11 * 1000.0)];
  v18[2] = v12;
  v17[3] = @"errorCode";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BCSItemResolutionMetric errorCode](self, "errorCode")}];
  v18[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)metricForItemIdentifier:(id)identifier postProcessingMetricHandlers:(id)handlers
{
  handlersCopy = handlers;
  identifierCopy = identifier;
  v7 = [(BCSMetric *)[BCSItemResolutionMetric alloc] _initWithType:identifierCopy context:handlersCopy postProcessingMetricHandlers:?];

  return v7;
}

- (BCSItemIdentifying)itemIdentifier
{
  if (self)
  {
    self = self->super._context;
  }

  return self;
}

@end