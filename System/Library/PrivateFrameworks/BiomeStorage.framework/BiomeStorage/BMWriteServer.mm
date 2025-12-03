@interface BMWriteServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation BMWriteServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v29 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x1E698E9D8] processWithXPCConnection:connectionCopy];
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    executableName = [v9 executableName];
    v25 = 138543618;
    v26 = executableName;
    v27 = 1024;
    v28 = [v9 pid];
    _os_log_impl(&dword_1C928A000, v10, OS_LOG_TYPE_DEFAULT, "Incoming connection from %{public}@(%d)", &v25, 0x12u);
  }

  v12 = [MEMORY[0x1E698E970] policyForProcess:v9 connectionFlags:0 useCase:*MEMORY[0x1E698E948]];
  if (([v12 allowsConnectionToWriteService] & 1) == 0)
  {
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_ERROR))
    {
      [BMWriteServer listener:shouldAcceptNewConnection:];
    }

    goto LABEL_13;
  }

  v13 = [v9 uid];
  if (v13 != getuid())
  {
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_ERROR))
    {
      [BMWriteServer listener:shouldAcceptNewConnection:];
    }

    goto LABEL_13;
  }

  client = self->_client;
  identifier = [v9 identifier];
  v16 = identifier;
  if (!client)
  {
    v22 = self->_client;
    self->_client = identifier;

    goto LABEL_16;
  }

  v17 = [(NSString *)client isEqualToString:identifier];

  if (v17)
  {
LABEL_16:
    v18 = [[BMWriteServerExported alloc] initWithProcess:v9 accessControlPolicy:v12];
    v23 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48E3A68];
    [connectionCopy setExportedInterface:v23];

    [connectionCopy setExportedObject:v18];
    v24 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48E3548];
    [connectionCopy setRemoteObjectInterface:v24];

    [connectionCopy resume];
    v19 = 1;
    goto LABEL_14;
  }

  v18 = __biome_log_for_category();
  if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_ERROR))
  {
    [BMWriteServer listener:shouldAcceptNewConnection:];
  }

LABEL_13:
  v19 = 0;
LABEL_14:

  objc_autoreleasePoolPop(v8);
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v11 = *MEMORY[0x1E69E9840];
  v2 = [v1 executableName];
  [v0 pid];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4(&dword_1C928A000, v3, v4, "Refusing connection from %{public}@(%d), process not properly entitled", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)listener:shouldAcceptNewConnection:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v11 = *MEMORY[0x1E69E9840];
  v2 = [v1 executableName];
  [v0 pid];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4(&dword_1C928A000, v3, v4, "Refusing connection from %{public}@(%d), wrong user", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)listener:shouldAcceptNewConnection:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v11 = *MEMORY[0x1E69E9840];
  v2 = [v1 executableName];
  [v0 pid];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4(&dword_1C928A000, v3, v4, "Refusing connection from %{public}@(%d), client mismatch", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

@end