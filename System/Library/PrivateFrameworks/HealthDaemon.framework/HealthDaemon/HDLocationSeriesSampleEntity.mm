@interface HDLocationSeriesSampleEntity
+ (BOOL)_rawEnumerateLocationDataInDatabase:(id)a3 HFDKey:(id)a4 startDate:(id)a5 endDate:(id)a6 error:(id *)a7 handler:(id)a8;
+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4;
+ (BOOL)copyLocationDataFromSeriesIdentifier:(id)a3 toSeriesIdentifier:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)enumerateLocationDataInDatabase:(id)a3 HFDKey:(id)a4 error:(id *)a5 handler:(id)a6;
+ (BOOL)enumerateLocationDataWithTransaction:(id)a3 HFDKey:(id)a4 startDate:(id)a5 error:(id *)a6 handler:(id)a7;
+ (BOOL)insertLocationData:(id)a3 seriesIdentifier:(id)a4 assertion:(id)a5 profile:(id)a6 error:(id *)a7;
+ (BOOL)performPostFirstJournalMergeCleanupWithTransaction:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)validateEntityWithProfile:(id)a3 error:(id *)a4 validationErrorHandler:(id)a5;
+ (id)codableObjectsFromObjectCollection:(id)a3;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
+ (id)mergeDataObject:(id)a3 provenance:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7 insertHandler:(id)a8;
+ (id)privateSubEntities;
+ (uint64_t)_getRangeAndCountForKey:(void *)a3 transaction:(void *)a4 error:(void *)a5 handler:;
+ (uint64_t)_insertCodableSeriesDataFromObject:(void *)a3 persistentID:(void *)a4 database:(void *)a5 error:;
+ (uint64_t)_updateFrozenEntityToMatchReplacedUnfrozenEntity:(void *)a3 unfrozenSeriesUUID:(uint64_t)a4 unfrozenSeriesHFDKey:(void *)a5 database:(uint64_t)a6 error:;
- (BOOL)_insertLocationData:(id)a3 database:(id)a4 error:(id *)a5;
- (BOOL)deleteFromDatabase:(id)a3 error:(id *)a4;
- (BOOL)enumerateLocationDataInDatabase:(void *)a3 startDate:(void *)a4 endDate:(uint64_t)a5 error:(void *)a6 handler:;
- (BOOL)enumerateLocationDataInTransaction:(id)a3 startDate:(id)a4 endDate:(id)a5 error:(id *)a6 handler:(id)a7;
- (id)freezeWithTransaction:(id)a3 profile:(id)a4 error:(id *)a5;
- (void)willDeleteFromDatabase:(id)a3;
@end

@implementation HDLocationSeriesSampleEntity

+ (id)privateSubEntities
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [(HDEntityEncoder *)[_HDLocationSeriesSampleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v11 transaction:v12 purpose:a5 encodingOptions:v13 authorizationFilter:v14];

  return v15;
}

