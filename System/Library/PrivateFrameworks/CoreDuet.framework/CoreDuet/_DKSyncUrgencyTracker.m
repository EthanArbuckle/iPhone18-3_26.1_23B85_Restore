@interface _DKSyncUrgencyTracker
+ (id)sharedInstance;
- (id)allUrgencies;
- (uint64_t)ageUrgencies;
- (uint64_t)urgencyForClient:(uint64_t)result;
- (void)recomputeUrgency;
- (void)updateUrgency:(void *)a3 forClient:;
@end

@implementation _DKSyncUrgencyTracker

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_initialized_4 != -1)
  {
    +[_DKSyncUrgencyTracker sharedInstance];
  }

  v0 = sharedInstance_tracker;

  return v0;
}

- (void)recomputeUrgency
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_urgencies;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(_DKSyncUrgencyTracker *)self urgencyForClient:?];
        if (v6 <= v9)
        {
          v6 = v9;
        }
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (v6 != self->_urgency)
  {
    self->_urgency = v6;
    v10 = +[_CDObservationCenter sharedInstance];
    v18 = @"urgency";
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_urgency];
    v19 = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [v10 postNotificationName:@"_DKSyncUrgencyDidChangeNotification" userInfo:v12 sender:self];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)updateUrgency:(void *)a3 forClient:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    v6 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v6);

    if (a2 >= 0xC)
    {
      v7 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v19 = [objc_opt_class() description];
        v20 = [OUTLINED_FUNCTION_1_27() numberWithUnsignedInteger:?];
        OUTLINED_FUNCTION_0_34();
        _os_log_error_impl(&dword_191750000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Invalid urgency from %@: %@", v21, 0x20u);
      }

      a2 = 10;
    }

    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_opt_class() description];
      v10 = [OUTLINED_FUNCTION_1_27() numberWithUnsignedInteger:?];
      OUTLINED_FUNCTION_0_34();
      _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating urgency for %@ to %@", v21, 0x20u);
    }

    v11 = a1[2];
    if (!v11)
    {
      v12 = objc_opt_new();
      v13 = a1[2];
      a1[2] = v12;

      v11 = a1[2];
    }

    v14 = [v11 objectForKeyedSubscript:v5];
    if (v14)
    {
      v15 = [OUTLINED_FUNCTION_1_27() numberWithUnsignedInteger:?];
      v16 = [v14 isEqualToNumber:v15];

      if ((v16 & 1) == 0)
      {
        if (!a2)
        {
          [a1[2] setObject:0 forKeyedSubscript:v5];
LABEL_16:
          [a1 recomputeUrgency];
          goto LABEL_17;
        }

LABEL_15:
        v17 = [OUTLINED_FUNCTION_1_27() numberWithUnsignedInteger:?];
        [a1[2] setObject:v17 forKeyedSubscript:v5];

        goto LABEL_16;
      }
    }

    else if (a2)
    {
      goto LABEL_15;
    }

LABEL_17:
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (uint64_t)urgencyForClient:(uint64_t)result
{
  if (result)
  {
    v2 = [*(result + 16) objectForKeyedSubscript:a2];
    v3 = [v2 unsignedIntegerValue];

    return v3;
  }

  return result;
}

- (id)allUrgencies
{
  if (a1)
  {
    a1 = [a1[2] copy];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)ageUrgencies
{
  if (result)
  {
    v1 = result;
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    v3 = objc_opt_new();
    v4 = v1[2];
    v1[2] = v3;

    return [v1 recomputeUrgency];
  }

  return result;
}

@end