@interface _DASSubmissionRateLimiter
+ (id)sharedLimiter;
- (BOOL)limitedActivity:(id)activity withLimitsResponses:(id)responses;
- (BOOL)limitsApplyToActivity:(id)activity;
- (BOOL)trackActivity:(id)activity;
- (_DASSubmissionRateLimiter)init;
- (id)shouldLimitActivityAtSubmission:(id)submission;
- (void)addToPenaltyBox:(id)box;
- (void)addToTracker:(id)tracker;
- (void)init;
- (void)removeAll;
- (void)removeAllFromActivityTracker;
- (void)timerHandler;
@end

@implementation _DASSubmissionRateLimiter

+ (id)sharedLimiter
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___DASSubmissionRateLimiter_sharedLimiter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedLimiter_onceToken != -1)
  {
    dispatch_once(&sharedLimiter_onceToken, block);
  }

  v2 = sharedLimiter_limitation;

  return v2;
}

- (_DASSubmissionRateLimiter)init
{
  v33.receiver = self;
  v33.super_class = _DASSubmissionRateLimiter;
  v2 = [(_DASSubmissionRateLimiter *)&v33 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_limitationName, @"ActivityRate");
    v4 = [MEMORY[0x1E696AB50] set];
    submittedActivityTracker = v3->_submittedActivityTracker;
    v3->_submittedActivityTracker = v4;

    v6 = [MEMORY[0x1E696AB50] set];
    penaltyTracker = v3->_penaltyTracker;
    v3->_penaltyTracker = v6;

    v3->_minorPenaltyTimerCount = 0;
    v3->_majorPenaltyTimerCount = 0;
    minorPenaltyActivities = v3->_minorPenaltyActivities;
    v3->_minorPenaltyActivities = 0;

    majorPenaltyActivities = v3->_majorPenaltyActivities;
    v3->_majorPenaltyActivities = 0;

    v10 = os_log_create("com.apple.duetactivityscheduler", "activityRateLimiter");
    log = v3->_log;
    v3->_log = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.dasd.overrideQueue", v12);
    queue = v3->_queue;
    v3->_queue = v13;

    v3->_token = -1;
    v15 = v3->_queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __33___DASSubmissionRateLimiter_init__block_invoke;
    handler[3] = &unk_1E7C8F0D8;
    v16 = v3;
    v32 = v16;
    notify_register_dispatch("com.apple.dasd.overrideSubmissionLimits", &v3->_token, v15, handler);
    state64 = 0;
    state = notify_get_state([(_DASSubmissionRateLimiter *)v16 token], &state64);
    v18 = [(_DASSubmissionRateLimiter *)v16 log];
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
    if (state)
    {
      if (v19)
      {
        [(_DASSubmissionRateLimiter *)state init];
      }

      v20 = 0;
    }

    else
    {
      if (v19)
      {
        [(_DASSubmissionRateLimiter *)&state64 init];
      }

      v20 = state64 != 0;
    }

    [(_DASSubmissionRateLimiter *)v16 setTesting:v20];
    v16->_penaltyLock._os_unfair_lock_opaque = 0;
    v21 = dispatch_get_global_queue(-32768, 0);
    v22 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v21);
    submissionTimer = v16->_submissionTimer;
    v16->_submissionTimer = v22;

    v24 = v16->_submissionTimer;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __33___DASSubmissionRateLimiter_init__block_invoke_6;
    v28[3] = &unk_1E7C8F0B0;
    v29 = v16;
    dispatch_source_set_event_handler(v24, v28);
    v25 = v16->_submissionTimer;
    v26 = dispatch_walltime(0, 1800000000000);
    dispatch_source_set_timer(v25, v26, 0x1A3185C5000uLL, 0xDF8475800uLL);
    dispatch_activate(v16->_submissionTimer);
  }

  return v3;
}

- (void)timerHandler
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(self + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1B6E2F000, a2, OS_LOG_TYPE_DEBUG, "Removing all from penalty tracker %@ ", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)removeAllFromActivityTracker
{
  obj = self->_submittedActivityTracker;
  objc_sync_enter(obj);
  [(NSCountedSet *)self->_submittedActivityTracker removeAllObjects];
  objc_sync_exit(obj);
}

