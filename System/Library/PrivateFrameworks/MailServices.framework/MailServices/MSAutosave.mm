@interface MSAutosave
+ (id)autosave;
+ (id)log;
- (BOOL)hasAutosavedMessageWithIdentifier:(id)a3;
- (MSAutosave)init;
- (MSAutosave)initWithRemoteObjectInterface:(id)a3;
- (id)autosavedMessageDataWithIdentifier:(id)a3;
- (id)newConnectionForInterface:(id)a3;
- (void)_getRemoteAutosaveSessionForIdentifier:(id)a3 completion:(id)a4;
- (void)_handleInterruptedConnection;
- (void)autosaveMessageData:(id)a3 replacingIdentifier:(id)a4 completion:(id)a5;
- (void)autosaveSessionForIdentifier:(id)a3 completion:(id)a4;
- (void)getIdleAutosaves:(id)a3;
- (void)removeAutosavedMessageWithIdentifier:(id)a3;
@end

@implementation MSAutosave

+ (id)autosave
{
  v2 = objc_alloc_init(MSAutosave);

  return v2;
}

- (MSAutosave)init
{
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F54233F0];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v3 setClasses:v6 forSelector:sel_getIdleAutosaves_ argumentIndex:0 ofReply:1];

  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5423450];
  [v3 setInterface:v7 forSelector:sel_autosaveSessionForIdentifier_completion_ argumentIndex:0 ofReply:1];
  v12.receiver = self;
  v12.super_class = MSAutosave;
  v8 = [(MSXPCService *)&v12 initWithRemoteObjectInterface:v3];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    activeAutosaveSessions = v8->_activeAutosaveSessions;
    v8->_activeAutosaveSessions = v9;
  }

  return v8;
}

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __17__MSAutosave_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __17__MSAutosave_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log;
  log_log = v1;
}

- (MSAutosave)initWithRemoteObjectInterface:(id)a3
{
  v4.receiver = self;
  v4.super_class = MSAutosave;
  return [(MSXPCService *)&v4 initWithRemoteObjectInterface:a3];
}

- (BOOL)hasAutosavedMessageWithIdentifier:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E699B868] promise];
  v6 = [v5 errorOnlyCompletionHandlerAdapter];
  v7 = [(MSXPCService *)self remoteObjectProxyWithErrorHandler:v6];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __48__MSAutosave_hasAutosavedMessageWithIdentifier___block_invoke;
  v19[3] = &unk_1E855EAB0;
  v8 = v5;
  v20 = v8;
  [v7 hasAutosavedMessageWithIdentifier:v4 completion:v19];
  v9 = [v8 future];
  v18 = 0;
  v10 = [v9 resultWithTimeout:&v18 error:5.0];
  v11 = v18;

  if (v11)
  {
    v12 = +[MSAutosave log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v11 ef_publicDescription];
      [(MSAutosave *)v13 hasAutosavedMessageWithIdentifier:v25, v12];
    }
  }

  v14 = [v10 BOOLValue];
  v15 = +[MSAutosave log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v22 = v4;
    v23 = 1024;
    v24 = v14;
    _os_log_impl(&dword_1D876A000, v15, OS_LOG_TYPE_INFO, "hasAutosavedMessageWithIdentifier %{public}@ returns %{BOOL}d", buf, 0x12u);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

void __48__MSAutosave_hasAutosavedMessageWithIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [v2 finishWithResult:?];
}

- (void)removeAutosavedMessageWithIdentifier:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MSAutosave_removeAutosavedMessageWithIdentifier___block_invoke;
  v7[3] = &unk_1E855EAD8;
  v5 = v4;
  v8 = v5;
  v6 = [(MSXPCService *)self remoteObjectProxyWithErrorHandler:v7];
  [v6 removeAutosavedMessageWithIdentifier:v5];
}

void __51__MSAutosave_removeAutosavedMessageWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[MSAutosave log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = [v3 ef_publicDescription];
    __51__MSAutosave_removeAutosavedMessageWithIdentifier___block_invoke_cold_1(v5, v6, v8, v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)autosavedMessageDataWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E699B868] promise];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__MSAutosave_autosavedMessageDataWithIdentifier___block_invoke;
  v15[3] = &unk_1E855EAD8;
  v6 = v5;
  v16 = v6;
  v7 = [(MSXPCService *)self remoteObjectProxyWithErrorHandler:v15];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__MSAutosave_autosavedMessageDataWithIdentifier___block_invoke_2;
  v12[3] = &unk_1E855EB00;
  v8 = v4;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  [v7 autosavedMessageDataWithIdentifier:v8 completion:v12];
  v10 = [v9 future];

  return v10;
}

