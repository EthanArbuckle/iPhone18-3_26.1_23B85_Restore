@interface NNMKAccountsSyncServiceServer
- (NNMKAccountsSyncServiceServer)initWithQueue:(id)queue;
- (NNMKAccountsSyncServiceServerDelegate)delegate;
- (id)addOrUpdateAccount:(id)account;
- (id)deleteAccount:(id)account;
- (id)requestWatchAccountsStatus:(id)status;
- (id)sendInitialAccountsSync:(id)sync;
- (id)sendStandaloneAccountIdentity:(id)identity;
- (id)syncVIPList:(id)list;
- (void)failedSendingProtobufWithIDSIdentifier:(id)identifier errorCode:(int64_t)code;
- (void)readProtobufData:(id)data type:(unint64_t)type;
- (void)successfullySentProtobufWithIDSIdentifier:(id)identifier;
@end

@implementation NNMKAccountsSyncServiceServer

- (NNMKAccountsSyncServiceServer)initWithQueue:(id)queue
{
  v4.receiver = self;
  v4.super_class = NNMKAccountsSyncServiceServer;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.sync.accounts" queue:queue];
}

- (id)addOrUpdateAccount:(id)account
{
  data = [account data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:1 priority:200 timeoutCategory:1 allowCloudDelivery:1];

  return v5;
}

- (id)deleteAccount:(id)account
{
  data = [account data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:2 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (id)sendInitialAccountsSync:(id)sync
{
  data = [sync data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:3 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (id)sendStandaloneAccountIdentity:(id)identity
{
  data = [identity data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:4 priority:200 timeout:1 allowCloudDelivery:60.0];

  return v5;
}

- (id)requestWatchAccountsStatus:(id)status
{
  data = [status data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:5 priority:200 timeout:1 allowCloudDelivery:60.0];

  return v5;
}

- (id)syncVIPList:(id)list
{
  data = [list data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:6 priority:200 timeoutCategory:1 allowCloudDelivery:1];

  return v5;
}

- (void)successfullySentProtobufWithIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained accountsSyncServiceServer:self didSendProtobufSuccessfullyWithIDSIdentifier:identifierCopy];
}

- (void)failedSendingProtobufWithIDSIdentifier:(id)identifier errorCode:(int64_t)code
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained accountsSyncServiceServer:self didFailSendingProtobufWithIDSIdentifier:identifierCopy errorCode:code];
}

- (void)readProtobufData:(id)data type:(unint64_t)type
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (type == 2)
  {
    selfCopy = self;
    v9 = [[NNMKProtoAccountAuthenticationStatus alloc] initWithData:dataCopy];
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = v9;
    accountsStatus = [(NNMKProtoAccountAuthenticationStatus *)v9 accountsStatus];
    v11 = [accountsStatus countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(accountsStatus);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          accountId = [v15 accountId];

          if (accountId)
          {
            accountId2 = [v15 accountId];
            [v8 setObject:v15 forKeyedSubscript:accountId2];
          }

          else
          {
            v18 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
            {
              [(NNMKAccountsSyncServiceServer *)&buf readProtobufData:v24 type:v18];
            }
          }
        }

        v12 = [accountsStatus countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    v7 = v21;
    [(NNMKProtoAccountSourceType *)v21 requestTime];
    [WeakRetained accountsSyncServiceServer:selfCopy didReceivedAccountAuthenticationStatus:v8 requestTime:?];

    goto LABEL_16;
  }

  if (type == 1)
  {
    v7 = [[NNMKProtoAccountSourceType alloc] initWithData:dataCopy];
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 accountsSyncServiceServer:self didChangeAccountSourceType:v7];
LABEL_16:
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (NNMKAccountsSyncServiceServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)readProtobufData:(os_log_t)log type:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_25B19F000, log, OS_LOG_TYPE_ERROR, "NNMKProtoAccountAuthenticationStatus account does not have account id!", buf, 2u);
}

@end