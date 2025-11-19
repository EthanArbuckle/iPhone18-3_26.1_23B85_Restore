@interface MKFBulletinCondition
@end

@implementation MKFBulletinCondition

void __37___MKFBulletinCondition_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"bulletinRegistration.user.home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_120624;
  homeRelation__hmf_once_v1_120624 = v0;
}

@end