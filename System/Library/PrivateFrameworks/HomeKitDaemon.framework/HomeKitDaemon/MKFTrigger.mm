@interface MKFTrigger
@end

@implementation MKFTrigger

void __27___MKFTrigger_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_224389;
  homeRelation__hmf_once_v1_224389 = v0;
}

@end