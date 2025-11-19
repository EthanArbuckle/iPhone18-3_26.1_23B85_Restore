@interface CacheDeleteAnalytics
+ (id)buildType;
+ (id)currentSystemInfo;
+ (id)getLowDiskLevelFromPurgeResult:(id)a3;
- (BOOL)isRootVolume:(id)a3;
- (CacheDeleteAnalytics)initWithServiceProvider:(id)a3 withPurgeableResultCache:(id)a4;
- (const)stringForTime:(double)a3;
- (const)stringForUrgency:(int)a3;
- (double)machTimeToSeconds:(unint64_t)a3;
- (double)round:(double)a3 toSignificantDigits:(int)a4;
- (id)cacheManagementUsageStats;
- (id)dailyPurgeableStats:(BOOL)a3;
- (id)fetchAdditionalStats;
- (id)fetchApplicationUsageStats;
- (id)fetchLowDiskStats;
- (id)fetchStorageStats;
- (id)fetchTimingStats:(id)a3;
- (id)persistPath;
- (id)systemUsageStats;
- (void)_addDailyStats:(id)a3;
- (void)_postDailyStats:(id)a3;
- (void)_reportBroadcastLowDiskNotification:(id)a3 forVolume:(id)a4;
- (void)_reportPurgeTimingInfo:(id)a3;
- (void)_reportPurgeableTimingInfo:(id)a3;
- (void)_reportReceivedLowDiskNotification:(id)a3 forVolume:(id)a4;
- (void)addDailyStats:(id)a3;
- (void)addDailyValueForKey:(id)a3 value:(double)a4;
- (void)anonymizeAndFlush:(id)a3 name:(id)a4;
- (void)clear;
- (void)incrementDailyValueForKey:(id)a3;
- (void)load:(id)a3;
- (void)postDailyStats:(id)a3;
- (void)processPeriodicOperationResult:(id)a3;
- (void)processPurgeOperationResult:(id)a3;
- (void)processPurgeableOperationResult:(id)a3;
- (void)reportBroadcastLowDiskNotification:(id)a3 forVolume:(id)a4;
- (void)reportLowDiskFunctionalFailure:(id)a3 failureType:(int)a4 isRoot:(BOOL)a5;
- (void)reportPeriodic:(id)a3;
- (void)reportPurge:(id)a3;
- (void)reportPurgeTimingInfo:(id)a3;
- (void)reportPurgeable:(id)a3;
- (void)reportPurgeableTimingInfo:(id)a3;
- (void)reportReceivedLowDiskNotification:(id)a3 forVolume:(id)a4;
- (void)save;
- (void)sendAppCacheStats:(id)a3;
- (void)sendCAEvent:(id)a3 key:(id)a4 value:(id)a5 value2:(id)a6;
- (void)sendPurgeableAmountStats;
@end

@implementation CacheDeleteAnalytics

- (void)save
{
  v3 = [(CacheDeleteAnalytics *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __28__CacheDeleteAnalytics_save__block_invoke;
  block[3] = &unk_100060D58;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (id)persistPath
{
  v2 = cdCachesPath();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stringByAppendingPathComponent:@"CacheDeleteAnalytics.plist"];
  }

  else
  {
    v5 = CDGetLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unable to get persistPath to save analytics!", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

void __28__CacheDeleteAnalytics_save__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistPath];
  if (v2)
  {
    v3 = [*(a1 + 32) dailyStats];
    v4 = [v3 writeToFile:v2 atomically:0];

    if ((v4 & 1) == 0)
    {
      v5 = CDGetLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to persist CacheDelete analytic data!", v6, 2u);
      }
    }
  }
}

- (CacheDeleteAnalytics)initWithServiceProvider:(id)a3 withPurgeableResultCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = CacheDeleteAnalytics;
  v8 = [(CacheDeleteAnalytics *)&v22 init];
  if (v8)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    [(CacheDeleteAnalytics *)v8 setDailyStats:v9];

    v10 = +[NSDate date];
    v11 = [(CacheDeleteAnalytics *)v8 dailyStats];
    [v11 setObject:v10 forKeyedSubscript:@"DateStarted"];

    v12 = dispatch_queue_create("com.apple.cache_delete.analytics", 0);
    [(CacheDeleteAnalytics *)v8 setSerialQueue:v12];

    [(CacheDeleteAnalytics *)v8 setPurgeableResultCache:v7];
    [(CacheDeleteAnalytics *)v8 setServiceProvider:v6];
    v13 = +[PowerLogger sharedLogger];
    [(CacheDeleteAnalytics *)v8 setPowerLogger:v13];

    v14 = [(CacheDeleteAnalytics *)v8 powerLogger];

    if (!v14)
    {
      v15 = CDGetLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No power log support.", v21, 2u);
      }
    }

    v16 = [PurgeStatsReporter alloc];
    v17 = cdCachesPath();
    v18 = [v17 stringByAppendingPathComponent:@"CDPurgeStats"];
    v19 = [(PurgeStatsReporter *)v16 initWithPath:v18];
    [(CacheDeleteAnalytics *)v8 setPurgeStatReporter:v19];

    v8->_nandSize = copyNANDSizeBytes();
  }

  return v8;
}

- (void)load:(id)a3
{
  v4 = a3;
  v5 = [(CacheDeleteAnalytics *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __29__CacheDeleteAnalytics_load___block_invoke;
  v7[3] = &unk_100060B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __29__CacheDeleteAnalytics_load___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistPath];
  if (v2)
  {
    v3 = [NSDictionary dictionaryWithContentsOfFile:v2];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 mutableCopy];
      [*(a1 + 32) setDailyStats:v5];

      v6 = [*(a1 + 32) dailyStats];
      v7 = [v6 objectForKeyedSubscript:@"DateStarted"];

      if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (+[NSDate date](NSDate, "date"), v8 = objc_claimAutoreleasedReturnValue(), [v8 timeIntervalSinceDate:v7], v10 = v9, v8, v10 >= 86400.0))
      {
        [*(a1 + 32) _postDailyStats:*(a1 + 40)];
      }
    }

    else
    {
      v11 = CDGetLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *v14 = 0;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Did not load CacheDelete analytic data", v14, 2u);
      }

      v12 = objc_alloc_init(NSMutableDictionary);
      [*(a1 + 32) setDailyStats:v12];

      v7 = +[NSDate date];
      v13 = [*(a1 + 32) dailyStats];
      [v13 setObject:v7 forKeyedSubscript:@"DateStarted"];
    }
  }
}

- (void)clear
{
  v3 = [(CacheDeleteAnalytics *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CacheDeleteAnalytics *)self persistPath];
  if (v4)
  {
    v5 = +[NSFileManager defaultManager];
    v16 = 0;
    v6 = [v5 removeItemAtPath:v4 error:&v16];
    v7 = v16;

    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      goto LABEL_14;
    }

    v9 = [v7 domain];
    v10 = v9;
    if (v9 == NSPOSIXErrorDomain)
    {
      v11 = [v7 code];

      if (v11 == 2)
      {
        v12 = CDGetLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v18 = v4;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "No file to remove at %@", buf, 0xCu);
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

    v12 = CDGetLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = v4;
      v19 = 2112;
      v20 = v7;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to remove file at %@: %@", buf, 0x16u);
    }

LABEL_13:

LABEL_14:
  }

  v13 = [(CacheDeleteAnalytics *)self dailyStats];
  [v13 removeAllObjects];

  v14 = +[NSDate date];
  v15 = [(CacheDeleteAnalytics *)self dailyStats];
  [v15 setObject:v14 forKeyedSubscript:@"DateStarted"];
}

