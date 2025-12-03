@interface NDTodayFeedManager
- (BOOL)_canAdoptFeedConfig;
- (NDTodayFeedManager)initWithContext:(id)context ANFHelper:(id)helper;
- (id)_configFromData:(id)data;
- (id)_contentIDForConfig:(id)config;
- (id)_keepAliveTokenForInstanceID:(id)d;
- (id)_latestTodayFeed;
- (id)_mostRecentContentID;
- (id)_publishDateFromContentID:(id)d;
- (id)_todayFeedForContentID:(id)d;
- (void)adoptFeedConfigData:(id)data;
- (void)fetchCachedTodayFeedWithCompletion:(id)completion;
- (void)flushWithCompletion:(id)completion;
@end

@implementation NDTodayFeedManager

- (NDTodayFeedManager)initWithContext:(id)context ANFHelper:(id)helper
{
  contextCopy = context;
  helperCopy = helper;
  v32.receiver = self;
  v32.super_class = NDTodayFeedManager;
  v9 = [(NDTodayFeedManager *)&v32 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_ANFHelper, helper);
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
    contentDirectory = [contextCopy contentDirectory];
    v19 = [contentDirectory stringByAppendingPathComponent:@"today-feed"];
    rootDirectory = v10->_rootDirectory;
    v10->_rootDirectory = v19;

    v21 = [NDContentArchiveStore alloc];
    contentDirectory2 = [contextCopy contentDirectory];
    v23 = [(NDContentArchiveStore *)v21 initWithParentDirectory:contentDirectory2 name:@"today-feed"];
    archiveStore = v10->_archiveStore;
    v10->_archiveStore = v23;

    _mostRecentContentID = [(NDTodayFeedManager *)v10 _mostRecentContentID];
    if (_mostRecentContentID)
    {
      v26 = v10->_interestTokens;
      v27 = [(NDContentArchiveStore *)v10->_archiveStore interestTokenForContentID:_mostRecentContentID];
      [(NSMutableArray *)v26 fc_safelyAddObject:v27];

      v28 = [(NDContentArchiveStore *)v10->_archiveStore manifestForContentID:_mostRecentContentID];
      copyWithAssetsOnly = [v28 copyWithAssetsOnly];
      v30 = [contextCopy interestTokenForContentManifest:copyWithAssetsOnly];
      [(NSMutableArray *)v10->_interestTokens addObject:v30];
    }

    [(NDContentArchiveStore *)v10->_archiveStore enableFlushingWithFlushingThreshold:0];
  }

  return v10;
}

- (void)adoptFeedConfigData:(id)data
{
  dataCopy = data;
  if ([(NDTodayFeedManager *)self _canAdoptFeedConfig])
  {
    v5 = +[NSUUID UUID];
    uUIDString = [v5 UUIDString];

    v7 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = uUIDString;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "TodayFeedService will enter operation queue (instance=%{public}@)", buf, 0xCu);
    }

    operationQueue = [(NDTodayFeedManager *)self operationQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100003D50;
    v15[3] = &unk_100071C90;
    v16 = uUIDString;
    v17 = dataCopy;
    selfCopy = self;
    v9 = uUIDString;
    [operationQueue fc_addAsyncOperationWithBlock:v15];

    v10 = [(NDTodayFeedManager *)self _keepAliveTokenForInstanceID:v9];
    operationQueue2 = [(NDTodayFeedManager *)self operationQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100004718;
    v13[3] = &unk_100071CB8;
    v14 = v10;
    v12 = v10;
    [operationQueue2 fc_addAsyncOperationWithBlock:v13];
  }
}

- (void)fetchCachedTodayFeedWithCompletion:(id)completion
{
  completionCopy = completion;
  _latestTodayFeed = [(NDTodayFeedManager *)self _latestTodayFeed];
  if (_latestTodayFeed)
  {
    completionCopy[2](completionCopy, _latestTodayFeed, 0);
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000047E8;
    v6[3] = &unk_100071BC8;
    v7 = completionCopy;
    sub_1000047E8(v6);
  }
}

