@interface HMDBackingStoreHandler
+ (id)logCategory;
- (HMDBackingStoreHandler)initWithIdentifier:(id)a3 backingStore:(id)a4;
- (id)attributeDescriptions;
- (id)backingStoreObjectsForVersion:(int64_t)a3;
- (id)logIdentifier;
- (void)runTransactionWithModel:(id)a3 options:(id)a4 reason:(id)a5 completion:(id)a6;
- (void)runTransactionWithModel:(id)a3 reason:(id)a4 completion:(id)a5;
- (void)runTransactionWithModels:(id)a3 options:(id)a4 reason:(id)a5 completion:(id)a6;
- (void)runTransactionWithModels:(id)a3 reason:(id)a4 completion:(id)a5;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
@end

@implementation HMDBackingStoreHandler

- (id)logIdentifier
{
  v2 = [(HMDBackingStoreHandler *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDBackingStoreHandler *)self identifier];
  v5 = [v3 initWithName:@"identifier" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to process removed object: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
  [v7 respondWithError:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v14;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to process udated changes for object: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
  [v10 respondWithError:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)backingStoreObjectsForVersion:(int64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive backinstore objects for shared user", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
  return MEMORY[0x277CBEBF8];
}

- (void)runTransactionWithModels:(id)a3 options:(id)a4 reason:(id)a5 completion:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543874;
    v39 = v17;
    v40 = 2112;
    v41 = v10;
    v42 = 2112;
    v43 = v11;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Running transaction with models: %@ options: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  if (v13)
  {
    v18 = [(HMDBackingStoreHandler *)v15 backingStore];
    v30 = v12;
    v19 = [v18 transaction:v12 options:v11];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = v10;
    v21 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v34;
      do
      {
        v24 = 0;
        do
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [v19 add:*(*(&v33 + 1) + 8 * v24++)];
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v22);
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __77__HMDBackingStoreHandler_runTransactionWithModels_options_reason_completion___block_invoke;
    v31[3] = &unk_279733F30;
    v31[4] = v15;
    v32 = v13;
    [v19 run:v31];

    v12 = v30;
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v15;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v28;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Failed to run transaction due to no completion", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __77__HMDBackingStoreHandler_runTransactionWithModels_options_reason_completion___block_invoke(uint64_t a1, void *a2)
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
      v13 = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Transaction completed with error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Transaction completed", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)runTransactionWithModel:(id)a3 options:(id)a4 reason:(id)a5 completion:(id)a6
{
  v18 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v10 = MEMORY[0x277CBEA60];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 arrayWithObjects:&v17 count:1];

  [(HMDBackingStoreHandler *)self runTransactionWithModels:v15 options:v13 reason:v12 completion:v11, v17, v18];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)runTransactionWithModels:(id)a3 reason:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  [(HMDBackingStoreHandler *)self runTransactionWithModels:v10 options:v11 reason:v9 completion:v8];
}

- (void)runTransactionWithModel:(id)a3 reason:(id)a4 completion:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v8 = MEMORY[0x277CBEA60];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v14 count:1];

  [(HMDBackingStoreHandler *)self runTransactionWithModels:v12 reason:v10 completion:v9, v14, v15];
  v13 = *MEMORY[0x277D85DE8];
}

- (HMDBackingStoreHandler)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDBackingStoreHandler;
  v9 = [(HMDBackingStoreHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_backingStore, a4);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_57765 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_57765, &__block_literal_global_57766);
  }

  v3 = logCategory__hmf_once_v8_57767;

  return v3;
}

uint64_t __37__HMDBackingStoreHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_57767;
  logCategory__hmf_once_v8_57767 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end