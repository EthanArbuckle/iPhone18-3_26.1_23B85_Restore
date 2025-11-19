@interface BSServiceConnectionListener
+ (BSServiceConnectionListener)_listenerWithManager:(uint64_t)a3 configuration:(uint64_t)a4 handler:;
+ (id)extendBootstrap;
+ (id)listenerWithConfiguration:(id)a3 handler:(id)a4;
+ (id)listenerWithConfigurator:(id)a3;
- (BSServiceConnectionEndpoint)endpoint;
- (BSServiceConnectionListener)init;
- (BSServiceSpecification)specification;
- (NSString)description;
- (NSString)domain;
- (NSString)service;
- (void)activate;
- (void)dealloc;
- (void)didReceiveConnection:(id)a3;
- (void)invalidate;
@end

@implementation BSServiceConnectionListener

- (BSServiceConnectionEndpoint)endpoint
{
  os_unfair_lock_lock(&self->_lock);
  lock_endpoint = self->_lock_endpoint;
  if (!lock_endpoint)
  {
    if (self->_lock_invalidated)
    {
      service = self->_service;
      if (service)
      {
        service = service->_specification;
      }

      v5 = service;
      v6 = [(BSService *)v5 identifier];
      v7 = [BSServiceConnectionEndpoint nullEndpointForService:v6 instance:self->_instance];
    }

    else
    {
      v8 = self->_service;
      if (v8)
      {
        v8 = v8->_specification;
      }

      domain = self->_domain;
      v5 = v8;
      v6 = [(BSService *)v5 identifier];
      v7 = [BSServiceConnectionEndpoint _endpointForDomain:v6 service:self->_instance instance:?];
    }

    v10 = self->_lock_endpoint;
    self->_lock_endpoint = v7;

    lock_endpoint = self->_lock_endpoint;
  }

  v11 = lock_endpoint;
  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (void)activate
{
  v39 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot activate after invalidation"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v28 = v12;
      v29 = 2114;
      v30 = v14;
      v31 = 2048;
      v32 = self;
      v33 = 2114;
      v34 = @"BSServiceConnectionListener.m";
      v35 = 1024;
      v36 = 145;
      v37 = 2114;
      v38 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v15 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82B524);
  }

  if (self->_lock_activated)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot activate twice"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v28 = v17;
      v29 = 2114;
      v30 = v19;
      v31 = 2048;
      v32 = self;
      v33 = 2114;
      v34 = @"BSServiceConnectionListener.m";
      v35 = 1024;
      v36 = 146;
      v37 = 2114;
      v38 = v16;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v20 = v16;
    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82B61CLL);
  }

  self->_lock_activated = 1;
  os_unfair_lock_lock(&self->_registrationLock);
  os_unfair_lock_unlock(&self->_lock);
  v4 = BSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    instance = self->_instance;
    if (!instance)
    {
      instance = @"<any>";
    }

    domain = self->_domain;
    service = self->_service;
    *buf = 138412802;
    v28 = instance;
    v29 = 2112;
    v30 = service;
    v31 = 2112;
    v32 = domain;
    _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_INFO, "activating listener for instance %@ of service %@ in domain %@", buf, 0x20u);
  }

  v8 = [(BSService *)self->_service registerListener:self->_instance forInstance:?];
  registrationLock_assertion = self->_registrationLock_assertion;
  self->_registrationLock_assertion = v8;

  if (!self->_registrationLock_assertion)
  {
    v21 = self->_instance;
    if (!v21)
    {
      v21 = @"<any>";
    }

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to register listener for instance %@ of service %@ in domain %@", v21, self->_service, self->_domain];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      v28 = v23;
      v29 = 2114;
      v30 = v25;
      v31 = 2048;
      v32 = self;
      v33 = 2114;
      v34 = @"BSServiceConnectionListener.m";
      v35 = 1024;
      v36 = 153;
      v37 = 2114;
      v38 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82B734);
  }

  os_unfair_lock_unlock(&self->_registrationLock);
  v10 = *MEMORY[0x1E69E9840];
}

