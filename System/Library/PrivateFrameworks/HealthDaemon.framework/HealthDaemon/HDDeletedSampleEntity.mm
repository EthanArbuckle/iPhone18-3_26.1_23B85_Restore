@interface HDDeletedSampleEntity
+ (BOOL)addCodableObject:(id)object toCollection:(id)collection;
+ (BOOL)deletedSampleInProfile:(id)profile sampleUUID:(id)d error:(id *)error handler:(id)handler;
+ (BOOL)enumerateDeletedSamplesInProfile:(id)profile anchor:(int64_t)anchor limit:(unint64_t)limit error:(id *)error handler:(id)handler;
+ (BOOL)enumerateDeletedSamplesInProfile:(id)profile createdOnOrAfter:(id)after createdBefore:(id)before limit:(unint64_t)limit error:(id *)error handler:(id)handler;
+ (BOOL)enumerateDeletedSamplesWithTypes:(id)types profile:(id)profile restrictedSourceEntities:(id)entities limit:(unint64_t)limit anchor:(int64_t)anchor error:(id *)error handler:(id)handler;
+ (BOOL)enumerateEntitiesForSyncWithProperties:(id)properties predicate:(id)predicate session:(id)session syncAnchorRange:(HDSyncAnchorRange)range limit:(unint64_t)limit lastSyncAnchor:(int64_t *)anchor healthDatabase:(id)database error:(id *)self0 block:(id)self1;
+ (BOOL)insertCodableDeletedSamples:(id)samples provenance:(id)provenance profile:(id)profile error:(id *)error;
+ (id)_externalSyncMetadataForRow:;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)insertDeletedObject:(id)object dataType:(id)type provenanceIdentifier:(id)identifier deletionDate:(id)date persistStartAndEndDates:(BOOL)dates startTimestamp:(double)timestamp endTimestamp:(double)endTimestamp inDatabase:(id)self0 error:(id *)self1;
+ (uint64_t)_deletedSamplesInProfile:(void *)profile queryStringBlock:(void *)block bindingBlock:(uint64_t)bindingBlock limit:(uint64_t)limit error:(void *)error handler:;
@end

@implementation HDDeletedSampleEntity

