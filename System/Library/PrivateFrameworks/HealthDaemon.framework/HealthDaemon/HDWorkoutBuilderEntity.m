@interface HDWorkoutBuilderEntity
+ (BOOL)discardBuilderWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (HDWorkoutBuilderEntity)workoutBuilderEntityWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (const)columnDefinitionsWithCount:(unint64_t *)a3;
+ (id)createEntityForBuilderConfiguration:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)finishWorkoutBuilderWithIdentifier:(id)a3 dateInterval:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)foreignKeys;
+ (id)privateSubEntities;
+ (id)workoutBuilderEntitiesExcludingSessions:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)workoutBuilderEntitiesForSource:(id)a3 profile:(id)a4 error:(id *)a5;
+ (void)_workoutBuilderEntitiesForPredicate:(void *)a3 profile:(uint64_t)a4 error:;
- (BOOL)_setupForEnumerationOfTypes:(void *)a3 interval:(void *)a4 profile:(uint64_t)a5 error:(void *)a6 handler:;
- (BOOL)_setupForEnumerationOfTypes:(void *)a3 interval:(void *)a4 transaction:(void *)a5 error:(void *)a6 handler:;
- (BOOL)dropFinalTemporaryTableWithTransaction:(id)a3 error:(id *)a4;
- (BOOL)enumerateAssociatedSampleValuesOfType:(id)a3 interval:(id)a4 profile:(id)a5 error:(id *)a6 handler:(id)a7;
- (BOOL)enumerateAssociatedSampleValuesOfType:(id)a3 interval:(id)a4 profile:(id)a5 error:(id *)a6 sampleHandler:(id)a7;
- (BOOL)enumerateAssociatedSampleValuesWithCustomQueryOfType:(id)a3 interval:(id)a4 profile:(id)a5 error:(id *)a6 handler:(id)a7;
- (BOOL)enumerateAssociatedSamplesOfTypes:(id)a3 interval:(id)a4 profile:(id)a5 error:(id *)a6 sampleHandler:(id)a7;
- (BOOL)enumerateDataSourcesForProfile:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)enumerateStatisticsInTransaction:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)insertPrimaryWorkoutActivity:(id)a3 transaction:(id)a4 error:(id *)a5;
- (BOOL)insertWorkoutActivity:(id)a3 transaction:(id)a4 error:(id *)a5;
- (BOOL)insertWorkoutEvent:(id)a3 transaction:(id)a4 error:(id *)a5;
- (BOOL)insertZones:(id)a3 transaction:(id)a4 error:(id *)a5;
- (BOOL)pruneAssociatedSamplesToDateInterval:(id)a3 transaction:(id)a4 error:(id *)a5 zonesHandler:(id)a6 sampleHandler:(id)a7;
- (BOOL)removeDataSourceWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
- (BOOL)setArchivedState:(id)a3 forDataSourceIdentifier:(id)a4 profile:(id)a5 error:(id *)a6;
- (BOOL)setDataInterval:(id)a3 transaction:(id)a4 error:(id *)a5;
- (BOOL)setDeviceEntity:(id)a3 transaction:(id)a4 error:(id *)a5;
- (BOOL)setMetadata:(id)a3 transaction:(id)a4 error:(id *)a5;
- (BOOL)setQuantityTypesIncludedWhilePaused:(id)a3 transaction:(id)a4 error:(id *)a5;
- (BOOL)setSessionIdentifier:(id)a3 transaction:(id)a4 error:(id *)a5;
- (BOOL)setWorkoutConfiguration:(id)a3 transaction:(id)a4 error:(id *)a5;
- (BOOL)storeStatisticsCalculator:(id)a3 anchor:(id)a4 activityUUID:(id)a5 transaction:(id)a6 error:(id *)a7;
- (BOOL)updateTimeInZone:(id)a3 transaction:(id)a4 error:(id *)a5;
- (BOOL)updateWorkoutActivityEndDate:(id)a3 transaction:(id)a4 error:(id *)a5;
- (BOOL)updateWorkoutActivityMetadata:(id)a3 transaction:(id)a4 error:(id *)a5;
- (id)configurationWithTransaction:(id)a3 error:(id *)a4;
- (id)dataIntervalInTransaction:(id)a3 error:(id *)a4;
- (id)endDateInTransaction:(id)a3 error:(id *)a4;
- (id)metadataWithTransaction:(id)a3 error:(id *)a4;
- (id)primaryActivityInTransaction:(id)a3 error:(id *)a4;
- (id)quantityTypesIncludedWhilePausedInTransaction:(id)a3 error:(id *)a4;
- (id)sessionIdentifierWithTransaction:(id)a3 error:(id *)a4;
- (id)startDateInTransaction:(id)a3 error:(id *)a4;
- (id)workoutActivitiesInTransaction:(id)a3 error:(id *)a4;
- (id)workoutEventsInTransaction:(id)a3 error:(id *)a4;
- (id)zonesInTransaction:(id)a3 error:(id *)a4;
- (uint64_t)_dropTemporaryTableWithTransaction:(void *)a3 name:(void *)a4 error:;
@end

@implementation HDWorkoutBuilderEntity

+ (HDWorkoutBuilderEntity)workoutBuilderEntityWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" equalToValue:a3];
  v10 = [v8 database];
  v11 = [a1 anyWithPredicate:v9 healthDatabase:v10 error:a5];

  return v11;
}

+ (void)_workoutBuilderEntitiesForPredicate:(void *)a3 profile:(uint64_t)a4 error:
{
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [v7 database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__HDWorkoutBuilderEntity__workoutBuilderEntitiesForPredicate_profile_error___block_invoke;
  v16[3] = &unk_2786281C8;
  v19 = v8;
  v11 = v6;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  LODWORD(a4) = [v8 performReadTransactionWithHealthDatabase:v10 error:a4 block:v16];

  if (a4)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

uint64_t __76__HDWorkoutBuilderEntity__workoutBuilderEntitiesForPredicate_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = [a2 databaseForEntityClass:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__HDWorkoutBuilderEntity__workoutBuilderEntitiesForPredicate_profile_error___block_invoke_2;
  v10[3] = &unk_2786245D8;
  v7 = *(a1 + 32);
  v11 = *(a1 + 40);
  v8 = [v5 enumerateEntitiesInDatabase:v6 predicate:v7 error:a3 enumerationHandler:v10];

  return v8;
}

+ (id)workoutBuilderEntitiesForSource:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277D10B18];
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "persistentID")}];
  v12 = [v10 predicateWithProperty:@"source_id" equalToValue:v11];

  v13 = [(HDWorkoutBuilderEntity *)a1 _workoutBuilderEntitiesForPredicate:v12 profile:v9 error:a5];

  return v13;
}

