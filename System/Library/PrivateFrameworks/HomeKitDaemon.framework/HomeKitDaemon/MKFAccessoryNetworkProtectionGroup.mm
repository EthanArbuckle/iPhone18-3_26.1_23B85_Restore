@interface MKFAccessoryNetworkProtectionGroup
@end

@implementation MKFAccessoryNetworkProtectionGroup

void __51___MKFAccessoryNetworkProtectionGroup_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_200173;
  homeRelation__hmf_once_v1_200173 = v0;
}

@end