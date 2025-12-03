@interface CARConnectionTimeStore
+ (id)_CARConnectionServiceInterface;
- (BOOL)_setupConnectionForSystemDaemon:(BOOL)daemon;
- (CARConnectionTimeStore)init;
- (id)initForSystemDaemon;
- (void)_xpcFetchWithServiceBlock:(id)block errorHandler:(id)handler;
- (void)_xpcFetchWithSynchronousServiceBlock:(id)block errorHandler:(id)handler;
- (void)clearHistoricalConnectionsWithCompletion:(id)completion;
- (void)dealloc;
- (void)fetchPreviousSessionConnectionDataWithCompletion:(id)completion;
- (void)fetchRecentSessions:(id)sessions;
- (void)removeConnectionEventsBefore:(id)before completion:(id)completion;
- (void)sendConnectionEvent:(id)event completion:(id)completion;
- (void)syncSendConnectionEvent:(id)event completion:(id)completion;
@end

@implementation CARConnectionTimeStore

- (CARConnectionTimeStore)init
{
  v5.receiver = self;
  v5.super_class = CARConnectionTimeStore;
  v2 = [(CARConnectionTimeStore *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CARConnectionTimeStore *)v2 _setupConnectionForSystemDaemon:0];
  }

  return v3;
}

- (id)initForSystemDaemon
{
  v6.receiver = self;
  v6.super_class = CARConnectionTimeStore;
  v2 = [(CARConnectionTimeStore *)&v6 init];
  v3 = v2;
  if (v2 && ![(CARConnectionTimeStore *)v2 _setupConnectionForSystemDaemon:1])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

+ (id)_CARConnectionServiceInterface
{
  if (_CARConnectionServiceInterface_onceToken != -1)
  {
    +[CARConnectionTimeStore _CARConnectionServiceInterface];
  }

  v3 = _CARConnectionServiceInterface___interface;

  return v3;
}

void __56__CARConnectionTimeStore__CARConnectionServiceInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48039A8];
  v1 = _CARConnectionServiceInterface___interface;
  _CARConnectionServiceInterface___interface = v0;

  v2 = _CARConnectionServiceInterface___interface;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v3 setWithObjects:{v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  [v2 setClasses:v10 forSelector:sel_fetchConnectionSessions_ argumentIndex:0 ofReply:1];
}

- (BOOL)_setupConnectionForSystemDaemon:(BOOL)daemon
{
  daemonCopy = daemon;
  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.reconnectiontime.service" options:0];
  if (!daemonCopy)
  {
    goto LABEL_7;
  }

  if (xpc_user_sessions_enabled())
  {
    xpc_user_sessions_get_foreground_uid();
    _xpcConnection = [v5 _xpcConnection];
    xpc_connection_set_target_user_session_uid();

LABEL_7:
    _CARConnectionServiceInterface = [objc_opt_class() _CARConnectionServiceInterface];
    [v5 setRemoteObjectInterface:_CARConnectionServiceInterface];

    [v5 resume];
    [(CARConnectionTimeStore *)self setConnection:v5];
    v7 = 1;
    goto LABEL_8;
  }

  v6 = CarConnectionTimeLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [CARConnectionTimeStore _setupConnectionForSystemDaemon:];
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = CARConnectionTimeStore;
  [(CARConnectionTimeStore *)&v3 dealloc];
}

- (void)_xpcFetchWithServiceBlock:(id)block errorHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  connection = [(CARConnectionTimeStore *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__CARConnectionTimeStore__xpcFetchWithServiceBlock_errorHandler___block_invoke;
  v13[3] = &unk_1E82FBF48;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = [connection remoteObjectProxyWithErrorHandler:v13];

  if (blockCopy)
  {
    v11 = CarConnectionTimeLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_DEFAULT, "CARConnectionTimeStore: Connecting to CarKit Connection Time service", v12, 2u);
    }

    blockCopy[2](blockCopy, v10);
  }
}

void __65__CARConnectionTimeStore__xpcFetchWithServiceBlock_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarConnectionTimeLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __65__CARConnectionTimeStore__xpcFetchWithServiceBlock_errorHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)_xpcFetchWithSynchronousServiceBlock:(id)block errorHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  connection = [(CARConnectionTimeStore *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__CARConnectionTimeStore__xpcFetchWithSynchronousServiceBlock_errorHandler___block_invoke;
  v13[3] = &unk_1E82FBF48;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];

  if (blockCopy)
  {
    v11 = CarConnectionTimeLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_DEFAULT, "CARConnectionTimeStore: Connecting to CarKit Connection Time service", v12, 2u);
    }

    blockCopy[2](blockCopy, v10);
  }
}

void __76__CARConnectionTimeStore__xpcFetchWithSynchronousServiceBlock_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarConnectionTimeLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __65__CARConnectionTimeStore__xpcFetchWithServiceBlock_errorHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)fetchRecentSessions:(id)sessions
{
  sessionsCopy = sessions;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__CARConnectionTimeStore_fetchRecentSessions___block_invoke;
  v8[3] = &unk_1E82FC678;
  v9 = sessionsCopy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__CARConnectionTimeStore_fetchRecentSessions___block_invoke_2;
  v6[3] = &unk_1E82FBF48;
  v7 = v9;
  v5 = v9;
  [(CARConnectionTimeStore *)self _xpcFetchWithServiceBlock:v8 errorHandler:v6];
}

