@interface HDOntologyBackingStore
+ (id)_ontologyURLWithBaseURL:(uint64_t)a1;
+ (id)unitTesting_ontologyBackingStoreForDaemon:(id)a3 baseURL:(id)a4;
+ (uint64_t)_deleteUnderlyingDatabaseWithURL:(uint64_t)a3 error:;
- (BOOL)isAvailable;
- (BOOL)obliterateWithReason:(id)a3 error:(id *)a4;
- (HDDaemon)daemon;
- (HDOntologyBackingStore)init;
- (HDOntologyBackingStore)initWithDaemon:(id)a3;
- (id)_checkOutDatabaseConnectionForWrite:(uint64_t)a3 error:;
- (id)_graphDatabaseConnectionWithError:(id *)a1;
- (id)_initWithDaemon:(id)a3 baseURL:(id)a4;
- (id)checkOutProtectedResourceWithAssertion:(id)a3 transaction:(id)a4 error:(id *)a5;
- (id)newConnectionForPool:(id)a3 error:(id *)a4;
- (id)requestProtectedResourceAccessAssertionForOwnerIdentifier:(id)a3 error:(id *)a4;
- (id)sizeOfUnderlyingDatabaseInBytes;
- (uint64_t)_allowedToOpenDatabaseWithError:(uint64_t)result;
- (uint64_t)_ontologyIsAvailableWithError:(uint64_t)a1;
- (uint64_t)_performOntologyTransactionWithProfile:(void *)a3 databaseTransaction:(uint64_t)a4 write:(void *)a5 error:(void *)a6 transactionHandler:;
- (uint64_t)_performOutermostTransactionForWrite:(void *)a3 profile:(void *)a4 databaseTransaction:(void *)a5 threadDictionary:(uint64_t)a6 error:(void *)a7 transactionHandler:;
- (uint64_t)_performPrimitiveTransactionForWrite:(void *)a3 profile:(void *)a4 databaseTransaction:(uint64_t)a5 error:(void *)a6 transactionHandler:;
- (void)_availabilityLock_handleNewAvailability:(uint64_t)a1;
- (void)_flushConnectionsAndWait;
- (void)_primeDatabaseConnectionCacheForOwner:(uint64_t)a1;
- (void)_queue_contentProtectionStateChanged:(uint64_t)a1 previousState:(uint64_t)a2;
- (void)_queue_flushDatabaseConnectionsIfNecessary;
- (void)_updateAvailability;
- (void)assertionManager:(id)a3 assertionInvalidated:(id)a4;
- (void)close;
- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4;
- (void)daemonReady:(id)a3;
- (void)databasePool:(id)a3 didFlushConnections:(id)a4;
- (void)invalidate;
- (void)obliterateWithReason:(id)a3;
@end

@implementation HDOntologyBackingStore

- (void)_queue_flushDatabaseConnectionsIfNecessary
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    os_unfair_lock_lock((a1 + 40));
    v2 = *(a1 + 48);
    os_unfair_lock_unlock((a1 + 40));
    if (v2 == 2 && ([*(a1 + 88) hasActiveAssertionForIdentifier:@"OntologyDatabaseAccessibility"] & 1) == 0)
    {
      v3 = [*(a1 + 64) flush];
    }
  }
}

- (void)_updateAvailability
{
  if (a1)
  {
    os_unfair_lock_lock(a1 + 10);
    v3 = 0;
    v2 = [(HDOntologyBackingStore *)a1 _ontologyIsAvailableWithError:?];
    [(HDOntologyBackingStore *)a1 _availabilityLock_handleNewAvailability:v2];
    os_unfair_lock_unlock(a1 + 10);
  }
}

- (HDOntologyBackingStore)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyBackingStore)initWithDaemon:(id)a3
{
  v4 = a3;
  v5 = [v4 healthDirectoryURL];
  v6 = [(HDOntologyBackingStore *)self _initWithDaemon:v4 baseURL:v5];

  return v6;
}