+ (id)workoutBuilderEntitiesExcludingSessions:(id)a3 profile:(id)a4 error:(id *)a5
{
  v18[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277D10B28] doesNotContainPredicateWithProperty:@"session" values:v8];
  v11 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"session"];
  v12 = MEMORY[0x277D10B20];
  v18[0] = v11;
  v18[1] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v14 = [v12 predicateMatchingAnyPredicates:v13];

  v15 = [(HDWorkoutBuilderEntity *)a1 _workoutBuilderEntitiesForPredicate:v14 profile:v9 error:a5];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)createEntityForBuilderConfiguration:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__156;
  v22 = __Block_byref_object_dispose__156;
  v23 = 0;
  v9 = [a4 database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__HDWorkoutBuilderEntity_createEntityForBuilderConfiguration_profile_error___block_invoke;
  v14[3] = &unk_278623F30;
  v16 = &v18;
  v17 = a1;
  v10 = v8;
  v15 = v10;
  LODWORD(a5) = [a1 performWriteTransactionWithHealthDatabase:v9 error:a5 block:v14];

  if (a5)
  {
    v11 = v19[5];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  _Block_object_dispose(&v18, 8);

  return v12;
}

BOOL __76__HDWorkoutBuilderEntity_createEntityForBuilderConfiguration_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v17[0] = @"uuid";
  v17[1] = @"workout_configuration";
  v17[2] = @"source_id";
  v17[3] = @"source_version";
  v17[4] = @"device_id";
  v17[5] = @"goal_type";
  v17[6] = @"goal";
  v17[7] = @"should_collect_events";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:8];
  v7 = *(a1 + 48);
  v8 = [v5 databaseForEntityClass:v7];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__HDWorkoutBuilderEntity_createEntityForBuilderConfiguration_profile_error___block_invoke_2;
  v15[3] = &unk_2786246A0;
  v16 = *(a1 + 32);
  v9 = [v7 insertOrReplaceEntity:0 database:v8 properties:v6 error:a3 bindingHandler:v15];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(*(a1 + 40) + 8) + 40) != 0;
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void __76__HDWorkoutBuilderEntity_createEntityForBuilderConfiguration_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) builderIdentifier];
  MEMORY[0x22AAC6C00](a2, @"uuid");

  v8 = [*(a1 + 32) workoutConfiguration];
  HDSQLiteBindSecureCodingObjectToProperty();

  v9 = [*(a1 + 32) sourceEntity];
  MEMORY[0x22AAC6B90](a2, @"source_id", [v9 persistentID]);

  v10 = [*(a1 + 32) sourceVersion];
  MEMORY[0x22AAC6BD0](a2, @"source_version");

  v4 = [*(a1 + 32) deviceEntity];
  v11 = v4;
  if (v4)
  {
    MEMORY[0x22AAC6B90](a2, @"device_id", [v4 persistentID]);
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"device_id");
  }

  MEMORY[0x22AAC6B90](a2, @"goal_type", [*(a1 + 32) goalType]);
  v5 = [*(a1 + 32) goal];

  if (v5)
  {
    v6 = [*(a1 + 32) goal];
    HDSQLiteBindSecureCodingObjectToProperty();
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"goal");
  }

  MEMORY[0x22AAC6B30](a2, @"should_collect_events", [*(a1 + 32) shouldCollectWorkoutEvents]);
}

+ (BOOL)discardBuilderWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [[HDDiscardWorkoutOperation alloc] initWithBuilderIdentifier:v7];
  LOBYTE(a5) = [(HDJournalableOperation *)v9 performOrJournalWithProfile:v8 error:a5];

  return a5;
}

+ (id)finishWorkoutBuilderWithIdentifier:(id)a3 dateInterval:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__156;
  v29 = __Block_byref_object_dispose__156;
  v30 = 0;
  v13 = [v12 database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__HDWorkoutBuilderEntity_finishWorkoutBuilderWithIdentifier_dateInterval_profile_error___block_invoke;
  v19[3] = &unk_278628240;
  v24 = a1;
  v14 = v10;
  v20 = v14;
  v15 = v12;
  v21 = v15;
  v23 = &v25;
  v16 = v11;
  v22 = v16;
  LOBYTE(a1) = [a1 performReadTransactionWithHealthDatabase:v13 error:a6 block:v19];

  if (a1 & 1) != 0 && ([v26[5] performOrJournalWithProfile:v15 error:a6])
  {
    v17 = [v26[5] createdWorkout];
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v25, 8);

  return v17;
}

BOOL __88__HDWorkoutBuilderEntity_finishWorkoutBuilderWithIdentifier_dateInterval_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [*(a1 + 64) workoutBuilderEntityWithIdentifier:*(a1 + 32) profile:*(a1 + 40) error:a3];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 configurationWithTransaction:v5 error:a3];
    if (!v8)
    {
      v15 = 0;
LABEL_44:

      goto LABEL_45;
    }

    v62[0] = 0;
    v9 = [v7 metadataWithTransaction:v5 error:v62];
    v10 = v62[0];
    v11 = v10;
    if (!v9 && v10)
    {
      v12 = v10;
      v13 = v12;
      if (a3)
      {
        v14 = v12;
        v15 = 0;
        *a3 = v13;
      }

      else
      {
        _HKLogDroppedError();
        v15 = 0;
      }

      goto LABEL_42;
    }

    v56 = v10;
    v16 = [v8 deviceEntity];

    if (v16)
    {
      v17 = [*(a1 + 40) deviceManager];
      v18 = MEMORY[0x277CCABB0];
      v19 = [v8 deviceEntity];
      v20 = [v18 numberWithLongLong:{objc_msgSend(v19, "persistentID")}];
      v21 = [v17 deviceForPersistentID:v20 error:a3];

      if (!v21)
      {
        v15 = 0;
        v11 = v56;
LABEL_43:

        goto LABEL_44;
      }
    }

    else
    {
      v21 = 0;
    }

    v53 = v21;
    v55 = v8;
    v22 = [*(a1 + 40) sourceManager];
    v23 = MEMORY[0x277CCABB0];
    v24 = [v8 sourceEntity];
    v25 = [v23 numberWithLongLong:{objc_msgSend(v24, "persistentID")}];
    v61 = 0;
    v26 = [v22 clientSourceForPersistentID:v25 error:&v61];
    v27 = v61;

    v54 = v26;
    if (!v26)
    {
      if (v27)
      {
        v29 = v27;
        v13 = v53;
      }

      else
      {
        v13 = v53;
        v29 = [MEMORY[0x277CCA9B8] hk_error:4 format:@"Could not find source for application"];
        if (!v29)
        {
          v27 = 0;
          v15 = 0;
LABEL_41:

          v8 = v55;
          v11 = v56;
LABEL_42:

          goto LABEL_43;
        }
      }

      if (a3)
      {
        v33 = v29;
        v15 = 0;
        *a3 = v29;
      }

      else
      {
        _HKLogDroppedError();
        v15 = 0;
      }

      v27 = v29;
      goto LABEL_41;
    }

    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __88__HDWorkoutBuilderEntity_finishWorkoutBuilderWithIdentifier_dateInterval_profile_error___block_invoke_2;
    v59[3] = &unk_2786281F0;
    v29 = v28;
    v60 = v29;
    v13 = v53;
    if (![HDWorkoutBuilderAssociatedSeriesEntity enumerateSeriesForBuilder:v7 transaction:v5 error:a3 block:v59])
    {
      v15 = 0;
LABEL_40:

      goto LABEL_41;
    }

    v52 = [v7 workoutEventsInTransaction:v5 error:a3];
    if (!v52)
    {
      v15 = 0;
LABEL_39:

      goto LABEL_40;
    }

    v51 = [v7 workoutActivitiesInTransaction:v5 error:a3];
    if (!v51)
    {
      goto LABEL_20;
    }

    v30 = [MEMORY[0x277CCDD30] sharedBehavior];
    v31 = [v30 futureMigrationsEnabled];

    if (v31)
    {
      v32 = [v7 zonesInTransaction:v5 error:a3];
      if (!v32)
      {
LABEL_20:
        v15 = 0;
LABEL_38:

        goto LABEL_39;
      }
    }

    else
    {
      v32 = MEMORY[0x277CBEBF8];
    }

    v50 = v32;
    v34 = objc_alloc_init(HDWorkoutBuilderStatisticsCalculators);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __88__HDWorkoutBuilderEntity_finishWorkoutBuilderWithIdentifier_dateInterval_profile_error___block_invoke_3;
    v57[3] = &unk_278628218;
    v49 = v34;
    v58 = v49;
    if ([v7 enumerateStatisticsInTransaction:v5 error:a3 block:v57])
    {
      v35 = [v7 quantityTypesIncludedWhilePausedInTransaction:v5 error:a3];
      v15 = v35 != 0;
      if (v35)
      {
        v48 = v35;
        v45 = [HDCreateWorkoutOperation alloc];
        v47 = [v55 workoutConfiguration];
        v36 = *(a1 + 48);
        v43 = v36;
        v44 = *(a1 + 32);
        v46 = [v55 sourceVersion];
        v37 = [v55 goalType];
        v42 = [v55 goal];
        v38 = [(HDCreateWorkoutOperation *)v45 initWithWorkoutConfiguration:v47 identifier:v44 dateInterval:v43 metadata:v9 device:v53 source:v54 sourceVersion:v46 events:v52 activities:v51 zones:v50 statisticsCalculators:v49 associatedSeries:v29 goalType:v37 goal:v42 quantityTypesIncludedWhilePaused:v48];
        v39 = *(*(a1 + 56) + 8);
        v40 = *(v39 + 40);
        *(v39 + 40) = v38;

        v35 = v48;
      }
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_38;
  }

  v15 = 0;
LABEL_45:

  return v15;
}

void __88__HDWorkoutBuilderEntity_finishWorkoutBuilderWithIdentifier_dateInterval_profile_error___block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v10 = a2;
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    [*(a1 + 32) setCalculator:v9 forQuantityType:v10 activityUUID:v8];
  }
}

