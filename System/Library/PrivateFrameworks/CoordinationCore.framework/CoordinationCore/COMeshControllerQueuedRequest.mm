@interface COMeshControllerQueuedRequest
- (COMeshControllerQueuedRequest)initWithRequest:(id)request completionHandler:(id)handler;
- (void)invokeCallbackWithError:(id)error;
@end

@implementation COMeshControllerQueuedRequest

- (COMeshControllerQueuedRequest)initWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = COMeshControllerQueuedRequest;
  v9 = [(COMeshControllerQueuedRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    v11 = [handlerCopy copy];
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

- (void)invokeCallbackWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(COMeshControllerQueuedRequest *)self completionHandler];
  request = [(COMeshControllerQueuedRequest *)self request];
  destination = [(COMeshControllerQueuedRequest *)self destination];
  response = [(COMeshControllerQueuedRequest *)self response];
  completionHandler[2](completionHandler, request, destination, response, errorCopy);
}

@end