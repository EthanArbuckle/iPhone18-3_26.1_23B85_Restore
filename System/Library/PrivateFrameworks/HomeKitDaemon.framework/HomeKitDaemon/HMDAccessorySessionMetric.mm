@interface HMDAccessorySessionMetric
+ (id)logCategory;
- (BOOL)isCurrentPrimaryResident;
- (BOOL)isHomeThreadCapable;
- (BOOL)isPrimaryResidentThreadCapable;
- (BOOL)isThreadNetworkUp;
- (HMDAccessorySessionMetric)initWithAccessory:(id)accessory workQueue:(id)queue;
- (HMDAccessorySessionMetric)initWithAccessory:(id)accessory workQueue:(id)queue hapSessionTTRTimer:(id)timer hapSessionTTRAllowList:(id)list radarInitiator:(id)initiator readWriteLogEventManager:(id)manager;
- (HMDHAPAccessory)accessory;
- (HMMRadarInitiating)radarInitiator;
- (NSDictionary)state;
- (NSError)topError;
- (double)sessionCheckIntervalSec;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)_resetSessionMetric;
- (void)_submitMetric;
- (void)resetSessionMetric;
- (void)submitMetric;
- (void)timerDidFire:(id)fire;
- (void)updateReachableState:(BOOL)state;
- (void)updateSessionState:(BOOL)state linkLayerType:(int64_t)type sessionInfo:(id)info bookkeeping:(id)bookkeeping withError:(id)error;
@end

@implementation HMDAccessorySessionMetric

- (HMMRadarInitiating)radarInitiator
{
  WeakRetained = objc_loadWeakRetained(&self->_radarInitiator);

  return WeakRetained;
}

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  accessory = [(HMDAccessorySessionMetric *)self accessory];
  v3 = MEMORY[0x277CCACA8];
  name = [accessory name];
  identifier = [accessory identifier];
  v6 = [v3 stringWithFormat:@"%@/%@", name, identifier];

  return v6;
}

- (void)timerDidFire:(id)fire
{
  v25 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDAccessorySessionMetric *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapSessionTTRTimer = [(HMDAccessorySessionMetric *)self hapSessionTTRTimer];

  if (hapSessionTTRTimer == fireCopy)
  {
    accessory = [(HMDAccessorySessionMetric *)self accessory];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (accessory)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        shortDescription = [accessory shortDescription];
        *buf = 138543618;
        v22 = v12;
        v23 = 2114;
        v24 = shortDescription;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@HAP session TTR timer fired. Initiating radar for allowed accessory: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      radarInitiator = [(HMDAccessorySessionMetric *)selfCopy radarInitiator];
      v15 = MEMORY[0x277CCACA8];
      manufacturer = [accessory manufacturer];
      model = [accessory model];
      v18 = [v15 stringWithFormat:@"Lost connection with Accessory: %@ Model: %@", manufacturer, model];
      [radarInitiator requestRadarWithDisplayReason:@"a HAP session failure was detected" radarTitle:v18];
    }

    else
    {
      if (v11)
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v22 = v19;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory reference is nil when handling HAP session TTR timer", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateReachableState:(BOOL)state
{
  workQueue = [(HMDAccessorySessionMetric *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__HMDAccessorySessionMetric_updateReachableState___block_invoke;
  v6[3] = &unk_278688650;
  v6[4] = self;
  stateCopy = state;
  dispatch_async(workQueue, v6);
}

void __50__HMDAccessorySessionMetric_updateReachableState___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  if (v2)
  {
    v3 = [*(a1 + 32) readWriteLogEventManager];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) sessionInfo];
    v6 = [v2 uuid];
    [v3 updateSessionConnectivity:v4 withSessionInfo:v5 forAccessoryUUID:v6];

    if (*(a1 + 40) == 1)
    {
      v7 = [*(a1 + 32) reachableStartTime];

      if (v7)
      {
        v8 = objc_autoreleasePoolPush();
        v9 = *(a1 + 32);
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = HMFGetLogIdentifier();
          v12 = [v2 shortDescription];
          v33 = 138543618;
          v34 = v11;
          v35 = 2112;
          v36 = v12;
          v13 = "%{public}@Was already reachable for: %@";
          v14 = v10;
          v15 = OS_LOG_TYPE_DEBUG;
LABEL_11:
          _os_log_impl(&dword_229538000, v14, v15, v13, &v33, 0x16u);

          goto LABEL_12;
        }

        goto LABEL_12;
      }

      v16 = *(a1 + 40);
    }

    else
    {
      v16 = 0;
    }

    [*(a1 + 32) setIsReachable:v16 & 1];
    if (*(a1 + 40) == 1)
    {
      v17 = [MEMORY[0x277CBEAA8] date];
      [*(a1 + 32) setReachableStartTime:v17];

      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [v2 shortDescription];
        v33 = 138543618;
        v34 = v11;
        v35 = 2114;
        v36 = v12;
        v13 = "%{public}@Reachable started for accessory: %{public}@";
        v14 = v10;
        v15 = OS_LOG_TYPE_INFO;
        goto LABEL_11;
      }

LABEL_12:

      objc_autoreleasePoolPop(v8);
      goto LABEL_20;
    }

    v18 = [*(a1 + 32) reachableStartTime];

    if (v18)
    {
      v19 = *(a1 + 32);
      v20 = [v19 reachableStartTime];
      [v20 timeIntervalSinceNow];
      v22 = fabs(v21);
      [v19 reachableDurationSec];
      [v19 setReachableDurationSec:v23 + v22];

      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 32);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v2 shortDescription];
        v33 = 138543618;
        v34 = v27;
        v35 = 2114;
        v36 = v28;
        v29 = "%{public}@Reachable stopped for accessory: %{public}@";
        v30 = v26;
        v31 = OS_LOG_TYPE_INFO;
