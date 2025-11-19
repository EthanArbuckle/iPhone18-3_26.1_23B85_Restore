@interface HMDVideoStreamInterfaceDataSource
+ (id)logCategory;
@end

@implementation HMDVideoStreamInterfaceDataSource

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_67266 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_67266, &__block_literal_global_67267);
  }

  v3 = logCategory__hmf_once_v1_67268;

  return v3;
}

uint64_t __48__HMDVideoStreamInterfaceDataSource_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_67268;
  logCategory__hmf_once_v1_67268 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end