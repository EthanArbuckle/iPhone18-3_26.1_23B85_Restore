@interface HMDPrimaryResidentDiscoveryManager
+ (id)logCategory;
- (HMDPrimaryResidentDiscoveryManager)initWithQueue:(id)a3;
- (HMDPrimaryResidentDiscoveryManager)initWithQueue:(id)a3 dataSource:(id)a4;
- (HMDPrimaryResidentDiscoveryManagerDelegate)delegate;
- (void)_discoverPrimaryResident;
- (void)_handleDeviceMonitorReachableNotification:(id)a3;
- (void)_removeRetryTimer;
- (void)_startRetryTimer;
- (void)cancel;
- (void)completedDiscoveryWithPrimaryResident:(id)a3 primaryResidentGenerationID:(id)a4 error:(id)a5;
- (void)configureWithContext:(id)a3;
- (void)discoverPrimaryResident;
- (void)sendCheckForResidentsInHomeNotification;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDPrimaryResidentDiscoveryManager

uint64_t __62__HMDPrimaryResidentDiscoveryManager__discoverPrimaryResident__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  [v4 discoveryManager:*(a1 + 32) didCompleteInitialDiscoveryAttemptWithError:v3];

  v5 = v3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  return 2;
}

- (HMDPrimaryResidentDiscoveryManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)timerDidFire:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 56, 1);
  }

  else
  {
    Property = 0;
  }

  if (Property == v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Primary resident discovery retry timer fired", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDPrimaryResidentDiscoveryManager *)v8 _discoverPrimaryResident];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeviceMonitorReachableNotification:(id)a3
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMDPrimaryResidentDiscoveryManager__handleDeviceMonitorReachableNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __80__HMDPrimaryResidentDiscoveryManager__handleDeviceMonitorReachableNotification___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[4];
  }

  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 40));
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [v3 remoteDeviceMonitorFromContext:WeakRetained];

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = objc_getProperty(v8, v7, 56, 1);
    if (v9)
    {
      v10 = v9;
      v11 = [v6 isReachable];

      if (v11)
      {
        v12 = objc_autoreleasePoolPush();
        v13 = *(a1 + 32);
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          v17 = 138543362;
          v18 = v15;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Current device is now reachable. Resetting retry timer and running discovery if it's not running already.", &v17, 0xCu);
        }

        objc_autoreleasePoolPop(v12);
        [*(a1 + 32) discoverPrimaryResident];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_removeRetryTimer
{
  if (self)
  {
    [objc_getProperty(self a2];

    objc_setProperty_atomic(self, v4, 0, 56);
  }

  else
  {

    [0 cancel];
  }
}

- (void)_startRetryTimer
{
  v2 = self;
  if (self)
  {
    if (objc_getProperty(self, a2, 56, 1))
    {
LABEL_7:
      Property = objc_getProperty(v2, v3, 56, 1);
      goto LABEL_8;
    }

    self = v2->_dataSource;
  }

  v4 = [(HMDPrimaryResidentDiscoveryManager *)self createBackoffTimer];
  v6 = v4;
  if (v2)
  {
    objc_setProperty_atomic(v2, v5, v4, 56);

    [objc_getProperty(v2 v7];
    v8 = v2->_queue;
    v10 = objc_getProperty(v2, v9, 56, 1);
  }

  else
  {

    [0 setDelegate:0];
    v8 = 0;
    v10 = 0;
  }

  [v10 setDelegateQueue:v8];

  if (v2)
  {
    goto LABEL_7;
  }

  Property = 0;
LABEL_8:

  [Property resume];
}

- (void)completedDiscoveryWithPrimaryResident:(id)a3 primaryResidentGenerationID:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(HMDPrimaryResidentDiscoveryManager *)self _removeRetryTimer];
  v11 = [(HMDPrimaryResidentDiscoveryManager *)self delegate];
  [v11 discoveryManager:self didCompleteDiscoveryWithPrimaryResidentDevice:v10 primaryResidentGenerationID:v9 error:v8];
}

- (void)sendCheckForResidentsInHomeNotification
{
  v22 = *MEMORY[0x277D85DE8];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [WeakRetained home];
  if (v4)
  {
    v5 = [WeakRetained availableResidentDevices];
    v6 = [v5 count];

    if (v6)
    {
      if (self)
      {
        dataSource = self->_dataSource;
      }

      else
      {
        dataSource = 0;
      }

      v8 = dataSource;
      v9 = [(HMDPrimaryResidentDiscoveryManagerDataSource *)v8 notificationCenter];
      v10 = [v4 uuid];
      v11 = [v10 UUIDString];
      v19 = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      [v9 postNotificationName:@"HMDPrimaryResidentDiscoveryFindResidentsNotification" object:0 userInfo:v12];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Home is nil. Not sending HMDPrimaryResidentDiscoveryFindResidentsNotification.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_discoverPrimaryResident
{
  v40 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    dispatch_assert_queue_V2(0);
    goto LABEL_8;
  }

  dispatch_assert_queue_V2(self->_queue);
  if (!objc_getProperty(self, v3, 48, 1))
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      [objc_getProperty(self v5];
      v7 = [v6 home];
      v8 = [v7 homeManager];

      v9 = [v8 currentAccessorySetupMetricDispatcher];
      [v9 markSetupBeginStage:14 error:0];

      v10 = [objc_alloc(MEMORY[0x277D0F7A8]) initWithQueue:self->_queue];
      v11 = self->_dataSource;
      v12 = [(HMDPrimaryResidentDiscoveryManagerDataSource *)v11 createPrimaryResidentDiscoveryOperationWithContext:v6];
      objc_setProperty_atomic(self, v13, v12, 48);

      v15 = [objc_getProperty(self v14];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __62__HMDPrimaryResidentDiscoveryManager__discoverPrimaryResident__block_invoke;
      v37[3] = &unk_2786795F8;
      v37[4] = self;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __62__HMDPrimaryResidentDiscoveryManager__discoverPrimaryResident__block_invoke_84;
      v36[3] = &unk_278689CD8;
      v36[4] = self;
      v16 = [v15 inContext:v10 then:v37 orRecover:v36];

      v18 = [objc_getProperty(self v17];
      v34[4] = self;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __62__HMDPrimaryResidentDiscoveryManager__discoverPrimaryResident__block_invoke_86;
      v35[3] = &unk_278689CB0;
      v35[4] = self;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __62__HMDPrimaryResidentDiscoveryManager__discoverPrimaryResident__block_invoke_2;
      v34[3] = &unk_278689CD8;
      v19 = [v18 inContext:v10 then:v35 orRecover:v34];

      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Scheduling primary resident discovery operation", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      objc_initWeak(buf, v21);
      v24 = self->_dataSource;
      v25 = [(HMDPrimaryResidentDiscoveryManagerDataSource *)v24 transportStartFutureFromContext:v6];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __62__HMDPrimaryResidentDiscoveryManager__discoverPrimaryResident__block_invoke_88;
      v32[3] = &unk_278685A80;
      objc_copyWeak(&v33, buf);
      v26 = [v25 inContext:v10 then:v32];

      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);

LABEL_11:
      goto LABEL_12;
    }

LABEL_8:
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v30;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Cannot perform the operation because the resident manager context is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [(HMDPrimaryResidentDiscoveryManager *)v28 completedDiscoveryWithPrimaryResident:0 primaryResidentGenerationID:0 error:v6];
    goto LABEL_11;
  }

LABEL_12:
  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __62__HMDPrimaryResidentDiscoveryManager__discoverPrimaryResident__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 currentPrimaryResident];
  v6 = [v3 currentPrimaryResidentGenerationID];
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v5, 48, 1);
  }

  v9 = [Property logEvent];
  v10 = *(a1 + 32);
  if (v10)
  {
    objc_setProperty_atomic(v10, v8, 0, 48);
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v14;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Primary resident discovery operation completed with: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = *(v15 + 32);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v16 logEventSubmitter];
  [v17 submitLogEvent:v9];

  [*(a1 + 32) completedDiscoveryWithPrimaryResident:v4 primaryResidentGenerationID:v6 error:0];
  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __62__HMDPrimaryResidentDiscoveryManager__discoverPrimaryResident__block_invoke_84(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 48, 1);
  }

  v6 = [Property error];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  v11 = *(a1 + 32);
  if (v11)
  {
    v11 = objc_getProperty(v11, v10, 48, 1);
  }

  v13 = [v11 logEvent];
  v14 = *(a1 + 32);
  if (v14)
  {
    objc_setProperty_atomic(v14, v12, 0, 48);
  }

  if ([v9 isHMFError] && objc_msgSend(v9, "code") == 12)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v36 = 138543362;
      v37 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Primary discovery operation canceled", &v36, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    [*(a1 + 32) completedDiscoveryWithPrimaryResident:0 primaryResidentGenerationID:0 error:v9];
  }

  else
  {
    [*(a1 + 32) _startRetryTimer];
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = *(a1 + 32);
      if (v24)
      {
        v24 = objc_getProperty(v24, v22, 56, 1);
      }

      v25 = [v24 fireDate];
      [v25 timeIntervalSinceNow];
      v36 = 138543874;
      v37 = v23;
      v38 = 2112;
      v39 = v9;
      v40 = 2048;
      v41 = v26;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Primary discovery failed with error: %@, retrying after %.03f seconds", &v36, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v27 = *(a1 + 32);
    if (v27)
    {
      v28 = *(v27 + 32);
    }

    else
    {
      v28 = 0;
    }

    v29 = [v28 logEventSubmitter];
    [v29 submitLogEvent:v13];

    [*(a1 + 32) sendCheckForResidentsInHomeNotification];
    v30 = [*(a1 + 32) delegate];
    [v30 discoveryManager:*(a1 + 32) didNotCompleteDiscoveryWithError:v9];
  }

  v31 = v9;
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v34 = *MEMORY[0x277D85DE8];
  return 2;
}

