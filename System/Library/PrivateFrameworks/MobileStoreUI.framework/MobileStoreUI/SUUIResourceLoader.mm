@interface SUUIResourceLoader
- (BOOL)isIdleForReason:(int64_t)reason;
- (BOOL)loadResourceWithRequest:(id)request reason:(int64_t)reason;
- (BOOL)trySetReason:(int64_t)reason forRequestWithIdentifier:(unint64_t)identifier;
- (NSOperationQueue)delegateQueue;
- (NSString)description;
- (SUUIResourceLoader)init;
- (SUUIResourceLoader)initWithClientContext:(id)context;
- (SUUIResourceLoader)initWithOperationQueue:(id)queue clientContext:(id)context;
- (SUUIResourceLoaderDelegate)delegate;
- (id)cachedResourceForRequestIdentifier:(unint64_t)identifier;
- (int64_t)_qualityOfService;
- (int64_t)_queuePriorityForLoadReason:(int64_t)reason;
- (void)_finishLoadForRequest:(id)request withResource:(id)resource;
- (void)_reprioritizeOperations;
- (void)_sendDidBeginLoadingIfNecessary;
- (void)_sendDidIdleIfNecessary;
- (void)_sendDidLoadAllForReason:(int64_t)reason;
- (void)_updateLoadReason:(int64_t)reason forOperation:(id)operation;
- (void)addResource:(id)resource forRequestIdentifier:(unint64_t)identifier;
- (void)cache:(id)cache willEvictObject:(id)object;
- (void)cancelAllRequests;
- (void)cancelRequestWithIdentifier:(unint64_t)identifier;
- (void)dealloc;
- (void)enterBackground;
- (void)enterForeground;
@end

@implementation SUUIResourceLoader

- (SUUIResourceLoader)initWithClientContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    [(SUUIResourceLoader *)a2 initWithClientContext:?];
  }

  resourceLoadQueue = [contextCopy resourceLoadQueue];
  v7 = [(SUUIResourceLoader *)self initWithOperationQueue:resourceLoadQueue clientContext:contextCopy];

  return v7;
}

- (SUUIResourceLoader)initWithOperationQueue:(id)queue clientContext:(id)context
{
  queueCopy = queue;
  contextCopy = context;
  if (!queueCopy)
  {
    [SUUIResourceLoader initWithOperationQueue:a2 clientContext:self];
  }

  v21.receiver = self;
  v21.super_class = SUUIResourceLoader;
  v10 = [(SUUIResourceLoader *)&v21 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_clientContext, context);
    if (queueCopy)
    {
      objc_storeStrong(&v11->_operationQueue, queue);
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
  name = [(SUUIResourceLoader *)self name];
  operationQueue = [(SUUIResourceLoader *)self operationQueue];
  if (self->_inBackground)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"{onScreen: %ld, cacheAhead: %ld, cacheFarAhead: %ld}", self->_requestCountMap[2], self->_requestCountMap[1], self->_requestCountMap[0]];
  v10 = [v3 stringWithFormat:@"<%@:%p name = %@; operationQueue = %@; inBackground = %@; loadCounts = %@>", v5, self, name, operationQueue, v8, v9];;

  return v10;
}

- (void)addResource:(id)resource forRequestIdentifier:(unint64_t)identifier
{
  v6 = MEMORY[0x277CCABB0];
  resourceCopy = resource;
  v10 = [[v6 alloc] initWithUnsignedInteger:identifier];
  resourcesByRequestID = self->_resourcesByRequestID;
  v9 = [[_SUUIResourceCacheValue alloc] initWithResource:resourceCopy requestCacheKey:0];

  [(NSCache *)resourcesByRequestID setObject:v9 forKey:v10];
}

- (id)cachedResourceForRequestIdentifier:(unint64_t)identifier
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:identifier];
  v5 = [(NSCache *)self->_resourcesByRequestID objectForKey:v4];
  resource = [v5 resource];

  return resource;
}

