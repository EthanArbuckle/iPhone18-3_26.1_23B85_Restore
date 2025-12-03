@interface HMDAccessoryFirmwareUpdateScheduler
+ (id)logCategory;
- (BOOL)isIdle;
- (BOOL)isStagingInProgress;
- (BOOL)needsToScheduleApply;
- (BOOL)needsToScheduleRegister;
- (BOOL)needsToScheduleStaging;
- (BOOL)needsToStop;
- (HMDAccessoryFirmwareUpdateProfile)updateProfile;
- (HMDAccessoryFirmwareUpdateScheduler)initWithAccessory:(id)accessory firmwareUpdateSession:(id)session wingman:(id)wingman workQueue:(id)queue;
- (HMDAccessoryFirmwareUpdateSession)updateSession;
- (HMDHAPAccessory)accessory;
- (NSString)description;
- (id)logIdentifier;
- (id)privateDescription;
- (void)_createUpdatePolicy;
- (void)_defer;
- (void)_handleSchedulingConditionChanged;
- (void)_invalidateExistingScheduling;
- (void)_logDebugStates:(const char *)states;
- (void)_registerForNotifications;
- (void)_removeUpdatePolicy;
- (void)_scheduleCurrentTask;
- (void)_scheduleCurrentTaskBackgroundRun;
- (void)_startDeferCheckTimer;
- (void)_startTaskInitialDelayTimer;
- (void)_stop;
- (void)_stopDeferCheckTimer;
- (void)_stopInitialDelayTimer;
- (void)_taskCanRunInCurrentDevice:(id)device;
- (void)dealloc;
- (void)handleAccessoryReachabilityChanged:(id)changed;
- (void)handleApplyNotReadyReasonsChanged:(id)changed;
- (void)handleBridgeUpdate:(id)update;
- (void)handlePolicyStatusChange:(id)change;
- (void)handlePrimaryResidentChanged:(id)changed;
- (void)handleStagingNotReadyReasonsChanged:(id)changed;
- (void)handleUpdateStateChanged:(id)changed;
- (void)removeUpdatePolicy;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDAccessoryFirmwareUpdateScheduler

