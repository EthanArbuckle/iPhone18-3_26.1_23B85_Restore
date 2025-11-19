@interface CPLSimpleMergeHelper
+ (id)_mergerWithConflictsForStore:(id)a3 conflictingScopeIdentifiers:(id)a4;
+ (id)_mergerWithNoConflictsForStore:(id)a3;
- (BOOL)_changeCanConflict:(id)a3;
- (CPLSimpleMergeHelper)initWithEngineStore:(id)a3;
- (id)mergerForBatch:(id)a3 error:(id *)a4;
@end

@implementation CPLSimpleMergeHelper

- (id)mergerForBatch:(id)a3 error:(id *)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CPLEngineStore *)self->_store pullQueue];
  if ([v7 isEmpty])
  {
    v8 = [CPLSimpleMergeHelper _mergerWithNoConflictsForStore:self->_store];
    goto LABEL_44;
  }

  if (![v7 compactChangeBatchesWithError:a4])
  {
    v8 = 0;
    goto LABEL_44;
  }

  v39 = self;
  v40 = v7;
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v41 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v38 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v36 = v6;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = v12;
  v14 = *v48;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v48 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v47 + 1) + 8 * i);
      v17 = [v16 scopedIdentifier];
      v18 = [v17 scopeIdentifier];

      if (([v9 containsObject:v18] & 1) == 0)
      {
        if (([v41 containsObject:v18] & 1) == 0)
        {
          v52 = v18;
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
          v20 = [v40 hasSomeChangeInScopesWithIdentifiers:v19];

          if (!v20)
          {
            v21 = v9;
            goto LABEL_17;
          }

          [v41 addObject:v18];
        }

        if ([v10 containsObject:v18])
        {
          goto LABEL_21;
        }

        if ([(CPLSimpleMergeHelper *)v39 _changeCanConflict:v16])
        {
          v21 = v10;
LABEL_17:
          [v21 addObject:v18];
          goto LABEL_21;
        }

        v22 = [v16 allRelatedScopedIdentifiers];
        if ([v22 count])
        {
          [v38 unionSet:v22];
        }
      }

LABEL_21:
    }

    v13 = [v11 countByEnumeratingWithState:&v47 objects:v53 count:16];
  }

  while (v13);
LABEL_23:

  v7 = v40;
  if ([v38 count])
  {
    v23 = v10;
    v37 = [(CPLEngineStore *)v39->_store idMapping];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v24 = v38;
    v25 = [v24 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v44;
      while (2)
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v44 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v43 + 1) + 8 * j);
          v30 = [v29 scopeIdentifier];
          if (([v23 containsObject:v30] & 1) == 0)
          {
            v42 = 0;
            v31 = [v37 cloudScopedIdentifierForLocalScopedIdentifier:v29 isFinal:&v42];
            if (!v31)
            {
              v31 = [v29 copy];
            }

            if ([v40 hasSomeChangeWithScopedIdentifier:v31])
            {
              [v23 addObject:v30];

              goto LABEL_39;
            }
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

LABEL_39:

    v10 = v23;
  }

  v32 = [v10 count];
  store = v39->_store;
  if (v32)
  {
    [CPLSimpleMergeHelper _mergerWithConflictsForStore:store conflictingScopeIdentifiers:v10];
  }

  else
  {
    [CPLSimpleMergeHelper _mergerWithNoConflictsForStore:store];
  }
  v8 = ;
  v6 = v36;

LABEL_44:
  v34 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)_changeCanConflict:(id)a3
{
  v3 = a3;
  if ([v3 isAssetChange])
  {
    v4 = [v3 changeType] != 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (CPLSimpleMergeHelper)initWithEngineStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CPLSimpleMergeHelper;
  v6 = [(CPLSimpleMergeHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

+ (id)_mergerWithConflictsForStore:(id)a3 conflictingScopeIdentifiers:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [CPLSimpleMerger alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__CPLSimpleMergeHelper__mergerWithConflictsForStore_conflictingScopeIdentifiers___block_invoke;
  v12[3] = &unk_1E8620940;
  v13 = v5;
  v14 = v6;
  v8 = v6;
  v9 = v5;
  v10 = [(CPLSimpleMerger *)v7 initWithMergeBlock:v12];

  return v10;
}

uint64_t __81__CPLSimpleMergeHelper__mergerWithConflictsForStore_conflictingScopeIdentifiers___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) scopes];
  v5 = [v4 filterForIncludedScopeIdentifiers:*(a1 + 40)];

  if ((_CPLSilentLogging & 1) == 0)
  {
    if (__CPLMergerOSLogDomain_onceToken != -1)
    {
      dispatch_once(&__CPLMergerOSLogDomain_onceToken, &__block_literal_global_11113);
    }

    v6 = __CPLMergerOSLogDomain_result;
    if (os_log_type_enabled(__CPLMergerOSLogDomain_result, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 pullQueue];
      v10 = [v9 countOfQueuedBatches];
      v11 = [*(a1 + 40) count];
      v20 = 134218240;
      v21 = v10;
      v22 = 2048;
      v23 = v11;
      _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Cleaning pull queue (%lu batches) of %lu scopes, transient repository and reset mingled records in the cloud cache", &v20, 0x16u);
    }
  }

  v12 = [*(a1 + 32) pullQueue];
  v13 = [v12 deleteAllChangesWithScopeFilter:v5 error:a2];

  if (v13 && ([*(a1 + 32) transientPullRepository], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "resetMingledRecordsWithScopeFilter:error:", v5, a2), v14, v15))
  {
    v16 = [*(a1 + 32) cloudCache];
    v17 = [v16 discardStagedChangesWithScopeFilter:v5 error:a2];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (id)_mergerWithNoConflictsForStore:(id)a3
{
  v3 = [[CPLSimpleMerger alloc] initWithMergeBlock:0];

  return v3;
}

@end