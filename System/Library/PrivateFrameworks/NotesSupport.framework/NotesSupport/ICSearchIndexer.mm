@interface ICSearchIndexer
+ (id)sharedIndexer;
- (ICSearchIndex)searchableIndex;
- (ICSearchIndexer)initWithSearchIndex:(id)index;
- (NSArray)_dataSources;
- (NSArray)dataSources;
- (id)dataSourceWithIdentifier:(id)identifier;
- (id)newContextsForAllDataSources;
- (id)objectForManagedObjectIDURI:(id)i inContexts:(id)contexts;
- (id)objectForSearchableItem:(id)item context:(id)context;
- (id)objectsDictionaryForSearchableItems:(id)items inContexts:(id)contexts;
- (id)objectsForSearchableItems:(id)items inContexts:(id)contexts;
- (id)pendingReindexingOperation;
- (void)addDataSource:(id)source;
- (void)cancelIndexingOperationsWithCompletionHandler:(id)handler;
- (void)clearObjectIDsToProcess;
- (void)clearRetryForSelector:(SEL)selector;
- (void)dataSourceDidChange:(id)change;
- (void)dealloc;
- (void)deleteAllSearchableItemsWithCompletionHandler:(id)handler;
- (void)finishRemainingOperationsWithCompletionHandler:(id)handler;
- (void)pendingReindexingOperation;
- (void)processChanges;
- (void)processReindexRequest:(id)request;
- (void)reindexAllSearchableItemsInIndex;
- (void)reindexAllSearchableItemsInIndex:(id)index completionHandler:(id)handler;
- (void)reindexAllSearchableItemsWithCompletionHandler:(id)handler;
- (void)reindexSearchableItemsWithObjectIDURIs:(id)is completionHandler:(id)handler;
- (void)reindexSearchableItemsWithObjectIDURIs:(id)is inIndex:(id)index completionHandler:(id)handler;
- (void)removeDataSource:(id)source;
- (void)retrySelector:(SEL)selector;
- (void)startObservingChanges;
- (void)stopObservingChanges;
@end

@implementation ICSearchIndexer

+ (id)sharedIndexer
{
  if (sharedIndexer_onceToken != -1)
  {
    +[ICSearchIndexer sharedIndexer];
  }

  v3 = sharedIndexer_sSharedIndexer;

  return v3;
}

- (void)startObservingChanges
{
  indexingQueue = [(ICSearchIndexer *)self indexingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__ICSearchIndexer_startObservingChanges__block_invoke;
  block[3] = &unk_1E84848B8;
  block[4] = self;
  dispatch_async(indexingQueue, block);
}

void __40__ICSearchIndexer_startObservingChanges__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isObservingChanges];
  v3 = os_log_create("com.apple.notes", "SearchIndexer");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      __40__ICSearchIndexer_startObservingChanges__block_invoke_cold_2();
    }
  }

  else
  {
    if (v4)
    {
      __40__ICSearchIndexer_startObservingChanges__block_invoke_cold_1();
    }

    [*(a1 + 32) setObservingChanges:1];
    if ((ICUseCoreDataCoreSpotlightIntegration() & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 addObserver:*(a1 + 32) selector:sel_dataSourceDidChange_ name:@"ICSearchIndexerDataSourceDidChangeNotification" object:0];
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [*(a1 + 32) _dataSources];
    v6 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v10 + 1) + 8 * v9++) startObservingChanges];
        }

        while (v7 != v9);
        v7 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

void __40__ICSearchIndexer_startObservingChanges__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (NSArray)_dataSources
{
  dataSourcesByIdentifier = [(ICSearchIndexer *)self dataSourcesByIdentifier];
  allValues = [dataSourcesByIdentifier allValues];

  return allValues;
}

void __32__ICSearchIndexer_sharedIndexer__block_invoke()
{
  v2 = objc_alloc_init(ICSearchIndexImplementation);
  v0 = [[ICSearchIndexer alloc] initWithSearchIndex:v2];
  v1 = sharedIndexer_sSharedIndexer;
  sharedIndexer_sSharedIndexer = v0;
}

- (void)stopObservingChanges
{
  indexingQueue = [(ICSearchIndexer *)self indexingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__ICSearchIndexer_stopObservingChanges__block_invoke;
  block[3] = &unk_1E84848B8;
  block[4] = self;
  dispatch_async(indexingQueue, block);
}

void __39__ICSearchIndexer_stopObservingChanges__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) isObservingChanges];
  v3 = os_log_create("com.apple.notes", "SearchIndexer");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      __39__ICSearchIndexer_stopObservingChanges__block_invoke_cold_2();
    }

    [*(a1 + 32) setObservingChanges:0];
    if ((ICUseCoreDataCoreSpotlightIntegration() & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 removeObserver:*(a1 + 32) name:@"ICSearchIndexerDataSourceDidChangeNotification" object:0];
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [*(a1 + 32) _dataSources];
    v6 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v10 + 1) + 8 * i) stopObservingChanges];
        }

        v7 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }

  else if (v4)
  {
    __39__ICSearchIndexer_stopObservingChanges__block_invoke_cold_1();
  }
}

