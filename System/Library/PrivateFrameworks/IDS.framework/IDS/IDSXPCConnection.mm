@interface IDSXPCConnection
+ (id)errorForMissingEntitlement:(id)entitlement;
- (BOOL)hasEntitlement:(id)entitlement;
- (IDSXPCConnection)initWithQueue:(id)queue remoteObject:(id)object;
- (IDSXPCConnection)initWithRemoteObject:(id)object rootConnection:(id)connection;
- (IDSXPCConnection)rootConnection;
- (NSMutableDictionary)pendingTransactions;
- (id)_initWithQueue:(id)queue syncOntoMain:(BOOL)main takingOverAndResumingConnection:(id)connection forSyncMessaging:(BOOL)messaging;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)remoteObjectProxyWithTimeoutInSeconds:(double)seconds errorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)valueForEntitlement:(id)entitlement;
- (void)_cleanupAllPendingTransactions;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)dealloc;
@end

@implementation IDSXPCConnection

- (IDSXPCConnection)rootConnection
{
  if (self->_rootConnection)
  {
    self = self->_rootConnection;
  }

  return self;
}

- (NSMutableDictionary)pendingTransactions
{
  pendingTransactions = self->_pendingTransactions;
  if (!pendingTransactions)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_pendingTransactions;
    self->_pendingTransactions = v4;

    pendingTransactions = self->_pendingTransactions;
  }

  return pendingTransactions;
}