- (void)addDailyStats:(id)a3
{
  v4 = a3;
  v5 = [(CacheDeleteAnalytics *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __38__CacheDeleteAnalytics_addDailyStats___block_invoke;
  v7[3] = &unk_100060B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)postDailyStats:(id)a3
{
  v4 = a3;
  v5 = [(CacheDeleteAnalytics *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __39__CacheDeleteAnalytics_postDailyStats___block_invoke;
  v7[3] = &unk_100060B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)reportPurgeTimingInfo:(id)a3
{
  v4 = a3;
  v5 = [(CacheDeleteAnalytics *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __46__CacheDeleteAnalytics_reportPurgeTimingInfo___block_invoke;
  v7[3] = &unk_100060B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)reportPurgeableTimingInfo:(id)a3
{
  v4 = a3;
  v5 = [(CacheDeleteAnalytics *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __50__CacheDeleteAnalytics_reportPurgeableTimingInfo___block_invoke;
  v7[3] = &unk_100060B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

+ (id)currentSystemInfo
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __41__CacheDeleteAnalytics_currentSystemInfo__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals_11 != -1)
  {
    dispatch_once(&_MergedGlobals_11, block);
  }

  v2 = qword_10006E250;

  return v2;
}

void __41__CacheDeleteAnalytics_currentSystemInfo__block_invoke(uint64_t a1)
{
  v2 = [NSDictionary dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v8[0] = @"systemBuildVersion";
  v3 = [v2 objectForKey:@"ProductBuildVersion"];
  v9[0] = v3;
  v8[1] = @"systemProductName";
  v4 = [v2 objectForKey:@"ProductName"];
  v9[1] = v4;
  v8[2] = @"systemBuildType";
  v5 = [*(a1 + 32) buildType];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];
  v7 = qword_10006E250;
  qword_10006E250 = v6;
}

+ (id)buildType
{
  if (os_variant_has_internal_content())
  {
    v2 = @"Internal";
  }

  else
  {
    v2 = @"Release";
  }

  return v2;
}

- (id)fetchLowDiskStats
{
  v3 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v37 = [&off_100065C90 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v37)
  {
    v36 = *v52;
    do
    {
      v4 = 0;
      do
      {
        if (*v52 != v36)
        {
          objc_enumerationMutation(&off_100065C90);
        }

        v38 = v4;
        v5 = *(*(&v51 + 1) + 8 * v4);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v6 = [&off_100065CA8 countByEnumeratingWithState:&v47 objects:v57 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = 0;
          v9 = *v48;
          do
          {
            v10 = 0;
            v11 = v8;
            do
            {
              if (*v48 != v9)
              {
                objc_enumerationMutation(&off_100065CA8);
              }

              v8 = [NSString stringWithFormat:@"%@%@", *(*(&v47 + 1) + 8 * v10), v5];

              v12 = [(CacheDeleteAnalytics *)self dailyStats];
              v13 = [v12 objectForKeyedSubscript:v8];

              if (v13)
              {
                v14 = [(CacheDeleteAnalytics *)self dailyStats];
                v15 = [v14 objectForKeyedSubscript:v8];
                [v3 setObject:v15 forKeyedSubscript:v8];
              }

              v10 = v10 + 1;
              v11 = v8;
            }

            while (v7 != v10);
            v7 = [&off_100065CA8 countByEnumeratingWithState:&v47 objects:v57 count:16];
          }

          while (v7);
        }

        else
        {
          v8 = 0;
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v16 = [&off_100065CC0 countByEnumeratingWithState:&v43 objects:v56 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v44;
          do
          {
            v19 = 0;
            v20 = v8;
            do
            {
              if (*v44 != v18)
              {
                objc_enumerationMutation(&off_100065CC0);
              }

              v8 = [NSString stringWithFormat:@"%@%@", *(*(&v43 + 1) + 8 * v19), v5];

              v21 = [(CacheDeleteAnalytics *)self dailyStats];
              v22 = [v21 objectForKeyedSubscript:v8];

              if (v22)
              {
                v23 = [(CacheDeleteAnalytics *)self dailyStats];
                v24 = [v23 objectForKeyedSubscript:v8];
                [v3 setObject:v24 forKeyedSubscript:v8];
              }

              v19 = v19 + 1;
              v20 = v8;
            }

            while (v17 != v19);
            v17 = [&off_100065CC0 countByEnumeratingWithState:&v43 objects:v56 count:16];
          }

          while (v17);
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v25 = [(CacheDeleteAnalytics *)self dailyStats];
        v26 = [v25 countByEnumeratingWithState:&v39 objects:v55 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v40;
          do
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v40 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v39 + 1) + 8 * i);
              if ([v30 hasPrefix:@"lowDiskFunctionalFailure"])
              {
                v31 = [(CacheDeleteAnalytics *)self dailyStats];
                v32 = [v31 objectForKeyedSubscript:v30];

                if (v32)
                {
                  v33 = [(CacheDeleteAnalytics *)self dailyStats];
                  v34 = [v33 objectForKeyedSubscript:v30];
                  [v3 setObject:v34 forKeyedSubscript:v30];
                }
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v39 objects:v55 count:16];
          }

          while (v27);
        }

        v4 = v38 + 1;
      }

      while ((v38 + 1) != v37);
      v37 = [&off_100065C90 countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v37);
  }

  return v3;
}

- (id)fetchStorageStats
{
  v3 = objc_opt_new();
  v4 = [(CacheDeleteAnalytics *)self dailyPurgeableStats:1];
  [v3 addEntriesFromDictionary:v4];

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = [&off_100065CD8 countByEnumeratingWithState:&v103 objects:v107 count:16];
  if (v101)
  {
    v100 = *v104;
    do
    {
      v5 = 0;
      do
      {
        if (*v104 != v100)
        {
          objc_enumerationMutation(&off_100065CD8);
        }

        v6 = 0;
        v102 = v5;
        v7 = *(*(&v103 + 1) + 8 * v5);
        v8 = 1;
        do
        {
          v9 = [(CacheDeleteAnalytics *)self stringForUrgency:v8];
          v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"dailyPurgeReqs%s%s", [v7 UTF8String], v9);

          v11 = [(CacheDeleteAnalytics *)self dailyStats];
          v12 = [v11 objectForKeyedSubscript:v10];

          if (v12)
          {
            v13 = [(CacheDeleteAnalytics *)self dailyStats];
            v14 = [v13 objectForKeyedSubscript:v10];
            [v3 setObject:v14 forKeyedSubscript:v10];
          }

          v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"dailyPurgeSuccess%s%s", [v7 UTF8String], v9);

          v16 = [(CacheDeleteAnalytics *)self dailyStats];
          v17 = [v16 objectForKeyedSubscript:v15];

          if (v17)
          {
            v18 = [(CacheDeleteAnalytics *)self dailyStats];
            v19 = [v18 objectForKeyedSubscript:v15];
            [v3 setObject:v19 forKeyedSubscript:v15];
          }

          v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"dailyFSPurgeSuccess%s%s", [v7 UTF8String], v9);

          v21 = [(CacheDeleteAnalytics *)self dailyStats];
          v22 = [v21 objectForKeyedSubscript:v20];

          if (v22)
          {
            v23 = [(CacheDeleteAnalytics *)self dailyStats];
            v24 = [v23 objectForKeyedSubscript:v20];
            [v3 setObject:v24 forKeyedSubscript:v20];
          }

          v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"dailyPurgedBytes%s%s", [v7 UTF8String], v9);

          v26 = [(CacheDeleteAnalytics *)self dailyStats];
          v27 = [v26 objectForKeyedSubscript:v25];

          if (v27)
          {
            v28 = [(CacheDeleteAnalytics *)self dailyStats];
            v29 = [v28 objectForKeyedSubscript:v25];
            [v3 setObject:v29 forKeyedSubscript:v25];
          }

          v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"dailyPurgedReportedBytes%s%s", [v7 UTF8String], v9);

          v30 = [(CacheDeleteAnalytics *)self dailyStats];
          v31 = [v30 objectForKeyedSubscript:v6];

          if (v31)
          {
            v32 = [(CacheDeleteAnalytics *)self dailyStats];
            v33 = [v32 objectForKeyedSubscript:v6];
            [v3 setObject:v33 forKeyedSubscript:v6];
          }

          v8 = (v8 + 1);
        }

        while (v8 != 4);
        v34 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"dailyPurgeReqs%s%s", [v7 UTF8String], "Tot");

        v35 = [(CacheDeleteAnalytics *)self dailyStats];
        v36 = [v35 objectForKeyedSubscript:v34];

        if (v36)
        {
          v37 = [(CacheDeleteAnalytics *)self dailyStats];
          v38 = [v37 objectForKeyedSubscript:v34];
          [v3 setObject:v38 forKeyedSubscript:v34];
        }

        v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"dailyPurgeSuccess%s%s", [v7 UTF8String], "Tot");

        v40 = [(CacheDeleteAnalytics *)self dailyStats];
        v41 = [v40 objectForKeyedSubscript:v39];

        if (v41)
        {
          v42 = [(CacheDeleteAnalytics *)self dailyStats];
          v43 = [v42 objectForKeyedSubscript:v39];
          [v3 setObject:v43 forKeyedSubscript:v39];
        }

        v44 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"dailyFSPurgeSuccess%s%s", [v7 UTF8String], "Tot");

        v45 = [(CacheDeleteAnalytics *)self dailyStats];
        v46 = [v45 objectForKeyedSubscript:v44];

        if (v46)
        {
          v47 = [(CacheDeleteAnalytics *)self dailyStats];
          v48 = [v47 objectForKeyedSubscript:v44];
          [v3 setObject:v48 forKeyedSubscript:v44];
        }

        v49 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"dailyPurgedBytes%s%s", [v7 UTF8String], "Tot");

        v50 = [(CacheDeleteAnalytics *)self dailyStats];
        v51 = [v50 objectForKeyedSubscript:v49];

        if (v51)
        {
          v52 = [(CacheDeleteAnalytics *)self dailyStats];
          v53 = [v52 objectForKeyedSubscript:v49];
          [v3 setObject:v53 forKeyedSubscript:v49];
        }

        v54 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"dailyPurgedReportedBytes%s%s", [v7 UTF8String], "Tot");

        v55 = [(CacheDeleteAnalytics *)self dailyStats];
        v56 = [v55 objectForKeyedSubscript:v54];

        if (v56)
        {
          v57 = [(CacheDeleteAnalytics *)self dailyStats];
          v58 = [v57 objectForKeyedSubscript:v54];
          [v3 setObject:v58 forKeyedSubscript:v54];
        }

        v5 = v102 + 1;
      }

      while ((v102 + 1) != v101);
      v101 = [&off_100065CD8 countByEnumeratingWithState:&v103 objects:v107 count:16];
    }

    while (v101);
  }

  v59 = [(CacheDeleteAnalytics *)self dailyStats];
  v60 = [v59 objectForKeyedSubscript:@"dailyActiveTimeS"];

  if (v60)
  {
    v61 = [(CacheDeleteAnalytics *)self dailyStats];
    v62 = [v61 objectForKeyedSubscript:@"dailyActiveTimeS"];
    [v3 setObject:v62 forKeyedSubscript:@"dailyActiveTimeS"];
  }

  v63 = [(CacheDeleteAnalytics *)self dailyStats];
  v64 = [v63 objectForKeyedSubscript:@"dailyActiveTimePurgingS"];

  if (v64)
  {
    v65 = [(CacheDeleteAnalytics *)self dailyStats];
    v66 = [v65 objectForKeyedSubscript:@"dailyActiveTimePurgingS"];
    [v3 setObject:v66 forKeyedSubscript:@"dailyActiveTimePurgingS"];
  }

  v67 = [(CacheDeleteAnalytics *)self dailyStats];
  v68 = [v67 objectForKeyedSubscript:@"dailyNumLowDiskPurges%s"];

  if (v68)
  {
    v69 = [(CacheDeleteAnalytics *)self dailyStats];
    v70 = [v69 objectForKeyedSubscript:@"dailyNumLowDiskPurges%s"];
    [v3 setObject:v70 forKeyedSubscript:@"dailyNumLowDiskPurges%s"];
  }

  v71 = [(CacheDeleteAnalytics *)self dailyStats];
  v72 = [v71 objectForKeyedSubscript:@"dailyNumLowDiskSuccess%s"];

  if (v72)
  {
    v73 = [(CacheDeleteAnalytics *)self dailyStats];
    v74 = [v73 objectForKeyedSubscript:@"dailyNumLowDiskSuccess%s"];
    [v3 setObject:v74 forKeyedSubscript:@"dailyNumLowDiskSuccess%s"];
  }

  v75 = [(CacheDeleteAnalytics *)self dailyStats];
  v76 = [v75 objectForKeyedSubscript:@"dailyNumVeryLowDiskPurges%s"];

  if (v76)
  {
    v77 = [(CacheDeleteAnalytics *)self dailyStats];
    v78 = [v77 objectForKeyedSubscript:@"dailyNumVeryLowDiskPurges%s"];
    [v3 setObject:v78 forKeyedSubscript:@"dailyNumVeryLowDiskPurges%s"];
  }

  v79 = [(CacheDeleteAnalytics *)self dailyStats];
  v80 = [v79 objectForKeyedSubscript:@"dailyNumVeryLowDiskSuccess%s"];

  if (v80)
  {
    v81 = [(CacheDeleteAnalytics *)self dailyStats];
    v82 = [v81 objectForKeyedSubscript:@"dailyNumVeryLowDiskSuccess%s"];
    [v3 setObject:v82 forKeyedSubscript:@"dailyNumVeryLowDiskSuccess%s"];
  }

  v83 = [(CacheDeleteAnalytics *)self dailyStats];
  v84 = [v83 objectForKeyedSubscript:@"dailyNumNearLowDiskPurges%s"];

  if (v84)
  {
    v85 = [(CacheDeleteAnalytics *)self dailyStats];
    v86 = [v85 objectForKeyedSubscript:@"dailyNumNearLowDiskPurges%s"];
    [v3 setObject:v86 forKeyedSubscript:@"dailyNumNearLowDiskPurges%s"];
  }

  v87 = [(CacheDeleteAnalytics *)self dailyStats];
  v88 = [v87 objectForKeyedSubscript:@"dailyNumNearLowDiskSuccess%s"];

  if (v88)
  {
    v89 = [(CacheDeleteAnalytics *)self dailyStats];
    v90 = [v89 objectForKeyedSubscript:@"dailyNumNearLowDiskSuccess%s"];
    [v3 setObject:v90 forKeyedSubscript:@"dailyNumNearLowDiskSuccess%s"];
  }

  v91 = [(CacheDeleteAnalytics *)self dailyStats];
  v92 = [v91 objectForKeyedSubscript:@"dailyNumIdlePurgeDiskPurges%s"];

  if (v92)
  {
    v93 = [(CacheDeleteAnalytics *)self dailyStats];
    v94 = [v93 objectForKeyedSubscript:@"dailyNumNearLowDiskPurges%s"];
    [v3 setObject:v94 forKeyedSubscript:@"dailyNumIdlePurgeDiskPurges%s"];
  }

  v95 = [(CacheDeleteAnalytics *)self dailyStats];
  v96 = [v95 objectForKeyedSubscript:@"dailyNumIdlePurgeDiskSuccess%s"];

  if (v96)
  {
    v97 = [(CacheDeleteAnalytics *)self dailyStats];
    v98 = [v97 objectForKeyedSubscript:@"dailyNumIdlePurgeDiskSuccess%s"];
    [v3 setObject:v98 forKeyedSubscript:@"dailyNumIdlePurgeDiskSuccess%s"];
  }

  return v3;
}

