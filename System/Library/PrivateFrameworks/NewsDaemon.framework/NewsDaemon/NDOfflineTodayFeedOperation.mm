@interface NDOfflineTodayFeedOperation
- (NDOfflineTodayFeedOperation)initWithFeedConfig:(id)config context:(id)context ANFHelper:(id)helper;
- (void)_handleArchive:(id)archive;
- (void)_handleError:(id)error;
- (void)_handleInterestToken:(id)token;
- (void)_updateProgress:(double)progress;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation NDOfflineTodayFeedOperation

- (NDOfflineTodayFeedOperation)initWithFeedConfig:(id)config context:(id)context ANFHelper:(id)helper
{
  configCopy = config;
  contextCopy = context;
  helperCopy = helper;
  v21.receiver = self;
  v21.super_class = NDOfflineTodayFeedOperation;
  v12 = [(NDOfflineTodayFeedOperation *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_feedConfig, config);
    objc_storeStrong(&v13->_context, context);
    objc_storeStrong(&v13->_ANFHelper, helper);
    v14 = objc_alloc_init(FCThreadSafeMutableArray);
    resultInterestTokens = v13->_resultInterestTokens;
    v13->_resultInterestTokens = v14;

    v16 = objc_alloc_init(FCThreadSafeMutableArray);
    resultErrors = v13->_resultErrors;
    v13->_resultErrors = v16;

    v18 = objc_alloc_init(NSOperationQueue);
    serialQueue = v13->_serialQueue;
    v13->_serialQueue = v18;

    [(NSOperationQueue *)v13->_serialQueue setName:@"com.apple.newsd.download.todayFeedSerial"];
    [(NSOperationQueue *)v13->_serialQueue setMaxConcurrentOperationCount:1];
  }

  return v13;
}

- (void)performOperation
{
  aNFHelper = [(NDOfflineTodayFeedOperation *)self ANFHelper];
  [aNFHelper pushInterest];

  v4 = dispatch_group_create();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  feedConfig = [(NDOfflineTodayFeedOperation *)self feedConfig];
  topStoriesArticleIDs = [feedConfig topStoriesArticleIDs];

  v7 = [topStoriesArticleIDs countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v24 = *v35;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(topStoriesArticleIDs);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        v11 = [FCOfflineArticleFetchOperation alloc];
        context = [(NDOfflineTodayFeedOperation *)self context];
        aNFHelper2 = [(NDOfflineTodayFeedOperation *)self ANFHelper];
        v14 = [v11 initWithContext:context ANFHelper:aNFHelper2 articleID:v10];

        [v14 setCachedOnly:{-[NDOfflineTodayFeedOperation cachedOnly](self, "cachedOnly")}];
        [v14 setProgressHandler:&stru_100072230];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10000DBF8;
        v33[3] = &unk_100072258;
        v33[4] = self;
        [v14 setArchiveHandler:v33];
        dispatch_group_enter(v4);
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_10000DC04;
        v31[3] = &unk_100072280;
        v31[4] = self;
        v32 = v4;
        [v14 setFetchCompletionHandler:v31];
        [(NDOfflineTodayFeedOperation *)self associateChildOperation:v14];
        serialQueue = [(NDOfflineTodayFeedOperation *)self serialQueue];
        [serialQueue addOperation:v14];
      }

      v8 = [topStoriesArticleIDs countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v8);
  }

  feedConfig2 = [(NDOfflineTodayFeedOperation *)self feedConfig];
  topStoriesPackageURLs = [feedConfig2 topStoriesPackageURLs];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000DC6C;
  v30[3] = &unk_1000722A8;
  v30[4] = self;
  v18 = [topStoriesPackageURLs fc_arrayByTransformingWithBlock:v30];

  v19 = [[FCAssetsFetchOperation alloc] initWithAssetHandles:v18];
  [v19 setMaxConcurrentFetchCount:20];
  if ([(NDOfflineTodayFeedOperation *)self cachedOnly])
  {
    v20 = 3;
  }

  else
  {
    v20 = 0;
  }

  [v19 setCachePolicy:v20];
  [v19 setShouldFailOnMissingObjects:1];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000DCEC;
  v29[3] = &unk_100072258;
  v29[4] = self;
  [v19 setArchiveHandler:v29];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000DCF8;
  v28[3] = &unk_1000722D0;
  v28[4] = self;
  [v19 setInterestTokenHandler:v28];
  dispatch_group_enter(v4);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000DD04;
  v26[3] = &unk_1000722F8;
  v26[4] = self;
  v27 = v4;
  v21 = v4;
  [v19 setFetchCompletionBlock:v26];
  [(NDOfflineTodayFeedOperation *)self associateChildOperation:v19];
  serialQueue2 = [(NDOfflineTodayFeedOperation *)self serialQueue];
  [serialQueue2 addOperation:v19];

  [(NDOfflineTodayFeedOperation *)self qualityOfService];
  v23 = FCDispatchQueueForQualityOfService();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DD64;
  block[3] = &unk_100071D20;
  block[4] = self;
  dispatch_group_notify(v21, v23, block);
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    [(NDOfflineTodayFeedOperation *)self _updateProgress:1.0];
  }

  fetchCompletionQueue = [(NDOfflineTodayFeedOperation *)self fetchCompletionQueue];

  fetchCompletionHandler = [(NDOfflineTodayFeedOperation *)self fetchCompletionHandler];

  if (fetchCompletionQueue)
  {
    if (fetchCompletionHandler)
    {
      fetchCompletionQueue2 = [(NDOfflineTodayFeedOperation *)self fetchCompletionQueue];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10000DF34;
      v11[3] = &unk_100071DB0;
      v11[4] = self;
      v12 = errorCopy;
      dispatch_async(fetchCompletionQueue2, v11);
    }
  }

  else if (fetchCompletionHandler)
  {
    fetchCompletionHandler2 = [(NDOfflineTodayFeedOperation *)self fetchCompletionHandler];
    resultInterestTokens = [(NDOfflineTodayFeedOperation *)self resultInterestTokens];
    readOnlyArray = [resultInterestTokens readOnlyArray];
    (fetchCompletionHandler2)[2](fetchCompletionHandler2, readOnlyArray, errorCopy);
  }
}

