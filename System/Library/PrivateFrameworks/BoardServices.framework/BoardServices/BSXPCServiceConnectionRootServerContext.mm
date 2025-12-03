@interface BSXPCServiceConnectionRootServerContext
+ (void)uniqueServerContextWithEndpointDescription:(uint64_t)description;
@end

@implementation BSXPCServiceConnectionRootServerContext

+ (void)uniqueServerContextWithEndpointDescription:(uint64_t)description
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  v4 = v2;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v4)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(sel_uniqueServerContextWithEndpointDescription_);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v19 = v9;
      v20 = 2114;
      v21 = v11;
      v22 = 2048;
      v23 = v3;
      v24 = 2114;
      v25 = @"BSXPCServiceConnectionContext.m";
      v26 = 1024;
      v27 = 203;
      v28 = 2114;
      v29 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A860818);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(sel_uniqueServerContextWithEndpointDescription_);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v19 = v14;
      v20 = 2114;
      v21 = v16;
      v22 = 2048;
      v23 = v3;
      v24 = 2114;
      v25 = @"BSXPCServiceConnectionContext.m";
      v26 = 1024;
      v27 = 203;
      v28 = 2114;
      v29 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86091CLL);
  }

  v5 = [(BSXPCServiceConnectionRootContext *)[BSXPCServiceConnectionRootServerContext alloc] _initWithType:v4 eDesc:?];
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end