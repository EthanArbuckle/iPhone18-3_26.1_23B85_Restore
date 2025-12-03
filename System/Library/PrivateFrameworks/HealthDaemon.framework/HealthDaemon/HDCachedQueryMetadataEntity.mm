@interface HDCachedQueryMetadataEntity
+ (BOOL)updateCachedQueryMetadata:(id)metadata profile:(id)profile error:(id *)error;
+ (id)cachedQueryMetadataForQueryIdentifier:(id)identifier sourceEntity:(id)entity profile:(id)profile error:(id *)error;
+ (id)creationDateForQueryIdentifier:(id)identifier sourceEntity:(id)entity profile:(id)profile error:(id *)error;
+ (id)generationNumberForQueryIdentifier:(id)identifier sourceEntity:(id)entity profile:(id)profile error:(id *)error;
+ (id)insertCachedQueryMetadata:(id)metadata profile:(id)profile error:(id *)error;
+ (id)lastUpdatedDateForQueryIdentifier:(id)identifier sourceEntity:(id)entity profile:(id)profile error:(id *)error;
+ (id)pruneWithProfile:(id)profile nowDate:(id)date limit:(unint64_t)limit error:(id *)error;
+ (id)uniquedColumns;
@end

@implementation HDCachedQueryMetadataEntity

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"query_identifier";
  v5[1] = @"source_id";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)insertCachedQueryMetadata:(id)metadata profile:(id)profile error:(id *)error
{
  metadataCopy = metadata;
  profileCopy = profile;
  v11 = profileCopy;
  if (!metadataCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCachedQueryMetadataEntity.m" lineNumber:204 description:{@"Invalid parameter not satisfying: %@", @"queryMetadata != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_13:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDCachedQueryMetadataEntity.m" lineNumber:205 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];

    goto LABEL_3;
  }

  if (!profileCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  v12 = MEMORY[0x277CCAAB0];
  intervalComponents = [metadataCopy intervalComponents];
  v26 = 0;
  v14 = [v12 archivedDataWithRootObject:intervalComponents requiringSecureCoding:1 error:&v26];
  v15 = v26;

  if (v14 || !v15)
  {
    database = [v11 database];
    v19 = HDCachedQueryMetadataEntityAllProperties();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __71__HDCachedQueryMetadataEntity_insertCachedQueryMetadata_profile_error___block_invoke;
    v23[3] = &unk_278613DE8;
    v24 = metadataCopy;
    v25 = v14;
    v17 = [self insertOrReplaceEntity:0 healthDatabase:database properties:v19 error:error bindingHandler:v23];
  }

  else if (error)
  {
    v16 = v15;
    v17 = 0;
    *error = v15;
  }

  else
  {
    _HKLogDroppedError();
    v17 = 0;
  }

  return v17;
}

void __71__HDCachedQueryMetadataEntity_insertCachedQueryMetadata_profile_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) cachingIdentifier];
  MEMORY[0x22AAC6BD0](a2, @"query_identifier", v4);

  MEMORY[0x22AAC6B90](a2, @"source_id", [*(a1 + 32) sourceEntityPersistentID]);
  MEMORY[0x22AAC6B90](a2, @"generation_number", [*(a1 + 32) generationNumber]);
  MEMORY[0x22AAC6B90](a2, @"max_anchor", [*(a1 + 32) maxAnchor]);
  v5 = [*(a1 + 32) queryStartIndex];
  MEMORY[0x22AAC6BB0](a2, @"last_query_start_index", v5);

  v6 = [*(a1 + 32) queryEndIndex];
  MEMORY[0x22AAC6BB0](a2, @"last_query_end_index", v6);

  v7 = [*(a1 + 32) buildVersion];
  MEMORY[0x22AAC6BD0](a2, @"build_version", v7);

  v9 = [MEMORY[0x277CBEAA8] now];
  MEMORY[0x22AAC6B50](a2, @"last_updated_date", v9);
  MEMORY[0x22AAC6B50](a2, @"creation_date", v9);
  v8 = [*(a1 + 32) anchorDate];
  MEMORY[0x22AAC6B50](a2, @"anchor_date", v8);

  MEMORY[0x22AAC6B40](a2, @"interval_components", *(a1 + 40));
}

