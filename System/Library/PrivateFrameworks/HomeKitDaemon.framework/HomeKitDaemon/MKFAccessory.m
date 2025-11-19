@interface MKFAccessory
@end

@implementation MKFAccessory

void __29___MKFAccessory_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_21721;
  homeRelation__hmf_once_v1_21721 = v0;
}

@end