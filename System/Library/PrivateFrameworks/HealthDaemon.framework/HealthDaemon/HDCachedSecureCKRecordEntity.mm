@interface HDCachedSecureCKRecordEntity
+ (BOOL)deleteRecordWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName recordName:(id)recordName profile:(id)profile error:(id *)error;
+ (BOOL)insertOrUpdateWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName recordData:(id)data recordName:(id)recordName profile:(id)profile error:(id *)self0;
+ (BOOL)insertOrUpdateWithRecordID:(int64_t)d recordData:(id)data profile:(id)profile error:(id *)error;
+ (BOOL)synchronizeRecordsWithProfile:(id)profile error:(id *)error;
+ (BOOL)updateWithRecordData:(id)data recordID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (id)_unprotectedRecordEntityWithContainerIdentifier:(uint64_t)identifier databaseScope:(void *)scope zoneName:(void *)name ownerName:(void *)ownerName recordName:(void *)recordName profile:(uint64_t)profile error:;
+ (id)insertWithRecordID:(int64_t)d recordData:(id)data transaction:(id)transaction error:(id *)error;
+ (id)protectedRecordDataForUnprotectedEntity:(id)entity transaction:(id)transaction error:(id *)error;
@end

@implementation HDCachedSecureCKRecordEntity

+ (id)insertWithRecordID:(int64_t)d recordData:(id)data transaction:(id)transaction error:(id *)error
{
  dataCopy = data;
  v11 = [transaction databaseForEntityClass:self];
  dCopy = d;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __80__HDCachedSecureCKRecordEntity_insertWithRecordID_recordData_transaction_error___block_invoke;
  v21[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v21[4] = self;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__HDCachedSecureCKRecordEntity_insertWithRecordID_recordData_transaction_error___block_invoke_2;
  v18[3] = &unk_278613B58;
  v12 = dataCopy;
  v19 = v12;
  v13 = [v11 executeCachedStatementForKey:&insertWithRecordID_recordData_transaction_error__lookupKey error:error SQLGenerator:v21 bindingHandler:v18 enumerationHandler:0];
  v14 = 0;
  if (v13)
  {
    v15 = [HDCachedSecureCKRecordEntity alloc];
    lastInsertRowID = [v11 lastInsertRowID];
    v14 = -[HDSQLiteEntity initWithPersistentID:](v15, "initWithPersistentID:", [lastInsertRowID longLongValue]);
  }

  return v14;
}

id __80__HDCachedSecureCKRecordEntity_insertWithRecordID_recordData_transaction_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_self();
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 disambiguatedDatabaseTable];
  v5 = [v3 stringWithFormat:@"INSERT INTO %@ (%@, %@) VALUES (?, ?)", v4, @"record_id", @"record_data"];

  return v5;
}

uint64_t __80__HDCachedSecureCKRecordEntity_insertWithRecordID_recordData_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  v3 = *(a1 + 32);

  return HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)updateWithRecordData:(id)data recordID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v11 = [transaction databaseForEntityClass:self];
  v12 = HDPredicateForRecordID(d);
  v19[0] = @"record_data";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__HDCachedSecureCKRecordEntity_updateWithRecordData_recordID_transaction_error___block_invoke;
  v17[3] = &unk_278614508;
  v18 = dataCopy;
  v14 = dataCopy;
  LOBYTE(error) = [self updateProperties:v13 predicate:v12 database:v11 error:error bindingHandler:v17];

  v15 = *MEMORY[0x277D85DE8];
  return error;
}

