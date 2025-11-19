@interface MKFAction
@end

@implementation MKFAction

void __26___MKFAction_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"actionSet.home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_108740;
  homeRelation__hmf_once_v1_108740 = v0;
}

@end