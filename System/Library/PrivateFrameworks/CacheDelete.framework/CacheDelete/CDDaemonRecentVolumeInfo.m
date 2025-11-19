@interface CDDaemonRecentVolumeInfo
+ (id)CDRecentVolumeInfo:(id)a3;
- (BOOL)_validateWithSharedCacheDeleteForService:(id)a3;
- (BOOL)hasSnapshot;
- (BOOL)prunePreserving:(id)a3;
- (id)bsdDisk;
- (id)copyWithZone:(_NSZone *)a3;
- (id)thresholds;
- (unint64_t)_reserveForVolume;
- (unint64_t)reserve;
@end

@implementation CDDaemonRecentVolumeInfo

- (unint64_t)reserve
{
  v3 = [(CDDaemonRecentVolumeInfo *)self cdVolume];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v5 = CDGetLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "reserve: cdVolume of CDDaemonRecentVolumeInfo is not of class CacheDeleteDaemonVolume", v11, 2u);
    }

    v6 = [(CDDaemonRecentVolumeInfo *)self volume];
    v7 = [(CDDaemonRecentVolumeInfo *)self createVolumeWithPath:v6];
    [(CDDaemonRecentVolumeInfo *)self setCdVolume:v7];
  }

  v8 = [(CDDaemonRecentVolumeInfo *)self cdVolume];
  v9 = [v8 reserve];

  return v9;
}

- (id)bsdDisk
{
  v3 = [(CDDaemonRecentVolumeInfo *)self cdVolume];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v5 = CDGetLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "bsdDisk: cdVolume of CDDaemonRecentVolumeInfo is not of class CacheDeleteDaemonVolume", v11, 2u);
    }

    v6 = [(CDDaemonRecentVolumeInfo *)self volume];
    v7 = [(CDDaemonRecentVolumeInfo *)self createVolumeWithPath:v6];
    [(CDDaemonRecentVolumeInfo *)self setCdVolume:v7];
  }

  v8 = [(CDDaemonRecentVolumeInfo *)self cdVolume];
  v9 = [v8 bsdDisk];

  return v9;
}

- (id)thresholds
{
  v3 = [(CDDaemonRecentVolumeInfo *)self cdVolume];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v5 = CDGetLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "thresholds: cdVolume of CDDaemonRecentVolumeInfo is not of class CacheDeleteDaemonVolume", v11, 2u);
    }

    v6 = [(CDDaemonRecentVolumeInfo *)self volume];
    v7 = [(CDDaemonRecentVolumeInfo *)self createVolumeWithPath:v6];
    [(CDDaemonRecentVolumeInfo *)self setCdVolume:v7];
  }

  v8 = [(CDDaemonRecentVolumeInfo *)self cdVolume];
  v9 = [v8 thresholds];

  return v9;
}

- (BOOL)hasSnapshot
{
  v2 = [(CDDaemonRecentVolumeInfo *)self volume];
  v3 = [CacheDeleteDaemonVolume volumeWithMountpoint:v2];
  v4 = [v3 hasSnapshotsExcludingTimeMachine];

  return v4;
}

- (unint64_t)_reserveForVolume
{
  v2 = [(CDDaemonRecentVolumeInfo *)self cdVolume];
  v3 = [v2 reserve];

  return v3;
}

+ (id)CDRecentVolumeInfo:(id)a3
{
  v3 = a3;
  v4 = [[CDDaemonRecentVolumeInfo alloc] initWithServices:0 volumeName:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(CDDaemonRecentVolumeInfo);
  v6 = [(CDDaemonRecentVolumeInfo *)self services];
  v7 = [v6 copyWithZone:a3];
  [(CDDaemonRecentVolumeInfo *)v5 setServices:v7];

  v8 = [(CDDaemonRecentVolumeInfo *)self timestamp];
  v9 = [v8 copyWithZone:a3];
  [(CDDaemonRecentVolumeInfo *)v5 setTimestamp:v9];

  v10 = [(CDDaemonRecentVolumeInfo *)self freespace];
  v11 = [v10 copyWithZone:a3];
  [(CDDaemonRecentVolumeInfo *)v5 setFreespace:v11];

  v12 = [(CDDaemonRecentVolumeInfo *)self volume];
  v13 = [v12 copyWithZone:a3];
  [(CDDaemonRecentVolumeInfo *)v5 setVolume:v13];

  [(CDDaemonRecentVolumeInfo *)v5 setVolumeState:[(CDDaemonRecentVolumeInfo *)self volumeState]];
  v14 = [(CDDaemonRecentVolumeInfo *)self thresholds];
  v15 = [v14 copyWithZone:a3];
  [(CDDaemonRecentVolumeInfo *)v5 setThresholds:v15];

  v16 = [(CDDaemonRecentVolumeInfo *)self bsdDisk];
  v17 = [v16 copyWithZone:a3];
  [(CDDaemonRecentVolumeInfo *)v5 setBsdDisk:v17];

  [(CDDaemonRecentVolumeInfo *)v5 setReserve:[(CDDaemonRecentVolumeInfo *)self reserve]];
  v18 = [(CDDaemonRecentVolumeInfo *)self volume];
  v19 = [(CDDaemonRecentVolumeInfo *)self createVolumeWithPath:v18];
  [(CDDaemonRecentVolumeInfo *)v5 setCdVolume:v19];

  return v5;
}

- (BOOL)_validateWithSharedCacheDeleteForService:(id)a3
{
  v3 = a3;
  v4 = +[CacheDelete sharedCacheDelete];
  v5 = v4;
  v6 = !v4 || [v4 validateService:v3];

  return v6;
}

- (BOOL)prunePreserving:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v26 = self;
  v6 = [(CDDaemonRecentVolumeInfo *)self services];
  v7 = [v6 allKeys];
  v8 = [NSMutableSet setWithArray:v7];

  v9 = +[CacheDelete sharedCacheDelete];
  v24 = v4;
  [v8 minusSet:v4];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    v25 = v10;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if (v9)
        {
          v15 = *(*(&v27 + 1) + 8 * i);
          if (([v9 validateService:v15] & 1) == 0)
          {
            v16 = CDGetLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [(CDDaemonRecentVolumeInfo *)v26 volume];
              v18 = [(CDDaemonRecentVolumeInfo *)v26 services];
              [v18 objectForKeyedSubscript:v15];
              v20 = v19 = v5;
              *buf = 67110146;
              v32 = 78;
              v33 = 2080;
              v34 = "[CDDaemonRecentVolumeInfo prunePreserving:]";
              v35 = 2112;
              v36 = v17;
              v37 = 2112;
              v38 = v15;
              v39 = 2112;
              v40 = v20;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%d %s ***** pruning volume: %@, service: %@, value: %@", buf, 0x30u);

              v5 = v19;
              v10 = v25;
            }

            [v5 addObject:v15];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v41 count:16];
    }

    while (v12);
  }

  v21 = [(CDDaemonRecentVolumeInfo *)v26 services];
  v22 = [v5 allObjects];
  [v21 removeObjectsForKeys:v22];

  return 0;
}

@end