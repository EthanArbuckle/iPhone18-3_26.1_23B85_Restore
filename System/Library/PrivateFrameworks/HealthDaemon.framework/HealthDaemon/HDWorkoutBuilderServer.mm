@interface HDWorkoutBuilderServer
+ (BOOL)finishAllDetachedWorkoutBuildersExcludingSessions:(id)sessions profile:(id)profile error:(id *)error;
+ (BOOL)finishAllWorkoutBuildersForClient:(id)client profile:(id)profile error:(id *)error;
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
+ (id)recoveredWorkoutBuilderConfigurationForClient:(id)client sessionIdentifier:(id)identifier builderIdentifierOut:(id *)out profile:(id)profile error:(id *)error;
+ (void)finishDetachedBuilderForEntity:(id)entity sessionEndDate:(id)date profile:(id)profile;
- (BOOL)_addMetadata:(int)metadata byPassPrivateKeyCheck:(uint64_t)check error:;
- (BOOL)_insertWorkoutEvents:(uint64_t)events error:;
- (BOOL)enumerateQuantitiesOfType:(id)type error:(id *)error handler:(id)handler;
- (BOOL)enumerateSamplesOfTypes:(id)types error:(id *)error handler:(id)handler;
- (HDAssertion)databaseAssertion;
- (HDStatisticsCollectionCalculatorDefaultSourceOrderProvider)_lock_sourceOrderProviderForQuantityType:(uint64_t)type;
- (HDWorkoutBuilderServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (HDWorkoutBuilderStatisticsDataSource)_lock_statisticsDataSourceForQuantityType:(uint64_t)type;
- (NSString)description;
- (id)_lock_createStatisticsCalculatorsForQuantityType:(uint64_t)type mergeStrategy:(uint64_t)strategy computationMethod:(void *)method startDate:(void *)date endDate:;
- (id)_lock_maskedIntervalsForStatisticsOfType:(void *)type startDate:(void *)date endDate:;
- (id)_lock_statisticsCalculatorsForQuantityType:(uint64_t)type mergeStrategy:(uint64_t)strategy computationMethod:;
- (id)currentEvents;
- (id)currentMetadata;
- (id)startDate;
- (uint64_t)_addWorkoutActivity:(uint64_t)activity error:;
- (uint64_t)_associateZonesSamplesIfNeededWithError:(id *)error;
- (uint64_t)_canAddDataWithError:(uint64_t)result;
- (uint64_t)_endActivityWithUUID:(void *)d endDate:(void *)date error:;
- (uint64_t)_isActivityDateOverlapping:(void *)overlapping endDate:(uint64_t)date error:;
- (uint64_t)_lock_didUpdateStartDate;
- (uint64_t)_runInBestWriteTransactionWithError:(void *)error block:;
- (uint64_t)_updateActivityWithUUID:(void *)d addMetadata:(void *)metadata error:;
- (uint64_t)_validateActivityDates:(uint64_t)dates error:;
- (uint64_t)_validateAuthorizationToSaveWorkoutWithError:(void *)error;
- (unint64_t)workoutDataDestinationState;
- (void)_addExpectedDataSourceIdentifiers:(uint64_t)identifiers;
- (void)_addSamples:(void *)samples quantities:(void *)quantities dataSource:(char)source shouldSavePriorToStart:;
- (void)_checkForAttachedDataSources;
- (void)_clearTailSpinTimer;
- (void)_didChangeElapsedTimeBasis;
- (void)_didFinishRecovery;
- (void)_didUpdateActivities;
- (void)_didUpdateEvents:(void *)events;
- (void)_didUpdateMetadata:(void *)metadata;
- (void)_didUpdateStatistics:(void *)statistics;
- (void)_discardWorkoutWithError:(void *)result;
- (void)_lock_didUpdateActivities;
- (void)_lock_failWithError:(uint64_t)error;
- (void)_lock_pushCurrentConstructionState;
- (void)_persistRecoveryData;
- (void)_recoverAssociatedSeriesBuilders;
- (void)_removeExpectedDataSourceWithIdentifiers:(uint64_t)identifiers;
- (void)_requestDataFromSource:(void *)source from:(void *)from to:;
- (void)_submitWorkoutPerformanceEvent:(void *)event workoutEvents:(char)events failure:;
- (void)_takeDatabaseAssertionIfNeeded;
- (void)_unregisterObserversAndInvalidateAssertions;
- (void)_updateStatisticsPauseResumeMask;
- (void)addDataAccumulationObserver:(id)observer;
- (void)addMetadata:(id)metadata dataSource:(id)source;
- (void)addMetadataToWorkoutActivity:(id)activity withSampleStartDate:(id)date dataSource:(id)source;
- (void)addWorkoutEvents:(id)events dataSource:(id)source;
- (void)connectionConfigured;
- (void)connectionInvalidated;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)didBeginActivity:(id)activity dataSource:(id)source;
- (void)didCreateTaskServer:(id)server;
- (void)didEndActivity:(id)activity dataSource:(id)source;
- (void)didInvalidateTaskServer:(id)server;
- (void)didUpdateGeneratedTypesWithConfiguration:(id)configuration sampleTypes:(id)types dataSource:(id)source didUpdateActivity:(BOOL)activity date:(id)date;
- (void)remote_addDataSourcesWithIdentifiers:(id)identifiers;
- (void)remote_addMetadata:(id)metadata completion:(id)completion;
- (void)remote_addSamples:(id)samples completion:(id)completion;
- (void)remote_addWorkoutActivity:(id)activity completion:(id)completion;
- (void)remote_addWorkoutEvents:(id)events completion:(id)completion;
- (void)remote_currentZonesForType:(id)type completion:(id)completion;
- (void)remote_recoverWithCompletion:(id)completion;
- (void)remote_removeDataSourcesWithIdentifiers:(id)identifiers;
- (void)remote_removeMetadata:(id)metadata completion:(id)completion;
- (void)remote_setStatisticsComputationMethod:(int64_t)method forType:(id)type;
- (void)remote_setStatisticsMergeStrategy:(unint64_t)strategy forType:(id)type;
- (void)remote_setTargetConstructionState:(int64_t)state startDate:(id)date endDate:(id)endDate completion:(id)completion;
- (void)remote_updateActivityWithUUID:(id)d addMetadata:(id)metadata completion:(id)completion;
- (void)remote_updateActivityWithUUID:(id)d endDate:(id)date completion:(id)completion;
- (void)remote_updateDevice:(id)device;
- (void)stateMachine:(id)machine didEnterState:(id)state date:(id)date error:(id)error;
- (void)stateMachine:(id)machine didTransition:(id)transition fromState:(id)state toState:(id)toState date:(id)date error:(id)error;
- (void)updateActivityWithUUID:(id)d addMedatata:(id)medatata dataSource:(id)source;
- (void)updateWorkoutConfiguration:(id)configuration dataSource:(id)source;
- (void)workoutManager:(id)manager didUpdateCurrentWorkout:(id)workout;
@end

@implementation HDWorkoutBuilderServer

+ (id)recoveredWorkoutBuilderConfigurationForClient:(id)client sessionIdentifier:(id)identifier builderIdentifierOut:(id *)out profile:(id)profile error:(id *)error
{
  clientCopy = client;
  identifierCopy = identifier;
  profileCopy = profile;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__170;
  v36 = __Block_byref_object_dispose__170;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__170;
  v30 = __Block_byref_object_dispose__170;
  v31 = 0;
  database = [profileCopy database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __125__HDWorkoutBuilderServer_recoveredWorkoutBuilderConfigurationForClient_sessionIdentifier_builderIdentifierOut_profile_error___block_invoke;
  v20[3] = &unk_27862A8B8;
  v15 = profileCopy;
  v21 = v15;
  v16 = clientCopy;
  v22 = v16;
  v17 = identifierCopy;
  v23 = v17;
  v24 = &v26;
  v25 = &v32;
  LOBYTE(error) = [(HDHealthEntity *)HDWorkoutBuilderEntity performReadTransactionWithHealthDatabase:database error:error block:v20];

  if (error)
  {
    if (out)
    {
      *out = v27[5];
    }

    v18 = v33[5];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v18;
}

uint64_t __125__HDWorkoutBuilderServer_recoveredWorkoutBuilderConfigurationForClient_sessionIdentifier_builderIdentifierOut_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [*(a1 + 32) sourceManager];
  v8 = *(a1 + 40);
  v47 = 0;
  v9 = [v7 sourceForClient:v8 error:&v47];
  v10 = v47;

  if (!v9)
  {
    v12 = v10;
    if (!v12)
    {
      v22 = 1;
      goto LABEL_39;
    }

    if (a3)
    {
      v21 = v12;
      v22 = 0;
      *a3 = v12;
      goto LABEL_39;
    }

    _HKLogDroppedError();
LABEL_28:
    v22 = 0;
    goto LABEL_39;
  }

  v11 = [HDWorkoutBuilderEntity workoutBuilderEntitiesForSource:v9 profile:*(a1 + 32) error:a3];
  if (!v11)
  {
    v12 = 0;
    goto LABEL_28;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (!v13)
  {
    v20 = 1;
    goto LABEL_38;
  }

  v14 = v13;
  v40 = v10;
  v41 = v9;
  v15 = *v44;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v44 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v16 = *(*(&v43 + 1) + 8 * i);
      v42 = 0;
      v17 = [v16 sessionIdentifierWithTransaction:v6 error:&v42];
      v18 = v42;
      v19 = v18;
      if (v17)
      {
        if ([v17 isEqual:*(a1 + 48)])
        {
          v23 = [v16 configurationWithTransaction:v6 error:a3];
          v24 = v23;
          if (!v23)
          {
            LOBYTE(i) = 0;
            v9 = v41;
LABEL_33:

LABEL_36:
            v20 = 0;
            goto LABEL_37;
          }

          v25 = [v23 deviceEntity];
          if (v25)
          {
            v26 = [*(a1 + 32) deviceManager];
            v27 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v25, "persistentID")}];
            v28 = [v26 deviceForPersistentID:v27 error:a3];

            if (!v28)
            {
              LOBYTE(i) = 0;
LABEL_32:
              v9 = v41;

              goto LABEL_33;
            }
          }

          else
          {
            v28 = 0;
          }

          v30 = [v24 builderIdentifier];
          v31 = *(*(a1 + 56) + 8);
          v32 = *(v31 + 40);
          *(v31 + 40) = v30;

          v33 = objc_alloc_init(MEMORY[0x277CCDC00]);
          v34 = *(*(a1 + 64) + 8);
          v35 = *(v34 + 40);
          *(v34 + 40) = v33;

          [*(*(*(a1 + 64) + 8) + 40) setDevice:v28];
          v36 = [v24 workoutConfiguration];
          [*(*(*(a1 + 64) + 8) + 40) setWorkoutConfiguration:v36];

          [*(*(*(a1 + 64) + 8) + 40) setGoalType:{objc_msgSend(v24, "goalType")}];
          v37 = [v24 goal];
          [*(*(*(a1 + 64) + 8) + 40) setGoal:v37];

          [*(*(*(a1 + 64) + 8) + 40) setShouldCollectWorkoutEvents:{objc_msgSend(v24, "shouldCollectWorkoutEvents")}];
          LOBYTE(i) = 1;
          goto LABEL_32;
        }
      }

      else if (v18)
      {
        if (a3)
        {
          v29 = v18;
          LOBYTE(i) = 0;
          *a3 = v19;
        }

        else
        {
          _HKLogDroppedError();
          LOBYTE(i) = 0;
        }

        v9 = v41;
        goto LABEL_36;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

  v20 = 1;
  v9 = v41;
LABEL_37:
  v10 = v40;
LABEL_38:

  v22 = v20 | i;
LABEL_39:

  v38 = *MEMORY[0x277D85DE8];
  return v22 & 1;
}

+ (void)finishDetachedBuilderForEntity:(id)entity sessionEndDate:(id)date profile:(id)profile
{
  v52 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  dateCopy = date;
  profileCopy = profile;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__170;
  v46 = __Block_byref_object_dispose__170;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__170;
  v40 = __Block_byref_object_dispose__170;
  v41 = 0;
  database = [profileCopy database];
  v35 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __80__HDWorkoutBuilderServer_finishDetachedBuilderForEntity_sessionEndDate_profile___block_invoke;
  v29[3] = &unk_27862A8E0;
  v11 = entityCopy;
  v30 = v11;
  v33 = &v36;
  v12 = profileCopy;
  v31 = v12;
  v13 = dateCopy;
  v32 = v13;
  v34 = &v42;
  v14 = [(HDHealthEntity *)HDWorkoutBuilderEntity performReadTransactionWithHealthDatabase:database error:&v35 block:v29];
  v15 = v35;

  if (v14)
  {
    if (v37[5])
    {
      if (v43[5])
      {
        v16 = [HDWorkoutBuilderEntity finishWorkoutBuilderWithIdentifier:"finishWorkoutBuilderWithIdentifier:dateInterval:profile:error:" dateInterval:? profile:? error:?];
        v17 = v15;

        if (v16 || !v17)
        {
          _HKInitializeLogging();
          v24 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
          {
            v25 = v37[5];
            *buf = 138543362;
            v49 = v25;
            _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "Finished workout builder %{public}@", buf, 0xCu);
          }
        }

        else
        {
          _HKInitializeLogging();
          v18 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v49 = v17;
            _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "Failed to finish workout builder: %{public}@", buf, 0xCu);
          }
        }

        v15 = v17;
      }

      else
      {
        v20 = [HDWorkoutBuilderEntity discardBuilderWithIdentifier:"discardBuilderWithIdentifier:profile:error:" profile:? error:?];
        v21 = v15;

        if (v20)
        {
          _HKInitializeLogging();
          v22 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
          {
            v23 = v37[5];
            *buf = 138543362;
            v49 = v23;
            _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, "Discarded builder %{public}@", buf, 0xCu);
          }
        }

        else
        {
          _HKInitializeLogging();
          v26 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
          {
            v28 = v37[5];
            *buf = 138543618;
            v49 = v28;
            v50 = 2114;
            v51 = v21;
            _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "Failed to discard builder %{public}@: %{public}@", buf, 0x16u);
          }
        }

        v15 = v21;
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v49 = v11;
      v50 = 2114;
      v51 = v15;
      _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "Failed to lookup current status for builder entity %{public}@: %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __80__HDWorkoutBuilderServer_finishDetachedBuilderForEntity_sessionEndDate_profile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v60 = 0;
  v7 = [v6 configurationWithTransaction:v5 error:&v60];
  v8 = v60;
  v9 = v8;
  if (v7)
  {
    v10 = [v7 builderIdentifier];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = [*(a1 + 40) daemon];
    v14 = [v13 taskServerRegistry];
    v15 = [v14 taskServerForTaskUUID:*(*(*(a1 + 56) + 8) + 40)];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v15 invalidated] & 1) == 0)
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138543362;
        v62 = v27;
        _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "Not automatically finishing builder %{public}@: Builder server is still present.", buf, 0xCu);
      }

      v28 = *(*(a1 + 56) + 8);
      v19 = *(v28 + 40);
      *(v28 + 40) = 0;
      v21 = 1;
      goto LABEL_47;
    }

    v16 = *(a1 + 32);
    v59 = 0;
    v17 = [v16 dataIntervalInTransaction:v5 error:&v59];
    v18 = v59;
    v19 = v18;
    if (!v17 && v18)
    {
      if (a3)
      {
LABEL_7:
        v20 = v19;
        v21 = 0;
        *a3 = v19;
LABEL_46:

LABEL_47:
        goto LABEL_48;
      }

LABEL_14:
      _HKLogDroppedError();
      v21 = 0;
      goto LABEL_46;
    }

    v23 = *(a1 + 32);
    v58 = 0;
    v24 = [v23 startDateInTransaction:v5 error:&v58];
    v25 = v58;
    v19 = v25;
    if (!v24 && v25)
    {
      if (a3)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

    v56 = v17;

    v29 = *(a1 + 32);
    v57 = 0;
    v30 = [v29 endDateInTransaction:v5 error:&v57];
    v31 = v57;
    v19 = v31;
    v32 = v30;
    if (v30)
    {
      v33 = 1;
    }

    else
    {
      v33 = v31 == 0;
    }

    v21 = v33;
    if (!v33)
    {
      if (a3)
      {
        v42 = v31;
        *a3 = v19;
      }

      else
      {
        _HKLogDroppedError();
      }

      v17 = v56;
      goto LABEL_45;
    }

    if (!v24)
    {
      v24 = [v56 startDate];
    }

    v34 = v32;
    v17 = v56;
    if (!v34)
    {
      v34 = [v56 endDate];
      if (!v34 || [*(a1 + 48) hk_isBeforeDate:v34])
      {
        v35 = *(a1 + 48);
        v36 = v34;
        v34 = v35;
      }
    }

    v55 = v34;
    if (v24 && v34)
    {
      if (![v24 hk_isAfterOrEqualToDate:v34])
      {
        v46 = [MEMORY[0x277CCD8D8] workoutType];
        v54 = v46;
        if ([v46 isMaximumDurationRestricted])
        {
          [v46 maximumAllowedDuration];
          v53 = [v24 dateByAddingTimeInterval:?];
          v52 = HKDateMin();

          v47 = v52;
        }

        else
        {
          v47 = v55;
        }

        v48 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v24 endDate:v47];
        v49 = *(*(a1 + 64) + 8);
        v50 = *(v49 + 40);
        *(v49 + 40) = v48;

        goto LABEL_45;
      }

      _HKInitializeLogging();
      v37 = *MEMORY[0x277CCC330];
      if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      v38 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543874;
      v62 = v24;
      v63 = 2114;
      v64 = v55;
      v65 = 2114;
      v66 = v38;
      v39 = "Invalid start/end date (%{public}@, %{public}@) for detached builder %{public}@: discarding workout.";
      v40 = v37;
      v41 = 32;
    }

    else
    {
      _HKInitializeLogging();
      v43 = *MEMORY[0x277CCC330];
      if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
LABEL_42:

LABEL_45:
        goto LABEL_46;
      }

      v51 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543362;
      v62 = v51;
      v39 = "Unable to determine a date interval for detached builder %{public}@: discarding workout.";
      v40 = v43;
      v41 = 12;
    }

    _os_log_error_impl(&dword_228986000, v40, OS_LOG_TYPE_ERROR, v39, buf, v41);
    goto LABEL_42;
  }

  v15 = v8;
  if (v15)
  {
    if (a3)
    {
      v22 = v15;
      v21 = 0;
      *a3 = v15;
    }

    else
    {
      _HKLogDroppedError();
      v21 = 0;
    }
  }

  else
  {
    v21 = 1;
  }

LABEL_48:

  v44 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (BOOL)finishAllWorkoutBuildersForClient:(id)client profile:(id)profile error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  profileCopy = profile;
  sourceManager = [profileCopy sourceManager];
  v11 = [sourceManager sourceForClient:clientCopy error:error];

  v12 = [HDWorkoutBuilderEntity workoutBuilderEntitiesForSource:v11 profile:profileCopy error:error];
  v13 = v12;
  if (v12)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [self finishDetachedBuilderForEntity:*(*(&v20 + 1) + 8 * v17++) sessionEndDate:0 profile:profileCopy];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

+ (BOOL)finishAllDetachedWorkoutBuildersExcludingSessions:(id)sessions profile:(id)profile error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v9 = [HDWorkoutBuilderEntity workoutBuilderEntitiesExcludingSessions:sessions profile:profileCopy error:error];
  v10 = v9;
  if (v9)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [self finishDetachedBuilderForEntity:*(*(&v17 + 1) + 8 * v14++) sessionEndDate:0 profile:profileCopy];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

- (HDAssertion)databaseAssertion
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_databaseAssertion;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HDWorkoutBuilderServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  dCopy = d;
  configurationCopy = configuration;
  v80.receiver = self;
  v80.super_class = HDWorkoutBuilderServer;
  v12 = [(HDStandardTaskServer *)&v80 initWithUUID:dCopy configuration:configurationCopy client:client delegate:delegate];
  if (v12)
  {
    _HKInitializeLogging();
    v12->_lock._os_unfair_lock_opaque = 0;
    v12->_currentStatelock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_configuration, configuration);
    v13 = objc_alloc_init(HDWorkoutBuilderStatisticsCalculators);
    statisticsCalculators = v12->_statisticsCalculators;
    v12->_statisticsCalculators = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sourceOrderProvidersByType = v12->_sourceOrderProvidersByType;
    v12->_sourceOrderProvidersByType = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    statisticsDataSourcesByType = v12->_statisticsDataSourcesByType;
    v12->_statisticsDataSourcesByType = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    quantityTypesRequiringCalculatorInvalidation = v12->_quantityTypesRequiringCalculatorInvalidation;
    v12->_quantityTypesRequiringCalculatorInvalidation = v19;

    v21 = objc_alloc(MEMORY[0x277CCD738]);
    v22 = MEMORY[0x277CCC330];
    v23 = [v21 initWithName:@"sample-observers" loggingCategory:*MEMORY[0x277CCC330]];
    sampleObservers = v12->_sampleObservers;
    v12->_sampleObservers = v23;

    v25 = [objc_alloc(MEMORY[0x277CCD738]) initWithName:@"data-accumulator-observers" loggingCategory:*v22];
    dataAccumulatorObservers = v12->_dataAccumulatorObservers;
    v12->_dataAccumulatorObservers = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB98]);
    expectedDataSourceUUIDs = v12->_expectedDataSourceUUIDs;
    v12->_expectedDataSourceUUIDs = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB98]);
    quantityTypesIncludedWhilePaused = v12->_quantityTypesIncludedWhilePaused;
    v12->_quantityTypesIncludedWhilePaused = v29;

    v31 = configurationCopy;
    v32 = dCopy;
    v33 = objc_opt_self();
    v78 = dCopy;
    v34 = MEMORY[0x277CCDA28];
    [v31 associatedSessionUUID];
    v35 = v77 = configurationCopy;

    if (v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = v32;
    }

    v76 = [v34 nameForOwner:v33 UUID:v36 tag:0];

    v37 = [objc_alloc(MEMORY[0x277CCDA28]) initWithName:v76];
    v38 = [v37 addStateWithIndex:0 label:@"Ready"];
    v39 = [v37 addStateWithIndex:1 label:@"Active"];
    v40 = [v37 addStateWithIndex:2 label:@"AwaitingDataSources"];
    v79 = [v37 addStateWithIndex:3 label:@"AwaitingFinalData"];
    v41 = [v37 addStateWithIndex:4 label:@"Ended"];
    v74 = [v37 addStateWithIndex:5 label:@"Saving"];
    v42 = [v37 addStateWithIndex:6 label:@"Finalized"];
    v43 = [v37 addStateWithIndex:7 label:@"Error"];
    v75 = [v37 addStateWithIndex:8 label:@"Discarded"];
    v44 = [v37 addStateTransitionFrom:v38 to:v39 event:1 label:@"activate"];
    v45 = [v37 addStateTransitionFrom:v38 to:v39 event:2 label:@"end"];
    v46 = [v37 addStateTransitionFrom:v38 to:v39 event:3 label:@"finish"];
    v47 = [v37 addStateTransitionFrom:v39 to:v40 event:2 label:@"end"];
    v48 = [v37 addStateTransitionFrom:v39 to:v40 event:3 label:@"finish"];
    v49 = [v37 addStateTransitionFrom:v40 to:v79 event:101 label:@"attach-data-sources"];
    v50 = [v37 addStateTransitionFrom:v79 to:v41 event:102 label:@"receive-final-data"];
    v51 = [v37 addStateTransitionFrom:v41 to:v74 event:3 label:@"finish"];
    v52 = [v37 addStateTransitionFrom:v74 to:v42 event:103 label:@"saved-workout"];
    v53 = [v37 addStateTransitionFrom:v38 to:v43 event:100 label:@"error"];
    v54 = [v37 addStateTransitionFrom:v39 to:v43 event:100 label:@"error"];
    v55 = [v37 addStateTransitionFrom:v41 to:v43 event:100 label:@"error"];
    v56 = [v37 addStateTransitionFrom:v74 to:v43 event:100 label:@"error"];
    v57 = [v37 addStateTransitionFrom:v42 to:v43 event:100 label:@"error"];
    v58 = [v37 addStateTransitionFrom:v38 to:v75 event:4 label:@"discarded"];
    v59 = [v37 addStateTransitionFrom:v39 to:v75 event:4 label:@"discarded"];
    v60 = [v37 addStateTransitionFrom:v41 to:v75 event:4 label:@"discarded"];

    configurationCopy = v77;
    stateMachine = v12->_stateMachine;
    v12->_stateMachine = v37;
    dCopy = v78;

    [(HKStateMachine *)v12->_stateMachine setDelegate:v12];
    v62 = HKCreateSerialDispatchQueue();
    upstreamQueue = v12->_upstreamQueue;
    v12->_upstreamQueue = v62;

    _HKInitializeLogging();
    v64 = objc_alloc(MEMORY[0x277CCD2B0]);
    v65 = [v64 initWithProcessor:v12 sourceProtocol:&unk_283CBA250 destinationProtocol:&unk_283CD7C50 loggingCategory:*MEMORY[0x277CCC330]];
    workoutDataFlowLink = v12->_workoutDataFlowLink;
    v12->_workoutDataFlowLink = v65;

    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    supportsCoreOSDatabaseAssertion = [mEMORY[0x277CCDD30] supportsCoreOSDatabaseAssertion];

    if (supportsCoreOSDatabaseAssertion)
    {
      profile = [(HDStandardTaskServer *)v12 profile];
      workoutManager = [profile workoutManager];
      [workoutManager registerCurrentWorkoutObserver:v12];

      profile2 = [(HDStandardTaskServer *)v12 profile];
      database = [profile2 database];
      [database addProtectedDataObserver:v12];
    }
  }

  return v12;
}

