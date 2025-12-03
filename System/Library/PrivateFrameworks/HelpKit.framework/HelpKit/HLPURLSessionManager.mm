@interface HLPURLSessionManager
+ (id)defaultManager;
- (HLPURLSessionDelegate)defaultSessionDelegate;
- (HLPURLSessionManager)init;
- (HLPURLSessionManagerDelegate)delegate;
- (NSURLSession)URLSession;
- (id)_mappedURLRequest:(id)request;
- (id)newURLSessionItemWithRequest:(id)request identifier:(id)identifier networkDelegate:(id)delegate completionHandler:(id)handler;
- (id)sessionTaskForTask:(id)task;
- (void)URLSession:(id)session dataTask:(id)task didBecomeDownloadTask:(id)downloadTask;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session dataTask:(id)task willCacheResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)cancelSessionItem:(id)item;
- (void)dealloc;
- (void)removeTaskFromMap:(id)map;
- (void)resumeSessionItem:(id)item;
- (void)sessionTask:(id)task didCompleteWithError:(id)error;
- (void)setDefaultSessionDelegate:(id)delegate;
- (void)setDelegate:(id)delegate;
@end

@implementation HLPURLSessionManager

+ (id)defaultManager
{
  if (defaultManager_predicate_0 != -1)
  {
    +[HLPURLSessionManager defaultManager];
  }

  v3 = defaultManager_gURLSessionManager;

  return v3;
}

uint64_t __38__HLPURLSessionManager_defaultManager__block_invoke()
{
  v0 = objc_alloc_init(HLPURLSessionManager);
  v1 = defaultManager_gURLSessionManager;
  defaultManager_gURLSessionManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)dealloc
{
  [(NSURLSession *)self->_URLSession invalidateAndCancel];
  sessionTaskQueue = self->_sessionTaskQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HLPURLSessionManager_dealloc__block_invoke;
  block[3] = &unk_279706B10;
  block[4] = self;
  dispatch_sync(sessionTaskQueue, block);
  v4.receiver = self;
  v4.super_class = HLPURLSessionManager;
  [(HLPURLSessionManager *)&v4 dealloc];
}

void __31__HLPURLSessionManager_dealloc__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) coalesceTaskURLMap];
  [v1 removeAllObjects];
}

- (HLPURLSessionManager)init
{
  v9.receiver = self;
  v9.super_class = HLPURLSessionManager;
  v2 = [(HLPURLSessionManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.IPURLSessionSerialQueue", 0);
    sessionTaskQueue = v2->_sessionTaskQueue;
    v2->_sessionTaskQueue = v3;

    v5 = v2->_sessionTaskQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__HLPURLSessionManager_init__block_invoke;
    block[3] = &unk_279706B10;
    v8 = v2;
    dispatch_sync(v5, block);
  }

  return v2;
}

void __28__HLPURLSessionManager_init__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEC10];
  v3 = [MEMORY[0x277CBEC10] mutableCopy];
  [*(a1 + 32) setCoalesceTaskURLMap:v3];

  v4 = [v2 mutableCopy];
  [*(a1 + 32) setUncoalesceTaskMap:v4];

  if (+[HLPCommonDefines isInternalBuild]&& PingPongClientLibraryCore_1())
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v5 = getPPCRedirectClass_softClass_0;
    v12 = getPPCRedirectClass_softClass_0;
    if (!getPPCRedirectClass_softClass_0)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __getPPCRedirectClass_block_invoke_0;
      v8[3] = &unk_279706B98;
      v8[4] = &v9;
      __getPPCRedirectClass_block_invoke_0(v8);
      v5 = v10[3];
    }

    v6 = v5;
    _Block_object_dispose(&v9, 8);
    v7 = objc_alloc_init(v5);
    [*(a1 + 32) setUrlRedirector:v7];
  }
}

