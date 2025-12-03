@interface HDWorkoutBuilderEntity
+ (BOOL)discardBuilderWithIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (HDWorkoutBuilderEntity)workoutBuilderEntityWithIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (const)columnDefinitionsWithCount:(unint64_t *)count;
+ (id)createEntityForBuilderConfiguration:(id)configuration profile:(id)profile error:(id *)error;
+ (id)finishWorkoutBuilderWithIdentifier:(id)identifier dateInterval:(id)interval profile:(id)profile error:(id *)error;
+ (id)foreignKeys;
+ (id)privateSubEntities;
+ (id)workoutBuilderEntitiesExcludingSessions:(id)sessions profile:(id)profile error:(id *)error;
+ (id)workoutBuilderEntitiesForSource:(id)source profile:(id)profile error:(id *)error;
+ (void)_workoutBuilderEntitiesForPredicate:(void *)predicate profile:(uint64_t)profile error:;
- (BOOL)_setupForEnumerationOfTypes:(void *)types interval:(void *)interval profile:(uint64_t)profile error:(void *)error handler:;
- (BOOL)_setupForEnumerationOfTypes:(void *)types interval:(void *)interval transaction:(void *)transaction error:(void *)error handler:;
- (BOOL)dropFinalTemporaryTableWithTransaction:(id)transaction error:(id *)error;
- (BOOL)enumerateAssociatedSampleValuesOfType:(id)type interval:(id)interval profile:(id)profile error:(id *)error handler:(id)handler;
- (BOOL)enumerateAssociatedSampleValuesOfType:(id)type interval:(id)interval profile:(id)profile error:(id *)error sampleHandler:(id)handler;
- (BOOL)enumerateAssociatedSampleValuesWithCustomQueryOfType:(id)type interval:(id)interval profile:(id)profile error:(id *)error handler:(id)handler;
- (BOOL)enumerateAssociatedSamplesOfTypes:(id)types interval:(id)interval profile:(id)profile error:(id *)error sampleHandler:(id)handler;
- (BOOL)enumerateDataSourcesForProfile:(id)profile error:(id *)error block:(id)block;
- (BOOL)enumerateStatisticsInTransaction:(id)transaction error:(id *)error block:(id)block;
- (BOOL)insertPrimaryWorkoutActivity:(id)activity transaction:(id)transaction error:(id *)error;
- (BOOL)insertWorkoutActivity:(id)activity transaction:(id)transaction error:(id *)error;
- (BOOL)insertWorkoutEvent:(id)event transaction:(id)transaction error:(id *)error;
- (BOOL)insertZones:(id)zones transaction:(id)transaction error:(id *)error;
- (BOOL)pruneAssociatedSamplesToDateInterval:(id)interval transaction:(id)transaction error:(id *)error zonesHandler:(id)handler sampleHandler:(id)sampleHandler;
- (BOOL)removeDataSourceWithIdentifier:(id)identifier profile:(id)profile error:(id *)error;
- (BOOL)setArchivedState:(id)state forDataSourceIdentifier:(id)identifier profile:(id)profile error:(id *)error;
- (BOOL)setDataInterval:(id)interval transaction:(id)transaction error:(id *)error;
- (BOOL)setDeviceEntity:(id)entity transaction:(id)transaction error:(id *)error;
- (BOOL)setMetadata:(id)metadata transaction:(id)transaction error:(id *)error;
- (BOOL)setQuantityTypesIncludedWhilePaused:(id)paused transaction:(id)transaction error:(id *)error;
- (BOOL)setSessionIdentifier:(id)identifier transaction:(id)transaction error:(id *)error;
- (BOOL)setWorkoutConfiguration:(id)configuration transaction:(id)transaction error:(id *)error;
- (BOOL)storeStatisticsCalculator:(id)calculator anchor:(id)anchor activityUUID:(id)d transaction:(id)transaction error:(id *)error;
- (BOOL)updateTimeInZone:(id)zone transaction:(id)transaction error:(id *)error;
- (BOOL)updateWorkoutActivityEndDate:(id)date transaction:(id)transaction error:(id *)error;
- (BOOL)updateWorkoutActivityMetadata:(id)metadata transaction:(id)transaction error:(id *)error;
- (id)configurationWithTransaction:(id)transaction error:(id *)error;
- (id)dataIntervalInTransaction:(id)transaction error:(id *)error;
- (id)endDateInTransaction:(id)transaction error:(id *)error;
- (id)metadataWithTransaction:(id)transaction error:(id *)error;
- (id)primaryActivityInTransaction:(id)transaction error:(id *)error;
- (id)quantityTypesIncludedWhilePausedInTransaction:(id)transaction error:(id *)error;
- (id)sessionIdentifierWithTransaction:(id)transaction error:(id *)error;
- (id)startDateInTransaction:(id)transaction error:(id *)error;
- (id)workoutActivitiesInTransaction:(id)transaction error:(id *)error;
- (id)workoutEventsInTransaction:(id)transaction error:(id *)error;
- (id)zonesInTransaction:(id)transaction error:(id *)error;
- (uint64_t)_dropTemporaryTableWithTransaction:(void *)transaction name:(void *)name error:;
@end

