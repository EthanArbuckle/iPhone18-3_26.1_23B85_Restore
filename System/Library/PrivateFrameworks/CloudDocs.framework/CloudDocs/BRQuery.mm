@interface BRQuery
- (BOOL)_collectUpdates:(id)updates;
- (BRQuery)initWithQuery:(id)query values:(id)values sortingAttributes:(id)attributes items:(id)items;
- (NSMetadataQuery)query;
- (NSString)description;
- (const)resultAtIndex:(int64_t)index;
- (id)_classifyItems:(id)items deletedItemIDs:(id)ds;
- (id)_replacementObjectForQueryItem:(id)item;
- (id)_replacementObjectsForArrayOfQueryItem:(id)item;
- (id)attributeValueForName:(id)name forResultAtIndex:(int64_t)index;
- (id)valuesOfAttribute:(id)attribute;
- (int64_t)indexOfResult:(const void *)result;
- (unsigned)executeWithOptions:(unint64_t)options;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationWillResignActive:(id)active;
- (void)_handleAddedItemsNotifications:(id)notifications userInfo:(id)info;
- (void)_handleRemovedItemsNotifications:(id)notifications userInfo:(id)info;
- (void)_handleReplacedItemsNotifications:(id)notifications userInfo:(id)info;
- (void)_monitorNetworkForQueryItemIfNecessary:(id)necessary fpItemID:(id)d;
- (void)_monitorTransferForFPItemIfNecessary:(id)necessary;
- (void)_performBlockAsync:(id)async;
- (void)_postNote:(__CFString *)note;
- (void)_postNote:(__CFString *)note userInfo:(id)info;
- (void)_processChanges:(id)changes;
- (void)_processProgressUpdateBatch;
- (void)_processUpdates;
- (void)_runQuery;
- (void)_sendHasUpdateNotificationIfNeeded;
- (void)_setQueryState:(int)state;
- (void)_stopMonitoringTransferForFPItemID:(id)d;
- (void)_stopProgressObservers;
- (void)_watchScopes;
- (void)dealloc;
- (void)disableUpdates;
- (void)enableUpdates;
- (void)itemCollectionGathererDidInvalidate;
- (void)itemCollectionGathererDidReceiveUpdates:(id)updates deleteItemsWithIDs:(id)ds;
- (void)itemCollectionGathererFinishedGathering;
- (void)itemCollectionGathererGatheredItems:(id)items;
- (void)networkReachabilityChanged:(BOOL)changed;
- (void)notificationReceiverDidReceiveNotifications:(id)notifications;
- (void)notificationsReceiverDidFinishGathering:(id)gathering;
- (void)notificationsReceiverDidInvalidate:(id)invalidate;
- (void)notificationsReceiverDidReceiveNotificationsBatch:(id)batch;
- (void)processUpdates;
- (void)setBatchingParameters:(id *)parameters;
- (void)setCreateResultFunction:(void *)function withContext:(void *)context callbacks:(id *)callbacks;
- (void)setCreateValueFunction:(void *)function withContext:(void *)context callbacks:(id *)callbacks;
- (void)setExternalDocumentsBundleIdentifier:(id)identifier;
- (void)setQueryQueue:(id)queue;
- (void)setSearchScope:(id)scope withOptions:(unsigned int)options;
- (void)setSendHasUpdateNotification:(BOOL)notification;
- (void)stop;
@end

@implementation BRQuery

- (NSString)description
{
  if (atomic_load_explicit(&self->_disableCount, memory_order_acquire))
  {
    v3 = @"suspended";
  }

  else
  {
    v3 = @"running";
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = queryStateToCString[self->_queryState];
  return [v4 stringWithFormat:@"<%@:%p %@ state:%s predicate:%@>", v5, self, v3, v6, self->_predicate];
}

- (BRQuery)initWithQuery:(id)query values:(id)values sortingAttributes:(id)attributes items:(id)items
{
  queryCopy = query;
  valuesCopy = values;
  attributesCopy = attributes;
  itemsCopy = items;
  v49.receiver = self;
  v49.super_class = BRQuery;
  v14 = [(BRQuery *)&v49 init];
  [v14 setQuery:queryCopy];
  predicate = [queryCopy predicate];
  v16 = *(v14 + 6);
  *(v14 + 6) = predicate;

  v17 = [[BRItemCollectionGatherer alloc] initWithDelegate:v14 query:queryCopy];
  v18 = *(v14 + 35);
  *(v14 + 35) = v17;

  v19 = objc_opt_new();
  v20 = *(v14 + 36);
  *(v14 + 36) = v19;

  v21 = objc_opt_new();
  v22 = *(v14 + 37);
  *(v14 + 37) = v21;

  v23 = objc_opt_new();
  v24 = *(v14 + 40);
  *(v14 + 40) = v23;

  v25 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v26 = dispatch_queue_attr_make_with_autorelease_frequency(v25, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v27 = dispatch_queue_create("br-progress-queue", v26);

  v28 = *(v14 + 42);
  *(v14 + 42) = v27;

  v29 = br_pacer_create("br-progress-pacer", *(v14 + 42), 1.0);
  v30 = *(v14 + 41);
  *(v14 + 41) = v29;

  objc_initWeak(&location, v14);
  v31 = *(v14 + 41);
  v43 = MEMORY[0x1E69E9820];
  v44 = 3221225472;
  v45 = __56__BRQuery_initWithQuery_values_sortingAttributes_items___block_invoke;
  v46 = &unk_1E7A15630;
  objc_copyWeak(&v47, &location);
  br_pacer_set_event_handler(v31, &v43);
  br_pacer_resume(*(v14 + 41));
  v32 = [valuesCopy copy];
  v33 = *(v14 + 12);
  *(v14 + 12) = v32;

  v34 = [attributesCopy copy];
  v35 = *(v14 + 13);
  *(v14 + 13) = v34;

  *(v14 + 7) = xmmword_1AE33E030;
  *(v14 + 8) = xmmword_1AE33E030;
  *(v14 + 9) = xmmword_1AE33E030;
  v36 = objc_opt_new();
  v37 = *(v14 + 8);
  *(v14 + 8) = v36;

  v38 = objc_opt_new();
  v39 = *(v14 + 9);
  *(v14 + 9) = v38;

  v40 = objc_opt_new();
  v41 = *(v14 + 10);
  *(v14 + 10) = v40;

  objc_destroyWeak(&v47);
  objc_destroyWeak(&location);

  return v14;
}

void __56__BRQuery_initWithQuery_values_sortingAttributes_items___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processProgressUpdateBatch];
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] Assertion failed: _query == nil%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (id)valuesOfAttribute:(id)attribute
{
  v21 = *MEMORY[0x1E69E9840];
  attributeCopy = attribute;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_results, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_results;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v16 + 1) + 8 * v11);

        v13 = [v9 attributeForName:{attributeCopy, v16}];
        if (v13)
        {
          [v5 addObject:v13];
        }

        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_setQueryState:(int)state
{
  v30 = *MEMORY[0x1E69E9840];
  memset(v22, 0, sizeof(v22));
  __brc_create_section(0, "[BRQuery _setQueryState:]", 466, 0, v22);
  v5 = brc_bread_crumbs("[BRQuery _setQueryState:]", 466);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v18 = queryStateToCString[state];
    *location = 134218754;
    *&location[4] = v22[0];
    v24 = 2112;
    selfCopy = self;
    v26 = 2080;
    v27 = v18;
    v28 = 2112;
    v29 = v5;
    _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@: setting state to %s%@", location, 0x2Au);
  }

  self->_queryState = state;
  if (state == 4)
  {
    [(BRItemCollectionGatherer *)self->_collectionGatherer invalidate];
    collectionGatherer = self->_collectionGatherer;
    self->_collectionGatherer = 0;

    [(BRQuery *)self _stopProgressObservers];
    BRRemoveNetworkReachabilityObserver(self->_networkReachabilityToken);
    networkReachabilityToken = self->_networkReachabilityToken;
    self->_networkReachabilityToken = 0;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = getUIApplicationWillResignActiveNotification();
    [defaultCenter removeObserver:self name:v16 object:0];

    v13 = getUIApplicationDidBecomeActiveNotification();
    [defaultCenter removeObserver:self name:v13 object:0];
LABEL_9:

    goto LABEL_10;
  }

  if (state == 1)
  {
    if (!self->_networkReachabilityToken)
    {
      objc_initWeak(location, self);
      progressQueue = self->_progressQueue;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __26__BRQuery__setQueryState___block_invoke;
      v20[3] = &unk_1E7A16928;
      objc_copyWeak(&v21, location);
      v8 = BRAddNetworkReachabilityObserverWithCallbackQueue(progressQueue, v20);
      v9 = self->_networkReachabilityToken;
      self->_networkReachabilityToken = v8;

      v10 = self->_progressQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __26__BRQuery__setQueryState___block_invoke_2;
      block[3] = &unk_1E7A14798;
      block[4] = self;
      dispatch_async(v10, block);
      objc_destroyWeak(&v21);
      objc_destroyWeak(location);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v12 = getUIApplicationWillResignActiveNotification();
    [defaultCenter addObserver:self selector:sel__applicationWillResignActive_ name:v12 object:0];

    v13 = getUIApplicationDidBecomeActiveNotification();
    [defaultCenter addObserver:self selector:sel__applicationDidBecomeActive_ name:v13 object:0];
    goto LABEL_9;
  }

LABEL_10:
  __brc_leave_section(v22);
  v17 = *MEMORY[0x1E69E9840];
}

