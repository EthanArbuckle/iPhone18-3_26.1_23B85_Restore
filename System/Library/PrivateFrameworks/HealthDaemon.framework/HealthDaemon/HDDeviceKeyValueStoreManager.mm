@interface HDDeviceKeyValueStoreManager
- (BOOL)deleteProtectedKVEntriesForDeviceContext:(id)a3 error:(id *)a4;
- (BOOL)enumerateAllEntriesForSyncIdentity:(id)a3 protectionCategory:(int64_t)a4 error:(id *)a5 enumerationHandler:(id)a6;
- (BOOL)insertOrUpdateData:(id)a3 forKey:(id)a4 transaction:(id)a5 domainName:(id)a6 protectionCategory:(int64_t)a7 deviceContext:(id)a8 modificationDate:(id)a9 error:(id *)a10;
- (BOOL)replaceOldSyncIdentity:(id)a3 newSyncIdentity:(id)a4 error:(id *)a5;
- (BOOL)setData:(id)a3 forKey:(id)a4 domainName:(id)a5 protectionCategory:(int64_t)a6 error:(id *)a7;
- (BOOL)setDate:(id)a3 forKey:(id)a4 domainName:(id)a5 protectionCategory:(int64_t)a6 error:(id *)a7;
- (BOOL)setNumber:(id)a3 forKey:(id)a4 domainName:(id)a5 protectionCategory:(int64_t)a6 error:(id *)a7;
- (BOOL)setString:(id)a3 forKey:(id)a4 domainName:(id)a5 protectionCategory:(int64_t)a6 error:(id *)a7;
- (BOOL)updateKeyValuePairsForRemoteEntries:(id)a3 deviceContexts:(id)a4 error:(id *)a5;
- (HDDeviceKeyValueStoreManager)initWithProfile:(id)a3;
- (HDProfile)profile;
- (id)_fetchEntriesForDomain:(void *)a3 key:(uint64_t)a4 protectionCategory:(char)a5 latest:(uint64_t)a6 error:;
- (id)fetchEntryForKey:(id)a3 domain:(id)a4 syncIdentity:(id)a5 category:(int64_t)a6 error:(id *)a7;
- (id)mostRecentEntryForDomain:(id)a3 key:(id)a4 protectionCategory:(int64_t)a5 error:(id *)a6;
- (void)_journalOrSetData:(void *)a3 forKey:(void *)a4 domainName:(uint64_t)a5 protectionCategory:(void *)a6 deviceContext:(void *)a7 modificationDate:(uint64_t)a8 error:;
@end

@implementation HDDeviceKeyValueStoreManager

- (HDDeviceKeyValueStoreManager)initWithProfile:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HDDeviceKeyValueStoreManager;
  v5 = [(HDDeviceKeyValueStoreManager *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCD738]);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 initWithName:v8 loggingCategory:*MEMORY[0x277CCC328]];
    observers = v5->_observers;
    v5->_observers = v9;

    objc_storeWeak(&v5->_profile, v4);
  }

  return v5;
}

