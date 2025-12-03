@interface GEOPDPlaceCache
+ (id)sharedCache;
- (BOOL)_deleteAndResetDB:(id)b;
- (BOOL)_meetsManifestVersionPolicyForPlace:(id)place;
- (BOOL)_validateDBLocaleAndResetIfNecessary;
- (GEOPDPlaceCache)initWithCacheFilePath:(id)path schedulingDelegate:(id)delegate manifestInfoProvider:(id)provider;
- (NSArray)serviceVersions;
- (id)_cacheKeyForHandle:(id)handle;
- (id)_cacheKeysForPlace:(id)place request:(id)request;
- (id)lookupIdentifierByPhoneNumber:(id)number;
- (unint64_t)_calculateFreeableSpace;
- (unint64_t)_shrinkBySize:(unint64_t)size;
- (unint64_t)calculateFreeableSpaceSync;
- (unint64_t)shrinkBySizeSync:(unint64_t)sync;
- (void)_evictPlaceWithHash:(id)hash;
- (void)_iterateAllKeysFilteringCacheKeyWithPredicate:(id)predicate entryBlock:(id)block finishedBlock:(id)finishedBlock;
- (void)_iterateAllPlacesFilteringCacheKeyWithPredicate:(id)predicate entryBlock:(id)block finishedBlock:(id)finishedBlock;
- (void)_localeChanged:(id)changed;
- (void)_lookupPlaceByRequestKey:(id)key allowExpiredPlace:(BOOL)place resultBlock:(id)block;
- (void)_storePlace:(id)place withHash:(id)hash forRequestKeys:(id)keys;
- (void)_updateMapsURLExpiry:(int64_t)expiry expireTime:(unint64_t)time;
- (void)calculateFreeableSpaceWithHandler:(id)handler;
- (void)cancelCleanupBlockSchedule;
- (void)close;
- (void)dealloc;
- (void)deletePhoneNumberMapping;
- (void)enqueueAccessTimeUpdateForCacheKey:(id)key accessTime:(int64_t)time;
- (void)evictAllEntries;
- (void)iterateAllBasemapIdKeysWithBlock:(id)block finishedBlock:(id)finishedBlock;
- (void)iterateAllHandleKeysWithBlock:(id)block finishedBlock:(id)finishedBlock;
- (void)iterateAllMUIDKeysWithBlock:(id)block finishedBlock:(id)finishedBlock;
- (void)iterateAllMapsURLsWithBlock:(id)block finishedBlock:(id)finishedBlock;
- (void)iterateAllPhoneKeysWithBlock:(id)block finishedBlock:(id)finishedBlock;
- (void)iterateBasemapIdPlacesWithBlock:(id)block finishedBlock:(id)finishedBlock;
- (void)iterateHandlePlacesWithBlock:(id)block finishedBlock:(id)finishedBlock;
- (void)iterateMUIDPlacesWithBlock:(id)block finishedBlock:(id)finishedBlock;
- (void)iteratePhonePlacesWithBlock:(id)block finishedBlock:(id)finishedBlock;
- (void)lookupLongMapsURLFor:(id)for completion:(id)completion;
- (void)lookupPlaceByHandle:(id)handle allowExpired:(BOOL)expired resultBlock:(id)block;
- (void)lookupPlaceByIdentifier:(id)identifier allowExpired:(BOOL)expired resultBlock:(id)block;
- (void)lookupPlaceByPhoneNumber:(id)number allowExpired:(BOOL)expired resultBlock:(id)block;
- (void)lookupPlaceByRequest:(id)request allowExpired:(BOOL)expired resultBlock:(id)block;
- (void)lookupShortMapsURLFor:(id)for completion:(id)completion;
- (void)periodicCleanupAndAccessTimeUpdate;
- (void)runCleanupBlock:(id)block inSecondsFromNow:(int64_t)now;
- (void)scheduleCleanup;
- (void)shrinkBySize:(unint64_t)size finished:(id)finished;
- (void)storePlace:(id)place forRequest:(id)request;
- (void)storePlace:(id)place forRequest:(id)request completionQueue:(id)queue completion:(id)completion;
- (void)storeShortMapURL:(id)l longMapsURL:(id)rL;
- (void)trackPlace:(id)place;
- (void)trackPlace:(id)place completionQueue:(id)queue completion:(id)completion;
@end

@implementation GEOPDPlaceCache

+ (id)sharedCache
{
  if (qword_100095FB8 != -1)
  {
    dispatch_once(&qword_100095FB8, &stru_1000818D8);
  }

  v3 = qword_100095FB0;

  return v3;
}

- (void)scheduleCleanup
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v9 = "[GEOPDPlaceCache scheduleCleanup]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v4 = GeoServicesConfig_PDPlaceCacheQuiescentTimeBeforeUpdate[1];
  Integer = GEOConfigGetInteger();
  WeakRetained = objc_loadWeakRetained(&self->_schedulingDelegate);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000DF34;
  v7[3] = &unk_1000838C8;
  v7[4] = self;
  [WeakRetained runCleanupBlock:v7 inSecondsFromNow:Integer];
}

- (NSArray)serviceVersions
{
  v2 = +[GEOResourceManifestManager modernManager];
  activeTileGroup = [v2 activeTileGroup];
  versionManifest = [activeTileGroup versionManifest];
  serviceVersions = [versionManifest serviceVersions];
  v6 = [serviceVersions copy];

  return v6;
}

- (void)cancelCleanupBlockSchedule
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[GEOPDPlaceCache cancelCleanupBlockSchedule]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", &v5, 0xCu);
  }

  dispatch_source_cancel(self->_cleanupTimer);
  cleanupTimer = self->_cleanupTimer;
  self->_cleanupTimer = 0;
}