- (HMDAccessoryFirmwareUpdateSession)updateSession
{
  WeakRetained = objc_loadWeakRetained(&self->_updateSession);

  return WeakRetained;
}

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)handleBridgeUpdate:(id)update
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDAccessoryFirmwareUpdateScheduler_handleBridgeUpdate___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __58__HMDAccessoryFirmwareUpdateScheduler_handleBridgeUpdate___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) updateSession];
  v3 = [v2 sessionState];

  if (v3 == 2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Bridge update received; rescheduling...", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _removeUpdatePolicy];
    [*(a1 + 32) scheduleWithDelay:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_removeUpdatePolicy
{
  updatePolicy = [(HMDAccessoryFirmwareUpdateScheduler *)self updatePolicy];

  if (updatePolicy)
  {
    wingman = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    notificationCenter = [wingman notificationCenter];
    [notificationCenter removeObserver:self name:@"HMDAccessoryFirmwareUpdatePolicyStatusChangedNotification" object:0];

    [(HMDAccessoryFirmwareUpdateScheduler *)self setUpdatePolicy:0];
  }
}

- (void)_createUpdatePolicy
{
  [(HMDAccessoryFirmwareUpdateScheduler *)self _removeUpdatePolicy];
  wingman = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
  accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  updateSession = [(HMDAccessoryFirmwareUpdateScheduler *)self updateSession];
  sessionState = [updateSession sessionState];
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  v8 = [wingman policyForAccessory:accessory sessionState:sessionState workQueue:workQueue];
  [(HMDAccessoryFirmwareUpdateScheduler *)self setUpdatePolicy:v8];

  updatePolicy = [(HMDAccessoryFirmwareUpdateScheduler *)self updatePolicy];

  if (updatePolicy)
  {
    wingman2 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    notificationCenter = [wingman2 notificationCenter];
    updatePolicy2 = [(HMDAccessoryFirmwareUpdateScheduler *)self updatePolicy];
    [notificationCenter addObserver:self selector:sel_handlePolicyStatusChange_ name:@"HMDAccessoryFirmwareUpdatePolicyStatusChangedNotification" object:updatePolicy2];
  }
}

- (void)handlePolicyStatusChange:(id)change
{
  changeCopy = change;
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDAccessoryFirmwareUpdateScheduler_handlePolicyStatusChange___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(workQueue, v7);
}

void __64__HMDAccessoryFirmwareUpdateScheduler_handlePolicyStatusChange___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  [v2 hmf_BOOLForKey:@"HMDAccessoryFirmwareUpdatePolicyStatusChangedKey"];

  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = HMFBooleanToString();
    v8 = [*(a1 + 40) updateSession];
    v9 = [v8 sessionState];
    if ((v9 - 1) > 2)
    {
      v10 = @"Up-To-Date";
    }

    else
    {
      v10 = off_27972C5C0[v9 - 1];
    }

    v11 = v10;
    v15 = 138543874;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Policy status - %@, Session State - %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v12 = [*(a1 + 40) updateSession];
  if ([v12 sessionState] == 2)
  {
    v13 = [*(a1 + 40) currentState];

    if (!v13)
    {
      [*(a1 + 40) scheduleWithDelay:0];
    }
  }

  else
  {
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeUpdatePolicy
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDAccessoryFirmwareUpdateScheduler_removeUpdatePolicy__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)timerDidFire:(id)fire
{
  v18 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  initialDelayTimer = [(HMDAccessoryFirmwareUpdateScheduler *)self initialDelayTimer];

  if (initialDelayTimer == fireCopy)
  {
    [(HMDAccessoryFirmwareUpdateScheduler *)self _scheduleCurrentTaskBackgroundRun];
  }

  else
  {
    deferCheckTimer = [(HMDAccessoryFirmwareUpdateScheduler *)self deferCheckTimer];
    v8 = deferCheckTimer;
    if (deferCheckTimer == fireCopy)
    {
      backgroundScheduler = [(HMDAccessoryFirmwareUpdateScheduler *)self backgroundScheduler];
      shouldDefer = [backgroundScheduler shouldDefer];

      if (shouldDefer)
      {
        v11 = objc_autoreleasePoolPush();
        selfCopy = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          v16 = 138543362;
          v17 = v14;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@System condition is no longer conducive to running scheduled task", &v16, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
        [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy _defer];
      }
    }

    else
    {
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_stopInitialDelayTimer
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  initialDelayTimer = [(HMDAccessoryFirmwareUpdateScheduler *)self initialDelayTimer];
  [initialDelayTimer cancel];

  [(HMDAccessoryFirmwareUpdateScheduler *)self setInitialDelayTimer:0];
}

- (void)_startTaskInitialDelayTimer
{
  v21 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    currentTask = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy currentTask];
    v17 = 138543618;
    v18 = v7;
    v19 = 2112;
    v20 = currentTask;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting initial delay timer for task %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  wingman = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy wingman];
  currentTask2 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy currentTask];
  [currentTask2 initialDelay];
  v11 = [wingman newInitialDelayTimerWithDelay:1 options:?];
  [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy setInitialDelayTimer:v11];

  initialDelayTimer = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy initialDelayTimer];
  [initialDelayTimer setDelegate:selfCopy];

  workQueue2 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy workQueue];
  initialDelayTimer2 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy initialDelayTimer];
  [initialDelayTimer2 setDelegateQueue:workQueue2];

  initialDelayTimer3 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy initialDelayTimer];
  [initialDelayTimer3 resume];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_stopDeferCheckTimer
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  deferCheckTimer = [(HMDAccessoryFirmwareUpdateScheduler *)self deferCheckTimer];
  [deferCheckTimer cancel];

  [(HMDAccessoryFirmwareUpdateScheduler *)self setDeferCheckTimer:0];
}

