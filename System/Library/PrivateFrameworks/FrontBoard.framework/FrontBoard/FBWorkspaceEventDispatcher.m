@interface FBWorkspaceEventDispatcher
+ (uint64_t)callOutQueue;
- (BOOL)canCreateLocalSceneWithIdentity:(uint64_t)a1;
- (FBWorkspaceEventDispatcher)init;
- (id)_initWithDomain:(id *)a1;
- (id)_initWithDomain:(void *)a3 connectionStore:(void *)a4 preregisteredWorkspaces:;
- (id)registerSourceWithProcessHandle:(uint64_t)a1;
- (id)registerTarget:(uint64_t)a1;
- (uint64_t)domain;
- (uint64_t)handleSceneRequest:(void *)a3 fromSource:;
- (void)_callOutQueue_dispatchHandshakeFromSource:(void *)a3 toTarget:;
- (void)_callOutQueue_dispatchSceneRequestsFromSource:(void *)a3 toTarget:;
- (void)_callOutQueue_handleSceneRequest:(void *)a3 fromSource:;
- (void)_callOutQueue_noteHandshakeFromSource:(void *)a3 withRemnants:;
- (void)_noteReceivedInvalidationHandlerForAssertion:(uint64_t)a1;
- (void)_noteSourceDidInvalidate:(void *)a3 withPIDNumber:;
- (void)dealloc;
- (void)handleLocalSceneRequest:(uint64_t)a1;
- (void)noteHandshakeFromSource:(void *)a3 withRemnants:;
@end

@implementation FBWorkspaceEventDispatcher

- (uint64_t)domain
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

+ (uint64_t)callOutQueue
{
  objc_opt_self();
  v0 = MEMORY[0x1E698F4D0];

  return [v0 mainQueue];
}

- (FBWorkspaceEventDispatcher)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on FBWorkspaceEventDispatcher"];
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
    v14 = self;
    v15 = 2114;
    v16 = @"FBWorkspaceEventDispatcher.m";
    v17 = 1024;
    v18 = 65;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_initWithDomain:(void *)a3 connectionStore:(void *)a4 preregisteredWorkspaces:
{
  v67 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v48 = a3;
  v47 = a4;
  v45 = v8;
  if (a1)
  {
    v9 = v8;
    if (!v9)
    {
      [FBWorkspaceEventDispatcher _initWithDomain:? connectionStore:? preregisteredWorkspaces:?];
    }

    v10 = v9;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceEventDispatcher _initWithDomain:v10 connectionStore:sel__initWithDomain_connectionStore_preregisteredWorkspaces_ preregisteredWorkspaces:?];
    }

    v11 = v48;
    if (!v11)
    {
      [FBWorkspaceEventDispatcher _initWithDomain:? connectionStore:? preregisteredWorkspaces:?];
    }

    v12 = v11;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceEventDispatcher _initWithDomain:v12 connectionStore:sel__initWithDomain_connectionStore_preregisteredWorkspaces_ preregisteredWorkspaces:?];
    }

    v13 = v47;
    if (!v13)
    {
      [FBWorkspaceEventDispatcher _initWithDomain:? connectionStore:? preregisteredWorkspaces:?];
    }

    v14 = v13;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceEventDispatcher _initWithDomain:v14 connectionStore:sel__initWithDomain_connectionStore_preregisteredWorkspaces_ preregisteredWorkspaces:?];
    }

    v60.receiver = a1;
    v60.super_class = FBWorkspaceEventDispatcher;
    v15 = objc_msgSendSuper2(&v60, sel_init);
    val = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 1, a2);
      objc_storeStrong(val + 2, a3);
      v16 = [v14 copy];
      v17 = val[3];
      val[3] = v16;

      v18 = [(FBWorkspaceConnectionsStateStore *)val[2] state];
      v46 = [v18 processIdentifiers];

      v19 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0x10000 valueOptions:517];
      v20 = val[5];
      val[5] = v19;

      v21 = [MEMORY[0x1E696AB50] set];
      v22 = val[6];
      val[6] = v21;

      *(val + 18) = 0;
      lock = (val + 9);
      v23 = [MEMORY[0x1E695DF90] dictionary];
      v24 = val[4];
      val[4] = v23;

      v25 = objc_opt_new();
      v26 = val[8];
      val[8] = v25;

      v49 = [v46 count];
      if (v49)
      {
        objc_initWeak(&location, val);
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __86__FBWorkspaceEventDispatcher__initWithDomain_connectionStore_preregisteredWorkspaces___block_invoke;
        v57[3] = &unk_1E783B350;
        objc_copyWeak(&v58, &location);
        v27 = [v57 copy];
        os_unfair_lock_lock(lock);
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        obj = v46;
        v28 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
        if (v28)
        {
          v29 = *v54;
          do
          {
            v30 = 0;
            do
            {
              if (*v54 != v29)
              {
                objc_enumerationMutation(obj);
              }

              v31 = *(*(&v53 + 1) + 8 * v30);
              v32 = objc_alloc(MEMORY[0x1E69C7548]);
              v33 = [MEMORY[0x1E69C7640] targetWithPid:{objc_msgSend(v31, "rbs_pid")}];
              v34 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"WorkspaceReconnect"];
              v65 = v34;
              v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
              v36 = [v32 initWithExplanation:@"com.apple.frontboard.workspace.reconnect" target:v33 attributes:v35];

              [v36 setInvalidationHandler:v27];
              v52 = 0;
              LODWORD(v35) = [v36 acquireWithError:&v52];
              v37 = v52;
              if (v35)
              {
                v38 = val[7];
                if (!v38)
                {
                  v39 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v49];
                  v40 = val[7];
                  val[7] = v39;

                  v38 = val[7];
                }

                [v38 setObject:v36 forKey:v31];
                [val[8] addProcessIdentifier:v31];
              }

              else
              {
                v41 = FBLogProcessWorkspace();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v62 = v31;
                  v63 = 2112;
                  v64 = v37;
                  _os_log_error_impl(&dword_1A89DD000, v41, OS_LOG_TYPE_ERROR, "failed to acquire restart assertion on %@ : %@", buf, 0x16u);
                }

                [v36 invalidate];
              }

              ++v30;
            }

            while (v28 != v30);
            v28 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
          }

          while (v28);
        }

        [(FBWorkspaceConnectionsStateStore *)val[2] setState:?];
        os_unfair_lock_unlock(lock);

        objc_destroyWeak(&v58);
        objc_destroyWeak(&location);
      }

      [FBWorkspaceEventDispatcher _initWithDomain:v46 connectionStore:? preregisteredWorkspaces:?];
    }
  }

  else
  {
    val = 0;
  }

  v42 = *MEMORY[0x1E69E9840];
  return val;
}

