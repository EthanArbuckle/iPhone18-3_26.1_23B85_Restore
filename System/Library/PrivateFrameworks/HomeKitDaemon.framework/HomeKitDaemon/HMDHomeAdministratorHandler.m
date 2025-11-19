@interface HMDHomeAdministratorHandler
+ (id)logCategory;
- (BOOL)allowLocalFallbackForMessage:(id)a3;
- (BOOL)shouldRelayMessage:(id)a3;
- (BOOL)shouldRelayMessages;
- (HMDHome)home;
- (HMDHomeAdministratorHandler)initWithHome:(id)a3;
- (HMDHomeAdministratorHandler)initWithHome:(id)a3 dispatcher:(id)a4;
- (HMDHomeAdministratorHandler)initWithTransport:(id)a3;
- (id)logIdentifier;
- (id)messageBindingForMessageWithName:(id)a3 policies:(id)a4 selector:(SEL)a5;
- (id)messageBindingForMessageWithName:(id)a3 policies:(id)a4 selector:(SEL)a5 isThisResidentCapableDevice:(BOOL)a6;
- (id)operationForMessage:(id)a3 error:(id *)a4;
- (id)syncOperationManager;
- (void)addOperation:(id)a3;
- (void)deregisterReceiver:(id)a3;
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

- (void)addOperation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Adding operation: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [(NSOperationQueue *)v6->_queue addOperation:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
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
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to create home administrator configuration operation: %@", buf, 0x16u);
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
  if (!WeakRetained || ([WeakRetained isSharedAdmin] & 1) != 0)
  {
    goto LABEL_3;
  }

  v5 = [v3 homeManager];
  if ([v5 isDemoModeV2Active])
  {
    v6 = [v3 hasDemoAccessories];

    if (v6)
    {
      v4 = [v3 primaryResident];
      if (!v4)
      {
        goto LABEL_13;
      }

      v7 = [v3 hasDemoPrimaryResident];

      if (v7)
      {
LABEL_12:
        LOBYTE(v4) = 0;
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
  LOBYTE(v4) = 1;
LABEL_13:

  return v4;
}

- (BOOL)shouldRelayMessage:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDHomeAdministratorHandler *)self shouldRelayMessages])
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
    v6 = [WeakRetained deviceHomeKitSetupSession];
    v7 = [(HMDHomeAdministratorHandler *)self allowLocalFallbackForMessage:v4];
    if (WeakRetained)
    {
      v8 = !v7;
    }

    else
    {
      v8 = 1;
    }

    v9 = v8 || v6 == 0;
    if (v9 || ([v6 shouldRelayRequest] & 1) != 0)
    {
      v10 = 1;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v4 shortDescription];
        v16 = [v4 clientName];
        [v6 isFirstResidentForHome];
        v17 = HMFBooleanToString();
        [v6 hasFailedRelayAttempt];
        HMFBooleanToString();
        v18 = v21 = v11;
        *buf = 138544386;
        v23 = v14;
        v24 = 2112;
        v25 = v15;
        v26 = 2112;
        v27 = v16;
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

- (BOOL)allowLocalFallbackForMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 clientName];
  if ([v4 isEqual:*MEMORY[0x277CCFD80]])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 clientName];
    if ([v6 isEqual:*MEMORY[0x277CD0C38]])
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 clientName];
      if ([v7 isEqual:*MEMORY[0x277CD1210]])
      {
        v5 = 1;
      }

      else if (isInternalBuild())
      {
        v8 = [v3 clientName];
        if ([v8 isEqual:*MEMORY[0x277CCFD70]])
        {
          v5 = 1;
        }

        else
        {
          v9 = [v3 clientName];
          v5 = [v9 isEqual:*MEMORY[0x277CD1220]];
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
  if (v13 && v14 && v15 && v16)
  {
    v19 = [(HMDHomeAdministratorHandler *)v13 home];
    v18 = AdminHandlerMessagePoliciesFrom(v16, v19);

    v20 = __HMDHomeAdministratorHandlerGetOrCreateReceiver(v13, v15);
    [v20 registerForMessage:v14 policies:v18];
  }

  objc_autoreleasePoolPop(v17);

  v21.receiver = v13;
  v21.super_class = HMDHomeAdministratorHandler;
  [(HMDHomeAdministratorHandler *)&v21 registerForMessage:v14 receiver:v15 policies:v18 selector:a6];
}

- (id)messageBindingForMessageWithName:(id)a3 policies:(id)a4 selector:(SEL)a5 isThisResidentCapableDevice:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [(HMDHomeAdministratorHandler *)self home];
  v14 = AdminHandlerMessagePoliciesFrom(v10, v13);
  v15 = [v14 hmf_objectsPassingTest:&__block_literal_global_251890];
  v16 = HMFCreateMessageBinding();
  [v12 addObject:v16];

  if ([v13 isOwnerUser] && v6)
  {
    v17 = [v14 hmf_objectsPassingTest:&__block_literal_global_13_251891];
    v18 = [v17 mutableCopy];

    v19 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v19 setRoles:8];
    v20 = [v19 copy];
    [v18 addObject:v20];

    v21 = HMFCreateMessageBinding();
    [v12 addObject:v21];
  }

  v22 = [v12 copy];

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

- (id)messageBindingForMessageWithName:(id)a3 policies:(id)a4 selector:(SEL)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[HMDDeviceCapabilities deviceCapabilities];
  v11 = -[HMDHomeAdministratorHandler messageBindingForMessageWithName:policies:selector:isThisResidentCapableDevice:](self, "messageBindingForMessageWithName:policies:selector:isThisResidentCapableDevice:", v9, v8, a5, [v10 isResidentCapable]);

  return v11;
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