+ (uint64_t)_insertCodableSeriesDataFromObject:(void *)a3 persistentID:(void *)a4 database:(void *)a5 error:
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v32 = a4;
  v28 = v8;
  v29 = v9;
  objc_opt_self();
  v10 = [v8 _codableWorkoutRoute];
  v30 = v10;
  v31 = [(HDSQLiteEntity *)HDLocationSeriesSampleEntity entityWithPersistentID:v9];
  v11 = [v31 HFDKeyWithDatabase:v32 error:a5];
  if (v11)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v12 = [v10 locationDatas];
    v13 = [v12 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v13)
    {
      v14 = *v47;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v47 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v46 + 1) + 8 * i);
          v39 = MEMORY[0x277D85DD0];
          v40 = 3221225472;
          v41 = __95__HDLocationSeriesSampleEntity__insertCodableSeriesDataFromObject_persistentID_database_error___block_invoke;
          v42 = &unk_278624538;
          v43 = v16;
          v44 = v32;
          v45 = v11;
          v17 = HKWithAutoreleasePool();

          if (!v17)
          {

            goto LABEL_14;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v18 = [v11 longLongValue];
    v33[4] = &v35;
    v34 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __95__HDLocationSeriesSampleEntity__insertCodableSeriesDataFromObject_persistentID_database_error___block_invoke_2;
    v33[3] = &unk_278624560;
    v19 = [HDLocationSeriesDataEntity getRangeAndCountForSeriesIdentifier:v18 database:v32 error:&v34 handler:v33];
    v20 = v34;
    v21 = v20;
    if (v19 || ([v20 hk_isHealthKitErrorWithCode:1100] & 1) != 0)
    {
      v22 = [v31 updateSampleCount:v36[3] withDatabase:v32 error:a5];
    }

    else
    {
      v23 = v21;
      v24 = v23;
      if (v23)
      {
        if (a5)
        {
          v25 = v23;
          *a5 = v24;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v22 = 0;
    }

    _Block_object_dispose(&v35, 8);
  }

  else
  {
LABEL_14:
    v22 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

BOOL __95__HDLocationSeriesSampleEntity__insertCodableSeriesDataFromObject_persistentID_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  [v4 timestamp];
  v33 = v5;
  [v4 latitude];
  v32 = v6;
  [v4 longitude];
  v8 = v7;
  [v4 horizontalAccuracy];
  v10 = v9;
  [v4 altitude];
  v12 = v11;
  [v4 verticalAccuracy];
  v14 = v13;
  [v4 speed];
  v16 = v15;
  [v4 course];
  v18 = v17;
  v19 = -1.0;
  if ([v4 hasSpeedAccuracy])
  {
    [v4 speedAccuracy];
    v19 = v20;
  }

  v21 = -1.0;
  if ([v4 hasCourseAccuracy])
  {
    [v4 courseAccuracy];
    v21 = v22;
  }

  if ([v4 hasSignalEnvironmentType])
  {
    v23 = [v4 signalEnvironmentType];
  }

  else
  {
    v23 = 0;
  }

  v24 = objc_alloc(MEMORY[0x277CE41F8]);
  v25 = *MEMORY[0x277CE4290];
  v34 = 0;
  v35 = v32;
  v36 = v8;
  v37 = v10;
  v38 = v12;
  v39 = v14;
  v40 = v16;
  v41 = v19;
  v42 = v18;
  v43 = v21;
  v44 = v33;
  v45 = 0;
  v46 = 0xBFF0000000000000;
  v47 = 0;
  v49 = 0;
  v48 = 0;
  v50 = 0x7FFFFFFF00000000;
  v51 = v25;
  v52 = 0;
  v53 = v23;
  v55 = 0;
  v54 = 0;
  v26 = [v24 initWithClientLocation:&v34];

  v27 = *(a1 + 40);
  v28 = [*(a1 + 48) longLongValue];
  v29 = [v26 timestamp];
  [v29 timeIntervalSinceReferenceDate];
  v30 = [HDLocationSeriesDataEntity insertOrReplaceEntity:1 database:v27 identifier:v28 timestamp:v26 location:a2 error:?];

  return v30;
}

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = v12;
  objc_opt_self();
  v15 = [(HDSQLiteEntity *)HDSeriesSampleEntity entityWithPersistentID:v13];
  v16 = [v15 HFDKeyWithDatabase:v14 error:a7];

  if (!v16)
  {

    goto LABEL_7;
  }

  v17 = +[HDLocationSeriesDataEntity deleteSeriesDataWithIdentifier:database:error:](HDLocationSeriesDataEntity, "deleteSeriesDataWithIdentifier:database:error:", [v16 longLongValue], v14, a7);

  if (!v17)
  {
LABEL_7:
    v20 = 0;
    goto LABEL_10;
  }

  v18 = [v11 _codableWorkoutRoute];

  if (v18 && ![(HDLocationSeriesSampleEntity *)a1 _insertCodableSeriesDataFromObject:v11 persistentID:v13 database:v14 error:a7])
  {
    v19 = 0;
  }

  else
  {
    v19 = v13;
  }

  v20 = v19;
LABEL_10:

  return v20;
}

+ (id)mergeDataObject:(id)a3 provenance:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7 insertHandler:(id)a8
{
  v11 = a3;
  v12 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 databaseForEntityClass:a1];
    v14 = [v11 UUID];
    v15 = HDDataEntityPredicateForDataUUID();
    v16 = [a1 anyInDatabase:v13 predicate:v15 error:a7];

    if (v16)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "persistentID")}];
      if ([(HDLocationSeriesSampleEntity *)a1 _insertCodableSeriesDataFromObject:v11 persistentID:v17 database:v13 error:a7])
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (BOOL)insertLocationData:(id)a3 seriesIdentifier:(id)a4 assertion:(id)a5 profile:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = [HDDatabaseTransactionContext contextForAccessibilityAssertion:a5];
  v17 = [v15 database];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __92__HDLocationSeriesSampleEntity_insertLocationData_seriesIdentifier_assertion_profile_error___block_invoke;
  v26[3] = &unk_278624588;
  v30 = a1;
  v27 = v14;
  v31 = a2;
  v28 = v13;
  v29 = v15;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __92__HDLocationSeriesSampleEntity_insertLocationData_seriesIdentifier_assertion_profile_error___block_invoke_310;
  v22[3] = &unk_2786245B0;
  v18 = v27;
  v23 = v18;
  v19 = v28;
  v24 = v19;
  v20 = v29;
  v25 = v20;
  LOBYTE(a7) = [a1 performWriteTransactionWithHealthDatabase:v17 context:v16 error:a7 block:v26 inaccessibilityHandler:{v22, v14}];

  return a7;
}

