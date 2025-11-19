@interface HMDRemoteLoginUtilities
+ (ACAccount)primaryITunesAccount;
+ (BOOL)isTwoFactorAuthenticationEnabledForAccount;
+ (id)logCategory;
+ (void)fetchIsTwoFactorAuthenticationEnabledForAccountWithReason:(id)a3 completionHandler:(id)a4;
@end

@implementation HMDRemoteLoginUtilities

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_182578 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_182578, &__block_literal_global_182579);
  }

  v3 = logCategory__hmf_once_v6_182580;

  return v3;
}

uint64_t __38__HMDRemoteLoginUtilities_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6_182580;
  logCategory__hmf_once_v6_182580 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (BOOL)isTwoFactorAuthenticationEnabledForAccount
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = +[HMDAppleAccountManager sharedManager];
  v4 = [v3 accountContext];
  v5 = [v4 alternateDSID];

  v6 = [MEMORY[0x277CF0130] sharedInstance];
  v7 = [v6 authKitAccountWithAltDSID:v5];
  v8 = [v6 securityLevelForAccount:v7];
  v9 = objc_alloc_init(MEMORY[0x277CFD548]);
  v19 = 0;
  v10 = [v9 isManateeAvailable:&v19];
  v11 = v19;
  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v15 = v18 = v12;
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@CDPStateController check isManateeAvailable error: %@", buf, 0x16u);

      v12 = v18;
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
  return (v8 > 2) & v10;
}

+ (void)fetchIsTwoFactorAuthenticationEnabledForAccountWithReason:(id)a3 completionHandler:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[HMDAppleAccountManager sharedManager];
  v9 = [v8 accountContext];
  v10 = [v9 username];

  v11 = +[HMDAppleAccountManager sharedManager];
  v12 = [v11 accountContext];
  v13 = [v12 alternateDSID];

  v14 = objc_alloc_init(MEMORY[0x277CF0170]);
  [v14 setUsername:v10];
  [v14 setAltDSID:v13];
  [v14 setIsUsernameEditable:0];
  [v14 setReason:v6];
  [v14 setServiceType:0];
  [v14 setShouldPreventInteractiveAuth:1];
  v15 = objc_autoreleasePoolPush();
  v16 = a1;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138544130;
    v26 = v18;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v13;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Querying 2FA status with username: %@ altDSID: %@ reason: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  v19 = objc_alloc_init(MEMORY[0x277CF0178]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __103__HMDRemoteLoginUtilities_fetchIsTwoFactorAuthenticationEnabledForAccountWithReason_completionHandler___block_invoke;
  v22[3] = &unk_2797339A8;
  v23 = v7;
  v24 = v16;
  v20 = v7;
  [v19 authenticateWithContext:v14 completion:v22];

  v21 = *MEMORY[0x277D85DE8];
}

void __103__HMDRemoteLoginUtilities_fetchIsTwoFactorAuthenticationEnabledForAccountWithReason_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [v5 hmf_BOOLForKey:*MEMORY[0x277CEFFB0]];
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMFBooleanToString();
      v18 = 138543618;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v12 = "%{public}@Authentication result shows isTwoFactorAuthorizationEnabled=%@";
LABEL_8:
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, v12, &v18, 0x16u);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 40);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Unable to directly determine 2FA authentication status: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    [*(a1 + 40) isTwoFactorAuthenticationEnabledForAccount];
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMFBooleanToString();
      v18 = 138543618;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v12 = "%{public}@Account security level shows isTwoFactorAuthorizationEnabled=%@";
      goto LABEL_8;
    }
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 32) + 16))();

  v17 = *MEMORY[0x277D85DE8];
}

+ (ACAccount)primaryITunesAccount
{
  v2 = +[HMDAppleAccountManager sharedManager];
  v3 = [v2 accountStore];
  v4 = [v3 ams_activeiTunesAccount];

  return v4;
}

@end