void __39__ICSearchIndexer_stopObservingChanges__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (ICSearchIndexer)initWithSearchIndex:(id)index
{
  indexCopy = index;
  v19.receiver = self;
  v19.super_class = ICSearchIndexer;
  v5 = [(ICSearchIndexer *)&v19 init];
  v6 = v5;
  if (v5)
  {
    [(ICSearchIndexer *)v5 setSearchableIndex:indexCopy];
    v7 = dispatch_queue_create("com.apple.notes.indexer", 0);
    [(ICSearchIndexer *)v6 setIndexingQueue:v7];

    indexingQueue = [(ICSearchIndexer *)v6 indexingQueue];
    v9 = dispatch_get_global_queue(-32768, 0);
    dispatch_set_target_queue(indexingQueue, v9);

    v10 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [(ICSearchIndexer *)v6 setOperationQueue:v10];

    if (ICVerboseSearchLogging())
    {
      v11 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [ICSearchIndexer initWithSearchIndex:v6];
      }
    }

    operationQueue = [(ICSearchIndexer *)v6 operationQueue];
    [operationQueue setQualityOfService:9];

    operationQueue2 = [(ICSearchIndexer *)v6 operationQueue];
    [operationQueue2 setMaxConcurrentOperationCount:1];

    dictionary = [MEMORY[0x1E695DF20] dictionary];
    [(ICSearchIndexer *)v6 setDataSourcesByIdentifier:dictionary];

    if ((ICUseCoreDataCoreSpotlightIntegration() & 1) == 0)
    {
      v15 = [[ICSelectorDelayer alloc] initWithTarget:v6 selector:sel_processChanges delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:1.0];
      [(ICSearchIndexer *)v6 setChangeProcessingDelayer:v15];
    }

    [(ICSearchIndexer *)v6 setObservingChanges:0];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [(ICSearchIndexer *)v6 setRetryTimers:dictionary2];

    [(ICSearchIndexer *)v6 setRetryOnErrors:1];
    [(ICSearchIndexer *)v6 setDisabled:1];
    if (+[ICDeviceSupport isRunningInApp])
    {
      defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
      [defaultCenter addObserver:v6 selector:sel_processReindexRequest_ name:@"ICReindexRequestedNotification" object:0 suspensionBehavior:4];
    }
  }

  return v6;
}

- (void)dealloc
{
  if (+[ICDeviceSupport isRunningInApp])
  {
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter removeObserver:self name:@"ICReindexRequestedNotification" object:0];
  }

  v4.receiver = self;
  v4.super_class = ICSearchIndexer;
  [(ICSearchIndexer *)&v4 dealloc];
}

- (void)processReindexRequest:(id)request
{
  if (![(ICSearchIndexer *)self isActivelyReindexing])
  {
    v4 = [ICSettingsUtilities objectForKey:@"ReindexOnLaunch"];
    bOOLValue = [v4 BOOLValue];

    if (bOOLValue)
    {
      [(ICSearchIndexer *)self setActivelyReindexing:1];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __41__ICSearchIndexer_processReindexRequest___block_invoke;
      v6[3] = &unk_1E84850C8;
      v6[4] = self;
      [(ICSearchIndexer *)self reindexAllSearchableItemsWithCompletionHandler:v6];
    }
  }
}

void __41__ICSearchIndexer_processReindexRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "SearchIndexer");
  v5 = v4;
  if (v3)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __41__ICSearchIndexer_processReindexRequest___block_invoke_cold_1(v3, v6);
    }

    [ICSettingsUtilities setObject:MEMORY[0x1E695E118] forKey:@"ReindexOnLaunch"];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1D4576000, v5, OS_LOG_TYPE_INFO, "Successfully reindexed all items. Resetting state.", v7, 2u);
    }
  }

  [*(a1 + 32) setActivelyReindexing:0];
}

- (ICSearchIndex)searchableIndex
{
  searchableIndex = self->_searchableIndex;
  if (!searchableIndex)
  {
    v4 = objc_alloc_init(ICSearchIndexImplementation);
    v5 = self->_searchableIndex;
    self->_searchableIndex = v4;

    searchableIndex = self->_searchableIndex;
  }

  return searchableIndex;
}

- (void)dataSourceDidChange:(id)change
{
  changeCopy = change;
  if ((ICUseCoreDataCoreSpotlightIntegration() & 1) == 0 && [(ICSearchIndexer *)self isObservingChanges])
  {
    object = [changeCopy object];
    objc_initWeak(&location, object);

    indexingQueue = [(ICSearchIndexer *)self indexingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__ICSearchIndexer_dataSourceDidChange___block_invoke;
    block[3] = &unk_1E8485100;
    objc_copyWeak(&v8, &location);
    block[4] = self;
    dispatch_async(indexingQueue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __39__ICSearchIndexer_dataSourceDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [*(a1 + 32) dataSourcesByIdentifier];
    v4 = [v7 dataSourceIdentifier];
    v5 = [v3 objectForKeyedSubscript:v4];

    WeakRetained = v7;
    if (v5 == v7)
    {
      v6 = [*(a1 + 32) changeProcessingDelayer];
      [v6 requestFire];

      WeakRetained = v7;
    }
  }
}

- (void)processChanges
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __33__ICSearchIndexer_processChanges__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(a1 + 32) _dataSources];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = *v20;
    v5 = off_1E84840B0;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v20 != v4)
      {
        objc_enumerationMutation(v2);
      }

      if ([*(*(&v19 + 1) + 8 * v6) needsReindexing])
      {
        break;
      }

      if (v3 == ++v6)
      {
        v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    v7 = [*(a1 + 32) pendingReindexingOperation];

    v2 = os_log_create("com.apple.notes", "SearchIndexer");
    v8 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
    if (v7)
    {
      if (v8)
      {
        __33__ICSearchIndexer_processChanges__block_invoke_cold_1();
      }

      goto LABEL_25;
    }

    if (v8)
    {
      __33__ICSearchIndexer_processChanges__block_invoke_cold_2();
    }

    v5 = off_1E8484110;
  }

  else
  {
    v5 = off_1E84840B0;
  }

