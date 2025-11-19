@interface IMDCKRampManager
+ (id)sharedInstance;
- (IMDCKRampManager)init;
- (id)_rampUpRecordID;
- (void)_fetchLatestRampStateFromCK:(id)a3;
- (void)_performRampCheckWithRetryAfter:(double)a3 recordFetchedCompletionBlock:(id)a4;
- (void)_scheduleOperation:(id)a3;
- (void)cachedRampState:(id)a3;
- (void)dealloc;
- (void)fetchLatestRampStateFromCK:(id)a3;
@end

@implementation IMDCKRampManager

+ (id)sharedInstance
{
  if (qword_281421180 != -1)
  {
    sub_22B7D68C0();
  }

  v3 = qword_281421000;

  return v3;
}

- (IMDCKRampManager)init
{
  v6.receiver = self;
  v6.super_class = IMDCKRampManager;
  v2 = [(IMDCKRampManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.private.Messages.IMDCKRampManager", 0);
    ckQueue = v2->_ckQueue;
    v2->_ckQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(IMDCKRampManager *)self retryTimer];

  if (v3)
  {
    v4 = [(IMDCKRampManager *)self retryTimer];
    [v4 invalidate];

    [(IMDCKRampManager *)self setRetryTimer:0];
  }

  v5.receiver = self;
  v5.super_class = IMDCKRampManager;
  [(IMDCKRampManager *)&v5 dealloc];
}

- (void)_scheduleOperation:(id)a3
{
  v3 = a3;
  v5 = +[IMDCKDatabaseManager sharedInstance];
  v4 = [v5 truthDatabase];
  [v4 addOperation:v3];
}

- (id)_rampUpRecordID
{
  v2 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"metadata_zone"];
  v3 = objc_alloc(MEMORY[0x277CBC5D0]);
  v4 = [v2 zoneID];
  v5 = [v3 initWithRecordName:@"metadata_rampstate_v3" zoneID:v4];

  return v5;
}

- (void)_fetchLatestRampStateFromCK:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v5 setAllowsCellularAccess:1];
  [v5 setQualityOfService:17];
  v6 = objc_alloc(MEMORY[0x277CBC3E0]);
  v7 = [(IMDCKRampManager *)self _rampUpRecordID];
  v8 = IMSingleObjectArray();
  v9 = [v6 initWithRecordIDs:v8];

  [v9 setDesiredKeys:&unk_283F4EF30];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v9 operationID];
      v12 = [v9 desiredKeys];
      *buf = 138412546;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Starting ramp operation %@ Desired keys %@", buf, 0x16u);
    }
  }

  v13 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  [v13 setName:@"Sync.fetch.RampState"];
  [v9 setGroup:v13];
  [v9 setConfiguration:v5];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = sub_22B61F37C;
  v21 = &unk_278703830;
  v22 = self;
  v14 = v4;
  v23 = v14;
  [v9 setFetchRecordsCompletionBlock:&v18];
  [v9 setPerRecordCompletionBlock:{&unk_283F1A6E8, v18, v19, v20, v21, v22}];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v9 operationID];
      *buf = 138412290;
      v25 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Attempting to fetch ramp state from CloudKit with operation %@", buf, 0xCu);
    }
  }

  [(IMDCKRampManager *)self _scheduleOperation:v9];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_performRampCheckWithRetryAfter:(double)a3 recordFetchedCompletionBlock:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(IMDCKRampManager *)self retryTimer];
  v8 = [v7 isValid];

  v9 = IMOSLoggingEnabled();
  if (v8)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [(IMDCKRampManager *)self retryTimer];
        v12 = [v11 fireDate];
        *buf = 138412290;
        v25 = *&v12;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Not setting up new retryAfter, last one is firing at %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v9)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v25 = a3;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "scheduling new timer with retryAfter %f", buf, 0xCu);
      }
    }

    v14 = MEMORY[0x277CBEBB8];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = sub_22B61FC90;
    v21 = &unk_278706710;
    v22 = self;
    v23 = v6;
    v15 = [v14 timerWithTimeInterval:0 repeats:&v18 block:a3];
    [(IMDCKRampManager *)self setRetryTimer:v15, v18, v19, v20, v21, v22];
    v16 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v16 addTimer:v15 forMode:*MEMORY[0x277CBE738]];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)fetchLatestRampStateFromCK:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D1ACB8] sharedInstance];
  v6 = [v5 isUnderFirstDataProtectionLock];

  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Not Requesting ramp state. Is under first unlock.", buf, 2u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B61FFA4;
    block[3] = &unk_2787028D8;
    v9 = &v16;
    v16 = v4;
    v10 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (v7)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Request to fetch ramp state", buf, 2u);
      }
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22B61FFC4;
    v13[3] = &unk_278706788;
    v9 = &v14;
    v13[4] = self;
    v14 = v4;
    v12 = v4;
    [(IMDCKRampManager *)self cachedRampState:v13];
  }
}

- (void)cachedRampState:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"RampStateOverride", *MEMORY[0x277D19A08], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v5 = AppBooleanValue == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = *MEMORY[0x277D19BB0];
    v7 = IMGetCachedDomainValueForKey();
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D19BB8]];
    v9 = [v8 BOOLValue];

    v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277D19BC0]];
    v11 = [v10 BOOLValue];

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = @"NO";
        if (v9)
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        if (v11)
        {
          v13 = @"YES";
        }

        *buf = 138412546;
        v20 = v14;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "cachedRampState featurePromoted(%@) fetchHadServerError(%@)", buf, 0x16u);
      }
    }

    if (v3)
    {
      v3[2](v3, v9, v11);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Defaults override, returning YES", buf, 2u);
      }
    }

    if (v3)
    {
      v3[2](v3, 1, 0);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end