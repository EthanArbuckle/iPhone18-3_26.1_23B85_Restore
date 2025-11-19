@interface HMDThreadResidentCommissioner
+ (HMDThreadResidentCommissioner)sharedCommissioner;
+ (id)logCategory;
- (HMDThreadResidentCommissioner)initWithThreadRadioClient:(id)a3;
- (id)_getAllPendingOperations;
- (id)_getThreadOperationSequenceNumber;
- (id)initInternal;
- (unint64_t)_numPendingOperations;
- (void)_addToPendingOperations:(id)a3;
- (void)_connectToThreadAccessoryWithExtendedMACAddress:(id)a3 completion:(id)a4;
- (void)_executePendingThreadOperation;
- (void)_scheduleThreadOperation:(id)a3;
- (void)_setThreadOperationInProgress:(BOOL)a3;
- (void)_startThreadAccessoryFirmwareUpdateWithExtendedMACAddress:(id)a3 isWedDevice:(BOOL)a4 completion:(id)a5;
- (void)_startThreadAccessoryPairingWithExtendedMACAddress:(id)a3 isWedDevice:(BOOL)a4 completion:(id)a5;
- (void)_startThreadNetworkWithID:(id)a3 completion:(id)a4;
- (void)_startThreadNetworkWithOperationalDataset:(id)a3 threadNetworkID:(id)a4 isOwnerUser:(BOOL)a5 completion:(id)a6;
- (void)_stopThreadAccessoryFirmwareUpdateWithCompletion:(id)a3;
- (void)_stopThreadAccessoryPairingWithCompletion:(id)a3;
- (void)_stopThreadNetworkOnNonResidentWithCompletion:(id)a3;
- (void)_stopThreadNetworkWithCompletion:(id)a3;
- (void)connectToThreadAccessoryWithExtendedMACAddress:(id)a3 completion:(id)a4;
- (void)dispatchBlock:(id)a3;
- (void)informThreadLayerOfResidentChange:(BOOL)a3 primaryResidentIsThreadCapable:(BOOL)a4;
- (void)registerForThreadNetworkEvents:(id)a3;
- (void)startThreadAccessoryFirmwareUpdateWithExtendedMACAddress:(id)a3 isWedDevice:(BOOL)a4 completion:(id)a5;
- (void)startThreadAccessoryPairingWithExtendedMACAddress:(id)a3 isWedDevice:(BOOL)a4 completion:(id)a5;
- (void)startThreadNetworkWithID:(id)a3 completion:(id)a4;
- (void)startThreadNetworkWithOperationalDataset:(id)a3 threadNetworkID:(id)a4 isOwnerUser:(BOOL)a5 completion:(id)a6;
- (void)stopThreadAccessoryFirmwareUpdateWithCompletion:(id)a3;
- (void)stopThreadAccessoryPairingWithCompletion:(id)a3;
- (void)stopThreadNetworkOnDeviceLockWithCompletion:(id)a3;
- (void)stopThreadNetworkWithCompletion:(id)a3;
- (void)unregisterForThreadNetworkEvents:(id)a3;
@end

@implementation HMDThreadResidentCommissioner

- (void)dispatchBlock:(id)a3
{
  v4 = a3;
  v5 = [(HMDThreadResidentCommissioner *)self workQueue];
  dispatch_async(v5, v4);
}

- (void)informThreadLayerOfResidentChange:(BOOL)a3 primaryResidentIsThreadCapable:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __98__HMDThreadResidentCommissioner_informThreadLayerOfResidentChange_primaryResidentIsThreadCapable___block_invoke;
  v4[3] = &unk_27972C680;
  v4[4] = self;
  v5 = a3;
  v6 = a4;
  [(HMDThreadResidentCommissioner *)self dispatchBlock:v4];
}

- (void)unregisterForThreadNetworkEvents:(id)a3
{
  v4 = a3;
  v5 = [(HMDThreadResidentCommissioner *)self threadRadioClient];
  [v5 unregisterForThreadNetworkEvents:v4];
}

- (void)registerForThreadNetworkEvents:(id)a3
{
  v4 = a3;
  v5 = [(HMDThreadResidentCommissioner *)self threadRadioClient];
  [v5 registerForThreadNetworkEvents:v4];
}