LABEL_17:

  v9 = objc_alloc(*v5);
  v10 = [*(a1 + 32) searchableIndex];
  v11 = [*(a1 + 32) _dataSources];
  v2 = [v9 initWithSearchableIndex:v10 dataSources:v11];

  if (v2)
  {
    v12 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __33__ICSearchIndexer_processChanges__block_invoke_cold_3();
    }

    objc_initWeak(&location, v2);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __33__ICSearchIndexer_processChanges__block_invoke_25;
    v16[3] = &unk_1E8485100;
    objc_copyWeak(&v17, &location);
    v16[4] = *(a1 + 32);
    [v2 setCompletionBlock:v16];
    v13 = [*(a1 + 32) operationQueue];
    [v13 addOperation:v2];

    if (ICVerboseSearchLogging())
    {
      v14 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = [*(a1 + 32) operationQueue];
        __33__ICSearchIndexer_processChanges__block_invoke_cold_4(v2, v15, v23);
      }
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
LABEL_25:
  }
}

void __33__ICSearchIndexer_processChanges__block_invoke_25(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([*(a1 + 32) retryOnErrors] && (objc_msgSend(WeakRetained, "error"), v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    [*(a1 + 32) retrySelector:sel_processChanges];
  }

  else
  {
    [*(a1 + 32) clearRetryForSelector:sel_processChanges];
  }
}

- (NSArray)dataSources
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = 0;
  indexingQueue = [(ICSearchIndexer *)self indexingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__ICSearchIndexer_dataSources__block_invoke;
  v7[3] = &unk_1E8484848;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(indexingQueue, v7);

  v4 = v9[5];
  if (!v4)
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __30__ICSearchIndexer_dataSources__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _dataSources];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addDataSource:(id)source
{
  sourceCopy = source;
  indexingQueue = [(ICSearchIndexer *)self indexingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__ICSearchIndexer_addDataSource___block_invoke;
  v7[3] = &unk_1E8484980;
  v7[4] = self;
  v8 = sourceCopy;
  v6 = sourceCopy;
  dispatch_async(indexingQueue, v7);
}

void __33__ICSearchIndexer_addDataSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSourcesByIdentifier];
  v3 = (a1 + 40);
  v4 = [*(a1 + 40) dataSourceIdentifier];
  v5 = [v2 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v7 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __33__ICSearchIndexer_addDataSource___block_invoke_cold_1();
    }

    v8 = [*(a1 + 32) dataSourcesByIdentifier];
    v6 = [v8 mutableCopy];

    v9 = *(a1 + 40);
    v10 = [v9 dataSourceIdentifier];
    [v6 setObject:v9 forKeyedSubscript:v10];

    [*(a1 + 32) setDataSourcesByIdentifier:v6];
    if ([*(a1 + 32) isObservingChanges])
    {
      [*v3 startObservingChanges];
    }

    goto LABEL_9;
  }

  if (v5 != *v3)
  {
    v6 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1D4576000, v6, OS_LOG_TYPE_INFO, "Trying to add a second data source with the same identifier. Doing nothing.", v11, 2u);
    }

LABEL_9:
  }
}

- (void)removeDataSource:(id)source
{
  sourceCopy = source;
  indexingQueue = [(ICSearchIndexer *)self indexingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__ICSearchIndexer_removeDataSource___block_invoke;
  v7[3] = &unk_1E8484980;
  v7[4] = self;
  v8 = sourceCopy;
  v6 = sourceCopy;
  dispatch_sync(indexingQueue, v7);
}

void __36__ICSearchIndexer_removeDataSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSourcesByIdentifier];
  v3 = [*(a1 + 40) dataSourceIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(a1 + 40);

  if (v4 == v5)
  {
    v6 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __36__ICSearchIndexer_removeDataSource___block_invoke_cold_1();
    }

    v7 = [*(a1 + 32) dataSourcesByIdentifier];
    v8 = [v7 mutableCopy];

    v9 = [*(a1 + 40) dataSourceIdentifier];
    [v8 removeObjectForKey:v9];

    [*(a1 + 32) setDataSourcesByIdentifier:v8];
    if ([*(a1 + 40) isObservingChanges])
    {
      [*(a1 + 40) stopObservingChanges];
    }
  }
}

