@interface HMDWoLANDarkPollLogEvent
- (HMDWoLANDarkPollLogEvent)initWithAccessory:(id)a3 suspendedState:(id)a4 reachable:(BOOL)a5 remotelyReachable:(BOOL)a6 logType:(int64_t)a7;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
@end

@implementation HMDWoLANDarkPollLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDWoLANDarkPollLogEvent logType](self, "logType")}];
  [v3 setObject:v4 forKeyedSubscript:@"logType"];

  v5 = [(HMDWoLANDarkPollLogEvent *)self suspendedState];
  [v3 setObject:v5 forKeyedSubscript:@"suspendedState"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDWoLANDarkPollLogEvent reachable](self, "reachable")}];
  [v3 setObject:v6 forKeyedSubscript:@"reachable"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDWoLANDarkPollLogEvent remotelyReachable](self, "remotelyReachable")}];
  [v3 setObject:v7 forKeyedSubscript:@"remotelyReachable"];

  v8 = [(HMDWoLANDarkPollLogEvent *)self minimumIntervalMinutes];
  [v3 setObject:v8 forKeyedSubscript:@"minimumIntervalMinutes"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDWoLANDarkPollLogEvent wakeUpType](self, "wakeUpType")}];
  [v3 setObject:v9 forKeyedSubscript:@"wakeUpType"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[HMDWoLANDarkPollLogEvent wolanVersion](self, "wolanVersion")}];
  [v3 setObject:v10 forKeyedSubscript:@"wolanVersion"];

  v11 = [v3 copy];

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDWoLANDarkPollLogEvent *)self logType];
  v5 = [(HMDWoLANDarkPollLogEvent *)self suspendedState];
  v6 = [(HMDWoLANDarkPollLogEvent *)self reachable];
  v7 = [(HMDWoLANDarkPollLogEvent *)self remotelyReachable];
  v8 = [(HMDWoLANDarkPollLogEvent *)self minimumIntervalMinutes];
  v9 = [v3 stringWithFormat:@"HMDWoLANDarkPollLogEvent - Log Type: %ld, suspendedState: %@, reachable: %d, remotelyReachable: %d, minimumIntervalMinutes: %@, wakeUpType: %ld, wolanVersion: %hhu", v4, v5, v6, v7, v8, -[HMDWoLANDarkPollLogEvent wakeUpType](self, "wakeUpType"), -[HMDWoLANDarkPollLogEvent wolanVersion](self, "wolanVersion")];

  return v9;
}

- (HMDWoLANDarkPollLogEvent)initWithAccessory:(id)a3 suspendedState:(id)a4 reachable:(BOOL)a5 remotelyReachable:(BOOL)a6 logType:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v23.receiver = self;
  v23.super_class = HMDWoLANDarkPollLogEvent;
  v14 = [(HMMLogEvent *)&v23 init];
  if (v14)
  {
    v15 = [v12 identifier];
    accessoryIdentifier = v14->_accessoryIdentifier;
    v14->_accessoryIdentifier = v15;

    v14->_logType = a7;
    objc_storeStrong(&v14->_suspendedState, a4);
    v14->_reachable = a5;
    v14->_remotelyReachable = a6;
    v17 = [v12 connectivityInfo];
    v18 = [v17 woWLANDarkPollMinimumInterval];
    minimumIntervalMinutes = v14->_minimumIntervalMinutes;
    v14->_minimumIntervalMinutes = v18;

    v20 = [v12 connectivityInfo];
    v14->_wakeUpType = [v20 woWLANWakeUpTypeSupport];

    v21 = [v12 connectivityInfo];
    v14->_wolanVersion = [v21 woWLANVersion];
  }

  return v14;
}

@end