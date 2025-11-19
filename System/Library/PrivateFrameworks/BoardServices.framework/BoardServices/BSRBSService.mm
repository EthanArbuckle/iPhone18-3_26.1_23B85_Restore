@interface BSRBSService
+ (__CFString)debugDescriptionWithMultilinePrefix:(uint64_t)a1;
+ (id)_sharedTestInstance;
+ (void)_sharedInstanceCreatingIfNecessary:(uint64_t)a1;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)launchIdentifiersForMachName:(uint64_t)a1;
- (id)registerMonitor:(uint64_t)a1;
- (id)succinctDescription;
- (void)_callOutLock_noteEndpointsChangedForServices:(os_unfair_lock_s *)a1;
- (void)service:(id)a3 didLoseInheritances:(id)a4;
- (void)service:(id)a3 didReceiveInheritances:(id)a4;
@end

@implementation BSRBSService

+ (void)_sharedInstanceCreatingIfNecessary:(uint64_t)a1
{
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals_5);
  v3 = qword_1ED4A7BE8;
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2 == 0;
  }

  if (!v4)
  {
    v5 = [BSRBSService alloc];
    if (v5 && (v26.receiver = v5, v26.super_class = BSRBSService, v6 = objc_msgSendSuper2(&v26, sel_init), (v7 = v6) != 0))
    {
      v6[16] = 0;
      v8 = [MEMORY[0x1E695DF90] dictionary];
      v9 = v7[2];
      v7[2] = v8;

      v10 = [MEMORY[0x1E695DF90] dictionary];
      v11 = v7[3];
      v7[3] = v10;

      v12 = [MEMORY[0x1E695DF90] dictionary];
      v13 = v7[4];
      v7[4] = v12;

      v14 = [MEMORY[0x1E695DF90] dictionary];
      v15 = v7[5];
      v7[5] = v14;

      *(v7 + 17) = 0;
      v16 = [MEMORY[0x1E695DF90] dictionary];
      v17 = v7[7];
      v7[7] = v16;

      v18 = v7;
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v19 = off_1ED4A7BF0;
      v31 = off_1ED4A7BF0;
      if (!off_1ED4A7BF0)
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __getRBSServiceInitializeSymbolLoc_block_invoke;
        v27[3] = &unk_1E75200F8;
        v27[4] = &v28;
        __getRBSServiceInitializeSymbolLoc_block_invoke(v27);
        v19 = v29[3];
      }

      _Block_object_dispose(&v28, 8);
      if (!v19)
      {
        v25 = [MEMORY[0x1E696AAA8] currentHandler];
        v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"RBSService *softlinkRBSServiceInitialize(id<RBSServiceDelegate>  _Nullable __strong)"];
        [v25 handleFailureInFunction:v24 file:@"BSRBSService.m" lineNumber:23 description:{@"%s", dlerror()}];

        __break(1u);
        return;
      }

      v20 = v19(v18);

      v21 = v18[1];
      v18[1] = v20;
    }

    else
    {
      v18 = 0;
    }

    v22 = qword_1ED4A7BE8;
    qword_1ED4A7BE8 = v18;

    v3 = v18;
  }

  os_unfair_lock_unlock(&_MergedGlobals_5);

  v23 = v3;
}

+ (id)_sharedTestInstance
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"accessed _sharedTestInstance outside of tests"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = a1;
    v16 = 2114;
    v17 = @"BSRBSService.m";
    v18 = 1024;
    v19 = 90;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)launchIdentifiersForMachName:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 64));
    v4 = *(a1 + 48);
    if (!v4)
    {
      v5 = [*(a1 + 8) managedEndpointByLaunchIdentifier];
      if ([v5 count])
      {
        v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __45__BSRBSService_launchIdentifiersForMachName___block_invoke;
        v20[3] = &unk_1E75207F8;
        v7 = v6;
        v21 = v7;
        [v5 enumerateKeysAndObjectsUsingBlock:v20];
        v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
        v15 = MEMORY[0x1E69E9820];
        v16 = 3221225472;
        v17 = __45__BSRBSService_launchIdentifiersForMachName___block_invoke_2;
        v18 = &unk_1E7520820;
        v9 = v8;
        v19 = v9;
        [v7 enumerateKeysAndObjectsUsingBlock:&v15];
        v10 = [v7 copy];
        v11 = *(a1 + 48);
        *(a1 + 48) = v10;
      }

      else
      {
        v12 = *(a1 + 48);
        *(a1 + 48) = MEMORY[0x1E695E0F8];
      }

      v4 = *(a1 + 48);
    }

    v13 = [v4 objectForKey:v3];
    os_unfair_lock_unlock((a1 + 64));
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __45__BSRBSService_launchIdentifiersForMachName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [v5 name];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    [v8 addObject:v12];
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E695DFA8] setWithObject:v12];
    v11 = [v5 name];
    [v9 setObject:v10 forKey:v11];
  }
}