void __26__BRQuery__setQueryState___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained networkReachabilityChanged:a2];
}

void __26__BRQuery__setQueryState___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[BRReachabilityMonitor sharedReachabilityMonitor];
  [v1 networkReachabilityChanged:{objc_msgSend(v2, "isNetworkReachable")}];
}

- (void)disableUpdates
{
  atomic_fetch_add(&self->_disableCount, 1u);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __25__BRQuery_disableUpdates__block_invoke;
  v2[3] = &unk_1E7A14798;
  v2[4] = self;
  [(BRQuery *)self _performBlockAsync:v2];
}

uint64_t __25__BRQuery_disableUpdates__block_invoke(uint64_t result)
{
  v2 = (result + 32);
  v1 = *(result + 32);
  v3 = *(v1 + 276);
  *(v1 + 276) = v3 + 1;
  if (!v3)
  {
    v4 = brc_bread_crumbs("[BRQuery disableUpdates]_block_invoke", 507);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __25__BRQuery_disableUpdates__block_invoke_cold_1(v2);
    }

    return [*(*v2 + 280) disableUpdates];
  }

  return result;
}

- (void)enableUpdates
{
  atomic_fetch_add(&self->_disableCount, 0xFFFFFFFF);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __24__BRQuery_enableUpdates__block_invoke;
  v2[3] = &unk_1E7A14798;
  v2[4] = self;
  [(BRQuery *)self _performBlockAsync:v2];
}

uint64_t __24__BRQuery_enableUpdates__block_invoke(uint64_t result)
{
  v2 = (result + 32);
  v1 = *(result + 32);
  v3 = *(v1 + 276) - 1;
  *(v1 + 276) = v3;
  if (!v3)
  {
    v4 = brc_bread_crumbs("[BRQuery enableUpdates]_block_invoke", 521);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __24__BRQuery_enableUpdates__block_invoke_cold_1(v2);
    }

    return [*(*v2 + 280) enableUpdates];
  }

  return result;
}

- (void)_performBlockAsync:(id)async
{
  asyncCopy = async;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __30__BRQuery__performBlockAsync___block_invoke;
  v12[3] = &unk_1E7A16670;
  v12[4] = self;
  v5 = asyncCopy;
  v13 = v5;
  v6 = MEMORY[0x1B26FEA90](v12);
  queryQueue = self->_queryQueue;
  if (!queryQueue)
  {
    runLoop = self->_runLoop;
    if (runLoop)
    {
      CFRunLoopPerformBlock(runLoop, *MEMORY[0x1E695E8D0], v6);
      CFRunLoopWakeUp(self->_runLoop);
      goto LABEL_17;
    }

    active_platform = dyld_get_active_platform();
    if ((active_platform & 0xFFFFFFFB) != 2)
    {
      if (active_platform == 11)
      {
        if (!dyld_program_sdk_at_least())
        {
LABEL_9:
          v10 = brc_bread_crumbs("[BRQuery _performBlockAsync:]", 548);
          v11 = brc_default_log(0, 0);
          if (os_log_type_enabled(v11, 0x90u))
          {
            [BRQuery _performBlockAsync:];
          }

LABEL_16:

          goto LABEL_17;
        }

LABEL_14:
        v10 = brc_bread_crumbs("[BRQuery _performBlockAsync:]", 546);
        v11 = brc_default_log(0, 0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          [BRQuery _performBlockAsync:];
        }

        goto LABEL_16;
      }

      if (active_platform != 1)
      {
        syslog(5, "Unknown platform linking against CloudDocs framework %d", active_platform);
        goto LABEL_14;
      }
    }

    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  [(NSOperationQueue *)queryQueue addOperationWithBlock:v6];
LABEL_17:
}

void __30__BRQuery__performBlockAsync___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 280))
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = brc_bread_crumbs("[BRQuery _performBlockAsync:]_block_invoke", 532);
    v4 = brc_default_log(1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __30__BRQuery__performBlockAsync___block_invoke_cold_1();
    }
  }
}

- (void)stop
{
  v14 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  __brc_create_section(0, "[BRQuery stop]", 555, 0, v7);
  v3 = brc_bread_crumbs("[BRQuery stop]", 555);
  v4 = brc_default_log(1, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v9 = v7[0];
    v10 = 2112;
    selfCopy = self;
    v12 = 2112;
    v13 = v3;
    _os_log_debug_impl(&dword_1AE2A9000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx stopping %@%@", buf, 0x20u);
  }

  [(BRQuery *)self setQuery:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __15__BRQuery_stop__block_invoke;
  v6[3] = &unk_1E7A14798;
  v6[4] = self;
  [(BRQuery *)self _performBlockAsync:v6];
  __brc_leave_section(v7);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_watchScopes
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_runQuery
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] not doing anything, we're already started%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (unsigned)executeWithOptions:(unint64_t)options
{
  if (self->_results)
  {
    [BRQuery executeWithOptions:];
  }

  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:64];
  results = self->_results;
  self->_results = v4;

  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:64];
  fpItemIDToResultItem = self->_fpItemIDToResultItem;
  self->_fpItemIDToResultItem = v6;

  [(BRQuery *)self _runQuery];
  return 1;
}

- (id)attributeValueForName:(id)name forResultAtIndex:(int64_t)index
{
  nameCopy = name;
  if ([(NSMutableArray *)self->_results count]<= index)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_results objectAtIndex:index];
    v8 = [v7 attributeForName:nameCopy];
  }

  return v8;
}

