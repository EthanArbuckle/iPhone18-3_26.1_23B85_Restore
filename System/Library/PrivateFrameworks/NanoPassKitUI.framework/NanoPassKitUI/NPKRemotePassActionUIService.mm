@interface NPKRemotePassActionUIService
- (NPKCompanionViewServiceConnection)connection;
- (NPKRemotePassActionUIServiceDelegate)delegate;
- (void)companionViewServiceConnection:(id)connection handleCompanionItemSelectionDidCancelForRequestIdentifier:(id)identifier;
- (void)companionViewServiceConnection:(id)connection handleCompanionItemSelectionDidFinishWithRenewalAmount:(id)amount serviceProviderData:(id)data forRequestWithIdentifier:(id)identifier;
- (void)companionViewServiceConnection:(id)connection handleCompanionValueEntryDidCancelForRequestIdentifier:(id)identifier;
- (void)companionViewServiceConnection:(id)connection handleCompanionValueEntryDidFinishWithCurrencyAmount:(id)amount forRequestWithIdentifier:(id)identifier;
- (void)presentRemotePassItemSelectionViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion;
- (void)presentRemotePassValueEntryViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion;
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

- (void)presentRemotePassValueEntryViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  contactCopy = contact;
  completionCopy = completion;
  v11 = pk_RemotePassAction_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = MEMORY[0x25F868160](completionCopy);
      v17 = 138412802;
      v18 = requestCopy;
      v19 = 2112;
      v20 = contactCopy;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_25B64D000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKRemotePassActionUIService: Present remote pass value entry view controller for request: %@ contact: %@ completion: %@", &v17, 0x20u);
    }
  }

  connection = [(NPKRemotePassActionUIService *)self connection];
  [connection presentRemotePassValueEntryViewControllerForRequest:requestCopy contact:contactCopy completion:completionCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)presentRemotePassItemSelectionViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  contactCopy = contact;
  completionCopy = completion;
  v11 = pk_RemotePassAction_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = MEMORY[0x25F868160](completionCopy);
      v17 = 138412802;
      v18 = requestCopy;
      v19 = 2112;
      v20 = contactCopy;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_25B64D000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKRemotePassActionUIService: Present remote pass value select item controller for request: %@ contact: %@ completion: %@", &v17, 0x20u);
    }
  }

  connection = [(NPKRemotePassActionUIService *)self connection];
  [connection presentRemotePassItemSelectionViewControllerForRequest:requestCopy contact:contactCopy completion:completionCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)companionViewServiceConnection:(id)connection handleCompanionValueEntryDidFinishWithCurrencyAmount:(id)amount forRequestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  amountCopy = amount;
  delegate = [(NPKRemotePassActionUIService *)self delegate];
  [delegate remotePassActionUIService:self didSelectEnteredValueAmount:amountCopy forRequestIdentifier:identifierCopy];
}

- (void)companionViewServiceConnection:(id)connection handleCompanionValueEntryDidCancelForRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(NPKRemotePassActionUIService *)self delegate];
  [delegate remotePassActionUIService:self didCancelForRequestIdentifier:identifierCopy];
}

- (void)companionViewServiceConnection:(id)connection handleCompanionItemSelectionDidFinishWithRenewalAmount:(id)amount serviceProviderData:(id)data forRequestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataCopy = data;
  amountCopy = amount;
  delegate = [(NPKRemotePassActionUIService *)self delegate];
  [delegate remotePassActionUIService:self didSelectItemForRenewalAmount:amountCopy serviceProviderData:dataCopy forRequestIdentifier:identifierCopy];
}

- (void)companionViewServiceConnection:(id)connection handleCompanionItemSelectionDidCancelForRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(NPKRemotePassActionUIService *)self delegate];
  [delegate remotePassActionUIService:self didCancelForRequestIdentifier:identifierCopy];
}

- (NPKRemotePassActionUIServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end