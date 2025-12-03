@interface MobileCalDAVDownloadContext
+ (id)contextWithAttachmentUUID:(id)d consumer:(id)consumer;
- (DAEventsAttachmentDownloadConsumer)consumer;
- (MobileCalDAVDownloadContext)initWithAttachmentUUID:(id)d consumer:(id)consumer;
@end

@implementation MobileCalDAVDownloadContext

+ (id)contextWithAttachmentUUID:(id)d consumer:(id)consumer
{
  consumerCopy = consumer;
  dCopy = d;
  v8 = [[self alloc] initWithAttachmentUUID:dCopy consumer:consumerCopy];

  return v8;
}

- (MobileCalDAVDownloadContext)initWithAttachmentUUID:(id)d consumer:(id)consumer
{
  dCopy = d;
  consumerCopy = consumer;
  v12.receiver = self;
  v12.super_class = MobileCalDAVDownloadContext;
  v9 = [(MobileCalDAVDownloadContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_consumer, consumerCopy);
    objc_storeStrong(&v10->_attachmentUUID, d);
  }

  return v10;
}

- (DAEventsAttachmentDownloadConsumer)consumer
{
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  return WeakRetained;
}

@end