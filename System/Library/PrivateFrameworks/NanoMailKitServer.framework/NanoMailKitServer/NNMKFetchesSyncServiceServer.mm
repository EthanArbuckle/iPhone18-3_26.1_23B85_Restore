@interface NNMKFetchesSyncServiceServer
- (NNMKFetchesSyncServiceServer)initWithQueue:(id)queue;
- (NNMKFetchesSyncServiceServerDelegate)delegate;
- (id)reportComposedMessageSendingProgress:(id)progress;
- (void)failedSendingProtobufWithIDSIdentifier:(id)identifier errorCode:(int64_t)code;
- (void)notifyFetchRequestCompleted:(id)completed;
- (void)notifyOldMessagesAvailable:(id)available;
- (void)readProtobufData:(id)data type:(unint64_t)type;
- (void)requestPrepareForFullSync:(id)sync;
- (void)successfullySentProtobufWithIDSIdentifier:(id)identifier;
- (void)warnErrorDownloadingContentForMessage:(id)message notificationPriority:(BOOL)priority userRequested:(BOOL)requested;
@end

@implementation NNMKFetchesSyncServiceServer

- (NNMKFetchesSyncServiceServer)initWithQueue:(id)queue
{
  v4.receiver = self;
  v4.super_class = NNMKFetchesSyncServiceServer;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.fetches" queue:queue];
}

- (void)requestPrepareForFullSync:(id)sync
{
  data = [sync data];
  v4 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:1 priority:200 timeoutCategory:2 allowCloudDelivery:0];
}

- (void)warnErrorDownloadingContentForMessage:(id)message notificationPriority:(BOOL)priority userRequested:(BOOL)requested
{
  requestedCopy = requested;
  priorityCopy = priority;
  v8 = 100;
  if (requested)
  {
    v8 = 200;
  }

  if (priority)
  {
    v9 = 300;
  }

  else
  {
    v9 = v8;
  }

  data = [message data];
  requestedCopy = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:3 priority:v9 timeoutCategory:2 allowCloudDelivery:priorityCopy | requestedCopy];
}

- (void)notifyOldMessagesAvailable:(id)available
{
  availableCopy = available;
  stringValue = [&unk_286C7BE50 stringValue];
  data = [availableCopy data];

  v6 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:4 priority:200 repeatPreventionId:stringValue timeoutCategory:2 allowCloudDelivery:0];
}

- (void)notifyFetchRequestCompleted:(id)completed
{
  data = [completed data];
  v4 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:5 priority:200 timeoutCategory:2 allowCloudDelivery:0];
}

- (id)reportComposedMessageSendingProgress:(id)progress
{
  data = [progress data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:6 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (void)successfullySentProtobufWithIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fetchesSyncServiceServer:self didSendProtobufSuccessfullyWithIDSIdentifier:identifierCopy];
}

- (void)failedSendingProtobufWithIDSIdentifier:(id)identifier errorCode:(int64_t)code
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fetchesSyncServiceServer:self didFailSendingProtobufWithIDSIdentifier:identifierCopy errorCode:code];
}

- (void)readProtobufData:(id)data type:(unint64_t)type
{
  dataCopy = data;
  if (type > 5)
  {
    if (type <= 8)
    {
      if (type == 6)
      {
        v6 = [[NNMKProtoInitialSyncFinishedNotification alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained fetchesSyncServiceServer:self didNotifyInitialSyncFinished:v6];
      }

      else
      {
        if (type != 8)
        {
          goto LABEL_24;
        }

        v6 = [[NNMKProtoHaltSyncRequest alloc] initWithData:dataCopy];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained fetchesSyncServiceServer:self didRequestHaltSync:v6];
      }
    }

    else
    {
      switch(type)
      {
        case 9uLL:
          v6 = [[NNMKProtoMoreMessagesBatchRequest alloc] initWithData:dataCopy];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained fetchesSyncServiceServer:self didRequestMoreMessagesInBatch:v6];
          break;
        case 0xAuLL:
          v6 = [[NNMKProtoFetchBatchRequest alloc] initWithData:dataCopy];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained fetchesSyncServiceServer:self didRequestFetchInBatch:v6];
          break;
        case 0xBuLL:
          v6 = [[NNMKProtoWebKitStatusNotification alloc] initWithData:dataCopy];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained fetchesSyncServiceServer:self didNotifyAboutWebKitStatus:v6];
          break;
        default:
          goto LABEL_24;
      }
    }
  }

  else if (type <= 2)
  {
    if (type == 1)
    {
      v6 = [[NNMKProtoFetchRequest alloc] initWithData:dataCopy];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained fetchesSyncServiceServer:self didRequestFetch:v6];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_24;
      }

      v6 = [[NNMKProtoMoreMessagesRequest alloc] initWithData:dataCopy];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained fetchesSyncServiceServer:self didRequestMoreMessages:v6];
    }
  }

  else if (type == 3)
  {
    v6 = [[NNMKProtoMoreMessagesForConversationRequest alloc] initWithData:dataCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained fetchesSyncServiceServer:self didRequestMoreMessagesForConversation:v6];
  }

  else if (type == 4)
  {
    v6 = [[NNMKProtoContentRequest alloc] initWithData:dataCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained fetchesSyncServiceServer:self didRequestContent:v6];
  }

  else
  {
    v6 = [[NNMKProtoFullSyncRequest alloc] initWithData:dataCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained fetchesSyncServiceServer:self didRequestFullSync:v6];
  }

LABEL_24:
}

- (NNMKFetchesSyncServiceServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end