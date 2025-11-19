@interface HMDThreadMonitor
+ (id)createWithRadarInitiator:(id)a3;
+ (id)logCategory;
+ (id)sharedInstance;
+ (void)start;
- (BOOL)setup;
- (HMMRadarInitiating)radarInitiator;
- (void)pthreadHookWithEvent:(unsigned int)a3;
- (void)resetWithRadarInitiator:(id)a3;
@end

@implementation HMDThreadMonitor

+ (id)sharedInstance
{
  if (sharedInstance__hmf_once_t0 != -1)
  {
    dispatch_once(&sharedInstance__hmf_once_t0, &__block_literal_global_96859);
  }

  v3 = sharedInstance__hmf_once_v1;

  return v3;
}

- (HMMRadarInitiating)radarInitiator
{
  WeakRetained = objc_loadWeakRetained(&self->_radarInitiator);

  return WeakRetained;
}

- (void)pthreadHookWithEvent:(unsigned int)a3
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (a3 == 1)
  {
    v5 = self->currentCount + 1;
    self->currentCount = v5;
    threshold = self->threshold;
    if (v5 >= threshold)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        currentCount = self->currentCount;
        *buf = 138543618;
        v16 = v10;
        v17 = 2048;
        v18 = currentCount;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Above thread count threshold: %zu", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v5 = self->currentCount;
      threshold = self->threshold;
    }

    if (v5 == threshold && self->ttrEnabled)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"homed thread count is above %zu", threshold];
      WeakRetained = objc_loadWeakRetained(&self->_radarInitiator);
      [WeakRetained requestRadarWithDisplayReason:v12 radarTitle:v12 componentName:@"HomeKit" componentVersion:@"Performance - cpu" componentID:1653014];
    }
  }

  else if (a3 == 4)
  {
    --self->currentCount;
  }

  os_unfair_lock_unlock(&self->counterLock);
  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)setup
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = HMFIsInternalBuild();
  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = +[HMDTTRManager sharedManager];
  [(HMDThreadMonitor *)self resetWithRadarInitiator:v4];

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@starting thread monitoring", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = MEMORY[0x277D85F48];
  v10 = *MEMORY[0x277D85F48];
  act_listCnt = 0;
  v30 = 0;
  if (task_threads(v10, &v30, &act_listCnt))
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v14;
    v15 = "%{public}@Failed to get initial thread count";
    v16 = v13;
    v17 = OS_LOG_TYPE_ERROR;
    v18 = 12;
    goto LABEL_14;
  }

  if (act_listCnt)
  {
      ;
    }

    v20 = 4 * act_listCnt;
  }

  else
  {
    v20 = 0;
  }

  MEMORY[0x22AAD5100](v10, v30, v20);
  v6->currentCount = act_listCnt;
  v11 = objc_autoreleasePoolPush();
  v12 = v6;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    threshold = v12->threshold;
    ttrEnabled = v12->ttrEnabled;
    *buf = 138544130;
    v33 = v14;
    v34 = 1024;
    v35 = act_listCnt;
    v36 = 2048;
    v37 = threshold;
    v38 = 1024;
    v39 = ttrEnabled;
    v15 = "%{public}@initial thread count: %u (threshold: %zu, TTR enabled: %u)";
    v16 = v13;
    v17 = OS_LOG_TYPE_INFO;
    v18 = 34;
LABEL_14:
    _os_log_impl(&dword_229538000, v16, v17, v15, buf, v18);
  }

LABEL_15:

  objc_autoreleasePoolPop(v11);
  v23 = pthread_introspection_hook_install(HMDPthreadHook);
  v6->_previousHook = v23;
  if (v23 == HMDPthreadHook)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v6;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Reinstalling the same hook", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v6->_previousHook = 0;
  }

LABEL_19:
  v28 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)resetWithRadarInitiator:(id)a3
{
  self->counterLock._os_unfair_lock_opaque = 0;
  self->currentCount = 0;
  v4 = MEMORY[0x277D0F8D0];
  v5 = a3;
  v11 = [v4 sharedPreferences];
  v6 = [v11 preferenceForKey:@"threadMonitorThreshold"];
  v7 = [v6 numberValue];
  v8 = [v7 intValue];

  if (v8 <= 20)
  {
    v9 = 20;
  }

  else
  {
    v9 = v8;
  }

  self->threshold = v9;
  v10 = [v11 preferenceForKey:@"threadMonitorEnableTTR"];
  self->ttrEnabled = [v10 BOOLValue];

  self->_previousHook = 0;
  objc_storeWeak(&self->_radarInitiator, v5);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12_96854 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_96854, &__block_literal_global_12);
  }

  v3 = logCategory__hmf_once_v13_96855;

  return v3;
}

void __31__HMDThreadMonitor_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13_96855;
  logCategory__hmf_once_v13_96855 = v1;
}

+ (void)start
{
  v2 = +[HMDThreadMonitor sharedInstance];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__HMDThreadMonitor_start__block_invoke;
  block[3] = &unk_27868A728;
  v6 = v2;
  v3 = start__hmf_once_t3;
  v4 = v2;
  if (v3 != -1)
  {
    dispatch_once(&start__hmf_once_t3, block);
  }
}

+ (id)createWithRadarInitiator:(id)a3
{
  v3 = a3;
  v4 = +[HMDThreadMonitor sharedInstance];
  v5 = v4;
  if (v4)
  {
    [v4 resetWithRadarInitiator:v3];
  }

  return v5;
}

void __34__HMDThreadMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HMDThreadMonitor);
  v1 = sharedInstance__hmf_once_v1;
  sharedInstance__hmf_once_v1 = v0;
}

@end