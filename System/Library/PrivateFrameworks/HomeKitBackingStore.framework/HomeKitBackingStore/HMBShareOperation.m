@interface HMBShareOperation
+ (id)logCategory;
- (HMBShareOperation)initWithCloudZone:(id)a3 block:(id)a4;
- (void)main;
@end

@implementation HMBShareOperation

- (void)main
{
  v3 = [(HMBShareOperation *)self cloudZone];
  v4 = [v3 shareModel];
  v5 = [v4 share];

  v6 = [(HMBFutureOperation *)self block];
  v7 = v6[2]();

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __25__HMBShareOperation_main__block_invoke;
  v13[3] = &unk_2786E1398;
  v13[4] = self;
  v8 = [v7 addSuccessBlock:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __25__HMBShareOperation_main__block_invoke_2;
  v11[3] = &unk_2786E1948;
  v11[4] = self;
  v12 = v5;
  v9 = v5;
  v10 = [v7 addFailureBlock:v11];
}

void __25__HMBShareOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 finish];
  v5 = [*(a1 + 32) future];
  [v5 finishWithResult:v4];
}

void __25__HMBShareOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 hmbIsRetryShareOperationError];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v9;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling retry share operation error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [*(a1 + 32) cloudZone];
    v11 = [HMBProcessingOptions optionsWithLabel:@"Share Operation Retry"];
    v12 = [v10 performCloudPullWithOptions:v11];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __25__HMBShareOperation_main__block_invoke_5;
    v19[3] = &unk_2786E13C0;
    v13 = *(a1 + 40);
    v19[4] = *(a1 + 32);
    v20 = v13;
    v14 = [v12 addSuccessBlock:v19];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __25__HMBShareOperation_main__block_invoke_8;
    v18[3] = &unk_2786E13E8;
    v18[4] = *(a1 + 32);
    v15 = [v14 addFailureBlock:v18];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v16;
      v23 = 2114;
      v24 = v3;
      _os_log_impl(&dword_22AD27000, v8, OS_LOG_TYPE_ERROR, "%{public}@Share operation failed: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 32) cancelWithError:v3];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __25__HMBShareOperation_main__block_invoke_5(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) cloudZone];
  v5 = [v4 shareModel];
  v6 = [v5 share];

  v7 = [v6 recordChangeTag];
  v8 = [*(a1 + 40) recordChangeTag];
  v9 = HMFEqualObjects();

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 40);
      v20 = 138543874;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_ERROR, "%{public}@Not retrying share operation because no new CKShare changes were found after performing cloud pull (initialShare: %@, currentShare: %@)", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v16 = *(a1 + 32);
    v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v16 cancelWithError:v17];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_22AD27000, v13, OS_LOG_TYPE_INFO, "%{public}@Retrying share operation after finishing cloud pull", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) main];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __25__HMBShareOperation_main__block_invoke_8(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_22AD27000, v6, OS_LOG_TYPE_ERROR, "%{public}@Canceling share operation due to failed cloud pull: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) cancelWithError:v3];

  v8 = *MEMORY[0x277D85DE8];
}

- (HMBShareOperation)initWithCloudZone:(id)a3 block:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HMBShareOperation;
  v8 = [(HMBFutureOperation *)&v11 initWithBlock:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cloudZone, a3);
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5, &__block_literal_global_4180);
  }

  v3 = logCategory__hmf_once_v6;

  return v3;
}

uint64_t __32__HMBShareOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6;
  logCategory__hmf_once_v6 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end