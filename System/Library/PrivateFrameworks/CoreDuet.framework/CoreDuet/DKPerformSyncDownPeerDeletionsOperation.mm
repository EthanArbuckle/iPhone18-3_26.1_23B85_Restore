@interface DKPerformSyncDownPeerDeletionsOperation
@end

@implementation DKPerformSyncDownPeerDeletionsOperation

void __94___DKPerformSyncDownPeerDeletionsOperation_performSyncDownPeerDeletionsWithPreviousUntilDate___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a1[4];
  v10 = v7;
  if (v7)
  {
    v9 = [v8 errors];
    [v9 addObject:v10];

    [a1[4] endOperation];
  }

  else
  {
    [(_DKPerformSyncDownPeerDeletionsOperation *)v8 handleFetchedDeletedEventIDs:a2 startDate:a1[5] endDate:a1[6] untilDate:a3];
  }
}

uint64_t __96___DKPerformSyncDownPeerDeletionsOperation__updateEventStatsWithPreviousSyncDate_transportType___block_invoke()
{
  v0 = [_DKEventTypeStatsTimerCounter counterInCollection:@"sync_down_deletions_cadence" withEventName:@"transport" eventType:&unk_1F05EF3E0 eventTypePossibleValues:?];
  v1 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter;
  _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter = v0;

  v2 = [_DKEventStatsTimerCounter counterInCollection:@"sync_down_deletions_cadence" withEventName:?];
  v3 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter;
  _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __85___DKPerformSyncDownPeerDeletionsOperation__updateEventStatsWithTotal_transportType___block_invoke()
{
  v0 = [_DKEventStatsCounter counterInCollection:@"sync_down_deletions_total" withEventName:?];
  v1 = _updateEventStatsWithTotal_transportType__syncDownDeletionsTotalCounter;
  _updateEventStatsWithTotal_transportType__syncDownDeletionsTotalCounter = v0;

  v2 = [_DKEventTypeStatsCounter counterInCollection:@"sync_down_deletions_total_by_transport" withEventName:@"transport" eventType:&unk_1F05EF3F8 eventTypePossibleValues:?];
  v3 = _updateEventStatsWithTotal_transportType__syncDownDeletionsTotalByTransportCounter;
  _updateEventStatsWithTotal_transportType__syncDownDeletionsTotalByTransportCounter = v2;

  v4 = objc_opt_new();
  v5 = _updateEventStatsWithTotal_transportType__syncDownDeletionsCountersByStreamName;
  _updateEventStatsWithTotal_transportType__syncDownDeletionsCountersByStreamName = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

@end