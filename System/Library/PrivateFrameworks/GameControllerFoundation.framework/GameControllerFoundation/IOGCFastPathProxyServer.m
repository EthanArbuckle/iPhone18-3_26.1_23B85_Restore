@interface IOGCFastPathProxyServer
- (IOGCFastPathProxyServer)init;
- (IOGCFastPathProxyServer)initWithServerName:(id)a3;
@end

@implementation IOGCFastPathProxyServer

- (IOGCFastPathProxyServer)initWithServerName:(id)a3
{
  v14.receiver = self;
  v14.super_class = IOGCFastPathProxyServer;
  v3 = a3;
  v4 = [(IOGCFastPathProxyServer *)&v14 init];
  v5 = dispatch_queue_create("IOGCFastPathProxyServer", 0);
  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  v7 = v3;
  v8 = [v7 UTF8String];

  mach_service = xpc_connection_create_mach_service(v8, *(v4 + 1), 1uLL);
  v10 = *(v4 + 2);
  *(v4 + 2) = mach_service;

  v11 = *(v4 + 2);
  if (v11)
  {
    xpc_connection_set_event_handler(v11, &__block_literal_global_60);
    v12 = v4;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __46__IOGCFastPathProxyServer_initWithServerName___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = MEMORY[0x1D38AB9A0]();
  if (v3 == MEMORY[0x1E69E9E68])
  {
    v5 = _os_activity_create(&dword_1D2C3B000, "Incoming Connection", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v16.opaque[0] = 0;
    v16.opaque[1] = 0;
    os_activity_scope_enter(v5, &v16);
    v13 = _gc_log_iokit();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v2;
      _os_log_impl(&dword_1D2C3B000, v13, OS_LOG_TYPE_INFO, "Accepting connection '%@' to fast path proxy.", buf, 0xCu);
    }

    v14 = [_IOGCFastPathProxyClient withIncomingConnection:v2];
    if (!v14)
    {
      xpc_connection_cancel(v2);
    }

    os_activity_scope_leave(&v16);
  }

  else
  {
    v4 = v3 == MEMORY[0x1E69E9E98];
    v5 = _gc_log_iokit();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (v6)
      {
        __46__IOGCFastPathProxyServer_initWithServerName___block_invoke_cold_2(v2, v5, v7, v8, v9, v10, v11, v12);
      }
    }

    else if (v6)
    {
      __46__IOGCFastPathProxyServer_initWithServerName___block_invoke_cold_1(v2, v5, v7, v8, v9, v10, v11, v12);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (IOGCFastPathProxyServer)init
{
  [(IOGCFastPathProxyServer *)self doesNotRecognizeSelector:a2];

  return 0;
}

void __46__IOGCFastPathProxyServer_initWithServerName___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_6(&dword_1D2C3B000, a2, a3, "Unknown event: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __46__IOGCFastPathProxyServer_initWithServerName___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_6(&dword_1D2C3B000, a2, a3, "Error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end