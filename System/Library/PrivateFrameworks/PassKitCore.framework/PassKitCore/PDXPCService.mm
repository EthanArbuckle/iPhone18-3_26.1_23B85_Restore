@interface PDXPCService
- (NSString)remoteProcessBundleIdentifier;
- (PDXPCApplicationInfo)remoteProcessApplicationInfo;
- (PDXPCService)initWithConnection:(id)connection;
- (id)connection;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (void)clearConnectionReference;
- (void)serviceResumed;
- (void)serviceSuspended;
@end

@implementation PDXPCService

- (void)serviceResumed
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject(5uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    connection = self->_connection;
    className = self->_className;
    remoteProcessIdentifier = self->_remoteProcessIdentifier;
    v7 = 138543874;
    v8 = className;
    v9 = 2048;
    v10 = connection;
    v11 = 1024;
    v12 = remoteProcessIdentifier;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_INFO, "%{public}@ (%p:%d): connection resumed", &v7, 0x1Cu);
  }

  os_unfair_lock_lock(&self->_lock);
  self->_callbacksSuspended = 0;
  os_unfair_lock_unlock(&self->_lock);
}

- (void)clearConnectionReference
{
  os_unfair_lock_lock(&self->_lock);
  connection = self->_connection;
  self->_connection = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (PDXPCService)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v17.receiver = self;
  v17.super_class = PDXPCService;
  v6 = [(PDXPCService *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_connection, connection);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v9 copy];
    className = v7->_className;
    v7->_className = v10;

    if (connectionCopy)
    {
      processIdentifier = [connectionCopy processIdentifier];
    }

    else
    {
      processIdentifier = -1;
    }

    v7->_remoteProcessIdentifier = processIdentifier;
    v13 = [connectionCopy valueForEntitlement:@"application-identifier"];
    v14 = [v13 copy];
    remoteProcessApplicationIdentifier = v7->_remoteProcessApplicationIdentifier;
    v7->_remoteProcessApplicationIdentifier = v14;
  }

  return v7;
}

- (id)connection
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_connection;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  if (self->_callbacksSuspended)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  if (handlerCopy && !v5)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  return v5;
}

- (PDXPCApplicationInfo)remoteProcessApplicationInfo
{
  remoteProcessIdentifier = [(PDXPCService *)self remoteProcessIdentifier];
  if (remoteProcessIdentifier)
  {
    v3 = [[PDXPCApplicationInfo alloc] initWithPID:remoteProcessIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)remoteProcessBundleIdentifier
{
  remoteProcessApplicationInfo = [(PDXPCService *)self remoteProcessApplicationInfo];
  displayID = [remoteProcessApplicationInfo displayID];

  return displayID;
}

- (void)serviceSuspended
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject(5uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    connection = self->_connection;
    className = self->_className;
    remoteProcessIdentifier = self->_remoteProcessIdentifier;
    v7 = 138543874;
    v8 = className;
    v9 = 2048;
    v10 = connection;
    v11 = 1024;
    v12 = remoteProcessIdentifier;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_INFO, "%{public}@ (%p:%d): connection suspended", &v7, 0x1Cu);
  }

  os_unfair_lock_lock(&self->_lock);
  self->_callbacksSuspended = 1;
  os_unfair_lock_unlock(&self->_lock);
}

@end