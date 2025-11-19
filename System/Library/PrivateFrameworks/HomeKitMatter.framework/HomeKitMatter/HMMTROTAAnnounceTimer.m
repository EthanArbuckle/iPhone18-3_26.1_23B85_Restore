@interface HMMTROTAAnnounceTimer
+ (id)logCategory;
- (HMMTRAccessoryServer)server;
- (HMMTROTAAnnounceTimer)initWithServer:(id)a3 nodeId:(id)a4 endpoint:(id)a5 queue:(id)a6;
- (id)logIdentifier;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)a3;
@end

@implementation HMMTROTAAnnounceTimer

- (HMMTRAccessoryServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

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
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMMTROTAAnnounceTimer *)v6 server];
    *buf = 138543618;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@OTA Announce triggered for [%@]", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [HMMTRSoftwareUpdateProviderQueryImageRequestParams alloc];
  WeakRetained = objc_loadWeakRetained(&v6->_server);
  v12 = [WeakRetained vendorID];
  v13 = objc_loadWeakRetained(&v6->_server);
  v14 = [v13 productID];
  v15 = objc_loadWeakRetained(&v6->_server);
  v16 = [v15 softwareVersionNumber];
  v17 = [(HMMTRSoftwareUpdateProviderQueryImageRequestParams *)v10 initWithVendorID:v12 productId:v14 softwareVersion:v16 protocolsSupported:&unk_283EE92A0 hardwareVersion:0 location:0 requestorCanConsent:&unk_283EE80B8 metadataForProvider:0];

  objc_initWeak(buf, v6);
  v18 = [(HMMTROTAAnnounceTimer *)v6 server];
  v19 = [v18 browser];
  v20 = [v19 softwareUpdateProvider];
  v21 = objc_loadWeakRetained(&v6->_server);
  v22 = [v21 currentPairing];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __38__HMMTROTAAnnounceTimer_timerDidFire___block_invoke;
  v24[3] = &unk_2786EDE88;
  objc_copyWeak(&v25, buf);
  [v20 triggerQueryImageWithPairing:v22 accessoryInitiated:0 requestParams:v17 completionHandler:v24];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);

  v23 = *MEMORY[0x277D85DE8];
}

void __38__HMMTROTAAnnounceTimer_timerDidFire___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v11;
      v25 = 2112;
      v26 = v6;
      v12 = "%{public}@Cannot get the status of the software update, ignore calling announceOTAProvider cmd %@.";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_7:
      _os_log_impl(&dword_22AEAE000, v13, v14, v12, buf, v15);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v16 = [v5 status];
  v17 = [v16 integerValue];

  if (v17)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v11;
      v12 = "%{public}@The software update is not available yet, no need to call announceOTAProvider cmd";
      v13 = v10;
      v14 = OS_LOG_TYPE_INFO;
      v15 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (WeakRetained)
  {
    v19 = [WeakRetained server];
    v20 = [WeakRetained nodeId];
    v21 = [WeakRetained endpoint];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __38__HMMTROTAAnnounceTimer_timerDidFire___block_invoke_9;
    v22[3] = &unk_2786EF290;
    v22[4] = WeakRetained;
    [v19 announceOtaProvider:v20 providerEndpoint:v21 immediateAnnouncement:1 delayCounter:0 completionHandler:v22];

    goto LABEL_10;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v10;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@This object is already deallocated, we cannot call announceOTAProvider cmd", buf, 0xCu);
    goto LABEL_8;
  }

LABEL_9:

  objc_autoreleasePoolPop(v8);
LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
}

void __38__HMMTROTAAnnounceTimer_timerDidFire___block_invoke_9(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 32) server];
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      v10 = "%{public}@OTA Announce failed for server:%@ with Error: %@.";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 32) server];
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v10 = "%{public}@OTA Announce completed for server:%@.";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v14 = *MEMORY[0x277D85DE8];
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
    v7 = [(HMMTROTAAnnounceTimer *)v4 server];
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Stop OTA Announce timeout for accessory server [%@]", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [(HMMTROTAAnnounceTimer *)v4 announceTimer];
  [v8 suspend];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    [(HMFTimer *)v4->_announceTimer timeInterval];
    v8 = v7;
    v9 = [(HMMTROTAAnnounceTimer *)v4 server];
    v12 = 138543874;
    v13 = v6;
    v14 = 2048;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting OTA Announce timeout with delay of %f for accessory server [%@]", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v10 = [(HMMTROTAAnnounceTimer *)v4 announceTimer];
  [v10 resume];

  v11 = *MEMORY[0x277D85DE8];
}

- (HMMTROTAAnnounceTimer)initWithServer:(id)a3 nodeId:(id)a4 endpoint:(id)a5 queue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = HMMTROTAAnnounceTimer;
  v14 = [(HMMTROTAAnnounceTimer *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_server, v10);
    objc_storeStrong(&v15->_nodeId, a4);
    objc_storeStrong(&v15->_endpoint, a5);
    v16 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:(arc4random_uniform(0x258u) + 300)];
    announceTimer = v15->_announceTimer;
    v15->_announceTimer = v16;

    [(HMFTimer *)v15->_announceTimer setDelegateQueue:v13];
    [(HMFTimer *)v15->_announceTimer setDelegate:v15];
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8, &__block_literal_global_3821);
  }

  v3 = logCategory__hmf_once_v9;

  return v3;
}

uint64_t __36__HMMTROTAAnnounceTimer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v9 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end