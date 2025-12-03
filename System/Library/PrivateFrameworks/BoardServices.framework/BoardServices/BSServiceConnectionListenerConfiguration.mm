@interface BSServiceConnectionListenerConfiguration
+ (id)configurationWithDomain:(id)domain service:(id)service;
+ (id)configurationWithDomain:(id)domain service:(id)service instance:(id)instance;
- (os_unfair_lock_s)initWithConfigurator:(void *)configurator;
- (void)setDelegate:(id)delegate;
- (void)setDomain:(id)domain;
- (void)setInstance:(id)instance;
- (void)setService:(id)service;
@end

@implementation BSServiceConnectionListenerConfiguration

- (os_unfair_lock_s)initWithConfigurator:(void *)configurator
{
  v26 = *MEMORY[0x1E69E9840];
  if (configurator)
  {
    if (!a2)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(sel_initWithConfigurator_);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v15 = v9;
        v16 = 2114;
        v17 = v11;
        v18 = 2048;
        configuratorCopy = configurator;
        v20 = 2114;
        v21 = @"BSServiceConnectionListener.m";
        v22 = 1024;
        v23 = 266;
        v24 = 2114;
        v25 = v8;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v12 = v8;
      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86E034);
    }

    v13.receiver = configurator;
    v13.super_class = BSServiceConnectionListenerConfiguration;
    v4 = objc_msgSendSuper2(&v13, sel_init);
    v5 = v4;
    if (v4)
    {
      v4[10]._os_unfair_lock_opaque = 0;
      os_unfair_lock_lock(v4 + 10);
      (*(a2 + 16))(a2, v5);
      LOBYTE(v5[11]._os_unfair_lock_opaque) = 1;
      os_unfair_lock_unlock(v5 + 10);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)configurationWithDomain:(id)domain service:(id)service
{
  v6 = [BSServiceConnectionListenerConfiguration alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__BSServiceConnectionListenerConfiguration_configurationWithDomain_service___block_invoke;
  v9[3] = &unk_1E7521148;
  v9[4] = domain;
  v9[5] = service;
  v7 = [(BSServiceConnectionListenerConfiguration *)v6 initWithConfigurator:v9];

  return v7;
}

uint64_t __76__BSServiceConnectionListenerConfiguration_configurationWithDomain_service___block_invoke(uint64_t a1, void *a2)
{
  [a2 setDomain:*(a1 + 32)];
  v4 = *(a1 + 40);

  return [a2 setService:v4];
}

+ (id)configurationWithDomain:(id)domain service:(id)service instance:(id)instance
{
  v8 = [BSServiceConnectionListenerConfiguration alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__BSServiceConnectionListenerConfiguration_configurationWithDomain_service_instance___block_invoke;
  v11[3] = &unk_1E7521170;
  v11[4] = domain;
  v11[5] = service;
  v11[6] = instance;
  v9 = [(BSServiceConnectionListenerConfiguration *)v8 initWithConfigurator:v11];

  return v9;
}

uint64_t __85__BSServiceConnectionListenerConfiguration_configurationWithDomain_service_instance___block_invoke(void *a1, void *a2)
{
  [a2 setDomain:a1[4]];
  [a2 setService:a1[5]];
  v4 = a1[6];

  return [a2 setInstance:v4];
}

- (void)setDomain:(id)domain
{
  v45 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v6 = MEMORY[0x1E696AEC0];
  if (!domainCopy)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"domain", v12];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v34 = v14;
      v35 = 2114;
      v36 = v16;
      v37 = 2048;
      selfCopy3 = self;
      v39 = 2114;
      v40 = @"BSServiceConnectionListener.m";
      v41 = 1024;
      v42 = 304;
      v43 = 2114;
      v44 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86E814);
  }

  v7 = domainCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = MEMORY[0x1E696AEC0];
    classForCoder = [v7 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v20 = NSStringFromClass(classForCoder);
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [v18 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"domain", v20, v22];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v34 = v24;
      v35 = 2114;
      v36 = v26;
      v37 = 2048;
      selfCopy3 = self;
      v39 = 2114;
      v40 = @"BSServiceConnectionListener.m";
      v41 = 1024;
      v42 = 304;
      v43 = 2114;
      v44 = v23;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v27 = v23;
    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86E958);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_configured)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to set domain after configuration has been sealed"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v34 = v29;
      v35 = 2114;
      v36 = v31;
      v37 = 2048;
      selfCopy3 = self;
      v39 = 2114;
      v40 = @"BSServiceConnectionListener.m";
      v41 = 1024;
      v42 = 306;
      v43 = 2114;
      v44 = v28;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v32 = v28;
    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86EA4CLL);
  }

  v8 = [v7 copy];
  lock_domain = self->_lock_domain;
  self->_lock_domain = v8;
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setService:(id)service
{
  v45 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v6 = MEMORY[0x1E696AEC0];
  if (!serviceCopy)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"service", v12];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v34 = v14;
      v35 = 2114;
      v36 = v16;
      v37 = 2048;
      selfCopy3 = self;
      v39 = 2114;
      v40 = @"BSServiceConnectionListener.m";
      v41 = 1024;
      v42 = 310;
      v43 = 2114;
      v44 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86ECD4);
  }

  v7 = serviceCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = MEMORY[0x1E696AEC0];
    classForCoder = [v7 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v20 = NSStringFromClass(classForCoder);
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [v18 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"service", v20, v22];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v34 = v24;
      v35 = 2114;
      v36 = v26;
      v37 = 2048;
      selfCopy3 = self;
      v39 = 2114;
      v40 = @"BSServiceConnectionListener.m";
      v41 = 1024;
      v42 = 310;
      v43 = 2114;
      v44 = v23;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v27 = v23;
    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86EE18);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_configured)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to set service after configuration has been sealed"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v34 = v29;
      v35 = 2114;
      v36 = v31;
      v37 = 2048;
      selfCopy3 = self;
      v39 = 2114;
      v40 = @"BSServiceConnectionListener.m";
      v41 = 1024;
      v42 = 312;
      v43 = 2114;
      v44 = v28;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v32 = v28;
    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86EF0CLL);
  }

  v8 = [v7 copy];
  lock_service = self->_lock_service;
  self->_lock_service = v8;
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setInstance:(id)instance
{
  v45 = *MEMORY[0x1E69E9840];
  instanceCopy = instance;
  v6 = MEMORY[0x1E696AEC0];
  if (!instanceCopy)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"instance", v12];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v34 = v14;
      v35 = 2114;
      v36 = v16;
      v37 = 2048;
      selfCopy3 = self;
      v39 = 2114;
      v40 = @"BSServiceConnectionListener.m";
      v41 = 1024;
      v42 = 316;
      v43 = 2114;
      v44 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86F194);
  }

  v7 = instanceCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = MEMORY[0x1E696AEC0];
    classForCoder = [v7 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v20 = NSStringFromClass(classForCoder);
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [v18 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"instance", v20, v22];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v34 = v24;
      v35 = 2114;
      v36 = v26;
      v37 = 2048;
      selfCopy3 = self;
      v39 = 2114;
      v40 = @"BSServiceConnectionListener.m";
      v41 = 1024;
      v42 = 316;
      v43 = 2114;
      v44 = v23;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v27 = v23;
    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86F2D8);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_configured)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to set instance after configuration has been sealed"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v34 = v29;
      v35 = 2114;
      v36 = v31;
      v37 = 2048;
      selfCopy3 = self;
      v39 = 2114;
      v40 = @"BSServiceConnectionListener.m";
      v41 = 1024;
      v42 = 318;
      v43 = 2114;
      v44 = v28;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v32 = v28;
    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86F3CCLL);
  }

  v8 = [v7 copy];
  lock_instance = self->_lock_instance;
  self->_lock_instance = v8;
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)delegate
{
  v29 = *MEMORY[0x1E69E9840];
  if (!delegate)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"delegate"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v18 = v8;
      v19 = 2114;
      v20 = v10;
      v21 = 2048;
      selfCopy2 = self;
      v23 = 2114;
      v24 = @"BSServiceConnectionListener.m";
      v25 = 1024;
      v26 = 322;
      v27 = 2114;
      v28 = v7;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86F5FCLL);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_configured)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to set delegate after configuration has been sealed"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v18 = v13;
      v19 = 2114;
      v20 = v15;
      v21 = 2048;
      selfCopy2 = self;
      v23 = 2114;
      v24 = @"BSServiceConnectionListener.m";
      v25 = 1024;
      v26 = 324;
      v27 = 2114;
      v28 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86F6F4);
  }

  objc_storeStrong(&self->_lock_delegate, delegate);
  v6 = *MEMORY[0x1E69E9840];
}

@end