@interface HMDWACScanner
+ (id)logCategory;
- (HMDWACScanner)init;
- (HMDWACScannerDelegate)delegate;
- (void)backoff;
- (void)resume;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)start;
- (void)startDiscoveringAirPlayAccessoriesWithBrowser:(id)browser;
- (void)stop;
- (void)wacBrowser:(id)browser didFindAirPlayDevice:(id)device;
- (void)wacBrowser:(id)browser didRemoveAirPlayDevice:(id)device;
- (void)wacBrowser:(id)browser didUpdateAirPlayDevice:(id)device;
@end

@implementation HMDWACScanner

- (HMDWACScannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)wacBrowser:(id)browser didUpdateAirPlayDevice:(id)device
{
  deviceCopy = device;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HMDWACScanner_wacBrowser_didUpdateAirPlayDevice___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = deviceCopy;
  v7 = deviceCopy;
  dispatch_async(dispatchQueue, v8);
}

void __51__HMDWACScanner_wacBrowser_didUpdateAirPlayDevice___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) ssid];
    v7 = [*(a1 + 40) identifier];
    *buf = 138543874;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@wacBrowser updated device %@: (%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) delegate];
  if (v8)
  {
    v9 = __wrapCUWiFiDevice(*(a1 + 32), *(a1 + 40));
    v10 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__HMDWACScanner_wacBrowser_didUpdateAirPlayDevice___block_invoke_4;
    block[3] = &unk_27868A010;
    v11 = v8;
    v12 = *(a1 + 32);
    v16 = v11;
    v17 = v12;
    v18 = v9;
    v13 = v9;
    dispatch_async(v10, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)wacBrowser:(id)browser didRemoveAirPlayDevice:(id)device
{
  deviceCopy = device;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HMDWACScanner_wacBrowser_didRemoveAirPlayDevice___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = deviceCopy;
  v7 = deviceCopy;
  dispatch_async(dispatchQueue, v8);
}

void __51__HMDWACScanner_wacBrowser_didRemoveAirPlayDevice___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) ssid];
    v7 = [*(a1 + 40) identifier];
    *buf = 138543874;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@wacBrowser lost device %@: (%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) delegate];
  if (v8)
  {
    v9 = __wrapCUWiFiDevice(*(a1 + 32), *(a1 + 40));
    v10 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__HMDWACScanner_wacBrowser_didRemoveAirPlayDevice___block_invoke_3;
    block[3] = &unk_27868A010;
    v11 = v8;
    v12 = *(a1 + 32);
    v16 = v11;
    v17 = v12;
    v18 = v9;
    v13 = v9;
    dispatch_async(v10, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)wacBrowser:(id)browser didFindAirPlayDevice:(id)device
{
  deviceCopy = device;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HMDWACScanner_wacBrowser_didFindAirPlayDevice___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = deviceCopy;
  v7 = deviceCopy;
  dispatch_async(dispatchQueue, v8);
}

void __49__HMDWACScanner_wacBrowser_didFindAirPlayDevice___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) ssid];
    v7 = [*(a1 + 40) identifier];
    *buf = 138543874;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@wacBrowser found device %@: (%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) delegate];
  if (v8)
  {
    v9 = __wrapCUWiFiDevice(*(a1 + 32), *(a1 + 40));
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v13;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Device %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__HMDWACScanner_wacBrowser_didFindAirPlayDevice___block_invoke_2;
    block[3] = &unk_27868A010;
    v15 = v8;
    v16 = *(a1 + 32);
    v20 = v15;
    v21 = v16;
    v22 = v9;
    v17 = v9;
    dispatch_async(v14, block);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __21__HMDWACScanner_stop__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __21__HMDWACScanner_stop__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1[2])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = v1;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Invalidating CUWiFiScanner...", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [v1[2] invalidate];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)resume
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__HMDWACScanner_resume__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (void)backoff
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__HMDWACScanner_backoff__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (void)startDiscoveringAirPlayAccessoriesWithBrowser:(id)browser
{
  browserCopy = browser;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMDWACScanner_startDiscoveringAirPlayAccessoriesWithBrowser___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = browserCopy;
  selfCopy = self;
  v6 = browserCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)start
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__HMDWACScanner_start__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __22__HMDWACScanner_start__block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (!v1[2])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = v1;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Initializing CUWiFiScanner...", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = objc_alloc_init(MEMORY[0x277D02958]);
    [v6 setLabel:@"homed.wac"];
    [v6 setDispatchQueue:v3[1]];
    objc_initWeak(&location, v3);
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v18 = ____start_block_invoke;
    v19 = &unk_27867AA50;
    objc_copyWeak(v20, &location);
    [v6 setDeviceFoundHandler:&buf];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ____start_block_invoke_2;
    v14[3] = &unk_27867AA50;
    objc_copyWeak(&v15, &location);
    [v6 setDeviceLostHandler:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ____start_block_invoke_2_148;
    v12[3] = &unk_27867AA78;
    objc_copyWeak(&v13, &location);
    [v6 setDeviceChangedHandler:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ____start_block_invoke_4;
    v10[3] = &unk_278688A18;
    objc_copyWeak(&v11, &location);
    [v6 setErrorHandler:v10];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ____start_block_invoke_2_152;
    v8[3] = &unk_278686B80;
    objc_copyWeak(&v9, &location);
    [v6 setInvalidationHandler:v8];
    objc_storeStrong(v1 + 2, v6);
    [v6 activate];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDWACScanner_setDelegate_queue___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__HMDWACScanner_setDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setDelegateQueue:v2];
}

- (HMDWACScanner)init
{
  v8.receiver = self;
  v8.super_class = HMDWACScanner;
  v2 = [(HMDWACScanner *)&v8 init];
  if (v2)
  {
    v3 = HAPDispatchQueueName();
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create(v3, v4);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_139567 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_139567, &__block_literal_global_139568);
  }

  v3 = logCategory__hmf_once_v8_139569;

  return v3;
}

void __28__HMDWACScanner_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_139569;
  logCategory__hmf_once_v8_139569 = v1;
}

@end