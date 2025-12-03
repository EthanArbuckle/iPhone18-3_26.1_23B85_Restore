@interface CSSiriAudioMessageRequestClient
- (CSSiriAudioMessageRequestClient)init;
- (id)_connection;
- (id)_newConnection;
- (id)_service;
- (void)dealloc;
- (void)forceReleaseAllAudioMessageRetainLock;
- (void)getAudioFileWithRequestId:(id)id completion:(id)completion;
- (void)releaseAudioMessageRetainLockFromRequestId:(id)id;
@end

@implementation CSSiriAudioMessageRequestClient

- (CSSiriAudioMessageRequestClient)init
{
  v7.receiver = self;
  v7.super_class = CSSiriAudioMessageRequestClient;
  v2 = [(CSSiriAudioMessageRequestClient *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("CSSiriAudioMessageRequestClient Queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)forceReleaseAllAudioMessageRetainLock
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CSSiriAudioMessageRequestClient_forceReleaseAllAudioMessageRetainLock__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __72__CSSiriAudioMessageRequestClient_forceReleaseAllAudioMessageRetainLock__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _service];
  [v1 forceReleaseAllAudioMessageRetainLock];
}

- (void)releaseAudioMessageRetainLockFromRequestId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__CSSiriAudioMessageRequestClient_releaseAudioMessageRetainLockFromRequestId___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

void __78__CSSiriAudioMessageRequestClient_releaseAudioMessageRetainLockFromRequestId___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  [v2 releaseAudioMessageRetainLockFromRequestId:*(a1 + 40)];
}

- (void)getAudioFileWithRequestId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CSSiriAudioMessageRequestClient_getAudioFileWithRequestId_completion___block_invoke;
  block[3] = &unk_2784C6C68;
  block[4] = self;
  v12 = idCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = idCopy;
  dispatch_async(queue, block);
}

void __72__CSSiriAudioMessageRequestClient_getAudioFileWithRequestId_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__CSSiriAudioMessageRequestClient_getAudioFileWithRequestId_completion___block_invoke_2;
  v4[3] = &unk_2784C6C40;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 getAudioFileWithRequestId:v3 completion:v4];
}

uint64_t __72__CSSiriAudioMessageRequestClient_getAudioFileWithRequestId_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_service
{
  _connection = [(CSSiriAudioMessageRequestClient *)self _connection];
  remoteObjectProxy = [_connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)_connection
{
  v28 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    xpcConnectionUUIDString = self->_xpcConnectionUUIDString;
    self->_xpcConnectionUUIDString = uUIDString;

    v7 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[CSSiriAudioMessageRequestClient _connection]";
      _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s Creating new xpc connection...", buf, 0xCu);
    }

    _newConnection = [(CSSiriAudioMessageRequestClient *)self _newConnection];
    v9 = self->_xpcConnection;
    self->_xpcConnection = _newConnection;

    objc_initWeak(buf, self);
    v10 = self->_xpcConnectionUUIDString;
    v11 = self->_xpcConnection;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __46__CSSiriAudioMessageRequestClient__connection__block_invoke;
    v23[3] = &unk_2784C6C18;
    objc_copyWeak(&v25, buf);
    v12 = v10;
    v24 = v12;
    [(NSXPCConnection *)v11 setInterruptionHandler:v23];
    v13 = self->_xpcConnection;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __46__CSSiriAudioMessageRequestClient__connection__block_invoke_5;
    v20 = &unk_2784C6C18;
    objc_copyWeak(&v22, buf);
    v14 = v12;
    v21 = v14;
    [(NSXPCConnection *)v13 setInvalidationHandler:&v17];
    [(NSXPCConnection *)self->_xpcConnection resume:v17];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v25);

    objc_destroyWeak(buf);
    xpcConnection = self->_xpcConnection;
  }

  v15 = *MEMORY[0x277D85DE8];

  return xpcConnection;
}

void __46__CSSiriAudioMessageRequestClient__connection__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D015D8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[CSSiriAudioMessageRequestClient _connection]_block_invoke";
    v16 = 2112;
    v17 = @"com.apple.siri.audio_message_service.xpc";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s xpc connection %@ Interrupted", &v14, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v7 = [WeakRetained xpcConnectionUUIDString];
    LOBYTE(v6) = [v6 isEqualToString:v7];

    if (v6)
    {
      [v5[3] invalidate];
      v8 = v5[3];
      v5[3] = 0;
    }

    else
    {
      v9 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = v9;
        v12 = [v5 xpcConnectionUUIDString];
        v14 = 136315650;
        v15 = "[CSSiriAudioMessageRequestClient _connection]_block_invoke";
        v16 = 2112;
        v17 = v10;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_DEFAULT, "%s Ignore since the UUID of xpc connection not match : %@ vs. %@", &v14, 0x20u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __46__CSSiriAudioMessageRequestClient__connection__block_invoke_5(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D015D8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[CSSiriAudioMessageRequestClient _connection]_block_invoke";
    v15 = 2112;
    v16 = @"com.apple.siri.audio_message_service.xpc";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s xpc connection %@ Invalidated", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v7 = [WeakRetained xpcConnectionUUIDString];
    LOBYTE(v6) = [v6 isEqualToString:v7];

    if ((v6 & 1) == 0)
    {
      v8 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v10 = v8;
        v11 = [v5 xpcConnectionUUIDString];
        v13 = 136315650;
        v14 = "[CSSiriAudioMessageRequestClient _connection]_block_invoke";
        v15 = 2112;
        v16 = v9;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_DEFAULT, "%s Ignore since the UUID of xpc connection not match : %@ vs. %@", &v13, 0x20u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_newConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.siri.audio_message_service.xpc" options:0];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836A8BF8];
  [v3 setRemoteObjectInterface:v4];

  [v3 _setQueue:self->_queue];
  return v3;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSSiriAudioMessageRequestClient dealloc]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s deallocated", buf, 0xCu);
  }

  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v5.receiver = self;
  v5.super_class = CSSiriAudioMessageRequestClient;
  [(CSSiriAudioMessageRequestClient *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

@end