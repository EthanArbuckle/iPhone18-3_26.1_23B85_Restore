@interface DKSync2Coordinator
@end

@implementation DKSync2Coordinator

void __39___DKSync2Coordinator_initWithContext___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(_DKSync2Coordinator *)WeakRetained handleDataProtectionChangeFor:v5 willBeAvailable:a3];
}

void __39___DKSync2Coordinator_initWithContext___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(_DKSync2Coordinator *)WeakRetained _reregisterPeriodicJob];
}

uint64_t __45___DKSync2Coordinator__performEnableAndStart__block_invoke(uint64_t a1)
{
  [(_DKSync2Coordinator *)*(a1 + 32) configureTracker];
  [*(a1 + 32) setupStorage];
  v2 = *(a1 + 32);

  return [v2 start];
}

void __39___DKSync2Coordinator_configureTracker__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleStatusChangeForPeer:v5 previousTransports:a3];
}

uint64_t __88___DKSync2Coordinator_shouldDeferSyncOperationWithClass_syncType_transport_peer_policy___block_invoke()
{
  v0 = [_DKEventTypeStatsCounter counterInCollection:@"xpc_activity_should_defer" withEventName:@"result" eventType:&unk_1F05EF1A0 eventTypePossibleValues:?];
  v1 = shouldDeferSyncOperationWithClass_syncType_transport_peer_policy__shouldDeferCounter;
  shouldDeferSyncOperationWithClass_syncType_transport_peer_policy__shouldDeferCounter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __51___DKSync2Coordinator_fetchSourceDeviceIDFromPeer___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  [(_DKSync2Coordinator *)*(a1 + 32) handleFetchedSourceDeviceID:a2 version:a3 fromPeer:*(a1 + 40) error:a4];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [(_DKSync2Coordinator *)v5 removeBusyTransaction:v6];
}

void __37___DKSync2Coordinator_syncWithReply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __37___DKSync2Coordinator_syncWithReply___block_invoke_2;
  v2[3] = &unk_1E73674B8;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [(_DKSync2Coordinator *)v1 _performSyncWithForceSync:v2 completion:?];
}

void __37___DKSync2Coordinator_syncWithReply___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_CDLogging syncChannel];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37___DKSync2Coordinator_syncWithReply___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [objc_opt_class() description];
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Syncing succeeded", &v10, 0xCu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v3 == 0, v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __59___DKSync2Coordinator_synchronizeWithUrgency_client_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59___DKSync2Coordinator_synchronizeWithUrgency_client_reply___block_invoke_2;
  v4[3] = &unk_1E7367508;
  v3 = *(a1 + 56);
  v5 = *(a1 + 48);
  [(_DKSync2Coordinator *)v1 _synchronizeWithUrgency:v3 client:v2 completion:v4];
}

uint64_t __59___DKSync2Coordinator_synchronizeWithUrgency_client_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0, a2);
  }

  return result;
}

void __65___DKSync2Coordinator__synchronizeWithUrgency_client_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_CDLogging syncChannel];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37___DKSync2Coordinator_syncWithReply___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [objc_opt_class() description];
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Syncing succeeded", &v10, 0xCu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __59___DKSync2Coordinator__performSyncWithSyncType_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [objc_opt_class() description];
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&dword_191750000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Finishing sync", &v14, 0xCu);
  }

  [(_DKSync2State *)*(a1 + 40) finishWithError:v3];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 12);
    if (v9 == *(a1 + 40))
    {
      *(WeakRetained + 12) = 0;
    }
  }

  v10 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = [objc_opt_class() description];
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_191750000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished sync", &v14, 0xCu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __51___DKSync2Coordinator___performSyncWithCompletion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v2);

  v3 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = [objc_opt_class() description];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_191750000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Started sync operations", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __51___DKSync2Coordinator___performSyncWithCompletion___block_invoke_643(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    WeakRetained = [WeakRetained isCancelled];
    v3 = v9;
    if ((WeakRetained & 1) == 0)
    {
      v4 = [v9 errors];
      v5 = [v4 count];

      v3 = v9;
      if (!v5)
      {
        v6 = objc_loadWeakRetained((a1 + 40));
        v7 = v6;
        if (v6)
        {
          [*(v6 + 27) removeObjectForKey:@"DeletedSyncedEventCount"];
          v7[201] = 1;
        }

        v3 = v9;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

void __51___DKSync2Coordinator___performSyncWithCompletion___block_invoke_2(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  [(_DKSync2Coordinator *)WeakRetained __finishSyncWithTransaction:a1[5] startDate:a1[6] completion:?];
}

uint64_t __53___DKSync2Coordinator__updateEventStatsWithSyncType___block_invoke()
{
  v0 = [_DKEventTypeStatsCounter counterInCollection:@"sync_is_single_device" withEventName:@"is_single_device" eventType:&unk_1F05EF1B8 eventTypePossibleValues:?];
  v1 = _updateEventStatsWithSyncType__isSingleDeviceSyncCounter;
  _updateEventStatsWithSyncType__isSingleDeviceSyncCounter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __77___DKSync2Coordinator__updateEventStatsWithSyncElapsedTimeStartDate_endDate___block_invoke()
{
  v0 = [_DKEventStatsTimerCounter counterInCollection:@"sync_elapsed_time" withEventName:?];
  v1 = _updateEventStatsWithSyncElapsedTimeStartDate_endDate__syncElapsedTimeCounter;
  _updateEventStatsWithSyncElapsedTimeStartDate_endDate__syncElapsedTimeCounter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __50___DKSync2Coordinator__possiblyPerformInitialSync__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(_DKSync2Coordinator *)WeakRetained _performInitialSync];

  v3 = *(*(a1 + 32) + 216);
  v4 = [MEMORY[0x1E695DF00] date];
  [v3 setDate:v4 forKey:@"InitialSyncWithCloudDate"];
}

void __42___DKSync2Coordinator__performInitialSync__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42___DKSync2Coordinator__performInitialSync__block_invoke_cold_1();
    }
  }
}

