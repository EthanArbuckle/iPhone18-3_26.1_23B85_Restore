@interface _MFMFMailboxMessageBodyProcessorLoaderClient
- (_MFMFMailboxMessageBodyProcessorLoaderClient)initWithMessage:(id)message;
- (double)ordering;
@end

@implementation _MFMFMailboxMessageBodyProcessorLoaderClient

- (_MFMFMailboxMessageBodyProcessorLoaderClient)initWithMessage:(id)message
{
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = _MFMFMailboxMessageBodyProcessorLoaderClient;
  v6 = [(_MFMFMailboxMessageBodyProcessorLoaderClient *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
    v8 = objc_alloc_init(EFPromise);
    promise = v7->_promise;
    v7->_promise = v8;
  }

  return v7;
}

- (double)ordering
{
  message = [(_MFMFMailboxMessageBodyProcessorLoaderClient *)self message];
  headersIfAvailable = [message headersIfAvailable];

  if (!headersIfAvailable)
  {
    return 0.0;
  }

  message2 = [(_MFMFMailboxMessageBodyProcessorLoaderClient *)self message];
  [message2 dateReceivedAsTimeIntervalSince1970];
  v7 = v6;

  return v7;
}

@end