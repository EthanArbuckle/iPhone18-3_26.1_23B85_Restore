@interface BDSUbiquityDocumentsObserver
- (BDSICloudIdentityToken)identity;
- (BDSUbiquityDocumentsObserver)initWithDelegate:(id)a3 ubquityStatusMonitor:(id)a4 directoriesSubpath:(id)a5;
- (BDSUbiquityDocumentsObserverDelegate)delegate;
- (BDSUbiquityStatusMonitor)ubiquityStatusMonitor;
- (NSString)description;
- (id)_dataURL;
- (id)_documentsURL;
- (id)_identityData;
- (id)_itemsForMetadataItems:(id)a3;
- (id)_noSyncURL;
- (id)_replacementObjectForResultObject:(id)a3;
- (void)documentsURL:(id)a3;
- (void)mq_queryDidFinish:(id)a3;
- (void)mq_queryDidStart:(id)a3;
- (void)mq_queryDidUpdate:(id)a3;
- (void)mq_setupQuery:(id)a3;
- (void)mq_tearDownQuery;
- (void)q_createSubpathDirectories;
- (void)restartQuery;
- (void)tearDownQuery;
- (void)ubiquityStatusChangedToAvailableWithNewIdentity:(id)a3 oldIdentity:(id)a4;
@end

@implementation BDSUbiquityDocumentsObserver

- (BDSUbiquityDocumentsObserver)initWithDelegate:(id)a3 ubquityStatusMonitor:(id)a4 directoriesSubpath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = BDSUbiquityDocumentsObserver;
  v11 = [(BDSUbiquityDocumentsObserver *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v8);
    objc_storeWeak(&v12->_ubiquityStatusMonitor, v9);
    objc_storeStrong(&v12->_directoriesSubpath, a5);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.iBooks.BDSUbiquityDocumentsObserver.queue", v13);
    queue = v12->_queue;
    v12->_queue = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.iBooks.BDSUbiquityDocumentsObserver.metadataQueryQueue", v16);
    metadataQueryQueue = v12->_metadataQueryQueue;
    v12->_metadataQueryQueue = v17;

    [v9 addObserver:v12];
    objc_initWeak(&location, v12);
    v19 = v12->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000124F8;
    block[3] = &unk_10023F9A8;
    objc_copyWeak(&v23, &location);
    v22 = v9;
    dispatch_barrier_async(v19, block);

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)ubiquityStatusChangedToAvailableWithNewIdentity:(id)a3 oldIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(BDSUbiquityDocumentsObserver *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000127CC;
  v10[3] = &unk_10023F9D0;
  objc_copyWeak(&v13, &location);
  v11 = v6;
  v12 = self;
  v9 = v6;
  dispatch_barrier_async(v8, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)restartQuery
{
  v3 = sub_10000DEB0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BDSUbiquityDocumentsObserver: Starting new metadata query", buf, 2u);
  }

  [(BDSUbiquityDocumentsObserver *)self tearDownQuery];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100012A10;
  v4[3] = &unk_10023F960;
  v4[4] = self;
  [(BDSUbiquityDocumentsObserver *)self documentsURL:v4];
}

- (void)tearDownQuery
{
  v3 = [(BDSUbiquityDocumentsObserver *)self metadataQueryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012D04;
  block[3] = &unk_10023F6B0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BDSICloudIdentityToken)identity
{
  identity = self->_identity;
  if (!identity)
  {
    WeakRetained = objc_loadWeakRetained(&self->_ubiquityStatusMonitor);
    v5 = [WeakRetained ubiquityIdentityToken];
    v6 = self->_identity;
    self->_identity = v5;

    identity = self->_identity;
  }

  return identity;
}

- (void)documentsURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BDSUbiquityDocumentsObserver *)self queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100012E20;
    v6[3] = &unk_10023F9F8;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)mq_setupQuery:(id)a3
{
  v4 = a3;
  v5 = [(BDSUbiquityDocumentsObserver *)self metadataQueryQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_10000DEB0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1001BDB08();
  }

  [(BDSUbiquityDocumentsObserver *)self setQuery:v4];
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"mq_queryDidStart:" name:NSMetadataQueryDidStartGatheringNotification object:v4];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"mq_queryDidFinish:" name:NSMetadataQueryDidFinishGatheringNotification object:v4];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"mq_queryDidUpdate:" name:NSMetadataQueryDidUpdateNotification object:v4];

  [v4 enableUpdates];
  v10 = sub_10000DEB0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BDSUbiquityDocumentsObserver: Starting metadata query: %@", &v11, 0xCu);
  }

  [v4 startQuery];
}

