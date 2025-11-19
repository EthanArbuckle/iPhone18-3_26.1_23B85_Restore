@interface DKSyncCloudKitKnowledgeStorage
@end

@implementation DKSyncCloudKitKnowledgeStorage

uint64_t __49___DKSyncCloudKitKnowledgeStorage_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __69___DKSyncCloudKitKnowledgeStorage_finishStartBecauseCloudIsAvailable__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [(_DKSyncCloudKitKnowledgeStorage *)v3 unregisterUpdateSourceDeviceIdentifiersPeriodicJob];
  [(_DKSyncCloudKitKnowledgeStorage *)*(a1 + 32) finishStartOrError:v4];
}

void __71___DKSyncCloudKitKnowledgeStorage__registerDatabaseChangesSubscription__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __71___DKSyncCloudKitKnowledgeStorage__registerDatabaseChangesSubscription__block_invoke_cold_1();
    }

LABEL_7:

    goto LABEL_8;
  }

  [*(*(a1 + 32) + 16) setBool:1 forKey:@"DidRegisterDatabaseChangesSubscription"];
  if ([v6 count] != 1)
  {
    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __71___DKSyncCloudKitKnowledgeStorage__registerDatabaseChangesSubscription__block_invoke_cold_2();
    }

    goto LABEL_7;
  }

LABEL_8:
}

void __67___DKSyncCloudKitKnowledgeStorage__cloudSyncAvailabilityDidChange___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1[19] & 1) == 0)
  {
    goto LABEL_5;
  }

  v3 = +[_DKCloudUtilities isSyncAvailableAndEnabled];
  v1 = *v2;
  if (v3)
  {
    if (v1)
    {
LABEL_5:
      if (v1[19])
      {
        return;
      }
    }

LABEL_6:
    __67___DKSyncCloudKitKnowledgeStorage__cloudSyncAvailabilityDidChange___block_invoke_cold_2(v2);
    return;
  }

  __67___DKSyncCloudKitKnowledgeStorage__cloudSyncAvailabilityDidChange___block_invoke_cold_1(v1 == 0, v1, v2);
}

uint64_t __75___DKSyncCloudKitKnowledgeStorage__handleAnySpecialnessWithOperationError___block_invoke()
{
  v0 = [_DKEventStatsCounter counterInCollection:@"unrecoverable_decryption_error" withEventName:?];
  v1 = qword_1EADBD5B8;
  qword_1EADBD5B8 = v0;

  v2 = [_DKEventStatsCounter counterInCollection:@"unrecoverable_decryption_error_repeat" withEventName:?];
  v3 = qword_1EADBD5C0;
  qword_1EADBD5C0 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void __75___DKSyncCloudKitKnowledgeStorage__handleAnySpecialnessWithOperationError___block_invoke_87(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v4);

  if (v3)
  {
    v5 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __75___DKSyncCloudKitKnowledgeStorage__handleAnySpecialnessWithOperationError___block_invoke_87_cold_1();
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75___DKSyncCloudKitKnowledgeStorage__handleAnySpecialnessWithOperationError___block_invoke_88;
  v10[3] = &unk_1E7367A20;
  v9 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  v13 = *(a1 + 64);
  [(_DKSyncCloudKitKnowledgeStorage *)v9 _createZoneWithZoneID:v10 completion:?];
}

void __75___DKSyncCloudKitKnowledgeStorage__handleAnySpecialnessWithOperationError___block_invoke_88(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v4);

  v5 = +[_CDLogging syncChannel];
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __75___DKSyncCloudKitKnowledgeStorage__handleAnySpecialnessWithOperationError___block_invoke_88_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = [objc_opt_class() description];
      v9 = *(a1 + 40);
      *buf = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_INFO, "%{public}@: Recreated zone %{public}@ due to unrecoverable decryption error", buf, 0x16u);
    }

    if ([*(a1 + 40) isEqual:*(a1 + 48)])
    {
      [*(*(a1 + 32) + 16) setBool:1 forKey:@"HaveCreatedMyZone"];
    }
  }

  [*(a1 + 56) addObject:*(a1 + 40)];
  v10 = [*(a1 + 56) count];
  if (v10 == [*(a1 + 64) count])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75___DKSyncCloudKitKnowledgeStorage__handleAnySpecialnessWithOperationError___block_invoke_89;
    v12[3] = &unk_1E7367440;
    v12[4] = *(a1 + 32);
    [_DKSyncSerializer performAsyncBlock:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __75___DKSyncCloudKitKnowledgeStorage__handleAnySpecialnessWithOperationError___block_invoke_89(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [objc_opt_class() description];
    *buf = 138543362;
    v14 = v4;
    _os_log_impl(&dword_191750000, v2, OS_LOG_TYPE_INFO, "%{public}@: Fetching source device identifiers after handling unrecoverable decryption errors", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __75___DKSyncCloudKitKnowledgeStorage__handleAnySpecialnessWithOperationError___block_invoke_90;
  v11 = &unk_1E73675F8;
  v12 = v5;
  result = [_DKSyncCloudKitKnowledgeStorage performUpdateSourceDeviceIdentifiersWithCompletion:];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __75___DKSyncCloudKitKnowledgeStorage__handleAnySpecialnessWithOperationError___block_invoke_90(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_CDLogging syncChannel];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __75___DKSyncCloudKitKnowledgeStorage__handleAnySpecialnessWithOperationError___block_invoke_90_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = [objc_opt_class() description];
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_INFO, "%{public}@: Done fetching source device identifiers after handling unrecoverable decryption errors", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __97___DKSyncCloudKitKnowledgeStorage__queueOperationForPrivateCloudDatabase_dependent_policy_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) associateWithCompletedOperation:*(a1 + 40)])
  {
    v2 = *(*(a1 + 48) + 56);
    v3 = *(a1 + 32);

    [v2 submitEventMetric:v3];
  }

  else
  {
    v4 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __97___DKSyncCloudKitKnowledgeStorage__queueOperationForPrivateCloudDatabase_dependent_policy_error___block_invoke_cold_1(a1);
    }
  }
}