- (void)dealloc
{
  [(HDWorkoutBuilderServer *)self _clearTailSpinTimer];
  [(HDWorkoutBuilderServer *)self _unregisterObserversAndInvalidateAssertions];
  v3.receiver = self;
  v3.super_class = HDWorkoutBuilderServer;
  [(HDWorkoutBuilderServer *)&v3 dealloc];
}

- (void)_clearTailSpinTimer
{
  if (self)
  {
    [*(self + 184) invalidate];
    v2 = *(self + 184);
    *(self + 184) = 0;
  }
}

- (void)_unregisterObserversAndInvalidateAssertions
{
  if (self)
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    supportsCoreOSDatabaseAssertion = [mEMORY[0x277CCDD30] supportsCoreOSDatabaseAssertion];

    if (supportsCoreOSDatabaseAssertion)
    {
      profile = [self profile];
      workoutManager = [profile workoutManager];
      [workoutManager unregisterCurrentWorkoutObserver:self];

      profile2 = [self profile];
      database = [profile2 database];
      [database removeProtectedDataObserver:self];

      os_unfair_lock_lock((self + 40));
      [*(self + 168) invalidate];

      os_unfair_lock_unlock((self + 40));
    }
  }
}

- (void)connectionConfigured
{
  v20[1] = *MEMORY[0x277D85DE8];
  associatedSessionUUID = [(HKWorkoutBuilderConfiguration *)self->_configuration associatedSessionUUID];

  if (associatedSessionUUID)
  {
    associatedSessionUUID2 = [(HKWorkoutBuilderConfiguration *)self->_configuration associatedSessionUUID];
    v20[0] = associatedSessionUUID2;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [(HDWorkoutBuilderServer *)self _addExpectedDataSourceIdentifiers:v6];

    profile = [(HDStandardTaskServer *)self profile];
    daemon = [profile daemon];
    taskServerRegistry = [daemon taskServerRegistry];
    associatedSessionUUID3 = [(HKWorkoutBuilderConfiguration *)self->_configuration associatedSessionUUID];
    [taskServerRegistry addObserver:self forTaskServerUUID:associatedSessionUUID3 queue:0];
  }

  profile2 = [(HDStandardTaskServer *)self profile];
  database = [profile2 database];
  v18[4] = self;
  v19 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__HDWorkoutBuilderServer__loadOrCreatePersistentEntity__block_invoke;
  v18[3] = &unk_278616048;
  v13 = [(HDHealthEntity *)HDWorkoutBuilderEntity performWriteTransactionWithHealthDatabase:database error:&v19 block:v18];
  v14 = v19;

  if (v13)
  {
    [(HDWorkoutBuilderServer *)self _updateStatisticsPauseResumeMask];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    [(HDWorkoutBuilderServer *)self _lock_failWithError:v14];
    os_unfair_lock_unlock(&self->_lock);
  }

  currentState = [(HKStateMachine *)self->_stateMachine currentState];

  if (!currentState)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDWorkoutBuilderServer.m" lineNumber:499 description:@"Failed to initialize current state after loading or creating our persistent entity."];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_addExpectedDataSourceIdentifiers:(uint64_t)identifiers
{
  if (identifiers)
  {
    v3 = *(identifiers + 120);
    v4 = a2;
    allSourceProcessors = [v3 allSourceProcessors];
    v9 = [allSourceProcessors hk_map:&__block_literal_global_709];

    v6 = [v4 arrayByExcludingObjectsInArray:v9];

    if ([v6 count])
    {
      os_unfair_lock_lock((identifiers + 40));
      v7 = [*(identifiers + 128) setByAddingObjectsFromArray:v6];
      v8 = *(identifiers + 128);
      *(identifiers + 128) = v7;

      os_unfair_lock_unlock((identifiers + 40));
    }
  }
}

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  workoutConfiguration = [configuration workoutConfiguration];

  if (!workoutConfiguration)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"nil workoutConfiguration"];
  }

  return workoutConfiguration != 0;
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_currentStatelock);
  v3 = self->_currentStatelock_currentState;
  os_unfair_lock_unlock(&self->_currentStatelock);
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  associatedSessionUUID = [(HKWorkoutBuilderConfiguration *)self->_configuration associatedSessionUUID];
  hk_shortRepresentation = [associatedSessionUUID hk_shortRepresentation];
  v8 = hk_shortRepresentation;
  if (hk_shortRepresentation)
  {
    v9 = [v4 stringWithFormat:@"<%@_%@ %@>", v5, hk_shortRepresentation, v3];
  }

  else
  {
    taskUUID = [(HDStandardTaskServer *)self taskUUID];
    hk_shortRepresentation2 = [taskUUID hk_shortRepresentation];
    v9 = [v4 stringWithFormat:@"<%@_%@ %@>", v5, hk_shortRepresentation2, v3];
  }

  return v9;
}

- (void)_persistRecoveryData
{
  v18 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_assert_not_owner(self + 10);
    Current = CFAbsoluteTimeGetCurrent();
    profile = [(os_unfair_lock *)self profile];
    database = [profile database];
    v12[4] = self;
    v13 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__HDWorkoutBuilderServer__persistRecoveryData__block_invoke;
    v12[3] = &unk_278616048;
    v5 = [(HDHealthEntity *)HDWorkoutBuilderEntity performWriteTransactionWithHealthDatabase:database error:&v13 block:v12];
    v6 = v13;

    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    v8 = *MEMORY[0x277CCC330];
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v7;
        v10 = CFAbsoluteTimeGetCurrent();
        *buf = 138543618;
        selfCopy2 = self;
        v16 = 2048;
        v17 = v10 - Current;
        _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Persisted recovery state in %.2lfs", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v16 = 2114;
      v17 = *&v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to persist recovery data: %{public}@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

BOOL __46__HDWorkoutBuilderServer__persistRecoveryData__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    os_unfair_lock_assert_owner(v2 + 10);
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(v3 + 10);
  return v2 != 0;
}

- (uint64_t)_validateAuthorizationToSaveWorkoutWithError:(void *)error
{
  if (!error)
  {
    return 0;
  }

  workoutType = [MEMORY[0x277CCD8D8] workoutType];
  client = [error client];
  authorizationOracle = [client authorizationOracle];
  v7 = [authorizationOracle authorizationStatusRecordForType:workoutType error:a2];

  if (!v7)
  {
    goto LABEL_7;
  }

  if ([v7 authorizationStatus] != 101 && objc_msgSend(v7, "authorizationStatus") != 102)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a2 code:4 format:@"Not authorized"];
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = 1;
LABEL_8:

  return v8;
}

uint64_t __55__HDWorkoutBuilderServer__loadOrCreatePersistentEntity__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v141 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = &OBJC_IVAR____HDStatisticsSyntheticQuantityType__overriddenAggregationStyle;
  v7 = a2;
  os_unfair_lock_lock(v5 + 10);
  v8 = *(a1 + 32);
  v9 = v7;
  if (!v8)
  {
    v18 = 0;
    goto LABEL_115;
  }

  v125 = 0;
  v10 = [(HDWorkoutBuilderServer *)v8 _validateAuthorizationToSaveWorkoutWithError:?];
  v11 = v125;
  if (v10)
  {
    v12 = [v8 taskUUID];
    v13 = [v8 profile];
    v124 = 0;
    v14 = [HDWorkoutBuilderEntity workoutBuilderEntityWithIdentifier:v12 profile:v13 error:&v124];
    v15 = v124;
    v16 = *(v8 + 48);
    *(v8 + 48) = v14;

    if (!*(v8 + 48) && v15)
    {
      if (a3)
      {
        v17 = v15;
        v18 = 0;
        *a3 = v15;
      }

      else
      {
        _HKLogDroppedError();
        v18 = 0;
      }

      v6 = &OBJC_IVAR____HDStatisticsSyntheticQuantityType__overriddenAggregationStyle;
      goto LABEL_113;
    }

    v123 = v15;
    os_unfair_lock_assert_owner((v8 + 40));
    v19 = objc_alloc_init(HDWorkoutBuilderPersistedConfiguration);
    v20 = [v8 taskUUID];
    [(HDWorkoutBuilderPersistedConfiguration *)v19 setBuilderIdentifier:v20];

    v21 = [*(v8 + 208) workoutConfiguration];
    [(HDWorkoutBuilderPersistedConfiguration *)v19 setWorkoutConfiguration:v21];

    v22 = [v8 profile];
    v23 = [v22 sourceManager];
    v24 = [v8 client];
    v25 = [v23 createOrUpdateSourceForClient:v24 error:a3];
    [(HDWorkoutBuilderPersistedConfiguration *)v19 setSourceEntity:v25];

    v26 = [(HDWorkoutBuilderPersistedConfiguration *)v19 sourceEntity];

    if (!v26)
    {
      goto LABEL_13;
    }

    v27 = [v8 client];
    v28 = [v27 sourceVersion];
    [(HDWorkoutBuilderPersistedConfiguration *)v19 setSourceVersion:v28];

    v29 = [*(v8 + 208) device];

    if (!v29)
    {
      goto LABEL_11;
    }

    v30 = [v8 profile];
    v31 = [v30 deviceManager];
    v32 = [*(v8 + 208) device];
    v33 = [v31 deviceEntityForDevice:v32 error:a3];
    [(HDWorkoutBuilderPersistedConfiguration *)v19 setDeviceEntity:v33];

    v34 = [(HDWorkoutBuilderPersistedConfiguration *)v19 deviceEntity];

    if (v34)
    {
LABEL_11:
      v35 = [v8 client];
      v36 = [v35 hasEntitlement:*MEMORY[0x277CCC8B0]];

      if (v36)
      {
        -[HDWorkoutBuilderPersistedConfiguration setGoalType:](v19, "setGoalType:", [*(v8 + 208) goalType]);
        v37 = [*(v8 + 208) goal];
        [(HDWorkoutBuilderPersistedConfiguration *)v19 setGoal:v37];
      }

      else
      {
        [(HDWorkoutBuilderPersistedConfiguration *)v19 setGoalType:0];
        [(HDWorkoutBuilderPersistedConfiguration *)v19 setGoal:0];
      }

      v15 = v123;
      v38 = v19;

      if (!v38)
      {
        v18 = 0;
        v6 = &OBJC_IVAR____HDStatisticsSyntheticQuantityType__overriddenAggregationStyle;
        goto LABEL_112;
      }

      v39 = *(v8 + 48);
      if (v39)
      {
        v40 = [v39 configurationWithTransaction:v9 error:a3];
        v41 = v40;
        v6 = &OBJC_IVAR____HDStatisticsSyntheticQuantityType__overriddenAggregationStyle;
        if (v40)
        {
          if ([v40 isEqual:v38])
          {
            v119 = v41;
            v42 = v9;
            os_unfair_lock_assert_owner((v8 + 40));
            v121 = objc_alloc_init(MEMORY[0x277CCDC18]);
            v43 = [*(v8 + 48) metadataWithTransaction:v42 error:a3];
            v120 = v42;
            if (v43)
            {
              v115 = v43;
              v44 = [v43 mutableCopy];
              v45 = *(v8 + 216);
              *(v8 + 216) = v44;

              v46 = *(v8 + 48);
              v135[0] = MEMORY[0x277D85DD0];
              v135[1] = 3221225472;
              v135[2] = __74__HDWorkoutBuilderServer__lock_recoverPersistedDataWithTransaction_error___block_invoke;
              v135[3] = &unk_27862A908;
              v135[4] = v8;
              v114 = v121;
              v136 = v114;
              if (![v46 enumerateStatisticsInTransaction:v42 error:a3 block:v135])
              {
                goto LABEL_36;
              }

              v47 = [*(v8 + 48) workoutEventsInTransaction:v42 error:a3];
              v48 = [v47 sortedArrayUsingSelector:sel_compare_];
              v49 = *(v8 + 176);
              *(v8 + 176) = v48;

              if (*(v8 + 176))
              {
                v50 = *(v8 + 48);
                v134 = 0;
                v51 = [v50 primaryActivityInTransaction:v42 error:&v134];
                v52 = v134;
                v15 = v123;
                v111 = v51;
                v112 = v52;
                if (v51)
                {
                  *(v8 + 161) = 1;
                }

                else if (v52)
                {
                  _HKInitializeLogging();
                  v62 = *MEMORY[0x277CCC330];
                  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543618;
                    v138 = v8;
                    v139 = 2114;
                    v140 = v112;
                    _os_log_error_impl(&dword_228986000, v62, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch primary activity during recover with error %{public}@", buf, 0x16u);
                  }
                }

                v63 = [*(v8 + 48) workoutActivitiesInTransaction:v42 error:a3];
                v113 = v63;
                if (v63)
                {
                  v64 = v63;
                  if ([*(v8 + 176) count])
                  {
                    v117 = v38;
                    v132 = 0u;
                    v133 = 0u;
                    v130 = 0u;
                    v131 = 0u;
                    v65 = v64;
                    v66 = [v65 countByEnumeratingWithState:&v130 objects:buf count:16];
                    if (v66)
                    {
                      v67 = v66;
                      v68 = *v131;
                      do
                      {
                        for (i = 0; i != v67; ++i)
                        {
                          if (*v131 != v68)
                          {
                            objc_enumerationMutation(v65);
                          }

                          [*(*(&v130 + 1) + 8 * i) _filterAndSetWorkoutEvents:*(v8 + 176)];
                        }

                        v67 = [v65 countByEnumeratingWithState:&v130 objects:buf count:16];
                      }

                      while (v67);
                    }

                    v6 = &OBJC_IVAR____HDStatisticsSyntheticQuantityType__overriddenAggregationStyle;
                    v38 = v117;
                    v64 = v113;
                  }

                  v70 = [v64 hk_mapToDictionary:&__block_literal_global_206];
                  v71 = [v70 mutableCopy];
                  v72 = *(v8 + 224);
                  *(v8 + 224) = v71;

                  v73 = *(v8 + 48);
                  v129 = 0;
                  v74 = [v73 startDateInTransaction:v120 error:&v129];
                  v75 = v129;
                  v76 = *(v8 + 232);
                  *(v8 + 232) = v74;

                  if (*(v8 + 232))
                  {
                    v77 = 1;
                  }

                  else
                  {
                    v77 = v75 == 0;
                  }

                  if (v77)
                  {
                    v118 = v75;
                    v78 = *(v8 + 48);
                    v128 = 0;
                    v79 = [v78 endDateInTransaction:v120 error:&v128];
                    v80 = v128;
                    v81 = *(v8 + 240);
                    *(v8 + 240) = v79;

                    v82 = v80;
                    if (*(v8 + 240) || !v80)
                    {
                      v110 = v80;
                      v86 = *(v8 + 48);
                      v127 = 0;
                      v87 = [v86 dataIntervalInTransaction:v120 error:&v127];
                      v88 = v127;
                      v89 = *(v8 + 248);
                      *(v8 + 248) = v87;

                      v90 = v88;
                      if (*(v8 + 248) || !v88)
                      {
                        v109 = v88;
                        v92 = *(v8 + 48);
                        v126 = 0;
                        v93 = [v92 quantityTypesIncludedWhilePausedInTransaction:v120 error:&v126];
                        v94 = v126;
                        if (v93)
                        {
                          v95 = 1;
                        }

                        else
                        {
                          v95 = v94 == 0;
                        }

                        v18 = v95;
                        v107 = v94;
                        v108 = v93;
                        if (v95)
                        {
                          if (v93)
                          {
                            [MEMORY[0x277CBEB98] setWithArray:{v93, v94, v93}];
                          }

                          else
                          {
                            [MEMORY[0x277CBEB98] set];
                          }
                          v98 = ;
                          objc_storeStrong((v8 + 80), v98);

                          v99 = *(v8 + 232);
                          v100 = *(v8 + 240);
                          if (*(v8 + 232) == 0)
                          {
                            v101 = 0;
                          }

                          else if (!v99 || v100)
                          {
                            if (v100)
                            {
                              v102 = v99 == 0;
                            }

                            else
                            {
                              v102 = 1;
                            }

                            if (v102)
                            {
                              v101 = 7;
                            }

                            else
                            {
                              v101 = 4;
                            }
                          }

                          else
                          {
                            v101 = 1;
                          }

                          [*(v8 + 136) enterAtState:v101];
                          *(v8 + 144) = HKWorkoutBuilderConstructionStateFromBuilderServerState(v101);
                          [(HDWorkoutBuilderServer *)v8 _lock_didUpdateActivities];
                          [(HDWorkoutBuilderServer *)v8 _didUpdateStatistics:v114];
                          v103 = [*(v8 + 216) copy];
                          [(HDWorkoutBuilderServer *)v8 _didUpdateMetadata:v103];

                          v104 = [*(v8 + 176) copy];
                          [(HDWorkoutBuilderServer *)v8 _didUpdateEvents:v104];

                          [(HDWorkoutBuilderServer *)v8 _didChangeElapsedTimeBasis];
                          [(HDWorkoutBuilderServer *)v8 _lock_didUpdateStartDate];
                          if (v101 != 7)
                          {
                            [(HDWorkoutBuilderServer *)v8 _recoverAssociatedSeriesBuilders];
                          }

                          [(HDWorkoutBuilderServer *)v8 _didFinishRecovery];
                          v6 = &OBJC_IVAR____HDStatisticsSyntheticQuantityType__overriddenAggregationStyle;
                        }

                        else if (a3)
                        {
                          *a3 = v94;
                        }

                        else
                        {
                          _HKLogDroppedError();
                        }

                        v61 = v121;
                        v15 = v123;
                        v41 = v119;
                        v84 = v111;

                        v91 = v109;
                      }

                      else
                      {
                        v15 = v123;
                        v41 = v119;
                        if (a3)
                        {
                          v91 = v90;
                          v18 = 0;
                          *a3 = v91;
                        }

                        else
                        {
                          v97 = v90;
                          _HKLogDroppedError();
                          v91 = v97;
                          v18 = 0;
                        }

                        v61 = v121;
                        v84 = v111;
                      }

                      v83 = v110;
                    }

                    else
                    {
                      v15 = v123;
                      v41 = v119;
                      if (a3)
                      {
                        v83 = v82;
                        v18 = 0;
                        *a3 = v83;
                      }

                      else
                      {
                        v96 = v82;
                        _HKLogDroppedError();
                        v83 = v96;
                        v18 = 0;
                      }

                      v61 = v121;
                      v84 = v111;
                    }

                    v85 = v118;
                  }

                  else
                  {
                    if (a3)
                    {
                      v85 = v75;
                      v18 = 0;
                      *a3 = v75;
                    }

                    else
                    {
                      _HKLogDroppedError();
                      v85 = v75;
                      v18 = 0;
                    }

                    v61 = v121;
                    v15 = v123;
                    v41 = v119;
                    v84 = v111;
                  }
                }

                else
                {
                  v18 = 0;
                  v41 = v119;
                  v61 = v121;
                  v84 = v111;
                }
              }

              else
              {
LABEL_36:
                v18 = 0;
                v61 = v121;
                v15 = v123;
              }

              v43 = v115;
            }

            else
            {
              v18 = 0;
              v61 = v121;
            }

            goto LABEL_111;
          }

          [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Workout builder configuration does not match persisted configuration for this identifier."];
        }

        v18 = 0;
LABEL_111:

        goto LABEL_112;
      }

      v6 = &OBJC_IVAR____HDStatisticsSyntheticQuantityType__overriddenAggregationStyle;
      if ([*(v8 + 208) requiresRecovery])
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:@"Workout builder requires recovery but no persisted state was found."];
        v18 = 0;
        goto LABEL_112;
      }

      v53 = v38;
      v122 = v9;
      v54 = [v8 profile];
      v116 = v53;
      v55 = [HDWorkoutBuilderEntity createEntityForBuilderConfiguration:v53 profile:v54 error:a3];
      v56 = *(v8 + 48);
      *(v8 + 48) = v55;

      if (*(v8 + 48))
      {
        v57 = [*(v8 + 208) associatedSessionUUID];

        v58 = v122;
        if (v57 && (v59 = *(v8 + 48), [*(v8 + 208) associatedSessionUUID], v60 = objc_claimAutoreleasedReturnValue(), LODWORD(v59) = objc_msgSend(v59, "setSessionIdentifier:transaction:error:", v60, v122, a3), v60, !v59))
        {
          v18 = 0;
        }

        else
        {
          [*(v8 + 136) enterAtState:0];
          v18 = 1;
        }
      }

      else
      {
        v18 = 0;
        v58 = v122;
      }

      v38 = v116;
    }

    else
    {
LABEL_13:

      v38 = 0;
      v18 = 0;
      v6 = &OBJC_IVAR____HDStatisticsSyntheticQuantityType__overriddenAggregationStyle;
    }

    v15 = v123;
LABEL_112:

LABEL_113:
    goto LABEL_114;
  }

  v18 = 0;
LABEL_114:

LABEL_115:
  os_unfair_lock_unlock((*(a1 + 32) + v6[195]));
  v105 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)_updateStatisticsPauseResumeMask
{
  v33 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_assert_not_owner((self + 40));
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__HDWorkoutBuilderServer__updateStatisticsPauseResumeMask__block_invoke;
    aBlock[3] = &unk_278613968;
    aBlock[4] = self;
    v2 = _Block_copy(aBlock);
    os_unfair_lock_lock((self + 40));
    v3 = *(self + 168);
    os_unfair_lock_unlock((self + 40));
    v4 = [HDMutableDatabaseTransactionContext alloc];
    v5 = [(HDMutableDatabaseTransactionContext *)v4 contextWithAccessibilityAssertion:v3];

    [v5 setRequiresProtectedData:1];
    profile = [self profile];
    database = [profile database];
    v26 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__HDWorkoutBuilderServer__updateStatisticsPauseResumeMask__block_invoke_659;
    v24[3] = &unk_278618368;
    v24[4] = self;
    v25 = v2;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __58__HDWorkoutBuilderServer__updateStatisticsPauseResumeMask__block_invoke_2_660;
    v22[3] = &unk_27862A998;
    v22[4] = self;
    v8 = v25;
    v23 = v8;
    v9 = [database performTransactionWithContext:v5 error:&v26 block:v24 inaccessibilityHandler:v22];
    v10 = v26;

    if ((v9 & 1) == 0)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v31 = 2114;
        v32 = v10;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to open read transaction during pause/resume mask update: %{public}@", buf, 0x16u);
      }

      os_unfair_lock_lock((self + 40));
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      allQuantityTypes = [*(self + 88) allQuantityTypes];
      v13 = [allQuantityTypes countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v19;
        do
        {
          v16 = 0;
          do
          {
            if (*v19 != v15)
            {
              objc_enumerationMutation(allQuantityTypes);
            }

            [*(self + 112) addObject:*(*(&v18 + 1) + 8 * v16++)];
          }

          while (v14 != v16);
          v14 = [allQuantityTypes countByEnumeratingWithState:&v18 objects:v28 count:16];
        }

        while (v14);
      }

      os_unfair_lock_unlock((self + 40));
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_lock_failWithError:(uint64_t)error
{
  v3 = a2;
  if (error)
  {
    v5 = v3;
    os_unfair_lock_assert_owner((error + 40));
    currentState = [*(error + 136) currentState];

    if (!currentState)
    {
      [*(error + 136) enterAtState:0];
    }

    [*(error + 136) enqueueEvent:100 date:0 error:v5 completion:&__block_literal_global_681];
    v3 = v5;
  }
}

