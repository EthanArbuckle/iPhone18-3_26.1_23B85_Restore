@interface _FBSScenesClientHostEvent
- (id)coalesceEvents:(uint64_t)events;
- (uint64_t)coalesceEvent:(BOOL *)event skipped:;
- (void)complete;
- (void)dealloc;
- (void)invalidate;
- (void)setDiff:(uint64_t)diff;
- (void)setIdentity:(uint64_t)identity;
@end

@implementation _FBSScenesClientHostEvent

- (void)complete
{
  if (self)
  {
    v2 = MEMORY[0x1A58E80F0](self[4]);
    if (v2)
    {
      v2[2]();
    }

    [self invalidate];
  }
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"event deallocated with a completion"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)invalidate
{
  diff = self->_diff;
  self->_diff = 0;

  identity = self->_identity;
  self->_identity = 0;

  completion = self->_completion;
  self->_completion = 0;
}

- (uint64_t)coalesceEvent:(BOOL *)event skipped:
{
  v5 = a2;
  if (self)
  {
    if (!v5)
    {
      [_FBSScenesClientHostEvent coalesceEvent:? skipped:?];
    }

    if (v5 == self)
    {
      [_FBSScenesClientHostEvent coalesceEvent:? skipped:?];
    }

    if (!event)
    {
      [_FBSScenesClientHostEvent coalesceEvent:? skipped:?];
    }

    if ((*(self + 8) & 1) == 0)
    {
      [_FBSScenesClientHostEvent coalesceEvent:? skipped:?];
    }

    if (!*(self + 16))
    {
      [_FBSScenesClientHostEvent coalesceEvent:? skipped:?];
    }

    if ([*(self + 16) isEqual:*(v5 + 2)])
    {
      if (*(v5 + 8) == 1)
      {
        v6 = [FBSSettingsDiff diffByApplyingDiff:*(v5 + 3) toDiff:*(self + 24)];
        v7 = *(self + 24);
        *(self + 24) = v6;

        v8 = MEMORY[0x1A58E80F0](*(self + 32));
        v9 = *(v5 + 4);
        v15 = MEMORY[0x1E69E9820];
        v16 = 3221225472;
        v17 = __51___FBSScenesClientHostEvent_coalesceEvent_skipped___block_invoke;
        v18 = &unk_1E76BE8A0;
        v19 = v8;
        v20 = v9;
        v10 = v9;
        v11 = v8;
        v12 = [&v15 copy];
        v13 = *(self + 32);
        *(self + 32) = v12;

        [v5 invalidate];
        self = 1;
      }

      else
      {
        self = 0;
      }
    }

    else
    {
      self = 0;
      *event = *(v5 + 2) != 0;
    }
  }

  return self;
}

- (id)coalesceEvents:(uint64_t)events
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (events && [v3 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v4 copy];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v13 = 0;
          if ([(_FBSScenesClientHostEvent *)events coalesceEvent:v11 skipped:&v13])
          {
            if (!v8)
            {
              v8 = objc_opt_new();
            }

            [v8 addObject:v11];
          }

          else if (!v13)
          {
            goto LABEL_18;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

LABEL_18:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setIdentity:(uint64_t)identity
{
  if (identity)
  {
    objc_storeStrong((identity + 16), a2);
  }
}

- (void)setDiff:(uint64_t)diff
{
  if (diff)
  {
    objc_storeStrong((diff + 24), a2);
  }
}

- (void)coalesceEvent:(char *)a1 skipped:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_canCoalesce", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)coalesceEvent:(char *)a1 skipped:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_identity", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)coalesceEvent:(char *)a1 skipped:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"outSkipped != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)coalesceEvent:(char *)a1 skipped:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"event != self", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)coalesceEvent:(char *)a1 skipped:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"event != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end