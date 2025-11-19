@interface COMessagingQueuedIncomingRequest
- (COMessagingQueuedIncomingRequest)initWithRequest:(id)a3 callback:(id)a4;
- (id)senderNode;
@end

@implementation COMessagingQueuedIncomingRequest

- (COMessagingQueuedIncomingRequest)initWithRequest:(id)a3 callback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = COMessagingQueuedIncomingRequest;
  v9 = [(COMessagingQueuedIncomingRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    v11 = MEMORY[0x245D5FF10](v8);
    callback = v10->_callback;
    v10->_callback = v11;

    v10->_enqueueTimestamp = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  }

  return v10;
}

- (id)senderNode
{
  v2 = [(COMessagingQueuedIncomingRequest *)self request];
  v3 = [v2 sender];

  return v3;
}

@end