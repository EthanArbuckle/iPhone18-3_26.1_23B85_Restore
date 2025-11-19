@interface HMDCameraRemoteStreamTracker
+ (HMDCameraRemoteStreamTracker)sharedTracker;
+ (id)logCategory;
- (BOOL)startTrackingStreamSession:(id)a3;
- (HMDCameraRemoteStreamTracker)init;
- (void)stopTrackingStreamWithSessionID:(id)a3;
@end

@implementation HMDCameraRemoteStreamTracker

- (void)stopTrackingStreamWithSessionID:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRemoteStreamTracker *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDCameraRemoteStreamTracker_stopTrackingStreamWithSessionID___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __64__HMDCameraRemoteStreamTracker_stopTrackingStreamWithSessionID___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentStreamIdentifiers];
  v3 = [v2 containsObject:*(a1 + 40)];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@No longer tracking stream with session ID: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = [*(a1 + 32) currentStreamIdentifiers];
    [v10 removeObject:*(a1 + 40)];
  }

  else
  {
    if (v7)
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Cannot find stream to stop tracking: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)startTrackingStreamSession:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(HMDCameraRemoteStreamTracker *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDCameraRemoteStreamTracker_startTrackingStreamSession___block_invoke;
  block[3] = &unk_27868A4D8;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __59__HMDCameraRemoteStreamTracker_startTrackingStreamSession___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentStreamIdentifiers];
  v3 = [v2 count];
  v4 = maximumSimultaneousRemoteStreams;

  if (v3 >= v4)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = *(a1 + 40);
      v22 = [*(a1 + 32) currentStreamIdentifiers];
      v24 = 138543874;
      v25 = v20;
      v26 = 2112;
      v27 = v21;
      v28 = 2112;
      v29 = v22;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Cannot start tracking stream session: %@. Already tracking maximum number of stream sessions: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }

  else
  {
    v5 = [_HMDCameraRemoteStreamTrackerAssertion alloc];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) sessionID];
    v8 = [(_HMDCameraRemoteStreamTrackerAssertion *)v5 initWithStreamTracker:v6 streamIdentifier:v7];

    v9 = [*(a1 + 32) currentStreamIdentifiers];
    v10 = [*(a1 + 40) sessionID];
    [v9 addObject:v10];

    objc_setAssociatedObject(*(a1 + 40), "HMD.StreamTrackerAssertion", v8, 1);
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 40);
      v16 = [*(a1 + 32) currentStreamIdentifiers];
      v24 = 138543874;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      v28 = 2048;
      v29 = [v16 count];
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Started tracking stream session: %@. Total count is now %lu", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (HMDCameraRemoteStreamTracker)init
{
  v11.receiver = self;
  v11.super_class = HMDCameraRemoteStreamTracker;
  v2 = [(HMDCameraRemoteStreamTracker *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    currentStreamIdentifiers = v2->_currentStreamIdentifiers;
    v2->_currentStreamIdentifiers = v3;

    v5 = HMDispatchQueueNameString();
    v6 = [v5 UTF8String];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(v6, v7);
    workQueue = v2->_workQueue;
    v2->_workQueue = v8;
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_154429 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_154429, &__block_literal_global_5_154430);
  }

  v3 = logCategory__hmf_once_v5_154431;

  return v3;
}

void __43__HMDCameraRemoteStreamTracker_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_154431;
  logCategory__hmf_once_v5_154431 = v1;
}

+ (HMDCameraRemoteStreamTracker)sharedTracker
{
  if (sharedTracker_onceToken_154436 != -1)
  {
    dispatch_once(&sharedTracker_onceToken_154436, &__block_literal_global_154437);
  }

  v3 = streamTracker;

  return v3;
}

void __45__HMDCameraRemoteStreamTracker_sharedTracker__block_invoke()
{
  v0 = objc_alloc_init(HMDCameraRemoteStreamTracker);
  v1 = streamTracker;
  streamTracker = v0;
}

@end