- (BOOL)limitsApplyToActivity:(id)activity
{
  activityCopy = activity;
  schedulingPriority = [activityCopy schedulingPriority];
  if (schedulingPriority > _DASSchedulingPriorityDefault)
  {
    goto LABEL_11;
  }

  groupName = [activityCopy groupName];
  if (groupName)
  {
    v6 = groupName;
    isPartOfCustomGroup = [activityCopy isPartOfCustomGroup];

    if (isPartOfCustomGroup)
    {
      goto LABEL_11;
    }
  }

  rateLimitConfigurationName = [activityCopy rateLimitConfigurationName];
  v9 = [rateLimitConfigurationName isEqualToString:@"CloudKitConfiguration"];

  if (v9)
  {
    goto LABEL_11;
  }

  rateLimitConfigurationName2 = [activityCopy rateLimitConfigurationName];
  v11 = [rateLimitConfigurationName2 isEqualToString:@"PECConfiguration"];

  if (v11)
  {
    goto LABEL_11;
  }

  rateLimitConfigurationName3 = [activityCopy rateLimitConfigurationName];
  v13 = [rateLimitConfigurationName3 isEqualToString:@"BirdConfiguration"];

  if (v13)
  {
    goto LABEL_11;
  }

  v14 = +[_DASPlistParser sharedInstance];
  v15 = [v14 containsOverrideForActivity:activityCopy withLimitation:@"ActivityRate"];

  if (v15)
  {
    goto LABEL_11;
  }

  name = [activityCopy name];

  if (name)
  {
    userInfo = [activityCopy userInfo];
    v18 = [userInfo objectForKeyedSubscript:@"com.apple.das.overrideRateLimiting"];
    bOOLValue = [v18 BOOLValue];

    if (bOOLValue & 1) != 0 || ([activityCopy userInfo], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "objectForKeyedSubscript:", @"com.apple.das.overrideRateLimiting"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "BOOLValue"), v21, v20, (v22))
    {
LABEL_11:
      LOBYTE(name) = 0;
      goto LABEL_12;
    }

    if ([activityCopy requestsApplicationLaunch])
    {
      name = [activityCopy launchReason];
      v24 = [name isEqualToString:@"com.apple.das.launchreason.push"];

      LOBYTE(name) = v24 ^ 1;
    }

    else
    {
      LOBYTE(name) = 1;
    }
  }

LABEL_12:

  return name & 1;
}

- (void)removeAll
{
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [_DASSubmissionRateLimiter removeAll];
  }

  [(_DASSubmissionRateLimiter *)self removeAllFromActivityTracker];
  os_unfair_lock_lock(&self->_penaltyLock);
  [(NSCountedSet *)self->_penaltyTracker removeAllObjects];
  [(NSMutableArray *)self->_majorPenaltyActivities removeAllObjects];
  [(NSMutableArray *)self->_minorPenaltyActivities removeAllObjects];
  os_unfair_lock_unlock(&self->_penaltyLock);
}

- (void)addToTracker:(id)tracker
{
  trackerCopy = tracker;
  if ([(_DASSubmissionRateLimiter *)self limitsApplyToActivity:?])
  {
    v4 = self->_submittedActivityTracker;
    objc_sync_enter(v4);
    submittedActivityTracker = self->_submittedActivityTracker;
    name = [trackerCopy name];
    [(NSCountedSet *)submittedActivityTracker addObject:name];

    objc_sync_exit(v4);
    [(_DASSubmissionRateLimiter *)self addToPenaltyBox:trackerCopy];
  }
}