- (NSURLSession)URLSession
{
  URLSession = self->_URLSession;
  if (!URLSession)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      bundleIdentifier = objc_loadWeakRetained(&self->_delegate);
      defaultSessionConfiguration = [bundleIdentifier URLSessionManagerSessionConfiguration:self];
    }

    else
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];

      v9 = [objc_alloc(MEMORY[0x277CCACD8]) initWithMemoryCapacity:5242880 diskCapacity:26214400 diskPath:bundleIdentifier];
      [MEMORY[0x277CCACD8] setSharedURLCache:v9];
      defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
      [defaultSessionConfiguration setURLCache:v9];
    }

    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      v13 = [v12 URLSessionManagerSessionOperationQueue:self];
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277CCABD8]);
      [v13 setMaxConcurrentOperationCount:4];
    }

    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      self->_coalesceRequests = [v16 URLSessionManagerShouldCoalesceRequest:self];
    }

    sessionTaskQueue = self->_sessionTaskQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__HLPURLSessionManager_URLSession__block_invoke;
    block[3] = &unk_279706AA0;
    block[4] = self;
    v22 = defaultSessionConfiguration;
    v23 = v13;
    v18 = v13;
    v19 = defaultSessionConfiguration;
    dispatch_sync(sessionTaskQueue, block);

    URLSession = self->_URLSession;
  }

  return URLSession;
}

void __34__HLPURLSessionManager_URLSession__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAD30] sessionWithConfiguration:*(a1 + 40) delegate:*(a1 + 32) delegateQueue:*(a1 + 48)];
  [*(a1 + 32) setURLSession:v2];
}

- (id)_mappedURLRequest:(id)request
{
  requestCopy = request;
  urlRedirector = [(HLPURLSessionManager *)self urlRedirector];

  if (!urlRedirector)
  {
    goto LABEL_5;
  }

  v6 = [requestCopy URL];
  urlRedirector2 = [(HLPURLSessionManager *)self urlRedirector];
  v8 = [urlRedirector2 mappedURL:v6];

  if (!v8 || ([v8 isEqual:v6] & 1) != 0)
  {

LABEL_5:
    v9 = requestCopy;
    goto LABEL_6;
  }

  v9 = [requestCopy mutableCopy];
  [v9 setURL:v8];
  v11 = MEMORY[0x277CBEB38];
  authenticationHandler = [(HLPURLSessionManager *)self authenticationHandler];
  customHeaderFields = [authenticationHandler customHeaderFields];
  v14 = [v11 dictionaryWithDictionary:customHeaderFields];

  if ([v14 count])
  {
    allHTTPHeaderFields = [v9 allHTTPHeaderFields];
    [v14 addEntriesFromDictionary:allHTTPHeaderFields];

    [v9 setAllHTTPHeaderFields:v14];
  }

LABEL_6:

  return v9;
}

- (void)setDefaultSessionDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_defaultSessionDelegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_defaultSessionDelegate, obj);
    v6 = [HLPURLSessionTask delegateRespondsWithDelegate:obj];
    *&self->_defaultSessionDelegateResponds.willCacheResponse = v6;
    *&self->_defaultSessionDelegateResponds.didCompleteWithError = WORD2(v6);
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    self->_respondsToRequestResumed = objc_opt_respondsToSelector() & 1;

    v6 = objc_loadWeakRetained(&self->_delegate);
    self->_respondsToRequestCompleted = objc_opt_respondsToSelector() & 1;

    v7 = objc_loadWeakRetained(&self->_delegate);
    self->_respondsToDidReceiveChallenge = objc_opt_respondsToSelector() & 1;
  }
}