- (id)configurationWithTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CCACA8];
  v8 = [objc_opt_class() disambiguatedDatabaseTable];
  v9 = [v7 stringWithFormat:@"SELECT %@, %@, %@, %@, %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ?", @"uuid", @"workout_configuration", @"source_id", @"source_version", @"device_id", @"session", @"goal_type", @"goal", @"should_collect_events", v8, *MEMORY[0x277D10A40]];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__156;
  v20 = __Block_byref_object_dispose__156;
  v21 = 0;
  v10 = [v6 databaseForEntity:self];
  v14[4] = &v16;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__HDWorkoutBuilderEntity_configurationWithTransaction_error___block_invoke;
  v15[3] = &unk_278615580;
  v15[4] = self;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__HDWorkoutBuilderEntity_configurationWithTransaction_error___block_invoke_2;
  v14[3] = &unk_278615530;
  LODWORD(a4) = [v10 executeSQL:v9 error:a4 bindingHandler:v15 enumerationHandler:v14];

  if (a4)
  {
    v11 = v17[5];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  _Block_object_dispose(&v16, 8);

  return v12;
}

uint64_t __61__HDWorkoutBuilderEntity_configurationWithTransaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __61__HDWorkoutBuilderEntity_configurationWithTransaction_error___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(HDWorkoutBuilderPersistedConfiguration);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = HDSQLiteColumnWithNameAsUUID();
  [*(*(*(a1 + 32) + 8) + 40) setBuilderIdentifier:v5];

  objc_opt_class();
  v6 = HDSQLiteColumnWithNameAsObject();
  [*(*(*(a1 + 32) + 8) + 40) setWorkoutConfiguration:v6];

  v7 = [(HDSQLiteEntity *)[HDSourceEntity alloc] initWithPersistentID:HDSQLiteColumnWithNameAsInt64()];
  [*(*(*(a1 + 32) + 8) + 40) setSourceEntity:v7];

  v8 = HDSQLiteColumnWithNameAsString();
  [*(*(*(a1 + 32) + 8) + 40) setSourceVersion:v8];

  if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
  {
    v9 = [(HDSQLiteEntity *)[HDDeviceEntity alloc] initWithPersistentID:HDSQLiteColumnWithNameAsInt64()];
    [*(*(*(a1 + 32) + 8) + 40) setDeviceEntity:v9];
  }

  [*(*(*(a1 + 32) + 8) + 40) setGoalType:HDSQLiteColumnWithNameAsInt64()];
  objc_opt_class();
  v10 = HDSQLiteColumnWithNameAsObject();
  [*(*(*(a1 + 32) + 8) + 40) setGoal:v10];

  [*(*(*(a1 + 32) + 8) + 40) setShouldCollectWorkoutEvents:HDSQLiteColumnWithNameAsBoolean()];
  return 1;
}