- (id)fetchTimingStats:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(CacheDeleteAnalytics *)self dailyPurgeableStats:0];
  v33 = v5;
  [v5 addEntriesFromDictionary:v6];

  v28 = v4;
  v7 = [v4 allKeys];
  v8 = [NSSet setWithArray:v7];
  v9 = [v8 mutableCopy];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v9;
  v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  v10 = 0;
  if (v31)
  {
    v30 = *v39;
    do
    {
      v11 = 0;
      do
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v11;
        v12 = *(*(&v38 + 1) + 8 * v11);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v13 = [&off_100065CF0 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v35;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v35 != v15)
              {
                objc_enumerationMutation(&off_100065CF0);
              }

              v17 = *(*(&v34 + 1) + 8 * i);
              v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"purge_time_%s_%s", [v17 UTF8String], objc_msgSend(v12, "UTF8String"));

              v19 = [(CacheDeleteAnalytics *)self dailyStats];
              v20 = [v19 objectForKeyedSubscript:v18];

              if (v20)
              {
                v21 = [(CacheDeleteAnalytics *)self dailyStats];
                v22 = [v21 objectForKeyedSubscript:v18];
                [v33 setObject:v22 forKeyedSubscript:v18];
              }

              v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"purgeable_time_%s_%s", [v17 UTF8String], objc_msgSend(v12, "UTF8String"));

              v23 = [(CacheDeleteAnalytics *)self dailyStats];
              v24 = [v23 objectForKeyedSubscript:v10];

              if (v24)
              {
                v25 = [(CacheDeleteAnalytics *)self dailyStats];
                v26 = [v25 objectForKeyedSubscript:v10];
                [v33 setObject:v26 forKeyedSubscript:v10];
              }
            }

            v14 = [&off_100065CF0 countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v14);
        }

        v11 = v32 + 1;
      }

      while ((v32 + 1) != v31);
      v31 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v31);
  }

  return v33;
}

- (id)fetchApplicationUsageStats
{
  v3 = objc_opt_new();
  v4 = [(CacheDeleteAnalytics *)self dailyPurgeableStats:0];
  [v3 addEntriesFromDictionary:v4];

  return v3;
}

- (id)fetchAdditionalStats
{
  v3 = objc_opt_new();
  v4 = [(CacheDeleteAnalytics *)self dailyPurgeableStats:0];
  [v3 addEntriesFromDictionary:v4];

  v5 = [(CacheDeleteAnalytics *)self systemUsageStats];
  if (v5)
  {
    [v3 addEntriesFromDictionary:v5];
  }

  v6 = [(CacheDeleteAnalytics *)self cacheManagementUsageStats];
  if (v6)
  {
    [v3 addEntriesFromDictionary:v6];
  }

  return v3;
}

- (void)sendCAEvent:(id)a3 key:(id)a4 value:(id)a5 value2:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = [NSMutableDictionary dictionaryWithCapacity:2];
  [v13 setObject:v12 forKey:@"name"];

  if (v10)
  {
    [v13 setObject:v10 forKey:@"value"];
  }

  if (v11)
  {
    [v13 setObject:v11 forKey:@"value_level4"];
  }

  v15 = v13;
  v14 = v13;
  AnalyticsSendEventLazy();
}

- (void)sendPurgeableAmountStats
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(CacheDeleteAnalytics *)self dailyStats];
  v3 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v3)
  {
    v4 = v3;
    v33 = 0;
    v5 = 0;
    v6 = @"dailyPurgeReqs";
    v7 = *v37;
    v8 = @"dailyPurgeableAmount";
    do
    {
      v9 = 0;
      v31 = v4;
      do
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v36 + 1) + 8 * v9);
        if (([v10 containsString:v6] & 1) != 0 || (objc_msgSend(v10, "containsString:", @"dailyPurgedBytes") & 1) != 0 || objc_msgSend(v10, "containsString:", @"dailyPurgedReportedBytes"))
        {
          v11 = [(CacheDeleteAnalytics *)self dailyStats];
          v12 = [v11 objectForKeyedSubscript:v10];
          [(CacheDeleteAnalytics *)self sendCAEvent:@"com.apple.cachedelete.purgeablestats" key:v10 value:v12 value2:0];
        }

        if ([v10 containsString:v8])
        {
          v13 = [(CacheDeleteAnalytics *)self dailyStats];
          v14 = [v13 objectForKeyedSubscript:v10];
          [v14 objectForKeyedSubscript:@"LEVEL3"];
          v15 = v7;
          v16 = v8;
          v18 = v17 = v6;

          v19 = [(CacheDeleteAnalytics *)self dailyStats];
          v20 = [v19 objectForKeyedSubscript:v10];
          v21 = [v20 objectForKeyedSubscript:@"LEVEL4"];

          [(CacheDeleteAnalytics *)self sendCAEvent:@"com.apple.cachedelete.purgeablestats" key:v10 value:v18 value2:v21];
          v33 = v21;
          v5 = v18;
          v6 = v17;
          v8 = v16;
          v7 = v15;
          v4 = v31;
        }

        v9 = v9 + 1;
      }

      while (v4 != v9);
      v4 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v4);
  }

  else
  {
    v33 = 0;
    v5 = 0;
  }

  v22 = [(CacheDeleteAnalytics *)self dailyStats];
  v23 = [v22 allKeys];
  v24 = [v23 containsObject:@"dailyPurgeableAmountTotal"];

  if (v24)
  {
    v25 = [NSNumber numberWithUnsignedLongLong:[(CacheDeleteAnalytics *)self nandSize]];
    [(CacheDeleteAnalytics *)self sendCAEvent:@"com.apple.cachedelete.purgeablestats" key:@"deviceNandSize" value:v25 value2:0];

    v26 = getRootVolume();
    v27 = [CacheDeleteDaemonVolume volumeWithPath:v26];

    if (v27)
    {
      v34 = 0;
      v35 = 0;
      [v27 containerTotalSize:&v34 andFreespace:&v35];
      v28 = [NSNumber numberWithUnsignedLongLong:v34];
      [(CacheDeleteAnalytics *)self sendCAEvent:@"com.apple.cachedelete.purgeablestats" key:@"dailyContainerSize" value:v28 value2:0];

      v29 = [NSNumber numberWithUnsignedLongLong:v35];
      [(CacheDeleteAnalytics *)self sendCAEvent:@"com.apple.cachedelete.purgeablestats" key:@"dailyContainerFreespace" value:v29 value2:0];

      v30 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v27 freespace]);
      [(CacheDeleteAnalytics *)self sendCAEvent:@"com.apple.cachedelete.purgeablestats" key:@"dailyFreeBytesRoot" value:v30 value2:0];
    }
  }
}

