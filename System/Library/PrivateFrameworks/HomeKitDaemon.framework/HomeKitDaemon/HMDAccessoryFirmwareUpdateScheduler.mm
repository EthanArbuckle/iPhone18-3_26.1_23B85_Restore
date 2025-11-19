@interface HMDAccessoryFirmwareUpdateScheduler
+ (id)logCategory;
- (BOOL)isIdle;
- (BOOL)isStagingInProgress;
- (BOOL)needsToScheduleApply;
- (BOOL)needsToScheduleRegister;
- (BOOL)needsToScheduleStaging;
- (BOOL)needsToStop;
- (HMDAccessoryFirmwareUpdateProfile)updateProfile;
- (HMDAccessoryFirmwareUpdateScheduler)initWithAccessory:(id)a3 firmwareUpdateSession:(id)a4 wingman:(id)a5 workQueue:(id)a6;
- (HMDAccessoryFirmwareUpdateSession)updateSession;
- (HMDHAPAccessory)accessory;
- (NSString)description;
- (id)logIdentifier;
- (id)privateDescription;
- (void)_createUpdatePolicy;
- (void)_defer;
- (void)_handleSchedulingConditionChanged;
- (void)_invalidateExistingScheduling;
- (void)_logDebugStates:(const char *)a3;
- (void)_registerForNotifications;
- (void)_removeUpdatePolicy;
- (void)_scheduleCurrentTask;
- (void)_scheduleCurrentTaskBackgroundRun;
- (void)_startDeferCheckTimer;
- (void)_startTaskInitialDelayTimer;
- (void)_stop;
- (void)_stopDeferCheckTimer;
- (void)_stopInitialDelayTimer;
- (void)_taskCanRunInCurrentDevice:(id)a3;
- (void)dealloc;
- (void)handleAccessoryReachabilityChanged:(id)a3;
- (void)handleApplyNotReadyReasonsChanged:(id)a3;
- (void)handleBridgeUpdate:(id)a3;
- (void)handlePolicyStatusChange:(id)a3;
- (void)handlePrimaryResidentChanged:(id)a3;
- (void)handleStagingNotReadyReasonsChanged:(id)a3;
- (void)handleUpdateStateChanged:(id)a3;
- (void)removeUpdatePolicy;
- (void)timerDidFire:(id)a3;
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

- (void)handleBridgeUpdate:(id)a3
{
  v4 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDAccessoryFirmwareUpdateScheduler_handleBridgeUpdate___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Bridge update received; rescheduling...", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _removeUpdatePolicy];
    [*(a1 + 32) scheduleWithDelay:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_removeUpdatePolicy
{
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self updatePolicy];

  if (v3)
  {
    v4 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    v5 = [v4 notificationCenter];
    [v5 removeObserver:self name:@"HMDAccessoryFirmwareUpdatePolicyStatusChangedNotification" object:0];

    [(HMDAccessoryFirmwareUpdateScheduler *)self setUpdatePolicy:0];
  }
}

- (void)_createUpdatePolicy
{
  [(HMDAccessoryFirmwareUpdateScheduler *)self _removeUpdatePolicy];
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
  v4 = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  v5 = [(HMDAccessoryFirmwareUpdateScheduler *)self updateSession];
  v6 = [v5 sessionState];
  v7 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  v8 = [v3 policyForAccessory:v4 sessionState:v6 workQueue:v7];
  [(HMDAccessoryFirmwareUpdateScheduler *)self setUpdatePolicy:v8];

  v9 = [(HMDAccessoryFirmwareUpdateScheduler *)self updatePolicy];

  if (v9)
  {
    v12 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    v10 = [v12 notificationCenter];
    v11 = [(HMDAccessoryFirmwareUpdateScheduler *)self updatePolicy];
    [v10 addObserver:self selector:sel_handlePolicyStatusChange_ name:@"HMDAccessoryFirmwareUpdatePolicyStatusChangedNotification" object:v11];
  }
}

- (void)handlePolicyStatusChange:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDAccessoryFirmwareUpdateScheduler_handlePolicyStatusChange___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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
      v10 = off_27867DF68[v9 - 1];
    }

    v11 = v10;
    v15 = 138543874;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Policy status - %@, Session State - %@", &v15, 0x20u);
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
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDAccessoryFirmwareUpdateScheduler_removeUpdatePolicy__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)timerDidFire:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessoryFirmwareUpdateScheduler *)self initialDelayTimer];

  if (v6 == v4)
  {
    [(HMDAccessoryFirmwareUpdateScheduler *)self _scheduleCurrentTaskBackgroundRun];
  }

  else
  {
    v7 = [(HMDAccessoryFirmwareUpdateScheduler *)self deferCheckTimer];
    v8 = v7;
    if (v7 == v4)
    {
      v9 = [(HMDAccessoryFirmwareUpdateScheduler *)self backgroundScheduler];
      v10 = [v9 shouldDefer];

      if (v10)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          v16 = 138543362;
          v17 = v14;
          _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@System condition is no longer conducive to running scheduled task", &v16, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
        [(HMDAccessoryFirmwareUpdateScheduler *)v12 _defer];
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
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessoryFirmwareUpdateScheduler *)self initialDelayTimer];
  [v4 cancel];

  [(HMDAccessoryFirmwareUpdateScheduler *)self setInitialDelayTimer:0];
}

