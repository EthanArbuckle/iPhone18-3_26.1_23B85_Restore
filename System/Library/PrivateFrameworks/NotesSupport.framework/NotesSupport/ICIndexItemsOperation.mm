@interface ICIndexItemsOperation
- (BOOL)_shouldCommitDeletionWithHasItemsToDeleteThenUpdate:(BOOL)a3 shouldForceCommit:(BOOL)a4;
- (BOOL)_shouldCommitIndexingWithHasItemsToDeleteThenUpdate:(BOOL)a3 shouldForceCommit:(BOOL)a4;
- (ICIndexItemsOperation)init;
- (ICIndexItemsOperation)initWithSearchableIndex:(id)a3 dataSources:(id)a4;
- (id)managedObjectContextForDataSource:(id)a3;
- (void)_commitObjectIDURIsToDeleteForDataSource:(id)a3;
- (void)_commitObjectIDsToIndexForDataSource:(id)a3;
- (void)commitIfNecessaryForDataSource:(id)a3 hasItemsToDeleteThenUpdate:(BOOL)a4 forceCommit:(BOOL)a5;
- (void)main;
- (void)processItems;
@end

@implementation ICIndexItemsOperation

- (ICIndexItemsOperation)init
{
  [(ICIndexItemsOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICIndexItemsOperation)initWithSearchableIndex:(id)a3 dataSources:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = ICIndexItemsOperation;
  v8 = [(ICIndexItemsOperation *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(ICIndexItemsOperation *)v8 setSearchableIndex:v6];
    [(ICIndexItemsOperation *)v9 setDataSources:v7];
    v10 = [MEMORY[0x1E695DF70] array];
    objectIDsToIndex = v9->_objectIDsToIndex;
    v9->_objectIDsToIndex = v10;

    v12 = [MEMORY[0x1E695DF70] array];
    searchableItemsToIndex = v9->_searchableItemsToIndex;
    v9->_searchableItemsToIndex = v12;

    v9->_totalSizeOfSearchableItemsToIndex = 0;
    v14 = [MEMORY[0x1E695DF70] array];
    objectIDURIsToDelete = v9->_objectIDURIsToDelete;
    v9->_objectIDURIsToDelete = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    contextCache = v9->_contextCache;
    v9->_contextCache = v16;
  }

  return v9;
}

- (id)managedObjectContextForDataSource:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [(ICIndexItemsOperation *)self contextCache];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7)
  {
    v7 = [v4 newManagedObjectContext];
    v8 = [(ICIndexItemsOperation *)self contextCache];
    [v8 setObject:v7 forKeyedSubscript:v5];
  }

  return v7;
}

- (void)main
{
  if (ICVerboseSearchLogging())
  {
    v3 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [ICIndexItemsOperation main];
    }
  }

  if ((ICUseCoreDataCoreSpotlightIntegration() & 1) == 0)
  {
    if ([(ICIndexItemsOperation *)self isCancelled])
    {
      v4 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        [ICIndexItemsOperation main];
      }
    }

    else
    {
      [(ICIndexItemsOperation *)self processItems];
      if (!ICVerboseSearchLogging())
      {
        return;
      }

      v4 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        [ICIndexItemsOperation main];
      }
    }
  }
}

- (void)processItems
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

BOOL __37__ICIndexItemsOperation_processItems__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 indexingPriority];
  v6 = [v4 indexingPriority];

  return v5 < v6;
}

void __37__ICIndexItemsOperation_processItems__block_invoke_4(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectIDsToIndex];
  [v2 addObject:*(a1 + 40)];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(a1 + 48);
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v19;
    *&v5 = 138412802;
    v17 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = [*(a1 + 32) searchableItemsToIndex];
        [v10 addObject:v9];

        v11 = [v9 attributeSet];
        v12 = [v11 textContent];
        *(*(*(a1 + 56) + 8) + 24) += [v12 lengthOfBytesUsingEncoding:4];

        v13 = os_log_create("com.apple.notes", "SearchIndexer");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = *(a1 + 32);
          v15 = [v9 uniqueIdentifier];
          v16 = *(*(*(a1 + 56) + 8) + 24);
          *buf = v17;
          v23 = v14;
          v24 = 2112;
          v25 = v15;
          v26 = 2048;
          v27 = v16;
          _os_log_debug_impl(&dword_1D4576000, v13, OS_LOG_TYPE_DEBUG, "%@ item-to-index %@ is %lu bytes", buf, 0x20u);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v6);
  }
}

void __37__ICIndexItemsOperation_processItems__block_invoke_6(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) objectIDURIsToDelete];
    [v2 addObject:*(a1 + 32)];

    if (ICVerboseSearchLogging())
    {
      v3 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        __37__ICIndexItemsOperation_processItems__block_invoke_6_cold_1();
      }
    }
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v17;
      *&v7 = 138412546;
      v15 = v7;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          v12 = [*(a1 + 40) objectIDURIsToDelete];
          [v12 addObject:v11];

          if (ICVerboseSearchLogging())
          {
            v13 = os_log_create("com.apple.notes", "SearchIndexer");
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              v14 = *(a1 + 40);
              *buf = v15;
              v21 = v14;
              v22 = 2112;
              v23 = v11;
              _os_log_debug_impl(&dword_1D4576000, v13, OS_LOG_TYPE_DEBUG, "%@ additional item-to-delete %@", buf, 0x16u);
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v8);
    }
  }
}

