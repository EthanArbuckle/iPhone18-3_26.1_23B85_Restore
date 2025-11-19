@interface FCKeyValueStoreSavePolicy
+ (id)appBackgroundPolicyWithActivityMonitor:(id)a3 backgroundTaskable:(id)a4;
+ (id)throttlePolicyWithDelay:(double)a3;
- (void)scheduleSaveOnQueue:(id)a3 handler:(id)a4;
@end

@implementation FCKeyValueStoreSavePolicy

+ (id)throttlePolicyWithDelay:(double)a3
{
  v3 = [[FCKeyValueStoreSavePolicyThrottle alloc] initWithDelay:a3];

  return v3;
}

+ (id)appBackgroundPolicyWithActivityMonitor:(id)a3 backgroundTaskable:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[FCKeyValueStoreSavePolicyAppBackground alloc] initWithActivityMonitor:v6 backgroundTaskable:v5];

  return v7;
}

- (void)scheduleSaveOnQueue:(id)a3 handler:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v14 = "[FCKeyValueStoreSavePolicy scheduleSaveOnQueue:handler:]";
    v15 = 2080;
    v16 = "FCKeyValueStoreSavePolicy.m";
    v17 = 1024;
    v18 = 47;
    v19 = 2114;
    v20 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCKeyValueStoreSavePolicy scheduleSaveOnQueue:handler:]"];
  v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

@end