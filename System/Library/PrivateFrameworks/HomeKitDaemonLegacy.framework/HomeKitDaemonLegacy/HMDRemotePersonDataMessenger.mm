@interface HMDRemotePersonDataMessenger
+ (id)logCategory;
- (HMDHome)home;
- (HMDPersonDataSource)dataSource;
- (HMDRemotePersonDataMessenger)initWithUUID:(id)d home:(id)home workQueue:(id)queue;
- (id)logIdentifier;
- (void)_notifyResidentsOfUpdatedFaceClassificationDependentData;
- (void)_startDebounceTimerToNotifyResidentsOfUpdatedFaceClassificationDependentData;
- (void)configureWithDataSource:(id)source home:(id)home;
- (void)handlePerformCloudPullMessage:(id)message;
- (void)handleRemovedFaceCropWithUUID:(id)d mirrorOutputFuture:(id)future;
- (void)handleRemovedPersonWithUUID:(id)d mirrorOutputFuture:(id)future;
- (void)handleUpdatedPerson:(id)person mirrorOutputFuture:(id)future;
- (void)handleUpdatedPersonFaceCrop:(id)crop mirrorOutputFuture:(id)future;
- (void)handleUpdatedSettings:(id)settings mirrorOutputFuture:(id)future;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDRemotePersonDataMessenger

- (HMDPersonDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)handleUpdatedSettings:(id)settings mirrorOutputFuture:(id)future
{
  futureCopy = future;
  workQueue = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = MEMORY[0x277D2C938];
  workQueue2 = [(HMDRemotePersonDataMessenger *)self workQueue];
  v9 = [v7 schedulerWithDispatchQueue:workQueue2];
  v10 = [futureCopy reschedule:v9];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__HMDRemotePersonDataMessenger_handleUpdatedSettings_mirrorOutputFuture___block_invoke;
  v12[3] = &unk_279733BE8;
  v12[4] = self;
  v11 = [v10 addSuccessBlock:v12];
}

- (void)handleRemovedFaceCropWithUUID:(id)d mirrorOutputFuture:(id)future
{
  futureCopy = future;
  workQueue = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = MEMORY[0x277D2C938];
  workQueue2 = [(HMDRemotePersonDataMessenger *)self workQueue];
  v9 = [v7 schedulerWithDispatchQueue:workQueue2];
  v10 = [futureCopy reschedule:v9];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__HMDRemotePersonDataMessenger_handleRemovedFaceCropWithUUID_mirrorOutputFuture___block_invoke;
  v12[3] = &unk_279733BE8;
  v12[4] = self;
  v11 = [v10 addSuccessBlock:v12];
}

- (void)handleRemovedPersonWithUUID:(id)d mirrorOutputFuture:(id)future
{
  futureCopy = future;
  workQueue = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = MEMORY[0x277D2C938];
  workQueue2 = [(HMDRemotePersonDataMessenger *)self workQueue];
  v9 = [v7 schedulerWithDispatchQueue:workQueue2];
  v10 = [futureCopy reschedule:v9];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__HMDRemotePersonDataMessenger_handleRemovedPersonWithUUID_mirrorOutputFuture___block_invoke;
  v12[3] = &unk_279733BE8;
  v12[4] = self;
  v11 = [v10 addSuccessBlock:v12];
}

- (void)handleUpdatedPersonFaceCrop:(id)crop mirrorOutputFuture:(id)future
{
  futureCopy = future;
  workQueue = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = MEMORY[0x277D2C938];
  workQueue2 = [(HMDRemotePersonDataMessenger *)self workQueue];
  v9 = [v7 schedulerWithDispatchQueue:workQueue2];
  v10 = [futureCopy reschedule:v9];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__HMDRemotePersonDataMessenger_handleUpdatedPersonFaceCrop_mirrorOutputFuture___block_invoke;
  v12[3] = &unk_279733BE8;
  v12[4] = self;
  v11 = [v10 addSuccessBlock:v12];
}

