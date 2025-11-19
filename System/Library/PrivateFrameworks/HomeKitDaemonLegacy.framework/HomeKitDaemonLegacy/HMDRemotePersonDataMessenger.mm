@interface HMDRemotePersonDataMessenger
+ (id)logCategory;
- (HMDHome)home;
- (HMDPersonDataSource)dataSource;
- (HMDRemotePersonDataMessenger)initWithUUID:(id)a3 home:(id)a4 workQueue:(id)a5;
- (id)logIdentifier;
- (void)_notifyResidentsOfUpdatedFaceClassificationDependentData;
- (void)_startDebounceTimerToNotifyResidentsOfUpdatedFaceClassificationDependentData;
- (void)configureWithDataSource:(id)a3 home:(id)a4;
- (void)handlePerformCloudPullMessage:(id)a3;
- (void)handleRemovedFaceCropWithUUID:(id)a3 mirrorOutputFuture:(id)a4;
- (void)handleRemovedPersonWithUUID:(id)a3 mirrorOutputFuture:(id)a4;
- (void)handleUpdatedPerson:(id)a3 mirrorOutputFuture:(id)a4;
- (void)handleUpdatedPersonFaceCrop:(id)a3 mirrorOutputFuture:(id)a4;
- (void)handleUpdatedSettings:(id)a3 mirrorOutputFuture:(id)a4;
- (void)timerDidFire:(id)a3;
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

- (void)handleUpdatedSettings:(id)a3 mirrorOutputFuture:(id)a4
{
  v5 = a4;
  v6 = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = MEMORY[0x277D2C938];
  v8 = [(HMDRemotePersonDataMessenger *)self workQueue];
  v9 = [v7 schedulerWithDispatchQueue:v8];
  v10 = [v5 reschedule:v9];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__HMDRemotePersonDataMessenger_handleUpdatedSettings_mirrorOutputFuture___block_invoke;
  v12[3] = &unk_279733BE8;
  v12[4] = self;
  v11 = [v10 addSuccessBlock:v12];
}

- (void)handleRemovedFaceCropWithUUID:(id)a3 mirrorOutputFuture:(id)a4
{
  v5 = a4;
  v6 = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = MEMORY[0x277D2C938];
  v8 = [(HMDRemotePersonDataMessenger *)self workQueue];
  v9 = [v7 schedulerWithDispatchQueue:v8];
  v10 = [v5 reschedule:v9];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__HMDRemotePersonDataMessenger_handleRemovedFaceCropWithUUID_mirrorOutputFuture___block_invoke;
  v12[3] = &unk_279733BE8;
  v12[4] = self;
  v11 = [v10 addSuccessBlock:v12];
}

- (void)handleRemovedPersonWithUUID:(id)a3 mirrorOutputFuture:(id)a4
{
  v5 = a4;
  v6 = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = MEMORY[0x277D2C938];
  v8 = [(HMDRemotePersonDataMessenger *)self workQueue];
  v9 = [v7 schedulerWithDispatchQueue:v8];
  v10 = [v5 reschedule:v9];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__HMDRemotePersonDataMessenger_handleRemovedPersonWithUUID_mirrorOutputFuture___block_invoke;
  v12[3] = &unk_279733BE8;
  v12[4] = self;
  v11 = [v10 addSuccessBlock:v12];
}

- (void)handleUpdatedPersonFaceCrop:(id)a3 mirrorOutputFuture:(id)a4
{
  v5 = a4;
  v6 = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = MEMORY[0x277D2C938];
  v8 = [(HMDRemotePersonDataMessenger *)self workQueue];
  v9 = [v7 schedulerWithDispatchQueue:v8];
  v10 = [v5 reschedule:v9];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__HMDRemotePersonDataMessenger_handleUpdatedPersonFaceCrop_mirrorOutputFuture___block_invoke;
  v12[3] = &unk_279733BE8;
  v12[4] = self;
  v11 = [v10 addSuccessBlock:v12];
}

- (void)handleUpdatedPerson:(id)a3 mirrorOutputFuture:(id)a4
{
  v5 = a4;
  v6 = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = MEMORY[0x277D2C938];
  v8 = [(HMDRemotePersonDataMessenger *)self workQueue];
  v9 = [v7 schedulerWithDispatchQueue:v8];
  v10 = [v5 reschedule:v9];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__HMDRemotePersonDataMessenger_handleUpdatedPerson_mirrorOutputFuture___block_invoke;
  v12[3] = &unk_279733BE8;
  v12[4] = self;
  v11 = [v10 addSuccessBlock:v12];
}

