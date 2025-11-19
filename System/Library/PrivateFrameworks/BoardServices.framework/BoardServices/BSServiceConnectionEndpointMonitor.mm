@interface BSServiceConnectionEndpointMonitor
+ (id)monitorForService:(id)a3;
- (BSServiceConnectionEndpointMonitor)init;
- (BSServiceConnectionEndpointMonitorDelegate)delegate;
- (NSString)description;
- (id)endpointsForEnvironment:(id)a3;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)serialCallOut_didUpdateEndpointEnvironments:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation BSServiceConnectionEndpointMonitor

- (void)activate
{
  v36 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot activate after invalidation"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v25 = v10;
      v26 = 2114;
      v27 = v12;
      v28 = 2048;
      v29 = self;
      v30 = 2114;
      v31 = @"BSServiceConnectionEndpointMonitor.m";
      v32 = 1024;
      v33 = 83;
      v34 = 2114;
      v35 = v9;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82931CLL);
  }

  if (self->_lock_activated)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot activate twice"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v25 = v15;
      v26 = 2114;
      v27 = v17;
      v28 = 2048;
      v29 = self;
      v30 = 2114;
      v31 = @"BSServiceConnectionEndpointMonitor.m";
      v32 = 1024;
      v33 = 84;
      v34 = 2114;
      v35 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A829414);
  }

  self->_lock_activated = 1;
  os_unfair_lock_lock(&self->_registrationLock);
  os_unfair_lock_unlock(&self->_lock);
  v4 = BSServiceInjectionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    service = self->_service;
    *buf = 138412290;
    v25 = service;
    _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEFAULT, "activating monitor for service %@", buf, 0xCu);
  }

  v6 = [(BSRBSService *)self->_RBSService registerMonitor:?];
  registrationLock_assertion = self->_registrationLock_assertion;
  self->_registrationLock_assertion = v6;

  if (!self->_registrationLock_assertion)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to register monitor for service %@", self->_service];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v25 = v20;
      v26 = 2114;
      v27 = v22;
      v28 = 2048;
      v29 = self;
      v30 = 2114;
      v31 = @"BSServiceConnectionEndpointMonitor.m";
      v32 = 1024;
      v33 = 91;
      v34 = 2114;
      v35 = v19;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v23 = v19;
    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A829514);
  }

  os_unfair_lock_unlock(&self->_registrationLock);
  v8 = *MEMORY[0x1E69E9840];
}

