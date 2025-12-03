@interface NPKCompanionViewServiceConnection
- (NPKCompanionViewServiceConnection)init;
- (NPKCompanionViewServiceConnectionDelegate)delegate;
- (id)_errorHandlerWithCompletion:(id)completion;
- (id)_remoteObjectProxyWithFailureHandler:(id)handler;
- (void)dealloc;
- (void)handleCompanionItemSelectionRequestCancelledForRequestIdentifier:(id)identifier;
- (void)handleCompanionItemSelectionRequestFinishedWithRenewalAmount:(id)amount serviceProviderData:(id)data forRequestIdentifier:(id)identifier;
- (void)handleCompanionValueEntryCancelledForRequestIdentifier:(id)identifier;
- (void)handleCompanionValueEntryFinishedWithCurrencyAmount:(id)amount forRequestIdentifier:(id)identifier;
- (void)presentRemotePassItemSelectionViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion;
- (void)presentRemotePassValueEntryViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion;
- (void)remoteService:(id)service didEstablishConnection:(id)connection;
- (void)remoteService:(id)service didInterruptConnection:(id)connection;
- (void)serviceResumed;
- (void)serviceSuspended;
@end

@implementation NPKCompanionViewServiceConnection

- (NPKCompanionViewServiceConnection)init
{
  v9.receiver = self;
  v9.super_class = NPKCompanionViewServiceConnection;
  v2 = [(NPKCompanionViewServiceConnection *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D38348]);
    v4 = NPKCompanionViewServiceConnectionServerProtocolInterface();
    v5 = NPKCompanionViewServiceConnectionClientProtocolInterface();
    v6 = [v3 initWithMachServiceName:@"com.apple.NanoPassbook.NPKCompanionViewService.connection.server" remoteObjectInterface:v4 exportedObjectInterface:v5 exportedObject:v2];
    remoteService = v2->_remoteService;
    v2->_remoteService = v6;

    [(PKXPCService *)v2->_remoteService setDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "[NPKCompanionViewServiceConnection dealloc]";
      v10 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: %s, %@", buf, 0x16u);
    }
  }

  v7.receiver = self;
  v7.super_class = NPKCompanionViewServiceConnection;
  [(NPKCompanionViewServiceConnection *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)presentRemotePassValueEntryViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  contactCopy = contact;
  completionCopy = completion;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = _Block_copy(completionCopy);
      *buf = 138412802;
      v28 = requestCopy;
      v29 = 2112;
      v30 = contactCopy;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: Requested to present remote pass value entry view controller for request: %@ contact: %@ with completion: %@", buf, 0x20u);
    }
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __108__NPKCompanionViewServiceConnection_presentRemotePassValueEntryViewControllerForRequest_contact_completion___block_invoke;
  v23[3] = &unk_2799451C8;
  v24 = requestCopy;
  v25 = contactCopy;
  v15 = completionCopy;
  v26 = v15;
  v16 = contactCopy;
  v17 = requestCopy;
  v18 = [(NPKCompanionViewServiceConnection *)self _remoteObjectProxyWithFailureHandler:v23];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __108__NPKCompanionViewServiceConnection_presentRemotePassValueEntryViewControllerForRequest_contact_completion___block_invoke_58;
  v21[3] = &unk_2799451F0;
  v21[4] = self;
  v22 = v15;
  v19 = v15;
  [v18 presentRemotePassValueEntryViewControllerForRequest:v17 contact:v16 completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __108__NPKCompanionViewServiceConnection_presentRemotePassValueEntryViewControllerForRequest_contact_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = _Block_copy(*(a1 + 48));
      v11 = 138413058;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: Error presenting remote pass value entry view controller for request: %@ contact: %@ with completion: %@. Error:%@", &v11, 0x2Au);
    }
  }

  (*(*(a1 + 48) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __108__NPKCompanionViewServiceConnection_presentRemotePassValueEntryViewControllerForRequest_contact_completion___block_invoke_58(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"NO";
      if (a2)
      {
        v7 = @"YES";
      }

      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: Finished presenting remote pass value entry view controller with success: %@", &v10, 0xCu);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)presentRemotePassItemSelectionViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  contactCopy = contact;
  completionCopy = completion;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = _Block_copy(completionCopy);
      *buf = 138412802;
      v28 = requestCopy;
      v29 = 2112;
      v30 = contactCopy;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: Requested to present remote pass item selection view controller for request: %@ contact: %@ with completion: %@", buf, 0x20u);
    }
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __111__NPKCompanionViewServiceConnection_presentRemotePassItemSelectionViewControllerForRequest_contact_completion___block_invoke;
  v23[3] = &unk_2799451C8;
  v24 = requestCopy;
  v25 = contactCopy;
  v15 = completionCopy;
  v26 = v15;
  v16 = contactCopy;
  v17 = requestCopy;
  v18 = [(NPKCompanionViewServiceConnection *)self _remoteObjectProxyWithFailureHandler:v23];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __111__NPKCompanionViewServiceConnection_presentRemotePassItemSelectionViewControllerForRequest_contact_completion___block_invoke_66;
  v21[3] = &unk_2799451F0;
  v21[4] = self;
  v22 = v15;
  v19 = v15;
  [v18 presentRemotePassItemSelectionViewControllerForRequest:v17 contact:v16 completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __111__NPKCompanionViewServiceConnection_presentRemotePassItemSelectionViewControllerForRequest_contact_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = _Block_copy(*(a1 + 48));
      v11 = 138413058;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: Error presenting remote pass item selection view controller for request: %@ contact: %@ with completion: %@. Error:%@", &v11, 0x2Au);
    }
  }

  (*(*(a1 + 48) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __111__NPKCompanionViewServiceConnection_presentRemotePassItemSelectionViewControllerForRequest_contact_completion___block_invoke_66(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"NO";
      if (a2)
      {
        v7 = @"YES";
      }

      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: Finished presenting remote pass item selection view controller with success: %@", &v10, 0xCu);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_remoteObjectProxyWithFailureHandler:(id)handler
{
  remoteService = self->_remoteService;
  v4 = [(NPKCompanionViewServiceConnection *)self _errorHandlerWithCompletion:handler];
  v5 = [(PKXPCService *)remoteService remoteObjectProxyWithErrorHandler:v4];

  return v5;
}

- (id)_errorHandlerWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__NPKCompanionViewServiceConnection__errorHandlerWithCompletion___block_invoke;
  aBlock[3] = &unk_279945218;
  v9 = completionCopy;
  v4 = completionCopy;
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(v5);

  return v6;
}

void __65__NPKCompanionViewServiceConnection__errorHandlerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKCompanionViewService: Error on connection: %@", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleCompanionValueEntryFinishedWithCurrencyAmount:(id)amount forRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  amountCopy = amount;
  delegate = [(NPKCompanionViewServiceConnection *)self delegate];
  [delegate companionViewServiceConnection:self handleCompanionValueEntryDidFinishWithCurrencyAmount:amountCopy forRequestWithIdentifier:identifierCopy];
}

- (void)handleCompanionValueEntryCancelledForRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(NPKCompanionViewServiceConnection *)self delegate];
  [delegate companionViewServiceConnection:self handleCompanionValueEntryDidCancelForRequestIdentifier:identifierCopy];
}

