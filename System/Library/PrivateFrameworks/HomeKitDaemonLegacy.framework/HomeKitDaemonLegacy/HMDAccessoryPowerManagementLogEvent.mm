@interface HMDAccessoryPowerManagementLogEvent
- (HMDAccessoryPowerManagementLogEvent)initWithAccessory:(id)accessory linkType:(id)type operation:(id)operation suspendedState:(id)state reachable:(BOOL)reachable remotelyReachable:(BOOL)remotelyReachable;
- (HMDAccessoryPowerManagementLogEvent)initWithAccessory:(id)accessory linkType:(id)type operation:(id)operation suspendedState:(id)state reachable:(BOOL)reachable remotelyReachable:(BOOL)remotelyReachable wakeDurationSec:(double)sec;
- (HMDAccessoryPowerManagementLogEvent)initWithAccessory:(id)accessory wolanWakeUpType:(int64_t)type version:(unsigned __int8)version;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
@end

@implementation HMDAccessoryPowerManagementLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessoryPowerManagementLogEvent logType](self, "logType")}];
  [dictionary setObject:v4 forKeyedSubscript:@"logType"];

  linkType = [(HMDAccessoryPowerManagementLogEvent *)self linkType];
  [dictionary setObject:linkType forKeyedSubscript:@"linkType"];

  operationType = [(HMDAccessoryPowerManagementLogEvent *)self operationType];
  [dictionary setObject:operationType forKeyedSubscript:@"operationType"];

  suspendedState = [(HMDAccessoryPowerManagementLogEvent *)self suspendedState];
  [dictionary setObject:suspendedState forKeyedSubscript:@"suspendedState"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPowerManagementLogEvent reachable](self, "reachable")}];
  [dictionary setObject:v8 forKeyedSubscript:@"reachable"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPowerManagementLogEvent remotelyReachable](self, "remotelyReachable")}];
  [dictionary setObject:v9 forKeyedSubscript:@"remotelyReachable"];

  v10 = MEMORY[0x277CCABB0];
  [(HMDAccessoryPowerManagementLogEvent *)self wakeDurationSec];
  v11 = [v10 numberWithDouble:?];
  [dictionary setObject:v11 forKeyedSubscript:@"wakeDurationSec"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessoryPowerManagementLogEvent wolanWakeUpType](self, "wolanWakeUpType")}];
  [dictionary setObject:v12 forKeyedSubscript:@"wolanWakeUpType"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[HMDAccessoryPowerManagementLogEvent wolanVersion](self, "wolanVersion")}];
  [dictionary setObject:v13 forKeyedSubscript:@"wolanVersion"];

  v14 = [dictionary copy];

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  logType = [(HMDAccessoryPowerManagementLogEvent *)self logType];
  linkType = [(HMDAccessoryPowerManagementLogEvent *)self linkType];
  operationType = [(HMDAccessoryPowerManagementLogEvent *)self operationType];
  suspendedState = [(HMDAccessoryPowerManagementLogEvent *)self suspendedState];
  reachable = [(HMDAccessoryPowerManagementLogEvent *)self reachable];
  remotelyReachable = [(HMDAccessoryPowerManagementLogEvent *)self remotelyReachable];
  [(HMDAccessoryPowerManagementLogEvent *)self wakeDurationSec];
  v11 = [v3 stringWithFormat:@"HMDAccessoryPowerManagementLogEvent - Log Type: %ld, linkType: %@, operationType: %@, suspendedState: %@, reachable: %d, remotelyReachable: %d, wakeDurationSec: %f, wolanWakeUpType: %ld, wolanVersion: %hhu", logType, linkType, operationType, suspendedState, reachable, remotelyReachable, v10, -[HMDAccessoryPowerManagementLogEvent wolanWakeUpType](self, "wolanWakeUpType"), -[HMDAccessoryPowerManagementLogEvent wolanVersion](self, "wolanVersion")];

  return v11;
}

- (HMDAccessoryPowerManagementLogEvent)initWithAccessory:(id)accessory wolanWakeUpType:(int64_t)type version:(unsigned __int8)version
{
  accessoryCopy = accessory;
  v13.receiver = self;
  v13.super_class = HMDAccessoryPowerManagementLogEvent;
  v9 = [(HMMLogEvent *)&v13 init];
  if (v9)
  {
    identifier = [accessoryCopy identifier];
    accessoryIdentifier = v9->_accessoryIdentifier;
    v9->_accessoryIdentifier = identifier;

    v9->_logType = 2;
    v9->_wolanWakeUpType = type;
    v9->_wolanVersion = version;
  }

  return v9;
}

- (HMDAccessoryPowerManagementLogEvent)initWithAccessory:(id)accessory linkType:(id)type operation:(id)operation suspendedState:(id)state reachable:(BOOL)reachable remotelyReachable:(BOOL)remotelyReachable wakeDurationSec:(double)sec
{
  accessoryCopy = accessory;
  typeCopy = type;
  operationCopy = operation;
  stateCopy = state;
  v28.receiver = self;
  v28.super_class = HMDAccessoryPowerManagementLogEvent;
  v20 = [(HMMLogEvent *)&v28 init];
  if (v20)
  {
    identifier = [accessoryCopy identifier];
    accessoryIdentifier = v20->_accessoryIdentifier;
    v20->_accessoryIdentifier = identifier;

    v20->_logType = 1;
    objc_storeStrong(&v20->_linkType, type);
    objc_storeStrong(&v20->_operationType, operation);
    objc_storeStrong(&v20->_suspendedState, state);
    v20->_reachable = reachable;
    v20->_remotelyReachable = remotelyReachable;
    v20->_wakeDurationSec = sec;
    connectivityInfo = [accessoryCopy connectivityInfo];
    woWLANInfo = [connectivityInfo woWLANInfo];
    v20->_wolanWakeUpType = [woWLANInfo wakeType];

    connectivityInfo2 = [accessoryCopy connectivityInfo];
    woWLANInfo2 = [connectivityInfo2 woWLANInfo];
    v20->_wolanVersion = [woWLANInfo2 version];
  }

  return v20;
}

- (HMDAccessoryPowerManagementLogEvent)initWithAccessory:(id)accessory linkType:(id)type operation:(id)operation suspendedState:(id)state reachable:(BOOL)reachable remotelyReachable:(BOOL)remotelyReachable
{
  accessoryCopy = accessory;
  typeCopy = type;
  operationCopy = operation;
  stateCopy = state;
  v26.receiver = self;
  v26.super_class = HMDAccessoryPowerManagementLogEvent;
  v18 = [(HMMLogEvent *)&v26 init];
  if (v18)
  {
    identifier = [accessoryCopy identifier];
    accessoryIdentifier = v18->_accessoryIdentifier;
    v18->_accessoryIdentifier = identifier;

    v18->_logType = 0;
    objc_storeStrong(&v18->_linkType, type);
    objc_storeStrong(&v18->_operationType, operation);
    objc_storeStrong(&v18->_suspendedState, state);
    v18->_reachable = reachable;
    v18->_remotelyReachable = remotelyReachable;
    connectivityInfo = [accessoryCopy connectivityInfo];
    woWLANInfo = [connectivityInfo woWLANInfo];
    v18->_wolanWakeUpType = [woWLANInfo wakeType];

    connectivityInfo2 = [accessoryCopy connectivityInfo];
    woWLANInfo2 = [connectivityInfo2 woWLANInfo];
    v18->_wolanVersion = [woWLANInfo2 version];
  }

  return v18;
}

@end