void __74__HDWorkoutBuilderServer__lock_recoverPersistedDataWithTransaction_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v14)
  {
    v16 = [(HDWorkoutBuilderServer *)*(a1 + 32) _lock_sourceOrderProviderForQuantityType:v11];
    [v14 setSourceOrderProvider:v16];

    v17 = [(HDWorkoutBuilderServer *)*(a1 + 32) _lock_statisticsDataSourceForQuantityType:v11];
    [v14 setDataSource:v17];

    [*(*(a1 + 32) + 88) setCalculator:v14 forQuantityType:v11 activityUUID:v12];
    v18 = [*(a1 + 32) taskUUID];
    v19 = [v12 isEqual:v18];

    v20 = *(a1 + 40);
    v21 = [v14 currentStatistics];
    if (v19)
    {
      [v20 addWorkoutStatistics:v21 forType:v11];
    }

    else
    {
      [v20 addActivityStatistics:v21 forType:v11 activityUUID:v12];
    }
  }

  else
  {
    _HKInitializeLogging();
    v22 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      v25 = 138543618;
      v26 = v23;
      v27 = 2114;
      v28 = v11;
      _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Unexpectedly nil calculator when recovery statistics for %{public}@", &v25, 0x16u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (HDStatisticsCollectionCalculatorDefaultSourceOrderProvider)_lock_sourceOrderProviderForQuantityType:(uint64_t)type
{
  v3 = a2;
  if (type)
  {
    os_unfair_lock_assert_owner((type + 40));
    v4 = [*(type + 96) objectForKeyedSubscript:v3];
    if (!v4)
    {
      v5 = [HDStatisticsCollectionCalculatorDefaultSourceOrderProvider alloc];
      profile = [type profile];
      v4 = [(HDStatisticsCollectionCalculatorDefaultSourceOrderProvider *)v5 initWithProfile:profile quantityType:v3];

      [*(type + 96) setObject:v4 forKeyedSubscript:v3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (HDWorkoutBuilderStatisticsDataSource)_lock_statisticsDataSourceForQuantityType:(uint64_t)type
{
  v3 = a2;
  if (type)
  {
    os_unfair_lock_assert_owner((type + 40));
    v4 = [*(type + 104) objectForKeyedSubscript:v3];
    if (!v4)
    {
      v5 = [HDWorkoutBuilderStatisticsDataSource alloc];
      profile = [type profile];
      v4 = [(HDWorkoutBuilderStatisticsDataSource *)v5 initWithProfile:profile quantityType:v3 builderEntity:*(type + 48)];

      [*(type + 104) setObject:v4 forKeyedSubscript:v3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __74__HDWorkoutBuilderServer__lock_recoverPersistedDataWithTransaction_error___block_invoke_509(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 UUID];
  (a3)[2](v5, v7, v6);
}

- (void)_lock_didUpdateActivities
{
  os_unfair_lock_assert_owner((self + 40));
  client = [self client];
  connection = [client connection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HDWorkoutBuilderServer__lock_didUpdateActivities__block_invoke;
  v6[3] = &unk_2786138D0;
  v6[4] = self;
  v4 = [connection remoteObjectProxyWithErrorHandler:v6];

  allValues = [*(self + 224) allValues];
  [v4 clientRemote_didUpdateActivities:allValues];
}

- (void)_didUpdateStatistics:(void *)statistics
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (statistics && v3 && ([v3 isEmpty] & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      allTypes = [v4 allTypes];
      allObjects = [allTypes allObjects];
      v9 = [allObjects componentsJoinedByString:{@", "}];
      *buf = 138543618;
      statisticsCopy = statistics;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Updated statistics for [%{public}@]", buf, 0x16u);
    }

    client = [statistics client];
    connection = [client connection];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__HDWorkoutBuilderServer__didUpdateStatistics___block_invoke;
    v17[3] = &unk_2786138D0;
    v17[4] = statistics;
    v12 = [connection remoteObjectProxyWithErrorHandler:v17];

    [v12 clientRemote_didUpdateStatistics:v4];
    v13 = statistics[8];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__HDWorkoutBuilderServer__didUpdateStatistics___block_invoke_655;
    v15[3] = &unk_27862AAD0;
    v15[4] = statistics;
    v16 = v4;
    [v13 notifyObservers:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_didUpdateMetadata:(void *)metadata
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  client = [metadata client];
  connection = [client connection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__HDWorkoutBuilderServer__didUpdateMetadata___block_invoke;
  v17[3] = &unk_2786138D0;
  v17[4] = metadata;
  v6 = [connection remoteObjectProxyWithErrorHandler:v17];

  client2 = [metadata client];
  v16 = 0;
  v8 = [v3 hd_validateMetadataKeysAndValuesWithClient:client2 error:&v16];
  v9 = v16;

  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_FAULT))
    {
      *buf = 138543874;
      metadataCopy = metadata;
      v20 = 2114;
      v21 = v3;
      v22 = 2114;
      v23 = v9;
      _os_log_fault_impl(&dword_228986000, v10, OS_LOG_TYPE_FAULT, "%{public}@: Did update with invalid metadata %{public}@: %{public}@", buf, 0x20u);
    }
  }

  [v6 clientRemote_didUpdateMetadata:v3];
  v11 = metadata[8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__HDWorkoutBuilderServer__didUpdateMetadata___block_invoke_606;
  v14[3] = &unk_27862AAD0;
  v14[4] = metadata;
  v12 = v3;
  v15 = v12;
  [v11 notifyObservers:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_didUpdateEvents:(void *)events
{
  v3 = a2;
  if ([v3 count])
  {
    client = [events client];
    connection = [client connection];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__HDWorkoutBuilderServer__didUpdateEvents___block_invoke;
    v10[3] = &unk_2786138D0;
    v10[4] = events;
    v6 = [connection remoteObjectProxyWithErrorHandler:v10];

    [v6 clientRemote_didUpdateEvents:v3];
    v7 = events[8];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__HDWorkoutBuilderServer__didUpdateEvents___block_invoke_616;
    v8[3] = &unk_27862AAD0;
    v8[4] = events;
    v9 = v3;
    [v7 notifyObservers:v8];
  }
}

- (void)_didChangeElapsedTimeBasis
{
  if (self)
  {
    client = [self client];
    connection = [client connection];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __52__HDWorkoutBuilderServer__didChangeElapsedTimeBasis__block_invoke;
    v5[3] = &unk_2786138D0;
    v5[4] = self;
    v4 = [connection remoteObjectProxyWithErrorHandler:v5];

    [v4 clientRemote_didChangeElapsedTimeBasisWithStartDate:self[29] endDate:self[30]];
  }
}

- (uint64_t)_lock_didUpdateStartDate
{
  if (result)
  {
    v1 = *(result + 64);
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __50__HDWorkoutBuilderServer__lock_didUpdateStartDate__block_invoke;
    v2[3] = &unk_27862ABB8;
    v2[4] = result;
    return [v1 notifyObservers:v2];
  }

  return result;
}

- (void)_recoverAssociatedSeriesBuilders
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = self[6];
  profile = [self profile];
  v12 = 0;
  v4 = [HDWorkoutBuilderAssociatedSeriesEntity seriesForBuilder:v2 profile:profile error:&v12];
  v5 = v12;

  if (v4)
  {
    if ([v4 count])
    {
      client = [self client];
      connection = [client connection];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __58__HDWorkoutBuilderServer__recoverAssociatedSeriesBuilders__block_invoke;
      v11[3] = &unk_2786138D0;
      v11[4] = self;
      v8 = [connection remoteObjectProxyWithErrorHandler:v11];

      [v8 clientRemote_didRecoverSeriesBuilders:v4];
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "Failed to recover series builders after workout builder recovery: %{public}@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_didFinishRecovery
{
  client = [self client];
  connection = [client connection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__HDWorkoutBuilderServer__didFinishRecovery__block_invoke;
  v5[3] = &unk_2786138D0;
  v5[4] = self;
  v4 = [connection remoteObjectProxyWithErrorHandler:v5];

  [v4 clientRemote_didFinishRecovery];
}

void __58__HDWorkoutBuilderServer__recoverAssociatedSeriesBuilders__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Couldn't notify workout builder client of recovered series builders with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_addSamples:(void *)samples quantities:(void *)quantities dataSource:(char)source shouldSavePriorToStart:
{
  v67 = *MEMORY[0x277D85DE8];
  v27 = a2;
  samplesCopy = samples;
  quantitiesCopy = quantities;
  if (self)
  {
    v26 = quantitiesCopy;
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x3032000000;
    v61[3] = __Block_byref_object_copy__170;
    v61[4] = __Block_byref_object_dispose__170;
    v62 = 0;
    v59[0] = 0;
    v59[1] = v59;
    v59[2] = 0x3032000000;
    v59[3] = __Block_byref_object_copy__170;
    v59[4] = __Block_byref_object_dispose__170;
    v60 = 0;
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x3032000000;
    v57[3] = __Block_byref_object_copy__170;
    v57[4] = __Block_byref_object_dispose__170;
    v58 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__170;
    v55 = __Block_byref_object_dispose__170;
    v56 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__170;
    v49 = __Block_byref_object_dispose__170;
    v50 = *(self + 248);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__HDWorkoutBuilderServer__addSamples_quantities_dataSource_shouldSavePriorToStart___block_invoke;
    aBlock[3] = &unk_27862A970;
    sourceCopy = source;
    aBlock[4] = self;
    v39 = v61;
    v37 = v27;
    v40 = v57;
    v38 = samplesCopy;
    v41 = v59;
    v42 = &v45;
    v43 = &v51;
    v10 = _Block_copy(aBlock);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __83__HDWorkoutBuilderServer__addSamples_quantities_dataSource_shouldSavePriorToStart___block_invoke_4;
    v34[3] = &unk_278618368;
    v34[4] = self;
    v11 = v10;
    v35 = v11;
    v12 = _Block_copy(v34);
    os_unfair_lock_lock((self + 40));
    v13 = *(self + 168);
    os_unfair_lock_unlock((self + 40));
    profile = [self profile];
    database = [profile database];
    v16 = [HDDatabaseTransactionContext contextForAccessibilityAssertion:v13];
    v33 = 0;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __83__HDWorkoutBuilderServer__addSamples_quantities_dataSource_shouldSavePriorToStart___block_invoke_5;
    v31[3] = &unk_27862A998;
    v31[4] = self;
    v17 = v12;
    v32 = v17;
    v18 = [(HDHealthEntity *)HDDataEntity performWriteTransactionWithHealthDatabase:database context:v16 error:&v33 block:v17 inaccessibilityHandler:v31];
    v19 = v33;

    if (!v18)
    {
      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v65 = 2114;
        v66 = v19;
        _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%{public}@: Failed to add samples: %{public}@", buf, 0x16u);
      }
    }

    os_unfair_lock_lock((self + 40));
    v21 = [v46[5] copy];
    v22 = *(self + 248);
    *(self + 248) = v21;

    os_unfair_lock_unlock((self + 40));
    [(HDWorkoutBuilderServer *)self _didUpdateStatistics:?];
    v23 = *(self + 72);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __83__HDWorkoutBuilderServer__addSamples_quantities_dataSource_shouldSavePriorToStart___block_invoke_522;
    v30[3] = &unk_27862A9C0;
    v30[4] = self;
    v30[5] = v61;
    v30[6] = v59;
    v30[7] = v57;
    [v23 notifyObservers:v30];
    v24 = *(self + 152);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__HDWorkoutBuilderServer__addSamples_quantities_dataSource_shouldSavePriorToStart___block_invoke_2_524;
    block[3] = &unk_278613968;
    block[4] = self;
    dispatch_async(v24, block);

    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(&v51, 8);

    _Block_object_dispose(v57, 8);
    _Block_object_dispose(v59, 8);

    _Block_object_dispose(v61, 8);
    quantitiesCopy = v26;
  }

  v25 = *MEMORY[0x277D85DE8];
}

BOOL __83__HDWorkoutBuilderServer__addSamples_quantities_dataSource_shouldSavePriorToStart___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v207 = *MEMORY[0x277D85DE8];
  v143 = a2;
  os_unfair_lock_assert_owner((*(a1 + 32) + 40));
  v4 = *(a1 + 32);
  if (!*(v4 + 232) && *(a1 + 96) != 1)
  {
    v88 = 1;
    goto LABEL_103;
  }

  v149 = a1;
  v5 = *(a1 + 40);
  v6 = v143;
  os_unfair_lock_assert_owner((v4 + 40));
  v160 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v154 = *MEMORY[0x277CCCCD8];
  v7 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:?];
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v202 objects:v206 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v203;
    do
    {
      v12 = 0;
      v164 = v10;
      do
      {
        if (*v203 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v202 + 1) + 8 * v12);
        v14 = [v13 sampleType];
        v15 = [v14 isEqual:v7];

        if (v15)
        {
          _HKInitializeLogging();
          v16 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
          {
            v17 = v16;
            v18 = [v13 sampleType];
            *buf = 138543618;
            v199 = v4;
            v200 = 2114;
            v201 = v18;
            _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Failed to add samples of type %{public}@. Must be associated to workout", buf, 0x16u);
          }
        }

        else
        {
          v19 = v11;
          v20 = v7;
          v21 = v8;
          v22 = v4;
          v23 = *(v4 + 48);
          v24 = [v13 sampleType];
          v25 = v6;
          v26 = [v24 code];
          [v13 _startTimestamp];
          v27 = v26;
          v6 = v25;
          v28 = [v23 associateObject:v13 code:v27 timestamp:v25 transaction:a3 error:?];

          if (v28 == 1)
          {
            [v160 addObject:v13];
            v4 = v22;
            v8 = v21;
            v7 = v20;
            v11 = v19;
            v10 = v164;
          }

          else
          {
            v4 = v22;
            v8 = v21;
            v7 = v20;
            v11 = v19;
            v10 = v164;
            if (!v28)
            {

              v29 = 0;
              v30 = v160;
              goto LABEL_18;
            }
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v202 objects:v206 count:16];
    }

    while (v10);
  }

  v30 = v160;
  v29 = v160;
LABEL_18:

  v31 = v149;
  v32 = *(*(v149 + 56) + 8);
  v33 = *(v32 + 40);
  *(v32 + 40) = v29;

  if (!*(*(*(v149 + 56) + 8) + 40))
  {
    goto LABEL_51;
  }

  v34 = *(v149 + 32);
  v35 = *(v149 + 48);
  v156 = v6;
  if (v34)
  {
    os_unfair_lock_assert_owner((v34 + 40));
    v161 = v35;
    v165 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    v36 = v35;
    v37 = [v36 countByEnumeratingWithState:&v202 objects:v206 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v203;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v203 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v202 + 1) + 8 * i);
          v42 = *(v34 + 48);
          v43 = [v41 hdw_sample];
          v44 = [v41 hdw_type];
          v45 = [v44 code];
          [v41 hdw_startTimestamp];
          v46 = [v42 associateObject:v43 code:v45 timestamp:v156 transaction:a3 error:?];

          if (v46 == 1)
          {
            [v165 addObject:v41];
            v31 = v149;
          }

          else
          {
            v31 = v149;
            if (!v46)
            {

              v47 = 0;
              v48 = v165;
              goto LABEL_32;
            }
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v202 objects:v206 count:16];
      }

      while (v38);
    }

    v48 = v165;
    v47 = v165;
LABEL_32:

    v35 = v161;
  }

  else
  {
    v47 = 0;
  }

  v49 = *(v31[8] + 8);
  v50 = *(v49 + 40);
  *(v49 + 40) = v47;

  v51 = *(*(v31[8] + 8) + 40);
  if (!v51)
  {
LABEL_51:
    v88 = 0;
    goto LABEL_103;
  }

  v52 = [v51 hk_mapToSet:&__block_literal_global_515];
  v53 = [v52 allObjects];
  v54 = *(v31[9] + 8);
  v55 = *(v54 + 40);
  *(v54 + 40) = v53;

  v56 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB68]];
  v193[0] = v56;
  v57 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v154];
  v193[1] = v57;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v193 count:2];

  v59 = *(*(v31[8] + 8) + 40);
  v60 = *(*(v31[7] + 8) + 40);
  v172[0] = MEMORY[0x277D85DD0];
  v172[1] = 3221225472;
  v172[2] = __83__HDWorkoutBuilderServer__addSamples_quantities_dataSource_shouldSavePriorToStart___block_invoke_3;
  v172[3] = &unk_278617BF0;
  v142 = v58;
  v173 = v142;
  v61 = [v60 hk_filter:v172];
  v62 = [v59 arrayByAddingObjectsFromArray:v61];

  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v63 = v62;
  obj = v63;
  v166 = [v63 countByEnumeratingWithState:&v168 objects:v192 count:16];
  if (!v166)
  {

    goto LABEL_54;
  }

  v64 = 0;
  v162 = *v169;
  do
  {
    for (j = 0; j != v166; ++j)
    {
      if (*v169 != v162)
      {
        objc_enumerationMutation(obj);
      }

      v66 = *(*(&v168 + 1) + 8 * j);
      v67 = [v66 hdw_dateInterval];
      v68 = v67;
      v69 = *(v31[10] + 8);
      if (*(v69 + 40))
      {
        v70 = [v66 hdw_sample];
        v71 = [v70 startDate];
        v72 = [*(*(v31[10] + 8) + 40) startDate];
        if ([v71 hk_isBeforeDate:v72])
        {
        }

        else
        {
          v75 = [v68 endDate];
          v76 = [*(*(v31[10] + 8) + 40) endDate];
          v77 = [v75 hk_isAfterDate:v76];

          v31 = v149;
          if (!v77)
          {
            goto LABEL_46;
          }
        }

        v78 = objc_alloc(MEMORY[0x277CCA970]);
        v74 = [*(*(v31[10] + 8) + 40) startDate];
        v79 = [v66 hdw_sample];
        v80 = [v79 startDate];
        v81 = HKDateMin();
        v82 = [*(*(v31[10] + 8) + 40) endDate];
        v83 = [v68 endDate];
        v84 = HKDateMax();
        v85 = [v78 initWithStartDate:v81 endDate:v84];
        v86 = *(*(v149 + 80) + 8);
        v87 = *(v86 + 40);
        *(v86 + 40) = v85;

        v31 = v149;
      }

      else
      {
        v73 = v67;
        v74 = *(v69 + 40);
        *(v69 + 40) = v73;
      }

      v64 = 1;
LABEL_46:
    }

    v63 = obj;
    v166 = [obj countByEnumeratingWithState:&v168 objects:v192 count:16];
  }

  while (v166);

  if ((v64 & 1) != 0 && ([*(v31[4] + 48) setDataInterval:*(*(v31[10] + 8) + 40) transaction:v156 error:a3] & 1) == 0)
  {
    v88 = 0;
    goto LABEL_102;
  }

LABEL_54:
  v89 = v31[4];
  v90 = v63;
  v152 = v156;
  if (v89)
  {
    v151 = v89;
    os_unfair_lock_assert_owner(v89 + 10);
    v150 = objc_alloc_init(MEMORY[0x277CCDC18]);
    v91 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v188 = 0u;
    v189 = 0u;
    v190 = 0u;
    v191 = 0u;
    v141 = v90;
    v92 = v90;
    v93 = [v92 countByEnumeratingWithState:&v188 objects:v206 count:16];
    if (v93)
    {
      v94 = v93;
      v95 = *v189;
      do
      {
        for (k = 0; k != v94; ++k)
        {
          if (*v189 != v95)
          {
            objc_enumerationMutation(v92);
          }

          v97 = *(*(&v188 + 1) + 8 * k);
          v98 = [v97 hdw_type];
          v99 = [v91 objectForKeyedSubscript:v98];

          if (!v99)
          {
            v100 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v91 setObject:v100 forKeyedSubscript:v98];
          }

          v101 = [v91 objectForKeyedSubscript:v98];
          [v101 addObject:v97];
        }

        v94 = [v92 countByEnumeratingWithState:&v188 objects:v206 count:16];
      }

      while (v94);
    }

    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v102 = [v91 allKeys];
    v103 = [v102 countByEnumeratingWithState:&v184 objects:&v202 count:16];
    v104 = v151;
    if (v103)
    {
      v105 = v103;
      v106 = *v185;
      v155 = v91;
      v144 = *v185;
      v145 = v102;
      do
      {
        v107 = 0;
        v146 = v105;
        do
        {
          if (*v185 != v106)
          {
            objc_enumerationMutation(v102);
          }

          v108 = *(*(&v184 + 1) + 8 * v107);
          if ([v108 code] != 298 && objc_msgSend(v108, "code") != 304)
          {
            v147 = v107;
            v109 = v108;
            v110 = _HKStatisticsComputationMethodForQuantityType(v109, 0);
            v111 = [(HDWorkoutBuilderServer *)v104 _lock_statisticsCalculatorsForQuantityType:v109 mergeStrategy:0 computationMethod:v110];
            v167 = v109;

            v182 = 0u;
            v183 = 0u;
            v180 = 0u;
            v181 = 0u;
            v163 = v111;
            v159 = [v111 countByEnumeratingWithState:&v180 objects:buf count:16];
            if (v159)
            {
              v157 = *v181;
              do
              {
                for (m = 0; m != v159; ++m)
                {
                  if (*v181 != v157)
                  {
                    objc_enumerationMutation(v163);
                  }

                  v113 = *(*(&v180 + 1) + 8 * m);
                  v114 = [v163 objectForKeyedSubscript:v113];
                  v115 = [v114 dataSource];
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();
                  if (isKindOfClass)
                  {
                    [v115 setEnabled:0];
                  }

                  v117 = [v91 objectForKeyedSubscript:v167];
                  [v117 sortUsingComparator:&__block_literal_global_649_0];
                  v118 = [v167 canonicalUnit];
                  v176[0] = MEMORY[0x277D85DD0];
                  v176[1] = 3221225472;
                  v176[2] = __81__HDWorkoutBuilderServer__lock_updateStatisticsWithQuantities_transaction_error___block_invoke_2;
                  v176[3] = &unk_27861A028;
                  v119 = v117;
                  v177 = v119;
                  v120 = v118;
                  v178 = v120;
                  v121 = v114;
                  v179 = v121;
                  v175 = 0;
                  v122 = [v121 performAddSampleTransaction:v176 error:&v175];
                  v123 = v175;
                  if (isKindOfClass)
                  {
                    [v115 setEnabled:1];
                  }

                  if (v122)
                  {
                    v153 = [v121 currentStatistics];

                    v124 = *(v104 + 48);
                    v174 = 0;
                    v125 = [v124 storeStatisticsCalculator:v121 anchor:0 activityUUID:v113 transaction:v152 error:&v174];
                    v123 = v174;
                    if ((v125 & 1) == 0)
                    {
                      _HKInitializeLogging();
                      v126 = *MEMORY[0x277CCC330];
                      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
                      {
                        *v194 = 138543618;
                        v195 = v104;
                        v196 = 2114;
                        v197 = v123;
                        _os_log_error_impl(&dword_228986000, v126, OS_LOG_TYPE_ERROR, "%{public}@: Failed to persist statistics: %{public}@", v194, 0x16u);
                      }
                    }

                    v127 = [v104 taskUUID];
                    v128 = v104;
                    v129 = [v113 isEqual:v127];

                    if (v129)
                    {
                      v130 = v153;
                      [v150 addWorkoutStatistics:v153 forType:v167];
                    }

                    else
                    {
                      v132 = [*(v128 + 224) objectForKeyedSubscript:v113];
                      v133 = [v132 startDate];

                      v130 = v153;
                      if (v133)
                      {
                        v134 = [v132 startDate];
                        [v153 _setStartDate:v134];
                      }

                      v135 = [v132 endDate];

                      if (v135)
                      {
                        v136 = [v132 endDate];
                        [v153 _setEndDate:v136];
                      }

                      [v150 addActivityStatistics:v153 forType:v167 activityUUID:v113];
                    }

                    v104 = v151;
                  }

                  else
                  {
                    _HKInitializeLogging();
                    v131 = *MEMORY[0x277CCC330];
                    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
                    {
                      *v194 = 138543618;
                      v195 = v104;
                      v196 = 2114;
                      v197 = v123;
                      _os_log_error_impl(&dword_228986000, v131, OS_LOG_TYPE_ERROR, "%{public}@: Failed to add samples to statistics calculator with error: %{public}@", v194, 0x16u);
                    }

                    [*(v104 + 112) addObject:v167];
                  }

                  v91 = v155;
                }

                v159 = [v163 countByEnumeratingWithState:&v180 objects:buf count:16];
              }

              while (v159);
            }

            v31 = v149;
            v106 = v144;
            v102 = v145;
            v105 = v146;
            v107 = v147;
          }

          ++v107;
        }

        while (v107 != v105);
        v105 = [v102 countByEnumeratingWithState:&v184 objects:&v202 count:16];
      }

      while (v105);
    }

    v90 = v141;
  }

  else
  {
    v150 = 0;
  }

  v137 = *(v31[11] + 8);
  v138 = *(v137 + 40);
  *(v137 + 40) = v150;

  v88 = *(*(v31[11] + 8) + 40) != 0;
LABEL_102:

LABEL_103:
  v139 = *MEMORY[0x277D85DE8];
  return v88;
}

uint64_t __83__HDWorkoutBuilderServer__addSamples_quantities_dataSource_shouldSavePriorToStart___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = [v3 sampleType];
    v6 = [v4 containsObject:v5] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __83__HDWorkoutBuilderServer__addSamples_quantities_dataSource_shouldSavePriorToStart___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 10);
  v5 = (*(*(a1 + 40) + 16))();

  os_unfair_lock_unlock((*(a1 + 32) + 40));
  return v5;
}

BOOL __83__HDWorkoutBuilderServer__addSamples_quantities_dataSource_shouldSavePriorToStart___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) profile];
  v6 = [v5 database];
  v7 = [(HDHealthEntity *)HDWorkoutBuilderEntity performWriteTransactionWithHealthDatabase:v6 error:a3 block:*(a1 + 40)];

  return v7;
}

