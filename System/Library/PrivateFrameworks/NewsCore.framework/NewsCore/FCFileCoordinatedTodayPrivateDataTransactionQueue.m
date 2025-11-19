@interface FCFileCoordinatedTodayPrivateDataTransactionQueue
- (BOOL)peekAtTransactionsSyncWithAccessor:(id)a3;
- (FCFileCoordinatedTodayPrivateDataTransactionQueue)init;
- (FCFileCoordinatedTodayPrivateDataTransactionQueue)initWithFileURL:(id)a3;
- (void)dequeueTransactionsWithCompletion:(id)a3;
- (void)enqueueTransaction:(id)a3 withMaxTransactionCount:(unint64_t)a4;
@end

@implementation FCFileCoordinatedTodayPrivateDataTransactionQueue

- (FCFileCoordinatedTodayPrivateDataTransactionQueue)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFileCoordinatedTodayPrivateDataTransactionQueue init]";
    v10 = 2080;
    v11 = "FCFileCoordinatedTodayPrivateDataTransactionQueue.m";
    v12 = 1024;
    v13 = 27;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFileCoordinatedTodayPrivateDataTransactionQueue init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFileCoordinatedTodayPrivateDataTransactionQueue)initWithFileURL:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "fileURL"];
    *buf = 136315906;
    v17 = "[FCFileCoordinatedTodayPrivateDataTransactionQueue initWithFileURL:]";
    v18 = 2080;
    v19 = "FCFileCoordinatedTodayPrivateDataTransactionQueue.m";
    v20 = 1024;
    v21 = 32;
    v22 = 2114;
    v23 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v15.receiver = self;
  v15.super_class = FCFileCoordinatedTodayPrivateDataTransactionQueue;
  v5 = [(FCFileCoordinatedTodayPrivateDataTransactionQueue *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [[FCFileCoordinatedDictionary alloc] initWithFileURL:v4 allowedClasses:v9];
    fileCoordinatedDictionary = v5->_fileCoordinatedDictionary;
    v5->_fileCoordinatedDictionary = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)enqueueTransaction:(id)a3 withMaxTransactionCount:(unint64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transaction"];
    *buf = 136315906;
    v15 = "[FCFileCoordinatedTodayPrivateDataTransactionQueue enqueueTransaction:withMaxTransactionCount:]";
    v16 = 2080;
    v17 = "FCFileCoordinatedTodayPrivateDataTransactionQueue.m";
    v18 = 1024;
    v19 = 46;
    v20 = 2114;
    v21 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = [(FCFileCoordinatedTodayPrivateDataTransactionQueue *)self fileCoordinatedDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__FCFileCoordinatedTodayPrivateDataTransactionQueue_enqueueTransaction_withMaxTransactionCount___block_invoke;
  v11[3] = &unk_1E7C47F00;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  [v7 writeSyncWithAccessor:v11];

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)peekAtTransactionsSyncWithAccessor:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "accessor"];
    *buf = 136315906;
    v14 = "[FCFileCoordinatedTodayPrivateDataTransactionQueue peekAtTransactionsSyncWithAccessor:]";
    v15 = 2080;
    v16 = "FCFileCoordinatedTodayPrivateDataTransactionQueue.m";
    v17 = 1024;
    v18 = 56;
    v19 = 2114;
    v20 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCFileCoordinatedTodayPrivateDataTransactionQueue *)self fileCoordinatedDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__FCFileCoordinatedTodayPrivateDataTransactionQueue_peekAtTransactionsSyncWithAccessor___block_invoke;
  v11[3] = &unk_1E7C38D88;
  v12 = v4;
  v6 = v4;
  v7 = [v5 readSyncWithAccessor:v11];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void __88__FCFileCoordinatedTodayPrivateDataTransactionQueue_peekAtTransactionsSyncWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 fc_transactions];
  v5 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  (*(v2 + 16))(v2, v4);
}

- (void)dequeueTransactionsWithCompletion:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
    *buf = 136315906;
    v12 = "[FCFileCoordinatedTodayPrivateDataTransactionQueue dequeueTransactionsWithCompletion:]";
    v13 = 2080;
    v14 = "FCFileCoordinatedTodayPrivateDataTransactionQueue.m";
    v15 = 1024;
    v16 = 66;
    v17 = 2114;
    v18 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCFileCoordinatedTodayPrivateDataTransactionQueue *)self fileCoordinatedDictionary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__FCFileCoordinatedTodayPrivateDataTransactionQueue_dequeueTransactionsWithCompletion___block_invoke;
  v9[3] = &unk_1E7C38DB0;
  v10 = v4;
  v6 = v4;
  [v5 writeWithAccessor:v9 completion:0];

  v7 = *MEMORY[0x1E69E9840];
}

void __87__FCFileCoordinatedTodayPrivateDataTransactionQueue_dequeueTransactionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 fc_dequeueTransactions];
  (*(v2 + 16))(v2, v3);
}

@end