- (void)runCleanupBlock:(id)block inSecondsFromNow:(int64_t)now
{
  blockCopy = block;
  isolationQueue = [(GEOSQLiteDB *)self->_db isolationQueue];
  dispatch_assert_queue_V2(isolationQueue);

  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[GEOPDPlaceCache runCleanupBlock:inSecondsFromNow:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  cleanupTimer = self->_cleanupTimer;
  if (cleanupTimer)
  {
    dispatch_source_cancel(cleanupTimer);
    v9 = self->_cleanupTimer;
    self->_cleanupTimer = 0;
  }

  isolationQueue2 = [(GEOSQLiteDB *)self->_db isolationQueue];
  v14 = blockCopy;
  v11 = blockCopy;
  v12 = geo_dispatch_timer_create_on_queue();
  v13 = self->_cleanupTimer;
  self->_cleanupTimer = v12;

  dispatch_resume(self->_cleanupTimer);
}

- (void)iterateAllMapsURLsWithBlock:(id)block finishedBlock:(id)finishedBlock
{
  blockCopy = block;
  finishedBlockCopy = finishedBlock;
  v8 = GeoServicesConfig_MapsURLCacheTTL[1];
  GEOConfigGetDouble();
  db = self->_db;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000C6A0;
  v13[3] = &unk_100081B08;
  v13[4] = self;
  v14 = blockCopy;
  v15 = finishedBlockCopy;
  v16 = v10;
  v11 = finishedBlockCopy;
  v12 = blockCopy;
  [(GEOSQLiteDB *)db executeAsync:v13];
}

- (void)iterateAllHandleKeysWithBlock:(id)block finishedBlock:(id)finishedBlock
{
  finishedBlockCopy = finishedBlock;
  blockCopy = block;
  v8 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", @"hndl-"];
  [(GEOPDPlaceCache *)self _iterateAllKeysFilteringCacheKeyWithPredicate:v8 entryBlock:blockCopy finishedBlock:finishedBlockCopy];
}

- (void)iterateAllPhoneKeysWithBlock:(id)block finishedBlock:(id)finishedBlock
{
  finishedBlockCopy = finishedBlock;
  blockCopy = block;
  v8 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", @"phNo-"];
  [(GEOPDPlaceCache *)self _iterateAllKeysFilteringCacheKeyWithPredicate:v8 entryBlock:blockCopy finishedBlock:finishedBlockCopy];
}

- (void)iterateAllBasemapIdKeysWithBlock:(id)block finishedBlock:(id)finishedBlock
{
  finishedBlockCopy = finishedBlock;
  blockCopy = block;
  v8 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", @"bmid-"];
  [(GEOPDPlaceCache *)self _iterateAllKeysFilteringCacheKeyWithPredicate:v8 entryBlock:blockCopy finishedBlock:finishedBlockCopy];
}

- (void)iterateAllMUIDKeysWithBlock:(id)block finishedBlock:(id)finishedBlock
{
  finishedBlockCopy = finishedBlock;
  blockCopy = block;
  v8 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", @"muid-"];
  [(GEOPDPlaceCache *)self _iterateAllKeysFilteringCacheKeyWithPredicate:v8 entryBlock:blockCopy finishedBlock:finishedBlockCopy];
}

- (void)_iterateAllKeysFilteringCacheKeyWithPredicate:(id)predicate entryBlock:(id)block finishedBlock:(id)finishedBlock
{
  predicateCopy = predicate;
  blockCopy = block;
  finishedBlockCopy = finishedBlock;
  db = self->_db;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000CE64;
  v15[3] = &unk_100081AB8;
  v15[4] = self;
  v16 = predicateCopy;
  v17 = blockCopy;
  v18 = finishedBlockCopy;
  v12 = finishedBlockCopy;
  v13 = blockCopy;
  v14 = predicateCopy;
  [(GEOSQLiteDB *)db executeAsync:v15];
}

- (void)iterateHandlePlacesWithBlock:(id)block finishedBlock:(id)finishedBlock
{
  finishedBlockCopy = finishedBlock;
  blockCopy = block;
  v8 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", @"hndl-"];
  [(GEOPDPlaceCache *)self _iterateAllPlacesFilteringCacheKeyWithPredicate:v8 entryBlock:blockCopy finishedBlock:finishedBlockCopy];
}

- (void)iteratePhonePlacesWithBlock:(id)block finishedBlock:(id)finishedBlock
{
  finishedBlockCopy = finishedBlock;
  blockCopy = block;
  v8 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", @"phNo-"];
  [(GEOPDPlaceCache *)self _iterateAllPlacesFilteringCacheKeyWithPredicate:v8 entryBlock:blockCopy finishedBlock:finishedBlockCopy];
}

- (void)iterateBasemapIdPlacesWithBlock:(id)block finishedBlock:(id)finishedBlock
{
  finishedBlockCopy = finishedBlock;
  blockCopy = block;
  v8 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", @"bmid-"];
  [(GEOPDPlaceCache *)self _iterateAllPlacesFilteringCacheKeyWithPredicate:v8 entryBlock:blockCopy finishedBlock:finishedBlockCopy];
}

- (void)iterateMUIDPlacesWithBlock:(id)block finishedBlock:(id)finishedBlock
{
  finishedBlockCopy = finishedBlock;
  blockCopy = block;
  v8 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", @"muid-"];
  [(GEOPDPlaceCache *)self _iterateAllPlacesFilteringCacheKeyWithPredicate:v8 entryBlock:blockCopy finishedBlock:finishedBlockCopy];
}

- (void)_iterateAllPlacesFilteringCacheKeyWithPredicate:(id)predicate entryBlock:(id)block finishedBlock:(id)finishedBlock
{
  predicateCopy = predicate;
  blockCopy = block;
  finishedBlockCopy = finishedBlock;
  db = self->_db;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000D390;
  v15[3] = &unk_100081AB8;
  v15[4] = self;
  v16 = predicateCopy;
  v17 = blockCopy;
  v18 = finishedBlockCopy;
  v12 = finishedBlockCopy;
  v13 = blockCopy;
  v14 = predicateCopy;
  [(GEOSQLiteDB *)db executeAsync:v15];
}

- (void)close
{
  db = self->_db;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000D60C;
  v3[3] = &unk_1000838C8;
  v3[4] = self;
  [(GEOSQLiteDB *)db executeSync:v3];
}

- (void)_evictPlaceWithHash:(id)hash
{
  hashCopy = hash;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[GEOPDPlaceCache _evictPlaceWithHash:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  isolationQueue = [(GEOSQLiteDB *)self->_db isolationQueue];
  dispatch_assert_queue_V2(isolationQueue);

  db = self->_db;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000D76C;
  v9[3] = &unk_100081A68;
  v9[4] = self;
  v10 = hashCopy;
  v8 = hashCopy;
  [(GEOSQLiteDB *)db executeInTransaction:v9];
}

- (void)periodicCleanupAndAccessTimeUpdate
{
  isolationQueue = [(GEOSQLiteDB *)self->_db isolationQueue];
  dispatch_assert_queue_V2(isolationQueue);

  WeakRetained = objc_loadWeakRetained(&self->_schedulingDelegate);
  currentTime = [WeakRetained currentTime];

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = currentTime;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "running at %lld", buf, 0xCu);
  }

  if ([(GEOSQLiteDB *)self->_db prepareStatement:"DELETE FROM pdplaces WHERE expiretime < @expiretime;" forKey:@"removeExpired"])
  {
    v6 = [(GEOSQLiteDB *)self->_db statementForKey:@"removeExpired"];
    if ([(GEOSQLiteDB *)self->_db bindInt64Parameter:"@expiretime" toValue:currentTime inStatement:v6 error:0])
    {
      [(GEOSQLiteDB *)self->_db executeStatement:v6 error:0];
    }
  }

  v7 = sqlite3_exec([(GEOSQLiteDB *)self->_db sqliteDB], "DELETE FROM pdplacelookup WHERE requestkey NOT LIKE phNo-% AND pdplacehash NOT IN         (SELECT pdplacehash FROM pdplaces);", 0, 0, 0);
  if (v7)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      *&buf[4] = "DELETE FROM pdplacelookup WHERE requestkey NOT LIKE phNo-% AND pdplacehash NOT IN         (SELECT pdplacehash FROM pdplaces);";
      *&buf[12] = 1024;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "unable to execute SQL %{private}s : error %d", buf, 0x12u);
    }
  }

  if (([(GEOSQLiteDB *)self->_db prepareStatement:"UPDATE pdplacelookup SET lastaccesstime = @lastaccesstime WHERE requestkey = @requestkey;" forKey:@"updateAccessTime"]& 1) == 0)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380675;
      *&buf[4] = "UPDATE pdplacelookup SET lastaccesstime = @lastaccesstime WHERE requestkey = @requestkey;";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "unable to prepare SQL %{private}s", buf, 0xCu);
    }
  }

  v10 = [(GEOSQLiteDB *)self->_db statementForKey:@"updateAccessTime"];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(NSMutableDictionary *)self->_accessTimesDict allKeys];
  v11 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v11)
  {
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)self->_accessTimesDict objectForKeyedSubscript:v14];
        longLongValue = [v15 longLongValue];

        if ([(GEOSQLiteDB *)self->_db bindInt64Parameter:"@lastaccesstime" toValue:longLongValue inStatement:v10 error:0]&& [(GEOSQLiteDB *)self->_db bindTextParameter:"@requestkey" toValue:v14 inStatement:v10 error:0])
        {
          [(GEOSQLiteDB *)self->_db executeStatement:v10 error:0];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v11);
  }

  [(NSMutableDictionary *)self->_accessTimesDict removeAllObjects];
  v17 = GeoServicesConfig_MaxPhoneNumberKeysInPlaceCache[1];
  Integer = GEOConfigGetInteger();
  if ([(GEOSQLiteDB *)self->_db prepareStatement:"DELETE FROM pdplacelookup WHERE lastaccesstime <      (SELECT lastaccesstime       FROM pdplacelookup       ORDER BY lastaccesstime ASC LIMIT 1 OFFSET @offset);" forKey:@"removeOldPhones"])
  {
    v10 = [(GEOSQLiteDB *)self->_db statementForKey:@"removeOldPhones"];
    if ([(GEOSQLiteDB *)self->_db bindInt64Parameter:"@offset" toValue:Integer inStatement:v10 error:0])
    {
      [(GEOSQLiteDB *)self->_db executeStatement:v10 error:0];
    }
  }

  sqlite3_reset(v10);
  v19 = sqlite3_exec([(GEOSQLiteDB *)self->_db sqliteDB], "DELETE FROM pdplaces WHERE pdplacehash NOT IN (SELECT pdplacehash FROM pdplacelookup);", 0, 0, 0);
  if (v19)
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      *&buf[4] = "DELETE FROM pdplacelookup WHERE requestkey NOT LIKE phNo-% AND pdplacehash NOT IN         (SELECT pdplacehash FROM pdplaces);";
      *&buf[12] = 1024;
      *&buf[14] = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "unable to execute SQL %{private}s : error %d", buf, 0x12u);
    }
  }

  v21 = self->_db;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_10000C9A8;
  v38 = sub_10000C9B8;
  v39 = 0;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_10000DED0;
  v42 = &unk_100081C10;
  v22 = v21;
  v44 = &v34;
  v45 = currentTime;
  v43 = v22;
  v23 = [(GEOSQLiteDB *)v22 executeStatement:@"PruneMapsURLs" statementBlock:buf];
  v24 = v35[5];
  if (v24)
  {
    v25 = v24;
  }

  _Block_object_dispose(&v34, 8);
  v26 = v24;
  if ((v23 & 1) == 0)
  {
    v27 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "unable to prune urls: %@", buf, 0xCu);
    }
  }
}

