@interface SUUIResourceLoader
- (BOOL)isIdleForReason:(int64_t)a3;
- (BOOL)loadResourceWithRequest:(id)a3 reason:(int64_t)a4;
- (BOOL)trySetReason:(int64_t)a3 forRequestWithIdentifier:(unint64_t)a4;
- (NSOperationQueue)delegateQueue;
- (NSString)description;
- (SUUIResourceLoader)init;
- (SUUIResourceLoader)initWithClientContext:(id)a3;
- (SUUIResourceLoader)initWithOperationQueue:(id)a3 clientContext:(id)a4;
- (SUUIResourceLoaderDelegate)delegate;
- (id)cachedResourceForRequestIdentifier:(unint64_t)a3;
- (int64_t)_qualityOfService;
- (int64_t)_queuePriorityForLoadReason:(int64_t)a3;
- (void)_finishLoadForRequest:(id)a3 withResource:(id)a4;
- (void)_reprioritizeOperations;
- (void)_sendDidBeginLoadingIfNecessary;
- (void)_sendDidIdleIfNecessary;
- (void)_sendDidLoadAllForReason:(int64_t)a3;
- (void)_updateLoadReason:(int64_t)a3 forOperation:(id)a4;
- (void)addResource:(id)a3 forRequestIdentifier:(unint64_t)a4;
- (void)cache:(id)a3 willEvictObject:(id)a4;
- (void)cancelAllRequests;
- (void)cancelRequestWithIdentifier:(unint64_t)a3;
- (void)dealloc;
- (void)enterBackground;
- (void)enterForeground;
@end

@implementation SUUIResourceLoader

- (SUUIResourceLoader)initWithClientContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SUUIResourceLoader *)a2 initWithClientContext:?];
  }

  v6 = [v5 resourceLoadQueue];
  v7 = [(SUUIResourceLoader *)self initWithOperationQueue:v6 clientContext:v5];

  return v7;
}

- (SUUIResourceLoader)initWithOperationQueue:(id)a3 clientContext:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [SUUIResourceLoader initWithOperationQueue:a2 clientContext:self];
  }

  v21.receiver = self;
  v21.super_class = SUUIResourceLoader;
  v10 = [(SUUIResourceLoader *)&v21 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_clientContext, a4);
    if (v8)
    {
      objc_storeStrong(&v11->_operationQueue, a3);
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277CCABD8]);
      operationQueue = v11->_operationQueue;
      v11->_operationQueue = v12;

      [(NSOperationQueue *)v11->_operationQueue setName:@"com.apple.iTunesStoreUI.SUUIResourceLoader.queueFor28304306Fix"];
      [(NSOperationQueue *)v11->_operationQueue setMaxConcurrentOperationCount:8];
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    operationsByRequestID = v11->_operationsByRequestID;
    v11->_operationsByRequestID = v14;

    v16 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    requestsByCacheKey = v11->_requestsByCacheKey;
    v11->_requestsByCacheKey = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEA78]);
    resourcesByRequestID = v11->_resourcesByRequestID;
    v11->_resourcesByRequestID = v18;

    [(NSCache *)v11->_resourcesByRequestID setCountLimit:750];
    [(NSCache *)v11->_resourcesByRequestID setDelegate:v11];
  }

  return v11;
}

- (SUUIResourceLoader)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"SUUIResourceLoader must be initialized with an operation queue"];

  return 0;
}

- (void)dealloc
{
  [(NSCache *)self->_resourcesByRequestID setDelegate:0];
  [(SUUIResourceLoader *)self cancelAllRequests];
  v3.receiver = self;
  v3.super_class = SUUIResourceLoader;
  [(SUUIResourceLoader *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SUUIResourceLoader *)self name];
  v7 = [(SUUIResourceLoader *)self operationQueue];
  if (self->_inBackground)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"{onScreen: %ld, cacheAhead: %ld, cacheFarAhead: %ld}", self->_requestCountMap[2], self->_requestCountMap[1], self->_requestCountMap[0]];
  v10 = [v3 stringWithFormat:@"<%@:%p name = %@; operationQueue = %@; inBackground = %@; loadCounts = %@>", v5, self, v6, v7, v8, v9];;

  return v10;
}

- (void)addResource:(id)a3 forRequestIdentifier:(unint64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v10 = [[v6 alloc] initWithUnsignedInteger:a4];
  resourcesByRequestID = self->_resourcesByRequestID;
  v9 = [[_SUUIResourceCacheValue alloc] initWithResource:v7 requestCacheKey:0];

  [(NSCache *)resourcesByRequestID setObject:v9 forKey:v10];
}

- (id)cachedResourceForRequestIdentifier:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a3];
  v5 = [(NSCache *)self->_resourcesByRequestID objectForKey:v4];
  v6 = [v5 resource];

  return v6;
}

