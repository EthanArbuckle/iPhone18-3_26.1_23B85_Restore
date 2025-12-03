@interface HMDSettingsMessageHandler
+ (id)logCategory;
- (HMDSettingsMessageController)privateMessageController;
- (HMDSettingsMessageController)sharedMessageController;
- (HMDSettingsMessageHandler)initWithQueue:(id)queue;
- (OS_dispatch_queue)messageReceiveQueue;
- (void)_handleUpdateValue:(id)value;
- (void)configureWithMessageDispatcher:(id)dispatcher home:(id)home;
@end

@implementation HMDSettingsMessageHandler

- (HMDSettingsMessageController)sharedMessageController
{
  WeakRetained = objc_loadWeakRetained(&self->_sharedMessageController);

  return WeakRetained;
}

- (HMDSettingsMessageController)privateMessageController
{
  WeakRetained = objc_loadWeakRetained(&self->_privateMessageController);

  return WeakRetained;
}

- (OS_dispatch_queue)messageReceiveQueue
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
    v2 = vars8;
  }

  return self;
}

- (void)_handleUpdateValue:(id)value
{
  v53 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  messagePayload = [valueCopy messagePayload];
  v6 = [messagePayload hmf_stringForKey:*MEMORY[0x277CD0F90]];
  if ([v6 isEqualToString:*MEMORY[0x277CD14C0]])
  {
    sharedMessageController = [(HMDSettingsMessageHandler *)self sharedMessageController];
  }

  else
  {
    if (![v6 isEqualToString:*MEMORY[0x277CD1418]])
    {
      v27 = objc_autoreleasePoolPush();
      selfCopy = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v50 = v30;
        v51 = 2112;
        v52 = v6;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Settings update message target type (%@) is unknown", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v25 = MEMORY[0x277CCA9B8];
      v26 = 3;
      goto LABEL_22;
    }

    sharedMessageController = [(HMDSettingsMessageHandler *)self privateMessageController];
  }

  v8 = sharedMessageController;
  if (!sharedMessageController)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v24;
      v51 = 2112;
      v52 = messagePayload;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@No message controller to update value for message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = MEMORY[0x277CCA9B8];
    v26 = 2;
LABEL_22:
    v31 = [v25 hmErrorWithCode:v26];
    [valueCopy respondWithError:v31];
    v11 = 0;
    goto LABEL_36;
  }

  v9 = valueCopy;
  v10 = v8;
  v11 = v10;
  if (self)
  {
    v11 = v10;
    messagePayload2 = [v9 messagePayload];
    v13 = [messagePayload2 hmf_UUIDForKey:@"kUserUUIDKey"];

    if (v13 && ([v11 userUUID], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "hmf_isEqualToUUID:", v13), v14, (v15 & 1) != 0))
    {
      v16 = 0;
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
    }

    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v50 = v20;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Only current user may make changes", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      [v9 respondWithError:v16];

      goto LABEL_15;
    }

    v31 = [messagePayload hmf_dataForKey:*MEMORY[0x277CCEDA8]];
    if (v31)
    {
      messagePayload3 = [v9 messagePayload];
      v33 = [messagePayload3 hmf_stringForKey:*MEMORY[0x277CD0F88]];

      v34 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v36 = HMFGetOSLogHandle();
      v37 = v36;
      if (v33)
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v38 = v45 = v34;
          *buf = 138543362;
          v50 = v38;
          _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Received request to update value.", buf, 0xCu);

          v34 = v45;
        }

        objc_autoreleasePoolPop(v34);
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __48__HMDSettingsMessageHandler__handleUpdateValue___block_invoke;
        v47[3] = &unk_2797359D8;
        v48 = v9;
        [v11 updateWithEncodedValue:v31 onSettingKeyPath:v33 completion:v47];
        v39 = v48;
      }

      else
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          *buf = 138543618;
          v50 = v46;
          v51 = 2112;
          v52 = messagePayload;
          _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Missing key path from user settings update message payload: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v34);
        v39 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
        [v9 respondWithError:v39];
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543618;
        v50 = v43;
        v51 = 2112;
        v52 = messagePayload;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@Missing updated serialized value from payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
      v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [v9 respondWithError:v33];
    }

LABEL_36:
    goto LABEL_37;
  }

LABEL_15:

LABEL_37:
  v44 = *MEMORY[0x277D85DE8];
}

- (void)configureWithMessageDispatcher:(id)dispatcher home:(id)home
{
  v25 = *MEMORY[0x277D85DE8];
  newValue = dispatcher;
  homeCopy = home;
  if (self)
  {
    objc_setProperty_atomic(self, v6, newValue, 16);
  }

  uuid = [homeCopy uuid];
  [(HMDSettingsMessageHandler *)self setMessageTargetUUID:uuid];

  v10 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:0 remoteAccessRequired:0];
  if (self)
  {
    objc_setProperty_atomic(self, v9, v10, 32);

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Registering for setting messages.", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v15 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    *&buf = v15;
    *(&buf + 1) = objc_getProperty(selfCopy, v16, 32, 1);
    v24 = v10;
    v17 = MEMORY[0x277CBEA60];
    v18 = *(&buf + 1);
    v19 = [v17 arrayWithObjects:&buf count:3];

    [objc_getProperty(selfCopy v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (HMDSettingsMessageHandler)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = HMDSettingsMessageHandler;
  v6 = [(HMDSettingsMessageHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_19576 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_19576, &__block_literal_global_19577);
  }

  v3 = logCategory__hmf_once_v8_19578;

  return v3;
}

uint64_t __40__HMDSettingsMessageHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_19578;
  logCategory__hmf_once_v8_19578 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end