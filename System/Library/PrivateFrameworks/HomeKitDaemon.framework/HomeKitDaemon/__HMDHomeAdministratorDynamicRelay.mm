@interface __HMDHomeAdministratorDynamicRelay
+ (id)logCategory;
- (void)__handleRemoteMessage:(id)message;
- (void)__handleXPCMessage:(id)message;
- (void)registerForMessage:(id)message policies:(id)policies;
@end

@implementation __HMDHomeAdministratorDynamicRelay

- (void)__handleRemoteMessage:(id)message
{
  v21 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  receiver = [(__HMDHomeAdministratorReceiver *)self receiver];

  if (receiver)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      *buf = 138543618;
      v18 = v9;
      v19 = 2112;
      v20 = shortDescription;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Locally dispatching remote configuration message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    handler = [(__HMDHomeAdministratorReceiver *)selfCopy handler];
    home = [handler home];
    residentSyncManager = [home residentSyncManager];

    if (residentSyncManager)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __60____HMDHomeAdministratorDynamicRelay___handleRemoteMessage___block_invoke;
      v15[3] = &unk_27868A398;
      v16 = handler;
      [residentSyncManager interceptRemoteResidentRequest:messageCopy proceed:v15];
    }

    else
    {
      [handler dispatchMessage:messageCopy];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)__handleXPCMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  receiver = [(__HMDHomeAdministratorReceiver *)self receiver];

  if (receiver)
  {
    handler = [(__HMDHomeAdministratorReceiver *)self handler];
    if ([handler shouldRelayMessage:messageCopy])
    {
      v7 = messageCopy;
      if ([handler allowLocalFallbackForMessage:v7])
      {
        v8 = [v7 mutableCopy];
        identifier = [v7 identifier];
        [v8 setIdentifier:identifier];

        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __57____HMDHomeAdministratorDynamicRelay___handleXPCMessage___block_invoke;
        v19[3] = &unk_278686658;
        v20 = handler;
        selfCopy = self;
        v22 = v7;
        [v8 setResponseHandler:v19];
        v7 = [v8 copy];
      }

      v18 = 0;
      v10 = [handler operationForMessage:v7 error:&v18];
      v11 = v18;
      if (v10)
      {
        [v10 setShouldSuspendSyncing:1];
        [handler addOperation:v10];
      }

      else
      {
        v12 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = HMFGetLogIdentifier();
          *buf = 138543618;
          v25 = v15;
          v26 = 2112;
          v27 = v11;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to create operation with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v12);
        if (v11)
        {
          [v7 respondWithError:v11];
        }

        else
        {
          v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
          [v7 respondWithError:v16];
        }
      }
    }

    else
    {
      v23.receiver = self;
      v23.super_class = __HMDHomeAdministratorDynamicRelay;
      [(__HMDHomeAdministratorReceiver *)&v23 __handleXPCMessage:messageCopy];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessage:(id)message policies:(id)policies
{
  messageCopy = message;
  policiesCopy = policies;
  v16.receiver = self;
  v16.super_class = __HMDHomeAdministratorDynamicRelay;
  [(__HMDHomeAdministratorReceiver *)&v16 registerForMessage:messageCopy policies:policiesCopy];
  handler = [(__HMDHomeAdministratorReceiver *)self handler];
  home = [handler home];
  if (![home isOwnerUser])
  {
    goto LABEL_4;
  }

  v10 = +[HMDDeviceCapabilities deviceCapabilities];
  isResidentCapable = [v10 isResidentCapable];

  if (isResidentCapable)
  {
    v12 = [policiesCopy hmf_objectsPassingTest:&__block_literal_global_179_251826];
    home = [v12 mutableCopy];

    v13 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v13 setRoles:8];
    v14 = [v13 copy];
    [home addObject:v14];

    dispatcher = [handler dispatcher];
    [dispatcher registerForMessage:messageCopy receiver:self policies:home selector:sel___handleRemoteMessage_];

LABEL_4:
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t15_251878 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t15_251878, &__block_literal_global_183);
  }

  v3 = logCategory__hmf_once_v16_251879;

  return v3;
}

@end