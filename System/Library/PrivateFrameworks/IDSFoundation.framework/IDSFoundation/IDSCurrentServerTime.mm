@interface IDSCurrentServerTime
+ (id)sharedInstance;
- (IDSCurrentServerTime)initWithServerTimeProvider:(id)provider;
- (double)_refreshTimeInterval;
- (double)currentServerTimeInterval;
- (id)currentServerTimeDate;
- (void)_refreshServerTime;
- (void)_storeCurrentTime;
- (void)_storeInitialServerTimeIfNeeded;
@end

@implementation IDSCurrentServerTime

+ (id)sharedInstance
{
  v3 = qword_1ED5DF748;
  if (!qword_1ED5DF748)
  {
    v4 = objc_alloc_init(_IDSCurrentServerTimeProvider);
    v5 = [[self alloc] initWithServerTimeProvider:v4];
    v6 = qword_1ED5DF748;
    qword_1ED5DF748 = v5;

    v3 = qword_1ED5DF748;
  }

  return v3;
}

- (double)currentServerTimeInterval
{
  info = 0xAAAAAAAAAAAAAAAALL;
  if (mach_timebase_info(&info))
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    v5 = v4;
  }

  else
  {
    [(IDSCurrentServerTime *)self _storeInitialServerTimeIfNeeded];
    date = [(IDSCurrentServerTime *)self timePair];
    v6 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    v7 = v6 - [date initialProcessMonotonicTimeInNanoSeconds];
    v5 = (v7 + [date initialServerTimeInNanoSeconds]) / 1000000000.0;
  }

  return v5;
}

- (void)_storeInitialServerTimeIfNeeded
{
  v25 = *MEMORY[0x1E69E9840];
  timePair = [(IDSCurrentServerTime *)self timePair];
  if (!timePair || (v4 = timePair, -[IDSCurrentServerTime timePair](self, "timePair"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isAccurate], v5, v4, (v6 & 1) == 0))
  {
    [(IDSCurrentServerTime *)self _storeCurrentTime];
    v7 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x1E696AD98];
      timePair2 = [(IDSCurrentServerTime *)self timePair];
      v10 = [v8 numberWithUnsignedLongLong:{objc_msgSend(timePair2, "initialServerTimeInNanoSeconds")}];
      v11 = MEMORY[0x1E696AD98];
      timePair3 = [(IDSCurrentServerTime *)self timePair];
      v13 = [v11 numberWithUnsignedLongLong:{objc_msgSend(timePair3, "initialProcessMonotonicTimeInNanoSeconds")}];
      timePair4 = [(IDSCurrentServerTime *)self timePair];
      isAccurate = [timePair4 isAccurate];
      v16 = @"NO";
      v19 = 138412802;
      v20 = v10;
      v21 = 2112;
      if (isAccurate)
      {
        v16 = @"YES";
      }

      v22 = v13;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "Setting up timePair {initialServerTimeInNanoSeconds: %@, initialProcessMachTime: %@, isAccurate: %@}", &v19, 0x20u);
    }

    [(IDSCurrentServerTime *)self _refreshTimeInterval];
    v18 = v17;
    [(CUTDeferredTaskQueue *)self->_refreshServerTimeTask cancelPendingExecutions];
    [(CUTDeferredTaskQueue *)self->_refreshServerTimeTask enqueueExecutionWithTarget:self afterDelay:v18];
  }
}

- (IDSCurrentServerTime)initWithServerTimeProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = IDSCurrentServerTime;
  v6 = [(IDSCurrentServerTime *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverTimeProvider, provider);
    v8 = objc_alloc(MEMORY[0x1E69956C8]);
    v9 = im_primary_queue();
    v10 = [v8 initWithCapacity:1 queue:v9 block:&unk_1F1AABB00];
    refreshServerTimeTask = v7->_refreshServerTimeTask;
    v7->_refreshServerTimeTask = v10;
  }

  return v7;
}

- (id)currentServerTimeDate
{
  [(IDSCurrentServerTime *)self currentServerTimeInterval];
  v2 = MEMORY[0x1E695DF00];

  return [v2 dateWithTimeIntervalSince1970:?];
}

- (double)_refreshTimeInterval
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"server-time-refreshInterval"];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5;
    v7 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "Server refresh interval to use {refreshInterval: %@}", &v10, 0xCu);
    }
  }

  else
  {
    v6 = 3600.0;
  }

  return v6;
}

- (void)_refreshServerTime
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = im_primary_queue();
  dispatch_assert_queue_V2(v3);

  [(CUTDeferredTaskQueue *)self->_refreshServerTimeTask cancelPendingExecutions];
  [(IDSCurrentServerTime *)self _storeCurrentTime];
  v4 = +[IDSFoundationLog utilities];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x1E696AD98];
    timePair = [(IDSCurrentServerTime *)self timePair];
    v7 = [v5 numberWithUnsignedLongLong:{objc_msgSend(timePair, "initialServerTimeInNanoSeconds")}];
    v8 = MEMORY[0x1E696AD98];
    timePair2 = [(IDSCurrentServerTime *)self timePair];
    v10 = [v8 numberWithUnsignedLongLong:{objc_msgSend(timePair2, "initialProcessMonotonicTimeInNanoSeconds")}];
    timePair3 = [(IDSCurrentServerTime *)self timePair];
    isAccurate = [timePair3 isAccurate];
    v13 = @"NO";
    v14 = 138412802;
    v15 = v7;
    v16 = 2112;
    if (isAccurate)
    {
      v13 = @"YES";
    }

    v17 = v10;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "Refreshed timePair {initialServerTimeInNanoSeconds: %@, initialProcessMachTime: %@, isAccurate: %@}", &v14, 0x20u);
  }

  [(IDSCurrentServerTime *)self _refreshTimeInterval];
  [(CUTDeferredTaskQueue *)self->_refreshServerTimeTask enqueueExecutionWithTarget:self afterDelay:?];
}

- (void)_storeCurrentTime
{
  serverTimeProvider = [(IDSCurrentServerTime *)self serverTimeProvider];
  serverTimeInNanoSeconds = [serverTimeProvider serverTimeInNanoSeconds];

  v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v6 = [IDSCurrentServerTimePair alloc];
  serverTimeProvider2 = [(IDSCurrentServerTime *)self serverTimeProvider];
  v7 = -[IDSCurrentServerTimePair initWithInitialProcessMonotonicTimeInNanoSeconds:initialServerTimeInNanoSeconds:isAccurate:](v6, "initWithInitialProcessMonotonicTimeInNanoSeconds:initialServerTimeInNanoSeconds:isAccurate:", v5, serverTimeInNanoSeconds, [serverTimeProvider2 isAccurate]);
  [(IDSCurrentServerTime *)self setTimePair:v7];
}

@end