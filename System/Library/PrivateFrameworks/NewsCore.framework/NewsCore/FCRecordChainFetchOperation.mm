@interface FCRecordChainFetchOperation
- (BOOL)_shouldIgnoreCache;
- (BOOL)validateOperation;
- (FCRecordChainFetchOperation)init;
- (NSArray)networkEvents;
- (id)_errorForMissingRecordNames:(uint64_t)a1;
- (id)_partialFetchErrorForMissingRecordName:(uint64_t)a1;
- (id)_recordSourceForRecordType:(id *)a1;
- (id)_recordTypeForRecordID:(uint64_t)a1;
- (uint64_t)_pbRecordTypeForRecordType:(uint64_t)result;
- (void)_collectActualTopLevelRecordIDsFromRecordIDs:(void *)a3 visitedRecordIDs:;
- (void)_finalizeResultFromCachedRecords;
- (void)_walkRecordChainStartingWithRecordIDs:(void *)a3 visitedRecordIDs:(void *)a4 recordsLookupBlock:(void *)a5 visitorBlock:;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)prepareOperation;
- (void)setCachedRecords:(uint64_t)a1;
@end

@implementation FCRecordChainFetchOperation

- (FCRecordChainFetchOperation)init
{
  v12.receiver = self;
  v12.super_class = FCRecordChainFetchOperation;
  v2 = [(FCOperation *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    actualTopLevelRecordIDs = v2->_actualTopLevelRecordIDs;
    v2->_actualTopLevelRecordIDs = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    skippedTopLevelRecordIDs = v2->_skippedTopLevelRecordIDs;
    v2->_skippedTopLevelRecordIDs = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    missingCachedOnlyTopLevelRecordIDs = v2->_missingCachedOnlyTopLevelRecordIDs;
    v2->_missingCachedOnlyTopLevelRecordIDs = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableNetworkEvents = v2->_mutableNetworkEvents;
    v2->_mutableNetworkEvents = v9;
  }

  return v2;
}

- (BOOL)validateOperation
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(FCRecordChainFetchOperation *)self context];

  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"record chain fetch operation requires a context"];
    v13 = 136315906;
    v14 = "[FCRecordChainFetchOperation validateOperation]";
    v15 = 2080;
    v16 = "FCRecordChainFetchOperation.m";
    v17 = 1024;
    v18 = 60;
    v19 = 2114;
    v20 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v13, 0x26u);
  }

  v4 = [(FCRecordChainFetchOperation *)self linkKeysByRecordType];
  v5 = [v4 count];

  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"record chain fetch operation requires a list of link keys for each record type in the chain"];
    v13 = 136315906;
    v14 = "[FCRecordChainFetchOperation validateOperation]";
    v15 = 2080;
    v16 = "FCRecordChainFetchOperation.m";
    v17 = 1024;
    v18 = 61;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v13, 0x26u);
  }

  v6 = [(FCRecordChainFetchOperation *)self context];
  if (v6)
  {
    v7 = [(FCRecordChainFetchOperation *)self linkKeysByRecordType];
    v8 = [v7 count] != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)prepareOperation
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(FCRecordChainFetchOperation *)self context];
  v4 = [v3 internalContentContext];
  v5 = [v4 recordSources];
  v6 = [(FCRecordChainFetchOperation *)self additionalRecordSources];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  v24 = v7;
  v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_60];
  if (self)
  {
    objc_storeStrong(&self->_recordSources, v8);
  }

  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  if (self)
  {
    recordSources = self->_recordSources;
  }

  else
  {
    recordSources = 0;
  }

  v12 = recordSources;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = [v17 recordType];
        [v9 setObject:v17 forKey:v18];

        v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "pbRecordType")}];
        v20 = [v17 recordType];
        [v10 setObject:v19 forKey:v20];
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  if (self)
  {
    objc_storeStrong(&self->_recordSourcesByRecordType, v9);
    objc_storeStrong(&self->_pbRecordTypesByRecordType, v10);
  }

  v21 = [(FCRecordChainFetchOperation *)self cachePolicy];

  if (!v21)
  {
    v22 = +[FCCachePolicy defaultCachePolicy];
    [(FCRecordChainFetchOperation *)self setCachePolicy:v22];
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __47__FCRecordChainFetchOperation_prepareOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E69E58C0];
  v5 = a2;
  v6 = [a3 recordIDPrefixes];
  v7 = [v6 firstObject];
  v8 = [v5 recordIDPrefixes];

  v9 = [v8 firstObject];
  v10 = [v4 nf_compareObject:v7 toObject:v9];

  return v10;
}

