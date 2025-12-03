@interface LNLoggingProxy
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)respondsToSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)value;
- (void)forwardInvocation:(id)invocation;
@end

@implementation LNLoggingProxy

- (id)value
{
  WeakRetained = objc_loadWeakRetained(&self->_value);

  return WeakRetained;
}

- (BOOL)isKindOfClass:(Class)class
{
  value = [(LNLoggingProxy *)self value];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  value = [(LNLoggingProxy *)self value];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (void)forwardInvocation:(id)invocation
{
  v16 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  v5 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    value = [(LNLoggingProxy *)self value];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector([invocationCopy selector]);
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "Forwarding invocation [%{public}@ %{public}@]", &v12, 0x16u);
  }

  value2 = [(LNLoggingProxy *)self value];
  [invocationCopy invokeWithTarget:value2];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  value = [(LNLoggingProxy *)self value];
  v5 = [value methodSignatureForSelector:selector];

  return v5;
}

@end