@interface HMDStatusChannelManagementLogEvent
+ (id)denominatorEvent;
- (HMDStatusChannelManagementLogEvent)initWithChannelPrefix:(id)a3 isRetry:(BOOL)a4 action:(int64_t)a5 count:(int64_t)a6;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDStatusChannelManagementLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDStatusChannelManagementLogEvent count](self, "count")}];
  [v3 setObject:v4 forKeyedSubscript:@"managementActionCountAny"];

  if ([(HMDStatusChannelManagementLogEvent *)self count])
  {
    v5 = [(HMDStatusChannelManagementLogEvent *)self channelPrefix];
    [v3 setObject:v5 forKeyedSubscript:@"channelPrefix"];

    if ([(HMDStatusChannelManagementLogEvent *)self isRetry])
    {
      v6 = &unk_28662D980;
    }

    else
    {
      v6 = &unk_28662D968;
    }

    [v3 setObject:v6 forKeyedSubscript:@"operationCount"];
    if ([(HMDStatusChannelManagementLogEvent *)self isRetry])
    {
      v7 = &unk_28662D968;
    }

    else
    {
      v7 = &unk_28662D980;
    }

    [v3 setObject:v7 forKeyedSubscript:@"operationRetryCount"];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDStatusChannelManagementLogEvent isRetry](self, "isRetry")}];
    [v3 setObject:v8 forKeyedSubscript:@"operationRetryBool"];

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDStatusChannelManagementLogEvent action](self, "action")}];
    [v3 setObject:v9 forKeyedSubscript:@"managementAction"];

    if ([(HMDStatusChannelManagementLogEvent *)self action])
    {
      v10 = &unk_28662D980;
    }

    else
    {
      v10 = &unk_28662D968;
    }

    [v3 setObject:v10 forKeyedSubscript:@"managementActionCountUnknown"];
    if ([(HMDStatusChannelManagementLogEvent *)self action]== 1)
    {
      v11 = &unk_28662D968;
    }

    else
    {
      v11 = &unk_28662D980;
    }

    [v3 setObject:v11 forKeyedSubscript:@"managementActionCountSubscribe"];
    if ([(HMDStatusChannelManagementLogEvent *)self action]== 2)
    {
      v12 = &unk_28662D968;
    }

    else
    {
      v12 = &unk_28662D980;
    }

    [v3 setObject:v12 forKeyedSubscript:@"managementActionCountUnsubscribe"];
    if ([(HMDStatusChannelManagementLogEvent *)self action]== 3)
    {
      v13 = &unk_28662D968;
    }

    else
    {
      v13 = &unk_28662D980;
    }

    [v3 setObject:v13 forKeyedSubscript:@"managementActionCountInvite"];
    if ([(HMDStatusChannelManagementLogEvent *)self action]== 4)
    {
      v14 = &unk_28662D968;
    }

    else
    {
      v14 = &unk_28662D980;
    }

    [v3 setObject:v14 forKeyedSubscript:@"managementActionCountRemove"];
  }

  v15 = [v3 copy];

  return v15;
}

- (HMDStatusChannelManagementLogEvent)initWithChannelPrefix:(id)a3 isRetry:(BOOL)a4 action:(int64_t)a5 count:(int64_t)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = HMDStatusChannelManagementLogEvent;
  v12 = [(HMMLogEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_channelPrefix, a3);
    v13->_isRetry = a4;
    v13->_action = a5;
    v13->_count = a6;
  }

  return v13;
}

+ (id)denominatorEvent
{
  v2 = [objc_alloc(objc_opt_class()) initWithChannelPrefix:0 isRetry:0 action:0 count:0];

  return v2;
}

@end