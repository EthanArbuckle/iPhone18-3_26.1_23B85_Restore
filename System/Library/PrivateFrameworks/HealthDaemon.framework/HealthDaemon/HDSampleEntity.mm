@interface HDSampleEntity
+ (BOOL)_validateEntityWithEnumerator:(id)a3 error:(id *)a4 validationErrorHandler:(id)a5;
+ (BOOL)enumerateAssociatedObjectsForIdentifier:(int64_t)a3 inDatabase:(id)a4 predicate:(id)a5 error:(id *)a6 associatedObjectHandler:(id)a7;
+ (BOOL)validateEntitiesOfTypes:(id)a3 profile:(id)a4 error:(id *)a5 validationErrorHandler:(id)a6;
+ (id)anySampleOfType:(id)a3 profile:(id)a4 encodingOptions:(id)a5 predicate:(id)a6 error:(id *)a7;
+ (id)columnNamesForTimeOffset;
+ (id)dateIntervalsForSampleTypes:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)entityEnumeratorWithType:(id)a3 profile:(id)a4;
+ (id)entityEnumeratorWithTypes:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)indices;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
+ (id)maxAnchorForSamplesWithType:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)minimumSampleStartDateForProfile:(id)a3 error:(id *)a4;
+ (id)mostRecentSampleWithType:(id)a3 profile:(id)a4 encodingOptions:(id)a5 predicate:(id)a6 anchor:(id *)a7 error:(id *)a8;
+ (id)objectInsertionFilterForProfile:(id)a3;
+ (id)oldestSampleWithType:(id)a3 profile:(id)a4 encodingOptions:(id)a5 predicate:(id)a6 error:(id *)a7;
+ (id)orderingTermForSortDescriptor:(id)a3;
+ (id)populatedSampleTypes:(id)a3 inDateInterval:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)sampleCountsByTypeForProfile:(id)a3 error:(id *)a4;
+ (id)sampleTypesForSamplesMatchingPredicate:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)samplesWithType:(id)a3 profile:(id)a4 encodingOptions:(id)a5 predicate:(id)a6 limit:(unint64_t)a7 anchor:(id *)a8 error:(id *)a9;
+ (id)sourceIDsForSamplesWithType:(id)a3 profile:(id)a4 predicate:(id)a5 error:(id *)a6;
+ (int64_t)countOfSamplesWithType:(id)a3 profile:(id)a4 matchingPredicate:(id)a5 withError:(id *)a6;
+ (void)deleteSamplesWithPredicate:(id)a3 limit:(unint64_t)a4 deletionContext:(id)a5 completionHandler:(id)a6;
+ (void)deleteSamplesWithTypes:(id)a3 sourceEntities:(id)a4 profile:(id)a5 recursiveDeleteAuthorizationBlock:(id)a6 completionHandler:(id)a7;
@end

@implementation HDSampleEntity

+ (id)indices
{
  v20[3] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D10B40]);
  v3 = objc_opt_class();
  v19[0] = @"data_type";
  v19[1] = @"start_date";
  v19[2] = @"end_date";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v5 = [v2 initWithEntity:v3 name:@"type_dates" columns:v4];
  v20[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D10B40]);
  v7 = objc_opt_class();
  v18[0] = @"data_type";
  v18[1] = @"end_date";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v9 = [v6 initWithEntity:v7 name:@"type_end" columns:v8];
  v20[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D10B40]);
  v11 = objc_opt_class();
  v17[0] = @"data_type";
  v17[1] = @"data_id";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v13 = [v10 initWithEntity:v11 name:@"type_anchor" columns:v12];
  v20[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"HDSampleEntity.m" lineNumber:100 description:{@"Subclasses must override %s", "+[HDSampleEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __80__HDSampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v22[3] = &unk_278613038;
  v23 = v14;
  v24 = v12;
  v16 = v12;
  v17 = v14;
  if ([v13 executeSQL:@"INSERT INTO samples (data_id error:data_type bindingHandler:start_date enumerationHandler:{end_date) VALUES (?, ?, ?, ?)", a7, v22, 0}])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  return v18;
}

uint64_t __80__HDSampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  v4 = [*(a1 + 40) sampleType];
  sqlite3_bind_int64(a2, 2, [v4 code]);

  [*(a1 + 40) _startTimestamp];
  sqlite3_bind_double(a2, 3, v5);
  [*(a1 + 40) _endTimestamp];

  return sqlite3_bind_double(a2, 4, v6);
}

