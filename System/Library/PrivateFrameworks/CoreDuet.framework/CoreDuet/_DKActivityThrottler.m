@interface _DKActivityThrottler
- (id)dateForKey:(uint64_t)a1;
- (id)description;
- (id)keyForName:(void *)a1;
- (uint64_t)_minimumIntervalScheduledActionsContainsActionName:(uint64_t)a1;
- (void)_minimumIntervalScheduledActionsAddActionName:(uint64_t)a1;
- (void)_minimumIntervalScheduledActionsRemoveActionName:(uint64_t)a1;
- (void)_performNoMoreOftenInSecondsThan:(void *)a3 name:(void *)a4 activityBlock:(double)a5 throttleBlock:;
- (void)_performOrScheduleWithTimeInterval:(void *)a3 name:(void *)a4 queue:(unint64_t)a5 activityBlock:(double)a6 callDepth:;
- (void)_performWithDelayInSecondsOf:(void *)a3 name:(void *)a4 queue:(double)a5 activityBlock:;
- (void)clearDateForKey:(uint64_t)a1;
- (void)clearHistoryForName:(void *)a1;
- (void)initWithStore:(void *)a1;
- (void)setDate:(void *)a3 forKey:;
@end

@implementation _DKActivityThrottler

- (void)_performNoMoreOftenInSecondsThan:(void *)a3 name:(void *)a4 activityBlock:(double)a5 throttleBlock:
{
  v18 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v11 = a1;
    objc_sync_enter(v11);
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_DKThrottledActivityLast%@ActivityDate", v18];
    v13 = [(_DKActivityThrottler *)v11 dateForKey:v12];
    v14 = v13;
    if (v13 && ([v13 timeIntervalSinceNow], v16 = v15, -v15 < a5))
    {

      objc_sync_exit(v11);
      if (v10)
      {
        v10[2](v10, v16 + a5);
      }
    }

    else
    {
      v17 = [MEMORY[0x1E695DF00] date];
      [(_DKActivityThrottler *)v11 setDate:v17 forKey:v12];

      objc_sync_exit(v11);
      if (v9)
      {
        v9[2](v9);
      }
    }
  }
}

- (void)_performOrScheduleWithTimeInterval:(void *)a3 name:(void *)a4 queue:(unint64_t)a5 activityBlock:(double)a6 callDepth:
{
  v41 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  if (a1)
  {
    v14 = a1;
    objc_sync_enter(v14);
    if (a5)
    {
      if (a5 >= 0xB)
      {
        v15 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
          [_DKActivityThrottler _performOrScheduleWithTimeInterval:v11 name:v17 queue:v40 activityBlock:? callDepth:?];
        }

        goto LABEL_14;
      }
    }

    else if ([(_DKActivityThrottler *)v14 _minimumIntervalScheduledActionsContainsActionName:v11])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [_DKActivityThrottler _performOrScheduleWithTimeInterval:v11 name:? queue:? activityBlock:? callDepth:?];
      }

      goto LABEL_14;
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __94___DKActivityThrottler__performOrScheduleWithTimeInterval_name_queue_activityBlock_callDepth___block_invoke;
    v34[3] = &unk_1E7369A10;
    v34[4] = v14;
    v18 = v11;
    v35 = v18;
    v38 = a6;
    v19 = v12;
    v36 = v19;
    v20 = v13;
    v37 = v20;
    v39 = a5;
    v21 = MEMORY[0x193B00C50](v34);
    [(_DKActivityThrottler *)v14 _minimumIntervalScheduledActionsAddActionName:v18];
    v22 = dispatch_get_current_queue();
    v23 = v22 == v19;

    if (v23)
    {
      [(_DKActivityThrottler *)v14 _performNoMoreOftenInSecondsThan:v18 name:v20 activityBlock:v21 throttleBlock:a6];
      [(_DKActivityThrottler *)v14 _minimumIntervalScheduledActionsRemoveActionName:v18];
    }

    else
    {
      v24 = v18;
      [v18 UTF8String];
      v25 = os_transaction_create();
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __94___DKActivityThrottler__performOrScheduleWithTimeInterval_name_queue_activityBlock_callDepth___block_invoke_2;
      v28[3] = &unk_1E73699C0;
      v28[4] = v14;
      v33 = a6;
      v29 = v18;
      v31 = v20;
      v32 = v21;
      v30 = v25;
      v26 = v25;
      dispatch_async(v19, v28);
    }

