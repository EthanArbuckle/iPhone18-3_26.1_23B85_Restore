@interface HMDAccessoryFirmwareUpdateDenyPolicy
+ (id)logCategory;
- (void)configure;
@end

@implementation HMDAccessoryFirmwareUpdateDenyPolicy

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_155600 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_155600, &__block_literal_global_110_155601);
  }

  v3 = logCategory__hmf_once_v11_155602;

  return v3;
}

void __51__HMDAccessoryFirmwareUpdateDenyPolicy_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11_155602;
  logCategory__hmf_once_v11_155602 = v1;
}

- (void)configure
{
  v10 = *MEMORY[0x277D85DE8];
  [(HMDAccessoryFirmwareUpdatePolicy *)self setStatus:0];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Deny policy configured", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277D85DE8];
}

@end