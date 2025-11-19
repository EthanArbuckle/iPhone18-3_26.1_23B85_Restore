@interface NPKCompanionViewServiceConnection
- (NPKCompanionViewServiceConnection)init;
- (NPKCompanionViewServiceConnectionDelegate)delegate;
- (id)_errorHandlerWithCompletion:(id)a3;
- (id)_remoteObjectProxyWithFailureHandler:(id)a3;
- (void)dealloc;
- (void)handleCompanionItemSelectionRequestCancelledForRequestIdentifier:(id)a3;
- (void)handleCompanionItemSelectionRequestFinishedWithRenewalAmount:(id)a3 serviceProviderData:(id)a4 forRequestIdentifier:(id)a5;
- (void)handleCompanionValueEntryCancelledForRequestIdentifier:(id)a3;
- (void)handleCompanionValueEntryFinishedWithCurrencyAmount:(id)a3 forRequestIdentifier:(id)a4;
- (void)presentRemotePassItemSelectionViewControllerForRequest:(id)a3 contact:(id)a4 completion:(id)a5;
- (void)presentRemotePassValueEntryViewControllerForRequest:(id)a3 contact:(id)a4 completion:(id)a5;
- (void)remoteService:(id)a3 didEstablishConnection:(id)a4;
- (void)remoteService:(id)a3 didInterruptConnection:(id)a4;
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
      v11 = self;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: %s, %@", buf, 0x16u);
    }
  }

  v7.receiver = self;
  v7.super_class = NPKCompanionViewServiceConnection;
  [(NPKCompanionViewServiceConnection *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)presentRemotePassValueEntryViewControllerForRequest:(id)a3 contact:(id)a4 completion:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = _Block_copy(v10);
      *buf = 138412802;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: Requested to present remote pass value entry view controller for request: %@ contact: %@ with completion: %@", buf, 0x20u);
    }
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __108__NPKCompanionViewServiceConnection_presentRemotePassValueEntryViewControllerForRequest_contact_completion___block_invoke;
  v23[3] = &unk_2799451C8;
  v24 = v8;
  v25 = v9;
  v15 = v10;
  v26 = v15;
  v16 = v9;
  v17 = v8;
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

- (void)presentRemotePassItemSelectionViewControllerForRequest:(id)a3 contact:(id)a4 completion:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = _Block_copy(v10);
      *buf = 138412802;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: Requested to present remote pass item selection view controller for request: %@ contact: %@ with completion: %@", buf, 0x20u);
    }
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __111__NPKCompanionViewServiceConnection_presentRemotePassItemSelectionViewControllerForRequest_contact_completion___block_invoke;
  v23[3] = &unk_2799451C8;
  v24 = v8;
  v25 = v9;
  v15 = v10;
  v26 = v15;
  v16 = v9;
  v17 = v8;
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

- (id)_remoteObjectProxyWithFailureHandler:(id)a3
{
  remoteService = self->_remoteService;
  v4 = [(NPKCompanionViewServiceConnection *)self _errorHandlerWithCompletion:a3];
  v5 = [(PKXPCService *)remoteService remoteObjectProxyWithErrorHandler:v4];

  return v5;
}

- (id)_errorHandlerWithCompletion:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__NPKCompanionViewServiceConnection__errorHandlerWithCompletion___block_invoke;
  aBlock[3] = &unk_279945218;
  v9 = v3;
  v4 = v3;
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

- (void)handleCompanionValueEntryFinishedWithCurrencyAmount:(id)a3 forRequestIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPKCompanionViewServiceConnection *)self delegate];
  [v8 companionViewServiceConnection:self handleCompanionValueEntryDidFinishWithCurrencyAmount:v7 forRequestWithIdentifier:v6];
}

- (void)handleCompanionValueEntryCancelledForRequestIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NPKCompanionViewServiceConnection *)self delegate];
  [v5 companionViewServiceConnection:self handleCompanionValueEntryDidCancelForRequestIdentifier:v4];
}

- (void)handleCompanionItemSelectionRequestFinishedWithRenewalAmount:(id)a3 serviceProviderData:(id)a4 forRequestIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NPKCompanionViewServiceConnection *)self delegate];
  [v11 companionViewServiceConnection:self handleCompanionItemSelectionDidFinishWithRenewalAmount:v10 serviceProviderData:v9 forRequestWithIdentifier:v8];
}

- (void)handleCompanionItemSelectionRequestCancelledForRequestIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NPKCompanionViewServiceConnection *)self delegate];
  [v5 companionViewServiceConnection:self handleCompanionItemSelectionDidCancelForRequestIdentifier:v4];
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

- (void)remoteService:(id)a3 didEstablishConnection:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKCompanionViewService: Remote service (%@) did establish connection (%@)", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)remoteService:(id)a3 didInterruptConnection:(id)a4
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
      v10 = self;
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