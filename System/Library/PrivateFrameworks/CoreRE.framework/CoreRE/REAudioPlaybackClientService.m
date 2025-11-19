@interface REAudioPlaybackClientService
- (REAudioPlaybackClientService)initWithXPCEndpoint:(id)a3 queue:(id)a4 service:(id)a5;
- (void)didReceiveConnectionIdentifier:(unint64_t)a3;
- (void)mediaServicesLost;
- (void)mediaServicesReset;
- (void)streamToken:(unint64_t)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
@end

@implementation REAudioPlaybackClientService

- (REAudioPlaybackClientService)initWithXPCEndpoint:(id)a3 queue:(id)a4 service:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = REAudioPlaybackClientService;
  v11 = [(REAudioPlaybackClientService *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_service, a5);
    v13 = objc_alloc_init(MEMORY[0x1E696B0E0]);
    [v13 _setEndpoint:v8];
    v14 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v13];
    connection = v12->_connection;
    v12->_connection = v14;

    [(NSXPCConnection *)v12->_connection setExportedObject:v12];
    v16 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5D4BF88];
    [(NSXPCConnection *)v12->_connection setExportedInterface:v16];

    v17 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5D4BC70];
    [(NSXPCConnection *)v12->_connection setRemoteObjectInterface:v17];

    [(NSXPCConnection *)v12->_connection _setQueue:v9];
    objc_initWeak(&location, v12);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __66__REAudioPlaybackClientService_initWithXPCEndpoint_queue_service___block_invoke;
    v22[3] = &unk_1E871BCD0;
    objc_copyWeak(&v23, &location);
    [(NSXPCConnection *)v12->_connection setInterruptionHandler:v22];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__REAudioPlaybackClientService_initWithXPCEndpoint_queue_service___block_invoke_125;
    v20[3] = &unk_1E871BCD0;
    objc_copyWeak(&v21, &location);
    [(NSXPCConnection *)v12->_connection setInvalidationHandler:v20];
    atomic_store(0, &v12->_connectionIdentifier.__a_.__a_value);
    [(NSXPCConnection *)v12->_connection resume];
    v18 = [(NSXPCConnection *)v12->_connection remoteObjectProxy];
    [v18 start];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __66__REAudioPlaybackClientService_initWithXPCEndpoint_queue_service___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *re::audioLogObjects(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412546;
    v5 = WeakRetained;
    v6 = 2048;
    v7 = [WeakRetained connectionIdentifier];
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "AudioPlaybackClientService %@ connection %llu with service was interrupted", &v4, 0x16u);
  }

  if (WeakRetained && ([WeakRetained[3] isCancelled] & 1) == 0)
  {
    v3 = [WeakRetained[3] audioService];
    (*(*v3 + 64))(v3);
  }
}

void __66__REAudioPlaybackClientService_initWithXPCEndpoint_queue_service___block_invoke_125(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *re::audioLogObjects(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412546;
    v5 = WeakRetained;
    v6 = 2048;
    v7 = [WeakRetained connectionIdentifier];
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "AudioPlaybackClientService %@ connection %llu with service was invalidated", &v4, 0x16u);
  }

  if (WeakRetained && ([WeakRetained[3] isCancelled] & 1) == 0)
  {
    v3 = [WeakRetained[3] audioService];
    (*(*v3 + 64))(v3);
  }
}

- (void)didReceiveConnectionIdentifier:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (atomic_load(&self->_connectionIdentifier.__a_.__a_value))
  {
    v6 = *re::audioLogObjects(self);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = atomic_load(&self->_connectionIdentifier.__a_.__a_value);
      v10 = 138412802;
      v11 = self;
      v12 = 2048;
      v13 = v7;
      v14 = 2048;
      v15 = a3;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "AudioPlaybackClientService %@ cannot change connection identifier from %llu to %llu", &v10, 0x20u);
    }
  }

  else
  {
    atomic_store(a3, &self->_connectionIdentifier.__a_.__a_value);
    v8 = *re::audioLogObjects(self);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = atomic_load(&self->_connectionIdentifier.__a_.__a_value);
      v10 = 138412546;
      v11 = self;
      v12 = 2048;
      v13 = v9;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "AudioPlaybackClientService %@ received connection identifier %llu", &v10, 0x16u);
    }
  }
}

- (void)streamToken:(unint64_t)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  if (![(_REAudioManagerCancellable *)self->_service isCancelled])
  {
    v6 = *(*[(_REAudioManagerCancellable *)self->_service audioService]+ 712);

    v6();
  }
}

- (void)mediaServicesLost
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(_REAudioManagerCancellable *)self->_service isCancelled];
  if ((v3 & 1) == 0)
  {
    v4 = *re::audioLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = self;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "[RE/MediaServices] AudioPlaybackClientService %@ received media services lost notification from host.", &v6, 0xCu);
    }

    v5 = [(_REAudioManagerCancellable *)self->_service audioService];
    (*(*v5 + 72))(v5);
  }
}

- (void)mediaServicesReset
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(_REAudioManagerCancellable *)self->_service isCancelled];
  if ((v3 & 1) == 0)
  {
    v4 = *re::audioLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = self;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "[RE/MediaServices] AudioPlaybackClientService %@ received media services reset notification from host.", &v6, 0xCu);
    }

    v5 = [(_REAudioManagerCancellable *)self->_service audioService];
    (*(*v5 + 80))(v5);
  }
}

@end