- (id)_fetchEntriesForDomain:(void *)a3 key:(uint64_t)a4 protectionCategory:(char)a5 latest:(uint64_t)a6 error:
{
  v41[1] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  if (a1)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__108;
    v39 = __Block_byref_object_dispose__108;
    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v12)
    {
      v41[0] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    }

    else
    {
      v13 = 0;
    }

    v14 = off_27860EAB8;
    if (a4)
    {
      v14 = off_27860EAD8;
    }

    v15 = *v14;
    v16 = objc_opt_class();
    v17 = [a1 profile];
    v18 = [v17 database];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __91__HDDeviceKeyValueStoreManager__fetchEntriesForDomain_key_protectionCategory_latest_error___block_invoke;
    v28 = &unk_278622A28;
    v32 = v16;
    v19 = v13;
    v29 = v19;
    v34 = a5;
    v33 = a4;
    v30 = v11;
    v31 = &v35;
    v20 = [v16 performReadTransactionWithHealthDatabase:v18 error:a6 block:&v25];

    if (v20 && [v36[5] count])
    {
      v21 = v36[5];
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)mostRecentEntryForDomain:(id)a3 key:(id)a4 protectionCategory:(int64_t)a5 error:(id *)a6
{
  v7 = [(HDDeviceKeyValueStoreManager *)self _fetchEntriesForDomain:a3 key:a4 protectionCategory:a5 latest:1 error:a6];
  v8 = v7;
  if (v7)
  {
    if ([v7 count] < 2)
    {
      if ([v8 count] == 1)
      {
        v11 = [v8 firstObject];
        goto LABEL_11;
      }
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Multiple storage groups retrieved while fetching the most recent entry."];
      if (v9)
      {
        if (a6)
        {
          v10 = v9;
          *a6 = v9;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)enumerateAllEntriesForSyncIdentity:(id)a3 protectionCategory:(int64_t)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = off_27860EAB8;
  if (a4)
  {
    v12 = off_27860EAD8;
  }

  v13 = *v12;
  v14 = objc_opt_class();
  v15 = [(HDDeviceKeyValueStoreManager *)self profile];
  v16 = [v15 database];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __111__HDDeviceKeyValueStoreManager_enumerateAllEntriesForSyncIdentity_protectionCategory_error_enumerationHandler___block_invoke;
  v21[3] = &unk_278622880;
  v23 = v11;
  v24 = v14;
  v22 = v10;
  v17 = v11;
  v18 = v10;
  v19 = [v14 performReadTransactionWithHealthDatabase:v16 error:a5 block:v21];

  return v19;
}

- (id)fetchEntryForKey:(id)a3 domain:(id)a4 syncIdentity:(id)a5 category:(int64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__108;
  v15 = off_27860EAB8;
  v37 = __Block_byref_object_dispose__108;
  v38 = 0;
  if (a6)
  {
    v15 = off_27860EAD8;
  }

  v16 = *v15;
  v17 = objc_opt_class();
  v18 = [(HDDeviceKeyValueStoreManager *)self profile];
  v19 = [v18 database];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __84__HDDeviceKeyValueStoreManager_fetchEntryForKey_domain_syncIdentity_category_error___block_invoke;
  v27[3] = &unk_2786228A8;
  v27[4] = self;
  v20 = v14;
  v28 = v20;
  v31 = &v33;
  v32 = v17;
  v21 = v12;
  v29 = v21;
  v22 = v13;
  v30 = v22;
  v23 = [v17 performReadTransactionWithHealthDatabase:v19 error:a7 block:v27];

  if (v23)
  {
    v24 = v34[5];
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  _Block_object_dispose(&v33, 8);

  return v25;
}

uint64_t __84__HDDeviceKeyValueStoreManager_fetchEntryForKey_domain_syncIdentity_category_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) profile];
  v7 = [v6 syncIdentityManager];
  v8 = *(a1 + 40);
  v23 = 0;
  v9 = [v7 concreteIdentityForIdentity:v8 shouldCreate:0 transaction:v5 error:&v23];
  v10 = v23;

  if (v9)
  {
    v11 = *(a1 + 72);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = [v9 entity];
    v22 = v10;
    v15 = [v11 fetchEntryForKey:v12 domain:v13 syncEntityIdentity:objc_msgSend(v14 transaction:"persistentID") error:{v5, &v22}];
    v16 = v22;

    v17 = *(*(a1 + 64) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v15;

    if (v16)
    {
      if (a3)
      {
        v19 = v16;
        v20 = 0;
        *a3 = v16;
      }

      else
      {
        _HKLogDroppedError();
        v20 = 0;
      }

      v10 = v16;
    }

    else
    {
      v10 = 0;
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)setDate:(id)a3 forKey:(id)a4 domainName:(id)a5 protectionCategory:(int64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!v12)
  {
    v15 = 0;
    goto LABEL_5;
  }

  v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:0 error:a7];
  if (v15)
  {
LABEL_5:
    v16 = [(HDDeviceKeyValueStoreManager *)self setData:v15 forKey:v13 domainName:v14 protectionCategory:a6 error:a7];

    goto LABEL_6;
  }

  v16 = 0;
LABEL_6:

  return v16;
}

- (BOOL)setNumber:(id)a3 forKey:(id)a4 domainName:(id)a5 protectionCategory:(int64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!v12)
  {
    v15 = 0;
    goto LABEL_5;
  }

  v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:0 error:a7];
  if (v15)
  {
LABEL_5:
    v16 = [(HDDeviceKeyValueStoreManager *)self setData:v15 forKey:v13 domainName:v14 protectionCategory:a6 error:a7];

    goto LABEL_6;
  }

  v16 = 0;
LABEL_6:

  return v16;
}