- (void)enqueueAccessTimeUpdateForCacheKey:(id)key accessTime:(int64_t)time
{
  keyCopy = key;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[GEOPDPlaceCache enqueueAccessTimeUpdateForCacheKey:accessTime:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s", &v13, 0xCu);
  }

  isolationQueue = [(GEOSQLiteDB *)self->_db isolationQueue];
  dispatch_assert_queue_V2(isolationQueue);

  if (keyCopy)
  {
    v9 = [NSNumber numberWithLongLong:time];
    [(NSMutableDictionary *)self->_accessTimesDict setObject:v9 forKeyedSubscript:keyCopy];

    v10 = GeoServicesConfig_PDPlaceCacheAccessCountBeforeUpdate[1];
    UInteger = GEOConfigGetUInteger();
    if ([(NSMutableDictionary *)self->_accessTimesDict count]>= UInteger)
    {
      WeakRetained = objc_loadWeakRetained(&self->_schedulingDelegate);
      [WeakRetained cancelCleanupBlockSchedule];

      [(GEOPDPlaceCache *)self periodicCleanupAndAccessTimeUpdate];
    }

    else
    {
      [(GEOPDPlaceCache *)self scheduleCleanup];
    }
  }
}

- (void)evictAllEntries
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[GEOPDPlaceCache evictAllEntries]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  db = self->_db;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000E1BC;
  v5[3] = &unk_1000838C8;
  v5[4] = self;
  [(GEOSQLiteDB *)db executeSync:v5];
}

- (void)deletePhoneNumberMapping
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[GEOPDPlaceCache deletePhoneNumberMapping]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  db = self->_db;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000E40C;
  v5[3] = &unk_1000838C8;
  v5[4] = self;
  [(GEOSQLiteDB *)db executeSync:v5];
}

