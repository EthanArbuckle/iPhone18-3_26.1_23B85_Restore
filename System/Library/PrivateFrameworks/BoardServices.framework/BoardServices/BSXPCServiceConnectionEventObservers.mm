@interface BSXPCServiceConnectionEventObservers
- (BSXPCServiceConnectionEventObservers)init;
- (void)clearRevocations;
- (void)consumeRevocations:(uint64_t)a1;
@end

@implementation BSXPCServiceConnectionEventObservers

- (void)clearRevocations
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 16));
    v2 = *(a1 + 8);
    *(a1 + 8) = 0;

    os_unfair_lock_unlock((a1 + 16));
  }
}

- (BSXPCServiceConnectionEventObservers)init
{
  v3.receiver = self;
  v3.super_class = BSXPCServiceConnectionEventObservers;
  result = [(BSXPCServiceConnectionEventObservers *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)consumeRevocations:(uint64_t)a1
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a2)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"outRevocations"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(sel_consumeRevocations_);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        v16 = v10;
        v17 = 2114;
        v18 = v12;
        v19 = 2048;
        v20 = a1;
        v21 = 2114;
        v22 = @"BSXPCServiceConnection.m";
        v23 = 1024;
        v24 = 1586;
        v25 = 2114;
        v26 = v9;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v13 = v9;
      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A877B38);
    }

    os_unfair_lock_lock((a1 + 16));
    if ([*(a1 + 8) count])
    {
      v4 = *a2;
      if (!*a2)
      {
        v4 = [MEMORY[0x1E695DFA8] set];
        v5 = v4;
        *a2 = v4;
      }

      v6 = NSAllMapTableValues(*(a1 + 8));
      [v4 addObjectsFromArray:v6];
    }

    v7 = *(a1 + 8);
    *(a1 + 8) = 0;

    v8 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock((a1 + 16));
  }

  else
  {
    v14 = *MEMORY[0x1E69E9840];
  }
}

void __69__BSXPCServiceConnectionEventObservers_addRevocationBlock_forReason___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [a2 assertion];
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    [*(WeakRetained + 1) removeObjectForKey:v3];
    os_unfair_lock_unlock(WeakRetained + 4);
  }
}

@end