void __86__FBWorkspaceEventDispatcher__initWithDomain_connectionStore_preregisteredWorkspaces___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(FBWorkspaceEventDispatcher *)WeakRetained _noteReceivedInvalidationHandlerForAssertion:v3];
}

- (id)registerSourceWithProcessHandle:(uint64_t)a1
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    if (!v5)
    {
      [FBWorkspaceEventDispatcher registerSourceWithProcessHandle:?];
    }

    v6 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(FBWorkspaceEventDispatcher *)v6 registerSourceWithProcessHandle:?];
    }

    v7 = [v6 pid];
    if (v7 <= 0)
    {
      [(FBWorkspaceEventDispatcher *)v6 registerSourceWithProcessHandle:?];
    }

    v8 = v7;
    v9 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    os_unfair_lock_lock((a1 + 72));
    v10 = [*(a1 + 32) objectForKey:v9];
    if (v10)
    {
      if (v8 != getpid())
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"already have a source registered for %@: %@", v9, v10];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [FBWorkspaceEventDispatcher registerSourceWithProcessHandle:?];
        }

        v23 = v22;
        [v22 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1A89EE398);
      }

      v11 = 0;
      v12 = 0;
    }

    else
    {
      objc_initWeak(&location, a1);
      v13 = [FBWorkspaceEventDispatcherSource alloc];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __62__FBWorkspaceEventDispatcher_registerSourceWithProcessHandle___block_invoke;
      v24[3] = &unk_1E783B3C8;
      objc_copyWeak(&v26, &location);
      v14 = v9;
      v25 = v14;
      v10 = [(FBWorkspaceEventDispatcherSource *)v13 _initWithProcessHandle:v6 invalidationBlock:v24];
      v15 = *(a1 + 32);
      v12 = v15 == 0;
      if (v15)
      {
        v11 = [*(a1 + 56) objectForKey:v14];
        if (v11)
        {
          [*(a1 + 56) removeObjectForKey:v14];
          if (![*(a1 + 56) count])
          {
            v16 = *(a1 + 56);
            *(a1 + 56) = 0;
          }
        }

        [*(a1 + 32) setObject:v10 forKey:v14];
        v17 = FBLogProcessWorkspace();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v29 = v14;
          v30 = 2114;
          v31 = v10;
          _os_log_impl(&dword_1A89DD000, v17, OS_LOG_TYPE_DEFAULT, "Registering Source for %{public}@ : %{public}@", buf, 0x16u);
        }

        v18 = [v14 rbs_pid];
        if (v18 != getpid() && [*(a1 + 64) addProcessIdentifier:v14])
        {
          [(FBWorkspaceConnectionsStateStore *)*(a1 + 16) setState:?];
        }
      }

      else
      {
        v19 = FBLogProcessWorkspace();
        [(FBWorkspaceEventDispatcher *)v19 registerSourceWithProcessHandle:v14, v10];
        v11 = 0;
      }

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    os_unfair_lock_unlock((a1 + 72));
    [v11 invalidate];
    if (v12)
    {
      [v10 invalidate];
    }
  }

  else
  {
    v10 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call _invalidateWithCompletion: before dealloc"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)registerTarget:(uint64_t)a1
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    objc_opt_self();
    v4 = [MEMORY[0x1E698F4D0] mainQueue];
    [v4 assertBarrierOnQueue];

    if (!v3)
    {
      [FBWorkspaceEventDispatcher registerTarget:?];
    }

    v5 = [v3 workspaceIdentifier];
    objc_initWeak(&location, v3);
    v6 = objc_alloc(MEMORY[0x1E698E778]);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __45__FBWorkspaceEventDispatcher_registerTarget___block_invoke;
    v26[3] = &unk_1E783B378;
    objc_copyWeak(v28, &location);
    v26[4] = a1;
    v7 = v5;
    v27 = v7;
    v28[1] = sel_registerTarget_;
    v8 = [v6 initWithIdentifier:@"com.apple.frontboard.workspace-events.registration.target" forReason:v7 invalidationBlock:v26];
    os_unfair_lock_lock((a1 + 72));
    v9 = [*(a1 + 40) objectForKey:v7];
    if (v9)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"already have a target registered for %@: %@", v7, v9];
      v16 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(sel_registerTarget_);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138544642;
        v31 = v18;
        v32 = 2114;
        v33 = v20;
        v34 = 2048;
        v35 = a1;
        v36 = 2114;
        v37 = @"FBWorkspaceEventDispatcher.m";
        v38 = 1024;
        v39 = 196;
        v40 = 2114;
        v41 = v15;
        _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v21 = v15;
      [v15 UTF8String];
      v22 = _bs_set_crash_log_message();
      [FBWorkspaceEventDispatcher registerTarget:v22];
    }

    [*(a1 + 40) setObject:v3 forKey:v7];
    v10 = FBLogProcessWorkspace();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v31 = v7;
      v32 = 2114;
      v33 = v3;
      _os_log_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_DEFAULT, "Registering Target for %{public}@: %{public}@", buf, 0x16u);
    }

    os_unfair_lock_unlock((a1 + 72));
    [*(a1 + 48) addObject:v7];
    objc_opt_self();
    v11 = [MEMORY[0x1E698F4D0] mainQueue];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __45__FBWorkspaceEventDispatcher_registerTarget___block_invoke_80;
    v23[3] = &unk_1E783B3A0;
    objc_copyWeak(&v25, &location);
    v23[4] = a1;
    v12 = v7;
    v24 = v12;
    [v11 performAsync:v23];

    objc_destroyWeak(&v25);
    objc_destroyWeak(v28);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

