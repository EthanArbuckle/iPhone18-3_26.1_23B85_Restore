@interface HMMTROTAApplyUpdateRequestTimer
+ (id)logCategory;
- (HMMTRAccessoryServer)server;
- (HMMTROTAApplyUpdateRequestTimer)initWithServer:(id)server otaProvider:(id)provider queue:(id)queue;
- (HMMTROTAProviderDelegate)otaProvider;
- (id)logIdentifier;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)fire;
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
  nodeID = [WeakRetained nodeID];
  v6 = objc_loadWeakRetained(&self->_server);
  fabricID = [v6 fabricID];
  v8 = [v3 stringWithFormat:@"%@/%@", nodeID, fabricID];

  return v8;
}

- (void)timerDidFire:(id)fire
{
  v17 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    server = [(HMMTROTAApplyUpdateRequestTimer *)selfCopy server];
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = server;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@OTA apply update request timed out for accessory server [%@]", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  otaProvider = [(HMMTROTAApplyUpdateRequestTimer *)selfCopy otaProvider];
  server2 = [(HMMTROTAApplyUpdateRequestTimer *)selfCopy server];
  [otaProvider applyUpdateRequestTimerExpiredForAccessoryServer:server2];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    server = [(HMMTROTAApplyUpdateRequestTimer *)selfCopy server];
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = server;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Stop OTA apply update request timeout for accessory server [%@]", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  updateTimer = [(HMMTROTAApplyUpdateRequestTimer *)selfCopy updateTimer];
  [updateTimer suspend];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    server = [(HMMTROTAApplyUpdateRequestTimer *)selfCopy server];
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = server;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting OTA apply update request timeout for accessory server [%@]", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  updateTimer = [(HMMTROTAApplyUpdateRequestTimer *)selfCopy updateTimer];
  [updateTimer resume];

  v9 = *MEMORY[0x277D85DE8];
}

- (HMMTROTAApplyUpdateRequestTimer)initWithServer:(id)server otaProvider:(id)provider queue:(id)queue
{
  serverCopy = server;
  providerCopy = provider;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = HMMTROTAApplyUpdateRequestTimer;
  v11 = [(HMMTROTAApplyUpdateRequestTimer *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_server, serverCopy);
    objc_storeWeak(&v12->_otaProvider, providerCopy);
    v13 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:300.0];
    updateTimer = v12->_updateTimer;
    v12->_updateTimer = v13;

    [(HMFTimer *)v12->_updateTimer setDelegateQueue:queueCopy];
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