+ (BOOL)insertOrUpdateWithRecordID:(int64_t)d recordData:(id)data profile:(id)profile error:(id *)error
{
  dataCopy = data;
  profileCopy = profile;
  database = [profileCopy database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__HDCachedSecureCKRecordEntity_insertOrUpdateWithRecordID_recordData_profile_error___block_invoke;
  v20[3] = &unk_27861E450;
  selfCopy = self;
  dCopy = d;
  v21 = dataCopy;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__HDCachedSecureCKRecordEntity_insertOrUpdateWithRecordID_recordData_profile_error___block_invoke_2;
  v16[3] = &unk_2786146C0;
  v18 = profileCopy;
  dCopy2 = d;
  v17 = v21;
  v13 = profileCopy;
  v14 = v21;
  LOBYTE(error) = [(HDHealthEntity *)HDCachedSecureCKRecordEntity performWriteTransactionWithHealthDatabase:database error:error block:v20 inaccessibilityHandler:v16];

  return error;
}

BOOL __84__HDCachedSecureCKRecordEntity_insertOrUpdateWithRecordID_recordData_profile_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1[5];
  v7 = [v5 databaseForEntityClass:v6];
  v8 = HDPredicateForRecordID(a1[6]);
  v24 = 0;
  v9 = [v6 anyInDatabase:v7 predicate:v8 error:&v24];
  v10 = v24;

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (v11)
  {
    if (v9)
    {
      v12 = a1[4];
      v13 = a1[6];
      v22 = v10;
      v14 = [HDCachedSecureCKRecordEntity updateWithRecordData:v12 recordID:v13 transaction:v5 error:&v22];
      v15 = v22;

      v10 = v15;
    }

    else
    {
      v17 = a1[6];
      v18 = a1[4];
      v23 = v10;
      v9 = [HDCachedSecureCKRecordEntity insertWithRecordID:v17 recordData:v18 transaction:v5 error:&v23];
      v19 = v23;

      v14 = 1;
      if (!v9 && v19)
      {
        if (a3)
        {
          v20 = v19;
          v14 = 0;
          v9 = 0;
          *a3 = v19;
        }

        else
        {
          _HKLogDroppedError();
          v14 = 0;
          v9 = 0;
        }
      }

      v10 = v19;
    }
  }

  else if (a3)
  {
    v16 = v10;
    v14 = 0;
    v9 = 0;
    *a3 = v10;
  }

  else
  {
    _HKLogDroppedError();
    v14 = 0;
    v9 = 0;
  }

  return v14;
}

