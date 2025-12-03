@interface HDOntologyBackingStore
+ (id)_ontologyURLWithBaseURL:(uint64_t)l;
+ (id)unitTesting_ontologyBackingStoreForDaemon:(id)daemon baseURL:(id)l;
+ (uint64_t)_deleteUnderlyingDatabaseWithURL:(uint64_t)l error:;
- (BOOL)isAvailable;
- (BOOL)obliterateWithReason:(id)reason error:(id *)error;
- (HDDaemon)daemon;
- (HDOntologyBackingStore)init;
- (HDOntologyBackingStore)initWithDaemon:(id)daemon;
- (id)_checkOutDatabaseConnectionForWrite:(uint64_t)write error:;
- (id)_graphDatabaseConnectionWithError:(id *)error;
- (id)_initWithDaemon:(id)daemon baseURL:(id)l;
- (id)checkOutProtectedResourceWithAssertion:(id)assertion transaction:(id)transaction error:(id *)error;
- (id)newConnectionForPool:(id)pool error:(id *)error;
- (id)requestProtectedResourceAccessAssertionForOwnerIdentifier:(id)identifier error:(id *)error;
- (id)sizeOfUnderlyingDatabaseInBytes;
- (uint64_t)_allowedToOpenDatabaseWithError:(uint64_t)result;
- (uint64_t)_ontologyIsAvailableWithError:(uint64_t)error;
- (uint64_t)_performOntologyTransactionWithProfile:(void *)profile databaseTransaction:(uint64_t)transaction write:(void *)write error:(void *)error transactionHandler:;
- (uint64_t)_performOutermostTransactionForWrite:(void *)write profile:(void *)profile databaseTransaction:(void *)transaction threadDictionary:(uint64_t)dictionary error:(void *)error transactionHandler:;
- (uint64_t)_performPrimitiveTransactionForWrite:(void *)write profile:(void *)profile databaseTransaction:(uint64_t)transaction error:(void *)error transactionHandler:;
- (void)_availabilityLock_handleNewAvailability:(uint64_t)availability;
- (void)_flushConnectionsAndWait;
- (void)_primeDatabaseConnectionCacheForOwner:(uint64_t)owner;
- (void)_queue_contentProtectionStateChanged:(uint64_t)changed previousState:(uint64_t)state;
- (void)_queue_flushDatabaseConnectionsIfNecessary;
- (void)_updateAvailability;
- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated;
- (void)close;
- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state;
- (void)daemonReady:(id)ready;
- (void)databasePool:(id)pool didFlushConnections:(id)connections;
- (void)invalidate;
- (void)obliterateWithReason:(id)reason;
@end

@implementation HDOntologyBackingStore

- (void)_queue_flushDatabaseConnectionsIfNecessary
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 24));
    os_unfair_lock_lock((self + 40));
    v2 = *(self + 48);
    os_unfair_lock_unlock((self + 40));
    if (v2 == 2 && ([*(self + 88) hasActiveAssertionForIdentifier:@"OntologyDatabaseAccessibility"] & 1) == 0)
    {
      flush = [*(self + 64) flush];
    }
  }
}

