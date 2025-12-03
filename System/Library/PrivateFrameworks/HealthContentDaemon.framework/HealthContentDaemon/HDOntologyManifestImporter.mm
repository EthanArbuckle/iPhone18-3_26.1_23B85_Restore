@interface HDOntologyManifestImporter
+ (BOOL)_importManifestWithEntry:(void *)entry updateCoordinator:(void *)coordinator fileHandle:(void *)handle transaction:(uint64_t)transaction error:;
+ (BOOL)_insertOrUpdateRegistryEntryForManifestItem:(void *)item updateCoordinator:(void *)coordinator transaction:(void *)transaction nowDate:(uint64_t)date error:;
+ (BOOL)_insertOrUpdateRegistryEntryForManifestLine:(void *)line updateCoordinator:(void *)coordinator transaction:(void *)transaction nowDate:(uint64_t)date error:;
+ (BOOL)_insertRegistryEntryForManifestItem:(uint64_t)item updateCoordinator:(void *)coordinator transaction:(void *)transaction nowDate:(uint64_t)date error:;
+ (BOOL)_updateRegistryEntry:(void *)entry manifestItem:(uint64_t)item updateCoordinator:(void *)coordinator transaction:(void *)transaction nowDate:(uint64_t)date error:;
+ (BOOL)canImportEntry:(id)entry;
+ (BOOL)importManifestWithEntry:(id)entry updateCoordinator:(id)coordinator error:(id *)error;
+ (BOOL)importOntologyShardEntry:(id)entry shardRegistry:(id)registry error:(id *)error;
+ (uint64_t)_importManifestWithFileHandle:(void *)handle updateCoordinator:(void *)coordinator transaction:(uint64_t)transaction error:;
+ (void)_deleteStagedManifestFileForEntry:(void *)entry updateCoordinator:;
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