- (BSServiceConnectionEndpointMonitor)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BSServiceConnectionEndpointMonitor"];
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
    v15 = self;
    v16 = 2114;
    v17 = @"BSServiceConnectionEndpointMonitor.m";
    v18 = 1024;
    v19 = 37;
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

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call invalidate before dealloc"];
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
      v16 = self;
      v17 = 2114;
      v18 = @"BSServiceConnectionEndpointMonitor.m";
      v19 = 1024;
      v20 = 55;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v9 = v5;
    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86B53CLL);
  }

  os_unfair_lock_unlock(&self->_lock);
  v10.receiver = self;
  v10.super_class = BSServiceConnectionEndpointMonitor;
  [(BSServiceConnectionEndpointMonitor *)&v10 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

+ (id)monitorForService:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [BSServiceConnectionEndpointMonitor alloc];
  v5 = objc_opt_self();
  v6 = [(BSRBSService *)v5 _sharedInstanceCreatingIfNecessary:?];
  v7 = v6;
  v8 = v3;
  if (v4)
  {
    v9 = v7;
    NSClassFromString(&cfstr_Bsrbsservice.isa);
    if (!v9)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(sel__initWithRBSService_service_);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *v37 = 138544642;
        *&v37[4] = v18;
        *&v37[12] = 2114;
        *&v37[14] = v20;
        v38 = 2048;
        v39 = v4;
        v40 = 2114;
        v41 = @"BSServiceConnectionEndpointMonitor.m";
        v42 = 1024;
        v43 = 42;
        v44 = 2114;
        v45 = v17;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v37, 0x3Au);
      }

      v21 = v17;
      [v17 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86B818);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSRBSServiceClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = NSStringFromSelector(sel__initWithRBSService_service_);
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *v37 = 138544642;
        *&v37[4] = v23;
        *&v37[12] = 2114;
        *&v37[14] = v25;
        v38 = 2048;
        v39 = v4;
        v40 = 2114;
        v41 = @"BSServiceConnectionEndpointMonitor.m";
        v42 = 1024;
        v43 = 42;
        v44 = 2114;
        v45 = v22;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v37, 0x3Au);
      }

      v26 = v22;
      [v22 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86B91CLL);
    }

    v10 = v8;
    NSClassFromString(&cfstr_Nsstring.isa);
    if (!v10)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v28 = NSStringFromSelector(sel__initWithRBSService_service_);
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        *v37 = 138544642;
        *&v37[4] = v28;
        *&v37[12] = 2114;
        *&v37[14] = v30;
        v38 = 2048;
        v39 = v4;
        v40 = 2114;
        v41 = @"BSServiceConnectionEndpointMonitor.m";
        v42 = 1024;
        v43 = 43;
        v44 = 2114;
        v45 = v27;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v37, 0x3Au);
      }

      v31 = v27;
      [v27 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86BA20);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v33 = NSStringFromSelector(sel__initWithRBSService_service_);
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        *v37 = 138544642;
        *&v37[4] = v33;
        *&v37[12] = 2114;
        *&v37[14] = v35;
        v38 = 2048;
        v39 = v4;
        v40 = 2114;
        v41 = @"BSServiceConnectionEndpointMonitor.m";
        v42 = 1024;
        v43 = 43;
        v44 = 2114;
        v45 = v32;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v37, 0x3Au);
      }

      v36 = v32;
      [v32 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86BB24);
    }

    *v37 = v4;
    *&v37[8] = BSServiceConnectionEndpointMonitor;
    v11 = objc_msgSendSuper2(v37, sel_init);
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, v6);
      v13 = [v10 copy];
      v14 = v12[8];
      v12[8] = v13;

      v12[6] = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BSServiceConnectionEndpointMonitorDelegate)delegate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_delegate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDelegate:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_activated)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot set the delegate after activation"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v13 = 138544642;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2048;
      v18 = self;
      v19 = 2114;
      v20 = @"BSServiceConnectionEndpointMonitor.m";
      v21 = 1024;
      v22 = 76;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86BDECLL);
  }

  lock_delegate = self->_lock_delegate;
  self->_lock_delegate = v5;

  v7 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  v10 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v3 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_lock_invalidated = 1;
    lock_delegate = self->_lock_delegate;
    self->_lock_delegate = 0;

    os_unfair_lock_lock(&self->_registrationLock);
    os_unfair_lock_unlock(&self->_lock);
    [(BSInvalidatable *)self->_registrationLock_assertion invalidate];
    v5 = BSServiceInjectionLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      service = self->_service;
      v8 = 138412290;
      v9 = service;
      _os_log_impl(&dword_19A821000, v5, OS_LOG_TYPE_DEFAULT, "invalidated monitor for service %@", &v8, 0xCu);
    }

    os_unfair_lock_unlock(&self->_registrationLock);
    v7 = *MEMORY[0x1E69E9840];
  }
}

