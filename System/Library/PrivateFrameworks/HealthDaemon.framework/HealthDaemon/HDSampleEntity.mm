@interface HDSampleEntity
+ (BOOL)_validateEntityWithEnumerator:(id)enumerator error:(id *)error validationErrorHandler:(id)handler;
+ (BOOL)enumerateAssociatedObjectsForIdentifier:(int64_t)identifier inDatabase:(id)database predicate:(id)predicate error:(id *)error associatedObjectHandler:(id)handler;
+ (BOOL)validateEntitiesOfTypes:(id)types profile:(id)profile error:(id *)error validationErrorHandler:(id)handler;
+ (id)anySampleOfType:(id)type profile:(id)profile encodingOptions:(id)options predicate:(id)predicate error:(id *)error;
+ (id)columnNamesForTimeOffset;
+ (id)dateIntervalsForSampleTypes:(id)types profile:(id)profile error:(id *)error;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)entityEnumeratorWithType:(id)type profile:(id)profile;
+ (id)entityEnumeratorWithTypes:(id)types profile:(id)profile error:(id *)error;
+ (id)indices;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
+ (id)maxAnchorForSamplesWithType:(id)type profile:(id)profile error:(id *)error;
+ (id)minimumSampleStartDateForProfile:(id)profile error:(id *)error;
+ (id)mostRecentSampleWithType:(id)type profile:(id)profile encodingOptions:(id)options predicate:(id)predicate anchor:(id *)anchor error:(id *)error;
+ (id)objectInsertionFilterForProfile:(id)profile;
+ (id)oldestSampleWithType:(id)type profile:(id)profile encodingOptions:(id)options predicate:(id)predicate error:(id *)error;
+ (id)orderingTermForSortDescriptor:(id)descriptor;
+ (id)populatedSampleTypes:(id)types inDateInterval:(id)interval profile:(id)profile error:(id *)error;
+ (id)sampleCountsByTypeForProfile:(id)profile error:(id *)error;
+ (id)sampleTypesForSamplesMatchingPredicate:(id)predicate profile:(id)profile error:(id *)error;
+ (id)samplesWithType:(id)type profile:(id)profile encodingOptions:(id)options predicate:(id)predicate limit:(unint64_t)limit anchor:(id *)anchor error:(id *)error;
+ (id)sourceIDsForSamplesWithType:(id)type profile:(id)profile predicate:(id)predicate error:(id *)error;
+ (int64_t)countOfSamplesWithType:(id)type profile:(id)profile matchingPredicate:(id)predicate withError:(id *)error;
+ (void)deleteSamplesWithPredicate:(id)predicate limit:(unint64_t)limit deletionContext:(id)context completionHandler:(id)handler;
+ (void)deleteSamplesWithTypes:(id)types sourceEntities:(id)entities profile:(id)profile recursiveDeleteAuthorizationBlock:(id)block completionHandler:(id)handler;
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