+ (id)orderingTermForSortDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 key];
  v6 = [v4 ascending];
  if ([v5 isEqualToString:*MEMORY[0x277CCCD50]])
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    v9 = @"start_date";
LABEL_5:
    v10 = v7;
LABEL_6:
    v11 = [v10 orderingTermWithProperty:v9 entityClass:v8 ascending:v6];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CCCD38]])
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    v9 = @"end_date";
    goto LABEL_5;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CCC5B8]])
  {
    v14 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    v10 = v14;
    v9 = @"data_id";
    goto LABEL_6;
  }

  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___HDSampleEntity;
  v11 = objc_msgSendSuper2(&v15, sel_orderingTermForSortDescriptor_, v4);
LABEL_7:
  v12 = v11;

  return v12;
}

+ (id)mostRecentSampleWithType:(id)a3 profile:(id)a4 encodingOptions:(id)a5 predicate:(id)a6 anchor:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__57;
  v33 = __Block_byref_object_dispose__57;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__57;
  v27 = __Block_byref_object_dispose__57;
  v28 = 0;
  v18 = [a1 entityEnumeratorWithType:v14 profile:v15];
  [v18 setPredicate:v17];
  [v18 addEncodingOptionsFromDictionary:v16];
  v19 = HDSampleEntityOrderingTermsForRecentness();
  [v18 setOrderingTerms:v19];

  [v18 setLimitCount:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __90__HDSampleEntity_mostRecentSampleWithType_profile_encodingOptions_predicate_anchor_error___block_invoke;
  v22[3] = &unk_27861B5A8;
  v22[4] = &v29;
  v22[5] = &v23;
  [v18 enumerateWithError:a8 handler:v22];
  if (a7)
  {
    *a7 = v24[5];
  }

  v20 = v30[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v20;
}

uint64_t __90__HDSampleEntity_mostRecentSampleWithType_profile_encodingOptions_predicate_anchor_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return 0;
}

+ (id)oldestSampleWithType:(id)a3 profile:(id)a4 encodingOptions:(id)a5 predicate:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__57;
  v25 = __Block_byref_object_dispose__57;
  v26 = 0;
  v16 = [a1 entityEnumeratorWithType:v12 profile:v13];
  [v16 setPredicate:v15];
  [v16 addEncodingOptionsFromDictionary:v14];
  v17 = HDSampleEntityOrderingTermsForOldness();
  [v16 setOrderingTerms:v17];

  [v16 setLimitCount:1];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__HDSampleEntity_oldestSampleWithType_profile_encodingOptions_predicate_error___block_invoke;
  v20[3] = &unk_278613718;
  v20[4] = &v21;
  [v16 enumerateWithError:a7 handler:v20];
  v18 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v18;
}

+ (id)maxAnchorForSamplesWithType:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = HDSampleEntityPredicateForDataType(a3);
  v9 = [v7 database];

  v10 = [(HDHealthEntity *)HDSampleEntity maxRowIDForPredicate:v8 healthDatabase:v9 error:a5];

  return v10;
}

+ (void)deleteSamplesWithTypes:(id)a3 sourceEntities:(id)a4 profile:(id)a5 recursiveDeleteAuthorizationBlock:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__57;
  v60 = __Block_byref_object_dispose__57;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__57;
  v54 = __Block_byref_object_dispose__57;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__57;
  v48 = __Block_byref_object_dispose__57;
  v49 = 0;
  if ([v13 count] || objc_msgSend(v14, "count"))
  {
    if ([v14 count])
    {
      v18 = HDDataEntityPredicateForSourceEntitySet(7, v14);
    }

    else
    {
      v18 = 0;
    }

    v26 = v13;
    if ([v13 count])
    {
      v19 = HDSampleEntityPredicateForDataTypes(v13);
      v20 = v14;
    }

    else
    {
      v20 = v14;
      v19 = 0;
    }

    v21 = [v15 database];
    v43 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __116__HDSampleEntity_deleteSamplesWithTypes_sourceEntities_profile_recursiveDeleteAuthorizationBlock_completionHandler___block_invoke;
    v33[3] = &unk_27861B5F8;
    v22 = v19;
    v34 = v22;
    v23 = v18;
    v35 = v23;
    v42 = a1;
    v36 = v15;
    v37 = v16;
    v38 = &v62;
    v39 = &v56;
    v40 = &v50;
    v41 = &v44;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __116__HDSampleEntity_deleteSamplesWithTypes_sourceEntities_profile_recursiveDeleteAuthorizationBlock_completionHandler___block_invoke_3;
    v28[3] = &unk_27861B620;
    v29 = v20;
    v30 = v27;
    v32 = &v62;
    v31 = v36;
    v24 = [a1 performWriteTransactionWithHealthDatabase:v21 error:&v43 block:v33 inaccessibilityHandler:v28];
    v25 = v43;

    if (v17)
    {
      v17[2](v17, v24, *(v63 + 24), v57[5], v51[5], v45[5], v25);
    }

    v14 = v20;
    v13 = v27;
  }

  else
  {
    v23 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Invalid arguments to delete source entities or types must be non-empty."];;
    v17[2](v17, 0, 0, 0, 0, 0, v23);
    v25 = 0;
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v62, 8);
}

