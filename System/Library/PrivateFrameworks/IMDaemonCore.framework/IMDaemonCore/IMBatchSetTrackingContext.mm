@interface IMBatchSetTrackingContext
- (BOOL)isComplete;
- (IMBatchSetTrackingContext)initWithAccount:(id)account service:(id)service message:(id)message;
- (void)grabContextIfAppropriate:(id)appropriate;
- (void)noteItemProcessed:(id)processed;
- (void)noteNewIncomingBatchMessage:(id)message;
- (void)submitStorageProcessingComplete;
@end

@implementation IMBatchSetTrackingContext

- (IMBatchSetTrackingContext)initWithAccount:(id)account service:(id)service message:(id)message
{
  accountCopy = account;
  serviceCopy = service;
  messageCopy = message;
  v24.receiver = self;
  v24.super_class = IMBatchSetTrackingContext;
  v12 = [(IMBatchSetTrackingContext *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, account);
    objc_storeStrong(&v13->_service, service);
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    trackingContexts = v13->_trackingContexts;
    v13->_trackingContexts = v14;

    [(IMBatchSetTrackingContext *)v13 noteNewIncomingBatchMessage:messageCopy];
    if ([messageCopy hasValidPagination])
    {
      context = [messageCopy context];
      totalBatchCount = [context totalBatchCount];
      totalExpectedBatches = v13->_totalExpectedBatches;
      v13->_totalExpectedBatches = totalBatchCount;

      v19 = objc_alloc_init(MEMORY[0x277D1AB20]);
      batchTracker = v13->_batchTracker;
      v13->_batchTracker = v19;

      batchTracker = [(IMBatchSetTrackingContext *)v13 batchTracker];
      totalExpectedBatches = [(IMBatchSetTrackingContext *)v13 totalExpectedBatches];
      [batchTracker setPacketsExpected:{objc_msgSend(totalExpectedBatches, "longLongValue")}];
    }
  }

  return v13;
}

- (void)grabContextIfAppropriate:(id)appropriate
{
  v16 = *MEMORY[0x277D85DE8];
  appropriateCopy = appropriate;
  context = [appropriateCopy context];
  serverStorageFetchContext = [context serverStorageFetchContext];

  if (serverStorageFetchContext)
  {
    contextWithSSM = [(IMBatchSetTrackingContext *)self contextWithSSM];

    if (contextWithSSM)
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D0CD4(appropriateCopy, v8);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        context2 = [appropriateCopy context];
        batchIdentifier = [context2 batchIdentifier];
        v14 = 138412290;
        v15 = batchIdentifier;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Batch %@, started tracing context with serverStorageFetchContext", &v14, 0xCu);
      }
    }

    context3 = [appropriateCopy context];
    [(IMBatchSetTrackingContext *)self setContextWithSSM:context3];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)noteNewIncomingBatchMessage:(id)message
{
  v20 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  [(IMBatchSetTrackingContext *)self grabContextIfAppropriate:messageCopy];
  trackingContexts = [(IMBatchSetTrackingContext *)self trackingContexts];
  context = [messageCopy context];
  batchIdentifier = [context batchIdentifier];
  v8 = [trackingContexts objectForKey:batchIdentifier];

  if (v8)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        context2 = [messageCopy context];
        batchIdentifier2 = [context2 batchIdentifier];
        v18 = 138412290;
        v19 = batchIdentifier2;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Batch identifier %@ seen more than once, is tracking compromised?", &v18, 0xCu);
      }