- (int64_t)indexOfResult:(const void *)result
{
  v5 = [(NSMutableArray *)self->_results count];
  if (v5 < 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  while (1)
  {
    create_result_callbacks_equal = self->_create_result_callbacks_equal;
    v9 = [(NSMutableArray *)self->_results objectAtIndex:v7];
    LODWORD(create_result_callbacks_equal) = create_result_callbacks_equal([v9 replacement], result);

    if (create_result_callbacks_equal)
    {
      break;
    }

    if (v6 == ++v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v7;
}

- (id)_replacementObjectForQueryItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (self->_create_result_fn)
  {
    replacement = [itemCopy replacement];
    if (!replacement)
    {
      replacement = (self->_create_result_fn)(self, v5, self->_create_result_context);
      [v5 setReplacement:replacement];
    }
  }

  else
  {
    replacement = itemCopy;
  }

  return replacement;
}

- (id)_replacementObjectsForArrayOfQueryItem:(id)item
{
  v19 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(itemCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = itemCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(BRQuery *)self _replacementObjectForQueryItem:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (const)resultAtIndex:(int64_t)index
{
  if ([(NSMutableArray *)self->_results count]<= index)
  {
    return 0;
  }

  v5 = [(NSMutableArray *)self->_results objectAtIndex:index];
  v6 = [(BRQuery *)self _replacementObjectForQueryItem:v5];

  return v6;
}

- (void)setBatchingParameters:(id *)parameters
{
  v3 = *&parameters->var0;
  v4 = *&parameters->var4;
  *&self->_batchingParameters.progress_max_num = *&parameters->var2;
  *&self->_batchingParameters.update_max_num = v4;
  *&self->_batchingParameters.first_max_num = v3;
}

- (void)setExternalDocumentsBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCreateResultFunction:(void *)function withContext:(void *)context callbacks:(id *)callbacks
{
  self->_create_result_fn = function;
  self->_create_result_context = context;
  if (!callbacks)
  {
    self->_create_result_callbacks_equal = MLEqualCallback;
LABEL_7:
    var2 = MLReleaseCallback;
    goto LABEL_8;
  }

  var4 = callbacks->var4;
  if (!var4)
  {
    var4 = MLEqualCallback;
  }

  self->_create_result_callbacks_equal = var4;
  var2 = callbacks->var2;
  if (!var2)
  {
    goto LABEL_7;
  }

LABEL_8:
  self->_create_result_callbacks_release = var2;
}

- (void)setCreateValueFunction:(void *)function withContext:(void *)context callbacks:(id *)callbacks
{
  self->_create_value_fn = function;
  self->_create_value_context = context;
  if (!callbacks)
  {
    self->_create_value_callbacks_equal = MLEqualCallback;
LABEL_7:
    var2 = MLReleaseCallback;
    goto LABEL_8;
  }

  var4 = callbacks->var4;
  if (!var4)
  {
    var4 = MLEqualCallback;
  }

  self->_create_value_callbacks_equal = var4;
  var2 = callbacks->var2;
  if (!var2)
  {
    goto LABEL_7;
  }

LABEL_8:
  self->_create_value_callbacks_release = var2;
}

- (void)setSearchScope:(id)scope withOptions:(unsigned int)options
{
  v6 = [scope copy];
  searchScopes = self->_searchScopes;
  self->_searchScopes = v6;

  self->_scopeOptions = options;
}

- (void)setQueryQueue:(id)queue
{
  queueCopy = queue;
  v6 = queueCopy;
  if (self->_queryQueue != queueCopy)
  {
    if ([(NSOperationQueue *)queueCopy maxConcurrentOperationCount]!= 1)
    {
      v7 = brc_bread_crumbs("[BRQuery setQueryQueue:]", 784);
      v8 = brc_default_log(0, 0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [BRQuery setQueryQueue:];
      }
    }

    objc_storeStrong(&self->_queryQueue, queue);
  }
}

- (void)_postNote:(__CFString *)note
{
  v5 = brc_bread_crumbs("[BRQuery _postNote:]", 797);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRQuery _postNote:];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:note object:self];
}

- (void)_postNote:(__CFString *)note userInfo:(id)info
{
  v17 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v7 = brc_bread_crumbs("[BRQuery _postNote:userInfo:]", 803);
  v8 = brc_default_log(1, 0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412802;
    noteCopy = note;
    v13 = 2112;
    v14 = infoCopy;
    v15 = 2112;
    v16 = v7;
    _os_log_debug_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] posting %@: %@%@", &v11, 0x20u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:note object:self userInfo:infoCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_collectUpdates:(id)updates
{
  v42 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  memset(v34, 0, sizeof(v34));
  __brc_create_section(0, "[BRQuery _collectUpdates:]", 809, 0, v34);
  v5 = brc_bread_crumbs("[BRQuery _collectUpdates:]", 809);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v37 = v34[0];
    v38 = 2112;
    v39 = updatesCopy;
    v40 = 2112;
    v41 = v5;
    _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx changes = %@%@", buf, 0x20u);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = updatesCopy;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        fileObjectID = [v10 fileObjectID];
        isDead = [v10 isDead];
        diffs = [v10 diffs];
        if ((isDead & 1) == 0)
        {
          if ([(NSPredicate *)self->_predicate evaluateWithObject:v10])
          {
            v15 = 0;
            goto LABEL_13;
          }

          [v10 markDead];
        }

        v15 = 1;
LABEL_13:
        v16 = [(NSMutableDictionary *)self->_resultsByRowID objectForKey:fileObjectID];
        if (v16)
        {
          if (v15)
          {
            [(NSMutableDictionary *)self->_toBeReplacedByFileObjectID removeObjectForKey:fileObjectID];
LABEL_30:
            [(NSMutableDictionary *)self->_toBeRemovedByFileObjectID setObject:v16 forKey:fileObjectID];
            goto LABEL_33;
          }

          if ((diffs & 0xC030) != 0)
          {
            active_platform = dyld_get_active_platform();
            if ((active_platform & 0xFFFFFFFB) == 2 || active_platform == 1 || active_platform == 11)
            {
              if ((dyld_program_sdk_at_least() & 1) == 0)
              {
                [(NSMutableDictionary *)self->_toBeReplacedByFileObjectID removeObjectForKey:fileObjectID];
                [(NSMutableDictionary *)self->_toBeInsertedByFileObjectID setObject:v10 forKey:fileObjectID];
                goto LABEL_30;
              }
            }

            else
            {
              syslog(5, "Unknown platform linking against CloudDocs framework %d", active_platform);
            }
          }

          [(NSMutableDictionary *)self->_toBeReplacedByFileObjectID setObject:v10 forKey:fileObjectID];
          [(NSMutableDictionary *)self->_toBeRemovedByFileObjectID removeObjectForKey:fileObjectID];
        }

        else
        {
          toBeInsertedByFileObjectID = self->_toBeInsertedByFileObjectID;
          if (v15)
          {
            v16 = [(NSMutableDictionary *)toBeInsertedByFileObjectID objectForKey:fileObjectID];
            if ([v16 canMerge:v10])
            {
              [(NSMutableDictionary *)self->_toBeInsertedByFileObjectID removeObjectForKey:fileObjectID];
            }
          }

          else
          {
            v19 = [(NSMutableDictionary *)toBeInsertedByFileObjectID objectForKey:fileObjectID];
            v16 = v19;
            if (v19)
            {
              [v19 merge:v10];
            }

            else
            {
              [(NSMutableDictionary *)self->_toBeInsertedByFileObjectID setObject:v10 forKey:fileObjectID];
              v16 = 0;
            }
          }
        }

LABEL_33:

        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  v20 = brc_bread_crumbs("[BRQuery _collectUpdates:]", 872);
  v21 = brc_default_log(1, 0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [BRQuery _collectUpdates:?];
  }

  v22 = brc_bread_crumbs("[BRQuery _collectUpdates:]", 873);
  v23 = brc_default_log(1, 0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [BRQuery _collectUpdates:?];
  }

  v24 = brc_bread_crumbs("[BRQuery _collectUpdates:]", 874);
  v25 = brc_default_log(1, 0);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [BRQuery _collectUpdates:?];
  }

  kdebug_trace();
  v26 = [(NSMutableDictionary *)self->_toBeRemovedByFileObjectID count]|| [(NSMutableDictionary *)self->_toBeInsertedByFileObjectID count]|| [(NSMutableDictionary *)self->_toBeReplacedByFileObjectID count]!= 0;
  __brc_leave_section(v34);

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (void)_processUpdates
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [*self subarrayWithRange:{0, 200}];
  v7[0] = 67109634;
  v7[1] = 200;
  v8 = 2112;
  v9 = v5;
  v10 = 2112;
  v11 = a2;
  _os_log_debug_impl(&dword_1AE2A9000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] results (stripped to %d items) = %@%@", v7, 0x1Cu);

  v6 = *MEMORY[0x1E69E9840];
}

void __26__BRQuery__processUpdates__block_invoke(uint64_t a1, unint64_t a2)
{
  if ([*(*(a1 + 32) + 8) count] <= a2)
  {
    __26__BRQuery__processUpdates__block_invoke_cold_1();
  }

  v4 = [*(*(a1 + 32) + 8) objectAtIndex:a2];
  (*(*(a1 + 32) + 184))(0, [v4 replacement]);
  [v4 setReplacement:0];
}

- (void)_processChanges:(id)changes
{
  v32 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  memset(v22, 0, sizeof(v22));
  __brc_create_section(0, "[BRQuery _processChanges:]", 998, 0, v22);
  v5 = brc_bread_crumbs("[BRQuery _processChanges:]", 998);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v25 = v22[0];
    v26 = 2112;
    selfCopy = self;
    v28 = 2112;
    v29 = changesCopy;
    v30 = 2112;
    v31 = v5;
    _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@: processing changes %@%@", buf, 0x2Au);
  }

  if (self->_queryState == 4 || ([(BRQuery *)self query], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 == 0, v7, v8))
  {
    v13 = brc_bread_crumbs("[BRQuery _processChanges:]", 1001);
    v14 = brc_default_log(1, 0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BRQuery _processChanges:];
    }
  }

  else
  {
    if (self->_queryState == 1)
    {
      [(BRQuery *)self _setQueryState:2];
      [(BRQuery *)self _postNote:@"__kMDQueryWillChangeNotification"];
    }

    if (self->_needsCrashMarking)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = self->_results;
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v10)
      {
        v11 = *v19;
        do
        {
          v12 = 0;
          do
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v18 + 1) + 8 * v12++) setIsPreCrash:{1, v18}];
          }

          while (v10 != v12);
          v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v10);
      }

      self->_needsCrashMarking = 0;
    }

    if ([(BRQuery *)self _collectUpdates:changesCopy, v18]|| self->_needsCrashEvicting && [(NSMutableArray *)self->_results count])
    {
      [(BRQuery *)self _processUpdates];
    }

    else
    {
      v16 = brc_bread_crumbs("[BRQuery _processChanges:]", 1020);
      v17 = brc_default_log(1, 0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [BRQuery _processChanges:];
      }
    }

    if (self->_queryState == 2 && self->_ubiquitousGatherComplete)
    {
      [(BRQuery *)self _setQueryState:3];
      [(BRQuery *)self _postNote:@"kMDQueryDidFinishNotification"];
    }
  }

  __brc_leave_section(v22);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)processUpdates
{
  if (!atomic_load_explicit(&self->_disableCount, memory_order_acquire))
  {
    receiver = [(BRQuery *)self receiver];
    [receiver flush];
  }
}