- (BOOL)setString:(id)a3 forKey:(id)a4 domainName:(id)a5 protectionCategory:(int64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!v12)
  {
    v15 = 0;
    goto LABEL_5;
  }

  v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:0 error:a7];
  if (v15)
  {
LABEL_5:
    v16 = [(HDDeviceKeyValueStoreManager *)self setData:v15 forKey:v13 domainName:v14 protectionCategory:a6 error:a7];

    goto LABEL_6;
  }

  v16 = 0;
LABEL_6:

  return v16;
}

- (BOOL)setData:(id)a3 forKey:(id)a4 domainName:(id)a5 protectionCategory:(int64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [HDDeviceContext localProductTypeEnumWithError:a7];
  if (v15)
  {
    v25 = a6;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__108;
    v31 = __Block_byref_object_dispose__108;
    v32 = 0;
    v16 = [(HDDeviceKeyValueStoreManager *)self profile];
    v17 = [v16 database];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __83__HDDeviceKeyValueStoreManager_setData_forKey_domainName_protectionCategory_error___block_invoke;
    v26[3] = &unk_278619398;
    v26[4] = self;
    v26[5] = &v27;
    v18 = [(HDHealthEntity *)HDSyncIdentityEntity performReadTransactionWithHealthDatabase:v17 error:a7 block:v26];

    if (v18)
    {
      v19 = [HDDeviceContext alloc];
      v20 = [v15 unsignedIntValue];
      v21 = [(HDDeviceContext *)v19 initForLocalDeviceWithType:v20 syncIdentity:v28[5]];
      if (v21)
      {
        v22 = [MEMORY[0x277CBEAA8] now];
        v23 = [(HDDeviceKeyValueStoreManager *)self _journalOrSetData:v12 forKey:v13 domainName:v14 protectionCategory:v25 deviceContext:v21 modificationDate:v22 error:a7];
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

BOOL __83__HDDeviceKeyValueStoreManager_setData_forKey_domainName_protectionCategory_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v3 = [v2 syncIdentityManager];
  v4 = [v3 currentSyncIdentity];
  v5 = [v4 identity];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (void)_journalOrSetData:(void *)a3 forKey:(void *)a4 domainName:(uint64_t)a5 protectionCategory:(void *)a6 deviceContext:(void *)a7 modificationDate:(uint64_t)a8 error:
{
  if (result)
  {
    v14 = result;
    v15 = a7;
    v16 = a6;
    v17 = a4;
    v18 = a3;
    v19 = a2;
    v20 = [[HDInsertOrUpdateDeviceKeyValueEntryOperation alloc] initWithCategory:a5 key:v18 value:v19 domain:v17 deviceContext:v16 modificationDate:v15];

    v21 = [v14 profile];
    v22 = [(HDJournalableOperation *)v20 performOrJournalWithProfile:v21 error:a8];

    return v22;
  }

  return result;
}

- (BOOL)deleteProtectedKVEntriesForDeviceContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [HDDeleteAllDeviceContextKeyValueEntriesOperation alloc];
  v8 = [v6 syncIdentity];

  v9 = [(HDDeleteAllDeviceContextKeyValueEntriesOperation *)v7 initWithSyncIdentity:v8];
  v10 = [(HDDeviceKeyValueStoreManager *)self profile];
  LOBYTE(a4) = [(HDJournalableOperation *)v9 performOrJournalWithProfile:v10 error:a4];

  return a4;
}

- (BOOL)replaceOldSyncIdentity:(id)a3 newSyncIdentity:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [HDRollSyncIdentityDeviceKeyValueEntriesOperation alloc];
  v11 = [v9 identity];

  v12 = [v8 identity];

  v13 = [(HDRollSyncIdentityDeviceKeyValueEntriesOperation *)v10 initWithOldSyncIdentity:v11 newSyncIdentity:v12];
  v14 = [(HDDeviceKeyValueStoreManager *)self profile];
  LOBYTE(a5) = [(HDJournalableOperation *)v13 performOrJournalWithProfile:v14 error:a5];

  return a5;
}

- (BOOL)insertOrUpdateData:(id)a3 forKey:(id)a4 transaction:(id)a5 domainName:(id)a6 protectionCategory:(int64_t)a7 deviceContext:(id)a8 modificationDate:(id)a9 error:(id *)a10
{
  v56[1] = *MEMORY[0x277D85DE8];
  v51 = a3;
  v50 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v52 = a9;
  v19 = off_27860EAB8;
  v49 = a7;
  if (a7)
  {
    v19 = off_27860EAD8;
  }

  v20 = *v19;
  v21 = objc_opt_class();
  v22 = [(HDDeviceKeyValueStoreManager *)self profile];
  v23 = [v22 syncIdentityManager];
  v24 = [v18 syncIdentity];
  v25 = [v23 concreteIdentityForIdentity:v24 shouldCreate:1 transaction:v16 error:a10];

  if (!v25)
  {
    goto LABEL_9;
  }

  v48 = self;
  v26 = [(HDDeviceKeyValueStoreManager *)self profile];
  v27 = [v26 deviceContextManager];
  v28 = [v27 insertOrUpdateDeviceContext:v18 transaction:v16 error:a10];

  if (v28)
  {
    v29 = [v25 entity];
    v30 = +[HDDeviceContextEntity deviceContextEntityWithSyncIdentity:transaction:error:](HDDeviceContextEntity, "deviceContextEntityWithSyncIdentity:transaction:error:", [v29 persistentID], v16, a10);

    if (v30)
    {
      v47 = v30;
      v31 = [v30 persistentID];
      v32 = [v25 entity];
      v34 = v50;
      v33 = v51;
      v35 = [v21 setData:v51 forKey:v50 domain:v17 deviceContextID:v31 syncEntityIdentity:objc_msgSend(v32 modificationDate:"persistentID") transaction:v52 error:{v16, a10}];

      if (v35 == 1)
      {
        v36 = [HDDeviceKeyValueStorageEntry alloc];
        v37 = [v25 identity];
        v38 = [(HDDeviceKeyValueStorageEntry *)v36 initWithDomain:v17 key:v50 value:v51 modificationDate:v52 syncIdentity:v37 category:v49];

        v39 = [HDDeviceKeyValueStorageGroup alloc];
        v56[0] = v38;
        v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
        v41 = [(HDDeviceKeyValueStorageGroup *)v39 initWithDeviceContext:v18 storageEntries:v40];

        observers = v48->_observers;
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __137__HDDeviceKeyValueStoreManager_insertOrUpdateData_forKey_transaction_domainName_protectionCategory_deviceContext_modificationDate_error___block_invoke;
        v53[3] = &unk_2786228D0;
        v54 = v41;
        v55 = v17;
        v43 = v41;
        [(HKObserverSet *)observers notifyObservers:v53];
      }

      v44 = v35 != 0;
      v30 = v47;
    }

    else
    {
      v44 = 0;
      v34 = v50;
      v33 = v51;
    }
  }

  else
  {
LABEL_9:
    v44 = 0;
    v34 = v50;
    v33 = v51;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v44;
}

void __137__HDDeviceKeyValueStoreManager_insertOrUpdateData_forKey_transaction_domainName_protectionCategory_deviceContext_modificationDate_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v7 count:1];
  [v4 deviceKeyValueStoreDidUpdateForStorageGroup:v5 domain:{*(a1 + 40), v7, v8}];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateKeyValuePairsForRemoteEntries:(id)a3 deviceContexts:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 hk_mapToDictionary:&__block_literal_global_116];
  v10 = v8;
  v11 = v9;
  v12 = v11;
  if (!self)
  {

LABEL_8:
    v18 = 0;
    goto LABEL_10;
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__108;
  v37 = __Block_byref_object_dispose__108;
  v38 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __83__HDDeviceKeyValueStoreManager__updateRemoteEntries_deviceContextByIdentity_error___block_invoke;
  v29 = &unk_2786229B8;
  v30 = self;
  v13 = v11;
  v31 = v13;
  v32 = &v33;
  [v10 enumerateObjectsUsingBlock:&aBlock];
  v14 = *(v34 + 40);
  if (v14)
  {
    v15 = v14;
    v16 = v15;
    if (a5)
    {
      v17 = v15;
      *a5 = v16;
    }

    else
    {
      _HKLogDroppedError();
    }

    _Block_object_dispose(&v33, 8);
    goto LABEL_8;
  }

  _Block_object_dispose(&v33, 8);
  v19 = v10;
  v20 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __83__HDDeviceKeyValueStoreManager__deleteRemoteEntries_deviceContextByIdentity_error___block_invoke;
  v29 = &unk_278622968;
  v21 = v20;
  v30 = v21;
  v31 = self;
  v22 = _Block_copy(&aBlock);
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __83__HDDeviceKeyValueStoreManager__deleteRemoteEntries_deviceContextByIdentity_error___block_invoke_318;
  v36 = &unk_278622990;
  v38 = v22;
  v23 = v19;
  v37 = v23;
  v24 = v22;
  v18 = HKWithAutoreleasePool();

LABEL_10:
  return v18;
}

void __89__HDDeviceKeyValueStoreManager_updateKeyValuePairsForRemoteEntries_deviceContexts_error___block_invoke(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 syncIdentity];
  (a3)[2](v5, v7, v6);
}

