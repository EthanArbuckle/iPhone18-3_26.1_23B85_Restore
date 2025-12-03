@interface CDMXPCClient
- (BOOL)areAssetsAvailable:(id)available;
- (BOOL)registerWithAssetsDelegate:(id)delegate withType:(int64_t)type;
- (CDMXPCClient)init;
- (CDMXPCClient)initWithCallingBundleId:(id)id;
- (CDMXPCClient)initWithConnection:(id)connection delegate:(id)delegate wakeOnInit:(BOOL)init;
- (CDMXPCClient)initWithDelegate:(id)delegate;
- (CDMXPCClient)initWithDelegate:(id)delegate withCallingBundleId:(id)id;
- (id)connection;
- (void)dealloc;
- (void)doHandleCommand:(id)command forCallback:(id)callback;
- (void)invalidateConnection;
- (void)processCDMNluRequest:(id)request nullableCompletionHandler:(id)handler;
- (void)setup:(id)setup nullableCompletionHandler:(id)handler;
- (void)sharedInitTasks;
- (void)waitForDataDispatcherCompletion;
- (void)wake;
- (void)warmupWithCompletionHandler:(id)handler;
@end

@implementation CDMXPCClient

- (void)sharedInitTasks
{
  self->_lock._os_unfair_lock_opaque = 0;
  if (self->_wakeOnInit)
  {
    [(CDMXPCClient *)self wake];
  }
}

- (void)wake
{
  connection = [(CDMXPCClient *)self connection];
  v3 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_27];

  [v3 wake];
}

- (id)connection
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_connection)
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    v4 = +[CDMXPCDefines machServiceName];
    v5 = [v3 initWithMachServiceName:v4 options:4096];
    connection = self->_connection;
    self->_connection = v5;

    v7 = self->_connection;
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5836900];
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    objc_initWeak(&location, self);
    v9 = self->_connection;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __26__CDMXPCClient_connection__block_invoke;
    v17[3] = &unk_1E862E570;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:v17];
    v10 = self->_connection;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __26__CDMXPCClient_connection__block_invoke_428;
    v15[3] = &unk_1E862E570;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v10 setInterruptionHandler:v15];
    [(NSXPCConnection *)self->_connection resume];
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v21 = "[CDMXPCClient connection]";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Created connection to assistant_cdmd.", buf, 0xCu);
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = self->_connection;
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  [(CDMXPCClient *)self invalidateConnection];
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = CDMXPCClient;
  [(CDMXPCClient *)&v3 dealloc];
}

- (void)invalidateConnection
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
    v4 = self->_connection;
    self->_connection = 0;
  }
}