+ (id)errorForMissingEntitlement:(id)entitlement
{
  v10[1] = *MEMORY[0x1E69E9840];
  entitlement = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing entitlement %@", entitlement];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = entitlement;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"IDSXPCConnectionErrorDomain" code:-2000 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (IDSXPCConnection)initWithQueue:(id)queue remoteObject:(id)object
{
  v19 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  objectCopy = object;
  if (!self->_forSyncMessaging && !self->_syncOntoMain)
  {
    dispatch_assert_queue_V2(queueCopy);
  }

  v9 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = objectCopy;
    v17 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Alloc'ing IDSXPCConnection {remoteObject: %{public}@, pointer: %p}", buf, 0x16u);
  }

  v14.receiver = self;
  v14.super_class = IDSXPCConnection;
  v10 = [(IDSXPCConnection *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, queue);
    objc_storeStrong(&v11->_remoteObject, object);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)_initWithQueue:(id)queue syncOntoMain:(BOOL)main takingOverAndResumingConnection:(id)connection forSyncMessaging:(BOOL)messaging
{
  queueCopy = queue;
  connectionCopy = connection;
  if (!messaging)
  {
    dispatch_assert_queue_V2(queueCopy);
  }

  self->_forSyncMessaging = messaging;
  objc_storeStrong(&self->_queue, queue);
  self->_syncOntoMain = main;
  objc_storeStrong(&self->_connection, connection);
  [(NSXPCConnection *)self->_connection setDelegate:self];
  [(NSXPCConnection *)self->_connection _setQueue:queueCopy];
  interruptionHandler = [connectionCopy interruptionHandler];
  objc_initWeak(&location, self);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_195AE2DAC;
  v22[3] = &unk_1E7442820;
  objc_copyWeak(&v24, &location);
  v14 = interruptionHandler;
  v23 = v14;
  [connectionCopy setInterruptionHandler:v22];
  invalidationHandler = [connectionCopy invalidationHandler];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195AE2E50;
  v19[3] = &unk_1E7442820;
  objc_copyWeak(&v21, &location);
  v16 = invalidationHandler;
  v20 = v16;
  [connectionCopy setInvalidationHandler:v19];
  [(NSXPCConnection *)self->_connection resume];
  v17 = [(IDSXPCConnection *)self initWithQueue:self->_queue remoteObject:self->_connection];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return v17;
}

- (IDSXPCConnection)initWithRemoteObject:(id)object rootConnection:(id)connection
{
  connectionCopy = connection;
  objectCopy = object;
  queue = [connectionCopy queue];
  v9 = [(IDSXPCConnection *)self initWithQueue:queue remoteObject:objectCopy];

  [(IDSXPCConnection *)v9 setRootConnection:connectionCopy];
  return v9;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    remoteObject = self->_remoteObject;
    *buf = 138543618;
    v8 = remoteObject;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Dealloc'ing IDSXPCConnection {remoteObject: %{public}@, pointer: %p}", buf, 0x16u);
  }

  [(NSXPCConnection *)self->_connection invalidate];
  v6.receiver = self;
  v6.super_class = IDSXPCConnection;
  [(IDSXPCConnection *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  if (!self->_forSyncMessaging && !self->_syncOntoMain)
  {
    queue = [(IDSXPCConnection *)self queue];
    dispatch_assert_queue_V2(queue);
  }

  remoteObject = [(IDSXPCConnection *)self remoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AE3188;
  v10[3] = &unk_1E743F138;
  v10[4] = self;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = [remoteObject remoteObjectProxyWithErrorHandler:v10];

  return v8;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  if (!self->_forSyncMessaging && !self->_syncOntoMain)
  {
    queue = [(IDSXPCConnection *)self queue];
    dispatch_assert_queue_V2(queue);
  }

  remoteObject = [(IDSXPCConnection *)self remoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AE32C4;
  v10[3] = &unk_1E743F138;
  v10[4] = self;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = [remoteObject synchronousRemoteObjectProxyWithErrorHandler:v10];

  return v8;
}

- (id)remoteObjectProxyWithTimeoutInSeconds:(double)seconds errorHandler:(id)handler
{
  handlerCopy = handler;
  if (!self->_forSyncMessaging && !self->_syncOntoMain)
  {
    queue = [(IDSXPCConnection *)self queue];
    dispatch_assert_queue_V2(queue);
  }

  remoteObject = [(IDSXPCConnection *)self remoteObject];
  v9 = [remoteObject remoteObjectProxyWithErrorHandler:handlerCopy];

  v10 = [IDSXPCConnectionTimeoutProxy alloc];
  rootConnection = [(IDSXPCConnection *)self rootConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195AE3454;
  v15[3] = &unk_1E743F138;
  v15[4] = self;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = [(IDSXPCConnectionTimeoutProxy *)v10 initWithTarget:v9 connection:rootConnection timeoutInSeconds:v15 errorHandler:seconds];

  return v13;
}

- (id)valueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  if (!self->_forSyncMessaging && !self->_syncOntoMain)
  {
    queue = [(IDSXPCConnection *)self queue];
    dispatch_assert_queue_V2(queue);
  }

  rootConnection = [(IDSXPCConnection *)self rootConnection];
  connection = [rootConnection connection];
  v8 = [connection valueForEntitlement:entitlementCopy];

  return v8;
}

- (BOOL)hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  if (!self->_forSyncMessaging && !self->_syncOntoMain)
  {
    queue = [(IDSXPCConnection *)self queue];
    dispatch_assert_queue_V2(queue);
  }

  v6 = [(IDSXPCConnection *)self valueForEntitlement:entitlementCopy];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = v6 != 0;
  }

  return bOOLValue;
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  replyCopy = reply;
  v30 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  invocationCopy = invocation;
  if (!replyCopy || (objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_9:
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_195AE3930;
    v27[3] = &unk_1E743E878;
    v20 = invocationCopy;
    v28 = v20;
    v21 = MEMORY[0x19A8BBEF0](v27);
    if ([(IDSXPCConnection *)self syncOntoMain])
    {
      [v20 retainArguments];
      memset(buf, 170, 16);
      pthread_main_thread_np();
      pthread_dependency_init_np();
      v22 = im_primary_queue();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195AE3938;
      block[3] = &unk_1E7440988;
      v25 = v21;
      v26 = buf;
      dispatch_async(v22, block);

      pthread_dependency_wait_np();
    }

    else
    {
      v21[2](v21);
    }

    userInfo = v28;
    goto LABEL_13;
  }

  userInfo = [invocationCopy userInfo];
  v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696B160]];
  v12 = [v11 objectForKeyedSubscript:@"IDSXPCConnectionTransactionUUID"];
  if (!v12)
  {
LABEL_8:

    goto LABEL_9;
  }

  v13 = v12;
  v14 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696B158]];
  pendingTransactions = [(IDSXPCConnection *)self pendingTransactions];
  v16 = [pendingTransactions objectForKey:v13];

  v17 = [MEMORY[0x1E69A5270] xpc];
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      *buf = 138543618;
      *&buf[4] = v14;
      *&buf[12] = 2114;
      *&buf[14] = v13;
      _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "transaction finished -- calling invoke {selector: %{public}@, uuid: %{public}@}", buf, 0x16u);
    }

    pendingTransactions2 = [(IDSXPCConnection *)self pendingTransactions];
    [pendingTransactions2 removeObjectForKey:v13];

    v16[2](v16);
    goto LABEL_8;
  }

  if (v18)
  {
    *buf = 138543618;
    *&buf[4] = v14;
    *&buf[12] = 2114;
    *&buf[14] = v13;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "TransactionUUID missing from pendingTransactions --  Skipping invoke {selector: %{public}@, uuid: %{public}@}", buf, 0x16u);
  }

LABEL_13:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)_cleanupAllPendingTransactions
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    pendingTransactions = [(IDSXPCConnection *)self pendingTransactions];
    remoteObject = [(IDSXPCConnection *)self remoteObject];
    v9 = 138543874;
    v10 = pendingTransactions;
    v11 = 2114;
    v12 = remoteObject;
    v13 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Dropping all pending transactions {pendingTransaction: %{public}@, remoteObject: %{public}@, pointer: %p}", &v9, 0x20u);
  }

  pendingTransactions2 = [(IDSXPCConnection *)self pendingTransactions];
  [pendingTransactions2 enumerateKeysAndObjectsUsingBlock:&unk_1F09E7120];

  pendingTransactions3 = [(IDSXPCConnection *)self pendingTransactions];
  [pendingTransactions3 removeAllObjects];

  v8 = *MEMORY[0x1E69E9840];
}

@end