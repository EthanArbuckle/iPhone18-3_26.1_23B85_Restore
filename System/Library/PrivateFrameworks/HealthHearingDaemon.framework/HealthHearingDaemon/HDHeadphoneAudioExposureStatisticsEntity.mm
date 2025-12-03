@interface HDHeadphoneAudioExposureStatisticsEntity
+ (BOOL)_enumerateBucketsForProfile:(id)profile predicate:(id)predicate error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)_replaceExistingWithBuckets:(id)buckets profile:(id)profile error:(id *)error;
+ (BOOL)insertBuckets:(id)buckets transaction:(id)transaction error:(id *)error;
+ (id)_bucketFromAllPropertiesRow:(HDSQLiteRow *)row profile:(id)profile error:(id *)error;
+ (id)_loadBucketsFromProfile:(id)profile error:(id *)error;
+ (id)_pruneWithNowDate:(id)date limit:(unint64_t)limit profile:(id)profile error:(id *)error;
+ (id)_sortOrderingTerms;
+ (id)indices;
+ (id)insertBucket:(id)bucket transaction:(id)transaction error:(id *)error;
- (id)_bucketWithProfile:(id)profile error:(id *)error;
@end

@implementation HDHeadphoneAudioExposureStatisticsEntity

+ (id)indices
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D10B40]);
  v3 = objc_opt_class();
  v14 = @"start_date";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v5 = [v2 initWithEntity:v3 name:@"start" columns:v4];
  v15[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D10B40]);
  v7 = objc_opt_class();
  v13 = @"end_date";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v9 = [v6 initWithEntity:v7 name:@"end" columns:v8];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)insertBucket:(id)bucket transaction:(id)transaction error:(id *)error
{
  bucketCopy = bucket;
  transactionCopy = transaction;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  v10 = [transactionCopy databaseForEntityClass:self];
  v11 = _AllProperties();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __75__HDHeadphoneAudioExposureStatisticsEntity_insertBucket_transaction_error___block_invoke;
  v20[3] = &unk_2796C6598;
  v12 = bucketCopy;
  v21 = v12;
  v22 = &v23;
  v13 = [self insertOrReplaceEntity:0 database:v10 properties:v11 error:error bindingHandler:v20];

  v14 = v24[5];
  v15 = v14;
  v16 = v13;
  if (v14)
  {
    if (error)
    {
      v17 = v14;
      v16 = 0;
      *error = v15;
    }

    else
    {
      _HKLogDroppedError();
      v16 = 0;
    }
  }

  v18 = v16;
  _Block_object_dispose(&v23, 8);

  return v18;
}

void __75__HDHeadphoneAudioExposureStatisticsEntity_insertBucket_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) dateInterval];
  v5 = [v4 startDate];
  MEMORY[0x2530817C0](a2, @"start_date", v5);

  v6 = [*(a1 + 32) dateInterval];
  v7 = [v6 endDate];
  MEMORY[0x2530817C0](a2, @"end_date", v7);

  v8 = *(a1 + 32);
  v9 = *(*(a1 + 40) + 8);
  obj = *(v9 + 40);
  v10 = [v8 archivedRepresentationWithError:&obj];
  objc_storeStrong((v9 + 40), obj);
  MEMORY[0x2530817B0](a2, @"archived_statistics", v10);
}

+ (BOOL)insertBuckets:(id)buckets transaction:(id)transaction error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  bucketsCopy = buckets;
  transactionCopy = transaction;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = bucketsCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [self insertBucket:*(*(&v19 + 1) + 8 * i) transaction:transactionCopy error:{error, v19}];

        if (!v15)
        {
          v16 = 0;
          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)_pruneWithNowDate:(id)date limit:(unint64_t)limit profile:(id)profile error:(id *)error
{
  dateCopy = date;
  profileCopy = profile;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  database = [profileCopy database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__HDHeadphoneAudioExposureStatisticsEntity__pruneWithNowDate_limit_profile_error___block_invoke;
  v17[3] = &unk_2796C65E8;
  v13 = dateCopy;
  v18 = v13;
  selfCopy = self;
  v14 = profileCopy;
  limitCopy = limit;
  v19 = v14;
  v20 = &v23;
  LODWORD(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v17];

  if (error)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:v24[3]];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v23, 8);

  return v15;
}

