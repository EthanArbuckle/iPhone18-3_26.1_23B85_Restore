@interface HDOntologyShardPruner
+ (id)_metadataKeyForPruneRequestForEntry:(uint64_t)a1;
- (BOOL)_markPrunedEntry:(void *)a3 date:(void *)a4 transaction:(uint64_t)a5 error:;
- (BOOL)pruneOntologyWithOptions:(unint64_t)a3 error:(id *)a4;
- (HDOntologyShardPruner)init;
- (HDOntologyShardPruner)initWithOntologyUpdateCoordinator:(id)a3;
- (HDOntologyUpdateCoordinator)updateCoordinator;
- (id)_entriesToPruneWithError:(uint64_t)a1;
- (id)_entriesWithSchemaType:(void *)a3 entries:;
- (id)_importerClassesBySchemaType;
- (id)_orderedSchemaTypes;
- (id)_pruneEntries:(uint64_t)a3 options:(uint64_t)a4 schemaType:(void *)a5 importerClass:(uint64_t)a6 error:;
- (id)_requestToPruneEntries:(uint64_t)a3 options:(void *)a4 schemaType:(void *)a5 importerClass:(void *)a6 error:;
- (int64_t)purgeSpaceForUrgency:(int)a3 volume:(id)a4;
- (int64_t)purgeableSpaceForUrgency:(int)a3 volume:(id)a4;
- (uint64_t)_garbageCollectStagedFilesWithError:(uint64_t)a1;
- (uint64_t)_pruneOntologyWithOptions:(uint64_t)a3 error:;
- (uint64_t)_pruneShardsThatAreNotLongerRequiredWithOptions:(uint64_t)a3 error:;
- (uint64_t)_purgeSpaceForUrgency:(id *)a1;
- (uint64_t)_purgeableSpaceForUrgency:(id *)a1;
- (void)_markPrunedEntries:(uint64_t)a1;
- (void)_markPrunedEntries:(void *)a3 transaction:;
- (void)_persistPruneRequestMetadataForEntries:(uint64_t)a1;
@end

@implementation HDOntologyShardPruner

- (HDOntologyShardPruner)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyShardPruner)initWithOntologyUpdateCoordinator:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDOntologyShardPruner;
  v5 = [(HDOntologyShardPruner *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_updateCoordinator, v4);
  }

  return v6;
}