- (id)_initWithDaemon:(id)a3 baseURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v37.receiver = self;
  v37.super_class = HDOntologyBackingStore;
  v8 = [(HDOntologyBackingStore *)&v37 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_daemon, v6);
    v10 = [HDOntologyBackingStore _ontologyURLWithBaseURL:v7];
    ontologyURL = v9->_ontologyURL;
    v9->_ontologyURL = v10;

    atomic_store(0, &v9->_invalidated);
    v12 = HKCreateSerialDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v12;

    v14 = MEMORY[0x277CCACA8];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"%@.%p.transaction", v16, v9];
    threadLocalTransactionKey = v9->_threadLocalTransactionKey;
    v9->_threadLocalTransactionKey = v17;

    v9->_available = 0;
    v9->_availabilityLock._os_unfair_lock_opaque = 0;
    v9->_observedContentProtectionState = 0;
    v19 = objc_alloc(MEMORY[0x277CCD738]);
    v20 = HKLogHealthOntology();
    v21 = [v19 initWithName:@"HDOntologyBackingStoreObserver" loggingCategory:v20];
    observers = v9->_observers;
    v9->_observers = v21;

    v23 = objc_alloc(MEMORY[0x277D10AF0]);
    WeakRetained = objc_loadWeakRetained(&v9->_daemon);
    v25 = [WeakRetained behavior];
    v26 = [v23 initWithConcurrentReaderLimit:2 behavior:v25 debugIdentifier:@"ontology" delegate:v9];
    databaseConnectionPool = v9->_databaseConnectionPool;
    v9->_databaseConnectionPool = v26;

    v28 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    activeDatabaseConnectionLock = v9->_activeDatabaseConnectionLock;
    v9->_activeDatabaseConnectionLock = v28;

    v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeDatabaseConnections = v9->_activeDatabaseConnections;
    v9->_activeDatabaseConnections = v30;

    v32 = objc_alloc_init(MEMORY[0x277D10AC0]);
    protectedResourceAssertionManager = v9->_protectedResourceAssertionManager;
    v9->_protectedResourceAssertionManager = v32;

    [(HDAssertionManager *)v9->_protectedResourceAssertionManager addObserver:v9 forAssertionIdentifier:@"OntologyDatabaseAccessibility" queue:v9->_queue];
    v34 = objc_loadWeakRetained(&v9->_daemon);
    [v34 registerProtectedResourceStoreProvider:v9];

    v35 = objc_loadWeakRetained(&v9->_daemon);
    [v35 registerDaemonReadyObserver:v9 queue:v9->_queue];
  }

  return v9;
}

+ (id)_ontologyURLWithBaseURL:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 URLByAppendingPathComponent:@"ontology" isDirectory:1];

  v4 = [v3 URLByAppendingPathComponent:@"HealthOntology.db" isDirectory:0];

  return v4;
}

- (BOOL)isAvailable
{
  os_unfair_lock_lock(&self->_availabilityLock);
  available = self->_available;
  os_unfair_lock_unlock(&self->_availabilityLock);
  return available;
}

- (void)obliterateWithReason:(id)a3
{
  v7 = 0;
  v4 = [(HDOntologyBackingStore *)self obliterateWithReason:a3 error:&v7];
  v5 = v7;
  if (!v4)
  {
    _HKInitializeLogging();
    v6 = HKLogHealthOntology();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(HDOntologyBackingStore *)self obliterateWithReason:v5, v6];
    }
  }
}

- (BOOL)obliterateWithReason:(id)a3 error:(id *)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HDDatabaseConnectionPool *)self->_databaseConnectionPool flush];
  [(NSConditionLock *)self->_activeDatabaseConnectionLock lockWhenCondition:0];
  _HKInitializeLogging();
  v8 = HKLogHealthOntology();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_2514A1000, v8, OS_LOG_TYPE_DEFAULT, "Obliterate %{public}@ for %{public}@", &v12, 0x16u);
  }

  v9 = [HDOntologyBackingStore _deleteUnderlyingDatabaseWithURL:a4 error:?];
  [(NSConditionLock *)self->_activeDatabaseConnectionLock unlock];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (uint64_t)_deleteUnderlyingDatabaseWithURL:(uint64_t)a3 error:
{
  v4 = a2;
  objc_opt_self();
  v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v6 = [v5 hd_removeSQLiteDatabaseAtURL:v4 preserveCopy:0];
  if ((v6 & 1) == 0)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = [v4 path];
    [v7 hk_assignError:a3 code:102 format:{@"Unable to remove underlying database at '%@'", v8}];
  }

  return v6;
}

