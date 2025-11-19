@interface BSXPCServiceConnectionContext
- (BSXPCServiceConnectionContext)init;
- (NSString)endpointDescription;
- (id)description;
- (void)_initWithProem:(void *)a1;
@end

@implementation BSXPCServiceConnectionContext

- (BSXPCServiceConnectionContext)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on BSXPCServiceConnectionContext"];
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
    v17 = @"BSXPCServiceConnectionContext.m";
    v18 = 1024;
    v19 = 23;
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

- (void)_initWithProem:(void *)a1
{
  v3 = a2;
  v8.receiver = a1;
  v8.super_class = BSXPCServiceConnectionContext;
  v4 = objc_msgSendSuper2(&v8, sel_init);
  if (v4)
  {
    v5 = [v3 copy];
    v6 = v4[1];
    v4[1] = v5;
  }

  return v4;
}

- (NSString)endpointDescription
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)description
{
  if (self)
  {
    proem = self->_proem;
  }

  else
  {
    proem = 0;
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = proem;
  v6 = [(BSXPCServiceConnectionContext *)self endpointDescription];
  v7 = [v4 stringWithFormat:@"%@%@", v5, v6];

  return v7;
}

@end