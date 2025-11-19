@interface HMDHomeLockNotificationManager
+ (id)logCategory;
- (BOOL)hasReachablePrimaryResidentSupportingLockNotificationContext;
- (BOOL)shouldResolveNotificationContextForCharacteristic:(id)a3;
- (HMDHome)home;
- (HMDHomeLockNotificationManager)initWithUUID:(id)a3 workQueue:(id)a4;
- (HMDHomeLockNotificationManager)initWithUUID:(id)a3 workQueue:(id)a4 dataSource:(id)a5;
- (id)contextResolutionResultFromAccessCode:(id)a3;
- (id)contextResolutionResultFromHAPContextId:(id)a3;
- (id)contextResolutionResultFromNFCContextId:(id)a3;
- (id)displayNameForNotificationContextResolutionResult:(id)a3;
- (id)logIdentifier;
- (void)_resolveKeypadContextIdentifier:(id)a3 accessoryUUID:(id)a4 completion:(id)a5;
- (void)_sendResolveLockNotificationContextIdentifierMessage:(id)a3 accessoryUUID:(id)a4 withCompletion:(id)a5;
- (void)configureWithHome:(id)a3;
- (void)handleDoorLockAlarmEvent:(id)a3 forAccessory:(id)a4 flow:(id)a5;
- (void)handleDoorLockEventReport:(id)a3 forAccessory:(id)a4 flow:(id)a5;
- (void)handleLockOperationEvent:(id)a3 forAccessory:(id)a4 flow:(id)a5;
- (void)handleLockUserChangeEvent:(id)a3 forAccessory:(id)a4 flow:(id)a5;
- (void)handleResolveNotificationContextIdentifierMessage:(id)a3;
- (void)resolveEncodedCharacteristicNotificationContext:(id)a3 accessoryUUID:(id)a4 completion:(id)a5;
- (void)resolveKeypadContextIdentifier:(id)a3 accessoryUUID:(id)a4 withCompletion:(id)a5;
- (void)sendDoorLockAlarmEventNotification:(id)a3 accessory:(id)a4 flow:(id)a5;
- (void)sendLockOperationEventNotification:(id)a3 userUniqueID:(id)a4 lockOperationType:(id)a5 lockOperationSource:(id)a6 fabricIndex:(id)a7 accessory:(id)a8 timestamp:(id)a9 flow:(id)a10;
@end

@implementation HMDHomeLockNotificationManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDHomeLockNotificationManager *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)contextResolutionResultFromNFCContextId:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeLockNotificationManager *)self home];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 users];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __74__HMDHomeLockNotificationManager_contextResolutionResultFromNFCContextId___block_invoke;
    v23[3] = &unk_278688680;
    v8 = v4;
    v24 = v8;
    v9 = [v7 na_firstObjectPassingTest:v23];

    if (v9)
    {
      v10 = [HMDHomeLockNotificationContextResolutionResult alloc];
      v11 = [v9 uuid];
      v12 = [(HMDHomeLockNotificationContextResolutionResult *)v10 initWithUserUUID:v11 label:0 labelIdentifier:0];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v20;
        v27 = 2112;
        v28 = v8;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Did not find any user with NFC contextId: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v12 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Can not create context resolution result because home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __74__HMDHomeLockNotificationManager_contextResolutionResultFromNFCContextId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 notificationContextNFCIdentifier];
  v4 = [v3 isEqualToNumber:*(a1 + 32)];

  return v4;
}

- (id)contextResolutionResultFromHAPContextId:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeLockNotificationManager *)self home];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 users];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __74__HMDHomeLockNotificationManager_contextResolutionResultFromHAPContextId___block_invoke;
    v23[3] = &unk_278688680;
    v8 = v4;
    v24 = v8;
    v9 = [v7 na_firstObjectPassingTest:v23];

    if (v9)
    {
      v10 = [HMDHomeLockNotificationContextResolutionResult alloc];
      v11 = [v9 uuid];
      v12 = [(HMDHomeLockNotificationContextResolutionResult *)v10 initWithUserUUID:v11 label:0 labelIdentifier:0];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v20;
        v27 = 2112;
        v28 = v8;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Did not find any user with HAP contextId: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v12 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Can not create context resolution result because home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __74__HMDHomeLockNotificationManager_contextResolutionResultFromHAPContextId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 notificationContextHAPIdentifier];
  v4 = [v3 isEqualToNumber:*(a1 + 32)];

  return v4;
}

- (id)contextResolutionResultFromAccessCode:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeLockNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDHomeLockNotificationManager *)self home];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 users];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __72__HMDHomeLockNotificationManager_contextResolutionResultFromAccessCode___block_invoke;
    v27[3] = &unk_278688680;
    v9 = v4;
    v28 = v9;
    v10 = [v8 na_firstObjectPassingTest:v27];

    if (v10)
    {
      v11 = [HMDHomeLockNotificationContextResolutionResult alloc];
      v12 = [v10 uuid];
      v13 = [(HMDHomeLockNotificationContextResolutionResult *)v11 initWithUserUUID:v12 label:0 labelIdentifier:0];
    }

    else
    {
      v18 = [v7 labelsByAccessCode];
      v12 = [v18 objectForKeyedSubscript:v9];

      if (v12)
      {
        v19 = [v7 labelIdentifiersByAccessCode];
        v20 = [v19 objectForKeyedSubscript:v9];

        v13 = [[HMDHomeLockNotificationContextResolutionResult alloc] initWithUserUUID:0 label:v12 labelIdentifier:v20];
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543362;
          v30 = v24;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Did not find any user or label with access code", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v21);
        v12 = 0;
        v13 = 0;
      }
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Can not create context resolution result from access code because home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __72__HMDHomeLockNotificationManager_contextResolutionResultFromAccessCode___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessCode];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_resolveKeypadContextIdentifier:(id)a3 accessoryUUID:(id)a4 completion:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDHomeLockNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(HMDHomeLockNotificationManager *)self home];
  v13 = [v12 accessCodeManager];
  if (v13)
  {
    v14 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __91__HMDHomeLockNotificationManager__resolveKeypadContextIdentifier_accessoryUUID_completion___block_invoke;
    v21[3] = &unk_278678988;
    v21[4] = self;
    v22 = v10;
    [v13 fetchAccessCodeForIdentifier:v8 accessoryUUID:v9 flow:v14 completion:v21];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Can not resolve notification context identifier because accessCodeManager is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v10 + 2))(v10, 0, v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __91__HMDHomeLockNotificationManager__resolveKeypadContextIdentifier_accessoryUUID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 contextResolutionResultFromAccessCode:a2];
  (*(*(a1 + 40) + 16))();
}