uint64_t __92__HDLocationSeriesSampleEntity_insertLocationData_seriesIdentifier_assertion_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v6 = *(a1 + 32);
  v7 = HDDataEntityPredicateForDataUUID();
  v21 = 0;
  v8 = [(HDDataEntity *)HDLocationSeriesSampleEntity anyInDatabase:v5 predicate:v7 error:&v21];
  v9 = v21;

  if (v8)
  {
    v10 = [v8 _insertLocationData:*(a1 + 40) database:v5 error:a3];
    v11 = v9;
  }

  else
  {
    if (!v9)
    {
      v12 = *(a1 + 56);
      v9 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 64) format:{@"Unable to find location series %@ during data insert.", *(a1 + 32)}];
    }

    v13 = [[_HDLocationInsertionJournalEntry alloc] initWithSeriesPersistentID:*(a1 + 40) locationData:?];
    v14 = [*(a1 + 48) database];
    v15 = [v14 addJournalEntry:v13 error:a3];

    if ((v15 & 1) == 0)
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "Failed to journal series sample.", buf, 2u);
      }
    }

    v17 = v9;
    v11 = v17;
    if (v17)
    {
      if (a3)
      {
        v18 = v17;
        *a3 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v10 = 0;
  }

  return v10;
}

uint64_t __92__HDLocationSeriesSampleEntity_insertLocationData_seriesIdentifier_assertion_profile_error___block_invoke_310(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = [[_HDLocationInsertionJournalEntry alloc] initWithSeriesPersistentID:a1[5] locationData:?];
  v6 = [a1[6] database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

- (BOOL)_insertLocationData:(id)a3 database:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  v24 = v9;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"HDLocationSeriesSampleEntity.mm" lineNumber:300 description:{@"Invalid parameter not satisfying: %@", @"data != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v23 = [MEMORY[0x277CCA890] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"HDLocationSeriesSampleEntity.mm" lineNumber:301 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];

LABEL_3:
  if ([(HDSeriesSampleEntity *)self canAddDatumInDatabase:v11 error:a5])
  {
    v12 = [(HDSeriesSampleEntity *)self HFDKeyWithDatabase:v11 error:a5];
    if (v12)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = v9;
      v13 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v13)
      {
        v14 = *v27;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v26 + 1) + 8 * i);
            v17 = [v12 longLongValue];
            v18 = [v16 timestamp];
            [v18 timeIntervalSinceReferenceDate];
            LOBYTE(v16) = [HDLocationSeriesDataEntity insertOrReplaceEntity:1 database:v11 identifier:v17 timestamp:v16 location:a5 error:?];

            if ((v16 & 1) == 0)
            {
              v19 = 0;
              goto LABEL_16;
            }
          }

          v13 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v19 = 1;
LABEL_16:
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:@"Unable to add data to a frozen series."];
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (BOOL)performPostFirstJournalMergeCleanupWithTransaction:(id)a3 profile:(id)a4 error:(id *)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v7 = a4;
  v38 = 0;
  v8 = [HDWorkoutBuilderAssociatedSeriesEntity allBuilderAssociatedSeriesWithProfile:v7 error:&v38];
  v9 = v38;
  if (v8)
  {
    v27 = HDSeriesSamplePredicateForSamplesToAutoFreezeExcludingSamples(v8);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = [v29 protectedDatabase];
    v37 = v9;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __97__HDLocationSeriesSampleEntity_performPostFirstJournalMergeCleanupWithTransaction_profile_error___block_invoke;
    v35[3] = &unk_2786245D8;
    v28 = v10;
    v36 = v28;
    v12 = [a1 enumerateEntitiesInDatabase:v11 predicate:v27 error:&v37 enumerationHandler:v35];
    v13 = v37;

    if (v12)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v14 = v28;
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
      if (v15)
      {
        v16 = *v32;
        do
        {
          v17 = 0;
          do
          {
            if (*v32 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v31 + 1) + 8 * v17);
            v30 = v13;
            v19 = [v18 freezeWithTransaction:v29 profile:v7 error:&v30];
            v20 = v30;

            v13 = v20;
            if (!v19)
            {
              _HKInitializeLogging();
              v21 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                v22 = [v18 persistentID];
                *buf = 134218242;
                v40 = v22;
                v41 = 2114;
                v42 = v20;
                _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "Failed to freeze workout route %lld during post-journal-merge cleanup: %{public}@", buf, 0x16u);
              }
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = [v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
        }

        while (v15);
      }
    }

    else
    {
      _HKInitializeLogging();
      v24 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v40 = v13;
        _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "Failed to enumerate workout routes requiring auto-freeze during post-journal-merge cleanup: %{public}@", buf, 0xCu);
      }
    }

    v9 = v13;
  }

  else
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v40 = v9;
      _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "Failed to determine builder-associated series during post-journal-merge cleanup: %{public}@", buf, 0xCu);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)enumerateLocationDataInDatabase:(id)a3 HFDKey:(id)a4 error:(id *)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = HDSeriesSamplePredicateForSeriesIdentifier([v11 longLongValue]);
  v14 = [a1 anyInDatabase:v10 predicate:v13 error:a5];

  if (v14)
  {
    v15 = [v14 enumerateLocationDataInDatabase:v10 error:a5 handler:v12];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (BOOL)enumerateLocationDataInDatabase:(void *)a3 startDate:(void *)a4 endDate:(uint64_t)a5 error:(void *)a6 handler:
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (a1)
  {
    v15 = [a1 HFDKeyWithDatabase:v11 error:a5];
    if (v15)
    {
      v16 = [HDLocationSeriesSampleEntity _rawEnumerateLocationDataInDatabase:v11 HFDKey:v15 startDate:v12 endDate:v13 error:a5 handler:v14];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)enumerateLocationDataInTransaction:(id)a3 startDate:(id)a4 endDate:(id)a5 error:(id *)a6 handler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [a3 databaseForEntity:self];
  LOBYTE(a6) = [(HDLocationSeriesSampleEntity *)self enumerateLocationDataInDatabase:v15 startDate:v12 endDate:v13 error:a6 handler:v14];

  return a6;
}

+ (BOOL)enumerateLocationDataWithTransaction:(id)a3 HFDKey:(id)a4 startDate:(id)a5 error:(id *)a6 handler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [a3 databaseForEntityClass:a1];
  v16 = HDSeriesSamplePredicateForSeriesIdentifier([v12 longLongValue]);
  v17 = [a1 anyInDatabase:v15 predicate:v16 error:a6];

  if (v17)
  {
    v18 = [v17 HFDKeyWithDatabase:v15 error:a6];
    if (v18)
    {
      v19 = [HDLocationSeriesSampleEntity _rawEnumerateLocationDataInDatabase:v15 HFDKey:v18 startDate:v13 endDate:0 error:a6 handler:v14];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

+ (BOOL)_rawEnumerateLocationDataInDatabase:(id)a3 HFDKey:(id)a4 startDate:(id)a5 endDate:(id)a6 error:(id *)a7 handler:(id)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = [a4 longLongValue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __107__HDLocationSeriesSampleEntity__rawEnumerateLocationDataInDatabase_HFDKey_startDate_endDate_error_handler___block_invoke;
  v20[3] = &unk_278624600;
  v18 = v16;
  v21 = v18;
  LOBYTE(a7) = [HDLocationSeriesDataEntity enumerateSeries:v17 database:v13 startDate:v14 endDate:v15 error:a7 handler:v20];

  return a7;
}

+ (BOOL)copyLocationDataFromSeriesIdentifier:(id)a3 toSeriesIdentifier:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v29 = a3;
  v30 = a4;
  v11 = [a5 databaseForEntityClass:a1];
  v12 = HDDataEntityPredicateForDataUUID();
  v34 = 0;
  v13 = [(HDDataEntity *)HDLocationSeriesSampleEntity anyInDatabase:v11 predicate:v12 error:&v34];
  v14 = v34;

  if (v13)
  {
    v33 = v14;
    v15 = [v13 HFDKeyWithDatabase:v11 error:&v33];
    v16 = v33;

    if (v15)
    {
      v17 = HDDataEntityPredicateForDataUUID();
      v27 = a2;
      v32 = 0;
      v18 = [(HDDataEntity *)HDLocationSeriesSampleEntity anyInDatabase:v11 predicate:v17 error:&v32];
      v19 = v32;

      v28 = v18;
      if (v18)
      {
        v31 = v19;
        v20 = [v18 HFDKeyWithDatabase:v11 error:&v31];
        v21 = v31;

        if (v20)
        {
          v22 = +[HDLocationSeriesDataEntity copySeriesDataWithIdentifier:toSeriesIdentifier:database:error:](HDLocationSeriesDataEntity, "copySeriesDataWithIdentifier:toSeriesIdentifier:database:error:", [v15 longLongValue], objc_msgSend(v20, "longLongValue"), v11, a6);
LABEL_24:

          goto LABEL_25;
        }

        v19 = v21;
      }

      if (v19)
      {
        v24 = v19;
      }

      else
      {
        v24 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:v27 format:{@"Unable to find destination location series %@ during data copy.", v30}];
        if (!v24)
        {
          v22 = 1;
LABEL_23:

          v20 = 0;
          v21 = v24;
          goto LABEL_24;
        }
      }

      if (a6)
      {
        v25 = v24;
        v22 = 0;
        *a6 = v24;
      }

      else
      {
        _HKLogDroppedError();
        v22 = 0;
      }

      goto LABEL_23;
    }

    v14 = v16;
  }

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"Unable to find source location series %@ during data copy.", v29}];
    if (!v15)
    {
      v16 = 0;
      v22 = 1;
      goto LABEL_25;
    }
  }

  if (a6)
  {
    v23 = v15;
    v22 = 0;
    *a6 = v15;
  }

  else
  {
    _HKLogDroppedError();
    v22 = 0;
  }

  v16 = v15;
