@interface HMIHomePersonManager
- (HMIHomePersonManager)initWithUUID:(id)d homeUUID:(id)iD;
- (HMIHomePersonManager)initWithUUID:(id)d homeUUID:(id)iD watchdogTimer:(id)timer;
- (HMIHomePersonManagerDataSource)dataSource;
- (HMIHomePersonManagerSettings)settings;
- (id)logIdentifier;
- (void)_updateSettings:(id)settings;
- (void)handleDataChanged;
- (void)handleMisclassifiedPersonForFaceCrop:(id)crop;
- (void)handleNewFaceEvents:(id)events;
- (void)handleRemovedFaceCropWithUUID:(id)d;
- (void)handleRemovedFaceprintWithUUID:(id)d;
- (void)handleRemovedPersonWithUUID:(id)d;
- (void)handleUpdatedFaceprint:(id)faceprint;
- (void)handleUpdatedPerson:(id)person;
- (void)handleUpdatedPersonFaceCrop:(id)crop;
- (void)handleUpdatedSettings:(id)settings;
- (void)handleUpdatedUnassociatedFaceCrop:(id)crop;
- (void)setDataSource:(id)source;
- (void)storeFaceprint:(id)faceprint completion:(id)completion;
- (void)storeUnassociatedFaceCrop:(id)crop completion:(id)completion;
- (void)timerDidFire:(id)fire;
@end

@implementation HMIHomePersonManager

- (HMIHomePersonManager)initWithUUID:(id)d homeUUID:(id)iD
{
  v6 = MEMORY[0x277D0F920];
  iDCopy = iD;
  dCopy = d;
  v9 = [[v6 alloc] initWithTimeInterval:28 options:5.0];
  v10 = [(HMIHomePersonManager *)self initWithUUID:dCopy homeUUID:iDCopy watchdogTimer:v9];

  return v10;
}

- (HMIHomePersonManager)initWithUUID:(id)d homeUUID:(id)iD watchdogTimer:(id)timer
{
  timerCopy = timer;
  v18.receiver = self;
  v18.super_class = HMIHomePersonManager;
  v10 = [(HMIPersonManager *)&v18 initWithUUID:d homeUUID:iD];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v10->_operationQueue;
    v10->_operationQueue = v11;

    [(NSOperationQueue *)v10->_operationQueue setMaxConcurrentOperationCount:1];
    objc_storeStrong(&v10->_watchdogTimer, timer);
    [(HMFTimer *)v10->_watchdogTimer setDelegate:v10];
    v13 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:12 options:3600.0];
    analyticsTimer = v10->_analyticsTimer;
    v10->_analyticsTimer = v13;

    [(HMFTimer *)v10->_analyticsTimer setDelegate:v10];
    [(HMFTimer *)v10->_analyticsTimer resume];
    v10->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    unknownFacesSavedCounts = v10->_unknownFacesSavedCounts;
    v10->_unknownFacesSavedCounts = dictionary;
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
    v11[2] = __38__HMIHomePersonManager_setDataSource___block_invoke;
    v11[3] = &unk_278752AC0;
    objc_copyWeak(&v13, location);
    v11[4] = self;
    v12 = sourceCopy;
    [v5 addExecutionBlock:v11];
    operationQueue = [(HMIHomePersonManager *)self operationQueue];
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

void __38__HMIHomePersonManager_setDataSource___block_invoke(uint64_t a1)
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
  v10[2] = __38__HMIHomePersonManager_setDataSource___block_invoke_4;
  v10[3] = &unk_278752A98;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = WeakRetained;
  v9 = WeakRetained;
  [v8 fetchSettingsWithCompletion:v10];
}

void __38__HMIHomePersonManager_setDataSource___block_invoke_4(uint64_t a1, void *a2, void *a3)
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

- (HMIHomePersonManagerSettings)settings
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
  watchdogTimer = [(HMIHomePersonManager *)selfCopy watchdogTimer];
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
  watchdogTimer = [(HMIHomePersonManager *)selfCopy watchdogTimer];
  [watchdogTimer resume];
}

