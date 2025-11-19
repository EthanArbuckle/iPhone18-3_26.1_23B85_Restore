@interface NNMKFetchesSyncServiceClient
- (NNMKFetchesSyncServiceClient)initWithQueue:(id)a3;
- (NNMKFetchesSyncServiceClientDelegate)delegate;
- (id)notifyCompanionAboutWebKitStatus:(id)a3;
- (id)notifyInitialSyncFinished:(id)a3;
- (id)requestContent:(id)a3 highPriority:(BOOL)a4;
- (id)requestFetch:(id)a3;
- (id)requestFullSync:(id)a3;
- (id)requestHaltSync:(id)a3;
- (id)requestMoreMessagesInBatch:(id)a3;
- (void)failedSendingProtobufWithIDSIdentifier:(id)a3 errorCode:(int64_t)a4;
- (void)readProtobufData:(id)a3 type:(unint64_t)a4;
- (void)requestMoreMessagesForConversation:(id)a3;
- (void)successfullySentProtobufWithIDSIdentifier:(id)a3;
@end

@implementation NNMKFetchesSyncServiceClient

- (NNMKFetchesSyncServiceClient)initWithQueue:(id)a3
{
  v4.receiver = self;
  v4.super_class = NNMKFetchesSyncServiceClient;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.fetches" queue:a3];
}

- (id)requestFetch:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:10 priority:200 timeout:1 allowCloudDelivery:20.0];

  return v5;
}

- (id)requestMoreMessagesInBatch:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:9 priority:200 timeoutCategory:2 allowCloudDelivery:1];

  return v5;
}

- (void)requestMoreMessagesForConversation:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [v5 conversationId];
  v7 = [v5 beforeDateReceived];
  v10 = [v4 stringWithFormat:@"%lu-%@-%@", 3, v6, v7];

  v8 = [v5 data];

  v9 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v8 type:3 priority:200 repeatPreventionId:v10 timeoutCategory:2 allowCloudDelivery:1];
}

- (id)requestContent:(id)a3 highPriority:(BOOL)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [v6 highPriority];
  v8 = [v6 messageId];
  v9 = [v5 stringWithFormat:@"%lu-%d-%@", 4, v7, v8];

  v10 = [v6 data];

  v11 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v10 type:4 priority:200 repeatPreventionId:v9 timeoutCategory:0 allowCloudDelivery:1];

  return v11;
}

- (id)requestFullSync:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:5 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (id)requestHaltSync:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:8 priority:200 timeoutCategory:0 allowCloudDelivery:0];

  return v5;
}

- (id)notifyInitialSyncFinished:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:6 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (id)notifyCompanionAboutWebKitStatus:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:11 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (void)successfullySentProtobufWithIDSIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fetchesSyncServiceClient:self didSendProtobufSuccessfullyWithIDSIdentifier:v4];
}

- (void)failedSendingProtobufWithIDSIdentifier:(id)a3 errorCode:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fetchesSyncServiceClient:self didFailSendingProtobufWithIDSIdentifier:v6 errorCode:a4];
}

- (void)readProtobufData:(id)a3 type:(unint64_t)a4
{
  v8 = a3;
  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      v6 = [[NNMKProtoPrepareForFullSyncRequest alloc] initWithData:v8];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained fetchesSyncServiceClient:self didRequestPrepareForFullSync:v6];
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_13;
      }

      v6 = [[NNMKProtoErrorDownloadingContentForMessageWarning alloc] initWithData:v8];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained fetchesSyncServiceClient:self didWarnErrorDownloadingContentForMessage:v6];
    }
  }

  else
  {
    switch(a4)
    {
      case 4uLL:
        v6 = [[NNMKProtoOldMessagesAvailableNotification alloc] initWithData:v8];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained fetchesSyncServiceClient:self didNotifyOldMessagesAvailable:v6];
        break;
      case 5uLL:
        v6 = [[NNMKProtoFetchRequestCompletedNotification alloc] initWithData:v8];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained fetchesSyncServiceClient:self didNotifyFetchRequestCompleted:v6];
        break;
      case 6uLL:
        v6 = [[NNMKProtoComposedMessageSendingProgressReport alloc] initWithData:v8];
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