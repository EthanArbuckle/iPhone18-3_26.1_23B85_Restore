@interface HDDeletedSampleEntity
+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4;
+ (BOOL)deletedSampleInProfile:(id)a3 sampleUUID:(id)a4 error:(id *)a5 handler:(id)a6;
+ (BOOL)enumerateDeletedSamplesInProfile:(id)a3 anchor:(int64_t)a4 limit:(unint64_t)a5 error:(id *)a6 handler:(id)a7;
+ (BOOL)enumerateDeletedSamplesInProfile:(id)a3 createdOnOrAfter:(id)a4 createdBefore:(id)a5 limit:(unint64_t)a6 error:(id *)a7 handler:(id)a8;
+ (BOOL)enumerateDeletedSamplesWithTypes:(id)a3 profile:(id)a4 restrictedSourceEntities:(id)a5 limit:(unint64_t)a6 anchor:(int64_t)a7 error:(id *)a8 handler:(id)a9;
+ (BOOL)enumerateEntitiesForSyncWithProperties:(id)a3 predicate:(id)a4 session:(id)a5 syncAnchorRange:(HDSyncAnchorRange)a6 limit:(unint64_t)a7 lastSyncAnchor:(int64_t *)a8 healthDatabase:(id)a9 error:(id *)a10 block:(id)a11;
+ (BOOL)insertCodableDeletedSamples:(id)a3 provenance:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)_externalSyncMetadataForRow:;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)insertDeletedObject:(id)a3 dataType:(id)a4 provenanceIdentifier:(id)a5 deletionDate:(id)a6 persistStartAndEndDates:(BOOL)a7 startTimestamp:(double)a8 endTimestamp:(double)a9 inDatabase:(id)a10 error:(id *)a11;
+ (uint64_t)_deletedSamplesInProfile:(void *)a3 queryStringBlock:(void *)a4 bindingBlock:(uint64_t)a5 limit:(uint64_t)a6 error:(void *)a7 handler:;
@end

@implementation HDDeletedSampleEntity

+ (id)insertDeletedObject:(id)a3 dataType:(id)a4 provenanceIdentifier:(id)a5 deletionDate:(id)a6 persistStartAndEndDates:(BOOL)a7 startTimestamp:(double)a8 endTimestamp:(double)a9 inDatabase:(id)a10 error:(id *)a11
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a10;
  v25 = [v20 metadata];

  if (v25)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:a1 file:@"HDDeletedSampleEntity.m" lineNumber:75 description:@"You can not insert a HKDeletedObject with metadata. Deleted objects don't insert related objects."];
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__178;
  v42 = __Block_byref_object_dispose__178;
  v37.receiver = a1;
  v37.super_class = &OBJC_METACLASS___HDDeletedSampleEntity;
  v43 = objc_msgSendSuper2(&v37, sel_insertDeletedObject_provenanceIdentifier_deletionDate_inDatabase_error_, v20, v22, v23, v24, a11);
  v26 = v39[5];
  if (v26)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __157__HDDeletedSampleEntity_insertDeletedObject_dataType_provenanceIdentifier_deletionDate_persistStartAndEndDates_startTimestamp_endTimestamp_inDatabase_error___block_invoke_2;
    v31[3] = &unk_27862BCD0;
    v33 = &v38;
    v32 = v21;
    v36 = a7;
    v34 = a8;
    v35 = a9;
    v27 = [v24 executeCachedStatementForKey:&insertDeletedObject_dataType_provenanceIdentifier_deletionDate_persistStartAndEndDates_startTimestamp_endTimestamp_inDatabase_error__insertKey error:a11 SQLGenerator:&__block_literal_global_214 bindingHandler:v31 enumerationHandler:0];

    if (v27)
    {
      v26 = v39[5];
    }

    else
    {
      v26 = 0;
    }
  }

  v28 = v26;
  _Block_object_dispose(&v38, 8);

  return v28;
}

id __157__HDDeletedSampleEntity_insertDeletedObject_dataType_provenanceIdentifier_deletionDate_persistStartAndEndDates_startTimestamp_endTimestamp_inDatabase_error___block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v2 = [v0 stringWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@) VALUES (?, ?, ?, ?)", v1, @"data_id", @"data_type", @"start_date", @"end_date", 0];

  return v2;
}