- (void)_stopThreadAccessoryFirmwareUpdateWithCompletion:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__79595;
  v22 = __Block_byref_object_dispose__79596;
  v23 = [(HMDThreadResidentCommissioner *)self _getThreadOperationSequenceNumber];
  v5 = [HMDThreadOperation alloc];
  v6 = [(HMDThreadResidentCommissioner *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__HMDThreadResidentCommissioner__stopThreadAccessoryFirmwareUpdateWithCompletion___block_invoke;
  v15[3] = &unk_279728EA8;
  v15[4] = self;
  v17 = &v18;
  v7 = v4;
  v16 = v7;
  v8 = [(HMDThreadOperation *)v5 initWithQueue:v6 threadOperationType:4 completion:v15];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    v13 = v19[5];
    *buf = 138543618;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Scheduling stop thread firmware update", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDThreadResidentCommissioner *)v10 _scheduleThreadOperation:v8];

  _Block_object_dispose(&v18, 8);
  v14 = *MEMORY[0x277D85DE8];
}

void __82__HMDThreadResidentCommissioner__stopThreadAccessoryFirmwareUpdateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138543618;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Executing stop thread firmware update", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543874;
      v26 = v15;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@[%@] stop thread firmware update - operational error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    (*(*(a1 + 40) + 16))();
    v6[2](v6, 0);
  }

  else
  {
    v17 = [*(a1 + 32) threadRadioClient];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __82__HMDThreadResidentCommissioner__stopThreadAccessoryFirmwareUpdateWithCompletion___block_invoke_30;
    v21[3] = &unk_279728E80;
    v19 = *(a1 + 40);
    v18 = *(a1 + 48);
    v21[4] = *(a1 + 32);
    v24 = v18;
    v22 = v19;
    v23 = v6;
    [v17 stopFirmwareUpdateWithCompletion:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __82__HMDThreadResidentCommissioner__stopThreadAccessoryFirmwareUpdateWithCompletion___block_invoke_30(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(*(*(a1 + 56) + 8) + 40);
      v20 = 138543874;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v3;
      v10 = "%{public}@[%@] Failed stop thread firmware update with error %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v20, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(*(*(a1 + 56) + 8) + 40);
    v20 = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = v14;
    v10 = "%{public}@[%@] Stop thread firmware update succeeded";
    v11 = v7;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v15, v16);
  (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v17, v18);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)stopThreadAccessoryFirmwareUpdateWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Scheduling stopThreadAccessoryFirmwareUpdateWithCompletion", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDThreadResidentCommissioner *)v6 isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __81__HMDThreadResidentCommissioner_stopThreadAccessoryFirmwareUpdateWithCompletion___block_invoke;
    v15[3] = &unk_279735738;
    v15[4] = v6;
    v16 = v4;
    [(HMDThreadResidentCommissioner *)v6 dispatchBlock:v15];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v6;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Thread Service feature is not enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v4 + 2))(v4, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_startThreadAccessoryFirmwareUpdateWithExtendedMACAddress:(id)a3 isWedDevice:(BOOL)a4 completion:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__79595;
  v31 = __Block_byref_object_dispose__79596;
  v32 = [(HMDThreadResidentCommissioner *)self _getThreadOperationSequenceNumber];
  v10 = [HMDThreadOperation alloc];
  v11 = [(HMDThreadResidentCommissioner *)self workQueue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __114__HMDThreadResidentCommissioner__startThreadAccessoryFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke;
  v22[3] = &unk_279728F48;
  v22[4] = self;
  v25 = &v27;
  v12 = v8;
  v23 = v12;
  v26 = a4;
  v13 = v9;
  v24 = v13;
  v14 = [(HMDThreadOperation *)v10 initWithQueue:v11 threadOperationType:4 completion:v22];

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    v19 = v28[5];
    v20 = HMFBooleanToString();
    *buf = 138544130;
    v34 = v18;
    v35 = 2112;
    v36 = v19;
    v37 = 2112;
    v38 = v12;
    v39 = 2112;
    v40 = v20;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Scheduling start firmware update for thread accessory with emac %@, isWED = %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  [(HMDThreadResidentCommissioner *)v16 _scheduleThreadOperation:v14];

  _Block_object_dispose(&v27, 8);
  v21 = *MEMORY[0x277D85DE8];
}

void __114__HMDThreadResidentCommissioner__startThreadAccessoryFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(*(*(a1 + 56) + 8) + 40);
    v12 = *(a1 + 40);
    v13 = *(a1 + 64);
    v14 = HMFBooleanToString();
    *buf = 138544130;
    v35 = v10;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v12;
    v40 = 2112;
    v41 = v14;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Executing start firmware update with emac %@, isWED = %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543874;
      v35 = v18;
      v36 = 2112;
      v37 = v19;
      v38 = 2112;
      v39 = v5;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[%@] start firmware update - operational error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    (*(*(a1 + 48) + 16))();
    goto LABEL_10;
  }

  v20 = [*(a1 + 32) threadRadioClient];
  v21 = [v20 isThreadNetworkUp];

  if ((v21 & 1) == 0)
  {
    v26 = *(a1 + 48);
    v27 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:6];
    (*(v26 + 16))(v26, v27);

LABEL_10:
    v6[2](v6, 0);
    goto LABEL_11;
  }

  v22 = [*(a1 + 32) threadRadioClient];
  v23 = *(a1 + 64);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __114__HMDThreadResidentCommissioner__startThreadAccessoryFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke_29;
  v29[3] = &unk_279728F20;
  v24 = *(a1 + 40);
  v25 = *(a1 + 56);
  v29[4] = *(a1 + 32);
  v33 = v25;
  v30 = v24;
  v31 = *(a1 + 48);
  v32 = v6;
  [v22 startFirmwareUpdateWithExtendedMACAddress:v30 isWedDevice:v23 completion:v29];

LABEL_11:
  v28 = *MEMORY[0x277D85DE8];
}

