@interface NNMKMessageContentSyncServiceServer
- (NNMKMessageContentSyncServiceServer)initWithQueue:(id)a3;
- (NNMKMessageContentSyncServiceServerDelegate)delegate;
- (id)notifyInitialContentSyncCompleted:(id)a3;
- (id)syncAttachment:(id)a3 notificationPriority:(BOOL)a4 userRequested:(BOOL)a5;
- (id)syncMessageContent:(id)a3 notificationPriority:(BOOL)a4 userRequested:(BOOL)a5;
- (void)failedSendingProtobufWithIDSIdentifier:(id)a3 errorCode:(int64_t)a4;
- (void)successfullySentProtobufWithIDSIdentifier:(id)a3;
@end

@implementation NNMKMessageContentSyncServiceServer

- (NNMKMessageContentSyncServiceServer)initWithQueue:(id)a3
{
  v4.receiver = self;
  v4.super_class = NNMKMessageContentSyncServiceServer;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.sync.content" queue:a3];
}

- (id)syncMessageContent:(id)a3 notificationPriority:(BOOL)a4 userRequested:(BOOL)a5
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

  v10 = [a3 data];
  v11 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v10 type:1 priority:v9 timeoutCategory:1 allowCloudDelivery:v6 | v5];

  return v11;
}

- (id)syncAttachment:(id)a3 notificationPriority:(BOOL)a4 userRequested:(BOOL)a5
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

  v10 = [a3 data];
  v11 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v10 type:2 priority:v9 timeoutCategory:1 allowCloudDelivery:v6 | v5];

  return v11;
}

- (id)notifyInitialContentSyncCompleted:(id)a3
{
  v4 = [a3 data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:v4 type:3 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (void)successfullySentProtobufWithIDSIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messageContentSyncServiceServer:self didSendProtobufSuccessfullyWithIDSIdentifier:v4];
}

- (void)failedSendingProtobufWithIDSIdentifier:(id)a3 errorCode:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messageContentSyncServiceServer:self didFailSendingProtobufWithIDSIdentifier:v6 errorCode:a4];
}

- (NNMKMessageContentSyncServiceServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end