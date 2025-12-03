@interface HDSyncIdentityManager
+ (void)unitTest_resetCachedHardwareIdentifier;
- (BOOL)enumerateConcreteIdentitiesError:(id *)error enumerationHandler:(id)handler;
- (BOOL)rollCurrentSyncIdentityWithReason:(id)reason error:(id *)error;
- (BOOL)updateIsChild:(BOOL)child concreteIdentity:(id)identity error:(id *)error;
- (HDConcreteSyncIdentity)currentSyncIdentity;
- (HDConcreteSyncIdentity)legacySyncIdentity;
- (HDProfile)profile;
- (HDSyncIdentityManager)initWithProfile:(id)profile;
- (NSString)description;
- (id)childIdentitiesForCurrentSyncIdentityWithError:(id *)error;
- (id)childIdentitiesForCurrentSyncIdentityWithTransaction:(id)transaction error:(id *)error;
- (id)concreteIdentityForIdentity:(id)identity shouldCreate:(BOOL)create transaction:(id)transaction error:(id *)error;
- (id)identityForEntityID:(int64_t)d transaction:(id)transaction error:(id *)error;
- (void)profileDidInitialize:(id)initialize;
@end

@implementation HDSyncIdentityManager

- (HDSyncIdentityManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v14.receiver = self;
  v14.super_class = HDSyncIdentityManager;
  v5 = [(HDSyncIdentityManager *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_profile, profileCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = v7;
    [profileCopy registerProfileInitializedObserver:v6 queue:0];

    v9 = [[HDDatabaseValueCache alloc] initWithName:@"sync-identity-to-concrete-sync-identity" cacheScope:1];
    entityByIdentityCache = v6->_entityByIdentityCache;
    v6->_entityByIdentityCache = v9;

    v11 = [[HDDatabaseValueCache alloc] initWithName:@"entity-to-concrete-sync-identity" cacheScope:1];
    identityByEntityPersistentIDCache = v6->_identityByEntityPersistentIDCache;
    v6->_identityByEntityPersistentIDCache = v11;
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  profileIdentifier = [WeakRetained profileIdentifier];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, profileIdentifier];

  return v7;
}

- (HDConcreteSyncIdentity)currentSyncIdentity
{
  os_unfair_lock_lock(&self->_lock);
  v4 = self->_currentSyncIdentity;
  os_unfair_lock_unlock(&self->_lock);
  if (!v4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v7 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSyncIdentityManager.m" lineNumber:71 description:{@"Attempt to call %@ prior to first transaction.", v7}];
  }

  return v4;
}

- (HDConcreteSyncIdentity)legacySyncIdentity
{
  os_unfair_lock_lock(&self->_lock);
  v4 = self->_legacySyncIdentity;
  os_unfair_lock_unlock(&self->_lock);
  if (!v4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v7 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSyncIdentityManager.m" lineNumber:80 description:{@"Attempt to call %@ prior to first transaction.", v7}];
  }

  return v4;
}

- (id)concreteIdentityForIdentity:(id)identity shouldCreate:(BOOL)create transaction:(id)transaction error:(id *)error
{
  createCopy = create;
  identityCopy = identity;
  transactionCopy = transaction;
  v13 = transactionCopy;
  if (createCopy && ([transactionCopy isWriteTransaction] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSyncIdentityManager.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"transaction.isWriteTransaction"}];
  }

  entityByIdentityCache = self->_entityByIdentityCache;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __84__HDSyncIdentityManager_concreteIdentityForIdentity_shouldCreate_transaction_error___block_invoke;
  v19[3] = &unk_27862B650;
  v20 = identityCopy;
  v21 = createCopy;
  v15 = identityCopy;
  v16 = [(HDDatabaseValueCache *)entityByIdentityCache fetchObjectForKey:v15 transaction:v13 error:error faultHandler:v19];

  return v16;
}

id __84__HDSyncIdentityManager_concreteIdentityForIdentity_shouldCreate_transaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HDSyncIdentityEntity concreteIdentityForIdentity:*(a1 + 32) transaction:v5 error:a3];
  v7 = v6;
  if (v6 || (*(a1 + 40) & 1) == 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = [HDSyncIdentityEntity insertOrLookupConcreteIdentityForIdentity:*(a1 + 32) transaction:v5 error:a3];
  }

  v9 = v8;

  return v9;
}

