@interface DKPerformSyncDownPeerOperation
@end

@implementation DKPerformSyncDownPeerOperation

uint64_t __70___DKPerformSyncDownPeerOperation__updateEventStatsWithTransportType___block_invoke()
{
  v0 = [_DKEventTypeStatsCounter counterInCollection:@"sync_rapport_vs_cloud" withEventName:@"transport" eventType:&unk_1F05EF200 eventTypePossibleValues:?];
  v1 = _updateEventStatsWithTransportType__rapportVsCloudOptimizationCounter;
  _updateEventStatsWithTransportType__rapportVsCloudOptimizationCounter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end