+ (BOOL)updateCachedQueryMetadata:(id)metadata profile:(id)profile error:(id *)error
{
  v32[2] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  profileCopy = profile;
  v11 = profileCopy;
  if (!metadataCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCachedQueryMetadataEntity.m" lineNumber:240 description:{@"Invalid parameter not satisfying: %@", @"queryMetadata != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDCachedQueryMetadataEntity.m" lineNumber:241 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];

    goto LABEL_3;
  }

  if (!profileCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  cachingIdentifier = [metadataCopy cachingIdentifier];
  sourceEntityPersistentID = [metadataCopy sourceEntityPersistentID];
  v14 = [MEMORY[0x277D10B18] predicateWithProperty:@"query_identifier" equalToValue:cachingIdentifier];
  v15 = MEMORY[0x277D10B18];
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:sourceEntityPersistentID];
  v17 = [v15 predicateWithProperty:@"source_id" equalToValue:v16];

  v18 = MEMORY[0x277D10B20];
  v32[0] = v14;
  v32[1] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v20 = [v18 predicateMatchingAllPredicates:v19];

  v31[0] = @"generation_number";
  v31[1] = @"max_anchor";
  v31[2] = @"last_query_start_index";
  v31[3] = @"last_query_end_index";
  v31[4] = @"last_updated_date";
  v31[5] = @"build_version";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:6];
  database = [v11 database];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __71__HDCachedQueryMetadataEntity_updateCachedQueryMetadata_profile_error___block_invoke;
  v29[3] = &unk_278614508;
  v30 = metadataCopy;
  v23 = metadataCopy;
  v24 = [self updateProperties:v21 predicate:v20 healthDatabase:database error:error bindingHandler:v29];

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

void __71__HDCachedQueryMetadataEntity_updateCachedQueryMetadata_profile_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"generation_number", [*(a1 + 32) generationNumber]);
  MEMORY[0x22AAC6B90](a2, @"max_anchor", [*(a1 + 32) maxAnchor]);
  v4 = [*(a1 + 32) queryStartIndex];
  MEMORY[0x22AAC6BB0](a2, @"last_query_start_index", v4);

  v5 = [*(a1 + 32) queryEndIndex];
  MEMORY[0x22AAC6BB0](a2, @"last_query_end_index", v5);

  v6 = [MEMORY[0x277CBEAA8] now];
  MEMORY[0x22AAC6B50](a2, @"last_updated_date", v6);

  v7 = [*(a1 + 32) buildVersion];
  MEMORY[0x22AAC6BD0](a2, @"build_version", v7);
}

+ (id)cachedQueryMetadataForQueryIdentifier:(id)identifier sourceEntity:(id)entity profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  entityCopy = entity;
  profileCopy = profile;
  v13 = HDCachedQueryMetadataEntityPredicateForQueryIdentifierAndSource(identifierCopy, entityCopy);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__207;
  v24 = __Block_byref_object_dispose__207;
  v25 = 0;
  v14 = HDCachedQueryMetadataEntityAllProperties();
  database = [profileCopy database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __96__HDCachedQueryMetadataEntity_cachedQueryMetadataForQueryIdentifier_sourceEntity_profile_error___block_invoke;
  v19[3] = &unk_27862FC10;
  v19[4] = &v20;
  v19[5] = self;
  LODWORD(error) = [self enumerateProperties:v14 withPredicate:v13 healthDatabase:database error:error enumerationHandler:v19];

  if (error)
  {
    v16 = v21[5];
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  _Block_object_dispose(&v20, 8);

  return v17;
}

uint64_t __96__HDCachedQueryMetadataEntity_cachedQueryMetadataForQueryIdentifier_sourceEntity_profile_error___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  objc_opt_self();
  v2 = HDSQLiteColumnWithNameAsString();
  v19 = HDSQLiteColumnWithNameAsInt64();
  v3 = HDSQLiteColumnWithNameAsNumber();
  v4 = HDSQLiteColumnWithNameAsNumber();
  v17 = HDSQLiteColumnWithNameAsInt64();
  v5 = HDSQLiteColumnWithNameAsInt64();
  v6 = HDSQLiteColumnWithNameAsString();
  v7 = HDSQLiteColumnWithNameAsDate();
  v8 = HDSQLiteColumnWithNameAsData();
  v20 = 0;
  v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v20];
  v10 = v20;
  if (v10)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = v2;
      v23 = 2048;
      v24 = v19;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "Failed to unarchive intervalComponents for cached query entry: <%@, %lld>", buf, 0x16u);
    }
  }

  v12 = [[HDCachedQueryMetadata alloc] initWithCachingIdentifier:v2 sourceEntityPersistentID:v19 maxAnchor:v17 queryStartIndex:v3 queryEndIndex:v4 generationNumber:v5 buildVersion:v6 anchorDate:v7 intervalComponents:v9];

  v13 = *(*(a1 + 32) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)generationNumberForQueryIdentifier:(id)identifier sourceEntity:(id)entity profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v11 = HDCachedQueryMetadataEntityPredicateForQueryIdentifierAndSource(identifier, entity);
  database = [profileCopy database];

  v13 = [self propertyValueForAnyWithProperty:@"generation_number" predicate:v11 healthDatabase:database error:error];

  return v13;
}

