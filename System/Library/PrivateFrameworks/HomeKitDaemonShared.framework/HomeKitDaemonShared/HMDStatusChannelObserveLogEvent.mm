@interface HMDStatusChannelObserveLogEvent
+ (id)denominatorEvent;
- (HMDStatusChannelObserveLogEvent)initWithChannelPrefix:(id)prefix count:(int64_t)count;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDStatusChannelObserveLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDStatusChannelObserveLogEvent count](self, "count")}];
  [dictionary setObject:v4 forKeyedSubscript:@"observeCount"];

  if ([(HMDStatusChannelObserveLogEvent *)self count])
  {
    channelPrefix = [(HMDStatusChannelObserveLogEvent *)self channelPrefix];
    [dictionary setObject:channelPrefix forKeyedSubscript:@"channelPrefix"];
  }

  v6 = [dictionary copy];

  return v6;
}

- (HMDStatusChannelObserveLogEvent)initWithChannelPrefix:(id)prefix count:(int64_t)count
{
  prefixCopy = prefix;
  v11.receiver = self;
  v11.super_class = HMDStatusChannelObserveLogEvent;
  v8 = [(HMMLogEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_channelPrefix, prefix);
    v9->_count = count;
  }

  return v9;
}

+ (id)denominatorEvent
{
  v2 = [objc_alloc(objc_opt_class()) initWithChannelPrefix:0 count:0];

  return v2;
}

@end