LABEL_25:

  return v22;
}

- (BOOL)deleteFromDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(HDLocationSeriesSampleEntity *)self willDeleteFromDatabase:v6];
  v8.receiver = self;
  v8.super_class = HDLocationSeriesSampleEntity;
  LOBYTE(a4) = [(HDSQLiteEntity *)&v8 deleteFromDatabase:v6 error:a4];

  return a4;
}

- (void)willDeleteFromDatabase:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0;
  v5 = [(HDSeriesSampleEntity *)self HFDKeyWithDatabase:v4 error:&v11];
  v6 = v11;
  if (v5)
  {
    v10 = v6;
    +[HDLocationSeriesDataEntity deleteSeriesDataWithIdentifier:database:error:](HDLocationSeriesDataEntity, "deleteSeriesDataWithIdentifier:database:error:", [v5 longLongValue], v4, &v10);
    v7 = v6;
    v6 = v10;
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [(HDSQLiteEntity *)self persistentID];
      *buf = 134218242;
      v13 = v9;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Failed to find HFD Key when deleting object with persistent id %lld: %{public}@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)codableObjectsFromObjectCollection:(id)a3
{
  v3 = [a3 locationSeries];

  return v3;
}

+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    [v6 addLocationSeries:v5];
  }

  return v5 != 0;
}