- (void)_startDeferCheckTimer
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:5 options:10000.0];
  [(HMDAccessoryFirmwareUpdateScheduler *)self setDeferCheckTimer:v4];

  deferCheckTimer = [(HMDAccessoryFirmwareUpdateScheduler *)self deferCheckTimer];
  [deferCheckTimer setDelegate:self];

  workQueue2 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  deferCheckTimer2 = [(HMDAccessoryFirmwareUpdateScheduler *)self deferCheckTimer];
  [deferCheckTimer2 setDelegateQueue:workQueue2];

  deferCheckTimer3 = [(HMDAccessoryFirmwareUpdateScheduler *)self deferCheckTimer];
  [deferCheckTimer3 resume];
}

- (void)_logDebugStates:(const char *)states
{
  v50 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  updateProfile = [(HMDAccessoryFirmwareUpdateScheduler *)self updateProfile];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v35 = updateProfile;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v32 = HMFGetLogIdentifier();
    statesCopy = states;
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:states];
    [updateProfile stagingNotReadyReasons];
    v11 = HAPStagingNotReadyReasonsAsString();
    [updateProfile updateNotReadyReasons];
    v12 = HAPUpdateNotReadyReasonsAsString();
    [updateProfile updateState];
    v13 = HAPFirmwareUpdateStateAsString();
    updateSession = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy updateSession];
    sessionState = [updateSession sessionState];
    if ((sessionState - 1) > 2)
    {
      v16 = @"Up-To-Date";
    }

    else
    {
      v16 = off_27972C5C0[sessionState - 1];
    }

    v17 = v16;
    currentState = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy currentState];
    if ((currentState - 1) > 2)
    {
      v19 = @"Idle";
    }

    else
    {
      v19 = off_279728448[currentState - 1];
    }

    *buf = 138544898;
    v37 = v32;
    v38 = 2112;
    v39 = v10;
    v40 = 2114;
    v41 = v11;
    v42 = 2114;
    v43 = v12;
    v44 = 2112;
    v45 = v13;
    v46 = 2112;
    v47 = v17;
    v48 = 2112;
    v49 = v19;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@%@: Staging Not Ready Reasons = %{public}@, Apply Not Ready Reasons = %{public}@, Accessory State = %@, Session State = %@, Scheduler State = %@", buf, 0x48u);

    states = statesCopy;
    updateProfile = v35;
  }

  objc_autoreleasePoolPop(v7);
  v20 = objc_autoreleasePoolPush();
  v21 = selfCopy;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = HMFGetLogIdentifier();
    [MEMORY[0x277CCACA8] stringWithUTF8String:states];
    v24 = v34 = v20;
    accessory = [(HMDAccessoryFirmwareUpdateScheduler *)v21 accessory];
    [accessory isReachable];
    v26 = HMFBooleanToString();
    updateSession2 = [(HMDAccessoryFirmwareUpdateScheduler *)v21 updateSession];
    [updateSession2 isUserInitiatedInstall];
    v28 = HMFBooleanToString();
    accessory2 = [(HMDAccessoryFirmwareUpdateScheduler *)v21 accessory];
    [accessory2 isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
    v30 = HMFBooleanToString();
    *buf = 138544386;
    v37 = v23;
    v38 = 2112;
    v39 = v24;
    v40 = 2112;
    v41 = v26;
    v42 = 2112;
    v43 = v28;
    v44 = 2112;
    v45 = v30;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@%@: Accessory Locally Reachable = %@, User Initiated Install = %@, Automatic Update = %@", buf, 0x34u);

    v20 = v34;
    updateProfile = v35;
  }

  objc_autoreleasePoolPop(v20);
  v31 = *MEMORY[0x277D85DE8];
}