+ (id)insertDeletedObject:(id)object dataType:(id)type provenanceIdentifier:(id)identifier deletionDate:(id)date persistStartAndEndDates:(BOOL)dates startTimestamp:(double)timestamp endTimestamp:(double)endTimestamp inDatabase:(id)self0 error:(id *)self1
{
  objectCopy = object;
  typeCopy = type;
  identifierCopy = identifier;
  dateCopy = date;
  databaseCopy = database;
  metadata = [objectCopy metadata];

  if (metadata)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDeletedSampleEntity.m" lineNumber:75 description:@"You can not insert a HKDeletedObject with metadata. Deleted objects don't insert related objects."];
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__178;
  v42 = __Block_byref_object_dispose__178;
  v37.receiver = self;
  v37.super_class = &OBJC_METACLASS___HDDeletedSampleEntity;
  v43 = objc_msgSendSuper2(&v37, sel_insertDeletedObject_provenanceIdentifier_deletionDate_inDatabase_error_, objectCopy, identifierCopy, dateCopy, databaseCopy, error);
  v26 = v39[5];
  if (v26)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __157__HDDeletedSampleEntity_insertDeletedObject_dataType_provenanceIdentifier_deletionDate_persistStartAndEndDates_startTimestamp_endTimestamp_inDatabase_error___block_invoke_2;
    v31[3] = &unk_27862BCD0;
    v33 = &v38;
    v32 = typeCopy;
    datesCopy = dates;
    timestampCopy = timestamp;
    endTimestampCopy = endTimestamp;
    v27 = [databaseCopy executeCachedStatementForKey:&insertDeletedObject_dataType_provenanceIdentifier_deletionDate_persistStartAndEndDates_startTimestamp_endTimestamp_inDatabase_error__insertKey error:error SQLGenerator:&__block_literal_global_214 bindingHandler:v31 enumerationHandler:0];

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

+ (BOOL)enumerateDeletedSamplesWithTypes:(id)types profile:(id)profile restrictedSourceEntities:(id)entities limit:(unint64_t)limit anchor:(int64_t)anchor error:(id *)error handler:(id)handler
{
  v45[1] = *MEMORY[0x277D85DE8];
  typesCopy = types;
  profileCopy = profile;
  entitiesCopy = entities;
  handlerCopy = handler;
  v40 = typesCopy;
  if (handlerCopy)
  {
    errorCopy = error;
    v20 = HDDataEntityPredicateForType(2);
    v21 = HDSampleEntityPredicateForDataTypes(typesCopy);
    if (v21)
    {
      v22 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v20 otherPredicate:v21];

      v20 = v22;
    }

    if (entitiesCopy)
    {
      v23 = MEMORY[0x277D10B70];
      v24 = HDDataEntityPredicateForSourceEntitySet(7, entitiesCopy);
      v25 = [v23 compoundPredicateWithPredicate:v20 otherPredicate:v24];

      v20 = v25;
    }

    if (anchor >= 1)
    {
      v26 = MEMORY[0x277D10B18];
      v27 = [MEMORY[0x277CCABB0] numberWithLongLong:anchor];
      v28 = [v26 predicateWithProperty:@"data_id" greaterThanValue:v27];

      v29 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v28 otherPredicate:v20];

      v20 = v29;
    }

    v30 = objc_alloc_init(MEMORY[0x277D10B80]);
    [v30 setEntityClass:objc_opt_class()];
    [v30 setLimitCount:limit];
    [v30 setPredicate:v20];
    v31 = [objc_alloc(MEMORY[0x277D10B68]) initWithExpression:@"data_id" ascending:1];
    v45[0] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
    [v30 setOrderingTerms:v32];

    database = [profileCopy database];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __118__HDDeletedSampleEntity_enumerateDeletedSamplesWithTypes_profile_restrictedSourceEntities_limit_anchor_error_handler___block_invoke;
    v41[3] = &unk_27861B6E8;
    selfCopy = self;
    v42 = v30;
    v43 = handlerCopy;
    v34 = v30;
    v35 = [self performReadTransactionWithHealthDatabase:database error:errorCopy block:v41];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDeletedSampleEntity.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

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

+ (BOOL)deletedSampleInProfile:(id)profile sampleUUID:(id)d error:(id *)error handler:(id)handler
{
  dCopy = d;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__HDDeletedSampleEntity_deletedSampleInProfile_sampleUUID_error_handler___block_invoke_2;
  aBlock[3] = &unk_27862BCF8;
  v17 = dCopy;
  v11 = dCopy;
  handlerCopy = handler;
  profileCopy = profile;
  v14 = _Block_copy(aBlock);
  LOBYTE(error) = [(HDDeletedSampleEntity *)self _deletedSamplesInProfile:profileCopy queryStringBlock:&__block_literal_global_324_4 bindingBlock:v14 limit:1 error:error handler:handlerCopy];

  return error;
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

+ (uint64_t)_deletedSamplesInProfile:(void *)profile queryStringBlock:(void *)block bindingBlock:(uint64_t)bindingBlock limit:(uint64_t)limit error:(void *)error handler:
{
  v12 = a2;
  profileCopy = profile;
  blockCopy = block;
  errorCopy = error;
  v16 = objc_opt_self();
  if (errorCopy)
  {
    database = [v12 database];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __100__HDDeletedSampleEntity__deletedSamplesInProfile_queryStringBlock_bindingBlock_limit_error_handler___block_invoke;
    v21[3] = &unk_27862BDD8;
    v22 = profileCopy;
    bindingBlockCopy = bindingBlock;
    v26 = v16;
    v23 = blockCopy;
    v24 = errorCopy;
    v18 = [v16 performReadTransactionWithHealthDatabase:database error:limit block:v21];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__deletedSamplesInProfile_queryStringBlock_bindingBlock_limit_error_handler_ object:v16 file:@"HDDeletedSampleEntity.m" lineNumber:290 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

    v18 = 1;
  }

  return v18;
}

+ (BOOL)enumerateDeletedSamplesInProfile:(id)profile anchor:(int64_t)anchor limit:(unint64_t)limit error:(id *)error handler:(id)handler
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__HDDeletedSampleEntity_enumerateDeletedSamplesInProfile_anchor_limit_error_handler___block_invoke;
  aBlock[3] = &__block_descriptor_40_e28___NSString_16__0__NSString_8l;
  aBlock[4] = anchor;
  handlerCopy = handler;
  profileCopy = profile;
  v14 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__HDDeletedSampleEntity_enumerateDeletedSamplesInProfile_anchor_limit_error_handler___block_invoke_2;
  v17[3] = &__block_descriptor_40_e26_i20__0__sqlite3_stmt__8i16l;
  v17[4] = anchor;
  v15 = _Block_copy(v17);
  LOBYTE(error) = [(HDDeletedSampleEntity *)self _deletedSamplesInProfile:profileCopy queryStringBlock:v14 bindingBlock:v15 limit:limit error:error handler:handlerCopy];

  return error;
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

+ (BOOL)enumerateDeletedSamplesInProfile:(id)profile createdOnOrAfter:(id)after createdBefore:(id)before limit:(unint64_t)limit error:(id *)error handler:(id)handler
{
  afterCopy = after;
  beforeCopy = before;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __109__HDDeletedSampleEntity_enumerateDeletedSamplesInProfile_createdOnOrAfter_createdBefore_limit_error_handler___block_invoke;
  aBlock[3] = &unk_27862BD60;
  v16 = afterCopy;
  v29 = v16;
  v17 = beforeCopy;
  v30 = v17;
  handlerCopy = handler;
  profileCopy = profile;
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
  LOBYTE(error) = [(HDDeletedSampleEntity *)self _deletedSamplesInProfile:profileCopy queryStringBlock:v20 bindingBlock:v23 limit:limit error:error handler:handlerCopy];

  return error;
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

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDDeletedSampleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (BOOL)enumerateEntitiesForSyncWithProperties:(id)properties predicate:(id)predicate session:(id)session syncAnchorRange:(HDSyncAnchorRange)range limit:(unint64_t)limit lastSyncAnchor:(int64_t *)anchor healthDatabase:(id)database error:(id *)self0 block:(id)self1
{
  v28[1] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277D10B68];
  v15 = *MEMORY[0x277D10A40];
  blockCopy = block;
  databaseCopy = database;
  sessionCopy = session;
  predicateCopy = predicate;
  propertiesCopy = properties;
  v21 = [v14 orderingTermWithProperty:v15 entityClass:objc_opt_class() ascending:1];
  v28[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  LOBYTE(v25) = 0;
  LOBYTE(v15) = [(HDHealthEntity *)HDSampleEntity enumerateEntitiesForSyncWithProperties:propertiesCopy predicate:predicateCopy syncEntityClass:0 session:sessionCopy syncAnchorRange:range.start orderingTerms:range.end limit:v22 lastSyncAnchor:limit distinct:anchor healthDatabase:v25 error:databaseCopy block:error, blockCopy];

  v23 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (BOOL)addCodableObject:(id)object toCollection:(id)collection
{
  if (object)
  {
    [collection addDeletedSamples:object];
  }

  return object != 0;
}

+ (BOOL)insertCodableDeletedSamples:(id)samples provenance:(id)provenance profile:(id)profile error:(id *)error
{
  samplesCopy = samples;
  provenanceCopy = provenance;
  profileCopy = profile;
  database = [profileCopy database];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __78__HDDeletedSampleEntity_insertCodableDeletedSamples_provenance_profile_error___block_invoke;
  v22[3] = &unk_278613550;
  selfCopy = self;
  v23 = profileCopy;
  v24 = provenanceCopy;
  v25 = samplesCopy;
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
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v22 inaccessibilityHandler:v18];

  return error;
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