- (id)sizeOfUnderlyingDatabaseInBytes
{
  v38[3] = *MEMORY[0x277D85DE8];
  v3 = [(NSURL *)self->_ontologyURL lastPathComponent];
  v4 = [(NSURL *)self->_ontologyURL URLByDeletingLastPathComponent];
  v38[0] = self->_ontologyURL;
  v5 = [v3 stringByAppendingString:@"-wal"];
  v6 = [v4 URLByAppendingPathComponent:v5];
  v38[1] = v6;
  v25 = v3;
  v7 = [v3 stringByAppendingString:@"-shm"];
  v8 = [v4 URLByAppendingPathComponent:v7];
  v38[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v28;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v26 = 0;
        v17 = [v16 hk_fileSizeWithError:&v26];
        v18 = v26;
        v19 = v18;
        if (!v17 && ([v18 hk_isCocoaNoSuchFileError] & 1) == 0)
        {
          _HKInitializeLogging();
          v20 = HKLogHealthOntology();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v24 = [v16 path];
            *buf = 138543874;
            v32 = self;
            v33 = 2114;
            v34 = v24;
            v35 = 2114;
            v36 = v19;
            _os_log_error_impl(&dword_2514A1000, v20, OS_LOG_TYPE_ERROR, "%{public}@: error getting size of %{public}@: %{public}@", buf, 0x20u);
          }

          v21 = 0;
          goto LABEL_16;
        }

        v13 += [v17 longLongValue];
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

  v21 = [MEMORY[0x277CCABB0] numberWithLongLong:v13];
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)unitTesting_ontologyBackingStoreForDaemon:(id)a3 baseURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithDaemon:v7 baseURL:v6];

  return v8;
}

