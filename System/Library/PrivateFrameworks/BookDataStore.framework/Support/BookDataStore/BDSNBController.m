@interface BDSNBController
- (BDSNBController)initWithCloudDataSource:(id)a3;
- (void)_archiveCloudSyncVersions:(id)a3 completion:(id)a4;
- (void)_fetchCloudSyncVersions:(id)a3 completion:(id)a4;
- (void)_fetchLatestCompletion:(id)a3;
- (void)_fq_fetchSince:(id)a3 completion:(id)a4;
- (void)_updateAssetDetail:(id)a3 fromMediaItem:(id)a4;
- (void)_updateBookmarkTimeFromAssetDetail:(id)a3;
- (void)dealloc;
- (void)fetchLatestCompletion:(id)a3;
@end

@implementation BDSNBController

- (BDSNBController)initWithCloudDataSource:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = BDSNBController;
  v6 = [(BDSNBController *)&v21 init];
  if (v6)
  {
    v7 = sub_10000DC90();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C376C();
    }

    objc_storeStrong(&v6->_dataSource, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("dataStoreFetch", v8);
    fetchQueue = v6->_fetchQueue;
    v6->_fetchQueue = v9;

    objc_initWeak(&location, v6);
    v11 = +[NSDistributedNotificationCenter defaultCenter];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100075F78;
    v18 = &unk_100241C78;
    objc_copyWeak(&v19, &location);
    v12 = [v11 addObserverForName:@"BCCloudAssetDetailManagerChanged" object:0 queue:0 usingBlock:&v15];
    observer = v6->_observer;
    v6->_observer = v12;

    [(BDSNBController *)v6 fetchLatestCompletion:&stru_100241C98, v15, v16, v17, v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self->_observer];

  v4.receiver = self;
  v4.super_class = BDSNBController;
  [(BDSNBController *)&v4 dealloc];
}

- (void)_fetchCloudSyncVersions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BDSNBController *)self dataSource];
  v9 = [v8 managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000761A0;
  v13[3] = &unk_100241CC0;
  v14 = v9;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v9;
  [v12 performBlock:v13];
}

- (void)_archiveCloudSyncVersions:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007643C;
  v7[3] = &unk_100241CE8;
  v8 = a3;
  v6 = v8;
  [(BDSNBController *)self _fetchCloudSyncVersions:v7 completion:a4];
}

- (void)fetchLatestCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007652C;
  v6[3] = &unk_10023FE48;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(BDSNBController *)self _fetchLatestCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_fetchLatestCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(BDSNBController *)self fetchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076688;
  block[3] = &unk_10023FE48;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_updateAssetDetail:(id)a3 fromMediaItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[BCCloudAssetManager sharedManager];
  v8 = [v7 assetDetailManager];

  [v6 bookmarkTime];
  [v5 setBookmarkTime:?];
  v9 = [v6 lastPlayedDate];
  [v5 setDatePlaybackTimeUpdated:v9];

  [v6 playbackDuration];
  v11 = v10;

  v12 = 0.0;
  if (v11 != 0.0)
  {
    [v5 bookmarkTime];
    v12 = v13 / v11;
  }

  if (v12 < 0.0 || v12 > 1.0)
  {
    v14 = sub_10000DC90();
    v15 = v12;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [v5 bookmarkTime];
      *buf = 134218496;
      v25 = v15;
      v26 = 2048;
      v27 = v21;
      v28 = 2048;
      v29 = v11;
      _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Calculated reading progress out of range %f.  bookmarkTime=%f audiobookDuration=%f", buf, 0x20u);
    }

    BUClamp();
    v12 = v16;
  }

  [v5 readingProgressHighWaterMark];
  if (*&v17 >= v12)
  {
    v18 = *&v17;
  }

  else
  {
    v18 = v12;
  }

  *&v17 = v12;
  [v5 setReadingProgress:v17];
  *&v19 = v18;
  [v5 setReadingProgressHighWaterMark:v19];
  [v5 assetID];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100076BD8;
  v23 = v22[3] = &unk_100241D58;
  v20 = v23;
  [v8 setAssetDetail:v5 completion:v22];
}

