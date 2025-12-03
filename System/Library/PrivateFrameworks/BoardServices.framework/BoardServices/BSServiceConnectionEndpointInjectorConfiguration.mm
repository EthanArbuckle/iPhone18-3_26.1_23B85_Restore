@interface BSServiceConnectionEndpointInjectorConfiguration
- (BSServiceConnectionEndpointInjectorConfiguration)init;
- (void)addEndpoint:(id)endpoint;
- (void)setAdditionalAttributes:(id)attributes;
- (void)setDomain:(id)domain;
- (void)setInheritingEnvironment:(id)environment;
- (void)setInstance:(id)instance;
- (void)setService:(id)service;
- (void)setTarget:(id)target;
@end

@implementation BSServiceConnectionEndpointInjectorConfiguration

- (BSServiceConnectionEndpointInjectorConfiguration)init
{
  v5.receiver = self;
  v5.super_class = BSServiceConnectionEndpointInjectorConfiguration;
  v2 = [(BSServiceConnectionEndpointInjectorConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(&v2->_lock);
  }

  return v3;
}

- (void)setTarget:(id)target
{
  v39 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  if (!targetCopy)
  {
    v9 = MEMORY[0x1E696AEC0];
    getRBSTargetClass();
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"target", v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v28 = v13;
      v29 = 2114;
      v30 = v15;
      v31 = 2048;
      selfCopy2 = self;
      v33 = 2114;
      v34 = @"BSServiceConnectionEndpointInjector.m";
      v35 = 1024;
      v36 = 257;
      v37 = 2114;
      v38 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8310E4);
  }

  getRBSTargetClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696AEC0];
    classForCoder = [targetCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v19 = NSStringFromClass(classForCoder);
    getRBSTargetClass();
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v17 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"target", v19, v21];

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
      selfCopy2 = self;
      v33 = 2114;
      v34 = @"BSServiceConnectionEndpointInjector.m";
      v35 = 1024;
      v36 = 257;
      v37 = 2114;
      v38 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83122CLL);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v6 = [targetCopy copy];
  lock_target = self->_lock_target;
  self->_lock_target = v6;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setDomain:(id)domain
{
  v39 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v6 = MEMORY[0x1E696AEC0];
  if (!domainCopy)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"domain", v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v28 = v13;
      v29 = 2114;
      v30 = v15;
      v31 = 2048;
      selfCopy2 = self;
      v33 = 2114;
      v34 = @"BSServiceConnectionEndpointInjector.m";
      v35 = 1024;
      v36 = 263;
      v37 = 2114;
      v38 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A831480);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696AEC0];
    classForCoder = [domainCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v19 = NSStringFromClass(classForCoder);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v17 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"domain", v19, v21];

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
      selfCopy2 = self;
      v33 = 2114;
      v34 = @"BSServiceConnectionEndpointInjector.m";
      v35 = 1024;
      v36 = 263;
      v37 = 2114;
      v38 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8315C4);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v7 = [domainCopy copy];
  lock_domain = self->_lock_domain;
  self->_lock_domain = v7;
  v9 = *MEMORY[0x1E69E9840];
}

- (void)setService:(id)service
{
  v39 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v6 = MEMORY[0x1E696AEC0];
  if (!serviceCopy)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"service", v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v28 = v13;
      v29 = 2114;
      v30 = v15;
      v31 = 2048;
      selfCopy2 = self;
      v33 = 2114;
      v34 = @"BSServiceConnectionEndpointInjector.m";
      v35 = 1024;
      v36 = 268;
      v37 = 2114;
      v38 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A831818);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696AEC0];
    classForCoder = [serviceCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v19 = NSStringFromClass(classForCoder);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v17 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"service", v19, v21];

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
      selfCopy2 = self;
      v33 = 2114;
      v34 = @"BSServiceConnectionEndpointInjector.m";
      v35 = 1024;
      v36 = 268;
      v37 = 2114;
      v38 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83195CLL);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v7 = [serviceCopy copy];
  lock_service = self->_lock_service;
  self->_lock_service = v7;
  v9 = *MEMORY[0x1E69E9840];
}

- (void)setInstance:(id)instance
{
  v39 = *MEMORY[0x1E69E9840];
  instanceCopy = instance;
  v6 = MEMORY[0x1E696AEC0];
  if (!instanceCopy)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"instance", v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v28 = v13;
      v29 = 2114;
      v30 = v15;
      v31 = 2048;
      selfCopy2 = self;
      v33 = 2114;
      v34 = @"BSServiceConnectionEndpointInjector.m";
      v35 = 1024;
      v36 = 273;
      v37 = 2114;
      v38 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A831BB0);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696AEC0];
    classForCoder = [instanceCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v19 = NSStringFromClass(classForCoder);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v17 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"instance", v19, v21];

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
      selfCopy2 = self;
      v33 = 2114;
      v34 = @"BSServiceConnectionEndpointInjector.m";
      v35 = 1024;
      v36 = 273;
      v37 = 2114;
      v38 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A831CF4);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v7 = [instanceCopy copy];
  lock_instance = self->_lock_instance;
  self->_lock_instance = v7;
  v9 = *MEMORY[0x1E69E9840];
}