- (void)cancelAllRequests
{
  v3 = [(NSMutableDictionary *)self->_operationsByRequestID allValues];
  [v3 makeObjectsPerformSelector:sel_cancel];

  [(NSMutableDictionary *)self->_operationsByRequestID removeAllObjects];
  if (self->_requestCountMap[2] >= 1)
  {
    self->_requestCountMap[2] = 0;
    [(SUUIResourceLoader *)self _sendDidLoadAllForReason:1];
  }

  if (self->_requestCountMap[1] >= 1)
  {
    self->_requestCountMap[1] = 0;
    [(SUUIResourceLoader *)self _sendDidLoadAllForReason:0];
  }

  if (self->_requestCountMap[0] >= 1)
  {
    self->_requestCountMap[0] = 0;

    [(SUUIResourceLoader *)self _sendDidLoadAllForReason:-1];
  }
}

- (void)cancelRequestWithIdentifier:(unint64_t)a3
{
  v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a3];
  v4 = [(NSMutableDictionary *)self->_operationsByRequestID objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 cancel];
    [(NSMutableDictionary *)self->_operationsByRequestID removeObjectForKey:v10];
    v6 = [v5 _loadReason];
    requestCountMap = self->_requestCountMap;
    v8 = 2;
    if (v6 != 1)
    {
      v8 = v6 == 0;
    }

    v9 = requestCountMap[v8];
    if (v9 >= 1)
    {
      requestCountMap[v8] = --v9;
    }

    if (!v9)
    {
      [(SUUIResourceLoader *)self _sendDidLoadAllForReason:v6];
    }
  }
}

- (void)enterBackground
{
  if (!self->_inBackground)
  {
    self->_inBackground = 1;
    [(SUUIResourceLoader *)self _reprioritizeOperations];
  }
}

- (void)enterForeground
{
  if (self->_inBackground)
  {
    self->_inBackground = 0;
    [(SUUIResourceLoader *)self _reprioritizeOperations];
  }
}

- (NSOperationQueue)delegateQueue
{
  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    v3 = delegateQueue;
  }

  else
  {
    v3 = [MEMORY[0x277CCABD8] mainQueue];
  }

  return v3;
}

- (BOOL)isIdleForReason:(int64_t)a3
{
  v3 = a3 == 0;
  if (a3 == 1)
  {
    v3 = 2;
  }

  return self->_requestCountMap[v3] == 0;
}

- (BOOL)loadResourceWithRequest:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{objc_msgSend(v6, "requestIdentifier")}];
  v8 = [(NSMutableDictionary *)self->_operationsByRequestID objectForKey:v7];
  if (v8)
  {
    v9 = [(SUUIResourceLoader *)self _queuePriorityForLoadReason:a4];
    if (v9 > [v8 queuePriority])
    {
      [(SUUIResourceLoader *)self _updateLoadReason:a4 forOperation:v8];
      [v8 setQueuePriority:v9];
    }
  }

  else
  {
    v10 = [v6 newLoadOperation];
    [v10 setClientContext:self->_clientContext];
    [v10 _setLoadReason:a4];
    [v10 setQualityOfService:{-[SUUIResourceLoader _qualityOfService](self, "_qualityOfService")}];
    [v10 setQueuePriority:{-[SUUIResourceLoader _queuePriorityForLoadReason:](self, "_queuePriorityForLoadReason:", a4)}];
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__SUUIResourceLoader_loadResourceWithRequest_reason___block_invoke;
    v15[3] = &unk_2798F7858;
    objc_copyWeak(&v17, &location);
    v11 = v6;
    v16 = v11;
    [v10 setOutputBlock:v15];
    [(SUUIResourceLoader *)self _sendDidBeginLoadingIfNecessary];
    v12 = [v11 cacheKey];
    if (v12)
    {
      [(NSMapTable *)self->_requestsByCacheKey setObject:v7 forKey:v12];
    }

    [(NSMutableDictionary *)self->_operationsByRequestID setObject:v10 forKey:v7];
    [(NSOperationQueue *)self->_operationQueue addOperation:v10];
    v13 = a4 == 0;
    if (a4 == 1)
    {
      v13 = 2;
    }

    ++self->_requestCountMap[v13];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v8 == 0;
}

void __53__SUUIResourceLoader_loadResourceWithRequest_reason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained delegateQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__SUUIResourceLoader_loadResourceWithRequest_reason___block_invoke_2;
  v10[3] = &unk_2798F6530;
  objc_copyWeak(&v13, (a1 + 40));
  v11 = *(a1 + 32);
  v9 = v5;
  v12 = v9;
  [v8 addOperationWithBlock:v10];

  objc_destroyWeak(&v13);
}

void __53__SUUIResourceLoader_loadResourceWithRequest_reason___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishLoadForRequest:*(a1 + 32) withResource:*(a1 + 40)];
}

- (BOOL)trySetReason:(int64_t)a3 forRequestWithIdentifier:(unint64_t)a4
{
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a4];
  v7 = [(NSMutableDictionary *)self->_operationsByRequestID objectForKey:v6];
  if (v7)
  {
    [(SUUIResourceLoader *)self _updateLoadReason:a3 forOperation:v7];
    [v7 setQueuePriority:{-[SUUIResourceLoader _queuePriorityForLoadReason:](self, "_queuePriorityForLoadReason:", a3)}];
  }

  return v7 != 0;
}

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  v8 = a4;
  v5 = [v8 requestCacheKey];

  if (v5)
  {
    requestsByCacheKey = self->_requestsByCacheKey;
    v7 = [v8 requestCacheKey];
    [(NSMapTable *)requestsByCacheKey removeObjectForKey:v7];
  }
}