- (id)newURLSessionItemWithRequest:(id)request identifier:(id)identifier networkDelegate:(id)delegate completionHandler:(id)handler
{
  v48 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  identifierCopy = identifier;
  delegateCopy = delegate;
  handlerCopy = handler;
  v13 = [(HLPURLSessionManager *)self _mappedURLRequest:requestCopy];
  v14 = [v13 URL];
  v15 = v14;
  if (v14 && (identifierCopy || ([v14 lastPathComponent], (identifierCopy = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__4;
    v44 = __Block_byref_object_dispose__4;
    v45 = 0;
    if (delegateCopy)
    {
      goto LABEL_7;
    }

    if (!self->_coalesceRequests)
    {
      goto LABEL_7;
    }

    sessionTaskQueue = self->_sessionTaskQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __98__HLPURLSessionManager_newURLSessionItemWithRequest_identifier_networkDelegate_completionHandler___block_invoke;
    block[3] = &unk_279707758;
    v39 = &v40;
    block[4] = self;
    v38 = v15;
    dispatch_sync(sessionTaskQueue, block);

    if (!v41[5])
    {
LABEL_7:
      v17 = HLPLogForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = requestCopy;
        _os_log_impl(&dword_2522BC000, v17, OS_LOG_TYPE_DEFAULT, "Fetching: %@", buf, 0xCu);
      }

      uRLSession = [(HLPURLSessionManager *)self URLSession];
      v19 = [uRLSession dataTaskWithRequest:v13];

      v20 = [[HLPURLSessionTask alloc] initWithSessionTask:v19 identifier:identifierCopy];
      v21 = v41[5];
      v41[5] = v20;

      WeakRetained = delegateCopy;
      if (!delegateCopy)
      {
        WeakRetained = objc_loadWeakRetained(&self->_defaultSessionDelegate);
      }

      [v41[5] setNetworkDelegate:WeakRetained];
      if (delegateCopy)
      {
        v23 = [HLPURLSessionTask delegateRespondsWithDelegate:delegateCopy];
      }

      else
      {

        v23 = *&self->_defaultSessionDelegateResponds.willCacheResponse | (*&self->_defaultSessionDelegateResponds.didCompleteWithError << 32);
      }

      [v41[5] setDelegateResponds:v23 & 0xFFFFFFFFFFFFLL];
      v25 = self->_sessionTaskQueue;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __98__HLPURLSessionManager_newURLSessionItemWithRequest_identifier_networkDelegate_completionHandler___block_invoke_24;
      v31[3] = &unk_279707780;
      v32 = delegateCopy;
      selfCopy = self;
      v35 = v19;
      v36 = &v40;
      v34 = v15;
      v26 = v19;
      dispatch_sync(v25, v31);
    }

    v27 = [HLPURLSessionItem alloc];
    v24 = [(HLPURLSessionItem *)v27 initWithSessionTask:v41[5] completionHandler:handlerCopy];
    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v24 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v24;
}

void __98__HLPURLSessionManager_newURLSessionItemWithRequest_identifier_networkDelegate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coalesceTaskURLMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if ([*(*(*(a1 + 48) + 8) + 40) isCancelled])
  {
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

void __98__HLPURLSessionManager_newURLSessionItemWithRequest_identifier_networkDelegate_completionHandler___block_invoke_24(uint64_t a1)
{
  if (*(a1 + 32) || ![*(a1 + 40) coalesceRequests])
  {
    v2 = *(*(*(a1 + 64) + 8) + 40);
    v3 = [*(a1 + 40) uncoalesceTaskMap];
    v4 = *(a1 + 56);
  }

  else
  {
    v2 = *(*(*(a1 + 64) + 8) + 40);
    v3 = [*(a1 + 40) coalesceTaskURLMap];
    v4 = *(a1 + 48);
  }

  v5 = v3;
  [v3 setObject:v2 forKeyedSubscript:v4];
}

- (void)resumeSessionItem:(id)item
{
  itemCopy = item;
  if ([itemCopy state] == 1)
  {
    if (self->_respondsToRequestResumed)
    {
      v5 = MEMORY[0x277D85DD0];
      v6 = 3221225472;
      v7 = __42__HLPURLSessionManager_resumeSessionItem___block_invoke;
      v8 = &unk_279706F08;
      selfCopy = self;
      v10 = itemCopy;
      dispatch_async(MEMORY[0x277D85CD0], &v5);
    }

    [itemCopy resume];
  }
}

void __42__HLPURLSessionManager_resumeSessionItem___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) sessionTask];
  [v4 URLSessionManagerRequestResumed:v2 sessionTask:v3];
}

- (void)cancelSessionItem:(id)item
{
  if (item)
  {
    itemCopy = item;
    [itemCopy cancel];
    sessionTask = [itemCopy sessionTask];

    if (sessionTask && [sessionTask isCancelled])
    {
      task = [sessionTask task];
      [(HLPURLSessionManager *)self removeTaskFromMap:task];

      if (self->_respondsToRequestCompleted)
      {
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __42__HLPURLSessionManager_cancelSessionItem___block_invoke;
        v7[3] = &unk_279706F08;
        v7[4] = self;
        v8 = sessionTask;
        dispatch_async(MEMORY[0x277D85CD0], v7);
      }
    }
  }
}

void __42__HLPURLSessionManager_cancelSessionItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 URLSessionManagerRequestCompleted:*(a1 + 32) sessionTask:*(a1 + 40)];
}

