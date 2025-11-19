@interface DKDiagnosticService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (DKDiagnosticService)init;
- (void)resume;
@end

@implementation DKDiagnosticService

- (DKDiagnosticService)init
{
  v21 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = DKDiagnosticService;
  v2 = [(DKDiagnosticService *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAE98] serviceListener];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 infoDictionary];

    v7 = [v6 objectForKeyedSubscript:@"NSPrincipalClass"];
    v8 = NSClassFromString(v7);
    principalClass = v2->_principalClass;
    v2->_principalClass = v8;

    v10 = DiagnosticsKitLogHandleForCategory(4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v2->_principalClass;
      *buf = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_248B9D000, v10, OS_LOG_TYPE_DEFAULT, "Principal class: %@ => %@", buf, 0x16u);
    }

    v12 = [MEMORY[0x277CBEB18] array];
    connections = v2->_connections;
    v2->_connections = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)resume
{
  v2 = [(DKDiagnosticService *)self listener];
  [v2 resume];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "[DKDiagnosticService listener:shouldAcceptNewConnection:]";
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
  }

  v9 = [v7 valueForEntitlement:@"com.apple.DiagnosticsKit.diagnosticmanager"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 BOOLValue])
  {
    v10 = [[DKDiagnosticContext alloc] initWithConnection:v7];
    [(DKDiagnosticService *)self principalClass];
    v11 = objc_opt_new();
    v12 = DiagnosticsKitLogHandleForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v11;
      _os_log_impl(&dword_248B9D000, v12, OS_LOG_TYPE_DEFAULT, "Instantiated controller: %@", buf, 0xCu);
    }

    [(DKDiagnosticContext *)v10 setXpcPrincipalObject:v11];
    [v7 setExportedObject:v10];
    v13 = +[DKDiagnosticContext _extensionAuxiliaryVendorProtocol];
    [v7 setExportedInterface:v13];

    v14 = +[DKDiagnosticHostContext _extensionAuxiliaryHostProtocol];
    [v7 setRemoteObjectInterface:v14];

    objc_initWeak(buf, self);
    objc_initWeak(&location, v7);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__DKDiagnosticService_listener_shouldAcceptNewConnection___block_invoke;
    v24[3] = &unk_278F6C260;
    objc_copyWeak(&v25, &location);
    objc_copyWeak(&v26, buf);
    [v7 setInvalidationHandler:v24];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __58__DKDiagnosticService_listener_shouldAcceptNewConnection___block_invoke_10;
    v22 = &unk_278F6C288;
    objc_copyWeak(&v23, &location);
    [v7 setInterruptionHandler:&v19];
    v15 = [(DKDiagnosticService *)self connections:v19];
    [v15 addObject:v7];

    [v7 resume];
    [v11 beginRequestWithDiagnosticContext:v10];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void __58__DKDiagnosticService_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __58__DKDiagnosticService_listener_shouldAcceptNewConnection___block_invoke_cold_1(WeakRetained, v3);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 connections];
  [v5 removeObject:WeakRetained];
}

void __58__DKDiagnosticService_listener_shouldAcceptNewConnection___block_invoke_10(uint64_t a1)
{
  v2 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __58__DKDiagnosticService_listener_shouldAcceptNewConnection___block_invoke_10_cold_1(a1, v2);
  }
}

void __58__DKDiagnosticService_listener_shouldAcceptNewConnection___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248B9D000, a2, OS_LOG_TYPE_ERROR, "Connection invalidated: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __58__DKDiagnosticService_listener_shouldAcceptNewConnection___block_invoke_10_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = 138412290;
  v6 = WeakRetained;
  _os_log_error_impl(&dword_248B9D000, a2, OS_LOG_TYPE_ERROR, "Connection interrupted: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end