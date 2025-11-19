@interface MKFServiceGroup
@end

@implementation MKFServiceGroup

void __32___MKFServiceGroup_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1;
  homeRelation__hmf_once_v1 = v0;
}

@end