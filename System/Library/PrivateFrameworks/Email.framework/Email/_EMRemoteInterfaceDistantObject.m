@interface _EMRemoteInterfaceDistantObject
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (_EMRemoteInterfaceDistantObject)initWithRemoteInterface:(id)a3 proxyGenerator:(id)a4 synchronous:(BOOL)a5 reattemptHandler:(id)a6;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)reattemptingRemoteObjectProxy;
- (id)reattemptingRemoteObjectProxyWithReattemptHandler:(id)a3;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)_forwardStackInvocation:(id)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation _EMRemoteInterfaceDistantObject

- (_EMRemoteInterfaceDistantObject)initWithRemoteInterface:(id)a3 proxyGenerator:(id)a4 synchronous:(BOOL)a5 reattemptHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = _EMRemoteInterfaceDistantObject;
  v14 = [(_EMRemoteInterfaceDistantObject *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_remoteInterface, a3);
    objc_storeStrong(&v15->_proxyGenerator, a4);
    v15->_synchronous = a5;
    v16 = [v13 copy];
    reattemptHandler = v15->_reattemptHandler;
    v15->_reattemptHandler = v16;
  }

  return v15;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _EMRemoteInterfaceDistantObject;
  if ([(_EMRemoteInterfaceDistantObject *)&v8 conformsToProtocol:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(EMRemoteConnection *)self->_remoteInterface protocol];
    v5 = protocol_conformsToProtocol(v6, v4);
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if ([(EMRemoteConnection *)self->_remoteInterface _respondsToRemoteSelector:?])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = _EMRemoteInterfaceDistantObject;
  return [(_EMRemoteInterfaceDistantObject *)&v6 respondsToSelector:a3];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v5 = [(EMRemoteConnection *)self->_remoteInterface _methodSignatureForRemoteSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _EMRemoteInterfaceDistantObject;
    v7 = [(_EMRemoteInterfaceDistantObject *)&v10 methodSignatureForSelector:a3];
  }

  v8 = v7;

  return v8;
}

- (void)forwardInvocation:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_proxyGenerator)
  {
    [(EMRemoteConnection *)self->_remoteInterface _sendInvocation:v4 withProxy:self];
  }

  else
  {
    v5 = +[EMRemoteConnection log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = self;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Client instance no longer valid. Skipping forwarding invocation %{public}@", &v10, 0x16u);
    }

    if (self->_reattemptHandler)
    {
      v6 = +[EMRemoteConnection log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543618;
        v11 = self;
        v12 = 2114;
        v13 = v4;
        _os_log_impl(&dword_1C6655000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Invoking reattemptHandler with EMConnectionInvalidated error for invocation %{public}@", &v10, 0x16u);
      }

      reattemptHandler = self->_reattemptHandler;
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EMErrorDomain" code:2 userInfo:0];
      reattemptHandler[2](reattemptHandler, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_forwardStackInvocation:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_proxyGenerator)
  {
    [(EMRemoteConnection *)self->_remoteInterface _sendInvocation:v4 withProxy:self];
  }

  else
  {
    v5 = +[EMRemoteConnection log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = self;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Client instance no longer valid. Skipping fowarding stack invocation %{public}@", &v10, 0x16u);
    }

    if (self->_reattemptHandler)
    {
      v6 = +[EMRemoteConnection log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543618;
        v11 = self;
        v12 = 2114;
        v13 = v4;
        _os_log_impl(&dword_1C6655000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Invoking reattemptHandler with EMConnectionInvalidated error for invocation %{public}@", &v10, 0x16u);
      }

      reattemptHandler = self->_reattemptHandler;
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EMErrorDomain" code:2 userInfo:0];
      reattemptHandler[2](reattemptHandler, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)reattemptingRemoteObjectProxy
{
  v3 = objc_alloc(objc_opt_class());
  remoteInterface = self->_remoteInterface;
  proxyGenerator = self->_proxyGenerator;
  v6 = defaultReattemptingHandlerForConnection(remoteInterface);
  v7 = [v3 initWithRemoteInterface:remoteInterface proxyGenerator:proxyGenerator synchronous:0 reattemptHandler:v6];

  return v7;
}

- (id)remoteObjectProxy
{
  v3 = objc_alloc(objc_opt_class());
  remoteInterface = self->_remoteInterface;
  proxyGenerator = self->_proxyGenerator;
  v6 = defaultNonReattemptingHandlerForConnection(remoteInterface);
  v7 = [v3 initWithRemoteInterface:remoteInterface proxyGenerator:proxyGenerator synchronous:0 reattemptHandler:v6];

  return v7;
}

- (id)reattemptingRemoteObjectProxyWithReattemptHandler:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRemoteInterface:self->_remoteInterface proxyGenerator:self->_proxyGenerator synchronous:0 reattemptHandler:v4];

  return v5;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  remoteInterface = self->_remoteInterface;
  proxyGenerator = self->_proxyGenerator;
  v8 = nonReattemptingHandlerForErrorHandler(v4);
  v9 = [v5 initWithRemoteInterface:remoteInterface proxyGenerator:proxyGenerator synchronous:0 reattemptHandler:v8];

  return v9;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  remoteInterface = self->_remoteInterface;
  proxyGenerator = self->_proxyGenerator;
  v8 = nonReattemptingHandlerForErrorHandler(v4);
  v9 = [v5 initWithRemoteInterface:remoteInterface proxyGenerator:proxyGenerator synchronous:1 reattemptHandler:v8];

  return v9;
}

@end