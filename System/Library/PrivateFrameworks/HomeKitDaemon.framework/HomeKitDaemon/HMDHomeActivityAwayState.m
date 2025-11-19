@interface HMDHomeActivityAwayState
+ (id)logCategory;
@end

@implementation HMDHomeActivityAwayState

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_264548 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_264548, &__block_literal_global_264549);
  }

  v3 = logCategory__hmf_once_v1_264550;

  return v3;
}

void __39__HMDHomeActivityAwayState_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_264550;
  logCategory__hmf_once_v1_264550 = v1;
}

@end