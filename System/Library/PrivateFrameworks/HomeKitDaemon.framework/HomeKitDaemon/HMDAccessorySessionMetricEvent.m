@interface HMDAccessorySessionMetricEvent
- (HMDAccessory)accessory;
- (HMDAccessorySessionMetricEvent)initWithAccessory:(id)a3 expectedTransport:(id)a4 homeUUID:(id)a5 topErrorDomain:(id)a6 topErrorCode:(int64_t)a7 sessionFailureCount:(unint64_t)a8;
- (HMDAccessorySessionMetricEvent)initWithAccessory:(id)a3 sessionMetric:(id)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDAccessorySessionMetricEvent

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDAccessorySessionMetricEvent *)self accessory];
  v5 = [v4 metricLoggingTransportDetails];
  v6 = [v5 accessoryProtocol];
  [v3 setObject:v6 forKeyedSubscript:@"accessoryProtocol"];

  v7 = [(HMDAccessorySessionMetricEvent *)self accessoryTransport];
  [v3 setObject:v7 forKeyedSubscript:@"accessoryTransport"];

  v8 = [(HMDAccessorySessionMetricEvent *)self expectedTransport];
  [v3 setObject:v8 forKeyedSubscript:@"expectedTransport"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isAccessoryBatteryPowered")}];
  [v3 setObject:v9 forKeyedSubscript:@"isAccessoryBatteryPowered"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isAccessoryBridged")}];
  [v3 setObject:v10 forKeyedSubscript:@"isAccessoryBridged"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isThreadAccessory")}];
  [v3 setObject:v11 forKeyedSubscript:@"isThreadAccessory"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetricEvent isHomeThreadCapable](self, "isHomeThreadCapable")}];
  [v3 setObject:v12 forKeyedSubscript:@"isHomeThreadCapable"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetricEvent isPrimaryThreadCapable](self, "isPrimaryThreadCapable")}];
  [v3 setObject:v13 forKeyedSubscript:@"isPrimaryResidentThreadCapable"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetricEvent isThreadNetworkUp](self, "isThreadNetworkUp")}];
  [v3 setObject:v14 forKeyedSubscript:@"isThreadNetworkUp"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetricEvent isPrimary](self, "isPrimary")}];
  [v3 setObject:v15 forKeyedSubscript:@"isPrimary"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetricEvent percentageDurationActiveSession](self, "percentageDurationActiveSession")}];
  [v3 setObject:v16 forKeyedSubscript:@"percentageDurationActiveSession"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetricEvent percentDurationReachable](self, "percentDurationReachable")}];
  [v3 setObject:v17 forKeyedSubscript:@"percentDurationReachable"];

  v18 = MEMORY[0x277CCABB0];
  [(HMDAccessorySessionMetricEvent *)self sessionCheckIntervalSec];
  v19 = [v18 numberWithDouble:?];
  [v3 setObject:v19 forKeyedSubscript:@"sessionCheckInterval"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetricEvent sessionFailures](self, "sessionFailures")}];
  [v3 setObject:v20 forKeyedSubscript:@"sessionFailures"];

  v21 = MEMORY[0x277CCABB0];
  [(HMDAccessorySessionMetricEvent *)self submissionIntervalSec];
  v23 = [v21 numberWithDouble:floor(v22)];
  [v3 setObject:v23 forKeyedSubscript:@"submissionInterval"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetricEvent successfulSessionRetries](self, "successfulSessionRetries")}];
  [v3 setObject:v24 forKeyedSubscript:@"successfulSessionRetries"];

  v25 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessorySessionMetricEvent topErrorCode](self, "topErrorCode")}];
  [v3 setObject:v25 forKeyedSubscript:@"topErrorCode"];

  v26 = [(HMDAccessorySessionMetricEvent *)self topErrorDomain];
  [v3 setObject:v26 forKeyedSubscript:@"topErrorDomain"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetricEvent numActiveSessionClients](self, "numActiveSessionClients")}];
  [v3 setObject:v27 forKeyedSubscript:@"numActiveSessionClients"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetricEvent lastSeenSecondsAgo](self, "lastSeenSecondsAgo")}];
  [v3 setObject:v28 forKeyedSubscript:@"lastSeenSecondsAgo"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetricEvent lastSeenWithLowBattery](self, "lastSeenWithLowBattery")}];
  [v3 setObject:v29 forKeyedSubscript:@"lastSeenWithLowBattery"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetricEvent numIPAddresses](self, "numIPAddresses")}];
  [v3 setObject:v30 forKeyedSubscript:@"numIPAddressesResolved"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetricEvent numIPAddressesTried](self, "numIPAddressesTried")}];
  [v3 setObject:v31 forKeyedSubscript:@"numIPAddressesTried"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetricEvent numBonjourNames](self, "numBonjourNames")}];
  [v3 setObject:v32 forKeyedSubscript:@"numBonjourNamesSeen"];

  v33 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetricEvent bonjourUpdateForced](self, "bonjourUpdateForced")}];
  [v3 setObject:v33 forKeyedSubscript:@"bonjourUpdateForced"];

  v34 = objc_autoreleasePoolPush();
  v35 = self;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    v37 = HMFGetLogIdentifier();
    v38 = [v4 name];
    v39 = [v4 identifier];
    v42 = 138544130;
    v43 = v37;
    v44 = 2112;
    v45 = v38;
    v46 = 2112;
    v47 = v39;
    v48 = 2112;
    v49 = v3;
    _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEBUG, "%{public}@Serialized HMDAccessorySessionMetricEvent for accessory: %@/%@ - %@", &v42, 0x2Au);
  }

  objc_autoreleasePoolPop(v34);
  v40 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HMDAccessorySessionMetricEvent)initWithAccessory:(id)a3 expectedTransport:(id)a4 homeUUID:(id)a5 topErrorDomain:(id)a6 topErrorCode:(int64_t)a7 sessionFailureCount:(unint64_t)a8
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v21.receiver = self;
  v21.super_class = HMDAccessorySessionMetricEvent;
  v18 = [(HMDHAPMetrics *)&v21 initWithHMDAccessory:a3];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_expectedTransport, a4);
    objc_storeStrong(&v19->_homeUUID, a5);
    objc_storeStrong(&v19->_topErrorDomain, a6);
    v19->_topErrorCode = a7;
    v19->_sessionFailures = a8;
  }

  return v19;
}

