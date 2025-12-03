@interface IMPendingReplicatedMessageCache
+ (id)sharedCache;
- (IMPendingReplicatedMessageCache)init;
- (id)releasedReplicatedGUIDForGUID:(id)d;
- (void)_enforceCacheLimit;
- (void)_enforceTimeout;
- (void)_metricMatchingFailureWithReason:(id)reason;
- (void)_removePendingMessageWithGUID:(id)d;
- (void)_scheduleTimeout;
- (void)addPendingMessageWithGUID:(id)d replicatedFallbackGUIDs:(id)ds releaseBlock:(id)block;
- (void)clearPendingMessageWithGUID:(id)d;
- (void)releasePendingMessageWithGUID:(id)d serviceName:(id)name chat:(id)chat completion:(id)completion;
@end

@implementation IMPendingReplicatedMessageCache

+ (id)sharedCache
{
  if (qword_27D8CFDB8 != -1)
  {
    sub_22B7CFA00();
  }

  v3 = qword_27D8CFDB0;

  return v3;
}

- (IMPendingReplicatedMessageCache)init
{
  v11.receiver = self;
  v11.super_class = IMPendingReplicatedMessageCache;
  v2 = [(IMPendingReplicatedMessageCache *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.Messages.IMPendingReplicatedMessageCache", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingMessages = v2->_pendingMessages;
    v2->_pendingMessages = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEA78]);
    replicatedFallbackHistory = v2->_replicatedFallbackHistory;
    v2->_replicatedFallbackHistory = v8;

    [(NSCache *)v2->_replicatedFallbackHistory setCountLimit:1024];
  }

  return v2;
}

