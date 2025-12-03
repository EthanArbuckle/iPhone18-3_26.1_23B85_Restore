@interface CNXPC
+ (id)listenerDelegateWithExportedObject:(id)object exportedInterfaceProtocol:(id)protocol;
+ (id)reasonConnectionWasInvalidated:(id)invalidated;
+ (id)resumedConnectionForServiceName:(id)name remoteObjectInterfaceProtocol:(id)protocol;
@end

@implementation CNXPC

+ (id)resumedConnectionForServiceName:(id)name remoteObjectInterfaceProtocol:(id)protocol
{
  nameCopy = name;
  protocolCopy = protocol;
  v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:nameCopy];
  if (v7)
  {
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:protocolCopy];
    [v7 setRemoteObjectInterface:v8];

    [v7 resume];
    v9 = v7;
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [CNXPC resumedConnectionForServiceName:nameCopy remoteObjectInterfaceProtocol:?];
  }

  return v7;
}

+ (id)listenerDelegateWithExportedObject:(id)object exportedInterfaceProtocol:(id)protocol
{
  protocolCopy = protocol;
  objectCopy = object;
  v7 = [[CNXPCListenerDelegate alloc] initWithWithExportedObject:objectCopy exportedInterfaceProtocol:protocolCopy];

  return v7;
}

+ (id)reasonConnectionWasInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  v4 = invalidatedCopy;
  if (invalidatedCopy)
  {
    _xpcConnection = [invalidatedCopy _xpcConnection];

    if (_xpcConnection)
    {
      _xpcConnection2 = [v4 _xpcConnection];
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