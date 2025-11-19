@interface IMDSpamCheckRequeryTracker
+ (id)sharedTracker;
- (IMDSpamCheckRequeryTracker)init;
- (IMDSpamCheckRequeryTracker)initWithInterval:(double)a3 timeout:(double)a4;
- (void)_clearTimer;
- (void)_startTimer;
- (void)_updateRecord:(id)a3;
- (void)_updateTracker;
- (void)dealloc;
- (void)startTrackingMessageGUID:(id)a3 chat:(id)a4;
- (void)startTrackingRecord:(id)a3;
- (void)stopTrackingRecord:(id)a3;
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

- (IMDSpamCheckRequeryTracker)initWithInterval:(double)a3 timeout:(double)a4
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

    v6->_updateTimeInterval = a3;
    v6->_timerTimeout = a4;
  }

  return v6;
}

- (void)startTrackingMessageGUID:(id)a3 chat:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(IMDSpamCheckRequeryTracker *)self decisioningManager];
  if ([v8 isJunkFilteringEnabled] && objc_msgSend(v7, "isFiltered"))
  {
    v9 = [v7 isFiltered];

    if (v9 != 2)
    {
      if (v6 && ([v7 guid], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v17 = 138412290;
            v18 = v6;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "startTrackingMessageGUID %@", &v17, 0xCu);
          }
        }

        v12 = [IMDSpamCheckRequeryTrackerRecord alloc];
        v13 = [v7 guid];
        v14 = [(IMDSpamCheckRequeryTrackerRecord *)v12 initWithMessageGUID:v6 chatGUID:v13];

        [(IMDSpamCheckRequeryTracker *)self startTrackingRecord:v14];
      }

      else
      {
        v16 = IMLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_22B7CF4C0(v7, v6, v16);
        }
      }
    }
  }

  else
  {
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)startTrackingRecord:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 messageGUID];
  if ([v5 length])
  {
    v6 = [(IMDSpamCheckRequeryTracker *)self trackedRecords];
    v7 = [v6 objectForKeyedSubscript:v5];

    if (!v7)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v12 = 138412290;
          v13 = v5;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Tracking guid %@", &v12, 0xCu);
        }
      }

      v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:self->_timerTimeout];
      [v4 setExpirationDate:v9];

      v10 = [(IMDSpamCheckRequeryTracker *)self trackedRecords];
      [v10 setObject:v4 forKeyedSubscript:v5];

      [(IMDSpamCheckRequeryTracker *)self _startTimer];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopTrackingRecord:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 messageGUID];
  if ([v5 length])
  {
    v6 = [(IMDSpamCheckRequeryTracker *)self trackedRecords];
    v7 = [v6 objectForKeyedSubscript:v5];

    if (v7)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v13 = 138412290;
          v14 = v5;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Stopping tracking of guid %@", &v13, 0xCu);
        }
      }

      v9 = [(IMDSpamCheckRequeryTracker *)self trackedRecords];
      [v9 setObject:0 forKeyedSubscript:v5];

      v10 = [(IMDSpamCheckRequeryTracker *)self trackedRecords];
      v11 = [v10 count] == 0;

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
  v3 = [(IMDSpamCheckRequeryTracker *)self updateTimer];

  if (v3)
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
  v3 = [(IMDSpamCheckRequeryTracker *)self updateTimer];

  if (v3)
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

    v5 = [(IMDSpamCheckRequeryTracker *)self updateTimer];
    [v5 invalidate];

    [(IMDSpamCheckRequeryTracker *)self setUpdateTimer:0];
  }
}

- (void)dealloc
{
  v3 = [(IMDSpamCheckRequeryTracker *)self updateTimer];
  [v3 invalidate];

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

  v4 = [(IMDSpamCheckRequeryTracker *)self trackedRecords];
  v5 = [v4 allValues];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B4E80D4;
  v7[3] = &unk_2787029A0;
  v7[4] = self;
  [v5 enumerateObjectsUsingBlock:v7];

  v6 = [(IMDSpamCheckRequeryTracker *)self trackedRecords];
  [v6 removeAllObjects];

  [(IMDSpamCheckRequeryTracker *)self _clearTimer];
}

- (void)_updateRecord:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[IMDChatRegistry sharedInstance];
  v6 = [v4 chatGUID];
  v7 = [v5 existingChatWithGUID:v6];

  v8 = +[IMDMessageStore sharedInstance];
  v9 = [v4 messageGUID];
  v10 = [v8 messageWithGUID:v9];

  if (v10)
  {
    if (([v10 isRead] & 1) == 0)
    {
      if (v7)
      {
        decisioningManager = self->_decisioningManager;
        v12 = [v10 sender];
        LOBYTE(decisioningManager) = [(IMDTrustKitDecisioningManager *)decisioningManager shouldSkipTrustKitDecisioningForChat:v7 sender:v12];

        if ((decisioningManager & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v14 = [v4 messageGUID];
              *buf = 138412290;
              v28 = v14;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Processing update for %@", buf, 0xCu);
            }
          }

          v23 = self->_decisioningManager;
          v15 = [v10 sender];
          v16 = [v7 serviceName];
          v17 = [v10 rcsAdvisedAction];
          v18 = [v10 body];
          v19 = [v10 countryCode];
          v20 = [v10 messageContainsOneTimeCode];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = sub_22B4E83C0;
          v24[3] = &unk_2787029F0;
          v25 = v7;
          v26 = v10;
          LOBYTE(v22) = v20;
          [(IMDTrustKitDecisioningManager *)v23 requestDecisionForSender:v15 service:v16 trustIndicator:v17 messageBody:v18 countryCode:v19 requestReason:2 containsOneTimeCode:v22 completionHandler:v24];
        }
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end