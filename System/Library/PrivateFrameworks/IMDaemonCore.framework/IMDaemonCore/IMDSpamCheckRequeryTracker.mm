@interface IMDSpamCheckRequeryTracker
+ (id)sharedTracker;
- (IMDSpamCheckRequeryTracker)init;
- (IMDSpamCheckRequeryTracker)initWithInterval:(double)interval timeout:(double)timeout;
- (void)_clearTimer;
- (void)_startTimer;
- (void)_updateRecord:(id)record;
- (void)_updateTracker;
- (void)dealloc;
- (void)startTrackingMessageGUID:(id)d chat:(id)chat;
- (void)startTrackingRecord:(id)record;
- (void)stopTrackingRecord:(id)record;
@end

@implementation IMDSpamCheckRequeryTracker

+ (id)sharedTracker
{
  if (qword_281420ED8 != -1)
  {
    sub_22B7CF4AC();
  }

  v3 = qword_281420EC8;

  return v3;
}

- (IMDSpamCheckRequeryTracker)init
{
  v2 = [(IMDSpamCheckRequeryTracker *)self initWithInterval:600.0 timeout:172800.0];
  if (v2)
  {
    v3 = +[IMDTrustKitDecisioningManager sharedManager];
    decisioningManager = v2->_decisioningManager;
    v2->_decisioningManager = v3;
  }

  return v2;
}

- (IMDSpamCheckRequeryTracker)initWithInterval:(double)interval timeout:(double)timeout
{
  v12.receiver = self;
  v12.super_class = IMDSpamCheckRequeryTracker;
  v6 = [(IMDSpamCheckRequeryTracker *)&v12 init];
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "initiating spam filtering requery tracker", v11, 2u);
      }
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    trackedRecords = v6->_trackedRecords;
    v6->_trackedRecords = v8;

    v6->_updateTimeInterval = interval;
    v6->_timerTimeout = timeout;
  }

  return v6;
}

- (void)startTrackingMessageGUID:(id)d chat:(id)chat
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  chatCopy = chat;
  decisioningManager = [(IMDSpamCheckRequeryTracker *)self decisioningManager];
  if ([decisioningManager isJunkFilteringEnabled] && objc_msgSend(chatCopy, "isFiltered"))
  {
    isFiltered = [chatCopy isFiltered];

    if (isFiltered != 2)
    {
      if (dCopy && ([chatCopy guid], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v17 = 138412290;
            v18 = dCopy;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "startTrackingMessageGUID %@", &v17, 0xCu);
          }
        }

        v12 = [IMDSpamCheckRequeryTrackerRecord alloc];
        guid = [chatCopy guid];
        v14 = [(IMDSpamCheckRequeryTrackerRecord *)v12 initWithMessageGUID:dCopy chatGUID:guid];

        [(IMDSpamCheckRequeryTracker *)self startTrackingRecord:v14];
      }

      else
      {
        v16 = IMLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_22B7CF4C0(chatCopy, dCopy, v16);
        }
      }
    }
  }

  else
  {
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)startTrackingRecord:(id)record
{
  v14 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  messageGUID = [recordCopy messageGUID];
  if ([messageGUID length])
  {
    trackedRecords = [(IMDSpamCheckRequeryTracker *)self trackedRecords];
    v7 = [trackedRecords objectForKeyedSubscript:messageGUID];

    if (!v7)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v12 = 138412290;
          v13 = messageGUID;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Tracking guid %@", &v12, 0xCu);
        }
      }

      v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:self->_timerTimeout];
      [recordCopy setExpirationDate:v9];

      trackedRecords2 = [(IMDSpamCheckRequeryTracker *)self trackedRecords];
      [trackedRecords2 setObject:recordCopy forKeyedSubscript:messageGUID];

      [(IMDSpamCheckRequeryTracker *)self _startTimer];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopTrackingRecord:(id)record
{
  v15 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  messageGUID = [recordCopy messageGUID];
  if ([messageGUID length])
  {
    trackedRecords = [(IMDSpamCheckRequeryTracker *)self trackedRecords];
    v7 = [trackedRecords objectForKeyedSubscript:messageGUID];

    if (v7)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v13 = 138412290;
          v14 = messageGUID;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Stopping tracking of guid %@", &v13, 0xCu);
        }
      }

      trackedRecords2 = [(IMDSpamCheckRequeryTracker *)self trackedRecords];
      [trackedRecords2 setObject:0 forKeyedSubscript:messageGUID];

      trackedRecords3 = [(IMDSpamCheckRequeryTracker *)self trackedRecords];
      v11 = [trackedRecords3 count] == 0;

      if (v11)
      {
        [(IMDSpamCheckRequeryTracker *)self _clearTimer];
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_startTimer
{
  updateTimer = [(IMDSpamCheckRequeryTracker *)self updateTimer];

  if (updateTimer)
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Timer already exists", buf, 2u);
    }
  }

  else
  {
    v4 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
    v5 = [v4 objectForKey:@"imd-spam-requery-update-time-interval"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 intValue] >= 1)
    {
      self->_updateTimeInterval = [v5 intValue];
    }

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Starting timer", buf, 2u);
      }
    }

    objc_initWeak(buf, self);
    v7 = MEMORY[0x277CBEBB8];
    updateTimeInterval = self->_updateTimeInterval;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_22B4E7E40;
    v10[3] = &unk_278702978;
    objc_copyWeak(&v11, buf);
    v9 = [v7 scheduledTimerWithTimeInterval:0 repeats:v10 block:updateTimeInterval];
    [(IMDSpamCheckRequeryTracker *)self setUpdateTimer:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)_clearTimer
{
  updateTimer = [(IMDSpamCheckRequeryTracker *)self updateTimer];

  if (updateTimer)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Invalidating timer", v6, 2u);
      }
    }

    updateTimer2 = [(IMDSpamCheckRequeryTracker *)self updateTimer];
    [updateTimer2 invalidate];

    [(IMDSpamCheckRequeryTracker *)self setUpdateTimer:0];
  }
}