uint64_t __83__HDDeviceKeyValueStoreManager__deleteRemoteEntries_deviceContextByIdentity_error___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a4;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__108;
  v36 = __Block_byref_object_dispose__108;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v8 = [*(a1 + 32) allKeys];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __83__HDDeviceKeyValueStoreManager__deleteRemoteEntries_deviceContextByIdentity_error___block_invoke_2;
  v21 = &unk_278622940;
  v9 = *(a1 + 40);
  v25 = &v28;
  v26 = &v32;
  v22 = v9;
  v27 = a3 ^ 1u;
  v10 = v7;
  v23 = v10;
  v24 = *(a1 + 32);
  [v8 enumerateObjectsUsingBlock:&v18];

  v11 = *(v29 + 24);
  if (!*(v29 + 24))
  {
    v12 = v33[5];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] hk_error:100 description:{@"Error deleting local kv pairs", v18, v19, v20, v21, v22, v23}];
      v15 = v33[5];
      v33[5] = v14;

      v13 = v33[5];
      if (!v13)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    if (a2)
    {
      v16 = v13;
      *a2 = v13;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_8;
  }

LABEL_9:

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v11;
}

void __83__HDDeviceKeyValueStoreManager__deleteRemoteEntries_deviceContextByIdentity_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) profile];
  v5 = [v4 deviceKeyValueStoreManager];
  v6 = *(a1 + 72);
  v7 = *(*(a1 + 64) + 8);
  v16 = *(v7 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__HDDeviceKeyValueStoreManager__deleteRemoteEntries_deviceContextByIdentity_error___block_invoke_3;
  v11[3] = &unk_278622918;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v12 = v8;
  v13 = v9;
  v14 = *(a1 + 48);
  v15 = v3;
  v10 = v3;
  LOBYTE(v6) = [v5 enumerateAllEntriesForSyncIdentity:v10 protectionCategory:v6 error:&v16 enumerationHandler:v11];
  objc_storeStrong((v7 + 40), v16);
  *(*(*(a1 + 56) + 8) + 24) = v6;
}

