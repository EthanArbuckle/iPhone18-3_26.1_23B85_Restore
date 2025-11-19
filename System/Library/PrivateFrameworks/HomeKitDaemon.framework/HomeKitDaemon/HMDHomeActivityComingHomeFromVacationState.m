@interface HMDHomeActivityComingHomeFromVacationState
+ (id)logCategory;
@end

@implementation HMDHomeActivityComingHomeFromVacationState

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_230208 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_230208, &__block_literal_global_230209);
  }

  v3 = logCategory__hmf_once_v1_230210;

  return v3;
}

void __57__HMDHomeActivityComingHomeFromVacationState_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_230210;
  logCategory__hmf_once_v1_230210 = v1;
}

@end