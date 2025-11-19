@interface GEOPDPlaceCache
+ (id)sharedCache;
- (BOOL)_deleteAndResetDB:(id)a3;
- (BOOL)_meetsManifestVersionPolicyForPlace:(id)a3;
- (BOOL)_validateDBLocaleAndResetIfNecessary;
- (GEOPDPlaceCache)initWithCacheFilePath:(id)a3 schedulingDelegate:(id)a4 manifestInfoProvider:(id)a5;
- (NSArray)serviceVersions;
- (id)_cacheKeyForHandle:(id)a3;
- (id)_cacheKeysForPlace:(id)a3 request:(id)a4;
- (id)lookupIdentifierByPhoneNumber:(id)a3;
- (unint64_t)_calculateFreeableSpace;
- (unint64_t)_shrinkBySize:(unint64_t)a3;
- (unint64_t)calculateFreeableSpaceSync;
- (unint64_t)shrinkBySizeSync:(unint64_t)a3;
- (void)_evictPlaceWithHash:(id)a3;
- (void)_iterateAllKeysFilteringCacheKeyWithPredicate:(id)a3 entryBlock:(id)a4 finishedBlock:(id)a5;
- (void)_iterateAllPlacesFilteringCacheKeyWithPredicate:(id)a3 entryBlock:(id)a4 finishedBlock:(id)a5;
- (void)_localeChanged:(id)a3;
- (void)_lookupPlaceByRequestKey:(id)a3 allowExpiredPlace:(BOOL)a4 resultBlock:(id)a5;
- (void)_storePlace:(id)a3 withHash:(id)a4 forRequestKeys:(id)a5;
- (void)_updateMapsURLExpiry:(int64_t)a3 expireTime:(unint64_t)a4;
- (void)calculateFreeableSpaceWithHandler:(id)a3;
- (void)cancelCleanupBlockSchedule;
- (void)close;
- (void)dealloc;
- (void)deletePhoneNumberMapping;
- (void)enqueueAccessTimeUpdateForCacheKey:(id)a3 accessTime:(int64_t)a4;
- (void)evictAllEntries;
- (void)iterateAllBasemapIdKeysWithBlock:(id)a3 finishedBlock:(id)a4;
- (void)iterateAllHandleKeysWithBlock:(id)a3 finishedBlock:(id)a4;
- (void)iterateAllMUIDKeysWithBlock:(id)a3 finishedBlock:(id)a4;
- (void)iterateAllMapsURLsWithBlock:(id)a3 finishedBlock:(id)a4;
- (void)iterateAllPhoneKeysWithBlock:(id)a3 finishedBlock:(id)a4;
- (void)iterateBasemapIdPlacesWithBlock:(id)a3 finishedBlock:(id)a4;
- (void)iterateHandlePlacesWithBlock:(id)a3 finishedBlock:(id)a4;
- (void)iterateMUIDPlacesWithBlock:(id)a3 finishedBlock:(id)a4;
- (void)iteratePhonePlacesWithBlock:(id)a3 finishedBlock:(id)a4;
- (void)lookupLongMapsURLFor:(id)a3 completion:(id)a4;
- (void)lookupPlaceByHandle:(id)a3 allowExpired:(BOOL)a4 resultBlock:(id)a5;
- (void)lookupPlaceByIdentifier:(id)a3 allowExpired:(BOOL)a4 resultBlock:(id)a5;
- (void)lookupPlaceByPhoneNumber:(id)a3 allowExpired:(BOOL)a4 resultBlock:(id)a5;
- (void)lookupPlaceByRequest:(id)a3 allowExpired:(BOOL)a4 resultBlock:(id)a5;
- (void)lookupShortMapsURLFor:(id)a3 completion:(id)a4;
- (void)periodicCleanupAndAccessTimeUpdate;
- (void)runCleanupBlock:(id)a3 inSecondsFromNow:(int64_t)a4;
- (void)scheduleCleanup;
- (void)shrinkBySize:(unint64_t)a3 finished:(id)a4;
- (void)storePlace:(id)a3 forRequest:(id)a4;
- (void)storePlace:(id)a3 forRequest:(id)a4 completionQueue:(id)a5 completion:(id)a6;
- (void)storeShortMapURL:(id)a3 longMapsURL:(id)a4;
- (void)trackPlace:(id)a3;
- (void)trackPlace:(id)a3 completionQueue:(id)a4 completion:(id)a5;
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
  v3 = [v2 activeTileGroup];
  v4 = [v3 versionManifest];
  v5 = [v4 serviceVersions];
  v6 = [v5 copy];

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

