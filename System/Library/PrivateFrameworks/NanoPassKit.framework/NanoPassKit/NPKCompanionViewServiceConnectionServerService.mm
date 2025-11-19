@interface NPKCompanionViewServiceConnectionServerService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NPKCompanionViewServiceConnectionServerService)init;
- (NPKCompanionViewServiceConnectionServerServiceDelegate)delegate;
- (void)_addConnection:(id)a3;
- (void)_removeServer:(id)a3;
- (void)dealloc;
- (void)handleCompanionItemSelectionRequestDidCancelForRequestIdentifier:(id)a3;
- (void)handleCompanionItemSelectionRequestFinishedWithRenewalAmount:(id)a3 serviceProviderData:(id)a4 forRequestIdentifier:(id)a5;
- (void)handleCompanionValueEntryRequestDidCancelForRequestIdentifier:(id)a3;
- (void)handleCompanionValueEntryRequestFinishedWithCurrencyAmount:(id)a3 forRequestIdentifier:(id)a4;
- (void)viewServiceConnectionServer:(id)a3 didRequestPresentRemotePassItemSelectionViewControllerForRequest:(id)a4 contact:(id)a5 completion:(id)a6;
- (void)viewServiceConnectionServer:(id)a3 didRequestPresentRemotePassValueEntryViewControllerForRequest:(id)a4 contact:(id)a5 completion:(id)a6;
@end

@implementation NPKCompanionViewServiceConnectionServerService

- (NPKCompanionViewServiceConnectionServerService)init
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = NPKCompanionViewServiceConnectionServerService;
  v2 = [(NPKCompanionViewServiceConnectionServerService *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connectionServers = v2->_connectionServers;
    v2->_connectionServers = v3;

    v5 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.NanoPassbook.NPKCompanionViewService.connection.server"];
    [(NSXPCListener *)v5 setDelegate:v2];
    xpcListener = v2->_xpcListener;
    v2->_xpcListener = v5;
    v7 = v5;

    [(NSXPCListener *)v7 resume];
    v8 = pk_Payment_log();
    LODWORD(xpcListener) = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (xpcListener)
    {
      v9 = pk_Payment_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v14 = v2;
        v15 = 2112;
        v16 = @"com.apple.NanoPassbook.NPKCompanionViewService.connection.server";
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: New view service connection listener created:%@ with serviceName:%@", buf, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  [(NSMutableSet *)self->_connectionServers enumerateObjectsUsingBlock:&__block_literal_global_27];
  connectionServers = self->_connectionServers;
  self->_connectionServers = 0;

  v4.receiver = self;
  v4.super_class = NPKCompanionViewServiceConnectionServerService;
  [(NPKCompanionViewServiceConnectionServerService *)&v4 dealloc];
}

void __57__NPKCompanionViewServiceConnectionServerService_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = [v3 connection];
  [v2 invalidate];

  [v3 clearConnectionReference];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  xpcListener = self->_xpcListener;
  v9 = pk_Payment_log();
  v10 = v9;
  if (xpcListener == v6)
  {
    v12 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_Payment_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v7;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: Requested new connection:%@", &v19, 0xCu);
      }
    }

    v11 = [(NSXPCListener *)v7 valueForEntitlement:@"com.apple.NanoPassbook.NPKCompanionViewService.client"];
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v11 BOOLValue]& 1) != 0)
    {
      [(NPKCompanionViewServiceConnectionServerService *)self _addConnection:v7];
      LOBYTE(self) = 1;
      goto LABEL_14;
    }

    v16 = pk_Payment_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v17)
    {
      v18 = pk_Payment_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_ERROR, "Error: NPKCompanionViewService: Client doesn't have required entitlement to establish the connection", &v19, 2u);
      }
    }

LABEL_5:
    LOBYTE(self) = 0;
LABEL_14:

    goto LABEL_15;
  }

  LODWORD(self) = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

  if (self)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: NPKCompanionViewService: Unknown requested connection from listener:%@", &v19, 0xCu);
    }

    goto LABEL_5;
  }

LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)handleCompanionValueEntryRequestFinishedWithCurrencyAmount:(id)a3 forRequestIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  connectionServers = self->_connectionServers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __130__NPKCompanionViewServiceConnectionServerService_handleCompanionValueEntryRequestFinishedWithCurrencyAmount_forRequestIdentifier___block_invoke;
  v11[3] = &unk_2799499F0;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(NSMutableSet *)connectionServers enumerateObjectsUsingBlock:v11];
}

void __130__NPKCompanionViewServiceConnectionServerService_handleCompanionValueEntryRequestFinishedWithCurrencyAmount_forRequestIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  [v3 handleCompanionValueEntryFinishedWithCurrencyAmount:*(a1 + 32) forRequestIdentifier:*(a1 + 40)];
}

- (void)handleCompanionValueEntryRequestDidCancelForRequestIdentifier:(id)a3
{
  v4 = a3;
  connectionServers = self->_connectionServers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __112__NPKCompanionViewServiceConnectionServerService_handleCompanionValueEntryRequestDidCancelForRequestIdentifier___block_invoke;
  v7[3] = &unk_279949A18;
  v8 = v4;
  v6 = v4;
  [(NSMutableSet *)connectionServers enumerateObjectsUsingBlock:v7];
}

