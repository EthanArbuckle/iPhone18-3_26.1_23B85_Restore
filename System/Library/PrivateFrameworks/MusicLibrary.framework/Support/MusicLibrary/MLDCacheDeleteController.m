@interface MLDCacheDeleteController
+ (unint64_t)_cacheDeleteUrgencyToMusicLibraryUrgency:(int)a3;
- ($06626BA963112C91E7E52BBD3AECAE4D)_calculateUsageAnalytics;
- (BOOL)_isMediaVolume:(id)a3;
- (MLDCacheDeleteController)initWithLibraries:(id)a3;
- (void)_addOptimizeStorageAnalyticsToPayload:(id)a3;
- (void)_addPurgeAnalytics:(id *)a3 toPayload:(id)a4;
- (void)_addPurgeableAnalytics:(id *)a3 toPayload:(id)a4;
- (void)_addUsageAnalytics:(id *)a3 toPayload:(id)a4;
- (void)_handleCacheDeleteNotification:(__CFDictionary *)a3;
- (void)_reconcileAllOriginalArtworkForLibrary:(id)a3 withCompletion:(id)a4;
- (void)_reconcileOrginalArtworkWitRelativePaths:(id)a3 forLibrary:(id)a4 withCompletion:(id)a5;
- (void)_reconcilePurgeNotification;
- (void)_registerCacheDeleteHandler;
- (void)_reportCacheDeletePurgeEventWithUrgency:(int)a3 amountRequested:(unint64_t)a4 amountPurged:(unint64_t)a5 duration:(double)a6;
- (void)_reportCacheDeletePurgeableRequestWithUrgency:(int)a3 purgeableAmount:(unint64_t)a4 duration:(double)a5;
- (void)_updatePurgedOriginalWithRelativePath:(id)a3 forLibrary:(id)a4 usingConnection:(id)a5;
@end

@implementation MLDCacheDeleteController

- (void)_addPurgeableAnalytics:(id *)a3 toPayload:(id)a4
{
  var0 = a3->var0;
  v6 = a4;
  v7 = [NSNumber numberWithDouble:var0];
  [v6 setObject:v7 forKeyedSubscript:@"Duration"];

  v8 = [NSNumber numberWithUnsignedLongLong:a3->var1];
  [v6 setObject:v8 forKeyedSubscript:@"Urgency"];

  v9 = [NSNumber numberWithUnsignedLongLong:a3->var2 >> 20];
  [v6 setObject:v9 forKeyedSubscript:@"MBPurgeableReported"];
}

- (void)_addPurgeAnalytics:(id *)a3 toPayload:(id)a4
{
  var0 = a3->var0;
  v6 = a4;
  v7 = [NSNumber numberWithDouble:var0];
  [v6 setObject:v7 forKeyedSubscript:@"Duration"];

  v8 = [NSNumber numberWithUnsignedLongLong:a3->var1];
  [v6 setObject:v8 forKeyedSubscript:@"Urgency"];

  v9 = [NSNumber numberWithUnsignedLongLong:a3->var2 >> 20];
  [v6 setObject:v9 forKeyedSubscript:@"MBRequested"];

  v10 = [NSNumber numberWithUnsignedLongLong:a3->var3 >> 20];
  [v6 setObject:v10 forKeyedSubscript:@"MBPurged"];

  v11 = [NSNumber numberWithUnsignedLongLong:(a3->var4 + a3->var3) >> 20];
  [v6 setObject:v11 forKeyedSubscript:@"MBPurgeableBefore"];

  v12 = [NSNumber numberWithUnsignedLongLong:a3->var4 >> 20];
  [v6 setObject:v12 forKeyedSubscript:@"MBPurgeableAfter"];
}

- (void)_addUsageAnalytics:(id *)a3 toPayload:(id)a4
{
  v12 = a4;
  v5 = [NSNumber numberWithUnsignedLongLong:a3->var0 >> 20];
  [v12 setObject:v5 forKeyedSubscript:@"MBTotalRedownloadablePinned"];

  v6 = [NSNumber numberWithUnsignedLongLong:a3->var1 >> 20];
  [v12 setObject:v6 forKeyedSubscript:@"MBNonRedownloadable"];

  v7 = [NSNumber numberWithUnsignedLongLong:a3->var2 >> 20];
  [v12 setObject:v7 forKeyedSubscript:@"MBArtwork"];

  var3 = a3->var3;
  if (var3)
  {
    [NSNumber numberWithUnsignedLongLong:var3 >> 20];
  }

  else
  {
    +[NSNull null];
  }
  v9 = ;
  [v12 setObject:v9 forKeyedSubscript:@"MBTotal"];

  var4 = a3->var4;
  if (var4)
  {
    [NSNumber numberWithUnsignedLongLong:var4 >> 20];
  }

  else
  {
    +[NSNull null];
  }
  v11 = ;
  [v12 setObject:v11 forKeyedSubscript:@"MBFree"];
}