void __45__FBWorkspaceEventDispatcher_registerTarget___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  os_unfair_lock_lock((*(a1 + 32) + 72));
  if (!WeakRetained)
  {
    __45__FBWorkspaceEventDispatcher_registerTarget___block_invoke_cold_2(a1, (a1 + 32));
  }

  v5 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];

  if (v5 != WeakRetained)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = *(a1 + 40);
    v11 = [*(*(a1 + 32) + 40) objectForKey:v10];
    v12 = [v9 stringWithFormat:@"target mismatch for %@ : actual=%p expected=%p", v10, v11, WeakRetained];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __45__FBWorkspaceEventDispatcher_registerTarget___block_invoke_cold_1(a1, (a1 + 32));
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A89EEAB4);
  }

  v6 = FBLogProcessWorkspace();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    *buf = 138543362;
    v14 = v7;
    _os_log_impl(&dword_1A89DD000, v6, OS_LOG_TYPE_DEFAULT, "Removing target registration for workspaceIdentifier: %{public}@", buf, 0xCu);
  }

  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 72));

  v8 = *MEMORY[0x1E69E9840];
}

void __45__FBWorkspaceEventDispatcher_registerTarget___block_invoke_80(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  os_unfair_lock_lock((*(a1 + 32) + 72));
  if (WeakRetained && ([*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)], v3 = objc_claimAutoreleasedReturnValue(), v3, v3 == WeakRetained))
  {
    v5 = [*(*(a1 + 32) + 32) allValues];
    v4 = [v5 copy];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock((*(a1 + 32) + 72));
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(FBWorkspaceEventDispatcher *)*(a1 + 32) _callOutQueue_dispatchHandshakeFromSource:WeakRetained toTarget:?];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(FBWorkspaceEventDispatcher *)*(a1 + 32) _callOutQueue_dispatchSceneRequestsFromSource:WeakRetained toTarget:?];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __62__FBWorkspaceEventDispatcher_registerSourceWithProcessHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(FBWorkspaceEventDispatcher *)WeakRetained _noteSourceDidInvalidate:v3 withPIDNumber:*(a1 + 32)];
}

