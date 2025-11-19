@interface IDSTTLCache
- (BOOL)_delegate_shouldEvictObject:(id)a3 forKey:(id)a4;
- (BOOL)_delegate_shouldTTLCacheEvictExpiredItems;
- (IDSTTLCache)initWithQueue:(id)a3 ttlInSeconds:(double)a4;
- (IDSTTLCacheDelegate)delegate;
- (void)_delegate_DidEvictObject:(id)a3 forKey:(id)a4;
- (void)_delegate_didCacheObject:(id)a3 forKey:(id)a4;
- (void)_delegate_willReturnCachedObject:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)_fetchCachedObjectForKey:(id)a3 completion:(id)a4;
- (void)_performEvictionSweep;
- (void)_startEvictionTimerIfNeeded;
- (void)_stopEvictionTimer;
- (void)_stopEvictionTimerIfEmpty;
- (void)cacheObject:(id)a3 forKey:(id)a4;
- (void)dealloc;
- (void)evictCachedObjectForKey:(id)a3;
- (void)fetchCachedObjectForKey:(id)a3 completion:(id)a4;
@end

@implementation IDSTTLCache

- (IDSTTLCache)initWithQueue:(id)a3 ttlInSeconds:(double)a4
{
  v7 = a3;
  dispatch_assert_queue_V2(v7);
  v15.receiver = self;
  v15.super_class = IDSTTLCache;
  v8 = [(IDSTTLCache *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a3);
    v10 = objc_alloc_init(NSMutableDictionary);
    backingStore = v9->_backingStore;
    v9->_backingStore = v10;

    v9->_ttlInSeconds = a4;
    v12 = [[IMMultiQueue alloc] initWithQueue:v7];
    multiQueue = v9->_multiQueue;
    v9->_multiQueue = v12;
  }

  return v9;
}

- (void)cacheObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog utilities];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138478083;
    v13 = v7;
    v14 = 2113;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Caching object {key: %{private}@, object: %{private}@}", &v12, 0x16u);
  }

  v9 = [(IDSTTLCache *)self queue];
  dispatch_assert_queue_V2(v9);

  if (v6)
  {
    v10 = [[IDSTTLCacheItem alloc] initWithObject:v6 key:v7];
    [(IDSTTLCache *)self ttlInSeconds];
    [(IDSTTLCacheItem *)v10 bumpEvictionDateToSecondsFromNow:?];
    v11 = [(IDSTTLCache *)self backingStore];
    [v11 setObject:v10 forKeyedSubscript:v7];

    [(IDSTTLCache *)self _delegate_didCacheObject:v6 forKey:v7];
    [(IDSTTLCache *)self _startEvictionTimerIfNeeded];
  }

  else
  {
    [(IDSTTLCache *)self evictCachedObjectForKey:v7];
  }
}

- (void)fetchCachedObjectForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100450E7C;
  v18[3] = &unk_100BDCA48;
  v7 = a4;
  v19 = v7;
  v8 = objc_retainBlock(v18);
  v9 = [(IDSTTLCache *)self queue];
  dispatch_assert_queue_V2(v9);

  objc_initWeak(&location, self);
  v10 = [(IDSTTLCache *)self multiQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100450E94;
  v13[3] = &unk_100BDCA98;
  objc_copyWeak(&v16, &location);
  v11 = v6;
  v14 = v11;
  v12 = v8;
  v15 = v12;
  [v10 addBlock:v13 forKey:v11 description:@"IDSTTLCache fetch cached object"];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)evictCachedObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(IDSTTLCache *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[IDSFoundationLog utilities];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v15 = 138477827;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Evicting object {key: %{private}@", &v15, 0xCu);
  }

  v7 = [(IDSTTLCache *)self backingStore];
  v8 = [v7 objectForKey:v4];

  if (!v8)
  {
    v13 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138477827;
      v16 = v4;
      v14 = "Tried to evict object that is not in cache {key: %{private}@}";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &v15, 0xCu);
    }

LABEL_11:

    goto LABEL_12;
  }

  v9 = [v8 object];
  v10 = [(IDSTTLCache *)self _delegate_shouldEvictObject:v9 forKey:v4];

  if (!v10)
  {
    v13 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138477827;
      v16 = v4;
      v14 = "Delegate return NO to shouldEvict -- Bail {key: %{private}@}";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v11 = [(IDSTTLCache *)self backingStore];
  [v11 removeObjectForKey:v4];

  v12 = [v8 object];
  [(IDSTTLCache *)self _delegate_DidEvictObject:v12 forKey:v4];

  [(IDSTTLCache *)self _stopEvictionTimerIfEmpty];
LABEL_12:
}

- (void)dealloc
{
  dispatch_assert_queue_V2(self->_queue);
  [(IDSTTLCache *)self _stopEvictionTimer];
  v3.receiver = self;
  v3.super_class = IDSTTLCache;
  [(IDSTTLCache *)&v3 dealloc];
}

