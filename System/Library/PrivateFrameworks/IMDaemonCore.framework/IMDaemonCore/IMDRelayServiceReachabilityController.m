@interface IMDRelayServiceReachabilityController
+ (id)sharedInstance;
- (BOOL)_dedupeRequestIfNeeded:(id)a3 responseHandler:(id)a4;
- (IMDRelayServiceReachabilityController)init;
- (id)_expiredRequests;
- (void)_calculateReachabilityWithRequest:(id)a3 responseHandler:(id)a4;
- (void)_handleReachabilityResult:(id)a3 messageID:(id)a4 fromToken:(id)a5;
- (void)_startCleanupTimerIfNeeded;
- (void)_stopCleanupTimerIfNeeded;
- (void)_timeoutPendingRequest:(id)a3;
- (void)_timeoutPendingRequests;
- (void)calculateReachabilityWithRequest:(id)a3 responseHandler:(id)a4;
- (void)handler:(id)a3 incomingReachabilityRequest:(id)a4 fromToken:(id)a5 fromIdentifier:(id)a6 toIdentifier:(id)a7 messageGUID:(id)a8;
- (void)handler:(id)a3 incomingReachabilityResponse:(id)a4 fromToken:(id)a5 messageGUID:(id)a6;
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

- (void)calculateReachabilityWithRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMDRelayServiceReachabilityController *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6E64B8;
  block[3] = &unk_2787038F8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  dispatch_async(v8, v11);
}

- (void)handler:(id)a3 incomingReachabilityRequest:(id)a4 fromToken:(id)a5 fromIdentifier:(id)a6 toIdentifier:(id)a7 messageGUID:(id)a8
{
  v45 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v13 = a4;
  v14 = a5;
  v38 = a6;
  v15 = a7;
  v16 = a8;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v17 = +[IMDAccountController sharedAccountController];
  v18 = [v13 serviceName];
  v19 = [v17 anySessionForServiceName:v18];

  if (!v19)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = [v13 serviceName];
      *buf = 138412290;
      v40 = v34;
      _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Dropping incoming reachability request for unknown service name %@", buf, 0xCu);
    }

LABEL_15:

    goto LABEL_16;
  }

  v20 = [v19 service];
  v21 = [v20 supportsCapability:*MEMORY[0x277D1A5C0]];

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
      v35 = [v13 serviceName];
      *buf = 138412290;
      v40 = v35;
      _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Dropping incoming reachability request for service %@ as it does not support relayed reachability", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if (v22)
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v13 serviceName];
      v25 = [v13 handles];
      *buf = 138412802;
      v40 = v24;
      v41 = 2112;
      v42 = v14;
      v43 = 2112;
      v44 = v25;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Kicking off incoming reachability request for service %@ from token %@ for handles %@", buf, 0x20u);
    }
  }

  v26 = objc_alloc(MEMORY[0x277D1ABA8]);
  v27 = [v13 handles];
  v28 = [v13 serviceName];
  v29 = [v19 accountID];
  v30 = [v13 context];
  v31 = [v26 initWithHandleIDs:v27 requestID:v16 serviceName:v28 accountID:v29 context:v30];

  v32 = [[_IMDRelayingServiceReachabilityResponseHandler alloc] initWithRequestID:v16 pushToken:v14 fromIdentifier:v38 toIdentifier:v15];
  [v19 calculateReachabilityWithRequest:v31 responseHandler:v32];

LABEL_16:
  v36 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)a3 incomingReachabilityResponse:(id)a4 fromToken:(id)a5 messageGUID:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(IMDRelayServiceReachabilityController *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22B6E69B0;
  v17[3] = &unk_278705748;
  v17[4] = self;
  v18 = v9;
  v19 = v11;
  v20 = v10;
  v13 = v10;
  v14 = v11;
  v15 = v9;
  v16 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v17);
  dispatch_async(v12, v16);
}

