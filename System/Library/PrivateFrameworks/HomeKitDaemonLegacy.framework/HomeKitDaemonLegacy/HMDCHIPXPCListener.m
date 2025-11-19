@interface HMDCHIPXPCListener
+ (id)logCategory;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (HMDCHIPXPCListener)initWithHomeManager:(id)a3;
- (HMDHomeManager)homeManager;
- (void)start;
- (void)stop;
@end

@implementation HMDCHIPXPCListener

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@New CHIP XPC connection requested: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D6C258];
  if (v7)
  {
    [v7 auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  if (TCCAccessCheckAuditToken())
  {
    v13 = [v7 valueForEntitlement:@"com.apple.developer.homekit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = [v15 BOOLValue];
    if (v16)
    {
      v17 = [v7 valueForEntitlement:@"com.apple.developer.homekit.background-mode"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      v20 = [v19 BOOLValue];
      v21 = objc_autoreleasePoolPush();
      v22 = v9;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = HMFBooleanToString();
        *buf = 138543618;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = v25;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@XPC connect entitlement for background mode: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v26 = [(os_unfair_lock_s *)v22 exportedInterface];
      [v7 setExportedInterface:v26];

      v27 = [(os_unfair_lock_s *)v22 remoteObjectInterface];
      [v7 setRemoteObjectInterface:v27];

      LODWORD(v27) = [v7 processIdentifier];
      v28 = [v7 remoteObjectProxy];
      v29 = [(os_unfair_lock_s *)v22 homeManager];
      v30 = [(os_unfair_lock_s *)v22 createClientConnectionWithRemoteObjectProxy:v28 homeManager:v29 connection:v7 backgroundModeEntitled:v20];

      os_unfair_lock_lock_with_options();
      v31 = [(os_unfair_lock_s *)v22 mutableConnections];
      [v31 addObject:v30];

      os_unfair_lock_unlock(v22 + 2);
      [v7 setExportedObject:v30];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __57__HMDCHIPXPCListener_listener_shouldAcceptNewConnection___block_invoke;
      v44[3] = &unk_279720C58;
      v46 = v27;
      v44[4] = v22;
      v45 = v30;
      v32 = v30;
      [v7 setInvalidationHandler:v44];
      v33 = [(os_unfair_lock_s *)v22 workQueue];
      [v7 _setQueue:v33];

      [v7 resume];
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = v9;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v41;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@XPC connection does not have public HomeKit entitlement: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
    }
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = v9;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v37;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@XPC connection has no permission to access Home data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    v16 = 0;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v16;
}

void __57__HMDCHIPXPCListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    *buf = 138543618;
    v19 = v5;
    v20 = 1024;
    v21 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@CHIP XPC client invalidated: %d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) deregisterReportHandlers];
  v7 = (*(a1 + 32) + 8);
  os_unfair_lock_lock_with_options();
  v8 = [*(a1 + 32) mutableConnections];
  [v8 removeObject:*(a1 + 40)];

  os_unfair_lock_unlock(v7);
  v9 = [*(a1 + 40) processInfo];
  v10 = (*(a1 + 32) + 8);
  os_unfair_lock_lock_with_options();
  v11 = [*(a1 + 32) mutableConnections];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__HMDCHIPXPCListener_listener_shouldAcceptNewConnection___block_invoke_89;
  v16[3] = &unk_279720C30;
  v12 = v9;
  v17 = v12;
  v13 = [v11 na_any:v16];

  os_unfair_lock_unlock(v10);
  if ((v13 & 1) == 0 && ([v12 shouldMonitor] & 1) == 0)
  {
    v14 = [*(a1 + 32) processMonitor];
    [v14 removeProcess:v12];
  }

  v15 = *MEMORY[0x277D85DE8];
}

BOOL __57__HMDCHIPXPCListener_listener_shouldAcceptNewConnection___block_invoke_89(uint64_t a1, void *a2)
{
  v3 = [a2 processInfo];
  v4 = [v3 identifier];
  v5 = v4 == [*(a1 + 32) identifier];

  return v5;
}

- (void)stop
{
  v2 = [(HMDCHIPXPCListener *)self listener];
  [v2 suspend];
}

- (void)start
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Starting CHIP XPC listener", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDCHIPXPCListener *)v4 listener];
  [v7 resume];

  v8 = *MEMORY[0x277D85DE8];
}

- (HMDCHIPXPCListener)initWithHomeManager:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = HMDCHIPXPCListener;
  v5 = [(HMDCHIPXPCListener *)&v29 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = HMDispatchQueueNameString();
    v8 = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(v8, v9);
    workQueue = v6->_workQueue;
    v6->_workQueue = v10;

    v12 = objc_alloc(MEMORY[0x277CCAE98]);
    v13 = [v12 initWithMachServiceName:*MEMORY[0x277CD15D0]];
    listener = v6->_listener;
    v6->_listener = v13;

    [(NSXPCListener *)v6->_listener _setQueue:v6->_workQueue];
    [(NSXPCListener *)v6->_listener setDelegate:v6];
    v15 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2866A50A0];
    exportedInterface = v6->_exportedInterface;
    v6->_exportedInterface = v15;

    v17 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28678F668];
    remoteObjectInterface = v6->_remoteObjectInterface;
    v6->_remoteObjectInterface = v17;

    objc_storeWeak(&v6->_homeManager, v4);
    v19 = HMDispatchQueueNameString();
    v20 = [v19 UTF8String];
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create(v20, v21);
    processMonitorQueue = v6->_processMonitorQueue;
    v6->_processMonitorQueue = v22;

    v24 = [[HMDProcessMonitor alloc] initWithQueue:v6->_processMonitorQueue];
    processMonitor = v6->_processMonitor;
    v6->_processMonitor = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mutableConnections = v6->_mutableConnections;
    v6->_mutableConnections = v26;
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11, &__block_literal_global_2068);
  }

  v3 = logCategory__hmf_once_v12;

  return v3;
}

uint64_t __33__HMDCHIPXPCListener_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v12 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end