- (id)sessionIdentifierWithTransaction:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__156;
  v18 = __Block_byref_object_dispose__156;
  v19 = 0;
  v20[0] = @"session";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v8 = [v6 databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__HDWorkoutBuilderEntity_sessionIdentifierWithTransaction_error___block_invoke;
  v13[3] = &unk_278620008;
  v13[4] = &v14;
  LODWORD(a4) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:a4 handler:v13];

  if (a4)
  {
    v9 = v15[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __65__HDWorkoutBuilderEntity_sessionIdentifierWithTransaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsUUID();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (BOOL)setSessionIdentifier:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v17[0] = @"session";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v11 = [v9 databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__HDWorkoutBuilderEntity_setSessionIdentifier_transaction_error___block_invoke;
  v15[3] = &unk_2786246A0;
  v12 = v8;
  v16 = v12;
  LOBYTE(a5) = [(HDSQLiteEntity *)self updateProperties:v10 database:v11 error:a5 bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return a5;
}

- (id)startDateInTransaction:(id)a3 error:(id *)a4
{
  v4 = [(HDHealthEntity *)self dateForProperty:@"start_date" transaction:a3 error:a4];

  return v4;
}

- (id)endDateInTransaction:(id)a3 error:(id *)a4
{
  v4 = [(HDHealthEntity *)self dateForProperty:@"end_date" transaction:a3 error:a4];

  return v4;
}

- (id)dataIntervalInTransaction:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__156;
  v17 = __Block_byref_object_dispose__156;
  v18 = 0;
  v19[0] = @"data_interval";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v7 = [v5 databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__HDWorkoutBuilderEntity_dataIntervalInTransaction_error___block_invoke;
  v12[3] = &unk_278620008;
  v12[4] = &v13;
  LODWORD(self) = [(HDSQLiteEntity *)self getValuesForProperties:v6 database:v7 handler:v12];

  if (self)
  {
    v8 = v14[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __58__HDWorkoutBuilderEntity_dataIntervalInTransaction_error___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = HDSQLiteColumnWithNameAsObject();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (BOOL)setDataInterval:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v17[0] = @"data_interval";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v11 = [v9 databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__HDWorkoutBuilderEntity_setDataInterval_transaction_error___block_invoke;
  v15[3] = &unk_2786246A0;
  v12 = v8;
  v16 = v12;
  LOBYTE(a5) = [(HDSQLiteEntity *)self updateProperties:v10 database:v11 error:a5 bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return a5;
}

- (id)quantityTypesIncludedWhilePausedInTransaction:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__156;
  v17 = __Block_byref_object_dispose__156;
  v18 = 0;
  v19[0] = @"types_while_paused";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v7 = [v5 databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__HDWorkoutBuilderEntity_quantityTypesIncludedWhilePausedInTransaction_error___block_invoke;
  v12[3] = &unk_278620008;
  v12[4] = &v13;
  LODWORD(self) = [(HDSQLiteEntity *)self getValuesForProperties:v6 database:v7 handler:v12];

  if (self)
  {
    v8 = v14[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __78__HDWorkoutBuilderEntity_quantityTypesIncludedWhilePausedInTransaction_error___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v4 = [v2 setWithArray:v3];
  v5 = HDSQLiteColumnWithNameAsObjectWithClasses();
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(a1 + 32) + 8);
  if (!*(v8 + 40))
  {
    *(v8 + 40) = MEMORY[0x277CBEBF8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)setQuantityTypesIncludedWhilePaused:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v17[0] = @"types_while_paused";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v11 = [v9 databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__HDWorkoutBuilderEntity_setQuantityTypesIncludedWhilePaused_transaction_error___block_invoke;
  v15[3] = &unk_2786246A0;
  v12 = v8;
  v16 = v12;
  LOBYTE(a5) = [(HDSQLiteEntity *)self updateProperties:v10 database:v11 error:a5 bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return a5;
}

uint64_t __80__HDWorkoutBuilderEntity_setQuantityTypesIncludedWhilePaused_transaction_error___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) count])
  {

    JUMPOUT(0x22AAC6BA0);
  }

  v2 = *(a1 + 32);

  return HDSQLiteBindSecureCodingObjectToProperty();
}

- (BOOL)setMetadata:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v17[0] = @"metadata";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v11 = [v9 databaseForEntity:self];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__HDWorkoutBuilderEntity_setMetadata_transaction_error___block_invoke;
  v15[3] = &unk_2786246A0;
  v12 = v8;
  v16 = v12;
  LOBYTE(a5) = [(HDSQLiteEntity *)self updateProperties:v10 database:v11 error:a5 bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return a5;
}

void __56__HDWorkoutBuilderEntity_setMetadata_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (![*(a1 + 32) count])
  {

    JUMPOUT(0x22AAC6BA0);
  }

  v5 = [*(a1 + 32) hk_codableMetadata];
  v4 = [v5 data];
  MEMORY[0x22AAC6B40](a2, @"metadata", v4);
}

- (id)metadataWithTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CCACA8];
  v8 = [objc_opt_class() disambiguatedDatabaseTable];
  v9 = [v7 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ?", @"metadata", v8, *MEMORY[0x277D10A40]];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__156;
  v20 = __Block_byref_object_dispose__156;
  v21 = 0;
  v10 = [v6 databaseForEntity:self];
  v14[4] = &v16;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__HDWorkoutBuilderEntity_metadataWithTransaction_error___block_invoke;
  v15[3] = &unk_278615580;
  v15[4] = self;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__HDWorkoutBuilderEntity_metadataWithTransaction_error___block_invoke_2;
  v14[3] = &unk_278615530;
  if ([v10 executeSQL:v9 error:a4 bindingHandler:v15 enumerationHandler:v14])
  {
    v11 = v17[5];
    if (!v11)
    {
      v11 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  _Block_object_dispose(&v16, 8);

  return v12;
}

uint64_t __56__HDWorkoutBuilderEntity_metadataWithTransaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __56__HDWorkoutBuilderEntity_metadataWithTransaction_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C30](a2, 0);
  if (v3)
  {
    v4 = [HDCodableMetadataDictionary decodeMetadataFromData:v3];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  return 1;
}

- (BOOL)setDeviceEntity:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v17[0] = @"device_id";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v11 = [v9 databaseForEntity:self];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__HDWorkoutBuilderEntity_setDeviceEntity_transaction_error___block_invoke;
  v15[3] = &unk_2786246A0;
  v12 = v8;
  v16 = v12;
  LOBYTE(a5) = [(HDSQLiteEntity *)self updateProperties:v10 database:v11 error:a5 bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return a5;
}

void __60__HDWorkoutBuilderEntity_setDeviceEntity_transaction_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) persistentID];

  JUMPOUT(0x22AAC6B90);
}

- (BOOL)setWorkoutConfiguration:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v17[0] = @"workout_configuration";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v11 = [v9 databaseForEntity:self];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__HDWorkoutBuilderEntity_setWorkoutConfiguration_transaction_error___block_invoke;
  v15[3] = &unk_2786246A0;
  v12 = v8;
  v16 = v12;
  LOBYTE(a5) = [(HDSQLiteEntity *)self updateProperties:v10 database:v11 error:a5 bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return a5;
}

- (BOOL)enumerateAssociatedSampleValuesWithCustomQueryOfType:(id)a3 interval:(id)a4 profile:(id)a5 error:(id *)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (v12)
  {
    v16 = [MEMORY[0x277CBEB98] setWithObject:v12];
  }

  else
  {
    v16 = 0;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __110__HDWorkoutBuilderEntity_enumerateAssociatedSampleValuesWithCustomQueryOfType_interval_profile_error_handler___block_invoke;
  v22[3] = &unk_278628290;
  v22[4] = self;
  v17 = v12;
  v23 = v17;
  v18 = v13;
  v24 = v18;
  v19 = v15;
  v25 = v19;
  v20 = [(HDWorkoutBuilderEntity *)self _setupForEnumerationOfTypes:v16 interval:v18 profile:v14 error:a6 handler:v22];

  return v20;
}

BOOL __110__HDWorkoutBuilderEntity_enumerateAssociatedSampleValuesWithCustomQueryOfType_interval_profile_error_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a2;
  v16 = a4;
  v9 = [*(a1 + 32) dataIntervalInTransaction:v8 error:a5];
  v10 = *(a1 + 40);
  v11 = [*(a1 + 48) startDate];
  v12 = [*(a1 + 48) endDate];
  v13 = [v9 startDate];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __110__HDWorkoutBuilderEntity_enumerateAssociatedSampleValuesWithCustomQueryOfType_interval_profile_error_handler___block_invoke_2;
  v17[3] = &unk_278628268;
  v18 = *(a1 + 56);
  v14 = [HDQuantitySampleValueEnumerator quantityValuesWithSourceForType:v10 from:v11 to:v12 dataInterval:v13 table:v16 transaction:v8 error:a5 handler:v17];

  return v14;
}

- (BOOL)_setupForEnumerationOfTypes:(void *)a3 interval:(void *)a4 profile:(uint64_t)a5 error:(void *)a6 handler:
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (a1)
  {
    v15 = [v13 database];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __85__HDWorkoutBuilderEntity__setupForEnumerationOfTypes_interval_profile_error_handler___block_invoke;
    v18[3] = &unk_278628420;
    v18[4] = a1;
    v19 = v11;
    v20 = v12;
    v21 = v14;
    v16 = [(HDHealthEntity *)HDSampleEntity performReadTransactionWithHealthDatabase:v15 error:a5 block:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)enumerateAssociatedSampleValuesOfType:(id)a3 interval:(id)a4 profile:(id)a5 error:(id *)a6 sampleHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (v12)
  {
    v16 = [MEMORY[0x277CBEB98] setWithObject:v12];
  }

  else
  {
    v16 = 0;
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __101__HDWorkoutBuilderEntity_enumerateAssociatedSampleValuesOfType_interval_profile_error_sampleHandler___block_invoke;
  v20[3] = &unk_2786282E0;
  v17 = v15;
  v21 = v17;
  v18 = [(HDWorkoutBuilderEntity *)self _setupForEnumerationOfTypes:v16 interval:v13 profile:v14 error:a6 handler:v20];

  return v18;
}

BOOL __101__HDWorkoutBuilderEntity_enumerateAssociatedSampleValuesOfType_interval_profile_error_sampleHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __101__HDWorkoutBuilderEntity_enumerateAssociatedSampleValuesOfType_interval_profile_error_sampleHandler___block_invoke_2;
  v10[3] = &unk_2786282B8;
  v11 = *(a1 + 32);
  v8 = [HDQuantitySampleValueEnumerator orderedQuantityValuesForPredicate:a3 transaction:a2 options:5 error:a5 handler:v10];

  return v8;
}

- (BOOL)enumerateAssociatedSampleValuesOfType:(id)a3 interval:(id)a4 profile:(id)a5 error:(id *)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (v12)
  {
    v16 = [MEMORY[0x277CBEB98] setWithObject:v12];
  }

  else
  {
    v16 = 0;
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __95__HDWorkoutBuilderEntity_enumerateAssociatedSampleValuesOfType_interval_profile_error_handler___block_invoke;
  v20[3] = &unk_2786282E0;
  v17 = v15;
  v21 = v17;
  v18 = [(HDWorkoutBuilderEntity *)self _setupForEnumerationOfTypes:v16 interval:v13 profile:v14 error:a6 handler:v20];

  return v18;
}

BOOL __95__HDWorkoutBuilderEntity_enumerateAssociatedSampleValuesOfType_interval_profile_error_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __95__HDWorkoutBuilderEntity_enumerateAssociatedSampleValuesOfType_interval_profile_error_handler___block_invoke_2;
  v10[3] = &unk_278628308;
  v11 = *(a1 + 32);
  v8 = [HDQuantitySampleValueEnumerator simplerOrderedQuantityValuesForPredicate:a3 transaction:a2 options:5 error:a5 handler:v10];

  return v8;
}

- (BOOL)enumerateAssociatedSamplesOfTypes:(id)a3 interval:(id)a4 profile:(id)a5 error:(id *)a6 sampleHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__HDWorkoutBuilderEntity_enumerateAssociatedSamplesOfTypes_interval_profile_error_sampleHandler___block_invoke;
  v19[3] = &unk_278628358;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  LOBYTE(a6) = [(HDWorkoutBuilderEntity *)self _setupForEnumerationOfTypes:v17 interval:a4 profile:v16 error:a6 handler:v19];

  return a6;
}

