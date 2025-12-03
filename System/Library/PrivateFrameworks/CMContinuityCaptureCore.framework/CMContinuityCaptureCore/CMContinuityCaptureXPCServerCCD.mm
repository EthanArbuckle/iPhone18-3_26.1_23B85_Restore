@interface CMContinuityCaptureXPCServerCCD
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CMContinuityCaptureXPCServerCCD)init;
- (void)_enumerateConnectionsWithBlock:(id)block;
- (void)disconnectSession;
- (void)pauseSessionForEvent:(int64_t)event;
- (void)prepareForPullConversation:(id)conversation;
- (void)presentShieldError:(int64_t)error userInfo:(id)info;
- (void)refreshPrivacyAcknowledgement;
- (void)requestContinuityCaptureUIConfiguration:(id)configuration;
- (void)resumeStreamingForEvent:(int64_t)event;
- (void)setupSingSessionFromURL:(id)l remoteDisplayIdentifier:(id)identifier;
- (void)setupSingSessionWithMediaRouteIdentifier:(id)identifier remoteDisplayIdentifier:(id)displayIdentifier;
- (void)skipPlacementStep;
- (void)startListeningWithDelegate:(id)delegate;
- (void)tearDownShieldUI;
- (void)updateClientsWithConfiguration:(id)configuration;
@end

@implementation CMContinuityCaptureXPCServerCCD

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[CMContinuityCaptureXPCServerCCD sharedInstance];
  }

  v3 = _sharedListener;

  return v3;
}

uint64_t __49__CMContinuityCaptureXPCServerCCD_sharedInstance__block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  _sharedListener = objc_alloc_init(CMContinuityCaptureXPCServerCCD);

  return MEMORY[0x2821F96F8]();
}

- (CMContinuityCaptureXPCServerCCD)init
{
  v20.receiver = self;
  v20.super_class = CMContinuityCaptureXPCServerCCD;
  v2 = [(CMContinuityCaptureXPCServerCCD *)&v20 init];
  if (v2)
  {
    if (dword_27ECB4D60)
    {
      v19 = 0;
      v18 = 0;
      v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      *&v4 = 0xAAAAAAAAAAAAAAAALL;
      *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v16 = v4;
      v17 = v4;
      v14 = v4;
      v15 = v4;
      v12 = v4;
      v13 = v4;
      v10 = v4;
      v11 = v4;
      os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [@"com.apple.continuitycapture.listener.xpcconnection" UTF8String];
    v5 = FigDispatchQueueCreateWithPriority();
    xpcConnectionQueue = v2->_xpcConnectionQueue;
    v2->_xpcConnectionQueue = v5;
  }

  return v2;
}

- (void)startListeningWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (dword_27ECB4D60)
  {
    v23 = 0;
    v22 = 0;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20 = v6;
    v21 = v6;
    v18 = v6;
    v19 = v6;
    v16 = v6;
    v17 = v6;
    v14 = v6;
    v15 = v6;
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
  if (!self->_connections)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    connections = self->_connections;
    self->_connections = v7;

    self->_connectionsLock._os_unfair_lock_opaque = 0;
  }

  serviceListener = self->_serviceListener;
  if (!serviceListener)
  {
    v10 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.continuitycaptured"];
    v11 = self->_serviceListener;
    self->_serviceListener = v10;

    [(NSXPCListener *)self->_serviceListener setDelegate:self];
    serviceListener = self->_serviceListener;
  }

  [(NSXPCListener *)serviceListener resume:v12];
}

- (void)tearDownShieldUI
{
  if (dword_27ECB4D60)
  {
    v16 = 0;
    v15 = 0;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13 = v4;
    v14 = v4;
    v11 = v4;
    v12 = v4;
    v9 = v4;
    v10 = v4;
    v7 = v4;
    v8 = v4;
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(CMContinuityCaptureXPCServerCCD *)self _enumerateConnectionsWithBlock:&__block_literal_global_17, v5, v6];
}

