@interface MNRouteGeniusRemoteService
- (BOOL)_q_openConnectionIfNecessary;
- (MNRouteGeniusRemoteService)initWithDelegate:(id)a3;
- (void)_q_closeConnection;
- (void)dealloc;
- (void)didUpdateRouteGenius:(id)a3;
- (void)forceReroute;
- (void)start;
- (void)stop;
@end

@implementation MNRouteGeniusRemoteService

- (void)didUpdateRouteGenius:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MNRouteGeniusRemoteService_didUpdateRouteGenius___block_invoke;
  block[3] = &unk_1E8430100;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__MNRouteGeniusRemoteService_didUpdateRouteGenius___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *v7 = 0;
        _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "received a 'didUpdateRouteGenius' with data", v7, 2u);
      }

      v4 = WeakRetained[4];
      v5 = [*(a1 + 32) copy];
      [v4 didUpdateRouteGenius:v5];
    }

    else
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEBUG, "received a 'didUpdateRouteGenius' with nil", buf, 2u);
      }

      [WeakRetained[4] didUpdateRouteGenius:*(a1 + 32)];
    }
  }
}

- (void)stop
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__MNRouteGeniusRemoteService_stop__block_invoke;
  v4[3] = &unk_1E8430EA0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __34__MNRouteGeniusRemoteService_stop__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && WeakRetained[24] == 1)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "MNRouteGeniusRemoteService is stopping the connection", v5, 2u);
    }

    *(v2 + 24) = 0;
    [v2 _q_openConnectionIfNecessary];
    v4 = [*(v2 + 1) remoteObjectProxyWithErrorHandler:&__block_literal_global_9599];
    [v4 stopWithHandler:&__block_literal_global_70_9600];
  }
}

void __34__MNRouteGeniusRemoteService_stop__block_invoke_67(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "MNRouteGeniusRemoteService stop connection error : %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  objc_initWeak(&location, self);
  v3 = self->_queue;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__MNRouteGeniusRemoteService_start__block_invoke;
  aBlock[3] = &unk_1E842ED78;
  v4 = v3;
  v13 = v4;
  objc_copyWeak(&v14, &location);
  v5 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__MNRouteGeniusRemoteService_start__block_invoke_2;
  v8[3] = &unk_1E842EDC8;
  objc_copyWeak(&v11, &location);
  v9 = v4;
  v10 = v5;
  v6 = v4;
  v7 = v5;
  dispatch_async(v6, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

void __35__MNRouteGeniusRemoteService_start__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "MNRouteGeniusRemoteService start connection error : %@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MNRouteGeniusRemoteService_start__block_invoke_64;
  block[3] = &unk_1E8430EA0;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(v5, block);
  objc_destroyWeak(&v8);

  v6 = *MEMORY[0x1E69E9840];
}

void __35__MNRouteGeniusRemoteService_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _q_openConnectionIfNecessary];
    if ((*(v3 + 24) & 1) == 0)
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEBUG, "MNRouteGeniusRemoteService is starting a connection", buf, 2u);
      }

      *(v3 + 24) = 1;
      v5 = [*(v3 + 1) remoteObjectProxyWithErrorHandler:*(a1 + 40)];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __35__MNRouteGeniusRemoteService_start__block_invoke_65;
      v6[3] = &unk_1E8430100;
      v7 = *(a1 + 32);
      objc_copyWeak(&v8, (a1 + 48));
      [v5 startWithHandler:v6];

      objc_destroyWeak(&v8);
    }
  }
}

void __35__MNRouteGeniusRemoteService_start__block_invoke_65(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MNRouteGeniusRemoteService_start__block_invoke_2_66;
  block[3] = &unk_1E8430EA0;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __35__MNRouteGeniusRemoteService_start__block_invoke_2_66(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEBUG, "MNRouteGeniusRemoteService is closing the connection", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _q_closeConnection];
  }
}

void __35__MNRouteGeniusRemoteService_start__block_invoke_64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = *(WeakRetained + 1);
    *(WeakRetained + 1) = 0;

    *(WeakRetained + 24) = 0;
    [*(WeakRetained + 4) didUpdateRouteGenius:0];
  }
}

