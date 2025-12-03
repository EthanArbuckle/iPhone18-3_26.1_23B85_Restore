@interface HKChartCache
- (HKChartCache)init;
- (HKChartCachePriorityDelegate)priorityDelegateForBufferedIdentifiers;
- (id)_operationForIdentifier:(id)identifier priorityDelegate:(id)delegate;
- (id)cachedResultsForIdentifier:(id)identifier;
- (unint64_t)stateForIdentifier:(id)identifier;
- (void)_addFetchOperationsForIdentifiers:(id)identifiers priorityDelegate:(id)delegate;
- (void)_alertObserversDidUpdateResults;
- (void)_handleOperationCompletionWithOperation:(id)operation identifier:(id)identifier priorityDelegate:(id)delegate results:(id)results error:(id)error;
- (void)_removeFetchOperationsForIdentifiers:(id)identifiers;
- (void)fetchResultsForIdentifiers:(id)identifiers priorityDelegate:(id)delegate;
- (void)invalidateCache;
- (void)invalidateResultsForIdentifiers:(id)identifiers;
- (void)setShouldBufferFetchOperations:(BOOL)operations;
@end

@implementation HKChartCache

- (HKChartCache)init
{
  v15.receiver = self;
  v15.super_class = HKChartCache;
  v2 = [(HKChartCache *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    cachedResultsLock = v2->_cachedResultsLock;
    v2->_cachedResultsLock = v3;

    [(NSLock *)v2->_cachedResultsLock setName:@"HKChartCacheResultsLock"];
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedResultsByIdentifier = v2->_cachedResultsByIdentifier;
    v2->_cachedResultsByIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    resultsLoadedByIdentifier = v2->_resultsLoadedByIdentifier;
    v2->_resultsLoadedByIdentifier = v9;

    v11 = objc_alloc_init(_HKChartCachePendingFetchOperationManager);
    pendingFetchOperationsManager = v2->_pendingFetchOperationsManager;
    v2->_pendingFetchOperationsManager = v11;

    v2->_shouldBufferFetchOperations = 0;
    bufferedIdentifiers = v2->_bufferedIdentifiers;
    v2->_maxRetryCount = 3;
    v2->_bufferedIdentifiers = 0;

    objc_storeWeak(&v2->_priorityDelegateForBufferedIdentifiers, 0);
  }

  return v2;
}

- (void)setShouldBufferFetchOperations:(BOOL)operations
{
  shouldBufferFetchOperations = self->_shouldBufferFetchOperations;
  self->_shouldBufferFetchOperations = operations;
  if (shouldBufferFetchOperations != operations && !operations)
  {
    bufferedIdentifiers = [(HKChartCache *)self bufferedIdentifiers];

    if (bufferedIdentifiers)
    {
      bufferedIdentifiers2 = [(HKChartCache *)self bufferedIdentifiers];
      WeakRetained = objc_loadWeakRetained(&self->_priorityDelegateForBufferedIdentifiers);
      [(HKChartCache *)self fetchResultsForIdentifiers:bufferedIdentifiers2 priorityDelegate:WeakRetained];

      [(HKChartCache *)self setBufferedIdentifiers:0];

      [(HKChartCache *)self setPriorityDelegateForBufferedIdentifiers:0];
    }
  }
}

- (void)_alertObserversDidUpdateResults
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) chartCacheDidUpdate:{self, v8}];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (unint64_t)stateForIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_resultsLoadedByIdentifier objectForKeyedSubscript:identifier];
  v4 = v3;
  if (v3)
  {
    if ([v3 BOOLValue])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)cachedResultsForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cachedResultsLock = [(HKChartCache *)self cachedResultsLock];
  [cachedResultsLock lock];

  v6 = [(NSMutableDictionary *)self->_cachedResultsByIdentifier objectForKeyedSubscript:identifierCopy];

  cachedResultsLock2 = [(HKChartCache *)self cachedResultsLock];
  [cachedResultsLock2 unlock];

  return v6;
}