- (void)performOperation
{
  v108 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(FCRecordChainFetchOperation *)self topLevelRecordIDs];
  v5 = [v3 setWithArray:v4];
  if (self)
  {
    if ([(FCRecordChainFetchOperation *)self _shouldIgnoreCache])
    {
      aBlock = MEMORY[0x1E69E9820];
      v104 = 3221225472;
      v105 = __66__FCRecordChainFetchOperation__collectCachedRecordsFromRecordIDs___block_invoke;
      v106 = &unk_1E7C36EA0;
      v107 = self;
      __66__FCRecordChainFetchOperation__collectCachedRecordsFromRecordIDs___block_invoke(&aBlock);
    }

    else
    {
      aBlock = MEMORY[0x1E69E9820];
      v104 = 3221225472;
      v105 = __66__FCRecordChainFetchOperation__collectCachedRecordsFromRecordIDs___block_invoke_2;
      v106 = &unk_1E7C3F658;
      v107 = self;
      v6 = _Block_copy(&aBlock);
      v7 = [(FCRecordChainFetchOperation *)self cachedRecordsLookupBlock];
      v8 = v7 == 0;

      v77 = MEMORY[0x1E69E9820];
      v78 = 3221225472;
      if (v8)
      {
        v9 = __66__FCRecordChainFetchOperation__collectCachedRecordsFromRecordIDs___block_invoke_4;
      }

      else
      {
        v9 = __66__FCRecordChainFetchOperation__collectCachedRecordsFromRecordIDs___block_invoke_3;
      }

      v79 = v9;
      v80 = &unk_1E7C3F680;
      v81 = self;
      v10 = _Block_copy(&v77);
      v11 = MEMORY[0x1E695DFD8];
      v12 = [(FCRecordChainFetchOperation *)self topLevelRecordIDs];
      v13 = [v11 setWithArray:v12];
      v14 = [MEMORY[0x1E695DFA8] set];
      [(FCRecordChainFetchOperation *)self _walkRecordChainStartingWithRecordIDs:v13 visitedRecordIDs:v14 recordsLookupBlock:v10 visitorBlock:v6];
    }
  }

  v15 = MEMORY[0x1E695DFD8];
  v16 = [(FCRecordChainFetchOperation *)self topLevelRecordIDs];
  v17 = [v15 setWithArray:v16];
  v18 = [MEMORY[0x1E695DFA8] set];
  [(FCRecordChainFetchOperation *)&self->super.super.super.isa _collectActualTopLevelRecordIDsFromRecordIDs:v17 visitedRecordIDs:v18];

  if (!self)
  {
    goto LABEL_44;
  }

  if ([(NSMutableSet *)self->_actualTopLevelRecordIDs count])
  {
    v75 = [(NSMutableSet *)self->_actualTopLevelRecordIDs allObjects];
    v19 = objc_opt_new();
    v102[0] = MEMORY[0x1E69E9820];
    v102[1] = 3221225472;
    v102[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke;
    v102[3] = &unk_1E7C3F6A8;
    v102[4] = self;
    v73 = [v75 fc_dictionaryOfSortedObjectsWithKeyBlock:v102];
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_2;
    v100[3] = &unk_1E7C3F6D0;
    v100[4] = self;
    v74 = v19;
    v101 = v74;
    [v73 enumerateKeysAndObjectsUsingBlock:v100];
    if ([v74 count])
    {
      v20 = objc_alloc_init(FCCKBatchedMultiFetchQueryOperation);
      v21 = [(FCRecordChainFetchOperation *)self context];
      v22 = [v21 internalContentContext];
      v23 = [v22 contentDatabase];
      [(FCCKBatchedMultiFetchQueryOperation *)v20 setDatabase:v23];

      v24 = [(FCRecordChainFetchOperation *)self edgeCacheHint];
      v26 = v24;
      if (v20)
      {
        objc_setProperty_nonatomic_copy(v20, v25, v24, 424);

        v20->_networkEventType = [(FCRecordChainFetchOperation *)self networkEventType];
        v27 = [(FCRecordChainFetchOperation *)self networkActivityBlock];
        objc_setProperty_nonatomic_copy(v20, v28, v27, 440);
      }

      else
      {

        [(FCRecordChainFetchOperation *)self networkEventType];
        v27 = [(FCRecordChainFetchOperation *)self networkActivityBlock];
      }

      v29 = [(FCRecordChainFetchOperation *)self cachePolicy];
      v30 = [v29 cachePolicy];
      if (v20)
      {
        v20->_ignoreCache = v30 == 1;
      }

      v31 = objc_opt_new();
      v32 = [(FCRecordChainFetchOperation *)self edgeCacheHint];
      v33 = v32 == 0;

      if (v33)
      {
        [v31 addObjectsFromArray:v74];
        v99[0] = MEMORY[0x1E69E9820];
        v99[1] = 3221225472;
        v99[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_3;
        v99[3] = &unk_1E7C36EC8;
        v99[4] = self;
        v47 = [MEMORY[0x1E695DF20] fc_dictionary:v99];
        [(FCCKBatchedMultiFetchQueryOperation *)v20 setKnownRecordIDsToEtags:v47];
      }

      else
      {
        v34 = [(FCRecordChainFetchOperation *)self topLevelRecordIDs];
        [v31 addObjectsFromArray:v34];
      }

      v48 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v31];
      v49 = [(FCRecordChainFetchOperation *)self linkKeysByRecordType];
      v50 = [v49 allKeys];
      [v48 addObjectsFromArray:v50];

      v51 = [MEMORY[0x1E695DFA8] set];
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v52 = v48;
      v53 = [v52 countByEnumeratingWithState:&v95 objects:&aBlock count:16];
      if (v53)
      {
        v54 = *v96;
        do
        {
          for (i = 0; i != v53; ++i)
          {
            if (*v96 != v54)
            {
              objc_enumerationMutation(v52);
            }

            v56 = [(FCRecordChainFetchOperation *)&self->super.super.super.isa _recordSourceForRecordType:?];
            v57 = objc_opt_class();

            if ([v57 supportsDeletions])
            {
              v58 = [v57 canaryRecordName];
              [v31 addObject:v58];
              [v51 addObject:v58];
            }
          }

          v53 = [v52 countByEnumeratingWithState:&v95 objects:&aBlock count:16];
        }

        while (v53);
      }

      [(FCCKBatchedMultiFetchQueryOperation *)v20 setRecordIDs:v31];
      v94[0] = MEMORY[0x1E69E9820];
      v94[1] = 3221225472;
      v94[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_27;
      v94[3] = &unk_1E7C36D40;
      v94[4] = self;
      v59 = [MEMORY[0x1E695DEC8] fc_array:v94];
      [(FCCKBatchedMultiFetchQueryOperation *)v20 setRecordSpecs:v59];

      objc_initWeak(&location, v20);
      v91[0] = 0;
      v91[1] = v91;
      v91[2] = 0x2020000000;
      v92 = 0;
      newValue[0] = MEMORY[0x1E69E9820];
      newValue[1] = 3221225472;
      newValue[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_5;
      newValue[3] = &unk_1E7C3F6F8;
      v61 = v51;
      v89 = v61;
      v90 = v91;
      if (v20)
      {
        objc_setProperty_nonatomic_copy(v20, v60, newValue, 456);
      }

      v62 = objc_opt_new();
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_41;
      v86[3] = &unk_1E7C36D68;
      v64 = v62;
      v87 = v64;
      if (v20)
      {
        objc_setProperty_nonatomic_copy(v20, v63, v86, 448);
      }

      v77 = MEMORY[0x1E69E9820];
      v78 = 3221225472;
      v79 = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_2_43;
      v80 = &unk_1E7C3F7E8;
      v81 = self;
      objc_copyWeak(&v85, &location);
      v65 = v64;
      v82 = v65;
      v67 = v61;
      v83 = v67;
      v84 = v91;
      if (v20)
      {
        objc_setProperty_nonatomic_copy(v20, v66, &v77, 464);
      }

      [(FCOperation *)self associateChildOperation:v20];
      [(FCOperation *)v20 start];

      objc_destroyWeak(&v85);
      _Block_object_dispose(v91, 8);
      objc_destroyWeak(&location);

      goto LABEL_43;
    }

    [(FCRecordChainFetchOperation *)self _finalizeResultFromCachedRecords];
    v45 = self->_cachedRecords;
    if ([(FCHeldRecords *)v45 count])
    {
      v46 = [(FCRecordChainFetchOperation *)self shouldReturnErrorWhenSomeRecordsMissing];

      if (!v46)
      {
        [(FCOperation *)self finishedPerformingOperationWithError:0];
LABEL_43:

LABEL_44:
        v69 = *MEMORY[0x1E69E9840];
        return;
      }
    }

    else
    {
    }

    v68 = [(FCRecordChainFetchOperation *)self _errorForMissingRecordNames:v75];
    [(FCOperation *)self finishedPerformingOperationWithError:v68];

    goto LABEL_43;
  }

  [(FCRecordChainFetchOperation *)self _finalizeResultFromCachedRecords];
  v35 = [MEMORY[0x1E695DFA8] set];
  aBlock = MEMORY[0x1E69E9820];
  v104 = 3221225472;
  v105 = __65__FCRecordChainFetchOperation__recordIDsMissingFromCachedRecords__block_invoke;
  v106 = &unk_1E7C3F658;
  v36 = v35;
  v107 = v36;
  v37 = _Block_copy(&aBlock);
  v77 = MEMORY[0x1E69E9820];
  v78 = 3221225472;
  v79 = __65__FCRecordChainFetchOperation__recordIDsMissingFromCachedRecords__block_invoke_2;
  v80 = &unk_1E7C3F680;
  v81 = self;
  v38 = _Block_copy(&v77);
  v39 = MEMORY[0x1E695DFD8];
  v40 = [(FCRecordChainFetchOperation *)self topLevelRecordIDs];
  v41 = [v39 setWithArray:v40];
  v42 = [MEMORY[0x1E695DFA8] set];
  [(FCRecordChainFetchOperation *)self _walkRecordChainStartingWithRecordIDs:v41 visitedRecordIDs:v42 recordsLookupBlock:v38 visitorBlock:v37];

  v76 = v36;
  if (![(FCRecordChainFetchOperation *)v76 count])
  {
    goto LABEL_20;
  }

  v43 = self->_cachedRecords;
  if (![(FCHeldRecords *)v43 count])
  {

    goto LABEL_46;
  }

  v44 = [(FCRecordChainFetchOperation *)self shouldReturnErrorWhenSomeRecordsMissing];

  if (v44)
  {
LABEL_46:
    v70 = [(FCRecordChainFetchOperation *)v76 allObjects];
    v71 = [(FCRecordChainFetchOperation *)self _errorForMissingRecordNames:v70];

    [(FCOperation *)self finishedPerformingOperationWithError:v71];
    goto LABEL_47;
  }

LABEL_20:
  [(FCOperation *)self finishedPerformingOperationWithError:0];
LABEL_47:
  v72 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldIgnoreCache
{
  v2 = [a1 cachePolicy];
  v3 = [v2 cachePolicy];

  if (v3 != 1)
  {
    return 0;
  }

  v4 = [a1 cachePoliciesByRecordID];
  v5 = [v4 count];

  if (v5)
  {
    return 0;
  }

  v6 = [a1 cachePoliciesByRecordType];
  v7 = [v6 count];

  if (v7)
  {
    return 0;
  }

  v10 = [a1 dynamicCachePolicyBlock];
  v8 = v10 == 0;

  return v8;
}

- (void)_finalizeResultFromCachedRecords
{
  if (a1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__FCRecordChainFetchOperation__finalizeResultFromCachedRecords__block_invoke;
    aBlock[3] = &unk_1E7C3A618;
    aBlock[4] = a1;
    v2 = _Block_copy(aBlock);
    v3 = v2[2]();
    v4 = (v2[2])(v2);
    v5 = *(a1 + 496);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63__FCRecordChainFetchOperation__finalizeResultFromCachedRecords__block_invoke_4;
    v16[3] = &unk_1E7C3F8C8;
    v6 = v3;
    v17 = v6;
    v7 = v4;
    v18 = v7;
    [v5 enumerateRecordsAndInterestTokensWithBlock:v16];
    v8 = MEMORY[0x1E695DF20];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__FCRecordChainFetchOperation__finalizeResultFromCachedRecords__block_invoke_5;
    v13[3] = &unk_1E7C37D00;
    v14 = v6;
    v15 = v7;
    v9 = v7;
    v10 = v6;
    v11 = [v8 fc_dictionary:v13];
    v12 = *(a1 + 528);
    *(a1 + 528) = v11;
  }
}

id __63__FCRecordChainFetchOperation__finalizeResultFromCachedRecords__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) linkKeysByRecordType];
  v3 = [v2 allKeys];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__FCRecordChainFetchOperation__finalizeResultFromCachedRecords__block_invoke_2;
  v6[3] = &unk_1E7C3F880;
  v6[4] = *(a1 + 32);
  v4 = [v3 fc_dictionaryWithKeyBlock:v6 valueBlock:&__block_literal_global_63_0];

  return v4;
}