void __26__CDMXPCClient_connection__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 invalidateConnection];
  }

  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[CDMXPCClient connection]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Connection to assistant_cdmd was invalidated.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)doHandleCommand:(id)command forCallback:(id)callback
{
  v26 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  callbackCopy = callback;
  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v23 = "[CDMXPCClient doHandleCommand:forCallback:]";
    v24 = 2112;
    v25 = commandCopy;
    _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Sending over XPC -> command=%@", buf, 0x16u);
  }

  connection = [(CDMXPCClient *)self connection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __44__CDMXPCClient_doHandleCommand_forCallback___block_invoke;
  v20[3] = &unk_1E862E5E8;
  v10 = callbackCopy;
  v21 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v20];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    locale = [commandCopy locale];

    if (!locale)
    {
      localeFromLastSuccessfulSetup = [(CDMClientInterface *)self localeFromLastSuccessfulSetup];
      [commandCopy setLocale:localeFromLastSuccessfulSetup];
    }

    v14 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v23 = "[CDMXPCClient doHandleCommand:forCallback:]";
      v24 = 2112;
      v25 = commandCopy;
      _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s Sending over XPC a command that isKindOfClass CDMServiceGraphCommand -> command=%@", buf, 0x16u);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __44__CDMXPCClient_doHandleCommand_forCallback___block_invoke_453;
    v18[3] = &unk_1E862E6D0;
    v19 = v10;
    [v11 processRequestWithServiceGraphCommand:commandCopy completionHandler:v18];
    commandCopy = v19;
  }

  else
  {
    commandCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"This command not supported: command=%@", commandCopy];
    v16 = [(CDMClientInterface *)self createNSError:commandCopy errorCode:1];
    if (v10)
    {
      (*(v10 + 2))(v10, 0, v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __44__CDMXPCClient_doHandleCommand_forCallback___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[CDMXPCClient doHandleCommand:forCallback:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1DC287000, v4, OS_LOG_TYPE_ERROR, "%s [ERR]: Unable to make XPC connection, error=%@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __44__CDMXPCClient_doHandleCommand_forCallback___block_invoke_453(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v7 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315650;
      v10 = "[CDMXPCClient doHandleCommand:forCallback:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s XPC processRequestWithCmdCommandType finished with response=%@, error=%@", &v9, 0x20u);
    }

    (*(*(a1 + 32) + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)waitForDataDispatcherCompletion
{
  connection = [(CDMXPCClient *)self connection];
  v3 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_448];

  [v3 waitForDataDispatcherCompletionWithCompletionHandler:&__block_literal_global_451];
}

void __47__CDMXPCClient_waitForDataDispatcherCompletion__block_invoke_449()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    v2 = 136315138;
    v3 = "[CDMXPCClient waitForDataDispatcherCompletion]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v0, OS_LOG_TYPE_DEBUG, "%s CDMXPCService's waitForDataDispatcherCompletion method called", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __47__CDMXPCClient_waitForDataDispatcherCompletion__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[CDMXPCClient waitForDataDispatcherCompletion]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1DC287000, v3, OS_LOG_TYPE_ERROR, "%s [ERR]: waitForDataDispatcherCompletion connection error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)processCDMNluRequest:(id)request nullableCompletionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v32 = "[CDMXPCClient processCDMNluRequest:nullableCompletionHandler:]";
    v33 = 2112;
    v34 = requestCopy;
    _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Sending XPC Nlu request to service -> %@", buf, 0x16u);
  }

  if ([(CDMClientInterface *)self daemonKilled])
  {
    v9 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v30 = @"assistant_cdmd has been killed. Please call setup to ensure CDM can handle requests.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v11 = [v9 errorWithDomain:@"CDMXPCClientErrorDomain" code:0 userInfo:v10];

    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "[CDMXPCClient processCDMNluRequest:nullableCompletionHandler:]";
      v33 = 2112;
      v34 = v11;
      _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, v11);
    }

    else if (self->_delegate)
    {
      v19 = [CDMNluRequestID alloc];
      objcProto = [requestCopy objcProto];
      requestId = [objcProto requestId];
      v22 = [(CDMNluRequestID *)v19 initWithObjcProto:requestId];

      [(CDMClientDelegate *)self->_delegate processCDMNluRequestErrorCallback:v22 error:v11];
    }
  }

  else
  {
    connection = [(CDMXPCClient *)self connection];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __63__CDMXPCClient_processCDMNluRequest_nullableCompletionHandler___block_invoke;
    v26[3] = &unk_1E862E680;
    v14 = handlerCopy;
    v28 = v14;
    v26[4] = self;
    v15 = requestCopy;
    v27 = v15;
    v16 = [connection remoteObjectProxyWithErrorHandler:v26];

    objcProto2 = [v15 objcProto];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __63__CDMXPCClient_processCDMNluRequest_nullableCompletionHandler___block_invoke_444;
    v23[3] = &unk_1E862E6A8;
    v25 = v14;
    v23[4] = self;
    v24 = v15;
    [v16 processCDMNluRequestWithCdmNluRequest:objcProto2 completionHandler:v23];

    v11 = v28;
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __63__CDMXPCClient_processCDMNluRequest_nullableCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }

  else if (*(*(a1 + 32) + 48))
  {
    v5 = [CDMNluRequestID alloc];
    v6 = [*(a1 + 40) objcProto];
    v7 = [v6 requestId];
    v8 = [(CDMNluRequestID *)v5 initWithObjcProto:v7];

    [*(*(a1 + 32) + 48) processCDMNluRequestErrorCallback:v8 error:v3];
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[CDMXPCClient processCDMNluRequest:nullableCompletionHandler:]_block_invoke";
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_1DC287000, v9, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __63__CDMXPCClient_processCDMNluRequest_nullableCompletionHandler___block_invoke_444(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = [[CDMNluResponse alloc] initWithObjcProto:v6];

  v8 = *(a1 + 48);
  v9 = CDMOSLoggerForCategory(0);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      v17 = 136315394;
      v18 = "[CDMXPCClient processCDMNluRequest:nullableCompletionHandler:]_block_invoke";
      v19 = 2112;
      v20 = v7;
      _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s XPC response to Nlu request with callback handler <- %@", &v17, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v10)
    {
      v17 = 136315394;
      v18 = "[CDMXPCClient processCDMNluRequest:nullableCompletionHandler:]_block_invoke";
      v19 = 2112;
      v20 = v7;
      _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s XPC response to Nlu request without callback handler <- %@", &v17, 0x16u);
    }

    v12 = *(*(a1 + 32) + 48);
    if (v12)
    {
      if (v5)
      {
        v13 = [CDMNluRequestID alloc];
        v14 = [*(a1 + 40) objcProto];
        v15 = [v14 requestId];
        v16 = [(CDMNluRequestID *)v13 initWithObjcProto:v15];

        [*(*(a1 + 32) + 48) processCDMNluRequestErrorCallback:v16 error:v5];
      }

      else
      {
        [v12 processCDMNluRequestCallback:v7];
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setup:(id)setup nullableCompletionHandler:(id)handler
{
  setupCopy = setup;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  if ([(CDMClientInterface *)self daemonKilled])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:0];
    [(CDMXPCClient *)self setValue:v8 forKey:@"daemonKilled"];
  }

  [setupCopy createSandboxExtensionForXPC];
  connection = [(CDMXPCClient *)self connection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48__CDMXPCClient_setup_nullableCompletionHandler___block_invoke;
  v18[3] = &unk_1E862E630;
  objc_copyWeak(&v20, &location);
  v10 = handlerCopy;
  v19 = v10;
  v11 = [connection synchronousRemoteObjectProxyWithErrorHandler:v18];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__CDMXPCClient_setup_nullableCompletionHandler___block_invoke_2;
  v14[3] = &unk_1E862E658;
  objc_copyWeak(&v17, &location);
  v12 = setupCopy;
  v15 = v12;
  v13 = v10;
  v16 = v13;
  [v11 setupWithConfig:v12 completionHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __48__CDMXPCClient_setup_nullableCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setValue:v6 forKey:@"errorFromSetup"];
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, v6);
    }
  }
}

