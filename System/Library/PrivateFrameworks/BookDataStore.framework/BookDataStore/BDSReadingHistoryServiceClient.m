@interface BDSReadingHistoryServiceClient
+ (id)sharedServiceProxy;
+ (void)clearDefaultsCachedDataWithCompletionHandler:(id)a3;
- (BDSReadingHistoryServiceClient)init;
- (void)bookWidgetReadingHistoryStateInfoWithCompletionHandler:(id)a3;
- (void)handleSyncFileChangeWithSyncVersionInfo:(id)a3 updateInfo:(id)a4 completion:(id)a5;
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

- (void)handleSyncFileChangeWithSyncVersionInfo:(id)a3 updateInfo:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BDSReadingHistoryServiceClient *)self serviceProxy];
  [v11 readingHistoryHandleSyncFileChangeWithSyncVersionInfo:v10 updateInfo:v9 completion:v8];
}

+ (void)clearDefaultsCachedDataWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[BDSReadingHistoryServiceClient sharedServiceProxy];
  [v4 readingHistoryClearDefaultsCachedDataWithCompletion:v3];
}

- (void)bookWidgetReadingHistoryStateInfoWithCompletionHandler:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = BDSWidgetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "BDSReadingHistoryServiceClient bookWidgetReadingHistoryStateInfo reading file.", &v18, 2u);
  }

  v6 = +[BDSBookWidgetReadingHistoryDataFile sharedInstance];
  v7 = [v6 load];
  v8 = BDSWidgetLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_DEFAULT, "BDSReadingHistoryServiceClient bookWidgetReadingHistoryStateInfo - Compute from saved data", &v18, 2u);
    }

    v10 = objc_alloc_init(BDSReadingHistoryStateEstimator);
    v11 = [v7 stateInfo];
    v12 = [(BDSReadingHistoryStateEstimator *)v10 estimateCurrentStateInfoWithExistingStateInfo:v11];

    v13 = BDSWidgetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v12;
      _os_log_impl(&dword_1E45E0000, v13, OS_LOG_TYPE_DEFAULT, "BDSReadingHistoryServiceClient bookWidgetReadingHistoryStateInfo - Return %@", &v18, 0xCu);
    }

    if (v12)
    {
      v14 = _Block_copy(v4);
      v15 = v14;
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

      v15 = [(BDSReadingHistoryServiceClient *)self serviceProxy];
      [v15 bookWidgetReadingHistoryStateInfoWithCompletion:v4];
    }
  }

  else
  {
    if (v9)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_DEFAULT, "BDSReadingHistoryServiceClient bookWidgetReadingHistoryStateInfo - Cannot load saved data, fallback to XPC call", &v18, 2u);
    }

    v10 = [(BDSReadingHistoryServiceClient *)self serviceProxy];
    [(BDSReadingHistoryStateEstimator *)v10 bookWidgetReadingHistoryStateInfoWithCompletion:v4];
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end