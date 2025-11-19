@interface MKFPresenceEvent
@end

@implementation MKFPresenceEvent

void __33___MKFPresenceEvent_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"trigger.home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_75045;
  homeRelation__hmf_once_v1_75045 = v0;
}

@end