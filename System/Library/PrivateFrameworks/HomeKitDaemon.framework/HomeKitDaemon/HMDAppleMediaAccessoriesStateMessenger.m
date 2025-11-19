@interface HMDAppleMediaAccessoriesStateMessenger
+ (id)logCategory;
- (HMDAppleMediaAccessoriesStateMessenger)initWithIdentifier:(id)a3 messageDispatcher:(id)a4;
- (HMDAppleMediaAccessoriesStateMessengerDelegate)delegate;
- (NSUUID)messageTargetUUID;
- (id)logIdentifier;
- (id)relayMessageName:(id)a3 payload:(id)a4 toAppleMediaAccessory:(id)a5;
- (void)handleAppleMediaAccessoryModelIdentifierRequestMessage:(id)a3;
- (void)registerForMessagesWithHome:(id)a3;
- (void)sendModelIdentifierRequestMessageToAppleMediaAccessory:(id)a3 withAccessoryIdentifier:(id)a4 completion:(id)a5;
@end

@implementation HMDAppleMediaAccessoriesStateMessenger

- (HMDAppleMediaAccessoriesStateMessengerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleAppleMediaAccessoryModelIdentifierRequestMessage:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v8;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling apple media accessory model identifier request message: %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 messagePayload];
  if (v9)
  {
    v10 = [[HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload alloc] initWithPayload:v9];
    if (v10)
    {
      v11 = [(HMDAppleMediaAccessoriesStateMessenger *)v6 delegate];
      if (v11)
      {
        v12 = [(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)v10 accessoryIdentifier];
        [v11 appleMediaAccessoriesStateMessenger:v6 didReceiveModelIdentifierRequestMessage:v4 withAccessoryIdentifier:v12];
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = v6;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          v26 = 138543362;
          v27 = v24;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify delegate of model identifier request message due to no delegate", &v26, 0xCu);
        }

        objc_autoreleasePoolPop(v21);
        v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
        [v4 respondWithError:v12];
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v6;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v20;
        v28 = 2112;
        v29 = v9;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to get model identifier request payload from payload: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      [v4 respondWithError:v11];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v16;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get message payload from model identifier request message: %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    [v4 respondWithError:v10];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (NSUUID)messageTargetUUID
{
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"8218CC5D-C283-4FE6-9E57-848EF1092455"];
  v4 = MEMORY[0x277CCAD78];
  v5 = [(HMDAppleMediaAccessoriesStateMessenger *)self identifier];
  v6 = [v5 UUIDString];
  v7 = [v6 dataUsingEncoding:4];
  v8 = [v4 hmf_UUIDWithNamespace:v3 data:v7];

  return v8;
}

- (id)logIdentifier
{
  v2 = [(HMDAppleMediaAccessoriesStateMessenger *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)relayMessageName:(id)a3 payload:(id)a4 toAppleMediaAccessory:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277D2C900]);
  v12 = [v10 device];
  if (v12)
  {
    v13 = [HMDRemoteDeviceMessageDestination alloc];
    v14 = [(HMDAppleMediaAccessoriesStateMessenger *)self messageTargetUUID];
    v15 = [(HMDRemoteDeviceMessageDestination *)v13 initWithTarget:v14 device:v12];

    v28 = v8;
    v16 = [HMDRemoteMessage secureMessageWithName:v8 qualityOfService:-1 destination:v15 messagePayload:v9];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __89__HMDAppleMediaAccessoriesStateMessenger_relayMessageName_payload_toAppleMediaAccessory___block_invoke;
    v29[3] = &unk_278689DC0;
    v30 = v11;
    [v16 setResponseHandler:v29];
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v32 = v20;
      v33 = 2112;
      v34 = v16;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Relaying message: %@ to accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [(HMDAppleMediaAccessoriesStateMessenger *)v18 messageDispatcher];
    [v21 sendMessage:v16];

    v8 = v28;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138544130;
      v32 = v25;
      v33 = 2112;
      v34 = v8;
      v35 = 2112;
      v36 = v9;
      v37 = 2112;
      v38 = v10;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to get device to relay message name: %@ payload: %@ to apple media accessory: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v22);
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    [v11 finishWithError:v15];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v11;
}

