@interface HMDStatusChannelObserveLogEvent
+ (id)denominatorEvent;
- (HMDStatusChannelObserveLogEvent)initWithChannelPrefix:(id)a3 count:(int64_t)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDStatusChannelObserveLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDStatusChannelObserveLogEvent count](self, "count")}];
  [v3 setObject:v4 forKeyedSubscript:@"observeCount"];

  if ([(HMDStatusChannelObserveLogEvent *)self count])
  {
    v5 = [(HMDStatusChannelObserveLogEvent *)self channelPrefix];
    [v3 setObject:v5 forKeyedSubscript:@"channelPrefix"];
  }

  v6 = [v3 copy];

  return v6;
}

- (HMDStatusChannelObserveLogEvent)initWithChannelPrefix:(id)a3 count:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HMDStatusChannelObserveLogEvent;
  v8 = [(HMMLogEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_channelPrefix, a3);
    v9->_count = a4;
  }

  return v9;
}

+ (id)denominatorEvent
{
  v2 = [objc_alloc(objc_opt_class()) initWithChannelPrefix:0 count:0];

  return v2;
}

@end