- (id)dataSourceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  indexingQueue = [(ICSearchIndexer *)self indexingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__ICSearchIndexer_dataSourceWithIdentifier___block_invoke;
  block[3] = &unk_1E84848E0;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(indexingQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __44__ICSearchIndexer_dataSourceWithIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) dataSourcesByIdentifier];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)newContextsForAllDataSources
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  dataSources = [(ICSearchIndexer *)self dataSources];
  v5 = [dataSources countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(dataSources);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        newManagedObjectContext = [v9 newManagedObjectContext];
        if (!newManagedObjectContext)
        {
          [ICAssert handleFailedAssertWithCondition:"context" functionName:"[ICSearchIndexer newContextsForAllDataSources]" simulateCrash:1 showAlert:0 format:@"Expected non-nil context for dataSource %@", v9];
        }

        [array ic_addNonNilObject:newManagedObjectContext];
      }

      v6 = [dataSources countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)reindexAllSearchableItemsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  searchableIndex = [(ICSearchIndexer *)self searchableIndex];
  [(ICSearchIndexer *)self reindexAllSearchableItemsInIndex:searchableIndex completionHandler:handlerCopy];
}

- (void)cancelIndexingOperationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__ICSearchIndexer_cancelIndexingOperationsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8484B48;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

void __65__ICSearchIndexer_cancelIndexingOperationsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __65__ICSearchIndexer_cancelIndexingOperationsWithCompletionHandler___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) operationQueue];
  [v3 cancelAllOperations];

  if (ICVerboseSearchLogging())
  {
    v4 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __65__ICSearchIndexer_cancelIndexingOperationsWithCompletionHandler___block_invoke_cold_2((a1 + 32));
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__ICSearchIndexer_cancelIndexingOperationsWithCompletionHandler___block_invoke_32;
  v6[3] = &unk_1E8485128;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v5 finishRemainingOperationsWithCompletionHandler:v6];
}

uint64_t __65__ICSearchIndexer_cancelIndexingOperationsWithCompletionHandler___block_invoke_32(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __65__ICSearchIndexer_cancelIndexingOperationsWithCompletionHandler___block_invoke_32_cold_1();
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)finishRemainingOperationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__ICSearchIndexer_finishRemainingOperationsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8484B48;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

uint64_t __66__ICSearchIndexer_finishRemainingOperationsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __66__ICSearchIndexer_finishRemainingOperationsWithCompletionHandler___block_invoke_cold_1();
  }

  v3 = (a1 + 32);
  v4 = [*(a1 + 32) changeProcessingDelayer];
  v5 = [v4 isScheduledToFire];

  if (v5)
  {
    v6 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __66__ICSearchIndexer_finishRemainingOperationsWithCompletionHandler___block_invoke_cold_2();
    }

    v7 = [*v3 changeProcessingDelayer];
    [v7 fireImmediately];
  }

  v8 = [*v3 retryTimers];
  objc_sync_enter(v8);
  v9 = [*v3 retryTimers];
  [v9 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_36];

  objc_sync_exit(v8);
  if (ICVerboseSearchLogging())
  {
    v10 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __66__ICSearchIndexer_finishRemainingOperationsWithCompletionHandler___block_invoke_cold_3((a1 + 32));
    }
  }

  v11 = [*v3 indexingQueue];
  dispatch_sync(v11, &__block_literal_global_39);

  if (ICVerboseSearchLogging())
  {
    v12 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __66__ICSearchIndexer_finishRemainingOperationsWithCompletionHandler___block_invoke_cold_4((a1 + 32));
    }
  }

  v13 = [*v3 operationQueue];
  [v13 waitUntilAllOperationsAreFinished];

  v14 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __66__ICSearchIndexer_finishRemainingOperationsWithCompletionHandler___block_invoke_cold_5();
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __66__ICSearchIndexer_finishRemainingOperationsWithCompletionHandler___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v5 isScheduled])
  {
    v6 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __66__ICSearchIndexer_finishRemainingOperationsWithCompletionHandler___block_invoke_33_cold_1();
    }

    [v5 fire];
  }
}

- (void)deleteAllSearchableItemsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICSearchIndexer deleteAllSearchableItemsWithCompletionHandler:];
  }

  if (ICReindexAlertEnabled())
  {
    [ICAssert handleFailedAssertWithCondition:"NO" functionName:"[ICSearchIndexer deleteAllSearchableItemsWithCompletionHandler:]" simulateCrash:0 showAlert:1 alertMessage:@"An unintended indexing deletion may have happened. Do you want to file a radar?" format:@"Possible unintended indexing deletion"];
  }

  [ICIndexerStateHandler logMethodCall:0];
  searchableIndex = [(ICSearchIndexer *)self searchableIndex];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__ICSearchIndexer_deleteAllSearchableItemsWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E8485170;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [searchableIndex deleteAllSearchableItemsWithCompletionHandler:v8];
}

void __65__ICSearchIndexer_deleteAllSearchableItemsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "SearchIndexer");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__ICSearchIndexer_deleteAllSearchableItemsWithCompletionHandler___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __65__ICSearchIndexer_deleteAllSearchableItemsWithCompletionHandler___block_invoke_cold_2();
  }

  [*(a1 + 32) clearObjectIDsToProcess];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (id)pendingReindexingOperation
{
  operationQueue = [(ICSearchIndexer *)self operationQueue];
  operations = [operationQueue operations];
  v4 = [operations ic_objectPassingTest:&__block_literal_global_50];

  if (!v4 && ICVerboseSearchLogging())
  {
    v5 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICSearchIndexer pendingReindexingOperation];
    }
  }

  return v4;
}

