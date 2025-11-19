@interface DSMotionStateListenerProxy
+ (id)sharedInstance;
- (DSListenerClientProtocol)lastobserver;
- (DSMotionStateListenerProxy)init;
- (void)_addObserver:(id)a3;
- (void)_clearCache;
- (void)_removeObserver:(id)a3;
- (void)_replyWithCachedDataToObserver:(id)a3;
- (void)failedToStartListenerWithError:(id)a3;
- (void)receivedData:(id)a3 fromProvider:(id)a4;
- (void)requestMotionState;
- (void)startMotionStateListenerWithObserver:(id)a3;
- (void)startedListener;
- (void)stopMotionStateListenerWithObserver:(id)a3;
- (void)stoppedListener;
- (void)updateProviders:(id)a3;
@end

@implementation DSMotionStateListenerProxy

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[DSMotionStateListenerProxy sharedInstance];
  }

  v3 = sharedInstance_proxy;

  return v3;
}

uint64_t __44__DSMotionStateListenerProxy_sharedInstance__block_invoke()
{
  sharedInstance_proxy = objc_alloc_init(DSMotionStateListenerProxy);

  return MEMORY[0x2821F96F8]();
}

- (DSMotionStateListenerProxy)init
{
  v14.receiver = self;
  v14.super_class = DSMotionStateListenerProxy;
  v2 = [(DSListener *)&v14 initWithDispatchQueue:0];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    pendingObservers = v2->_pendingObservers;
    v2->_pendingObservers = v5;

    v2->_listenerState = 255;
    v7 = objc_alloc_init(DSClientMotionDataOptions);
    options = v2->_options;
    v2->_options = v7;

    [(DSClientMotionDataOptions *)v2->_options setDataSubType:1];
    [(DSClientMotionDataOptions *)v2->_options setDeviceType:1];
    error = v2->_error;
    v2->_error = 0;

    cachedData = v2->_cachedData;
    v2->_cachedData = 0;

    cachedProvider = v2->_cachedProvider;
    v2->_cachedProvider = 0;

    v2->_listenerCount = 0;
    previousIntervalStartTime = v2->_previousIntervalStartTime;
    v2->_previousIntervalStartTime = 0;
  }

  return v2;
}

- (void)startMotionStateListenerWithObserver:(id)a3
{
  *&v20[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(DSMotionStateListenerProxy *)v5 listenerState];
  if (v6 > 3)
  {
    if (v6 != 4)
    {
      if (v6 == 5)
      {
        if (objc_opt_respondsToSelector())
        {
          v16 = [(DSMotionStateListenerProxy *)v5 error];
          [v4 failedToStartListenerWithError:v16];
        }

        goto LABEL_23;
      }

      if (v6 != 255)
      {
        goto LABEL_15;
      }
    }

    [(DSMotionStateListenerProxy *)v5 setListenerState:1];
    v11 = +[DSLogging sharedInstance];
    v12 = [v11 dsLogger];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v20[0] = 255;
      LOWORD(v20[1]) = 1024;
      *(&v20[1] + 2) = [(DSMotionStateListenerProxy *)v5 listenerState];
      _os_log_impl(&dword_249027000, v12, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] State updated from %d to %d\n", buf, 0xEu);
    }

    [(DSMotionStateListenerProxy *)v5 _addObserver:v4];
    v13 = [(DSMotionStateListenerProxy *)v5 options];
    v18.receiver = v5;
    v18.super_class = DSMotionStateListenerProxy;
    [(DSListener *)&v18 startMotionDataListenerWithOptions:v13];

    goto LABEL_23;
  }

  if (v6 == 1)
  {
    [(DSMotionStateListenerProxy *)v5 _addObserver:v4];
    goto LABEL_23;
  }

  if (v6 != 2)
  {
    if (v6 == 3)
    {
      v7 = [(DSMotionStateListenerProxy *)v5 pendingObservers];
      [v7 addObject:v4];

      v8 = +[DSLogging sharedInstance];
      v9 = [v8 dsLogger];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(DSMotionStateListenerProxy *)v5 pendingObservers];
        *buf = 134217984;
        *v20 = [v10 count];
        _os_log_impl(&dword_249027000, v9, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] adding observer to pending list. Current pending count %lu\n", buf, 0xCu);
      }

