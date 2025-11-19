@interface COMeshControllerQueuedBroadcastRequest
- (COMeshControllerQueuedBroadcastRequest)initWithRequest:(id)a3 destination:(id)a4 completionHandler:(id)a5;
- (void)invokeCallbackWithError:(id)a3;
@end

@implementation COMeshControllerQueuedBroadcastRequest

- (COMeshControllerQueuedBroadcastRequest)initWithRequest:(id)a3 destination:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = COMeshControllerQueuedBroadcastRequest;
  v12 = [(COMeshControllerQueuedBroadcastRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, a3);
    objc_storeStrong(&v13->_destination, a4);
    v14 = [v11 copy];
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v14;
  }

  return v13;
}

- (void)invokeCallbackWithError:(id)a3
{
  v4 = a3;
  v8 = [(COMeshControllerQueuedBroadcastRequest *)self completionHandler];
  v5 = [(COMeshControllerQueuedBroadcastRequest *)self request];
  v6 = [(COMeshControllerQueuedBroadcastRequest *)self destination];
  v7 = [(COMeshControllerQueuedBroadcastRequest *)self response];
  v8[2](v8, v5, v6, v7, v4);
}

@end