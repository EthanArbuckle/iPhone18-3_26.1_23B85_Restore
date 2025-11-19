@interface GCIPCRemoteConnection
- ($115C4C562B26FF47E01F9F4EA65B5887)peerAuditToken;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConnection:(id)a3;
- (GCIPCRemoteConnection)init;
- (GCIPCRemoteConnection)initWithConnection:(id)a3;
- (NSString)peerBundleIdentifier;
- (id)addInterruptionHandler:(id)a3;
- (id)addInvalidationHandler:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)peerValueForEntitlement:(id)a3;
- (id)redactedDescription;
- (int)peerAuditSessionIdentifier;
- (int)peerProcessIdentifier;
- (unint64_t)hash;
- (unsigned)peerEffectiveGroupIdentifier;
- (unsigned)peerEffectiveUserIdentifier;
@end

@implementation GCIPCRemoteConnection

- (GCIPCRemoteConnection)initWithConnection:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = GCIPCRemoteConnection;
  v6 = [(GCIPCRemoteConnection *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = objc_opt_new();
    interruptionHandlers = v7->_interruptionHandlers;
    v7->_interruptionHandlers = v8;

    v10 = objc_opt_new();
    invalidationHandlers = v7->_invalidationHandlers;
    v7->_invalidationHandlers = v10;

    atomic_store(0, &v7->_invalid);
    v12 = v7;
    connection = v7->_connection;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __44__GCIPCRemoteConnection_initWithConnection___block_invoke;
    v20[3] = &unk_1E8413DA0;
    v14 = v12;
    v21 = v14;
    [(NSXPCConnection *)connection setInterruptionHandler:v20];
    v15 = v7->_connection;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __44__GCIPCRemoteConnection_initWithConnection___block_invoke_1;
    v18[3] = &unk_1E8413DA0;
    v19 = v14;
    v16 = v14;
    [(NSXPCConnection *)v15 setInvalidationHandler:v18];
  }

  return v7;
}

void __44__GCIPCRemoteConnection_initWithConnection___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v2 = _os_activity_create(&dword_1D2C3B000, "[IPC] Connection Interrupted", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &state);
  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&dword_1D2C3B000, v3, OS_LOG_TYPE_INFO, "Connection interrupted: %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [*(a1 + 32) interruptionHandlers];
  v6 = [v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v12 + 1) + 8 * v10++) + 16))();
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }

  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

void __44__GCIPCRemoteConnection_initWithConnection___block_invoke_1(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v2 = _os_activity_create(&dword_1D2C3B000, "[IPC] Connection Invalidated", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &state);
  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&dword_1D2C3B000, v3, OS_LOG_TYPE_INFO, "Connection invalidated: %@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  atomic_store(1u, (*(a1 + 32) + 8));
  v6 = [*(a1 + 32) invalidationHandlers];
  objc_sync_exit(v5);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v6 reverseObjectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v12 + 1) + 8 * v10++) + 16))();
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }

  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

