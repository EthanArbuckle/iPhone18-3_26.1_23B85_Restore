@interface HMDAccessoryFirmwareUpdateAllowPolicy
+ (id)logCategory;
@end

@implementation HMDAccessoryFirmwareUpdateAllowPolicy

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_103607 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_103607, &__block_literal_global_119);
  }

  v3 = logCategory__hmf_once_v14_103608;

  return v3;
}

uint64_t __52__HMDAccessoryFirmwareUpdateAllowPolicy_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_103608;
  logCategory__hmf_once_v14_103608 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end