uint64_t __83__HDWorkoutBuilderServer__addSamples_quantities_dataSource_shouldSavePriorToStart___block_invoke_522(void *a1, void *a2)
{
  v6 = a2;
  if ([*(*(a1[5] + 8) + 40) count])
  {
    [v6 workoutBuilderServer:a1[4] addedSamples:*(*(a1[5] + 8) + 40)];
  }

  if ([*(*(a1[6] + 8) + 40) count])
  {
    [v6 workoutBuilderServer:a1[4] addedSamples:*(*(a1[6] + 8) + 40)];
  }

  v3 = [*(*(a1[7] + 8) + 40) count];
  v4 = v6;
  if (v3)
  {
    v3 = [v6 workoutBuilderServer:a1[4] addedQuantities:*(*(a1[7] + 8) + 40)];
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

void __83__HDWorkoutBuilderServer__addSamples_quantities_dataSource_shouldSavePriorToStart___block_invoke_2_524(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    os_unfair_lock_assert_not_owner((v1 + 40));
    os_unfair_lock_lock((v1 + 40));
    v2 = [*(v1 + 112) count];
    os_unfair_lock_unlock((v1 + 40));
    if (v2)
    {
      v3 = objc_alloc_init(MEMORY[0x277CCDC18]);
      v4 = [v1 profile];
      v5 = [v4 database];
      v13 = 0;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __76__HDWorkoutBuilderServer__attemptRequeryForInvalidatedStatisticsCalculators__block_invoke;
      v11[3] = &unk_278613218;
      v11[4] = v1;
      v6 = v3;
      v12 = v6;
      v7 = [(HDHealthEntity *)HDDataEntity performReadTransactionWithHealthDatabase:v5 error:&v13 block:v11];
      v8 = v13;

      if (v7)
      {
        if (([v6 isEmpty] & 1) == 0)
        {
          [(HDWorkoutBuilderServer *)v1 _didUpdateStatistics:v6];
        }
      }

      else
      {
        _HKInitializeLogging();
        v9 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v15 = v1;
          v16 = 2114;
          v17 = v8;
          _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get read transaction to requery for invalidated sample types: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (unint64_t)workoutDataDestinationState
{
  os_unfair_lock_lock(&self->_lock);
  currentState = [(HKStateMachine *)self->_stateMachine currentState];
  v4 = HKWorkoutBuilderConstructionStateFromBuilderServerState([currentState index]);

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)addWorkoutEvents:(id)events dataSource:(id)source
{
  v29 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if ([eventsCopy count] && (-[HKWorkoutBuilderConfiguration shouldCollectWorkoutEvents](self->_configuration, "shouldCollectWorkoutEvents") & 1) != 0)
  {
    v6 = [eventsCopy hk_map:&__block_literal_global_530_1];
    _HKInitializeLogging();
    v7 = MEMORY[0x277CCC330];
    v8 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      *buf = 138544386;
      selfCopy3 = self;
      v21 = 2048;
      v22 = [eventsCopy count];
      v23 = 2114;
      v24 = eventsCopy;
      v25 = 2048;
      v26 = [v6 count];
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "%{public}@: Received %ld events (%{public}@) (%ld public: %@)", buf, 0x34u);
    }

    v18 = 0;
    v10 = [(HDWorkoutBuilderServer *)self _insertWorkoutEvents:v6 error:&v18];
    v11 = v18;
    if (!v10)
    {
      _HKInitializeLogging();
      v12 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v21 = 2114;
        v22 = v11;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to insert workout events: %{public}@", buf, 0x16u);
      }
    }

LABEL_13:
    goto LABEL_14;
  }

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
  {
    v6 = v13;
    v14 = [eventsCopy count];
    shouldCollectWorkoutEvents = [(HKWorkoutBuilderConfiguration *)self->_configuration shouldCollectWorkoutEvents];
    v16 = "no";
    *buf = 138543874;
    selfCopy3 = self;
    if (shouldCollectWorkoutEvents)
    {
      v16 = "YES";
    }

    v21 = 2048;
    v22 = v14;
    v23 = 2080;
    v24 = v16;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "%{public}@: Ignoring %ld workout events (should-collect: %s)", buf, 0x20u);
    goto LABEL_13;
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_insertWorkoutEvents:(uint64_t)events error:
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v45 = v5;
  if (self)
  {
    v6 = v5;
    os_unfair_lock_assert_not_owner((self + 40));
    if ([v6 count])
    {
      v55 = 0;
      v56 = &v55;
      v57 = 0x2020000000;
      v58 = 0;
      profile = [self profile];
      database = [profile database];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __53__HDWorkoutBuilderServer__insertWorkoutEvents_error___block_invoke;
      v52[3] = &unk_278615F88;
      v52[4] = self;
      v9 = v45;
      v53 = v9;
      v54 = &v55;
      v44 = [(HDHealthEntity *)HDWorkoutBuilderEntity performWriteTransactionWithHealthDatabase:database error:events block:v52];
      selfCopy = self;

      if (v44)
      {
        v10 = v9;
        os_unfair_lock_assert_not_owner((self + 40));
        os_unfair_lock_lock((self + 40));
        v11 = [*(self + 176) copy];
        [(HDWorkoutBuilderServer *)self _didUpdateEvents:v11];

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        obj = v10;
        v12 = [obj countByEnumeratingWithState:&v59 objects:v71 count:16];
        if (v12)
        {
          v13 = *v60;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v60 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v59 + 1) + 8 * i);
              if ([v15 type] == 1 || objc_msgSend(v15, "type") == 2)
              {

                os_unfair_lock_unlock((selfCopy + 40));
                v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
                os_unfair_lock_lock((selfCopy + 40));
                v17 = [*(selfCopy + 176) copy];
                v18 = [*(selfCopy + 224) copy];
                os_unfair_lock_unlock((selfCopy + 40));
                v68 = 0u;
                v69 = 0u;
                v66 = 0u;
                v67 = 0u;
                v19 = v18;
                v20 = [v19 countByEnumeratingWithState:&v66 objects:block count:16];
                if (v20)
                {
                  v21 = *v67;
                  do
                  {
                    for (j = 0; j != v20; ++j)
                    {
                      if (*v67 != v21)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v23 = [v19 objectForKeyedSubscript:*(*(&v66 + 1) + 8 * j)];
                      startDate = [v23 startDate];
                      endDate = [v23 endDate];
                      _HKCalculateWorkoutDuration();
                      v27 = v26;

                      [v23 duration];
                      if (v28 != v27)
                      {
                        [v23 _setDuration:v27];
                        [v16 addObject:v23];
                      }
                    }

                    v20 = [v19 countByEnumeratingWithState:&v66 objects:block count:16];
                  }

                  while (v20);
                }

                if ([v16 count])
                {
                  profile2 = [selfCopy profile];
                  database2 = [profile2 database];
                  v65 = 0;
                  v63[0] = MEMORY[0x277D85DD0];
                  v63[1] = 3221225472;
                  v63[2] = __51__HDWorkoutBuilderServer__updateActivitiesDuration__block_invoke;
                  v63[3] = &unk_278613218;
                  v63[4] = selfCopy;
                  v64 = v16;
                  v31 = [(HDHealthEntity *)HDWorkoutBuilderEntity performWriteTransactionWithHealthDatabase:database2 error:&v65 block:v63];
                  v32 = v65;

                  if (!v31)
                  {
                    _HKInitializeLogging();
                    v33 = *MEMORY[0x277CCC330];
                    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543618;
                      v73 = selfCopy;
                      v74 = 2114;
                      v75 = v32;
                      _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "%{public}@: Error updating activity duration %{public}@", buf, 0x16u);
                    }
                  }

                  [(HDWorkoutBuilderServer *)selfCopy _didUpdateActivities];
                }

                [(HDWorkoutBuilderServer *)selfCopy _didChangeElapsedTimeBasis];
                [(HDWorkoutBuilderServer *)selfCopy _updateStatisticsPauseResumeMask];
                goto LABEL_30;
              }
            }

            v12 = [obj countByEnumeratingWithState:&v59 objects:v71 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        os_unfair_lock_unlock((selfCopy + 40));
LABEL_30:

        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v34 = obj;
        v35 = [v34 countByEnumeratingWithState:&v48 objects:v70 count:16];
        if (v35)
        {
          v36 = *v49;
          do
          {
            for (k = 0; k != v35; ++k)
            {
              if (*v49 != v36)
              {
                objc_enumerationMutation(v34);
              }

              v38 = *(*(&v48 + 1) + 8 * k);
              if ([v38 type] == 1 || objc_msgSend(v38, "type") == 2)
              {
                v39 = v38;
                v40 = *(selfCopy + 152);
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __56__HDWorkoutBuilderServer__notifySourcesOfInsertedEvent___block_invoke;
                block[3] = &unk_278613920;
                block[4] = selfCopy;
                v41 = v39;
                v77 = v41;
                dispatch_async(v40, block);
              }
            }

            v35 = [v34 countByEnumeratingWithState:&v48 objects:v70 count:16];
          }

          while (v35);
        }
      }

      if (*(v56 + 24) == 1)
      {
        [(HDWorkoutBuilderServer *)selfCopy _didUpdateActivities];
      }

      _Block_object_dispose(&v55, 8);
    }

    else
    {
      v44 = 1;
    }
  }

  else
  {
    v44 = 0;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v44;
}

- (void)addMetadata:(id)metadata dataSource:(id)source
{
  v17 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  sourceCopy = source;
  v12 = 0;
  if (self)
  {
    v8 = [(HDWorkoutBuilderServer *)self _addMetadata:metadataCopy byPassPrivateKeyCheck:0 error:&v12];
    v9 = v12;
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = 0;
  }

  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    selfCopy = self;
    v15 = 2114;
    v16 = v9;
    _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to add metadata with error: %{public}@", buf, 0x16u);
  }

LABEL_5:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addMetadataToWorkoutActivity:(id)activity withSampleStartDate:(id)date dataSource:(id)source
{
  v42 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_workoutActivitiesByUUID copy];
  os_unfair_lock_unlock(&self->_lock);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v32 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = [v10 objectForKeyedSubscript:*(*(&v31 + 1) + 8 * v14)];
      startDate = [v15 startDate];
      v17 = [dateCopy hk_isAfterOrEqualToDate:startDate];

      if (v17)
      {
        endDate = [v15 endDate];

        if (!endDate)
        {
          break;
        }

        endDate2 = [v15 endDate];
        v20 = [dateCopy hk_isBeforeOrEqualToDate:endDate2];

        if (v20)
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    v21 = v15;

    if (!v21)
    {
      goto LABEL_15;
    }

    uUID = [v21 UUID];
    v30 = 0;
    v23 = [(HDWorkoutBuilderServer *)self _updateActivityWithUUID:uUID addMetadata:activityCopy error:&v30];
    v24 = v30;

    if (v23)
    {
      [(HDWorkoutBuilderServer *)self _didUpdateActivities];
    }

    else
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        v28 = v26;
        uUID2 = [v21 UUID];
        *buf = 138543874;
        selfCopy2 = self;
        v37 = 2114;
        v38 = uUID2;
        v39 = 2114;
        v40 = v24;
        _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "%{public}@: Failed to add metadata to workout activity with UUID %{public}@ with error: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
LABEL_11:

LABEL_15:
    _HKInitializeLogging();
    v25 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v37 = 2114;
      v38 = dateCopy;
      _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "%{public}@: Failed to find activity greater than date %{public}@ to add metadata", buf, 0x16u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_updateActivityWithUUID:(void *)d addMetadata:(void *)metadata error:
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  dCopy = d;
  if (self)
  {
    os_unfair_lock_assert_not_owner((self + 40));
    client = [self client];
    v10 = [dCopy hd_validateMetadataKeysAndValuesWithClient:client error:metadata];

    if (v10)
    {
      os_unfair_lock_lock((self + 40));
      v11 = [*(self + 224) objectForKeyedSubscript:v7];

      os_unfair_lock_unlock((self + 40));
      if (v11)
      {
        _HKInitializeLogging();
        v12 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          uUIDString = [v7 UUIDString];
          *buf = 138543618;
          selfCopy = self;
          v28 = 2112;
          v29 = uUIDString;
          _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding metadata to activity with UUID %@", buf, 0x16u);
        }

        profile = [self profile];
        database = [profile database];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __68__HDWorkoutBuilderServer__updateActivityWithUUID_addMetadata_error___block_invoke;
        v23[3] = &unk_278615D40;
        v23[4] = self;
        v24 = v7;
        v25 = dCopy;
        self = [(HDHealthEntity *)HDWorkoutBuilderEntity performWriteTransactionWithHealthDatabase:database error:metadata block:v23];
      }

      else
      {
        v17 = MEMORY[0x277CCA9B8];
        uUIDString2 = [v7 UUIDString];
        v19 = [v17 hk_error:118 format:{@"Cannot find activity with UUID %@", uUIDString2}];
        self = v19 == 0;
        if (v19)
        {
          if (metadata)
          {
            v20 = v19;
            *metadata = v19;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }
    }

    else
    {
      self = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)_didUpdateActivities
{
  if (self)
  {
    os_unfair_lock_assert_not_owner((self + 40));
    os_unfair_lock_lock((self + 40));
    allValues = [*(self + 224) allValues];
    os_unfair_lock_unlock((self + 40));
    client = [self client];
    connection = [client connection];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__HDWorkoutBuilderServer__didUpdateActivities__block_invoke;
    v6[3] = &unk_2786138D0;
    v6[4] = self;
    v5 = [connection remoteObjectProxyWithErrorHandler:v6];

    [v5 clientRemote_didUpdateActivities:allValues];
  }
}

- (void)updateActivityWithUUID:(id)d addMedatata:(id)medatata dataSource:(id)source
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v12 = 0;
  v8 = [(HDWorkoutBuilderServer *)self _updateActivityWithUUID:dCopy addMetadata:medatata error:&v12];
  v9 = v12;
  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy = self;
      v15 = 2114;
      v16 = dCopy;
      v17 = 2114;
      v18 = v9;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to add metadata to workout activity with UUID %{public}@ with error: %{public}@", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateWorkoutConfiguration:(id)configuration dataSource:(id)source
{
  v39 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  sourceCopy = source;
  v8 = configurationCopy;
  v9 = v8;
  if (self)
  {
    if (v8)
    {
      profile = [(HDStandardTaskServer *)self profile];
      database = [profile database];
      v27 = 0;
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v35 = __54__HDWorkoutBuilderServer__updateWorkoutConfiguration___block_invoke;
      v36 = &unk_278613218;
      selfCopy3 = self;
      v12 = v9;
      v38 = v12;
      v13 = [(HDHealthEntity *)HDWorkoutBuilderEntity performWriteTransactionWithHealthDatabase:database error:&v27 block:&buf];
      v14 = v27;

      if (v13)
      {
        os_unfair_lock_lock(&self->_lock);
        [(HKWorkoutBuilderConfiguration *)self->_configuration setWorkoutConfiguration:v12];
        os_unfair_lock_unlock(&self->_lock);
      }

      else
      {
        _HKInitializeLogging();
        v16 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          *v30 = 138543618;
          selfCopy2 = self;
          v32 = 2114;
          v33 = v14;
          _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update builder workout Configuration: %{public}@", v30, 0x16u);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = self;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Workout Configuration is nil. Nothing to update}@", &buf, 0xCu);
      }
    }
  }

  currentMetadata = [(HDWorkoutBuilderServer *)self currentMetadata];
  v18 = *MEMORY[0x277CCC4C0];
  v19 = [currentMetadata objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];

  LODWORD(currentMetadata) = [v19 BOOLValue];
  locationType = [v9 locationType];
  if (currentMetadata != (locationType == 2))
  {
    v28 = v18;
    v21 = [MEMORY[0x277CCABB0] numberWithBool:locationType == 2];
    v29 = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    [(HDWorkoutBuilderServer *)self addMetadata:v22 dataSource:sourceCopy];
  }

  v23 = v9;
  v24 = v23;
  if (self)
  {
    upstreamQueue = self->_upstreamQueue;
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v35 = __62__HDWorkoutBuilderServer__notifySourcesOfConfigurationUpdate___block_invoke;
    v36 = &unk_278613920;
    selfCopy3 = self;
    v38 = v23;
    dispatch_async(upstreamQueue, &buf);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)didBeginActivity:(id)activity dataSource:(id)source
{
  v29 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v23 = 0;
  v6 = [(HDWorkoutBuilderServer *)self _addWorkoutActivity:activityCopy error:&v23];
  v7 = v23;
  if (v6)
  {
    allSourceProcessors = [(HKDataFlowLink *)self->_workoutDataFlowLink allSourceProcessors];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [allSourceProcessors countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(allSourceProcessors);
          }

          [*(*(&v19 + 1) + 8 * v12++) workoutDataDestination:self didBeginActivity:activityCopy];
        }

        while (v10 != v12);
        v10 = [allSourceProcessors countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    client = [(HDStandardTaskServer *)self client];
    connection = [client connection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__HDWorkoutBuilderServer_didBeginActivity_dataSource___block_invoke;
    v18[3] = &unk_2786138D0;
    v18[4] = self;
    v15 = [connection remoteObjectProxyWithErrorHandler:v18];

    [v15 clientRemote_didBeginActivity:activityCopy];
  }

  else
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v27 = 2114;
      v28 = v7;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Failed to insert activity: %{public}@", buf, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_addWorkoutActivity:(uint64_t)activity error:
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    os_unfair_lock_assert_not_owner((self + 40));
    os_unfair_lock_lock((self + 40));
    v6 = [*(self + 176) copy];
    os_unfair_lock_unlock((self + 40));
    startDate = [v5 startDate];
    endDate = [v5 endDate];
    _HKCalculateWorkoutDuration();
    v10 = v9;

    [v5 _setDuration:v10];
    if ([v6 count])
    {
      [v5 _filterAndSetWorkoutEvents:v6];
    }

    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__170;
    v57 = __Block_byref_object_dispose__170;
    v58 = 0;
    v11 = *MEMORY[0x277CCC330];
    spid = _HKLogSignpostIDGenerate();
    _HKInitializeLogging();
    v12 = HKLogWorkoutsCategory();
    v13 = os_signpost_enabled(v12);

    if (v13)
    {
      v14 = HKLogWorkoutsCategory();
      v15 = v14;
      if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *buf = 138543618;
        selfCopy = self;
        v62 = 2112;
        v63 = v5;
        _os_signpost_emit_with_name_impl(&dword_228986000, v15, OS_SIGNPOST_INTERVAL_BEGIN, spid, "add-workout-activity", "%{public}@: Adding workout activity %@", buf, 0x16u);
      }
    }

    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __52__HDWorkoutBuilderServer__addWorkoutActivity_error___block_invoke;
    v50[3] = &unk_2786179D0;
    v50[4] = self;
    v16 = v5;
    v51 = v16;
    v52 = &v53;
    v44 = [(HDWorkoutBuilderServer *)self _runInBestWriteTransactionWithError:activity block:v50];
    _HKInitializeLogging();
    v17 = HKLogWorkoutsCategory();
    v18 = os_signpost_enabled(v17);

    if (v18)
    {
      v19 = HKLogWorkoutsCategory();
      v20 = v19;
      if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_228986000, v20, OS_SIGNPOST_EVENT, spid, "write-transaction-completed", "", buf, 2u);
      }
    }

    if (v44)
    {
      activitiesStatistics = [v54[5] activitiesStatistics];
      uUID = [v16 UUID];
      v23 = [activitiesStatistics objectForKeyedSubscript:uUID];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v46 objects:v59 count:16];
      if (v25)
      {
        v26 = *v47;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v47 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v46 + 1) + 8 * i);
            v29 = [v24 objectForKeyedSubscript:v28];
            [v16 _setStatistics:v29 forType:v28];
          }

          v25 = [v24 countByEnumeratingWithState:&v46 objects:v59 count:16];
        }

        while (v25);
      }

      os_unfair_lock_lock((self + 40));
      v30 = *(self + 224);
      if (!v30)
      {
        v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v32 = *(self + 224);
        *(self + 224) = v31;

        v30 = *(self + 224);
      }

      uUID2 = [v16 UUID];
      [v30 setObject:v16 forKeyedSubscript:uUID2];

      os_unfair_lock_unlock((self + 40));
      _HKInitializeLogging();
      v34 = HKLogWorkoutsCategory();
      v35 = os_signpost_enabled(v34);

      if (v35)
      {
        v36 = HKLogWorkoutsCategory();
        v37 = v36;
        if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_228986000, v37, OS_SIGNPOST_EVENT, spid, "updated-statistics", "", buf, 2u);
        }
      }
    }

    _HKInitializeLogging();
    v38 = HKLogWorkoutsCategory();
    v39 = os_signpost_enabled(v38);

    if (v39)
    {
      v40 = HKLogWorkoutsCategory();
      v41 = v40;
      if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_228986000, v41, OS_SIGNPOST_INTERVAL_END, spid, "add-workout-activity", "", buf, 2u);
      }
    }

    _Block_object_dispose(&v53, 8);
  }

  else
  {
    v44 = 0;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v44;
}

void __54__HDWorkoutBuilderServer_didBeginActivity_dataSource___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Couldn't notify Workout Builder Server client of begun activity with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didEndActivity:(id)activity dataSource:(id)source
{
  v17 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  uUID = [activityCopy UUID];
  endDate = [activityCopy endDate];

  v12 = 0;
  v8 = [(HDWorkoutBuilderServer *)self _endActivityWithUUID:uUID endDate:endDate error:&v12];
  v9 = v12;

  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v15 = 2114;
      v16 = v9;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed registering end of activity: %{public}@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_endActivityWithUUID:(void *)d endDate:(void *)date error:
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a2;
  dCopy = d;
  if (self)
  {
    os_unfair_lock_assert_not_owner((self + 40));
    os_unfair_lock_lock((self + 40));
    v9 = [*(self + 176) copy];
    v10 = [*(self + 224) objectForKeyedSubscript:v7];
    _deepCopy = [v10 _deepCopy];

    os_unfair_lock_unlock((self + 40));
    if (!_deepCopy)
    {
      v29 = MEMORY[0x277CCA9B8];
      uUIDString = [v7 UUIDString];
      v31 = [v29 hk_error:118 format:{@"Cannot find activity with UUID %@", uUIDString}];
      self = v31 == 0;
      if (v31)
      {
        if (date)
        {
          v32 = v31;
          *date = v31;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v20 = 0;
      goto LABEL_24;
    }

    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy = self;
      v49 = 2112;
      v50 = dCopy;
      v51 = 2112;
      v52 = _deepCopy;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting end date %@ on activity %@", buf, 0x20u);
    }

    startDate = [_deepCopy startDate];
    v36 = v9;
    _HKCalculateWorkoutDuration();
    v15 = v14;

    v37 = dCopy;
    [_deepCopy _setEndDate:dCopy];
    [_deepCopy _setDuration:v15];
    profile = [self profile];
    database = [profile database];
    v45 = 0;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __61__HDWorkoutBuilderServer__endActivityWithUUID_endDate_error___block_invoke;
    v43[3] = &unk_278613218;
    v43[4] = self;
    v18 = _deepCopy;
    v44 = v18;
    v19 = [(HDHealthEntity *)HDWorkoutBuilderEntity performWriteTransactionWithHealthDatabase:database error:&v45 block:v43];
    v20 = v45;

    if (v19)
    {
      [(HDWorkoutBuilderServer *)self _updateStatisticsPauseResumeMask];
      allSourceProcessors = [*(self + 120) allSourceProcessors];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v22 = [allSourceProcessors countByEnumeratingWithState:&v39 objects:v46 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v40;
        do
        {
          v25 = 0;
          do
          {
            if (*v40 != v24)
            {
              objc_enumerationMutation(allSourceProcessors);
            }

            [*(*(&v39 + 1) + 8 * v25++) workoutDataDestination:self didEndActivity:v18];
          }

          while (v23 != v25);
          v23 = [allSourceProcessors countByEnumeratingWithState:&v39 objects:v46 count:16];
        }

        while (v23);
      }

      os_unfair_lock_lock((self + 40));
      [*(self + 224) setObject:v18 forKeyedSubscript:v7];
      os_unfair_lock_unlock((self + 40));
      client = [self client];
      connection = [client connection];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __61__HDWorkoutBuilderServer__endActivityWithUUID_endDate_error___block_invoke_2;
      v38[3] = &unk_2786138D0;
      v38[4] = self;
      v28 = [connection remoteObjectProxyWithErrorHandler:v38];

      [v28 clientRemote_didEndActivity:v18];
    }

    else
    {
      allSourceProcessors = v20;
      if (allSourceProcessors)
      {
        v9 = v36;
        dCopy = v37;
        if (date)
        {
          v33 = allSourceProcessors;
          self = 0;
          *date = allSourceProcessors;
        }

        else
        {
          _HKLogDroppedError();
          self = 0;
        }

        goto LABEL_21;
      }
    }

    self = 1;
    v9 = v36;
    dCopy = v37;
LABEL_21:

LABEL_24:
  }

  v34 = *MEMORY[0x277D85DE8];
  return self;
}

uint64_t __61__HDWorkoutBuilderServer__endActivityWithUUID_endDate_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  os_unfair_lock_lock(v5 + 10);
  v7 = [*(*(a1 + 32) + 48) updateWorkoutActivityEndDate:*(a1 + 40) transaction:v6 error:a3];

  os_unfair_lock_unlock((*(a1 + 32) + 40));
  return v7;
}