void __49__MSAutosave_autosavedMessageDataWithIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[MSAutosave log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v10 = 138543874;
    v11 = v8;
    v12 = 2048;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1D876A000, v7, OS_LOG_TYPE_INFO, "autosavedMessageDataWithIdentifier:%{public}@ returned data: %p, error: %{public}@", &v10, 0x20u);
  }

  [*(a1 + 40) finishWithResult:v5 error:v6];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)autosaveMessageData:(id)a3 replacingIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__MSAutosave_autosaveMessageData_replacingIdentifier_completion___block_invoke;
  v13[3] = &unk_1E855EB28;
  v11 = v10;
  v14 = v11;
  v12 = [(MSXPCService *)self remoteObjectProxyWithErrorHandler:v13];
  [v12 autosaveMessageData:v8 replacingIdentifier:v9 completion:v11];
}

- (void)getIdleAutosaves:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__MSAutosave_getIdleAutosaves___block_invoke;
  v7[3] = &unk_1E855EB28;
  v5 = v4;
  v8 = v5;
  v6 = [(MSXPCService *)self remoteObjectProxyWithErrorHandler:v7];
  [v6 getIdleAutosaves:v5];
}

- (void)autosaveSessionForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__MSAutosave_autosaveSessionForIdentifier_completion___block_invoke;
  v10[3] = &unk_1E855EB50;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [(MSAutosave *)self _getRemoteAutosaveSessionForIdentifier:v9 completion:v10];
}

void __54__MSAutosave_autosaveSessionForIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [[MSAutosaveSession alloc] initWithIdentifier:*(a1 + 32) remoteSession:v12 remoteService:v7];
    v11 = [*(a1 + 40) activeAutosaveSessions];
    [v11 addObject:v10];

    v9 = v10;
  }

  (*(*(a1 + 48) + 16))();
}

- (id)newConnectionForInterface:(id)a3
{
  v9.receiver = self;
  v9.super_class = MSAutosave;
  v4 = [(MSXPCService *)&v9 newConnectionForInterface:a3];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__MSAutosave_newConnectionForInterface___block_invoke;
  v6[3] = &unk_1E855EB78;
  objc_copyWeak(&v7, &location);
  [v4 setInterruptionHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  return v4;
}

void __40__MSAutosave_newConnectionForInterface___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInterruptedConnection];
}

- (void)_handleInterruptedConnection
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(MSAutosave *)self activeAutosaveSessions];
  v4 = [v3 allObjects];

  if ([v4 count])
  {
    v5 = +[MSAutosave log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(MSAutosave *)v5 _handleInterruptedConnection];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          v9 = v4;
          if (*v16 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 autosaveIdentifier];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __42__MSAutosave__handleInterruptedConnection__block_invoke;
          v14[3] = &unk_1E855EBA0;
          v14[4] = v10;
          [(MSAutosave *)self _getRemoteAutosaveSessionForIdentifier:v11 completion:v14];

          v4 = v9;
        }

        v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __42__MSAutosave__handleInterruptedConnection__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (v9 && v7)
  {
    [*(a1 + 32) didReconnectRemoteSession:v9 remoteService:v7];
  }

  else
  {
    if (!v8)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MSMessageAutosaveErrorDomain" code:4 userInfo:0];
    }

    [*(a1 + 32) remoteSessionDisconnectedWithError:v8];
  }
}

- (void)_getRemoteAutosaveSessionForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSXPCService *)self remoteObjectProxy];
  if (v8)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__MSAutosave__getRemoteAutosaveSessionForIdentifier_completion___block_invoke;
    v10[3] = &unk_1E855EBC8;
    v12 = v7;
    v11 = v8;
    [v11 autosaveSessionForIdentifier:v6 completion:v10];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MSMessageAutosaveErrorDomain" code:4 userInfo:0];
    (*(v7 + 2))(v7, 0, 0, v9);
  }
}

void __64__MSAutosave__getRemoteAutosaveSessionForIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v7 || v5)
  {
    if (!v5)
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MSMessageAutosaveErrorDomain" code:4 userInfo:0];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }
}

- (void)hasAutosavedMessageWithIdentifier:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1D876A000, log, OS_LOG_TYPE_ERROR, "Failed to check for autosaved message. Error: %{public}@", buf, 0xCu);
}

void __51__MSAutosave_removeAutosavedMessageWithIdentifier___block_invoke_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1D876A000, log, OS_LOG_TYPE_ERROR, "Removing autosave for identifier (%@) failed with error: %{public}@", buf, 0x16u);
}

@end