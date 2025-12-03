@interface HMDUnexpectedNotificationLogEvent
- (HMDUnexpectedNotificationLogEvent)initWithCount:(int64_t)count;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDUnexpectedNotificationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"numUnexpectedNotificationCount";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDUnexpectedNotificationLogEvent count](self, "count")}];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HMDUnexpectedNotificationLogEvent)initWithCount:(int64_t)count
{
  v5.receiver = self;
  v5.super_class = HMDUnexpectedNotificationLogEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_count = count;
  }

  return result;
}

@end