- (id)endpointsForEnvironment:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"environment"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v33 = v15;
      v34 = 2114;
      v35 = v17;
      v36 = 2048;
      v37 = self;
      v38 = 2114;
      v39 = @"BSServiceConnectionEndpointMonitor.m";
      v40 = 1024;
      v41 = 111;
      v42 = 2114;
      v43 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86C18CLL);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot query after invalidation"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v33 = v20;
      v34 = 2114;
      v35 = v22;
      v36 = 2048;
      v37 = self;
      v38 = 2114;
      v39 = @"BSServiceConnectionEndpointMonitor.m";
      v40 = 1024;
      v41 = 114;
      v42 = 2114;
      v43 = v19;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v23 = v19;
    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86C284);
  }

  if (!self->_lock_activated)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot query before activation"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138544642;
      v33 = v25;
      v34 = 2114;
      v35 = v27;
      v36 = 2048;
      v37 = self;
      v38 = 2114;
      v39 = @"BSServiceConnectionEndpointMonitor.m";
      v40 = 1024;
      v41 = 115;
      v42 = 2114;
      v43 = v24;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v28 = v24;
    [v24 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86C37CLL);
  }

  v6 = [MEMORY[0x1E695DFA8] set];
  lock_endpointToEnvironments = self->_lock_endpointToEnvironments;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __62__BSServiceConnectionEndpointMonitor_endpointsForEnvironment___block_invoke;
  v29[3] = &unk_1E75210D0;
  v8 = v5;
  v30 = v8;
  v9 = v6;
  v31 = v9;
  [(NSDictionary *)lock_endpointToEnvironments enumerateKeysAndObjectsUsingBlock:v29];
  os_unfair_lock_unlock(&self->_lock);
  v10 = v31;
  v11 = v9;

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

void __62__BSServiceConnectionEndpointMonitor_endpointsForEnvironment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 containsObject:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (void)serialCallOut_didUpdateEndpointEnvironments:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v29 = v6;
  if (!v6)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"endpointToEnvironments", 0];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138544642;
      v46 = v25;
      v47 = 2114;
      v48 = v27;
      v49 = 2048;
      v50 = self;
      v51 = 2114;
      v52 = @"BSServiceConnectionEndpointMonitor.m";
      v53 = 1024;
      v54 = 129;
      v55 = 2114;
      v56 = v24;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v28 = v24;
    [v24 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86C884);
  }

  v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v6, "count")}];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = v29;
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v9)
  {
    v10 = *v39;
    do
    {
      v11 = 0;
      do
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addObject:*(*(&v38 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v9);
  }

  v12 = [v7 mutableCopy];
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_lock_endpointToEnvironments, a3);
  v13 = self->_lock_delegate;
  v14 = self->_lock_serialCallOut_endpoints;
  objc_storeStrong(&self->_lock_serialCallOut_endpoints, v7);
  os_unfair_lock_unlock(&self->_lock);
  if (v14)
  {
    [v12 minusSet:v14];
  }

  [(NSMutableSet *)v14 minusSet:v7];
  if (v13)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = v14;
    v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v16)
    {
      v17 = *v35;
      do
      {
        v18 = 0;
        do
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [(BSServiceConnectionEndpointMonitorDelegate *)v13 monitor:self willLoseEndpoint:*(*(&v34 + 1) + 8 * v18++)];
        }

        while (v16 != v18);
        v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v16);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = v12;
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v20)
    {
      v21 = *v31;
      do
      {
        v22 = 0;
        do
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [(BSServiceConnectionEndpointMonitorDelegate *)v13 monitor:self didReceiveEndpoint:*(*(&v30 + 1) + 8 * v22++)];
        }

        while (v20 != v22);
        v20 = [v19 countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v20);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_service withName:@"service"];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v4 = @"invalidated";
LABEL_7:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_8;
  }

  if (!self->_lock_activated)
  {
    v4 = @"initializing";
    goto LABEL_7;
  }

  v5 = self->_lock_delegate;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"<%@:%p>", v8, v5];
    [v3 appendString:v9 withName:@"delegate"];

    goto LABEL_9;
  }

  v4 = @"active";
LABEL_8:
  v5 = 0;
  [v3 appendString:v4 withName:0];
LABEL_9:
  v10 = [v3 build];

  return v10;
}

@end