- (void)_updateBookmarkTimeFromAssetDetail:(id)a3
{
  v4 = a3;
  v5 = sub_10000DC90();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 assetID];
    v37 = 138412290;
    v38 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BDSNBController attempting to update bookmark time from assetDetail %@", &v37, 0xCu);
  }

  v7 = [v4 assetID];
  v8 = [BDSMediaLibraryUtils representativeDAAPMediaItemsWithAssetId:v7];

  if (!v8)
  {
    v30 = sub_10000DC90();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1001C39EC(v4, v30);
    }

    goto LABEL_16;
  }

  if (![v8 hasBeenPlayed])
  {
    goto LABEL_11;
  }

  v9 = [v8 lastPlayedDate];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [v8 lastPlayedDate];
  v12 = [v4 datePlaybackTimeUpdated];
  v13 = [v11 compare:v12];

  if (v13 == -1)
  {
LABEL_11:
    v25 = sub_10000DC90();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      [v4 bookmarkTime];
      v27 = v26;
      v28 = [v4 assetID];
      v37 = 134218242;
      v38 = v27;
      v39 = 2112;
      v40 = v28;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "BDSNBController Setting bookmark time %f for media item assetDetail %@", &v37, 0x16u);
    }

    [v8 setHasBeenPlayed:1];
    v29 = [v4 datePlaybackTimeUpdated];
    [v8 setLastPlayedDate:v29];

    [v4 bookmarkTime];
    v30 = [NSNumber numberWithDouble:?];
    [v8 setValue:v30 forProperty:MPMediaItemPropertyBookmarkTime withCompletionBlock:0];
LABEL_16:

    goto LABEL_17;
  }

  v14 = [v8 lastPlayedDate];
  v15 = [v4 datePlaybackTimeUpdated];
  v16 = [v14 compare:v15];

  v17 = sub_10000DC90();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16 == -1)
  {
    if (v18)
    {
      v31 = [v4 assetID];
      v32 = [v8 lastPlayedDate];
      [v8 bookmarkTime];
      v34 = v33;
      v35 = [v4 datePlaybackTimeUpdated];
      [v4 bookmarkTime];
      v37 = 138413314;
      v38 = v31;
      v39 = 2112;
      v40 = v32;
      v41 = 2048;
      v42 = v34;
      v43 = 2112;
      v44 = v35;
      v45 = 2048;
      v46 = v36;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "BDSNBController media item has a newer date. Updating asset:%@. from mediaItem.lastPlayDate: %@ mediaItem.bookmarkTime %f, assetDetail.datePlaybackTimeUpdated:%@ assetDetail.bookmarkTime:%f", &v37, 0x34u);
    }

    [(BDSNBController *)self _updateAssetDetail:v4 fromMediaItem:v8];
  }

  else
  {
    if (v18)
    {
      v19 = [v4 assetID];
      v20 = [v8 lastPlayedDate];
      [v8 bookmarkTime];
      v22 = v21;
      v23 = [v4 datePlaybackTimeUpdated];
      [v4 bookmarkTime];
      v37 = 138413314;
      v38 = v19;
      v39 = 2112;
      v40 = v20;
      v41 = 2048;
      v42 = v22;
      v43 = 2112;
      v44 = v23;
      v45 = 2048;
      v46 = v24;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "BDSNBController media item has the same date, not updating asset:%@. mediaItem.lastPlayDate: %@ mediaItem.bookmarkTime %f, assetDetail.datePlaybackTimeUpdated:%@ assetDetail.bookmarkTime:%f", &v37, 0x34u);
    }
  }

LABEL_17:
}

- (void)_fq_fetchSince:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BDSNBController *)self fetchQueue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_10000DC90();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BDSNBController fetching changes since cloudSyncVersions: %@", buf, 0xCu);
  }

  v10 = +[BCCloudAssetManager sharedManager];
  v11 = [v10 assetDetailManager];

  objc_initWeak(buf, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000772AC;
  v13[3] = &unk_100241DA8;
  objc_copyWeak(&v15, buf);
  v12 = v7;
  v14 = v12;
  [v11 getAssetDetailChangesSince:v6 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

@end