uint64_t __86___DKSyncCloudKitKnowledgeStorage_performUpdateSourceDeviceIdentifiersWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __96___DKSyncCloudKitKnowledgeStorage__performThrottledUpdateSourceDeviceIdentifiersWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_not_V2(v7);

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96___DKSyncCloudKitKnowledgeStorage__performThrottledUpdateSourceDeviceIdentifiersWithCompletion___block_invoke_2;
  v10[3] = &unk_1E7367A70;
  objc_copyWeak(&v15, (a1 + 56));
  objc_copyWeak(&v16, (a1 + 64));
  v10[4] = *(a1 + 32);
  v8 = v5;
  v11 = v8;
  v9 = v6;
  v12 = v9;
  v14 = *(a1 + 48);
  v13 = *(a1 + 40);
  [_DKSyncSerializer performSyncBlock:v10];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
}

void __96___DKSyncCloudKitKnowledgeStorage__performThrottledUpdateSourceDeviceIdentifiersWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = objc_loadWeakRetained((a1 + 80));
  v4 = v3;
  if (v3)
  {
    v5 = [v3 metrics];
    v6 = [v5 cloudKitMetrics];
    v7 = [v6 startDate];

    v8 = [MEMORY[0x1E695DF00] date];
    v9 = [*(*(a1 + 32) + 160) syncType];
    +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", v9, 4, v7, v8, [*(a1 + 40) count] == 0);
  }

  v10 = *(a1 + 48);
  if (*(a1 + 48))
  {
    if (([_DKCKError isIgnorableError:?]& 1) == 0)
    {
      v14 = [*(a1 + 40) count];
      v15 = +[_CDLogging syncChannel];
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        if (v16)
        {
          __96___DKSyncCloudKitKnowledgeStorage__performThrottledUpdateSourceDeviceIdentifiersWithCompletion___block_invoke_2_cold_1();
        }
      }

      else if (v16)
      {
        __96___DKSyncCloudKitKnowledgeStorage__performThrottledUpdateSourceDeviceIdentifiersWithCompletion___block_invoke_2_cold_2();
      }
    }

    v18 = [(_DKSyncCloudKitKnowledgeStorage *)WeakRetained _handleAnySpecialnessWithOperationError:?];

    [(_DKSyncCloudKitKnowledgeStorage *)WeakRetained scheduleRetryUpdateSourceDeviceIdentifiers];
    v10 = v18;
  }

  v11 = +[_DKSyncCloudKitKnowledgeStorage mySyncZoneID];
  if ([*(a1 + 40) count])
  {
    v17 = *(a1 + 40);
    v13 = *(a1 + 64);
LABEL_15:
    [(_DKSyncCloudKitKnowledgeStorage *)WeakRetained updateSourceDeviceIdentifiersWithRecordZonesByZoneID:v17 completion:v13];
    goto LABEL_8;
  }

  v12 = [*(*(a1 + 32) + 120) containsObject:v11];
  v13 = *(a1 + 64);
  if ((v12 & 1) == 0)
  {
    v17 = MEMORY[0x1E695E0F8];
    goto LABEL_15;
  }

  if (v13)
  {
    (v13)[2](*(a1 + 64), v10);
  }

LABEL_8:
}

void __99___DKSyncCloudKitKnowledgeStorage_updateSourceDeviceIdentifiersWithRecordZonesByZoneID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __99___DKSyncCloudKitKnowledgeStorage_updateSourceDeviceIdentifiersWithRecordZonesByZoneID_completion___block_invoke_cold_1();
    }
  }

  else
  {
    [*(*(a1 + 32) + 16) setBool:1 forKey:@"HaveCreatedMyZone"];
  }

  [(_DKSyncCloudKitKnowledgeStorage *)*(a1 + 32) finishUpdatingSourceDeviceIdentifiersWithZoneIDsBySourceDeviceID:v3 orError:*(a1 + 56) completion:?];
}

void __77___DKSyncCloudKitKnowledgeStorage_scheduleRetryUpdateSourceDeviceIdentifiers__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __77___DKSyncCloudKitKnowledgeStorage_scheduleRetryUpdateSourceDeviceIdentifiers__block_invoke_2_cold_1(a1);
    }
  }
}

void __68___DKSyncCloudKitKnowledgeStorage__createZoneWithZoneID_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_not_V2(v10);

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68___DKSyncCloudKitKnowledgeStorage__createZoneWithZoneID_completion___block_invoke_2;
  v14[3] = &unk_1E7367AE8;
  objc_copyWeak(&v20, (a1 + 64));
  v11 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v11;
  v12 = v7;
  v16 = v12;
  v13 = v9;
  v17 = v13;
  v19 = *(a1 + 56);
  v18 = *(a1 + 48);
  [_DKSyncSerializer performSyncBlock:v14];

  objc_destroyWeak(&v20);
}

void __68___DKSyncCloudKitKnowledgeStorage__createZoneWithZoneID_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v2 = [WeakRetained metrics];
    v3 = [v2 cloudKitMetrics];
    v4 = [v3 startDate];

    v5 = [MEMORY[0x1E695DF00] date];
    v6 = [*(*(a1 + 32) + 160) syncType];
    +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", v6, 8, v4, v5, [*(a1 + 40) count] == 0);
  }

  [(_DKSyncCloudKitKnowledgeStorage *)*(a1 + 32) _storeZoneIDFromRecords:*(a1 + 56) orError:?];
  v7 = *(a1 + 72);
  if (v7)
  {
    (*(v7 + 16))(v7, *(a1 + 56));
  }
}