+ (id)creationDateForQueryIdentifier:(id)identifier sourceEntity:(id)entity profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  entityCopy = entity;
  profileCopy = profile;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__207;
  v27 = __Block_byref_object_dispose__207;
  v28 = 0;
  database = [profileCopy database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __89__HDCachedQueryMetadataEntity_creationDateForQueryIdentifier_sourceEntity_profile_error___block_invoke;
  v18[3] = &unk_278626C38;
  selfCopy = self;
  v14 = identifierCopy;
  v19 = v14;
  v15 = entityCopy;
  v20 = v15;
  v21 = &v23;
  [self performReadTransactionWithHealthDatabase:database error:error block:v18];

  v16 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v16;
}

uint64_t __89__HDCachedQueryMetadataEntity_creationDateForQueryIdentifier_sourceEntity_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v6 = HDCachedQueryMetadataEntityPredicateForQueryIdentifierAndSource(*(a1 + 32), *(a1 + 40));
  v7 = [*(a1 + 56) anyInDatabase:v5 predicate:v6 error:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 dateForProperty:@"creation_date" database:v5];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  return 1;
}

+ (id)lastUpdatedDateForQueryIdentifier:(id)identifier sourceEntity:(id)entity profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  entityCopy = entity;
  profileCopy = profile;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__207;
  v27 = __Block_byref_object_dispose__207;
  v28 = 0;
  database = [profileCopy database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __92__HDCachedQueryMetadataEntity_lastUpdatedDateForQueryIdentifier_sourceEntity_profile_error___block_invoke;
  v18[3] = &unk_278626C38;
  selfCopy = self;
  v14 = identifierCopy;
  v19 = v14;
  v15 = entityCopy;
  v20 = v15;
  v21 = &v23;
  [self performReadTransactionWithHealthDatabase:database error:error block:v18];

  v16 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v16;
}

uint64_t __92__HDCachedQueryMetadataEntity_lastUpdatedDateForQueryIdentifier_sourceEntity_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v6 = HDCachedQueryMetadataEntityPredicateForQueryIdentifierAndSource(*(a1 + 32), *(a1 + 40));
  v7 = [*(a1 + 56) anyInDatabase:v5 predicate:v6 error:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 dateForProperty:@"last_updated_date" database:v5];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  return 1;
}

+ (id)pruneWithProfile:(id)profile nowDate:(id)date limit:(unint64_t)limit error:(id *)error
{
  v39[2] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  dateCopy = date;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v12 = [currentCalendar hk_dateBySubtractingDays:*MEMORY[0x277CCBC20] fromDate:dateCopy];

  v13 = MEMORY[0x277D10B18];
  v14 = _HDSQLiteValueForDate();
  v15 = [v13 predicateWithProperty:@"last_updated_date" value:v14 comparisonType:4];

  v16 = MEMORY[0x277D10B18];
  daemon = [profileCopy daemon];
  behavior = [daemon behavior];
  currentOSBuild = [behavior currentOSBuild];
  v20 = [v16 predicateWithProperty:@"build_version" notEqualToValue:currentOSBuild];

  v21 = MEMORY[0x277D10B20];
  v39[0] = v15;
  v39[1] = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v23 = [v21 predicateMatchingAnyPredicates:v22];

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  database = [profileCopy database];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __68__HDCachedQueryMetadataEntity_pruneWithProfile_nowDate_limit_error___block_invoke;
  v30[3] = &unk_27861F0A0;
  selfCopy = self;
  v25 = v23;
  limitCopy = limit;
  v31 = v25;
  v32 = &v35;
  LODWORD(v22) = [self performWriteTransactionWithHealthDatabase:database error:error block:v30];

  if (v22)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithInt:*(v36 + 6)];
  }

  else
  {
    v26 = 0;
  }

  _Block_object_dispose(&v35, 8);
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

uint64_t __68__HDCachedQueryMetadataEntity_pruneWithProfile_nowDate_limit_error___block_invoke(void *a1, void *a2, uint64_t a3)
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

@end