+ (BOOL)canImportEntry:(id)entry
{
  entryCopy = entry;
  schemaType = [entryCopy schemaType];
  v5 = *MEMORY[0x277CCC620];
  if (schemaType == *MEMORY[0x277CCC620])
  {
    LOBYTE(v5) = [entryCopy schemaVersion] == 1;
  }

  else if (v5)
  {
    schemaType2 = [entryCopy schemaType];
    if ([schemaType2 isEqualToString:v5])
    {
      LOBYTE(v5) = [entryCopy schemaVersion] == 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

+ (BOOL)importManifestWithEntry:(id)entry updateCoordinator:(id)coordinator error:(id *)error
{
  entryCopy = entry;
  coordinatorCopy = coordinator;
  shardRegistry = [coordinatorCopy shardRegistry];
  v11 = [shardRegistry openShardFileForEntry:entryCopy error:error];

  if (v11)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __78__HDOntologyManifestImporter_importManifestWithEntry_updateCoordinator_error___block_invoke;
    v20 = &unk_2796B8CA8;
    selfCopy = self;
    v12 = entryCopy;
    v21 = v12;
    v13 = coordinatorCopy;
    v22 = v13;
    v14 = v11;
    v23 = v14;
    v15 = [v13 performOntologyTransactionForWrite:1 databaseTransaction:0 error:error transactionHandler:&v17];
    [v14 closeFile];
    if (v15)
    {
      [(HDOntologyManifestImporter *)self _deleteStagedManifestFileForEntry:v12 updateCoordinator:v13];
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

+ (BOOL)_importManifestWithEntry:(void *)entry updateCoordinator:(void *)coordinator fileHandle:(void *)handle transaction:(uint64_t)transaction error:
{
  v10 = a2;
  handleCopy = handle;
  coordinatorCopy = coordinator;
  entryCopy = entry;
  v14 = objc_opt_self();
  v15 = [(HDOntologyManifestImporter *)v14 _importManifestWithFileHandle:coordinatorCopy updateCoordinator:entryCopy transaction:handleCopy error:transaction];

  if (v15)
  {
    copyWithAvailableStateImported = [v10 copyWithAvailableStateImported];
    v17 = [HDOntologyShardRegistry insertEntry:copyWithAvailableStateImported transaction:handleCopy error:transaction];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (void)_deleteStagedManifestFileForEntry:(void *)entry updateCoordinator:
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  entryCopy = entry;
  v6 = objc_opt_self();
  shardRegistry = [entryCopy shardRegistry];

  v12 = 0;
  v8 = [shardRegistry deleteStagedShardFileForEntry:v4 error:&v12];
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

+ (BOOL)importOntologyShardEntry:(id)entry shardRegistry:(id)registry error:(id *)error
{
  entryCopy = entry;
  updateCoordinator = [registry updateCoordinator];
  LOBYTE(error) = [self importManifestWithEntry:entryCopy updateCoordinator:updateCoordinator error:error];

  return error;
}

+ (uint64_t)_importManifestWithFileHandle:(void *)handle updateCoordinator:(void *)coordinator transaction:(uint64_t)transaction error:
{
  handleCopy = handle;
  coordinatorCopy = coordinator;
  v10 = a2;
  v11 = objc_opt_self();
  date = [MEMORY[0x277CBEAA8] date];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__HDOntologyManifestImporter__importManifestWithFileHandle_updateCoordinator_transaction_error___block_invoke;
  v18[3] = &unk_2796B8DA0;
  v19 = handleCopy;
  v20 = coordinatorCopy;
  v21 = date;
  v22 = v11;
  v13 = date;
  v14 = coordinatorCopy;
  v15 = handleCopy;
  v16 = [v10 hk_enumerateLinesWithError:transaction handler:v18];

  return v16;
}

+ (BOOL)_insertOrUpdateRegistryEntryForManifestLine:(void *)line updateCoordinator:(void *)coordinator transaction:(void *)transaction nowDate:(uint64_t)date error:
{
  lineCopy = line;
  coordinatorCopy = coordinator;
  transactionCopy = transaction;
  v13 = a2;
  v14 = objc_opt_self();
  v15 = [_HDOntologyManifestItem manifestItemFromLine:v13 error:date];

  if (v15)
  {
    v16 = [(HDOntologyManifestImporter *)v14 _insertOrUpdateRegistryEntryForManifestItem:v15 updateCoordinator:lineCopy transaction:coordinatorCopy nowDate:transactionCopy error:date];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (BOOL)_insertOrUpdateRegistryEntryForManifestItem:(void *)item updateCoordinator:(void *)coordinator transaction:(void *)transaction nowDate:(uint64_t)date error:
{
  v10 = a2;
  itemCopy = item;
  coordinatorCopy = coordinator;
  transactionCopy = transaction;
  v24 = objc_opt_self();
  shardRegistry = [itemCopy shardRegistry];
  identifier = [v10 identifier];
  schemaType = [v10 schemaType];
  v25 = 0;
  v17 = [shardRegistry entryWithIdentifier:identifier schemaType:schemaType schemaVersion:objc_msgSend(v10 entryOut:"schemaVersion") transaction:&v25 error:{coordinatorCopy, date}];
  v18 = v25;

  if (v17)
  {
    if (v18)
    {
      v21 = [(HDOntologyManifestImporter *)v24 _updateRegistryEntry:v18 manifestItem:v10 updateCoordinator:v20 transaction:coordinatorCopy nowDate:transactionCopy error:date];
    }

    else
    {
      v21 = [(HDOntologyManifestImporter *)v24 _insertRegistryEntryForManifestItem:v10 updateCoordinator:v19 transaction:coordinatorCopy nowDate:transactionCopy error:date];
    }

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (BOOL)_updateRegistryEntry:(void *)entry manifestItem:(uint64_t)item updateCoordinator:(void *)coordinator transaction:(void *)transaction nowDate:(uint64_t)date error:
{
  coordinatorCopy = coordinator;
  transactionCopy = transaction;
  entryCopy = entry;
  v13 = a2;
  objc_opt_self();
  version = [entryCopy version];
  region = [entryCopy region];
  locale = [entryCopy locale];
  v17 = [entryCopy URL];
  checksum = [entryCopy checksum];
  v19 = [entryCopy size];

  v20 = [v13 updatedCopyWithAvailableVersion:version availableRegion:region availableLocale:locale availableURL:v17 availableChecksum:checksum availableSize:v19 date:transactionCopy];

  v21 = v20 == v13 || [HDOntologyShardRegistry insertEntry:v20 transaction:coordinatorCopy error:date];
  return v21;
}

+ (BOOL)_insertRegistryEntryForManifestItem:(uint64_t)item updateCoordinator:(void *)coordinator transaction:(void *)transaction nowDate:(uint64_t)date error:
{
  transactionCopy = transaction;
  coordinatorCopy = coordinator;
  v8 = a2;
  objc_opt_self();
  v21 = objc_alloc(MEMORY[0x277CCD760]);
  identifier = [v8 identifier];
  schemaType = [v8 schemaType];
  schemaVersion = [v8 schemaVersion];
  version = [v8 version];
  region = [v8 region];
  locale = [v8 locale];
  v15 = [v8 URL];
  checksum = [v8 checksum];
  v17 = [v8 size];

  v18 = [v21 initWithIdentifier:identifier schemaType:schemaType schemaVersion:schemaVersion availableVersion:version availableRegion:region availableLocale:locale availableURL:v15 availableChecksum:checksum availableSize:v17 date:transactionCopy];
  v19 = [HDOntologyShardRegistry insertEntry:v18 transaction:coordinatorCopy error:date];

  return v19;
}

@end