@implementation HDWorkoutBuilderEntity

+ (HDWorkoutBuilderEntity)workoutBuilderEntityWithIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v9 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" equalToValue:identifier];
  database = [profileCopy database];
  v11 = [self anyWithPredicate:v9 healthDatabase:database error:error];

  return v11;
}

+ (void)_workoutBuilderEntitiesForPredicate:(void *)predicate profile:(uint64_t)profile error:
{
  v6 = a2;
  predicateCopy = predicate;
  v8 = objc_opt_self();
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  database = [predicateCopy database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__HDWorkoutBuilderEntity__workoutBuilderEntitiesForPredicate_profile_error___block_invoke;
  v16[3] = &unk_2786281C8;
  v19 = v8;
  v11 = v6;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  LODWORD(profile) = [v8 performReadTransactionWithHealthDatabase:database error:profile block:v16];

  if (profile)
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

+ (id)workoutBuilderEntitiesForSource:(id)source profile:(id)profile error:(id *)error
{
  sourceCopy = source;
  profileCopy = profile;
  v10 = MEMORY[0x277D10B18];
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(sourceCopy, "persistentID")}];
  v12 = [v10 predicateWithProperty:@"source_id" equalToValue:v11];

  v13 = [(HDWorkoutBuilderEntity *)self _workoutBuilderEntitiesForPredicate:v12 profile:profileCopy error:error];

  return v13;
}

