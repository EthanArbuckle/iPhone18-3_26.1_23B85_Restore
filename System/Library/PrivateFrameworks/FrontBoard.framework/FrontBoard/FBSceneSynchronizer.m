@interface FBSceneSynchronizer
+ (id)detachedSynchronizerWithIdentifier:(id)a3;
+ (id)synchronizerForViewServiceWithProcessIdentifier:(id)a3;
- (RBSProcessHandle)processHandle;
- (id)_dispatcher;
- (id)_initWithIdentifier:(void *)a3 workspaceQueue:(void *)a4 dispatcher:;
- (id)_workspaceQueue;
- (id)description;
- (void)_setProcessHandle:(uint64_t)a1;
- (void)_setWaitingForConnect;
- (void)performAsyncOnSendingQueue:(id)a3;
@end

@implementation FBSceneSynchronizer

- (id)_dispatcher
{
  if (a1)
  {
    a1 = a1[4];
    v1 = vars8;
  }

  return a1;
}

- (void)_setWaitingForConnect
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 48));
    if ((*(a1 + 52) & 1) == 0)
    {
      *(a1 + 52) = 1;
      v2 = *(a1 + 40);
      if (v2)
      {
        v3 = [v2 pid];
        if (v3 == getpid())
        {
          v4 = [(FBWorkspaceEventDispatcher *)*(a1 + 32) domain];
          [(FBWorkspaceDomain *)v4 injectEndpointToFBSWorkspace];
        }
      }
    }

    os_unfair_lock_unlock((a1 + 48));
  }
}

- (id)_workspaceQueue
{
  if (a1)
  {
    a1 = a1[2];
    v1 = vars8;
  }

  return a1;
}

- (id)_initWithIdentifier:(void *)a3 workspaceQueue:(void *)a4 dispatcher:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = v7;
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    if (!v10)
    {
      v25 = NSStringFromClass(v12);
      v26 = [v11 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"identifier", v25];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBSceneSynchronizer _initWithIdentifier:? workspaceQueue:? dispatcher:?];
      }

      [v26 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8A40C44);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSceneSynchronizer _initWithIdentifier:v10 workspaceQueue:sel__initWithIdentifier_workspaceQueue_dispatcher_ dispatcher:?];
    }

    v13 = v8;
    if (!v13)
    {
      [FBSceneSynchronizer _initWithIdentifier:? workspaceQueue:? dispatcher:?];
    }

    v14 = v13;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSceneSynchronizer _initWithIdentifier:v14 workspaceQueue:sel__initWithIdentifier_workspaceQueue_dispatcher_ dispatcher:?];
    }

    v15 = v9;
    if (v15)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [FBSceneSynchronizer _initWithIdentifier:v15 workspaceQueue:sel__initWithIdentifier_workspaceQueue_dispatcher_ dispatcher:?];
      }
    }

    v27.receiver = a1;
    v27.super_class = FBSceneSynchronizer;
    a1 = objc_msgSendSuper2(&v27, sel_init);
    if (a1)
    {
      v16 = [v10 copy];
      v17 = a1[1];
      a1[1] = v16;

      objc_storeStrong(a1 + 2, a3);
      v18 = MEMORY[0x1E698F480];
      v19 = a1[2];
      v20 = +[FBWorkspaceEventDispatcher callOutQueue];
      v21 = [v18 queueWithDispatchQueue:v19 targetQueue:v20];
      v22 = a1[3];
      a1[3] = v21;

      objc_storeStrong(a1 + 4, a4);
      v23 = a1[5];
      a1[5] = 0;

      *(a1 + 12) = 0;
      *(a1 + 52) = 0;
    }
  }

  return a1;
}