void __51__CMContinuityCaptureXPCServerCCD_tearDownShieldUI__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 remoteObjectProxy];
  [v2 tearDownShield];
}

- (void)presentShieldError:(int64_t)error userInfo:(id)info
{
  infoCopy = info;
  if (dword_27ECB4D60)
  {
    v22 = 0;
    v21 = 0;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v19 = v8;
    v20 = v8;
    v17 = v8;
    v18 = v8;
    v15 = v8;
    v16 = v8;
    v13 = v8;
    v14 = v8;
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__CMContinuityCaptureXPCServerCCD_presentShieldError_userInfo___block_invoke;
  v10[3] = &unk_278D5D438;
  v11 = infoCopy;
  errorCopy = error;
  v9 = infoCopy;
  [(CMContinuityCaptureXPCServerCCD *)self _enumerateConnectionsWithBlock:v10];
}

void __63__CMContinuityCaptureXPCServerCCD_presentShieldError_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  [v3 presentError:*(a1 + 40) userInfo:*(a1 + 32)];
}

- (void)requestContinuityCaptureUIConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (dword_27ECB4D60)
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained requestContinuityCaptureUIConfiguration:configurationCopy];
}

- (void)resumeStreamingForEvent:(int64_t)event
{
  if (dword_27ECB4D60)
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained resumeStreamingForEvent:event];
}

- (void)pauseSessionForEvent:(int64_t)event
{
  if (dword_27ECB4D60)
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pauseSessionForEvent:event];
}

- (void)updateClientsWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (dword_27ECB4D60)
  {
    v19 = 0;
    v18 = 0;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16 = v6;
    v17 = v6;
    v14 = v6;
    v15 = v6;
    v12 = v6;
    v13 = v6;
    v10 = v6;
    v11 = v6;
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__CMContinuityCaptureXPCServerCCD_updateClientsWithConfiguration___block_invoke;
  v8[3] = &unk_278D5D460;
  v9 = configurationCopy;
  v7 = configurationCopy;
  [(CMContinuityCaptureXPCServerCCD *)self _enumerateConnectionsWithBlock:v8];
}

void __66__CMContinuityCaptureXPCServerCCD_updateClientsWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  [v3 sessionDidUpdateWithConfiguration:*(a1 + 32)];
}

- (void)disconnectSession
{
  if (dword_27ECB4D60)
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained disconnectSession];
}

- (void)skipPlacementStep
{
  if (dword_27ECB4D60)
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained skipPlacementStep];
}

- (void)prepareForPullConversation:(id)conversation
{
  conversationCopy = conversation;
  if (dword_27ECB4D60)
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained prepareForPullConversation:conversationCopy];
}

- (void)setupSingSessionFromURL:(id)l remoteDisplayIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  if (dword_27ECB4D60)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setupSingSessionFromURL:lCopy remoteDisplayIdentifier:identifierCopy];
}

- (void)setupSingSessionWithMediaRouteIdentifier:(id)identifier remoteDisplayIdentifier:(id)displayIdentifier
{
  displayIdentifierCopy = displayIdentifier;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setupSingSessionWithMediaRouteIdentifier:identifierCopy remoteDisplayIdentifier:displayIdentifierCopy];
}

- (void)refreshPrivacyAcknowledgement
{
  if (dword_27ECB4D60)
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained refreshPrivacyAcknowledgement];
}

