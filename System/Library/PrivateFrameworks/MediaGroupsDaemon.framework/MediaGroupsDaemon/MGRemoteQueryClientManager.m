@interface MGRemoteQueryClientManager
- (BOOL)_targetValidate:(id)a3;
- (MGGroupsQueryAgent)queryAgent;
- (MGInternalQueryRunner)queryRunner;
- (MGRemoteQueryClientManager)initWithQueryRunner:(id)a3 groupsQueryAgent:(id)a4;
- (NSString)description;
- (id)_clientForTarget:(id)a3 withQuery:(id)a4;
- (id)_clientForTask:(id)a3 includeOthers:(BOOL)a4;
- (id)_clientsForTarget:(id)a3;
- (id)_clientsWithQuery:(id)a3;
- (id)_watchdogForTarget:(id)a3;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)_browserStart;
- (void)_browserStop;
- (void)_browserUpdateState;
- (void)_clientRemove:(id)a3;
- (void)_clientStartWithQuery:(id)a3 target:(id)a4;
- (void)_clientStop:(id)a3;
- (void)_invalidate;
- (void)_prepareURLSession;
- (void)_queryAdd:(id)a3;
- (void)_queryRemove:(id)a3;
- (void)_setupQuery;
- (void)_targetAdd:(id)a3;
- (void)_targetRemove:(id)a3;
- (void)_watchdogAdd:(id)a3;
- (void)_watchdogFired:(id)a3;
- (void)_watchdogRemove:(id)a3;
- (void)_watchdogReset:(id)a3;
- (void)addOutstandingQuery:(id)a3;
- (void)browser:(id)a3 foundTarget:(id)a4;
- (void)browser:(id)a3 invalidatedWithError:(id)a4;
- (void)browser:(id)a3 lostTarget:(id)a4;
- (void)clientInvalidated:(id)a3 withError:(id)a4;
- (void)dealloc;
- (void)removeOutstandingQuery:(id)a3;
- (void)watchdogFired:(id)a3;
@end

@implementation MGRemoteQueryClientManager

- (MGRemoteQueryClientManager)initWithQueryRunner:(id)a3 groupsQueryAgent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = MGRemoteQueryClientManager;
  v8 = [(MGRemoteQueryClientManager *)&v28 init];
  v9 = v8;
  if (v8)
  {
    v8->_invalidated = 0;
    objc_storeWeak(&v8->_queryRunner, v6);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.MediaGroups.RemoteQuery.Client", v10);
    dispatchQueue = v9->_dispatchQueue;
    v9->_dispatchQueue = v11;

    objc_storeWeak(&v9->_queryAgent, v7);
    browser = v9->_browser;
    v9->_browser = 0;

    v14 = [MEMORY[0x277CBEB98] set];
    targets = v9->_targets;
    v9->_targets = v14;

    v16 = [MEMORY[0x277CBEAC0] dictionary];
    queries = v9->_queries;
    v9->_queries = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEA60]);
    homeHashes = v9->_homeHashes;
    v9->_homeHashes = v18;

    v20 = [MEMORY[0x277CBEA60] array];
    clients = v9->_clients;
    v9->_clients = v20;

    v22 = [MEMORY[0x277CBEAC0] dictionary];
    watchdogs = v9->_watchdogs;
    v9->_watchdogs = v22;

    v24 = [(MGRemoteQueryClientManager *)v9 dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__MGRemoteQueryClientManager_initWithQueryRunner_groupsQueryAgent___block_invoke;
    block[3] = &unk_27989ED90;
    v27 = v9;
    dispatch_async(v24, block);
  }

  return v9;
}

uint64_t __67__MGRemoteQueryClientManager_initWithQueryRunner_groupsQueryAgent___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupQuery];
  [*(a1 + 32) _prepareURLSession];
  v2 = *(a1 + 32);

  return [v2 _browserUpdateState];
}