- (id)freezeWithTransaction:(id)a3 profile:(id)a4 error:(id *)a5
{
  v107 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v85 = a4;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  Current = CFAbsoluteTimeGetCurrent();
  v92 = 0;
  v93 = &v92;
  v9 = *(v97 + 3);
  v94 = 0x2020000000;
  v95 = v9;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 0;
  v84 = [v8 databaseForEntity:self];
  v10 = [(HDSeriesSampleEntity *)self HFDKeyWithDatabase:v84 error:a5];
  if (!v10)
  {
LABEL_7:
    v25 = 0;
    goto LABEL_63;
  }

  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __68__HDLocationSeriesSampleEntity_freezeWithTransaction_profile_error___block_invoke;
  v87[3] = &unk_278624628;
  v87[4] = &v96;
  v87[5] = &v92;
  v87[6] = &v88;
  if (([HDLocationSeriesSampleEntity _getRangeAndCountForKey:v10 transaction:v8 error:a5 handler:v87]& 1) == 0)
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(v97 + 3);
      v22 = *(v93 + 3);
      v23 = v89[3];
      v24 = *a5;
      *buf = 138544386;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v21;
      *&buf[22] = 2048;
      v105 = v22;
      *v106 = 2048;
      *&v106[2] = v23;
      *&v106[10] = 2112;
      *&v106[12] = v24;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@: Failed getting range and count for location series during freeze. start:%f, end:%f, count:%lld, error:%@", buf, 0x34u);
    }

    goto LABEL_7;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDSQLiteEntity persistentID](self, "persistentID")}];
  v12 = v85;
  v13 = objc_opt_self();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v105 = __Block_byref_object_copy__122;
  *v106 = __Block_byref_object_dispose__122;
  *&v106[8] = 0;
  v14 = [v13 entityEnumeratorWithProfile:v12];
  v15 = HDDataEntityPredicateForRowID(v11, 1);
  [v14 setPredicate:v15];

  [v14 setIgnoreEntityClassAdditionalPredicateForEnumeration:1];
  v101 = 0;
  v100[0] = MEMORY[0x277D85DD0];
  v100[1] = 3221225472;
  v100[2] = __79__HDLocationSeriesSampleEntity__routeSampleWithID_canBeUnfrozen_profile_error___block_invoke;
  v100[3] = &unk_278624678;
  v100[4] = buf;
  [v14 enumerateWithError:&v101 handler:v100];
  v16 = v101;
  v17 = v16;
  v18 = *(*&buf[8] + 40);
  v83 = v18;
  if (v18)
  {
    v19 = v18;
    goto LABEL_15;
  }

  if (v16)
  {
    v17 = v16;
    goto LABEL_11;
  }

  v17 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Could not find series with ID %@", v11}];
  if (v17)
  {
LABEL_11:
    if (a5)
    {
      v26 = v17;
      *a5 = v17;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v18 = 0;
LABEL_15:

  _Block_object_dispose(buf, 8);
  if (!v18)
  {
    v44 = v83;
    _HKInitializeLogging();
    v45 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v46 = *a5;
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v46;
      _os_log_impl(&dword_228986000, v45, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@: Failed getting unfrozen route sample, error:%@", buf, 0x16u);
    }

    v25 = 0;
    goto LABEL_62;
  }

  v27 = [v83 UUID];
  v77 = [v27 copy];

  v76 = [v10 longLongValue];
  v79 = [v83 metadata];
  v28 = [v83 sourceRevision];
  v29 = [v28 source];
  v78 = [v29 _sourceID];

  [v10 longLongValue];
  v30 = v97[3];
  v31 = v93[3];
  v32 = v89[3];
  v80 = v83;
  v82 = v12;
  v33 = v8;
  v81 = v33;
  if (self)
  {
    v34 = [v33 databaseForEntity:self];
    v35 = [(HDSQLiteEntity *)self valueForProperty:@"provenance" database:v34];

    if (v35)
    {
      v36 = [v82 dataProvenanceManager];
      v37 = [v36 originProvenanceForPersistentID:v35 transaction:v81 error:a5];

      if (v37)
      {
        v75 = [MEMORY[0x277CCAD78] UUID];
        [v80 _setUUID:?];
        [v80 _setStartTimestamp:v30];
        [v80 _setEndTimestamp:v31];
        [v80 _setCount:v32];
        [v80 _setMetadata:0];
        v38 = [v82 dataManager];
        *buf = v80;
        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
        v40 = [v80 _creationDate];
        [v40 timeIntervalSinceReferenceDate];
        v41 = [v38 insertDataObjects:v39 withProvenance:v37 creationDate:a5 error:?];

        if (v41)
        {
          v42 = v75;
          v43 = v75;
        }

        else
        {
          v43 = 0;
          v42 = v75;
        }
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a5 code:100 format:{@"Unable to get %@ for %@ with persistentID %lld", @"provenance", objc_opt_class(), -[HDSQLiteEntity persistentID](self, "persistentID")}];
      v43 = 0;
    }
  }

  else
  {
    v43 = 0;
  }

  if (!v43)
  {
    _HKInitializeLogging();
    v59 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v60 = *a5;
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v60;
      _os_log_impl(&dword_228986000, v59, OS_LOG_TYPE_DEFAULT, "[routes] %{public}@: Frozen series uuid is nil, error:%@", buf, 0x16u);
    }

    v25 = 0;
    goto LABEL_61;
  }

  v47 = HDDataEntityPredicateForDataUUID();
  v48 = [(HDDataEntity *)HDLocationSeriesSampleEntity anyInDatabase:v84 predicate:v47 error:a5];

  if (!v48)
  {
    _HKInitializeLogging();
    v61 = *MEMORY[0x277CCC330];
    if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_59;
    }

    v62 = *a5;
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v62;
    v63 = "[routes] %{public}@: Frozen series entity is nil, error:%@";
LABEL_57:
    v70 = v61;
    v71 = 22;
    goto LABEL_58;
  }

  if (([v48 updateSampleCount:v89[3] withDatabase:v84 error:a5] & 1) == 0)
  {
    _HKInitializeLogging();
    v61 = *MEMORY[0x277CCC330];
    if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_59;
    }

    v64 = *a5;
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v64;
    v63 = "[routes] %{public}@: Updating sample count for Frozen entity failed, error:%@";
    goto LABEL_57;
  }

  v103[0] = @"start_date";
  v103[1] = @"end_date";
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:2];
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __68__HDLocationSeriesSampleEntity_freezeWithTransaction_profile_error___block_invoke_338;
  v86[3] = &unk_278624650;
  v86[4] = &v96;
  v86[5] = &v92;
  v50 = [v48 updateProperties:v49 database:v84 error:a5 bindingHandler:v86];

  if ((v50 & 1) == 0)
  {
    _HKInitializeLogging();
    v61 = *MEMORY[0x277CCC330];
    if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_59;
    }

    v65 = *a5;
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v65;
    v63 = "[routes] %{public}@: Updating properties for frozen entity failed, error:%@";
    goto LABEL_57;
  }

  v51 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDSQLiteEntity persistentID](self, "persistentID")}];
  v52 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v48, "persistentID")}];
  v53 = [(HDSeriesSampleEntity *)HDLocationSeriesSampleEntity replaceObjectID:v51 replacementObjectID:v52 deleteOriginalSeriesData:0 insertDeletedObject:0 profile:v82 transaction:v81 error:a5];

  if (!v53)
  {
    _HKInitializeLogging();
    v61 = *MEMORY[0x277CCC330];
    if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_59;
    }

    v66 = *a5;
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v66;
    v63 = "[routes] %{public}@: Replacing old entity with new entity failed, error:%@";
    goto LABEL_57;
  }

  if (v79)
  {
    v54 = [v82 metadataManager];
    v55 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v48, "persistentID")}];
    v56 = [v54 insertMetadata:v79 forObjectID:v55 sourceID:v78 externalSyncObjectCode:objc_msgSend(v80 objectDeleted:"_externalSyncObjectCode") error:{0, a5}];

    if ((v56 & 1) == 0)
    {
      _HKInitializeLogging();
      v68 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v69 = *a5;
        *buf = 138543874;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v79;
        *&buf[22] = 2112;
        v105 = v69;
        v63 = "[routes] %{public}@: Adding metadata failed, metadata:%@ error:%@";
        v70 = v68;
        v71 = 32;
LABEL_58:
        _os_log_impl(&dword_228986000, v70, OS_LOG_TYPE_DEFAULT, v63, buf, v71);
        goto LABEL_59;
      }

      goto LABEL_59;
    }
  }

  v102 = @"frozen";
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];
  v58 = [v48 updateProperties:v57 database:v84 error:a5 bindingHandler:&__block_literal_global_147];

  if ((v58 & 1) == 0)
  {
    _HKInitializeLogging();
    v61 = *MEMORY[0x277CCC330];
    if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_59;
    }

    v67 = *a5;
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v67;
    v63 = "[routes] %{public}@: Marking series as frozen failed, error:%@";
    goto LABEL_57;
  }

  if (([HDLocationSeriesSampleEntity _updateFrozenEntityToMatchReplacedUnfrozenEntity:v48 unfrozenSeriesUUID:v77 unfrozenSeriesHFDKey:v76 database:v84 error:a5]& 1) == 0)
  {
    _HKInitializeLogging();
    v61 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v72 = *a5;
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v72;
      v63 = "[routes] %{public}@: Update the new entity so it has the same UUID and hfd_key as the replaced entity failed, error:%@";
      goto LABEL_57;
    }