- (void)_updateAvailability
{
  if (self)
  {
    os_unfair_lock_lock(self + 10);
    v3 = 0;
    v2 = [(HDOntologyBackingStore *)self _ontologyIsAvailableWithError:?];
    [(HDOntologyBackingStore *)self _availabilityLock_handleNewAvailability:v2];
    os_unfair_lock_unlock(self + 10);
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

- (HDOntologyBackingStore)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  healthDirectoryURL = [daemonCopy healthDirectoryURL];
  v6 = [(HDOntologyBackingStore *)self _initWithDaemon:daemonCopy baseURL:healthDirectoryURL];

  return v6;
}

- (id)_initWithDaemon:(id)daemon baseURL:(id)l
{
  daemonCopy = daemon;
  lCopy = l;
  v37.receiver = self;
  v37.super_class = HDOntologyBackingStore;
  v8 = [(HDOntologyBackingStore *)&v37 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_daemon, daemonCopy);
    v10 = [HDOntologyBackingStore _ontologyURLWithBaseURL:lCopy];
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
    behavior = [WeakRetained behavior];
    v26 = [v23 initWithConcurrentReaderLimit:2 behavior:behavior debugIdentifier:@"ontology" delegate:v9];
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

+ (id)_ontologyURLWithBaseURL:(uint64_t)l
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

- (void)obliterateWithReason:(id)reason
{
  v7 = 0;
  v4 = [(HDOntologyBackingStore *)self obliterateWithReason:reason error:&v7];
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

- (BOOL)obliterateWithReason:(id)reason error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  flush = [(HDDatabaseConnectionPool *)self->_databaseConnectionPool flush];
  [(NSConditionLock *)self->_activeDatabaseConnectionLock lockWhenCondition:0];
  _HKInitializeLogging();
  v8 = HKLogHealthOntology();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = reasonCopy;
    _os_log_impl(&dword_2514A1000, v8, OS_LOG_TYPE_DEFAULT, "Obliterate %{public}@ for %{public}@", &v12, 0x16u);
  }

  v9 = [HDOntologyBackingStore _deleteUnderlyingDatabaseWithURL:error error:?];
  [(NSConditionLock *)self->_activeDatabaseConnectionLock unlock];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (uint64_t)_deleteUnderlyingDatabaseWithURL:(uint64_t)l error:
{
  v4 = a2;
  objc_opt_self();
  v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v6 = [v5 hd_removeSQLiteDatabaseAtURL:v4 preserveCopy:0];
  if ((v6 & 1) == 0)
  {
    v7 = MEMORY[0x277CCA9B8];
    path = [v4 path];
    [v7 hk_assignError:l code:102 format:{@"Unable to remove underlying database at '%@'", path}];
  }

  return v6;
}

- (id)sizeOfUnderlyingDatabaseInBytes
{
  v38[3] = *MEMORY[0x277D85DE8];
  lastPathComponent = [(NSURL *)self->_ontologyURL lastPathComponent];
  uRLByDeletingLastPathComponent = [(NSURL *)self->_ontologyURL URLByDeletingLastPathComponent];
  v38[0] = self->_ontologyURL;
  v5 = [lastPathComponent stringByAppendingString:@"-wal"];
  v6 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v5];
  v38[1] = v6;
  v25 = lastPathComponent;
  v7 = [lastPathComponent stringByAppendingString:@"-shm"];
  v8 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v7];
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
            path = [v16 path];
            *buf = 138543874;
            selfCopy = self;
            v33 = 2114;
            v34 = path;
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

+ (id)unitTesting_ontologyBackingStoreForDaemon:(id)daemon baseURL:(id)l
{
  lCopy = l;
  daemonCopy = daemon;
  v8 = [[self alloc] _initWithDaemon:daemonCopy baseURL:lCopy];

  return v8;
}

- (id)requestProtectedResourceAccessAssertionForOwnerIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
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
      if (error)
      {
        v13 = v11;
        *error = v12;
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

- (id)checkOutProtectedResourceWithAssertion:(id)assertion transaction:(id)transaction error:(id *)error
{
  assertionCopy = assertion;
  if (([(HDAssertionManager *)self->_protectedResourceAssertionManager hasActiveAssertion:assertionCopy]& 1) != 0)
  {
    selfCopy = self;
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    protectedResourceIdentifier = [(HDOntologyBackingStore *)self protectedResourceIdentifier];
    [v9 hk_assignError:error code:3 format:{@"Unable to check out protected resource /'%@/' with assertion %@", protectedResourceIdentifier, assertionCopy}];

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated
{
  dispatch_assert_queue_V2(self->_queue);

  [(HDOntologyBackingStore *)self _queue_flushDatabaseConnectionsIfNecessary];
}

- (id)newConnectionForPool:(id)pool error:(id *)error
{
  if (![(HDOntologyBackingStore *)self _allowedToOpenDatabaseWithError:error])
  {
    return 0;
  }

  [(NSConditionLock *)self->_activeDatabaseConnectionLock lock];
  v6 = [(HDOntologyBackingStore *)&self->super.isa _graphDatabaseConnectionWithError:error];
  [(NSMutableSet *)self->_activeDatabaseConnections hk_addNonNilObject:v6];
  [(NSConditionLock *)self->_activeDatabaseConnectionLock unlockWithCondition:[(NSMutableSet *)self->_activeDatabaseConnections count]!= 0];
  return v6;
}

- (uint64_t)_performOutermostTransactionForWrite:(void *)write profile:(void *)profile databaseTransaction:(void *)transaction threadDictionary:(uint64_t)dictionary error:(void *)error transactionHandler:
{
  writeCopy = write;
  profileCopy = profile;
  transactionCopy = transaction;
  errorCopy = error;
  if (self)
  {
    v17 = [(HDOntologyBackingStore *)self _checkOutDatabaseConnectionForWrite:a2 error:dictionary];
    if (v17)
    {
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __133__HDOntologyBackingStore__performOutermostTransactionForWrite_profile_databaseTransaction_threadDictionary_error_transactionHandler___block_invoke;
      v24 = &unk_2796BA168;
      v25 = writeCopy;
      v26 = profileCopy;
      v30 = a2;
      v18 = transactionCopy;
      v27 = v18;
      selfCopy = self;
      v29 = errorCopy;
      v19 = [v17 performTransactionWithError:dictionary write:a2 block:&v21];

      [v18 removeObjectForKey:{*(self + 32), v21, v22, v23, v24}];
      [*(self + 64) checkInConnection:v17 flushImmediately:0];
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

- (uint64_t)_performOntologyTransactionWithProfile:(void *)profile databaseTransaction:(uint64_t)transaction write:(void *)write error:(void *)error transactionHandler:
{
  v11 = a2;
  profileCopy = profile;
  errorCopy = error;
  if (!self)
  {
    v15 = 0;
    goto LABEL_6;
  }

  ontologyDatabase = [profileCopy ontologyDatabase];
  if (ontologyDatabase)
  {
    if ([(HDOntologyBackingStore *)self _allowedToOpenDatabaseWithError:write])
    {
      v15 = [(HDOntologyBackingStore *)self _performPrimitiveTransactionForWrite:transaction profile:v11 databaseTransaction:profileCopy error:write transactionHandler:errorCopy];
      goto LABEL_5;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:write code:3 format:{@"Ontology database is nil for transaction %@", profileCopy}];
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
  if (self)
  {
    flush = [*(self + 64) flush];
    dispatch_group_wait(flush, 0xFFFFFFFFFFFFFFFFLL);
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

- (void)daemonReady:(id)ready
{
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  contentProtectionManager = [WeakRetained contentProtectionManager];
  [contentProtectionManager addContentProtectionObserver:self withQueue:self->_queue];

  v6 = objc_loadWeakRetained(&self->_daemon);
  contentProtectionManager2 = [v6 contentProtectionManager];
  -[HDOntologyBackingStore _queue_contentProtectionStateChanged:previousState:](self, [contentProtectionManager2 observedState]);

  [(HDOntologyBackingStore *)self _updateAvailability];
}

- (void)_queue_contentProtectionStateChanged:(uint64_t)changed previousState:(uint64_t)state
{
  if (changed)
  {
    dispatch_assert_queue_V2(*(changed + 24));
    os_unfair_lock_lock((changed + 40));
    *(changed + 48) = state;

    os_unfair_lock_unlock((changed + 40));
  }
}

- (void)_primeDatabaseConnectionCacheForOwner:(uint64_t)owner
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (owner)
  {
    v4 = *(owner + 64);
    v9 = 0;
    v5 = [v4 checkOutConnectionWithOptions:10 error:&v9];
    v6 = v9;
    if (v5)
    {
      [*(owner + 64) checkInConnection:v5 flushImmediately:0];
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

- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state
{
  dispatch_assert_queue_V2(self->_queue);
  os_unfair_lock_lock(&self->_availabilityLock);
  self->_observedContentProtectionState = changed;
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
      contentProtectionManager = [WeakRetained contentProtectionManager];
      deviceUnlockedSinceBoot = [contentProtectionManager deviceUnlockedSinceBoot];

      if (deviceUnlockedSinceBoot)
      {
        return 1;
      }

      hk_databaseInaccessibleBeforeFirstUnlockError = [MEMORY[0x277CCA9B8] hk_databaseInaccessibleBeforeFirstUnlockError];
      if (hk_databaseInaccessibleBeforeFirstUnlockError)
      {
        if (a2)
        {
          v8 = hk_databaseInaccessibleBeforeFirstUnlockError;
          *a2 = hk_databaseInaccessibleBeforeFirstUnlockError;
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

- (id)_graphDatabaseConnectionWithError:(id *)error
{
  if (error)
  {
    errorCopy = error;
    WeakRetained = objc_loadWeakRetained(error + 12);
    contentProtectionManager = [WeakRetained contentProtectionManager];
    observedState = [contentProtectionManager observedState];

    if (observedState == 2)
    {
      hk_protectedDataInaccessibilityError = [MEMORY[0x277CCA9B8] hk_protectedDataInaccessibilityError];
      if (hk_protectedDataInaccessibilityError)
      {
        if (a2)
        {
          v9 = hk_protectedDataInaccessibilityError;
          *a2 = hk_protectedDataInaccessibilityError;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      error = 0;
    }

    else
    {
      error = [HDSimpleGraphDatabase graphDatabaseWithURL:errorCopy[1] error:a2];
    }

    v2 = vars8;
  }

  return error;
}

- (void)databasePool:(id)pool didFlushConnections:(id)connections
{
  v18 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  [(NSConditionLock *)self->_activeDatabaseConnectionLock lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = connectionsCopy;
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

- (uint64_t)_ontologyIsAvailableWithError:(uint64_t)error
{
  errorCopy = error;
  if (error)
  {
    if ([(HDOntologyBackingStore *)error _allowedToOpenDatabaseWithError:a2])
    {
      WeakRetained = objc_loadWeakRetained((errorCopy + 96));
      contentProtectionManager = [WeakRetained contentProtectionManager];
      errorCopy = [contentProtectionManager observedState] != 2 || objc_msgSend(*(errorCopy + 64), "count") > 0;
    }

    else
    {
      return 0;
    }
  }

  return errorCopy;
}

- (uint64_t)_performPrimitiveTransactionForWrite:(void *)write profile:(void *)profile databaseTransaction:(uint64_t)transaction error:(void *)error transactionHandler:
{
  writeCopy = write;
  profileCopy = profile;
  errorCopy = error;
  if (!self)
  {
    v18 = 0;
    goto LABEL_10;
  }

  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v16 = [threadDictionary objectForKeyedSubscript:*(self + 32)];
  v17 = v16;
  if (!v16)
  {
    v19 = [(HDOntologyBackingStore *)self _performOutermostTransactionForWrite:a2 profile:writeCopy databaseTransaction:profileCopy threadDictionary:threadDictionary error:transaction transactionHandler:errorCopy];
LABEL_8:
    v18 = v19;
    goto LABEL_9;
  }

  if (([v16 isWriteTransaction] & 1) != 0 || !a2)
  {
    v19 = (*(errorCopy + 2))(errorCopy, v17, transaction);
    goto LABEL_8;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:transaction code:131 format:@"Cannot perform an ontology write transaction nested inside a read transaction"];
  v18 = 0;
LABEL_9:

LABEL_10:
  return v18;
}

- (id)_checkOutDatabaseConnectionForWrite:(uint64_t)write error:
{
  if (self)
  {
    selfCopy = self;
    v6 = a2;
    WeakRetained = objc_loadWeakRetained(self + 12);
    contentProtectionManager = [WeakRetained contentProtectionManager];
    isProtectedDataAvailable = [contentProtectionManager isProtectedDataAvailable];

    if (isProtectedDataAvailable)
    {
      v10 = v6;
    }

    else
    {
      v10 = v6 | 4;
    }

    self = [selfCopy[8] checkOutConnectionWithOptions:v10 error:write];
    v3 = vars8;
  }

  return self;
}

- (void)_availabilityLock_handleNewAvailability:(uint64_t)availability
{
  if (availability)
  {
    os_unfair_lock_assert_owner((availability + 40));
    if (*(availability + 44) != a2)
    {
      *(availability + 44) = a2;
      v4 = *(availability + 56);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __66__HDOntologyBackingStore__availabilityLock_handleNewAvailability___block_invoke;
      v5[3] = &unk_2796BA190;
      v5[4] = availability;
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