- (unint64_t)_shrinkBySize:(unint64_t)size
{
  if (![(GEOSQLiteDB *)self->_db prepareStatement:"SELECT LENGTH(pdplace) FROM pdplaces ORDER BY expiretime ASC;" forKey:@"ascExpire"])
  {
    return 0;
  }

  v5 = [(GEOSQLiteDB *)self->_db statementForKey:@"ascExpire"];
  v6 = 0;
  v7 = 0;
  do
  {
    if (sqlite3_step(v5) != 100)
    {
      break;
    }

    ++v6;
    v7 += [(GEOSQLiteDB *)self->_db intForColumn:0 inStatment:v5];
  }

  while (v7 < size);
  sqlite3_reset(v5);
  db = self->_db;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000E610;
  v10[3] = &unk_100081A18;
  v10[4] = self;
  v11 = v6;
  if ([(GEOSQLiteDB *)db executeInTransaction:v10])
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)shrinkBySizeSync:(unint64_t)sync
{
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[GEOPDPlaceCache shrinkBySizeSync:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v11 = 0x2020000000;
  v12 = 0;
  db = self->_db;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000E844;
  v9[3] = &unk_100082EF8;
  v9[4] = self;
  v9[5] = &buf;
  v9[6] = sync;
  [(GEOSQLiteDB *)db executeSync:v9];
  v7 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  return v7;
}

- (void)shrinkBySize:(unint64_t)size finished:(id)finished
{
  finishedCopy = finished;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[GEOPDPlaceCache shrinkBySize:finished:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x2020000000;
  v16 = 0;
  db = self->_db;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000EA08;
  v10[3] = &unk_1000819F0;
  p_buf = &buf;
  sizeCopy = size;
  v10[4] = self;
  v9 = finishedCopy;
  v11 = v9;
  [(GEOSQLiteDB *)db executeAsync:v10];

  _Block_object_dispose(&buf, 8);
}

- (unint64_t)_calculateFreeableSpace
{
  v6 = 0;
  v2 = sqlite3_exec([(GEOSQLiteDB *)self->_db sqliteDB], "SELECT  SUM(LENGTH(pdplace)) FROM pdplaces;", sub_10000EBD4, &v6, 0);
  if (v2)
  {
    v3 = v2;
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v8 = "SELECT  SUM(LENGTH(pdplace)) FROM pdplaces;";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "unable to execute SQL %{private}s : error %d", buf, 0x12u);
    }
  }

  return v6;
}

- (unint64_t)calculateFreeableSpaceSync
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[GEOPDPlaceCache calculateFreeableSpaceSync]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v9 = 0x2020000000;
  v10 = 0;
  db = self->_db;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000ED80;
  v7[3] = &unk_100082ED0;
  v7[4] = self;
  v7[5] = &buf;
  [(GEOSQLiteDB *)db executeSync:v7];
  v5 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  return v5;
}

- (void)calculateFreeableSpaceWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[GEOPDPlaceCache calculateFreeableSpaceWithHandler:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if (handlerCopy)
  {
    db = self->_db;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000EEF4;
    v7[3] = &unk_100083BC0;
    v7[4] = self;
    v8 = handlerCopy;
    [(GEOSQLiteDB *)db executeAsync:v7];
  }
}

- (void)_updateMapsURLExpiry:(int64_t)expiry expireTime:(unint64_t)time
{
  WeakRetained = objc_loadWeakRetained(&self->_schedulingDelegate);
  currentTime = [WeakRetained currentTime];

  v9 = GeoServicesConfig_MapsURLCacheTTL[1];
  GEOConfigGetDouble();
  v11 = time - v10;
  if (currentTime >= v11 + 600)
  {
    v13 = &currentTime[v10];
    v14 = self->_db;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_10000C9A8;
    v23 = sub_10000C9B8;
    v24 = 0;
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v26 = sub_10000F258;
    v27 = &unk_100083030;
    v15 = v14;
    v28 = v15;
    v29 = &v19;
    expiryCopy = expiry;
    v31 = v13;
    [(GEOSQLiteDB *)v15 executeStatement:@"UpdateMapsURLExpiry" statementBlock:&buf];
    v16 = v20[5];
    if (v16)
    {
      v17 = v16;

      _Block_object_dispose(&v19, 8);
      v12 = v16;
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error updating maps url expiry: %@", &buf, 0xCu);
      }
    }

    else
    {

      _Block_object_dispose(&v19, 8);
      v12 = 0;
    }
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 67109376;
      DWORD1(buf) = currentTime - v11;
      WORD4(buf) = 1024;
      *(&buf + 10) = 600;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Not updating access time for MapsURL cache, was last touched %d seconds ago (min is %d seconds)", &buf, 0xEu);
    }
  }
}

- (void)lookupLongMapsURLFor:(id)for completion:(id)completion
{
  forCopy = for;
  completionCopy = completion;
  db = self->_db;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000F3D4;
  v11[3] = &unk_100083738;
  v11[4] = self;
  v12 = forCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = forCopy;
  [(GEOSQLiteDB *)db executeAsync:v11];
}

- (void)lookupShortMapsURLFor:(id)for completion:(id)completion
{
  forCopy = for;
  completionCopy = completion;
  db = self->_db;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000FA04;
  v11[3] = &unk_100083738;
  v11[4] = self;
  v12 = forCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = forCopy;
  [(GEOSQLiteDB *)db executeAsync:v11];
}

- (id)lookupIdentifierByPhoneNumber:(id)number
{
  numberCopy = number;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[GEOPDPlaceCache lookupIdentifierByPhoneNumber:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x2020000000;
  v27 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  db = self->_db;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000102B4;
  v17[3] = &unk_100083990;
  v17[4] = self;
  v7 = numberCopy;
  v18 = v7;
  p_buf = &buf;
  v20 = &v21;
  [(GEOSQLiteDB *)db executeSync:v17];
  if (*(*(&buf + 1) + 24))
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "returning muid for phone number", v16, 2u);
    }

    v9 = [GEOMapItemIdentifier alloc];
    v10 = [v9 initWithMUID:*(*(&buf + 1) + 24) resultProviderID:0 coordinate:{-180.0, -180.0}];
LABEL_11:
    v13 = v10;
    goto LABEL_12;
  }

  if (v22[3])
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "returning bmid for phone number", v16, 2u);
    }

    v12 = [GEOMapItemIdentifier alloc];
    v10 = [v12 initWithBasemapId:v22[3] resultProviderID:0 coordinate:{-180.0, -180.0}];
    goto LABEL_11;
  }

  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "returning nil id for phone number", v16, 2u);
  }

  v13 = 0;
LABEL_12:

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&buf, 8);

  return v13;
}