uint64_t __45__ICSearchIndexer_pendingReindexingOperation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = ICDynamicCast(v3, v2);

  if (!v4 || ([v4 isCancelled] & 1) != 0 || (objc_msgSend(v4, "isExecuting") & 1) != 0 || (objc_msgSend(v4, "isFinished") & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    if (ICVerboseSearchLogging())
    {
      v7 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __45__ICSearchIndexer_pendingReindexingOperation__block_invoke_cold_1();
      }
    }

    v5 = 1;
  }

  return v5;
}

- (void)reindexAllSearchableItemsInIndex
{
  searchableIndex = [(ICSearchIndexer *)self searchableIndex];
  [(ICSearchIndexer *)self reindexAllSearchableItemsInIndex:searchableIndex completionHandler:0];
}

- (void)reindexAllSearchableItemsInIndex:(id)index completionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  indexCopy = index;
  handlerCopy = handler;
  if ((ICUseCoreDataCoreSpotlightIntegration() & 1) == 0)
  {
    if ([(ICSearchIndexer *)self isDisabled])
    {
      v8 = MEMORY[0x1E696ABC0];
      v15 = @"FailureReason";
      v16[0] = @"Indexing is disabled";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v10 = [v8 errorWithDomain:@"NotesErrorDomain" code:300 userInfo:v9];

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, v10);
      }
    }

    else
    {
      [ICIndexerStateHandler logMethodCall:1];
      indexingQueue = [(ICSearchIndexer *)self indexingQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __70__ICSearchIndexer_reindexAllSearchableItemsInIndex_completionHandler___block_invoke;
      v12[3] = &unk_1E84851E0;
      v12[4] = self;
      v14 = handlerCopy;
      v13 = indexCopy;
      dispatch_async(indexingQueue, v12);
    }
  }
}

void __70__ICSearchIndexer_reindexAllSearchableItemsInIndex_completionHandler___block_invoke(id *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = a1 + 4;
  v3 = [a1[4] pendingReindexingOperation];
  v4 = os_log_create("com.apple.notes", "SearchIndexer");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (!v3)
  {
    if (v5)
    {
      __70__ICSearchIndexer_reindexAllSearchableItemsInIndex_completionHandler___block_invoke_cold_4();
    }

    v13 = [ICReindexAllItemsOperation alloc];
    v14 = a1[5];
    v15 = [a1[4] _dataSources];
    v12 = [(ICIndexItemsOperation *)v13 initWithSearchableIndex:v14 dataSources:v15];

    if (ICVerboseSearchLogging())
    {
      v16 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __70__ICSearchIndexer_reindexAllSearchableItemsInIndex_completionHandler___block_invoke_cold_5();
      }
    }

    objc_initWeak(&location, v12);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __70__ICSearchIndexer_reindexAllSearchableItemsInIndex_completionHandler___block_invoke_57;
    v21[3] = &unk_1E84851B8;
    objc_copyWeak(&v25, &location);
    v22 = a1[5];
    v17 = a1[6];
    v23 = a1[4];
    v24 = v17;
    [(ICReindexAllItemsOperation *)v12 setCompletionBlock:v21];
    v18 = [*v2 operationQueue];
    [v18 addOperation:v12];

    if (ICVerboseSearchLogging())
    {
      v19 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = [*v2 operationQueue];
        __70__ICSearchIndexer_reindexAllSearchableItemsInIndex_completionHandler___block_invoke_cold_6(v12, v20, v30);
      }
    }

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
    goto LABEL_23;
  }

  if (v5)
  {
    __33__ICSearchIndexer_processChanges__block_invoke_cold_1();
  }

  if (a1[6])
  {
    v6 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __70__ICSearchIndexer_reindexAllSearchableItemsInIndex_completionHandler___block_invoke_cold_2();
    }

    v7 = MEMORY[0x1E696AAE0];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __70__ICSearchIndexer_reindexAllSearchableItemsInIndex_completionHandler___block_invoke_56;
    v27[3] = &unk_1E8484958;
    v29 = a1[6];
    v8 = v3;
    v28 = v8;
    v9 = [v7 blockOperationWithBlock:v27];
    [v9 addDependency:v8];
    v10 = [a1[4] operationQueue];
    [v10 addOperation:v9];

    if (ICVerboseSearchLogging())
    {
      v11 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __70__ICSearchIndexer_reindexAllSearchableItemsInIndex_completionHandler___block_invoke_cold_3(v9, v2);
      }
    }

    v12 = v29;
LABEL_23:
  }
}

