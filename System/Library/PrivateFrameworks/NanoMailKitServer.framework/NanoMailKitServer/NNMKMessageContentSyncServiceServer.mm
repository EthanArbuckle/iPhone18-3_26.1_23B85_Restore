@interface NNMKMessageContentSyncServiceServer
- (NNMKMessageContentSyncServiceServer)initWithQueue:(id)queue;
- (NNMKMessageContentSyncServiceServerDelegate)delegate;
- (id)notifyInitialContentSyncCompleted:(id)completed;
- (id)syncAttachment:(id)attachment notificationPriority:(BOOL)priority userRequested:(BOOL)requested;
- (id)syncMessageContent:(id)content notificationPriority:(BOOL)priority userRequested:(BOOL)requested;
- (void)failedSendingProtobufWithIDSIdentifier:(id)identifier errorCode:(int64_t)code;
- (void)successfullySentProtobufWithIDSIdentifier:(id)identifier;
@end

@implementation NNMKMessageContentSyncServiceServer

- (NNMKMessageContentSyncServiceServer)initWithQueue:(id)queue
{
  v4.receiver = self;
  v4.super_class = NNMKMessageContentSyncServiceServer;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.sync.content" queue:queue];
}

- (id)syncMessageContent:(id)content notificationPriority:(BOOL)priority userRequested:(BOOL)requested
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

  data = [content data];
  requestedCopy = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:1 priority:v9 timeoutCategory:1 allowCloudDelivery:priorityCopy | requestedCopy];

  return requestedCopy;
}

- (id)syncAttachment:(id)attachment notificationPriority:(BOOL)priority userRequested:(BOOL)requested
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

  data = [attachment data];
  requestedCopy = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:2 priority:v9 timeoutCategory:1 allowCloudDelivery:priorityCopy | requestedCopy];

  return requestedCopy;
}

- (id)notifyInitialContentSyncCompleted:(id)completed
{
  data = [completed data];
  v5 = [(NNMKSyncServiceEndpoint *)self sendProtobufData:data type:3 priority:200 timeoutCategory:0 allowCloudDelivery:1];

  return v5;
}

- (void)successfullySentProtobufWithIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messageContentSyncServiceServer:self didSendProtobufSuccessfullyWithIDSIdentifier:identifierCopy];
}

- (void)failedSendingProtobufWithIDSIdentifier:(id)identifier errorCode:(int64_t)code
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messageContentSyncServiceServer:self didFailSendingProtobufWithIDSIdentifier:identifierCopy errorCode:code];
}

- (NNMKMessageContentSyncServiceServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end