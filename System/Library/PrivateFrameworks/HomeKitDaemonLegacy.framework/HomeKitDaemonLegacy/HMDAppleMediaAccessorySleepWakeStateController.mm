@interface HMDAppleMediaAccessorySleepWakeStateController
- (HMDAppleMediaAccessorySleepWakeStateController)initWithAccessoryUUID:(id)a3 dataSource:(id)a4;
- (NSUUID)messageTargetUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)dataSource;
- (void)_handleFetchSleepWakeStateMessage:(id)a3;
- (void)configureWithHome:(id)a3 messageDispatcher:(id)a4 workQueue:(id)a5;
- (void)fetchSleepWakeStateWithCompletion:(id)a3;
@end

@implementation HMDAppleMediaAccessorySleepWakeStateController

- (OS_dispatch_queue)messageReceiveQueue
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
    v2 = vars8;
  }

  return self;
}

- (NSUUID)messageTargetUUID
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
    v2 = vars8;
  }

  return self;
}

- (void)_handleFetchSleepWakeStateMessage:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAppleMediaAccessorySleepWakeStateController *)&self->super.super.isa dataSource];
  v6 = [v5 deviceForAppleMediaAccessorySleepWakeStateController:self];
  if ([v6 isCurrentDevice])
  {
    v7 = [v5 currentDeviceProductInfoForAppleMediaAccessorySleepWakeStateController:self];
    v8 = [v7 productClass];
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v8 == 4)
    {
      if (v12)
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v24 = v13;
        v14 = "%{public}@Unsupported attempt to fetch sleep wake state on a non TVOS device";
LABEL_12:
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
      }
    }

    else if (v12)
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v13;
      v14 = "%{public}@Unsupported attempt to fetch sleep wake state on a non ATV device";
      goto LABEL_12;
    }

    objc_autoreleasePoolPop(v9);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v19];

    goto LABEL_14;
  }

  if (([v4 isRemote] & 1) != 0 || objc_msgSend(v4, "isSecureRemote"))
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot relay remote fetch sleep wake message twice", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v4 respondWithError:v7];
  }

  else
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __84__HMDAppleMediaAccessorySleepWakeStateController__handleFetchSleepWakeStateMessage___block_invoke;
    v21[3] = &unk_279734E28;
    v22 = v4;
    [(HMDAppleMediaAccessorySleepWakeStateController *)self fetchSleepWakeStateWithCompletion:v21];
    v7 = v22;
  }

LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
}

- (id)dataSource
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 6);
    v1 = vars8;
  }

  return WeakRetained;
}

void __84__HMDAppleMediaAccessorySleepWakeStateController__handleFetchSleepWakeStateMessage___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *MEMORY[0x277D85DE8];
    v5 = *(a1 + 32);

    [v5 respondWithError:?];
  }

  else
  {
    v9 = *MEMORY[0x277CCFD48];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v10[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v3 respondWithPayload:v7];

    v8 = *MEMORY[0x277D85DE8];
  }
}

- (void)fetchSleepWakeStateWithCompletion:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAppleMediaAccessorySleepWakeStateController *)&self->super.super.isa dataSource];
  v6 = [v5 deviceForAppleMediaAccessorySleepWakeStateController:self];

  if (v6)
  {
    os_unfair_lock_lock_with_options();
    v7 = self->_fetchSleepWakeFuture;
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching sleep wake state with current fetch future: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = &unk_253D4B000;
    if (v7)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277D2C900]);
      objc_storeStrong(&self->_fetchSleepWakeFuture, v7);
      os_unfair_lock_unlock(&self->_lock);
      v17 = v6;
      v18 = [HMDRemoteDeviceMessageDestination alloc];
      v19 = [(HMDAppleMediaAccessorySleepWakeStateController *)v9 messageTargetUUID];
      v20 = [(HMDRemoteDeviceMessageDestination *)v18 initWithTarget:v19 device:v17];

      v21 = [MEMORY[0x277D0F848] messageWithName:*MEMORY[0x277CCFD50] destination:v20 payload:0];
      [v21 setSecureRemote:1];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __80__HMDAppleMediaAccessorySleepWakeStateController__sendSleepWakeMessageToDevice___block_invoke;
      v37 = &unk_279734E00;
      v38 = v9;
      [v21 setResponseHandler:buf];
      v22 = [v17 isCurrentDevice];

      if (v22)
      {
        [(HMDAppleMediaAccessorySleepWakeStateController *)v9 _handleFetchSleepWakeStateMessage:v21];
      }

      else
      {
        [objc_getProperty(v9 v23];
      }

      v12 = &unk_253D4B000;
    }

    v31 = MEMORY[0x277D85DD0];
    v32 = v12[103];
    v24 = v32;
    v33 = __84__HMDAppleMediaAccessorySleepWakeStateController_fetchSleepWakeStateWithCompletion___block_invoke;
    v34 = &unk_279734DD8;
    v25 = v4;
    v35 = v25;
    v26 = [(NAFuture *)v7 addSuccessBlock:&v31];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = v24;
    v29[2] = __84__HMDAppleMediaAccessorySleepWakeStateController_fetchSleepWakeStateWithCompletion___block_invoke_2;
    v29[3] = &unk_279735558;
    v30 = v25;
    v27 = [(NAFuture *)v7 addFailureBlock:v29];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to get current device from AppleMediaAccessorySleepWakeStateControllerDataSource", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    (*(v4 + 2))(v4, 0, v7);
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __84__HMDAppleMediaAccessorySleepWakeStateController_fetchSleepWakeStateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_self();
  if ([v3 unsignedIntValue] != 2)
  {
    [v3 unsignedIntValue];
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void __80__HMDAppleMediaAccessorySleepWakeStateController__sendSleepWakeMessageToDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v8 = *(*(a1 + 32) + 16);
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  *(v9 + 16) = 0;

  os_unfair_lock_unlock(v7 + 2);
  if (v5)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Fetching sleep wake state failed with error: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [v8 finishWithError:v5];
  }

  else
  {
    v15 = [v6 hmf_numberForKey:*MEMORY[0x277CCFD48]];
    if (v15)
    {
      [v8 finishWithResult:v15];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v19;
        v24 = 2112;
        v25 = 0;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Fetching sleep wake state failed, missing sleep wake state key: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
      [v8 finishWithError:v20];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)a3 messageDispatcher:(id)a4 workQueue:(id)a5
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21 = a3;
  if (self)
  {
    v8 = a4;
    objc_setProperty_atomic(self, v9, a5, 24);
    objc_setProperty_atomic(self, v10, v8, 40);

    v11 = v21;
    v12 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v22[0] = v12;
    v13 = [HMDUserMessagePolicy userMessagePolicyWithHome:v11 userPrivilege:0 remoteAccessRequired:1];

    v22[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];

    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v16 = [WeakRetained currentDeviceProductInfoForAppleMediaAccessorySleepWakeStateController:self];

    if ([v16 productClass] == 4)
    {
      v18 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
      v19 = [v14 arrayByAddingObject:v18];

      v14 = v19;
    }

    [objc_getProperty(self v17];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (HMDAppleMediaAccessorySleepWakeStateController)initWithAccessoryUUID:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HMDAppleMediaAccessorySleepWakeStateController;
  v8 = [(HMDAppleMediaAccessorySleepWakeStateController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = [v6 copy];
    accessoryUUID = v9->_accessoryUUID;
    v9->_accessoryUUID = v10;

    objc_storeWeak(&v9->_dataSource, v7);
  }

  return v9;
}

@end