LABEL_7:

      goto LABEL_23;
    }

LABEL_15:
    v14 = +[DSLogging sharedInstance];
    v9 = [v14 dsLogger];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      listenerState = v5->_listenerState;
      *buf = 67109120;
      v20[0] = listenerState;
      _os_log_impl(&dword_249027000, v9, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] Invalid listener state %d\n", buf, 8u);
    }

    goto LABEL_7;
  }

  [(DSMotionStateListenerProxy *)v5 _addObserver:v4];
  if (objc_opt_respondsToSelector())
  {
    [v4 startedListener];
  }

  [(DSMotionStateListenerProxy *)v5 _replyWithCachedDataToObserver:v4];
LABEL_23:
  objc_sync_exit(v5);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)stopMotionStateListenerWithObserver:(id)a3
{
  *&v25[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(DSMotionStateListenerProxy *)v5 observers];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    [(DSMotionStateListenerProxy *)v5 _removeObserver:v4];
    v8 = [(DSMotionStateListenerProxy *)v5 observers];
    v9 = [v8 count];

    if (v9)
    {
      if (objc_opt_respondsToSelector())
      {
        [v4 stoppedListener];
      }
    }

    else
    {
      v19 = [(DSMotionStateListenerProxy *)v5 listenerState];
      [(DSMotionStateListenerProxy *)v5 setListenerState:3];
      v20 = +[DSLogging sharedInstance];
      v21 = [v20 dsLogger];

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v25[0] = v19;
        LOWORD(v25[1]) = 1024;
        *(&v25[1] + 2) = [(DSMotionStateListenerProxy *)v5 listenerState];
        _os_log_impl(&dword_249027000, v21, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] State updated from %d to %d\n", buf, 0xEu);
      }

      [(DSMotionStateListenerProxy *)v5 setLastobserver:v4];
      v23.receiver = v5;
      v23.super_class = DSMotionStateListenerProxy;
      [(DSListener *)&v23 stopMotionDataListener];
    }
  }

  else
  {
    v10 = +[DSLogging sharedInstance];
    v11 = [v10 dsLogger];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, v11, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] Listener has not called start\n", buf, 2u);
    }

    v12 = [(DSMotionStateListenerProxy *)v5 pendingObservers];
    v13 = [v12 containsObject:v4];

    if (v13)
    {
      v14 = [(DSMotionStateListenerProxy *)v5 pendingObservers];
      [v14 removeObject:v4];

      v15 = +[DSLogging sharedInstance];
      v16 = [v15 dsLogger];

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(DSMotionStateListenerProxy *)v5 pendingObservers];
        v18 = [v17 count];
        *buf = 134217984;
        *v25 = v18;
        _os_log_impl(&dword_249027000, v16, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] removed listener from pending start list since it called stop. Current pending count %lu\n", buf, 0xCu);
      }
    }
  }

  objc_sync_exit(v5);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)requestMotionState
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(DSMotionStateListenerProxy *)v2 cachedData];
  if (v3 && ([(DSMotionStateListenerProxy *)v2 cachedProvider], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(DSMotionStateListenerProxy *)v2 observers];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v6)
    {
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v10 = [(DSMotionStateListenerProxy *)v2 cachedData];
            v11 = [(DSMotionStateListenerProxy *)v2 cachedProvider];
            [v9 receivedData:v10 fromProvider:v11];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v12 = +[DSLogging sharedInstance];
    v5 = [v12 dsLogger];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, v5, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] No data available\n", buf, 2u);
    }
  }

  objc_sync_exit(v2);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)stoppedListener
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(DSMotionStateListenerProxy *)v2 listenerState];
  [(DSMotionStateListenerProxy *)v2 setListenerState:4];
  v4 = +[DSLogging sharedInstance];
  v5 = [v4 dsLogger];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v33 = v3;
    *&v33[4] = 1024;
    *&v33[6] = [(DSMotionStateListenerProxy *)v2 listenerState];
    _os_log_impl(&dword_249027000, v5, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] State updated from %d to %d\n", buf, 0xEu);
  }

  v6 = [(DSMotionStateListenerProxy *)v2 lastobserver];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(DSMotionStateListenerProxy *)v2 lastobserver];
    [v8 stoppedListener];
  }

  [(DSMotionStateListenerProxy *)v2 _clearCache];
  [(DSMotionStateListenerProxy *)v2 setLastobserver:0];
  v9 = [(DSMotionStateListenerProxy *)v2 pendingObservers];
  v10 = [v9 count] == 0;

  if (!v10)
  {
    v11 = +[DSLogging sharedInstance];
    v12 = [v11 dsLogger];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(DSMotionStateListenerProxy *)v2 pendingObservers];
      v14 = [v13 count];
      *buf = 134217984;
      *v33 = v14;
      _os_log_impl(&dword_249027000, v12, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] Current pending observer count: %lu. Restarting listener\n", buf, 0xCu);
    }

    v15 = [(DSMotionStateListenerProxy *)v2 listenerState];
    [(DSMotionStateListenerProxy *)v2 setListenerState:1];
    v16 = +[DSLogging sharedInstance];
    v17 = [v16 dsLogger];

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(DSMotionStateListenerProxy *)v2 listenerState];
      *buf = 67109376;
      *v33 = v15;
      *&v33[4] = 1024;
      *&v33[6] = v18;
      _os_log_impl(&dword_249027000, v17, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] State updated from %d to %d\n", buf, 0xEu);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = [(DSMotionStateListenerProxy *)v2 pendingObservers];
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v20)
    {
      v21 = *v28;
      do
      {
        v22 = 0;
        do
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [(DSMotionStateListenerProxy *)v2 _addObserver:*(*(&v27 + 1) + 8 * v22++)];
        }

        while (v20 != v22);
        v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v20);
    }

    v23 = [(DSMotionStateListenerProxy *)v2 pendingObservers];
    [v23 removeAllObjects];

    v24 = [(DSMotionStateListenerProxy *)v2 options];
    v26.receiver = v2;
    v26.super_class = DSMotionStateListenerProxy;
    [(DSListener *)&v26 startMotionDataListenerWithOptions:v24];
  }

  objc_sync_exit(v2);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)failedToStartListenerWithError:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(DSMotionStateListenerProxy *)v5 listenerState];
  [(DSMotionStateListenerProxy *)v5 setListenerState:5];
  v7 = +[DSLogging sharedInstance];
  v8 = [v7 dsLogger];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v22 = v6;
    v23 = 1024;
    v24 = [(DSMotionStateListenerProxy *)v5 listenerState];
    _os_log_impl(&dword_249027000, v8, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] State updated from %d to %d\n", buf, 0xEu);
  }

  [(DSMotionStateListenerProxy *)v5 setError:v4];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(DSMotionStateListenerProxy *)v5 observers];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 failedToStartListenerWithError:v4];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [(DSMotionStateListenerProxy *)v5 observers];
  [v14 removeAllObjects];

  objc_sync_exit(v5);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)startedListener
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(DSMotionStateListenerProxy *)v2 listenerState];
  [(DSMotionStateListenerProxy *)v2 setListenerState:2];
  v4 = +[DSLogging sharedInstance];
  v5 = [v4 dsLogger];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v21 = v3;
    v22 = 1024;
    v23 = [(DSMotionStateListenerProxy *)v2 listenerState];
    _os_log_impl(&dword_249027000, v5, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] State updated from %d to %d\n", buf, 0xEu);
  }

  v6 = +[DSLogging sharedInstance];
  v7 = [v6 dsLogger];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(DSListener *)v2 maxListenerClients];
    *buf = 67109120;
    v21 = v8;
    _os_log_impl(&dword_249027000, v7, OS_LOG_TYPE_DEFAULT, "max listener clients %u\n", buf, 8u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(DSMotionStateListenerProxy *)v2 observers];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 startedListener];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v2);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:(id)a3 fromProvider:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  [(DSMotionStateListenerProxy *)v8 setCachedData:v6];
  [(DSMotionStateListenerProxy *)v8 setCachedProvider:v7];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(DSMotionStateListenerProxy *)v8 observers];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 receivedData:v6 fromProvider:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateProviders:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(DSMotionStateListenerProxy *)v5 observers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 updateProviders:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_addObserver:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    listenerCount = self->_listenerCount;
    self->_listenerCount = listenerCount + 1;
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = v6;
    previousIntervalStartTime = self->_previousIntervalStartTime;
    if (listenerCount)
    {
      [(NSDate *)v6 timeIntervalSinceDate:previousIntervalStartTime];
      v10 = v9;
      [(DSListener *)self avgListenerStartInterval];
      [(DSListener *)self setAvgListenerStartInterval:(v10 + v11 * (self->_listenerCount - 2)) / (self->_listenerCount - 1)];
      previousIntervalStartTime = self->_previousIntervalStartTime;
    }

    self->_previousIntervalStartTime = v7;

    v12 = self->_listenerCount;
    if (v12 > [(DSListener *)self maxListenerClients])
    {
      [(DSListener *)self setMaxListenerClients:self->_listenerCount];
    }

    v13 = [(DSMotionStateListenerProxy *)self observers];
    [v13 addObject:v4];

    v14 = +[DSLogging sharedInstance];
    v15 = [v14 dsLogger];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_listenerCount;
      v22[0] = 67109120;
      v22[1] = v16;
      v17 = "[DSListenerProxy] observer added. Current Listener client count %u\n";
      v18 = v15;
      v19 = 8;