- (id)identityForEntityID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  identityByEntityPersistentIDCache = self->_identityByEntityPersistentIDCache;
  v8 = MEMORY[0x277CCABB0];
  transactionCopy = transaction;
  v10 = [v8 numberWithLongLong:d];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__HDSyncIdentityManager_identityForEntityID_transaction_error___block_invoke;
  v13[3] = &__block_descriptor_40_e59___HDConcreteSyncIdentity_24__0__HDDatabaseTransaction_8__16l;
  v13[4] = d;
  v11 = [(HDDatabaseValueCache *)identityByEntityPersistentIDCache fetchObjectForKey:v10 transaction:transactionCopy error:error faultHandler:v13];

  return v11;
}

id __63__HDSyncIdentityManager_identityForEntityID_transaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [(HDSQLiteEntity *)[HDSyncIdentityEntity alloc] initWithPersistentID:*(a1 + 32)];
  v7 = [(HDSyncIdentityEntity *)v6 concreteIdentityWithTransaction:v5 error:a3];

  return v7;
}

- (BOOL)enumerateConcreteIdentitiesError:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  profile = [(HDSyncIdentityManager *)self profile];
  database = [profile database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HDSyncIdentityManager_enumerateConcreteIdentitiesError_enumerationHandler___block_invoke;
  v11[3] = &unk_278618368;
  v11[4] = self;
  v12 = handlerCopy;
  v9 = handlerCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDSyncIdentityEntity performReadTransactionWithHealthDatabase:database error:error block:v11];

  return error;
}

BOOL __77__HDSyncIdentityManager_enumerateConcreteIdentitiesError_enumerationHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__HDSyncIdentityManager_enumerateConcreteIdentitiesError_enumerationHandler___block_invoke_2;
  v10[3] = &unk_27862B698;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v5;
  v8 = [HDSyncIdentityEntity enumerateConcreteIdentitiesWithTransaction:v7 error:a3 enumerationHandler:v10];

  return v8;
}

uint64_t __77__HDSyncIdentityManager_enumerateConcreteIdentitiesError_enumerationHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = *(a1[4] + 40);
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v5 entity];
  v7 = [v4 numberWithLongLong:{objc_msgSend(v6, "persistentID")}];
  [v3 setObject:v5 forKey:v7 transaction:a1[5]];

  v8 = *(a1[4] + 32);
  v9 = [v5 identity];
  [v8 setObject:v5 forKey:v9 transaction:a1[5]];

  v10 = (*(a1[6] + 16))();
  return v10;
}

- (BOOL)updateIsChild:(BOOL)child concreteIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  profile = [(HDSyncIdentityManager *)self profile];
  database = [profile database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__HDSyncIdentityManager_updateIsChild_concreteIdentity_error___block_invoke;
  v13[3] = &unk_27862B6C0;
  childCopy = child;
  v14 = identityCopy;
  selfCopy = self;
  v11 = identityCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDSyncIdentityEntity performReadTransactionWithHealthDatabase:database error:error block:v13];

  return error;
}

BOOL __62__HDSyncIdentityManager_updateIsChild_concreteIdentity_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v21 = 0;
  v8 = [HDSyncIdentityEntity updateIsChild:v6 concreteIdentity:v7 transaction:v5 error:&v21];
  v9 = v21;
  v10 = v9;
  if (v8)
  {
    v11 = *(*(a1 + 40) + 40);
    v12 = MEMORY[0x277CCABB0];
    v13 = [v8 entity];
    v14 = [v12 numberWithLongLong:{objc_msgSend(v13, "persistentID")}];
    [v11 setObject:v8 forKey:v14 transaction:v5];

    v15 = *(*(a1 + 40) + 32);
    v16 = [v8 identity];
    [v15 setObject:v8 forKey:v16 transaction:v5];
  }

  else
  {
    v17 = *MEMORY[0x277CCC328];
    v16 = v9;
    v18 = v17;
    if (v16)
    {
      if (a3)
      {
        v19 = v16;
        *a3 = v16;
      }

      else
      {
        _HKLogDroppedErrorWithReason();
      }
    }
  }

  return v8 != 0;
}