void __114__HMDThreadResidentCommissioner__startThreadAccessoryFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke_29(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(*(*(a1 + 64) + 8) + 40);
      v10 = *(a1 + 40);
      v25 = 138544130;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = v3;
      v11 = "%{public}@[%@] Failed start firmware update to emac %@ with error %@";
      v12 = v7;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 42;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v12, v13, v11, &v25, v14);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v15 = *(*(*(a1 + 64) + 8) + 40);
    v25 = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = v15;
    v11 = "%{public}@[%@] Start firmware update succeeded";
    v12 = v7;
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, v16, v17, v18, v19);
  (*(*(a1 + 56) + 16))(*(a1 + 56), 0, v20, v21, v22, v23);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)startThreadAccessoryFirmwareUpdateWithExtendedMACAddress:(id)a3 isWedDevice:(BOOL)a4 completion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Scheduling startThreadAccessoryFirmwareUpdateWithExtendedMACAddress", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  if ([(HMDThreadResidentCommissioner *)v11 isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled])
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __113__HMDThreadResidentCommissioner_startThreadAccessoryFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke;
    v20[3] = &unk_279732430;
    v20[4] = v11;
    v21 = v8;
    v23 = a4;
    v22 = v9;
    [(HMDThreadResidentCommissioner *)v11 dispatchBlock:v20];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v11;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Thread Service feature is not enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v9 + 2))(v9, v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_stopThreadAccessoryPairingWithCompletion:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__79595;
  v22 = __Block_byref_object_dispose__79596;
  v23 = [(HMDThreadResidentCommissioner *)self _getThreadOperationSequenceNumber];
  v5 = [HMDThreadOperation alloc];
  v6 = [(HMDThreadResidentCommissioner *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__HMDThreadResidentCommissioner__stopThreadAccessoryPairingWithCompletion___block_invoke;
  v15[3] = &unk_279728EA8;
  v15[4] = self;
  v17 = &v18;
  v7 = v4;
  v16 = v7;
  v8 = [(HMDThreadOperation *)v5 initWithQueue:v6 threadOperationType:3 completion:v15];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    v13 = v19[5];
    *buf = 138543618;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Scheduling stop thread pairing", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDThreadResidentCommissioner *)v10 _scheduleThreadOperation:v8];

  _Block_object_dispose(&v18, 8);
  v14 = *MEMORY[0x277D85DE8];
}

void __75__HMDThreadResidentCommissioner__stopThreadAccessoryPairingWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138543618;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Executing stop thread pairing", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543874;
      v26 = v15;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@[%@] stop thread pairing - operational error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    (*(*(a1 + 40) + 16))();
    v6[2](v6, 0);
  }

  else
  {
    v17 = [*(a1 + 32) threadRadioClient];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __75__HMDThreadResidentCommissioner__stopThreadAccessoryPairingWithCompletion___block_invoke_28;
    v21[3] = &unk_279728E80;
    v19 = *(a1 + 40);
    v18 = *(a1 + 48);
    v21[4] = *(a1 + 32);
    v24 = v18;
    v22 = v19;
    v23 = v6;
    [v17 stopThreadPairingWithCompletion:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __75__HMDThreadResidentCommissioner__stopThreadAccessoryPairingWithCompletion___block_invoke_28(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(*(*(a1 + 56) + 8) + 40);
      v20 = 138543874;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v3;
      v10 = "%{public}@[%@] Failed stop thread pairing with error %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v20, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(*(*(a1 + 56) + 8) + 40);
    v20 = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = v14;
    v10 = "%{public}@[%@] Stop thread pairing succeeded";
    v11 = v7;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v15, v16);
  (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v17, v18);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)stopThreadAccessoryPairingWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Scheduling stopThreadAccessoryPairingWithCompletion", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDThreadResidentCommissioner *)v6 isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__HMDThreadResidentCommissioner_stopThreadAccessoryPairingWithCompletion___block_invoke;
    v15[3] = &unk_279735738;
    v15[4] = v6;
    v16 = v4;
    [(HMDThreadResidentCommissioner *)v6 dispatchBlock:v15];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v6;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Thread Service feature is not enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v4 + 2))(v4, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_startThreadAccessoryPairingWithExtendedMACAddress:(id)a3 isWedDevice:(BOOL)a4 completion:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__79595;
  v31 = __Block_byref_object_dispose__79596;
  v32 = [(HMDThreadResidentCommissioner *)self _getThreadOperationSequenceNumber];
  v10 = [HMDThreadOperation alloc];
  v11 = [(HMDThreadResidentCommissioner *)self workQueue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __107__HMDThreadResidentCommissioner__startThreadAccessoryPairingWithExtendedMACAddress_isWedDevice_completion___block_invoke;
  v22[3] = &unk_279728F48;
  v22[4] = self;
  v25 = &v27;
  v12 = v8;
  v23 = v12;
  v26 = a4;
  v13 = v9;
  v24 = v13;
  v14 = [(HMDThreadOperation *)v10 initWithQueue:v11 threadOperationType:3 completion:v22];

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    v19 = v28[5];
    v20 = HMFBooleanToString();
    *buf = 138544130;
    v34 = v18;
    v35 = 2112;
    v36 = v19;
    v37 = 2112;
    v38 = v12;
    v39 = 2112;
    v40 = v20;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Scheduling start pairing to accessory with emac %@, isWED = %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  [(HMDThreadResidentCommissioner *)v16 _scheduleThreadOperation:v14];

  _Block_object_dispose(&v27, 8);
  v21 = *MEMORY[0x277D85DE8];
}

void __107__HMDThreadResidentCommissioner__startThreadAccessoryPairingWithExtendedMACAddress_isWedDevice_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(*(*(a1 + 56) + 8) + 40);
    v12 = *(a1 + 40);
    v13 = *(a1 + 64);
    v14 = HMFBooleanToString();
    *buf = 138544130;
    v35 = v10;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v12;
    v40 = 2112;
    v41 = v14;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Executing start pairing with emac %@, isWED = %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543874;
      v35 = v18;
      v36 = 2112;
      v37 = v19;
      v38 = 2112;
      v39 = v5;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[%@] start pairing - operational error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    (*(*(a1 + 48) + 16))();
    goto LABEL_10;
  }

  v20 = [*(a1 + 32) threadRadioClient];
  v21 = [v20 isThreadNetworkUp];

  if ((v21 & 1) == 0)
  {
    v26 = *(a1 + 48);
    v27 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:6];
    (*(v26 + 16))(v26, v27);

