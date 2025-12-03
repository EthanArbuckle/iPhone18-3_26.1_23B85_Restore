@interface HKMCScheduledAnalysisMetric
- (HKMCScheduledAnalysisMetric)initWithTimeSuccessful:(int64_t)successful;
- (NSDictionary)eventPayload;
- (id)description;
@end

@implementation HKMCScheduledAnalysisMetric

- (HKMCScheduledAnalysisMetric)initWithTimeSuccessful:(int64_t)successful
{
  v5.receiver = self;
  v5.super_class = HKMCScheduledAnalysisMetric;
  result = [(HKMCScheduledAnalysisMetric *)&v5 init];
  if (result)
  {
    result->_timeSuccessful = successful;
  }

  return result;
}

- (NSDictionary)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKMCScheduledAnalysisMetric timeSuccessful](self, "timeSuccessful")}];
  [v3 setObject:v4 forKeyedSubscript:@"timeSuccessful"];

  v5 = [v3 copy];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKMCScheduledAnalysisMetric timeSuccessful](self, "timeSuccessful")}];
  v6 = [v3 stringWithFormat:@"<%@:%p timeSuccessful:%@>", v4, self, v5];

  return v6;
}

@end