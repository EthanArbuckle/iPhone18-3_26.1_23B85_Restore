@interface PurgeStatsReporter
+ (BOOL)sendPurgeStatsEventWithKey:(id)key;
- (BOOL)statsAreStale;
- (PurgeStatsReporter)initWithPath:(id)path;
- (id)load;
- (void)appendAndSaveStats:(id)stats;
- (void)save:(id)save;
- (void)sendAndResetStats;
@end

@implementation PurgeStatsReporter

- (PurgeStatsReporter)initWithPath:(id)path
{
  pathCopy = path;
  v24.receiver = self;
  v24.super_class = PurgeStatsReporter;
  v5 = [(PurgeStatsReporter *)&v24 init];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = dispatch_queue_create("com.apple.CacheDelete.purgeStatReporter", 0);
  persistenceQueue = v5->_persistenceQueue;
  v5->_persistenceQueue = v6;

  v8 = [NSURL fileURLWithPath:pathCopy];
  persistenceURL = v5->_persistenceURL;
  v5->_persistenceURL = v8;

  v10 = v5->_persistenceURL;
  if (!v10)
  {
    v17 = CDGetLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to initialize purge stats' persistence path!", buf, 2u);
    }

    goto LABEL_19;
  }

  path = [(NSURL *)v10 path];
  v12 = access([path UTF8String], 0);

  if (!v12)
  {
    if ([(PurgeStatsReporter *)v5 statsAreStale])
    {
      v18 = CDGetLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Purge stat reporter found stale stats", buf, 2u);
      }

      [(PurgeStatsReporter *)v5 resetPurgeStats];
    }

    goto LABEL_14;
  }

  v13 = [NSKeyedArchiver archivedDataWithRootObject:&__NSDictionary0__struct requiringSecureCoding:1 error:0];
  if (!v13)
  {
    v16 = 0;
    goto LABEL_16;
  }

  path2 = [(NSURL *)v5->_persistenceURL path];
  v23 = 0;
  v15 = [v13 writeToFile:path2 options:0 error:&v23];
  v16 = v23;

  if ((v15 & 1) == 0)
  {
LABEL_16:
    v20 = CDGetLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      path3 = [(NSURL *)v5->_persistenceURL path];
      *buf = 138412802;
      v26 = v13;
      v27 = 2112;
      v28 = path3;
      v29 = 2112;
      v30 = v16;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "unable to write results to cache file. Data: %@, Path: %@, Error: %@", buf, 0x20u);
    }

LABEL_19:
    v19 = 0;
    goto LABEL_20;
  }

LABEL_14:
  v19 = v5;
LABEL_20:

  return v19;
}

- (void)save:(id)save
{
  saveCopy = save;
  persistenceQueue = self->_persistenceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __27__PurgeStatsReporter_save___block_invoke;
  v7[3] = &unk_100060B40;
  v7[4] = self;
  v8 = saveCopy;
  v6 = saveCopy;
  dispatch_sync(persistenceQueue, v7);
}

void __27__PurgeStatsReporter_save___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    v2 = [NSKeyedArchiver archivedDataWithRootObject:*(a1 + 40) requiringSecureCoding:1 error:0];
    if (v2)
    {
      v3 = [*(*(a1 + 32) + 8) path];
      v7 = 0;
      v4 = [v2 writeToFile:v3 options:0 error:&v7];
      v5 = v7;

      if (v4)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = CDGetLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to persist purge stats, deleting persistence file if it exists. Error : %@", buf, 0xCu);
    }

    unlink([*(*(a1 + 32) + 8) fileSystemRepresentation]);
    goto LABEL_11;
  }

  v5 = CDGetLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Weird... no purge stats path to persist to.", buf, 2u);
  }

LABEL_12:
}

- (id)load
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  persistenceQueue = self->_persistenceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __26__PurgeStatsReporter_load__block_invoke;
  v7[3] = &unk_100061940;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(persistenceQueue, v7);
  v3 = v9[5];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __26__PurgeStatsReporter_load__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) path];
  v3 = [NSData dataWithContentsOfFile:v2];

  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v4, v5, objc_opt_class(), 0];
  v13 = 0;
  v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v6 fromData:v3 error:&v13];
  v8 = v13;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  if (v8 || !*(*(*(a1 + 40) + 8) + 40))
  {
    v11 = CDGetLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v3;
      v18 = 2112;
      v19 = v12;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to read in purge stats - deleting persistence file. Error: %@, Data: %@, Loaded Stats: %@", buf, 0x20u);
    }

    unlink([*(*(a1 + 32) + 8) fileSystemRepresentation]);
  }
}

- (BOOL)statsAreStale
{
  load = [(PurgeStatsReporter *)self load];
  v3 = [NSMutableDictionary dictionaryWithDictionary:load];

  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = objc_alloc_init(NSNumberFormatter);
  [v6 setNumberStyle:1];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [v3 allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = v5 + -172800.0;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = [*(*(&v19 + 1) + 8 * i) substringToIndex:{objc_msgSend(*(*(&v19 + 1) + 8 * i), "rangeOfString:", @"_"}];
        v14 = [v6 numberFromString:v13];

        [v14 doubleValue];
        v16 = v15;

        if (v16 < v10)
        {
          v17 = 1;
          goto LABEL_11;
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (void)appendAndSaveStats:(id)stats
{
  statsCopy = stats;
  if ([(PurgeStatsReporter *)self statsAreStale])
  {
    [(PurgeStatsReporter *)self resetPurgeStats];
  }

  load = [(PurgeStatsReporter *)self load];
  v10 = [NSMutableDictionary dictionaryWithDictionary:load];

  +[NSDate timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = +[NSUUID UUID];
  v9 = [NSString stringWithFormat:@"%lf_%@", v7, v8];

  [v10 setObject:statsCopy forKeyedSubscript:v9];
  [(PurgeStatsReporter *)self save:v10];
}

- (void)sendAndResetStats
{
  [(PurgeStatsReporter *)self load];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v27 = 0u;
  obj = [v15 allValues];
  v19 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v19)
  {
    v18 = *v25;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v24 + 1) + 8 * i);
        v4 = objc_opt_new();
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v5 = v3;
        v6 = [v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v21;
          do
          {
            for (j = 0; j != v7; j = j + 1)
            {
              if (*v21 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v20 + 1) + 8 * j);
              v11 = +[PurgeStatsReporter statKeys];
              v12 = [v11 containsObject:v10];

              if (v12)
              {
                v13 = [v5 objectForKeyedSubscript:v10];
                [v4 setObject:v13 forKeyedSubscript:v10];
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
          }

          while (v7);
        }

        if (![PurgeStatsReporter sendPurgeStatsEventWithKey:v4])
        {
          v14 = CDGetLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v29 = "[PurgeStatsReporter sendAndResetStats]";
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s : sending of stats to CA seems to have failed (or is not enabled).", buf, 0xCu);
          }

          goto LABEL_22;
        }
      }

      v19 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  [(PurgeStatsReporter *)self resetPurgeStats];
}

+ (BOOL)sendPurgeStatsEventWithKey:(id)key
{
  keyCopy = key;
  v4 = CDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v10 = "+[PurgeStatsReporter sendPurgeStatsEventWithKey:]";
    v11 = 2112;
    v12 = keyCopy;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s : %@", buf, 0x16u);
  }

  v8 = keyCopy;
  v5 = keyCopy;
  v6 = AnalyticsSendEventLazy();

  return v6;
}

@end