void __45__BSRBSService_launchIdentifiersForMachName___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  v6 = [a3 copy];
  [v5 setObject:v6 forKey:v7];
}

- (id)registerMonitor:(uint64_t)a1
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"monitorToRegister"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = NSStringFromSelector(sel_registerMonitor_);
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        *buf = 138544642;
        v36 = v21;
        v37 = 2114;
        v38 = v23;
        v39 = 2048;
        v40 = a1;
        v41 = 2114;
        v42 = @"BSRBSService.m";
        v43 = 1024;
        v44 = 128;
        v45 = 2114;
        v46 = v20;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v24 = v20;
      [v20 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A844FB4);
    }

    v5 = [v3 service];
    if (!v5)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"asked to register a monitor with a nil service : monitor=%@", v4];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(sel_registerMonitor_);
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138544642;
        v36 = v26;
        v37 = 2114;
        v38 = v28;
        v39 = 2048;
        v40 = a1;
        v41 = 2114;
        v42 = @"BSRBSService.m";
        v43 = 1024;
        v44 = 131;
        v45 = 2114;
        v46 = v25;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v29 = v25;
      [v25 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8450B0);
    }

    os_unfair_lock_lock((a1 + 68));
    os_unfair_lock_lock((a1 + 64));
    v6 = [*(a1 + 40) objectForKey:v5];
    v7 = v6;
    if (v6)
    {
      if ([v6 containsObject:v4])
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"already tracking monitor for service %@ : %@", v5, v4];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v9 = NSStringFromSelector(sel_registerMonitor_);
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          *buf = 138544642;
          v36 = v9;
          v37 = 2114;
          v38 = v11;
          v39 = 2048;
          v40 = a1;
          v41 = 2114;
          v42 = @"BSRBSService.m";
          v43 = 1024;
          v44 = 137;
          v45 = 2114;
          v46 = v8;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v12 = v8;
        [v8 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A844D14);
      }
    }

    else
    {
      v7 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
      [*(a1 + 40) setObject:? forKey:?];
    }

    [v7 addObject:v4];
    objc_initWeak(buf, v4);
    os_unfair_lock_unlock((a1 + 64));
    v13 = [*(a1 + 56) objectForKey:v5];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = MEMORY[0x1E695E0F8];
    }

    [v4 serialCallOut_didUpdateEndpointEnvironments:v15];

    os_unfair_lock_unlock((a1 + 68));
    objc_initWeak(&location, a1);
    v16 = objc_alloc(MEMORY[0x1E698E778]);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __32__BSRBSService_registerMonitor___block_invoke;
    v30[3] = &unk_1E7520848;
    objc_copyWeak(&v32, &location);
    objc_copyWeak(&v33, buf);
    v17 = v5;
    v31 = v17;
    a1 = [v16 initWithIdentifier:@"com.apple.boardservices.manager.monitor" forReason:v17 invalidationBlock:v30];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  v18 = *MEMORY[0x1E69E9840];

  return a1;
}

void __32__BSRBSService_registerMonitor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 16);
    v6 = [*(WeakRetained + 5) objectForKey:v5];
    v7 = v6;
    if (v4)
    {
      [v6 removeObject:v4];
    }

    if (![v7 count])
    {
      [*(WeakRetained + 5) removeObjectForKey:v5];
    }

    os_unfair_lock_unlock(WeakRetained + 16);
  }
}