uint64_t __84__HDCachedSecureCKRecordEntity_insertOrUpdateWithRecordID_recordData_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(HDCachedSecureCKRecordJournalEntry);
  [(HDCachedSecureCKRecordJournalEntry *)v5 setRecordID:*(a1 + 48)];
  [(HDCachedSecureCKRecordJournalEntry *)v5 setRecordData:*(a1 + 32)];
  v6 = [*(a1 + 40) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

+ (BOOL)insertOrUpdateWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName recordData:(id)data recordName:(id)recordName profile:(id)profile error:(id *)self0
{
  dataCopy = data;
  profileCopy = profile;
  v25 = 0;
  v18 = [(HDCachedSecureCKRecordEntity *)self _unprotectedRecordEntityWithContainerIdentifier:identifier databaseScope:scope zoneName:name ownerName:ownerName recordName:recordName profile:profileCopy error:&v25];
  v19 = v25;
  v20 = v19;
  if (v18)
  {
    v21 = 1;
  }

  else
  {
    v21 = v19 == 0;
  }

  if (v21)
  {
    if (v18)
    {
      v22 = +[HDCachedSecureCKRecordEntity insertOrUpdateWithRecordID:recordData:profile:error:](HDCachedSecureCKRecordEntity, "insertOrUpdateWithRecordID:recordData:profile:error:", [v18 persistentID], dataCopy, profileCopy, error);
    }

    else
    {
      v22 = 1;
    }
  }

  else if (error)
  {
    v23 = v19;
    v22 = 0;
    *error = v20;
  }

  else
  {
    _HKLogDroppedError();
    v22 = 0;
  }

  return v22;
}

+ (id)_unprotectedRecordEntityWithContainerIdentifier:(uint64_t)identifier databaseScope:(void *)scope zoneName:(void *)name ownerName:(void *)ownerName recordName:(void *)recordName profile:(uint64_t)profile error:
{
  v14 = a2;
  scopeCopy = scope;
  nameCopy = name;
  ownerNameCopy = ownerName;
  recordNameCopy = recordName;
  objc_opt_self();
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__157;
  v38 = __Block_byref_object_dispose__157;
  v39 = 0;
  database = [recordNameCopy database];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __138__HDCachedSecureCKRecordEntity__unprotectedRecordEntityWithContainerIdentifier_databaseScope_zoneName_ownerName_recordName_profile_error___block_invoke;
  v27[3] = &unk_278628688;
  v20 = v14;
  v28 = v20;
  identifierCopy = identifier;
  v21 = scopeCopy;
  v29 = v21;
  v22 = nameCopy;
  v30 = v22;
  v32 = &v34;
  v23 = ownerNameCopy;
  v31 = v23;
  LODWORD(profile) = [(HDHealthEntity *)HDCachedCKRecordEntity performReadTransactionWithHealthDatabase:database error:profile block:v27];

  if (profile)
  {
    v24 = v35[5];
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  _Block_object_dispose(&v34, 8);

  return v25;
}

+ (id)protectedRecordDataForUnprotectedEntity:(id)entity transaction:(id)transaction error:(id *)error
{
  entityCopy = entity;
  transactionCopy = transaction;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__157;
  v23 = __Block_byref_object_dispose__157;
  v24 = 0;
  protectedDatabase = [transactionCopy protectedDatabase];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__HDCachedSecureCKRecordEntity_protectedRecordDataForUnprotectedEntity_transaction_error___block_invoke;
  v18[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v18[4] = self;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__HDCachedSecureCKRecordEntity_protectedRecordDataForUnprotectedEntity_transaction_error___block_invoke_2;
  v16[3] = &unk_278614860;
  v11 = entityCopy;
  v17 = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__HDCachedSecureCKRecordEntity_protectedRecordDataForUnprotectedEntity_transaction_error___block_invoke_3;
  v15[3] = &unk_278614620;
  v15[4] = &v19;
  LODWORD(error) = [protectedDatabase executeCachedStatementForKey:&protectedRecordDataForUnprotectedEntity_transaction_error__lookupKey error:error SQLGenerator:v18 bindingHandler:v16 enumerationHandler:v15];

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

id __90__HDCachedSecureCKRecordEntity_protectedRecordDataForUnprotectedEntity_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@=?", @"record_data", v2, @"record_id"];

  return v3;
}

uint64_t __90__HDCachedSecureCKRecordEntity_protectedRecordDataForUnprotectedEntity_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) persistentID];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __90__HDCachedSecureCKRecordEntity_protectedRecordDataForUnprotectedEntity_transaction_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C30](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

+ (BOOL)deleteRecordWithContainerIdentifier:(id)identifier databaseScope:(int64_t)scope zoneName:(id)name ownerName:(id)ownerName recordName:(id)recordName profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v29 = 0;
  v16 = [(HDCachedSecureCKRecordEntity *)self _unprotectedRecordEntityWithContainerIdentifier:identifier databaseScope:scope zoneName:name ownerName:ownerName recordName:recordName profile:profileCopy error:&v29];
  v17 = v29;
  v18 = v17;
  if (v16 || !v17)
  {
    if (v16)
    {
      database = [profileCopy database];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __126__HDCachedSecureCKRecordEntity_deleteRecordWithContainerIdentifier_databaseScope_zoneName_ownerName_recordName_profile_error___block_invoke;
      v26[3] = &unk_278619348;
      selfCopy = self;
      v27 = v16;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __126__HDCachedSecureCKRecordEntity_deleteRecordWithContainerIdentifier_databaseScope_zoneName_ownerName_recordName_profile_error___block_invoke_2;
      v23[3] = &unk_278616F88;
      v24 = v27;
      v25 = profileCopy;
      v20 = [self performWriteTransactionWithHealthDatabase:database error:error block:v26 inaccessibilityHandler:v23];
    }

    else
    {
      v20 = 1;
    }
  }

  else if (error)
  {
    v19 = v17;
    v20 = 0;
    *error = v18;
  }

  else
  {
    _HKLogDroppedError();
    v20 = 0;
  }

  return v20;
}