uint64_t __157__HDDeletedSampleEntity_insertDeletedObject_dataType_provenanceIdentifier_deletionDate_persistStartAndEndDates_startTimestamp_endTimestamp_inDatabase_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(*(*(a1 + 40) + 8) + 40) longLongValue]);
  sqlite3_bind_int64(a2, 2, [*(a1 + 32) code]);
  if (*(a1 + 64) == 1)
  {
    sqlite3_bind_double(a2, 3, *(a1 + 48));
  }

  else
  {
    sqlite3_bind_null(a2, 3);
  }

  if (*(a1 + 64) == 1)
  {
    v4 = *(a1 + 56);

    return sqlite3_bind_double(a2, 4, v4);
  }

  else
  {

    return sqlite3_bind_null(a2, 4);
  }
}

+ (BOOL)enumerateDeletedSamplesWithTypes:(id)a3 profile:(id)a4 restrictedSourceEntities:(id)a5 limit:(unint64_t)a6 anchor:(int64_t)a7 error:(id *)a8 handler:(id)a9
{
  v45[1] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a9;
  v40 = v16;
  if (v19)
  {
    v39 = a8;
    v20 = HDDataEntityPredicateForType(2);
    v21 = HDSampleEntityPredicateForDataTypes(v16);
    if (v21)
    {
      v22 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v20 otherPredicate:v21];

      v20 = v22;
    }

    if (v18)
    {
      v23 = MEMORY[0x277D10B70];
      v24 = HDDataEntityPredicateForSourceEntitySet(7, v18);
      v25 = [v23 compoundPredicateWithPredicate:v20 otherPredicate:v24];

      v20 = v25;
    }

    if (a7 >= 1)
    {
      v26 = MEMORY[0x277D10B18];
      v27 = [MEMORY[0x277CCABB0] numberWithLongLong:a7];
      v28 = [v26 predicateWithProperty:@"data_id" greaterThanValue:v27];

      v29 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v28 otherPredicate:v20];

      v20 = v29;
    }

    v30 = objc_alloc_init(MEMORY[0x277D10B80]);
    [v30 setEntityClass:objc_opt_class()];
    [v30 setLimitCount:a6];
    [v30 setPredicate:v20];
    v31 = [objc_alloc(MEMORY[0x277D10B68]) initWithExpression:@"data_id" ascending:1];
    v45[0] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
    [v30 setOrderingTerms:v32];

    v33 = [v17 database];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __118__HDDeletedSampleEntity_enumerateDeletedSamplesWithTypes_profile_restrictedSourceEntities_limit_anchor_error_handler___block_invoke;
    v41[3] = &unk_27861B6E8;
    v44 = a1;
    v42 = v30;
    v43 = v19;
    v34 = v30;
    v35 = [a1 performReadTransactionWithHealthDatabase:v33 error:v39 block:v41];
  }

  else
  {
    v38 = [MEMORY[0x277CCA890] currentHandler];
    [v38 handleFailureInMethod:a2 object:a1 file:@"HDDeletedSampleEntity.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

    v35 = 1;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

uint64_t __118__HDDeletedSampleEntity_enumerateDeletedSamplesWithTypes_profile_restrictedSourceEntities_limit_anchor_error_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D10B78];
  v6 = a2;
  v7 = [v5 alloc];
  v8 = [v6 databaseForEntityClass:*(a1 + 48)];

  v9 = [v7 initWithDatabase:v8 descriptor:*(a1 + 32)];
  v16[0] = @"data_id";
  v16[1] = @"uuid";
  v16[2] = @"external_sync_ids.sid";
  v16[3] = @"external_sync_ids.version";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __118__HDDeletedSampleEntity_enumerateDeletedSamplesWithTypes_profile_restrictedSourceEntities_limit_anchor_error_handler___block_invoke_2;
  v14[3] = &unk_278616A78;
  v15 = *(a1 + 40);
  v11 = [v9 enumeratePersistentIDsAndProperties:v10 error:a3 enumerationHandler:v14];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __118__HDDeletedSampleEntity_enumerateDeletedSamplesWithTypes_profile_restrictedSourceEntities_limit_anchor_error_handler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  HDSQLiteColumnAsInt64();
  v6 = MEMORY[0x22AAC6CA0](a4, 1);
  v7 = +[HDDeletedSampleEntity _externalSyncMetadataForRow:];
  v8 = [MEMORY[0x277CCD2E0] _deletedObjectWithUUID:v6 metadata:v7];
  (*(*(a1 + 32) + 16))();

  return 1;
}

