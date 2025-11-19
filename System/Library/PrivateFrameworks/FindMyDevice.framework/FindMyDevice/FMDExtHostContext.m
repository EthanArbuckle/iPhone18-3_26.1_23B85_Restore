@interface FMDExtHostContext
- (BOOL)respondsToSelector:(SEL)a3;
- (FMDExtHostContext)init;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation FMDExtHostContext

- (FMDExtHostContext)init
{
  v3 = LogCategory_Extensions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF650000, v3, OS_LOG_TYPE_DEFAULT, "#ext - alloced host context instance", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = FMDExtHostContext;
  return [(FMDExtHostContext *)&v5 init];
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = FMDExtHostContext;
  if ([(FMDExtHostContext *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(FMDExtHostContext *)self accessoryDelegate];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = FMDExtHostContext;
  v5 = [(FMDExtHostContext *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    v6 = [(FMDExtHostContext *)self accessoryDelegate];
    v5 = [v6 methodSignatureForSelector:a3];
  }

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FMDExtHostContext *)self accessoryDelegate];
  [v4 selector];
  v6 = objc_opt_respondsToSelector();

  v7 = LogCategory_Extensions();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(FMDExtHostContext *)self accessoryDelegate];
      v11 = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "HostContext forwardInvocation %@ to delegate %@", &v11, 0x16u);
    }

    v8 = [(FMDExtHostContext *)self accessoryDelegate];
    [v4 invokeWithTarget:v8];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(FMDExtHostContext *)v4 forwardInvocation:v8];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)forwardInvocation:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector([a1 selector]);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1DF650000, a2, OS_LOG_TYPE_ERROR, "Invocation %@ not supported skipping completion block", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end