- (void)_taskCanRunInCurrentDevice:(id)device
{
  v39 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentTask = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
  shouldRun = [currentTask shouldRun];

  if (shouldRun)
  {
    accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
    home = [accessory home];
    primaryResident = [home primaryResident];
    capabilities = [primaryResident capabilities];
    supportsResidentFirmwareUpdate = [capabilities supportsResidentFirmwareUpdate];

    v12 = [home isResidentSupported] & supportsResidentFirmwareUpdate;
    isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v17 = v26 = accessory;
      v18 = HMFBooleanToString();
      [home isResidentSupported];
      HMFBooleanToString();
      v19 = v25 = v14;
      v20 = HMFBooleanToString();
      *buf = 138544130;
      v32 = v17;
      v33 = 2112;
      v34 = v18;
      v35 = 2112;
      v36 = v19;
      v37 = 2112;
      v38 = v20;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Resident parameters: supports AFU=%@, enabled=%@, current device is resident=%@", buf, 0x2Au);

      v14 = v25;
      accessory = v26;
    }

    objc_autoreleasePoolPop(v14);
    if (isCurrentDeviceConfirmedPrimaryResident & 1 | ((v12 & 1) == 0) || (-[HMDAccessoryFirmwareUpdateScheduler updateSession](selfCopy, "updateSession"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 isUserInitiatedInstall], v21, (v22 & 1) != 0))
    {
      deviceCopy[2](deviceCopy, 1);
    }

    else
    {
      v30 = accessory;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __66__HMDAccessoryFirmwareUpdateScheduler__taskCanRunInCurrentDevice___block_invoke;
      v28[3] = &unk_279732070;
      v28[4] = selfCopy;
      v29 = deviceCopy;
      [home queryPrimaryResidentReachabilityForAccessories:v23 completion:v28];
    }
  }

  else
  {
    deviceCopy[2](deviceCopy, 0);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __66__HMDAccessoryFirmwareUpdateScheduler__taskCanRunInCurrentDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = [*(a1 + 32) workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HMDAccessoryFirmwareUpdateScheduler__taskCanRunInCurrentDevice___block_invoke_2;
  v6[3] = &unk_279730E50;
  objc_copyWeak(&v9, &location);
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __66__HMDAccessoryFirmwareUpdateScheduler__taskCanRunInCurrentDevice___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([*(a1 + 32) count] == 1)
  {
    v3 = [*(a1 + 32) firstObject];
    v4 = [v3 hmf_BOOLForKey:@"kAccessoryIsReachableKey"];
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = v8;
    v10 = @"unreachable";
    if (v4)
    {
      v10 = @"reachable";
    }

    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Accessory is %@ from the resident", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_defer
{
  v18 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    activityCompletion = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy activityCompletion];
    v9 = HMFBooleanToString();
    v14 = 138543618;
    v15 = v7;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Deferring active task, activityCompletion %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy _logDebugStates:"[HMDAccessoryFirmwareUpdateScheduler _defer]"];
  updateSession = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy updateSession];
  [updateSession pause];

  activityCompletion2 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy activityCompletion];

  if (activityCompletion2)
  {
    activityCompletion3 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy activityCompletion];
    activityCompletion3[2](activityCompletion3, 2);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_stop
{
  v18 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping current task", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy _logDebugStates:"[HMDAccessoryFirmwareUpdateScheduler _stop]"];
  if ([(HMDAccessoryFirmwareUpdateScheduler *)selfCopy currentState])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = selfCopy;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Stopping active task", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    activityCompletion = [(HMDAccessoryFirmwareUpdateScheduler *)v9 activityCompletion];

    if (activityCompletion)
    {
      activityCompletion2 = [(HMDAccessoryFirmwareUpdateScheduler *)v9 activityCompletion];
      activityCompletion2[2](activityCompletion2, 1);
    }

    [(HMDAccessoryFirmwareUpdateScheduler *)v9 _invalidateExistingScheduling];
    [(HMDAccessoryFirmwareUpdateScheduler *)v9 setCurrentState:0];
    updateSession = [(HMDAccessoryFirmwareUpdateScheduler *)v9 updateSession];
    [updateSession pause];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleCurrentTaskBackgroundRun
{
  v38 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentTask = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
  shouldRun = [currentTask shouldRun];

  if (shouldRun)
  {
    currentTask2 = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
    [(HMDAccessoryFirmwareUpdateScheduler *)self _invalidateExistingScheduling];
    [(HMDAccessoryFirmwareUpdateScheduler *)self setCurrentTask:currentTask2];
    accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
    uniqueIdentifier = [accessory uniqueIdentifier];
    v9 = [@"com.apple.homed.firmwareUpdate.scheduler." stringByAppendingString:uniqueIdentifier];

    wingman = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    v11 = [wingman newBackgroundSchedulerWithIdentifier:v9];
    [(HMDAccessoryFirmwareUpdateScheduler *)self setBackgroundScheduler:v11];

    backgroundScheduler = [(HMDAccessoryFirmwareUpdateScheduler *)self backgroundScheduler];
    currentTask3 = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
    criteria = [currentTask3 criteria];
    [backgroundScheduler _setAdditionalXPCActivityProperties:criteria];

    objc_initWeak(&location, self);
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      currentTask4 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy currentTask];
      *buf = 138543874;
      v33 = v18;
      v34 = 2112;
      v35 = v9;
      v36 = 2112;
      v37 = currentTask4;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Scheduling background task %@ %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    backgroundScheduler2 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy backgroundScheduler];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __72__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTaskBackgroundRun__block_invoke;
    v28[3] = &unk_279728428;
    objc_copyWeak(&v30, &location);
    v21 = v9;
    v29 = v21;
    [backgroundScheduler2 scheduleWithBlock:v28];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      currentTask5 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy2 currentTask];
      *buf = 138543618;
      v33 = v25;
      v34 = 2112;
      v35 = currentTask5;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Aborting task %@ after initial delay because required conditions are no longer satisfied", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy2 _stop];
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __72__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTaskBackgroundRun__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTaskBackgroundRun__block_invoke_2;
    block[3] = &unk_2797355D0;
    block[4] = v5;
    v8 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v6, block);
  }

  else
  {
    (*(v3 + 2))(v3, 1);
  }
}