uint64_t __116__HDSampleEntity_deleteSamplesWithTypes_sourceEntities_profile_recursiveDeleteAuthorizationBlock_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:*(a1 + 32) otherPredicate:*(a1 + 40)];
  v7 = MEMORY[0x277D10B20];
  v8 = HDDataEntityPredicateForType(1);
  v9 = [v7 compoundPredicateWithPredicate:v6 otherPredicate:v8];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__57;
  v26 = __Block_byref_object_dispose__57;
  v27 = 0;
  v10 = *MEMORY[0x277D10C08];
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __116__HDSampleEntity_deleteSamplesWithTypes_sourceEntities_profile_recursiveDeleteAuthorizationBlock_completionHandler___block_invoke_2;
  v19[3] = &unk_27861B5D0;
  v19[4] = *(a1 + 64);
  v19[5] = &v22;
  v20 = *(a1 + 72);
  v13 = *(a1 + 96);
  v21 = *(a1 + 88);
  [v13 deleteSamplesWithPredicate:v9 limit:v10 generateDeletedObjects:1 transaction:v5 profile:v11 recursiveDeleteAuthorizationBlock:v12 completionHandler:v19];
  v14 = *(*(*(a1 + 64) + 8) + 24);
  if ((v14 & 1) == 0)
  {
    v15 = v23[5];
    v16 = v15;
    if (v15)
    {
      if (a3)
      {
        v17 = v15;
        *a3 = v16;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v14 = *(*(*(a1 + 64) + 8) + 24);
  }

  _Block_object_dispose(&v22, 8);

  return v14 & 1;
}

void __116__HDSampleEntity_deleteSamplesWithTypes_sourceEntities_profile_recursiveDeleteAuthorizationBlock_completionHandler___block_invoke_2(void *a1, char a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v23 = a7;
  *(*(a1[4] + 8) + 24) = a2;
  if ((a2 & 1) == 0)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a7);
  }

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v12;
  v17 = v12;

  v18 = *(a1[7] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v13;
  v20 = v13;

  v21 = *(a1[8] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v14;
}

uint64_t __116__HDSampleEntity_deleteSamplesWithTypes_sourceEntities_profile_recursiveDeleteAuthorizationBlock_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) hk_map:&__block_literal_global_61];
  v6 = [[_HDSampleTypesDeletionEntry alloc] initWithSourceIDs:v5 types:*(a1 + 40)];
  *(*(*(a1 + 56) + 8) + 24) = 0;
  v7 = [*(a1 + 48) database];
  v8 = [v7 addJournalEntry:v6 error:a3];

  return v8;
}

uint64_t __116__HDSampleEntity_deleteSamplesWithTypes_sourceEntities_profile_recursiveDeleteAuthorizationBlock_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 persistentID];

  return [v2 numberWithLongLong:v3];
}