- (void)_enumerateConnectionsWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_connectionsLock);
  v5 = [(NSMutableArray *)self->_connections copy];
  os_unfair_lock_unlock(&self->_connectionsLock);
  if (dword_27ECB4D60)
  {
    v27 = 0;
    v26 = 0;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24 = v7;
    v25 = v7;
    v22 = v7;
    v23 = v7;
    v20 = v7;
    v21 = v7;
    v18 = v7;
    v19 = v7;
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        blockCopy[2](blockCopy, *(*(&v14 + 1) + 8 * i));
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v10);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  serviceListener = self->_serviceListener;
  if (serviceListener == listenerCopy)
  {
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2854F7920];
    [connectionCopy setExportedInterface:v9];

    [connectionCopy setExportedObject:self];
    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2854F5EB0];
    [connectionCopy setRemoteObjectInterface:v10];

    objc_initWeak(&location, self);
    objc_initWeak(&from, connectionCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __70__CMContinuityCaptureXPCServerCCD_listener_shouldAcceptNewConnection___block_invoke;
    v23[3] = &unk_278D5D488;
    objc_copyWeak(&v24, &location);
    objc_copyWeak(&v25, &from);
    v11 = MEMORY[0x245D12020](v23);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __70__CMContinuityCaptureXPCServerCCD_listener_shouldAcceptNewConnection___block_invoke_2;
    v21[3] = &unk_278D5D4B0;
    v12 = v11;
    v22 = v12;
    [connectionCopy setInvalidationHandler:v21];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __70__CMContinuityCaptureXPCServerCCD_listener_shouldAcceptNewConnection___block_invoke_3;
    v19[3] = &unk_278D5D4B0;
    v13 = v12;
    v20 = v13;
    [connectionCopy setInterruptionHandler:v19];
    xpcConnectionQueue = self->_xpcConnectionQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__CMContinuityCaptureXPCServerCCD_listener_shouldAcceptNewConnection___block_invoke_4;
    v16[3] = &unk_278D5C0A8;
    objc_copyWeak(&v18, &location);
    v17 = connectionCopy;
    dispatch_async(xpcConnectionQueue, v16);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return serviceListener == listenerCopy;
}

void __70__CMContinuityCaptureXPCServerCCD_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    [*(WeakRetained + 1) removeObject:v2];
    os_unfair_lock_unlock(WeakRetained + 4);
  }
}

void __70__CMContinuityCaptureXPCServerCCD_listener_shouldAcceptNewConnection___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    [*&v3[2]._os_unfair_lock_opaque addObject:*(a1 + 32)];
    os_unfair_lock_unlock(v3 + 4);
    [*(a1 + 32) _setQueue:*&v3[8]._os_unfair_lock_opaque];
    [*(a1 + 32) resume];
    if (dword_27ECB4D60)
    {
      v28 = 0;
      v27 = OS_LOG_TYPE_DEFAULT;
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      *&v5 = 0xAAAAAAAAAAAAAAAALL;
      *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v25 = v5;
      v26 = v5;
      v23 = v5;
      v24 = v5;
      v21 = v5;
      v22 = v5;
      v19 = v5;
      v20 = v5;
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (CMContinuityCaptureXPCConnectionHasEntitlement(*(a1 + 32), @"com.apple.continuitycapture.shieldUI"))
    {
      if (dword_27ECB4D60)
      {
        v28 = 0;
        v27 = OS_LOG_TYPE_DEFAULT;
        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v25 = v7;
        v26 = v7;
        v23 = v7;
        v24 = v7;
        v21 = v7;
        v22 = v7;
        v19 = v7;
        v20 = v7;
        v8 = v28;
        if (!os_log_type_enabled(v6, v27))
        {
          v8 &= ~1u;
        }

        if (v8)
        {
          v9 = [*(a1 + 32) debugDescription];
          v15 = 136315394;
          v16 = "[CMContinuityCaptureXPCServerCCD listener:shouldAcceptNewConnection:]_block_invoke";
          v17 = 2112;
          v18 = v9;
          LODWORD(v13) = 22;
          v12 = &v15;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v10 = objc_loadWeakRetained(&v3[10]);
      v11 = *(a1 + 32);
      if (v11)
      {
        [v11 auditToken];
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
      }

      [v10 shieldDidConnect:{&v19, v12, v13}];
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__CMContinuityCaptureXPCServerCCD_listener_shouldAcceptNewConnection___block_invoke_91;
    v14[3] = &unk_278D5D4D8;
    v14[4] = v3;
    [(os_unfair_lock_s *)v3 requestContinuityCaptureUIConfiguration:v14, v12, v13];
  }
}

@end