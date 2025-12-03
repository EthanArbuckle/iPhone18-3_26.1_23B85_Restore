@interface NNMKMessagesSyncServiceClient
- (NNMKMessagesSyncServiceClient)initWithQueue:(id)queue;
- (NNMKMessagesSyncServiceClientDelegate)delegate;
- (id)deleteMessages:(id)messages;
- (id)moveMessages:(id)messages;
- (id)sendAttachmentAtURL:(id)l forComposedMessageId:(id)id;
- (id)sendMessage:(id)message;
- (id)updateMailboxSelection:(id)selection;
- (id)updateMessagesStatus:(id)status;
- (void)connectivityChanged;
- (void)failedSendingProtobufWithIDSIdentifier:(id)identifier errorCode:(int64_t)code;
- (void)readProtobufData:(id)data type:(unint64_t)type;
- (void)requestCompactMessages:(id)messages;
- (void)successfullySentProtobufWithIDSIdentifier:(id)identifier;
- (void)warnMessagesFilteredOut:(id)out;
@end

@implementation NNMKMessagesSyncServiceClient

- (NNMKMessagesSyncServiceClient)initWithQueue:(id)queue
{
  v4.receiver = self;
  v4.super_class = NNMKMessagesSyncServiceClient;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.sync.messages" queue:queue];
}

- (id)updateMessagesStatus:(id)status
{
  data = [status data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:1 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (id)deleteMessages:(id)messages
{
  data = [messages data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:2 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (id)moveMessages:(id)messages
{
  data = [messages data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:7 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (void)warnMessagesFilteredOut:(id)out
{
  data = [out data];
  v4 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:4 priority:100 timeoutCategory:2 allowCloudDelivery:1];
}

- (void)requestCompactMessages:(id)messages
{
  data = [messages data];
  v4 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:3 priority:100 timeoutCategory:2 allowCloudDelivery:1];
}

- (id)sendMessage:(id)message
{
  messageCopy = message;
  data = [messageCopy data];
  includeAttachments = [messageCopy includeAttachments];

  v7 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:5 priority:200 timeoutCategory:0 allowCloudDelivery:includeAttachments ^ 1u];

  return v7;
}

- (id)sendAttachmentAtURL:(id)l forComposedMessageId:(id)id
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = @"type";
  v13[1] = @"messageId";
  v14[0] = &unk_286C7BE38;
  v14[1] = id;
  v6 = MEMORY[0x277CBEAC0];
  idCopy = id;
  lCopy = l;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:v13 count:2];

  v10 = [(NNMKSyncServiceEndpoint *)self sendResourceAtURL:lCopy metadata:v9 priority:200 timeoutCategory:1];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)updateMailboxSelection:(id)selection
{
  data = [selection data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:6 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (void)successfullySentProtobufWithIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messagesSyncServiceClient:self didSendProtobufSuccessfullyWithIDSIdentifier:identifierCopy];
}

- (void)failedSendingProtobufWithIDSIdentifier:(id)identifier errorCode:(int64_t)code
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messagesSyncServiceClient:self didFailSendingProtobufWithIDSIdentifier:identifierCopy errorCode:code];
}

- (void)connectivityChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messagesSyncServiceClientConnectivityDidChange:self];
}

- (void)readProtobufData:(id)data type:(unint64_t)type
{
  dataCopy = data;
  if (type > 6)
  {
    if (type <= 8)
    {
      if (type != 7)
      {
        v6 = [[NNMKProtoMailboxSelection alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained messagesSyncServiceClient:self didUpdateMailboxSelection:v6];
        goto LABEL_24;
      }

      v6 = objc_alloc_init(NNMKProtoCoalescedBatchedFetchResult);
      v8 = [[NNMKProtoBatchedFetchResult alloc] initWithData:dataCopy];
      [(NNMKProtoMailboxSelection *)v6 addFetchResults:v8];
    }

    else
    {
      if (type == 9)
      {
        v6 = [[NNMKProtoInitialMessagesSyncBatch alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained messagesSyncServiceClient:self didSendInitialMessagesSync:v6];
        goto LABEL_24;
      }

      if (type != 10)
      {
        if (type != 11)
        {
          goto LABEL_25;
        }

        v6 = [[NNMKProtoInitialMessagesSyncFailure alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained messagesSyncServiceClient:self didReceiveInitialMessagesSyncFailure:v6];
        goto LABEL_24;
      }

      v6 = [[NNMKProtoCoalescedBatchedFetchResult alloc] initWithData:dataCopy];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained messagesSyncServiceClient:self didReceivedCoalescedBatchedFetchResult:v6];
    goto LABEL_24;
  }

  if (type <= 2)
  {
    if (type == 1)
    {
      v6 = [[NNMKProtoMessageStatusUpdates alloc] initWithData:dataCopy];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained messagesSyncServiceClient:self didUpdateMessagesStatus:v6];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_25;
      }

      v6 = [[NNMKProtoMessageDeletions alloc] initWithData:dataCopy];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained messagesSyncServiceClient:self didDeleteMessages:v6];
    }
  }

  else
  {
    switch(type)
    {
      case 3uLL:
        v6 = [[NNMKProtoMessageAdditions alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained messagesSyncServiceClient:self didAddMessages:v6];
        break;
      case 5uLL:
        v6 = [[NNMKProtoMoreMessages alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained messagesSyncServiceClient:self didFetchMoreMessages:v6];
        break;
      case 6uLL:
        v6 = [[NNMKProtoMoreMessagesForConversation alloc] initWithData:dataCopy];
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