@interface ICCDCSIReindexer
+ (id)searchableIndex;
+ (id)sharedReindexer;
- (ICCDCSIReindexer)init;
- (void)_reindexSearchableItemsWithIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)deleteAllSearchableItemsWithCompletionHandler:(id)handler;
- (void)registerCoreDataCoreSpotlightDelegate:(id)delegate;
- (void)stopIndexing;
- (void)unregisterCoreDataCoreSpotlightDelegate:(id)delegate;
@end

@implementation ICCDCSIReindexer

+ (id)sharedReindexer
{
  if (ICUseCoreDataCoreSpotlightIntegration())
  {
    if (sharedReindexer_onceToken != -1)
    {
      +[ICCDCSIReindexer sharedReindexer];
    }

    v2 = sharedReindexer_sSharedReindexer;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __35__ICCDCSIReindexer_sharedReindexer__block_invoke()
{
  sharedReindexer_sSharedReindexer = objc_alloc_init(ICCDCSIReindexer);

  return MEMORY[0x1EEE66BB8]();
}

- (ICCDCSIReindexer)init
{
  v5.receiver = self;
  v5.super_class = ICCDCSIReindexer;
  v2 = [(ICCDCSIReindexer *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(ICCDCSIReindexer *)v2 setRegisteredDelegates:v3];
  }

  return v2;
}

- (void)registerCoreDataCoreSpotlightDelegate:(id)delegate
{
  delegateCopy = delegate;
  registeredDelegates = [(ICCDCSIReindexer *)self registeredDelegates];
  [registeredDelegates addObject:delegateCopy];
}

- (void)unregisterCoreDataCoreSpotlightDelegate:(id)delegate
{
  delegateCopy = delegate;
  registeredDelegates = [(ICCDCSIReindexer *)self registeredDelegates];
  [registeredDelegates removeObject:delegateCopy];
}

- (void)stopIndexing
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  registeredDelegates = [(ICCDCSIReindexer *)self registeredDelegates];
  v3 = [registeredDelegates countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(registeredDelegates);
        }

        [*(*(&v7 + 1) + 8 * v6++) stopSpotlightIndexing];
      }

      while (v4 != v6);
      v4 = [registeredDelegates countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (id)searchableIndex
{
  if (searchableIndex_s_token_for_searchable_index != -1)
  {
    +[ICCDCSIReindexer searchableIndex];
  }

  v3 = searchableIndex_s_instance;

  return v3;
}

uint64_t __35__ICCDCSIReindexer_searchableIndex__block_invoke()
{
  searchableIndex_s_instance = objc_alloc_init(ICSearchIndexImplementation);

  return MEMORY[0x1EEE66BB8]();
}

- (void)deleteAllSearchableItemsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ICCDCSIReindexer deleteAllSearchableItemsWithCompletionHandler:];
  }

  searchableIndex = [objc_opt_class() searchableIndex];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__ICCDCSIReindexer_deleteAllSearchableItemsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8484A20;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [searchableIndex deleteAllSearchableItemsWithCompletionHandler:v7];
}

void __66__ICCDCSIReindexer_deleteAllSearchableItemsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "SearchIndexer");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__ICCDCSIReindexer_deleteAllSearchableItemsWithCompletionHandler___block_invoke_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __66__ICCDCSIReindexer_deleteAllSearchableItemsWithCompletionHandler___block_invoke_cold_2();
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)_reindexSearchableItemsWithIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  registeredDelegates = [(ICCDCSIReindexer *)self registeredDelegates];
  v9 = [registeredDelegates count];

  v35[3] = v9;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  v10 = os_log_create("com.apple.notes", "SearchIndexer");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (identifiersCopy)
  {
    if (v11)
    {
      [ICCDCSIReindexer _reindexSearchableItemsWithIdentifiers:completionHandler:];
    }
  }

  else if (v11)
  {
    [ICCDCSIReindexer _reindexSearchableItemsWithIdentifiers:completionHandler:];
  }

  registeredDelegates2 = [(ICCDCSIReindexer *)self registeredDelegates];
  v13 = [registeredDelegates2 sortedArrayUsingComparator:&__block_literal_global_10];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__ICCDCSIReindexer__reindexSearchableItemsWithIdentifiers_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E8484A68;
  v32 = v34;
  v33 = v35;
  v24 = handlerCopy;
  v31 = v24;
  v14 = _Block_copy(aBlock);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v13;
  v15 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v15)
  {
    v16 = *v27;
    do
    {
      v17 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v26 + 1) + 8 * v17);
        v19 = os_log_create("com.apple.notes", "SearchIndexer");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v37 = v18;
          _os_log_debug_impl(&dword_1D4576000, v19, OS_LOG_TYPE_DEBUG, "reindexing with ICCoreDataCoreSpotlightDelegate: %@", buf, 0xCu);
        }

        v20 = objc_opt_class();
        searchableIndex = [objc_opt_class() searchableIndex];
        v22 = ICDynamicCast(v20, searchableIndex);

        if (v22)
        {
          searchableIndex2 = [v22 searchableIndex];
          if (identifiersCopy)
          {
            [v18 searchableIndex:searchableIndex2 reindexSearchableItemsWithIdentifiers:identifiersCopy acknowledgementHandler:v14];
          }

          else
          {
            [v18 searchableIndex:searchableIndex2 reindexAllSearchableItemsWithAcknowledgementHandler:v14];
          }
        }

        else
        {
          [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICCDCSIReindexer _reindexSearchableItemsWithIdentifiers:completionHandler:]" simulateCrash:1 showAlert:0 format:@"Searchable index of %@ is unexpectately not of type %@.", self, objc_opt_class()];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v15);
  }

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v35, 8);
}

BOOL __77__ICCDCSIReindexer__reindexSearchableItemsWithIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 indexingPriority];
  v6 = [v4 indexingPriority];

  return v5 < v6;
}

void __77__ICCDCSIReindexer__reindexSearchableItemsWithIdentifiers_completionHandler___block_invoke_2(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (++*(*(a1[5] + 8) + 24) == *(*(a1[6] + 8) + 24) && a1[4])
  {
    v2 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __77__ICCDCSIReindexer__reindexSearchableItemsWithIdentifiers_completionHandler___block_invoke_2_cold_1();
    }

    (*(a1[4] + 16))();
  }

  else
  {
    v3 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = @"non-nil";
      if (!a1[4])
      {
        v4 = @"nil";
      }

      v5 = *(*(a1[5] + 8) + 24);
      v6 = *(*(a1[6] + 8) + 24);
      v7 = 138412802;
      v8 = v4;
      v9 = 2048;
      v10 = v5;
      v11 = 2048;
      v12 = v6;
      _os_log_debug_impl(&dword_1D4576000, v3, OS_LOG_TYPE_DEBUG, "completionHandler is %@, completedReindexes = %lu, countOfRegisteredDelegates = %lu", &v7, 0x20u);
    }
  }
}

void __66__ICCDCSIReindexer_deleteAllSearchableItemsWithCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4576000, a2, OS_LOG_TYPE_ERROR, "Error deleting all searchable items: %@", &v2, 0xCu);
}

@end