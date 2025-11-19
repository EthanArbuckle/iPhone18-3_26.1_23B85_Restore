@interface IMDOffGridAvailabilityTracker
+ (IMDOffGridAvailabilityTracker)sharedTracker;
- (IMDOffGridAvailabilityTracker)init;
- (void)_clearTimer;
- (void)_startTimer;
- (void)_updateTracker;
- (void)dealloc;
- (void)startTrackingHandle:(id)a3;
- (void)stopTrackingHandle:(id)a3;
@end

@implementation IMDOffGridAvailabilityTracker

+ (IMDOffGridAvailabilityTracker)sharedTracker
{
  if (qword_281420EE0 != -1)
  {
    sub_22B7D992C();
  }

  v3 = qword_281420ED0;

  return v3;
}

- (IMDOffGridAvailabilityTracker)init
{
  v6.receiver = self;
  v6.super_class = IMDOffGridAvailabilityTracker;
  v2 = [(IMDOffGridAvailabilityTracker *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    trackedHandles = v2->_trackedHandles;
    v2->_trackedHandles = v3;
  }

  return v2;
}

- (void)startTrackingHandle:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 ID];
  if ([v5 length])
  {
    v6 = [(IMDOffGridAvailabilityTracker *)self trackedHandles];
    v7 = [v6 objectForKeyedSubscript:v5];

    if (!v7)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v13 = 138412290;
          v14 = v5;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Tracking handle %@", &v13, 0xCu);
        }
      }

      v9 = objc_alloc_init(IMDOffGridAvailabilityTrackerRecord);
      [(IMDOffGridAvailabilityTrackerRecord *)v9 setHandle:v4];
      v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:172800.0];
      [(IMDOffGridAvailabilityTrackerRecord *)v9 setExpirationDate:v10];

      v11 = [(IMDOffGridAvailabilityTracker *)self trackedHandles];
      [v11 setObject:v9 forKeyedSubscript:v5];

      [(IMDOffGridAvailabilityTracker *)self _startTimer];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)stopTrackingHandle:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 ID];
  if ([v5 length])
  {
    v6 = [(IMDOffGridAvailabilityTracker *)self trackedHandles];
    v7 = [v6 objectForKeyedSubscript:v5];

    if (v7)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = [v4 ID];
          v14 = 138412290;
          v15 = v9;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Stopping tracking of handle %@", &v14, 0xCu);
        }
      }

      v10 = [(IMDOffGridAvailabilityTracker *)self trackedHandles];
      [v10 setObject:0 forKeyedSubscript:v5];

      v11 = [(IMDOffGridAvailabilityTracker *)self trackedHandles];
      v12 = [v11 count] == 0;

      if (v12)
      {
        [(IMDOffGridAvailabilityTracker *)self _clearTimer];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_startTimer
{
  v3 = [(IMDOffGridAvailabilityTracker *)self updateTimer];

  if (!v3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting timer", buf, 2u);
      }
    }

    objc_initWeak(buf, self);
    v5 = MEMORY[0x277CBEBB8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_22B6CE020;
    v7[3] = &unk_278702978;
    objc_copyWeak(&v8, buf);
    v6 = [v5 scheduledTimerWithTimeInterval:1 repeats:v7 block:600.0];
    [(IMDOffGridAvailabilityTracker *)self setUpdateTimer:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

- (void)_clearTimer
{
  v3 = [(IMDOffGridAvailabilityTracker *)self updateTimer];

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

    v5 = [(IMDOffGridAvailabilityTracker *)self updateTimer];
    [v5 invalidate];

    [(IMDOffGridAvailabilityTracker *)self setUpdateTimer:0];
  }
}

- (void)dealloc
{
  v3 = [(IMDOffGridAvailabilityTracker *)self updateTimer];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = IMDOffGridAvailabilityTracker;
  [(IMDOffGridAvailabilityTracker *)&v4 dealloc];
}

- (void)_updateTracker
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Updating off grid status tracking", v5, 2u);
    }
  }

  v4 = [(IMDOffGridAvailabilityTracker *)self trackedHandles];
  [v4 enumerateKeysAndObjectsUsingBlock:&unk_283F1B288];
}

@end