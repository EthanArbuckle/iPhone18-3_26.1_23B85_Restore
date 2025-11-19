@interface MKFHomeSetting
@end

@implementation MKFHomeSetting

void __31___MKFHomeSetting_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_59431;
  homeRelation__hmf_once_v1_59431 = v0;
}

@end