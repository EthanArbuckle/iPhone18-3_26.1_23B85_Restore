@interface CAMKeepAliveController
- (CAMKeepAliveController)init;
- (void)_handleHeartbeatConnectionReply:(id)a3;
- (void)_handleHeartbeatSourceEvent;
- (void)_keepAliveQueueCreateConnectionIfNecessary;
- (void)_keepAliveQueueCreateHeartbeatIfNecessary;
- (void)_keepAliveQueueTeardownConnection;
- (void)_keepAliveQueueTeardownHeartbeat;
- (void)_setupConnectionIfNecessary;
- (void)_teardownConnection;
- (void)_teardownHeartbeat;
- (void)dealloc;
- (void)startKeepAliveSession;
@end

@implementation CAMKeepAliveController

- (CAMKeepAliveController)init
{
  v14.receiver = self;
  v14.super_class = CAMKeepAliveController;
  v2 = [(CAMKeepAliveController *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.camera.keep-alive-connection", v3);
    keepAliveQueue = v2->__keepAliveQueue;
    v2->__keepAliveQueue = v4;

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.camera.keep-alive-heartbeat", v6);
    heartbeatQueue = v2->__heartbeatQueue;
    v2->__heartbeatQueue = v7;

    v9 = v2->__heartbeatQueue;
    v10 = dispatch_get_global_queue(-2, 0);
    dispatch_set_target_queue(v9, v10);

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v2 selector:sel__handleApplicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
    [v11 addObserver:v2 selector:sel__handleApplicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
    v12 = v2;
  }

  return v2;
}

- (void)startKeepAliveSession
{
  if (+[CAMApplication appOrPlugInState]== 2)
  {
    v3 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "Ignoring attempt to start keep-alive session while backgrounded.", v4, 2u);
    }
  }

  else
  {

    [(CAMKeepAliveController *)self _setupConnectionIfNecessary];
  }
}

- (void)_setupConnectionIfNecessary
{
  v3 = [(CAMKeepAliveController *)self _keepAliveQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CAMKeepAliveController__setupConnectionIfNecessary__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_sync(v3, block);
}

uint64_t __53__CAMKeepAliveController__setupConnectionIfNecessary__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _keepAliveQueueCreateConnectionIfNecessary];
  v2 = *(a1 + 32);

  return [v2 _keepAliveQueueCreateHeartbeatIfNecessary];
}

- (void)_keepAliveQueueCreateConnectionIfNecessary
{
  if (!self->__connection)
  {
    v4 = *MEMORY[0x1E69BFED8];
    v5 = dispatch_get_global_queue(-2, 0);
    mach_service = xpc_connection_create_mach_service(v4, v5, 0);
    connection = self->__connection;
    self->__connection = mach_service;

    xpc_connection_set_event_handler(self->__connection, &__block_literal_global_41);
    v8 = self->__connection;

    xpc_connection_resume(v8);
  }
}

- (void)_keepAliveQueueCreateHeartbeatIfNecessary
{
  if (!self->__heartbeatSource)
  {
    objc_initWeak(&location, self);
    v3 = [(CAMKeepAliveController *)self _heartbeatQueue];
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3);
    heartbeatSource = self->__heartbeatSource;
    self->__heartbeatSource = v4;

    v6 = self->__heartbeatSource;
    v7 = dispatch_time(0, 0);
    dispatch_source_set_timer(v6, v7, 0x77359400uLL, 0x989680uLL);
    v8 = self->__heartbeatSource;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__CAMKeepAliveController__keepAliveQueueCreateHeartbeatIfNecessary__block_invoke;
    v9[3] = &unk_1E76F8580;
    objc_copyWeak(&v10, &location);
    dispatch_source_set_event_handler(v8, v9);
    dispatch_resume(self->__heartbeatSource);
    objc_destroyWeak(&v10);

    objc_destroyWeak(&location);
  }
}

void __67__CAMKeepAliveController__keepAliveQueueCreateHeartbeatIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleHeartbeatSourceEvent];
}