- (void)handleCompanionItemSelectionRequestFinishedWithRenewalAmount:(id)amount serviceProviderData:(id)data forRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataCopy = data;
  amountCopy = amount;
  delegate = [(NPKCompanionViewServiceConnection *)self delegate];
  [delegate companionViewServiceConnection:self handleCompanionItemSelectionDidFinishWithRenewalAmount:amountCopy serviceProviderData:dataCopy forRequestWithIdentifier:identifierCopy];
}

- (void)handleCompanionItemSelectionRequestCancelledForRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(NPKCompanionViewServiceConnection *)self delegate];
  [delegate companionViewServiceConnection:self handleCompanionItemSelectionDidCancelForRequestIdentifier:identifierCopy];
}

- (void)serviceResumed
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: View service connection resumed", v5, 2u);
    }
  }
}

- (void)serviceSuspended
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: View service connection suspended", v5, 2u);
    }
  }
}

- (void)remoteService:(id)service didEstablishConnection:(id)connection
{
  v15 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  connectionCopy = connection;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = serviceCopy;
      v13 = 2112;
      v14 = connectionCopy;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: Remote service (%@) did establish connection (%@)", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)remoteService:(id)service didInterruptConnection:(id)connection
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: NPKCompanionViewServiceConnection (%@): XPC connection to daemon was interrupted", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (NPKCompanionViewServiceConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end