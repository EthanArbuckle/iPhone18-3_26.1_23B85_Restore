@interface IMBatchMessageTrackingContext
- (BOOL)isComplete;
- (IMBatchMessageTrackingContext)initWith:(id)a3;
- (void)noteItemProcessed:(id)a3;
@end

@implementation IMBatchMessageTrackingContext

- (IMBatchMessageTrackingContext)initWith:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = IMBatchMessageTrackingContext;
  v5 = [(IMBatchMessageTrackingContext *)&v17 init];
  if (v5)
  {
    v6 = [v4 context];
    v7 = [v6 batchIdentifier];
    batchIdentifier = v5->_batchIdentifier;
    v5->_batchIdentifier = v7;

    v9 = [v4 messages];
    v5->_totalMessagesExpected = [v9 count];

    if ([(IMBatchMessageTrackingContext *)v5 totalMessagesExpected]< 1)
    {
      messageTracker = v5->_messageTracker;
      v5->_messageTracker = 0;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277D1AB20]);
      v11 = v5->_messageTracker;
      v5->_messageTracker = v10;

      messageTracker = [(IMBatchMessageTrackingContext *)v5 messageTracker];
      [messageTracker setPacketsExpected:{-[IMBatchMessageTrackingContext totalMessagesExpected](v5, "totalMessagesExpected")}];
    }

    if ([v4 hasValidPagination])
    {
      v13 = [v4 context];
      v14 = [v13 batchNumber];
      batchNumber = v5->_batchNumber;
      v5->_batchNumber = v14;
    }
  }

  return v5;
}

- (void)noteItemProcessed:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(IMBatchMessageTrackingContext *)self messageTracker];
    v10 = 0;
    [v5 trackPacket:objc_msgSend(v4 packetsExpected:"longLongValue") error:{-[IMBatchMessageTrackingContext totalMessagesExpected](self, "totalMessagesExpected"), &v10}];
    v6 = v10;

    if (v6 && IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [(IMBatchMessageTrackingContext *)self totalMessagesExpected];
        *buf = 138412802;
        v12 = v4;
        v13 = 2048;
        v14 = v8;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Error tracking message index %@ in batch (size %ld): error %@", buf, 0x20u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isComplete
{
  v3 = [(IMBatchMessageTrackingContext *)self messageTracker];
  if (v3)
  {
    v4 = [(IMBatchMessageTrackingContext *)self messageTracker];
    v5 = [v4 isComplete];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end