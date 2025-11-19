@interface HMDCameraClipAddModelsOperation
+ (id)logCategory;
- (void)main;
@end

@implementation HMDCameraClipAddModelsOperation

- (void)main
{
  v16.receiver = self;
  v16.super_class = HMDCameraClipAddModelsOperation;
  [(HMDCameraClipOperation *)&v16 main];
  v3 = [(HMDCameraClipOperation *)self localZone];
  [v3 addMirrorOutputObserver:self];

  v4 = objc_alloc(MEMORY[0x277D17108]);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"add models for %@", objc_opt_class()];
  v6 = [v4 initWithLabel:v5];

  [v6 setQualityOfService:-1];
  [v6 setDisallowsCellularAccessForMirrorOutput:1];
  v7 = [(HMDCameraClipOperation *)self localZone];
  v8 = [(HMDCameraClipAddModelsOperation *)self modelsToAdd];
  v9 = [v7 addModels:v8 options:v6];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__HMDCameraClipAddModelsOperation_main__block_invoke;
  v15[3] = &unk_278686CE8;
  v15[4] = self;
  v10 = [v9 flatMap:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__HMDCameraClipAddModelsOperation_main__block_invoke_5;
  v14[3] = &unk_278687CE8;
  v14[4] = self;
  v11 = [v10 addSuccessBlock:v14];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__HMDCameraClipAddModelsOperation_main__block_invoke_7;
  v13[3] = &unk_27868A250;
  v13[4] = self;
  v12 = [v11 addFailureBlock:v13];
}

id __39__HMDCameraClipAddModelsOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 mirrorOutputResult];

  if (v4)
  {
    v5 = [v3 mirrorOutputResult];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@No mirrorOutputResult future provided", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = MEMORY[0x277D2C900];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v5 = [v10 futureWithError:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

void __39__HMDCameraClipAddModelsOperation_main__block_invoke_5(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully added models", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) finish];

  v8 = *MEMORY[0x277D85DE8];
}

void __39__HMDCameraClipAddModelsOperation_main__block_invoke_7(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to add models: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) cancelWithError:v3];

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_258551 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_258551, &__block_literal_global_258552);
  }

  v3 = logCategory__hmf_once_v4_258553;

  return v3;
}

void __46__HMDCameraClipAddModelsOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_258553;
  logCategory__hmf_once_v4_258553 = v1;
}

@end