@interface HDActivityCacheEntity
+ (BOOL)addCodableObject:(id)object toCollection:(id)collection;
+ (BOOL)validateEntityWithProfile:(id)profile error:(id *)error validationErrorHandler:(id)handler;
+ (id)_createValidationError:(void *)error rowId:;
+ (id)activityCacheForIndex:(int64_t)index profile:(id)profile encodingOptions:(id)options error:(id *)error;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)foreignKeys;
+ (id)indices;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
+ (id)mergeDataObject:(id)object provenance:(id)provenance profile:(id)profile transaction:(id)transaction error:(id *)error insertHandler:(id)handler;
+ (void)_validateNonNegativeNumericProperty:(uint64_t)property row:(void *)row rowId:(void *)id validationErrorHandler:;
@end

@implementation HDActivityCacheEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"data_id";
  v2 = +[(HDDataEntity *)HDSampleEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)indices
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D10B40]);
  v3 = objc_opt_class();
  v10[0] = @"cache_index";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v5 = [v2 initWithEntity:v3 name:@"cache_index" columns:v4];

  v9 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  objectCopy = object;
  databaseCopy = database;
  dCopy = d;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDActivityCacheEntity.m" lineNumber:204 description:{@"Subclasses must override %s", "+[HDActivityCacheEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  objc_opt_self();
  dailyEnergyBurnedStatistics = [objectCopy dailyEnergyBurnedStatistics];

  if (dailyEnergyBurnedStatistics && (v17 = MEMORY[0x277CCAAB0], [objectCopy dailyEnergyBurnedStatistics], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "archivedDataWithRootObject:requiringSecureCoding:error:", v18, 1, error), dailyEnergyBurnedStatistics = objc_claimAutoreleasedReturnValue(), v18, !dailyEnergyBurnedStatistics))
  {
    v28 = 0;
  }

  else
  {
    dailyMoveMinutesStatistics = [objectCopy dailyMoveMinutesStatistics];

    if (dailyMoveMinutesStatistics && (v20 = MEMORY[0x277CCAAB0], [objectCopy dailyMoveMinutesStatistics], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "archivedDataWithRootObject:requiringSecureCoding:error:", v21, 1, error), dailyMoveMinutesStatistics = objc_claimAutoreleasedReturnValue(), v21, !dailyMoveMinutesStatistics))
    {
      v28 = 0;
    }

    else
    {
      dailyBriskMinutesStatistics = [objectCopy dailyBriskMinutesStatistics];

      if (dailyBriskMinutesStatistics && (v23 = MEMORY[0x277CCAAB0], [objectCopy dailyBriskMinutesStatistics], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "archivedDataWithRootObject:requiringSecureCoding:error:", v24, 1, error), dailyBriskMinutesStatistics = objc_claimAutoreleasedReturnValue(), v24, !dailyBriskMinutesStatistics))
      {
        v28 = 0;
      }

      else
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __87__HDActivityCacheEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
        v31[3] = &unk_278626A40;
        v25 = dCopy;
        v32 = v25;
        v33 = objectCopy;
        v34 = dailyEnergyBurnedStatistics;
        v35 = dailyMoveMinutesStatistics;
        v36 = dailyBriskMinutesStatistics;
        v26 = dailyBriskMinutesStatistics;
        if ([databaseCopy executeSQL:@"INSERT INTO activity_caches (data_id error:cache_index bindingHandler:sequence enumerationHandler:{activity_mode, paused, wheelchair_use, energy_burned, energy_burned_goal, energy_burned_goal_date, move_minutes, move_minutes_goal, move_minutes_goal_date, brisk_minutes, brisk_minutes_goal, brisk_minutes_goal_date, active_hours, active_hours_goal, active_hours_goal_date, steps, pushes, walk_distance, deep_breathing_duration, flights, energy_burned_stats, move_minutes_stats, brisk_minutes_stats, version) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", error, v31, 0}])
        {
          v27 = v25;
        }

        else
        {
          v27 = 0;
        }

        v28 = v27;
      }
    }
  }

  return v28;
}

