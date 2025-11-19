@interface HMDCoreFollowUpManager
+ (NSArray)allPossibleFollowUpItemIdentifiers;
+ (id)logCategory;
- (HMDCoreFollowUpManager)init;
- (HMDCoreFollowUpManager)initWithDataSource:(id)a3;
- (void)_startAdvertising:(int64_t)a3;
- (void)_stopAdvertising:(int64_t)a3;
- (void)removeAllFollowUpItemsWithCompletion:(id)a3;
- (void)startAdvertising:(int64_t)a3;
- (void)startAdvertisingHH2UpgradeRecommendationCFU:(BOOL)a3;
- (void)stopAdvertising:(int64_t)a3;
- (void)stopAdvertisingHH2UpgradeRecommendationCFU;
@end

@implementation HMDCoreFollowUpManager

- (void)stopAdvertisingHH2UpgradeRecommendationCFU
{
  v3 = [(HMDCoreFollowUpManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDCoreFollowUpManager_stopAdvertisingHH2UpgradeRecommendationCFU__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

void __68__HMDCoreFollowUpManager_stopAdvertisingHH2UpgradeRecommendationCFU__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dataSource];
  v3 = [v2 followUpControllerForDeviceSetupManager:*(a1 + 32)];

  if (v3)
  {
    v4 = [HMDCoreFollowUpRemoveItemsOperation alloc];
    v14 = @"com.apple.homed.hh2-upgrade";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    v6 = [(HMDCoreFollowUpRemoveItemsOperation *)v4 initWithIdentifiersToRemove:v5 followUpController:v3];

    v7 = [*(a1 + 32) followUpOperationQueue];
    [v7 addOperation:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 32) dataSource];
      *buf = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to get followup controller from data source: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)startAdvertisingHH2UpgradeRecommendationCFU:(BOOL)a3
{
  v5 = [(HMDCoreFollowUpManager *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__HMDCoreFollowUpManager_startAdvertisingHH2UpgradeRecommendationCFU___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __70__HMDCoreFollowUpManager_startAdvertisingHH2UpgradeRecommendationCFU___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dataSource];
  v3 = [v2 followUpItemForDeviceSetupManager:*(a1 + 32)];

  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 followUpPreferencesBundleIdentifierForDeviceSetupManager:*(a1 + 32)];
  [v3 setTargetBundleIdentifier:v5];

  [v3 setUniqueIdentifier:@"com.apple.homed.hh2-upgrade"];
  v6 = [*(a1 + 32) dataSource];
  v7 = [v6 followUpGroupIdentifierDevice];
  [v3 setGroupIdentifier:v7];

  v8 = HMDLocalizedStringForKey(@"HH2_UPGRADE_REQUIRED_TITLE");
  [v3 setTitle:v8];

  if (*(a1 + 40))
  {
    v9 = @"HH2_UPGRADE_HH1EOL_BODY_SAFETY";
  }

  else
  {
    v9 = @"HH2_UPGRADE_REQUIRED_BODY_SAFETY";
  }

  v10 = HMDLocalizedStringForKey(v9);
  [v3 setInformativeText:v10];

  v11 = [*(a1 + 32) dataSource];
  v12 = [v11 followUpActionForDeviceSetupManager:*(a1 + 32)];

  v13 = [MEMORY[0x277CBEBC0] URLWithString:@"com.apple.Home-private://homeHubUpdate"];
  [v12 setUrl:v13];

  v14 = HMDLocalizedStringForKey(@"HH2_UPGRADE_AVAILABLE_FOLLOWUP_CONTROL");
  [v12 setLabel:v14];

  v30[0] = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [v3 setActions:v15];

  v16 = [*(a1 + 32) dataSource];
  v17 = [v16 followUpControllerForDeviceSetupManager:*(a1 + 32)];

  if (v17)
  {
    v18 = [[HMDCoreFollowUpPostItemOperation alloc] initWithItemToPost:v3 followUpController:v17];
    v19 = [*(a1 + 32) followUpOperationQueue];
    [v19 addOperation:v18];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [*(a1 + 32) dataSource];
      v26 = 138543618;
      v27 = v23;
      v28 = 2112;
      v29 = v24;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to get followup controller from datasource: %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_stopAdvertising:(int64_t)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = [(HMDCoreFollowUpManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v9;
    v42 = 2048;
    v43 = a3;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Stopping advertising for followup mode: %ld", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (a3 == 1)
  {
    v15 = *MEMORY[0x277CCFC80];
    v37 = *MEMORY[0x277CCFC78];
    v38 = v15;
    v12 = MEMORY[0x277CBEA60];
    v13 = &v37;
    v14 = 2;
    goto LABEL_11;
  }

  if (a3 == 3)
  {
    v36 = *MEMORY[0x277CD0C78];
    v12 = MEMORY[0x277CBEA60];
    v13 = &v36;
    goto LABEL_9;
  }

  if (a3 != 2)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v7;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v24;
      v42 = 2048;
      v43 = a3;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unknown followup mode passed to stop advertising: %ld", buf, 0x16u);
    }

    v25 = v21;
    goto LABEL_23;
  }

  v10 = [(HMDCoreFollowUpManager *)v7 dataSource];
  v11 = [v10 currentDeviceSupportsSetupFollowUp];

  if (!v11)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = v7;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v34;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly called stop advertising for tvos update mode on non-atv device", buf, 0xCu);
    }

    v25 = v31;
LABEL_23:
    objc_autoreleasePoolPop(v25);
    v16 = MEMORY[0x277CBEBF8];
    goto LABEL_24;
  }

  v39 = @"com.apple.HomeKit.UpdateTvOS";
  v12 = MEMORY[0x277CBEA60];
  v13 = &v39;
LABEL_9:
  v14 = 1;
LABEL_11:
  v16 = [v12 arrayWithObjects:v13 count:{v14, v36, v37, v38, v39}];
  v17 = [(HMDCoreFollowUpManager *)v7 dataSource];
  v18 = [v17 followUpControllerForDeviceSetupManager:v7];

  if (v18)
  {
    v19 = [[HMDCoreFollowUpRemoveItemsOperation alloc] initWithIdentifiersToRemove:v16 followUpController:v18];
    v20 = [(HMDCoreFollowUpManager *)v7 followUpOperationQueue];
    [v20 addOperation:v19];
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = v7;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v30 = [(HMDCoreFollowUpManager *)v27 dataSource];
      *buf = 138543618;
      v41 = v29;
      v42 = 2112;
      v43 = v30;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unable to get followup controller from data source: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
  }

LABEL_24:
  v35 = *MEMORY[0x277D85DE8];
}

