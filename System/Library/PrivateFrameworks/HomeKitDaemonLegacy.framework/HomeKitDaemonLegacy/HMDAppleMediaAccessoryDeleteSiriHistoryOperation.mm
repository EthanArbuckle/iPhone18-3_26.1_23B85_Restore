@interface HMDAppleMediaAccessoryDeleteSiriHistoryOperation
+ (id)logCategory;
- (HMDAppleMediaAccessoryDeleteSiriHistoryOperation)initWithSettingsConnection:(id)a3;
- (void)main;
@end

@implementation HMDAppleMediaAccessoryDeleteSiriHistoryOperation

- (void)main
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Started delete siri history operation", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDAppleMediaAccessoryDeleteSiriHistoryOperation *)v4 settingsConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HMDAppleMediaAccessoryDeleteSiriHistoryOperation_main__block_invoke;
  v9[3] = &unk_2797359D8;
  v9[4] = v4;
  [v7 deleteSiriHistoryWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __56__HMDAppleMediaAccessoryDeleteSiriHistoryOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
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
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Delete siri history completed with error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) cancelWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Delete siri history completed", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) finish];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDAppleMediaAccessoryDeleteSiriHistoryOperation)initWithSettingsConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDAppleMediaAccessoryDeleteSiriHistoryOperation;
  v6 = [(HMFOperation *)&v9 initWithTimeout:60.0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settingsConnection, a3);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_105984 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_105984, &__block_literal_global_105985);
  }

  v3 = logCategory__hmf_once_v4_105986;

  return v3;
}

uint64_t __63__HMDAppleMediaAccessoryDeleteSiriHistoryOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_105986;
  logCategory__hmf_once_v4_105986 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end