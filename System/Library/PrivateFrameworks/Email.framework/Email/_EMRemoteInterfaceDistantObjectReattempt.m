@interface _EMRemoteInterfaceDistantObjectReattempt
+ (id)recordedAttemptWithOriginalInvocation:(id)a3 target:(id)a4 error:(id)a5;
- (_EMRemoteInterfaceDistantObjectReattempt)initWithOriginalInvocation:(id)a3 target:(id)a4 error:(id)a5;
- (void)perform;
@end

@implementation _EMRemoteInterfaceDistantObjectReattempt

+ (id)recordedAttemptWithOriginalInvocation:(id)a3 target:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithOriginalInvocation:v8 target:v9 error:v10];

  return v11;
}

- (_EMRemoteInterfaceDistantObjectReattempt)initWithOriginalInvocation:(id)a3 target:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _EMRemoteInterfaceDistantObjectReattempt;
  v12 = [(_EMRemoteInterfaceDistantObjectReattempt *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_invocation, a3);
    [(NSInvocation *)v13->_invocation setTarget:v10];
    [(NSInvocation *)v13->_invocation retainArguments];
    objc_storeStrong(&v13->_error, a5);
  }

  return v13;
}

- (void)perform
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = +[EMRemoteConnection log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    invocation = self->_invocation;
    v5 = NSStringFromSelector([(NSInvocation *)invocation selector]);
    v6 = [(NSInvocation *)self->_invocation target];
    v8 = 138544130;
    v9 = self;
    v10 = 2114;
    v11 = invocation;
    v12 = 2114;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: reattempting invocation: %{public}@, selector: %{public}@, target: %p", &v8, 0x2Au);
  }

  [(NSInvocation *)self->_invocation invoke];
  v7 = *MEMORY[0x1E69E9840];
}

@end