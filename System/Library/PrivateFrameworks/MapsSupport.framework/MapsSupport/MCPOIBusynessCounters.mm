@interface MCPOIBusynessCounters
+ (id)cacheFileURL;
+ (id)readFromDisk;
- (MCPOIBusynessCounters)init;
- (MCPOIBusynessCounters)initWithCoder:(id)coder;
- (NSString)description;
- (id)_description;
- (id)_flushToPowerLog:(BOOL)log;
- (id)captureStatePlistWithHints:(os_state_hints_s *)hints;
- (void)_setIsDirty:(BOOL)dirty;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)incrementCounterForAnalytic:(unint64_t)analytic;
- (void)writeToDiskIfNecessary;
@end

@implementation MCPOIBusynessCounters

+ (id)cacheFileURL
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  firstObject = [v2 firstObject];
  v4 = [firstObject stringByAppendingPathComponent:@"com.apple.geocorrectiond"];

  v14 = 0;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:&v14];

  if (v6)
  {
    goto LABEL_4;
  }

  v7 = +[NSFileManager defaultManager];
  v13 = 0;
  v8 = [v7 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v13];
  v9 = v13;

  if (v8)
  {

LABEL_4:
    v9 = [v4 stringByAppendingPathComponent:@"poi-busyness.counters"];
    v10 = [NSURL fileURLWithPath:v9];
    goto LABEL_8;
  }

  v11 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unable to create cache dir %@: %@", buf, 0x16u);
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (MCPOIBusynessCounters)init
{
  v16.receiver = self;
  v16.super_class = MCPOIBusynessCounters;
  v2 = [(MCPOIBusynessCounters *)&v16 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create_with_qos();
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    v5 = [NSMutableDictionary dictionaryWithCapacity:10];
    v6 = *(v2 + 5);
    *(v2 + 5) = v5;

    +[NSDate timeIntervalSinceReferenceDate];
    v7 = [NSNumber numberWithDouble:?];
    [*(v2 + 5) setObject:v7 forKeyedSubscript:&off_10001F680];

    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 2));
    v9 = *(v2 + 3);
    *(v2 + 3) = v8;

    dispatch_source_set_timer(*(v2 + 3), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(&location, v2);
    v10 = *(v2 + 3);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100008864;
    v13[3] = &unk_10001D6F8;
    objc_copyWeak(&v14, &location);
    dispatch_source_set_event_handler(v10, v13);
    dispatch_activate(*(v2 + 3));
    v11 = *(v2 + 2);
    GEORegisterPListStateCaptureLegacy();
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (MCPOIBusynessCounters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MCPOIBusynessCounters *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"counters"];
    v8 = [v7 objectForKeyedSubscript:&off_10001F680];
    [v8 doubleValue];
    v10 = v9;

    if (v7 && v10 > 0.0)
    {
      v11 = [v7 mutableCopy];
      counters = v5->_counters;
      v5->_counters = v11;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  isolationQueue = self->_isolationQueue;
  coderCopy = coder;
  dispatch_assert_queue_V2(isolationQueue);
  [coderCopy encodeObject:self->_counters forKey:@"counters"];
}

- (void)dealloc
{
  GEOUnregisterStateCaptureLegacy();
  v3.receiver = self;
  v3.super_class = MCPOIBusynessCounters;
  [(MCPOIBusynessCounters *)&v3 dealloc];
}

+ (id)readFromDisk
{
  v3 = +[GEOKeyBagNotification sharedObject];
  v4 = [v3 canAccessFilesWithProtection:1];

  if (v4)
  {
    cacheFileURL = [objc_opt_class() cacheFileURL];
    v6 = +[NSFileManager defaultManager];
    path = [cacheFileURL path];
    v8 = [v6 fileExistsAtPath:path];

    if (v8)
    {
      v21 = 0;
      v9 = [[NSData alloc] initWithContentsOfURL:cacheFileURL options:0 error:&v21];
      v10 = v21;
      v11 = v10;
      if (!v9 || v10)
      {
        v18 = GEOGetPOIBusynessLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v23 = cacheFileURL;
          v24 = 2112;
          v25 = v11;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed read %@: %@", buf, 0x16u);
        }

        v16 = objc_alloc_init(self);
      }

      else
      {
        v20 = 0;
        v12 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v20];
        v11 = v20;
        v13 = GEOGetPOIBusynessLog();
        v14 = v13;
        if (!v12 || v11)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v23 = cacheFileURL;
            v24 = 2112;
            v25 = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed unarchive %@: %@", buf, 0x16u);
          }

          v15 = objc_alloc_init(self);
        }

        else
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138477827;
            v23 = v12;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Successfuly read %{private}@", buf, 0xCu);
          }

          v15 = v12;
        }

        v16 = v15;
      }
    }

    else
    {
      v17 = GEOGetPOIBusynessLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = cacheFileURL;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Counters do not exist at %@", buf, 0xCu);
      }

      v16 = objc_alloc_init(self);
    }
  }

  else
  {
    cacheFileURL = GEOGetPOIBusynessLog();
    if (os_log_type_enabled(cacheFileURL, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, cacheFileURL, OS_LOG_TYPE_INFO, "Refusing to read counters, device is not unlocked", buf, 2u);
    }

    v16 = 0;
  }

  return v16;
}