void __70__ICSearchIndexer_reindexAllSearchableItemsInIndex_completionHandler___block_invoke_56(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void __70__ICSearchIndexer_reindexAllSearchableItemsInIndex_completionHandler___block_invoke_57(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __70__ICSearchIndexer_reindexAllSearchableItemsInIndex_completionHandler___block_invoke_57_cold_1();
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = [WeakRetained error];
    (*(v4 + 16))(v4, v5);
  }

  if ([*(a1 + 40) retryOnErrors] && (objc_msgSend(WeakRetained, "error"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    [*(a1 + 40) retrySelector:sel_reindexAllSearchableItemsInIndex];
  }

  else
  {
    [*(a1 + 40) clearRetryForSelector:sel_reindexAllSearchableItemsInIndex];
  }
}

- (void)reindexSearchableItemsWithObjectIDURIs:(id)is completionHandler:(id)handler
{
  handlerCopy = handler;
  isCopy = is;
  searchableIndex = [(ICSearchIndexer *)self searchableIndex];
  [(ICSearchIndexer *)self reindexSearchableItemsWithObjectIDURIs:isCopy inIndex:searchableIndex completionHandler:handlerCopy];
}

- (void)reindexSearchableItemsWithObjectIDURIs:(id)is inIndex:(id)index completionHandler:(id)handler
{
  v21[1] = *MEMORY[0x1E69E9840];
  isCopy = is;
  indexCopy = index;
  handlerCopy = handler;
  if ((ICUseCoreDataCoreSpotlightIntegration() & 1) == 0)
  {
    if ([(ICSearchIndexer *)self isDisabled])
    {
      v11 = MEMORY[0x1E696ABC0];
      v20 = @"FailureReason";
      v21[0] = @"Indexing is disabled";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v13 = [v11 errorWithDomain:@"NotesErrorDomain" code:300 userInfo:v12];

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, v13);
      }
    }

    else
    {
      [ICIndexerStateHandler logMethodCall:2];
      indexingQueue = [(ICSearchIndexer *)self indexingQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __84__ICSearchIndexer_reindexSearchableItemsWithObjectIDURIs_inIndex_completionHandler___block_invoke;
      block[3] = &unk_1E8485230;
      v16 = indexCopy;
      selfCopy = self;
      v18 = isCopy;
      v19 = handlerCopy;
      dispatch_async(indexingQueue, block);

      v13 = v16;
    }
  }
}

void __84__ICSearchIndexer_reindexSearchableItemsWithObjectIDURIs_inIndex_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [ICIndexItemsByIdentifiersOperation alloc];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _dataSources];
  v5 = (a1 + 48);
  v6 = [(ICIndexItemsByIdentifiersOperation *)v2 initWithSearchableIndex:v3 dataSources:v4 objectIDURIsToIndex:*(a1 + 48)];

  v7 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __84__ICSearchIndexer_reindexSearchableItemsWithObjectIDURIs_inIndex_completionHandler___block_invoke_cold_1();
  }

  objc_initWeak(&location, v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__ICSearchIndexer_reindexSearchableItemsWithObjectIDURIs_inIndex_completionHandler___block_invoke_61;
  v12[3] = &unk_1E8485208;
  objc_copyWeak(&v14, &location);
  v13 = *(a1 + 56);
  [(ICIndexItemsByIdentifiersOperation *)v6 setCompletionBlock:v12];
  v8 = [*(a1 + 40) operationQueue];
  [v8 addOperation:v6];

  if (ICVerboseSearchLogging())
  {
    v9 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [*(a1 + 40) operationQueue];
      v11 = *v5;
      *buf = 138412802;
      v17 = v6;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_debug_impl(&dword_1D4576000, v9, OS_LOG_TYPE_DEBUG, "reindexSearchableItemsWithObjectIDURIs: Added operation %@ to operation queue %@ for object ID URIs: %@", buf, 0x20u);
    }
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __84__ICSearchIndexer_reindexSearchableItemsWithObjectIDURIs_inIndex_completionHandler___block_invoke_61(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __84__ICSearchIndexer_reindexSearchableItemsWithObjectIDURIs_inIndex_completionHandler___block_invoke_61_cold_1();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [WeakRetained error];
    (*(v4 + 16))(v4, v5);
  }
}

- (id)objectsForSearchableItems:(id)items inContexts:(id)contexts
{
  itemsCopy = items;
  v7 = [(ICSearchIndexer *)self objectsDictionaryForSearchableItems:itemsCopy inContexts:contexts];
  array = [MEMORY[0x1E695DF70] array];
  if ([itemsCopy count])
  {
    v9 = 0;
    do
    {
      v10 = [itemsCopy objectAtIndexedSubscript:v9];
      uniqueIdentifier = [v10 uniqueIdentifier];
      v12 = [v7 objectForKeyedSubscript:uniqueIdentifier];

      if (v12)
      {
        [array addObject:v12];
      }

      ++v9;
    }

    while ([itemsCopy count] > v9);
  }

  v13 = [array copy];

  return v13;
}

- (id)objectForSearchableItem:(id)item context:(id)context
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = item;
  v6 = MEMORY[0x1E695DEC8];
  contextCopy = context;
  itemCopy = item;
  v9 = [v6 arrayWithObjects:v15 count:1];
  v14 = contextCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];

  v11 = [(ICSearchIndexer *)self objectsForSearchableItems:v9 inContexts:v10];

  firstObject = [v11 firstObject];

  return firstObject;
}

