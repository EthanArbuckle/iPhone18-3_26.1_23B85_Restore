@interface MKFPhotosPerson
@end

@implementation MKFPhotosPerson

void __32___MKFPhotosPerson_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"user.home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_10702;
  homeRelation__hmf_once_v1_10702 = v0;
}

@end