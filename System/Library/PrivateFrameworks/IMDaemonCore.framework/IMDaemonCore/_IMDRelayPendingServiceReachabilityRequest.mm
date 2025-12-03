@interface _IMDRelayPendingServiceReachabilityRequest
- (NSString)requestID;
- (_IMDRelayPendingServiceReachabilityRequest)initWithRequest:(id)request responseHandler:(id)handler;
- (id)createIncompleteFinalResult;
- (void)enumerateResponseHandlersWithBlock:(id)block;
@end

@implementation _IMDRelayPendingServiceReachabilityRequest

- (_IMDRelayPendingServiceReachabilityRequest)initWithRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = _IMDRelayPendingServiceReachabilityRequest;
  v9 = [(_IMDRelayPendingServiceReachabilityRequest *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalRequest, request);
    v11 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    responseHandlers = v10->_responseHandlers;
    v10->_responseHandlers = v11;

    [(NSMapTable *)v10->_responseHandlers setObject:handlerCopy forKey:requestCopy];
    date = [MEMORY[0x277CBEAA8] date];
    lastUpdateTime = v10->_lastUpdateTime;
    v10->_lastUpdateTime = date;
  }

  return v10;
}

- (NSString)requestID
{
  originalRequest = [(_IMDRelayPendingServiceReachabilityRequest *)self originalRequest];
  requestID = [originalRequest requestID];

  return requestID;
}

- (id)createIncompleteFinalResult
{
  lastResult = [(_IMDRelayPendingServiceReachabilityRequest *)self lastResult];
  v4 = [lastResult copy];

  if (v4)
  {
    [v4 setFinal:1];
    v5 = v4;
  }

  else
  {
    v6 = MEMORY[0x277D1ABB0];
    originalRequest = [(_IMDRelayPendingServiceReachabilityRequest *)self originalRequest];
    serviceName = [originalRequest serviceName];
    originalRequest2 = [(_IMDRelayPendingServiceReachabilityRequest *)self originalRequest];
    handleIDs = [originalRequest2 handleIDs];
    v5 = [v6 finalResultForService:serviceName handleIDs:handleIDs allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:3];
  }

  return v5;
}

- (void)enumerateResponseHandlersWithBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  responseHandlers = [(_IMDRelayPendingServiceReachabilityRequest *)self responseHandlers];
  keyEnumerator = [responseHandlers keyEnumerator];

  v7 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        responseHandlers2 = [(_IMDRelayPendingServiceReachabilityRequest *)self responseHandlers];
        v13 = [responseHandlers2 objectForKey:v11];
        blockCopy[2](blockCopy, v11, v13);

        ++v10;
      }

      while (v8 != v10);
      v8 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end