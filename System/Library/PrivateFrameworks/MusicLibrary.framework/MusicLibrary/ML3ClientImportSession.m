@interface ML3ClientImportSession
- (BOOL)addItems:(id)a3;
- (BOOL)cancel;
- (BOOL)finish;
- (BOOL)removeItems:(id)a3;
- (BOOL)start;
- (BOOL)updateItems:(id)a3;
- (ML3ClientImportSession)initWithConfiguration:(id)a3 delegate:(id)a4;
- (id)_xpcClientConnection;
- (id)addContainersReturningResult:(id)a3;
- (id)addItemsReturningResult:(id)a3;
- (id)removeContainersReturningResult:(id)a3;
- (id)removeItemsReturningResult:(id)a3;
- (id)updateContainersReturningResult:(id)a3;
- (id)updateItemsReturningResult:(id)a3;
- (void)sessionDidUpdateProgress:(float)a3;
- (void)sessionFailedToAddContainer:(id)a3 completion:(id)a4;
- (void)sessionFailedToAddItem:(id)a3 completion:(id)a4;
- (void)sessionFailedToRemoveContainer:(id)a3 completion:(id)a4;
- (void)sessionFailedToRemoveItem:(id)a3 completion:(id)a4;
- (void)sessionFailedToUpdateContainer:(id)a3 completion:(id)a4;
- (void)sessionFailedToUpdateItem:(id)a3 completion:(id)a4;
@end

@implementation ML3ClientImportSession

- (id)_xpcClientConnection
{
  v40 = *MEMORY[0x277D85DE8];
  xpcClientConnection = self->_xpcClientConnection;
  if (!xpcClientConnection)
  {
    v4 = +[MLMediaLibraryService sharedMediaLibraryService];
    v35 = 0;
    v5 = [v4 clientImportServiceListenerEndpointWithError:&v35];
    v6 = v35;

    if (v5)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v5];
      v8 = self->_xpcClientConnection;
      self->_xpcClientConnection = v7;

      [(NSXPCConnection *)self->_xpcClientConnection setExportedObject:self];
      v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2840DFA80];
      v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      [v9 setClasses:v10 forSelector:sel_sessionFailedToAddItem_completion_ argumentIndex:0 ofReply:0];

      v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      [v9 setClasses:v11 forSelector:sel_sessionFailedToUpdateItem_completion_ argumentIndex:0 ofReply:0];

      v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      [v9 setClasses:v12 forSelector:sel_sessionFailedToRemoveItem_completion_ argumentIndex:0 ofReply:0];

      v13 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      [v9 setClasses:v13 forSelector:sel_sessionFailedToAddContainer_completion_ argumentIndex:0 ofReply:0];

      v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      [v9 setClasses:v14 forSelector:sel_sessionFailedToUpdateContainer_completion_ argumentIndex:0 ofReply:0];

      v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      [v9 setClasses:v15 forSelector:sel_sessionFailedToRemoveContainer_completion_ argumentIndex:0 ofReply:0];

      [(NSXPCConnection *)self->_xpcClientConnection setExportedInterface:v9];
      v16 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2840EEE70];
      v17 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      [v16 setClasses:v17 forSelector:sel_addItems_completion_ argumentIndex:0 ofReply:1];

      v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      [v16 setClasses:v18 forSelector:sel_updateItems_completion_ argumentIndex:0 ofReply:1];

      v19 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      [v16 setClasses:v19 forSelector:sel_removeItems_completion_ argumentIndex:0 ofReply:1];

      v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      [v16 setClasses:v20 forSelector:sel_addContainers_completion_ argumentIndex:0 ofReply:1];

      v21 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      [v16 setClasses:v21 forSelector:sel_updateContainers_completion_ argumentIndex:0 ofReply:1];

      v22 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      [v16 setClasses:v22 forSelector:sel_removeContainers_completion_ argumentIndex:0 ofReply:1];

      [(NSXPCConnection *)self->_xpcClientConnection setRemoteObjectInterface:v16];
      v23 = self;
      v24 = self->_xpcClientConnection;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __46__ML3ClientImportSession__xpcClientConnection__block_invoke;
      v32[3] = &unk_2787660F0;
      v25 = v23;
      v33 = v25;
      v34 = v25;
      [(NSXPCConnection *)v24 setInterruptionHandler:v32];
      v26 = self->_xpcClientConnection;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __46__ML3ClientImportSession__xpcClientConnection__block_invoke_127;
      v29[3] = &unk_2787660F0;
      v30 = v25;
      v31 = v25;
      v27 = v25;
      [(NSXPCConnection *)v26 setInvalidationHandler:v29];
      [(NSXPCConnection *)self->_xpcClientConnection resume];
    }

    else
    {
      v9 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v37 = self;
        v38 = 2114;
        v39 = v6;
        _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to obtain service listener endpoint. err=%{public}@", buf, 0x16u);
      }
    }

    xpcClientConnection = self->_xpcClientConnection;
  }

  return xpcClientConnection;
}

