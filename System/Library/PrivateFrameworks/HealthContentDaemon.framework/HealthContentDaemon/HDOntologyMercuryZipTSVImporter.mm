@interface HDOntologyMercuryZipTSVImporter
+ (BOOL)_importShardWithEntry:(void *)entry fileHandle:(void *)handle updateCoordinator:(void *)coordinator transaction:(void *)transaction error:;
+ (BOOL)canImportEntry:(id)entry;
+ (BOOL)importOntologyShardEntry:(id)entry shardRegistry:(id)registry error:(id *)error;
+ (id)_assignSlotToEntry:(uint64_t)entry updateCoordinator:(void *)coordinator transaction:(void *)transaction error:;
+ (id)_lineImporterClassForFileName:(uint64_t)name;
+ (id)pruneEntries:(id)entries options:(unint64_t)options shardRegistry:(id)registry error:(id *)error;
+ (int64_t)purgeableSpaceForUrgency:(int)urgency shardRegistry:(id)registry;
+ (uint64_t)_importArchiveEntry:(void *)entry filename:(void *)filename ontologyEntry:(void *)ontologyEntry transaction:(void *)transaction error:;
+ (uint64_t)_importShardWithFileHandle:(void *)handle entry:(void *)entry updateCoordinator:(void *)coordinator transaction:(void *)transaction error:;
+ (uint64_t)_ontologyDatabaseSizeWithShardRegistry:(uint64_t)registry;
- (HDOntologyMercuryZipTSVImporter)init;
@end

@implementation HDOntologyMercuryZipTSVImporter

- (HDOntologyMercuryZipTSVImporter)init
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
  v6 = *MEMORY[0x277CCC630];
  if (schemaType != *MEMORY[0x277CCC630])
  {
    if (!v6)
    {
      v7 = 0;
      goto LABEL_8;
    }

    schemaType2 = [entryCopy schemaType];
    if (![schemaType2 isEqualToString:v6])
    {
      v7 = 0;
LABEL_6:

      goto LABEL_8;
    }
  }

  schemaVersion = [entryCopy schemaVersion];
  identifier = [entryCopy identifier];
  v7 = schemaVersion == HKCurrentSchemaVersionForShardIdentifier();

  if (schemaType != v6)
  {
    goto LABEL_6;
  }

LABEL_8:

  return v7;
}

+ (BOOL)importOntologyShardEntry:(id)entry shardRegistry:(id)registry error:(id *)error
{
  entryCopy = entry;
  registryCopy = registry;
  v10 = [registryCopy openShardFileForEntry:entryCopy error:error];
  if (v10)
  {
    updateCoordinator = [registryCopy updateCoordinator];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __80__HDOntologyMercuryZipTSVImporter_importOntologyShardEntry_shardRegistry_error___block_invoke;
    v19 = &unk_2796B8CA8;
    selfCopy = self;
    v20 = entryCopy;
    v12 = v10;
    v21 = v12;
    v22 = updateCoordinator;
    v13 = updateCoordinator;
    v14 = [v13 performOntologyTransactionForWrite:1 databaseTransaction:0 error:error transactionHandler:&v16];
    [v12 closeFile];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)_importShardWithEntry:(void *)entry fileHandle:(void *)handle updateCoordinator:(void *)coordinator transaction:(void *)transaction error:
{
  entryCopy = entry;
  handleCopy = handle;
  coordinatorCopy = coordinator;
  v13 = a2;
  v14 = objc_opt_self();
  v16 = [(HDOntologyMercuryZipTSVImporter *)v14 _assignSlotToEntry:v13 updateCoordinator:v15 transaction:coordinatorCopy error:transaction];

  if (v16 && [(HDOntologyMercuryZipTSVImporter *)v14 _importShardWithFileHandle:entryCopy entry:v16 updateCoordinator:handleCopy transaction:coordinatorCopy error:transaction])
  {
    copyWithAvailableStateImported = [v16 copyWithAvailableStateImported];

    v18 = [HDOntologyShardRegistry insertEntry:copyWithAvailableStateImported transaction:coordinatorCopy error:transaction];
    v16 = copyWithAvailableStateImported;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __80__HDOntologyMercuryZipTSVImporter_willPruneEntries_options_shardRegistry_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 schemaType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCC630]];

  return v3;
}