+ (id)workoutBuilderEntitiesExcludingSessions:(id)sessions profile:(id)profile error:(id *)error
{
  v18[2] = *MEMORY[0x277D85DE8];
  sessionsCopy = sessions;
  profileCopy = profile;
  v10 = [MEMORY[0x277D10B28] doesNotContainPredicateWithProperty:@"session" values:sessionsCopy];
  v11 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"session"];
  v12 = MEMORY[0x277D10B20];
  v18[0] = v11;
  v18[1] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v14 = [v12 predicateMatchingAnyPredicates:v13];

  v15 = [(HDWorkoutBuilderEntity *)self _workoutBuilderEntitiesForPredicate:v14 profile:profileCopy error:error];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)createEntityForBuilderConfiguration:(id)configuration profile:(id)profile error:(id *)error
{
  configurationCopy = configuration;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__156;
  v22 = __Block_byref_object_dispose__156;
  v23 = 0;
  database = [profile database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__HDWorkoutBuilderEntity_createEntityForBuilderConfiguration_profile_error___block_invoke;
  v14[3] = &unk_278623F30;
  v16 = &v18;
  selfCopy = self;
  v10 = configurationCopy;
  v15 = v10;
  LODWORD(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v14];

  if (error)
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

+ (BOOL)discardBuilderWithIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  v9 = [[HDDiscardWorkoutOperation alloc] initWithBuilderIdentifier:identifierCopy];
  LOBYTE(error) = [(HDJournalableOperation *)v9 performOrJournalWithProfile:profileCopy error:error];

  return error;
}

+ (id)finishWorkoutBuilderWithIdentifier:(id)identifier dateInterval:(id)interval profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  intervalCopy = interval;
  profileCopy = profile;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__156;
  v29 = __Block_byref_object_dispose__156;
  v30 = 0;
  database = [profileCopy database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__HDWorkoutBuilderEntity_finishWorkoutBuilderWithIdentifier_dateInterval_profile_error___block_invoke;
  v19[3] = &unk_278628240;
  selfCopy = self;
  v14 = identifierCopy;
  v20 = v14;
  v15 = profileCopy;
  v21 = v15;
  v23 = &v25;
  v16 = intervalCopy;
  v22 = v16;
  LOBYTE(self) = [self performReadTransactionWithHealthDatabase:database error:error block:v19];

  if (self & 1) != 0 && ([v26[5] performOrJournalWithProfile:v15 error:error])
  {
    createdWorkout = [v26[5] createdWorkout];
  }

  else
  {
    createdWorkout = 0;
  }

  _Block_object_dispose(&v25, 8);

  return createdWorkout;
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

- (id)configurationWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v7 = MEMORY[0x277CCACA8];
  disambiguatedDatabaseTable = [objc_opt_class() disambiguatedDatabaseTable];
  v9 = [v7 stringWithFormat:@"SELECT %@, %@, %@, %@, %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ?", @"uuid", @"workout_configuration", @"source_id", @"source_version", @"device_id", @"session", @"goal_type", @"goal", @"should_collect_events", disambiguatedDatabaseTable, *MEMORY[0x277D10A40]];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__156;
  v20 = __Block_byref_object_dispose__156;
  v21 = 0;
  v10 = [transactionCopy databaseForEntity:self];
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
  LODWORD(error) = [v10 executeSQL:v9 error:error bindingHandler:v15 enumerationHandler:v14];

  if (error)
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

- (id)sessionIdentifierWithTransaction:(id)transaction error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__156;
  v18 = __Block_byref_object_dispose__156;
  v19 = 0;
  v20[0] = @"session";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v8 = [transactionCopy databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__HDWorkoutBuilderEntity_sessionIdentifierWithTransaction_error___block_invoke;
  v13[3] = &unk_278620008;
  v13[4] = &v14;
  LODWORD(error) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:error handler:v13];

  if (error)
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

- (BOOL)setSessionIdentifier:(id)identifier transaction:(id)transaction error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  transactionCopy = transaction;
  v17[0] = @"session";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v11 = [transactionCopy databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__HDWorkoutBuilderEntity_setSessionIdentifier_transaction_error___block_invoke;
  v15[3] = &unk_2786246A0;
  v12 = identifierCopy;
  v16 = v12;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v10 database:v11 error:error bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return error;
}

- (id)startDateInTransaction:(id)transaction error:(id *)error
{
  v4 = [(HDHealthEntity *)self dateForProperty:@"start_date" transaction:transaction error:error];

  return v4;
}

- (id)endDateInTransaction:(id)transaction error:(id *)error
{
  v4 = [(HDHealthEntity *)self dateForProperty:@"end_date" transaction:transaction error:error];

  return v4;
}

- (id)dataIntervalInTransaction:(id)transaction error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__156;
  v17 = __Block_byref_object_dispose__156;
  v18 = 0;
  v19[0] = @"data_interval";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v7 = [transactionCopy databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
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

- (BOOL)setDataInterval:(id)interval transaction:(id)transaction error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  transactionCopy = transaction;
  v17[0] = @"data_interval";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v11 = [transactionCopy databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__HDWorkoutBuilderEntity_setDataInterval_transaction_error___block_invoke;
  v15[3] = &unk_2786246A0;
  v12 = intervalCopy;
  v16 = v12;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v10 database:v11 error:error bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return error;
}

- (id)quantityTypesIncludedWhilePausedInTransaction:(id)transaction error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__156;
  v17 = __Block_byref_object_dispose__156;
  v18 = 0;
  v19[0] = @"types_while_paused";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v7 = [transactionCopy databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
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

- (BOOL)setQuantityTypesIncludedWhilePaused:(id)paused transaction:(id)transaction error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  pausedCopy = paused;
  transactionCopy = transaction;
  v17[0] = @"types_while_paused";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v11 = [transactionCopy databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__HDWorkoutBuilderEntity_setQuantityTypesIncludedWhilePaused_transaction_error___block_invoke;
  v15[3] = &unk_2786246A0;
  v12 = pausedCopy;
  v16 = v12;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v10 database:v11 error:error bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return error;
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

- (BOOL)setMetadata:(id)metadata transaction:(id)transaction error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  transactionCopy = transaction;
  v17[0] = @"metadata";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v11 = [transactionCopy databaseForEntity:self];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__HDWorkoutBuilderEntity_setMetadata_transaction_error___block_invoke;
  v15[3] = &unk_2786246A0;
  v12 = metadataCopy;
  v16 = v12;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v10 database:v11 error:error bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return error;
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

- (id)metadataWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v7 = MEMORY[0x277CCACA8];
  disambiguatedDatabaseTable = [objc_opt_class() disambiguatedDatabaseTable];
  v9 = [v7 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ?", @"metadata", disambiguatedDatabaseTable, *MEMORY[0x277D10A40]];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__156;
  v20 = __Block_byref_object_dispose__156;
  v21 = 0;
  v10 = [transactionCopy databaseForEntity:self];
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
  if ([v10 executeSQL:v9 error:error bindingHandler:v15 enumerationHandler:v14])
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

- (BOOL)setDeviceEntity:(id)entity transaction:(id)transaction error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  transactionCopy = transaction;
  v17[0] = @"device_id";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v11 = [transactionCopy databaseForEntity:self];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__HDWorkoutBuilderEntity_setDeviceEntity_transaction_error___block_invoke;
  v15[3] = &unk_2786246A0;
  v12 = entityCopy;
  v16 = v12;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v10 database:v11 error:error bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return error;
}

void __60__HDWorkoutBuilderEntity_setDeviceEntity_transaction_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) persistentID];

  JUMPOUT(0x22AAC6B90);
}

- (BOOL)setWorkoutConfiguration:(id)configuration transaction:(id)transaction error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  transactionCopy = transaction;
  v17[0] = @"workout_configuration";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v11 = [transactionCopy databaseForEntity:self];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__HDWorkoutBuilderEntity_setWorkoutConfiguration_transaction_error___block_invoke;
  v15[3] = &unk_2786246A0;
  v12 = configurationCopy;
  v16 = v12;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v10 database:v11 error:error bindingHandler:v15];

  v13 = *MEMORY[0x277D85DE8];
  return error;
}

