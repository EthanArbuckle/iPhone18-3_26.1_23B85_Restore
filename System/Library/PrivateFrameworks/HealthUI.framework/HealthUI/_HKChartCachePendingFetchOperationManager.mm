@interface _HKChartCachePendingFetchOperationManager
- (_HKChartCachePendingFetchOperationManager)init;
- (id)allPendingIdentifiers;
- (int64_t)retryCountForIdentifier:(id)identifier;
- (void)addFetchOperation:(id)operation;
- (void)incrementRetryCountForIdentifier:(id)identifier;
- (void)removeFetchOperation:(id)operation;
@end

@implementation _HKChartCachePendingFetchOperationManager

- (_HKChartCachePendingFetchOperationManager)init
{
  v10.receiver = self;
  v10.super_class = _HKChartCachePendingFetchOperationManager;
  v2 = [(_HKChartCachePendingFetchOperationManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    fetchOperationsByIdentifier = v2->_fetchOperationsByIdentifier;
    v2->_fetchOperationsByIdentifier = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    fetchOperationsByUUID = v2->_fetchOperationsByUUID;
    v2->_fetchOperationsByUUID = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    retryCountByIdentifier = v2->_retryCountByIdentifier;
    v2->_retryCountByIdentifier = v7;
  }

  return v2;
}

- (void)addFetchOperation:(id)operation
{
  operationCopy = operation;
  identifier = [operationCopy identifier];

  if (!identifier)
  {
    [(_HKChartCachePendingFetchOperationManager *)a2 addFetchOperation:?];
  }

  fetchOperationsByIdentifier = self->_fetchOperationsByIdentifier;
  identifier2 = [operationCopy identifier];
  [(NSMutableDictionary *)fetchOperationsByIdentifier setObject:operationCopy forKeyedSubscript:identifier2];

  fetchOperationsByUUID = self->_fetchOperationsByUUID;
  uUID = [operationCopy UUID];
  [(NSMutableDictionary *)fetchOperationsByUUID setObject:operationCopy forKeyedSubscript:uUID];
}

- (void)removeFetchOperation:(id)operation
{
  operationCopy = operation;
  uUID = [operationCopy UUID];
  identifier = [operationCopy identifier];

  [(NSMutableDictionary *)self->_fetchOperationsByUUID removeObjectForKey:uUID];
  [(NSMutableDictionary *)self->_fetchOperationsByIdentifier removeObjectForKey:identifier];
}

- (id)allPendingIdentifiers
{
  allKeys = [(NSMutableDictionary *)self->_fetchOperationsByIdentifier allKeys];
  v4 = [allKeys count];
  v5 = MEMORY[0x1E695DFD8];
  if (v4)
  {
    allKeys2 = [(NSMutableDictionary *)self->_fetchOperationsByIdentifier allKeys];
    v7 = [v5 setWithArray:allKeys2];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFD8] set];
  }

  return v7;
}

- (int64_t)retryCountForIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_retryCountByIdentifier objectForKeyedSubscript:identifier];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)incrementRetryCountForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(_HKChartCachePendingFetchOperationManager *)self retryCountForIdentifier:identifierCopy];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5 + 1];
  [(NSMutableDictionary *)self->_retryCountByIdentifier setObject:v6 forKeyedSubscript:identifierCopy];
}

- (void)addFetchOperation:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKChartCache.m" lineNumber:282 description:{@"Invalid parameter not satisfying: %@", @"[fetchOperation identifier] != nil"}];
}

@end