@interface HMDAssistantSettingsConnection
+ (id)logCategory;
- (HMDAssistantSettingsConnection)initWithScheduler:(id)scheduler;
- (HMDAssistantSettingsConnectionDataSource)dataSource;
- (id)connectionForEndpointUUID:(id)d;
- (id)deleteSiriHistoryOperationWithConnection:(id)connection;
- (void)deleteSiriHistoryWithEndpointUUID:(id)d completionHandler:(id)handler;
@end

@implementation HMDAssistantSettingsConnection

- (HMDAssistantSettingsConnectionDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)deleteSiriHistoryOperationWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[HMDAppleMediaAccessoryDeleteSiriHistoryOperation alloc] initWithSettingsConnection:connectionCopy];

  return v4;
}

- (id)connectionForEndpointUUID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
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

- (void)deleteSiriHistoryWithEndpointUUID:(id)d completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v11;
    v32 = 2112;
    v33 = dCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Deleting siri history for endpoint with uuid: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  dataSource = [(HMDAssistantSettingsConnection *)selfCopy dataSource];
  v13 = [dataSource connectionForEndpointUUID:dCopy];
  if (v13)
  {
    v14 = [dataSource deleteSiriHistoryOperationWithConnection:v13];
    if (v14)
    {
      objc_initWeak(buf, v14);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __86__HMDAssistantSettingsConnection_deleteSiriHistoryWithEndpointUUID_completionHandler___block_invoke;
      v27[3] = &unk_279730E50;
      objc_copyWeak(&v29, buf);
      v27[4] = selfCopy;
      v28 = handlerCopy;
      [v14 setCompletionBlock:v27];
      scheduler = [(HMDAssistantSettingsConnection *)selfCopy scheduler];
      v16 = [scheduler performOperation:v14];

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543874;
        v31 = v24;
        v32 = 2112;
        v33 = dCopy;
        v34 = 2112;
        v35 = dataSource;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to get a delete operation for endpoint uuid: %@ datasource: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      (*(handlerCopy + 2))(handlerCopy, v25);

      v14 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v20;
      v32 = 2112;
      v33 = dCopy;
      v34 = 2112;
      v35 = dataSource;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to get a connection for endpoint uuid: %@ datasource: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    (*(handlerCopy + 2))(handlerCopy, v14);
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

- (HMDAssistantSettingsConnection)initWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v9.receiver = self;
  v9.super_class = HMDAssistantSettingsConnection;
  v6 = [(HMDAssistantSettingsConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scheduler, scheduler);
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