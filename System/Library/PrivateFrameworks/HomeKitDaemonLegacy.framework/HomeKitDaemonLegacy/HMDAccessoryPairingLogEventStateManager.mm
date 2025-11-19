@interface HMDAccessoryPairingLogEventStateManager
+ (HMDAccessoryPairingLogEventStateManager)sharedManager;
+ (id)logCategory;
- (BOOL)isConfigured;
- (HMDAccessoryPairingEvent)pairingEvent;
- (HMDAccessoryPairingLogEventStateManager)initWithNotificationCenter:(id)a3;
- (double)getTimeDurationForLongestProgressStateForAccessory:(id)a3;
- (double)getTimeDurationForProgressStateForIdentifier:(id)a3 state:(id)a4;
- (id)getLastProgressStateForAccessory:(id)a3;
- (id)getLongestProgressStateForAccessory:(id)a3;
- (unint64_t)retryCountForIdentifier:(id)a3;
- (void)_handleMatterAccessoryUpdatePairingMetricNotification:(id)a3 pairingEvent:(id)a4 logEventSubmitter:(id)a5;
- (void)_handlePairingStateProgressNotification:(id)a3;
- (void)_updateStateOnPairingProgress:(int64_t)a3;
- (void)clearPairingProgressStateTrackerForIdentifier:(id)a3;
- (void)clearRetryCountMap;
- (void)configureWithPairingEvent:(id)a3 workQueue:(id)a4 logEventSubmitter:(id)a5;
- (void)fillUnknownErrorIfMissingErrorForPairingEvent:(id)a3;
- (void)handleMatterAccessoryUpdatePairingMetricNotification:(id)a3;
- (void)incrementRetryCount:(id)a3;
- (void)resetStatesForNewAddOperation;
- (void)startProgressStateTrackerWithDate:(id)a3 identifier:(id)a4;
- (void)updateLastPairingProgressStateEventForIdentifier:(id)a3 withDate:(id)a4;
- (void)updatePairingProgressState:(id)a3;
- (void)updateStatesOnResult:(BOOL)a3;
@end

@implementation HMDAccessoryPairingLogEventStateManager

- (HMDAccessoryPairingEvent)pairingEvent
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingEvent);

  return WeakRetained;
}

- (void)resetStatesForNewAddOperation
{
  [(HMDAccessoryPairingLogEventStateManager *)self setPairingUIState:0];
  v3 = [(HMDAccessoryPairingLogEventStateManager *)self lastPairingEndTime];
  [v3 timeIntervalSinceNow];
  v5 = fabs(v4);

  if (v5 > 300.0)
  {

    [(HMDAccessoryPairingLogEventStateManager *)self setPreviousRecoveryType:0];
  }
}

- (double)getTimeDurationForProgressStateForIdentifier:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = 0.0;
  if (v7)
  {
    v9 = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
    v10 = [v9 objectForKey:v6];

    if (v10)
    {
      v11 = [v10 progressStateMap];
      v12 = [v11 objectForKey:v7];
      [v12 doubleValue];
      v8 = v13 * 1000.0;
    }
  }

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);

  return v8;
}

- (double)getTimeDurationForLongestProgressStateForAccessory:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    [v6 getTimeDurationForLongestProgressState];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);
  return v8;
}

- (id)getLastProgressStateForAccessory:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v6 progressStateMap];
      v15 = 138543874;
      v16 = v10;
      v17 = 2114;
      v18 = v4;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Final pairing progress state map before metric submission for identifier %{public}@ - %{public}@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [v6 lastProgressState];
  }

  else
  {
    v12 = 0;
  }

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)getLongestProgressStateForAccessory:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 longestProgressState];
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);

  return v7;
}

- (void)clearPairingProgressStateTrackerForIdentifier:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v5 = [v4 objectForKey:v7];

  if (v5)
  {
    v6 = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
    [v6 removeObjectForKey:v7];
  }

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);
}

- (void)updateLastPairingProgressStateEventForIdentifier:(id)a3 withDate:(id)a4
{
  v9 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v8 = [v7 objectForKey:v9];

  [v8 updateWithProgressState:0 date:v6];
  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);
}

