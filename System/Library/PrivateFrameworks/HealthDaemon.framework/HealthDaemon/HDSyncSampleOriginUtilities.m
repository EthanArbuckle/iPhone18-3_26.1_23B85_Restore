@interface HDSyncSampleOriginUtilities
+ (BOOL)generateStateSyncCodableContributors:(id *)a3 predicate:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (BOOL)generateStateSyncCodableDevices:(id *)a3 predicate:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (int64_t)ingestContributorSyncObjects:(id)a3 syncStore:(id)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)ingestSourceSyncObjects:(id)a3 syncStore:(id)a4 profile:(id)a5 error:(id *)a6;
@end

@implementation HDSyncSampleOriginUtilities

+ (BOOL)generateStateSyncCodableDevices:(id *)a3 predicate:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x277CBEB18];
  v14 = a4;
  v15 = objc_alloc_init(v13);
  v16 = +[HDDeviceEntity _propertiesForDevice];
  v17 = [v12 database];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __99__HDSyncSampleOriginUtilities_generateStateSyncCodableDevices_predicate_profile_transaction_error___block_invoke;
  v24[3] = &unk_2786172E8;
  v25 = v11;
  v26 = v12;
  v18 = v15;
  v27 = v18;
  v19 = v12;
  v20 = v11;
  v21 = [(HDHealthEntity *)HDDeviceEntity enumerateEntitiesForSyncWithProperties:v16 predicate:v14 healthDatabase:v17 error:a7 block:v24];

  if (a3 && v21)
  {
    v22 = v18;
    *a3 = v18;
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

+ (int64_t)ingestSourceSyncObjects:(id)a3 syncStore:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__HDSyncSampleOriginUtilities_ingestSourceSyncObjects_syncStore_profile_error___block_invoke;
  v18[3] = &__block_descriptor_40_e25__16__0__HDCodableSource_8l;
  v18[4] = a1;
  v12 = a5;
  v13 = [v10 hk_map:v18];
  v14 = [v12 sourceManager];

  if (v11)
  {
    v15 = [v11 syncProvenance];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v14 createSourcesWithCodables:v13 provenance:v15 error:a6];

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

+ (int64_t)ingestContributorSyncObjects:(id)a3 syncStore:(id)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  if (a4)
  {
    a4 = [a4 syncProvenance];
  }

  v11 = [[HDInsertCodableContributorsOperation alloc] initWithContributors:v9 provenance:a4];
  v12 = [(HDJournalableOperation *)v11 performOrJournalWithProfile:v10 error:a6]^ 1;

  return v12;
}

+ (BOOL)generateStateSyncCodableContributors:(id *)a3 predicate:(id)a4 profile:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x277CBEB18];
  v14 = a4;
  v15 = objc_alloc_init(v13);
  v16 = +[HDContributorSyncEntity _orderedProperties];
  v17 = [v12 database];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __104__HDSyncSampleOriginUtilities_generateStateSyncCodableContributors_predicate_profile_transaction_error___block_invoke;
  v24[3] = &unk_2786172E8;
  v25 = v11;
  v26 = v12;
  v18 = v15;
  v27 = v18;
  v19 = v12;
  v20 = v11;
  v21 = [(HDHealthEntity *)HDContributorEntity enumerateEntitiesForSyncWithProperties:v16 predicate:v14 healthDatabase:v17 error:a7 block:v24];

  if (a3 && v21)
  {
    v22 = v18;
    *a3 = v18;
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