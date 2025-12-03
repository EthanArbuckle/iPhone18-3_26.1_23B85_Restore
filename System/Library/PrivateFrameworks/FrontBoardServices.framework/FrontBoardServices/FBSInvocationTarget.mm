@interface FBSInvocationTarget
+ (void)targetWithInterface:(void *)interface handler:;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation FBSInvocationTarget

+ (void)targetWithInterface:(void *)interface handler:
{
  v4 = a2;
  interfaceCopy = interface;
  objc_opt_self();
  if (!v4)
  {
    [FBSInvocationTarget targetWithInterface:? handler:?];
  }

  if (!interfaceCopy)
  {
    [FBSInvocationTarget targetWithInterface:? handler:?];
  }

  v6 = objc_opt_new();
  v7 = _interfaceFromProtocol(v4);
  v8 = v6[1];
  v6[1] = v7;

  v9 = [interfaceCopy copy];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v5 = [FBSInvocation alloc];
  v6 = [(FBSInvocation *)v5 initWithInvocation:invocationCopy interface:self->_interface];
  handler = self->_handler;
  context = [v6 context];
  LOBYTE(handler) = handler[2](handler, v5, context);

  if ((handler & 1) == 0)
  {
    v9 = FBLogSceneInvocation();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(FBSInvocationTarget *)invocationCopy forwardInvocation:v9];
    }
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  p_interface = &self->_interface;
  v6 = [(BSObjCProtocol *)self->_interface methodForSelector:?];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x1E695DF68];
    encoding = [v6 encoding];
    v10 = [v8 signatureWithObjCTypes:{objc_msgSend(encoding, "UTF8String")}];
  }

  else
  {
    v11 = FBLogSceneInvocation();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(FBSInvocationTarget *)selector methodSignatureForSelector:v11];
    }

    v13.receiver = self;
    v13.super_class = FBSInvocationTarget;
    v10 = [(FBSInvocationTarget *)&v13 methodSignatureForSelector:selector];
  }

  return v10;
}

+ (void)targetWithInterface:(char *)a1 handler:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"handler", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)targetWithInterface:(char *)a1 handler:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"protocol", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)forwardInvocation:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector([a1 selector]);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1A2DBB000, a2, OS_LOG_TYPE_ERROR, "Invocation of @selector(%@) was dropped.", &v4, 0xCu);
}

- (void)methodSignatureForSelector:(NSObject *)a3 .cold.1(const char *a1, id *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = [*a2 name];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1A2DBB000, a3, OS_LOG_TYPE_ERROR, "No method found for @selector(%{public}@) in <%{public}@>", &v7, 0x16u);
}

@end