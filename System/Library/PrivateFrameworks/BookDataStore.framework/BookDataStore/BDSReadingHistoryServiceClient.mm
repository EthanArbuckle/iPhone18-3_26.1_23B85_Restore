@interface BDSReadingHistoryServiceClient
+ (id)sharedServiceProxy;
+ (void)clearDefaultsCachedDataWithCompletionHandler:(id)handler;
- (BDSReadingHistoryServiceClient)init;
- (void)bookWidgetReadingHistoryStateInfoWithCompletionHandler:(id)handler;
- (void)handleSyncFileChangeWithSyncVersionInfo:(id)info updateInfo:(id)updateInfo completion:(id)completion;
@end

@implementation BDSReadingHistoryServiceClient

+ (id)sharedServiceProxy
{
  if (qword_1EE2B0490 != -1)
  {
    sub_1E4704538();
  }

  v3 = qword_1EE2B04C0;

  return v3;
}

- (BDSReadingHistoryServiceClient)init
{
  v6.receiver = self;
  v6.super_class = BDSReadingHistoryServiceClient;
  v2 = [(BDSReadingHistoryServiceClient *)&v6 init];
  if (v2)
  {
    v3 = +[BDSReadingHistoryServiceClient sharedServiceProxy];
    serviceProxy = v2->_serviceProxy;
    v2->_serviceProxy = v3;
  }

  return v2;
}

- (void)handleSyncFileChangeWithSyncVersionInfo:(id)info updateInfo:(id)updateInfo completion:(id)completion
{
  completionCopy = completion;
  updateInfoCopy = updateInfo;
  infoCopy = info;
  serviceProxy = [(BDSReadingHistoryServiceClient *)self serviceProxy];
  [serviceProxy readingHistoryHandleSyncFileChangeWithSyncVersionInfo:infoCopy updateInfo:updateInfoCopy completion:completionCopy];
}

+ (void)clearDefaultsCachedDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[BDSReadingHistoryServiceClient sharedServiceProxy];
  [v4 readingHistoryClearDefaultsCachedDataWithCompletion:handlerCopy];
}

- (void)bookWidgetReadingHistoryStateInfoWithCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = BDSWidgetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "BDSReadingHistoryServiceClient bookWidgetReadingHistoryStateInfo reading file.", &v18, 2u);
  }

  v6 = +[BDSBookWidgetReadingHistoryDataFile sharedInstance];
  load = [v6 load];
  v8 = BDSWidgetLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (load)
  {
    if (v9)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_DEFAULT, "BDSReadingHistoryServiceClient bookWidgetReadingHistoryStateInfo - Compute from saved data", &v18, 2u);
    }

    serviceProxy2 = objc_alloc_init(BDSReadingHistoryStateEstimator);
    stateInfo = [load stateInfo];
    v12 = [(BDSReadingHistoryStateEstimator *)serviceProxy2 estimateCurrentStateInfoWithExistingStateInfo:stateInfo];

    v13 = BDSWidgetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v12;
      _os_log_impl(&dword_1E45E0000, v13, OS_LOG_TYPE_DEFAULT, "BDSReadingHistoryServiceClient bookWidgetReadingHistoryStateInfo - Return %@", &v18, 0xCu);
    }

    if (v12)
    {
      v14 = _Block_copy(handlerCopy);
      serviceProxy = v14;
      if (v14)
      {
        (*(v14 + 2))(v14, v12, 1);
      }
    }

    else
    {
      v16 = BDSWidgetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1E470454C(v16);
      }

      serviceProxy = [(BDSReadingHistoryServiceClient *)self serviceProxy];
      [serviceProxy bookWidgetReadingHistoryStateInfoWithCompletion:handlerCopy];
    }
  }

  else
  {
    if (v9)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_DEFAULT, "BDSReadingHistoryServiceClient bookWidgetReadingHistoryStateInfo - Cannot load saved data, fallback to XPC call", &v18, 2u);
    }

    serviceProxy2 = [(BDSReadingHistoryServiceClient *)self serviceProxy];
    [(BDSReadingHistoryStateEstimator *)serviceProxy2 bookWidgetReadingHistoryStateInfoWithCompletion:handlerCopy];
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end