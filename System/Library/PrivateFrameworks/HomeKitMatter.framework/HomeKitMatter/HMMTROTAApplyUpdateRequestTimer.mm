@interface HMMTROTAApplyUpdateRequestTimer
+ (id)logCategory;
- (HMMTRAccessoryServer)server;
- (HMMTROTAApplyUpdateRequestTimer)initWithServer:(id)a3 otaProvider:(id)a4 queue:(id)a5;
- (HMMTROTAProviderDelegate)otaProvider;
- (id)logIdentifier;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)a3;
@end

@implementation HMMTROTAApplyUpdateRequestTimer

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
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMMTROTAApplyUpdateRequestTimer *)v6 server];
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@OTA apply update request timed out for accessory server [%@]", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMMTROTAApplyUpdateRequestTimer *)v6 otaProvider];
  v11 = [(HMMTROTAApplyUpdateRequestTimer *)v6 server];
  [v10 applyUpdateRequestTimerExpiredForAccessoryServer:v11];

  v12 = *MEMORY[0x277D85DE8];
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
    v7 = [(HMMTROTAApplyUpdateRequestTimer *)v4 server];
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Stop OTA apply update request timeout for accessory server [%@]", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [(HMMTROTAApplyUpdateRequestTimer *)v4 updateTimer];
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
    v7 = [(HMMTROTAApplyUpdateRequestTimer *)v4 server];
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting OTA apply update request timeout for accessory server [%@]", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [(HMMTROTAApplyUpdateRequestTimer *)v4 updateTimer];
  [v8 resume];

  v9 = *MEMORY[0x277D85DE8];
}

- (HMMTROTAApplyUpdateRequestTimer)initWithServer:(id)a3 otaProvider:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HMMTROTAApplyUpdateRequestTimer;
  v11 = [(HMMTROTAApplyUpdateRequestTimer *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_server, v8);
    objc_storeWeak(&v12->_otaProvider, v9);
    v13 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:300.0];
    updateTimer = v12->_updateTimer;
    v12->_updateTimer = v13;

    [(HMFTimer *)v12->_updateTimer setDelegateQueue:v10];
    [(HMFTimer *)v12->_updateTimer setDelegate:v12];
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_1357 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_1357, &__block_literal_global_1358);
  }

  v3 = logCategory__hmf_once_v4_1359;

  return v3;
}

uint64_t __46__HMMTROTAApplyUpdateRequestTimer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v4_1359 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end