+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error
{
  objectCopy = object;
  databaseCopy = database;
  dCopy = d;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSampleEntity.m" lineNumber:100 description:{@"Subclasses must override %s", "+[HDSampleEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __80__HDSampleEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v22[3] = &unk_278613038;
  v23 = dCopy;
  v24 = objectCopy;
  v16 = objectCopy;
  v17 = dCopy;
  if ([databaseCopy executeSQL:@"INSERT INTO samples (data_id error:data_type bindingHandler:start_date enumerationHandler:{end_date) VALUES (?, ?, ?, ?)", error, v22, 0}])
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

+ (id)orderingTermForSortDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [descriptorCopy key];
  ascending = [descriptorCopy ascending];
  if ([v5 isEqualToString:*MEMORY[0x277CCCD50]])
  {
    v7 = MEMORY[0x277D10B68];
    v8 = objc_opt_class();
    v9 = @"start_date";
LABEL_5:
    v10 = v7;
LABEL_6:
    v11 = [v10 orderingTermWithProperty:v9 entityClass:v8 ascending:ascending];
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

  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___HDSampleEntity;
  v11 = objc_msgSendSuper2(&v15, sel_orderingTermForSortDescriptor_, descriptorCopy);
LABEL_7:
  v12 = v11;

  return v12;
}

+ (id)mostRecentSampleWithType:(id)type profile:(id)profile encodingOptions:(id)options predicate:(id)predicate anchor:(id *)anchor error:(id *)error
{
  typeCopy = type;
  profileCopy = profile;
  optionsCopy = options;
  predicateCopy = predicate;
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
  v18 = [self entityEnumeratorWithType:typeCopy profile:profileCopy];
  [v18 setPredicate:predicateCopy];
  [v18 addEncodingOptionsFromDictionary:optionsCopy];
  v19 = HDSampleEntityOrderingTermsForRecentness();
  [v18 setOrderingTerms:v19];

  [v18 setLimitCount:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __90__HDSampleEntity_mostRecentSampleWithType_profile_encodingOptions_predicate_anchor_error___block_invoke;
  v22[3] = &unk_27861B5A8;
  v22[4] = &v29;
  v22[5] = &v23;
  [v18 enumerateWithError:error handler:v22];
  if (anchor)
  {
    *anchor = v24[5];
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

+ (id)oldestSampleWithType:(id)type profile:(id)profile encodingOptions:(id)options predicate:(id)predicate error:(id *)error
{
  typeCopy = type;
  profileCopy = profile;
  optionsCopy = options;
  predicateCopy = predicate;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__57;
  v25 = __Block_byref_object_dispose__57;
  v26 = 0;
  v16 = [self entityEnumeratorWithType:typeCopy profile:profileCopy];
  [v16 setPredicate:predicateCopy];
  [v16 addEncodingOptionsFromDictionary:optionsCopy];
  v17 = HDSampleEntityOrderingTermsForOldness();
  [v16 setOrderingTerms:v17];

  [v16 setLimitCount:1];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__HDSampleEntity_oldestSampleWithType_profile_encodingOptions_predicate_error___block_invoke;
  v20[3] = &unk_278613718;
  v20[4] = &v21;
  [v16 enumerateWithError:error handler:v20];
  v18 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v18;
}

+ (id)maxAnchorForSamplesWithType:(id)type profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v8 = HDSampleEntityPredicateForDataType(type);
  database = [profileCopy database];

  v10 = [(HDHealthEntity *)HDSampleEntity maxRowIDForPredicate:v8 healthDatabase:database error:error];

  return v10;
}

+ (void)deleteSamplesWithTypes:(id)types sourceEntities:(id)entities profile:(id)profile recursiveDeleteAuthorizationBlock:(id)block completionHandler:(id)handler
{
  typesCopy = types;
  entitiesCopy = entities;
  profileCopy = profile;
  blockCopy = block;
  handlerCopy = handler;
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
  if ([typesCopy count] || objc_msgSend(entitiesCopy, "count"))
  {
    if ([entitiesCopy count])
    {
      v18 = HDDataEntityPredicateForSourceEntitySet(7, entitiesCopy);
    }

    else
    {
      v18 = 0;
    }

    v26 = typesCopy;
    if ([typesCopy count])
    {
      v19 = HDSampleEntityPredicateForDataTypes(typesCopy);
      v20 = entitiesCopy;
    }

    else
    {
      v20 = entitiesCopy;
      v19 = 0;
    }

    database = [profileCopy database];
    v43 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __116__HDSampleEntity_deleteSamplesWithTypes_sourceEntities_profile_recursiveDeleteAuthorizationBlock_completionHandler___block_invoke;
    v33[3] = &unk_27861B5F8;
    v22 = v19;
    v34 = v22;
    v23 = v18;
    v35 = v23;
    selfCopy = self;
    v36 = profileCopy;
    v37 = blockCopy;
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
    v24 = [self performWriteTransactionWithHealthDatabase:database error:&v43 block:v33 inaccessibilityHandler:v28];
    v25 = v43;

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v24, *(v63 + 24), v57[5], v51[5], v45[5], v25);
    }

    entitiesCopy = v20;
    typesCopy = v27;
  }

  else
  {
    v23 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Invalid arguments to delete source entities or types must be non-empty."];;
    handlerCopy[2](handlerCopy, 0, 0, 0, 0, 0, v23);
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

+ (void)deleteSamplesWithPredicate:(id)predicate limit:(unint64_t)limit deletionContext:(id)context completionHandler:(id)handler
{
  v41[3] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  contextCopy = context;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (predicateCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSampleEntity.m" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"predicate"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDSampleEntity.m" lineNumber:298 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  transaction = [contextCopy transaction];
  v16 = [transaction databaseForEntityClass:self];
  v17 = [self queryWithDatabase:v16 predicate:predicateCopy limit:limit orderingTerms:0 groupBy:0];

  v41[0] = @"data_type";
  v41[1] = @"uuid";
  v41[2] = @"provenance";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
  date = [MEMORY[0x277CBEAA8] date];
  v20 = objc_alloc_init(MEMORY[0x277CCD2D8]);
  v40 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __85__HDSampleEntity_deleteSamplesWithPredicate_limit_deletionContext_completionHandler___block_invoke;
  v36[3] = &unk_27861B648;
  v21 = contextCopy;
  v37 = v21;
  v22 = date;
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
      lastInsertedDeletedObjectPersistentID = [v21 lastInsertedDeletedObjectPersistentID];
      v34 = v18;
      v27 = v17;
      deletedObjectCount = [v21 deletedObjectCount];
      [v21 deletedObjectTypeSet];
      v29 = v35 = predicateCopy;
      v30 = deletedObjectCount;
      v17 = v27;
      v18 = v34;
      (v14)[2](v14, 1, lastInsertedDeletedObjectPersistentID, v30, v29, v23, v25);

      predicateCopy = v35;
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

+ (BOOL)enumerateAssociatedObjectsForIdentifier:(int64_t)identifier inDatabase:(id)database predicate:(id)predicate error:(id *)error associatedObjectHandler:(id)handler
{
  v31[2] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  handlerCopy = handler;
  databaseCopy = database;
  v14 = HDAssociationEntityPredicateForChildObjectsAssociatedWithParentObject(identifier);
  v15 = v14;
  if (predicateCopy)
  {
    v16 = MEMORY[0x277D10B20];
    v31[0] = predicateCopy;
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
  v29 = handlerCopy;
  v20 = handlerCopy;
  v21 = _Block_copy(&aBlock);
  v22 = [(HDSQLiteEntity *)HDSampleEntity enumerateQueryResultsFromColumns:v19 properties:v19 predicate:v15 groupBy:0 orderingTerms:0 limit:0 database:databaseCopy error:error enumerationHandler:v21, aBlock, v26, v27, v28];

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

+ (id)samplesWithType:(id)type profile:(id)profile encodingOptions:(id)options predicate:(id)predicate limit:(unint64_t)limit anchor:(id *)anchor error:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  profileCopy = profile;
  optionsCopy = options;
  predicateCopy = predicate;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  array = [MEMORY[0x277CBEB18] array];
  v20 = [self entityEnumeratorWithType:typeCopy profile:profileCopy];
  [v20 setPredicate:predicateCopy];
  [v20 addEncodingOptionsFromDictionary:optionsCopy];
  [v20 setLimitCount:limit];
  v21 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D10A40] entityClass:objc_opt_class() ascending:1];
  v40[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  [v20 setOrderingTerms:v22];

  if (anchor)
  {
    [v20 setAnchor:*anchor];
    longLongValue = [*anchor longLongValue];
    v37[3] = longLongValue;
  }

  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __87__HDSampleEntity_samplesWithType_profile_encodingOptions_predicate_limit_anchor_error___block_invoke;
  v33 = &unk_2786136F0;
  v24 = array;
  v34 = v24;
  v35 = &v36;
  v25 = [v20 enumerateWithError:error handler:&v30];
  if (anchor)
  {
    *anchor = [MEMORY[0x277CCABB0] numberWithLongLong:{v37[3], v30, v31, v32, v33}];
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

+ (id)entityEnumeratorWithType:(id)type profile:(id)profile
{
  profileCopy = profile;
  typeCopy = type;
  v7 = -[HDDataEntityEnumerator _initWithObjectType:entityClass:profile:]([HDDataEntityEnumerator alloc], "_initWithObjectType:entityClass:profile:", typeCopy, [objc_msgSend(typeCopy "dataObjectClass")], profileCopy);

  return v7;
}

+ (id)entityEnumeratorWithTypes:(id)types profile:(id)profile error:(id *)error
{
  typesCopy = types;
  profileCopy = profile;
  v9 = [typesCopy hk_map:&__block_literal_global_376_1];
  v10 = v9;
  if (!v9 || ![v9 count])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"Unable to determine entity class for object types (%@)", typesCopy, v13}];
    goto LABEL_6;
  }

  if ([v10 count] >= 2)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"Attempt to query across object types (%@) with incompatible entity classes (%@)", typesCopy, v10}];
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v11 = -[HDDataEntityEnumerator _initWithObjectTypes:entityClass:profile:]([HDDataEntityEnumerator alloc], "_initWithObjectTypes:entityClass:profile:", typesCopy, [v10 anyObject], profileCopy);
LABEL_7:

  return v11;
}

uint64_t __58__HDSampleEntity_entityEnumeratorWithTypes_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 dataObjectClass];

  return [v2 hd_dataEntityClass];
}