- (void)_sendResolveLockNotificationContextIdentifierMessage:(id)a3 accessoryUUID:(id)a4 withCompletion:(id)a5
{
  v48[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDHomeLockNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(HMDHomeLockNotificationManager *)self home];
  v13 = [v12 residentDeviceManager];
  v14 = [v13 primaryResidentDevice];

  if (v14)
  {
    v15 = [HMDRemoteDeviceMessageDestination alloc];
    v16 = [(HMDHomeLockNotificationManager *)self messageTargetUUID];
    v17 = [v14 device];
    v18 = [(HMDRemoteDeviceMessageDestination *)v15 initWithTarget:v16 device:v17];

    v48[0] = v8;
    v47[0] = @"HMDHomeResolveLockNotificationContextIdentifierMessageAccessCodeIdentifierKey";
    v47[1] = @"HMDHomeResolveLockNotificationContextIdentifierMessage";
    v35 = v9;
    v19 = [v9 UUIDString];
    v48[1] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];

    v21 = [[HMDRemoteMessage alloc] initWithName:@"HMDHomeResolveLockNotificationContextIdentifierMessage" destination:v18 payload:v20 type:0 timeout:1 secure:0.0];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke;
    v36[3] = &unk_2786862C0;
    v36[4] = self;
    v34 = v10;
    v38 = v10;
    v22 = v8;
    v23 = v8;
    v37 = v23;
    [(HMDRemoteMessage *)v21 setResponseHandler:v36];
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138544130;
      v40 = v27;
      v41 = 2112;
      v42 = v21;
      v43 = 2112;
      v44 = v14;
      v45 = 2112;
      v46 = v23;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Sending message: %@ to primary resident: %@ to resolve notification context identifier: %@ ", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [(HMDHomeLockNotificationManager *)v25 msgDispatcher];
    [v28 sendMessage:v21];

    v8 = v22;
    v10 = v34;
    v9 = v35;
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v32;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Did not find primary resident to send message to resolve notification context identifier", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v10 + 2))(v10, 0, v18);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_dataForKey:@"HMDHomeLockNotificationContextResolutionResultKey"];
  if (v7)
  {
    v36 = 0;
    v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v36];
    v9 = v36;
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v8)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v15 = v14 = v5;
        v16 = *(a1 + 40);
        *buf = 138544130;
        v40 = v15;
        v41 = 2112;
        v42 = v8;
        v43 = 2112;
        v44 = v16;
        v45 = 2112;
        v46 = v14;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Received notification context resolution result: %@ from resident for access code identifier: %@ with error: %@", buf, 0x2Au);

        v5 = v14;
      }

      objc_autoreleasePoolPop(v10);
      v17 = [*(a1 + 32) workQueue];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke_36;
      v30[3] = &unk_27868A7A0;
      v32 = *(a1 + 48);
      v31 = v8;
      dispatch_async(v17, v30);

      v18 = v32;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v25 = v24 = v5;
        *buf = 138543874;
        v40 = v25;
        v41 = 2112;
        v42 = v7;
        v43 = 2112;
        v44 = v9;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode notification context result from data: %@ decodingError: %@", buf, 0x20u);

        v5 = v24;
      }

      objc_autoreleasePoolPop(v10);
      if (v9)
      {
        v47 = *MEMORY[0x277CCA7E8];
        v48[0] = v9;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      }

      else
      {
        v26 = 0;
      }

      v27 = [*(a1 + 32) workQueue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke_35;
      v33[3] = &unk_27868A7A0;
      v28 = *(a1 + 48);
      v34 = v26;
      v35 = v28;
      v18 = v26;
      dispatch_async(v27, v33);
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v22;
      v41 = 2112;
      v42 = v6;
      v43 = 2112;
      v44 = v5;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Missing notification context result key in response payload: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke_32;
    block[3] = &unk_278688B80;
    v38 = *(a1 + 48);
    dispatch_async(v23, block);

    v9 = v38;
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke_32(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

void __116__HMDHomeLockNotificationManager__sendResolveLockNotificationContextIdentifierMessage_accessoryUUID_withCompletion___block_invoke_35(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 userInfo:*(a1 + 32)];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)resolveKeypadContextIdentifier:(id)a3 accessoryUUID:(id)a4 withCompletion:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(HMDHomeLockNotificationManager *)self hasReachablePrimaryResidentSupportingLockNotificationContext])
  {
    v11 = [(HMDHomeLockNotificationManager *)self workQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __94__HMDHomeLockNotificationManager_resolveKeypadContextIdentifier_accessoryUUID_withCompletion___block_invoke;
    v18[3] = &unk_278689AB8;
    v18[4] = self;
    v21 = v10;
    v19 = v8;
    v20 = v9;
    dispatch_async(v11, v18);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Can not resolve keypad contextId because primary resident supporting lock notification context is not present", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(v10 + 2))(v10, 0, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __94__HMDHomeLockNotificationManager_resolveKeypadContextIdentifier_accessoryUUID_withCompletion___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isOwnerUser];
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v8)
      {
        v9 = HMFGetLogIdentifier();
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);
        *buf = 138543874;
        v33 = v9;
        v34 = 2112;
        v35 = v10;
        v36 = 2112;
        v37 = v11;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Resolving keypad context identifier locally for access code identifier: %@ accessoryUUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v5);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __94__HMDHomeLockNotificationManager_resolveKeypadContextIdentifier_accessoryUUID_withCompletion___block_invoke_27;
      v30[3] = &unk_278678960;
      v14 = *(a1 + 48);
      v31 = *(a1 + 56);
      [v12 _resolveKeypadContextIdentifier:v13 accessoryUUID:v14 completion:v30];
      v15 = v31;
    }

    else
    {
      if (v8)
      {
        v21 = HMFGetLogIdentifier();
        v22 = *(a1 + 40);
        v23 = *(a1 + 48);
        *buf = 138543874;
        v33 = v21;
        v34 = 2112;
        v35 = v22;
        v36 = 2112;
        v37 = v23;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Resolving keypad context identifier via resident for access code identifier: %@ accessoryUUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v5);
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __94__HMDHomeLockNotificationManager_resolveKeypadContextIdentifier_accessoryUUID_withCompletion___block_invoke_28;
      v28[3] = &unk_278678960;
      v26 = *(a1 + 48);
      v29 = *(a1 + 56);
      [v24 _sendResolveLockNotificationContextIdentifierMessage:v25 accessoryUUID:v26 withCompletion:v28];
      v15 = v29;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Can not resolve keypad contextId because home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = *(a1 + 56);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    (*(v20 + 16))(v20, 0, v15);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)displayNameForNotificationContextResolutionResult:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeLockNotificationManager *)self home];
  if (!v5)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v13;
      v14 = "%{public}@Can not find display name because home is nil";
LABEL_10:
      v15 = v12;
      v16 = 12;
LABEL_11:
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, v14, buf, v16);
    }

