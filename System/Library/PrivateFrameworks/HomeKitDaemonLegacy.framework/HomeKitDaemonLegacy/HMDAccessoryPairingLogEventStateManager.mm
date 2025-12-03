@interface HMDAccessoryPairingLogEventStateManager
+ (HMDAccessoryPairingLogEventStateManager)sharedManager;
+ (id)logCategory;
- (BOOL)isConfigured;
- (HMDAccessoryPairingEvent)pairingEvent;
- (HMDAccessoryPairingLogEventStateManager)initWithNotificationCenter:(id)center;
- (double)getTimeDurationForLongestProgressStateForAccessory:(id)accessory;
- (double)getTimeDurationForProgressStateForIdentifier:(id)identifier state:(id)state;
- (id)getLastProgressStateForAccessory:(id)accessory;
- (id)getLongestProgressStateForAccessory:(id)accessory;
- (unint64_t)retryCountForIdentifier:(id)identifier;
- (void)_handleMatterAccessoryUpdatePairingMetricNotification:(id)notification pairingEvent:(id)event logEventSubmitter:(id)submitter;
- (void)_handlePairingStateProgressNotification:(id)notification;
- (void)_updateStateOnPairingProgress:(int64_t)progress;
- (void)clearPairingProgressStateTrackerForIdentifier:(id)identifier;
- (void)clearRetryCountMap;
- (void)configureWithPairingEvent:(id)event workQueue:(id)queue logEventSubmitter:(id)submitter;
- (void)fillUnknownErrorIfMissingErrorForPairingEvent:(id)event;
- (void)handleMatterAccessoryUpdatePairingMetricNotification:(id)notification;
- (void)incrementRetryCount:(id)count;
- (void)resetStatesForNewAddOperation;
- (void)startProgressStateTrackerWithDate:(id)date identifier:(id)identifier;
- (void)updateLastPairingProgressStateEventForIdentifier:(id)identifier withDate:(id)date;
- (void)updatePairingProgressState:(id)state;
- (void)updateStatesOnResult:(BOOL)result;
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
  lastPairingEndTime = [(HMDAccessoryPairingLogEventStateManager *)self lastPairingEndTime];
  [lastPairingEndTime timeIntervalSinceNow];
  v5 = fabs(v4);

  if (v5 > 300.0)
  {

    [(HMDAccessoryPairingLogEventStateManager *)self setPreviousRecoveryType:0];
  }
}

- (double)getTimeDurationForProgressStateForIdentifier:(id)identifier state:(id)state
{
  identifierCopy = identifier;
  stateCopy = state;
  os_unfair_lock_lock_with_options();
  v8 = 0.0;
  if (stateCopy)
  {
    pairingProgressStateTracker = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
    v10 = [pairingProgressStateTracker objectForKey:identifierCopy];

    if (v10)
    {
      progressStateMap = [v10 progressStateMap];
      v12 = [progressStateMap objectForKey:stateCopy];
      [v12 doubleValue];
      v8 = v13 * 1000.0;
    }
  }

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);

  return v8;
}

- (double)getTimeDurationForLongestProgressStateForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  pairingProgressStateTracker = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v6 = [pairingProgressStateTracker objectForKey:accessoryCopy];

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

- (id)getLastProgressStateForAccessory:(id)accessory
{
  v21 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  pairingProgressStateTracker = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v6 = [pairingProgressStateTracker objectForKey:accessoryCopy];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      progressStateMap = [v6 progressStateMap];
      v15 = 138543874;
      v16 = v10;
      v17 = 2114;
      v18 = accessoryCopy;
      v19 = 2114;
      v20 = progressStateMap;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Final pairing progress state map before metric submission for identifier %{public}@ - %{public}@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    lastProgressState = [v6 lastProgressState];
  }

  else
  {
    lastProgressState = 0;
  }

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);
  v13 = *MEMORY[0x277D85DE8];

  return lastProgressState;
}

- (id)getLongestProgressStateForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  pairingProgressStateTracker = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v6 = [pairingProgressStateTracker objectForKey:accessoryCopy];

  if (v6)
  {
    longestProgressState = [v6 longestProgressState];
  }

  else
  {
    longestProgressState = 0;
  }

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);

  return longestProgressState;
}

- (void)clearPairingProgressStateTrackerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  pairingProgressStateTracker = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v5 = [pairingProgressStateTracker objectForKey:identifierCopy];

  if (v5)
  {
    pairingProgressStateTracker2 = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
    [pairingProgressStateTracker2 removeObjectForKey:identifierCopy];
  }

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);
}

- (void)updateLastPairingProgressStateEventForIdentifier:(id)identifier withDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  os_unfair_lock_lock_with_options();
  pairingProgressStateTracker = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v8 = [pairingProgressStateTracker objectForKey:identifierCopy];

  [v8 updateWithProgressState:0 date:dateCopy];
  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);
}

- (void)_updateStateOnPairingProgress:(int64_t)progress
{
  v22 = *MEMORY[0x277D85DE8];
  if (progress > 47)
  {
    switch(progress)
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

  if (progress == 2)
  {
    v5 = 1;
LABEL_13:
    [(HMDAccessoryPairingLogEventStateManager *)self setPairingUIState:v5];
    goto LABEL_16;
  }

  if (progress == 3)
  {
    v5 = 2;
    goto LABEL_13;
  }

  if (progress != 47)
  {
    goto LABEL_16;
  }

  v4 = 1;
LABEL_15:
  [(HMDAccessoryPairingLogEventStateManager *)self setRecoveryType:v4];
LABEL_16:
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    pairingUIState = [(HMDAccessoryPairingLogEventStateManager *)selfCopy pairingUIState];
    recoveryType = [(HMDAccessoryPairingLogEventStateManager *)selfCopy recoveryType];
    v12 = HMSetupAccessoryProgressAsString();
    v14 = 138544130;
    v15 = v9;
    v16 = 2048;
    v17 = pairingUIState;
    v18 = 2048;
    v19 = recoveryType;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updated Pairing UI state: %lu, recoveryType: %lu on progress: %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v6);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)updatePairingProgressState:(id)state
{
  v21 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  os_unfair_lock_lock_with_options();
  v5 = [stateCopy objectForKey:@"HMDAccessoryProgressStateNotificationKey"];
  v6 = [stateCopy objectForKey:@"HMDAccessoryProgressStateTimeNotificationKey"];
  v7 = [stateCopy objectForKey:@"HMDAccessoryProgressStateforAccessoryKey"];
  v8 = [stateCopy hmf_numberForKey:@"HMDSetupAccessoryProgressStateKey"];
  integerValue = [v8 integerValue];

  [(HMDAccessoryPairingLogEventStateManager *)self _updateStateOnPairingProgress:integerValue];
  pairingProgressStateTracker = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v11 = [pairingProgressStateTracker objectForKey:v7];

  if (v11)
  {
    [v11 updateWithProgressState:v5 date:v6];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)startProgressStateTrackerWithDate:(id)date identifier:(id)identifier
{
  dateCopy = date;
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  pairingProgressStateTracker = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  [pairingProgressStateTracker removeObjectForKey:identifierCopy];

  pairingProgressStateTracker2 = [(HMDAccessoryPairingLogEventStateManager *)self pairingProgressStateTracker];
  v9 = [[HMDAccessoryPairingProgressStateMap alloc] initWithDate:dateCopy];
  [pairingProgressStateTracker2 setObject:v9 forKey:identifierCopy];

  os_unfair_lock_unlock(&self->_accessoryPairingProgressStateTrackerLock);
}

- (void)_handlePairingStateProgressNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    name = [notificationCopy name];
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = name;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Received accessory pairing progress notification %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  userInfo = [notificationCopy userInfo];
  [(HMDAccessoryPairingLogEventStateManager *)selfCopy updatePairingProgressState:userInfo];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)incrementRetryCount:(id)count
{
  v18 = *MEMORY[0x277D85DE8];
  countCopy = count;
  os_unfair_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = countCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Incrementing retry count for identifier %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  retryCountMap = [(HMDAccessoryPairingLogEventStateManager *)selfCopy retryCountMap];
  v10 = [retryCountMap objectForKeyedSubscript:countCopy];

  if (v10)
  {
    retryCountMap3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "intValue") + 1}];
    retryCountMap2 = [(HMDAccessoryPairingLogEventStateManager *)selfCopy retryCountMap];
    [retryCountMap2 setObject:retryCountMap3 forKeyedSubscript:countCopy];
  }

  else
  {
    retryCountMap3 = [(HMDAccessoryPairingLogEventStateManager *)selfCopy retryCountMap];
    [retryCountMap3 setObject:&unk_286628B10 forKeyedSubscript:countCopy];
  }

  os_unfair_lock_unlock(&self->_accessoryPairingRetryMapLock);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateStatesOnResult:(BOOL)result
{
  resultCopy = result;
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (resultCopy)
  {
    recoveryType = 0;
  }

  else
  {
    if (![(HMDAccessoryPairingLogEventStateManager *)self recoveryType])
    {
      goto LABEL_6;
    }

    recoveryType = [(HMDAccessoryPairingLogEventStateManager *)self recoveryType];
  }

  [(HMDAccessoryPairingLogEventStateManager *)self setPreviousRecoveryType:recoveryType];
LABEL_6:
  [(HMDAccessoryPairingLogEventStateManager *)self setRecoveryType:0];
  date = [MEMORY[0x277CBEAA8] date];
  [(HMDAccessoryPairingLogEventStateManager *)self setLastPairingEndTime:date];

  os_unfair_lock_unlock(&self->_accessoryPairingRetryMapLock);
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2048;
    previousRecoveryType = [(HMDAccessoryPairingLogEventStateManager *)selfCopy previousRecoveryType];
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Updated previous recoveryType to: %lu", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)clearRetryCountMap
{
  os_unfair_lock_lock_with_options();
  retryCountMap = [(HMDAccessoryPairingLogEventStateManager *)self retryCountMap];
  [retryCountMap removeAllObjects];

  os_unfair_lock_unlock(&self->_accessoryPairingRetryMapLock);
}

- (unint64_t)retryCountForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  retryCountMap = [(HMDAccessoryPairingLogEventStateManager *)self retryCountMap];
  v6 = [retryCountMap objectForKeyedSubscript:identifierCopy];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  os_unfair_lock_unlock(&self->_accessoryPairingRetryMapLock);
  return unsignedIntegerValue;
}