- (BOOL)enumerateAssociatedSampleValuesWithCustomQueryOfType:(id)type interval:(id)interval profile:(id)profile error:(id *)error handler:(id)handler
{
  typeCopy = type;
  intervalCopy = interval;
  profileCopy = profile;
  handlerCopy = handler;
  if (typeCopy)
  {
    v16 = [MEMORY[0x277CBEB98] setWithObject:typeCopy];
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
  v17 = typeCopy;
  v23 = v17;
  v18 = intervalCopy;
  v24 = v18;
  v19 = handlerCopy;
  v25 = v19;
  v20 = [(HDWorkoutBuilderEntity *)self _setupForEnumerationOfTypes:v16 interval:v18 profile:profileCopy error:error handler:v22];

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

- (BOOL)_setupForEnumerationOfTypes:(void *)types interval:(void *)interval profile:(uint64_t)profile error:(void *)error handler:
{
  v11 = a2;
  typesCopy = types;
  intervalCopy = interval;
  errorCopy = error;
  if (self)
  {
    database = [intervalCopy database];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __85__HDWorkoutBuilderEntity__setupForEnumerationOfTypes_interval_profile_error_handler___block_invoke;
    v18[3] = &unk_278628420;
    v18[4] = self;
    v19 = v11;
    v20 = typesCopy;
    v21 = errorCopy;
    v16 = [(HDHealthEntity *)HDSampleEntity performReadTransactionWithHealthDatabase:database error:profile block:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)enumerateAssociatedSampleValuesOfType:(id)type interval:(id)interval profile:(id)profile error:(id *)error sampleHandler:(id)handler
{
  typeCopy = type;
  intervalCopy = interval;
  profileCopy = profile;
  handlerCopy = handler;
  if (typeCopy)
  {
    v16 = [MEMORY[0x277CBEB98] setWithObject:typeCopy];
  }

  else
  {
    v16 = 0;
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __101__HDWorkoutBuilderEntity_enumerateAssociatedSampleValuesOfType_interval_profile_error_sampleHandler___block_invoke;
  v20[3] = &unk_2786282E0;
  v17 = handlerCopy;
  v21 = v17;
  v18 = [(HDWorkoutBuilderEntity *)self _setupForEnumerationOfTypes:v16 interval:intervalCopy profile:profileCopy error:error handler:v20];

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

- (BOOL)enumerateAssociatedSampleValuesOfType:(id)type interval:(id)interval profile:(id)profile error:(id *)error handler:(id)handler
{
  typeCopy = type;
  intervalCopy = interval;
  profileCopy = profile;
  handlerCopy = handler;
  if (typeCopy)
  {
    v16 = [MEMORY[0x277CBEB98] setWithObject:typeCopy];
  }

  else
  {
    v16 = 0;
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __95__HDWorkoutBuilderEntity_enumerateAssociatedSampleValuesOfType_interval_profile_error_handler___block_invoke;
  v20[3] = &unk_2786282E0;
  v17 = handlerCopy;
  v21 = v17;
  v18 = [(HDWorkoutBuilderEntity *)self _setupForEnumerationOfTypes:v16 interval:intervalCopy profile:profileCopy error:error handler:v20];

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

- (BOOL)enumerateAssociatedSamplesOfTypes:(id)types interval:(id)interval profile:(id)profile error:(id *)error sampleHandler:(id)handler
{
  typesCopy = types;
  profileCopy = profile;
  handlerCopy = handler;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__HDWorkoutBuilderEntity_enumerateAssociatedSamplesOfTypes_interval_profile_error_sampleHandler___block_invoke;
  v19[3] = &unk_278628358;
  v20 = typesCopy;
  v21 = profileCopy;
  v22 = handlerCopy;
  v15 = handlerCopy;
  v16 = profileCopy;
  v17 = typesCopy;
  LOBYTE(error) = [(HDWorkoutBuilderEntity *)self _setupForEnumerationOfTypes:v17 interval:interval profile:v16 error:error handler:v19];

  return error;
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

- (uint64_t)_dropTemporaryTableWithTransaction:(void *)transaction name:(void *)name error:
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  transactionCopy = transaction;
  if (self)
  {
    v9 = [v7 databaseForEntityClass:objc_opt_class()];
    transactionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"DROP TABLE %@", transactionCopy];
    v19 = 0;
    v11 = [v9 executeUncachedSQL:transactionCopy error:&v19 bindingHandler:0 enumerationHandler:0];
    v12 = v19;

    if ((v11 & 1) == 0)
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v21 = transactionCopy;
        v22 = 2114;
        v23 = v12;
        _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "Failed to drop temporary table with name %{public}@ after sample enumeration: %{public}@", buf, 0x16u);
      }
    }

    v14 = v12;
    v15 = v14;
    if (v14)
    {
      if (name)
      {
        v16 = v14;
        *name = v15;
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

- (BOOL)_setupForEnumerationOfTypes:(void *)types interval:(void *)interval transaction:(void *)transaction error:(void *)error handler:
{
  v115 = *MEMORY[0x277D85DE8];
  v83 = a2;
  typesCopy = types;
  intervalCopy = interval;
  errorCopy = error;
  v86 = intervalCopy;
  if (!self)
  {
    goto LABEL_34;
  }

  protectedDatabase = [intervalCopy protectedDatabase];
  [protectedDatabase setPermitWritesInReadTransaction:1];

  if (*(self + 16) == 1)
  {
    v12 = *(self + 24);
    if (v12)
    {
      goto LABEL_23;
    }
  }

  v13 = intervalCopy;
  v81 = [v13 databaseForEntityClass:objc_opt_class()];
  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "Creating tempory table for association sample list", &buf, 2u);
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v78 = [uUIDString stringByReplacingOccurrencesOfString:@"-" withString:&stru_283BF39C8];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", objc_opt_class(), v78];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  LODWORD(uUIDString) = [features workoutTempTableChanges];

  if (uUIDString)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"CREATE TEMPORARY TABLE %@ (%@ BLOB NOT NULL, %@ INTERGER NOT NULL)", v17, @"uuid", @"sample_type"];
    v21 = [v81 executeUncachedSQL:v20 error:transaction bindingHandler:0 enumerationHandler:0];

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
    v23 = [v81 executeUncachedSQL:v22 error:transaction bindingHandler:0 enumerationHandler:0];

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
  if ([HDWorkoutBuilderAssociatedObjectEntity enumerateAssociatedUUIDsForBuilder:self transaction:v13 error:transaction block:&buf])
  {
    if (![v101[5] count] || (v27 = (*(v26 + 2))(v26, v101[5], v95[5], transaction), v28 = v101[5], v101[5] = 0, v28, v27))
    {
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"CREATE INDEX %@_idx ON %@ (%@)", v24, v24, @"uuid"];
      v30 = [v25 executeUncachedSQL:v29 error:transaction bindingHandler:0 enumerationHandler:0];

      mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
      features2 = [mEMORY[0x277CCDD30]2 features];
      workoutTempTableChanges = [features2 workoutTempTableChanges];

      if (!workoutTempTableChanges)
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
        v30 = [v25 executeUncachedSQL:v34 error:transaction bindingHandler:0 enumerationHandler:0];

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
    protectedDatabase2 = [v13 protectedDatabase];
    [protectedDatabase2 setPermitWritesInReadTransaction:0];

LABEL_34:
    v58 = 0;
    goto LABEL_51;
  }

LABEL_23:
  if (*(self + 16) == 1 && !*(self + 24))
  {
    objc_storeStrong((self + 24), v12);
  }

  v36 = v83;
  v37 = typesCopy;
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
    v43 = [self dataIntervalInTransaction:v38 error:aBlock];
    v44 = aBlock[0];
    v74 = v44;
    v75 = v43;
    if (v43)
    {
      endDate = [v37 endDate];
      v73 = HDSampleEntityPredicateForStartDate(4);

      startDate = [v37 startDate];
      v72 = HDSampleEntityPredicateForEndDate(6);

      startDate2 = [v75 startDate];
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
      if (transaction)
      {
        v61 = v59;
        *transaction = v60;
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
    v92 = errorCopy;
    v62 = v38;
    v89 = v62;
    v90 = v56;
    v63 = v82;
    v91 = v63;
    v64 = [HDWorkoutBuilderAssociatedSampleTemporaryTableEntity withLocalTableName:v63 error:transaction block:v88];
    if (!*(self + 24))
    {
      v87 = 0;
      v65 = [(HDWorkoutBuilderEntity *)self _dropTemporaryTableWithTransaction:v62 name:v63 error:&v87];
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

    protectedDatabase3 = [v62 protectedDatabase];
    [protectedDatabase3 setPermitWritesInReadTransaction:0];

    v93 = v64;
  }

  else
  {
    protectedDatabase4 = [v38 protectedDatabase];
    [protectedDatabase4 setPermitWritesInReadTransaction:0];

    v93 = 0;
  }

  v58 = v93;
LABEL_51:

  v70 = *MEMORY[0x277D85DE8];
  return v58;
}

- (BOOL)pruneAssociatedSamplesToDateInterval:(id)interval transaction:(id)transaction error:(id *)error zonesHandler:(id)handler sampleHandler:(id)sampleHandler
{
  v82 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  transactionCopy = transaction;
  handlerCopy = handler;
  sampleHandlerCopy = sampleHandler;
  v53 = transactionCopy;
  protectedDatabase = [transactionCopy protectedDatabase];

  if (!protectedDatabase)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"A protected data transaction is required."];
    v45 = 0;
    goto LABEL_53;
  }

  startDate = [intervalCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v16 = v15;

  endDate = [intervalCopy endDate];
  [endDate timeIntervalSinceReferenceDate];
  v19 = v18;

  v52 = [(HDWorkoutBuilderEntity *)self workoutEventsInTransaction:transactionCopy error:error];
  if (!v52)
  {
    v45 = 0;
    goto LABEL_52;
  }

  v20 = [(HDWorkoutBuilderEntity *)self quantityTypesIncludedWhilePausedInTransaction:transactionCopy error:error];
  if (!v20)
  {
    v45 = 0;
    goto LABEL_51;
  }

  errorCopy = error;
  selfCopy = self;
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

      code = [*(*(&v72 + 1) + 8 * i) code];
      if (!*(&v76[0] + 1))
      {
        goto LABEL_25;
      }

      v25 = vcnt_s8(*(v76 + 8));
      v25.i16[0] = vaddlv_u8(v25);
      if (v25.u32[0] > 1uLL)
      {
        v26 = code;
        if (*(&v76[0] + 1) <= code)
        {
          v26 = code % *(&v76[0] + 1);
        }
      }

      else
      {
        v26 = (*(&v76[0] + 1) - 1) & code;
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
        if (v29 == code)
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

      if (v28[2] != code)
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
        startDate2 = [v34 startDate];
        [startDate2 timeIntervalSinceReferenceDate];
        v37 = v36;
        endDate2 = [v34 endDate];
        [endDate2 timeIntervalSinceReferenceDate];
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
  v60 = handlerCopy;
  v58[4] = selfCopy;
  v59 = v53;
  v62 = v19;
  v63 = v16;
  std::unordered_set<_HKDataTypeCode>::unordered_set(v64, v76);
  memset(__p, 0, sizeof(__p));
  std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(__p, v70.n128_i64[0], v70.n128_i64[1], (v70.n128_u64[1] - v70.n128_u64[0]) >> 4);
  v61 = sampleHandlerCopy;
  v42 = v59;
  v43 = v58;
  v44 = v43;
  if (selfCopy)
  {
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __90__HDWorkoutBuilderEntity__enumerateAssociatedSamplePropertiesInTransaction_error_handler___block_invoke;
    v78[3] = &unk_2786282E0;
    v79 = v43;
    v45 = [(HDWorkoutBuilderEntity *)selfCopy _setupForEnumerationOfTypes:0 interval:v42 transaction:errorCopy error:v78 handler:?];
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

- (BOOL)insertWorkoutEvent:(id)event transaction:(id)transaction error:(id *)error
{
  eventCopy = event;
  transactionCopy = transaction;
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDSQLiteEntity persistentID](self, "persistentID")}];
  v11 = [transactionCopy databaseForEntity:self];
  v12 = [(HDWorkoutEventEntity *)HDWorkoutBuilderEventEntity insertPersistableWorkoutEvent:eventCopy ownerID:v10 database:v11 error:error];

  return v12 != 0;
}

- (id)workoutEventsInTransaction:(id)transaction error:(id *)error
{
  v4 = [HDWorkoutBuilderEventEntity workoutEventsWithWorkoutBuilder:self transaction:transaction error:error];

  return v4;
}

- (BOOL)insertPrimaryWorkoutActivity:(id)activity transaction:(id)transaction error:(id *)error
{
  activityCopy = activity;
  transactionCopy = transaction;
  v10 = [transactionCopy databaseForEntityClass:objc_opt_class()];
  LOBYTE(error) = [(HDWorkoutActivityEntity *)HDWorkoutBuilderActivityEntity insertPrimaryActivity:activityCopy ownerID:[(HDSQLiteEntity *)self persistentID] database:v10 error:error];

  return error;
}

- (BOOL)insertWorkoutActivity:(id)activity transaction:(id)transaction error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  transactionCopy = transaction;
  v10 = [transactionCopy databaseForEntityClass:objc_opt_class()];
  v14[0] = activityCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  LOBYTE(error) = [(HDWorkoutActivityEntity *)HDWorkoutBuilderActivityEntity insertSubActivities:v11 ownerID:[(HDSQLiteEntity *)self persistentID] database:v10 error:error];

  v12 = *MEMORY[0x277D85DE8];
  return error;
}

- (BOOL)updateWorkoutActivityEndDate:(id)date transaction:(id)transaction error:(id *)error
{
  dateCopy = date;
  transactionCopy = transaction;
  uUID = [dateCopy UUID];
  v21 = 0;
  v10 = [(HDWorkoutActivityEntity *)HDWorkoutBuilderActivityEntity activityEntityWithUUID:uUID transaction:transactionCopy error:&v21];
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
      uUID2 = [dateCopy UUID];
      uUIDString = [uUID2 UUIDString];
      v18 = [v15 hk_error:118 format:{@"Could not find activity with UUID %@", uUIDString}];

      v11 = v18;
      if (!v11)
      {
        v14 = 1;
LABEL_12:

        goto LABEL_13;
      }
    }

    if (error)
    {
      v19 = v11;
      v14 = 0;
      *error = v11;
    }

    else
    {
      _HKLogDroppedError();
      v14 = 0;
    }

    goto LABEL_12;
  }

  endDate = [dateCopy endDate];
  v13 = [v10 setEndDate:endDate transaction:transactionCopy error:error];

  if (v13)
  {
    [dateCopy duration];
    v14 = [v10 setDuration:transactionCopy transaction:error error:?];
  }

  else
  {
    v14 = 0;
  }

LABEL_13:

  return v14;
}

- (BOOL)updateWorkoutActivityMetadata:(id)metadata transaction:(id)transaction error:(id *)error
{
  metadataCopy = metadata;
  transactionCopy = transaction;
  uUID = [metadataCopy UUID];
  v20 = 0;
  v10 = [(HDWorkoutActivityEntity *)HDWorkoutBuilderActivityEntity activityEntityWithUUID:uUID transaction:transactionCopy error:&v20];
  v11 = v20;

  if (v10)
  {
    metadata = [metadataCopy metadata];
    v13 = [v10 setMetadata:metadata transaction:transactionCopy error:error];
  }

  else
  {
    if (v11)
    {
      metadata = v11;
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      uUID2 = [metadataCopy UUID];
      uUIDString = [uUID2 UUIDString];
      v17 = [v14 hk_error:118 format:{@"Could not find activity with UUID %@", uUIDString}];

      metadata = v17;
      if (!metadata)
      {
        v11 = 0;
        v13 = 1;
        goto LABEL_10;
      }
    }

    if (error)
    {
      v18 = metadata;
      v13 = 0;
      *error = metadata;
    }

    else
    {
      _HKLogDroppedError();
      v13 = 0;
    }

    v11 = metadata;
  }

LABEL_10:

  return v13;
}

- (id)workoutActivitiesInTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v7 = [transactionCopy databaseForEntityClass:objc_opt_class()];
  v8 = [(HDWorkoutActivityEntity *)HDWorkoutBuilderActivityEntity subActivitiesWithOwnerID:[(HDSQLiteEntity *)self persistentID] database:v7 error:error];

  return v8;
}

- (id)primaryActivityInTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v7 = [transactionCopy databaseForEntityClass:objc_opt_class()];
  v8 = [(HDWorkoutActivityEntity *)HDWorkoutBuilderActivityEntity primaryWorkoutActivityForOwnerID:[(HDSQLiteEntity *)self persistentID] database:v7 error:error];

  return v8;
}

- (BOOL)insertZones:(id)zones transaction:(id)transaction error:(id *)error
{
  zonesCopy = zones;
  transactionCopy = transaction;
  LOBYTE(error) = [(HDWorkoutZonesEntity *)HDWorkoutBuilderZonesEntity insertZones:zonesCopy ownerID:[(HDSQLiteEntity *)self persistentID] transaction:transactionCopy error:error];

  return error;
}

- (BOOL)updateTimeInZone:(id)zone transaction:(id)transaction error:(id *)error
{
  zoneCopy = zone;
  transactionCopy = transaction;
  identifier = [zoneCopy identifier];
  v20 = 0;
  v10 = [(HDWorkoutZonesEntity *)HDWorkoutBuilderZonesEntity zoneEntityWithZoneUUID:identifier transaction:transactionCopy error:&v20];
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
      identifier2 = [zoneCopy identifier];
      uUIDString = [identifier2 UUIDString];
      v17 = [v14 hk_error:118 format:{@"Could not find zone with UUID %@", uUIDString}];

      v13 = v17;
      if (!v13)
      {
        v12 = 1;
LABEL_10:

        v11 = v13;
        goto LABEL_11;
      }
    }

    if (error)
    {
      v18 = v13;
      v12 = 0;
      *error = v13;
    }

    else
    {
      _HKLogDroppedError();
      v12 = 0;
    }

    goto LABEL_10;
  }

  [zoneCopy timeInZone];
  v12 = [v10 setTimeInZone:transactionCopy transaction:error error:?];
LABEL_11:

  return v12;
}

