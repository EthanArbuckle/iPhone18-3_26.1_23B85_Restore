@interface _IMDRelayingServiceReachabilityResponseHandler
- (_IMDRelayingServiceReachabilityResponseHandler)initWithRequestID:(id)a3 pushToken:(id)a4 fromIdentifier:(id)a5 toIdentifier:(id)a6;
- (void)_deferSendingCurrentResultIfNeeded;
- (void)_sendCurrentResult;
- (void)reachabilityRequest:(id)a3 updatedWithResult:(id)a4;
@end

@implementation _IMDRelayingServiceReachabilityResponseHandler

- (_IMDRelayingServiceReachabilityResponseHandler)initWithRequestID:(id)a3 pushToken:(id)a4 fromIdentifier:(id)a5 toIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = _IMDRelayingServiceReachabilityResponseHandler;
  v15 = [(_IMDRelayingServiceReachabilityResponseHandler *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_requestID, a3);
    objc_storeStrong(&v16->_pushToken, a4);
    objc_storeStrong(&v16->_fromIdentifier, a5);
    objc_storeStrong(&v16->_toIdentifier, a6);
  }

  return v16;
}

- (void)_sendCurrentResult
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(_IMDRelayingServiceReachabilityResponseHandler *)self lastResult];

  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [(_IMDRelayingServiceReachabilityResponseHandler *)self lastResult];
        if ([v6 isFinal])
        {
          v7 = @"final";
        }

        else
        {
          v7 = @"intermediate";
        }

        v8 = [(_IMDRelayingServiceReachabilityResponseHandler *)self requestID];
        v9 = [(_IMDRelayingServiceReachabilityResponseHandler *)self pushToken];
        v10 = [(_IMDRelayingServiceReachabilityResponseHandler *)self fromIdentifier];
        v21 = 138413058;
        v22 = v7;
        v23 = 2112;
        v24 = v8;
        v25 = 2112;
        v26 = v9;
        v27 = 2112;
        v28 = v10;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Sending %@ result for request ID %@ to %@/%@", &v21, 0x2Au);
      }
    }

    v11 = [IMDRelayServiceReachabilityResponse alloc];
    v12 = [(_IMDRelayingServiceReachabilityResponseHandler *)self lastResult];
    v13 = [(IMDRelayServiceReachabilityResponse *)v11 initWithResult:v12];

    v14 = +[IMDRelayServiceController sharedInstance];
    v15 = [(_IMDRelayingServiceReachabilityResponseHandler *)self requestID];
    v16 = [(_IMDRelayingServiceReachabilityResponseHandler *)self pushToken];
    v17 = [(_IMDRelayingServiceReachabilityResponseHandler *)self fromIdentifier];
    v18 = [(_IMDRelayingServiceReachabilityResponseHandler *)self toIdentifier];
    [v14 sendReachabilityResponse:v13 requestID:v15 toToken:v16 toIdentifier:v17 fromIdentifier:v18];
  }

  else if (v4)
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Not sending current result, no result cached yet?", &v21, 2u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_deferSendingCurrentResultIfNeeded
{
  v3 = [(_IMDRelayingServiceReachabilityResponseHandler *)self lastResult];

  if (v3)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__sendCurrentResult object:0];
    v4 = [(_IMDRelayingServiceReachabilityResponseHandler *)self lastResult];
    v5 = [v4 isFinal];

    if (v5)
    {

      MEMORY[0x2821F9670](self, sel__sendCurrentResult);
    }

    else
    {

      [(_IMDRelayingServiceReachabilityResponseHandler *)self performSelector:sel__sendCurrentResult withObject:0 afterDelay:0.5];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Not sending current result, no result cached yet?", v7, 2u);
    }
  }
}

- (void)reachabilityRequest:(id)a3 updatedWithResult:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 requestID];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Received update for request ID %@", &v11, 0xCu);
    }
  }

  [(_IMDRelayingServiceReachabilityResponseHandler *)self setLastResult:v7];
  [(_IMDRelayingServiceReachabilityResponseHandler *)self _deferSendingCurrentResultIfNeeded];

  v10 = *MEMORY[0x277D85DE8];
}

@end