- (void)addEndpoint:(id)endpoint
{
  v41 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  if (!endpointCopy)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"endpoint", v13];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v30 = v15;
      v31 = 2114;
      v32 = v17;
      v33 = 2048;
      selfCopy2 = self;
      v35 = 2114;
      v36 = @"BSServiceConnectionEndpointInjector.m";
      v37 = 1024;
      v38 = 279;
      v39 = 2114;
      v40 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A831FA4);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = MEMORY[0x1E696AEC0];
    classForCoder = [endpointCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v21 = NSStringFromClass(classForCoder);
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [v19 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"endpoint", v21, v23];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138544642;
      v30 = v25;
      v31 = 2114;
      v32 = v27;
      v33 = 2048;
      selfCopy2 = self;
      v35 = 2114;
      v36 = @"BSServiceConnectionEndpointInjector.m";
      v37 = 1024;
      v38 = 279;
      v39 = 2114;
      v40 = v24;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v28 = v24;
    [v24 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8320ECLL);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  lock_endpoints = self->_lock_endpoints;
  if (lock_endpoints)
  {
    v7 = *MEMORY[0x1E69E9840];

    [(NSMutableOrderedSet *)lock_endpoints addObject:endpointCopy];
  }

  else
  {
    v8 = [MEMORY[0x1E695DFA0] orderedSetWithObject:endpointCopy];
    v9 = self->_lock_endpoints;
    self->_lock_endpoints = v8;
    v10 = *MEMORY[0x1E69E9840];
  }
}

- (void)setInheritingEnvironment:(id)environment
{
  v39 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  v6 = MEMORY[0x1E696AEC0];
  if (!environmentCopy)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"inheritingEnvironment", v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v28 = v13;
      v29 = 2114;
      v30 = v15;
      v31 = 2048;
      selfCopy2 = self;
      v33 = 2114;
      v34 = @"BSServiceConnectionEndpointInjector.m";
      v35 = 1024;
      v36 = 289;
      v37 = 2114;
      v38 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A832340);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696AEC0];
    classForCoder = [environmentCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v19 = NSStringFromClass(classForCoder);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v17 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"inheritingEnvironment", v19, v21];

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
      selfCopy2 = self;
      v33 = 2114;
      v34 = @"BSServiceConnectionEndpointInjector.m";
      v35 = 1024;
      v36 = 289;
      v37 = 2114;
      v38 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A832484);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v7 = [environmentCopy copy];
  lock_inheritingEnvironment = self->_lock_inheritingEnvironment;
  self->_lock_inheritingEnvironment = v7;
  v9 = *MEMORY[0x1E69E9840];
}

- (void)setAdditionalAttributes:(id)attributes
{
  v67 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  if (!attributesCopy)
  {
    v32 = MEMORY[0x1E696AEC0];
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v35 = [v32 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"additionalAttributes", v34];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(a2);
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      *buf = 138544642;
      v56 = v36;
      v57 = 2114;
      v58 = v38;
      v59 = 2048;
      selfCopy4 = self;
      v61 = 2114;
      v62 = @"BSServiceConnectionEndpointInjector.m";
      v63 = 1024;
      v64 = 294;
      v65 = 2114;
      v66 = v35;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v39 = v35;
    [v35 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8329F8);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = MEMORY[0x1E696AEC0];
    classForCoder = [attributesCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v42 = NSStringFromClass(classForCoder);
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    v45 = [v40 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"additionalAttributes", v42, v44];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v46 = NSStringFromSelector(a2);
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      *buf = 138544642;
      v56 = v46;
      v57 = 2114;
      v58 = v48;
      v59 = 2048;
      selfCopy4 = self;
      v61 = 2114;
      v62 = @"BSServiceConnectionEndpointInjector.m";
      v63 = 1024;
      v64 = 294;
      v65 = 2114;
      v66 = v45;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v49 = v45;
    [v45 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A832B40);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = attributesCopy;
  v7 = [v6 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v7)
  {
    v8 = *v51;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v50 + 1) + 8 * i);
        if (!v10)
        {
          v14 = MEMORY[0x1E696AEC0];
          getRBSAttributeClass();
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          v17 = [v14 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"attribute", v16];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v18 = NSStringFromSelector(a2);
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            *buf = 138544642;
            v56 = v18;
            v57 = 2114;
            v58 = v20;
            v59 = 2048;
            selfCopy4 = self;
            v61 = 2114;
            v62 = @"BSServiceConnectionEndpointInjector.m";
            v63 = 1024;
            v64 = 296;
            v65 = 2114;
            v66 = v17;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v21 = v17;
          [v17 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A832790);
        }

        getRBSAttributeClass();
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v22 = MEMORY[0x1E696AEC0];
          classForCoder2 = [v10 classForCoder];
          if (!classForCoder2)
          {
            classForCoder2 = objc_opt_class();
          }

          v24 = NSStringFromClass(classForCoder2);
          getRBSAttributeClass();
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = [v22 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"attribute", v24, v26];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v28 = NSStringFromSelector(a2);
            v29 = objc_opt_class();
            v30 = NSStringFromClass(v29);
            *buf = 138544642;
            v56 = v28;
            v57 = 2114;
            v58 = v30;
            v59 = 2048;
            selfCopy4 = self;
            v61 = 2114;
            v62 = @"BSServiceConnectionEndpointInjector.m";
            v63 = 1024;
            v64 = 296;
            v65 = 2114;
            v66 = v27;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v31 = v27;
          [v27 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A8328D8);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v7);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v11 = [v6 copy];
  lock_additionalAttributes = self->_lock_additionalAttributes;
  self->_lock_additionalAttributes = v11;

  v13 = *MEMORY[0x1E69E9840];
}

@end