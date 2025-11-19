@interface HMIHomePersonManager
- (HMIHomePersonManager)initWithUUID:(id)a3 homeUUID:(id)a4;
- (HMIHomePersonManager)initWithUUID:(id)a3 homeUUID:(id)a4 watchdogTimer:(id)a5;
- (HMIHomePersonManagerDataSource)dataSource;
- (HMIHomePersonManagerSettings)settings;
- (id)logIdentifier;
- (void)_updateSettings:(id)a3;
- (void)handleDataChanged;
- (void)handleMisclassifiedPersonForFaceCrop:(id)a3;
- (void)handleNewFaceEvents:(id)a3;
- (void)handleRemovedFaceCropWithUUID:(id)a3;
- (void)handleRemovedFaceprintWithUUID:(id)a3;
- (void)handleRemovedPersonWithUUID:(id)a3;
- (void)handleUpdatedFaceprint:(id)a3;
- (void)handleUpdatedPerson:(id)a3;
- (void)handleUpdatedPersonFaceCrop:(id)a3;
- (void)handleUpdatedSettings:(id)a3;
- (void)handleUpdatedUnassociatedFaceCrop:(id)a3;
- (void)setDataSource:(id)a3;
- (void)storeFaceprint:(id)a3 completion:(id)a4;
- (void)storeUnassociatedFaceCrop:(id)a3 completion:(id)a4;
- (void)timerDidFire:(id)a3;
@end

@implementation HMIHomePersonManager

- (HMIHomePersonManager)initWithUUID:(id)a3 homeUUID:(id)a4
{
  v6 = MEMORY[0x277D0F920];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithTimeInterval:28 options:5.0];
  v10 = [(HMIHomePersonManager *)self initWithUUID:v8 homeUUID:v7 watchdogTimer:v9];

  return v10;
}

- (HMIHomePersonManager)initWithUUID:(id)a3 homeUUID:(id)a4 watchdogTimer:(id)a5
{
  v9 = a5;
  v18.receiver = self;
  v18.super_class = HMIHomePersonManager;
  v10 = [(HMIPersonManager *)&v18 initWithUUID:a3 homeUUID:a4];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v10->_operationQueue;
    v10->_operationQueue = v11;

    [(NSOperationQueue *)v10->_operationQueue setMaxConcurrentOperationCount:1];
    objc_storeStrong(&v10->_watchdogTimer, a5);
    [(HMFTimer *)v10->_watchdogTimer setDelegate:v10];
    v13 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:12 options:3600.0];
    analyticsTimer = v10->_analyticsTimer;
    v10->_analyticsTimer = v13;

    [(HMFTimer *)v10->_analyticsTimer setDelegate:v10];
    [(HMFTimer *)v10->_analyticsTimer resume];
    v10->_lock._os_unfair_lock_opaque = 0;
    v15 = [MEMORY[0x277CBEB38] dictionary];
    unknownFacesSavedCounts = v10->_unknownFacesSavedCounts;
    v10->_unknownFacesSavedCounts = v15;
  }

  return v10;
}

- (void)setDataSource:(id)a3
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_dataSource, v4);
  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D0F780]) initWithTimeout:0.0];
    objc_initWeak(location, v5);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__HMIHomePersonManager_setDataSource___block_invoke;
    v11[3] = &unk_278752AC0;
    objc_copyWeak(&v13, location);
    v11[4] = self;
    v12 = v4;
    [v5 addExecutionBlock:v11];
    v6 = [(HMIHomePersonManager *)self operationQueue];
    [v6 addOperation:v5];

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
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
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_DEBUG, "%{public}@handleDataChanged", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMIHomePersonManager *)v4 watchdogTimer];
  [v7 resume];
}

- (void)handleUpdatedPerson:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@handleUpdatedPerson: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMIHomePersonManager *)v6 watchdogTimer];
  [v9 resume];
}

- (void)handleUpdatedUnassociatedFaceCrop:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@handleUpdatedUnassociatedFaceCrop: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)handleUpdatedPersonFaceCrop:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@handleUpdatedPersonFaceCrop: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMIHomePersonManager *)v6 watchdogTimer];
  [v9 resume];
}

- (void)handleUpdatedFaceprint:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@handleUpdatedFaceprint: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)handleUpdatedSettings:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@handleUpdatedSettings: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMIHomePersonManager *)v6 _updateSettings:v4];
}

- (void)handleRemovedPersonWithUUID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@handleRemovedPersonWithUUID: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMIHomePersonManager *)v6 watchdogTimer];
  [v9 resume];
}

- (void)handleRemovedFaceCropWithUUID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@handleRemovedFaceCropWithUUID: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMIHomePersonManager *)v6 watchdogTimer];
  [v9 resume];
}

