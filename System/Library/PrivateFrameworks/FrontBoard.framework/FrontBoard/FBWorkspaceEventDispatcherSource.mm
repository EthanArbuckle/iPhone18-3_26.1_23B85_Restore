@interface FBWorkspaceEventDispatcherSource
- (BOOL)noteHandshakeWithRemnants:(id)remnants;
- (FBWorkspaceEventDispatcherSource)init;
- (id)_initWithProcessHandle:(id)handle invalidationBlock:(id)block;
- (id)consumeRemnantsPassingTest:(id)test;
- (id)dequeueSceneRequestsForTargetIdentifier:(id)identifier;
- (void)dealloc;
- (void)enqueueSceneRequest:(id)request;
- (void)invalidate;
@end

@implementation FBWorkspaceEventDispatcherSource

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must invalidate before dealloc"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)invalidate
{
  v47 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_invalidationLock);
  os_unfair_lock_lock(&selfCopy->_lock);
  v3 = MEMORY[0x1AC572E40](selfCopy->_lock_invalidationBlock);
  os_unfair_lock_unlock(&selfCopy->_lock);
  if (v3)
  {
    (*(v3 + 16))(v3, selfCopy);
  }

  v29 = v3;
  os_unfair_lock_lock(&selfCopy->_lock);
  v4 = selfCopy->_lock_remnants;
  v5 = selfCopy->_lock_requestsByTargetIdentifier;
  lock_remnants = selfCopy->_lock_remnants;
  selfCopy->_lock_remnants = 0;

  lock_requestsByTargetIdentifier = selfCopy->_lock_requestsByTargetIdentifier;
  selfCopy->_lock_requestsByTargetIdentifier = 0;

  lock_invalidationBlock = selfCopy->_lock_invalidationBlock;
  selfCopy->_lock_invalidationBlock = 0;

  v30 = selfCopy;
  os_unfair_lock_unlock(&selfCopy->_lock);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = v4;
  v10 = [(NSSet *)v9 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    do
    {
      v13 = 0;
      do
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v40 + 1) + 8 * v13++) invalidate];
      }

      while (v11 != v13);
      v11 = [(NSSet *)v9 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v11);
  }

  v27 = v9;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = v5;
  obj = [(NSMutableDictionary *)v5 objectEnumerator];
  v14 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    do
    {
      v17 = 0;
      do
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v36 + 1) + 8 * v17);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v32 objects:v44 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v33;
          do
          {
            v23 = 0;
            do
            {
              if (*v33 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v32 + 1) + 8 * v23);
              v25 = FBSWorkspaceErrorCreate();
              [v24 invalidateWithError:v25];

              ++v23;
            }

            while (v21 != v23);
            v21 = [v19 countByEnumeratingWithState:&v32 objects:v44 count:16];
          }

          while (v21);
        }

        ++v17;
      }

      while (v17 != v15);
      v15 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v15);
  }

  os_unfair_lock_unlock(v30 + 11);
  v26 = *MEMORY[0x1E69E9840];
}