- (void)lookupPlaceByHandle:(id)handle allowExpired:(BOOL)expired resultBlock:(id)block
{
  handleCopy = handle;
  blockCopy = block;
  v10 = [(GEOPDPlaceCache *)self _cacheKeyForHandle:handleCopy];
  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "using cacheKey '%{private}@' for request", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = sub_10000C9A8;
  v35 = sub_10000C9B8;
  v36 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  db = self->_db;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100010750;
  v16[3] = &unk_1000819A0;
  v16[4] = self;
  v13 = v10;
  expiredCopy = expired;
  v17 = v13;
  p_buf = &buf;
  v19 = &v26;
  v20 = &v22;
  [(GEOSQLiteDB *)db executeSync:v16];
  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    if (*(*(&buf + 1) + 40))
    {
      v15 = @" ";
    }

    else
    {
      v15 = @" nil ";
    }

    *v30 = 138412290;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "returning%@place for handle", v30, 0xCu);
  }

  (*(blockCopy + 2))(blockCopy, *(*(&buf + 1) + 40), *(v27 + 24), v23[3]);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)lookupPlaceByIdentifier:(id)identifier allowExpired:(BOOL)expired resultBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[GEOPDPlaceCache lookupPlaceByIdentifier:allowExpired:resultBlock:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
  }

  mapsIdentifier = [identifierCopy mapsIdentifier];
  shardedId = [mapsIdentifier shardedId];
  hasMuid = [shardedId hasMuid];

  if (hasMuid)
  {
    mapsIdentifier2 = [identifierCopy mapsIdentifier];
    shardedId2 = [mapsIdentifier2 shardedId];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%llu", @"muid-", [shardedId2 muid]);
LABEL_7:
    v20 = v16;

    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138477827;
      *(&buf + 4) = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "using cacheKey '%{private}@' for request", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v44 = 0x3032000000;
    v45 = sub_10000C9A8;
    v46 = sub_10000C9B8;
    v47 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    db = self->_db;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100010D04;
    v27[3] = &unk_1000819A0;
    v27[4] = self;
    v23 = v20;
    expiredCopy = expired;
    v28 = v23;
    p_buf = &buf;
    v30 = &v37;
    v31 = &v33;
    [(GEOSQLiteDB *)db executeSync:v27];
    v24 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      if (*(*(&buf + 1) + 40))
      {
        v25 = @" ";
      }

      else
      {
        v25 = @" nil ";
      }

      *v41 = 138412290;
      v42 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "returning%@place for identifier", v41, 0xCu);
    }

    (*(blockCopy + 2))(blockCopy, *(*(&buf + 1) + 40), *(v38 + 24), v34[3]);
    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&buf, 8);

    goto LABEL_18;
  }

  mapsIdentifier3 = [identifierCopy mapsIdentifier];
  shardedId3 = [mapsIdentifier3 shardedId];
  hasBasemapId = [shardedId3 hasBasemapId];

  if (hasBasemapId)
  {
    mapsIdentifier2 = [identifierCopy mapsIdentifier];
    shardedId2 = [mapsIdentifier2 shardedId];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%llu", @"bmid-", [shardedId2 basemapId]);
    goto LABEL_7;
  }

  v26 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "unable to create cacheKey for request", &buf, 2u);
  }

  (*(blockCopy + 2))(blockCopy, 0, 0, 0);
LABEL_18:
}

- (void)lookupPlaceByPhoneNumber:(id)number allowExpired:(BOOL)expired resultBlock:(id)block
{
  numberCopy = number;
  blockCopy = block;
  numberCopy = [NSString stringWithFormat:@"%@%@", @"phNo-", numberCopy];
  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = numberCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "using cacheKey '%{private}@' for request", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = sub_10000C9A8;
  v35 = sub_10000C9B8;
  v36 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  db = self->_db;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001110C;
  v16[3] = &unk_1000819A0;
  v16[4] = self;
  v13 = numberCopy;
  expiredCopy = expired;
  v17 = v13;
  p_buf = &buf;
  v19 = &v26;
  v20 = &v22;
  [(GEOSQLiteDB *)db executeSync:v16];
  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    if (*(*(&buf + 1) + 40))
    {
      v15 = @" ";
    }

    else
    {
      v15 = @" nil ";
    }

    *v30 = 138412290;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "returning%@place for phone number", v30, 0xCu);
  }

  (*(blockCopy + 2))(blockCopy, *(*(&buf + 1) + 40), *(v27 + 24), v23[3]);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)lookupPlaceByRequest:(id)request allowExpired:(BOOL)expired resultBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  cacheKey = [requestCopy cacheKey];
  v11 = GEOFindOrCreateLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (cacheKey)
  {
    if (v12)
    {
      LODWORD(buf) = 138477827;
      *(&buf + 4) = cacheKey;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "using cacheKey '%{private}@' for request", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v33 = 0x3032000000;
    v34 = sub_10000C9A8;
    v35 = sub_10000C9B8;
    v36 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    db = self->_db;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100011554;
    v16[3] = &unk_1000819A0;
    v16[4] = self;
    expiredCopy = expired;
    v17 = cacheKey;
    p_buf = &buf;
    v19 = &v26;
    v20 = &v22;
    [(GEOSQLiteDB *)db executeSync:v16];
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      if (*(*(&buf + 1) + 40))
      {
        v15 = @" ";
      }

      else
      {
        v15 = @" nil ";
      }

      *v30 = 138412290;
      v31 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "returning%@place for request", v30, 0xCu);
    }

    (*(blockCopy + 2))(blockCopy, *(*(&buf + 1) + 40), *(v27 + 24), v23[3]);
    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (v12)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "request has no cacheKey", &buf, 2u);
    }

    (*(blockCopy + 2))(blockCopy, 0, 0, 0);
  }
}

