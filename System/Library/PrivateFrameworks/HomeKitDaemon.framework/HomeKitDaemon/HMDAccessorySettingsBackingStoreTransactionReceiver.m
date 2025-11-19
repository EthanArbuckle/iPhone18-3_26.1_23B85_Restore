@interface HMDAccessorySettingsBackingStoreTransactionReceiver
- (HMDAccessorySettingsBackingStoreTransactionReceiver)initWithDelegate:(id)a3;
- (HMDAccessorySettingsBackingStoreTransactionReceiverDelegate)delegate;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
@end

@implementation HMDAccessorySettingsBackingStoreTransactionReceiver

- (HMDAccessorySettingsBackingStoreTransactionReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessorySettingsBackingStoreTransactionReceiver *)self delegate];
  v9 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __88__HMDAccessorySettingsBackingStoreTransactionReceiver_transactionObjectRemoved_message___block_invoke;
    v26[3] = &unk_278688D58;
    v26[4] = self;
    v27 = v11;
    v28 = v7;
    v12 = v11;
    [v8 handleRemovedSettingModel:v12 completion:v26];

    v13 = v27;
  }

  else
  {
    v14 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __88__HMDAccessorySettingsBackingStoreTransactionReceiver_transactionObjectRemoved_message___block_invoke_7;
      v23[3] = &unk_278688D58;
      v23[4] = self;
      v24 = v16;
      v25 = v7;
      v12 = v16;
      [v8 handleRemovedGroupModel:v12 completion:v23];

      v13 = v24;
    }

    else
    {
      v17 = v14;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      if (!v19)
      {
        v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v7 respondWithError:v12];
        goto LABEL_17;
      }

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __88__HMDAccessorySettingsBackingStoreTransactionReceiver_transactionObjectRemoved_message___block_invoke_8;
      v20[3] = &unk_278688D58;
      v20[4] = self;
      v21 = v19;
      v22 = v7;
      v12 = v19;
      [v8 handleRemovedSettingConstraintModel:v12 completion:v20];

      v13 = v21;
    }
  }

LABEL_17:
}

void __88__HMDAccessorySettingsBackingStoreTransactionReceiver_transactionObjectRemoved_message___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v11 = 138543874;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@There was an error %@ removing a setting %@.", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 48) respondWithError:v3];
  }

  else
  {
    v9 = [*(a1 + 48) transactionResult];
    [v9 markChanged];

    [*(a1 + 48) respondWithSuccess];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __88__HMDAccessorySettingsBackingStoreTransactionReceiver_transactionObjectRemoved_message___block_invoke_7(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v11 = 138543874;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@There was an error %@ removing a group %@.", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 48) respondWithError:v3];
  }

  else
  {
    v9 = [*(a1 + 48) transactionResult];
    [v9 markChanged];

    [*(a1 + 48) respondWithSuccess];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __88__HMDAccessorySettingsBackingStoreTransactionReceiver_transactionObjectRemoved_message___block_invoke_8(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v11 = 138543874;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@There was an error %@ removing the constraint %@.", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 48) respondWithError:v3];
  }

  else
  {
    v9 = [*(a1 + 48) transactionResult];
    [v9 markChanged];

    [*(a1 + 48) respondWithSuccess];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(HMDAccessorySettingsBackingStoreTransactionReceiver *)self delegate];
  v10 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __98__HMDAccessorySettingsBackingStoreTransactionReceiver_transactionObjectUpdated_newValues_message___block_invoke;
    v27[3] = &unk_278688D58;
    v27[4] = self;
    v28 = v12;
    v29 = v8;
    v13 = v12;
    [v9 handleUpdatedGroupModel:v13 completion:v27];

    v14 = v28;
  }

  else
  {
    v15 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v17)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __98__HMDAccessorySettingsBackingStoreTransactionReceiver_transactionObjectUpdated_newValues_message___block_invoke_2;
      v24[3] = &unk_278674A00;
      v24[4] = self;
      v25 = v17;
      v26 = v8;
      v13 = v17;
      [v9 handleUpdatedSettingModel:v13 completion:v24];

      v14 = v25;
    }

    else
    {
      v18 = v15;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      if (!v20)
      {
        v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v8 respondWithError:v13];
        goto LABEL_17;
      }

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __98__HMDAccessorySettingsBackingStoreTransactionReceiver_transactionObjectUpdated_newValues_message___block_invoke_5;
      v21[3] = &unk_278688D58;
      v21[4] = self;
      v22 = v20;
      v23 = v8;
      v13 = v20;
      [v9 handleUpdatedSettingConstraintModel:v13 completion:v21];

      v14 = v22;
    }
  }

LABEL_17:
}

void __98__HMDAccessorySettingsBackingStoreTransactionReceiver_transactionObjectUpdated_newValues_message___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v11 = 138543874;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@There was an error %@ adding a group %@.", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 48) respondWithError:v3];
  }

  else
  {
    v9 = [*(a1 + 48) transactionResult];
    [v9 markChanged];

    [*(a1 + 48) respondWithSuccess];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __98__HMDAccessorySettingsBackingStoreTransactionReceiver_transactionObjectUpdated_newValues_message___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v16 = 138543874;
      v17 = v12;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@There was an error %@ adding a setting %@.", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    [*(a1 + 48) respondWithError:v7];
  }

  else
  {
    if (a2)
    {
      v14 = [*(a1 + 48) transactionResult];
      [v14 markChanged];
    }

    [*(a1 + 48) respondWithSuccess];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __98__HMDAccessorySettingsBackingStoreTransactionReceiver_transactionObjectUpdated_newValues_message___block_invoke_5(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v11 = 138543874;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@There was an error %@ adding a constraint %@.", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 48) respondWithError:v3];
  }

  else
  {
    v9 = [*(a1 + 48) transactionResult];
    [v9 markChanged];

    [*(a1 + 48) respondWithSuccess];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDAccessorySettingsBackingStoreTransactionReceiver)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDAccessorySettingsBackingStoreTransactionReceiver;
  v5 = [(HMDAccessorySettingsBackingStoreTransactionReceiver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

@end