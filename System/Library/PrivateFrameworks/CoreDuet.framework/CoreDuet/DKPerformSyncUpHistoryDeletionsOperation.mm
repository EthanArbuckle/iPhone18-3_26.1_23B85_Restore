@interface DKPerformSyncUpHistoryDeletionsOperation
@end

@implementation DKPerformSyncUpHistoryDeletionsOperation

void __74___DKPerformSyncUpHistoryDeletionsOperation_performSyncUpHistoryDeletions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [_DKCKError isIgnorableError:v3];
    v5 = +[_CDLogging syncChannel];
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __74___DKPerformSyncUpHistoryDeletionsOperation_performSyncUpHistoryDeletions__block_invoke_cold_2(a1, v3, v6);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __74___DKPerformSyncUpHistoryDeletionsOperation_performSyncUpHistoryDeletions__block_invoke_cold_1(a1, v3, v6);
    }
  }

  else
  {
    v6 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __74___DKPerformSyncUpHistoryDeletionsOperation_performSyncUpHistoryDeletions__block_invoke_cold_3(a1, v6);
    }
  }

  [*(a1 + 32) endOperation];
}

void __100___DKPerformSyncUpHistoryDeletionsOperation_performSyncUpHistoryDeletionsWithPreviousHighWaterMark___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v7 = a2;
  v6 = [(_DKSyncDeletedEventIDs *)v5 count];
  [(_DKPerformSyncUpHistoryDeletionsOperation *)v2 handleUpdateStorageWithStartDate:v3 endDate:v4 deletedEventIDsCount:v6 orError:v7];
}

uint64_t __97___DKPerformSyncUpHistoryDeletionsOperation__updateEventStatsWithPreviousSyncDate_transportType___block_invoke()
{
  v0 = [_DKEventTypeStatsTimerCounter counterInCollection:@"sync_up_history_deletions_cadence" withEventName:@"transport" eventType:&unk_1F05EF4E8 eventTypePossibleValues:?];
  v1 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter_1;
  _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter_1 = v0;

  v2 = [_DKEventStatsTimerCounter counterInCollection:@"sync_up_history_deletions_cadence" withEventName:?];
  v3 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter_1;
  _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter_1 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __86___DKPerformSyncUpHistoryDeletionsOperation__updateEventStatsWithTotal_transportType___block_invoke()
{
  v0 = [_DKEventStatsCounter counterInCollection:@"sync_up_history_deletions_total" withEventName:?];
  v1 = _updateEventStatsWithTotal_transportType__syncUpHistoryDeletionsTotalCounter;
  _updateEventStatsWithTotal_transportType__syncUpHistoryDeletionsTotalCounter = v0;

  v2 = [_DKEventTypeStatsCounter counterInCollection:@"sync_up_history_deletions_total_by_transport" withEventName:@"transport" eventType:&unk_1F05EF500 eventTypePossibleValues:?];
  v3 = _updateEventStatsWithTotal_transportType__syncUpHistoryDeletionsTotalByTransportCounter;
  _updateEventStatsWithTotal_transportType__syncUpHistoryDeletionsTotalByTransportCounter = v2;

  v4 = objc_opt_new();
  v5 = _updateEventStatsWithTotal_transportType__syncUpHistoryDeletionsCountersByStreamName;
  _updateEventStatsWithTotal_transportType__syncUpHistoryDeletionsCountersByStreamName = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

void __74___DKPerformSyncUpHistoryDeletionsOperation_performSyncUpHistoryDeletions__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() description];
  v8 = [(NSDate *)*(a1 + 40) dk_localtimeString];
  v9 = [(NSDate *)*(a1 + 48) dk_localtimeString];
  v10 = [a2 domain];
  [a2 code];
  OUTLINED_FUNCTION_1_19();
  _os_log_error_impl(&dword_191750000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Failed while fast forwarding bookmark [%{public}@ ending %{public}@]: %{public}@:%lld (%@)", v12, 0x3Eu);

  v11 = *MEMORY[0x1E69E9840];
}

void __74___DKPerformSyncUpHistoryDeletionsOperation_performSyncUpHistoryDeletions__block_invoke_cold_2(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() description];
  v8 = [(NSDate *)*(a1 + 40) dk_localtimeString];
  v9 = [(NSDate *)*(a1 + 48) dk_localtimeString];
  v10 = [a2 domain];
  [a2 code];
  OUTLINED_FUNCTION_1_19();
  OUTLINED_FUNCTION_15_0(&dword_191750000, a3, v11, "%{public}@: Did not fast forwarding bookmark [%{public}@ ending %{public}@]: %{public}@:%lld (%@)", v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __74___DKPerformSyncUpHistoryDeletionsOperation_performSyncUpHistoryDeletions__block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v3 = a1;
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() description];
  v6 = [(NSDate *)*(v3 + 40) dk_localtimeString];
  v7 = [(NSDate *)*(v3 + 48) dk_localtimeString];
  v8 = &stru_1F05B9908;
  if ([*(*(v3 + 32) + 320) me])
  {
    v9 = @"pseudo ";
  }

  else
  {
    v9 = &stru_1F05B9908;
  }

  v10 = [OUTLINED_FUNCTION_11_7() identifier];
  v12 = [OUTLINED_FUNCTION_11_7() model];
  if (v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    v3 = [OUTLINED_FUNCTION_11_7() model];
    v8 = [v13 stringWithFormat:@" (%@)", v3];
  }

  v15 = 138544642;
  v16 = v5;
  v17 = 2114;
  v18 = v6;
  v19 = 2114;
  v20 = v7;
  v21 = 2114;
  v22 = v9;
  v23 = 2114;
  v24 = v10;
  v25 = 2114;
  v26 = v8;
  OUTLINED_FUNCTION_15_0(&dword_191750000, a2, v11, "%{public}@: Successfully fast forwarded bookmark [%{public}@ ending %{public}@] for %{public}@peer %{public}@%{public}@", &v15);
  if (v12)
  {
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end