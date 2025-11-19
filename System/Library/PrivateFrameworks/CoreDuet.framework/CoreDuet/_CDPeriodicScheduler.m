@interface _CDPeriodicScheduler
+ (id)sharedInstance;
- (void)registerJob:(id)a3;
- (void)unregisterJob:(id)a3;
- (void)updateExecutionCriteriaOnJob:(id)a3;
@end

@implementation _CDPeriodicScheduler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[_CDPeriodicScheduler sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_2;

  return v3;
}

- (void)registerJob:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v3 jobName];
    v5 = MEMORY[0x1E696AD98];
    [v3 interval];
    v6 = [v5 numberWithDouble:?];
    *buf = 138412802;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Registered CTS job %@ %@ with interval of %@ seconds", buf, 0x20u);
  }

  v7 = [v3 jobName];
  v8 = [v7 UTF8String];
  v9 = *MEMORY[0x1E69E9C50];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __36___CDPeriodicScheduler_registerJob___block_invoke;
  handler[3] = &unk_1E7367648;
  v13 = v3;
  v10 = v3;
  xpc_activity_register(v8, v9, handler);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)unregisterJob:(id)a3
{
  v3 = [a3 UTF8String];

  xpc_activity_unregister(v3);
}

- (void)updateExecutionCriteriaOnJob:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 activity];
  v5 = v4;
  if (v4)
  {
    v6 = xpc_activity_copy_criteria(v4);
    v7 = [v3 executionCriteria];
    if (!v6 || !xpc_equal(v6, v7))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v3 jobName];
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Updating criteria on activity %@", &v10, 0xCu);
      }

      xpc_activity_set_criteria(v5, v7);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end