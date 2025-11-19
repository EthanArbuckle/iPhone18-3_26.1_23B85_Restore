@interface HMDAccessorySettingsMessageHandlerRoar
- (void)relayReplaceConstraints:(id)a3 constraintIdsToRemove:(id)a4 keyPath:(id)a5 destination:(id)a6 completion:(id)a7;
- (void)relayUpdateValue:(id)a3 keyPath:(id)a4 destination:(id)a5 completion:(id)a6;
@end

@implementation HMDAccessorySettingsMessageHandlerRoar

- (void)relayReplaceConstraints:(id)a3 constraintIdsToRemove:(id)a4 keyPath:(id)a5 destination:(id)a6 completion:(id)a7
{
  v44 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v34 = a4;
  v35 = a5;
  v13 = a6;
  v14 = a7;
  v33 = v12;
  if (v13)
  {
    v15 = [MEMORY[0x277CD1F58] _encodedConstraintsToAdd:v12];
    v32 = [v34 na_map:&__block_literal_global_127746];
    v31 = [MEMORY[0x277CD1F58] _replaceConstraintsPayloadWithAdditions:v15 removals:v32 keyPath:v35];
    v16 = [HMDRemoteDeviceMessageDestination alloc];
    v17 = [(HMDAccessorySettingsMessageHandler *)self messageTargetUUID];
    v18 = [v13 device];
    v19 = [(HMDRemoteDeviceMessageDestination *)v16 initWithTarget:v17 device:v18];

    v20 = [HMDRemoteMessage secureMessageWithName:*MEMORY[0x277CCED80] qualityOfService:25 destination:v19 messagePayload:v31];
    objc_initWeak(&location, self);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __119__HMDAccessorySettingsMessageHandlerRoar_relayReplaceConstraints_constraintIdsToRemove_keyPath_destination_completion___block_invoke_2;
    v36[3] = &unk_278689728;
    objc_copyWeak(&v38, &location);
    v37 = v14;
    [v20 setResponseHandler:v36];
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v24;
      v42 = 2112;
      v43 = v20;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Relaying key path targeted replace constraints message. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [(HMDAccessorySettingsMessageHandler *)v22 messageDispatcher];
    [v25 sendMessage:v20 completionHandler:0];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v29;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Cannot send setting message as device is not known", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
    (*(v14 + 2))(v14, v15);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __119__HMDAccessorySettingsMessageHandlerRoar_relayReplaceConstraints_constraintIdsToRemove_keyPath_destination_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v6 = [WeakRetained workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __119__HMDAccessorySettingsMessageHandlerRoar_relayReplaceConstraints_constraintIdsToRemove_keyPath_destination_completion___block_invoke_3;
    v7[3] = &unk_27868A7A0;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)relayUpdateValue:(id)a3 keyPath:(id)a4 destination:(id)a5 completion:(id)a6
{
  v43[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v33 = a6;
  if (v12)
  {
    v13 = *MEMORY[0x277CD0F88];
    v43[0] = v11;
    v14 = *MEMORY[0x277CCEDA8];
    v42[0] = v13;
    v42[1] = v14;
    v15 = v10;
    if (!v10)
    {
      v15 = [MEMORY[0x277CBEB68] null];
    }

    v16 = encodeRootObject();
    v43[1] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];

    if (!v10)
    {
    }

    v18 = [HMDRemoteDeviceMessageDestination alloc];
    v19 = [(HMDAccessorySettingsMessageHandler *)self messageTargetUUID];
    v20 = [v12 device];
    v21 = [(HMDRemoteDeviceMessageDestination *)v18 initWithTarget:v19 device:v20];

    v22 = [HMDRemoteMessage secureMessageWithName:*MEMORY[0x277CCED98] qualityOfService:25 destination:v21 messagePayload:v17];
    objc_initWeak(&location, self);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __90__HMDAccessorySettingsMessageHandlerRoar_relayUpdateValue_keyPath_destination_completion___block_invoke;
    v34[3] = &unk_278689728;
    objc_copyWeak(&v36, &location);
    v35 = v33;
    [v22 setResponseHandler:v34];
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v26;
      v40 = 2112;
      v41 = v22;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Relaying key path targeted update value message. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [(HMDAccessorySettingsMessageHandler *)v24 messageDispatcher];
    [v27 sendMessage:v22 completionHandler:0];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v31;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Cannot send setting message as device is not known", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
    (*(v33 + 2))(v33, 0, 0, v17);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __90__HMDAccessorySettingsMessageHandlerRoar_relayUpdateValue_keyPath_destination_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v7 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__HMDAccessorySettingsMessageHandlerRoar_relayUpdateValue_keyPath_destination_completion___block_invoke_2;
    block[3] = &unk_278689F98;
    block[4] = v6;
    v9 = v4;
    v10 = *(a1 + 32);
    dispatch_async(v7, block);
  }
}

void __90__HMDAccessorySettingsMessageHandlerRoar_relayUpdateValue_keyPath_destination_completion___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v15 = 0;
  v4 = [v2 _decodeUpdateValueMessagePayload:v3 outValue:&v15];
  v5 = v15;
  if (v4)
  {
    v6 = *(a1 + 48);
    v7 = [*(a1 + 40) hmf_numberForKey:@"cv"];
    (*(v6 + 16))(v6, v5, [v7 unsignedIntegerValue], 0);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      *buf = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode response %@ of relayed key path targeted update value message.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = *(a1 + 48);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (*(v13 + 16))(v13, 0, 0, v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end