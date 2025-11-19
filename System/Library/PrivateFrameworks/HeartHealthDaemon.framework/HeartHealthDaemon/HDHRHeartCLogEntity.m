@interface HDHRHeartCLogEntity
+ (BOOL)_enumerateJournalsWithPredicate:(id)a3 limit:(unint64_t)a4 orderingTerms:(id)a5 transaction:(id)a6 error:(id *)a7 enumerationHandler:(id)a8;
+ (BOOL)_insertTimeIntervals:(id)a3 journalPrimaryKey:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)insertBloodPressureJournal:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (id)_insertJournal:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)_journalEntityProperties;
+ (id)_journalFromRow:(HDSQLiteRow *)a3 persistentID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (id)privateSubEntities;
@end

@implementation HDHRHeartCLogEntity

+ (id)_journalEntityProperties
{
  v5[7] = *MEMORY[0x277D85DE8];
  v5[0] = @"uuid";
  v5[1] = @"start_date";
  v5[2] = @"end_date";
  v5[3] = @"modified_date";
  v5[4] = @"c_log_type";
  v5[5] = @"schedule_type";
  v5[6] = @"c_log_state";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:7];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_journalFromRow:(HDSQLiteRow *)a3 persistentID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = HDSQLiteColumnWithNameAsUUID();
  v9 = HDSQLiteColumnWithNameAsDate();
  v10 = HDSQLiteColumnWithNameAsDate();
  HDSQLiteColumnWithNameAsDouble();
  v12 = v11;
  v13 = HDSQLiteColumnWithNameAsInt64();
  v14 = HDSQLiteColumnWithNameAsInt64();
  v15 = HDSQLiteColumnWithNameAsInt64();
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __70__HDHRHeartCLogEntity__journalFromRow_persistentID_transaction_error___block_invoke;
  v28[3] = &unk_27865FA08;
  v17 = v16;
  v29 = v17;
  v18 = [HDHRHeartCLogScheduleTimeIntervalEntity enumerateJournalScheduleIntervalWithOwnerID:a4 transaction:v7 error:&v30 enumerationHandler:v28];

  v19 = v30;
  if (v18)
  {
    v20 = [objc_alloc(MEMORY[0x277D12F70]) initWithUUID:v8 startDate:v9 endDate:v10 timestamp:v13 journalType:v14 scheduleType:v15 journalState:v12 timeIntervals:v17];
  }

  else
  {
    _HKInitializeLogging();
    v21 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v32 = a1;
      v33 = 2114;
      v34 = v8;
      v35 = 2114;
      v36 = v19;
      _os_log_error_impl(&dword_229486000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch intervals for journal UUID: %{public}@ error: %{public}@", buf, 0x20u);
    }

    v22 = v19;
    if (v22)
    {
      if (a6)
      {
        v23 = v22;
        *a6 = v22;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v20 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)privateSubEntities
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)_enumerateJournalsWithPredicate:(id)a3 limit:(unint64_t)a4 orderingTerms:(id)a5 transaction:(id)a6 error:(id *)a7 enumerationHandler:(id)a8
{
  v14 = a6;
  v15 = a8;
  v16 = a5;
  v17 = a3;
  v18 = [v14 databaseForEntityClass:a1];
  v19 = [a1 queryWithDatabase:v18 predicate:v17 limit:a4 orderingTerms:v16 groupBy:0];

  v20 = [a1 _journalEntityProperties];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __112__HDHRHeartCLogEntity__enumerateJournalsWithPredicate_limit_orderingTerms_transaction_error_enumerationHandler___block_invoke;
  v24[3] = &unk_27865FAF0;
  v26 = v15;
  v27 = a1;
  v25 = v14;
  v21 = v15;
  v22 = v14;
  LOBYTE(a7) = [v19 enumeratePersistentIDsAndProperties:v20 error:a7 enumerationHandler:v24];

  return a7;
}

uint64_t __112__HDHRHeartCLogEntity__enumerateJournalsWithPredicate_limit_orderingTerms_transaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [*(a1 + 48) _journalFromRow:a4 persistentID:a2 transaction:*(a1 + 32) error:a5];
  if (v6)
  {
    v7 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)insertBloodPressureJournal:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = [a1 _insertJournal:v9 transaction:v10 error:a6];
  if (v11)
  {
    v12 = [v9 timeIntervals];
    v13 = [a1 _insertTimeIntervals:v12 journalPrimaryKey:v11 transaction:v10 error:a6];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_insertJournal:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [a4 protectedDatabase];
  v10 = [a1 _journalEntityProperties];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __56__HDHRHeartCLogEntity__insertJournal_transaction_error___block_invoke;
  v25 = &unk_27865FB18;
  v26 = v8;
  v11 = v8;
  v12 = [a1 insertOrReplaceEntity:1 database:v9 properties:v10 error:a5 bindingHandler:&v22];

  if (!v12)
  {
    _HKInitializeLogging();
    v17 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = a1;
      _os_log_impl(&dword_229486000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did not successfully insert journal", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if ([v9 getChangesCount] < 1)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = [v11 UUID];
    [v18 hk_assignError:a5 code:124 format:{@"Could not insert journal with UUID %@", v19, v22, v23, v24, v25, v26}];

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  _HKInitializeLogging();
  v13 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v9 lastInsertRowID];
    v15 = [v14 longLongValue];
    *buf = 138543618;
    v28 = a1;
    v29 = 2050;
    v30 = v15;
    _os_log_impl(&dword_229486000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Inserted journal with persistent ID: %{public}lld", buf, 0x16u);
  }

  v16 = [v9 lastInsertRowID];
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

void __56__HDHRHeartCLogEntity__insertJournal_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) UUID];
  MEMORY[0x22AACD1F0](a2, @"uuid", v4);

  v5 = [*(a1 + 32) startDate];
  MEMORY[0x22AACD190](a2, @"start_date", v5);

  v6 = [*(a1 + 32) endDate];
  MEMORY[0x22AACD190](a2, @"end_date", v6);

  [*(a1 + 32) timestamp];
  MEMORY[0x22AACD1A0](a2, @"modified_date");
  MEMORY[0x22AACD1B0](a2, @"c_log_type", [*(a1 + 32) journalType]);
  MEMORY[0x22AACD1B0](a2, @"schedule_type", [*(a1 + 32) scheduleType]);
  [*(a1 + 32) journalState];

  JUMPOUT(0x22AACD1B0);
}

+ (BOOL)_insertTimeIntervals:(id)a3 journalPrimaryKey:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 databaseForEntityClass:objc_opt_class()];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [HDHRHeartCLogScheduleTimeIntervalEntity insertJournalScheduleInterval:*(*(&v22 + 1) + 8 * i) ownerID:v10 database:v12 error:a6, v22];

        if (!v18)
        {
          v19 = 0;
          goto LABEL_11;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

@end