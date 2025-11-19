@interface NPKTransientAssertion
- (NPKTransientAssertion)initWithQueue:(id)a3;
- (id)_remoteObjectProxyWithErrorHandler:(id)a3;
- (void)_handleInterruption;
- (void)_handleInvalidation;
- (void)_resyncState;
- (void)dealloc;
- (void)didEnterFieldForPassesWithUniqueIDs:(id)a3;
- (void)handleDelegatedDoublePressEventWithSource:(unint64_t)a3;
- (void)handleTerminalAuthenticationRequestedForPassWithUniqueID:(id)a3;
- (void)invalidate;
@end

@implementation NPKTransientAssertion

- (NPKTransientAssertion)initWithQueue:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = NPKTransientAssertion;
  v5 = [(NPKTransientAssertion *)&v16 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.NPKTransientPassServer" options:4096];
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286D44C88];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286D03FE0];
    [(NSXPCConnection *)v6 setExportedInterface:v8];
    [(NSXPCConnection *)v6 setExportedObject:v5];
    objc_initWeak(&location, v5);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __39__NPKTransientAssertion_initWithQueue___block_invoke;
    v13[3] = &unk_279945030;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v6 setInterruptionHandler:v13];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__NPKTransientAssertion_initWithQueue___block_invoke_120;
    v11[3] = &unk_279945030;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v6 setInvalidationHandler:v11];
    if (!v4)
    {
      v4 = dispatch_queue_create("NPKTransientAssertionQueue", 0);
    }

    [(NSXPCConnection *)v6 _setQueue:v4];
    [(NSXPCConnection *)v6 resume];
    xpcConnection = v5->_xpcConnection;
    v5->_xpcConnection = v6;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __39__NPKTransientAssertion_initWithQueue___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = pk_Payment_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = pk_Payment_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 138412290;
        *&v7[4] = objc_opt_class();
        v5 = *&v7[4];
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: %@: Transient assertion connection interrupted", v7, 0xCu);
      }
    }

    [WeakRetained _handleInterruption];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __39__NPKTransientAssertion_initWithQueue___block_invoke_120(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = pk_Payment_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = pk_Payment_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 138412290;
        *&v7[4] = objc_opt_class();
        v5 = *&v7[4];
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: %@: Transient assertion connection invalidated", v7, 0xCu);
      }
    }

    [WeakRetained _handleInvalidation];
    [WeakRetained setXpcConnection:0];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection setExportedObject:0];
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;

  v4.receiver = self;
  v4.super_class = NPKTransientAssertion;
  [(NPKTransientAssertion *)&v4 dealloc];
}

- (id)_remoteObjectProxyWithErrorHandler:(id)a3
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_xpcConnection)
  {
    objc_initWeak(location, self);
    xpcConnection = self->_xpcConnection;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__NPKTransientAssertion__remoteObjectProxyWithErrorHandler___block_invoke;
    v16[3] = &unk_279945A70;
    objc_copyWeak(&v18, location);
    v17 = v4;
    v6 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = pk_Payment_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = pk_Payment_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = objc_opt_class();
        v10 = *(location + 4);
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: %@: XPC connection is nil", location, 0xCu);
      }
    }

    if (v4)
    {
      v11 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v20 = @"XPC connection is nil";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v13 = [v11 errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:v12];

      (*(v4 + 2))(v4, v13);
    }

    v6 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

void __60__NPKTransientAssertion__remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412546;
        v12 = objc_opt_class();
        v13 = 2112;
        v14 = v3;
        v8 = v12;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: %@: Couldn't get remote object proxy. Error: %@", &v11, 0x16u);
      }
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection invalidate];
    xpcConnection = self->_xpcConnection;
  }

  self->_xpcConnection = 0;
}

- (void)handleDelegatedDoublePressEventWithSource:(unint64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[NPKTransientAssertion handleDelegatedDoublePressEventWithSource:]";
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: Subclasses to implement %s", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleTerminalAuthenticationRequestedForPassWithUniqueID:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[NPKTransientAssertion handleTerminalAuthenticationRequestedForPassWithUniqueID:]";
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: Subclasses to implement %s", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didEnterFieldForPassesWithUniqueIDs:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[NPKTransientAssertion didEnterFieldForPassesWithUniqueIDs:]";
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: Subclasses to implement %s", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resyncState
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[NPKTransientAssertion _resyncState]";
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: Subclasses to implement %s", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleInterruption
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[NPKTransientAssertion _handleInterruption]";
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: Subclasses to implement %s", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleInvalidation
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[NPKTransientAssertion _handleInvalidation]";
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: Subclasses to implement %s", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end