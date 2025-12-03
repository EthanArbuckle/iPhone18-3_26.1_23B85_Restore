@interface NNMKMessagesSyncServiceServer
- (NNMKMessagesSyncServiceServer)initWithQueue:(id)queue;
- (NNMKMessagesSyncServiceServerDelegate)delegate;
- (id)addMessages:(id)messages notificationPriority:(BOOL)priority;
- (id)deleteMessages:(id)messages notificationPriority:(BOOL)priority;
- (id)notifyInitialMessageSyncFailed:(id)failed;
- (id)sendBatchedFetchResult:(id)result;
- (id)sendBatchedInitialMessagesSync:(id)sync;
- (id)sendCoalescedBatchedFetchResult:(id)result;
- (id)sendInitialMessagesSync:(id)sync;
- (id)sendMoreMessages:(id)messages;
- (id)sendMoreMessagesForConversation:(id)conversation;
- (id)updateMailboxSelection:(id)selection;
- (id)updateMessagesStatus:(id)status notificationPriority:(BOOL)priority;
- (void)connectivityChanged;
- (void)failedSendingProtobufWithIDSIdentifier:(id)identifier errorCode:(int64_t)code;
- (void)readProtobufData:(id)data type:(unint64_t)type;
- (void)readResourceAtURL:(id)l metadata:(id)metadata;
- (void)spaceBecameAvailable;
- (void)successfullySentProtobufWithIDSIdentifier:(id)identifier;
@end

@implementation NNMKMessagesSyncServiceServer

- (NNMKMessagesSyncServiceServer)initWithQueue:(id)queue
{
  v4.receiver = self;
  v4.super_class = NNMKMessagesSyncServiceServer;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.sync.messages" queue:queue];
}

- (id)updateMessagesStatus:(id)status notificationPriority:(BOOL)priority
{
  if (priority)
  {
    v5 = 300;
  }

  else
  {
    v5 = 200;
  }

  data = [status data];
  v7 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:1 priority:v5 timeoutCategory:0 allowCloudDelivery:0];

  return v7;
}

- (id)deleteMessages:(id)messages notificationPriority:(BOOL)priority
{
  if (priority)
  {
    v5 = 300;
  }

  else
  {
    v5 = 200;
  }

  data = [messages data];
  v7 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:2 priority:v5 timeoutCategory:0 allowCloudDelivery:0];

  return v7;
}

- (id)addMessages:(id)messages notificationPriority:(BOOL)priority
{
  if (priority)
  {
    v5 = 300;
  }

  else
  {
    v5 = 200;
  }

  data = [messages data];
  v7 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:3 priority:v5 timeoutCategory:1 allowCloudDelivery:0];

  return v7;
}

- (id)sendInitialMessagesSync:(id)sync
{
  data = [sync data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:4 priority:200 timeoutCategory:1 allowCloudDelivery:1];

  return v5;
}

- (id)notifyInitialMessageSyncFailed:(id)failed
{
  data = [failed data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:11 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (id)sendBatchedInitialMessagesSync:(id)sync
{
  data = [sync data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:9 priority:200 timeoutCategory:1 allowCloudDelivery:1];

  return v5;
}

- (id)sendMoreMessages:(id)messages
{
  data = [messages data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:5 priority:200 timeoutCategory:1 allowCloudDelivery:1];

  return v5;
}

- (id)sendMoreMessagesForConversation:(id)conversation
{
  data = [conversation data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:6 priority:200 timeoutCategory:1 allowCloudDelivery:1];

  return v5;
}

- (id)sendBatchedFetchResult:(id)result
{
  data = [result data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:7 priority:200 timeoutCategory:1 allowCloudDelivery:1];

  return v5;
}

- (id)sendCoalescedBatchedFetchResult:(id)result
{
  data = [result data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:10 priority:200 timeoutCategory:2 allowCloudDelivery:1];

  return v5;
}

- (id)updateMailboxSelection:(id)selection
{
  data = [selection data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:8 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (void)successfullySentProtobufWithIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messagesSyncServiceServer:self didSendProtobufSuccessfullyWithIDSIdentifier:identifierCopy];
}

- (void)failedSendingProtobufWithIDSIdentifier:(id)identifier errorCode:(int64_t)code
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messagesSyncServiceServer:self didFailSendingProtobufWithIDSIdentifier:identifierCopy errorCode:code];
}

- (void)readProtobufData:(id)data type:(unint64_t)type
{
  dataCopy = data;
  if (type <= 3)
  {
    switch(type)
    {
      case 1uLL:
        v6 = [[NNMKProtoMessageStatusUpdates alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained messagesSyncServiceServer:self didUpdateMessagesStatus:v6];
        break;
      case 2uLL:
        v6 = [[NNMKProtoMessageDeletions alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained messagesSyncServiceServer:self didDeleteMessages:v6];
        break;
      case 3uLL:
        v6 = [[NNMKProtoCompactMessagesRequest alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained messagesSyncServiceServer:self didRequestCompactMessages:v6];
        break;
      default:
        goto LABEL_17;
    }
  }

  else if (type > 5)
  {
    if (type == 6)
    {
      v6 = [[NNMKProtoMailboxSelection alloc] initWithData:dataCopy];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained messagesSyncServiceServer:self didUpdateMailboxSelection:v6];
    }

    else
    {
      if (type != 7)
      {
        goto LABEL_17;
      }

      v6 = [[NNMKProtoMessageMailboxMoves alloc] initWithData:dataCopy];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained messagesSyncServiceServer:self didMoveMessages:v6];
    }
  }

  else if (type == 4)
  {
    v6 = [[NNMKProtoMessagesFilteredOutWarning alloc] initWithData:dataCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained messagesSyncServiceServer:self didWarnMessagesFilteredOut:v6];
  }

  else
  {
    v6 = [[NNMKProtoSendMessageRequest alloc] initWithData:dataCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained messagesSyncServiceServer:self didRequestSendMessage:v6];
  }

LABEL_17:
}

- (void)readResourceAtURL:(id)l metadata:(id)metadata
{
  lCopy = l;
  metadataCopy = metadata;
  v8 = [metadataCopy objectForKeyedSubscript:@"type"];
  unsignedIntValue = [v8 unsignedIntValue];

  v10 = [metadataCopy objectForKeyedSubscript:@"messageId"];

  stringValue = [v10 stringValue];

  if (unsignedIntValue == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained messagesSyncServiceServer:self didRecieveAttachmentsAtURL:lCopy composedMessageId:stringValue];
  }

  else
  {
    v13 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKMessagesSyncServiceServer readResourceAtURL:unsignedIntValue metadata:v13];
    }
  }
}

- (void)spaceBecameAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messagesSyncServiceServerSpaceBecameAvailable:self];
}

- (void)connectivityChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messagesSyncServiceServerConnectivityChanged:self];
}

- (NNMKMessagesSyncServiceServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)readResourceAtURL:(uint64_t)a1 metadata:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_25B19F000, a2, OS_LOG_TYPE_ERROR, "Unknown type: %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end