void __68___DKSyncCloudKitKnowledgeStorage__deleteZoneWithZoneID_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_not_V2(v10);

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68___DKSyncCloudKitKnowledgeStorage__deleteZoneWithZoneID_completion___block_invoke_2;
  v13[3] = &unk_1E7367B38;
  objc_copyWeak(&v18, (a1 + 64));
  v11 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v11;
  v17 = *(a1 + 56);
  v12 = v9;
  v15 = v12;
  v16 = *(a1 + 48);
  [_DKSyncSerializer performSyncBlock:v13];

  objc_destroyWeak(&v18);
}

uint64_t __68___DKSyncCloudKitKnowledgeStorage__deleteZoneWithZoneID_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained metrics];
    v5 = [v4 cloudKitMetrics];
    v6 = [v5 startDate];

    v7 = [MEMORY[0x1E695DF00] date];
    v8 = [*(*(a1 + 32) + 160) syncType];
    +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", v8, 8, v6, v7, [*(a1 + 40) count] == 0);

    v3 = v11;
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    v9 = (*(v9 + 16))(v9, *(a1 + 48));
    v3 = v11;
  }

  return MEMORY[0x1EEE66BB8](v9, v3);
}

void __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2;
  v5[3] = &unk_1E7367B60;
  v5[4] = *(a1 + 32);
  v4 = v3;
  v6 = v4;
  objc_copyWeak(&v7, (a1 + 40));
  [_DKSyncSerializer performSyncBlock:v5];
  objc_destroyWeak(&v7);
}

void __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [objc_opt_class() description];
    v5 = *(a1 + 40);
    *v21 = 138543618;
    *&v21[4] = v4;
    *&v21[12] = 2114;
    *&v21[14] = v5;
    _os_log_impl(&dword_191750000, v2, OS_LOG_TYPE_INFO, "%{public}@: Zone %{public}@ has changes.", v21, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v8 = +[_DKSyncCloudKitKnowledgeStorage mySyncZoneID];
    v9 = [v6 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      [(_DKSyncCloudKitKnowledgeStorage *)*(a1 + 32) setHasZoneAdditionChanges:*(a1 + 40) forZone:v10, v11, v12, v13, v14, *v21, *&v21[8]];
      [(_DKSyncCloudKitKnowledgeStorage *)*(a1 + 32) setHasZoneDeletionChanges:*(a1 + 40) forZone:v15, v16, v17, v18, v19, *v21, *&v21[8]];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [(_DKSyncCloudKitKnowledgeStorage *)WeakRetained addSourceDeviceIdentifierWithRecordZoneID:?];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_182(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_183;
  v5[3] = &unk_1E7367B60;
  v5[4] = *(a1 + 32);
  v4 = v3;
  v6 = v4;
  objc_copyWeak(&v7, (a1 + 40));
  [_DKSyncSerializer performSyncBlock:v5];
  objc_destroyWeak(&v7);
}

void __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_183(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [objc_opt_class() description];
    v5 = *(a1 + 40);
    v13 = 138543618;
    v14 = v4;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_191750000, v2, OS_LOG_TYPE_INFO, "%{public}@: Zone %{public}@ was deleted.", &v13, 0x16u);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_183_cold_1(a1, v11, (a1 + 40), v6, v7, v8, v9, v10);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_184(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_185;
  v6[3] = &unk_1E7367710;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [_DKSyncSerializer performSyncBlock:v6];
}

void __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_185(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[_CDLogging syncChannel];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_185_cold_1();
    }

    objc_storeStrong((*(a1 + 40) + 128), *(a1 + 32));
    [(_DKSyncCloudKitKnowledgeStorage *)*(a1 + 40) commitFetchDatabaseChangesServerChangeToken];
  }

  else
  {
    if (v4)
    {
      __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_185_cold_2(a1);
    }
  }
}

void __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_187(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_not_V2(v8);

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_188;
  v11[3] = &unk_1E7367BD8;
  objc_copyWeak(&v17, (a1 + 64));
  v11[4] = *(a1 + 32);
  v9 = v7;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  objc_copyWeak(&v18, (a1 + 72));
  v14 = *(a1 + 40);
  v16 = *(a1 + 56);
  v15 = *(a1 + 48);
  [_DKSyncSerializer performSyncBlock:v11];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);
}

void __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_188(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained metrics];
    v5 = [v4 cloudKitMetrics];
    v6 = [v5 startDate];

    v7 = [MEMORY[0x1E695DF00] date];
    v8 = [*(*(a1 + 32) + 160) syncType];
    [_DKSyncPowerlog recordWithSyncType:v8 transportType:4 startDate:v6 endDate:v7 isEmpty:0];
  }

  v9 = *(a1 + 40);
  if (*(a1 + 40))
  {
    if ([_DKCKError isChangeTokenExpiredError:?])
    {
      v10 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_188_cold_2(a1);
      }

      v11 = *(a1 + 32);
      v12 = *(v11 + 128);
      *(v11 + 128) = 0;

      [*(a1 + 56) removeObjectForKey:@"FetchDatabaseChangesServerChangeToken"];
      v13 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_188_cold_3((a1 + 32));
      }
    }

    else
    {
      if (([_DKCKError isIgnorableError:?]& 1) == 0)
      {
        v18 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_188_cold_1();
        }
      }

      v13 = objc_loadWeakRetained((a1 + 88));
      v19 = [(_DKSyncCloudKitKnowledgeStorage *)&v13->isa _handleAnySpecialnessWithOperationError:?];

      v9 = v19;
    }
  }

  else
  {
    v15 = *(a1 + 48);
    v16 = +[_CDLogging syncChannel];
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    if (v15)
    {
      if (v17)
      {
        __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_188_cold_4();
      }

      objc_storeStrong((*(a1 + 32) + 128), *(a1 + 48));
      [(_DKSyncCloudKitKnowledgeStorage *)*(a1 + 32) commitFetchDatabaseChangesServerChangeToken];
    }

    else
    {
      if (v17)
      {
        __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_188_cold_5(a1);
      }
    }

    v13 = objc_loadWeakRetained((a1 + 88));
    [(_DKSyncCloudKitKnowledgeStorage *)v13 setPrewarmedFlag];
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    (*(v14 + 16))(v14, v9);
  }
}

