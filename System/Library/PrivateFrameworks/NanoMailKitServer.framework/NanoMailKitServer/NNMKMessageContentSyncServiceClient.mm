@interface NNMKMessageContentSyncServiceClient
- (NNMKMessageContentSyncServiceClient)initWithQueue:(id)queue;
- (NNMKMessageContentSyncServiceClientDelegate)delegate;
- (void)readProtobufData:(id)data type:(unint64_t)type;
@end

@implementation NNMKMessageContentSyncServiceClient

- (NNMKMessageContentSyncServiceClient)initWithQueue:(id)queue
{
  v4.receiver = self;
  v4.super_class = NNMKMessageContentSyncServiceClient;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.sync.content" queue:queue];
}

- (void)readProtobufData:(id)data type:(unint64_t)type
{
  dataCopy = data;
  switch(type)
  {
    case 3uLL:
      v6 = [[NNMKProtoInitialContentSyncCompletedNotification alloc] initWithData:dataCopy];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained messageContentSyncServiceClient:self didNotifyInitialContentSyncCompleted:v6];
      break;
    case 2uLL:
      v6 = [[NNMKProtoAttachmentSync alloc] initWithData:dataCopy];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained messageContentSyncServiceClient:self didSyncAttachment:v6];
      break;
    case 1uLL:
      v6 = [[NNMKProtoMessageContentSync alloc] initWithData:dataCopy];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained messageContentSyncServiceClient:self didSyncMessageContent:v6];
      break;
    default:
      goto LABEL_8;
  }

LABEL_8:
}

- (NNMKMessageContentSyncServiceClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end