void __56___DKSync2Coordinator__registerPeriodicJobWithInterval___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(_DKSync2Coordinator *)WeakRetained _performPeriodicJob];
    WeakRetained = v2;
  }
}

void __60___DKSync2Coordinator__registerRapportLaunchOnDemandHandler__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  string = xpc_dictionary_get_string(v3, *MEMORY[0x1E69E9E40]);
  if (string)
  {
    if (!strcmp(string, "OnIncomingRequest"))
    {
      v5 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = [objc_opt_class() description];
        v10 = 138543362;
        v11 = v7;
        _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Launched by Rapport to service a request", &v10, 0xCu);
      }
    }

    if (xpc_dictionary_get_BOOL(v3, "replyRequired"))
    {
      reply = xpc_dictionary_create_reply(v3);
      if (reply)
      {
        xpc_dictionary_send_reply();
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __77___DKSync2Coordinator__deleteNextBatchOfOurSiriEventsFromCloudWithStartDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77___DKSync2Coordinator__deleteNextBatchOfOurSiriEventsFromCloudWithStartDate___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = [*(a1 + 32) lastObject];
    v4 = [v5 creationDate];

    if (v4)
    {
      [(_DKSync2Coordinator *)*(a1 + 40) _deleteNextBatchOfOurSiriEventsFromCloudWithStartDate:v4];
    }

    else
    {
      v6 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        __77___DKSync2Coordinator__deleteNextBatchOfOurSiriEventsFromCloudWithStartDate___block_invoke_cold_2(a1, v6);
      }
    }
  }
}

void __67___DKSync2Coordinator__registerTriggeredSyncActivityWithIsStartup___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state != 2)
  {
    if (!state)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __67___DKSync2Coordinator__registerTriggeredSyncActivityWithIsStartup___block_invoke_2;
      v9[3] = &unk_1E73676C0;
      objc_copyWeak(&v11, (a1 + 32));
      v10 = v3;
      v12 = *(a1 + 40);
      [_DKSyncSerializer performSyncBlock:v9];

      objc_destroyWeak(&v11);
    }

    goto LABEL_13;
  }

  if (xpc_activity_set_state(v3, 4))
  {
LABEL_12:
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67___DKSync2Coordinator__registerTriggeredSyncActivityWithIsStartup___block_invoke_715;
    v6[3] = &unk_1E73675D0;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v3;
    [_DKSyncSerializer performAsyncBlock:v6];

    objc_destroyWeak(&v8);
    goto LABEL_13;
  }

  if (!xpc_activity_should_defer(v3))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      __67___DKSync2Coordinator__registerTriggeredSyncActivityWithIsStartup___block_invoke_cold_1();
    }

    xpc_activity_set_completion_status();
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Warning: deferring activity '%@' before it started", buf, 0xCu);
  }

  xpc_activity_set_state(v3, 3);
LABEL_13:

  v5 = *MEMORY[0x1E69E9840];
}

