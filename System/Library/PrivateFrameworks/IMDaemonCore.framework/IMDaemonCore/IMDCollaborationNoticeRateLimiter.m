@interface IMDCollaborationNoticeRateLimiter
+ (id)loadNoticeEventHistory;
+ (id)peristencePath;
- (BOOL)shouldSendNotice:(id)a3;
- (IMDCollaborationNoticeRateLimiter)init;
- (id)dateLastUpdatedForURL:(id)a3;
- (int64_t)thresholdForNoticeType:(int64_t)a3;
- (void)didSendNotice:(id)a3;
- (void)saveNoticeEventHistory;
@end

@implementation IMDCollaborationNoticeRateLimiter

- (IMDCollaborationNoticeRateLimiter)init
{
  v8.receiver = self;
  v8.super_class = IMDCollaborationNoticeRateLimiter;
  v2 = [(IMDCollaborationNoticeRateLimiter *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("IMDCollaborationNoticeRateLimiter.persistenceQueue", 0);
    persistenceQueue = v2->_persistenceQueue;
    v2->_persistenceQueue = v3;

    v5 = +[IMDCollaborationNoticeRateLimiter loadNoticeEventHistory];
    noticeEventHistory = v2->_noticeEventHistory;
    v2->_noticeEventHistory = v5;
  }

  return v2;
}

- (BOOL)shouldSendNotice:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [IMDCollaborationNoticeDispatcher unarchiveNoticeTransmissionEvent:v4];
    v6 = [v5 highlightURL];
    v7 = [v6 absoluteString];

    if (!v7)
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D836C();
      }

      v10 = 0;
      goto LABEL_33;
    }

    v8 = *MEMORY[0x277D19D90];
    if (IMGetDomainBoolForKeyWithDefaultValue())
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "RateLimiter: Overriden by kRateLimiterOverride, approved to send.", buf, 2u);
        }
      }
    }

    else
    {
      v12 = [(IMDCollaborationNoticeRateLimiter *)self noticeEventHistory];
      v13 = [v12 objectForKey:v7];

      if (v13)
      {
        v14 = +[IMDCollaborationNoticeTypeGenerator sharedGenerator];
        v15 = [v14 typeForHighlightEvent:v5];

        v16 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
        v37 = [v16 stringValue];

        v17 = [(IMDCollaborationNoticeRateLimiter *)self noticeEventHistory];
        v18 = [v17 objectForKeyedSubscript:v7];
        v19 = [v18 objectForKeyedSubscript:v37];

        if (v19)
        {
          v36 = [MEMORY[0x277CBEAA8] date];
          v20 = [MEMORY[0x277CBEA80] currentCalendar];
          v21 = [v20 components:64 fromDate:v19 toDate:v36 options:0];

          v22 = [(IMDCollaborationNoticeRateLimiter *)self thresholdForNoticeType:v15];
          v23 = [v21 minute];
          v10 = v23 >= v22;
          if (IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              if (v23 < v22)
              {
                v25 = @"NO";
              }

              else
              {
                v25 = @"YES";
              }

              v35 = v21;
              v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v21, "minute", v25)}];
              [MEMORY[0x277CCABB0] numberWithInteger:v22];
              *buf = 138413058;
              v39 = v33;
              v40 = 2112;
              v41 = v37;
              v42 = 2112;
              v43 = v26;
              v45 = v44 = 2112;
              v34 = v26;
              v27 = v45;
              _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "RateLimiter: result=%@ for noticeType: %@, elapsedMinutes: %@ < threshold: %@", buf, 0x2Au);

              v21 = v35;
            }
          }

          if (v23 < v22)
          {
            v28 = [(IMDCollaborationNoticeRateLimiter *)self noticeEventHistory];
            v29 = [v28 objectForKeyedSubscript:v7];
            [v29 setObject:v36 forKeyedSubscript:@"lastUpdated"];
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v30 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v39 = v37;
              _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "RateLimiter: noticeType (%@) hasn't been sent before, approved to send.", buf, 0xCu);
            }
          }

          v10 = 1;
        }

        goto LABEL_33;
      }
    }

    v10 = 1;
LABEL_33:

    goto LABEL_34;
  }

  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D83E4();
  }

  v10 = 0;
