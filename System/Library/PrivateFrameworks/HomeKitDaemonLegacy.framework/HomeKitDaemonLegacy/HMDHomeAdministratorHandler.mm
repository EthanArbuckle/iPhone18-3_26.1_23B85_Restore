@interface HMDHomeAdministratorHandler
+ (id)logCategory;
- (BOOL)shouldRelayMessages;
- (HMDHome)home;
- (HMDHomeAdministratorHandler)initWithHome:(id)home;
- (HMDHomeAdministratorHandler)initWithHome:(id)home dispatcher:(id)dispatcher;
- (HMDHomeAdministratorHandler)initWithTransport:(id)transport;
- (id)logIdentifier;
- (id)operationForMessage:(id)message error:(id *)error;
- (id)syncOperationManager;
- (void)addOperation:(id)operation;
- (void)deregisterReceiver:(id)receiver;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerForMessage:(id)message receiver:(id)receiver policies:(id)policies selector:(SEL)selector;
- (void)sendMessage:(id)message completionHandler:(id)handler;
@end

@implementation HMDHomeAdministratorHandler

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  home = [(HMDHomeAdministratorHandler *)self home];
  name = [home name];

  return name;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v42 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  syncOperationManager = [(HMDHomeAdministratorHandler *)self syncOperationManager];
  v13 = objectCopy;
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
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      v34 = 138544130;
      v35 = v19;
      v36 = 2112;
      v37 = v15;
      v38 = 2112;
      v39 = pathCopy;
      v40 = 2112;
      v41 = changeCopy;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Received notification operation '%@' property '%@' updated to: %@", &v34, 0x2Au);
    }

    objc_autoreleasePoolPop(v16);
    if ([pathCopy isEqualToString:@"isExecuting"])
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v34 = 138543362;
        v35 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Disabling syncing", &v34, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      [syncOperationManager pauseCloudPush];
      [v15 removeObserver:v21 forKeyPath:pathCopy];
    }

    else if ([pathCopy isEqualToString:@"isFinished"] && objc_msgSend(v15, "isFinished"))
    {
      error = [v15 error];

      v25 = error == 0;
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
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
        [syncOperationManager resumeCloudPush];
      }

      else
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v30 = HMFGetLogIdentifier();
          error2 = [v15 error];
          v34 = 138543874;
          v35 = v30;
          v36 = 2112;
          v37 = v15;
          v38 = 2112;
          v39 = error2;
          _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Operation '%@' failed, resetting syncing: %@", &v34, 0x20u);
        }

        objc_autoreleasePoolPop(v26);
        [syncOperationManager killCloudPushAndResume];
      }

      [v15 removeObserver:v27 forKeyPath:pathCopy];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)addOperation:(id)operation
{
  v18 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  if (operationCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = operationCopy;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Adding operation: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    if ([operationCopy shouldSuspendSyncing])
    {
      v9 = objc_autoreleasePoolPush();
      v10 = selfCopy;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Registering for state change notifications", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      [operationCopy addObserver:v10 forKeyPath:@"isExecuting" options:0 context:0];
      [operationCopy addObserver:v10 forKeyPath:@"isFinished" options:0 context:0];
    }

    [(NSOperationQueue *)selfCopy->_queue addOperation:operationCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)operationForMessage:(id)message error:(id *)error
{
  messageCopy = message;
  if (messageCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
    if (WeakRetained)
    {
      dispatcher = [(HMDHomeAdministratorHandler *)self dispatcher];

      if (dispatcher)
      {
        v9 = [HMDHomeAdministratorConfigurationOperation alloc];
        dispatcher2 = [(HMDHomeAdministratorHandler *)self dispatcher];
        v11 = [(HMDHomeAdministratorConfigurationOperation *)v9 initWithMessage:messageCopy home:WeakRetained dispatcher:dispatcher2];

LABEL_13:
        goto LABEL_14;
      }

      if (error)
      {
        v12 = MEMORY[0x277CCA9B8];
        v13 = @"Dispatcher is nil.";
        v14 = -1;
        goto LABEL_11;
      }
    }

    else if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = @"The home is no longer valid.";
      v14 = 2;
LABEL_11:
      [v12 hmErrorWithCode:v14 description:0 reason:v13 suggestion:0];
      *error = v11 = 0;
      goto LABEL_13;
    }

    v11 = 0;
    goto LABEL_13;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  if ([(HMDHomeAdministratorHandler *)self shouldRelayMessages])
  {
    v19 = 0;
    v8 = [(HMDHomeAdministratorHandler *)self operationForMessage:messageCopy error:&v19];
    v9 = v19;
    if (v8)
    {
      [(HMDHomeAdministratorHandler *)self addOperation:v8];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
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
      [messageCopy respondWithError:v9];
    }

    v16 = _Block_copy(handlerCopy);
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }
  }

  else
  {
    [(HMDHomeAdministratorHandler *)self dispatchMessage:messageCopy];
    v10 = _Block_copy(handlerCopy);
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
    isSharedAdmin = [WeakRetained isSharedAdmin];
  }

  else
  {
    isSharedAdmin = 1;
  }

  return isSharedAdmin;
}

- (void)deregisterReceiver:(id)receiver
{
  receiverCopy = receiver;
  if (receiverCopy)
  {
    v6.receiver = self;
    v6.super_class = HMDHomeAdministratorHandler;
    [(HMDHomeAdministratorHandler *)&v6 deregisterReceiver:receiverCopy];
    os_unfair_lock_lock_with_options();
    v5 = [(NSMapTable *)self->_receivers objectForKey:receiverCopy];
    [(NSMapTable *)self->_receivers removeObjectForKey:receiverCopy];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)registerForMessage:(id)message receiver:(id)receiver policies:(id)policies selector:(SEL)selector
{
  messageCopy = message;
  receiverCopy = receiver;
  policiesCopy = policies;
  selfCopy = self;
  v14 = messageCopy;
  v15 = receiverCopy;
  v16 = policiesCopy;
  v17 = objc_autoreleasePoolPush();
  v18 = 0;
  if (!selfCopy || !v14 || !v15 || !v16)
  {
LABEL_10:
    objc_autoreleasePoolPop(v17);

    v37.receiver = selfCopy;
    v37.super_class = HMDHomeAdministratorHandler;
    [(HMDHomeAdministratorHandler *)&v37 registerForMessage:v14 receiver:v15 policies:v18 selector:selector];

    return;
  }

  home = [(HMDHomeAdministratorHandler *)selfCopy home];
  v20 = v16;
  v21 = home;
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
      v28 = v33 = selector;
      v26 = [v28 mutableCopy];

      [v26 setUserPrivilege:4];
      [v26 setRequiresRemoteAccess:0];
      v29 = [v26 copy];
      [v24 replaceObjectAtIndex:v27 withObject:v29];

      selector = v33;
    }

    v18 = [v24 copy];
    objc_autoreleasePoolPop(context);

    v30 = __HMDHomeAdministratorHandlerGetOrCreateReceiver(selfCopy, v15);
    [v30 registerForMessage:v14 policies:v18];

    v17 = v36;
    goto LABEL_10;
  }

  v31 = _HMFPreconditionFailure();
  __HMDHomeAdministratorHandlerGetOrCreateReceiver(v31, v32);
}

