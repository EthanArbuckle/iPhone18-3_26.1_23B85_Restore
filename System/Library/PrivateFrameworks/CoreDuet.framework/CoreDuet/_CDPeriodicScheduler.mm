@interface _CDPeriodicScheduler
+ (id)sharedInstance;
- (void)registerJob:(id)job;
- (void)unregisterJob:(id)job;
- (void)updateExecutionCriteriaOnJob:(id)job;
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

- (void)registerJob:(id)job
{
  v20 = *MEMORY[0x1E69E9840];
  jobCopy = job;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    jobName = [jobCopy jobName];
    v5 = MEMORY[0x1E696AD98];
    [jobCopy interval];
    v6 = [v5 numberWithDouble:?];
    *buf = 138412802;
    v15 = jobCopy;
    v16 = 2112;
    v17 = jobName;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Registered CTS job %@ %@ with interval of %@ seconds", buf, 0x20u);
  }

  jobName2 = [jobCopy jobName];
  uTF8String = [jobName2 UTF8String];
  v9 = *MEMORY[0x1E69E9C50];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __36___CDPeriodicScheduler_registerJob___block_invoke;
  handler[3] = &unk_1E7367648;
  v13 = jobCopy;
  v10 = jobCopy;
  xpc_activity_register(uTF8String, v9, handler);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)unregisterJob:(id)job
{
  uTF8String = [job UTF8String];

  xpc_activity_unregister(uTF8String);
}

- (void)updateExecutionCriteriaOnJob:(id)job
{
  v12 = *MEMORY[0x1E69E9840];
  jobCopy = job;
  activity = [jobCopy activity];
  v5 = activity;
  if (activity)
  {
    v6 = xpc_activity_copy_criteria(activity);
    executionCriteria = [jobCopy executionCriteria];
    if (!v6 || !xpc_equal(v6, executionCriteria))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        jobName = [jobCopy jobName];
        v10 = 138412290;
        v11 = jobName;
        _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Updating criteria on activity %@", &v10, 0xCu);
      }

      xpc_activity_set_criteria(v5, executionCriteria);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end