@interface _DASSubmissionManager
+ (id)groupNameForActivity:(id)a3;
- (BOOL)shouldDelayGroupSubmissionOfActivity:(id)a3;
- (_DASSubmissionManager)init;
- (unint64_t)capacityForGroupName:(id)a3;
- (void)activityCanceled:(id)a3 withScheduler:(id)a4;
- (void)admitNextActivityAfterCompletionOf:(id)a3 withScheduler:(id)a4;
- (void)createActivityGroup:(id)a3;
- (void)dealloc;
- (void)handleCanceledActivity:(id)a3 withGroupName:(id)a4;
- (void)removeAllObjects;
- (void)submitActivities:(id)a3 withScheduler:(id)a4;
- (void)submitActivity:(id)a3 inGroup:(id)a4 withScheduler:(id)a5;
- (void)submitActivity:(id)a3 withScheduler:(id)a4;
- (void)updateCapacity:(unint64_t)a3 forGroupName:(id)a4;
@end

@implementation _DASSubmissionManager

- (_DASSubmissionManager)init
{
  v17.receiver = self;
  v17.super_class = _DASSubmissionManager;
  v2 = [(_DASSubmissionManager *)&v17 init];
  if (v2)
  {
    v3 = +[_DASSubmissionRateLimiter sharedLimiter];
    rateLimiter = v2->_rateLimiter;
    v2->_rateLimiter = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    submittedActivities = v2->_submittedActivities;
    v2->_submittedActivities = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    activityGroupQueue = v2->_activityGroupQueue;
    v2->_activityGroupQueue = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    activityGroups = v2->_activityGroups;
    v2->_activityGroups = v9;

    v11 = os_log_create("com.apple.duetactivityscheduler", "submissionManager");
    log = v2->_log;
    v2->_log = v11;

    v13 = dispatch_get_global_queue(-32768, 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __29___DASSubmissionManager_init__block_invoke;
    handler[3] = &unk_1E7C8F0D8;
    v16 = v2;
    notify_register_dispatch("com.apple.dasd.dastool.list", &v2->_dastoolToken, v13, handler);
  }

  return v2;
}

- (void)dealloc
{
  dastoolToken = self->_dastoolToken;
  if (dastoolToken)
  {
    notify_cancel(dastoolToken);
  }

  v4.receiver = self;
  v4.super_class = _DASSubmissionManager;
  [(_DASSubmissionManager *)&v4 dealloc];
}

- (void)removeAllObjects
{
  [(_DASSubmissionRateLimiter *)self->_rateLimiter removeAll];
  obj = self->_activityGroupQueue;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)self->_submittedActivities removeAllObjects];
  [(NSMutableDictionary *)self->_activityGroupQueue removeAllObjects];
  objc_sync_exit(obj);
}

+ (id)groupNameForActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 groupName];
  if (v4)
  {
    if ([v3 requiresPlugin])
    {
      v5 = [objc_opt_class() pluginGroupNameForGroupName:v4];
    }

    else
    {
      v5 = v4;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateCapacity:(unint64_t)a3 forGroupName:(id)a4
{
  v11 = a4;
  if (v11)
  {
    v6 = self->_activityGroups;
    objc_sync_enter(v6);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)self->_activityGroups setObject:v7 forKeyedSubscript:v11];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    activityGroups = self->_activityGroups;
    v10 = [objc_opt_class() pluginGroupNameForGroupName:v11];
    [(NSMutableDictionary *)activityGroups setObject:v8 forKeyedSubscript:v10];

    objc_sync_exit(v6);
  }
}

- (unint64_t)capacityForGroupName:(id)a3
{
  v4 = a3;
  v5 = self->_activityGroups;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_activityGroups objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedIntegerValue];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      [(_DASSubmissionManager *)v4 capacityForGroupName:?];
    }

    v8 = 15;
  }

  objc_sync_exit(v5);
  return v8;
}

- (BOOL)shouldDelayGroupSubmissionOfActivity:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 rateLimitConfigurationName];

  if (!v5)
  {
    v7 = [objc_opt_class() groupNameForActivity:v4];
    if (!v7 || ![v4 isPartOfCustomGroup])
    {
      goto LABEL_11;
    }

    v8 = [objc_opt_class() pluginGroupNameForGroupName:_DASDefaultGroupName];
    if (![v7 isEqualToString:v8])
    {
      v9 = [objc_opt_class() pluginGroupNameForGroupName:_DASDefaultNetworkGroupName];
      if (![v7 isEqualToString:v9])
      {
        v10 = [objc_opt_class() pluginGroupNameForGroupName:_DASDefaultIntensiveGroupName];
        if (![v7 isEqualToString:v10])
        {
          v13 = [objc_opt_class() pluginGroupNameForGroupName:_DASDefaultRemoteGroupName];
          v14 = [v7 isEqualToString:v13];

          if ((v14 & 1) == 0)
          {
            v15 = [(_DASSubmissionManager *)self capacityForGroupName:v7];
            v16 = self->_activityGroupQueue;
            objc_sync_enter(v16);
            v17 = [(NSMutableDictionary *)self->_submittedActivities objectForKeyedSubscript:v7];
            v18 = v17;
            if (v17)
            {
              v19 = [v17 count];
              if ([(_DASSubmissionManager *)self shouldQueueActivity:v4]&& v19 >= v15 && v19 >= 0xF)
              {
                v20 = [(NSMutableDictionary *)self->_activityGroupQueue objectForKeyedSubscript:v7];
                if (!v20)
                {
                  v20 = +[_DASPriorityQueue priorityQueue];
                  [(NSMutableDictionary *)self->_activityGroupQueue setObject:v20 forKeyedSubscript:v7];
                }

                -[NSObject addObject:withPriority:](v20, "addObject:withPriority:", v4, [v4 schedulingPriority]);
                v21 = self->_log;
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSObject count](v20, "count")}];
                  v26 = 138412546;
                  v27 = v7;
                  v28 = 2112;
                  v29 = v22;
                  _os_log_impl(&dword_1B6E2F000, v21, OS_LOG_TYPE_DEFAULT, "Group %@ has %@ activities queued in framework", &v26, 0x16u);
                }

                v23 = 1;
              }

              else
              {
                [v18 addObject:v4];
                v20 = self->_log;
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
                  v26 = 138412546;
                  v27 = v24;
                  v28 = 2112;
                  v29 = v7;
                  _os_log_impl(&dword_1B6E2F000, v20, OS_LOG_TYPE_DEFAULT, "Have submitted to daemon %@ activities in group %@", &v26, 0x16u);
                }

                v23 = 0;
              }

              v25 = v18;
            }

            else
            {
              v25 = [MEMORY[0x1E695DFA8] setWithObject:v4];
              [(NSMutableDictionary *)self->_submittedActivities setObject:v25 forKeyedSubscript:v7];
              v23 = 0;
            }

            objc_sync_exit(v16);
            v6 = (v18 != 0) & v23;
            goto LABEL_12;
          }

