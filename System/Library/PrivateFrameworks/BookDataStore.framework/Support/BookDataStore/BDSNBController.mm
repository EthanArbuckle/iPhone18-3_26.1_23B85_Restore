@interface BDSNBController
- (BDSNBController)initWithCloudDataSource:(id)source;
- (void)_archiveCloudSyncVersions:(id)versions completion:(id)completion;
- (void)_fetchCloudSyncVersions:(id)versions completion:(id)completion;
- (void)_fetchLatestCompletion:(id)completion;
- (void)_fq_fetchSince:(id)since completion:(id)completion;
- (void)_updateAssetDetail:(id)detail fromMediaItem:(id)item;
- (void)_updateBookmarkTimeFromAssetDetail:(id)detail;
- (void)dealloc;
- (void)fetchLatestCompletion:(id)completion;
@end

@implementation BDSNBController

- (BDSNBController)initWithCloudDataSource:(id)source
{
  sourceCopy = source;
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

    objc_storeStrong(&v6->_dataSource, source);
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

- (void)_fetchCloudSyncVersions:(id)versions completion:(id)completion
{
  versionsCopy = versions;
  completionCopy = completion;
  dataSource = [(BDSNBController *)self dataSource];
  managedObjectContext = [dataSource managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000761A0;
  v13[3] = &unk_100241CC0;
  v14 = managedObjectContext;
  v15 = versionsCopy;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = versionsCopy;
  v12 = managedObjectContext;
  [v12 performBlock:v13];
}

- (void)_archiveCloudSyncVersions:(id)versions completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007643C;
  v7[3] = &unk_100241CE8;
  versionsCopy = versions;
  v6 = versionsCopy;
  [(BDSNBController *)self _fetchCloudSyncVersions:v7 completion:completion];
}

- (void)fetchLatestCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007652C;
  v6[3] = &unk_10023FE48;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(BDSNBController *)self _fetchLatestCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_fetchLatestCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  fetchQueue = [(BDSNBController *)self fetchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076688;
  block[3] = &unk_10023FE48;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(fetchQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_updateAssetDetail:(id)detail fromMediaItem:(id)item
{
  detailCopy = detail;
  itemCopy = item;
  v7 = +[BCCloudAssetManager sharedManager];
  assetDetailManager = [v7 assetDetailManager];

  [itemCopy bookmarkTime];
  [detailCopy setBookmarkTime:?];
  lastPlayedDate = [itemCopy lastPlayedDate];
  [detailCopy setDatePlaybackTimeUpdated:lastPlayedDate];

  [itemCopy playbackDuration];
  v11 = v10;

  v12 = 0.0;
  if (v11 != 0.0)
  {
    [detailCopy bookmarkTime];
    v12 = v13 / v11;
  }

  if (v12 < 0.0 || v12 > 1.0)
  {
    v14 = sub_10000DC90();
    v15 = v12;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [detailCopy bookmarkTime];
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

  [detailCopy readingProgressHighWaterMark];
  if (*&v17 >= v12)
  {
    v18 = *&v17;
  }

  else
  {
    v18 = v12;
  }

  *&v17 = v12;
  [detailCopy setReadingProgress:v17];
  *&v19 = v18;
  [detailCopy setReadingProgressHighWaterMark:v19];
  [detailCopy assetID];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100076BD8;
  v23 = v22[3] = &unk_100241D58;
  v20 = v23;
  [assetDetailManager setAssetDetail:detailCopy completion:v22];
}

- (void)_updateBookmarkTimeFromAssetDetail:(id)detail
{
  detailCopy = detail;
  v5 = sub_10000DC90();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    assetID = [detailCopy assetID];
    v37 = 138412290;
    v38 = assetID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BDSNBController attempting to update bookmark time from assetDetail %@", &v37, 0xCu);
  }

  assetID2 = [detailCopy assetID];
  v8 = [BDSMediaLibraryUtils representativeDAAPMediaItemsWithAssetId:assetID2];

  if (!v8)
  {
    v30 = sub_10000DC90();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1001C39EC(detailCopy, v30);
    }

    goto LABEL_16;
  }

  if (![v8 hasBeenPlayed])
  {
    goto LABEL_11;
  }

  lastPlayedDate = [v8 lastPlayedDate];
  if (!lastPlayedDate)
  {
    goto LABEL_11;
  }

  v10 = lastPlayedDate;
  lastPlayedDate2 = [v8 lastPlayedDate];
  datePlaybackTimeUpdated = [detailCopy datePlaybackTimeUpdated];
  v13 = [lastPlayedDate2 compare:datePlaybackTimeUpdated];

  if (v13 == -1)
  {
LABEL_11:
    v25 = sub_10000DC90();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      [detailCopy bookmarkTime];
      v27 = v26;
      assetID3 = [detailCopy assetID];
      v37 = 134218242;
      v38 = v27;
      v39 = 2112;
      v40 = assetID3;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "BDSNBController Setting bookmark time %f for media item assetDetail %@", &v37, 0x16u);
    }

    [v8 setHasBeenPlayed:1];
    datePlaybackTimeUpdated2 = [detailCopy datePlaybackTimeUpdated];
    [v8 setLastPlayedDate:datePlaybackTimeUpdated2];

    [detailCopy bookmarkTime];
    v30 = [NSNumber numberWithDouble:?];
    [v8 setValue:v30 forProperty:MPMediaItemPropertyBookmarkTime withCompletionBlock:0];
LABEL_16:

    goto LABEL_17;
  }

  lastPlayedDate3 = [v8 lastPlayedDate];
  datePlaybackTimeUpdated3 = [detailCopy datePlaybackTimeUpdated];
  v16 = [lastPlayedDate3 compare:datePlaybackTimeUpdated3];

  v17 = sub_10000DC90();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16 == -1)
  {
    if (v18)
    {
      assetID4 = [detailCopy assetID];
      lastPlayedDate4 = [v8 lastPlayedDate];
      [v8 bookmarkTime];
      v34 = v33;
      datePlaybackTimeUpdated4 = [detailCopy datePlaybackTimeUpdated];
      [detailCopy bookmarkTime];
      v37 = 138413314;
      v38 = assetID4;
      v39 = 2112;
      v40 = lastPlayedDate4;
      v41 = 2048;
      v42 = v34;
      v43 = 2112;
      v44 = datePlaybackTimeUpdated4;
      v45 = 2048;
      v46 = v36;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "BDSNBController media item has a newer date. Updating asset:%@. from mediaItem.lastPlayDate: %@ mediaItem.bookmarkTime %f, assetDetail.datePlaybackTimeUpdated:%@ assetDetail.bookmarkTime:%f", &v37, 0x34u);
    }

    [(BDSNBController *)self _updateAssetDetail:detailCopy fromMediaItem:v8];
  }

  else
  {
    if (v18)
    {
      assetID5 = [detailCopy assetID];
      lastPlayedDate5 = [v8 lastPlayedDate];
      [v8 bookmarkTime];
      v22 = v21;
      datePlaybackTimeUpdated5 = [detailCopy datePlaybackTimeUpdated];
      [detailCopy bookmarkTime];
      v37 = 138413314;
      v38 = assetID5;
      v39 = 2112;
      v40 = lastPlayedDate5;
      v41 = 2048;
      v42 = v22;
      v43 = 2112;
      v44 = datePlaybackTimeUpdated5;
      v45 = 2048;
      v46 = v24;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "BDSNBController media item has the same date, not updating asset:%@. mediaItem.lastPlayDate: %@ mediaItem.bookmarkTime %f, assetDetail.datePlaybackTimeUpdated:%@ assetDetail.bookmarkTime:%f", &v37, 0x34u);
    }
  }

LABEL_17:
}

- (void)_fq_fetchSince:(id)since completion:(id)completion
{
  sinceCopy = since;
  completionCopy = completion;
  fetchQueue = [(BDSNBController *)self fetchQueue];
  dispatch_assert_queue_V2(fetchQueue);

  v9 = sub_10000DC90();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = sinceCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BDSNBController fetching changes since cloudSyncVersions: %@", buf, 0xCu);
  }

  v10 = +[BCCloudAssetManager sharedManager];
  assetDetailManager = [v10 assetDetailManager];

  objc_initWeak(buf, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000772AC;
  v13[3] = &unk_100241DA8;
  objc_copyWeak(&v15, buf);
  v12 = completionCopy;
  v14 = v12;
  [assetDetailManager getAssetDetailChangesSince:sinceCopy completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

@end