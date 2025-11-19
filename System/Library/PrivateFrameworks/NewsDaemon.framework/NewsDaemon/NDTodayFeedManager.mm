@interface NDTodayFeedManager
- (BOOL)_canAdoptFeedConfig;
- (NDTodayFeedManager)initWithContext:(id)a3 ANFHelper:(id)a4;
- (id)_configFromData:(id)a3;
- (id)_contentIDForConfig:(id)a3;
- (id)_keepAliveTokenForInstanceID:(id)a3;
- (id)_latestTodayFeed;
- (id)_mostRecentContentID;
- (id)_publishDateFromContentID:(id)a3;
- (id)_todayFeedForContentID:(id)a3;
- (void)adoptFeedConfigData:(id)a3;
- (void)fetchCachedTodayFeedWithCompletion:(id)a3;
- (void)flushWithCompletion:(id)a3;
@end

@implementation NDTodayFeedManager

- (NDTodayFeedManager)initWithContext:(id)a3 ANFHelper:(id)a4
{
  v7 = a3;
  v8 = a4;
  v32.receiver = self;
  v32.super_class = NDTodayFeedManager;
  v9 = [(NDTodayFeedManager *)&v32 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    objc_storeStrong(&v10->_ANFHelper, a4);
    v11 = objc_alloc_init(NSMutableArray);
    interestTokens = v10->_interestTokens;
    v10->_interestTokens = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.news.NDTodayFeedManager", v13);
    queue = v10->_queue;
    v10->_queue = v14;

    v16 = objc_alloc_init(NSOperationQueue);
    operationQueue = v10->_operationQueue;
    v10->_operationQueue = v16;

    [(NSOperationQueue *)v10->_operationQueue setUnderlyingQueue:v10->_queue];
    [(NSOperationQueue *)v10->_operationQueue setMaxConcurrentOperationCount:1];
    v18 = [v7 contentDirectory];
    v19 = [v18 stringByAppendingPathComponent:@"today-feed"];
    rootDirectory = v10->_rootDirectory;
    v10->_rootDirectory = v19;

    v21 = [NDContentArchiveStore alloc];
    v22 = [v7 contentDirectory];
    v23 = [(NDContentArchiveStore *)v21 initWithParentDirectory:v22 name:@"today-feed"];
    archiveStore = v10->_archiveStore;
    v10->_archiveStore = v23;

    v25 = [(NDTodayFeedManager *)v10 _mostRecentContentID];
    if (v25)
    {
      v26 = v10->_interestTokens;
      v27 = [(NDContentArchiveStore *)v10->_archiveStore interestTokenForContentID:v25];
      [(NSMutableArray *)v26 fc_safelyAddObject:v27];

      v28 = [(NDContentArchiveStore *)v10->_archiveStore manifestForContentID:v25];
      v29 = [v28 copyWithAssetsOnly];
      v30 = [v7 interestTokenForContentManifest:v29];
      [(NSMutableArray *)v10->_interestTokens addObject:v30];
    }

    [(NDContentArchiveStore *)v10->_archiveStore enableFlushingWithFlushingThreshold:0];
  }

  return v10;
}

- (void)adoptFeedConfigData:(id)a3
{
  v4 = a3;
  if ([(NDTodayFeedManager *)self _canAdoptFeedConfig])
  {
    v5 = +[NSUUID UUID];
    v6 = [v5 UUIDString];

    v7 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "TodayFeedService will enter operation queue (instance=%{public}@)", buf, 0xCu);
    }

    v8 = [(NDTodayFeedManager *)self operationQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100003D50;
    v15[3] = &unk_100071C90;
    v16 = v6;
    v17 = v4;
    v18 = self;
    v9 = v6;
    [v8 fc_addAsyncOperationWithBlock:v15];

    v10 = [(NDTodayFeedManager *)self _keepAliveTokenForInstanceID:v9];
    v11 = [(NDTodayFeedManager *)self operationQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100004718;
    v13[3] = &unk_100071CB8;
    v14 = v10;
    v12 = v10;
    [v11 fc_addAsyncOperationWithBlock:v13];
  }
}

