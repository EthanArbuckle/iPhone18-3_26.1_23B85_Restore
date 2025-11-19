@interface HMDRemoteDeviceReachabilityChangeLogEvent
- (HMDRemoteDeviceReachabilityChangeLogEvent)initWithReason:(unint64_t)a3 reachable:(BOOL)a4 targetSupportsIDSPresence:(BOOL)a5;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDRemoteDeviceReachabilityChangeLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"reachable";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDRemoteDeviceReachabilityChangeLogEvent reachable](self, "reachable")}];
  v12[0] = v3;
  v11[1] = @"reason";
  v4 = [(HMDRemoteDeviceReachabilityChangeLogEvent *)self reason];
  if (v4 > 6)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_278677A70[v4];
  }

  v6 = v5;
  v12[1] = v6;
  v11[2] = @"targetSupportsIDSPresence";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDRemoteDeviceReachabilityChangeLogEvent targetSupportsIDSPresence](self, "targetSupportsIDSPresence")}];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HMDRemoteDeviceReachabilityChangeLogEvent)initWithReason:(unint64_t)a3 reachable:(BOOL)a4 targetSupportsIDSPresence:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = HMDRemoteDeviceReachabilityChangeLogEvent;
  result = [(HMMLogEvent *)&v9 init];
  if (result)
  {
    result->_reason = a3;
    result->_reachable = a4;
    result->_targetSupportsIDSPresence = a5;
  }

  return result;
}

@end