- (void)dealloc
{
  [(MGRemoteQueryClientManager *)self _invalidate];
  v3 = [(MGRemoteQueryClientManager *)self query];
  if (v3)
  {
    v4 = [(MGRemoteQueryClientManager *)self queryRunner];
    [v4 stopOutstandingQuery:v3];
  }

  v5.receiver = self;
  v5.super_class = MGRemoteQueryClientManager;
  [(MGRemoteQueryClientManager *)&v5 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MGRemoteQueryClientManager *)self clients];
  v7 = [(MGRemoteQueryClientManager *)self queries];
  v8 = [(MGRemoteQueryClientManager *)self targets];
  v9 = [(MGRemoteQueryClientManager *)self session];
  v10 = [(MGRemoteQueryClientManager *)self browser];
  v11 = [v3 stringWithFormat:@"<%@: %p, _clients = %lu, _queries = %lu, _targets = %lu, _session = %@, _browser = %@>", v5, self, v6, v7, v8, v9, v10];

  return v11;
}

- (void)addOutstandingQuery:(id)a3
{
  v4 = a3;
  v5 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__MGRemoteQueryClientManager_addOutstandingQuery___block_invoke;
  v7[3] = &unk_27989EE80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)removeOutstandingQuery:(id)a3
{
  v4 = a3;
  v5 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__MGRemoteQueryClientManager_removeOutstandingQuery___block_invoke;
  v7[3] = &unk_27989EE80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_prepareURLSession
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MGRemoteQueryClientManager *)self session];

  if (v4)
  {
    v5 = MGLogForCategory(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v19 = self;
      v6 = "%p session already prepared";
LABEL_7:
      _os_log_error_impl(&dword_25863A000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([(MGRemoteQueryClientManager *)self invalidated])
  {
    v5 = MGLogForCategory(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v19 = self;
      v6 = "%p invalidated, not preparing session";
      goto LABEL_7;
    }

LABEL_8:

    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  v17 = [MEMORY[0x277CBABC8] ephemeralSessionConfiguration];
  [v17 setNetworkServiceType:6];
  [v17 setAllowsCellularAccess:0];
  [v17 setTimeoutIntervalForRequest:0.0];
  [v17 setTimeoutIntervalForResource:0.0];
  [v17 setWaitsForConnectivity:0];
  [v17 setRequestCachePolicy:4];
  [v17 setURLCache:0];
  [v17 setHTTPCookieAcceptPolicy:1];
  [v17 setHTTPShouldSetCookies:0];
  [v17 setHTTPCookieStorage:0];
  [v17 set_reportsDataStalls:0];
  v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v9 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  [v8 setUnderlyingQueue:v9];

  v10 = [[MGRemoteQueryClientManagerForwarder alloc] initWithClientManager:self];
  forwarder = self->_forwarder;
  self->_forwarder = v10;

  v12 = MEMORY[0x277CBABB8];
  v13 = [(MGRemoteQueryClientManager *)self forwarder];
  v14 = [v12 sessionWithConfiguration:v17 delegate:v13 delegateQueue:v8];

  session = self->_session;
  self->_session = v14;

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  v2 = [(MGRemoteQueryClientManager *)self session];
  [v2 invalidateAndCancel];
}

- (void)_setupQuery
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MGRemoteQueryClientManager *)self query];

  if (v4)
  {
    v5 = MGLogForCategory(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(MGRemoteQueryClientManager *)self query];
      v7 = [v6 identifier];
      *buf = 134218242;
      v20 = self;
      v21 = 2112;
      v22 = v7;
      _os_log_error_impl(&dword_25863A000, v5, OS_LOG_TYPE_ERROR, "%p client monitoring query already running %@", buf, 0x16u);
    }
  }

  else
  {
    v8 = MEMORY[0x277CCA920];
    v9 = [MEMORY[0x277D27440] rq_predicateForLocal];
    v18[0] = v9;
    v10 = [MEMORY[0x277D27470] predicateForType];
    v18[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v5 = [v8 andPredicateWithSubpredicates:v11];

    objc_initWeak(buf, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __41__MGRemoteQueryClientManager__setupQuery__block_invoke;
    v16[3] = &unk_27989F060;
    objc_copyWeak(&v17, buf);
    v12 = MEMORY[0x259C85F90](v16);
    v13 = [(MGRemoteQueryClientManager *)self queryRunner];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__MGRemoteQueryClientManager__setupQuery__block_invoke_16;
    v15[3] = &unk_27989F0D8;
    v15[4] = self;
    [v13 startOutstandingQueryWithPredicate:v5 handler:v12 completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __41__MGRemoteQueryClientManager__setupQuery__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained dispatchQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__MGRemoteQueryClientManager__setupQuery__block_invoke_2;
    v7[3] = &unk_27989EE80;
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

void __41__MGRemoteQueryClientManager__setupQuery__block_invoke_2(uint64_t a1)
{
  data[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) count];
  v3 = MGLogForCategory(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    buf.A = 134218240;
    *&buf.B = v4;
    LOWORD(buf.D) = 2048;
    *(&buf.D + 2) = v2;
    _os_log_impl(&dword_25863A000, v3, OS_LOG_TYPE_DEFAULT, "%p client monitoring query received %lu groups", &buf, 0x16u);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v18 + 1) + 8 * i) identifier];
        v11 = MGHomeIdentifierForGroupIdentifier(v10);

        if (v11)
        {
          data[0] = 0;
          data[1] = 0;
          [v11 getUUIDBytes:data];
          memset(&buf, 0, sizeof(buf));
          CC_MD5_Init(&buf);
          CC_MD5_Update(&buf, data, 0x10u);
          CC_MD5_Final(md, &buf);
          v12 = objc_alloc_init(MEMORY[0x277CCACA8]);
          for (j = 0; j != 16; ++j)
          {
            v14 = v12;
            v12 = [v12 stringByAppendingFormat:@"%hhX", md[j]];
          }

          v15 = [v5 arrayByAddingObject:v12];

          v5 = v15;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  [*(a1 + 40) setHomeHashes:v5];
  v16 = *MEMORY[0x277D85DE8];
}

void __41__MGRemoteQueryClientManager__setupQuery__block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dispatchQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__MGRemoteQueryClientManager__setupQuery__block_invoke_2_17;
  v6[3] = &unk_27989EE80;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __41__MGRemoteQueryClientManager__setupQuery__block_invoke_2_17(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = MGLogForCategory(6);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) identifier];
    v7 = 134218242;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_25863A000, v2, OS_LOG_TYPE_DEFAULT, "%p client monitoring using query %@", &v7, 0x16u);
  }

  result = [*(a1 + 32) setQuery:*(a1 + 40)];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_browserUpdateState
{
  v3 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MGRemoteQueryClientManager *)self browser];

  v5 = [(MGRemoteQueryClientManager *)self queries];
  v6 = [v5 count];

  if (v4 || !v6)
  {
    if (v4 && !v6)
    {

      [(MGRemoteQueryClientManager *)self _browserStop];
    }
  }

  else
  {

    [(MGRemoteQueryClientManager *)self _browserStart];
  }
}

