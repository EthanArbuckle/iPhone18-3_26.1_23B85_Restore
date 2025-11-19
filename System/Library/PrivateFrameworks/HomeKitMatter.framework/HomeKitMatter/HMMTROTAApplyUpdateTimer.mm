@interface HMMTROTAApplyUpdateTimer
+ (id)logCategory;
- (HMMTRAccessoryServer)server;
- (HMMTROTAApplyUpdateTimer)initWithServer:(id)a3 otaProvider:(id)a4 newVersion:(id)a5 delay:(id)a6 queue:(id)a7;
- (HMMTROTAProviderDelegate)otaProvider;
- (id)logIdentifier;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)a3;
@end

@implementation HMMTROTAApplyUpdateTimer

- (HMMTRAccessoryServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (HMMTROTAProviderDelegate)otaProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_otaProvider);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v5 = [WeakRetained nodeID];
  v6 = objc_loadWeakRetained(&self->_server);
  v7 = [v6 fabricID];
  v8 = [v3 stringWithFormat:@"%@/%@", v5, v7];

  return v8;
}

- (void)timerDidFire:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMMTROTAApplyUpdateTimer *)v6 server];
    *buf = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@OTA apply timed out for accessory server [%@]", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  WeakRetained = objc_loadWeakRetained(&v6->_server);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__HMMTROTAApplyUpdateTimer_timerDidFire___block_invoke;
  v12[3] = &unk_2786F0A58;
  v12[4] = v6;
  [WeakRetained fetchSoftwareVersion:1 completionHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __41__HMMTROTAApplyUpdateTimer_timerDidFire___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      objc_autoreleasePoolPop(v7);
      v14 = 0;
      goto LABEL_6;
    }

    v10 = HMFGetLogIdentifier();
    *v38 = 138543618;
    *&v38[4] = v10;
    *&v38[12] = 2112;
    *&v38[14] = v6;
    v11 = "%{public}@Failed to retrieve software version number: %@";
    v12 = v9;
    v13 = 22;
LABEL_4:
    _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, v11, v38, v13);

    goto LABEL_5;
  }

  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v10 = HMFGetLogIdentifier();
    *v38 = 138543362;
    *&v38[4] = v10;
    v11 = "%{public}@Failed to retrieve software version number, got nil object";
    v12 = v9;
    v13 = 12;
    goto LABEL_4;
  }

  v14 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v14;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  if (!v34)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *v38 = 138543618;
      *&v38[4] = v37;
      *&v38[12] = 2112;
      *&v38[14] = v14;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve software version number, unexpected object: %@", v38, 0x16u);
    }

    goto LABEL_5;
  }

  v35 = [*(a1 + 32) expectedVersion];
  v36 = [v35 isEqualToNumber:v14];

  if (v36)
  {
    v23 = [*(a1 + 32) otaProvider];
    v24 = [*(a1 + 32) server];
    v25 = &unk_283EE8FD0;
    goto LABEL_10;
  }

LABEL_6:
  [*(a1 + 32) setRetryCount:{objc_msgSend(*(a1 + 32), "retryCount", *v38, *&v38[16]) + 1}];
  v15 = objc_autoreleasePoolPush();
  v16 = *(a1 + 32);
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [*(a1 + 32) expectedVersion];
    v20 = [*(a1 + 32) retryCount];
    *v38 = 138544130;
    *&v38[4] = v18;
    *&v38[12] = 2112;
    *&v38[14] = v19;
    *&v38[22] = 2112;
    v39 = v14;
    v40 = 2048;
    v41 = v20;
    _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@Expected Version %@, accessory reported %@ [Attempt %ld].", v38, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  v21 = [*(a1 + 32) retryCount];
  v22 = *(a1 + 32);
  if (v21 >= 7)
  {
    v23 = [v22 otaProvider];
    v24 = [*(a1 + 32) server];
    v25 = &unk_283EE8FE8;
LABEL_10:
    [v23 applyUpdateTimerExpiredForAccessoryServer:v24 softwareVersion:v14 didTimeout:v25];

    goto LABEL_14;
  }

  if ([v22 retryCount] == 1)
  {
    v26 = [*(a1 + 32) updateTimer];
    v27 = [v26 delegateQueue];

    v28 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:300.0];
    [*(a1 + 32) setUpdateTimer:v28];

    v29 = [*(a1 + 32) updateTimer];
    [v29 setDelegateQueue:v27];

    v30 = *(a1 + 32);
    v31 = [v30 updateTimer];
    [v31 setDelegate:v30];
  }

  [*(a1 + 32) start];
LABEL_14:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMMTROTAApplyUpdateTimer *)v4 server];
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Stop OTA apply timeout for accessory server [%@]", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [(HMMTROTAApplyUpdateTimer *)v4 updateTimer];
  [v8 suspend];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMMTROTAApplyUpdateTimer *)v4 server];
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting OTA apply timeout for accessory server [%@]", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [(HMMTROTAApplyUpdateTimer *)v4 updateTimer];
  [v8 resume];

  v9 = *MEMORY[0x277D85DE8];
}

- (HMMTROTAApplyUpdateTimer)initWithServer:(id)a3 otaProvider:(id)a4 newVersion:(id)a5 delay:(id)a6 queue:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = HMMTROTAApplyUpdateTimer;
  v17 = [(HMMTROTAApplyUpdateTimer *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_server, v12);
    objc_storeStrong(&v18->_expectedVersion, a5);
    v18->_retryCount = 0;
    objc_storeWeak(&v18->_otaProvider, v13);
    v19 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:{(objc_msgSend(v15, "integerValue") + 300)}];
    updateTimer = v18->_updateTimer;
    v18->_updateTimer = v19;

    [(HMFTimer *)v18->_updateTimer setDelegateQueue:v16];
    [(HMFTimer *)v18->_updateTimer setDelegate:v18];
  }

  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_11468 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_11468, &__block_literal_global_11469);
  }

  v3 = logCategory__hmf_once_v9_11470;

  return v3;
}

uint64_t __39__HMMTROTAApplyUpdateTimer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_11470;
  logCategory__hmf_once_v9_11470 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end