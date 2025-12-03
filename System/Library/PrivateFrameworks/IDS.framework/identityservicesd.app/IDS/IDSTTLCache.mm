@interface IDSTTLCache
- (BOOL)_delegate_shouldEvictObject:(id)object forKey:(id)key;
- (BOOL)_delegate_shouldTTLCacheEvictExpiredItems;
- (IDSTTLCache)initWithQueue:(id)queue ttlInSeconds:(double)seconds;
- (IDSTTLCacheDelegate)delegate;
- (void)_delegate_DidEvictObject:(id)object forKey:(id)key;
- (void)_delegate_didCacheObject:(id)object forKey:(id)key;
- (void)_delegate_willReturnCachedObject:(id)object forKey:(id)key completion:(id)completion;
- (void)_fetchCachedObjectForKey:(id)key completion:(id)completion;
- (void)_performEvictionSweep;
- (void)_startEvictionTimerIfNeeded;
- (void)_stopEvictionTimer;
- (void)_stopEvictionTimerIfEmpty;
- (void)cacheObject:(id)object forKey:(id)key;
- (void)dealloc;
- (void)evictCachedObjectForKey:(id)key;
- (void)fetchCachedObjectForKey:(id)key completion:(id)completion;
@end

@implementation IDSTTLCache

- (IDSTTLCache)initWithQueue:(id)queue ttlInSeconds:(double)seconds
{
  queueCopy = queue;
  dispatch_assert_queue_V2(queueCopy);
  v15.receiver = self;
  v15.super_class = IDSTTLCache;
  v8 = [(IDSTTLCache *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, queue);
    v10 = objc_alloc_init(NSMutableDictionary);
    backingStore = v9->_backingStore;
    v9->_backingStore = v10;

    v9->_ttlInSeconds = seconds;
    v12 = [[IMMultiQueue alloc] initWithQueue:queueCopy];
    multiQueue = v9->_multiQueue;
    v9->_multiQueue = v12;
  }

  return v9;
}

- (void)cacheObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v8 = +[IDSFoundationLog utilities];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138478083;
    v13 = keyCopy;
    v14 = 2113;
    v15 = objectCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Caching object {key: %{private}@, object: %{private}@}", &v12, 0x16u);
  }

  queue = [(IDSTTLCache *)self queue];
  dispatch_assert_queue_V2(queue);

  if (objectCopy)
  {
    v10 = [[IDSTTLCacheItem alloc] initWithObject:objectCopy key:keyCopy];
    [(IDSTTLCache *)self ttlInSeconds];
    [(IDSTTLCacheItem *)v10 bumpEvictionDateToSecondsFromNow:?];
    backingStore = [(IDSTTLCache *)self backingStore];
    [backingStore setObject:v10 forKeyedSubscript:keyCopy];

    [(IDSTTLCache *)self _delegate_didCacheObject:objectCopy forKey:keyCopy];
    [(IDSTTLCache *)self _startEvictionTimerIfNeeded];
  }

  else
  {
    [(IDSTTLCache *)self evictCachedObjectForKey:keyCopy];
  }
}

