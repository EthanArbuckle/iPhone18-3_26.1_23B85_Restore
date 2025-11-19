@interface HMDMTSPairingServer
+ (id)logCategory;
- (HMDMTSPairingServer)initWithAccessoryBrowser:(id)a3;
- (HMDMTSPairingServer)initWithSystemCommissionerPairingManager:(id)a3;
- (void)fetchDevicePairingsForSystemCommissionerPairingUUID:(id)a3 completionHandler:(id)a4;
- (void)fetchSystemCommissionerPairingsWithCompletionHandler:(id)a3;
- (void)openCommissioningWindowForSystemCommissionerPairingUUID:(id)a3 duration:(double)a4 completionHandler:(id)a5;
- (void)readCommissioningWindowStatusForSystemCommissionerPairingUUID:(id)a3 completionHandler:(id)a4;
- (void)removeAllDevicePairingsForSystemCommissionerPairingUUID:(id)a3 completionHandler:(id)a4;
- (void)removeDevicePairingWithUUID:(id)a3 forSystemCommissionerPairingUUID:(id)a4 completionHandler:(id)a5;
- (void)removeSystemCommissionerPairingWithUUID:(id)a3 completionHandler:(id)a4;
@end

@implementation HMDMTSPairingServer

- (void)removeSystemCommissionerPairingWithUUID:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing system commissioner device pairing with UUID: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDMTSPairingServer *)v9 systemCommissionerPairingManager];
  [v12 removeSystemCommissionerPairingWithUUID:v6 completionHandler:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)fetchSystemCommissionerPairingsWithCompletionHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching system commissioner device pairings", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMTSPairingServer *)v6 systemCommissionerPairingManager];
  [v9 fetchSystemCommissionerPairingsWithCompletionHandler:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)readCommissioningWindowStatusForSystemCommissionerPairingUUID:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Reading commissioning window status for system commissioner pairing UUID: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDMTSPairingServer *)v9 systemCommissionerPairingManager];
  [v12 readCommissioningWindowStatusForSystemCommissionerPairingUUID:v6 completionHandler:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)openCommissioningWindowForSystemCommissionerPairingUUID:(id)a3 duration:(double)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v13;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Opening commissioning window for system commissioner pairing UUID: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [(HMDMTSPairingServer *)v11 systemCommissionerPairingManager];
  [v14 openCommissioningWindowForSystemCommissionerPairingUUID:v8 duration:v9 completionHandler:a4];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeAllDevicePairingsForSystemCommissionerPairingUUID:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing all device pairings for system commissioner pairing UUID: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDMTSPairingServer *)v9 systemCommissionerPairingManager];
  [v12 removeAllDevicePairingsForSystemCommissionerPairingUUID:v6 completionHandler:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeDevicePairingWithUUID:(id)a3 forSystemCommissionerPairingUUID:(id)a4 completionHandler:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v14;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Removing device pairing with UUID: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMDMTSPairingServer *)v12 systemCommissionerPairingManager];
  [v15 removeDevicePairingWithUUID:v8 forSystemCommissionerPairingUUID:v9 completionHandler:v10];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)fetchDevicePairingsForSystemCommissionerPairingUUID:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching all device pairings for system commissioner device pairing with UUID: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDMTSPairingServer *)v9 systemCommissionerPairingManager];
  [v12 fetchDevicePairingsForSystemCommissionerPairingUUID:v6 completionHandler:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (HMDMTSPairingServer)initWithSystemCommissionerPairingManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v13.receiver = self;
    v13.super_class = HMDMTSPairingServer;
    v7 = [(HMDMTSPairingServer *)&v13 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_systemCommissionerPairingManager, a3);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return [(HMDMTSPairingServer *)v10 initWithAccessoryBrowser:v11, v12];
  }
}

- (HMDMTSPairingServer)initWithAccessoryBrowser:(id)a3
{
  v4 = [a3 chipAccessoryServerBrowser];
  v5 = [v4 systemCommissionerPairingManager];
  v6 = [(HMDMTSPairingServer *)self initWithSystemCommissionerPairingManager:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_165371 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_165371, &__block_literal_global_165372);
  }

  v3 = logCategory__hmf_once_v8_165373;

  return v3;
}

uint64_t __34__HMDMTSPairingServer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_165373;
  logCategory__hmf_once_v8_165373 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end