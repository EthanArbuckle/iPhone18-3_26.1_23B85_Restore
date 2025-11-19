@interface HDOntologyShardRegistry
+ (BOOL)_rawEnumerateEntriesWithPredicate:(void *)a3 orderingTerms:(void *)a4 transaction:(uint64_t)a5 error:(void *)a6 enumerationHandler:;
+ (BOOL)insertEntry:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)_stagingDirectoryURLForUpdateCoordinator:(uint64_t)a1;
+ (id)importedMercuryZipTSVEntriesWithTransaction:(id)a3 error:(id *)a4;
+ (id)nextAvailableMercuryZipTSVSlotWithTransaction:(id)a3 error:(id *)a4;
+ (uint64_t)_deleteStagedFileWithURL:(void *)a3 fileManager:(void *)a4 error:;
+ (uint64_t)_deleteStagedFilesForEntry:(void *)a3 stagingDirectory:(void *)a4 fileManager:(void *)a5 error:;
+ (uint64_t)_enumerateStagedShardFileURLsWithFileManager:(void *)a3 stagingDirectory:(void *)a4 error:(void *)a5 handler:;
+ (uint64_t)_isCacheableEntry:(uint64_t)a1;
+ (uint64_t)_setAttributesForFileWithPath:(void *)a3 fileManager:(void *)a4 error:;
+ (uint64_t)insertEntries:(void *)a3 transaction:(uint64_t)a4 error:;
- (BOOL)deleteStagedFilesNotMatchingEntries:(id)a3 error:(id *)a4;
- (BOOL)deleteStagedShardFileForEntry:(id)a3 error:(id *)a4;
- (BOOL)entryWithIdentifier:(id)a3 schemaType:(id)a4 schemaVersion:(int64_t)a5 entryOut:(id *)a6 transaction:(id)a7 error:(id *)a8;
- (BOOL)enumerateEntriesWithPredicate:(id)a3 orderingTerms:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
- (BOOL)insertEntries:(id)a3 error:(id *)a4;
- (BOOL)insertEntry:(id)a3 error:(id *)a4;
- (BOOL)moveStagedShardFileForEntry:(id)a3 toURL:(id)a4 error:(id *)a5;
- (BOOL)stagedShardFileEntryForEntry:(id)a3 entryOut:(id *)a4 error:(id *)a5;
- (BOOL)unitTesting_stageFileWithLocalURL:(id)a3 error:(id *)a4;
- (BOOL)unzipStagedShardFileForEntry:(id)a3 toURL:(id)a4 error:(id *)a5;
- (HDDaemon)daemon;
- (HDOntologyShardRegistry)init;
- (HDOntologyShardRegistry)initWithOntologyUpdateCoordinator:(id)a3;
- (HDOntologyUpdateCoordinator)updateCoordinator;
- (id)_assertionQueue_getCacheableFileHandleForEntry:(uint64_t)a3 error:;
- (id)_getCacheableFileHandleForEntry:(void *)a3 error:;
- (id)_openFileHandleForEntry:(uint64_t)a3 error:;
- (id)_stagedShardFileURLForEntry:(id *)a1;
- (id)entriesWithPredicate:(id)a3 orderingTerms:(id)a4 error:(id *)a5;
- (id)openShardFileForEntry:(id)a3 error:(id *)a4;
- (id)stagedShardFileEntriesWithError:(id *)a3;
- (id)takeFileHandleAssertionForOwnerIdentifier:(id)a3 error:(id *)a4;
- (id)unitTesting_cachedFileHandles;
- (id)unitTesting_stagedShardFileFullPathForEntry:(id)a3;
- (id)unitTesting_stagedShardFileNamesWithError:(id *)a3;
- (int64_t)purgeSpaceForStagedShards;
- (int64_t)purgeableSpaceForStagedShards;
- (uint64_t)_assertionQueue_openFileHandlesWithError:(uint64_t)result;
- (uint64_t)_enumerateEntriesWithPredicate:(void *)a3 orderingTerms:(void *)a4 transaction:(uint64_t)a5 error:(void *)a6 enumerationHandler:;
- (uint64_t)_enumerateStagedShardFileEntriesWithWithError:(void *)a3 handler:;
- (uint64_t)_stageShardFileWithLocalURL:(void *)a3 entry:(char)a4 shouldCopy:(void *)a5 error:;
- (void)_assertionQueue_closeFileHandles;
- (void)_attemptToCacheFileHandleIfNecessaryForFileURL:(void *)a3 entry:;
- (void)_removeCachedFileHandleForEntry:(uint64_t)a1;
- (void)assertionManager:(id)a3 assertionInvalidated:(id)a4;
- (void)dealloc;
@end

@implementation HDOntologyShardRegistry

