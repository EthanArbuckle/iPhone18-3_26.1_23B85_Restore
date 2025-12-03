@interface HMDResidentSelectionAutoMode
+ (id)logCategory;
- (HMDResidentSelectionAutoMode)initWithContext:(id)context;
- (id)logIdentifier;
- (id)shortDescription;
- (void)performSelectionWithPreferredPrimaryResident:(id)resident requireAutoUpdate:(BOOL)update reason:(unint64_t)reason completion:(id)completion;
@end

@implementation HMDResidentSelectionAutoMode

- (id)shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  context = [(HMDResidentSelectionMode *)self context];
  home = [context home];
  uuid = [home uuid];
  v6 = [v2 stringWithFormat:@"%@", uuid];

  return v6;
}

- (id)logIdentifier
{
  context = [(HMDResidentSelectionMode *)self context];
  home = [context home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)performSelectionWithPreferredPrimaryResident:(id)resident requireAutoUpdate:(BOOL)update reason:(unint64_t)reason completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  completionCopy = completion;
  context = [(HMDResidentSelectionMode *)self context];
  primaryResidentDevice = [context primaryResidentDevice];

  sortedResidents = [(HMDResidentSelectionMode *)self sortedResidents];
  if ([sortedResidents count])
  {
    v13 = [sortedResidents mutableCopy];
    delegate = v13;
    if (primaryResidentDevice)
    {
      [v13 removeObject:primaryResidentDevice];
      [delegate insertObject:primaryResidentDevice atIndex:0];
    }

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v18;
      v30 = 2112;
      v31 = delegate;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Sorted list of residents for auto selection: %@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [delegate copy];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __113__HMDResidentSelectionAutoMode_performSelectionWithPreferredPrimaryResident_requireAutoUpdate_reason_completion___block_invoke;
    v26[3] = &unk_278678440;
    v26[4] = selfCopy;
    v27 = completionCopy;
    [(HMDResidentSelectionMode *)selfCopy selectPrimaryResidentFromResidents:v19 requireAutoUpdate:0 completion:v26];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@There are no residents in the home. Auto mode selection failed.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    delegate = [(HMDResidentSelectionMode *)selfCopy2 delegate];
    v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:14];
    [delegate primarySelectionMode:selfCopy2 didFailToSelectWithError:v24];
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

- (HMDResidentSelectionAutoMode)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = HMDResidentSelectionAutoMode;
  return [(HMDResidentSelectionMode *)&v4 initWithContext:context];
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