void __74___DKSyncCloudKitKnowledgeStorage_configurePeerWithSourceDeviceID_zoneID___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __74___DKSyncCloudKitKnowledgeStorage_configurePeerWithSourceDeviceID_zoneID___block_invoke_cold_1(a1);
  }
}

void __65___DKSyncCloudKitKnowledgeStorage_hasZoneAdditionChangesForZone___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  v2 = [*(*(a1 + 32) + 16) dataForKey:@"ZoneIDsWithAdditionChanges"];
  if (v2)
  {
    v3 = MEMORY[0x1E695DFD8];
    v4 = objc_opt_class();
    v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
    v19 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v5 fromData:v2 error:&v19];
    v7 = v19;
    v8 = *(*v1 + 104);
    *(*v1 + 104) = v6;

    v9 = +[_CDLogging syncChannel];
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __65___DKSyncCloudKitKnowledgeStorage_hasZoneAdditionChangesForZone___block_invoke_cold_1();
      }

      v11 = [MEMORY[0x1E695DFA8] set];
      v10 = *(*v1 + 104);
      *(*v1 + 104) = v11;
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = *v1;
      v15 = [objc_opt_class() description];
      v16 = [*(*v1 + 104) valueForKeyPath:@"zoneName"];
      v17 = _CDPrettyPrintCollection(v16, 0, 0, 0);
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_191750000, v10, OS_LOG_TYPE_INFO, "%{public}@: Unarchived _zoneIDsWithAdditionChanges: %@", buf, 0x16u);
    }
  }

  else
  {
    v12 = [MEMORY[0x1E695DFA8] set];
    v13 = *(*v1 + 104);
    *(*v1 + 104) = v12;
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __65___DKSyncCloudKitKnowledgeStorage_hasZoneDeletionChangesForZone___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  v2 = [*(*(a1 + 32) + 16) dataForKey:@"ZoneIDsWithDeletionChanges"];
  if (v2)
  {
    v3 = MEMORY[0x1E695DFD8];
    v4 = objc_opt_class();
    v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
    v19 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v5 fromData:v2 error:&v19];
    v7 = v19;
    v8 = *(*v1 + 112);
    *(*v1 + 112) = v6;

    v9 = +[_CDLogging syncChannel];
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __65___DKSyncCloudKitKnowledgeStorage_hasZoneDeletionChangesForZone___block_invoke_cold_1();
      }

      v11 = [MEMORY[0x1E695DFA8] set];
      v10 = *(*v1 + 112);
      *(*v1 + 112) = v11;
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = *v1;
      v15 = [objc_opt_class() description];
      v16 = [*(*v1 + 112) valueForKeyPath:@"zoneName"];
      v17 = _CDPrettyPrintCollection(v16, 0, 0, 0);
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_191750000, v10, OS_LOG_TYPE_INFO, "%{public}@: Unarchived _zoneIDsWithDeletionChanges: %@", buf, 0x16u);
    }
  }

  else
  {
    v12 = [MEMORY[0x1E695DFA8] set];
    v13 = *(*v1 + 112);
    *(*v1 + 112) = v12;
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __116___DKSyncCloudKitKnowledgeStorage_fetchEventsFromPeer_windows_streamNames_limit_fetchOrder_highPriority_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v9);

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v11, v7, v8);
  }
}

void __120___DKSyncCloudKitKnowledgeStorage_syncDownAdditionsFromCloudWithZoneID_windows_streamNames_limit_fetchOrder_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_not_V2(v4);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __120___DKSyncCloudKitKnowledgeStorage_syncDownAdditionsFromCloudWithZoneID_windows_streamNames_limit_fetchOrder_completion___block_invoke_2;
  v6[3] = &unk_1E7367710;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  [_DKSyncSerializer performSyncBlock:v6];
}

uint64_t __120___DKSyncCloudKitKnowledgeStorage_syncDownAdditionsFromCloudWithZoneID_windows_streamNames_limit_fetchOrder_completion___block_invoke_2(uint64_t a1)
{
  v2 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 addObject:v4];
}

void __120___DKSyncCloudKitKnowledgeStorage_syncDownAdditionsFromCloudWithZoneID_windows_streamNames_limit_fetchOrder_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_not_V2(v7);

  v8 = [v6 domain];
  if (![v8 isEqualToString:*MEMORY[0x1E695B740]])
  {
    goto LABEL_4;
  }

  v9 = [v6 code];

  if (v9 == 11)
  {
    v8 = v6;
    v6 = 0;
LABEL_4:
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __120___DKSyncCloudKitKnowledgeStorage_syncDownAdditionsFromCloudWithZoneID_windows_streamNames_limit_fetchOrder_completion___block_invoke_4;
  v18[3] = &unk_1E7367CA0;
  v10 = v5;
  v19 = v10;
  v17 = *(a1 + 32);
  v11 = *(&v17 + 1);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  v20 = v17;
  v21 = v14;
  objc_copyWeak(&v25, (a1 + 80));
  v26[1] = *(a1 + 96);
  v15 = v6;
  v16 = *(a1 + 104);
  v22 = v15;
  v26[2] = v16;
  v24 = *(a1 + 72);
  objc_copyWeak(v26, (a1 + 88));
  v23 = *(a1 + 64);
  [_DKSyncSerializer performSyncBlock:v18];

  objc_destroyWeak(v26);
  objc_destroyWeak(&v25);
}