uint64_t __87__HDActivityCacheEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  sqlite3_bind_int64(a2, 2, [*(a1 + 40) cacheIndex]);
  sqlite3_bind_int64(a2, 3, [*(a1 + 40) sequence]);
  sqlite3_bind_int64(a2, 4, [*(a1 + 40) activityMoveMode]);
  sqlite3_bind_int(a2, 5, [*(a1 + 40) isPaused]);
  if ([*(a1 + 40) hasWheelchairUse])
  {
    sqlite3_bind_int64(a2, 6, [*(a1 + 40) wheelchairUse]);
  }

  else
  {
    sqlite3_bind_null(a2, 6);
  }

  if ([*(a1 + 40) hasEnergyBurned])
  {
    v4 = [*(a1 + 40) energyBurned];
    v5 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
    [v4 doubleValueForUnit:v5];
    sqlite3_bind_double(a2, 7, v6);
  }

  else
  {
    sqlite3_bind_null(a2, 7);
  }

  if ([*(a1 + 40) hasEnergyBurnedGoal])
  {
    v7 = [*(a1 + 40) energyBurnedGoal];
    v8 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
    [v7 doubleValueForUnit:v8];
    sqlite3_bind_double(a2, 8, v9);

    v10 = [*(a1 + 40) energyBurnedGoalDate];
    [v10 timeIntervalSinceReferenceDate];
    sqlite3_bind_double(a2, 9, v11);
  }

  else
  {
    sqlite3_bind_null(a2, 8);
    sqlite3_bind_null(a2, 9);
  }

  if ([*(a1 + 40) hasMoveMinutes])
  {
    [*(a1 + 40) moveMinutes];
    sqlite3_bind_double(a2, 10, v12);
  }

  else
  {
    sqlite3_bind_null(a2, 10);
  }

  if ([*(a1 + 40) hasMoveMinutesGoal])
  {
    v13 = [*(a1 + 40) moveMinutesGoal];
    v14 = [MEMORY[0x277CCDAB0] minuteUnit];
    [v13 doubleValueForUnit:v14];
    sqlite3_bind_double(a2, 11, v15);

    v16 = [*(a1 + 40) moveMinutesGoalDate];
    [v16 timeIntervalSinceReferenceDate];
    sqlite3_bind_double(a2, 12, v17);
  }

  else
  {
    sqlite3_bind_null(a2, 11);
    sqlite3_bind_null(a2, 12);
  }

  if ([*(a1 + 40) hasBriskMinutes])
  {
    [*(a1 + 40) briskMinutes];
    sqlite3_bind_double(a2, 13, v18);
  }

  else
  {
    sqlite3_bind_null(a2, 13);
  }

  if ([*(a1 + 40) hasBriskMinutesGoal])
  {
    v19 = [*(a1 + 40) briskMinutesGoal];
    v20 = [MEMORY[0x277CCDAB0] minuteUnit];
    [v19 doubleValueForUnit:v20];
    sqlite3_bind_double(a2, 14, v21);
  }

  else
  {
    sqlite3_bind_null(a2, 14);
  }

  if ([*(a1 + 40) hasBriskMinutesGoalDate])
  {
    v22 = [*(a1 + 40) briskMinutesGoalDate];
    [v22 timeIntervalSinceReferenceDate];
    sqlite3_bind_double(a2, 15, v23);
  }

  else
  {
    sqlite3_bind_null(a2, 15);
  }

  if ([*(a1 + 40) hasActiveHours])
  {
    [*(a1 + 40) activeHours];
    sqlite3_bind_double(a2, 16, v24);
  }

  else
  {
    sqlite3_bind_null(a2, 16);
  }

  if ([*(a1 + 40) hasActiveHoursGoal])
  {
    v25 = [*(a1 + 40) activeHoursGoal];
    v26 = [MEMORY[0x277CCDAB0] countUnit];
    [v25 doubleValueForUnit:v26];
    sqlite3_bind_double(a2, 17, v27);
  }

  else
  {
    sqlite3_bind_null(a2, 17);
  }

  if ([*(a1 + 40) hasActiveHoursGoalDate])
  {
    v28 = [*(a1 + 40) activeHoursGoalDate];
    [v28 timeIntervalSinceReferenceDate];
    sqlite3_bind_double(a2, 18, v29);
  }

  else
  {
    sqlite3_bind_null(a2, 18);
  }

  if ([*(a1 + 40) hasStepCount])
  {
    sqlite3_bind_int64(a2, 19, [*(a1 + 40) stepCount]);
  }

  else
  {
    sqlite3_bind_null(a2, 19);
  }

  if ([*(a1 + 40) hasPushCount])
  {
    sqlite3_bind_int64(a2, 20, [*(a1 + 40) pushCount]);
  }

  else
  {
    sqlite3_bind_null(a2, 20);
  }

  if ([*(a1 + 40) hasWalkingAndRunningDistance])
  {
    v30 = [*(a1 + 40) walkingAndRunningDistance];
    v31 = [MEMORY[0x277CCDAB0] meterUnit];
    [v30 doubleValueForUnit:v31];
    sqlite3_bind_double(a2, 21, v32);
  }

  else
  {
    sqlite3_bind_null(a2, 21);
  }

  if ([*(a1 + 40) hasDeepBreathingDuration])
  {
    [*(a1 + 40) deepBreathingDuration];
    sqlite3_bind_double(a2, 22, v33);
  }

  else
  {
    sqlite3_bind_null(a2, 22);
  }

  if ([*(a1 + 40) hasFlightsClimbed])
  {
    sqlite3_bind_int64(a2, 23, [*(a1 + 40) flightsClimbed]);
  }

  else
  {
    sqlite3_bind_null(a2, 23);
  }

  if ([*(a1 + 40) hasDailyEnergyBurnedStatistics])
  {
    v34 = *(a1 + 48);
    v35 = _HDSQLiteValueForData();
    HDSQLiteBindFoundationValueToStatement();
  }

  else
  {
    sqlite3_bind_null(a2, 24);
  }

  if ([*(a1 + 40) hasDailyMoveMinutesStatistics])
  {
    v36 = *(a1 + 56);
    v37 = _HDSQLiteValueForData();
    HDSQLiteBindFoundationValueToStatement();
  }

  else
  {
    sqlite3_bind_null(a2, 25);
  }

  if ([*(a1 + 40) hasDailyBriskMinutesStatistics])
  {
    v38 = *(a1 + 64);
    v39 = _HDSQLiteValueForData();
    HDSQLiteBindFoundationValueToStatement();
  }

  else
  {
    sqlite3_bind_null(a2, 26);
  }

  v40 = [*(a1 + 40) version];

  return sqlite3_bind_int64(a2, 27, v40);
}

