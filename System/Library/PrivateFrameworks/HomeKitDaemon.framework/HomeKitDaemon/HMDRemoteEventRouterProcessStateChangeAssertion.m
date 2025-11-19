@interface HMDRemoteEventRouterProcessStateChangeAssertion
+ (id)logCategory;
- (HMDRemoteEventRouterProcessStateChangeAssertion)initWithQueue:(id)a3 timerProvider:(id)a4 applicationsAndIntervals:(id)a5 dataSource:(id)a6;
- (HMDRemoteEventRouterProcessStateChangeAssertionDataSource)dataSource;
- (HMETimerProvider)timerProvider;
- (id)_enableBackgroundTimerWithBundleIdentifier:(id)a3;
- (void)_backgroundTimerDidExpire:(id)a3;
- (void)_removeBackgroundTimer:(id)a3;
- (void)handleProcessWithBundleIdentifier:(id)a3 updatedIsActive:(BOOL)a4;
@end

@implementation HMDRemoteEventRouterProcessStateChangeAssertion

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_210222 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_210222, &__block_literal_global_210223);
  }

  v3 = logCategory__hmf_once_v11_210224;

  return v3;
}

- (HMDRemoteEventRouterProcessStateChangeAssertionDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMETimerProvider)timerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_timerProvider);

  return WeakRetained;
}

- (void)_backgroundTimerDidExpire:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)self backgroundProcesses];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v32 = 138543874;
    v33 = v11;
    v34 = 2112;
    v35 = v4;
    v36 = 2112;
    v37 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@bundleIdentifier: %@ backgroundTimer: %@ expired.", &v32, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    [(HMDRemoteEventRouterProcessStateChangeAssertion *)v9 _removeBackgroundTimer:v7];
    v12 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)v9 backgroundProcesses];
    [v12 removeObjectForKey:v4];
  }

  v13 = objc_autoreleasePoolPush();
  v14 = v9;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)v14 foregroundProcesses];
    v18 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)v14 backgroundProcesses];
    v32 = 138543874;
    v33 = v16;
    v34 = 2112;
    v35 = v17;
    v36 = 2112;
    v37 = v18;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@foregroundProcesses %@, backgroundProcesses %@", &v32, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v19 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)v14 foregroundProcesses];
  if ([v19 hmf_isEmpty])
  {
    v20 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)v14 backgroundProcesses];
    v21 = [v20 count] != 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = v14;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    v26 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)v23 eventRouterActiveAssertion];
    v27 = HMFBooleanToString();
    v28 = HMFBooleanToString();
    v32 = 138543874;
    v33 = v25;
    v34 = 2112;
    v35 = v27;
    v36 = 2112;
    v37 = v28;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@self.isProcessForeground %@, isProcessForeground %@", &v32, 0x20u);
  }

  objc_autoreleasePoolPop(v22);
  if (!v21)
  {
    v29 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)v23 eventRouterActiveAssertion];

    if (v29)
    {
      v30 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)v23 eventRouterActiveAssertion];
      [v30 cancel];

      [(HMDRemoteEventRouterProcessStateChangeAssertion *)v23 setEventRouterActiveAssertion:0];
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_removeBackgroundTimer:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)self queue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Remove backgroundTimer: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [v4 suspend];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_enableBackgroundTimerWithBundleIdentifier:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)self applicationsAndIntervals];
  v7 = [v6 objectForKeyedSubscript:v4];
  [v7 doubleValue];
  v9 = v8;

  v10 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)self timerProvider];
  v11 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)self queue];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __94__HMDRemoteEventRouterProcessStateChangeAssertion__enableBackgroundTimerWithBundleIdentifier___block_invoke;
  v24 = &unk_27868A750;
  v25 = self;
  v12 = v4;
  v26 = v12;
  v13 = [v10 timerWithQueue:v11 interval:&v21 timerFireHandler:v9];

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:{v9, v21, v22, v23, v24, v25}];
    *buf = 138543874;
    v28 = v17;
    v29 = 2112;
    v30 = v13;
    v31 = 2112;
    v32 = v18;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Starting backgroundTimer: %@ interval: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  [v13 resume];

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)handleProcessWithBundleIdentifier:(id)a3 updatedIsActive:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)self applicationsAndIntervals];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    v9 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__HMDRemoteEventRouterProcessStateChangeAssertion_handleProcessWithBundleIdentifier_updatedIsActive___block_invoke;
    block[3] = &unk_278688BD0;
    block[4] = self;
    v16 = v6;
    v17 = v4;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v19 = v13;
      v20 = 2112;
      v21 = v6;
      v22 = 1024;
      v23 = v4;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring foreground state change for application %@ with isActive: %{BOOL}d", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __101__HMDRemoteEventRouterProcessStateChangeAssertion_handleProcessWithBundleIdentifier_updatedIsActive___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v37 = 138543874;
    v38 = v5;
    v39 = 2112;
    v40 = v6;
    v41 = 1024;
    LODWORD(v42) = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Application %@ isActive state changed to %{BOOL}d", &v37, 0x1Cu);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  v9 = [*(a1 + 32) foregroundProcesses];
  v10 = v9;
  v11 = *(a1 + 40);
  if (v8 == 1)
  {
    [v9 addObject:v11];

    v12 = [*(a1 + 32) backgroundProcesses];
    v13 = [v12 objectForKeyedSubscript:*(a1 + 40)];

    if (v13)
    {
      [*(a1 + 32) _removeBackgroundTimer:v13];
      v14 = [*(a1 + 32) backgroundProcesses];
      [v14 removeObjectForKey:*(a1 + 40)];
    }

    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [*(a1 + 32) eventRouterActiveAssertion];
      v20 = HMFBooleanToString();
      v37 = 138543618;
      v38 = v18;
      v39 = 2112;
      v40 = v20;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@self.isProcessForeground %@, isProcessForeground YES", &v37, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [*(a1 + 32) eventRouterActiveAssertion];

    if (!v21)
    {
      v22 = [*(a1 + 32) dataSource];
      v23 = [v22 createEventRouterAssertion];
      [*(a1 + 32) setEventRouterActiveAssertion:v23];

LABEL_13:
    }
  }

  else
  {
    [v9 removeObject:v11];

    v24 = [*(a1 + 32) backgroundProcesses];
    v13 = [v24 objectForKeyedSubscript:*(a1 + 40)];

    if (v13)
    {
      goto LABEL_14;
    }

    v25 = [*(a1 + 32) _enableBackgroundTimerWithBundleIdentifier:*(a1 + 40)];
    if (v25)
    {
      v13 = v25;
      v22 = [*(a1 + 32) backgroundProcesses];
      [v22 setObject:v13 forKey:*(a1 + 40)];
      goto LABEL_13;
    }

    v33 = objc_autoreleasePoolPush();
    v34 = *(a1 + 32);
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      v37 = 138543362;
      v38 = v36;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to enable background timer.", &v37, 0xCu);
    }

    objc_autoreleasePoolPop(v33);
    v13 = 0;
  }