void __120___DKSyncCloudKitKnowledgeStorage_syncDownAdditionsFromCloudWithZoneID_windows_streamNames_limit_fetchOrder_completion___block_invoke_4(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 32);
  v4 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __120___DKSyncCloudKitKnowledgeStorage_syncDownAdditionsFromCloudWithZoneID_windows_streamNames_limit_fetchOrder_completion___block_invoke_4_cold_1();
  }

  v5 = [*(a1 + 48) copy];
  v6 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __120___DKSyncCloudKitKnowledgeStorage_syncDownAdditionsFromCloudWithZoneID_windows_streamNames_limit_fetchOrder_completion___block_invoke_4_cold_2();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 112) == 1)
    {
      v9 = 8;
    }

    else
    {
      v9 = 4;
    }

    v10 = [WeakRetained metrics];
    v11 = [v10 cloudKitMetrics];
    v12 = [v11 startDate];

    v13 = [MEMORY[0x1E695DF00] date];
    v14 = [*(*(a1 + 40) + 160) syncType];
    +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", v14, v9, v12, v13, [v5 count] == 0);
  }

  v15 = *(a1 + 72);
  if (v15)
  {
    if (([_DKCKError isIgnorableError:v15]& 1) == 0)
    {
      v25 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __120___DKSyncCloudKitKnowledgeStorage_syncDownAdditionsFromCloudWithZoneID_windows_streamNames_limit_fetchOrder_completion___block_invoke_4_cold_3(a1, a1 + 72, v25);
      }
    }

    v26 = objc_loadWeakRetained((a1 + 104));
    v27 = [(_DKSyncCloudKitKnowledgeStorage *)v26 _handleAnySpecialnessWithOperationError:?];

    v28 = *(a1 + 88);
    if (v28)
    {
      (*(v28 + 16))(v28, 0, 0, v27);
    }

    v22 = 0;
    v19 = 0;
  }

  else
  {
    if ([v5 count])
    {
      v16 = [_DKEventCKConverter alloc];
      v17 = +[_DKSyncCloudKitKnowledgeStorage mySyncZoneID];
      v18 = [(_DKEventCKConverter *)v16 initWithZoneID:v17];

      v19 = [(_DKEventCKConverter *)v18 eventsFromRecords:v5];
      v20 = [v5 count];
      if (v20 != [v19 count])
      {
        v21 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v29 = *(a1 + 40);
          v30 = [objc_opt_class() description];
          v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "count") - objc_msgSend(v19, "count")}];
          v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
          v33 = *(a1 + 56);
          v34 = 138544130;
          v35 = v30;
          v36 = 2112;
          v37 = v31;
          v38 = 2112;
          v39 = v32;
          v40 = 2114;
          v41 = v33;
          _os_log_debug_impl(&dword_191750000, v21, OS_LOG_TYPE_DEBUG, "%{public}@: Unable to convert %@ of %@ records from %{public}@", &v34, 0x2Au);
        }
      }
    }

    else
    {
      v19 = objc_opt_new();
    }

    v22 = [_DKSyncWindow completedWindowsWithSortedEvents:v19 windows:*(a1 + 64) fetchOrder:*(a1 + 120) fillOrder:2 hitLimit:v3 != 0];
    v23 = *(a1 + 88);
    if (v23)
    {
      (*(v23 + 16))(v23, v19, v22, 0);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __116___DKSyncCloudKitKnowledgeStorage_fetchDeletedEventIDsFromPeer_sinceDate_streamNames_limit_highPriority_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = v10;
    if (v5)
    {
      v8 = 0;
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    (*(v7 + 16))(v7, v8, 0, v9);
  }
}

void __83___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([*(a1 + 32) count])
  {
    v3 = [[_DKEventCKConverter alloc] initWithZoneID:*(a1 + 40)];
    v4 = [(_DKEventCKConverter *)v3 eventIDsFromRecordIDsAndTypes:*(a1 + 32)];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, v4, v6);
  }
}

void __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_not_V2(v7);

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke_2;
  v10[3] = &unk_1E7367A48;
  v11 = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  [_DKSyncSerializer performSyncBlock:v10];
}

uint64_t __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke_2(void *a1)
{
  v2 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v2);

  v4 = a1[5];
  v3 = a1[6];
  v5 = a1[4];

  return [v5 setObject:v3 forKeyedSubscript:v4];
}

void __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_not_V2(v14);

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke_4;
  v18[3] = &unk_1E7367D68;
  v15 = v13;
  v19 = v15;
  v16 = v11;
  v20 = v16;
  objc_copyWeak(&v22, (a1 + 32));
  v17 = v10;
  v21 = v17;
  [_DKSyncSerializer performSyncBlock:v18];

  objc_destroyWeak(&v22);
}

void __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke_4(uint64_t a1)
{
  v2 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v2);

  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v4 = [(_DKSyncCloudKitKnowledgeStorage *)WeakRetained _handleAnySpecialnessWithOperationError:?];
  }

  else
  {
    if (!*(a1 + 40))
    {
      return;
    }

    v4 = objc_loadWeakRetained((a1 + 56));
    [(_DKSyncCloudKitKnowledgeStorage *)v4 _setPreviousServerChangeToken:*(a1 + 48) forRecordZoneID:?];
  }
}

void __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_not_V2(v4);

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke_6;
  v8[3] = &unk_1E7367DB8;
  v5 = v3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  objc_copyWeak(v14, (a1 + 64));
  v14[1] = *(a1 + 72);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  [_DKSyncSerializer performSyncBlock:v8];

  objc_destroyWeak(v14);
}

