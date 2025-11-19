@interface MKFGuestAccessCode
@end

@implementation MKFGuestAccessCode

void __35___MKFGuestAccessCode_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_79316;
  homeRelation__hmf_once_v1_79316 = v0;
}

@end