uint64_t __62__HMDPrimaryResidentDiscoveryManager__discoverPrimaryResident__block_invoke_86(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 discoveryManager:*(a1 + 32) didCompleteInitialDiscoveryAttemptWithError:0];

  return 1;
}

uint64_t __62__HMDPrimaryResidentDiscoveryManager__discoverPrimaryResident__block_invoke_88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = objc_getProperty(WeakRetained, v2, 48, 1);
  }

  [WeakRetained run];

  return 1;
}

- (void)cancel
{
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(self->_queue);
    if (objc_getProperty(self, v3, 48, 1))
    {
      v5 = objc_autoreleasePoolPush();
      v6 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        *buf = 138543362;
        v15 = v8;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Cancelling primary resident discovery operation.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      [objc_getProperty(v6 v9];
      goto LABEL_6;
    }

    if (!objc_getProperty(self, v4, 56, 1))
    {
LABEL_6:
      v10 = *MEMORY[0x277D85DE8];
      return;
    }

    v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
    [(HMDPrimaryResidentDiscoveryManager *)self completedDiscoveryWithPrimaryResident:0 primaryResidentGenerationID:0 error:?];
    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = *MEMORY[0x277D85DE8];

    dispatch_assert_queue_V2(0);
  }
}

- (void)discoverPrimaryResident
{
  v2 = self;
  if (self)
  {
    self = self->_queue;
  }

  dispatch_assert_queue_V2(&self->super);

  [(HMDPrimaryResidentDiscoveryManager *)v2 _discoverPrimaryResident];
}