- (void)runCleanupBlock:(id)a3 inSecondsFromNow:(int64_t)a4
{
  v5 = a3;
  v6 = [(GEOSQLiteDB *)self->_db isolationQueue];
  dispatch_assert_queue_V2(v6);

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

  v10 = [(GEOSQLiteDB *)self->_db isolationQueue];
  v14 = v5;
  v11 = v5;
  v12 = geo_dispatch_timer_create_on_queue();
  v13 = self->_cleanupTimer;
  self->_cleanupTimer = v12;

  dispatch_resume(self->_cleanupTimer);
}

- (void)iterateAllMapsURLsWithBlock:(id)a3 finishedBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = GeoServicesConfig_MapsURLCacheTTL[1];
  GEOConfigGetDouble();
  db = self->_db;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000C6A0;
  v13[3] = &unk_100081B08;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = v10;
  v11 = v7;
  v12 = v6;
  [(GEOSQLiteDB *)db executeAsync:v13];
}

- (void)iterateAllHandleKeysWithBlock:(id)a3 finishedBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", @"hndl-"];
  [(GEOPDPlaceCache *)self _iterateAllKeysFilteringCacheKeyWithPredicate:v8 entryBlock:v7 finishedBlock:v6];
}

- (void)iterateAllPhoneKeysWithBlock:(id)a3 finishedBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", @"phNo-"];
  [(GEOPDPlaceCache *)self _iterateAllKeysFilteringCacheKeyWithPredicate:v8 entryBlock:v7 finishedBlock:v6];
}

- (void)iterateAllBasemapIdKeysWithBlock:(id)a3 finishedBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", @"bmid-"];
  [(GEOPDPlaceCache *)self _iterateAllKeysFilteringCacheKeyWithPredicate:v8 entryBlock:v7 finishedBlock:v6];
}

- (void)iterateAllMUIDKeysWithBlock:(id)a3 finishedBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", @"muid-"];
  [(GEOPDPlaceCache *)self _iterateAllKeysFilteringCacheKeyWithPredicate:v8 entryBlock:v7 finishedBlock:v6];
}

- (void)_iterateAllKeysFilteringCacheKeyWithPredicate:(id)a3 entryBlock:(id)a4 finishedBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  db = self->_db;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000CE64;
  v15[3] = &unk_100081AB8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(GEOSQLiteDB *)db executeAsync:v15];
}

- (void)iterateHandlePlacesWithBlock:(id)a3 finishedBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", @"hndl-"];
  [(GEOPDPlaceCache *)self _iterateAllPlacesFilteringCacheKeyWithPredicate:v8 entryBlock:v7 finishedBlock:v6];
}

- (void)iteratePhonePlacesWithBlock:(id)a3 finishedBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", @"phNo-"];
  [(GEOPDPlaceCache *)self _iterateAllPlacesFilteringCacheKeyWithPredicate:v8 entryBlock:v7 finishedBlock:v6];
}

- (void)iterateBasemapIdPlacesWithBlock:(id)a3 finishedBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", @"bmid-"];
  [(GEOPDPlaceCache *)self _iterateAllPlacesFilteringCacheKeyWithPredicate:v8 entryBlock:v7 finishedBlock:v6];
}

- (void)iterateMUIDPlacesWithBlock:(id)a3 finishedBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH %@", @"muid-"];
  [(GEOPDPlaceCache *)self _iterateAllPlacesFilteringCacheKeyWithPredicate:v8 entryBlock:v7 finishedBlock:v6];
}

- (void)_iterateAllPlacesFilteringCacheKeyWithPredicate:(id)a3 entryBlock:(id)a4 finishedBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  db = self->_db;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000D390;
  v15[3] = &unk_100081AB8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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

- (void)_evictPlaceWithHash:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[GEOPDPlaceCache _evictPlaceWithHash:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v6 = [(GEOSQLiteDB *)self->_db isolationQueue];
  dispatch_assert_queue_V2(v6);

  db = self->_db;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000D76C;
  v9[3] = &unk_100081A68;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(GEOSQLiteDB *)db executeInTransaction:v9];
}