uint64_t __97__HDWorkoutBuilderEntity_enumerateAssociatedSamplesOfTypes_interval_profile_error_sampleHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [HDSampleEntity entityEnumeratorWithTypes:*(a1 + 32) profile:*(a1 + 40) error:a5];
  v9 = v8;
  if (v8)
  {
    [v8 setPredicate:v7];
    v10 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"start_date" entityClass:objc_opt_class() ascending:1];
    v17[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [v9 setOrderingTerms:v11];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __97__HDWorkoutBuilderEntity_enumerateAssociatedSamplesOfTypes_interval_profile_error_sampleHandler___block_invoke_2;
    v15[3] = &unk_278628330;
    v16 = *(a1 + 48);
    v12 = [v9 enumerateWithError:a5 handler:v15];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __91__HDWorkoutBuilderEntity__createTemporaryProtectedAssociatedSampleListInTransaction_error___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = [MEMORY[0x277CCDD30] sharedBehavior];
  v11 = [v10 features];
  v12 = [v11 workoutTempTableChanges];

  if (v12)
  {
    v26 = a4;
    v13 = v9;
    v14 = [MEMORY[0x277CCAB68] stringWithFormat:@"INSERT INTO %@ (%@, %@) VALUES ", *(a1 + 32), @"uuid", @"sample_type"];
    for (i = 0; [v7 count] - 1 > i; ++i)
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = [v8 objectAtIndexedSubscript:i];
      v18 = [v16 stringWithFormat:@"(?, %@), ", v17];
      [v14 appendString:v18];
    }

    v22 = [v7 count];
    v9 = v13;
    if (v22 >= 1)
    {
      v23 = [v8 objectAtIndexedSubscript:(v22 - 1)];
      [v14 appendFormat:@"(?, %@)", v23];
    }

    v24 = *(a1 + 40);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __91__HDWorkoutBuilderEntity__createTemporaryProtectedAssociatedSampleListInTransaction_error___block_invoke_2;
    v29[3] = &unk_278615580;
    v30 = v7;
    v21 = [v24 executeUncachedSQL:v14 error:v26 bindingHandler:v29 enumerationHandler:0];
    v20 = v30;
  }

  else
  {
    v14 = [MEMORY[0x277CCAB68] stringWithFormat:@"INSERT INTO %@ (%@) VALUES ", *(a1 + 32), @"uuid"];
    for (j = 0; [v7 count] - 1 > j; ++j)
    {
      [v14 appendString:{@"(?), "}];
    }

    [v14 appendFormat:@"(?)"];
    v20 = [objc_alloc(MEMORY[0x277D10B98]) initWithSQL:v14 database:*(a1 + 40)];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __91__HDWorkoutBuilderEntity__createTemporaryProtectedAssociatedSampleListInTransaction_error___block_invoke_3;
    v27[3] = &unk_278615580;
    v28 = v7;
    v21 = [v20 performStatementWithError:a4 bindingHandler:v27];
  }

  objc_autoreleasePoolPop(v9);
  return v21;
}

uint64_t __91__HDWorkoutBuilderEntity__createTemporaryProtectedAssociatedSampleListInTransaction_error___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = *(a1 + 48);
  v8 = *(a1 + 32);
  v4 = v8;
  v5 = v3;
  v6 = HKWithAutoreleasePool();

  return v6;
}

uint64_t __91__HDWorkoutBuilderEntity__createTemporaryProtectedAssociatedSampleListInTransaction_error___block_invoke_5(void *a1)
{
  [*(*(a1[6] + 8) + 40) addObject:a1[4]];
  v2 = *(*(a1[7] + 8) + 40);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1[8]];
  [v2 addObject:v3];

  v4 = [*(*(a1[6] + 8) + 40) count];
  if (v4 != *MEMORY[0x277D10A88])
  {
    return 1;
  }

  v5 = *(*(a1[6] + 8) + 40);
  v6 = *(*(a1[7] + 8) + 40);
  v7 = (*(a1[5] + 16))();
  [*(*(a1[6] + 8) + 40) removeAllObjects];
  [*(*(a1[7] + 8) + 40) removeAllObjects];
  return v7;
}

- (uint64_t)_dropTemporaryTableWithTransaction:(void *)a3 name:(void *)a4 error:
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = [v7 databaseForEntityClass:objc_opt_class()];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"DROP TABLE %@", v8];
    v19 = 0;
    v11 = [v9 executeUncachedSQL:v10 error:&v19 bindingHandler:0 enumerationHandler:0];
    v12 = v19;

    if ((v11 & 1) == 0)
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v21 = v8;
        v22 = 2114;
        v23 = v12;
        _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "Failed to drop temporary table with name %{public}@ after sample enumeration: %{public}@", buf, 0x16u);
      }
    }

    v14 = v12;
    v15 = v14;
    if (v14)
    {
      if (a4)
      {
        v16 = v14;
        *a4 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_setupForEnumerationOfTypes:(void *)a3 interval:(void *)a4 transaction:(void *)a5 error:(void *)a6 handler:
{
  v115 = *MEMORY[0x277D85DE8];
  v83 = a2;
  v84 = a3;
  v10 = a4;
  v80 = a6;
  v86 = v10;
  if (!a1)
  {
    goto LABEL_34;
  }

  v11 = [v10 protectedDatabase];
  [v11 setPermitWritesInReadTransaction:1];

  if (*(a1 + 16) == 1)
  {
    v12 = *(a1 + 24);
    if (v12)
    {
      goto LABEL_23;
    }
  }

  v13 = v10;
  v81 = [v13 databaseForEntityClass:objc_opt_class()];
  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "Creating tempory table for association sample list", &buf, 2u);
  }

  v15 = [MEMORY[0x277CCAD78] UUID];
  v16 = [v15 UUIDString];
  v78 = [v16 stringByReplacingOccurrencesOfString:@"-" withString:&stru_283BF39C8];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", objc_opt_class(), v78];
  v18 = [MEMORY[0x277CCDD30] sharedBehavior];
  v19 = [v18 features];
  LODWORD(v16) = [v19 workoutTempTableChanges];

  if (v16)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"CREATE TEMPORARY TABLE %@ (%@ BLOB NOT NULL, %@ INTERGER NOT NULL)", v17, @"uuid", @"sample_type"];
    v21 = [v81 executeUncachedSQL:v20 error:a5 bindingHandler:0 enumerationHandler:0];

    if ((v21 & 1) == 0)
    {
LABEL_8:
      v12 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"CREATE TEMPORARY TABLE %@ (%@ BLOB NOT NULL)", v17, @"uuid"];
    v23 = [v81 executeUncachedSQL:v22 error:a5 bindingHandler:0 enumerationHandler:0];

    if ((v23 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__HDWorkoutBuilderEntity__createTemporaryProtectedAssociatedSampleListInTransaction_error___block_invoke;
  aBlock[3] = &unk_278628380;
  v24 = v17;
  v107 = v24;
  v25 = v81;
  v108 = v25;
  v76 = _Block_copy(aBlock);
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = __Block_byref_object_copy__156;
  v104 = __Block_byref_object_dispose__156;
  v105 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v94 = 0;
  v95 = &v94;
  v96 = 0x3032000000;
  v97 = __Block_byref_object_copy__156;
  v98 = __Block_byref_object_dispose__156;
  v99 = objc_alloc_init(MEMORY[0x277CBEB18]);
  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 3221225472;
  v110 = __91__HDWorkoutBuilderEntity__createTemporaryProtectedAssociatedSampleListInTransaction_error___block_invoke_4;
  v111 = &unk_2786283D0;
  v113 = &v100;
  v114 = &v94;
  v26 = v76;
  v112 = v26;
  if ([HDWorkoutBuilderAssociatedObjectEntity enumerateAssociatedUUIDsForBuilder:a1 transaction:v13 error:a5 block:&buf])
  {
    if (![v101[5] count] || (v27 = (*(v26 + 2))(v26, v101[5], v95[5], a5), v28 = v101[5], v101[5] = 0, v28, v27))
    {
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"CREATE INDEX %@_idx ON %@ (%@)", v24, v24, @"uuid"];
      v30 = [v25 executeUncachedSQL:v29 error:a5 bindingHandler:0 enumerationHandler:0];

      v31 = [MEMORY[0x277CCDD30] sharedBehavior];
      v32 = [v31 features];
      v33 = [v32 workoutTempTableChanges];

      if (!v33)
      {
LABEL_16:
        if (v30)
        {
          v35 = v24;
        }

        else
        {
          v35 = 0;
        }

        v12 = v35;
        goto LABEL_21;
      }

      if (v30)
      {
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"CREATE INDEX %@_dt_idx ON %@ (%@)", v24, v24, @"sample_type"];
        v30 = [v25 executeUncachedSQL:v34 error:a5 bindingHandler:0 enumerationHandler:0];

        goto LABEL_16;
      }
    }
  }

  v12 = 0;
LABEL_21:

  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(&v100, 8);

LABEL_22:
  if (!v12)
  {
    v57 = [v13 protectedDatabase];
    [v57 setPermitWritesInReadTransaction:0];

LABEL_34:
    v58 = 0;
    goto LABEL_51;
  }

