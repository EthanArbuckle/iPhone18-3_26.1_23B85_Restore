@interface IMDMessageFromStorageController
+ (BOOL)anyStorageControllerIsAwaitingStorageTimer;
+ (id)SMSStorageController;
+ (id)iMessageStorageController;
- (IMDMessageFromStorageController)initWithMessageStore:(id)a3;
- (id)broadcaster;
- (void)_postMessagesFromStorage:(id)a3;
- (void)_storageTimerFired;
- (void)_submitStorageMetricsWithError:(unint64_t)a3;
- (void)_updateStorageTimerWithInterval:(double)a3;
- (void)decrementPendingReadReceiptFromStorageCount;
- (void)noteBatchMessage:(id)a3 fromAccount:(id)a4 usingService:(id)a5;
- (void)noteItemFromStorage:(id)a3 extendsStorageTimer:(BOOL)a4;
- (void)noteItemProcessed:(BOOL)a3 batchContext:(id)a4 usingService:(id)a5;
- (void)noteLastItemFromStorage:(id)a3;
- (void)noteLastItemProcessedWithError:(unint64_t)a3;
@end

@implementation IMDMessageFromStorageController

+ (id)iMessageStorageController
{
  if (qword_281421328 != -1)
  {
    sub_22B7D1018();
  }

  [qword_281421320 setServiceName:*MEMORY[0x277D1A620]];
  v2 = qword_281421320;

  return v2;
}

+ (id)SMSStorageController
{
  if (qword_281421468 != -1)
  {
    sub_22B7D102C();
  }

  [qword_281421460 setServiceName:*MEMORY[0x277D1A610]];
  v2 = qword_281421460;

  return v2;
}

+ (BOOL)anyStorageControllerIsAwaitingStorageTimer
{
  v3 = [a1 iMessageStorageController];
  v4 = [v3 isAwaitingStorageTimer];

  if (v4)
  {
    return 1;
  }

  v6 = [a1 SMSStorageController];
  v7 = [v6 isAwaitingStorageTimer];

  return v7;
}

- (IMDMessageFromStorageController)initWithMessageStore:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = IMDMessageFromStorageController;
  v6 = [(IMDMessageFromStorageController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageStore, a3);
    *&v7->_storageTimerInterval = xmmword_22B7F85C0;
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    trackingContexts = v7->_trackingContexts;
    v7->_trackingContexts = v8;
  }

  return v7;
}

- (id)broadcaster
{
  v2 = +[IMDBroadcastController sharedProvider];
  v3 = [v2 broadcasterForChatListeners];

  return v3;
}

- (void)noteBatchMessage:(id)a3 fromAccount:(id)a4 usingService:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v11 = [v10 isComingOnlineEnabled];

  if (v11)
  {
    v12 = [v18 context];
    if (v12)
    {
      v13 = [(IMDMessageFromStorageController *)self trackingContexts];
      v14 = [v8 uniqueID];
      v15 = [v13 objectForKey:v14];

      if (v15)
      {
        [(IMBatchSetTrackingContext *)v15 noteNewIncomingBatchMessage:v18];
      }

      else
      {
        v15 = [[IMBatchSetTrackingContext alloc] initWithAccount:v8 service:v9 message:v18];
        v16 = [(IMDMessageFromStorageController *)self trackingContexts];
        v17 = [v8 uniqueID];
        [v16 setObject:v15 forKey:v17];
      }
    }
  }
}