- (int64_t)_queuePriorityForLoadReason:(int64_t)a3
{
  v3 = 4;
  if ((a3 + 1) < 3)
  {
    v3 = 4 * (a3 + 1);
  }

  v4 = -8;
  if (!a3)
  {
    v4 = -4;
  }

  if (a3 == 1)
  {
    v4 = 0;
  }

  if (self->_inBackground)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

- (int64_t)_qualityOfService
{
  if (self->_inBackground)
  {
    return 9;
  }

  else
  {
    return 25;
  }
}

- (void)_updateLoadReason:(int64_t)a3 forOperation:(id)a4
{
  v12 = a4;
  v6 = [v12 _loadReason];
  v7 = v12;
  if (v6 != a3)
  {
    [v12 _setLoadReason:a3];
    requestCountMap = self->_requestCountMap;
    v9 = a3 == 0;
    v10 = 2;
    if (a3 == 1)
    {
      v9 = 2;
    }

    ++requestCountMap[v9];
    if (v6 != 1)
    {
      v10 = v6 == 0;
    }

    v11 = requestCountMap[v10];
    if (v11 >= 1)
    {
      requestCountMap[v10] = --v11;
    }

    v7 = v12;
    if (!v11)
    {
      [(SUUIResourceLoader *)self _sendDidLoadAllForReason:v6];
      v7 = v12;
    }
  }
}

- (void)_reprioritizeOperations
{
  operationsByRequestID = self->_operationsByRequestID;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__SUUIResourceLoader__reprioritizeOperations__block_invoke;
  v3[3] = &unk_2798F7880;
  v3[4] = self;
  [(NSMutableDictionary *)operationsByRequestID enumerateKeysAndObjectsUsingBlock:v3];
}

void __45__SUUIResourceLoader__reprioritizeOperations__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v5 setQueuePriority:{objc_msgSend(v4, "_queuePriorityForLoadReason:", objc_msgSend(v5, "_loadReason"))}];
  [v5 setQualityOfService:{objc_msgSend(*(a1 + 32), "_qualityOfService")}];
}

- (void)_finishLoadForRequest:(id)a3 withResource:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{objc_msgSend(v18, "requestIdentifier")}];
  v8 = [(NSMutableDictionary *)self->_operationsByRequestID objectForKey:v7];
  v9 = [v8 _loadReason];
  [(NSMutableDictionary *)self->_operationsByRequestID removeObjectForKey:v7];
  if (v6)
  {
    if ([v18 cachesInMemory])
    {
      resourcesByRequestID = self->_resourcesByRequestID;
      v11 = [_SUUIResourceCacheValue alloc];
      v12 = [v18 cacheKey];
      v13 = [(_SUUIResourceCacheValue *)v11 initWithResource:v6 requestCacheKey:v12];
      [(NSCache *)resourcesByRequestID setObject:v13 forKey:v7];
    }

    [v18 finishWithResource:v6];
  }

  else
  {
    v14 = [v18 cacheKey];
    if (v14)
    {
      [(NSMapTable *)self->_requestsByCacheKey removeObjectForKey:v14];
    }
  }

  requestCountMap = self->_requestCountMap;
  v16 = 2;
  if (v9 != 1)
  {
    v16 = v9 == 0;
  }

  v17 = requestCountMap[v16];
  if (v17 >= 1)
  {
    requestCountMap[v16] = --v17;
  }

  if (!v17)
  {
    [(SUUIResourceLoader *)self _sendDidLoadAllForReason:v9];
  }

  [(SUUIResourceLoader *)self _sendDidIdleIfNecessary];
}

- (void)_sendDidBeginLoadingIfNecessary
{
  if ([(SUUIResourceLoader *)self isIdle])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"SUUIResourceLoaderDidBeginLoadingNotification" object:self];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 resourceLoaderDidBeginLoading:self];
    }
  }
}

- (void)_sendDidIdleIfNecessary
{
  if ([(SUUIResourceLoader *)self isIdle])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"SUUIResourceLoaderDidIdleNotification" object:self];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 resourceLoaderDidIdle:self];
    }
  }
}

- (void)_sendDidLoadAllForReason:(int64_t)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = @"SUUIResourceLoaderLoadReasonUserInfoKey";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v5 postNotificationName:@"SUUIResourceLoaderDidLoadAllForReasonNotification" object:self userInfo:v7];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 resourceLoader:self didLoadAllForReason:a3];
  }
}

- (SUUIResourceLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithClientContext:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUUIResourceLoader.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"clientContext"}];
}

- (void)initWithOperationQueue:(uint64_t)a1 clientContext:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUUIResourceLoader.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
}

@end