- (void)handleUpdatedUnassociatedFaceCrop:(id)crop
{
  v13 = *MEMORY[0x277D85DE8];
  cropCopy = crop;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = cropCopy;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@handleUpdatedUnassociatedFaceCrop: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
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
  watchdogTimer = [(HMIHomePersonManager *)selfCopy watchdogTimer];
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
  [(HMIHomePersonManager *)selfCopy _updateSettings:settingsCopy];
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
  watchdogTimer = [(HMIHomePersonManager *)selfCopy watchdogTimer];
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
  watchdogTimer = [(HMIHomePersonManager *)selfCopy watchdogTimer];
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

- (void)handleMisclassifiedPersonForFaceCrop:(id)crop
{
  v19[3] = *MEMORY[0x277D85DE8];
  cropCopy = crop;
  v5 = +[HMITaskService taskServiceClient];
  v19[0] = HMITaskTypeFaceMisclassificationTask;
  v18[0] = @"taskType";
  v18[1] = @"homeUUID";
  homeUUID = [(HMIPersonManager *)self homeUUID];
  v18[2] = @"faceCrop";
  v19[1] = homeUUID;
  v19[2] = cropCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__HMIHomePersonManager_handleMisclassifiedPersonForFaceCrop___block_invoke;
  v13[3] = &unk_278752AE8;
  v13[4] = self;
  v8 = [v5 submitTaskWithOptions:v7 progressHandler:0 completionHandler:v13];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v12;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_INFO, "%{public}@Submitted face misclassification task, taskID:%u", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v9);
}

void __61__HMIHomePersonManager_handleMisclassifiedPersonForFaceCrop___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"resultCode"];
  v8 = HMITaskResultCodeAsString(0);
  v9 = [v7 isEqualToString:v8];

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v14;
      v15 = "%{public}@Successfully handled face misclassification";
      v16 = v13;
      v17 = OS_LOG_TYPE_INFO;
      v18 = 12;
LABEL_6:
      _os_log_impl(&dword_22D12F000, v16, v17, v15, &v19, v18);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v14;
    v21 = 2112;
    v22 = v6;
    v15 = "%{public}@Error in handling face misclassification, error:%@";
    v16 = v13;
    v17 = OS_LOG_TYPE_ERROR;
    v18 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v10);
}

- (void)storeUnassociatedFaceCrop:(id)crop completion:(id)completion
{
  cropCopy = crop;
  completionCopy = completion;
  dataSource = [(HMIHomePersonManager *)self dataSource];
  if (dataSource)
  {
    v9 = [[HMIStoreFaceCropOperation alloc] initWithDataSource:dataSource faceCrop:cropCopy];
    objc_initWeak(&location, v9);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__HMIHomePersonManager_storeUnassociatedFaceCrop_completion___block_invoke;
    v11[3] = &unk_278752B10;
    objc_copyWeak(&v13, &location);
    v12 = completionCopy;
    [(HMIStoreFaceCropOperation *)v9 setCompletionBlock:v11];
    operationQueue = [(HMIHomePersonManager *)self operationQueue];
    [operationQueue addOperation:v9];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1036];
    (*(completionCopy + 2))(completionCopy, v9);
  }
}

void __61__HMIHomePersonManager_storeUnassociatedFaceCrop_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [WeakRetained error];
  (*(v2 + 16))(v2, v3);
}

- (void)storeFaceprint:(id)faceprint completion:(id)completion
{
  faceprintCopy = faceprint;
  completionCopy = completion;
  dataSource = [(HMIHomePersonManager *)self dataSource];
  if (dataSource)
  {
    v9 = [[HMIStoreFaceprintOperation alloc] initWithDataSource:dataSource faceprint:faceprintCopy];
    objc_initWeak(&location, v9);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__HMIHomePersonManager_storeFaceprint_completion___block_invoke;
    v11[3] = &unk_278752B10;
    objc_copyWeak(&v13, &location);
    v12 = completionCopy;
    [(HMIStoreFaceprintOperation *)v9 setCompletionBlock:v11];
    operationQueue = [(HMIHomePersonManager *)self operationQueue];
    [operationQueue addOperation:v9];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1036];
    (*(completionCopy + 2))(completionCopy, v9);
  }
}

void __50__HMIHomePersonManager_storeFaceprint_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [WeakRetained error];
  (*(v2 + 16))(v2, v3);
}