uint64_t __63__FCRecordChainFetchOperation__finalizeResultFromCachedRecords__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(FCRecordChainFetchOperation *)*(a1 + 32) _pbRecordTypeForRecordType:a2];

  return [v2 numberWithInt:v3];
}

id __63__FCRecordChainFetchOperation__finalizeResultFromCachedRecords__block_invoke_3()
{
  v0 = objc_opt_new();

  return v0;
}

void __63__FCRecordChainFetchOperation__finalizeResultFromCachedRecords__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v11 = [v6 base];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v11, "recordType")}];
  v8 = [v11 identifier];
  v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
  [v9 setObject:v6 forKeyedSubscript:v8];

  v10 = [*(a1 + 40) objectForKeyedSubscript:v7];
  [v10 setObject:v5 forKeyedSubscript:v8];
}

void __63__FCRecordChainFetchOperation__finalizeResultFromCachedRecords__block_invoke_5(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [FCHeldRecords alloc];
        v10 = [*(a1 + 32) objectForKeyedSubscript:v8];
        v11 = [*(a1 + 40) objectForKeyedSubscript:v8];
        v12 = [(FCHeldRecords *)v9 initWithRecordsByID:v10 interestTokensByID:v11];

        [v3 setObject:v12 forKeyedSubscript:v8];
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x1E69E9840];
}