+ (id)_externalSyncMetadataForRow:
{
  objc_opt_self();
  v0 = HDSQLiteColumnWithNameAsString();
  v1 = HDSQLiteColumnWithNameAsNumber();
  v2 = [MEMORY[0x277CCD2E0] _metadataWithSyncIdentifier:v0 syncVersion:v1];

  return v2;
}

+ (BOOL)deletedSampleInProfile:(id)a3 sampleUUID:(id)a4 error:(id *)a5 handler:(id)a6
{
  v10 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__HDDeletedSampleEntity_deletedSampleInProfile_sampleUUID_error_handler___block_invoke_2;
  aBlock[3] = &unk_27862BCF8;
  v17 = v10;
  v11 = v10;
  v12 = a6;
  v13 = a3;
  v14 = _Block_copy(aBlock);
  LOBYTE(a5) = [(HDDeletedSampleEntity *)a1 _deletedSamplesInProfile:v13 queryStringBlock:&__block_literal_global_324_4 bindingBlock:v14 limit:1 error:a5 handler:v12];

  return a5;
}

uint64_t __73__HDDeletedSampleEntity_deletedSampleInProfile_sampleUUID_error_handler___block_invoke_2(uint64_t a1, sqlite3_stmt *a2, int a3)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v7[1] = 0;
  [*(a1 + 32) getUUIDBytes:v7];
  sqlite3_bind_blob(a2, a3, v7, 16, 0xFFFFFFFFFFFFFFFFLL);
  v5 = *MEMORY[0x277D85DE8];
  return (a3 + 1);
}

+ (uint64_t)_deletedSamplesInProfile:(void *)a3 queryStringBlock:(void *)a4 bindingBlock:(uint64_t)a5 limit:(uint64_t)a6 error:(void *)a7 handler:
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = objc_opt_self();
  if (v15)
  {
    v17 = [v12 database];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __100__HDDeletedSampleEntity__deletedSamplesInProfile_queryStringBlock_bindingBlock_limit_error_handler___block_invoke;
    v21[3] = &unk_27862BDD8;
    v22 = v13;
    v25 = a5;
    v26 = v16;
    v23 = v14;
    v24 = v15;
    v18 = [v16 performReadTransactionWithHealthDatabase:v17 error:a6 block:v21];
  }

  else
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:sel__deletedSamplesInProfile_queryStringBlock_bindingBlock_limit_error_handler_ object:v16 file:@"HDDeletedSampleEntity.m" lineNumber:290 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

    v18 = 1;
  }

  return v18;
}

+ (BOOL)enumerateDeletedSamplesInProfile:(id)a3 anchor:(int64_t)a4 limit:(unint64_t)a5 error:(id *)a6 handler:(id)a7
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__HDDeletedSampleEntity_enumerateDeletedSamplesInProfile_anchor_limit_error_handler___block_invoke;
  aBlock[3] = &__block_descriptor_40_e28___NSString_16__0__NSString_8l;
  aBlock[4] = a4;
  v12 = a7;
  v13 = a3;
  v14 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__HDDeletedSampleEntity_enumerateDeletedSamplesInProfile_anchor_limit_error_handler___block_invoke_2;
  v17[3] = &__block_descriptor_40_e26_i20__0__sqlite3_stmt__8i16l;
  v17[4] = a4;
  v15 = _Block_copy(v17);
  LOBYTE(a6) = [(HDDeletedSampleEntity *)a1 _deletedSamplesInProfile:v13 queryStringBlock:v14 bindingBlock:v15 limit:a5 error:a6 handler:v12];

  return a6;
}

id __85__HDDeletedSampleEntity_enumerateDeletedSamplesInProfile_anchor_limit_error_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) >= 1)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ AND o.%@ > ?", v3, @"data_id"];

    v3 = v4;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ ORDER BY o.%@ ASC", v3, @"data_id"];

  return v5;
}

