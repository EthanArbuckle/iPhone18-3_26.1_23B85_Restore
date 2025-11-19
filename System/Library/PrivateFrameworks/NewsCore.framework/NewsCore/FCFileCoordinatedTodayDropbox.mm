@interface FCFileCoordinatedTodayDropbox
- (BOOL)depositSyncWithAccessor:(id)a3;
- (BOOL)peekSyncWithAccessor:(id)a3;
- (FCFileCoordinatedTodayDropbox)init;
- (FCFileCoordinatedTodayDropbox)initWithFileURL:(id)a3;
- (void)depositWithAccessor:(id)a3 completion:(id)a4;
- (void)peekWithAccessor:(id)a3;
@end

@implementation FCFileCoordinatedTodayDropbox

- (FCFileCoordinatedTodayDropbox)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFileCoordinatedTodayDropbox init]";
    v10 = 2080;
    v11 = "FCFileCoordinatedTodayDropbox.m";
    v12 = 1024;
    v13 = 45;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFileCoordinatedTodayDropbox init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFileCoordinatedTodayDropbox)initWithFileURL:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "fileURL"];
    *buf = 136315906;
    v25 = "[FCFileCoordinatedTodayDropbox initWithFileURL:]";
    v26 = 2080;
    v27 = "FCFileCoordinatedTodayDropbox.m";
    v28 = 1024;
    v29 = 50;
    v30 = 2114;
    v31 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v23.receiver = self;
  v23.super_class = FCFileCoordinatedTodayDropbox;
  v5 = [(FCFileCoordinatedTodayDropbox *)&v23 init];
  if (v5)
  {
    v22 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v20 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v22 setWithObjects:{v21, v20, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [[FCFileCoordinatedDictionary alloc] initWithFileURL:v4 allowedClasses:v14 qualityOfService:25];
    fileCoordinatedDictionary = v5->_fileCoordinatedDictionary;
    v5->_fileCoordinatedDictionary = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)peekSyncWithAccessor:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "accessor"];
    *buf = 136315906;
    v14 = "[FCFileCoordinatedTodayDropbox peekSyncWithAccessor:]";
    v15 = 2080;
    v16 = "FCFileCoordinatedTodayDropbox.m";
    v17 = 1024;
    v18 = 80;
    v19 = 2114;
    v20 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCFileCoordinatedTodayDropbox *)self fileCoordinatedDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__FCFileCoordinatedTodayDropbox_peekSyncWithAccessor___block_invoke;
  v11[3] = &unk_1E7C38D88;
  v12 = v4;
  v6 = v4;
  v7 = [v5 readSyncWithAccessor:v11];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void __54__FCFileCoordinatedTodayDropbox_peekSyncWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = [FCTodayPrivateData alloc];
  if (v7)
  {
    v5 = v7;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = [(FCTodayPrivateData *)v4 initWithDictionary:v5];
  (*(v3 + 16))(v3, v6);
}

- (void)peekWithAccessor:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "accessor"];
    *buf = 136315906;
    v12 = "[FCFileCoordinatedTodayDropbox peekWithAccessor:]";
    v13 = 2080;
    v14 = "FCFileCoordinatedTodayDropbox.m";
    v15 = 1024;
    v16 = 90;
    v17 = 2114;
    v18 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCFileCoordinatedTodayDropbox *)self fileCoordinatedDictionary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__FCFileCoordinatedTodayDropbox_peekWithAccessor___block_invoke;
  v9[3] = &unk_1E7C38D88;
  v10 = v4;
  v6 = v4;
  [v5 readWithAccessor:v9];

  v7 = *MEMORY[0x1E69E9840];
}

void __50__FCFileCoordinatedTodayDropbox_peekWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = [FCTodayPrivateData alloc];
  if (v7)
  {
    v5 = v7;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = [(FCTodayPrivateData *)v4 initWithDictionary:v5];
  (*(v3 + 16))(v3, v6);
}

- (BOOL)depositSyncWithAccessor:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "accessor"];
    *buf = 136315906;
    v14 = "[FCFileCoordinatedTodayDropbox depositSyncWithAccessor:]";
    v15 = 2080;
    v16 = "FCFileCoordinatedTodayDropbox.m";
    v17 = 1024;
    v18 = 100;
    v19 = 2114;
    v20 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCFileCoordinatedTodayDropbox *)self fileCoordinatedDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__FCFileCoordinatedTodayDropbox_depositSyncWithAccessor___block_invoke;
  v11[3] = &unk_1E7C38DB0;
  v12 = v4;
  v6 = v4;
  v7 = [v5 writeSyncWithAccessor:v11];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void __57__FCFileCoordinatedTodayDropbox_depositSyncWithAccessor___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[FCMutableTodayPrivateData alloc] initWithDictionary:v3];

  (*(v2 + 16))(v2, v4);
}

- (void)depositWithAccessor:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "accessor"];
    *buf = 136315906;
    v15 = "[FCFileCoordinatedTodayDropbox depositWithAccessor:completion:]";
    v16 = 2080;
    v17 = "FCFileCoordinatedTodayDropbox.m";
    v18 = 1024;
    v19 = 110;
    v20 = 2114;
    v21 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = [(FCFileCoordinatedTodayDropbox *)self fileCoordinatedDictionary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__FCFileCoordinatedTodayDropbox_depositWithAccessor_completion___block_invoke;
  v12[3] = &unk_1E7C38DB0;
  v13 = v6;
  v9 = v6;
  [v8 writeWithAccessor:v12 completion:v7];

  v10 = *MEMORY[0x1E69E9840];
}

void __64__FCFileCoordinatedTodayDropbox_depositWithAccessor_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[FCMutableTodayPrivateData alloc] initWithDictionary:v3];

  (*(v2 + 16))(v2, v4);
}

@end