- (void)fillUnknownErrorIfMissingErrorForPairingEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  matterAccessoryPairingStep = [eventCopy matterAccessoryPairingStep];
  error = [eventCopy error];

  if (matterAccessoryPairingStep != 27 && !error)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    [eventCopy setError:v11];

    [eventCopy setMatterAccessorySourceErrorDomain:@"HMDErrorDomain"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleMatterAccessoryUpdatePairingMetricNotification:(id)notification pairingEvent:(id)event logEventSubmitter:(id)submitter
{
  v159 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  eventCopy = event;
  submitterCopy = submitter;
  os_unfair_lock_lock_with_options();
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    name = [notificationCopy name];
    *buf = 138543618;
    v150 = v14;
    v151 = 2112;
    v152 = name;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (!eventCopy)
  {
    v16 = objc_autoreleasePoolPush();
    v20 = selfCopy;
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

  if (([eventCopy isMatterAccessory] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v22 = selfCopy;
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

  if (([eventCopy isAddOperation] & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v24 = selfCopy;
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

  if ([eventCopy isSubmitted])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
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

  if ([eventCopy isSubmitting])
  {
    v16 = objc_autoreleasePoolPush();
    v27 = selfCopy;
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

  error = [eventCopy error];

  matterAccessoryPairingStep = [eventCopy matterAccessoryPairingStep];
  if (error || matterAccessoryPairingStep == 27)
  {
    context = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      v34 = HMDMatterAccessoryPairingStepAsString([eventCopy matterAccessoryPairingStep]);
      error2 = [eventCopy error];
      *buf = 138543874;
      v150 = v33;
      v151 = 2112;
      v152 = v34;
      v153 = 2112;
      v154 = error2;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Received update to pairing event when metric is completed already %@ %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(context);
  }

  userInfo = [notificationCopy userInfo];
  v138 = [userInfo objectForKeyedSubscript:@"HMDMatterAccessoryPairingMTRMetricsKey"];

  if (v138)
  {
    v37 = objc_autoreleasePoolPush();
    v38 = selfCopy;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      mtrMetrics = [eventCopy mtrMetrics];
      *buf = 138543874;
      v150 = v40;
      v151 = 2048;
      v152 = mtrMetrics;
      v153 = 2048;
      v154 = v138;
      _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Updating mtr metrics %p -> %p", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v37);
    [eventCopy setMtrMetrics:v138];
  }

  userInfo2 = [notificationCopy userInfo];
  v148 = 0;
  v139 = [userInfo2 hmf_integerForKey:@"HMDMatterAccessoryPairingStepKey" error:&v148];
  v131 = v148;

  userInfo3 = [notificationCopy userInfo];
  v147 = 0;
  v126 = [userInfo3 hmf_BOOLForKey:@"HMDMatterAccessoryPairingAccessoryDiscoveredKey" error:&v147];
  v130 = v147;

  userInfo4 = [notificationCopy userInfo];
  v137 = [userInfo4 hmf_numberForKey:@"HMDMatterAccessoryMatterVendorIDKey"];

  userInfo5 = [notificationCopy userInfo];
  v136 = [userInfo5 hmf_numberForKey:@"HMDMatterAccessoryMatterProductIDKey"];

  userInfo6 = [notificationCopy userInfo];
  v135 = [userInfo6 hmf_numberForKey:@"HMDMatterAccessoryMatterDeviceTypeKey"];

  userInfo7 = [notificationCopy userInfo];
  v134 = [userInfo7 hmf_numberForKey:@"HMDMatterAccessoryThreadCapabilitiesKey"];

  userInfo8 = [notificationCopy userInfo];
  v133 = [userInfo8 hmf_numberForKey:@"HMDMatterAccessoryIsWEDAccessoryKey"];

  userInfo9 = [notificationCopy userInfo];
  contexta = [userInfo9 hmf_numberForKey:@"HMDAccessoryPairingSupportedLinkLayerTypesKey"];

  userInfo10 = [notificationCopy userInfo];
  v132 = [userInfo10 hmf_numberForKey:@"HMDMatterAccessoryUnauthenticatedPromptStartStopKey"];

  if (!v131)
  {
    v123 = objc_autoreleasePoolPush();
    v51 = selfCopy;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = HMFGetLogIdentifier();
      v54 = HMDMatterAccessoryPairingStepAsString([eventCopy matterAccessoryPairingStep]);
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
    [eventCopy setMatterAccessoryPairingStep:v139];
  }

  if (!v130)
  {
    v140 = objc_autoreleasePoolPush();
    v56 = selfCopy;
    v57 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      v58 = HMFGetLogIdentifier();
      [eventCopy matterAccessoryDiscovered];
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
    [eventCopy setMatterAccessoryDiscovered:v126];
  }

  if (v137)
  {
    v61 = objc_autoreleasePoolPush();
    v62 = selfCopy;
    v63 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = HMFGetLogIdentifier();
      matterVendorID = [eventCopy matterVendorID];
      *buf = 138543874;
      v150 = v64;
      v151 = 2112;
      v152 = matterVendorID;
      v153 = 2112;
      v154 = v137;
      _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_INFO, "%{public}@Updating Matter vendorID %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v61);
    [eventCopy setMatterVendorID:v137];
  }

  if (v136)
  {
    v66 = objc_autoreleasePoolPush();
    v67 = selfCopy;
    v68 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      v69 = HMFGetLogIdentifier();
      matterProductID = [eventCopy matterProductID];
      *buf = 138543874;
      v150 = v69;
      v151 = 2112;
      v152 = matterProductID;
      v153 = 2112;
      v154 = v136;
      _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_INFO, "%{public}@Updating Matter productID %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v66);
    [eventCopy setMatterProductID:v136];
  }

  if (v135)
  {
    v71 = objc_autoreleasePoolPush();
    v72 = selfCopy;
    v73 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      v74 = HMFGetLogIdentifier();
      matterDeviceType = [eventCopy matterDeviceType];
      *buf = 138543874;
      v150 = v74;
      v151 = 2112;
      v152 = matterDeviceType;
      v153 = 2112;
      v154 = v135;
      _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Updating Matter device type %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v71);
    [eventCopy setMatterDeviceType:v135];
  }

  if (contexta)
  {
    unsignedIntegerValue = [contexta unsignedIntegerValue];
    v141 = objc_autoreleasePoolPush();
    v77 = selfCopy;
    v78 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
    {
      v79 = HMFGetLogIdentifier();
      supportedLinkLayerTypes = [eventCopy supportedLinkLayerTypes];
      *buf = 138543874;
      v150 = v79;
      v151 = 2112;
      v152 = supportedLinkLayerTypes;
      v153 = 2112;
      v154 = contexta;
      _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_INFO, "%{public}@Updating supported link layer types %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v141);
    v127 = objc_autoreleasePoolPush();
    v81 = v77;
    HMFGetOSLogHandle();
    v82 = v142 = (unsignedIntegerValue & 0x12);
    if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
    {
      v83 = HMFGetLogIdentifier();
      [eventCopy isThreadAccessory];
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
    [eventCopy setSupportedLinkLayerTypes:contexta];
    [eventCopy setThreadAccessory:v142 == 16];
  }

  if (v134)
  {
    v86 = objc_autoreleasePoolPush();
    v87 = selfCopy;
    v88 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      v89 = HMFGetLogIdentifier();
      matterThreadCapabilities = [eventCopy matterThreadCapabilities];
      *buf = 138543874;
      v150 = v89;
      v151 = 2112;
      v152 = matterThreadCapabilities;
      v153 = 2112;
      v154 = v134;
      _os_log_impl(&dword_2531F8000, v88, OS_LOG_TYPE_INFO, "%{public}@Updating Matter Thread capabilities %@ -> %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v86);
    [eventCopy setMatterThreadCapabilities:v134];
  }

  if (v133)
  {
    v143 = objc_autoreleasePoolPush();
    v91 = selfCopy;
    v92 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
    {
      v128 = HMFGetLogIdentifier();
      wedAccessory = [eventCopy wedAccessory];
      [eventCopy wedAccessory];
      if (wedAccessory)
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
      if (wedAccessory)
      {
      }
    }

    objc_autoreleasePoolPop(v143);
    [eventCopy setWedAccessory:v133];
  }

  if (v132)
  {
    v96 = [v132 isEqualToNumber:MEMORY[0x277CBEC38]];
    v97 = objc_autoreleasePoolPush();
    v98 = selfCopy;
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
      [eventCopy handleUnauthenticatedMatterAccessoryPromptStart];
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
      [eventCopy handleUnauthenticatedMatterAccessoryPromptEnd];
    }
  }

  userInfo11 = [notificationCopy userInfo];
  v144 = [userInfo11 hmf_errorForKey:@"HMDMatterAccessoryPairingFailureErrorKey"];

  if (v144)
  {
    userInfo12 = [notificationCopy userInfo];
    v129 = [userInfo12 hmf_stringForKey:@"HMDMatterAccessoryPairingSourceErrorDomain"];

    if (!v129)
    {
      v105 = objc_autoreleasePoolPush();
      v106 = selfCopy;
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
    domain = [v144 domain];
    v125 = [v109 errorWithDomain:domain code:objc_msgSend(v144 userInfo:{"code"), 0}];

    v122 = objc_autoreleasePoolPush();
    v111 = selfCopy;
    v112 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
    {
      v113 = HMFGetLogIdentifier();
      error3 = [eventCopy error];
      matterAccessorySourceErrorDomain = [eventCopy matterAccessorySourceErrorDomain];
      *buf = 138544386;
      v150 = v113;
      v151 = 2112;
      v152 = error3;
      v153 = 2112;
      v154 = v125;
      v155 = 2112;
      v156 = matterAccessorySourceErrorDomain;
      v157 = 2112;
      v158 = v129;
      _os_log_impl(&dword_2531F8000, v112, OS_LOG_TYPE_INFO, "%{public}@Updating error %@ -> %@, sourceErrorDomain %@ -> %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v122);
    [eventCopy setError:v125];
    [eventCopy setMatterAccessorySourceErrorDomain:v129];
  }

  userInfo13 = [notificationCopy userInfo];
  v117 = [userInfo13 hmf_BOOLForKey:@"HMDMatterAccessoryPairingSubmitKey"];

  if (v117)
  {
    [(HMDAccessoryPairingLogEventStateManager *)selfCopy fillUnknownErrorIfMissingErrorForPairingEvent:eventCopy];
    v118 = objc_autoreleasePoolPush();
    v119 = selfCopy;
    v120 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
    {
      v121 = HMFGetLogIdentifier();
      *buf = 138543618;
      v150 = v121;
      v151 = 2112;
      v152 = eventCopy;
      _os_log_impl(&dword_2531F8000, v120, OS_LOG_TYPE_INFO, "%{public}@Submitting Event %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v118);
    [eventCopy setSubmitting:1];
    [submitterCopy submitLogEvent:eventCopy];
  }

LABEL_16:
  os_unfair_lock_unlock(&self->_matterAccessoryPairingMetricLock);

  v26 = *MEMORY[0x277D85DE8];
}

- (void)handleMatterAccessoryUpdatePairingMetricNotification:(id)notification
{
  v31 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  isConfigured = [(HMDAccessoryPairingLogEventStateManager *)self isConfigured];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (isConfigured)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      name = [notificationCopy name];
      pairingEvent = [(HMDAccessoryPairingLogEventStateManager *)selfCopy pairingEvent];
      *buf = 138543874;
      v26 = v10;
      v27 = 2112;
      v28 = name;
      v29 = 2112;
      v30 = pairingEvent;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling %@ %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    pairingEvent2 = [(HMDAccessoryPairingLogEventStateManager *)selfCopy pairingEvent];
    logEventSubmitter = [(HMDAccessoryPairingLogEventStateManager *)selfCopy logEventSubmitter];
    workQueue = [(HMDAccessoryPairingLogEventStateManager *)selfCopy workQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __96__HMDAccessoryPairingLogEventStateManager_handleMatterAccessoryUpdatePairingMetricNotification___block_invoke;
    v21[3] = &unk_279734870;
    v21[4] = selfCopy;
    v22 = notificationCopy;
    v23 = pairingEvent2;
    v24 = logEventSubmitter;
    v16 = logEventSubmitter;
    v17 = pairingEvent2;
    dispatch_async(workQueue, v21);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      name2 = [notificationCopy name];
      *buf = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = name2;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Not handling %@ logEventStateManager is not configured", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)isConfigured
{
  pairingEvent = [(HMDAccessoryPairingLogEventStateManager *)self pairingEvent];
  if (pairingEvent)
  {
    workQueue = [(HMDAccessoryPairingLogEventStateManager *)self workQueue];
    if (workQueue)
    {
      logEventSubmitter = [(HMDAccessoryPairingLogEventStateManager *)self logEventSubmitter];
      v6 = logEventSubmitter != 0;
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

- (void)configureWithPairingEvent:(id)event workQueue:(id)queue logEventSubmitter:(id)submitter
{
  v28 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  queueCopy = queue;
  submitterCopy = submitter;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    workQueue = [(HMDAccessoryPairingLogEventStateManager *)selfCopy workQueue];
    logEventSubmitter = [(HMDAccessoryPairingLogEventStateManager *)selfCopy logEventSubmitter];
    v18 = 138544386;
    v19 = v14;
    v20 = 2112;
    v21 = queueCopy;
    v22 = 2112;
    v23 = submitterCopy;
    v24 = 2112;
    v25 = workQueue;
    v26 = 2112;
    v27 = logEventSubmitter;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Configuring with workQueue %@ logEventSubmitter %@, from workQueue %@ logEventSubmitter %@", &v18, 0x34u);
  }

  objc_autoreleasePoolPop(v11);
  [(HMDAccessoryPairingLogEventStateManager *)selfCopy setPairingEvent:eventCopy];
  [(HMDAccessoryPairingLogEventStateManager *)selfCopy setWorkQueue:queueCopy];
  [(HMDAccessoryPairingLogEventStateManager *)selfCopy setLogEventSubmitter:submitterCopy];

  v17 = *MEMORY[0x277D85DE8];
}

- (HMDAccessoryPairingLogEventStateManager)initWithNotificationCenter:(id)center
{
  centerCopy = center;
  v14.receiver = self;
  v14.super_class = HMDAccessoryPairingLogEventStateManager;
  v6 = [(HMDAccessoryPairingLogEventStateManager *)&v14 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    retryCountMap = v6->_retryCountMap;
    v6->_retryCountMap = v7;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pairingProgressStateTracker = v6->_pairingProgressStateTracker;
    v6->_pairingProgressStateTracker = dictionary;

    v6->_pairingUIState = 0;
    v6->_recoveryType = 0;
    v6->_previousRecoveryType = 0;
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    lastPairingEndTime = v6->_lastPairingEndTime;
    v6->_lastPairingEndTime = distantPast;

    objc_storeStrong(&v6->_notificationCenter, center);
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDAccessoryPairingLogEventStateManager_sharedManager__block_invoke;
  block[3] = &unk_279735D00;
  v9 = defaultCenter;
  v3 = sharedManager__hmf_once_t11;
  v4 = defaultCenter;
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