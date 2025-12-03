@interface HMDCameraClipFinalizeClipOperation
+ (id)logCategory;
- (void)main;
@end

@implementation HMDCameraClipFinalizeClipOperation

- (void)main
{
  v10.receiver = self;
  v10.super_class = HMDCameraClipFinalizeClipOperation;
  [(HMDCameraClipOperation *)&v10 main];
  fetchClipModel = [(HMDCameraClipOperation *)self fetchClipModel];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__HMDCameraClipFinalizeClipOperation_main__block_invoke;
  v9[3] = &unk_278676ED8;
  v9[4] = self;
  v4 = [fetchClipModel flatMap:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__HMDCameraClipFinalizeClipOperation_main__block_invoke_3;
  v8[3] = &unk_278687CE8;
  v8[4] = self;
  v5 = [v4 addSuccessBlock:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HMDCameraClipFinalizeClipOperation_main__block_invoke_5;
  v7[3] = &unk_27868A250;
  v7[4] = self;
  v6 = [v5 addFailureBlock:v7];
}

id __42__HMDCameraClipFinalizeClipOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setIsComplete:MEMORY[0x277CBEC38]];
  v4 = [v3 duration];
  [v4 doubleValue];
  v6 = v5;
  v7 = [*(a1 + 32) uploadOperationEvent];
  [v7 setTotalClipDuration:v6];

  v8 = [v3 duration];
  [v8 doubleValue];
  v10 = v9;

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v10 <= 0.0)
  {
    if (v14)
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v3 duration];
      [v18 doubleValue];
      v27 = 138543618;
      v28 = v17;
      v29 = 2048;
      v30 = v19;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Finalized clip has duration %fs, deleting", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v20 = [objc_alloc(MEMORY[0x277D17108]) initWithLabel:@"delete empty clip"];
    [v20 setQualityOfService:-1];
    v21 = [*(a1 + 32) localZone];
    v22 = MEMORY[0x277CBEB98];
    v23 = [v3 hmbModelID];
    v24 = [v22 setWithObject:v23];
    v16 = [v21 removeModelIDs:v24 options:v20];
  }

  else
  {
    if (v14)
    {
      v15 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Marking clip complete", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [*(a1 + 32) updateClipModel:v3];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

void __42__HMDCameraClipFinalizeClipOperation_main__block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully finalized clip", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) finish];

  v8 = *MEMORY[0x277D85DE8];
}

void __42__HMDCameraClipFinalizeClipOperation_main__block_invoke_5(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update clip model: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) cancelWithError:v3];

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_87447 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_87447, &__block_literal_global_87448);
  }

  v3 = logCategory__hmf_once_v5_87449;

  return v3;
}

void __49__HMDCameraClipFinalizeClipOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_87449;
  logCategory__hmf_once_v5_87449 = v1;
}

@end