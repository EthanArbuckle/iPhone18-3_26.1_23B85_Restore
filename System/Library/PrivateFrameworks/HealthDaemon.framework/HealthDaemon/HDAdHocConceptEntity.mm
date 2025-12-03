@interface HDAdHocConceptEntity
+ (BOOL)deleteNonIndexedConceptsWithTransaction:(id)transaction internalContentDatabaseManager:(id)manager error:(id *)error;
+ (BOOL)enumerateAdHocConceptWithRawIdentifiers:(id)identifiers options:(unint64_t)options profile:(id)profile error:(id *)error enumerationHandler:(id)handler;
+ (id)_adHocConceptForCodingCollection:(uint64_t)collection options:(void *)options transaction:(uint64_t)transaction error:;
+ (id)_conceptForRow:(uint64_t)row options:;
+ (id)adHocConceptForCodingCollection:(id)collection options:(unint64_t)options profile:(id)profile error:(id *)error;
+ (id)adHocConceptForIdentifier:(id)identifier options:(unint64_t)options profile:(id)profile error:(id *)error;
+ (id)generateAdHocConceptForCodingCollection:(id)collection options:(unint64_t)options profile:(id)profile error:(id *)error;
@end

@implementation HDAdHocConceptEntity

+ (id)adHocConceptForIdentifier:(id)identifier options:(unint64_t)options profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__154;
  v26 = __Block_byref_object_dispose__154;
  v27 = 0;
  database = [profileCopy database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__HDAdHocConceptEntity_adHocConceptForIdentifier_options_profile_error___block_invoke;
  v17[3] = &unk_278627E78;
  v19 = &v22;
  selfCopy = self;
  v13 = identifierCopy;
  v18 = v13;
  optionsCopy = options;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v17];

  if (error)
  {
    v14 = v23[5];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  _Block_object_dispose(&v22, 8);

  return v15;
}

BOOL __72__HDAdHocConceptEntity_adHocConceptForIdentifier_options_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = a2;
  v10 = objc_opt_self();
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__154;
  v26 = __Block_byref_object_dispose__154;
  v27 = 0;
  v11 = [v9 protectedDatabase];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __77__HDAdHocConceptEntity__adHocConceptForIdentifier_options_transaction_error___block_invoke;
  v21[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v21[4] = v10;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__HDAdHocConceptEntity__adHocConceptForIdentifier_options_transaction_error___block_invoke_2;
  v19[3] = &unk_278614860;
  v12 = v8;
  v20 = v12;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__HDAdHocConceptEntity__adHocConceptForIdentifier_options_transaction_error___block_invoke_3;
  v18[3] = &unk_278627EC8;
  v18[4] = &v22;
  v18[5] = v10;
  v18[6] = v7;
  LOBYTE(v10) = [v11 executeCachedStatementForKey:&_adHocConceptForIdentifier_options_transaction_error__statementKey error:a3 SQLGenerator:v21 bindingHandler:v19 enumerationHandler:v18];

  if (v10)
  {
    v13 = v23[5];
    if (!v13)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a3 code:118 format:{@"No adHoc concept found for identifier %@", v12}];
      v13 = v23[5];
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v22, 8);
  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

