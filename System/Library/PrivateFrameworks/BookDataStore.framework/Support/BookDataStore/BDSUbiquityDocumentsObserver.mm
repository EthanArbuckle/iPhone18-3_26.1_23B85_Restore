@interface BDSUbiquityDocumentsObserver
- (BDSICloudIdentityToken)identity;
- (BDSUbiquityDocumentsObserver)initWithDelegate:(id)delegate ubquityStatusMonitor:(id)monitor directoriesSubpath:(id)subpath;
- (BDSUbiquityDocumentsObserverDelegate)delegate;
- (BDSUbiquityStatusMonitor)ubiquityStatusMonitor;
- (NSString)description;
- (id)_dataURL;
- (id)_documentsURL;
- (id)_identityData;
- (id)_itemsForMetadataItems:(id)items;
- (id)_noSyncURL;
- (id)_replacementObjectForResultObject:(id)object;
- (void)documentsURL:(id)l;
- (void)mq_queryDidFinish:(id)finish;
- (void)mq_queryDidStart:(id)start;
- (void)mq_queryDidUpdate:(id)update;
- (void)mq_setupQuery:(id)query;
- (void)mq_tearDownQuery;
- (void)q_createSubpathDirectories;
- (void)restartQuery;
- (void)tearDownQuery;
- (void)ubiquityStatusChangedToAvailableWithNewIdentity:(id)identity oldIdentity:(id)oldIdentity;
@end

@implementation BDSUbiquityDocumentsObserver

- (BDSUbiquityDocumentsObserver)initWithDelegate:(id)delegate ubquityStatusMonitor:(id)monitor directoriesSubpath:(id)subpath
{
  delegateCopy = delegate;
  monitorCopy = monitor;
  subpathCopy = subpath;
  v25.receiver = self;
  v25.super_class = BDSUbiquityDocumentsObserver;
  v11 = [(BDSUbiquityDocumentsObserver *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeWeak(&v12->_ubiquityStatusMonitor, monitorCopy);
    objc_storeStrong(&v12->_directoriesSubpath, subpath);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.iBooks.BDSUbiquityDocumentsObserver.queue", v13);
    queue = v12->_queue;
    v12->_queue = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.iBooks.BDSUbiquityDocumentsObserver.metadataQueryQueue", v16);
    metadataQueryQueue = v12->_metadataQueryQueue;
    v12->_metadataQueryQueue = v17;

    [monitorCopy addObserver:v12];
    objc_initWeak(&location, v12);
    v19 = v12->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000124F8;
    block[3] = &unk_10023F9A8;
    objc_copyWeak(&v23, &location);
    v22 = monitorCopy;
    dispatch_barrier_async(v19, block);

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)ubiquityStatusChangedToAvailableWithNewIdentity:(id)identity oldIdentity:(id)oldIdentity
{
  identityCopy = identity;
  oldIdentityCopy = oldIdentity;
  objc_initWeak(&location, self);
  queue = [(BDSUbiquityDocumentsObserver *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000127CC;
  v10[3] = &unk_10023F9D0;
  objc_copyWeak(&v13, &location);
  v11 = identityCopy;
  selfCopy = self;
  v9 = identityCopy;
  dispatch_barrier_async(queue, v10);

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
  metadataQueryQueue = [(BDSUbiquityDocumentsObserver *)self metadataQueryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012D04;
  block[3] = &unk_10023F6B0;
  block[4] = self;
  dispatch_async(metadataQueryQueue, block);
}

- (BDSICloudIdentityToken)identity
{
  identity = self->_identity;
  if (!identity)
  {
    WeakRetained = objc_loadWeakRetained(&self->_ubiquityStatusMonitor);
    ubiquityIdentityToken = [WeakRetained ubiquityIdentityToken];
    v6 = self->_identity;
    self->_identity = ubiquityIdentityToken;

    identity = self->_identity;
  }

  return identity;
}

- (void)documentsURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    queue = [(BDSUbiquityDocumentsObserver *)self queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100012E20;
    v6[3] = &unk_10023F9F8;
    v6[4] = self;
    v7 = lCopy;
    dispatch_async(queue, v6);
  }
}

- (void)mq_setupQuery:(id)query
{
  queryCopy = query;
  metadataQueryQueue = [(BDSUbiquityDocumentsObserver *)self metadataQueryQueue];
  dispatch_assert_queue_V2(metadataQueryQueue);

  v6 = sub_10000DEB0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1001BDB08();
  }

  [(BDSUbiquityDocumentsObserver *)self setQuery:queryCopy];
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"mq_queryDidStart:" name:NSMetadataQueryDidStartGatheringNotification object:queryCopy];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"mq_queryDidFinish:" name:NSMetadataQueryDidFinishGatheringNotification object:queryCopy];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"mq_queryDidUpdate:" name:NSMetadataQueryDidUpdateNotification object:queryCopy];

  [queryCopy enableUpdates];
  v10 = sub_10000DEB0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = queryCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BDSUbiquityDocumentsObserver: Starting metadata query: %@", &v11, 0xCu);
  }

  [queryCopy startQuery];
}

