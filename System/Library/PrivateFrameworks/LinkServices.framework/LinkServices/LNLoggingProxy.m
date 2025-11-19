@interface LNLoggingProxy
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)value;
- (void)forwardInvocation:(id)a3;
@end

@implementation LNLoggingProxy

- (id)value
{
  WeakRetained = objc_loadWeakRetained(&self->_value);

  return WeakRetained;
}

- (BOOL)isKindOfClass:(Class)a3
{
  v3 = [(LNLoggingProxy *)self value];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v3 = [(LNLoggingProxy *)self value];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (void)forwardInvocation:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(LNLoggingProxy *)self value];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector([v4 selector]);
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "Forwarding invocation [%{public}@ %{public}@]", &v12, 0x16u);
  }

  v10 = [(LNLoggingProxy *)self value];
  [v4 invokeWithTarget:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [(LNLoggingProxy *)self value];
  v5 = [v4 methodSignatureForSelector:a3];

  return v5;
}

@end