- (void)_callOutLock_noteEndpointsChangedForServices:(os_unfair_lock_s *)a1
{
  v53 = *MEMORY[0x1E69E9840];
  v26 = a2;
  if (a1)
  {
    os_unfair_lock_assert_owner(a1 + 17);
    v25 = [MEMORY[0x1E695DF90] dictionary];
    v35 = a1;
    os_unfair_lock_lock(a1 + 16);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v26;
    v28 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (!v28)
    {
      goto LABEL_37;
    }

    v29 = *v47;
    while (1)
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v46 + 1) + 8 * i);
        v30 = [*&v35[8]._os_unfair_lock_opaque objectForKey:?];
        v3 = [v30 count];
        v4 = *&v35[14]._os_unfair_lock_opaque;
        if (v3)
        {
          v32 = [v4 objectForKey:v33];
          v5 = [v32 mutableCopy];
          v6 = v5;
          if (v5)
          {
            v7 = v5;
          }

          else
          {
            v7 = [MEMORY[0x1E695DF90] dictionary];
          }

          v36 = v7;

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v34 = v30;
          v8 = [v34 countByEnumeratingWithState:&v42 objects:v51 count:16];
          if (v8)
          {
            v9 = *v43;
            do
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v43 != v9)
                {
                  objc_enumerationMutation(v34);
                }

                v11 = *(*(&v42 + 1) + 8 * j);
                v12 = [MEMORY[0x1E695DFA8] set];
                v40 = 0u;
                v41 = 0u;
                v38 = 0u;
                v39 = 0u;
                v13 = [*&v35[6]._os_unfair_lock_opaque objectForKey:v11];
                v14 = [v13 countByEnumeratingWithState:&v38 objects:v50 count:16];
                if (v14)
                {
                  v15 = *v39;
                  do
                  {
                    for (k = 0; k != v14; ++k)
                    {
                      if (*v39 != v15)
                      {
                        objc_enumerationMutation(v13);
                      }

                      v17 = [*(*(&v38 + 1) + 8 * k) environment];
                      if (v17)
                      {
                        [v12 addObject:v17];
                      }
                    }

                    v14 = [v13 countByEnumeratingWithState:&v38 objects:v50 count:16];
                  }

                  while (v14);
                }

                v18 = [v36 objectForKey:v11];
                v19 = BSEqualObjects();

                if ((v19 & 1) == 0)
                {
                  v20 = [v12 copy];
                  [v36 setObject:v20 forKey:v11];
                }
              }

              v8 = [v34 countByEnumeratingWithState:&v42 objects:v51 count:16];
            }

            while (v8);
          }

          v21 = v36;
          if (BSEqualObjects())
          {
            goto LABEL_34;
          }

          v22 = *&v35[14]._os_unfair_lock_opaque;
          v23 = [v36 copy];
          [v22 setObject:v23 forKey:v33];
        }

        else
        {
          [v4 removeObjectForKey:v33];
        }

        v32 = [*&v35[10]._os_unfair_lock_opaque objectForKey:v33];
        if (![v32 count])
        {
          goto LABEL_35;
        }

        v21 = [v32 copy];
        [v25 setObject:v21 forKey:v33];
LABEL_34:

LABEL_35:
      }

      v28 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (!v28)
      {
LABEL_37:

        os_unfair_lock_unlock(v35 + 16);
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __61__BSRBSService__callOutLock_noteEndpointsChangedForServices___block_invoke;
        v37[3] = &unk_1E7520870;
        v37[4] = v35;
        [v25 enumerateKeysAndObjectsUsingBlock:v37];

        break;
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __61__BSRBSService__callOutLock_noteEndpointsChangedForServices___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(*(a1 + 32) + 56) objectForKey:a2];
  v7 = v6;
  v8 = MEMORY[0x1E695E0F8];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v13++) serialCallOut_didUpdateEndpointEnvironments:{v9, v15}];
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)a3 didReceiveInheritances:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v22 = a4;
  v4 = BSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v31 = v22;
    _os_log_debug_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEBUG, "BSServiceMonitor received inheritances %{public}@", buf, 0xCu);
  }

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v22;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        v11 = BSServiceEndpointGrantNamespace();
        v12 = [v10 endowmentNamespace];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          v14 = [v10 endowment];
          v15 = [BSServiceConnectionEndpoint _endpointFromEndowmentRepresentation:v14];
          if (v15)
          {
            [v5 setObject:v15 forKey:v10];
          }

          else
          {
            v16 = BSServiceLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v31 = v10;
              v32 = 2112;
              v33 = v14;
              _os_log_error_impl(&dword_19A821000, v16, OS_LOG_TYPE_ERROR, "Ignoring invalid service endowment : %@ -> %@", buf, 0x16u);
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    os_unfair_lock_lock(&self->_callOutLock);
    os_unfair_lock_lock(&self->_lock);
    v17 = [MEMORY[0x1E695DFA8] set];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __47__BSRBSService_service_didReceiveInheritances___block_invoke;
    v23[3] = &unk_1E7520898;
    v23[4] = self;
    v25 = a2;
    v18 = v17;
    v24 = v18;
    [v5 enumerateKeysAndObjectsUsingBlock:v23];
    os_unfair_lock_unlock(&self->_lock);
    [(BSRBSService *)self _callOutLock_noteEndpointsChangedForServices:v18];
    os_unfair_lock_unlock(&self->_callOutLock);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __47__BSRBSService_service_didReceiveInheritances___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v30 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 16) objectForKey:v30];

  if (v6)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = [*(*(a1 + 32) + 16) objectForKey:v30];
    v23 = [v21 stringWithFormat:@"already have an endpoint for inheritance=%@ : old=%@ new=%@", v30, v22, v5];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(*(a1 + 48));
      v25 = *(a1 + 32);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = *(a1 + 32);
      *buf = 138544642;
      v32 = v24;
      v33 = 2114;
      v34 = v27;
      v35 = 2048;
      v36 = v28;
      v37 = 2114;
      v38 = @"BSRBSService.m";
      v39 = 1024;
      v40 = 239;
      v41 = 2114;
      v42 = v23;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v29 = v23;
    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A846090);
  }

  v7 = [*(*(a1 + 32) + 24) objectForKey:v5];
  v8 = [v7 count];
  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = *(v9 + 16);
    v11 = [v7 anyObject];
    v12 = [v10 objectForKey:v11];

    [*(*(a1 + 32) + 16) setObject:v12 forKey:v30];
    [v7 addObject:v30];
    v13 = *(a1 + 40);
    v14 = [v12 service];
    [v13 addObject:v14];
  }

  else
  {
    v15 = *(v9 + 24);
    v16 = [MEMORY[0x1E695DFA8] setWithObject:v30];
    [v15 setObject:v16 forKey:v5];

    [*(*(a1 + 32) + 16) setObject:v5 forKey:v30];
    v12 = [v5 service];
    [*(a1 + 40) addObject:v12];
    v17 = [*(*(a1 + 32) + 32) objectForKey:v12];
    v14 = v17;
    if (v17)
    {
      [v17 addObject:v5];
    }

    else
    {
      v18 = *(*(a1 + 32) + 32);
      v19 = [MEMORY[0x1E695DFA8] setWithObject:v5];
      [v18 setObject:v19 forKey:v12];

      v14 = 0;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)a3 didLoseInheritances:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_callOutLock);
  os_unfair_lock_lock(&self->_lock);
  v7 = [MEMORY[0x1E695DFA8] set];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v46 count:16];
  if (v9)
  {
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_lock_inheritanceToEndpoint objectForKey:v12];
        if (v13)
        {
          v14 = [(NSMutableDictionary *)self->_lock_endpointToInheritances objectForKey:v13];
          if (([v14 containsObject:v12] & 1) == 0)
          {
            v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"endpointToInheritances is missing an entry for an inheritance in inheritanceToEndpoint : inheritance=%@ endpoint=%@", v12, v13];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v19 = NSStringFromSelector(a2);
              v20 = objc_opt_class();
              v21 = NSStringFromClass(v20);
              *buf = 138544642;
              v35 = v19;
              v36 = 2114;
              v37 = v21;
              v38 = 2048;
              v39 = self;
              v40 = 2114;
              v41 = @"BSRBSService.m";
              v42 = 1024;
              v43 = 273;
              v44 = 2114;
              v45 = v18;
              _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v22 = v18;
            [v18 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x19A8464A0);
          }

          [(NSMutableDictionary *)self->_lock_inheritanceToEndpoint removeObjectForKey:v12];
          if ([v14 count] < 2)
          {
            [(NSMutableDictionary *)self->_lock_endpointToInheritances removeObjectForKey:v13];
            v15 = [v13 service];
            v16 = [(NSMutableDictionary *)self->_lock_serviceIdentifierToEndpoints objectForKey:v15];
            if (([v16 containsObject:v13] & 1) == 0)
            {
              v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"serviceIdentifierToEndpoints is missing an entry for a lost endpoint : service=%@ endpoint=%@", v15, v13];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v24 = NSStringFromSelector(a2);
                v25 = objc_opt_class();
                v26 = NSStringFromClass(v25);
                *buf = 138544642;
                v35 = v24;
                v36 = 2114;
                v37 = v26;
                v38 = 2048;
                v39 = self;
                v40 = 2114;
                v41 = @"BSRBSService.m";
                v42 = 1024;
                v43 = 284;
                v44 = 2114;
                v45 = v23;
                _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
              }

              v27 = v23;
              [v23 UTF8String];
              _bs_set_crash_log_message();
              __break(0);
              JUMPOUT(0x19A84659CLL);
            }

            if ([v16 count] < 2)
            {
              [(NSMutableDictionary *)self->_lock_serviceIdentifierToEndpoints removeObjectForKey:v15];
            }

            else
            {
              [v16 removeObject:v13];
            }

            [v7 addObject:v15];
          }

          else
          {
            [v14 removeObject:v12];
            v15 = [v13 service];
            [v7 addObject:v15];
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v30 objects:v46 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_lock);
  [(BSRBSService *)self _callOutLock_noteEndpointsChangedForServices:v7];
  os_unfair_lock_unlock(&self->_callOutLock);

  v17 = *MEMORY[0x1E69E9840];
}