uint64_t __85__HDDeletedSampleEntity_enumerateDeletedSamplesInProfile_anchor_limit_error_handler___block_invoke_2(uint64_t a1, sqlite3_stmt *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4 >= 1)
  {
    sqlite3_bind_int64(a2, a3, v4);
    return (a3 + 1);
  }

  return a3;
}

+ (BOOL)enumerateDeletedSamplesInProfile:(id)a3 createdOnOrAfter:(id)a4 createdBefore:(id)a5 limit:(unint64_t)a6 error:(id *)a7 handler:(id)a8
{
  v14 = a4;
  v15 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __109__HDDeletedSampleEntity_enumerateDeletedSamplesInProfile_createdOnOrAfter_createdBefore_limit_error_handler___block_invoke;
  aBlock[3] = &unk_27862BD60;
  v16 = v14;
  v29 = v16;
  v17 = v15;
  v30 = v17;
  v18 = a8;
  v19 = a3;
  v20 = _Block_copy(aBlock);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __109__HDDeletedSampleEntity_enumerateDeletedSamplesInProfile_createdOnOrAfter_createdBefore_limit_error_handler___block_invoke_2;
  v25[3] = &unk_27862BD88;
  v26 = v16;
  v27 = v17;
  v21 = v17;
  v22 = v16;
  v23 = _Block_copy(v25);
  LOBYTE(a7) = [(HDDeletedSampleEntity *)a1 _deletedSamplesInProfile:v19 queryStringBlock:v20 bindingBlock:v23 limit:a6 error:a7 handler:v18];

  return a7;
}

id __109__HDDeletedSampleEntity_enumerateDeletedSamplesInProfile_createdOnOrAfter_createdBefore_limit_error_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ AND o.%@ >= ?", v3, @"creation_date"];

    v3 = v4;
  }

  if (*(a1 + 40))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ AND o.%@ < ?", v3, @"creation_date"];

    v3 = v5;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ ORDER BY o.%@ ASC", v3, @"creation_date"];

  return v6;
}

uint64_t __109__HDDeletedSampleEntity_enumerateDeletedSamplesInProfile_createdOnOrAfter_createdBefore_limit_error_handler___block_invoke_2(uint64_t a1, sqlite3_stmt *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 timeIntervalSinceReferenceDate];
    sqlite3_bind_double(a2, a3, v7);
    a3 = (a3 + 1);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    [v8 timeIntervalSinceReferenceDate];
    sqlite3_bind_double(a2, a3, v9);
    return (a3 + 1);
  }

  return a3;
}

uint64_t __100__HDDeletedSampleEntity__deletedSamplesInProfile_queryStringBlock_bindingBlock_limit_error_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v4 = MEMORY[0x277CCACA8];
  v5 = [objc_opt_class() disambiguatedDatabaseTable];
  v6 = [objc_opt_class() disambiguatedDatabaseTable];
  v7 = [objc_opt_class() disambiguatedDatabaseTable];
  v8 = [v4 stringWithFormat:@"SELECT o.%@, o.%@, o.%@, s.%@, s.%@, p.%@ FROM %@ AS s INNER JOIN %@ AS o ON s.%@ == o.%@ INNER JOIN %@ AS p ON o.%@ == p.%@ WHERE o.%@ == ?", @"data_id", @"uuid", @"creation_date", @"start_date", @"end_date", @"sync_identity", v5, v6, @"data_id", @"data_id", v7, @"provenance", *MEMORY[0x277D10A40], @"type"];

  v9 = (*(*(a1 + 32) + 16))();

  if (*(a1 + 56) != *MEMORY[0x277D10C08])
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ LIMIT ?", v9];

    v9 = v10;
  }

  v11 = [v17 databaseForEntityClass:*(a1 + 64)];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __100__HDDeletedSampleEntity__deletedSamplesInProfile_queryStringBlock_bindingBlock_limit_error_handler___block_invoke_2;
  v20[3] = &unk_27862BDB0;
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  v21 = v12;
  v22 = v13;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __100__HDDeletedSampleEntity__deletedSamplesInProfile_queryStringBlock_bindingBlock_limit_error_handler___block_invoke_3;
  v18[3] = &unk_278613B30;
  v19 = *(a1 + 48);
  v14 = [v11 executeUncachedSQL:v9 error:a3 bindingHandler:v20 enumerationHandler:v18];

  return v14;
}