- (void)periodicCleanupAndAccessTimeUpdate
{
  v3 = [(GEOSQLiteDB *)self->_db isolationQueue];
  dispatch_assert_queue_V2(v3);

  WeakRetained = objc_loadWeakRetained(&self->_schedulingDelegate);
  v28 = [WeakRetained currentTime];

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = v28;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "running at %lld", buf, 0xCu);
  }

  if ([(GEOSQLiteDB *)self->_db prepareStatement:"DELETE FROM pdplaces WHERE expiretime < @expiretime;" forKey:@"removeExpired"])
  {
    v6 = [(GEOSQLiteDB *)self->_db statementForKey:@"removeExpired"];
    if ([(GEOSQLiteDB *)self->_db bindInt64Parameter:"@expiretime" toValue:v28 inStatement:v6 error:0])
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
        v16 = [v15 longLongValue];

        if ([(GEOSQLiteDB *)self->_db bindInt64Parameter:"@lastaccesstime" toValue:v16 inStatement:v10 error:0]&& [(GEOSQLiteDB *)self->_db bindTextParameter:"@requestkey" toValue:v14 inStatement:v10 error:0])
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
  v45 = v28;
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

- (void)enqueueAccessTimeUpdateForCacheKey:(id)a3 accessTime:(int64_t)a4
{
  v6 = a3;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[GEOPDPlaceCache enqueueAccessTimeUpdateForCacheKey:accessTime:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s", &v13, 0xCu);
  }

  v8 = [(GEOSQLiteDB *)self->_db isolationQueue];
  dispatch_assert_queue_V2(v8);

  if (v6)
  {
    v9 = [NSNumber numberWithLongLong:a4];
    [(NSMutableDictionary *)self->_accessTimesDict setObject:v9 forKeyedSubscript:v6];

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

- (unint64_t)_shrinkBySize:(unint64_t)a3
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

  while (v7 < a3);
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

- (unint64_t)shrinkBySizeSync:(unint64_t)a3
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
  v9[6] = a3;
  [(GEOSQLiteDB *)db executeSync:v9];
  v7 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  return v7;
}

- (void)shrinkBySize:(unint64_t)a3 finished:(id)a4
{
  v6 = a4;
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
  v13 = a3;
  v10[4] = self;
  v9 = v6;
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

- (void)calculateFreeableSpaceWithHandler:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[GEOPDPlaceCache calculateFreeableSpaceWithHandler:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if (v4)
  {
    db = self->_db;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000EEF4;
    v7[3] = &unk_100083BC0;
    v7[4] = self;
    v8 = v4;
    [(GEOSQLiteDB *)db executeAsync:v7];
  }
}

- (void)_updateMapsURLExpiry:(int64_t)a3 expireTime:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_schedulingDelegate);
  v8 = [WeakRetained currentTime];

  v9 = GeoServicesConfig_MapsURLCacheTTL[1];
  GEOConfigGetDouble();
  v11 = a4 - v10;
  if (v8 >= v11 + 600)
  {
    v13 = &v8[v10];
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
    v30 = a3;
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
      DWORD1(buf) = v8 - v11;
      WORD4(buf) = 1024;
      *(&buf + 10) = 600;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Not updating access time for MapsURL cache, was last touched %d seconds ago (min is %d seconds)", &buf, 0xEu);
    }
  }
}

- (void)lookupLongMapsURLFor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  db = self->_db;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000F3D4;
  v11[3] = &unk_100083738;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(GEOSQLiteDB *)db executeAsync:v11];
}

- (void)lookupShortMapsURLFor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  db = self->_db;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000FA04;
  v11[3] = &unk_100083738;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(GEOSQLiteDB *)db executeAsync:v11];
}

