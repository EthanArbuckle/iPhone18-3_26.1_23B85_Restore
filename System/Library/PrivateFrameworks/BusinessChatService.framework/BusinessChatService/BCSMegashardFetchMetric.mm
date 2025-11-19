@interface BCSMegashardFetchMetric
+ (id)metricForMegashardType:(int64_t)a3 postProcessingMetricHandlers:(id)a4;
- (NSDictionary)coreAnalyticsPayload;
- (int64_t)type;
@end

@implementation BCSMegashardFetchMetric

- (NSDictionary)coreAnalyticsPayload
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"type";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BCSMegashardFetchMetric type](self, "type")}];
  v12[0] = v3;
  v11[1] = @"reason";
  v4 = NSStringFromBCSFetchReason([(BCSMegashardFetchMetric *)self reason]);
  v12[1] = v4;
  v11[2] = @"errorCode";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BCSMegashardFetchMetric errorCode](self, "errorCode")}];
  v12[2] = v5;
  v11[3] = @"isUsingCellular";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(objc_opt_class(), "isUsingExpensiveNetwork")}];
  v12[3] = v6;
  v11[4] = @"timeSinceLastSuccess";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BCSMegashardFetchMetric hoursSinceLastSuccessfulFetch](self, "hoursSinceLastSuccessfulFetch")}];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)metricForMegashardType:(int64_t)a3 postProcessingMetricHandlers:(id)a4
{
  v5 = a4;
  v6 = [BCSMegashardFetchMetric alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8 = [(BCSMetric *)&v6->super.super.isa _initWithType:v7 context:v5 postProcessingMetricHandlers:?];

  return v8;
}

- (int64_t)type
{
  if (self)
  {
    self = self->super._context;
  }

  return [(BCSMegashardFetchMetric *)self integerValue];
}

@end