+ (id)pruneEntries:(id)entries options:(unint64_t)options shardRegistry:(id)registry error:(id *)error
{
  entriesCopy = entries;
  registryCopy = registry;
  v13 = [HDOntologyMercuryZipTSVPruner alloc];
  updateCoordinator = [registryCopy updateCoordinator];

  v15 = [(HDOntologyMercuryZipTSVPruner *)v13 initWithOntologyUpdateCoordinator:updateCoordinator];
  v16 = [(HDOntologyMercuryZipTSVPruner *)v15 pruneEntries:entriesCopy options:options error:error];
  if (v16)
  {
    if (v16 == 2)
    {
      v17 = MEMORY[0x277CBEBF8];
      goto LABEL_8;
    }

    if (v16 == 1)
    {
      v17 = entriesCopy;
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDOntologyMercuryZipTSVImporter.m" lineNumber:96 description:@"Unreachable code has been executed"];
  }

  v17 = 0;
LABEL_8:

  return v17;
}

+ (int64_t)purgeableSpaceForUrgency:(int)urgency shardRegistry:(id)registry
{
  if (urgency != 4)
  {
    return 0;
  }

  result = [(HDOntologyMercuryZipTSVImporter *)self _ontologyDatabaseSizeWithShardRegistry:registry];
  if (result < 0x100000)
  {
    return 0;
  }

  return result;
}

+ (uint64_t)_ontologyDatabaseSizeWithShardRegistry:(uint64_t)registry
{
  v2 = a2;
  objc_opt_self();
  daemon = [v2 daemon];

  ontologyBackingStore = [daemon ontologyBackingStore];
  sizeOfUnderlyingDatabaseInBytes = [ontologyBackingStore sizeOfUnderlyingDatabaseInBytes];
  integerValue = [sizeOfUnderlyingDatabaseInBytes integerValue];

  return integerValue;
}

+ (id)_assignSlotToEntry:(uint64_t)entry updateCoordinator:(void *)coordinator transaction:(void *)transaction error:
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  coordinatorCopy = coordinator;
  v9 = objc_opt_self();
  slot = [v7 slot];
  if (slot == *MEMORY[0x277CCC618])
  {
    v20 = 0;
    v11 = [HDOntologyShardRegistry nextAvailableMercuryZipTSVSlotWithTransaction:coordinatorCopy error:&v20];
    v12 = v20;
    v13 = v12;
    if (v11)
    {
      v14 = [v7 copyWithSlot:{objc_msgSend(v11, "integerValue")}];
    }

    else
    {
      if ([v12 hk_isObjectNotFoundError])
      {
        _HKInitializeLogging();
        v15 = HKLogHealthOntology();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543874;
          v22 = v9;
          v23 = 2114;
          v24 = v7;
          v25 = 2114;
          v26 = v13;
          _os_log_fault_impl(&dword_2514A1000, v15, OS_LOG_TYPE_FAULT, "%{public}@: Error assigning a slot to %{public}@: %{public}@", buf, 0x20u);
        }
      }

      v16 = v13;
      if (v16)
      {
        if (transaction)
        {
          v17 = v16;
          *transaction = v16;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = v7;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (uint64_t)_importShardWithFileHandle:(void *)handle entry:(void *)entry updateCoordinator:(void *)coordinator transaction:(void *)transaction error:
{
  v43[3] = *MEMORY[0x277D85DE8];
  v10 = a2;
  handleCopy = handle;
  entryCopy = entry;
  coordinatorCopy = coordinator;
  v14 = objc_opt_self();
  v43[0] = @"nodes";
  v43[1] = @"attributes";
  v43[2] = @"relationships";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
  v16 = [objc_alloc(MEMORY[0x277CCDE88]) initWithFileHandle:v10];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__4;
  v37 = __Block_byref_object_dispose__4;
  v38 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __104__HDOntologyMercuryZipTSVImporter__importShardWithFileHandle_entry_updateCoordinator_transaction_error___block_invoke;
  v26[3] = &unk_2796B97A8;
  v17 = v15;
  v32 = v14;
  v27 = v17;
  v30 = &v39;
  v18 = handleCopy;
  v28 = v18;
  v19 = coordinatorCopy;
  v29 = v19;
  v31 = &v33;
  if (([v16 enumerateEntriesWithError:transaction block:v26] & 1) == 0)
  {
LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  if ((v40[3] & 1) == 0)
  {
    v21 = v34[5];
    v22 = v21;
    if (v21)
    {
      if (transaction)
      {
        v23 = v21;
        *transaction = v22;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_9;
  }

  v20 = 1;
LABEL_10:

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

void __104__HDOntologyMercuryZipTSVImporter__importShardWithFileHandle_entry_updateCoordinator_transaction_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 pathname];
  v7 = [v6 lastPathComponent];

  if ([*(a1 + 32) containsObject:v7])
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 72);
    v11 = *(*(a1 + 64) + 8);
    obj = *(v11 + 40);
    v12 = [(HDOntologyMercuryZipTSVImporter *)v10 _importArchiveEntry:v5 filename:v7 ontologyEntry:v8 transaction:v9 error:&obj];
    objc_storeStrong((v11 + 40), obj);
    *(*(*(a1 + 56) + 8) + 24) = v12;
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      *a3 = 1;
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogHealthOntology();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

    if (v14)
    {
      v15 = HKLogHealthOntology();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 72);
        v17 = [v5 pathname];
        *buf = 138543618;
        v21 = v16;
        v22 = 2114;
        v23 = v17;
        _os_log_impl(&dword_2514A1000, v15, OS_LOG_TYPE_INFO, "%{public}@: skipping unrecognized file: '%{public}@'", buf, 0x16u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (uint64_t)_importArchiveEntry:(void *)entry filename:(void *)filename ontologyEntry:(void *)ontologyEntry transaction:(void *)transaction error:
{
  v61 = *MEMORY[0x277D85DE8];
  v9 = a2;
  entryCopy = entry;
  filenameCopy = filename;
  ontologyEntryCopy = ontologyEntry;
  v13 = objc_opt_self();
  v14 = [(HDOntologyMercuryZipTSVImporter *)v13 _lineImporterClassForFileName:entryCopy];
  CFAbsoluteTimeGetCurrent();
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x4010000000;
  v42[3] = "";
  v43 = xmmword_2514D2D90;
  v44 = unk_2514D2DA0;
  v41 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __96__HDOntologyMercuryZipTSVImporter__importArchiveEntry_filename_ontologyEntry_transaction_error___block_invoke;
  v33[3] = &unk_2796B97D0;
  v37 = &v45;
  v39 = v13;
  v15 = entryCopy;
  v34 = v15;
  v40 = v14;
  v16 = filenameCopy;
  v35 = v16;
  v17 = ontologyEntryCopy;
  v36 = v17;
  v38 = v42;
  v31 = v9;
  v18 = [v9 enumerateLinesWithError:&v41 block:v33];
  v19 = v41;
  _HKInitializeLogging();
  v20 = HKLogHealthOntology();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v30 = v16;
    if (v18)
    {
      v21 = @"Success";
    }

    else
    {
      v21 = @"Error";
    }

    v22 = v46[3];
    CFAbsoluteTimeGetCurrent();
    v23 = HKDiagnosticStringFromDuration();
    if (v18)
    {
      v24 = &stru_28636E7C8;
    }

    else
    {
      v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@": %@", v19];
    }

    *buf = 138544642;
    v50 = v13;
    v51 = 2114;
    v52 = v21;
    v53 = 2048;
    v54 = v22;
    v55 = 2114;
    v56 = v15;
    v57 = 2112;
    v58 = v23;
    v59 = 2112;
    v60 = v24;
    _os_log_impl(&dword_2514A1000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ importing %ld lines of %{public}@ in %@%@", buf, 0x3Eu);
    v16 = v30;
    if ((v18 & 1) == 0)
    {
    }
  }

  v25 = v19;
  v26 = v25;
  if (v25)
  {
    if (transaction)
    {
      v27 = v25;
      *transaction = v26;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(&v45, 8);

  v28 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)_lineImporterClassForFileName:(uint64_t)name
{
  v2 = a2;
  v3 = objc_opt_self();
  if ([v2 isEqualToString:@"nodes"] || objc_msgSend(v2, "isEqualToString:", @"attributes") || objc_msgSend(v2, "isEqualToString:", @"relationships"))
  {
    v4 = objc_opt_class();
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__lineImporterClassForFileName_ object:v3 file:@"HDOntologyMercuryZipTSVImporter.m" lineNumber:296 description:@"Unreachable code has been executed"];

    v4 = 0;
  }

  return v4;
}

uint64_t __96__HDOntologyMercuryZipTSVImporter__importArchiveEntry_filename_ontologyEntry_transaction_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  ++*(*(*(a1 + 56) + 8) + 24);
  if ([v5 length])
  {
    if (*(*(*(a1 + 56) + 8) + 24) != 1 || ![*(a1 + 80) isHeaderLine:v5])
    {
      v9 = [[HDOntologyTSVScanner alloc] initWithString:v5];
      v13 = *(a1 + 80);
      v14 = [*(a1 + 40) slot];
      v15 = [*(a1 + 48) graphDatabase];
      v16 = *(*(a1 + 64) + 8);
      v30 = 0;
      LOBYTE(v14) = [v13 importLineWithScanner:v9 slot:v14 graphDatabase:v15 context:v16 + 32 error:&v30];
      v17 = v30;

      if (v14)
      {
        v7 = 1;
      }

      else
      {
        _HKInitializeLogging();
        v23 = HKLogHealthOntology();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v28 = *(a1 + 72);
          v29 = *(a1 + 32);
          *buf = 138544130;
          v32 = v28;
          v33 = 2114;
          v34 = v29;
          v35 = 2114;
          v36 = v5;
          v37 = 2114;
          v38 = v17;
          _os_log_error_impl(&dword_2514A1000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Importing %{public}@ unable to parse line %{public}@ error: %{public}@", buf, 0x2Au);
        }

        v24 = v17;
        if (v24)
        {
          if (a3)
          {
            v25 = v24;
            *a3 = v24;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v7 = 0;
      }

      goto LABEL_21;
    }

    _HKInitializeLogging();
    v6 = HKLogHealthOntology();
    v7 = 1;
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

    if (v8)
    {
      v9 = HKLogHealthOntology();
      v7 = 1;
      if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 72);
        v11 = *(a1 + 32);
        *buf = 138543874;
        v32 = v10;
        v33 = 2114;
        v34 = v11;
        v35 = 2112;
        v36 = v5;
        v12 = "%{public}@: header line in %{public}@: @%@";
LABEL_12:
        v7 = 1;
        _os_log_impl(&dword_2514A1000, &v9->super, OS_LOG_TYPE_INFO, v12, buf, 0x20u);
        goto LABEL_21;
      }

      goto LABEL_21;
    }
  }

  else
  {
    _HKInitializeLogging();
    v18 = HKLogHealthOntology();
    v7 = 1;
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);

    if (v19)
    {
      v9 = HKLogHealthOntology();
      v7 = 1;
      if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_INFO))
      {
        v20 = *(a1 + 72);
        v21 = *(*(*(a1 + 56) + 8) + 24);
        v22 = *(a1 + 32);
        *buf = 138543874;
        v32 = v20;
        v33 = 2048;
        v34 = v21;
        v35 = 2114;
        v36 = v22;
        v12 = "%{public}@: empty line %ld in %{public}@";
        goto LABEL_12;
      }

LABEL_21:
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

@end