@interface HMDEventRouterPostedEventLogEvent
- (HMDEventRouterPostedEventLogEvent)initWithTopic:(id)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDEventRouterPostedEventLogEvent

- (HMDEventRouterPostedEventLogEvent)initWithTopic:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDEventRouterPostedEventLogEvent;
  v5 = [(HMMLogEvent *)&v9 init];
  if (v5)
  {
    v6 = [HMDEventRouterLogEventUtilities sanitizedTopicFromTopic:v4];
    topic = v5->_topic;
    v5->_topic = v6;
  }

  return v5;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"eventTopic";
  v2 = [(HMDEventRouterPostedEventLogEvent *)self topic];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end