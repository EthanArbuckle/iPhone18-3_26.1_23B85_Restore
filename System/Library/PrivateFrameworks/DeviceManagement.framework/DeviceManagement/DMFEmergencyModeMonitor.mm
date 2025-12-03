@interface DMFEmergencyModeMonitor
+ (DMFEmergencyModeMonitor)sharedMonitor;
+ (id)remoteInterface;
- (BOOL)disableEmergencyModeWithError:(id *)error;
- (BOOL)enableEmergencyModeForDuration:(double)duration withError:(id *)error;
- (BOOL)enableEmergencyModeWithError:(id *)error;
- (DMFEmergencyModeMonitor)init;
- (DMFEmergencyModeMonitor)initWithXPCConnection:(id)connection;
- (id)emergencyModeStatusWithError:(id *)error;
- (void)dealloc;
- (void)emergencyModeStatusWithCompletionHandler:(id)handler;
@end

@implementation DMFEmergencyModeMonitor

- (DMFEmergencyModeMonitor)init
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.dmd.emergency-mode" options:4096];
  v4 = [(DMFEmergencyModeMonitor *)self initWithXPCConnection:v3];

  return v4;
}

+ (id)remoteInterface
{
  if (remoteInterface_onceToken != -1)
  {
    +[DMFEmergencyModeMonitor remoteInterface];
  }

  v3 = remoteInterface_remoteInterface;

  return v3;
}

uint64_t __42__DMFEmergencyModeMonitor_remoteInterface__block_invoke()
{
  remoteInterface_remoteInterface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F57C2A20];

  return MEMORY[0x1EEE66BB8]();
}

+ (DMFEmergencyModeMonitor)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    +[DMFEmergencyModeMonitor sharedMonitor];
  }

  v3 = sharedMonitor_emergencyModeMonitor;

  return v3;
}

uint64_t __40__DMFEmergencyModeMonitor_sharedMonitor__block_invoke()
{
  sharedMonitor_emergencyModeMonitor = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (DMFEmergencyModeMonitor)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = DMFEmergencyModeMonitor;
  v6 = [(DMFEmergencyModeMonitor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcConnection, connection);
    v8 = +[DMFEmergencyModeMonitor remoteInterface];
    [(NSXPCConnection *)v7->_xpcConnection setRemoteObjectInterface:v8];

    [(NSXPCConnection *)v7->_xpcConnection resume];
  }

  return v7;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = DMFEmergencyModeMonitor;
  [(DMFEmergencyModeMonitor *)&v3 dealloc];
}

- (BOOL)enableEmergencyModeWithError:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  xpcConnection = [(DMFEmergencyModeMonitor *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__DMFEmergencyModeMonitor_enableEmergencyModeWithError___block_invoke;
  v9[3] = &unk_1E8616870;
  v9[4] = &v10;
  v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__DMFEmergencyModeMonitor_enableEmergencyModeWithError___block_invoke_62;
  v8[3] = &unk_1E8616870;
  v8[4] = &v10;
  [v5 enableEmergencyModeWithCompletionHandler:v8];
  if (error)
  {
    *error = v11[5];
  }

  v6 = v11[5] == 0;

  _Block_object_dispose(&v10, 8);
  return v6;
}

void __56__DMFEmergencyModeMonitor_enableEmergencyModeWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFEmergencyModeLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__DMFEmergencyModeMonitor_enableEmergencyModeWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __56__DMFEmergencyModeMonitor_enableEmergencyModeWithError___block_invoke_62(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFEmergencyModeLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __56__DMFEmergencyModeMonitor_enableEmergencyModeWithError___block_invoke_62_cold_1();
    }

    v6 = *(*(a1 + 32) + 8);
    v7 = v3;
    v5 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1DBFFF000, v5, OS_LOG_TYPE_DEFAULT, "Emergency Mode enabled", v8, 2u);
  }
}