- (void)forceReroute
{
  objc_initWeak(&location, self);
  v3 = self->_queue;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__MNRouteGeniusRemoteService_forceReroute__block_invoke;
  aBlock[3] = &unk_1E842ED78;
  v11 = v3;
  v4 = v3;
  objc_copyWeak(&v12, &location);
  v5 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MNRouteGeniusRemoteService_forceReroute__block_invoke_2;
  block[3] = &unk_1E842EDA0;
  objc_copyWeak(&v9, &location);
  v8 = v5;
  v6 = v5;
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
}

void __42__MNRouteGeniusRemoteService_forceReroute__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "MNRouteGeniusRemoteService force reroute error : %@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MNRouteGeniusRemoteService_forceReroute__block_invoke_62;
  block[3] = &unk_1E8430EA0;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(v5, block);
  objc_destroyWeak(&v8);

  v6 = *MEMORY[0x1E69E9840];
}

void __42__MNRouteGeniusRemoteService_forceReroute__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[3])
    {
      v4 = [WeakRetained[1] remoteObjectProxyWithErrorHandler:*(a1 + 32)];
      [v4 forceReroute];
    }

    else
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5[0] = 0;
        _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEBUG, "Cancelling reroute, MNRouteGeniusRemoteService is not started", v5, 2u);
      }
    }
  }
}

void __42__MNRouteGeniusRemoteService_forceReroute__block_invoke_62(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = *(WeakRetained + 1);
    *(WeakRetained + 1) = 0;

    *(WeakRetained + 24) = 0;
    [*(WeakRetained + 4) didUpdateRouteGenius:0];
  }
}

- (void)dealloc
{
  [(MNRouteGeniusRemoteService *)self _q_closeConnection];
  connection = self->_connection;
  self->_connection = 0;

  queue = self->_queue;
  self->_queue = 0;

  v5.receiver = self;
  v5.super_class = MNRouteGeniusRemoteService;
  [(MNRouteGeniusRemoteService *)&v5 dealloc];
}

- (MNRouteGeniusRemoteService)initWithDelegate:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MNRouteGeniusRemoteService;
  v6 = [(MNRouteGeniusRemoteService *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("MNRouteGeniusRemoteQueue", v8);
    queue = v7->_queue;
    v7->_queue = v9;
  }

  return v7;
}

- (void)_q_closeConnection
{
  [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  self->_started = 0;
}

- (BOOL)_q_openConnectionIfNecessary
{
  p_connection = &self->_connection;
  if (!self->_connection)
  {
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EF6F20];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
    [v4 setClasses:v7 forSelector:sel_didUpdateRouteGenius_ argumentIndex:0 ofReply:0];

    v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.navd.routegenius" options:4096];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4F22088];
    [v8 setRemoteObjectInterface:v9];

    [v8 setExportedInterface:v4];
    [v8 setExportedObject:self];
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__MNRouteGeniusRemoteService__q_openConnectionIfNecessary__block_invoke;
    v13[3] = &unk_1E8430EA0;
    objc_copyWeak(&v14, &location);
    [v8 setInvalidationHandler:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__MNRouteGeniusRemoteService__q_openConnectionIfNecessary__block_invoke_3;
    v11[3] = &unk_1E8430EA0;
    objc_copyWeak(&v12, &location);
    [v8 setInterruptionHandler:v11];
    objc_storeStrong(p_connection, v8);
    [v8 resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return 1;
}

void __58__MNRouteGeniusRemoteService__q_openConnectionIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__MNRouteGeniusRemoteService__q_openConnectionIfNecessary__block_invoke_2;
    block[3] = &unk_1E8430EA0;
    objc_copyWeak(&v6, (a1 + 32));
    dispatch_async(v4, block);
    objc_destroyWeak(&v6);
  }
}

void __58__MNRouteGeniusRemoteService__q_openConnectionIfNecessary__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__MNRouteGeniusRemoteService__q_openConnectionIfNecessary__block_invoke_4;
    block[3] = &unk_1E8430EA0;
    objc_copyWeak(&v6, (a1 + 32));
    dispatch_async(v4, block);
    objc_destroyWeak(&v6);
  }
}

void __58__MNRouteGeniusRemoteService__q_openConnectionIfNecessary__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _q_closeConnection];
  }
}

void __58__MNRouteGeniusRemoteService__q_openConnectionIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = WeakRetained[1];
  WeakRetained[1] = 0;

  *(WeakRetained + 24) = 0;
}

@end