@interface HMDAccessorySessionMetricEvent
- (HMDAccessory)accessory;
- (HMDAccessorySessionMetricEvent)initWithAccessory:(id)accessory expectedTransport:(id)transport homeUUID:(id)d topErrorDomain:(id)domain topErrorCode:(int64_t)code sessionFailureCount:(unint64_t)count;
- (HMDAccessorySessionMetricEvent)initWithAccessory:(id)accessory sessionMetric:(id)metric;
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  accessory = [(HMDAccessorySessionMetricEvent *)self accessory];
  metricLoggingTransportDetails = [accessory metricLoggingTransportDetails];
  accessoryProtocol = [metricLoggingTransportDetails accessoryProtocol];
  [dictionary setObject:accessoryProtocol forKeyedSubscript:@"accessoryProtocol"];

  accessoryTransport = [(HMDAccessorySessionMetricEvent *)self accessoryTransport];
  [dictionary setObject:accessoryTransport forKeyedSubscript:@"accessoryTransport"];

  expectedTransport = [(HMDAccessorySessionMetricEvent *)self expectedTransport];
  [dictionary setObject:expectedTransport forKeyedSubscript:@"expectedTransport"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(metricLoggingTransportDetails, "isAccessoryBatteryPowered")}];
  [dictionary setObject:v9 forKeyedSubscript:@"isAccessoryBatteryPowered"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(metricLoggingTransportDetails, "isAccessoryBridged")}];
  [dictionary setObject:v10 forKeyedSubscript:@"isAccessoryBridged"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(metricLoggingTransportDetails, "isThreadAccessory")}];
  [dictionary setObject:v11 forKeyedSubscript:@"isThreadAccessory"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetricEvent isHomeThreadCapable](self, "isHomeThreadCapable")}];
  [dictionary setObject:v12 forKeyedSubscript:@"isHomeThreadCapable"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetricEvent isPrimaryThreadCapable](self, "isPrimaryThreadCapable")}];
  [dictionary setObject:v13 forKeyedSubscript:@"isPrimaryResidentThreadCapable"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetricEvent isThreadNetworkUp](self, "isThreadNetworkUp")}];
  [dictionary setObject:v14 forKeyedSubscript:@"isThreadNetworkUp"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetricEvent isPrimary](self, "isPrimary")}];
  [dictionary setObject:v15 forKeyedSubscript:@"isPrimary"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetricEvent percentageDurationActiveSession](self, "percentageDurationActiveSession")}];
  [dictionary setObject:v16 forKeyedSubscript:@"percentageDurationActiveSession"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetricEvent percentDurationReachable](self, "percentDurationReachable")}];
  [dictionary setObject:v17 forKeyedSubscript:@"percentDurationReachable"];

  v18 = MEMORY[0x277CCABB0];
  [(HMDAccessorySessionMetricEvent *)self sessionCheckIntervalSec];
  v19 = [v18 numberWithDouble:?];
  [dictionary setObject:v19 forKeyedSubscript:@"sessionCheckInterval"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetricEvent sessionFailures](self, "sessionFailures")}];
  [dictionary setObject:v20 forKeyedSubscript:@"sessionFailures"];

  v21 = MEMORY[0x277CCABB0];
  [(HMDAccessorySessionMetricEvent *)self submissionIntervalSec];
  v23 = [v21 numberWithDouble:floor(v22)];
  [dictionary setObject:v23 forKeyedSubscript:@"submissionInterval"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetricEvent successfulSessionRetries](self, "successfulSessionRetries")}];
  [dictionary setObject:v24 forKeyedSubscript:@"successfulSessionRetries"];

  v25 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessorySessionMetricEvent topErrorCode](self, "topErrorCode")}];
  [dictionary setObject:v25 forKeyedSubscript:@"topErrorCode"];

  topErrorDomain = [(HMDAccessorySessionMetricEvent *)self topErrorDomain];
  [dictionary setObject:topErrorDomain forKeyedSubscript:@"topErrorDomain"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetricEvent numActiveSessionClients](self, "numActiveSessionClients")}];
  [dictionary setObject:v27 forKeyedSubscript:@"numActiveSessionClients"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetricEvent lastSeenSecondsAgo](self, "lastSeenSecondsAgo")}];
  [dictionary setObject:v28 forKeyedSubscript:@"lastSeenSecondsAgo"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetricEvent lastSeenWithLowBattery](self, "lastSeenWithLowBattery")}];
  [dictionary setObject:v29 forKeyedSubscript:@"lastSeenWithLowBattery"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetricEvent numIPAddresses](self, "numIPAddresses")}];
  [dictionary setObject:v30 forKeyedSubscript:@"numIPAddressesResolved"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetricEvent numIPAddressesTried](self, "numIPAddressesTried")}];
  [dictionary setObject:v31 forKeyedSubscript:@"numIPAddressesTried"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetricEvent numBonjourNames](self, "numBonjourNames")}];
  [dictionary setObject:v32 forKeyedSubscript:@"numBonjourNamesSeen"];

  v33 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetricEvent bonjourUpdateForced](self, "bonjourUpdateForced")}];
  [dictionary setObject:v33 forKeyedSubscript:@"bonjourUpdateForced"];

  v34 = objc_autoreleasePoolPush();
  selfCopy = self;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    v37 = HMFGetLogIdentifier();
    name = [accessory name];
    identifier = [accessory identifier];
    v42 = 138544130;
    v43 = v37;
    v44 = 2112;
    v45 = name;
    v46 = 2112;
    v47 = identifier;
    v48 = 2112;
    v49 = dictionary;
    _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEBUG, "%{public}@Serialized HMDAccessorySessionMetricEvent for accessory: %@/%@ - %@", &v42, 0x2Au);
  }

  objc_autoreleasePoolPop(v34);
  v40 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (HMDAccessorySessionMetricEvent)initWithAccessory:(id)accessory expectedTransport:(id)transport homeUUID:(id)d topErrorDomain:(id)domain topErrorCode:(int64_t)code sessionFailureCount:(unint64_t)count
{
  transportCopy = transport;
  dCopy = d;
  domainCopy = domain;
  v21.receiver = self;
  v21.super_class = HMDAccessorySessionMetricEvent;
  v18 = [(HMDHAPMetrics *)&v21 initWithHMDAccessory:accessory];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_expectedTransport, transport);
    objc_storeStrong(&v19->_homeUUID, d);
    objc_storeStrong(&v19->_topErrorDomain, domain);
    v19->_topErrorCode = code;
    v19->_sessionFailures = count;
  }

  return v19;
}