id __65__FCRecordChainFetchOperation__recordIDsMissingFromCachedRecords__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [(FCRecordChainFetchOperation *)*(a1 + 32) _pbRecordTypeForRecordType:a2];
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[62];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__FCRecordChainFetchOperation__recordIDsMissingFromCachedRecords__block_invoke_3;
  v7[3] = &__block_descriptor_36_e8_B16__0_8l;
  v8 = v3;
  v5 = [v4 heldRecordsPassingTest:v7];

  return v5;
}

BOOL __65__FCRecordChainFetchOperation__recordIDsMissingFromCachedRecords__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 base];
  v4 = [v3 recordType] == *(a1 + 32);

  return v4;
}

void __65__FCRecordChainFetchOperation__recordIDsMissingFromCachedRecords__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E695DFA8];
  v6 = a3;
  v8 = [v5 setWithArray:a2];
  v7 = [v6 allRecordIDs];

  [v8 fc_removeObjectsFromArray:v7];
  [*(a1 + 32) unionSet:v8];
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(FCRecordChainFetchOperation *)*(a1 + 32) _recordSourceForRecordType:a2];
  v7 = [v6 fetchErrorsByKey];
  v8 = [v7 readOnlyDictionary];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v8 objectForKeyedSubscript:{v14, v18}];
        v16 = v15;
        if (!v15 || ([v15 fc_isCKUnknownItemError] & 1) == 0)
        {
          [*(a1 + 40) addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) linkKeysByRecordType];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_2_28;
  v6[3] = &unk_1E7C3F6D0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_2_28(uint64_t a1, void *a2, void *a3)
{
  v32[3] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [(FCRecordChainFetchOperation *)v5 _recordSourceForRecordType:v7];
  v9 = [v8 localizedLanguageSpecificKeysByOriginalKey];
  v10 = [v8 localizedKeysByOriginalKey];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_3_29;
  v30[3] = &unk_1E7C38D38;
  v31 = v10;
  v11 = v10;
  v12 = [v6 fc_arrayByTransformingWithBlock:v30];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_4;
  v28 = &unk_1E7C38D38;
  v29 = v9;
  v13 = v9;
  v14 = [v6 fc_arrayByTransformingWithBlock:&v25];
  v32[0] = v6;
  v32[1] = v12;
  v32[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:{3, v25, v26, v27, v28}];
  v16 = [v15 fc_arrayByFlattening];

  v17 = objc_opt_new();
  v19 = v17;
  if (v17)
  {
    objc_setProperty_nonatomic_copy(v17, v18, v7, 16);
  }

  v20 = [v8 desiredKeys];
  v22 = v20;
  if (v19)
  {
    objc_setProperty_nonatomic_copy(v19, v21, v20, 24);

    objc_setProperty_nonatomic_copy(v19, v23, v16, 32);
  }

  else
  {
  }

  [*(a1 + 40) addObject:v19];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_collectActualTopLevelRecordIDsFromRecordIDs:(void *)a3 visitedRecordIDs:
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if ([(FCRecordChainFetchOperation *)a1 _shouldIgnoreCache])
    {
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __93__FCRecordChainFetchOperation__collectActualTopLevelRecordIDsFromRecordIDs_visitedRecordIDs___block_invoke;
      v58[3] = &unk_1E7C36C58;
      v58[4] = a1;
      v59 = v5;
      __93__FCRecordChainFetchOperation__collectActualTopLevelRecordIDsFromRecordIDs_visitedRecordIDs___block_invoke(v58);
    }

    else
    {
      v7 = [MEMORY[0x1E695DFA8] set];
      v39 = v6;
      [v6 unionSet:v5];
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v40 = v5;
      obj = v5;
      v47 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
      if (v47)
      {
        v45 = a1;
        v46 = *v55;
        do
        {
          v48 = 0;
          do
          {
            if (*v55 != v46)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v54 + 1) + 8 * v48);
            v9 = [a1[62] recordWithID:v8];
            v10 = [(FCRecordChainFetchOperation *)a1 _recordTypeForRecordID:v8];
            v11 = [(FCRecordChainFetchOperation *)a1 _recordSourceForRecordType:v10];
            v12 = [a1 dynamicCachePolicyBlock];

            if (!v12)
            {
              goto LABEL_11;
            }

            v13 = [a1 dynamicCachePolicyBlock];
            [v9 base];
            v14 = v11;
            v15 = v10;
            v17 = v16 = v9;
            (v13)[2](v13, [v17 recordType], v16);
            v19 = v18 = v8;

            v9 = v16;
            v10 = v15;
            v11 = v14;
            a1 = v45;

            v20 = v19;
            v8 = v18;
            if (!v20)
            {
LABEL_11:
              v21 = [a1 cachePoliciesByRecordID];
              v22 = v8;
              v23 = [v21 objectForKey:v8];

              if (v23 || ([a1 cachePoliciesByRecordType], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "objectForKey:", v10), v23 = objc_claimAutoreleasedReturnValue(), v24, v23))
              {
                v20 = v23;
              }

              else
              {
                v20 = [a1 cachePolicy];
              }

              v8 = v22;
            }

            v49 = v20;
            if (v9)
            {
              v25 = [v11 isRecordStale:v9 withCachePolicy:v20];
              v20 = v49;
              v26 = v25 ^ 1;
            }

            else
            {
              v26 = 0;
            }

            v27 = [v20 cachePolicy];
            if ((v26 & 1) != 0 || v27 == 3)
            {
              if (!v9 && v27 == 3)
              {
                [a1[65] addObject:v8];
              }

              [a1[64] addObject:v8];
              v28 = [a1 linkKeysByRecordType];
              v29 = [v28 objectForKey:v10];

              if ([v29 count])
              {
                v42 = v11;
                v43 = v10;
                v44 = v9;
                v30 = [v11 keyValueRepresentationOfRecord:v9];
                v50 = 0u;
                v51 = 0u;
                v52 = 0u;
                v53 = 0u;
                v31 = v29;
                v32 = [v31 countByEnumeratingWithState:&v50 objects:v60 count:16];
                if (v32)
                {
                  v33 = v32;
                  v34 = *v51;
                  do
                  {
                    for (i = 0; i != v33; ++i)
                    {
                      if (*v51 != v34)
                      {
                        objc_enumerationMutation(v31);
                      }

                      v36 = [v30 valueForKey:*(*(&v50 + 1) + 8 * i)];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v7 addObject:v36];
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [v7 addObjectsFromArray:v36];
                        }
                      }
                    }

                    v33 = [v31 countByEnumeratingWithState:&v50 objects:v60 count:16];
                  }

                  while (v33);
                }

                v9 = v44;
                a1 = v45;
                v11 = v42;
                v10 = v43;
              }
            }

            else
            {
              [a1[63] addObject:v8];
            }

            ++v48;
          }

          while (v48 != v47);
          v37 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
          v47 = v37;
        }

        while (v37);
      }

      v6 = v39;
      [v7 minusSet:v39];
      if ([v7 count])
      {
        [(FCRecordChainFetchOperation *)a1 _collectActualTopLevelRecordIDsFromRecordIDs:v7 visitedRecordIDs:v39];
      }

      v5 = v40;
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (NSArray)networkEvents
{
  if (self)
  {
    self = self->_mutableNetworkEvents;
  }

  return self;
}