void __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke_6(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 32);
  if (!*(a1 + 32))
  {
LABEL_2:
    v4 = *(a1 + 64);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }

    goto LABEL_4;
  }

  if (![_DKCKError isChangeTokenExpiredError:?])
  {
    if (([_DKCKError isIgnorableError:?]& 1) == 0)
    {
      v18 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke_6_cold_1();
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v19 = [(_DKSyncCloudKitKnowledgeStorage *)&WeakRetained->isa _handleAnySpecialnessWithOperationError:?];

    v3 = v19;
    goto LABEL_21;
  }

  v6 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke_6_cold_2();
  }

  v7 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v9 = [objc_opt_class() description];
    v10 = *(a1 + 48);
    v20 = 138543618;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_INFO, "%{public}@: Change token expired, may retry syncing down delections for %@", &v20, 0x16u);
  }

  v11 = objc_loadWeakRetained((a1 + 72));
  [(_DKSyncCloudKitKnowledgeStorage *)v11 _resetPreviousServerChangeTokenForRecordZoneID:?];

  v12 = *(a1 + 80);
  v13 = +[_CDLogging syncChannel];
  WeakRetained = v13;
  if (v12 > 2)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke_6_cold_3();
    }

LABEL_21:

    goto LABEL_2;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 40);
    v16 = [objc_opt_class() description];
    v20 = 138543362;
    v21 = v16;
    _os_log_impl(&dword_191750000, WeakRetained, OS_LOG_TYPE_INFO, "%{public}@: Will retry syncing down deletions", &v20, 0xCu);
  }

  v17 = objc_loadWeakRetained((a1 + 72));
  [(_DKSyncCloudKitKnowledgeStorage *)v17 syncDownDeletionsFromCloudWithZoneID:*(a1 + 56) deletedRecordIDsAndTypes:*(a1 + 80) + 1 attempt:*(a1 + 64) completion:?];

LABEL_4:
  v5 = *MEMORY[0x1E69E9840];
}

void __95___DKSyncCloudKitKnowledgeStorage_syncUpToCloudWithRecordsToSave_recordIDsToDelete_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_not_V2(v10);

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95___DKSyncCloudKitKnowledgeStorage_syncUpToCloudWithRecordsToSave_recordIDsToDelete_completion___block_invoke_2;
  v13[3] = &unk_1E7367E30;
  objc_copyWeak(&v19, (a1 + 72));
  v11 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v11;
  v15 = *(a1 + 48);
  v12 = v9;
  v16 = v12;
  objc_copyWeak(&v20, (a1 + 80));
  v18 = *(a1 + 64);
  v17 = *(a1 + 56);
  [_DKSyncSerializer performSyncBlock:v13];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
}

void __95___DKSyncCloudKitKnowledgeStorage_syncUpToCloudWithRecordsToSave_recordIDsToDelete_completion___block_invoke_2(uint64_t a1)
{
  v2 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v2);

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained metrics];
    v6 = [v5 cloudKitMetrics];
    v7 = [v6 startDate];

    v8 = [MEMORY[0x1E695DF00] date];
    v9 = [*(*(a1 + 32) + 160) syncType];
    if ([*(a1 + 40) count])
    {
      v10 = 0;
    }

    else
    {
      v10 = [*(a1 + 48) count] == 0;
    }

    [_DKSyncPowerlog recordWithSyncType:v9 transportType:8 startDate:v7 endDate:v8 isEmpty:v10];
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 56);
  if (v12)
  {
    if (([_DKCKError isIgnorableError:v12]& 1) == 0)
    {
      v14 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __95___DKSyncCloudKitKnowledgeStorage_syncUpToCloudWithRecordsToSave_recordIDsToDelete_completion___block_invoke_2_cold_1();
      }
    }

    v15 = objc_loadWeakRetained((a1 + 88));
    v16 = [(_DKSyncCloudKitKnowledgeStorage *)v15 _handleAnySpecialnessWithOperationError:?];

    v11 = v16;
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    (*(v13 + 16))(v13, v11);
  }
}

void __98___DKSyncCloudKitKnowledgeStorage_registerUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(_DKSyncCloudKitKnowledgeStorage *)WeakRetained runUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion:?];
  }

  else
  {
    v4 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __98___DKSyncCloudKitKnowledgeStorage_registerUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion___block_invoke_cold_1(a1);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = +[_DKSyncErrors internalFailure];
      (*(v5 + 16))(v5, v6);
    }
  }
}

void __93___DKSyncCloudKitKnowledgeStorage_runUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v4);

  v5 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __93___DKSyncCloudKitKnowledgeStorage_runUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion___block_invoke_cold_1(a1);
  }

  if (*(a1 + 40))
  {
    if (([_DKCKError isShouldDeferError:v3]& 1) != 0 || xpc_activity_should_defer(*(a1 + 40)))
    {
      if (xpc_activity_set_state(*(a1 + 40), 3))
      {
        goto LABEL_11;
      }

      v6 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __93___DKSyncCloudKitKnowledgeStorage_runUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion___block_invoke_cold_2(a1);
      }
    }

    xpc_activity_set_state(*(a1 + 40), 5);
  }

LABEL_11:
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __93___DKSyncCloudKitKnowledgeStorage_runUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion___block_invoke_cold_3(a1);
  }
}

uint64_t __77___DKSyncCloudKitKnowledgeStorage_scheduleRetryUpdateSourceDeviceIdentifiers__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_14();
  v4 = __77___DKSyncCloudKitKnowledgeStorage_scheduleRetryUpdateSourceDeviceIdentifiers__block_invoke_2;
  v5 = &unk_1E73675F8;
  v6 = v2;
  return [_DKSyncCloudKitKnowledgeStorage performUpdateSourceDeviceIdentifiersWithCompletion:];
}

void __71___DKSyncCloudKitKnowledgeStorage__registerDatabaseChangesSubscription__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_16();
  [OUTLINED_FUNCTION_34(v2 *MEMORY[0x1E69E9840])];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_16_0() domain];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_73() code];
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

void __71___DKSyncCloudKitKnowledgeStorage__registerDatabaseChangesSubscription__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_16();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = [objc_opt_class() description];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v0, "count")}];
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

