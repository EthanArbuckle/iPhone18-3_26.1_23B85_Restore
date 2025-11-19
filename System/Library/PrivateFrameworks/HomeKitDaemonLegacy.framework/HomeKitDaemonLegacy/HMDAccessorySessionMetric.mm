@interface HMDAccessorySessionMetric
+ (id)logCategory;
- (BOOL)isCurrentPrimaryResident;
- (BOOL)isHomeThreadCapable;
- (BOOL)isPrimaryResidentThreadCapable;
- (BOOL)isThreadNetworkUp;
- (HMDAccessorySessionMetric)initWithAccessory:(id)a3 workQueue:(id)a4;
- (HMDAccessorySessionMetric)initWithAccessory:(id)a3 workQueue:(id)a4 hapSessionTTRTimer:(id)a5 hapSessionTTRAllowList:(id)a6 radarInitiator:(id)a7 readWriteLogEventManager:(id)a8;
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
- (void)timerDidFire:(id)a3;
- (void)updateReachableState:(BOOL)a3;
- (void)updateSessionState:(BOOL)a3 linkLayerType:(int64_t)a4 sessionInfo:(id)a5 bookkeeping:(id)a6 withError:(id)a7;
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
  v2 = [(HMDAccessorySessionMetric *)self accessory];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 name];
  v5 = [v2 identifier];
  v6 = [v3 stringWithFormat:@"%@/%@", v4, v5];

  return v6;
}