- (void)sendAppCacheStats:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 containsString:@"cacheDir_outHardlinks"] & 1) != 0 || objc_msgSend(v9, "containsString:", @"cacheDir_size"))
        {
          v10 = [v4 objectForKeyedSubscript:v9];
          [(CacheDeleteAnalytics *)self sendCAEvent:@"com.apple.cachedelete.purgeablestats" key:v9 value:v10 value2:0];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_addDailyStats:(id)a3
{
  v4 = a3;
  v5 = [(CacheDeleteAnalytics *)self dailyStats];
  [v5 addEntriesFromDictionary:v4];
}

- (void)_postDailyStats:(id)a3
{
  v10 = a3;
  v4 = [(CacheDeleteAnalytics *)self dailyStats];
  [v4 removeObjectForKey:@"DateStarted"];

  [(CacheDeleteAnalytics *)self sendPurgeableAmountStats];
  if (+[CacheDeleteAnalytics isDataCollectionEnabled])
  {
    v5 = [(CacheDeleteAnalytics *)self purgeStatReporter];
    [v5 sendAndResetStats];

    v6 = [(CacheDeleteAnalytics *)self fetchStorageStats];
    v7 = [(CacheDeleteAnalytics *)self fetchTimingStats:v10];
    v8 = [(CacheDeleteAnalytics *)self fetchAdditionalStats];
    v9 = [(CacheDeleteAnalytics *)self fetchLowDiskStats];
    [v6 addEntriesFromDictionary:v9];
    [v7 addEntriesFromDictionary:v9];
    [v8 addEntriesFromDictionary:v9];
    [(CacheDeleteAnalytics *)self anonymizeAndFlush:v6 name:@"cacheDeleteDailyStorageReport"];
    [(CacheDeleteAnalytics *)self anonymizeAndFlush:v7 name:@"cacheDeleteDailyTimingReport"];
    [(CacheDeleteAnalytics *)self anonymizeAndFlush:v8 name:@"cacheDeleteDailyAdditionalReport"];
  }

  [(CacheDeleteAnalytics *)self clear];
}

- (void)anonymizeAndFlush:(id)a3 name:(id)a4
{
  v5 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __47__CacheDeleteAnalytics_anonymizeAndFlush_name___block_invoke;
  v9[3] = &unk_100061600;
  v9[4] = self;
  v6 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v10 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [objc_opt_class() currentSystemInfo];
  [v6 addEntriesFromDictionary:v7];

  v8 = v6;
  AnalyticsSendEventLazy();
}

void __47__CacheDeleteAnalytics_anonymizeAndFlush_name___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [*(a1 + 32) roundNumber:v6 toSignificantDigits:2];
    [v7 doubleValue];
    [*(a1 + 40) setObject:v7 forKey:v5];
  }

  else
  {
    v7 = CDGetLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not sending %@ to CA as it's not an NSNumber", &v8, 0xCu);
    }
  }
}

- (void)_reportPurgeTimingInfo:(id)a3
{
  v9 = a3;
  -[CacheDeleteAnalytics secondsFrom:to:](self, "secondsFrom:to:", [v9 monotonicBegin], objc_msgSend(v9, "monotonicEnd"));
  v4 = [(CacheDeleteAnalytics *)self stringForTime:?];
  v5 = [NSString stringWithUTF8String:v4];
  v6 = [v5 isEqualToString:@"OK"];

  if ((v6 & 1) == 0)
  {
    v7 = [v9 serviceName];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"purge_time_%s_%s", v4, [v7 UTF8String]);

    [(CacheDeleteAnalytics *)self incrementDailyValueForKey:v8];
  }
}

- (void)_reportPurgeableTimingInfo:(id)a3
{
  v9 = a3;
  -[CacheDeleteAnalytics secondsFrom:to:](self, "secondsFrom:to:", [v9 monotonicBegin], objc_msgSend(v9, "monotonicEnd"));
  v4 = [(CacheDeleteAnalytics *)self stringForTime:?];
  v5 = [NSString stringWithUTF8String:v4];
  v6 = [v5 isEqualToString:@"OK"];

  if ((v6 & 1) == 0)
  {
    v7 = [v9 serviceName];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"purgeable_time_%s_%s", v4, [v7 UTF8String]);

    [(CacheDeleteAnalytics *)self incrementDailyValueForKey:v8];
  }
}

