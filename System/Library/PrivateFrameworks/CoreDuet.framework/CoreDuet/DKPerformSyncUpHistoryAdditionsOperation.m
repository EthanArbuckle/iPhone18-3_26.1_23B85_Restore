@interface DKPerformSyncUpHistoryAdditionsOperation
@end

@implementation DKPerformSyncUpHistoryAdditionsOperation

void __100___DKPerformSyncUpHistoryAdditionsOperation_performSyncUpHistoryAdditionsWithPreviousHighWaterMark___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  +[_DKPerformSyncUpHistoryAdditionsOperation _updateEventStatsWithTotal:streamNameCounts:transportType:](_DKPerformSyncUpHistoryAdditionsOperation, [v3 count], *(a1 + 40), objc_msgSend(*(*(a1 + 48) + 304), "transportType"));
  [(_DKPerformSyncUpHistoryAdditionsOperation *)*(a1 + 48) handleUpdateStorageWithFetchedWindow:*(a1 + 64) eventsCount:v4 error:?];
}

uint64_t __97___DKPerformSyncUpHistoryAdditionsOperation__updateEventStatsWithPreviousSyncDate_transportType___block_invoke()
{
  v0 = [_DKEventTypeStatsTimerCounter counterInCollection:@"sync_up_history_additions_cadence" withEventName:@"transport" eventType:&unk_1F05EF4B8 eventTypePossibleValues:?];
  v1 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter_0;
  _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter_0 = v0;

  v2 = [_DKEventStatsTimerCounter counterInCollection:@"sync_up_history_additions_cadence" withEventName:?];
  v3 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter_0;
  _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter_0 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __103___DKPerformSyncUpHistoryAdditionsOperation__updateEventStatsWithTotal_streamNameCounts_transportType___block_invoke()
{
  v0 = [_DKEventStatsCounter counterInCollection:@"sync_up_history_additions_total" withEventName:?];
  v1 = _updateEventStatsWithTotal_streamNameCounts_transportType__syncUpHistoryAdditionsTotalCounter;
  _updateEventStatsWithTotal_streamNameCounts_transportType__syncUpHistoryAdditionsTotalCounter = v0;

  v2 = [_DKEventTypeStatsCounter counterInCollection:@"sync_up_history_additions_total_by_transport" withEventName:@"transport" eventType:&unk_1F05EF4D0 eventTypePossibleValues:?];
  v3 = _updateEventStatsWithTotal_streamNameCounts_transportType__syncUpHistoryAdditionsTotalByTransportCounter;
  _updateEventStatsWithTotal_streamNameCounts_transportType__syncUpHistoryAdditionsTotalByTransportCounter = v2;

  v4 = objc_opt_new();
  v5 = _updateEventStatsWithTotal_streamNameCounts_transportType__syncUpHistoryAdditionsCountersByStreamName;
  _updateEventStatsWithTotal_streamNameCounts_transportType__syncUpHistoryAdditionsCountersByStreamName = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

void __100___DKPerformSyncUpHistoryAdditionsOperation_handleUpdateStorageWithFetchedWindow_eventsCount_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [(_DKSyncType *)*(a1 + 40) urgency];
  [(_DKPerformSyncUpHistoryAdditionsOperation *)v1 performSyncUpHistoryAdditionsWithPreviousHighWaterMark:v2];
}

@end