- (id)requestProtectedResourceAccessAssertionForOwnerIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__9;
  v30 = __Block_byref_object_dispose__9;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__9;
  v24 = __Block_byref_object_dispose__9;
  v25 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__HDOntologyBackingStore_requestProtectedResourceAccessAssertionForOwnerIdentifier_error___block_invoke;
  block[3] = &unk_2796BA140;
  block[4] = self;
  v17 = &v32;
  v18 = &v20;
  v19 = &v26;
  v8 = v6;
  v16 = v8;
  dispatch_sync(queue, block);
  v9 = v27[5];
  if (v9)
  {
    if (v33[3] >= 1)
    {
      [(HDOntologyBackingStore *)self _primeDatabaseConnectionCacheForOwner:v8];
      v9 = v27[5];
    }

    v10 = v9;
  }

  else
  {
    v11 = v21[5];
    v12 = v11;
    if (v11)
    {
      if (a4)
      {
        v13 = v11;
        *a4 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v10 = 0;
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v10;
}

void __90__HDOntologyBackingStore_requestProtectedResourceAccessAssertionForOwnerIdentifier_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  v3 = [WeakRetained contentProtectionManager];
  v4 = [v3 observedState];

  v5 = *(*(a1 + 32) + 64);
  if (v4 == 2)
  {
    if (![v5 count])
    {
      v6 = [MEMORY[0x277CCA9B8] hk_protectedDataInaccessibilityError];
      v7 = *(*(a1 + 56) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      MEMORY[0x2821F96F8]();
      return;
    }
  }

  else
  {
    v9 = [v5 cacheSize];
    *(*(*(a1 + 48) + 8) + 24) = v9 - [*(*(a1 + 32) + 64) count];
  }

  v10 = [objc_alloc(MEMORY[0x277D10AB8]) initWithAssertionIdentifier:@"OntologyDatabaseAccessibility" ownerIdentifier:*(a1 + 40)];
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (([*(*(a1 + 32) + 88) takeAssertion:*(*(*(a1 + 64) + 8) + 40)] & 1) == 0)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *(*(a1 + 56) + 8);
    obj = *(v14 + 40);
    v15 = [*(a1 + 32) protectedResourceIdentifier];
    [v13 hk_assignError:&obj code:100 format:{@"Unable to check out protected resource /'%@/' for owner %@", v15, *(a1 + 40)}];
    objc_storeStrong((v14 + 40), obj);

    v16 = *(*(a1 + 64) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;
  }
}

- (id)checkOutProtectedResourceWithAssertion:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v7 = a3;
  if (([(HDAssertionManager *)self->_protectedResourceAssertionManager hasActiveAssertion:v7]& 1) != 0)
  {
    v8 = self;
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = [(HDOntologyBackingStore *)self protectedResourceIdentifier];
    [v9 hk_assignError:a5 code:3 format:{@"Unable to check out protected resource /'%@/' with assertion %@", v10, v7}];

    v8 = 0;
  }

  return v8;
}

- (void)assertionManager:(id)a3 assertionInvalidated:(id)a4
{
  dispatch_assert_queue_V2(self->_queue);

  [(HDOntologyBackingStore *)self _queue_flushDatabaseConnectionsIfNecessary];
}

- (id)newConnectionForPool:(id)a3 error:(id *)a4
{
  if (![(HDOntologyBackingStore *)self _allowedToOpenDatabaseWithError:a4])
  {
    return 0;
  }

  [(NSConditionLock *)self->_activeDatabaseConnectionLock lock];
  v6 = [(HDOntologyBackingStore *)&self->super.isa _graphDatabaseConnectionWithError:a4];
  [(NSMutableSet *)self->_activeDatabaseConnections hk_addNonNilObject:v6];
  [(NSConditionLock *)self->_activeDatabaseConnectionLock unlockWithCondition:[(NSMutableSet *)self->_activeDatabaseConnections count]!= 0];
  return v6;
}

- (uint64_t)_performOutermostTransactionForWrite:(void *)a3 profile:(void *)a4 databaseTransaction:(void *)a5 threadDictionary:(uint64_t)a6 error:(void *)a7 transactionHandler:
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (a1)
  {
    v17 = [(HDOntologyBackingStore *)a1 _checkOutDatabaseConnectionForWrite:a2 error:a6];
    if (v17)
    {
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __133__HDOntologyBackingStore__performOutermostTransactionForWrite_profile_databaseTransaction_threadDictionary_error_transactionHandler___block_invoke;
      v24 = &unk_2796BA168;
      v25 = v13;
      v26 = v14;
      v30 = a2;
      v18 = v15;
      v27 = v18;
      v28 = a1;
      v29 = v16;
      v19 = [v17 performTransactionWithError:a6 write:a2 block:&v21];

      [v18 removeObjectForKey:{*(a1 + 32), v21, v22, v23, v24}];
      [*(a1 + 64) checkInConnection:v17 flushImmediately:0];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t __133__HDOntologyBackingStore__performOutermostTransactionForWrite_profile_databaseTransaction_threadDictionary_error_transactionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HDOntologyTransaction alloc] initWithProfile:*(a1 + 32) databaseTransaction:*(a1 + 40) graphDatabase:v3 isWriteTransaction:*(a1 + 72)];

  [*(a1 + 48) setObject:v4 forKeyedSubscript:*(*(a1 + 56) + 32)];
  v5 = (*(*(a1 + 64) + 16))();

  return v5;
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

- (uint64_t)_performOntologyTransactionWithProfile:(void *)a3 databaseTransaction:(uint64_t)a4 write:(void *)a5 error:(void *)a6 transactionHandler:
{
  v11 = a2;
  v12 = a3;
  v13 = a6;
  if (!a1)
  {
    v15 = 0;
    goto LABEL_6;
  }

  v14 = [v12 ontologyDatabase];
  if (v14)
  {
    if ([(HDOntologyBackingStore *)a1 _allowedToOpenDatabaseWithError:a5])
    {
      v15 = [(HDOntologyBackingStore *)a1 _performPrimitiveTransactionForWrite:a4 profile:v11 databaseTransaction:v12 error:a5 transactionHandler:v13];
      goto LABEL_5;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:{@"Ontology database is nil for transaction %@", v12}];
  }

  v15 = 0;
LABEL_5:

LABEL_6:
  return v15;
}

- (void)close
{
  [(HDOntologyBackingStore *)self _flushConnectionsAndWait];
  if (self)
  {
    [(NSConditionLock *)self->_activeDatabaseConnectionLock lockWhenCondition:0];
    [(NSConditionLock *)self->_activeDatabaseConnectionLock unlock];
  }

  [(HDOntologyBackingStore *)self _updateAvailability];
}

- (void)_flushConnectionsAndWait
{
  if (a1)
  {
    v1 = [*(a1 + 64) flush];
    dispatch_group_wait(v1, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)invalidate
{
  if (atomic_exchange(&self->_invalidated, 1u))
  {
    if (!self)
    {
      goto LABEL_5;
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_availabilityLock);
    self->_available = 0;
    os_unfair_lock_unlock(&self->_availabilityLock);
    [(HDAssertionManager *)self->_protectedResourceAssertionManager invalidate];
    [(HDOntologyBackingStore *)self _flushConnectionsAndWait];
  }

  [(NSConditionLock *)self->_activeDatabaseConnectionLock lockWhenCondition:0];
  [(NSConditionLock *)self->_activeDatabaseConnectionLock unlock];
LABEL_5:

  [(HDOntologyBackingStore *)self _updateAvailability];
}

- (void)daemonReady:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v5 = [WeakRetained contentProtectionManager];
  [v5 addContentProtectionObserver:self withQueue:self->_queue];

  v6 = objc_loadWeakRetained(&self->_daemon);
  v7 = [v6 contentProtectionManager];
  -[HDOntologyBackingStore _queue_contentProtectionStateChanged:previousState:](self, [v7 observedState]);

  [(HDOntologyBackingStore *)self _updateAvailability];
}

- (void)_queue_contentProtectionStateChanged:(uint64_t)a1 previousState:(uint64_t)a2
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    os_unfair_lock_lock((a1 + 40));
    *(a1 + 48) = a2;

    os_unfair_lock_unlock((a1 + 40));
  }
}

