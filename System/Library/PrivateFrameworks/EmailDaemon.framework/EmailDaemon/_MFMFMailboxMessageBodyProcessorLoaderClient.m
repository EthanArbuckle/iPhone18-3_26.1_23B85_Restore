@interface _MFMFMailboxMessageBodyProcessorLoaderClient
- (_MFMFMailboxMessageBodyProcessorLoaderClient)initWithMessage:(id)a3;
- (double)ordering;
@end

@implementation _MFMFMailboxMessageBodyProcessorLoaderClient

- (_MFMFMailboxMessageBodyProcessorLoaderClient)initWithMessage:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _MFMFMailboxMessageBodyProcessorLoaderClient;
  v6 = [(_MFMFMailboxMessageBodyProcessorLoaderClient *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, a3);
    v8 = objc_alloc_init(EFPromise);
    promise = v7->_promise;
    v7->_promise = v8;
  }

  return v7;
}

- (double)ordering
{
  v3 = [(_MFMFMailboxMessageBodyProcessorLoaderClient *)self message];
  v4 = [v3 headersIfAvailable];

  if (!v4)
  {
    return 0.0;
  }

  v5 = [(_MFMFMailboxMessageBodyProcessorLoaderClient *)self message];
  [v5 dateReceivedAsTimeIntervalSince1970];
  v7 = v6;

  return v7;
}

@end