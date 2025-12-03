@interface HDDeviceKeyValueStorageEntryEntity
+ (BOOL)enumerateAllEntriesForSyncIdentity:(id)identity transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)removeEntitesForKeys:(id)keys domain:(id)domain syncEntityIdentity:(int64_t)identity transaction:(id)transaction error:(id *)error;
+ (BOOL)replaceEntriesForOldSyncIdentity:(int64_t)identity withNewSyncIdentity:(int64_t)syncIdentity deviceContextID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (id)_predicateForAnyKeys:(id)keys;
+ (id)_predicateForKeys:(id)keys domain:(id)domain;
+ (id)_predicateForSyncEntityIdentity:(int64_t)identity domain:(id)domain keys:(id)keys;
+ (id)_propertiesForEntity;
+ (id)fetchEntriesForKeys:(id)keys domain:(id)domain transaction:(id)transaction error:(id *)error;
+ (id)fetchEntryForKey:(id)key domain:(id)domain syncEntityIdentity:(int64_t)identity transaction:(id)transaction error:(id *)error;
+ (int)setData:(id)data forKey:(id)key domain:(id)domain deviceContextID:(int64_t)d syncEntityIdentity:(int64_t)identity modificationDate:(id)date transaction:(id)transaction error:(id *)self0;
+ (void)binderHandlerForBinder:(HDSQLiteStatementBinder *)binder key:(id)key domain:(id)domain object:(id)object syncEntityIdentity:(int64_t)identity deviceContext:(int64_t)context modificationDate:(id)date;
@end

@implementation HDDeviceKeyValueStorageEntryEntity

