@interface _HKChartCachePendingFetchOperationManager
- (_HKChartCachePendingFetchOperationManager)init;
- (id)allPendingIdentifiers;
- (int64_t)retryCountForIdentifier:(id)a3;
- (void)addFetchOperation:(id)a3;
- (void)incrementRetryCountForIdentifier:(id)a3;
- (void)removeFetchOperation:(id)a3;
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

- (void)addFetchOperation:(id)a3
{
  v5 = a3;
  v6 = [v5 identifier];

  if (!v6)
  {
    [(_HKChartCachePendingFetchOperationManager *)a2 addFetchOperation:?];
  }

  fetchOperationsByIdentifier = self->_fetchOperationsByIdentifier;
  v8 = [v5 identifier];
  [(NSMutableDictionary *)fetchOperationsByIdentifier setObject:v5 forKeyedSubscript:v8];

  fetchOperationsByUUID = self->_fetchOperationsByUUID;
  v10 = [v5 UUID];
  [(NSMutableDictionary *)fetchOperationsByUUID setObject:v5 forKeyedSubscript:v10];
}

- (void)removeFetchOperation:(id)a3
{
  v4 = a3;
  v6 = [v4 UUID];
  v5 = [v4 identifier];

  [(NSMutableDictionary *)self->_fetchOperationsByUUID removeObjectForKey:v6];
  [(NSMutableDictionary *)self->_fetchOperationsByIdentifier removeObjectForKey:v5];
}

- (id)allPendingIdentifiers
{
  v3 = [(NSMutableDictionary *)self->_fetchOperationsByIdentifier allKeys];
  v4 = [v3 count];
  v5 = MEMORY[0x1E695DFD8];
  if (v4)
  {
    v6 = [(NSMutableDictionary *)self->_fetchOperationsByIdentifier allKeys];
    v7 = [v5 setWithArray:v6];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFD8] set];
  }

  return v7;
}

- (int64_t)retryCountForIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_retryCountByIdentifier objectForKeyedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (void)incrementRetryCountForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_HKChartCachePendingFetchOperationManager *)self retryCountForIdentifier:v4];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5 + 1];
  [(NSMutableDictionary *)self->_retryCountByIdentifier setObject:v6 forKeyedSubscript:v4];
}

- (void)addFetchOperation:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKChartCache.m" lineNumber:282 description:{@"Invalid parameter not satisfying: %@", @"[fetchOperation identifier] != nil"}];
}

@end