void __67___DKSyncCloudKitKnowledgeStorage__cloudSyncAvailabilityDidChange___block_invoke_cold_1(char a1, uint64_t a2, void *a3)
{
  if ((a1 & 1) == 0)
  {
    *(a2 + 152) = 0;
  }

  v4 = +[_CDObservationCenter sharedInstance];
  [v4 postNotificationName:@"_DKCloudTransportAvailablityChangedNotification" userInfo:0 sender:*a3];
}

void __67___DKSyncCloudKitKnowledgeStorage__cloudSyncAvailabilityDidChange___block_invoke_cold_2(id **a1)
{
  if (+[_DKCloudUtilities isSyncAvailableAndEnabled])
  {
    v2 = *a1;

    [(_DKSyncCloudKitKnowledgeStorage *)v2 finishStartBecauseCloudIsAvailable];
  }
}

void __75___DKSyncCloudKitKnowledgeStorage__handleAnySpecialnessWithOperationError___block_invoke_87_cold_1()
{
  OUTLINED_FUNCTION_16();
  [OUTLINED_FUNCTION_34(v2 *MEMORY[0x1E69E9840])];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_16_0() domain];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_73() code];
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

void __75___DKSyncCloudKitKnowledgeStorage__handleAnySpecialnessWithOperationError___block_invoke_88_cold_1()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_16();
  v2 = v1;
  v12 = *MEMORY[0x1E69E9840];
  v3 = v1[4];
  v4 = [objc_opt_class() description];
  v5 = v2[5];
  [v0 domain];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_16_0() code];
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x34u);

  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9_0();
}

void __75___DKSyncCloudKitKnowledgeStorage__handleAnySpecialnessWithOperationError___block_invoke_90_cold_1()
{
  OUTLINED_FUNCTION_16();
  [OUTLINED_FUNCTION_34(v2 *MEMORY[0x1E69E9840])];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_16_0() domain];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_73() code];
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

void __97___DKSyncCloudKitKnowledgeStorage__queueOperationForPrivateCloudDatabase_dependent_policy_error___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void __96___DKSyncCloudKitKnowledgeStorage__performThrottledUpdateSourceDeviceIdentifiersWithCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_16();
  [OUTLINED_FUNCTION_34(v3 *MEMORY[0x1E69E9840])];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_72() domain];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_81();
  v4 = *v0;
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);

  v10 = *MEMORY[0x1E69E9840];
}

void __96___DKSyncCloudKitKnowledgeStorage__performThrottledUpdateSourceDeviceIdentifiersWithCompletion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_16();
  [OUTLINED_FUNCTION_34(v3 *MEMORY[0x1E69E9840])];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_72() domain];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_81();
  v4 = *v0;
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);

  v10 = *MEMORY[0x1E69E9840];
}

void __99___DKSyncCloudKitKnowledgeStorage_updateSourceDeviceIdentifiersWithRecordZonesByZoneID_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_16();
  v2 = v1;
  v12 = *MEMORY[0x1E69E9840];
  v3 = v1[4];
  v4 = [objc_opt_class() description];
  v5 = v2[5];
  [v0 domain];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_16_0() code];
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x34u);

  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9_0();
}

void __77___DKSyncCloudKitKnowledgeStorage_scheduleRetryUpdateSourceDeviceIdentifiers__block_invoke_2_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_56(a1) description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_183_cold_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  [(_DKSyncCloudKitKnowledgeStorage *)*(a1 + 32) setHasZoneAdditionChanges:a2 forZone:a4, a5, a6, a7, a8, v16, v18];
  [(_DKSyncCloudKitKnowledgeStorage *)*(a1 + 32) setHasZoneDeletionChanges:*a3 forZone:v10, v11, v12, v13, v14, v17, v19];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [(_DKSyncCloudKitKnowledgeStorage *)WeakRetained removeSourceDeviceIdentifierWithRecordZoneID:?];
}

void __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_185_cold_1()
{
  OUTLINED_FUNCTION_16();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 40);
  v3 = [objc_opt_class() description];
  v4 = *v0;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

void __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_185_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_188_cold_1()
{
  OUTLINED_FUNCTION_16();
  [OUTLINED_FUNCTION_34(v3 *MEMORY[0x1E69E9840])];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_72() domain];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_81();
  v4 = *v0;
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);

  v10 = *MEMORY[0x1E69E9840];
}

void __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_188_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_56(a1) description];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_188_cold_3(uint64_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_188_cold_4()
{
  OUTLINED_FUNCTION_16();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 32);
  v3 = [objc_opt_class() description];
  v4 = *v0;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

void __67___DKSyncCloudKitKnowledgeStorage_fetchChangedZonesWithCompletion___block_invoke_2_188_cold_5(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_56(a1) description];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __74___DKSyncCloudKitKnowledgeStorage_configurePeerWithSourceDeviceID_zoneID___block_invoke_cold_1(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:*(a1 + 40)];
  [(_DKSyncCloudKitKnowledgeStorage *)*(a1 + 32) fastForwardPastDeletionsInNewZone:v2 sourceDeviceID:*(a1 + 48)];
}

void __65___DKSyncCloudKitKnowledgeStorage_hasZoneAdditionChangesForZone___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __65___DKSyncCloudKitKnowledgeStorage_hasZoneDeletionChangesForZone___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __120___DKSyncCloudKitKnowledgeStorage_syncDownAdditionsFromCloudWithZoneID_windows_streamNames_limit_fetchOrder_completion___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_10_2();
  v1 = v0;
  v2 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_62(v0) description];
  [*(v1 + 48) count];
  v4 = [OUTLINED_FUNCTION_37() numberWithUnsignedInteger:?];
  v5 = [*(v1 + 56) zoneName];
  OUTLINED_FUNCTION_11_3();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x2Au);

  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9_0();
}