- (HDOntologyShardRegistry)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyShardRegistry)initWithOntologyUpdateCoordinator:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HDOntologyShardRegistry;
  v5 = [(HDOntologyShardRegistry *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_updateCoordinator, v4);
    v7 = [HDOntologyShardRegistry _stagingDirectoryURLForUpdateCoordinator:v4];
    stagingDirectoryURL = v6->_stagingDirectoryURL;
    v6->_stagingDirectoryURL = v7;

    v9 = HKCreateSerialDispatchQueue();
    cachedFileHandlesAssertionQueue = v6->_cachedFileHandlesAssertionQueue;
    v6->_cachedFileHandlesAssertionQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x277D10AC0]);
    cachedFileHandlesAssertionManager = v6->_cachedFileHandlesAssertionManager;
    v6->_cachedFileHandlesAssertionManager = v11;

    [(HDAssertionManager *)v6->_cachedFileHandlesAssertionManager addObserver:v6 forAssertionIdentifier:@"OntologyShardRegistryAssertionIdentifierCachedFileHandles" queue:v6->_cachedFileHandlesAssertionQueue];
  }

  return v6;
}

+ (id)_stagingDirectoryURLForUpdateCoordinator:(uint64_t)a1
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = MEMORY[0x277CBEBC0];
  v4 = [v2 daemon];

  v5 = [v4 healthDirectoryPath];
  v10[0] = v5;
  v10[1] = @"ontology";
  v10[2] = @"staging";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  v7 = [v3 fileURLWithPathComponents:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)dealloc
{
  [(HDAssertionManager *)self->_cachedFileHandlesAssertionManager invalidate];
  v3.receiver = self;
  v3.super_class = HDOntologyShardRegistry;
  [(HDOntologyShardRegistry *)&v3 dealloc];
}

- (HDDaemon)daemon
{
  v2 = [(HDOntologyShardRegistry *)self updateCoordinator];
  v3 = [v2 daemon];

  return v3;
}

- (BOOL)insertEntry:(id)a3 error:(id *)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v11 count:1];

  LOBYTE(a4) = [(HDOntologyShardRegistry *)self insertEntries:v8 error:a4, v11, v12];
  v9 = *MEMORY[0x277D85DE8];
  return a4;
}

- (BOOL)insertEntries:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[_HDOntologyShardRegistryInsertOperation alloc] initWithEntries:v6];

  WeakRetained = objc_loadWeakRetained(&self->_updateCoordinator);
  v9 = [WeakRetained profile];
  LOBYTE(a4) = [v7 performOrJournalWithProfile:v9 error:a4];

  return a4;
}

+ (uint64_t)insertEntries:(void *)a3 transaction:(uint64_t)a4 error:
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (![v8 insertEntry:*(*(&v17 + 1) + 8 * v13) transaction:v7 error:{a4, v17}])
        {
          v14 = 0;
          goto LABEL_11;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)insertEntry:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [a4 graphDatabase];
  v9 = [v8 underlyingDatabase];
  LOBYTE(a5) = [HDOntologyShardRegistryEntity insertEntry:v7 database:v9 error:a5];

  return a5;
}

- (BOOL)entryWithIdentifier:(id)a3 schemaType:(id)a4 schemaVersion:(int64_t)a5 entryOut:(id *)a6 transaction:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = HDOntologyShardRegistryPredicateForEntry(v14, v15, a5);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__7;
  v27 = __Block_byref_object_dispose__7;
  v28 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __99__HDOntologyShardRegistry_entryWithIdentifier_schemaType_schemaVersion_entryOut_transaction_error___block_invoke;
  v22[3] = &unk_2796B99F0;
  v22[4] = &v23;
  v18 = [(HDOntologyShardRegistry *)self _enumerateEntriesWithPredicate:v17 orderingTerms:0 transaction:v16 error:a8 enumerationHandler:v22];
  v19 = v18;
  if (a6)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    *a6 = v24[5];
  }

  _Block_object_dispose(&v23, 8);

  return v19;
}

- (id)entriesWithPredicate:(id)a3 orderingTerms:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CBEB18];
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v8);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__HDOntologyShardRegistry_entriesWithPredicate_orderingTerms_error___block_invoke;
  v16[3] = &unk_2796B9A18;
  v17 = v11;
  v12 = v11;
  LODWORD(a5) = [(HDOntologyShardRegistry *)self enumerateEntriesWithPredicate:v10 orderingTerms:v9 error:a5 enumerationHandler:v16];

  if (a5)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (BOOL)enumerateEntriesWithPredicate:(id)a3 orderingTerms:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_updateCoordinator);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__HDOntologyShardRegistry_enumerateEntriesWithPredicate_orderingTerms_error_enumerationHandler___block_invoke;
  v18[3] = &unk_2796B9A40;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  LOBYTE(a5) = [WeakRetained performOntologyTransactionForWrite:0 databaseTransaction:0 error:a5 transactionHandler:v18];

  return a5;
}

