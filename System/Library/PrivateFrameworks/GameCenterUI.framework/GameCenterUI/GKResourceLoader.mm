@interface GKResourceLoader
- (BOOL)isIdle;
- (BOOL)loadResourceWithRequest:(id)request reason:(int64_t)reason;
- (BOOL)setReason:(int64_t)reason forRequestWithKey:(id)key;
- (GKResourceLoader)init;
- (GKResourceLoader)initWithParentResourceLoader:(id)loader;
- (GKResourceLoader)initWithRequestQueue:(id)queue accessQueue:(id)accessQueue notificationQueue:(id)notificationQueue cacheLimit:(int64_t)limit;
- (id)cachedResourcesForCacheKey:(id)key;
- (id)description;
- (id)requestKeyForCacheKey:(id)key;
- (int64_t)currentQualityOfService;
- (void)_commonInit;
- (void)addResource:(id)resource forCacheKey:(id)key;
- (void)cancelAllRequests;
- (void)cancelRequestForCacheKey:(id)key;
- (void)dealloc;
- (void)enterBackground;
- (void)enterForeground;
- (void)finishLoadForRequest:(id)request withResource:(id)resource error:(id)error;
- (void)postDidBeginLoadingIfIdle;
- (void)postDidIdleIfIdle;
- (void)postDidLoadAllForReason:(int64_t)reason;
- (void)removeAllCachedResources;
- (void)removeResourcesForCacheKey:(id)key;
- (void)reprioritizeOperations;
- (void)updateLoadReason:(int64_t)reason forOperation:(id)operation;
@end

@implementation GKResourceLoader

- (void)_commonInit
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  pendingOperations = self->_pendingOperations;
  self->_pendingOperations = v3;

  v5 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
  requestsByCacheKey = self->_requestsByCacheKey;
  self->_requestsByCacheKey = v5;

  MEMORY[0x2821F96F8](v5, requestsByCacheKey);
}

- (GKResourceLoader)initWithRequestQueue:(id)queue accessQueue:(id)accessQueue notificationQueue:(id)notificationQueue cacheLimit:(int64_t)limit
{
  queueCopy = queue;
  accessQueueCopy = accessQueue;
  notificationQueueCopy = notificationQueue;
  if ([accessQueueCopy maxConcurrentOperationCount] != 1)
  {
    [GKResourceLoader initWithRequestQueue:a2 accessQueue:self notificationQueue:queueCopy cacheLimit:?];
  }

  v20.receiver = self;
  v20.super_class = GKResourceLoader;
  v15 = [(GKResourceLoader *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_requestQueue, queue);
    objc_storeStrong(&v16->_accessQueue, accessQueue);
    objc_storeStrong(&v16->_notificationQueue, notificationQueue);
    v17 = objc_alloc_init(GKResourceCache);
    cachedResources = v16->_cachedResources;
    v16->_cachedResources = v17;

    [(GKResourceCache *)v16->_cachedResources setLimit:limit];
    [(GKResourceCache *)v16->_cachedResources setEvictsObjectsWhenApplicationEntersBackground:0];
    [(GKResourceLoader *)v16 _commonInit];
  }

  return v16;
}

- (GKResourceLoader)initWithParentResourceLoader:(id)loader
{
  loaderCopy = loader;
  v15.receiver = self;
  v15.super_class = GKResourceLoader;
  v5 = [(GKResourceLoader *)&v15 init];
  if (v5)
  {
    requestQueue = [loaderCopy requestQueue];
    requestQueue = v5->_requestQueue;
    v5->_requestQueue = requestQueue;

    accessQueue = [loaderCopy accessQueue];
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = accessQueue;

    notificationQueue = [loaderCopy notificationQueue];
    notificationQueue = v5->_notificationQueue;
    v5->_notificationQueue = notificationQueue;

    cachedResources = [loaderCopy cachedResources];
    cachedResources = v5->_cachedResources;
    v5->_cachedResources = cachedResources;

    [(GKResourceLoader *)v5 _commonInit];
    v5->_isInBackground = 1;
  }

  return v5;
}