uint64_t __83__HDDeviceKeyValueStoreManager__deleteRemoteEntries_deviceContextByIdentity_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v6 = *(a1 + 40);
    v7 = [v5 key];
    v8 = [v5 domain];
    v9 = [v5 protectionCategory];
    v10 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 56)];
    v11 = [v5 modificationDate];
    v19 = 0;
    LOBYTE(v9) = [v6 setData:0 forKey:v7 domainName:v8 protectionCategory:v9 deviceContext:v10 modificationDate:v11 error:&v19];
    v12 = v19;

    if ((v9 & 1) == 0)
    {
      v13 = v12;
      if (v13)
      {
        if (a3)
        {
          v14 = v13;
          *a3 = v13;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 40);
        *buf = 138543874;
        v21 = v18;
        v22 = 2114;
        v23 = v5;
        v24 = 2114;
        v25 = v13;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Error deleting key value entry (%{public}@) %{public}@", buf, 0x20u);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __83__HDDeviceKeyValueStoreManager__deleteRemoteEntries_deviceContextByIdentity_error___block_invoke_318(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(*(a1 + 40) + 16))();
  v4 = *(a1 + 32);
  return v3 & (*(*(a1 + 40) + 16))();
}

void __83__HDDeviceKeyValueStoreManager__updateRemoteEntries_deviceContextByIdentity_error___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 syncIdentity];
  v5 = [*(a1 + 32) profile];
  v6 = [v5 syncIdentityManager];
  v7 = [v6 currentSyncIdentity];
  v8 = [v7 identity];
  v9 = [v4 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v10 = *(a1 + 40);
    v11 = [v3 syncIdentity];
    v12 = [v10 objectForKey:v11];

    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = [v3 value];
      v15 = [v3 key];
      v16 = [v3 domain];
      v17 = [v3 protectionCategory];
      v18 = [v3 modificationDate];
      v19 = *(*(a1 + 48) + 8);
      obj = *(v19 + 40);
      LOBYTE(v13) = [v13 setData:v14 forKey:v15 domainName:v16 protectionCategory:v17 deviceContext:v12 modificationDate:v18 error:&obj];
      objc_storeStrong((v19 + 40), obj);

      if (v13)
      {
        goto LABEL_7;
      }

      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC328];
      if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v21 = *(a1 + 32);
      v22 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543618;
      v32 = v21;
      v33 = 2114;
      v34 = v22;
      v23 = "%{public}@: Error updating local key value entry from remote entry %{public}@";
    }

    else
    {
      v24 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Found no corresponding device context for remote key value pair"];
      v25 = *(*(a1 + 48) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;

      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC328];
      if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
LABEL_7:

        goto LABEL_8;
      }

      v28 = *(a1 + 32);
      v29 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543618;
      v32 = v28;
      v33 = 2114;
      v34 = v29;
      v23 = "%{public}@: %{public}@";
    }

    _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, v23, buf, 0x16u);
    goto LABEL_7;
  }