- (void)commitIfNecessaryForDataSource:(id)a3 hasItemsToDeleteThenUpdate:(BOOL)a4 forceCommit:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v10 = a3;
  v8 = [(ICIndexItemsOperation *)self _shouldCommitDeletionWithHasItemsToDeleteThenUpdate:v6 shouldForceCommit:v5];
  v9 = [(ICIndexItemsOperation *)self _shouldCommitIndexingWithHasItemsToDeleteThenUpdate:v6 shouldForceCommit:v5];
  if (v8)
  {
    [(ICIndexItemsOperation *)self _commitObjectIDURIsToDeleteForDataSource:v10];
  }

  if (v9)
  {
    [(ICIndexItemsOperation *)self _commitObjectIDsToIndexForDataSource:v10];
  }
}

- (BOOL)_shouldCommitDeletionWithHasItemsToDeleteThenUpdate:(BOOL)a3 shouldForceCommit:(BOOL)a4
{
  v5 = a3;
  v7 = [(ICIndexItemsOperation *)self objectIDURIsToDelete];
  v8 = [v7 count];

  if (!v8)
  {
    v9 = 0;
    if (!v5)
    {
      return v9;
    }

    goto LABEL_8;
  }

  v9 = 1;
  if (!v5 && !a4)
  {
    v10 = [(ICIndexItemsOperation *)self objectIDURIsToDelete];
    v9 = ([v10 count] & 0xFFFFFFFFFFFFC000) != 0;
  }

  if (v5)
  {
LABEL_8:
    v11 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ICIndexItemsOperation _shouldCommitDeletionWithHasItemsToDeleteThenUpdate:shouldForceCommit:];
    }
  }

  return v9;
}

- (void)_commitObjectIDURIsToDeleteForDataSource:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [ICAssert handleFailedAssertWithCondition:"![NSThread isMainThread]" functionName:"[ICIndexItemsOperation _commitObjectIDURIsToDeleteForDataSource:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from main thread"];
  }

  v5 = dispatch_semaphore_create(0);
  v6 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ICIndexItemsOperation *)self _commitObjectIDURIsToDeleteForDataSource:v6];
  }

  v7 = [(ICIndexItemsOperation *)self objectIDURIsToDelete];
  v8 = [v7 copy];
  [v4 searchIndexerWillDeleteSearchableItemsWithObjectIDURIs:v8];

  v9 = [(ICIndexItemsOperation *)self searchableIndex];
  v10 = [(ICIndexItemsOperation *)self objectIDURIsToDelete];
  v11 = [v10 copy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__ICIndexItemsOperation__commitObjectIDURIsToDeleteForDataSource___block_invoke;
  v14[3] = &unk_1E8484BB8;
  v14[4] = self;
  v15 = v4;
  v16 = v5;
  v12 = v5;
  v13 = v4;
  [v9 deleteSearchableItemsWithIdentifiers:v11 completionHandler:v14];

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
}

void __66__ICIndexItemsOperation__commitObjectIDURIsToDeleteForDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "SearchIndexer");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__ICIndexItemsOperation__commitObjectIDURIsToDeleteForDataSource___block_invoke_cold_1();
    }

    [*(a1 + 32) setError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __66__ICIndexItemsOperation__commitObjectIDURIsToDeleteForDataSource___block_invoke_cold_2();
    }
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) objectIDURIsToDelete];
  v8 = [v7 copy];
  [v6 searchIndexerDidFinishDeletingSearchableItemsWithObjectIDURIs:v8 error:v3];

  v9 = [*(a1 + 32) objectIDURIsToDelete];
  [v9 removeAllObjects];

  dispatch_semaphore_signal(*(a1 + 48));
}

- (BOOL)_shouldCommitIndexingWithHasItemsToDeleteThenUpdate:(BOOL)a3 shouldForceCommit:(BOOL)a4
{
  v5 = a3;
  v7 = [(ICIndexItemsOperation *)self objectIDsToIndex];
  v8 = [v7 count];

  if (!v8)
  {
    v9 = 0;
    if (!v5)
    {
      return v9;
    }

    goto LABEL_10;
  }

  v9 = 1;
  if (!v5 && !a4)
  {
    v10 = [(ICIndexItemsOperation *)self objectIDsToIndex];
    if ([v10 count] <= 0x63)
    {
      v9 = [(ICIndexItemsOperation *)self totalSizeOfSearchableItemsToIndex]>> 12 > 0x18;
    }
  }

  if (v5)
  {
LABEL_10:
    v11 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ICIndexItemsOperation _shouldCommitIndexingWithHasItemsToDeleteThenUpdate:shouldForceCommit:];
    }
  }

  return v9;
}