- (id)lookupIdentifierByPhoneNumber:(id)a3
{
  v4 = a3;
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
  v7 = v4;
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

- (void)lookupPlaceByHandle:(id)a3 allowExpired:(BOOL)a4 resultBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(GEOPDPlaceCache *)self _cacheKeyForHandle:v8];
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
  v21 = a4;
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

  (*(v9 + 2))(v9, *(*(&buf + 1) + 40), *(v27 + 24), v23[3]);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)lookupPlaceByIdentifier:(id)a3 allowExpired:(BOOL)a4 resultBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[GEOPDPlaceCache lookupPlaceByIdentifier:allowExpired:resultBlock:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
  }

  v11 = [v8 mapsIdentifier];
  v12 = [v11 shardedId];
  v13 = [v12 hasMuid];

  if (v13)
  {
    v14 = [v8 mapsIdentifier];
    v15 = [v14 shardedId];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%llu", @"muid-", [v15 muid]);
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
    v32 = a4;
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

    (*(v9 + 2))(v9, *(*(&buf + 1) + 40), *(v38 + 24), v34[3]);
    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&buf, 8);

    goto LABEL_18;
  }

  v17 = [v8 mapsIdentifier];
  v18 = [v17 shardedId];
  v19 = [v18 hasBasemapId];

  if (v19)
  {
    v14 = [v8 mapsIdentifier];
    v15 = [v14 shardedId];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%llu", @"bmid-", [v15 basemapId]);
    goto LABEL_7;
  }

  v26 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "unable to create cacheKey for request", &buf, 2u);
  }

  (*(v9 + 2))(v9, 0, 0, 0);
LABEL_18:
}

- (void)lookupPlaceByPhoneNumber:(id)a3 allowExpired:(BOOL)a4 resultBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [NSString stringWithFormat:@"%@%@", @"phNo-", v8];
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
  v16[2] = sub_10001110C;
  v16[3] = &unk_1000819A0;
  v16[4] = self;
  v13 = v10;
  v21 = a4;
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

  (*(v9 + 2))(v9, *(*(&buf + 1) + 40), *(v27 + 24), v23[3]);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)lookupPlaceByRequest:(id)a3 allowExpired:(BOOL)a4 resultBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 cacheKey];
  v11 = GEOFindOrCreateLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v12)
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
    v16[2] = sub_100011554;
    v16[3] = &unk_1000819A0;
    v16[4] = self;
    v21 = a4;
    v17 = v10;
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

    (*(v9 + 2))(v9, *(*(&buf + 1) + 40), *(v27 + 24), v23[3]);
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

    (*(v9 + 2))(v9, 0, 0, 0);
  }
}

- (void)_lookupPlaceByRequestKey:(id)a3 allowExpiredPlace:(BOOL)a4 resultBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(GEOSQLiteDB *)self->_db isolationQueue];
  dispatch_assert_queue_V2(v10);

  WeakRetained = objc_loadWeakRetained(&self->_schedulingDelegate);
  v12 = [WeakRetained currentTime];

  Integer = 0.0;
  if (v6)
  {
    v14 = GeoServicesConfig_PDPlaceCacheExpiredPlaceGracePeriodInSeconds[1];
    Integer = GEOConfigGetInteger();
  }

  if (([(GEOSQLiteDB *)self->_db prepareStatement:"SELECT b.pdplace forKey:b.expiretime, b.pdplacehash FROM pdplacelookup a, pdplaces b WHERE a.requestkey = @requestkey AND       a.pdplacehash = b.pdplacehash AND       b.expiretime > @expiretime;", @"lookupByReqKey"]& 1) == 0)
  {
    (*(v9 + 2))(v9, 0, 0, 0);
    goto LABEL_26;
  }

  v15 = [(GEOSQLiteDB *)self->_db statementForKey:@"lookupByReqKey"];
  db = self->_db;
  v41 = 0;
  v17 = [(GEOSQLiteDB *)db bindTextParameter:"@requestkey" toValue:v8 inStatement:v15 error:&v41];
  v18 = v41;
  if ((v17 & 1) == 0)
  {
    (*(v9 + 2))(v9, 0, 0, 0);

    goto LABEL_26;
  }

  v19 = v12;
  v20 = self->_db;
  v40 = v18;
  v21 = [(GEOSQLiteDB *)v20 bindInt64Parameter:"@expiretime" toValue:(v12 - Integer) inStatement:v15 error:&v40];
  v22 = v40;

  if ((v21 & 1) == 0)
  {
    (*(v9 + 2))(v9, 0, 0, 0);
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

    (*(v9 + 2))(v9, 0, v27, v24);
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
    v29 = [v25 cacheKey];
    [(NSMutableOrderedSet *)recentlySeenPlaceHashes removeObject:v29];
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

  [(GEOPDPlaceCache *)self enqueueAccessTimeUpdateForCacheKey:v8 accessTime:v19];
  (*(v9 + 2))(v9, v25, v19 > v26, v24);

  v22 = v36;
LABEL_24:

LABEL_25:
LABEL_26:
}

