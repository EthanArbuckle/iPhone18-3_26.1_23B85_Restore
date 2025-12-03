@interface FCAccessChecker
- (BOOL)canSynchronouslyCheckAccessToItem:(id)item;
- (BOOL)hasAccessToItem:(id)item blockedReason:(unint64_t *)reason error:(id *)error;
- (FCAccessChecker)init;
- (void)checkAccessToItem:(id)item withQualityOfService:(int64_t)service completion:(id)completion;
@end

@implementation FCAccessChecker

- (FCAccessChecker)init
{
  v3.receiver = self;
  v3.super_class = FCAccessChecker;
  return [(FCAccessChecker *)&v3 init];
}

- (BOOL)canSynchronouslyCheckAccessToItem:(id)item
{
  v18 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v11 = "[FCAccessChecker canSynchronouslyCheckAccessToItem:]";
    v12 = 2080;
    v13 = "FCAccessChecker.m";
    v14 = 1024;
    v15 = 49;
    v16 = 2114;
    v17 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCAccessChecker canSynchronouslyCheckAccessToItem:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (BOOL)hasAccessToItem:(id)item blockedReason:(unint64_t *)reason error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v13 = "[FCAccessChecker hasAccessToItem:blockedReason:error:]";
    v14 = 2080;
    v15 = "FCAccessChecker.m";
    v16 = 1024;
    v17 = 56;
    v18 = 2114;
    v19 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCAccessChecker hasAccessToItem:blockedReason:error:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)checkAccessToItem:(id)item withQualityOfService:(int64_t)service completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    *&buf[4] = "[FCAccessChecker checkAccessToItem:withQualityOfService:completion:]";
    v15 = 2080;
    v16 = "FCAccessChecker.m";
    v17 = 1024;
    v18 = 63;
    v19 = 2114;
    v20 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (completionCopy)
    {
      goto LABEL_6;
    }
  }

  else if (completionCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion != nil"];
    *buf = 136315906;
    *&buf[4] = "[FCAccessChecker checkAccessToItem:withQualityOfService:completion:]";
    v15 = 2080;
    v16 = "FCAccessChecker.m";
    v17 = 1024;
    v18 = 64;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v13 = 0;
  *buf = 0;
  v9 = [(FCAccessChecker *)self hasAccessToItem:itemCopy blockedReason:&v13 error:buf];
  completionCopy[2](completionCopy, v9, v13, *buf);

  v10 = *MEMORY[0x1E69E9840];
}

@end