- (void)_browserStart
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MGRemoteQueryClientManager *)self browser];

  if (v4)
  {
    v5 = MGLogForCategory(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(MGRemoteQueryClientManager *)self browser];
      v11 = 134218240;
      v12 = self;
      v13 = 2048;
      v14 = v6;
      _os_log_error_impl(&dword_25863A000, v5, OS_LOG_TYPE_ERROR, "%p browser already started, running %p", &v11, 0x16u);
LABEL_6:
    }
  }

  else
  {
    v7 = [MGRemoteQueryClientBrowser alloc];
    v8 = [(MGRemoteQueryClientManager *)self dispatchQueue];
    v9 = [(MGRemoteQueryClientBrowser *)v7 initWithDelegate:self dispatchQueue:v8];
    [(MGRemoteQueryClientManager *)self setBrowser:v9];

    v5 = MGLogForCategory(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(MGRemoteQueryClientManager *)self browser];
      v11 = 134218240;
      v12 = self;
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&dword_25863A000, v5, OS_LOG_TYPE_DEFAULT, "%p started browser %p", &v11, 0x16u);
      goto LABEL_6;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_browserStop
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MGRemoteQueryClientManager *)self browser];
  v5 = MGLogForCategory(6);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218240;
      v9 = self;
      v10 = 2048;
      v11 = v4;
      _os_log_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEFAULT, "%p stopping browser %p", &v8, 0x16u);
    }

    [(MGRemoteQueryClientManager *)self setBrowser:0];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      v9 = self;
      _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p browser already stopped", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_targetAdd:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MGRemoteQueryClientManager *)self targets];
  if ([v6 containsObject:v4])
  {
    v7 = MGLogForCategory(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v26 = self;
      v27 = 2112;
      v28 = v4;
      v8 = "%p already tracking target %@";
LABEL_21:
      _os_log_error_impl(&dword_25863A000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0x16u);
    }
  }

  else if ([(MGRemoteQueryClientManager *)self _targetValidate:v4])
  {
    v9 = [v6 setByAddingObject:v4];

    [(MGRemoteQueryClientManager *)self setTargets:v9];
    v10 = MGLogForCategory(6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v26 = self;
      v27 = 2048;
      v28 = [v9 count];
      v29 = 2112;
      v30 = v4;
      _os_log_impl(&dword_25863A000, v10, OS_LOG_TYPE_DEFAULT, "%p now %lu targets after adding %@", buf, 0x20u);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = [(MGRemoteQueryClientManager *)self queries];
    v7 = [v11 allValues];

    v12 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v21;
      do
      {
        v16 = 0;
        v17 = v14;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v7);
          }

          v18 = *(*(&v20 + 1) + 8 * v16);
          v14 = [(MGRemoteQueryClientManager *)self _clientForTarget:v4 withQuery:v18];

          if (!v14)
          {
            [(MGRemoteQueryClientManager *)self _clientStartWithQuery:v18 target:v4];
          }

          ++v16;
          v17 = v14;
        }

        while (v13 != v16);
        v13 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    v6 = v9;
  }

  else
  {
    v7 = MGLogForCategory(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v26 = self;
      v27 = 2112;
      v28 = v4;
      v8 = "%p ignoring invalid target %@";
      goto LABEL_21;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_targetRemove:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MGRemoteQueryClientManager *)self targets];
  if ([v6 containsObject:v4])
  {
    v7 = [v6 mutableCopy];
    [v7 removeObject:v4];
    [(MGRemoteQueryClientManager *)self setTargets:v7];
    v8 = MGLogForCategory(6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218498;
      v11 = self;
      v12 = 2048;
      v13 = [v7 count];
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_25863A000, v8, OS_LOG_TYPE_DEFAULT, "%p now %lu targets after removing %@", &v10, 0x20u);
    }
  }

  else
  {
    v7 = MGLogForCategory(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134218242;
      v11 = self;
      v12 = 2112;
      v13 = v4;
      _os_log_debug_impl(&dword_25863A000, v7, OS_LOG_TYPE_DEBUG, "%p not tracking target %@", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_targetValidate:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 homeHash];
  if (v6)
  {
    v7 = [(MGRemoteQueryClientManager *)self homeHashes];
    v8 = [v7 containsObject:v6];

    if (v8)
    {
      v9 = MGLogForCategory(6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v26 = self;
        v27 = 2112;
        v28 = v4;
        _os_log_impl(&dword_25863A000, v9, OS_LOG_TYPE_DEFAULT, "%p same source target %@", buf, 0x16u);
      }

LABEL_18:
      v10 = 0;
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = [(MGRemoteQueryClientManager *)self targets];
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = [*(*(&v20 + 1) + 8 * i) homeHash];
            v16 = [v15 isEqual:v6];

            if (v16)
            {
              v17 = MGLogForCategory(6);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                v26 = self;
                v27 = 2112;
                v28 = v4;
                _os_log_impl(&dword_25863A000, v17, OS_LOG_TYPE_DEFAULT, "%p duplicate target %@", buf, 0x16u);
              }

              goto LABEL_18;
            }
          }

          v12 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
          v10 = 1;
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v10 = 1;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)browser:(id)a3 foundTarget:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MGRemoteQueryClientManager_browser_foundTarget___block_invoke;
  block[3] = &unk_27989F010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __50__MGRemoteQueryClientManager_browser_foundTarget___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) browser];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);

    [v4 _targetAdd:v5];
  }
}

