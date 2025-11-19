@interface HMDHomeAdministratorHandler
+ (id)logCategory;
- (BOOL)shouldRelayMessages;
- (HMDHome)home;
- (HMDHomeAdministratorHandler)initWithHome:(id)a3;
- (HMDHomeAdministratorHandler)initWithHome:(id)a3 dispatcher:(id)a4;
- (HMDHomeAdministratorHandler)initWithTransport:(id)a3;
- (id)logIdentifier;
- (id)operationForMessage:(id)a3 error:(id *)a4;
- (id)syncOperationManager;
- (void)addOperation:(id)a3;
- (void)deregisterReceiver:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerForMessage:(id)a3 receiver:(id)a4 policies:(id)a5 selector:(SEL)a6;
- (void)sendMessage:(id)a3 completionHandler:(id)a4;
@end

@implementation HMDHomeAdministratorHandler

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDHomeAdministratorHandler *)self home];
  v3 = [v2 name];

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(HMDHomeAdministratorHandler *)self syncOperationManager];
  v13 = v10;
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

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      v34 = 138544130;
      v35 = v19;
      v36 = 2112;
      v37 = v15;
      v38 = 2112;
      v39 = v9;
      v40 = 2112;
      v41 = v11;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Received notification operation '%@' property '%@' updated to: %@", &v34, 0x2Au);
    }

    objc_autoreleasePoolPop(v16);
    if ([v9 isEqualToString:@"isExecuting"])
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v17;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v34 = 138543362;
        v35 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Disabling syncing", &v34, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      [v12 pauseCloudPush];
      [v15 removeObserver:v21 forKeyPath:v9];
    }

    else if ([v9 isEqualToString:@"isFinished"] && objc_msgSend(v15, "isFinished"))
    {
      v24 = [v15 error];

      v25 = v24 == 0;
      v26 = objc_autoreleasePoolPush();
      v27 = v17;
      v28 = HMFGetOSLogHandle();
      v29 = v28;
      if (v25)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          v34 = 138543362;
          v35 = v32;
          _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Enabling syncing", &v34, 0xCu);
        }

        objc_autoreleasePoolPop(v26);
        [v12 resumeCloudPush];
      }

      else
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v30 = HMFGetLogIdentifier();
          v31 = [v15 error];
          v34 = 138543874;
          v35 = v30;
          v36 = 2112;
          v37 = v15;
          v38 = 2112;
          v39 = v31;
          _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Operation '%@' failed, resetting syncing: %@", &v34, 0x20u);
        }

        objc_autoreleasePoolPop(v26);
        [v12 killCloudPushAndResume];
      }

      [v15 removeObserver:v27 forKeyPath:v9];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)addOperation:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Adding operation: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    if ([v4 shouldSuspendSyncing])
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v6;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Registering for state change notifications", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      [v4 addObserver:v10 forKeyPath:@"isExecuting" options:0 context:0];
      [v4 addObserver:v10 forKeyPath:@"isFinished" options:0 context:0];
    }

    [(NSOperationQueue *)v6->_queue addOperation:v4];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)operationForMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
    if (WeakRetained)
    {
      v8 = [(HMDHomeAdministratorHandler *)self dispatcher];

      if (v8)
      {
        v9 = [HMDHomeAdministratorConfigurationOperation alloc];
        v10 = [(HMDHomeAdministratorHandler *)self dispatcher];
        v11 = [(HMDHomeAdministratorConfigurationOperation *)v9 initWithMessage:v6 home:WeakRetained dispatcher:v10];

LABEL_13:
        goto LABEL_14;
      }

      if (a4)
      {
        v12 = MEMORY[0x277CCA9B8];
        v13 = @"Dispatcher is nil.";
        v14 = -1;
        goto LABEL_11;
      }
    }

    else if (a4)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = @"The home is no longer valid.";
      v14 = 2;
