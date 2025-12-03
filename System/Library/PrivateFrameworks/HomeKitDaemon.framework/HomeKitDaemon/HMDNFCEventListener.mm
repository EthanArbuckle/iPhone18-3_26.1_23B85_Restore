@interface HMDNFCEventListener
+ (id)logCategory;
- (id)_createNFCEventStreamWithName:(id)name workQueue:(id)queue;
- (void)nfcEventStream:(id)stream didReceiveEvent:(id)event;
- (void)start;
@end

@implementation HMDNFCEventListener

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_175532 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_175532, &__block_literal_global_175533);
  }

  v3 = logCategory__hmf_once_v8_175534;

  return v3;
}

void __34__HMDNFCEventListener_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_175534;
  logCategory__hmf_once_v8_175534 = v1;
}

- (void)nfcEventStream:(id)stream didReceiveEvent:(id)event
{
  v33 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  eventCopy = event;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    name = [streamCopy name];
    *buf = 138543874;
    v28 = v11;
    v29 = 2112;
    v30 = name;
    v31 = 2112;
    v32 = eventCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received NFC payload from event stream %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v25 = @"HMDNFCPayload";
  v26 = eventCopy;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  fieldEventStream = [(HMDNFCEventListener *)selfCopy fieldEventStream];

  if (fieldEventStream == streamCopy)
  {
    v16 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Sending HMDNFCTapNotification with userInfo: %@", buf, 0x16u);
    }

    v20 = @"HMDNFCTapNotification";
    goto LABEL_11;
  }

  proxyCardEventStream = [(HMDNFCEventListener *)selfCopy proxyCardEventStream];

  if (proxyCardEventStream == streamCopy)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Sending HMDNFCProxSetupNotification with userInfo: %@", buf, 0x16u);
    }

    v20 = @"HMDNFCProxSetupNotification";
LABEL_11:

    objc_autoreleasePoolPop(v16);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:v20 object:selfCopy userInfo:v13];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_createNFCEventStreamWithName:(id)name workQueue:(id)queue
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  queueCopy = queue;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = nameCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Initializing NFC event stream with name: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [[HMDNFCEventStream alloc] initWithName:nameCopy workQueue:queueCopy];
  [(HMDNFCEventStream *)v12 setDelegate:selfCopy];
  [(HMDNFCEventStream *)v12 start];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)start
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting NFC event listener", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = HMFDispatchQueueName();
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create(v7, v8);

  v10 = MEMORY[0x277D2C848];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __28__HMDNFCEventListener_start__block_invoke;
  v13[3] = &unk_27867D040;
  v14 = v9;
  v15 = selfCopy;
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
  block[3] = &unk_27868A010;
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Initializing NFC streams with isBackgroundTagReadingAvailable: %{BOOL}d", &v14, 0x12u);
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
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Finished initializing NFC streams", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
}

@end