+ (id)sourceIDsForSamplesWithType:(id)type profile:(id)profile predicate:(id)predicate error:(id *)error
{
  profileCopy = profile;
  predicateCopy = predicate;
  v12 = HDSampleEntityPredicateForDataType(type);
  v13 = v12;
  if (predicateCopy)
  {
    v14 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:predicateCopy otherPredicate:v12];
  }

  else
  {
    v14 = v12;
  }

  v15 = [self sourceIDsForObjectsOfType:1 profile:profileCopy predicate:v14 error:error];

  return v15;
}

+ (int64_t)countOfSamplesWithType:(id)type profile:(id)profile matchingPredicate:(id)predicate withError:(id *)error
{
  v9 = MEMORY[0x277D10B70];
  predicateCopy = predicate;
  profileCopy = profile;
  typeCopy = type;
  v13 = HDSampleEntityPredicateForDataType(typeCopy);
  v14 = [v9 compoundPredicateWithPredicate:v13 otherPredicate:predicateCopy];

  dataObjectClass = [typeCopy dataObjectClass];
  hd_dataEntityClass = [dataObjectClass hd_dataEntityClass];
  database = [profileCopy database];

  v18 = [hd_dataEntityClass countOfObjectsWithPredicate:v14 healthDatabase:database error:error];
  return v18;
}

