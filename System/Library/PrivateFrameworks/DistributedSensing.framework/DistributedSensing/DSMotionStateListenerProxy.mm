@interface DSMotionStateListenerProxy
+ (id)sharedInstance;
- (DSListenerClientProtocol)lastobserver;
- (DSMotionStateListenerProxy)init;
- (void)_addObserver:(id)observer;
- (void)_clearCache;
- (void)_removeObserver:(id)observer;
- (void)_replyWithCachedDataToObserver:(id)observer;
- (void)failedToStartListenerWithError:(id)error;
- (void)receivedData:(id)data fromProvider:(id)provider;
- (void)requestMotionState;
- (void)startMotionStateListenerWithObserver:(id)observer;
- (void)startedListener;
- (void)stopMotionStateListenerWithObserver:(id)observer;
- (void)stoppedListener;
- (void)updateProviders:(id)providers;
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
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    pendingObservers = v2->_pendingObservers;
    v2->_pendingObservers = weakObjectsHashTable2;

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

- (void)startMotionStateListenerWithObserver:(id)observer
{
  *&v20[5] = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  listenerState = [(DSMotionStateListenerProxy *)selfCopy listenerState];
  if (listenerState > 3)
  {
    if (listenerState != 4)
    {
      if (listenerState == 5)
      {
        if (objc_opt_respondsToSelector())
        {
          error = [(DSMotionStateListenerProxy *)selfCopy error];
          [observerCopy failedToStartListenerWithError:error];
        }

        goto LABEL_23;
      }

      if (listenerState != 255)
      {
        goto LABEL_15;
      }
    }

    [(DSMotionStateListenerProxy *)selfCopy setListenerState:1];
    v11 = +[DSLogging sharedInstance];
    dsLogger = [v11 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v20[0] = 255;
      LOWORD(v20[1]) = 1024;
      *(&v20[1] + 2) = [(DSMotionStateListenerProxy *)selfCopy listenerState];
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] State updated from %d to %d\n", buf, 0xEu);
    }

    [(DSMotionStateListenerProxy *)selfCopy _addObserver:observerCopy];
    options = [(DSMotionStateListenerProxy *)selfCopy options];
    v18.receiver = selfCopy;
    v18.super_class = DSMotionStateListenerProxy;
    [(DSListener *)&v18 startMotionDataListenerWithOptions:options];

    goto LABEL_23;
  }

  if (listenerState == 1)
  {
    [(DSMotionStateListenerProxy *)selfCopy _addObserver:observerCopy];
    goto LABEL_23;
  }

  if (listenerState != 2)
  {
    if (listenerState == 3)
    {
      pendingObservers = [(DSMotionStateListenerProxy *)selfCopy pendingObservers];
      [pendingObservers addObject:observerCopy];

      v8 = +[DSLogging sharedInstance];
      dsLogger2 = [v8 dsLogger];

      if (os_log_type_enabled(dsLogger2, OS_LOG_TYPE_DEFAULT))
      {
        pendingObservers2 = [(DSMotionStateListenerProxy *)selfCopy pendingObservers];
        *buf = 134217984;
        *v20 = [pendingObservers2 count];
        _os_log_impl(&dword_249027000, dsLogger2, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] adding observer to pending list. Current pending count %lu\n", buf, 0xCu);
      }

LABEL_7:

      goto LABEL_23;
    }

LABEL_15:
    v14 = +[DSLogging sharedInstance];
    dsLogger2 = [v14 dsLogger];

    if (os_log_type_enabled(dsLogger2, OS_LOG_TYPE_DEFAULT))
    {
      listenerState = selfCopy->_listenerState;
      *buf = 67109120;
      v20[0] = listenerState;
      _os_log_impl(&dword_249027000, dsLogger2, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] Invalid listener state %d\n", buf, 8u);
    }

    goto LABEL_7;
  }

  [(DSMotionStateListenerProxy *)selfCopy _addObserver:observerCopy];
  if (objc_opt_respondsToSelector())
  {
    [observerCopy startedListener];
  }

  [(DSMotionStateListenerProxy *)selfCopy _replyWithCachedDataToObserver:observerCopy];
