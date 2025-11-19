@interface CNXPC
+ (id)listenerDelegateWithExportedObject:(id)a3 exportedInterfaceProtocol:(id)a4;
+ (id)reasonConnectionWasInvalidated:(id)a3;
+ (id)resumedConnectionForServiceName:(id)a3 remoteObjectInterfaceProtocol:(id)a4;
@end

@implementation CNXPC

+ (id)resumedConnectionForServiceName:(id)a3 remoteObjectInterfaceProtocol:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:v5];
  if (v7)
  {
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:v6];
    [v7 setRemoteObjectInterface:v8];

    [v7 resume];
    v9 = v7;
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [CNXPC resumedConnectionForServiceName:v5 remoteObjectInterfaceProtocol:?];
  }

  return v7;
}

+ (id)listenerDelegateWithExportedObject:(id)a3 exportedInterfaceProtocol:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CNXPCListenerDelegate alloc] initWithWithExportedObject:v6 exportedInterfaceProtocol:v5];

  return v7;
}

+ (id)reasonConnectionWasInvalidated:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _xpcConnection];

    if (v5)
    {
      v6 = [v4 _xpcConnection];
      v7 = xpc_connection_copy_invalidation_reason();

      if (v7)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
        free(v7);
        v9 = v8;
        LODWORD(v8) = off_1EF440708(&__block_literal_global_120, v9);

        if (!v8)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v9 = @"<unknown>";
LABEL_7:

  return v9;
}

+ (void)resumedConnectionForServiceName:(uint64_t)a1 remoteObjectInterfaceProtocol:.cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1859F0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create XPC connection for service: %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end