- (id)zonesInTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__156;
  v16 = __Block_byref_object_dispose__156;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  persistentID = [(HDSQLiteEntity *)self persistentID];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__HDWorkoutBuilderEntity_zonesInTransaction_error___block_invoke;
  v11[3] = &unk_278628470;
  v11[4] = &v12;
  if ([(HDWorkoutZonesEntity *)HDWorkoutBuilderZonesEntity enumerateZonesWithOwnerID:persistentID transaction:transactionCopy error:error handler:v11])
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

- (BOOL)storeStatisticsCalculator:(id)calculator anchor:(id)anchor activityUUID:(id)d transaction:(id)transaction error:(id *)error
{
  calculatorCopy = calculator;
  anchorCopy = anchor;
  dCopy = d;
  transactionCopy = transaction;
  v21 = 0;
  v15 = [(HDWorkoutActivityEntity *)HDWorkoutBuilderActivityEntity activityEntityWithUUID:dCopy transaction:transactionCopy error:&v21];
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
      v17 = [MEMORY[0x277CCA9B8] hk_error:118 format:{@"Could not find activity with UUID %@", dCopy}];
      if (!v17)
      {
        v18 = 1;
LABEL_10:

        goto LABEL_11;
      }
    }

    if (error)
    {
      v19 = v17;
      v18 = 0;
      *error = v17;
    }

    else
    {
      _HKLogDroppedError();
      v18 = 0;
    }

    goto LABEL_10;
  }

  v18 = [(HDStatisticsCalculatorEntity *)HDWorkoutBuilderStatisticsCalculatorEntity setCalculator:calculatorCopy forOwner:v15 anchor:anchorCopy transaction:transactionCopy error:error];
