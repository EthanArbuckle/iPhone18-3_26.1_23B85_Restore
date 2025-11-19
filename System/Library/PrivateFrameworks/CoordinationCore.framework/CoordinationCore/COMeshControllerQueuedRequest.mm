@interface COMeshControllerQueuedRequest
- (COMeshControllerQueuedRequest)initWithRequest:(id)a3 completionHandler:(id)a4;
- (void)invokeCallbackWithError:(id)a3;
@end

@implementation COMeshControllerQueuedRequest

- (COMeshControllerQueuedRequest)initWithRequest:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = COMeshControllerQueuedRequest;
  v9 = [(COMeshControllerQueuedRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    v11 = [v8 copy];
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

- (void)invokeCallbackWithError:(id)a3
{
  v4 = a3;
  v8 = [(COMeshControllerQueuedRequest *)self completionHandler];
  v5 = [(COMeshControllerQueuedRequest *)self request];
  v6 = [(COMeshControllerQueuedRequest *)self destination];
  v7 = [(COMeshControllerQueuedRequest *)self response];
  v8[2](v8, v5, v6, v7, v4);
}

@end