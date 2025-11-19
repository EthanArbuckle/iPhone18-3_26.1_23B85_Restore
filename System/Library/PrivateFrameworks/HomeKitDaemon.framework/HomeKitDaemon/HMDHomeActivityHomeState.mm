@interface HMDHomeActivityHomeState
+ (id)logCategory;
@end

@implementation HMDHomeActivityHomeState

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_75750 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_75750, &__block_literal_global_75751);
  }

  v3 = logCategory__hmf_once_v1_75752;

  return v3;
}

void __39__HMDHomeActivityHomeState_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_75752;
  logCategory__hmf_once_v1_75752 = v1;
}

@end