- (void)_updateStateOnPairingProgress:(int64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3 > 47)
  {
    switch(a3)
    {
      case '0':
        v4 = 2;
        break;
      case '1':
        v4 = 3;
        break;
      case '2':
        v4 = 4;
        break;
      default:
        goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a3 == 2)
  {
    v5 = 1;
LABEL_13:
    [(HMDAccessoryPairingLogEventStateManager *)self setPairingUIState:v5];
    goto LABEL_16;
  }

  if (a3 == 3)
  {
    v5 = 2;
    goto LABEL_13;
  }

  if (a3 != 47)
  {
    goto LABEL_16;
  }

  v4 = 1;
LABEL_15:
  [(HMDAccessoryPairingLogEventStateManager *)self setRecoveryType:v4];
LABEL_16:
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HMDAccessoryPairingLogEventStateManager *)v7 pairingUIState];
    v11 = [(HMDAccessoryPairingLogEventStateManager *)v7 recoveryType];
    v12 = HMSetupAccessoryProgressAsString();
    v14 = 138544130;
    v15 = v9;
    v16 = 2048;
    v17 = v10;
    v18 = 2048;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updated Pairing UI state: %lu, recoveryType: %lu on progress: %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v6);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)updatePairingProgressState:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [v4 objectForKey:@"HMDAccessoryProgressStateNotificationKey"];
  v6 = [v4 objectForKey:@"HMDAccessoryProgressStateTimeNotificationKey"];
  v7 = [v4 objectForKey:@"HMDAccessoryProgressStateforAccessoryKey"];
  v8 = [v4 hmf_numberForKey:@"HMDSetupAccessoryProgressStateKey"];
  v9 = [v8 integerValue];

  [(HMDAccessoryPairingLogEventStateManager *)self _updateStateOnPairingProgress:v9];
  v10 = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v11 = [v10 objectForKey:v7];

  if (v11)
  {
    [v11 updateWithProgressState:v5 date:v6];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Attempting to update an uninitialized progress state map for %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)startProgressStateTrackerWithDate:(id)a3 identifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  [v7 removeObjectForKey:v6];

  v8 = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v9 = [[HMDAccessoryPairingProgressStateMap alloc] initWithDate:v10];
  [v8 setObject:v9 forKey:v6];

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);
}

- (void)_handlePairingStateProgressNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Received accessory pairing progress notification %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [v4 userInfo];
  [(HMDAccessoryPairingLogEventStateManager *)v6 updatePairingProgressState:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)incrementRetryCount:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Incrementing retry count for identifier %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAccessoryPairingLogEventStateManager *)v6 retryCountMap];
  v10 = [v9 objectForKeyedSubscript:v4];

  if (v10)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "intValue") + 1}];
    v12 = [(HMDAccessoryPairingLogEventStateManager *)v6 retryCountMap];
    [v12 setObject:v11 forKeyedSubscript:v4];
  }

  else
  {
    v11 = [(HMDAccessoryPairingLogEventStateManager *)v6 retryCountMap];
    [v11 setObject:&unk_286628B10 forKeyedSubscript:v4];
  }

  os_unfair_lock_unlock(&self->_accessoryPairingRetryMapLock);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateStatesOnResult:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    if (![(HMDAccessoryPairingLogEventStateManager *)self recoveryType])
    {
      goto LABEL_6;
    }

    v5 = [(HMDAccessoryPairingLogEventStateManager *)self recoveryType];
  }

  [(HMDAccessoryPairingLogEventStateManager *)self setPreviousRecoveryType:v5];
LABEL_6:
  [(HMDAccessoryPairingLogEventStateManager *)self setRecoveryType:0];
  v6 = [MEMORY[0x277CBEAA8] date];
  [(HMDAccessoryPairingLogEventStateManager *)self setLastPairingEndTime:v6];

  os_unfair_lock_unlock(&self->_accessoryPairingRetryMapLock);
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2048;
    v15 = [(HMDAccessoryPairingLogEventStateManager *)v8 previousRecoveryType];
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Updated previous recoveryType to: %lu", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)clearRetryCountMap
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMDAccessoryPairingLogEventStateManager *)self retryCountMap];
  [v3 removeAllObjects];

  os_unfair_lock_unlock(&self->_accessoryPairingRetryMapLock);
}

- (unint64_t)retryCountForIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDAccessoryPairingLogEventStateManager *)self retryCountMap];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v6 unsignedIntegerValue];

  os_unfair_lock_unlock(&self->_accessoryPairingRetryMapLock);
  return v7;
}