- (void)_lookupPlaceByRequestKey:(id)key allowExpiredPlace:(BOOL)place resultBlock:(id)block
{
  placeCopy = place;
  keyCopy = key;
  blockCopy = block;
  isolationQueue = [(GEOSQLiteDB *)self->_db isolationQueue];
  dispatch_assert_queue_V2(isolationQueue);

  WeakRetained = objc_loadWeakRetained(&self->_schedulingDelegate);
  currentTime = [WeakRetained currentTime];

  Integer = 0.0;
  if (placeCopy)
  {
    v14 = GeoServicesConfig_PDPlaceCacheExpiredPlaceGracePeriodInSeconds[1];
    Integer = GEOConfigGetInteger();
  }

  if (([(GEOSQLiteDB *)self->_db prepareStatement:"SELECT b.pdplace forKey:b.expiretime, b.pdplacehash FROM pdplacelookup a, pdplaces b WHERE a.requestkey = @requestkey AND       a.pdplacehash = b.pdplacehash AND       b.expiretime > @expiretime;", @"lookupByReqKey"]& 1) == 0)
  {
    (*(blockCopy + 2))(blockCopy, 0, 0, 0);
    goto LABEL_26;
  }

  v15 = [(GEOSQLiteDB *)self->_db statementForKey:@"lookupByReqKey"];
  db = self->_db;
  v41 = 0;
  v17 = [(GEOSQLiteDB *)db bindTextParameter:"@requestkey" toValue:keyCopy inStatement:v15 error:&v41];
  v18 = v41;
  if ((v17 & 1) == 0)
  {
    (*(blockCopy + 2))(blockCopy, 0, 0, 0);

    goto LABEL_26;
  }

  v19 = currentTime;
  v20 = self->_db;
  v40 = v18;
  v21 = [(GEOSQLiteDB *)v20 bindInt64Parameter:"@expiretime" toValue:(currentTime - Integer) inStatement:v15 error:&v40];
  v22 = v40;

  if ((v21 & 1) == 0)
  {
    (*(blockCopy + 2))(blockCopy, 0, 0, 0);
    goto LABEL_25;
  }

  if (sqlite3_step(v15) != 100)
  {
    sqlite3_reset(v15);
    v24 = 0;
    v27 = 0;
    v30 = 0;
LABEL_21:
    v35 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "no valid place in the cache", buf, 2u);
    }

    (*(blockCopy + 2))(blockCopy, 0, v27, v24);
    goto LABEL_24;
  }

  v36 = v22;
  v23 = [(GEOSQLiteDB *)self->_db blobForColumn:0 inStatment:v15];
  v24 = [v23 length];
  v25 = [[GEOPDPlace alloc] initWithData:v23];
  v26 = [(GEOSQLiteDB *)self->_db int64ForColumn:1 inStatment:v15];
  v27 = v19 > v26;
  if (v19 > v26)
  {
    recentlySeenPlaceHashes = self->_recentlySeenPlaceHashes;
    cacheKey = [v25 cacheKey];
    [(NSMutableOrderedSet *)recentlySeenPlaceHashes removeObject:cacheKey];
  }

  v30 = [(GEOSQLiteDB *)self->_db stringForColumn:2 inStatment:v15];

  sqlite3_reset(v15);
  if (!v25)
  {
LABEL_20:
    v22 = v36;
    goto LABEL_21;
  }

  v31 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "found a place in the cache", buf, 2u);
  }

  if (![(GEOPDPlaceCache *)self _meetsManifestVersionPolicyForPlace:v25])
  {

    v33 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "place does not meet service version requirement", buf, 2u);
    }

    v34 = self->_db;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100011B1C;
    v37[3] = &unk_100083940;
    v37[4] = self;
    v30 = v30;
    v38 = v30;
    [(GEOSQLiteDB *)v34 executeAsync:v37];

    goto LABEL_20;
  }

  v32 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "place meets service version requirement", buf, 2u);
  }

  [(GEOPDPlaceCache *)self enqueueAccessTimeUpdateForCacheKey:keyCopy accessTime:v19];
  (*(blockCopy + 2))(blockCopy, v25, v19 > v26, v24);

  v22 = v36;
LABEL_24:

LABEL_25:
LABEL_26:
}

- (void)storeShortMapURL:(id)l longMapsURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v8 = GeoServicesConfig_MapsURLCacheTTL[1];
  GEOConfigGetDouble();
  v10 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_schedulingDelegate);
  v12 = [WeakRetained currentTime] + v10;

  db = self->_db;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100011C24;
  v16[3] = &unk_100082F48;
  v16[4] = self;
  v17 = lCopy;
  v18 = rLCopy;
  v19 = v12;
  v14 = rLCopy;
  v15 = lCopy;
  [(GEOSQLiteDB *)db executeAsync:v16];
}

- (void)storePlace:(id)place forRequest:(id)request completionQueue:(id)queue completion:(id)completion
{
  placeCopy = place;
  requestCopy = request;
  queueCopy = queue;
  completionCopy = completion;
  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v36 = "[GEOPDPlaceCache storePlace:forRequest:completionQueue:completion:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if ([requestCopy shouldConsiderCaching] && objc_msgSend(placeCopy, "isCacheable"))
  {
    cacheKey = [placeCopy cacheKey];
    v16 = [(GEOPDPlaceCache *)self _cacheKeysForPlace:placeCopy request:requestCopy];
    cacheKey2 = [requestCopy cacheKey];
    if (cacheKey2)
    {
      [v16 addObject:cacheKey2];
    }

    if (([placeCopy nilPlace] & 1) == 0)
    {
      v18 = [[_GEOPlaceDataItem alloc] initWithPlaceData:placeCopy];
      v19 = [GEOMapItemHandle handleDataForMapItem:v18];

      if (v19)
      {
        v20 = [(GEOPDPlaceCache *)self _cacheKeyForHandle:v19];
        [v16 addObject:v20];
      }
    }

    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = [v16 componentsJoinedByString:{@", "}];
      *buf = 138477827;
      v36 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "cache keys : %{private}@", buf, 0xCu);
    }

    if ([v16 count])
    {
      v23 = [placeCopy pdPlaceCacheKeyForRequest:requestCopy];
      db = self->_db;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100012338;
      v29[3] = &unk_100081978;
      v29[4] = self;
      v30 = placeCopy;
      v31 = v23;
      v16 = v16;
      v32 = v16;
      v34 = completionCopy;
      v33 = queueCopy;
      v25 = v23;
      [(GEOSQLiteDB *)db executeAsync:v29];

LABEL_21:
      goto LABEL_22;
    }

    if (!completionCopy)
    {
      goto LABEL_22;
    }

LABEL_16:
    global_queue = queueCopy;
    if (!queueCopy)
    {
      global_queue = geo_get_global_queue();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012428;
    block[3] = &unk_1000833E0;
    v28 = completionCopy;
    dispatch_async(global_queue, block);
    if (!queueCopy)
    {
    }

    cacheKey2 = v28;
    goto LABEL_21;
  }

  v16 = 0;
  if (completionCopy)
  {
    goto LABEL_16;
  }

LABEL_22:
}

- (void)storePlace:(id)place forRequest:(id)request
{
  requestCopy = request;
  placeCopy = place;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "[GEOPDPlaceCache storePlace:forRequest:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s", &v9, 0xCu);
  }

  [(GEOPDPlaceCache *)self storePlace:placeCopy forRequest:requestCopy completionQueue:0 completion:0];
}