- (void)_sendHasUpdateNotificationIfNeeded
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] posting has updates notifications%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setSendHasUpdateNotification:(BOOL)notification
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__BRQuery_setSendHasUpdateNotification___block_invoke;
  v3[3] = &unk_1E7A15768;
  v3[4] = self;
  notificationCopy = notification;
  [(BRQuery *)self _performBlockAsync:v3];
}

uint64_t __40__BRQuery_setSendHasUpdateNotification___block_invoke(uint64_t result)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 95) != *(result + 40))
  {
    v1 = result;
    v2 = brc_bread_crumbs("[BRQuery setSendHasUpdateNotification:]_block_invoke", 1061);
    v3 = brc_default_log(1, 0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = "Disabling";
      v6 = *(v1 + 32);
      if (*(v1 + 40))
      {
        v5 = "Enabling";
      }

      v7 = 136315650;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v2;
      _os_log_debug_impl(&dword_1AE2A9000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] %s update notifications on %@%@", &v7, 0x20u);
    }

    *(*(v1 + 32) + 95) = *(v1 + 40);
    result = [*(v1 + 32) _sendHasUpdateNotificationIfNeeded];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)notificationsReceiverDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__BRQuery_notificationsReceiverDidInvalidate___block_invoke;
  v6[3] = &unk_1E7A14A08;
  v6[4] = self;
  v7 = invalidateCopy;
  v5 = invalidateCopy;
  [(BRQuery *)self _performBlockAsync:v6];
}

void __46__BRQuery_notificationsReceiverDidInvalidate___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  memset(v15, 0, sizeof(v15));
  __brc_create_section(0, "[BRQuery notificationsReceiverDidInvalidate:]_block_invoke", 1073, 0, v15);
  v2 = brc_bread_crumbs("[BRQuery notificationsReceiverDidInvalidate:]_block_invoke", 1073);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    *buf = 134218498;
    v17 = v15[0];
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v2;
    _os_log_debug_impl(&dword_1AE2A9000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx remote process is gone for %@%@", buf, 0x20u);
  }

  v4 = *(a1 + 32);
  if (*(a1 + 40) != *(v4 + 32))
  {
    v13 = brc_bread_crumbs("[BRQuery notificationsReceiverDidInvalidate:]_block_invoke", 1075);
    v14 = brc_default_log(0, 0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      __46__BRQuery_notificationsReceiverDidInvalidate___block_invoke_cold_1();
    }

    v4 = *(a1 + 32);
  }

  if ((*(v4 + 88) | 4) != 4)
  {
    v5 = brc_bread_crumbs("[BRQuery notificationsReceiverDidInvalidate:]_block_invoke", 1079);
    v6 = brc_default_log(1, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __46__BRQuery_notificationsReceiverDidInvalidate___block_invoke_cold_2();
    }

    *(*(a1 + 32) + 92) = 0;
    *(*(a1 + 32) + 93) = 1;
    *(*(a1 + 32) + 94) = 1;
    v4 = *(a1 + 32);
  }

  [v4 setReceiver:0];
  if (*(*(a1 + 32) + 88) != 4)
  {
    v7 = objc_alloc_init(BRNotificationReceiver);
    [(BRNotificationReceiver *)v7 setDelegate:*(a1 + 32)];
    v8 = *(a1 + 32);
    if (v8[69])
    {
      [(BRNotificationReceiver *)v7 suspend];
      v8 = *(a1 + 32);
    }

    [v8 setReceiver:v7];
    if (*(*(a1 + 32) + 88))
    {
      v9 = brc_bread_crumbs("[BRQuery notificationsReceiverDidInvalidate:]_block_invoke", 1104);
      v10 = brc_default_log(1, 0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __46__BRQuery_notificationsReceiverDidInvalidate___block_invoke_cold_3();
      }

      [*(a1 + 32) _setQueryState:*(*(a1 + 32) + 88)];
      [*(a1 + 32) _watchScopes];
    }
  }

  __brc_leave_section(v15);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)notificationsReceiverDidFinishGathering:(id)gathering
{
  v16 = *MEMORY[0x1E69E9840];
  gatheringCopy = gathering;
  memset(v9, 0, sizeof(v9));
  __brc_create_section(0, "[BRQuery notificationsReceiverDidFinishGathering:]", 1113, 0, v9);
  v5 = brc_bread_crumbs("[BRQuery notificationsReceiverDidFinishGathering:]", 1113);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v11 = v9[0];
    v12 = 2112;
    v13 = gatheringCopy;
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx received gathering done for %@%@", buf, 0x20u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__BRQuery_notificationsReceiverDidFinishGathering___block_invoke;
  v8[3] = &unk_1E7A16978;
  v8[4] = self;
  [gatheringCopy dequeue:-1 block:v8];
  __brc_leave_section(v9);

  v7 = *MEMORY[0x1E69E9840];
}

void __51__BRQuery_notificationsReceiverDidFinishGathering___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__BRQuery_notificationsReceiverDidFinishGathering___block_invoke_2;
  v6[3] = &unk_1E7A14A08;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 _performBlockAsync:v6];
}

- (void)notificationsReceiverDidReceiveNotificationsBatch:(id)batch
{
  v16 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  memset(v9, 0, sizeof(v9));
  __brc_create_section(0, "[BRQuery notificationsReceiverDidReceiveNotificationsBatch:]", 1124, 0, v9);
  v5 = brc_bread_crumbs("[BRQuery notificationsReceiverDidReceiveNotificationsBatch:]", 1124);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v11 = v9[0];
    v12 = 2112;
    v13 = batchCopy;
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx received notifications for %@%@", buf, 0x20u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__BRQuery_notificationsReceiverDidReceiveNotificationsBatch___block_invoke;
  v8[3] = &unk_1E7A16978;
  v8[4] = self;
  [batchCopy dequeue:-1 block:v8];
  __brc_leave_section(v9);

  v7 = *MEMORY[0x1E69E9840];
}

void __61__BRQuery_notificationsReceiverDidReceiveNotificationsBatch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__BRQuery_notificationsReceiverDidReceiveNotificationsBatch___block_invoke_2;
  v6[3] = &unk_1E7A14A08;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 _performBlockAsync:v6];
}

- (void)notificationReceiverDidReceiveNotifications:(id)notifications
{
  if (self->_sendHasUpdateNotification)
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__BRQuery_notificationReceiverDidReceiveNotifications___block_invoke;
    v5[3] = &unk_1E7A14798;
    v5[4] = self;
    [(BRQuery *)self _performBlockAsync:v5];
  }
}

- (void)networkReachabilityChanged:(BOOL)changed
{
  changedCopy = changed;
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_progressQueue);
  memset(v10, 0, sizeof(v10));
  __brc_create_section(0, "[BRQuery networkReachabilityChanged:]", 1147, 0, v10);
  v5 = brc_bread_crumbs("[BRQuery networkReachabilityChanged:]", 1147);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = "not reachable";
    *buf = 134218498;
    if (changedCopy)
    {
      v8 = "reachable";
    }

    v12 = v10[0];
    v13 = 2080;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx network is %s%@", buf, 0x20u);
  }

  self->_isNetworkOffline = !changedCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__BRQuery_networkReachabilityChanged___block_invoke;
  v9[3] = &unk_1E7A14798;
  v9[4] = self;
  [(BRQuery *)self _performBlockAsync:v9];
  __brc_leave_section(v10);
  v7 = *MEMORY[0x1E69E9840];
}

