@interface _DASSubmissionManager
+ (id)groupNameForActivity:(id)activity;
- (BOOL)shouldDelayGroupSubmissionOfActivity:(id)activity;
- (_DASSubmissionManager)init;
- (unint64_t)capacityForGroupName:(id)name;
- (void)activityCanceled:(id)canceled withScheduler:(id)scheduler;
- (void)admitNextActivityAfterCompletionOf:(id)of withScheduler:(id)scheduler;
- (void)createActivityGroup:(id)group;
- (void)dealloc;
- (void)handleCanceledActivity:(id)activity withGroupName:(id)name;
- (void)removeAllObjects;
- (void)submitActivities:(id)activities withScheduler:(id)scheduler;
- (void)submitActivity:(id)activity inGroup:(id)group withScheduler:(id)scheduler;
- (void)submitActivity:(id)activity withScheduler:(id)scheduler;
- (void)updateCapacity:(unint64_t)capacity forGroupName:(id)name;
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    submittedActivities = v2->_submittedActivities;
    v2->_submittedActivities = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    activityGroupQueue = v2->_activityGroupQueue;
    v2->_activityGroupQueue = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    activityGroups = v2->_activityGroups;
    v2->_activityGroups = dictionary3;

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

+ (id)groupNameForActivity:(id)activity
{
  activityCopy = activity;
  groupName = [activityCopy groupName];
  if (groupName)
  {
    if ([activityCopy requiresPlugin])
    {
      v5 = [objc_opt_class() pluginGroupNameForGroupName:groupName];
    }

    else
    {
      v5 = groupName;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateCapacity:(unint64_t)capacity forGroupName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v6 = self->_activityGroups;
    objc_sync_enter(v6);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:capacity];
    [(NSMutableDictionary *)self->_activityGroups setObject:v7 forKeyedSubscript:nameCopy];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:capacity];
    activityGroups = self->_activityGroups;
    v10 = [objc_opt_class() pluginGroupNameForGroupName:nameCopy];
    [(NSMutableDictionary *)activityGroups setObject:v8 forKeyedSubscript:v10];

    objc_sync_exit(v6);
  }
}

- (unint64_t)capacityForGroupName:(id)name
{
  nameCopy = name;
  v5 = self->_activityGroups;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_activityGroups objectForKeyedSubscript:nameCopy];
  v7 = v6;
  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      [(_DASSubmissionManager *)nameCopy capacityForGroupName:?];
    }

    unsignedIntegerValue = 15;
  }

  objc_sync_exit(v5);
  return unsignedIntegerValue;
}

