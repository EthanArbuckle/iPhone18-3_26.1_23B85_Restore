@interface NNMKAccountsSyncServiceClient
- (NNMKAccountsSyncServiceClient)initWithQueue:(id)a3;
- (NNMKAccountsSyncServiceClientDelegate)delegate;
- (id)sendAccountAuthenticationStatus:(id)a3;
- (id)updateAccountSourceTypeForAccount:(id)a3;
- (void)failedSendingProtobufWithIDSIdentifier:(id)a3 errorCode:(int64_t)a4;
- (void)readProtobufData:(id)a3 type:(unint64_t)a4;
- (void)successfullySentProtobufWithIDSIdentifier:(id)a3;
@end

@implementation NNMKAccountsSyncServiceClient

- (NNMKAccountsSyncServiceClient)initWithQueue:(id)a3
{
  v4.receiver = self;
  v4.super_class = NNMKAccountsSyncServiceClient;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.sync.accounts" queue:a3];
}

- (id)updateAccountSourceTypeForAccount:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:1 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (id)sendAccountAuthenticationStatus:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:2 priority:200 timeout:1 allowCloudDelivery:60.0];

  return v5;
}

- (void)successfullySentProtobufWithIDSIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained accountsSyncServiceClient:self didSendProtobufSuccessfullyWithIDSIdentifier:v4];
}

- (void)failedSendingProtobufWithIDSIdentifier:(id)a3 errorCode:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained accountsSyncServiceClient:self didFailSendingProtobufWithIDSIdentifier:v6 errorCode:a4];
}

- (void)readProtobufData:(id)a3 type:(unint64_t)a4
{
  v8 = a3;
  if (a4 > 3)
  {
    switch(a4)
    {
      case 4uLL:
        v6 = [[NNMKProtoStandaloneAccountIdentity alloc] initWithData:v8];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained accountsSyncServiceClient:self didReceiveStandaloneAccountIdentity:v6];
        break;
      case 5uLL:
        v6 = [[NNMKProtoAccountAuthenticationStatusRequest alloc] initWithData:v8];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained accountsSyncServiceClient:self didRequestAccountAuthenticationStatus:v6];
        break;
      case 6uLL:
        v6 = [[NNMKProtoVIPSenderList alloc] initWithData:v8];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained accountsSyncServiceClient:self didReceiveVIPList:v6];
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(a4)
    {
      case 1uLL:
        v6 = [[NNMKProtoAccountAdditionOrUpdate alloc] initWithData:v8];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained accountsSyncServiceClient:self didAddOrUpdateAccount:v6];
        break;
      case 2uLL:
        v6 = [[NNMKProtoAccountDeletion alloc] initWithData:v8];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained accountsSyncServiceClient:self didDeleteAccount:v6];
        break;
      case 3uLL:
        v6 = [[NNMKProtoInitialAccountsSync alloc] initWithData:v8];
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