- (void)operationWillFinishWithError:(id)a3
{
  v8 = a3;
  v4 = [(FCRecordChainFetchOperation *)self recordChainCompletionHandler];

  if (v4)
  {
    v5 = [(FCRecordChainFetchOperation *)self recordChainCompletionHandler];
    v6 = v5;
    if (self)
    {
      resultHeldRecordsByType = self->_resultHeldRecordsByType;
    }

    else
    {
      resultHeldRecordsByType = 0;
    }

    (*(v5 + 16))(v5, resultHeldRecordsByType, v8);
  }
}

void __66__FCRecordChainFetchOperation__collectCachedRecordsFromRecordIDs___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(FCHeldRecords);
  [(FCRecordChainFetchOperation *)*(a1 + 32) setCachedRecords:v2];
}

- (void)setCachedRecords:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 496), a2);
  }
}

void __66__FCRecordChainFetchOperation__collectCachedRecordsFromRecordIDs___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[62];
  }

  v6 = v5;
  v7 = [FCHeldRecords heldRecordsByMerging:v6 with:a3];
  [(FCRecordChainFetchOperation *)*(a1 + 32) setCachedRecords:v7];
}

id __66__FCRecordChainFetchOperation__collectCachedRecordsFromRecordIDs___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v5 numberWithInt:{-[FCRecordChainFetchOperation _pbRecordTypeForRecordType:](v6, a2)}];
  v9 = [*(a1 + 32) cachedRecordsLookupBlock];
  v10 = (v9)[2](v9, v8, v7);

  return v10;
}

- (uint64_t)_pbRecordTypeForRecordType:(uint64_t)result
{
  if (result)
  {
    v2 = [*(result + 488) objectForKey:a2];
    v3 = [v2 intValue];

    return v3;
  }

  return result;
}

id __66__FCRecordChainFetchOperation__collectCachedRecordsFromRecordIDs___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [(FCRecordChainFetchOperation *)v4 _recordSourceForRecordType:a2];
  v7 = [v6 cachedRecordsWithIDs:v5];

  return v7;
}

- (id)_recordSourceForRecordType:(id *)a1
{
  if (a1)
  {
    a1 = [a1[60] objectForKey:a2];
    v2 = vars8;
  }

  return a1;
}

- (void)_walkRecordChainStartingWithRecordIDs:(void *)a3 visitedRecordIDs:(void *)a4 recordsLookupBlock:(void *)a5 visitorBlock:
{
  v86 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v48 = a3;
  v46 = a4;
  v47 = a5;
  v10 = [v9 mutableCopy];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v70 objects:v85 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = MEMORY[0x1E69E9C10];
    v14 = *v71;
    do
    {
      v15 = 0;
      do
      {
        if (*v71 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v70 + 1) + 8 * v15);
        v17 = [(FCRecordChainFetchOperation *)a1 _recordTypeForRecordID:v16];
        if (v17)
        {
          v18 = [a1 linkKeysByRecordType];
          v19 = [v18 objectForKeyedSubscript:v17];

          if (v19)
          {
            goto LABEL_12;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"missing link entry for record ID %@", v16];
            *buf = 136315906;
            v78 = "[FCRecordChainFetchOperation _walkRecordChainStartingWithRecordIDs:visitedRecordIDs:recordsLookupBlock:visitorBlock:]";
            v79 = 2080;
            v80 = "FCRecordChainFetchOperation.m";
            v81 = 1024;
            v82 = 631;
            v83 = 2114;
            v84 = v20;
            v21 = v13;
LABEL_15:
            _os_log_error_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }
        }

        else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown type for record ID %@", v16];
          *buf = 136315906;
          v78 = "[FCRecordChainFetchOperation _walkRecordChainStartingWithRecordIDs:visitedRecordIDs:recordsLookupBlock:visitorBlock:]";
          v79 = 2080;
          v80 = "FCRecordChainFetchOperation.m";
          v81 = 1024;
          v82 = 626;
          v83 = 2114;
          v84 = v20;
          v21 = v13;
          goto LABEL_15;
        }

        [v10 removeObject:v16];
