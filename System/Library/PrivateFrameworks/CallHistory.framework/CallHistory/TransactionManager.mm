@interface TransactionManager
+ (id)instance;
- (TransactionManager)init;
- (void)appendTransactions:(id)transactions;
- (void)appendTransactions_sync:(id)transactions_sync;
- (void)createXpcConnection;
- (void)createXpcConnection_sync;
- (void)dealloc;
- (void)setupConnectionHandlers_sync;
@end

@implementation TransactionManager

+ (id)instance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__TransactionManager_instance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (instance_once != -1)
  {
    dispatch_once(&instance_once, block);
  }

  v2 = instance_instance;

  return v2;
}

uint64_t __30__TransactionManager_instance__block_invoke(uint64_t a1)
{
  instance_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (TransactionManager)init
{
  v5.receiver = self;
  v5.super_class = TransactionManager;
  v2 = [(CHSynchronizedLoggable *)&v5 initWithName:"TransactionManager"];
  v3 = v2;
  if (v2)
  {
    [(TransactionManager *)v2 createXpcConnection];
  }

  return v3;
}

- (void)createXpcConnection
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41__TransactionManager_createXpcConnection__block_invoke;
  v2[3] = &unk_1E81DBF38;
  v2[4] = self;
  [(CHSynchronizedLoggable *)self execute:v2];
}

- (void)createXpcConnection_sync
{
  connection = self->_connection;
  logHandle = [(CHSynchronizedLoggable *)self logHandle];
  v5 = logHandle;
  if (connection)
  {
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [TransactionManager createXpcConnection_sync];
    }
  }

  else
  {
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "Creating XPC connection to Sync Helper", v11, 2u);
    }

    v6 = objc_alloc(MEMORY[0x1E696B0B8]);
    v7 = [v6 initWithMachServiceName:kSyncHelperServiceIdentifier options:0];
    v8 = self->_connection;
    self->_connection = v7;

    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F43B38F0];
    interface = self->_interface;
    self->_interface = v9;

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:self->_interface];
    [(TransactionManager *)self setupConnectionHandlers_sync];
    [(NSXPCConnection *)self->_connection resume];
  }
}

- (void)setupConnectionHandlers_sync
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_syncHelperReadyNotificationRef)
  {
    logHandle = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = @"kCallHistorySyncHelperReadyNotification";
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Registering for %{public}@", buf, 0xCu);
    }

    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__TransactionManager_setupConnectionHandlers_sync__block_invoke;
    v13[3] = &unk_1E81DCAF8;
    v13[4] = self;
    v5 = [defaultCenter addObserverForName:@"kCallHistorySyncHelperReadyNotification" object:0 queue:0 usingBlock:v13];
    syncHelperReadyNotificationRef = self->_syncHelperReadyNotificationRef;
    self->_syncHelperReadyNotificationRef = v5;
  }

  logHandle2 = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C3E90000, logHandle2, OS_LOG_TYPE_DEFAULT, "Setting up invalidation handler", buf, 2u);
  }

  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__TransactionManager_setupConnectionHandlers_sync__block_invoke_66;
  v11[3] = &unk_1E81DBF80;
  objc_copyWeak(&v12, buf);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v11];
  logHandle3 = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1C3E90000, logHandle3, OS_LOG_TYPE_DEFAULT, "Setting up interruption handler", v10, 2u);
  }

  [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_6];
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self->_syncHelperReadyNotificationRef name:@"kCallHistorySyncHelperReadyNotification" object:0];

  v4.receiver = self;
  v4.super_class = TransactionManager;
  [(TransactionManager *)&v4 dealloc];
}

- (void)appendTransactions:(id)transactions
{
  transactionsCopy = transactions;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__TransactionManager_appendTransactions___block_invoke;
  v6[3] = &unk_1E81DBE38;
  v6[4] = self;
  v7 = transactionsCopy;
  v5 = transactionsCopy;
  [(CHSynchronizedLoggable *)self execute:v6];
}

