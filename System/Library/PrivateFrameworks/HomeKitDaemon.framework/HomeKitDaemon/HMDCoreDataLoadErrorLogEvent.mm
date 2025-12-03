@interface HMDCoreDataLoadErrorLogEvent
- (HMDCoreDataLoadErrorLogEvent)initWithReason:(unint64_t)reason;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCoreDataLoadErrorLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCoreDataLoadErrorLogEvent reason](self, "reason")}];
  [dictionary setObject:v4 forKeyedSubscript:@"action"];

  v5 = [dictionary copy];

  return v5;
}

- (HMDCoreDataLoadErrorLogEvent)initWithReason:(unint64_t)reason
{
  v5.receiver = self;
  v5.super_class = HMDCoreDataLoadErrorLogEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_reason = reason;
  }

  return result;
}

@end