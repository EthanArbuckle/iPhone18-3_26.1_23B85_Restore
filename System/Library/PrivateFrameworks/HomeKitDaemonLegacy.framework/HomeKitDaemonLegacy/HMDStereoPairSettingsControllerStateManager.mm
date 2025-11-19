@interface HMDStereoPairSettingsControllerStateManager
+ (id)logCategory;
@end

@implementation HMDStereoPairSettingsControllerStateManager

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_22378 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_22378, &__block_literal_global_22379);
  }

  v3 = logCategory__hmf_once_v1_22380;

  return v3;
}

uint64_t __58__HMDStereoPairSettingsControllerStateManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_22380;
  logCategory__hmf_once_v1_22380 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end