- (void)mq_tearDownQuery
{
  metadataQueryQueue = [(BDSUbiquityDocumentsObserver *)self metadataQueryQueue];
  dispatch_assert_queue_V2(metadataQueryQueue);

  query = [(BDSUbiquityDocumentsObserver *)self query];
  if (query)
  {
    v5 = sub_10000DEB0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BDB3C();
    }

    [query stopQuery];
    [(BDSUbiquityDocumentsObserver *)self setQuery:0];
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:NSMetadataQueryDidStartGatheringNotification object:query];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:NSMetadataQueryDidFinishGatheringNotification object:query];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:NSMetadataQueryDidUpdateNotification object:query];
  }
}

- (void)mq_queryDidStart:(id)start
{
  v3 = sub_10000DEB0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BDSUbiquityDocumentsObserver: Metadata query did start", v4, 2u);
  }
}

- (void)mq_queryDidFinish:(id)finish
{
  v4 = sub_10000DEB0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BDSUbiquityDocumentsObserver: Metadata query did finish", buf, 2u);
  }

  query = [(BDSUbiquityDocumentsObserver *)self query];
  [query disableUpdates];

  v6 = objc_alloc_init(NSMutableArray);
  query2 = [(BDSUbiquityDocumentsObserver *)self query];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000133A4;
  v16 = &unk_10023FA20;
  v8 = v6;
  v17 = v8;
  selfCopy = self;
  [query2 enumerateResultsUsingBlock:&v13];

  v9 = sub_10000DEB0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
    *buf = 138412290;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Found %@ downloaded items", buf, 0xCu);
  }

  delegate = [(BDSUbiquityDocumentsObserver *)self delegate];
  [delegate ubiquityDocumentsObserver:self didLoadWithItems:v8];

  query3 = [(BDSUbiquityDocumentsObserver *)self query];
  [query3 enableUpdates];
}

- (void)mq_queryDidUpdate:(id)update
{
  userInfo = [update userInfo];
  v4 = [userInfo objectForKeyedSubscript:NSMetadataQueryUpdateAddedItemsKey];
  v5 = [(BDSUbiquityDocumentsObserver *)self _itemsForMetadataItems:v4];

  v6 = [userInfo objectForKeyedSubscript:NSMetadataQueryUpdateChangedItemsKey];
  v7 = [(BDSUbiquityDocumentsObserver *)self _itemsForMetadataItems:v6];

  v8 = [userInfo objectForKeyedSubscript:NSMetadataQueryUpdateRemovedItemsKey];
  v9 = [(BDSUbiquityDocumentsObserver *)self _itemsForMetadataItems:v8];

  delegate = [(BDSUbiquityDocumentsObserver *)self delegate];
  if ([v5 count])
  {
    [delegate ubiquityDocumentsObserver:self itemsDidBecomeAvailable:v5];
  }

  if ([v9 count])
  {
    [delegate ubiquityDocumentsObserver:self itemsDidBecomeUnavailable:v9];
  }

  if ([v7 count])
  {
    [delegate ubiquityDocumentsObserver:self itemsDidChange:v7];
  }
}