- (void)fillUnknownErrorIfMissingErrorForPairingEvent:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 matterAccessoryPairingStep];
  v6 = [v4 error];

  if (v5 != 27 && !v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Filling unknown error before submission because pairing event is missing error", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x277CCA9B8] hmdErrorWithCode:1];
    [v4 setError:v11];

    [v4 setMatterAccessorySourceErrorDomain:@"HMDErrorDomain"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleMatterAccessoryUpdatePairingMetricNotification:(id)a3 pairingEvent:(id)a4 logEventSubmitter:(id)a5
{
  v159 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock_with_options();
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v8 name];
    *buf = 138543618;
    v150 = v14;
    v151 = 2112;
    v152 = v15;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (!v9)
  {
    v16 = objc_autoreleasePoolPush();
    v20 = v12;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v150 = v21;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Not updating pairing metric because pairing event is nil", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if (([v9 isMatterAccessory] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v22 = v12;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v150 = v23;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Not updating pairing metric because pairing event is not for matter accessory", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if (([v9 isAddOperation] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v24 = v12;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v150 = v25;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Not updating pairing metric because pairing event is not add operation", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if ([v9 isSubmitted])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v12;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v150 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Not updating pairing metric because pairing event is already submitted", buf, 0xCu);
    }

LABEL_15:

    objc_autoreleasePoolPop(v16);
    goto LABEL_16;
  }

  if ([v9 isSubmitting])
  {
    v16 = objc_autoreleasePoolPush();
    v27 = v12;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v150 = v28;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Not updating pairing metric because pairing event is already being submitted", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v29 = [v9 error];

  v30 = [v9 matterAccessoryPairingStep];
  if (v29 || v30 == 27)
  {
    context = objc_autoreleasePoolPush();
    v31 = v12;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      v34 = HMDMatterAccessoryPairingStepAsString([v9 matterAccessoryPairingStep]);
      v35 = [v9 error];
      *buf = 138543874;
      v150 = v33;
      v151 = 2112;
      v152 = v34;
      v153 = 2112;
      v154 = v35;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Received update to pairing event when metric is completed already %@ %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(context);
  }

  v36 = [v8 userInfo];
  v138 = [v36 objectForKeyedSubscript:@"HMDMatterAccessoryPairingMTRMetricsKey"];

  if (v138)
  {
    v37 = objc_autoreleasePoolPush();
    v38 = v12;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      v41 = [v9 mtrMetrics];
      *buf = 138543874;
      v150 = v40;
      v151 = 2048;
      v152 = v41;
      v153 = 2048;
      v154 = v138;
      _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Updating mtr metrics %p -> %p", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v37);
    [v9 setMtrMetrics:v138];
  }

  v42 = [v8 userInfo];
  v148 = 0;
  v139 = [v42 hmf_integerForKey:@"HMDMatterAccessoryPairingStepKey" error:&v148];
  v131 = v148;

  v43 = [v8 userInfo];
  v147 = 0;
  v126 = [v43 hmf_BOOLForKey:@"HMDMatterAccessoryPairingAccessoryDiscoveredKey" error:&v147];
  v130 = v147;

  v44 = [v8 userInfo];
  v137 = [v44 hmf_numberForKey:@"HMDMatterAccessoryMatterVendorIDKey"];

  v45 = [v8 userInfo];
  v136 = [v45 hmf_numberForKey:@"HMDMatterAccessoryMatterProductIDKey"];

  v46 = [v8 userInfo];
  v135 = [v46 hmf_numberForKey:@"HMDMatterAccessoryMatterDeviceTypeKey"];

  v47 = [v8 userInfo];
  v134 = [v47 hmf_numberForKey:@"HMDMatterAccessoryThreadCapabilitiesKey"];

  v48 = [v8 userInfo];
  v133 = [v48 hmf_numberForKey:@"HMDMatterAccessoryIsWEDAccessoryKey"];

  v49 = [v8 userInfo];
  contexta = [v49 hmf_numberForKey:@"HMDAccessoryPairingSupportedLinkLayerTypesKey"];

  v50 = [v8 userInfo];
  v132 = [v50 hmf_numberForKey:@"HMDMatterAccessoryUnauthenticatedPromptStartStopKey"];

  if (!v131)
  {
    v123 = objc_autoreleasePoolPush();
    v51 = v12;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = HMFGetLogIdentifier();
      v54 = HMDMatterAccessoryPairingStepAsString([v9 matterAccessoryPairingStep]);
      v55 = HMDMatterAccessoryPairingStepAsString(v139);
      *buf = 138543874;
      v150 = v53;
      v151 = 2112;
      v152 = v54;
      v153 = 2112;
      v154 = v55;
      _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_INFO, "%{public}@Updating step %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v123);
    [v9 setMatterAccessoryPairingStep:v139];
  }

  if (!v130)
  {
    v140 = objc_autoreleasePoolPush();
    v56 = v12;
    v57 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      v58 = HMFGetLogIdentifier();
      [v9 matterAccessoryDiscovered];
      v59 = HMFBooleanToString();
      v60 = HMFBooleanToString();
      *buf = 138543874;
      v150 = v58;
      v151 = 2112;
      v152 = v59;
      v153 = 2112;
      v154 = v60;
      _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_INFO, "%{public}@Updating matter accessory discovered %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v140);
    [v9 setMatterAccessoryDiscovered:v126];
  }

  if (v137)
  {
    v61 = objc_autoreleasePoolPush();
    v62 = v12;
    v63 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = HMFGetLogIdentifier();
      v65 = [v9 matterVendorID];
      *buf = 138543874;
      v150 = v64;
      v151 = 2112;
      v152 = v65;
      v153 = 2112;
      v154 = v137;
      _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_INFO, "%{public}@Updating Matter vendorID %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v61);
    [v9 setMatterVendorID:v137];
  }

  if (v136)
  {
    v66 = objc_autoreleasePoolPush();
    v67 = v12;
    v68 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      v69 = HMFGetLogIdentifier();
      v70 = [v9 matterProductID];
      *buf = 138543874;
      v150 = v69;
      v151 = 2112;
      v152 = v70;
      v153 = 2112;
      v154 = v136;
      _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_INFO, "%{public}@Updating Matter productID %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v66);
    [v9 setMatterProductID:v136];
  }

  if (v135)
  {
    v71 = objc_autoreleasePoolPush();
    v72 = v12;
    v73 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      v74 = HMFGetLogIdentifier();
      v75 = [v9 matterDeviceType];
      *buf = 138543874;
      v150 = v74;
      v151 = 2112;
      v152 = v75;
      v153 = 2112;
      v154 = v135;
      _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Updating Matter device type %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v71);
    [v9 setMatterDeviceType:v135];
  }

  if (contexta)
  {
    v76 = [contexta unsignedIntegerValue];
    v141 = objc_autoreleasePoolPush();
    v77 = v12;
    v78 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
    {
      v79 = HMFGetLogIdentifier();
      v80 = [v9 supportedLinkLayerTypes];
      *buf = 138543874;
      v150 = v79;
      v151 = 2112;
      v152 = v80;
      v153 = 2112;
      v154 = contexta;
      _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_INFO, "%{public}@Updating supported link layer types %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v141);
    v127 = objc_autoreleasePoolPush();
    v81 = v77;
    HMFGetOSLogHandle();
    v82 = v142 = (v76 & 0x12);
    if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
    {
      v83 = HMFGetLogIdentifier();
      [v9 isThreadAccessory];
      v84 = HMFBooleanToString();
      v85 = HMFBooleanToString();
      *buf = 138543874;
      v150 = v83;
      v151 = 2112;
      v152 = v84;
      v153 = 2112;
      v154 = v85;
      _os_log_impl(&dword_2531F8000, v82, OS_LOG_TYPE_INFO, "%{public}@Updating isThreadAccessory %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v127);
    [v9 setSupportedLinkLayerTypes:contexta];
    [v9 setThreadAccessory:v142 == 16];
  }

  if (v134)
  {
    v86 = objc_autoreleasePoolPush();
    v87 = v12;
    v88 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      v89 = HMFGetLogIdentifier();
      v90 = [v9 matterThreadCapabilities];
      *buf = 138543874;
      v150 = v89;
      v151 = 2112;
      v152 = v90;
      v153 = 2112;
      v154 = v134;
      _os_log_impl(&dword_2531F8000, v88, OS_LOG_TYPE_INFO, "%{public}@Updating Matter Thread capabilities %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v86);
    [v9 setMatterThreadCapabilities:v134];
  }

  if (v133)
  {
    v143 = objc_autoreleasePoolPush();
    v91 = v12;
    v92 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
    {
      v128 = HMFGetLogIdentifier();
      v93 = [v9 wedAccessory];
      [v9 wedAccessory];
      if (v93)
        v124 = {;
        [v124 BOOLValue];
        v94 = HMFBooleanToString();
      }

      else
        v94 = {;
        v124 = v94;
      }

      [v133 BOOLValue];
      v95 = HMFBooleanToString();
      *buf = 138543874;
      v150 = v128;
      v151 = 2112;
      v152 = v94;
      v153 = 2112;
      v154 = v95;
      _os_log_impl(&dword_2531F8000, v92, OS_LOG_TYPE_INFO, "%{public}@Updating isWEDAccessory %@ -> %@", buf, 0x20u);
      if (v93)
      {
      }
    }

    objc_autoreleasePoolPop(v143);
    [v9 setWedAccessory:v133];
  }

  if (v132)
  {
    v96 = [v132 isEqualToNumber:MEMORY[0x277CBEC38]];
    v97 = objc_autoreleasePoolPush();
    v98 = v12;
    if (v96)
    {
      v99 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
      {
        v100 = HMFGetLogIdentifier();
        *buf = 138543362;
        v150 = v100;
        _os_log_impl(&dword_2531F8000, v99, OS_LOG_TYPE_INFO, "%{public}@Updating unauthenticated Matter accessory prompt start time", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v97);
      [v9 handleUnauthenticatedMatterAccessoryPromptStart];
    }

    else
    {
      v101 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
      {
        v102 = HMFGetLogIdentifier();
        *buf = 138543362;
        v150 = v102;
        _os_log_impl(&dword_2531F8000, v101, OS_LOG_TYPE_INFO, "%{public}@Updating unauthenticated Matter accessory prompt duration", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v97);
      [v9 handleUnauthenticatedMatterAccessoryPromptEnd];
    }
  }

  v103 = [v8 userInfo];
  v144 = [v103 hmf_errorForKey:@"HMDMatterAccessoryPairingFailureErrorKey"];

  if (v144)
  {
    v104 = [v8 userInfo];
    v129 = [v104 hmf_stringForKey:@"HMDMatterAccessoryPairingSourceErrorDomain"];

    if (!v129)
    {
      v105 = objc_autoreleasePoolPush();
      v106 = v12;
      v107 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        v108 = HMFGetLogIdentifier();
        *buf = 138543362;
        v150 = v108;
        _os_log_impl(&dword_2531F8000, v107, OS_LOG_TYPE_ERROR, "%{public}@Received pairing error without source error domain", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v105);
    }

    v109 = MEMORY[0x277CCA9B8];
    v110 = [v144 domain];
    v125 = [v109 errorWithDomain:v110 code:objc_msgSend(v144 userInfo:{"code"), 0}];

    v122 = objc_autoreleasePoolPush();
    v111 = v12;
    v112 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
    {
      v113 = HMFGetLogIdentifier();
      v114 = [v9 error];
      v115 = [v9 matterAccessorySourceErrorDomain];
      *buf = 138544386;
      v150 = v113;
      v151 = 2112;
      v152 = v114;
      v153 = 2112;
      v154 = v125;
      v155 = 2112;
      v156 = v115;
      v157 = 2112;
      v158 = v129;
      _os_log_impl(&dword_2531F8000, v112, OS_LOG_TYPE_INFO, "%{public}@Updating error %@ -> %@, sourceErrorDomain %@ -> %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v122);
    [v9 setError:v125];
    [v9 setMatterAccessorySourceErrorDomain:v129];
  }

  v116 = [v8 userInfo];
  v117 = [v116 hmf_BOOLForKey:@"HMDMatterAccessoryPairingSubmitKey"];

  if (v117)
  {
    [(HMDAccessoryPairingLogEventStateManager *)v12 fillUnknownErrorIfMissingErrorForPairingEvent:v9];
    v118 = objc_autoreleasePoolPush();
    v119 = v12;
    v120 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
    {
      v121 = HMFGetLogIdentifier();
      *buf = 138543618;
      v150 = v121;
      v151 = 2112;
      v152 = v9;
      _os_log_impl(&dword_2531F8000, v120, OS_LOG_TYPE_INFO, "%{public}@Submitting Event %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v118);
    [v9 setSubmitting:1];
    [v10 submitLogEvent:v9];
  }

LABEL_16:
  os_unfair_lock_unlock(&self->_matterAccessoryPairingMetricLock);

  v26 = *MEMORY[0x277D85DE8];
}

- (void)handleMatterAccessoryUpdatePairingMetricNotification:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryPairingLogEventStateManager *)self isConfigured];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 name];
      v12 = [(HMDAccessoryPairingLogEventStateManager *)v7 pairingEvent];
      *buf = 138543874;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling %@ %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v13 = [(HMDAccessoryPairingLogEventStateManager *)v7 pairingEvent];
    v14 = [(HMDAccessoryPairingLogEventStateManager *)v7 logEventSubmitter];
    v15 = [(HMDAccessoryPairingLogEventStateManager *)v7 workQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __96__HMDAccessoryPairingLogEventStateManager_handleMatterAccessoryUpdatePairingMetricNotification___block_invoke;
    v21[3] = &unk_279734870;
    v21[4] = v7;
    v22 = v4;
    v23 = v13;
    v24 = v14;
    v16 = v14;
    v17 = v13;
    dispatch_async(v15, v21);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v4 name];
      *buf = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Not handling %@ logEventStateManager is not configured", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)isConfigured
{
  v3 = [(HMDAccessoryPairingLogEventStateManager *)self pairingEvent];
  if (v3)
  {
    v4 = [(HMDAccessoryPairingLogEventStateManager *)self workQueue];
    if (v4)
    {
      v5 = [(HMDAccessoryPairingLogEventStateManager *)self logEventSubmitter];
      v6 = v5 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)configureWithPairingEvent:(id)a3 workQueue:(id)a4 logEventSubmitter:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [(HMDAccessoryPairingLogEventStateManager *)v12 workQueue];
    v16 = [(HMDAccessoryPairingLogEventStateManager *)v12 logEventSubmitter];
    v18 = 138544386;
    v19 = v14;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = v16;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Configuring with workQueue %@ logEventSubmitter %@, from workQueue %@ logEventSubmitter %@", &v18, 0x34u);
  }

  objc_autoreleasePoolPop(v11);
  [(HMDAccessoryPairingLogEventStateManager *)v12 setPairingEvent:v8];
  [(HMDAccessoryPairingLogEventStateManager *)v12 setWorkQueue:v9];
  [(HMDAccessoryPairingLogEventStateManager *)v12 setLogEventSubmitter:v10];

  v17 = *MEMORY[0x277D85DE8];
}

- (HMDAccessoryPairingLogEventStateManager)initWithNotificationCenter:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = HMDAccessoryPairingLogEventStateManager;
  v6 = [(HMDAccessoryPairingLogEventStateManager *)&v14 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    retryCountMap = v6->_retryCountMap;
    v6->_retryCountMap = v7;

    v9 = [MEMORY[0x277CBEB38] dictionary];
    pairingProgressStateTracker = v6->_pairingProgressStateTracker;
    v6->_pairingProgressStateTracker = v9;

    v6->_pairingUIState = 0;
    v6->_recoveryType = 0;
    v6->_previousRecoveryType = 0;
    v11 = [MEMORY[0x277CBEAA8] distantPast];
    lastPairingEndTime = v6->_lastPairingEndTime;
    v6->_lastPairingEndTime = v11;

    objc_storeStrong(&v6->_notificationCenter, a3);
    [(NSNotificationCenter *)v6->_notificationCenter addObserver:v6 selector:sel_handleMatterAccessoryUpdatePairingMetricNotification_ name:@"HMDMatterAccessoryUpdatePairingMetricNotification" object:0];
    [(NSNotificationCenter *)v6->_notificationCenter addObserver:v6 selector:sel__handlePairingStateProgressNotification_ name:@"HMDAccessoryProgressStateUpdateNotification" object:0];
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t58 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t58, &__block_literal_global_101987);
  }

  v3 = logCategory__hmf_once_v59;

  return v3;
}

uint64_t __54__HMDAccessoryPairingLogEventStateManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v59;
  logCategory__hmf_once_v59 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (HMDAccessoryPairingLogEventStateManager)sharedManager
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDAccessoryPairingLogEventStateManager_sharedManager__block_invoke;
  block[3] = &unk_279735D00;
  v9 = v2;
  v3 = sharedManager__hmf_once_t11;
  v4 = v2;
  if (v3 != -1)
  {
    dispatch_once(&sharedManager__hmf_once_t11, block);
  }

  v5 = sharedManager__hmf_once_v12;
  v6 = sharedManager__hmf_once_v12;

  return v5;
}

uint64_t __56__HMDAccessoryPairingLogEventStateManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = [[HMDAccessoryPairingLogEventStateManager alloc] initWithNotificationCenter:*(a1 + 32)];
  v2 = sharedManager__hmf_once_v12;
  sharedManager__hmf_once_v12 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end