- (void)_noteSourceDidInvalidate:(void *)a3 withPIDNumber:
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 72));
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = [v7 objectForKey:v6];

      if (v8 != v5)
      {
        v26 = MEMORY[0x1E696AEC0];
        v27 = [*(a1 + 32) objectForKey:v6];
        v28 = [v26 stringWithFormat:@"source mismatch for %@ : actual=%p expected=%p", v6, v27, v5];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [FBWorkspaceEventDispatcher _noteSourceDidInvalidate:? withPIDNumber:?];
        }

        [v28 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1A89EF03CLL);
      }

      v9 = FBLogProcessWorkspace();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v5 processHandle];
        *buf = 138543362;
        v40 = v10;
        _os_log_impl(&dword_1A89DD000, v9, OS_LOG_TYPE_DEFAULT, "Removing source registration for processHandle: %{public}@", buf, 0xCu);
      }

      [*(a1 + 32) removeObjectForKey:v6];
      v11 = objc_opt_new();
      v12 = *(a1 + 64);
      *(a1 + 64) = v11;

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v13 = *(a1 + 32);
      v14 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v34;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v34 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v33 + 1) + 8 * i);
            v19 = [v18 rbs_pid];
            if (v19 != getpid())
            {
              [*(a1 + 64) addProcessIdentifier:v18];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v15);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v20 = *(a1 + 56);
      v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v30;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [*(a1 + 64) addProcessIdentifier:*(*(&v29 + 1) + 8 * j)];
          }

          v22 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v22);
      }

      [(FBWorkspaceConnectionsStateStore *)*(a1 + 16) setState:?];
    }

    os_unfair_lock_unlock((a1 + 72));
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)noteHandshakeFromSource:(void *)a3 withRemnants:
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = v5;
    if (!v7)
    {
      [FBWorkspaceEventDispatcher noteHandshakeFromSource:? withRemnants:?];
    }

    v8 = v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceEventDispatcher noteHandshakeFromSource:v8 withRemnants:sel_noteHandshakeFromSource_withRemnants_];
    }

    v9 = v6;
    if (!v9)
    {
      [FBWorkspaceEventDispatcher noteHandshakeFromSource:? withRemnants:?];
    }

    v10 = v9;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceEventDispatcher noteHandshakeFromSource:v10 withRemnants:sel_noteHandshakeFromSource_withRemnants_];
    }

    v19 = sel_noteHandshakeFromSource_withRemnants_;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v14 = v12;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          if (!v17)
          {
            [FBWorkspaceEventDispatcher noteHandshakeFromSource:v19 withRemnants:?];
          }

          v18 = v17;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [FBWorkspaceEventDispatcher noteHandshakeFromSource:v18 withRemnants:v19];
          }
        }

        v14 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:{16, v19}];
      }

      while (v14);
    }

    [(FBWorkspaceEventDispatcher *)v11 noteHandshakeFromSource:v20 withRemnants:a1, v8];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (uint64_t)handleSceneRequest:(void *)a3 fromSource:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = v5;
    if (!v7)
    {
      [FBWorkspaceEventDispatcher handleSceneRequest:? fromSource:?];
    }

    v8 = v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceEventDispatcher handleSceneRequest:v8 fromSource:sel_handleSceneRequest_fromSource_];
    }

    v9 = v6;
    if (!v9)
    {
      [FBWorkspaceEventDispatcher handleSceneRequest:? fromSource:?];
    }

    v10 = v9;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBWorkspaceEventDispatcher handleSceneRequest:v10 fromSource:sel_handleSceneRequest_fromSource_];
    }

    v11 = [v8 targetIdentifier];
    v12 = [*(a1 + 24) objectForKey:v11];

    if (v11 && (v12 || ([v8 requiresTargetPreregistration] & 1) == 0))
    {
      objc_opt_self();
      v13 = [MEMORY[0x1E698F4D0] mainQueue];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __60__FBWorkspaceEventDispatcher_handleSceneRequest_fromSource___block_invoke;
      v15[3] = &unk_1E783B300;
      v15[4] = a1;
      v16 = v8;
      v17 = v10;
      [v13 performAsync:v15];

      a1 = 1;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

uint64_t __81__FBWorkspaceEventDispatcher__callOutQueue_dispatchHandshakeFromSource_toTarget___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 definition];
  v4 = [v3 identity];
  v5 = [v4 internalWorkspaceIdentifier];
  v6 = [*(a1 + 32) workspaceIdentifier];
  v7 = [v5 isEqualToString:v6];

  return v7;
}

