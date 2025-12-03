@interface HDHRSampleClassificationEntity
+ (BOOL)deleteAllClassificationsWithTransaction:(id)transaction error:(id *)error;
+ (BOOL)deleteClassificationWithSampleUUID:(id)d transaction:(id)transaction error:(id *)error;
+ (id)_insertEntityWithSampleUUID:(id)d classification:(int64_t)classification sampleStartDate:(id)date sampleDuration:(double)duration sampleTimeZone:(id)zone transaction:(id)transaction error:(id *)error;
+ (id)allSampleClassificationsWithTransaction:(id)transaction error:(id *)error;
+ (id)databaseTable;
+ (id)foreignKeys;
+ (id)insertSampleClassification:(id)classification transaction:(id)transaction error:(id *)error;
+ (id)pruneWithProfile:(id)profile nowDate:(id)date limit:(unint64_t)limit error:(id *)error;
+ (id)sampleClassificationWithSampleUUID:(id)d transaction:(id)transaction error:(id *)error;
@end

@implementation HDHRSampleClassificationEntity

+ (id)sampleClassificationWithSampleUUID:(id)d transaction:(id)transaction error:(id *)error
{
  dCopy = d;
  transactionCopy = transaction;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v10 = [transactionCopy databaseForEntityClass:self];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__HDHRSampleClassificationEntity_sampleClassificationWithSampleUUID_transaction_error___block_invoke;
  v18[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v18[4] = self;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__HDHRSampleClassificationEntity_sampleClassificationWithSampleUUID_transaction_error___block_invoke_2;
  v16[3] = &unk_27865FBC0;
  v11 = dCopy;
  v17 = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__HDHRSampleClassificationEntity_sampleClassificationWithSampleUUID_transaction_error___block_invoke_3;
  v15[3] = &unk_27865FBE8;
  v15[4] = &v19;
  LODWORD(error) = [v10 executeCachedStatementForKey:&sampleClassificationWithSampleUUID_transaction_error__lookupKey error:error SQLGenerator:v18 bindingHandler:v16 enumerationHandler:v15];

  if (error)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

id __87__HDHRSampleClassificationEntity_sampleClassificationWithSampleUUID_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() disambiguatedDatabaseTable];
  v4 = [v1 stringWithFormat:@"SELECT %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ?", @"sample_uuid", @"classification", @"sample_start_date", @"sample_duration", @"sample_time_zone", v3, @"sample_uuid", 0];

  return v4;
}

uint64_t __87__HDHRSampleClassificationEntity_sampleClassificationWithSampleUUID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v5[1] = 0;
  [*(a1 + 32) getUUIDBytes:v5];
  result = sqlite3_bind_blob(a2, 1, v5, 16, 0xFFFFFFFFFFFFFFFFLL);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __87__HDHRSampleClassificationEntity_sampleClassificationWithSampleUUID_transaction_error___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _SampleClassificationFromRow(a2, a3);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 0;
}

+ (id)allSampleClassificationsWithTransaction:(id)transaction error:(id *)error
{
  v6 = [transaction databaseForEntityClass:self];
  v7 = [self queryWithDatabase:v6 predicate:0 limit:0 orderingTerms:0 groupBy:0];

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = HDHRSampleClassificationEntityPropertiesForModel();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__HDHRSampleClassificationEntity_allSampleClassificationsWithTransaction_error___block_invoke;
  v14[3] = &unk_27865FC10;
  v15 = v8;
  selfCopy = self;
  v10 = v8;
  LODWORD(error) = [v7 enumerateProperties:v9 error:error enumerationHandler:v14];

  if (error)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

uint64_t __80__HDHRSampleClassificationEntity_allSampleClassificationsWithTransaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v4 = _SampleClassificationFromRow(a3, &v8);
  v5 = v8;
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __80__HDHRSampleClassificationEntity_allSampleClassificationsWithTransaction_error___block_invoke_cold_1(a1, v5, v6);
    }
  }

  return 1;
}

+ (id)insertSampleClassification:(id)classification transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  classificationCopy = classification;
  sampleUUID = [classificationCopy sampleUUID];
  classification = [classificationCopy classification];
  sampleDateInterval = [classificationCopy sampleDateInterval];
  startDate = [sampleDateInterval startDate];
  sampleDateInterval2 = [classificationCopy sampleDateInterval];
  [sampleDateInterval2 duration];
  v16 = v15;
  sampleTimeZone = [classificationCopy sampleTimeZone];

  v18 = [self _insertEntityWithSampleUUID:sampleUUID classification:classification sampleStartDate:startDate sampleDuration:sampleTimeZone sampleTimeZone:transactionCopy transaction:error error:v16];

  return v18;
}