- (id)childIdentitiesForCurrentSyncIdentityWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__174;
  v17 = __Block_byref_object_dispose__174;
  v18 = objc_alloc_init(MEMORY[0x277CBEA60]);
  profile = [(HDSyncIdentityManager *)self profile];
  database = [profile database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__HDSyncIdentityManager_childIdentitiesForCurrentSyncIdentityWithTransaction_error___block_invoke;
  v12[3] = &unk_278618610;
  v12[4] = &v13;
  LODWORD(error) = [(HDHealthEntity *)HDSyncIdentityEntity performReadTransactionWithHealthDatabase:database error:error block:v12];

  if (error)
  {
    v9 = v14[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v13, 8);

  return v10;
}

uint64_t __84__HDSyncIdentityManager_childIdentitiesForCurrentSyncIdentityWithTransaction_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = 0;
  v5 = [HDSyncIdentityEntity childIdentitiesForCurrentSyncIdentityWithTransaction:a2 error:&v16];
  v6 = v16;
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    if (v5 | v6)
    {
      if (v5)
      {
        v11 = v6 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v5];
        v13 = *(*(a1 + 32) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        v10 = 1;
        goto LABEL_18;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 format:{@"Got a non-nil array and a non-nil error, which shouldn't happen in %s", "-[HDSyncIdentityManager childIdentitiesForCurrentSyncIdentityWithTransaction:error:]_block_invoke"}];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 format:{@"Got a nil array and a nil error, which shouldn't happen in %s", "-[HDSyncIdentityManager childIdentitiesForCurrentSyncIdentityWithTransaction:error:]_block_invoke"}];
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  if (!a3)
  {
    _HKLogDroppedError();
    goto LABEL_17;
  }

  v9 = v6;
  v10 = 0;
  *a3 = v7;
LABEL_18:

  return v10;
}

- (id)childIdentitiesForCurrentSyncIdentityWithError:(id *)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__174;
  v15 = __Block_byref_object_dispose__174;
  v16 = objc_alloc_init(MEMORY[0x277CBEA60]);
  profile = [(HDSyncIdentityManager *)self profile];
  database = [profile database];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HDSyncIdentityManager_childIdentitiesForCurrentSyncIdentityWithError___block_invoke;
  v10[3] = &unk_278618610;
  v10[4] = &v11;
  LODWORD(error) = [(HDHealthEntity *)HDSyncIdentityEntity performReadTransactionWithHealthDatabase:database error:error block:v10];

  if (error)
  {
    v7 = v12[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __72__HDSyncIdentityManager_childIdentitiesForCurrentSyncIdentityWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = 0;
  v5 = [HDSyncIdentityEntity childIdentitiesForCurrentSyncIdentityWithTransaction:a2 error:&v16];
  v6 = v16;
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    if (v5 | v6)
    {
      if (v5)
      {
        v11 = v6 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v5];
        v13 = *(*(a1 + 32) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        v10 = 1;
        goto LABEL_18;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 format:{@"Got a non-nil array and a non-nil error, which shouldn't happen in %s", "-[HDSyncIdentityManager childIdentitiesForCurrentSyncIdentityWithError:]_block_invoke"}];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 format:{@"Got a nil array and a nil error, which shouldn't happen in %s", "-[HDSyncIdentityManager childIdentitiesForCurrentSyncIdentityWithError:]_block_invoke"}];
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  if (!a3)
  {
    _HKLogDroppedError();
    goto LABEL_17;
  }

  v9 = v6;
  v10 = 0;
  *a3 = v7;
LABEL_18:

  return v10;
}

+ (void)unitTest_resetCachedHardwareIdentifier
{
  os_unfair_lock_lock(&_MergedGlobals_220);
  v2 = qword_280D67DF8;
  qword_280D67DF8 = 0;

  os_unfair_lock_unlock(&_MergedGlobals_220);
}

- (BOOL)rollCurrentSyncIdentityWithReason:(id)reason error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v7 = [(HDConcreteSyncIdentity *)self->_currentSyncIdentity copy];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__174;
  v22 = __Block_byref_object_dispose__174;
  v23 = 0;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v26 = 2114;
    v27 = reasonCopy;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: sync identity rollover required: %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__HDSyncIdentityManager_rollCurrentSyncIdentityWithReason_error___block_invoke;
  v17[3] = &unk_278614110;
  v17[4] = self;
  v17[5] = &v18;
  v11 = [(HDHealthEntity *)HDSyncIdentityEntity performWriteTransactionWithHealthDatabase:database error:error block:v17];

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_profile);
    deviceKeyValueStoreManager = [v12 deviceKeyValueStoreManager];
    v14 = [deviceKeyValueStoreManager replaceOldSyncIdentity:v7 newSyncIdentity:v19[5] error:error];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v18, 8);

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