- (BSServiceConnectionListener)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BSServiceConnectionListener"];
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
    v17 = @"BSServiceConnectionListener.m";
    v18 = 1024;
    v19 = 63;
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
      v18 = @"BSServiceConnectionListener.m";
      v19 = 1024;
      v20 = 87;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v9 = v5;
    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86CE00);
  }

  os_unfair_lock_unlock(&self->_lock);
  v10.receiver = self;
  v10.super_class = BSServiceConnectionListener;
  [(BSServiceConnectionListener *)&v10 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

+ (id)listenerWithConfiguration:(id)a3 handler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v19 = v13;
      v20 = 2114;
      v21 = v15;
      v22 = 2048;
      v23 = a1;
      v24 = 2114;
      v25 = @"BSServiceConnectionListener.m";
      v26 = 1024;
      v27 = 95;
      v28 = 2114;
      v29 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86D064);
  }

  v6 = +[BSServiceManager sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__BSServiceConnectionListener_listenerWithConfiguration_handler___block_invoke;
  v17[3] = &unk_1E75210F8;
  v17[4] = a4;
  v7 = [BSServiceConnectionListener _listenerWithManager:v6 configuration:a3 handler:v17];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (BSServiceConnectionListener)_listenerWithManager:(uint64_t)a3 configuration:(uint64_t)a4 handler:
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_self();
  if (!a2)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must configure a manager"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(sel__listenerWithManager_configuration_handler_);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *v52 = 138544642;
      *&v52[4] = v23;
      *&v52[12] = 2114;
      *&v52[14] = v25;
      v53 = 2048;
      v54 = v7;
      v55 = 2114;
      v56 = @"BSServiceConnectionListener.m";
      v57 = 1024;
      v58 = 193;
      v59 = 2114;
      v60 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v52, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86D33CLL);
  }

  if (!a3 || (v8 = *(a3 + 8)) == 0)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must configure a domain"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(sel__listenerWithManager_configuration_handler_);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *v52 = 138544642;
      *&v52[4] = v28;
      *&v52[12] = 2114;
      *&v52[14] = v30;
      v53 = 2048;
      v54 = v7;
      v55 = 2114;
      v56 = @"BSServiceConnectionListener.m";
      v57 = 1024;
      v58 = 195;
      v59 = 2114;
      v60 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v52, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86D434);
  }

  v9 = v8;
  v10 = [(BSServiceManager *)a2 domainWithIdentifier:v8];
  if (!v10)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to find domain '%@' : manager=%@", v9, a2];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(sel__listenerWithManager_configuration_handler_);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *v52 = 138544642;
      *&v52[4] = v33;
      *&v52[12] = 2114;
      *&v52[14] = v35;
      v53 = 2048;
      v54 = v7;
      v55 = 2114;
      v56 = @"BSServiceConnectionListener.m";
      v57 = 1024;
      v58 = 197;
      v59 = 2114;
      v60 = v32;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v52, 0x3Au);
    }

    v36 = v32;
    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86D530);
  }

  v11 = *(a3 + 16);
  if (!v11)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must configure a service"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(sel__listenerWithManager_configuration_handler_);
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *v52 = 138544642;
      *&v52[4] = v38;
      *&v52[12] = 2114;
      *&v52[14] = v40;
      v53 = 2048;
      v54 = v7;
      v55 = 2114;
      v56 = @"BSServiceConnectionListener.m";
      v57 = 1024;
      v58 = 199;
      v59 = 2114;
      v60 = v37;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v52, 0x3Au);
    }

    v41 = v37;
    [v37 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86D628);
  }

  v12 = [(BSServiceDomain *)v10 serviceWithIdentifier:v11];
  if (!v12)
  {
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to find service '%@' in domain '%@' : manager=%@", v11, v9, a2];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v43 = NSStringFromSelector(sel__listenerWithManager_configuration_handler_);
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      *v52 = 138544642;
      *&v52[4] = v43;
      *&v52[12] = 2114;
      *&v52[14] = v45;
      v53 = 2048;
      v54 = v7;
      v55 = 2114;
      v56 = @"BSServiceConnectionListener.m";
      v57 = 1024;
      v58 = 201;
      v59 = 2114;
      v60 = v42;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v52, 0x3Au);
    }

    v46 = v42;
    [v42 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86D728);
  }

  if (!a4)
  {
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v48 = NSStringFromSelector(sel__listenerWithManager_configuration_handler_);
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      *v52 = 138544642;
      *&v52[4] = v48;
      *&v52[12] = 2114;
      *&v52[14] = v50;
      v53 = 2048;
      v54 = v7;
      v55 = 2114;
      v56 = @"BSServiceConnectionListener.m";
      v57 = 1024;
      v58 = 202;
      v59 = 2114;
      v60 = v47;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v52, 0x3Au);
    }

    v51 = v47;
    [v47 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86D82CLL);
  }

  v13 = [BSServiceConnectionListener alloc];
  v14 = *(a3 + 24);
  v15 = v14;
  if (v13)
  {
    *v52 = v13;
    *&v52[8] = BSServiceConnectionListener;
    v16 = objc_msgSendSuper2(v52, sel_init);
    v13 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_domain, v10);
      objc_storeStrong(&v13->_service, v12);
      objc_storeStrong(&v13->_instance, v14);
      v17 = MEMORY[0x19A908200](a4);
      lock_handler = v13->_lock_handler;
      v13->_lock_handler = v17;

      *&v13->_lock_activated = 0;
      registrationLock_assertion = v13->_registrationLock_assertion;
      v13->_registrationLock_assertion = 0;
      *&v13->_lock._os_unfair_lock_opaque = 0;
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)listenerWithConfigurator:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = +[BSServiceManager sharedInstance];
  v5 = objc_opt_self();
  v6 = [[BSServiceConnectionListenerConfiguration alloc] initWithConfigurator:a3];
  v7 = v6;
  if (!v6 || (v8 = *&v6[8]._os_unfair_lock_opaque) == 0)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must configure a delegate"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(sel__listenerWithManager_legacyConfigurator_);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *v18 = 138544642;
      *&v18[4] = v14;
      *&v18[12] = 2114;
      *&v18[14] = v16;
      *&v18[22] = 2048;
      v19 = v5;
      *v20 = 2114;
      *&v20[2] = @"BSServiceConnectionListener.m";
      v21 = 1024;
      v22 = 184;
      v23 = 2114;
      v24 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v18, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86DB8CLL);
  }

  *v18 = MEMORY[0x1E69E9820];
  *&v18[8] = 3221225472;
  *&v18[16] = __71__BSServiceConnectionListener__listenerWithManager_legacyConfigurator___block_invoke;
  v19 = &unk_1E7521120;
  v9 = v8;
  *v20 = v9;
  v10 = [BSServiceConnectionListener _listenerWithManager:v4 configuration:v7 handler:v18];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (NSString)domain
{
  domain = self->_domain;
  if (domain)
  {
    domain = domain->_specification;
  }

  v3 = domain;
  v4 = [(BSServiceDomain *)v3 identifier];

  return v4;
}

