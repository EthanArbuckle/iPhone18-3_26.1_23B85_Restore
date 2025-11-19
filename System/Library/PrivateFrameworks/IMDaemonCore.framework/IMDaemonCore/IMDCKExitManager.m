@interface IMDCKExitManager
+ (id)sharedInstance;
- (BOOL)_analyticZoneCreated;
- (BOOL)_canSubmitCloudKitAnalytic;
- (BOOL)_canSubmitCloudKitMetric;
- (BOOL)_saltZoneCreated;
- (BOOL)_subscriptionCreated;
- (CKRecordID)exitRecordID;
- (IMDCKDatabaseManager)databaseManager;
- (IMDCKExitManager)init;
- (NSDate)exitRecordDate;
- (NSError)errorFetchingExitDate;
- (id)_modifiedOpGroupName:(id)a3;
- (id)analyticZoneRecordID;
- (id)exitConfiguration;
- (id)initRecordZoneManager:(id)a3 databaseManager:(id)a4;
- (id)syncCompleteRecordID;
- (int64_t)derivedQualityOfService;
- (void)_evalToggleiCloudSettingsSwitch;
- (void)_fetchExitRecordDateWithCompletion:(id)a3;
- (void)_scheduleMetricOperation:(id)a3;
- (void)_scheduleOperation:(id)a3;
- (void)_setUpSubscription;
- (void)_submitCloudKitMetricWithOperationGroupName:(id)a3 record:(id)a4 ignoreZoneNotFoundError:(BOOL)a5 completion:(id)a6;
- (void)deleteExitRecordWithCompletion:(id)a3;
- (void)exitRecordDateWithCompletion:(id)a3;
- (void)handleNotificationForSubscriptionID:(id)a3;
- (void)sendCloudKitZoneFetchRequestToNoteFeatureIsOn;
- (void)setErrorFetchingExitDate:(id)a3;
- (void)setExitRecordDate:(id)a3;
- (void)submitCloudKitAnalyticWithDictionary:(id)a3 operationGroupName:(id)a4 completion:(id)a5;
- (void)submitCloudKitAnalyticWithOperationGroupName:(id)a3 analyticDictionary:(id)a4;
- (void)submitCloudKitMetricWithData:(id)a3 operationGroupName:(id)a4 completion:(id)a5;
- (void)submitCloudKitMetricWithOperationGroupName:(id)a3;
- (void)writeExitRecordWithDate:(id)a3 completion:(id)a4;
- (void)writeInitialSyncCompletedRecordIfNeeded;
@end

@implementation IMDCKExitManager

+ (id)sharedInstance
{
  if (qword_281421108 != -1)
  {
    sub_22B7D0684();
  }

  v3 = qword_281420F78;

  return v3;
}

- (id)initRecordZoneManager:(id)a3 databaseManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = IMDCKExitManager;
  v9 = [(IMDCKExitManager *)&v13 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.private.IMDCKExitManager", 0);
    ckQueue = v9->_ckQueue;
    v9->_ckQueue = v10;

    objc_storeStrong(&v9->_recordZoneManager, a3);
    objc_storeStrong(&v9->_databaseManager, a4);
    v9->_fetchedExitDateOnLaunch = 0;
  }

  return v9;
}

- (IMDCKExitManager)init
{
  v3 = +[IMDRecordZoneManager sharedInstance];
  v4 = [(IMDCKExitManager *)self initRecordZoneManager:v3 databaseManager:0];

  if (v4 && (IMIsRunningInUnitTesting() & 1) == 0)
  {
    [(IMDCKExitManager *)v4 _setUpSubscription];
  }

  return v4;
}