- (void)stopAdvertising:(int64_t)a3
{
  v5 = [(HMDCoreFollowUpManager *)self dataSource];
  v6 = [v5 currentDeviceSupportsDeviceSetup];

  if (v6)
  {
    v7 = [(HMDCoreFollowUpManager *)self workQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__HMDCoreFollowUpManager_stopAdvertising___block_invoke;
    v8[3] = &unk_279734BB8;
    v8[4] = self;
    v8[5] = a3;
    dispatch_async(v7, v8);
  }
}

- (void)removeAllFollowUpItemsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDCoreFollowUpManager *)self dataSource];
  v6 = [v5 followUpControllerForDeviceSetupManager:self];

  if (v6)
  {
    v7 = [(HMDCoreFollowUpManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HMDCoreFollowUpManager_removeAllFollowUpItemsWithCompletion___block_invoke;
    block[3] = &unk_2797355D0;
    block[4] = self;
    v10 = v6;
    v11 = v4;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    (*(v4 + 2))(v4, 0, v8);
  }
}

void __63__HMDCoreFollowUpManager_removeAllFollowUpItemsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    v5 = [v1 workQueue];
    dispatch_assert_queue_V2(v5);

    v6 = [HMDCoreFollowUpRemoveItemsOperation alloc];
    v7 = [objc_opt_class() allPossibleFollowUpItemIdentifiers];
    v8 = [(HMDCoreFollowUpRemoveItemsOperation *)v6 initWithIdentifiersToRemove:v7 followUpController:v3];

    if (v4)
    {
      objc_initWeak(&location, v8);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __61__HMDCoreFollowUpManager__removeAllFollowUpItems_completion___block_invoke;
      v10[3] = &unk_279731EB8;
      objc_copyWeak(&v12, &location);
      v11 = v4;
      [(HMDCoreFollowUpRemoveItemsOperation *)v8 setCompletionBlock:v10];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    v9 = [v1 followUpOperationQueue];
    [v9 addOperation:v8];
  }
}

void __61__HMDCoreFollowUpManager__removeAllFollowUpItems_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [WeakRetained error];
  v4 = [WeakRetained error];
  (*(v2 + 16))(v2, v3 == 0, v4);
}