- (id)_initWithProcessHandle:(id)handle invalidationBlock:(id)block
{
  handleCopy = handle;
  blockCopy = block;
  v10 = handleCopy;
  if (!v10)
  {
    [FBWorkspaceEventDispatcherSource _initWithProcessHandle:a2 invalidationBlock:?];
  }

  v11 = v10;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspaceEventDispatcherSource _initWithProcessHandle:v11 invalidationBlock:a2];
  }

  if ([v11 rbs_pid] <= 0)
  {
    [FBWorkspaceEventDispatcherSource _initWithProcessHandle:v11 invalidationBlock:a2];
  }

  if (!blockCopy)
  {
    [FBWorkspaceEventDispatcherSource _initWithProcessHandle:a2 invalidationBlock:?];
  }

  v17.receiver = self;
  v17.super_class = FBWorkspaceEventDispatcherSource;
  v12 = [(FBWorkspaceEventDispatcherSource *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_processHandle, handle);
    v14 = [blockCopy copy];
    lock_invalidationBlock = v13->_lock_invalidationBlock;
    v13->_lock_invalidationBlock = v14;

    *&v13->_lock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

- (BOOL)noteHandshakeWithRemnants:(id)remnants
{
  v25 = *MEMORY[0x1E69E9840];
  remnantsCopy = remnants;
  if (!remnantsCopy)
  {
    [FBWorkspaceEventDispatcherSource noteHandshakeWithRemnants:a2];
  }

  v6 = remnantsCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(FBWorkspaceEventDispatcherSource *)v6 noteHandshakeWithRemnants:a2];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if (!v12)
        {
          [FBWorkspaceEventDispatcherSource noteHandshakeWithRemnants:a2];
        }

        v13 = v12;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(FBWorkspaceEventDispatcherSource *)v13 noteHandshakeWithRemnants:a2];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidationBlock)
  {
    [FBWorkspaceEventDispatcherSource noteHandshakeWithRemnants:a2];
  }

  v14 = [(RBSProcessHandle *)self->_processHandle pid];
  if (v14 != getpid())
  {
    if (self->_lock_remnants)
    {
      [FBWorkspaceEventDispatcherSource noteHandshakeWithRemnants:a2];
    }

    v16 = [v7 copy];
    goto LABEL_22;
  }

  if ([v7 count])
  {
    [FBWorkspaceEventDispatcherSource noteHandshakeWithRemnants:a2];
  }

  if (!self->_lock_remnants)
  {
    v16 = [MEMORY[0x1E695DFD8] set];
LABEL_22:
    lock_remnants = self->_lock_remnants;
    self->_lock_remnants = v16;

    v15 = 1;
    goto LABEL_23;
  }

  v15 = 0;
LABEL_23:
  os_unfair_lock_unlock(&self->_lock);

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)consumeRemnantsPassingTest:(id)test
{
  v32 = *MEMORY[0x1E69E9840];
  testCopy = test;
  if (!testCopy)
  {
    [FBWorkspaceEventDispatcherSource consumeRemnantsPassingTest:a2];
  }

  v6 = testCopy;
  os_unfair_lock_lock(&self->_lock);
  lock_remnants = self->_lock_remnants;
  if (!lock_remnants)
  {
    v17 = 0;
    goto LABEL_30;
  }

  selfCopy = self;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = lock_remnants;
  v9 = [(NSSet *)v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v9)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_21;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = *v28;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v28 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v27 + 1) + 8 * i);
      if (v6[2](v6, v15))
      {
        if (v11)
        {
          v16 = v11;
LABEL_13:
          [v16 addObject:v15];
          continue;
        }

        v11 = [MEMORY[0x1E695DFA8] setWithObject:v15];
      }

      else
      {
        if (v12)
        {
          v16 = v12;
          goto LABEL_13;
        }

        v12 = [MEMORY[0x1E695DFA8] setWithObject:v15];
      }
    }

    v10 = [(NSSet *)v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v10);
LABEL_21:

  self = selfCopy;
  v18 = [(NSSet *)selfCopy->_lock_remnants count];
  if (v18 != [v12 count])
  {
    v19 = [v12 copy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = [MEMORY[0x1E695DFD8] set];
    }

    v22 = selfCopy->_lock_remnants;
    selfCopy->_lock_remnants = v21;
  }

  if (v11)
  {
    v23 = v11;
  }

  else
  {
    v23 = [MEMORY[0x1E695DFD8] set];
  }

  v17 = v23;