+ (id)nextAvailableMercuryZipTSVSlotWithTransaction:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277D10B18];
  v6 = *MEMORY[0x277CCC630];
  v7 = a3;
  v8 = [v5 predicateWithProperty:@"schema_type" equalToValue:v6];
  v9 = [v7 graphDatabase];

  v10 = [v9 underlyingDatabase];
  v11 = [HDOntologyShardRegistryEntity nextAvailableSlotInAllowedRange:0 predicate:64 database:v8 error:v10, a4];

  return v11;
}

+ (id)importedMercuryZipTSVEntriesWithTransaction:(id)a3 error:(id *)a4
{
  v20[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D10B18];
  v7 = a3;
  v8 = [v6 predicateWithProperty:@"current_version" greaterThanValue:&unk_286374778];
  v20[0] = v8;
  v9 = [MEMORY[0x277D10B18] predicateWithProperty:@"schema_type" equalToValue:*MEMORY[0x277CCC630]];
  v20[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];

  v11 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v10];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__HDOntologyShardRegistry_importedMercuryZipTSVEntriesWithTransaction_error___block_invoke;
  v18[3] = &unk_2796B9A18;
  v19 = v12;
  v13 = v12;
  LODWORD(a4) = [(HDOntologyShardRegistry *)a1 _rawEnumerateEntriesWithPredicate:v11 orderingTerms:0 transaction:v7 error:a4 enumerationHandler:v18];

  if (a4)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)_rawEnumerateEntriesWithPredicate:(void *)a3 orderingTerms:(void *)a4 transaction:(uint64_t)a5 error:(void *)a6 enumerationHandler:
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  objc_opt_self();
  v14 = [v11 graphDatabase];

  v15 = [v14 underlyingDatabase];
  v16 = [HDOntologyShardRegistryEntity enumerateEntriesWithPredicate:v13 orderingTerms:v12 database:v15 error:a5 enumerationHandler:v10];

  return v16;
}

- (id)takeFileHandleAssertionForOwnerIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277D10AB8]) initWithAssertionIdentifier:@"OntologyShardRegistryAssertionIdentifierCachedFileHandles" ownerIdentifier:v6];
  if (([(HDAssertionManager *)self->_cachedFileHandlesAssertionManager takeAssertion:v7]& 1) != 0)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__7;
    v19 = __Block_byref_object_dispose__7;
    v20 = 0;
    cachedFileHandlesAssertionQueue = self->_cachedFileHandlesAssertionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__HDOntologyShardRegistry_takeFileHandleAssertionForOwnerIdentifier_error___block_invoke;
    block[3] = &unk_2796B9A68;
    block[4] = self;
    block[5] = &v21;
    block[6] = &v15;
    dispatch_sync(cachedFileHandlesAssertionQueue, block);
    if (v22[3])
    {
      v9 = v7;
    }

    else
    {
      [v7 invalidate];
      v10 = v16[5];
      v11 = v10;
      if (v10)
      {
        if (a4)
        {
          v12 = v10;
          *a4 = v11;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v9 = 0;
    }

    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    [v7 invalidate];
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:100 format:{@"Unable to take assertion /'%@/' for owner %@", @"OntologyShardRegistryAssertionIdentifierCachedFileHandles", v6}];
    v9 = 0;
  }

  return v9;
}

void __75__HDOntologyShardRegistry_takeFileHandleAssertionForOwnerIdentifier_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [(HDOntologyShardRegistry *)v2 _assertionQueue_openFileHandlesWithError:?];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

- (id)stagedShardFileEntriesWithError:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HDOntologyShardRegistry_stagedShardFileEntriesWithError___block_invoke;
  v9[3] = &unk_2796B9A90;
  v6 = v5;
  v10 = v6;
  if ([(HDOntologyShardRegistry *)self _enumerateStagedShardFileEntriesWithWithError:a3 handler:v9])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)stagedShardFileEntryForEntry:(id)a3 entryOut:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__HDOntologyShardRegistry_stagedShardFileEntryForEntry_entryOut_error___block_invoke;
  v14[3] = &unk_2796B9AB8;
  v9 = v8;
  v15 = v9;
  v16 = &v17;
  v10 = [(HDOntologyShardRegistry *)self _enumerateStagedShardFileEntriesWithWithError:a5 handler:v14];
  v11 = v10;
  if (a4)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    *a4 = v18[5];
  }

  _Block_object_dispose(&v17, 8);
  return v11;
}

