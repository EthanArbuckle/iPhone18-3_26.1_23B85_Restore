@interface CLSQueryHandler
- (CLSQueryHandler)initWithQueryPerformer:(id)a3 geoServiceThread:(id)a4 loggingConnection:(id)a5;
- (void)_cancel;
- (void)_forwardToGeoThread;
- (void)_handleError:(id)a3 numberOfItems:(unint64_t)a4;
- (void)_handleQueryResultsForQuery:(id)a3 items:(id)a4 error:(id)a5;
- (void)_heartBeat;
- (void)_startQuery;
- (void)cacheItems;
- (void)cancel;
@end

@implementation CLSQueryHandler

- (void)cancel
{
  timerQueue = self->_timerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__CLSQueryHandler_cancel__block_invoke;
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

- (void)_handleError:(id)a3 numberOfItems:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  retryLevel = self->_retryLevel;
  self->_nextRetryTime = Current + (1 << retryLevel++) * 15.0;
  self->_retryLevel = retryLevel;
  if (retryLevel < self->_numberOfRetries && ([v6 code] == -3 || objc_msgSend(v6, "code") == -9))
  {
    *&self->_alreadyLaunched = 0;
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      nextRetryTime = self->_nextRetryTime;
      v11 = loggingConnection;
      v17 = 134217984;
      v18 = nextRetryTime - CFAbsoluteTimeGetCurrent();
      _os_log_impl(&dword_22F907000, v11, OS_LOG_TYPE_INFO, "Re-Trying in %0.2fs", &v17, 0xCu);
    }
  }

  else
  {
    v12 = [v6 code];
    completionBlock = self->_completionBlock;
    if (completionBlock)
    {
      if (v12 == -8)
      {
        v14 = 0;
      }

      else
      {
        v14 = v6;
      }

      (completionBlock)[2](completionBlock, v12 == -8, a4, v14);
      v15 = self->_completionBlock;
      self->_completionBlock = 0;
    }

    timer = self->_timer;
    self->_timer = 0;
  }
}

- (void)_heartBeat
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v21 = 0;
  progressBlock = self->_progressBlock;
  if (progressBlock)
  {
    progressBlock[2](progressBlock, &v21);
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
    {
      internalProgressTimeInterval = self->_internalProgressTimeInterval;
      if (v21)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      *buf = 134218498;
      v23 = *&self;
      v24 = 2048;
      v25 = internalProgressTimeInterval;
      v26 = 2112;
      v27 = v20;
      _os_log_debug_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_DEBUG, "%p - Progress tick %f seconds, shouldStop %@", buf, 0x20u);
    }

    if (v21)
    {
      [(CLSQueryHandler *)self _cancel];
    }
  }

  if (self->_alreadyLaunched)
  {
    v6 = self->_internalProgressTimeInterval;
    timeoutInterval = self->_timeoutInterval;
    if (v6 < timeoutInterval)
    {
      self->_internalProgressTimeInterval = v6 + 1.0;
      goto LABEL_16;
    }

    self->_internalProgressTimeInterval = 0.0;
    if (self->_didQueryFinish)
    {
      goto LABEL_12;
    }

    retryLevel = self->_retryLevel;
    numberOfRetries = self->_numberOfRetries;
    if (retryLevel >= numberOfRetries)
    {
      v18 = self->_loggingConnection;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v23 = timeoutInterval * numberOfRetries;
        _os_log_impl(&dword_22F907000, v18, OS_LOG_TYPE_INFO, "Cancelled request because it took more than %f seconds", buf, 0xCu);
      }

      v21 = 1;
    }

    else
    {
      self->_retryLevel = retryLevel + 1;
      [(CLSQueryPerformerProtocol *)self->_query cancel];
      v11 = objc_opt_class();
      query = self->_query;
      v13 = [(CLSQueryPerformerProtocol *)query regions];
      v14 = [v11 queryWithTemplate:query forRegions:v13];
      v15 = self->_query;
      self->_query = v14;

      v16 = self->_loggingConnection;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = self->_retryLevel;
        *buf = 134217984;
        v23 = *&v17;
        _os_log_impl(&dword_22F907000, v16, OS_LOG_TYPE_INFO, "Did hit %lu timeouts, try again", buf, 0xCu);
      }
    }
  }

  else
  {
    self->_internalProgressTimeInterval = 0.0;
    if (self->_didQueryFinish)
    {
LABEL_12:
      v8 = self->_loggingConnection;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v23 = *&self;
        _os_log_debug_impl(&dword_22F907000, v8, OS_LOG_TYPE_DEBUG, "%p - Query Already finished", buf, 0xCu);
      }

      goto LABEL_16;
    }
  }

  if (v21 == 1)
  {
    [(CLSQueryHandler *)self _cancel];
  }

  else if (CFAbsoluteTimeGetCurrent() >= self->_nextRetryTime)
  {
    self->_alreadyLaunched = 1;
    [(CLSQueryHandler *)self _forwardToGeoThread];
  }