- (void)trackPlace:(id)place completionQueue:(id)queue completion:(id)completion
{
  placeCopy = place;
  queueCopy = queue;
  completionCopy = completion;
  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v27 = "[GEOPDPlaceCache trackPlace:completionQueue:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if ([placeCopy isCacheable])
  {
    cacheKey = [placeCopy cacheKey];
    v13 = [(GEOPDPlaceCache *)self _cacheKeysForPlace:placeCopy request:0];
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = [v13 componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v27 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "cache keys : %@", buf, 0xCu);
    }

    if ([v13 count])
    {
      db = self->_db;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100012828;
      v21[3] = &unk_100082190;
      v21[4] = self;
      v22 = placeCopy;
      v23 = v13;
      v25 = completionCopy;
      v24 = queueCopy;
      v17 = v13;
      [(GEOSQLiteDB *)db executeAsync:v21];

LABEL_15:
      goto LABEL_16;
    }
  }

  if (completionCopy)
  {
    global_queue = queueCopy;
    if (!queueCopy)
    {
      global_queue = geo_get_global_queue();
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100012930;
    v19[3] = &unk_1000833E0;
    v20 = completionCopy;
    dispatch_async(global_queue, v19);
    if (!queueCopy)
    {
    }

    v17 = v20;
    goto LABEL_15;
  }

LABEL_16:
}

- (void)trackPlace:(id)place
{
  placeCopy = place;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[GEOPDPlaceCache trackPlace:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s", &v6, 0xCu);
  }

  [(GEOPDPlaceCache *)self trackPlace:placeCopy completionQueue:0 completion:0];
}

- (id)_cacheKeyForHandle:(id)handle
{
  handleCopy = handle;
  [handleCopy bytes];
  [handleCopy length];

  _GEOMurmurHash3_128_realign();
  v4 = [NSString stringWithFormat:@"%@%llx%llx", @"hndl-", 0, 0];

  return v4;
}

- (id)_cacheKeysForPlace:(id)place request:(id)request
{
  placeCopy = place;
  requestCopy = request;
  v7 = +[NSMutableArray array];
  if ([placeCopy nilPlace])
  {
    goto LABEL_15;
  }

  if ([placeCopy hasMuid])
  {
    mapsId2 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%llu", @"muid-", [placeCopy muid]);
    [v7 addObject:mapsId2];
LABEL_11:

    goto LABEL_12;
  }

  mapsId = [placeCopy mapsId];
  shardedId = [mapsId shardedId];
  hasMuid = [shardedId hasMuid];

  if (hasMuid)
  {
    mapsId2 = [placeCopy mapsId];
    shardedId2 = [mapsId2 shardedId];
    muid = [shardedId2 muid];
    v14 = @"muid-";
LABEL_6:
    v15 = [NSString stringWithFormat:@"%@%llu", v14, muid];
    [v7 addObject:v15];

    goto LABEL_11;
  }

  mapsId2 = [placeCopy mapsId];
  shardedId3 = [mapsId2 shardedId];
  if (![shardedId3 hasBasemapId])
  {

    goto LABEL_11;
  }

  v17 = [placeCopy shouldCacheByBasemapIDForRequest:requestCopy];

  if (v17)
  {
    mapsId2 = [placeCopy mapsId];
    shardedId2 = [mapsId2 shardedId];
    muid = [shardedId2 basemapId];
    v14 = @"bmid-";
    goto LABEL_6;
  }

LABEL_12:
  entityComponent = [placeCopy entityComponent];
  if ([entityComponent hasTelephone])
  {
    telephone = [entityComponent telephone];
    v20 = [NSString stringWithFormat:@"%@%@", @"phNo-", telephone];
    [v7 addObject:v20];
  }

LABEL_15:

  return v7;
}

- (void)_storePlace:(id)place withHash:(id)hash forRequestKeys:(id)keys
{
  placeCopy = place;
  hashCopy = hash;
  keysCopy = keys;
  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v43 = "[GEOPDPlaceCache _storePlace:withHash:forRequestKeys:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  isolationQueue = [(GEOSQLiteDB *)self->_db isolationQueue];
  dispatch_assert_queue_V2(isolationQueue);

  if ([(GEOPDPlaceCache *)self _meetsManifestVersionPolicyForPlace:placeCopy])
  {
    cacheKey = [placeCopy cacheKey];
    if ([(NSMutableOrderedSet *)self->_recentlySeenPlaceHashes containsObject:cacheKey])
    {
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138477827;
        v43 = cacheKey;
        v15 = "place exists in recentlySeenPlaces set (%{private}@); will not store";
        v16 = v14;
        v17 = 12;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, v15, buf, v17);
      }
    }

    else
    {
      [(NSMutableOrderedSet *)self->_recentlySeenPlaceHashes addObject:cacheKey];
      if ([(NSMutableOrderedSet *)self->_recentlySeenPlaceHashes count]>= 0x65)
      {
        [(NSMutableOrderedSet *)self->_recentlySeenPlaceHashes removeObjectAtIndex:0];
      }

      minTTL = [placeCopy minTTL];
      v19 = GeoServicesConfig_PDPlaceCacheMinimumTTLToStore[1];
      if (GEOConfigGetInteger() <= minTTL)
      {
        v21 = minTTL;
        copyWithoutETAComponents = [placeCopy copyWithoutETAComponents];
        data = [copyWithoutETAComponents data];

        [placeCopy firstSeenTimestamp];
        v25 = v24;
        WeakRetained = objc_loadWeakRetained(&self->_schedulingDelegate);
        currentTime = [WeakRetained currentTime];

        if (v25 == 0.0)
        {
          v28 = currentTime;
        }

        else
        {
          v28 = v25;
        }

        db = self->_db;
        v32 = _NSConcreteStackBlock;
        v33 = 3221225472;
        v34 = sub_100013178;
        v35 = &unk_100081950;
        selfCopy = self;
        v40 = v28 + v21;
        v37 = hashCopy;
        v38 = data;
        v39 = keysCopy;
        v41 = currentTime;
        v14 = data;
        LOBYTE(db) = [(GEOSQLiteDB *)db executeInTransaction:&v32];
        v30 = GEOFindOrCreateLog();
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
        if (db)
        {
          if (v31)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "place was stored successfully", buf, 2u);
          }

          [(GEOPDPlaceCache *)self scheduleCleanup:v32];
        }

        else
        {
          if (v31)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "place failed to be stored", buf, 2u);
          }
        }

        goto LABEL_26;
      }

      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        Integer = GEOConfigGetInteger();
        *buf = 67109120;
        LODWORD(v43) = Integer;
        v15 = "place has a minTTL < %d, not writing it down";
        v16 = v14;
        v17 = 8;
        goto LABEL_14;
      }
    }

LABEL_26:

    goto LABEL_27;
  }

  cacheKey = GEOFindOrCreateLog();
  if (os_log_type_enabled(cacheKey, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, cacheKey, OS_LOG_TYPE_DEBUG, "place does not meet manifest version policy", buf, 2u);
  }

