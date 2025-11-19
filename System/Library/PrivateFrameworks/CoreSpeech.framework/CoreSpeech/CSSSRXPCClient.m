@interface CSSSRXPCClient
- (CSSSRXPCClient)init;
- (CSSSRXPCClientDelegate)delegate;
- (id)_getRemoteServiceProxyObject;
- (void)_createClientConnection;
- (void)dealloc;
- (void)didFinishSpeakerRecognition:(id)a3;
- (void)didReceiveSpeakerRecognitionScoreCard:(id)a3;
- (void)invalidate;
- (void)startXPCConnection;
@end

@implementation CSSSRXPCClient

- (CSSSRXPCClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didFinishSpeakerRecognition:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[CSSSRXPCClient didFinishSpeakerRecognition:]";
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__CSSSRXPCClient_didFinishSpeakerRecognition___block_invoke;
  v9[3] = &unk_2784C6FA8;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __46__CSSSRXPCClient_didFinishSpeakerRecognition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v4 didFinishSpeakerRecognition:*(a1 + 40)];
  }
}

- (void)didReceiveSpeakerRecognitionScoreCard:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D015D8];
  v6 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[CSSSRXPCClient didReceiveSpeakerRecognitionScoreCard:]";
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (v4)
  {
    queue = self->_queue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__CSSSRXPCClient_didReceiveSpeakerRecognitionScoreCard___block_invoke;
    v10[3] = &unk_2784C6FA8;
    v10[4] = self;
    v11 = v4;
    dispatch_async(queue, v10);
  }

  else
  {
    v8 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[CSSSRXPCClient didReceiveSpeakerRecognitionScoreCard:]";
      _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s scoreCard is nil!", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __56__CSSSRXPCClient_didReceiveSpeakerRecognitionScoreCard___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v4 didReceiveSpeakerRecognitionScoreCard:*(a1 + 40)];
  }
}