void __38__BRQuery_networkReachabilityChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 336);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__BRQuery_networkReachabilityChanged___block_invoke_2;
  block[3] = &unk_1E7A14798;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void __38__BRQuery_networkReachabilityChanged___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 296) count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = *(*(a1 + 32) + 296);
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          v8 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:{v7, v10}];
          [v8 setIsNetworkOffline:*(*(a1 + 32) + 304)];
          [*(*(a1 + 32) + 320) addObject:v7];
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }

    br_pacer_signal(*(*(a1 + 32) + 328));
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_monitorTransferForFPItemIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  dispatch_assert_queue_V2(self->_progressQueue);
  if (([necessaryCopy isUploading] & 1) != 0 || objc_msgSend(necessaryCopy, "isDownloading"))
  {
    progressObserverByFPItemID = self->_progressObserverByFPItemID;
    itemID = [necessaryCopy itemID];
    itemID3 = [(NSMutableDictionary *)progressObserverByFPItemID objectForKeyedSubscript:itemID];

    if (itemID3)
    {
      [(BRFPItemProgressObserver *)itemID3 updateWithFPItem:necessaryCopy];
    }

    else
    {
      itemID3 = [[BRFPItemProgressObserver alloc] initWithFPItem:necessaryCopy queue:self->_progressQueue];
      objc_initWeak(&location, self);
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __48__BRQuery__monitorTransferForFPItemIfNecessary___block_invoke;
      v13 = &unk_1E7A169A0;
      objc_copyWeak(&v14, &location);
      [(BRFPItemProgressObserver *)itemID3 setProgressHandler:&v10];
      v8 = self->_progressObserverByFPItemID;
      itemID2 = [necessaryCopy itemID];
      [(NSMutableDictionary *)v8 setObject:itemID3 forKeyedSubscript:itemID2];

      [(BRFPItemProgressObserver *)itemID3 start];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    itemID3 = [necessaryCopy itemID];
    [(BRQuery *)self _stopMonitoringTransferForFPItemID:itemID3];
  }
}

void __48__BRQuery__monitorTransferForFPItemIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[40];
    v6 = [v7 fpItemID];
    [v5 addObject:v6];

    br_pacer_signal(v4[41]);
  }
}

- (void)_monitorNetworkForQueryItemIfNecessary:(id)necessary fpItemID:(id)d
{
  dCopy = d;
  necessaryCopy = necessary;
  if ([necessaryCopy isInTransfer])
  {
    [necessaryCopy setIsNetworkOffline:self->_isNetworkOffline];

    [(NSMutableSet *)self->_fpItemIDsInTransfer addObject:dCopy];
  }

  else
  {
    [necessaryCopy setIsNetworkOffline:0];

    [(NSMutableSet *)self->_fpItemIDsInTransfer removeObject:dCopy];
  }
}

- (void)_stopMonitoringTransferForFPItemID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_progressQueue);
  v4 = [(NSMutableDictionary *)self->_progressObserverByFPItemID objectForKeyedSubscript:dCopy];
  v5 = v4;
  if (v4)
  {
    [v4 stop];
    [(NSMutableDictionary *)self->_progressObserverByFPItemID setObject:0 forKeyedSubscript:dCopy];
  }

  [(NSMutableSet *)self->_fpItemIDsWithProgressUpdates removeObject:dCopy];
}

- (void)_stopProgressObservers
{
  progressQueue = self->_progressQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__BRQuery__stopProgressObservers__block_invoke;
  block[3] = &unk_1E7A14798;
  block[4] = self;
  dispatch_sync(progressQueue, block);
}

uint64_t __33__BRQuery__stopProgressObservers__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(*(a1 + 32) + 288) objectEnumerator];
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

        [*(*(&v9 + 1) + 8 * v6++) stop];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = [*(*(a1 + 32) + 288) removeAllObjects];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_processProgressUpdateBatch
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __38__BRQuery__processProgressUpdateBatch__block_invoke;
  v2[3] = &unk_1E7A14798;
  v2[4] = self;
  [(BRQuery *)self _performBlockAsync:v2];
}

void __38__BRQuery__processProgressUpdateBatch__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v3 = objc_opt_new();
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = *(a1 + 32);
  v6 = *(v5 + 336);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__BRQuery__processProgressUpdateBatch__block_invoke_2;
  block[3] = &unk_1E7A15740;
  block[4] = v5;
  v7 = v2;
  v18 = v7;
  v8 = v3;
  v19 = v8;
  v9 = v4;
  v20 = v9;
  dispatch_sync(v6, block);
  if ([v8 count])
  {
    [*(a1 + 32) _postNote:@"__kMDQueryWillChangeNotification"];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
    [WeakRetained willChange:4 valuesAtIndexes:v7 forKey:@"results"];

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = [*(a1 + 32) _replacementObjectsForArrayOfQueryItem:v9];
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A650]];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __38__BRQuery__processProgressUpdateBatch__block_invoke_138;
    v16[3] = &unk_1E7A169C8;
    v16[4] = *(a1 + 32);
    [v8 enumerateKeysAndObjectsUsingBlock:v16];
    v13 = objc_loadWeakRetained((*(a1 + 32) + 40));
    [v13 didChange:4 valuesAtIndexes:v7 forKey:@"results"];

    v14 = *(a1 + 32);
    v15 = v14[22];
    if (v15 == 2)
    {
      [v14 _postNote:@"kMDQueryProgressNotification"];
    }

    else if (v15 == 3)
    {
      [v14 _postNote:@"kMDQueryDidUpdateNotification" userInfo:v11];
    }
  }
}

uint64_t __38__BRQuery__processProgressUpdateBatch__block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = *(*(a1 + 32) + 320);
  v3 = [v2 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v27;
    *&v4 = 138412546;
    v25 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:{v8, v25, v26}];
        v10 = [*(*(a1 + 32) + 288) objectForKeyedSubscript:v8];
        v11 = v10;
        if (v9)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (v12 || (v13 = [*(*(a1 + 32) + 8) indexOfObjectIdenticalTo:v9], v13 == 0x7FFFFFFFFFFFFFFFLL))
        {
          v14 = brc_bread_crumbs("[BRQuery _processProgressUpdateBatch]_block_invoke_2", 1262);
          v15 = brc_default_log(1, 0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v25;
            v31 = v8;
            v32 = 2112;
            v33 = v14;
            _os_log_impl(&dword_1AE2A9000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Result not found for progress update %@%@", buf, 0x16u);
          }
        }

        else
        {
          v16 = v13;
          v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
          v17 = [v11 downloadPercentCompleted];

          if (v17)
          {
            v18 = [v11 downloadPercentCompleted];
            [v14 setObject:v18 forKey:@"kICDDownloadPercent"];
          }

          v19 = [v11 uploadPercentCompleted];

          if (v19)
          {
            v20 = [v11 uploadPercentCompleted];
            [v14 setObject:v20 forKey:@"kICDUploadPercent"];
          }

          [*(a1 + 40) addIndex:v16];
          v21 = *(a1 + 48);
          v22 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
          [v21 setObject:v14 forKey:v22];

          [*(a1 + 56) addObject:v9];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v5);
  }

  result = [*(*(a1 + 32) + 320) removeAllObjects];
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void __38__BRQuery__processProgressUpdateBatch__block_invoke_138(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a3;
  v8 = [v4 objectAtIndex:{objc_msgSend(a2, "unsignedLongValue")}];
  v6 = [v5 valueForKey:@"kICDDownloadPercent"];
  [v8 setAttribute:v6 forKey:@"dl%"];

  v7 = [v5 valueForKey:@"kICDUploadPercent"];

  [v8 setAttribute:v7 forKey:@"ul%"];
}