void __61__HDWorkoutBuilderServer__endActivityWithUUID_endDate_error___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Couldn't notify Workout Builder Server client of ended activity with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateGeneratedTypesWithConfiguration:(id)configuration sampleTypes:(id)types dataSource:(id)source didUpdateActivity:(BOOL)activity date:(id)date
{
  configurationCopy = configuration;
  typesCopy = types;
  dateCopy = date;
  upstreamQueue = self->_upstreamQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__HDWorkoutBuilderServer_didUpdateGeneratedTypesWithConfiguration_sampleTypes_dataSource_didUpdateActivity_date___block_invoke;
  block[3] = &unk_278617B08;
  block[4] = self;
  v19 = configurationCopy;
  activityCopy = activity;
  v20 = typesCopy;
  v21 = dateCopy;
  v15 = dateCopy;
  v16 = typesCopy;
  v17 = configurationCopy;
  dispatch_async(upstreamQueue, block);
}

void __113__HDWorkoutBuilderServer_didUpdateGeneratedTypesWithConfiguration_sampleTypes_dataSource_didUpdateActivity_date___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 120) allSourceProcessors];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 workoutDataDestination:*(a1 + 32) didUpdateGeneratedTypesWithConfiguration:*(a1 + 40) sampleTypes:*(a1 + 48) didUpdateActivity:*(a1 + 64) date:*(a1 + 56)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addDataAccumulationObserver:(id)observer
{
  observerCopy = observer;
  [(HKObserverSet *)self->_dataAccumulatorObservers registerObserver:observerCopy];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  os_unfair_lock_lock(&self->_lock);
  statisticsCalculators = self->_statisticsCalculators;
  taskUUID = [(HDStandardTaskServer *)self taskUUID];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HDWorkoutBuilderServer__currentStatisticsByQuantityType__block_invoke;
  v9[3] = &unk_27862AB90;
  v7 = v4;
  v10 = v7;
  [(HDWorkoutBuilderStatisticsCalculators *)statisticsCalculators enumerateCalculatorsForActivityUUID:taskUUID handler:v9];

  os_unfair_lock_unlock(&self->_lock);
  if (objc_opt_respondsToSelector())
  {
    [observerCopy workoutDataAccumulator:self didUpdateStatistics:v7];
  }
}

- (id)currentEvents
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSArray *)self->_lock_workoutEvents copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)startDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_workoutStartDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)stateMachine:(id)machine didEnterState:(id)state date:(id)date error:(id)error
{
  stateCopy = state;
  dateCopy = date;
  errorCopy = error;
  os_unfair_lock_assert_owner(&self->_lock);
  index = [stateCopy index];
  if (index > 4)
  {
    if ((index - 7) < 2)
    {
      if (!errorCopy)
      {
        errorCopy = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Workout builder has been discarded."];
      }

      v19 = [errorCopy copy];
      error = self->_error;
      self->_error = v19;

      upstreamQueue = self->_upstreamQueue;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_562;
      v28[3] = &unk_278613830;
      v28[4] = self;
      v29 = stateCopy;
      errorCopy = errorCopy;
      v30 = errorCopy;
      dispatch_async(upstreamQueue, v28);

      v22 = v29;
      goto LABEL_24;
    }

    if (index == 5)
    {
      v14 = self->_upstreamQueue;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_3_551;
      v33[3] = &unk_278613968;
      v33[4] = self;
      v15 = v33;
      goto LABEL_19;
    }

    if (index == 6)
    {
      v14 = self->_upstreamQueue;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_2_554;
      v31[3] = &unk_278613968;
      v31[4] = self;
      v15 = v31;
      goto LABEL_19;
    }
  }

  else
  {
    if (index > 1)
    {
      if (index == 2)
      {
        v14 = self->_upstreamQueue;
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_539;
        v36[3] = &unk_278613968;
        v36[4] = self;
        v15 = v36;
        goto LABEL_19;
      }

      if (index != 3)
      {
        v14 = self->_upstreamQueue;
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_553;
        v32[3] = &unk_278613968;
        v32[4] = self;
        v15 = v32;
LABEL_19:
        dispatch_async(v14, v15);
        goto LABEL_27;
      }

      v27 = self->_upstreamQueue;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_2_543;
      v34[3] = &unk_278613920;
      v34[4] = self;
      v35 = dateCopy;
      dispatch_async(v27, v34);
      v22 = v35;
LABEL_24:

      goto LABEL_27;
    }

    if (index)
    {
      if (index == 1)
      {
        v39 = 0;
        v16 = [(HDWorkoutBuilderServer *)self _validateAuthorizationToSaveWorkoutWithError:?];
        v17 = v39;
        if (v16)
        {
          v18 = self->_upstreamQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_2;
          block[3] = &unk_278613920;
          block[4] = self;
          v38 = dateCopy;
          dispatch_async(v18, block);
        }

        else
        {
          [(HDWorkoutBuilderServer *)self _lock_failWithError:v17];
        }
      }
    }

    else
    {
      v42 = 0;
      v23 = [(HDWorkoutBuilderServer *)self _validateAuthorizationToSaveWorkoutWithError:?];
      v24 = v42;
      if ((v23 & 1) == 0)
      {
        [(HDWorkoutBuilderServer *)self _lock_failWithError:v24];
      }

      v25 = self->_upstreamQueue;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke;
      v40[3] = &unk_278613920;
      v40[4] = self;
      v41 = v24;
      v26 = v24;
      dispatch_async(v25, v40);
    }
  }

LABEL_27:
}

void __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v18 = 0;
  if (!v2)
  {
    v17 = 0;
LABEL_14:
    os_unfair_lock_lock((*(a1 + 32) + 40));
    [(HDWorkoutBuilderServer *)*(a1 + 32) _lock_failWithError:?];
    os_unfair_lock_unlock((*(a1 + 32) + 40));
    goto LABEL_15;
  }

  os_unfair_lock_assert_not_owner((v2 + 40));
  v3 = [*(v2 + 208) workoutConfiguration];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  os_unfair_lock_lock((v2 + 40));
  v5 = *MEMORY[0x277CCC4C0];
  v6 = [*(v2 + 216) objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];

  if (!v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "locationType") == 2}];
    [v4 setObject:v7 forKeyedSubscript:v5];
  }

  if ([v3 swimmingLocationType])
  {
    v8 = *MEMORY[0x277CCC510];
    v9 = [*(v2 + 216) objectForKeyedSubscript:*MEMORY[0x277CCC510]];

    if (!v9)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "swimmingLocationType")}];
      [v4 setObject:v10 forKeyedSubscript:v8];
    }
  }

  v11 = [v3 lapLength];
  if (v11)
  {
    v12 = v11;
    v13 = *MEMORY[0x277CCC4D0];
    v14 = [*(v2 + 216) objectForKeyedSubscript:*MEMORY[0x277CCC4D0]];

    if (!v14)
    {
      v15 = [v3 lapLength];
      [v4 setObject:v15 forKeyedSubscript:v13];
    }
  }

  os_unfair_lock_unlock((v2 + 40));
  if ([v4 count])
  {
    v16 = [(HDWorkoutBuilderServer *)v2 _addMetadata:v4 byPassPrivateKeyCheck:0 error:&v18];
  }

  else
  {
    v16 = 1;
  }

  v17 = v18;
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_15:
}

void __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 120) allSourceProcessors];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 32);
        v8 = *(v7 + 232);
        if (!v8)
        {
          v8 = *(a1 + 40);
        }

        [(HDWorkoutBuilderServer *)v7 _requestDataFromSource:v8 from:*(v7 + 240) to:?];
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v4);
  }

  v9 = *(a1 + 32);
  v15 = 0;
  v10 = [(HDWorkoutBuilderServer *)v9 _associateZonesSamplesIfNeededWithError:?];
  v11 = v15;
  if ((v10 & 1) == 0)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      *buf = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = v11;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to associate zone samples for workout builder: %{public}@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_requestDataFromSource:(void *)source from:(void *)from to:
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  sourceCopy = source;
  fromCopy = from;
  if (self)
  {
    v19 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __57__HDWorkoutBuilderServer__requestDataFromSource_from_to___block_invoke;
    v14[3] = &unk_27861A218;
    v15 = v7;
    selfCopy = self;
    v17 = sourceCopy;
    v18 = fromCopy;
    v10 = [(HDWorkoutBuilderServer *)self _runInBestWriteTransactionWithError:v14 block:?];
    v11 = v19;
    if ((v10 & 1) == 0)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v22 = 2114;
        v23 = v11;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed write transaction when fetching data during data source addition: %{public}@", buf, 0x16u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_associateZonesSamplesIfNeededWithError:(id *)error
{
  v45[2] = *MEMORY[0x277D85DE8];
  if (error)
  {
    if (error[32])
    {
      v3 = 1;
    }

    else
    {
      v41 = 0;
      v5 = MEMORY[0x277CBEB98];
      heartRateType = [MEMORY[0x277CCDCF0] heartRateType];
      cyclingPowerType = [MEMORY[0x277CCDCF0] cyclingPowerType];
      v8 = [v5 setWithObjects:{heartRateType, cyclingPowerType, 0}];

      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __53__HDWorkoutBuilderServer__fetchZonesByTypeWithError___block_invoke;
      v42[3] = &unk_27862AB20;
      v10 = v9;
      v43 = v10;
      v11 = 0;
      if ([error enumerateSamplesOfTypes:v8 error:&v41 handler:v42])
      {
        v11 = v10;
      }

      v12 = v41;
      if (v11)
      {
        if ([v11 count])
        {
          v13 = [v11 mutableCopy];
          v14 = error[32];
          error[32] = v13;
          v3 = 1;
        }

        else
        {
          v34 = a2;
          v35 = v12;
          heartRateType2 = [MEMORY[0x277CCDCF0] heartRateType];
          v45[0] = heartRateType2;
          cyclingPowerType2 = [MEMORY[0x277CCDCF0] cyclingPowerType];
          v45[1] = cyclingPowerType2;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v14 = v17;
          v18 = [v14 countByEnumeratingWithState:&v37 objects:v44 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v38;
            while (2)
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v38 != v20)
                {
                  objc_enumerationMutation(v14);
                }

                v22 = *(*(&v37 + 1) + 8 * i);
                profile = [error profile];
                v36 = 0;
                v24 = [(HDSampleEntity *)HDWorkoutZonesSampleEntity mostRecentSampleWithType:v22 profile:profile encodingOptions:0 predicate:0 anchor:0 error:&v36];
                v25 = v36;

                if (v24)
                {
                  v26 = 1;
                }

                else
                {
                  v26 = v25 == 0;
                }

                if (!v26)
                {
                  if (v34)
                  {
                    v31 = v25;
                    *v34 = v25;
                  }

                  else
                  {
                    _HKLogDroppedError();
                  }

                  v12 = v35;

                  v3 = 0;
                  allValues = v14;
                  goto LABEL_32;
                }

                if (v24)
                {
                  v27 = error[32];
                  if (!v27)
                  {
                    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
                    v29 = error[32];
                    error[32] = v28;

                    v27 = error[32];
                  }

                  [v27 setObject:v24 forKeyedSubscript:v22];
                }
              }

              v19 = [v14 countByEnumeratingWithState:&v37 objects:v44 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          if ([error[32] count])
          {
            allValues = [error[32] allValues];
            v3 = 1;
            [(HDWorkoutBuilderServer *)error _addSamples:allValues quantities:MEMORY[0x277CBEBF8] dataSource:0 shouldSavePriorToStart:1];
            v12 = v35;
LABEL_32:
          }

          else
          {
            v3 = 1;
            v12 = v35;
          }
        }
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v3;
}

void __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_539(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x277D10A98];
  v4 = [v2 currentEvents];
  v5 = v3;
  v6 = @"Slow workout end";
  v7 = v4;
  if (v2)
  {
    v8 = v2[29];
    v9 = v2[30];
    _HKCalculateWorkoutDuration();
    if (v10 <= 7200.0)
    {
      v11 = [objc_alloc(MEMORY[0x277CCDDB0]) initWithCompletion:&__block_literal_global_569];
      v12 = v2[23];
      v2[23] = v11;

      v13 = v2[23];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __96__HDWorkoutBuilderServer__scheduleTailSpinTimeoutIfNeededForCategory_description_workoutEvents___block_invoke_2;
      v16[3] = &unk_278613920;
      v17 = v5;
      v14 = @"Slow workout end";
      v18 = @"Slow workout end";
      [v13 startWithTimeoutInterval:v16 handler:8.0];
    }
  }

  v15 = *(a1 + 32);

  [(HDWorkoutBuilderServer *)v15 _checkForAttachedDataSources];
}

- (void)_checkForAttachedDataSources
{
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    [*(self + 136) enqueueEvent:101 date:0 error:0 completion:&__block_literal_global_712];

    os_unfair_lock_unlock((self + 40));
  }
}

void __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_2_543(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 currentEvents];
  if (v2)
  {
    [(HDWorkoutBuilderServer *)v2 _submitWorkoutPerformanceEvent:v3 workoutEvents:0 failure:?];
  }

  v4 = [*(*(a1 + 32) + 120) allSourceProcessors];
  v5 = *(*(a1 + 32) + 232);
  if (!v5)
  {
    v5 = *(a1 + 40);
  }

  v6 = v5;
  v7 = *(*(a1 + 32) + 240);
  if (!v7)
  {
    v7 = *(a1 + 40);
  }

  v8 = v7;
  v9 = dispatch_group_create();
  v10 = *(a1 + 32);
  v32 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_3;
  v25[3] = &unk_27862AA08;
  v11 = v4;
  v26 = v11;
  v12 = v9;
  v13 = *(a1 + 32);
  v27 = v12;
  v28 = v13;
  v14 = v6;
  v29 = v14;
  v15 = v8;
  v30 = v15;
  v31 = *(a1 + 40);
  v16 = [(HDWorkoutBuilderServer *)v10 _runInBestWriteTransactionWithError:v25 block:?];
  v17 = v32;
  if ((v16 & 1) == 0)
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 32);
      *buf = 138543618;
      v34 = v22;
      v35 = 2114;
      v36 = v17;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Failed to set up write transaction for requesting final data: %{public}@", buf, 0x16u);
    }
  }

  v19 = *(a1 + 32);
  v20 = *(v19 + 152);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_547;
  block[3] = &unk_278618990;
  block[4] = v19;
  v24 = v16;
  dispatch_group_notify(v12, v20, block);

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_3(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        dispatch_group_enter(*(a1 + 40));
        _HKInitializeLogging();
        v7 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 48);
          v9 = *(a1 + 56);
          v10 = *(a1 + 64);
          *buf = 138544130;
          v26 = v8;
          v27 = 2114;
          v28 = v9;
          v29 = 2114;
          v30 = v10;
          v31 = 2114;
          v32 = v6;
          _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w1) Requesting final data for interval (%{public}@ - %{public}@) from %{public}@", buf, 0x2Au);
        }

        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v13 = *(a1 + 64);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_544;
        v19[3] = &unk_278613630;
        v19[4] = v11;
        v19[5] = v6;
        v20 = *(a1 + 40);
        [v6 workoutDataDestination:v11 requestsFinalDataFrom:v12 to:v13 completion:v19];
        v14 = *(a1 + 48);
        v15 = *(v14 + 240);
        if (!v15)
        {
          v15 = *(a1 + 72);
        }

        [(HDWorkoutBuilderServer *)v14 _requestDataFromSource:v6 from:*(v14 + 232) to:v15];
      }

      v3 = [obj countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v3);
  }

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

void __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_544(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  v7 = *MEMORY[0x277CCC330];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v13 = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w1) Received final data from %{public}@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = 138543874;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    v17 = 2114;
    v18 = v5;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to recieve final data from %{public}@: %{public}@", &v13, 0x20u);
  }

  dispatch_group_leave(*(a1 + 48));

  v10 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_runInBestWriteTransactionWithError:(void *)error block:
{
  errorCopy = error;
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    v6 = *(self + 168);
    os_unfair_lock_unlock((self + 40));
    v7 = [HDMutableDatabaseTransactionContext alloc];
    v8 = [(HDMutableDatabaseTransactionContext *)v7 contextWithAccessibilityAssertion:v6];

    [v8 setRequiresWrite:1];
    [v8 setRequiresProtectedData:1];
    profile = [self profile];
    database = [profile database];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__HDWorkoutBuilderServer__runInBestWriteTransactionWithError_block___block_invoke;
    v15[3] = &unk_27861A528;
    v16 = errorCopy;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__HDWorkoutBuilderServer__runInBestWriteTransactionWithError_block___block_invoke_2;
    v13[3] = &unk_278618968;
    v14 = v16;
    v11 = [database performTransactionWithContext:v8 error:a2 block:v15 inaccessibilityHandler:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_547(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  [*(*(a1 + 32) + 136) enqueueEvent:102 date:0 error:0 completion:&__block_literal_global_550];
  os_unfair_lock_unlock((*(a1 + 32) + 40));
  v2 = *(a1 + 32);
  v3 = [v2 currentEvents];
  [(HDWorkoutBuilderServer *)v2 _submitWorkoutPerformanceEvent:v3 workoutEvents:(*(a1 + 40) & 1) == 0 failure:?];
}

- (void)_submitWorkoutPerformanceEvent:(void *)event workoutEvents:(char)events failure:
{
  v20 = a2;
  eventCopy = event;
  if (self)
  {
    associatedSessionUUID = [*(self + 208) associatedSessionUUID];

    if (associatedSessionUUID)
    {
      os_unfair_lock_lock((self + 40));
      v19 = [*(self + 224) count];
      os_unfair_lock_unlock((self + 40));
      profile = [self profile];
      daemon = [profile daemon];
      analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
      associatedSessionUUID2 = [*(self + 208) associatedSessionUUID];
      workoutConfiguration = [*(self + 208) workoutConfiguration];
      activityType = [workoutConfiguration activityType];
      v15 = *(self + 232);
      v16 = *(self + 240);
      _HKCalculateWorkoutDuration();
      LOBYTE(v18) = events;
      [HDWorkoutUtilities submitWorkoutPerformanceAnalyticsWithCoordinator:analyticsSubmissionCoordinator event:v20 sessionIdentifier:associatedSessionUUID2 activityType:activityType duration:v17 activityCount:v19 failure:v18];
    }
  }
}

void __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_3_551(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 currentEvents];
  if (v2)
  {
    [(HDWorkoutBuilderServer *)v2 _submitWorkoutPerformanceEvent:v3 workoutEvents:0 failure:?];
  }

  v4 = *(a1 + 32);
  v46 = 0;
  if (!v4)
  {
    goto LABEL_29;
  }

  os_unfair_lock_lock((v4 + 40));
  v5 = *(v4 + 232);
  if (!v5)
  {
    v26 = MEMORY[0x277CCA9B8];
    v27 = @"Workout builder has unspecified start date.";
LABEL_26:
    [v26 hk_assignError:&v46 code:124 description:v27];
    os_unfair_lock_unlock((v4 + 40));
    v4 = 0;
    goto LABEL_29;
  }

  v6 = *(v4 + 240);
  if (!v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v59 = v4;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: (#w0) Synthesizing end date while finishing; no end date yet specified (was endCollection called)?", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = *(v4 + 240);
    *(v4 + 240) = v8;

    v6 = *(v4 + 240);
    v5 = *(v4 + 232);
  }

  if (([v6 hk_isAfterDate:v5] & 1) == 0)
  {
    v26 = MEMORY[0x277CCA9B8];
    v27 = @"Workout builder end date is not after start date.";
    goto LABEL_26;
  }

  v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:*(v4 + 232) endDate:*(v4 + 240)];
  v11 = [*(v4 + 224) hk_filterKeysWithBlock:&__block_literal_global_679];
  os_unfair_lock_unlock((v4 + 40));
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v48 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v48 objects:buf count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v49;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v49 != v15)
        {
          objc_enumerationMutation(v12);
        }

        if (![(HDWorkoutBuilderServer *)v4 _endActivityWithUUID:*(v4 + 240) endDate:&v46 error:?])
        {
          v4 = 0;
          v24 = v12;
          goto LABEL_28;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v48 objects:buf count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v17 = [*(v4 + 208) associatedSessionUUID];

  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v19 = [*(v4 + 208) associatedSessionUUID];
    v20 = [v19 UUIDString];
    v21 = *MEMORY[0x277CCE0E8];
    [v18 setObject:v20 forKeyedSubscript:*MEMORY[0x277CCE0E8]];

    v47 = 0;
    LOBYTE(v20) = [(HDWorkoutBuilderServer *)v4 _addMetadata:v18 byPassPrivateKeyCheck:1 error:&v47];
    v22 = v47;
    if ((v20 & 1) == 0)
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        v39 = v23;
        v40 = [v18 objectForKeyedSubscript:v21];
        *v52 = 138543874;
        v53 = v4;
        v54 = 2114;
        v55 = v40;
        v56 = 2114;
        v57 = v22;
        _os_log_error_impl(&dword_228986000, v39, OS_LOG_TYPE_ERROR, "%{public}@: Failed to add associated sessionId:%{public}@ with error: %{public}@", v52, 0x20u);
      }
    }
  }

  v24 = [v4 taskUUID];
  v25 = [v4 profile];
  v4 = [HDWorkoutBuilderEntity finishWorkoutBuilderWithIdentifier:v24 dateInterval:v10 profile:v25 error:&v46];

LABEL_28:
LABEL_29:
  v28 = v46;
  v29 = *(a1 + 32);
  if (v4 || !v28)
  {
    v30 = [(os_unfair_lock_s *)v29 client];
    v31 = [v30 connection];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_4;
    v45[3] = &unk_2786138D0;
    v45[4] = *(a1 + 32);
    v32 = [v31 remoteObjectProxyWithErrorHandler:v45];

    [v32 clientRemote_finishedWorkout:v4];
    os_unfair_lock_lock((*(a1 + 32) + 40));
    v33 = [*(*(a1 + 32) + 176) copy];
    v34 = [*(*(a1 + 32) + 224) count];
    v35 = *(a1 + 32);
    v36 = *(v35 + 136);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_552;
    v41[3] = &unk_278620658;
    v41[4] = v35;
    v42 = v33;
    v44 = v34;
    v43 = v4;
    v37 = v33;
    [v36 enqueueEvent:103 date:0 error:0 completion:v41];
    os_unfair_lock_unlock((*(a1 + 32) + 40));
  }

  else
  {
    os_unfair_lock_lock(v29 + 10);
    [(HDWorkoutBuilderServer *)*(a1 + 32) _lock_failWithError:v28];
    os_unfair_lock_unlock((*(a1 + 32) + 40));
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to send finished workout to client, error fetching client proxy: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_552(void *a1, char a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[7];
  v7 = @"HDWorkoutAnalyticsPerformanceEventNameSavingEnd";
  v8 = v4;
  if (v5)
  {
    v9 = [*(v5 + 208) associatedSessionUUID];

    if (v9)
    {
      v26 = [v5 profile];
      v25 = [v26 daemon];
      v10 = [v25 analyticsSubmissionCoordinator];
      v11 = [*(v5 + 208) associatedSessionUUID];
      [*(v5 + 208) workoutConfiguration];
      v13 = v12 = v6;
      v14 = [v13 activityType];
      v15 = *(v5 + 232);
      v16 = *(v5 + 240);
      _HKCalculateWorkoutDuration();
      LOBYTE(v24) = a2 ^ 1;
      [HDWorkoutUtilities submitWorkoutPerformanceAnalyticsWithCoordinator:v10 event:v7 sessionIdentifier:v11 activityType:v14 duration:v17 activityCount:v12 failure:v24];
    }
  }

  _HKInitializeLogging();
  v18 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v19 = a1[4];
    v20 = a1[6];
    v21 = v18;
    v22 = [v20 _detailedDescriptionString];
    *buf = 138543618;
    v28 = v19;
    v29 = 2114;
    v30 = v22;
    _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) Workout did save: %{public}@", buf, 0x16u);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_553(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 currentEvents];
  if (v1)
  {
    v3 = v2;
    [(HDWorkoutBuilderServer *)v1 _submitWorkoutPerformanceEvent:v2 workoutEvents:0 failure:?];
    v2 = v3;
  }
}

