@interface HMDPendingRegionUpdate
@end

@implementation HMDPendingRegionUpdate

uint64_t __38___HMDPendingRegionUpdate_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v105_169319;
  logCategory__hmf_once_v105_169319 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end