+ (BOOL)deleteAllClassificationsWithTransaction:(id)transaction error:(id *)error
{
  v6 = [transaction databaseForEntityClass:self];
  truePredicate = [MEMORY[0x277D10B70] truePredicate];
  v8 = [self queryWithDatabase:v6 predicate:truePredicate];

  LOBYTE(error) = [v8 deleteAllEntitiesWithError:error];
  return error;
}

+ (BOOL)deleteClassificationWithSampleUUID:(id)d transaction:(id)transaction error:(id *)error
{
  v8 = MEMORY[0x277D10B18];
  transactionCopy = transaction;
  v10 = [v8 predicateWithProperty:@"sample_uuid" value:d comparisonType:1];
  v11 = [transactionCopy databaseForEntityClass:self];

  v12 = [self queryWithDatabase:v11 predicate:v10];

  LOBYTE(error) = [v12 deleteAllEntitiesWithError:error];
  return error;
}

+ (id)pruneWithProfile:(id)profile nowDate:(id)date limit:(unint64_t)limit error:(id *)error
{
  profileCopy = profile;
  dateCopy = date;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [currentCalendar hk_dateBySubtractingDays:44 fromDate:dateCopy];

  v14 = MEMORY[0x277D10B18];
  v15 = _HDSQLiteValueForDate();
  v16 = [v14 predicateWithProperty:@"sample_start_date" value:v15 comparisonType:4];

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  database = [profileCopy database];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __71__HDHRSampleClassificationEntity_pruneWithProfile_nowDate_limit_error___block_invoke;
  v24 = &unk_27865FC38;
  selfCopy = self;
  v18 = v16;
  limitCopy = limit;
  v25 = v18;
  v26 = &v29;
  LODWORD(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:&v21];

  if (error)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithInt:{*(v30 + 6), v21, v22, v23, v24}];
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v29, 8);

  return v19;
}

uint64_t __71__HDHRSampleClassificationEntity_pruneWithProfile_nowDate_limit_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:a1[6]];
  v6 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v6 setEntityClass:objc_opt_class()];
  [v6 setPredicate:a1[4]];
  [v6 setLimitCount:a1[7]];
  v7 = [objc_alloc(MEMORY[0x277D10B78]) initWithDatabase:v5 descriptor:v6];
  v8 = [v7 deleteAllEntitiesWithError:a3];
  *(*(a1[5] + 8) + 24) = [v5 getChangesCount];

  return v8;
}

+ (id)databaseTable
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_sample_classifications", @"heart"];

  return v2;
}

+ (id)foreignKeys
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"sample_uuid";
  v2 = objc_alloc(MEMORY[0x277D10B38]);
  v3 = [v2 initWithEntityClass:objc_opt_class() property:*MEMORY[0x277D10420] deletionAction:2];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_insertEntityWithSampleUUID:(id)d classification:(int64_t)classification sampleStartDate:(id)date sampleDuration:(double)duration sampleTimeZone:(id)zone transaction:(id)transaction error:(id *)error
{
  dCopy = d;
  dateCopy = date;
  zoneCopy = zone;
  v19 = [transaction databaseForEntityClass:self];
  v20 = HDHRSampleClassificationEntityPropertiesForModel();
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __141__HDHRSampleClassificationEntity__insertEntityWithSampleUUID_classification_sampleStartDate_sampleDuration_sampleTimeZone_transaction_error___block_invoke;
  v26[3] = &unk_27865FCF0;
  v27 = dCopy;
  v28 = dateCopy;
  durationCopy = duration;
  v29 = zoneCopy;
  classificationCopy = classification;
  v21 = zoneCopy;
  v22 = dateCopy;
  v23 = dCopy;
  v24 = [self insertOrReplaceEntity:1 database:v19 properties:v20 error:error bindingHandler:v26];

  return v24;
}

void __141__HDHRSampleClassificationEntity__insertEntityWithSampleUUID_classification_sampleStartDate_sampleDuration_sampleTimeZone_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AACD1F0](a2, @"sample_uuid", *(a1 + 32));
  MEMORY[0x22AACD1B0](a2, @"classification", *(a1 + 56));
  MEMORY[0x22AACD190](a2, @"sample_start_date", *(a1 + 40));
  MEMORY[0x22AACD1A0](a2, @"sample_duration", *(a1 + 64));
  v4 = [*(a1 + 48) name];
  MEMORY[0x22AACD1E0](a2, @"sample_time_zone", v4);
}

void __80__HDHRSampleClassificationEntity_allSampleClassificationsWithTransaction_error___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_229486000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpectedly unable to load sample classification: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end