- (void)_startTaskInitialDelayTimer
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [(HMDAccessoryFirmwareUpdateScheduler *)v5 currentTask];
    v17 = 138543618;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting initial delay timer for task %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [(HMDAccessoryFirmwareUpdateScheduler *)v5 wingman];
  v10 = [(HMDAccessoryFirmwareUpdateScheduler *)v5 currentTask];
  [v10 initialDelay];
  v11 = [v9 newInitialDelayTimerWithDelay:1 options:?];
  [(HMDAccessoryFirmwareUpdateScheduler *)v5 setInitialDelayTimer:v11];

  v12 = [(HMDAccessoryFirmwareUpdateScheduler *)v5 initialDelayTimer];
  [v12 setDelegate:v5];

  v13 = [(HMDAccessoryFirmwareUpdateScheduler *)v5 workQueue];
  v14 = [(HMDAccessoryFirmwareUpdateScheduler *)v5 initialDelayTimer];
  [v14 setDelegateQueue:v13];

  v15 = [(HMDAccessoryFirmwareUpdateScheduler *)v5 initialDelayTimer];
  [v15 resume];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_stopDeferCheckTimer
{
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessoryFirmwareUpdateScheduler *)self deferCheckTimer];
  [v4 cancel];

  [(HMDAccessoryFirmwareUpdateScheduler *)self setDeferCheckTimer:0];
}

- (void)_startDeferCheckTimer
{
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:5 options:10000.0];
  [(HMDAccessoryFirmwareUpdateScheduler *)self setDeferCheckTimer:v4];

  v5 = [(HMDAccessoryFirmwareUpdateScheduler *)self deferCheckTimer];
  [v5 setDelegate:self];

  v6 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  v7 = [(HMDAccessoryFirmwareUpdateScheduler *)self deferCheckTimer];
  [v7 setDelegateQueue:v6];

  v8 = [(HMDAccessoryFirmwareUpdateScheduler *)self deferCheckTimer];
  [v8 resume];
}

