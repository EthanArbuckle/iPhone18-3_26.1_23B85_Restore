@interface CSSmartSiriVolumeClient
- (CSSmartSiriVolumeClient)init;
- (CSSmartSiriVolumeClientDelegate)delegate;
- (id)_getRemoteServiceProxyObject;
- (id)getVolumeForTTSType:(unint64_t)type withContext:(id)context;
- (void)_createClientConnection;
- (void)dealloc;
- (void)didTTSVolumeChangeForReason:(unint64_t)reason;
- (void)setPermanentVolumeOffsetWithDirection:(BOOL)direction;
- (void)setSmartSiriVolumeDirection:(BOOL)direction;
- (void)setSmartSiriVolumePercentage:(float)percentage;
@end

@implementation CSSmartSiriVolumeClient

- (CSSmartSiriVolumeClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_createClientConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.corespeech.corespeechd.ssv.service" options:4096];
  ssvConnection = self->_ssvConnection;
  self->_ssvConnection = v3;

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836A88F8];
  [(NSXPCConnection *)self->_ssvConnection setRemoteObjectInterface:v5];

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836749D8];
  [(NSXPCConnection *)self->_ssvConnection setExportedInterface:v6];

  [(NSXPCConnection *)self->_ssvConnection setExportedObject:self];
  objc_initWeak(&location, self);
  v7 = self->_ssvConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__CSSmartSiriVolumeClient__createClientConnection__block_invoke;
  v11[3] = &unk_2784C5F68;
  objc_copyWeak(&v12, &location);
  [(NSXPCConnection *)v7 setInterruptionHandler:v11];
  v8 = self->_ssvConnection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__CSSmartSiriVolumeClient__createClientConnection__block_invoke_2;
  v9[3] = &unk_2784C5F68;
  objc_copyWeak(&v10, &location);
  [(NSXPCConnection *)v8 setInvalidationHandler:v9];
  [(NSXPCConnection *)self->_ssvConnection resume];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __50__CSSmartSiriVolumeClient__createClientConnection__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *MEMORY[0x277D01598];
  if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = [WeakRetained ssvConnection];
    v5 = [WeakRetained ssvConnection];
    *buf = 136315650;
    v11 = "[CSSmartSiriVolumeClient _createClientConnection]_block_invoke";
    v12 = 2114;
    v13 = v4;
    v14 = 1026;
    v15 = [v5 processIdentifier];
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s Client Interruption Handler: %{public}@, client PID: %{public}d)", buf, 0x1Cu);
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained ssvConnection];

    if (v6)
    {
      v7 = [WeakRetained queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__CSSmartSiriVolumeClient__createClientConnection__block_invoke_21;
      block[3] = &unk_2784C6FD0;
      block[4] = WeakRetained;
      dispatch_async(v7, block);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __50__CSSmartSiriVolumeClient__createClientConnection__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *MEMORY[0x277D01598];
  if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = [WeakRetained ssvConnection];
    v5 = [WeakRetained ssvConnection];
    *buf = 136315650;
    v11 = "[CSSmartSiriVolumeClient _createClientConnection]_block_invoke_2";
    v12 = 2114;
    v13 = v4;
    v14 = 1026;
    v15 = [v5 processIdentifier];
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s Client Invalidation Handler: %{public}@, client PID: %{public}d exited", buf, 0x1Cu);
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained ssvConnection];

    if (v6)
    {
      v7 = [WeakRetained queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__CSSmartSiriVolumeClient__createClientConnection__block_invoke_22;
      block[3] = &unk_2784C6FD0;
      block[4] = WeakRetained;
      dispatch_async(v7, block);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __50__CSSmartSiriVolumeClient__createClientConnection__block_invoke_21(uint64_t a1)
{
  v2 = [*(a1 + 32) ssvConnection];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setSsvConnection:0];
}

- (id)_getRemoteServiceProxyObject
{
  v10 = *MEMORY[0x277D85DE8];
  ssvConnection = self->_ssvConnection;
  if (ssvConnection || ([(CSSmartSiriVolumeClient *)self _createClientConnection], (ssvConnection = self->_ssvConnection) != 0))
  {
    v4 = [(NSXPCConnection *)ssvConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_3771];
  }

  else
  {
    v7 = *MEMORY[0x277D01598];
    if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[CSSmartSiriVolumeClient _getRemoteServiceProxyObject]";
      _os_log_error_impl(&dword_222E4D000, v7, OS_LOG_TYPE_ERROR, "%s ERR: SmartSiriVolume ssvConnection is nil", &v8, 0xCu);
    }

    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

void __55__CSSmartSiriVolumeClient__getRemoteServiceProxyObject__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *MEMORY[0x277D01598];
    if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_ERROR))
    {
      v5 = v3;
      v6 = [v2 code];
      v7 = [v2 localizedDescription];
      v8 = 136315650;
      v9 = "[CSSmartSiriVolumeClient _getRemoteServiceProxyObject]_block_invoke";
      v10 = 2050;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s ERR: SmartSiriVolume Remote Object Proxy returned error : %{public}ld (%{public}@)", &v8, 0x20u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)didTTSVolumeChangeForReason:(unint64_t)reason
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__CSSmartSiriVolumeClient_didTTSVolumeChangeForReason___block_invoke;
  v4[3] = &unk_2784C6EC0;
  v4[4] = self;
  v4[5] = reason;
  dispatch_async(queue, v4);
}

void __55__CSSmartSiriVolumeClient_didTTSVolumeChangeForReason___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01598];
  if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v10 = 136315394;
    v11 = "[CSSmartSiriVolumeClient didTTSVolumeChangeForReason:]_block_invoke";
    v12 = 1026;
    v13 = v3;
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume didChangeForReason: %{public}d", &v10, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained((*(a1 + 32) + 8));
      [v8 didSmartSiriVolumeChangeForReason:*(a1 + 40)];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setPermanentVolumeOffsetWithDirection:(BOOL)direction
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__CSSmartSiriVolumeClient_setPermanentVolumeOffsetWithDirection___block_invoke;
  v4[3] = &unk_2784C6390;
  v4[4] = self;
  directionCopy = direction;
  dispatch_async(queue, v4);
}

