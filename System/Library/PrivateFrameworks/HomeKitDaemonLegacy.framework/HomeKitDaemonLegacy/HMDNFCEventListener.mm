@interface HMDNFCEventListener
+ (id)logCategory;
- (id)_createNFCEventStreamWithName:(id)a3 workQueue:(id)a4;
- (void)nfcEventStream:(id)a3 didReceiveEvent:(id)a4;
- (void)start;
@end

@implementation HMDNFCEventListener

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_26628 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_26628, &__block_literal_global_26629);
  }

  v3 = logCategory__hmf_once_v8_26630;

  return v3;
}

uint64_t __34__HMDNFCEventListener_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_26630;
  logCategory__hmf_once_v8_26630 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)nfcEventStream:(id)a3 didReceiveEvent:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 name];
    *buf = 138543874;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received NFC payload from event stream %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v25 = @"HMDNFCPayload";
  v26 = v7;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v14 = [(HMDNFCEventListener *)v9 fieldEventStream];

  if (v14 == v6)
  {
    v16 = objc_autoreleasePoolPush();
    v21 = v9;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Sending HMDNFCTapNotification with userInfo: %@", buf, 0x16u);
    }

    v20 = @"HMDNFCTapNotification";
    goto LABEL_11;
  }

  v15 = [(HMDNFCEventListener *)v9 proxyCardEventStream];

  if (v15 == v6)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v9;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Sending HMDNFCProxSetupNotification with userInfo: %@", buf, 0x16u);
    }

    v20 = @"HMDNFCProxSetupNotification";
LABEL_11:

    objc_autoreleasePoolPop(v16);
    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    [v23 postNotificationName:v20 object:v9 userInfo:v13];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_createNFCEventStreamWithName:(id)a3 workQueue:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Initializing NFC event stream with name: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [[HMDNFCEventStream alloc] initWithName:v6 workQueue:v7];
  [(HMDNFCEventStream *)v12 setDelegate:v9];
  [(HMDNFCEventStream *)v12 start];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)start
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting NFC event listener", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = HMFDispatchQueueName();
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(v7, v8);

  v10 = MEMORY[0x277D2C848];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __28__HMDNFCEventListener_start__block_invoke;
  v13[3] = &unk_279724468;
  v14 = v9;
  v15 = v4;
  v11 = v9;
  [v10 sharedHardwareManager:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __28__HMDNFCEventListener_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__HMDNFCEventListener_start__block_invoke_2;
  block[3] = &unk_279734960;
  v4 = *(a1 + 32);
  block[4] = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(v8, block);
}

void __28__HMDNFCEventListener_start__block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) isBackgroundTagReadingAvailable];
    v14 = 138543618;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Initializing NFC streams with isBackgroundTagReadingAvailable: %{BOOL}d", &v14, 0x12u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) _createNFCEventStreamWithName:@"com.apple.nfcd.homekit.field" workQueue:*(a1 + 48)];
  [*(a1 + 32) setFieldEventStream:v7];

  if ([*(a1 + 40) isBackgroundTagReadingAvailable])
  {
    v8 = [*(a1 + 32) _createNFCEventStreamWithName:@"com.apple.nfcd.homekit.proxcard" workQueue:*(a1 + 48)];
    [*(a1 + 32) setProxyCardEventStream:v8];
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Finished initializing NFC streams", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
}

@end