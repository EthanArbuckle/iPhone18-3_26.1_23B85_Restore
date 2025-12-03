@interface NNMKAccountsSyncServiceClient
- (NNMKAccountsSyncServiceClient)initWithQueue:(id)queue;
- (NNMKAccountsSyncServiceClientDelegate)delegate;
- (id)sendAccountAuthenticationStatus:(id)status;
- (id)updateAccountSourceTypeForAccount:(id)account;
- (void)failedSendingProtobufWithIDSIdentifier:(id)identifier errorCode:(int64_t)code;
- (void)readProtobufData:(id)data type:(unint64_t)type;
- (void)successfullySentProtobufWithIDSIdentifier:(id)identifier;
@end

@implementation NNMKAccountsSyncServiceClient

- (NNMKAccountsSyncServiceClient)initWithQueue:(id)queue
{
  v4.receiver = self;
  v4.super_class = NNMKAccountsSyncServiceClient;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.sync.accounts" queue:queue];
}

- (id)updateAccountSourceTypeForAccount:(id)account
{
  data = [account data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:1 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (id)sendAccountAuthenticationStatus:(id)status
{
  data = [status data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:2 priority:200 timeout:1 allowCloudDelivery:60.0];

  return v5;
}

- (void)successfullySentProtobufWithIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained accountsSyncServiceClient:self didSendProtobufSuccessfullyWithIDSIdentifier:identifierCopy];
}

- (void)failedSendingProtobufWithIDSIdentifier:(id)identifier errorCode:(int64_t)code
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained accountsSyncServiceClient:self didFailSendingProtobufWithIDSIdentifier:identifierCopy errorCode:code];
}

- (void)readProtobufData:(id)data type:(unint64_t)type
{
  dataCopy = data;
  if (type > 3)
  {
    switch(type)
    {
      case 4uLL:
        v6 = [[NNMKProtoStandaloneAccountIdentity alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained accountsSyncServiceClient:self didReceiveStandaloneAccountIdentity:v6];
        break;
      case 5uLL:
        v6 = [[NNMKProtoAccountAuthenticationStatusRequest alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained accountsSyncServiceClient:self didRequestAccountAuthenticationStatus:v6];
        break;
      case 6uLL:
        v6 = [[NNMKProtoVIPSenderList alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained accountsSyncServiceClient:self didReceiveVIPList:v6];
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(type)
    {
      case 1uLL:
        v6 = [[NNMKProtoAccountAdditionOrUpdate alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained accountsSyncServiceClient:self didAddOrUpdateAccount:v6];
        break;
      case 2uLL:
        v6 = [[NNMKProtoAccountDeletion alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained accountsSyncServiceClient:self didDeleteAccount:v6];
        break;
      case 3uLL:
        v6 = [[NNMKProtoInitialAccountsSync alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained accountsSyncServiceClient:self didSyncInitialAccounts:v6];
        break;
      default:
        goto LABEL_15;
    }
  }

LABEL_15:
}

- (NNMKAccountsSyncServiceClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end