- (void)fetchCachedObjectForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100450E7C;
  v18[3] = &unk_100BDCA48;
  completionCopy = completion;
  v19 = completionCopy;
  v8 = objc_retainBlock(v18);
  queue = [(IDSTTLCache *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, self);
  multiQueue = [(IDSTTLCache *)self multiQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100450E94;
  v13[3] = &unk_100BDCA98;
  objc_copyWeak(&v16, &location);
  v11 = keyCopy;
  v14 = v11;
  v12 = v8;
  v15 = v12;
  [multiQueue addBlock:v13 forKey:v11 description:@"IDSTTLCache fetch cached object"];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)evictCachedObjectForKey:(id)key
{
  keyCopy = key;
  queue = [(IDSTTLCache *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[IDSFoundationLog utilities];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v15 = 138477827;
    v16 = keyCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Evicting object {key: %{private}@", &v15, 0xCu);
  }

  backingStore = [(IDSTTLCache *)self backingStore];
  v8 = [backingStore objectForKey:keyCopy];

  if (!v8)
  {
    v13 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138477827;
      v16 = keyCopy;
      v14 = "Tried to evict object that is not in cache {key: %{private}@}";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &v15, 0xCu);
    }

LABEL_11:

    goto LABEL_12;
  }

  object = [v8 object];
  v10 = [(IDSTTLCache *)self _delegate_shouldEvictObject:object forKey:keyCopy];

  if (!v10)
  {
    v13 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138477827;
      v16 = keyCopy;
      v14 = "Delegate return NO to shouldEvict -- Bail {key: %{private}@}";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  backingStore2 = [(IDSTTLCache *)self backingStore];
  [backingStore2 removeObjectForKey:keyCopy];

  object2 = [v8 object];
  [(IDSTTLCache *)self _delegate_DidEvictObject:object2 forKey:keyCopy];

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
  evictionTimer = [(IDSTTLCache *)self evictionTimer];

  if (!evictionTimer)
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

    queue = [(IDSTTLCache *)self queue];
    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
    [(IDSTTLCache *)self setEvictionTimer:v10];

    evictionTimer2 = [(IDSTTLCache *)self evictionTimer];
    dispatch_source_set_timer(evictionTimer2, 0, (v5 * 1000000000.0), (v7 * 1000000000.0));

    evictionTimer3 = [(IDSTTLCache *)self evictionTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100451408;
    handler[3] = &unk_100BD6ED0;
    handler[4] = self;
    dispatch_source_set_event_handler(evictionTimer3, handler);

    evictionTimer4 = [(IDSTTLCache *)self evictionTimer];
    dispatch_resume(evictionTimer4);
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

  backingStore = [(IDSTTLCache *)self backingStore];
  v5 = [backingStore count];

  if (v5)
  {
    v6 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      backingStore2 = [(IDSTTLCache *)self backingStore];
      v8 = [backingStore2 count];
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
    backingStore = [(IDSTTLCache *)self backingStore];
    v7 = 134217984;
    v8 = [backingStore count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping eviction timer {backingStore.count: %ld}", &v7, 0xCu);
  }

  evictionTimer = [(IDSTTLCache *)self evictionTimer];

  if (evictionTimer)
  {
    evictionTimer2 = [(IDSTTLCache *)self evictionTimer];
    dispatch_source_cancel(evictionTimer2);

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
    backingStore = [(IDSTTLCache *)self backingStore];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1004518BC;
    v18[3] = &unk_100BDCAC0;
    v7 = v3;
    v19 = v7;
    v8 = v5;
    v20 = v8;
    [backingStore enumerateKeysAndObjectsUsingBlock:v18];

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

- (void)_fetchCachedObjectForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  queue = [(IDSTTLCache *)self queue];
  dispatch_assert_queue_V2(queue);

  backingStore = [(IDSTTLCache *)self backingStore];
  v10 = [backingStore objectForKey:keyCopy];

  if (!v10)
  {
    v11 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v21 = keyCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cache miss {key: %{private}@", buf, 0xCu);
    }
  }

  object = [v10 object];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100451BCC;
  v16[3] = &unk_100BDCAE8;
  v16[4] = self;
  v17 = v10;
  v18 = keyCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = keyCopy;
  v15 = v10;
  [(IDSTTLCache *)self _delegate_willReturnCachedObject:object forKey:v14 completion:v16];
}

- (void)_delegate_didCacheObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  delegate = [(IDSTTLCache *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(IDSTTLCache *)self delegate];
    [delegate2 ttlCache:self didCacheObject:objectCopy forKey:keyCopy];
  }
}

- (void)_delegate_willReturnCachedObject:(id)object forKey:(id)key completion:(id)completion
{
  objectCopy = object;
  keyCopy = key;
  completionCopy = completion;
  delegate = [(IDSTTLCache *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(IDSTTLCache *)self delegate];
    [delegate2 ttlCache:self willReturnCachedObject:objectCopy forKey:keyCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, objectCopy);
  }
}

- (BOOL)_delegate_shouldEvictObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  delegate = [(IDSTTLCache *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(IDSTTLCache *)self delegate];
    v11 = [delegate2 ttlCache:self shouldEvictObject:objectCopy forKey:keyCopy];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)_delegate_DidEvictObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  delegate = [(IDSTTLCache *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(IDSTTLCache *)self delegate];
    [delegate2 ttlCache:self didEvictObject:objectCopy forKey:keyCopy];
  }
}

- (BOOL)_delegate_shouldTTLCacheEvictExpiredItems
{
  delegate = [(IDSTTLCache *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(IDSTTLCache *)self delegate];
  v6 = [delegate2 shouldTTLCacheEvictExpiredItems:self];

  return v6;
}

- (IDSTTLCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end