uint64_t __126__HDCachedSecureCKRecordEntity_deleteRecordWithContainerIdentifier_databaseScope_zoneName_ownerName_recordName_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v6 = *(a1 + 40);
  v7 = HDPredicateForRecordID([*(a1 + 32) persistentID]);
  v8 = [v6 deleteEntitiesInDatabase:v5 predicate:v7 error:a3];

  return v8;
}

uint64_t __126__HDCachedSecureCKRecordEntity_deleteRecordWithContainerIdentifier_databaseScope_zoneName_ownerName_recordName_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(HDCachedSecureDeleteCKRecordJournalEntry);
  -[HDCachedSecureDeleteCKRecordJournalEntry setRecordID:](v5, "setRecordID:", [*(a1 + 32) persistentID]);
  v6 = [*(a1 + 40) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

+ (BOOL)synchronizeRecordsWithProfile:(id)profile error:(id *)error
{
  database = [profile database];
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:&__block_literal_global_188 inaccessibilityHandler:0];

  return error;
}

uint64_t __68__HDCachedSecureCKRecordEntity_synchronizeRecordsWithProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __68__HDCachedSecureCKRecordEntity_synchronizeRecordsWithProfile_error___block_invoke_2;
  v30[3] = &unk_278628660;
  v6 = v4;
  v31 = v6;
  v7 = v5;
  v32 = v7;
  v8 = v30;
  v9 = v6;
  v10 = objc_opt_self();
  v11 = [v9 databaseForEntityClass:v10];

  v12 = [v10 queryWithDatabase:v11 predicate:0];

  *&v37 = @"record_id";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __93__HDCachedSecureCKRecordEntity__enumerateAllRecordIDsInTransaction_error_enumerationHandler___block_invoke;
  v35[3] = &unk_2786145A8;
  v36 = v8;
  v14 = v8;
  v15 = a3;
  LODWORD(a3) = [v12 enumerateProperties:v13 error:a3 enumerationHandler:v35];

  if (a3)
  {
    if ([v7 count])
    {
      v16 = v7;
      v17 = v9;
      v18 = objc_opt_self();
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = v16;
      v19 = [obj countByEnumeratingWithState:&v37 objects:v35 count:16];
      if (v19)
      {
        v20 = v19;
        v28 = v7;
        v21 = *v38;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v38 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v37 + 1) + 8 * i);
            v24 = [v17 protectedDatabase];
            v33[4] = v23;
            v34[0] = MEMORY[0x277D85DD0];
            v34[1] = 3221225472;
            v34[2] = __67__HDCachedSecureCKRecordEntity__deleteRecordIds_transaction_error___block_invoke;
            v34[3] = &__block_descriptor_40_e15___NSString_8__0l;
            v34[4] = v18;
            v33[0] = MEMORY[0x277D85DD0];
            v33[1] = 3221225472;
            v33[2] = __67__HDCachedSecureCKRecordEntity__deleteRecordIds_transaction_error___block_invoke_2;
            v33[3] = &unk_278614860;
            LODWORD(v23) = [v24 executeCachedStatementForKey:&_deleteRecordIds_transaction_error__lookupKey error:v15 SQLGenerator:v34 bindingHandler:v33 enumerationHandler:0];

            if (!v23)
            {
              v25 = 0;
              goto LABEL_14;
            }
          }

          v20 = [obj countByEnumeratingWithState:&v37 objects:v35 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }

        v25 = 1;
