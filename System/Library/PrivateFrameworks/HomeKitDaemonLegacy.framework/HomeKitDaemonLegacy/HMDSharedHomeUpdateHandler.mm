@interface HMDSharedHomeUpdateHandler
+ (id)logCategory;
- (BOOL)pendingRequestDataFromResident;
- (HMDHome)home;
- (HMDSharedHomeUpdateSession)pendingRequestDataFromResidentSession;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)logIdentifier;
- (void)_evaluateNeedForSync;
- (void)_receivedHomeDataFromSourceVersion:(id)a3 forceUpdateVersion:(BOOL)a4 completion:(id)a5;
- (void)configureWithHome:(id)a3;
- (void)didCompleteHomeUpdateSession:(id)a3 withError:(id)a4;
- (void)handleHomeCloudZoneReadyNotification:(id)a3;
- (void)pause;
- (void)receivedHomeDataFromSourceVersion:(id)a3 forceUpdateVersion:(BOOL)a4 completion:(id)a5;
- (void)registerForMessages;
- (void)requestHomeDataSync;
- (void)residentsChanged:(id)a3;
- (void)resume;
- (void)setPendingRequestDataFromResidentSession:(id)a3;
@end

@implementation HMDSharedHomeUpdateHandler

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_74227 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_74227, &__block_literal_global_74228);
  }

  v3 = logCategory__hmf_once_v1_74229;

  return v3;
}

uint64_t __41__HMDSharedHomeUpdateHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_74229;
  logCategory__hmf_once_v1_74229 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(HMDSharedHomeUpdateHandler *)self pendingRequestDataFromResidentSession];
  v7 = [v6 dumpStateWithPrivacyLevel:a3];
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277D0F168]];

  v8 = [v5 copy];

  return v8;
}

- (void)didCompleteHomeUpdateSession:(id)a3 withError:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDSharedHomeUpdateHandler *)self pendingRequestDataFromResidentSession];

  if (v8 == v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v12;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@%@ is complete with error %@, stopping", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDSharedHomeUpdateHandler *)v10 setPendingRequestDataFromResidentSession:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (HMDSharedHomeUpdateSession)pendingRequestDataFromResidentSession
{
  os_unfair_lock_lock_with_options();
  v3 = self->_pendingRequestDataFromResidentSession;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPendingRequestDataFromResidentSession:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  pendingRequestDataFromResidentSession = self->_pendingRequestDataFromResidentSession;
  self->_pendingRequestDataFromResidentSession = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)pendingRequestDataFromResident
{
  v2 = [(HMDSharedHomeUpdateHandler *)self pendingRequestDataFromResidentSession];

  return v2 != 0;
}

- (void)_receivedHomeDataFromSourceVersion:(id)a3 forceUpdateVersion:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = +[HMDHomeKitVersion currentVersion];
  if (([v8 isEqualToVersion:v10] & 1) != 0 || objc_msgSend(v8, "isGreaterThanVersion:", v10))
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Remote version is greater than or equal to local version", buf, 0xCu);
    }

    v15 = v10;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v16 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v17;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Remote version is less than local version", buf, 0xCu);
    }

    v15 = v8;
  }

  objc_autoreleasePoolPop(v11);
  v18 = v15;
  v19 = [(HMDSharedHomeUpdateHandler *)self home];
  v20 = [v19 sharedHomeSourceVersion];
  if (v20 && ([v18 isGreaterThanVersion:v20] & 1) == 0 && (objc_msgSend(v18, "isEqualToVersion:", v20) || !v6))
  {
    v30 = objc_autoreleasePoolPush();
    v31 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v33;
      v38 = 2112;
      v39 = v18;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Leaving shared home source version to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    if (v9)
    {
      (*(v9 + 2))(v9, 0, 0);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v24;
      v38 = 2112;
      v39 = v18;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Updating shared home source version to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [v19 emptyModelObjectWithChangeType:2];
    [v25 setSharedHomeSourceVersion:v18];
    v26 = [v19 backingStore];
    v27 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v28 = [v26 transaction:@"Update Shared Home Source Version" options:v27];

    [v28 add:v25 withMessage:0];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __95__HMDSharedHomeUpdateHandler__receivedHomeDataFromSourceVersion_forceUpdateVersion_completion___block_invoke;
    v34[3] = &unk_279735558;
    v35 = v9;
    [v28 run:v34];
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __95__HMDSharedHomeUpdateHandler__receivedHomeDataFromSourceVersion_forceUpdateVersion_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, a2);
  }

  return result;
}

