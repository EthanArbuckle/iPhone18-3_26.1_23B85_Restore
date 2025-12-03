@interface CPLSimpleMergeHelper
+ (id)_mergerWithConflictsForStore:(id)store conflictingScopeIdentifiers:(id)identifiers;
+ (id)_mergerWithNoConflictsForStore:(id)store;
- (BOOL)_changeCanConflict:(id)conflict;
- (CPLSimpleMergeHelper)initWithEngineStore:(id)store;
- (id)mergerForBatch:(id)batch error:(id *)error;
@end

@implementation CPLSimpleMergeHelper

- (id)mergerForBatch:(id)batch error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  pullQueue = [(CPLEngineStore *)self->_store pullQueue];
  if ([pullQueue isEmpty])
  {
    v8 = [CPLSimpleMergeHelper _mergerWithNoConflictsForStore:self->_store];
    goto LABEL_44;
  }

  if (![pullQueue compactChangeBatchesWithError:error])
  {
    v8 = 0;
    goto LABEL_44;
  }

  selfCopy = self;
  v40 = pullQueue;
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v41 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v38 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v36 = batchCopy;
  v11 = batchCopy;
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
      scopedIdentifier = [v16 scopedIdentifier];
      scopeIdentifier = [scopedIdentifier scopeIdentifier];

      if (([v9 containsObject:scopeIdentifier] & 1) == 0)
      {
        if (([v41 containsObject:scopeIdentifier] & 1) == 0)
        {
          v52 = scopeIdentifier;
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
          v20 = [v40 hasSomeChangeInScopesWithIdentifiers:v19];

          if (!v20)
          {
            v21 = v9;
            goto LABEL_17;
          }

          [v41 addObject:scopeIdentifier];
        }

        if ([v10 containsObject:scopeIdentifier])
        {
          goto LABEL_21;
        }

        if ([(CPLSimpleMergeHelper *)selfCopy _changeCanConflict:v16])
        {
          v21 = v10;
LABEL_17:
          [v21 addObject:scopeIdentifier];
          goto LABEL_21;
        }

        allRelatedScopedIdentifiers = [v16 allRelatedScopedIdentifiers];
        if ([allRelatedScopedIdentifiers count])
        {
          [v38 unionSet:allRelatedScopedIdentifiers];
        }
      }

LABEL_21:
    }

    v13 = [v11 countByEnumeratingWithState:&v47 objects:v53 count:16];
  }

  while (v13);
LABEL_23:

  pullQueue = v40;
  if ([v38 count])
  {
    v23 = v10;
    idMapping = [(CPLEngineStore *)selfCopy->_store idMapping];
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
          scopeIdentifier2 = [v29 scopeIdentifier];
          if (([v23 containsObject:scopeIdentifier2] & 1) == 0)
          {
            v42 = 0;
            v31 = [idMapping cloudScopedIdentifierForLocalScopedIdentifier:v29 isFinal:&v42];
            if (!v31)
            {
              v31 = [v29 copy];
            }

            if ([v40 hasSomeChangeWithScopedIdentifier:v31])
            {
              [v23 addObject:scopeIdentifier2];

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
  store = selfCopy->_store;
  if (v32)
  {
    [CPLSimpleMergeHelper _mergerWithConflictsForStore:store conflictingScopeIdentifiers:v10];
  }

  else
  {
    [CPLSimpleMergeHelper _mergerWithNoConflictsForStore:store];
  }
  v8 = ;
  batchCopy = v36;

LABEL_44:
  v34 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)_changeCanConflict:(id)conflict
{
  conflictCopy = conflict;
  if ([conflictCopy isAssetChange])
  {
    v4 = [conflictCopy changeType] != 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (CPLSimpleMergeHelper)initWithEngineStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = CPLSimpleMergeHelper;
  v6 = [(CPLSimpleMergeHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

+ (id)_mergerWithConflictsForStore:(id)store conflictingScopeIdentifiers:(id)identifiers
{
  storeCopy = store;
  identifiersCopy = identifiers;
  v7 = [CPLSimpleMerger alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__CPLSimpleMergeHelper__mergerWithConflictsForStore_conflictingScopeIdentifiers___block_invoke;
  v12[3] = &unk_1E8620940;
  v13 = storeCopy;
  v14 = identifiersCopy;
  v8 = identifiersCopy;
  v9 = storeCopy;
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

+ (id)_mergerWithNoConflictsForStore:(id)store
{
  v3 = [[CPLSimpleMerger alloc] initWithMergeBlock:0];

  return v3;
}

@end