LABEL_59:
    v25 = 0;
    goto LABEL_60;
  }

  v25 = v48;
LABEL_60:

LABEL_61:
  v44 = v83;
LABEL_62:

LABEL_63:
  _Block_object_dispose(&v88, 8);
  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v96, 8);

  v73 = *MEMORY[0x277D85DE8];

  return v25;
}

void *__68__HDLocationSeriesSampleEntity_freezeWithTransaction_profile_error___block_invoke(void *result, uint64_t a2, double a3, double a4)
{
  *(*(result[4] + 8) + 24) = a3;
  *(*(result[5] + 8) + 24) = a4;
  *(*(result[6] + 8) + 24) = a2;
  return result;
}

+ (uint64_t)_getRangeAndCountForKey:(void *)a3 transaction:(void *)a4 error:(void *)a5 handler:
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  objc_opt_self();
  v11 = [v8 longLongValue];
  v12 = [v9 protectedDatabase];
  v21 = 0;
  v13 = [HDLocationSeriesDataEntity getRangeAndCountForSeriesIdentifier:v11 database:v12 error:&v21 handler:v10];
  v14 = v21;

  if (v13)
  {
    goto LABEL_4;
  }

  if ([v14 hk_isHealthKitErrorWithCode:1100])
  {
    Current = CFAbsoluteTimeGetCurrent();
    v10[2](v10, 0, Current, Current);
LABEL_4:
    v16 = 1;
    goto LABEL_10;
  }

  v17 = v14;
  v18 = v17;
  if (v17)
  {
    if (a4)
    {
      v19 = v17;
      *a4 = v18;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v16 = 0;
LABEL_10:

  return v16;
}

void __68__HDLocationSeriesSampleEntity_freezeWithTransaction_profile_error___block_invoke_338(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B60](a2, @"start_date", *(*(*(a1 + 32) + 8) + 24));
  v3 = *(*(*(a1 + 40) + 8) + 24);

  JUMPOUT(0x22AAC6B60);
}