void __46__ML3ClientImportSession__xpcClientConnection__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v2;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_ERROR, "%{public}@ Connection to client import service interrupted", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
}

void __46__ML3ClientImportSession__xpcClientConnection__block_invoke_127(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v2;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_ERROR, "%{public}@ Connection to client import service invalidated", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
}

- (void)sessionDidUpdateProgress:(float)a3
{
  v4 = ([(NSProgress *)self->_progress totalUnitCount]* a3);
  v5 = [(ML3ClientImportSession *)self progress];
  [v5 setCompletedUnitCount:v4];
}

- (void)sessionFailedToRemoveContainer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 1;
  v9 = 1;
  if (self->_delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [(ML3ClientImportSessionDelegate *)self->_delegate session:self failedToRemoveContainer:v6 shouldStop:&v9];
      v8 = v9;
    }

    else
    {
      v8 = 1;
    }
  }

  (*(v7 + 2))(v7, v8 & 1, 0);
}

- (void)sessionFailedToUpdateContainer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 1;
  v9 = 1;
  if (self->_delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [(ML3ClientImportSessionDelegate *)self->_delegate session:self failedToUpdateContainer:v6 shouldStop:&v9];
      v8 = v9;
    }

    else
    {
      v8 = 1;
    }
  }

  (*(v7 + 2))(v7, v8 & 1, 0);
}

- (void)sessionFailedToAddContainer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 1;
  v9 = 1;
  if (self->_delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [(ML3ClientImportSessionDelegate *)self->_delegate session:self failedToAddContainer:v6 shouldStop:&v9];
      v8 = v9;
    }

    else
    {
      v8 = 1;
    }
  }

  (*(v7 + 2))(v7, v8 & 1, 0);
}

- (void)sessionFailedToRemoveItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 1;
  v9 = 1;
  if (self->_delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [(ML3ClientImportSessionDelegate *)self->_delegate session:self failedToRemoveItem:v6 shouldStop:&v9];
      v8 = v9;
    }

    else
    {
      v8 = 1;
    }
  }

  (*(v7 + 2))(v7, v8 & 1, 0);
}

- (void)sessionFailedToUpdateItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 1;
  v9 = 1;
  if (self->_delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [(ML3ClientImportSessionDelegate *)self->_delegate session:self failedToUpdateItem:v6 shouldStop:&v9];
      v8 = v9;
    }

    else
    {
      v8 = 1;
    }
  }

  (*(v7 + 2))(v7, v8 & 1, 0);
}

- (void)sessionFailedToAddItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 1;
  v9 = 1;
  if (self->_delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [(ML3ClientImportSessionDelegate *)self->_delegate session:self failedToAddItem:v6 shouldStop:&v9];
      v8 = v9;
    }

    else
    {
      v8 = 1;
    }
  }

  (*(v7 + 2))(v7, v8 & 1, 0);
}