LABEL_10:
      _os_log_impl(&dword_249027000, v18, OS_LOG_TYPE_DEFAULT, v17, v22, v19);
    }
  }

  else
  {
    v20 = +[DSLogging sharedInstance];
    v15 = [v20 dsLogger];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22[0]) = 0;
      v17 = "[DSListenerProxy] observer not found\n";
      v18 = v15;
      v19 = 2;
      goto LABEL_10;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_removeObserver:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  --self->_listenerCount;
  v4 = a3;
  v5 = [(DSMotionStateListenerProxy *)self observers];
  [v5 removeObject:v4];

  v6 = +[DSLogging sharedInstance];
  v7 = [v6 dsLogger];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    listenerCount = self->_listenerCount;
    v10[0] = 67109120;
    v10[1] = listenerCount;
    _os_log_impl(&dword_249027000, v7, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] observer removed. Current Listener client count %u\n", v10, 8u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_replyWithCachedDataToObserver:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DSMotionStateListenerProxy;
  v5 = [(DSListener *)&v11 activeProviders];
  if ([v5 count])
  {
    if (objc_opt_respondsToSelector())
    {
      [v4 updateProviders:v5];
    }

    v6 = [(DSMotionStateListenerProxy *)self cachedData];
    if (v6)
    {
      v7 = v6;
      v8 = [(DSMotionStateListenerProxy *)self cachedProvider];

      if (v8)
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [(DSMotionStateListenerProxy *)self cachedData];
          v10 = [(DSMotionStateListenerProxy *)self cachedProvider];
          [v4 receivedData:v9 fromProvider:v10];
        }
      }
    }
  }
}

- (void)_clearCache
{
  v3 = +[DSLogging sharedInstance];
  v4 = [v3 dsLogger];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy]  resetting proxy cache\n", v9, 2u);
  }

  error = self->_error;
  self->_error = 0;

  cachedData = self->_cachedData;
  self->_cachedData = 0;

  cachedProvider = self->_cachedProvider;
  self->_cachedProvider = 0;

  self->_listenerCount = 0;
  previousIntervalStartTime = self->_previousIntervalStartTime;
  self->_previousIntervalStartTime = 0;

  [(DSListener *)self setMaxListenerClients:0];
  [(DSListener *)self setAvgListenerStartInterval:0.0];
}

- (DSListenerClientProtocol)lastobserver
{
  WeakRetained = objc_loadWeakRetained(&self->_lastobserver);

  return WeakRetained;
}

@end