@interface _EMRemoteInterfaceDistantObject
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)respondsToSelector:(SEL)selector;
- (_EMRemoteInterfaceDistantObject)initWithRemoteInterface:(id)interface proxyGenerator:(id)generator synchronous:(BOOL)synchronous reattemptHandler:(id)handler;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)reattemptingRemoteObjectProxy;
- (id)reattemptingRemoteObjectProxyWithReattemptHandler:(id)handler;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)_forwardStackInvocation:(id)invocation;
- (void)forwardInvocation:(id)invocation;
@end

@implementation _EMRemoteInterfaceDistantObject

- (_EMRemoteInterfaceDistantObject)initWithRemoteInterface:(id)interface proxyGenerator:(id)generator synchronous:(BOOL)synchronous reattemptHandler:(id)handler
{
  interfaceCopy = interface;
  generatorCopy = generator;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = _EMRemoteInterfaceDistantObject;
  v14 = [(_EMRemoteInterfaceDistantObject *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_remoteInterface, interface);
    objc_storeStrong(&v15->_proxyGenerator, generator);
    v15->_synchronous = synchronous;
    v16 = [handlerCopy copy];
    reattemptHandler = v15->_reattemptHandler;
    v15->_reattemptHandler = v16;
  }

  return v15;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v8.receiver = self;
  v8.super_class = _EMRemoteInterfaceDistantObject;
  if ([(_EMRemoteInterfaceDistantObject *)&v8 conformsToProtocol:protocolCopy])
  {
    v5 = 1;
  }

  else
  {
    protocol = [(EMRemoteConnection *)self->_remoteInterface protocol];
    v5 = protocol_conformsToProtocol(protocol, protocolCopy);
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if ([(EMRemoteConnection *)self->_remoteInterface _respondsToRemoteSelector:?])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = _EMRemoteInterfaceDistantObject;
  return [(_EMRemoteInterfaceDistantObject *)&v6 respondsToSelector:selector];
}

- (id)methodSignatureForSelector:(SEL)selector
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
    v7 = [(_EMRemoteInterfaceDistantObject *)&v10 methodSignatureForSelector:selector];
  }

  v8 = v7;

  return v8;
}

- (void)forwardInvocation:(id)invocation
{
  v14 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  if (self->_proxyGenerator)
  {
    [(EMRemoteConnection *)self->_remoteInterface _sendInvocation:invocationCopy withProxy:self];
  }

  else
  {
    v5 = +[EMRemoteConnection log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      selfCopy2 = self;
      v12 = 2114;
      v13 = invocationCopy;
      _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Client instance no longer valid. Skipping forwarding invocation %{public}@", &v10, 0x16u);
    }

    if (self->_reattemptHandler)
    {
      v6 = +[EMRemoteConnection log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543618;
        selfCopy2 = self;
        v12 = 2114;
        v13 = invocationCopy;
        _os_log_impl(&dword_1C6655000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Invoking reattemptHandler with EMConnectionInvalidated error for invocation %{public}@", &v10, 0x16u);
      }

      reattemptHandler = self->_reattemptHandler;
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EMErrorDomain" code:2 userInfo:0];
      reattemptHandler[2](reattemptHandler, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_forwardStackInvocation:(id)invocation
{
  v14 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  if (self->_proxyGenerator)
  {
    [(EMRemoteConnection *)self->_remoteInterface _sendInvocation:invocationCopy withProxy:self];
  }

  else
  {
    v5 = +[EMRemoteConnection log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      selfCopy2 = self;
      v12 = 2114;
      v13 = invocationCopy;
      _os_log_impl(&dword_1C6655000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Client instance no longer valid. Skipping fowarding stack invocation %{public}@", &v10, 0x16u);
    }

    if (self->_reattemptHandler)
    {
      v6 = +[EMRemoteConnection log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543618;
        selfCopy2 = self;
        v12 = 2114;
        v13 = invocationCopy;
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

- (id)reattemptingRemoteObjectProxyWithReattemptHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [objc_alloc(objc_opt_class()) initWithRemoteInterface:self->_remoteInterface proxyGenerator:self->_proxyGenerator synchronous:0 reattemptHandler:handlerCopy];

  return v5;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc(objc_opt_class());
  remoteInterface = self->_remoteInterface;
  proxyGenerator = self->_proxyGenerator;
  v8 = nonReattemptingHandlerForErrorHandler(handlerCopy);
  v9 = [v5 initWithRemoteInterface:remoteInterface proxyGenerator:proxyGenerator synchronous:0 reattemptHandler:v8];

  return v9;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc(objc_opt_class());
  remoteInterface = self->_remoteInterface;
  proxyGenerator = self->_proxyGenerator;
  v8 = nonReattemptingHandlerForErrorHandler(handlerCopy);
  v9 = [v5 initWithRemoteInterface:remoteInterface proxyGenerator:proxyGenerator synchronous:1 reattemptHandler:v8];

  return v9;
}

@end