- (void)_setUpSubscription
{
  v3 = [(IMDCKExitManager *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5235D8;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (NSDate)exitRecordDate
{
  exitRecordDate = self->_exitRecordDate;
  if (!exitRecordDate)
  {
    v4 = *MEMORY[0x277D19A08];
    v5 = *MEMORY[0x277D19AC8];
    v6 = IMGetCachedDomainValueForKey();
    v7 = self->_exitRecordDate;
    self->_exitRecordDate = v6;

    exitRecordDate = self->_exitRecordDate;
  }

  return exitRecordDate;
}

- (void)setExitRecordDate:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(IMDCKExitManager *)self exitRecordDate];
  if (!v5 || ([v5 isEqualToDate:v6] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = @"NO";
        v13 = 138412802;
        v14 = v6;
        v15 = 2112;
        if (v5)
        {
          v8 = @"YES";
        }

        v16 = v5;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Exit Record date has been modified, changing it from %@ to %@. Are we in exit state ? %@", &v13, 0x20u);
      }
    }

    v9 = *MEMORY[0x277D19A08];
    v10 = *MEMORY[0x277D19AC8];
    IMSetDomainValueForKey();
    v11 = *MEMORY[0x277D19B40];
    IMSetDomainBoolForKey();
    objc_storeStrong(&self->_exitRecordDate, a3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSError)errorFetchingExitDate
{
  errorFetchingExitDate = self->_errorFetchingExitDate;
  if (!errorFetchingExitDate)
  {
    v4 = *MEMORY[0x277D19A08];
    v5 = *MEMORY[0x277D19AC0];
    v6 = IMGetCachedDomainValueForKey();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      if (v7)
      {
        v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithSerializedError_im:v7];
        v9 = self->_errorFetchingExitDate;
        self->_errorFetchingExitDate = v8;
      }
    }

    errorFetchingExitDate = self->_errorFetchingExitDate;
  }

  return errorFetchingExitDate;
}

- (void)setErrorFetchingExitDate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(IMDCKExitManager *)self errorFetchingExitDate];
  if (!v5 || ([v5 isEqual:v6] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v13 = 138412546;
        v14 = v6;
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Error fetching exit record date has been modified, changing it from %@ to %@", &v13, 0x16u);
      }
    }

    if (v5)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Messages.IMDCKExitManagerErrorDomain" code:3 userInfo:0];
      v9 = [v8 serializedError_im];
    }

    else
    {
      v9 = 0;
    }

    v10 = *MEMORY[0x277D19A08];
    v11 = *MEMORY[0x277D19AC0];
    IMSetDomainValueForKey();
    objc_storeStrong(&self->_errorFetchingExitDate, a3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleNotificationForSubscriptionID:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Handling notification for subscriptionID: %@", &v7, 0xCu);
    }
  }

  if ([v4 isEqualToString:@"ExitRecordKeyManateeZoneSubscription"])
  {
    [(IMDCKExitManager *)self _fetchExitRecordDateWithCompletion:0];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)writeExitRecordWithDate:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Calling writeExitRecordWithDate. ExitDate: %@", buf, 0xCu);
    }
  }

  if (v6)
  {
    v9 = [(IMDCKExitManager *)self ckQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B523DC8;
    block[3] = &unk_2787037B8;
    block[4] = self;
    v14 = v6;
    v15 = v7;
    dispatch_async(v9, block);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "writeExitRecordWithDate, must be called with a non-nil exit date ignoring request", buf, 2u);
      }
    }

    if (v7)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Messages.IMDCKExitManagerErrorDomain" code:2 userInfo:0];
      (*(v7 + 2))(v7, 0, v11);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)exitRecordDateWithCompletion:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(IMDCKExitManager *)self exitRecordDate];
      v7 = [(IMDCKExitManager *)self errorFetchingExitDate];
      v8 = [(IMDCKExitManager *)self fetchedExitDateOnLaunch];
      v9 = @"NO";
      *buf = 138412802;
      v25 = v6;
      v26 = 2112;
      if (v8)
      {
        v9 = @"YES";
      }

      v27 = v7;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Calling exitRecordDateWithCompletion date: %@ error: %@ fetchedExitDateOnLaunch: %@", buf, 0x20u);
    }
  }

  if ([(IMDCKExitManager *)self fetchedExitDateOnLaunch]&& ([(IMDCKExitManager *)self errorFetchingExitDate], v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0, v10, v11))
  {
    if (v4)
    {
      v13 = [MEMORY[0x277CCACC8] currentThread];
      v14 = [v13 isMainThread];

      if (v14)
      {
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [(IMDCKExitManager *)self exitRecordDate];
            v17 = [(IMDCKExitManager *)self errorFetchingExitDate];
            *buf = 138412546;
            v25 = v16;
            v26 = 2112;
            v27 = v17;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Already on main queue exitDate: %@ error: %@", buf, 0x16u);
          }
        }

        v18 = [(IMDCKExitManager *)self exitRecordDate];
        v19 = [(IMDCKExitManager *)self errorFetchingExitDate];
        v4[2](v4, v18, v19);
      }

      else
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = sub_22B524898;
        v20[3] = &unk_278703808;
        v20[4] = self;
        v21 = v4;
        dispatch_async(MEMORY[0x277D85CD0], v20);
      }
    }
  }

  else
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_22B5246F4;
    v22[3] = &unk_2787037E0;
    v22[4] = self;
    v23 = v4;
    [(IMDCKExitManager *)self _fetchExitRecordDateWithCompletion:v22];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_evalToggleiCloudSettingsSwitch
{
  v2 = +[IMDCKUtilities sharedInstance];
  [v2 evalToggleiCloudSettingsSwitch];
}

