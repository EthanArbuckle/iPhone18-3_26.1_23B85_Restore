@interface HMDAccessoryPowerManagementLogEvent
- (HMDAccessoryPowerManagementLogEvent)initWithAccessory:(id)a3 linkType:(id)a4 operation:(id)a5 suspendedState:(id)a6 reachable:(BOOL)a7 remotelyReachable:(BOOL)a8;
- (HMDAccessoryPowerManagementLogEvent)initWithAccessory:(id)a3 linkType:(id)a4 operation:(id)a5 suspendedState:(id)a6 reachable:(BOOL)a7 remotelyReachable:(BOOL)a8 wakeDurationSec:(double)a9;
- (HMDAccessoryPowerManagementLogEvent)initWithAccessory:(id)a3 wolanWakeUpType:(int64_t)a4 version:(unsigned __int8)a5;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
@end

@implementation HMDAccessoryPowerManagementLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessoryPowerManagementLogEvent logType](self, "logType")}];
  [v3 setObject:v4 forKeyedSubscript:@"logType"];

  v5 = [(HMDAccessoryPowerManagementLogEvent *)self linkType];
  [v3 setObject:v5 forKeyedSubscript:@"linkType"];

  v6 = [(HMDAccessoryPowerManagementLogEvent *)self operationType];
  [v3 setObject:v6 forKeyedSubscript:@"operationType"];

  v7 = [(HMDAccessoryPowerManagementLogEvent *)self suspendedState];
  [v3 setObject:v7 forKeyedSubscript:@"suspendedState"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPowerManagementLogEvent reachable](self, "reachable")}];
  [v3 setObject:v8 forKeyedSubscript:@"reachable"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPowerManagementLogEvent remotelyReachable](self, "remotelyReachable")}];
  [v3 setObject:v9 forKeyedSubscript:@"remotelyReachable"];

  v10 = MEMORY[0x277CCABB0];
  [(HMDAccessoryPowerManagementLogEvent *)self wakeDurationSec];
  v11 = [v10 numberWithDouble:?];
  [v3 setObject:v11 forKeyedSubscript:@"wakeDurationSec"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessoryPowerManagementLogEvent wolanWakeUpType](self, "wolanWakeUpType")}];
  [v3 setObject:v12 forKeyedSubscript:@"wolanWakeUpType"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[HMDAccessoryPowerManagementLogEvent wolanVersion](self, "wolanVersion")}];
  [v3 setObject:v13 forKeyedSubscript:@"wolanVersion"];

  v14 = [v3 copy];

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDAccessoryPowerManagementLogEvent *)self logType];
  v5 = [(HMDAccessoryPowerManagementLogEvent *)self linkType];
  v6 = [(HMDAccessoryPowerManagementLogEvent *)self operationType];
  v7 = [(HMDAccessoryPowerManagementLogEvent *)self suspendedState];
  v8 = [(HMDAccessoryPowerManagementLogEvent *)self reachable];
  v9 = [(HMDAccessoryPowerManagementLogEvent *)self remotelyReachable];
  [(HMDAccessoryPowerManagementLogEvent *)self wakeDurationSec];
  v11 = [v3 stringWithFormat:@"HMDAccessoryPowerManagementLogEvent - Log Type: %ld, linkType: %@, operationType: %@, suspendedState: %@, reachable: %d, remotelyReachable: %d, wakeDurationSec: %f, wolanWakeUpType: %ld, wolanVersion: %hhu", v4, v5, v6, v7, v8, v9, v10, -[HMDAccessoryPowerManagementLogEvent wolanWakeUpType](self, "wolanWakeUpType"), -[HMDAccessoryPowerManagementLogEvent wolanVersion](self, "wolanVersion")];

  return v11;
}

- (HMDAccessoryPowerManagementLogEvent)initWithAccessory:(id)a3 wolanWakeUpType:(int64_t)a4 version:(unsigned __int8)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = HMDAccessoryPowerManagementLogEvent;
  v9 = [(HMMLogEvent *)&v13 init];
  if (v9)
  {
    v10 = [v8 identifier];
    accessoryIdentifier = v9->_accessoryIdentifier;
    v9->_accessoryIdentifier = v10;

    v9->_logType = 2;
    v9->_wolanWakeUpType = a4;
    v9->_wolanVersion = a5;
  }

  return v9;
}

- (HMDAccessoryPowerManagementLogEvent)initWithAccessory:(id)a3 linkType:(id)a4 operation:(id)a5 suspendedState:(id)a6 reachable:(BOOL)a7 remotelyReachable:(BOOL)a8 wakeDurationSec:(double)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v28.receiver = self;
  v28.super_class = HMDAccessoryPowerManagementLogEvent;
  v20 = [(HMMLogEvent *)&v28 init];
  if (v20)
  {
    v21 = [v16 identifier];
    accessoryIdentifier = v20->_accessoryIdentifier;
    v20->_accessoryIdentifier = v21;

    v20->_logType = 1;
    objc_storeStrong(&v20->_linkType, a4);
    objc_storeStrong(&v20->_operationType, a5);
    objc_storeStrong(&v20->_suspendedState, a6);
    v20->_reachable = a7;
    v20->_remotelyReachable = a8;
    v20->_wakeDurationSec = a9;
    v23 = [v16 connectivityInfo];
    v24 = [v23 woWLANInfo];
    v20->_wolanWakeUpType = [v24 wakeType];

    v25 = [v16 connectivityInfo];
    v26 = [v25 woWLANInfo];
    v20->_wolanVersion = [v26 version];
  }

  return v20;
}

- (HMDAccessoryPowerManagementLogEvent)initWithAccessory:(id)a3 linkType:(id)a4 operation:(id)a5 suspendedState:(id)a6 reachable:(BOOL)a7 remotelyReachable:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v26.receiver = self;
  v26.super_class = HMDAccessoryPowerManagementLogEvent;
  v18 = [(HMMLogEvent *)&v26 init];
  if (v18)
  {
    v19 = [v14 identifier];
    accessoryIdentifier = v18->_accessoryIdentifier;
    v18->_accessoryIdentifier = v19;

    v18->_logType = 0;
    objc_storeStrong(&v18->_linkType, a4);
    objc_storeStrong(&v18->_operationType, a5);
    objc_storeStrong(&v18->_suspendedState, a6);
    v18->_reachable = a7;
    v18->_remotelyReachable = a8;
    v21 = [v14 connectivityInfo];
    v22 = [v21 woWLANInfo];
    v18->_wolanWakeUpType = [v22 wakeType];

    v23 = [v14 connectivityInfo];
    v24 = [v23 woWLANInfo];
    v18->_wolanVersion = [v24 version];
  }

  return v18;
}

@end