+ (id)activityCacheForIndex:(int64_t)index profile:(id)profile encodingOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  profileCopy = profile;
  v11 = HDActivityCacheEntityPredicateForCacheIndex(index, 1);
  activityCacheType = [MEMORY[0x277CCD720] activityCacheType];
  v13 = [(HDSampleEntity *)HDActivityCacheEntity anySampleOfType:activityCacheType profile:profileCopy encodingOptions:optionsCopy predicate:v11 error:error];

  return v13;
}

+ (id)mergeDataObject:(id)object provenance:(id)provenance profile:(id)profile transaction:(id)transaction error:(id *)error insertHandler:(id)handler
{
  v59 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  provenanceCopy = provenance;
  profileCopy = profile;
  transactionCopy = transaction;
  handlerCopy = handler;
  v15 = HDActivityCacheEntityPredicateForCacheIndex([objectCopy cacheIndex], 1);
  sourceID = [provenanceCopy sourceID];
  v17 = HDDataEntityPredicateForSourceIdentifier(sourceID);

  v18 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v17 otherPredicate:v15];
  if ([objectCopy sequence] < 1)
  {
    _HKInitializeLogging();
    v25 = *MEMORY[0x277CCC278];
    if (os_log_type_enabled(*MEMORY[0x277CCC278], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = objectCopy;
      _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "Attempting to merge new activity cache (%@) with no sequence number, defaulting to old behavior of always replacing", buf, 0xCu);
    }

    v21 = 0;
LABEL_16:
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v56 = __Block_byref_object_copy__141;
    v57 = __Block_byref_object_dispose__141;
    v58 = 0;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __92__HDActivityCacheEntity_mergeDataObject_provenance_profile_transaction_error_insertHandler___block_invoke;
    v44[3] = &unk_278622358;
    v44[4] = &v45;
    v44[5] = buf;
    [self deleteSamplesWithPredicate:v18 limit:0 generateDeletedObjects:0 transaction:transactionCopy profile:profileCopy recursiveDeleteAuthorizationBlock:0 completionHandler:v44];
    if (v46[3])
    {
      v43 = 0;
      v28 = handlerCopy[2](handlerCopy, objectCopy, &v43);
      v29 = v43;
      if (!(v28 | v29))
      {
        _HKInitializeLogging();
        v30 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
        {
          *v51 = 138543618;
          v52 = objectCopy;
          v53 = 2114;
          v54 = provenanceCopy;
          _os_log_fault_impl(&dword_228986000, v30, OS_LOG_TYPE_FAULT, "Unable to insert %{public}@ for %{public}@ when replacing existing cache, and no error was returned", v51, 0x16u);
        }

        v29 = [MEMORY[0x277CCA9B8] hk_error:124 description:@"Failed to insert activity cache during merge replacement"];
      }

      v31 = v29;
      v32 = v31;
      if (v31)
      {
        if (error)
        {
          v33 = v31;
          *error = v32;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_36;
    }

    v34 = *(*&buf[8] + 40);
    v32 = v34;
    if (v34)
    {
      if (error)
      {
        v35 = v34;
        v28 = 0;
        *error = v32;
LABEL_36:

        _Block_object_dispose(buf, 8);
        _Block_object_dispose(&v45, 8);
        goto LABEL_37;
      }

      _HKLogDroppedError();
    }

    v28 = 0;
    goto LABEL_36;
  }

  activityCacheType = [MEMORY[0x277CCD720] activityCacheType];
  v49 = 0;
  v50 = 0;
  v20 = [self mostRecentSampleWithType:activityCacheType profile:profileCopy encodingOptions:0 predicate:v18 anchor:&v50 error:&v49];
  v21 = v50;
  v22 = v49;

  if (!v20 && v22)
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC278];
    if (os_log_type_enabled(*MEMORY[0x277CCC278], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "Error retrieving most recent activity cache: %@", buf, 0xCu);
    }

    if (error)
    {
      v24 = v22;
      *error = v22;
    }

    else
    {
      _HKLogDroppedError();
    }

    v28 = 0;
    goto LABEL_37;
  }

  if (!v20 || (v26 = [objectCopy sequence], v26 > objc_msgSend(v20, "sequence")))
  {
    _HKInitializeLogging();
    v27 = *MEMORY[0x277CCC278];
    if (os_log_type_enabled(*MEMORY[0x277CCC278], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = objectCopy;
      _os_log_debug_impl(&dword_228986000, v27, OS_LOG_TYPE_DEBUG, "Replacing existing activity cache (%@) with new activity cache (%@)", buf, 0x16u);
    }

    goto LABEL_16;
  }

  _HKInitializeLogging();
  v36 = *MEMORY[0x277CCC278];
  if (os_log_type_enabled(*MEMORY[0x277CCC278], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v20;
    *&buf[12] = 2112;
    *&buf[14] = objectCopy;
    _os_log_impl(&dword_228986000, v36, OS_LOG_TYPE_DEFAULT, "Not replacing existing activity cache (%@) with new activity cache (%@)", buf, 0x16u);
  }

  v21 = v21;
  v28 = v21;
LABEL_37:

  v37 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDActivityCacheEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (BOOL)addCodableObject:(id)object toCollection:(id)collection
{
  if (object)
  {
    [collection addActivityCaches:object];
  }

  return object != 0;
}

+ (BOOL)validateEntityWithProfile:(id)profile error:(id *)error validationErrorHandler:(id)handler
{
  handlerCopy = handler;
  database = [profile database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__HDActivityCacheEntity_validateEntityWithProfile_error_validationErrorHandler___block_invoke;
  v12[3] = &unk_27861B6E8;
  v13 = @"SELECT ROWID, activity_mode, energy_burned, energy_burned_goal, move_minutes, move_minutes_goal, brisk_minutes, brisk_minutes_goal, active_hours, active_hours_goal, steps, pushes, walk_distance, flights, deep_breathing_duration FROM activity_caches";
  v14 = handlerCopy;
  selfCopy = self;
  v10 = handlerCopy;
  LOBYTE(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v12];

  return error;
}

uint64_t __80__HDActivityCacheEntity_validateEntityWithProfile_error_validationErrorHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 protectedDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__HDActivityCacheEntity_validateEntityWithProfile_error_validationErrorHandler___block_invoke_2;
  v11[3] = &unk_278618B70;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v12 = v7;
  v13 = v8;
  v9 = [v5 executeSQL:v6 error:a3 bindingHandler:0 enumerationHandler:v11];

  return v9;
}

uint64_t __80__HDActivityCacheEntity_validateEntityWithProfile_error_validationErrorHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x22AAC6C80](a2, 0);
  v5 = HDSQLiteColumnWithNameAsNumber();
  v6 = v5;
  if (v5 && ([v5 intValue] < 1 || objc_msgSend(v6, "intValue") >= 3))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid HKActivityMoveMode %@", v6];
    v10 = [(HDActivityCacheEntity *)v8 _createValidationError:v9 rowId:v4];
    (*(v7 + 16))(v7, v10);
  }

  [(HDActivityCacheEntity *)*(a1 + 40) _validateNonNegativeNumericProperty:a2 row:v4 rowId:*(a1 + 32) validationErrorHandler:?];
  [(HDActivityCacheEntity *)*(a1 + 40) _validateNonNegativeNumericProperty:a2 row:v4 rowId:*(a1 + 32) validationErrorHandler:?];
  [(HDActivityCacheEntity *)*(a1 + 40) _validateNonNegativeNumericProperty:a2 row:v4 rowId:*(a1 + 32) validationErrorHandler:?];
  [(HDActivityCacheEntity *)*(a1 + 40) _validateNonNegativeNumericProperty:a2 row:v4 rowId:*(a1 + 32) validationErrorHandler:?];
  [(HDActivityCacheEntity *)*(a1 + 40) _validateNonNegativeNumericProperty:a2 row:v4 rowId:*(a1 + 32) validationErrorHandler:?];
  [(HDActivityCacheEntity *)*(a1 + 40) _validateNonNegativeNumericProperty:a2 row:v4 rowId:*(a1 + 32) validationErrorHandler:?];
  [(HDActivityCacheEntity *)*(a1 + 40) _validateNonNegativeNumericProperty:a2 row:v4 rowId:*(a1 + 32) validationErrorHandler:?];
  [(HDActivityCacheEntity *)*(a1 + 40) _validateNonNegativeNumericProperty:a2 row:v4 rowId:*(a1 + 32) validationErrorHandler:?];
  [(HDActivityCacheEntity *)*(a1 + 40) _validateNonNegativeNumericProperty:a2 row:v4 rowId:*(a1 + 32) validationErrorHandler:?];
  [(HDActivityCacheEntity *)*(a1 + 40) _validateNonNegativeNumericProperty:a2 row:v4 rowId:*(a1 + 32) validationErrorHandler:?];
  [(HDActivityCacheEntity *)*(a1 + 40) _validateNonNegativeNumericProperty:a2 row:v4 rowId:*(a1 + 32) validationErrorHandler:?];
  [(HDActivityCacheEntity *)*(a1 + 40) _validateNonNegativeNumericProperty:a2 row:v4 rowId:*(a1 + 32) validationErrorHandler:?];
  [(HDActivityCacheEntity *)*(a1 + 40) _validateNonNegativeNumericProperty:a2 row:v4 rowId:*(a1 + 32) validationErrorHandler:?];

  return 1;
}