LABEL_18:
        _os_log_impl(&dword_229538000, v30, v31, v29, &v33, 0x16u);
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 32);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v2 shortDescription];
        v33 = 138543618;
        v34 = v27;
        v35 = 2112;
        v36 = v28;
        v29 = "%{public}@Was not reachable for: %@";
        v30 = v26;
        v31 = OS_LOG_TYPE_DEBUG;
        goto LABEL_18;
      }
    }

    objc_autoreleasePoolPop(v24);
    [*(a1 + 32) setReachableStartTime:0];
  }

LABEL_20:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_resetSessionMetric
{
  v18 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessorySessionMetric *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    accessory = [(HMDAccessorySessionMetric *)selfCopy accessory];
    shortDescription = [accessory shortDescription];
    v14 = 138543618;
    v15 = v7;
    v16 = 2114;
    v17 = shortDescription;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Resetting session metric - accessory: %{public}@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  date = [MEMORY[0x277CBEAA8] date];
  [(HMDAccessorySessionMetric *)selfCopy setReachableStartTime:0];
  [(HMDAccessorySessionMetric *)selfCopy setSessionStartTime:0];
  errorCounts = [(HMDAccessorySessionMetric *)selfCopy errorCounts];
  [errorCounts removeAllObjects];

  [(HMDAccessorySessionMetric *)selfCopy setMetricCollectionStartTime:date];
  [(HMDAccessorySessionMetric *)selfCopy setActiveSessionDurationSec:0.0];
  [(HMDAccessorySessionMetric *)selfCopy setReachableDurationSec:0.0];
  [(HMDAccessorySessionMetric *)selfCopy setSessionFailures:0];
  [(HMDAccessorySessionMetric *)selfCopy setSuccessfulSessionRetries:0];
  if ([(HMDAccessorySessionMetric *)selfCopy isReachable])
  {
    [(HMDAccessorySessionMetric *)selfCopy setReachableStartTime:date];
  }

  if ([(HMDAccessorySessionMetric *)selfCopy hasActiveSession])
  {
    [(HMDAccessorySessionMetric *)selfCopy setSessionStartTime:date];
  }

  sessionInfo = [(HMDAccessorySessionMetric *)selfCopy sessionInfo];
  [sessionInfo resetWithNumIPs:0 numIPsTried:0 numBonjourNames:0 ipAddress:0 serviceName:0 resolveAttempted:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)resetSessionMetric
{
  workQueue = [(HMDAccessorySessionMetric *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDAccessorySessionMetric_resetSessionMetric__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_submitMetric
{
  v45 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessorySessionMetric *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  metricCollectionStartTime = [(HMDAccessorySessionMetric *)self metricCollectionStartTime];
  [metricCollectionStartTime timeIntervalSinceNow];
  [(HMDAccessorySessionMetric *)self setSubmissionIntervalSec:fabs(v5)];

  sessionStartTime = [(HMDAccessorySessionMetric *)self sessionStartTime];

  if (sessionStartTime)
  {
    sessionStartTime2 = [(HMDAccessorySessionMetric *)self sessionStartTime];
    [sessionStartTime2 timeIntervalSinceNow];
    v9 = fabs(v8);
    [(HMDAccessorySessionMetric *)self activeSessionDurationSec];
    [(HMDAccessorySessionMetric *)self setActiveSessionDurationSec:v10 + v9];
  }

  reachableStartTime = [(HMDAccessorySessionMetric *)self reachableStartTime];

  if (reachableStartTime)
  {
    reachableStartTime2 = [(HMDAccessorySessionMetric *)self reachableStartTime];
    [reachableStartTime2 timeIntervalSinceNow];
    v14 = fabs(v13);
    [(HMDAccessorySessionMetric *)self reachableDurationSec];
    [(HMDAccessorySessionMetric *)self setReachableDurationSec:v15 + v14];
  }

  accessory = [(HMDAccessorySessionMetric *)self accessory];
  v17 = [[HMDAccessorySessionMetricEvent alloc] initWithAccessory:accessory sessionMetric:self];
  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    name = [accessory name];
    identifier = [accessory identifier];
    coreAnalyticsEventDictionary = [(HMDAccessorySessionMetricEvent *)v17 coreAnalyticsEventDictionary];
    v37 = 138544130;
    v38 = v21;
    v39 = 2112;
    v40 = name;
    v41 = 2114;
    v42 = identifier;
    v43 = 2114;
    v44 = coreAnalyticsEventDictionary;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Submitting SessionMetric for accessory: %@/%{public}@ - %{public}@", &v37, 0x2Au);
  }

  objc_autoreleasePoolPop(v18);
  expectedTransport = [(HMDAccessorySessionMetric *)selfCopy expectedTransport];
  if ([expectedTransport isEqualToString:@"BLE"])
  {
  }

  else
  {
    [(HMDAccessorySessionMetric *)selfCopy submissionIntervalSec];
    v27 = v26;

    if (v27 >= 3600.0)
    {
      home = [accessory home];
      logEventSubmitter = [home logEventSubmitter];
      [logEventSubmitter submitLogEvent:v17];

      goto LABEL_14;
    }
  }

  v28 = objc_autoreleasePoolPush();
  v29 = selfCopy;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    name2 = [accessory name];
    identifier2 = [accessory identifier];
    v37 = 138543874;
    v38 = v31;
    v39 = 2112;
    v40 = name2;
    v41 = 2114;
    v42 = identifier2;
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Skipped Submitting SessionMetric for %@/%{public}@", &v37, 0x20u);
  }

  objc_autoreleasePoolPop(v28);
LABEL_14:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)submitMetric
{
  workQueue = [(HMDAccessorySessionMetric *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDAccessorySessionMetric_submitMetric__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)updateSessionState:(BOOL)state linkLayerType:(int64_t)type sessionInfo:(id)info bookkeeping:(id)bookkeeping withError:(id)error
{
  infoCopy = info;
  bookkeepingCopy = bookkeeping;
  errorCopy = error;
  workQueue = [(HMDAccessorySessionMetric *)self workQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __96__HMDAccessorySessionMetric_updateSessionState_linkLayerType_sessionInfo_bookkeeping_withError___block_invoke;
  v19[3] = &unk_2786825B8;
  stateCopy = state;
  v22 = errorCopy;
  typeCopy = type;
  v19[4] = self;
  v20 = infoCopy;
  v21 = bookkeepingCopy;
  v16 = errorCopy;
  v17 = bookkeepingCopy;
  v18 = infoCopy;
  dispatch_async(workQueue, v19);
}

- (NSError)topError
{
  errorCounts = [(HMDAccessorySessionMetric *)self errorCounts];
  v3 = [errorCounts copy];

  v4 = [v3 keysSortedByValueUsingComparator:&__block_literal_global_230427];
  firstObject = [v4 firstObject];

  return firstObject;
}

uint64_t __37__HMDAccessorySessionMetric_topError__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 integerValue];
  if (v6 == [v5 integerValue])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 integerValue];
    if (v8 < [v5 integerValue])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

- (BOOL)isPrimaryResidentThreadCapable
{
  accessory = [(HMDAccessorySessionMetric *)self accessory];
  home = [accessory home];
  primaryResident = [home primaryResident];
  capabilities = [primaryResident capabilities];
  supportsThreadBorderRouter = [capabilities supportsThreadBorderRouter];

  return supportsThreadBorderRouter;
}

- (BOOL)isThreadNetworkUp
{
  accessory = [(HMDAccessorySessionMetric *)self accessory];
  home = [accessory home];
  isThreadNetworkUp = [home isThreadNetworkUp];

  return isThreadNetworkUp;
}

- (BOOL)isHomeThreadCapable
{
  accessory = [(HMDAccessorySessionMetric *)self accessory];
  home = [accessory home];
  isThreadCapable = [home isThreadCapable];

  return isThreadCapable;
}

- (BOOL)isCurrentPrimaryResident
{
  accessory = [(HMDAccessorySessionMetric *)self accessory];
  home = [accessory home];
  isCurrentDevicePrimaryResident = [home isCurrentDevicePrimaryResident];

  return isCurrentDevicePrimaryResident;
}

- (double)sessionCheckIntervalSec
{
  accessory = [(HMDAccessorySessionMetric *)self accessory];
  [accessory sessionCheckPeriod];
  v4 = v3;

  return v4;
}

- (id)attributeDescriptions
{
  v64[15] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = MEMORY[0x277CCABB0];
  [(HMDAccessorySessionMetric *)self submissionIntervalSec];
  v63 = [v4 numberWithDouble:?];
  v62 = [v3 initWithName:@"submissionInterval" value:v63];
  v64[0] = v62;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = MEMORY[0x277CCABB0];
  [(HMDAccessorySessionMetric *)self activeSessionDurationSec];
  v61 = [v6 numberWithDouble:?];
  v60 = [v5 initWithName:@"activeSessionDurationSec" value:v61];
  v64[1] = v60;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = MEMORY[0x277CCABB0];
  [(HMDAccessorySessionMetric *)self reachableDurationSec];
  v59 = [v8 numberWithDouble:?];
  v58 = [v7 initWithName:@"reachableDurationSec" value:v59];
  v64[2] = v58;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = MEMORY[0x277CCABB0];
  [(HMDAccessorySessionMetric *)self sessionCheckIntervalSec];
  v57 = [v10 numberWithDouble:?];
  v56 = [v9 initWithName:@"sessionCheckIntervalSec" value:v57];
  v64[3] = v56;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetric sessionFailures](self, "sessionFailures")}];
  v54 = [v11 initWithName:@"sessionFailures" value:v55];
  v64[4] = v54;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetric successfulSessionRetries](self, "successfulSessionRetries")}];
  v52 = [v12 initWithName:@"successfulSessionRetries" value:v53];
  v64[5] = v52;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  topError = [(HMDAccessorySessionMetric *)self topError];
  domain = [topError domain];
  v49 = [v13 initWithName:@"topErrorDomain" value:domain];
  v64[6] = v49;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = MEMORY[0x277CCABB0];
  topError2 = [(HMDAccessorySessionMetric *)self topError];
  v47 = [v15 numberWithInteger:{objc_msgSend(topError2, "code")}];
  v46 = [v14 initWithName:@"topErrorCode" value:v47];
  v64[7] = v46;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  v45 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetric isFromPrimary](self, "isFromPrimary")}];
  v44 = [v16 initWithName:@"isFromPrimary" value:v45];
  v64[8] = v44;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  v43 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetric isHomeThreadCapable](self, "isHomeThreadCapable")}];
  v42 = [v17 initWithName:@"isHomeThreadCapable" value:v43];
  v64[9] = v42;
  v18 = objc_alloc(MEMORY[0x277D0F778]);
  v41 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetric isPrimaryResidentThreadCapable](self, "isPrimaryResidentThreadCapable")}];
  v40 = [v18 initWithName:@"isPrimaryResidentThreadCapable" value:v41];
  v64[10] = v40;
  v19 = objc_alloc(MEMORY[0x277D0F778]);
  v39 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetric isThreadNetworkUp](self, "isThreadNetworkUp")}];
  v20 = [v19 initWithName:@"isThreadNetworkUp" value:v39];
  v64[11] = v20;
  v21 = objc_alloc(MEMORY[0x277D0F778]);
  v22 = MEMORY[0x277CCABB0];
  sessionInfo = [(HMDAccessorySessionMetric *)self sessionInfo];
  v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(sessionInfo, "numIPAddresses")}];
  v25 = [v21 initWithName:@"numIPAddressesResolved" value:v24];
  v64[12] = v25;
  v26 = objc_alloc(MEMORY[0x277D0F778]);
  v27 = MEMORY[0x277CCABB0];
  sessionInfo2 = [(HMDAccessorySessionMetric *)self sessionInfo];
  v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(sessionInfo2, "numIPAddressesTried")}];
  v30 = [v26 initWithName:@"numIPAddressesTried" value:v29];
  v64[13] = v30;
  v31 = objc_alloc(MEMORY[0x277D0F778]);
  v32 = MEMORY[0x277CCABB0];
  sessionInfo3 = [(HMDAccessorySessionMetric *)self sessionInfo];
  v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(sessionInfo3, "numBonjourNames")}];
  v35 = [v31 initWithName:@"numBonjourNamesSeen" value:v34];
  v64[14] = v35;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:15];

  v36 = *MEMORY[0x277D85DE8];

  return v38;
}

