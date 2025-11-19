@interface IDSXPCConnection
+ (id)errorForMissingEntitlement:(id)a3;
- (BOOL)hasEntitlement:(id)a3;
- (IDSXPCConnection)initWithQueue:(id)a3 remoteObject:(id)a4;
- (IDSXPCConnection)initWithRemoteObject:(id)a3 rootConnection:(id)a4;
- (IDSXPCConnection)rootConnection;
- (NSMutableDictionary)pendingTransactions;
- (id)_initWithQueue:(id)a3 syncOntoMain:(BOOL)a4 takingOverAndResumingConnection:(id)a5 forSyncMessaging:(BOOL)a6;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)remoteObjectProxyWithTimeoutInSeconds:(double)a3 errorHandler:(id)a4;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)valueForEntitlement:(id)a3;
- (void)_cleanupAllPendingTransactions;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
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

+ (id)errorForMissingEntitlement:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing entitlement %@", a3];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"IDSXPCConnectionErrorDomain" code:-2000 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (IDSXPCConnection)initWithQueue:(id)a3 remoteObject:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!self->_forSyncMessaging && !self->_syncOntoMain)
  {
    dispatch_assert_queue_V2(v7);
  }

  v9 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v8;
    v17 = 2048;
    v18 = self;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Alloc'ing IDSXPCConnection {remoteObject: %{public}@, pointer: %p}", buf, 0x16u);
  }

  v14.receiver = self;
  v14.super_class = IDSXPCConnection;
  v10 = [(IDSXPCConnection *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, a3);
    objc_storeStrong(&v11->_remoteObject, a4);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)_initWithQueue:(id)a3 syncOntoMain:(BOOL)a4 takingOverAndResumingConnection:(id)a5 forSyncMessaging:(BOOL)a6
{
  v11 = a3;
  v12 = a5;
  if (!a6)
  {
    dispatch_assert_queue_V2(v11);
  }

  self->_forSyncMessaging = a6;
  objc_storeStrong(&self->_queue, a3);
  self->_syncOntoMain = a4;
  objc_storeStrong(&self->_connection, a5);
  [(NSXPCConnection *)self->_connection setDelegate:self];
  [(NSXPCConnection *)self->_connection _setQueue:v11];
  v13 = [v12 interruptionHandler];
  objc_initWeak(&location, self);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_195AE2DAC;
  v22[3] = &unk_1E7442820;
  objc_copyWeak(&v24, &location);
  v14 = v13;
  v23 = v14;
  [v12 setInterruptionHandler:v22];
  v15 = [v12 invalidationHandler];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195AE2E50;
  v19[3] = &unk_1E7442820;
  objc_copyWeak(&v21, &location);
  v16 = v15;
  v20 = v16;
  [v12 setInvalidationHandler:v19];
  [(NSXPCConnection *)self->_connection resume];
  v17 = [(IDSXPCConnection *)self initWithQueue:self->_queue remoteObject:self->_connection];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return v17;
}

- (IDSXPCConnection)initWithRemoteObject:(id)a3 rootConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 queue];
  v9 = [(IDSXPCConnection *)self initWithQueue:v8 remoteObject:v7];

  [(IDSXPCConnection *)v9 setRootConnection:v6];
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
    v10 = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Dealloc'ing IDSXPCConnection {remoteObject: %{public}@, pointer: %p}", buf, 0x16u);
  }

  [(NSXPCConnection *)self->_connection invalidate];
  v6.receiver = self;
  v6.super_class = IDSXPCConnection;
  [(IDSXPCConnection *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  if (!self->_forSyncMessaging && !self->_syncOntoMain)
  {
    v5 = [(IDSXPCConnection *)self queue];
    dispatch_assert_queue_V2(v5);
  }

  v6 = [(IDSXPCConnection *)self remoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AE3188;
  v10[3] = &unk_1E743F138;
  v10[4] = self;
  v11 = v4;
  v7 = v4;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v10];

  return v8;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  if (!self->_forSyncMessaging && !self->_syncOntoMain)
  {
    v5 = [(IDSXPCConnection *)self queue];
    dispatch_assert_queue_V2(v5);
  }

  v6 = [(IDSXPCConnection *)self remoteObject];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AE32C4;
  v10[3] = &unk_1E743F138;
  v10[4] = self;
  v11 = v4;
  v7 = v4;
  v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v10];

  return v8;
}

- (id)remoteObjectProxyWithTimeoutInSeconds:(double)a3 errorHandler:(id)a4
{
  v6 = a4;
  if (!self->_forSyncMessaging && !self->_syncOntoMain)
  {
    v7 = [(IDSXPCConnection *)self queue];
    dispatch_assert_queue_V2(v7);
  }

  v8 = [(IDSXPCConnection *)self remoteObject];
  v9 = [v8 remoteObjectProxyWithErrorHandler:v6];

  v10 = [IDSXPCConnectionTimeoutProxy alloc];
  v11 = [(IDSXPCConnection *)self rootConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195AE3454;
  v15[3] = &unk_1E743F138;
  v15[4] = self;
  v16 = v6;
  v12 = v6;
  v13 = [(IDSXPCConnectionTimeoutProxy *)v10 initWithTarget:v9 connection:v11 timeoutInSeconds:v15 errorHandler:a3];

  return v13;
}

- (id)valueForEntitlement:(id)a3
{
  v4 = a3;
  if (!self->_forSyncMessaging && !self->_syncOntoMain)
  {
    v5 = [(IDSXPCConnection *)self queue];
    dispatch_assert_queue_V2(v5);
  }

  v6 = [(IDSXPCConnection *)self rootConnection];
  v7 = [v6 connection];
  v8 = [v7 valueForEntitlement:v4];

  return v8;
}

- (BOOL)hasEntitlement:(id)a3
{
  v4 = a3;
  if (!self->_forSyncMessaging && !self->_syncOntoMain)
  {
    v5 = [(IDSXPCConnection *)self queue];
    dispatch_assert_queue_V2(v5);
  }

  v6 = [(IDSXPCConnection *)self valueForEntitlement:v4];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = v6 != 0;
  }

  return v7;
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v5 = a5;
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v5 || (objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_9:
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_195AE3930;
    v27[3] = &unk_1E743E878;
    v20 = v9;
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

    v10 = v28;
    goto LABEL_13;
  }

  v10 = [v9 userInfo];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696B160]];
  v12 = [v11 objectForKeyedSubscript:@"IDSXPCConnectionTransactionUUID"];
  if (!v12)
  {
LABEL_8:

    goto LABEL_9;
  }

  v13 = v12;
  v14 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696B158]];
  v15 = [(IDSXPCConnection *)self pendingTransactions];
  v16 = [v15 objectForKey:v13];

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

    v19 = [(IDSXPCConnection *)self pendingTransactions];
    [v19 removeObjectForKey:v13];

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
    v4 = [(IDSXPCConnection *)self pendingTransactions];
    v5 = [(IDSXPCConnection *)self remoteObject];
    v9 = 138543874;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    v13 = 2048;
    v14 = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Dropping all pending transactions {pendingTransaction: %{public}@, remoteObject: %{public}@, pointer: %p}", &v9, 0x20u);
  }

  v6 = [(IDSXPCConnection *)self pendingTransactions];
  [v6 enumerateKeysAndObjectsUsingBlock:&unk_1F09E7120];

  v7 = [(IDSXPCConnection *)self pendingTransactions];
  [v7 removeAllObjects];

  v8 = *MEMORY[0x1E69E9840];
}

@end