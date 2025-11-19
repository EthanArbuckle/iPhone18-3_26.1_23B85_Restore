@interface HDOntologyShardImporter
+ (id)_builtinImporterClasses;
- (BOOL)_importEntry:(NSObject *)a3 error:;
- (BOOL)importStagedShardFilesWithError:(id *)a3;
- (HDOntologyShardImporter)init;
- (HDOntologyShardImporter)initWithOntologyUpdateCoordinator:(id)a3;
- (HDOntologyUpdateCoordinator)updateCoordinator;
- (id)_entriesToImportWithError:(uint64_t)a1;
- (id)_markImportedEntry:(uint64_t)a3 error:;
- (id)_markImportedEntry:(void *)a3 transaction:(uint64_t)a4 error:;
- (id)_registeredImporterClasses;
- (uint64_t)_importEntries:(uint64_t)a3 error:;
- (uint64_t)_schemaImportForEntry:(NSObject *)a3 error:;
- (uint64_t)_wasSuccessGivenErrors:(uint64_t)a3 error:;
- (void)_lock_loadImporterClasses;
- (void)_markAsNotStagedEntry:(uint64_t)a1;
- (void)_notifyImportObserversAboutEntry:(uint64_t)a1;
@end

@implementation HDOntologyShardImporter

- (HDOntologyShardImporter)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyShardImporter)initWithOntologyUpdateCoordinator:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HDOntologyShardImporter;
  v5 = [(HDOntologyShardImporter *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_updateCoordinator, v4);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc(MEMORY[0x277CCD738]);
    v8 = NSStringFromProtocol(&unk_286375D50);
    v9 = HKLogHealthOntology();
    v10 = [v7 initWithName:v8 loggingCategory:v9];
    ontologyShardImporterObservers = v6->_ontologyShardImporterObservers;
    v6->_ontologyShardImporterObservers = v10;
  }

  return v6;
}

