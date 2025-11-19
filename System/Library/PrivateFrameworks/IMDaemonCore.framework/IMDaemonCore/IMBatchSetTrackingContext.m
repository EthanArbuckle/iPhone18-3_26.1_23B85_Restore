@interface IMBatchSetTrackingContext
- (BOOL)isComplete;
- (IMBatchSetTrackingContext)initWithAccount:(id)a3 service:(id)a4 message:(id)a5;
- (void)grabContextIfAppropriate:(id)a3;
- (void)noteItemProcessed:(id)a3;
- (void)noteNewIncomingBatchMessage:(id)a3;
- (void)submitStorageProcessingComplete;
@end

@implementation IMBatchSetTrackingContext

- (IMBatchSetTrackingContext)initWithAccount:(id)a3 service:(id)a4 message:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = IMBatchSetTrackingContext;
  v12 = [(IMBatchSetTrackingContext *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, a3);
    objc_storeStrong(&v13->_service, a4);
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    trackingContexts = v13->_trackingContexts;
    v13->_trackingContexts = v14;

    [(IMBatchSetTrackingContext *)v13 noteNewIncomingBatchMessage:v11];
    if ([v11 hasValidPagination])
    {
      v16 = [v11 context];
      v17 = [v16 totalBatchCount];
      totalExpectedBatches = v13->_totalExpectedBatches;
      v13->_totalExpectedBatches = v17;

      v19 = objc_alloc_init(MEMORY[0x277D1AB20]);
      batchTracker = v13->_batchTracker;
      v13->_batchTracker = v19;

      v21 = [(IMBatchSetTrackingContext *)v13 batchTracker];
      v22 = [(IMBatchSetTrackingContext *)v13 totalExpectedBatches];
      [v21 setPacketsExpected:{objc_msgSend(v22, "longLongValue")}];
    }
  }

  return v13;
}

- (void)grabContextIfAppropriate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 serverStorageFetchContext];

  if (v6)
  {
    v7 = [(IMBatchSetTrackingContext *)self contextWithSSM];

    if (v7)
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D0CD4(v4, v8);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v4 context];
        v11 = [v10 batchIdentifier];
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Batch %@, started tracing context with serverStorageFetchContext", &v14, 0xCu);
      }
    }

    v12 = [v4 context];
    [(IMBatchSetTrackingContext *)self setContextWithSSM:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)noteNewIncomingBatchMessage:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(IMBatchSetTrackingContext *)self grabContextIfAppropriate:v4];
  v5 = [(IMBatchSetTrackingContext *)self trackingContexts];
  v6 = [v4 context];
  v7 = [v6 batchIdentifier];
  v8 = [v5 objectForKey:v7];

  if (v8)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v4 context];
        v11 = [v10 batchIdentifier];
        v18 = 138412290;
        v19 = v11;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Batch identifier %@ seen more than once, is tracking compromised?", &v18, 0xCu);
      }

LABEL_9:
    }
  }

  else
  {
    v8 = [[IMBatchMessageTrackingContext alloc] initWith:v4];
    v12 = [(IMBatchSetTrackingContext *)self trackingContexts];
    v13 = [v4 context];
    v14 = [v13 batchIdentifier];
    [v12 setObject:v8 forKey:v14];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v15 = [v4 context];
        v16 = [v15 batchIdentifier];
        v18 = 138412290;
        v19 = v16;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Started tracking batch identifier %@", &v18, 0xCu);
      }

      goto LABEL_9;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)noteItemProcessed:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:*MEMORY[0x277D19F40]];
  v6 = [v4 objectForKey:*MEMORY[0x277D19F48]];
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
    v9 = [(IMBatchSetTrackingContext *)self trackingContexts];
    v10 = [v9 objectForKey:v5];

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
          v24 = [v10 totalMessagesExpected];
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Completed processing of batch %@ with %lld messages, removing tracker", buf, 0x16u);
        }
      }

      v12 = [(IMBatchSetTrackingContext *)self trackingContexts];
      [v12 removeObjectForKey:v5];

      v13 = [(IMBatchSetTrackingContext *)self batchTracker];
      v14 = [v10 batchNumber];
      v15 = [v14 longLongValue];
      v16 = [(IMBatchSetTrackingContext *)self totalExpectedBatches];
      v20 = 0;
      [v13 trackPacket:v15 packetsExpected:objc_msgSend(v16 error:{"longLongValue"), &v20}];
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
  v3 = [(IMBatchSetTrackingContext *)self totalExpectedBatches];
  if (v3 && (v4 = v3, [(IMBatchSetTrackingContext *)self batchTracker], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(IMBatchSetTrackingContext *)self batchTracker];
    v7 = [v6 isComplete];
  }

  else
  {
    v6 = [(IMBatchSetTrackingContext *)self trackingContexts];
    if ([v6 count])
    {
      v7 = 0;
    }

    else
    {
      v8 = [(IMBatchSetTrackingContext *)self contextWithSSM];
      v7 = v8 != 0;
    }
  }

  return v7;
}

- (void)submitStorageProcessingComplete
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(IMBatchSetTrackingContext *)self service];
  if (v3 && ([(IMBatchSetTrackingContext *)self contextWithSSM], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [(IMBatchSetTrackingContext *)self contextWithSSM];
        v7 = [(IMBatchSetTrackingContext *)self contextWithSSM];
        v8 = [v7 batchIdentifier];
        v14 = 134218242;
        v15 = v6;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Sending batch complete for %p: batchID %@", &v14, 0x16u);
      }
    }

    v9 = objc_alloc(MEMORY[0x277D18990]);
    v10 = [(IMBatchSetTrackingContext *)self contextWithSSM];
    v11 = [v9 initWithBatchMessageContext:v10];

    [(IMBatchSetTrackingContext *)self setContextWithSSM:0];
    v12 = [(IMBatchSetTrackingContext *)self service];
    [v12 sendBatchMessageProcessedContext:v11];
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