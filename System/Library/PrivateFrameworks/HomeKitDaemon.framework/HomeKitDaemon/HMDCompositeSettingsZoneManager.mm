@interface HMDCompositeSettingsZoneManager
+ (id)logCategory;
- (BOOL)isConfigured;
- (HMDCompositeSettingsZoneManager)initWithDatabase:(id)a3 workQueue:(id)a4 zoneName:(id)a5 createZoneIfNotExists:(BOOL)a6;
- (id)database:(id)a3 willRemoveZoneWithName:(id)a4 isPrivate:(BOOL)a5;
- (void)database:(id)a3 didCreateZoneWithName:(id)a4 isPrivate:(BOOL)a5;
- (void)database:(id)a3 didReceiveMessageWithUserInfo:(id)a4;
- (void)database:(id)a3 didRemoveZoneWithName:(id)a4 isPrivate:(BOOL)a5;
- (void)remove;
@end

@implementation HMDCompositeSettingsZoneManager

- (void)remove
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCompositeSettingsZoneManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Removing Zone", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  objc_initWeak(buf, v5);
  v8 = [(HMDCompositeSettingsZoneManager *)v5 configurationFuture];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__HMDCompositeSettingsZoneManager_remove__block_invoke;
  v11[3] = &unk_278684500;
  objc_copyWeak(&v12, buf);
  v9 = [v8 addSuccessBlock:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
  v10 = *MEMORY[0x277D85DE8];
}

void __41__HMDCompositeSettingsZoneManager_remove__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained localZone];
  if (v5)
  {
    v6 = [WeakRetained database];
    v7 = [v6 removeLocalAndCloudDataForLocalZone:v5];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__HMDCompositeSettingsZoneManager_remove__block_invoke_18;
    v14[3] = &unk_278687CC0;
    v14[4] = WeakRetained;
    v8 = [v7 addCompletionBlock:v14];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unexpected nil zone during cleanup", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __41__HMDCompositeSettingsZoneManager_remove__block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v20 = v11;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v6;
      v12 = "%{public}@Zone removal returned result:%@ error:%@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v13, v14, v12, buf, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v5;
    v12 = "%{public}@Removed zone with result:%@";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDCompositeSettingsZoneManager_remove__block_invoke_19;
  block[3] = &unk_27868A728;
  block[4] = *(a1 + 32);
  dispatch_async(v16, block);

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __41__HMDCompositeSettingsZoneManager_remove__block_invoke_19(uint64_t a1)
{
  [*(a1 + 32) setCloudZone:0];
  v2 = *(a1 + 32);

  return [v2 setLocalZone:0];
}

- (void)database:(id)a3 didReceiveMessageWithUserInfo:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@did receive message with  user info %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)database:(id)a3 didRemoveZoneWithName:(id)a4 isPrivate:(BOOL)a5
{
  v6 = a4;
  v7 = [(HMDCompositeSettingsZoneManager *)self zoneName];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [(HMDCompositeSettingsZoneManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__HMDCompositeSettingsZoneManager_database_didRemoveZoneWithName_isPrivate___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(v9, block);
  }
}

uint64_t __76__HMDCompositeSettingsZoneManager_database_didRemoveZoneWithName_isPrivate___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Zone removed", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setCloudZone:0];
  result = [*(a1 + 32) setLocalZone:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)database:(id)a3 willRemoveZoneWithName:(id)a4 isPrivate:(BOOL)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@will remove zone", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277D2C900] futureWithNoResult];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)database:(id)a3 didCreateZoneWithName:(id)a4 isPrivate:(BOOL)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@did create zone", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isConfigured
{
  v2 = [(HMDCompositeSettingsZoneManager *)self localZone];
  v3 = v2 != 0;

  return v3;
}

- (HMDCompositeSettingsZoneManager)initWithDatabase:(id)a3 workQueue:(id)a4 zoneName:(id)a5 createZoneIfNotExists:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v12)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v14 = v13;
  if (!v13)
  {
LABEL_9:
    v25 = _HMFPreconditionFailure();
    __93__HMDCompositeSettingsZoneManager_initWithDatabase_workQueue_zoneName_createZoneIfNotExists___block_invoke(v25, v26);
    return result;
  }

  v29.receiver = self;
  v29.super_class = HMDCompositeSettingsZoneManager;
  v15 = [(HMDCompositeSettingsZoneManager *)&v29 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_database, a3);
    objc_storeStrong(&v16->_workQueue, a4);
    objc_storeStrong(&v16->_zoneName, a5);
    v16->_createZoneIfNotExist = a6;
    [(HMDDatabase *)v16->_database addDelegate:v16];
    v17 = MEMORY[0x277D2C900];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __93__HMDCompositeSettingsZoneManager_initWithDatabase_workQueue_zoneName_createZoneIfNotExists___block_invoke;
    v27[3] = &unk_2786844D8;
    v18 = v16;
    v28 = v18;
    v19 = MEMORY[0x277D2C938];
    v20 = [(HMDCompositeSettingsZoneManager *)v18 workQueue];
    v21 = [v19 schedulerWithDispatchQueue:v20];
    v22 = [v17 futureWithBlock:v27 scheduler:v21];
    configurationFuture = v18->_configurationFuture;
    v18->_configurationFuture = v22;
  }

  return v16;
}

