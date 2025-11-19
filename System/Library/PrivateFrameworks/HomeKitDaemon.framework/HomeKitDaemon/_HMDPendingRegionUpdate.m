@interface _HMDPendingRegionUpdate
+ (id)logCategory;
- (id)attributeDescriptions;
@end

@implementation _HMDPendingRegionUpdate

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(_HMDPendingRegionUpdate *)self state];
  v4 = HMRegionStateString();
  v5 = [v3 initWithName:@"State" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t112 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t112, &__block_literal_global_423);
  }

  v3 = logCategory__hmf_once_v113;

  return v3;
}

@end