- (void)_fetchExitRecordDateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IMDCKExitManager *)self ckQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B524AE8;
  v7[3] = &unk_278703808;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)deleteExitRecordWithCompletion:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Calling deleteExitRecordCompletionBlock", buf, 2u);
    }
  }

  v6 = [(IMDCKExitManager *)self ckQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B525340;
  v8[3] = &unk_278703808;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (CKRecordID)exitRecordID
{
  exitRecordID = self->_exitRecordID;
  if (!exitRecordID)
  {
    v4 = objc_alloc(MEMORY[0x277CBC5D0]);
    v5 = [(IMDCKExitManager *)self recordZoneManager];
    v6 = [v5 deDupeSaltZoneID];
    v7 = [v4 initWithRecordName:@"CloudKitExitRecord" zoneID:v6];
    v8 = self->_exitRecordID;
    self->_exitRecordID = v7;

    exitRecordID = self->_exitRecordID;
  }

  return exitRecordID;
}

- (id)syncCompleteRecordID
{
  v3 = objc_alloc(MEMORY[0x277CBC5D0]);
  v4 = [(IMDCKExitManager *)self recordZoneManager];
  v5 = [v4 metricZoneID];
  v6 = [v3 initWithRecordName:@"SyncCompleteRecord" zoneID:v5];

  return v6;
}

- (id)analyticZoneRecordID
{
  v3 = objc_alloc(MEMORY[0x277CBC5D0]);
  v4 = [(IMDCKExitManager *)self recordZoneManager];
  v5 = [v4 analyticRecordZoneID];
  v6 = [v3 initWithRecordName:@"AnalyticZoneRecord" zoneID:v5];

  return v6;
}

- (int64_t)derivedQualityOfService
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 qualityOfService];

  if (v3 <= 17)
  {
    v4 = 17;
  }

  else
  {
    v4 = v3;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x277CCACC8] currentThread];
      v9 = 134218240;
      v10 = [v6 qualityOfService];
      v11 = 2048;
      v12 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "QOS: 0x%lX target qos: 0x%lX", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)exitConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v3 setAllowsCellularAccess:1];
  [v3 setQualityOfService:{-[IMDCKExitManager derivedQualityOfService](self, "derivedQualityOfService")}];

  return v3;
}

- (IMDCKDatabaseManager)databaseManager
{
  databaseManager = self->_databaseManager;
  if (!databaseManager)
  {
    v4 = +[IMDCKDatabaseManager sharedInstance];
    v5 = self->_databaseManager;
    self->_databaseManager = v4;

    databaseManager = self->_databaseManager;
  }

  return databaseManager;
}

