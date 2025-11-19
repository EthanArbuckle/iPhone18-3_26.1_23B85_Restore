@interface MKFRemovedUserAccessCode
@end

@implementation MKFRemovedUserAccessCode

void __41___MKFRemovedUserAccessCode_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_259433;
  homeRelation__hmf_once_v1_259433 = v0;
}

@end