uint64_t __82__HDHeadphoneAudioExposureStatisticsEntity__pruneWithNowDate_limit_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = HDSampleEntityPredicateForEndDate();
  v8 = *(a1 + 56);
  v9 = [*(a1 + 40) database];
  v29 = 0;
  v10 = [v8 countOfObjectsWithPredicate:v7 healthDatabase:v9 error:&v29];
  v11 = v29;

  v12 = v11;
  if (v12)
  {
    if (a3)
    {
      v13 = v12;
      v14 = 0;
      *a3 = v12;
    }

    else
    {
      _HKLogDroppedError();
      v14 = 0;
    }

    v19 = v12;
  }

  else
  {
    if (v10 < 2)
    {
      v14 = 1;
      goto LABEL_9;
    }

    v15 = [v5 databaseForEntityClass:*(a1 + 56)];
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    v18 = [v16 _sortOrderingTerms];
    v19 = [v16 queryWithDatabase:v15 predicate:v7 limit:v17 orderingTerms:v18 groupBy:0];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __82__HDHeadphoneAudioExposureStatisticsEntity__pruneWithNowDate_limit_profile_error___block_invoke_2;
    v24[3] = &unk_2796C65C0;
    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    v27 = v10;
    v28 = v21;
    v25 = v15;
    v26 = v20;
    v22 = v15;
    v14 = [v19 enumeratePersistentIDsAndProperties:0 error:a3 enumerationHandler:v24];
  }

LABEL_9:
  return v14;
}

uint64_t __82__HDHeadphoneAudioExposureStatisticsEntity__pruneWithNowDate_limit_profile_error___block_invoke_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(*(a1[5] + 8) + 24) + 1 >= a1[6])
  {
    return 1;
  }

  v7 = a1[7];
  v8 = [objc_alloc(objc_opt_class()) initWithPersistentID:a2];
  v9 = [v8 deleteFromDatabase:a1[4] error:a5];
  if (v9)
  {
    ++*(*(a1[5] + 8) + 24);
  }

  return v9;
}

