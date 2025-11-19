@interface MKFUserAccessCode
@end

@implementation MKFUserAccessCode

void __34___MKFUserAccessCode_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"user.home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_107870;
  homeRelation__hmf_once_v1_107870 = v0;
}

@end