- (void)_primeDatabaseConnectionCacheForOwner:(uint64_t)a1
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 64);
    v9 = 0;
    v5 = [v4 checkOutConnectionWithOptions:10 error:&v9];
    v6 = v9;
    if (v5)
    {
      [*(a1 + 64) checkInConnection:v5 flushImmediately:0];
    }

    else
    {
      _HKInitializeLogging();
      v7 = HKLogHealthOntology();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v11 = v3;
        v12 = 2114;
        v13 = v6;
        _os_log_impl(&dword_2514A1000, v7, OS_LOG_TYPE_DEFAULT, "Failed to pre-emptively check out ontology connection for accessibility assertion owner %{public}@: %{public}@", buf, 0x16u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4
{
  dispatch_assert_queue_V2(self->_queue);
  os_unfair_lock_lock(&self->_availabilityLock);
  self->_observedContentProtectionState = a3;
  os_unfair_lock_unlock(&self->_availabilityLock);
  [(HDOntologyBackingStore *)self _queue_flushDatabaseConnectionsIfNecessary];

  [(HDOntologyBackingStore *)self _updateAvailability];
}

- (uint64_t)_allowedToOpenDatabaseWithError:(uint64_t)result
{
  if (result)
  {
    v3 = atomic_load((result + 16));
    if (v3)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a2 code:119 format:{@"%@:%p is invalidated", objc_opt_class(), result}];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((result + 96));
      v5 = [WeakRetained contentProtectionManager];
      v6 = [v5 deviceUnlockedSinceBoot];

      if (v6)
      {
        return 1;
      }

      v7 = [MEMORY[0x277CCA9B8] hk_databaseInaccessibleBeforeFirstUnlockError];
      if (v7)
      {
        if (a2)
        {
          v8 = v7;
          *a2 = v7;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    return 0;
  }

  return result;
}

- (id)_graphDatabaseConnectionWithError:(id *)a1
{
  if (a1)
  {
    v4 = a1;
    WeakRetained = objc_loadWeakRetained(a1 + 12);
    v6 = [WeakRetained contentProtectionManager];
    v7 = [v6 observedState];

    if (v7 == 2)
    {
      v8 = [MEMORY[0x277CCA9B8] hk_protectedDataInaccessibilityError];
      if (v8)
      {
        if (a2)
        {
          v9 = v8;
          *a2 = v8;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      a1 = 0;
    }

    else
    {
      a1 = [HDSimpleGraphDatabase graphDatabaseWithURL:v4[1] error:a2];
    }

    v2 = vars8;
  }

  return a1;
}

- (void)databasePool:(id)a3 didFlushConnections:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  [(NSConditionLock *)self->_activeDatabaseConnectionLock lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [(NSMutableSet *)self->_activeDatabaseConnections removeObject:v11, v13];
        [v11 close];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(NSConditionLock *)self->_activeDatabaseConnectionLock unlockWithCondition:[(NSMutableSet *)self->_activeDatabaseConnections count]!= 0];
  [(HDOntologyBackingStore *)self _updateAvailability];

  v12 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_ontologyIsAvailableWithError:(uint64_t)a1
{
  v2 = a1;
  if (a1)
  {
    if ([(HDOntologyBackingStore *)a1 _allowedToOpenDatabaseWithError:a2])
    {
      WeakRetained = objc_loadWeakRetained((v2 + 96));
      v4 = [WeakRetained contentProtectionManager];
      v2 = [v4 observedState] != 2 || objc_msgSend(*(v2 + 64), "count") > 0;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

- (uint64_t)_performPrimitiveTransactionForWrite:(void *)a3 profile:(void *)a4 databaseTransaction:(uint64_t)a5 error:(void *)a6 transactionHandler:
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (!a1)
  {
    v18 = 0;
    goto LABEL_10;
  }

  v14 = [MEMORY[0x277CCACC8] currentThread];
  v15 = [v14 threadDictionary];

  v16 = [v15 objectForKeyedSubscript:*(a1 + 32)];
  v17 = v16;
  if (!v16)
  {
    v19 = [(HDOntologyBackingStore *)a1 _performOutermostTransactionForWrite:a2 profile:v11 databaseTransaction:v12 threadDictionary:v15 error:a5 transactionHandler:v13];
LABEL_8:
    v18 = v19;
    goto LABEL_9;
  }

  if (([v16 isWriteTransaction] & 1) != 0 || !a2)
  {
    v19 = (*(v13 + 2))(v13, v17, a5);
    goto LABEL_8;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a5 code:131 format:@"Cannot perform an ontology write transaction nested inside a read transaction"];
  v18 = 0;
LABEL_9:

LABEL_10:
  return v18;
}

- (id)_checkOutDatabaseConnectionForWrite:(uint64_t)a3 error:
{
  if (a1)
  {
    v5 = a1;
    v6 = a2;
    WeakRetained = objc_loadWeakRetained(a1 + 12);
    v8 = [WeakRetained contentProtectionManager];
    v9 = [v8 isProtectedDataAvailable];

    if (v9)
    {
      v10 = v6;
    }

    else
    {
      v10 = v6 | 4;
    }

    a1 = [v5[8] checkOutConnectionWithOptions:v10 error:a3];
    v3 = vars8;
  }

  return a1;
}

- (void)_availabilityLock_handleNewAvailability:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 40));
    if (*(a1 + 44) != a2)
    {
      *(a1 + 44) = a2;
      v4 = *(a1 + 56);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __66__HDOntologyBackingStore__availabilityLock_handleNewAvailability___block_invoke;
      v5[3] = &unk_2796BA190;
      v5[4] = a1;
      [v4 notifyObservers:v5];
    }
  }
}

- (void)obliterateWithReason:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_2514A1000, log, OS_LOG_TYPE_ERROR, "%{public}@: unable to obliterate database: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end