uint64_t __72__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTaskBackgroundRun__block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) currentTask];
    *buf = 138543874;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Running background task %@ %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setActivityCompletion:*(a1 + 48)];
  v8 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTaskBackgroundRun__block_invoke_50;
  v11[3] = &unk_279734468;
  v11[4] = v8;
  result = [v8 _taskCanRunInCurrentDevice:v11];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __72__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTaskBackgroundRun__block_invoke_50(uint64_t a1, char a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 32) currentTask];
      v15 = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Running task %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = [*(a1 + 32) currentTask];
    [v10 run];

    result = [*(a1 + 32) _startDeferCheckTimer];
  }

  else
  {
    if (v7)
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) currentTask];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Aborting background running because required conditions are no longer satisfied for task=%@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    result = [*(a1 + 32) _stop];
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_scheduleCurrentTask
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentTask = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
  if ([currentTask isUserInitiated])
  {

LABEL_4:
    workQueue2 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTask__block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(workQueue2, block);

    return;
  }

  currentTask2 = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
  [currentTask2 initialDelay];
  v7 = v6;

  if (v7 == 0.0)
  {
    goto LABEL_4;
  }

  [(HMDAccessoryFirmwareUpdateScheduler *)self _startTaskInitialDelayTimer];
}

uint64_t __59__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTask__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTask__block_invoke_2;
  v3[3] = &unk_279734468;
  v3[4] = v1;
  return [v1 _taskCanRunInCurrentDevice:v3];
}