- (void)browser:(id)a3 lostTarget:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MGRemoteQueryClientManager_browser_lostTarget___block_invoke;
  block[3] = &unk_27989F010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __49__MGRemoteQueryClientManager_browser_lostTarget___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) browser];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);

    [v4 _targetRemove:v5];
  }
}

- (void)browser:(id)a3 invalidatedWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MGRemoteQueryClientManager_browser_invalidatedWithError___block_invoke;
  block[3] = &unk_27989F010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __59__MGRemoteQueryClientManager_browser_invalidatedWithError___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) browser];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v4 = MGLogForCategory(6);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      *buf = 134218498;
      v22 = v5;
      v23 = 2048;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_25863A000, v4, OS_LOG_TYPE_DEFAULT, "%p browser %p stopped, error %@", buf, 0x20u);
    }

    [*(a1 + 32) setBrowser:0];
    v8 = [*(a1 + 32) targets];
    v9 = [v8 copy];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(a1 + 32) _targetRemove:{*(*(&v16 + 1) + 8 * v14++), v16}];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_queryAdd:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 identifier];
  v7 = [(MGRemoteQueryClientManager *)self queries];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    v9 = MGLogForCategory(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v33 = self;
      v34 = 2112;
      v35 = v6;
      _os_log_error_impl(&dword_25863A000, v9, OS_LOG_TYPE_ERROR, "%p already tracking query %@", buf, 0x16u);
    }

    goto LABEL_4;
  }

  v11 = [v4 predicate];
  v12 = [v11 rq_restrictedToLocal];

  if (v12)
  {
    v9 = MGLogForCategory(6);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_4;
    }

    *buf = 134218242;
    v33 = self;
    v34 = 2112;
    v35 = v6;
    v13 = "%p query %@ ineligible by locality";
