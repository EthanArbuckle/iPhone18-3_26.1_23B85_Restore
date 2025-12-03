@interface HMDCameraClipsQuotaManager
+ (HMDCameraClipsQuotaManager)defaultManager;
+ (id)_quotaErrorFromServerError:(id)error;
+ (id)_quotaServerErrorFromServerError:(id)error;
+ (id)logCategory;
- (HMDCameraClipsQuotaManager)init;
- (HMDCameraClipsQuotaManager)initWithDatabase:(id)database;
- (id)_addCodeOperationWithFunctionName:(id)name request:(id)request responseClass:(Class)class;
- (id)database:(id)database willRemoveZoneWithName:(id)name isPrivate:(BOOL)private;
- (id)disableCloudStorageForZoneWithName:(id)name;
- (id)enableCloudStorageForZoneWithName:(id)name;
- (id)fetchNamesForZonesWithEnabledCloudStorage;
- (id)logIdentifier;
- (void)synchronize;
@end

@implementation HMDCameraClipsQuotaManager

- (id)logIdentifier
{
  database = [(HMDCameraClipsQuotaManager *)self database];
  cloudDatabase = [database cloudDatabase];
  containerID = [cloudDatabase containerID];
  containerIdentifier = [containerID containerIdentifier];

  return containerIdentifier;
}

- (id)database:(id)database willRemoveZoneWithName:(id)name isPrivate:(BOOL)private
{
  v22 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  nameCopy = name;
  if ([nameCopy hasPrefix:*MEMORY[0x277CCF500]] && private)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = nameCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Disabling cloud storage before removing zone with name %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    futureWithNoResult = [(HMDCameraClipsQuotaManager *)selfCopy disableCloudStorageForZoneWithName:nameCopy];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v15 = futureWithNoResult;

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_addCodeOperationWithFunctionName:(id)name request:(id)request responseClass:(Class)class
{
  requestCopy = request;
  nameCopy = name;
  database = [(HMDCameraClipsQuotaManager *)self database];
  cloudDatabase = [database cloudDatabase];
  v12 = [cloudDatabase performCodeOperationWithServiceName:@"HomeQuota" functionName:nameCopy request:requestCopy responseClass:class];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__HMDCameraClipsQuotaManager__addCodeOperationWithFunctionName_request_responseClass___block_invoke;
  v15[3] = &unk_2797300A8;
  v15[4] = self;
  v13 = [v12 recover:v15];

  return v13;
}

id __86__HMDCameraClipsQuotaManager__addCodeOperationWithFunctionName_request_responseClass___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() _quotaErrorFromServerError:v3];

  v5 = [MEMORY[0x277D2C900] futureWithError:v4];

  return v5;
}