uint64_t __71__HDOntologyShardRegistry_stagedShardFileEntryForEntry_entryOut_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isEqual:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (uint64_t)_setAttributesForFileWithPath:(void *)a3 fileManager:(void *)a4 error:
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v8 = *MEMORY[0x277CCA198];
  v9 = *MEMORY[0x277CCA180];
  v17[0] = *MEMORY[0x277CCA1B0];
  v17[1] = v9;
  v18[0] = v8;
  v18[1] = &unk_286374790;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v11 = [v7 setAttributes:v10 ofItemAtPath:v6 error:a4];

  if ((v11 & 1) == 0)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error setting protection class for %@", v6];
    v13 = [MEMORY[0x277CCA9B8] hk_error:102 description:v12 underlyingError:0];
    if (v13)
    {
      if (a4)
      {
        v14 = v13;
        *a4 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (uint64_t)_deleteStagedFilesForEntry:(void *)a3 stagingDirectory:(void *)a4 fileManager:(void *)a5 error:
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = objc_opt_self();
  v12 = MEMORY[0x277CCACA8];
  v13 = [v10 identifier];
  v14 = [v10 schemaType];
  v15 = [v10 schemaVersion];

  v16 = [v12 stringWithFormat:@"%@:%@:%ld", v13, v14, v15];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __89__HDOntologyShardRegistry__deleteStagedFilesForEntry_stagingDirectory_fileManager_error___block_invoke;
  v21[3] = &unk_2796B9BD0;
  v23 = v8;
  v24 = v11;
  v22 = v16;
  v17 = v8;
  v18 = v16;
  v19 = [(HDOntologyShardRegistry *)v11 _enumerateStagedShardFileURLsWithFileManager:v17 stagingDirectory:v9 error:a5 handler:v21];

  return v19;
}

- (BOOL)deleteStagedShardFileForEntry:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([HDOntologyShardRegistry _isCacheableEntry:v6])
  {
    [(HDOntologyShardRegistry *)self _removeCachedFileHandleForEntry:v6];
  }

  stagingDirectoryURL = self->_stagingDirectoryURL;
  v8 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v9 = [HDOntologyShardRegistry _deleteStagedFilesForEntry:v6 stagingDirectory:stagingDirectoryURL fileManager:v8 error:a4];

  return v9;
}

+ (uint64_t)_isCacheableEntry:(uint64_t)a1
{
  v3 = a2;
  objc_opt_self();
  v4 = [v3 schemaType];
  v5 = *MEMORY[0x277CCC630];
  v6 = v4 != *MEMORY[0x277CCC630];
  if (v4 == *MEMORY[0x277CCC630])
  {
    goto LABEL_5;
  }

  if (!v5)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_8;
  }

  v2 = [v3 schemaType];
  if ([v2 isEqualToString:v5])
  {
LABEL_5:
    v8 = [v3 schemaVersion];
    v5 = [v3 identifier];
    v7 = 1;
    v9 = 1;
    if (v8 == HKCurrentSchemaVersionForShardIdentifier())
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v7 = 0;
  v6 = 1;
LABEL_8:
  v10 = [v3 schemaType];
  v11 = v10;
  v9 = *MEMORY[0x277CCC620];
  if (v10 == *MEMORY[0x277CCC620])
  {
    v9 = [v3 schemaVersion] == 1;
LABEL_13:

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_18:
    if (!v6)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v9)
  {
    v12 = [v3 schemaType];
    if ([v12 isEqualToString:v9])
    {
      v9 = [v3 schemaVersion] == 1;

      goto LABEL_13;
    }

    v9 = 0;
    if ((v7 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (!v7)
    {
      goto LABEL_18;
    }
  }

LABEL_14:

  if (v6)
  {
LABEL_15:
  }

LABEL_16:

  return v9;
}

- (BOOL)deleteStagedFilesNotMatchingEntries:(id)a3 error:(id *)a4
{
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__HDOntologyShardRegistry_deleteStagedFilesNotMatchingEntries_error___block_invoke;
  v16[3] = &unk_2796B9AE0;
  v16[4] = self;
  v6 = [a3 hk_mapToSet:v16];
  v7 = objc_alloc_init(MEMORY[0x277CCAA00]);
  stagingDirectoryURL = self->_stagingDirectoryURL;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HDOntologyShardRegistry_deleteStagedFilesNotMatchingEntries_error___block_invoke_2;
  v12[3] = &unk_2796B9B08;
  v13 = v6;
  v14 = v7;
  v15 = self;
  v9 = v7;
  v10 = v6;
  LOBYTE(a4) = [HDOntologyShardRegistry _enumerateStagedShardFileURLsWithFileManager:v9 stagingDirectory:stagingDirectoryURL error:a4 handler:v12];

  return a4;
}

uint64_t __69__HDOntologyShardRegistry_deleteStagedFilesNotMatchingEntries_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 lastPathComponent];
  if ([*(a1 + 32) containsObject:v6])
  {
LABEL_2:
    v7 = 1;
    goto LABEL_9;
  }

  if (![HDOntologyShardRegistry _deleteStagedFileWithURL:v5 fileManager:*(a1 + 40) error:a3])
  {
    v7 = 0;
    goto LABEL_9;
  }

  _HKInitializeLogging();
  v8 = HKLogHealthOntology();
  v7 = 1;
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

  if (v9)
  {
    v10 = HKLogHealthOntology();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_2514A1000, v10, OS_LOG_TYPE_INFO, "%{public}@: deleted from staging directory %{public}@", &v14, 0x16u);
    }

    goto LABEL_2;
  }

LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (uint64_t)_deleteStagedFileWithURL:(void *)a3 fileManager:(void *)a4 error:
{
  v6 = a3;
  v7 = a2;
  objc_opt_self();
  v15 = 0;
  v8 = [v6 removeItemAtURL:v7 error:&v15];

  v9 = v15;
  v10 = v9;
  if (v8 & 1) != 0 || ([v9 hk_isCocoaNoSuchFileError])
  {
    v11 = 1;
  }

  else
  {
    v12 = v10;
    if (v12)
    {
      if (a4)
      {
        v13 = v12;
        *a4 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v11 = 0;
  }

  return v11;
}

+ (uint64_t)_enumerateStagedShardFileURLsWithFileManager:(void *)a3 stagingDirectory:(void *)a4 error:(void *)a5 handler:
{
  v8 = a5;
  v9 = a3;
  v10 = a2;
  objc_opt_self();
  v18 = 0;
  v11 = [v10 hk_enumerateDirectoryAtURL:v9 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:&v18 handler:v8];

  v12 = v18;
  v13 = v12;
  if (v11 & 1) != 0 || ([v12 hk_isCocoaNoSuchFileError])
  {
    v14 = 1;
  }

  else
  {
    v15 = v13;
    if (v15)
    {
      if (a4)
      {
        v16 = v15;
        *a4 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v14 = 0;
  }

  return v14;
}

- (int64_t)purgeableSpaceForStagedShards
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  stagingDirectoryURL = self->_stagingDirectoryURL;
  v13[5] = &v15;
  v14 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__HDOntologyShardRegistry_purgeableSpaceForStagedShards__block_invoke;
  v13[3] = &unk_2796B9B30;
  v13[4] = self;
  v5 = [HDOntologyShardRegistry _enumerateStagedShardFileURLsWithFileManager:v3 stagingDirectory:stagingDirectoryURL error:&v14 handler:v13];
  v6 = v14;
  if ((v5 & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = HKLogHealthOntology();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

    if (v8)
    {
      v9 = HKLogHealthOntology();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v20 = self;
        v21 = 2114;
        v22 = v6;
        _os_log_impl(&dword_2514A1000, v9, OS_LOG_TYPE_INFO, "%{public}@: error during enumeration to determine purgeable space: %{public}@", buf, 0x16u);
      }
    }
  }

  v10 = v16[3];

  _Block_object_dispose(&v15, 8);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __56__HDOntologyShardRegistry_purgeableSpaceForStagedShards__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0;
  v4 = [v3 hk_fileSizeWithError:&v12];
  v5 = v12;
  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) += [v4 longLongValue];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogHealthOntology();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

    if (v7)
    {
      v8 = HKLogHealthOntology();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        *buf = 138543874;
        v14 = v9;
        v15 = 2114;
        v16 = v3;
        v17 = 2114;
        v18 = v5;
        _os_log_impl(&dword_2514A1000, v8, OS_LOG_TYPE_INFO, "%{public}@: unable to determine size of %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (int64_t)purgeSpaceForStagedShards
{
  v27 = *MEMORY[0x277D85DE8];
  cachedFileHandlesAssertionQueue = self->_cachedFileHandlesAssertionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HDOntologyShardRegistry_purgeSpaceForStagedShards__block_invoke;
  block[3] = &unk_2796B9B58;
  block[4] = self;
  dispatch_sync(cachedFileHandlesAssertionQueue, block);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  stagingDirectoryURL = self->_stagingDirectoryURL;
  v17 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__HDOntologyShardRegistry_purgeSpaceForStagedShards__block_invoke_2;
  v14[3] = &unk_2796B9B80;
  v14[4] = self;
  v6 = v4;
  v15 = v6;
  v16 = &v18;
  LOBYTE(stagingDirectoryURL) = [HDOntologyShardRegistry _enumerateStagedShardFileURLsWithFileManager:v6 stagingDirectory:stagingDirectoryURL error:&v17 handler:v14];
  v7 = v17;
  if ((stagingDirectoryURL & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = HKLogHealthOntology();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      v10 = HKLogHealthOntology();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v24 = self;
        v25 = 2114;
        v26 = v7;
        _os_log_impl(&dword_2514A1000, v10, OS_LOG_TYPE_INFO, "%{public}@: error during purge enumeration: %{public}@", buf, 0x16u);
      }
    }
  }

  v11 = v19[3];

  _Block_object_dispose(&v18, 8);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __52__HDOntologyShardRegistry_purgeSpaceForStagedShards__block_invoke_2(void *a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v25 = 0;
  v4 = [v3 hk_fileSizeWithError:&v25];
  v5 = v25;
  if (v4)
  {
    if ([v4 longLongValue] >= 1)
    {
      v6 = a1[5];
      v24 = v5;
      v7 = [v6 removeItemAtURL:v3 error:&v24];
      v8 = v24;

      if (v7 & 1) != 0 || ([v8 hk_isCocoaNoSuchFileError])
      {
        _HKInitializeLogging();
        v9 = HKLogHealthOntology();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

        if (v10)
        {
          v11 = HKLogHealthOntology();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = a1[4];
            v13 = [v3 lastPathComponent];
            *buf = 138543618;
            v27 = v12;
            v28 = 2114;
            v29 = v13;
            _os_log_impl(&dword_2514A1000, v11, OS_LOG_TYPE_INFO, "%{public}@: purged from staging directory %{public}@", buf, 0x16u);
          }
        }

        *(*(a1[6] + 8) + 24) += [v4 longLongValue];
      }

      else
      {
        _HKInitializeLogging();
        v20 = HKLogHealthOntology();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);

        if (v21)
        {
          v22 = HKLogHealthOntology();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = a1[4];
            *buf = 138543874;
            v27 = v23;
            v28 = 2114;
            v29 = v3;
            v30 = 2114;
            v31 = v8;
            _os_log_impl(&dword_2514A1000, v22, OS_LOG_TYPE_INFO, "%{public}@: unable to purge %{public}@: %{public}@", buf, 0x20u);
          }
        }
      }

      v5 = v8;
    }
  }

  else
  {
    _HKInitializeLogging();
    v14 = HKLogHealthOntology();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);

    if (v15)
    {
      v16 = HKLogHealthOntology();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = a1[4];
        *buf = 138543874;
        v27 = v17;
        v28 = 2114;
        v29 = v3;
        v30 = 2114;
        v31 = v5;
        _os_log_impl(&dword_2514A1000, v16, OS_LOG_TYPE_INFO, "%{public}@: unable to determine purgeable size of %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)openShardFileForEntry:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([HDOntologyShardRegistry _isCacheableEntry:v6])
  {
    [(HDOntologyShardRegistry *)self _getCacheableFileHandleForEntry:v6 error:a4];
  }

  else
  {
    [(HDOntologyShardRegistry *)&self->super.isa _openFileHandleForEntry:v6 error:a4];
  }
  v7 = ;

  return v7;
}

- (id)_getCacheableFileHandleForEntry:(void *)a3 error:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__7;
    v27 = __Block_byref_object_dispose__7;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__7;
    v21 = __Block_byref_object_dispose__7;
    v22 = 0;
    v7 = *(a1 + 16);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__HDOntologyShardRegistry__getCacheableFileHandleForEntry_error___block_invoke;
    v13[3] = &unk_2796B9C20;
    v15 = &v23;
    v13[4] = a1;
    v14 = v5;
    v16 = &v17;
    dispatch_sync(v7, v13);
    v8 = v18[5];
    v9 = v8;
    if (v8)
    {
      if (a3)
      {
        v10 = v8;
        *a3 = v9;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v11 = v24[5];
    _Block_object_dispose(&v17, 8);

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)assertionManager:(id)a3 assertionInvalidated:(id)a4
{
  cachedFileHandlesAssertionQueue = self->_cachedFileHandlesAssertionQueue;
  v6 = a3;
  dispatch_assert_queue_V2(cachedFileHandlesAssertionQueue);
  LOBYTE(cachedFileHandlesAssertionQueue) = [v6 hasActiveAssertionForIdentifier:@"OntologyShardRegistryAssertionIdentifierCachedFileHandles"];

  if ((cachedFileHandlesAssertionQueue & 1) == 0)
  {

    [(HDOntologyShardRegistry *)self _assertionQueue_closeFileHandles];
  }
}

uint64_t __81__HDOntologyShardRegistry__enumerateStagedShardFileEntriesWithWithError_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  v4 = [v3 componentsSeparatedByString:@":"];

  if ([v4 count] == 4)
  {
    v5 = objc_alloc(MEMORY[0x277CCD760]);
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [v4 objectAtIndexedSubscript:1];
    v8 = [v4 objectAtIndexedSubscript:2];
    v9 = [v8 integerValue];
    v10 = [v4 objectAtIndexedSubscript:3];
    v11 = [v5 initWithIdentifier:v6 schemaType:v7 schemaVersion:v9 availableVersion:objc_msgSend(v10 date:{"integerValue"), *(a1 + 32)}];

    v12 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

BOOL __89__HDOntologyShardRegistry__deleteStagedFilesForEntry_stagingDirectory_fileManager_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 lastPathComponent];
  v7 = [v6 hasPrefix:*(a1 + 32)];

  v8 = !v7 || [(HDOntologyShardRegistry *)*(a1 + 48) _deleteStagedFileWithURL:v5 fileManager:*(a1 + 40) error:a3];
  return v8;
}

void __59__HDOntologyShardRegistry__removeCachedFileHandleForEntry___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  [v2 closeFile];
  [*(*(a1 + 32) + 32) setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void __65__HDOntologyShardRegistry__getCacheableFileHandleForEntry_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [(HDOntologyShardRegistry *)v2 _assertionQueue_getCacheableFileHandleForEntry:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __80__HDOntologyShardRegistry__attemptToCacheFileHandleIfNecessaryForFileURL_entry___block_invoke(void *a1)
{
  if (*(a1[4] + 32))
  {
    v2 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:a1[6] error:0];
    [*(a1[4] + 32) setObject:v2 forKeyedSubscript:a1[5]];
  }
}

uint64_t __68__HDOntologyShardRegistry__assertionQueue_openFileHandlesWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([HDOntologyShardRegistry _isCacheableEntry:v5])
  {
    __68__HDOntologyShardRegistry__assertionQueue_openFileHandlesWithError___block_invoke_cold_1(a1, v5, a3, &v8);
    v6 = v8;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)unitTesting_stagedShardFileNamesWithError:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
  stagingDirectoryURL = self->_stagingDirectoryURL;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HDOntologyShardRegistry_unitTesting_stagedShardFileNamesWithError___block_invoke;
  v12[3] = &unk_2796B9C48;
  v13 = v5;
  v8 = v5;
  if ([HDOntologyShardRegistry _enumerateStagedShardFileURLsWithFileManager:v6 stagingDirectory:stagingDirectoryURL error:a3 handler:v12])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

uint64_t __69__HDOntologyShardRegistry_unitTesting_stagedShardFileNamesWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 lastPathComponent];
  [v2 hk_addNonNilObject:v3];

  return 1;
}

- (BOOL)unitTesting_stageFileWithLocalURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CCAA00]);
  if ([v7 createDirectoryAtURL:self->_stagingDirectoryURL withIntermediateDirectories:1 attributes:0 error:a4])
  {
    stagingDirectoryURL = self->_stagingDirectoryURL;
    v9 = [v6 lastPathComponent];
    v10 = [(NSURL *)stagingDirectoryURL URLByAppendingPathComponent:v9];
    v11 = [v7 moveItemAtURL:v6 toURL:v10 error:a4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)unitTesting_cachedFileHandles
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = 0;
  cachedFileHandlesAssertionQueue = self->_cachedFileHandlesAssertionQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__HDOntologyShardRegistry_unitTesting_cachedFileHandles__block_invoke;
  v5[3] = &unk_2796B9C70;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(cachedFileHandlesAssertionQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __56__HDOntologyShardRegistry_unitTesting_cachedFileHandles__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (HDOntologyUpdateCoordinator)updateCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_updateCoordinator);

  return WeakRetained;
}

- (uint64_t)_enumerateEntriesWithPredicate:(void *)a3 orderingTerms:(void *)a4 transaction:(uint64_t)a5 error:(void *)a6 enumerationHandler:
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (a1)
  {
    if (v13)
    {
      v15 = [HDOntologyShardRegistry _rawEnumerateEntriesWithPredicate:v11 orderingTerms:v12 transaction:v13 error:a5 enumerationHandler:v14];
    }

    else
    {
      v15 = [a1 enumerateEntriesWithPredicate:v11 orderingTerms:v12 error:a5 enumerationHandler:v14];
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (uint64_t)_assertionQueue_openFileHandlesWithError:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    dispatch_assert_queue_V2(*(result + 16));
    if (!*(v3 + 32))
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v5 = *(v3 + 32);
      *(v3 + 32) = v4;
    }

    OUTLINED_FUNCTION_1();
    v7 = 3221225472;
    v8 = __68__HDOntologyShardRegistry__assertionQueue_openFileHandlesWithError___block_invoke;
    v9 = &unk_2796B9A90;
    v10 = v3;
    return [(HDOntologyShardRegistry *)v3 _enumerateStagedShardFileEntriesWithWithError:a2 handler:v6];
  }

  return result;
}