- (GCIPCRemoteConnection)init
{
  [(GCIPCRemoteConnection *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)addInterruptionHandler:(id)a3
{
  v4 = [a3 copy];
  v5 = self;
  objc_sync_enter(v5);
  v6 = atomic_load(&v5->_invalid);
  if (v6)
  {
    objc_sync_exit(v5);

    v7 = 0;
  }

  else
  {
    v8 = [(GCIPCRemoteConnection *)v5 interruptionHandlers];
    v9 = [v8 mutableCopy];

    v10 = _Block_copy(v4);
    [v9 addObject:v10];

    [(GCIPCRemoteConnection *)v5 setInterruptionHandlers:v9];
    objc_sync_exit(v5);

    v11 = [GCDisposable alloc];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__GCIPCRemoteConnection_addInterruptionHandler___block_invoke;
    v13[3] = &unk_1E84144C8;
    v13[4] = v5;
    v14 = v4;
    v7 = [(GCDisposable *)v11 initWithCleanupHandler:v13];
  }

  return v7;
}

void __48__GCIPCRemoteConnection_addInterruptionHandler___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = [*(a1 + 32) interruptionHandlers];
  v3 = [v2 mutableCopy];

  v4 = _Block_copy(*(a1 + 40));
  [v3 removeObject:v4];

  [*(a1 + 32) setInterruptionHandlers:v3];
  objc_sync_exit(obj);
}

- (id)addInvalidationHandler:(id)a3
{
  v4 = [a3 copy];
  v5 = self;
  objc_sync_enter(v5);
  v6 = atomic_load(&v5->_invalid);
  if (v6)
  {
    objc_sync_exit(v5);

    v7 = 0;
  }

  else
  {
    v8 = [(GCIPCRemoteConnection *)v5 invalidationHandlers];
    v9 = [v8 mutableCopy];

    v10 = _Block_copy(v4);
    [v9 addObject:v10];

    [(GCIPCRemoteConnection *)v5 setInvalidationHandlers:v9];
    objc_sync_exit(v5);

    v11 = [GCDisposable alloc];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__GCIPCRemoteConnection_addInvalidationHandler___block_invoke;
    v13[3] = &unk_1E84144C8;
    v13[4] = v5;
    v14 = v4;
    v7 = [(GCDisposable *)v11 initWithCleanupHandler:v13];
  }

  return v7;
}

void __48__GCIPCRemoteConnection_addInvalidationHandler___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = [*(a1 + 32) invalidationHandlers];
  v3 = [v2 mutableCopy];

  v4 = _Block_copy(*(a1 + 40));
  [v3 removeObject:v4];

  [*(a1 + 32) setInvalidationHandlers:v3];
  objc_sync_exit(obj);
}

- ($115C4C562B26FF47E01F9F4EA65B5887)peerAuditToken
{
  v4 = [(GCIPCRemoteConnection *)self connection];
  if (v4)
  {
    v6 = v4;
    [v4 auditToken];
    v4 = v6;
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

- (int)peerAuditSessionIdentifier
{
  v2 = [(GCIPCRemoteConnection *)self connection];
  v3 = [v2 auditSessionIdentifier];

  return v3;
}

- (int)peerProcessIdentifier
{
  v2 = [(GCIPCRemoteConnection *)self connection];
  v3 = [v2 processIdentifier];

  return v3;
}

- (unsigned)peerEffectiveUserIdentifier
{
  v2 = [(GCIPCRemoteConnection *)self connection];
  v3 = [v2 effectiveUserIdentifier];

  return v3;
}

- (unsigned)peerEffectiveGroupIdentifier
{
  v2 = [(GCIPCRemoteConnection *)self connection];
  v3 = [v2 effectiveGroupIdentifier];

  return v3;
}

- (NSString)peerBundleIdentifier
{
  v2 = [(GCIPCRemoteConnection *)self connection];
  v3 = [v2 gc_peerBundleIdentifier];

  return v3;
}

- (id)peerValueForEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(GCIPCRemoteConnection *)self connection];
  v6 = [v5 valueForEntitlement:v4];

  return v6;
}

- (BOOL)isEqualToConnection:(id)a3
{
  v4 = a3;
  v5 = [(GCIPCRemoteConnection *)self connection];
  v6 = [v4 connection];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GCIPCRemoteConnection *)self isEqualToConnection:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(GCIPCRemoteConnection *)self connection];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = atomic_load(&self->_invalid);
  if (v5)
  {
    v6 = " (invalid)";
  }

  else
  {
    v6 = "";
  }

  return [v3 stringWithFormat:@"<%@%s remote.pid: %i>", v4, v6, -[NSXPCConnection processIdentifier](self->_connection, "processIdentifier")];
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = atomic_load(&self->_invalid);
  if (v5)
  {
    v6 = " (invalid)";
  }

  else
  {
    v6 = "";
  }

  return [v3 stringWithFormat:@"<%@%s remote.pid: %i>", v4, v6, -[NSXPCConnection processIdentifier](self->_connection, "processIdentifier")];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = atomic_load(&self->_invalid);
  if (v6)
  {
    v7 = " (invalid)";
  }

  else
  {
    v7 = "";
  }

  v8 = [v3 stringWithFormat:@"<%@ %p%s remote.pid: %i>", v5, self, v7, -[NSXPCConnection processIdentifier](self->_connection, "processIdentifier")];

  return v8;
}

@end