- (id)_classifyItems:(id)items deletedItemIDs:(id)ds
{
  v71 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  dsCopy = ds;
  v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = dsCopy;
  v8 = [obj countByEnumeratingWithState:&v53 objects:v70 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v54;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v54 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v53 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_fpItemIDToResultItem objectForKey:v12];
        if (v13)
        {
          v14 = [(NSMutableArray *)self->_results indexOfObjectIdenticalTo:v13];
          if (v14 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [BRQuery _classifyItems:&v69 deletedItemIDs:?];
          }

          v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
          [v48 setObject:v12 forKey:v15];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v53 objects:v70 count:16];
    }

    while (v9);
  }

  v16 = ![(NSArray *)self->_searchScopes containsObject:*MEMORY[0x1E696A638]]&& [(NSArray *)self->_searchScopes containsObject:*MEMORY[0x1E696A640]];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v46 = itemsCopy;
  v17 = [v46 countByEnumeratingWithState:&v49 objects:v67 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v50;
    *&v18 = 138412546;
    v41 = v18;
    v44 = *v50;
    do
    {
      v21 = 0;
      v45 = v19;
      do
      {
        if (*v50 != v20)
        {
          objc_enumerationMutation(v46);
        }

        v22 = *(*(&v49 + 1) + 8 * v21);
        if (v16 && [*(*(&v49 + 1) + 8 * v21) br_isDocumentsFolder])
        {
          itemID = brc_bread_crumbs("[BRQuery _classifyItems:deletedItemIDs:]", 1325);
          v24 = brc_default_log(1, 0);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = v41;
            v60 = v22;
            v61 = 2112;
            *v62 = itemID;
            _os_log_debug_impl(&dword_1AE2A9000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] Ignoring Documents Folder %@ from NSMDQ results%@", buf, 0x16u);
          }

          goto LABEL_35;
        }

        itemID = [v22 itemID];
        predicate = self->_predicate;
        v26 = [[BRQueryItem alloc] initWithFPItem:v22];
        v27 = [(NSPredicate *)predicate evaluateWithObject:v26];

        v24 = [(NSMutableDictionary *)self->_fpItemIDToResultItem objectForKey:itemID];
        if (v24)
        {
          v28 = [(NSMutableArray *)self->_results indexOfObjectIdenticalTo:v24];
          if (v28 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [BRQuery _classifyItems:&v66 deletedItemIDs:?];
            if (v27)
            {
              goto LABEL_27;
            }
          }

          else if (v27)
          {
LABEL_27:
            fileURL = [v22 fileURL];

            if (fileURL)
            {
              v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v28];
              [v43 setObject:v22 forKey:v30];

              v19 = v45;
              goto LABEL_35;
            }
          }

          v31 = v16;
          v32 = brc_bread_crumbs("[BRQuery _classifyItems:deletedItemIDs:]", 1337);
          v33 = brc_default_log(1, 0);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            fileURL2 = [v22 fileURL];
            *buf = 138413058;
            v60 = v22;
            v61 = 1024;
            *v62 = v27;
            *&v62[4] = 2112;
            *&v62[6] = fileURL2;
            v37 = fileURL2;
            v63 = 2112;
            v64 = v32;
            _os_log_debug_impl(&dword_1AE2A9000, v33, OS_LOG_TYPE_DEBUG, "[DEBUG] Removing %@ from the set -- itemSatisfiesPredicate = %d, url = %@%@", buf, 0x26u);
          }

          itemID2 = [v22 itemID];
          v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v28];
          [v48 setObject:itemID2 forKey:v35];

          v16 = v31;
          v20 = v44;
          v19 = v45;
          goto LABEL_35;
        }

        if (v27)
        {
          [v42 addObject:v22];
        }

LABEL_35:

        ++v21;
      }

      while (v19 != v21);
      v19 = [v46 countByEnumeratingWithState:&v49 objects:v67 count:16];
    }

    while (v19);
  }

  v57[0] = @"kICDQueryAddedItems";
  v57[1] = @"kICDQueryRemovedItems";
  v58[0] = v42;
  v58[1] = v48;
  v57[2] = @"kICDQueryReplacedItems";
  v58[2] = v43;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:3];

  v39 = *MEMORY[0x1E69E9840];

  return v38;
}

- (void)_handleAddedItemsNotifications:(id)notifications userInfo:(id)info
{
  notificationsCopy = notifications;
  infoCopy = info;
  if ([notificationsCopy count])
  {
    v8 = [(NSMutableArray *)self->_results count];
    v9 = [notificationsCopy count];
    v10 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{v8, v9}];
    WeakRetained = objc_loadWeakRetained(&self->_query);
    [WeakRetained willChange:2 valuesAtIndexes:v10 forKey:@"results"];
    if (infoCopy)
    {
      v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(notificationsCopy, "count")}];
    }

    else
    {
      v12 = 0;
    }

    progressQueue = self->_progressQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__BRQuery__handleAddedItemsNotifications_userInfo___block_invoke;
    block[3] = &unk_1E7A149E0;
    v17 = notificationsCopy;
    v14 = v12;
    v18 = v14;
    selfCopy = self;
    dispatch_sync(progressQueue, block);
    if (infoCopy)
    {
      v15 = [(BRQuery *)self _replacementObjectsForArrayOfQueryItem:v14];
      [infoCopy setObject:v15 forKeyedSubscript:*MEMORY[0x1E696A648]];
    }

    [WeakRetained didChange:2 valuesAtIndexes:v10 forKey:@"results"];
  }
}

void __51__BRQuery__handleAddedItemsNotifications_userInfo___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__BRQuery__handleAddedItemsNotifications_userInfo___block_invoke_2;
  v5[3] = &unk_1E7A169F0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v5];
}

void __51__BRQuery__handleAddedItemsNotifications_userInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [[BRQueryItem alloc] initWithFPItem:v9];
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 addObject:v3];
  }

  [*(a1 + 40) _monitorTransferForFPItemIfNecessary:v9];
  v5 = *(a1 + 40);
  v6 = [v9 itemID];
  [v5 _monitorNetworkForQueryItemIfNecessary:v3 fpItemID:v6];

  [*(*(a1 + 40) + 8) addObject:v3];
  v7 = *(*(a1 + 40) + 24);
  v8 = [v9 itemID];
  [v7 setObject:v3 forKey:v8];
}

- (void)_handleReplacedItemsNotifications:(id)notifications userInfo:(id)info
{
  notificationsCopy = notifications;
  infoCopy = info;
  if ([notificationsCopy count])
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __54__BRQuery__handleReplacedItemsNotifications_userInfo___block_invoke;
    v22[3] = &unk_1E7A16A18;
    v9 = v8;
    v23 = v9;
    [notificationsCopy enumerateKeysAndObjectsUsingBlock:v22];
    WeakRetained = objc_loadWeakRetained(&self->_query);
    [WeakRetained willChange:4 valuesAtIndexes:v9 forKey:@"results"];
    if (infoCopy)
    {
      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(notificationsCopy, "count")}];
    }

    else
    {
      v11 = 0;
    }

    progressQueue = self->_progressQueue;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __54__BRQuery__handleReplacedItemsNotifications_userInfo___block_invoke_2;
    v18 = &unk_1E7A149E0;
    v19 = notificationsCopy;
    v13 = v11;
    v20 = v13;
    selfCopy = self;
    dispatch_sync(progressQueue, &v15);
    if (infoCopy)
    {
      v14 = [(BRQuery *)self _replacementObjectsForArrayOfQueryItem:v13, v15, v16, v17, v18, v19];
      [infoCopy setObject:v14 forKeyedSubscript:*MEMORY[0x1E696A650]];
    }

    [WeakRetained didChange:4 valuesAtIndexes:v9 forKey:{@"results", v15, v16, v17, v18}];
  }
}

uint64_t __54__BRQuery__handleReplacedItemsNotifications_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 unsignedLongValue];

  return [v2 addIndex:v3];
}

void __54__BRQuery__handleReplacedItemsNotifications_userInfo___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__BRQuery__handleReplacedItemsNotifications_userInfo___block_invoke_3;
  v5[3] = &unk_1E7A16A40;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void __54__BRQuery__handleReplacedItemsNotifications_userInfo___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v7 = [v5 unsignedLongValue];
    if (v7 >= [*(*(a1 + 40) + 8) count])
    {
      __54__BRQuery__handleReplacedItemsNotifications_userInfo___block_invoke_3_cold_1();
    }

    v8 = *(a1 + 32);
    v9 = [*(*(a1 + 40) + 8) objectAtIndex:{objc_msgSend(v5, "unsignedLongValue")}];
    [v8 addObject:v9];
  }

  v10 = [[BRQueryItem alloc] initWithFPItem:v6];
  [*(a1 + 40) _monitorTransferForFPItemIfNecessary:v6];
  v11 = *(a1 + 40);
  v12 = [v6 itemID];
  [v11 _monitorNetworkForQueryItemIfNecessary:v10 fpItemID:v12];

  v13 = *(*(a1 + 40) + 24);
  v14 = [v6 itemID];
  v15 = [v13 objectForKey:v14];

  [v15 merge:v10 allowMergingFileObjectIDIfPossible:1];
}