- (void)reportPurge:(id)a3
{
  v4 = a3;
  v5 = [(CacheDeleteAnalytics *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __36__CacheDeleteAnalytics_reportPurge___block_invoke;
  v7[3] = &unk_100060B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)reportPurgeable:(id)a3
{
  v4 = a3;
  v5 = [(CacheDeleteAnalytics *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __40__CacheDeleteAnalytics_reportPurgeable___block_invoke;
  v7[3] = &unk_100060B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)reportPeriodic:(id)a3
{
  v4 = a3;
  v5 = [(CacheDeleteAnalytics *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __39__CacheDeleteAnalytics_reportPeriodic___block_invoke;
  v7[3] = &unk_100060B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (double)round:(double)a3 toSignificantDigits:(int)a4
{
  result = 0.0;
  if (a3 != 0.0)
  {
    v7 = log10(fabs(a3));
    v8 = __exp10(a4 - ceil(v7));
    return round(v8 * a3) / v8;
  }

  return result;
}

- (double)machTimeToSeconds:(unint64_t)a3
{
  if (qword_10006E260 != -1)
  {
    dispatch_once(&qword_10006E260, &__block_literal_global_1);
  }

  v4 = [NSNumber numberWithUnsignedLongLong:a3 / 0x3B9ACA00];
  [v4 doubleValue];
  LODWORD(v5) = dword_10006E258;
  LODWORD(v6) = *algn_10006E25C;
  v8 = v7 * v5 / v6;

  return v8;
}

- (void)incrementDailyValueForKey:(id)a3
{
  v8 = a3;
  v4 = [(CacheDeleteAnalytics *)self dailyStats];
  v5 = [v4 objectForKeyedSubscript:v8];

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v5 = &off_1000655C0;
  }

  v6 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v5 longValue] + 1);

  v7 = [(CacheDeleteAnalytics *)self dailyStats];
  [v7 setObject:v6 forKeyedSubscript:v8];
}

- (void)addDailyValueForKey:(id)a3 value:(double)a4
{
  v12 = a3;
  if (a4 < 0.0)
  {
    v6 = [NSString stringWithFormat:@"addDailyValueForKey: Negative value (%f) for total measured bytes in: %@", *&a4, v12];
    CDSimulateCrash();
  }

  v7 = [(CacheDeleteAnalytics *)self dailyStats];
  v8 = [v7 objectForKeyedSubscript:v12];

  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v8 = &off_100065D68;
  }

  [v8 doubleValue];
  v10 = [NSNumber numberWithDouble:v9 + a4];

  v11 = [(CacheDeleteAnalytics *)self dailyStats];
  [v11 setObject:v10 forKeyedSubscript:v12];
}

- (const)stringForUrgency:(int)a3
{
  if (a3 > 4)
  {
    return "???";
  }

  else
  {
    return (&off_100061730)[a3];
  }
}

- (const)stringForTime:(double)a3
{
  if (((125 * a3) & 0x1FFFFFFFFFFFFFFFLL) <= 0x270)
  {
    v3 = "OK";
  }

  else
  {
    v3 = "Verylate";
  }

  if (1000 * a3 - 1000 >= 0xFA0)
  {
    return v3;
  }

  else
  {
    return "Late";
  }
}

- (BOOL)isRootVolume:(id)a3
{
  v3 = a3;
  v4 = getRootVolume();
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)dailyPurgeableStats:(BOOL)a3
{
  v79 = a3;
  v4 = getRootVolume();
  v5 = [CacheDeleteDaemonVolume volumeWithPath:v4];

  v6 = [v5 freespace];
  v7 = [v5 size];
  v8 = objc_alloc_init(NSMutableDictionary);
  v73 = v7;
  v9 = [NSNumber numberWithUnsignedLongLong:v7];
  [v8 setObject:v9 forKeyedSubscript:@"dailyTotalBytesRoot"];

  v74 = v6;
  v10 = [NSNumber numberWithUnsignedLongLong:v6];
  [v8 setObject:v10 forKeyedSubscript:@"dailyFreeBytesRoot"];

  v84 = self;
  v11 = [NSNumber numberWithUnsignedLongLong:[(CacheDeleteAnalytics *)self nandSize]];
  [v8 setObject:v11 forKeyedSubscript:@"deviceNandSize"];

  v12 = 0;
  v13 = 1;
  v14 = v5;
  v75 = v5;
  v83 = v8;
  do
  {
    v15 = [(CacheDeleteAnalytics *)v84 purgeableResultCache];
    v16 = [v15 recentInfoForVolume:v14 atUrgency:v13];

    v17 = v16;
    v18 = [v16 objectForKeyedSubscript:@"CACHE_DELETE_TOTAL_AVAILABLE"];
    v81 = [NSString stringWithFormat:@"dailyPurgeableBytes%s", [(CacheDeleteAnalytics *)v84 stringForUrgency:v13]];
    if ([v18 unsignedLongLongValue] > v12)
    {
      v12 = [v18 unsignedLongLongValue];
    }

    if (v79)
    {
      v78 = v12;
      v76 = v18;
      [v8 setObject:v18 forKeyedSubscript:v81];
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v77 = v17;
      v19 = v17;
      v20 = [v19 countByEnumeratingWithState:&v98 objects:v105 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v99;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v99 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v98 + 1) + 8 * i);
            if (([v24 isEqualToString:@"CACHE_DELETE_VOLUME"] & 1) == 0 && (objc_msgSend(v24, "isEqualToString:", @"CACHE_DELETE_TOTAL_AVAILABLE") & 1) == 0)
            {
              v8 = v83;
              v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"dailyItemizedPurgeableBytes%s_%s", -[CacheDeleteAnalytics stringForUrgency:](v84, "stringForUrgency:", v13), [v24 UTF8String]);
              v26 = [v19 objectForKeyedSubscript:v24];
              [v83 setObject:v26 forKeyedSubscript:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v98 objects:v105 count:16];
        }

        while (v21);
      }

      v14 = v75;
      v18 = v76;
      v17 = v77;
      v12 = v78;
    }

    v13 = (v13 + 1);
  }

  while (v13 != 4);
  v27 = [NSNumber numberWithUnsignedLongLong:v12];
  [v8 setObject:v27 forKeyedSubscript:@"dailyPurgeableBytesTot"];

  v28 = [NSNumber numberWithUnsignedLongLong:&v6[v12]];
  [v8 setObject:v28 forKeyedSubscript:@"dailyEffectiveFreeBytesRoot"];

  v29 = [NSNumber numberWithDouble:v12 / v73];
  [v8 setObject:v29 forKeyedSubscript:@"dailyPurgeableOverTotalRatioRoot"];

  v30 = [NSNumber numberWithDouble:v12 / (v73 - v74)];
  [v8 setObject:v30 forKeyedSubscript:@"dailyPurgeableOverUsedRatioRoot"];

  v31 = [NSNumber numberWithDouble:v12 / &v74[v12]];
  [v8 setObject:v31 forKeyedSubscript:@"dailyPurgeableOverEffectiveFreeRatioRoot"];

  v32 = lowSpaceVolumes();
  v33 = [v32 objectForKeyedSubscript:@"CD_NEAR_LOW_DISK_EVENT"];
  v34 = +[NSMutableArray array];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v35 = v33;
  v36 = [v35 countByEnumeratingWithState:&v94 objects:v104 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v95;
    do
    {
      for (j = 0; j != v37; j = j + 1)
      {
        if (*v95 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v94 + 1) + 8 * j);
        v41 = [v40 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];

        if (v41)
        {
          v42 = [v40 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
          [v34 addObject:v42];
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v94 objects:v104 count:16];
    }

    while (v37);
  }

  v85 = v34;
  v80 = v35;

  v43 = [v32 objectForKeyedSubscript:@"CD_LOWDISK_EVENT"];
  v44 = +[NSMutableArray array];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v45 = v43;
  v46 = [v45 countByEnumeratingWithState:&v90 objects:v103 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v91;
    do
    {
      for (k = 0; k != v47; k = k + 1)
      {
        if (*v91 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v90 + 1) + 8 * k);
        v51 = [v50 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];

        if (v51)
        {
          v52 = [v50 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
          [v44 addObject:v52];
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v90 objects:v103 count:16];
    }

    while (v47);
  }

  v82 = v32;
  v53 = [v32 objectForKeyedSubscript:@"CD_VERYLOWDISK_EVENT"];
  v54 = +[NSMutableArray array];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v55 = v53;
  v56 = [v55 countByEnumeratingWithState:&v86 objects:v102 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v87;
    do
    {
      for (m = 0; m != v57; m = m + 1)
      {
        if (*v87 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = *(*(&v86 + 1) + 8 * m);
        v61 = [v60 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];

        if (v61)
        {
          v62 = [v60 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
          [v54 addObject:v62];
        }
      }

      v57 = [v55 countByEnumeratingWithState:&v86 objects:v102 count:16];
    }

    while (v57);
  }

  v63 = [v75 mountPoint];
  v64 = [v85 containsObject:v63];

  if (v64)
  {
    v65 = &off_100065D78;
  }

  else
  {
    v65 = &off_100065D68;
  }

  [v83 setObject:v65 forKeyedSubscript:@"dailyIsNearLowDiskRoot"];
  v66 = [v75 mountPoint];
  v67 = [v44 containsObject:v66];

  if (v67)
  {
    v68 = &off_100065D78;
  }

  else
  {
    v68 = &off_100065D68;
  }

  [v83 setObject:v68 forKeyedSubscript:@"dailyIsLowDiskRoot"];
  v69 = [v75 mountPoint];
  v70 = [v54 containsObject:v69];

  if (v70)
  {
    v71 = &off_100065D78;
  }

  else
  {
    v71 = &off_100065D68;
  }

  [v83 setObject:v71 forKeyedSubscript:@"dailyIsVeryLowDiskRoot"];

  return v83;
}

- (id)systemUsageStats
{
  v2 = [(CacheDeleteAnalytics *)self serviceProvider];
  v28 = [v2 serviceWithID:@"com.apple.mobile.cache_delete_daily"];

  if (v28)
  {
    v3 = dispatch_semaphore_create(0);
    v4 = dispatch_time(0, 120000000000);
    *v44 = 0;
    v45 = v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__0;
    v48 = __Block_byref_object_dispose__0;
    v49 = 0;
    v5 = CDGetLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting analytic data from daily service", buf, 2u);
    }

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = __40__CacheDeleteAnalytics_systemUsageStats__block_invoke;
    v41[3] = &unk_100061670;
    v43 = v44;
    v6 = v3;
    v42 = v6;
    [v28 serviceCallback:&off_100065A90 replyBlock:v41];
    oslog = v6;
    if (dispatch_semaphore_wait(v6, v4))
    {
      v31 = &off_100065AB8;
LABEL_17:

      _Block_object_dispose(v44, 8);
      goto LABEL_18;
    }

    v7 = *(v45 + 5);
    if (!v7)
    {
      v31 = 0;
      goto LABEL_17;
    }

    v8 = [v7 objectForKeyedSubscript:@"CACHE_DELETE_ERROR"];
    if (v8)
    {
    }

    else
    {
      v10 = [*(v45 + 5) objectForKeyedSubscript:@"CACHE_DELETE_ANALYTICS_REPORT"];
      v11 = v10 == 0;

      if (!v11)
      {
        v31 = objc_alloc_init(NSMutableDictionary);
        [*(v45 + 5) objectForKeyedSubscript:@"CACHE_DELETE_ANALYTICS_REPORT"];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        obj = v38 = 0u;
        v27 = [obj countByEnumeratingWithState:&v37 objects:v53 count:16];
        if (v27)
        {
          v25 = *v38;
          do
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v38 != v25)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v37 + 1) + 8 * i);
              v33 = 0u;
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v13 = [obj objectForKeyedSubscript:v12, v25, oslog];
              v14 = [v13 countByEnumeratingWithState:&v33 objects:v52 count:16];
              if (v14)
              {
                v15 = *v34;
                v30 = v13;
                do
                {
                  for (j = 0; j != v14; j = j + 1)
                  {
                    if (*v34 != v15)
                    {
                      objc_enumerationMutation(v30);
                    }

                    v17 = *(*(&v33 + 1) + 8 * j);
                    v18 = [obj objectForKeyedSubscript:v12];
                    v19 = [v18 objectForKeyedSubscript:v17];
                    v20 = [v12 capitalizedString];
                    v21 = [v20 stringByAppendingString:@"_"];
                    v22 = [v17 capitalizedString];
                    v23 = [v21 stringByAppendingString:v22];
                    [v31 setObject:v19 forKey:v23];
                  }

                  v13 = v30;
                  v14 = [v30 countByEnumeratingWithState:&v33 objects:v52 count:16];
                }

                while (v14);
              }
            }

            v27 = [obj countByEnumeratingWithState:&v37 objects:v53 count:16];
          }

          while (v27);
        }

        goto LABEL_15;
      }
    }

    obj = CDGetLogHandle();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      v24 = [*(v45 + 5) objectForKeyedSubscript:@"CACHE_DELETE_ERROR"];
      *buf = 138412290;
      v51 = v24;
      _os_log_error_impl(&_mh_execute_header, obj, OS_LOG_TYPE_ERROR, "Failed to get system usage stats! %@", buf, 0xCu);
    }

    v31 = 0;
LABEL_15:

    goto LABEL_17;
  }

  oslog = CDGetLogHandle();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    *v44 = 0;
    _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Cannot find cache_delete_daily service!", v44, 2u);
  }

  v31 = 0;
LABEL_18:

  return v31;
}