+ (id)fetchEntriesForKeys:(id)keys domain:(id)domain transaction:(id)transaction error:(id *)error
{
  keysCopy = keys;
  domainCopy = domain;
  transactionCopy = transaction;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__144;
  v29 = __Block_byref_object_dispose__144;
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [transactionCopy databaseForEntityClass:self];
  v14 = [self _predicateForKeys:keysCopy domain:domainCopy];
  v15 = [self queryWithDatabase:v13 predicate:v14];

  _propertiesForEntity = [self _propertiesForEntity];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__HDDeviceKeyValueStorageEntryEntity_fetchEntriesForKeys_domain_transaction_error___block_invoke;
  v21[3] = &unk_278627150;
  v17 = transactionCopy;
  v22 = v17;
  v23 = &v25;
  selfCopy = self;
  LODWORD(error) = [v15 enumerateProperties:_propertiesForEntity error:error enumerationHandler:v21];

  if (error)
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

+ (BOOL)enumerateAllEntriesForSyncIdentity:(id)identity transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  transactionCopy = transaction;
  identityCopy = identity;
  v13 = [transactionCopy databaseForEntityClass:self];
  v14 = [HDSyncIdentityEntity concreteIdentityForIdentity:identityCopy transaction:transactionCopy error:error];

  if (v14)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __110__HDDeviceKeyValueStorageEntryEntity_enumerateAllEntriesForSyncIdentity_transaction_error_enumerationHandler___block_invoke;
    v23[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v23[4] = self;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __110__HDDeviceKeyValueStorageEntryEntity_enumerateAllEntriesForSyncIdentity_transaction_error_enumerationHandler___block_invoke_2;
    v21[3] = &unk_278614860;
    v22 = v14;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __110__HDDeviceKeyValueStorageEntryEntity_enumerateAllEntriesForSyncIdentity_transaction_error_enumerationHandler___block_invoke_3;
    v17[3] = &unk_278627178;
    selfCopy = self;
    v18 = v22;
    v19 = handlerCopy;
    v15 = [v13 executeCachedStatementForKey:&enumerateAllEntriesForSyncIdentity_transaction_error_enumerationHandler__lookupKey error:error SQLGenerator:v23 bindingHandler:v21 enumerationHandler:v17];
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

+ (id)fetchEntryForKey:(id)key domain:(id)domain syncEntityIdentity:(int64_t)identity transaction:(id)transaction error:(id *)error
{
  keyCopy = key;
  domainCopy = domain;
  transactionCopy = transaction;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__144;
  v35 = __Block_byref_object_dispose__144;
  v36 = 0;
  v15 = [transactionCopy databaseForEntityClass:self];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __99__HDDeviceKeyValueStorageEntryEntity_fetchEntryForKey_domain_syncEntityIdentity_transaction_error___block_invoke;
  v30[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v30[4] = self;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __99__HDDeviceKeyValueStorageEntryEntity_fetchEntryForKey_domain_syncEntityIdentity_transaction_error___block_invoke_2;
  v26[3] = &unk_2786199F8;
  v16 = domainCopy;
  v27 = v16;
  v17 = keyCopy;
  v28 = v17;
  identityCopy = identity;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __99__HDDeviceKeyValueStorageEntryEntity_fetchEntryForKey_domain_syncEntityIdentity_transaction_error___block_invoke_3;
  v22[3] = &unk_2786271A0;
  v18 = transactionCopy;
  v23 = v18;
  v24 = &v31;
  selfCopy = self;
  if ([v15 executeCachedStatementForKey:&fetchEntryForKey_domain_syncEntityIdentity_transaction_error__lookupKey error:error SQLGenerator:v30 bindingHandler:v26 enumerationHandler:v22])
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

+ (BOOL)replaceEntriesForOldSyncIdentity:(int64_t)identity withNewSyncIdentity:(int64_t)syncIdentity deviceContextID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v13 = objc_alloc(MEMORY[0x277CBEB18]);
  v23[0] = @"sync_identity_id";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v15 = [v13 initWithArray:v14];

  v16 = objc_opt_class();
  if ([v16 isEqual:objc_opt_class()])
  {
    [v15 addObject:@"device_record_id"];
  }

  v17 = [transactionCopy databaseForEntityClass:self];
  v18 = [self _predicateForSyncEntityIdentity:identity domain:0 keys:0];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __125__HDDeviceKeyValueStorageEntryEntity_replaceEntriesForOldSyncIdentity_withNewSyncIdentity_deviceContextID_transaction_error___block_invoke;
  v22[3] = &__block_descriptor_56_e34_v16__0__HDSQLiteStatementBinder__8l;
  v22[4] = self;
  v22[5] = syncIdentity;
  v22[6] = d;
  v19 = [self updateProperties:v15 predicate:v18 database:v17 error:error bindingHandler:v22];

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (int)setData:(id)data forKey:(id)key domain:(id)domain deviceContextID:(int64_t)d syncEntityIdentity:(int64_t)identity modificationDate:(id)date transaction:(id)transaction error:(id *)self0
{
  v56[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  keyCopy = key;
  domainCopy = domain;
  dateCopy = date;
  transactionCopy = transaction;
  if (dataCopy)
  {
    v51 = 0;
    v21 = [self fetchEntryForKey:keyCopy domain:domainCopy syncEntityIdentity:identity transaction:transactionCopy error:&v51];
    v22 = v51;
    if (v21 || !v22)
    {
      v39 = v22;
      if (v21)
      {
        v37 = dateCopy;
        value = [v21 value];
        v27 = [value isEqual:dataCopy];

        if (v27)
        {
          _HKInitializeLogging();
          v28 = *MEMORY[0x277CCC328];
          v24 = 2;
          dateCopy = v37;
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
        v52 = keyCopy;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
        v30 = [self _predicateForSyncEntityIdentity:identity domain:domainCopy keys:v34];
        v31 = [transactionCopy databaseForEntityClass:self];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __130__HDDeviceKeyValueStorageEntryEntity_setData_forKey_domain_deviceContextID_syncEntityIdentity_modificationDate_transaction_error___block_invoke_346;
        v40[3] = &unk_278613DE8;
        v41 = dataCopy;
        v42 = v37;
        v24 = [self updateProperties:v36 predicate:v30 database:v31 error:error bindingHandler:v40];

        dateCopy = v37;
      }

      else
      {
        v38 = [transactionCopy databaseForEntityClass:self];
        _propertiesForEntity = [self _propertiesForEntity];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __130__HDDeviceKeyValueStorageEntryEntity_setData_forKey_domain_deviceContextID_syncEntityIdentity_modificationDate_transaction_error___block_invoke;
        v43[3] = &unk_2786271E8;
        selfCopy = self;
        v44 = keyCopy;
        v45 = domainCopy;
        v46 = dataCopy;
        identityCopy = identity;
        dCopy = d;
        v47 = dateCopy;
        v29 = [self insertOrReplaceEntity:0 database:v38 properties:_propertiesForEntity error:error bindingHandler:v43];

        v24 = v29 != 0;
      }

      v23 = v39;
    }

    else
    {
      v23 = v22;
      if (error)
      {
        v24 = 0;
        *error = v22;
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

  v56[0] = keyCopy;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
  v24 = [self removeEntitesForKeys:v25 domain:domainCopy syncEntityIdentity:identity transaction:transactionCopy error:error];

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

+ (BOOL)removeEntitesForKeys:(id)keys domain:(id)domain syncEntityIdentity:(int64_t)identity transaction:(id)transaction error:(id *)error
{
  domainCopy = domain;
  keysCopy = keys;
  v14 = [transaction databaseForEntityClass:self];
  v15 = [self _predicateForSyncEntityIdentity:identity domain:domainCopy keys:keysCopy];

  LOBYTE(error) = [self deleteEntitiesInDatabase:v14 predicate:v15 error:error];
  return error;
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

+ (id)_predicateForKeys:(id)keys domain:(id)domain
{
  v14[2] = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  v7 = [self _predicateForAnyKeys:keys];
  v8 = [MEMORY[0x277D10B18] predicateWithProperty:@"domain" equalToValue:domainCopy];

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

+ (id)_predicateForAnyKeys:(id)keys
{
  v19 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = keysCopy;
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

+ (id)_predicateForSyncEntityIdentity:(int64_t)identity domain:(id)domain keys:(id)keys
{
  v21[1] = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  keysCopy = keys;
  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  v11 = MEMORY[0x277D10B18];
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:identity];
  v13 = [v11 predicateWithProperty:@"sync_identity_id" equalToValue:v12];
  v21[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v15 = [v10 initWithArray:v14];

  if (domainCopy)
  {
    v16 = [MEMORY[0x277D10B18] predicateWithProperty:@"domain" equalToValue:domainCopy];
    [v15 addObject:v16];
  }

  if (keysCopy)
  {
    v17 = [self _predicateForAnyKeys:keysCopy];
    [v15 addObject:v17];
  }

  v18 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v15];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (void)binderHandlerForBinder:(HDSQLiteStatementBinder *)binder key:(id)key domain:(id)domain object:(id)object syncEntityIdentity:(int64_t)identity deviceContext:(int64_t)context modificationDate:(id)date
{
  dateCopy = date;
  objectCopy = object;
  domainCopy = domain;
  keyCopy = key;
  MEMORY[0x22AAC6B90](binder, @"sync_identity_id", identity);
  MEMORY[0x22AAC6BD0](binder, @"domain", domainCopy);

  MEMORY[0x22AAC6BD0](binder, @"key", keyCopy);
  MEMORY[0x22AAC6B40](binder, @"value", objectCopy);

  [dateCopy timeIntervalSinceReferenceDate];

  JUMPOUT(0x22AAC6B60);
}

@end