- (void)handleUpdatedPerson:(id)person mirrorOutputFuture:(id)future
{
  futureCopy = future;
  workQueue = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = MEMORY[0x277D2C938];
  workQueue2 = [(HMDRemotePersonDataMessenger *)self workQueue];
  v9 = [v7 schedulerWithDispatchQueue:workQueue2];
  v10 = [futureCopy reschedule:v9];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__HMDRemotePersonDataMessenger_handleUpdatedPerson_mirrorOutputFuture___block_invoke;
  v12[3] = &unk_279733BE8;
  v12[4] = self;
  v11 = [v10 addSuccessBlock:v12];
}

- (void)configureWithDataSource:(id)source home:(id)home
{
  v14[2] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  homeCopy = home;
  workQueue = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (!sourceCopy)
  {
    _HMFPreconditionFailure();
  }

  [(HMDRemotePersonDataMessenger *)self setDataSource:sourceCopy];
  v9 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:0 remoteAccessRequired:0];
  v10 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v10 setRoles:{objc_msgSend(v10, "roles") | 4}];
  msgDispatcher = [homeCopy msgDispatcher];
  v14[0] = v9;
  v14[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  [msgDispatcher registerForMessage:@"HMDRemotePersonDataMessengerPerformCloudPullMessage" receiver:self policies:v12 selector:sel_handlePerformCloudPullMessage_];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  workQueue = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notifyResidentsOfUpdatedDataDebounceTimer = [(HMDRemotePersonDataMessenger *)self notifyResidentsOfUpdatedDataDebounceTimer];

  if (notifyResidentsOfUpdatedDataDebounceTimer == fireCopy)
  {
    [(HMDRemotePersonDataMessenger *)self setNotifyResidentsOfUpdatedDataDebounceTimer:0];

    [(HMDRemotePersonDataMessenger *)self _notifyResidentsOfUpdatedFaceClassificationDependentData];
  }
}