LABEL_12:

    objc_autoreleasePoolPop(v10);
    v9 = 0;
    goto LABEL_13;
  }

  if (![(HMDHomeLockNotificationManager *)self hasReachablePrimaryResidentSupportingLockNotificationContext])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v13;
      v14 = "%{public}@Can not find display name because primary resident supporting lock notification context is not present";
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v6 = [v4 userUUID];

  if (v6)
  {
    v7 = [v5 users];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __84__HMDHomeLockNotificationManager_displayNameForNotificationContextResolutionResult___block_invoke;
    v20[3] = &unk_278688680;
    v21 = v4;
    v8 = [v7 na_firstObjectPassingTest:v20];

    if (v8)
    {
      v9 = [v8 displayName];

      goto LABEL_13;
    }

    goto LABEL_19;
  }

  v19 = [v4 label];

  if (!v19)
  {
LABEL_19:
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v13;
    v24 = 2112;
    v25 = v4;
    v14 = "%{public}@Did not find display name for notification context result: %@";
    v15 = v12;
    v16 = 22;
    goto LABEL_11;
  }

  v9 = [v4 label];
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __84__HMDHomeLockNotificationManager_displayNameForNotificationContextResolutionResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) userUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)resolveEncodedCharacteristicNotificationContext:(id)a3 accessoryUUID:(id)a4 completion:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v33 = 0;
  v11 = [MEMORY[0x277CFEA88] parsedFromData:v8 error:&v33];
  v12 = v33;
  if (v11)
  {
    v13 = [v11 contextIdentifier];
    v14 = [v13 value];

    if (v14)
    {
      v15 = [v11 source];
      v16 = [v15 value];

      switch(v16)
      {
        case 1:
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __107__HMDHomeLockNotificationManager_resolveEncodedCharacteristicNotificationContext_accessoryUUID_completion___block_invoke;
          v31[3] = &unk_278678960;
          v32 = v10;
          [(HMDHomeLockNotificationManager *)self resolveKeypadContextIdentifier:v14 accessoryUUID:v9 withCompletion:v31];
          v26 = v32;
          goto LABEL_20;
        case 2:
          v17 = [(HMDHomeLockNotificationManager *)self contextResolutionResultFromNFCContextId:v14];
          goto LABEL_14;
        case 3:
          v17 = [(HMDHomeLockNotificationManager *)self contextResolutionResultFromHAPContextId:v14];
LABEL_14:
          v26 = v17;
          (*(v10 + 2))(v10, v17, 0);
LABEL_20:

          goto LABEL_21;
      }

      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v28 = v30 = v22;
        *buf = 138543618;
        v35 = v28;
        v36 = 2048;
        v37 = v16;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Invalid source %ld present in notification context", buf, 0x16u);

        v22 = v30;
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v35 = v25;
        v36 = 2112;
        v37 = v8;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to decode notification context identifier from data:%@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (*(v10 + 2))(v10, 0, v26);
    goto LABEL_20;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543874;
    v35 = v21;
    v36 = 2112;
    v37 = v8;
    v38 = 2112;
    v39 = v12;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse notification context TLV from context:%@ error:%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  (*(v10 + 2))(v10, 0, v14);
LABEL_21:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleResolveNotificationContextIdentifierMessage:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeLockNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v9;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling message: %@ to resolve notification context identifier", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v4 numberForKey:@"HMDHomeResolveLockNotificationContextIdentifierMessageAccessCodeIdentifierKey"];
  v11 = [v4 uuidForKey:@"HMDHomeResolveLockNotificationContextIdentifierMessage"];
  v12 = v11;
  if (v10 && v11)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__HMDHomeLockNotificationManager_handleResolveNotificationContextIdentifierMessage___block_invoke;
    v19[3] = &unk_278678938;
    v19[4] = v7;
    v20 = v10;
    v21 = v4;
    [(HMDHomeLockNotificationManager *)v7 _resolveKeypadContextIdentifier:v20 accessoryUUID:v12 completion:v19];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v7;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v16;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Received invalid parameters in message to resolve lock notification context for identifier: %@ accessoryUUID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 userInfo:0];
    [v4 respondWithError:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __84__HMDHomeLockNotificationManager_handleResolveNotificationContextIdentifierMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    *buf = 138544130;
    v35 = v10;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v5;
    v40 = 2112;
    v41 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Resolved notification context identifier: %@ to result: %@ with error: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v29 = 0;
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v29];
    v13 = v29;
    v14 = v13;
    if (v12)
    {
      v30 = @"HMDHomeLockNotificationContextResolutionResultKey";
      v31 = v12;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      [*(a1 + 48) respondWithPayload:v15];
    }

    else
    {
      if (v13)
      {
        v32 = *MEMORY[0x277CCA7E8];
        v33 = v13;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      }

      else
      {
        v15 = 0;
      }

      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 userInfo:v15];
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v25 = v28 = v22;
        v26 = *(a1 + 48);
        *buf = 138543874;
        v35 = v25;
        v36 = 2112;
        v37 = v26;
        v38 = 2112;
        v39 = v21;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Responding to resolve notification context identifier message: %@ with: %@", buf, 0x20u);

        v22 = v28;
      }

      objc_autoreleasePoolPop(v22);
      [*(a1 + 48) respondWithError:v21];
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 userInfo:0];
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = *(a1 + 48);
      *buf = 138543874;
      v35 = v19;
      v36 = 2112;
      v37 = v20;
      v38 = 2112;
      v39 = v14;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Responding to resolve notification context identifier message: %@ with: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    [*(a1 + 48) respondWithError:v14];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldResolveNotificationContextForCharacteristic:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCF838]];

  if (v5 && ([v3 value], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "integerValue"), v6, v7 <= 1) && objc_msgSend(v3, "supportsNotificationContext"))
  {
    v8 = [v3 notificationContext];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasReachablePrimaryResidentSupportingLockNotificationContext
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeLockNotificationManager *)self home];
  v4 = [v3 residentDeviceManager];
  v5 = [v4 primaryResidentDevice];

  if (v5)
  {
    v6 = [v5 capabilities];
    if ([v6 supportsLockNotificationContext])
    {
      v7 = [v5 isReachable];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Primary resident is not available", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)configureWithHome:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v8;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring with home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHomeLockNotificationManager *)v6 setHome:v4];
  v9 = [v4 msgDispatcher];
  [(HMDHomeLockNotificationManager *)v6 setMsgDispatcher:v9];

  v10 = [(HMDHomeLockNotificationManager *)v6 dataSource];
  v11 = [v10 isResidentCapable];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v6;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Registering for lock notifications messages", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v16 setRoles:{objc_msgSend(v16, "roles") | 4}];
    v17 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:5 remoteAccessRequired:0];
    v18 = [(HMDHomeLockNotificationManager *)v13 msgDispatcher];
    v21[0] = v17;
    v21[1] = v16;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    [v18 registerForMessage:@"HMDHomeResolveLockNotificationContextIdentifierMessage" receiver:v13 policies:v19 selector:sel_handleResolveNotificationContextIdentifierMessage_];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (HMDHomeLockNotificationManager)initWithUUID:(id)a3 workQueue:(id)a4 dataSource:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = HMDHomeLockNotificationManager;
  v11 = [(HMDHomeLockNotificationManager *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    uuid = v11->_uuid;
    v11->_uuid = v12;

    objc_storeStrong(&v11->_workQueue, a4);
    objc_storeStrong(&v11->_dataSource, a5);
  }

  return v11;
}

- (HMDHomeLockNotificationManager)initWithUUID:(id)a3 workQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HMDHomeLockNotificationManagerDataSource);
  v9 = [(HMDHomeLockNotificationManager *)self initWithUUID:v7 workQueue:v6 dataSource:v8];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t30 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t30, &__block_literal_global_116982);
  }

  v3 = logCategory__hmf_once_v31;

  return v3;
}

void __45__HMDHomeLockNotificationManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v31;
  logCategory__hmf_once_v31 = v1;
}

uint64_t __134__HMDHomeLockNotificationManager_CHIP__sendLockUserChangeEventNotification_lockDataType_accessory_dataOperationType_fabricIndex_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIDForAccessories];
  v4 = [v3 isEqualToNumber:*(a1 + 32)];

  return v4;
}

void __134__HMDHomeLockNotificationManager_CHIP__sendLockUserChangeEventNotification_lockDataType_accessory_dataOperationType_fabricIndex_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isAccessCurrentlyAllowedBySchedule])
  {
    v4 = [*(a1 + 48) mutableCopy];
    if (*(a1 + 72) || [v3 isAdministrator])
    {
      v5 = *(a1 + 56);
      if (!v5)
      {
        goto LABEL_10;
      }

      v6 = [v5 account];
      v7 = [v6 identifier];
      v8 = [v7 identifier];
      v9 = [v3 account];
      v10 = [v9 identifier];
      v11 = [v10 identifier];
      v12 = [v8 hmf_isEqualToUUID:v11];

      if (v12)
      {
        [v4 setObject:&unk_283E73760 forKeyedSubscript:@"HMDCharacteristicEventReportMessageKeyIsAffectedUser"];
      }

      else
      {
LABEL_10:
        if (*(a1 + 72) == 1)
        {
          v18 = objc_autoreleasePoolPush();
          v19 = *(a1 + 32);
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            v22 = [*(a1 + 40) UUID];
            *buf = 138543618;
            v49 = v21;
            v50 = 2112;
            v51 = v22;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not inserting lock user change bulletin because dataOperationType is of type MTRDoorLockDataOperationTypeClear and user is not the affected user.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v18);
          goto LABEL_22;
        }
      }

      v23 = [v3 accountHandle];
      if (v23)
      {
        v24 = [HMDRemoteAccountMessageDestination alloc];
        v25 = [*(a1 + 64) messageTargetUUID];
        v26 = [(HMDRemoteAccountMessageDestination *)v24 initWithTarget:v25 handle:v23 multicast:1];

        v47 = v4;
        v27 = [objc_alloc(MEMORY[0x277D0F818]) initWithName:@"HMDCharacteristicEventReportMessage" destination:v26 payload:v4];
        v28 = objc_autoreleasePoolPush();
        v29 = *(a1 + 32);
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = HMFGetLogIdentifier();
          [*(a1 + 40) UUID];
          v32 = v44 = v23;
          v33 = [*(a1 + 64) messageTargetUUID];
          [v3 account];
          v34 = v46 = v26;
          [v34 identifier];
          v35 = v45 = v28;
          *buf = 138544386;
          v49 = v31;
          v50 = 2112;
          v51 = v32;
          v52 = 2112;
          v53 = v33;
          v54 = 2112;
          v55 = v35;
          v56 = 2112;
          v57 = v47;
          _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Sending HMDCharacteristicEventReportMessage to target=%@ for account=%@ with payload=%@", buf, 0x34u);

          v28 = v45;
          v26 = v46;

          v23 = v44;
        }

        objc_autoreleasePoolPop(v28);
        v36 = [*(a1 + 64) msgDispatcher];
        [v36 sendMessage:v27];

        v4 = v47;
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v38 = *(a1 + 32);
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = HMFGetLogIdentifier();
          v41 = [*(a1 + 40) UUID];
          v42 = [v3 shortDescription];
          *buf = 138543874;
          v49 = v40;
          v50 = 2112;
          v51 = v41;
          v52 = 2112;
          v53 = v42;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Cannot send lock user change event notification because no account handle was found for user: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v37);
      }
    }

