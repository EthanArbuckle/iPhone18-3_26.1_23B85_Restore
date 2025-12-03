@interface HMDEventRouterPostedEventLogEvent
- (HMDEventRouterPostedEventLogEvent)initWithTopic:(id)topic;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDEventRouterPostedEventLogEvent

- (HMDEventRouterPostedEventLogEvent)initWithTopic:(id)topic
{
  topicCopy = topic;
  v9.receiver = self;
  v9.super_class = HMDEventRouterPostedEventLogEvent;
  v5 = [(HMMLogEvent *)&v9 init];
  if (v5)
  {
    v6 = [HMDEventRouterLogEventUtilities sanitizedTopicFromTopic:topicCopy];
    topic = v5->_topic;
    v5->_topic = v6;
  }

  return v5;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"eventTopic";
  topic = [(HMDEventRouterPostedEventLogEvent *)self topic];
  v7[0] = topic;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end