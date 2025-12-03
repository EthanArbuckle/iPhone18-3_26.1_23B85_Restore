@interface HDOntologyDatabase
+ (id)_legacyOntologyVersionWithTransaction:(uint64_t)transaction error:;
+ (id)_shardedOntologyVersionWithTransaction:(uint64_t)transaction error:;
+ (id)ontologyContentVersionWithTransaction:(id)transaction error:(id *)error;
- (BOOL)isAvailable;
- (BOOL)performTransactionWithDatabaseTransaction:(id)transaction error:(id *)error transactionHandler:(id)handler;
- (BOOL)performTransactionWithError:(id *)error transactionHandler:(id)handler;
- (BOOL)unitTesting_performWriteTransactionWithError:(id *)error transactionHandler:(id)handler;
- (HDOntologyDatabase)init;
- (HDOntologyDatabase)initWithProfile:(id)profile;
- (HDProfile)profile;
- (id)backingStore;
- (id)ontologyContentVersionWithError:(id *)error;
- (id)unitTesting_schemaVersionWithError:(id *)error;
- (void)addOntologyDatabaseAvailabilityObserver:(id)observer;
- (void)ontologyBackingStore:(id)store didBecomeAvailable:(BOOL)available;
- (void)unitTesting_close;
@end

@implementation HDOntologyDatabase

- (HDOntologyDatabase)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyDatabase)initWithProfile:(id)profile
{
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HDOntologyDatabase;
  v5 = [(HDOntologyDatabase *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc(MEMORY[0x277CCD738]);
    v8 = HKLogHealthOntology();
    v9 = [v7 initWithName:@"HDOntologyDatabaseAvailabilityObserver" loggingCategory:v8];
    databaseAvailableObservers = v6->_databaseAvailableObservers;
    v6->_databaseAvailableObservers = v9;
  }

  return v6;
}

- (BOOL)performTransactionWithError:(id *)error transactionHandler:(id)handler
{
  handlerCopy = handler;
  backingStore = [(HDOntologyDatabase *)self backingStore];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [backingStore performOntologyTransactionForWrite:0 profile:WeakRetained databaseTransaction:0 error:error transactionHandler:handlerCopy];

  return error;
}

- (id)ontologyContentVersionWithError:(id *)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HDOntologyDatabase_ontologyContentVersionWithError___block_invoke;
  v6[3] = &unk_2796B8A00;
  v6[4] = &v7;
  if ([(HDOntologyDatabase *)self performTransactionWithError:error transactionHandler:v6])
  {
    v3 = v8[5];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __54__HDOntologyDatabase_ontologyContentVersionWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [HDOntologyDatabase ontologyContentVersionWithTransaction:a2 error:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

+ (id)ontologyContentVersionWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v7 = [(HDOntologyDatabase *)self _shardedOntologyVersionWithTransaction:transactionCopy error:error];
  v8 = v7;
  if (v7)
  {
    if ([v7 isEmptyVersion])
    {
      v9 = [(HDOntologyDatabase *)self _legacyOntologyVersionWithTransaction:transactionCopy error:error];
    }

    else
    {
      v9 = v8;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_shardedOntologyVersionWithTransaction:(uint64_t)transaction error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [HDOntologyShardRegistry importedMercuryZipTSVEntriesWithTransaction:v4 error:transaction];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCD768]) initWithShardEntries:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_legacyOntologyVersionWithTransaction:(uint64_t)transaction error:
{
  v4 = a2;
  objc_opt_self();
  graphDatabase = [v4 graphDatabase];

  v11 = 0;
  LODWORD(v4) = [graphDatabase metadataValueForKey:@"ontologyAssetVersion" valueOut:&v11 error:transaction];
  v6 = v11;

  v7 = 0;
  if (v4)
  {
    v8 = objc_alloc(MEMORY[0x277CCD768]);
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = &stru_28636E7C8;
    }

    v7 = [v8 initWithString:v9];
  }

  return v7;
}

- (void)ontologyBackingStore:(id)store didBecomeAvailable:(BOOL)available
{
  databaseAvailableObservers = self->_databaseAvailableObservers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__HDOntologyDatabase_ontologyBackingStore_didBecomeAvailable___block_invoke;
  v5[3] = &unk_2796B8A28;
  v5[4] = self;
  availableCopy = available;
  [(HKObserverSet *)databaseAvailableObservers notifyObservers:v5];
}

- (id)unitTesting_schemaVersionWithError:(id *)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HDOntologyDatabase_unitTesting_schemaVersionWithError___block_invoke;
  v6[3] = &unk_2796B8A00;
  v6[4] = &v7;
  if ([(HDOntologyDatabase *)self performTransactionWithError:error transactionHandler:v6])
  {
    v3 = v8[5];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

BOOL __57__HDOntologyDatabase_unitTesting_schemaVersionWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 graphDatabase];
  v6 = [v5 schemaVersionWithError:a3];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return *(*(*(a1 + 32) + 8) + 40) != 0;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (id)backingStore
{
  if (self)
  {
    v1 = *(self + 32);
    if (v1)
    {
      ontologyBackingStore = v1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((self + 24));
      daemon = [WeakRetained daemon];
      ontologyBackingStore = [daemon ontologyBackingStore];
    }
  }

  else
  {
    ontologyBackingStore = 0;
  }

  return ontologyBackingStore;
}

- (BOOL)performTransactionWithDatabaseTransaction:(id)transaction error:(id *)error transactionHandler:(id)handler
{
  handlerCopy = handler;
  transactionCopy = transaction;
  backingStore = [(HDOntologyDatabase *)self backingStore];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [backingStore performOntologyTransactionForWrite:0 profile:WeakRetained databaseTransaction:transactionCopy error:error transactionHandler:handlerCopy];

  return error;
}

- (BOOL)isAvailable
{
  backingStore = [(HDOntologyDatabase *)self backingStore];
  isAvailable = [backingStore isAvailable];

  return isAvailable;
}

- (void)addOntologyDatabaseAvailabilityObserver:(id)observer
{
  observerCopy = observer;
  backingStore = [(HDOntologyDatabase *)self backingStore];
  [backingStore registerOntologyDatabase:self];

  [(HKObserverSet *)self->_databaseAvailableObservers registerObserver:observerCopy];
}

- (void)unitTesting_close
{
  backingStore = [(HDOntologyDatabase *)self backingStore];
  [backingStore close];
}

- (BOOL)unitTesting_performWriteTransactionWithError:(id *)error transactionHandler:(id)handler
{
  handlerCopy = handler;
  backingStore = [(HDOntologyDatabase *)self backingStore];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [backingStore performOntologyTransactionForWrite:1 profile:WeakRetained databaseTransaction:0 error:error transactionHandler:handlerCopy];

  return error;
}

@end