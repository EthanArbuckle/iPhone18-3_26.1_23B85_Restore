@interface MobileCalDAVDownloadContext
+ (id)contextWithAttachmentUUID:(id)a3 consumer:(id)a4;
- (DAEventsAttachmentDownloadConsumer)consumer;
- (MobileCalDAVDownloadContext)initWithAttachmentUUID:(id)a3 consumer:(id)a4;
@end

@implementation MobileCalDAVDownloadContext

+ (id)contextWithAttachmentUUID:(id)a3 consumer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithAttachmentUUID:v7 consumer:v6];

  return v8;
}

- (MobileCalDAVDownloadContext)initWithAttachmentUUID:(id)a3 consumer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MobileCalDAVDownloadContext;
  v9 = [(MobileCalDAVDownloadContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_consumer, v8);
    objc_storeStrong(&v10->_attachmentUUID, a3);
  }

  return v10;
}

- (DAEventsAttachmentDownloadConsumer)consumer
{
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  return WeakRetained;
}

@end