- (void)sessionTask:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  if (taskCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__HLPURLSessionManager_sessionTask_didCompleteWithError___block_invoke;
    block[3] = &unk_279706AA0;
    v8 = taskCopy;
    v11 = v8;
    v12 = errorCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    task = [v8 task];
    [(HLPURLSessionManager *)self removeTaskFromMap:task];
  }
}

void __57__HLPURLSessionManager_sessionTask_didCompleteWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didCompleteWithError:*(a1 + 40)];
  if ([*(a1 + 48) respondsToRequestCompleted])
  {
    v2 = [*(a1 + 48) delegate];
    [v2 URLSessionManagerRequestCompleted:*(a1 + 48) sessionTask:*(a1 + 32)];
  }
}

- (void)removeTaskFromMap:(id)map
{
  mapCopy = map;
  sessionTaskQueue = self->_sessionTaskQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HLPURLSessionManager_removeTaskFromMap___block_invoke;
  v7[3] = &unk_279706F08;
  v7[4] = self;
  v8 = mapCopy;
  v6 = mapCopy;
  dispatch_async(sessionTaskQueue, v7);
}

void __42__HLPURLSessionManager_removeTaskFromMap___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coalesceRequests];
  v3 = *(a1 + 32);
  if (v2)
  {
    v6 = [v3 coalesceTaskURLMap];
    v4 = [*(a1 + 40) originalRequest];
    v5 = [v4 URL];
    [v6 removeObjectForKey:v5];
  }

  else
  {
    v6 = [v3 uncoalesceTaskMap];
    [v6 removeObjectForKey:*(a1 + 40)];
  }
}

- (id)sessionTaskForTask:(id)task
{
  taskCopy = task;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  sessionTaskQueue = self->_sessionTaskQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HLPURLSessionManager_sessionTaskForTask___block_invoke;
  block[3] = &unk_2797077A8;
  block[4] = self;
  v10 = taskCopy;
  v11 = &v12;
  v6 = taskCopy;
  dispatch_sync(sessionTaskQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __43__HLPURLSessionManager_sessionTaskForTask___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) coalesceRequests])
  {
    v2 = [*(a1 + 40) originalRequest];
    v9 = [v2 URL];

    v3 = [*(a1 + 32) coalesceTaskURLMap];
    v4 = [v3 objectForKeyedSubscript:v9];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v9 = [*(a1 + 32) uncoalesceTaskMap];
    v7 = [v9 objectForKeyedSubscript:*(a1 + 40)];
    v8 = *(*(a1 + 48) + 8);
    v3 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  v12 = [(HLPURLSessionManager *)self sessionTaskForTask:taskCopy];
  v13 = v12;
  if (v12)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __81__HLPURLSessionManager_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
    v27[3] = &unk_2797077F8;
    v14 = v12;
    v28 = v14;
    v15 = responseCopy;
    v29 = v15;
    selfCopy = self;
    v16 = handlerCopy;
    v31 = v16;
    v17 = MEMORY[0x25309ED90](v27);
    authenticationHandler = [(HLPURLSessionManager *)self authenticationHandler];
    if ([objc_opt_class() canAuthenticateWithURLResponse:v15])
    {
      retryCount = [v14 retryCount];

      if (!retryCount)
      {
        [v14 setRetryCount:{objc_msgSend(v14, "retryCount") + 1}];
        authenticationHandler2 = [(HLPURLSessionManager *)self authenticationHandler];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __81__HLPURLSessionManager_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_3;
        v21[3] = &unk_279707848;
        v25 = v17;
        v22 = taskCopy;
        v26 = v16;
        selfCopy2 = self;
        v24 = v14;
        [authenticationHandler2 authenticateWithCompletion:v21];

LABEL_8:
        goto LABEL_9;
      }
    }

    else
    {
    }

    v17[2](v17);
    goto LABEL_8;
  }

  (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_9:
}

