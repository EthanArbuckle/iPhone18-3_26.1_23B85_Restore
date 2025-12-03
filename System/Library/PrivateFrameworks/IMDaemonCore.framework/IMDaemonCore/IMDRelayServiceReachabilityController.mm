@interface IMDRelayServiceReachabilityController
+ (id)sharedInstance;
- (BOOL)_dedupeRequestIfNeeded:(id)needed responseHandler:(id)handler;
- (IMDRelayServiceReachabilityController)init;
- (id)_expiredRequests;
- (void)_calculateReachabilityWithRequest:(id)request responseHandler:(id)handler;
- (void)_handleReachabilityResult:(id)result messageID:(id)d fromToken:(id)token;
- (void)_startCleanupTimerIfNeeded;
- (void)_stopCleanupTimerIfNeeded;
- (void)_timeoutPendingRequest:(id)request;
- (void)_timeoutPendingRequests;
- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler;
- (void)handler:(id)handler incomingReachabilityRequest:(id)request fromToken:(id)token fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier messageGUID:(id)d;
- (void)handler:(id)handler incomingReachabilityResponse:(id)response fromToken:(id)token messageGUID:(id)d;
@end

@implementation IMDRelayServiceReachabilityController

+ (id)sharedInstance
{
  if (qword_2814210D8 != -1)
  {
    sub_22B7D9F74();
  }

  v3 = qword_281420F48;

  return v3;
}

- (IMDRelayServiceReachabilityController)init
{
  v13.receiver = self;
  v13.super_class = IMDRelayServiceReachabilityController;
  v2 = [(IMDRelayServiceReachabilityController *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.imagent.IMDRelayServiceReachabilityController", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingRequests = v2->_pendingRequests;
    v2->_pendingRequests = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    signaturesToRequestIDs = v2->_signaturesToRequestIDs;
    v2->_signaturesToRequestIDs = v9;

    v11 = +[IMDRelayPushHandler sharedInstance];
    [v11 addListener:v2];
  }

  return v2;
}

- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  queue = [(IMDRelayServiceReachabilityController *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6E64B8;
  block[3] = &unk_2787038F8;
  block[4] = self;
  v13 = requestCopy;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  v11 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  dispatch_async(queue, v11);
}

- (void)handler:(id)handler incomingReachabilityRequest:(id)request fromToken:(id)token fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier messageGUID:(id)d
{
  v45 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  requestCopy = request;
  tokenCopy = token;
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
  dCopy = d;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v17 = +[IMDAccountController sharedAccountController];
  serviceName = [requestCopy serviceName];
  v19 = [v17 anySessionForServiceName:serviceName];

  if (!v19)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      serviceName2 = [requestCopy serviceName];
      *buf = 138412290;
      v40 = serviceName2;
      _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Dropping incoming reachability request for unknown service name %@", buf, 0xCu);
    }

LABEL_15:

    goto LABEL_16;
  }

  service = [v19 service];
  v21 = [service supportsCapability:*MEMORY[0x277D1A5C0]];

  v22 = IMOSLoggingEnabled();
  if ((v21 & 1) == 0)
  {
    if (!v22)
    {
      goto LABEL_16;
    }

    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      serviceName3 = [requestCopy serviceName];
      *buf = 138412290;
      v40 = serviceName3;
      _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Dropping incoming reachability request for service %@ as it does not support relayed reachability", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if (v22)
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      serviceName4 = [requestCopy serviceName];
      handles = [requestCopy handles];
      *buf = 138412802;
      v40 = serviceName4;
      v41 = 2112;
      v42 = tokenCopy;
      v43 = 2112;
      v44 = handles;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Kicking off incoming reachability request for service %@ from token %@ for handles %@", buf, 0x20u);
    }
  }

  v26 = objc_alloc(MEMORY[0x277D1ABA8]);
  handles2 = [requestCopy handles];
  serviceName5 = [requestCopy serviceName];
  accountID = [v19 accountID];
  context = [requestCopy context];
  v31 = [v26 initWithHandleIDs:handles2 requestID:dCopy serviceName:serviceName5 accountID:accountID context:context];

  v32 = [[_IMDRelayingServiceReachabilityResponseHandler alloc] initWithRequestID:dCopy pushToken:tokenCopy fromIdentifier:identifierCopy toIdentifier:toIdentifierCopy];
  [v19 calculateReachabilityWithRequest:v31 responseHandler:v32];

