@interface FCReadablePrivateDataStorage
- (FCReadablePrivateDataStorage)init;
- (FCReadablePrivateDataStorage)initWithDropbox:(id)dropbox transactionQueue:(id)queue;
- (void)readPrivateDataSyncWithAccessor:(id)accessor;
@end

@implementation FCReadablePrivateDataStorage

- (FCReadablePrivateDataStorage)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCReadablePrivateDataStorage init]";
    v10 = 2080;
    v11 = "FCReadablePrivateDataStorage.m";
    v12 = 1024;
    v13 = 26;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCReadablePrivateDataStorage init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCReadablePrivateDataStorage)initWithDropbox:(id)dropbox transactionQueue:(id)queue
{
  v24 = *MEMORY[0x1E69E9840];
  dropboxCopy = dropbox;
  queueCopy = queue;
  if (!dropboxCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dropbox"];
    *buf = 136315906;
    v17 = "[FCReadablePrivateDataStorage initWithDropbox:transactionQueue:]";
    v18 = 2080;
    v19 = "FCReadablePrivateDataStorage.m";
    v20 = 1024;
    v21 = 31;
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
    v17 = "[FCReadablePrivateDataStorage initWithDropbox:transactionQueue:]";
    v18 = 2080;
    v19 = "FCReadablePrivateDataStorage.m";
    v20 = 1024;
    v21 = 32;
    v22 = 2114;
    v23 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v15.receiver = self;
  v15.super_class = FCReadablePrivateDataStorage;
  v9 = [(FCReadablePrivateDataStorage *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dropbox, dropbox);
    objc_storeStrong(&v10->_transactionQueue, queue);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)readPrivateDataSyncWithAccessor:(id)accessor
{
  v29 = *MEMORY[0x1E69E9840];
  accessorCopy = accessor;
  if (!accessorCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "accessor"];
    *buf = 136315906;
    *&buf[4] = "[FCReadablePrivateDataStorage readPrivateDataSyncWithAccessor:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCReadablePrivateDataStorage.m";
    *&buf[22] = 1024;
    LODWORD(v27) = 46;
    WORD2(v27) = 2114;
    *(&v27 + 6) = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v27 = __Block_byref_object_copy__7;
  *(&v27 + 1) = __Block_byref_object_dispose__7;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  dropbox = [(FCReadablePrivateDataStorage *)self dropbox];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__FCReadablePrivateDataStorage_readPrivateDataSyncWithAccessor___block_invoke;
  v18[3] = &unk_1E7C380C8;
  v18[4] = buf;
  [dropbox peekSyncWithAccessor:v18];

  transactionQueue = [(FCReadablePrivateDataStorage *)self transactionQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__FCReadablePrivateDataStorage_readPrivateDataSyncWithAccessor___block_invoke_2;
  v17[3] = &unk_1E7C380F0;
  v17[4] = &v19;
  [transactionQueue peekAtTransactionsSyncWithAccessor:v17];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v20[5];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v25 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * i) performWithTodayPrivateData:*(*&buf[8] + 40)];
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v25 count:16];
    }

    while (v8);
  }

  accessorCopy[2](accessorCopy, *(*&buf[8] + 40));
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(buf, 8);
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __64__FCReadablePrivateDataStorage_readPrivateDataSyncWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

uint64_t __64__FCReadablePrivateDataStorage_readPrivateDataSyncWithAccessor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

@end