- (void)configureWithContext:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_context, v4);
  v5 = [v4 home];
  v6 = [v5 uuid];
  v7 = [v6 UUIDString];
  logIdentifier = self->_logIdentifier;
  self->_logIdentifier = v7;

  v11 = [(HMDPrimaryResidentDiscoveryManagerDataSource *)self->_dataSource remoteDeviceMonitorFromContext:v4];

  v9 = self->_dataSource;
  v10 = [(HMDPrimaryResidentDiscoveryManagerDataSource *)v9 notificationCenter];
  [v10 addObserver:self selector:sel__handleDeviceMonitorReachableNotification_ name:@"HMDRemoteDeviceMonitorReachableNotification" object:v11];
}

- (HMDPrimaryResidentDiscoveryManager)initWithQueue:(id)a3 dataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HMDPrimaryResidentDiscoveryManager;
  v9 = [(HMDPrimaryResidentDiscoveryManager *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    logIdentifier = v10->_logIdentifier;
    v10->_logIdentifier = @"<unconfigured>";

    objc_storeStrong(&v10->_dataSource, a4);
  }

  return v10;
}

- (HMDPrimaryResidentDiscoveryManager)initWithQueue:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HMDPrimaryResidentDiscoveryManagerDefaultDataSource);
  v6 = [(HMDPrimaryResidentDiscoveryManager *)self initWithQueue:v4 dataSource:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_124643 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_124643, &__block_literal_global_124644);
  }

  v3 = logCategory__hmf_once_v10_124645;

  return v3;
}

void __49__HMDPrimaryResidentDiscoveryManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_124645;
  logCategory__hmf_once_v10_124645 = v1;
}

@end