LABEL_9:
    }
  }

  else
  {
    v8 = [[IMBatchMessageTrackingContext alloc] initWith:messageCopy];
    trackingContexts2 = [(IMBatchSetTrackingContext *)self trackingContexts];
    context3 = [messageCopy context];
    batchIdentifier3 = [context3 batchIdentifier];
    [trackingContexts2 setObject:v8 forKey:batchIdentifier3];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        context4 = [messageCopy context];
        batchIdentifier4 = [context4 batchIdentifier];
        v18 = 138412290;
        v19 = batchIdentifier4;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Started tracking batch identifier %@", &v18, 0xCu);
      }

      goto LABEL_9;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)noteItemProcessed:(id)processed
{
  v25 = *MEMORY[0x277D85DE8];
  processedCopy = processed;
  v5 = [processedCopy objectForKey:*MEMORY[0x277D19F40]];
  v6 = [processedCopy objectForKey:*MEMORY[0x277D19F48]];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D0D7C();
    }
  }

  else
  {
    trackingContexts = [(IMBatchSetTrackingContext *)self trackingContexts];
    v10 = [trackingContexts objectForKey:v5];

    if (!v10)
    {
      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D0E78();
      }

      goto LABEL_20;
    }

    [v10 noteItemProcessed:v7];
    if ([v10 isComplete])
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v22 = v5;
          v23 = 2048;
          totalMessagesExpected = [v10 totalMessagesExpected];
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Completed processing of batch %@ with %lld messages, removing tracker", buf, 0x16u);
        }
      }

      trackingContexts2 = [(IMBatchSetTrackingContext *)self trackingContexts];
      [trackingContexts2 removeObjectForKey:v5];

      batchTracker = [(IMBatchSetTrackingContext *)self batchTracker];
      batchNumber = [v10 batchNumber];
      longLongValue = [batchNumber longLongValue];
      totalExpectedBatches = [(IMBatchSetTrackingContext *)self totalExpectedBatches];
      v20 = 0;
      [batchTracker trackPacket:longLongValue packetsExpected:objc_msgSend(totalExpectedBatches error:{"longLongValue"), &v20}];
      v17 = v20;

      if (v17)
      {
        v18 = IMLogHandleForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D0DE8(v10, v18);
        }
      }

LABEL_20:
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)isComplete
{
  totalExpectedBatches = [(IMBatchSetTrackingContext *)self totalExpectedBatches];
  if (totalExpectedBatches && (v4 = totalExpectedBatches, [(IMBatchSetTrackingContext *)self batchTracker], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    batchTracker = [(IMBatchSetTrackingContext *)self batchTracker];
    isComplete = [batchTracker isComplete];
  }

  else
  {
    batchTracker = [(IMBatchSetTrackingContext *)self trackingContexts];
    if ([batchTracker count])
    {
      isComplete = 0;
    }

    else
    {
      contextWithSSM = [(IMBatchSetTrackingContext *)self contextWithSSM];
      isComplete = contextWithSSM != 0;
    }
  }

  return isComplete;
}

- (void)submitStorageProcessingComplete
{
  v18 = *MEMORY[0x277D85DE8];
  service = [(IMBatchSetTrackingContext *)self service];
  if (service && ([(IMBatchSetTrackingContext *)self contextWithSSM], v4 = objc_claimAutoreleasedReturnValue(), v4, service, v4))
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        contextWithSSM = [(IMBatchSetTrackingContext *)self contextWithSSM];
        contextWithSSM2 = [(IMBatchSetTrackingContext *)self contextWithSSM];
        batchIdentifier = [contextWithSSM2 batchIdentifier];
        v14 = 134218242;
        v15 = contextWithSSM;
        v16 = 2112;
        v17 = batchIdentifier;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Sending batch complete for %p: batchID %@", &v14, 0x16u);
      }
    }

    v9 = objc_alloc(MEMORY[0x277D18990]);
    contextWithSSM3 = [(IMBatchSetTrackingContext *)self contextWithSSM];
    v11 = [v9 initWithBatchMessageContext:contextWithSSM3];

    [(IMBatchSetTrackingContext *)self setContextWithSSM:0];
    service2 = [(IMBatchSetTrackingContext *)self service];
    [service2 sendBatchMessageProcessedContext:v11];
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D0EE4(self, v11);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end