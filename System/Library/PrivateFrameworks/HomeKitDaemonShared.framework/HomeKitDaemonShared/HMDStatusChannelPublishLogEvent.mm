@interface HMDStatusChannelPublishLogEvent
+ (id)denominatorEvent;
- (HMDStatusChannelPublishLogEvent)initWithChannelPrefix:(id)a3 isRetry:(BOOL)a4 count:(int64_t)a5;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDStatusChannelPublishLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDStatusChannelPublishLogEvent count](self, "count")}];
  [v3 setObject:v4 forKeyedSubscript:@"publishCount"];

  if ([(HMDStatusChannelPublishLogEvent *)self count])
  {
    v5 = [(HMDStatusChannelPublishLogEvent *)self channelPrefix];
    [v3 setObject:v5 forKeyedSubscript:@"channelPrefix"];

    if ([(HMDStatusChannelPublishLogEvent *)self isRetry])
    {
      v6 = &unk_28662D980;
    }

    else
    {
      v6 = &unk_28662D968;
    }

    [v3 setObject:v6 forKeyedSubscript:@"publishCount"];
    if ([(HMDStatusChannelPublishLogEvent *)self isRetry])
    {
      v7 = &unk_28662D968;
    }

    else
    {
      v7 = &unk_28662D980;
    }

    [v3 setObject:v7 forKeyedSubscript:@"publishRetryCount"];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDStatusChannelPublishLogEvent isRetry](self, "isRetry")}];
    [v3 setObject:v8 forKeyedSubscript:@"publishRetryBool"];
  }

  v9 = [v3 copy];

  return v9;
}

- (HMDStatusChannelPublishLogEvent)initWithChannelPrefix:(id)a3 isRetry:(BOOL)a4 count:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HMDStatusChannelPublishLogEvent;
  v10 = [(HMMLogEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_channelPrefix, a3);
    v11->_isRetry = a4;
    v11->_count = a5;
  }

  return v11;
}

+ (id)denominatorEvent
{
  v2 = [objc_alloc(objc_opt_class()) initWithChannelPrefix:0 isRetry:0 count:0];

  return v2;
}

@end