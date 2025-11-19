@interface _GCDeviceDriverServiceConnection
+ (id)connectionToServiceInDriver:(id)a3 withClient:(id)a4;
- (_GCDeviceDriverServiceConnection)initWithDriverConnection:(id)a3 serviceVendor:(id)a4;
- (id)addInvalidationHandler:(id)a3;
- (id)invalidationHandlers;
- (id)serviceVendor;
- (id)serviceVendorRequestWithLabel:(id)a3 handler:(id)a4;
- (void)setInvalidationHandlers:(void *)a1;
@end

@implementation _GCDeviceDriverServiceConnection

+ (id)connectionToServiceInDriver:(id)a3 withClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[_GCDeviceDriverServiceConnection connectionToServiceInDriver:withClient:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  +[_GCDeviceDriverServiceConnection connectionToServiceInDriver:withClient:];
LABEL_3:
  v9 = [a1 serviceProtocol];
  v10 = [v6 connectToDeviceService:v9 withClient:v8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75___GCDeviceDriverServiceConnection_connectionToServiceInDriver_withClient___block_invoke;
  v14[3] = &unk_1E84144A0;
  v15 = v6;
  v16 = a1;
  v11 = v6;
  v12 = [v10 thenSynchronouslyWithResult:v14];

  return v12;
}

- (_GCDeviceDriverServiceConnection)initWithDriverConnection:(id)a3 serviceVendor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v27.receiver = self;
  v27.super_class = _GCDeviceDriverServiceConnection;
  v9 = [(_GCDeviceDriverServiceConnection *)&v27 init];
  if (!v7)
  {
    [_GCDeviceDriverServiceConnection initWithDriverConnection:serviceVendor:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_8:
    [_GCDeviceDriverServiceConnection initWithDriverConnection:serviceVendor:];
    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_3:
  objc_storeStrong(&v9->_driverConnection, a3);
  objc_storeStrong(&v9->_serviceVendor, a4);
  v10 = objc_opt_new();
  invalidationHandlers = v9->_invalidationHandlers;
  v9->_invalidationHandlers = v10;

  atomic_store(0, &v9->_invalid);
  v12 = v9;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __75___GCDeviceDriverServiceConnection_initWithDriverConnection_serviceVendor___block_invoke;
  v24 = &unk_1E8413E40;
  v25 = v12;
  v13 = v25;
  v26 = v13;
  v14 = _Block_copy(&v21);
  v15 = [(_GCDeviceDriverConnection *)v9->_driverConnection addInterruptionHandler:v14, v21, v22, v23, v24];
  driverConnectionInterruptionObserver = v13->_driverConnectionInterruptionObserver;
  v13->_driverConnectionInterruptionObserver = v15;

  v17 = [(_GCDeviceDriverConnection *)v9->_driverConnection addInvalidationHandler:v14];
  driverConnectionInvalidationObserver = v13->_driverConnectionInvalidationObserver;
  v13->_driverConnectionInvalidationObserver = v17;

  if (!v13->_driverConnectionInterruptionObserver || !v13->_driverConnectionInvalidationObserver)
  {
    v14[2](v14);
  }

  v19 = v13;

  return v19;
}

- (id)addInvalidationHandler:(id)a3
{
  v4 = [a3 copy];
  v5 = self;
  objc_sync_enter(v5);
  v7 = atomic_load(&v5->_invalid);
  if (v7)
  {
    objc_sync_exit(v5);

    v8 = 0;
  }

  else
  {
    v9 = objc_getProperty(v5, v6, 48, 1);
    v10 = [v9 mutableCopy];

    v11 = _Block_copy(v4);
    [v10 addObject:v11];

    objc_setProperty_atomic_copy(v5, v12, v10, 48);
    objc_sync_exit(v5);

    v13 = [GCDisposable alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59___GCDeviceDriverServiceConnection_addInvalidationHandler___block_invoke;
    v15[3] = &unk_1E84144C8;
    v15[4] = v5;
    v16 = v4;
    v8 = [(GCDisposable *)v13 initWithCleanupHandler:v15];
  }

  return v8;
}

- (id)serviceVendorRequestWithLabel:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[GCOperation alloc] initOnQueue:0 withOptions:0];
  [v8 setLabel:v7];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74___GCDeviceDriverServiceConnection_serviceVendorRequestWithLabel_handler___block_invoke;
  v19[3] = &unk_1E8414540;
  v19[4] = self;
  v9 = v6;
  v20 = v9;
  [v8 setSyncBlock:v19];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __74___GCDeviceDriverServiceConnection_serviceVendorRequestWithLabel_handler___block_invoke_3;
  v16 = &unk_1E84145B8;
  v17 = self;
  v18 = v9;
  v10 = v9;
  [v8 setAsyncBlock:&v13];
  v11 = [v8 activate];

  return v11;
}

- (id)invalidationHandlers
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_5(result, a2, 48);
  }

  return result;
}

- (void)setInvalidationHandlers:(void *)a1
{
  if (a1)
  {
    objc_setProperty_atomic_copy(a1, newValue, newValue, 48);
  }
}

- (id)serviceVendor
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_5(result, a2, 32);
  }

  return result;
}

+ (void)connectionToServiceInDriver:withClient:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:"driverConnection != nil" object:? file:? lineNumber:? description:?];
}

+ (void)connectionToServiceInDriver:withClient:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:"client != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithDriverConnection:serviceVendor:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v1 handleFailureInMethod:"driverConnection != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithDriverConnection:serviceVendor:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v1 handleFailureInMethod:"serviceVendor != nil" object:? file:? lineNumber:? description:?];
}

@end