- (id)logIdentifier
{
  messageTargetUUID = [(HMDRemotePersonDataMessenger *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];

  return uUIDString;
}

- (void)handlePerformCloudPullMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling perform cloud pull message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  dataSource = [(HMDRemotePersonDataMessenger *)selfCopy dataSource];
  performCloudPull = [dataSource performCloudPull];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__HMDRemotePersonDataMessenger_handlePerformCloudPullMessage___block_invoke;
  v15[3] = &unk_279733BC0;
  v16 = messageCopy;
  v12 = messageCopy;
  v13 = [performCloudPull addCompletionBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_notifyResidentsOfUpdatedFaceClassificationDependentData
{
  v37 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDRemotePersonDataMessenger *)self home];
  v5 = home;
  if (home)
  {
    owner = [home owner];
    account = [owner account];

    if (account)
    {
      handles = [account handles];
      firstObject = [handles firstObject];

      if (firstObject)
      {
        v10 = [HMDRemoteAccountMessageDestination alloc];
        messageTargetUUID = [(HMDRemotePersonDataMessenger *)self messageTargetUUID];
        v12 = [(HMDRemoteAccountMessageDestination *)v10 initWithTarget:messageTargetUUID handle:firstObject multicast:1];

        [(HMDRemoteAccountMessageDestination *)v12 setRestrictToResidentCapable:1];
        v13 = [[HMDRemoteMessage alloc] initWithName:@"HMDRemotePersonDataMessengerPerformCloudPullMessage" destination:v12 payload:0 type:3 timeout:1 secure:0.0];
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          shortDescription = [(HMFObject *)v13 shortDescription];
          v33 = 138543618;
          v34 = v17;
          v35 = 2112;
          v36 = shortDescription;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Sending message to notify resident devices of updated face-classification-dependent data: %@", &v33, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        msgDispatcher = [v5 msgDispatcher];
        [msgDispatcher sendMessage:v13];
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          v33 = 138543362;
          v34 = v31;
          _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@No account handles found on owner account when notifying resident devices of updated face-classification-dependent data", &v33, 0xCu);
        }

        objc_autoreleasePoolPop(v28);
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v33 = 138543362;
        v34 = v27;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Owner account was nil when notifying resident devices of updated face-classification-dependent data", &v33, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Home reference was nil when notifying resident devices of updated face-classification-dependent data", &v33, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_startDebounceTimerToNotifyResidentsOfUpdatedFaceClassificationDependentData
{
  v18 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notifyResidentsOfUpdatedDataDebounceTimer = [(HMDRemotePersonDataMessenger *)self notifyResidentsOfUpdatedDataDebounceTimer];

  if (!notifyResidentsOfUpdatedDataDebounceTimer)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting timer to notify resident devices of updated face-classification-dependent data", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    notifyResidentsOfUpdatedDataDebounceTimerFactory = [(HMDRemotePersonDataMessenger *)selfCopy notifyResidentsOfUpdatedDataDebounceTimerFactory];
    v10 = notifyResidentsOfUpdatedDataDebounceTimerFactory[2](notifyResidentsOfUpdatedDataDebounceTimerFactory, 0, 10.0);
    [(HMDRemotePersonDataMessenger *)selfCopy setNotifyResidentsOfUpdatedDataDebounceTimer:v10];

    notifyResidentsOfUpdatedDataDebounceTimer2 = [(HMDRemotePersonDataMessenger *)selfCopy notifyResidentsOfUpdatedDataDebounceTimer];
    [notifyResidentsOfUpdatedDataDebounceTimer2 setDelegate:selfCopy];

    workQueue2 = [(HMDRemotePersonDataMessenger *)selfCopy workQueue];
    notifyResidentsOfUpdatedDataDebounceTimer3 = [(HMDRemotePersonDataMessenger *)selfCopy notifyResidentsOfUpdatedDataDebounceTimer];
    [notifyResidentsOfUpdatedDataDebounceTimer3 setDelegateQueue:workQueue2];

    notifyResidentsOfUpdatedDataDebounceTimer4 = [(HMDRemotePersonDataMessenger *)selfCopy notifyResidentsOfUpdatedDataDebounceTimer];
    [notifyResidentsOfUpdatedDataDebounceTimer4 resume];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (HMDRemotePersonDataMessenger)initWithUUID:(id)d home:(id)home workQueue:(id)queue
{
  dCopy = d;
  homeCopy = home;
  queueCopy = queue;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!homeCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = queueCopy;
  if (!queueCopy)
  {
LABEL_9:
    v17 = _HMFPreconditionFailure();
    return __60__HMDRemotePersonDataMessenger_initWithUUID_home_workQueue___block_invoke(v17);
  }

  v18.receiver = self;
  v18.super_class = HMDRemotePersonDataMessenger;
  v12 = [(HMDRemotePersonDataMessenger *)&v18 init];
  if (v12)
  {
    v13 = [dCopy copy];
    UUID = v12->_UUID;
    v12->_UUID = v13;

    objc_storeWeak(&v12->_home, homeCopy);
    objc_storeStrong(&v12->_workQueue, queue);
    notifyResidentsOfUpdatedDataDebounceTimerFactory = v12->_notifyResidentsOfUpdatedDataDebounceTimerFactory;
    v12->_notifyResidentsOfUpdatedDataDebounceTimerFactory = &__block_literal_global_183417;
  }

  return v12;
}

id __60__HMDRemotePersonDataMessenger_initWithUUID_home_workQueue___block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_183430 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_183430, &__block_literal_global_16_183431);
  }

  v3 = logCategory__hmf_once_v7_183432;

  return v3;
}

uint64_t __43__HMDRemotePersonDataMessenger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_183432;
  logCategory__hmf_once_v7_183432 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end