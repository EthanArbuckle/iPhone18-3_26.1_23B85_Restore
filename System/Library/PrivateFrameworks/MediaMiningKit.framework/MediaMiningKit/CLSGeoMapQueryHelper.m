@interface CLSGeoMapQueryHelper
+ (id)auditToken;
- (CLSGeoMapQueryHelper)initWithQueryObject:(id)a3;
- (void)_cancel;
- (void)_forwardToGeoThread;
- (void)_handleError:(id)a3;
- (void)_handleQueryResultsForQuery:(id)a3 error:(id)a4;
- (void)_heartBeat;
- (void)_startQuery;
- (void)cancel;
- (void)dealloc;
- (void)launchQueryWithCancellerBlock:(id)a3 completionBlock:(id)a4;
@end

@implementation CLSGeoMapQueryHelper

- (void)dealloc
{
  [(CLSGeoServiceThread *)self->_geoServiceThread cancel];
  v3.receiver = self;
  v3.super_class = CLSGeoMapQueryHelper;
  [(CLSGeoMapQueryHelper *)&v3 dealloc];
}

- (void)cancel
{
  timerQueue = self->_timerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__CLSGeoMapQueryHelper_cancel__block_invoke;
  block[3] = &unk_2788A8260;
  block[4] = self;
  dispatch_sync(timerQueue, block);
}

- (void)_cancel
{
  timer = self->_timer;
  if (timer && !dispatch_source_testcancel(self->_timer))
  {

    dispatch_source_cancel(timer);
  }
}

- (void)_handleError:(id)a3
{
  v11 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  retryLevel = self->_retryLevel;
  self->_nextRetryTime = Current + (1 << retryLevel++) * 15.0;
  self->_retryLevel = retryLevel;
  if (retryLevel < self->_numberOfRetries && ([v11 code] == -3 || objc_msgSend(v11, "code") == -9))
  {
    *&self->_alreadyLaunched = 0;
  }

  else
  {
    v6 = [v11 code];
    completionBlock = self->_completionBlock;
    if (completionBlock)
    {
      v8 = v11;
      if (v6 == -8)
      {
        v8 = 0;
      }

      (completionBlock)[2](completionBlock, v6 == -8, v8, self->_query);
      v9 = self->_completionBlock;
      self->_completionBlock = 0;
    }

    timer = self->_timer;
    self->_timer = 0;
  }
}

- (void)_heartBeat
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v12 = 0;
  cancellerBlock = self->_cancellerBlock;
  if (cancellerBlock)
  {
    cancellerBlock[2](cancellerBlock, &v12);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      internalProgressTimeInterval = self->_internalProgressTimeInterval;
      if (v12)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      *buf = 134218498;
      v14 = *&self;
      v15 = 2048;
      v16 = internalProgressTimeInterval;
      v17 = 2112;
      v18 = v11;
      _os_log_debug_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%p - Progress tick %f seconds, shouldStop %@", buf, 0x20u);
    }

    if (v12)
    {
      goto LABEL_4;
    }
  }

  if (self->_alreadyLaunched)
  {
    v5 = self->_internalProgressTimeInterval;
    timeoutInterval = self->_timeoutInterval;
    if (v5 < timeoutInterval)
    {
      self->_internalProgressTimeInterval = v5 + 1.0;
      goto LABEL_14;
    }

    self->_internalProgressTimeInterval = 0.0;
    if (self->_didFinishQuery)
    {
      goto LABEL_12;
    }

    retryLevel = self->_retryLevel;
    numberOfRetries = self->_numberOfRetries;
    if (retryLevel >= numberOfRetries)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v14 = timeoutInterval * numberOfRetries;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled request because it took more than %f seconds", buf, 0xCu);
      }

      v12 = 1;
    }

    else
    {
      self->_retryLevel = retryLevel + 1;
      [(CLSQueryProtocol *)self->_query cancel];
      [(CLSQueryProtocol *)self->_query prepareForRetry];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = self->_retryLevel;
        *buf = 134217984;
        v14 = *&v9;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Did hit %lu timeouts, try again", buf, 0xCu);
      }

      if ((v12 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_4:
    [(CLSGeoMapQueryHelper *)self _cancel];
    goto LABEL_14;
  }

  self->_internalProgressTimeInterval = 0.0;
  if (self->_didFinishQuery)
  {
LABEL_12:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v14 = *&self;
      _os_log_debug_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%p - Query Already finished", buf, 0xCu);
    }

    goto LABEL_14;
  }

LABEL_9:
  if (CFAbsoluteTimeGetCurrent() >= self->_nextRetryTime)
  {
    self->_alreadyLaunched = 1;
    [(CLSGeoMapQueryHelper *)self _forwardToGeoThread];
  }

LABEL_14:
  objc_autoreleasePoolPop(v3);
}

