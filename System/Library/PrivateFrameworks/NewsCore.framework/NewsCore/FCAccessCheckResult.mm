@interface FCAccessCheckResult
- (FCAccessCheckResult)init;
- (FCAccessCheckResult)initWithCanAccess:(BOOL)access blockedReason:(unint64_t)reason;
@end

@implementation FCAccessCheckResult

- (FCAccessCheckResult)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCAccessCheckResult init]";
    v10 = 2080;
    v11 = "FCAccessChecker.m";
    v12 = 1024;
    v13 = 17;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCAccessCheckResult init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCAccessCheckResult)initWithCanAccess:(BOOL)access blockedReason:(unint64_t)reason
{
  v7.receiver = self;
  v7.super_class = FCAccessCheckResult;
  result = [(FCAccessCheckResult *)&v7 init];
  if (result)
  {
    result->_canAccess = access;
    result->_blockedReason = reason;
  }

  return result;
}

@end