+ (void)deleteSamplesWithPredicate:(id)a3 limit:(unint64_t)a4 deletionContext:(id)a5 completionHandler:(id)a6
{
  v41[3] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v11)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:a2 object:a1 file:@"HDSampleEntity.m" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"predicate"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v33 = [MEMORY[0x277CCA890] currentHandler];
  [v33 handleFailureInMethod:a2 object:a1 file:@"HDSampleEntity.m" lineNumber:298 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v15 = [v12 transaction];
  v16 = [v15 databaseForEntityClass:a1];
  v17 = [a1 queryWithDatabase:v16 predicate:v11 limit:a4 orderingTerms:0 groupBy:0];

  v41[0] = @"data_type";
  v41[1] = @"uuid";
  v41[2] = @"provenance";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
  v19 = [MEMORY[0x277CBEAA8] date];
  v20 = objc_alloc_init(MEMORY[0x277CCD2D8]);
  v40 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __85__HDSampleEntity_deleteSamplesWithPredicate_limit_deletionContext_completionHandler___block_invoke;
  v36[3] = &unk_27861B648;
  v21 = v12;
  v37 = v21;
  v22 = v19;
  v38 = v22;
  v23 = v20;
  v39 = v23;
  v24 = [v17 enumeratePersistentIDsAndProperties:v18 error:&v40 enumerationHandler:v36];
  v25 = v40;
  [v21 finish];
  if (v14)
  {
    if (v24)
    {
      v26 = [v21 lastInsertedDeletedObjectPersistentID];
      v34 = v18;
      v27 = v17;
      v28 = [v21 deletedObjectCount];
      [v21 deletedObjectTypeSet];
      v29 = v35 = v11;
      v30 = v28;
      v17 = v27;
      v18 = v34;
      (v14)[2](v14, 1, v26, v30, v29, v23, v25);

      v11 = v35;
    }

    else
    {
      (v14)[2](v14, 0, 0, 0, 0, 0, v25);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __85__HDSampleEntity_deleteSamplesWithPredicate_limit_deletionContext_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [MEMORY[0x277CCD8D8] dataTypeWithCode:HDSQLiteColumnAsInt64()];
  v10 = [objc_msgSend(v9 "dataObjectClass")];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0x22AAC6CA0](a4, 1);
    v13 = MEMORY[0x22AAC6C80](a4, 2);
    v14 = [*(a1 + 32) deleteObjectWithPersistentID:a2 objectUUID:v12 entityClass:v11 objectType:v9 provenanceIdentifier:v13 deletionDate:*(a1 + 40) deletedSampleIntervals:*(a1 + 48) error:a5];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

+ (BOOL)enumerateAssociatedObjectsForIdentifier:(int64_t)a3 inDatabase:(id)a4 predicate:(id)a5 error:(id *)a6 associatedObjectHandler:(id)a7
{
  v31[2] = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a7;
  v13 = a4;
  v14 = HDAssociationEntityPredicateForChildObjectsAssociatedWithParentObject(a3);
  v15 = v14;
  if (v11)
  {
    v16 = MEMORY[0x277D10B20];
    v31[0] = v11;
    v31[1] = v14;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v18 = [v16 predicateMatchingAllPredicates:v17];

    v15 = v18;
  }

  v30[0] = @"data_id";
  v30[1] = @"data_type";
  v30[2] = @"uuid";
  v30[3] = @"provenance";
  v30[4] = @"data_provenances.source_id";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:5];
  aBlock = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __109__HDSampleEntity_enumerateAssociatedObjectsForIdentifier_inDatabase_predicate_error_associatedObjectHandler___block_invoke;
  v28 = &unk_2786145A8;
  v29 = v12;
  v20 = v12;
  v21 = _Block_copy(&aBlock);
  v22 = [(HDSQLiteEntity *)HDSampleEntity enumerateQueryResultsFromColumns:v19 properties:v19 predicate:v15 groupBy:0 orderingTerms:0 limit:0 database:v13 error:a6 enumerationHandler:v21, aBlock, v26, v27, v28];

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t __109__HDSampleEntity_enumerateAssociatedObjectsForIdentifier_inDatabase_predicate_error_associatedObjectHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  HDSQLiteColumnAsInt64();
  v5 = [MEMORY[0x277CCD720] dataTypeWithCode:HDSQLiteColumnAsInt64()];
  [objc_msgSend(v5 "dataObjectClass")];
  v6 = MEMORY[0x22AAC6CA0](a3, 2);
  v7 = MEMORY[0x22AAC6C80](a3, 3);
  v8 = MEMORY[0x22AAC6C80](a3, 4);
  v9 = (*(*(a1 + 32) + 16))();

  return v9;
}

+ (id)samplesWithType:(id)a3 profile:(id)a4 encodingOptions:(id)a5 predicate:(id)a6 limit:(unint64_t)a7 anchor:(id *)a8 error:(id *)a9
{
  v40[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [a1 entityEnumeratorWithType:v15 profile:v16];
  [v20 setPredicate:v18];
  [v20 addEncodingOptionsFromDictionary:v17];
  [v20 setLimitCount:a7];
  v21 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D10A40] entityClass:objc_opt_class() ascending:1];
  v40[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  [v20 setOrderingTerms:v22];

  if (a8)
  {
    [v20 setAnchor:*a8];
    v23 = [*a8 longLongValue];
    v37[3] = v23;
  }

  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __87__HDSampleEntity_samplesWithType_profile_encodingOptions_predicate_limit_anchor_error___block_invoke;
  v33 = &unk_2786136F0;
  v24 = v19;
  v34 = v24;
  v35 = &v36;
  v25 = [v20 enumerateWithError:a9 handler:&v30];
  if (a8)
  {
    *a8 = [MEMORY[0x277CCABB0] numberWithLongLong:{v37[3], v30, v31, v32, v33}];
  }

  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  _Block_object_dispose(&v36, 8);
  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

uint64_t __87__HDSampleEntity_samplesWithType_profile_encodingOptions_predicate_limit_anchor_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) < a3)
  {
    *(v6 + 24) = a3;
  }

  return 1;
}