- (void)_scheduleOperation:(id)a3
{
  v4 = a3;
  v6 = [(IMDCKExitManager *)self databaseManager];
  v5 = [v6 truthDatabase];
  [v5 addOperation:v4];
}

- (BOOL)_saltZoneCreated
{
  saltZoneCreatedOverride = self->_saltZoneCreatedOverride;
  if (saltZoneCreatedOverride)
  {

    return [(NSNumber *)saltZoneCreatedOverride BOOLValue];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Checking if salt zone needs to be created", buf, 2u);
      }
    }

    *buf = 0;
    v17 = buf;
    v18 = 0x2020000000;
    v19 = 0;
    v6 = dispatch_semaphore_create(0);
    v7 = [(IMDCKExitManager *)self recordZoneManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22B525D90;
    v13[3] = &unk_278703880;
    v15 = buf;
    v8 = v6;
    v14 = v8;
    [v7 createDeDupeSaltZoneIfNeededWithCompletionBlock:v13];

    v9 = dispatch_time(0, 600000000000);
    if (dispatch_semaphore_wait(v8, v9))
    {
      v17[24] = 0;
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *v12 = 0;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "***** Timed out creating salt zone *******", v12, 2u);
        }
      }
    }

    v11 = v17[24];

    _Block_object_dispose(buf, 8);
    return v11;
  }
}

- (BOOL)_subscriptionCreated
{
  subscriptionCreatedOverride = self->_subscriptionCreatedOverride;
  if (subscriptionCreatedOverride)
  {

    return [(NSNumber *)subscriptionCreatedOverride BOOLValue];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Checking if exit zone subscription needs to be created", buf, 2u);
      }
    }

    *buf = 0;
    v17 = buf;
    v18 = 0x2020000000;
    v19 = 0;
    v6 = dispatch_semaphore_create(0);
    v7 = [(IMDCKExitManager *)self recordZoneManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22B5260F0;
    v13[3] = &unk_278703880;
    v15 = buf;
    v8 = v6;
    v14 = v8;
    [v7 createSubscriptionIfNeededOnDeDupeZoneForSubscription:@"ExitRecordKeyManateeZoneSubscription" recordType:@"Exit" completionBlock:v13];

    v9 = dispatch_time(0, 180000000000);
    if (dispatch_semaphore_wait(v8, v9))
    {
      v17[24] = 0;
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *v12 = 0;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "***** Timed out creating exit zone subscription *******", v12, 2u);
        }
      }
    }

    v11 = v17[24];

    _Block_object_dispose(buf, 8);
    return v11;
  }
}

- (void)writeInitialSyncCompletedRecordIfNeeded
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D1ACB8] sharedInstance];
  v4 = [v3 isUnderFirstDataProtectionLock];

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "writeInitialSyncCompletedRecordIfNeeded Not doing under first unlock", &v16, 2u);
      }