LABEL_16:
  v36 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)handler incomingReachabilityResponse:(id)response fromToken:(id)token messageGUID:(id)d
{
  responseCopy = response;
  tokenCopy = token;
  dCopy = d;
  queue = [(IMDRelayServiceReachabilityController *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22B6E69B0;
  v17[3] = &unk_278705748;
  v17[4] = self;
  v18 = responseCopy;
  v19 = dCopy;
  v20 = tokenCopy;
  v13 = tokenCopy;
  v14 = dCopy;
  v15 = responseCopy;
  v16 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v17);
  dispatch_async(queue, v16);
}

- (BOOL)_dedupeRequestIfNeeded:(id)needed responseHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  handlerCopy = handler;
  queue = [(IMDRelayServiceReachabilityController *)self queue];
  dispatch_assert_queue_V2(queue);

  _signature = [neededCopy _signature];
  v10 = [(NSMutableDictionary *)self->_signaturesToRequestIDs objectForKeyedSubscript:_signature];
  if (v10)
  {
    v11 = [(NSMutableDictionary *)self->_pendingRequests objectForKeyedSubscript:v10];
    v12 = v11 != 0;
    if (v11)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          handleIDs = [neededCopy handleIDs];
          requestID = [neededCopy requestID];
          requestID2 = [v11 requestID];
          v22 = 138412802;
          v23 = handleIDs;
          v24 = 2112;
          v25 = requestID;
          v26 = 2112;
          v27 = requestID2;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Asked to calculate reachability for %@ with ID %@, found similar in-progress request with ID %@ - will piggyback off of existing request instead of starting a new one.", &v22, 0x20u);
        }
      }

      lastResult = [v11 lastResult];

      if (lastResult)
      {
        lastResult2 = [v11 lastResult];
        [handlerCopy reachabilityRequest:neededCopy updatedWithResult:lastResult2];
      }

      responseHandlers = [v11 responseHandlers];
      [responseHandlers setObject:handlerCopy forKey:neededCopy];
    }

    else
    {
      [(NSMutableDictionary *)self->_signaturesToRequestIDs removeObjectForKey:_signature];
    }
  }

  else
  {
    v12 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_calculateReachabilityWithRequest:(id)request responseHandler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  queue = [(IMDRelayServiceReachabilityController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(IMDRelayServiceReachabilityController *)self _dedupeRequestIfNeeded:requestCopy responseHandler:handlerCopy])
  {
    v9 = [[_IMDRelayPendingServiceReachabilityRequest alloc] initWithRequest:requestCopy responseHandler:handlerCopy];
    pendingRequests = self->_pendingRequests;
    requestID = [requestCopy requestID];
    [(NSMutableDictionary *)pendingRequests setObject:v9 forKeyedSubscript:requestID];

    requestID2 = [requestCopy requestID];
    signaturesToRequestIDs = self->_signaturesToRequestIDs;
    _signature = [requestCopy _signature];
    [(NSMutableDictionary *)signaturesToRequestIDs setObject:requestID2 forKeyedSubscript:_signature];

    v15 = [IMDRelayServiceReachabilityRequest alloc];
    handleIDs = [requestCopy handleIDs];
    serviceName = [requestCopy serviceName];
    context = [requestCopy context];
    v19 = [(IMDRelayServiceReachabilityRequest *)v15 initWithHandles:handleIDs serviceName:serviceName context:context];

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        requestID3 = [requestCopy requestID];
        serviceName2 = [requestCopy serviceName];
        handleIDs2 = [requestCopy handleIDs];
        v31 = 138412802;
        v32 = requestID3;
        v33 = 2112;
        v34 = serviceName2;
        v35 = 2112;
        v36 = handleIDs2;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Sending reachability request with ID %@ for service %@ for handles %@", &v31, 0x20u);
      }
    }

    v24 = +[IMDRelayServiceController sharedInstance];
    requestID4 = [requestCopy requestID];
    v26 = [v24 sendReachabilityRequest:v19 requestID:requestID4];

    v27 = self->_pendingRequests;
    requestID5 = [requestCopy requestID];
    v29 = [(NSMutableDictionary *)v27 objectForKeyedSubscript:requestID5];
    [v29 setSentToDevices:v26];

    [(IMDRelayServiceReachabilityController *)self _startCleanupTimerIfNeeded];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_handleReachabilityResult:(id)result messageID:(id)d fromToken:(id)token
{
  v38 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  dCopy = d;
  tokenCopy = token;
  queue = [(IMDRelayServiceReachabilityController *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingRequests = [(IMDRelayServiceReachabilityController *)self pendingRequests];
  v12 = [pendingRequests objectForKeyedSubscript:dCopy];

  if (v12)
  {
    if (tokenCopy)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      sentToDevices = [v12 sentToDevices];
      v14 = [sentToDevices countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v14)
      {
        v15 = *v30;
        while (2)
        {
          v16 = 0;
          do
          {
            if (*v30 != v15)
            {
              objc_enumerationMutation(sentToDevices);
            }

            pushToken = [*(*(&v29 + 1) + 8 * v16) pushToken];
            v18 = [pushToken isEqualToData:tokenCopy];

            if (v18)
            {

              goto LABEL_20;
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [sentToDevices countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v34 = tokenCopy;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Dropping incoming reachability result from unexpected push token %@", buf, 0xCu);
        }
      }
    }

    else
    {
LABEL_20:
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v34 = dCopy;
          v35 = 2112;
          v36 = resultCopy;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Handling reachability result for request ID %@ result %@", buf, 0x16u);
        }
      }

      if ([resultCopy isFinal])
      {
        pendingRequests2 = [(IMDRelayServiceReachabilityController *)self pendingRequests];
        [pendingRequests2 removeObjectForKey:dCopy];

        signaturesToRequestIDs = [(IMDRelayServiceReachabilityController *)self signaturesToRequestIDs];
        [signaturesToRequestIDs removeObjectForKey:dCopy];
      }

      [v12 setLastResult:resultCopy];
      date = [MEMORY[0x277CBEAA8] date];
      [v12 setLastUpdateTime:date];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_22B6E73D0;
      v27[3] = &unk_278708848;
      v28 = resultCopy;
      [v12 enumerateResponseHandlersWithBlock:v27];
      [(IMDRelayServiceReachabilityController *)self _stopCleanupTimerIfNeeded];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = dCopy;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Dropping incoming reachability result for untracked request ID %@", buf, 0xCu);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_startCleanupTimerIfNeeded
{
  queue = [(IMDRelayServiceReachabilityController *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingRequests = [(IMDRelayServiceReachabilityController *)self pendingRequests];
  if ([pendingRequests count])
  {
    cleanupTimer = [(IMDRelayServiceReachabilityController *)self cleanupTimer];

    if (!cleanupTimer)
    {
      v5 = IMLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_22B7D9F88(v5);
      }

      queue2 = [(IMDRelayServiceReachabilityController *)self queue];
      v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue2);

      dispatch_source_set_timer(v7, 0, 0xDF8475800uLL, 0x3B9ACA00uLL);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = sub_22B6E7650;
      handler[3] = &unk_278702FF0;
      handler[4] = self;
      dispatch_source_set_event_handler(v7, handler);
      dispatch_activate(v7);
    }
  }

  else
  {
  }
}

- (void)_stopCleanupTimerIfNeeded
{
  queue = [(IMDRelayServiceReachabilityController *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingRequests = [(IMDRelayServiceReachabilityController *)self pendingRequests];
  if ([pendingRequests count])
  {
  }

  else
  {
    cleanupTimer = [(IMDRelayServiceReachabilityController *)self cleanupTimer];

    if (cleanupTimer)
    {
      v5 = IMLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_22B7D9FCC(v5);
      }

      cleanupTimer2 = [(IMDRelayServiceReachabilityController *)self cleanupTimer];
      dispatch_source_cancel(cleanupTimer2);

      [(IMDRelayServiceReachabilityController *)self setCleanupTimer:0];
    }
  }
}

- (void)_timeoutPendingRequest:(id)request
{
  v12 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  createIncompleteFinalResult = [requestCopy createIncompleteFinalResult];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      requestID = [requestCopy requestID];
      v10 = 138412290;
      v11 = requestID;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Timing out pending reachability request with ID %@", &v10, 0xCu);
    }
  }

  requestID2 = [requestCopy requestID];
  [(IMDRelayServiceReachabilityController *)self _handleReachabilityResult:createIncompleteFinalResult messageID:requestID2 fromToken:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_expiredRequests
{
  v28 = *MEMORY[0x277D85DE8];
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  pendingRequests = [(IMDRelayServiceReachabilityController *)self pendingRequests];
  allValues = [pendingRequests allValues];

  v5 = [allValues countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        lastUpdateTime = [v8 lastUpdateTime];
        [lastUpdateTime timeIntervalSinceNow];
        v11 = v10 < 0.0;
        lastUpdateTime2 = [v8 lastUpdateTime];
        [lastUpdateTime2 timeIntervalSinceNow];
        v14 = v13;

        if (!v11)
        {
          if (v14 <= 60.0)
          {
            continue;
          }

LABEL_10:
          [v20 addObject:v8];
          continue;
        }

        if (v14 < -60.0)
        {
          goto LABEL_10;
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v5);
  }

  if ([v20 count] && IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v20 count];
      *buf = 134217984;
      v26 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Found %ld expired reachability requests", buf, 0xCu);
    }
  }

  v17 = [v20 copy];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)_timeoutPendingRequests
{
  v15 = *MEMORY[0x277D85DE8];
  queue = [(IMDRelayServiceReachabilityController *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  _expiredRequests = [(IMDRelayServiceReachabilityController *)self _expiredRequests];
  v5 = [_expiredRequests countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(_expiredRequests);
        }

        [(IMDRelayServiceReachabilityController *)self _timeoutPendingRequest:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [_expiredRequests countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end