- (id)_initWithDomain:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [FBWorkspaceConnectionsStateStore alloc];
    v5 = [(FBWorkspaceDomain *)v3 reconnectShmemIdentifier];
    v6 = [(FBWorkspaceConnectionsStateStore *)v4 _initWithIdentifier:v5];
    v7 = [(FBWorkspaceDomain *)v3 preregisteredWorkspaces];
    v8 = [(FBWorkspaceEventDispatcher *)v2 _initWithDomain:v3 connectionStore:v6 preregisteredWorkspaces:v7];

    v2 = v8;
  }

  return v2;
}

- (void)_noteReceivedInvalidationHandlerForAssertion:(uint64_t)a1
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 72));
    if (*(a1 + 32))
    {
      v4 = *(a1 + 56);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __75__FBWorkspaceEventDispatcher__noteReceivedInvalidationHandlerForAssertion___block_invoke;
      v43[3] = &unk_1E783B3F0;
      v44 = v3;
      v5 = [v4 keysOfEntriesPassingTest:v43];
      if ([v5 count])
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v6 = v5;
        v7 = [v6 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v40;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v40 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = [*(a1 + 56) removeObjectForKey:*(*(&v39 + 1) + 8 * i)];
            }

            v8 = OUTLINED_FUNCTION_11(v11, v12, &v39, v47);
          }

          while (v8);
        }

        v13 = objc_opt_new();
        v14 = *(a1 + 64);
        *(a1 + 64) = v13;

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v15 = *(a1 + 32);
        v16 = [v15 countByEnumeratingWithState:&v35 objects:v46 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v36;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v36 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v35 + 1) + 8 * j);
              v21 = [v20 rbs_pid];
              v22 = getpid();
              if (v21 != v22)
              {
                v22 = [*(a1 + 64) addProcessIdentifier:v20];
              }
            }

            v17 = OUTLINED_FUNCTION_11(v22, v23, &v35, v46);
          }

          while (v17);
        }

        OUTLINED_FUNCTION_10();
        v24 = *(a1 + 56);
        v25 = [v24 countByEnumeratingWithState:v33 objects:v45 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v34;
          do
          {
            for (k = 0; k != v26; ++k)
            {
              if (*v34 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = [*(a1 + 64) addProcessIdentifier:*(v33[1] + 8 * k)];
            }

            v26 = OUTLINED_FUNCTION_11(v29, v30, v33, v45);
          }

          while (v26);
        }

        [(FBWorkspaceConnectionsStateStore *)*(a1 + 16) setState:?];
      }

      if (![*(a1 + 56) count])
      {
        v31 = *(a1 + 56);
        *(a1 + 56) = 0;
      }
    }

    os_unfair_lock_unlock((a1 + 72));
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)_callOutQueue_dispatchHandshakeFromSource:(void *)a3 toTarget:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    objc_opt_self();
    v7 = [MEMORY[0x1E698F4D0] mainQueue];
    [v7 assertBarrierOnQueue];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__FBWorkspaceEventDispatcher__callOutQueue_dispatchHandshakeFromSource_toTarget___block_invoke;
    v11[3] = &unk_1E783B418;
    v12 = v6;
    v8 = [v5 consumeRemnantsPassingTest:v11];
    if (v8)
    {
      v9 = [FBSceneClientHandshake alloc];
      v10 = [v5 processHandle];
      [(FBSceneClientHandshake *)v9 _initWithHandle:v10 remnants:v8];
      [OUTLINED_FUNCTION_7() didReceiveHandshake:?];
    }
  }
}

