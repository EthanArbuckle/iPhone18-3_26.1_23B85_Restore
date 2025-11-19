@interface FCNewsVersionAccessChecker
- (BOOL)canSynchronouslyCheckAccessToItem:(id)a3;
- (BOOL)hasAccessToItem:(id)a3 blockedReason:(unint64_t *)a4 error:(id *)a5;
- (FCNewsVersionAccessChecker)init;
@end

@implementation FCNewsVersionAccessChecker

- (FCNewsVersionAccessChecker)init
{
  v3.receiver = self;
  v3.super_class = FCNewsVersionAccessChecker;
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
    v8 = "[FCNewsVersionAccessChecker canSynchronouslyCheckAccessToItem:]";
    v9 = 2080;
    v10 = "FCNewsVersionAccessChecker.m";
    v11 = 1024;
    v12 = 23;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)hasAccessToItem:(id)a3 blockedReason:(unint64_t *)a4 error:(id *)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v17 = "[FCNewsVersionAccessChecker hasAccessToItem:blockedReason:error:]";
    v18 = 2080;
    v19 = "FCNewsVersionAccessChecker.m";
    v20 = 1024;
    v21 = 31;
    v22 = 2114;
    v23 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = +[FCRestrictions sharedInstance];
  v8 = [v7 isNewsVersionAllowed:{objc_msgSend(v6, "minimumNewsVersion")}];

  if (a4)
  {
    if ((v8 & 1) == 0)
    {
      *a4 = 1;
      v9 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [v6 identifier];
        v12 = [v6 minimumNewsVersion];
        *buf = 138543618;
        v17 = v11;
        v18 = 2048;
        v19 = v12;
        _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "item %{public}@ is not accessible because it requires minimum News version %llu", buf, 0x16u);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

@end