- (BOOL)pruneOntologyWithOptions:(unint64_t)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v7 = HKLogHealthOntology();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HKStringFromHKOntologyPruneOptions();
    *buf = 138543618;
    v21 = self;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_2514A1000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Garbage collect and prune ontology with options %{pubic}@", buf, 0x16u);
  }

  CFAbsoluteTimeGetCurrent();
  v19 = 0;
  v9 = [(HDOntologyShardPruner *)self _pruneOntologyWithOptions:a3 error:&v19];
  v10 = v19;
  _HKInitializeLogging();
  v11 = HKLogHealthOntology();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      v12 = @"SUCCESS";
    }

    else
    {
      v12 = @"FAILURE";
    }

    CFAbsoluteTimeGetCurrent();
    v13 = HKDiagnosticStringFromDuration();
    if (v9)
    {
      v14 = &stru_28636E7C8;
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@": %@", v10];
    }

    *buf = 138544130;
    v21 = self;
    v22 = 2114;
    v23 = v12;
    v24 = 2114;
    v25 = v13;
    v26 = 2114;
    v27 = v14;
    _os_log_impl(&dword_2514A1000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Garbage collect and prune ontology %{public}@ in %{public}@%{public}@", buf, 0x2Au);
    if ((v9 & 1) == 0)
    {
    }
  }

  v15 = v10;
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

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int64_t)purgeableSpaceForUrgency:(int)a3 volume:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (a3 != 4)
  {
    _HKInitializeLogging();
    v8 = HKLogHealthOntology();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = self;
      v17 = 1024;
      LODWORD(v18) = a3;
      v9 = "%{public}@: Non-maximum urgency request for purgable space for urgency %d";
      v10 = v8;
      v11 = 18;
      goto LABEL_7;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  if (([v6 isEqualToString:@"/private/var/mobile"] & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = HKLogHealthOntology();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = self;
      v17 = 2114;
      v18 = v7;
      v9 = "%{public}@: No purgable space for requested volume %{public}@";
      v10 = v8;
      v11 = 22;
LABEL_7:
      _os_log_impl(&dword_2514A1000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v12 = [(HDOntologyShardPruner *)&self->super.isa _purgeableSpaceForUrgency:?];
  _HKInitializeLogging();
  v8 = HKLogHealthOntology();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = self;
    v17 = 2048;
    v18 = v12;
    _os_log_impl(&dword_2514A1000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Maximum urgency request for purgable space: %llu bytes", &v15, 0x16u);
  }

LABEL_9:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (int64_t)purgeSpaceForUrgency:(int)a3 volume:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (a3 != 4)
  {
    _HKInitializeLogging();
    v8 = HKLogHealthOntology();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = self;
      v17 = 1024;
      LODWORD(v18) = a3;
      v9 = "%{public}@: Non-maximum urgency request request to purge space for urgency %d";
      v10 = v8;
      v11 = 18;
      goto LABEL_7;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  if (([v6 isEqualToString:@"/private/var/mobile"] & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = HKLogHealthOntology();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = self;
      v17 = 2114;
      v18 = v7;
      v9 = "%{public}@: Nothing to purge for requested volume %{public}@";
      v10 = v8;
      v11 = 22;
LABEL_7:
      _os_log_impl(&dword_2514A1000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v12 = [HDOntologyShardPruner _purgeSpaceForUrgency:?];
  _HKInitializeLogging();
  v8 = HKLogHealthOntology();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = self;
    v17 = 2048;
    v18 = v12;
    _os_log_impl(&dword_2514A1000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Maximum urgency request to purge space: %llu bytes", &v15, 0x16u);
  }

LABEL_9:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

id __78__HDOntologyShardPruner__pruneEntries_options_schemaType_importerClass_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithCurrentVersionUndeterminedForDate:*(a1 + 32)];

  return v2;
}

uint64_t __44__HDOntologyShardPruner__orderedSchemaTypes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *MEMORY[0x277CCC630];
  v5 = a3;
  v6 = [a2 isEqualToString:v4];
  v7 = [v5 isEqualToString:v4];

  if ((v6 ^ 1 | v7))
  {
    return (v6 ^ 1) & v7;
  }

  else
  {
    return -1;
  }
}

uint64_t __56__HDOntologyShardPruner__entriesWithSchemaType_entries___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 schemaType];
  v5 = *(a1 + 32);
  if (v4 == v5)
  {
    v7 = 1;
  }

  else if (v5)
  {
    v6 = [v3 schemaType];
    v7 = [v6 isEqual:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __64__HDOntologyShardPruner__persistPruneRequestMetadataForEntries___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = HKDiagnosticStringFromDate();

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [HDOntologyShardPruner _metadataKeyForPruneRequestForEntry:?];
        v11 = [v3 graphDatabase];
        v19 = 0;
        v12 = [v11 setMetadataValue:v5 forKey:v10 error:&v19];
        v13 = v19;

        if ((v12 & 1) == 0)
        {
          _HKInitializeLogging();
          v14 = HKLogHealthOntology();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = *(a1 + 40);
            *buf = 138543874;
            v25 = v15;
            v26 = 2114;
            v27 = v10;
            v28 = 2114;
            v29 = v13;
            _os_log_error_impl(&dword_2514A1000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Unable to set metdata value for key %{public}@: %{public}@", buf, 0x20u);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (id)_metadataKeyForPruneRequestForEntry:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [v2 identifier];
  v5 = [v2 schemaType];
  v6 = [v2 schemaVersion];

  v7 = [v3 initWithFormat:@"pruneRequest-%@:%@:%ld", v4, v5, v6];

  return v7;
}

- (HDOntologyUpdateCoordinator)updateCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_updateCoordinator);

  return WeakRetained;
}

- (uint64_t)_pruneOntologyWithOptions:(uint64_t)a3 error:
{
  if (!a1 || ![(HDOntologyShardPruner *)a1 _garbageCollectStagedFilesWithError:a3])
  {
    return 0;
  }

  return [(HDOntologyShardPruner *)a1 _pruneShardsThatAreNotLongerRequiredWithOptions:a2 error:a3];
}

- (uint64_t)_purgeableSpaceForUrgency:(id *)a1
{
  v43 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = a1;
    v3 = [(HDOntologyShardPruner *)a1 _importerClassesBySchemaType];
    OUTLINED_FUNCTION_2_1();
    [(HDOntologyShardPruner *)v2 _orderedSchemaTypes];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_4_0();
    obj = v4;
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v7 = v5;
      v8 = 0;
      v9 = *v36;
      *&v6 = 138544130;
      v31 = v6;
      do
      {
        v10 = 0;
        v32 = v7;
        do
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(obj);
          }

          [v3 objectForKeyedSubscript:{*(v35 + 8 * v10), v31}];
          if (objc_opt_respondsToSelector())
          {
            v11 = v8;
            WeakRetained = objc_loadWeakRetained(v2 + 1);
            [WeakRetained shardRegistry];
            objc_claimAutoreleasedReturnValue();
            v13 = [OUTLINED_FUNCTION_3_0() purgeableSpaceForUrgency:? shardRegistry:?];

            v2 = v3;
            _HKInitializeLogging();
            v14 = HKLogHealthOntology();
            v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
            if (v15)
            {
              OUTLINED_FUNCTION_1_2(v15, v16, v17, v18, v19, v20, v21, v22, v31);
              _os_log_impl(&dword_2514A1000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ urgency %d purgable space %llu", v23, 0x26u);
            }

            v8 = v13 + v11;
            v7 = v32;
          }

          ++v10;
        }

        while (v7 != v10);
        OUTLINED_FUNCTION_4_0();
        v7 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v24 = objc_loadWeakRetained(v2 + 1);
    v25 = [v24 shardRegistry];
    v26 = [v25 purgeableSpaceForStagedShards];

    _HKInitializeLogging();
    v27 = HKLogHealthOntology();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v38 = v2;
      v39 = 1024;
      v40 = a2;
      v41 = 2048;
      v42 = v26;
      _os_log_impl(&dword_2514A1000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: staged files urgency %d purgable space %llu", buf, 0x1Cu);
    }

    v28 = v26 + v8;
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (uint64_t)_purgeSpaceForUrgency:(id *)a1
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = a1;
    v2 = [(HDOntologyShardPruner *)a1 _importerClassesBySchemaType];
    OUTLINED_FUNCTION_2_1();
    [(HDOntologyShardPruner *)v1 _orderedSchemaTypes];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_4_0();
    obj = v3;
    v4 = [v3 countByEnumeratingWithState:? objects:? count:?];
    if (v4)
    {
      v6 = v4;
      v7 = 0;
      v8 = *v32;
      *&v5 = 138544130;
      v28 = v5;
      do
      {
        v9 = 0;
        v29 = v6;
        do
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(obj);
          }

          [v2 objectForKeyedSubscript:{*(v31 + 8 * v9), v28}];
          if (objc_opt_respondsToSelector())
          {
            v10 = v7;
            WeakRetained = objc_loadWeakRetained(v1 + 1);
            [WeakRetained shardRegistry];
            objc_claimAutoreleasedReturnValue();
            v12 = [OUTLINED_FUNCTION_3_0() purgeSpaceForUrgency:? shardRegistry:?];

            v1 = v2;
            _HKInitializeLogging();
            v13 = HKLogHealthOntology();
            v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
            if (v14)
            {
              OUTLINED_FUNCTION_1_2(v14, v15, v16, v17, v18, v19, v20, v21, v28);
              _os_log_impl(&dword_2514A1000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ urgency %d request to purge space %llu", v22, 0x26u);
            }

            v7 = v12 + v10;
            v6 = v29;
          }

          ++v9;
        }

        while (v6 != v9);
        OUTLINED_FUNCTION_4_0();
        v6 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v23 = objc_loadWeakRetained(v1 + 1);
    v24 = [v23 shardRegistry];
    v25 = [v24 purgeSpaceForStagedShards] + v7;
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (id)_importerClassesBySchemaType
{
  if (a1)
  {
    v1 = [a1 updateCoordinator];
    v2 = [v1 importer];
    v3 = [v2 importerClasses];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_orderedSchemaTypes
{
  if (a1)
  {
    v1 = [a1 updateCoordinator];
    v2 = [v1 importer];
    v3 = [v2 importerClasses];
    v4 = [v3 allKeys];
    v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)_garbageCollectStagedFilesWithError:(uint64_t)a1
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = MEMORY[0x277D10B20];
    v5 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"desired_state" values:&unk_286374820];
    v17[0] = v5;
    v6 = [MEMORY[0x277D10B18] predicateWithProperty:@"available_state" notEqualToValue:&unk_286374628];
    v17[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v8 = [v4 predicateMatchingAllPredicates:v7];

    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v10 = [WeakRetained shardRegistry];
    v11 = [v10 entriesWithPredicate:v8 orderingTerms:0 error:a2];

    if (v11)
    {
      v12 = objc_loadWeakRetained((a1 + 8));
      v13 = [v12 shardRegistry];
      v14 = [v13 deleteStagedFilesNotMatchingEntries:v11 error:a2];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (uint64_t)_pruneShardsThatAreNotLongerRequiredWithOptions:(uint64_t)a3 error:
{
  v3 = a1;
  v27 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = [(HDOntologyShardPruner *)a1 _entriesToPruneWithError:a3];
    if (v5)
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = [(HDOntologyShardPruner *)v3 _importerClassesBySchemaType];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        v10 = v9;
        v20 = a3;
        v11 = *v23;
        v18 = 1;
        do
        {
          v12 = 0;
          do
          {
            if (*v23 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v22 + 1) + 8 * v12);
            v14 = [v8 objectForKeyedSubscript:v13];
            v15 = [(HDOntologyShardPruner *)v3 _entriesWithSchemaType:v13 entries:v5];
            if ([v15 count] | a2 & 1)
            {
              v16 = [(HDOntologyShardPruner *)v3 _requestToPruneEntries:v15 options:a2 schemaType:v13 importerClass:v14 error:v20];
              if (v16)
              {
                [v19 addObjectsFromArray:v16];
              }

              else
              {
                v18 = 0;
              }
            }

            ++v12;
          }

          while (v10 != v12);
          v17 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
          v10 = v17;
        }

        while (v17);
      }

      else
      {
        v18 = 1;
      }

      [(HDOntologyShardPruner *)v3 _markPrunedEntries:v19];

      LOBYTE(v3) = v18;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

- (id)_entriesToPruneWithError:(uint64_t)a1
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = MEMORY[0x277D10B20];
    v5 = [MEMORY[0x277D10B18] predicateWithProperty:@"desired_state" notEqualToValue:&unk_286374628];
    v14[0] = v5;
    v6 = [MEMORY[0x277D10B18] predicateWithProperty:@"current_version" notEqualToValue:&unk_286374640];
    v14[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v8 = [v4 predicateMatchingAllPredicates:v7];

    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v10 = [WeakRetained shardRegistry];
    v11 = [v10 entriesWithPredicate:v8 orderingTerms:0 error:a2];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_entriesWithSchemaType:(void *)a3 entries:
{
  v5 = a2;
  if (a1)
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6_0();
    v9 = __56__HDOntologyShardPruner__entriesWithSchemaType_entries___block_invoke;
    v10 = &unk_2796B9118;
    v11 = v5;
    v6 = [a3 hk_filter:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_requestToPruneEntries:(uint64_t)a3 options:(void *)a4 schemaType:(void *)a5 importerClass:(void *)a6 error:
{
  v45 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a4;
  if (a1)
  {
    CFAbsoluteTimeGetCurrent();
    _HKInitializeLogging();
    v13 = HKLogHealthOntology();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HKStringFromHKOntologyPruneOptions();
      OUTLINED_FUNCTION_5_0();
      v34 = v12;
      v35 = v15;
      v36 = a5;
      v37 = v15;
      v38 = v16;
      _os_log_impl(&dword_2514A1000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Request to prune content for schema type %{public}@ with %{public}@ %{public}@", buf, 0x2Au);
    }

    v32 = 0;
    v18 = [(HDOntologyShardPruner *)a1 _pruneEntries:v11 options:a3 schemaType:v17 importerClass:a5 error:&v32];
    v19 = v32;
    _HKInitializeLogging();
    v20 = HKLogHealthOntology();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v30 = a6;
      v31 = v12;
      v21 = [v18 count];
      v22 = [v11 count];
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

      OUTLINED_FUNCTION_5_0();
      v34 = a5;
      v35 = 2048;
      v36 = v21;
      v37 = 2048;
      v38 = v22;
      v39 = v25;
      v12 = v31;
      v40 = v31;
      v41 = v25;
      v42 = v23;
      v43 = 2112;
      v44 = v24;
      _os_log_impl(&dword_2514A1000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ pruned %ld out of %ld eligable %{public}@ shards in %{public}@%@", buf, 0x48u);
      if (!v18)
      {
      }

      a6 = v30;
    }

    v26 = v19;
    if (v26)
    {
      if (a6)
      {
        v27 = v26;
        *a6 = v26;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  else
  {
    v18 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)_markPrunedEntries:(uint64_t)a1
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v14 = 0;
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6_0();
    v10 = __44__HDOntologyShardPruner__markPrunedEntries___block_invoke;
    v11 = &unk_2796B8AF0;
    v12 = a1;
    v13 = v3;
    v5 = [WeakRetained performOntologyTransactionForWrite:1 databaseTransaction:0 error:&v14 transactionHandler:v9];
    v6 = v14;

    if ((v5 & 1) == 0)
    {
      _HKInitializeLogging();
      v7 = HKLogHealthOntology();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v16 = a1;
        v17 = 2114;
        v18 = v6;
        _os_log_error_impl(&dword_2514A1000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Unable to mark pruned entries in the shard registry: %{public}@", buf, 0x16u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_pruneEntries:(uint64_t)a3 options:(uint64_t)a4 schemaType:(void *)a5 importerClass:(uint64_t)a6 error:
{
  v10 = a2;
  if (a1)
  {
    v11 = [a1 updateCoordinator];
    v12 = [v11 shardRegistry];

    v13 = [a5 willPruneEntries:v10 options:a3 shardRegistry:v12 error:a6];
    if (v13)
    {
      v14 = v13;
      if ([v13 count] | a3 & 1)
      {
        [MEMORY[0x277CBEAA8] date];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_6_0();
        v21 = __78__HDOntologyShardPruner__pruneEntries_options_schemaType_importerClass_error___block_invoke;
        v22 = &unk_2796B90D0;
        v16 = v15;
        v23 = v16;
        v17 = [v14 hk_map:v20];

        if ([v12 insertEntries:v17 error:a6])
        {
          [(HDOntologyShardPruner *)a1 _persistPruneRequestMetadataForEntries:v10];
          v18 = [a5 pruneEntries:v17 options:a3 shardRegistry:v12 error:a6];
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = MEMORY[0x277CBEBF8];
        v17 = v14;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_persistPruneRequestMetadataForEntries:(uint64_t)a1
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v16 = 0;
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6_0();
    v12 = __64__HDOntologyShardPruner__persistPruneRequestMetadataForEntries___block_invoke;
    v13 = &unk_2796B8AF0;
    v5 = v3;
    v14 = v5;
    v15 = a1;
    v6 = [WeakRetained performOntologyTransactionForWrite:1 databaseTransaction:0 error:&v16 transactionHandler:v11];
    v7 = v16;

    if ((v6 & 1) == 0)
    {
      _HKInitializeLogging();
      v8 = HKLogHealthOntology();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = [v5 count];
        *buf = 138543874;
        v18 = a1;
        v19 = 2048;
        v20 = v10;
        v21 = 2114;
        v22 = v7;
        _os_log_error_impl(&dword_2514A1000, v8, OS_LOG_TYPE_ERROR, "%{public}@: error persisting prune request metadata for %ld entries: %{public}@", buf, 0x20u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_markPrunedEntries:(void *)a3 transaction:
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    OUTLINED_FUNCTION_2_1();
    v18 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:v20 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(v21 + 8 * v12);
          v19 = 0;
          v14 = [(HDOntologyShardPruner *)a1 _markPrunedEntry:v13 date:v7 transaction:v6 error:&v19];
          v15 = v19;
          if (!v14)
          {
            _HKInitializeLogging();
            v16 = HKLogHealthOntology();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              v24 = a1;
              v25 = 2114;
              v26 = v13;
              v27 = 2114;
              v28 = v15;
              _os_log_error_impl(&dword_2514A1000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Unable to mark pruned entry %{public}@ in the shard registry: %{public}@", buf, 0x20u);
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:v20 objects:v29 count:16];
      }

      while (v10);
    }

    v5 = v18;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_markPrunedEntry:(void *)a3 date:(void *)a4 transaction:(uint64_t)a5 error:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (!a1)
  {
    goto LABEL_4;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v13 = [WeakRetained shardRegistry];
  v14 = [v9 identifier];
  v15 = [v9 schemaType];
  v20 = 0;
  v16 = [v13 entryWithIdentifier:v14 schemaType:v15 schemaVersion:objc_msgSend(v9 entryOut:"schemaVersion") transaction:&v20 error:{v11, a5}];

  if (v16)
  {
    v17 = [v9 copyWithAvailableStateNotImportedForDate:v10];
    v18 = [HDOntologyShardRegistry insertEntry:v17 transaction:v11 error:a5];
  }

  else
  {
LABEL_4:
    v18 = 0;
  }

  return v18;
}

@end