- (id)syncOperationManager
{
  home = [(HMDHomeAdministratorHandler *)self home];
  homeManager = [home homeManager];
  syncManager = [homeManager syncManager];

  return syncManager;
}

- (HMDHomeAdministratorHandler)initWithHome:(id)home dispatcher:(id)dispatcher
{
  homeCopy = home;
  dispatcherCopy = dispatcher;
  v8 = dispatcherCopy;
  selfCopy = 0;
  if (homeCopy && dispatcherCopy)
  {
    v21.receiver = self;
    v21.super_class = HMDHomeAdministratorHandler;
    v10 = [(HMDHomeAdministratorHandler *)&v21 initWithTransport:0];
    v11 = v10;
    if (v10)
    {
      objc_storeWeak(&v10->_home, homeCopy);
      objc_storeStrong(&v11->_dispatcher, dispatcher);
      v12 = objc_alloc_init(MEMORY[0x277CCABD8]);
      queue = v11->_queue;
      v11->_queue = v12;

      uuid = [homeCopy uuid];
      uUIDString = [uuid UUIDString];
      v16 = HMDispatchQueueNameString();
      [(NSOperationQueue *)v11->_queue setName:v16];

      [(NSOperationQueue *)v11->_queue setQualityOfService:9];
      [(NSOperationQueue *)v11->_queue setMaxConcurrentOperationCount:1];
      v17 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      receivers = v11->_receivers;
      v11->_receivers = v17;

      resolveHook = [v8 resolveHook];
      [(HMDHomeAdministratorHandler *)v11 setResolveHook:resolveHook];
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

- (HMDHomeAdministratorHandler)initWithHome:(id)home
{
  homeCopy = home;
  v5 = +[HMDMessageDispatcher defaultDispatcher];
  v6 = [(HMDHomeAdministratorHandler *)self initWithHome:homeCopy dispatcher:v5];

  return v6;
}

- (HMDHomeAdministratorHandler)initWithTransport:(id)transport
{
  transportCopy = transport;
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