- (void)_startAdvertising:(int64_t)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = [(HMDCoreFollowUpManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCoreFollowUpManager *)self dataSource];
  v7 = [v6 followUpItemForDeviceSetupManager:self];

  v8 = [(HMDCoreFollowUpManager *)self dataSource];
  v9 = [v8 followUpPreferencesBundleIdentifierForDeviceSetupManager:self];
  [v7 setTargetBundleIdentifier:v9];

  switch(a3)
  {
    case 2:
      [v7 setUniqueIdentifier:@"com.apple.HomeKit.UpdateTvOS"];
      v10 = @"FOLLOW_UP_ITEM_DEVICE_UPDATE_TVOS_TITLE";
      goto LABEL_7;
    case 3:
      [v7 setUniqueIdentifier:*MEMORY[0x277CD0C78]];
      v10 = @"FOLLOW_UP_ITEM_DEVICE_UNREACHABLE_PRIMARY";
LABEL_7:
      v11 = HMDLocalizedStringForKey(v10);
      [v7 setTitle:v11];

      v12 = [(HMDCoreFollowUpManager *)self dataSource];
      v13 = [v12 currentDeviceSupportsSetupFollowUp];

      if (!v13)
      {
LABEL_14:
        v19 = objc_autoreleasePoolPush();
        v20 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543362;
          v39 = v22;
          _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Checking existing follow up setup items", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        v23 = [(HMDCoreFollowUpManager *)v20 dataSource];
        v24 = [v23 followUpControllerForDeviceSetupManager:v20];

        if (v24)
        {
          v25 = [[HMDCoreFollowUpPostItemOperation alloc] initWithItemToPost:v7 followUpController:v24];
          v26 = [(HMDCoreFollowUpManager *)v20 followUpOperationQueue];
          [v26 addOperation:v25];
        }

        else
        {
          v27 = objc_autoreleasePoolPush();
          v28 = v20;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = HMFGetLogIdentifier();
            v31 = [(HMDCoreFollowUpManager *)v28 dataSource];
            *buf = 138543618;
            v39 = v30;
            v40 = 2112;
            v41 = v31;
            _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unable to get followup controller from datasource: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v27);
        }

        goto LABEL_22;
      }

      v14 = [(HMDCoreFollowUpManager *)self dataSource];
      v15 = [v14 followUpActionForDeviceSetupManager:self];

      if (a3 == 2)
      {
        v16 = @"prefs:root=Home&cfuAction=updateOS";
      }

      else
      {
        if (a3 != 1)
        {
LABEL_13:
          v37 = v15;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
          [v7 setActions:v18];

          goto LABEL_14;
        }

        v16 = @"prefs:root=Home&cfuAction=finishSetup";
      }

      v17 = [MEMORY[0x277CBEBC0] URLWithString:v16];
      [v15 setUrl:v17];

      goto LABEL_13;
    case 1:
      [v7 setUniqueIdentifier:*MEMORY[0x277CCFC80]];
      v10 = @"FOLLOW_UP_ITEM_DEVICE_SETUP_TITLE";
      goto LABEL_7;
  }

  v33 = objc_autoreleasePoolPush();
  v34 = self;
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v36;
    v40 = 2048;
    v41 = a3;
    _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Unexpected setup mode to start advertising: %ld", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v33);
LABEL_22:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)startAdvertising:(int64_t)a3
{
  v5 = [(HMDCoreFollowUpManager *)self dataSource];
  v6 = [v5 currentDeviceSupportsDeviceSetup];

  if (v6)
  {
    v7 = [(HMDCoreFollowUpManager *)self dataSource];
    v8 = [v7 currentDeviceSupportsSetupFollowUp];

    if (a3 != 2 || v8)
    {
      v9 = [(HMDCoreFollowUpManager *)self workQueue];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __43__HMDCoreFollowUpManager_startAdvertising___block_invoke;
      v10[3] = &unk_279734BB8;
      v10[4] = self;
      v10[5] = a3;
      dispatch_async(v9, v10);
    }
  }
}

- (HMDCoreFollowUpManager)initWithDataSource:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v16.receiver = self;
    v16.super_class = HMDCoreFollowUpManager;
    v6 = [(HMDCoreFollowUpManager *)&v16 init];
    v7 = v6;
    if (v6)
    {
      v6->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v6->_dataSource, a3);
      v8 = HMFDispatchQueueName();
      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v10 = dispatch_queue_create(v8, v9);
      workQueue = v7->_workQueue;
      v7->_workQueue = v10;

      v12 = objc_alloc_init(MEMORY[0x277CCABD8]);
      followUpOperationQueue = v7->_followUpOperationQueue;
      v7->_followUpOperationQueue = v12;

      [(NSOperationQueue *)v7->_followUpOperationQueue setUnderlyingQueue:v7->_workQueue];
      [(NSOperationQueue *)v7->_followUpOperationQueue setMaxConcurrentOperationCount:1];
    }

    self = v7;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (HMDCoreFollowUpManager)init
{
  v3 = objc_alloc_init(HMDCoreFollowUpManagerDataSource);
  v4 = [(HMDCoreFollowUpManager *)self initWithDataSource:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_53120 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_53120, &__block_literal_global_53121);
  }

  v3 = logCategory__hmf_once_v10_53122;

  return v3;
}

uint64_t __37__HMDCoreFollowUpManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_53122;
  logCategory__hmf_once_v10_53122 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (NSArray)allPossibleFollowUpItemIdentifiers
{
  v6[4] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277CCFC80];
  v6[1] = @"com.apple.HomeKit.UpdateTvOS";
  v2 = *MEMORY[0x277CD0C78];
  v6[2] = *MEMORY[0x277CCFC78];
  v6[3] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end