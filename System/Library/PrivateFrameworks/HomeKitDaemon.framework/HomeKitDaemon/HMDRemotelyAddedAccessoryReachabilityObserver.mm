@interface HMDRemotelyAddedAccessoryReachabilityObserver
+ (id)logCategory;
- (HMDRemotelyAddedAccessoryReachabilityObserver)initWithAccessory:(id)accessory message:(id)message workQueue:(id)queue;
- (HMDRemotelyAddedAccessoryReachabilityObserver)initWithAccessory:(id)accessory message:(id)message workQueue:(id)queue timer:(id)timer notificationCenter:(id)center;
- (id)logIdentifier;
- (void)_respondToMessage;
- (void)start;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDRemotelyAddedAccessoryReachabilityObserver

- (void)timerDidFire:(id)fire
{
  v13 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  timer = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self timer];

  if (timer == fireCopy)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Timed out waiting for added accessory to become reachable so responding to message", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDRemotelyAddedAccessoryReachabilityObserver *)selfCopy _respondToMessage];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  accessory = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)_respondToMessage
{
  workQueue = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationToken = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self notificationToken];

  if (notificationToken)
  {
    message = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self message];
    [message respondWithSuccess];

    [(HMDRemotelyAddedAccessoryReachabilityObserver *)self setTimer:0];
    notificationCenter = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self notificationCenter];
    notificationToken2 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self notificationToken];
    [notificationCenter removeObserver:notificationToken2];

    [(HMDRemotelyAddedAccessoryReachabilityObserver *)self setNotificationToken:0];
  }
}

- (void)start
{
  v29 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationToken = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self notificationToken];

  if (notificationToken)
  {
    _HMFPreconditionFailure();
  }

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    accessory = [(HMDRemotelyAddedAccessoryReachabilityObserver *)selfCopy accessory];
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = accessory;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting tracking for remotely added accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__HMDRemotelyAddedAccessoryReachabilityObserver_start__block_invoke;
  aBlock[3] = &unk_27867E608;
  aBlock[4] = selfCopy;
  v10 = _Block_copy(aBlock);
  notificationCenter = [(HMDRemotelyAddedAccessoryReachabilityObserver *)selfCopy notificationCenter];
  accessory2 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)selfCopy accessory];
  v13 = [notificationCenter addObserverForName:@"HMDAccessoryIsReachableNotification" object:accessory2 queue:0 usingBlock:v10];
  [(HMDRemotelyAddedAccessoryReachabilityObserver *)selfCopy setNotificationToken:v13];

  timer = [(HMDRemotelyAddedAccessoryReachabilityObserver *)selfCopy timer];
  [timer setDelegate:selfCopy];

  workQueue2 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)selfCopy workQueue];
  timer2 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)selfCopy timer];
  [timer2 setDelegateQueue:workQueue2];

  timer3 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)selfCopy timer];
  [timer3 resume];

  accessory3 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)selfCopy accessory];
  LODWORD(timer2) = [accessory3 isReachable];

  if (timer2)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
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

- (HMDRemotelyAddedAccessoryReachabilityObserver)initWithAccessory:(id)accessory message:(id)message workQueue:(id)queue timer:(id)timer notificationCenter:(id)center
{
  accessoryCopy = accessory;
  messageCopy = message;
  queueCopy = queue;
  timerCopy = timer;
  centerCopy = center;
  v21.receiver = self;
  v21.super_class = HMDRemotelyAddedAccessoryReachabilityObserver;
  v17 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_accessory, accessory);
    objc_storeStrong(&v18->_message, message);
    objc_storeStrong(&v18->_workQueue, queue);
    objc_storeStrong(&v18->_timer, timer);
    objc_storeStrong(&v18->_notificationCenter, center);
  }

  return v18;
}

- (HMDRemotelyAddedAccessoryReachabilityObserver)initWithAccessory:(id)accessory message:(id)message workQueue:(id)queue
{
  v8 = MEMORY[0x277D0F8D0];
  queueCopy = queue;
  messageCopy = message;
  accessoryCopy = accessory;
  sharedPreferences = [v8 sharedPreferences];
  v13 = [sharedPreferences preferenceForKey:@"RemotelyAddedAccessoryReachabilityTimeout"];
  numberValue = [v13 numberValue];

  [numberValue doubleValue];
  v16 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:v15];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v18 = [(HMDRemotelyAddedAccessoryReachabilityObserver *)self initWithAccessory:accessoryCopy message:messageCopy workQueue:queueCopy timer:v16 notificationCenter:defaultCenter];

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