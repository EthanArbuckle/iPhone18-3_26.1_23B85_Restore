@interface HMDSharedHomeUpdateHandler
+ (id)logCategory;
- (BOOL)pendingRequestDataFromResident;
- (HMDHome)home;
- (HMDSharedHomeUpdateSession)pendingRequestDataFromResidentSession;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)logIdentifier;
- (void)_evaluateNeedForSync;
- (void)_receivedHomeDataFromSourceVersion:(id)version forceUpdateVersion:(BOOL)updateVersion completion:(id)completion;
- (void)configureWithHome:(id)home;
- (void)didCompleteHomeUpdateSession:(id)session withError:(id)error;
- (void)handleHomeCloudZoneReadyNotification:(id)notification;
- (void)pause;
- (void)receivedHomeDataFromSourceVersion:(id)version forceUpdateVersion:(BOOL)updateVersion completion:(id)completion;
- (void)registerForMessages;
- (void)requestHomeDataSync;
- (void)residentsChanged:(id)changed;
- (void)resume;
- (void)setPendingRequestDataFromResidentSession:(id)session;
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

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  pendingRequestDataFromResidentSession = [(HMDSharedHomeUpdateHandler *)self pendingRequestDataFromResidentSession];
  v7 = [pendingRequestDataFromResidentSession dumpStateWithPrivacyLevel:level];
  [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x277D0F168]];

  v8 = [dictionary copy];

  return v8;
}

- (void)didCompleteHomeUpdateSession:(id)session withError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  pendingRequestDataFromResidentSession = [(HMDSharedHomeUpdateHandler *)self pendingRequestDataFromResidentSession];

  if (pendingRequestDataFromResidentSession == sessionCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v12;
      v16 = 2112;
      v17 = sessionCopy;
      v18 = 2112;
      v19 = errorCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@%@ is complete with error %@, stopping", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDSharedHomeUpdateHandler *)selfCopy setPendingRequestDataFromResidentSession:0];
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

- (void)setPendingRequestDataFromResidentSession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock_with_options();
  pendingRequestDataFromResidentSession = self->_pendingRequestDataFromResidentSession;
  self->_pendingRequestDataFromResidentSession = sessionCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)pendingRequestDataFromResident
{
  pendingRequestDataFromResidentSession = [(HMDSharedHomeUpdateHandler *)self pendingRequestDataFromResidentSession];

  return pendingRequestDataFromResidentSession != 0;
}

- (void)_receivedHomeDataFromSourceVersion:(id)version forceUpdateVersion:(BOOL)updateVersion completion:(id)completion
{
  updateVersionCopy = updateVersion;
  v40 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  completionCopy = completion;
  v10 = +[HMDHomeKitVersion currentVersion];
  if (([versionCopy isEqualToVersion:v10] & 1) != 0 || objc_msgSend(versionCopy, "isGreaterThanVersion:", v10))
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v17;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Remote version is less than local version", buf, 0xCu);
    }

    v15 = versionCopy;
  }

  objc_autoreleasePoolPop(v11);
  v18 = v15;
  home = [(HMDSharedHomeUpdateHandler *)self home];
  sharedHomeSourceVersion = [home sharedHomeSourceVersion];
  if (sharedHomeSourceVersion && ([v18 isGreaterThanVersion:sharedHomeSourceVersion] & 1) == 0 && (objc_msgSend(v18, "isEqualToVersion:", sharedHomeSourceVersion) || !updateVersionCopy))
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
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
    v25 = [home emptyModelObjectWithChangeType:2];
    [v25 setSharedHomeSourceVersion:v18];
    backingStore = [home backingStore];
    v27 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v28 = [backingStore transaction:@"Update Shared Home Source Version" options:v27];

    [v28 add:v25 withMessage:0];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __95__HMDSharedHomeUpdateHandler__receivedHomeDataFromSourceVersion_forceUpdateVersion_completion___block_invoke;
    v34[3] = &unk_279735558;
    v35 = completionCopy;
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