void __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_2_554(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 currentEvents];
  if (v2)
  {
    [(HDWorkoutBuilderServer *)v2 _submitWorkoutPerformanceEvent:v3 workoutEvents:0 failure:?];
  }

  v4 = [*(a1 + 32) profile];
  v5 = [v4 daemon];
  v6 = [v5 taskServerRegistry];
  [v6 removeTaskServerObserver:*(a1 + 32)];

  [(HDWorkoutBuilderServer *)*(a1 + 32) _unregisterObserversAndInvalidateAssertions];
  [(HDWorkoutBuilderServer *)*(a1 + 32) _clearTailSpinTimer];
  if (HDIsUnitTesting())
  {
    v7 = [*(a1 + 32) client];
    v8 = [v7 connection];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_3_555;
    v10[3] = &unk_2786138D0;
    v10[4] = *(a1 + 32);
    v9 = [v8 remoteObjectProxyWithErrorHandler:v10];

    [v9 clientRemote_unitTestDidFinishFinalizing];
  }
}

void __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_3_555(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to send finalized to client, error fetching client proxy: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_562(uint64_t *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  [(HDWorkoutBuilderServer *)a1[4] _unregisterObserversAndInvalidateAssertions];
  v2 = [a1[4] profile];
  v3 = [v2 daemon];
  v4 = [v3 taskServerRegistry];
  [v4 removeTaskServerObserver:a1[4]];

  [(HDWorkoutBuilderServer *)a1[4] _clearTailSpinTimer];
  v5 = a1[4];
  v18 = 0;
  LODWORD(v4) = [(HDWorkoutBuilderServer *)v5 _discardWorkoutWithError:?];
  v6 = v18;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  v8 = *MEMORY[0x277CCC330];
  if (v4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v10 = a1[5];
      *buf = 138543618;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Discarded workout after moving to %{public}@ state", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v15 = a1[4];
    v16 = a1[5];
    *buf = 138543874;
    v20 = v15;
    v21 = 2114;
    v22 = v16;
    v23 = 2114;
    v24 = v6;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Unable to discard workout after moving to %{public}@ state: %{public}@", buf, 0x20u);
  }

  v11 = [a1[4] client];
  v12 = [v11 connection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_563;
  v17[3] = &unk_2786138D0;
  v17[4] = a1[4];
  v13 = [v12 remoteObjectProxyWithErrorHandler:v17];

  [v13 clientRemote_didFailWithError:a1[6]];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_discardWorkoutWithError:(void *)result
{
  if (result)
  {
    v3 = result;
    taskUUID = [result taskUUID];
    profile = [v3 profile];
    v6 = [HDWorkoutBuilderEntity discardBuilderWithIdentifier:taskUUID profile:profile error:a2];

    return v6;
  }

  return result;
}

void __64__HDWorkoutBuilderServer_stateMachine_didEnterState_date_error___block_invoke_563(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to send error to client, error fetching client proxy: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stateMachine:(id)machine didTransition:(id)transition fromState:(id)state toState:(id)toState date:(id)date error:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  stateCopy = state;
  toStateCopy = toState;
  machineCopy = machine;
  os_unfair_lock_lock(&self->_currentStatelock);
  currentState = [machineCopy currentState];

  currentStatelock_currentState = self->_currentStatelock_currentState;
  self->_currentStatelock_currentState = currentState;

  os_unfair_lock_unlock(&self->_currentStatelock);
  _HKInitializeLogging();
  v18 = *MEMORY[0x277CCC330];
  v19 = os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT);
  if (transitionCopy)
  {
    if (!v19)
    {
      goto LABEL_7;
    }

    *v25 = 138543618;
    *&v25[4] = self;
    *&v25[12] = 2114;
    *&v25[14] = transitionCopy;
    v20 = "%{public}@: (#w0) %{public}@.";
  }

  else
  {
    if (!v19)
    {
      goto LABEL_7;
    }

    *v25 = 138543618;
    *&v25[4] = self;
    *&v25[12] = 2114;
    *&v25[14] = toStateCopy;
    v20 = "%{public}@: (#w0) Enter at %{public}@.";
  }

  _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, v20, v25, 0x16u);
LABEL_7:
  [(HDWorkoutBuilderServer *)self _lock_pushCurrentConstructionState];
  if (stateCopy)
  {
    v21 = HKWorkoutBuilderConstructionStateFromBuilderServerState([stateCopy index]);
    v22 = HKWorkoutBuilderConstructionStateFromBuilderServerState([toStateCopy index]);
    upstreamQueue = self->_upstreamQueue;
    *v25 = MEMORY[0x277D85DD0];
    *&v25[8] = 3221225472;
    *&v25[16] = __70__HDWorkoutBuilderServer__notifySourcesOfTransitionFromState_toState___block_invoke;
    v26 = &unk_278629F30;
    selfCopy = self;
    v28 = v21;
    v29 = v22;
    dispatch_async(upstreamQueue, v25);
  }

  [(HKStateMachine *)self->_stateMachine enqueueEvent:self->_targetConstructionState date:0 error:0 completion:&__block_literal_global_565, *v25, *&v25[8]];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_lock_pushCurrentConstructionState
{
  if (self)
  {
    os_unfair_lock_assert_owner((self + 40));
    currentState = [*(self + 136) currentState];
    client = [self client];
    connection = [client connection];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__HDWorkoutBuilderServer__lock_pushCurrentConstructionState__block_invoke;
    v6[3] = &unk_2786138D0;
    v6[4] = self;
    v5 = [connection remoteObjectProxyWithErrorHandler:v6];

    [v5 clientRemote_stateDidChange:HKWorkoutBuilderConstructionStateFromBuilderServerState(objc_msgSend(currentState startDate:"index")) endDate:{*(self + 232), *(self + 240)}];
  }
}

void __70__HDWorkoutBuilderServer__notifySourcesOfTransitionFromState_toState___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 120) allSourceProcessors];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) workoutDataDestination:a1[4] didChangeFromState:a1[5] toState:a1[6]];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __62__HDWorkoutBuilderServer__notifySourcesOfConfigurationUpdate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 120) allSourceProcessors];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) workoutDataDestination:*(a1 + 32) didUpdateConfiguration:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __56__HDWorkoutBuilderServer__notifySourcesOfInsertedEvent___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 120) allSourceProcessors];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) workoutDataDestination:*(a1 + 32) didInsertEvent:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)remote_setTargetConstructionState:(int64_t)state startDate:(id)date endDate:(id)endDate completion:(id)completion
{
  v69 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v11 = *MEMORY[0x277CCC330];
  v39 = _HKLoggingActionCompletion();
  os_unfair_lock_lock(&self->_lock);
  v40 = [(NSArray *)self->_lock_workoutEvents copy];
  if (dateCopy && !self->_workoutStartDate)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = dateCopy;
      _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) Start date set: %{public}@", buf, 0x16u);
    }

    v14 = [dateCopy copy];
    workoutStartDate = self->_workoutStartDate;
    self->_workoutStartDate = v14;

    [(HDWorkoutBuilderServer *)self _lock_didUpdateStartDate];
    v12 = 1;
    if (!endDateCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    if (!endDateCopy)
    {
      goto LABEL_9;
    }
  }

  if (!self->_workoutEndDate)
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = endDateCopy;
      _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) End date set: %{public}@", buf, 0x16u);
    }

    v19 = [endDateCopy copy];
    workoutEndDate = self->_workoutEndDate;
    self->_workoutEndDate = v19;

    v21 = self->_workoutStartDate;
    v22 = self->_workoutEndDate;
    _HKCalculateWorkoutDuration();
    v17 = v23;
    os_unfair_lock_unlock(&self->_lock);
    v16 = 1;
    goto LABEL_14;
  }

LABEL_9:
  os_unfair_lock_unlock(&self->_lock);
  if (!v12)
  {
    goto LABEL_18;
  }

  v16 = 0;
  v17 = 0;
LABEL_14:
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v58 = 0;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __89__HDWorkoutBuilderServer_remote_setTargetConstructionState_startDate_endDate_completion___block_invoke;
  v51[3] = &unk_27862AA30;
  v51[4] = self;
  v52 = dateCopy;
  v53 = endDateCopy;
  v54 = v40;
  v55 = v17;
  v56 = v12;
  v57 = v16;
  v26 = [(HDHealthEntity *)HDWorkoutBuilderEntity performWriteTransactionWithHealthDatabase:database error:&v58 block:v51];
  v27 = v58;

  [(HDWorkoutBuilderServer *)self _updateStatisticsPauseResumeMask];
  [(HDWorkoutBuilderServer *)self _didChangeElapsedTimeBasis];
  if (!v26)
  {
    _HKInitializeLogging();
    v28 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v27;
      _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "%{public}@: (#w0) Failed to persist updated start/end dates for workout builder: %{public}@", buf, 0x16u);
    }
  }

  os_unfair_lock_lock(&self->_lock);
  self->_lock_primaryActivityEntityCreated = 1;
  os_unfair_lock_unlock(&self->_lock);

LABEL_18:
  os_unfair_lock_lock(&self->_lock);
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 1;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v66 = __Block_byref_object_copy__170;
  v67 = __Block_byref_object_dispose__170;
  v68 = 0;
  if (self->_targetConstructionState != state)
  {
    _HKInitializeLogging();
    v29 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      targetConstructionState = self->_targetConstructionState;
      v31 = HKWorkoutBuilderConstructionStateToString();
      v32 = HKWorkoutBuilderConstructionStateToString();
      *v59 = 138543874;
      selfCopy = self;
      v61 = 2114;
      v62 = v31;
      v63 = 2114;
      v64 = v32;
      _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) Target state changed: %{public}@ -> %{public}@", v59, 0x20u);
    }

    self->_targetConstructionState = state;
    stateMachine = self->_stateMachine;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __89__HDWorkoutBuilderServer_remote_setTargetConstructionState_startDate_endDate_completion___block_invoke_573;
    v46[3] = &unk_27862AA58;
    v46[4] = &v47;
    v46[5] = buf;
    [(HKStateMachine *)stateMachine enqueueEvent:state date:0 error:0 completion:v46];
    if ((v48[3] & 1) == 0)
    {
      [(HDWorkoutBuilderServer *)self _lock_failWithError:?];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  client = [(HDStandardTaskServer *)self client];
  connection = [client connection];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __89__HDWorkoutBuilderServer_remote_setTargetConstructionState_startDate_endDate_completion___block_invoke_2;
  v45[3] = &unk_2786138D0;
  v45[4] = self;
  v36 = [connection remoteObjectProxyWithErrorHandler:v45];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __89__HDWorkoutBuilderServer_remote_setTargetConstructionState_startDate_endDate_completion___block_invoke_574;
  v41[3] = &unk_27862AA80;
  v37 = v39;
  v42 = v37;
  v43 = &v47;
  v44 = buf;
  [v36 clientRemote_synchronizeWithCompletion:v41];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v47, 8);

  v38 = *MEMORY[0x277D85DE8];
}

BOOL __89__HDWorkoutBuilderServer_remote_setTargetConstructionState_startDate_endDate_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc(MEMORY[0x277CCDBF0]);
  v7 = [*(a1 + 32) taskUUID];
  v8 = [*(*(a1 + 32) + 208) workoutConfiguration];
  v9 = [v6 _initWithUUID:v7 workoutConfiguration:v8 startDate:*(a1 + 40) endDate:*(a1 + 48) workoutEvents:*(a1 + 56) startsPaused:0 duration:*(a1 + 64) metadata:*(*(a1 + 32) + 216) statisticsPerType:0];

  v10 = (*(a1 + 72) != 1 || [*(*(a1 + 32) + 48) setStartDate:*(a1 + 40) transaction:v5 error:a3] && objc_msgSend(*(*(a1 + 32) + 48), "insertPrimaryWorkoutActivity:transaction:error:", v9, v5, a3)) && (*(a1 + 73) != 1 || objc_msgSend(*(*(a1 + 32) + 48), "setEndDate:transaction:error:", *(a1 + 48), v5, a3) && objc_msgSend(*(*(a1 + 32) + 48), "updateWorkoutActivityEndDate:transaction:error:", v9, v5, a3));
  return v10;
}

void __89__HDWorkoutBuilderServer_remote_setTargetConstructionState_startDate_endDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Client's addSamples completion handler not called, error fetching client proxy: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)remote_addDataSourcesWithIdentifiers:(id)identifiers
{
  v39 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  allSourceProcessors = [(HKDataFlowLink *)self->_workoutDataFlowLink allSourceProcessors];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = identifiersCopy;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v5)
  {
    v7 = v5;
    v25 = *v32;
    *&v6 = 138412290;
    v23 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        profile = allSourceProcessors;
        v11 = [profile countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v28;
LABEL_8:
          v14 = 0;
          while (1)
          {
            if (*v28 != v13)
            {
              objc_enumerationMutation(profile);
            }

            workoutDataProcessorUUID = [*(*(&v27 + 1) + 8 * v14) workoutDataProcessorUUID];
            v16 = [workoutDataProcessorUUID isEqual:v9];

            if (v16)
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [profile countByEnumeratingWithState:&v27 objects:v37 count:16];
              if (v12)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          _HKInitializeLogging();
          v19 = *MEMORY[0x277CCC330];
          if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          daemon = v19;
          uUIDString = [v9 UUIDString];
          *buf = v23;
          v36 = uUIDString;
          _os_log_error_impl(&dword_228986000, daemon, OS_LOG_TYPE_ERROR, "Trying to add already linked data source %@ to workout builder", buf, 0xCu);
        }

        else
        {
LABEL_14:

          [(HDWorkoutBuilderServer *)self _addExpectedDataSourceIdentifiers:?];
          profile = [(HDStandardTaskServer *)self profile];
          daemon = [profile daemon];
          taskServerRegistry = [daemon taskServerRegistry];
          [taskServerRegistry addObserver:self forTaskServerUUID:v9 queue:0];
        }

LABEL_17:
        ++v8;
      }

      while (v8 != v7);
      v21 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
      v7 = v21;
    }

    while (v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)remote_removeDataSourcesWithIdentifiers:(id)identifiers
{
  v43 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  [(HDWorkoutBuilderServer *)self _removeExpectedDataSourceWithIdentifiers:identifiersCopy];
  selfCopy = self;
  allSourceProcessors = [(HKDataFlowLink *)self->_workoutDataFlowLink allSourceProcessors];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = identifiersCopy;
  v5 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v5)
  {
    v7 = v5;
    v27 = *v34;
    *&v6 = 138543618;
    v24 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v10 = allSourceProcessors;
        v11 = [v10 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v30;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v30 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v29 + 1) + 8 * j);
              workoutDataProcessorUUID = [v15 workoutDataProcessorUUID];
              v17 = [workoutDataProcessorUUID isEqual:v9];

              if (v17)
              {
                workoutDataFlowLink = selfCopy->_workoutDataFlowLink;
                workoutDataFlowLink = [v15 workoutDataFlowLink];
                [(HKDataFlowLink *)workoutDataFlowLink removeSource:workoutDataFlowLink];

                goto LABEL_17;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v29 objects:v41 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          v19 = v18;
          uUIDString = [v9 UUIDString];
          *buf = v24;
          v38 = selfCopy;
          v39 = 2114;
          v40 = uUIDString;
          _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Trying to remove non linked data source %{public}@ from workout builder", buf, 0x16u);
        }

LABEL_17:
        ;
      }

      v7 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v7);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_removeExpectedDataSourceWithIdentifiers:(uint64_t)identifiers
{
  v9 = a2;
  if (identifiers)
  {
    os_unfair_lock_lock((identifiers + 40));
    v3 = *(identifiers + 128);
    v4 = [MEMORY[0x277CBEB98] setWithArray:v9];
    v5 = [v3 hk_minus:v4];
    v6 = *(identifiers + 128);
    *(identifiers + 128) = v5;

    os_unfair_lock_unlock((identifiers + 40));
    currentState = [*(identifiers + 136) currentState];
    index = [currentState index];

    if (index == 2)
    {
      [(HDWorkoutBuilderServer *)identifiers _checkForAttachedDataSources];
    }
  }
}

- (void)remote_addSamples:(id)samples completion:(id)completion
{
  samplesCopy = samples;
  v6 = *MEMORY[0x277CCC330];
  v7 = _HKLoggingActionCompletion();
  v24 = 0;
  v8 = [(HDWorkoutBuilderServer *)self _canAddDataWithError:?];
  v9 = v24;
  if (v8)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __55__HDWorkoutBuilderServer_remote_addSamples_completion___block_invoke;
    v20 = &unk_278613150;
    selfCopy = self;
    v10 = samplesCopy;
    v22 = v10;
    v11 = v7;
    v23 = v11;
    if (self)
    {
      v12 = &v17;
      v13 = v10;
      os_unfair_lock_lock(&self->_lock);
      v14 = self->_lock_databaseAssertion;
      os_unfair_lock_unlock(&self->_lock);
      v15 = [(HDStandardTaskServer *)self delegate:v17];
      sampleSavingDelegate = [v15 sampleSavingDelegate];
      [sampleSavingDelegate saveSamples:v13 databaseAssertion:v14 withCompletion:v12];

      v11 = v23;
    }
  }

  else
  {
    (v7)[2](v7, 0, v9);
  }
}

- (uint64_t)_canAddDataWithError:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    workoutDataDestinationState = [result workoutDataDestinationState];
    if (workoutDataDestinationState >= 3)
    {
      if (workoutDataDestinationState == 4)
      {
        os_unfair_lock_lock((v3 + 40));
        v7 = *(v3 + 56);
        if (v7)
        {
          if (a2)
          {
            *a2 = v7;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        else
        {
          [MEMORY[0x277CCA9B8] hk_assignError:a2 code:124 description:@"Workout builder has encountered an unexpected failure."];
        }

        os_unfair_lock_unlock((v3 + 40));
      }

      else
      {
        if (workoutDataDestinationState == 3)
        {
          v5 = MEMORY[0x277CCA9B8];
          v6 = @"Workout Builder is finalized.";
        }

        else
        {
          v5 = MEMORY[0x277CCA9B8];
          v6 = @"Unexpected workout builder state.";
        }

        [v5 hk_assignError:a2 code:3 description:v6];
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void __55__HDWorkoutBuilderServer_remote_addSamples_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) addOtherSamples:*(a1 + 40) dataSource:0];
  }

  v6 = [*(a1 + 32) client];
  v7 = [v6 connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__HDWorkoutBuilderServer_remote_addSamples_completion___block_invoke_2;
  v15[3] = &unk_2786138D0;
  v15[4] = *(a1 + 32);
  v8 = [v7 remoteObjectProxyWithErrorHandler:v15];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HDWorkoutBuilderServer_remote_addSamples_completion___block_invoke_576;
  v11[3] = &unk_27862AAA8;
  v9 = *(a1 + 48);
  v14 = a2;
  v12 = v5;
  v13 = v9;
  v10 = v5;
  [v8 clientRemote_synchronizeWithCompletion:v11];
}

void __55__HDWorkoutBuilderServer_remote_addSamples_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Client's addSamples completion handler not called, error fetching client proxy: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)remote_addWorkoutEvents:(id)events completion:(id)completion
{
  eventsCopy = events;
  v6 = *MEMORY[0x277CCC330];
  v7 = _HKLoggingActionCompletion();
  v22 = 0;
  v8 = [(HDWorkoutBuilderServer *)self _canAddDataWithError:?];
  v9 = v22;
  v10 = v9;
  if (v8)
  {
    v21 = v9;
    v11 = [(HDWorkoutBuilderServer *)self _insertWorkoutEvents:eventsCopy error:&v21];
    v12 = v21;

    client = [(HDStandardTaskServer *)self client];
    connection = [client connection];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __61__HDWorkoutBuilderServer_remote_addWorkoutEvents_completion___block_invoke;
    v20[3] = &unk_2786138D0;
    v20[4] = self;
    v15 = [connection remoteObjectProxyWithErrorHandler:v20];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__HDWorkoutBuilderServer_remote_addWorkoutEvents_completion___block_invoke_578;
    v16[3] = &unk_27862AAA8;
    v18 = v7;
    v19 = v11;
    v10 = v12;
    v17 = v10;
    [v15 clientRemote_synchronizeWithCompletion:v16];
  }

  else
  {
    (v7)[2](v7, 0, v9);
  }
}

void __61__HDWorkoutBuilderServer_remote_addWorkoutEvents_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Client's addWorkoutEvents completion handler not called, error fetching client proxy: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)remote_addMetadata:(id)metadata completion:(id)completion
{
  metadataCopy = metadata;
  v6 = *MEMORY[0x277CCC330];
  v7 = _HKLoggingActionCompletion();
  v23 = 0;
  v8 = [(HDWorkoutBuilderServer *)self _canAddDataWithError:?];
  v9 = v23;
  v10 = v9;
  if (v8)
  {
    v22 = v9;
    if (self)
    {
      v11 = [(HDWorkoutBuilderServer *)self _addMetadata:metadataCopy byPassPrivateKeyCheck:0 error:&v22];
      v12 = v22;
    }

    else
    {
      v11 = 0;
      v12 = v9;
    }

    v13 = v12;

    client = [(HDStandardTaskServer *)self client];
    connection = [client connection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __56__HDWorkoutBuilderServer_remote_addMetadata_completion___block_invoke;
    v21[3] = &unk_2786138D0;
    v21[4] = self;
    v16 = [connection remoteObjectProxyWithErrorHandler:v21];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__HDWorkoutBuilderServer_remote_addMetadata_completion___block_invoke_580;
    v17[3] = &unk_27862AAA8;
    v19 = v7;
    v20 = v11;
    v10 = v13;
    v18 = v10;
    [v16 clientRemote_synchronizeWithCompletion:v17];
  }

  else
  {
    (v7)[2](v7, 0, v9);
  }
}

void __56__HDWorkoutBuilderServer_remote_addMetadata_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Client's addMetadata completion handler not called, error fetching client proxy: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)remote_removeMetadata:(id)metadata completion:(id)completion
{
  metadataCopy = metadata;
  v6 = *MEMORY[0x277CCC330];
  v7 = _HKLoggingActionCompletion();
  client = [(HDStandardTaskServer *)self client];
  v9 = [client hasEntitlement:*MEMORY[0x277CCC8B0]];

  if ((v9 & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA9B8] hk_error:4 format:@"Client is missing private entitlement"];
    goto LABEL_10;
  }

  v28 = 0;
  v10 = [(HDWorkoutBuilderServer *)self _canAddDataWithError:?];
  v11 = v28;
  v12 = v11;
  if ((v10 & 1) == 0)
  {
LABEL_10:
    (v7)[2](v7, 0, v12);
    goto LABEL_11;
  }

  v27 = v11;
  v13 = metadataCopy;
  if (self)
  {
    os_unfair_lock_assert_not_owner(&self->_lock);
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__170;
    v36 = __Block_byref_object_dispose__170;
    v37 = 0;
    profile = [(HDStandardTaskServer *)self profile];
    database = [profile database];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __48__HDWorkoutBuilderServer__removeMetadata_error___block_invoke;
    v29[3] = &unk_278615F88;
    v29[4] = self;
    v30 = v13;
    v31 = &v32;
    v16 = [(HDHealthEntity *)HDWorkoutBuilderEntity performWriteTransactionWithHealthDatabase:database error:&v27 block:v29];

    if (v16)
    {
      v17 = v33[5];
      if (v17)
      {
        [(HDWorkoutBuilderServer *)self _didUpdateMetadata:v17];
      }
    }

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  v18 = v27;
  client2 = [(HDStandardTaskServer *)self client];
  connection = [client2 connection];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __59__HDWorkoutBuilderServer_remote_removeMetadata_completion___block_invoke;
  v26[3] = &unk_2786138D0;
  v26[4] = self;
  v21 = [connection remoteObjectProxyWithErrorHandler:v26];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __59__HDWorkoutBuilderServer_remote_removeMetadata_completion___block_invoke_585;
  v22[3] = &unk_27862AAA8;
  v24 = v7;
  v25 = v16;
  v12 = v18;
  v23 = v12;
  [v21 clientRemote_synchronizeWithCompletion:v22];

LABEL_11:
}

void __59__HDWorkoutBuilderServer_remote_removeMetadata_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Client's removeMetadata completion handler not called, error fetching client proxy: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)remote_addWorkoutActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  v6 = *MEMORY[0x277CCC330];
  v7 = _HKLoggingActionCompletion();
  v41 = 0;
  v8 = [(HDWorkoutBuilderServer *)self _canAddDataWithError:?];
  v9 = v41;
  if (v8)
  {
    v10 = MEMORY[0x277CCDBE8];
    workoutConfiguration = [(HKWorkoutBuilderConfiguration *)self->_configuration workoutConfiguration];
    activityType = [workoutConfiguration activityType];
    workoutConfiguration2 = [activityCopy workoutConfiguration];
    LOBYTE(v10) = [v10 _workoutWithActivityType:activityType acceptsSubActivityType:{objc_msgSend(workoutConfiguration2, "activityType")}];

    if (v10)
    {
      startDate = [activityCopy startDate];
      v40 = v9;
      v15 = [(HDWorkoutBuilderServer *)self _validateActivityDates:startDate error:&v40];
      v16 = v40;

      if (v15)
      {
        endDate = [activityCopy endDate];
        if (endDate)
        {
          startDate2 = [activityCopy startDate];
          v19 = [endDate hk_isBeforeOrEqualToDate:startDate2];

          if (v19)
          {
            v9 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Activity end date cannot be before start date"];

            goto LABEL_13;
          }

          v39 = v16;
          v25 = [(HDWorkoutBuilderServer *)self _validateActivityDates:endDate error:&v39];
          v9 = v39;

          if ((v25 & 1) == 0)
          {
            goto LABEL_13;
          }

          v16 = v9;
        }

        v38 = v16;
        v26 = [(HDWorkoutBuilderServer *)self _isActivityDateOverlapping:activityCopy endDate:endDate error:&v38];
        v9 = v38;

        if (!v26)
        {
          v37 = v9;
          v27 = [(HDWorkoutBuilderServer *)self _addWorkoutActivity:activityCopy error:&v37];
          v28 = v37;

          if (v27)
          {
            [(HDWorkoutBuilderServer *)self _didUpdateActivities];
          }

          client = [(HDStandardTaskServer *)self client];
          connection = [client connection];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __63__HDWorkoutBuilderServer_remote_addWorkoutActivity_completion___block_invoke;
          v36[3] = &unk_2786138D0;
          v36[4] = self;
          v31 = [connection remoteObjectProxyWithErrorHandler:v36];

          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __63__HDWorkoutBuilderServer_remote_addWorkoutActivity_completion___block_invoke_594;
          v32[3] = &unk_27862AAA8;
          v34 = v7;
          v35 = v27;
          v9 = v28;
          v33 = v9;
          [v31 clientRemote_synchronizeWithCompletion:v32];

          goto LABEL_17;
        }

LABEL_13:
        (v7)[2](v7, 0, v9);
LABEL_17:

        goto LABEL_18;
      }

      (v7)[2](v7, 0, v16);
      v9 = v16;
    }

    else
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = MEMORY[0x277CCABB0];
      workoutConfiguration3 = [activityCopy workoutConfiguration];
      v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(workoutConfiguration3, "activityType")}];
      v24 = [v20 hk_error:3 format:{@"Cannot add subactivity of type %@", v23}];

      v7[2](v7, 0, v24);
      v9 = v24;
    }
  }

  else
  {
    (v7)[2](v7, 0, v9);
  }

