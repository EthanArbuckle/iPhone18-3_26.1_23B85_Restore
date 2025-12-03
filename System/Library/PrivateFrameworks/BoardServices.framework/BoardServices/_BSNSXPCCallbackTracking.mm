@interface _BSNSXPCCallbackTracking
- (_BSNSXPCCallbackTracking)init;
- (uint64_t)isInvalidationStillPending;
- (void)captureConnection;
- (void)dealloc;
- (void)sendError:(BOOL)error isOnQueue:;
@end

@implementation _BSNSXPCCallbackTracking

- (uint64_t)isInvalidationStillPending
{
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    v2 = *(self + 44);
    os_unfair_lock_unlock((self + 40));
    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (_BSNSXPCCallbackTracking)init
{
  v8.receiver = self;
  v8.super_class = _BSNSXPCCallbackTracking;
  v2 = [(_BSNSXPCCallbackTracking *)&v8 init];
  v3 = v2;
  if (v2)
  {
    lock_connectionReference = v2->_lock_connectionReference;
    v2->_lock_connectionReference = 0;

    lock_connection = v3->_lock_connection;
    v3->_lock_connection = 0;

    lock_errorHandler = v3->_lock_errorHandler;
    v3->_lock_errorHandler = 0;

    objc_storeWeak(&v3->_lock_observer, 0);
    v3->_lock._os_unfair_lock_opaque = 0;
    v3->_lock_invalidated = 0;
  }

  return v3;
}

- (void)captureConnection
{
  v29 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    v2 = *(self + 8);
    if (!v2)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_connectionReference != nil"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(sel_captureConnection);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138544642;
        v18 = v7;
        v19 = 2114;
        v20 = v9;
        v21 = 2048;
        selfCopy2 = self;
        v23 = 2114;
        v24 = @"BSNSXPCTransport.m";
        v25 = 1024;
        v26 = 178;
        v27 = 2114;
        v28 = v6;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v10 = v6;
      [v6 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82DE90);
    }

    if ((*(self + 44) & 1) == 0 && !*(self + 16))
    {
      object = [v2 object];
      v4 = *(self + 16);
      *(self + 16) = object;

      if (!*(self + 16))
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_connection != nil"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v12 = NSStringFromSelector(sel_captureConnection);
          v13 = objc_opt_class();
          NSStringFromClass(v13);
          *buf = 138544642;
          v18 = v12;
          v14 = v19 = 2114;
          v20 = v14;
          v21 = 2048;
          selfCopy2 = self;
          v23 = 2114;
          v24 = @"BSNSXPCTransport.m";
          v25 = 1024;
          v26 = 181;
          v27 = 2114;
          v28 = v11;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v15 = v11;
        [v11 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A82DF94);
      }
    }

    v5 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock((self + 40));
  }

  else
  {
    v16 = *MEMORY[0x1E69E9840];
  }
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  if (!self->_lock_invalidated)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_BSNSXPCCallbackTracking must invalidate before dealloc"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"BSNSXPCTransport.m";
      v19 = 1024;
      v20 = 150;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v9 = v5;
    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82E688);
  }

  v10.receiver = self;
  v10.super_class = _BSNSXPCCallbackTracking;
  [(_BSNSXPCCallbackTracking *)&v10 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)sendError:(BOOL)error isOnQueue:
{
  v32 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    if (*(self + 44) == 1)
    {
      os_unfair_lock_unlock((self + 40));
      v6 = 0;
      v7 = 0;
      WeakRetained = 0;
      v9 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v9 = MEMORY[0x19A908200](*(self + 24));
    WeakRetained = objc_loadWeakRetained((self + 32));

    if (WeakRetained)
    {
      WeakRetained = objc_loadWeakRetained((self + 32));
      v10 = *(self + 16);
      if (v10)
      {
        object = v10;
      }

      else
      {
        object = [*(self + 8) object];
      }

      v7 = object;
      v12 = [_BSNSXPCConnectionEvent alloc];
      if (v12)
      {
        *v23 = v12;
        *&v23[8] = _BSNSXPCConnectionEvent;
        v12 = objc_msgSendSuper2(v23, sel_init);
        if (v12)
        {
          v12->_code = a2;
          v12->_onQueue = error;
        }
      }

      v6 = v12;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    if (a2 != 2)
    {
      *(self + 44) = 1;
      v13 = *(self + 24);
      *(self + 24) = 0;

      objc_storeWeak((self + 32), 0);
      v14 = *(self + 16);
      *(self + 16) = 0;
    }

    os_unfair_lock_unlock((self + 40));
    if (!v9)
    {
LABEL_23:
      if (WeakRetained)
      {
        if (!v7)
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot call observer with event %@ because connection has deallocated : %@", v6, *(self + 8)];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v19 = NSStringFromSelector(sel_sendError_isOnQueue_);
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            *v23 = 138544642;
            *&v23[4] = v19;
            *&v23[12] = 2114;
            *&v23[14] = v21;
            v24 = 2048;
            selfCopy = self;
            v26 = 2114;
            v27 = @"BSNSXPCTransport.m";
            v28 = 1024;
            v29 = 220;
            v30 = 2114;
            v31 = v18;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v23, 0x3Au);
          }

          v22 = v18;
          [v18 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A838708);
        }

        [WeakRetained connection:v7 didHaltWithEvent:v6];
      }

      goto LABEL_26;
    }

    if (a2 == 2)
    {
      v15 = MEMORY[0x1E69E9E18];
    }

    else
    {
      if (a2 == 4)
      {
        v15 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v15 = MEMORY[0x1E69E9E20];
    }

    v16 = v15;
    (v9)[2](v9, v15);
    goto LABEL_22;
  }

LABEL_27:
  v17 = *MEMORY[0x1E69E9840];
}

@end