LABEL_11:

  return v18;
}

- (BOOL)enumerateStatisticsInTransaction:(id)transaction error:(id *)error block:(id)block
{
  transactionCopy = transaction;
  blockCopy = block;
  persistentID = [(HDSQLiteEntity *)self persistentID];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__HDWorkoutBuilderEntity_enumerateStatisticsInTransaction_error_block___block_invoke;
  v14[3] = &unk_2786284C0;
  v11 = transactionCopy;
  v15 = v11;
  v12 = blockCopy;
  v16 = v12;
  LOBYTE(error) = [(HDWorkoutActivityEntity *)HDWorkoutBuilderActivityEntity enumerateActivityEntitiesForOwnerID:persistentID transaction:v11 error:error enumerationHandler:v14];

  return error;
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

- (BOOL)setArchivedState:(id)state forDataSourceIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  stateCopy = state;
  identifierCopy = identifier;
  database = [profile database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__HDWorkoutBuilderEntity_setArchivedState_forDataSourceIdentifier_profile_error___block_invoke;
  v16[3] = &unk_27861CA28;
  v13 = identifierCopy;
  v17 = v13;
  v14 = stateCopy;
  v18 = v14;
  selfCopy = self;
  LOBYTE(error) = [(HDHealthEntity *)HDWorkoutBuilderDataSourceEntity performWriteTransactionWithHealthDatabase:database error:error block:v16];

  return error;
}

- (BOOL)removeDataSourceWithIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  database = [profile database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__HDWorkoutBuilderEntity_removeDataSourceWithIdentifier_profile_error___block_invoke;
  v12[3] = &unk_27861CD40;
  v10 = identifierCopy;
  v13 = v10;
  selfCopy = self;
  LOBYTE(error) = [(HDHealthEntity *)HDWorkoutBuilderDataSourceEntity performWriteTransactionWithHealthDatabase:database error:error block:v12];

  return error;
}

- (BOOL)enumerateDataSourcesForProfile:(id)profile error:(id *)error block:(id)block
{
  blockCopy = block;
  database = [profile database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HDWorkoutBuilderEntity_enumerateDataSourcesForProfile_error_block___block_invoke;
  v12[3] = &unk_2786284E8;
  v12[4] = self;
  v10 = blockCopy;
  v13 = v10;
  LOBYTE(error) = [(HDHealthEntity *)HDWorkoutBuilderDataSourceEntity performReadTransactionWithHealthDatabase:database error:error block:v12];

  return error;
}

- (BOOL)dropFinalTemporaryTableWithTransaction:(id)transaction error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  if (self->_finishingTemporaryTableName)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
    {
      finishingTemporaryTableName = self->_finishingTemporaryTableName;
      v12 = 138543618;
      selfCopy = self;
      v14 = 2114;
      v15 = finishingTemporaryTableName;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "%{public}@: dropping final temporary table with name: %{public}@", &v12, 0x16u);
    }

    v9 = [(HDWorkoutBuilderEntity *)self _dropTemporaryTableWithTransaction:transactionCopy name:self->_finishingTemporaryTableName error:error];
  }

  else
  {
    v9 = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (const)columnDefinitionsWithCount:(unint64_t *)count
{
  {
    countCopy = count;
    count = countCopy;
    if (v4)
    {
      __cxa_atexit(__cxx_global_array_dtor_2, 0, &dword_228986000);
      count = countCopy;
    }
  }

  *count = 15;
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