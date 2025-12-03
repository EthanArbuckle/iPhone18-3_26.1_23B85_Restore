@interface NPKCompanionViewServiceConnectionServerService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NPKCompanionViewServiceConnectionServerService)init;
- (NPKCompanionViewServiceConnectionServerServiceDelegate)delegate;
- (void)_addConnection:(id)connection;
- (void)_removeServer:(id)server;
- (void)dealloc;
- (void)handleCompanionItemSelectionRequestDidCancelForRequestIdentifier:(id)identifier;
- (void)handleCompanionItemSelectionRequestFinishedWithRenewalAmount:(id)amount serviceProviderData:(id)data forRequestIdentifier:(id)identifier;
- (void)handleCompanionValueEntryRequestDidCancelForRequestIdentifier:(id)identifier;
- (void)handleCompanionValueEntryRequestFinishedWithCurrencyAmount:(id)amount forRequestIdentifier:(id)identifier;
- (void)viewServiceConnectionServer:(id)server didRequestPresentRemotePassItemSelectionViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion;
- (void)viewServiceConnectionServer:(id)server didRequestPresentRemotePassValueEntryViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion;
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v21 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  xpcListener = self->_xpcListener;
  v9 = pk_Payment_log();
  v10 = v9;
  if (xpcListener == listenerCopy)
  {
    v12 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_Payment_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = connectionCopy;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: Requested new connection:%@", &v19, 0xCu);
      }
    }

    v11 = [(NSXPCListener *)connectionCopy valueForEntitlement:@"com.apple.NanoPassbook.NPKCompanionViewService.client"];
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v11 BOOLValue]& 1) != 0)
    {
      [(NPKCompanionViewServiceConnectionServerService *)self _addConnection:connectionCopy];
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
      v20 = listenerCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: NPKCompanionViewService: Unknown requested connection from listener:%@", &v19, 0xCu);
    }

    goto LABEL_5;
  }

LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)handleCompanionValueEntryRequestFinishedWithCurrencyAmount:(id)amount forRequestIdentifier:(id)identifier
{
  amountCopy = amount;
  identifierCopy = identifier;
  connectionServers = self->_connectionServers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __130__NPKCompanionViewServiceConnectionServerService_handleCompanionValueEntryRequestFinishedWithCurrencyAmount_forRequestIdentifier___block_invoke;
  v11[3] = &unk_2799499F0;
  v12 = amountCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = amountCopy;
  [(NSMutableSet *)connectionServers enumerateObjectsUsingBlock:v11];
}

void __130__NPKCompanionViewServiceConnectionServerService_handleCompanionValueEntryRequestFinishedWithCurrencyAmount_forRequestIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  [v3 handleCompanionValueEntryFinishedWithCurrencyAmount:*(a1 + 32) forRequestIdentifier:*(a1 + 40)];
}

- (void)handleCompanionValueEntryRequestDidCancelForRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  connectionServers = self->_connectionServers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __112__NPKCompanionViewServiceConnectionServerService_handleCompanionValueEntryRequestDidCancelForRequestIdentifier___block_invoke;
  v7[3] = &unk_279949A18;
  v8 = identifierCopy;
  v6 = identifierCopy;
  [(NSMutableSet *)connectionServers enumerateObjectsUsingBlock:v7];
}

void __112__NPKCompanionViewServiceConnectionServerService_handleCompanionValueEntryRequestDidCancelForRequestIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  [v3 handleCompanionValueEntryCancelledForRequestIdentifier:*(a1 + 32)];
}

- (void)handleCompanionItemSelectionRequestFinishedWithRenewalAmount:(id)amount serviceProviderData:(id)data forRequestIdentifier:(id)identifier
{
  amountCopy = amount;
  dataCopy = data;
  identifierCopy = identifier;
  connectionServers = self->_connectionServers;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __152__NPKCompanionViewServiceConnectionServerService_handleCompanionItemSelectionRequestFinishedWithRenewalAmount_serviceProviderData_forRequestIdentifier___block_invoke;
  v15[3] = &unk_279949A40;
  v16 = amountCopy;
  v17 = dataCopy;
  v18 = identifierCopy;
  v12 = identifierCopy;
  v13 = dataCopy;
  v14 = amountCopy;
  [(NSMutableSet *)connectionServers enumerateObjectsUsingBlock:v15];
}

