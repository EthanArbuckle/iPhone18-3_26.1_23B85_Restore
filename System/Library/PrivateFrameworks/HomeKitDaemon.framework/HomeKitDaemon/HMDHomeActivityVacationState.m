@interface HMDHomeActivityVacationState
+ (id)logCategory;
@end

@implementation HMDHomeActivityVacationState

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_280739 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_280739, &__block_literal_global_280740);
  }

  v3 = logCategory__hmf_once_v1_280741;

  return v3;
}

void __43__HMDHomeActivityVacationState_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_280741;
  logCategory__hmf_once_v1_280741 = v1;
}

@end