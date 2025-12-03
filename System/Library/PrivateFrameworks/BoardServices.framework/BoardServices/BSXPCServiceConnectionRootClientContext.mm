@interface BSXPCServiceConnectionRootClientContext
+ (void)uniqueClientContextWithEndpoint:(uint64_t)endpoint;
- (BOOL)isNonLaunching;
@end

@implementation BSXPCServiceConnectionRootClientContext

- (BOOL)isNonLaunching
{
  endpoint = self->_endpoint;
  if (endpoint)
  {
    LOBYTE(endpoint) = endpoint->_nonLaunching;
  }

  return endpoint & 1;
}

+ (void)uniqueClientContextWithEndpoint:(uint64_t)endpoint
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  v4 = v2;
  if (!v4)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"endpoint", v16];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(sel_uniqueClientContextWithEndpoint_);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138544642;
      v33 = v18;
      v34 = 2114;
      v35 = v20;
      v36 = 2048;
      v37 = v3;
      v38 = 2114;
      v39 = @"BSXPCServiceConnectionContext.m";
      v40 = 1024;
      v41 = 227;
      v42 = 2114;
      v43 = v17;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v21 = v17;
    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A860BDCLL);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = MEMORY[0x1E696AEC0];
    classForCoder = [v4 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v24 = NSStringFromClass(classForCoder);
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v22 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"endpoint", v24, v26];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(sel_uniqueClientContextWithEndpoint_);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      v33 = v28;
      v34 = 2114;
      v35 = v30;
      v36 = 2048;
      v37 = v3;
      v38 = 2114;
      v39 = @"BSXPCServiceConnectionContext.m";
      v40 = 1024;
      v41 = 227;
      v42 = 2114;
      v43 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A860D24);
  }

  v5 = [BSXPCServiceConnectionRootClientContext alloc];
  v6 = v4;
  v7 = v6;
  if (v5)
  {
    v8 = v6[4];
    v9 = [(BSXPCServiceConnectionRootContext *)v5 _initWithType:v8 eDesc:?];

    if (v9)
    {
      v10 = [v7 copy];
      v11 = v9[5];
      v9[5] = v10;
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

@end