- (id)objectsDictionaryForSearchableItems:(id)items inContexts:(id)contexts
{
  v42 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  contextsCopy = contexts;
  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = itemsCopy;
  v31 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v31)
  {
    v27 = *v37;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v36 + 1) + 8 * i);
        attributeSet = [v7 attributeSet];
        ic_dataSourceIdentifier = [attributeSet ic_dataSourceIdentifier];
        v10 = [(ICSearchIndexer *)self dataSourceWithIdentifier:ic_dataSourceIdentifier];

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v11 = contextsCopy;
        v12 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v12)
        {
          v13 = v12;
          v30 = v7;
          v14 = *v33;
LABEL_8:
          v15 = 0;
          while (1)
          {
            if (*v33 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v32 + 1) + 8 * v15);
            persistentStoreCoordinator = [v16 persistentStoreCoordinator];
            persistentStoreCoordinator2 = [v10 persistentStoreCoordinator];
            v19 = [persistentStoreCoordinator isEqual:persistentStoreCoordinator2];

            if (v19)
            {
              break;
            }

            if (v13 == ++v15)
            {
              v13 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
              if (v13)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v20 = v16;

          if (!v20)
          {
            goto LABEL_20;
          }

          v21 = [v10 objectForSearchableItem:v30 context:v20];
          if (v21)
          {
            uniqueIdentifier = [v30 uniqueIdentifier];
            [v25 setObject:v21 forKey:uniqueIdentifier];
          }
        }

        else
        {
LABEL_14:
          v20 = v11;
        }

LABEL_20:
      }

      v31 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v31);
  }

  v23 = [v25 copy];

  return v23;
}

- (id)objectForManagedObjectIDURI:(id)i inContexts:(id)contexts
{
  v56 = *MEMORY[0x1E69E9840];
  iCopy = i;
  contextsCopy = contexts;
  v6 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ICSearchIndexer objectForManagedObjectIDURI:inContexts:];
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__5;
  v48 = __Block_byref_object_dispose__5;
  v49 = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [(ICSearchIndexer *)self dataSources];
  v29 = [obj countByEnumeratingWithState:&v40 objects:v55 count:16];
  if (v29)
  {
    v28 = *v41;
    *&v7 = 138412546;
    v26 = v7;
LABEL_5:
    v8 = 0;
    while (1)
    {
      if (*v41 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v40 + 1) + 8 * v8);
      v10 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        dataSourceIdentifier = [v9 dataSourceIdentifier];
        *buf = v26;
        v52 = dataSourceIdentifier;
        v53 = 2112;
        v54 = iCopy;
        _os_log_debug_impl(&dword_1D4576000, v10, OS_LOG_TYPE_DEBUG, "Checking data source (%@) for item %@", buf, 0x16u);
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v11 = contextsCopy;
      v12 = [v11 countByEnumeratingWithState:&v36 objects:v50 count:16];
      if (v12)
      {
        v13 = *v37;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v37 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v36 + 1) + 8 * i);
            persistentStoreCoordinator = [v15 persistentStoreCoordinator];
            persistentStoreCoordinator2 = [v9 persistentStoreCoordinator];
            v18 = [persistentStoreCoordinator isEqual:persistentStoreCoordinator2];

            if (v18)
            {
              v12 = v15;
              goto LABEL_20;
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v36 objects:v50 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_20:

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __58__ICSearchIndexer_objectForManagedObjectIDURI_inContexts___block_invoke;
      v32[3] = &unk_1E8485258;
      v35 = &v44;
      v32[4] = v9;
      v33 = iCopy;
      v19 = v12;
      v34 = v19;
      [v19 performBlockAndWait:v32];
      v20 = v45[5] == 0;

      if (!v20)
      {
        break;
      }

      if (++v8 == v29)
      {
        v29 = [obj countByEnumeratingWithState:&v40 objects:v55 count:16];
        if (v29)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v22 = v45[5];
  if (!v22)
  {
    v23 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [ICSearchIndexer objectForManagedObjectIDURI:inContexts:];
    }

    v22 = v45[5];
  }

  v24 = v22;
  _Block_object_dispose(&v44, 8);

  return v24;
}

void __58__ICSearchIndexer_objectForManagedObjectIDURI_inContexts___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForManagedObjectIDURI:*(a1 + 40) context:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __58__ICSearchIndexer_objectForManagedObjectIDURI_inContexts___block_invoke_cold_1();
  }
}

- (void)retrySelector:(SEL)selector
{
  v13[3] = *MEMORY[0x1E69E9840];
  retryTimers = [(ICSearchIndexer *)self retryTimers];
  objc_sync_enter(retryTimers);
  v6 = NSStringFromSelector(selector);
  retryTimers2 = [(ICSearchIndexer *)self retryTimers];
  v8 = [retryTimers2 objectForKeyedSubscript:v6];

  if (v8)
  {
    if ([(ICBackoffTimer *)v8 isScheduled])
    {
      v9 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [ICSearchIndexer retrySelector:];
      }

      goto LABEL_10;
    }
  }

  else
  {
    v8 = [[ICBackoffTimer alloc] initWithInitialInterval:self maxInterval:selector target:v6 selector:1.0 userInfo:300.0];
    retryTimers3 = [(ICSearchIndexer *)self retryTimers];
    [retryTimers3 setObject:v8 forKeyedSubscript:v6];
  }

  v11 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(ICBackoffTimer *)v8 nextTimeInterval];
    [(ICSearchIndexer *)v6 retrySelector:v13, v11, v12];
  }

  [(ICBackoffTimer *)v8 scheduleToFire];