LABEL_10:
    v6[2](v6, 0);
    goto LABEL_11;
  }

  v22 = [*(a1 + 32) threadRadioClient];
  v23 = *(a1 + 64);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __107__HMDThreadResidentCommissioner__startThreadAccessoryPairingWithExtendedMACAddress_isWedDevice_completion___block_invoke_27;
  v29[3] = &unk_279728F20;
  v24 = *(a1 + 40);
  v25 = *(a1 + 56);
  v29[4] = *(a1 + 32);
  v33 = v25;
  v30 = v24;
  v31 = *(a1 + 48);
  v32 = v6;
  [v22 startThreadPairingWithExtendedMACAddress:v30 isWedDevice:v23 completion:v29];

LABEL_11:
  v28 = *MEMORY[0x277D85DE8];
}

void __107__HMDThreadResidentCommissioner__startThreadAccessoryPairingWithExtendedMACAddress_isWedDevice_completion___block_invoke_27(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(*(*(a1 + 64) + 8) + 40);
      v10 = *(a1 + 40);
      v25 = 138544130;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = v3;
      v11 = "%{public}@[%@] Failed start pairing to emac %@ with error %@";
      v12 = v7;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 42;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v12, v13, v11, &v25, v14);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v15 = *(*(*(a1 + 64) + 8) + 40);
    v25 = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = v15;
    v11 = "%{public}@[%@] Start Pairing succeeded";
    v12 = v7;
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, v16, v17, v18, v19);
  (*(*(a1 + 56) + 16))(*(a1 + 56), 0, v20, v21, v22, v23);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)startThreadAccessoryPairingWithExtendedMACAddress:(id)a3 isWedDevice:(BOOL)a4 completion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Scheduling startThreadAccessoryPairingWithExtendedMACAddress", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  if ([(HMDThreadResidentCommissioner *)v11 isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled])
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __106__HMDThreadResidentCommissioner_startThreadAccessoryPairingWithExtendedMACAddress_isWedDevice_completion___block_invoke;
    v20[3] = &unk_279732430;
    v20[4] = v11;
    v21 = v8;
    v23 = a4;
    v22 = v9;
    [(HMDThreadResidentCommissioner *)v11 dispatchBlock:v20];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v11;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Thread Service feature is not enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v9 + 2))(v9, v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_connectToThreadAccessoryWithExtendedMACAddress:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__79595;
  v34 = __Block_byref_object_dispose__79596;
  v35 = [(HMDThreadResidentCommissioner *)self _getThreadOperationSequenceNumber];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__79595;
  v28 = __Block_byref_object_dispose__79596;
  v29 = 0;
  v8 = [HMDThreadOperation alloc];
  v9 = [(HMDThreadResidentCommissioner *)self workQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__HMDThreadResidentCommissioner__connectToThreadAccessoryWithExtendedMACAddress_completion___block_invoke;
  v19[3] = &unk_279728EF8;
  v19[4] = self;
  v22 = &v30;
  v10 = v6;
  v20 = v10;
  v11 = v7;
  v21 = v11;
  v23 = &v24;
  v12 = [(HMDThreadOperation *)v8 initWithQueue:v9 threadOperationType:2 completion:v19];

  if (!v10)
  {
    objc_storeStrong(v25 + 5, v12);
  }

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = HMFGetLogIdentifier();
    v17 = v31[5];
    *buf = 138543874;
    v37 = v16;
    v38 = 2112;
    v39 = v17;
    v40 = 2112;
    v41 = v10;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Scheduling connect to accessory with emac %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  [(HMDThreadResidentCommissioner *)v14 _scheduleThreadOperation:v12];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  v18 = *MEMORY[0x277D85DE8];
}

void __92__HMDThreadResidentCommissioner__connectToThreadAccessoryWithExtendedMACAddress_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(*(*(a1 + 56) + 8) + 40);
    v12 = *(a1 + 40);
    *buf = 138543874;
    v40 = v10;
    v41 = 2112;
    v42 = v11;
    v43 = 2112;
    v44 = v12;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Executing connect to accessory with emac %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543874;
      v40 = v16;
      v41 = 2112;
      v42 = v17;
      v43 = 2112;
      v44 = v5;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@[%@] connect to accessory with emac - operational error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    (*(*(a1 + 48) + 16))();
    goto LABEL_14;
  }

  v18 = [*(a1 + 32) threadRadioClient];
  v19 = [v18 isThreadNetworkUp];

  if ((v19 & 1) == 0)
  {
    v30 = *(a1 + 48);
    v31 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:6];
    (*(v30 + 16))(v30, v31);

