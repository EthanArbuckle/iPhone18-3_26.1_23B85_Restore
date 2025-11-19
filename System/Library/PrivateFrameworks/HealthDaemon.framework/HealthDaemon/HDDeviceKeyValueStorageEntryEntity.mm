@interface HDDeviceKeyValueStorageEntryEntity
+ (BOOL)enumerateAllEntriesForSyncIdentity:(id)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (BOOL)removeEntitesForKeys:(id)a3 domain:(id)a4 syncEntityIdentity:(int64_t)a5 transaction:(id)a6 error:(id *)a7;
+ (BOOL)replaceEntriesForOldSyncIdentity:(int64_t)a3 withNewSyncIdentity:(int64_t)a4 deviceContextID:(int64_t)a5 transaction:(id)a6 error:(id *)a7;
+ (id)_predicateForAnyKeys:(id)a3;
+ (id)_predicateForKeys:(id)a3 domain:(id)a4;
+ (id)_predicateForSyncEntityIdentity:(int64_t)a3 domain:(id)a4 keys:(id)a5;
+ (id)_propertiesForEntity;
+ (id)fetchEntriesForKeys:(id)a3 domain:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (id)fetchEntryForKey:(id)a3 domain:(id)a4 syncEntityIdentity:(int64_t)a5 transaction:(id)a6 error:(id *)a7;
+ (int)setData:(id)a3 forKey:(id)a4 domain:(id)a5 deviceContextID:(int64_t)a6 syncEntityIdentity:(int64_t)a7 modificationDate:(id)a8 transaction:(id)a9 error:(id *)a10;
+ (void)binderHandlerForBinder:(HDSQLiteStatementBinder *)a3 key:(id)a4 domain:(id)a5 object:(id)a6 syncEntityIdentity:(int64_t)a7 deviceContext:(int64_t)a8 modificationDate:(id)a9;
@end

@implementation HDDeviceKeyValueStorageEntryEntity

+ (id)fetchEntriesForKeys:(id)a3 domain:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__144;
  v29 = __Block_byref_object_dispose__144;
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [v12 databaseForEntityClass:a1];
  v14 = [a1 _predicateForKeys:v10 domain:v11];
  v15 = [a1 queryWithDatabase:v13 predicate:v14];

  v16 = [a1 _propertiesForEntity];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__HDDeviceKeyValueStorageEntryEntity_fetchEntriesForKeys_domain_transaction_error___block_invoke;
  v21[3] = &unk_278627150;
  v17 = v12;
  v22 = v17;
  v23 = &v25;
  v24 = a1;
  LODWORD(a6) = [v15 enumerateProperties:v16 error:a6 enumerationHandler:v21];

  if (a6)
  {
    v18 = v26[5];
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  _Block_object_dispose(&v25, 8);

  return v19;
}

BOOL __83__HDDeviceKeyValueStorageEntryEntity_fetchEntriesForKeys_domain_transaction_error___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [HDSyncIdentityEntity concreteIdentityForPersistentID:HDSQLiteColumnWithNameAsInt64() transaction:a1[4] error:a4];
  if (v5)
  {
    v6 = a1[6];
    v7 = objc_opt_class();
    v8 = [v7 isEqual:objc_opt_class()] ^ 1;
    v9 = [HDDeviceKeyValueStorageEntry alloc];
    v10 = HDSQLiteColumnWithNameAsString();
    v11 = HDSQLiteColumnWithNameAsString();
    v12 = HDSQLiteColumnWithNameAsData();
    v13 = HDSQLiteColumnWithNameAsDate();
    v14 = [v5 identity];
    v15 = [(HDDeviceKeyValueStorageEntry *)v9 initWithDomain:v10 key:v11 value:v12 modificationDate:v13 syncIdentity:v14 category:v8];

    [*(*(a1[5] + 8) + 40) addObject:v15];
  }

  return v5 != 0;
}