LABEL_10:

  objc_sync_exit(retryTimers);
}

- (void)clearRetryForSelector:(SEL)selector
{
  retryTimers = [(ICSearchIndexer *)self retryTimers];
  objc_sync_enter(retryTimers);
  v6 = NSStringFromSelector(selector);
  retryTimers2 = [(ICSearchIndexer *)self retryTimers];
  v8 = [retryTimers2 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ICSearchIndexer clearRetryForSelector:];
    }

    [v8 invalidate];
    retryTimers3 = [(ICSearchIndexer *)self retryTimers];
    [retryTimers3 removeObjectForKey:v6];
  }

  objc_sync_exit(retryTimers);
}

- (void)clearObjectIDsToProcess
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  dataSources = [(ICSearchIndexer *)self dataSources];
  v3 = [dataSources countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(dataSources);
        }

        [*(*(&v7 + 1) + 8 * v6++) clearObjectIDsToProcess];
      }

      while (v4 != v6);
      v4 = [dataSources countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)initWithSearchIndex:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 operationQueue];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __41__ICSearchIndexer_processReindexRequest___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1D4576000, a2, OS_LOG_TYPE_ERROR, "Unable to successfully reindex all items, keeping state for try next time. error: %@", v4, 0xCu);
}

void __40__ICSearchIndexer_startObservingChanges__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __39__ICSearchIndexer_stopObservingChanges__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __33__ICSearchIndexer_processChanges__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __33__ICSearchIndexer_processChanges__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __33__ICSearchIndexer_processChanges__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __33__ICSearchIndexer_processChanges__block_invoke_cold_4(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_0(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_5_0(&dword_1D4576000, v6, v4, "processChanges: Added operation %@ to operation queue %@", v5);
}

void __33__ICSearchIndexer_addDataSource___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __36__ICSearchIndexer_removeDataSource___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__ICSearchIndexer_cancelIndexingOperationsWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__ICSearchIndexer_cancelIndexingOperationsWithCompletionHandler___block_invoke_cold_2(id *a1)
{
  v1 = [*a1 operationQueue];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __65__ICSearchIndexer_cancelIndexingOperationsWithCompletionHandler___block_invoke_32_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __66__ICSearchIndexer_finishRemainingOperationsWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __66__ICSearchIndexer_finishRemainingOperationsWithCompletionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __66__ICSearchIndexer_finishRemainingOperationsWithCompletionHandler___block_invoke_cold_3(id *a1)
{
  v1 = [*a1 indexingQueue];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __66__ICSearchIndexer_finishRemainingOperationsWithCompletionHandler___block_invoke_cold_4(id *a1)
{
  v1 = [*a1 operationQueue];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __66__ICSearchIndexer_finishRemainingOperationsWithCompletionHandler___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __66__ICSearchIndexer_finishRemainingOperationsWithCompletionHandler___block_invoke_33_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)deleteAllSearchableItemsWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__ICSearchIndexer_deleteAllSearchableItemsWithCompletionHandler___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1D4576000, v0, OS_LOG_TYPE_ERROR, "Error deleting all searchable items: %@", v1, 0xCu);
}

void __65__ICSearchIndexer_deleteAllSearchableItemsWithCompletionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)pendingReindexingOperation
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__ICSearchIndexer_pendingReindexingOperation__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __70__ICSearchIndexer_reindexAllSearchableItemsInIndex_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __70__ICSearchIndexer_reindexAllSearchableItemsInIndex_completionHandler___block_invoke_cold_3(uint64_t a1, id *a2)
{
  v7 = [*a2 operationQueue];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __70__ICSearchIndexer_reindexAllSearchableItemsInIndex_completionHandler___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __70__ICSearchIndexer_reindexAllSearchableItemsInIndex_completionHandler___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __70__ICSearchIndexer_reindexAllSearchableItemsInIndex_completionHandler___block_invoke_cold_6(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_0(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_5_0(&dword_1D4576000, v6, v4, "reindexAllSearchableItemsInIndex: Added operation %@ to operation queue %@", v5);
}

void __70__ICSearchIndexer_reindexAllSearchableItemsInIndex_completionHandler___block_invoke_57_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __84__ICSearchIndexer_reindexSearchableItemsWithObjectIDURIs_inIndex_completionHandler___block_invoke_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  OUTLINED_FUNCTION_5_0(&dword_1D4576000, v1, v1, "Adding indexing operation %@ with objectIDURIs: %@", v2);
}

void __84__ICSearchIndexer_reindexSearchableItemsWithObjectIDURIs_inIndex_completionHandler___block_invoke_61_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)objectForManagedObjectIDURI:inContexts:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)objectForManagedObjectIDURI:inContexts:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __58__ICSearchIndexer_objectForManagedObjectIDURI_inContexts___block_invoke_cold_1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)retrySelector:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)retrySelector:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3, double a4)
{
  *a2 = 138412546;
  *(a2 + 4) = a1;
  *(a2 + 12) = 2048;
  *(a2 + 14) = a4;
  OUTLINED_FUNCTION_5_0(&dword_1D4576000, a3, a3, "Scheduling selector %@ to retry in %.0fs", a2);
}

- (void)clearRetryForSelector:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end