LABEL_23:
  if (*(a1 + 16) == 1 && !*(a1 + 24))
  {
    objc_storeStrong((a1 + 24), v12);
  }

  v36 = v83;
  v37 = v84;
  v82 = v12;
  v38 = v86;
  v77 = v36;
  if (v36)
  {
    v39 = HDSampleEntityPredicateForDataTypes(v36);
  }

  else
  {
    v39 = 0;
  }

  v79 = v39;
  v40 = objc_alloc_init(HDWorkoutBuilderAssociatedSamplePredicate);
  v41 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v39 otherPredicate:v40];
  v42 = v41;
  if (v37)
  {
    aBlock[0] = 0;
    v43 = [a1 dataIntervalInTransaction:v38 error:aBlock];
    v44 = aBlock[0];
    v74 = v44;
    v75 = v43;
    if (v43)
    {
      v45 = [v37 endDate];
      v73 = HDSampleEntityPredicateForStartDate(4);

      v46 = [v37 startDate];
      v72 = HDSampleEntityPredicateForEndDate(6);

      v47 = [v75 startDate];
      v48 = HDSampleEntityPredicateForStartDate(6);

      v49 = MEMORY[0x277D10B20];
      *&buf = v48;
      *(&buf + 1) = v73;
      v110 = v72;
      v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&buf count:3];
      v51 = [v49 predicateMatchingAllPredicates:v50];

      v52 = MEMORY[0x277D10B20];
      v53 = HDSQLitePredicateForUnfrozenQuantitySeriesSamples();
      v54 = [v52 disjunctionWithPredicate:v51 otherPredicate:v53];

      v55 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v42 otherPredicate:v54];

      v42 = v55;
      v56 = v42;
    }

    else if (v44)
    {
      v59 = v44;
      v60 = v59;
      if (a5)
      {
        v61 = v59;
        *a5 = v60;
      }

      else
      {
        _HKLogDroppedError();
      }

      v56 = 0;
    }

    else
    {
      v42 = v42;
      v56 = v42;
    }
  }

  else
  {
    v42 = v41;
    v56 = v42;
  }

  if (v56)
  {
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __89__HDWorkoutBuilderEntity__setupForEnumerationOfTypes_interval_transaction_error_handler___block_invoke;
    v88[3] = &unk_2786283F8;
    v92 = v80;
    v62 = v38;
    v89 = v62;
    v90 = v56;
    v63 = v82;
    v91 = v63;
    v64 = [HDWorkoutBuilderAssociatedSampleTemporaryTableEntity withLocalTableName:v63 error:a5 block:v88];
    if (!*(a1 + 24))
    {
      v87 = 0;
      v65 = [(HDWorkoutBuilderEntity *)a1 _dropTemporaryTableWithTransaction:v62 name:v63 error:&v87];
      v66 = v87;
      if ((v65 & 1) == 0)
      {
        _HKInitializeLogging();
        v67 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v66;
          _os_log_error_impl(&dword_228986000, v67, OS_LOG_TYPE_ERROR, "Failed to drop temporary table after sample enumeration: %{public}@", &buf, 0xCu);
        }
      }
    }

    v68 = [v62 protectedDatabase];
    [v68 setPermitWritesInReadTransaction:0];

    v93 = v64;
  }

  else
  {
    v69 = [v38 protectedDatabase];
    [v69 setPermitWritesInReadTransaction:0];

    v93 = 0;
  }

  v58 = v93;
LABEL_51:

  v70 = *MEMORY[0x277D85DE8];
  return v58;
}

- (BOOL)pruneAssociatedSamplesToDateInterval:(id)a3 transaction:(id)a4 error:(id *)a5 zonesHandler:(id)a6 sampleHandler:(id)a7
{
  v82 = *MEMORY[0x277D85DE8];
  v56 = a3;
  v12 = a4;
  v54 = a6;
  v55 = a7;
  v53 = v12;
  v13 = [v12 protectedDatabase];

  if (!v13)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:@"A protected data transaction is required."];
    v45 = 0;
    goto LABEL_53;
  }

  v14 = [v56 startDate];
  [v14 timeIntervalSinceReferenceDate];
  v16 = v15;

  v17 = [v56 endDate];
  [v17 timeIntervalSinceReferenceDate];
  v19 = v18;

  v52 = [(HDWorkoutBuilderEntity *)self workoutEventsInTransaction:v12 error:a5];
  if (!v52)
  {
    v45 = 0;
    goto LABEL_52;
  }

  v20 = [(HDWorkoutBuilderEntity *)self quantityTypesIncludedWhilePausedInTransaction:v12 error:a5];
  if (!v20)
  {
    v45 = 0;
    goto LABEL_51;
  }

  v50 = a5;
  v51 = self;
  memset(v76, 0, sizeof(v76));
  v77 = 1065353216;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v49 = v20;
  obj = v20;
  v21 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (!v21)
  {
    goto LABEL_28;
  }

  v22 = *v73;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v73 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v24 = [*(*(&v72 + 1) + 8 * i) code];
      if (!*(&v76[0] + 1))
      {
        goto LABEL_25;
      }

      v25 = vcnt_s8(*(v76 + 8));
      v25.i16[0] = vaddlv_u8(v25);
      if (v25.u32[0] > 1uLL)
      {
        v26 = v24;
        if (*(&v76[0] + 1) <= v24)
        {
          v26 = v24 % *(&v76[0] + 1);
        }
      }

      else
      {
        v26 = (*(&v76[0] + 1) - 1) & v24;
      }

      v27 = *(*&v76[0] + 8 * v26);
      if (!v27 || (v28 = *v27) == 0)
      {
LABEL_25:
        operator new();
      }

      while (1)
      {
        v29 = v28[1];
        if (v29 == v24)
        {
          break;
        }

        if (v25.u32[0] > 1uLL)
        {
          if (v29 >= *(&v76[0] + 1))
          {
            v29 %= *(&v76[0] + 1);
          }
        }

        else
        {
          v29 &= *(&v76[0] + 1) - 1;
        }

        if (v29 != v26)
        {
          goto LABEL_25;
        }

LABEL_24:
        v28 = *v28;
        if (!v28)
        {
          goto LABEL_25;
        }
      }

      if (v28[2] != v24)
      {
        goto LABEL_24;
      }
    }

    v21 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
  }

  while (v21);
LABEL_28:

  _HKPausedIntervalsWithWorkoutEvents();
  v70 = 0uLL;
  v71 = 0;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v30 = v69 = 0u;
  v31 = [v30 countByEnumeratingWithState:&v66 objects:v80 count:16];
  if (v31)
  {
    v32 = *v67;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v67 != v32)
        {
          objc_enumerationMutation(v30);
        }

        v34 = *(*(&v66 + 1) + 8 * j);
        v35 = [v34 startDate];
        [v35 timeIntervalSinceReferenceDate];
        v37 = v36;
        v38 = [v34 endDate];
        [v38 timeIntervalSinceReferenceDate];
        if (v39 >= v37)
        {
          v40 = v37;
        }

        else
        {
          v40 = v39;
        }

        if (v37 >= v39)
        {
          v41 = v37;
        }

        else
        {
          v41 = v39;
        }

        HKIntervalMask<double>::_insertInterval(&v70, v40, v41);
      }

      v31 = [v30 countByEnumeratingWithState:&v66 objects:v80 count:16];
    }

    while (v31);
  }

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3321888768;
  v58[2] = __108__HDWorkoutBuilderEntity_pruneAssociatedSamplesToDateInterval_transaction_error_zonesHandler_sampleHandler___block_invoke;
  v58[3] = &unk_283BEBAF0;
  v60 = v54;
  v58[4] = v51;
  v59 = v53;
  v62 = v19;
  v63 = v16;
  std::unordered_set<_HKDataTypeCode>::unordered_set(v64, v76);
  memset(__p, 0, sizeof(__p));
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(__p, v70.n128_i64[0], v70.n128_i64[1], (v70.n128_u64[1] - v70.n128_u64[0]) >> 4);
  v61 = v55;
  v42 = v59;
  v43 = v58;
  v44 = v43;
  if (v51)
  {
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __90__HDWorkoutBuilderEntity__enumerateAssociatedSamplePropertiesInTransaction_error_handler___block_invoke;
    v78[3] = &unk_2786282E0;
    v79 = v43;
    v45 = [(HDWorkoutBuilderEntity *)v51 _setupForEnumerationOfTypes:0 interval:v42 transaction:v50 error:v78 handler:?];
  }

  else
  {
    v45 = 0;
  }

  v46 = __p[0];
  if (__p[0])
  {
    v44[16] = __p[0];
    operator delete(v46);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v64);

  if (v70.n128_u64[0])
  {
    v70.n128_u64[1] = v70.n128_u64[0];
    operator delete(v70.n128_u64[0]);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v76);
  v20 = v49;