- (void)_updateProgress:(double)progress
{
  if (([(NDOfflineTodayFeedOperation *)self isFinished]& 1) == 0)
  {
    [(NDOfflineTodayFeedOperation *)self setProgress:progress];
    progressQueue = [(NDOfflineTodayFeedOperation *)self progressQueue];

    progressHandler = [(NDOfflineTodayFeedOperation *)self progressHandler];

    if (progressQueue)
    {
      if (progressHandler)
      {
        progressQueue2 = [(NDOfflineTodayFeedOperation *)self progressQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000E104;
        block[3] = &unk_100071D20;
        block[4] = self;
        dispatch_async(progressQueue2, block);
      }
    }

    else if (progressHandler)
    {
      progressHandler2 = [(NDOfflineTodayFeedOperation *)self progressHandler];
      [(NDOfflineTodayFeedOperation *)self progress];
      progressHandler2[2]();
    }
  }
}

- (void)_handleInterestToken:(id)token
{
  if (token)
  {
    tokenCopy = token;
    resultInterestTokens = [(NDOfflineTodayFeedOperation *)self resultInterestTokens];
    [resultInterestTokens addObject:tokenCopy];
  }
}

- (void)_handleArchive:(id)archive
{
  archiveCopy = archive;
  if (archiveCopy)
  {
    archiveQueue = [(NDOfflineTodayFeedOperation *)self archiveQueue];

    archiveHandler = [(NDOfflineTodayFeedOperation *)self archiveHandler];

    if (archiveQueue)
    {
      if (archiveHandler)
      {
        archiveQueue2 = [(NDOfflineTodayFeedOperation *)self archiveQueue];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_10000E2E4;
        v9[3] = &unk_100071DB0;
        v9[4] = self;
        v10 = archiveCopy;
        dispatch_async(archiveQueue2, v9);
      }
    }

    else if (archiveHandler)
    {
      archiveHandler2 = [(NDOfflineTodayFeedOperation *)self archiveHandler];
      (archiveHandler2)[2](archiveHandler2, archiveCopy);
    }
  }
}

- (void)_handleError:(id)error
{
  if (error)
  {
    errorCopy = error;
    resultErrors = [(NDOfflineTodayFeedOperation *)self resultErrors];
    [resultErrors addObject:errorCopy];
  }
}

@end