- (void)_addOptimizeStorageAnalyticsToPayload:(id)a3
{
  v6 = a3;
  v3 = +[ML3MusicLibrary shouldOptimizeStorage];
  v4 = [NSNumber numberWithBool:v3];
  [v6 setObject:v4 forKeyedSubscript:@"OptimizeStorageEnabled"];

  if (v3)
  {
    v5 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", +[ML3MusicLibrary minimumPurgeableStorage]);
    [v6 setObject:v5 forKeyedSubscript:@"OptimizeStorageSetting"];
  }
}

- (void)_reportCacheDeletePurgeableRequestWithUrgency:(int)a3 purgeableAmount:(unint64_t)a4 duration:(double)a5
{
  v9 = os_transaction_create();
  eventReportingQueue = self->_eventReportingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000093D8;
  block[3] = &unk_100031318;
  v14 = fabs(a5);
  v15 = a3;
  v16 = a4;
  block[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(eventReportingQueue, block);
}

- (void)_reportCacheDeletePurgeEventWithUrgency:(int)a3 amountRequested:(unint64_t)a4 amountPurged:(unint64_t)a5 duration:(double)a6
{
  v11 = os_transaction_create();
  eventReportingQueue = self->_eventReportingQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000096E8;
  v14[3] = &unk_1000312C8;
  v16 = a6;
  v19 = a3;
  v17 = a4;
  v18 = a5;
  v14[4] = self;
  v15 = v11;
  v13 = v11;
  dispatch_async(eventReportingQueue, v14);
}

- (BOOL)_isMediaVolume:(id)a3
{
  v3 = a3;
  bzero(&v12, 0x878uLL);
  v4 = +[ML3MusicLibrary mediaFolderPath];
  v5 = statfs([v4 UTF8String], &v12);

  if (v5)
  {
    v6 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = +[ML3MusicLibrary mediaFolderPath];
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to fetch mount stats for path %{public}@", &v10, 0xCu);
    }

    LOBYTE(v8) = 0;
  }

  else
  {
    v6 = [NSString stringWithUTF8String:v12.f_mntonname];
    v8 = [v3 isEqualToString:v6];
  }

  return v8;
}

- ($06626BA963112C91E7E52BBD3AECAE4D)_calculateUsageAnalytics
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x4810000000;
  v20 = &unk_10002B6DD;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  libraries = self->_libraries;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100009EAC;
  v16[3] = &unk_100031278;
  v16[4] = &v17;
  [(NSArray *)libraries enumerateObjectsUsingBlock:v16];
  v5 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v6 = +[NSFileManager defaultManager];
  v7 = [v5 lastObject];
  v8 = [v6 attributesOfFileSystemForPath:v7 error:0];

  if (v8)
  {
    v9 = [v8 objectForKey:NSFileSystemSize];
    v10 = [v9 longLongValue];
    v18[7] = v10;

    v11 = [v8 objectForKey:NSFileSystemFreeSize];
    v12 = [v11 longLongValue];
    v18[8] = v12;
  }

  v13 = v18;
  v14 = *(v18 + 3);
  *&retstr->var0 = *(v18 + 2);
  *&retstr->var2 = v14;
  retstr->var4 = v13[8];

  _Block_object_dispose(&v17, 8);
  return result;
}

- (void)_handleCacheDeleteNotification:(__CFDictionary *)a3
{
  v5 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received CacheDelete notification: %{public}@", buf, 0xCu);
  }

  v6 = [(__CFDictionary *)a3 objectForKey:@"CACHE_DELETE_CACHE_ENABLED"];
  v7 = [v6 BOOLValue];

  v8 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
  v9 = os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &v8->super, OS_LOG_TYPE_DEFAULT, "CacheDelete has re-enabled caching - issue a change notification", buf, 2u);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = self->_libraries;
    v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * i) notifyContentsDidChange];
        }

        v11 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }

  else if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &v8->super, OS_LOG_TYPE_DEFAULT, "CacheDelete has disabled caching", buf, 2u);
  }
}

