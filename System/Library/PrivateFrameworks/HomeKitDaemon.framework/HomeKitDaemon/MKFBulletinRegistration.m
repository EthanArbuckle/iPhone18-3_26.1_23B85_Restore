@interface MKFBulletinRegistration
@end

@implementation MKFBulletinRegistration

void __40___MKFBulletinRegistration_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"user.home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_128189;
  homeRelation__hmf_once_v1_128189 = v0;
}

@end