- (GKResourceLoader)init
{
  [(GKResourceLoader *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  [(GKResourceLoader *)self cancelAllRequests];
  v3.receiver = self;
  v3.super_class = GKResourceLoader;
  [(GKResourceLoader *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestQueue = [(GKResourceLoader *)self requestQueue];
  accessQueue = [(GKResourceLoader *)self accessQueue];
  notificationQueue = [(GKResourceLoader *)self notificationQueue];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[GKResourceLoader isInBackground](self, "isInBackground")}];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"{onScreen: %ld, cacheAhead: %ld, cacheFarAhead: %ld}", self->_requestCountMap[2], self->_requestCountMap[1], self->_requestCountMap[0]];
  v11 = [v3 stringWithFormat:@"<%@:%p requestQueue = %@, accessQueue = %@, notificationQueue = %@, isInBackground = %@, loadCounts = %@>", v5, self, requestQueue, accessQueue, notificationQueue, v9, v10];

  return v11;
}

- (void)addResource:(id)resource forCacheKey:(id)key
{
  keyCopy = key;
  resourceCopy = resource;
  cachedResources = [(GKResourceLoader *)self cachedResources];
  [cachedResources addResource:resourceCopy forKey:keyCopy];
}

- (void)removeResourcesForCacheKey:(id)key
{
  keyCopy = key;
  cachedResources = [(GKResourceLoader *)self cachedResources];
  [cachedResources removeResourcesForKey:keyCopy];
}

- (id)cachedResourcesForCacheKey:(id)key
{
  keyCopy = key;
  cachedResources = [(GKResourceLoader *)self cachedResources];
  v6 = [cachedResources resourcesForKey:keyCopy];

  return v6;
}

- (void)removeAllCachedResources
{
  cachedResources = [(GKResourceLoader *)self cachedResources];
  [cachedResources removeAllResources];
}

- (id)requestKeyForCacheKey:(id)key
{
  keyCopy = key;
  requestsByCacheKey = [(GKResourceLoader *)self requestsByCacheKey];
  v6 = [requestsByCacheKey objectForKey:keyCopy];

  return v6;
}

- (void)cancelAllRequests
{
  pendingOperations = [(GKResourceLoader *)self pendingOperations];
  allValues = [pendingOperations allValues];
  [allValues makeObjectsPerformSelector:sel_cancel];

  pendingOperations2 = [(GKResourceLoader *)self pendingOperations];
  [pendingOperations2 removeAllObjects];

  requestsByCacheKey = [(GKResourceLoader *)self requestsByCacheKey];
  [requestsByCacheKey removeAllObjects];

  if (self->_requestCountMap[2] >= 1)
  {
    self->_requestCountMap[2] = 0;
  }

  if (self->_requestCountMap[1] >= 1)
  {
    self->_requestCountMap[1] = 0;
  }

  if (self->_requestCountMap[0] >= 1)
  {
    self->_requestCountMap[0] = 0;
  }
}

- (void)cancelRequestForCacheKey:(id)key
{
  keyCopy = key;
  v4 = [(GKResourceLoader *)self requestKeyForCacheKey:?];
  if (v4)
  {
    pendingOperations = [(GKResourceLoader *)self pendingOperations];
    v6 = [pendingOperations objectForKeyedSubscript:v4];

    if (v6)
    {
      [v6 cancel];
      pendingOperations2 = [(GKResourceLoader *)self pendingOperations];
      [pendingOperations2 removeObjectForKey:v4];

      requestsByCacheKey = [(GKResourceLoader *)self requestsByCacheKey];
      [requestsByCacheKey removeObjectForKey:keyCopy];

      _loadReason = [v6 _loadReason];
      v10 = self->_requestCountMap[_loadReason];
      if (v10 >= 1)
      {
        self->_requestCountMap[_loadReason] = --v10;
      }

      if (!v10)
      {
        [(GKResourceLoader *)self postDidLoadAllForReason:_loadReason];
      }
    }
  }
}

- (void)enterBackground
{
  if (!self->_isInBackground)
  {
    self->_isInBackground = 1;
    [(GKResourceLoader *)self reprioritizeOperations];
  }
}

- (void)enterForeground
{
  if (self->_isInBackground)
  {
    self->_isInBackground = 0;
    [(GKResourceLoader *)self reprioritizeOperations];
  }
}

- (BOOL)isIdle
{
  pendingOperations = [(GKResourceLoader *)self pendingOperations];
  v3 = [pendingOperations count] == 0;

  return v3;
}

- (BOOL)loadResourceWithRequest:(id)request reason:(int64_t)reason
{
  requestCopy = request;
  requestKey = [requestCopy requestKey];
  pendingOperations = [(GKResourceLoader *)self pendingOperations];
  v9 = [pendingOperations objectForKeyedSubscript:requestKey];

  if (v9)
  {
    isInBackground = [(GKResourceLoader *)self isInBackground];
    v11 = 4 * reason;
    if (reason >= 3)
    {
      v11 = 4;
    }

    v12 = -8;
    if (reason == 1)
    {
      v12 = -4;
    }

    if (reason == 2)
    {
      v12 = 0;
    }

    if (isInBackground)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    if (v13 > [v9 queuePriority])
    {
      [(GKResourceLoader *)self updateLoadReason:reason forOperation:v9];
      [v9 setQueuePriority:v13];
    }
  }

  else
  {
    makeLoadOperation = [requestCopy makeLoadOperation];
    [makeLoadOperation _setLoadReason:reason];
    [makeLoadOperation setQualityOfService:{-[GKResourceLoader currentQualityOfService](self, "currentQualityOfService")}];
    isInBackground2 = [(GKResourceLoader *)self isInBackground];
    v16 = 4 * reason;
    if (reason >= 3)
    {
      v16 = 4;
    }

    v17 = -8;
    if (reason == 1)
    {
      v17 = -4;
    }

    if (reason == 2)
    {
      v17 = 0;
    }

    if (isInBackground2)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    [makeLoadOperation setQueuePriority:v18];
    objc_initWeak(&location, self);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __51__GKResourceLoader_loadResourceWithRequest_reason___block_invoke;
    v25[3] = &unk_27966DAF8;
    objc_copyWeak(&v27, &location);
    v19 = requestCopy;
    v26 = v19;
    [makeLoadOperation setOutputBlock:v25];
    [(GKResourceLoader *)self postDidBeginLoadingIfIdle];
    pendingOperations2 = [(GKResourceLoader *)self pendingOperations];
    [pendingOperations2 setObject:makeLoadOperation forKeyedSubscript:requestKey];

    requestsByCacheKey = [(GKResourceLoader *)self requestsByCacheKey];
    cacheKey = [v19 cacheKey];
    [requestsByCacheKey setObject:requestKey forKey:cacheKey];

    requestQueue = [(GKResourceLoader *)self requestQueue];
    [requestQueue addOperation:makeLoadOperation];

    ++self->_requestCountMap[reason];
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v9 == 0;
}

void __51__GKResourceLoader_loadResourceWithRequest_reason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained accessQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__GKResourceLoader_loadResourceWithRequest_reason___block_invoke_2;
  v11[3] = &unk_27966C238;
  objc_copyWeak(&v15, (a1 + 40));
  v12 = *(a1 + 32);
  v9 = v5;
  v13 = v9;
  v10 = v6;
  v14 = v10;
  [v8 addOperationWithBlock:v11];

  objc_destroyWeak(&v15);
}

void __51__GKResourceLoader_loadResourceWithRequest_reason___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained finishLoadForRequest:*(a1 + 32) withResource:*(a1 + 40) error:*(a1 + 48)];
}