- (void)_startEvictionTimerIfNeeded
{
  v3 = [(IDSTTLCache *)self evictionTimer];

  if (!v3)
  {
    [(IDSTTLCache *)self ttlInSeconds];
    v5 = v4 * 1.2;
    [(IDSTTLCache *)self ttlInSeconds];
    v7 = v6 * 0.1;
    v8 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v16 = v5;
      v17 = 2048;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Eviction timer did start {interval: %.6f, leeway: %.6f", buf, 0x16u);
    }

    v9 = [(IDSTTLCache *)self queue];
    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v9);
    [(IDSTTLCache *)self setEvictionTimer:v10];

    v11 = [(IDSTTLCache *)self evictionTimer];
    dispatch_source_set_timer(v11, 0, (v5 * 1000000000.0), (v7 * 1000000000.0));

    v12 = [(IDSTTLCache *)self evictionTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100451408;
    handler[3] = &unk_100BD6ED0;
    handler[4] = self;
    dispatch_source_set_event_handler(v12, handler);

    v13 = [(IDSTTLCache *)self evictionTimer];
    dispatch_resume(v13);
  }
}

- (void)_stopEvictionTimerIfEmpty
{
  v3 = +[IDSFoundationLog utilities];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Stop eviction timer if empty", &v9, 2u);
  }

  v4 = [(IDSTTLCache *)self backingStore];
  v5 = [v4 count];

  if (v5)
  {
    v6 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(IDSTTLCache *)self backingStore];
      v8 = [v7 count];
      v9 = 134217984;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Not stopping eviction timer {backingStore.count: %ld}", &v9, 0xCu);
    }
  }

  else
  {
    [(IDSTTLCache *)self _stopEvictionTimer];
  }
}

- (void)_stopEvictionTimer
{
  v3 = +[IDSFoundationLog utilities];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(IDSTTLCache *)self backingStore];
    v7 = 134217984;
    v8 = [v4 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping eviction timer {backingStore.count: %ld}", &v7, 0xCu);
  }

  v5 = [(IDSTTLCache *)self evictionTimer];

  if (v5)
  {
    v6 = [(IDSTTLCache *)self evictionTimer];
    dispatch_source_cancel(v6);

    [(IDSTTLCache *)self setEvictionTimer:0];
  }
}

- (void)_performEvictionSweep
{
  if ([(IDSTTLCache *)self _delegate_shouldTTLCacheEvictExpiredItems])
  {
    v3 = +[NSDate date];
    v4 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Evicting items {currentDate: %{public}@}", buf, 0xCu);
    }

    v5 = objc_alloc_init(NSMutableArray);
    v6 = [(IDSTTLCache *)self backingStore];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1004518BC;
    v18[3] = &unk_100BDCAC0;
    v7 = v3;
    v19 = v7;
    v8 = v5;
    v20 = v8;
    [v6 enumerateKeysAndObjectsUsingBlock:v18];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(IDSTTLCache *)self evictCachedObjectForKey:*(*(&v14 + 1) + 8 * v13), v14];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v21 count:16];
      }

      while (v11);
    }

    [(IDSTTLCache *)self _stopEvictionTimerIfEmpty];
  }

  else
  {
    v7 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Delegate returned NO shouldTTLCacheEvictExpiredItems -- Bail", buf, 2u);
    }
  }
}

- (void)_fetchCachedObjectForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSTTLCache *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(IDSTTLCache *)self backingStore];
  v10 = [v9 objectForKey:v6];

  if (!v10)
  {
    v11 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cache miss {key: %{private}@", buf, 0xCu);
    }
  }

  v12 = [v10 object];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100451BCC;
  v16[3] = &unk_100BDCAE8;
  v16[4] = self;
  v17 = v10;
  v18 = v6;
  v19 = v7;
  v13 = v7;
  v14 = v6;
  v15 = v10;
  [(IDSTTLCache *)self _delegate_willReturnCachedObject:v12 forKey:v14 completion:v16];
}

- (void)_delegate_didCacheObject:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(IDSTTLCache *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(IDSTTLCache *)self delegate];
    [v9 ttlCache:self didCacheObject:v10 forKey:v6];
  }
}

- (void)_delegate_willReturnCachedObject:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(IDSTTLCache *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(IDSTTLCache *)self delegate];
    [v12 ttlCache:self willReturnCachedObject:v13 forKey:v8 completion:v9];
  }

  else
  {
    v9[2](v9, v13);
  }
}

- (BOOL)_delegate_shouldEvictObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSTTLCache *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(IDSTTLCache *)self delegate];
    v11 = [v10 ttlCache:self shouldEvictObject:v6 forKey:v7];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)_delegate_DidEvictObject:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(IDSTTLCache *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(IDSTTLCache *)self delegate];
    [v9 ttlCache:self didEvictObject:v10 forKey:v6];
  }
}

- (BOOL)_delegate_shouldTTLCacheEvictExpiredItems
{
  v3 = [(IDSTTLCache *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(IDSTTLCache *)self delegate];
  v6 = [v5 shouldTTLCacheEvictExpiredItems:self];

  return v6;
}

- (IDSTTLCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end