LABEL_31:
    }
  }

  else
  {
    v6 = *MEMORY[0x277D19A08];
    if ((IMGetDomainBoolForKeyWithDefaultValue() & 1) == 0)
    {
      IMSetDomainBoolForKey();
      v7 = [(IMDCKAbstractSyncController *)self syncState];
      v5 = [v7 lastSyncDate];

      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v16 = 138412290;
          v17 = v5;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "writeInitialSyncCompletedRecordIfNeeded Requesting last sync date for metrics: %@", &v16, 0xCu);
        }
      }

      if (v5)
      {
        v9 = [MEMORY[0x277CBEAA8] date];
        v10 = ([v5 differenceFromDate:v9]+ 7) < 8;
        v11 = IMOSLoggingEnabled();
        if (v10)
        {
          if (v11)
          {
            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              LOWORD(v16) = 0;
              _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Last sync was within the last 7 days", &v16, 2u);
            }
          }

          [(IMDCKExitManager *)self writeSyncCompletedRecordWithDate:v5 completion:&unk_283F197E8];
        }

        else if (v11)
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v16 = 138412290;
            v17 = v5;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "writeInitialSyncCompletedRecordIfNeeded last sync date %@ was not in last 7 days", &v16, 0xCu);
          }
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "writeInitialSyncCompletedRecordIfNeeded No last sync date", &v16, 2u);
        }
      }

      goto LABEL_31;
    }

    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "writeInitialSyncCompletedRecordIfNeeded We have already done this. Not doing again unless you do defaults delete com.apple.madrid initialSyncRecordHasBeenWritten", &v16, 2u);
      }

      goto LABEL_31;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)submitCloudKitMetricWithOperationGroupName:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v6 = [v5 cloudKitSyncingEnabled];

  v7 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v8 = [v7 serverAllowsMetricSubmission];

  if ((v6 & v8) == 1)
  {
    v9 = [MEMORY[0x277CBEAA8] date];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B5268D0;
    v14[3] = &unk_2787038A8;
    v14[4] = self;
    v15 = v4;
    [(IMDCKExitManager *)self submitCloudKitMetricWithData:v9 operationGroupName:v15 completion:v14];
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      if (v6)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (v8)
      {
        v11 = @"YES";
      }

      *buf = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "*** submitCloudKitMetricWithOperationGroupName not submitting MOC enabled: %@, serverAllowsSubmission: %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_analyticZoneCreated
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(IMDCKExitManager *)self recordZoneManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B526B90;
  v11[3] = &unk_278703880;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [v4 createAnalyticZoneIfNeededWithCompletionBlock:v11];

  v6 = dispatch_time(0, 300000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    *(v15 + 24) = 0;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "***** Timed out creating analytic zone *******", v10, 2u);
      }
    }
  }

  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

- (void)submitCloudKitAnalyticWithOperationGroupName:(id)a3 analyticDictionary:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
      *buf = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Request to submit dictionary (%@) opGroupName %@", buf, 0x16u);
    }
  }

  v10 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v11 = [v10 serverAllowsAnalyticSubmission];

  if (v11)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B526ED4;
    v14[3] = &unk_2787038D0;
    v14[4] = self;
    v15 = v7;
    v16 = v6;
    [(IMDCKExitManager *)self submitCloudKitAnalyticWithDictionary:v15 operationGroupName:v16 completion:v14];
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "*** submitCloudKitMetricWithOperationGroupName not submitting as analytic submission is not enabled", buf, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleMetricOperation:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDCKExitManager *)self databaseManager];
  v6 = [v5 manateeDataBase];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v4 group];
      v9 = [v8 name];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Performing metric operation name %@ using DB %@", &v11, 0x16u);
    }
  }

  [v6 addOperation:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_modifiedOpGroupName:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(IMDCKExitManager *)self _sharedCKUtilities];
  v7 = [v6 deviceActiveString];
  v8 = [v4 stringWithFormat:@"-%@", v7];

  v9 = [v5 stringByAppendingString:v8];

  return v9;
}

- (void)_submitCloudKitMetricWithOperationGroupName:(id)a3 record:(id)a4 ignoreZoneNotFoundError:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(IMDCKExitManager *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B527838;
  block[3] = &unk_278703948;
  v18 = v11;
  v19 = v10;
  v22 = a5;
  v20 = self;
  v21 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(v13, block);
}