- (id)_identityData
{
  identity = [(BDSUbiquityDocumentsObserver *)self identity];
  if (identity)
  {
    v3 = [NSKeyedArchiver archivedDataWithRootObject:identity requiringSecureCoding:1 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_documentsURL
{
  containerURL = [(BDSUbiquityDocumentsObserver *)self containerURL];
  v4 = [containerURL URLByAppendingPathComponent:@"Documents"];

  directoriesSubpath = [(BDSUbiquityDocumentsObserver *)self directoriesSubpath];

  if (directoriesSubpath)
  {
    directoriesSubpath2 = [(BDSUbiquityDocumentsObserver *)self directoriesSubpath];
    v7 = [v4 URLByAppendingPathComponent:directoriesSubpath2];

    v4 = v7;
  }

  return v4;
}

- (id)_dataURL
{
  containerURL = [(BDSUbiquityDocumentsObserver *)self containerURL];
  v4 = [containerURL URLByAppendingPathComponent:@"Data"];

  directoriesSubpath = [(BDSUbiquityDocumentsObserver *)self directoriesSubpath];

  if (directoriesSubpath)
  {
    directoriesSubpath2 = [(BDSUbiquityDocumentsObserver *)self directoriesSubpath];
    v7 = [v4 URLByAppendingPathComponent:directoriesSubpath2];

    v4 = v7;
  }

  return v4;
}

- (id)_noSyncURL
{
  noSyncURL = self->_noSyncURL;
  if (!noSyncURL)
  {
    containerURL = [(BDSUbiquityDocumentsObserver *)self containerURL];
    v5 = containerURL;
    if (containerURL)
    {
      v6 = [containerURL URLByAppendingPathComponent:@"metadata.nosync"];
      v7 = +[NSFileManager defaultManager];
      path = [v6 path];
      v9 = [v7 fileExistsAtPath:path];

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
  directoriesSubpath = [(BDSUbiquityDocumentsObserver *)self directoriesSubpath];

  if (directoriesSubpath)
  {
    directoriesSubpath2 = [(BDSUbiquityDocumentsObserver *)self directoriesSubpath];
    v20 = [(NSURL *)v17 URLByAppendingPathComponent:directoriesSubpath2];

    v17 = v20;
  }

  return v17;
}

- (void)q_createSubpathDirectories
{
  _documentsURL = [(BDSUbiquityDocumentsObserver *)self _documentsURL];
  _dataURL = [(BDSUbiquityDocumentsObserver *)self _dataURL];
  _noSyncURL = [(BDSUbiquityDocumentsObserver *)self _noSyncURL];
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
  (v7[2])(v7, _documentsURL);
  (v7[2])(v7, _dataURL);
  (v7[2])(v7, _noSyncURL);

  _Block_object_dispose(v11, 8);
}

- (id)_itemsForMetadataItems:(id)items
{
  itemsCopy = items;
  +[NSMutableArray array];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100013C1C;
  v12 = v11 = &unk_10023FA20;
  selfCopy = self;
  v5 = v12;
  [itemsCopy enumerateObjectsUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

- (id)_replacementObjectForResultObject:(id)object
{
  objectCopy = object;
  v4 = objc_opt_new();
  v5 = [objectCopy valueForAttribute:NSMetadataItemURLKey];
  [v4 setUrl:v5];

  v6 = [objectCopy valueForAttribute:NSMetadataUbiquitousItemDownloadingStatusKey];
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
    v9 = [objectCopy valueForAttribute:NSMetadataUbiquitousItemIsDownloadingKey];
    bOOLValue = [v9 BOOLValue];

    [v4 setIsDownloading:bOOLValue];
    if (bOOLValue)
    {
      v11 = [objectCopy valueForAttribute:NSMetadataUbiquitousItemPercentDownloadedKey];
      [v4 setDownloadingPercent:v11];
    }
  }

  v12 = [objectCopy valueForAttribute:NSMetadataUbiquitousItemUploadingErrorKey];
  v13 = [objectCopy valueForAttribute:NSMetadataUbiquitousItemIsUploadingKey];
  v14 = [objectCopy valueForAttribute:NSMetadataUbiquitousItemIsUploadedKey];
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
    v15 = [objectCopy valueForAttribute:NSMetadataUbiquitousItemPercentUploadedKey];
    [v4 setUploadingPercent:v15];
  }

  objc_opt_class();
  v16 = [objectCopy valueForAttribute:@"kMDItemFSContentChangeDate"];
  v17 = BUDynamicCast();
  [v4 setContentChangedDate:v17];

  objc_opt_class();
  v18 = [objectCopy valueForAttribute:@"kMDItemFSCreationDate"];
  v19 = BUDynamicCast();
  [v4 setContentCreationDate:v19];

  objc_opt_class();
  v20 = [objectCopy valueForAttribute:@"kMDItemFSSize"];
  v21 = BUDynamicCast();
  [v4 setContentFileSize:v21];

  v22 = [objectCopy valueForAttribute:NSMetadataUbiquitousItemHasUnresolvedConflictsKey];
  [v4 setUnresolvedConflict:v22];

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  identity = [(BDSUbiquityDocumentsObserver *)self identity];
  containerURL = [(BDSUbiquityDocumentsObserver *)self containerURL];
  noSyncURL = [(BDSUbiquityDocumentsObserver *)self noSyncURL];
  ubiquityStatusMonitor = [(BDSUbiquityDocumentsObserver *)self ubiquityStatusMonitor];
  v9 = [NSString stringWithFormat:@"<%@(%p) identity='%@' containerURL='%@' noSyncURL='%@'>\n\tubiquityStatusMonitor = %@", v4, self, identity, containerURL, noSyncURL, ubiquityStatusMonitor];

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