LABEL_11:
      [v12 hmErrorWithCode:v14 description:0 reason:v13 suggestion:0];
      *a4 = v11 = 0;
      goto LABEL_13;
    }

    v11 = 0;
    goto LABEL_13;
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (void)sendMessage:(id)a3 completionHandler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(HMDHomeAdministratorHandler *)self shouldRelayMessages])
  {
    v19 = 0;
    v8 = [(HMDHomeAdministratorHandler *)self operationForMessage:v6 error:&v19];
    v9 = v19;
    if (v8)
    {
      [(HMDHomeAdministratorHandler *)self addOperation:v8];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v21 = v15;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to create home administrator configuration operation: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [v6 respondWithError:v9];
    }

    v16 = _Block_copy(v7);
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }
  }

  else
  {
    [(HMDHomeAdministratorHandler *)self dispatchMessage:v6];
    v10 = _Block_copy(v7);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRelayMessages
{
  WeakRetained = objc_loadWeakRetained(&self->_home);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained isSharedAdmin];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)deregisterReceiver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6.receiver = self;
    v6.super_class = HMDHomeAdministratorHandler;
    [(HMDHomeAdministratorHandler *)&v6 deregisterReceiver:v4];
    os_unfair_lock_lock_with_options();
    v5 = [(NSMapTable *)self->_receivers objectForKey:v4];
    [(NSMapTable *)self->_receivers removeObjectForKey:v4];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)registerForMessage:(id)a3 receiver:(id)a4 policies:(id)a5 selector:(SEL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = self;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = objc_autoreleasePoolPush();
  v18 = 0;
  if (!v13 || !v14 || !v15 || !v16)
  {
LABEL_10:
    objc_autoreleasePoolPop(v17);

    v37.receiver = v13;
    v37.super_class = HMDHomeAdministratorHandler;
    [(HMDHomeAdministratorHandler *)&v37 registerForMessage:v14 receiver:v15 policies:v18 selector:a6];

    return;
  }

  v19 = [(HMDHomeAdministratorHandler *)v13 home];
  v20 = v16;
  v21 = v19;
  v22 = objc_autoreleasePoolPush();
  v23 = [v20 hmf_objectPassingTest:&__block_literal_global_197_169666];
  if (v23)
  {
    v34 = v23;
    context = v22;
    v36 = v17;
    v24 = [v20 mutableCopy];
    v25 = [v20 indexOfObjectPassingTest:&__block_literal_global_202_169668];
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = [HMDUserMessagePolicy userMessagePolicyWithHome:v21 userPrivilege:4 remoteAccessRequired:0];
      [v24 addObject:v26];
    }

    else
    {
      v27 = v25;
      [v24 objectAtIndex:v25];
      v28 = v33 = a6;
      v26 = [v28 mutableCopy];

      [v26 setUserPrivilege:4];
      [v26 setRequiresRemoteAccess:0];
      v29 = [v26 copy];
      [v24 replaceObjectAtIndex:v27 withObject:v29];

      a6 = v33;
    }

    v18 = [v24 copy];
    objc_autoreleasePoolPop(context);

    v30 = __HMDHomeAdministratorHandlerGetOrCreateReceiver(v13, v15);
    [v30 registerForMessage:v14 policies:v18];

    v17 = v36;
    goto LABEL_10;
  }

  v31 = _HMFPreconditionFailure();
  __HMDHomeAdministratorHandlerGetOrCreateReceiver(v31, v32);
}

- (id)syncOperationManager
{
  v2 = [(HMDHomeAdministratorHandler *)self home];
  v3 = [v2 homeManager];
  v4 = [v3 syncManager];

  return v4;
}

- (HMDHomeAdministratorHandler)initWithHome:(id)a3 dispatcher:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v21.receiver = self;
    v21.super_class = HMDHomeAdministratorHandler;
    v10 = [(HMDHomeAdministratorHandler *)&v21 initWithTransport:0];
    v11 = v10;
    if (v10)
    {
      objc_storeWeak(&v10->_home, v6);
      objc_storeStrong(&v11->_dispatcher, a4);
      v12 = objc_alloc_init(MEMORY[0x277CCABD8]);
      queue = v11->_queue;
      v11->_queue = v12;

      v14 = [v6 uuid];
      v15 = [v14 UUIDString];
      v16 = HMDispatchQueueNameString();
      [(NSOperationQueue *)v11->_queue setName:v16];

      [(NSOperationQueue *)v11->_queue setQualityOfService:9];
      [(NSOperationQueue *)v11->_queue setMaxConcurrentOperationCount:1];
      v17 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      receivers = v11->_receivers;
      v11->_receivers = v17;

      v19 = [v8 resolveHook];
      [(HMDHomeAdministratorHandler *)v11 setResolveHook:v19];
    }

    self = v11;
    v9 = self;
  }

  return v9;
}

- (HMDHomeAdministratorHandler)initWithHome:(id)a3
{
  v4 = a3;
  v5 = +[HMDMessageDispatcher defaultDispatcher];
  v6 = [(HMDHomeAdministratorHandler *)self initWithHome:v4 dispatcher:v5];

  return v6;
}

- (HMDHomeAdministratorHandler)initWithTransport:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_169762 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_169762, &__block_literal_global_169763);
  }

  v3 = logCategory__hmf_once_v14_169764;

  return v3;
}

uint64_t __42__HMDHomeAdministratorHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_169764;
  logCategory__hmf_once_v14_169764 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end