- (BOOL)_canSubmitCloudKitMetric
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v3 = [v2 serverAllowsMetricSubmission];

  v4 = [MEMORY[0x277D19268] sharedInstance];
  v5 = [v4 isInternalInstall];

  if ((v3 & 1) == 0 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"YES";
      v10 = 138412802;
      v11 = @"NO";
      v12 = 2112;
      if (!v5)
      {
        v7 = @"NO";
      }

      v13 = v7;
      v14 = 2112;
      v15 = @"NO";
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "We should not be submitting metrics to CloudKit: serverAllowsMetricSubmission: %@ isInternal: %@ isSeed: %@", &v10, 0x20u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_canSubmitCloudKitAnalytic
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v3 = [v2 serverAllowsAnalyticSubmission];

  v4 = [MEMORY[0x277D19268] sharedInstance];
  v5 = [v4 isInternalInstall];

  if ((v3 & 1) == 0 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"YES";
      v10 = 138412802;
      v11 = @"NO";
      v12 = 2112;
      if (!v5)
      {
        v7 = @"NO";
      }

      v13 = v7;
      v14 = 2112;
      v15 = @"NO";
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "We should not be submitting metrics to CloudKit: serverAllowsMetricSubmission: %@ isInternal: %@ isSeed: %@", &v10, 0x20u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)submitCloudKitMetricWithData:(id)a3 operationGroupName:(id)a4 completion:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(IMDCKExitManager *)self _canSubmitCloudKitMetric])
  {
    v11 = [(IMDCKExitManager *)self _modifiedOpGroupName:v9];

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v11;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Writing up sync metric using opGroup %@", &v18, 0xCu);
      }
    }

    v13 = objc_alloc(MEMORY[0x277CBC5A0]);
    v14 = [(IMDCKExitManager *)self syncCompleteRecordID];
    v15 = [v13 initWithRecordType:@"SyncCompleteRecordType" recordID:v14];

    [v15 setObject:v8 forKey:@"SyncCompleteDateKey"];
    [(IMDCKExitManager *)self _submitCloudKitMetricWithOperationGroupName:v11 record:v15 ignoreZoneNotFoundError:1 completion:v10];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "We should not be submitting metrics to CloudKit so calling completion with success.", &v18, 2u);
      }
    }

    if (v10)
    {
      v10[2](v10, 1, 0);
    }

    v11 = v9;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)submitCloudKitAnalyticWithDictionary:(id)a3 operationGroupName:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IMDCKExitManager *)self _canSubmitCloudKitAnalytic];
  if (v8 && [MEMORY[0x277CCAAA0] isValidJSONObject:v8])
  {
    v23 = 0;
    v12 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v8 options:1 error:&v23];
    v13 = v23;
    if (!v11)
    {
LABEL_4:
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = @"YES";
          if (v12)
          {
            v15 = @"NO";
          }

          *buf = 138412546;
          v25 = @"NO";
          v26 = 2112;
          v27 = v15;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Not submitting metrics to CloudKit because notAllowed: %@ noJsonData: %@ so calling completion with success.", buf, 0x16u);
        }
      }

      v10[2](v10, 1, 0);
      v16 = v9;
      goto LABEL_23;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v25 = v8;
        v26 = 2112;
        v27 = v9;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Failed to serizlize analyticdict as JSON %@. Posting operationGroupName %@ only.", buf, 0x16u);
      }
    }

    v12 = 0;
    v13 = 0;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  v16 = [(IMDCKExitManager *)self _modifiedOpGroupName:v9];

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v16;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Writing up sync analytic using opGroup %@", buf, 0xCu);
    }
  }

  v19 = objc_alloc(MEMORY[0x277CBC5A0]);
  v20 = [(IMDCKExitManager *)self analyticZoneRecordID];
  v21 = [v19 initWithRecordType:@"AnalyticDataRecordType" recordID:v20];

  if (v12)
  {
    [v21 setObject:v12 forKey:@"AnalyticDataKey"];
  }

  [(IMDCKExitManager *)self _submitCloudKitMetricWithOperationGroupName:v16 record:v21 ignoreZoneNotFoundError:0 completion:v10];

LABEL_23:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)sendCloudKitZoneFetchRequestToNoteFeatureIsOn
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "sendCloudKitZoneFetchRequestToNoteFeatureIsOn", buf, 2u);
    }
  }

  v4 = +[IMDCKUtilities sharedInstance];
  v5 = [v4 cloudKitSyncingEnabled];

  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Pinging cloudkit to tell feature is on.", buf, 2u);
      }
    }

    v8 = [(IMDCKExitManager *)self ckQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B528654;
    block[3] = &unk_278702FF0;
    block[4] = self;
    dispatch_async(v8, block);
  }

  else if (v6)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "sendCloudKitZoneFetchRequestToNoteFeatureIsOn not pinging CK as feature is off", buf, 2u);
    }
  }
}

@end