- (void)_callOutQueue_dispatchSceneRequestsFromSource:(void *)a3 toTarget:
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    objc_opt_self();
    v7 = [MEMORY[0x1E698F4D0] mainQueue];
    [v7 assertBarrierOnQueue];

    v8 = [v6 workspaceIdentifier];
    v9 = [v5 dequeueSceneRequestsForTargetIdentifier:v8];

    v18 = OUTLINED_FUNCTION_13(v10, v11, v12, v13, v14, v15, v16, v17, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51);
    if (v18)
    {
      v19 = v18;
      v20 = *v38;
      do
      {
        v21 = 0;
        do
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(v9);
          }

          v22 = *(v36 + 8 * v21);
          v23 = [v5 processHandle];
          [v6 didReceiveSceneRequest:v22 fromHandle:v23];

          ++v21;
        }

        while (v19 != v21);
        v19 = OUTLINED_FUNCTION_13(v24, v25, v26, v27, v28, v29, v30, v31, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52);
      }

      while (v19);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)_callOutQueue_noteHandshakeFromSource:(void *)a3 withRemnants:
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 72));
    v7 = *(a1 + 32);
    v8 = MEMORY[0x1E696AD98];
    v9 = [v5 processHandle];
    [v8 numberWithInt:{objc_msgSend(v9, "rbs_pid")}];
    objc_claimAutoreleasedReturnValue();
    v10 = [OUTLINED_FUNCTION_7() objectForKey:?];

    if (v10 == v5)
    {
      v21 = [v5 noteHandshakeWithRemnants:v6];
      v22 = NSAllMapTableValues(*(a1 + 40));
      v13 = [v22 copy];

      os_unfair_lock_unlock((a1 + 72));
      if (v21)
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v14 = v13;
        v23 = [v14 countByEnumeratingWithState:&v35 objects:v42 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v36;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v36 != v25)
              {
                objc_enumerationMutation(v14);
              }

              v27 = *(*(&v35 + 1) + 8 * i);
              v28 = *(a1 + 48);
              v29 = [v27 workspaceIdentifier];
              LOBYTE(v28) = [v28 containsObject:v29];

              if ((v28 & 1) == 0)
              {
                [(FBWorkspaceEventDispatcher *)a1 _callOutQueue_dispatchHandshakeFromSource:v5 toTarget:v27];
              }
            }

            v24 = OUTLINED_FUNCTION_11(v30, v31, &v35, v42);
          }

          while (v24);
        }

        v13 = v14;
        goto LABEL_25;
      }

      v11 = FBLogProcessWorkspace();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A89DD000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring double local source handshake", buf, 2u);
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 72));
      v11 = FBLogProcessWorkspace();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v5 processHandle];
        *buf = 67240192;
        v41 = [v12 rbs_pid];
        _os_log_impl(&dword_1A89DD000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring invalid source handshake for %{public}i", buf, 8u);
      }

      v13 = 0;
    }

    OUTLINED_FUNCTION_10();
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:v33 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(v33[1] + 8 * j) invalidate];
        }

        v16 = OUTLINED_FUNCTION_11(v19, v20, v33, v39);
      }

      while (v16);
    }