LABEL_14:
    v6[2](v6, 0);
    goto LABEL_15;
  }

  v20 = [*(a1 + 32) threadRadioClient];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __92__HMDThreadResidentCommissioner__connectToThreadAccessoryWithExtendedMACAddress_completion___block_invoke_26;
  v33[3] = &unk_279728ED0;
  v21 = *(a1 + 40);
  v22 = *(a1 + 56);
  v33[4] = *(a1 + 32);
  v37 = v22;
  v34 = v21;
  v35 = *(a1 + 48);
  v23 = v6;
  v24 = *(a1 + 64);
  v36 = v23;
  v38 = v24;
  [v20 connectToExtendedMACAddress:v34 completion:v33];

  if (!*(a1 + 40))
  {
    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      v29 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543618;
      v40 = v28;
      v41 = 2112;
      v42 = v29;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] connectToExtendedMACAddress with emac nil executed, not waiting for completion due to deferral.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v23[2](v23, 0);
  }

LABEL_15:
  v32 = *MEMORY[0x277D85DE8];
}

void __92__HMDThreadResidentCommissioner__connectToThreadAccessoryWithExtendedMACAddress_completion___block_invoke_26(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    v9 = *(*(*(a1 + 64) + 8) + 40);
    v10 = *(a1 + 40);
    v27 = 138544130;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = v10;
    v33 = 2112;
    v34 = v3;
    v11 = "%{public}@[%@] Failed Connect to emac %@ with error %@";
    v12 = v7;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 42;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    v15 = *(*(*(a1 + 64) + 8) + 40);
    v27 = 138543618;
    v28 = v8;
    v29 = 2112;
    v30 = v15;
    v11 = "%{public}@[%@] Connect to emac succeeded";
    v12 = v7;
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = 22;
  }

  _os_log_impl(&dword_2531F8000, v12, v13, v11, &v27, v14);

LABEL_7:
  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, v16, v17, v18, v19);
  if (*(a1 + 40))
  {
    (*(*(a1 + 56) + 16))(*(a1 + 56), 0, v20, v21, v22, v23);
  }

  v24 = *(*(a1 + 72) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = 0;

  v26 = *MEMORY[0x277D85DE8];
}

