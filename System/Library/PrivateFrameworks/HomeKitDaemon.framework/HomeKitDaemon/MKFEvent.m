@interface MKFEvent
@end

@implementation MKFEvent

void __25___MKFEvent_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"trigger.home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v2;
  homeRelation__hmf_once_v2 = v0;
}

@end