LABEL_22:

    goto LABEL_23;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [*(a1 + 40) UUID];
    *buf = 138543618;
    v49 = v16;
    v50 = 2112;
    v51 = v17;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Cannot send the notification as the user is outside schedule", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
LABEL_23:

  v43 = *MEMORY[0x277D85DE8];
}

- (void)sendDoorLockAlarmEventNotification:(id)a3 accessory:(id)a4 flow:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 home];
  if (v11)
  {
    v12 = [MEMORY[0x277CBEB38] dictionary];
    [v12 setObject:v8 forKeyedSubscript:@"HMDCharacteristicEventReportMessageKeyAlarmCode"];
    v13 = HMFEncodedRootObject();
    [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x277D0F1C8]];

    v14 = [v9 findCharacteristicType:*MEMORY[0x277CCF838] forServiceType:*MEMORY[0x277CD0EB0]];
    if (v14)
    {
      v15 = [v11 accessoryBulletinNotificationManager];
      v43 = v14;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
      [v15 characteristicsByDestinationForCharacteristics:v16];
      v35 = self;
      v17 = v11;
      v18 = v14;
      v19 = v10;
      v21 = v20 = v8;
      v22 = [v21 allKeys];

      v8 = v20;
      v10 = v19;
      v14 = v18;
      v11 = v17;

      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __90__HMDHomeLockNotificationManager_CHIP__sendDoorLockAlarmEventNotification_accessory_flow___block_invoke;
      v37[3] = &unk_27867C4A0;
      v38 = v9;
      v39 = v12;
      v40 = v17;
      v41 = v35;
      v42 = v10;
      [v22 na_each:v37];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        [v10 UUID];
        v31 = v36 = v28;
        [v9 uuid];
        *buf = 138543874;
        v45 = v34;
        v46 = 2112;
        v47 = v31;
        v49 = v48 = 2112;
        v32 = v49;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] There is no HMCharacteristicTypeCurrentLockMechanismState characteristic on this accessory %@", buf, 0x20u);

        v28 = v36;
      }

      objc_autoreleasePoolPop(v28);
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v10 UUID];
      *buf = 138543618;
      v45 = v26;
      v46 = 2112;
      v47 = v27;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Error sending message for Matter Accessory Bulletin Notification, home is nil.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __90__HMDHomeLockNotificationManager_CHIP__sendDoorLockAlarmEventNotification_accessory_flow___block_invoke(id *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMDDeviceHandle deviceHandleForDestination:v3];
  v5 = +[HMDAccountRegistry sharedRegistry];
  v6 = [v5 deviceForHandle:v4];

  v7 = [HMDRemoteDeviceMessageDestination alloc];
  v8 = [a1[4] messageTargetUUID];
  v9 = [(HMDRemoteDeviceMessageDestination *)v7 initWithTarget:v8 device:v6];

  v10 = [HMDRemoteMessage alloc];
  v11 = [a1[5] copy];
  v12 = [(HMDRemoteMessage *)v10 initWithName:@"HMDCharacteristicEventReportMessage" destination:v9 payload:v11];

  v13 = [a1[6] primaryResident];
  v14 = [v13 device];
  v15 = [v14 isEqual:v6];

  v16 = objc_autoreleasePoolPush();
  v17 = a1[7];
  v18 = HMFGetOSLogHandle();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
  if (v15)
  {
    if (v19)
    {
      v20 = HMFGetLogIdentifier();
      [a1[8] UUID];
      v21 = v32 = v4;
      v22 = a1[5];
      *buf = 138543874;
      v35 = v20;
      v36 = 2112;
      v37 = v21;
      v38 = 2112;
      v39 = v22;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Calling handleCharacteristicEventReportMessage (Showing notification on THIS Apple TV) with payload=%@", buf, 0x20u);

      v4 = v32;
    }

    objc_autoreleasePoolPop(v16);
    [a1[4] handleCharacteristicEventReportMessage:v12];
  }

  else
  {
    v33 = v4;
    if (v19)
    {
      v23 = HMFGetLogIdentifier();
      [a1[8] UUID];
      v24 = v30 = v16;
      v25 = [a1[4] messageTargetUUID];
      [v6 identifier];
      v26 = v31 = v3;
      v27 = a1[5];
      *buf = 138544386;
      v35 = v23;
      v36 = 2112;
      v37 = v24;
      v38 = 2112;
      v39 = v25;
      v40 = 2112;
      v41 = v26;
      v42 = 2112;
      v43 = v27;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Sending HMDCharacteristicEventReportMessage to target=%@ for device=%@ with payload=%@", buf, 0x34u);

      v3 = v31;
      v16 = v30;
    }

    objc_autoreleasePoolPop(v16);
    v28 = [a1[4] msgDispatcher];
    [v28 sendMessage:v12];

    v4 = v33;
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)sendLockOperationEventNotification:(id)a3 userUniqueID:(id)a4 lockOperationType:(id)a5 lockOperationSource:(id)a6 fabricIndex:(id)a7 accessory:(id)a8 timestamp:(id)a9 flow:(id)a10
{
  v126 = *MEMORY[0x277D85DE8];
  v98 = a3;
  v93 = a4;
  v96 = a5;
  v97 = a6;
  v16 = a7;
  v17 = a8;
  v94 = a9;
  v18 = a10;
  v95 = v17;
  v19 = [v17 home];
  if (v19)
  {
    v20 = [MEMORY[0x277CBEB38] dictionary];
    [v20 setObject:v96 forKeyedSubscript:@"HMDCharacteristicEventReportMessageKeyOperationType"];
    v21 = HMFEncodedRootObject();
    v92 = v20;
    [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x277D0F1C8]];

    v22 = self;
    if ([v97 isEqualToNumber:&unk_283E73748])
    {
      if (v16)
      {
        v23 = [objc_opt_class() findEcosystemName:v16];
        [v20 setObject:v23 forKeyedSubscript:@"HMDCharacteristicEventReportMessageKeyEcosystemName"];
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          [v18 UUID];
          v37 = v36 = v19;
          *buf = 138543874;
          v111 = v35;
          v112 = 2112;
          v113 = v37;
          v114 = 2112;
          v115 = v97;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Lock Operation Source = %@, which is Remote, and fabric index is null. This is an error (most likely with the lock firmware). The fabric index should never be null when the operation source is Remote, according to the Matter spec.", buf, 0x20u);

          v19 = v36;
        }

        objc_autoreleasePoolPop(v32);
        v16 = 0;
      }
    }

    v91 = v16;
    if (v98)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v42 = v41 = v18;
        [v41 UUID];
        v89 = v22;
        v44 = v43 = v19;
        v45 = [v98 uuid];
        *buf = 138543874;
        v111 = v42;
        v112 = 2112;
        v113 = v44;
        v114 = 2112;
        v115 = v45;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Matched user uuid=%@", buf, 0x20u);

        v19 = v43;
        v22 = v89;

        v18 = v41;
      }
    }

    else
    {
      if (v93)
      {
        v47 = [v19 accessCodeForMatterUserWithUserUniqueID:?];
        if ([v47 length])
        {
          v48 = [v19 labelsByAccessCode];
          v49 = [v48 objectForKeyedSubscript:v47];

          v50 = [v19 labelIdentifiersByAccessCode];
          v46 = [v50 objectForKeyedSubscript:v47];

          v51 = objc_autoreleasePoolPush();
          v52 = v22;
          v53 = HMFGetOSLogHandle();
          v90 = v49;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            v54 = HMFGetLogIdentifier();
            [v18 UUID];
            v55 = v87 = v51;
            *buf = 138545155;
            v111 = v54;
            v112 = 2112;
            v113 = v55;
            v114 = 2160;
            v115 = 1752392040;
            v116 = 2112;
            v117 = v93;
            v118 = 2113;
            v119 = v47;
            v120 = 2113;
            v121 = v49;
            v122 = 2160;
            v123 = 1752392040;
            v124 = 2112;
            v125 = v46;
            _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Matched userUniqueID %{mask.hash}@ to guest access code %{private}@ ('%{private}@', %{mask.hash}@)", buf, 0x52u);

            v51 = v87;
          }
        }

        else
        {
          v51 = objc_autoreleasePoolPush();
          v60 = self;
          v53 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v62 = v61 = v51;
            v63 = [v18 UUID];
            *buf = 138544130;
            v111 = v62;
            v112 = 2112;
            v113 = v63;
            v114 = 2160;
            v115 = 1752392040;
            v116 = 2112;
            v117 = v93;
            _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not match userUniqueID %{mask.hash}@ to any user", buf, 0x2Au);

            v51 = v61;
          }

          v46 = 0;
          v90 = 0;
        }

        objc_autoreleasePoolPop(v51);
        goto LABEL_25;
      }

      v38 = objc_autoreleasePoolPush();
      v39 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v56 = HMFGetLogIdentifier();
        [v18 UUID];
        v57 = v19;
        v59 = v58 = v18;
        *buf = 138543618;
        v111 = v56;
        v112 = 2112;
        v113 = v59;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No user or userUniqueID to match to.", buf, 0x16u);

        v18 = v58;
        v19 = v57;
        v22 = self;
      }
    }

    objc_autoreleasePoolPop(v38);
    v46 = 0;
    v90 = 0;
