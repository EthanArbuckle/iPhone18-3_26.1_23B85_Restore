@interface CDDaemonRecentVolumeInfo
+ (id)CDRecentVolumeInfo:(id)info;
- (BOOL)_validateWithSharedCacheDeleteForService:(id)service;
- (BOOL)hasSnapshot;
- (BOOL)prunePreserving:(id)preserving;
- (id)bsdDisk;
- (id)copyWithZone:(_NSZone *)zone;
- (id)thresholds;
- (unint64_t)_reserveForVolume;
- (unint64_t)reserve;
@end

@implementation CDDaemonRecentVolumeInfo

- (unint64_t)reserve
{
  cdVolume = [(CDDaemonRecentVolumeInfo *)self cdVolume];
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

    volume = [(CDDaemonRecentVolumeInfo *)self volume];
    v7 = [(CDDaemonRecentVolumeInfo *)self createVolumeWithPath:volume];
    [(CDDaemonRecentVolumeInfo *)self setCdVolume:v7];
  }

  cdVolume2 = [(CDDaemonRecentVolumeInfo *)self cdVolume];
  reserve = [cdVolume2 reserve];

  return reserve;
}

- (id)bsdDisk
{
  cdVolume = [(CDDaemonRecentVolumeInfo *)self cdVolume];
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

    volume = [(CDDaemonRecentVolumeInfo *)self volume];
    v7 = [(CDDaemonRecentVolumeInfo *)self createVolumeWithPath:volume];
    [(CDDaemonRecentVolumeInfo *)self setCdVolume:v7];
  }

  cdVolume2 = [(CDDaemonRecentVolumeInfo *)self cdVolume];
  bsdDisk = [cdVolume2 bsdDisk];

  return bsdDisk;
}

- (id)thresholds
{
  cdVolume = [(CDDaemonRecentVolumeInfo *)self cdVolume];
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

    volume = [(CDDaemonRecentVolumeInfo *)self volume];
    v7 = [(CDDaemonRecentVolumeInfo *)self createVolumeWithPath:volume];
    [(CDDaemonRecentVolumeInfo *)self setCdVolume:v7];
  }

  cdVolume2 = [(CDDaemonRecentVolumeInfo *)self cdVolume];
  thresholds = [cdVolume2 thresholds];

  return thresholds;
}

- (BOOL)hasSnapshot
{
  volume = [(CDDaemonRecentVolumeInfo *)self volume];
  v3 = [CacheDeleteDaemonVolume volumeWithMountpoint:volume];
  hasSnapshotsExcludingTimeMachine = [v3 hasSnapshotsExcludingTimeMachine];

  return hasSnapshotsExcludingTimeMachine;
}

- (unint64_t)_reserveForVolume
{
  cdVolume = [(CDDaemonRecentVolumeInfo *)self cdVolume];
  reserve = [cdVolume reserve];

  return reserve;
}

+ (id)CDRecentVolumeInfo:(id)info
{
  infoCopy = info;
  v4 = [[CDDaemonRecentVolumeInfo alloc] initWithServices:0 volumeName:infoCopy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(CDDaemonRecentVolumeInfo);
  services = [(CDDaemonRecentVolumeInfo *)self services];
  v7 = [services copyWithZone:zone];
  [(CDDaemonRecentVolumeInfo *)v5 setServices:v7];

  timestamp = [(CDDaemonRecentVolumeInfo *)self timestamp];
  v9 = [timestamp copyWithZone:zone];
  [(CDDaemonRecentVolumeInfo *)v5 setTimestamp:v9];

  freespace = [(CDDaemonRecentVolumeInfo *)self freespace];
  v11 = [freespace copyWithZone:zone];
  [(CDDaemonRecentVolumeInfo *)v5 setFreespace:v11];

  volume = [(CDDaemonRecentVolumeInfo *)self volume];
  v13 = [volume copyWithZone:zone];
  [(CDDaemonRecentVolumeInfo *)v5 setVolume:v13];

  [(CDDaemonRecentVolumeInfo *)v5 setVolumeState:[(CDDaemonRecentVolumeInfo *)self volumeState]];
  thresholds = [(CDDaemonRecentVolumeInfo *)self thresholds];
  v15 = [thresholds copyWithZone:zone];
  [(CDDaemonRecentVolumeInfo *)v5 setThresholds:v15];

  bsdDisk = [(CDDaemonRecentVolumeInfo *)self bsdDisk];
  v17 = [bsdDisk copyWithZone:zone];
  [(CDDaemonRecentVolumeInfo *)v5 setBsdDisk:v17];

  [(CDDaemonRecentVolumeInfo *)v5 setReserve:[(CDDaemonRecentVolumeInfo *)self reserve]];
  volume2 = [(CDDaemonRecentVolumeInfo *)self volume];
  v19 = [(CDDaemonRecentVolumeInfo *)self createVolumeWithPath:volume2];
  [(CDDaemonRecentVolumeInfo *)v5 setCdVolume:v19];

  return v5;
}

- (BOOL)_validateWithSharedCacheDeleteForService:(id)service
{
  serviceCopy = service;
  v4 = +[CacheDelete sharedCacheDelete];
  v5 = v4;
  v6 = !v4 || [v4 validateService:serviceCopy];

  return v6;
}

- (BOOL)prunePreserving:(id)preserving
{
  preservingCopy = preserving;
  v5 = objc_opt_new();
  selfCopy = self;
  services = [(CDDaemonRecentVolumeInfo *)self services];
  allKeys = [services allKeys];
  v8 = [NSMutableSet setWithArray:allKeys];

  v9 = +[CacheDelete sharedCacheDelete];
  v24 = preservingCopy;
  [v8 minusSet:preservingCopy];
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
              volume = [(CDDaemonRecentVolumeInfo *)selfCopy volume];
              services2 = [(CDDaemonRecentVolumeInfo *)selfCopy services];
              [services2 objectForKeyedSubscript:v15];
              v20 = v19 = v5;
              *buf = 67110146;
              v32 = 78;
              v33 = 2080;
              v34 = "[CDDaemonRecentVolumeInfo prunePreserving:]";
              v35 = 2112;
              v36 = volume;
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

  services3 = [(CDDaemonRecentVolumeInfo *)selfCopy services];
  allObjects = [v5 allObjects];
  [services3 removeObjectsForKeys:allObjects];

  return 0;
}

@end