LABEL_11:
    _os_log_impl(&dword_25863A000, v9, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
    goto LABEL_4;
  }

  v14 = [v4 predicate];
  v15 = [v14 mg_containsCurrentDevice];

  if (v15)
  {
    v9 = MGLogForCategory(6);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_4;
    }

    *buf = 134218242;
    v33 = self;
    v34 = 2112;
    v35 = v6;
    v13 = "%p query %@ ineligible by context";
    goto LABEL_11;
  }

  v9 = [v7 mutableCopy];
  [v9 setObject:v4 forKey:v6];
  [(MGRemoteQueryClientManager *)self setQueries:v9];
  v16 = MGLogForCategory(6);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v33 = self;
    v34 = 2048;
    v35 = [v9 count];
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&dword_25863A000, v16, OS_LOG_TYPE_DEFAULT, "%p now %lu queries after adding %@", buf, 0x20u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = [(MGRemoteQueryClientManager *)self targets];
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v25 = v7;
    v26 = v6;
    v20 = 0;
    v21 = *v28;
    do
    {
      v22 = 0;
      v23 = v20;
      do
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v24 = *(*(&v27 + 1) + 8 * v22);
        v20 = [(MGRemoteQueryClientManager *)self _clientForTarget:v24 withQuery:v4, v25, v26];

        if (!v20)
        {
          [(MGRemoteQueryClientManager *)self _clientStartWithQuery:v4 target:v24];
        }

        ++v22;
        v23 = v20;
      }

      while (v19 != v22);
      v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v19);

    v7 = v25;
    v6 = v26;
  }

  [(MGRemoteQueryClientManager *)self _browserUpdateState];