- (void)mq_tearDownQuery
{
  v3 = [(BDSUbiquityDocumentsObserver *)self metadataQueryQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(BDSUbiquityDocumentsObserver *)self query];
  if (v4)
  {
    v5 = sub_10000DEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BDB3C();
    }

    [v4 stopQuery];
    [(BDSUbiquityDocumentsObserver *)self setQuery:0];
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:NSMetadataQueryDidStartGatheringNotification object:v4];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:NSMetadataQueryDidFinishGatheringNotification object:v4];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:NSMetadataQueryDidUpdateNotification object:v4];
  }
}

- (void)mq_queryDidStart:(id)a3
{
  v3 = sub_10000DEB0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BDSUbiquityDocumentsObserver: Metadata query did start", v4, 2u);
  }
}

- (void)mq_queryDidFinish:(id)a3
{
  v4 = sub_10000DEB0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BDSUbiquityDocumentsObserver: Metadata query did finish", buf, 2u);
  }

  v5 = [(BDSUbiquityDocumentsObserver *)self query];
  [v5 disableUpdates];

  v6 = objc_alloc_init(NSMutableArray);
  v7 = [(BDSUbiquityDocumentsObserver *)self query];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000133A4;
  v16 = &unk_10023FA20;
  v8 = v6;
  v17 = v8;
  v18 = self;
  [v7 enumerateResultsUsingBlock:&v13];

  v9 = sub_10000DEB0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
    *buf = 138412290;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Found %@ downloaded items", buf, 0xCu);
  }

  v11 = [(BDSUbiquityDocumentsObserver *)self delegate];
  [v11 ubiquityDocumentsObserver:self didLoadWithItems:v8];

  v12 = [(BDSUbiquityDocumentsObserver *)self query];
  [v12 enableUpdates];
}

- (void)mq_queryDidUpdate:(id)a3
{
  v11 = [a3 userInfo];
  v4 = [v11 objectForKeyedSubscript:NSMetadataQueryUpdateAddedItemsKey];
  v5 = [(BDSUbiquityDocumentsObserver *)self _itemsForMetadataItems:v4];

  v6 = [v11 objectForKeyedSubscript:NSMetadataQueryUpdateChangedItemsKey];
  v7 = [(BDSUbiquityDocumentsObserver *)self _itemsForMetadataItems:v6];

  v8 = [v11 objectForKeyedSubscript:NSMetadataQueryUpdateRemovedItemsKey];
  v9 = [(BDSUbiquityDocumentsObserver *)self _itemsForMetadataItems:v8];

  v10 = [(BDSUbiquityDocumentsObserver *)self delegate];
  if ([v5 count])
  {
    [v10 ubiquityDocumentsObserver:self itemsDidBecomeAvailable:v5];
  }

  if ([v9 count])
  {
    [v10 ubiquityDocumentsObserver:self itemsDidBecomeUnavailable:v9];
  }

  if ([v7 count])
  {
    [v10 ubiquityDocumentsObserver:self itemsDidChange:v7];
  }
}

- (id)_identityData
{
  v2 = [(BDSUbiquityDocumentsObserver *)self identity];
  if (v2)
  {
    v3 = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_documentsURL
{
  v3 = [(BDSUbiquityDocumentsObserver *)self containerURL];
  v4 = [v3 URLByAppendingPathComponent:@"Documents"];

  v5 = [(BDSUbiquityDocumentsObserver *)self directoriesSubpath];

  if (v5)
  {
    v6 = [(BDSUbiquityDocumentsObserver *)self directoriesSubpath];
    v7 = [v4 URLByAppendingPathComponent:v6];

    v4 = v7;
  }

  return v4;
}

- (id)_dataURL
{
  v3 = [(BDSUbiquityDocumentsObserver *)self containerURL];
  v4 = [v3 URLByAppendingPathComponent:@"Data"];

  v5 = [(BDSUbiquityDocumentsObserver *)self directoriesSubpath];

  if (v5)
  {
    v6 = [(BDSUbiquityDocumentsObserver *)self directoriesSubpath];
    v7 = [v4 URLByAppendingPathComponent:v6];

    v4 = v7;
  }

  return v4;
}

- (id)_noSyncURL
{
  noSyncURL = self->_noSyncURL;
  if (!noSyncURL)
  {
    v4 = [(BDSUbiquityDocumentsObserver *)self containerURL];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 URLByAppendingPathComponent:@"metadata.nosync"];
      v7 = +[NSFileManager defaultManager];
      v8 = [v6 path];
      v9 = [v7 fileExistsAtPath:v8];

      if (v9)
      {
        v10 = sub_10000DEB0();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_1001BDC14();
        }

        v11 = v6;
        v12 = self->_noSyncURL;
        self->_noSyncURL = v11;
      }

      else
      {
        v22 = 0;
        v13 = [v7 createDirectoryAtURL:v6 withIntermediateDirectories:0 attributes:0 error:&v22];
        v12 = v22;
        v14 = sub_10000DEB0();
        v15 = v14;
        if (v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            sub_1001BDBE0();
          }

          v16 = v6;
          v15 = self->_noSyncURL;
          self->_noSyncURL = v16;
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1001BDB70();
        }
      }
    }

    noSyncURL = self->_noSyncURL;
  }

  v17 = noSyncURL;
  v18 = [(BDSUbiquityDocumentsObserver *)self directoriesSubpath];

  if (v18)
  {
    v19 = [(BDSUbiquityDocumentsObserver *)self directoriesSubpath];
    v20 = [(NSURL *)v17 URLByAppendingPathComponent:v19];

    v17 = v20;
  }

  return v17;
}

