@interface HMDAccessoryUserIdentifierManager
+ (id)logCategory;
@end

@implementation HMDAccessoryUserIdentifierManager

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_93148 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_93148, &__block_literal_global_93149);
  }

  v3 = logCategory__hmf_once_v1_93150;

  return v3;
}

void __48__HMDAccessoryUserIdentifierManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_93150;
  logCategory__hmf_once_v1_93150 = v1;
}

@end