uint64_t __100__HDDeletedSampleEntity__deletedSamplesInProfile_queryStringBlock_bindingBlock_limit_error_handler___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 2);
  result = (*(*(a1 + 32) + 16))();
  v5 = *(a1 + 40);
  if (v5 != *MEMORY[0x277D10C08])
  {

    return sqlite3_bind_int64(a2, result, v5);
  }

  return result;
}

uint64_t __100__HDDeletedSampleEntity__deletedSamplesInProfile_queryStringBlock_bindingBlock_limit_error_handler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  HDSQLiteColumnAsInt64();
  v4 = MEMORY[0x22AAC6CA0](a2, 1);
  v5 = MEMORY[0x22AAC6C40](a2, 2);
  v6 = 0;
  if ((MEMORY[0x22AAC6CD0](a2, 3) & 1) == 0)
  {
    v6 = MEMORY[0x22AAC6C40](a2, 3);
  }

  if (MEMORY[0x22AAC6CD0](a2, 4))
  {
    v7 = 0;
  }

  else
  {
    v7 = MEMORY[0x22AAC6C40](a2, 4);
  }

  HDSQLiteColumnAsInt64();
  (*(*(a1 + 32) + 16))();

  return 1;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[_HDDeletedSampleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

+ (BOOL)enumerateEntitiesForSyncWithProperties:(id)a3 predicate:(id)a4 session:(id)a5 syncAnchorRange:(HDSyncAnchorRange)a6 limit:(unint64_t)a7 lastSyncAnchor:(int64_t *)a8 healthDatabase:(id)a9 error:(id *)a10 block:(id)a11
{
  v28[1] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277D10B68];
  v15 = *MEMORY[0x277D10A40];
  v16 = a11;
  v17 = a9;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [v14 orderingTermWithProperty:v15 entityClass:objc_opt_class() ascending:1];
  v28[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  LOBYTE(v25) = 0;
  LOBYTE(v15) = [(HDHealthEntity *)HDSampleEntity enumerateEntitiesForSyncWithProperties:v20 predicate:v19 syncEntityClass:0 session:v18 syncAnchorRange:a6.start orderingTerms:a6.end limit:v22 lastSyncAnchor:a7 distinct:a8 healthDatabase:v25 error:v17 block:a10, v16];

  v23 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4
{
  if (a3)
  {
    [a4 addDeletedSamples:a3];
  }

  return a3 != 0;
}

+ (BOOL)insertCodableDeletedSamples:(id)a3 provenance:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 database];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __78__HDDeletedSampleEntity_insertCodableDeletedSamples_provenance_profile_error___block_invoke;
  v22[3] = &unk_278613550;
  v26 = a1;
  v23 = v12;
  v24 = v11;
  v25 = v10;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__HDDeletedSampleEntity_insertCodableDeletedSamples_provenance_profile_error___block_invoke_367;
  v18[3] = &unk_2786219B0;
  v19 = v25;
  v20 = v24;
  v21 = v23;
  v14 = v23;
  v15 = v24;
  v16 = v25;
  LOBYTE(a6) = [a1 performWriteTransactionWithHealthDatabase:v13 error:a6 block:v22 inaccessibilityHandler:v18];

  return a6;
}