- (void)cancelAllRequests
{
  allValues = [(NSMutableDictionary *)self->_operationsByRequestID allValues];
  [allValues makeObjectsPerformSelector:sel_cancel];

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

- (void)cancelRequestWithIdentifier:(unint64_t)identifier
{
  v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:identifier];
  v4 = [(NSMutableDictionary *)self->_operationsByRequestID objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 cancel];
    [(NSMutableDictionary *)self->_operationsByRequestID removeObjectForKey:v10];
    _loadReason = [v5 _loadReason];
    requestCountMap = self->_requestCountMap;
    v8 = 2;
    if (_loadReason != 1)
    {
      v8 = _loadReason == 0;
    }

    v9 = requestCountMap[v8];
    if (v9 >= 1)
    {
      requestCountMap[v8] = --v9;
    }

    if (!v9)
    {
      [(SUUIResourceLoader *)self _sendDidLoadAllForReason:_loadReason];
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
    mainQueue = delegateQueue;
  }

  else
  {
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  }

  return mainQueue;
}

- (BOOL)isIdleForReason:(int64_t)reason
{
  v3 = reason == 0;
  if (reason == 1)
  {
    v3 = 2;
  }

  return self->_requestCountMap[v3] == 0;
}

- (BOOL)loadResourceWithRequest:(id)request reason:(int64_t)reason
{
  requestCopy = request;
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{objc_msgSend(requestCopy, "requestIdentifier")}];
  v8 = [(NSMutableDictionary *)self->_operationsByRequestID objectForKey:v7];
  if (v8)
  {
    v9 = [(SUUIResourceLoader *)self _queuePriorityForLoadReason:reason];
    if (v9 > [v8 queuePriority])
    {
      [(SUUIResourceLoader *)self _updateLoadReason:reason forOperation:v8];
      [v8 setQueuePriority:v9];
    }
  }

  else
  {
    newLoadOperation = [requestCopy newLoadOperation];
    [newLoadOperation setClientContext:self->_clientContext];
    [newLoadOperation _setLoadReason:reason];
    [newLoadOperation setQualityOfService:{-[SUUIResourceLoader _qualityOfService](self, "_qualityOfService")}];
    [newLoadOperation setQueuePriority:{-[SUUIResourceLoader _queuePriorityForLoadReason:](self, "_queuePriorityForLoadReason:", reason)}];
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__SUUIResourceLoader_loadResourceWithRequest_reason___block_invoke;
    v15[3] = &unk_2798F7858;
    objc_copyWeak(&v17, &location);
    v11 = requestCopy;
    v16 = v11;
    [newLoadOperation setOutputBlock:v15];
    [(SUUIResourceLoader *)self _sendDidBeginLoadingIfNecessary];
    cacheKey = [v11 cacheKey];
    if (cacheKey)
    {
      [(NSMapTable *)self->_requestsByCacheKey setObject:v7 forKey:cacheKey];
    }

    [(NSMutableDictionary *)self->_operationsByRequestID setObject:newLoadOperation forKey:v7];
    [(NSOperationQueue *)self->_operationQueue addOperation:newLoadOperation];
    v13 = reason == 0;
    if (reason == 1)
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

- (BOOL)trySetReason:(int64_t)reason forRequestWithIdentifier:(unint64_t)identifier
{
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:identifier];
  v7 = [(NSMutableDictionary *)self->_operationsByRequestID objectForKey:v6];
  if (v7)
  {
    [(SUUIResourceLoader *)self _updateLoadReason:reason forOperation:v7];
    [v7 setQueuePriority:{-[SUUIResourceLoader _queuePriorityForLoadReason:](self, "_queuePriorityForLoadReason:", reason)}];
  }

  return v7 != 0;
}