- (void)connectToThreadAccessoryWithExtendedMACAddress:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Scheduling connectToThreadAccessoryWithExtendedMACAddress", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  if ([(HMDThreadResidentCommissioner *)v9 isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled])
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __91__HMDThreadResidentCommissioner_connectToThreadAccessoryWithExtendedMACAddress_completion___block_invoke;
    v18[3] = &unk_2797355D0;
    v18[4] = v9;
    v19 = v6;
    v20 = v7;
    [(HMDThreadResidentCommissioner *)v9 dispatchBlock:v18];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v9;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Thread Service feature is not enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v7 + 2))(v7, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_stopThreadNetworkWithCompletion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping thread network", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDThreadResidentCommissioner *)v6 _stopThreadNetworkOnNonResidentWithCompletion:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_stopThreadNetworkOnNonResidentWithCompletion:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__79595;
  v22 = __Block_byref_object_dispose__79596;
  v23 = [(HMDThreadResidentCommissioner *)self _getThreadOperationSequenceNumber];
  v5 = [HMDThreadOperation alloc];
  v6 = [(HMDThreadResidentCommissioner *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__HMDThreadResidentCommissioner__stopThreadNetworkOnNonResidentWithCompletion___block_invoke;
  v15[3] = &unk_279728EA8;
  v15[4] = self;
  v17 = &v18;
  v7 = v4;
  v16 = v7;
  v8 = [(HMDThreadOperation *)v5 initWithQueue:v6 threadOperationType:0 completion:v15];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    v13 = v19[5];
    *buf = 138543618;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Scheduling stop thread network", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDThreadResidentCommissioner *)v10 _scheduleThreadOperation:v8];

  _Block_object_dispose(&v18, 8);
  v14 = *MEMORY[0x277D85DE8];
}

void __79__HMDThreadResidentCommissioner__stopThreadNetworkOnNonResidentWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138543618;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Stopping thread network", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543874;
      v26 = v15;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@[%@] stop thread - operational error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    (*(*(a1 + 40) + 16))();
    v6[2](v6, 0);
  }

  else
  {
    v17 = [*(a1 + 32) threadRadioClient];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __79__HMDThreadResidentCommissioner__stopThreadNetworkOnNonResidentWithCompletion___block_invoke_25;
    v21[3] = &unk_279728E80;
    v19 = *(a1 + 40);
    v18 = *(a1 + 48);
    v21[4] = *(a1 + 32);
    v24 = v18;
    v22 = v19;
    v23 = v6;
    [v17 stopThreadNetworkWithCompletion:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __79__HMDThreadResidentCommissioner__stopThreadNetworkOnNonResidentWithCompletion___block_invoke_25(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(*(*(a1 + 56) + 8) + 40);
      v21 = 138543874;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v3;
      v10 = "%{public}@[%@] Failed to stop thread network: %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v21, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(*(*(a1 + 56) + 8) + 40);
    v21 = 138543618;
    v22 = v8;
    v23 = 2112;
    v24 = v14;
    v10 = "%{public}@[%@] Stopped thread network";
    v11 = v7;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 postNotificationName:@"HMDThreadNetworkStateChangeNotification" object:0];

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v16, v17);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, v18, v19);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)stopThreadNetworkOnDeviceLockWithCompletion:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@stopThreadNetworkOnDeviceLock: Scheduling stopThreadNetworkWithCompletion", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if (!CFPreferencesGetAppBooleanValue(@"StartThreadOnWake", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    goto LABEL_8;
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"StartThreadOnWakeAllowHomeThreadStop", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
  v10 = objc_autoreleasePoolPush();
  v11 = v6;
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (AppBooleanValue)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Allowing stop thread", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
LABEL_8:
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __77__HMDThreadResidentCommissioner_stopThreadNetworkOnDeviceLockWithCompletion___block_invoke;
    v17[3] = &unk_279735738;
    v17[4] = v6;
    v18 = v4;
    [(HMDThreadResidentCommissioner *)v6 dispatchBlock:v17];

    goto LABEL_12;
  }

  if (v13)
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v15;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Suppressing thread stop on device lock - thread will stop by itself", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  (*(v4 + 2))(v4, 0);
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)stopThreadNetworkWithCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"StartThreadOnWake", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (AppBooleanValue)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Suppressing thread stop", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v4[2](v4, 0);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Scheduling stopThreadNetworkWithCompletion", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__HMDThreadResidentCommissioner_stopThreadNetworkWithCompletion___block_invoke;
    v13[3] = &unk_279735738;
    v13[4] = v7;
    v14 = v4;
    [(HMDThreadResidentCommissioner *)v7 dispatchBlock:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)startThreadNetworkWithOperationalDataset:(id)a3 threadNetworkID:(id)a4 isOwnerUser:(BOOL)a5 completion:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v16;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Scheduling startThreadNetworkWithOperationalDataset", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __113__HMDThreadResidentCommissioner_startThreadNetworkWithOperationalDataset_threadNetworkID_isOwnerUser_completion___block_invoke;
  v21[3] = &unk_279733CD0;
  v21[4] = v14;
  v22 = v10;
  v25 = a5;
  v23 = v11;
  v24 = v12;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  [(HMDThreadResidentCommissioner *)v14 dispatchBlock:v21];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_startThreadNetworkWithOperationalDataset:(id)a3 threadNetworkID:(id)a4 isOwnerUser:(BOOL)a5 completion:(id)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__79595;
  v39 = __Block_byref_object_dispose__79596;
  v40 = [(HMDThreadResidentCommissioner *)self _getThreadOperationSequenceNumber];
  v13 = [HMDThreadOperation alloc];
  v14 = [(HMDThreadResidentCommissioner *)self workQueue];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __114__HMDThreadResidentCommissioner__startThreadNetworkWithOperationalDataset_threadNetworkID_isOwnerUser_completion___block_invoke;
  v28 = &unk_279728E58;
  v29 = self;
  v33 = &v35;
  v15 = v11;
  v30 = v15;
  v16 = v10;
  v31 = v16;
  v17 = v12;
  v32 = v17;
  v34 = a5;
  v18 = [(HMDThreadOperation *)v13 initWithQueue:v14 threadOperationType:1 completion:&v25];

  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = HMFGetLogIdentifier();
    v23 = v36[5];
    *buf = 138544130;
    v42 = v22;
    v43 = 2112;
    v44 = v23;
    v45 = 2112;
    v46 = v15;
    v47 = 2112;
    v48 = v16;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Scheduling start thread network with id %@ and operational dataset %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v19);
  [(HMDThreadResidentCommissioner *)v20 _scheduleThreadOperation:v18, v25, v26, v27, v28, v29];

  _Block_object_dispose(&v35, 8);
  v24 = *MEMORY[0x277D85DE8];
}