+ (BOOL)enumerateAllEntriesForSyncIdentity:(id)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v11 databaseForEntityClass:a1];
  v14 = [HDSyncIdentityEntity concreteIdentityForIdentity:v12 transaction:v11 error:a5];

  if (v14)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __110__HDDeviceKeyValueStorageEntryEntity_enumerateAllEntriesForSyncIdentity_transaction_error_enumerationHandler___block_invoke;
    v23[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v23[4] = a1;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __110__HDDeviceKeyValueStorageEntryEntity_enumerateAllEntriesForSyncIdentity_transaction_error_enumerationHandler___block_invoke_2;
    v21[3] = &unk_278614860;
    v22 = v14;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __110__HDDeviceKeyValueStorageEntryEntity_enumerateAllEntriesForSyncIdentity_transaction_error_enumerationHandler___block_invoke_3;
    v17[3] = &unk_278627178;
    v20 = a1;
    v18 = v22;
    v19 = v10;
    v15 = [v13 executeCachedStatementForKey:&enumerateAllEntriesForSyncIdentity_transaction_error_enumerationHandler__lookupKey error:a5 SQLGenerator:v23 bindingHandler:v21 enumerationHandler:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id __110__HDDeviceKeyValueStorageEntryEntity_enumerateAllEntriesForSyncIdentity_transaction_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ?", @"domain", @"key", @"value", @"date_modified", @"sync_identity_id", v2, @"sync_identity_id"];

  return v3;
}

void __110__HDDeviceKeyValueStorageEntryEntity_enumerateAllEntriesForSyncIdentity_transaction_error_enumerationHandler___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) entity];
  sqlite3_bind_int64(a2, 1, [v3 persistentID]);
}

uint64_t __110__HDDeviceKeyValueStorageEntryEntity_enumerateAllEntriesForSyncIdentity_transaction_error_enumerationHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_opt_class();
  v4 = [v3 isEqual:objc_opt_class()] ^ 1;
  v5 = [HDDeviceKeyValueStorageEntry alloc];
  v6 = HDSQLiteColumnWithNameAsString();
  v7 = HDSQLiteColumnWithNameAsString();
  v8 = HDSQLiteColumnWithNameAsData();
  v9 = HDSQLiteColumnWithNameAsDate();
  v10 = [*(a1 + 32) identity];
  v11 = [(HDDeviceKeyValueStorageEntry *)v5 initWithDomain:v6 key:v7 value:v8 modificationDate:v9 syncIdentity:v10 category:v4];

  (*(*(a1 + 40) + 16))();
  return 1;
}

+ (id)fetchEntryForKey:(id)a3 domain:(id)a4 syncEntityIdentity:(int64_t)a5 transaction:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__144;
  v35 = __Block_byref_object_dispose__144;
  v36 = 0;
  v15 = [v14 databaseForEntityClass:a1];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __99__HDDeviceKeyValueStorageEntryEntity_fetchEntryForKey_domain_syncEntityIdentity_transaction_error___block_invoke;
  v30[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v30[4] = a1;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __99__HDDeviceKeyValueStorageEntryEntity_fetchEntryForKey_domain_syncEntityIdentity_transaction_error___block_invoke_2;
  v26[3] = &unk_2786199F8;
  v16 = v13;
  v27 = v16;
  v17 = v12;
  v28 = v17;
  v29 = a5;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __99__HDDeviceKeyValueStorageEntryEntity_fetchEntryForKey_domain_syncEntityIdentity_transaction_error___block_invoke_3;
  v22[3] = &unk_2786271A0;
  v18 = v14;
  v23 = v18;
  v24 = &v31;
  v25 = a1;
  if ([v15 executeCachedStatementForKey:&fetchEntryForKey_domain_syncEntityIdentity_transaction_error__lookupKey error:a7 SQLGenerator:v30 bindingHandler:v26 enumerationHandler:v22])
  {
    v19 = v32[5];
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  _Block_object_dispose(&v31, 8);

  return v20;
}

id __99__HDDeviceKeyValueStorageEntryEntity_fetchEntryForKey_domain_syncEntityIdentity_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ? AND %@ = ? AND %@ = ?", @"domain", @"key", @"value", @"date_modified", @"sync_identity_id", v2, @"domain", @"key", @"sync_identity_id"];

  return v3;
}

uint64_t __99__HDDeviceKeyValueStorageEntryEntity_fetchEntryForKey_domain_syncEntityIdentity_transaction_error___block_invoke_2(void *a1, sqlite3_stmt *a2)
{
  v4 = a1[4];
  HDSQLiteBindFoundationValueToStatement();
  v5 = a1[5];
  HDSQLiteBindFoundationValueToStatement();
  v6 = a1[6];

  return sqlite3_bind_int64(a2, 3, v6);
}

