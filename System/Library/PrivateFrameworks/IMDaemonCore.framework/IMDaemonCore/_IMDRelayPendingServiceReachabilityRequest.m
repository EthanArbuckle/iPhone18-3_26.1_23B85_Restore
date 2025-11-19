@interface _IMDRelayPendingServiceReachabilityRequest
- (NSString)requestID;
- (_IMDRelayPendingServiceReachabilityRequest)initWithRequest:(id)a3 responseHandler:(id)a4;
- (id)createIncompleteFinalResult;
- (void)enumerateResponseHandlersWithBlock:(id)a3;
@end

@implementation _IMDRelayPendingServiceReachabilityRequest

- (_IMDRelayPendingServiceReachabilityRequest)initWithRequest:(id)a3 responseHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _IMDRelayPendingServiceReachabilityRequest;
  v9 = [(_IMDRelayPendingServiceReachabilityRequest *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalRequest, a3);
    v11 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    responseHandlers = v10->_responseHandlers;
    v10->_responseHandlers = v11;

    [(NSMapTable *)v10->_responseHandlers setObject:v8 forKey:v7];
    v13 = [MEMORY[0x277CBEAA8] date];
    lastUpdateTime = v10->_lastUpdateTime;
    v10->_lastUpdateTime = v13;
  }

  return v10;
}

- (NSString)requestID
{
  v2 = [(_IMDRelayPendingServiceReachabilityRequest *)self originalRequest];
  v3 = [v2 requestID];

  return v3;
}

- (id)createIncompleteFinalResult
{
  v3 = [(_IMDRelayPendingServiceReachabilityRequest *)self lastResult];
  v4 = [v3 copy];

  if (v4)
  {
    [v4 setFinal:1];
    v5 = v4;
  }

  else
  {
    v6 = MEMORY[0x277D1ABB0];
    v7 = [(_IMDRelayPendingServiceReachabilityRequest *)self originalRequest];
    v8 = [v7 serviceName];
    v9 = [(_IMDRelayPendingServiceReachabilityRequest *)self originalRequest];
    v10 = [v9 handleIDs];
    v5 = [v6 finalResultForService:v8 handleIDs:v10 allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:3];
  }

  return v5;
}

- (void)enumerateResponseHandlersWithBlock:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(_IMDRelayPendingServiceReachabilityRequest *)self responseHandlers];
  v6 = [v5 keyEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [(_IMDRelayPendingServiceReachabilityRequest *)self responseHandlers];
        v13 = [v12 objectForKey:v11];
        v4[2](v4, v11, v13);

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end