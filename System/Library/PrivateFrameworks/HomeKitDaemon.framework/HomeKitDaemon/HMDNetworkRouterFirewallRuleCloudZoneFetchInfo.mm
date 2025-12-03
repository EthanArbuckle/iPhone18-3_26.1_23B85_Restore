@interface HMDNetworkRouterFirewallRuleCloudZoneFetchInfo
+ (id)logCategory;
- (void)finishWithError:(id)error;
@end

@implementation HMDNetworkRouterFirewallRuleCloudZoneFetchInfo

- (void)finishWithError:(id)error
{
  errorCopy = error;
  mirrorInput = [(HMDNetworkRouterFirewallRuleCloudZoneFetchInfo *)self mirrorInput];
  [mirrorInput abort];

  v6.receiver = self;
  v6.super_class = HMDNetworkRouterFirewallRuleCloudZoneFetchInfo;
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)&v6 finishWithError:errorCopy];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_213062 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_213062, &__block_literal_global_213063);
  }

  v3 = logCategory__hmf_once_v1_213064;

  return v3;
}

void __61__HMDNetworkRouterFirewallRuleCloudZoneFetchInfo_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_213064;
  logCategory__hmf_once_v1_213064 = v1;
}

@end