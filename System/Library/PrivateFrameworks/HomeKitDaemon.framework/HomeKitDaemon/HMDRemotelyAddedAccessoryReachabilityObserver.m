@interface HMDRemotelyAddedAccessoryReachabilityObserver
+ (id)logCategory;
- (HMDRemotelyAddedAccessoryReachabilityObserver)initWithAccessory:(id)a3 message:(id)a4 workQueue:(id)a5;
- (HMDRemotelyAddedAccessoryReachabilityObserver)initWithAccessory:(id)a3 message:(id)a4 workQueue:(id)a5 timer:(id)a6 notificationCenter:(id)a7;
- (id)logIdentifier;
- (void)_respondToMessage;
- (void)start;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDRemotelyAddedAccessoryReachabilityObserver

- (void)timerDidFire:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self timer];

  if (v5 == v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Timed out waiting for added accessory to become reachable so responding to message", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDRemotelyAddedAccessoryReachabilityObserver *)v7 _respondToMessage];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self accessory];
  v3 = [v2 uuid];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)_respondToMessage
{
  v3 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self notificationToken];

  if (v4)
  {
    v5 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self message];
    [v5 respondWithSuccess];

    [(HMDRemotelyAddedAccessoryReachabilityObserver *)self setTimer:0];
    v6 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self notificationCenter];
    v7 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self notificationToken];
    [v6 removeObserver:v7];

    [(HMDRemotelyAddedAccessoryReachabilityObserver *)self setNotificationToken:0];
  }
}

- (void)start
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self notificationToken];

  if (v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)v6 accessory];
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting tracking for remotely added accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__HMDRemotelyAddedAccessoryReachabilityObserver_start__block_invoke;
  aBlock[3] = &unk_27867E608;
  aBlock[4] = v6;
  v10 = _Block_copy(aBlock);
  v11 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)v6 notificationCenter];
  v12 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)v6 accessory];
  v13 = [v11 addObserverForName:@"HMDAccessoryIsReachableNotification" object:v12 queue:0 usingBlock:v10];
  [(HMDRemotelyAddedAccessoryReachabilityObserver *)v6 setNotificationToken:v13];

  v14 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)v6 timer];
  [v14 setDelegate:v6];

  v15 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)v6 workQueue];
  v16 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)v6 timer];
  [v16 setDelegateQueue:v15];

  v17 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)v6 timer];
  [v17 resume];

  v18 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)v6 accessory];
  LODWORD(v16) = [v18 isReachable];

  if (v16)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v6;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Immediately responding to message because added accessory is already reachable", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    [(HMDRemotelyAddedAccessoryReachabilityObserver *)v20 _respondToMessage];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __54__HMDRemotelyAddedAccessoryReachabilityObserver_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDRemotelyAddedAccessoryReachabilityObserver_start__block_invoke_2;
  block[3] = &unk_27868A728;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

uint64_t __54__HMDRemotelyAddedAccessoryReachabilityObserver_start__block_invoke_2(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Pending added accessory became reachable so responding to message", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _respondToMessage];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (HMDRemotelyAddedAccessoryReachabilityObserver)initWithAccessory:(id)a3 message:(id)a4 workQueue:(id)a5 timer:(id)a6 notificationCenter:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = HMDRemotelyAddedAccessoryReachabilityObserver;
  v17 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_accessory, a3);
    objc_storeStrong(&v18->_message, a4);
    objc_storeStrong(&v18->_workQueue, a5);
    objc_storeStrong(&v18->_timer, a6);
    objc_storeStrong(&v18->_notificationCenter, a7);
  }

  return v18;
}

- (HMDRemotelyAddedAccessoryReachabilityObserver)initWithAccessory:(id)a3 message:(id)a4 workQueue:(id)a5
{
  v8 = MEMORY[0x277D0F8D0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 sharedPreferences];
  v13 = [v12 preferenceForKey:@"RemotelyAddedAccessoryReachabilityTimeout"];
  v14 = [v13 numberValue];

  [v14 doubleValue];
  v16 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:v15];
  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  v18 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self initWithAccessory:v11 message:v10 workQueue:v9 timer:v16 notificationCenter:v17];

  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_193252 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_193252, &__block_literal_global_193253);
  }

  v3 = logCategory__hmf_once_v4_193254;

  return v3;
}

void __60__HMDRemotelyAddedAccessoryReachabilityObserver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_193254;
  logCategory__hmf_once_v4_193254 = v1;
}

@end