- (void)writeToDiskIfNecessary
{
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008E04;
  block[3] = &unk_10001C650;
  block[4] = self;
  dispatch_async(isolationQueue, block);
}

- (id)captureStatePlistWithHints:(os_state_hints_s *)hints
{
  if (PLShouldLogRegisteredEvent())
  {
    v4 = [(MCPOIBusynessCounters *)self _flushToPowerLog:1];
  }

  else
  {
    v4 = self->_counters;
  }

  v5 = v4;
  [NSMutableDictionary dictionaryWithCapacity:[(NSMutableDictionary *)v4 count]];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100009228;
  v6 = v8[3] = &unk_10001D720;
  v9 = v6;
  [(NSMutableDictionary *)v5 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

- (void)_setIsDirty:(BOOL)dirty
{
  dirtyCopy = dirty;
  dispatch_assert_queue_V2(self->_isolationQueue);
  isDirtyTransaction = self->_isDirtyTransaction;
  if (dirtyCopy)
  {
    if (!isDirtyTransaction)
    {
      v6 = _GEOCreateTransaction();
      v7 = self->_isDirtyTransaction;
      self->_isDirtyTransaction = v6;
    }

    writeTimer = self->_writeTimer;
    v9 = dispatch_time(0, 5000000000);
    v10 = writeTimer;
    v11 = 5000000000;
  }

  else
  {
    if (!isDirtyTransaction)
    {
      return;
    }

    self->_isDirtyTransaction = 0;

    v10 = self->_writeTimer;
    v9 = -1;
    v11 = 0;
  }

  dispatch_source_set_timer(v10, v9, 0xFFFFFFFFFFFFFFFFLL, v11);
}

- (id)_flushToPowerLog:(BOOL)log
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (log || (+[NSDate timeIntervalSinceReferenceDate](NSDate, "timeIntervalSinceReferenceDate"), v6 = v5, -[NSMutableDictionary objectForKeyedSubscript:](self->_counters, "objectForKeyedSubscript:", &off_10001F680), v7 = objc_claimAutoreleasedReturnValue(), [v7 doubleValue], v9 = v6 - v8, v7, v9 >= 86400.0))
  {
    v10 = [(NSMutableDictionary *)self->_counters copy];
    v11 = [NSMutableDictionary dictionaryWithCapacity:10];
    counters = self->_counters;
    self->_counters = v11;

    +[NSDate timeIntervalSinceReferenceDate];
    v13 = [NSNumber numberWithDouble:?];
    [(NSMutableDictionary *)self->_counters setObject:v13 forKeyedSubscript:&off_10001F680];

    [(MCPOIBusynessCounters *)self _setIsDirty:1];
    PLLogRegisteredEvent();
  }

  else
  {
    v10 = &__NSDictionary0__struct;
  }

  return v10;
}

- (NSString)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100009600;
  v10 = sub_100009610;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100009618;
  v5[3] = &unk_10001C628;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_description
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSMutableString stringWithFormat:@"<%@ %p: ", v4, self];

  [v5 appendString:@"start: "];
  v6 = [(NSMutableDictionary *)self->_counters objectForKeyedSubscript:&off_10001F680];
  stringValue = [v6 stringValue];
  [v5 appendString:stringValue];

  counters = self->_counters;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000097AC;
  v11[3] = &unk_10001D720;
  v9 = v5;
  v12 = v9;
  [(NSMutableDictionary *)counters enumerateKeysAndObjectsUsingBlock:v11];
  [v9 appendString:@">"];

  return v9;
}

- (void)incrementCounterForAnalytic:(unint64_t)analytic
{
  v4 = [NSNumber numberWithUnsignedInteger:analytic];
  isolationQueue = self->_isolationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009944;
  v7[3] = &unk_10001C678;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(isolationQueue, v7);
}

@end