- (void)_setProcessHandle:(uint64_t)a1
{
  v4 = a2;
  if (!a1)
  {
LABEL_11:

    return;
  }

  v16 = v4;
  v5 = v4;
  if (!v5)
  {
    [FBSceneSynchronizer _setProcessHandle:?];
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(FBSceneSynchronizer *)v6 _setProcessHandle:?];
  }

  os_unfair_lock_lock((a1 + 48));
  v7 = *(a1 + 40);
  v8 = v7;
  if (!v7)
  {
LABEL_7:
    objc_storeStrong((a1 + 40), a2);
    if (*(a1 + 52) == 1)
    {
      v13 = [v6 pid];
      if (v13 == getpid())
      {
        v14 = [(FBWorkspaceEventDispatcher *)*(a1 + 32) domain];
        [(FBWorkspaceDomain *)v14 injectEndpointToFBSWorkspace];
      }
    }

    os_unfair_lock_unlock((a1 + 48));

    v4 = v16;
    goto LABEL_11;
  }

  v9 = [v7 identity];
  v10 = [v6 identity];
  if ([v9 isEqual:v10])
  {
    v11 = [v8 pid];
    v12 = [v6 pid];

    if (v11 == v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  os_unfair_lock_unlock((a1 + 48));
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"new processHandle=%@ mismatches previous=%@", v6, v8];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [FBSceneSynchronizer _setProcessHandle:?];
  }

  [v15 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (RBSProcessHandle)processHandle
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_process;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)performAsyncOnSendingQueue:(id)a3
{
  if (a3)
  {
    [(BSServiceDispatchQueue *)self->_workspaceQueue performAsync:?];
  }
}

+ (id)synchronizerForViewServiceWithProcessIdentifier:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    [(FBSceneSynchronizer *)a2 synchronizerForViewServiceWithProcessIdentifier:a1];
  }

  v6 = v5;
  objc_opt_class();
  v7 = objc_opt_respondsToSelector();
  v8 = MEMORY[0x1E69C75D0];
  if (v7)
  {
    v9 = [MEMORY[0x1E69C75E0] identifierForIdentifier:v6];
    v24 = 0;
    v10 = [v8 forceLookupIdentifer:v9 error:&v24];
    v11 = v24;

    if (v10)
    {
LABEL_4:
      v12 = +[FBProcessManager sharedInstance];
      v22 = 0;
      v13 = [v12 _registerProcessForViewServiceWithProcessHandle:v10 error:&v22];
      v14 = v22;
      v15 = v14;
      if (v13)
      {
        v16 = [v13 workspace];
        v17 = [v16 synchronizer];

LABEL_16:
        goto LABEL_17;
      }

      if (v14)
      {
        v19 = FBLogProcessWorkspace();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *v26 = v10;
          *&v26[8] = 2114;
          *&v26[10] = v15;
          _os_log_impl(&dword_1A89DD000, v19, OS_LOG_TYPE_DEFAULT, "failed to register viewService process %{public}@ : error=%{public}@", buf, 0x16u);
        }
      }

LABEL_15:
      v17 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v23 = 0;
    v10 = [MEMORY[0x1E69C75D0] handleForIdentifier:v6 error:&v23];
    v11 = v23;
    if (v10)
    {
      goto LABEL_4;
    }
  }

  if (v11)
  {
    v12 = FBLogProcessWorkspace();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v6 rbs_pid];
      *buf = 67109378;
      *v26 = v18;
      *&v26[4] = 2114;
      *&v26[6] = v11;
      _os_log_impl(&dword_1A89DD000, v12, OS_LOG_TYPE_DEFAULT, "failed to lookup viewService process with pid=%i : error=%{public}@", buf, 0x12u);
    }

    goto LABEL_15;
  }

  v17 = 0;
