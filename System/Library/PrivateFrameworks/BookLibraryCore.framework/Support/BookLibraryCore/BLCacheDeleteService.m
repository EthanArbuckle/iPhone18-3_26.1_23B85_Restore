@interface BLCacheDeleteService
+ (void)registerCacheDeleteInfoCallbacks:(id)a3;
- (BLCacheDeletePurgeableProvider)purgeableProvider;
- (BLCacheDeleteService)initWithPurgeableProvider:(id)a3;
- (id)_periodic:(id)a3 urgency:(int)a4;
- (id)_purge:(id)a3 urgency:(int)a4;
- (id)_purgeable:(id)a3 urgency:(int)a4;
- (void)_cancelPurge;
@end

@implementation BLCacheDeleteService

- (BLCacheDeleteService)initWithPurgeableProvider:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BLCacheDeleteService;
  v5 = [(BLCacheDeleteService *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(BLCacheDelete);
    cacheDelete = v5->_cacheDelete;
    v5->_cacheDelete = v6;

    objc_storeWeak(&v5->_purgeableProvider, v4);
  }

  return v5;
}

+ (void)registerCacheDeleteInfoCallbacks:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100095638;
  block[3] = &unk_10011D180;
  v6 = a3;
  v3 = qword_10013EC08;
  v4 = v6;
  if (v3 != -1)
  {
    dispatch_once(&qword_10013EC08, block);
  }
}

- (id)_purgeable:(id)a3 urgency:(int)a4
{
  v4 = *&a4;
  v6 = [a3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v7 = sub_100095C60(v4);
  v8 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v18 = 1752392040;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requested purgeable amount for volume %{mask.hash}@.", buf, 0x16u);
  }

  v9 = [(BLCacheDeleteService *)self purgeableProvider];
  v10 = [v9 purgeableForVolume:v6 urgency:v7];

  v11 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v18 = v10;
    v19 = 2160;
    v20 = 1752392040;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Able to purge %ld for volume %{mask.hash}@.", buf, 0x20u);
  }

  v12 = [NSNumber numberWithInteger:v10, @"CACHE_DELETE_VOLUME", @"CACHE_DELETE_AMOUNT", v6];
  v16[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:&v15 count:2];

  return v13;
}

- (id)_purge:(id)a3 urgency:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v8 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  v9 = sub_100095C60(v4);
  v10 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v26 = v8;
    v27 = 2048;
    v28 = v4;
    v29 = 2160;
    v30 = 1752392040;
    v31 = 2112;
    v32 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requested to purge %@ with urgency %ld for volume %{mask.hash}@.", buf, 0x2Au);
  }

  v11 = [(BLCacheDeleteService *)self cacheDelete];
  v12 = [v11 purgeVolume:v7 urgency:v9 requested:v8];

  v13 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v26 = v12;
    v27 = 2160;
    v28 = 1752392040;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Purged %ld for volume %{mask.hash}@.", buf, 0x20u);
  }

  if (v12 >= 1)
  {
    v24[0] = @"purge";
    v23[0] = BLSharedStorageUseChangedSourceKey;
    v23[1] = off_10013E318;
    v14 = [NSNumber numberWithInt:v4];
    v24[1] = v14;
    v24[2] = v7;
    v23[2] = off_10013E320;
    v23[3] = off_10013E328;
    v24[3] = v8;
    v23[4] = off_10013E330;
    v15 = [NSNumber numberWithInteger:v12];
    v24[4] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:5];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 postNotificationName:BLSharedStorageUseChangedNotification object:v16];
  }

  v18 = [NSNumber numberWithInteger:v12, @"CACHE_DELETE_VOLUME", @"CACHE_DELETE_AMOUNT", v7];
  v22[1] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v22 forKeys:&v21 count:2];

  return v19;
}

- (id)_periodic:(id)a3 urgency:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v8 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  v9 = sub_100095C60(v4);
  v10 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v26 = v8;
    v27 = 2048;
    v28 = v4;
    v29 = 2160;
    v30 = 1752392040;
    v31 = 2112;
    v32 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requested to periodic purge %@ with urgency %ld for volume %{mask.hash}@.", buf, 0x2Au);
  }

  v11 = [(BLCacheDeleteService *)self cacheDelete];
  v12 = [v11 periodicPurgeVolume:v7 urgency:v9 requested:v8];

  v13 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Purged %ld.", buf, 0xCu);
  }

  if (v12 >= 1)
  {
    v24[0] = @"periodic";
    v23[0] = BLSharedStorageUseChangedSourceKey;
    v23[1] = off_10013E318;
    v14 = [NSNumber numberWithInt:v4];
    v24[1] = v14;
    v24[2] = v7;
    v23[2] = off_10013E320;
    v23[3] = off_10013E328;
    v24[3] = v8;
    v23[4] = off_10013E330;
    v15 = [NSNumber numberWithInteger:v12];
    v24[4] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:5];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 postNotificationName:BLSharedStorageUseChangedNotification object:0 userInfo:v16];
  }

  v18 = [NSNumber numberWithInteger:v12, @"CACHE_DELETE_VOLUME", @"CACHE_DELETE_AMOUNT", v7];
  v22[1] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v22 forKeys:&v21 count:2];

  return v19;
}

- (void)_cancelPurge
{
  v2 = [(BLCacheDeleteService *)self cacheDelete];
  [v2 cancelPurge];
}

- (BLCacheDeletePurgeableProvider)purgeableProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_purgeableProvider);

  return WeakRetained;
}

@end