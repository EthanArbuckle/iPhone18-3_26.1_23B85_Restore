@interface NNMKFetchesSyncServiceClient
- (NNMKFetchesSyncServiceClient)initWithQueue:(id)queue;
- (NNMKFetchesSyncServiceClientDelegate)delegate;
- (id)notifyCompanionAboutWebKitStatus:(id)status;
- (id)notifyInitialSyncFinished:(id)finished;
- (id)requestContent:(id)content highPriority:(BOOL)priority;
- (id)requestFetch:(id)fetch;
- (id)requestFullSync:(id)sync;
- (id)requestHaltSync:(id)sync;
- (id)requestMoreMessagesInBatch:(id)batch;
- (void)failedSendingProtobufWithIDSIdentifier:(id)identifier errorCode:(int64_t)code;
- (void)readProtobufData:(id)data type:(unint64_t)type;
- (void)requestMoreMessagesForConversation:(id)conversation;
- (void)successfullySentProtobufWithIDSIdentifier:(id)identifier;
@end

@implementation NNMKFetchesSyncServiceClient

- (NNMKFetchesSyncServiceClient)initWithQueue:(id)queue
{
  v4.receiver = self;
  v4.super_class = NNMKFetchesSyncServiceClient;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.fetches" queue:queue];
}

- (id)requestFetch:(id)fetch
{
  data = [fetch data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:10 priority:200 timeout:1 allowCloudDelivery:20.0];

  return v5;
}

- (id)requestMoreMessagesInBatch:(id)batch
{
  data = [batch data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:9 priority:200 timeoutCategory:2 allowCloudDelivery:1];

  return v5;
}

- (void)requestMoreMessagesForConversation:(id)conversation
{
  v4 = MEMORY[0x277CCACA8];
  conversationCopy = conversation;
  conversationId = [conversationCopy conversationId];
  beforeDateReceived = [conversationCopy beforeDateReceived];
  v10 = [v4 stringWithFormat:@"%lu-%@-%@", 3, conversationId, beforeDateReceived];

  data = [conversationCopy data];

  v9 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:3 priority:200 repeatPreventionId:v10 timeoutCategory:2 allowCloudDelivery:1];
}

- (id)requestContent:(id)content highPriority:(BOOL)priority
{
  v5 = MEMORY[0x277CCACA8];
  contentCopy = content;
  highPriority = [contentCopy highPriority];
  messageId = [contentCopy messageId];
  v9 = [v5 stringWithFormat:@"%lu-%d-%@", 4, highPriority, messageId];

  data = [contentCopy data];

  v11 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:4 priority:200 repeatPreventionId:v9 timeoutCategory:0 allowCloudDelivery:1];

  return v11;
}

- (id)requestFullSync:(id)sync
{
  data = [sync data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:5 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (id)requestHaltSync:(id)sync
{
  data = [sync data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:8 priority:200 timeoutCategory:0 allowCloudDelivery:0];

  return v5;
}

- (id)notifyInitialSyncFinished:(id)finished
{
  data = [finished data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:6 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (id)notifyCompanionAboutWebKitStatus:(id)status
{
  data = [status data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:11 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (void)successfullySentProtobufWithIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fetchesSyncServiceClient:self didSendProtobufSuccessfullyWithIDSIdentifier:identifierCopy];
}

- (void)failedSendingProtobufWithIDSIdentifier:(id)identifier errorCode:(int64_t)code
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fetchesSyncServiceClient:self didFailSendingProtobufWithIDSIdentifier:identifierCopy errorCode:code];
}

- (void)readProtobufData:(id)data type:(unint64_t)type
{
  dataCopy = data;
  if (type <= 3)
  {
    if (type == 1)
    {
      v6 = [[NNMKProtoPrepareForFullSyncRequest alloc] initWithData:dataCopy];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained fetchesSyncServiceClient:self didRequestPrepareForFullSync:v6];
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_13;
      }

      v6 = [[NNMKProtoErrorDownloadingContentForMessageWarning alloc] initWithData:dataCopy];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained fetchesSyncServiceClient:self didWarnErrorDownloadingContentForMessage:v6];
    }
  }

  else
  {
    switch(type)
    {
      case 4uLL:
        v6 = [[NNMKProtoOldMessagesAvailableNotification alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained fetchesSyncServiceClient:self didNotifyOldMessagesAvailable:v6];
        break;
      case 5uLL:
        v6 = [[NNMKProtoFetchRequestCompletedNotification alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained fetchesSyncServiceClient:self didNotifyFetchRequestCompleted:v6];
        break;
      case 6uLL:
        v6 = [[NNMKProtoComposedMessageSendingProgressReport alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained fetchesSyncServiceClient:self didReportComposedMessageSendingProgress:v6];
        break;
      default:
        goto LABEL_13;
    }
  }

LABEL_13:
}

- (NNMKFetchesSyncServiceClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end