- (HMDAccessorySessionMetricEvent)initWithAccessory:(id)accessory sessionMetric:(id)metric
{
  accessoryCopy = accessory;
  metricCopy = metric;
  v36.receiver = self;
  v36.super_class = HMDAccessorySessionMetricEvent;
  v8 = [(HMDHAPMetrics *)&v36 initWithHMDAccessory:accessoryCopy];
  if (v8)
  {
    metricLoggingTransportDetails = [accessoryCopy metricLoggingTransportDetails];
    objc_storeWeak(&v8->_accessory, accessoryCopy);
    v8->_isHomeThreadCapable = [metricCopy isHomeThreadCapable];
    v8->_isPrimaryThreadCapable = [metricCopy isPrimaryResidentThreadCapable];
    v8->_isThreadNetworkUp = [metricCopy isThreadNetworkUp];
    v8->_isPrimary = [metricCopy isFromPrimary];
    [metricCopy activeSessionDurationSec];
    v11 = v10;
    [metricCopy submissionIntervalSec];
    v8->_percentageDurationActiveSession = vcvtmd_u64_f64(v11 / v12 * 100.0);
    [metricCopy reachableDurationSec];
    v14 = v13;
    [metricCopy submissionIntervalSec];
    v8->_percentDurationReachable = vcvtmd_u64_f64(v14 / v15 * 100.0);
    [metricCopy sessionCheckIntervalSec];
    v8->_sessionCheckIntervalSec = v16;
    v8->_sessionFailures = [metricCopy sessionFailures];
    [metricCopy submissionIntervalSec];
    v8->_submissionIntervalSec = v17;
    v8->_successfulSessionRetries = [metricCopy successfulSessionRetries];
    topError = [metricCopy topError];
    v8->_topErrorCode = [topError code];

    topError2 = [metricCopy topError];
    domain = [topError2 domain];
    topErrorDomain = v8->_topErrorDomain;
    v8->_topErrorDomain = domain;

    v8->_numActiveSessionClients = [accessoryCopy numActiveSessionClients];
    if ([accessoryCopy isReachable])
    {
      v8->_lastSeenSecondsAgo = 0;
      v8->_lastSeenWithLowBattery = 0;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      lastSeenDate = [accessoryCopy lastSeenDate];
      [date timeIntervalSinceDate:lastSeenDate];
      v8->_lastSeenSecondsAgo = v24;

      v8->_lastSeenWithLowBattery = [accessoryCopy isLowBattery];
    }

    accessoryTransport = [metricCopy accessoryTransport];
    accessoryTransport = v8->_accessoryTransport;
    v8->_accessoryTransport = accessoryTransport;

    expectedTransport = [metricCopy expectedTransport];
    expectedTransport = v8->_expectedTransport;
    v8->_expectedTransport = expectedTransport;

    v8->_isThreadAccessory = [metricLoggingTransportDetails isThreadAccessory];
    sessionInfo = [metricCopy sessionInfo];
    v8->_numIPAddresses = [sessionInfo numIPAddresses];

    sessionInfo2 = [metricCopy sessionInfo];
    v8->_numIPAddressesTried = [sessionInfo2 numIPAddressesTried];

    sessionInfo3 = [metricCopy sessionInfo];
    v8->_numBonjourNames = [sessionInfo3 numBonjourNames];

    v8->_bonjourUpdateForced = [metricCopy isBonjourUpdateForced];
    home = [accessoryCopy home];
    uuid = [home uuid];
    homeUUID = v8->_homeUUID;
    v8->_homeUUID = uuid;
  }

  return v8;
}

@end