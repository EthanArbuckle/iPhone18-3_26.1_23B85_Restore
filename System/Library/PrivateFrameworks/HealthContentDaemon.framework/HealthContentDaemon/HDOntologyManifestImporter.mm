@interface HDOntologyManifestImporter
+ (BOOL)_importManifestWithEntry:(void *)a3 updateCoordinator:(void *)a4 fileHandle:(void *)a5 transaction:(uint64_t)a6 error:;
+ (BOOL)_insertOrUpdateRegistryEntryForManifestItem:(void *)a3 updateCoordinator:(void *)a4 transaction:(void *)a5 nowDate:(uint64_t)a6 error:;
+ (BOOL)_insertOrUpdateRegistryEntryForManifestLine:(void *)a3 updateCoordinator:(void *)a4 transaction:(void *)a5 nowDate:(uint64_t)a6 error:;
+ (BOOL)_insertRegistryEntryForManifestItem:(uint64_t)a3 updateCoordinator:(void *)a4 transaction:(void *)a5 nowDate:(uint64_t)a6 error:;
+ (BOOL)_updateRegistryEntry:(void *)a3 manifestItem:(uint64_t)a4 updateCoordinator:(void *)a5 transaction:(void *)a6 nowDate:(uint64_t)a7 error:;
+ (BOOL)canImportEntry:(id)a3;
+ (BOOL)importManifestWithEntry:(id)a3 updateCoordinator:(id)a4 error:(id *)a5;
+ (BOOL)importOntologyShardEntry:(id)a3 shardRegistry:(id)a4 error:(id *)a5;
+ (uint64_t)_importManifestWithFileHandle:(void *)a3 updateCoordinator:(void *)a4 transaction:(uint64_t)a5 error:;
+ (void)_deleteStagedManifestFileForEntry:(void *)a3 updateCoordinator:;
- (HDOntologyManifestImporter)init;
@end

@implementation HDOntologyManifestImporter