LABEL_51:

LABEL_52:
LABEL_53:

  v47 = *MEMORY[0x277D85DE8];
  return v45;
}

uint64_t __108__HDWorkoutBuilderEntity_pruneAssociatedSamplesToDateInterval_transaction_error_zonesHandler_sampleHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, char a6)
{
  v10 = a4;
  v16 = *(a1 + 48);
  v11 = v10;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v25 = a6;
  std::unordered_set<_HKDataTypeCode>::unordered_set(v20, a1 + 80);
  __p = 0;
  v22 = 0;
  v23 = 0;
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(&__p, *(a1 + 120), *(a1 + 128), (*(a1 + 128) - *(a1 + 120)) >> 4);
  v26 = a5;
  v17 = *(a1 + 56);
  v24 = a2;
  v12 = HKWithAutoreleasePool();

  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v20);

  return v12;
}

BOOL __108__HDWorkoutBuilderEntity_pruneAssociatedSamplesToDateInterval_transaction_error_zonesHandler_sampleHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (v4 - 289 > 1)
  {
    v6 = *(a1 + 80);
    v7 = v6 > *(a1 + 88) || *(a1 + 96) < *(a1 + 104) && *(a1 + 184) == 0;
    v8 = *(a1 + 120);
    if (v8)
    {
      v9 = vcnt_s8(v8);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        v10 = *(a1 + 72);
        if (*&v8 <= v4)
        {
          v10 = v4 % *&v8;
        }
      }

      else
      {
        v10 = (*&v8 - 1) & v4;
      }

      v11 = *(*(a1 + 112) + 8 * v10);
      if (v11)
      {
        for (i = *v11; i; i = *i)
        {
          v13 = i[1];
          if (v13 == v4)
          {
            if (i[2] == v4)
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v9.u32[0] > 1uLL)
            {
              if (v13 >= *&v8)
              {
                v13 %= *&v8;
              }
            }

            else
            {
              v13 &= *&v8 - 1;
            }

            if (v13 != v10)
            {
              break;
            }
          }
        }
      }
    }

    v14 = *(a1 + 152);
    v15 = *(a1 + 160);
    if (v14 != v15)
    {
      v16 = *(a1 + 96);
      while (*v14 <= v16)
      {
        if (*v14 <= v6 && v14[1] >= v16)
        {
          goto LABEL_36;
        }

        v14 += 2;
        if (v14 == v15)
        {
          break;
        }
      }
    }

LABEL_34:
    if (!v7 && (*(a1 + 185) & 1) == 0)
    {
      v22 = *(a1 + 64);
      v23 = *(a1 + 176);
      (*(*(a1 + 64) + 16))();
      return 1;
    }
  }

  else
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      (*(v5 + 16))(v5, *(a1 + 32));
    }
  }

LABEL_36:
  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  v20 = *(a1 + 48);

  return [HDWorkoutBuilderAssociatedObjectEntity removeAssociationFromBuilder:v18 toUUID:v19 transaction:v20 error:a2];
}

uint64_t __90__HDWorkoutBuilderEntity__enumerateAssociatedSamplePropertiesInTransaction_error_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a2;
  v9 = a4;
  v10 = MEMORY[0x277CCACA8];
  v11 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v12 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v13 = +[(HDSQLiteSchemaEntity *)HDQuantitySampleSeriesEntity];
  v14 = [v10 stringWithFormat:@"SELECT %@, %@, %@, %@, %@, %@, %@ FROM %@ INNER JOIN %@ USING (%@) INNER JOIN %@ USING (%@) LEFT JOIN %@ USING (%@)", @"data_id", @"uuid", @"type", @"data_type", @"start_date", @"end_date", @"insertion_era", v11, v12, @"data_id", v9, @"uuid", v13, @"data_id"];

  v15 = [v8 protectedDatabase];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__HDWorkoutBuilderEntity__enumerateAssociatedSamplePropertiesInTransaction_error_handler___block_invoke_2;
  v18[3] = &unk_2786159F8;
  v19 = *(a1 + 32);
  v16 = [v15 executeUncachedSQL:v14 error:a5 bindingHandler:0 enumerationHandler:v18];

  return v16;
}

uint64_t __90__HDWorkoutBuilderEntity__enumerateAssociatedSamplePropertiesInTransaction_error_handler___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v1 = HKWithAutoreleasePool();

  return v1;
}

uint64_t __90__HDWorkoutBuilderEntity__enumerateAssociatedSamplePropertiesInTransaction_error_handler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = HDSQLiteColumnAsInt64();
  v6 = MEMORY[0x22AAC6CA0](*(a1 + 40), 1);
  v7 = *(a1 + 40);
  v8 = HDSQLiteColumnAsInt64();
  v9 = *(a1 + 40);
  v10 = HDSQLiteColumnAsInt64();
  v11 = MEMORY[0x22AAC6C50](*(a1 + 40), 4);
  v12 = MEMORY[0x22AAC6C50](*(a1 + 40), 5);
  v13 = MEMORY[0x22AAC6CD0](*(a1 + 40), 6);
  v14 = (*(*(a1 + 32) + 16))(*(a1 + 32), v5, v10, v6, v8 != 1, v13 ^ 1u, a2, v11, v12);

  return v14;
}

- (BOOL)insertWorkoutEvent:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDSQLiteEntity persistentID](self, "persistentID")}];
  v11 = [v9 databaseForEntity:self];
  v12 = [(HDWorkoutEventEntity *)HDWorkoutBuilderEventEntity insertPersistableWorkoutEvent:v8 ownerID:v10 database:v11 error:a5];

  return v12 != 0;
}

- (id)workoutEventsInTransaction:(id)a3 error:(id *)a4
{
  v4 = [HDWorkoutBuilderEventEntity workoutEventsWithWorkoutBuilder:self transaction:a3 error:a4];

  return v4;
}

- (BOOL)insertPrimaryWorkoutActivity:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 databaseForEntityClass:objc_opt_class()];
  LOBYTE(a5) = [(HDWorkoutActivityEntity *)HDWorkoutBuilderActivityEntity insertPrimaryActivity:v8 ownerID:[(HDSQLiteEntity *)self persistentID] database:v10 error:a5];

  return a5;
}

- (BOOL)insertWorkoutActivity:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v9 databaseForEntityClass:objc_opt_class()];
  v14[0] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  LOBYTE(a5) = [(HDWorkoutActivityEntity *)HDWorkoutBuilderActivityEntity insertSubActivities:v11 ownerID:[(HDSQLiteEntity *)self persistentID] database:v10 error:a5];

  v12 = *MEMORY[0x277D85DE8];
  return a5;
}

- (BOOL)updateWorkoutActivityEndDate:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 UUID];
  v21 = 0;
  v10 = [(HDWorkoutActivityEntity *)HDWorkoutBuilderActivityEntity activityEntityWithUUID:v9 transaction:v8 error:&v21];
  v11 = v21;

  if (!v10)
  {
    if (v11)
    {
      v11 = v11;
    }

    else
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = [v7 UUID];
      v17 = [v16 UUIDString];
      v18 = [v15 hk_error:118 format:{@"Could not find activity with UUID %@", v17}];

      v11 = v18;
      if (!v11)
      {
        v14 = 1;
LABEL_12:

        goto LABEL_13;
      }
    }

    if (a5)
    {
      v19 = v11;
      v14 = 0;
      *a5 = v11;
    }

    else
    {
      _HKLogDroppedError();
      v14 = 0;
    }

    goto LABEL_12;
  }

  v12 = [v7 endDate];
  v13 = [v10 setEndDate:v12 transaction:v8 error:a5];

  if (v13)
  {
    [v7 duration];
    v14 = [v10 setDuration:v8 transaction:a5 error:?];
  }

  else
  {
    v14 = 0;
  }

LABEL_13:

  return v14;
}

