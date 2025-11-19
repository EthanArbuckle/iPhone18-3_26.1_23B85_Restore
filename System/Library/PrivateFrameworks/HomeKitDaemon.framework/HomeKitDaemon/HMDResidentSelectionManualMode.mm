@interface HMDResidentSelectionManualMode
+ (id)logCategory;
- (HMDResidentSelectionManualMode)initWithContext:(id)a3;
- (id)logIdentifier;
- (id)shortDescription;
@end

@implementation HMDResidentSelectionManualMode

- (id)shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDResidentSelectionMode *)self context];
  v4 = [v3 home];
  v5 = [v4 uuid];
  v6 = [v2 stringWithFormat:@"%@", v5];

  return v6;
}

- (id)logIdentifier
{
  v2 = [(HMDResidentSelectionMode *)self context];
  v3 = [v2 home];
  v4 = [v3 uuid];
  v5 = [v4 UUIDString];

  return v5;
}

void __115__HMDResidentSelectionManualMode_performSelectionWithPreferredPrimaryResident_requireAutoUpdate_reason_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __115__HMDResidentSelectionManualMode_performSelectionWithPreferredPrimaryResident_requireAutoUpdate_reason_completion___block_invoke_2;
  v12[3] = &unk_278689AB8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

uint64_t __115__HMDResidentSelectionManualMode_performSelectionWithPreferredPrimaryResident_requireAutoUpdate_reason_completion___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 32);
      v15 = 138543618;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Manual mode selection failed with error: %@.", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v9 = [*(a1 + 40) delegate];
    [v9 primarySelectionMode:*(a1 + 40) didFailToSelectWithError:*(a1 + 32)];
  }

  else
  {
    if (v6)
    {
      v10 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Manual mode selection completed.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  result = (*(*(a1 + 56) + 16))();
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (HMDResidentSelectionManualMode)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDResidentSelectionManualMode;
  return [(HMDResidentSelectionMode *)&v4 initWithContext:a3];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_110935 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_110935, &__block_literal_global_110936);
  }

  v3 = logCategory__hmf_once_v4_110937;

  return v3;
}

void __45__HMDResidentSelectionManualMode_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_110937;
  logCategory__hmf_once_v4_110937 = v1;
}

@end