- (HDOntologyManifestImporter)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (BOOL)canImportEntry:(id)a3
{
  v3 = a3;
  v4 = [v3 schemaType];
  v5 = *MEMORY[0x277CCC620];
  if (v4 == *MEMORY[0x277CCC620])
  {
    LOBYTE(v5) = [v3 schemaVersion] == 1;
  }

  else if (v5)
  {
    v6 = [v3 schemaType];
    if ([v6 isEqualToString:v5])
    {
      LOBYTE(v5) = [v3 schemaVersion] == 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

+ (BOOL)importManifestWithEntry:(id)a3 updateCoordinator:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 shardRegistry];
  v11 = [v10 openShardFileForEntry:v8 error:a5];

  if (v11)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __78__HDOntologyManifestImporter_importManifestWithEntry_updateCoordinator_error___block_invoke;
    v20 = &unk_2796B8CA8;
    v24 = a1;
    v12 = v8;
    v21 = v12;
    v13 = v9;
    v22 = v13;
    v14 = v11;
    v23 = v14;
    v15 = [v13 performOntologyTransactionForWrite:1 databaseTransaction:0 error:a5 transactionHandler:&v17];
    [v14 closeFile];
    if (v15)
    {
      [(HDOntologyManifestImporter *)a1 _deleteStagedManifestFileForEntry:v12 updateCoordinator:v13];
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

+ (BOOL)_importManifestWithEntry:(void *)a3 updateCoordinator:(void *)a4 fileHandle:(void *)a5 transaction:(uint64_t)a6 error:
{
  v10 = a2;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_self();
  v15 = [(HDOntologyManifestImporter *)v14 _importManifestWithFileHandle:v12 updateCoordinator:v13 transaction:v11 error:a6];

  if (v15)
  {
    v16 = [v10 copyWithAvailableStateImported];
    v17 = [HDOntologyShardRegistry insertEntry:v16 transaction:v11 error:a6];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (void)_deleteStagedManifestFileForEntry:(void *)a3 updateCoordinator:
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v7 = [v5 shardRegistry];

  v12 = 0;
  v8 = [v7 deleteStagedShardFileForEntry:v4 error:&v12];
  v9 = v12;

  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    v10 = HKLogHealthOntology();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v14 = v6;
      v15 = 2114;
      v16 = v4;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_2514A1000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: After import unable to delete staged file for %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (BOOL)importOntologyShardEntry:(id)a3 shardRegistry:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 updateCoordinator];
  LOBYTE(a5) = [a1 importManifestWithEntry:v8 updateCoordinator:v9 error:a5];

  return a5;
}

+ (uint64_t)_importManifestWithFileHandle:(void *)a3 updateCoordinator:(void *)a4 transaction:(uint64_t)a5 error:
{
  v8 = a3;
  v9 = a4;
  v10 = a2;
  v11 = objc_opt_self();
  v12 = [MEMORY[0x277CBEAA8] date];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__HDOntologyManifestImporter__importManifestWithFileHandle_updateCoordinator_transaction_error___block_invoke;
  v18[3] = &unk_2796B8DA0;
  v19 = v8;
  v20 = v9;
  v21 = v12;
  v22 = v11;
  v13 = v12;
  v14 = v9;
  v15 = v8;
  v16 = [v10 hk_enumerateLinesWithError:a5 handler:v18];

  return v16;
}

+ (BOOL)_insertOrUpdateRegistryEntryForManifestLine:(void *)a3 updateCoordinator:(void *)a4 transaction:(void *)a5 nowDate:(uint64_t)a6 error:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a2;
  v14 = objc_opt_self();
  v15 = [_HDOntologyManifestItem manifestItemFromLine:v13 error:a6];

  if (v15)
  {
    v16 = [(HDOntologyManifestImporter *)v14 _insertOrUpdateRegistryEntryForManifestItem:v15 updateCoordinator:v10 transaction:v11 nowDate:v12 error:a6];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (BOOL)_insertOrUpdateRegistryEntryForManifestItem:(void *)a3 updateCoordinator:(void *)a4 transaction:(void *)a5 nowDate:(uint64_t)a6 error:
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v24 = objc_opt_self();
  v14 = [v11 shardRegistry];
  v15 = [v10 identifier];
  v16 = [v10 schemaType];
  v25 = 0;
  v17 = [v14 entryWithIdentifier:v15 schemaType:v16 schemaVersion:objc_msgSend(v10 entryOut:"schemaVersion") transaction:&v25 error:{v12, a6}];
  v18 = v25;

  if (v17)
  {
    if (v18)
    {
      v21 = [(HDOntologyManifestImporter *)v24 _updateRegistryEntry:v18 manifestItem:v10 updateCoordinator:v20 transaction:v12 nowDate:v13 error:a6];
    }

    else
    {
      v21 = [(HDOntologyManifestImporter *)v24 _insertRegistryEntryForManifestItem:v10 updateCoordinator:v19 transaction:v12 nowDate:v13 error:a6];
    }

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (BOOL)_updateRegistryEntry:(void *)a3 manifestItem:(uint64_t)a4 updateCoordinator:(void *)a5 transaction:(void *)a6 nowDate:(uint64_t)a7 error:
{
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = a2;
  objc_opt_self();
  v14 = [v12 version];
  v15 = [v12 region];
  v16 = [v12 locale];
  v17 = [v12 URL];
  v18 = [v12 checksum];
  v19 = [v12 size];

  v20 = [v13 updatedCopyWithAvailableVersion:v14 availableRegion:v15 availableLocale:v16 availableURL:v17 availableChecksum:v18 availableSize:v19 date:v11];

  v21 = v20 == v13 || [HDOntologyShardRegistry insertEntry:v20 transaction:v10 error:a7];
  return v21;
}

+ (BOOL)_insertRegistryEntryForManifestItem:(uint64_t)a3 updateCoordinator:(void *)a4 transaction:(void *)a5 nowDate:(uint64_t)a6 error:
{
  v22 = a5;
  v23 = a4;
  v8 = a2;
  objc_opt_self();
  v21 = objc_alloc(MEMORY[0x277CCD760]);
  v9 = [v8 identifier];
  v10 = [v8 schemaType];
  v11 = [v8 schemaVersion];
  v12 = [v8 version];
  v13 = [v8 region];
  v14 = [v8 locale];
  v15 = [v8 URL];
  v16 = [v8 checksum];
  v17 = [v8 size];

  v18 = [v21 initWithIdentifier:v9 schemaType:v10 schemaVersion:v11 availableVersion:v12 availableRegion:v13 availableLocale:v14 availableURL:v15 availableChecksum:v16 availableSize:v17 date:v22];
  v19 = [HDOntologyShardRegistry insertEntry:v18 transaction:v23 error:a6];

  return v19;
}

@end