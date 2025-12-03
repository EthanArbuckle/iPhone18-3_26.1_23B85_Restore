@interface HMDCameraRecordingBulkSendSessionInitiator
+ (id)logCategory;
- (BOOL)isSessionOpenInProgress;
- (HMDCameraRecordingBulkSendSessionInitiator)initWithWorkQueue:(id)queue accessory:(id)accessory;
- (HMDHAPAccessory)accessory;
- (id)logIdentifier;
- (void)_registerBulkSendListener;
- (void)configure;
- (void)handleAccessoryDoesSupportBulkSendDataStreamNotification:(id)notification;
- (void)listenerDidReceiveDataStreamClose:(id)close;
- (void)listenerDidReceiveDataStreamStart:(id)start;
- (void)openNewSessionWithCallback:(id)callback;
- (void)stop;
@end

@implementation HMDCameraRecordingBulkSendSessionInitiator

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  accessory = [(HMDCameraRecordingBulkSendSessionInitiator *)self accessory];
  logIdentifier = [accessory logIdentifier];

  return logIdentifier;
}

- (void)listenerDidReceiveDataStreamClose:(id)close
{
  v18 = *MEMORY[0x277D85DE8];
  closeCopy = close;
  workQueue = [(HMDCameraRecordingBulkSendSessionInitiator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentListener = [(HMDCameraRecordingBulkSendSessionInitiator *)self currentListener];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (currentListener == closeCopy)
  {
    if (v10)
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = closeCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Data stream did close for listener: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDCameraRecordingBulkSendSessionInitiator *)selfCopy setWaitingForAccessory:0];
    [(HMDCameraRecordingBulkSendSessionInitiator *)selfCopy setCurrentListener:0];
  }

  else
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = closeCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Ignoring data stream close for irrelevant listener: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)listenerDidReceiveDataStreamStart:(id)start
{
  v24 = *MEMORY[0x277D85DE8];
  startCopy = start;
  workQueue = [(HMDCameraRecordingBulkSendSessionInitiator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentListener = [(HMDCameraRecordingBulkSendSessionInitiator *)self currentListener];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (currentListener == startCopy)
  {
    if (v10)
    {
      v12 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v12;
      v22 = 2112;
      v23 = startCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Data stream did start for listener: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v14 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HAPDefaultIPCameraDisconnectOnIdleTimeoutSeconds"];
    numberValue = [v14 numberValue];
    [numberValue doubleValue];
    v17 = v16;

    accessory = [(HMDCameraRecordingBulkSendSessionInitiator *)selfCopy accessory];
    [accessory updateActiveDisconnectOnIdleTimeout:v17];
  }

  else
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = startCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Ignoring data stream start for irrelevant listener: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryDoesSupportBulkSendDataStreamNotification:(id)notification
{
  workQueue = [(HMDCameraRecordingBulkSendSessionInitiator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__HMDCameraRecordingBulkSendSessionInitiator_handleAccessoryDoesSupportBulkSendDataStreamNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __103__HMDCameraRecordingBulkSendSessionInitiator_handleAccessoryDoesSupportBulkSendDataStreamNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isWaitingForAccessory];
  if (result)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Accessory now supports data streams so registering bulk send listener because we were waiting for accessory", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) setWaitingForAccessory:0];
    result = [*(a1 + 32) _registerBulkSendListener];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_registerBulkSendListener
{
  v17 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingBulkSendSessionInitiator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentListener = [(HMDCameraRecordingBulkSendSessionInitiator *)self currentListener];

  if (!currentListener)
  {
    _HMFPreconditionFailure();
  }

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    currentListener2 = [(HMDCameraRecordingBulkSendSessionInitiator *)selfCopy currentListener];
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = currentListener2;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering bulk send listener: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  accessory = [(HMDCameraRecordingBulkSendSessionInitiator *)selfCopy accessory];
  currentListener3 = [(HMDCameraRecordingBulkSendSessionInitiator *)selfCopy currentListener];
  [accessory addDataStreamBulkSendListener:currentListener3 fileType:@"ipcamera.recording"];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)openNewSessionWithCallback:(id)callback
{
  v37 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  workQueue = [(HMDCameraRecordingBulkSendSessionInitiator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Opening new session", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  currentListener = [(HMDCameraRecordingBulkSendSessionInitiator *)selfCopy currentListener];
  isSessionOpenInProgress = [currentListener isSessionOpenInProgress];

  if (isSessionOpenInProgress)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot open new session because a session is already being opened", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    accessory = [MEMORY[0x277CCA9B8] hmfErrorWithCode:9];
    callbackCopy[2](callbackCopy, 0, accessory);
  }

  else
  {
    accessory = [(HMDCameraRecordingBulkSendSessionInitiator *)selfCopy accessory];
    currentListener2 = [(HMDCameraRecordingBulkSendSessionInitiator *)selfCopy currentListener];
    v18 = currentListener2;
    if (currentListener2)
    {
      [currentListener2 openBulkSendSessionWithAccessory:accessory callback:callbackCopy];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Registering bulk send listener before opening new session", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [HMDCameraRecordingBulkSendListener alloc];
      workQueue2 = [(HMDCameraRecordingBulkSendSessionInitiator *)v20 workQueue];
      v25 = [(HMDCameraRecordingBulkSendListener *)v23 initWithWorkQueue:workQueue2];

      [(HMDCameraRecordingBulkSendListener *)v25 setDelegate:v20];
      [(HMDCameraRecordingBulkSendListener *)v25 addPendingBulkSendSessionCallback:callbackCopy];
      [(HMDCameraRecordingBulkSendSessionInitiator *)v20 setCurrentListener:v25];
      if ([accessory canAcceptBulkSendListeners])
      {
        [(HMDCameraRecordingBulkSendSessionInitiator *)v20 _registerBulkSendListener];
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        v27 = v20;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543362;
          v36 = v29;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Establishing local HAP connection with accessory because it cannot currently accept bulk send listeners", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v26);
        [(HMDCameraRecordingBulkSendSessionInitiator *)v27 setWaitingForAccessory:1];
        workQueue3 = [(HMDCameraRecordingBulkSendSessionInitiator *)v27 workQueue];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __73__HMDCameraRecordingBulkSendSessionInitiator_openNewSessionWithCallback___block_invoke;
        v32[3] = &unk_279734D88;
        v32[4] = v27;
        v33 = v25;
        v34 = accessory;
        [v34 establishLocalHAPConnectionWithQueue:workQueue3 completion:v32];
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __73__HMDCameraRecordingBulkSendSessionInitiator_openNewSessionWithCallback___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to start HAP session with camera: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 40) accessory:*(a1 + 48) didCloseDataStreamWithError:v3];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v21 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingBulkSendSessionInitiator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping bulk send session initiator", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  currentListener = [(HMDCameraRecordingBulkSendSessionInitiator *)selfCopy currentListener];
  v9 = objc_autoreleasePoolPush();
  v10 = selfCopy;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (currentListener)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = currentListener;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Removing bulk send listener: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    accessory = [(HMDCameraRecordingBulkSendSessionInitiator *)v10 accessory];
    [accessory removeDataStreamBulkSendListener:currentListener];

    [(HMDCameraRecordingBulkSendSessionInitiator *)v10 setWaitingForAccessory:0];
    [(HMDCameraRecordingBulkSendSessionInitiator *)v10 setCurrentListener:0];
  }

  else
  {
    if (v12)
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Ignoring stop request because we have no active listener", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  workQueue = [(HMDCameraRecordingBulkSendSessionInitiator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  accessory = [(HMDCameraRecordingBulkSendSessionInitiator *)self accessory];
  [defaultCenter addObserver:self selector:sel_handleAccessoryDoesSupportBulkSendDataStreamNotification_ name:@"HMDAccessoryDoesSupportBulkSendDataStreamNotification" object:accessory];
}

- (BOOL)isSessionOpenInProgress
{
  workQueue = [(HMDCameraRecordingBulkSendSessionInitiator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentListener = [(HMDCameraRecordingBulkSendSessionInitiator *)self currentListener];
  LOBYTE(workQueue) = [currentListener isSessionOpenInProgress];

  return workQueue;
}

- (HMDCameraRecordingBulkSendSessionInitiator)initWithWorkQueue:(id)queue accessory:(id)accessory
{
  queueCopy = queue;
  accessoryCopy = accessory;
  if (!queueCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = accessoryCopy;
  if (!accessoryCopy)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMDCameraRecordingBulkSendSessionInitiator *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMDCameraRecordingBulkSendSessionInitiator;
  v10 = [(HMDCameraRecordingBulkSendSessionInitiator *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_workQueue, queue);
    objc_storeWeak(&v11->_accessory, v9);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_109860 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_109860, &__block_literal_global_109861);
  }

  v3 = logCategory__hmf_once_v15_109862;

  return v3;
}

uint64_t __57__HMDCameraRecordingBulkSendSessionInitiator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15_109862;
  logCategory__hmf_once_v15_109862 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end