LABEL_12:

        ++v15;
      }

      while (v12 != v15);
      v22 = [obj countByEnumeratingWithState:&v70 objects:v85 count:16];
      v12 = v22;
    }

    while (v22);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v49 = [a1 linkKeysByRecordType];
  v23 = [v49 countByEnumeratingWithState:&v66 objects:v76 count:16];
  v24 = v46;
  if (v23)
  {
    v25 = v23;
    v26 = *v67;
    v50 = a1;
    while (2)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v67 != v26)
        {
          objc_enumerationMutation(v49);
        }

        v28 = *(*(&v66 + 1) + 8 * i);
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __118__FCRecordChainFetchOperation__walkRecordChainStartingWithRecordIDs_visitedRecordIDs_recordsLookupBlock_visitorBlock___block_invoke;
        v65[3] = &unk_1E7C3F810;
        v65[4] = v50;
        v65[5] = v28;
        v29 = [v10 fc_arrayOfObjectsPassingTest:v65];
        if ([v29 count])
        {
          [v10 fc_removeObjectsFromArray:v29];
          [v48 addObjectsFromArray:v29];
          v30 = objc_autoreleasePoolPush();
          v31 = (*(v46 + 2))(v46, v28, v29);
          v47[2](v47, v29, v31);
          a1 = v50;
          v32 = [v50 linkKeysByRecordType];
          v33 = [v32 objectForKey:v28];

          v54 = v33;
          if ([v33 count])
          {
            v44 = v30;
            v45 = v29;
            v53 = [(FCRecordChainFetchOperation *)v50 _recordSourceForRecordType:v28];
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v43 = v31;
            v51 = [v31 allRecords];
            v55 = [v51 countByEnumeratingWithState:&v61 objects:v75 count:16];
            if (v55)
            {
              v52 = *v62;
              do
              {
                for (j = 0; j != v55; ++j)
                {
                  if (*v62 != v52)
                  {
                    objc_enumerationMutation(v51);
                  }

                  v35 = [v53 keyValueRepresentationOfRecord:*(*(&v61 + 1) + 8 * j)];
                  v57 = 0u;
                  v58 = 0u;
                  v59 = 0u;
                  v60 = 0u;
                  v36 = v54;
                  v37 = [v36 countByEnumeratingWithState:&v57 objects:v74 count:16];
                  if (v37)
                  {
                    v38 = v37;
                    v39 = *v58;
                    do
                    {
                      for (k = 0; k != v38; ++k)
                      {
                        if (*v58 != v39)
                        {
                          objc_enumerationMutation(v36);
                        }

                        v41 = [v35 valueForKey:*(*(&v57 + 1) + 8 * k)];
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [v10 addObject:v41];
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [v10 addObjectsFromArray:v41];
                          }
                        }
                      }

                      v38 = [v36 countByEnumeratingWithState:&v57 objects:v74 count:16];
                    }

                    while (v38);
                  }
                }

                v55 = [v51 countByEnumeratingWithState:&v61 objects:v75 count:16];
              }

              while (v55);
            }

            v29 = v45;
            v24 = v46;
            a1 = v50;
            v31 = v43;
            v30 = v44;
          }

          objc_autoreleasePoolPop(v30);
          goto LABEL_47;
        }
      }

      v25 = [v49 countByEnumeratingWithState:&v66 objects:v76 count:16];
      a1 = v50;
      if (v25)
      {
        continue;
      }

      break;
    }
  }

LABEL_47:

  [v10 minusSet:v48];
  if ([v10 count])
  {
    [(FCRecordChainFetchOperation *)a1 _walkRecordChainStartingWithRecordIDs:v10 visitedRecordIDs:v48 recordsLookupBlock:v24 visitorBlock:v47];
  }

  v42 = *MEMORY[0x1E69E9840];
}

uint64_t __93__FCRecordChainFetchOperation__collectActualTopLevelRecordIDsFromRecordIDs_visitedRecordIDs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = v2;
    objc_storeStrong((v4 + 504), v2);
    v3 = v6;
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (id)_recordTypeForRecordID:(uint64_t)a1
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 472);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if ([v10 recognizesRecordID:v3])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v15 objects:v27 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v11 = [v10 recordType];

      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
LABEL_10:
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unrecognized record ID %@", v3];
      *buf = 136315906;
      v20 = "[FCRecordChainFetchOperation _recordTypeForRecordID:]";
      v21 = 2080;
      v22 = "FCRecordChainFetchOperation.m";
      v23 = 1024;
      v24 = 824;
      v25 = 2114;
      v26 = v14;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v11 = 0;
