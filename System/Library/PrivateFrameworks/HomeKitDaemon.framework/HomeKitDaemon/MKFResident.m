@interface MKFResident
@end

@implementation MKFResident

void __28___MKFResident_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_104132;
  homeRelation__hmf_once_v1_104132 = v0;
}

@end