+ (id)adHocConceptForCodingCollection:(id)collection options:(unint64_t)options profile:(id)profile error:(id *)error
{
  collectionCopy = collection;
  profileCopy = profile;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__154;
  v26 = __Block_byref_object_dispose__154;
  v27 = 0;
  database = [profileCopy database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__HDAdHocConceptEntity_adHocConceptForCodingCollection_options_profile_error___block_invoke;
  v17[3] = &unk_278627E78;
  v19 = &v22;
  selfCopy = self;
  v13 = collectionCopy;
  v18 = v13;
  optionsCopy = options;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v17];

  if (error)
  {
    v14 = v23[5];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  _Block_object_dispose(&v22, 8);

  return v15;
}

BOOL __78__HDAdHocConceptEntity_adHocConceptForCodingCollection_options_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [(HDAdHocConceptEntity *)*(a1 + 48) _adHocConceptForCodingCollection:*(a1 + 56) options:a2 transaction:a3 error:?];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

+ (id)_adHocConceptForCodingCollection:(uint64_t)collection options:(void *)options transaction:(uint64_t)transaction error:
{
  v8 = a2;
  optionsCopy = options;
  v10 = objc_opt_self();
  v11 = [MEMORY[0x277CCD1F8] adHocCodingForCodingCollection:v8];
  code = [v11 code];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__154;
  v26 = __Block_byref_object_dispose__154;
  v27 = 0;
  protectedDatabase = [optionsCopy protectedDatabase];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__HDAdHocConceptEntity__adHocConceptForCodingCollection_options_transaction_error___block_invoke;
  v21[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v21[4] = v10;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__HDAdHocConceptEntity__adHocConceptForCodingCollection_options_transaction_error___block_invoke_2;
  v19[3] = &unk_278614860;
  v14 = code;
  v20 = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__HDAdHocConceptEntity__adHocConceptForCodingCollection_options_transaction_error___block_invoke_3;
  v18[3] = &unk_278627EC8;
  v18[4] = &v22;
  v18[5] = v10;
  v18[6] = collection;
  LOBYTE(collection) = [protectedDatabase executeCachedStatementForKey:&_adHocConceptForCodingCollection_options_transaction_error__statementKey error:transaction SQLGenerator:v21 bindingHandler:v19 enumerationHandler:v18];

  if (collection)
  {
    v15 = v23[5];
    if (!v15)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:transaction code:118 format:{@"No adHoc concept found for code %@", v14}];
      v15 = v23[5];
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v22, 8);

  return v16;
}

+ (id)generateAdHocConceptForCodingCollection:(id)collection options:(unint64_t)options profile:(id)profile error:(id *)error
{
  collectionCopy = collection;
  profileCopy = profile;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__154;
  v26 = __Block_byref_object_dispose__154;
  v27 = 0;
  database = [profileCopy database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__HDAdHocConceptEntity_generateAdHocConceptForCodingCollection_options_profile_error___block_invoke;
  v17[3] = &unk_278627E78;
  v19 = &v22;
  selfCopy = self;
  v13 = collectionCopy;
  v18 = v13;
  optionsCopy = options;
  LODWORD(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v17];

  if (error)
  {
    v14 = v23[5];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  _Block_object_dispose(&v22, 8);

  return v15;
}

BOOL __86__HDAdHocConceptEntity_generateAdHocConceptForCodingCollection_options_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = a2;
  v10 = objc_opt_self();
  v11 = MEMORY[0x277CCD1F8];
  v12 = [MEMORY[0x277CCD1D0] inMemoryConceptIdentifier];
  v13 = [v11 synthesizeConceptWithIdentifier:v12 forCodingCollection:v8];

  v14 = v13;
  v15 = v9;
  v16 = objc_opt_self();
  v17 = [v15 protectedDatabase];

  v24 = v14;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __62__HDAdHocConceptEntity__insertAdHocConcept_transaction_error___block_invoke;
  v25[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v25[4] = v16;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __62__HDAdHocConceptEntity__insertAdHocConcept_transaction_error___block_invoke_2;
  v23[3] = &unk_278614860;
  v18 = v14;
  LODWORD(v16) = [v17 executeCachedStatementForKey:&_insertAdHocConcept_transaction_error__statementKey error:a3 SQLGenerator:v25 bindingHandler:v23 enumerationHandler:0];

  v19 = 0;
  if (v16)
  {
    v19 = [(HDAdHocConceptEntity *)v10 _adHocConceptForCodingCollection:v8 options:v6 transaction:v15 error:a3];
  }

  v20 = *(*(a1 + 40) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

+ (BOOL)enumerateAdHocConceptWithRawIdentifiers:(id)identifiers options:(unint64_t)options profile:(id)profile error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  v13 = MEMORY[0x277D10B28];
  profileCopy = profile;
  v15 = [v13 containsPredicateWithProperty:@"concept_identifier" values:identifiers];
  database = [profileCopy database];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __105__HDAdHocConceptEntity_enumerateAdHocConceptWithRawIdentifiers_options_profile_error_enumerationHandler___block_invoke;
  v19[3] = &unk_278627EA0;
  v20 = handlerCopy;
  selfCopy = self;
  optionsCopy = options;
  v17 = handlerCopy;
  LOBYTE(error) = [self enumerateProperties:&unk_283CAFBC8 withPredicate:v15 healthDatabase:database error:error enumerationHandler:v19];

  return error;
}

uint64_t __105__HDAdHocConceptEntity_enumerateAdHocConceptWithRawIdentifiers_options_profile_error_enumerationHandler___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[4];
  v7 = [(HDAdHocConceptEntity *)a1[5] _conceptForRow:a4 options:a1[6]];
  v8 = (*(v6 + 16))(v6, v7, a5);

  return v8;
}

+ (id)_conceptForRow:(uint64_t)row options:
{
  objc_opt_self();
  v5 = HDSQLiteColumnAsInt64();
  v6 = MEMORY[0x22AAC6C90](a2, 1);
  v7 = HDSQLiteColumnAsInt64();
  v8 = MEMORY[0x22AAC6C90](a2, 3);
  v9 = MEMORY[0x22AAC6C90](a2, 4);
  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v11 = [objc_alloc(MEMORY[0x277CCD1B8]) initWithType:2 value:v6 version:v7 deleted:0];
  v12 = [objc_alloc(MEMORY[0x277CCD1B8]) initWithType:959 value:v8 version:v7 deleted:0];
  v13 = [v10 initWithObjects:{v11, v12, 0}];

  if (v9)
  {
    v14 = [objc_alloc(MEMORY[0x277CCD1B8]) initWithType:1012 value:v9 version:v7 deleted:0];
    [v13 addObject:v14];
  }

  v15 = objc_alloc(MEMORY[0x277CCD1B0]);
  v16 = [objc_alloc(MEMORY[0x277CCD1D0]) initWithRawIdentifier:v5];
  v17 = [v15 initWithIdentifier:v16 attributes:v13 relationships:MEMORY[0x277CBEBF8] version:v7 deleted:0 options:row];

  return v17;
}

+ (BOOL)deleteNonIndexedConceptsWithTransaction:(id)transaction internalContentDatabaseManager:(id)manager error:(id *)error
{
  transactionCopy = transaction;
  managerCopy = manager;
  if (objc_opt_respondsToSelector())
  {
    [managerCopy unitTesting_willDeleteNonIndexedAdhocConcepts];
  }

  protectedDatabase = [transactionCopy protectedDatabase];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __101__HDAdHocConceptEntity_deleteNonIndexedConceptsWithTransaction_internalContentDatabaseManager_error___block_invoke;
  v13[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v13[4] = self;
  v11 = [protectedDatabase executeCachedStatementForKey:&deleteNonIndexedConceptsWithTransaction_internalContentDatabaseManager_error__statementKey error:error SQLGenerator:v13 bindingHandler:0 enumerationHandler:0];

  return v11;
}

id __101__HDAdHocConceptEntity_deleteNonIndexedConceptsWithTransaction_internalContentDatabaseManager_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = +[(HDSQLiteSchemaEntity *)HDConceptIndexEntity];
  v5 = [*(a1 + 32) disambiguatedSQLForProperty:@"concept_identifier"];
  v6 = [(HDSQLiteSchemaEntity *)HDConceptIndexEntity disambiguatedSQLForProperty:@"concept_identifier"];
  v7 = [v2 initWithFormat:@"DELETE FROM %@ WHERE NOT EXISTS (SELECT 1 FROM %@ WHERE %@ = %@)", v3, v4, v5, v6];

  return v7;
}

id __77__HDAdHocConceptEntity__adHocConceptForIdentifier_options_transaction_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [v2 initWithFormat:@"SELECT %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ?", @"concept_identifier", @"code", @"version", @"valid_regions", @"display_name", v3, @"concept_identifier"];

  return v4;
}

uint64_t __77__HDAdHocConceptEntity__adHocConceptForIdentifier_options_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) rawIdentifier];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __77__HDAdHocConceptEntity__adHocConceptForIdentifier_options_transaction_error___block_invoke_3(void *a1, uint64_t a2)
{
  v3 = [(HDAdHocConceptEntity *)a1[5] _conceptForRow:a2 options:a1[6]];
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

id __83__HDAdHocConceptEntity__adHocConceptForCodingCollection_options_transaction_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [v2 initWithFormat:@"SELECT %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ?", @"concept_identifier", @"code", @"version", @"valid_regions", @"display_name", v3, @"code"];

  return v4;
}