void __46__CARConnectionTimeStore_fetchRecentSessions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = CarConnectionTimeLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __46__CARConnectionTimeStore_fetchRecentSessions___block_invoke_2_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)sendConnectionEvent:(id)event completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__CARConnectionTimeStore_sendConnectionEvent_completion___block_invoke;
  v13[3] = &unk_1E82FC6A0;
  v14 = eventCopy;
  v15 = completionCopy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__CARConnectionTimeStore_sendConnectionEvent_completion___block_invoke_265;
  v10[3] = &unk_1E82FC298;
  v11 = v14;
  v12 = v15;
  v8 = v15;
  v9 = v14;
  [(CARConnectionTimeStore *)self _xpcFetchWithServiceBlock:v13 errorHandler:v10];
}

void __57__CARConnectionTimeStore_sendConnectionEvent_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CarConnectionTimeLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) eventName];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1C81FC000, v4, OS_LOG_TYPE_DEFAULT, "CARConnectionTimeStore sendConnectionEvent: %@", &v6, 0xCu);
  }

  [v3 recordConnectionEvent:*(a1 + 32) completion:*(a1 + 40)];
}

void __57__CARConnectionTimeStore_sendConnectionEvent_completion___block_invoke_265(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarConnectionTimeLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __57__CARConnectionTimeStore_sendConnectionEvent_completion___block_invoke_265_cold_1(a1);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)syncSendConnectionEvent:(id)event completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__CARConnectionTimeStore_syncSendConnectionEvent_completion___block_invoke;
  v13[3] = &unk_1E82FC6A0;
  v14 = eventCopy;
  v15 = completionCopy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__CARConnectionTimeStore_syncSendConnectionEvent_completion___block_invoke_266;
  v10[3] = &unk_1E82FC298;
  v11 = v14;
  v12 = v15;
  v8 = v15;
  v9 = v14;
  [(CARConnectionTimeStore *)self _xpcFetchWithSynchronousServiceBlock:v13 errorHandler:v10];
}

void __61__CARConnectionTimeStore_syncSendConnectionEvent_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CarConnectionTimeLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) eventName];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1C81FC000, v4, OS_LOG_TYPE_DEFAULT, "CARConnectionTimeStore syncSendConnectionEvent: %@", &v6, 0xCu);
  }

  [v3 recordConnectionEvent:*(a1 + 32) completion:*(a1 + 40)];
}

void __61__CARConnectionTimeStore_syncSendConnectionEvent_completion___block_invoke_266(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarConnectionTimeLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __61__CARConnectionTimeStore_syncSendConnectionEvent_completion___block_invoke_266_cold_1(a1);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)removeConnectionEventsBefore:(id)before completion:(id)completion
{
  beforeCopy = before;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__CARConnectionTimeStore_removeConnectionEventsBefore_completion___block_invoke;
  v12[3] = &unk_1E82FC6A0;
  v13 = beforeCopy;
  v14 = completionCopy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__CARConnectionTimeStore_removeConnectionEventsBefore_completion___block_invoke_267;
  v10[3] = &unk_1E82FBF48;
  v11 = v14;
  v8 = v14;
  v9 = beforeCopy;
  [(CARConnectionTimeStore *)self _xpcFetchWithServiceBlock:v12 errorHandler:v10];
}

void __66__CARConnectionTimeStore_removeConnectionEventsBefore_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarConnectionTimeLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C81FC000, v4, OS_LOG_TYPE_DEFAULT, "CARConnectionTimeStore trimming Connection Events", v5, 2u);
  }

  [v3 trimHistoricalConnectionDataBefore:*(a1 + 32) completion:*(a1 + 40)];
}

void __66__CARConnectionTimeStore_removeConnectionEventsBefore_completion___block_invoke_267(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CarConnectionTimeLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __66__CARConnectionTimeStore_removeConnectionEventsBefore_completion___block_invoke_267_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)clearHistoricalConnectionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__CARConnectionTimeStore_clearHistoricalConnectionsWithCompletion___block_invoke;
  v8[3] = &unk_1E82FC678;
  v9 = completionCopy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__CARConnectionTimeStore_clearHistoricalConnectionsWithCompletion___block_invoke_2;
  v6[3] = &unk_1E82FBF48;
  v7 = v9;
  v5 = v9;
  [(CARConnectionTimeStore *)self _xpcFetchWithServiceBlock:v8 errorHandler:v6];
}

uint64_t __67__CARConnectionTimeStore_clearHistoricalConnectionsWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchPreviousSessionConnectionDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__CARConnectionTimeStore_fetchPreviousSessionConnectionDataWithCompletion___block_invoke;
  v8[3] = &unk_1E82FC678;
  v9 = completionCopy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__CARConnectionTimeStore_fetchPreviousSessionConnectionDataWithCompletion___block_invoke_2;
  v6[3] = &unk_1E82FBF48;
  v7 = v9;
  v5 = v9;
  [(CARConnectionTimeStore *)self _xpcFetchWithServiceBlock:v8 errorHandler:v6];
}

void __75__CARConnectionTimeStore_fetchPreviousSessionConnectionDataWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = CarConnectionTimeLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __75__CARConnectionTimeStore_fetchPreviousSessionConnectionDataWithCompletion___block_invoke_2_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_setupConnectionForSystemDaemon:.cold.2()
{
  xpc_strerror();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __65__CARConnectionTimeStore__xpcFetchWithServiceBlock_errorHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__CARConnectionTimeStore_fetchRecentSessions___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __57__CARConnectionTimeStore_sendConnectionEvent_completion___block_invoke_265_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) eventName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __61__CARConnectionTimeStore_syncSendConnectionEvent_completion___block_invoke_266_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) eventName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __75__CARConnectionTimeStore_fetchPreviousSessionConnectionDataWithCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end