- (void)timerDidFire:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySessionMetric *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessorySessionMetric *)self hapSessionTTRTimer];

  if (v6 == v4)
  {
    v7 = [(HMDAccessorySessionMetric *)self accessory];
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        v13 = [v7 shortDescription];
        *buf = 138543618;
        v22 = v12;
        v23 = 2114;
        v24 = v13;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@HAP session TTR timer fired. Initiating radar for allowed accessory: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v14 = [(HMDAccessorySessionMetric *)v9 radarInitiator];
      v15 = MEMORY[0x277CCACA8];
      v16 = [v7 manufacturer];
      v17 = [v7 model];
      v18 = [v15 stringWithFormat:@"Lost connection with Accessory: %@ Model: %@", v16, v17];
      [v14 requestRadarWithDisplayReason:@"a HAP session failure was detected" radarTitle:v18];
    }

    else
    {
      if (v11)
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v22 = v19;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory reference is nil when handling HAP session TTR timer", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateReachableState:(BOOL)a3
{
  v5 = [(HMDAccessorySessionMetric *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__HMDAccessorySessionMetric_updateReachableState___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
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
          _os_log_impl(&dword_2531F8000, v14, v15, v13, &v33, 0x16u);

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
        _os_log_impl(&dword_2531F8000, v30, v31, v29, &v33, 0x16u);
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
  v3 = [(HMDAccessorySessionMetric *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [(HMDAccessorySessionMetric *)v5 accessory];
    v9 = [v8 shortDescription];
    v14 = 138543618;
    v15 = v7;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Resetting session metric - accessory: %{public}@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [MEMORY[0x277CBEAA8] date];
  [(HMDAccessorySessionMetric *)v5 setReachableStartTime:0];
  [(HMDAccessorySessionMetric *)v5 setSessionStartTime:0];
  v11 = [(HMDAccessorySessionMetric *)v5 errorCounts];
  [v11 removeAllObjects];

  [(HMDAccessorySessionMetric *)v5 setMetricCollectionStartTime:v10];
  [(HMDAccessorySessionMetric *)v5 setActiveSessionDurationSec:0.0];
  [(HMDAccessorySessionMetric *)v5 setReachableDurationSec:0.0];
  [(HMDAccessorySessionMetric *)v5 setSessionFailures:0];
  [(HMDAccessorySessionMetric *)v5 setSuccessfulSessionRetries:0];
  if ([(HMDAccessorySessionMetric *)v5 isReachable])
  {
    [(HMDAccessorySessionMetric *)v5 setReachableStartTime:v10];
  }

  if ([(HMDAccessorySessionMetric *)v5 hasActiveSession])
  {
    [(HMDAccessorySessionMetric *)v5 setSessionStartTime:v10];
  }

  v12 = [(HMDAccessorySessionMetric *)v5 sessionInfo];
  [v12 resetWithNumIPs:0 numIPsTried:0 numBonjourNames:0 ipAddress:0 serviceName:0 resolveAttempted:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)resetSessionMetric
{
  v3 = [(HMDAccessorySessionMetric *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDAccessorySessionMetric_resetSessionMetric__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_submitMetric
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessorySessionMetric *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessorySessionMetric *)self metricCollectionStartTime];
  [v4 timeIntervalSinceNow];
  [(HMDAccessorySessionMetric *)self setSubmissionIntervalSec:fabs(v5)];

  v6 = [(HMDAccessorySessionMetric *)self sessionStartTime];

  if (v6)
  {
    v7 = [(HMDAccessorySessionMetric *)self sessionStartTime];
    [v7 timeIntervalSinceNow];
    v9 = fabs(v8);
    [(HMDAccessorySessionMetric *)self activeSessionDurationSec];
    [(HMDAccessorySessionMetric *)self setActiveSessionDurationSec:v10 + v9];
  }

  v11 = [(HMDAccessorySessionMetric *)self reachableStartTime];

  if (v11)
  {
    v12 = [(HMDAccessorySessionMetric *)self reachableStartTime];
    [v12 timeIntervalSinceNow];
    v14 = fabs(v13);
    [(HMDAccessorySessionMetric *)self reachableDurationSec];
    [(HMDAccessorySessionMetric *)self setReachableDurationSec:v15 + v14];
  }

  v16 = [(HMDAccessorySessionMetric *)self accessory];
  v17 = [[HMDAccessorySessionMetricEvent alloc] initWithAccessory:v16 sessionMetric:self];
  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [v16 name];
    v23 = [v16 identifier];
    v24 = [(HMDAccessorySessionMetricEvent *)v17 coreAnalyticsEventDictionary];
    v37 = 138544130;
    v38 = v21;
    v39 = 2112;
    v40 = v22;
    v41 = 2114;
    v42 = v23;
    v43 = 2114;
    v44 = v24;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Submitting SessionMetric for accessory: %@/%{public}@ - %{public}@", &v37, 0x2Au);
  }

  objc_autoreleasePoolPop(v18);
  v25 = [(HMDAccessorySessionMetric *)v19 expectedTransport];
  if ([v25 isEqualToString:@"BLE"])
  {
  }

  else
  {
    [(HMDAccessorySessionMetric *)v19 submissionIntervalSec];
    v27 = v26;

    if (v27 >= 3600.0)
    {
      v34 = [v16 home];
      v35 = [v34 logEventSubmitter];
      [v35 submitLogEvent:v17];

      goto LABEL_14;
    }
  }

  v28 = objc_autoreleasePoolPush();
  v29 = v19;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    v32 = [v16 name];
    v33 = [v16 identifier];
    v37 = 138543874;
    v38 = v31;
    v39 = 2112;
    v40 = v32;
    v41 = 2114;
    v42 = v33;
    _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Skipped Submitting SessionMetric for %@/%{public}@", &v37, 0x20u);
  }

  objc_autoreleasePoolPop(v28);
LABEL_14:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)submitMetric
{
  v3 = [(HMDAccessorySessionMetric *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDAccessorySessionMetric_submitMetric__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)updateSessionState:(BOOL)a3 linkLayerType:(int64_t)a4 sessionInfo:(id)a5 bookkeeping:(id)a6 withError:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(HMDAccessorySessionMetric *)self workQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __96__HMDAccessorySessionMetric_updateSessionState_linkLayerType_sessionInfo_bookkeeping_withError___block_invoke;
  v19[3] = &unk_279735CD8;
  v24 = a3;
  v22 = v14;
  v23 = a4;
  v19[4] = self;
  v20 = v12;
  v21 = v13;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(v15, v19);
}

- (NSError)topError
{
  v2 = [(HMDAccessorySessionMetric *)self errorCounts];
  v3 = [v2 copy];

  v4 = [v3 keysSortedByValueUsingComparator:&__block_literal_global_195134];
  v5 = [v4 firstObject];

  return v5;
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
  v2 = [(HMDAccessorySessionMetric *)self accessory];
  v3 = [v2 home];
  v4 = [v3 primaryResident];
  v5 = [v4 capabilities];
  v6 = [v5 supportsThreadBorderRouter];

  return v6;
}

- (BOOL)isThreadNetworkUp
{
  v2 = [(HMDAccessorySessionMetric *)self accessory];
  v3 = [v2 home];
  v4 = [v3 isThreadNetworkUp];

  return v4;
}

- (BOOL)isHomeThreadCapable
{
  v2 = [(HMDAccessorySessionMetric *)self accessory];
  v3 = [v2 home];
  v4 = [v3 isThreadCapable];

  return v4;
}

- (BOOL)isCurrentPrimaryResident
{
  v2 = [(HMDAccessorySessionMetric *)self accessory];
  v3 = [v2 home];
  v4 = [v3 isCurrentDevicePrimaryResident];

  return v4;
}

- (double)sessionCheckIntervalSec
{
  v2 = [(HMDAccessorySessionMetric *)self accessory];
  [v2 sessionCheckPeriod];
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
  v51 = [(HMDAccessorySessionMetric *)self topError];
  v50 = [v51 domain];
  v49 = [v13 initWithName:@"topErrorDomain" value:v50];
  v64[6] = v49;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = MEMORY[0x277CCABB0];
  v48 = [(HMDAccessorySessionMetric *)self topError];
  v47 = [v15 numberWithInteger:{objc_msgSend(v48, "code")}];
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
  v23 = [(HMDAccessorySessionMetric *)self sessionInfo];
  v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(v23, "numIPAddresses")}];
  v25 = [v21 initWithName:@"numIPAddressesResolved" value:v24];
  v64[12] = v25;
  v26 = objc_alloc(MEMORY[0x277D0F778]);
  v27 = MEMORY[0x277CCABB0];
  v28 = [(HMDAccessorySessionMetric *)self sessionInfo];
  v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(v28, "numIPAddressesTried")}];
  v30 = [v26 initWithName:@"numIPAddressesTried" value:v29];
  v64[13] = v30;
  v31 = objc_alloc(MEMORY[0x277D0F778]);
  v32 = MEMORY[0x277CCABB0];
  v33 = [(HMDAccessorySessionMetric *)self sessionInfo];
  v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(v33, "numBonjourNames")}];
  v35 = [v31 initWithName:@"numBonjourNamesSeen" value:v34];
  v64[14] = v35;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:15];

  v36 = *MEMORY[0x277D85DE8];

  return v38;
}

