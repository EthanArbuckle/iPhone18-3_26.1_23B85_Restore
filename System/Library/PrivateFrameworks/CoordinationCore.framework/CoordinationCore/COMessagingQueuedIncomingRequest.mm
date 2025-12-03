@interface COMessagingQueuedIncomingRequest
- (COMessagingQueuedIncomingRequest)initWithRequest:(id)request callback:(id)callback;
- (id)senderNode;
@end

@implementation COMessagingQueuedIncomingRequest

- (COMessagingQueuedIncomingRequest)initWithRequest:(id)request callback:(id)callback
{
  requestCopy = request;
  callbackCopy = callback;
  v14.receiver = self;
  v14.super_class = COMessagingQueuedIncomingRequest;
  v9 = [(COMessagingQueuedIncomingRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    v11 = MEMORY[0x245D5FF10](callbackCopy);
    callback = v10->_callback;
    v10->_callback = v11;

    v10->_enqueueTimestamp = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  }

  return v10;
}

- (id)senderNode
{
  request = [(COMessagingQueuedIncomingRequest *)self request];
  sender = [request sender];

  return sender;
}

@end