@interface MKFResidentSelection
@end

@implementation MKFResidentSelection

void __37___MKFResidentSelection_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_95952;
  homeRelation__hmf_once_v1_95952 = v0;
}

@end