- (BOOL)shouldDelayGroupSubmissionOfActivity:(id)activity
{
  v30 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  rateLimitConfigurationName = [activityCopy rateLimitConfigurationName];

  if (!rateLimitConfigurationName)
  {
    v7 = [objc_opt_class() groupNameForActivity:activityCopy];
    if (!v7 || ![activityCopy isPartOfCustomGroup])
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
              if ([(_DASSubmissionManager *)self shouldQueueActivity:activityCopy]&& v19 >= v15 && v19 >= 0xF)
              {
                v20 = [(NSMutableDictionary *)self->_activityGroupQueue objectForKeyedSubscript:v7];
                if (!v20)
                {
                  v20 = +[_DASPriorityQueue priorityQueue];
                  [(NSMutableDictionary *)self->_activityGroupQueue setObject:v20 forKeyedSubscript:v7];
                }

                -[NSObject addObject:withPriority:](v20, "addObject:withPriority:", activityCopy, [activityCopy schedulingPriority]);
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
                [v18 addObject:activityCopy];
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
              v25 = [MEMORY[0x1E695DFA8] setWithObject:activityCopy];
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

- (void)handleCanceledActivity:(id)activity withGroupName:(id)name
{
  activityCopy = activity;
  nameCopy = name;
  v7 = self->_activityGroupQueue;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_activityGroupQueue objectForKeyedSubscript:nameCopy];
  [v8 removeObject:activityCopy atPriority:{objc_msgSend(activityCopy, "schedulingPriority")}];

  objc_sync_exit(v7);
}

- (void)admitNextActivityAfterCompletionOf:(id)of withScheduler:(id)scheduler
{
  v18 = *MEMORY[0x1E69E9840];
  ofCopy = of;
  schedulerCopy = scheduler;
  v8 = [objc_opt_class() groupNameForActivity:ofCopy];
  if (v8)
  {
    v9 = self->_activityGroupQueue;
    objc_sync_enter(v9);
    v10 = [(NSMutableDictionary *)self->_submittedActivities objectForKeyedSubscript:v8];
    [v10 removeObject:ofCopy];

    v11 = [(NSMutableDictionary *)self->_activityGroupQueue objectForKeyedSubscript:v8];
    popFirst = [v11 popFirst];
    if (popFirst)
    {
      v13 = [(NSMutableDictionary *)self->_submittedActivities objectForKeyedSubscript:v8];
      [v13 addObject:popFirst];

      objc_sync_exit(v9);
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = popFirst;
        _os_log_impl(&dword_1B6E2F000, log, OS_LOG_TYPE_INFO, "ADMITTING delayed activity %@", &v16, 0xCu);
      }

      [schedulerCopy submitActivity:popFirst inGroupWithName:v8];
    }

    else
    {

      objc_sync_exit(v9);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)createActivityGroup:(id)group
{
  groupCopy = group;
  maxConcurrent = [groupCopy maxConcurrent];
  name = [groupCopy name];

  [(_DASSubmissionManager *)self updateCapacity:maxConcurrent forGroupName:name];
}

- (void)submitActivity:(id)activity withScheduler:(id)scheduler
{
  v19 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  schedulerCopy = scheduler;
  if ([(_DASSubmissionRateLimiter *)self->_rateLimiter trackActivity:activityCopy]|| ![(_DASSubmissionManager *)self shouldDelayGroupSubmissionOfActivity:activityCopy])
  {
    [schedulerCopy submitActivity:activityCopy];
  }

  else
  {
    v8 = [objc_opt_class() groupNameForActivity:activityCopy];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = log;
      shortDescription = [activityCopy shortDescription];
      v13 = 138543874;
      v14 = activityCopy;
      v15 = 2112;
      v16 = shortDescription;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_1B6E2F000, v10, OS_LOG_TYPE_DEFAULT, "Delaying submission of %{public}@ %@, group %{public}@ full", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)submitActivities:(id)activities withScheduler:(id)scheduler
{
  v29 = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  schedulerCopy = scheduler;
  v7 = [activitiesCopy sortedArrayUsingComparator:&__block_literal_global_4];
  v19 = activitiesCopy;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(activitiesCopy, "count")}];
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

  [schedulerCopy submitActivities:v8];
  v17 = *MEMORY[0x1E69E9840];
}

- (void)submitActivity:(id)activity inGroup:(id)group withScheduler:(id)scheduler
{
  v20 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  groupCopy = group;
  schedulerCopy = scheduler;
  maxConcurrent = [groupCopy maxConcurrent];
  name = [groupCopy name];
  [(_DASSubmissionManager *)self updateCapacity:maxConcurrent forGroupName:name];

  if ([(_DASSubmissionManager *)self shouldDelayGroupSubmissionOfActivity:activityCopy])
  {
    v13 = [objc_opt_class() groupNameForActivity:activityCopy];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      v17 = activityCopy;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_1B6E2F000, log, OS_LOG_TYPE_DEFAULT, "Delaying submission of %{public}@, group %{public}@ full", &v16, 0x16u);
    }
  }

  else
  {
    [schedulerCopy submitActivity:activityCopy inGroup:groupCopy];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)activityCanceled:(id)canceled withScheduler:(id)scheduler
{
  canceledCopy = canceled;
  schedulerCopy = scheduler;
  groupName = [canceledCopy groupName];

  if (groupName)
  {
    v8 = [objc_opt_class() groupNameForActivity:canceledCopy];
    [(_DASSubmissionManager *)self handleCanceledActivity:canceledCopy withGroupName:v8];

    [(_DASSubmissionManager *)self admitNextActivityAfterCompletionOf:canceledCopy withScheduler:schedulerCopy];
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