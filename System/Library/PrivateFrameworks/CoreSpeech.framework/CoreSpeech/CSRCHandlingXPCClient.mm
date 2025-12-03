@interface CSRCHandlingXPCClient
- (CSRCHandlingXPCClient)init;
- (id)_getRemoteServiceProxyObject;
- (void)_createClientConnection;
- (void)dealloc;
- (void)getMitigationDecisionForRCIdWithCompletion:(unint64_t)completion requestId:(id)id completion:(id)a5;
- (void)invalidate;
@end

@implementation CSRCHandlingXPCClient

- (void)_createClientConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.corespeech.corespeechd.rchandling.service" options:4096];
  rcXPCConnection = self->_rcXPCConnection;
  self->_rcXPCConnection = v3;

  v5 = self->_rcXPCConnection;
  v6 = CSRCHandlingXPCServiceGetXPCInterface();
  [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

  [(NSXPCConnection *)self->_rcXPCConnection setExportedObject:self];
  [(NSXPCConnection *)self->_rcXPCConnection _setQueue:self->_xpcConnectionQueue];
  objc_initWeak(&location, self);
  v7 = self->_rcXPCConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__CSRCHandlingXPCClient__createClientConnection__block_invoke;
  v11[3] = &unk_2784C5F68;
  objc_copyWeak(&v12, &location);
  [(NSXPCConnection *)v7 setInterruptionHandler:v11];
  v8 = self->_rcXPCConnection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__CSRCHandlingXPCClient__createClientConnection__block_invoke_2;
  v9[3] = &unk_2784C5F68;
  objc_copyWeak(&v10, &location);
  [(NSXPCConnection *)v8 setInvalidationHandler:v9];
  [(NSXPCConnection *)self->_rcXPCConnection resume];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __48__CSRCHandlingXPCClient__createClientConnection__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = [WeakRetained rcXPCConnection];
    v5 = [WeakRetained rcXPCConnection];
    *buf = 136315650;
    v11 = "[CSRCHandlingXPCClient _createClientConnection]_block_invoke";
    v12 = 2114;
    v13 = v4;
    v14 = 1026;
    v15 = [v5 processIdentifier];
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s Client Interruption Handler: %{public}@, client PID: %{public}d)", buf, 0x1Cu);
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained rcXPCConnection];

    if (v6)
    {
      v7 = [WeakRetained xpcConnectionQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__CSRCHandlingXPCClient__createClientConnection__block_invoke_8;
      block[3] = &unk_2784C6FD0;
      block[4] = WeakRetained;
      dispatch_async(v7, block);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __48__CSRCHandlingXPCClient__createClientConnection__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = [WeakRetained rcXPCConnection];
    v5 = [WeakRetained rcXPCConnection];
    *buf = 136315650;
    v11 = "[CSRCHandlingXPCClient _createClientConnection]_block_invoke_2";
    v12 = 2114;
    v13 = v4;
    v14 = 1026;
    v15 = [v5 processIdentifier];
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s Client Invalidation Handler: %{public}@, client PID: %{public}d exited", buf, 0x1Cu);
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained rcXPCConnection];

    if (v6)
    {
      v7 = [WeakRetained xpcConnectionQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__CSRCHandlingXPCClient__createClientConnection__block_invoke_10;
      block[3] = &unk_2784C6FD0;
      block[4] = WeakRetained;
      dispatch_async(v7, block);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __48__CSRCHandlingXPCClient__createClientConnection__block_invoke_10(uint64_t a1)
{
  [*(a1 + 32) setRcXPCConnection:0];
  v2 = *(a1 + 32);

  return [v2 setRemoteObjectProxy:0];
}

uint64_t __48__CSRCHandlingXPCClient__createClientConnection__block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) rcXPCConnection];
  [v2 invalidate];

  [*(a1 + 32) setRcXPCConnection:0];
  v3 = *(a1 + 32);

  return [v3 setRemoteObjectProxy:0];
}

- (id)_getRemoteServiceProxyObject
{
  v16 = *MEMORY[0x277D85DE8];
  remoteObjectProxy = self->_remoteObjectProxy;
  if (!remoteObjectProxy || !self->_rcXPCConnection)
  {
    v4 = MEMORY[0x277D015D8];
    v5 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[CSRCHandlingXPCClient _getRemoteServiceProxyObject]";
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Creating RemoteServiceProxy", buf, 0xCu);
    }

    rcXPCConnection = self->_rcXPCConnection;
    if (rcXPCConnection || ([(CSRCHandlingXPCClient *)self _createClientConnection], (rcXPCConnection = self->_rcXPCConnection) != 0))
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __53__CSRCHandlingXPCClient__getRemoteServiceProxyObject__block_invoke;
      v13[3] = &unk_2784C51E0;
      v13[4] = self;
      v7 = [(NSXPCConnection *)rcXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
      v8 = self->_remoteObjectProxy;
      self->_remoteObjectProxy = v7;
    }

    else
    {
      v12 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v15 = "[CSRCHandlingXPCClient _getRemoteServiceProxyObject]";
        _os_log_error_impl(&dword_222E4D000, v12, OS_LOG_TYPE_ERROR, "%s ERR: RCProcessing rcProcConnection is nil", buf, 0xCu);
      }

      v8 = self->_remoteObjectProxy;
      self->_remoteObjectProxy = 0;
    }

    remoteObjectProxy = self->_remoteObjectProxy;
  }

  v9 = remoteObjectProxy;
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __53__CSRCHandlingXPCClient__getRemoteServiceProxyObject__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v8 = v4;
      v9 = [v3 code];
      v10 = [v3 localizedDescription];
      v11 = 136315650;
      v12 = "[CSRCHandlingXPCClient _getRemoteServiceProxyObject]_block_invoke";
      v13 = 2050;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s ERR: RC Processing Remote Object Proxy returned error : %{public}ld (%{public}@)", &v11, 0x20u);
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    *(v5 + 8) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getMitigationDecisionForRCIdWithCompletion:(unint64_t)completion requestId:(id)id completion:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v9 = a5;
  v10 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[CSRCHandlingXPCClient getMitigationDecisionForRCIdWithCompletion:requestId:completion:]";
    v15 = 2048;
    completionCopy = completion;
    _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_DEFAULT, "%s Getting mitigation decision for rdId: %lu", &v13, 0x16u);
  }

  _getRemoteServiceProxyObject = [(CSRCHandlingXPCClient *)self _getRemoteServiceProxyObject];
  [_getRemoteServiceProxyObject getMitigationDecisionForRCIdWithCompletion:completion requestId:idCopy completion:v9];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(CSRCHandlingXPCClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = CSRCHandlingXPCClient;
  [(CSRCHandlingXPCClient *)&v3 dealloc];
}

- (void)invalidate
{
  [(NSXPCConnection *)self->_rcXPCConnection invalidate];
  rcXPCConnection = self->_rcXPCConnection;
  self->_rcXPCConnection = 0;
}

- (CSRCHandlingXPCClient)init
{
  v6.receiver = self;
  v6.super_class = CSRCHandlingXPCClient;
  v2 = [(CSRCHandlingXPCClient *)&v6 init];
  if (v2)
  {
    CSLogInitIfNeeded();
    v3 = [MEMORY[0x277D018F8] getSerialQueue:@"com.apple.corespeech.rchandling.xpc.connection" qualityOfService:33];
    xpcConnectionQueue = v2->_xpcConnectionQueue;
    v2->_xpcConnectionQueue = v3;
  }

  return v2;
}

@end