LABEL_15:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_errorForMissingRecordNames:(uint64_t)a1
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__FCRecordChainFetchOperation__errorForMissingRecordNames___block_invoke_2;
    v9[3] = &unk_1E7C3F910;
    v9[4] = a1;
    v2 = [a2 fc_dictionaryWithKeyBlock:&__block_literal_global_78 valueBlock:v9];
    v3 = MEMORY[0x1E696ABC0];
    v4 = *MEMORY[0x1E695B740];
    v10 = *MEMORY[0x1E695B798];
    v11[0] = v2;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v6 = [v3 errorWithDomain:v4 code:2 userInfo:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_3(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 496);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 allRecords];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    v10 = MEMORY[0x1E69E9C10];
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v19 + 1) + 8 * v11) base];
        v13 = [v12 changeTag];

        if (!v13 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "base.changeTag"];
          *buf = 136315906;
          v24 = "[FCRecordChainFetchOperation _issueCloudRequestIfNeeded]_block_invoke_3";
          v25 = 2080;
          v26 = "FCRecordChainFetchOperation.m";
          v27 = 1024;
          v28 = 356;
          v29 = 2114;
          v30 = v17;
          _os_log_error_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v14 = [v12 changeTag];

        if (v14)
        {
          v15 = [v12 changeTag];
          v16 = [v12 identifier];
          [v3 setObject:v15 forKey:v16];
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if ([*(a1 + 32) containsObject:v15] && objc_msgSend(v8, "containsObject:", v15))
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          if (!NSClassFromString(&cfstr_Xctest.isa) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            v17 = objc_alloc(MEMORY[0x1E696AEC0]);
            v18 = [v9 requestUUID];
            v19 = [v17 initWithFormat:@"a canary was missing from a MultiFetch response, canary=%@, uuid=%@", v15, v18, v20];
            *buf = 136315906;
            v25 = "[FCRecordChainFetchOperation _issueCloudRequestIfNeeded]_block_invoke_5";
            v26 = 2080;
            v27 = "FCRecordChainFetchOperation.m";
            v28 = 1024;
            v29 = 419;
            v30 = 2114;
            v31 = v19;
            _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: MissingCanary) : %s %s:%d %{public}@", buf, 0x26u);
          }

          goto LABEL_14;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v32 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v16 = *MEMORY[0x1E69E9840];
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_2_43(uint64_t a1, void *a2, void *a3)
{
  v116 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[67];
  }

  v8 = v7;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v10 = [(FCCKBatchedMultiFetchQueryOperation *)WeakRetained networkEvents];
  [v8 addObjectsFromArray:v10];

  if (!v6 || (![*(a1 + 32) shouldFailOnLimitExceededError] || !objc_msgSend(v6, "fc_isCKErrorWithCode:", 27)) && !objc_msgSend(*(a1 + 32), "shouldReturnErrorWhenSomeRecordsMissing"))
  {
    v86 = v5;
    v88 = [MEMORY[0x1E695DFA8] set];
    v87 = [MEMORY[0x1E695DFA8] set];
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v12 = [*(a1 + 40) readOnlyArray];
    v13 = [v12 countByEnumeratingWithState:&v105 objects:v115 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v106;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v106 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v105 + 1) + 8 * i);
          v18 = [v17 recordID];
          v19 = [v18 recordName];
          v20 = [v88 containsObject:v19];

          if ((v20 & 1) == 0)
          {
            v21 = *(a1 + 48);
            v22 = [v17 recordID];
            v23 = [v22 recordName];
            LOBYTE(v21) = [v21 containsObject:v23];

            v24 = v87;
            if ((v21 & 1) == 0)
            {
              v25 = [v17 recordType];
              v26 = [v11 objectForKeyedSubscript:v25];

              if (!v26)
              {
                v27 = [MEMORY[0x1E695DF70] array];
                v28 = [v17 recordType];
                [v11 setObject:v27 forKeyedSubscript:v28];
              }

              v29 = [v17 recordType];
              v30 = [v11 objectForKeyedSubscript:v29];
              [v30 addObject:v17];

              v24 = v88;
            }

            v31 = [v17 recordID];
            v32 = [v31 recordName];
            [v24 addObject:v32];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v105 objects:v115 count:16];
      }

      while (v14);
    }

    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_3_44;
    v104[3] = &unk_1E7C3F720;
    v104[4] = *(a1 + 32);
    [v11 enumerateKeysAndObjectsUsingBlock:v104];

    v33 = *(a1 + 32);
    if (v33)
    {
      v34 = [MEMORY[0x1E695DFA8] set];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __62__FCRecordChainFetchOperation__filterOrphansFromCachedRecords__block_invoke;
      aBlock[3] = &unk_1E7C3F658;
      v35 = v34;
      v113 = v35;
      v36 = _Block_copy(aBlock);
      v111[0] = MEMORY[0x1E69E9820];
      v111[1] = 3221225472;
      v111[2] = __62__FCRecordChainFetchOperation__filterOrphansFromCachedRecords__block_invoke_2;
      v111[3] = &unk_1E7C3F680;
      v111[4] = v33;
      v37 = _Block_copy(v111);
      v38 = MEMORY[0x1E695DFD8];
      v39 = [v33 topLevelRecordIDs];
      v40 = [v38 setWithArray:v39];
      v41 = [MEMORY[0x1E695DFA8] set];
      [(FCRecordChainFetchOperation *)v33 _walkRecordChainStartingWithRecordIDs:v40 visitedRecordIDs:v41 recordsLookupBlock:v37 visitorBlock:v36];

      v42 = v33[62];
      v109[0] = MEMORY[0x1E69E9820];
      v109[1] = 3221225472;
      v109[2] = __62__FCRecordChainFetchOperation__filterOrphansFromCachedRecords__block_invoke_4;
      v109[3] = &unk_1E7C3F858;
      v110 = v35;
      v43 = v35;
      v44 = v42;
      v45 = [v44 heldRecordsPassingTest:v109];
      v46 = v33[62];
      v33[62] = v45;
    }

    v6 = v85;
    v5 = v86;
    if (v85 && ((v47 = *(a1 + 32)) == 0 ? (v48 = 0) : (v48 = *(v47 + 496)), ![v48 count]))
    {
      v79 = *(a1 + 32);
      v80 = v85;
    }

    else
    {
      v49 = [MEMORY[0x1E695DF90] dictionary];
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v50 = *(a1 + 32);
      if (v50)
      {
        v51 = *(v50 + 496);
      }

      else
      {
        v51 = 0;
      }

      v52 = [v51 allRecords];
      v53 = [v52 countByEnumeratingWithState:&v100 objects:v114 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v101;
        do
        {
          v56 = 0;
          do
          {
            if (*v101 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = [*(*(&v100 + 1) + 8 * v56) base];
            v58 = [v57 identifier];

            v59 = [(FCRecordChainFetchOperation *)*(a1 + 32) _recordTypeForRecordID:v58];
            if (([v88 containsObject:v58] & 1) == 0)
            {
              v60 = *(a1 + 32);
              v61 = v60 ? *(v60 + 512) : 0;
              if (([v61 containsObject:v58] & 1) == 0)
              {
                v62 = [v49 objectForKeyedSubscript:v59];

                if (!v62)
                {
                  v63 = [MEMORY[0x1E695DF70] array];
                  [v49 setObject:v63 forKeyedSubscript:v59];
                }

                v64 = [v49 objectForKeyedSubscript:v59];
                [v64 addObject:v58];
              }
            }

            ++v56;
          }

          while (v54 != v56);
          v65 = [v52 countByEnumeratingWithState:&v100 objects:v114 count:16];
          v54 = v65;
        }

        while (v65);
      }

      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 3221225472;
      v99[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_4_45;
      v99[3] = &unk_1E7C3F720;
      v99[4] = *(a1 + 32);
      [v49 enumerateKeysAndObjectsUsingBlock:v99];

      v5 = v86;
      if ([v86 count])
      {
        v98[0] = MEMORY[0x1E69E9820];
        v98[1] = 3221225472;
        v98[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_5_46;
        v98[3] = &unk_1E7C3F6A8;
        v98[4] = *(a1 + 32);
        v66 = [v86 fc_dictionaryOfSortedSetsWithKeyBlock:v98];
        v97[0] = MEMORY[0x1E69E9820];
        v97[1] = 3221225472;
        v97[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_6;
        v97[3] = &unk_1E7C3F748;
        v67 = *(a1 + 56);
        v97[4] = *(a1 + 32);
        v97[5] = v67;
        [v66 enumerateKeysAndObjectsUsingBlock:v97];
      }

      [(FCRecordChainFetchOperation *)*(a1 + 32) _finalizeResultFromCachedRecords];
      v6 = v85;
      if ([v86 count])
      {
        v68 = [v86 allObjects];
        v94[0] = MEMORY[0x1E69E9820];
        v94[1] = 3221225472;
        v94[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_7;
        v94[3] = &unk_1E7C3F770;
        v69 = v85;
        v70 = *(a1 + 32);
        v95 = v69;
        v96 = v70;
        v71 = [v68 fc_dictionaryWithValueBlock:v94];

        v93[0] = MEMORY[0x1E69E9820];
        v93[1] = 3221225472;
        v93[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_8;
        v93[3] = &unk_1E7C3F798;
        v93[4] = *(a1 + 32);
        v72 = [v71 fc_sortedEntriesWithKeyBlock:v93];
        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_9;
        v89[3] = &unk_1E7C3F7C0;
        v73 = v69;
        v74 = *(a1 + 56);
        v75 = *(a1 + 32);
        v90 = v73;
        v91 = v75;
        v92 = v74;
        [v72 enumerateKeysAndObjectsUsingBlock:v89];
        v76 = *(a1 + 32);
        if (v76)
        {
          v76 = v76[62];
        }

        v77 = v76;
        if ([v77 count])
        {
          v78 = [*(a1 + 32) shouldReturnErrorWhenSomeRecordsMissing];

          if ((v78 & 1) == 0)
          {
            [*(a1 + 32) finishedPerformingOperationWithError:0];
LABEL_58:

            goto LABEL_59;
          }
        }

        else
        {
        }

        v81 = *(a1 + 32);
        v82 = [v86 allObjects];
        v83 = [(FCRecordChainFetchOperation *)v81 _errorForMissingRecordNames:v82];

        [*(a1 + 32) finishedPerformingOperationWithError:v83];
        goto LABEL_58;
      }

      v79 = *(a1 + 32);
      v80 = 0;
    }

    [v79 finishedPerformingOperationWithError:v80];
LABEL_59:

    goto LABEL_60;
  }

  [*(a1 + 32) finishedPerformingOperationWithError:v6];
LABEL_60:

  v84 = *MEMORY[0x1E69E9840];
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_3_44(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v11 = [(FCRecordChainFetchOperation *)v5 _recordSourceForRecordType:a2];
  if ([*(a1 + 32) shouldBypassRecordSourcePersistence])
  {
    [v11 convertRecords:v6];
  }

  else
  {
    [v11 saveRecords:v6];
  }
  v7 = ;

  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[62];
  }

  v9 = v8;
  v10 = [FCHeldRecords heldRecordsByMerging:v7 with:v9];
  [(FCRecordChainFetchOperation *)*(a1 + 32) setCachedRecords:v10];
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_4_45(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [(FCRecordChainFetchOperation *)v4 _recordSourceForRecordType:a2];
  [v6 updateFetchDateForRecordIDs:v5];
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = [(FCRecordChainFetchOperation *)*(a1 + 32) _recordSourceForRecordType:a2];
  if ([objc_opt_class() supportsDeletions] && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v6 = [v5 deleteRecordsWithIDs:v10];
    v7 = *(a1 + 32);
    if (v7)
    {
      v7 = v7[62];
    }

    v8 = v7;
    v9 = [FCHeldRecords heldRecordsByMerging:v6 with:v8];
    [(FCRecordChainFetchOperation *)*(a1 + 32) setCachedRecords:v9];
  }
}

id __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [(FCRecordChainFetchOperation *)*(a1 + 40) _partialFetchErrorForMissingRecordName:a2];
  }

  return v3;
}

- (id)_partialFetchErrorForMissingRecordName:(uint64_t)a1
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Record %@ missing from MultiFetch query", a2];
    v3 = MEMORY[0x1E696ABC0];
    v4 = *MEMORY[0x1E695B740];
    v9 = *MEMORY[0x1E696A578];
    v10[0] = v2;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v3 errorWithDomain:v4 code:11 userInfo:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (*(a1 + 32) || (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v6 = [(FCRecordChainFetchOperation *)*(a1 + 40) _recordSourceForRecordType:v8];
    v7 = [v6 fetchErrorsByKey];
    [v7 addEntriesFromDictionary:v5];
  }
}

uint64_t __118__FCRecordChainFetchOperation__walkRecordChainStartingWithRecordIDs_visitedRecordIDs_recordsLookupBlock_visitorBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [(FCRecordChainFetchOperation *)*(a1 + 32) _recordTypeForRecordID:a2];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  return v4;
}

void __62__FCRecordChainFetchOperation__filterOrphansFromCachedRecords__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allRecordIDs];
  [v3 addObjectsFromArray:v4];
}