uint64_t __78__HDDeletedSampleEntity_insertCodableDeletedSamples_provenance_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v22 = [v18 databaseForEntityClass:*(a1 + 56)];
  v5 = [*(a1 + 32) dataProvenanceManager];
  v23 = [v5 provenanceEntityForProvenance:*(a1 + 40) error:a3];

  if (v23)
  {
    v49 = MEMORY[0x277D85DD0];
    v50 = 3221225472;
    v51 = __78__HDDeletedSampleEntity_insertCodableDeletedSamples_provenance_profile_error___block_invoke_2;
    v52 = &unk_278620C68;
    v53 = *(a1 + 32);
    v54 = *(a1 + 48);
    if (HKWithAutoreleasePool())
    {
      v21 = objc_alloc_init(MEMORY[0x277CCD2D8]);
      v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v43 = 0;
      v44 = &v43;
      v45 = 0x3032000000;
      v46 = __Block_byref_object_copy__178;
      v47 = __Block_byref_object_dispose__178;
      v48 = 0;
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 0;
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = 0;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = *(a1 + 48);
      v6 = [obj countByEnumeratingWithState:&v31 objects:v59 count:16];
      if (v6)
      {
        v7 = *v32;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v32 != v7)
            {
              objc_enumerationMutation(obj);
            }

            if (*(v36 + 24) == 1)
            {
              v14 = [MEMORY[0x277CCA9B8] hk_transactionInterruptedError];
              v12 = v14;
              if (v14)
              {
                if (a3)
                {
                  v15 = v14;
                  *a3 = v12;
                }

                else
                {
                  _HKLogDroppedError();
                }
              }

              v13 = 0;
              goto LABEL_25;
            }

            v24 = *(*(&v31 + 1) + 8 * i);
            v25 = v20;
            v26 = v23;
            v27 = v22;
            v28 = v21;
            v29 = *(a1 + 32);
            v30 = *(a1 + 40);
            HKWithAutoreleasePool();
          }

          v6 = [obj countByEnumeratingWithState:&v31 objects:v59 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      if (v40[3] >= 1)
      {
        _HKInitializeLogging();
        v9 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v40[3];
          v11 = [*(a1 + 48) count];
          *buf = 134218240;
          v56 = v10;
          v57 = 2048;
          v58 = v11;
          _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "Encountered %ld constraint violations while inserting %ld deleted objects", buf, 0x16u);
        }
      }

      if (v44[5])
      {
        obj = [*(a1 + 32) dataManager];
        v12 = [v20 allObjects];
        [obj shouldNotifyForDeletedSamplesOfTypes:v12 intervals:v21 userRequested:0 transaction:v18 anchor:v44[5]];
        v13 = 1;
LABEL_25:
      }

      else
      {
        v13 = 1;
      }

      _Block_object_dispose(&v35, 8);
      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(&v43, 8);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __78__HDDeletedSampleEntity_insertCodableDeletedSamples_provenance_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(HDDataDeletionConfiguration);
  [(HDDataDeletionConfiguration *)v4 setGenerateDeletedObjects:0];
  [(HDDataDeletionConfiguration *)v4 setFailIfNotFound:0];
  [(HDDataDeletionConfiguration *)v4 setNotifyObservers:0];
  v5 = [*(a1 + 32) dataManager];
  v6 = [v5 deleteObjectsWithUUIDCollection:*(a1 + 40) configuration:v4 error:a2];

  return v6;
}