- (void)handleRemovedFaceprintWithUUID:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@handleRemovedFaceprintWithUUID: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)handleMisclassifiedPersonForFaceCrop:(id)a3
{
  v19[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[HMITaskService taskServiceClient];
  v19[0] = HMITaskTypeFaceMisclassificationTask;
  v18[0] = @"taskType";
  v18[1] = @"homeUUID";
  v6 = [(HMIPersonManager *)self homeUUID];
  v18[2] = @"faceCrop";
  v19[1] = v6;
  v19[2] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__HMIHomePersonManager_handleMisclassifiedPersonForFaceCrop___block_invoke;
  v13[3] = &unk_278752AE8;
  v13[4] = self;
  v8 = [v5 submitTaskWithOptions:v7 progressHandler:0 completionHandler:v13];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
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

- (void)storeUnassociatedFaceCrop:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMIHomePersonManager *)self dataSource];
  if (v8)
  {
    v9 = [[HMIStoreFaceCropOperation alloc] initWithDataSource:v8 faceCrop:v6];
    objc_initWeak(&location, v9);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__HMIHomePersonManager_storeUnassociatedFaceCrop_completion___block_invoke;
    v11[3] = &unk_278752B10;
    objc_copyWeak(&v13, &location);
    v12 = v7;
    [(HMIStoreFaceCropOperation *)v9 setCompletionBlock:v11];
    v10 = [(HMIHomePersonManager *)self operationQueue];
    [v10 addOperation:v9];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1036];
    (*(v7 + 2))(v7, v9);
  }
}

void __61__HMIHomePersonManager_storeUnassociatedFaceCrop_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [WeakRetained error];
  (*(v2 + 16))(v2, v3);
}

- (void)storeFaceprint:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMIHomePersonManager *)self dataSource];
  if (v8)
  {
    v9 = [[HMIStoreFaceprintOperation alloc] initWithDataSource:v8 faceprint:v6];
    objc_initWeak(&location, v9);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__HMIHomePersonManager_storeFaceprint_completion___block_invoke;
    v11[3] = &unk_278752B10;
    objc_copyWeak(&v13, &location);
    v12 = v7;
    [(HMIStoreFaceprintOperation *)v9 setCompletionBlock:v11];
    v10 = [(HMIHomePersonManager *)self operationQueue];
    [v10 addOperation:v9];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1036];
    (*(v7 + 2))(v7, v9);
  }
}

void __50__HMIHomePersonManager_storeFaceprint_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [WeakRetained error];
  (*(v2 + 16))(v2, v3);
}

- (void)handleNewFaceEvents:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = a3;
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
        v7 = [v6 faceRecognition];
        v8 = v7;
        if (v7)
        {
          v9 = [v7 classifications];
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __44__HMIHomePersonManager_handleNewFaceEvents___block_invoke;
          v46[3] = &unk_278752B38;
          v46[4] = self;
          v10 = [v9 na_firstObjectPassingTest:v46];

          if (v10)
          {
            os_unfair_lock_lock_with_options();
            v11 = [(HMIHomePersonManager *)self unknownFacesSavedCounts];
            v12 = [v10 sessionEntityUUID];
            v13 = [v11 objectForKeyedSubscript:v12];

            if (v13)
            {
              v14 = [v13 intValue];
            }

            else
            {
              v14 = 0;
            }

            os_unfair_lock_unlock(&self->_lock);
            if (v14 >= 0xA)
            {
              v32 = objc_autoreleasePoolPush();
              v33 = self;
              v34 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                v35 = HMFGetLogIdentifier();
                v36 = [v10 sessionEntityUUID];
                v37 = [(HMIPersonManager *)v33 UUID];
                *buf = v38;
                v52 = v35;
                v53 = 2112;
                v54 = v36;
                v55 = 2112;
                v56 = v37;
                _os_log_impl(&dword_22D12F000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Reached face crop limit for sessionEntityUUID:%@ for HMIHomePersonManager.UUID:%@; not storing", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v32);
            }

            else
            {
              os_unfair_lock_lock_with_options();
              v20 = [MEMORY[0x277CCABB0] numberWithInt:v14 + 1];
              v21 = [(HMIHomePersonManager *)self unknownFacesSavedCounts];
              v22 = [v10 sessionEntityUUID];
              [v21 setObject:v20 forKeyedSubscript:v22];

              os_unfair_lock_unlock(&self->_lock);
              v23 = objc_autoreleasePoolPush();
              v24 = self;
              v25 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                v26 = HMFGetLogIdentifier();
                v27 = [v8 faceCrop];
                v28 = [v8 faceprint];
                *buf = v38;
                v52 = v26;
                v53 = 2112;
                v54 = v27;
                v55 = 2112;
                v56 = v28;
                _os_log_impl(&dword_22D12F000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Storing unknown to Home face crop:%@ and faceprint:%@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v23);
              v29 = [v8 faceCrop];
              v44[0] = MEMORY[0x277D85DD0];
              v44[1] = 3221225472;
              v44[2] = __44__HMIHomePersonManager_handleNewFaceEvents___block_invoke_15;
              v44[3] = &unk_278752B60;
              v44[4] = v24;
              v30 = v8;
              v45 = v30;
              [(HMIHomePersonManager *)v24 storeUnassociatedFaceCrop:v29 completion:v44];

              v31 = [v30 faceprint];
              v42[0] = MEMORY[0x277D85DD0];
              v42[1] = 3221225472;
              v42[2] = __44__HMIHomePersonManager_handleNewFaceEvents___block_invoke_17;
              v42[3] = &unk_278752B60;
              v42[4] = v24;
              v43 = v30;
              [(HMIHomePersonManager *)v24 storeFaceprint:v31 completion:v42];
            }
          }

          else
          {
            v15 = objc_autoreleasePoolPush();
            v16 = self;
            v17 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v18 = HMFGetLogIdentifier();
              v19 = [(HMIPersonManager *)v16 UUID];
              *buf = v38;
              v52 = v18;
              v53 = 2112;
              v54 = v19;
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

- (void)timerDidFire:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMIHomePersonManager *)self watchdogTimer];

  if (v6 == v4)
  {
    v12 = [(HMIPersonManager *)self isPersonDataAvailableViaHomeKit];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (v12)
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
      v19 = [(HMIPersonManager *)v14 UUID];
      v20 = [(HMIPersonManager *)v14 homeUUID];
      v21 = [(HMIUpdatePersonsModelOperation *)v18 initWithSourceUUID:v19 homeUUID:v20 external:0];

      v22 = [(HMIHomePersonManager *)v14 operationQueue];
      [v22 addOperation:v21];

      v23 = [(HMIHomePersonManager *)v14 watchdogTimer];
      [v23 suspend];
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
      v39 = [(HMIHomePersonManager *)v14 watchdogTimer];
      [v39 resume];
    }
  }

  else
  {
    v7 = [(HMIHomePersonManager *)self analyticsTimer];

    if (v7 != v4)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v11;
        v49 = 2112;
        v50 = v4;
        _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unrecognized timer: %@", buf, 0x16u);
      }