BOOL __99__HDDeviceKeyValueStorageEntryEntity_fetchEntryForKey_domain_syncEntityIdentity_transaction_error___block_invoke_3(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [HDSyncIdentityEntity concreteIdentityForPersistentID:HDSQLiteColumnWithNameAsInt64() transaction:a1[4] error:a3];
  if (v4)
  {
    v5 = [HDDeviceKeyValueStorageEntry alloc];
    v6 = HDSQLiteColumnWithNameAsString();
    v7 = HDSQLiteColumnWithNameAsString();
    v8 = HDSQLiteColumnWithNameAsData();
    v9 = HDSQLiteColumnWithNameAsDate();
    v10 = [v4 identity];
    v11 = a1[6];
    v12 = objc_opt_class();
    v13 = -[HDDeviceKeyValueStorageEntry initWithDomain:key:value:modificationDate:syncIdentity:category:](v5, "initWithDomain:key:value:modificationDate:syncIdentity:category:", v6, v7, v8, v9, v10, [v12 isEqual:objc_opt_class()] ^ 1);
    v14 = *(a1[5] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  return v4 != 0;
}

+ (BOOL)replaceEntriesForOldSyncIdentity:(int64_t)a3 withNewSyncIdentity:(int64_t)a4 deviceContextID:(int64_t)a5 transaction:(id)a6 error:(id *)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v12 = a6;
  v13 = objc_alloc(MEMORY[0x277CBEB18]);
  v23[0] = @"sync_identity_id";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v15 = [v13 initWithArray:v14];

  v16 = objc_opt_class();
  if ([v16 isEqual:objc_opt_class()])
  {
    [v15 addObject:@"device_record_id"];
  }

  v17 = [v12 databaseForEntityClass:a1];
  v18 = [a1 _predicateForSyncEntityIdentity:a3 domain:0 keys:0];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __125__HDDeviceKeyValueStorageEntryEntity_replaceEntriesForOldSyncIdentity_withNewSyncIdentity_deviceContextID_transaction_error___block_invoke;
  v22[3] = &__block_descriptor_56_e34_v16__0__HDSQLiteStatementBinder__8l;
  v22[4] = a1;
  v22[5] = a4;
  v22[6] = a5;
  v19 = [a1 updateProperties:v15 predicate:v18 database:v17 error:a7 bindingHandler:v22];

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (int)setData:(id)a3 forKey:(id)a4 domain:(id)a5 deviceContextID:(int64_t)a6 syncEntityIdentity:(int64_t)a7 modificationDate:(id)a8 transaction:(id)a9 error:(id *)a10
{
  v56[1] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v20 = a9;
  if (v16)
  {
    v51 = 0;
    v21 = [a1 fetchEntryForKey:v17 domain:v18 syncEntityIdentity:a7 transaction:v20 error:&v51];
    v22 = v51;
    if (v21 || !v22)
    {
      v39 = v22;
      if (v21)
      {
        v37 = v19;
        v26 = [v21 value];
        v27 = [v26 isEqual:v16];

        if (v27)
        {
          _HKInitializeLogging();
          v28 = *MEMORY[0x277CCC328];
          v24 = 2;
          v19 = v37;
          v23 = v39;
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v55 = v21;
            _os_log_debug_impl(&dword_228986000, v28, OS_LOG_TYPE_DEBUG, "Value unchanged for entry %@, skipping.", buf, 0xCu);
          }

          goto LABEL_15;
        }

        v53[0] = @"value";
        v53[1] = @"date_modified";
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
        v52 = v17;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
        v30 = [a1 _predicateForSyncEntityIdentity:a7 domain:v18 keys:v34];
        v31 = [v20 databaseForEntityClass:a1];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __130__HDDeviceKeyValueStorageEntryEntity_setData_forKey_domain_deviceContextID_syncEntityIdentity_modificationDate_transaction_error___block_invoke_346;
        v40[3] = &unk_278613DE8;
        v41 = v16;
        v42 = v37;
        v24 = [a1 updateProperties:v36 predicate:v30 database:v31 error:a10 bindingHandler:v40];

        v19 = v37;
      }

      else
      {
        v38 = [v20 databaseForEntityClass:a1];
        v35 = [a1 _propertiesForEntity];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __130__HDDeviceKeyValueStorageEntryEntity_setData_forKey_domain_deviceContextID_syncEntityIdentity_modificationDate_transaction_error___block_invoke;
        v43[3] = &unk_2786271E8;
        v48 = a1;
        v44 = v17;
        v45 = v18;
        v46 = v16;
        v49 = a7;
        v50 = a6;
        v47 = v19;
        v29 = [a1 insertOrReplaceEntity:0 database:v38 properties:v35 error:a10 bindingHandler:v43];

        v24 = v29 != 0;
      }

      v23 = v39;
    }

    else
    {
      v23 = v22;
      if (a10)
      {
        v24 = 0;
        *a10 = v22;
      }

      else
      {
        _HKLogDroppedError();
        v24 = 0;
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  v56[0] = v17;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
  v24 = [a1 removeEntitesForKeys:v25 domain:v18 syncEntityIdentity:a7 transaction:v20 error:a10];

LABEL_16:
  v32 = *MEMORY[0x277D85DE8];
  return v24;
}

void __130__HDDeviceKeyValueStorageEntryEntity_setData_forKey_domain_deviceContextID_syncEntityIdentity_modificationDate_transaction_error___block_invoke_346(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B40](a2, @"value", *(a1 + 32));
  [*(a1 + 40) timeIntervalSinceReferenceDate];

  JUMPOUT(0x22AAC6B60);
}

+ (BOOL)removeEntitesForKeys:(id)a3 domain:(id)a4 syncEntityIdentity:(int64_t)a5 transaction:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a3;
  v14 = [a6 databaseForEntityClass:a1];
  v15 = [a1 _predicateForSyncEntityIdentity:a5 domain:v12 keys:v13];

  LOBYTE(a7) = [a1 deleteEntitiesInDatabase:v14 predicate:v15 error:a7];
  return a7;
}

+ (id)_propertiesForEntity
{
  v5[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"sync_identity_id";
  v5[1] = @"domain";
  v5[2] = @"key";
  v5[3] = @"value";
  v5[4] = @"date_modified";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_predicateForKeys:(id)a3 domain:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a1 _predicateForAnyKeys:a3];
  v8 = [MEMORY[0x277D10B18] predicateWithProperty:@"domain" equalToValue:v6];

  if (v7)
  {
    v9 = MEMORY[0x277D10B20];
    v14[0] = v7;
    v14[1] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v11 = [v9 predicateMatchingAllPredicates:v10];
  }

  else
  {
    v11 = v8;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_predicateForAnyKeys:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277D10B18] predicateWithProperty:@"key" equalToValue:{*(*(&v14 + 1) + 8 * i), v14}];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if (v5)
  {
    v11 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v4];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_predicateForSyncEntityIdentity:(int64_t)a3 domain:(id)a4 keys:(id)a5
{
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v11 = MEMORY[0x277D10B18];
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v13 = [v11 predicateWithProperty:@"sync_identity_id" equalToValue:v12];
  v21[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v15 = [v10 initWithArray:v14];

  if (v8)
  {
    v16 = [MEMORY[0x277D10B18] predicateWithProperty:@"domain" equalToValue:v8];
    [v15 addObject:v16];
  }

  if (v9)
  {
    v17 = [a1 _predicateForAnyKeys:v9];
    [v15 addObject:v17];
  }

  v18 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v15];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (void)binderHandlerForBinder:(HDSQLiteStatementBinder *)a3 key:(id)a4 domain:(id)a5 object:(id)a6 syncEntityIdentity:(int64_t)a7 deviceContext:(int64_t)a8 modificationDate:(id)a9
{
  v14 = a9;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  MEMORY[0x22AAC6B90](a3, @"sync_identity_id", a7);
  MEMORY[0x22AAC6BD0](a3, @"domain", v16);

  MEMORY[0x22AAC6BD0](a3, @"key", v17);
  MEMORY[0x22AAC6B40](a3, @"value", v15);

  [v14 timeIntervalSinceReferenceDate];

  JUMPOUT(0x22AAC6B60);
}

@end