- (void)configureWithDataSource:(id)a3 home:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if (!v6)
  {
    _HMFPreconditionFailure();
  }

  [(HMDRemotePersonDataMessenger *)self setDataSource:v6];
  v9 = [HMDUserMessagePolicy userMessagePolicyWithHome:v7 userPrivilege:0 remoteAccessRequired:0];
  v10 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v10 setRoles:{objc_msgSend(v10, "roles") | 4}];
  v11 = [v7 msgDispatcher];
  v14[0] = v9;
  v14[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  [v11 registerForMessage:@"HMDRemotePersonDataMessengerPerformCloudPullMessage" receiver:self policies:v12 selector:sel_handlePerformCloudPullMessage_];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDRemotePersonDataMessenger *)self notifyResidentsOfUpdatedDataDebounceTimer];

  if (v6 == v4)
  {
    [(HMDRemotePersonDataMessenger *)self setNotifyResidentsOfUpdatedDataDebounceTimer:0];

    [(HMDRemotePersonDataMessenger *)self _notifyResidentsOfUpdatedFaceClassificationDependentData];
  }
}

- (id)logIdentifier
{
  v2 = [(HMDRemotePersonDataMessenger *)self messageTargetUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)handlePerformCloudPullMessage:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling perform cloud pull message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDRemotePersonDataMessenger *)v7 dataSource];
  v11 = [v10 performCloudPull];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__HMDRemotePersonDataMessenger_handlePerformCloudPullMessage___block_invoke;
  v15[3] = &unk_279733BC0;
  v16 = v4;
  v12 = v4;
  v13 = [v11 addCompletionBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_notifyResidentsOfUpdatedFaceClassificationDependentData
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDRemotePersonDataMessenger *)self home];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 owner];
    v7 = [v6 account];

    if (v7)
    {
      v8 = [v7 handles];
      v9 = [v8 firstObject];

      if (v9)
      {
        v10 = [HMDRemoteAccountMessageDestination alloc];
        v11 = [(HMDRemotePersonDataMessenger *)self messageTargetUUID];
        v12 = [(HMDRemoteAccountMessageDestination *)v10 initWithTarget:v11 handle:v9 multicast:1];

        [(HMDRemoteAccountMessageDestination *)v12 setRestrictToResidentCapable:1];
        v13 = [[HMDRemoteMessage alloc] initWithName:@"HMDRemotePersonDataMessengerPerformCloudPullMessage" destination:v12 payload:0 type:3 timeout:1 secure:0.0];
        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          v18 = [(HMFObject *)v13 shortDescription];
          v33 = 138543618;
          v34 = v17;
          v35 = 2112;
          v36 = v18;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Sending message to notify resident devices of updated face-classification-dependent data: %@", &v33, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        v19 = [v5 msgDispatcher];
        [v19 sendMessage:v13];
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        v29 = self;
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
      v25 = self;
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
    v21 = self;
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
  v3 = [(HMDRemotePersonDataMessenger *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDRemotePersonDataMessenger *)self notifyResidentsOfUpdatedDataDebounceTimer];

  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting timer to notify resident devices of updated face-classification-dependent data", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HMDRemotePersonDataMessenger *)v6 notifyResidentsOfUpdatedDataDebounceTimerFactory];
    v10 = v9[2](v9, 0, 10.0);
    [(HMDRemotePersonDataMessenger *)v6 setNotifyResidentsOfUpdatedDataDebounceTimer:v10];

    v11 = [(HMDRemotePersonDataMessenger *)v6 notifyResidentsOfUpdatedDataDebounceTimer];
    [v11 setDelegate:v6];

    v12 = [(HMDRemotePersonDataMessenger *)v6 workQueue];
    v13 = [(HMDRemotePersonDataMessenger *)v6 notifyResidentsOfUpdatedDataDebounceTimer];
    [v13 setDelegateQueue:v12];

    v14 = [(HMDRemotePersonDataMessenger *)v6 notifyResidentsOfUpdatedDataDebounceTimer];
    [v14 resume];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (HMDRemotePersonDataMessenger)initWithUUID:(id)a3 home:(id)a4 workQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v9)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = v10;
  if (!v10)
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
    v13 = [v8 copy];
    UUID = v12->_UUID;
    v12->_UUID = v13;

    objc_storeWeak(&v12->_home, v9);
    objc_storeStrong(&v12->_workQueue, a5);
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