LABEL_14:
    objc_sync_exit(v14);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_performWithDelayInSecondsOf:(void *)a3 name:(void *)a4 queue:(double)a5 activityBlock:
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    v12 = a1;
    objc_sync_enter(v12);
    if ([v12[2] containsObject:v9])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [_DKActivityThrottler _performOrScheduleWithTimeInterval:v9 name:? queue:? activityBlock:? callDepth:?];
      }
    }

    else
    {
      [v12[2] addObject:v9];
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
        [_DKActivityThrottler _performWithDelayInSecondsOf:v9 name:v15 queue:v25 activityBlock:?];
      }

      v16 = v9;
      [v9 UTF8String];
      v17 = os_transaction_create();
      v18 = dispatch_time(0, (a5 * 1000000000.0));
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __78___DKActivityThrottler__performWithDelayInSecondsOf_name_queue_activityBlock___block_invoke;
      v21[3] = &unk_1E7369A38;
      v24 = v11;
      v21[4] = v12;
      v22 = v9;
      v23 = v17;
      v19 = v17;
      dispatch_after(v18, v10, v21);
    }

    objc_sync_exit(v12);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)clearHistoryForName:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = a1;
    objc_sync_enter(v4);
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_DKThrottledActivityLast%@ActivityDate", v6];
    [(_DKActivityThrottler *)v4 clearDateForKey:v5];

    objc_sync_exit(v4);
    v3 = v6;
  }
}

- (uint64_t)_minimumIntervalScheduledActionsContainsActionName:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    objc_sync_enter(v4);
    a1 = [*(a1 + 8) containsObject:v3];
    objc_sync_exit(v4);
  }

  return a1;
}

- (void)_minimumIntervalScheduledActionsAddActionName:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v3 = *(a1 + 8);
    objc_sync_enter(v3);
    [*(a1 + 8) addObject:v4];
    objc_sync_exit(v3);
  }
}

- (void)_minimumIntervalScheduledActionsRemoveActionName:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v3 = *(a1 + 8);
    objc_sync_enter(v3);
    [*(a1 + 8) removeObject:v4];
    objc_sync_exit(v3);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = _CDPrettyPrintCollection(self->_minimumIntervalScheduledActions, 0, 0, 0);
  v5 = _CDPrettyPrintCollection(self->_delayScheduledActions, 0, 0, 0);
  v6 = [v3 stringWithFormat:@"{ minimumIntervalScheduledActions=%@, delayScheduledActions=%@ }", v4, v5];

  return v6;
}

- (void)initWithStore:(void *)a1
{
  v4 = a2;
  if (a1)
  {
    v21.receiver = a1;
    v21.super_class = _DKActivityThrottler;
    v5 = objc_msgSendSuper2(&v21, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 5, a2);
      v6 = objc_opt_new();
      v7 = a1[1];
      a1[1] = v6;

      v8 = objc_opt_new();
      v9 = a1[2];
      a1[2] = v8;

      v10 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      [v10 setCountLimit:200];
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v11 stringWithFormat:@"%@@%p", v13, a1];
      [v10 setName:v14];

      v15 = a1[3];
      a1[3] = v10;
      v16 = v10;

      v17 = [v16 name];
      v18 = dispatch_queue_create([v17 UTF8String], 0);
      v19 = a1[4];
      a1[4] = v18;
    }
  }

  return a1;
}

- (id)keyForName:(void *)a1
{
  if (a1)
  {
    a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_DKThrottledActivityLast%@ActivityDate", a2];
    v2 = vars8;
  }

  return a1;
}

- (void)setDate:(void *)a3 forKey:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    [*(a1 + 24) setObject:v5 forKey:v6];
    v7 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39___DKActivityThrottler_setDate_forKey___block_invoke;
    block[3] = &unk_1E7367A48;
    block[4] = a1;
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, block);
  }
}

- (id)dateForKey:(uint64_t)a1
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_9;
  }

  v4 = [*(a1 + 24) objectForKey:v3];
  if (v4)
  {
    v5 = v4;
    v6 = 1;
  }

  else
  {
    v5 = [*(a1 + 40) objectForKey:v3];
    v6 = v5 == 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v5 = 0;
  }

  [v5 timeIntervalSinceNow];
  if (v7 > 0.0)
  {

LABEL_9:
    v5 = 0;
    goto LABEL_15;
  }

  if (v5)
  {
    v8 = v6;
  }

  else
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    [*(a1 + 24) setObject:v5 forKey:v3];
  }

LABEL_15:

  return v5;
}

- (void)clearDateForKey:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 24);
    v4 = a2;
    [v3 removeObjectForKey:v4];
    [*(a1 + 40) removeObjectForKey:v4];
  }
}

- (void)_performOrScheduleWithTimeInterval:(uint64_t)a3 name:queue:activityBlock:callDepth:.cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_21(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Runaway throttled activity '%@' with interval of %@ seconds", v4, 0x16u);
}

- (void)_performOrScheduleWithTimeInterval:(uint64_t)a1 name:queue:activityBlock:callDepth:.cold.2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Activity '%@' is already scheduled", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_performWithDelayInSecondsOf:(uint64_t)a3 name:queue:activityBlock:.cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_21(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Delaying activity '%@' by %@ seconds", v4, 0x16u);
}

@end