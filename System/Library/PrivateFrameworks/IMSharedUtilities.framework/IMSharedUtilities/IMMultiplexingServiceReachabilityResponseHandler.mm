@interface IMMultiplexingServiceReachabilityResponseHandler
- (IMMultiplexingServiceReachabilityResponseHandler)initWithResponseHandlers:(id)handlers;
- (void)reachabilityRequest:(id)request updatedWithResult:(id)result;
@end

@implementation IMMultiplexingServiceReachabilityResponseHandler

- (IMMultiplexingServiceReachabilityResponseHandler)initWithResponseHandlers:(id)handlers
{
  handlersCopy = handlers;
  v9.receiver = self;
  v9.super_class = IMMultiplexingServiceReachabilityResponseHandler;
  v6 = [(IMMultiplexingServiceReachabilityResponseHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_responseHandlers, handlers);
  }

  return v7;
}

- (void)reachabilityRequest:(id)request updatedWithResult:(id)result
{
  v18 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  resultCopy = result;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  responseHandlers = [(IMMultiplexingServiceReachabilityResponseHandler *)self responseHandlers];
  v9 = [responseHandlers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(responseHandlers);
        }

        [*(*(&v13 + 1) + 8 * v12++) reachabilityRequest:requestCopy updatedWithResult:resultCopy];
      }

      while (v10 != v12);
      v10 = [responseHandlers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

@end