- (void)_reconcilePurgeNotification
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_libraries;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v25 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 138543618;
    v14 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = +[NSMutableSet set];
        v10 = [v8 originalArtworkDirectory];
        v11 = [@"/private" stringByAppendingString:v10];

        v12 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          v22 = self;
          v23 = 2114;
          v24 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Checking path %{public}@ for purged artwork", buf, 0x16u);
        }

        v20 = v11;
        [NSArray arrayWithObjects:&v20 count:1];
        v13 = v9;
        CacheDeleteEnumerateRemovedFilesInDirectories();
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v25 count:16];
    }

    while (v5);
  }
}

- (void)_reconcileOrginalArtworkWitRelativePaths:(id)a3 forLibrary:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  artworkOperationQueue = self->_artworkOperationQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000B258;
  v15[3] = &unk_100031440;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  [(NSOperationQueue *)artworkOperationQueue addOperationWithBlock:v15];
}

- (void)_reconcileAllOriginalArtworkForLibrary:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  artworkOperationQueue = self->_artworkOperationQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000B604;
  v11[3] = &unk_100031A08;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [(NSOperationQueue *)artworkOperationQueue addOperationWithBlock:v11];
}

- (void)_updatePurgedOriginalWithRelativePath:(id)a3 forLibrary:(id)a4 usingConnection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26 = v8;
  v11 = [NSArray arrayWithObjects:&v26 count:1];
  v12 = [v10 executeUpdate:@"UPDATE artwork SET relative_path = '' WHERE relative_path = ?" withParameters:v11 error:0];

  if (v12)
  {
    v21 = v8;
    v13 = [NSArray arrayWithObjects:&v21 count:1];
    v14 = [v10 executeQuery:@"SELECT entity_pid withParameters:{entity_type, artwork_token.artwork_type FROM artwork JOIN artwork_token USING(artwork_token) WHERE relative_path = ?", v13}];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000BB70;
    v16[3] = &unk_1000311B0;
    v17 = v9;
    v18 = v10;
    v19 = self;
    v20 = v8;
    [v14 enumerateRowsWithBlock:v16];

    v15 = v17;
  }

  else
  {
    v15 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = self;
      v24 = 2114;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@ Error clearing artwork.relative_path for artwork relativePath=%{public}@.", buf, 0x16u);
    }
  }
}

- (void)_registerCacheDeleteHandler
{
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000BF98;
  v12[3] = &unk_100031160;
  objc_copyWeak(&v13, &location);
  v12[4] = self;
  v3 = objc_retainBlock(v12);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000C080;
  v10[3] = &unk_100031160;
  objc_copyWeak(&v11, &location);
  v10[4] = self;
  v4 = objc_retainBlock(v10);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000C168;
  v8[3] = &unk_100031188;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  v5 = objc_retainBlock(v8);
  CacheDeleteRegister();
  CacheDeleteInitPurgeMarker();
  objc_copyWeak(&v7, &location);
  CacheDeleteRegisterPurgeNotification();
  v6 = os_log_create("com.apple.amp.medialibraryd", "CacheManagement");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Registered CacheDelete handlers.", buf, 0xCu);
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (MLDCacheDeleteController)initWithLibraries:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = MLDCacheDeleteController;
  v6 = [(MLDCacheDeleteController *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraries, a3);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("com.apple.medialibraryd.CacheDeleteController.accessQueue", v8);
    accessQueue = v7->_accessQueue;
    v7->_accessQueue = v9;

    v11 = objc_alloc_init(NSOperationQueue);
    artworkOperationQueue = v7->_artworkOperationQueue;
    v7->_artworkOperationQueue = v11;

    [(NSOperationQueue *)v7->_artworkOperationQueue setMaxConcurrentOperationCount:1];
    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v14 = dispatch_queue_create("com.apple.amp.medialibrary.CacheDeletePurge.Reporting", v13);
    eventReportingQueue = v7->_eventReportingQueue;
    v7->_eventReportingQueue = v14;

    [(MLDCacheDeleteController *)v7 _registerCacheDeleteHandler];
  }

  return v7;
}

+ (unint64_t)_cacheDeleteUrgencyToMusicLibraryUrgency:(int)a3
{
  v3 = (a3 - 2);
  if (v3 < 3)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

@end