- (NSString)service
{
  service = self->_service;
  if (service)
  {
    service = service->_specification;
  }

  v3 = service;
  v4 = [(BSService *)v3 identifier];

  return v4;
}

- (BSServiceSpecification)specification
{
  service = self->_service;
  if (service)
  {
    return service->_specification;
  }

  else
  {
    return 0;
  }
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v3 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_lock_invalidated = 1;
    lock_handler = self->_lock_handler;
    self->_lock_handler = 0;

    os_unfair_lock_lock(&self->_registrationLock);
    os_unfair_lock_unlock(&self->_lock);
    [(BSInvalidatable *)self->_registrationLock_assertion invalidate];
    v5 = BSServiceLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      domain = self->_domain;
      service = self->_service;
      v9 = 138412546;
      v10 = service;
      v11 = 2112;
      v12 = domain;
      _os_log_impl(&dword_19A821000, v5, OS_LOG_TYPE_INFO, "invalidated listener for service %@ in domain %@", &v9, 0x16u);
    }

    os_unfair_lock_unlock(&self->_registrationLock);
    v8 = *MEMORY[0x1E69E9840];
  }
}

+ (id)extendBootstrap
{
  v2 = +[BSServiceManager sharedInstance];
  v3 = [(BSServiceManager *)v2 extendAutomaticBootstrapCompletion];

  return v3;
}

void __71__BSServiceConnectionListener__listenerWithManager_legacyConfigurator___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = [a3 initiatingContext];
  [v5 listener:a2 didReceiveConnection:a3 withContext:?];
}

- (void)didReceiveConnection:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_activated && !self->_lock_invalidated)
  {
    v6 = MEMORY[0x19A908200](self->_lock_handler);
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      (v6)[2](v6, self, a3);
      goto LABEL_7;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v5 = BSServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = [a3 instance];
    domain = self->_domain;
    service = self->_service;
    v11 = 138413058;
    v12 = v8;
    v13 = 2112;
    v14 = service;
    v15 = 2112;
    v16 = domain;
    v17 = 2112;
    v18 = a3;
    _os_log_error_impl(&dword_19A821000, v5, OS_LOG_TYPE_ERROR, "invalidating connection to instance %@ of service %@ of domain %@ because there is no handler for it : %@", &v11, 0x2Au);
  }

  v6 = 0;
  [a3 invalidate];
LABEL_7:

  v7 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  domain = self->_domain;
  if (domain)
  {
    domain = domain->_specification;
  }

  v5 = domain;
  v6 = [(BSServiceDomain *)v5 identifier];
  [v3 appendString:v6 withName:@"domain"];

  service = self->_service;
  if (service)
  {
    service = service->_specification;
  }

  v8 = service;
  v9 = [(BSService *)v8 identifier];
  [v3 appendString:v9 withName:@"service"];

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v10 = @"invalidated";
  }

  else if (self->_lock_activated)
  {
    v10 = @"valid";
  }

  else
  {
    v10 = @"inactive";
  }

  os_unfair_lock_unlock(&self->_lock);
  [v3 appendString:v10 withName:0];
  v11 = [v3 build];

  return v11;
}

@end