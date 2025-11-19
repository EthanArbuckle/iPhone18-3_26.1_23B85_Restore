@interface HMDCameraAnalysisStatePublisher
+ (id)logCategory;
- (HMDCameraAnalysisStatePublisher)initWithHome:(id)a3;
- (HMDCameraAnalysisStatePublisher)initWithHomeMessagingContext:(id)a3 analysisStateManager:(id)a4 workQueue:(id)a5 cameraAnalysisStatePublisherDebounceTimer:(id)a6;
- (HMDHomeResidentMessagingContext)messagingContext;
- (NSUUID)messageTargetUUID;
- (void)_handleRemoteAnalysisStateUpdate:(id)a3;
- (void)_processStateUpdate:(id)a3;
- (void)_publishAnalysisStateUpdate;
- (void)configureWithHome:(id)a3;
- (void)stateManager:(id)a3 didReceiveLocalUpdate:(id)a4;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDCameraAnalysisStatePublisher

- (HMDHomeResidentMessagingContext)messagingContext
{
  WeakRetained = objc_loadWeakRetained(&self->_messagingContext);

  return WeakRetained;
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraAnalysisStatePublisher *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraAnalysisStatePublisher *)self cameraAnalysisStatePublisherDebounceTimer];

  if (v6 == v4)
  {

    [(HMDCameraAnalysisStatePublisher *)self _publishAnalysisStateUpdate];
  }
}

- (NSUUID)messageTargetUUID
{
  v2 = [(HMDCameraAnalysisStatePublisher *)self messagingContext];
  v3 = [v2 messageTargetUUID];

  return v3;
}

- (void)stateManager:(id)a3 didReceiveLocalUpdate:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received local analysis state update: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDCameraAnalysisStatePublisher *)v9 workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__HMDCameraAnalysisStatePublisher_stateManager_didReceiveLocalUpdate___block_invoke;
  v15[3] = &unk_2797359B0;
  v15[4] = v9;
  v16 = v7;
  v13 = v7;
  dispatch_async(v12, v15);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoteAnalysisStateUpdate:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraAnalysisStatePublisher *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 messagePayload];
  v22[0] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMDCameraAnalysisStatePublisherStateUpdateMessageKey" ofClasses:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling remote state update: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [(HMDCameraAnalysisStatePublisher *)v10 analysisStateManager];
    [v14 handleRemoteStateUpdate:v8];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v4 identifier];
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Received nil analysis state update from message with identifier: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_publishAnalysisStateUpdate
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraAnalysisStatePublisher *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraAnalysisStatePublisher *)self stateUpdate];
  if (v4)
  {
    [(HMDCameraAnalysisStatePublisher *)self setStateUpdate:0];
    v22 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v22];
    v6 = v22;
    if (v5)
    {
      v23 = @"HMDCameraAnalysisStatePublisherStateUpdateMessageKey";
      v24 = v5;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v8 = [(HMDCameraAnalysisStatePublisher *)self messagingContext];
      v9 = [v8 enabledResidents];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __62__HMDCameraAnalysisStatePublisher__publishAnalysisStateUpdate__block_invoke;
      v20[3] = &unk_279724940;
      v20[4] = self;
      v21 = v7;
      v10 = v7;
      [v9 na_each:v20];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543874;
        v26 = v18;
        v27 = 2112;
        v28 = v4;
        v29 = 2112;
        v30 = v6;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Invoking _publishAnalysisStateUpdate with nil stateUpdate!", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __62__HMDCameraAnalysisStatePublisher__publishAnalysisStateUpdate__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 device];
  if (([v4 isCurrentDevice] & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 identifier];
      v18 = 138543618;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending state update to %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [HMDRemoteDeviceMessageDestination alloc];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    v12 = [WeakRetained messageTargetUUID];
    v13 = [(HMDRemoteDeviceMessageDestination *)v10 initWithTarget:v12 device:v4];

    v14 = [[HMDRemoteMessage alloc] initWithName:@"HMDCameraAnalysisStatePublisherStateUpdateMessage" destination:v13 payload:*(a1 + 40) type:3 timeout:1 secure:20.0];
    v15 = [*(a1 + 32) messagingContext];
    v16 = [v15 msgDispatcher];
    [v16 sendMessage:v14];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_processStateUpdate:(id)a3
{
  v11 = a3;
  v4 = [(HMDCameraAnalysisStatePublisher *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDCameraAnalysisStatePublisher *)self stateUpdate];

  if (v5)
  {
    v6 = [(HMDCameraAnalysisStatePublisher *)self stateUpdate];
    v7 = [v6 stateUpdateByMergingStateUpdate:v11];
    [(HMDCameraAnalysisStatePublisher *)self setStateUpdate:v7];
  }

  else
  {
    [(HMDCameraAnalysisStatePublisher *)self setStateUpdate:v11];
  }

  v8 = [(HMDCameraAnalysisStatePublisher *)self cameraAnalysisStatePublisherDebounceTimer];
  v9 = [v8 isRunning];

  if ((v9 & 1) == 0)
  {
    v10 = [(HMDCameraAnalysisStatePublisher *)self cameraAnalysisStatePublisherDebounceTimer];
    [v10 resume];
  }
}

- (void)configureWithHome:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraAnalysisStatePublisher *)self analysisStateManager];
  [v5 setDelegate:self];

  v6 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v6 setRoles:{objc_msgSend(v6, "roles") | 4}];
  v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:3 remoteAccessRequired:0];

  v8 = [(HMDCameraAnalysisStatePublisher *)self messagingContext];
  v9 = [v8 msgDispatcher];
  v15[0] = v6;
  v15[1] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [v9 registerForMessage:@"HMDCameraAnalysisStatePublisherStateUpdateMessage" receiver:self policies:v10 selector:sel__handleRemoteAnalysisStateUpdate_];

  v11 = [(HMDCameraAnalysisStatePublisher *)self cameraAnalysisStatePublisherDebounceTimer];
  [v11 setDelegate:self];

  v12 = [(HMDCameraAnalysisStatePublisher *)self workQueue];
  v13 = [(HMDCameraAnalysisStatePublisher *)self cameraAnalysisStatePublisherDebounceTimer];
  [v13 setDelegateQueue:v12];

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDCameraAnalysisStatePublisher)initWithHomeMessagingContext:(id)a3 analysisStateManager:(id)a4 workQueue:(id)a5 cameraAnalysisStatePublisherDebounceTimer:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HMDCameraAnalysisStatePublisher;
  v14 = [(HMDCameraAnalysisStatePublisher *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_messagingContext, v10);
    objc_storeStrong(&v15->_analysisStateManager, a4);
    objc_storeStrong(&v15->_cameraAnalysisStatePublisherDebounceTimer, a6);
    objc_storeStrong(&v15->_workQueue, a5);
  }

  return v15;
}

- (HMDCameraAnalysisStatePublisher)initWithHome:(id)a3
{
  v4 = MEMORY[0x277D14D58];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 uuid];
  v8 = [v6 initWithHomeUUID:v7];

  v9 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:16.0];
  v10 = [v5 workQueue];
  v11 = [(HMDCameraAnalysisStatePublisher *)self initWithHomeMessagingContext:v5 analysisStateManager:v8 workQueue:v10 cameraAnalysisStatePublisherDebounceTimer:v9];

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_32203 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_32203, &__block_literal_global_32204);
  }

  v3 = logCategory__hmf_once_v7_32205;

  return v3;
}

uint64_t __46__HMDCameraAnalysisStatePublisher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_32205;
  logCategory__hmf_once_v7_32205 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end