- (void)q_createSubpathDirectories
{
  v3 = [(BDSUbiquityDocumentsObserver *)self _documentsURL];
  v4 = [(BDSUbiquityDocumentsObserver *)self _dataURL];
  v5 = [(BDSUbiquityDocumentsObserver *)self _noSyncURL];
  +[NSFileManager defaultManager];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013A68;
  v6 = v8[3] = &unk_10023FA48;
  v9 = v6;
  v10 = v11;
  v7 = objc_retainBlock(v8);
  (v7[2])(v7, v3);
  (v7[2])(v7, v4);
  (v7[2])(v7, v5);

  _Block_object_dispose(v11, 8);
}

- (id)_itemsForMetadataItems:(id)a3
{
  v4 = a3;
  +[NSMutableArray array];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100013C1C;
  v12 = v11 = &unk_10023FA20;
  v13 = self;
  v5 = v12;
  [v4 enumerateObjectsUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

- (id)_replacementObjectForResultObject:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 valueForAttribute:NSMetadataItemURLKey];
  [v4 setUrl:v5];

  v6 = [v3 valueForAttribute:NSMetadataUbiquitousItemDownloadingStatusKey];
  if ([v6 isEqualToString:NSMetadataUbiquitousItemDownloadingStatusCurrent])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v6 isEqualToString:NSMetadataUbiquitousItemDownloadingStatusDownloaded];
  }

  v8 = [v6 isEqualToString:NSMetadataUbiquitousItemDownloadingStatusNotDownloaded];
  [v4 setIsLocal:v7];
  [v4 setIsNotLocal:v8];
  if ((v7 & 1) != 0 || !v8)
  {
    [v4 setIsDownloading:0];
  }

  else
  {
    v9 = [v3 valueForAttribute:NSMetadataUbiquitousItemIsDownloadingKey];
    v10 = [v9 BOOLValue];

    [v4 setIsDownloading:v10];
    if (v10)
    {
      v11 = [v3 valueForAttribute:NSMetadataUbiquitousItemPercentDownloadedKey];
      [v4 setDownloadingPercent:v11];
    }
  }

  v12 = [v3 valueForAttribute:NSMetadataUbiquitousItemUploadingErrorKey];
  v13 = [v3 valueForAttribute:NSMetadataUbiquitousItemIsUploadingKey];
  v14 = [v3 valueForAttribute:NSMetadataUbiquitousItemIsUploadedKey];
  if (![v13 BOOLValue] || v12)
  {
    if ([v14 BOOLValue])
    {
      [v4 setIsUploaded:1];
    }

    else
    {
      [v4 setUploadingError:v12];
    }
  }

  else
  {
    [v4 setIsUploading:1];
    v15 = [v3 valueForAttribute:NSMetadataUbiquitousItemPercentUploadedKey];
    [v4 setUploadingPercent:v15];
  }

  objc_opt_class();
  v16 = [v3 valueForAttribute:@"kMDItemFSContentChangeDate"];
  v17 = BUDynamicCast();
  [v4 setContentChangedDate:v17];

  objc_opt_class();
  v18 = [v3 valueForAttribute:@"kMDItemFSCreationDate"];
  v19 = BUDynamicCast();
  [v4 setContentCreationDate:v19];

  objc_opt_class();
  v20 = [v3 valueForAttribute:@"kMDItemFSSize"];
  v21 = BUDynamicCast();
  [v4 setContentFileSize:v21];

  v22 = [v3 valueForAttribute:NSMetadataUbiquitousItemHasUnresolvedConflictsKey];
  [v4 setUnresolvedConflict:v22];

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BDSUbiquityDocumentsObserver *)self identity];
  v6 = [(BDSUbiquityDocumentsObserver *)self containerURL];
  v7 = [(BDSUbiquityDocumentsObserver *)self noSyncURL];
  v8 = [(BDSUbiquityDocumentsObserver *)self ubiquityStatusMonitor];
  v9 = [NSString stringWithFormat:@"<%@(%p) identity='%@' containerURL='%@' noSyncURL='%@'>\n\tubiquityStatusMonitor = %@", v4, self, v5, v6, v7, v8];

  return v9;
}

- (BDSUbiquityDocumentsObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BDSUbiquityStatusMonitor)ubiquityStatusMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_ubiquityStatusMonitor);

  return WeakRetained;
}

@end