- (BOOL)importStagedShardFilesWithError:(id *)a3
{
  v5 = [(HDOntologyShardImporter *)self _entriesToImportWithError:a3];
  if (v5)
  {
    v6 = [(HDOntologyShardImporter *)self _importEntries:v5 error:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_markImportedEntry:(uint64_t)a3 error:
{
  v5 = a2;
  if (a1)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__2;
    v18 = __Block_byref_object_dispose__2;
    v19 = 0;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__HDOntologyShardImporter__markImportedEntry_error___block_invoke;
    v11[3] = &unk_2796B8D00;
    v13 = &v14;
    v11[4] = a1;
    v12 = v5;
    v7 = [WeakRetained performOntologyTransactionForWrite:1 databaseTransaction:0 error:a3 transactionHandler:v11];

    if (v7)
    {
      v8 = v15[5];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL __52__HDOntologyShardImporter__markImportedEntry_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [(HDOntologyShardImporter *)*(a1 + 32) _markImportedEntry:a2 transaction:a3 error:?];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

+ (id)_builtinImporterClasses
{
  v4[2] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = *MEMORY[0x277CCC620];
  v4[0] = objc_opt_class();
  v3[1] = *MEMORY[0x277CCC630];
  v4[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

- (HDOntologyUpdateCoordinator)updateCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_updateCoordinator);

  return WeakRetained;
}

- (id)_registeredImporterClasses
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v2 = *(a1 + 16);
    if (!v2)
    {
      [(HDOntologyShardImporter *)a1 _lock_loadImporterClasses];
      v2 = *(a1 + 16);
    }

    v3 = v2;
    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_entriesToImportWithError:(uint64_t)a1
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = MEMORY[0x277D10B20];
    v5 = [MEMORY[0x277D10B18] predicateWithProperty:@"desired_state" equalToValue:&unk_2863745E0];
    v18[0] = v5;
    v6 = [MEMORY[0x277D10B18] predicateWithProperty:@"available_state" equalToValue:&unk_2863745F8];
    v18[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v8 = [v4 predicateMatchingAllPredicates:v7];

    v9 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"current_version" entityClass:objc_opt_class() ascending:1];
    v17[0] = v9;
    v10 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"desired_state_date" entityClass:objc_opt_class() ascending:0];
    v17[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v13 = [WeakRetained shardRegistry];
    v14 = [v13 entriesWithPredicate:v8 orderingTerms:v11 error:a2];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (uint64_t)_importEntries:(uint64_t)a3 error:
{
  v21 = a3;
  v29 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v22 = v4;
  if (a1)
  {
    v5 = v4;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        v11 = 0;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * v11);
          v23 = 0;
          v13 = [(HDOntologyShardImporter *)a1 _importEntry:v12 error:&v23];
          v14 = v23;
          v15 = v14;
          if (!v13)
          {
            if ([v14 hk_isCocoaNoSuchFileError])
            {
              [(HDOntologyShardImporter *)a1 _markAsNotStagedEntry:v12];
            }

            v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Error importing %@", v12, v21, v22];
            v17 = [MEMORY[0x277CCA9B8] hk_error:100 description:v16 underlyingError:v15];
            [v6 addObject:v17];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    v18 = [(HDOntologyShardImporter *)a1 _wasSuccessGivenErrors:v6 error:v21];
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)_importEntry:(NSObject *)a3 error:
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1 && (v6 = [(HDOntologyShardImporter *)a1 _schemaImportForEntry:v5 error:a3]) != 0)
  {
    if (v6 == 2)
    {
      v7 = 1;
    }

    else
    {
      v8 = [(HDOntologyShardImporter *)a1 _markImportedEntry:v5 error:a3];
      v7 = v8 != 0;
      if (v8)
      {
        [(HDOntologyShardImporter *)a1 _notifyImportObserversAboutEntry:v8];
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        v12 = [WeakRetained shardRegistry];
        v22 = 0;
        v13 = [v12 deleteStagedShardFileForEntry:v8 error:&v22];
        v14 = v22;

        if ((v13 & 1) == 0)
        {
          _HKInitializeLogging();
          v15 = HKLogHealthOntology();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v23 = 138543874;
            v24 = a1;
            v25 = 2114;
            v26 = v8;
            v27 = 2114;
            v28 = v14;
            OUTLINED_FUNCTION_2_0();
            _os_log_impl(v16, v17, v18, v19, v20, v21);
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_markAsNotStagedEntry:(uint64_t)a1
{
  v22 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = [a2 copyWithAvailableState:1];
    _HKInitializeLogging();
    v4 = HKLogHealthOntology();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      _os_log_impl(&dword_2514A1000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Entry previously marked 'staged' wasn't found on device and has been re-marked as 'on remote', %{public}@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [WeakRetained shardRegistry];
    v18 = 0;
    v7 = [v6 insertEntry:v3 error:&v18];
    v8 = v18;

    if ((v7 & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = HKLogHealthOntology();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        v20 = v10;
        v21 = v8;
        OUTLINED_FUNCTION_2_0();
        _os_log_impl(v11, v12, v13, v14, v15, v16);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_wasSuccessGivenErrors:(uint64_t)a3 error:
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v7 = [v5 count];
  if (v7 >= 1)
  {
    v8 = v7;
    v9 = MEMORY[0x277CCA7E8];
    if (v7 != 1)
    {
      v9 = MEMORY[0x277CCA578];
    }

    v10 = *v9;
    if (v8 == 1)
    {
      v11 = [v6 firstObject];
    }

    else
    {
      v11 = v6;
    }

    v13 = v11;
    v17[0] = *MEMORY[0x277CCA450];
    v17[1] = v10;
    v18[0] = @"Error importing ontology files";
    v18[1] = v11;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 userInfo:v14];

    goto LABEL_10;
  }

  v12 = 1;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (uint64_t)_schemaImportForEntry:(NSObject *)a3 error:
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!a1)
  {
    v31 = 0;
    goto LABEL_27;
  }

  v6 = [(HDOntologyShardImporter *)a1 _registeredImporterClasses];
  v7 = [(__CFString *)v5 schemaType];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    if ([v8 canImportEntry:v5])
    {
      CFAbsoluteTimeGetCurrent();
      _HKInitializeLogging();
      v9 = HKLogHealthOntology();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0_0();
        v42 = v5;
        OUTLINED_FUNCTION_2_0();
        _os_log_impl(v10, v11, v12, v13, v14, v15);
      }

      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v17 = [WeakRetained shardRegistry];
      v37 = 0;
      v18 = [v8 importOntologyShardEntry:v5 shardRegistry:v17 error:&v37];
      v19 = v37;

      _HKInitializeLogging();
      v20 = HKLogHealthOntology();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = @"Error";
        if (v18)
        {
          v21 = @"Success";
        }

        v36 = v21;
        CFAbsoluteTimeGetCurrent();
        v22 = HKDiagnosticStringFromDuration();
        if (v18)
        {
          v23 = &stru_28636E7C8;
        }

        else
        {
          v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@": %@", v19];
        }

        OUTLINED_FUNCTION_0_0();
        v42 = v36;
        v43 = v32;
        v44 = v5;
        v45 = v32;
        v46 = v22;
        v47 = 2112;
        v48 = v23;
        _os_log_impl(&dword_2514A1000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ %{public}@ importing %{public}@ in %{public}@%@", buf, 0x3Eu);
        if ((v18 & 1) == 0)
        {
        }
      }

      v24 = v19;
      if (v24)
      {
        if (a3)
        {
          v33 = v24;
          *a3 = v24;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v31 = v18;
      goto LABEL_26;
    }

    _HKInitializeLogging();
    v24 = HKLogHealthOntology();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_0_0();
      v42 = v5;
      OUTLINED_FUNCTION_2_0();
      goto LABEL_15;
    }
  }

  else
  {
    _HKInitializeLogging();
    v24 = HKLogHealthOntology();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v39 = a1;
      v40 = 2114;
      v41 = v5;
      v25 = &dword_2514A1000;
      v26 = "%{public}@: No ontology importer class is registered yet to import %{public}@";
      v27 = buf;
      v28 = v24;
      v29 = OS_LOG_TYPE_DEFAULT;
      v30 = 22;
LABEL_15:
      _os_log_impl(v25, v28, v29, v26, v27, v30);
    }
  }

  v31 = 2;
LABEL_26:

LABEL_27:
  v34 = *MEMORY[0x277D85DE8];
  return v31;
}

- (void)_notifyImportObserversAboutEntry:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__HDOntologyShardImporter__notifyImportObserversAboutEntry___block_invoke;
    v6[3] = &unk_2796B8D28;
    v6[4] = a1;
    v7 = v3;
    [v5 notifyObservers:v6];
  }
}

- (id)_markImportedEntry:(void *)a3 transaction:(uint64_t)a4 error:
{
  v7 = a3;
  if (a1)
  {
    v8 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = [WeakRetained shardRegistry];
    v11 = [v8 identifier];
    v12 = [v8 schemaType];
    v13 = [v8 schemaVersion];

    v18 = 0;
    LODWORD(v13) = [v10 entryWithIdentifier:v11 schemaType:v12 schemaVersion:v13 entryOut:&v18 transaction:v7 error:a4];
    v14 = v18;

    v15 = 0;
    if (v13)
    {
      v16 = [v14 copyWithAvailableStateImported];
      if ([HDOntologyShardRegistry insertEntry:v16 transaction:v7 error:a4])
      {
        v15 = v16;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_lock_loadImporterClasses
{
  v39 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v2 = objc_alloc(MEMORY[0x277CBEB38]);
    v3 = +[HDOntologyShardImporter _builtinImporterClasses];
    v4 = [v2 initWithDictionary:v3];

    v25 = a1;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [WeakRetained daemon];
    v7 = [v6 pluginManager];
    v8 = [v7 pluginsConformingToProtocol:&unk_2863877C8];
    v9 = [v8 allValues];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v9;
    v27 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v27)
    {
      v10 = *v34;
      v24 = *v34;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v33 + 1) + 8 * i);
          v12 = [v28 ontologySchemaImporterClasses];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v13 = [v12 allKeys];
          v14 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v30;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v30 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v29 + 1) + 8 * j);
                v19 = [v12 objectForKeyedSubscript:v18];
                if ([v4 objectForKeyedSubscript:v18])
                {
                  v20 = [MEMORY[0x277CCA890] currentHandler];
                  [v20 handleFailureInMethod:sel__lock_loadImporterClasses object:v25 file:@"HDOntologyShardImporter.m" lineNumber:287 description:{@"%@ is attemping to register as importer for %@, but %@ already is registered.", v28, v18, objc_msgSend(v4, "objectForKeyedSubscript:", v18)}];

                  v10 = v24;
                }

                [v4 setObject:v19 forKeyedSubscript:v18];
              }

              v15 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v15);
          }
        }

        v27 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v27);
    }

    v21 = [v4 copy];
    v22 = *(v25 + 16);
    *(v25 + 16) = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end