- (void)receivedHomeDataFromSourceVersion:(id)version forceUpdateVersion:(BOOL)updateVersion completion:(id)completion
{
  versionCopy = version;
  completionCopy = completion;
  workQueue = [(HMDSharedHomeUpdateHandler *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__HMDSharedHomeUpdateHandler_receivedHomeDataFromSourceVersion_forceUpdateVersion_completion___block_invoke;
  v13[3] = &unk_279732430;
  v13[4] = self;
  v14 = versionCopy;
  updateVersionCopy = updateVersion;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = versionCopy;
  dispatch_async(workQueue, v13);
}

- (void)_evaluateNeedForSync
{
  v43 = *MEMORY[0x277D85DE8];
  pendingRequestDataFromResidentSession = [(HMDSharedHomeUpdateHandler *)self pendingRequestDataFromResidentSession];

  if (pendingRequestDataFromResidentSession)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    home = [(HMDSharedHomeUpdateHandler *)self home];
    v9 = +[HMDHomeKitVersion currentVersion];
    sharedHomeSourceVersion = [home sharedHomeSourceVersion];
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v38 = v14;
      v39 = 2112;
      v40 = sharedHomeSourceVersion;
      v41 = 2112;
      v42 = v9;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Current source version %@, device version is %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    if ([v9 isGreaterThanVersion:sharedHomeSourceVersion])
    {
      if ([(HMDSharedHomeUpdateHandler *)selfCopy2 firstFetchComplete])
      {
        currentUser = [home currentUser];
        v16 = objc_autoreleasePoolPush();
        v17 = selfCopy2;
        v18 = HMFGetOSLogHandle();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
        if (currentUser)
        {
          if (v19)
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543362;
            v38 = v20;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Pending request is set to YES, starting request for data sync", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v16);
          pairingUsername = [currentUser pairingUsername];
          v36 = pairingUsername;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

          v23 = [HMDSharedHomeUpdateSession alloc];
          workQueue = [(HMDSharedHomeUpdateHandler *)v17 workQueue];
          homeManager = [home homeManager];
          messageDispatcher = [homeManager messageDispatcher];
          v27 = [(HMDSharedHomeUpdateSession *)v23 initWithHome:home delegate:v17 workQueue:workQueue messagePayload:v22 messageDispatcher:messageDispatcher];
          [(HMDSharedHomeUpdateHandler *)v17 setPendingRequestDataFromResidentSession:v27];

          pendingRequestDataFromResidentSession2 = [(HMDSharedHomeUpdateHandler *)v17 pendingRequestDataFromResidentSession];
          [pendingRequestDataFromResidentSession2 requestDataSync];
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
        v30 = selfCopy2;
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
  workQueue = [(HMDSharedHomeUpdateHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDSharedHomeUpdateHandler_requestHomeDataSync__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
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

- (void)handleHomeCloudZoneReadyNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDSharedHomeUpdateHandler *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HMDSharedHomeUpdateHandler_handleHomeCloudZoneReadyNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
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

- (void)residentsChanged:(id)changed
{
  workQueue = [(HMDSharedHomeUpdateHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDSharedHomeUpdateHandler_residentsChanged___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
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
  workQueue = [(HMDSharedHomeUpdateHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMDSharedHomeUpdateHandler_resume__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
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
  workQueue = [(HMDSharedHomeUpdateHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDSharedHomeUpdateHandler_pause__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
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
  home = [(HMDSharedHomeUpdateHandler *)self home];
  v3 = MEMORY[0x277CCACA8];
  name = [home name];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];
  v7 = [v3 stringWithFormat:@"%@/%@", name, uUIDString];

  return v7;
}

- (void)registerForMessages
{
  home = [(HMDSharedHomeUpdateHandler *)self home];
  residentDeviceManager = [home residentDeviceManager];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_residentsChanged_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:residentDeviceManager];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_handleHomeCloudZoneReadyNotification_ name:@"HMDCloudZoneReadyNotification" object:0];
}

- (void)configureWithHome:(id)home
{
  obj = home;
  workQueue = [obj workQueue];
  workQueue = self->_workQueue;
  self->_workQueue = workQueue;

  objc_storeWeak(&self->_home, obj);
}

@end