- (BOOL)_dedupeRequestIfNeeded:(id)a3 responseHandler:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(IMDRelayServiceReachabilityController *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 _signature];
  v10 = [(NSMutableDictionary *)self->_signaturesToRequestIDs objectForKeyedSubscript:v9];
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
          v14 = [v6 handleIDs];
          v15 = [v6 requestID];
          v16 = [v11 requestID];
          v22 = 138412802;
          v23 = v14;
          v24 = 2112;
          v25 = v15;
          v26 = 2112;
          v27 = v16;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Asked to calculate reachability for %@ with ID %@, found similar in-progress request with ID %@ - will piggyback off of existing request instead of starting a new one.", &v22, 0x20u);
        }
      }

      v17 = [v11 lastResult];

      if (v17)
      {
        v18 = [v11 lastResult];
        [v7 reachabilityRequest:v6 updatedWithResult:v18];
      }

      v19 = [v11 responseHandlers];
      [v19 setObject:v7 forKey:v6];
    }

    else
    {
      [(NSMutableDictionary *)self->_signaturesToRequestIDs removeObjectForKey:v9];
    }
  }

  else
  {
    v12 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_calculateReachabilityWithRequest:(id)a3 responseHandler:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(IMDRelayServiceReachabilityController *)self queue];
  dispatch_assert_queue_V2(v8);

  if (![(IMDRelayServiceReachabilityController *)self _dedupeRequestIfNeeded:v6 responseHandler:v7])
  {
    v9 = [[_IMDRelayPendingServiceReachabilityRequest alloc] initWithRequest:v6 responseHandler:v7];
    pendingRequests = self->_pendingRequests;
    v11 = [v6 requestID];
    [(NSMutableDictionary *)pendingRequests setObject:v9 forKeyedSubscript:v11];

    v12 = [v6 requestID];
    signaturesToRequestIDs = self->_signaturesToRequestIDs;
    v14 = [v6 _signature];
    [(NSMutableDictionary *)signaturesToRequestIDs setObject:v12 forKeyedSubscript:v14];

    v15 = [IMDRelayServiceReachabilityRequest alloc];
    v16 = [v6 handleIDs];
    v17 = [v6 serviceName];
    v18 = [v6 context];
    v19 = [(IMDRelayServiceReachabilityRequest *)v15 initWithHandles:v16 serviceName:v17 context:v18];

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v6 requestID];
        v22 = [v6 serviceName];
        v23 = [v6 handleIDs];
        v31 = 138412802;
        v32 = v21;
        v33 = 2112;
        v34 = v22;
        v35 = 2112;
        v36 = v23;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Sending reachability request with ID %@ for service %@ for handles %@", &v31, 0x20u);
      }
    }

    v24 = +[IMDRelayServiceController sharedInstance];
    v25 = [v6 requestID];
    v26 = [v24 sendReachabilityRequest:v19 requestID:v25];

    v27 = self->_pendingRequests;
    v28 = [v6 requestID];
    v29 = [(NSMutableDictionary *)v27 objectForKeyedSubscript:v28];
    [v29 setSentToDevices:v26];

    [(IMDRelayServiceReachabilityController *)self _startCleanupTimerIfNeeded];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_handleReachabilityResult:(id)a3 messageID:(id)a4 fromToken:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(IMDRelayServiceReachabilityController *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = [(IMDRelayServiceReachabilityController *)self pendingRequests];
  v12 = [v11 objectForKeyedSubscript:v8];

  if (v12)
  {
    if (v9)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v13 = [v12 sentToDevices];
      v14 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
              objc_enumerationMutation(v13);
            }

            v17 = [*(*(&v29 + 1) + 8 * v16) pushToken];
            v18 = [v17 isEqualToData:v9];

            if (v18)
            {

              goto LABEL_20;
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
          v34 = v9;
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
          v34 = v8;
          v35 = 2112;
          v36 = v26;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Handling reachability result for request ID %@ result %@", buf, 0x16u);
        }
      }

      if ([v26 isFinal])
      {
        v22 = [(IMDRelayServiceReachabilityController *)self pendingRequests];
        [v22 removeObjectForKey:v8];

        v23 = [(IMDRelayServiceReachabilityController *)self signaturesToRequestIDs];
        [v23 removeObjectForKey:v8];
      }

      [v12 setLastResult:v26];
      v24 = [MEMORY[0x277CBEAA8] date];
      [v12 setLastUpdateTime:v24];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_22B6E73D0;
      v27[3] = &unk_278708848;
      v28 = v26;
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
      v34 = v8;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Dropping incoming reachability result for untracked request ID %@", buf, 0xCu);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_startCleanupTimerIfNeeded
{
  v3 = [(IMDRelayServiceReachabilityController *)self queue];
  dispatch_assert_queue_V2(v3);

  v8 = [(IMDRelayServiceReachabilityController *)self pendingRequests];
  if ([v8 count])
  {
    v4 = [(IMDRelayServiceReachabilityController *)self cleanupTimer];

    if (!v4)
    {
      v5 = IMLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_22B7D9F88(v5);
      }

      v6 = [(IMDRelayServiceReachabilityController *)self queue];
      v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v6);

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
  v3 = [(IMDRelayServiceReachabilityController *)self queue];
  dispatch_assert_queue_V2(v3);

  v7 = [(IMDRelayServiceReachabilityController *)self pendingRequests];
  if ([v7 count])
  {
  }

  else
  {
    v4 = [(IMDRelayServiceReachabilityController *)self cleanupTimer];

    if (v4)
    {
      v5 = IMLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_22B7D9FCC(v5);
      }

      v6 = [(IMDRelayServiceReachabilityController *)self cleanupTimer];
      dispatch_source_cancel(v6);

      [(IMDRelayServiceReachabilityController *)self setCleanupTimer:0];
    }
  }
}

- (void)_timeoutPendingRequest:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 createIncompleteFinalResult];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 requestID];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Timing out pending reachability request with ID %@", &v10, 0xCu);
    }
  }

  v8 = [v4 requestID];
  [(IMDRelayServiceReachabilityController *)self _handleReachabilityResult:v5 messageID:v8 fromToken:0];

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
  v3 = [(IMDRelayServiceReachabilityController *)self pendingRequests];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 lastUpdateTime];
        [v9 timeIntervalSinceNow];
        v11 = v10 < 0.0;
        v12 = [v8 lastUpdateTime];
        [v12 timeIntervalSinceNow];
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

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
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
  v3 = [(IMDRelayServiceReachabilityController *)self queue];
  dispatch_assert_queue_V2(v3);

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(IMDRelayServiceReachabilityController *)self _expiredRequests];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(IMDRelayServiceReachabilityController *)self _timeoutPendingRequest:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end