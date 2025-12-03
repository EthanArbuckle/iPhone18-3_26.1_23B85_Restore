@interface HMDStatusChannelPublishLogEvent
+ (id)denominatorEvent;
- (HMDStatusChannelPublishLogEvent)initWithChannelPrefix:(id)prefix isRetry:(BOOL)retry count:(int64_t)count;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDStatusChannelPublishLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDStatusChannelPublishLogEvent count](self, "count")}];
  [dictionary setObject:v4 forKeyedSubscript:@"publishCount"];

  if ([(HMDStatusChannelPublishLogEvent *)self count])
  {
    channelPrefix = [(HMDStatusChannelPublishLogEvent *)self channelPrefix];
    [dictionary setObject:channelPrefix forKeyedSubscript:@"channelPrefix"];

    if ([(HMDStatusChannelPublishLogEvent *)self isRetry])
    {
      v6 = &unk_28662D980;
    }

    else
    {
      v6 = &unk_28662D968;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"publishCount"];
    if ([(HMDStatusChannelPublishLogEvent *)self isRetry])
    {
      v7 = &unk_28662D968;
    }

    else
    {
      v7 = &unk_28662D980;
    }

    [dictionary setObject:v7 forKeyedSubscript:@"publishRetryCount"];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDStatusChannelPublishLogEvent isRetry](self, "isRetry")}];
    [dictionary setObject:v8 forKeyedSubscript:@"publishRetryBool"];
  }

  v9 = [dictionary copy];

  return v9;
}

- (HMDStatusChannelPublishLogEvent)initWithChannelPrefix:(id)prefix isRetry:(BOOL)retry count:(int64_t)count
{
  prefixCopy = prefix;
  v13.receiver = self;
  v13.super_class = HMDStatusChannelPublishLogEvent;
  v10 = [(HMMLogEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_channelPrefix, prefix);
    v11->_isRetry = retry;
    v11->_count = count;
  }

  return v11;
}

+ (id)denominatorEvent
{
  v2 = [objc_alloc(objc_opt_class()) initWithChannelPrefix:0 isRetry:0 count:0];

  return v2;
}

@end