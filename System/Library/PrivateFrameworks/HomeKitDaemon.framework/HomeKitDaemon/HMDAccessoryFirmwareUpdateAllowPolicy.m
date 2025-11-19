@interface HMDAccessoryFirmwareUpdateAllowPolicy
+ (id)logCategory;
@end

@implementation HMDAccessoryFirmwareUpdateAllowPolicy

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_155610 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_155610, &__block_literal_global_119);
  }

  v3 = logCategory__hmf_once_v14_155611;

  return v3;
}

void __52__HMDAccessoryFirmwareUpdateAllowPolicy_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_155611;
  logCategory__hmf_once_v14_155611 = v1;
}

@end