- (NSDictionary)state
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  accessory = [(HMDAccessorySessionMetric *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = accessory;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  manufacturer = [v6 manufacturer];
  [dictionary setObject:manufacturer forKeyedSubscript:@"Manufacturer"];

  model = [v6 model];
  [dictionary setObject:model forKeyedSubscript:@"Model"];

  firmwareVersion = [v6 firmwareVersion];
  shortVersionString = [firmwareVersion shortVersionString];
  [dictionary setObject:shortVersionString forKeyedSubscript:@"FirmwareVersion"];

  serialNumber = [v6 serialNumber];
  [dictionary setObject:serialNumber forKeyedSubscript:@"SerialNumber"];

  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v13 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDAccessorySessionMetricSubmissionInterval"];
  numberValue = [v13 numberValue];
  [dictionary setObject:numberValue forKeyedSubscript:@"submissionInterval"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetric hasActiveSession](self, "hasActiveSession")}];
  [dictionary setObject:v15 forKeyedSubscript:@"hasActiveSession"];

  v16 = MEMORY[0x277CCABB0];
  sessionStartTime = [(HMDAccessorySessionMetric *)self sessionStartTime];
  [sessionStartTime timeIntervalSinceNow];
  v19 = [v16 numberWithDouble:fabs(v18)];
  [dictionary setObject:v19 forKeyedSubscript:@"activeSessionDurationSec"];

  v20 = MEMORY[0x277CCABB0];
  reachableStartTime = [(HMDAccessorySessionMetric *)self reachableStartTime];
  [reachableStartTime timeIntervalSinceNow];
  v23 = [v20 numberWithDouble:fabs(v22)];
  [dictionary setObject:v23 forKeyedSubscript:@"reachableDurationSec"];

  v24 = MEMORY[0x277CCABB0];
  [(HMDAccessorySessionMetric *)self sessionCheckIntervalSec];
  v25 = [v24 numberWithDouble:?];
  [dictionary setObject:v25 forKeyedSubscript:@"sessionCheckIntervalSec"];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetric sessionFailures](self, "sessionFailures")}];
  [dictionary setObject:v26 forKeyedSubscript:@"sessionFailures"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetric successfulSessionRetries](self, "successfulSessionRetries")}];
  [dictionary setObject:v27 forKeyedSubscript:@"successfulSessionRetries"];

  errorCounts = [(HMDAccessorySessionMetric *)self errorCounts];
  v29 = [errorCounts description];
  [dictionary setObject:v29 forKeyedSubscript:@"sessionErrors"];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetric isFromPrimary](self, "isFromPrimary")}];
  [dictionary setObject:v30 forKeyedSubscript:@"isFromPrimary"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "numActiveSessionClients")}];
  [dictionary setObject:v31 forKeyedSubscript:@"numActiveClients"];

  currentActiveSessionRestoreClients = [v6 currentActiveSessionRestoreClients];
  [dictionary setObject:currentActiveSessionRestoreClients forKeyedSubscript:@"activeClients"];

  expectedTransport = [v6 expectedTransport];

  [dictionary setObject:expectedTransport forKeyedSubscript:@"expectedTransport"];
  accessoryTransport = [(HMDAccessorySessionMetric *)self accessoryTransport];
  [dictionary setObject:accessoryTransport forKeyedSubscript:@"currentTransport"];

  return dictionary;
}

