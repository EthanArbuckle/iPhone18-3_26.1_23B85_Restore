@interface HMDVideoStreamInterfaceDataSource
+ (id)logCategory;
@end

@implementation HMDVideoStreamInterfaceDataSource

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_150533 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_150533, &__block_literal_global_150534);
  }

  v3 = logCategory__hmf_once_v1_150535;

  return v3;
}

void __48__HMDVideoStreamInterfaceDataSource_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_150535;
  logCategory__hmf_once_v1_150535 = v1;
}

@end