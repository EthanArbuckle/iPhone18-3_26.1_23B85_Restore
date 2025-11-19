@interface HMDRemoteHomeMessagingManager
+ (id)logCategory;
- (BOOL)sendMessage:(id)a3 completionHandler:(id)a4;
- (HMDRemoteHomeMessagingManager)init;
- (void)registerHandler:(id)a3;
@end

@implementation HMDRemoteHomeMessagingManager

- (BOOL)sendMessage:(id)a3 completionHandler:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [v10 homeUUID];
    os_unfair_lock_lock_with_options();
    v12 = [(HMDRemoteHomeMessagingManager *)self homeUUIDToHandlerMap];
    v13 = [v12 objectForKey:v11];

    os_unfair_lock_unlock(&self->_lock);
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    v17 = v16;
    if (v13)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v28 = v18;
        v29 = 2114;
        v30 = v11;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Dispatching to handler for home UUID: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      [v13 sendMessage:v6 completionHandler:v7];
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543874;
        v28 = v19;
        v29 = 2114;
        v30 = v11;
        v31 = 2112;
        v32 = v6;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Handler not found for home UUID: %{public}@, message: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v20 = MEMORY[0x277CCA9B8];
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Handler not found for home UUID %@", v11];
      v22 = [v20 hmErrorWithCode:2 description:@"Cannot send message to the specified home" reason:v21 suggestion:0];

      [v6 respondWithError:v22];
      v23 = _Block_copy(v7);
      v24 = v23;
      if (v23)
      {
        (*(v23 + 2))(v23, v22);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

- (void)registerHandler:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 homeUUID];
    v13 = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering handler for home UUID: %{public}@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v10 = [(HMDRemoteHomeMessagingManager *)v6 homeUUIDToHandlerMap];
  v11 = [v4 homeUUID];
  [v10 setObject:v4 forKey:v11];

  os_unfair_lock_unlock(&v6->_lock);
  v12 = *MEMORY[0x277D85DE8];
}

- (HMDRemoteHomeMessagingManager)init
{
  v7.receiver = self;
  v7.super_class = HMDRemoteHomeMessagingManager;
  v2 = [(HMDRemoteHomeMessagingManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    homeUUIDToHandlerMap = v3->_homeUUIDToHandlerMap;
    v3->_homeUUIDToHandlerMap = v4;
  }

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_231872 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_231872, &__block_literal_global_231873);
  }

  v3 = logCategory__hmf_once_v8_231874;

  return v3;
}

void __44__HMDRemoteHomeMessagingManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_231874;
  logCategory__hmf_once_v8_231874 = v1;
}

@end