- (void)dealloc
{
  updateTimer = [(IMDSpamCheckRequeryTracker *)self updateTimer];
  [updateTimer invalidate];

  v4.receiver = self;
  v4.super_class = IMDSpamCheckRequeryTracker;
  [(IMDSpamCheckRequeryTracker *)&v4 dealloc];
}

- (void)_updateTracker
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Requerying TrustKit Decisioning", buf, 2u);
    }
  }

  trackedRecords = [(IMDSpamCheckRequeryTracker *)self trackedRecords];
  allValues = [trackedRecords allValues];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B4E80D4;
  v7[3] = &unk_2787029A0;
  v7[4] = self;
  [allValues enumerateObjectsUsingBlock:v7];

  trackedRecords2 = [(IMDSpamCheckRequeryTracker *)self trackedRecords];
  [trackedRecords2 removeAllObjects];

  [(IMDSpamCheckRequeryTracker *)self _clearTimer];
}

- (void)_updateRecord:(id)record
{
  v29 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = +[IMDChatRegistry sharedInstance];
  chatGUID = [recordCopy chatGUID];
  v7 = [v5 existingChatWithGUID:chatGUID];

  v8 = +[IMDMessageStore sharedInstance];
  messageGUID = [recordCopy messageGUID];
  v10 = [v8 messageWithGUID:messageGUID];

  if (v10)
  {
    if (([v10 isRead] & 1) == 0)
    {
      if (v7)
      {
        decisioningManager = self->_decisioningManager;
        sender = [v10 sender];
        LOBYTE(decisioningManager) = [(IMDTrustKitDecisioningManager *)decisioningManager shouldSkipTrustKitDecisioningForChat:v7 sender:sender];

        if ((decisioningManager & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              messageGUID2 = [recordCopy messageGUID];
              *buf = 138412290;
              v28 = messageGUID2;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Processing update for %@", buf, 0xCu);
            }
          }

          v23 = self->_decisioningManager;
          sender2 = [v10 sender];
          serviceName = [v7 serviceName];
          rcsAdvisedAction = [v10 rcsAdvisedAction];
          body = [v10 body];
          countryCode = [v10 countryCode];
          messageContainsOneTimeCode = [v10 messageContainsOneTimeCode];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = sub_22B4E83C0;
          v24[3] = &unk_2787029F0;
          v25 = v7;
          v26 = v10;
          LOBYTE(v22) = messageContainsOneTimeCode;
          [(IMDTrustKitDecisioningManager *)v23 requestDecisionForSender:sender2 service:serviceName trustIndicator:rcsAdvisedAction messageBody:body countryCode:countryCode requestReason:2 containsOneTimeCode:v22 completionHandler:v24];
        }
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end