- (void)_handleRemovedItemsNotifications:(id)notifications userInfo:(id)info
{
  notificationsCopy = notifications;
  infoCopy = info;
  if ([notificationsCopy count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_query);
    v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
    if (infoCopy)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(notificationsCopy, "count")}];
    }

    else
    {
      v10 = 0;
    }

    progressQueue = self->_progressQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__BRQuery__handleRemovedItemsNotifications_userInfo___block_invoke;
    block[3] = &unk_1E7A15740;
    v17 = notificationsCopy;
    v12 = v10;
    v18 = v12;
    selfCopy = self;
    v13 = v9;
    v20 = v13;
    dispatch_sync(progressQueue, block);
    [WeakRetained willChange:3 valuesAtIndexes:v13 forKey:@"results"];
    if (infoCopy)
    {
      v14 = [(BRQuery *)self _replacementObjectsForArrayOfQueryItem:v12];
      [infoCopy setObject:v14 forKeyedSubscript:*MEMORY[0x1E696A658]];
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__BRQuery__handleRemovedItemsNotifications_userInfo___block_invoke_3;
    v15[3] = &unk_1E7A16950;
    v15[4] = self;
    [v13 enumerateIndexesWithOptions:2 usingBlock:v15];
    [(NSMutableArray *)self->_results removeObjectsAtIndexes:v13];
    [WeakRetained didChange:3 valuesAtIndexes:v13 forKey:@"results"];
  }
}

void __53__BRQuery__handleRemovedItemsNotifications_userInfo___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__BRQuery__handleRemovedItemsNotifications_userInfo___block_invoke_2;
  v6[3] = &unk_1E7A16A68;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];
}

void __53__BRQuery__handleRemovedItemsNotifications_userInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [*(*(a1 + 40) + 8) objectAtIndex:{objc_msgSend(v8, "unsignedLongValue")}];
    [v6 addObject:v7];
  }

  [*(a1 + 48) addIndex:{objc_msgSend(v8, "unsignedLongValue")}];
  [*(*(a1 + 40) + 24) removeObjectForKey:v5];
  [*(a1 + 40) _stopMonitoringTransferForFPItemID:v5];
}

void __53__BRQuery__handleRemovedItemsNotifications_userInfo___block_invoke_3(uint64_t a1, unint64_t a2)
{
  if ([*(*(a1 + 32) + 8) count] <= a2)
  {
    __53__BRQuery__handleRemovedItemsNotifications_userInfo___block_invoke_3_cold_1();
  }

  v4 = [*(*(a1 + 32) + 8) objectAtIndex:a2];
  (*(*(a1 + 32) + 184))(0, [v4 replacement]);
  [v4 setReplacement:0];
}

- (void)itemCollectionGathererFinishedGathering
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__BRQuery_itemCollectionGathererFinishedGathering__block_invoke;
  v2[3] = &unk_1E7A14798;
  v2[4] = self;
  [(BRQuery *)self _performBlockAsync:v2];
}

void __50__BRQuery_itemCollectionGathererFinishedGathering__block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs("[BRQuery itemCollectionGathererFinishedGathering]_block_invoke", 1461);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __50__BRQuery_itemCollectionGathererFinishedGathering__block_invoke_cold_1();
  }

  v4 = *(a1 + 32);
  if (*(v4 + 88) != 3)
  {
    *(v4 + 92) = 1;
    [*(a1 + 32) _setQueryState:3];
    [*(a1 + 32) _postNote:@"kMDQueryDidFinishNotification"];
  }
}

- (void)itemCollectionGathererGatheredItems:(id)items
{
  itemsCopy = items;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__BRQuery_itemCollectionGathererGatheredItems___block_invoke;
  v6[3] = &unk_1E7A14A08;
  v6[4] = self;
  v7 = itemsCopy;
  v5 = itemsCopy;
  [(BRQuery *)self _performBlockAsync:v6];
}

void __47__BRQuery_itemCollectionGathererGatheredItems___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs("[BRQuery itemCollectionGathererGatheredItems:]_block_invoke", 1473);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __47__BRQuery_itemCollectionGathererGatheredItems___block_invoke_cold_1();
  }

  v4 = *(a1 + 32);
  if (v4[22] == 1)
  {
    [v4 _setQueryState:2];
    v4 = *(a1 + 32);
  }

  [v4 _postNote:@"__kMDQueryWillChangeNotification"];
  v5 = [*(a1 + 32) _classifyItems:*(a1 + 40) deletedItemIDs:0];
  v6 = [v5 objectForKey:@"kICDQueryReplacedItems"];
  v7 = [v5 objectForKey:@"kICDQueryAddedItems"];
  if ([v7 count] || objc_msgSend(v6, "count"))
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    [*(a1 + 32) _handleAddedItemsNotifications:v7 userInfo:v8];
    [*(a1 + 32) _handleReplacedItemsNotifications:v6 userInfo:v8];
    v9 = *(a1 + 32);
    v10 = v9[22];
    if (v10 == 2)
    {
      [v9 _postNote:@"kMDQueryProgressNotification"];
    }

    else if (v10 == 3)
    {
      [v9 _postNote:@"kMDQueryDidUpdateNotification" userInfo:v8];
    }
  }
}

- (void)itemCollectionGathererDidReceiveUpdates:(id)updates deleteItemsWithIDs:(id)ds
{
  updatesCopy = updates;
  dsCopy = ds;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__BRQuery_itemCollectionGathererDidReceiveUpdates_deleteItemsWithIDs___block_invoke;
  v10[3] = &unk_1E7A149E0;
  v10[4] = self;
  v11 = updatesCopy;
  v12 = dsCopy;
  v8 = dsCopy;
  v9 = updatesCopy;
  [(BRQuery *)self _performBlockAsync:v10];
}

void __70__BRQuery_itemCollectionGathererDidReceiveUpdates_deleteItemsWithIDs___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[22] == 1)
  {
    [v2 _setQueryState:2];
    [*(a1 + 32) _postNote:@"__kMDQueryWillChangeNotification"];
  }

  v3 = brc_bread_crumbs("[BRQuery itemCollectionGathererDidReceiveUpdates:deleteItemsWithIDs:]_block_invoke", 1510);
  v4 = brc_default_log(1, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __70__BRQuery_itemCollectionGathererDidReceiveUpdates_deleteItemsWithIDs___block_invoke_cold_1(a1);
  }

  v5 = [*(a1 + 32) _classifyItems:*(a1 + 40) deletedItemIDs:*(a1 + 48)];
  v6 = [v5 objectForKey:@"kICDQueryReplacedItems"];
  v7 = [v5 objectForKey:@"kICDQueryRemovedItems"];
  v8 = [v5 objectForKey:@"kICDQueryAddedItems"];
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  if ([v6 count] || objc_msgSend(v7, "count") || objc_msgSend(v8, "count"))
  {
    [*(a1 + 32) _postNote:@"__kMDQueryWillChangeNotification"];
    [*(a1 + 32) _handleAddedItemsNotifications:v8 userInfo:v9];
    [*(a1 + 32) _handleReplacedItemsNotifications:v6 userInfo:v9];
    [*(a1 + 32) _handleRemovedItemsNotifications:v7 userInfo:v9];
    v10 = *(a1 + 32);
    v11 = v10[22];
    if (v11 == 2)
    {
      [v10 _postNote:@"kMDQueryProgressNotification"];
    }

    else if (v11 == 3)
    {
      [v10 _postNote:@"kMDQueryDidUpdateNotification" userInfo:v9];
    }
  }
}

- (void)itemCollectionGathererDidInvalidate
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46__BRQuery_itemCollectionGathererDidInvalidate__block_invoke;
  v2[3] = &unk_1E7A14798;
  v2[4] = self;
  [(BRQuery *)self _performBlockAsync:v2];
}

