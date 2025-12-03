@interface HMDRemoteLoginUtilities
+ (ACAccount)primaryITunesAccount;
+ (BOOL)isTwoFactorAuthenticationEnabledForAccount;
+ (id)logCategory;
+ (void)fetchIsTwoFactorAuthenticationEnabledForAccountWithReason:(id)reason completionHandler:(id)handler;
@end

@implementation HMDRemoteLoginUtilities

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_264574 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_264574, &__block_literal_global_264575);
  }

  v3 = logCategory__hmf_once_v6_264576;

  return v3;
}

void __38__HMDRemoteLoginUtilities_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6_264576;
  logCategory__hmf_once_v6_264576 = v1;
}

+ (BOOL)isTwoFactorAuthenticationEnabledForAccount
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = +[HMDAppleAccountManager sharedManager];
  accountContext = [v3 accountContext];
  alternateDSID = [accountContext alternateDSID];

  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  v7 = [mEMORY[0x277CF0130] authKitAccountWithAltDSID:alternateDSID];
  v8 = [mEMORY[0x277CF0130] securityLevelForAccount:v7];
  v9 = objc_alloc_init(MEMORY[0x277CFD548]);
  v19 = 0;
  v10 = [v9 isManateeAvailable:&v19];
  v11 = v19;
  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v15 = v18 = v12;
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@CDPStateController check isManateeAvailable error: %@", buf, 0x16u);

      v12 = v18;
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
  return (v8 > 2) & v10;
}

+ (void)fetchIsTwoFactorAuthenticationEnabledForAccountWithReason:(id)reason completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  handlerCopy = handler;
  v8 = +[HMDAppleAccountManager sharedManager];
  accountContext = [v8 accountContext];
  username = [accountContext username];

  v11 = +[HMDAppleAccountManager sharedManager];
  accountContext2 = [v11 accountContext];
  alternateDSID = [accountContext2 alternateDSID];

  v14 = objc_alloc_init(MEMORY[0x277CF0170]);
  [v14 setUsername:username];
  [v14 setAltDSID:alternateDSID];
  [v14 setIsUsernameEditable:0];
  [v14 setReason:reasonCopy];
  [v14 setServiceType:0];
  [v14 setShouldPreventInteractiveAuth:1];
  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138544130;
    v26 = v18;
    v27 = 2112;
    v28 = username;
    v29 = 2112;
    v30 = alternateDSID;
    v31 = 2112;
    v32 = reasonCopy;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Querying 2FA status with username: %@ altDSID: %@ reason: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  v19 = objc_alloc_init(MEMORY[0x277CF0178]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __103__HMDRemoteLoginUtilities_fetchIsTwoFactorAuthenticationEnabledForAccountWithReason_completionHandler___block_invoke;
  v22[3] = &unk_2786878D0;
  v23 = handlerCopy;
  v24 = selfCopy;
  v20 = handlerCopy;
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, v12, &v18, 0x16u);
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Unable to directly determine 2FA authentication status: %@", &v18, 0x16u);
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
  accountStore = [v2 accountStore];
  ams_activeiTunesAccount = [accountStore ams_activeiTunesAccount];

  return ams_activeiTunesAccount;
}

@end