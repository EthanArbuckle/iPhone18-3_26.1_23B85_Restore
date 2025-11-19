@interface HMDHomeActivityStateLoggerWithTTL
+ (id)logCategory;
@end

@implementation HMDHomeActivityStateLoggerWithTTL

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_268784 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_268784, &__block_literal_global_268785);
  }

  v3 = logCategory__hmf_once_v1_268786;

  return v3;
}

void __48__HMDHomeActivityStateLoggerWithTTL_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_268786;
  logCategory__hmf_once_v1_268786 = v1;
}

@end