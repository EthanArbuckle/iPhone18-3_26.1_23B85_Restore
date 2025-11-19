@interface FCWritablePrivateDataStorage
- (FCWritablePrivateDataStorage)init;
- (FCWritablePrivateDataStorage)initWithDropbox:(id)a3 transactionQueue:(id)a4;
- (void)writeReadHistoryItem:(id)a3;
- (void)writeSeenHistoryItems:(id)a3;
@end

@implementation FCWritablePrivateDataStorage

- (FCWritablePrivateDataStorage)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCWritablePrivateDataStorage init]";
    v10 = 2080;
    v11 = "FCWritablePrivateDataStorage.m";
    v12 = 1024;
    v13 = 28;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCWritablePrivateDataStorage init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCWritablePrivateDataStorage)initWithDropbox:(id)a3 transactionQueue:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dropbox"];
    *buf = 136315906;
    v17 = "[FCWritablePrivateDataStorage initWithDropbox:transactionQueue:]";
    v18 = 2080;
    v19 = "FCWritablePrivateDataStorage.m";
    v20 = 1024;
    v21 = 33;
    v22 = 2114;
    v23 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transactionQueue"];
    *buf = 136315906;
    v17 = "[FCWritablePrivateDataStorage initWithDropbox:transactionQueue:]";
    v18 = 2080;
    v19 = "FCWritablePrivateDataStorage.m";
    v20 = 1024;
    v21 = 34;
    v22 = 2114;
    v23 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v15.receiver = self;
  v15.super_class = FCWritablePrivateDataStorage;
  v9 = [(FCWritablePrivateDataStorage *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dropbox, a3);
    objc_storeStrong(&v10->_transactionQueue, a4);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)writeSeenHistoryItems:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "historyItems"];
    *buf = 136315906;
    v30 = "[FCWritablePrivateDataStorage writeSeenHistoryItems:]";
    v31 = 2080;
    v32 = "FCWritablePrivateDataStorage.m";
    v33 = 1024;
    v34 = 48;
    v35 = 2114;
    v36 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_opt_new();
  v6 = [FCFileCoordinatedTodayDropboxTransaction transactionToMutateSeenArticlesWithInsertedOrUpdatedHistoryItems:v4 deletedArticleIDs:v5];

  v7 = [(FCWritablePrivateDataStorage *)self dropbox];
  v23 = v6;
  v8 = [v6 todayPrivateDataAccessor];
  [v7 depositSyncWithAccessor:v8];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [FCTodayMarkAsSeenTransaction alloc];
        v16 = [v14 articleID];
        v17 = [v14 maxVersionSeen];
        v18 = [v14 firstSeenAtOfMaxVersionSeen];
        v19 = [(FCTodayMarkAsSeenTransaction *)v15 initWithArticleID:v16 articleVersion:v17 seenDate:v18];

        v20 = [(FCWritablePrivateDataStorage *)self transactionQueue];
        [v20 enqueueTransaction:v19 withMaxTransactionCount:100];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)writeReadHistoryItem:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "historyItem"];
    *buf = 136315906;
    v14 = "[FCWritablePrivateDataStorage writeReadHistoryItem:]";
    v15 = 2080;
    v16 = "FCWritablePrivateDataStorage.m";
    v17 = 1024;
    v18 = 65;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [FCTodayMarkAsReadTransaction alloc];
  v6 = [v4 articleID];
  v7 = [v4 maxVersionRead];
  v8 = [v4 lastVisitedAt];
  v9 = [(FCTodayMarkAsReadTransaction *)v5 initWithArticleID:v6 articleVersion:v7 readDate:v8];

  v10 = [(FCWritablePrivateDataStorage *)self transactionQueue];
  [v10 enqueueTransaction:v9 withMaxTransactionCount:100];

  v11 = *MEMORY[0x1E69E9840];
}

@end