LABEL_20:

      objc_autoreleasePoolPop(v8);
      goto LABEL_21;
    }

    v24 = [(HMIHomePersonManager *)self settings];
    v25 = [v24 isFaceClassificationEnabled];

    if (v25)
    {
      v26 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v26 doubleForKey:@"HMICoreAnalyticsVIPModelReportTime"];
      v28 = v27;

      v29 = [MEMORY[0x277CBEAA8] date];
      [v29 timeIntervalSinceReferenceDate];
      v31 = v30 - v28 >= 86400.0;

      v8 = objc_autoreleasePoolPush();
      v9 = self;
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
      v34 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v35 = [MEMORY[0x277CBEAA8] date];
      [v35 timeIntervalSinceReferenceDate];
      [v34 setDouble:@"HMICoreAnalyticsVIPModelReportTime" forKey:?];

      v36 = [objc_alloc(MEMORY[0x277D0F780]) initWithTimeout:0.0];
      objc_initWeak(buf, v36);
      v41 = MEMORY[0x277D85DD0];
      v42 = 3221225472;
      v43 = __37__HMIHomePersonManager_timerDidFire___block_invoke;
      v44 = &unk_278752BB0;
      objc_copyWeak(&v46, buf);
      v45 = v9;
      [v36 addExecutionBlock:&v41];
      v37 = [(HMIHomePersonManager *)v9 operationQueue:v41];
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
  v4 = [(HMIPersonManager *)self UUID];
  v5 = [(HMIPersonManager *)self homeUUID];
  v6 = [v3 stringWithFormat:@"UUID:%@ HomeUUID:%@", v4, v5];

  return v6;
}

- (void)_updateSettings:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v9;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating with settings: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  os_unfair_lock_lock_with_options();
  objc_storeStrong(&v7->_settings, a3);
  os_unfair_lock_unlock(&v7->_lock);
  if (v5 && ([v5 isFaceClassificationEnabled] & 1) != 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v7;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v13;
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_INFO, "%{public}@Settings have enabled face classification, updating home persons model", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [(HMIHomePersonManager *)v11 watchdogTimer];
    [(HMIRemovePersonsModelOperation *)v14 resume];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v7;
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
    v20 = [(HMIPersonManager *)v16 UUID];
    v21 = [(HMIPersonManager *)v16 homeUUID];
    v14 = [(HMIRemovePersonsModelOperation *)v19 initWithSourceUUID:v20 homeUUID:v21 external:0];

    v22 = [(HMIHomePersonManager *)v16 operationQueue];
    [v22 addOperation:v14];
  }
}

- (HMIHomePersonManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end