- (void)_logDebugStates:(const char *)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessoryFirmwareUpdateScheduler *)self updateProfile];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v35 = v6;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v32 = HMFGetLogIdentifier();
    v33 = a3;
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
    [v6 stagingNotReadyReasons];
    v11 = HAPStagingNotReadyReasonsAsString();
    [v6 updateNotReadyReasons];
    v12 = HAPUpdateNotReadyReasonsAsString();
    [v6 updateState];
    v13 = HAPFirmwareUpdateStateAsString();
    v14 = [(HMDAccessoryFirmwareUpdateScheduler *)v8 updateSession];
    v15 = [v14 sessionState];
    if ((v15 - 1) > 2)
    {
      v16 = @"Up-To-Date";
    }

    else
    {
      v16 = off_27867DF68[v15 - 1];
    }

    v17 = v16;
    v18 = [(HMDAccessoryFirmwareUpdateScheduler *)v8 currentState];
    if ((v18 - 1) > 2)
    {
      v19 = @"Idle";
    }

    else
    {
      v19 = off_278677F30[v18 - 1];
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
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@%@: Staging Not Ready Reasons = %{public}@, Apply Not Ready Reasons = %{public}@, Accessory State = %@, Session State = %@, Scheduler State = %@", buf, 0x48u);

    a3 = v33;
    v6 = v35;
  }

  objc_autoreleasePoolPop(v7);
  v20 = objc_autoreleasePoolPush();
  v21 = v8;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = HMFGetLogIdentifier();
    [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
    v24 = v34 = v20;
    v25 = [(HMDAccessoryFirmwareUpdateScheduler *)v21 accessory];
    [v25 isReachable];
    v26 = HMFBooleanToString();
    v27 = [(HMDAccessoryFirmwareUpdateScheduler *)v21 updateSession];
    [v27 isUserInitiatedInstall];
    v28 = HMFBooleanToString();
    v29 = [(HMDAccessoryFirmwareUpdateScheduler *)v21 accessory];
    [v29 isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
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
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEBUG, "%{public}@%@: Accessory Locally Reachable = %@, User Initiated Install = %@, Automatic Update = %@", buf, 0x34u);

    v20 = v34;
    v6 = v35;
  }

  objc_autoreleasePoolPop(v20);
  v31 = *MEMORY[0x277D85DE8];
}