- (HMDAccessorySessionMetric)initWithAccessory:(id)accessory workQueue:(id)queue hapSessionTTRTimer:(id)timer hapSessionTTRAllowList:(id)list radarInitiator:(id)initiator readWriteLogEventManager:(id)manager
{
  accessoryCopy = accessory;
  queueCopy = queue;
  timerCopy = timer;
  listCopy = list;
  initiatorCopy = initiator;
  managerCopy = manager;
  v38.receiver = self;
  v38.super_class = HMDAccessorySessionMetric;
  v20 = [(HMDAccessorySessionMetric *)&v38 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_accessory, accessoryCopy);
    objc_storeStrong(&v21->_workQueue, queue);
    date = [MEMORY[0x277CBEAA8] date];
    if ([accessoryCopy isReachable])
    {
      v21->_isReachable = 1;
      objc_storeStrong(&v21->_reachableStartTime, date);
    }

    if ([accessoryCopy hasActiveSession])
    {
      v21->_hasActiveSession = 1;
      objc_storeStrong(&v21->_sessionStartTime, date);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    errorCounts = v21->_errorCounts;
    v21->_errorCounts = dictionary;

    date2 = [MEMORY[0x277CBEAA8] date];
    metricCollectionStartTime = v21->_metricCollectionStartTime;
    v21->_metricCollectionStartTime = date2;

    v27 = [objc_alloc(MEMORY[0x277CFE998]) initWithNumIPs:0 numIPsTried:0 numBonjourNames:0 ipAddress:0 serviceName:0 resolveAttempted:0];
    sessionInfo = v21->_sessionInfo;
    v21->_sessionInfo = v27;

    [accessoryCopy linkLayerType];
    v29 = HAPLinkLayerTypeDescription();
    accessoryTransport = v21->_accessoryTransport;
    v21->_accessoryTransport = v29;

    expectedTransport = [accessoryCopy expectedTransport];
    expectedTransport = v21->_expectedTransport;
    v21->_expectedTransport = expectedTransport;

    if (initiatorCopy)
    {
      v33 = [listCopy copy];
      hapSessionTTRAllowList = v21->_hapSessionTTRAllowList;
      v21->_hapSessionTTRAllowList = v33;

      objc_storeWeak(&v21->_radarInitiator, initiatorCopy);
      objc_storeStrong(&v21->_hapSessionTTRTimer, timer);
      [(HMFTimer *)v21->_hapSessionTTRTimer setDelegateQueue:v21->_workQueue];
      [(HMFTimer *)v21->_hapSessionTTRTimer setDelegate:v21];
    }

    objc_storeStrong(&v21->_readWriteLogEventManager, manager);

    timerCopy = v36;
    queueCopy = v37;
  }

  return v21;
}

- (HMDAccessorySessionMetric)initWithAccessory:(id)accessory workQueue:(id)queue
{
  queueCopy = queue;
  accessoryCopy = accessory;
  v8 = +[HMDTTRManager sharedManager];
  if (v8)
  {
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v10 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HAPSessionTTRAllowList"];
    value = [v10 value];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = value;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:30.0];
  v15 = +[HMDCharacteristicReadWriteLogEventManager sharedInstance];
  v16 = [(HMDAccessorySessionMetric *)self initWithAccessory:accessoryCopy workQueue:queueCopy hapSessionTTRTimer:v14 hapSessionTTRAllowList:v13 radarInitiator:v8 readWriteLogEventManager:v15];

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20_230513 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20_230513, &__block_literal_global_103);
  }

  v3 = logCategory__hmf_once_v21_230514;

  return v3;
}

void __40__HMDAccessorySessionMetric_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v21_230514;
  logCategory__hmf_once_v21_230514 = v1;
}

@end