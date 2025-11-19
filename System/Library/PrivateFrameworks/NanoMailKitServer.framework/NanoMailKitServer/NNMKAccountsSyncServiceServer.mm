@interface NNMKAccountsSyncServiceServer
- (NNMKAccountsSyncServiceServer)initWithQueue:(id)a3;
- (NNMKAccountsSyncServiceServerDelegate)delegate;
- (id)addOrUpdateAccount:(id)a3;
- (id)deleteAccount:(id)a3;
- (id)requestWatchAccountsStatus:(id)a3;
- (id)sendInitialAccountsSync:(id)a3;
- (id)sendStandaloneAccountIdentity:(id)a3;
- (id)syncVIPList:(id)a3;
- (void)failedSendingProtobufWithIDSIdentifier:(id)a3 errorCode:(int64_t)a4;
- (void)readProtobufData:(id)a3 type:(unint64_t)a4;
- (void)successfullySentProtobufWithIDSIdentifier:(id)a3;
@end

@implementation NNMKAccountsSyncServiceServer

- (NNMKAccountsSyncServiceServer)initWithQueue:(id)a3
{
  v4.receiver = self;
  v4.super_class = NNMKAccountsSyncServiceServer;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.sync.accounts" queue:a3];
}

- (id)addOrUpdateAccount:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:1 priority:200 timeoutCategory:1 allowCloudDelivery:1];

  return v5;
}

- (id)deleteAccount:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:2 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (id)sendInitialAccountsSync:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:3 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (id)sendStandaloneAccountIdentity:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:4 priority:200 timeout:1 allowCloudDelivery:60.0];

  return v5;
}

- (id)requestWatchAccountsStatus:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:5 priority:200 timeout:1 allowCloudDelivery:60.0];

  return v5;
}

- (id)syncVIPList:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:6 priority:200 timeoutCategory:1 allowCloudDelivery:1];

  return v5;
}

- (void)successfullySentProtobufWithIDSIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained accountsSyncServiceServer:self didSendProtobufSuccessfullyWithIDSIdentifier:v4];
}

- (void)failedSendingProtobufWithIDSIdentifier:(id)a3 errorCode:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained accountsSyncServiceServer:self didFailSendingProtobufWithIDSIdentifier:v6 errorCode:a4];
}

- (void)readProtobufData:(id)a3 type:(unint64_t)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4 == 2)
  {
    v22 = self;
    v9 = [[NNMKProtoAccountAuthenticationStatus alloc] initWithData:v6];
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = v9;
    v10 = [(NNMKProtoAccountAuthenticationStatus *)v9 accountsStatus];
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = [v15 accountId];

          if (v16)
          {
            v17 = [v15 accountId];
            [v8 setObject:v15 forKeyedSubscript:v17];
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

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    WeakRetained = objc_loadWeakRetained(&v22->_delegate);
    v7 = v21;
    [(NNMKProtoAccountSourceType *)v21 requestTime];
    [WeakRetained accountsSyncServiceServer:v22 didReceivedAccountAuthenticationStatus:v8 requestTime:?];

    goto LABEL_16;
  }

  if (a4 == 1)
  {
    v7 = [[NNMKProtoAccountSourceType alloc] initWithData:v6];
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