- (BOOL)enableEmergencyModeForDuration:(double)duration withError:(id *)error
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  xpcConnection = [(DMFEmergencyModeMonitor *)self xpcConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__DMFEmergencyModeMonitor_enableEmergencyModeForDuration_withError___block_invoke;
  v11[3] = &unk_1E8616870;
  v11[4] = &v12;
  v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__DMFEmergencyModeMonitor_enableEmergencyModeForDuration_withError___block_invoke_63;
  v10[3] = &unk_1E8616898;
  *&v10[5] = duration;
  v10[4] = &v12;
  [v7 enableEmergencyModeForDuration:v10 withCompletionHandler:duration];
  if (error)
  {
    *error = v13[5];
  }

  v8 = v13[5] == 0;

  _Block_object_dispose(&v12, 8);
  return v8;
}

void __68__DMFEmergencyModeMonitor_enableEmergencyModeForDuration_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFEmergencyModeLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__DMFEmergencyModeMonitor_enableEmergencyModeWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __68__DMFEmergencyModeMonitor_enableEmergencyModeForDuration_withError___block_invoke_63(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = DMFEmergencyModeLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __68__DMFEmergencyModeMonitor_enableEmergencyModeForDuration_withError___block_invoke_63_cold_1(a1, v3, v5);
    }

    v6 = *(*(a1 + 32) + 8);
    v7 = v3;
    v5 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v10 = 134217984;
    v11 = v8;
    _os_log_impl(&dword_1DBFFF000, v5, OS_LOG_TYPE_DEFAULT, "Emergency Mode enabled for duration %f", &v10, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)disableEmergencyModeWithError:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  xpcConnection = [(DMFEmergencyModeMonitor *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__DMFEmergencyModeMonitor_disableEmergencyModeWithError___block_invoke;
  v9[3] = &unk_1E8616870;
  v9[4] = &v10;
  v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__DMFEmergencyModeMonitor_disableEmergencyModeWithError___block_invoke_64;
  v8[3] = &unk_1E8616870;
  v8[4] = &v10;
  [v5 disableEmergencyModeWithCompletionHandler:v8];
  if (error)
  {
    *error = v11[5];
  }

  v6 = v11[5] == 0;

  _Block_object_dispose(&v10, 8);
  return v6;
}

void __57__DMFEmergencyModeMonitor_disableEmergencyModeWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFEmergencyModeLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__DMFEmergencyModeMonitor_enableEmergencyModeWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __57__DMFEmergencyModeMonitor_disableEmergencyModeWithError___block_invoke_64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFEmergencyModeLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__DMFEmergencyModeMonitor_disableEmergencyModeWithError___block_invoke_64_cold_1();
    }

    v6 = *(*(a1 + 32) + 8);
    v7 = v3;
    v5 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1DBFFF000, v5, OS_LOG_TYPE_DEFAULT, "Emergency Mode disabled", v8, 2u);
  }
}

- (id)emergencyModeStatusWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  xpcConnection = [(DMFEmergencyModeMonitor *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__DMFEmergencyModeMonitor_emergencyModeStatusWithError___block_invoke;
  v9[3] = &unk_1E8616870;
  v9[4] = &v16;
  v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__DMFEmergencyModeMonitor_emergencyModeStatusWithError___block_invoke_65;
  v8[3] = &unk_1E86168C0;
  v8[4] = &v16;
  v8[5] = &v10;
  [v5 emergencyModeStatusWithCompletionHandler:v8];
  if (error)
  {
    *error = v17[5];
  }

  v6 = v11[5];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);

  return v6;
}