- (id)removeContainersReturningResult:(id)a3
{
  v5 = a3;
  if (!self->_hasActiveSession)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"ML3ClientImportSession.m" lineNumber:195 description:@"removeContainers cannot be called without an active session"];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13032;
  v20 = __Block_byref_object_dispose__13033;
  v21 = 0;
  v6 = [(ML3ClientImportSession *)self _xpcClientConnection];
  v7 = v6;
  if (v6)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__ML3ClientImportSession_removeContainersReturningResult___block_invoke;
    v15[3] = &unk_278765828;
    v15[4] = self;
    v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v15];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__ML3ClientImportSession_removeContainersReturningResult___block_invoke_31;
    v14[3] = &unk_2787633F0;
    v14[4] = self;
    v14[5] = &v16;
    [v8 removeContainers:v5 completion:v14];
  }

  v9 = v17[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = objc_alloc_init(ML3ClientImportResult);
  }

  v11 = v10;

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __58__ML3ClientImportSession_removeContainersReturningResult___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to the remote service. err=%{public}@", &v6, 0x16u);
  }
}

void __58__ML3ClientImportSession_removeContainersReturningResult___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Finished removing items. err=%{public}@", &v10, 0x16u);
  }

  v9 = v5;
  if (!v5)
  {
    v9 = objc_alloc_init(ML3ClientImportResult);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
  if (!v5)
  {
  }
}

- (id)updateContainersReturningResult:(id)a3
{
  v5 = a3;
  if (!self->_hasActiveSession)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"ML3ClientImportSession.m" lineNumber:179 description:@"updateContainers cannot be called without an active session"];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13032;
  v20 = __Block_byref_object_dispose__13033;
  v21 = 0;
  v6 = [(ML3ClientImportSession *)self _xpcClientConnection];
  v7 = v6;
  if (v6)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__ML3ClientImportSession_updateContainersReturningResult___block_invoke;
    v15[3] = &unk_278765828;
    v15[4] = self;
    v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v15];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__ML3ClientImportSession_updateContainersReturningResult___block_invoke_27;
    v14[3] = &unk_2787633F0;
    v14[4] = self;
    v14[5] = &v16;
    [v8 updateContainers:v5 completion:v14];
  }

  v9 = v17[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = objc_alloc_init(ML3ClientImportResult);
  }

  v11 = v10;

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __58__ML3ClientImportSession_updateContainersReturningResult___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to the remote service. err=%{public}@", &v6, 0x16u);
  }
}

void __58__ML3ClientImportSession_updateContainersReturningResult___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Finished updating items. err=%{public}@", &v10, 0x16u);
  }

  v9 = v5;
  if (!v5)
  {
    v9 = objc_alloc_init(ML3ClientImportResult);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
  if (!v5)
  {
  }
}

- (id)addContainersReturningResult:(id)a3
{
  v5 = a3;
  if (!self->_hasActiveSession)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"ML3ClientImportSession.m" lineNumber:163 description:@"addContainers cannot be called without an active session"];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13032;
  v20 = __Block_byref_object_dispose__13033;
  v21 = 0;
  v6 = [(ML3ClientImportSession *)self _xpcClientConnection];
  v7 = v6;
  if (v6)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__ML3ClientImportSession_addContainersReturningResult___block_invoke;
    v15[3] = &unk_278765828;
    v15[4] = self;
    v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v15];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__ML3ClientImportSession_addContainersReturningResult___block_invoke_23;
    v14[3] = &unk_2787633F0;
    v14[4] = self;
    v14[5] = &v16;
    [v8 addContainers:v5 completion:v14];
  }

  v9 = v17[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = objc_alloc_init(ML3ClientImportResult);
  }

  v11 = v10;

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __55__ML3ClientImportSession_addContainersReturningResult___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to the remote service. err=%{public}@", &v6, 0x16u);
  }
}

void __55__ML3ClientImportSession_addContainersReturningResult___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Finished adding items. err=%{public}@", &v10, 0x16u);
  }

  v9 = v5;
  if (!v5)
  {
    v9 = objc_alloc_init(ML3ClientImportResult);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
  if (!v5)
  {
  }
}