- (void)fetchResultsForIdentifiers:(id)identifiers priorityDelegate:(id)delegate
{
  identifiersCopy = identifiers;
  if (self->_shouldBufferFetchOperations)
  {
    delegateCopy = delegate;
    bufferedIdentifiers = [(HKChartCache *)self bufferedIdentifiers];

    if (bufferedIdentifiers)
    {
      bufferedIdentifiers2 = [(HKChartCache *)self bufferedIdentifiers];
      v9 = [bufferedIdentifiers2 arrayByAddingObjectsFromArray:identifiersCopy];
      [(HKChartCache *)self setBufferedIdentifiers:v9];
    }

    else
    {
      [(HKChartCache *)self setBufferedIdentifiers:identifiersCopy];
    }

    [(HKChartCache *)self setPriorityDelegateForBufferedIdentifiers:delegateCopy];
  }

  else
  {
    v10 = MEMORY[0x1E695DFA8];
    delegateCopy2 = delegate;
    delegateCopy = [v10 setWithArray:identifiersCopy];
    [(HKChartCache *)self _addFetchOperationsForIdentifiers:delegateCopy priorityDelegate:delegateCopy2];
  }
}

- (void)_removeFetchOperationsForIdentifiers:(id)identifiers
{
  v17 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(_HKChartCachePendingFetchOperationManager *)self->_pendingFetchOperationsManager fetchOperationForIdentifier:*(*(&v12 + 1) + 8 * v10), v12];
        [v5 addObject:v11];
        [(_HKChartCachePendingFetchOperationManager *)self->_pendingFetchOperationsManager removeFetchOperation:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(HKOutstandingFetchOperationManager *)self->_operationManager removeFetchOperations:v5];
}

- (void)_addFetchOperationsForIdentifiers:(id)identifiers priorityDelegate:(id)delegate
{
  v23 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  delegateCopy = delegate;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = identifiersCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
        {
          [HKChartCache _addFetchOperationsForIdentifiers:a2 priorityDelegate:self];
        }

        if (![(HKChartCache *)self stateForIdentifier:v14])
        {
          v15 = [(HKChartCache *)self _operationForIdentifier:v14 priorityDelegate:delegateCopy];
          if (v15)
          {
            v16 = v15;
            [v8 addObject:v15];
            [(_HKChartCachePendingFetchOperationManager *)self->_pendingFetchOperationsManager addFetchOperation:v16];
            [(NSMutableDictionary *)self->_resultsLoadedByIdentifier setObject:MEMORY[0x1E695E110] forKeyedSubscript:v14];
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [(HKOutstandingFetchOperationManager *)self->_operationManager addFetchOperations:v8];
}

- (void)invalidateResultsForIdentifiers:(id)identifiers
{
  [(NSMutableDictionary *)self->_resultsLoadedByIdentifier removeObjectsForKeys:identifiers];

  [(HKChartCache *)self _alertObserversDidUpdateResults];
}

- (void)invalidateCache
{
  [(NSMutableDictionary *)self->_resultsLoadedByIdentifier removeAllObjects];

  [(HKChartCache *)self _alertObserversDidUpdateResults];
}

- (id)_operationForIdentifier:(id)identifier priorityDelegate:(id)delegate
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  objc_initWeak(&location, self);
  dataSource = self->_dataSource;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __57__HKChartCache__operationForIdentifier_priorityDelegate___block_invoke;
  v16 = &unk_1E81BABF0;
  objc_copyWeak(&v19, &location);
  v9 = identifierCopy;
  v17 = v9;
  v10 = delegateCopy;
  v18 = v10;
  v11 = [(HKChartCacheDataSource *)dataSource operationForIdentifier:v9 priorityDelegate:v10 completion:&v13];
  [v11 setIdentifier:{v9, v13, v14, v15, v16}];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v11;
}

void __57__HKChartCache__operationForIdentifier_priorityDelegate___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__HKChartCache__operationForIdentifier_priorityDelegate___block_invoke_2;
  v13[3] = &unk_1E81BA3B0;
  objc_copyWeak(&v19, a1 + 6);
  v14 = v7;
  v15 = a1[4];
  v16 = a1[5];
  v17 = v8;
  v18 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v13);

  objc_destroyWeak(&v19);
}