+ (id)entityEnumeratorWithType:(id)a3 profile:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = -[HDDataEntityEnumerator _initWithObjectType:entityClass:profile:]([HDDataEntityEnumerator alloc], "_initWithObjectType:entityClass:profile:", v6, [objc_msgSend(v6 "dataObjectClass")], v5);

  return v7;
}

+ (id)entityEnumeratorWithTypes:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 hk_map:&__block_literal_global_376_1];
  v10 = v9;
  if (!v9 || ![v9 count])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:{@"Unable to determine entity class for object types (%@)", v7, v13}];
    goto LABEL_6;
  }

  if ([v10 count] >= 2)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:{@"Attempt to query across object types (%@) with incompatible entity classes (%@)", v7, v10}];
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v11 = -[HDDataEntityEnumerator _initWithObjectTypes:entityClass:profile:]([HDDataEntityEnumerator alloc], "_initWithObjectTypes:entityClass:profile:", v7, [v10 anyObject], v8);
LABEL_7:

  return v11;
}

uint64_t __58__HDSampleEntity_entityEnumeratorWithTypes_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 dataObjectClass];

  return [v2 hd_dataEntityClass];
}

+ (id)sourceIDsForSamplesWithType:(id)a3 profile:(id)a4 predicate:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = HDSampleEntityPredicateForDataType(a3);
  v13 = v12;
  if (v11)
  {
    v14 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v11 otherPredicate:v12];
  }

  else
  {
    v14 = v12;
  }

  v15 = [a1 sourceIDsForObjectsOfType:1 profile:v10 predicate:v14 error:a6];

  return v15;
}

+ (int64_t)countOfSamplesWithType:(id)a3 profile:(id)a4 matchingPredicate:(id)a5 withError:(id *)a6
{
  v9 = MEMORY[0x277D10B70];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = HDSampleEntityPredicateForDataType(v12);
  v14 = [v9 compoundPredicateWithPredicate:v13 otherPredicate:v10];

  v15 = [v12 dataObjectClass];
  v16 = [v15 hd_dataEntityClass];
  v17 = [v11 database];

  v18 = [v16 countOfObjectsWithPredicate:v14 healthDatabase:v17 error:a6];
  return v18;
}

+ (id)sampleCountsByTypeForProfile:(id)a3 error:(id *)a4
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a3;
  v9 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v10 = [v7 stringWithFormat:@"SELECT %@, COUNT(%@) FROM %@ GROUP BY %@", @"data_type", @"data_type", v9, @"data_type"];;

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [v8 database];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __53__HDSampleEntity_sampleCountsByTypeForProfile_error___block_invoke;
  v18[3] = &unk_2786154B8;
  v19 = v10;
  v20 = v11;
  v21 = a1;
  v22 = a2;
  v13 = v11;
  v14 = v10;
  LODWORD(a4) = [a1 performReadTransactionWithHealthDatabase:v12 error:a4 block:v18];

  if (a4)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

uint64_t __53__HDSampleEntity_sampleCountsByTypeForProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__HDSampleEntity_sampleCountsByTypeForProfile_error___block_invoke_3;
  v11[3] = &unk_27861B670;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v12 = v7;
  v13 = v8;
  v9 = [v5 executeSQL:v6 error:a3 bindingHandler:&__block_literal_global_389 enumerationHandler:v11];

  return v9;
}