void __89__HMDAppleMediaAccessoriesStateMessenger_relayMessageName_payload_toAppleMediaAccessory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) finishWithResult:v5];
  }

  else
  {
    v6 = v7;
    if (!v7)
    {
      v6 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    }

    v7 = v6;
    [*(a1 + 32) finishWithError:v6];
  }
}

- (void)sendModelIdentifierRequestMessageToAppleMediaAccessory:(id)a3 withAccessoryIdentifier:(id)a4 completion:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v29 = v14;
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Sending model identifier request message to apple media accessory: %@ accessory identifier: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [[HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload alloc] initWithAccessoryIdentifier:v9];
  v16 = +[HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload messageName];
  v17 = [(HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload *)v15 payloadCopy];
  v18 = [(HMDAppleMediaAccessoriesStateMessenger *)v12 relayMessageName:v16 payload:v17 toAppleMediaAccessory:v8];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __132__HMDAppleMediaAccessoriesStateMessenger_sendModelIdentifierRequestMessageToAppleMediaAccessory_withAccessoryIdentifier_completion___block_invoke;
  v26[3] = &unk_278689A68;
  v26[4] = v12;
  v19 = v10;
  v27 = v19;
  v20 = [v18 addFailureBlock:v26];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __132__HMDAppleMediaAccessoriesStateMessenger_sendModelIdentifierRequestMessageToAppleMediaAccessory_withAccessoryIdentifier_completion___block_invoke_14;
  v24[3] = &unk_278682CE8;
  v24[4] = v12;
  v25 = v19;
  v21 = v19;
  v22 = [v18 addSuccessBlock:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __132__HMDAppleMediaAccessoriesStateMessenger_sendModelIdentifierRequestMessageToAppleMediaAccessory_withAccessoryIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Relay model identifier request payload completed with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void __132__HMDAppleMediaAccessoriesStateMessenger_sendModelIdentifierRequestMessageToAppleMediaAccessory_withAccessoryIdentifier_completion___block_invoke_14(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v7;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Relay model identifier request payload completed with response payload: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [[HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload alloc] initWithPayload:v3];
  v9 = v8;
  if (v8)
  {
    v10 = *(a1 + 40);
    v11 = [(HMDAppleMediaAccessoryModelIdentifierResponseMessagePayload *)v8 modelIdentifier];
    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode model identifier response payload: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = *(a1 + 40);
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    (*(v16 + 16))(v16, v11, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessagesWithHome:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering for messages", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v10 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v11 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:4 remoteAccessRequired:0];
  v12 = [(HMDAppleMediaAccessoriesStateMessenger *)v6 messageDispatcher];
  v13 = +[HMDAppleMediaAccessoryModelIdentifierRequestMessagePayload messageName];
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  [v12 registerForMessage:v13 receiver:v6 policies:v14 selector:sel_handleAppleMediaAccessoryModelIdentifierRequestMessage_];

  v15 = *MEMORY[0x277D85DE8];
}

- (HMDAppleMediaAccessoriesStateMessenger)initWithIdentifier:(id)a3 messageDispatcher:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMDAppleMediaAccessoriesStateMessenger *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMDAppleMediaAccessoriesStateMessenger;
  v10 = [(HMDAppleMediaAccessoriesStateMessenger *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_identifier, a3);
    objc_storeStrong(&v11->_messageDispatcher, a4);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_233387 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_233387, &__block_literal_global_233388);
  }

  v3 = logCategory__hmf_once_v8_233389;

  return v3;
}

void __53__HMDAppleMediaAccessoriesStateMessenger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_233389;
  logCategory__hmf_once_v8_233389 = v1;
}

@end