uint64_t __78__HDDeletedSampleEntity_insertCodableDeletedSamples_provenance_profile_error___block_invoke_3(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 4);
  v4 = *(v2 + 1);
  if (_HKValidDataTypeCode())
  {
    v5 = [MEMORY[0x277CCD720] dataTypeWithCode:v4];
    if (v5)
    {
      v6 = v5;
      [*(a1 + 40) addObject:v5];
      v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v3[1]];
      v44 = v3;
      v43 = [MEMORY[0x277CCAD78] hk_UUIDWithData:*(v3 + 5)];
      v8 = [MEMORY[0x277CCD2E0] _deletedObjectWithUUID:? metadata:?];
      v9 = *(v2 + 40) & 6;
      v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 48), "persistentID")}];
      v11 = *(v2 + 3);
      v12 = *(v2 + 2);
      v13 = *(a1 + 56);
      v48 = 0;
      v14 = v8;
      v45 = v6;
      v46 = v7;
      v15 = [HDDeletedSampleEntity insertDeletedObject:v8 dataType:v6 provenanceIdentifier:v10 deletionDate:v7 persistStartAndEndDates:v9 == 6 startTimestamp:v13 endTimestamp:v11 inDatabase:v12 error:&v48];
      v16 = v48;

      if (!v15)
      {
        if ([v16 hd_isConstraintViolation])
        {
          ++*(*(*(a1 + 88) + 8) + 24);
          v19 = v43;
          v3 = v44;
        }

        else if ([v16 hk_isTransactionInterruptedError])
        {
          *(*(*(a1 + 96) + 8) + 24) = 1;
          _HKInitializeLogging();
          v31 = *MEMORY[0x277CCC328];
          v19 = v43;
          v3 = v44;
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v50 = v14;
            v51 = 2114;
            v52 = v16;
            _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_INFO, "Transaction interrupted inserting deleted object %{public}@: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          _HKInitializeLogging();
          v35 = *MEMORY[0x277CCC328];
          v19 = v43;
          v3 = v44;
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v50 = v14;
            v51 = 2114;
            v52 = v16;
            _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "Failed to insert deleted object %{public}@: %{public}@", buf, 0x16u);
          }
        }

        goto LABEL_29;
      }

      objc_storeStrong((*(*(a1 + 104) + 8) + 40), v15);
      if (v9 == 6)
      {
        [*(a1 + 64) insertIntervalWithStartTime:*(v2 + 3) endTime:*(v2 + 2)];
      }

      v3 = v44;
      v17 = [MEMORY[0x277CBEAC0] hk_dictionaryWithCodableMetadata:*(v44 + 3)];
      v18 = v17;
      v19 = v43;
      if (!v17)
      {
        v27 = v16;
LABEL_28:

        v16 = v27;
LABEL_29:

        goto LABEL_30;
      }

      v42 = v15;
      v20 = *MEMORY[0x277CCC520];
      v21 = [v17 objectForKeyedSubscript:*MEMORY[0x277CCC520]];

      if (v21)
      {
        v22 = *(v44 + 2);
        if ([v44 hasExternalSyncObjectCode])
        {
          v41 = [v18 objectForKeyedSubscript:v20];
          v23 = [v18 objectForKeyedSubscript:*MEMORY[0x277CCC528]];
          v40 = *(a1 + 72);
          v39 = *(a1 + 56);
          v24 = [v42 longLongValue];
          [*(a1 + 80) sourceID];
          v26 = v25 = v22;
          v47 = v16;
          LOBYTE(v38) = 1;
          LOBYTE(v24) = +[HDDataExternalSyncIdentifierEntity insertSyncIdentifierWithProfile:database:objectID:localSourceID:externalSyncObjectCode:syncIdentifier:syncVersion:deleted:errorOut:](HDDataExternalSyncIdentifierEntity, "insertSyncIdentifierWithProfile:database:objectID:localSourceID:externalSyncObjectCode:syncIdentifier:syncVersion:deleted:errorOut:", v40, v39, v24, [v26 longLongValue], v25, v41, v23, v38, &v47);
          v27 = v47;

          if ((v24 & 1) == 0)
          {
            _HKInitializeLogging();
            v28 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              v50 = v41;
              v51 = 2114;
              v52 = v23;
              v53 = 2114;
              v54 = v27;
              _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "Failed to insert external sync identifier (%{public}@, version %{public}@): %{public}@", buf, 0x20u);
            }
          }

          goto LABEL_27;
        }

        _HKInitializeLogging();
        v32 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v36 = v32;
          v37 = [v43 UUIDString];
          *buf = 138543362;
          v50 = v37;
          _os_log_error_impl(&dword_228986000, v36, OS_LOG_TYPE_ERROR, "HDCodableDeletedSample (%{public}@) with external sync metadata does not contain an external sync object code", buf, 0xCu);
        }
      }

      v27 = v16;
LABEL_27:
      v15 = v42;
      goto LABEL_28;
    }

    _HKInitializeLogging();
    v29 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v50 = v4;
      v30 = "unable to look up sample type %ld when inserting codable deleted samples.";
      goto LABEL_17;
    }
  }

  else
  {
    _HKInitializeLogging();
    v29 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v50 = v4;
      v30 = "invalid data type code %ld when inserting codable deleted samples.";
LABEL_17:
      _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, v30, buf, 0xCu);
    }
  }

LABEL_30:

  v33 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __78__HDDeletedSampleEntity_insertCodableDeletedSamples_provenance_profile_error___block_invoke_367(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [_HDDeletedSampleInsertionJournalEntry alloc];
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = v6;
  if (v5)
  {
    v16.receiver = v5;
    v16.super_class = _HDDeletedSampleInsertionJournalEntry;
    v5 = objc_msgSendSuper2(&v16, sel_init);
    if (v5)
    {
      v9 = [v7 copy];
      samples = v5->_samples;
      v5->_samples = v9;

      v11 = [v8 copy];
      provenance = v5->_provenance;
      v5->_provenance = v11;
    }
  }

  v13 = [*(a1 + 48) database];
  v14 = [v13 addJournalEntry:v5 error:a3];

  return v14;
}

@end