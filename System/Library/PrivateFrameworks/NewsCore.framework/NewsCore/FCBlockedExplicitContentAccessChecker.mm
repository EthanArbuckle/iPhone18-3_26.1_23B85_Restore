@interface FCBlockedExplicitContentAccessChecker
- (BOOL)canSynchronouslyCheckAccessToItem:(id)a3;
- (BOOL)hasAccessToItem:(id)a3 blockedReason:(unint64_t *)a4 error:(id *)a5;
- (FCBlockedExplicitContentAccessChecker)init;
@end

@implementation FCBlockedExplicitContentAccessChecker

- (FCBlockedExplicitContentAccessChecker)init
{
  v3.receiver = self;
  v3.super_class = FCBlockedExplicitContentAccessChecker;
  return [(FCAccessChecker *)&v3 init];
}

- (BOOL)canSynchronouslyCheckAccessToItem:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v8 = "[FCBlockedExplicitContentAccessChecker canSynchronouslyCheckAccessToItem:]";
    v9 = 2080;
    v10 = "FCBlockedExplicitContentAccessChecker.m";
    v11 = 1024;
    v12 = 21;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)hasAccessToItem:(id)a3 blockedReason:(unint64_t *)a4 error:(id *)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v16 = "[FCBlockedExplicitContentAccessChecker hasAccessToItem:blockedReason:error:]";
    v17 = 2080;
    v18 = "FCBlockedExplicitContentAccessChecker.m";
    v19 = 1024;
    v20 = 29;
    v21 = 2114;
    v22 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = [v6 isBlockedExplicitContent];
  v8 = v7;
  if (a4)
  {
    if (v7)
    {
      *a4 = 3;
      v9 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [v6 identifier];
        *buf = 138543362;
        v16 = v11;
        _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "item %{public}@ is not accessible because it contains explicit content", buf, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8 ^ 1;
}

@end