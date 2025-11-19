@interface DKPerformSyncDownPeerAdditionsOperation
@end

@implementation DKPerformSyncDownPeerAdditionsOperation

uint64_t __87___DKPerformSyncDownPeerAdditionsOperation__updateEventStatsWithIsNewestMissingWindow___block_invoke()
{
  v0 = [_DKEventTypeStatsCounter counterInCollection:@"sync_down_additions_window" withEventName:@"age" eventType:&unk_1F05EF5A8 eventTypePossibleValues:?];
  v1 = _updateEventStatsWithIsNewestMissingWindow__syncDownAdditionsWindowAgeCounter;
  _updateEventStatsWithIsNewestMissingWindow__syncDownAdditionsWindowAgeCounter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __96___DKPerformSyncDownPeerAdditionsOperation__updateEventStatsWithPreviousSyncDate_transportType___block_invoke()
{
  v0 = [_DKEventTypeStatsTimerCounter counterInCollection:@"sync_down_additions_cadence" withEventName:@"transport" eventType:&unk_1F05EF5C0 eventTypePossibleValues:?];
  v1 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter_2;
  _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter_2 = v0;

  v2 = [_DKEventStatsTimerCounter counterInCollection:@"sync_down_additions_cadence" withEventName:?];
  v3 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter_2;
  _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter_2 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __110___DKPerformSyncDownPeerAdditionsOperation__updateEventStatsWithSyncLatencyOfEvent_ingressDate_transportType___block_invoke()
{
  v0 = [_DKEventTypeStatsTimerCounter counterInCollection:@"sync_down_additions_latency" withEventName:@"transport" eventType:&unk_1F05EF5D8 eventTypePossibleValues:?];
  v1 = _updateEventStatsWithSyncLatencyOfEvent_ingressDate_transportType__syncDownAdditionsLatencyByTransportCounter;
  _updateEventStatsWithSyncLatencyOfEvent_ingressDate_transportType__syncDownAdditionsLatencyByTransportCounter = v0;

  v2 = [_DKEventStatsTimerCounter counterInCollection:@"sync_down_additions_latency" withEventName:?];
  v3 = _updateEventStatsWithSyncLatencyOfEvent_ingressDate_transportType__syncDownAdditionsLatencyCounter;
  _updateEventStatsWithSyncLatencyOfEvent_ingressDate_transportType__syncDownAdditionsLatencyCounter = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __102___DKPerformSyncDownPeerAdditionsOperation__updateEventStatsWithTotal_streamNameCounts_transportType___block_invoke()
{
  v0 = [_DKEventStatsCounter counterInCollection:@"sync_down_additions_total" withEventName:?];
  v1 = _updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsTotalCounter;
  _updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsTotalCounter = v0;

  v2 = [_DKEventTypeStatsCounter counterInCollection:@"sync_down_additions_total_by_transport" withEventName:@"transport" eventType:&unk_1F05EF5F0 eventTypePossibleValues:?];
  v3 = _updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsTotalByTransportCounter;
  _updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsTotalByTransportCounter = v2;

  v4 = objc_opt_new();
  v5 = _updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsCountersByStreamName;
  _updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsCountersByStreamName = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

void __93___DKPerformSyncDownPeerAdditionsOperation_performSyncDownPeerAdditionsWithCompletedWindows___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() description];
  if ([OUTLINED_FUNCTION_26_4(*(a1 + 32)) transportType] == 8)
  {
    v6 = "up to";
  }

  else
  {
    v6 = "down from";
  }

  v7 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
  v8 = &stru_1F05B9908;
  if ([OUTLINED_FUNCTION_5_13(*(a1 + 32)) me])
  {
    v9 = @"pseudo ";
  }

  else
  {
    v9 = &stru_1F05B9908;
  }

  v10 = [OUTLINED_FUNCTION_5_13(*(a1 + 32)) identifier];
  v11 = [OUTLINED_FUNCTION_5_13(*(a1 + 32)) model];
  if (v11)
  {
    v12 = MEMORY[0x1E696AEC0];
    v7 = [OUTLINED_FUNCTION_5_13(*(a1 + 32)) model];
    v8 = [v12 stringWithFormat:@" (%@)", v7];
  }

  v13 = [OUTLINED_FUNCTION_26_4(*(a1 + 32)) name];
  OUTLINED_FUNCTION_24_4();
  v18 = v6;
  v19 = 2114;
  v20 = v9;
  v21 = 2114;
  v22 = v10;
  v23 = 2114;
  v24 = v8;
  v25 = 2114;
  v26 = v14;
  OUTLINED_FUNCTION_15_0(&dword_191750000, a2, v15, "%{public}@: Skipped additions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to no changes", v17);

  if (v11)
  {
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end