void __48__CDMXPCClient_setup_nullableCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:v7 == 0];
    [WeakRetained setValue:v4 forKey:@"successFromSetup"];

    [WeakRetained setValue:v7 forKey:@"errorFromSetup"];
    if (!v7)
    {
      v5 = [*(a1 + 32) localeIdentifier];
      [WeakRetained setSuccessfulLocale:v5];
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, v7);
    }
  }
}

void __20__CDMXPCClient_wake__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[CDMXPCClient wake]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, "%s [WARN]: Error waking assistant_cdmd: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)warmupWithCompletionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[CDMXPCClient warmupWithCompletionHandler:]";
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  connection = [(CDMXPCClient *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__CDMXPCClient_warmupWithCompletionHandler___block_invoke;
  v13[3] = &unk_1E862E5E8;
  v7 = handlerCopy;
  v14 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v13];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__CDMXPCClient_warmupWithCompletionHandler___block_invoke_437;
  v11[3] = &unk_1E862E5E8;
  v12 = v7;
  v9 = v7;
  [v8 warmupWithCompletionHandler:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __44__CDMXPCClient_warmupWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[CDMXPCClient warmupWithCompletionHandler:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1DC287000, v4, OS_LOG_TYPE_ERROR, "%s [ERR]: warmupWithCompletionHandler connection error: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __44__CDMXPCClient_warmupWithCompletionHandler___block_invoke_437(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDMOSLoggerForCategory(0);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[CDMXPCClient warmupWithCompletionHandler:]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: warmupWithCompletionHandler error: %@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = "[CDMXPCClient warmupWithCompletionHandler:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s warmupWithCompletionHandler completed without error", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)registerWithAssetsDelegate:(id)delegate withType:(int64_t)type
{
  v16 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    assetsLocaleIdentifier = self->_assetsLocaleIdentifier;
    v12 = 136315394;
    v13 = "[CDMXPCClient registerWithAssetsDelegate:withType:]";
    v14 = 2112;
    v15 = assetsLocaleIdentifier;
    _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s Register assets delegate for CDMXPCClient for locale: %@", &v12, 0x16u);
  }

  v8 = [CDMAssetsUtils registerWithAssetsDelegate:delegateCopy withType:type withLocale:self->_assetsLocaleIdentifier];
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)areAssetsAvailable:(id)available
{
  v24 = *MEMORY[0x1E69E9840];
  availableCopy = available;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  connection = [(CDMXPCClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __35__CDMXPCClient_areAssetsAvailable___block_invoke;
  v17[3] = &unk_1E862E598;
  v17[4] = &v18;
  v6 = [connection remoteObjectProxyWithErrorHandler:v17];

  v7 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __35__CDMXPCClient_areAssetsAvailable___block_invoke_433;
  v14[3] = &unk_1E862E5C0;
  v16 = &v18;
  v8 = v7;
  v15 = v8;
  [v6 areAssetsAvailableWithLocale:availableCopy completionHandler:v14];
  v9 = dispatch_time(0, 1000000000 * +[CDMUserDefaultsUtils readXPCCallbackDefaultTimeout]);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[CDMXPCClient areAssetsAvailable:]";
      _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: Timed-out waiting for areAssetsAvailable XPC call. Returning false", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);
  v12 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

void __35__CDMXPCClient_areAssetsAvailable___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[CDMXPCClient areAssetsAvailable:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_1DC287000, v4, OS_LOG_TYPE_ERROR, "%s [ERR]: areAssetsAvailable connection error: %@", &v6, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *MEMORY[0x1E69E9840];
}

- (CDMXPCClient)initWithDelegate:(id)delegate withCallingBundleId:(id)id
{
  idCopy = id;
  delegateCopy = delegate;
  v8 = [[CDMDataDispatcherContext alloc] initWithCallingBundleId:idCopy];

  dataDispatcherContext = self->_dataDispatcherContext;
  self->_dataDispatcherContext = v8;

  v10 = [(CDMXPCClient *)self initWithDelegate:delegateCopy];
  return v10;
}

- (CDMXPCClient)initWithDelegate:(id)delegate
{
  self->_wakeOnInit = 1;
  objc_storeStrong(&self->_delegate, delegate);
  [(CDMXPCClient *)self sharedInitTasks];
  return self;
}

- (CDMXPCClient)initWithConnection:(id)connection delegate:(id)delegate wakeOnInit:(BOOL)init
{
  connectionCopy = connection;
  delegateCopy = delegate;
  self->_wakeOnInit = init;
  connection = self->_connection;
  self->_connection = connectionCopy;
  v11 = connectionCopy;

  delegate = self->_delegate;
  self->_delegate = delegateCopy;

  [(CDMXPCClient *)self sharedInitTasks];
  return self;
}

- (CDMXPCClient)initWithCallingBundleId:(id)id
{
  idCopy = id;
  v5 = [[CDMDataDispatcherContext alloc] initWithCallingBundleId:idCopy];

  dataDispatcherContext = self->_dataDispatcherContext;
  self->_dataDispatcherContext = v5;

  return [(CDMXPCClient *)self init];
}

- (CDMXPCClient)init
{
  self->_wakeOnInit = 1;
  [(CDMXPCClient *)self sharedInitTasks];
  return self;
}

void __26__CDMXPCClient_connection__block_invoke_428(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [v3 setValue:v4 forKey:@"daemonKilled"];

    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[CDMXPCClient connection]_block_invoke";
      _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: Connection to assistant_cdmd was interrupted. daemonKilled KVO set to true.", &v7, 0xCu);
    }
  }

  else
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[CDMXPCClient connection]_block_invoke";
      _os_log_error_impl(&dword_1DC287000, v3, OS_LOG_TYPE_ERROR, "%s [ERR]: Connection to assistant_cdmd was interrupted. CDMXPCClient (self) was nil, so couldn't set daemonKilled KVO.", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end