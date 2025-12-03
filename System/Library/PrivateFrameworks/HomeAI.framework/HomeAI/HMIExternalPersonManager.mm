@interface HMIExternalPersonManager
- (HMIExternalPersonManager)initWithUUID:(id)d homeUUID:(id)iD;
- (HMIExternalPersonManager)initWithUUID:(id)d homeUUID:(id)iD watchdogTimer:(id)timer;
- (HMIExternalPersonManagerDataSource)dataSource;
- (HMIExternalPersonManagerSettings)settings;
- (id)logIdentifier;
- (void)_updateSettings:(id)settings;
- (void)handleDataChanged;
- (void)handleRemovedFaceCropWithUUID:(id)d;
- (void)handleRemovedFaceprintWithUUID:(id)d;
- (void)handleRemovedPersonWithUUID:(id)d;
- (void)handleUpdatedFaceprint:(id)faceprint;
- (void)handleUpdatedPerson:(id)person;
- (void)handleUpdatedPersonFaceCrop:(id)crop;
- (void)handleUpdatedSettings:(id)settings;
- (void)setDataSource:(id)source;
- (void)timerDidFire:(id)fire;
@end

@implementation HMIExternalPersonManager

- (HMIExternalPersonManager)initWithUUID:(id)d homeUUID:(id)iD
{
  v6 = MEMORY[0x277D0F920];
  iDCopy = iD;
  dCopy = d;
  v9 = [[v6 alloc] initWithTimeInterval:28 options:5.0];
  v10 = [(HMIExternalPersonManager *)self initWithUUID:dCopy homeUUID:iDCopy watchdogTimer:v9];

  return v10;
}

- (HMIExternalPersonManager)initWithUUID:(id)d homeUUID:(id)iD watchdogTimer:(id)timer
{
  timerCopy = timer;
  v14.receiver = self;
  v14.super_class = HMIExternalPersonManager;
  v10 = [(HMIPersonManager *)&v14 initWithUUID:d homeUUID:iD];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v10->_operationQueue;
    v10->_operationQueue = v11;

    [(NSOperationQueue *)v10->_operationQueue setMaxConcurrentOperationCount:1];
    objc_storeStrong(&v10->_watchdogTimer, timer);
    [(HMFTimer *)v10->_watchdogTimer setDelegate:v10];
    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (void)setDataSource:(id)source
{
  location[3] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_dataSource, sourceCopy);
  os_unfair_lock_unlock(&self->_lock);
  if (sourceCopy)
  {
    v5 = [objc_alloc(MEMORY[0x277D0F780]) initWithTimeout:0.0];
    objc_initWeak(location, v5);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__HMIExternalPersonManager_setDataSource___block_invoke;
    v11[3] = &unk_278752AC0;
    objc_copyWeak(&v13, location);
    v11[4] = self;
    v12 = sourceCopy;
    [v5 addExecutionBlock:v11];
    operationQueue = [(HMIExternalPersonManager *)self operationQueue];
    [operationQueue addOperation:v5];

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v10;
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_ERROR, "%{public}@Received nil data source", location, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void __42__HMIExternalPersonManager_setDataSource___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 40);
    *buf = 138543618;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@Fetching settings using data source: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__HMIExternalPersonManager_setDataSource___block_invoke_3;
  v10[3] = &unk_278754EE0;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = WeakRetained;
  v9 = WeakRetained;
  [v8 fetchSettingsWithCompletion:v10];
}

void __42__HMIExternalPersonManager_setDataSource___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) _updateSettings:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_ERROR, "%{public}@Error fetching settings: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  [*(a1 + 40) finish];
}

- (HMIExternalPersonManagerSettings)settings
{
  os_unfair_lock_lock_with_options();
  v3 = self->_settings;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)handleDataChanged
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_DEBUG, "%{public}@handleDataChanged", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  watchdogTimer = [(HMIExternalPersonManager *)selfCopy watchdogTimer];
  [watchdogTimer resume];
}

- (void)handleUpdatedPerson:(id)person
{
  v14 = *MEMORY[0x277D85DE8];
  personCopy = person;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = personCopy;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@handleUpdatedPerson: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  watchdogTimer = [(HMIExternalPersonManager *)selfCopy watchdogTimer];
  [watchdogTimer resume];
}