- (id)disableCloudStorageForZoneWithName:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = objc_alloc_init(HMDCameraClipsQuotaDisableCameraMessage);
  [(HMDCameraClipsQuotaDisableCameraMessage *)v5 setZoneName:nameCopy];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543874;
    v18 = v9;
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = nameCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Sending disable camera message %@ for zone with name %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraClipsQuotaManager *)selfCopy _addCodeOperationWithFunctionName:@"disableCamera" request:v5 responseClass:objc_opt_class()];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__HMDCameraClipsQuotaManager_disableCloudStorageForZoneWithName___block_invoke;
  v16[3] = &unk_279725E10;
  v16[4] = selfCopy;
  v11 = [v10 flatMap:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__HMDCameraClipsQuotaManager_disableCloudStorageForZoneWithName___block_invoke_28;
  v15[3] = &unk_2797300A8;
  v15[4] = selfCopy;
  v12 = [v11 recover:v15];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id __65__HMDCameraClipsQuotaManager_disableCloudStorageForZoneWithName___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully disabled camera with response: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [MEMORY[0x277D2C900] futureWithNoResult];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id __65__HMDCameraClipsQuotaManager_disableCloudStorageForZoneWithName___block_invoke_28(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 domain];
  if (![v4 isEqualToString:@"HMDCameraClipsQuotaErrorDomain"])
  {

    goto LABEL_7;
  }

  v5 = [v3 code];

  if (v5 != 2)
  {
LABEL_7:
    v10 = [MEMORY[0x277D2C900] futureWithError:v3];
    goto LABEL_8;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Assuming success for disable camera request because zone does not exist", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_8:
  v11 = v10;

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)enableCloudStorageForZoneWithName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = objc_alloc_init(HMDCameraClipsQuotaEnableCameraMessage);
  [(HMDCameraClipsQuotaEnableCameraMessage *)v5 setZoneName:nameCopy];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543874;
    v16 = v9;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = nameCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Sending enable camera message %@ for zone with name %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraClipsQuotaManager *)selfCopy _addCodeOperationWithFunctionName:@"enableCamera" request:v5 responseClass:objc_opt_class()];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__HMDCameraClipsQuotaManager_enableCloudStorageForZoneWithName___block_invoke;
  v14[3] = &unk_279725E10;
  v14[4] = selfCopy;
  v11 = [v10 flatMap:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __64__HMDCameraClipsQuotaManager_enableCloudStorageForZoneWithName___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully enabled camera with response: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [MEMORY[0x277D2C900] futureWithNoResult];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)fetchNamesForZonesWithEnabledCloudStorage
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(HMDCameraClipsQuotaGetActiveCamerasMessage);
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Sending get active cameras message %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCameraClipsQuotaManager *)selfCopy _addCodeOperationWithFunctionName:@"getActiveCameras" request:v3 responseClass:objc_opt_class()];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__HMDCameraClipsQuotaManager_fetchNamesForZonesWithEnabledCloudStorage__block_invoke;
  v12[3] = &unk_279725E10;
  v12[4] = selfCopy;
  v9 = [v8 flatMap:v12];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id __71__HMDCameraClipsQuotaManager_fetchNamesForZonesWithEnabledCloudStorage__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 zoneNames];
    v7 = v6;
    v8 = MEMORY[0x277CBEBF8];
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v13;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Successfully got active cameras with zone names: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = MEMORY[0x277D2C900];
    v15 = [MEMORY[0x277CBEB98] setWithArray:v9];
    v16 = [v14 futureWithResult:v15];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v24 = 138543874;
      v25 = v20;
      v26 = 2112;
      v27 = objc_opt_class();
      v28 = 2112;
      v29 = v3;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Received get active cameras response of unexpected type %@: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = MEMORY[0x277D2C900];
    v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v16 = [v21 futureWithError:v9];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)synchronize
{
  database = [(HMDCameraClipsQuotaManager *)self database];
  cloudDatabase = [database cloudDatabase];
  performInitialCloudSync = [cloudDatabase performInitialCloudSync];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HMDCameraClipsQuotaManager_synchronize__block_invoke;
  v7[3] = &unk_279733BC0;
  v7[4] = self;
  v6 = [performInitialCloudSync addCompletionBlock:v7];
}

void __41__HMDCameraClipsQuotaManager_synchronize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Finished initial cloud sync for camera clips quota manager cloud database", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

- (HMDCameraClipsQuotaManager)initWithDatabase:(id)database
{
  databaseCopy = database;
  v9.receiver = self;
  v9.super_class = HMDCameraClipsQuotaManager;
  v6 = [(HMDCameraClipsQuotaManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
    [databaseCopy addDelegate:v7];
  }

  return v7;
}

- (HMDCameraClipsQuotaManager)init
{
  v3 = +[HMDDatabase cameraClipsDatabase];
  v4 = [(HMDCameraClipsQuotaManager *)self initWithDatabase:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t15 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t15, &__block_literal_global_41420);
  }

  v3 = logCategory__hmf_once_v16;

  return v3;
}

uint64_t __41__HMDCameraClipsQuotaManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v16;
  logCategory__hmf_once_v16 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)_quotaErrorFromServerError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = [self _quotaServerErrorFromServerError:errorCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Determining quota error based on underlying quota server error: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    code = [v5 code];
    if (code == 1003)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2 * (code == 1002);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDCameraClipsQuotaErrorDomain" code:v11 userInfo:0];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_quotaServerErrorFromServerError:(id)error
{
  userInfo = [error userInfo];
  v4 = *MEMORY[0x277CCA7E8];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  userInfo2 = [v7 userInfo];

  v9 = [userInfo2 objectForKeyedSubscript:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  domain = [v11 domain];
  if ([domain isEqualToString:@"HomeQuotaError"])
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

+ (HMDCameraClipsQuotaManager)defaultManager
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&defaultManager_defaultManager);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(HMDCameraClipsQuotaManager);
    objc_storeWeak(&defaultManager_defaultManager, WeakRetained);
  }

  v3 = WeakRetained;

  os_unfair_lock_unlock(&defaultManager_defaultManagerLock);

  return v3;
}

@end