- (void)_commitObjectIDsToIndexForDataSource:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [ICAssert handleFailedAssertWithCondition:"![NSThread isMainThread]" functionName:"[ICIndexItemsOperation _commitObjectIDsToIndexForDataSource:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from main thread"];
  }

  v5 = dispatch_semaphore_create(0);
  v6 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ICIndexItemsOperation *)self _commitObjectIDsToIndexForDataSource:v4, v6];
  }

  v7 = [(ICIndexItemsOperation *)self objectIDsToIndex];
  v8 = [v7 copy];
  [v4 searchIndexerWillIndexObjectIDs:v8];

  v9 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"sy_isLinkItem"];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [(ICIndexItemsOperation *)self searchableItemsToIndex];
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = *v29;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v28 + 1) + 8 * v13) attributeSet];
        v15 = [v14 valueForCustomKey:v9];

        if (v15)
        {
          v16 = 1;
          goto LABEL_15;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_15:

  objc_initWeak(&location, self);
  v17 = [(ICIndexItemsOperation *)self searchableIndex];
  v18 = [(ICIndexItemsOperation *)self searchableItemsToIndex];
  v19 = [v18 copy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __62__ICIndexItemsOperation__commitObjectIDsToIndexForDataSource___block_invoke;
  v22[3] = &unk_1E8484C00;
  objc_copyWeak(&v25, &location);
  v20 = v4;
  v23 = v20;
  v26 = v16;
  v21 = v5;
  v24 = v21;
  [v17 indexSearchableItems:v19 completionHandler:v22];

  dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __62__ICIndexItemsOperation__commitObjectIDsToIndexForDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = os_log_create("com.apple.notes", "SearchIndexer");
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __62__ICIndexItemsOperation__commitObjectIDsToIndexForDataSource___block_invoke_cold_1();
    }

    [WeakRetained setError:v3];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __62__ICIndexItemsOperation__commitObjectIDsToIndexForDataSource___block_invoke_cold_2();
    }
  }

  v7 = *(a1 + 32);
  v8 = [WeakRetained objectIDsToIndex];
  v9 = [v8 copy];
  [v7 searchIndexerDidFinishIndexingObjectIDs:v9 error:v3];

  v10 = [MEMORY[0x1E696AAE8] mainBundle];
  LOBYTE(v8) = [v10 ic_isAppExtension];

  if ((v8 & 1) == 0)
  {
    v11 = [WeakRetained searchableItemsToIndex];
    v12 = [v11 copy];
    v13 = [v12 ic_compactMap:&__block_literal_global_26_0];

    if ([v13 count])
    {
      v14 = +[ICImageAnalysisController sharedController];
      [v14 analyzeSearchableItems:v13 completion:0];
    }
  }

  v15 = [WeakRetained searchableItemsToIndex];
  [v15 removeAllObjects];

  v16 = [WeakRetained objectIDsToIndex];
  [v16 removeAllObjects];

  [WeakRetained setTotalSizeOfSearchableItemsToIndex:0];
  if (*(a1 + 56) == 1)
  {
    Helper_x8__OBJC_CLASS___SYItemIndexingManager = gotLoadHelper_x8__OBJC_CLASS___SYItemIndexingManager(v17);
    [*(v19 + 1072) indexedContentItemsDidChange];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void *__62__ICIndexItemsOperation__commitObjectIDsToIndexForDataSource___block_invoke_23(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6982C40];
  v3 = a2;
  v4 = [v3 attributeSet];
  v5 = [v4 contentType];
  v6 = [v2 typeWithIdentifier:v5];
  v7 = [v6 conformsToType:*MEMORY[0x1E6982E30]];

  if (v7)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

void __37__ICIndexItemsOperation_processItems__block_invoke_6_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

- (void)_commitObjectIDURIsToDeleteForDataSource:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [a1 objectIDURIsToDelete];
  v5 = 138412546;
  v6 = a1;
  v7 = 1024;
  v8 = [v4 count];
  _os_log_debug_impl(&dword_1D4576000, a2, OS_LOG_TYPE_DEBUG, "%@ deleting %d item(s) for current batch", &v5, 0x12u);
}

void __66__ICIndexItemsOperation__commitObjectIDURIsToDeleteForDataSource___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

- (void)_commitObjectIDsToIndexForDataSource:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = [a1 searchableItemsToIndex];
  v7 = 138413058;
  v8 = a1;
  v9 = 2048;
  v10 = [v6 count];
  v11 = 2048;
  v12 = [a1 totalSizeOfSearchableItemsToIndex];
  v13 = 2112;
  v14 = a2;
  _os_log_debug_impl(&dword_1D4576000, a3, OS_LOG_TYPE_DEBUG, "%@ indexing %lu item(s) for current batch. bytes=%lu from %@", &v7, 0x2Au);
}

void __62__ICIndexItemsOperation__commitObjectIDsToIndexForDataSource___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

@end