LABEL_34:

  v31 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)didSendNotice:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [IMDCollaborationNoticeDispatcher unarchiveNoticeTransmissionEvent:v4];
    v6 = [v5 highlightURL];
    v7 = [v6 absoluteString];

    if (v7)
    {
      v8 = +[IMDCollaborationNoticeTypeGenerator sharedGenerator];
      v9 = [v8 typeForHighlightEvent:v5];

      v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
      v11 = [v10 stringValue];

      v12 = [MEMORY[0x277CBEAA8] date];
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v24 = 136315906;
          v25 = "[IMDCollaborationNoticeRateLimiter didSendNotice:]";
          v26 = 2112;
          v27 = v7;
          v28 = 2112;
          v29 = v11;
          v30 = 2112;
          v31 = v12;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "%s url: %@, noticeType: %@ => %@", &v24, 0x2Au);
        }
      }

      v14 = [(IMDCollaborationNoticeRateLimiter *)self noticeEventHistory];
      v15 = [v14 objectForKey:v7];
      v16 = v15 == 0;

      if (v16)
      {
        v17 = [MEMORY[0x277CBEB38] dictionary];
        v18 = [(IMDCollaborationNoticeRateLimiter *)self noticeEventHistory];
        [v18 setObject:v17 forKeyedSubscript:v7];
      }

      v19 = [(IMDCollaborationNoticeRateLimiter *)self noticeEventHistory];
      v20 = [v19 objectForKeyedSubscript:v7];
      [v20 setObject:v12 forKeyedSubscript:@"lastUpdated"];

      v21 = [(IMDCollaborationNoticeRateLimiter *)self noticeEventHistory];
      v22 = [v21 objectForKeyedSubscript:v7];
      [v22 setObject:v12 forKeyedSubscript:v11];

      [(IMDCollaborationNoticeRateLimiter *)self saveNoticeEventHistory];
    }

    else
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D845C();
      }
    }
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D84D4();
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)dateLastUpdatedForURL:(id)a3
{
  v4 = [a3 absoluteString];
  v5 = [(IMDCollaborationNoticeRateLimiter *)self noticeEventHistory];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [(IMDCollaborationNoticeRateLimiter *)self noticeEventHistory];
    v8 = [v7 objectForKeyedSubscript:v4];
    v9 = [v8 objectForKeyedSubscript:@"lastUpdated"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)thresholdForNoticeType:(int64_t)a3
{
  if ((a3 - 8) < 2)
  {
    return MEMORY[0x2821F9670](IMDCollaborationNoticeRateLimiter, sel_participantChangeThreshold);
  }

  if ((a3 - 2) > 1)
  {
    return MEMORY[0x2821F9670](IMDCollaborationNoticeRateLimiter, sel_defaultThreshold);
  }

  return MEMORY[0x2821F9670](IMDCollaborationNoticeRateLimiter, sel_commentThreshold);
}

+ (id)peristencePath
{
  if (qword_281421258 != -1)
  {
    sub_22B7D854C();
  }

  v3 = qword_281421250;

  return v3;
}

+ (id)loadNoticeEventHistory
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = +[IMDCollaborationNoticeRateLimiter peristencePath];
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    v5 = MEMORY[0x277CBEBC0];
    v6 = +[IMDCollaborationNoticeRateLimiter peristencePath];
    v7 = [v5 fileURLWithPath:v6];

    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfURL:v7];
    v9 = IMOSLoggingEnabled();
    if (v8)
    {
      if (v9)
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v19 = 138412290;
          v20 = v8;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Loaded noticeEventHistory: %@", &v19, 0xCu);
        }
      }

      v11 = v8;
    }

    else
    {
      if (v9)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Loaded empty dictionary, creating a new dictionary.", &v19, 2u);
        }
      }

      v11 = [MEMORY[0x277CBEB38] dictionary];
    }

    v15 = v11;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Creating rateLimiter persistence.", &v19, 2u);
      }
    }

    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = +[IMDCollaborationNoticeRateLimiter peristencePath];
    [v13 createFileAtPath:v14 contents:0 attributes:0];

    v15 = [MEMORY[0x277CBEB38] dictionary];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)saveNoticeEventHistory
{
  persistenceQueue = self->_persistenceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B65EADC;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_sync(persistenceQueue, block);
}

@end