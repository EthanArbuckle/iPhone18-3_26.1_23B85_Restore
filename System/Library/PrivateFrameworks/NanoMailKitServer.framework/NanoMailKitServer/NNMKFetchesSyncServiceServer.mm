@interface NNMKFetchesSyncServiceServer
- (NNMKFetchesSyncServiceServer)initWithQueue:(id)a3;
- (NNMKFetchesSyncServiceServerDelegate)delegate;
- (id)reportComposedMessageSendingProgress:(id)a3;
- (void)failedSendingProtobufWithIDSIdentifier:(id)a3 errorCode:(int64_t)a4;
- (void)notifyFetchRequestCompleted:(id)a3;
- (void)notifyOldMessagesAvailable:(id)a3;
- (void)readProtobufData:(id)a3 type:(unint64_t)a4;
- (void)requestPrepareForFullSync:(id)a3;
- (void)successfullySentProtobufWithIDSIdentifier:(id)a3;
- (void)warnErrorDownloadingContentForMessage:(id)a3 notificationPriority:(BOOL)a4 userRequested:(BOOL)a5;
@end

@implementation NNMKFetchesSyncServiceServer

- (NNMKFetchesSyncServiceServer)initWithQueue:(id)a3
{
  v4.receiver = self;
  v4.super_class = NNMKFetchesSyncServiceServer;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.fetches" queue:a3];
}

- (void)requestPrepareForFullSync:(id)a3
{
  v5 = [a3 data];
  v4 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v5 type:1 priority:200 timeoutCategory:2 allowCloudDelivery:0];
}

- (void)warnErrorDownloadingContentForMessage:(id)a3 notificationPriority:(BOOL)a4 userRequested:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = 100;
  if (a5)
  {
    v8 = 200;
  }

  if (a4)
  {
    v9 = 300;
  }

  else
  {
    v9 = v8;
  }

  v11 = [a3 data];
  v10 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v11 type:3 priority:v9 timeoutCategory:2 allowCloudDelivery:v6 | v5];
}

- (void)notifyOldMessagesAvailable:(id)a3
{
  v4 = a3;
  v7 = [&unk_286C7BE50 stringValue];
  v5 = [v4 data];

  v6 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v5 type:4 priority:200 repeatPreventionId:v7 timeoutCategory:2 allowCloudDelivery:0];
}

- (void)notifyFetchRequestCompleted:(id)a3
{
  v5 = [a3 data];
  v4 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v5 type:5 priority:200 timeoutCategory:2 allowCloudDelivery:0];
}

- (id)reportComposedMessageSendingProgress:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:6 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (void)successfullySentProtobufWithIDSIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fetchesSyncServiceServer:self didSendProtobufSuccessfullyWithIDSIdentifier:v4];
}

- (void)failedSendingProtobufWithIDSIdentifier:(id)a3 errorCode:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fetchesSyncServiceServer:self didFailSendingProtobufWithIDSIdentifier:v6 errorCode:a4];
}

- (void)readProtobufData:(id)a3 type:(unint64_t)a4
{
  v8 = a3;
  if (a4 > 5)
  {
    if (a4 <= 8)
    {
      if (a4 == 6)
      {
        v6 = [[NNMKProtoInitialSyncFinishedNotification alloc] initWithData:v8];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained fetchesSyncServiceServer:self didNotifyInitialSyncFinished:v6];
      }

      else
      {
        if (a4 != 8)
        {
          goto LABEL_24;
        }

        v6 = [[NNMKProtoHaltSyncRequest alloc] initWithData:v8];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained fetchesSyncServiceServer:self didRequestHaltSync:v6];
      }
    }

    else
    {
      switch(a4)
      {
        case 9uLL:
          v6 = [[NNMKProtoMoreMessagesBatchRequest alloc] initWithData:v8];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained fetchesSyncServiceServer:self didRequestMoreMessagesInBatch:v6];
          break;
        case 0xAuLL:
          v6 = [[NNMKProtoFetchBatchRequest alloc] initWithData:v8];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained fetchesSyncServiceServer:self didRequestFetchInBatch:v6];
          break;
        case 0xBuLL:
          v6 = [[NNMKProtoWebKitStatusNotification alloc] initWithData:v8];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained fetchesSyncServiceServer:self didNotifyAboutWebKitStatus:v6];
          break;
        default:
          goto LABEL_24;
      }
    }
  }

  else if (a4 <= 2)
  {
    if (a4 == 1)
    {
      v6 = [[NNMKProtoFetchRequest alloc] initWithData:v8];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained fetchesSyncServiceServer:self didRequestFetch:v6];
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_24;
      }

      v6 = [[NNMKProtoMoreMessagesRequest alloc] initWithData:v8];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained fetchesSyncServiceServer:self didRequestMoreMessages:v6];
    }
  }

  else if (a4 == 3)
  {
    v6 = [[NNMKProtoMoreMessagesForConversationRequest alloc] initWithData:v8];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained fetchesSyncServiceServer:self didRequestMoreMessagesForConversation:v6];
  }

  else if (a4 == 4)
  {
    v6 = [[NNMKProtoContentRequest alloc] initWithData:v8];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained fetchesSyncServiceServer:self didRequestContent:v6];
  }

  else
  {
    v6 = [[NNMKProtoFullSyncRequest alloc] initWithData:v8];
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