@interface HDOntologyDatabase
+ (id)_legacyOntologyVersionWithTransaction:(uint64_t)a3 error:;
+ (id)_shardedOntologyVersionWithTransaction:(uint64_t)a3 error:;
+ (id)ontologyContentVersionWithTransaction:(id)a3 error:(id *)a4;
- (BOOL)isAvailable;
- (BOOL)performTransactionWithDatabaseTransaction:(id)a3 error:(id *)a4 transactionHandler:(id)a5;
- (BOOL)performTransactionWithError:(id *)a3 transactionHandler:(id)a4;
- (BOOL)unitTesting_performWriteTransactionWithError:(id *)a3 transactionHandler:(id)a4;
- (HDOntologyDatabase)init;
- (HDOntologyDatabase)initWithProfile:(id)a3;
- (HDProfile)profile;
- (id)backingStore;
- (id)ontologyContentVersionWithError:(id *)a3;
- (id)unitTesting_schemaVersionWithError:(id *)a3;
- (void)addOntologyDatabaseAvailabilityObserver:(id)a3;
- (void)ontologyBackingStore:(id)a3 didBecomeAvailable:(BOOL)a4;
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

- (HDOntologyDatabase)initWithProfile:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HDOntologyDatabase;
  v5 = [(HDOntologyDatabase *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc(MEMORY[0x277CCD738]);
    v8 = HKLogHealthOntology();
    v9 = [v7 initWithName:@"HDOntologyDatabaseAvailabilityObserver" loggingCategory:v8];
    databaseAvailableObservers = v6->_databaseAvailableObservers;
    v6->_databaseAvailableObservers = v9;
  }

  return v6;
}

- (BOOL)performTransactionWithError:(id *)a3 transactionHandler:(id)a4
{
  v6 = a4;
  v7 = [(HDOntologyDatabase *)self backingStore];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a3) = [v7 performOntologyTransactionForWrite:0 profile:WeakRetained databaseTransaction:0 error:a3 transactionHandler:v6];

  return a3;
}

- (id)ontologyContentVersionWithError:(id *)a3
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
  if ([(HDOntologyDatabase *)self performTransactionWithError:a3 transactionHandler:v6])
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

+ (id)ontologyContentVersionWithTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDOntologyDatabase *)a1 _shardedOntologyVersionWithTransaction:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    if ([v7 isEmptyVersion])
    {
      v9 = [(HDOntologyDatabase *)a1 _legacyOntologyVersionWithTransaction:v6 error:a4];
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

+ (id)_shardedOntologyVersionWithTransaction:(uint64_t)a3 error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [HDOntologyShardRegistry importedMercuryZipTSVEntriesWithTransaction:v4 error:a3];

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

+ (id)_legacyOntologyVersionWithTransaction:(uint64_t)a3 error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [v4 graphDatabase];

  v11 = 0;
  LODWORD(v4) = [v5 metadataValueForKey:@"ontologyAssetVersion" valueOut:&v11 error:a3];
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

- (void)ontologyBackingStore:(id)a3 didBecomeAvailable:(BOOL)a4
{
  databaseAvailableObservers = self->_databaseAvailableObservers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__HDOntologyDatabase_ontologyBackingStore_didBecomeAvailable___block_invoke;
  v5[3] = &unk_2796B8A28;
  v5[4] = self;
  v6 = a4;
  [(HKObserverSet *)databaseAvailableObservers notifyObservers:v5];
}

- (id)unitTesting_schemaVersionWithError:(id *)a3
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
  if ([(HDOntologyDatabase *)self performTransactionWithError:a3 transactionHandler:v6])
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
  if (a1)
  {
    v1 = *(a1 + 32);
    if (v1)
    {
      v2 = v1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 24));
      v4 = [WeakRetained daemon];
      v2 = [v4 ontologyBackingStore];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)performTransactionWithDatabaseTransaction:(id)a3 error:(id *)a4 transactionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(HDOntologyDatabase *)self backingStore];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a4) = [v10 performOntologyTransactionForWrite:0 profile:WeakRetained databaseTransaction:v9 error:a4 transactionHandler:v8];

  return a4;
}

- (BOOL)isAvailable
{
  v2 = [(HDOntologyDatabase *)self backingStore];
  v3 = [v2 isAvailable];

  return v3;
}

- (void)addOntologyDatabaseAvailabilityObserver:(id)a3
{
  v5 = a3;
  v4 = [(HDOntologyDatabase *)self backingStore];
  [v4 registerOntologyDatabase:self];

  [(HKObserverSet *)self->_databaseAvailableObservers registerObserver:v5];
}

- (void)unitTesting_close
{
  v2 = [(HDOntologyDatabase *)self backingStore];
  [v2 close];
}

- (BOOL)unitTesting_performWriteTransactionWithError:(id *)a3 transactionHandler:(id)a4
{
  v6 = a4;
  v7 = [(HDOntologyDatabase *)self backingStore];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a3) = [v7 performOntologyTransactionForWrite:1 profile:WeakRetained databaseTransaction:0 error:a3 transactionHandler:v6];

  return a3;
}

@end