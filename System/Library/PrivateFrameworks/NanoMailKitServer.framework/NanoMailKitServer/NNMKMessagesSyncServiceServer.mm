@interface NNMKMessagesSyncServiceServer
- (NNMKMessagesSyncServiceServer)initWithQueue:(id)a3;
- (NNMKMessagesSyncServiceServerDelegate)delegate;
- (id)addMessages:(id)a3 notificationPriority:(BOOL)a4;
- (id)deleteMessages:(id)a3 notificationPriority:(BOOL)a4;
- (id)notifyInitialMessageSyncFailed:(id)a3;
- (id)sendBatchedFetchResult:(id)a3;
- (id)sendBatchedInitialMessagesSync:(id)a3;
- (id)sendCoalescedBatchedFetchResult:(id)a3;
- (id)sendInitialMessagesSync:(id)a3;
- (id)sendMoreMessages:(id)a3;
- (id)sendMoreMessagesForConversation:(id)a3;
- (id)updateMailboxSelection:(id)a3;
- (id)updateMessagesStatus:(id)a3 notificationPriority:(BOOL)a4;
- (void)connectivityChanged;
- (void)failedSendingProtobufWithIDSIdentifier:(id)a3 errorCode:(int64_t)a4;
- (void)readProtobufData:(id)a3 type:(unint64_t)a4;
- (void)readResourceAtURL:(id)a3 metadata:(id)a4;
- (void)spaceBecameAvailable;
- (void)successfullySentProtobufWithIDSIdentifier:(id)a3;
@end

@implementation NNMKMessagesSyncServiceServer

- (NNMKMessagesSyncServiceServer)initWithQueue:(id)a3
{
  v4.receiver = self;
  v4.super_class = NNMKMessagesSyncServiceServer;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.sync.messages" queue:a3];
}

- (id)updateMessagesStatus:(id)a3 notificationPriority:(BOOL)a4
{
  if (a4)
  {
    v5 = 300;
  }

  else
  {
    v5 = 200;
  }

  v6 = [a3 data];
  v7 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v6 type:1 priority:v5 timeoutCategory:0 allowCloudDelivery:0];

  return v7;
}

- (id)deleteMessages:(id)a3 notificationPriority:(BOOL)a4
{
  if (a4)
  {
    v5 = 300;
  }

  else
  {
    v5 = 200;
  }

  v6 = [a3 data];
  v7 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v6 type:2 priority:v5 timeoutCategory:0 allowCloudDelivery:0];

  return v7;
}

- (id)addMessages:(id)a3 notificationPriority:(BOOL)a4
{
  if (a4)
  {
    v5 = 300;
  }

  else
  {
    v5 = 200;
  }

  v6 = [a3 data];
  v7 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v6 type:3 priority:v5 timeoutCategory:1 allowCloudDelivery:0];

  return v7;
}

- (id)sendInitialMessagesSync:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:4 priority:200 timeoutCategory:1 allowCloudDelivery:1];

  return v5;
}

- (id)notifyInitialMessageSyncFailed:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:11 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (id)sendBatchedInitialMessagesSync:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:9 priority:200 timeoutCategory:1 allowCloudDelivery:1];

  return v5;
}

- (id)sendMoreMessages:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:5 priority:200 timeoutCategory:1 allowCloudDelivery:1];

  return v5;
}

- (id)sendMoreMessagesForConversation:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:6 priority:200 timeoutCategory:1 allowCloudDelivery:1];

  return v5;
}

- (id)sendBatchedFetchResult:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:7 priority:200 timeoutCategory:1 allowCloudDelivery:1];

  return v5;
}

- (id)sendCoalescedBatchedFetchResult:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:10 priority:200 timeoutCategory:2 allowCloudDelivery:1];

  return v5;
}

- (id)updateMailboxSelection:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:8 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (void)successfullySentProtobufWithIDSIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messagesSyncServiceServer:self didSendProtobufSuccessfullyWithIDSIdentifier:v4];
}

- (void)failedSendingProtobufWithIDSIdentifier:(id)a3 errorCode:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messagesSyncServiceServer:self didFailSendingProtobufWithIDSIdentifier:v6 errorCode:a4];
}

- (void)readProtobufData:(id)a3 type:(unint64_t)a4
{
  v8 = a3;
  if (a4 <= 3)
  {
    switch(a4)
    {
      case 1uLL:
        v6 = [[NNMKProtoMessageStatusUpdates alloc] initWithData:v8];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained messagesSyncServiceServer:self didUpdateMessagesStatus:v6];
        break;
      case 2uLL:
        v6 = [[NNMKProtoMessageDeletions alloc] initWithData:v8];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained messagesSyncServiceServer:self didDeleteMessages:v6];
        break;
      case 3uLL:
        v6 = [[NNMKProtoCompactMessagesRequest alloc] initWithData:v8];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained messagesSyncServiceServer:self didRequestCompactMessages:v6];
        break;
      default:
        goto LABEL_17;
    }
  }

  else if (a4 > 5)
  {
    if (a4 == 6)
    {
      v6 = [[NNMKProtoMailboxSelection alloc] initWithData:v8];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained messagesSyncServiceServer:self didUpdateMailboxSelection:v6];
    }

    else
    {
      if (a4 != 7)
      {
        goto LABEL_17;
      }

      v6 = [[NNMKProtoMessageMailboxMoves alloc] initWithData:v8];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained messagesSyncServiceServer:self didMoveMessages:v6];
    }
  }

  else if (a4 == 4)
  {
    v6 = [[NNMKProtoMessagesFilteredOutWarning alloc] initWithData:v8];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained messagesSyncServiceServer:self didWarnMessagesFilteredOut:v6];
  }

  else
  {
    v6 = [[NNMKProtoSendMessageRequest alloc] initWithData:v8];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained messagesSyncServiceServer:self didRequestSendMessage:v6];
  }

LABEL_17:
}

- (void)readResourceAtURL:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"type"];
  v9 = [v8 unsignedIntValue];

  v10 = [v7 objectForKeyedSubscript:@"messageId"];

  v11 = [v10 stringValue];

  if (v9 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained messagesSyncServiceServer:self didRecieveAttachmentsAtURL:v6 composedMessageId:v11];
  }

  else
  {
    v13 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKMessagesSyncServiceServer readResourceAtURL:v9 metadata:v13];
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