LABEL_18:
}

- (uint64_t)_validateActivityDates:(uint64_t)dates error:
{
  v5 = a2;
  if (!self)
  {
    goto LABEL_14;
  }

  distantPast = [MEMORY[0x277CBEAA8] distantPast];

  if (distantPast == v5)
  {
    v8 = @"Activity cannot start or end with date in distant past.";
    goto LABEL_13;
  }

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];

  if (distantFuture == v5)
  {
    v8 = @"Activity cannot start or end with date in distant future.";
    goto LABEL_13;
  }

  if ([v5 hk_isBeforeDate:*(self + 232)])
  {
    v8 = @"Activity cannot start or end before Workout start.";
LABEL_13:
    [MEMORY[0x277CCA9B8] hk_assignError:dates code:3 description:v8];
LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if ([v5 hk_isAfterDate:*(self + 240)])
  {
    v8 = @"Activity cannot start or end after Workout end.";
    goto LABEL_13;
  }

  currentState = [*(self + 136) currentState];
  index = [currentState index];

  if (index != 1)
  {
    v8 = @"Activity cannot start or end, builder is not active";
    goto LABEL_13;
  }

  v11 = 1;
LABEL_15:

  return v11;
}

- (uint64_t)_isActivityDateOverlapping:(void *)overlapping endDate:(uint64_t)date error:
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  overlappingCopy = overlapping;
  if (!self)
  {
    v33 = 0;
    goto LABEL_24;
  }

  os_unfair_lock_lock((self + 40));
  allValues = [*(self + 224) allValues];
  v10 = [allValues copy];

  os_unfair_lock_unlock((self + 40));
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v12)
  {
    v33 = 0;
    goto LABEL_23;
  }

  v13 = v12;
  dateCopy = date;
  v14 = *v38;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v38 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v37 + 1) + 8 * i);
      endDate = [v16 endDate];

      if (endDate)
      {
        v18 = objc_alloc(MEMORY[0x277CCA970]);
        startDate = [v16 startDate];
        endDate2 = [v16 endDate];
        v21 = [v18 initWithStartDate:startDate endDate:endDate2];

        if (overlappingCopy)
        {
          v22 = objc_alloc(MEMORY[0x277CCA970]);
          startDate2 = [v7 startDate];
          v24 = [v22 initWithStartDate:startDate2 endDate:overlappingCopy];

          v25 = [v24 intersectionWithDateInterval:v21];
          [v25 duration];
          v27 = v26;

          if (v27 != 0.0)
          {
            [MEMORY[0x277CCA9B8] hk_assignError:dateCopy code:3 description:@"Activity date cannot overlap existing activities"];

            goto LABEL_21;
          }
        }

        startDate3 = [v7 startDate];
        endDate3 = [v16 endDate];
        v30 = [startDate3 isEqualToDate:endDate3];

        if (v30)
        {
          v33 = 0;
LABEL_22:

          goto LABEL_23;
        }

        startDate4 = [v7 startDate];
        v32 = [v21 containsDate:startDate4];

        if (!v32)
        {

          continue;
        }

        [MEMORY[0x277CCA9B8] hk_assignError:dateCopy code:3 description:@"Activity date cannot overlap existing activities "];
LABEL_21:
        v33 = 1;
        goto LABEL_22;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
    v33 = 0;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_23:

LABEL_24:
  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

void __63__HDWorkoutBuilderServer_remote_addWorkoutActivity_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Client's addWorkoutActivity completion handler not called, error fetching client proxy: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)remote_updateActivityWithUUID:(id)d endDate:(id)date completion:(id)completion
{
  dCopy = d;
  dateCopy = date;
  v9 = *MEMORY[0x277CCC330];
  v10 = _HKLoggingActionCompletion();
  os_unfair_lock_lock(&self->_lock);
  v11 = [(NSMutableDictionary *)self->_workoutActivitiesByUUID objectForKeyedSubscript:dCopy];
  v12 = [v11 copy];

  os_unfair_lock_unlock(&self->_lock);
  endDate = [v12 endDate];

  if (endDate)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = @"Activity already has end date set.";
LABEL_3:
    v16 = [v14 hk_error:3 description:v15];
LABEL_4:
    (v10)[2](v10, 0, v16);
    goto LABEL_5;
  }

  if (dateCopy)
  {
    startDate = [v12 startDate];
    v18 = [dateCopy hk_isBeforeOrEqualToDate:startDate];

    if (v18)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = @"Activity end date cannot be before or equal to start date.";
      goto LABEL_3;
    }
  }

  v35 = 0;
  v19 = [(HDWorkoutBuilderServer *)self _validateActivityDates:dateCopy error:&v35];
  v20 = v35;
  v16 = v20;
  if ((v19 & 1) == 0)
  {
    goto LABEL_4;
  }

  v34 = v20;
  v21 = [(HDWorkoutBuilderServer *)self _isActivityDateOverlapping:v12 endDate:dateCopy error:&v34];
  v22 = v34;

  if (v21)
  {
    (v10)[2](v10, 0, v22);
    v16 = v22;
  }

  else
  {
    v33 = v22;
    v23 = [(HDWorkoutBuilderServer *)self _endActivityWithUUID:dCopy endDate:dateCopy error:&v33];
    v24 = v33;

    if (v23)
    {
      [(HDWorkoutBuilderServer *)self _didUpdateActivities];
    }

    client = [(HDStandardTaskServer *)self client];
    connection = [client connection];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __75__HDWorkoutBuilderServer_remote_updateActivityWithUUID_endDate_completion___block_invoke;
    v32[3] = &unk_2786138D0;
    v32[4] = self;
    v27 = [connection remoteObjectProxyWithErrorHandler:v32];

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __75__HDWorkoutBuilderServer_remote_updateActivityWithUUID_endDate_completion___block_invoke_602;
    v28[3] = &unk_27862AAA8;
    v30 = v10;
    v31 = v23;
    v16 = v24;
    v29 = v16;
    [v27 clientRemote_synchronizeWithCompletion:v28];
  }

LABEL_5:
}

void __75__HDWorkoutBuilderServer_remote_updateActivityWithUUID_endDate_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Client's updateActivityWithUUID:endDate: completion handler not called, error fetching client proxy: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)remote_updateActivityWithUUID:(id)d addMetadata:(id)metadata completion:(id)completion
{
  v7 = *MEMORY[0x277CCC330];
  metadataCopy = metadata;
  dCopy = d;
  v10 = _HKLoggingActionCompletion();
  v23 = 0;
  v11 = [(HDWorkoutBuilderServer *)self _updateActivityWithUUID:dCopy addMetadata:metadataCopy error:&v23];

  v12 = v23;
  if (v11)
  {
    [(HDWorkoutBuilderServer *)self _didUpdateActivities];
  }

  client = [(HDStandardTaskServer *)self client];
  connection = [client connection];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__HDWorkoutBuilderServer_remote_updateActivityWithUUID_addMetadata_completion___block_invoke;
  v22[3] = &unk_2786138D0;
  v22[4] = self;
  v15 = [connection remoteObjectProxyWithErrorHandler:v22];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__HDWorkoutBuilderServer_remote_updateActivityWithUUID_addMetadata_completion___block_invoke_604;
  v18[3] = &unk_27862AAA8;
  v21 = v11;
  v19 = v12;
  v20 = v10;
  v16 = v12;
  v17 = v10;
  [v15 clientRemote_synchronizeWithCompletion:v18];
}

void __79__HDWorkoutBuilderServer_remote_updateActivityWithUUID_addMetadata_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Client's updateActivityWithUUID:addMetadata: completion handler not called, error fetching client proxy: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __60__HDWorkoutBuilderServer__lock_pushCurrentConstructionState__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Couldn't flush data to client with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)remote_recoverWithCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  [(HDWorkoutBuilderServer *)self _lock_pushCurrentConstructionState];
  os_unfair_lock_unlock(&self->_lock);
  client = [(HDStandardTaskServer *)self client];
  connection = [client connection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HDWorkoutBuilderServer_remote_recoverWithCompletion___block_invoke;
  v11[3] = &unk_2786138D0;
  v11[4] = self;
  v7 = [connection remoteObjectProxyWithErrorHandler:v11];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__HDWorkoutBuilderServer_remote_recoverWithCompletion___block_invoke_605;
  v9[3] = &unk_2786130D8;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 clientRemote_synchronizeWithCompletion:v9];
}

void __55__HDWorkoutBuilderServer_remote_recoverWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Couldn't flush data to client with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)remote_updateDevice:(id)device
{
  v30 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  profile = [(HDStandardTaskServer *)self profile];
  deviceManager = [profile deviceManager];
  v23 = 0;
  v7 = [deviceManager deviceEntityForDevice:deviceCopy error:&v23];
  v8 = v23;

  if (v7)
  {
    profile2 = [(HDStandardTaskServer *)self profile];
    database = [profile2 database];
    v22 = v8;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __46__HDWorkoutBuilderServer_remote_updateDevice___block_invoke;
    v19 = &unk_278613218;
    selfCopy = self;
    v21 = v7;
    v11 = [(HDHealthEntity *)HDWorkoutBuilderEntity performWriteTransactionWithHealthDatabase:database error:&v22 block:&v16];
    v12 = v22;

    if (v11)
    {
      os_unfair_lock_lock(&self->_lock);
      [(HKWorkoutBuilderConfiguration *)self->_configuration setDevice:deviceCopy, v16, v17, v18, v19, selfCopy];
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v26 = 2114;
        v27 = v12;
        _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update device: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy3 = self;
      v26 = 2114;
      v27 = deviceCopy;
      v28 = 2114;
      v29 = v8;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to find device entity for device: %{public}@. Error %{public}@", buf, 0x20u);
    }

    v12 = v8;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)remote_setStatisticsMergeStrategy:(unint64_t)strategy forType:(id)type
{
  typeCopy = type;
  os_unfair_lock_lock(&self->_lock);
  v6 = _HKStatisticsComputationMethodForQuantityType(typeCopy, 0);
  v7 = [(HDWorkoutBuilderServer *)self _lock_statisticsCalculatorsForQuantityType:typeCopy mergeStrategy:strategy computationMethod:v6];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_statisticsCalculatorsForQuantityType:(uint64_t)type mergeStrategy:(uint64_t)strategy computationMethod:
{
  v39[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    os_unfair_lock_assert_owner((self + 40));
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    taskUUID = [self taskUUID];
    v39[0] = taskUUID;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    v9 = v6;
    allKeys = [*(self + 224) allKeys];
    v11 = [v8 arrayByAddingObjectsFromArray:allKeys];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      v30 = *v35;
      do
      {
        v16 = 0;
        v33 = v14;
        do
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v34 + 1) + 8 * v16);
          v18 = [*(self + 88) calculatorForQuantityType:v5 activityUUID:{v17, v30}];
          if (!v18)
          {
            v19 = *(self + 232);
            taskUUID2 = [self taskUUID];
            v21 = [v17 isEqual:taskUUID2];

            if (v21)
            {
              endDate = 0;
            }

            else
            {
              v23 = [*(self + 224) objectForKeyedSubscript:v17];
              [v23 startDate];
              v24 = v5;
              v25 = v12;
              v27 = v26 = v9;

              endDate = [v23 endDate];

              v19 = v27;
              v9 = v26;
              v12 = v25;
              v5 = v24;
              v15 = v30;
            }

            v18 = [(HDWorkoutBuilderServer *)self _lock_createStatisticsCalculatorsForQuantityType:v5 mergeStrategy:type computationMethod:strategy startDate:v19 endDate:endDate];
            [*(self + 88) setCalculator:v18 forQuantityType:v5 activityUUID:v17];

            v14 = v33;
          }

          [v9 setObject:v18 forKeyedSubscript:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v9 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)remote_setStatisticsComputationMethod:(int64_t)method forType:(id)type
{
  typeCopy = type;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(HDWorkoutBuilderServer *)self _lock_statisticsCalculatorsForQuantityType:typeCopy mergeStrategy:0 computationMethod:method];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)remote_currentZonesForType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  upstreamQueue = self->_upstreamQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HDWorkoutBuilderServer_remote_currentZonesForType_completion___block_invoke;
  block[3] = &unk_278616D18;
  v12 = typeCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = typeCopy;
  v10 = completionCopy;
  dispatch_sync(upstreamQueue, block);
}

void __64__HDWorkoutBuilderServer_remote_currentZonesForType_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v7 = 0;
  v3 = [(HDWorkoutBuilderServer *)v2 _associateZonesSamplesIfNeededWithError:?];
  v4 = v7;
  v5 = a1[6];
  if (v3)
  {
    v6 = [*(a1[4] + 256) objectForKeyedSubscript:a1[5]];
    (*(v5 + 16))(v5, v6, 0);
  }

  else
  {
    (*(v5 + 16))(a1[6], 0, v4);
  }
}

- (id)currentMetadata
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_metadata copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)_addMetadata:(int)metadata byPassPrivateKeyCheck:(uint64_t)check error:
{
  v7 = a2;
  os_unfair_lock_assert_not_owner(self + 10);
  client = [(os_unfair_lock *)self client];
  v9 = client;
  if (metadata)
  {
    configuration = [client configuration];
    applicationSDKVersionToken = [configuration applicationSDKVersionToken];

    if (([v7 hk_validateMetadataKeysAndValuesAllowingPrivateMetadataKeys:1 applicationSDKVersionToken:applicationSDKVersionToken error:check] & 1) == 0)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v13 = [v7 hd_validateMetadataKeysAndValuesWithClient:client error:check];

    if (!v13)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__170;
  v24 = __Block_byref_object_dispose__170;
  v25 = 0;
  profile = [(os_unfair_lock *)self profile];
  database = [profile database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__HDWorkoutBuilderServer__addMetadata_byPassPrivateKeyCheck_error___block_invoke;
  v17[3] = &unk_278615F88;
  v17[4] = self;
  v18 = v7;
  v19 = &v20;
  v12 = [(HDHealthEntity *)HDWorkoutBuilderEntity performWriteTransactionWithHealthDatabase:database error:check block:v17];

  if (v12)
  {
    [(HDWorkoutBuilderServer *)self _didUpdateMetadata:?];
  }

  _Block_object_dispose(&v20, 8);
LABEL_8:

  return v12;
}

uint64_t __67__HDWorkoutBuilderServer__addMetadata_byPassPrivateKeyCheck_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a2;
  os_unfair_lock_lock(v5 + 10);
  v7 = *(a1[4] + 216);
  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = a1[4];
    v10 = *(v9 + 216);
    *(v9 + 216) = v8;

    v7 = *(a1[4] + 216);
  }

  [v7 addEntriesFromDictionary:a1[5]];
  v11 = [*(a1[4] + 216) copy];
  v12 = *(a1[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(a1[4] + 48) setMetadata:*(a1[4] + 216) transaction:v6 error:a3];
  os_unfair_lock_unlock((a1[4] + 40));
  return v14;
}

uint64_t __48__HDWorkoutBuilderServer__removeMetadata_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  os_unfair_lock_lock((a1[4] + 40));
  v6 = *(a1[4] + 216);
  if (v6 && ([v6 objectForKeyedSubscript:a1[5]], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    [*(a1[4] + 216) removeObjectForKey:a1[5]];
    v8 = [*(a1[4] + 216) copy];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [*(a1[4] + 48) setMetadata:*(a1[4] + 216) transaction:v5 error:a3];
    os_unfair_lock_unlock((a1[4] + 40));
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
    {
      v13 = a1[4];
      v14 = a1[5];
      v17 = 138543618;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_INFO, "%{public}@: Empty or metadata for %{public}@ does not exist", &v17, 0x16u);
    }

    os_unfair_lock_unlock((a1[4] + 40));
    v11 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

void __45__HDWorkoutBuilderServer__didUpdateMetadata___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Couldn't notify Workout Builder Server client of updated metadata with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __45__HDWorkoutBuilderServer__didUpdateMetadata___block_invoke_606(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 workoutDataAccumulator:*(a1 + 32) didUpdateMetadata:*(a1 + 40)];
  }
}

void __52__HDWorkoutBuilderServer__didChangeElapsedTimeBasis__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of elapsed time basis change with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __53__HDWorkoutBuilderServer__insertWorkoutEvents_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v35 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v5 = [*(*(a1 + 32) + 176) copy];
  v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:*(a1 + 40)];
  v7 = v6;
  if (v5)
  {
    [v6 addObjectsFromArray:v5];
  }

  os_unfair_lock_unlock((*(a1 + 32) + 40));
  v34 = v7;
  v8 = [v7 allObjects];
  v9 = [v8 sortedArrayUsingSelector:sel_compare_];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v46;
    v14 = 1;
    v15 = @"Consecutive pause events.";
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v17 = [*(*(&v45 + 1) + 8 * i) type];
        if (v17 == 2)
        {
          if (v14 == 1)
          {
            v15 = @"Consecutive resume events.";
LABEL_36:
            [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:v15];

            v31 = 0;
            goto LABEL_39;
          }

          v14 = 1;
        }

        else if (v17 == 1)
        {
          if (v14 == 2)
          {
            goto LABEL_36;
          }

          v14 = 2;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v36 = v5;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = *(a1 + 40);
  v19 = [v18 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v42;
    while (2)
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v41 + 1) + 8 * j);
        if (([v36 containsObject:v23] & 1) == 0 && !objc_msgSend(*(*(a1 + 32) + 48), "insertWorkoutEvent:transaction:error:", v23, v35, a3))
        {

          v31 = 0;
          goto LABEL_38;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  os_unfair_lock_lock((*(a1 + 32) + 40));
  objc_storeStrong((*(a1 + 32) + 176), v9);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v24 = *(*(a1 + 32) + 224);
  v25 = [v24 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v38;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(a1 + 32) + 224) objectForKeyedSubscript:*(*(&v37 + 1) + 8 * k)];
        v30 = [v29 _filterAndSetWorkoutEvents:v10];

        if (v30)
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v26);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 40));
  v31 = 1;
LABEL_38:
  v5 = v36;
LABEL_39:

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

void __43__HDWorkoutBuilderServer__didUpdateEvents___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Couldn't notify Workout Builder Server client of updated events with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __43__HDWorkoutBuilderServer__didUpdateEvents___block_invoke_616(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 workoutDataAccumulator:*(a1 + 32) didUpdateEvents:*(a1 + 40)];
  }
}

BOOL __52__HDWorkoutBuilderServer__addWorkoutActivity_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) profile];
  v5 = [v4 database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__HDWorkoutBuilderServer__addWorkoutActivity_error___block_invoke_2;
  v11[3] = &unk_278615F88;
  v6 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v7 = v6;
  v8 = *(a1 + 48);
  v12 = v7;
  v13 = v8;
  v9 = [(HDHealthEntity *)HDWorkoutBuilderEntity performWriteTransactionWithHealthDatabase:v5 error:a2 block:v11];

  return v9;
}

BOOL __52__HDWorkoutBuilderServer__addWorkoutActivity_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 40));
  if ([*(*(a1 + 32) + 48) insertWorkoutActivity:*(a1 + 40) transaction:v5 error:a3])
  {
    v6 = *(a1 + 32);
    v34 = a1;
    v7 = *(a1 + 40);
    v35 = v5;
    v39 = v5;
    if (v6)
    {
      os_unfair_lock_assert_owner((v6 + 40));
      v37 = objc_alloc_init(MEMORY[0x277CCDC18]);
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = [*(v6 + 88) allQuantityTypes];
      v40 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (!v40)
      {
        goto LABEL_24;
      }

      v38 = *v44;
      while (1)
      {
        v8 = 0;
        do
        {
          if (*v44 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v43 + 1) + 8 * v8);
          v10 = _HKStatisticsComputationMethodForQuantityType(v9, 0);
          v11 = [v7 startDate];
          v12 = [v7 endDate];
          v13 = [(HDWorkoutBuilderServer *)v6 _lock_createStatisticsCalculatorsForQuantityType:v9 mergeStrategy:0 computationMethod:v10 startDate:v11 endDate:v12];

          v14 = *(v6 + 88);
          v15 = [v7 UUID];
          [v14 setCalculator:v13 forQuantityType:v9 activityUUID:v15];

          v42 = 0;
          LOBYTE(v15) = [v13 invalidateInterval:0 error:&v42];
          v16 = v42;
          if ((v15 & 1) == 0)
          {
            _HKInitializeLogging();
            v17 = *MEMORY[0x277CCC330];
            if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v48 = v6;
              v49 = 2114;
              v50 = v16;
              _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Failed to invalidate calculator: %{public}@", buf, 0x16u);
            }
          }

          v18 = [v13 currentStatistics];
          v19 = *(v6 + 48);
          v20 = [v7 UUID];
          v41 = 0;
          LOBYTE(v19) = [v19 storeStatisticsCalculator:v13 anchor:0 activityUUID:v20 transaction:v39 error:&v41];
          v21 = v41;

          if ((v19 & 1) == 0 && (_HKInitializeLogging(), v22 = *MEMORY[0x277CCC330], os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR)))
          {
            *buf = 138543618;
            v48 = v6;
            v49 = 2114;
            v50 = v21;
            _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed to persist statistics: %{public}@", buf, 0x16u);
            if (!v18)
            {
              goto LABEL_19;
            }
          }

          else if (!v18)
          {
            goto LABEL_19;
          }

          v23 = [v7 startDate];

          if (v23)
          {
            v24 = [v7 startDate];
            [v18 _setStartDate:v24];
          }

          v25 = [v7 endDate];

          if (v25)
          {
            v26 = [v7 endDate];
            [v18 _setEndDate:v26];
          }

          v27 = [v7 UUID];
          [v37 addActivityStatistics:v18 forType:v9 activityUUID:v27];

LABEL_19:
          ++v8;
        }

        while (v40 != v8);
        v28 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
        v40 = v28;
        if (!v28)
        {
LABEL_24:

          goto LABEL_25;
        }
      }
    }

    v37 = 0;
LABEL_25:

    a1 = v34;
    v29 = *(*(v34 + 48) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v37;

    v31 = *(*(*(v34 + 48) + 8) + 40) != 0;
    v5 = v35;
  }

  else
  {
    v31 = 0;
  }

  os_unfair_lock_unlock((*(a1 + 32) + 40));

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

