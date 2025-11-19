@interface GKResourceLoader
- (BOOL)isIdle;
- (BOOL)loadResourceWithRequest:(id)a3 reason:(int64_t)a4;
- (BOOL)setReason:(int64_t)a3 forRequestWithKey:(id)a4;
- (GKResourceLoader)init;
- (GKResourceLoader)initWithParentResourceLoader:(id)a3;
- (GKResourceLoader)initWithRequestQueue:(id)a3 accessQueue:(id)a4 notificationQueue:(id)a5 cacheLimit:(int64_t)a6;
- (id)cachedResourcesForCacheKey:(id)a3;
- (id)description;
- (id)requestKeyForCacheKey:(id)a3;
- (int64_t)currentQualityOfService;
- (void)_commonInit;
- (void)addResource:(id)a3 forCacheKey:(id)a4;
- (void)cancelAllRequests;
- (void)cancelRequestForCacheKey:(id)a3;
- (void)dealloc;
- (void)enterBackground;
- (void)enterForeground;
- (void)finishLoadForRequest:(id)a3 withResource:(id)a4 error:(id)a5;
- (void)postDidBeginLoadingIfIdle;
- (void)postDidIdleIfIdle;
- (void)postDidLoadAllForReason:(int64_t)a3;
- (void)removeAllCachedResources;
- (void)removeResourcesForCacheKey:(id)a3;
- (void)reprioritizeOperations;
- (void)updateLoadReason:(int64_t)a3 forOperation:(id)a4;
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

- (GKResourceLoader)initWithRequestQueue:(id)a3 accessQueue:(id)a4 notificationQueue:(id)a5 cacheLimit:(int64_t)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if ([v13 maxConcurrentOperationCount] != 1)
  {
    [GKResourceLoader initWithRequestQueue:a2 accessQueue:self notificationQueue:v12 cacheLimit:?];
  }

  v20.receiver = self;
  v20.super_class = GKResourceLoader;
  v15 = [(GKResourceLoader *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_requestQueue, a3);
    objc_storeStrong(&v16->_accessQueue, a4);
    objc_storeStrong(&v16->_notificationQueue, a5);
    v17 = objc_alloc_init(GKResourceCache);
    cachedResources = v16->_cachedResources;
    v16->_cachedResources = v17;

    [(GKResourceCache *)v16->_cachedResources setLimit:a6];
    [(GKResourceCache *)v16->_cachedResources setEvictsObjectsWhenApplicationEntersBackground:0];
    [(GKResourceLoader *)v16 _commonInit];
  }

  return v16;
}

- (GKResourceLoader)initWithParentResourceLoader:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = GKResourceLoader;
  v5 = [(GKResourceLoader *)&v15 init];
  if (v5)
  {
    v6 = [v4 requestQueue];
    requestQueue = v5->_requestQueue;
    v5->_requestQueue = v6;

    v8 = [v4 accessQueue];
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v8;

    v10 = [v4 notificationQueue];
    notificationQueue = v5->_notificationQueue;
    v5->_notificationQueue = v10;

    v12 = [v4 cachedResources];
    cachedResources = v5->_cachedResources;
    v5->_cachedResources = v12;

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
  v6 = [(GKResourceLoader *)self requestQueue];
  v7 = [(GKResourceLoader *)self accessQueue];
  v8 = [(GKResourceLoader *)self notificationQueue];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[GKResourceLoader isInBackground](self, "isInBackground")}];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"{onScreen: %ld, cacheAhead: %ld, cacheFarAhead: %ld}", self->_requestCountMap[2], self->_requestCountMap[1], self->_requestCountMap[0]];
  v11 = [v3 stringWithFormat:@"<%@:%p requestQueue = %@, accessQueue = %@, notificationQueue = %@, isInBackground = %@, loadCounts = %@>", v5, self, v6, v7, v8, v9, v10];

  return v11;
}

- (void)addResource:(id)a3 forCacheKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKResourceLoader *)self cachedResources];
  [v8 addResource:v7 forKey:v6];
}

- (void)removeResourcesForCacheKey:(id)a3
{
  v4 = a3;
  v5 = [(GKResourceLoader *)self cachedResources];
  [v5 removeResourcesForKey:v4];
}

