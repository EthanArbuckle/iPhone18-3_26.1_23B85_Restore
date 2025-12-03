@interface REAudioPlaybackHostingService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (OS_xpc_object)endpoint;
- (REAudioPlaybackHostingService)init;
- (void)connectionIdentifier:(unint64_t)identifier streamToken:(unint64_t)token didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)connectionIdentifierLostMediaServices:(unint64_t)services;
- (void)connectionIdentifierResetMediaServices:(unint64_t)services;
@end

@implementation REAudioPlaybackHostingService

- (REAudioPlaybackHostingService)init
{
  v11.receiver = self;
  v11.super_class = REAudioPlaybackHostingService;
  v2 = [(REAudioPlaybackHostingService *)&v11 init];
  if (v2)
  {
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v2->_listener;
    v2->_listener = anonymousListener;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("AudioPlaybackHosting service queue", v5);
    serviceQueue = v2->_serviceQueue;
    v2->_serviceQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    clients = v2->_clients;
    v2->_clients = v8;

    v2->_connectionIdentifierCounter = 0;
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (OS_xpc_object)endpoint
{
  endpoint = [(NSXPCListener *)self->_listener endpoint];
  _endpoint = [endpoint _endpoint];

  return _endpoint;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v42 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v7 = processIdentifier;
  v8 = self->_connectionIdentifierCounter + 1;
  self->_connectionIdentifierCounter = v8;
  connectionIdentifierCounter = v8;
  v10 = v8;
  while (!v10)
  {
LABEL_5:
    v10 = connectionIdentifierCounter++;
    self->_connectionIdentifierCounter = connectionIdentifierCounter;
    if (v10 == v8)
    {
      v14 = *re::audioLogObjects(processIdentifier);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "Playback hosting service cannot generate a unique connection identifier. Rejecting connection", buf, 2u);
      }

      v15 = 0;
      goto LABEL_17;
    }
  }

  clients = self->_clients;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
  v13 = [(NSMutableDictionary *)clients objectForKey:v12];

  if (v13)
  {
    connectionIdentifierCounter = self->_connectionIdentifierCounter;
    goto LABEL_5;
  }

  v16 = [connectionCopy valueForEntitlement:@"application-identifier"];
  v17 = *re::audioLogObjects(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v39 = v7;
    *&v39[4] = 2048;
    *&v39[6] = v10;
    v40 = 2112;
    v41 = v16;
    _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Accepting new playback hosting connection from client pid %d, assigning connection identifier %llu, application identifier %@", buf, 0x1Cu);
  }

  v18 = [[REAudioPlaybackHostingClientObject alloc] initWithConnection:connectionCopy connectionIdentifier:v10];
  v19 = [connectionCopy valueForEntitlement:@"com.apple.re.should-redact-sensitive-info-from-logs"];
  [(REAudioPlaybackHostingClientObject *)v18 setShouldRedactSensitiveInfoFromLogs:v19 != 0];

  shouldRedactSensitiveInfoFromLogs = [(REAudioPlaybackHostingClientObject *)v18 shouldRedactSensitiveInfoFromLogs];
  if (shouldRedactSensitiveInfoFromLogs)
  {
    v21 = *re::audioLogObjects(shouldRedactSensitiveInfoFromLogs);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v39 = v10;
      _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Setting shouldRedactSensitiveInfoFromLogs for client=%llu to true.", buf, 0xCu);
    }
  }

  didConnectBlock = [(REAudioPlaybackHostingService *)self didConnectBlock];
  v23 = didConnectBlock == 0;

  if (!v23)
  {
    didConnectBlock2 = [(REAudioPlaybackHostingService *)self didConnectBlock];
    (didConnectBlock2)[2](didConnectBlock2, v10, [(REAudioPlaybackHostingClientObject *)v18 shouldRedactSensitiveInfoFromLogs]);
  }

  [connectionCopy setExportedObject:v18];
  v25 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5D4BC70];
  [connectionCopy setExportedInterface:v25];

  v26 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5D4BF88];
  [connectionCopy setRemoteObjectInterface:v26];

  [connectionCopy _setQueue:self->_serviceQueue];
  objc_initWeak(buf, self);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __68__REAudioPlaybackHostingService_listener_shouldAcceptNewConnection___block_invoke;
  v36[3] = &unk_1E871BC80;
  objc_copyWeak(v37, buf);
  v37[1] = v10;
  [connectionCopy setInterruptionHandler:v36];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __68__REAudioPlaybackHostingService_listener_shouldAcceptNewConnection___block_invoke_84;
  v34[3] = &unk_1E871BC80;
  objc_copyWeak(v35, buf);
  v35[1] = v10;
  [connectionCopy setInvalidationHandler:v34];
  serviceQueue = self->_serviceQueue;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __68__REAudioPlaybackHostingService_listener_shouldAcceptNewConnection___block_invoke_85;
  v30[3] = &unk_1E871BCA8;
  v30[4] = self;
  v31 = v18;
  v33 = v10;
  v32 = connectionCopy;
  v28 = v18;
  dispatch_sync(serviceQueue, v30);

  objc_destroyWeak(v35);
  objc_destroyWeak(v37);
  objc_destroyWeak(buf);

  v15 = 1;