- (void)_taskCanRunInCurrentDevice:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
  v7 = [v6 shouldRun];

  if (v7)
  {
    v8 = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
    v9 = [v8 home];
    v27 = [v9 primaryResident];
    v10 = [v27 capabilities];
    v11 = [v10 supportsResidentFirmwareUpdate];

    v12 = [v9 isResidentSupported] & v11;
    v13 = [v9 isCurrentDeviceConfirmedPrimaryResident];
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v17 = v26 = v8;
      v18 = HMFBooleanToString();
      [v9 isResidentSupported];
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
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Resident parameters: supports AFU=%@, enabled=%@, current device is resident=%@", buf, 0x2Au);

      v14 = v25;
      v8 = v26;
    }

    objc_autoreleasePoolPop(v14);
    if (v13 & 1 | ((v12 & 1) == 0) || (-[HMDAccessoryFirmwareUpdateScheduler updateSession](v15, "updateSession"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 isUserInitiatedInstall], v21, (v22 & 1) != 0))
    {
      v4[2](v4, 1);
    }

    else
    {
      v30 = v8;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __66__HMDAccessoryFirmwareUpdateScheduler__taskCanRunInCurrentDevice___block_invoke;
      v28[3] = &unk_278689FC0;
      v28[4] = v15;
      v29 = v4;
      [v9 queryPrimaryResidentReachabilityForAccessories:v23 completion:v28];
    }
  }

  else
  {
    v4[2](v4, 0);
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
  v6[3] = &unk_278687BF8;
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Accessory is %@ from the resident", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_defer
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [(HMDAccessoryFirmwareUpdateScheduler *)v5 activityCompletion];
    v9 = HMFBooleanToString();
    v14 = 138543618;
    v15 = v7;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Deferring active task, activityCompletion %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDAccessoryFirmwareUpdateScheduler *)v5 _logDebugStates:"[HMDAccessoryFirmwareUpdateScheduler _defer]"];
  v10 = [(HMDAccessoryFirmwareUpdateScheduler *)v5 updateSession];
  [v10 pause];

  v11 = [(HMDAccessoryFirmwareUpdateScheduler *)v5 activityCompletion];

  if (v11)
  {
    v12 = [(HMDAccessoryFirmwareUpdateScheduler *)v5 activityCompletion];
    v12[2](v12, 2);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_stop
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping current task", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDAccessoryFirmwareUpdateScheduler *)v5 _logDebugStates:"[HMDAccessoryFirmwareUpdateScheduler _stop]"];
  if ([(HMDAccessoryFirmwareUpdateScheduler *)v5 currentState])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = v5;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Stopping active task", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HMDAccessoryFirmwareUpdateScheduler *)v9 activityCompletion];

    if (v12)
    {
      v13 = [(HMDAccessoryFirmwareUpdateScheduler *)v9 activityCompletion];
      v13[2](v13, 1);
    }

    [(HMDAccessoryFirmwareUpdateScheduler *)v9 _invalidateExistingScheduling];
    [(HMDAccessoryFirmwareUpdateScheduler *)v9 setCurrentState:0];
    v14 = [(HMDAccessoryFirmwareUpdateScheduler *)v9 updateSession];
    [v14 pause];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleCurrentTaskBackgroundRun
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
  v5 = [v4 shouldRun];

  if (v5)
  {
    v6 = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
    [(HMDAccessoryFirmwareUpdateScheduler *)self _invalidateExistingScheduling];
    [(HMDAccessoryFirmwareUpdateScheduler *)self setCurrentTask:v6];
    v7 = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
    v8 = [v7 uniqueIdentifier];
    v9 = [@"com.apple.homed.firmwareUpdate.scheduler." stringByAppendingString:v8];

    v10 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    v11 = [v10 newBackgroundSchedulerWithIdentifier:v9];
    [(HMDAccessoryFirmwareUpdateScheduler *)self setBackgroundScheduler:v11];

    v12 = [(HMDAccessoryFirmwareUpdateScheduler *)self backgroundScheduler];
    v13 = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
    v14 = [v13 criteria];
    [v12 _setAdditionalXPCActivityProperties:v14];

    objc_initWeak(&location, self);
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [(HMDAccessoryFirmwareUpdateScheduler *)v16 currentTask];
      *buf = 138543874;
      v33 = v18;
      v34 = 2112;
      v35 = v9;
      v36 = 2112;
      v37 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Scheduling background task %@ %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = [(HMDAccessoryFirmwareUpdateScheduler *)v16 backgroundScheduler];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __72__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTaskBackgroundRun__block_invoke;
    v28[3] = &unk_278677F10;
    objc_copyWeak(&v30, &location);
    v21 = v9;
    v29 = v21;
    [v20 scheduleWithBlock:v28];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [(HMDAccessoryFirmwareUpdateScheduler *)v23 currentTask];
      *buf = 138543618;
      v33 = v25;
      v34 = 2112;
      v35 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Aborting task %@ after initial delay because required conditions are no longer satisfied", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    [(HMDAccessoryFirmwareUpdateScheduler *)v23 _stop];
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
    block[3] = &unk_278689F98;
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Running background task %@ %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setActivityCompletion:*(a1 + 48)];
  v8 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTaskBackgroundRun__block_invoke_50;
  v11[3] = &unk_278682310;
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Running task %@", &v15, 0x16u);
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Aborting background running because required conditions are no longer satisfied for task=%@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    result = [*(a1 + 32) _stop];
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_scheduleCurrentTask
{
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
  if ([v4 isUserInitiated])
  {

LABEL_4:
    v8 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__HMDAccessoryFirmwareUpdateScheduler__scheduleCurrentTask__block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(v8, block);

    return;
  }

  v5 = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
  [v5 initialDelay];
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
  v3[3] = &unk_278682310;
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
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Running current task now %@", &v18, 0x16u);
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
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Task was invalidated", &v18, 0xCu);
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Aborting background run of task %@ because required conditions are no longer satisfied", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 32) _stop];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateExistingScheduling
{
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessoryFirmwareUpdateScheduler *)self backgroundScheduler];
  [v4 invalidate];

  [(HMDAccessoryFirmwareUpdateScheduler *)self setBackgroundScheduler:0];
  [(HMDAccessoryFirmwareUpdateScheduler *)self setActivityCompletion:0];
  [(HMDAccessoryFirmwareUpdateScheduler *)self setCurrentTask:0];
  [(HMDAccessoryFirmwareUpdateScheduler *)self _stopInitialDelayTimer];

  [(HMDAccessoryFirmwareUpdateScheduler *)self _stopDeferCheckTimer];
}

- (BOOL)isStagingInProgress
{
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  return [(HMDAccessoryFirmwareUpdateScheduler *)self currentState]== 1;
}