LABEL_11:
          v6 = 0;
LABEL_12:

          goto LABEL_13;
        }
      }
    }

    goto LABEL_11;
  }

  v6 = 0;
LABEL_13:

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)handleCanceledActivity:(id)a3 withGroupName:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self->_activityGroupQueue;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_activityGroupQueue objectForKeyedSubscript:v6];
  [v8 removeObject:v9 atPriority:{objc_msgSend(v9, "schedulingPriority")}];

  objc_sync_exit(v7);
}

- (void)admitNextActivityAfterCompletionOf:(id)a3 withScheduler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() groupNameForActivity:v6];
  if (v8)
  {
    v9 = self->_activityGroupQueue;
    objc_sync_enter(v9);
    v10 = [(NSMutableDictionary *)self->_submittedActivities objectForKeyedSubscript:v8];
    [v10 removeObject:v6];

    v11 = [(NSMutableDictionary *)self->_activityGroupQueue objectForKeyedSubscript:v8];
    v12 = [v11 popFirst];
    if (v12)
    {
      v13 = [(NSMutableDictionary *)self->_submittedActivities objectForKeyedSubscript:v8];
      [v13 addObject:v12];

      objc_sync_exit(v9);
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = v12;
        _os_log_impl(&dword_1B6E2F000, log, OS_LOG_TYPE_INFO, "ADMITTING delayed activity %@", &v16, 0xCu);
      }

      [v7 submitActivity:v12 inGroupWithName:v8];
    }

    else
    {

      objc_sync_exit(v9);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)createActivityGroup:(id)a3
{
  v4 = a3;
  v5 = [v4 maxConcurrent];
  v6 = [v4 name];

  [(_DASSubmissionManager *)self updateCapacity:v5 forGroupName:v6];
}

- (void)submitActivity:(id)a3 withScheduler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(_DASSubmissionRateLimiter *)self->_rateLimiter trackActivity:v6]|| ![(_DASSubmissionManager *)self shouldDelayGroupSubmissionOfActivity:v6])
  {
    [v7 submitActivity:v6];
  }

  else
  {
    v8 = [objc_opt_class() groupNameForActivity:v6];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = log;
      v11 = [v6 shortDescription];
      v13 = 138543874;
      v14 = v6;
      v15 = 2112;
      v16 = v11;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_1B6E2F000, v10, OS_LOG_TYPE_DEFAULT, "Delaying submission of %{public}@ %@, group %{public}@ full", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)submitActivities:(id)a3 withScheduler:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18 = a4;
  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_4];
  v19 = v6;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if ([(_DASSubmissionManager *)self shouldDelayGroupSubmissionOfActivity:v14])
        {
          v15 = [objc_opt_class() groupNameForActivity:v14];
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v25 = v14;
            v26 = 2114;
            v27 = v15;
            _os_log_impl(&dword_1B6E2F000, log, OS_LOG_TYPE_INFO, "Delaying submission of %{public}@, group %{public}@ full", buf, 0x16u);
          }
        }

        else
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v11);
  }

  [v18 submitActivities:v8];
  v17 = *MEMORY[0x1E69E9840];
}

- (void)submitActivity:(id)a3 inGroup:(id)a4 withScheduler:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 maxConcurrent];
  v12 = [v9 name];
  [(_DASSubmissionManager *)self updateCapacity:v11 forGroupName:v12];

  if ([(_DASSubmissionManager *)self shouldDelayGroupSubmissionOfActivity:v8])
  {
    v13 = [objc_opt_class() groupNameForActivity:v8];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_1B6E2F000, log, OS_LOG_TYPE_DEFAULT, "Delaying submission of %{public}@, group %{public}@ full", &v16, 0x16u);
    }
  }

  else
  {
    [v10 submitActivity:v8 inGroup:v9];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)activityCanceled:(id)a3 withScheduler:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 groupName];

  if (v7)
  {
    v8 = [objc_opt_class() groupNameForActivity:v9];
    [(_DASSubmissionManager *)self handleCanceledActivity:v9 withGroupName:v8];

    [(_DASSubmissionManager *)self admitNextActivityAfterCompletionOf:v9 withScheduler:v6];
  }
}

- (void)capacityForGroupName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = &unk_1F2ED4A30;
  _os_log_debug_impl(&dword_1B6E2F000, a2, OS_LOG_TYPE_DEBUG, "Could not find group with name %@, using capacity %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end