- (void)addToPenaltyBox:(id)box
{
  v55 = *MEMORY[0x1E69E9840];
  boxCopy = box;
  if (![(_DASSubmissionRateLimiter *)self limitsApplyToActivity:boxCopy])
  {
    goto LABEL_42;
  }

  os_unfair_lock_lock(&self->_penaltyLock);
  minorPenaltyActivities = self->_minorPenaltyActivities;
  if (minorPenaltyActivities)
  {
    name = [boxCopy name];
    v7 = [(NSMutableArray *)minorPenaltyActivities containsObject:name];
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_penaltyLock);
  name6 = self->_submittedActivityTracker;
  objc_sync_enter(name6);
  if (v7)
  {
    penaltyTracker = self->_penaltyTracker;
    name2 = [boxCopy name];
    v11 = [(NSCountedSet *)penaltyTracker countForObject:name2];

    if (v11 >= 0x13)
    {
      os_unfair_lock_lock(&self->_penaltyLock);
      majorPenaltyActivities = self->_majorPenaltyActivities;
      if (!majorPenaltyActivities)
      {
        array = [MEMORY[0x1E695DF70] array];
        v14 = self->_majorPenaltyActivities;
        self->_majorPenaltyActivities = array;

        majorPenaltyActivities = self->_majorPenaltyActivities;
      }

      name3 = [boxCopy name];
      [(NSMutableArray *)majorPenaltyActivities addObject:name3];

      v16 = self->_minorPenaltyActivities;
      name4 = [boxCopy name];
      [(NSMutableArray *)v16 removeObject:name4];

      os_unfair_lock_unlock(&self->_penaltyLock);
      v18 = self->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        name5 = [boxCopy name];
        v51 = 138412290;
        v52 = name5;
        _os_log_impl(&dword_1B6E2F000, v18, OS_LOG_TYPE_DEFAULT, "%@ added to major penalty", &v51, 0xCu);
      }
    }
  }

  objc_sync_exit(name6);

  os_unfair_lock_lock(&self->_penaltyLock);
  v20 = self->_minorPenaltyActivities;
  if (v20)
  {
    name6 = [boxCopy name];
    if (([(NSMutableArray *)v20 containsObject:name6]& 1) != 0)
    {
      v21 = 1;
LABEL_22:

      goto LABEL_23;
    }

    v22 = self->_majorPenaltyActivities;
    if (!v22)
    {
      v21 = 0;
      goto LABEL_22;
    }

LABEL_18:
    v23 = v20 == 0;
    name7 = [boxCopy name];
    v21 = [(NSMutableArray *)v22 containsObject:name7];

    if (v23)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v22 = self->_majorPenaltyActivities;
  if (v22)
  {
    goto LABEL_18;
  }

  v21 = 0;
LABEL_23:
  os_unfair_lock_unlock(&self->_penaltyLock);
  v25 = self->_submittedActivityTracker;
  objc_sync_enter(v25);
  if ([boxCopy isIntensive] && (objc_msgSend(boxCopy, "requiresPlugin") & 1) != 0)
  {
    v26 = 2;
    if (v21)
    {
      goto LABEL_34;
    }

LABEL_28:
    submittedActivityTracker = self->_submittedActivityTracker;
    name8 = [boxCopy name];
    LODWORD(submittedActivityTracker) = [(NSCountedSet *)submittedActivityTracker countForObject:name8]> v26;

    if (submittedActivityTracker)
    {
      os_unfair_lock_lock(&self->_penaltyLock);
      v29 = self->_minorPenaltyActivities;
      if (!v29)
      {
        array2 = [MEMORY[0x1E695DF70] array];
        v31 = self->_minorPenaltyActivities;
        self->_minorPenaltyActivities = array2;

        v29 = self->_minorPenaltyActivities;
      }

      name9 = [boxCopy name];
      [(NSMutableArray *)v29 addObject:name9];

      os_unfair_lock_unlock(&self->_penaltyLock);
      v33 = self->_log;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        name10 = [boxCopy name];
        v51 = 138412290;
        v52 = name10;
        _os_log_impl(&dword_1B6E2F000, v33, OS_LOG_TYPE_DEFAULT, "%@ added to minor penalty", &v51, 0xCu);
      }
    }

    goto LABEL_34;
  }

  v26 = 6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_34:
  objc_sync_exit(v25);

  v35 = [(_DASSubmissionRateLimiter *)self shouldLimitActivityAtSubmission:boxCopy];
  if ([_DASLimiterResponse queryActivityDecision:2 fromResponses:v35])
  {
    v36 = [v35 objectAtIndexedSubscript:0];
    [v36 validityDuration];
    v38 = v37;
    v39 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:?];
    startAfter = [boxCopy startAfter];
    v41 = startAfter;
    if (!startAfter || ([startAfter earlierDate:v39], v42 = objc_claimAutoreleasedReturnValue(), v43 = v42 == v41, v42, v43))
    {
      [boxCopy setStartAfter:v39];
    }

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v45 = MEMORY[0x1E696AD98];
      v46 = log;
      v47 = [v45 numberWithDouble:v38 / 60.0];
      v51 = 138412546;
      v52 = boxCopy;
      v53 = 2112;
      v54 = v47;
      _os_log_impl(&dword_1B6E2F000, v46, OS_LOG_TYPE_DEFAULT, "%@ is rate limited by submission rate limiter by %@ min from now", &v51, 0x16u);
    }

    os_unfair_lock_lock(&self->_penaltyLock);
    v48 = self->_penaltyTracker;
    name11 = [boxCopy name];
    [(NSCountedSet *)v48 addObject:name11];

    os_unfair_lock_unlock(&self->_penaltyLock);
    [(_DASSubmissionRateLimiter *)self limitedActivity:boxCopy withLimitsResponses:v35];
  }