void __56__DMFEmergencyModeMonitor_emergencyModeStatusWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFEmergencyModeLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__DMFEmergencyModeMonitor_enableEmergencyModeWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __56__DMFEmergencyModeMonitor_emergencyModeStatusWithError___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
    [v7 doubleValue];
    if (v8 <= 0.0)
    {
      [v7 doubleValue];
      v14 = v13;
      v9 = DMFEmergencyModeLog();
      v15 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v14 >= 0.0)
      {
        if (v15)
        {
          LOWORD(v22) = 0;
          v10 = "Emergency Mode is disabled";
          v16 = v9;
          v17 = 2;
          goto LABEL_14;
        }
      }

      else if (v15)
      {
        v22 = 138543362;
        v23 = v7;
        v10 = "Emergency Mode was disabled %{public}@ seconds ago";
        goto LABEL_11;
      }
    }

    else
    {
      v9 = DMFEmergencyModeLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543362;
        v23 = v7;
        v10 = "Emergency Mode is enabled for %{public}@ more seconds";
LABEL_11:
        v16 = v9;
        v17 = 12;
LABEL_14:
        _os_log_impl(&dword_1DBFFF000, v16, OS_LOG_TYPE_DEFAULT, v10, &v22, v17);
      }
    }

    v11 = 40;
    v12 = v7;
    goto LABEL_16;
  }

  v7 = DMFEmergencyModeLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __56__DMFEmergencyModeMonitor_emergencyModeStatusWithError___block_invoke_65_cold_1();
  }

  v11 = 32;
  v12 = v6;
LABEL_16:

  v18 = *(*(a1 + v11) + 8);
  v19 = v12;
  v20 = *(v18 + 40);
  *(v18 + 40) = v19;

  v21 = *MEMORY[0x1E69E9840];
}

- (void)emergencyModeStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(DMFEmergencyModeMonitor *)self xpcConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__DMFEmergencyModeMonitor_emergencyModeStatusWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E86168E8;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v11];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__DMFEmergencyModeMonitor_emergencyModeStatusWithCompletionHandler___block_invoke_67;
  v9[3] = &unk_1E8616910;
  v10 = v6;
  v8 = v6;
  [v7 emergencyModeStatusWithCompletionHandler:v9];
}

void __68__DMFEmergencyModeMonitor_emergencyModeStatusWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DMFEmergencyModeLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__DMFEmergencyModeMonitor_enableEmergencyModeWithError___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __68__DMFEmergencyModeMonitor_emergencyModeStatusWithCompletionHandler___block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
    [v7 doubleValue];
    if (v8 <= 0.0)
    {
      [v7 doubleValue];
      v13 = v12;
      v9 = DMFEmergencyModeLog();
      v14 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v13 >= 0.0)
      {
        if (v14)
        {
          LOWORD(v18) = 0;
          v10 = "Emergency Mode is disabled";
          v15 = v9;
          v16 = 2;
          goto LABEL_14;
        }
      }

      else if (v14)
      {
        v18 = 138543362;
        v19 = v7;
        v10 = "Emergency Mode was disabled %{public}@ seconds ago";
        goto LABEL_11;
      }
    }

    else
    {
      v9 = DMFEmergencyModeLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = v7;
        v10 = "Emergency Mode is enabled for %{public}@ more seconds";
LABEL_11:
        v15 = v9;
        v16 = 12;
LABEL_14:
        _os_log_impl(&dword_1DBFFF000, v15, OS_LOG_TYPE_DEFAULT, v10, &v18, v16);
      }
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), v7);
    goto LABEL_16;
  }

  v11 = DMFEmergencyModeLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __56__DMFEmergencyModeMonitor_emergencyModeStatusWithError___block_invoke_65_cold_1();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
LABEL_16:

  v17 = *MEMORY[0x1E69E9840];
}

void __56__DMFEmergencyModeMonitor_enableEmergencyModeWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1DBFFF000, v0, v1, "Could not create Emergency Mode proxy: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__DMFEmergencyModeMonitor_enableEmergencyModeWithError___block_invoke_62_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1DBFFF000, v0, v1, "Failed to enabled Emergency Mode: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __68__DMFEmergencyModeMonitor_enableEmergencyModeForDuration_withError___block_invoke_63_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v5 = 134218242;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1DBFFF000, log, OS_LOG_TYPE_ERROR, "Failed to enabled Emergency Mode for duration %f: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __57__DMFEmergencyModeMonitor_disableEmergencyModeWithError___block_invoke_64_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1DBFFF000, v0, v1, "Failed to disable Emergency Mode: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__DMFEmergencyModeMonitor_emergencyModeStatusWithError___block_invoke_65_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1DBFFF000, v0, v1, "Failed to fetch Emergency Mode status: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end