void __59__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTask__block_invoke_2(uint64_t a1, char a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) currentTask];

    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      if (v7)
      {
        v8 = HMFGetLogIdentifier();
        v9 = [*(a1 + 32) currentTask];
        v18 = 138543618;
        v19 = v8;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Running current task now %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
      v10 = [*(a1 + 32) currentTask];
      [v10 run];
    }

    else
    {
      if (v7)
      {
        v16 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v16;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Task was invalidated", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 32) currentTask];
      v18 = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Aborting background run of task %@ because required conditions are no longer satisfied", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 32) _stop];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateExistingScheduling
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  backgroundScheduler = [(HMDAccessoryFirmwareUpdateScheduler *)self backgroundScheduler];
  [backgroundScheduler invalidate];

  [(HMDAccessoryFirmwareUpdateScheduler *)self setBackgroundScheduler:0];
  [(HMDAccessoryFirmwareUpdateScheduler *)self setActivityCompletion:0];
  [(HMDAccessoryFirmwareUpdateScheduler *)self setCurrentTask:0];
  [(HMDAccessoryFirmwareUpdateScheduler *)self _stopInitialDelayTimer];

  [(HMDAccessoryFirmwareUpdateScheduler *)self _stopDeferCheckTimer];
}

- (BOOL)isStagingInProgress
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  return [(HMDAccessoryFirmwareUpdateScheduler *)self currentState]== 1;
}

- (BOOL)isIdle
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  return [(HMDAccessoryFirmwareUpdateScheduler *)self currentState]== 0;
}

- (BOOL)needsToScheduleApply
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  updateSession = [(HMDAccessoryFirmwareUpdateScheduler *)self updateSession];
  if ([updateSession sessionState] == 2 && !-[HMDAccessoryFirmwareUpdateScheduler currentState](self, "currentState"))
  {
    if ([updateSession isUserInitiatedInstall])
    {
      isAutomaticThirdPartyAccessorySoftwareUpdateEnabled = 1;
    }

    else
    {
      accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
      isAutomaticThirdPartyAccessorySoftwareUpdateEnabled = [accessory isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
    }
  }

  else
  {
    isAutomaticThirdPartyAccessorySoftwareUpdateEnabled = 0;
  }

  return isAutomaticThirdPartyAccessorySoftwareUpdateEnabled;
}

- (BOOL)needsToScheduleStaging
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  updateSession = [(HMDAccessoryFirmwareUpdateScheduler *)self updateSession];
  v5 = [updateSession sessionState] == 1 && -[HMDAccessoryFirmwareUpdateScheduler currentState](self, "currentState") == 0;

  return v5;
}

- (BOOL)needsToScheduleRegister
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  updateSession = [(HMDAccessoryFirmwareUpdateScheduler *)self updateSession];
  v5 = [updateSession sessionState] == 3 && -[HMDAccessoryFirmwareUpdateScheduler currentState](self, "currentState") == 0;

  return v5;
}

- (BOOL)needsToStop
{
  v36 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  if ([accessory isReachable])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(HMDAccessoryFirmwareUpdateScheduler *)self isIdle];
  }

  updateProfile = [(HMDAccessoryFirmwareUpdateScheduler *)self updateProfile];
  if ([updateProfile stagingNotReadyReasons])
  {
    isStagingInProgress = [(HMDAccessoryFirmwareUpdateScheduler *)self isStagingInProgress];
  }

  else
  {
    isStagingInProgress = 0;
  }

  currentTask = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
  if (currentTask)
  {
    currentTask2 = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
    v9 = [currentTask2 shouldRun] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v10 = v4 | isStagingInProgress | v9;
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v14 = v23 = v11;
      currentTask3 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy currentTask];
      v16 = HMFBooleanToString();
      v17 = HMFBooleanToString();
      updateProfile2 = [(HMDAccessoryFirmwareUpdateScheduler *)selfCopy updateProfile];
      [updateProfile2 stagingNotReadyReasons];
      v19 = HAPStagingNotReadyReasonsAsString();
      v20 = HMFBooleanToString();
      *buf = 138544642;
      v25 = v14;
      v26 = 2112;
      v27 = currentTask3;
      v28 = 2112;
      v29 = v16;
      v30 = 2114;
      v31 = v17;
      v32 = 2112;
      v33 = v19;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Task %@ needs to stop - notReachable %@, StagingNotReady %{public}@ (%@), shouldn't run %@", buf, 0x3Eu);

      v11 = v23;
    }

    objc_autoreleasePoolPop(v11);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (void)_handleSchedulingConditionChanged
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDAccessoryFirmwareUpdateScheduler *)self _logDebugStates:"[HMDAccessoryFirmwareUpdateScheduler _handleSchedulingConditionChanged]"];
  if ([(HMDAccessoryFirmwareUpdateScheduler *)self needsToStop])
  {

    [(HMDAccessoryFirmwareUpdateScheduler *)self _stop];
  }

  else if ([(HMDAccessoryFirmwareUpdateScheduler *)self needsToScheduleApply]|| [(HMDAccessoryFirmwareUpdateScheduler *)self needsToScheduleStaging]|| [(HMDAccessoryFirmwareUpdateScheduler *)self needsToScheduleRegister])
  {

    [(HMDAccessoryFirmwareUpdateScheduler *)self scheduleWithDelay:0];
  }
}