void __65__CSSmartSiriVolumeClient_setPermanentVolumeOffsetWithDirection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _getRemoteServiceProxyObject];
  v3 = v2;
  if (v2)
  {
    [v2 setPermanentVolumeOffsetWithDirection:*(a1 + 40)];
  }

  else
  {
    v4 = *MEMORY[0x277D01598];
    if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[CSSmartSiriVolumeClient setPermanentVolumeOffsetWithDirection:]_block_invoke";
      _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s SmartSiriVolume Remote Object Proxy is nil", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setSmartSiriVolumeDirection:(BOOL)direction
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__CSSmartSiriVolumeClient_setSmartSiriVolumeDirection___block_invoke;
  v4[3] = &unk_2784C6390;
  v4[4] = self;
  directionCopy = direction;
  dispatch_sync(queue, v4);
}

void __55__CSSmartSiriVolumeClient_setSmartSiriVolumeDirection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _getRemoteServiceProxyObject];
  v3 = v2;
  if (v2)
  {
    [v2 setSmartSiriVolumeDirection:*(a1 + 40)];
  }

  else
  {
    v4 = *MEMORY[0x277D01598];
    if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[CSSmartSiriVolumeClient setSmartSiriVolumeDirection:]_block_invoke";
      _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s SmartSiriVolume Remote Object Proxy is nil", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setSmartSiriVolumePercentage:(float)percentage
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__CSSmartSiriVolumeClient_setSmartSiriVolumePercentage___block_invoke;
  v4[3] = &unk_2784C5998;
  v4[4] = self;
  percentageCopy = percentage;
  dispatch_sync(queue, v4);
}

void __56__CSSmartSiriVolumeClient_setSmartSiriVolumePercentage___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _getRemoteServiceProxyObject];
  v4 = v2;
  if (v2)
  {
    LODWORD(v3) = *(a1 + 40);
    [v2 setSmartSiriVolumePercentage:v3];
  }

  else
  {
    v5 = *MEMORY[0x277D01598];
    if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[CSSmartSiriVolumeClient setSmartSiriVolumePercentage:]_block_invoke";
      _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s SmartSiriVolume Remote Object Proxy is nil", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)getVolumeForTTSType:(unint64_t)type withContext:(id)context
{
  contextCopy = context;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3780;
  v19 = __Block_byref_object_dispose__3781;
  v20 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__CSSmartSiriVolumeClient_getVolumeForTTSType_withContext___block_invoke;
  v11[3] = &unk_2784C4BE0;
  v11[4] = self;
  v12 = contextCopy;
  v13 = &v15;
  typeCopy = type;
  v8 = contextCopy;
  dispatch_sync(queue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __59__CSSmartSiriVolumeClient_getVolumeForTTSType_withContext___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _getRemoteServiceProxyObject];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__CSSmartSiriVolumeClient_getVolumeForTTSType_withContext___block_invoke_3;
    v8[3] = &unk_2784C3898;
    v5 = *(a1 + 56);
    v8[4] = *(a1 + 48);
    [v2 getVolumeForTTSType:v5 withContext:v4 reply:v8];
  }

  else
  {
    v6 = *MEMORY[0x277D01598];
    if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "[CSSmartSiriVolumeClient getVolumeForTTSType:withContext:]_block_invoke";
      _os_log_error_impl(&dword_222E4D000, v6, OS_LOG_TYPE_ERROR, "%s SmartSiriVolume Remote Object Proxy is nil", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __59__CSSmartSiriVolumeClient_getVolumeForTTSType_withContext___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *MEMORY[0x277D01598];
    if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[CSSmartSiriVolumeClient getVolumeForTTSType:withContext:]_block_invoke";
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&dword_222E4D000, v7, OS_LOG_TYPE_ERROR, "%s SmartSiriVolume Failed to get estimate with %{public}@", &v9, 0x16u);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_ssvConnection invalidate];
  ssvConnection = self->_ssvConnection;
  self->_ssvConnection = 0;

  v4.receiver = self;
  v4.super_class = CSSmartSiriVolumeClient;
  [(CSSmartSiriVolumeClient *)&v4 dealloc];
}

- (CSSmartSiriVolumeClient)init
{
  v11 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = CSSmartSiriVolumeClient;
  v2 = [(CSSmartSiriVolumeClient *)&v8 init];
  if (v2)
  {
    CSLogInitIfNeeded();
    v3 = dispatch_queue_create("com.apple.CoreSpeech.Connection.Listener", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = *MEMORY[0x277D01598];
    if (os_log_type_enabled(*MEMORY[0x277D01598], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[CSSmartSiriVolumeClient init]";
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Creating SmartSiriVolume connection", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

@end