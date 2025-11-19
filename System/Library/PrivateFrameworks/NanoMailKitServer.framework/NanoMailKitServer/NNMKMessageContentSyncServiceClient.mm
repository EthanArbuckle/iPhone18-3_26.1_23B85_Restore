@interface NNMKMessageContentSyncServiceClient
- (NNMKMessageContentSyncServiceClient)initWithQueue:(id)a3;
- (NNMKMessageContentSyncServiceClientDelegate)delegate;
- (void)readProtobufData:(id)a3 type:(unint64_t)a4;
@end

@implementation NNMKMessageContentSyncServiceClient

- (NNMKMessageContentSyncServiceClient)initWithQueue:(id)a3
{
  v4.receiver = self;
  v4.super_class = NNMKMessageContentSyncServiceClient;
  return [(NNMKSyncServiceEndpoint *)&v4 initWithIDSServiceName:@"com.apple.private.alloy.mail.sync.content" queue:a3];
}

- (void)readProtobufData:(id)a3 type:(unint64_t)a4
{
  v8 = a3;
  switch(a4)
  {
    case 3uLL:
      v6 = [[NNMKProtoInitialContentSyncCompletedNotification alloc] initWithData:v8];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained messageContentSyncServiceClient:self didNotifyInitialContentSyncCompleted:v6];
      break;
    case 2uLL:
      v6 = [[NNMKProtoAttachmentSync alloc] initWithData:v8];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained messageContentSyncServiceClient:self didSyncAttachment:v6];
      break;
    case 1uLL:
      v6 = [[NNMKProtoMessageContentSync alloc] initWithData:v8];
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