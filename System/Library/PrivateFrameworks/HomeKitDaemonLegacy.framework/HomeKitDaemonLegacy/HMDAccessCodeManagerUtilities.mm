@interface HMDAccessCodeManagerUtilities
+ (BOOL)allModificationRequests:(id)requests areAddingAccessCode:(id)code;
+ (id)filteredFetchResponses:(id)responses forUser:(id)user flow:(id)flow;
+ (id)logCategory;
@end

@implementation HMDAccessCodeManagerUtilities

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_2851 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_2851, &__block_literal_global_280);
  }

  v3 = logCategory__hmf_once_v10_2852;

  return v3;
}

uint64_t __44__HMDAccessCodeManagerUtilities_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v10_2852 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)allModificationRequests:(id)requests areAddingAccessCode:(id)code
{
  codeCopy = code;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__HMDAccessCodeManagerUtilities_allModificationRequests_areAddingAccessCode___block_invoke;
  v8[3] = &unk_2797211B0;
  v9 = codeCopy;
  v6 = codeCopy;
  LOBYTE(requests) = [requests na_all:v8];

  return requests;
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

+ (id)filteredFetchResponses:(id)responses forUser:(id)user flow:(id)flow
{
  v33 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  userCopy = user;
  flowCopy = flow;
  isAdministrator = [userCopy isAdministrator];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (isAdministrator)
  {
    if (v15)
    {
      v16 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      uuid = [userCopy uuid];
      *buf = 138543874;
      v28 = v16;
      v29 = 2112;
      v30 = uUID;
      v31 = 2112;
      v32 = uuid;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] User: %@ is an admin, so we can safely send all the fetch responses.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v19 = responsesCopy;
  }

  else
  {
    if (v15)
    {
      v20 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      uuid2 = [userCopy uuid];
      *buf = 138543874;
      v28 = v20;
      v29 = 2112;
      v30 = uUID2;
      v31 = 2112;
      v32 = uuid2;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] User: %@ is not an admin, so redact all access codes except the user's own.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __69__HMDAccessCodeManagerUtilities_filteredFetchResponses_forUser_flow___block_invoke;
    v25[3] = &unk_279720DB0;
    v26 = userCopy;
    v19 = [responsesCopy na_map:v25];
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
  v11[3] = &unk_27972E680;
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