- (BOOL)isIdle
{
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  return [(HMDAccessoryFirmwareUpdateScheduler *)self currentState]== 0;
}

- (BOOL)needsToScheduleApply
{
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessoryFirmwareUpdateScheduler *)self updateSession];
  if ([v4 sessionState] == 2 && !-[HMDAccessoryFirmwareUpdateScheduler currentState](self, "currentState"))
  {
    if ([v4 isUserInitiatedInstall])
    {
      v5 = 1;
    }

    else
    {
      v7 = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
      v5 = [v7 isAutomaticThirdPartyAccessorySoftwareUpdateEnabled];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)needsToScheduleStaging
{
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessoryFirmwareUpdateScheduler *)self updateSession];
  v5 = [v4 sessionState] == 1 && -[HMDAccessoryFirmwareUpdateScheduler currentState](self, "currentState") == 0;

  return v5;
}

- (BOOL)needsToScheduleRegister
{
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessoryFirmwareUpdateScheduler *)self updateSession];
  v5 = [v4 sessionState] == 3 && -[HMDAccessoryFirmwareUpdateScheduler currentState](self, "currentState") == 0;

  return v5;
}

- (BOOL)needsToStop
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  if ([v3 isReachable])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(HMDAccessoryFirmwareUpdateScheduler *)self isIdle];
  }

  v5 = [(HMDAccessoryFirmwareUpdateScheduler *)self updateProfile];
  if ([v5 stagingNotReadyReasons])
  {
    v6 = [(HMDAccessoryFirmwareUpdateScheduler *)self isStagingInProgress];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
  if (v7)
  {
    v8 = [(HMDAccessoryFirmwareUpdateScheduler *)self currentTask];
    v9 = [v8 shouldRun] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v10 = v4 | v6 | v9;
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v14 = v23 = v11;
      v15 = [(HMDAccessoryFirmwareUpdateScheduler *)v12 currentTask];
      v16 = HMFBooleanToString();
      v17 = HMFBooleanToString();
      v18 = [(HMDAccessoryFirmwareUpdateScheduler *)v12 updateProfile];
      [v18 stagingNotReadyReasons];
      v19 = HAPStagingNotReadyReasonsAsString();
      v20 = HMFBooleanToString();
      *buf = 138544642;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      v28 = 2112;
      v29 = v16;
      v30 = 2114;
      v31 = v17;
      v32 = 2112;
      v33 = v19;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Task %@ needs to stop - notReachable %@, StagingNotReady %{public}@ (%@), shouldn't run %@", buf, 0x3Eu);

      v11 = v23;
    }

    objc_autoreleasePoolPop(v11);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (void)_handleSchedulingConditionChanged
{
  v3 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  dispatch_assert_queue_V2(v3);

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

- (void)handlePrimaryResidentChanged:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDAccessoryFirmwareUpdateScheduler_handlePrimaryResidentChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Primary resident changed to %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) _handleSchedulingConditionChanged];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleApplyNotReadyReasonsChanged:(id)a3
{
  v4 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMDAccessoryFirmwareUpdateScheduler_handleApplyNotReadyReasonsChanged___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory apply not ready reasons changed to %{public}@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _handleSchedulingConditionChanged];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleStagingNotReadyReasonsChanged:(id)a3
{
  v4 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDAccessoryFirmwareUpdateScheduler_handleStagingNotReadyReasonsChanged___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory staging not ready reasons changed to %{public}@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _handleSchedulingConditionChanged];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleUpdateStateChanged:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDAccessoryFirmwareUpdateScheduler_handleUpdateStateChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Accessory firmware update status changed to %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) _handleSchedulingConditionChanged];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryReachabilityChanged:(id)a3
{
  v4 = [(HMDAccessoryFirmwareUpdateScheduler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDAccessoryFirmwareUpdateScheduler_handleAccessoryReachabilityChanged___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory reachability changes to %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _handleSchedulingConditionChanged];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_registerForNotifications
{
  v24 = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  v3 = [v24 firmwareUpdateProfile];
  if (v3)
  {
    v4 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    v5 = [v4 notificationCenter];
    [v5 addObserver:self selector:sel_handleUpdateStateChanged_ name:@"HMDAccessoryFirmwareUpdateStateChangedNotification" object:v3];

    v6 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    v7 = [v6 notificationCenter];
    [v7 addObserver:self selector:sel_handleStagingNotReadyReasonsChanged_ name:@"HMDAccessoryFirmwareUpdateStagingNotReadyReasonsChangedNotification" object:v3];

    v8 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    v9 = [v8 notificationCenter];
    [v9 addObserver:self selector:sel_handleApplyNotReadyReasonsChanged_ name:@"HMDAccessoryFirmwareUpdateApplyNotReadyReasonsChangedNotification" object:v3];

    v10 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    v11 = [v10 notificationCenter];
    [v11 addObserver:self selector:sel_handleAccessoryReachabilityChanged_ name:@"HMDAccessoryIsReachableNotification" object:v24];

    v12 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
    v13 = [v12 notificationCenter];
    [v13 addObserver:self selector:sel_handleAccessoryReachabilityChanged_ name:@"HMDAccessoryIsNotReachableNotification" object:v24];
  }

  v14 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
  v15 = [v14 notificationCenter];
  v16 = [v24 home];
  v17 = [v16 residentDeviceManager];
  [v15 addObserver:self selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:v17];

  v18 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
  v19 = [v18 notificationCenter];
  [v19 addObserver:self selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  v20 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
  v21 = [v20 notificationCenter];
  [v21 addObserver:self selector:sel_handleBridgeUpdate_ name:@"HMDAccessoryBridgedAccessoryAddedNotification" object:v24];

  v22 = [(HMDAccessoryFirmwareUpdateScheduler *)self wingman];
  v23 = [v22 notificationCenter];
  [v23 addObserver:self selector:sel_handleBridgeUpdate_ name:@"HMDAccessoryBridgedAccessoryRemovedNotification" object:v24];
}

- (HMDAccessoryFirmwareUpdateProfile)updateProfile
{
  v2 = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  v3 = [v2 firmwareUpdateProfile];

  return v3;
}

- (HMDAccessoryFirmwareUpdateScheduler)initWithAccessory:(id)a3 firmwareUpdateSession:(id)a4 wingman:(id)a5 workQueue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = HMDAccessoryFirmwareUpdateScheduler;
  v14 = [(HMDAccessoryFirmwareUpdateScheduler *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_accessory, v10);
    objc_storeWeak(&v15->_updateSession, v11);
    v16 = v12;
    if (!v12)
    {
      v16 = objc_alloc_init(HMDAccessoryFirmwareUpdateSchedulerWingman);
    }

    objc_storeStrong(&v15->_wingman, v16);
    if (!v12)
    {
    }

    objc_storeStrong(&v15->_workQueue, a6);
    v15->_currentState = 0;
  }

  return v15;
}

- (void)dealloc
{
  [(NSBackgroundActivityScheduler *)self->_backgroundScheduler invalidate];
  v3 = [(HMDAccessoryFirmwareUpdateSchedulerWingman *)self->_wingman notificationCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDAccessoryFirmwareUpdateScheduler;
  [(HMDAccessoryFirmwareUpdateScheduler *)&v4 dealloc];
}

- (id)logIdentifier
{
  v2 = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  v3 = [v2 logIdentifier];

  return v3;
}

- (id)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  v6 = [v5 uuid];
  v7 = [v6 UUIDString];
  v8 = [v3 stringWithFormat:@"<%@ %@>", v4, v7];

  return v8;
}

- (NSString)description
{
  v2 = [(HMDAccessoryFirmwareUpdateScheduler *)self accessory];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 name];
  v5 = [v2 uniqueIdentifier];
  v6 = [v3 stringWithFormat:@"Accessory Firmware Update Scheduler %@, %@", v4, v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_103573 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_103573, &__block_literal_global_103574);
  }

  v3 = logCategory__hmf_once_v1_103575;

  return v3;
}

void __50__HMDAccessoryFirmwareUpdateScheduler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_103575;
  logCategory__hmf_once_v1_103575 = v1;
}

@end