LABEL_25:
    v64 = MEMORY[0x277CBEB38];
    v108[0] = @"HMDAccessoryMatterLockOperationTypeNotificationKey";
    v108[1] = @"HMDAccessoryMatterLockOperationSourceNotificationKey";
    v109[0] = v96;
    v109[1] = v97;
    v108[2] = @"HMDAccessoryMatterLockOperationDateNotificationKey";
    v109[2] = v94;
    v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:{3, v87}];
    v66 = [v64 dictionaryWithDictionary:v65];

    if (v98)
    {
      v67 = [v98 uuid];
      [v66 setObject:v67 forKeyedSubscript:@"HMDAccessoryMatterLockUserUUIDNotificationKey"];
    }

    else if (v46)
    {
      [v66 setObject:v46 forKeyedSubscript:@"HMDAccessoryMatterLockLabelIdentifierNotificationKey"];
    }

    v68 = [v66 copy];
    logAndPostNotification(@"HMDAccessoryMatterLockStateChangedNotification", v95, v68);

    v69 = [v95 findCharacteristicType:*MEMORY[0x277CCF838] forServiceType:*MEMORY[0x277CD0EB0]];
    if (v69)
    {
      v70 = [v19 accessoryBulletinNotificationManager];
      v107 = v69;
      v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:1];
      [v70 characteristicsByDestinationForCharacteristics:v71];
      v72 = v46;
      v73 = v22;
      v74 = v19;
      v76 = v75 = v18;
      v77 = [v76 allKeys];

      v18 = v75;
      v19 = v74;

      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = __163__HMDHomeLockNotificationManager_CHIP__sendLockOperationEventNotification_userUniqueID_lockOperationType_lockOperationSource_fabricIndex_accessory_timestamp_flow___block_invoke;
      v99[3] = &unk_27867C478;
      v100 = v98;
      v78 = v92;
      v101 = v92;
      v102 = v74;
      v79 = v90;
      v103 = v90;
      v104 = v95;
      v105 = v73;
      v46 = v72;
      v106 = v18;
      [v77 na_each:v99];

      v31 = v93;
      v24 = v91;
    }

    else
    {
      v88 = v19;
      v80 = objc_autoreleasePoolPush();
      v81 = v22;
      v82 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        v83 = HMFGetLogIdentifier();
        v84 = [v18 UUID];
        v85 = [v95 uuid];
        *buf = 138543874;
        v111 = v83;
        v112 = 2112;
        v113 = v84;
        v114 = 2112;
        v115 = v85;
        _os_log_impl(&dword_229538000, v82, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] There is no HMCharacteristicTypeCurrentLockMechanismState characteristic on this accessory %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v80);
      v78 = v92;
      v31 = v93;
      v79 = v90;
      v24 = v91;
      v19 = v88;
    }

    goto LABEL_35;
  }

  v24 = v16;
  v25 = objc_autoreleasePoolPush();
  v26 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier();
    [v18 UUID];
    v30 = v29 = v18;
    *buf = 138543618;
    v111 = v28;
    v112 = 2112;
    v113 = v30;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Error sending message for Matter Accessory Bulletin Notification, home is nil.", buf, 0x16u);

    v18 = v29;
    v19 = 0;
  }

  objc_autoreleasePoolPop(v25);
  v31 = v93;
LABEL_35:

  v86 = *MEMORY[0x277D85DE8];
}

void __163__HMDHomeLockNotificationManager_CHIP__sendLockOperationEventNotification_userUniqueID_lockOperationType_lockOperationSource_fabricIndex_accessory_timestamp_flow___block_invoke(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMDDeviceHandle deviceHandleForDestination:v3];
  v5 = +[HMDAccountRegistry sharedRegistry];
  v50 = v4;
  v6 = [v5 deviceForHandle:v4];

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = [v7 account];
    v9 = [v8 identifier];
    v10 = [v9 identifier];
    v11 = [v6 account];
    v12 = [v11 identifier];
    v13 = [v12 identifier];
    if ([v10 hmf_isEqualToUUID:v13])
    {
      [v6 productInfo];
      v15 = v14 = v6;
      v46 = [v15 productClass];

      v6 = v14;
      if (v46 != 4)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }
  }

  v16 = [*(a1 + 40) mutableCopy];
  v17 = [*(a1 + 48) users];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __163__HMDHomeLockNotificationManager_CHIP__sendLockOperationEventNotification_userUniqueID_lockOperationType_lockOperationSource_fabricIndex_accessory_timestamp_flow___block_invoke_2;
  v51[3] = &unk_278688680;
  v18 = v6;
  v52 = v18;
  v19 = [v17 na_firstObjectPassingTest:v51];

  v20 = *(a1 + 32);
  v48 = v6;
  v49 = v3;
  if (v20 && (([v20 isOwner] & 1) != 0 || objc_msgSend(v19, "isAdministrator")))
  {
    v21 = [*(a1 + 32) uuid];
    v22 = [v21 UUIDString];
    [v16 setObject:v22 forKeyedSubscript:@"HMDCharacteristicEventReportMessageKeyUserUUID"];
  }

  else if (*(a1 + 56) && [v19 isAdministrator])
  {
    [v16 setObject:*(a1 + 56) forKeyedSubscript:@"HMDCharacteristicEventReportMessageKeyGuestName"];
  }

  v23 = [HMDRemoteDeviceMessageDestination alloc];
  v24 = [*(a1 + 64) messageTargetUUID];
  v25 = [(HMDRemoteDeviceMessageDestination *)v23 initWithTarget:v24 device:v18];

  v26 = [HMDRemoteMessage alloc];
  v27 = [v16 copy];
  v28 = [(HMDRemoteMessage *)v26 initWithName:@"HMDCharacteristicEventReportMessage" destination:v25 payload:v27];

  v29 = [*(a1 + 48) primaryResident];
  v30 = [v29 device];
  v31 = [v30 isEqual:v18];

  v32 = objc_autoreleasePoolPush();
  v33 = *(a1 + 72);
  v34 = HMFGetOSLogHandle();
  v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
  if (v31)
  {
    if (v35)
    {
      v36 = HMFGetLogIdentifier();
      [*(a1 + 80) UUID];
      v38 = v37 = v19;
      *buf = 138543874;
      v54 = v36;
      v55 = 2112;
      v56 = v38;
      v57 = 2112;
      v58 = v16;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Calling handleCharacteristicEventReportMessage (Showing notification on THIS Apple TV) with payload=%@", buf, 0x20u);

      v19 = v37;
    }

    objc_autoreleasePoolPop(v32);
    [*(a1 + 64) handleCharacteristicEventReportMessage:v28];
  }

  else
  {
    if (v35)
    {
      HMFGetLogIdentifier();
      v39 = v47 = v16;
      v40 = [*(a1 + 80) UUID];
      [*(a1 + 64) messageTargetUUID];
      v41 = v45 = v19;
      v42 = [v18 identifier];
      *buf = 138544386;
      v54 = v39;
      v55 = 2112;
      v56 = v40;
      v57 = 2112;
      v58 = v41;
      v59 = 2112;
      v60 = v42;
      v61 = 2112;
      v62 = v47;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Sending HMDCharacteristicEventReportMessage to target=%@ for device=%@ with payload=%@", buf, 0x34u);

      v19 = v45;
      v16 = v47;
    }

    objc_autoreleasePoolPop(v32);
    v43 = [*(a1 + 64) msgDispatcher];
    [v43 sendMessage:v28];
  }

  v6 = v48;
  v3 = v49;