- (id)cachedResourcesForCacheKey:(id)a3
{
  v4 = a3;
  v5 = [(GKResourceLoader *)self cachedResources];
  v6 = [v5 resourcesForKey:v4];

  return v6;
}

- (void)removeAllCachedResources
{
  v2 = [(GKResourceLoader *)self cachedResources];
  [v2 removeAllResources];
}

- (id)requestKeyForCacheKey:(id)a3
{
  v4 = a3;
  v5 = [(GKResourceLoader *)self requestsByCacheKey];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)cancelAllRequests
{
  v3 = [(GKResourceLoader *)self pendingOperations];
  v4 = [v3 allValues];
  [v4 makeObjectsPerformSelector:sel_cancel];

  v5 = [(GKResourceLoader *)self pendingOperations];
  [v5 removeAllObjects];

  v6 = [(GKResourceLoader *)self requestsByCacheKey];
  [v6 removeAllObjects];

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

- (void)cancelRequestForCacheKey:(id)a3
{
  v11 = a3;
  v4 = [(GKResourceLoader *)self requestKeyForCacheKey:?];
  if (v4)
  {
    v5 = [(GKResourceLoader *)self pendingOperations];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (v6)
    {
      [v6 cancel];
      v7 = [(GKResourceLoader *)self pendingOperations];
      [v7 removeObjectForKey:v4];

      v8 = [(GKResourceLoader *)self requestsByCacheKey];
      [v8 removeObjectForKey:v11];

      v9 = [v6 _loadReason];
      v10 = self->_requestCountMap[v9];
      if (v10 >= 1)
      {
        self->_requestCountMap[v9] = --v10;
      }

      if (!v10)
      {
        [(GKResourceLoader *)self postDidLoadAllForReason:v9];
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
  v2 = [(GKResourceLoader *)self pendingOperations];
  v3 = [v2 count] == 0;

  return v3;
}

- (BOOL)loadResourceWithRequest:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 requestKey];
  v8 = [(GKResourceLoader *)self pendingOperations];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = [(GKResourceLoader *)self isInBackground];
    v11 = 4 * a4;
    if (a4 >= 3)
    {
      v11 = 4;
    }

    v12 = -8;
    if (a4 == 1)
    {
      v12 = -4;
    }

    if (a4 == 2)
    {
      v12 = 0;
    }

    if (v10)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    if (v13 > [v9 queuePriority])
    {
      [(GKResourceLoader *)self updateLoadReason:a4 forOperation:v9];
      [v9 setQueuePriority:v13];
    }
  }

  else
  {
    v14 = [v6 makeLoadOperation];
    [v14 _setLoadReason:a4];
    [v14 setQualityOfService:{-[GKResourceLoader currentQualityOfService](self, "currentQualityOfService")}];
    v15 = [(GKResourceLoader *)self isInBackground];
    v16 = 4 * a4;
    if (a4 >= 3)
    {
      v16 = 4;
    }

    v17 = -8;
    if (a4 == 1)
    {
      v17 = -4;
    }

    if (a4 == 2)
    {
      v17 = 0;
    }

    if (v15)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    [v14 setQueuePriority:v18];
    objc_initWeak(&location, self);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __51__GKResourceLoader_loadResourceWithRequest_reason___block_invoke;
    v25[3] = &unk_27966DAF8;
    objc_copyWeak(&v27, &location);
    v19 = v6;
    v26 = v19;
    [v14 setOutputBlock:v25];
    [(GKResourceLoader *)self postDidBeginLoadingIfIdle];
    v20 = [(GKResourceLoader *)self pendingOperations];
    [v20 setObject:v14 forKeyedSubscript:v7];

    v21 = [(GKResourceLoader *)self requestsByCacheKey];
    v22 = [v19 cacheKey];
    [v21 setObject:v7 forKey:v22];

    v23 = [(GKResourceLoader *)self requestQueue];
    [v23 addOperation:v14];

    ++self->_requestCountMap[a4];
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

- (BOOL)setReason:(int64_t)a3 forRequestWithKey:(id)a4
{
  v6 = a4;
  v7 = [(GKResourceLoader *)self pendingOperations];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    [(GKResourceLoader *)self updateLoadReason:a3 forOperation:v8];
    v9 = [(GKResourceLoader *)self isInBackground];
    v10 = 4 * a3;
    if (a3 >= 3)
    {
      v10 = 4;
    }

    v11 = -8;
    if (a3 == 1)
    {
      v11 = -4;
    }

    if (a3 == 2)
    {
      v11 = 0;
    }

    if (v9)
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

- (void)finishLoadForRequest:(id)a3 withResource:(id)a4 error:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v23 requestKey];
  v11 = [v23 cacheKey];
  v12 = [(GKResourceLoader *)self pendingOperations];
  v13 = [v12 objectForKeyedSubscript:v10];

  v14 = [v13 _loadReason];
  v15 = [(GKResourceLoader *)self pendingOperations];
  [v15 removeObjectForKey:v10];

  v16 = [(GKResourceLoader *)self requestsByCacheKey];
  [v16 removeObjectForKey:v11];

  v17 = [(GKResourceLoader *)self cachedResources];
  if ([v17 isGroupMember])
  {
    v18 = [(GKResourceLoader *)self isInBackground];
  }

  else
  {
    v18 = 0;
  }

  if (v8)
  {
    if (!v18)
    {
      v19 = [v23 cacheOptions];
      if ((v19 & 2) != 0)
      {
        v20 = [(GKResourceLoader *)self cachedResources];
        v21 = v20;
        if ((v19 & 4) != 0)
        {
          [v20 replaceResourcesForKey:v11 withResource:v8];
        }

        else
        {
          [v20 addResource:v8 forKey:v11];
        }
      }
    }
  }

  [v23 didLoadResource:v8 error:v9];
  v22 = self->_requestCountMap[v14];
  if (v22 >= 1)
  {
    self->_requestCountMap[v14] = --v22;
  }

  if (!v22)
  {
    [(GKResourceLoader *)self postDidLoadAllForReason:v14];
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

- (void)updateLoadReason:(int64_t)a3 forOperation:(id)a4
{
  v9 = a4;
  v6 = [v9 _loadReason];
  v7 = v9;
  if (v6 != a3)
  {
    [v9 _setLoadReason:a3];
    ++self->_requestCountMap[a3];
    v8 = self->_requestCountMap[v6];
    if (v8 >= 1)
    {
      self->_requestCountMap[v6] = --v8;
    }

    v7 = v9;
    if (!v8)
    {
      [(GKResourceLoader *)self postDidLoadAllForReason:v6];
      v7 = v9;
    }
  }
}

- (void)reprioritizeOperations
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(GKResourceLoader *)self currentQualityOfService];
  v4 = [(GKResourceLoader *)self isInBackground];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(GKResourceLoader *)self pendingOperations];
  v6 = [v5 objectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 _loadReason];
        if (v4)
        {
          if (v12 == 1)
          {
            v13 = -4;
          }

          else
          {
            v13 = -8;
          }

          if (v12 == 2)
          {
            v14 = 0;
          }

          else
          {
            v14 = v13;
          }
        }

        else if (v12 >= 3)
        {
          v14 = 4;
        }

        else
        {
          v14 = 4 * v12;
        }

        [v11 setQueuePriority:v14];
        [v11 setQualityOfService:v3];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)postDidBeginLoadingIfIdle
{
  if ([(GKResourceLoader *)self isIdle])
  {
    objc_initWeak(&location, self);
    v3 = [(GKResourceLoader *)self notificationQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __45__GKResourceLoader_postDidBeginLoadingIfIdle__block_invoke;
    v4[3] = &unk_279669FE0;
    objc_copyWeak(&v5, &location);
    [v3 addOperationWithBlock:v4];

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
    v3 = [(GKResourceLoader *)self notificationQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __37__GKResourceLoader_postDidIdleIfIdle__block_invoke;
    v4[3] = &unk_279669FE0;
    objc_copyWeak(&v5, &location);
    [v3 addOperationWithBlock:v4];

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

- (void)postDidLoadAllForReason:(int64_t)a3
{
  objc_initWeak(&location, self);
  v5 = [(GKResourceLoader *)self notificationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__GKResourceLoader_postDidLoadAllForReason___block_invoke;
  v6[3] = &unk_27966A930;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  [v5 addOperationWithBlock:v6];

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