- (void)_createClientConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.corespeech.corespeechd.ssr.service" options:4096];
  ssrConnection = self->_ssrConnection;
  self->_ssrConnection = v3;

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836A8A18];
  [(NSXPCConnection *)self->_ssrConnection setRemoteObjectInterface:v5];

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283681870];
  [(NSXPCConnection *)self->_ssrConnection setExportedInterface:v6];

  [(NSXPCConnection *)self->_ssrConnection setExportedObject:self];
  [(NSXPCConnection *)self->_ssrConnection _setQueue:self->_xpcConnectionQueue];
  objc_initWeak(&location, self);
  v7 = self->_ssrConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__CSSSRXPCClient__createClientConnection__block_invoke;
  v11[3] = &unk_2784C5F68;
  objc_copyWeak(&v12, &location);
  [(NSXPCConnection *)v7 setInterruptionHandler:v11];
  v8 = self->_ssrConnection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__CSSSRXPCClient__createClientConnection__block_invoke_2;
  v9[3] = &unk_2784C5F68;
  objc_copyWeak(&v10, &location);
  [(NSXPCConnection *)v8 setInvalidationHandler:v9];
  [(NSXPCConnection *)self->_ssrConnection resume];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __41__CSSSRXPCClient__createClientConnection__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = [WeakRetained ssrConnection];
    v5 = [WeakRetained ssrConnection];
    *buf = 136315650;
    v11 = "[CSSSRXPCClient _createClientConnection]_block_invoke";
    v12 = 2114;
    v13 = v4;
    v14 = 1026;
    v15 = [v5 processIdentifier];
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s Client Interruption Handler: %{public}@, client PID: %{public}d)", buf, 0x1Cu);
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained ssrConnection];

    if (v6)
    {
      v7 = [WeakRetained queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __41__CSSSRXPCClient__createClientConnection__block_invoke_19;
      block[3] = &unk_2784C6FD0;
      block[4] = WeakRetained;
      dispatch_async(v7, block);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __41__CSSSRXPCClient__createClientConnection__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = [WeakRetained ssrConnection];
    v5 = [WeakRetained ssrConnection];
    *buf = 136315650;
    v11 = "[CSSSRXPCClient _createClientConnection]_block_invoke_2";
    v12 = 2114;
    v13 = v4;
    v14 = 1026;
    v15 = [v5 processIdentifier];
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s Client Invalidation Handler: %{public}@, client PID: %{public}d exited", buf, 0x1Cu);
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained ssrConnection];

    if (v6)
    {
      v7 = [WeakRetained queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __41__CSSSRXPCClient__createClientConnection__block_invoke_20;
      block[3] = &unk_2784C6FD0;
      block[4] = WeakRetained;
      dispatch_async(v7, block);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __41__CSSSRXPCClient__createClientConnection__block_invoke_19(uint64_t a1)
{
  v2 = [*(a1 + 32) ssrConnection];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setSsrConnection:0];
}

- (id)_getRemoteServiceProxyObject
{
  v16 = *MEMORY[0x277D85DE8];
  remoteObjectProxy = self->_remoteObjectProxy;
  if (!remoteObjectProxy || !self->_ssrConnection)
  {
    v4 = MEMORY[0x277D015D8];
    v5 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[CSSSRXPCClient _getRemoteServiceProxyObject]";
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Creating RemoteServiceProxy", buf, 0xCu);
    }

    ssrConnection = self->_ssrConnection;
    if (ssrConnection || ([(CSSSRXPCClient *)self _createClientConnection], (ssrConnection = self->_ssrConnection) != 0))
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __46__CSSSRXPCClient__getRemoteServiceProxyObject__block_invoke;
      v13[3] = &unk_2784C51E0;
      v13[4] = self;
      v7 = [(NSXPCConnection *)ssrConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
      v8 = self->_remoteObjectProxy;
      self->_remoteObjectProxy = v7;
    }

    else
    {
      v12 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v15 = "[CSSSRXPCClient _getRemoteServiceProxyObject]";
        _os_log_error_impl(&dword_222E4D000, v12, OS_LOG_TYPE_ERROR, "%s ERR: SSR ssrConnection is nil", buf, 0xCu);
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

void __46__CSSSRXPCClient__getRemoteServiceProxyObject__block_invoke(uint64_t a1, void *a2)
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
      v12 = "[CSSSRXPCClient _getRemoteServiceProxyObject]_block_invoke";
      v13 = 2050;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s ERR: SSR Remote Object Proxy returned error : %{public}ld (%{public}@)", &v11, 0x20u);
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)startXPCConnection
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CSSSRXPCClient_startXPCConnection__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __36__CSSSRXPCClient_startXPCConnection__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _getRemoteServiceProxyObject];
  [v1 startXPCConnection];
}

- (void)dealloc
{
  [(CSSSRXPCClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = CSSSRXPCClient;
  [(CSSSRXPCClient *)&v3 dealloc];
}

- (void)invalidate
{
  [(NSXPCConnection *)self->_ssrConnection invalidate];
  ssrConnection = self->_ssrConnection;
  self->_ssrConnection = 0;
}

- (CSSSRXPCClient)init
{
  v17 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = CSSSRXPCClient;
  v2 = [(CSSSRXPCClient *)&v14 init];
  if (!v2)
  {
LABEL_5:
    v11 = v2;
    goto LABEL_9;
  }

  CSLogInitIfNeeded();
  v3 = [MEMORY[0x277D018F8] getSerialQueue:@"com.apple.CoreSpeech.Connection.SSR.Client" qualityOfService:33];
  queue = v2->_queue;
  v2->_queue = v3;

  v5 = [MEMORY[0x277D018F8] getSerialQueue:@"com.apple.CoreSpeech.Connection.SSR" qualityOfService:33];
  xpcConnectionQueue = v2->_xpcConnectionQueue;
  v2->_xpcConnectionQueue = v5;

  v7 = [(CSSSRXPCClient *)v2 _getRemoteServiceProxyObject];
  remoteObjectProxy = v2->_remoteObjectProxy;
  v2->_remoteObjectProxy = v7;

  v9 = *MEMORY[0x277D015D8];
  v10 = *MEMORY[0x277D015D8];
  if (v2->_remoteObjectProxy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[CSSSRXPCClient init]";
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s Successfully created SSR connection", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v16 = "[CSSSRXPCClient init]";
    _os_log_error_impl(&dword_222E4D000, v9, OS_LOG_TYPE_ERROR, "%s SSR Remote Object Proxy is nil", buf, 0xCu);
  }

  v11 = 0;
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

@end