LABEL_14:

  v26 = objc_autoreleasePoolPush();
  v27 = *(a1 + 32);
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    v30 = [*(a1 + 32) foregroundProcesses];
    v31 = [*(a1 + 32) backgroundProcesses];
    v37 = 138543874;
    v38 = v29;
    v39 = 2112;
    v40 = v30;
    v41 = 2112;
    v42 = v31;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@foregroundProcesses %@, backgroundProcesses %@", &v37, 0x20u);
  }

  objc_autoreleasePoolPop(v26);
  v32 = *MEMORY[0x277D85DE8];
}

- (HMDRemoteEventRouterProcessStateChangeAssertion)initWithQueue:(id)a3 timerProvider:(id)a4 applicationsAndIntervals:(id)a5 dataSource:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = HMDRemoteEventRouterProcessStateChangeAssertion;
  v15 = [(HMDRemoteEventRouterProcessStateChangeAssertion *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, a3);
    objc_storeWeak(&v16->_timerProvider, v12);
    objc_storeStrong(&v16->_applicationsAndIntervals, a5);
    objc_storeWeak(&v16->_dataSource, v14);
    eventRouterActiveAssertion = v16->_eventRouterActiveAssertion;
    v16->_eventRouterActiveAssertion = 0;

    v18 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v13, "count")}];
    foregroundProcesses = v16->_foregroundProcesses;
    v16->_foregroundProcesses = v18;

    v20 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v13, "count")}];
    backgroundProcesses = v16->_backgroundProcesses;
    v16->_backgroundProcesses = v20;
  }

  return v16;
}

void __62__HMDRemoteEventRouterProcessStateChangeAssertion_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11_210224;
  logCategory__hmf_once_v11_210224 = v1;
}

@end