void __40__CacheDeleteAnalytics_systemUsageStats__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received response from daily service analytics data request", v8, 2u);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)cacheManagementUsageStats
{
  v2 = [(CacheDeleteAnalytics *)self serviceProvider];
  v3 = [v2 serviceWithID:@"com.apple.mobile.cache_delete_managed_assets"];

  if (v3)
  {
    v38[0] = @"CACHE_DELETE_OPERATIONS";
    v36 = @"CACHE_DELETE_ANALYTICS_REPORT";
    v34 = @"CACHE_DELETE_VOLUME";
    v4 = getRootVolume();
    v35 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v37 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v38[1] = @"CACHE_DELETE_QOS";
    v39[0] = v6;
    v39[1] = &off_1000655D8;
    v7 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];

    v8 = dispatch_semaphore_create(0);
    v9 = dispatch_time(0, 120000000000);
    *v26 = 0;
    v27 = v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__0;
    v30 = __Block_byref_object_dispose__0;
    v31 = 0;
    v10 = CDGetLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting analytic data from cache management service", buf, 2u);
    }

    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = __49__CacheDeleteAnalytics_cacheManagementUsageStats__block_invoke;
    v23 = &unk_100061670;
    v25 = v26;
    v11 = v8;
    v24 = v11;
    [v3 serviceCallback:v7 replyBlock:&v20];
    if (dispatch_semaphore_wait(v11, v9))
    {
      v12 = &off_100065AE0;
    }

    else
    {
      v13 = *(v27 + 5);
      if (v13)
      {
        v14 = [v13 objectForKeyedSubscript:{@"CACHE_DELETE_ERROR", v20, v21, v22, v23}];
        if (v14)
        {
        }

        else
        {
          v16 = [*(v27 + 5) objectForKeyedSubscript:@"CACHE_DELETE_ANALYTICS_REPORT"];
          v17 = v16 == 0;

          if (!v17)
          {
            v18 = CDGetLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [*(v27 + 5) objectForKeyedSubscript:@"CACHE_DELETE_ANALYTICS_REPORT"];
              *buf = 138412290;
              v33 = v19;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received %@", buf, 0xCu);
            }

            v12 = [*(v27 + 5) objectForKeyedSubscript:@"CACHE_DELETE_ANALYTICS_REPORT"];
            goto LABEL_13;
          }
        }
      }

      v12 = 0;
    }

LABEL_13:

    _Block_object_dispose(v26, 8);
    goto LABEL_14;
  }

  v7 = CDGetLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v26 = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find cache_delete_app_container_caches service!", v26, 2u);
  }

  v12 = 0;
LABEL_14:

  return v12;
}

void __49__CacheDeleteAnalytics_cacheManagementUsageStats__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received response from cache management service analytics data request", v8, 2u);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)getLowDiskLevelFromPurgeResult:(id)a3
{
  v3 = a3;
  if ([v3 isVeryLowDisk])
  {
    v4 = 3;
  }

  else if ([v3 isLowDisk])
  {
    v4 = 2;
  }

  else if ([v3 isNearLowDisk])
  {
    v4 = 1;
  }

  else if ([v3 isIdlePurgeDisk])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSNumber numberWithInt:v4];

  return v5;
}

