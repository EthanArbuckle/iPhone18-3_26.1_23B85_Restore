@interface HMDEventRouterEventSizeLogEvent
- (HMDEventRouterEventSizeLogEvent)initWithTopic:(id)topic eventSize:(unint64_t)size isCached:(BOOL)cached;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDEventRouterEventSizeLogEvent

- (HMDEventRouterEventSizeLogEvent)initWithTopic:(id)topic eventSize:(unint64_t)size isCached:(BOOL)cached
{
  topicCopy = topic;
  v13.receiver = self;
  v13.super_class = HMDEventRouterEventSizeLogEvent;
  v10 = [(HMMLogEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_topic, topic);
    v11->_size = size;
    v11->_isCached = cached;
  }

  return v11;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  topic = [(HMDEventRouterEventSizeLogEvent *)self topic];
  [dictionary setObject:topic forKeyedSubscript:@"eventTopic"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDEventRouterEventSizeLogEvent size](self, "size")}];
  [dictionary setObject:v5 forKeyedSubscript:@"eventSize"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEventRouterEventSizeLogEvent isCached](self, "isCached")}];
  [dictionary setObject:v6 forKeyedSubscript:@"isCached_BOOL"];

  if ([(HMDEventRouterEventSizeLogEvent *)self isCached])
  {
    v7 = &unk_283E72B48;
  }

  else
  {
    v7 = &unk_283E72B60;
  }

  [dictionary setObject:v7 forKeyedSubscript:@"isCached_INT"];

  return dictionary;
}

@end