void __57__HKChartCache__operationForIdentifier_priorityDelegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _handleOperationCompletionWithOperation:*(a1 + 32) identifier:*(a1 + 40) priorityDelegate:*(a1 + 48) results:*(a1 + 56) error:*(a1 + 64)];
}

- (void)_handleOperationCompletionWithOperation:(id)operation identifier:(id)identifier priorityDelegate:(id)delegate results:(id)results error:(id)error
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  delegateCopy = delegate;
  resultsCopy = results;
  errorCopy = error;
  [(_HKChartCachePendingFetchOperationManager *)self->_pendingFetchOperationsManager removeFetchOperation:operation];
  if (errorCopy)
  {
    _HKInitializeLogging();
    v16 = MEMORY[0x1E696B940];
    v17 = *MEMORY[0x1E696B940];
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
    {
      [HKChartCache _handleOperationCompletionWithOperation:errorCopy identifier:v17 priorityDelegate:? results:? error:?];
    }

    [(_HKChartCachePendingFetchOperationManager *)self->_pendingFetchOperationsManager incrementRetryCountForIdentifier:identifierCopy];
    v18 = [(_HKChartCachePendingFetchOperationManager *)self->_pendingFetchOperationsManager retryCountForIdentifier:identifierCopy];
    maxRetryCount = self->_maxRetryCount;
    _HKInitializeLogging();
    v20 = *v16;
    v21 = *v16;
    if (v18 <= maxRetryCount)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412546;
        v27 = identifierCopy;
        v28 = 2048;
        v29 = v18;
        _os_log_impl(&dword_1C3942000, v20, OS_LOG_TYPE_DEFAULT, "[HKCC] Retrying fetch operation for identifier (%@) retry count (%ld)", &v26, 0x16u);
      }

      v24 = [MEMORY[0x1E695DFD8] setWithObject:identifierCopy];
      [(HKChartCache *)self _addFetchOperationsForIdentifiers:v24 priorityDelegate:delegateCopy];
    }

    else
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [HKChartCache _handleOperationCompletionWithOperation:identifierCopy identifier:v18 priorityDelegate:v20 results:? error:?];
      }

      [(_HKChartCachePendingFetchOperationManager *)self->_pendingFetchOperationsManager resetRetryCountForIdentifier:identifierCopy];
    }
  }

  else
  {
    cachedResultsLock = [(HKChartCache *)self cachedResultsLock];
    [cachedResultsLock lock];

    cachedResultsByIdentifier = self->_cachedResultsByIdentifier;
    if (resultsCopy)
    {
      [(NSMutableDictionary *)cachedResultsByIdentifier setObject:resultsCopy forKeyedSubscript:identifierCopy];
    }

    else
    {
      [(NSMutableDictionary *)cachedResultsByIdentifier removeObjectForKey:identifierCopy];
    }

    cachedResultsLock2 = [(HKChartCache *)self cachedResultsLock];
    [cachedResultsLock2 unlock];

    [(NSMutableDictionary *)self->_resultsLoadedByIdentifier setObject:MEMORY[0x1E695E118] forKeyedSubscript:identifierCopy];
    [(_HKChartCachePendingFetchOperationManager *)self->_pendingFetchOperationsManager resetRetryCountForIdentifier:identifierCopy];
    [(HKChartCache *)self _alertObserversDidUpdateResults];
  }
}

- (HKChartCachePriorityDelegate)priorityDelegateForBufferedIdentifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_priorityDelegateForBufferedIdentifiers);

  return WeakRetained;
}

- (void)_addFetchOperationsForIdentifiers:(uint64_t)a1 priorityDelegate:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKChartCache.m" lineNumber:165 description:@"HKChartCache: fetch operation requested on non-main thread"];
}

- (void)_handleOperationCompletionWithOperation:(NSObject *)a3 identifier:priorityDelegate:results:error:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 48);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_3(&dword_1C3942000, a2, a3, "[HKCC] Error fetching results from data source %@: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)_handleOperationCompletionWithOperation:(NSObject *)a3 identifier:priorityDelegate:results:error:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2048;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_3(&dword_1C3942000, a2, a3, "[HKCC] Fetch operation for identifier (%@) surpassed max retry count (%ld). Failing.", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

@end