+ (id)_createValidationError:(void *)error rowId:
{
  v17[4] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = [MEMORY[0x277CCA9B8] hk_error:120 description:v5];

  v16[0] = *MEMORY[0x277CCBD78];
  databaseTable = [v6 databaseTable];
  v9 = *MEMORY[0x277CCA7E8];
  v17[0] = databaseTable;
  v17[1] = v7;
  v10 = *MEMORY[0x277CCBD70];
  v16[1] = v9;
  v16[2] = v10;
  v17[2] = errorCopy;
  v16[3] = *MEMORY[0x277CCBD88];
  errorCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"ROWID %@", errorCopy];
  v17[3] = errorCopy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  v13 = [MEMORY[0x277CCA9B8] hk_error:120 userInfo:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (void)_validateNonNegativeNumericProperty:(uint64_t)property row:(void *)row rowId:(void *)id validationErrorHandler:
{
  v14 = a2;
  rowCopy = row;
  idCopy = id;
  v9 = objc_opt_self();
  v10 = HDSQLiteColumnWithNameAsNumber();
  [v10 doubleValue];
  if (v11 < 0.0)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Property value cannot be negative, name %@ value %@", v14, v10];
    v13 = [(HDActivityCacheEntity *)v9 _createValidationError:v12 rowId:rowCopy];
    idCopy[2](idCopy, v13);
  }
}

@end