- (void)_handleHeartbeatSourceEvent
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v3 = [(CAMKeepAliveController *)self _keepAliveQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CAMKeepAliveController__handleHeartbeatSourceEvent__block_invoke;
  block[3] = &unk_1E76FB040;
  block[4] = self;
  block[5] = &v24;
  dispatch_sync(v3, block);

  if ((v25[3] & 1) == 0)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__15;
    v21 = __Block_byref_object_dispose__15;
    v22 = 0;
    v4 = [(CAMKeepAliveController *)self _keepAliveQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __53__CAMKeepAliveController__handleHeartbeatSourceEvent__block_invoke_11;
    v16[3] = &unk_1E76FAFF0;
    v16[4] = self;
    v16[5] = &v17;
    dispatch_sync(v4, v16);

    if (v18[5])
    {
      objc_initWeak(&location, self);
      v5 = [(CAMKeepAliveController *)self _heartbeatQueue];
      v6 = xpc_dictionary_create(0, 0, 0);
      v7 = v18[5];
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __53__CAMKeepAliveController__handleHeartbeatSourceEvent__block_invoke_2;
      handler[3] = &unk_1E76FC628;
      objc_copyWeak(&v14, &location);
      xpc_connection_send_message_with_reply(v7, v6, v5, handler);
      v8 = dispatch_semaphore_create(0);
      v9 = v18[5];
      barrier[0] = MEMORY[0x1E69E9820];
      barrier[1] = 3221225472;
      barrier[2] = __53__CAMKeepAliveController__handleHeartbeatSourceEvent__block_invoke_3;
      barrier[3] = &unk_1E76F77B0;
      v10 = v8;
      v12 = v10;
      xpc_connection_send_barrier(v9, barrier);
      dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    _Block_object_dispose(&v17, 8);
  }

  _Block_object_dispose(&v24, 8);
}

void __53__CAMKeepAliveController__handleHeartbeatSourceEvent__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _heartbeatSource];
  *(*(*(a1 + 40) + 8) + 24) = v2 == 0;
}

- (void)_teardownConnection
{
  v3 = [(CAMKeepAliveController *)self _keepAliveQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CAMKeepAliveController__teardownConnection__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_sync(v3, block);

  [(CAMKeepAliveController *)self _teardownHeartbeat];
}

- (void)_keepAliveQueueTeardownConnection
{
  if (self->__connection)
  {
    v3 = [(CAMKeepAliveController *)self _connection];
    xpc_connection_cancel(v3);
    [(CAMKeepAliveController *)self _setConnection:0];
  }
}

void __68__CAMKeepAliveController__keepAliveQueueCreateConnectionIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (MEMORY[0x1A58FAEB0]() == MEMORY[0x1E69E9E98])
  {
    string = xpc_dictionary_get_string(v2, *MEMORY[0x1E69E9E28]);
    v4 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = string;
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "Lost keep-alive connection to assetsd! (%s)", &v5, 0xCu);
    }
  }
}

- (void)_teardownHeartbeat
{
  v3 = [(CAMKeepAliveController *)self _keepAliveQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CAMKeepAliveController__teardownHeartbeat__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_keepAliveQueueTeardownHeartbeat
{
  v3 = [(CAMKeepAliveController *)self _heartbeatSource];
  if (v3)
  {
    v4 = v3;
    dispatch_source_cancel(v3);
    [(CAMKeepAliveController *)self _setHeartbeatSource:0];
    v3 = v4;
  }
}

- (void)dealloc
{
  [(CAMKeepAliveController *)self stopKeepAliveSession];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CAMKeepAliveController;
  [(CAMKeepAliveController *)&v4 dealloc];
}

- (void)_handleHeartbeatConnectionReply:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(CAMKeepAliveController *)self _keepAliveQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__CAMKeepAliveController__handleHeartbeatConnectionReply___block_invoke;
  v8[3] = &unk_1E76FB040;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(v5, v8);

  if ((v10[3] & 1) == 0 && MEMORY[0x1A58FAEB0](v4) == MEMORY[0x1E69E9E98])
  {
    string = xpc_dictionary_get_string(v4, *MEMORY[0x1E69E9E28]);
    v7 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = string;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "Cancelling assetsd keep-alive because a reply was received with an error! (%s)", buf, 0xCu);
    }

    [(CAMKeepAliveController *)self _teardownHeartbeat];
  }

  _Block_object_dispose(&v9, 8);
}

void __58__CAMKeepAliveController__handleHeartbeatConnectionReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _heartbeatSource];
  *(*(*(a1 + 40) + 8) + 24) = v2 == 0;
}

uint64_t __53__CAMKeepAliveController__handleHeartbeatSourceEvent__block_invoke_11(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _connection];

  return MEMORY[0x1EEE66BB8]();
}

void __53__CAMKeepAliveController__handleHeartbeatSourceEvent__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleHeartbeatConnectionReply:v3];
}

@end