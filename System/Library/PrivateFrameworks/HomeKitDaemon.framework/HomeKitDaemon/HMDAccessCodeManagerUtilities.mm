@interface HMDAccessCodeManagerUtilities
+ (BOOL)allModificationRequests:(id)a3 areAddingAccessCode:(id)a4;
+ (id)filteredFetchResponses:(id)a3 forUser:(id)a4 flow:(id)a5;
+ (id)logCategory;
@end

@implementation HMDAccessCodeManagerUtilities

+ (id)logCategory
{
  if (logCategory__hmf_once_t9 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9, &__block_literal_global_282);
  }

  v3 = logCategory__hmf_once_v10;

  return v3;
}

void __44__HMDAccessCodeManagerUtilities_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10;
  logCategory__hmf_once_v10 = v1;
}

+ (BOOL)allModificationRequests:(id)a3 areAddingAccessCode:(id)a4
{
  v5 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__HMDAccessCodeManagerUtilities_allModificationRequests_areAddingAccessCode___block_invoke;
  v8[3] = &unk_27866E578;
  v9 = v5;
  v6 = v5;
  LOBYTE(a3) = [a3 na_all:v8];

  return a3;
}

uint64_t __77__HMDAccessCodeManagerUtilities_allModificationRequests_areAddingAccessCode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = [v5 accessCodeValue];
    v9 = [v8 stringValue];
    v10 = [v7 isEqualToString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL __55__HMDAccessCodeManagerUtilities_anyModificationFailed___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 error];
  v3 = v2 != 0;

  return v3;
}

+ (id)filteredFetchResponses:(id)a3 forUser:(id)a4 flow:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 isAdministrator];
  v12 = objc_autoreleasePoolPush();
  v13 = a1;
  v14 = HMFGetOSLogHandle();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v15)
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v10 UUID];
      v18 = [v9 uuid];
      *buf = 138543874;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] User: %@ is an admin, so we can safely send all the fetch responses.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v19 = v8;
  }

  else
  {
    if (v15)
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v10 UUID];
      v22 = [v9 uuid];
      *buf = 138543874;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] User: %@ is not an admin, so redact all access codes except the user's own.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __69__HMDAccessCodeManagerUtilities_filteredFetchResponses_forUser_flow___block_invoke;
    v25[3] = &unk_27866E130;
    v26 = v9;
    v19 = [v8 na_map:v25];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v19;
}

id __69__HMDAccessCodeManagerUtilities_filteredFetchResponses_forUser_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessoryAccessCodeValues];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__HMDAccessCodeManagerUtilities_filteredFetchResponses_forUser_flow___block_invoke_2;
  v11[3] = &unk_278680BE8;
  v12 = *(a1 + 32);
  v5 = [v4 na_filter:v11];

  v6 = objc_alloc(MEMORY[0x277CD1660]);
  v7 = [v3 accessoryUUID];
  v8 = [v3 error];

  v9 = [v6 initWithAccessoryUUID:v7 accessoryAccessCodeValues:v5 error:v8];

  return v9;
}

uint64_t __69__HMDAccessCodeManagerUtilities_filteredFetchResponses_forUser_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 accessCodeValue];
  v4 = [v3 stringValue];
  v5 = [*(a1 + 32) accessCode];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

id __86__HMDAccessCodeManagerUtilities_removedAccessoryAccessCodesFromModificationResponses___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 operationType];
  v4 = [v2 error];

  v5 = 0;
  if (v3 == 2 && !v4)
  {
    v5 = [v2 accessoryAccessCodeValue];
  }

  return v5;
}

id __86__HMDAccessCodeManagerUtilities_updatedAccessoryAccessCodesFromModificationResponses___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 operationType];
  v4 = [v2 error];

  v5 = 0;
  if (v3 == 1 && !v4)
  {
    v5 = [v2 accessoryAccessCodeValue];
  }

  return v5;
}

id __84__HMDAccessCodeManagerUtilities_addedAccessoryAccessCodesFromModificationResponses___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 operationType];
  v4 = [v2 error];

  v5 = 0;
  if (!v3 && !v4)
  {
    v5 = [v2 accessoryAccessCodeValue];
  }

  return v5;
}

@end