LABEL_17:

  v20 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)detachedSynchronizerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  if (!v4)
  {
    v13 = NSStringFromClass(v6);
    v14 = [v5 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"identifier", v13];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBSceneSynchronizer detachedSynchronizerWithIdentifier:a2];
    }

    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8A412CCLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(FBSceneSynchronizer *)v4 detachedSynchronizerWithIdentifier:a2];
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.frontboard.detached-scene-synchronizer<%@>", v4];
  v8 = MEMORY[0x1E698F4D0];
  v9 = [MEMORY[0x1E698F500] serviceWithClass:33];
  v10 = [v8 queueWithName:v7 serviceQuality:v9];

  v11 = [[FBSceneSynchronizer alloc] _initWithIdentifier:v4 workspaceQueue:v10 dispatcher:0];

  return v11;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(RBSProcessHandle *)self->_lock_process pid];
  os_unfair_lock_unlock(&self->_lock);
  if (v3 < 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<FBSceneSynchronizer:%p %@>", self, self->_identifier, v6];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<FBSceneSynchronizer:%p %@[%i]>", self, self->_identifier, v3];
  }
  v4 = ;

  return v4;
}

- (void)_initWithIdentifier:(void *)a1 workspaceQueue:(const char *)a2 dispatcher:.cold.1(void *a1, const char *a2)
{
  v5 = OUTLINED_FUNCTION_5(a1, a2);
  if (!v5)
  {
    v5 = objc_opt_class();
  }

  v6 = NSStringFromClass(v5);
  v7 = *(v4 + 3776);
  v8 = objc_opt_class();
  NSStringFromClass(v8);
  v18 = v17 = v6;
  v9 = [v2 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(v3);
    objc_claimAutoreleasedReturnValue();
    v10 = OUTLINED_FUNCTION_8();
    v11 = NSStringFromClass(v10);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v12, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v13, v14, v15, v16, @"identifier", v17, v18, v19, v20);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithIdentifier:(void *)a1 workspaceQueue:(char *)a2 dispatcher:.cold.2(void *a1, char *a2)
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
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"workspaceQueue", v15, v16, v17, v18);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithIdentifier:(void *)a1 workspaceQueue:(char *)a2 dispatcher:.cold.3(void *a1, char *a2)
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
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"dispatcher", v15, v16, v17, v18);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithIdentifier:(const char *)a1 workspaceQueue:dispatcher:.cold.4(const char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"workspaceQueue", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a1);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    OUTLINED_FUNCTION_0_1();
    v12 = @"FBSceneSynchronizer.m";
    v13 = 1024;
    v14 = 43;
    v15 = v9;
    v16 = v5;
    OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithIdentifier:(const char *)a1 workspaceQueue:dispatcher:.cold.5(const char *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_setProcessHandle:(void *)a1 .cold.1(void *a1, char *a2)
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
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"process", v15, v16, v17, v18);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_setProcessHandle:(const char *)a1 .cold.2(const char *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_setProcessHandle:(const char *)a1 .cold.3(const char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"process", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a1);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    OUTLINED_FUNCTION_0_1();
    v12 = @"FBSceneSynchronizer.m";
    v13 = 1024;
    v14 = 67;
    v15 = v9;
    v16 = v5;
    OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)synchronizerForViewServiceWithProcessIdentifier:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"processIdentifier"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a2;
    v15 = 2114;
    v16 = @"FBSceneSynchronizer.m";
    v17 = 1024;
    v18 = 113;
    v19 = 2114;
    v20 = v4;
    OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)detachedSynchronizerWithIdentifier:(void *)a1 .cold.1(void *a1, const char *a2)
{
  v5 = OUTLINED_FUNCTION_5(a1, a2);
  if (!v5)
  {
    v5 = objc_opt_class();
  }

  v6 = NSStringFromClass(v5);
  v7 = *(v4 + 3776);
  v8 = objc_opt_class();
  NSStringFromClass(v8);
  v18 = v17 = v6;
  v9 = [v2 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(v3);
    objc_claimAutoreleasedReturnValue();
    v10 = OUTLINED_FUNCTION_8();
    v11 = NSStringFromClass(v10);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v12, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v13, v14, v15, v16, @"identifier", v17, v18, v19, v20);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)detachedSynchronizerWithIdentifier:(const char *)a1 .cold.2(const char *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6);

  v5 = *MEMORY[0x1E69E9840];
}

@end