BOOL __65__HDSyncIdentityManager_rollCurrentSyncIdentityWithReason_error___block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [HDKeyValueDomain alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v8 = [(HDKeyValueDomain *)v6 initWithCategory:0 domainName:@"sync-identity" profile:WeakRetained];

  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [v9 UUIDString];

  if ([(HDKeyValueDomain *)v8 setString:v10 forKey:@"instance-discriminator" error:a3])
  {
    v11 = [HDSyncIdentity alloc];
    v12 = [*(*(a1 + 32) + 16) identity];
    v13 = [v12 hardwareIdentifier];
    v14 = [*(*(a1 + 32) + 16) identity];
    v15 = [v14 databaseIdentifier];
    v16 = [(HDSyncIdentity *)v11 initWithHardwareIdentifier:v13 databaseIdentifier:v15 instanceDiscriminator:v10];

    v17 = [HDSyncIdentityEntity insertOrLookupConcreteIdentityForIdentity:v16 transaction:v5 error:a3];
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v20 = *(a1 + 40);
    v21 = *(*(v20 + 8) + 40);
    v22 = v21 != 0;
    if (v21)
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __65__HDSyncIdentityManager_rollCurrentSyncIdentityWithReason_error___block_invoke_353;
      v29[3] = &unk_278617198;
      v29[4] = *(a1 + 32);
      v29[5] = v20;
      [v5 onCommit:v29 orRollback:0];
    }

    else
    {
      _HKInitializeLogging();
      v24 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v28 = *a3;
        *buf = 138543362;
        v31 = v28;
        _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "Failed to create rolled current sync identity: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v27 = *a3;
      *buf = 138543362;
      v31 = v27;
      _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "Failed to save new instance discriminator in key-value domain: %{public}@", buf, 0xCu);
    }

    v22 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)profileDidInitialize:(id)initialize
{
  initializeCopy = initialize;
  objc_initWeak(&location, initializeCopy);
  database = [initializeCopy database];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__HDSyncIdentityManager_profileDidInitialize___block_invoke;
  v6[3] = &unk_27862B6E8;
  v6[4] = self;
  objc_copyWeak(&v7, &location);
  [database performInFirstUnprotectedWriteTransaction:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

uint64_t __46__HDSyncIdentityManager_profileDidInitialize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v111 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = +[HDSyncIdentity legacySyncIdentity];
  v7 = [HDSyncIdentityEntity insertOrLookupConcreteIdentityForIdentity:v6 transaction:v5 error:a3];

  if (v7)
  {
    v8 = [HDKeyValueDomain alloc];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = [(HDKeyValueDomain *)v8 initWithCategory:0 domainName:@"sync-identity" profile:WeakRetained];

    v99 = 0;
    v11 = [(HDKeyValueDomain *)v10 dataForKey:@"database-identifier" error:&v99];
    v12 = v99;
    v13 = v12;
    if (v11)
    {
      v14 = 1;
    }

    else
    {
      v14 = v12 == 0;
    }

    if (!v14)
    {
      _HKInitializeLogging();
      v18 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v44 = *(a1 + 32);
        *buf = 138543618;
        v104 = v44;
        v105 = 2114;
        v106 = v13;
        _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch fetch raw database identifier: %{public}@", buf, 0x16u);
      }

      if (a3)
      {
        v20 = v13;
        v17 = 0;
        *a3 = v13;
      }

      else
      {
        _HKLogDroppedError();
        v17 = 0;
      }

      goto LABEL_85;
    }

    if (v11)
    {
      [MEMORY[0x277CCAD78] hk_UUIDWithData:v11];
    }

    else
    {
      [MEMORY[0x277CCAD78] UUID];
    }
    v15 = ;
    v21 = v15;
    if (v11)
    {
      v22 = v15 == 0;
    }

    else
    {
      v22 = 1;
    }

    v23 = v22;
    v91 = v23;
    if (!v15)
    {
      _HKInitializeLogging();
      v24 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
      {
        v72 = *(a1 + 32);
        *buf = 138543362;
        v104 = v72;
        _os_log_fault_impl(&dword_228986000, v24, OS_LOG_TYPE_FAULT, "%{public}@: Failed to decode existing database identifier data; creating a fresh database identifier. This will roll sync identity.", buf, 0xCu);
      }

      v21 = [MEMORY[0x277CCAD78] UUID];
    }

    v98 = 0;
    v25 = [(HDKeyValueDomain *)v10 stringForKey:@"instance-discriminator" error:&v98];
    v26 = v98;
    v13 = v26;
    v92 = v25;
    if (!v25 && v26)
    {
      _HKInitializeLogging();
      v27 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v71 = *(a1 + 32);
        *buf = 138543618;
        v104 = v71;
        v105 = 2114;
        v106 = v13;
        _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch fetch instance discriminator: %{public}@", buf, 0x16u);
      }

      v28 = 0;
      if (a3)
      {
        v29 = v13;
        v17 = 0;
        *a3 = v13;
      }

      else
      {
        _HKLogDroppedError();
        v17 = 0;
      }

      goto LABEL_84;
    }

    v87 = [HDSyncIdentity alloc];
    v85 = a1;
    v88 = objc_loadWeakRetained((a1 + 40));
    v30 = [v88 daemon];
    v31 = objc_opt_self();
    os_unfair_lock_lock(&_MergedGlobals_220);
    v90 = v10;
    v86 = v30;
    if (qword_280D67DF8)
    {
      os_unfair_lock_unlock(&_MergedGlobals_220);
      v32 = qword_280D67DF8;
    }

    else
    {
      v82 = v31;
      v33 = objc_alloc_init(MEMORY[0x277CCAA00]);
      v34 = [v30 localContentURL];
      v100 = 0;
      v78 = v33;
      LOBYTE(v33) = [v33 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:&v100];
      v79 = v100;
      if ((v33 & 1) == 0)
      {
        _HKInitializeLogging();
        v35 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v104 = v31;
          v105 = 2114;
          v106 = v79;
          _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create local content directory: %{public}@", buf, 0x16u);
        }
      }

      v77 = v34;
      v36 = [v34 URLByAppendingPathComponent:@"SyncIdentityHardwareIdentifier.uuid" isDirectory:0];
      v37 = objc_opt_self();
      v102 = 0;
      v38 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v36 error:&v102];
      v83 = v36;

      v39 = v102;
      v40 = v39;
      if (v38)
      {
        v101 = 0;
        v80 = v38;
        v41 = [v38 readDataUpToLength:16 error:&v101];
        v75 = v101;

        if (v41)
        {
          v42 = [MEMORY[0x277CCAD78] hk_UUIDWithData:v41];
        }

        else
        {
          _HKInitializeLogging();
          v45 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v104 = v37;
            v105 = 2114;
            v106 = v75;
            _os_log_error_impl(&dword_228986000, v45, OS_LOG_TYPE_ERROR, "%{public}@: Failed to read from existing hardware identifier file: %{public}@", buf, 0x16u);
          }

          v42 = 0;
        }

        v38 = v80;
        v40 = v75;
      }

      else if ([v39 hk_isCocoaNoSuchFileError])
      {
        v42 = 0;
      }

      else
      {
        _HKInitializeLogging();
        v46 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v104 = v37;
          v105 = 2114;
          v106 = v40;
          _os_log_error_impl(&dword_228986000, v46, OS_LOG_TYPE_ERROR, "%{public}@: Failed to open existing hardware identifier file for reading: %{public}@", buf, 0x16u);
        }

        v42 = 0;
        v38 = 0;
      }

      v47 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v48 = [v47 objectForKey:@"SyncIdentityHardwareIdentifier"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v48 = 0;
      }

      v76 = v48;
      v49 = [MEMORY[0x277CCAD78] hk_UUIDWithData:v48];
      v81 = v42;
      if (v49 && [v42 isEqual:v49])
      {
        v50 = v49;
        objc_storeStrong(&qword_280D67DF8, v49);
        os_unfair_lock_unlock(&_MergedGlobals_220);
        v32 = qword_280D67DF8;
      }

      else
      {
        v50 = v49;
        v51 = [MEMORY[0x277CCAD78] UUID];
        v52 = qword_280D67DF8;
        qword_280D67DF8 = v51;

        _HKInitializeLogging();
        v53 = MEMORY[0x277CCC328];
        v54 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          v104 = v82;
          v105 = 2112;
          v106 = v81;
          v107 = 2112;
          v108 = v49;
          v109 = 2112;
          v110 = qword_280D67DF8;
          _os_log_impl(&dword_228986000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@: File identifier (%@) and defaults identifier (%@) do not match. Generating fresh hardware identifier: %@", buf, 0x2Au);
        }

        v55 = [qword_280D67DF8 hk_dataForUUIDBytes];
        v56 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        [v56 setObject:v55 forKey:@"SyncIdentityHardwareIdentifier"];

        if (([v55 writeToURL:v83 atomically:1] & 1) == 0)
        {
          _HKInitializeLogging();
          v57 = *v53;
          if (os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v104 = v82;
            _os_log_error_impl(&dword_228986000, v57, OS_LOG_TYPE_ERROR, "%{public}@: Failed to write hardware identifier to file", buf, 0xCu);
          }
        }

        os_unfair_lock_unlock(&_MergedGlobals_220);
        v32 = qword_280D67DF8;
      }
    }

    v28 = v92;

    if (v92)
    {
      v58 = v92;
    }

    else
    {
      v58 = &stru_283BF39C8;
    }

    v59 = [(HDSyncIdentity *)v87 initWithHardwareIdentifier:v32 databaseIdentifier:v21 instanceDiscriminator:v58];

    v97 = v13;
    v89 = v59;
    v60 = [HDSyncIdentityEntity insertOrLookupConcreteIdentityForIdentity:v59 transaction:v5 error:&v97];
    v61 = v97;

    if (v60)
    {
      if (!v91)
      {
LABEL_71:
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __46__HDSyncIdentityManager_profileDidInitialize___block_invoke_359;
        v93[3] = &unk_278613830;
        v93[4] = *(v85 + 32);
        v94 = v60;
        v95 = v7;
        [v5 onCommit:v93 orRollback:0];

        v17 = 1;
        v13 = v61;
        v10 = v90;
LABEL_83:

LABEL_84:
LABEL_85:

        goto LABEL_86;
      }

      v84 = v21;
      v62 = [v21 hk_dataForUUIDBytes];
      v63 = [v60 entity];
      v96 = v61;
      v64 = -[HDKeyValueDomain setData:forKey:syncIdentity:error:](v90, "setData:forKey:syncIdentity:error:", v62, @"database-identifier", [v63 persistentID], &v96);
      v65 = v96;

      if (v64)
      {
        v61 = v65;
        v21 = v84;
        v28 = v92;
        goto LABEL_71;
      }

      _HKInitializeLogging();
      v67 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v74 = *(v85 + 32);
        *buf = 138543618;
        v104 = v74;
        v105 = 2114;
        v106 = v65;
        _os_log_error_impl(&dword_228986000, v67, OS_LOG_TYPE_ERROR, "%{public}@: Failed to store updated database identifier: %{public}@", buf, 0x16u);
      }

      v13 = v65;
      v10 = v90;
      v21 = v84;
      v28 = v92;
      if (!v13)
      {
LABEL_82:

        v17 = 0;
        goto LABEL_83;
      }
    }

    else
    {
      _HKInitializeLogging();
      v66 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v73 = *(v85 + 32);
        *buf = 138543618;
        v104 = v73;
        v105 = 2114;
        v106 = v61;
        _os_log_error_impl(&dword_228986000, v66, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create or read current sync identity: %{public}@", buf, 0x16u);
      }

      v13 = v61;
      v10 = v90;
      if (!v13)
      {
        goto LABEL_82;
      }
    }

    if (a3)
    {
      v68 = v13;
      *a3 = v13;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_82;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v43 = *(a1 + 32);
    *buf = 138543618;
    v104 = v43;
    v105 = 2114;
    v106 = 0;
    _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create or read legacy sync identity: %{public}@", buf, 0x16u);
  }

  v13 = 0;
  v17 = 0;
LABEL_86:

  v69 = *MEMORY[0x277D85DE8];
  return v17;
}

void __46__HDSyncIdentityManager_profileDidInitialize___block_invoke_359(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 24);

  objc_storeStrong(v3, v2);
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end