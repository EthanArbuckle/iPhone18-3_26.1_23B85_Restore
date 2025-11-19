@interface IMPendingReplicatedMessageCache
+ (id)sharedCache;
- (IMPendingReplicatedMessageCache)init;
- (id)releasedReplicatedGUIDForGUID:(id)a3;
- (void)_enforceCacheLimit;
- (void)_enforceTimeout;
- (void)_metricMatchingFailureWithReason:(id)a3;
- (void)_removePendingMessageWithGUID:(id)a3;
- (void)_scheduleTimeout;
- (void)addPendingMessageWithGUID:(id)a3 replicatedFallbackGUIDs:(id)a4 releaseBlock:(id)a5;
- (void)clearPendingMessageWithGUID:(id)a3;
- (void)releasePendingMessageWithGUID:(id)a3 serviceName:(id)a4 chat:(id)a5 completion:(id)a6;
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

- (void)addPendingMessageWithGUID:(id)a3 replicatedFallbackGUIDs:(id)a4 releaseBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IMPendingReplicatedMessageCache *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B4FC380;
  v15[3] = &unk_278702F50;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(v11, v15);
}

- (void)releasePendingMessageWithGUID:(id)a3 serviceName:(id)a4 chat:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(IMPendingReplicatedMessageCache *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4FC7BC;
  block[3] = &unk_278702F78;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_sync(v14, block);
}

- (void)clearPendingMessageWithGUID:(id)a3
{
  v4 = a3;
  v5 = [(IMPendingReplicatedMessageCache *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B4FCAD0;
  v7[3] = &unk_278702FA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (id)releasedReplicatedGUIDForGUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_22B4D7610;
  v16 = sub_22B4D7860;
  v17 = 0;
  v5 = [(IMPendingReplicatedMessageCache *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4FCC20;
  block[3] = &unk_278702FC8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)_removePendingMessageWithGUID:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(IMPendingReplicatedMessageCache *)self pendingMessages];
    v6 = [v5 objectForKeyedSubscript:v4];

    v7 = [(IMPendingReplicatedMessageCache *)self pendingMessages];
    [v7 setObject:0 forKeyedSubscript:v4];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v6 replicatedFallbackGUIDs];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          v13 = [(IMPendingReplicatedMessageCache *)self pendingMessages];
          [v13 setObject:0 forKeyedSubscript:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v9);
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v6 replicatedFallbackGUIDs];
        *buf = 138412546;
        v26 = v4;
        v27 = 2112;
        v28 = v15;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Removed pending replicated message %@ (fallback GUIDs: %@) from cache", buf, 0x16u);
      }
    }

    v16 = [(IMPendingReplicatedMessageCache *)self pendingMessages];
    v17 = [v16 count] == 0;

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

      v19 = [(IMPendingReplicatedMessageCache *)self timeoutTimer];
      [v19 invalidate];

      [(IMPendingReplicatedMessageCache *)self setTimeoutTimer:0];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleTimeout
{
  v3 = [(IMPendingReplicatedMessageCache *)self timeoutTimer];
  v4 = [v3 isValid];

  if ((v4 & 1) == 0)
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
      v4 = [(IMPendingReplicatedMessageCache *)self pendingMessages];
      *buf = 134218240;
      v25 = [v4 count];
      v26 = 2048;
      v27 = 128;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Enforcing cache timeout, has %llu messages (limit %llu)", buf, 0x16u);
    }
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(IMPendingReplicatedMessageCache *)self pendingMessages];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22B4FD3E0;
  v21[3] = &unk_278703018;
  v7 = v5;
  v22 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v21];

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
  v3 = [(IMPendingReplicatedMessageCache *)self pendingMessages];
  v4 = [v3 count];

  if (v4 >= 0x80)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [(IMPendingReplicatedMessageCache *)self pendingMessages];
        *buf = 134218240;
        v22 = [v6 count];
        v23 = 2048;
        v24 = 128;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Enforcing cache limit, has %llu messages (limit %llu)", buf, 0x16u);
      }
    }

    v7 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:1];
    v8 = [(IMPendingReplicatedMessageCache *)self pendingMessages];
    v9 = [v8 allValues];
    v20 = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v11 = [v9 sortedArrayUsingDescriptors:v10];

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
          v16 = [v14 messageGUID];
          *buf = v19;
          v22 = v16;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Evicting message %@", buf, 0xCu);
        }
      }

      v17 = [v14 messageGUID];
      [(IMPendingReplicatedMessageCache *)self _removePendingMessageWithGUID:v17];

      ++v12;
    }

    while (v12 != 25);
    [(IMPendingReplicatedMessageCache *)self _metricMatchingFailureWithReason:@"Replicated Message Cache Overflow"];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_metricMatchingFailureWithReason:(id)a3
{
  v3 = MEMORY[0x277D1AAA8];
  v4 = a3;
  v5 = [v3 sharedInstance];
  [v5 forceAutoBugCaptureWithSubType:v4 errorPayload:0];
}

@end