LABEL_16:
  objc_autoreleasePoolPop(v3);
}

- (void)_startQuery
{
  v16 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = self->_query;
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
  {
    query = self->_query;
    *buf = 134218242;
    v13 = self;
    v14 = 2112;
    v15 = query;
    _os_log_debug_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_DEBUG, "%p - Start query for %@", buf, 0x16u);
  }

  v5 = self->_query;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __30__CLSQueryHandler__startQuery__block_invoke;
  v8[3] = &unk_2788A71D0;
  objc_copyWeak(&v10, &location);
  v6 = v3;
  v9 = v6;
  [(CLSQueryPerformerProtocol *)v5 submitWithHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __30__CLSQueryHandler__startQuery__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[8];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      *buf = 134218242;
      v17 = v8;
      v18 = 2112;
      v19 = v11;
      _os_log_debug_impl(&dword_22F907000, v9, OS_LOG_TYPE_DEBUG, "%p - Query Handler for %@ ", buf, 0x16u);
    }

    if ([v8 isSimulatingTimeout])
    {
      sleep((*(v8 + 13) + *(v8 + 13)));
    }

    v10 = v8[7];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __30__CLSQueryHandler__startQuery__block_invoke_63;
    v12[3] = &unk_2788A7350;
    v12[4] = v8;
    v13 = *(a1 + 32);
    v14 = v5;
    v15 = v6;
    dispatch_async(v10, v12);
  }
}

- (void)_handleQueryResultsForQuery:(id)a3 items:(id)a4 error:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_timerQueue);
  if ([v8 isCancelled])
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
    {
      v20 = 134218242;
      v21 = self;
      v22 = 2112;
      v23 = v8;
      _os_log_debug_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_DEBUG, "%p - Query cancelled: %@", &v20, 0x16u);
    }
  }

  else
  {
    self->_didQueryFinish = 1;
    if (v10)
    {
      v12 = self->_loggingConnection;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v20 = 138412290;
        v21 = v10;
        _os_log_error_impl(&dword_22F907000, v12, OS_LOG_TYPE_ERROR, "GeoService returned error %@", &v20, 0xCu);
      }

      -[CLSQueryHandler _handleError:numberOfItems:](self, "_handleError:numberOfItems:", v10, [v9 count]);
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [(CLSQueryHandler *)self _cacheMapItems:v9];
      objc_autoreleasePoolPop(v13);
      v15 = self->_loggingConnection;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v20 = 134218242;
        v21 = self;
        v22 = 2112;
        v23 = v8;
        _os_log_debug_impl(&dword_22F907000, v15, OS_LOG_TYPE_DEBUG, "%p - Caching result from %@", &v20, 0x16u);
      }

      completionBlock = self->_completionBlock;
      if (completionBlock)
      {
        v17 = self->_loggingConnection;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v20 = 134218240;
          v21 = self;
          v22 = 2048;
          v23 = v14;
          _os_log_debug_impl(&dword_22F907000, v17, OS_LOG_TYPE_DEBUG, "%p - Completion Block: %ld items cached", &v20, 0x16u);
          completionBlock = self->_completionBlock;
        }

        completionBlock[2](completionBlock, 1, v14, 0);
        v18 = self->_completionBlock;
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
  v4 = [(CLSQueryHandler *)self methodSignatureForSelector:sel__startQuery];
  v5 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v4];
  [v5 setTarget:self];
  [v5 setSelector:sel__startQuery];
  [v5 retainArguments];
  [v5 performSelector:sel_invoke onThread:self->_geoServiceThread withObject:0 waitUntilDone:0];

  objc_autoreleasePoolPop(v3);
}