- (uint64_t)_enumerateStagedShardFileEntriesWithWithError:(void *)a3 handler:
{
  v5 = a3;
  if (a1)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = *(a1 + 8);
    OUTLINED_FUNCTION_0();
    v13[1] = 3221225472;
    v13[2] = __81__HDOntologyShardRegistry__enumerateStagedShardFileEntriesWithWithError_handler___block_invoke;
    v13[3] = &unk_2796B9BA8;
    v14 = v9;
    v15 = v5;
    v10 = v7;
    v11 = [HDOntologyShardRegistry _enumerateStagedShardFileURLsWithFileManager:v6 stagingDirectory:v8 error:a2 handler:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (uint64_t)_stageShardFileWithLocalURL:(void *)a3 entry:(char)a4 shouldCopy:(void *)a5 error:
{
  v9 = a2;
  v10 = a3;
  if (!a1)
  {
    v12 = 0;
    goto LABEL_5;
  }

  v11 = objc_alloc_init(MEMORY[0x277CCAA00]);
  if (![v11 createDirectoryAtURL:a1[1] withIntermediateDirectories:1 attributes:0 error:a5])
  {
    goto LABEL_3;
  }

  [(HDOntologyShardRegistry *)a1 _attemptToCacheFileHandleIfNecessaryForFileURL:v9 entry:v10];
  if (a4)
  {
    if (([HDOntologyShardRegistry _deleteStagedFilesForEntry:v10 stagingDirectory:a1[1] fileManager:v11 error:a5]& 1) != 0)
    {
      [(HDOntologyShardRegistry *)a1 _stagedShardFileURLForEntry:v10];
      objc_claimAutoreleasedReturnValue();
      v14 = [OUTLINED_FUNCTION_2_3() copyItemAtURL:? toURL:? error:?];
LABEL_12:
      v12 = v14;

      goto LABEL_4;
    }
  }

  else
  {
    v15 = [v9 path];
    v16 = [HDOntologyShardRegistry _setAttributesForFileWithPath:v15 fileManager:v11 error:a5];

    if ((v16 & 1) != 0 && ([HDOntologyShardRegistry _deleteStagedFilesForEntry:v10 stagingDirectory:a1[1] fileManager:v11 error:a5]& 1) != 0)
    {
      [(HDOntologyShardRegistry *)a1 _stagedShardFileURLForEntry:v10];
      objc_claimAutoreleasedReturnValue();
      v14 = [OUTLINED_FUNCTION_2_3() moveItemAtURL:? toURL:? error:?];
      goto LABEL_12;
    }
  }

LABEL_3:
  v12 = 0;
LABEL_4:

LABEL_5:
  return v12;
}

- (void)_attemptToCacheFileHandleIfNecessaryForFileURL:(void *)a3 entry:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 16);
    OUTLINED_FUNCTION_1();
    v9 = 3221225472;
    v10 = __80__HDOntologyShardRegistry__attemptToCacheFileHandleIfNecessaryForFileURL_entry___block_invoke;
    v11 = &unk_2796B8C80;
    v12 = a1;
    v13 = v6;
    v14 = v5;
    dispatch_sync(v7, block);
  }
}