LABEL_8:

  v27 = *MEMORY[0x277D85DE8];
}

BOOL __91__HDDeviceKeyValueStoreManager__fetchEntriesForDomain_key_protectionCategory_latest_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v25 = 0;
  v9 = [v6 fetchEntriesForKeys:v7 domain:v8 transaction:v5 error:&v25];
  v10 = v25;
  if (v10)
  {
    if (a3)
    {
      v11 = v10;
      v12 = 0;
      *a3 = v10;
    }

    else
    {
      _HKLogDroppedError();
      v12 = 0;
    }
  }

  else if (v9 && [v9 count])
  {
    if (*(a1 + 72) == 1)
    {
      v13 = [v9 hk_firstSortedObjectWithComparison:&__block_literal_global_327];
      v14 = objc_alloc(MEMORY[0x277CBEB18]);
      v26[0] = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
      v16 = [v14 initWithArray:v15];

      v9 = v16;
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __91__HDDeviceKeyValueStoreManager__fetchEntriesForDomain_key_protectionCategory_latest_error___block_invoke_3;
    v21[3] = &unk_278622A00;
    v9 = v9;
    v17 = *(a1 + 64);
    v18 = *(a1 + 48);
    v22 = v9;
    v23 = v18;
    v24 = v17;
    v12 = [HDDeviceContextEntity enumerateDeviceContextWithTransaction:v5 error:a3 enumerationHandler:v21];
  }

  else
  {
    v12 = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __91__HDDeviceKeyValueStoreManager__fetchEntriesForDomain_key_protectionCategory_latest_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 modificationDate];
  v6 = [v4 modificationDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __91__HDDeviceKeyValueStoreManager__fetchEntriesForDomain_key_protectionCategory_latest_error___block_invoke_3(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = a1;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [v3 syncIdentity];
        v10 = [v8 syncIdentity];
        v11 = [v9 isEqual:v10];

        if (v11)
        {
          v12 = [HDDeviceKeyValueStorageEntry alloc];
          v13 = [v8 domain];
          v14 = [v8 key];
          v15 = [v8 value];
          v16 = [v8 modificationDate];
          v17 = [v8 syncIdentity];
          v18 = [(HDDeviceKeyValueStorageEntry *)v12 initWithDomain:v13 key:v14 value:v15 modificationDate:v16 syncIdentity:v17 category:*(v23 + 48)];
          [v24 addObject:v18];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v5);
  }

  if ([v24 count])
  {
    v19 = *(*(*(v23 + 40) + 8) + 40);
    v20 = [[HDDeviceKeyValueStorageGroup alloc] initWithDeviceContext:v3 storageEntries:v24];
    [v19 addObject:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
  return 1;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end