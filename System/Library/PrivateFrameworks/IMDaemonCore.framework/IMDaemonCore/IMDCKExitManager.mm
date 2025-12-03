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
- (id)_modifiedOpGroupName:(id)name;
- (id)analyticZoneRecordID;
- (id)exitConfiguration;
- (id)initRecordZoneManager:(id)manager databaseManager:(id)databaseManager;
- (id)syncCompleteRecordID;
- (int64_t)derivedQualityOfService;
- (void)_evalToggleiCloudSettingsSwitch;
- (void)_fetchExitRecordDateWithCompletion:(id)completion;
- (void)_scheduleMetricOperation:(id)operation;
- (void)_scheduleOperation:(id)operation;
- (void)_setUpSubscription;
- (void)_submitCloudKitMetricWithOperationGroupName:(id)name record:(id)record ignoreZoneNotFoundError:(BOOL)error completion:(id)completion;
- (void)deleteExitRecordWithCompletion:(id)completion;
- (void)exitRecordDateWithCompletion:(id)completion;
- (void)handleNotificationForSubscriptionID:(id)d;
- (void)sendCloudKitZoneFetchRequestToNoteFeatureIsOn;
- (void)setErrorFetchingExitDate:(id)date;
- (void)setExitRecordDate:(id)date;
- (void)submitCloudKitAnalyticWithDictionary:(id)dictionary operationGroupName:(id)name completion:(id)completion;
- (void)submitCloudKitAnalyticWithOperationGroupName:(id)name analyticDictionary:(id)dictionary;
- (void)submitCloudKitMetricWithData:(id)data operationGroupName:(id)name completion:(id)completion;
- (void)submitCloudKitMetricWithOperationGroupName:(id)name;
- (void)writeExitRecordWithDate:(id)date completion:(id)completion;
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