LABEL_4:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queryRemove:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 identifier];
  v7 = [(MGRemoteQueryClientManager *)self queries];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    v9 = [v7 mutableCopy];
    [v9 removeObjectForKey:v6];
    [(MGRemoteQueryClientManager *)self setQueries:v9];
    v10 = MGLogForCategory(6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v23 = self;
      v24 = 2048;
      v25 = [v9 count];
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_25863A000, v10, OS_LOG_TYPE_DEFAULT, "%p now %lu queries after removing %@", buf, 0x20u);
    }

    [(MGRemoteQueryClientManager *)self _browserUpdateState];
    v11 = [(MGRemoteQueryClientManager *)self _clientsWithQuery:v4];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(MGRemoteQueryClientManager *)self _clientStop:*(*(&v17 + 1) + 8 * v15++)];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v9 = MGLogForCategory(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      v23 = self;
      v24 = 2112;
      v25 = v6;
      _os_log_debug_impl(&dword_25863A000, v9, OS_LOG_TYPE_DEBUG, "%p not tracking query %@", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_clientStartWithQuery:(id)a3 target:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(MGRemoteQueryClientManager *)self queryAgent];
  v10 = [MGRemoteQueryClientHandlerQuery handlerWithQuery:v7 forGroupsQueryAgent:v9];

  v11 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  v12 = [(MGRemoteQueryClientManager *)self session];
  v13 = [MGRemoteQueryClient clientWithHandler:v10 target:v6 dispatchQueue:v11 delegate:self usingSession:v12];

  v14 = [(MGRemoteQueryClientManager *)self clients];
  v15 = [v14 arrayByAddingObject:v13];

  [(MGRemoteQueryClientManager *)self setClients:v15];
  v16 = MGLogForCategory(6);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134218498;
    v20 = self;
    v21 = 2048;
    v22 = [v15 count];
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_25863A000, v16, OS_LOG_TYPE_DEFAULT, "%p now %lu clients after starting %@", &v19, 0x20u);
  }

  v17 = [(MGRemoteQueryClientManager *)self _watchdogForTarget:v6];
  if (!v17)
  {
    [(MGRemoteQueryClientManager *)self _watchdogAdd:v6];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_clientStop:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  [(MGRemoteQueryClientManager *)self _clientRemove:v4];
  v6 = MGLogForCategory(6);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MGRemoteQueryClientManager *)self clients];
    v9 = 134218498;
    v10 = self;
    v11 = 2048;
    v12 = [v7 count];
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEFAULT, "%p now %lu clients after stopping %@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_clientRemove:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MGRemoteQueryClientManager *)self clients];
  v7 = [v6 mutableCopy];

  [v7 removeObject:v4];
  [(MGRemoteQueryClientManager *)self setClients:v7];
  v8 = [v4 target];
  v9 = [v8 homeHash];
  if (v9)
  {
    v23 = v8;
    v24 = v7;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [(MGRemoteQueryClientManager *)self targets];
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = [v15 homeHash];
          v17 = [v16 isEqual:v9];

          if (v17)
          {
            v18 = [v4 query];
            if (v18)
            {
              v21 = v18;
              [(MGRemoteQueryClientManager *)self _clientStartWithQuery:v18 target:v15];

              v8 = v23;
              v7 = v24;
              goto LABEL_15;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v8 = v23;
    v7 = v24;
  }

  v19 = [(MGRemoteQueryClientManager *)self _clientsForTarget:v8];
  v20 = [v19 count];

  if (!v20)
  {
    [(MGRemoteQueryClientManager *)self _watchdogRemove:v8];
  }

LABEL_15:

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_clientForTask:(id)a3 includeOthers:(BOOL)a4
{
  v4 = a4;
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v7);

  [(MGRemoteQueryClientManager *)self clients];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v35 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = *v33;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = [v12 task];
        v14 = [v6 isEqual:v13];

        if (v14)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (v4)
  {
    v15 = [(MGRemoteQueryClientManager *)self watchdogs];
    v16 = [v15 allValues];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v28 + 1) + 8 * j) pingClient];
          v23 = v22;
          if (v22)
          {
            v24 = [v22 task];
            v25 = [v6 isEqual:v24];

            if (v25)
            {

              goto LABEL_23;
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v23 = v9;
LABEL_23:

    v9 = v23;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_clientForTarget:(id)a3 withQuery:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  v21 = [v7 identifier];
  [(MGRemoteQueryClientManager *)self clients];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v25 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v20 = v7;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 target];
        if ([v6 isEqual:v14])
        {
          v15 = [v13 query];
          v16 = [v15 identifier];
          v17 = [v21 isEqual:v16];

          if (v17)
          {
            v10 = v13;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
LABEL_12:
    v7 = v20;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_clientsWithQuery:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277CBEB58] set];
  v22 = v4;
  v7 = [v4 identifier];
  v21 = self;
  v8 = [(MGRemoteQueryClientManager *)self clients];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v13 query];
        v15 = [v14 identifier];
        v16 = [v7 isEqual:v15];

        if (v16)
        {
          [v6 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v10);
  }

  v17 = MGLogForCategory(6);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v20 = [v6 count];
    *buf = 134218498;
    v28 = v21;
    v29 = 2048;
    v30 = v20;
    v31 = 2112;
    v32 = v7;
    _os_log_debug_impl(&dword_25863A000, v17, OS_LOG_TYPE_DEBUG, "%p have %lu clients for query %@", buf, 0x20u);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_clientsForTarget:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277CBEB58] set];
  v7 = [(MGRemoteQueryClientManager *)self clients];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 target];
        v14 = [v4 isEqual:v13];

        if (v14)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_watchdogForTarget:(id)a3
{
  v4 = a3;
  v5 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MGRemoteQueryClientManager *)self watchdogs];
  v7 = [v6 objectForKey:v4];

  return v7;
}