LABEL_21:

  v44 = *MEMORY[0x277D85DE8];
}

uint64_t __163__HMDHomeLockNotificationManager_CHIP__sendLockOperationEventNotification_userUniqueID_lockOperationType_lockOperationSource_fabricIndex_accessory_timestamp_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  v4 = [v3 identifier];
  v5 = [v4 identifier];
  v6 = [*(a1 + 32) account];
  v7 = [v6 identifier];
  v8 = [v7 identifier];
  v9 = [v5 hmf_isEqualToUUID:v8];

  return v9;
}

- (void)handleLockUserChangeEvent:(id)a3 forAccessory:(id)a4 flow:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = [v13 dataOperationType];
    v15 = [v14 integerValue];

    if (v15 != 2)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v23 = [v13 lockDataType];
      v24 = [v23 integerValue];

      v44 = v24;
      v25 = [v13 dataOperationType];
      LOBYTE(v23) = [v25 integerValue];

      v26 = [v13 dataIndex];
      v27 = [v26 isEqualToNumber:&unk_283E73730];

      v28 = objc_alloc(MEMORY[0x277D0F7A8]);
      v29 = [(HMDHomeLockNotificationManager *)self workQueue];
      v30 = [v28 initWithQueue:v29];

      v31 = [v9 chipAccessoryServer];
      v32 = [v31 createDoorLockClusterObjectWithFlow:v10];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __84__HMDHomeLockNotificationManager_CHIP__handleLockUserChangeEvent_forAccessory_flow___block_invoke;
      v35[3] = &unk_27867C450;
      v36 = v13;
      v37 = self;
      v38 = v10;
      v40 = buf;
      v41 = v27;
      v39 = v9;
      v42 = v23;
      v33 = [v32 inContext:v30 then:v35 orRecover:&__block_literal_global_163604];

      _Block_object_dispose(buf, 8);
      goto LABEL_13;
    }

    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v10 UUID];
      *buf = 138543618;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not inserting lock user change bulletin because dataOperationType is not of type MTRDoorLockDataOperationTypeClear or MTRDoorLockDataOperationTypeAdd (we are not clearing or adding the credential, we are modifying it).", buf, 0x16u);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v10 UUID];
      *buf = 138543618;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = v22;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot insert lock user change bulletin because eventReport.value is not a MTRDoorLockClusterLockUserChangeEvent.", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v16);
LABEL_13:

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __84__HMDHomeLockNotificationManager_CHIP__handleLockUserChangeEvent_forAccessory_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fetchCurrentFabricIndex];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __84__HMDHomeLockNotificationManager_CHIP__handleLockUserChangeEvent_forAccessory_flow___block_invoke_2;
  v25[3] = &unk_27867C400;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v26 = v5;
  v27 = v6;
  v8 = v7;
  v9 = *(a1 + 64);
  v28 = v8;
  v30 = v9;
  v31 = *(a1 + 72);
  v10 = v3;
  v29 = v10;
  v11 = [v4 then:v25];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__HMDHomeLockNotificationManager_CHIP__handleLockUserChangeEvent_forAccessory_flow___block_invoke_99;
  v20[3] = &unk_27867C428;
  v23 = *(a1 + 64);
  v19 = *(a1 + 40);
  v12 = *(&v19 + 1);
  v13 = *(a1 + 56);
  v14 = *(a1 + 32);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  v21 = v19;
  v22 = v15;
  v24 = *(a1 + 72);
  v16 = [v11 then:v20];
  if (v16)
  {
    v17 = v16;

    return 3;
  }

  else
  {
    _HMFPreconditionFailure();
    return __84__HMDHomeLockNotificationManager_CHIP__handleLockUserChangeEvent_forAccessory_flow___block_invoke_100();
  }
}

uint64_t __84__HMDHomeLockNotificationManager_CHIP__handleLockUserChangeEvent_forAccessory_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) fabricIndex];
  v5 = [v4 isEqualToNumber:v3];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 48) UUID];
      v28 = 138543618;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      v11 = "%{public}@[Flow: %@] Not inserting lock user change bulletin because the user change was originated by our fabric.";
LABEL_15:
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, v11, &v28, 0x16u);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v12 = *(*(*(a1 + 64) + 8) + 24);
  v13 = v12 > 7;
  v14 = (1 << v12) & 0xC1;
  if (v13 || v14 == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 48) UUID];
      v28 = 138543618;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      v11 = "%{public}@[Flow: %@] Not inserting lock user change bulletin because lockDataType is not of type MTRDoorLockLockDataTypePIN or MTRDoorLockLockDataTypeRFID (this event is for something other than the pin code or TTU credential).";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (*(a1 + 72) == 1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 48) UUID];
      v28 = 138543618;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      v11 = "%{public}@[Flow: %@] Not inserting lock user change bulletin because allSlotsCleared.";
      goto LABEL_15;
    }

LABEL_16:

    objc_autoreleasePoolPop(v6);
    v23 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v22 = 2;
    goto LABEL_20;
  }

  v16 = *(a1 + 56);
  v17 = [*(a1 + 32) userIndex];
  v18 = [v17 integerValue];
  v19 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v20 = [v16 getUserAtIndex:v18 flow:v19];
  if (!v20)
  {
    _HMFPreconditionFailure();
  }

  v21 = v20;

  v22 = 3;
