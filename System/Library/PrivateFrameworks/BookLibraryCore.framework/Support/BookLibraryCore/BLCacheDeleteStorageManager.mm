@interface BLCacheDeleteStorageManager
- (BLCacheDeleteStorageManager)init;
- (int64_t)purgeableForVolume:(id)volume urgency:(int64_t)urgency;
- (void)_storageUseChangedNotification:(id)notification;
- (void)dealloc;
- (void)downloadQueue:(id)queue downloadStates:(id)states didCompleteWithError:(id)error;
- (void)downloadQueue:(id)queue downloadStatesDidChange:(id)change;
- (void)dq_updateAvailableStorage;
- (void)dq_updateAvailableStorageForVolumeInfo:(id)info inVolume:(id)volume;
- (void)updateAvailableStorage;
@end

@implementation BLCacheDeleteStorageManager

- (BLCacheDeleteStorageManager)init
{
  v18.receiver = self;
  v18.super_class = BLCacheDeleteStorageManager;
  v2 = [(BLCacheDeleteStorageManager *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.bookassetd.CacheDeleteStorageManager", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = +[NSMutableDictionary dictionary];
    volumeInfos = v2->_volumeInfos;
    v2->_volumeInfos = v6;

    v8 = objc_alloc_init(BLCacheDeleteStorageVolumeInfo);
    [(NSMutableDictionary *)v2->_volumeInfos setObject:v8 forKeyedSubscript:off_10013E5D8];

    v9 = objc_alloc_init(BLCacheDeleteStorageVolumeInfo);
    [(NSMutableDictionary *)v2->_volumeInfos setObject:v9 forKeyedSubscript:off_10013E5E0];

    v10 = +[NSMutableSet set];
    downloadingPersistentIdentifiers = v2->_downloadingPersistentIdentifiers;
    v2->_downloadingPersistentIdentifiers = v10;

    v12 = +[BLDownloadQueueNonUI sharedInstance];
    blDownloadQueue = v2->_blDownloadQueue;
    v2->_blDownloadQueue = v12;

    [(BLDownloadQueueNonUI *)v2->_blDownloadQueue addObserver:v2];
    v14 = BLBookCacheDeleteLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Adding store services download observer.", v17, 2u);
    }

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v2 selector:"_storageUseChangedNotification:" name:BLSharedStorageUseChangedNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  blDownloadQueue = [(BLCacheDeleteStorageManager *)self blDownloadQueue];
  [blDownloadQueue removeObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = BLCacheDeleteStorageManager;
  [(BLCacheDeleteStorageManager *)&v5 dealloc];
}

- (void)updateAvailableStorage
{
  objc_initWeak(&location, self);
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A96CC;
  v4[3] = &unk_10011E0F8;
  objc_copyWeak(&v5, &location);
  dispatch_async(dispatchQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)downloadQueue:(id)queue downloadStatesDidChange:(id)change
{
  queueCopy = queue;
  changeCopy = change;
  objc_initWeak(&location, self);
  dispatchQueue = [(BLCacheDeleteStorageManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A980C;
  block[3] = &unk_10011E5E8;
  objc_copyWeak(&v12, &location);
  v11 = changeCopy;
  v9 = changeCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)downloadQueue:(id)queue downloadStates:(id)states didCompleteWithError:(id)error
{
  queueCopy = queue;
  statesCopy = states;
  errorCopy = error;
  objc_initWeak(&location, self);
  dispatchQueue = [(BLCacheDeleteStorageManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A9B8C;
  block[3] = &unk_10011E5E8;
  objc_copyWeak(&v15, &location);
  v14 = statesCopy;
  v12 = statesCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (int64_t)purgeableForVolume:(id)volume urgency:(int64_t)urgency
{
  volumeCopy = volume;
  volumeInfos = [(BLCacheDeleteStorageManager *)self volumeInfos];
  v8 = [volumeInfos objectForKeyedSubscript:volumeCopy];

  if (!v8)
  {
    v9 = BLBookCacheDeleteLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 141558274;
      v14 = 1752392040;
      v15 = 2112;
      v16 = volumeCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Missing info for volume %{mask.hash}@", &v13, 0x16u);
    }
  }

  v10 = 0;
  if (urgency > 2)
  {
    if (urgency == 3)
    {
      purgeableHighPriority = [v8 purgeableHighPriority];
      goto LABEL_14;
    }

    if (urgency == 4)
    {
      purgeableHighPriority = [v8 purgeableSpecialCasePriority];
      goto LABEL_14;
    }
  }

  else
  {
    if (urgency == 1)
    {
      purgeableHighPriority = [v8 purgeableLowPriority];
      goto LABEL_14;
    }

    if (urgency == 2)
    {
      purgeableHighPriority = [v8 purgeableMediumPriority];
LABEL_14:
      v10 = purgeableHighPriority;
    }
  }

  return v10;
}

- (void)_storageUseChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received notification that shared storage usage has changed.", buf, 2u);
  }

  objc_initWeak(buf, self);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A9FD8;
  v8[3] = &unk_10011DF70;
  v9 = notificationCopy;
  v7 = notificationCopy;
  objc_copyWeak(&v10, buf);
  dispatch_async(dispatchQueue, v8);
  objc_destroyWeak(&v10);

  objc_destroyWeak(buf);
}

- (void)dq_updateAvailableStorage
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  volumeInfos = [(BLCacheDeleteStorageManager *)self volumeInfos];
  v4 = [volumeInfos countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(volumeInfos);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        volumeInfos2 = [(BLCacheDeleteStorageManager *)self volumeInfos];
        v10 = [volumeInfos2 objectForKeyedSubscript:v8];

        [(BLCacheDeleteStorageManager *)self dq_updateAvailableStorageForVolumeInfo:v10 inVolume:v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [volumeInfos countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)dq_updateAvailableStorageForVolumeInfo:(id)info inVolume:(id)volume
{
  infoCopy = info;
  volumeCopy = volume;
  dispatchQueue = [(BLCacheDeleteStorageManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v9 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v23 = 1752392040;
    v24 = 2112;
    v25 = volumeCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Checking purgeable amounts for volume %{mask.hash}@.", buf, 0x16u);
  }

  v10 = objc_alloc_init(BLCacheDelete);
  [infoCopy setPurgeableValueChanged:0];
  [infoCopy setPurgeableLowPriority:{-[BLCacheDelete purgeableAmountForVolume:urgency:](v10, "purgeableAmountForVolume:urgency:", volumeCopy, 1)}];
  [infoCopy setPurgeableMediumPriority:{-[BLCacheDelete purgeableAmountForVolume:urgency:](v10, "purgeableAmountForVolume:urgency:", volumeCopy, 2)}];
  [infoCopy setPurgeableHighPriority:{-[BLCacheDelete purgeableAmountForVolume:urgency:](v10, "purgeableAmountForVolume:urgency:", volumeCopy, 3)}];
  [infoCopy setPurgeableSpecialCasePriority:{-[BLCacheDelete purgeableAmountForVolume:urgency:](v10, "purgeableAmountForVolume:urgency:", volumeCopy, 4)}];
  if ([infoCopy purgeableValueChanged])
  {
    v20[0] = &off_100129A70;
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [infoCopy purgeableLowPriority]);
    v21[0] = v11;
    v20[1] = &off_100129A88;
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [infoCopy purgeableMediumPriority]);
    v21[1] = v12;
    v20[2] = &off_100129AA0;
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [infoCopy purgeableHighPriority]);
    v21[2] = v13;
    v20[3] = &off_100129AB8;
    v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [infoCopy purgeableSpecialCasePriority]);
    v21[3] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];

    v18[0] = @"CACHE_DELETE_ID";
    v18[1] = @"CACHE_DELETE_VOLUME";
    v19[0] = kiBooksCacheDeleteID;
    v19[1] = volumeCopy;
    v18[2] = @"CACHE_DELETE_AMOUNT";
    v19[2] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
    CacheDeleteUpdatePurgeable();
    v17 = BLBookCacheDeleteLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558274;
      v23 = 1752392040;
      v24 = 2112;
      v25 = volumeCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Pushed purgeable amount update for volume %{mask.hash}@.", buf, 0x16u);
    }
  }

  else
  {
    v15 = BLBookCacheDeleteLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558274;
      v23 = 1752392040;
      v24 = 2112;
      v25 = volumeCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No change in purgeable amounts for volume %{mask.hash}@.", buf, 0x16u);
    }
  }
}

@end