@interface HMDResidentSelectionAutoMode
+ (id)logCategory;
- (HMDResidentSelectionAutoMode)initWithContext:(id)a3;
- (id)logIdentifier;
- (id)shortDescription;
- (void)performSelectionWithPreferredPrimaryResident:(id)a3 requireAutoUpdate:(BOOL)a4 reason:(unint64_t)a5 completion:(id)a6;
@end

@implementation HMDResidentSelectionAutoMode

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

- (void)performSelectionWithPreferredPrimaryResident:(id)a3 requireAutoUpdate:(BOOL)a4 reason:(unint64_t)a5 completion:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a6;
  v10 = [(HMDResidentSelectionMode *)self context];
  v11 = [v10 primaryResidentDevice];

  v12 = [(HMDResidentSelectionMode *)self sortedResidents];
  if ([v12 count])
  {
    v13 = [v12 mutableCopy];
    v14 = v13;
    if (v11)
    {
      [v13 removeObject:v11];
      [v14 insertObject:v11 atIndex:0];
    }

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v18;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Sorted list of residents for auto selection: %@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [v14 copy];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __113__HMDResidentSelectionAutoMode_performSelectionWithPreferredPrimaryResident_requireAutoUpdate_reason_completion___block_invoke;
    v26[3] = &unk_278678440;
    v26[4] = v16;
    v27 = v9;
    [(HMDResidentSelectionMode *)v16 selectPrimaryResidentFromResidents:v19 requireAutoUpdate:0 completion:v26];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@There are no residents in the home. Auto mode selection failed.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v14 = [(HMDResidentSelectionMode *)v21 delegate];
    v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:14];
    [v14 primarySelectionMode:v21 didFailToSelectWithError:v24];
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __113__HMDResidentSelectionAutoMode_performSelectionWithPreferredPrimaryResident_requireAutoUpdate_reason_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __113__HMDResidentSelectionAutoMode_performSelectionWithPreferredPrimaryResident_requireAutoUpdate_reason_completion___block_invoke_2;
  v11[3] = &unk_278689AB8;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v6;
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

void __113__HMDResidentSelectionAutoMode_performSelectionWithPreferredPrimaryResident_requireAutoUpdate_reason_completion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Auto mode selection failed with error: %@.", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [v2 primarySelectionMode:*(a1 + 32) didFailToSelectWithError:*(a1 + 40)];
  }

  else
  {
    if (v7)
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Auto mode selection completed.", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v11 = *(a1 + 48);
  v12 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

- (HMDResidentSelectionAutoMode)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDResidentSelectionAutoMode;
  return [(HMDResidentSelectionMode *)&v4 initWithContext:a3];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_109903 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_109903, &__block_literal_global_109904);
  }

  v3 = logCategory__hmf_once_v5_109905;

  return v3;
}

void __43__HMDResidentSelectionAutoMode_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_109905;
  logCategory__hmf_once_v5_109905 = v1;
}

@end