- (BOOL)setReason:(int64_t)reason forRequestWithKey:(id)key
{
  keyCopy = key;
  pendingOperations = [(GKResourceLoader *)self pendingOperations];
  v8 = [pendingOperations objectForKeyedSubscript:keyCopy];

  if (v8)
  {
    [(GKResourceLoader *)self updateLoadReason:reason forOperation:v8];
    isInBackground = [(GKResourceLoader *)self isInBackground];
    v10 = 4 * reason;
    if (reason >= 3)
    {
      v10 = 4;
    }

    v11 = -8;
    if (reason == 1)
    {
      v11 = -4;
    }

    if (reason == 2)
    {
      v11 = 0;
    }

    if (isInBackground)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    [v8 setQueuePriority:v12];
  }

  return v8 != 0;
}

- (void)finishLoadForRequest:(id)request withResource:(id)resource error:(id)error
{
  requestCopy = request;
  resourceCopy = resource;
  errorCopy = error;
  requestKey = [requestCopy requestKey];
  cacheKey = [requestCopy cacheKey];
  pendingOperations = [(GKResourceLoader *)self pendingOperations];
  v13 = [pendingOperations objectForKeyedSubscript:requestKey];

  _loadReason = [v13 _loadReason];
  pendingOperations2 = [(GKResourceLoader *)self pendingOperations];
  [pendingOperations2 removeObjectForKey:requestKey];

  requestsByCacheKey = [(GKResourceLoader *)self requestsByCacheKey];
  [requestsByCacheKey removeObjectForKey:cacheKey];

  cachedResources = [(GKResourceLoader *)self cachedResources];
  if ([cachedResources isGroupMember])
  {
    isInBackground = [(GKResourceLoader *)self isInBackground];
  }

  else
  {
    isInBackground = 0;
  }

  if (resourceCopy)
  {
    if (!isInBackground)
    {
      cacheOptions = [requestCopy cacheOptions];
      if ((cacheOptions & 2) != 0)
      {
        cachedResources2 = [(GKResourceLoader *)self cachedResources];
        v21 = cachedResources2;
        if ((cacheOptions & 4) != 0)
        {
          [cachedResources2 replaceResourcesForKey:cacheKey withResource:resourceCopy];
        }

        else
        {
          [cachedResources2 addResource:resourceCopy forKey:cacheKey];
        }
      }
    }
  }

  [requestCopy didLoadResource:resourceCopy error:errorCopy];
  v22 = self->_requestCountMap[_loadReason];
  if (v22 >= 1)
  {
    self->_requestCountMap[_loadReason] = --v22;
  }

  if (!v22)
  {
    [(GKResourceLoader *)self postDidLoadAllForReason:_loadReason];
  }

  [(GKResourceLoader *)self postDidIdleIfIdle];
}

