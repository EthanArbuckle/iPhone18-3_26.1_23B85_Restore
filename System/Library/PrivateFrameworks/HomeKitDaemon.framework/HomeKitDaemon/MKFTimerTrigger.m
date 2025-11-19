@interface MKFTimerTrigger
@end

@implementation MKFTimerTrigger

void __32___MKFTimerTrigger_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_132468;
  homeRelation__hmf_once_v1_132468 = v0;
}

@end