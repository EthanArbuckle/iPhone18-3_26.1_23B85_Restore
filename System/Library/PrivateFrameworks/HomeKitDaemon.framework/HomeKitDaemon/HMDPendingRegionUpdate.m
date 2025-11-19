@interface HMDPendingRegionUpdate
@end

@implementation HMDPendingRegionUpdate

void __38___HMDPendingRegionUpdate_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v113;
  logCategory__hmf_once_v113 = v1;
}

@end