- (HMDAccessorySessionMetricEvent)initWithAccessory:(id)a3 sessionMetric:(id)a4
{
  v6 = a3;
  v7 = a4;
  v36.receiver = self;
  v36.super_class = HMDAccessorySessionMetricEvent;
  v8 = [(HMDHAPMetrics *)&v36 initWithHMDAccessory:v6];
  if (v8)
  {
    v9 = [v6 metricLoggingTransportDetails];
    objc_storeWeak(&v8->_accessory, v6);
    v8->_isHomeThreadCapable = [v7 isHomeThreadCapable];
    v8->_isPrimaryThreadCapable = [v7 isPrimaryResidentThreadCapable];
    v8->_isThreadNetworkUp = [v7 isThreadNetworkUp];
    v8->_isPrimary = [v7 isFromPrimary];
    [v7 activeSessionDurationSec];
    v11 = v10;
    [v7 submissionIntervalSec];
    v8->_percentageDurationActiveSession = vcvtmd_u64_f64(v11 / v12 * 100.0);
    [v7 reachableDurationSec];
    v14 = v13;
    [v7 submissionIntervalSec];
    v8->_percentDurationReachable = vcvtmd_u64_f64(v14 / v15 * 100.0);
    [v7 sessionCheckIntervalSec];
    v8->_sessionCheckIntervalSec = v16;
    v8->_sessionFailures = [v7 sessionFailures];
    [v7 submissionIntervalSec];
    v8->_submissionIntervalSec = v17;
    v8->_successfulSessionRetries = [v7 successfulSessionRetries];
    v18 = [v7 topError];
    v8->_topErrorCode = [v18 code];

    v19 = [v7 topError];
    v20 = [v19 domain];
    topErrorDomain = v8->_topErrorDomain;
    v8->_topErrorDomain = v20;

    v8->_numActiveSessionClients = [v6 numActiveSessionClients];
    if ([v6 isReachable])
    {
      v8->_lastSeenSecondsAgo = 0;
      v8->_lastSeenWithLowBattery = 0;
    }

    else
    {
      v22 = [MEMORY[0x277CBEAA8] date];
      v23 = [v6 lastSeenDate];
      [v22 timeIntervalSinceDate:v23];
      v8->_lastSeenSecondsAgo = v24;

      v8->_lastSeenWithLowBattery = [v6 isLowBattery];
    }

    v25 = [v7 accessoryTransport];
    accessoryTransport = v8->_accessoryTransport;
    v8->_accessoryTransport = v25;

    v27 = [v7 expectedTransport];
    expectedTransport = v8->_expectedTransport;
    v8->_expectedTransport = v27;

    v8->_isThreadAccessory = [v9 isThreadAccessory];
    v29 = [v7 sessionInfo];
    v8->_numIPAddresses = [v29 numIPAddresses];

    v30 = [v7 sessionInfo];
    v8->_numIPAddressesTried = [v30 numIPAddressesTried];

    v31 = [v7 sessionInfo];
    v8->_numBonjourNames = [v31 numBonjourNames];

    v8->_bonjourUpdateForced = [v7 isBonjourUpdateForced];
    v32 = [v6 home];
    v33 = [v32 uuid];
    homeUUID = v8->_homeUUID;
    v8->_homeUUID = v33;
  }

  return v8;
}

@end