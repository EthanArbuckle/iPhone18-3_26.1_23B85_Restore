@interface NNMKMessagesSyncServiceClient
- (NNMKMessagesSyncServiceClient)initWithQueue:(id)a3;
- (NNMKMessagesSyncServiceClientDelegate)delegate;
- (id)deleteMessages:(id)a3;
- (id)moveMessages:(id)a3;
- (id)sendAttachmentAtURL:(id)a3 forComposedMessageId:(id)a4;
- (id)sendMessage:(id)a3;
- (id)updateMailboxSelection:(id)a3;
- (id)updateMessagesStatus:(id)a3;
- (void)connectivityChanged;
- (void)failedSendingProtobufWithIDSIdentifier:(id)a3 errorCode:(int64_t)a4;
- (void)readProtobufData:(id)a3 type:(unint64_t)a4;
- (void)requestCompactMessages:(id)a3;
- (void)successfullySentProtobufWithIDSIdentifier:(id)a3;
- (void)warnMessagesFilteredOut:(id)a3;
@end

@implementation NNMKMessagesSyncServiceClient

- (NNMKMessagesSyncServiceClient)initWithQueue:(id)a3
{
  v4.receiver = self;
  v4.super_class = NNMKMessagesSyncServiceClient;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.sync.messages" queue:a3];
}

- (id)updateMessagesStatus:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:1 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (id)deleteMessages:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:2 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (id)moveMessages:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:7 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (void)warnMessagesFilteredOut:(id)a3
{
  v5 = [a3 data];
  v4 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v5 type:4 priority:100 timeoutCategory:2 allowCloudDelivery:1];
}

- (void)requestCompactMessages:(id)a3
{
  v5 = [a3 data];
  v4 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v5 type:3 priority:100 timeoutCategory:2 allowCloudDelivery:1];
}

- (id)sendMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 data];
  v6 = [v4 includeAttachments];

  v7 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v5 type:5 priority:200 timeoutCategory:0 allowCloudDelivery:v6 ^ 1u];

  return v7;
}

- (id)sendAttachmentAtURL:(id)a3 forComposedMessageId:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = @"type";
  v13[1] = @"messageId";
  v14[0] = &unk_286C7BE38;
  v14[1] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:v13 count:2];

  v10 = [(NNMKSyncServiceEndpoint *)self sendResourceAtURL:v8 metadata:v9 priority:200 timeoutCategory:1];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)updateMailboxSelection:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:6 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (void)successfullySentProtobufWithIDSIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messagesSyncServiceClient:self didSendProtobufSuccessfullyWithIDSIdentifier:v4];
}

- (void)failedSendingProtobufWithIDSIdentifier:(id)a3 errorCode:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messagesSyncServiceClient:self didFailSendingProtobufWithIDSIdentifier:v6 errorCode:a4];
}

- (void)connectivityChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messagesSyncServiceClientConnectivityDidChange:self];
}

- (void)readProtobufData:(id)a3 type:(unint64_t)a4
{
  v9 = a3;
  if (a4 > 6)
  {
    if (a4 <= 8)
    {
      if (a4 != 7)
      {
        v6 = [[NNMKProtoMailboxSelection alloc] initWithData:v9];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained messagesSyncServiceClient:self didUpdateMailboxSelection:v6];
        goto LABEL_24;
      }

      v6 = objc_alloc_init(NNMKProtoCoalescedBatchedFetchResult);
      v8 = [[NNMKProtoBatchedFetchResult alloc] initWithData:v9];
      [(NNMKProtoMailboxSelection *)v6 addFetchResults:v8];
    }

    else
    {
      if (a4 == 9)
      {
        v6 = [[NNMKProtoInitialMessagesSyncBatch alloc] initWithData:v9];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained messagesSyncServiceClient:self didSendInitialMessagesSync:v6];
        goto LABEL_24;
      }

      if (a4 != 10)
      {
        if (a4 != 11)
        {
          goto LABEL_25;
        }

        v6 = [[NNMKProtoInitialMessagesSyncFailure alloc] initWithData:v9];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained messagesSyncServiceClient:self didReceiveInitialMessagesSyncFailure:v6];
        goto LABEL_24;
      }

      v6 = [[NNMKProtoCoalescedBatchedFetchResult alloc] initWithData:v9];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained messagesSyncServiceClient:self didReceivedCoalescedBatchedFetchResult:v6];
    goto LABEL_24;
  }

  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      v6 = [[NNMKProtoMessageStatusUpdates alloc] initWithData:v9];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained messagesSyncServiceClient:self didUpdateMessagesStatus:v6];
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_25;
      }

      v6 = [[NNMKProtoMessageDeletions alloc] initWithData:v9];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained messagesSyncServiceClient:self didDeleteMessages:v6];
    }
  }

  else
  {
    switch(a4)
    {
      case 3uLL:
        v6 = [[NNMKProtoMessageAdditions alloc] initWithData:v9];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained messagesSyncServiceClient:self didAddMessages:v6];
        break;
      case 5uLL:
        v6 = [[NNMKProtoMoreMessages alloc] initWithData:v9];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained messagesSyncServiceClient:self didFetchMoreMessages:v6];
        break;
      case 6uLL:
        v6 = [[NNMKProtoMoreMessagesForConversation alloc] initWithData:v9];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained messagesSyncServiceClient:self didFetchMoreMessagesForConversation:v6];
        break;
      default:
        goto LABEL_25;
    }
  }

LABEL_24:

LABEL_25:
}

- (NNMKMessagesSyncServiceClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end