LABEL_30:
  os_unfair_lock_unlock(&self->_lock);

  v24 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)enqueueSceneRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    [FBWorkspaceEventDispatcherSource enqueueSceneRequest:a2];
  }

  v13 = requestCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(FBWorkspaceEventDispatcherSource *)v13 enqueueSceneRequest:a2];
  }

  targetIdentifier = [v13 targetIdentifier];
  if (!targetIdentifier)
  {
    [(FBWorkspaceEventDispatcherSource *)v13 enqueueSceneRequest:a2];
  }

  v7 = targetIdentifier;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_remnants)
  {
    [FBWorkspaceEventDispatcherSource enqueueSceneRequest:a2];
  }

  if (!self->_lock_invalidationBlock)
  {
    [FBWorkspaceEventDispatcherSource enqueueSceneRequest:a2];
  }

  v8 = [(NSMutableDictionary *)self->_lock_requestsByTargetIdentifier objectForKey:v7];
  if (v8)
  {
    v9 = v8;
    [v8 addObject:v13];
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithObject:v13];
    lock_requestsByTargetIdentifier = self->_lock_requestsByTargetIdentifier;
    if (lock_requestsByTargetIdentifier)
    {
      [(NSMutableDictionary *)lock_requestsByTargetIdentifier setObject:v9 forKey:v7];
    }

    else
    {
      v11 = [MEMORY[0x1E695DF90] dictionaryWithObject:v9 forKey:v7];
      v12 = self->_lock_requestsByTargetIdentifier;
      self->_lock_requestsByTargetIdentifier = v11;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)dequeueSceneRequestsForTargetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  if (!identifierCopy)
  {
    v12 = NSStringFromClass(v7);
    v13 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"targetIdentifier", v12];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBWorkspaceEventDispatcherSource dequeueSceneRequestsForTargetIdentifier:a2];
    }

    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8A30E48);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(FBWorkspaceEventDispatcherSource *)identifierCopy dequeueSceneRequestsForTargetIdentifier:a2];
  }

  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_lock_requestsByTargetIdentifier objectForKey:identifierCopy];
  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_lock_requestsByTargetIdentifier count];
    lock_requestsByTargetIdentifier = self->_lock_requestsByTargetIdentifier;
    if (v9 == 1)
    {
      self->_lock_requestsByTargetIdentifier = 0;
    }

    else
    {
      [(NSMutableDictionary *)lock_requestsByTargetIdentifier removeObjectForKey:identifierCopy];
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (FBWorkspaceEventDispatcherSource)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on FBWorkspaceEventDispatcherSource"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"FBWorkspaceEventDispatcherSource.m";
    v17 = 1024;
    v18 = 151;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)_initWithProcessHandle:(void *)a1 invalidationBlock:(char *)a2 .cold.1(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  NSStringFromClass(v6);
  v16 = v15 = v5;
  v7 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_8();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"processHandle", v15, v16, v17, v18);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithProcessHandle:(char *)a1 invalidationBlock:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"invalidationBlock", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithProcessHandle:(uint64_t)a1 invalidationBlock:(char *)a2 .cold.3(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid pid on handle=%@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithProcessHandle:(char *)a1 invalidationBlock:.cold.4(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v12 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_9();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, @"processHandle", v12, v13);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeWithRemnants:(void *)a1 .cold.1(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  NSStringFromClass(v6);
  v16 = v15 = v5;
  v7 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_8();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"remnants", v15, v16, v17, v18);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeWithRemnants:(void *)a1 .cold.2(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  NSStringFromClass(v6);
  v16 = v15 = v5;
  v7 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_8();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"remnant", v15, v16, v17, v18);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeWithRemnants:(char *)a1 .cold.3(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v12 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_9();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, @"remnant", v12, v13);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeWithRemnants:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"double handshake detected"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeWithRemnants:(char *)a1 .cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"the currentProcess may never have remnants"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeWithRemnants:(char *)a1 .cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to handshake after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeWithRemnants:(char *)a1 .cold.7(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v12 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_9();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, @"remnants", v12, v13);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)consumeRemnantsPassingTest:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"test", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)enqueueSceneRequest:(void *)a1 .cold.1(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  NSStringFromClass(v6);
  v16 = v15 = v5;
  v7 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_8();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"request", v15, v16, v17, v18);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)enqueueSceneRequest:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to enqueue scene request after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)enqueueSceneRequest:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to enqueue scene request before handshake"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)enqueueSceneRequest:(uint64_t)a1 .cold.4(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing targetIdentifier in request : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)enqueueSceneRequest:(char *)a1 .cold.5(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v12 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_9();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, @"request", v12, v13);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)dequeueSceneRequestsForTargetIdentifier:(void *)a1 .cold.1(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  NSStringFromClass(v6);
  v16 = v15 = v5;
  v7 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_8();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"targetIdentifier", v15, v16, v17, v18);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)dequeueSceneRequestsForTargetIdentifier:(const char *)a1 .cold.2(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v9 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v3, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end