+ (id)_loadBucketsFromProfile:(id)profile error:(id *)error
{
  v6 = MEMORY[0x277CBEB18];
  profileCopy = profile;
  v8 = objc_alloc_init(v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HDHeadphoneAudioExposureStatisticsEntity__loadBucketsFromProfile_error___block_invoke;
  v12[3] = &unk_2796C6480;
  v9 = v8;
  v13 = v9;
  LODWORD(self) = [self _enumerateBucketsForProfile:profileCopy predicate:0 error:error enumerationHandler:v12];

  v10 = 0;
  if (self)
  {
    v10 = [v9 copy];
  }

  return v10;
}

+ (BOOL)_replaceExistingWithBuckets:(id)buckets profile:(id)profile error:(id *)error
{
  bucketsCopy = buckets;
  database = [profile database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__HDHeadphoneAudioExposureStatisticsEntity__replaceExistingWithBuckets_profile_error___block_invoke;
  v12[3] = &unk_2796C6610;
  v13 = bucketsCopy;
  selfCopy = self;
  v10 = bucketsCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v12];

  return error;
}

uint64_t __86__HDHeadphoneAudioExposureStatisticsEntity__replaceExistingWithBuckets_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 40)];
  if ([*(a1 + 40) deleteEntitiesInDatabase:v6 predicate:0 error:a3])
  {
    v7 = [*(a1 + 40) insertBuckets:*(a1 + 32) transaction:v5 error:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_bucketWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v7 = objc_opt_class();
  database = [profileCopy database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__HDHeadphoneAudioExposureStatisticsEntity__bucketWithProfile_error___block_invoke;
  v13[3] = &unk_2796C6660;
  v13[4] = self;
  v15 = &v16;
  v9 = profileCopy;
  v14 = v9;
  LODWORD(error) = [v7 performReadTransactionWithHealthDatabase:database error:error block:v13];

  if (error)
  {
    v10 = v17[5];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  _Block_object_dispose(&v16, 8);

  return v11;
}

BOOL __69__HDHeadphoneAudioExposureStatisticsEntity__bucketWithProfile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v6 = *(a1 + 32);
  v7 = _AllProperties();
  v8 = [v5 databaseForEntity:*(a1 + 32)];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__HDHeadphoneAudioExposureStatisticsEntity__bucketWithProfile_error___block_invoke_2;
  v16[3] = &unk_2796C6638;
  v16[4] = *(a1 + 32);
  v15 = *(a1 + 40);
  v9 = v15;
  v17 = v15;
  v18 = &v19;
  LOBYTE(a1) = [v6 getValuesForProperties:v7 database:v8 error:a3 handler:v16];

  if (a1)
  {
    v10 = v20[5];
    v11 = v10;
    v12 = v10 == 0;
    if (v10)
    {
      if (a3)
      {
        v13 = v10;
        *a3 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v19, 8);
  return v12;
}

void __69__HDHeadphoneAudioExposureStatisticsEntity__bucketWithProfile_error___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = objc_opt_class();
  v7 = a1[5];
  v8 = *(a1[7] + 8);
  obj = *(v8 + 40);
  v9 = [v6 _bucketFromAllPropertiesRow:a3 profile:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

+ (id)_sortOrderingTerms
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"end_date" entityClass:self ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"start_date" entityClass:self ascending:1];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_bucketFromAllPropertiesRow:(HDSQLiteRow *)row profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v9 = HDSQLiteColumnWithNameAsDate();
  v10 = HDSQLiteColumnWithNameAsDate();
  v11 = HDSQLiteColumnWithNameAsData();
  v12 = [HDHeadphoneAudioExposureStatisticsBucket bucketForArchivedRepresentation:v11 profile:profileCopy error:error];

  if (v12)
  {
    dateInterval = [v12 dateInterval];
    startDate = [dateInterval startDate];
    v15 = [startDate isEqualToDate:v9];

    if ((v15 & 1) == 0)
    {
      [HDHeadphoneAudioExposureStatisticsEntity _bucketFromAllPropertiesRow:a2 profile:self error:?];
    }

    dateInterval2 = [v12 dateInterval];
    endDate = [dateInterval2 endDate];
    v18 = [endDate isEqualToDate:v10];

    if ((v18 & 1) == 0)
    {
      [HDHeadphoneAudioExposureStatisticsEntity _bucketFromAllPropertiesRow:a2 profile:self error:?];
    }

    v19 = v12;
  }

  return v12;
}

+ (BOOL)_enumerateBucketsForProfile:(id)profile predicate:(id)predicate error:(id *)error enumerationHandler:(id)handler
{
  profileCopy = profile;
  predicateCopy = predicate;
  handlerCopy = handler;
  database = [profileCopy database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __107__HDHeadphoneAudioExposureStatisticsEntity__enumerateBucketsForProfile_predicate_error_enumerationHandler___block_invoke;
  v18[3] = &unk_2796C66B0;
  v19 = predicateCopy;
  v20 = profileCopy;
  v21 = handlerCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v15 = profileCopy;
  v16 = predicateCopy;
  LOBYTE(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v18];

  return error;
}

uint64_t __107__HDHeadphoneAudioExposureStatisticsEntity__enumerateBucketsForProfile_predicate_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  v6 = [a2 databaseForEntityClass:v5];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 56) _sortOrderingTerms];
  v9 = [v5 queryWithDatabase:v6 predicate:v7 limit:0 orderingTerms:v8 groupBy:0];

  v10 = _AllProperties();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __107__HDHeadphoneAudioExposureStatisticsEntity__enumerateBucketsForProfile_predicate_error_enumerationHandler___block_invoke_2;
  v13[3] = &unk_2796C6688;
  v16 = *(a1 + 56);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v11 = [v9 enumerateProperties:v10 error:a3 enumerationHandler:v13];

  return v11;
}

uint64_t __107__HDHeadphoneAudioExposureStatisticsEntity__enumerateBucketsForProfile_predicate_error_enumerationHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [*(a1 + 48) _bucketFromAllPropertiesRow:a3 profile:*(a1 + 32) error:a4];
  if (v5)
  {
    v6 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)_bucketFromAllPropertiesRow:(uint64_t)a1 profile:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDHeadphoneAudioExposureStatisticsEntity.m" lineNumber:221 description:@"Statistics bucket's startDate did not match the entity's start_date."];
}

+ (void)_bucketFromAllPropertiesRow:(uint64_t)a1 profile:(uint64_t)a2 error:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDHeadphoneAudioExposureStatisticsEntity.m" lineNumber:224 description:@"Statistics bucket's endDate did not match the entity's end_date."];
}

@end