LABEL_23:
  objc_sync_exit(selfCopy);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)stopMotionStateListenerWithObserver:(id)observer
{
  *&v25[5] = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = [(DSMotionStateListenerProxy *)selfCopy observers];
  v7 = [observers containsObject:observerCopy];

  if (v7)
  {
    [(DSMotionStateListenerProxy *)selfCopy _removeObserver:observerCopy];
    observers2 = [(DSMotionStateListenerProxy *)selfCopy observers];
    v9 = [observers2 count];

    if (v9)
    {
      if (objc_opt_respondsToSelector())
      {
        [observerCopy stoppedListener];
      }
    }

    else
    {
      listenerState = [(DSMotionStateListenerProxy *)selfCopy listenerState];
      [(DSMotionStateListenerProxy *)selfCopy setListenerState:3];
      v20 = +[DSLogging sharedInstance];
      dsLogger = [v20 dsLogger];

      if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v25[0] = listenerState;
        LOWORD(v25[1]) = 1024;
        *(&v25[1] + 2) = [(DSMotionStateListenerProxy *)selfCopy listenerState];
        _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] State updated from %d to %d\n", buf, 0xEu);
      }

      [(DSMotionStateListenerProxy *)selfCopy setLastobserver:observerCopy];
      v23.receiver = selfCopy;
      v23.super_class = DSMotionStateListenerProxy;
      [(DSListener *)&v23 stopMotionDataListener];
    }
  }

  else
  {
    v10 = +[DSLogging sharedInstance];
    dsLogger2 = [v10 dsLogger];

    if (os_log_type_enabled(dsLogger2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, dsLogger2, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] Listener has not called start\n", buf, 2u);
    }

    pendingObservers = [(DSMotionStateListenerProxy *)selfCopy pendingObservers];
    v13 = [pendingObservers containsObject:observerCopy];

    if (v13)
    {
      pendingObservers2 = [(DSMotionStateListenerProxy *)selfCopy pendingObservers];
      [pendingObservers2 removeObject:observerCopy];

      v15 = +[DSLogging sharedInstance];
      dsLogger3 = [v15 dsLogger];

      if (os_log_type_enabled(dsLogger3, OS_LOG_TYPE_DEFAULT))
      {
        pendingObservers3 = [(DSMotionStateListenerProxy *)selfCopy pendingObservers];
        v18 = [pendingObservers3 count];
        *buf = 134217984;
        *v25 = v18;
        _os_log_impl(&dword_249027000, dsLogger3, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] removed listener from pending start list since it called stop. Current pending count %lu\n", buf, 0xCu);
      }
    }
  }

  objc_sync_exit(selfCopy);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)requestMotionState
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedData = [(DSMotionStateListenerProxy *)selfCopy cachedData];
  if (cachedData && ([(DSMotionStateListenerProxy *)selfCopy cachedProvider], v4 = objc_claimAutoreleasedReturnValue(), v4, cachedData, v4))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    observers = [(DSMotionStateListenerProxy *)selfCopy observers];
    v6 = [observers countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v6)
    {
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(observers);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            cachedData2 = [(DSMotionStateListenerProxy *)selfCopy cachedData];
            cachedProvider = [(DSMotionStateListenerProxy *)selfCopy cachedProvider];
            [v9 receivedData:cachedData2 fromProvider:cachedProvider];
          }
        }

        v6 = [observers countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v12 = +[DSLogging sharedInstance];
    observers = [v12 dsLogger];

    if (os_log_type_enabled(observers, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, observers, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] No data available\n", buf, 2u);
    }
  }

  objc_sync_exit(selfCopy);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)stoppedListener
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  listenerState = [(DSMotionStateListenerProxy *)selfCopy listenerState];
  [(DSMotionStateListenerProxy *)selfCopy setListenerState:4];
  v4 = +[DSLogging sharedInstance];
  dsLogger = [v4 dsLogger];

  if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v33 = listenerState;
    *&v33[4] = 1024;
    *&v33[6] = [(DSMotionStateListenerProxy *)selfCopy listenerState];
    _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] State updated from %d to %d\n", buf, 0xEu);
  }

  lastobserver = [(DSMotionStateListenerProxy *)selfCopy lastobserver];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    lastobserver2 = [(DSMotionStateListenerProxy *)selfCopy lastobserver];
    [lastobserver2 stoppedListener];
  }

  [(DSMotionStateListenerProxy *)selfCopy _clearCache];
  [(DSMotionStateListenerProxy *)selfCopy setLastobserver:0];
  pendingObservers = [(DSMotionStateListenerProxy *)selfCopy pendingObservers];
  v10 = [pendingObservers count] == 0;

  if (!v10)
  {
    v11 = +[DSLogging sharedInstance];
    dsLogger2 = [v11 dsLogger];

    if (os_log_type_enabled(dsLogger2, OS_LOG_TYPE_DEFAULT))
    {
      pendingObservers2 = [(DSMotionStateListenerProxy *)selfCopy pendingObservers];
      v14 = [pendingObservers2 count];
      *buf = 134217984;
      *v33 = v14;
      _os_log_impl(&dword_249027000, dsLogger2, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] Current pending observer count: %lu. Restarting listener\n", buf, 0xCu);
    }

    listenerState2 = [(DSMotionStateListenerProxy *)selfCopy listenerState];
    [(DSMotionStateListenerProxy *)selfCopy setListenerState:1];
    v16 = +[DSLogging sharedInstance];
    dsLogger3 = [v16 dsLogger];

    if (os_log_type_enabled(dsLogger3, OS_LOG_TYPE_DEFAULT))
    {
      listenerState3 = [(DSMotionStateListenerProxy *)selfCopy listenerState];
      *buf = 67109376;
      *v33 = listenerState2;
      *&v33[4] = 1024;
      *&v33[6] = listenerState3;
      _os_log_impl(&dword_249027000, dsLogger3, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] State updated from %d to %d\n", buf, 0xEu);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    pendingObservers3 = [(DSMotionStateListenerProxy *)selfCopy pendingObservers];
    v20 = [pendingObservers3 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(pendingObservers3);
          }

          [(DSMotionStateListenerProxy *)selfCopy _addObserver:*(*(&v27 + 1) + 8 * v22++)];
        }

        while (v20 != v22);
        v20 = [pendingObservers3 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v20);
    }

    pendingObservers4 = [(DSMotionStateListenerProxy *)selfCopy pendingObservers];
    [pendingObservers4 removeAllObjects];

    options = [(DSMotionStateListenerProxy *)selfCopy options];
    v26.receiver = selfCopy;
    v26.super_class = DSMotionStateListenerProxy;
    [(DSListener *)&v26 startMotionDataListenerWithOptions:options];
  }

  objc_sync_exit(selfCopy);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)failedToStartListenerWithError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  listenerState = [(DSMotionStateListenerProxy *)selfCopy listenerState];
  [(DSMotionStateListenerProxy *)selfCopy setListenerState:5];
  v7 = +[DSLogging sharedInstance];
  dsLogger = [v7 dsLogger];

  if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v22 = listenerState;
    v23 = 1024;
    listenerState2 = [(DSMotionStateListenerProxy *)selfCopy listenerState];
    _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] State updated from %d to %d\n", buf, 0xEu);
  }

  [(DSMotionStateListenerProxy *)selfCopy setError:errorCopy];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  observers = [(DSMotionStateListenerProxy *)selfCopy observers];
  v10 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(observers);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 failedToStartListenerWithError:errorCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  observers2 = [(DSMotionStateListenerProxy *)selfCopy observers];
  [observers2 removeAllObjects];

  objc_sync_exit(selfCopy);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)startedListener
{
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  listenerState = [(DSMotionStateListenerProxy *)selfCopy listenerState];
  [(DSMotionStateListenerProxy *)selfCopy setListenerState:2];
  v4 = +[DSLogging sharedInstance];
  dsLogger = [v4 dsLogger];

  if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v21 = listenerState;
    v22 = 1024;
    listenerState2 = [(DSMotionStateListenerProxy *)selfCopy listenerState];
    _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] State updated from %d to %d\n", buf, 0xEu);
  }

  v6 = +[DSLogging sharedInstance];
  dsLogger2 = [v6 dsLogger];

  if (os_log_type_enabled(dsLogger2, OS_LOG_TYPE_DEFAULT))
  {
    maxListenerClients = [(DSListener *)selfCopy maxListenerClients];
    *buf = 67109120;
    v21 = maxListenerClients;
    _os_log_impl(&dword_249027000, dsLogger2, OS_LOG_TYPE_DEFAULT, "max listener clients %u\n", buf, 8u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  observers = [(DSMotionStateListenerProxy *)selfCopy observers];
  v10 = [observers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(observers);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 startedListener];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [observers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)receivedData:(id)data fromProvider:(id)provider
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  providerCopy = provider;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(DSMotionStateListenerProxy *)selfCopy setCachedData:dataCopy];
  [(DSMotionStateListenerProxy *)selfCopy setCachedProvider:providerCopy];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  observers = [(DSMotionStateListenerProxy *)selfCopy observers];
  v10 = [observers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(observers);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 receivedData:dataCopy fromProvider:providerCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [observers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateProviders:(id)providers
{
  v17 = *MEMORY[0x277D85DE8];
  providersCopy = providers;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  observers = [(DSMotionStateListenerProxy *)selfCopy observers];
  v7 = [observers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(observers);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 updateProviders:providersCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [observers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_addObserver:(id)observer
{
  v23 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (observerCopy)
  {
    listenerCount = self->_listenerCount;
    self->_listenerCount = listenerCount + 1;
    date = [MEMORY[0x277CBEAA8] date];
    v7 = date;
    previousIntervalStartTime = self->_previousIntervalStartTime;
    if (listenerCount)
    {
      [(NSDate *)date timeIntervalSinceDate:previousIntervalStartTime];
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

    observers = [(DSMotionStateListenerProxy *)self observers];
    [observers addObject:observerCopy];

    v14 = +[DSLogging sharedInstance];
    dsLogger = [v14 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_listenerCount;
      v22[0] = 67109120;
      v22[1] = v16;
      v17 = "[DSListenerProxy] observer added. Current Listener client count %u\n";
      v18 = dsLogger;
      v19 = 8;
LABEL_10:
      _os_log_impl(&dword_249027000, v18, OS_LOG_TYPE_DEFAULT, v17, v22, v19);
    }
  }

  else
  {
    v20 = +[DSLogging sharedInstance];
    dsLogger = [v20 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22[0]) = 0;
      v17 = "[DSListenerProxy] observer not found\n";
      v18 = dsLogger;
      v19 = 2;
      goto LABEL_10;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_removeObserver:(id)observer
{
  v11 = *MEMORY[0x277D85DE8];
  --self->_listenerCount;
  observerCopy = observer;
  observers = [(DSMotionStateListenerProxy *)self observers];
  [observers removeObject:observerCopy];

  v6 = +[DSLogging sharedInstance];
  dsLogger = [v6 dsLogger];

  if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
  {
    listenerCount = self->_listenerCount;
    v10[0] = 67109120;
    v10[1] = listenerCount;
    _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy] observer removed. Current Listener client count %u\n", v10, 8u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_replyWithCachedDataToObserver:(id)observer
{
  observerCopy = observer;
  v11.receiver = self;
  v11.super_class = DSMotionStateListenerProxy;
  activeProviders = [(DSListener *)&v11 activeProviders];
  if ([activeProviders count])
  {
    if (objc_opt_respondsToSelector())
    {
      [observerCopy updateProviders:activeProviders];
    }

    cachedData = [(DSMotionStateListenerProxy *)self cachedData];
    if (cachedData)
    {
      v7 = cachedData;
      cachedProvider = [(DSMotionStateListenerProxy *)self cachedProvider];

      if (cachedProvider)
      {
        if (objc_opt_respondsToSelector())
        {
          cachedData2 = [(DSMotionStateListenerProxy *)self cachedData];
          cachedProvider2 = [(DSMotionStateListenerProxy *)self cachedProvider];
          [observerCopy receivedData:cachedData2 fromProvider:cachedProvider2];
        }
      }
    }
  }
}

- (void)_clearCache
{
  v3 = +[DSLogging sharedInstance];
  dsLogger = [v3 dsLogger];

  if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSListenerProxy]  resetting proxy cache\n", v9, 2u);
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