- (void)fetchCachedTodayFeedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NDTodayFeedManager *)self _latestTodayFeed];
  if (v5)
  {
    v4[2](v4, v5, 0);
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000047E8;
    v6[3] = &unk_100071BC8;
    v7 = v4;
    sub_1000047E8(v6);
  }
}

- (void)flushWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NDTodayFeedManager *)self operationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000491C;
  v7[3] = &unk_100071BF0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

- (BOOL)_canAdoptFeedConfig
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  if (v3)
  {

    return sub_100004B04();
  }

  else
  {
    v5 = +[FCNetworkReachability sharedNetworkReachability];
    v6 = [v5 isLowDataModeEnabled];

    if (v6)
    {

      return sub_100004B4C();
    }

    else
    {
      return 1;
    }
  }
}

- (id)_latestTodayFeed
{
  v3 = [(NDTodayFeedManager *)self _mostRecentContentID];
  if (v3)
  {
    v4 = [(NDTodayFeedManager *)self _todayFeedForContentID:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_configFromData:(id)a3
{
  v3 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000043CC;
  v22 = sub_1000043DC;
  v23 = 0;
  v4 = +[NSDate date];
  v5 = NDTodayFeedConfigDecodingServiceXPCConnection();
  [v5 activate];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100071CF8];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100004EEC;
  v17[3] = &unk_100071D48;
  v17[4] = &v18;
  [v6 decodeTodayFeedConfigData:v3 completion:v17];

  [v5 invalidate];
  v7 = v19[5];
  if (v7)
  {
    v8 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v19[5] publishDate];
      v10 = [v19[5] topStoriesArticleIDs];
      v11 = [v10 count];
      v12 = [v19[5] topStoriesPackageURLs];
      v13 = [v12 count];
      v14 = [v4 fc_millisecondTimeIntervalUntilNow];
      *buf = 138544130;
      v25 = v9;
      v26 = 2048;
      v27 = v11;
      v28 = 2048;
      v29 = v13;
      v30 = 2048;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "TodayFeedService successfully decoded config data, publishDate=%{public}@, articles=%lu, packages=%lu, time=%llums", buf, 0x2Au);
    }

    v7 = v19[5];
  }

  v15 = v7;

  _Block_object_dispose(&v18, 8);

  return v15;
}

- (id)_contentIDForConfig:(id)a3
{
  v3 = [a3 publishDate];
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v3 fc_millisecondTimeIntervalSince1970]);

  return v4;
}

- (id)_publishDateFromContentID:(id)a3
{
  v3 = [a3 fc_unsignedLongLongValue];

  return [NSDate fc_dateWithMillisecondTimeIntervalSince1970:v3];
}

- (id)_mostRecentContentID
{
  v2 = [(NDTodayFeedManager *)self archiveStore];
  v3 = [v2 allCompleteContentIDs];

  v4 = [v3 sortedArrayUsingComparator:&stru_100071D88];
  v5 = [v4 firstObject];

  return v5;
}

- (id)_todayFeedForContentID:(id)a3
{
  v4 = a3;
  v5 = [(NDTodayFeedManager *)self archiveStore];
  v6 = [v5 blobWithName:@"config" contentID:v4];

  v7 = [(NDTodayFeedManager *)self archiveStore];
  v8 = [v7 manifestForContentID:v4];

  v9 = [(NDTodayFeedManager *)self archiveStore];
  v10 = [v9 aggregateArchiveForContentID:v4];

  v11 = [NDTodayFeed alloc];
  v12 = [(NDTodayFeedManager *)self _publishDateFromContentID:v4];

  v13 = [v11 initWithConfigData:v6 publishDate:v12 contentManifest:v8 contentArchive:v10];

  return v13;
}

- (id)_keepAliveTokenForInstanceID:(id)a3
{
  v3 = [NSString stringWithFormat:@"com.apple.newsd.today-feed.adoptNewConfig-%@", a3];
  v4 = [[NDAssertion alloc] initWithName:v3];

  return v4;
}

@end