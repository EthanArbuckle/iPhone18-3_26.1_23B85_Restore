@interface HMDAssistantSettingsConnection
+ (id)logCategory;
- (HMDAssistantSettingsConnection)initWithScheduler:(id)a3;
- (HMDAssistantSettingsConnectionDataSource)dataSource;
- (id)connectionForEndpointUUID:(id)a3;
- (id)deleteSiriHistoryOperationWithConnection:(id)a3;
- (void)deleteSiriHistoryWithEndpointUUID:(id)a3 completionHandler:(id)a4;
@end

@implementation HMDAssistantSettingsConnection

- (HMDAssistantSettingsConnectionDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)deleteSiriHistoryOperationWithConnection:(id)a3
{
  v3 = a3;
  v4 = [[HMDAppleMediaAccessoryDeleteSiriHistoryOperation alloc] initWithSettingsConnection:v3];

  return v4;
}

- (id)connectionForEndpointUUID:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Device does not support siri endpoint history deletion", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)deleteSiriHistoryWithEndpointUUID:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v11;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Deleting siri history for endpoint with uuid: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDAssistantSettingsConnection *)v9 dataSource];
  v13 = [v12 connectionForEndpointUUID:v6];
  if (v13)
  {
    v14 = [v12 deleteSiriHistoryOperationWithConnection:v13];
    if (v14)
    {
      objc_initWeak(buf, v14);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __86__HMDAssistantSettingsConnection_deleteSiriHistoryWithEndpointUUID_completionHandler___block_invoke;
      v27[3] = &unk_279730E50;
      objc_copyWeak(&v29, buf);
      v27[4] = v9;
      v28 = v7;
      [v14 setCompletionBlock:v27];
      v15 = [(HMDAssistantSettingsConnection *)v9 scheduler];
      v16 = [v15 performOperation:v14];

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v9;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543874;
        v31 = v24;
        v32 = 2112;
        v33 = v6;
        v34 = 2112;
        v35 = v12;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to get a delete operation for endpoint uuid: %@ datasource: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      (*(v7 + 2))(v7, v25);

      v14 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v9;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v20;
      v32 = 2112;
      v33 = v6;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to get a connection for endpoint uuid: %@ datasource: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    (*(v7 + 2))(v7, v14);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __86__HMDAssistantSettingsConnection_deleteSiriHistoryWithEndpointUUID_completionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Delete siri history operation completed with error: %@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Delete siri history operation completed", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDAssistantSettingsConnection)initWithScheduler:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDAssistantSettingsConnection;
  v6 = [(HMDAssistantSettingsConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scheduler, a3);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_28784 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_28784, &__block_literal_global_28785);
  }

  v3 = logCategory__hmf_once_v7_28786;

  return v3;
}

uint64_t __45__HMDAssistantSettingsConnection_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_28786;
  logCategory__hmf_once_v7_28786 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end