LABEL_25:
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)_callOutQueue_handleSceneRequest:(void *)a3 fromSource:
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 targetIdentifier];
    v8 = [*(a1 + 24) objectForKey:v7];

    os_unfair_lock_lock((a1 + 72));
    v9 = *(a1 + 32);
    v10 = MEMORY[0x1E696AD98];
    v11 = [v6 processHandle];
    v12 = [v10 numberWithInt:{objc_msgSend(v11, "rbs_pid")}];
    v13 = [v9 objectForKey:v12];

    if (v13 == v6)
    {
      v16 = [*(a1 + 40) objectForKey:v7];
      if (v8 | v16)
      {
        v17 = v16;
        [v6 enqueueSceneRequest:v5];
        os_unfair_lock_unlock((a1 + 72));
        if (v17)
        {
          v18 = *(a1 + 48);
          v19 = [v17 workspaceIdentifier];
          LOBYTE(v18) = [v18 containsObject:v19];

          if ((v18 & 1) == 0)
          {
            [(FBWorkspaceEventDispatcher *)a1 _callOutQueue_dispatchSceneRequestsFromSource:v6 toTarget:v17];
          }

          goto LABEL_15;
        }

        if (v8)
        {
LABEL_14:
          v17 = 0;
LABEL_15:

          goto LABEL_16;
        }
      }

      else
      {
        os_unfair_lock_unlock((a1 + 72));
      }

      v14 = FBLogProcessWorkspace();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = v7;
        _os_log_impl(&dword_1A89DD000, v14, OS_LOG_TYPE_DEFAULT, "Denying scene request because target workspace %{public}@ does not exist", buf, 0xCu);
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 72));
      v14 = FBLogProcessWorkspace();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v6 processHandle];
        *buf = 67240192;
        LODWORD(v23) = [v15 rbs_pid];
        _os_log_impl(&dword_1A89DD000, v14, OS_LOG_TYPE_DEFAULT, "Ignoring scene request from invalid source registration for %{public}i", buf, 8u);
      }
    }

    v20 = FBSWorkspaceErrorCreate();
    [v5 invalidateWithError:v20];

    goto LABEL_14;
  }

LABEL_16:

  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)canCreateLocalSceneWithIdentity:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  objc_opt_self();
  v4 = [MEMORY[0x1E698F4D0] mainQueue];
  [v4 assertBarrierOnQueue];

  v5 = [v3 workspaceIdentifier];

  v6 = [*(a1 + 24) objectForKey:v5];

  os_unfair_lock_lock((a1 + 72));
  v7 = *(a1 + 32);
  v8 = MEMORY[0x1E696AD98];
  [MEMORY[0x1E696AD98] numberWithInt:getpid()];
  objc_claimAutoreleasedReturnValue();
  v9 = [OUTLINED_FUNCTION_7() objectForKey:?];

  if (v9)
  {
    v10 = [*(a1 + 40) objectForKey:v5];
    v11 = (v6 | v10) != 0;
  }

  else
  {
    v11 = 0;
  }

  os_unfair_lock_unlock((a1 + 72));

  return v11;
}

- (void)handleLocalSceneRequest:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    objc_opt_self();
    v4 = [MEMORY[0x1E698F4D0] mainQueue];
    [v4 assertBarrierOnQueue];

    os_unfair_lock_lock((a1 + 72));
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
    v7 = [v5 objectForKey:v6];

    os_unfair_lock_unlock((a1 + 72));
    if (v7)
    {
      v10 = [MEMORY[0x1E695DFD8] set];
      [(FBWorkspaceEventDispatcher *)a1 _callOutQueue_noteHandshakeFromSource:v7 withRemnants:v10];

      [(FBWorkspaceEventDispatcher *)a1 _callOutQueue_handleSceneRequest:v3 fromSource:v7];
    }

    else
    {
      v8 = FBLogProcessWorkspace();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1A89DD000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring scene request from local source as we've already been invalidated", v11, 2u);
      }

      v9 = FBSWorkspaceErrorCreate();
      [v3 invalidateWithError:v9];
    }
  }
}

- (void)_initWithDomain:(void *)a1 connectionStore:(char *)a2 preregisteredWorkspaces:.cold.1(void *a1, char *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  NSStringFromClass(v6);
  v17 = v16 = v5;
  v7 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_8();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"domain", v16, v17, v18, v19);
  }

  v15 = v7;
  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithDomain:(void *)a1 connectionStore:(char *)a2 preregisteredWorkspaces:.cold.2(void *a1, char *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  NSStringFromClass(v6);
  v17 = v16 = v5;
  v7 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_8();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"store", v16, v17, v18, v19);
  }

  v15 = v7;
  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithDomain:(void *)a1 connectionStore:(char *)a2 preregisteredWorkspaces:.cold.3(void *a1, char *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  NSStringFromClass(v6);
  v17 = v16 = v5;
  v7 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_8();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"preregisteredWorkspaces", v16, v17, v18, v19);
  }

  v15 = v7;
  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithDomain:(char *)a1 connectionStore:preregisteredWorkspaces:.cold.4(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v13 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_9();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, @"preregisteredWorkspaces", v13, v14);
  }

  v12 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithDomain:(char *)a1 connectionStore:preregisteredWorkspaces:.cold.5(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v13 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_9();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, @"store", v13, v14);
  }

  v12 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithDomain:(char *)a1 connectionStore:preregisteredWorkspaces:.cold.6(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v13 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_9();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, @"domain", v13, v14);
  }

  v12 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithDomain:(uint64_t)a1 connectionStore:(void *)a2 preregisteredWorkspaces:.cold.7(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E69C75D0] currentProcess];
  v5 = [(FBWorkspaceEventDispatcher *)a1 registerSourceWithProcessHandle:v4];
}

