@interface HDSyncSampleOriginUtilities
+ (BOOL)generateStateSyncCodableContributors:(id *)contributors predicate:(id)predicate profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (BOOL)generateStateSyncCodableDevices:(id *)devices predicate:(id)predicate profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (int64_t)ingestContributorSyncObjects:(id)objects syncStore:(id)store profile:(id)profile error:(id *)error;
+ (int64_t)ingestSourceSyncObjects:(id)objects syncStore:(id)store profile:(id)profile error:(id *)error;
@end

@implementation HDSyncSampleOriginUtilities

+ (BOOL)generateStateSyncCodableDevices:(id *)devices predicate:(id)predicate profile:(id)profile transaction:(id)transaction error:(id *)error
{
  profileCopy = profile;
  transactionCopy = transaction;
  v13 = MEMORY[0x277CBEB18];
  predicateCopy = predicate;
  v15 = objc_alloc_init(v13);
  v16 = +[HDDeviceEntity _propertiesForDevice];
  database = [transactionCopy database];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __99__HDSyncSampleOriginUtilities_generateStateSyncCodableDevices_predicate_profile_transaction_error___block_invoke;
  v24[3] = &unk_2786172E8;
  v25 = profileCopy;
  v26 = transactionCopy;
  v18 = v15;
  v27 = v18;
  v19 = transactionCopy;
  v20 = profileCopy;
  v21 = [(HDHealthEntity *)HDDeviceEntity enumerateEntitiesForSyncWithProperties:v16 predicate:predicateCopy healthDatabase:database error:error block:v24];

  if (devices && v21)
  {
    v22 = v18;
    *devices = v18;
  }

  return v21;
}

BOOL __99__HDSyncSampleOriginUtilities_generateStateSyncCodableDevices_predicate_profile_transaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 0;
  v9 = [HDDeviceSyncEntity _syncCodableDevice:&v14 fromRow:a4 profile:*(a1 + 32) transaction:*(a1 + 40) error:a8];
  v10 = v14;
  v11 = v10;
  if (v9 && v10 != 0)
  {
    [*(a1 + 48) addObject:v10];
  }

  return v9;
}

+ (int64_t)ingestSourceSyncObjects:(id)objects syncStore:(id)store profile:(id)profile error:(id *)error
{
  objectsCopy = objects;
  storeCopy = store;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__HDSyncSampleOriginUtilities_ingestSourceSyncObjects_syncStore_profile_error___block_invoke;
  v18[3] = &__block_descriptor_40_e25__16__0__HDCodableSource_8l;
  v18[4] = self;
  profileCopy = profile;
  v13 = [objectsCopy hk_map:v18];
  sourceManager = [profileCopy sourceManager];

  if (storeCopy)
  {
    syncProvenance = [storeCopy syncProvenance];
  }

  else
  {
    syncProvenance = 0;
  }

  v16 = [sourceManager createSourcesWithCodables:v13 provenance:syncProvenance error:error];

  return v16 ^ 1u;
}

id __79__HDSyncSampleOriginUtilities_ingestSourceSyncObjects_syncStore_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCE4A8]];

  if (v5)
  {
    v6 = [v3 decodedUUID];
    if (v6)
    {
      v7 = [v3 copy];

      v8 = [MEMORY[0x277CCDA00] _generateIdentifierForAppleDeviceWithUUID:v6];
      [v7 setBundleIdentifier:v8];

      v3 = v7;
    }

    else
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        v13 = v9;
        v15 = 138543362;
        v16 = objc_opt_class();
        v14 = v16;
        _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "[%{public}@]: Decoded UUID found nil.", &v15, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (int64_t)ingestContributorSyncObjects:(id)objects syncStore:(id)store profile:(id)profile error:(id *)error
{
  objectsCopy = objects;
  profileCopy = profile;
  if (store)
  {
    store = [store syncProvenance];
  }

  v11 = [[HDInsertCodableContributorsOperation alloc] initWithContributors:objectsCopy provenance:store];
  v12 = [(HDJournalableOperation *)v11 performOrJournalWithProfile:profileCopy error:error]^ 1;

  return v12;
}

+ (BOOL)generateStateSyncCodableContributors:(id *)contributors predicate:(id)predicate profile:(id)profile transaction:(id)transaction error:(id *)error
{
  profileCopy = profile;
  transactionCopy = transaction;
  v13 = MEMORY[0x277CBEB18];
  predicateCopy = predicate;
  v15 = objc_alloc_init(v13);
  v16 = +[HDContributorSyncEntity _orderedProperties];
  database = [transactionCopy database];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __104__HDSyncSampleOriginUtilities_generateStateSyncCodableContributors_predicate_profile_transaction_error___block_invoke;
  v24[3] = &unk_2786172E8;
  v25 = profileCopy;
  v26 = transactionCopy;
  v18 = v15;
  v27 = v18;
  v19 = transactionCopy;
  v20 = profileCopy;
  v21 = [(HDHealthEntity *)HDContributorEntity enumerateEntitiesForSyncWithProperties:v16 predicate:predicateCopy healthDatabase:database error:error block:v24];

  if (contributors && v21)
  {
    v22 = v18;
    *contributors = v18;
  }

  return v21;
}

BOOL __104__HDSyncSampleOriginUtilities_generateStateSyncCodableContributors_predicate_profile_transaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = [HDContributorSyncEntity _syncCodableContributorFromRow:a4 profile:*(a1 + 32) transaction:*(a1 + 40) error:a8];
  if (v9)
  {
    [*(a1 + 48) addObject:v9];
  }

  return v9 != 0;
}

@end