- (void)storeShortMapURL:(id)a3 longMapsURL:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v17 = v6;
  v18 = v7;
  v19 = v12;
  v14 = v7;
  v15 = v6;
  [(GEOSQLiteDB *)db executeAsync:v16];
}

- (void)storePlace:(id)a3 forRequest:(id)a4 completionQueue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v36 = "[GEOPDPlaceCache storePlace:forRequest:completionQueue:completion:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if ([v11 shouldConsiderCaching] && objc_msgSend(v10, "isCacheable"))
  {
    v15 = [v10 cacheKey];
    v16 = [(GEOPDPlaceCache *)self _cacheKeysForPlace:v10 request:v11];
    v17 = [v11 cacheKey];
    if (v17)
    {
      [v16 addObject:v17];
    }

    if (([v10 nilPlace] & 1) == 0)
    {
      v18 = [[_GEOPlaceDataItem alloc] initWithPlaceData:v10];
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
      v23 = [v10 pdPlaceCacheKeyForRequest:v11];
      db = self->_db;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100012338;
      v29[3] = &unk_100081978;
      v29[4] = self;
      v30 = v10;
      v31 = v23;
      v16 = v16;
      v32 = v16;
      v34 = v13;
      v33 = v12;
      v25 = v23;
      [(GEOSQLiteDB *)db executeAsync:v29];

LABEL_21:
      goto LABEL_22;
    }

    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_16:
    global_queue = v12;
    if (!v12)
    {
      global_queue = geo_get_global_queue();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012428;
    block[3] = &unk_1000833E0;
    v28 = v13;
    dispatch_async(global_queue, block);
    if (!v12)
    {
    }

    v17 = v28;
    goto LABEL_21;
  }

  v16 = 0;
  if (v13)
  {
    goto LABEL_16;
  }

LABEL_22:
}

- (void)storePlace:(id)a3 forRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "[GEOPDPlaceCache storePlace:forRequest:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s", &v9, 0xCu);
  }

  [(GEOPDPlaceCache *)self storePlace:v7 forRequest:v6 completionQueue:0 completion:0];
}

- (void)trackPlace:(id)a3 completionQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v27 = "[GEOPDPlaceCache trackPlace:completionQueue:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if ([v8 isCacheable])
  {
    v12 = [v8 cacheKey];
    v13 = [(GEOPDPlaceCache *)self _cacheKeysForPlace:v8 request:0];
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
      v22 = v8;
      v23 = v13;
      v25 = v10;
      v24 = v9;
      v17 = v13;
      [(GEOSQLiteDB *)db executeAsync:v21];

LABEL_15:
      goto LABEL_16;
    }
  }

  if (v10)
  {
    global_queue = v9;
    if (!v9)
    {
      global_queue = geo_get_global_queue();
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100012930;
    v19[3] = &unk_1000833E0;
    v20 = v10;
    dispatch_async(global_queue, v19);
    if (!v9)
    {
    }

    v17 = v20;
    goto LABEL_15;
  }

LABEL_16:
}

- (void)trackPlace:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[GEOPDPlaceCache trackPlace:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s", &v6, 0xCu);
  }

  [(GEOPDPlaceCache *)self trackPlace:v4 completionQueue:0 completion:0];
}

- (id)_cacheKeyForHandle:(id)a3
{
  v3 = a3;
  [v3 bytes];
  [v3 length];

  _GEOMurmurHash3_128_realign();
  v4 = [NSString stringWithFormat:@"%@%llx%llx", @"hndl-", 0, 0];

  return v4;
}