uint64_t __83__HDAdHocConceptEntity__adHocConceptForCodingCollection_options_transaction_error___block_invoke_3(void *a1, uint64_t a2)
{
  v3 = [(HDAdHocConceptEntity *)a1[5] _conceptForRow:a2 options:a1[6]];
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

id __62__HDAdHocConceptEntity__insertAdHocConcept_transaction_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [*(a1 + 32) disambiguatedDatabaseTable];
  v5 = [v2 initWithFormat:@"INSERT OR IGNORE INTO %@ (%@, %@, %@, %@, %@, %@) VALUES ((COALESCE((SELECT MAX(%@) + 1 FROM %@), %lld)), ?, ?, ?, ?, ?)", v3, @"concept_identifier", @"code", @"version", @"valid_regions", @"display_name", @"creation_date", @"concept_identifier", v4, 0x1000000000000];

  return v5;
}

uint64_t __62__HDAdHocConceptEntity__insertAdHocConcept_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) adHocCode];
  HDSQLiteBindStringToStatement();

  sqlite3_bind_int64(a2, 2, [*(a1 + 32) version]);
  v5 = [*(a1 + 32) firstAttributeForType:959];
  v6 = [v5 stringValue];
  HDSQLiteBindStringToStatement();

  v7 = [*(a1 + 32) preferredName];
  HDSQLiteBindFoundationValueToStatement();

  Current = CFAbsoluteTimeGetCurrent();

  return sqlite3_bind_double(a2, 5, Current);
}

@end