+ (__CFString)debugDescriptionWithMultilinePrefix:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_autoreleasePoolPush();
  v4 = [BSRBSService _sharedInstanceCreatingIfNecessary:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 debugDescriptionWithMultilinePrefix:v2];
  }

  else
  {
    v6 = @"<not-initialized>";
  }

  objc_autoreleasePoolPop(v3);

  return v6;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BSRBSService *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v6 = v5;
  if (v4)
  {
    [v5 setActiveMultilinePrefix:v4];
  }

  return v6;
}

- (id)succinctDescription
{
  v2 = [(BSRBSService *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = [(BSRBSService *)self descriptionBuilderWithMultilinePrefix:v4];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_lock_endpointToInheritances allKeys];
  v6 = [v5 mutableCopy];

  [v6 sortUsingSelector:sel_compare_];
  v7 = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  v36 = 0u;
  v8 = [(NSMutableDictionary *)self->_lock_serviceIdentifierToMonitors allKeys];
  v9 = [v8 sortedArrayUsingSelector:sel_compare_];

  v10 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [(NSMutableDictionary *)self->_lock_serviceIdentifierToMonitors objectForKey:*(*(&v36 + 1) + 8 * i), v26];
        v14 = [v13 allObjects];
        [v7 addObjectsFromArray:v14];
      }

      v10 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v10);
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __52__BSRBSService_debugDescriptionWithMultilinePrefix___block_invoke;
  v32[3] = &unk_1E75205A8;
  v15 = v26;
  v33 = v15;
  v16 = v6;
  v34 = v16;
  v17 = v7;
  v35 = v17;
  v18 = [v15 modifyProem:v32];
  v19 = [v15 activeMultilinePrefix];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __52__BSRBSService_debugDescriptionWithMultilinePrefix___block_invoke_2;
  v27[3] = &unk_1E75208C0;
  v20 = v15;
  v28 = v20;
  v21 = v16;
  v29 = v21;
  v30 = self;
  v22 = v17;
  v31 = v22;
  [v20 appendBodySectionWithName:0 multilinePrefix:v19 block:v27];

  os_unfair_lock_unlock(&self->_lock);
  v23 = [v20 build];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

void __52__BSRBSService_debugDescriptionWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__BSRBSService_debugDescriptionWithMultilinePrefix___block_invoke_3;
  v9[3] = &unk_1E75205A8;
  v10 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v11 = v4;
  v12 = v5;
  [v2 appendBodySectionWithName:@"inheritedEndpoints" multilinePrefix:v3 block:v9];

  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v8 = [v6 activeMultilinePrefix];
  [v6 appendArraySection:v7 withName:@"monitors" multilinePrefix:v8 skipIfEmpty:0];
}

void __52__BSRBSService_debugDescriptionWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v8 = [*(*(a1 + 48) + 24) objectForKey:{v6, v13}];
        v9 = [v8 allObjects];
        v10 = [v6 description];
        v11 = [*(a1 + 40) activeMultilinePrefix];
        [v7 appendArraySection:v9 withName:v10 multilinePrefix:v11 skipIfEmpty:0];
      }

      v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end