uint64_t __53__HDSampleEntity_sampleCountsByTypeForProfile_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = HDSQLiteColumnAsInt64();
  if (_HKValidDataTypeCode())
  {
    v5 = MEMORY[0x22AAC6C80](a2, 1);
    if ([v5 integerValue]>= 1)
    {
      v6 = [MEMORY[0x277CCD8D8] dataTypeWithCode:v4];
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
    }
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2A0];
    if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v10 = *(a1 + 40);
    v5 = v7;
    v11 = NSStringFromSelector(v10);
    v12 = 138543618;
    v13 = v11;
    v14 = 2048;
    v15 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@ unknown data type code %ld", &v12, 0x16u);
  }

LABEL_6:
  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (id)dateIntervalsForSampleTypes:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CCACA8];
  v9 = a4;
  v10 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v11 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v12 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v13 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v14 = [v8 stringWithFormat:@"SELECT (SELECT %@ FROM %@ INNER JOIN %@ USING(%@) WHERE %@ = ? AND %@ = ? ORDER BY %@ ASC LIMIT 1) AS min, (SELECT %@ FROM %@ INNER JOIN %@ USING(%@) WHERE %@ = ? AND %@ = ? ORDER BY %@ DESC LIMIT 1) AS max", @"start_date", v10, v11, @"data_id", @"data_type", @"type", @"end_date", @"end_date", v12, v13, @"data_id", @"data_type", @"type", @"end_date", 0];

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__HDSampleEntity_dateIntervalsForSampleTypes_profile_error___block_invoke;
  aBlock[3] = &unk_27861B6C0;
  v33 = v14;
  v34 = v15;
  v35 = a2;
  v16 = v15;
  v17 = v14;
  v18 = _Block_copy(aBlock);
  v19 = [v9 database];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __60__HDSampleEntity_dateIntervalsForSampleTypes_profile_error___block_invoke_397;
  v28[3] = &unk_27861B6E8;
  v30 = v18;
  v31 = a1;
  v29 = v7;
  v20 = v18;
  v21 = v7;
  v22 = [a1 performReadTransactionWithHealthDatabase:v19 error:a5 block:v28];

  if (v22)
  {
    v23 = v16;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  return v23;
}

uint64_t __60__HDSampleEntity_dateIntervalsForSampleTypes_profile_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__HDSampleEntity_dateIntervalsForSampleTypes_profile_error___block_invoke_2;
  v16[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v16[4] = a2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__HDSampleEntity_dateIntervalsForSampleTypes_profile_error___block_invoke_3;
  v12[3] = &unk_27861B698;
  v14 = a2;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = v8;
  v15 = v9;
  v10 = [a3 executeSQL:v7 error:a4 bindingHandler:v16 enumerationHandler:v12];

  return v10;
}

uint64_t __60__HDSampleEntity_dateIntervalsForSampleTypes_profile_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  sqlite3_bind_int64(a2, 2, 1);
  sqlite3_bind_int64(a2, 3, *(a1 + 32));

  return sqlite3_bind_int64(a2, 4, 1);
}

uint64_t __60__HDSampleEntity_dateIntervalsForSampleTypes_profile_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if ((MEMORY[0x22AAC6CD0](a2, 0) & 1) == 0)
  {
    v4 = [MEMORY[0x277CCD8D8] dataTypeWithCode:*(a1 + 40)];
    v5 = MEMORY[0x22AAC6C40](a2, 0);
    v6 = MEMORY[0x22AAC6C40](a2, 1);
    if (v4)
    {
      v7 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:v6];
      [*(a1 + 32) setObject:v7 forKeyedSubscript:v4];
    }

    else
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2A0];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      v11 = *(a1 + 48);
      v7 = v8;
      v12 = NSStringFromSelector(v11);
      v13 = *(a1 + 40);
      v14 = 138543618;
      v15 = v12;
      v16 = 2048;
      v17 = v13;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@ unknown data type code %ld", &v14, 0x16u);
    }