- (id)_stagedShardFileURLForEntry:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = a2;
    v5 = [v4 identifier];
    v6 = [v4 schemaType];
    v7 = [v4 schemaVersion];
    v8 = [v4 availableVersion];

    v9 = [v3 stringWithFormat:@"%@:%@:%ld:%ld", v5, v6, v7, v8];

    v2 = [v2[1] URLByAppendingPathComponent:v9];
  }

  return v2;
}

- (void)_removeCachedFileHandleForEntry:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 16);
    OUTLINED_FUNCTION_0();
    v5[1] = 3221225472;
    v5[2] = __59__HDOntologyShardRegistry__removeCachedFileHandleForEntry___block_invoke;
    v5[3] = &unk_2796B9BF8;
    v5[4] = a1;
    v6 = v3;
    dispatch_sync(v4, v5);
  }
}

id __69__HDOntologyShardRegistry_deleteStagedFilesNotMatchingEntries_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [(HDOntologyShardRegistry *)*(a1 + 32) _stagedShardFileURLForEntry:a2];
  v3 = [v2 lastPathComponent];

  return v3;
}

- (void)_assertionQueue_closeFileHandles
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = [*(a1 + 32) allValues];
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v9 + 1) + 8 * v6++) closeFile];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }

    v7 = *(a1 + 32);
    *(a1 + 32) = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_openFileHandleForEntry:(uint64_t)a3 error:
{
  if (a1)
  {
    v4 = [(HDOntologyShardRegistry *)a1 _stagedShardFileURLForEntry:a2];
    v5 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v4 error:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)moveStagedShardFileForEntry:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [(HDOntologyShardRegistry *)&self->super.isa _stagedShardFileURLForEntry:a3];
  v9 = objc_alloc_init(MEMORY[0x277CCAA00]);
  OUTLINED_FUNCTION_3_2();
  v11 = [v10 moveItemAtURL:? toURL:? error:?];

  return v11;
}

- (BOOL)unzipStagedShardFileForEntry:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [(HDOntologyShardRegistry *)&self->super.isa _stagedShardFileURLForEntry:a3];
  v9 = objc_alloc_init(MEMORY[0x277D106F0]);
  OUTLINED_FUNCTION_3_2();
  v11 = [v10 decompressArchiveAt:? to:? error:?];

  return v11;
}

- (id)_assertionQueue_getCacheableFileHandleForEntry:(uint64_t)a3 error:
{
  v5 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(HDOntologyShardRegistry *)a1 _openFileHandleForEntry:v5 error:a3];
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v5];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)unitTesting_stagedShardFileFullPathForEntry:(id)a3
{
  v3 = [(HDOntologyShardRegistry *)&self->super.isa _stagedShardFileURLForEntry:a3];
  v4 = [v3 path];

  return v4;
}

void __68__HDOntologyShardRegistry__assertionQueue_openFileHandlesWithError___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = [(HDOntologyShardRegistry *)*(a1 + 32) _openFileHandleForEntry:a2 error:a3];
  if (v7)
  {
    v8 = v7;
    [*(*(a1 + 32) + 32) setObject:v7 forKeyedSubscript:a2];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
}

@end