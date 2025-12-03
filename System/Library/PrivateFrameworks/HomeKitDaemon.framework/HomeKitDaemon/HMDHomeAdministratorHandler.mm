@interface HMDHomeAdministratorHandler
+ (id)logCategory;
- (BOOL)allowLocalFallbackForMessage:(id)message;
- (BOOL)shouldRelayMessage:(id)message;
- (BOOL)shouldRelayMessages;
- (HMDHome)home;
- (HMDHomeAdministratorHandler)initWithHome:(id)home;
- (HMDHomeAdministratorHandler)initWithHome:(id)home dispatcher:(id)dispatcher;
- (HMDHomeAdministratorHandler)initWithTransport:(id)transport;
- (id)logIdentifier;
- (id)messageBindingForMessageWithName:(id)name policies:(id)policies selector:(SEL)selector;
- (id)messageBindingForMessageWithName:(id)name policies:(id)policies selector:(SEL)selector isThisResidentCapableDevice:(BOOL)device;
- (id)operationForMessage:(id)message error:(id *)error;
- (id)syncOperationManager;
- (void)addOperation:(id)operation;
- (void)deregisterReceiver:(id)receiver;
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

- (void)addOperation:(id)operation
{
  v14 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  if (operationCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = operationCopy;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Adding operation: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [(NSOperationQueue *)selfCopy->_queue addOperation:operationCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
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
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to create home administrator configuration operation: %@", buf, 0x16u);
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
  if (!WeakRetained || ([WeakRetained isSharedAdmin] & 1) != 0)
  {
    goto LABEL_3;
  }

  homeManager = [v3 homeManager];
  if ([homeManager isDemoModeV2Active])
  {
    hasDemoAccessories = [v3 hasDemoAccessories];

    if (hasDemoAccessories)
    {
      primaryResident = [v3 primaryResident];
      if (!primaryResident)
      {
        goto LABEL_13;
      }

      hasDemoPrimaryResident = [v3 hasDemoPrimaryResident];

      if (hasDemoPrimaryResident)
      {
LABEL_12:
        LOBYTE(primaryResident) = 0;
        goto LABEL_13;
      }
    }
  }

  else
  {
  }

  if (![v3 hasAnyResident] || objc_msgSend(v3, "isCurrentDeviceConfirmedPrimaryResident"))
  {
    goto LABEL_12;
  }

LABEL_3:
  LOBYTE(primaryResident) = 1;
LABEL_13:

  return primaryResident;
}

- (BOOL)shouldRelayMessage:(id)message
{
  v32 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([(HMDHomeAdministratorHandler *)self shouldRelayMessages])
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
    deviceHomeKitSetupSession = [WeakRetained deviceHomeKitSetupSession];
    v7 = [(HMDHomeAdministratorHandler *)self allowLocalFallbackForMessage:messageCopy];
    if (WeakRetained)
    {
      v8 = !v7;
    }

    else
    {
      v8 = 1;
    }

    v9 = v8 || deviceHomeKitSetupSession == 0;
    if (v9 || ([deviceHomeKitSetupSession shouldRelayRequest] & 1) != 0)
    {
      v10 = 1;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        shortDescription = [messageCopy shortDescription];
        clientName = [messageCopy clientName];
        [deviceHomeKitSetupSession isFirstResidentForHome];
        v17 = HMFBooleanToString();
        [deviceHomeKitSetupSession hasFailedRelayAttempt];
        HMFBooleanToString();
        v18 = v21 = v11;
        *buf = 138544386;
        v23 = v14;
        v24 = 2112;
        v25 = shortDescription;
        v26 = 2112;
        v27 = clientName;
        v28 = 2112;
        v29 = v17;
        v30 = 2112;
        v31 = v18;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Skip attempt to relay message %@ from client %@, firstResidentForHome=%@, hasFailedRelayAttempt=%@", buf, 0x34u);

        v11 = v21;
      }

      objc_autoreleasePoolPop(v11);
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)allowLocalFallbackForMessage:(id)message
{
  messageCopy = message;
  clientName = [messageCopy clientName];
  if ([clientName isEqual:*MEMORY[0x277CCFD80]])
  {
    v5 = 1;
  }

  else
  {
    clientName2 = [messageCopy clientName];
    if ([clientName2 isEqual:*MEMORY[0x277CD0C38]])
    {
      v5 = 1;
    }

    else
    {
      clientName3 = [messageCopy clientName];
      if ([clientName3 isEqual:*MEMORY[0x277CD1210]])
      {
        v5 = 1;
      }

      else if (isInternalBuild())
      {
        clientName4 = [messageCopy clientName];
        if ([clientName4 isEqual:*MEMORY[0x277CCFD70]])
        {
          v5 = 1;
        }

        else
        {
          clientName5 = [messageCopy clientName];
          v5 = [clientName5 isEqual:*MEMORY[0x277CD1220]];
        }
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
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
  if (selfCopy && v14 && v15 && v16)
  {
    home = [(HMDHomeAdministratorHandler *)selfCopy home];
    v18 = AdminHandlerMessagePoliciesFrom(v16, home);

    v20 = __HMDHomeAdministratorHandlerGetOrCreateReceiver(selfCopy, v15);
    [v20 registerForMessage:v14 policies:v18];
  }

  objc_autoreleasePoolPop(v17);

  v21.receiver = selfCopy;
  v21.super_class = HMDHomeAdministratorHandler;
  [(HMDHomeAdministratorHandler *)&v21 registerForMessage:v14 receiver:v15 policies:v18 selector:selector];
}

- (id)messageBindingForMessageWithName:(id)name policies:(id)policies selector:(SEL)selector isThisResidentCapableDevice:(BOOL)device
{
  deviceCopy = device;
  nameCopy = name;
  policiesCopy = policies;
  v11 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  home = [(HMDHomeAdministratorHandler *)self home];
  v14 = AdminHandlerMessagePoliciesFrom(policiesCopy, home);
  v15 = [v14 hmf_objectsPassingTest:&__block_literal_global_251890];
  v16 = HMFCreateMessageBinding();
  [array addObject:v16];

  if ([home isOwnerUser] && deviceCopy)
  {
    v17 = [v14 hmf_objectsPassingTest:&__block_literal_global_13_251891];
    v18 = [v17 mutableCopy];

    v19 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v19 setRoles:8];
    v20 = [v19 copy];
    [v18 addObject:v20];

    v21 = HMFCreateMessageBinding();
    [array addObject:v21];
  }

  v22 = [array copy];

  objc_autoreleasePoolPop(v11);

  return v22;
}

uint64_t __110__HMDHomeAdministratorHandler_messageBindingForMessageWithName_policies_selector_isThisResidentCapableDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 0;
  }

  else
  {
    objc_opt_class();
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  return v3 & 1;
}

BOOL __110__HMDHomeAdministratorHandler_messageBindingForMessageWithName_policies_selector_isThisResidentCapableDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (id)messageBindingForMessageWithName:(id)name policies:(id)policies selector:(SEL)selector
{
  policiesCopy = policies;
  nameCopy = name;
  v10 = +[HMDDeviceCapabilities deviceCapabilities];
  v11 = -[HMDHomeAdministratorHandler messageBindingForMessageWithName:policies:selector:isThisResidentCapableDevice:](self, "messageBindingForMessageWithName:policies:selector:isThisResidentCapableDevice:", nameCopy, policiesCopy, selector, [v10 isResidentCapable]);

  return v11;
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
  if (logCategory__hmf_once_t7_251903 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_251903, &__block_literal_global_32_251904);
  }

  v3 = logCategory__hmf_once_v8_251905;

  return v3;
}

void __42__HMDHomeAdministratorHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_251905;
  logCategory__hmf_once_v8_251905 = v1;
}

@end