- (void)processPurgeOperationResult:(id)a3
{
  v4 = a3;
  v105 = self;
  v5 = [(CacheDeleteAnalytics *)self purgeStatReporter];
  v104 = [v5 generationNumber];

  v91 = [v4 monotonicEnd];
  v90 = [v4 monotonicBegin];
  v6 = gTimebaseConversion;
  v7 = [v4 monotonicEnd];
  v8 = [v4 monotonicBegin];
  v9 = gTimebaseConversion;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v10 = [v4 volumeNames];
  v11 = [v10 countByEnumeratingWithState:&v122 objects:v133 count:16];
  if (v11)
  {
    v12 = *v123;
    v102 = "Root";
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v123 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if ([(CacheDeleteAnalytics *)v105 isRootVolume:*(*(&v122 + 1) + 8 * i)])
        {
          v89 = 1;
          goto LABEL_12;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v122 objects:v133 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v89 = 0;
    v102 = "Ext";
  }

  else
  {
    v89 = 0;
    v102 = "Ext";
  }

LABEL_12:

  v14 = -[CacheDeleteAnalytics stringForUrgency:](v105, "stringForUrgency:", [v4 level]);
  v15 = [NSString stringWithFormat:@"dailyPurgeReqs%s%s", v102, v14];
  [(CacheDeleteAnalytics *)v105 incrementDailyValueForKey:v15];
  if ([v4 level] > 3)
  {
    v101 = v15;
  }

  else
  {
    v101 = [NSString stringWithFormat:@"dailyPurgeReqs%s%s", v102, "Tot"];

    [(CacheDeleteAnalytics *)v105 incrementDailyValueForKey:v101];
  }

  if ([v4 success])
  {
    v16 = [NSString stringWithFormat:@"dailyPurgeSuccess%s%s", v102, v14];

    [(CacheDeleteAnalytics *)v105 incrementDailyValueForKey:v16];
    if ([v4 level] > 3)
    {
      v101 = v16;
    }

    else
    {
      v101 = [NSString stringWithFormat:@"dailyPurgeSuccess%s%s", v102, "Tot"];

      [(CacheDeleteAnalytics *)v105 incrementDailyValueForKey:v101];
    }
  }

  if ([v4 fsPurgeSuccess])
  {
    v17 = [NSString stringWithFormat:@"dailyFSPurgeSuccess%s%s", v102, v14];

    [(CacheDeleteAnalytics *)v105 incrementDailyValueForKey:v17];
    if ([v4 level] > 3)
    {
      v101 = v17;
    }

    else
    {
      v101 = [NSString stringWithFormat:@"dailyFSPurgeSuccess%s%s", v102, "Tot"];

      [(CacheDeleteAnalytics *)v105 incrementDailyValueForKey:v101];
    }
  }

  v18 = [NSString stringWithFormat:@"dailyPurgedBytes%s%s", v102, v14];
  v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 totalMeasuredBytes]);
  [v19 doubleValue];
  [(CacheDeleteAnalytics *)v105 addDailyValueForKey:v18 value:?];

  if ([v4 level] > 3)
  {
    v94 = v18;
  }

  else
  {
    v94 = [NSString stringWithFormat:@"dailyPurgedBytes%s%s", v102, "Tot"];

    v20 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 totalMeasuredBytes]);
    [v20 doubleValue];
    [(CacheDeleteAnalytics *)v105 addDailyValueForKey:v94 value:?];
  }

  v21 = [NSString stringWithFormat:@"dailyPurgedReportedBytes%s%s", v102, v14];
  v22 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 totalReportedBytes]);
  [v22 doubleValue];
  [(CacheDeleteAnalytics *)v105 addDailyValueForKey:v21 value:?];

  if ([v4 level] > 3)
  {
    v93 = v21;
  }

  else
  {
    v93 = [NSString stringWithFormat:@"dailyPurgedReportedBytes%s%s", v102, "Tot"];

    v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 totalReportedBytes]);
    [v23 doubleValue];
    [(CacheDeleteAnalytics *)v105 addDailyValueForKey:v93 value:?];
  }

  v24 = v9 * (v7 - v8) / 1000000000.0;
  [(CacheDeleteAnalytics *)v105 addDailyValueForKey:@"dailyActiveTimeS" value:v24];
  [(CacheDeleteAnalytics *)v105 addDailyValueForKey:@"dailyActiveTimePurgingS" value:v24];
  v131[0] = @"purgeRequestedRytes";
  v25 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 requestedBytes]);
  v132[0] = v25;
  v131[1] = @"purgeReportedBytes";
  v26 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 totalReportedBytes]);
  v132[1] = v26;
  v131[2] = @"purgeMeasuredBytes";
  v27 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 totalMeasuredBytes]);
  v132[2] = v27;
  v131[3] = @"purgeSuccess";
  v28 = [v4 success];
  v29 = 0.0;
  if (v28)
  {
    v29 = 1.0;
  }

  v30 = [NSNumber numberWithDouble:v29];
  v132[3] = v30;
  v131[4] = @"purgeTime";
  v31 = [NSNumber numberWithDouble:v24];
  v132[4] = v31;
  v32 = [NSDictionary dictionaryWithObjects:v132 forKeys:v131 count:5];
  v33 = [v32 mutableCopy];

  if (([v4 success] & 1) == 0)
  {
    v34 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 requestedBytes] - objc_msgSend(v4, "totalMeasuredBytes"));
    [v33 setObject:v34 forKey:@"purgeDefecitBytes"];
  }

  v129[0] = @"purgeClientProcName";
  v100 = [v4 clientProcName];
  v130[0] = v100;
  v129[1] = @"purgeRequestedRytes";
  v99 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 requestedBytes]);
  v130[1] = v99;
  v129[2] = @"purgeInitialFreespace";
  v98 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 beginFreeSpace]);
  v130[2] = v98;
  v129[3] = @"purgeEndFreespace";
  v97 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 endFreeSpace]);
  v130[3] = v97;
  v129[4] = @"purgeMeasuredBytes";
  v35 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 totalMeasuredBytes]);
  v130[4] = v35;
  v129[5] = @"purgeReportedBytes";
  v96 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 totalReportedBytes]);
  v130[5] = v96;
  v129[6] = @"purgeSuccess";
  v36 = [v4 success];
  v37 = 0.0;
  if (v36)
  {
    v37 = 1.0;
  }

  v95 = [NSNumber numberWithDouble:v37];
  v130[6] = v95;
  v129[7] = @"purgeLowDiskLevel";
  v38 = [CacheDeleteAnalytics getLowDiskLevelFromPurgeResult:v4];
  v130[7] = v38;
  v129[8] = @"purgeContainerSize";
  v39 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 containerSize]);
  v130[8] = v39;
  v129[9] = @"purgeContainerInitialFreespace";
  v40 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 containerInitialFreespace]);
  v130[9] = v40;
  v129[10] = @"purgeTime";
  v41 = [NSNumber numberWithDouble:v6 * (v91 - v90) / 1000000.0];
  v130[10] = v41;
  v129[11] = @"purgeAttempt";
  v42 = [NSNumber numberWithUnsignedLongLong:v104];
  v130[11] = v42;
  v43 = [NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:12];
  v92 = [v43 mutableCopy];

  if ([v4 isLowDisk])
  {
    v44 = [v4 success];
    v45 = 0.0;
    if (v44)
    {
      v45 = 1.0;
    }

    v46 = [NSNumber numberWithDouble:v45];
    [v33 setObject:v46 forKey:@"lowdiskSuccess"];

    v47 = [NSNumber numberWithDouble:v24];
    [v33 setObject:v47 forKey:@"lowdiskTimeS"];

    if (qword_10006E268)
    {
      -[CacheDeleteAnalytics secondsFrom:to:](v105, "secondsFrom:to:", qword_10006E268, [v4 monotonicBegin]);
      v48 = [NSNumber numberWithDouble:?];
      [v33 setObject:v48 forKey:@"lowdiskPeriodS"];
    }

    qword_10006E268 = [v4 monotonicBegin];
    v49 = [NSString stringWithFormat:@"dailyNumLowDiskPurges%s", v102];
    [(CacheDeleteAnalytics *)v105 incrementDailyValueForKey:v49];

    if ([v4 success])
    {
      v50 = [NSString stringWithFormat:@"dailyNumLowDiskSuccess%s", v102];
      [(CacheDeleteAnalytics *)v105 incrementDailyValueForKey:v50];
    }
  }

  if ([v4 isVeryLowDisk])
  {
    v51 = [v4 success];
    v52 = 0.0;
    if (v51)
    {
      v52 = 1.0;
    }

    v53 = [NSNumber numberWithDouble:v52];
    [v33 setObject:v53 forKey:@"verylowdiskSuccess"];

    v54 = [NSNumber numberWithDouble:v24];
    [v33 setObject:v54 forKey:@"verylowdiskTimeS"];

    if (qword_10006E270)
    {
      -[CacheDeleteAnalytics secondsFrom:to:](v105, "secondsFrom:to:", qword_10006E270, [v4 monotonicBegin]);
      v55 = [NSNumber numberWithDouble:?];
      [v33 setObject:v55 forKey:@"verylowdiskPeriodS"];
    }

    qword_10006E270 = [v4 monotonicBegin];
    v56 = [NSString stringWithFormat:@"dailyNumVeryLowDiskPurges%s", v102];
    [(CacheDeleteAnalytics *)v105 incrementDailyValueForKey:v56];

    if ([v4 success])
    {
      v57 = [NSString stringWithFormat:@"dailyNumVeryLowDiskSuccess%s", v102];
      [(CacheDeleteAnalytics *)v105 incrementDailyValueForKey:v57];
    }
  }

  if ([v4 isNearLowDisk])
  {
    v58 = [v4 success];
    v59 = 0.0;
    if (v58)
    {
      v59 = 1.0;
    }

    v60 = [NSNumber numberWithDouble:v59];
    [v33 setObject:v60 forKey:@"nearlowdisk_success"];

    v61 = [NSNumber numberWithDouble:v24];
    [v33 setObject:v61 forKey:@"nearlowdiskTimeS"];

    if (qword_10006E278)
    {
      -[CacheDeleteAnalytics secondsFrom:to:](v105, "secondsFrom:to:", qword_10006E278, [v4 monotonicBegin]);
      v62 = [NSNumber numberWithDouble:?];
      [v33 setObject:v62 forKey:@"nearlowdiskPeriodS"];
    }

    qword_10006E278 = [v4 monotonicBegin];
    v63 = [NSString stringWithFormat:@"dailyNumNearLowDiskPurges%s", v102];
    [(CacheDeleteAnalytics *)v105 incrementDailyValueForKey:v63];

    if ([v4 success])
    {
      v64 = [NSString stringWithFormat:@"dailyNumNearLowDiskSuccess%s", v102];
      [(CacheDeleteAnalytics *)v105 incrementDailyValueForKey:v64];
    }
  }

  if ([v4 isIdlePurgeDisk])
  {
    v65 = [v4 success];
    v66 = 0.0;
    if (v65)
    {
      v66 = 1.0;
    }

    v67 = [NSNumber numberWithDouble:v66];
    [v33 setObject:v67 forKey:@"idlepurgedisk_success"];

    v68 = [NSNumber numberWithDouble:v24];
    [v33 setObject:v68 forKey:@"idlepurgediskTimeS"];

    if (qword_10006E278)
    {
      -[CacheDeleteAnalytics secondsFrom:to:](v105, "secondsFrom:to:", qword_10006E278, [v4 monotonicBegin]);
      v69 = [NSNumber numberWithDouble:?];
      [v33 setObject:v69 forKey:@"idlepurgediskPeriodS"];
    }

    qword_10006E278 = [v4 monotonicBegin];
    v70 = [NSString stringWithFormat:@"dailyNumIdlePurgeDiskPurges%s", v102];
    [(CacheDeleteAnalytics *)v105 incrementDailyValueForKey:v70];

    if ([v4 success])
    {
      v71 = [NSString stringWithFormat:@"dailyNumIdlePurgeDiskSuccess%s", v102];
      [(CacheDeleteAnalytics *)v105 incrementDailyValueForKey:v71];
    }
  }

  v116 = 0;
  v117 = &v116;
  v118 = 0x3032000000;
  v119 = __Block_byref_object_copy__0;
  v120 = __Block_byref_object_dispose__0;
  v121 = 0;
  v72 = [v4 results];
  v110[0] = _NSConcreteStackBlock;
  v110[1] = 3221225472;
  v110[2] = __52__CacheDeleteAnalytics_processPurgeOperationResult___block_invoke;
  v110[3] = &unk_100061698;
  v110[4] = v105;
  v115 = v89;
  v103 = v33;
  v111 = v103;
  v113 = &v116;
  v73 = v4;
  v112 = v73;
  v114 = v104;
  [v72 enumerateObjectsUsingBlock:v110];

  [(CacheDeleteAnalytics *)v105 postStatsDictionary:v103 summarize:1];
  if (+[CacheDeleteAnalytics isDataCollectionEnabled])
  {
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v74 = [v73 timedOutServices];
    v75 = [v74 countByEnumeratingWithState:&v106 objects:v128 count:16];
    if (v75)
    {
      v76 = *v107;
      do
      {
        for (j = 0; j != v75; j = j + 1)
        {
          if (*v107 != v76)
          {
            objc_enumerationMutation(v74);
          }

          v78 = *(*(&v106 + 1) + 8 * j);
          v126[0] = @"purgeClientProcName";
          v79 = [v73 clientProcName];
          v127[0] = v79;
          v127[1] = &off_1000655C0;
          v126[1] = @"purgeReportedBytes";
          v126[2] = @"purgeTime";
          v80 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", 1000 * [v73 timeoutTime]);
          v127[2] = v80;
          v126[3] = @"purgeServiceName";
          v81 = v78;
          v82 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v78 UTF8String]);
          v127[3] = v82;
          v126[4] = @"purgeAttempt";
          v83 = [NSNumber numberWithUnsignedLongLong:v104];
          v127[4] = v83;
          v84 = [NSDictionary dictionaryWithObjects:v127 forKeys:v126 count:5];
          v85 = v117[5];
          v117[5] = v84;

          v86 = [(CacheDeleteAnalytics *)v105 purgeStatReporter];
          [v86 appendAndSaveStats:v117[5]];
        }

        v75 = [v74 countByEnumeratingWithState:&v106 objects:v128 count:16];
      }

      while (v75);
    }

    v87 = [(CacheDeleteAnalytics *)v105 purgeStatReporter];
    [v87 appendAndSaveStats:v92];
  }

  v88 = [(CacheDeleteAnalytics *)v105 powerLogger];
  [v88 flush];

  _Block_object_dispose(&v116, 8);
}

void __52__CacheDeleteAnalytics_processPurgeOperationResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 monotonicEnd];
  v5 = [v3 monotonicBegin];
  v6 = gTimebaseConversion * (v4 - v5) / 1000000.0;
  v7 = v6 / 1000.0;
  v8 = [*(a1 + 32) stringForUrgency:{objc_msgSend(v3, "urgency")}];
  v9 = [v3 serviceName];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"purge_time_%s_%s", v8, [v9 UTF8String]);

  v11 = [NSNumber numberWithDouble:v6 / 1000.0];
  [*(a1 + 40) setObject:v11 forKeyedSubscript:v10];

  v12 = [v3 serviceName];
  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"purgeRequestedBytes%s%s", v8, [v12 UTF8String]);

  v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 requestedBytes]);
  [*(a1 + 40) setObject:v14 forKeyedSubscript:v13];

  v15 = [v3 serviceName];
  v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"purgeReportedBytes%s%s", v8, [v15 UTF8String]);

  v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 reportedBytes]);
  [*(a1 + 40) setObject:v17 forKeyedSubscript:v16];

  v18 = [v3 serviceName];
  v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"purgePercentReported%s%s", v8, [v18 UTF8String]);

  v20 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", round([v3 reportedBytes] / objc_msgSend(v3, "requestedBytes") * 100.0));
  [*(a1 + 40) setObject:v20 forKeyedSubscript:v19];

  if (*(a1 + 72) == 1 && ([v3 reportedBytes] || v7 > 1.0))
  {
    v38[0] = @"purgeClientProcName";
    v36 = [*(a1 + 48) clientProcName];
    v39[0] = v36;
    v38[1] = @"purgeReportedBytes";
    v35 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 reportedBytes]);
    v39[1] = v35;
    v38[2] = @"purgeLevel";
    v34 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 urgency]);
    v39[2] = v34;
    v38[3] = @"purgeTime";
    [NSNumber numberWithDouble:v6];
    v21 = v37 = v10;
    v39[3] = v21;
    v38[4] = @"purgeServiceName";
    v22 = [v3 serviceName];
    v23 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v22 UTF8String]);
    v39[4] = v23;
    v38[5] = @"purgeAttempt";
    v24 = [NSNumber numberWithUnsignedLongLong:*(a1 + 64)];
    v39[5] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:6];
    v26 = *(*(a1 + 56) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    v10 = v37;
    if (+[CacheDeleteAnalytics isDataCollectionEnabled])
    {
      v28 = [*(a1 + 32) purgeStatReporter];
      [v28 appendAndSaveStats:*(*(*(a1 + 56) + 8) + 40)];
    }
  }

  [*(a1 + 32) machTimeToSeconds:{objc_msgSend(v3, "monotonicBegin")}];
  v30 = v29;
  v31 = [*(a1 + 32) powerLogger];
  v32 = [v3 urgency];
  v33 = [v3 serviceName];
  [v31 logCacheDuetEvent:1 urgencyLevel:v32 serviceName:v33 startFromUptime:objc_msgSend(v3 duration:"requestedBytes") requestedBytes:objc_msgSend(v3 purgedBytes:{"reportedBytes"), v30, v7}];
}