- (void)handleNewFaceEvents:(id)events
{
  v58 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = events;
  v41 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v41)
  {
    v40 = *v48;
    *&v4 = 138543874;
    v38 = v4;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v48 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v47 + 1) + 8 * i);
        faceRecognition = [v6 faceRecognition];
        v8 = faceRecognition;
        if (faceRecognition)
        {
          classifications = [faceRecognition classifications];
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __44__HMIHomePersonManager_handleNewFaceEvents___block_invoke;
          v46[3] = &unk_278752B38;
          v46[4] = self;
          v10 = [classifications na_firstObjectPassingTest:v46];

          if (v10)
          {
            os_unfair_lock_lock_with_options();
            unknownFacesSavedCounts = [(HMIHomePersonManager *)self unknownFacesSavedCounts];
            sessionEntityUUID = [v10 sessionEntityUUID];
            v13 = [unknownFacesSavedCounts objectForKeyedSubscript:sessionEntityUUID];

            if (v13)
            {
              intValue = [v13 intValue];
            }

            else
            {
              intValue = 0;
            }

            os_unfair_lock_unlock(&self->_lock);
            if (intValue >= 0xA)
            {
              v32 = objc_autoreleasePoolPush();
              selfCopy = self;
              v34 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                v35 = HMFGetLogIdentifier();
                sessionEntityUUID2 = [v10 sessionEntityUUID];
                uUID = [(HMIPersonManager *)selfCopy UUID];
                *buf = v38;
                v52 = v35;
                v53 = 2112;
                v54 = sessionEntityUUID2;
                v55 = 2112;
                v56 = uUID;
                _os_log_impl(&dword_22D12F000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Reached face crop limit for sessionEntityUUID:%@ for HMIHomePersonManager.UUID:%@; not storing", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v32);
            }

            else
            {
              os_unfair_lock_lock_with_options();
              v20 = [MEMORY[0x277CCABB0] numberWithInt:intValue + 1];
              unknownFacesSavedCounts2 = [(HMIHomePersonManager *)self unknownFacesSavedCounts];
              sessionEntityUUID3 = [v10 sessionEntityUUID];
              [unknownFacesSavedCounts2 setObject:v20 forKeyedSubscript:sessionEntityUUID3];

              os_unfair_lock_unlock(&self->_lock);
              v23 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v25 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                v26 = HMFGetLogIdentifier();
                faceCrop = [v8 faceCrop];
                faceprint = [v8 faceprint];
                *buf = v38;
                v52 = v26;
                v53 = 2112;
                v54 = faceCrop;
                v55 = 2112;
                v56 = faceprint;
                _os_log_impl(&dword_22D12F000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Storing unknown to Home face crop:%@ and faceprint:%@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v23);
              faceCrop2 = [v8 faceCrop];
              v44[0] = MEMORY[0x277D85DD0];
              v44[1] = 3221225472;
              v44[2] = __44__HMIHomePersonManager_handleNewFaceEvents___block_invoke_15;
              v44[3] = &unk_278752B60;
              v44[4] = selfCopy2;
              v30 = v8;
              v45 = v30;
              [(HMIHomePersonManager *)selfCopy2 storeUnassociatedFaceCrop:faceCrop2 completion:v44];

              faceprint2 = [v30 faceprint];
              v42[0] = MEMORY[0x277D85DD0];
              v42[1] = 3221225472;
              v42[2] = __44__HMIHomePersonManager_handleNewFaceEvents___block_invoke_17;
              v42[3] = &unk_278752B60;
              v42[4] = selfCopy2;
              v43 = v30;
              [(HMIHomePersonManager *)selfCopy2 storeFaceprint:faceprint2 completion:v42];
            }
          }

          else
          {
            v15 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v17 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v18 = HMFGetLogIdentifier();
              uUID2 = [(HMIPersonManager *)selfCopy3 UUID];
              *buf = v38;
              v52 = v18;
              v53 = 2112;
              v54 = uUID2;
              v55 = 2112;
              v56 = v6;
              _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Not storing face crop and faceprint for HMIHomePersonManager.UUID:%@ from face event:%@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v15);
          }
        }
      }

      v41 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v41);
  }
}

uint64_t __44__HMIHomePersonManager_handleNewFaceEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 familiarity])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 sourceUUID];
    v6 = [*(a1 + 32) UUID];
    v4 = [v5 isEqual:v6];
  }

  return v4;
}

void __44__HMIHomePersonManager_handleNewFaceEvents___block_invoke_15(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) faceCrop];
      v14 = 138543874;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      v10 = "%{public}@Error storing unassociated face crop:%@, error:%@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_22D12F000, v11, v12, v10, &v14, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 40) faceCrop];
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v10 = "%{public}@Stored unassociated face crop:%@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