- (void)registerSourceWithProcessHandle:(void *)a1 .cold.1(void *a1, char *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  NSStringFromClass(v6);
  v17 = v16 = v5;
  v7 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v8 = OUTLINED_FUNCTION_8();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"processHandle", v16, v17, v18, v19);
  }

  v15 = v7;
  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerSourceWithProcessHandle:(const char *)a1 .cold.2(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)registerSourceWithProcessHandle:(uint64_t)a1 .cold.3(uint64_t a1, char *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid pid for %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v13, v14);
  }

  v11 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerSourceWithProcessHandle:(char *)a1 .cold.4(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v13 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_9();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, @"processHandle", v13, v14);
  }

  v12 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerSourceWithProcessHandle:(uint64_t)a3 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = a2;
    v9 = 2114;
    v10 = a3;
    _os_log_impl(&dword_1A89DD000, a1, OS_LOG_TYPE_DEFAULT, "Immediately invalidating new source %{public}@ due to previous dispatcher invalidation : %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerTarget:(char *)a1 .cold.2(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"target", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __45__FBWorkspaceEventDispatcher_registerTarget___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(*(a1 + 56));
  v4 = *a2;
  v5 = objc_opt_class();
  v12 = NSStringFromClass(v5);
  v13 = *a2;
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

void __45__FBWorkspaceEventDispatcher_registerTarget___block_invoke_cold_2(uint64_t a1, uint64_t *a2)
{
  v13 = *(a1 + 40);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"target for %@ dealloced before invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a1 + 56));
    v6 = *a2;
    v7 = objc_opt_class();
    v15 = NSStringFromClass(v7);
    v16 = *a2;
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, 2u);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_noteSourceDidInvalidate:(const char *)a1 withPIDNumber:.cold.1(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)noteHandshakeFromSource:(void *)a1 withRemnants:(char *)a2 .cold.1(void *a1, char *a2)
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
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"source", v15, v16, v17, v18);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeFromSource:(void *)a1 withRemnants:(char *)a2 .cold.2(void *a1, char *a2)
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

- (void)noteHandshakeFromSource:(void *)a1 withRemnants:(char *)a2 .cold.3(void *a1, char *a2)
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

- (void)noteHandshakeFromSource:(char *)a1 withRemnants:.cold.4(char *a1)
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

- (void)noteHandshakeFromSource:(char *)a1 withRemnants:.cold.5(char *a1)
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

- (void)noteHandshakeFromSource:(char *)a1 withRemnants:.cold.6(char *a1)
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
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, @"source", v12, v13);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeFromSource:(uint64_t)a3 withRemnants:(void *)a4 .cold.7(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  objc_opt_self();
  v8 = [MEMORY[0x1E698F4D0] mainQueue];
  *a2 = MEMORY[0x1E69E9820];
  *(a2 + 8) = 3221225472;
  *(a2 + 16) = __67__FBWorkspaceEventDispatcher_noteHandshakeFromSource_withRemnants___block_invoke;
  *(a2 + 24) = &unk_1E783B300;
  *(a2 + 32) = a3;
  *(a2 + 40) = a4;
  *(a2 + 48) = a1;
  [v8 performAsync:a2];
}

- (void)handleSceneRequest:(void *)a1 fromSource:(char *)a2 .cold.1(void *a1, char *a2)
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

- (void)handleSceneRequest:(void *)a1 fromSource:(char *)a2 .cold.2(void *a1, char *a2)
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
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, @"source", v15, v16, v17, v18);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)handleSceneRequest:(char *)a1 fromSource:.cold.3(char *a1)
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
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, @"source", v12, v13);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)handleSceneRequest:(char *)a1 fromSource:.cold.4(char *a1)
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

@end