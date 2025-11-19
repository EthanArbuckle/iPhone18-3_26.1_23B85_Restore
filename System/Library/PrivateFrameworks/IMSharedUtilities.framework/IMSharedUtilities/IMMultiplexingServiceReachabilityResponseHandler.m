@interface IMMultiplexingServiceReachabilityResponseHandler
- (IMMultiplexingServiceReachabilityResponseHandler)initWithResponseHandlers:(id)a3;
- (void)reachabilityRequest:(id)a3 updatedWithResult:(id)a4;
@end

@implementation IMMultiplexingServiceReachabilityResponseHandler

- (IMMultiplexingServiceReachabilityResponseHandler)initWithResponseHandlers:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMMultiplexingServiceReachabilityResponseHandler;
  v6 = [(IMMultiplexingServiceReachabilityResponseHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_responseHandlers, a3);
  }

  return v7;
}

- (void)reachabilityRequest:(id)a3 updatedWithResult:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(IMMultiplexingServiceReachabilityResponseHandler *)self responseHandlers];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) reachabilityRequest:v6 updatedWithResult:v7];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

@end