LABEL_14:
        v7 = v28;
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
      v25 = 1;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t __68__HDCachedSecureCKRecordEntity_synchronizeRecordsWithProfile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v6 = [*(a1 + 32) unprotectedDatabase];
  v11[4] = &v13;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__HDCachedSecureCKRecordEntity_synchronizeRecordsWithProfile_error___block_invoke_4;
  v12[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v12[4] = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HDCachedSecureCKRecordEntity_synchronizeRecordsWithProfile_error___block_invoke_5;
  v11[3] = &unk_278614620;
  v7 = [v6 executeCachedStatementForKey:&HDCachedSecureCKRecordJournalEntryRecordDataKey_block_invoke_lookupKey error:a3 SQLGenerator:&__block_literal_global_370_0 bindingHandler:v12 enumerationHandler:v11];

  if ((v14[3] & 1) == 0)
  {
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    [v8 addObject:v9];
  }

  _Block_object_dispose(&v13, 8);
  return v7;
}

id __68__HDCachedSecureCKRecordEntity_synchronizeRecordsWithProfile_error___block_invoke_3()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = +[(HDSQLiteSchemaEntity *)HDCachedCKRecordEntity];
  v2 = [v0 stringWithFormat:@"SELECT 1 FROM %@ WHERE %@ = ? LIMIT 1", v1, *MEMORY[0x277D10A40]];

  return v2;
}

uint64_t __93__HDCachedSecureCKRecordEntity__enumerateAllRecordIDsInTransaction_error_enumerationHandler___block_invoke(uint64_t a1)
{
  HDSQLiteColumnWithNameAsInt64();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

id __67__HDCachedSecureCKRecordEntity__deleteRecordIds_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"DELETE FROM %@ WHERE %@ = ?", v2, @"record_id"];

  return v3;
}

uint64_t __67__HDCachedSecureCKRecordEntity__deleteRecordIds_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) longLongValue];

  return sqlite3_bind_int64(a2, 1, v3);
}

uint64_t __138__HDCachedSecureCKRecordEntity__unprotectedRecordEntityWithContainerIdentifier_databaseScope_zoneName_ownerName_recordName_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = HDPredicateForContainerIdentifierAndDatabaseScope(*(a1 + 32), *(a1 + 72));
  v7 = [v5 databaseForEntityClass:objc_opt_class()];
  v30 = 0;
  v8 = [(HDSQLiteEntity *)HDCachedCKDatabaseEntity anyInDatabase:v7 predicate:v6 error:&v30];
  v9 = v30;

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (v10)
  {
    if (v8)
    {
      v11 = HDPredicateForDatabaseIDAndRecordZone([v8 persistentID], *(a1 + 40), *(a1 + 48));
      v12 = [v5 databaseForEntityClass:objc_opt_class()];
      v29 = v9;
      v13 = [(HDSQLiteEntity *)HDCachedCKRecordZoneEntity anyInDatabase:v12 predicate:v11 error:&v29];
      v14 = v29;

      if (v13)
      {
        v26 = v14;
        v27 = v11;
        v15 = [v5 databaseForEntityClass:objc_opt_class()];
        v16 = HDPredicateForZoneIDAndRecordName([v13 persistentID], *(a1 + 56));
        v28 = 0;
        v17 = [(HDSQLiteEntity *)HDCachedCKRecordEntity anyInDatabase:v15 predicate:v16 error:&v28];
        v18 = v28;
        v19 = *(*(a1 + 64) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v17;

        if (*(*(*(a1 + 64) + 8) + 40))
        {
          v21 = 1;
        }

        else
        {
          v21 = v18 == 0;
        }

        v22 = v21;
        if (!v21)
        {
          if (a3)
          {
            v23 = v18;
            *a3 = v18;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v14 = v26;
        v11 = v27;
      }

      else
      {
        v22 = 1;
      }

      v9 = v14;
    }

    else
    {
      v22 = 1;
    }
  }

  else if (a3)
  {
    v24 = v9;
    v22 = 0;
    *a3 = v9;
  }

  else
  {
    _HKLogDroppedError();
    v22 = 0;
  }

  return v22;
}

@end