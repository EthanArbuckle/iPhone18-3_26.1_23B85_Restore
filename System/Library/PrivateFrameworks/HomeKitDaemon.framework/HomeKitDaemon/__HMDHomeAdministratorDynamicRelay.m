@interface __HMDHomeAdministratorDynamicRelay
+ (id)logCategory;
- (void)__handleRemoteMessage:(id)a3;
- (void)__handleXPCMessage:(id)a3;
- (void)registerForMessage:(id)a3 policies:(id)a4;
@end

@implementation __HMDHomeAdministratorDynamicRelay

- (void)__handleRemoteMessage:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(__HMDHomeAdministratorReceiver *)self receiver];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 shortDescription];
      *buf = 138543618;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Locally dispatching remote configuration message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [(__HMDHomeAdministratorReceiver *)v7 handler];
    v12 = [v11 home];
    v13 = [v12 residentSyncManager];

    if (v13)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __60____HMDHomeAdministratorDynamicRelay___handleRemoteMessage___block_invoke;
      v15[3] = &unk_27868A398;
      v16 = v11;
      [v13 interceptRemoteResidentRequest:v4 proceed:v15];
    }

    else
    {
      [v11 dispatchMessage:v4];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)__handleXPCMessage:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(__HMDHomeAdministratorReceiver *)self receiver];

  if (v5)
  {
    v6 = [(__HMDHomeAdministratorReceiver *)self handler];
    if ([v6 shouldRelayMessage:v4])
    {
      v7 = v4;
      if ([v6 allowLocalFallbackForMessage:v7])
      {
        v8 = [v7 mutableCopy];
        v9 = [v7 identifier];
        [v8 setIdentifier:v9];

        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __57____HMDHomeAdministratorDynamicRelay___handleXPCMessage___block_invoke;
        v19[3] = &unk_278686658;
        v20 = v6;
        v21 = self;
        v22 = v7;
        [v8 setResponseHandler:v19];
        v7 = [v8 copy];
      }

      v18 = 0;
      v10 = [v6 operationForMessage:v7 error:&v18];
      v11 = v18;
      if (v10)
      {
        [v10 setShouldSuspendSyncing:1];
        [v6 addOperation:v10];
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
      [(__HMDHomeAdministratorReceiver *)&v23 __handleXPCMessage:v4];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessage:(id)a3 policies:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = __HMDHomeAdministratorDynamicRelay;
  [(__HMDHomeAdministratorReceiver *)&v16 registerForMessage:v6 policies:v7];
  v8 = [(__HMDHomeAdministratorReceiver *)self handler];
  v9 = [v8 home];
  if (![v9 isOwnerUser])
  {
    goto LABEL_4;
  }

  v10 = +[HMDDeviceCapabilities deviceCapabilities];
  v11 = [v10 isResidentCapable];

  if (v11)
  {
    v12 = [v7 hmf_objectsPassingTest:&__block_literal_global_179_251826];
    v9 = [v12 mutableCopy];

    v13 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v13 setRoles:8];
    v14 = [v13 copy];
    [v9 addObject:v14];

    v15 = [v8 dispatcher];
    [v15 registerForMessage:v6 receiver:self policies:v9 selector:sel___handleRemoteMessage_];

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