- (void)cache:(id)cache willEvictObject:(id)object
{
  objectCopy = object;
  requestCacheKey = [objectCopy requestCacheKey];

  if (requestCacheKey)
  {
    requestsByCacheKey = self->_requestsByCacheKey;
    requestCacheKey2 = [objectCopy requestCacheKey];
    [(NSMapTable *)requestsByCacheKey removeObjectForKey:requestCacheKey2];
  }
}

- (int64_t)_queuePriorityForLoadReason:(int64_t)reason
{
  v3 = 4;
  if ((reason + 1) < 3)
  {
    v3 = 4 * (reason + 1);
  }

  v4 = -8;
  if (!reason)
  {
    v4 = -4;
  }

  if (reason == 1)
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

- (void)_updateLoadReason:(int64_t)reason forOperation:(id)operation
{
  operationCopy = operation;
  _loadReason = [operationCopy _loadReason];
  v7 = operationCopy;
  if (_loadReason != reason)
  {
    [operationCopy _setLoadReason:reason];
    requestCountMap = self->_requestCountMap;
    v9 = reason == 0;
    v10 = 2;
    if (reason == 1)
    {
      v9 = 2;
    }

    ++requestCountMap[v9];
    if (_loadReason != 1)
    {
      v10 = _loadReason == 0;
    }

    v11 = requestCountMap[v10];
    if (v11 >= 1)
    {
      requestCountMap[v10] = --v11;
    }

    v7 = operationCopy;
    if (!v11)
    {
      [(SUUIResourceLoader *)self _sendDidLoadAllForReason:_loadReason];
      v7 = operationCopy;
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

- (void)_finishLoadForRequest:(id)request withResource:(id)resource
{
  requestCopy = request;
  resourceCopy = resource;
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{objc_msgSend(requestCopy, "requestIdentifier")}];
  v8 = [(NSMutableDictionary *)self->_operationsByRequestID objectForKey:v7];
  _loadReason = [v8 _loadReason];
  [(NSMutableDictionary *)self->_operationsByRequestID removeObjectForKey:v7];
  if (resourceCopy)
  {
    if ([requestCopy cachesInMemory])
    {
      resourcesByRequestID = self->_resourcesByRequestID;
      v11 = [_SUUIResourceCacheValue alloc];
      cacheKey = [requestCopy cacheKey];
      v13 = [(_SUUIResourceCacheValue *)v11 initWithResource:resourceCopy requestCacheKey:cacheKey];
      [(NSCache *)resourcesByRequestID setObject:v13 forKey:v7];
    }

    [requestCopy finishWithResource:resourceCopy];
  }

  else
  {
    cacheKey2 = [requestCopy cacheKey];
    if (cacheKey2)
    {
      [(NSMapTable *)self->_requestsByCacheKey removeObjectForKey:cacheKey2];
    }
  }

  requestCountMap = self->_requestCountMap;
  v16 = 2;
  if (_loadReason != 1)
  {
    v16 = _loadReason == 0;
  }

  v17 = requestCountMap[v16];
  if (v17 >= 1)
  {
    requestCountMap[v16] = --v17;
  }

  if (!v17)
  {
    [(SUUIResourceLoader *)self _sendDidLoadAllForReason:_loadReason];
  }

  [(SUUIResourceLoader *)self _sendDidIdleIfNecessary];
}

- (void)_sendDidBeginLoadingIfNecessary
{
  if ([(SUUIResourceLoader *)self isIdle])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SUUIResourceLoaderDidBeginLoadingNotification" object:self];

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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SUUIResourceLoaderDidIdleNotification" object:self];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 resourceLoaderDidIdle:self];
    }
  }
}

- (void)_sendDidLoadAllForReason:(int64_t)reason
{
  v11[1] = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = @"SUUIResourceLoaderLoadReasonUserInfoKey";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:reason];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [defaultCenter postNotificationName:@"SUUIResourceLoaderDidLoadAllForReasonNotification" object:self userInfo:v7];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 resourceLoader:self didLoadAllForReason:reason];
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