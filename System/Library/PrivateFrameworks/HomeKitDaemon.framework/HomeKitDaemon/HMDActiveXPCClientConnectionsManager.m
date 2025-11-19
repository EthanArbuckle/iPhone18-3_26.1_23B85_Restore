@interface HMDActiveXPCClientConnectionsManager
+ (id)logCategory;
- (HMDActiveXPCClientConnectionsManager)initWithLogIdentifier:(id)a3 workQueue:(id)a4;
- (HMDActiveXPCClientConnectionsManagerDelegate)delegate;
- (NSSet)clientConnections;
- (void)addClientConnection:(id)a3;
- (void)configure;
- (void)handleClientConnectionDidActivate:(id)a3;
- (void)handleClientConnectionDidDeactivate:(id)a3;
- (void)removeClientConnection:(id)a3;
@end

@implementation HMDActiveXPCClientConnectionsManager

- (HMDActiveXPCClientConnectionsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleClientConnectionDidDeactivate:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"connection"];

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

  if (v7)
  {
    v8 = [(HMDActiveXPCClientConnectionsManager *)self clientConnections];
    v9 = [v8 containsObject:v7];

    if (v9)
    {
      v10 = [(HMDActiveXPCClientConnectionsManager *)self workQueue];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __76__HMDActiveXPCClientConnectionsManager_handleClientConnectionDidDeactivate___block_invoke;
      v11[3] = &unk_27868A750;
      v11[4] = self;
      v12 = v7;
      dispatch_async(v10, v11);
    }
  }
}

void __76__HMDActiveXPCClientConnectionsManager_handleClientConnectionDidDeactivate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling client connection did deactivate: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  [v7 clientConnectionsManager:*(a1 + 32) didHandleDeactivationForClientConnection:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleClientConnectionDidActivate:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"connection"];

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

  if (v7)
  {
    v8 = [(HMDActiveXPCClientConnectionsManager *)self clientConnections];
    v9 = [v8 containsObject:v7];

    if (v9)
    {
      v10 = [(HMDActiveXPCClientConnectionsManager *)self workQueue];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __74__HMDActiveXPCClientConnectionsManager_handleClientConnectionDidActivate___block_invoke;
      v11[3] = &unk_27868A750;
      v11[4] = self;
      v12 = v7;
      dispatch_async(v10, v11);
    }
  }
}

void __74__HMDActiveXPCClientConnectionsManager_handleClientConnectionDidActivate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling client connection did activate: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  [v7 clientConnectionsManager:*(a1 + 32) didHandleActivationForClientConnection:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeClientConnection:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDActiveXPCClientConnectionsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing client connection: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  os_unfair_lock_lock_with_options();
  v10 = [(HMDActiveXPCClientConnectionsManager *)v7 mutableClientConnections];
  [v10 removeObject:v4];

  os_unfair_lock_unlock(&v7->_lock);
  v11 = [(HMDActiveXPCClientConnectionsManager *)v7 delegate];
  [v11 clientConnectionsManager:v7 didHandleDeactivationForClientConnection:v4];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addClientConnection:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDActiveXPCClientConnectionsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Adding client connection: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  os_unfair_lock_lock_with_options();
  v10 = [(HMDActiveXPCClientConnectionsManager *)v7 mutableClientConnections];
  [v10 addObject:v4];

  os_unfair_lock_unlock(&v7->_lock);
  if ([v4 isActivated])
  {
    v11 = [(HMDActiveXPCClientConnectionsManager *)v7 delegate];
    [v11 clientConnectionsManager:v7 didHandleActivationForClientConnection:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_handleClientConnectionDidActivate_ name:@"HMDXPCClientConnectionDidActivateNotification" object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_handleClientConnectionDidDeactivate_ name:@"HMDXPCClientConnectionDidDeactivateNotification" object:0];
}

- (NSSet)clientConnections
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CBEB98];
  v4 = [(HMDActiveXPCClientConnectionsManager *)self mutableClientConnections];
  v5 = [v4 allObjects];
  v6 = [v3 setWithArray:v5];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (HMDActiveXPCClientConnectionsManager)initWithLogIdentifier:(id)a3 workQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = v7;
  if (!v7)
  {
LABEL_7:
    v15 = _HMFPreconditionFailure();
    return +[(HMDActiveXPCClientConnectionsManager *)v15];
  }

  v17.receiver = self;
  v17.super_class = HMDActiveXPCClientConnectionsManager;
  v9 = [(HMDActiveXPCClientConnectionsManager *)&v17 init];
  if (v9)
  {
    v10 = [v6 copy];
    logIdentifier = v9->_logIdentifier;
    v9->_logIdentifier = v10;

    objc_storeStrong(&v9->_workQueue, a4);
    v12 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    mutableClientConnections = v9->_mutableClientConnections;
    v9->_mutableClientConnections = v12;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_263115 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_263115, &__block_literal_global_263116);
  }

  v3 = logCategory__hmf_once_v10_263117;

  return v3;
}

void __51__HMDActiveXPCClientConnectionsManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_263117;
  logCategory__hmf_once_v10_263117 = v1;
}

@end