void __120___DKSyncCloudKitKnowledgeStorage_syncDownAdditionsFromCloudWithZoneID_windows_streamNames_limit_fetchOrder_completion___block_invoke_4_cold_2()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_30_1();
  v2 = *MEMORY[0x1E69E9840];
  v4 = [OUTLINED_FUNCTION_62(v3) description];
  [v0 count];
  v5 = [OUTLINED_FUNCTION_37() numberWithUnsignedInteger:?];
  v6 = [*(v1 + 56) zoneName];
  v7 = _DKSyncLoggingWindowsDescription(*(v1 + 64));
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_11_3();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x2Au);

  v13 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9_0();
}

void __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke_6_cold_1()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_30_1();
  v2 = *MEMORY[0x1E69E9840];
  v4 = [OUTLINED_FUNCTION_62(v3) description];
  v5 = *(v1 + 48);
  v6 = [*v0 domain];
  [*v0 code];
  v7 = *v0;
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_11_3();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x34u);

  v13 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9_0();
}

void __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke_6_cold_2()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_30_1();
  v2 = *MEMORY[0x1E69E9840];
  v4 = [OUTLINED_FUNCTION_62(v3) description];
  v5 = *(v1 + 48);
  v6 = [*v0 domain];
  [*v0 code];
  v7 = *v0;
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_11_3();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x34u);

  v13 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9_0();
}

void __116___DKSyncCloudKitKnowledgeStorage_syncDownDeletionsFromCloudWithZoneID_deletedRecordIDsAndTypes_attempt_completion___block_invoke_6_cold_3()
{
  OUTLINED_FUNCTION_16();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 40);
  v3 = [objc_opt_class() description];
  v4 = *v0;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __95___DKSyncCloudKitKnowledgeStorage_fetchAdditionsHighWaterMarkWithPeer_highPriority_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_39();
  a26 = v27;
  a27 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = *MEMORY[0x1E69E9840];
  v36 = [OUTLINED_FUNCTION_78(v33) description];
  v37 = &stru_1F05B9908;
  [v34[5] me];
  v38 = [v34[5] identifier];
  v39 = [v34[5] model];
  if (v39)
  {
    v40 = MEMORY[0x1E696AEC0];
    [v34[5] model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_66();
    v37 = [v40 stringWithFormat:@" (%@)"];
  }

  v41 = [(NSDate *)v32 dk_localtimeString];
  LODWORD(a11) = 138544386;
  *(&a11 + 4) = v36;
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_49(&dword_191750000, v30, v42, "%{public}@: Found no additions high water mark for %{public}@peer %{public}@%{public}@, using %@", &a11);
  if (v39)
  {
  }

  v43 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_38_0();
}

void __95___DKSyncCloudKitKnowledgeStorage_fetchAdditionsHighWaterMarkWithPeer_highPriority_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  v4 = *MEMORY[0x1E69E9840];
  v5 = [OUTLINED_FUNCTION_78(v2) description];
  v6 = [(NSDate *)v1 dk_localtimeString];
  v7 = &stru_1F05B9908;
  [v3[5] me];
  v8 = [v3[5] identifier];
  v9 = [v3[5] model];
  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    [v3[5] model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_66();
    v7 = [v10 stringWithFormat:@" (%@)"];
  }

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_12_1();
  _os_log_debug_impl(v11, v12, v13, v14, v15, 0x34u);
  if (v9)
  {
  }

  v16 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_38_0();
}

void __95___DKSyncCloudKitKnowledgeStorage_fetchDeletionsHighWaterMarkWithPeer_highPriority_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_39();
  a26 = v27;
  a27 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = *MEMORY[0x1E69E9840];
  v36 = [OUTLINED_FUNCTION_78(v33) description];
  v37 = &stru_1F05B9908;
  [v34[5] me];
  v38 = [v34[5] identifier];
  v39 = [v34[5] model];
  if (v39)
  {
    v40 = MEMORY[0x1E696AEC0];
    [v34[5] model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_66();
    v37 = [v40 stringWithFormat:@" (%@)"];
  }

  v41 = [(NSDate *)v32 dk_localtimeString];
  LODWORD(a11) = 138544386;
  *(&a11 + 4) = v36;
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_49(&dword_191750000, v30, v42, "%{public}@: Found no deletions high water mark for %{public}@peer %{public}@%{public}@, using %@", &a11);
  if (v39)
  {
  }

  v43 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_38_0();
}

void __95___DKSyncCloudKitKnowledgeStorage_fetchDeletionsHighWaterMarkWithPeer_highPriority_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  v4 = *MEMORY[0x1E69E9840];
  v5 = [OUTLINED_FUNCTION_78(v2) description];
  v6 = [(NSDate *)v1 dk_localtimeString];
  v7 = &stru_1F05B9908;
  [v3[5] me];
  v8 = [v3[5] identifier];
  v9 = [v3[5] model];
  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    [v3[5] model];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_66();
    v7 = [v10 stringWithFormat:@" (%@)"];
  }

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_12_1();
  _os_log_debug_impl(v11, v12, v13, v14, v15, 0x34u);
  if (v9)
  {
  }

  v16 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_38_0();
}

void __95___DKSyncCloudKitKnowledgeStorage_syncUpToCloudWithRecordsToSave_recordIDsToDelete_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_16();
  [OUTLINED_FUNCTION_34(v3 *MEMORY[0x1E69E9840])];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_72() domain];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_81();
  v4 = *v0;
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);

  v10 = *MEMORY[0x1E69E9840];
}

void __98___DKSyncCloudKitKnowledgeStorage_registerUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_56(a1) description];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __93___DKSyncCloudKitKnowledgeStorage_runUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_56(a1) description];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __93___DKSyncCloudKitKnowledgeStorage_runUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion___block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_56(a1) description];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __93___DKSyncCloudKitKnowledgeStorage_runUpdateSourceDeviceIdentifiersPeriodicJobWithCompletion___block_invoke_cold_3(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_56(a1) description];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

@end