- (void)processPurgeableOperationResult:(id)a3
{
  v4 = a3;
  [(CacheDeleteAnalytics *)self incrementDailyValueForKey:@"dailyPurgeableReqs"];
  -[CacheDeleteAnalytics secondsFrom:to:](self, "secondsFrom:to:", [v4 monotonicBegin], objc_msgSend(v4, "monotonicEnd"));
  v6 = v5;
  [(CacheDeleteAnalytics *)self addDailyValueForKey:@"dailyActiveTimePurgeableS" value:?];
  [(CacheDeleteAnalytics *)self addDailyValueForKey:@"dailyActiveTimeS" value:v6];
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = [v4 results];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = __56__CacheDeleteAnalytics_processPurgeableOperationResult___block_invoke;
  v14 = &unk_1000616C0;
  v15 = self;
  v16 = v7;
  v9 = v7;
  [v8 enumerateObjectsUsingBlock:&v11];

  [(CacheDeleteAnalytics *)self postStatsDictionary:v9 summarize:1, v11, v12, v13, v14, v15];
  v10 = [(CacheDeleteAnalytics *)self powerLogger];
  [v10 flush];
}

void __56__CacheDeleteAnalytics_processPurgeableOperationResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 secondsFrom:objc_msgSend(v4 to:{"monotonicBegin"), objc_msgSend(v4, "monotonicEnd")}];
  v6 = v5;
  v7 = [*(a1 + 32) stringForUrgency:{objc_msgSend(v4, "urgency")}];
  v8 = [v4 serviceName];
  v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"purgeable_time_%s_%s", v7, [v8 UTF8String]);

  v9 = [NSNumber numberWithDouble:v6];
  [*(a1 + 40) setObject:v9 forKeyedSubscript:v15];

  [*(a1 + 32) machTimeToSeconds:{objc_msgSend(v4, "monotonicBegin")}];
  v11 = v10;
  v12 = [*(a1 + 32) powerLogger];
  v13 = [v4 urgency];
  v14 = [v4 serviceName];

  [v12 logCacheDuetEvent:2 urgencyLevel:v13 serviceName:v14 startFromUptime:0 duration:0 requestedBytes:v11 purgedBytes:v6];
}

- (void)processPeriodicOperationResult:(id)a3
{
  v4 = a3;
  [(CacheDeleteAnalytics *)self incrementDailyValueForKey:@"dailyPeriodicReqs"];
  -[CacheDeleteAnalytics secondsFrom:to:](self, "secondsFrom:to:", [v4 monotonicBegin], objc_msgSend(v4, "monotonicEnd"));
  v6 = v5;
  [(CacheDeleteAnalytics *)self addDailyValueForKey:@"dailyActiveTimePeriodicS" value:?];
  [(CacheDeleteAnalytics *)self addDailyValueForKey:@"dailyActiveTimeS" value:v6];
  v7 = [NSMutableDictionary alloc];
  v8 = [v4 results];
  v9 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];

  v10 = [v4 results];

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = __55__CacheDeleteAnalytics_processPeriodicOperationResult___block_invoke;
  v16 = &unk_1000616E8;
  v17 = self;
  v18 = v9;
  v11 = v9;
  [v10 enumerateObjectsUsingBlock:&v13];

  [(CacheDeleteAnalytics *)self postStatsDictionary:v11 summarize:1, v13, v14, v15, v16, v17];
  v12 = [(CacheDeleteAnalytics *)self powerLogger];
  [v12 flush];
}

void __55__CacheDeleteAnalytics_processPeriodicOperationResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 secondsFrom:objc_msgSend(v4 to:{"monotonicBegin"), objc_msgSend(v4, "monotonicEnd")}];
  v6 = v5;
  v7 = [*(a1 + 32) stringForUrgency:{objc_msgSend(v4, "urgency")}];
  v8 = [v4 serviceName];
  v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"periodicTimeS%s%s", v7, [v8 UTF8String]);

  v9 = [NSNumber numberWithDouble:v6];
  [*(a1 + 40) setObject:v9 forKeyedSubscript:v20];

  v10 = [*(a1 + 32) stringForUrgency:{objc_msgSend(v4, "urgency")}];
  v11 = [v4 serviceName];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"periodicReportedBytes%s%s", v10, [v11 UTF8String]);

  v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 reportedPurgedBytes]);
  [*(a1 + 40) setObject:v13 forKeyedSubscript:v12];

  [*(a1 + 32) machTimeToSeconds:{objc_msgSend(v4, "monotonicBegin")}];
  v15 = v14;
  v16 = [*(a1 + 32) powerLogger];
  v17 = [v4 urgency];
  v18 = [v4 serviceName];
  v19 = [v4 reportedPurgedBytes];

  [v16 logCacheDuetEvent:0 urgencyLevel:v17 serviceName:v18 startFromUptime:0 duration:v19 requestedBytes:v15 purgedBytes:v6];
}

- (void)reportReceivedLowDiskNotification:(id)a3 forVolume:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CacheDeleteAnalytics *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __68__CacheDeleteAnalytics_reportReceivedLowDiskNotification_forVolume___block_invoke;
  block[3] = &unk_100061118;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (void)_reportReceivedLowDiskNotification:(id)a3 forVolume:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = getRootVolume();
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = "Root";
  }

  else
  {
    v10 = "Ext";
  }

  if ([v6 isEqualToString:@"CD_VERYLOWDISK_EVENT"])
  {
    v11 = @"dailyNumVeryLowDiskEvents";
LABEL_14:
    v12 = [NSString stringWithFormat:@"%@%s", v11, v10];
    [(CacheDeleteAnalytics *)self incrementDailyValueForKey:v12];
    v13 = [NSString stringWithFormat:@"%@%s", v11, "All"];
    [(CacheDeleteAnalytics *)self incrementDailyValueForKey:v13];

    goto LABEL_15;
  }

  if ([v6 isEqualToString:@"CD_LOWDISK_EVENT"])
  {
    v11 = @"dailyNumLowDiskEvents";
    goto LABEL_14;
  }

  if ([v6 isEqualToString:@"CD_NEAR_LOW_DISK_EVENT"])
  {
    v11 = @"dailyNumNearLowDiskEvents";
    goto LABEL_14;
  }

  if ([v6 isEqualToString:@"CD_DESIRED_EVENT"])
  {
    v11 = @"dailyNumDesiredDiskEvents";
    goto LABEL_14;
  }

  if ([v6 isEqualToString:@"CD_IDLE_PURGE_NOTIFY_DISK_EVENT"])
  {
    v11 = @"dailyNumIdlePurgeDiskEvents";
    goto LABEL_14;
  }

  v14 = CDGetLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Unknown low disk event: %@", buf, 0xCu);
  }

LABEL_15:
}

- (void)reportBroadcastLowDiskNotification:(id)a3 forVolume:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CacheDeleteAnalytics *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __69__CacheDeleteAnalytics_reportBroadcastLowDiskNotification_forVolume___block_invoke;
  block[3] = &unk_100061118;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (void)_reportBroadcastLowDiskNotification:(id)a3 forVolume:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = getRootVolume();
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = "Root";
  }

  else
  {
    v10 = "Ext";
  }

  if ([v6 isEqualToString:@"CD_VERYLOWDISK_EVENT"])
  {
    v11 = @"dailyNumVeryLowDiskBroadcasts";
LABEL_12:
    v12 = [NSString stringWithFormat:@"%@%s", v11, v10];
    [(CacheDeleteAnalytics *)self incrementDailyValueForKey:v12];
    v13 = [NSString stringWithFormat:@"%@%s", v11, "All"];
    [(CacheDeleteAnalytics *)self incrementDailyValueForKey:v13];

    goto LABEL_13;
  }

  if ([v6 isEqualToString:@"CD_LOWDISK_EVENT"])
  {
    v11 = @"dailyNumLowDiskBroadcasts";
    goto LABEL_12;
  }

  if ([v6 isEqualToString:@"CD_NEAR_LOW_DISK_EVENT"])
  {
    v11 = @"dailyNumNearLowDiskBroadcasts";
    goto LABEL_12;
  }

  if ([v6 isEqualToString:@"CD_DESIRED_EVENT"])
  {
    v11 = @"dailyNumDesiredDiskBroadcasts";
    goto LABEL_12;
  }

  v14 = CDGetLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Unknown low disk event: %@", buf, 0xCu);
  }

LABEL_13:
}

- (void)reportLowDiskFunctionalFailure:(id)a3 failureType:(int)a4 isRoot:(BOOL)a5
{
  v8 = a3;
  v9 = [(CacheDeleteAnalytics *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __74__CacheDeleteAnalytics_reportLowDiskFunctionalFailure_failureType_isRoot___block_invoke;
  block[3] = &unk_100061710;
  block[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  dispatch_sync(v9, block);
}

@end