void __93__HMDCompositeSettingsZoneManager_initWithDatabase_workQueue_zoneName_createZoneIfNotExists___block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [*(a1 + 32) workQueue];
    dispatch_assert_queue_V2(v5);

    v6 = objc_alloc_init(MEMORY[0x277D170E8]);
    v7 = [v4 createZoneIfNotExist];
    v8 = objc_autoreleasePoolPush();
    v9 = v4;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        v13 = [v9 zoneName];
        [v9 createZoneIfNotExist];
        v14 = HMFBooleanToString();
        *buf = 138543874;
        *&buf[4] = v12;
        *&buf[12] = 2112;
        *&buf[14] = v13;
        *&buf[22] = 2112;
        v55 = v14;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Finding Zone:%@ createIfNotExists:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      v15 = [v9 database];
      v16 = [v9 zoneName];
      v53 = 0;
      v17 = [v15 privateZonesWithName:v16 configuration:v6 delegate:0 error:&v53];
    }

    else
    {
      if (v11)
      {
        v18 = HMFGetLogIdentifier();
        v19 = [v9 zoneName];
        [v9 createZoneIfNotExist];
        v20 = HMFBooleanToString();
        *buf = 138543874;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = v19;
        *&buf[22] = 2112;
        v55 = v20;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Finding Zone:%@ createIfNotExists:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      v15 = [v9 database];
      v16 = [v9 zoneName];
      v53 = 0;
      v17 = [v15 existingPrivateZonesWithName:v16 configuration:v6 delegate:0 error:&v53];
    }

    v21 = v17;
    v22 = v53;

    if (v21)
    {
      v23 = [v21 cloudZone];
      [v9 setCloudZone:v23];

      v24 = [v9 cloudZone];
      v25 = [v24 registerSubscriptionForExternalRecordType:0];

      v26 = [v21 localZone];
      [v9 setLocalZone:v26];

      v27 = [v9 localZone];
      [v27 startUp];

      v28 = [v9 cloudZone];
      v29 = [v28 startUp];
      v47 = v22;
      v30 = v6;
      v31 = v3;
      v32 = MEMORY[0x277D2C938];
      v33 = [v9 workQueue];
      v34 = [v32 schedulerWithDispatchQueue:v33];
      v35 = [v29 reschedule:v34];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __45__HMDCompositeSettingsZoneManager__configure__block_invoke;
      v55 = &unk_27868A250;
      v56 = v9;
      v36 = [v35 addFailureBlock:buf];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __45__HMDCompositeSettingsZoneManager__configure__block_invoke_13;
      v52[3] = &unk_27868A200;
      v52[4] = v9;
      v4 = [v36 addSuccessBlock:v52];

      v3 = v31;
      v6 = v30;
      v22 = v47;
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      v38 = v9;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v40;
        *&buf[12] = 2112;
        *&buf[14] = v22;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to open zone: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      v41 = MEMORY[0x277D2C900];
      v28 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:6];
      v4 = [v41 futureWithError:v28];
    }
  }

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __93__HMDCompositeSettingsZoneManager_initWithDatabase_workQueue_zoneName_createZoneIfNotExists___block_invoke_2;
  v50[3] = &unk_27868A200;
  v42 = v3;
  v51 = v42;
  v43 = [v4 addSuccessBlock:v50];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __93__HMDCompositeSettingsZoneManager_initWithDatabase_workQueue_zoneName_createZoneIfNotExists___block_invoke_3;
  v48[3] = &unk_27868A250;
  v49 = v42;
  v44 = v42;
  v45 = [v43 addFailureBlock:v48];

  v46 = *MEMORY[0x277D85DE8];
}

void __45__HMDCompositeSettingsZoneManager__configure__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@CloudZone Error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

void __45__HMDCompositeSettingsZoneManager__configure__block_invoke_13(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@CloudZone startup success", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_244894 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_244894, &__block_literal_global_244895);
  }

  v3 = logCategory__hmf_once_v6_244896;

  return v3;
}

void __46__HMDCompositeSettingsZoneManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6_244896;
  logCategory__hmf_once_v6_244896 = v1;
}

@end