void __114__HMDThreadResidentCommissioner__startThreadNetworkWithOperationalDataset_threadNetworkID_isOwnerUser_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(*(*(a1 + 64) + 8) + 40);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    *buf = 138544130;
    v38 = v10;
    v39 = 2112;
    v40 = v11;
    v41 = 2112;
    v42 = v12;
    v43 = 2112;
    v44 = v13;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Executing start thread network id %@ with operational dataset %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543874;
      v38 = v17;
      v39 = 2112;
      v40 = v18;
      v41 = 2112;
      v42 = v5;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@[%@] start thread - operational error %@", buf, 0x20u);
    }
  }

  else
  {
    v19 = [*(a1 + 32) threadRadioClient];
    v20 = [v19 isThreadNetworkUp];

    if (!v20)
    {
      v24 = [*(a1 + 32) threadRadioClient];
      v25 = *(a1 + 48);
      v26 = *(a1 + 72);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __114__HMDThreadResidentCommissioner__startThreadNetworkWithOperationalDataset_threadNetworkID_isOwnerUser_completion___block_invoke_14;
      v32[3] = &unk_279728E30;
      v36 = *(a1 + 64);
      v31 = *(a1 + 32);
      v27 = *(&v31 + 1);
      v28 = *(a1 + 48);
      v29 = *(a1 + 56);
      *&v30 = v28;
      *(&v30 + 1) = v29;
      v33 = v31;
      v34 = v30;
      v35 = v6;
      [v24 startThreadNetworkWithOperationalDataset:v25 isOwnerUser:v26 completion:v32];

      goto LABEL_11;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      v22 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543618;
      v38 = v21;
      v39 = 2112;
      v40 = v22;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Thread network already running", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v14);
  (*(*(a1 + 56) + 16))();
  (*(v6 + 2))(v6, 0);
LABEL_11:

  v23 = *MEMORY[0x277D85DE8];
}

void __114__HMDThreadResidentCommissioner__startThreadNetworkWithOperationalDataset_threadNetworkID_isOwnerUser_completion___block_invoke_14(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(*(*(a1 + 72) + 8) + 40);
      v10 = *(a1 + 48);
      v15 = 138544130;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to start thread network %@: %@", &v15, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(*(*(a1 + 72) + 8) + 40);
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Started thread network", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 postNotificationName:@"HMDThreadNetworkStateChangeNotification" object:*(a1 + 40)];
  }

  (*(*(a1 + 56) + 16))();
  (*(*(a1 + 64) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_executePendingThreadOperation
{
  v70 = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  if (self->_operationInProgress)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v67 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Operation in progress, wait for previous operation to complete.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = 0;
LABEL_59:
    os_unfair_recursive_lock_unlock();
    goto LABEL_62;
  }

  v48 = [(HMDThreadResidentCommissioner *)self _getAllPendingOperations];
  if (![v48 count])
  {
    v43 = objc_autoreleasePoolPush();
    v44 = self;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      v46 = HMFGetLogIdentifier();
      *buf = 138543362;
      v67 = v46;
      _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_DEBUG, "%{public}@No pending operations", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v43);
    v7 = v48;
    goto LABEL_59;
  }

  self->_operationInProgress = 1;
  os_unfair_recursive_lock_unlock();
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v67 = v11;
    v68 = 2048;
    v69 = [v48 count];
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Pending operations: %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v13 = [v48 reverseObjectEnumerator];
  v14 = [v13 allObjects];

  v15 = 0;
  v16 = [v14 countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v16)
  {
    v17 = *v60;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v60 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v59 + 1) + 8 * i);
        if (!v15)
        {
          v15 = v19;
          continue;
        }

        v20 = [v15 operationType];
        if (v20 > 2)
        {
          if ((v20 - 3) < 2)
          {
            v22 = [v19 operationType];
            if (v22 - 2 < 3 || v22 <= 1)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          switch(v20)
          {
            case 0:
              goto LABEL_24;
            case 1:
              v23 = [v19 operationType];
              if ((v23 - 2) < 3)
              {
                [v12 addObject:v19];
                continue;
              }

              if (v23 == 1)
              {
LABEL_24:
                [v49 addObject:v19];
                continue;
              }

              if (!v23)
              {
LABEL_35:
                [v12 addObject:v15];
                v24 = v19;

                v15 = v24;
                continue;
              }

              break;
            case 2:
              v21 = [v19 operationType];
              if (v21 - 2 < 3 || v21 <= 1)
              {
                goto LABEL_35;
              }

              break;
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v16);
  }

  v25 = objc_autoreleasePoolPush();
  v26 = v9;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = HMFGetLogIdentifier();
    v29 = [v49 count];
    *buf = 138543618;
    v67 = v28;
    v68 = 2048;
    v69 = v29;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Cancelling stale operations: %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v30 = [v49 reverseObjectEnumerator];
  v31 = [v30 allObjects];

  v32 = [v31 countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v32)
  {
    v33 = *v56;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v56 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = *(*(&v55 + 1) + 8 * j);
        v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
        [v35 cancelWithError:v36];
      }

      v32 = [v31 countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v32);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v37 = [v12 reverseObjectEnumerator];
  v38 = [v37 allObjects];

  v39 = [v38 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v39)
  {
    v40 = *v52;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v52 != v40)
        {
          objc_enumerationMutation(v38);
        }

        [(HMDThreadResidentCommissioner *)v26 _addToPendingOperations:*(*(&v51 + 1) + 8 * k)];
      }

      v39 = [v38 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v39);
  }

  if ([(HMDThreadResidentCommissioner *)v26 _overrideThreadOperationTimeout])
  {
    v42 = 0;
  }

  else
  {
    v42 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:10000000000];
  }

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __63__HMDThreadResidentCommissioner__executePendingThreadOperation__block_invoke;
  v50[3] = &unk_2797359D8;
  v50[4] = v26;
  [v15 executeWithTimeout:v42 completion:v50];

  v7 = v48;
