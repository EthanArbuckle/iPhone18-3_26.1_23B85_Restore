@interface HMDPhotoLibraryObserver
+ (id)logCategory;
- (HMDPhotoLibraryObserver)initWithUUID:(id)a3 workQueue:(id)a4 photoLibrary:(id)a5;
- (HMDPhotoLibraryObserver)initWithUUID:(id)a3 workQueue:(id)a4 photoLibrary:(id)a5 updateTimer:(id)a6 changeDebounceTimer:(id)a7 changeDebounceLimit:(double)a8;
- (HMDPhotoLibraryObserverDelegate)delegate;
- (id)logIdentifier;
- (void)configure;
- (void)invalidate;
- (void)photoLibraryPersonsDidChange;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDPhotoLibraryObserver

- (HMDPhotoLibraryObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDPhotoLibraryObserver *)self UUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)timerDidFire:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPhotoLibraryObserver *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDPhotoLibraryObserver *)self delegate];
  v7 = [(HMDPhotoLibraryObserver *)self updateTimer];

  if (v7 == v4)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Update timer fired", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    goto LABEL_9;
  }

  v8 = [(HMDPhotoLibraryObserver *)self changeDebounceTimer];

  if (v8 == v4)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Photo library persons did change debounce timer fired", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDPhotoLibraryObserver *)v10 setInitiallyDebouncedChangeDate:0];
LABEL_9:
    [v6 observerDidObserveChange:self];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)photoLibraryPersonsDidChange
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPhotoLibraryObserver *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDPhotoLibraryObserver *)self initiallyDebouncedChangeDate];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [(HMDPhotoLibraryObserver *)self initiallyDebouncedChangeDate];
  [v6 timeIntervalSinceNow];
  v8 = -v7;
  [(HMDPhotoLibraryObserver *)self changeDebounceLimit];
  v10 = v9;

  if (v10 < v8)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HMDPhotoLibraryObserver *)v12 initiallyDebouncedChangeDate];
      v24 = 138543618;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Photo library persons did change; handling change immediately since we've been debouncing since %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [(HMDPhotoLibraryObserver *)v12 changeDebounceTimer];
    [v16 fire];
  }

  else
  {
LABEL_6:
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Photo library persons did change; resuming debounce timer", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [(HMDPhotoLibraryObserver *)v18 initiallyDebouncedChangeDate];

    if (!v21)
    {
      v22 = [MEMORY[0x277CBEAA8] now];
      [(HMDPhotoLibraryObserver *)v18 setInitiallyDebouncedChangeDate:v22];
    }

    v16 = [(HMDPhotoLibraryObserver *)v18 changeDebounceTimer];
    [v16 resume];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v3 = [(HMDPhotoLibraryObserver *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDPhotoLibraryObserver *)self photoLibrary];
  [v4 setDelegate:0];

  v5 = [(HMDPhotoLibraryObserver *)self updateTimer];
  [v5 suspend];

  v6 = [(HMDPhotoLibraryObserver *)self changeDebounceTimer];
  [v6 suspend];
}

- (void)configure
{
  v3 = [(HMDPhotoLibraryObserver *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDPhotoLibraryObserver *)self photoLibrary];
  [v4 setDelegate:self];

  v5 = [(HMDPhotoLibraryObserver *)self updateTimer];
  [v5 setDelegate:self];

  v6 = [(HMDPhotoLibraryObserver *)self workQueue];
  v7 = [(HMDPhotoLibraryObserver *)self updateTimer];
  [v7 setDelegateQueue:v6];

  v8 = [(HMDPhotoLibraryObserver *)self updateTimer];
  [v8 resume];

  v9 = [(HMDPhotoLibraryObserver *)self changeDebounceTimer];
  [v9 setDelegate:self];

  v11 = [(HMDPhotoLibraryObserver *)self workQueue];
  v10 = [(HMDPhotoLibraryObserver *)self changeDebounceTimer];
  [v10 setDelegateQueue:v11];
}

- (HMDPhotoLibraryObserver)initWithUUID:(id)a3 workQueue:(id)a4 photoLibrary:(id)a5 updateTimer:(id)a6 changeDebounceTimer:(id)a7 changeDebounceLimit:(double)a8
{
  v22 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v23.receiver = self;
  v23.super_class = HMDPhotoLibraryObserver;
  v19 = [(HMDPhotoLibraryObserver *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_workQueue, a4);
    objc_storeStrong(&v20->_UUID, a3);
    objc_storeStrong(&v20->_photoLibrary, a5);
    objc_storeStrong(&v20->_updateTimer, a6);
    objc_storeStrong(&v20->_changeDebounceTimer, a7);
    v20->_changeDebounceLimit = a8;
  }

  return v20;
}

- (HMDPhotoLibraryObserver)initWithUUID:(id)a3 workQueue:(id)a4 photoLibrary:(id)a5
{
  v8 = MEMORY[0x277D0F920];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithTimeInterval:4 options:86400.0];
  v13 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:300.0];
  v14 = [(HMDPhotoLibraryObserver *)self initWithUUID:v11 workQueue:v10 photoLibrary:v9 updateTimer:v12 changeDebounceTimer:v13 changeDebounceLimit:7200.0];

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_277510 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_277510, &__block_literal_global_277511);
  }

  v3 = logCategory__hmf_once_v5_277512;

  return v3;
}

void __38__HMDPhotoLibraryObserver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_277512;
  logCategory__hmf_once_v5_277512 = v1;
}

@end