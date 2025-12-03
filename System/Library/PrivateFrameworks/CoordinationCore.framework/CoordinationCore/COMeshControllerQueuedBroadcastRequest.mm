@interface COMeshControllerQueuedBroadcastRequest
- (COMeshControllerQueuedBroadcastRequest)initWithRequest:(id)request destination:(id)destination completionHandler:(id)handler;
- (void)invokeCallbackWithError:(id)error;
@end

@implementation COMeshControllerQueuedBroadcastRequest

- (COMeshControllerQueuedBroadcastRequest)initWithRequest:(id)request destination:(id)destination completionHandler:(id)handler
{
  requestCopy = request;
  destinationCopy = destination;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = COMeshControllerQueuedBroadcastRequest;
  v12 = [(COMeshControllerQueuedBroadcastRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_destination, destination);
    v14 = [handlerCopy copy];
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v14;
  }

  return v13;
}

- (void)invokeCallbackWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(COMeshControllerQueuedBroadcastRequest *)self completionHandler];
  request = [(COMeshControllerQueuedBroadcastRequest *)self request];
  destination = [(COMeshControllerQueuedBroadcastRequest *)self destination];
  response = [(COMeshControllerQueuedBroadcastRequest *)self response];
  completionHandler[2](completionHandler, request, destination, response, errorCopy);
}

@end