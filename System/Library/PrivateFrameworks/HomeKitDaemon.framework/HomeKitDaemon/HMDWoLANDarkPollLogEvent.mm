@interface HMDWoLANDarkPollLogEvent
- (HMDWoLANDarkPollLogEvent)initWithAccessory:(id)accessory suspendedState:(id)state reachable:(BOOL)reachable remotelyReachable:(BOOL)remotelyReachable logType:(int64_t)type;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
@end

@implementation HMDWoLANDarkPollLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDWoLANDarkPollLogEvent logType](self, "logType")}];
  [dictionary setObject:v4 forKeyedSubscript:@"logType"];

  suspendedState = [(HMDWoLANDarkPollLogEvent *)self suspendedState];
  [dictionary setObject:suspendedState forKeyedSubscript:@"suspendedState"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDWoLANDarkPollLogEvent reachable](self, "reachable")}];
  [dictionary setObject:v6 forKeyedSubscript:@"reachable"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDWoLANDarkPollLogEvent remotelyReachable](self, "remotelyReachable")}];
  [dictionary setObject:v7 forKeyedSubscript:@"remotelyReachable"];

  minimumIntervalMinutes = [(HMDWoLANDarkPollLogEvent *)self minimumIntervalMinutes];
  [dictionary setObject:minimumIntervalMinutes forKeyedSubscript:@"minimumIntervalMinutes"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDWoLANDarkPollLogEvent wakeUpType](self, "wakeUpType")}];
  [dictionary setObject:v9 forKeyedSubscript:@"wakeUpType"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[HMDWoLANDarkPollLogEvent wolanVersion](self, "wolanVersion")}];
  [dictionary setObject:v10 forKeyedSubscript:@"wolanVersion"];

  v11 = [dictionary copy];

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  logType = [(HMDWoLANDarkPollLogEvent *)self logType];
  suspendedState = [(HMDWoLANDarkPollLogEvent *)self suspendedState];
  reachable = [(HMDWoLANDarkPollLogEvent *)self reachable];
  remotelyReachable = [(HMDWoLANDarkPollLogEvent *)self remotelyReachable];
  minimumIntervalMinutes = [(HMDWoLANDarkPollLogEvent *)self minimumIntervalMinutes];
  v9 = [v3 stringWithFormat:@"HMDWoLANDarkPollLogEvent - Log Type: %ld, suspendedState: %@, reachable: %d, remotelyReachable: %d, minimumIntervalMinutes: %@, wakeUpType: %ld, wolanVersion: %hhu", logType, suspendedState, reachable, remotelyReachable, minimumIntervalMinutes, -[HMDWoLANDarkPollLogEvent wakeUpType](self, "wakeUpType"), -[HMDWoLANDarkPollLogEvent wolanVersion](self, "wolanVersion")];

  return v9;
}

- (HMDWoLANDarkPollLogEvent)initWithAccessory:(id)accessory suspendedState:(id)state reachable:(BOOL)reachable remotelyReachable:(BOOL)remotelyReachable logType:(int64_t)type
{
  accessoryCopy = accessory;
  stateCopy = state;
  v23.receiver = self;
  v23.super_class = HMDWoLANDarkPollLogEvent;
  v14 = [(HMMLogEvent *)&v23 init];
  if (v14)
  {
    identifier = [accessoryCopy identifier];
    accessoryIdentifier = v14->_accessoryIdentifier;
    v14->_accessoryIdentifier = identifier;

    v14->_logType = type;
    objc_storeStrong(&v14->_suspendedState, state);
    v14->_reachable = reachable;
    v14->_remotelyReachable = remotelyReachable;
    connectivityInfo = [accessoryCopy connectivityInfo];
    woWLANDarkPollMinimumInterval = [connectivityInfo woWLANDarkPollMinimumInterval];
    minimumIntervalMinutes = v14->_minimumIntervalMinutes;
    v14->_minimumIntervalMinutes = woWLANDarkPollMinimumInterval;

    connectivityInfo2 = [accessoryCopy connectivityInfo];
    v14->_wakeUpType = [connectivityInfo2 woWLANWakeUpTypeSupport];

    connectivityInfo3 = [accessoryCopy connectivityInfo];
    v14->_wolanVersion = [connectivityInfo3 woWLANVersion];
  }

  return v14;
}

@end