- (void)noteItemProcessed:(BOOL)a3 batchContext:(id)a4 usingService:(id)a5
{
  v6 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v11 = [v10 isComingOnlineEnabled];

  if (v11)
  {
    v12 = [v8 objectForKeyedSubscript:*MEMORY[0x277D19F30]];
    if (v12)
    {
      v13 = [(IMDMessageFromStorageController *)self trackingContexts];
      v14 = [v13 objectForKey:v12];

      if (v14)
      {
        [v14 noteItemProcessed:v8];
        if ([v14 isComplete])
        {
          if (IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v19 = 138412290;
              v20 = v12;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Batch Set for account %@ complete, removing tracker and sending completion", &v19, 0xCu);
            }
          }

          v16 = [(IMDMessageFromStorageController *)self trackingContexts];
          [v16 removeObjectForKey:v12];

          [v14 submitStorageProcessingComplete];
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v19 = 138412290;
          v20 = v12;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "BatchTrack: Can't find tracking context for account %@", &v19, 0xCu);
        }
      }
    }
  }

  else if (v6)
  {
    [(IMDMessageFromStorageController *)self noteLastItemProcessed];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)noteItemFromStorage:(id)a3 extendsStorageTimer:(BOOL)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = [(IMDMessageFromStorageController *)self messageStore];
    [v7 setSuppressDatabaseUpdates:1];

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v6;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Noting item from storage (%@)", &v17, 0xCu);
      }
    }

    if (self->_timingComingBackFromStorage)
    {
      v9 = self->_messagesProcessedComingBackFromStorage + 1;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "This is the first item from storage starting timer", &v17, 2u);
        }
      }

      v11 = objc_alloc_init(MEMORY[0x277D192C0]);
      timingComingBackFromStorage = self->_timingComingBackFromStorage;
      self->_timingComingBackFromStorage = v11;

      [(IMTimingCollection *)self->_timingComingBackFromStorage startTimingForKey:@"ProcessingMessagesFromStorage"];
      self->_messagesProcessedComingBackFromStorage = 0;
      v9 = 1;
    }

    self->_messagesProcessedComingBackFromStorage = v9;
    messagesReceivedDuringStorage = self->_messagesReceivedDuringStorage;
    if (!messagesReceivedDuringStorage)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v15 = self->_messagesReceivedDuringStorage;
      self->_messagesReceivedDuringStorage = v14;

      messagesReceivedDuringStorage = self->_messagesReceivedDuringStorage;
    }

    [(NSMutableSet *)messagesReceivedDuringStorage addObject:v6];
    if (a4 || !self->_storageTimer)
    {
      [(IMDMessageFromStorageController *)self storageTimerInterval];
      [(IMDMessageFromStorageController *)self _updateStorageTimerWithInterval:?];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)noteLastItemFromStorage:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(IMDMessageFromStorageController *)self messageStore];
    [v5 setSuppressDatabaseUpdates:1];

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v4;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Noting last item from storage (%@)", &v11, 0xCu);
      }
    }

    messagesReceivedDuringStorage = self->_messagesReceivedDuringStorage;
    if (!messagesReceivedDuringStorage)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v9 = self->_messagesReceivedDuringStorage;
      self->_messagesReceivedDuringStorage = v8;

      messagesReceivedDuringStorage = self->_messagesReceivedDuringStorage;
    }

    [(NSMutableSet *)messagesReceivedDuringStorage addObject:v4];
    [(IMDMessageFromStorageController *)self lastMessageStorageTimerInterval];
    [(IMDMessageFromStorageController *)self _updateStorageTimerWithInterval:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)noteLastItemProcessedWithError:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  timingComingBackFromStorage = self->_timingComingBackFromStorage;
  if (timingComingBackFromStorage)
  {
    [(IMTimingCollection *)timingComingBackFromStorage stopTimingForKey:@"ProcessingMessagesFromStorage"];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = self->_timingComingBackFromStorage;
        messagesProcessedComingBackFromStorage = self->_messagesProcessedComingBackFromStorage;
        v11 = 134218242;
        v12 = messagesProcessedComingBackFromStorage;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Finished processing %lu items from storage %@", &v11, 0x16u);
      }
    }

    [(IMDMessageFromStorageController *)self _submitStorageMetricsWithError:a3];
    v9 = self->_timingComingBackFromStorage;
    self->_timingComingBackFromStorage = 0;

    self->_messagesProcessedComingBackFromStorage = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_submitStorageMetricsWithError:(unint64_t)a3
{
  v18[4] = *MEMORY[0x277D85DE8];
  if (IMIsRunningInUnitTesting())
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Should not be submitting metrics during unit tests. This method should be stubbed", &v15, 2u);
      }
    }
  }

  else
  {
    v17[0] = *MEMORY[0x277D1A328];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_messagesProcessedComingBackFromStorage];
    v18[0] = v6;
    v17[1] = *MEMORY[0x277D1A370];
    v7 = MEMORY[0x277CCABB0];
    [(IMTimingCollection *)self->_timingComingBackFromStorage totalTimeForKey:@"ProcessingMessagesFromStorage"];
    v8 = [v7 numberWithDouble:?];
    v18[1] = v8;
    v17[2] = *MEMORY[0x277D1A358];
    v9 = [(IMDMessageFromStorageController *)self serviceName];
    v18[2] = v9;
    v17[3] = *MEMORY[0x277D1A350];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v18[3] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Submitting message from storage metric with dictionary %@", &v15, 0xCu);
      }
    }

    v13 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v13 trackEvent:*MEMORY[0x277D1A1F8] withDictionary:v11];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateStorageTimerWithInterval:(double)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 > 0.0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v11 = 134217984;
        v12 = a3;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Scheduling a storage invalidation timer in: %f", &v11, 0xCu);
      }
    }

    storageTimer = self->_storageTimer;
    if (storageTimer)
    {
      [(NSTimer *)storageTimer invalidate];
      v7 = self->_storageTimer;
      self->_storageTimer = 0;
    }

    v8 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__storageTimerFired selector:0 userInfo:0 repeats:a3];
    v9 = self->_storageTimer;
    self->_storageTimer = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_storageTimerFired
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(IMDMessageFromStorageController *)self pendingReadReceiptFromStorageCount])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "We have pending read receipts to process after storage timer fired, delaying by 15s", &v17, 2u);
      }
    }

    [(IMDMessageFromStorageController *)self setPendingReadReceiptFromStorageCount:0];
    [(IMDMessageFromStorageController *)self _updateStorageTimerWithInterval:15.0];
    v4 = [(IMDMessageFromStorageController *)self messageStore];
    [v4 setSuppressDatabaseUpdates:1];
  }

  else
  {
    [(NSTimer *)self->_storageTimer invalidate];
    storageTimer = self->_storageTimer;
    self->_storageTimer = 0;

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(NSMutableSet *)self->_messagesReceivedDuringStorage count];
        messagesReceivedDuringStorage = self->_messagesReceivedDuringStorage;
        v17 = 134218242;
        v18 = v7;
        v19 = 2112;
        v20 = messagesReceivedDuringStorage;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Storage timer fired, have %lu guids we need to process: %@", &v17, 0x16u);
      }
    }

    if ([(NSMutableSet *)self->_messagesReceivedDuringStorage count])
    {
      v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:self->_messagesReceivedDuringStorage];
    }

    else
    {
      v4 = 0;
    }

    if (self->_timingComingBackFromStorage)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Chat: Missed lastItemProcessed.  This time is likely off by the last storage timer", &v17, 2u);
        }
      }

      [(IMDMessageFromStorageController *)self noteLastItemProcessedWithError:1];
    }

    v10 = self->_messagesReceivedDuringStorage;
    self->_messagesReceivedDuringStorage = 0;

    v11 = [(IMDMessageFromStorageController *)self messageStore];
    [v11 setSuppressDatabaseUpdates:0];

    v12 = [(IMDMessageFromStorageController *)self messageStore];
    v13 = [v4 allObjects];
    v14 = [v12 messagesWithGUIDs:v13];

    [(IMDMessageFromStorageController *)self _postMessagesFromStorage:v14];
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 postNotificationName:*MEMORY[0x277D19F60] object:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_postMessagesFromStorage:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v3;
  v24 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v24)
  {
    v22 = *v36;
    do
    {
      v6 = 0;
      do
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v6;
        v7 = *(*(&v35 + 1) + 8 * v6);
        context = objc_autoreleasePoolPush();
        v8 = [(IMDMessageFromStorageController *)self messageStore];
        v9 = [v8 chatsForMessage:v7];

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v32;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v32 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v31 + 1) + 8 * i);
              if (([v15 isBlackholed] & 1) == 0)
              {
                v16 = [v15 guid];
                v17 = [v4 objectForKey:v16];
                if (!v17)
                {
                  v17 = [MEMORY[0x277CBEB18] array];
                }

                [v17 addObject:v7];
                [v4 setObject:v17 forKey:v16];
                [v5 setObject:v15 forKey:v16];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v12);
        }

        objc_autoreleasePoolPop(context);
        v6 = v26 + 1;
      }

      while (v26 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v24);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_22B53EC38;
  v27[3] = &unk_278703E60;
  v28 = v5;
  v29 = self;
  v30 = obj;
  v18 = obj;
  v19 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v27];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)decrementPendingReadReceiptFromStorageCount
{
  pendingReadReceiptFromStorageCount = self->_pendingReadReceiptFromStorageCount;
  if (pendingReadReceiptFromStorageCount)
  {
    [(IMDMessageFromStorageController *)self setPendingReadReceiptFromStorageCount:pendingReadReceiptFromStorageCount - 1];
  }
}

@end