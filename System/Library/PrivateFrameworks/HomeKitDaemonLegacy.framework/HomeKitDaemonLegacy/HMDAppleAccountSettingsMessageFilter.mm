@interface HMDAppleAccountSettingsMessageFilter
+ (id)logCategory;
+ (int64_t)filterMessage:(id)message withPolicies:(id)policies error:(id *)error;
@end

@implementation HMDAppleAccountSettingsMessageFilter

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_115158 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_115158, &__block_literal_global_115159);
  }

  v3 = logCategory__hmf_once_v5_115160;

  return v3;
}

uint64_t __51__HMDAppleAccountSettingsMessageFilter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_115160;
  logCategory__hmf_once_v5_115160 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (int64_t)filterMessage:(id)message withPolicies:(id)policies error:(id *)error
{
  v29[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  policiesCopy = policies;
  appleAccountSettingsOverride = [objc_opt_class() appleAccountSettingsOverride];
  v11 = appleAccountSettingsOverride;
  if (appleAccountSettingsOverride)
  {
    v12 = appleAccountSettingsOverride;
  }

  else
  {
    v12 = +[HMDAppleAccountSettings sharedSettings];
  }

  v13 = v12;

  v14 = MEMORY[0x277CCA9B8];
  v28 = *MEMORY[0x277CD00D8];
  v29[0] = &unk_286628D38;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v16 = [v14 hmPrivateErrorWithCode:2041 userInfo:v15];

  if ([v13 isManaged])
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v20;
      v21 = "%{public}@Rejecting message because primary account is a managed account";
LABEL_10:
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, v21, &v26, 0xCu);
    }
  }

  else
  {
    if (![v13 isMultiUser])
    {
      v23 = 1;
      goto LABEL_15;
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v20;
      v21 = "%{public}@Rejecting message because primary account is multi-user";
      goto LABEL_10;
    }
  }

  objc_autoreleasePoolPop(v17);
  if (error)
  {
    v22 = v16;
    *error = v16;
  }

  v23 = -1;
LABEL_15:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

@end