- (id)initRecordZoneManager:(id)manager databaseManager:(id)databaseManager
{
  managerCopy = manager;
  databaseManagerCopy = databaseManager;
  v13.receiver = self;
  v13.super_class = IMDCKExitManager;
  v9 = [(IMDCKExitManager *)&v13 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.private.IMDCKExitManager", 0);
    ckQueue = v9->_ckQueue;
    v9->_ckQueue = v10;

    objc_storeStrong(&v9->_recordZoneManager, manager);
    objc_storeStrong(&v9->_databaseManager, databaseManager);
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
  ckQueue = [(IMDCKExitManager *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5235D8;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_sync(ckQueue, block);
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

- (void)setExitRecordDate:(id)date
{
  v19 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  exitRecordDate = [(IMDCKExitManager *)self exitRecordDate];
  if (!dateCopy || ([dateCopy isEqualToDate:exitRecordDate] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = @"NO";
        v13 = 138412802;
        v14 = exitRecordDate;
        v15 = 2112;
        if (dateCopy)
        {
          v8 = @"YES";
        }

        v16 = dateCopy;
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
    objc_storeStrong(&self->_exitRecordDate, date);
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

- (void)setErrorFetchingExitDate:(id)date
{
  v17 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  errorFetchingExitDate = [(IMDCKExitManager *)self errorFetchingExitDate];
  if (!dateCopy || ([dateCopy isEqual:errorFetchingExitDate] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v13 = 138412546;
        v14 = errorFetchingExitDate;
        v15 = 2112;
        v16 = dateCopy;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Error fetching exit record date has been modified, changing it from %@ to %@", &v13, 0x16u);
      }
    }

    if (dateCopy)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Messages.IMDCKExitManagerErrorDomain" code:3 userInfo:0];
      serializedError_im = [v8 serializedError_im];
    }

    else
    {
      serializedError_im = 0;
    }

    v10 = *MEMORY[0x277D19A08];
    v11 = *MEMORY[0x277D19AC0];
    IMSetDomainValueForKey();
    objc_storeStrong(&self->_errorFetchingExitDate, date);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleNotificationForSubscriptionID:(id)d
{
  v9 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = dCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Handling notification for subscriptionID: %@", &v7, 0xCu);
    }
  }

  if ([dCopy isEqualToString:@"ExitRecordKeyManateeZoneSubscription"])
  {
    [(IMDCKExitManager *)self _fetchExitRecordDateWithCompletion:0];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)writeExitRecordWithDate:(id)date completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = dateCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Calling writeExitRecordWithDate. ExitDate: %@", buf, 0xCu);
    }
  }

  if (dateCopy)
  {
    ckQueue = [(IMDCKExitManager *)self ckQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B523DC8;
    block[3] = &unk_2787037B8;
    block[4] = self;
    v14 = dateCopy;
    v15 = completionCopy;
    dispatch_async(ckQueue, block);
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

    if (completionCopy)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Messages.IMDCKExitManagerErrorDomain" code:2 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v11);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)exitRecordDateWithCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      exitRecordDate = [(IMDCKExitManager *)self exitRecordDate];
      errorFetchingExitDate = [(IMDCKExitManager *)self errorFetchingExitDate];
      fetchedExitDateOnLaunch = [(IMDCKExitManager *)self fetchedExitDateOnLaunch];
      v9 = @"NO";
      *buf = 138412802;
      v25 = exitRecordDate;
      v26 = 2112;
      if (fetchedExitDateOnLaunch)
      {
        v9 = @"YES";
      }

      v27 = errorFetchingExitDate;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Calling exitRecordDateWithCompletion date: %@ error: %@ fetchedExitDateOnLaunch: %@", buf, 0x20u);
    }
  }

  if ([(IMDCKExitManager *)self fetchedExitDateOnLaunch]&& ([(IMDCKExitManager *)self errorFetchingExitDate], v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0, v10, v11))
  {
    if (completionCopy)
    {
      currentThread = [MEMORY[0x277CCACC8] currentThread];
      isMainThread = [currentThread isMainThread];

      if (isMainThread)
      {
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            exitRecordDate2 = [(IMDCKExitManager *)self exitRecordDate];
            errorFetchingExitDate2 = [(IMDCKExitManager *)self errorFetchingExitDate];
            *buf = 138412546;
            v25 = exitRecordDate2;
            v26 = 2112;
            v27 = errorFetchingExitDate2;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Already on main queue exitDate: %@ error: %@", buf, 0x16u);
          }
        }

        exitRecordDate3 = [(IMDCKExitManager *)self exitRecordDate];
        errorFetchingExitDate3 = [(IMDCKExitManager *)self errorFetchingExitDate];
        completionCopy[2](completionCopy, exitRecordDate3, errorFetchingExitDate3);
      }

      else
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = sub_22B524898;
        v20[3] = &unk_278703808;
        v20[4] = self;
        v21 = completionCopy;
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
    v23 = completionCopy;
    [(IMDCKExitManager *)self _fetchExitRecordDateWithCompletion:v22];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_evalToggleiCloudSettingsSwitch
{
  v2 = +[IMDCKUtilities sharedInstance];
  [v2 evalToggleiCloudSettingsSwitch];
}

- (void)_fetchExitRecordDateWithCompletion:(id)completion
{
  completionCopy = completion;
  ckQueue = [(IMDCKExitManager *)self ckQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B524AE8;
  v7[3] = &unk_278703808;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(ckQueue, v7);
}

- (void)deleteExitRecordWithCompletion:(id)completion
{
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Calling deleteExitRecordCompletionBlock", buf, 2u);
    }
  }

  ckQueue = [(IMDCKExitManager *)self ckQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B525340;
  v8[3] = &unk_278703808;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(ckQueue, v8);
}

- (CKRecordID)exitRecordID
{
  exitRecordID = self->_exitRecordID;
  if (!exitRecordID)
  {
    v4 = objc_alloc(MEMORY[0x277CBC5D0]);
    recordZoneManager = [(IMDCKExitManager *)self recordZoneManager];
    deDupeSaltZoneID = [recordZoneManager deDupeSaltZoneID];
    v7 = [v4 initWithRecordName:@"CloudKitExitRecord" zoneID:deDupeSaltZoneID];
    v8 = self->_exitRecordID;
    self->_exitRecordID = v7;

    exitRecordID = self->_exitRecordID;
  }

  return exitRecordID;
}

- (id)syncCompleteRecordID
{
  v3 = objc_alloc(MEMORY[0x277CBC5D0]);
  recordZoneManager = [(IMDCKExitManager *)self recordZoneManager];
  metricZoneID = [recordZoneManager metricZoneID];
  v6 = [v3 initWithRecordName:@"SyncCompleteRecord" zoneID:metricZoneID];

  return v6;
}

- (id)analyticZoneRecordID
{
  v3 = objc_alloc(MEMORY[0x277CBC5D0]);
  recordZoneManager = [(IMDCKExitManager *)self recordZoneManager];
  analyticRecordZoneID = [recordZoneManager analyticRecordZoneID];
  v6 = [v3 initWithRecordName:@"AnalyticZoneRecord" zoneID:analyticRecordZoneID];

  return v6;
}

- (int64_t)derivedQualityOfService
{
  v13 = *MEMORY[0x277D85DE8];
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  qualityOfService = [currentThread qualityOfService];

  if (qualityOfService <= 17)
  {
    v4 = 17;
  }

  else
  {
    v4 = qualityOfService;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      currentThread2 = [MEMORY[0x277CCACC8] currentThread];
      v9 = 134218240;
      qualityOfService2 = [currentThread2 qualityOfService];
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

- (void)_scheduleOperation:(id)operation
{
  operationCopy = operation;
  databaseManager = [(IMDCKExitManager *)self databaseManager];
  truthDatabase = [databaseManager truthDatabase];
  [truthDatabase addOperation:operationCopy];
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
    recordZoneManager = [(IMDCKExitManager *)self recordZoneManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22B525D90;
    v13[3] = &unk_278703880;
    v15 = buf;
    v8 = v6;
    v14 = v8;
    [recordZoneManager createDeDupeSaltZoneIfNeededWithCompletionBlock:v13];

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
    recordZoneManager = [(IMDCKExitManager *)self recordZoneManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22B5260F0;
    v13[3] = &unk_278703880;
    v15 = buf;
    v8 = v6;
    v14 = v8;
    [recordZoneManager createSubscriptionIfNeededOnDeDupeZoneForSubscription:@"ExitRecordKeyManateeZoneSubscription" recordType:@"Exit" completionBlock:v13];

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
  mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
  isUnderFirstDataProtectionLock = [mEMORY[0x277D1ACB8] isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock)
  {
    if (IMOSLoggingEnabled())
    {
      lastSyncDate = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(lastSyncDate, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_22B4CC000, lastSyncDate, OS_LOG_TYPE_INFO, "writeInitialSyncCompletedRecordIfNeeded Not doing under first unlock", &v16, 2u);
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
      syncState = [(IMDCKAbstractSyncController *)self syncState];
      lastSyncDate = [syncState lastSyncDate];

      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v16 = 138412290;
          v17 = lastSyncDate;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "writeInitialSyncCompletedRecordIfNeeded Requesting last sync date for metrics: %@", &v16, 0xCu);
        }
      }

      if (lastSyncDate)
      {
        date = [MEMORY[0x277CBEAA8] date];
        v10 = ([lastSyncDate differenceFromDate:date]+ 7) < 8;
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

          [(IMDCKExitManager *)self writeSyncCompletedRecordWithDate:lastSyncDate completion:&unk_283F197E8];
        }

        else if (v11)
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v16 = 138412290;
            v17 = lastSyncDate;
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
      lastSyncDate = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(lastSyncDate, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_22B4CC000, lastSyncDate, OS_LOG_TYPE_INFO, "writeInitialSyncCompletedRecordIfNeeded We have already done this. Not doing again unless you do defaults delete com.apple.madrid initialSyncRecordHasBeenWritten", &v16, 2u);
      }

      goto LABEL_31;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)submitCloudKitMetricWithOperationGroupName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
  cloudKitSyncingEnabled = [ckUtilities cloudKitSyncingEnabled];

  ckUtilities2 = [(IMDCKAbstractSyncController *)self ckUtilities];
  serverAllowsMetricSubmission = [ckUtilities2 serverAllowsMetricSubmission];

  if ((cloudKitSyncingEnabled & serverAllowsMetricSubmission) == 1)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B5268D0;
    v14[3] = &unk_2787038A8;
    v14[4] = self;
    v15 = nameCopy;
    [(IMDCKExitManager *)self submitCloudKitMetricWithData:date operationGroupName:v15 completion:v14];
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      if (cloudKitSyncingEnabled)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (serverAllowsMetricSubmission)
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
  recordZoneManager = [(IMDCKExitManager *)self recordZoneManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B526B90;
  v11[3] = &unk_278703880;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [recordZoneManager createAnalyticZoneIfNeededWithCompletionBlock:v11];

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

- (void)submitCloudKitAnalyticWithOperationGroupName:(id)name analyticDictionary:(id)dictionary
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dictionaryCopy = dictionary;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dictionaryCopy, "count")}];
      *buf = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = nameCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Request to submit dictionary (%@) opGroupName %@", buf, 0x16u);
    }
  }

  ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
  serverAllowsAnalyticSubmission = [ckUtilities serverAllowsAnalyticSubmission];

  if (serverAllowsAnalyticSubmission)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B526ED4;
    v14[3] = &unk_2787038D0;
    v14[4] = self;
    v15 = dictionaryCopy;
    v16 = nameCopy;
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

- (void)_scheduleMetricOperation:(id)operation
{
  v15 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  databaseManager = [(IMDCKExitManager *)self databaseManager];
  manateeDataBase = [databaseManager manateeDataBase];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      group = [operationCopy group];
      name = [group name];
      v11 = 138412546;
      v12 = name;
      v13 = 2112;
      v14 = manateeDataBase;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Performing metric operation name %@ using DB %@", &v11, 0x16u);
    }
  }

  [manateeDataBase addOperation:operationCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_modifiedOpGroupName:(id)name
{
  v4 = MEMORY[0x277CCACA8];
  nameCopy = name;
  _sharedCKUtilities = [(IMDCKExitManager *)self _sharedCKUtilities];
  deviceActiveString = [_sharedCKUtilities deviceActiveString];
  v8 = [v4 stringWithFormat:@"-%@", deviceActiveString];

  v9 = [nameCopy stringByAppendingString:v8];

  return v9;
}

- (void)_submitCloudKitMetricWithOperationGroupName:(id)name record:(id)record ignoreZoneNotFoundError:(BOOL)error completion:(id)completion
{
  nameCopy = name;
  recordCopy = record;
  completionCopy = completion;
  ckQueue = [(IMDCKExitManager *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B527838;
  block[3] = &unk_278703948;
  v18 = recordCopy;
  v19 = nameCopy;
  errorCopy = error;
  selfCopy = self;
  v21 = completionCopy;
  v14 = completionCopy;
  v15 = nameCopy;
  v16 = recordCopy;
  dispatch_async(ckQueue, block);
}

- (BOOL)_canSubmitCloudKitMetric
{
  v16 = *MEMORY[0x277D85DE8];
  ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
  serverAllowsMetricSubmission = [ckUtilities serverAllowsMetricSubmission];

  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

  if ((serverAllowsMetricSubmission & 1) == 0 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"YES";
      v10 = 138412802;
      v11 = @"NO";
      v12 = 2112;
      if (!isInternalInstall)
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
  return serverAllowsMetricSubmission;
}

- (BOOL)_canSubmitCloudKitAnalytic
{
  v16 = *MEMORY[0x277D85DE8];
  ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
  serverAllowsAnalyticSubmission = [ckUtilities serverAllowsAnalyticSubmission];

  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

  if ((serverAllowsAnalyticSubmission & 1) == 0 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"YES";
      v10 = 138412802;
      v11 = @"NO";
      v12 = 2112;
      if (!isInternalInstall)
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
  return serverAllowsAnalyticSubmission;
}

- (void)submitCloudKitMetricWithData:(id)data operationGroupName:(id)name completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  nameCopy = name;
  completionCopy = completion;
  if ([(IMDCKExitManager *)self _canSubmitCloudKitMetric])
  {
    v11 = [(IMDCKExitManager *)self _modifiedOpGroupName:nameCopy];

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
    syncCompleteRecordID = [(IMDCKExitManager *)self syncCompleteRecordID];
    v15 = [v13 initWithRecordType:@"SyncCompleteRecordType" recordID:syncCompleteRecordID];

    [v15 setObject:dataCopy forKey:@"SyncCompleteDateKey"];
    [(IMDCKExitManager *)self _submitCloudKitMetricWithOperationGroupName:v11 record:v15 ignoreZoneNotFoundError:1 completion:completionCopy];
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

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    v11 = nameCopy;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)submitCloudKitAnalyticWithDictionary:(id)dictionary operationGroupName:(id)name completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  nameCopy = name;
  completionCopy = completion;
  _canSubmitCloudKitAnalytic = [(IMDCKExitManager *)self _canSubmitCloudKitAnalytic];
  if (dictionaryCopy && [MEMORY[0x277CCAAA0] isValidJSONObject:dictionaryCopy])
  {
    v23 = 0;
    v12 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryCopy options:1 error:&v23];
    v13 = v23;
    if (!_canSubmitCloudKitAnalytic)
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

      completionCopy[2](completionCopy, 1, 0);
      v16 = nameCopy;
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
        v25 = dictionaryCopy;
        v26 = 2112;
        v27 = nameCopy;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Failed to serizlize analyticdict as JSON %@. Posting operationGroupName %@ only.", buf, 0x16u);
      }
    }

    v12 = 0;
    v13 = 0;
    if (!_canSubmitCloudKitAnalytic)
    {
      goto LABEL_4;
    }
  }

  v16 = [(IMDCKExitManager *)self _modifiedOpGroupName:nameCopy];

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
  analyticZoneRecordID = [(IMDCKExitManager *)self analyticZoneRecordID];
  v21 = [v19 initWithRecordType:@"AnalyticDataRecordType" recordID:analyticZoneRecordID];

  if (v12)
  {
    [v21 setObject:v12 forKey:@"AnalyticDataKey"];
  }

  [(IMDCKExitManager *)self _submitCloudKitMetricWithOperationGroupName:v16 record:v21 ignoreZoneNotFoundError:0 completion:completionCopy];

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
  cloudKitSyncingEnabled = [v4 cloudKitSyncingEnabled];

  v6 = IMOSLoggingEnabled();
  if (cloudKitSyncingEnabled)
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

    ckQueue = [(IMDCKExitManager *)self ckQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B528654;
    block[3] = &unk_278702FF0;
    block[4] = self;
    dispatch_async(ckQueue, block);
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