+ (id)sampleCountsByTypeForProfile:(id)profile error:(id *)error
{
  v7 = MEMORY[0x277CCACA8];
  profileCopy = profile;
  v9 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v10 = [v7 stringWithFormat:@"SELECT %@, COUNT(%@) FROM %@ GROUP BY %@", @"data_type", @"data_type", v9, @"data_type"];;

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  database = [profileCopy database];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __53__HDSampleEntity_sampleCountsByTypeForProfile_error___block_invoke;
  v18[3] = &unk_2786154B8;
  v19 = v10;
  v20 = v11;
  selfCopy = self;
  v22 = a2;
  v13 = v11;
  v14 = v10;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v18];

  if (error)
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

+ (id)dateIntervalsForSampleTypes:(id)types profile:(id)profile error:(id *)error
{
  typesCopy = types;
  v8 = MEMORY[0x277CCACA8];
  profileCopy = profile;
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
  database = [profileCopy database];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __60__HDSampleEntity_dateIntervalsForSampleTypes_profile_error___block_invoke_397;
  v28[3] = &unk_27861B6E8;
  v30 = v18;
  selfCopy = self;
  v29 = typesCopy;
  v20 = v18;
  v21 = typesCopy;
  v22 = [self performReadTransactionWithHealthDatabase:database error:error block:v28];

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

+ (id)populatedSampleTypes:(id)types inDateInterval:(id)interval profile:(id)profile error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  intervalCopy = interval;
  profileCopy = profile;
  array = [MEMORY[0x277CBEB18] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = typesCopy;
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
        [array addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v14);
  }

  v18 = MEMORY[0x277CCACA8];
  v19 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v20 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v21 = [array componentsJoinedByString:{@", "}];
  v22 = [v18 stringWithFormat:@"SELECT COUNT(%@), %@ FROM %@ INNER JOIN %@ USING(%@) WHERE %@ = ? AND (%@ > ?) AND (%@ < ?) AND %@ IN (%@) GROUP BY %@", @"start_date", @"data_type", v19, v20, @"data_id", @"type", @"start_date", @"start_date", @"data_type", v21, @"data_type"];

  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
  database = [profileCopy database];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __68__HDSampleEntity_populatedSampleTypes_inDateInterval_profile_error___block_invoke;
  v35[3] = &unk_278613550;
  v36 = v22;
  v37 = intervalCopy;
  v38 = v23;
  selfCopy = self;
  v25 = v23;
  v26 = intervalCopy;
  v27 = v22;
  v28 = [self performReadTransactionWithHealthDatabase:database error:error block:v35];

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

+ (id)sampleTypesForSamplesMatchingPredicate:(id)predicate profile:(id)profile error:(id *)error
{
  v8 = MEMORY[0x277CBEB58];
  profileCopy = profile;
  predicateCopy = predicate;
  v11 = objc_alloc_init(v8);
  v12 = [self predicateMatchingPreferredEntityTypeIfRequiredWithPredicate:predicateCopy];

  database = [profileCopy database];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__HDSampleEntity_sampleTypesForSamplesMatchingPredicate_profile_error___block_invoke;
  v19[3] = &unk_278614698;
  v21 = v11;
  selfCopy = self;
  v20 = v12;
  v14 = v11;
  v15 = v12;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v19];

  if (error)
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

+ (id)anySampleOfType:(id)type profile:(id)profile encodingOptions:(id)options predicate:(id)predicate error:(id *)error
{
  typeCopy = type;
  profileCopy = profile;
  optionsCopy = options;
  predicateCopy = predicate;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__57;
  v24 = __Block_byref_object_dispose__57;
  v25 = 0;
  v16 = [self entityEnumeratorWithType:typeCopy profile:profileCopy];
  [v16 setPredicate:predicateCopy];
  [v16 addEncodingOptionsFromDictionary:optionsCopy];
  [v16 setLimitCount:1];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__HDSampleEntity_anySampleOfType_profile_encodingOptions_predicate_error___block_invoke;
  v19[3] = &unk_278613718;
  v19[4] = &v20;
  [v16 enumerateWithError:error handler:v19];
  v17 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v17;
}

+ (id)minimumSampleStartDateForProfile:(id)profile error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [HDSampleEntity dateIntervalsForSampleTypes:0 profile:profile error:error];
  allValues = [v4 allValues];
  v6 = allValues;
  if (!allValues)
  {
    goto LABEL_16;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
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
      startDate = [v11 startDate];
      [startDate timeIntervalSinceReferenceDate];
      if (v13 == 2.22507386e-308)
      {
      }

      else
      {
        startDate2 = [v11 startDate];
        [startDate2 timeIntervalSinceReferenceDate];
        v16 = v15;

        if (v16 >= 0.0)
        {
          startDate3 = [v11 startDate];
          [startDate3 timeIntervalSinceReferenceDate];
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

+ (BOOL)validateEntitiesOfTypes:(id)types profile:(id)profile error:(id *)error validationErrorHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  profileCopy = profile;
  handlerCopy = handler;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = typesCopy;
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

        v18 = [self entityEnumeratorWithType:*(*(&v23 + 1) + 8 * i) profile:{profileCopy, v23}];
        v19 = [self _validateEntityWithEnumerator:v18 error:error validationErrorHandler:handlerCopy];

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

+ (BOOL)_validateEntityWithEnumerator:(id)enumerator error:(id *)error validationErrorHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HDSampleEntity__validateEntityWithEnumerator_error_validationErrorHandler___block_invoke;
  v11[3] = &unk_278617230;
  v12 = handlerCopy;
  selfCopy = self;
  v9 = handlerCopy;
  LOBYTE(error) = [enumerator enumerateWithError:error handler:v11];

  return error;
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

+ (id)objectInsertionFilterForProfile:(id)profile
{
  daemon = [profile daemon];
  behavior = [daemon behavior];
  supportsSampleExpiration = [behavior supportsSampleExpiration];

  if (supportsSampleExpiration)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v7 = *MEMORY[0x277CCCEE8];
    date = [MEMORY[0x277CBEAA8] date];
    v9 = [currentCalendar hk_startOfDateBySubtractingDays:v7 fromDate:date];

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

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDSampleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (id)columnNamesForTimeOffset
{
  v5[2] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
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