@interface FCCommand
- (FCCommand)initWithCoder:(id)coder;
- (unint64_t)statusForCloudKitError:(id)error;
- (void)coalesceWithCommand:(id)command;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context delegate:(id)delegate qualityOfService:(int64_t)service;
@end

@implementation FCCommand

- (void)executeWithContext:(id)context delegate:(id)delegate qualityOfService:(int64_t)service
{
  v22 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  delegateCopy = delegate;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v15 = "[FCCommand executeWithContext:delegate:qualityOfService:]";
    v16 = 2080;
    v17 = "FCCommand.m";
    v18 = 1024;
    v19 = 46;
    v20 = 2114;
    v21 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v9 = MEMORY[0x1E695DF30];
  v10 = *MEMORY[0x1E695D930];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCCommand executeWithContext:delegate:qualityOfService:]"];
  v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

- (void)coalesceWithCommand:(id)command
{
  v18 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v11 = "[FCCommand coalesceWithCommand:]";
    v12 = 2080;
    v13 = "FCCommand.m";
    v14 = 1024;
    v15 = 56;
    v16 = 2114;
    v17 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCCommand coalesceWithCommand:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (unint64_t)statusForCloudKitError:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!errorCopy)
  {
    goto LABEL_13;
  }

  v4 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    v11 = v4;
    *v13 = 138543618;
    *&v13[4] = objc_opt_class();
    *&v13[12] = 2114;
    *&v13[14] = errorCopy;
    v12 = *&v13[4];
    _os_log_error_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_ERROR, "command type: %{public}@ encountered error: %{public}@", v13, 0x16u);
  }

  if ([errorCopy fc_hasIdentityStillSyncingError])
  {
    goto LABEL_5;
  }

  if ([errorCopy fc_hasErrorCode:40])
  {
LABEL_7:
    v5 = 3;
    goto LABEL_14;
  }

  domain = [errorCopy domain];
  v7 = [domain isEqualToString:*MEMORY[0x1E695B740]];

  if (v7)
  {
    code = [errorCopy code];
    if (code <= 0x1B)
    {
      if (((1 << code) & 0xA009002) != 0)
      {
        goto LABEL_7;
      }

      if (((1 << code) & 0x18) != 0)
      {
        v5 = 1;
        goto LABEL_14;
      }

      if (((1 << code) & 0x40004) == 0)
      {
        goto LABEL_5;
      }

LABEL_13:
      v5 = 0;
      goto LABEL_14;
    }
  }

LABEL_5:
  v5 = 2;
LABEL_14:

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (FCCommand)initWithCoder:(id)coder
{
  v18 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v11 = "[FCCommand initWithCoder:]";
    v12 = 2080;
    v13 = "FCCommand.m";
    v14 = 1024;
    v15 = 119;
    v16 = 2114;
    v17 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCCommand initWithCoder:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)encodeWithCoder:(id)coder
{
  v18 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v11 = "[FCCommand encodeWithCoder:]";
    v12 = 2080;
    v13 = "FCCommand.m";
    v14 = 1024;
    v15 = 124;
    v16 = 2114;
    v17 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCCommand encodeWithCoder:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

@end