- (void)_watchdogAdd:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MGRemoteQueryClientManager *)self _watchdogForTarget:v4];
  if (v6)
  {
    v7 = v6;
    v8 = MGLogForCategory(6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 134218498;
      v15 = self;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v4;
      _os_log_error_impl(&dword_25863A000, v8, OS_LOG_TYPE_ERROR, "%p already tracking watchdog %@ for target %@", &v14, 0x20u);
    }
  }

  else
  {
    v9 = [(MGRemoteQueryClientManager *)self dispatchQueue];
    v10 = [(MGRemoteQueryClientManager *)self session];
    v7 = [MGRemoteQueryClientWatchdog watchdogForTarget:v4 dispatchQueue:v9 delegate:self usingSession:v10];

    v11 = [(MGRemoteQueryClientManager *)self watchdogs];
    v8 = [v11 mutableCopy];

    [v8 setObject:v7 forKey:v4];
    [(MGRemoteQueryClientManager *)self setWatchdogs:v8];
    v12 = MGLogForCategory(6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218498;
      v15 = self;
      v16 = 2048;
      v17 = [v8 count];
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_25863A000, v12, OS_LOG_TYPE_DEFAULT, "%p now %lu watchdogs after adding %@", &v14, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_watchdogReset:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MGRemoteQueryClientManager *)self _watchdogForTarget:v4];
  v7 = v6;
  if (v6)
  {
    [v6 reset];
  }

  else
  {
    v8 = MGLogForCategory(6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 134218242;
      v11 = self;
      v12 = 2112;
      v13 = v4;
      _os_log_error_impl(&dword_25863A000, v8, OS_LOG_TYPE_ERROR, "%p no watchdog to reset for %@", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_watchdogRemove:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MGRemoteQueryClientManager *)self _watchdogForTarget:v4];
  if (v6)
  {
    v7 = [(MGRemoteQueryClientManager *)self watchdogs];
    v8 = [v7 mutableCopy];

    [v8 removeObjectForKey:v4];
    [(MGRemoteQueryClientManager *)self setWatchdogs:v8];
    v9 = MGLogForCategory(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218498;
      v12 = self;
      v13 = 2048;
      v14 = [v8 count];
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_25863A000, v9, OS_LOG_TYPE_DEFAULT, "%p now %lu watchdogs after removing %@", &v11, 0x20u);
    }
  }

  else
  {
    v8 = MGLogForCategory(6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 134218242;
      v12 = self;
      v13 = 2112;
      v14 = v4;
      _os_log_error_impl(&dword_25863A000, v8, OS_LOG_TYPE_ERROR, "%p not tracking watchdog for target %@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_watchdogFired:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  [(MGRemoteQueryClientManager *)self _targetRemove:v4];
  v6 = [(MGRemoteQueryClientManager *)self _clientsForTarget:v4];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(MGRemoteQueryClientManager *)self _clientStop:*(*(&v15 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v8);
  }

  v11 = [(MGRemoteQueryClientManager *)self _clientsForTarget:v4];
  if ([v11 count])
  {
  }

  else
  {
    v12 = [(MGRemoteQueryClientManager *)self _watchdogForTarget:v4];

    if (v12)
    {
      v13 = MGLogForCategory(6);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v20 = self;
        v21 = 2112;
        v22 = v4;
        _os_log_error_impl(&dword_25863A000, v13, OS_LOG_TYPE_ERROR, "%p watchdog for target %@ lingered after firing", buf, 0x16u);
      }

      [(MGRemoteQueryClientManager *)self _watchdogRemove:v4];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)clientInvalidated:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MGRemoteQueryClientManager_clientInvalidated_withError___block_invoke;
  block[3] = &unk_27989F010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __58__MGRemoteQueryClientManager_clientInvalidated_withError___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) clients];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    [*(a1 + 32) _clientRemove:*(a1 + 40)];
    v4 = MGLogForCategory(6);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = [v5 clients];
      v7 = [v6 count];
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v11 = 134218754;
      v12 = v5;
      v13 = 2048;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_25863A000, v4, OS_LOG_TYPE_DEFAULT, "%p now %lu clients after invalidation of %@ with error %@", &v11, 0x2Au);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)watchdogFired:(id)a3
{
  v4 = a3;
  v5 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__MGRemoteQueryClientManager_watchdogFired___block_invoke;
  v7[3] = &unk_27989EE80;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __44__MGRemoteQueryClientManager_watchdogFired___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) target];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _watchdogForTarget:v2];
  LODWORD(v3) = [v3 isEqual:v4];

  if (v3)
  {
    v5 = MGLogForCategory(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = 134218498;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      v13 = 2112;
      v14 = v2;
      _os_log_error_impl(&dword_25863A000, v5, OS_LOG_TYPE_ERROR, "%p watchdog %p fired for %@", &v9, 0x20u);
    }

    [*(a1 + 40) _watchdogFired:v2];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [v7 protectionSpace];
  v11 = [v10 authenticationMethod];
  if ([*MEMORY[0x277CBAB00] isEqual:v11] && (v12 = objc_msgSend(v10, "serverTrust")) != 0)
  {
    v13 = v12;
    v14 = [MEMORY[0x277CBAB80] credentialForTrust:v12];
    v15 = MGLogForCategory(6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18 = 134218498;
      v19 = self;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v7;
      _os_log_debug_impl(&dword_25863A000, v15, OS_LOG_TYPE_DEBUG, "%p allowing trust %@ for challenge %@", &v18, 0x20u);
    }

    v16 = 0;
  }

  else
  {
    v14 = 0;
    v16 = 1;
  }

  v8[2](v8, v16, v14);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(MGRemoteQueryClientManager *)self _clientForTask:v9 includeOthers:1];
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = v10;
    v15 = [v13 target];
    [(MGRemoteQueryClientManager *)self _watchdogReset:v15];

    [v13 consumeResponse:v14];
    v16 = 1;
  }

  else
  {
    v17 = MGLogForCategory(6);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = 134218754;
      v20 = self;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v13;
      _os_log_error_impl(&dword_25863A000, v17, OS_LOG_TYPE_ERROR, "%p bad response %@ from task %@ for client %@", &v19, 0x2Au);
    }

    v16 = 0;
  }

  v11[2](v11, v16);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(MGRemoteQueryClientManager *)self _clientForTask:v7 includeOthers:1];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 target];
    [(MGRemoteQueryClientManager *)self _watchdogReset:v12];

    [v11 consumeData:v8];
  }

  else
  {
    v13 = MGLogForCategory(6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 134218242;
      v16 = self;
      v17 = 2112;
      v18 = v7;
      _os_log_error_impl(&dword_25863A000, v13, OS_LOG_TYPE_ERROR, "%p no data consumer for task %@", &v15, 0x16u);
    }

    [v7 cancel];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v11 = a5;
  v7 = a4;
  v8 = [(MGRemoteQueryClientManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(MGRemoteQueryClientManager *)self _clientForTask:v7 includeOthers:1];

  if (v9)
  {
    v10 = [v9 target];
    [(MGRemoteQueryClientManager *)self _watchdogReset:v10];

    [v9 completeWithError:v11];
  }
}

- (MGInternalQueryRunner)queryRunner
{
  WeakRetained = objc_loadWeakRetained(&self->_queryRunner);

  return WeakRetained;
}

- (MGGroupsQueryAgent)queryAgent
{
  WeakRetained = objc_loadWeakRetained(&self->_queryAgent);

  return WeakRetained;
}

@end