- (void)_startQuery
{
  v14 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = self->_query;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    query = self->_query;
    *buf = 134218242;
    v11 = self;
    v12 = 2112;
    v13 = query;
    _os_log_debug_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%p - Start query for %@", buf, 0x16u);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__CLSGeoMapQueryHelper__startQuery__block_invoke;
  v6[3] = &unk_2788A8238;
  objc_copyWeak(&v8, &location);
  v4 = v3;
  v7 = v4;
  [(CLSQueryProtocol *)v4 submitWithHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __35__CLSGeoMapQueryHelper__startQuery__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      *buf = 134218242;
      v12 = WeakRetained;
      v13 = 2112;
      v14 = v7;
      _os_log_debug_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%p - Query Handler for %@ ", buf, 0x16u);
    }

    if ([WeakRetained isSimulatingTimeout])
    {
      sleep((*(WeakRetained + 6) + *(WeakRetained + 6)));
    }

    v6 = WeakRetained[10];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__CLSGeoMapQueryHelper__startQuery__block_invoke_70;
    block[3] = &unk_2788A8900;
    block[4] = WeakRetained;
    v9 = *(a1 + 32);
    v10 = v4;
    dispatch_async(v6, block);
  }
}

- (void)_handleQueryResultsForQuery:(id)a3 error:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_timerQueue);
  if ([v6 isCancelled])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v11 = 134218242;
      v12 = self;
      v13 = 2112;
      v14 = v6;
      _os_log_debug_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%p - Query cancelled: %@", &v11, 0x16u);
    }
  }

  else
  {
    self->_didFinishQuery = 1;
    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = v7;
        _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "GeoService returned error %@", &v11, 0xCu);
      }

      [(CLSGeoMapQueryHelper *)self _handleError:v7];
    }

    else
    {
      completionBlock = self->_completionBlock;
      if (completionBlock)
      {
        completionBlock[2](completionBlock, 1, 0, v6);
        v9 = self->_completionBlock;
        self->_completionBlock = 0;
      }

      timer = self->_timer;
      self->_timer = 0;
    }
  }
}

- (void)_forwardToGeoThread
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(CLSGeoMapQueryHelper *)self methodSignatureForSelector:sel__startQuery];
  v5 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v4];
  [v5 setTarget:self];
  [v5 setSelector:sel__startQuery];
  [v5 retainArguments];
  [v5 performSelector:sel_invoke onThread:self->_geoServiceThread withObject:0 waitUntilDone:0];

  objc_autoreleasePoolPop(v3);
}

- (void)launchQueryWithCancellerBlock:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  timerQueue = self->_timerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__CLSGeoMapQueryHelper_launchQueryWithCancellerBlock_completionBlock___block_invoke;
  block[3] = &unk_2788A8210;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(timerQueue, block);
}

void __70__CLSGeoMapQueryHelper_launchQueryWithCancellerBlock_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = [*(a1 + 48) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  v8 = *(a1 + 32);
  if (!*(v8 + 40))
  {
    v9 = objc_alloc_init(CLSGeoServiceThread);
    [(CLSGeoServiceThread *)v9 setName:@"GeoService thread Run Loop"];
    [(CLSGeoServiceThread *)v9 start];
    v10 = *(a1 + 32);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v8 = *(a1 + 32);
  }

  v12 = *(v8 + 72);
  if (v12)
  {
    object = v12;
    dispatch_source_set_timer(object, 0, 0x3B9ACA00uLL, 0xEE6B280uLL);
    dispatch_resume(object);
  }
}

- (CLSGeoMapQueryHelper)initWithQueryObject:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = CLSGeoMapQueryHelper;
  v6 = [(CLSGeoMapQueryHelper *)&v22 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);

    v9 = dispatch_queue_create("Cache Handler Queue", v8);
    v10 = *(v6 + 10);
    *(v6 + 10) = v9;

    *(v6 + 6) = 0x4034000000000000;
    *(v6 + 7) = 3;
    objc_storeStrong(v6 + 2, a3);
    *(v6 + 9) = 0;
    *(v6 + 8) = 0;
    v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v6 + 10));
    v12 = *(v6 + 9);
    *(v6 + 9) = v11;

    objc_initWeak(&location, v6);
    v13 = *(v6 + 9);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __44__CLSGeoMapQueryHelper_initWithQueryObject___block_invoke;
    handler[3] = &unk_2788A8170;
    objc_copyWeak(&v20, &location);
    dispatch_source_set_event_handler(v13, handler);
    v14 = *(v6 + 9);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __44__CLSGeoMapQueryHelper_initWithQueryObject___block_invoke_2;
    v16[3] = &unk_2788A8198;
    objc_copyWeak(&v18, &location);
    v17 = v5;
    dispatch_source_set_cancel_handler(v14, v16);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __44__CLSGeoMapQueryHelper_initWithQueryObject___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _heartBeat];
}

uint64_t __44__CLSGeoMapQueryHelper_initWithQueryObject___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    v10 = v2;
    if (v3)
    {
      [v3 cancel];
      v2 = v10;
    }

    if (v2[4])
    {
      v4 = MEMORY[0x277CCA9B8];
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ did %ld retries of %fs", objc_opt_class(), v10[7], v10[6]];
      v6 = [v4 errorWithDomain:@"CLSErrorDomain" code:-4 localizedDescription:v5];

      (*(v10[4] + 16))();
      v7 = v10[4];
      v10[4] = 0;

      v2 = v10;
    }

    v8 = v2[9];
    v2[9] = 0;
  }

  return MEMORY[0x2821F96F8]();
}

+ (id)auditToken
{
  v2 = [objc_alloc(MEMORY[0x277D0EAC0]) initWithProxiedApplicationBundleId:@"com.apple.mobileslideshow"];

  return v2;
}

@end