- (void)cacheItems
{
  timerQueue = self->_timerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__CLSQueryHandler_cacheItems__block_invoke;
  block[3] = &unk_2788A8260;
  block[4] = self;
  dispatch_async(timerQueue, block);
}

void __29__CLSQueryHandler_cacheItems__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    dispatch_source_set_timer(v2, 0, 0x3B9ACA00uLL, 0xEE6B280uLL);
    v3 = *(*(a1 + 32) + 24);

    dispatch_resume(v3);
  }
}

- (CLSQueryHandler)initWithQueryPerformer:(id)a3 geoServiceThread:(id)a4 loggingConnection:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v29.receiver = self;
  v29.super_class = CLSQueryHandler;
  v12 = [(CLSQueryHandler *)&v29 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_UTILITY, 0);

    v15 = dispatch_queue_create("Cacher Handler Queue", v14);
    v16 = *(v12 + 7);
    *(v12 + 7) = v15;

    objc_storeStrong(v12 + 8, a5);
    objc_storeStrong(v12 + 12, a4);
    objc_storeStrong(v12 + 1, a3);
    *(v12 + 24) = 0;
    *(v12 + 2) = 0;
    v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v12 + 7));
    v18 = *(v12 + 3);
    *(v12 + 3) = v17;

    objc_initWeak(&location, v12);
    v19 = *(v12 + 3);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __77__CLSQueryHandler_initWithQueryPerformer_geoServiceThread_loggingConnection___block_invoke;
    handler[3] = &unk_2788A8170;
    objc_copyWeak(&v27, &location);
    dispatch_source_set_event_handler(v19, handler);
    v20 = *(v12 + 3);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __77__CLSQueryHandler_initWithQueryPerformer_geoServiceThread_loggingConnection___block_invoke_2;
    v23[3] = &unk_2788A8198;
    objc_copyWeak(&v25, &location);
    v24 = v9;
    dispatch_source_set_cancel_handler(v20, v23);
    v21 = *(v12 + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v31 = v12;
      _os_log_debug_impl(&dword_22F907000, v21, OS_LOG_TYPE_DEBUG, "----- New Query Performer <%p> ----", buf, 0xCu);
    }

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __77__CLSQueryHandler_initWithQueryPerformer_geoServiceThread_loggingConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _heartBeat];
}

uint64_t __77__CLSQueryHandler_initWithQueryPerformer_geoServiceThread_loggingConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    v10 = v2;
    if (v3)
    {
      [v3 cancel];
      v2 = v10;
    }

    if (v2[11])
    {
      v4 = MEMORY[0x277CCA9B8];
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ did %ld retries of %fs", objc_opt_class(), v10[14], v10[13]];
      v6 = [v4 errorWithDomain:@"CLSErrorDomain" code:-4 localizedDescription:v5];

      (*(v10[11] + 16))();
      v7 = v10[11];
      v10[11] = 0;

      v2 = v10;
    }

    v8 = v2[3];
    v2[3] = 0;
  }

  return MEMORY[0x2821F96F8]();
}

@end