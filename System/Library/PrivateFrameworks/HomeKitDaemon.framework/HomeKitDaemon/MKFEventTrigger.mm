@interface MKFEventTrigger
@end

@implementation MKFEventTrigger

void __32___MKFEventTrigger_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_232942;
  homeRelation__hmf_once_v1_232942 = v0;
}

@end