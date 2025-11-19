@interface MKFHomePerson
@end

@implementation MKFHomePerson

void __30___MKFHomePerson_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_162627;
  homeRelation__hmf_once_v1_162627 = v0;
}

@end