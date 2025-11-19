@interface HMDEventRouterEventSizeLogEvent
- (HMDEventRouterEventSizeLogEvent)initWithTopic:(id)a3 eventSize:(unint64_t)a4 isCached:(BOOL)a5;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDEventRouterEventSizeLogEvent

- (HMDEventRouterEventSizeLogEvent)initWithTopic:(id)a3 eventSize:(unint64_t)a4 isCached:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HMDEventRouterEventSizeLogEvent;
  v10 = [(HMMLogEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_topic, a3);
    v11->_size = a4;
    v11->_isCached = a5;
  }

  return v11;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDEventRouterEventSizeLogEvent *)self topic];
  [v3 setObject:v4 forKeyedSubscript:@"eventTopic"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDEventRouterEventSizeLogEvent size](self, "size")}];
  [v3 setObject:v5 forKeyedSubscript:@"eventSize"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEventRouterEventSizeLogEvent isCached](self, "isCached")}];
  [v3 setObject:v6 forKeyedSubscript:@"isCached_BOOL"];

  if ([(HMDEventRouterEventSizeLogEvent *)self isCached])
  {
    v7 = &unk_286629CE0;
  }

  else
  {
    v7 = &unk_286629CF8;
  }

  [v3 setObject:v7 forKeyedSubscript:@"isCached_INT"];

  return v3;
}

@end