- (void)receivedHomeDataFromSourceVersion:(id)a3 forceUpdateVersion:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HMDSharedHomeUpdateHandler *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__HMDSharedHomeUpdateHandler_receivedHomeDataFromSourceVersion_forceUpdateVersion_completion___block_invoke;
  v13[3] = &unk_279732430;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)_evaluateNeedForSync
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSharedHomeUpdateHandler *)self pendingRequestDataFromResidentSession];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Sync session already running", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v8 = [(HMDSharedHomeUpdateHandler *)self home];
    v9 = +[HMDHomeKitVersion currentVersion];
    v10 = [v8 sharedHomeSourceVersion];
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v38 = v14;
      v39 = 2112;
      v40 = v10;
      v41 = 2112;
      v42 = v9;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Current source version %@, device version is %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    if ([v9 isGreaterThanVersion:v10])
    {
      if ([(HMDSharedHomeUpdateHandler *)v12 firstFetchComplete])
      {
        v15 = [v8 currentUser];
        v16 = objc_autoreleasePoolPush();
        v17 = v12;
        v18 = HMFGetOSLogHandle();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
        if (v15)
        {
          if (v19)
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543362;
            v38 = v20;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Pending request is set to YES, starting request for data sync", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v16);
          v21 = [v15 pairingUsername];
          v36 = v21;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

          v23 = [HMDSharedHomeUpdateSession alloc];
          v24 = [(HMDSharedHomeUpdateHandler *)v17 workQueue];
          v25 = [v8 homeManager];
          v26 = [v25 messageDispatcher];
          v27 = [(HMDSharedHomeUpdateSession *)v23 initWithHome:v8 delegate:v17 workQueue:v24 messagePayload:v22 messageDispatcher:v26];
          [(HMDSharedHomeUpdateHandler *)v17 setPendingRequestDataFromResidentSession:v27];

          v28 = [(HMDSharedHomeUpdateHandler *)v17 pendingRequestDataFromResidentSession];
          [v28 requestDataSync];
        }

        else
        {
          if (v19)
          {
            v33 = HMFGetLogIdentifier();
            *buf = 138543362;
            v38 = v33;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Current user is nil, cannot continue", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v16);
        }
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = v12;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543362;
          v38 = v32;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Waiting for first fetch to complete", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v29);
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)requestHomeDataSync
{
  v3 = [(HMDSharedHomeUpdateHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDSharedHomeUpdateHandler_requestHomeDataSync__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __49__HMDSharedHomeUpdateHandler_requestHomeDataSync__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Received sync request", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _evaluateNeedForSync];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleHomeCloudZoneReadyNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDSharedHomeUpdateHandler *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HMDSharedHomeUpdateHandler_handleHomeCloudZoneReadyNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __67__HMDSharedHomeUpdateHandler_handleHomeCloudZoneReadyNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 hmf_UUIDForKey:@"HMDCR.id"];

  v4 = [*(a1 + 40) home];
  v5 = [v4 zoneID];
  v6 = HMFEqualObjects();

  if (v6)
  {
    [*(a1 + 40) setFirstFetchComplete:1];
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Received home data zone ready notification", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) _evaluateNeedForSync];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)residentsChanged:(id)a3
{
  v4 = [(HMDSharedHomeUpdateHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDSharedHomeUpdateHandler_residentsChanged___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

void __47__HMDSharedHomeUpdateHandler_residentsChanged___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isSuspended];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Ignoring resident changed/updated notifications during home merge", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    if (v6)
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Received residents changed/updated notification", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) _evaluateNeedForSync];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)resume
{
  v3 = [(HMDSharedHomeUpdateHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMDSharedHomeUpdateHandler_resume__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __36__HMDSharedHomeUpdateHandler_resume__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) home];
    v7 = [v6 name];
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Resuming update handler for home %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setSuspended:0];
  result = [*(a1 + 32) _evaluateNeedForSync];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)pause
{
  v3 = [(HMDSharedHomeUpdateHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDSharedHomeUpdateHandler_pause__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __35__HMDSharedHomeUpdateHandler_pause__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) home];
    v7 = [v6 name];
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Pausing update handler for home %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setSuspended:1];
  result = [*(a1 + 32) setPendingRequestDataFromResidentSession:0];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)logIdentifier
{
  v2 = [(HMDSharedHomeUpdateHandler *)self home];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 name];
  v5 = [v2 uuid];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@/%@", v4, v6];

  return v7;
}

- (void)registerForMessages
{
  v3 = [(HMDSharedHomeUpdateHandler *)self home];
  v6 = [v3 residentDeviceManager];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_residentsChanged_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:v6];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_handleHomeCloudZoneReadyNotification_ name:@"HMDCloudZoneReadyNotification" object:0];
}

- (void)configureWithHome:(id)a3
{
  obj = a3;
  v4 = [obj workQueue];
  workQueue = self->_workQueue;
  self->_workQueue = v4;

  objc_storeWeak(&self->_home, obj);
}

@end