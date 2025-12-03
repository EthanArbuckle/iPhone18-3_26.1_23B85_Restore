@interface CSAttSiriServiceClient
- (CSAttSiriServiceClient)init;
- (CSAttSiriServiceDelegate)delegate;
- (void)_setupAttSiriSvcXpcConnection;
- (void)attSiriAttendingFailed;
- (void)attSiriAttendingTimeoutTriggered;
- (void)attSiriDidDetectAttendingTrigger:(id)trigger;
- (void)attSiriDidDetectContinuousConversation;
- (void)dealloc;
- (void)invalidate;
- (void)startAttendingWithContext:(id)context;
@end

@implementation CSAttSiriServiceClient

- (CSAttSiriServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)attSiriDidDetectContinuousConversation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 attSiriDidDetectContinuousConversation];
    }
  }
}

- (void)attSiriAttendingFailed
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[CSAttSiriServiceClient attSiriAttendingFailed]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 attSiriAttendingFailed];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)attSiriAttendingTimeoutTriggered
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[CSAttSiriServiceClient attSiriAttendingTimeoutTriggered]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 attSiriAttendingTimeoutTriggered];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)attSiriDidDetectAttendingTrigger:(id)trigger
{
  v16 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[CSAttSiriServiceClient attSiriDidDetectAttendingTrigger:]";
    v14 = 2112;
    v15 = triggerCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s triggerInfo: %@", &v12, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 attSiriDidDetectAttendingTrigger:triggerCopy];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_setupAttSiriSvcXpcConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.corespeech.corespeechd.attsiri.service" options:4096];
  attSiriSvcConn = self->_attSiriSvcConn;
  self->_attSiriSvcConn = v3;

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28366ED30];
  [(NSXPCConnection *)self->_attSiriSvcConn setRemoteObjectInterface:v5];

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28366EBD0];
  [(NSXPCConnection *)self->_attSiriSvcConn setExportedInterface:v6];

  [(NSXPCConnection *)self->_attSiriSvcConn setExportedObject:self];
  objc_initWeak(&location, self);
  v7 = self->_attSiriSvcConn;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__CSAttSiriServiceClient__setupAttSiriSvcXpcConnection__block_invoke;
  v11[3] = &unk_2784C5F68;
  objc_copyWeak(&v12, &location);
  [(NSXPCConnection *)v7 setInterruptionHandler:v11];
  v8 = self->_attSiriSvcConn;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__CSAttSiriServiceClient__setupAttSiriSvcXpcConnection__block_invoke_72;
  v9[3] = &unk_2784C5F68;
  objc_copyWeak(&v10, &location);
  [(NSXPCConnection *)v8 setInvalidationHandler:v9];
  [(NSXPCConnection *)self->_attSiriSvcConn resume];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __55__CSAttSiriServiceClient__setupAttSiriSvcXpcConnection__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = [WeakRetained attSiriSvcConn];
    v5 = [WeakRetained attSiriSvcConn];
    v9 = 136315650;
    v10 = "[CSAttSiriServiceClient _setupAttSiriSvcXpcConnection]_block_invoke";
    v11 = 2114;
    v12 = v4;
    v13 = 1026;
    v14 = [v5 processIdentifier];
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s Client Interruption Handler: %{public}@, client PID: %{public}d)", &v9, 0x1Cu);
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained attSiriSvcConn];

    if (v6)
    {
      v7 = [WeakRetained attSiriSvcConn];
      [v7 invalidate];

      [WeakRetained setAttSiriSvcConn:0];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __55__CSAttSiriServiceClient__setupAttSiriSvcXpcConnection__block_invoke_72(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = [WeakRetained attSiriSvcConn];
    v5 = [WeakRetained attSiriSvcConn];
    v8 = 136315650;
    v9 = "[CSAttSiriServiceClient _setupAttSiriSvcXpcConnection]_block_invoke";
    v10 = 2114;
    v11 = v4;
    v12 = 1026;
    v13 = [v5 processIdentifier];
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s Client Invalidation Handler: %{public}@, client PID: %{public}d exited", &v8, 0x1Cu);
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained attSiriSvcConn];

    if (v6)
    {
      [WeakRetained setAttSiriSvcConn:0];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(CSAttSiriServiceClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = CSAttSiriServiceClient;
  [(CSAttSiriServiceClient *)&v3 dealloc];
}

- (void)invalidate
{
  [(NSXPCConnection *)self->_attSiriSvcConn invalidate];
  attSiriSvcConn = self->_attSiriSvcConn;
  self->_attSiriSvcConn = 0;
}

- (void)startAttendingWithContext:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSAttSiriServiceClient startAttendingWithContext:]";
    v9 = 2112;
    v10 = contextCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s ctx=%@", &v7, 0x16u);
  }

  [self->_remoteSvcProxy startAttendingWithContext:contextCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (CSAttSiriServiceClient)init
{
  v14 = *MEMORY[0x277D85DE8];
  CSLogInitIfNeeded();
  v11.receiver = self;
  v11.super_class = CSAttSiriServiceClient;
  v3 = [(CSAttSiriServiceClient *)&v11 init];
  v4 = v3;
  if (v3 && ([(CSAttSiriServiceClient *)v3 _setupAttSiriSvcXpcConnection], [(NSXPCConnection *)v4->_attSiriSvcConn synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_944], v5 = objc_claimAutoreleasedReturnValue(), remoteSvcProxy = v4->_remoteSvcProxy, v4->_remoteSvcProxy = v5, remoteSvcProxy, !v4->_remoteSvcProxy))
  {
    v8 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[CSAttSiriServiceClient init]";
      _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s _remoteSvcProxy is nil!", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

void __30__CSAttSiriServiceClient_init__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[CSAttSiriServiceClient init]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s ERR: Failed to get remote proxy object for AttSiriXPC: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end