LABEL_6:
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __60__HDSampleEntity_dateIntervalsForSampleTypes_profile_error___block_invoke_397(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  if ([*(a1 + 32) count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (!(*(*(a1 + 40) + 16))(*(a1 + 40), [*(*(&v16 + 1) + 8 * v10) code], v5, a3))
          {
            v11 = 0;
            goto LABEL_12;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
LABEL_12:
  }

  else
  {
    v12 = 0;
    do
    {
      v11 = (*(*(a1 + 40) + 16))();
      if (!v11)
      {
        break;
      }
    }

    while (v12++ != 341);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)populatedSampleTypes:(id)a3 inDateInterval:(id)a4 profile:(id)a5 error:(id *)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v34 = a5;
  v11 = [MEMORY[0x277CBEB18] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(*(*(&v40 + 1) + 8 * i), "code")];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v14);
  }

  v18 = MEMORY[0x277CCACA8];
  v19 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v20 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v21 = [v11 componentsJoinedByString:{@", "}];
  v22 = [v18 stringWithFormat:@"SELECT COUNT(%@), %@ FROM %@ INNER JOIN %@ USING(%@) WHERE %@ = ? AND (%@ > ?) AND (%@ < ?) AND %@ IN (%@) GROUP BY %@", @"start_date", @"data_type", v19, v20, @"data_id", @"type", @"start_date", @"start_date", @"data_type", v21, @"data_type"];

  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
  v24 = [v34 database];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __68__HDSampleEntity_populatedSampleTypes_inDateInterval_profile_error___block_invoke;
  v35[3] = &unk_278613550;
  v36 = v22;
  v37 = v10;
  v38 = v23;
  v39 = a1;
  v25 = v23;
  v26 = v10;
  v27 = v22;
  v28 = [a1 performReadTransactionWithHealthDatabase:v24 error:a6 block:v35];

  if (v28)
  {
    v29 = v25;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;

  v31 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t __68__HDSampleEntity_populatedSampleTypes_inDateInterval_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HDSampleEntity_populatedSampleTypes_inDateInterval_profile_error___block_invoke_2;
  v11[3] = &unk_278614860;
  v6 = *(a1 + 32);
  v12 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__HDSampleEntity_populatedSampleTypes_inDateInterval_profile_error___block_invoke_3;
  v9[3] = &unk_278614098;
  v10 = *(a1 + 48);
  v7 = [v5 executeUncachedSQL:v6 error:a3 bindingHandler:v11 enumerationHandler:v9];

  return v7;
}

void __68__HDSampleEntity_populatedSampleTypes_inDateInterval_profile_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 1);
  v4 = [*(a1 + 32) startDate];
  [v4 timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, 2, v5);

  v7 = [*(a1 + 32) endDate];
  [v7 timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, 3, v6);
}

uint64_t __68__HDSampleEntity_populatedSampleTypes_inDateInterval_profile_error___block_invoke_3(uint64_t a1)
{
  v2 = HDSQLiteColumnAsInt64();
  v3 = HDSQLiteColumnAsInt64();
  if (v2)
  {
    v4 = [MEMORY[0x277CCD8D8] dataTypeWithCode:v3];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  return 1;
}

+ (id)sampleTypesForSamplesMatchingPredicate:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CBEB58];
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v8);
  v12 = [a1 predicateMatchingPreferredEntityTypeIfRequiredWithPredicate:v10];

  v13 = [v9 database];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__HDSampleEntity_sampleTypesForSamplesMatchingPredicate_profile_error___block_invoke;
  v19[3] = &unk_278614698;
  v21 = v11;
  v22 = a1;
  v20 = v12;
  v14 = v11;
  v15 = v12;
  LODWORD(a5) = [a1 performReadTransactionWithHealthDatabase:v13 error:a5 block:v19];

  if (a5)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

BOOL __71__HDSampleEntity_sampleTypesForSamplesMatchingPredicate_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = [*(a1 + 48) distinctProperty:@"data_type" predicate:*(a1 + 32) database:v5 error:a3];
  v7 = v6;
  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [MEMORY[0x277CCD720] dataTypeWithNumber:*(*(&v15 + 1) + 8 * v11)];
          if (v12)
          {
            [*(a1 + 40) addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7 != 0;
}

+ (id)anySampleOfType:(id)a3 profile:(id)a4 encodingOptions:(id)a5 predicate:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__57;
  v24 = __Block_byref_object_dispose__57;
  v25 = 0;
  v16 = [a1 entityEnumeratorWithType:v12 profile:v13];
  [v16 setPredicate:v15];
  [v16 addEncodingOptionsFromDictionary:v14];
  [v16 setLimitCount:1];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__HDSampleEntity_anySampleOfType_profile_encodingOptions_predicate_error___block_invoke;
  v19[3] = &unk_278613718;
  v19[4] = &v20;
  [v16 enumerateWithError:a7 handler:v19];
  v17 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v17;
}

