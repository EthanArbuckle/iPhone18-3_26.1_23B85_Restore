@interface HMDPhotoLibraryObserver
+ (id)logCategory;
- (HMDPhotoLibraryObserver)initWithUUID:(id)d workQueue:(id)queue photoLibrary:(id)library;
- (HMDPhotoLibraryObserver)initWithUUID:(id)d workQueue:(id)queue photoLibrary:(id)library updateTimer:(id)timer changeDebounceTimer:(id)debounceTimer changeDebounceLimit:(double)limit;
- (HMDPhotoLibraryObserverDelegate)delegate;
- (id)logIdentifier;
- (void)configure;
- (void)invalidate;
- (void)photoLibraryPersonsDidChange;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDPhotoLibraryObserver

- (HMDPhotoLibraryObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  uUID = [(HMDPhotoLibraryObserver *)self UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (void)timerDidFire:(id)fire
{
  v20 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDPhotoLibraryObserver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  delegate = [(HMDPhotoLibraryObserver *)self delegate];
  updateTimer = [(HMDPhotoLibraryObserver *)self updateTimer];

  if (updateTimer == fireCopy)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Update timer fired", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    goto LABEL_9;
  }

  changeDebounceTimer = [(HMDPhotoLibraryObserver *)self changeDebounceTimer];

  if (changeDebounceTimer == fireCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Photo library persons did change debounce timer fired", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDPhotoLibraryObserver *)selfCopy2 setInitiallyDebouncedChangeDate:0];
LABEL_9:
    [delegate observerDidObserveChange:self];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)photoLibraryPersonsDidChange
{
  v28 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDPhotoLibraryObserver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  initiallyDebouncedChangeDate = [(HMDPhotoLibraryObserver *)self initiallyDebouncedChangeDate];
  if (!initiallyDebouncedChangeDate)
  {
    goto LABEL_6;
  }

  v5 = initiallyDebouncedChangeDate;
  initiallyDebouncedChangeDate2 = [(HMDPhotoLibraryObserver *)self initiallyDebouncedChangeDate];
  [initiallyDebouncedChangeDate2 timeIntervalSinceNow];
  v8 = -v7;
  [(HMDPhotoLibraryObserver *)self changeDebounceLimit];
  v10 = v9;

  if (v10 < v8)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      initiallyDebouncedChangeDate3 = [(HMDPhotoLibraryObserver *)selfCopy initiallyDebouncedChangeDate];
      v24 = 138543618;
      v25 = v14;
      v26 = 2112;
      v27 = initiallyDebouncedChangeDate3;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Photo library persons did change; handling change immediately since we've been debouncing since %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    changeDebounceTimer = [(HMDPhotoLibraryObserver *)selfCopy changeDebounceTimer];
    [changeDebounceTimer fire];
  }

  else
  {
LABEL_6:
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Photo library persons did change; resuming debounce timer", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    initiallyDebouncedChangeDate4 = [(HMDPhotoLibraryObserver *)selfCopy2 initiallyDebouncedChangeDate];

    if (!initiallyDebouncedChangeDate4)
    {
      v22 = [MEMORY[0x277CBEAA8] now];
      [(HMDPhotoLibraryObserver *)selfCopy2 setInitiallyDebouncedChangeDate:v22];
    }

    changeDebounceTimer = [(HMDPhotoLibraryObserver *)selfCopy2 changeDebounceTimer];
    [changeDebounceTimer resume];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  workQueue = [(HMDPhotoLibraryObserver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  photoLibrary = [(HMDPhotoLibraryObserver *)self photoLibrary];
  [photoLibrary setDelegate:0];

  updateTimer = [(HMDPhotoLibraryObserver *)self updateTimer];
  [updateTimer suspend];

  changeDebounceTimer = [(HMDPhotoLibraryObserver *)self changeDebounceTimer];
  [changeDebounceTimer suspend];
}

- (void)configure
{
  workQueue = [(HMDPhotoLibraryObserver *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  photoLibrary = [(HMDPhotoLibraryObserver *)self photoLibrary];
  [photoLibrary setDelegate:self];

  updateTimer = [(HMDPhotoLibraryObserver *)self updateTimer];
  [updateTimer setDelegate:self];

  workQueue2 = [(HMDPhotoLibraryObserver *)self workQueue];
  updateTimer2 = [(HMDPhotoLibraryObserver *)self updateTimer];
  [updateTimer2 setDelegateQueue:workQueue2];

  updateTimer3 = [(HMDPhotoLibraryObserver *)self updateTimer];
  [updateTimer3 resume];

  changeDebounceTimer = [(HMDPhotoLibraryObserver *)self changeDebounceTimer];
  [changeDebounceTimer setDelegate:self];

  workQueue3 = [(HMDPhotoLibraryObserver *)self workQueue];
  changeDebounceTimer2 = [(HMDPhotoLibraryObserver *)self changeDebounceTimer];
  [changeDebounceTimer2 setDelegateQueue:workQueue3];
}

- (HMDPhotoLibraryObserver)initWithUUID:(id)d workQueue:(id)queue photoLibrary:(id)library updateTimer:(id)timer changeDebounceTimer:(id)debounceTimer changeDebounceLimit:(double)limit
{
  dCopy = d;
  queueCopy = queue;
  libraryCopy = library;
  timerCopy = timer;
  debounceTimerCopy = debounceTimer;
  v23.receiver = self;
  v23.super_class = HMDPhotoLibraryObserver;
  v19 = [(HMDPhotoLibraryObserver *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_workQueue, queue);
    objc_storeStrong(&v20->_UUID, d);
    objc_storeStrong(&v20->_photoLibrary, library);
    objc_storeStrong(&v20->_updateTimer, timer);
    objc_storeStrong(&v20->_changeDebounceTimer, debounceTimer);
    v20->_changeDebounceLimit = limit;
  }

  return v20;
}

- (HMDPhotoLibraryObserver)initWithUUID:(id)d workQueue:(id)queue photoLibrary:(id)library
{
  v8 = MEMORY[0x277D0F920];
  libraryCopy = library;
  queueCopy = queue;
  dCopy = d;
  v12 = [[v8 alloc] initWithTimeInterval:4 options:86400.0];
  v13 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:300.0];
  v14 = [(HMDPhotoLibraryObserver *)self initWithUUID:dCopy workQueue:queueCopy photoLibrary:libraryCopy updateTimer:v12 changeDebounceTimer:v13 changeDebounceLimit:7200.0];

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_67986 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_67986, &__block_literal_global_67987);
  }

  v3 = logCategory__hmf_once_v5_67988;

  return v3;
}

uint64_t __38__HMDPhotoLibraryObserver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_67988;
  logCategory__hmf_once_v5_67988 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end