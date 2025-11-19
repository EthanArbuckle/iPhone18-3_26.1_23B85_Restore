@interface MKFActionSet
@end

@implementation MKFActionSet

void __29___MKFActionSet_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_213893;
  homeRelation__hmf_once_v1_213893 = v0;
}

@end