void __152__NPKCompanionViewServiceConnectionServerService_handleCompanionItemSelectionRequestFinishedWithRenewalAmount_serviceProviderData_forRequestIdentifier___block_invoke(void *a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  [v3 handleCompanionItemSelectionRequestFinishedWithRenewalAmount:a1[4] serviceProviderData:a1[5] forRequestIdentifier:a1[6]];
}

- (void)handleCompanionItemSelectionRequestDidCancelForRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  connectionServers = self->_connectionServers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __115__NPKCompanionViewServiceConnectionServerService_handleCompanionItemSelectionRequestDidCancelForRequestIdentifier___block_invoke;
  v7[3] = &unk_279949A18;
  v8 = identifierCopy;
  v6 = identifierCopy;
  [(NSMutableSet *)connectionServers enumerateObjectsUsingBlock:v7];
}

void __115__NPKCompanionViewServiceConnectionServerService_handleCompanionItemSelectionRequestDidCancelForRequestIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  [v3 handleCompanionItemSelectionRequestCancelledForRequestIdentifier:*(a1 + 32)];
}

- (void)_addConnection:(id)connection
{
  v31 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = [(PDXPCService *)[NPKCompanionViewServiceConnectionServer alloc] initWithConnection:connectionCopy];
  [(NPKCompanionViewServiceConnectionServer *)v5 setDelegate:self];
  v6 = NPKCompanionViewServiceConnectionServerProtocolInterface();
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:v5];
  v7 = NPKCompanionViewServiceConnectionClientProtocolInterface();
  [connectionCopy setRemoteObjectInterface:v7];

  objc_initWeak(&location, self);
  objc_initWeak(&from, connectionCopy);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __65__NPKCompanionViewServiceConnectionServerService__addConnection___block_invoke;
  v21[3] = &unk_279945930;
  objc_copyWeak(&v23, &from);
  objc_copyWeak(&v24, &location);
  v8 = v5;
  v22 = v8;
  [connectionCopy setInvalidationHandler:v21];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __65__NPKCompanionViewServiceConnectionServerService__addConnection___block_invoke_7;
  v17 = &unk_279945930;
  objc_copyWeak(&v19, &from);
  objc_copyWeak(&v20, &location);
  v9 = v8;
  v18 = v9;
  [connectionCopy setInterruptionHandler:&v14];
  [(NPKCompanionViewServiceConnectionServerService *)self _addServer:v9, v14, v15, v16, v17];
  [connectionCopy resume];
  v10 = pk_Payment_log();
  LODWORD(v7) = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      processIdentifier = [connectionCopy processIdentifier];
      *buf = 138412546;
      v28 = connectionCopy;
      v29 = 1024;
      v30 = processIdentifier;
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

- (void)_removeServer:(id)server
{
  serverCopy = server;
  connection = [serverCopy connection];
  [connection invalidate];

  [serverCopy clearConnectionReference];
  [(NSMutableSet *)self->_connectionServers removeObject:serverCopy];
}

- (void)viewServiceConnectionServer:(id)server didRequestPresentRemotePassValueEntryViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion
{
  completionCopy = completion;
  contactCopy = contact;
  requestCopy = request;
  delegate = [(NPKCompanionViewServiceConnectionServerService *)self delegate];
  [delegate viewServiceConnectionServerService:self didRequestPresentRemotePassValueEntryViewControllerForRequest:requestCopy contact:contactCopy completion:completionCopy];
}

- (void)viewServiceConnectionServer:(id)server didRequestPresentRemotePassItemSelectionViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion
{
  completionCopy = completion;
  contactCopy = contact;
  requestCopy = request;
  delegate = [(NPKCompanionViewServiceConnectionServerService *)self delegate];
  [delegate viewServiceConnectionServerService:self didRequestPresentRemotePassItemSelectionViewControllerForRequest:requestCopy contact:contactCopy completion:completionCopy];
}

- (NPKCompanionViewServiceConnectionServerServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end