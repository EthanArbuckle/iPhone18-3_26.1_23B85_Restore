@interface MKFNotificationRegistration
@end

@implementation MKFNotificationRegistration

void __44___MKFNotificationRegistration_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"user.home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_197852;
  homeRelation__hmf_once_v1_197852 = v0;
}

@end