- (void)appendTransactions_sync:(id)transactions_sync
{
  v17 = *MEMORY[0x1E69E9840];
  transactions_syncCopy = transactions_sync;
  logHandle = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [transactions_syncCopy count];
    _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Appending %lu transactions", buf, 0xCu);
  }

  if ([transactions_syncCopy count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__TransactionManager_appendTransactions_sync___block_invoke;
    aBlock[3] = &unk_1E81DC140;
    aBlock[4] = self;
    v6 = transactions_syncCopy;
    v14 = v6;
    v7 = _Block_copy(aBlock);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__TransactionManager_appendTransactions_sync___block_invoke_63;
    v10[3] = &unk_1E81DCAD0;
    v10[4] = self;
    v12 = v7;
    v11 = v6;
    v8 = v7;
    [(CHSynchronizedLoggable *)self execute:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __46__TransactionManager_appendTransactions_sync___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__TransactionManager_appendTransactions_sync___block_invoke_cold_1();
  }

  if (v3)
  {
    v5 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__TransactionManager_appendTransactions_sync___block_invoke_cold_2(v3, v5);
    }
  }

  v6 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__TransactionManager_appendTransactions_sync___block_invoke_60;
  v7[3] = &unk_1E81DBE38;
  v7[4] = v6;
  v8 = *(a1 + 40);
  [v6 execute:v7];
}

void __46__TransactionManager_appendTransactions_sync___block_invoke_60(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = objc_opt_new();
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(*(a1 + 32) + 48);
  }

  [v2 addObjectsFromArray:*(a1 + 40)];
  v6 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(*(a1 + 32) + 48) count];
    v9 = 134217984;
    v10 = v7;
    _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "Now have %lu queued transactions", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __46__TransactionManager_appendTransactions_sync___block_invoke_63(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[3])
  {
    v3 = [v2 logHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3E90000, v3, OS_LOG_TYPE_DEFAULT, "Invalid XPC connection, attempting to create", buf, 2u);
    }

    [*(a1 + 32) createXpcConnection_sync];
    v2 = *(a1 + 32);
  }

  v4 = [v2 logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C3E90000, v4, OS_LOG_TYPE_DEFAULT, "Forwarding to XPC Service", v6, 2u);
  }

  v5 = [*(*(a1 + 32) + 24) remoteObjectProxyWithErrorHandler:*(a1 + 48)];
  [v5 appendTransactions:*(a1 + 40)];
}

uint64_t __50__TransactionManager_setupConnectionHandlers_sync__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__TransactionManager_setupConnectionHandlers_sync__block_invoke_2;
  v3[3] = &unk_1E81DBF38;
  v3[4] = v1;
  return [v1 execute:v3];
}

void __50__TransactionManager_setupConnectionHandlers_sync__block_invoke_2(uint64_t a1)
{
  v2 = +[CHLogServer sharedInstance];
  v3 = [v2 logHandleForDomain:"TransactionManager"];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C3E90000, v3, OS_LOG_TYPE_DEFAULT, "Received Sync Helper ready notification", v7, 2u);
  }

  v4 = *(a1 + 32);
  if (!v4[3])
  {
    [v4 createXpcConnection_sync];
    v4 = *(a1 + 32);
  }

  [v4 appendTransactions:v4[6]];
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = 0;
}

void __50__TransactionManager_setupConnectionHandlers_sync__block_invoke_66(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__TransactionManager_setupConnectionHandlers_sync__block_invoke_67;
    v5[3] = &unk_1E81DBF38;
    v6 = WeakRetained;
    [v6 execute:v5];
    v3 = v6;
  }

  else
  {
    v4 = +[CHLogServer sharedInstance];
    v3 = [v4 logHandleForDomain:"TransactionManager"];

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __50__TransactionManager_setupConnectionHandlers_sync__block_invoke_66_cold_1();
    }
  }
}

void __50__TransactionManager_setupConnectionHandlers_sync__block_invoke_67(uint64_t a1)
{
  v2 = +[CHLogServer sharedInstance];
  v3 = [v2 logHandleForDomain:"TransactionManager"];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__TransactionManager_setupConnectionHandlers_sync__block_invoke_67_cold_1();
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
}

void __50__TransactionManager_setupConnectionHandlers_sync__block_invoke_68()
{
  v0 = +[CHLogServer sharedInstance];
  v1 = [v0 logHandleForDomain:"TransactionManager"];

  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__TransactionManager_setupConnectionHandlers_sync__block_invoke_68_cold_1();
  }
}

void __46__TransactionManager_appendTransactions_sync___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C3E90000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end