LABEL_42:
  v50 = *MEMORY[0x1E69E9840];
}

- (BOOL)trackActivity:(id)activity
{
  activityCopy = activity;
  v5 = [(_DASSubmissionRateLimiter *)self limitsApplyToActivity:activityCopy];
  if (v5)
  {
    [(_DASSubmissionRateLimiter *)self addToTracker:activityCopy];
  }

  return v5;
}

- (id)shouldLimitActivityAtSubmission:(id)submission
{
  v25[1] = *MEMORY[0x1E69E9840];
  submissionCopy = submission;
  if (![(_DASSubmissionRateLimiter *)self limitsApplyToActivity:submissionCopy])
  {
    v11 = 0;
    goto LABEL_26;
  }

  os_unfair_lock_lock(&self->_penaltyLock);
  minorPenaltyActivities = self->_minorPenaltyActivities;
  if (minorPenaltyActivities && ([submissionCopy name], v6 = objc_claimAutoreleasedReturnValue(), v7 = -[NSMutableArray containsObject:](minorPenaltyActivities, "containsObject:", v6), v6, (v7 & 1) != 0))
  {
    majorPenaltyActivities = self->_majorPenaltyActivities;
    if (!majorPenaltyActivities)
    {
      os_unfair_lock_unlock(&self->_penaltyLock);
      v14 = @"Submitted > 6x in 30 min";
      v15 = 1800.0;
LABEL_20:
      if (self->_testing)
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = submissionCopy;
          _os_log_impl(&dword_1B6E2F000, log, OS_LOG_TYPE_DEFAULT, "Overriding submission rate limits for activity %@", buf, 0xCu);
        }

        v16 = [_DASLimiterResponse limitResponseWithDecision:0 withLimiter:@"ActivityRate" validityDuration:0 rationale:0.0];
        v22 = v16;
        v17 = &v22;
      }

      else
      {
        v16 = [_DASLimiterResponse limitResponseWithDecision:2 withLimiter:@"ActivityRate" validityDuration:v14 rationale:v15];
        v21 = v16;
        v17 = &v21;
      }

      goto LABEL_25;
    }

    v9 = @"Submitted > 6x in 30 min";
    v10 = 1;
  }

  else
  {
    majorPenaltyActivities = self->_majorPenaltyActivities;
    if (!majorPenaltyActivities)
    {
      os_unfair_lock_unlock(&self->_penaltyLock);
      goto LABEL_18;
    }

    v10 = 0;
    v9 = &stru_1F2EC9F10;
  }

  name = [submissionCopy name];
  v13 = [(NSMutableArray *)majorPenaltyActivities containsObject:name];

  os_unfair_lock_unlock(&self->_penaltyLock);
  if (v13)
  {
    v14 = @"Submitted > 18x in 2 hrs";
  }

  else
  {
    v14 = v9;
  }

  v15 = 1800.0;
  if (v13)
  {
    v15 = 7200.0;
  }

  if (v13 & 1) != 0 || (v10)
  {
    goto LABEL_20;
  }

LABEL_18:
  v16 = [_DASLimiterResponse limitResponseWithDecision:0 withLimiter:@"ActivityRate" validityDuration:0 rationale:0.0];
  v25[0] = v16;
  v17 = v25;
LABEL_25:
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:{1, v21, v22}];

LABEL_26:
  v19 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)limitedActivity:(id)activity withLimitsResponses:(id)responses
{
  activityCopy = activity;
  responsesCopy = responses;
  if ([(_DASSubmissionRateLimiter *)self limitsApplyToActivity:activityCopy]&& [_DASLimiterResponse queryActivityDecision:2 fromResponses:responsesCopy])
  {
    [_DASLimiterResponse updateActivity:activityCopy withLimitResponse:responsesCopy];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)init
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*self];
  OUTLINED_FUNCTION_1(&dword_1B6E2F000, v2, v3, "Initialized testing state to %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end