- (void)flushWithCompletion:(id)completion
{
  completionCopy = completion;
  operationQueue = [(NDTodayFeedManager *)self operationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000491C;
  v7[3] = &unk_100071BF0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [operationQueue addOperationWithBlock:v7];
}

- (BOOL)_canAdoptFeedConfig
{
  v2 = +[NSProcessInfo processInfo];
  isLowPowerModeEnabled = [v2 isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {

    return sub_100004B04();
  }

  else
  {
    v5 = +[FCNetworkReachability sharedNetworkReachability];
    isLowDataModeEnabled = [v5 isLowDataModeEnabled];

    if (isLowDataModeEnabled)
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
  _mostRecentContentID = [(NDTodayFeedManager *)self _mostRecentContentID];
  if (_mostRecentContentID)
  {
    v4 = [(NDTodayFeedManager *)self _todayFeedForContentID:_mostRecentContentID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_configFromData:(id)data
{
  dataCopy = data;
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
  [v6 decodeTodayFeedConfigData:dataCopy completion:v17];

  [v5 invalidate];
  v7 = v19[5];
  if (v7)
  {
    v8 = FCOfflineDownloadsLog;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      publishDate = [v19[5] publishDate];
      topStoriesArticleIDs = [v19[5] topStoriesArticleIDs];
      v11 = [topStoriesArticleIDs count];
      topStoriesPackageURLs = [v19[5] topStoriesPackageURLs];
      v13 = [topStoriesPackageURLs count];
      fc_millisecondTimeIntervalUntilNow = [v4 fc_millisecondTimeIntervalUntilNow];
      *buf = 138544130;
      v25 = publishDate;
      v26 = 2048;
      v27 = v11;
      v28 = 2048;
      v29 = v13;
      v30 = 2048;
      v31 = fc_millisecondTimeIntervalUntilNow;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "TodayFeedService successfully decoded config data, publishDate=%{public}@, articles=%lu, packages=%lu, time=%llums", buf, 0x2Au);
    }

    v7 = v19[5];
  }

  v15 = v7;

  _Block_object_dispose(&v18, 8);

  return v15;
}

- (id)_contentIDForConfig:(id)config
{
  publishDate = [config publishDate];
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [publishDate fc_millisecondTimeIntervalSince1970]);

  return v4;
}

- (id)_publishDateFromContentID:(id)d
{
  fc_unsignedLongLongValue = [d fc_unsignedLongLongValue];

  return [NSDate fc_dateWithMillisecondTimeIntervalSince1970:fc_unsignedLongLongValue];
}

- (id)_mostRecentContentID
{
  archiveStore = [(NDTodayFeedManager *)self archiveStore];
  allCompleteContentIDs = [archiveStore allCompleteContentIDs];

  v4 = [allCompleteContentIDs sortedArrayUsingComparator:&stru_100071D88];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (id)_todayFeedForContentID:(id)d
{
  dCopy = d;
  archiveStore = [(NDTodayFeedManager *)self archiveStore];
  v6 = [archiveStore blobWithName:@"config" contentID:dCopy];

  archiveStore2 = [(NDTodayFeedManager *)self archiveStore];
  v8 = [archiveStore2 manifestForContentID:dCopy];

  archiveStore3 = [(NDTodayFeedManager *)self archiveStore];
  v10 = [archiveStore3 aggregateArchiveForContentID:dCopy];

  v11 = [NDTodayFeed alloc];
  v12 = [(NDTodayFeedManager *)self _publishDateFromContentID:dCopy];

  v13 = [v11 initWithConfigData:v6 publishDate:v12 contentManifest:v8 contentArchive:v10];

  return v13;
}

- (id)_keepAliveTokenForInstanceID:(id)d
{
  v3 = [NSString stringWithFormat:@"com.apple.newsd.today-feed.adoptNewConfig-%@", d];
  v4 = [[NDAssertion alloc] initWithName:v3];

  return v4;
}

@end