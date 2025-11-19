@interface HMDCoreDataLoadErrorLogEvent
- (HMDCoreDataLoadErrorLogEvent)initWithReason:(unint64_t)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCoreDataLoadErrorLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCoreDataLoadErrorLogEvent reason](self, "reason")}];
  [v3 setObject:v4 forKeyedSubscript:@"action"];

  v5 = [v3 copy];

  return v5;
}

- (HMDCoreDataLoadErrorLogEvent)initWithReason:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDCoreDataLoadErrorLogEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_reason = a3;
  }

  return result;
}

@end