- (id)_cacheKeysForPlace:(id)a3 request:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
  if ([v5 nilPlace])
  {
    goto LABEL_15;
  }

  if ([v5 hasMuid])
  {
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%llu", @"muid-", [v5 muid]);
    [v7 addObject:v8];
LABEL_11:

    goto LABEL_12;
  }

  v9 = [v5 mapsId];
  v10 = [v9 shardedId];
  v11 = [v10 hasMuid];

  if (v11)
  {
    v8 = [v5 mapsId];
    v12 = [v8 shardedId];
    v13 = [v12 muid];
    v14 = @"muid-";
LABEL_6:
    v15 = [NSString stringWithFormat:@"%@%llu", v14, v13];
    [v7 addObject:v15];

    goto LABEL_11;
  }

  v8 = [v5 mapsId];
  v16 = [v8 shardedId];
  if (![v16 hasBasemapId])
  {

    goto LABEL_11;
  }

  v17 = [v5 shouldCacheByBasemapIDForRequest:v6];

  if (v17)
  {
    v8 = [v5 mapsId];
    v12 = [v8 shardedId];
    v13 = [v12 basemapId];
    v14 = @"bmid-";
    goto LABEL_6;
  }

LABEL_12:
  v18 = [v5 entityComponent];
  if ([v18 hasTelephone])
  {
    v19 = [v18 telephone];
    v20 = [NSString stringWithFormat:@"%@%@", @"phNo-", v19];
    [v7 addObject:v20];
  }

LABEL_15:

  return v7;
}

- (void)_storePlace:(id)a3 withHash:(id)a4 forRequestKeys:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v43 = "[GEOPDPlaceCache _storePlace:withHash:forRequestKeys:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v12 = [(GEOSQLiteDB *)self->_db isolationQueue];
  dispatch_assert_queue_V2(v12);

  if ([(GEOPDPlaceCache *)self _meetsManifestVersionPolicyForPlace:v8])
  {
    v13 = [v8 cacheKey];
    if ([(NSMutableOrderedSet *)self->_recentlySeenPlaceHashes containsObject:v13])
    {
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138477827;
        v43 = v13;
        v15 = "place exists in recentlySeenPlaces set (%{private}@); will not store";
        v16 = v14;
        v17 = 12;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, v15, buf, v17);
      }
    }

    else
    {
      [(NSMutableOrderedSet *)self->_recentlySeenPlaceHashes addObject:v13];
      if ([(NSMutableOrderedSet *)self->_recentlySeenPlaceHashes count]>= 0x65)
      {
        [(NSMutableOrderedSet *)self->_recentlySeenPlaceHashes removeObjectAtIndex:0];
      }

      v18 = [v8 minTTL];
      v19 = GeoServicesConfig_PDPlaceCacheMinimumTTLToStore[1];
      if (GEOConfigGetInteger() <= v18)
      {
        v21 = v18;
        v22 = [v8 copyWithoutETAComponents];
        v23 = [v22 data];

        [v8 firstSeenTimestamp];
        v25 = v24;
        WeakRetained = objc_loadWeakRetained(&self->_schedulingDelegate);
        v27 = [WeakRetained currentTime];

        if (v25 == 0.0)
        {
          v28 = v27;
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
        v36 = self;
        v40 = v28 + v21;
        v37 = v9;
        v38 = v23;
        v39 = v10;
        v41 = v27;
        v14 = v23;
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

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "place does not meet manifest version policy", buf, 2u);
  }

LABEL_27:
}

- (BOOL)_meetsManifestVersionPolicyForPlace:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_manifestInfoProvider);
  v6 = [WeakRetained serviceVersions];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v19 = self;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v4 meetsManifestVersioningForServiceVersion:*(*(&v21 + 1) + 8 * i)];
        v13 = GEOFindOrCreateLog();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
        if ((v12 & 1) == 0)
        {
          if (v14)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "place does not meet service version requirement", buf, 2u);
          }

          recentlySeenPlaceHashes = v19->_recentlySeenPlaceHashes;
          v17 = [v4 cacheKey];
          [(NSMutableOrderedSet *)recentlySeenPlaceHashes removeObject:v17];

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

- (BOOL)_deleteAndResetDB:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = sub_100013B98();
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
  v8 = v4;
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

- (void)_localeChanged:(id)a3
{
  v4 = a3;
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

- (GEOPDPlaceCache)initWithCacheFilePath:(id)a3 schedulingDelegate:(id)a4 manifestInfoProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v14 = [v12 initWithQueueName:"com.apple.geo.pdplacecache" logFacility:"GEOPDPlaceCache" dbFilePath:v8 sqliteFlags:3145728 pragmas:0 setupBlock:v26];
    db = v13->_db;
    v13->_db = v14;

    if (v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = v13;
    }

    objc_storeWeak(&v13->_schedulingDelegate, v16);
    if (v10)
    {
      v17 = v10;
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