- (BOOL)updateWorkoutActivityMetadata:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 UUID];
  v20 = 0;
  v10 = [(HDWorkoutActivityEntity *)HDWorkoutBuilderActivityEntity activityEntityWithUUID:v9 transaction:v8 error:&v20];
  v11 = v20;

  if (v10)
  {
    v12 = [v7 metadata];
    v13 = [v10 setMetadata:v12 transaction:v8 error:a5];
  }

  else
  {
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = [v7 UUID];
      v16 = [v15 UUIDString];
      v17 = [v14 hk_error:118 format:{@"Could not find activity with UUID %@", v16}];

      v12 = v17;
      if (!v12)
      {
        v11 = 0;
        v13 = 1;
        goto LABEL_10;
      }
    }

    if (a5)
    {
      v18 = v12;
      v13 = 0;
      *a5 = v12;
    }

    else
    {
      _HKLogDroppedError();
      v13 = 0;
    }

    v11 = v12;
  }

LABEL_10:

  return v13;
}

- (id)workoutActivitiesInTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 databaseForEntityClass:objc_opt_class()];
  v8 = [(HDWorkoutActivityEntity *)HDWorkoutBuilderActivityEntity subActivitiesWithOwnerID:[(HDSQLiteEntity *)self persistentID] database:v7 error:a4];

  return v8;
}

- (id)primaryActivityInTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 databaseForEntityClass:objc_opt_class()];
  v8 = [(HDWorkoutActivityEntity *)HDWorkoutBuilderActivityEntity primaryWorkoutActivityForOwnerID:[(HDSQLiteEntity *)self persistentID] database:v7 error:a4];

  return v8;
}

- (BOOL)insertZones:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  LOBYTE(a5) = [(HDWorkoutZonesEntity *)HDWorkoutBuilderZonesEntity insertZones:v8 ownerID:[(HDSQLiteEntity *)self persistentID] transaction:v9 error:a5];

  return a5;
}

- (BOOL)updateTimeInZone:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 identifier];
  v20 = 0;
  v10 = [(HDWorkoutZonesEntity *)HDWorkoutBuilderZonesEntity zoneEntityWithZoneUUID:v9 transaction:v8 error:&v20];
  v11 = v20;

  if (!v10)
  {
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = [v7 identifier];
      v16 = [v15 UUIDString];
      v17 = [v14 hk_error:118 format:{@"Could not find zone with UUID %@", v16}];

      v13 = v17;
      if (!v13)
      {
        v12 = 1;
LABEL_10:

        v11 = v13;
        goto LABEL_11;
      }
    }

    if (a5)
    {
      v18 = v13;
      v12 = 0;
      *a5 = v13;
    }

    else
    {
      _HKLogDroppedError();
      v12 = 0;
    }

    goto LABEL_10;
  }

  [v7 timeInZone];
  v12 = [v10 setTimeInZone:v8 transaction:a5 error:?];
LABEL_11:

  return v12;
}

- (id)zonesInTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__156;
  v16 = __Block_byref_object_dispose__156;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(HDSQLiteEntity *)self persistentID];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__HDWorkoutBuilderEntity_zonesInTransaction_error___block_invoke;
  v11[3] = &unk_278628470;
  v11[4] = &v12;
  if ([(HDWorkoutZonesEntity *)HDWorkoutBuilderZonesEntity enumerateZonesWithOwnerID:v7 transaction:v6 error:a4 handler:v11])
  {
    v8 = v13[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (BOOL)storeStatisticsCalculator:(id)a3 anchor:(id)a4 activityUUID:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21 = 0;
  v15 = [(HDWorkoutActivityEntity *)HDWorkoutBuilderActivityEntity activityEntityWithUUID:v13 transaction:v14 error:&v21];
  v16 = v21;
  v17 = v16;
  if (!v15)
  {
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] hk_error:118 format:{@"Could not find activity with UUID %@", v13}];
      if (!v17)
      {
        v18 = 1;
LABEL_10:

        goto LABEL_11;
      }
    }

    if (a7)
    {
      v19 = v17;
      v18 = 0;
      *a7 = v17;
    }

    else
    {
      _HKLogDroppedError();
      v18 = 0;
    }

    goto LABEL_10;
  }

  v18 = [(HDStatisticsCalculatorEntity *)HDWorkoutBuilderStatisticsCalculatorEntity setCalculator:v11 forOwner:v15 anchor:v12 transaction:v14 error:a7];
LABEL_11:

  return v18;
}

- (BOOL)enumerateStatisticsInTransaction:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HDSQLiteEntity *)self persistentID];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__HDWorkoutBuilderEntity_enumerateStatisticsInTransaction_error_block___block_invoke;
  v14[3] = &unk_2786284C0;
  v11 = v8;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  LOBYTE(a4) = [(HDWorkoutActivityEntity *)HDWorkoutBuilderActivityEntity enumerateActivityEntitiesForOwnerID:v10 transaction:v11 error:a4 enumerationHandler:v14];

  return a4;
}

BOOL __71__HDWorkoutBuilderEntity_enumerateStatisticsInTransaction_error_block___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 UUIDInTransaction:*(a1 + 32) error:a3];
  if (v6)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__HDWorkoutBuilderEntity_enumerateStatisticsInTransaction_error_block___block_invoke_2;
    v10[3] = &unk_278628498;
    v7 = *(a1 + 32);
    v12 = *(a1 + 40);
    v11 = v6;
    v8 = [(HDStatisticsCalculatorEntity *)HDWorkoutBuilderStatisticsCalculatorEntity enumerateStatisticsForOwner:v5 transaction:v7 error:a3 block:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __71__HDWorkoutBuilderEntity_enumerateStatisticsInTransaction_error_block___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v15 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  if (v10)
  {
    v14 = [v10 currentStatistics];
  }

  else
  {
    v14 = v9;
  }

  (*(v13 + 16))(v13, v15, v12, v14, v10, v11);
  if (v10)
  {
  }
}

- (BOOL)setArchivedState:(id)a3 forDataSourceIdentifier:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [a5 database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__HDWorkoutBuilderEntity_setArchivedState_forDataSourceIdentifier_profile_error___block_invoke;
  v16[3] = &unk_27861CA28;
  v13 = v11;
  v17 = v13;
  v14 = v10;
  v18 = v14;
  v19 = self;
  LOBYTE(a6) = [(HDHealthEntity *)HDWorkoutBuilderDataSourceEntity performWriteTransactionWithHealthDatabase:v12 error:a6 block:v16];

  return a6;
}

- (BOOL)removeDataSourceWithIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__HDWorkoutBuilderEntity_removeDataSourceWithIdentifier_profile_error___block_invoke;
  v12[3] = &unk_27861CD40;
  v10 = v8;
  v13 = v10;
  v14 = self;
  LOBYTE(a5) = [(HDHealthEntity *)HDWorkoutBuilderDataSourceEntity performWriteTransactionWithHealthDatabase:v9 error:a5 block:v12];

  return a5;
}

- (BOOL)enumerateDataSourcesForProfile:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a5;
  v9 = [a3 database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HDWorkoutBuilderEntity_enumerateDataSourcesForProfile_error_block___block_invoke;
  v12[3] = &unk_2786284E8;
  v12[4] = self;
  v10 = v8;
  v13 = v10;
  LOBYTE(a4) = [(HDHealthEntity *)HDWorkoutBuilderDataSourceEntity performReadTransactionWithHealthDatabase:v9 error:a4 block:v12];

  return a4;
}

- (BOOL)dropFinalTemporaryTableWithTransaction:(id)a3 error:(id *)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_finishingTemporaryTableName)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
    {
      finishingTemporaryTableName = self->_finishingTemporaryTableName;
      v12 = 138543618;
      v13 = self;
      v14 = 2114;
      v15 = finishingTemporaryTableName;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "%{public}@: dropping final temporary table with name: %{public}@", &v12, 0x16u);
    }

    v9 = [(HDWorkoutBuilderEntity *)self _dropTemporaryTableWithTransaction:v6 name:self->_finishingTemporaryTableName error:a4];
  }

  else
  {
    v9 = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (const)columnDefinitionsWithCount:(unint64_t *)a3
{
  {
    v5 = a3;
    a3 = v5;
    if (v4)
    {
      __cxa_atexit(__cxx_global_array_dtor_2, 0, &dword_228986000);
      a3 = v5;
    }
  }

  *a3 = 15;
  return +[HDWorkoutBuilderEntity columnDefinitionsWithCount:]::columnDefinitions;
}

+ (id)foreignKeys
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"source_id";
  v2 = +[(HDHealthEntity *)HDSourceEntity];
  v7[1] = @"device_id";
  v8[0] = v2;
  v3 = +[(HDHealthEntity *)HDDeviceEntity];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)privateSubEntities
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end