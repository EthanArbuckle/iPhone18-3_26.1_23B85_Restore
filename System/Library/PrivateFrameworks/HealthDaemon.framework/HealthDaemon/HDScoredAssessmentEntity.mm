@interface HDScoredAssessmentEntity
+ (BOOL)addCodableObject:(id)object toCollection:(id)collection;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)foreignKeys;
+ (id)insertDataObject:(id)object withProvenance:(id)provenance inDatabase:(id)database persistentID:(id)d error:(id *)error;
@end

@implementation HDScoredAssessmentEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"data_id";
  v2 = +[(HDDataEntity *)HDSampleEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDScoredAssessmentEntity.m" lineNumber:73 description:{@"Subclasses must override %s", "+[HDScoredAssessmentEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v16 = MEMORY[0x277CCAAB0];
  answers = [objectCopy answers];
  v18 = [v16 archivedDataWithRootObject:answers requiringSecureCoding:1 error:error];

  if (v18)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __90__HDScoredAssessmentEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
    v28[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v28[4] = self;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __90__HDScoredAssessmentEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke_2;
    v24[3] = &unk_278613528;
    v19 = dCopy;
    v25 = v19;
    v26 = objectCopy;
    v27 = v18;
    if ([databaseCopy executeCachedStatementForKey:&insertDataObject_withProvenance_inDatabase_persistentID_error__insertKey_3 error:error SQLGenerator:v28 bindingHandler:v24 enumerationHandler:0])
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

id __90__HDScoredAssessmentEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"INSERT OR REPLACE INTO %@ (%@, %@, %@, %@) VALUES (?, ?, ?, ?)", v2, @"data_id", @"score", @"answers", @"risk", 0];

  return v3;
}

uint64_t __90__HDScoredAssessmentEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  sqlite3_bind_int64(a2, 2, [*(a1 + 40) score]);
  v4 = *(a1 + 48);
  v5 = _HDSQLiteValueForData();
  HDSQLiteBindFoundationValueToStatement();

  v6 = [*(a1 + 40) risk];

  return sqlite3_bind_int64(a2, 4, v6);
}

+ (BOOL)addCodableObject:(id)object toCollection:(id)collection
{
  if (object)
  {
    [collection addScoredAssessmentSamples:object];
  }

  return object != 0;
}

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDScoredAssessmentEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

@end