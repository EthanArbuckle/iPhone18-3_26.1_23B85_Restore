@interface HMDCameraPowerAssertionHandler
+ (id)logCategory;
+ (id)sharedHandler;
- (HMDCameraPowerAssertionHandler)init;
- (void)deregisterRemoteRequestHandler:(id)handler;
- (void)registerRemoteRequestHandler:(id)handler forSessionID:(id)d;
@end

@implementation HMDCameraPowerAssertionHandler

- (void)deregisterRemoteRequestHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HMDCameraPowerAssertionHandler *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDCameraPowerAssertionHandler_deregisterRemoteRequestHandler___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(workQueue, v7);
}

void __65__HMDCameraPowerAssertionHandler_deregisterRemoteRequestHandler___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentRequestHandlerSessionIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = *(a1 + 40);
      v22 = [*(a1 + 32) currentRequestHandlerSessionIDs];
      v24 = 138543874;
      v25 = v20;
      v26 = 2112;
      v27 = v21;
      v28 = 2112;
      v29 = v22;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Cannot find session %@ in current assertion holders %@", &v24, 0x20u);
    }

    goto LABEL_13;
  }

  v4 = [*(a1 + 32) currentRequestHandlerSessionIDs];
  [v4 removeObject:*(a1 + 40)];

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) currentRequestHandlerSessionIDs];
    v24 = 138543874;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Deregistering power assertion holder %@, current camera power assertion holders: %@", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = [*(a1 + 32) currentRequestHandlerSessionIDs];
  v12 = [v11 count];

  if (!v12)
  {
    if ([*(a1 + 32) powerAssertion])
    {
      IOPMAssertionRelease([*(a1 + 32) powerAssertion]);
      [*(a1 + 32) setPowerAssertion:0];
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v16;
        v17 = "%{public}@Releasing power assertion for camera";
        v18 = v15;
        v19 = OS_LOG_TYPE_INFO;
LABEL_12:
        _os_log_impl(&dword_2531F8000, v18, v19, v17, &v24, 0xCu);
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v16;
        v17 = "%{public}@Needed to release power assertion, but it isnt valid?";
        v18 = v15;
        v19 = OS_LOG_TYPE_ERROR;
        goto LABEL_12;
      }
    }

LABEL_13:

    objc_autoreleasePoolPop(v13);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)registerRemoteRequestHandler:(id)handler forSessionID:(id)d
{
  handlerCopy = handler;
  dCopy = d;
  workQueue = [(HMDCameraPowerAssertionHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMDCameraPowerAssertionHandler_registerRemoteRequestHandler_forSessionID___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(workQueue, block);
}

void __76__HMDCameraPowerAssertionHandler_registerRemoteRequestHandler_forSessionID___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v22 = 138543618;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Registering power assertion holder for session %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [[_HMDCameraPowerAssertion alloc] initWithPowerAssertionHandler:*(a1 + 32) remoteRequestHandlerSessionID:*(a1 + 40)];
  objc_setAssociatedObject(*(a1 + 48), "HMD.CameraPowerAssertionKey", v7, 1);
  v8 = [*(a1 + 32) currentRequestHandlerSessionIDs];
  [v8 addObject:*(a1 + 40)];

  if (![*(a1 + 32) powerAssertion])
  {
    v9 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", @"HomeKit Camera Streaming", 0, 0, 0, 0.0, 0, (*(a1 + 32) + 8));
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v13)
      {
        v14 = HMFGetLogIdentifier();
        v22 = 138543362;
        v23 = v14;
        v15 = "%{public}@Failed to create power assertion for camera request handler";
LABEL_9:
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, v15, &v22, 0xCu);
      }
    }

    else if (v13)
    {
      v14 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v14;
      v15 = "%{public}@Taking power assertion for camera";
      goto LABEL_9;
    }

    objc_autoreleasePoolPop(v10);
  }

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [*(a1 + 32) currentRequestHandlerSessionIDs];
    v22 = 138543618;
    v23 = v19;
    v24 = 2112;
    v25 = v20;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Current camera power assertion holders: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = *MEMORY[0x277D85DE8];
}

- (HMDCameraPowerAssertionHandler)init
{
  v11.receiver = self;
  v11.super_class = HMDCameraPowerAssertionHandler;
  v2 = [(HMDCameraPowerAssertionHandler *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    currentRequestHandlerSessionIDs = v2->_currentRequestHandlerSessionIDs;
    v2->_currentRequestHandlerSessionIDs = v3;

    v5 = HMDispatchQueueNameString();
    uTF8String = [v5 UTF8String];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(uTF8String, v7);
    workQueue = v2->_workQueue;
    v2->_workQueue = v8;
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_126130 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_126130, &__block_literal_global_21_126131);
  }

  v3 = logCategory__hmf_once_v1_126132;

  return v3;
}

uint64_t __45__HMDCameraPowerAssertionHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_126132;
  logCategory__hmf_once_v1_126132 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)sharedHandler
{
  if (sharedHandler_onceToken != -1)
  {
    dispatch_once(&sharedHandler_onceToken, &__block_literal_global_126137);
  }

  v3 = assertionHandler;

  return v3;
}

uint64_t __47__HMDCameraPowerAssertionHandler_sharedHandler__block_invoke()
{
  v0 = objc_alloc_init(HMDCameraPowerAssertionHandler);
  v1 = assertionHandler;
  assertionHandler = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end