void __81__HLPURLSessionManager_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) delegateResponds] & 0x1000000) != 0)
  {
    v4 = [*(a1 + 32) networkDelegate];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __81__HLPURLSessionManager_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2;
    v7[3] = &unk_2797077D0;
    v7[4] = *(a1 + 48);
    v8 = v5;
    v9 = *(a1 + 56);
    [v4 sessionTask:v8 didReceiveResponse:v6 completionHandler:v7];
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*(a1 + 32) setDataTaskData:v2];

    v3 = *(*(a1 + 56) + 16);

    v3();
  }
}

uint64_t __81__HLPURLSessionManager_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    [*(a1 + 32) sessionTask:*(a1 + 40) didCompleteWithError:0];
  }

  else if (a2 == 1)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [*(a1 + 40) setDataTaskData:v4];
  }

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void __81__HLPURLSessionManager_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a4;
  if (a5)
  {
    (*(*(a1 + 56) + 16))();
  }

  else if ([*(a1 + 32) state] != 3)
  {
    (*(*(a1 + 64) + 16))();
    [*(a1 + 32) cancel];
    v8 = [*(a1 + 32) originalRequest];
    v9 = [v8 mutableCopy];

    [v9 setAllHTTPHeaderFields:v7];
    v10 = [*(a1 + 40) URLSession];
    v11 = [v10 dataTaskWithRequest:v9];

    [*(a1 + 48) setTask:v11];
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(v13 + 16);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __81__HLPURLSessionManager_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_4;
    v19 = &unk_279707820;
    v20 = v13;
    v21 = v12;
    v22 = v11;
    v23 = *(a1 + 48);
    v15 = v11;
    dispatch_sync(v14, &v16);
    [v15 resume];
  }
}

void __81__HLPURLSessionManager_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) uncoalesceTaskMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 56);
    v5 = [*(a1 + 32) uncoalesceTaskMap];
    [v5 setObject:v4 forKeyedSubscript:*(a1 + 48)];

    v6 = [*(a1 + 32) uncoalesceTaskMap];
    [v6 removeObjectForKey:*(a1 + 40)];
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  dataCopy = data;
  v7 = [(HLPURLSessionManager *)self sessionTaskForTask:task];
  dataTaskData = [v7 dataTaskData];
  v9 = dataTaskData;
  if (dataTaskData)
  {
    [dataTaskData appendData:dataCopy];
  }
}

- (void)URLSession:(id)session dataTask:(id)task didBecomeDownloadTask:(id)downloadTask
{
  taskCopy = task;
  downloadTaskCopy = downloadTask;
  v9 = [(HLPURLSessionManager *)self sessionTaskForTask:taskCopy];
  [v9 setTask:downloadTaskCopy];
  [v9 setDataTaskData:0];
  sessionTaskQueue = self->_sessionTaskQueue;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __66__HLPURLSessionManager_URLSession_dataTask_didBecomeDownloadTask___block_invoke;
  v17 = &unk_279707820;
  selfCopy = self;
  v19 = downloadTaskCopy;
  v20 = v9;
  v21 = taskCopy;
  v11 = taskCopy;
  v12 = v9;
  v13 = downloadTaskCopy;
  dispatch_sync(sessionTaskQueue, &v14);
  [v13 resume];
}

