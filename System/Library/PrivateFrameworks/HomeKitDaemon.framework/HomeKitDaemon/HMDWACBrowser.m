@interface HMDWACBrowser
+ (id)logCategory;
- (HMDWACBrowser)initWithWACScanner:(id)a3 messageDispatcher:(id)a4;
- (HMDWACBrowserDelegate)delegate;
- (void)clearBackoff;
- (void)requestBackoff;
- (void)scanner:(id)a3 didError:(id)a4;
- (void)scanner:(id)a3 didRemoveDevice:(id)a4;
- (void)scanner:(id)a3 didUpdateDevice:(id)a4;
- (void)scannerDidStop:(id)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)startBrowsingForAccessories;
- (void)startBrowsingForAirPlayWACAccessoriesWithBrowser:(id)a3;
- (void)stopBrowsingForAccessories;
@end

@implementation HMDWACBrowser

- (HMDWACBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)scannerDidStop:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@WAC Scan Stopped...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDWACBrowser *)v6 scanIsActive])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v6;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v12;
      v19 = 2048;
      v20 = 2;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Scan was still flagged as active, restarting after %lu seconds...", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    __removeAllAccessories(v10);
    v13 = dispatch_time(0, 2000000000);
    dispatchQueue = v10->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__HMDWACBrowser_scannerDidStop___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = v10;
    dispatch_after(v13, dispatchQueue, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)scanner:(id)a3 didError:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Error while scanning for WAC devices: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)scanner:(id)a3 didUpdateDevice:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = v7;
  unassociatedAccessories = v8->_unassociatedAccessories;
  v11 = [v9 identifier];
  v12 = [(NSMutableDictionary *)unassociatedAccessories objectForKey:v11];

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v8;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v12 wacDevice];
      *v21 = 138543874;
      *&v21[4] = v16;
      *&v21[12] = 2112;
      *&v21[14] = v17;
      *&v21[22] = 2112;
      v22 = v9;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating WAC device: %@ -> %@", v21, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    [v12 setWACDevice:v9];
    v18 = [(HMDWACBrowser *)v14 delegate];
    if (v18)
    {
      v19 = [(HMDWACBrowser *)v14 delegateQueue];
      *v21 = MEMORY[0x277D85DD0];
      *&v21[8] = 3221225472;
      *&v21[16] = ____updateDevice_block_invoke;
      v22 = &unk_27868A750;
      v23 = v18;
      v24 = v12;
      dispatch_async(v19, v21);
    }
  }

  else
  {
    __addDevice(v8, v9);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)scanner:(id)a3 didRemoveDevice:(id)a4
{
  v5 = [a4 identifier];
  __removeUnassociatedAccessory(self, v5);
}

- (void)clearBackoff
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Backoff cleared", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  dispatchQueue = v4->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HMDWACBrowser_clearBackoff__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = v4;
  dispatch_async(dispatchQueue, block);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestBackoff
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Backoff requested", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  dispatchQueue = v4->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMDWACBrowser_requestBackoff__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = v4;
  dispatch_async(dispatchQueue, block);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)stopBrowsingForAccessories
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMDWACBrowser_stopBrowsingForAccessories__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __43__HMDWACBrowser_stopBrowsingForAccessories__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) stop];
  __removeAllAccessories(*(a1 + 32));
  v2 = *(a1 + 32);

  return [v2 setScanIsActive:0];
}

- (void)startBrowsingForAirPlayWACAccessoriesWithBrowser:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDWACBrowser_startBrowsingForAirPlayWACAccessoriesWithBrowser___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)startBrowsingForAccessories
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDWACBrowser_startBrowsingForAccessories__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __44__HMDWACBrowser_startBrowsingForAccessories__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) scanIsActive];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setScanIsActive:1];
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Activating WAC Scanner...", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    result = [*(*(a1 + 32) + 16) start];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDWACBrowser_setDelegate_queue___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__HMDWACBrowser_setDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setDelegateQueue:v2];
}

- (HMDWACBrowser)initWithWACScanner:(id)a3 messageDispatcher:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = HMDWACBrowser;
  v9 = [(HMDWACBrowser *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageDispatcher, a4);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    unassociatedAccessories = v10->_unassociatedAccessories;
    v10->_unassociatedAccessories = v11;

    v13 = HAPDispatchQueueName();
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(v13, v14);
    dispatchQueue = v10->_dispatchQueue;
    v10->_dispatchQueue = v15;

    objc_storeStrong(&v10->_wacScanner, a3);
    [(HMDWACScanner *)v10->_wacScanner setDelegate:v10 queue:v10->_dispatchQueue];
    v10->_scanIsActive = 0;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_168696 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_168696, &__block_literal_global_168697);
  }

  v3 = logCategory__hmf_once_v10_168698;

  return v3;
}

void __28__HMDWACBrowser_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_168698;
  logCategory__hmf_once_v10_168698 = v1;
}

@end