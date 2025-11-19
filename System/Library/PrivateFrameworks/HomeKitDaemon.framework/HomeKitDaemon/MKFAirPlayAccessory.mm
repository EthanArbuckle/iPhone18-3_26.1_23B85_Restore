@interface MKFAirPlayAccessory
@end

@implementation MKFAirPlayAccessory

void __36___MKFAirPlayAccessory_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_72004;
  homeRelation__hmf_once_v1_72004 = v0;
}

@end