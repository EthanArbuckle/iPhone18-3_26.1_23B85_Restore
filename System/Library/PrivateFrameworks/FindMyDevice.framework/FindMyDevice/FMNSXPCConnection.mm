@interface FMNSXPCConnection
- (FMNSXPCConnection)initWithConfiguration:(id)configuration exportedObject:(id)object;
- (id)remoteObjectProxy;
- (int64_t)state;
- (void)addFailureBlock:(id)block;
- (void)dealloc;
- (void)destroyXPCConnection;
@end

@implementation FMNSXPCConnection

- (id)remoteObjectProxy
{
  objc_initWeak(&location, self);
  connection = [(FMNSXPCConnection *)self connection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__FMNSXPCConnection_remoteObjectProxy__block_invoke;
  v6[3] = &unk_1E86BE238;
  objc_copyWeak(&v7, &location);
  v4 = [connection remoteObjectProxyWithErrorHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

- (int64_t)state
{
  connection = [(FMNSXPCConnection *)self connection];
  if (connection)
  {
    v4 = 1;
  }

  else if ([(FMNSXPCConnection *)self _testMockConnection])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (FMNSXPCConnection)initWithConfiguration:(id)configuration exportedObject:(id)object
{
  configurationCopy = configuration;
  objectCopy = object;
  v32.receiver = self;
  v32.super_class = FMNSXPCConnection;
  v8 = [(FMNSXPCConnection *)&v32 init];
  v9 = v8;
  if (v8)
  {
    v8->__testMockConnection = 0;
    v10 = objc_alloc_init(MEMORY[0x1E699BDF8]);
    objc_initWeak(&location, v9);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __58__FMNSXPCConnection_initWithConfiguration_exportedObject___block_invoke;
    v29[3] = &unk_1E86BE238;
    objc_copyWeak(&v30, &location);
    v11 = [v10 addFailureBlock:v29];
    [(FMNSXPCConnection *)v9 setFuture:v10];
    if ([configurationCopy machService])
    {
      v12 = objc_alloc(MEMORY[0x1E696B0B8]);
      serviceName = [configurationCopy serviceName];
      v14 = [v12 initWithMachServiceName:serviceName options:{objc_msgSend(configurationCopy, "options")}];
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x1E696B0B8]);
      serviceName = [configurationCopy serviceName];
      v14 = [v15 initWithServiceName:serviceName];
    }

    v16 = v14;

    remoteInterface = [configurationCopy remoteInterface];
    [v16 setRemoteObjectInterface:remoteInterface];

    exportedInterface = [configurationCopy exportedInterface];

    if (exportedInterface)
    {
      exportedInterface2 = [configurationCopy exportedInterface];
      [v16 setExportedInterface:exportedInterface2];

      if (objectCopy)
      {
        [v16 setExportedObject:objectCopy];
      }

      else
      {
        v20 = LogCategory_Unspecified();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [FMNSXPCConnection initWithConfiguration:v20 exportedObject:?];
        }
      }
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __58__FMNSXPCConnection_initWithConfiguration_exportedObject___block_invoke_3;
    v26[3] = &unk_1E86BE260;
    v21 = configurationCopy;
    v27 = v21;
    objc_copyWeak(&v28, &location);
    [v16 setInterruptionHandler:v26];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __58__FMNSXPCConnection_initWithConfiguration_exportedObject___block_invoke_6;
    v23[3] = &unk_1E86BE260;
    v24 = v21;
    objc_copyWeak(&v25, &location);
    [v16 setInvalidationHandler:v23];
    [v16 resume];
    [(FMNSXPCConnection *)v9 setConnection:v16];
    objc_destroyWeak(&v25);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __58__FMNSXPCConnection_initWithConfiguration_exportedObject___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained destroyXPCConnection];
}

void __58__FMNSXPCConnection_initWithConfiguration_exportedObject___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) serviceName];
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1DF650000, v2, OS_LOG_TYPE_DEFAULT, "FMNSXPCConnection Connection interrupted %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FMNSXPCConnectionErrorDomain" code:1 userInfo:0];
  v6 = [WeakRetained future];
  [v6 finishWithError:v5];

  v7 = *MEMORY[0x1E69E9840];
}

void __58__FMNSXPCConnection_initWithConfiguration_exportedObject___block_invoke_6(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) serviceName];
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1DF650000, v2, OS_LOG_TYPE_DEFAULT, "FMNSXPCConnection Connection invalidated %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FMNSXPCConnectionErrorDomain" code:0 userInfo:0];
  v6 = [WeakRetained future];
  [v6 finishWithError:v5];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(FMNSXPCConnection *)self destroyXPCConnection];
  v3.receiver = self;
  v3.super_class = FMNSXPCConnection;
  [(FMNSXPCConnection *)&v3 dealloc];
}

void __38__FMNSXPCConnection_remoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __38__FMNSXPCConnection_remoteObjectProxy__block_invoke_cold_1(v3, v5);
  }

  if ([v3 code] == 4099)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v7 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696AA08];
  v13[0] = v3;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v7 errorWithDomain:@"FMNSXPCConnectionErrorDomain" code:v6 userInfo:v8];

  v10 = [WeakRetained future];
  [v10 finishWithError:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addFailureBlock:(id)block
{
  blockCopy = block;
  future = [(FMNSXPCConnection *)self future];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__FMNSXPCConnection_addFailureBlock___block_invoke;
  v8[3] = &unk_1E86BD2D0;
  v9 = blockCopy;
  v6 = blockCopy;
  v7 = [future addFailureBlock:v8];
}

uint64_t __37__FMNSXPCConnection_addFailureBlock___block_invoke(uint64_t result, void *a2)
{
  if (*(result + 32))
  {
    v2 = result;
    v3 = a2;
    [v3 code];
    v4 = [v3 domain];

    [v4 isEqualToString:@"FMNSXPCConnectionErrorDomain"];
    v5 = *(*(v2 + 32) + 16);

    return v5();
  }

  return result;
}

- (void)destroyXPCConnection
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1DF650000, a2, OS_LOG_TYPE_DEBUG, "Invalidating the xpc connection %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __38__FMNSXPCConnection_remoteObjectProxy__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF650000, a2, OS_LOG_TYPE_ERROR, "FMNSXPCConnection could not create remote object proxy %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end