- (int64_t)currentQualityOfService
{
  if ([(GKResourceLoader *)self isInBackground])
  {
    return 9;
  }

  else
  {
    return 25;
  }
}

- (void)updateLoadReason:(int64_t)reason forOperation:(id)operation
{
  operationCopy = operation;
  _loadReason = [operationCopy _loadReason];
  v7 = operationCopy;
  if (_loadReason != reason)
  {
    [operationCopy _setLoadReason:reason];
    ++self->_requestCountMap[reason];
    v8 = self->_requestCountMap[_loadReason];
    if (v8 >= 1)
    {
      self->_requestCountMap[_loadReason] = --v8;
    }

    v7 = operationCopy;
    if (!v8)
    {
      [(GKResourceLoader *)self postDidLoadAllForReason:_loadReason];
      v7 = operationCopy;
    }
  }
}

- (void)reprioritizeOperations
{
  v20 = *MEMORY[0x277D85DE8];
  currentQualityOfService = [(GKResourceLoader *)self currentQualityOfService];
  isInBackground = [(GKResourceLoader *)self isInBackground];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  pendingOperations = [(GKResourceLoader *)self pendingOperations];
  objectEnumerator = [pendingOperations objectEnumerator];

  v7 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        _loadReason = [v11 _loadReason];
        if (isInBackground)
        {
          if (_loadReason == 1)
          {
            v13 = -4;
          }

          else
          {
            v13 = -8;
          }

          if (_loadReason == 2)
          {
            v14 = 0;
          }

          else
          {
            v14 = v13;
          }
        }

        else if (_loadReason >= 3)
        {
          v14 = 4;
        }

        else
        {
          v14 = 4 * _loadReason;
        }

        [v11 setQueuePriority:v14];
        [v11 setQualityOfService:currentQualityOfService];
      }

      v8 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)postDidBeginLoadingIfIdle
{
  if ([(GKResourceLoader *)self isIdle])
  {
    objc_initWeak(&location, self);
    notificationQueue = [(GKResourceLoader *)self notificationQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __45__GKResourceLoader_postDidBeginLoadingIfIdle__block_invoke;
    v4[3] = &unk_279669FE0;
    objc_copyWeak(&v5, &location);
    [notificationQueue addOperationWithBlock:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __45__GKResourceLoader_postDidBeginLoadingIfIdle__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"GKResourceLoaderDidBeginLoadingNotification" object:v3];

    WeakRetained = v3;
  }
}

- (void)postDidIdleIfIdle
{
  if ([(GKResourceLoader *)self isIdle])
  {
    objc_initWeak(&location, self);
    notificationQueue = [(GKResourceLoader *)self notificationQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __37__GKResourceLoader_postDidIdleIfIdle__block_invoke;
    v4[3] = &unk_279669FE0;
    objc_copyWeak(&v5, &location);
    [notificationQueue addOperationWithBlock:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __37__GKResourceLoader_postDidIdleIfIdle__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"GKResourceLoaderDidIdleNotification" object:v3];

    WeakRetained = v3;
  }
}

- (void)postDidLoadAllForReason:(int64_t)reason
{
  objc_initWeak(&location, self);
  notificationQueue = [(GKResourceLoader *)self notificationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__GKResourceLoader_postDidLoadAllForReason___block_invoke;
  v6[3] = &unk_27966A930;
  objc_copyWeak(v7, &location);
  v7[1] = reason;
  [notificationQueue addOperationWithBlock:v6];

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __44__GKResourceLoader_postDidLoadAllForReason___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = @"GKResourceLoaderLoadReasonUserInfoKey";
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [v3 postNotificationName:@"GKResourceLoaderDidLoadAllForReasonNotification" object:WeakRetained userInfo:v5];
  }
}

- (void)initWithRequestQueue:(uint64_t)a3 accessQueue:notificationQueue:cacheLimit:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"GKResourceLoader.m" lineNumber:195 description:{@"Cannot initialize resource loader with non-serial queue %@", a3}];
}

@end