void __67___DKSync2Coordinator__registerTriggeredSyncActivityWithIsStartup___block_invoke_715(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(_DKSync2Coordinator *)WeakRetained _runTriggeredSyncActivity:?];
}

void __83___DKSync2Coordinator_APSConnectionDelegate__connection_didReceiveIncomingMessage___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_CDLogging syncChannel];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __83___DKSync2Coordinator_APSConnectionDelegate__connection_didReceiveIncomingMessage___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [objc_opt_class() description];
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Push-triggered sync succeeded", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __108___DKSync2Coordinator__DKKnowledgeStorageEventNotificationDelegate___databaseDidDeleteFromStreamNameCounts___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_CDLogging syncChannel];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __108___DKSync2Coordinator__DKKnowledgeStorageEventNotificationDelegate___databaseDidDeleteFromStreamNameCounts___block_invoke_cold_1(a1, v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [objc_opt_class() description];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Delete of %@ event streams triggered sync attempt succeeded", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __42___DKSync2Coordinator__performPeriodicJob__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(_DKSync2Coordinator *)*(a1 + 32) _finishActivityWithError:v3];
  v4 = +[_CDLogging syncChannel];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [objc_opt_class() description];
      v8 = [v3 domain];
      [v3 code];
      OUTLINED_FUNCTION_1_2();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v9, v10, OS_LOG_TYPE_ERROR, v11, v12, 0x2Au);

LABEL_6:
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v7 = [objc_opt_class() description];
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4_2();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    goto LABEL_6;
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __60___DKSync2Coordinator__registerCloudSyncAvailablityObserver__block_invoke(uint64_t a1)
{
  v2 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 32);

  [(_DKSync2Coordinator *)v3 _performSyncTogglesChangedActions];
}

void __63___DKSync2Coordinator__registerCloudDeviceCountChangedObserver__block_invoke(uint64_t a1)
{
  v2 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 32);

  [(_DKSync2Coordinator *)v3 _reregisterPeriodicJob];
}

void __58___DKSync2Coordinator__registerRapportAvailablityObserver__block_invoke(uint64_t a1)
{
  v2 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 32);

  [(_DKSync2Coordinator *)v3 _performSyncTogglesChangedActions];
}

void __49___DKSync2Coordinator__runTriggeredSyncActivity___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(_DKSync2Coordinator *)WeakRetained _unregisterTriggeredSyncActivity];
  v4 = +[_CDLogging syncChannel];
  if (OUTLINED_FUNCTION_19_1(v4))
  {
    v5 = *(a1 + 32);
    v6 = [objc_opt_class() description];
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4_2();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __67___DKSync2Coordinator__registerTriggeredSyncActivityWithIsStartup___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(_DKSync2Coordinator *)WeakRetained _checkInTriggeredSyncActivity:*(a1 + 48) isStartup:?];
}

void __37___DKSync2Coordinator_syncWithReply___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_16();
  [OUTLINED_FUNCTION_34(v2 *MEMORY[0x1E69E9840])];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_16_0() domain];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

void __42___DKSync2Coordinator__performInitialSync__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_16();
  [OUTLINED_FUNCTION_34(v2 *MEMORY[0x1E69E9840])];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_16_0() domain];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

void __77___DKSync2Coordinator__deleteNextBatchOfOurSiriEventsFromCloudWithStartDate___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_16();
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(v2 + 40);
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_16_0() domain];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);

  v9 = *MEMORY[0x1E69E9840];
}

void __77___DKSync2Coordinator__deleteNextBatchOfOurSiriEventsFromCloudWithStartDate___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_191750000, a2, OS_LOG_TYPE_FAULT, "%{public}@: Failed to find event creation date while deleting local Siri events", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void __67___DKSync2Coordinator__registerTriggeredSyncActivityWithIsStartup___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Failed to set activity '%@' state to continue", v1, 0xCu);
  v0 = *MEMORY[0x1E69E9840];
}

void __83___DKSync2Coordinator_APSConnectionDelegate__connection_didReceiveIncomingMessage___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_16();
  [OUTLINED_FUNCTION_34(v2 *MEMORY[0x1E69E9840])];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_16_0() domain];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

void __108___DKSync2Coordinator__DKKnowledgeStorageEventNotificationDelegate___databaseDidDeleteFromStreamNameCounts___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() description];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
  v7 = [a2 domain];
  [a2 code];
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_11_1();
  _os_log_error_impl(v8, v9, OS_LOG_TYPE_ERROR, v10, v11, 0x34u);

  v12 = *MEMORY[0x1E69E9840];
}

@end