- (void)handleUpdatedPersonFaceCrop:(id)crop
{
  v14 = *MEMORY[0x277D85DE8];
  cropCopy = crop;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = cropCopy;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@handleUpdatedPersonFaceCrop: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  watchdogTimer = [(HMIExternalPersonManager *)selfCopy watchdogTimer];
  [watchdogTimer resume];
}

- (void)handleUpdatedFaceprint:(id)faceprint
{
  v13 = *MEMORY[0x277D85DE8];
  faceprintCopy = faceprint;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = faceprintCopy;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@handleUpdatedFaceprint: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)handleUpdatedSettings:(id)settings
{
  v13 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = settingsCopy;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@handleUpdatedSettings: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMIExternalPersonManager *)selfCopy _updateSettings:settingsCopy];
}

- (void)handleRemovedPersonWithUUID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = dCopy;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@handleRemovedPersonWithUUID: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  watchdogTimer = [(HMIExternalPersonManager *)selfCopy watchdogTimer];
  [watchdogTimer resume];
}

- (void)handleRemovedFaceCropWithUUID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = dCopy;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@handleRemovedFaceCropWithUUID: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  watchdogTimer = [(HMIExternalPersonManager *)selfCopy watchdogTimer];
  [watchdogTimer resume];
}

- (void)handleRemovedFaceprintWithUUID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = dCopy;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@handleRemovedFaceprintWithUUID: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)timerDidFire:(id)fire
{
  v21 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v5 = objc_autoreleasePoolPush();
  isPersonDataAvailableViaHomeKit = [(HMIPersonManager *)self isPersonDataAvailableViaHomeKit];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (isPersonDataAvailableViaHomeKit)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v11;
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_INFO, "%{public}@Timer fired, updating external persons model", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [HMIUpdatePersonsModelOperation alloc];
    uUID = [(HMIPersonManager *)selfCopy UUID];
    homeUUID = [(HMIPersonManager *)selfCopy homeUUID];
    watchdogTimer2 = [(HMIUpdatePersonsModelOperation *)v12 initWithSourceUUID:uUID homeUUID:homeUUID external:1];

    operationQueue = [(HMIExternalPersonManager *)selfCopy operationQueue];
    [operationQueue addOperation:watchdogTimer2];

    watchdogTimer = [(HMIExternalPersonManager *)selfCopy watchdogTimer];
    [watchdogTimer suspend];
  }

  else
  {
    if (v10)
    {
      v18 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v18;
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_INFO, "%{public}@Timer fired, but person data is not yet available, waiting...", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    watchdogTimer2 = [(HMIExternalPersonManager *)selfCopy watchdogTimer];
    [(HMIUpdatePersonsModelOperation *)watchdogTimer2 resume];
  }

  objc_autoreleasePoolPop(v5);
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  uUID = [(HMIPersonManager *)self UUID];
  homeUUID = [(HMIPersonManager *)self homeUUID];
  v6 = [v3 stringWithFormat:@"UUID:%@ HomeUUID:%@", uUID, homeUUID];

  return v6;
}

- (void)_updateSettings:(id)settings
{
  v27 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v9;
    v25 = 2112;
    v26 = settingsCopy;
    _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating with settings: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  os_unfair_lock_lock_with_options();
  objc_storeStrong(&selfCopy->_settings, settings);
  os_unfair_lock_unlock(&selfCopy->_lock);
  if (settingsCopy && ([settingsCopy isImportingFromPhotoLibraryEnabled] & 1) != 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v13;
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_INFO, "%{public}@Settings have enabled face classification, updating external persons model", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    watchdogTimer = [(HMIExternalPersonManager *)v11 watchdogTimer];
    [(HMIRemovePersonsModelOperation *)watchdogTimer resume];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v18;
      _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_INFO, "%{public}@Settings have disabled face classification, removing external persons model", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [HMIRemovePersonsModelOperation alloc];
    uUID = [(HMIPersonManager *)v16 UUID];
    homeUUID = [(HMIPersonManager *)v16 homeUUID];
    watchdogTimer = [(HMIRemovePersonsModelOperation *)v19 initWithSourceUUID:uUID homeUUID:homeUUID external:1];

    operationQueue = [(HMIExternalPersonManager *)v16 operationQueue];
    [operationQueue addOperation:watchdogTimer];
  }
}

- (HMIExternalPersonManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end