void __44__HMIHomePersonManager_handleNewFaceEvents___block_invoke_17(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) faceprint];
      v14 = 138543874;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      v10 = "%{public}@Error storing faceprint:%@, error:%@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_22D12F000, v11, v12, v10, &v14, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 40) faceprint];
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v10 = "%{public}@Stored faceprint:%@";
    v11 = v7;
    v12 = OS_LOG_TYPE_DEBUG;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)timerDidFire:(id)fire
{
  v51 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v5 = objc_autoreleasePoolPush();
  watchdogTimer = [(HMIHomePersonManager *)self watchdogTimer];

  if (watchdogTimer == fireCopy)
  {
    isPersonDataAvailableViaHomeKit = [(HMIPersonManager *)self isPersonDataAvailableViaHomeKit];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (isPersonDataAvailableViaHomeKit)
    {
      if (v16)
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v48 = v17;
        _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_INFO, "%{public}@Timer fired, updating home persons model", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v18 = [HMIUpdatePersonsModelOperation alloc];
      uUID = [(HMIPersonManager *)selfCopy UUID];
      homeUUID = [(HMIPersonManager *)selfCopy homeUUID];
      v21 = [(HMIUpdatePersonsModelOperation *)v18 initWithSourceUUID:uUID homeUUID:homeUUID external:0];

      operationQueue = [(HMIHomePersonManager *)selfCopy operationQueue];
      [operationQueue addOperation:v21];

      watchdogTimer2 = [(HMIHomePersonManager *)selfCopy watchdogTimer];
      [watchdogTimer2 suspend];
    }

    else
    {
      if (v16)
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v48 = v38;
        _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_INFO, "%{public}@Timer fired, but person data is not yet available, waiting...", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      watchdogTimer3 = [(HMIHomePersonManager *)selfCopy watchdogTimer];
      [watchdogTimer3 resume];
    }
  }

  else
  {
    analyticsTimer = [(HMIHomePersonManager *)self analyticsTimer];

    if (analyticsTimer != fireCopy)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v11;
        v49 = 2112;
        v50 = fireCopy;
        _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unrecognized timer: %@", buf, 0x16u);
      }

LABEL_20:

      objc_autoreleasePoolPop(v8);
      goto LABEL_21;
    }

    settings = [(HMIHomePersonManager *)self settings];
    isFaceClassificationEnabled = [settings isFaceClassificationEnabled];

    if (isFaceClassificationEnabled)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults doubleForKey:@"HMICoreAnalyticsVIPModelReportTime"];
      v28 = v27;

      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceReferenceDate];
      v31 = v30 - v28 >= 86400.0;

      v8 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v10 = HMFGetOSLogHandle();
      v32 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
      if (!v31)
      {
        if (v32)
        {
          v40 = HMFGetLogIdentifier();
          *buf = 138543362;
          v48 = v40;
          _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Not triggering daily VIP Model Core Analytics event, last event was sent less than 1 day ago", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v32)
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v48 = v33;
        _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Triggering daily VIP Model Core Analytics event", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      date2 = [MEMORY[0x277CBEAA8] date];
      [date2 timeIntervalSinceReferenceDate];
      [standardUserDefaults2 setDouble:@"HMICoreAnalyticsVIPModelReportTime" forKey:?];

      v36 = [objc_alloc(MEMORY[0x277D0F780]) initWithTimeout:0.0];
      objc_initWeak(buf, v36);
      v41 = MEMORY[0x277D85DD0];
      v42 = 3221225472;
      v43 = __37__HMIHomePersonManager_timerDidFire___block_invoke;
      v44 = &unk_278752BB0;
      objc_copyWeak(&v46, buf);
      v45 = selfCopy3;
      [v36 addExecutionBlock:&v41];
      v37 = [(HMIHomePersonManager *)selfCopy3 operationQueue:v41];
      [v37 addOperation:v36];

      objc_destroyWeak(&v46);
      objc_destroyWeak(buf);
    }
  }

LABEL_21:
  objc_autoreleasePoolPop(v5);
}

void __37__HMIHomePersonManager_timerDidFire___block_invoke(uint64_t a1)
{
  v19[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[HMITaskService taskServiceClient];
  v19[0] = HMITaskTypePersonsModelsSummaryTask;
  v18[0] = @"taskType";
  v18[1] = @"homeUUID";
  v4 = [*(a1 + 32) homeUUID];
  v19[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__HMIHomePersonManager_timerDidFire___block_invoke_2;
  v12[3] = &unk_278752B88;
  v12[4] = *(a1 + 32);
  v6 = WeakRetained;
  v13 = v6;
  v7 = [v3 submitTaskWithOptions:v5 progressHandler:0 completionHandler:v12];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v11;
    v16 = 1024;
    v17 = v7;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_INFO, "%{public}@Submitted persons model summary task, taskID:%u", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v8);
}

void __37__HMIHomePersonManager_timerDidFire___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"resultCode"];
  v8 = HMITaskResultCodeAsString(0);
  v9 = [v7 isEqualToString:v8];

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@Successfully ran persons model summary task", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 40) finish];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v15;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to run persons model summary task, error:%@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 40) cancelWithError:v6];
  }
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
  if (settingsCopy && ([settingsCopy isFaceClassificationEnabled] & 1) != 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v13;
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_INFO, "%{public}@Settings have enabled face classification, updating home persons model", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    watchdogTimer = [(HMIHomePersonManager *)v11 watchdogTimer];
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
      _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_INFO, "%{public}@Settings have disabled face classification, removing home persons model", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [HMIRemovePersonsModelOperation alloc];
    uUID = [(HMIPersonManager *)v16 UUID];
    homeUUID = [(HMIPersonManager *)v16 homeUUID];
    watchdogTimer = [(HMIRemovePersonsModelOperation *)v19 initWithSourceUUID:uUID homeUUID:homeUUID external:0];

    operationQueue = [(HMIHomePersonManager *)v16 operationQueue];
    [operationQueue addOperation:watchdogTimer];
  }
}

- (HMIHomePersonManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end