LABEL_17:

  return v15;
}

void __68__REAudioPlaybackHostingService_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *re::audioLogObjects(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v11 = 138412546;
      v12 = v3;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "REAudioPlaybackHostingService %@ removing interrupted connection %llu", &v11, 0x16u);
    }

    v6 = [(re *)v3 didDisconnectBlock];
    v7 = v6 == 0;

    if (!v7)
    {
      v8 = [(re *)v3 didDisconnectBlock];
      v8[2](v8, *(a1 + 40));
    }

    v9 = *(v3 + 2);
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
    [v9 removeObjectForKey:v10];
  }
}

void __68__REAudioPlaybackHostingService_listener_shouldAcceptNewConnection___block_invoke_84(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *re::audioLogObjects(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v11 = 138412546;
      v12 = v3;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "REAudioPlaybackHostingService %@ removing invalidated connection %llu", &v11, 0x16u);
    }

    v6 = [(re *)v3 didDisconnectBlock];
    v7 = v6 == 0;

    if (!v7)
    {
      v8 = [(re *)v3 didDisconnectBlock];
      v8[2](v8, *(a1 + 40));
    }

    v9 = *(v3 + 2);
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
    [v9 removeObjectForKey:v10];
  }
}

void __68__REAudioPlaybackHostingService_listener_shouldAcceptNewConnection___block_invoke_85(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 56)];
  [v3 setObject:v2 forKey:?];

  [*(a1 + 48) resume];
  v5 = [*(a1 + 48) remoteObjectProxy];
  [v5 didReceiveConnectionIdentifier:*(a1 + 56)];
}

- (void)connectionIdentifier:(unint64_t)identifier streamToken:(unint64_t)token didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__REAudioPlaybackHostingService_connectionIdentifier_streamToken_didChangeFromState_toState___block_invoke;
  block[3] = &unk_1E871B588;
  block[4] = self;
  block[5] = identifier;
  block[6] = token;
  block[7] = state;
  block[8] = toState;
  dispatch_sync(serviceQueue, block);
}

void __93__REAudioPlaybackHostingService_connectionIdentifier_streamToken_didChangeFromState_toState___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 16);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ([v6 unsignedLongLongValue] == a1[5])
        {
          v7 = [*(a1[4] + 16) objectForKey:v6];
          v8 = [v7 connection];
          v9 = [v8 remoteObjectProxy];
          [v9 streamToken:a1[6] didChangeFromState:a1[7] toState:a1[8]];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

- (void)connectionIdentifierLostMediaServices:(unint64_t)services
{
  serviceQueue = self->_serviceQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__REAudioPlaybackHostingService_connectionIdentifierLostMediaServices___block_invoke;
  v4[3] = &unk_1E871B4D0;
  v4[4] = self;
  v4[5] = services;
  dispatch_sync(serviceQueue, v4);
}

void __71__REAudioPlaybackHostingService_connectionIdentifierLostMediaServices___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v5 = *v17;
    *&v4 = 138412546;
    v15 = v4;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [v7 unsignedLongLongValue];
        if (v8 == *(a1 + 40))
        {
          v9 = *re::audioLogObjects(v8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 32);
            v11 = *(a1 + 40);
            *buf = v15;
            v21 = v10;
            v22 = 2048;
            v23 = v11;
            _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "[RE/MediaServices] AudioPlaybackHostingService %@ notifying connection %llu that media services lost.", buf, 0x16u);
          }

          v12 = [*(*(a1 + 32) + 16) objectForKey:v7];
          v13 = [v12 connection];
          v14 = [v13 remoteObjectProxy];
          [v14 mediaServicesLost];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v3);
  }
}

- (void)connectionIdentifierResetMediaServices:(unint64_t)services
{
  serviceQueue = self->_serviceQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__REAudioPlaybackHostingService_connectionIdentifierResetMediaServices___block_invoke;
  v4[3] = &unk_1E871B4D0;
  v4[4] = self;
  v4[5] = services;
  dispatch_sync(serviceQueue, v4);
}

void __72__REAudioPlaybackHostingService_connectionIdentifierResetMediaServices___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v5 = *v17;
    *&v4 = 138412546;
    v15 = v4;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [v7 unsignedLongLongValue];
        if (v8 == *(a1 + 40))
        {
          v9 = *re::audioLogObjects(v8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 32);
            v11 = *(a1 + 40);
            *buf = v15;
            v21 = v10;
            v22 = 2048;
            v23 = v11;
            _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "[RE/MediaServices] AudioPlaybackHostingService %@ notifying connection %llu that media services reset.", buf, 0x16u);
          }

          v12 = [*(*(a1 + 32) + 16) objectForKey:v7];
          v13 = [v12 connection];
          v14 = [v13 remoteObjectProxy];
          [v14 mediaServicesReset];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v3);
  }
}

@end