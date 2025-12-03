@interface HMDStatusChannelManagementLogEvent
+ (id)denominatorEvent;
- (HMDStatusChannelManagementLogEvent)initWithChannelPrefix:(id)prefix isRetry:(BOOL)retry action:(int64_t)action count:(int64_t)count;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDStatusChannelManagementLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDStatusChannelManagementLogEvent count](self, "count")}];
  [dictionary setObject:v4 forKeyedSubscript:@"managementActionCountAny"];

  if ([(HMDStatusChannelManagementLogEvent *)self count])
  {
    channelPrefix = [(HMDStatusChannelManagementLogEvent *)self channelPrefix];
    [dictionary setObject:channelPrefix forKeyedSubscript:@"channelPrefix"];

    if ([(HMDStatusChannelManagementLogEvent *)self isRetry])
    {
      v6 = &unk_28662D980;
    }

    else
    {
      v6 = &unk_28662D968;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"operationCount"];
    if ([(HMDStatusChannelManagementLogEvent *)self isRetry])
    {
      v7 = &unk_28662D968;
    }

    else
    {
      v7 = &unk_28662D980;
    }

    [dictionary setObject:v7 forKeyedSubscript:@"operationRetryCount"];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDStatusChannelManagementLogEvent isRetry](self, "isRetry")}];
    [dictionary setObject:v8 forKeyedSubscript:@"operationRetryBool"];

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDStatusChannelManagementLogEvent action](self, "action")}];
    [dictionary setObject:v9 forKeyedSubscript:@"managementAction"];

    if ([(HMDStatusChannelManagementLogEvent *)self action])
    {
      v10 = &unk_28662D980;
    }

    else
    {
      v10 = &unk_28662D968;
    }

    [dictionary setObject:v10 forKeyedSubscript:@"managementActionCountUnknown"];
    if ([(HMDStatusChannelManagementLogEvent *)self action]== 1)
    {
      v11 = &unk_28662D968;
    }

    else
    {
      v11 = &unk_28662D980;
    }

    [dictionary setObject:v11 forKeyedSubscript:@"managementActionCountSubscribe"];
    if ([(HMDStatusChannelManagementLogEvent *)self action]== 2)
    {
      v12 = &unk_28662D968;
    }

    else
    {
      v12 = &unk_28662D980;
    }

    [dictionary setObject:v12 forKeyedSubscript:@"managementActionCountUnsubscribe"];
    if ([(HMDStatusChannelManagementLogEvent *)self action]== 3)
    {
      v13 = &unk_28662D968;
    }

    else
    {
      v13 = &unk_28662D980;
    }

    [dictionary setObject:v13 forKeyedSubscript:@"managementActionCountInvite"];
    if ([(HMDStatusChannelManagementLogEvent *)self action]== 4)
    {
      v14 = &unk_28662D968;
    }

    else
    {
      v14 = &unk_28662D980;
    }

    [dictionary setObject:v14 forKeyedSubscript:@"managementActionCountRemove"];
  }

  v15 = [dictionary copy];

  return v15;
}

- (HMDStatusChannelManagementLogEvent)initWithChannelPrefix:(id)prefix isRetry:(BOOL)retry action:(int64_t)action count:(int64_t)count
{
  prefixCopy = prefix;
  v15.receiver = self;
  v15.super_class = HMDStatusChannelManagementLogEvent;
  v12 = [(HMMLogEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_channelPrefix, prefix);
    v13->_isRetry = retry;
    v13->_action = action;
    v13->_count = count;
  }

  return v13;
}

+ (id)denominatorEvent
{
  v2 = [objc_alloc(objc_opt_class()) initWithChannelPrefix:0 isRetry:0 action:0 count:0];

  return v2;
}

@end