id __62__FCRecordChainFetchOperation__filterOrphansFromCachedRecords__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [(FCRecordChainFetchOperation *)*(a1 + 32) _pbRecordTypeForRecordType:a2];
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[62];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__FCRecordChainFetchOperation__filterOrphansFromCachedRecords__block_invoke_3;
  v7[3] = &__block_descriptor_36_e8_B16__0_8l;
  v8 = v3;
  v5 = [v4 heldRecordsPassingTest:v7];

  return v5;
}

BOOL __62__FCRecordChainFetchOperation__filterOrphansFromCachedRecords__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 base];
  v4 = [v3 recordType] == *(a1 + 32);

  return v4;
}

uint64_t __62__FCRecordChainFetchOperation__filterOrphansFromCachedRecords__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 base];
  v4 = [v3 identifier];
  v5 = [v2 containsObject:v4];

  return v5;
}

id __59__FCRecordChainFetchOperation__errorForMissingRecordNames___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695BA70];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v4 fc_initSafeWithRecordName:v3];

  return v5;
}

id __59__FCRecordChainFetchOperation__errorForMissingRecordNames___block_invoke_2(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 520);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 containsObject:v3];
  v7 = *(a1 + 32);
  if (v6)
  {
    if (v7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Record %@ not cached", v3];
      v9 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A578];
      v15[0] = v8;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v11 = [v9 errorWithDomain:@"FCErrorDomain" code:5 userInfo:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [(FCRecordChainFetchOperation *)v7 _partialFetchErrorForMissingRecordName:v3];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end