- (NSDictionary)state
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDAccessorySessionMetric *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 manufacturer];
  [v3 setObject:v7 forKeyedSubscript:@"Manufacturer"];

  v8 = [v6 model];
  [v3 setObject:v8 forKeyedSubscript:@"Model"];

  v9 = [v6 firmwareVersion];
  v10 = [v9 shortVersionString];
  [v3 setObject:v10 forKeyedSubscript:@"FirmwareVersion"];

  v11 = [v6 serialNumber];
  [v3 setObject:v11 forKeyedSubscript:@"SerialNumber"];

  v12 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v13 = [v12 preferenceForKey:@"HMDAccessorySessionMetricSubmissionInterval"];
  v14 = [v13 numberValue];
  [v3 setObject:v14 forKeyedSubscript:@"submissionInterval"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetric hasActiveSession](self, "hasActiveSession")}];
  [v3 setObject:v15 forKeyedSubscript:@"hasActiveSession"];

  v16 = MEMORY[0x277CCABB0];
  v17 = [(HMDAccessorySessionMetric *)self sessionStartTime];
  [v17 timeIntervalSinceNow];
  v19 = [v16 numberWithDouble:fabs(v18)];
  [v3 setObject:v19 forKeyedSubscript:@"activeSessionDurationSec"];

  v20 = MEMORY[0x277CCABB0];
  v21 = [(HMDAccessorySessionMetric *)self reachableStartTime];
  [v21 timeIntervalSinceNow];
  v23 = [v20 numberWithDouble:fabs(v22)];
  [v3 setObject:v23 forKeyedSubscript:@"reachableDurationSec"];

  v24 = MEMORY[0x277CCABB0];
  [(HMDAccessorySessionMetric *)self sessionCheckIntervalSec];
  v25 = [v24 numberWithDouble:?];
  [v3 setObject:v25 forKeyedSubscript:@"sessionCheckIntervalSec"];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetric sessionFailures](self, "sessionFailures")}];
  [v3 setObject:v26 forKeyedSubscript:@"sessionFailures"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySessionMetric successfulSessionRetries](self, "successfulSessionRetries")}];
  [v3 setObject:v27 forKeyedSubscript:@"successfulSessionRetries"];

  v28 = [(HMDAccessorySessionMetric *)self errorCounts];
  v29 = [v28 description];
  [v3 setObject:v29 forKeyedSubscript:@"sessionErrors"];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySessionMetric isFromPrimary](self, "isFromPrimary")}];
  [v3 setObject:v30 forKeyedSubscript:@"isFromPrimary"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "numActiveSessionClients")}];
  [v3 setObject:v31 forKeyedSubscript:@"numActiveClients"];

  v32 = [v6 currentActiveSessionRestoreClients];
  [v3 setObject:v32 forKeyedSubscript:@"activeClients"];

  v33 = [v6 expectedTransport];

  [v3 setObject:v33 forKeyedSubscript:@"expectedTransport"];
  v34 = [(HMDAccessorySessionMetric *)self accessoryTransport];
  [v3 setObject:v34 forKeyedSubscript:@"currentTransport"];

  return v3;
}