LABEL_20:

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t __84__HMDHomeLockNotificationManager_CHIP__handleLockUserChangeEvent_forAccessory_flow___block_invoke_99(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 userUniqueID];
  v5 = *(*(a1 + 64) + 8);
  if (!*(v5 + 24))
  {
    *(v5 + 24) = 7;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    [*(a1 + 40) UUID];
    v27 = v29 = v3;
    [*(a1 + 48) uuid];
    v9 = v28 = v7;
    v10 = [*(a1 + 56) lockDataType];
    v11 = [*(a1 + 56) dataOperationType];
    [*(a1 + 56) operationSource];
    v12 = v30 = v6;
    v13 = [*(a1 + 56) userIndex];
    v26 = [*(a1 + 56) fabricIndex];
    [*(a1 + 56) dataIndex];
    v15 = v14 = v4;
    v16 = *(a1 + 72);
    v17 = *(a1 + 56);
    *buf = 138546178;
    v33 = v31;
    v34 = 2112;
    v35 = v27;
    v36 = 2112;
    v37 = v9;
    v38 = 2112;
    v39 = v10;
    v40 = 2112;
    v41 = v11;
    v42 = 2112;
    v43 = v12;
    v44 = 2112;
    v45 = v13;
    v46 = 2112;
    v47 = v14;
    v48 = 2112;
    v49 = v26;
    v50 = 2112;
    v51 = v15;
    v52 = 1024;
    v53 = v16;
    v54 = 2112;
    v55 = v17;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling LockUserChange Event for accessory=%@ lockDataType=%@ dataOperationType=%@ operationSource=%@ userIndex=%@ userUniqueID=%@ fabricIndex=%@ dataIndex=%@ allSlotsCleared=%d event=%@", buf, 0x76u);

    v4 = v14;
    v6 = v30;

    v7 = v28;
    v3 = v29;
  }

  objc_autoreleasePoolPop(v6);
  v18 = *(a1 + 32);
  v19 = [v3 userUniqueID];
  v20 = *(*(*(a1 + 64) + 8) + 24);
  v21 = *(a1 + 73);
  v22 = *(a1 + 48);
  v23 = [*(a1 + 56) fabricIndex];
  [v18 sendLockUserChangeEventNotification:v19 lockDataType:v20 accessory:v22 dataOperationType:v21 fabricIndex:v23 flow:*(a1 + 40)];

  v24 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)handleLockOperationEvent:(id)a3 forAccessory:(id)a4 flow:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v20 = HMFGetLogIdentifier();
    v21 = [v10 UUID];
    *buf = 138543618;
    v48 = v20;
    v49 = 2112;
    v50 = v21;
    v22 = "%{public}@[Flow: %@] Cannot insert lock operation bulletin because eventReport.value was not a MTRDoorLockClusterLockOperationEvent.";
LABEL_11:
    v23 = v19;
    v24 = OS_LOG_TYPE_ERROR;
    goto LABEL_12;
  }

  v14 = [v13 lockOperationType];
  if (![v14 integerValue])
  {

LABEL_15:
    v25 = [v13 operationSource];
    if ([v25 integerValue] == 7)
    {
      v26 = [v13 fabricIndex];

      if (!v26)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = self;
        v19 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        v20 = HMFGetLogIdentifier();
        v21 = [v10 UUID];
        *buf = 138543618;
        v48 = v20;
        v49 = 2112;
        v50 = v21;
        v22 = "%{public}@[Flow: %@] Cannot insert lock operation bulletin because the operation source is Remote but we have no fabric. This is likely a bug with the lock.";
        goto LABEL_11;
      }
    }

    else
    {
    }

    v27 = [MEMORY[0x277CBEAA8] now];
    v28 = objc_alloc(MEMORY[0x277D0F7A8]);
    v29 = [(HMDHomeLockNotificationManager *)self workQueue];
    v35 = [v28 initWithQueue:v29];

    v34 = [v9 chipAccessoryServer];
    v30 = [v34 createDoorLockClusterObjectWithFlow:v10];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke;
    v41[3] = &unk_27867C3D8;
    v42 = v13;
    v43 = self;
    v44 = v10;
    v45 = v9;
    v46 = v27;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_95;
    v36[3] = &unk_27867C3B0;
    v36[4] = self;
    v37 = v44;
    v38 = v45;
    v39 = v42;
    v40 = v46;
    v31 = v46;
    v32 = [v30 inContext:v35 then:v41 orRecover:v36];

    goto LABEL_21;
  }

  v15 = [v13 lockOperationType];
  v16 = [v15 integerValue];

  if (v16 == 1)
  {
    goto LABEL_15;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [v10 UUID];
    *buf = 138543618;
    v48 = v20;
    v49 = 2112;
    v50 = v21;
    v22 = "%{public}@[Flow: %@] Not inserting lock operation bulletin because lockOperationType is neither Lock or Unlock types.";
    v23 = v19;
    v24 = OS_LOG_TYPE_INFO;
LABEL_12:
    _os_log_impl(&dword_229538000, v23, v24, v22, buf, 0x16u);
  }

LABEL_13:

  objc_autoreleasePoolPop(v17);
LABEL_21:

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fetchCurrentFabricIndex];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_2;
  v35[3] = &unk_27867C338;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v36 = v5;
  v37 = v6;
  v38 = v7;
  v8 = v3;
  v39 = v8;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_81;
  v33[3] = &unk_2786882F0;
  v9 = *(a1 + 48);
  v33[4] = *(a1 + 40);
  v34 = v9;
  v10 = [v4 then:v35 orRecover:v33];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_83;
  v29[3] = &unk_27867C388;
  v23 = *(a1 + 40);
  v11 = *(&v23 + 1);
  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  v30 = v23;
  v31 = v14;
  v32 = *(a1 + 64);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_93;
  v25[3] = &unk_27867C3B0;
  v24 = *(a1 + 40);
  v15 = *(&v24 + 1);
  v16 = *(a1 + 56);
  v17 = *(a1 + 32);
  *&v18 = v16;
  *(&v18 + 1) = v17;
  v26 = v24;
  v27 = v18;
  v28 = *(a1 + 64);
  v19 = [v10 then:v29 orRecover:v25];
  if (v19)
  {
    v20 = v19;

    return 3;
  }

  else
  {
    v22 = _HMFPreconditionFailure();
    return __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_95(v22);
  }
}

uint64_t __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_95(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    *buf = 138543618;
    v30 = v7;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to retrieve HMMTRSyncClusterDoorLock, so we cannot associate this LockOperation event with a user or our fabric. Posting bulletin without user attribution.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [*(a1 + 40) UUID];
    [*(a1 + 48) uuid];
    v14 = v28 = v3;
    v15 = [*(a1 + 56) lockOperationType];
    v16 = [*(a1 + 56) operationSource];
    [*(a1 + 56) userIndex];
    v17 = v27 = v9;
    v18 = [*(a1 + 56) fabricIndex];
    v19 = *(a1 + 56);
    *buf = 138545154;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    v33 = 2112;
    v34 = v14;
    v35 = 2112;
    v36 = v15;
    v37 = 2112;
    v38 = v16;
    v39 = 2112;
    v40 = v17;
    v41 = 2112;
    v42 = v18;
    v43 = 2112;
    v44 = v19;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling LockOperation Event for accessory=%@ operationType=%@ operationSource=%@ userIndex=%@ userUniqueID=nil fabricIndex=%@ event=%@", buf, 0x52u);

    v9 = v27;
    v3 = v28;
  }

  objc_autoreleasePoolPop(v9);
  v20 = *(a1 + 32);
  v21 = [*(a1 + 56) lockOperationType];
  v22 = [*(a1 + 56) operationSource];
  v23 = [*(a1 + 56) fabricIndex];
  v24 = *(a1 + 64);
  [v20 sendLockOperationEventNotification:0 userUniqueID:0 lockOperationType:v21 lockOperationSource:v22 fabricIndex:v23 accessory:*(a1 + 48) timestamp:v24 flow:*(a1 + 40)];

  v25 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) operationSource];
  if ([v4 integerValue] == 7)
  {
    v5 = [*(a1 + 32) fabricIndex];
    v6 = [v5 isEqualToNumber:v3];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 40);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [*(a1 + 48) UUID];
        v22 = 138543618;
        v23 = v10;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not inserting lock operation event bulletin because the lock operation event was originated by our fabric. We handle this path in HMDHome and throw HMFErrorCodeOperationCancelled here.", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
        objc_claimAutoreleasedReturnValue();
      }

      v19 = 2;
LABEL_14:

      goto LABEL_15;
    }
  }

  else
  {
  }

  v15 = [*(a1 + 32) userIndex];

  if (v15)
  {
    v16 = *(a1 + 56);
    v13 = [*(a1 + 32) userIndex];
    v17 = [v16 getUserAtIndex:objc_msgSend(v13 flow:{"integerValue"), *(a1 + 48)}];
    if (!v17)
    {
      _HMFPreconditionFailure();
    }

    v18 = v17;
    v19 = 3;

    goto LABEL_14;
  }

  v19 = 1;
LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_81(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch current fabric index, so we cannot associate this LockOperation event with our fabric. Posting bulletin regardless.", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_83(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v38 = a2;
  v3 = [v38 userUniqueID];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v9 = [*(a1 + 48) userIndex];
    *buf = 138544130;
    v44 = v7;
    v45 = 2112;
    v46 = v8;
    v47 = 2112;
    v48 = v3;
    v49 = 2112;
    v50 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] UserUniqueID returned from getUserAtIndex is %@ for userIndex=%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  if (v3)
  {
    v10 = [*(a1 + 56) home];
    v11 = [v10 users];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_84;
    v39[3] = &unk_27867C360;
    v12 = v3;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v40 = v12;
    v41 = v13;
    v42 = v14;
    v15 = [v11 na_firstObjectPassingTest:v39];
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v37 = HMFGetLogIdentifier();
    v19 = [*(a1 + 40) UUID];
    v20 = [*(a1 + 56) uuid];
    [*(a1 + 48) lockOperationType];
    v21 = v36 = v16;
    v22 = [*(a1 + 48) operationSource];
    v23 = [*(a1 + 48) userIndex];
    [v15 uuid];
    v24 = v34 = v17;
    [*(a1 + 48) fabricIndex];
    v25 = v35 = v15;
    v26 = *(a1 + 48);
    *buf = 138545666;
    v44 = v37;
    v45 = 2112;
    v46 = v19;
    v47 = 2112;
    v48 = v20;
    v49 = 2112;
    v50 = v21;
    v51 = 2112;
    v52 = v22;
    v53 = 2112;
    v54 = v23;
    v55 = 2112;
    v56 = v24;
    v57 = 2112;
    v58 = v3;
    v59 = 2112;
    v60 = v25;
    v61 = 2112;
    v62 = v26;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling LockOperation Event for accessory=%@ operationType=%@ operationSource=%@ userIndex=%@ userUUID=%@ userUniqueID=%@ fabricIndex=%@ event=%@", buf, 0x66u);

    v15 = v35;
    v17 = v34;

    v16 = v36;
  }

  objc_autoreleasePoolPop(v16);
  v27 = *(a1 + 32);
  v28 = [*(a1 + 48) lockOperationType];
  v29 = [*(a1 + 48) operationSource];
  v30 = [*(a1 + 48) fabricIndex];
  v31 = *(a1 + 64);
  [v27 sendLockOperationEventNotification:v15 userUniqueID:v3 lockOperationType:v28 lockOperationSource:v29 fabricIndex:v30 accessory:*(a1 + 56) timestamp:v31 flow:*(a1 + 40)];

  v32 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_93(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 code] != 12)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v30 = v7;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to retrieve MTRDoorLockClusterGetUserResponseParams, so we cannot associate this LockOperation event with a user. Posting bulletin without user attribution.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) UUID];
      v14 = [*(a1 + 48) uuid];
      v15 = [*(a1 + 56) lockOperationType];
      [*(a1 + 56) operationSource];
      v16 = v27 = v3;
      v17 = [*(a1 + 56) userIndex];
      [*(a1 + 56) fabricIndex];
      v18 = v28 = v9;
      v19 = *(a1 + 56);
      *buf = 138545154;
      v30 = v12;
      v31 = 2112;
      v32 = v13;
      v33 = 2112;
      v34 = v14;
      v35 = 2112;
      v36 = v15;
      v37 = 2112;
      v38 = v16;
      v39 = 2112;
      v40 = v17;
      v41 = 2112;
      v42 = v18;
      v43 = 2112;
      v44 = v19;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling LockOperation Event for accessory=%@ operationType=%@ operationSource=%@ userIndex=%@ userUniqueID=nil fabricIndex=%@ event=%@", buf, 0x52u);

      v9 = v28;
      v3 = v27;
    }

    objc_autoreleasePoolPop(v9);
    v20 = *(a1 + 32);
    v21 = [*(a1 + 56) lockOperationType];
    v22 = [*(a1 + 56) operationSource];
    v23 = [*(a1 + 56) fabricIndex];
    v24 = *(a1 + 64);
    [v20 sendLockOperationEventNotification:0 userUniqueID:0 lockOperationType:v21 lockOperationSource:v22 fabricIndex:v23 accessory:*(a1 + 48) timestamp:v24 flow:*(a1 + 40)];
  }

  v25 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __83__HMDHomeLockNotificationManager_CHIP__handleLockOperationEvent_forAccessory_flow___block_invoke_84(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 uniqueIDForAccessories];
  v5 = [v4 isEqualToNumber:*(a1 + 32)];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [*(a1 + 48) UUID];
    v11 = *(a1 + 32);
    v12 = [v3 uuid];
    v13 = [v3 uniqueIDForAccessories];
    v14 = v13;
    v18 = 138544642;
    v15 = @"NO";
    v19 = v9;
    if (v5)
    {
      v15 = @"YES";
    }

    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v15;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Checking to see if userUniqueID=%@ matches for userUUID=%@ who has the uniqueIDForAccessories=%@... match found=%@", &v18, 0x3Eu);
  }

  objc_autoreleasePoolPop(v6);
  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)handleDoorLockAlarmEvent:(id)a3 forAccessory:(id)a4 flow:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v10 UUID];
      v30 = 138543618;
      v31 = v20;
      v32 = 2112;
      v33 = v21;
      v22 = "%{public}@[Flow: %@] Cannot insert DoorLockAlarm event bulletin because event is nil for MTRDoorLockClusterDoorLockAlarmEvent.";
      v23 = v18;
      v24 = OS_LOG_TYPE_ERROR;
      goto LABEL_10;
    }

LABEL_11:

    objc_autoreleasePoolPop(v16);
    goto LABEL_15;
  }

  v14 = [v13 alarmCode];
  v15 = [v14 integerValue];

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
  if (v15)
  {
    if (v19)
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v10 UUID];
      v30 = 138543618;
      v31 = v20;
      v32 = 2112;
      v33 = v21;
      v22 = "%{public}@[Flow: %@] Not inserting DoorLockAlarm event bulletin because alarmCode is not of type LockJammed.";
      v23 = v18;
      v24 = OS_LOG_TYPE_INFO;
LABEL_10:
      _os_log_impl(&dword_229538000, v23, v24, v22, &v30, 0x16u);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (v19)
  {
    v25 = HMFGetLogIdentifier();
    v26 = [v10 UUID];
    v27 = [v9 uuid];
    v30 = 138544130;
    v31 = v25;
    v32 = 2112;
    v33 = v26;
    v34 = 2112;
    v35 = v27;
    v36 = 2112;
    v37 = v13;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling DoorLockAlarm (Door Jammed) Event for accessory=%@ event=%@", &v30, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  v28 = [v13 alarmCode];
  [(HMDHomeLockNotificationManager *)v17 sendDoorLockAlarmEventNotification:v28 accessory:v9 flow:v10];

LABEL_15:
  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleDoorLockEventReport:(id)a3 forAccessory:(id)a4 flow:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 path];
  v12 = [v11 event];
  v13 = [v12 unsignedIntValue];

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v10 UUID];
    v19 = [v9 uuid];
    v24 = 138544130;
    v25 = v17;
    v26 = 2112;
    v27 = v18;
    v28 = 2112;
    v29 = v19;
    v30 = 1024;
    v31 = v13;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling Matter event report for accessory=%@ eventID=%u", &v24, 0x26u);
  }

  objc_autoreleasePoolPop(v14);
  v20 = [v8 path];
  v21 = [v20 event];
  v22 = [v21 unsignedIntValue];

  switch(v22)
  {
    case 4:
      [(HMDHomeLockNotificationManager *)v15 handleLockUserChangeEvent:v8 forAccessory:v9 flow:v10];
      break;
    case 2:
      [(HMDHomeLockNotificationManager *)v15 handleLockOperationEvent:v8 forAccessory:v9 flow:v10];
      break;
    case 0:
      [(HMDHomeLockNotificationManager *)v15 handleDoorLockAlarmEvent:v8 forAccessory:v9 flow:v10];
      break;
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end