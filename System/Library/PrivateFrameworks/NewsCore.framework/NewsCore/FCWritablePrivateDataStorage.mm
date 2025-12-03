@interface FCWritablePrivateDataStorage
- (FCWritablePrivateDataStorage)init;
- (FCWritablePrivateDataStorage)initWithDropbox:(id)dropbox transactionQueue:(id)queue;
- (void)writeReadHistoryItem:(id)item;
- (void)writeSeenHistoryItems:(id)items;
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

- (FCWritablePrivateDataStorage)initWithDropbox:(id)dropbox transactionQueue:(id)queue
{
  v24 = *MEMORY[0x1E69E9840];
  dropboxCopy = dropbox;
  queueCopy = queue;
  if (!dropboxCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (queueCopy)
    {
      goto LABEL_6;
    }
  }

  else if (queueCopy)
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
    objc_storeStrong(&v9->_dropbox, dropbox);
    objc_storeStrong(&v10->_transactionQueue, queue);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)writeSeenHistoryItems:(id)items
{
  v37 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (!itemsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
  v6 = [FCFileCoordinatedTodayDropboxTransaction transactionToMutateSeenArticlesWithInsertedOrUpdatedHistoryItems:itemsCopy deletedArticleIDs:v5];

  dropbox = [(FCWritablePrivateDataStorage *)self dropbox];
  v23 = v6;
  todayPrivateDataAccessor = [v6 todayPrivateDataAccessor];
  [dropbox depositSyncWithAccessor:todayPrivateDataAccessor];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = itemsCopy;
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
        articleID = [v14 articleID];
        maxVersionSeen = [v14 maxVersionSeen];
        firstSeenAtOfMaxVersionSeen = [v14 firstSeenAtOfMaxVersionSeen];
        v19 = [(FCTodayMarkAsSeenTransaction *)v15 initWithArticleID:articleID articleVersion:maxVersionSeen seenDate:firstSeenAtOfMaxVersionSeen];

        transactionQueue = [(FCWritablePrivateDataStorage *)self transactionQueue];
        [transactionQueue enqueueTransaction:v19 withMaxTransactionCount:100];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)writeReadHistoryItem:(id)item
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
  articleID = [itemCopy articleID];
  maxVersionRead = [itemCopy maxVersionRead];
  lastVisitedAt = [itemCopy lastVisitedAt];
  v9 = [(FCTodayMarkAsReadTransaction *)v5 initWithArticleID:articleID articleVersion:maxVersionRead readDate:lastVisitedAt];

  transactionQueue = [(FCWritablePrivateDataStorage *)self transactionQueue];
  [transactionQueue enqueueTransaction:v9 withMaxTransactionCount:100];

  v11 = *MEMORY[0x1E69E9840];
}

@end