- (HMDAccessorySessionMetric)initWithAccessory:(id)a3 workQueue:(id)a4 hapSessionTTRTimer:(id)a5 hapSessionTTRAllowList:(id)a6 radarInitiator:(id)a7 readWriteLogEventManager:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v38.receiver = self;
  v38.super_class = HMDAccessorySessionMetric;
  v20 = [(HMDAccessorySessionMetric *)&v38 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_accessory, v14);
    objc_storeStrong(&v21->_workQueue, a4);
    v22 = [MEMORY[0x277CBEAA8] date];
    if ([v14 isReachable])
    {
      v21->_isReachable = 1;
      objc_storeStrong(&v21->_reachableStartTime, v22);
    }

    if ([v14 hasActiveSession])
    {
      v21->_hasActiveSession = 1;
      objc_storeStrong(&v21->_sessionStartTime, v22);
    }

    v23 = [MEMORY[0x277CBEB38] dictionary];
    errorCounts = v21->_errorCounts;
    v21->_errorCounts = v23;

    v25 = [MEMORY[0x277CBEAA8] date];
    metricCollectionStartTime = v21->_metricCollectionStartTime;
    v21->_metricCollectionStartTime = v25;

    v27 = [objc_alloc(MEMORY[0x277CFE998]) initWithNumIPs:0 numIPsTried:0 numBonjourNames:0 ipAddress:0 serviceName:0 resolveAttempted:0];
    sessionInfo = v21->_sessionInfo;
    v21->_sessionInfo = v27;

    [v14 linkLayerType];
    v29 = HAPLinkLayerTypeDescription();
    accessoryTransport = v21->_accessoryTransport;
    v21->_accessoryTransport = v29;

    v31 = [v14 expectedTransport];
    expectedTransport = v21->_expectedTransport;
    v21->_expectedTransport = v31;

    if (v18)
    {
      v33 = [v17 copy];
      hapSessionTTRAllowList = v21->_hapSessionTTRAllowList;
      v21->_hapSessionTTRAllowList = v33;

      objc_storeWeak(&v21->_radarInitiator, v18);
      objc_storeStrong(&v21->_hapSessionTTRTimer, a5);
      [(HMFTimer *)v21->_hapSessionTTRTimer setDelegateQueue:v21->_workQueue];
      [(HMFTimer *)v21->_hapSessionTTRTimer setDelegate:v21];
    }

    objc_storeStrong(&v21->_readWriteLogEventManager, a8);

    v16 = v36;
    v15 = v37;
  }

  return v21;
}

- (HMDAccessorySessionMetric)initWithAccessory:(id)a3 workQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HMDTTRManager sharedManager];
  if (v8)
  {
    v9 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v10 = [v9 preferenceForKey:@"HAPSessionTTRAllowList"];
    v11 = [v10 value];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
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
  v16 = [(HMDAccessorySessionMetric *)self initWithAccessory:v7 workQueue:v6 hapSessionTTRTimer:v14 hapSessionTTRAllowList:v13 radarInitiator:v8 readWriteLogEventManager:v15];

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20_195220 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20_195220, &__block_literal_global_103_195221);
  }

  v3 = logCategory__hmf_once_v21_195222;

  return v3;
}

uint64_t __40__HMDAccessorySessionMetric_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v21_195222;
  logCategory__hmf_once_v21_195222 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end