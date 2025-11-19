@interface NDOfflineTodayFeedOperation
- (NDOfflineTodayFeedOperation)initWithFeedConfig:(id)a3 context:(id)a4 ANFHelper:(id)a5;
- (void)_handleArchive:(id)a3;
- (void)_handleError:(id)a3;
- (void)_handleInterestToken:(id)a3;
- (void)_updateProgress:(double)a3;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation NDOfflineTodayFeedOperation

- (NDOfflineTodayFeedOperation)initWithFeedConfig:(id)a3 context:(id)a4 ANFHelper:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = NDOfflineTodayFeedOperation;
  v12 = [(NDOfflineTodayFeedOperation *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_feedConfig, a3);
    objc_storeStrong(&v13->_context, a4);
    objc_storeStrong(&v13->_ANFHelper, a5);
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
  v3 = [(NDOfflineTodayFeedOperation *)self ANFHelper];
  [v3 pushInterest];

  v4 = dispatch_group_create();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [(NDOfflineTodayFeedOperation *)self feedConfig];
  v6 = [v5 topStoriesArticleIDs];

  v7 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        v11 = [FCOfflineArticleFetchOperation alloc];
        v12 = [(NDOfflineTodayFeedOperation *)self context];
        v13 = [(NDOfflineTodayFeedOperation *)self ANFHelper];
        v14 = [v11 initWithContext:v12 ANFHelper:v13 articleID:v10];

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
        v15 = [(NDOfflineTodayFeedOperation *)self serialQueue];
        [v15 addOperation:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v8);
  }

  v16 = [(NDOfflineTodayFeedOperation *)self feedConfig];
  v17 = [v16 topStoriesPackageURLs];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000DC6C;
  v30[3] = &unk_1000722A8;
  v30[4] = self;
  v18 = [v17 fc_arrayByTransformingWithBlock:v30];

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
  v22 = [(NDOfflineTodayFeedOperation *)self serialQueue];
  [v22 addOperation:v19];

  [(NDOfflineTodayFeedOperation *)self qualityOfService];
  v23 = FCDispatchQueueForQualityOfService();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DD64;
  block[3] = &unk_100071D20;
  block[4] = self;
  dispatch_group_notify(v21, v23, block);
}

- (void)operationWillFinishWithError:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [(NDOfflineTodayFeedOperation *)self _updateProgress:1.0];
  }

  v5 = [(NDOfflineTodayFeedOperation *)self fetchCompletionQueue];

  v6 = [(NDOfflineTodayFeedOperation *)self fetchCompletionHandler];

  if (v5)
  {
    if (v6)
    {
      v7 = [(NDOfflineTodayFeedOperation *)self fetchCompletionQueue];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10000DF34;
      v11[3] = &unk_100071DB0;
      v11[4] = self;
      v12 = v4;
      dispatch_async(v7, v11);
    }
  }

  else if (v6)
  {
    v8 = [(NDOfflineTodayFeedOperation *)self fetchCompletionHandler];
    v9 = [(NDOfflineTodayFeedOperation *)self resultInterestTokens];
    v10 = [v9 readOnlyArray];
    (v8)[2](v8, v10, v4);
  }
}

- (void)_updateProgress:(double)a3
{
  if (([(NDOfflineTodayFeedOperation *)self isFinished]& 1) == 0)
  {
    [(NDOfflineTodayFeedOperation *)self setProgress:a3];
    v5 = [(NDOfflineTodayFeedOperation *)self progressQueue];

    v6 = [(NDOfflineTodayFeedOperation *)self progressHandler];

    if (v5)
    {
      if (v6)
      {
        v7 = [(NDOfflineTodayFeedOperation *)self progressQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000E104;
        block[3] = &unk_100071D20;
        block[4] = self;
        dispatch_async(v7, block);
      }
    }

    else if (v6)
    {
      v8 = [(NDOfflineTodayFeedOperation *)self progressHandler];
      [(NDOfflineTodayFeedOperation *)self progress];
      v8[2]();
    }
  }
}

- (void)_handleInterestToken:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(NDOfflineTodayFeedOperation *)self resultInterestTokens];
    [v5 addObject:v4];
  }
}

- (void)_handleArchive:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NDOfflineTodayFeedOperation *)self archiveQueue];

    v6 = [(NDOfflineTodayFeedOperation *)self archiveHandler];

    if (v5)
    {
      if (v6)
      {
        v7 = [(NDOfflineTodayFeedOperation *)self archiveQueue];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_10000E2E4;
        v9[3] = &unk_100071DB0;
        v9[4] = self;
        v10 = v4;
        dispatch_async(v7, v9);
      }
    }

    else if (v6)
    {
      v8 = [(NDOfflineTodayFeedOperation *)self archiveHandler];
      (v8)[2](v8, v4);
    }
  }
}

- (void)_handleError:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(NDOfflineTodayFeedOperation *)self resultErrors];
    [v5 addObject:v4];
  }
}

@end