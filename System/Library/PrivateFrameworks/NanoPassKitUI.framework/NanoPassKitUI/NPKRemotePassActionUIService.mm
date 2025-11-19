@interface NPKRemotePassActionUIService
- (NPKCompanionViewServiceConnection)connection;
- (NPKRemotePassActionUIServiceDelegate)delegate;
- (void)companionViewServiceConnection:(id)a3 handleCompanionItemSelectionDidCancelForRequestIdentifier:(id)a4;
- (void)companionViewServiceConnection:(id)a3 handleCompanionItemSelectionDidFinishWithRenewalAmount:(id)a4 serviceProviderData:(id)a5 forRequestWithIdentifier:(id)a6;
- (void)companionViewServiceConnection:(id)a3 handleCompanionValueEntryDidCancelForRequestIdentifier:(id)a4;
- (void)companionViewServiceConnection:(id)a3 handleCompanionValueEntryDidFinishWithCurrencyAmount:(id)a4 forRequestWithIdentifier:(id)a5;
- (void)presentRemotePassItemSelectionViewControllerForRequest:(id)a3 contact:(id)a4 completion:(id)a5;
- (void)presentRemotePassValueEntryViewControllerForRequest:(id)a3 contact:(id)a4 completion:(id)a5;
@end

@implementation NPKRemotePassActionUIService

- (NPKCompanionViewServiceConnection)connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = objc_alloc_init(MEMORY[0x277D2BA10]);
    v5 = self->_connection;
    self->_connection = v4;

    [(NPKCompanionViewServiceConnection *)self->_connection setDelegate:self];
    connection = self->_connection;
  }

  return connection;
}

- (void)presentRemotePassValueEntryViewControllerForRequest:(id)a3 contact:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_RemotePassAction_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = MEMORY[0x25F868160](v10);
      v17 = 138412802;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_25B64D000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKRemotePassActionUIService: Present remote pass value entry view controller for request: %@ contact: %@ completion: %@", &v17, 0x20u);
    }
  }

  v15 = [(NPKRemotePassActionUIService *)self connection];
  [v15 presentRemotePassValueEntryViewControllerForRequest:v8 contact:v9 completion:v10];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)presentRemotePassItemSelectionViewControllerForRequest:(id)a3 contact:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_RemotePassAction_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = MEMORY[0x25F868160](v10);
      v17 = 138412802;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_25B64D000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKRemotePassActionUIService: Present remote pass value select item controller for request: %@ contact: %@ completion: %@", &v17, 0x20u);
    }
  }

  v15 = [(NPKRemotePassActionUIService *)self connection];
  [v15 presentRemotePassItemSelectionViewControllerForRequest:v8 contact:v9 completion:v10];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)companionViewServiceConnection:(id)a3 handleCompanionValueEntryDidFinishWithCurrencyAmount:(id)a4 forRequestWithIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(NPKRemotePassActionUIService *)self delegate];
  [v9 remotePassActionUIService:self didSelectEnteredValueAmount:v8 forRequestIdentifier:v7];
}

- (void)companionViewServiceConnection:(id)a3 handleCompanionValueEntryDidCancelForRequestIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(NPKRemotePassActionUIService *)self delegate];
  [v6 remotePassActionUIService:self didCancelForRequestIdentifier:v5];
}

- (void)companionViewServiceConnection:(id)a3 handleCompanionItemSelectionDidFinishWithRenewalAmount:(id)a4 serviceProviderData:(id)a5 forRequestWithIdentifier:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(NPKRemotePassActionUIService *)self delegate];
  [v12 remotePassActionUIService:self didSelectItemForRenewalAmount:v11 serviceProviderData:v10 forRequestIdentifier:v9];
}

- (void)companionViewServiceConnection:(id)a3 handleCompanionItemSelectionDidCancelForRequestIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(NPKRemotePassActionUIService *)self delegate];
  [v6 remotePassActionUIService:self didCancelForRequestIdentifier:v5];
}

- (NPKRemotePassActionUIServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end