- (void)handlePrimaryResidentChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDAccessoryFirmwareUpdateScheduler_handlePrimaryResidentChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __68__HMDAccessoryFirmwareUpdateScheduler_handlePrimaryResidentChanged___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Primary resident changed to %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) _handleSchedulingConditionChanged];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleApplyNotReadyReasonsChanged:(id)changed
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMDAccessoryFirmwareUpdateScheduler_handleApplyNotReadyReasonsChanged___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __73__HMDAccessoryFirmwareUpdateScheduler_handleApplyNotReadyReasonsChanged___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) updateProfile];
    [v6 updateNotReadyReasons];
    v7 = HAPUpdateNotReadyReasonsAsString();
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory apply not ready reasons changed to %{public}@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _handleSchedulingConditionChanged];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleStagingNotReadyReasonsChanged:(id)changed
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDAccessoryFirmwareUpdateScheduler_handleStagingNotReadyReasonsChanged___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __75__HMDAccessoryFirmwareUpdateScheduler_handleStagingNotReadyReasonsChanged___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) updateProfile];
    [v6 stagingNotReadyReasons];
    v7 = HAPStagingNotReadyReasonsAsString();
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory staging not ready reasons changed to %{public}@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _handleSchedulingConditionChanged];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleUpdateStateChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDAccessoryFirmwareUpdateScheduler_handleUpdateStateChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __64__HMDAccessoryFirmwareUpdateScheduler_handleUpdateStateChanged___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 hmf_numberForKey:@"HMDAccessoryFirmwareUpdateStateKey"];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    [v3 unsignedIntegerValue];
    v8 = HAPFirmwareUpdateStateAsString();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Accessory firmware update status changed to %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) _handleSchedulingConditionChanged];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryReachabilityChanged:(id)changed
{
  workQueue = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDAccessoryFirmwareUpdateScheduler_handleAccessoryReachabilityChanged___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __74__HMDAccessoryFirmwareUpdateScheduler_handleAccessoryReachabilityChanged___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) accessory];
    [v6 isReachable];
    v7 = HMFBooleanToString();
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory reachability changes to %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _handleSchedulingConditionChanged];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_registerForNotifications
{
  accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  firmwareUpdateProfile = [accessory firmwareUpdateProfile];
  if (firmwareUpdateProfile)
  {
    wingman = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    notificationCenter = [wingman notificationCenter];
    [notificationCenter addObserver:self selector:sel_handleUpdateStateChanged_ name:@"HMDAccessoryFirmwareUpdateStateChangedNotification" object:firmwareUpdateProfile];

    wingman2 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    notificationCenter2 = [wingman2 notificationCenter];
    [notificationCenter2 addObserver:self selector:sel_handleStagingNotReadyReasonsChanged_ name:@"HMDAccessoryFirmwareUpdateStagingNotReadyReasonsChangedNotification" object:firmwareUpdateProfile];

    wingman3 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    notificationCenter3 = [wingman3 notificationCenter];
    [notificationCenter3 addObserver:self selector:sel_handleApplyNotReadyReasonsChanged_ name:@"HMDAccessoryFirmwareUpdateApplyNotReadyReasonsChangedNotification" object:firmwareUpdateProfile];

    wingman4 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    notificationCenter4 = [wingman4 notificationCenter];
    [notificationCenter4 addObserver:self selector:sel_handleAccessoryReachabilityChanged_ name:@"HMDAccessoryIsReachableNotification" object:accessory];

    wingman5 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    notificationCenter5 = [wingman5 notificationCenter];
    [notificationCenter5 addObserver:self selector:sel_handleAccessoryReachabilityChanged_ name:@"HMDAccessoryIsNotReachableNotification" object:accessory];
  }

  wingman6 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
  notificationCenter6 = [wingman6 notificationCenter];
  home = [accessory home];
  residentDeviceManager = [home residentDeviceManager];
  [notificationCenter6 addObserver:self selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:residentDeviceManager];

  wingman7 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
  notificationCenter7 = [wingman7 notificationCenter];
  [notificationCenter7 addObserver:self selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  wingman8 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
  notificationCenter8 = [wingman8 notificationCenter];
  [notificationCenter8 addObserver:self selector:sel_handleBridgeUpdate_ name:@"HMDAccessoryBridgedAccessoryAddedNotification" object:accessory];

  wingman9 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
  notificationCenter9 = [wingman9 notificationCenter];
  [notificationCenter9 addObserver:self selector:sel_handleBridgeUpdate_ name:@"HMDAccessoryBridgedAccessoryRemovedNotification" object:accessory];
}

- (HMDAccessoryFirmwareUpdateProfile)updateProfile
{
  accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  firmwareUpdateProfile = [accessory firmwareUpdateProfile];

  return firmwareUpdateProfile;
}

- (HMDAccessoryFirmwareUpdateScheduler)initWithAccessory:(id)accessory firmwareUpdateSession:(id)session wingman:(id)wingman workQueue:(id)queue
{
  accessoryCopy = accessory;
  sessionCopy = session;
  wingmanCopy = wingman;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = HMDAccessoryFirmwareUpdateScheduler;
  v14 = [(HMDAccessoryFirmwareUpdateScheduler *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_accessory, accessoryCopy);
    objc_storeWeak(&v15->_updateSession, sessionCopy);
    v16 = wingmanCopy;
    if (!wingmanCopy)
    {
      v16 = objc_alloc_init(HMDAccessoryFirmwareUpdateSchedulerWingman);
    }

    objc_storeStrong(&v15->_wingman, v16);
    if (!wingmanCopy)
    {
    }

    objc_storeStrong(&v15->_workQueue, queue);
    v15->_currentState = 0;
  }

  return v15;
}

- (void)dealloc
{
  [(NSBackgroundActivityScheduler *)self->_backgroundScheduler invalidate];
  notificationCenter = [(HMDAccessoryFirmwareUpdateSchedulerWingman *)self->_wingman notificationCenter];
  [notificationCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDAccessoryFirmwareUpdateScheduler;
  [(HMDAccessoryFirmwareUpdateScheduler *)&v4 dealloc];
}

- (id)logIdentifier
{
  accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  logIdentifier = [accessory logIdentifier];

  return logIdentifier;
}

- (id)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];
  v8 = [v3 stringWithFormat:@"<%@ %@>", v4, uUIDString];

  return v8;
}

- (NSString)description
{
  accessory = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  v3 = MEMORY[0x277CCACA8];
  name = [accessory name];
  uniqueIdentifier = [accessory uniqueIdentifier];
  v6 = [v3 stringWithFormat:@"Accessory Firmware Update Scheduler %@, %@", name, uniqueIdentifier];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_67603 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_67603, &__block_literal_global_67604);
  }

  v3 = logCategory__hmf_once_v1_67605;

  return v3;
}

uint64_t __50__HMDAccessoryFirmwareUpdateScheduler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_67605;
  logCategory__hmf_once_v1_67605 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end