LABEL_27:
}

- (BOOL)_meetsManifestVersionPolicyForPlace:(id)place
{
  placeCopy = place;
  WeakRetained = objc_loadWeakRetained(&self->_manifestInfoProvider);
  serviceVersions = [WeakRetained serviceVersions];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = serviceVersions;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    selfCopy = self;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [placeCopy meetsManifestVersioningForServiceVersion:*(*(&v21 + 1) + 8 * i)];
        v13 = GEOFindOrCreateLog();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
        if ((v12 & 1) == 0)
        {
          if (v14)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "place does not meet service version requirement", buf, 2u);
          }

          recentlySeenPlaceHashes = selfCopy->_recentlySeenPlaceHashes;
          cacheKey = [placeCopy cacheKey];
          [(NSMutableOrderedSet *)recentlySeenPlaceHashes removeObject:cacheKey];

          v15 = 0;
          goto LABEL_15;
        }

        if (v14)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "place meets service version requirement", buf, 2u);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_15:

  return v15;
}

- (BOOL)_deleteAndResetDB:(id)b
{
  bCopy = b;
  if (!bCopy)
  {
    bCopy = sub_100013B98();
  }

  [(NSMutableOrderedSet *)self->_recentlySeenPlaceHashes removeAllObjects];
  db = self->_db;
  v6 = [(GEOSQLiteDB *)db log];
  sub_100013BEC(db, 1);

  if (![(GEOSQLiteDB *)self->_db createTable:"CREATE TABLE IF NOT EXISTS pdplaces (pdplacehash TEXT PRIMARY KEY NOT NULL withDrop:expiretime INT NOT NULL, pdplace BLOB NOT NULL);", "DROP TABLE pdplaces"])
  {
    goto LABEL_8;
  }

  if (![(GEOSQLiteDB *)self->_db createTable:"CREATE TABLE IF NOT EXISTS pdplacelookup (requestkey TEXT PRIMARY KEY NOT NULL withDrop:pdplacehash TEXT NOT NULL, lastaccesstime INT NOT NULL);", "DROP TABLE pdplacelookup"])
  {
    goto LABEL_8;
  }

  v7 = self->_db;
  v8 = bCopy;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_10000C9A8;
  v18[4] = sub_10000C9B8;
  v19 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100013DA0;
  v14[3] = &unk_100081B58;
  v9 = v7;
  v15 = v9;
  v10 = v8;
  v16 = v10;
  v17 = v18;
  v11 = [(GEOSQLiteDB *)v9 executeStatement:@"SetLocale" statementBlock:v14];

  _Block_object_dispose(v18, 8);
  if (v11)
  {
    [(GEOSQLiteDB *)self->_db setUser_version:2];
    v12 = 1;
  }

  else
  {
LABEL_8:
    v12 = 0;
  }

  return v12;
}

- (BOOL)_validateDBLocaleAndResetIfNecessary
{
  v3 = sub_100013B98();
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10000C9A8;
  v19 = sub_10000C9B8;
  v20 = 0;
  db = self->_db;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100014130;
  v14[3] = &unk_100081928;
  v14[4] = &v15;
  v5 = db;
  v6 = v14;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_10000C9A8;
  v21[4] = sub_10000C9B8;
  v22 = 0;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_100014158;
  v24 = &unk_100081B30;
  v7 = v5;
  v25 = v7;
  v8 = v6;
  v26 = v8;
  v27 = v21;
  [(GEOSQLiteDB *)v7 statementForKey:@"GetLocale" statementBlock:buf];

  _Block_object_dispose(v21, 8);
  if ([v16[5] isEqual:v3])
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = v16[5];
      *buf = 138412546;
      *&buf[4] = v3;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Locale did not change. %@ == %@", buf, 0x16u);
    }

    v11 = 1;
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Locale changed. Dropping all cached data", buf, 2u);
    }

    v11 = [(GEOPDPlaceCache *)self _deleteAndResetDB:v3];
  }

  _Block_object_dispose(&v15, 8);

  return v11;
}

- (void)_localeChanged:(id)changed
{
  changedCopy = changed;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_10000C9A8;
  v7[4] = sub_10000C9B8;
  v8 = _GEOCreateTransaction();
  db = self->_db;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001433C;
  v6[3] = &unk_100082ED0;
  v6[4] = self;
  v6[5] = v7;
  [(GEOSQLiteDB *)db executeAsync:v6];
  _Block_object_dispose(v7, 8);
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GEOPDPlaceCache;
  [(GEOPDPlaceCache *)&v4 dealloc];
}

- (GEOPDPlaceCache)initWithCacheFilePath:(id)path schedulingDelegate:(id)delegate manifestInfoProvider:(id)provider
{
  pathCopy = path;
  delegateCopy = delegate;
  providerCopy = provider;
  v28.receiver = self;
  v28.super_class = GEOPDPlaceCache;
  v11 = [(GEOPDPlaceCache *)&v28 init];
  if (v11)
  {
    v12 = [GEOSQLiteDB alloc];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000145C4;
    v26[3] = &unk_100081900;
    v13 = v11;
    v27 = v13;
    v14 = [v12 initWithQueueName:"com.apple.geo.pdplacecache" logFacility:"GEOPDPlaceCache" dbFilePath:pathCopy sqliteFlags:3145728 pragmas:0 setupBlock:v26];
    db = v13->_db;
    v13->_db = v14;

    if (delegateCopy)
    {
      v16 = delegateCopy;
    }

    else
    {
      v16 = v13;
    }

    objc_storeWeak(&v13->_schedulingDelegate, v16);
    if (providerCopy)
    {
      v17 = providerCopy;
    }

    else
    {
      v17 = v13;
    }

    objc_storeWeak(&v13->_manifestInfoProvider, v17);
    v18 = +[NSMutableDictionary dictionary];
    accessTimesDict = v13->_accessTimesDict;
    v13->_accessTimesDict = v18;

    cleanupTimer = v13->_cleanupTimer;
    v13->_cleanupTimer = 0;

    v21 = GeoServicesConfig_PDPlaceCacheShouldUseRecentlySeenPlaceFilter[1];
    if (GEOConfigGetBOOL())
    {
      v22 = [NSMutableOrderedSet orderedSetWithCapacity:100];
      recentlySeenPlaceHashes = v13->_recentlySeenPlaceHashes;
      v13->_recentlySeenPlaceHashes = v22;
    }

    v24 = +[NSNotificationCenter defaultCenter];
    [v24 addObserver:v13 selector:"_localeChanged:" name:NSCurrentLocaleDidChangeNotification object:0];
  }

  return v11;
}

@end