void __112__NPKCompanionViewServiceConnectionServerService_handleCompanionValueEntryRequestDidCancelForRequestIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  [v3 handleCompanionValueEntryCancelledForRequestIdentifier:*(a1 + 32)];
}

- (void)handleCompanionItemSelectionRequestFinishedWithRenewalAmount:(id)a3 serviceProviderData:(id)a4 forRequestIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  connectionServers = self->_connectionServers;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __152__NPKCompanionViewServiceConnectionServerService_handleCompanionItemSelectionRequestFinishedWithRenewalAmount_serviceProviderData_forRequestIdentifier___block_invoke;
  v15[3] = &unk_279949A40;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(NSMutableSet *)connectionServers enumerateObjectsUsingBlock:v15];
}

void __152__NPKCompanionViewServiceConnectionServerService_handleCompanionItemSelectionRequestFinishedWithRenewalAmount_serviceProviderData_forRequestIdentifier___block_invoke(void *a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  [v3 handleCompanionItemSelectionRequestFinishedWithRenewalAmount:a1[4] serviceProviderData:a1[5] forRequestIdentifier:a1[6]];
}

- (void)handleCompanionItemSelectionRequestDidCancelForRequestIdentifier:(id)a3
{
  v4 = a3;
  connectionServers = self->_connectionServers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __115__NPKCompanionViewServiceConnectionServerService_handleCompanionItemSelectionRequestDidCancelForRequestIdentifier___block_invoke;
  v7[3] = &unk_279949A18;
  v8 = v4;
  v6 = v4;
  [(NSMutableSet *)connectionServers enumerateObjectsUsingBlock:v7];
}

void __115__NPKCompanionViewServiceConnectionServerService_handleCompanionItemSelectionRequestDidCancelForRequestIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  [v3 handleCompanionItemSelectionRequestCancelledForRequestIdentifier:*(a1 + 32)];
}

- (void)_addConnection:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PDXPCService *)[NPKCompanionViewServiceConnectionServer alloc] initWithConnection:v4];
  [(NPKCompanionViewServiceConnectionServer *)v5 setDelegate:self];
  v6 = NPKCompanionViewServiceConnectionServerProtocolInterface();
  [v4 setExportedInterface:v6];

  [v4 setExportedObject:v5];
  v7 = NPKCompanionViewServiceConnectionClientProtocolInterface();
  [v4 setRemoteObjectInterface:v7];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v4);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __65__NPKCompanionViewServiceConnectionServerService__addConnection___block_invoke;
  v21[3] = &unk_279945930;
  objc_copyWeak(&v23, &from);
  objc_copyWeak(&v24, &location);
  v8 = v5;
  v22 = v8;
  [v4 setInvalidationHandler:v21];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __65__NPKCompanionViewServiceConnectionServerService__addConnection___block_invoke_7;
  v17 = &unk_279945930;
  objc_copyWeak(&v19, &from);
  objc_copyWeak(&v20, &location);
  v9 = v8;
  v18 = v9;
  [v4 setInterruptionHandler:&v14];
  [(NPKCompanionViewServiceConnectionServerService *)self _addServer:v9, v14, v15, v16, v17];
  [v4 resume];
  v10 = pk_Payment_log();
  LODWORD(v7) = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v4 processIdentifier];
      *buf = 138412546;
      v28 = v4;
      v29 = 1024;
      v30 = v12;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: Added new connection:{%@, PID:%d}", buf, 0x12u);
    }
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v13 = *MEMORY[0x277D85DE8];
}

void __65__NPKCompanionViewServiceConnectionServerService__addConnection___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 _removeServer:*(a1 + 32)];
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412802;
      v9 = v3;
      v10 = 2112;
      v11 = WeakRetained;
      v12 = 1024;
      v13 = [WeakRetained processIdentifier];
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: %@ Connection invalidated:{%@, PID:%d}", &v8, 0x1Cu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __65__NPKCompanionViewServiceConnectionServerService__addConnection___block_invoke_7(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 _removeServer:*(a1 + 32)];
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412802;
      v9 = v3;
      v10 = 2112;
      v11 = WeakRetained;
      v12 = 1024;
      v13 = [WeakRetained processIdentifier];
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: %@ Connection interrupted:{%@, PID:%d}", &v8, 0x1Cu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_removeServer:(id)a3
{
  v5 = a3;
  v4 = [v5 connection];
  [v4 invalidate];

  [v5 clearConnectionReference];
  [(NSMutableSet *)self->_connectionServers removeObject:v5];
}

- (void)viewServiceConnectionServer:(id)a3 didRequestPresentRemotePassValueEntryViewControllerForRequest:(id)a4 contact:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(NPKCompanionViewServiceConnectionServerService *)self delegate];
  [v12 viewServiceConnectionServerService:self didRequestPresentRemotePassValueEntryViewControllerForRequest:v11 contact:v10 completion:v9];
}

- (void)viewServiceConnectionServer:(id)a3 didRequestPresentRemotePassItemSelectionViewControllerForRequest:(id)a4 contact:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(NPKCompanionViewServiceConnectionServerService *)self delegate];
  [v12 viewServiceConnectionServerService:self didRequestPresentRemotePassItemSelectionViewControllerForRequest:v11 contact:v10 completion:v9];
}

- (NPKCompanionViewServiceConnectionServerServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end