@interface HMDStereoPairSettingsControllerStateManager
+ (id)logCategory;
@end

@implementation HMDStereoPairSettingsControllerStateManager

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_276274 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_276274, &__block_literal_global_276275);
  }

  v3 = logCategory__hmf_once_v1_276276;

  return v3;
}

void __58__HMDStereoPairSettingsControllerStateManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_276276;
  logCategory__hmf_once_v1_276276 = v1;
}

@end