+ (uint64_t)_updateFrozenEntityToMatchReplacedUnfrozenEntity:(void *)a3 unfrozenSeriesUUID:(uint64_t)a4 unfrozenSeriesHFDKey:(void *)a5 database:(uint64_t)a6 error:
{
  v24[1] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a5;
  objc_opt_self();
  v24[0] = @"uuid";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __136__HDLocationSeriesSampleEntity__updateFrozenEntityToMatchReplacedUnfrozenEntity_unfrozenSeriesUUID_unfrozenSeriesHFDKey_database_error___block_invoke;
  v21[3] = &unk_2786246A0;
  v14 = v11;
  v22 = v14;
  v15 = [v10 updateProperties:v13 database:v12 error:a6 bindingHandler:v21];

  if (v15)
  {
    v23 = @"hfd_key";
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __136__HDLocationSeriesSampleEntity__updateFrozenEntityToMatchReplacedUnfrozenEntity_unfrozenSeriesUUID_unfrozenSeriesHFDKey_database_error___block_invoke_2;
    v20[3] = &__block_descriptor_40_e34_v16__0__HDSQLiteStatementBinder__8l;
    v20[4] = a4;
    v17 = [v10 updateProperties:v16 database:v12 error:a6 bindingHandler:v20];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (BOOL)validateEntityWithProfile:(id)a3 error:(id *)a4 validationErrorHandler:(id)a5
{
  v25 = a3;
  v8 = a5;
  v9 = MEMORY[0x277CCACA8];
  v24 = v8;
  v10 = +[(HDSQLiteSchemaEntity *)HDLocationSeriesSampleEntity];
  v11 = +[(HDSQLiteSchemaEntity *)HDLocationSeriesSampleEntity];
  v12 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v23 = a4;
  v13 = +[(HDSQLiteSchemaEntity *)HDLocationSeriesSampleEntity];
  v14 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v15 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v16 = +[(HDSQLiteSchemaEntity *)HDLocationSeriesSampleEntity];
  v17 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v18 = [v9 stringWithFormat:@"SELECT %@.%@, %@, %@, %@, %@, %@ FROM %@ LEFT JOIN %@ ON %@.%@ = %@.%@ LEFT JOIN %@ ON %@.%@ = %@.%@", v10, @"data_id", @"count", @"hfd_key", @"start_date", @"end_date", @"uuid", v11, v12, v13, @"data_id", v14, @"data_id", v15, v16, @"data_id", v17, @"data_id"];

  v19 = [v25 database];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __87__HDLocationSeriesSampleEntity_validateEntityWithProfile_error_validationErrorHandler___block_invoke;
  v26[3] = &unk_2786246F0;
  v20 = v18;
  v27 = v20;
  v29 = a1;
  v21 = v24;
  v28 = v21;
  LOBYTE(v17) = [a1 performReadTransactionWithHealthDatabase:v19 error:v23 block:v26];

  return v17;
}

uint64_t __87__HDLocationSeriesSampleEntity_validateEntityWithProfile_error_validationErrorHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__HDLocationSeriesSampleEntity_validateEntityWithProfile_error_validationErrorHandler___block_invoke_2;
  v11[3] = &unk_2786246C8;
  v14 = *(a1 + 48);
  v8 = v5;
  v12 = v8;
  v13 = *(a1 + 40);
  v9 = [v6 executeSQL:v7 error:a3 bindingHandler:0 enumerationHandler:v11];

  return v9;
}

uint64_t __87__HDLocationSeriesSampleEntity_validateEntityWithProfile_error_validationErrorHandler___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x22AAC6C80](a2, 0);
  v45 = HDSQLiteColumnWithNameAsNumber();
  v6 = HDSQLiteColumnWithNameAsNumber();
  HDSQLiteColumnWithNameAsDouble();
  v8 = v7;
  HDSQLiteColumnWithNameAsDouble();
  v10 = v9;
  v11 = HDSQLiteColumnWithNameAsUUID();
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v12 = a1[6];
  v13 = a1[4];
  v46[6] = &v48;
  v47 = 0;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __87__HDLocationSeriesSampleEntity_validateEntityWithProfile_error_validationErrorHandler___block_invoke_3;
  v46[3] = &unk_278624628;
  v46[4] = &v56;
  v46[5] = &v52;
  v14 = [(HDLocationSeriesSampleEntity *)v12 _getRangeAndCountForKey:v6 transaction:v13 error:&v47 handler:v46];
  v15 = v47;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    v33 = a1[5];
    v32 = a1[6];
    v34 = MEMORY[0x277CCACA8];
    v35 = [v15 localizedDescription];
    v36 = [v34 stringWithFormat:@"Could not access location series data (%@)", v35];
    v37 = [v32 createValidationError:v36 rowId:v5];
    (*(v33 + 16))(v33, v37);

    v38 = v16;
    v29 = v38;
    if (v38)
    {
      if (a3)
      {
        v39 = v38;
        *a3 = v29;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_18;
  }

  v17 = v57[3];
  if (!v17)
  {
    v41 = a1[5];
    v40 = a1[6];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing HFD samples history, entity's count is %@", v45];
    v31 = [v40 createValidationError:v29 rowId:v5];
    (*(v41 + 16))(v41, v31);
    goto LABEL_16;
  }

  if (v17 != [v45 longValue])
  {
    v19 = a1[5];
    v18 = a1[6];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFD samples count mismatch: count in HFD=%lld, count in SQLite=%@", v57[3], v45];
    v21 = [v18 createValidationError:v20 rowId:v5];
    (*(v19 + 16))(v19, v21);
  }

  v22 = v8 - v53[3];
  if (v22 < 0.0)
  {
    v22 = -v22;
  }

  if (v22 > 2.22044605e-16)
  {
    goto LABEL_11;
  }

  v23 = v10 - v49[3];
  if (v23 < 0.0)
  {
    v23 = -v23;
  }

  if (v23 > 2.22044605e-16)
  {
LABEL_11:
    v24 = MEMORY[0x277CCACA8];
    v25 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v8];
    v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v10];
    v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v53[3]];
    v28 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v49[3]];
    v29 = [v24 stringWithFormat:@"Series date interval mismatch start_date=%@ end_date=%@ hfd_start_date=%@ hfd_end_date=%@", v25, v26, v27, v28];

    v30 = a1[5];
    v31 = [a1[6] createValidationError:v29 rowId:v5];
    (*(v30 + 16))(v30, v31);
LABEL_16:

LABEL_18:
  }

  if (!v11)
  {
    v42 = a1[5];
    v43 = [a1[6] createValidationError:@"UUID not set" rowId:v5];
    (*(v42 + 16))(v42, v43);
  }

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);

  return 1;
}

void *__87__HDLocationSeriesSampleEntity_validateEntityWithProfile_error_validationErrorHandler___block_invoke_3(void *result, uint64_t a2, double a3, double a4)
{
  *(*(result[4] + 8) + 24) = a2;
  *(*(result[5] + 8) + 24) = a3;
  *(*(result[6] + 8) + 24) = a4;
  return result;
}

@end