void __66__HLPURLSessionManager_URLSession_dataTask_didBecomeDownloadTask___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) coalesceRequests] & 1) == 0)
  {
    v2 = *(a1 + 48);
    v3 = [*(a1 + 32) uncoalesceTaskMap];
    [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];

    v4 = [*(a1 + 32) uncoalesceTaskMap];
    [v4 removeObjectForKey:*(a1 + 56)];
  }
}

- (void)URLSession:(id)session dataTask:(id)task willCacheResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v10 = [(HLPURLSessionManager *)self sessionTaskForTask:task];
  if ([v10 delegateResponds])
  {
    networkDelegate = [v10 networkDelegate];
    [networkDelegate sessionTask:v10 willCacheResponse:responseCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, responseCopy);
  }
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  v13 = [(HLPURLSessionManager *)self sessionTaskForTask:task];
  if (([v13 delegateResponds] & 0x100) != 0)
  {
    networkDelegate = [v13 networkDelegate];
    [networkDelegate sessionTask:v13 willPerformHTTPRedirection:redirectionCopy newRequest:requestCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, requestCopy);
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  if (write >= 1 || written <= 0)
  {
    writtenCopy = write;
  }

  else
  {
    writtenCopy = written;
  }

  if (writtenCopy != -1)
  {
    v9 = [(HLPURLSessionManager *)self sessionTaskForTask:task];
    [v9 setDownloadTaskTotalBytes:writtenCopy];
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  lCopy = l;
  v7 = [(HLPURLSessionManager *)self sessionTaskForTask:task];
  downloadTaskTotalBytes = [v7 downloadTaskTotalBytes];
  if (lCopy && downloadTaskTotalBytes)
  {
    if (([v7 delegateResponds] & 0x10000) != 0)
    {
      networkDelegate = [v7 networkDelegate];
      [networkDelegate sessionTask:v7 didFinishDownloadingToURL:lCopy];
    }

    else
    {
      v9 = MEMORY[0x277CBEA90];
      path = [lCopy path];
      v11 = [v9 dataWithContentsOfFile:path];
      [v7 setFormattedData:v11];
    }
  }

  else
  {
    [v7 setDownloadTaskTotalBytes:0];
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v8 = [(HLPURLSessionManager *)self sessionTaskForTask:taskCopy];
  response = [taskCopy response];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    response2 = [taskCopy response];
    [v8 setResponse:response2];
    allHeaderFields = [response2 allHeaderFields];
    v13 = [allHeaderFields objectForKeyedSubscript:@"Last-Modified"];
    [v8 setLastModified:v13];
  }

  if (([v8 delegateResponds] & 0x100000000) != 0)
  {
    networkDelegate = [v8 networkDelegate];
    [networkDelegate sessionTask:v8 didCompleteWithError:errorCopy];
  }

  if (v8)
  {
    if (errorCopy)
    {
      [(HLPURLSessionManager *)self sessionTask:v8 didCompleteWithError:errorCopy];
    }

    else
    {
      dataError = [v8 dataError];
      [(HLPURLSessionManager *)self sessionTask:v8 didCompleteWithError:dataError];
    }
  }
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  v10 = [(HLPURLSessionManager *)self sessionTaskForTask:task];
  if (([v10 delegateResponds] & 0x10000000000) != 0 && (objc_msgSend(challengeCopy, "protectionSpace"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "host"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hasSuffix:", @".apple.com"), v12, v11, v13))
  {
    networkDelegate = [v10 networkDelegate];
    [networkDelegate sessionTask:v10 didReceiveChallenge:challengeCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 3, 0);
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  sessionCopy = session;
  challengeCopy = challenge;
  handlerCopy = handler;
  if (self->_respondsToDidReceiveChallenge && ([challengeCopy protectionSpace], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "host"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hasSuffix:", @".apple.com"), v11, v10, v12))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained URLSessionManagerDidReceiveChallenge:challengeCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 3, 0);
  }
}

- (HLPURLSessionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HLPURLSessionDelegate)defaultSessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultSessionDelegate);

  return WeakRetained;
}

@end