+ (id)minimumSampleStartDateForProfile:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [HDSampleEntity dateIntervalsForSampleTypes:0 profile:a3 error:a4];
  v5 = [v4 allValues];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_16;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = *v23;
  v9 = 1.79769313e308;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v22 + 1) + 8 * i);
      v12 = [v11 startDate];
      [v12 timeIntervalSinceReferenceDate];
      if (v13 == 2.22507386e-308)
      {
      }

      else
      {
        v14 = [v11 startDate];
        [v14 timeIntervalSinceReferenceDate];
        v16 = v15;

        if (v16 >= 0.0)
        {
          v17 = [v11 startDate];
          [v17 timeIntervalSinceReferenceDate];
          v19 = v18;

          if (v9 >= v19)
          {
            v9 = v19;
          }
        }
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v7);
  if (v9 != 1.79769313e308)
  {
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
  }

  else
  {
LABEL_16:
    v7 = 0;
  }

LABEL_17:

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (BOOL)validateEntitiesOfTypes:(id)a3 profile:(id)a4 error:(id *)a5 validationErrorHandler:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [a1 entityEnumeratorWithType:*(*(&v23 + 1) + 8 * i) profile:{v11, v23}];
        v19 = [a1 _validateEntityWithEnumerator:v18 error:a5 validationErrorHandler:v12];

        if (!v19)
        {
          v20 = 0;
          goto LABEL_11;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v20 = 1;
LABEL_11:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (BOOL)_validateEntityWithEnumerator:(id)a3 error:(id *)a4 validationErrorHandler:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HDSampleEntity__validateEntityWithEnumerator_error_validationErrorHandler___block_invoke;
  v11[3] = &unk_278617230;
  v12 = v8;
  v13 = a1;
  v9 = v8;
  LOBYTE(a4) = [a3 enumerateWithError:a4 handler:v11];

  return a4;
}

uint64_t __77__HDSampleEntity__validateEntityWithEnumerator_error_validationErrorHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = HKDefaultObjectValidationConfiguration();
    v8 = [v5 _validateWithConfiguration:{v6, v7}];
    if (v8)
    {
      v26[0] = *MEMORY[0x277CCBD78];
      v9 = [*(a1 + 40) databaseTable];
      v10 = v9;
      v11 = @"No database table name found";
      if (v9)
      {
        v11 = v9;
      }

      v12 = *MEMORY[0x277CCA7E8];
      v27[0] = v11;
      v27[1] = v8;
      v13 = *MEMORY[0x277CCBD80];
      v26[1] = v12;
      v26[2] = v13;
      v14 = [v5 UUID];
      v15 = [v14 UUIDString];
      v16 = v15;
      v17 = @"No UUID found";
      if (v15)
      {
        v17 = v15;
      }

      v27[2] = v17;
      v26[3] = *MEMORY[0x277CCBD70];
      v18 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
      v27[3] = v18;
      v26[4] = *MEMORY[0x277CCBD88];
      v19 = [v5 _valueDescription];
      v20 = v19;
      v21 = @"N/A";
      if (v19)
      {
        v21 = v19;
      }

      v27[4] = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:5];

      v23 = [MEMORY[0x277CCA9B8] hk_error:120 userInfo:v22];
      (*(*(a1 + 32) + 16))();
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (id)objectInsertionFilterForProfile:(id)a3
{
  v3 = [a3 daemon];
  v4 = [v3 behavior];
  v5 = [v4 supportsSampleExpiration];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEA80] currentCalendar];
    v7 = *MEMORY[0x277CCCEE8];
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [v6 hk_startOfDateBySubtractingDays:v7 fromDate:v8];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__HDSampleEntity_objectInsertionFilterForProfile___block_invoke;
    aBlock[3] = &unk_27861B710;
    v14 = v9;
    v10 = v9;
    v11 = _Block_copy(aBlock);
  }

  else
  {
    v11 = &__block_literal_global_424;
  }

  return v11;
}

uint64_t __50__HDSampleEntity_objectInsertionFilterForProfile___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 endDate];
  v6 = [v5 hk_isAfterOrEqualToDate:*(a1 + 32)];

  if ((v6 & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 description:@"The provided object's end date is too early."];
  }

  return v6;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[_HDSampleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

+ (id)columnNamesForTimeOffset
{
  v5[2] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    v5[0] = @"start_date";
    v5[1] = @"end_date";
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end