- (void)addPendingMessageWithGUID:(id)d replicatedFallbackGUIDs:(id)ds releaseBlock:(id)block
{
  dCopy = d;
  dsCopy = ds;
  blockCopy = block;
  queue = [(IMPendingReplicatedMessageCache *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B4FC380;
  v15[3] = &unk_278702F50;
  v15[4] = self;
  v16 = dCopy;
  v17 = dsCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = dsCopy;
  v14 = dCopy;
  dispatch_sync(queue, v15);
}

- (void)releasePendingMessageWithGUID:(id)d serviceName:(id)name chat:(id)chat completion:(id)completion
{
  dCopy = d;
  nameCopy = name;
  chatCopy = chat;
  completionCopy = completion;
  queue = [(IMPendingReplicatedMessageCache *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4FC7BC;
  block[3] = &unk_278702F78;
  block[4] = self;
  v20 = dCopy;
  v21 = nameCopy;
  v22 = chatCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = chatCopy;
  v17 = nameCopy;
  v18 = dCopy;
  dispatch_sync(queue, block);
}

- (void)clearPendingMessageWithGUID:(id)d
{
  dCopy = d;
  queue = [(IMPendingReplicatedMessageCache *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B4FCAD0;
  v7[3] = &unk_278702FA0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(queue, v7);
}

- (id)releasedReplicatedGUIDForGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_22B4D7610;
  v16 = sub_22B4D7860;
  v17 = 0;
  queue = [(IMPendingReplicatedMessageCache *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4FCC20;
  block[3] = &unk_278702FC8;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)_removePendingMessageWithGUID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy length])
  {
    pendingMessages = [(IMPendingReplicatedMessageCache *)self pendingMessages];
    v6 = [pendingMessages objectForKeyedSubscript:dCopy];

    pendingMessages2 = [(IMPendingReplicatedMessageCache *)self pendingMessages];
    [pendingMessages2 setObject:0 forKeyedSubscript:dCopy];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    replicatedFallbackGUIDs = [v6 replicatedFallbackGUIDs];
    v9 = [replicatedFallbackGUIDs countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v9)
    {
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(replicatedFallbackGUIDs);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          pendingMessages3 = [(IMPendingReplicatedMessageCache *)self pendingMessages];
          [pendingMessages3 setObject:0 forKeyedSubscript:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [replicatedFallbackGUIDs countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v9);
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        replicatedFallbackGUIDs2 = [v6 replicatedFallbackGUIDs];
        *buf = 138412546;
        v26 = dCopy;
        v27 = 2112;
        v28 = replicatedFallbackGUIDs2;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Removed pending replicated message %@ (fallback GUIDs: %@) from cache", buf, 0x16u);
      }
    }

    pendingMessages4 = [(IMPendingReplicatedMessageCache *)self pendingMessages];
    v17 = [pendingMessages4 count] == 0;

    if (v17)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "No more pending messages, invalidating timer for timeout enforcement", buf, 2u);
        }
      }

      timeoutTimer = [(IMPendingReplicatedMessageCache *)self timeoutTimer];
      [timeoutTimer invalidate];

      [(IMPendingReplicatedMessageCache *)self setTimeoutTimer:0];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleTimeout
{
  timeoutTimer = [(IMPendingReplicatedMessageCache *)self timeoutTimer];
  isValid = [timeoutTimer isValid];

  if ((isValid & 1) == 0)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x277CBEBB8];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = sub_22B4FD060;
    v10 = &unk_278702978;
    objc_copyWeak(&v11, &location);
    v6 = [v5 scheduledTimerWithTimeInterval:1 repeats:&v7 block:1800.0];
    [(IMPendingReplicatedMessageCache *)self setTimeoutTimer:v6, v7, v8, v9, v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)_enforceTimeout
{
  v28 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      pendingMessages = [(IMPendingReplicatedMessageCache *)self pendingMessages];
      *buf = 134218240;
      v25 = [pendingMessages count];
      v26 = 2048;
      v27 = 128;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Enforcing cache timeout, has %llu messages (limit %llu)", buf, 0x16u);
    }
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  pendingMessages2 = [(IMPendingReplicatedMessageCache *)self pendingMessages];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22B4FD3E0;
  v21[3] = &unk_278703018;
  v7 = v5;
  v22 = v7;
  [pendingMessages2 enumerateKeysAndObjectsUsingBlock:v21];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v9)
  {
    v11 = *v18;
    *&v10 = 138412290;
    v16 = v10;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = v16;
            v25 = v13;
            _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Timing out message %@", buf, 0xCu);
          }
        }

        [(IMPendingReplicatedMessageCache *)self _removePendingMessageWithGUID:v13, v16, v17];
        ++v12;
      }

      while (v9 != v12);
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v9);
  }

  if ([v8 count])
  {
    [(IMPendingReplicatedMessageCache *)self _metricMatchingFailureWithReason:@"Replicated Message Deferral Timeout"];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_enforceCacheLimit
{
  v25 = *MEMORY[0x277D85DE8];
  pendingMessages = [(IMPendingReplicatedMessageCache *)self pendingMessages];
  v4 = [pendingMessages count];

  if (v4 >= 0x80)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        pendingMessages2 = [(IMPendingReplicatedMessageCache *)self pendingMessages];
        *buf = 134218240;
        v22 = [pendingMessages2 count];
        v23 = 2048;
        v24 = 128;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Enforcing cache limit, has %llu messages (limit %llu)", buf, 0x16u);
      }
    }

    v7 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:1];
    pendingMessages3 = [(IMPendingReplicatedMessageCache *)self pendingMessages];
    allValues = [pendingMessages3 allValues];
    v20 = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v11 = [allValues sortedArrayUsingDescriptors:v10];

    v12 = 0;
    *&v13 = 138412290;
    v19 = v13;
    do
    {
      if (v12 >= [v11 count])
      {
        break;
      }

      v14 = [v11 objectAtIndexedSubscript:v12];
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          messageGUID = [v14 messageGUID];
          *buf = v19;
          v22 = messageGUID;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Evicting message %@", buf, 0xCu);
        }
      }

      messageGUID2 = [v14 messageGUID];
      [(IMPendingReplicatedMessageCache *)self _removePendingMessageWithGUID:messageGUID2];

      ++v12;
    }

    while (v12 != 25);
    [(IMPendingReplicatedMessageCache *)self _metricMatchingFailureWithReason:@"Replicated Message Cache Overflow"];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_metricMatchingFailureWithReason:(id)reason
{
  v3 = MEMORY[0x277D1AAA8];
  reasonCopy = reason;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance forceAutoBugCaptureWithSubType:reasonCopy errorPayload:0];
}

@end