void __51__HDWorkoutBuilderServer__lock_didUpdateActivities__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Couldn't notify Workout Builder Server client of updated activities with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __46__HDWorkoutBuilderServer__didUpdateActivities__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Couldn't notify Workout Builder Server client of updated activities with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __51__HDWorkoutBuilderServer__updateActivitiesDuration__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (![*(*(a1 + 32) + 48) updateWorkoutActivityEndDate:*(*(&v14 + 1) + 8 * v10) transaction:v5 error:{a3, v14}])
        {
          v11 = 0;
          goto LABEL_11;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  os_unfair_lock_unlock((*(a1 + 32) + 40));
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __68__HDWorkoutBuilderServer__updateActivityWithUUID_addMetadata_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a2;
  os_unfair_lock_lock(v5 + 10);
  v7 = [*(a1[4] + 224) objectForKeyedSubscript:a1[5]];
  v8 = [v7 copy];

  v9 = [v8 metadata];
  v10 = [v9 mutableCopy];

  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  [v10 addEntriesFromDictionary:a1[6]];
  [v8 _setMetadata:v10];
  v11 = [*(a1[4] + 48) updateWorkoutActivityMetadata:v8 transaction:v6 error:a3];

  os_unfair_lock_unlock((a1[4] + 40));
  return v11;
}

uint64_t __76__HDWorkoutBuilderServer__attemptRequeryForInvalidatedStatisticsCalculators__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(*(a1 + 32) + 112) allObjects];
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v7 = *(a1 + 40);
        v8 = *(*(a1 + 32) + 88);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __76__HDWorkoutBuilderServer__attemptRequeryForInvalidatedStatisticsCalculators__block_invoke_2;
        v12[3] = &unk_27862AAF8;
        v13 = v7;
        v14 = v6;
        v15 = *(a1 + 32);
        [v8 enumerateCalculatorsForQuantityType:v6 handler:v12];
        [*(*(a1 + 32) + 112) removeObject:v6];

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 40));
  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __76__HDWorkoutBuilderServer__attemptRequeryForInvalidatedStatisticsCalculators__block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0;
  v4 = [v3 invalidateInterval:0 error:&v12];
  v5 = v12;
  if (v4)
  {
    v6 = [v3 currentStatistics];
    if (v6)
    {
      [*(a1 + 32) addWorkoutStatistics:v6 forType:*(a1 + 40)];
    }
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      *buf = 138543874;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = v5;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to requery for samples of type %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

void __53__HDWorkoutBuilderServer__fetchZonesByTypeWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 sampleType];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

uint64_t __81__HDWorkoutBuilderServer__lock_updateStatisticsWithQuantities_transaction_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 hdw_dateInterval];
  v6 = [v5 startDate];
  v7 = [v4 hdw_dateInterval];

  v8 = [v7 startDate];
  v9 = [v6 compare:v8];

  return v9;
}

uint64_t __81__HDWorkoutBuilderServer__lock_updateStatisticsWithQuantities_transaction_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [v8 hdw_quantity];
        [v9 doubleValueForUnit:*(a1 + 40)];
        v11 = v10;

        v12 = *(a1 + 48);
        [v8 hdw_startTimestamp];
        v14 = v13;
        [v8 hdw_endTimestamp];
        v16 = v15;
        v17 = [v8 hdw_sample];
        v18 = [v17 sourceRevision];
        v19 = [v18 source];
        v20 = [v19 _sourceID];
        LODWORD(v12) = [v12 addSampleValue:objc_msgSend(v20 startTime:"longLongValue") endTime:a2 sourceID:v11 error:{v14, v16}];

        if (!v12)
        {
          v21 = 0;
          goto LABEL_11;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v21 = 1;
LABEL_11:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)_lock_createStatisticsCalculatorsForQuantityType:(uint64_t)type mergeStrategy:(uint64_t)strategy computationMethod:(void *)method startDate:(void *)date endDate:
{
  v31 = *MEMORY[0x277D85DE8];
  methodCopy = method;
  dateCopy = date;
  v13 = a2;
  aggregationStyle = [v13 aggregationStyle];
  if (aggregationStyle > 3)
  {
    v15 = 0;
  }

  else
  {
    v15 = qword_229181448[aggregationStyle];
  }

  v16 = [HDStatisticsCollectionCalculator calculatorForQuantityType:v13 intervalCollection:0 options:v15 mergeStrategy:type computationMethod:strategy];
  v17 = [(HDWorkoutBuilderServer *)self _lock_sourceOrderProviderForQuantityType:v13];
  [v16 setSourceOrderProvider:v17];

  v18 = [(HDWorkoutBuilderServer *)self _lock_statisticsDataSourceForQuantityType:v13];
  [v16 setDataSource:v18];

  v19 = [(HDWorkoutBuilderServer *)self _lock_maskedIntervalsForStatisticsOfType:v13 startDate:methodCopy endDate:dateCopy];

  v26 = 0;
  v20 = [v16 setMaskedIntervals:v19 error:&v26];
  v21 = v26;
  if ((v20 & 1) == 0 && (_HKInitializeLogging(), v22 = *MEMORY[0x277CCC330], os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR)))
  {
    *buf = 138543618;
    selfCopy = self;
    v29 = 2114;
    v30 = v21;
    _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unexpected error setting statistics masking intervals immediately after calculator creation: %{public}@", buf, 0x16u);
    if (!methodCopy)
    {
      goto LABEL_9;
    }
  }

  else if (!methodCopy)
  {
    goto LABEL_9;
  }

  [v16 configureMergeAnchor:methodCopy];
  if (dateCopy)
  {
    v23 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:methodCopy endDate:dateCopy];
    [v16 setDateInterval:v23];
  }

LABEL_9:

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_lock_maskedIntervalsForStatisticsOfType:(void *)type startDate:(void *)date endDate:
{
  v25[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  dateCopy = date;
  if (self)
  {
    v9 = a2;
    os_unfair_lock_assert_owner((self + 40));
    v10 = [*(self + 80) containsObject:v9];

    if (v10)
    {
      self = MEMORY[0x277CBEBF8];
    }

    else
    {
      v11 = *(self + 176);
      self = _HKPausedIntervalsWithWorkoutEvents();
    }

    if (typeCopy)
    {
      v12 = objc_alloc(MEMORY[0x277CCD2D0]);
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      v14 = [v12 initWithStartDate:distantPast endDate:typeCopy];

      v25[0] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
      v16 = [v15 arrayByAddingObjectsFromArray:self];

      self = v16;
    }

    if (dateCopy)
    {
      v17 = objc_alloc(MEMORY[0x277CCD2D0]);
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      v19 = [v17 initWithStartDate:dateCopy endDate:distantFuture];

      v24 = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      v21 = [v20 arrayByAddingObjectsFromArray:self];

      self = v21;
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return self;
}

void __47__HDWorkoutBuilderServer__didUpdateStatistics___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Couldn't notify Workout Builder Server client of updated statistics with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __47__HDWorkoutBuilderServer__didUpdateStatistics___block_invoke_655(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) workoutStatistics];
    [v5 workoutDataAccumulator:v3 didUpdateStatistics:v4];
  }
}

void __44__HDWorkoutBuilderServer__didFinishRecovery__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Couldn't notify Workout Builder Server client of finished recovery with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __58__HDWorkoutBuilderServer__updateStatisticsPauseResumeMask__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner((*(a1 + 32) + 40));
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__170;
  v22 = __Block_byref_object_dispose__170;
  v23 = 0;
  v2 = objc_alloc_init(MEMORY[0x277CCDC18]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__HDWorkoutBuilderServer__updateStatisticsPauseResumeMask__block_invoke_2;
  v15[3] = &unk_27862AB68;
  v15[4] = v3;
  v17 = &v18;
  v5 = v2;
  v16 = v5;
  [v4 enumerateCalculatorsWithHandler:v15];
  if ([v19[5] count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v19[5];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v24 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(a1 + 32) + 112) addObject:{*(*(&v11 + 1) + 8 * v9++), v11}];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v24 count:16];
      }

      while (v7);
    }
  }

  [(HDWorkoutBuilderServer *)*(a1 + 32) _didUpdateStatistics:v5];

  _Block_object_dispose(&v18, 8);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __58__HDWorkoutBuilderServer__updateStatisticsPauseResumeMask__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 232);
  v11 = [*(*(a1 + 32) + 224) objectForKeyedSubscript:v9];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 startDate];

    v14 = [v12 endDate];
    v10 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(HDWorkoutBuilderServer *)*(a1 + 32) _lock_maskedIntervalsForStatisticsOfType:v8 startDate:v10 endDate:v14];
  if (v10)
  {
    [v7 configureMergeAnchor:v10];
  }

  v16 = [v7 maskedIntervals];
  v17 = [v16 isEqual:v15];

  if ((v17 & 1) == 0)
  {
    v32 = 0;
    v18 = [v7 setMaskedIntervals:v15 error:&v32];
    v19 = v32;
    if (v18)
    {
      v20 = [v7 currentStatistics];
      if (v20)
      {
        v31 = v19;
        v21 = [*(a1 + 32) taskUUID];
        v30 = [v9 isEqual:v21];

        if (v30)
        {
          [*(a1 + 40) addWorkoutStatistics:v20 forType:v8];
          v19 = v31;
        }

        else
        {
          if (v10)
          {
            [v20 _setStartDate:v10];
          }

          v19 = v31;
          if (v14)
          {
            [v20 _setEndDate:v14];
          }

          [*(a1 + 40) addActivityStatistics:v20 forType:v8 activityUUID:v9];
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 32);
        *buf = 138543874;
        v34 = v29;
        v35 = 2114;
        v36 = v8;
        v37 = 2114;
        v38 = v19;
        _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed to requery after interval mask update for type %{public}@: %{public}@", buf, 0x20u);
      }

      v23 = *(*(*(a1 + 48) + 8) + 40);
      if (!v23)
      {
        v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v25 = *(*(a1 + 48) + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = v24;

        v23 = *(*(*(a1 + 48) + 8) + 40);
      }

      [v23 addObject:v8];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __58__HDWorkoutBuilderServer__updateStatisticsPauseResumeMask__block_invoke_659(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  (*(*(a1 + 40) + 16))();
  os_unfair_lock_unlock((*(a1 + 32) + 40));
  return 1;
}

uint64_t __58__HDWorkoutBuilderServer__updateStatisticsPauseResumeMask__block_invoke_2_660(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  (*(*(a1 + 40) + 16))();
  os_unfair_lock_unlock((*(a1 + 32) + 40));
  return 1;
}

uint64_t __58__HDWorkoutBuilderServer__currentStatisticsByQuantityType__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 currentStatistics];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];

  return 1;
}

void __50__HDWorkoutBuilderServer__lock_didUpdateStartDate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 workoutDataAccumulator:*(a1 + 32) didUpdateStartDate:*(*(a1 + 32) + 232)];
  }
}

- (BOOL)enumerateSamplesOfTypes:(id)types error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  persistentEntity = self->_persistentEntity;
  typesCopy = types;
  profile = [(HDStandardTaskServer *)self profile];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__HDWorkoutBuilderServer_enumerateSamplesOfTypes_error_handler___block_invoke;
  v14[3] = &unk_27862ABE0;
  v15 = handlerCopy;
  v12 = handlerCopy;
  LOBYTE(error) = [(HDWorkoutBuilderEntity *)persistentEntity enumerateAssociatedSamplesOfTypes:typesCopy interval:0 profile:profile error:error sampleHandler:v14];

  return error;
}

- (BOOL)enumerateQuantitiesOfType:(id)type error:(id *)error handler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  persistentEntity = self->_persistentEntity;
  profile = [(HDStandardTaskServer *)self profile];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__HDWorkoutBuilderServer_enumerateQuantitiesOfType_error_handler___block_invoke;
  v15[3] = &unk_27862AC08;
  v16 = typeCopy;
  v17 = handlerCopy;
  v12 = typeCopy;
  v13 = handlerCopy;
  LOBYTE(error) = [(HDWorkoutBuilderEntity *)persistentEntity enumerateAssociatedSampleValuesOfType:v12 interval:0 profile:profile error:error handler:v15];

  return error;
}

uint64_t __66__HDWorkoutBuilderServer_enumerateQuantitiesOfType_error_handler___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  v7 = MEMORY[0x277CCD7E8];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) canonicalUnit];
  v10 = [v7 quantityWithUnit:v9 doubleValue:a4];
  v11 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:a2 end:a3];
  (*(v8 + 16))(v8, v10, v11);

  return 1;
}

- (void)connectionInvalidated
{
  v3 = 0;
  v25 = *MEMORY[0x277D85DE8];
  atomic_compare_exchange_strong(&self->_invalidated, &v3, 1u);
  associatedSessionUUID = [(HKWorkoutBuilderConfiguration *)self->_configuration associatedSessionUUID];

  if (!associatedSessionUUID)
  {
    v20 = 0;
    v10 = [(HDWorkoutBuilderServer *)self _discardWorkoutWithError:?];
    v8 = v20;
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC330];
    v12 = *MEMORY[0x277CCC330];
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Discarded workout on connection invalidation because no session is associated with this builder.", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to discard unassociated builder on connection invalidation: %{public}@", buf, 0x16u);
    }

    goto LABEL_19;
  }

  associatedSessionUUID2 = [(HKWorkoutBuilderConfiguration *)self->_configuration associatedSessionUUID];
  profile = [(HDStandardTaskServer *)self profile];
  v19 = 0;
  v7 = [HDWorkoutSessionEntity lookupSessionWithIdentifier:associatedSessionUUID2 profile:profile error:&v19];
  v8 = v19;

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (v9)
  {
    if (v7)
    {
      [(HDWorkoutBuilderServer *)self _persistRecoveryData];
    }

    else
    {
      persistentEntity = self->_persistentEntity;
      profile2 = [(HDStandardTaskServer *)self profile];
      [HDWorkoutBuilderServer finishDetachedBuilderForEntity:persistentEntity sessionEndDate:0 profile:profile2];
    }

LABEL_19:
    v18.receiver = self;
    v18.super_class = HDWorkoutBuilderServer;
    [(HDStandardTaskServer *)&v18 connectionInvalidated];
    goto LABEL_20;
  }

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    selfCopy3 = self;
    v23 = 2114;
    v24 = v8;
    _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to lookup associated session entity on connection invalidated; treating session as present: %{public}@", buf, 0x16u);
  }

  [(HDWorkoutBuilderServer *)self _persistRecoveryData];

LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
}

BOOL __50__HDWorkoutBuilderServer__finishWorkoutWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 endDate];
  v3 = v2 == 0;

  return v3;
}

- (void)didCreateTaskServer:(id)server
{
  v89 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v4 = &OBJC_IVAR____HDStatisticsSyntheticQuantityType__overriddenAggregationStyle;
  if ([serverCopy conformsToProtocol:&unk_283CBA250])
  {
    taskUUID = [serverCopy taskUUID];
    v47 = serverCopy;
    v6 = taskUUID;
    if (self)
    {
      os_unfair_lock_lock(&self->_lock);
      v7 = [(NSSet *)self->_expectedDataSourceUUIDs containsObject:v6];
      os_unfair_lock_unlock(&self->_lock);
      if (v7)
      {
        workoutDataFlowLink = self->_workoutDataFlowLink;
        if (!workoutDataFlowLink)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:sel__setupDataSource_identifier_ object:self file:@"HDWorkoutBuilderServer.m" lineNumber:3429 description:{@"Invalid parameter not satisfying: %@", @"_workoutDataFlowLink != nil"}];

          workoutDataFlowLink = self->_workoutDataFlowLink;
        }

        [(HKDataFlowLink *)workoutDataFlowLink allSourceProcessors];
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        obj = v79 = 0u;
        v9 = [obj countByEnumeratingWithState:&v78 objects:v88 count:16];
        if (v9)
        {
          v10 = *v79;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v79 != v10)
              {
                objc_enumerationMutation(obj);
              }

              workoutDataProcessorUUID = [*(*(&v78 + 1) + 8 * i) workoutDataProcessorUUID];
              v13 = [workoutDataProcessorUUID isEqual:v6];

              if (v13)
              {
                _HKInitializeLogging();
                v26 = *MEMORY[0x277CCC330];
                if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
                {
                  v42 = v26;
                  uUIDString = [v6 UUIDString];
                  *buf = 138412290;
                  *&buf[4] = uUIDString;
                  _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "Trying to add already linked data source %@ to workout builder", buf, 0xCu);
                }

                *buf = v6;
                v27 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
                [(HDWorkoutBuilderServer *)self _removeExpectedDataSourceWithIdentifiers:v27];

                goto LABEL_40;
              }
            }

            v9 = [obj countByEnumeratingWithState:&v78 objects:v88 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        _HKInitializeLogging();
        v14 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          workoutDataFlowLink = [v47 workoutDataFlowLink];
          *buf = 138543874;
          *&buf[4] = self;
          v84 = 2114;
          v85 = v47;
          v86 = 2114;
          v87 = workoutDataFlowLink;
          _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding source %{public}@ (%{public}@)", buf, 0x20u);
        }

        v17 = self->_workoutDataFlowLink;
        workoutDataFlowLink2 = [v47 workoutDataFlowLink];
        [(HKDataFlowLink *)v17 addSource:workoutDataFlowLink2];

        v74 = 0;
        v75 = &v74;
        v76 = 0x2020000000;
        v77 = 0;
        v68 = 0;
        v69 = &v68;
        v70 = 0x3032000000;
        v71 = __Block_byref_object_copy__170;
        v72 = __Block_byref_object_dispose__170;
        v73 = 0;
        v62 = 0;
        v63 = &v62;
        v64 = 0x3032000000;
        v65 = __Block_byref_object_copy__170;
        v66 = __Block_byref_object_dispose__170;
        v67 = 0;
        profile = [(HDStandardTaskServer *)self profile];
        database = [profile database];
        v61 = 0;
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __54__HDWorkoutBuilderServer__setupDataSource_identifier___block_invoke;
        v54[3] = &unk_278620858;
        v21 = v47;
        v55 = v21;
        selfCopy = self;
        v22 = v6;
        v57 = v22;
        v58 = &v68;
        v59 = &v62;
        v60 = &v74;
        LODWORD(workoutDataFlowLink2) = [(HDHealthEntity *)HDWorkoutBuilderEntity performWriteTransactionWithHealthDatabase:database error:&v61 block:v54];
        v23 = v61;

        if (workoutDataFlowLink2)
        {
          os_unfair_lock_lock(&self->_lock);
          if ([(NSMutableDictionary *)self->_workoutActivitiesByUUID count])
          {
            allValues = [(NSMutableDictionary *)self->_workoutActivitiesByUUID allValues];
            v25 = [allValues hk_firstObjectPassingTest:&__block_literal_global_704_0];

            os_unfair_lock_unlock(&self->_lock);
            if (v25)
            {
              [v21 workoutDataDestination:self didBeginActivity:v25];
            }
          }

          else
          {
            os_unfair_lock_unlock(&self->_lock);
            v25 = 0;
          }

          [(HDWorkoutBuilderServer *)self _updateStatisticsPauseResumeMask];
          if (*(v75 + 24) == 1)
          {
            [(HDWorkoutBuilderServer *)self _requestDataFromSource:v21 from:v69[5] to:v63[5]];
          }

          if (objc_opt_respondsToSelector())
          {
            associatedSessionUUID = [(HKWorkoutBuilderConfiguration *)self->_configuration associatedSessionUUID];
            [v21 workoutDataDestination:self didAttachDataSourceToSessionIdentifer:associatedSessionUUID];
          }

          [(HKDataFlowLink *)self->_workoutDataFlowLink allSourceProcessors];
          v45 = v25;
          v46 = v23;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v29 = v51 = 0u;
          v30 = [v29 countByEnumeratingWithState:&v50 objects:buf count:16];
          if (v30)
          {
            v31 = *v51;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v51 != v31)
                {
                  objc_enumerationMutation(v29);
                }

                v33 = *(*(&v50 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                {
                  [v33 workoutDataDestinationRequestGeneratedTypes:self];
                }
              }

              v30 = [v29 countByEnumeratingWithState:&v50 objects:buf count:16];
            }

            while (v30);
          }

          v23 = v46;
        }

        v82 = v22;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
        [(HDWorkoutBuilderServer *)self _removeExpectedDataSourceWithIdentifiers:v34];

        v4 = &OBJC_IVAR____HDStatisticsSyntheticQuantityType__overriddenAggregationStyle;
        _Block_object_dispose(&v62, 8);

        _Block_object_dispose(&v68, 8);
        _Block_object_dispose(&v74, 8);
LABEL_40:
      }
    }
  }

  associatedSessionUUID2 = [*(&self->super.super.isa + v4[198]) associatedSessionUUID];
  taskUUID2 = [serverCopy taskUUID];
  v37 = [associatedSessionUUID2 isEqual:taskUUID2];

  if (v37)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      os_unfair_lock_lock(&self->_lock);
      lock_isAssociatedToSession = self->_lock_isAssociatedToSession;
      self->_lock_isAssociatedToSession = 1;
      os_unfair_lock_unlock(&self->_lock);
      if (!lock_isAssociatedToSession)
      {
        persistentEntity = self->_persistentEntity;
        v40 = serverCopy;
        [v40 setAssociatedWorkoutBuilderEntity:persistentEntity];
        [v40 setWorkoutDataAccumulator:self];
      }
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)didInvalidateTaskServer:(id)server
{
  serverCopy = server;
  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  taskServerRegistry = [daemon taskServerRegistry];
  taskUUID = [serverCopy taskUUID];

  [taskServerRegistry addObserver:self forTaskServerUUID:taskUUID queue:0];
}

- (void)workoutManager:(id)manager didUpdateCurrentWorkout:(id)workout
{
  workoutCopy = workout;
  if ([workoutCopy state] >= 6)
  {
    [(HDWorkoutBuilderServer *)self _takeDatabaseAssertionIfNeeded];
  }

  if ([workoutCopy state] == 17)
  {
    os_unfair_lock_lock(&self->_lock);
    [(HDAssertion *)self->_lock_databaseAssertion invalidate];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_takeDatabaseAssertionIfNeeded
{
  v17 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    v2 = *(self + 168);
    os_unfair_lock_unlock((self + 40));
    if (!v2)
    {
      profile = [self profile];
      database = [profile database];
      taskUUID = [self taskUUID];
      uUIDString = [taskUUID UUIDString];
      v12 = 0;
      v7 = [database takeAccessibilityAssertionWithOwnerIdentifier:uUIDString contextType:3 error:&v12];
      v8 = v12;

      if (v7)
      {
        os_unfair_lock_lock((self + 40));
        if (*(self + 168))
        {
          _HKInitializeLogging();
          v9 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy2 = self;
            _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: We have an old assertion. Invalidating...", buf, 0xCu);
          }

          [*(self + 168) invalidate];
        }

        objc_storeStrong((self + 168), v7);
        os_unfair_lock_unlock((self + 40));
      }

      else
      {
        _HKInitializeLogging();
        v10 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy2 = self;
          v15 = 2114;
          v16 = v8;
          _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to take database assertion with error %{public}@.", buf, 0x16u);
        }
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  if (available)
  {
    [(HDWorkoutBuilderServer *)self _takeDatabaseAssertionIfNeeded];
  }
}

uint64_t __54__HDWorkoutBuilderServer__setupDataSource_identifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![*(*(a1 + 40) + 48) setSessionIdentifier:*(a1 + 48) transaction:v5 error:a3])
  {
    v18 = 0;
  }

  else
  {
    os_unfair_lock_lock((*(a1 + 40) + 40));
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = v5;
    if (v7)
    {
      os_unfair_lock_assert_owner((v7 + 40));
      if (objc_opt_respondsToSelector())
      {
        v10 = [v8 quantityTypesToIncludeWhilePaused];
        v11 = [*(v7 + 80) setByAddingObjectsFromSet:v10];
        v12 = *(v7 + 80);
        *(v7 + 80) = v11;

        v13 = *(v7 + 48);
        v14 = [*(v7 + 80) allObjects];
        v21 = 0;
        v15 = [v13 setQuantityTypesIncludedWhilePaused:v14 transaction:v9 error:&v21];
        v16 = v21;

        if ((v15 & 1) == 0)
        {
          _HKInitializeLogging();
          v17 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v23 = v7;
            v24 = 2114;
            v25 = v16;
            _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Unable to add quantity types to include while paused: %{public}@", buf, 0x16u);
          }
        }
      }
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 40) + 232));
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(*(a1 + 40) + 240));
    *(*(*(a1 + 72) + 8) + 24) = *(*(a1 + 40) + 161);
    os_unfair_lock_unlock((*(a1 + 40) + 40));
    v18 = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL __54__HDWorkoutBuilderServer__setupDataSource_identifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 endDate];
  v3 = v2 == 0;

  return v3;
}

@end