LABEL_62:

  v47 = *MEMORY[0x277D85DE8];
}

uint64_t __63__HMDThreadResidentCommissioner__executePendingThreadOperation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__HMDThreadResidentCommissioner__executePendingThreadOperation__block_invoke_2;
  v3[3] = &unk_279735D00;
  v3[4] = v1;
  return [v1 dispatchBlock:v3];
}

uint64_t __63__HMDThreadResidentCommissioner__executePendingThreadOperation__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_recursive_lock_lock_with_options();
  *(*(a1 + 32) + 24) = 0;
  os_unfair_recursive_lock_unlock();
  v3 = *(a1 + 32);

  return [v3 _executePendingThreadOperation];
}

- (void)_scheduleThreadOperation:(id)a3
{
  v5 = a3;
  os_unfair_recursive_lock_lock_with_options();
  [(HMDThreadResidentCommissioner *)self _addToPendingOperations:v5];
  operationInProgress = self->_operationInProgress;
  os_unfair_recursive_lock_unlock();
  if (!operationInProgress)
  {
    [(HMDThreadResidentCommissioner *)self _executePendingThreadOperation];
  }
}

- (void)_addToPendingOperations:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  [(NSMutableArray *)self->_pendingOperations addObject:v4];
  os_unfair_recursive_lock_unlock();
}

- (id)_getAllPendingOperations
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [MEMORY[0x277CBEA60] arrayWithArray:self->_pendingOperations];
  [(NSMutableArray *)self->_pendingOperations removeAllObjects];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (unint64_t)_numPendingOperations
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_pendingOperations count];
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (void)_setThreadOperationInProgress:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@TEST ONLY - overriding _setThreadOperationInProgress to %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_recursive_lock_lock_with_options();
  v6->_operationInProgress = a3;
  os_unfair_recursive_lock_unlock();
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_startThreadNetworkWithID:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Starting thread network", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDThreadResidentCommissioner *)v9 threadRadioClient];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__HMDThreadResidentCommissioner__startThreadNetworkWithID_completion___block_invoke;
  v16[3] = &unk_279728E08;
  v16[4] = v9;
  v17 = v6;
  v18 = v7;
  v13 = v7;
  v14 = v6;
  [v12 startThreadNetwork:v14 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __70__HMDThreadResidentCommissioner__startThreadNetworkWithID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Started thread network: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 postNotificationName:@"HMDThreadNetworkStateChangeNotification" object:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      v16 = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to start thread network %@: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  (*(*(a1 + 48) + 16))();

  v15 = *MEMORY[0x277D85DE8];
}

- (void)startThreadNetworkWithID:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Scheduling startThreadNetworkWithID", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__HMDThreadResidentCommissioner_startThreadNetworkWithID_completion___block_invoke;
  v15[3] = &unk_2797355D0;
  v15[4] = v9;
  v16 = v6;
  v17 = v7;
  v12 = v7;
  v13 = v6;
  [(HMDThreadResidentCommissioner *)v9 dispatchBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)initInternal
{
  v3 = objc_opt_new();
  v4 = [(HMDThreadResidentCommissioner *)self initWithThreadRadioClient:v3];

  return v4;
}

- (HMDThreadResidentCommissioner)initWithThreadRadioClient:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = HMDThreadResidentCommissioner;
  v6 = [(HMDThreadResidentCommissioner *)&v15 init];
  if (v6)
  {
    v7 = HMFDispatchQueueName();
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_get_global_queue(25, 0);
    v10 = dispatch_queue_create_with_target_V2(v7, v8, v9);
    workQueue = v6->_workQueue;
    v6->_workQueue = v10;

    objc_storeStrong(&v6->_threadRadioClient, a3);
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingOperations = v6->_pendingOperations;
    v6->_pendingOperations = v12;

    v6->_operationInProgress = 0;
  }

  return v6;
}

- (id)_getThreadOperationSequenceNumber
{
  os_unfair_lock_lock_with_options();
  ++_getThreadOperationSequenceNumber_counter;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  os_unfair_lock_unlock(&_getThreadOperationSequenceNumber_counterLock);

  return v2;
}

+ (HMDThreadResidentCommissioner)sharedCommissioner
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&sharedCommissioner_weakCommissioner);
  v4 = objc_autoreleasePoolPush();
  v5 = a1;
  if (WeakRetained)
  {
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Reusing existing commissioner", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Creating new commissioner", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    WeakRetained = [[HMDThreadResidentCommissioner alloc] initInternal];
    objc_storeWeak(&sharedCommissioner_weakCommissioner, WeakRetained);
  }

  os_unfair_lock_unlock(&sharedCommissioner_lock);
  v10 = *MEMORY[0x277D85DE8];

  return WeakRetained;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_79693 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_79693, &__block_literal_global_79694);
  }

  v3 = logCategory__hmf_once_v1_79695;

  return v3;
}

uint64_t __44__HMDThreadResidentCommissioner_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_79695;
  logCategory__hmf_once_v1_79695 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end