void __46__BRQuery_itemCollectionGathererDidInvalidate__block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v2 = brc_bread_crumbs("[BRQuery itemCollectionGathererDidInvalidate]_block_invoke", 1567);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __46__BRQuery_itemCollectionGathererDidInvalidate__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v5 = [*(*(a1 + 32) + 8) count];
  v6 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, v5}];
  [WeakRetained willChange:3 valuesAtIndexes:v6 forKey:@"results"];
  v26 = *MEMORY[0x1E696A658];
  v7 = *(a1 + 32);
  v8 = [v7[3] allValues];
  v9 = [v7 _replacementObjectsForArrayOfQueryItem:v8];
  v27[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __46__BRQuery_itemCollectionGathererDidInvalidate__block_invoke_144;
  v25[3] = &unk_1E7A16950;
  v25[4] = *(a1 + 32);
  [v6 enumerateIndexesWithOptions:2 usingBlock:v25];
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:64];
  v12 = *(a1 + 32);
  v13 = *(v12 + 8);
  *(v12 + 8) = v11;

  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:64];
  v15 = *(a1 + 32);
  v16 = *(v15 + 24);
  *(v15 + 24) = v14;

  [WeakRetained didChange:3 valuesAtIndexes:v6 forKey:@"results"];
  v17 = *(a1 + 32);
  v18 = v17[22];
  switch(v18)
  {
    case 2:
      [v17 _postNote:@"kMDQueryProgressNotification"];
      break;
    case 4:
      goto LABEL_12;
    case 3:
      [v17 _postNote:@"kMDQueryDidUpdateNotification" userInfo:v10];
      break;
  }

  v19 = [[BRItemCollectionGatherer alloc] initWithDelegate:*(a1 + 32) query:WeakRetained];
  v20 = *(a1 + 32);
  v21 = *(v20 + 280);
  *(v20 + 280) = v19;

  if (*(*(a1 + 32) + 88))
  {
    v22 = brc_bread_crumbs("[BRQuery itemCollectionGathererDidInvalidate]_block_invoke", 1596);
    v23 = brc_default_log(1, 0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __46__BRQuery_itemCollectionGathererDidInvalidate__block_invoke_cold_2();
    }

    [*(a1 + 32) _setQueryState:*(*(a1 + 32) + 88)];
    [*(a1 + 32) _watchScopes];
  }

LABEL_12:

  v24 = *MEMORY[0x1E69E9840];
}

void __46__BRQuery_itemCollectionGathererDidInvalidate__block_invoke_144(uint64_t a1, unint64_t a2)
{
  if ([*(*(a1 + 32) + 8) count] <= a2)
  {
    __46__BRQuery_itemCollectionGathererDidInvalidate__block_invoke_144_cold_1();
  }

  v4 = [*(*(a1 + 32) + 8) objectAtIndex:a2];
  (*(*(a1 + 32) + 184))(0, [v4 replacement]);
  [v4 setReplacement:0];
}

- (void)_applicationWillResignActive:(id)active
{
  v21[1] = *MEMORY[0x1E69E9840];
  activeCopy = active;
  queryState = self->_queryState;
  v6 = queryState > 4;
  v7 = (1 << queryState) & 0x13;
  if (v6 || v7 == 0)
  {
    currentProcess = [MEMORY[0x1E69C7640] currentProcess];
    v10 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"FinishTaskInterruptable"];
    v11 = objc_alloc(MEMORY[0x1E69C7548]);
    v21[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v13 = [v11 initWithExplanation:@"NSMDQ resigning" target:currentProcess attributes:v12];

    [v13 acquireWithInvalidationHandler:&__block_literal_global_159];
    v14 = brc_bread_crumbs("[BRQuery _applicationWillResignActive:]", 1616);
    v15 = brc_default_log(1, 0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [BRQuery _applicationWillResignActive:];
    }

    collectionGatherer = self->_collectionGatherer;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __40__BRQuery__applicationWillResignActive___block_invoke_160;
    v19[3] = &unk_1E7A14798;
    v20 = v13;
    v17 = v13;
    [(BRItemCollectionGatherer *)collectionGatherer pauseWatchingWithCompletionBlock:v19];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __40__BRQuery__applicationWillResignActive___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = brc_bread_crumbs("[BRQuery _applicationWillResignActive:]_block_invoke", 1613);
  v5 = brc_default_log(1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __40__BRQuery__applicationWillResignActive___block_invoke_cold_1();
  }
}

uint64_t __40__BRQuery__applicationWillResignActive___block_invoke_160(uint64_t a1)
{
  v2 = brc_bread_crumbs("[BRQuery _applicationWillResignActive:]_block_invoke", 1618);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __40__BRQuery__applicationWillResignActive___block_invoke_160_cold_1();
  }

  return [*(a1 + 32) invalidate];
}

- (void)_applicationDidBecomeActive:(id)active
{
  v4 = brc_bread_crumbs("[BRQuery _applicationDidBecomeActive:]", 1627);
  v5 = brc_default_log(1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BRQuery _applicationDidBecomeActive:];
  }

  [(BRItemCollectionGatherer *)self->_collectionGatherer resumeWatching];
}

- (NSMetadataQuery)query
{
  WeakRetained = objc_loadWeakRetained(&self->_query);

  return WeakRetained;
}

void __25__BRQuery_disableUpdates__block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __24__BRQuery_enableUpdates__block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_performBlockAsync:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1AE2A9000, v0, 0x90u, "[ERROR] NSMetadataQuery CLIENT BUG: do not access the results before calling -startQuery%@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_performBlockAsync:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] API MISUSE: NSMetadataQuery CLIENT BUG: do not access the results before calling -startQuery%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __30__BRQuery__performBlockAsync___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] Collection Gatherer has been invalidated, skip performing the block%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)executeWithOptions:.cold.1()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("[BRQuery executeWithOptions:]", 628);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: _results == nil%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setQueryQueue:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] API MISUSE: running a NSMetadataQuery with maxConcurrentOperationCount != 1 is not supported%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_postNote:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_collectUpdates:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 72);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_collectUpdates:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 64);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_collectUpdates:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 80);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_processChanges:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] no update to collect%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_processChanges:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] the query is stopped, not processing changes%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __46__BRQuery_notificationsReceiverDidInvalidate___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] Assertion failed: receiver == self->_receiver%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __46__BRQuery_notificationsReceiverDidInvalidate___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] setup the query to restart with Crash Marking on%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __46__BRQuery_notificationsReceiverDidInvalidate___block_invoke_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] Restarting the receiver%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_classifyItems:(_DWORD *)a1 deletedItemIDs:(void *)a2 .cold.1(_DWORD *a1, void *a2)
{
  brc_bread_crumbs("[BRQuery _classifyItems:deletedItemIDs:]", 1315);
  objc_claimAutoreleasedReturnValue();
  v5 = OUTLINED_FUNCTION_6_0();
  v7 = brc_default_log(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v2;
    OUTLINED_FUNCTION_10_2(&dword_1AE2A9000, v8, v9, "[CRIT] Assertion failed: resultIndex != NSNotFound%@");
  }
}

- (void)_classifyItems:(_DWORD *)a1 deletedItemIDs:(void *)a2 .cold.2(_DWORD *a1, void *a2)
{
  brc_bread_crumbs("[BRQuery _classifyItems:deletedItemIDs:]", 1335);
  objc_claimAutoreleasedReturnValue();
  v5 = OUTLINED_FUNCTION_6_0();
  v7 = brc_default_log(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v2;
    OUTLINED_FUNCTION_10_2(&dword_1AE2A9000, v8, v9, "[CRIT] Assertion failed: resultIndex != NSNotFound%@");
  }
}

void __54__BRQuery__handleReplacedItemsNotifications_userInfo___block_invoke_3_cold_1()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("[BRQuery _handleReplacedItemsNotifications:userInfo:]_block_invoke_3", 1405);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: [idx unsignedLongValue] < _results.count%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __53__BRQuery__handleRemovedItemsNotifications_userInfo___block_invoke_3_cold_1()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("[BRQuery _handleRemovedItemsNotifications:userInfo:]_block_invoke_3", 1449);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: idx < self->_results.count%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __50__BRQuery_itemCollectionGathererFinishedGathering__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] BRQuery::finishedGathering%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __47__BRQuery_itemCollectionGathererGatheredItems___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] BRQuery::itemCollectionGathererGatheredItems - START%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __70__BRQuery_itemCollectionGathererDidReceiveUpdates_deleteItemsWithIDs___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void __46__BRQuery_itemCollectionGathererDidInvalidate__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] BRQuery::itemCollectionGathererDidInvalidate - Clearning the results away%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __46__BRQuery_itemCollectionGathererDidInvalidate__block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] Rewatch the scopes%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __46__BRQuery_itemCollectionGathererDidInvalidate__block_invoke_144_cold_1()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("[BRQuery itemCollectionGathererDidInvalidate]_block_invoke", 1574);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: idx < self->_results.count%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_applicationWillResignActive:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __40__BRQuery__applicationWillResignActive___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __40__BRQuery__applicationWillResignActive___block_invoke_160_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] About to invalidate the assertion%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_applicationDidBecomeActive:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end