- (id)removeItemsReturningResult:(id)a3
{
  v5 = a3;
  if (!self->_hasActiveSession)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"ML3ClientImportSession.m" lineNumber:147 description:@"removeItems cannot be called without an active session"];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13032;
  v20 = __Block_byref_object_dispose__13033;
  v21 = 0;
  v6 = [(ML3ClientImportSession *)self _xpcClientConnection];
  v7 = v6;
  if (v6)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__ML3ClientImportSession_removeItemsReturningResult___block_invoke;
    v15[3] = &unk_278765828;
    v15[4] = self;
    v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v15];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__ML3ClientImportSession_removeItemsReturningResult___block_invoke_19;
    v14[3] = &unk_2787633F0;
    v14[4] = self;
    v14[5] = &v16;
    [v8 removeItems:v5 completion:v14];
  }

  v9 = v17[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = objc_alloc_init(ML3ClientImportResult);
  }

  v11 = v10;

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __53__ML3ClientImportSession_removeItemsReturningResult___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to the remote service. err=%{public}@", &v6, 0x16u);
  }
}

void __53__ML3ClientImportSession_removeItemsReturningResult___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Finished removing items. err=%{public}@", &v10, 0x16u);
  }

  v9 = v5;
  if (!v5)
  {
    v9 = objc_alloc_init(ML3ClientImportResult);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
  if (!v5)
  {
  }
}

- (BOOL)removeItems:(id)a3
{
  v3 = [(ML3ClientImportSession *)self removeItemsReturningResult:a3];
  v4 = [v3 success];

  return v4;
}

- (id)updateItemsReturningResult:(id)a3
{
  v5 = a3;
  if (!self->_hasActiveSession)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"ML3ClientImportSession.m" lineNumber:126 description:@"updateItems cannot be called without an active session"];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13032;
  v20 = __Block_byref_object_dispose__13033;
  v21 = 0;
  v6 = [(ML3ClientImportSession *)self _xpcClientConnection];
  v7 = v6;
  if (v6)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__ML3ClientImportSession_updateItemsReturningResult___block_invoke;
    v15[3] = &unk_278765828;
    v15[4] = self;
    v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v15];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__ML3ClientImportSession_updateItemsReturningResult___block_invoke_15;
    v14[3] = &unk_2787633F0;
    v14[4] = self;
    v14[5] = &v16;
    [v8 updateItems:v5 completion:v14];
  }

  v9 = v17[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = objc_alloc_init(ML3ClientImportResult);
  }

  v11 = v10;

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __53__ML3ClientImportSession_updateItemsReturningResult___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to the remote service. err=%{public}@", &v6, 0x16u);
  }
}

void __53__ML3ClientImportSession_updateItemsReturningResult___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Finished updating items. err=%{public}@", &v10, 0x16u);
  }

  v9 = v5;
  if (!v5)
  {
    v9 = objc_alloc_init(ML3ClientImportResult);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
  if (!v5)
  {
  }
}

- (BOOL)updateItems:(id)a3
{
  v3 = [(ML3ClientImportSession *)self updateItemsReturningResult:a3];
  v4 = [v3 success];

  return v4;
}

- (id)addItemsReturningResult:(id)a3
{
  v5 = a3;
  if (!self->_hasActiveSession)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"ML3ClientImportSession.m" lineNumber:104 description:@"addItems cannot be called without an active session"];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13032;
  v20 = __Block_byref_object_dispose__13033;
  v21 = 0;
  v6 = [(ML3ClientImportSession *)self _xpcClientConnection];
  v7 = v6;
  if (v6)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __50__ML3ClientImportSession_addItemsReturningResult___block_invoke;
    v15[3] = &unk_278765828;
    v15[4] = self;
    v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v15];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__ML3ClientImportSession_addItemsReturningResult___block_invoke_9;
    v14[3] = &unk_2787633F0;
    v14[4] = self;
    v14[5] = &v16;
    [v8 addItems:v5 completion:v14];
  }

  v9 = v17[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = objc_alloc_init(ML3ClientImportResult);
  }

  v11 = v10;

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __50__ML3ClientImportSession_addItemsReturningResult___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to the remote service. err=%{public}@", &v6, 0x16u);
  }
}

void __50__ML3ClientImportSession_addItemsReturningResult___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Finished adding items. err=%{public}@", &v10, 0x16u);
  }

  v9 = v5;
  if (!v5)
  {
    v9 = objc_alloc_init(ML3ClientImportResult);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
  if (!v5)
  {
  }
}

- (BOOL)addItems:(id)a3
{
  v3 = [(ML3ClientImportSession *)self addItemsReturningResult:a3];
  v4 = [v3 success];

  return v4;
}

- (BOOL)cancel
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_ERROR, "%{public}@ Canceling import session", &buf, 0xCu);
  }

  if (self->_hasActiveSession)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v12 = 0x2020000000;
    v13 = 0;
    v4 = [(ML3ClientImportSession *)self _xpcClientConnection];
    v5 = v4;
    if (v4)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __32__ML3ClientImportSession_cancel__block_invoke;
      v10[3] = &unk_278765828;
      v10[4] = self;
      v6 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v10];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __32__ML3ClientImportSession_cancel__block_invoke_3;
      v9[3] = &unk_2787649F8;
      v9[4] = self;
      v9[5] = &buf;
      [v6 cancelSessionWithCompletion:v9];
    }

    v7 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

void __32__ML3ClientImportSession_cancel__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to the remote service. err=%{public}@", &v6, 0x16u);
  }
}

void __32__ML3ClientImportSession_cancel__block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Canceled import session. err=%{public}@", &v6, 0x16u);
  }

  *(*(*(a1 + 40) + 8) + 24) = v3 == 0;
  *(*(a1 + 32) + 32) = 0;
}

- (BOOL)finish
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_ERROR, "%{public}@ Finishing import session", &buf, 0xCu);
  }

  if (self->_hasActiveSession)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v12 = 0x2020000000;
    v13 = 0;
    v4 = [(ML3ClientImportSession *)self _xpcClientConnection];
    v5 = v4;
    if (v4)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __32__ML3ClientImportSession_finish__block_invoke;
      v10[3] = &unk_278765828;
      v10[4] = self;
      v6 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v10];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __32__ML3ClientImportSession_finish__block_invoke_2;
      v9[3] = &unk_2787649F8;
      v9[4] = self;
      v9[5] = &buf;
      [v6 endSessionWithCompletion:v9];
    }

    v7 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

void __32__ML3ClientImportSession_finish__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to the remote service. err=%{public}@", &v6, 0x16u);
  }
}

void __32__ML3ClientImportSession_finish__block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Ended import session. err=%{public}@", &v6, 0x16u);
  }

  *(*(*(a1 + 40) + 8) + 24) = v3 == 0;
  *(*(a1 + 32) + 32) = 0;
}

- (BOOL)start
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_ERROR, "%{public}@ Starting import session", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = [(ML3ClientImportSession *)self _xpcClientConnection];
  v5 = v4;
  if (v4)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __31__ML3ClientImportSession_start__block_invoke;
    v11[3] = &unk_278765828;
    v11[4] = self;
    v6 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v11];
    sessionConfiguration = self->_sessionConfiguration;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __31__ML3ClientImportSession_start__block_invoke_1;
    v10[3] = &unk_2787649F8;
    v10[4] = self;
    v10[5] = &buf;
    [v6 beginSessionWithConfiguration:sessionConfiguration completion:v10];
  }

  v8 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  return v8 & 1;
}

void __31__ML3ClientImportSession_start__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to the remote service. err=%{public}@", &v6, 0x16u);
  }
}

void __31__ML3ClientImportSession_start__block_invoke_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Finished starting import session. err=%{public}@", &v6, 0x16u);
  }

  *(*(*(a1 + 40) + 8) + 24) = v3 == 0;
  *(*(a1 + 32) + 32) = *(*(*(a1 + 40) + 8) + 24);
}

- (ML3ClientImportSession)initWithConfiguration:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = ML3ClientImportSession;
  v8 = [(ML3ClientImportSession *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_delegate, a4);
    v10 = [v6 copy];
    sessionConfiguration = v9->_sessionConfiguration;
    v9->_sessionConfiguration = v10;

    v12 = [v6 operationCount];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = 100;
    }

    v14 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:v13];
    progress = v9->_progress;
    v9->_progress = v14;
  }

  return v9;
}

@end