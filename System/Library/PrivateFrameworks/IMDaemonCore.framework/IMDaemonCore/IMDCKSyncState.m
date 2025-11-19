@interface IMDCKSyncState
+ (id)logHandle;
+ (void)removeBuildObjectsFromDict:(id)a3;
- (BOOL)createdChatZone;
- (BOOL)deletedZones;
- (BOOL)hasAvailableRecordsToDownload;
- (BOOL)isDisablingDevices;
- (BOOL)isEligibleForTruthZone;
- (BOOL)isFeatureEnabled;
- (BOOL)isInExitState;
- (BOOL)isRemovedFromBackup;
- (BOOL)isStartingEnabledSettingChange;
- (BOOL)isStartingInitialSyncSetByCloudKitHooks;
- (BOOL)isStartingPeriodicSyncSetByCloudKitHooks;
- (BOOL)isSyncing;
- (BOOL)isSyncingEnabled;
- (BOOL)isSyncingPaused;
- (BOOL)syncCancelled;
- (IMDCKSyncState)init;
- (IMDCKSyncState)initWithKeyValueCollection:(id)a3;
- (IMDCKSyncStateDelegate)delegate;
- (NSArray)syncErrors;
- (NSDate)exitDate;
- (NSDate)lastSyncDate;
- (NSDictionary)analyticSyncDatesDictionary;
- (NSString)description;
- (NSString)micDeviceIdentifier;
- (NSString)syncSessionID;
- (double)lastDownloadProgress;
- (id)_describeErrors:(id)a3;
- (id)describeErrors;
- (id)describeRecordCounts;
- (id)getAnalyticSyncDatesObjectForKey:(id)a3;
- (id)logHandle;
- (id)serializedRepresentation;
- (id)syncDateForKey:(id)a3;
- (id)syncReportDictionary;
- (id)syncUserType;
- (int64_t)accountStatus;
- (int64_t)syncControllerRecordType;
- (int64_t)syncControllerSyncType;
- (unint64_t)syncControllerSyncState;
- (unint64_t)syncJobState;
- (unint64_t)syncStatus;
- (unint64_t)syncType;
- (void)_finishBatchChange;
- (void)_removeObjectForKey:(id)a3 forDictionary:(id)a4;
- (void)_setObject:(id)a3 forKey:(id)a4 forDictionary:(id)a5 shouldSetBuild:(BOOL)a6;
- (void)_setStartingSync;
- (void)_startBatchChange;
- (void)addSyncError:(id)a3;
- (void)broadcastSyncState;
- (void)clearLocalCloudKitSyncState;
- (void)clearSyncErrors;
- (void)clearSyncStateForAllRecordTypes;
- (void)deleteAllCloudKitData;
- (void)ensureSaltIsAvailable:(id)a3;
- (void)keyValueCollection:(id)a3 didUpdateValues:(id)a4;
- (void)keyValueCollection:(id)a3 willUpdateValues:(id)a4;
- (void)removeObjectFromAnalyticSyncDatesDictionaryForKey:(id)a3;
- (void)setAccountStatus:(int64_t)a3;
- (void)setAnalyticSyncDatesDictionary:(id)a3;
- (void)setAnalyticSyncDatesDictionaryObject:(id)a3 forKey:(id)a4 shouldOverrideIfExists:(BOOL)a5;
- (void)setErrorToAccountNeedsRepair;
- (void)setErrorToKeyRollingError;
- (void)setExitDate:(id)a3;
- (void)setLastDownloadProgress:(double)a3;
- (void)setLastSyncDate:(id)a3;
- (void)setMiCDeviceIdentifier:(id)a3;
- (void)setStartingInitialSyncWithRecordType:(int64_t)a3;
- (void)setStartingPeriodicSyncWithRecordType:(int64_t)a3;
- (void)setSyncControllerRecordType:(int64_t)a3;
- (void)setSyncControllerSyncState:(unint64_t)a3;
- (void)setSyncControllerSyncState:(unint64_t)a3 withRecordType:(int64_t)a4;
- (void)setSyncControllerSyncType:(int64_t)a3;
- (void)setSyncJobState:(unint64_t)a3;
- (void)setSyncSessionID:(id)a3;
- (void)setSyncStatus:(unint64_t)a3;
- (void)setSyncType:(unint64_t)a3;
- (void)setSyncingFinished;
@end

@implementation IMDCKSyncState

- (BOOL)isFeatureEnabled
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D19AD0] withDefault:0];

  return v3;
}

- (void)_startBatchChange
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  [v2 _startBatchWrite];
}

- (BOOL)isSyncingEnabled
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D19C80] withDefault:0];

  return v3;
}

- (void)_finishBatchChange
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  [v2 _commitBatchWrite];
}

- (void)broadcastSyncState
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4D3F24;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)serializedRepresentation
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = IMCloudKitGetSyncStateDictionary();
  v4 = [(IMDCKSyncState *)self syncStatistics];
  if (v4 && (v5 = v4, -[IMDCKSyncState syncStatistics](self, "syncStatistics"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v5, v7))
  {
    v8 = objc_alloc(MEMORY[0x277CBEB38]);
    v14 = *MEMORY[0x277D19C18];
    v9 = [(IMDCKSyncState *)self syncStatistics];
    v15[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v11 = [v8 initWithDictionary:v10];
  }

  else
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
  }

  [v11 addEntriesFromDictionary:v3];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)logHandle
{
  v2 = objc_opt_class();

  return [v2 logHandle];
}

+ (id)logHandle
{
  if (qword_2814212A8 != -1)
  {
    sub_22B7D25B0();
  }

  v3 = qword_281421298;

  return v3;
}

- (id)syncDateForKey:(id)a3
{
  v3 = [(IMDCKSyncState *)self getAnalyticSyncDatesObjectForKey:a3];
  if ([v3 intValue])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:{objc_msgSend(v3, "longLongValue")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)deleteAllCloudKitData
{
  [(IMDCKSyncState *)self setDeletedZones:1];
  v3 = +[IMDRecordZoneManager sharedInstance];
  [v3 deleteAllZones];

  MEMORY[0x2821F9670](self, sel_clearSyncStateForAllRecordTypes);
}

- (void)clearSyncStateForAllRecordTypes
{
  v2 = +[IMDCKSyncController sharedInstance];
  [v2 clearLocalCloudKitSyncState];
}

- (void)ensureSaltIsAvailable:(id)a3
{
  v3 = a3;
  v4 = +[IMDCKRecordSaltManager sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B4E6638;
  v6[3] = &unk_278702930;
  v7 = v3;
  v5 = v3;
  [v4 fetchLatestRecordKeyFromCKAndCreateIfKeyDoesNotExistWithCompletion:v6];
}

- (IMDCKSyncState)initWithKeyValueCollection:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = IMDCKSyncState;
  v6 = [(IMDCKSyncState *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, a3);
    v8 = [(IMDCKSyncState *)v7 keyValueCollection];
    [v8 setDelegate:v7];
  }

  return v7;
}

- (IMDCKSyncState)init
{
  [(IMDCKSyncState *)self doesNotRecognizeSelector:0];

  return 0;
}

- (BOOL)createdChatZone
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D199E8] withDefault:0];

  return v3;
}

- (BOOL)deletedZones
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D199E8] withDefault:0];

  return v3;
}

- (BOOL)isSyncing
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D19B50] withDefault:0];

  return v3;
}

- (BOOL)isEligibleForTruthZone
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D19B38] withDefault:0];

  return v3;
}

- (BOOL)isRemovedFromBackup
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D19B48] withDefault:0];

  return v3;
}

- (BOOL)isInExitState
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D19B40] withDefault:0];

  return v3;
}

- (BOOL)isSyncingPaused
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D19C60] withDefault:0];

  return v3;
}

- (BOOL)syncCancelled
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D19C20] withDefault:0];

  return v3;
}

- (BOOL)isDisablingDevices
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D19BF8] withDefault:0];

  return v3;
}

- (BOOL)isStartingEnabledSettingChange
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D19C00] withDefault:0];

  return v3;
}

- (BOOL)isStartingPeriodicSyncSetByCloudKitHooks
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D19C10] withDefault:0];

  return v3;
}

- (BOOL)isStartingInitialSyncSetByCloudKitHooks
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D19C08] withDefault:0];

  return v3;
}

- (NSDate)exitDate
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 objectForKey:*MEMORY[0x277D19AC8]];

  return v3;
}

- (void)setExitDate:(id)a3
{
  v4 = a3;
  v5 = [(IMDCKSyncState *)self keyValueCollection];
  [v5 setObject:v4 forKey:*MEMORY[0x277D19AC8]];
}

- (NSDate)lastSyncDate
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 objectForKey:*MEMORY[0x277D19C40]];

  return v3;
}

- (void)setLastSyncDate:(id)a3
{
  v4 = a3;
  v5 = [(IMDCKSyncState *)self keyValueCollection];
  [v5 setObject:v4 forKey:*MEMORY[0x277D19C40]];
}

- (NSDictionary)analyticSyncDatesDictionary
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 objectForKey:*MEMORY[0x277D199B0]];

  return v3;
}

- (void)setAnalyticSyncDatesDictionary:(id)a3
{
  v4 = a3;
  v5 = [(IMDCKSyncState *)self keyValueCollection];
  [v5 setObject:v4 forKey:*MEMORY[0x277D199B0]];
}

- (NSString)syncSessionID
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 objectForKey:*MEMORY[0x277D19C68]];

  return v3;
}

- (void)setSyncSessionID:(id)a3
{
  v4 = a3;
  v5 = [(IMDCKSyncState *)self keyValueCollection];
  [v5 setObject:v4 forKey:*MEMORY[0x277D19C68]];
}

- (NSString)micDeviceIdentifier
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 objectForKey:*MEMORY[0x277D19B88]];

  return v3;
}

- (void)setMiCDeviceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(IMDCKSyncState *)self keyValueCollection];
  [v5 setObject:v4 forKey:*MEMORY[0x277D19B88]];
}

- (unint64_t)syncControllerSyncState
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 integerForKey:*MEMORY[0x277D19C30] withDefault:0];

  return v3;
}

- (void)setSyncControllerSyncState:(unint64_t)a3
{
  v4 = [(IMDCKSyncState *)self keyValueCollection];
  [v4 setInteger:a3 forKey:*MEMORY[0x277D19C30]];
}

- (unint64_t)syncType
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 integerForKey:*MEMORY[0x277D19C78] withDefault:0];

  return v3;
}

- (void)setSyncType:(unint64_t)a3
{
  v4 = [(IMDCKSyncState *)self keyValueCollection];
  [v4 setInteger:a3 forKey:*MEMORY[0x277D19C78]];
}

- (unint64_t)syncStatus
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 integerForKey:*MEMORY[0x277D19C70] withDefault:0];

  return v3;
}

- (void)setSyncStatus:(unint64_t)a3
{
  v4 = [(IMDCKSyncState *)self keyValueCollection];
  [v4 setInteger:a3 forKey:*MEMORY[0x277D19C70]];
}

- (unint64_t)syncJobState
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 integerForKey:*MEMORY[0x277D19C58] withDefault:0];

  return v3;
}

- (void)setSyncJobState:(unint64_t)a3
{
  v4 = [(IMDCKSyncState *)self keyValueCollection];
  [v4 setInteger:a3 forKey:*MEMORY[0x277D19C58]];
}

- (int64_t)syncControllerSyncType
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 integerForKey:*MEMORY[0x277D19C38] withDefault:0];

  return v3;
}

- (void)setSyncControllerSyncType:(int64_t)a3
{
  v4 = [(IMDCKSyncState *)self keyValueCollection];
  [v4 setInteger:a3 forKey:*MEMORY[0x277D19C38]];
}

- (int64_t)syncControllerRecordType
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 integerForKey:*MEMORY[0x277D19C28] withDefault:0];

  return v3;
}

- (void)setSyncControllerRecordType:(int64_t)a3
{
  v4 = [(IMDCKSyncState *)self keyValueCollection];
  [v4 setInteger:a3 forKey:*MEMORY[0x277D19C28]];
}

- (int64_t)accountStatus
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 integerForKey:*MEMORY[0x277D199A8] withDefault:0];

  return v3;
}

- (void)setAccountStatus:(int64_t)a3
{
  v4 = [(IMDCKSyncState *)self keyValueCollection];
  [v4 setInteger:a3 forKey:*MEMORY[0x277D199A8]];
}

- (BOOL)hasAvailableRecordsToDownload
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 BOOLForKey:*MEMORY[0x277D19B10] withDefault:0];

  return v3;
}

- (double)lastDownloadProgress
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  [v2 doubleForKey:*MEMORY[0x277D19B68] withDefault:0.0];
  v4 = v3;

  return v4;
}

- (void)setLastDownloadProgress:(double)a3
{
  v4 = [(IMDCKSyncState *)self keyValueCollection];
  [v4 setDouble:*MEMORY[0x277D19B68] forKey:a3];
}

- (NSArray)syncErrors
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [v2 errorArrayForKey:*MEMORY[0x277D19C50]];

  return v3;
}

- (void)clearSyncErrors
{
  v2 = [(IMDCKSyncState *)self keyValueCollection];
  [v2 removeObjectForKey:*MEMORY[0x277D19C50]];
}

- (void)addSyncError:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[IMDCKUtilities sharedInstance];
  v6 = [v5 findRootCauses:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    v10 = *MEMORY[0x277D19C50];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [(IMDCKSyncState *)self keyValueCollection];
        [v13 addErrorToArray:v12 forKey:v10];
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setObject:(id)a3 forKey:(id)a4 forDictionary:(id)a5 shouldSetBuild:(BOOL)a6
{
  v6 = a6;
  v22 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v10, qword_27D8CBAB8];
  v13 = [MEMORY[0x277D07DB0] sharedInstance];
  v14 = [v13 productBuildVersion];

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting object %@ for key %@ in analyticDict.", buf, 0x16u);
    }
  }

  [v11 setObject:v9 forKey:v10];
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v19 = v14;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Setting ProductBuildVersion %@ for key %@ in analyticDict.", buf, 0x16u);
      }
    }

    [v11 setObject:v14 forKey:v12];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_removeObjectForKey:(id)a3 forDictionary:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v5, qword_27D8CBAB8];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Removing keys %@ %@ from analyticDict.", buf, 0x16u);
    }
  }

  [v6 removeObjectForKey:v5];
  [v6 removeObjectForKey:v7];

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)removeBuildObjectsFromDict:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{(objc_msgSend(v3, "count") + 1) >> 1}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 hasSuffix:qword_27D8CBAB8])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [v3 removeObjectsForKeys:v4];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeObjectFromAnalyticSyncDatesDictionaryForKey:(id)a3
{
  v10 = a3;
  if ([v10 length])
  {
    v4 = [(IMDCKSyncState *)self analyticSyncDatesDictionary];
    v5 = [v4 objectForKey:v10];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x277CBEB38]);
      v7 = [(IMDCKSyncState *)self analyticSyncDatesDictionary];
      v8 = [v6 initWithDictionary:v7];

      [(IMDCKSyncState *)self _removeObjectForKey:v10 forDictionary:v8];
      v9 = [v8 copy];
      [(IMDCKSyncState *)self setAnalyticSyncDatesDictionary:v9];
    }
  }
}

- (void)setAnalyticSyncDatesDictionaryObject:(id)a3 forKey:(id)a4 shouldOverrideIfExists:(BOOL)a5
{
  v5 = a5;
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      *v24 = 138412802;
      *&v24[4] = v8;
      *&v24[12] = 2112;
      if (v5)
      {
        v11 = @"YES";
      }

      *&v24[14] = v9;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Request to set analytic sync date for object %@ and key %@ shouldOverrideIfExists %@", v24, 0x20u);
    }
  }

  v12 = [v9 length];
  if (v8 && v12)
  {
    v13 = [(IMDCKSyncState *)self analyticSyncDatesDictionary];
    v14 = v13 == 0;

    if (v14)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x277CBEB38]);
      v16 = [(IMDCKSyncState *)self analyticSyncDatesDictionary];
      v17 = [v15 initWithDictionary:v16];

      if (!v5)
      {
        v18 = [v17 objectForKey:v9];
        v19 = v18 == 0;

        if (!v19)
        {
LABEL_20:

          goto LABEL_21;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = MEMORY[0x277CCABB0];
      [v8 timeIntervalSince1970];
      v21 = [v20 numberWithDouble:?];
      if (v21)
      {
        [(IMDCKSyncState *)self _setObject:v21 forKey:v9 forDictionary:v17 shouldSetBuild:1];
      }
    }

    else
    {
      [(IMDCKSyncState *)self _setObject:v8 forKey:v9 forDictionary:v17 shouldSetBuild:0];
    }

    v22 = [v17 copy];
    [(IMDCKSyncState *)self setAnalyticSyncDatesDictionary:v22];

    goto LABEL_20;
  }

LABEL_21:

  v23 = *MEMORY[0x277D85DE8];
}

- (id)getAnalyticSyncDatesObjectForKey:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(IMDCKSyncState *)self analyticSyncDatesDictionary];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)describeErrors
{
  v3 = [(IMDCKSyncState *)self syncErrors];
  v4 = [(IMDCKSyncState *)self _describeErrors:v3];

  return v4;
}

- (id)_describeErrors:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [v4 appendFormat:@"Errors(%lu total)", objc_msgSend(v3, "count")];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) logString];
          [v4 appendFormat:@"|%@", v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)syncUserType
{
  if ([(IMDCKSyncState *)self _shouldReportNewUserIfCreatedChatZones:[(IMDCKSyncState *)self createdChatZone] deletedZones:[(IMDCKSyncState *)self deletedZones]])
  {
    return @"NewUser";
  }

  else
  {
    return @"RestoringUser";
  }
}

- (id)syncReportDictionary
{
  v3 = MEMORY[0x277CBEB38];
  v4 = [(IMDCKSyncState *)self analyticSyncDatesDictionary];
  v5 = [v3 dictionaryWithDictionary:v4];

  [IMDCKSyncState removeBuildObjectsFromDict:v5];
  v6 = [(IMDCKSyncState *)self syncUserType];
  [v5 setObject:v6 forKey:*MEMORY[0x277D19CB8]];

  v7 = [(IMDCKSyncState *)self syncSessionID];

  if (v7)
  {
    v8 = [(IMDCKSyncState *)self syncSessionID];
    [v5 setObject:v8 forKey:@"syncSessionID"];
  }

  v9 = [(IMDCKSyncState *)self micDeviceIdentifier];

  if (v9)
  {
    v10 = [(IMDCKSyncState *)self micDeviceIdentifier];
    [v5 setObject:v10 forKey:*MEMORY[0x277D19B88]];
  }

  v11 = [(IMDCKSyncState *)self describeErrors];
  if ([v11 length])
  {
    [v5 setObject:v11 forKey:@"syncErrors"];
  }

  return v5;
}

- (id)describeRecordCounts
{
  v13 = MEMORY[0x277CCACA8];
  v16 = +[IMDCKChatSyncController sharedInstance];
  v2 = [v16 describeRecordCounts];
  v15 = +[(IMDCKMessageSyncController *)IMDCKInitialMessageSyncController];
  v3 = [v15 describeRecordCounts];
  v4 = +[(IMDCKAttachmentSyncController *)IMDCKInitialAttachmentSyncController];
  v5 = [v4 describeRecordCounts];
  v6 = +[IMDCKMessageSyncController sharedInstance];
  v7 = [v6 describeRecordCounts];
  v8 = +[IMDCKAttachmentSyncController sharedInstance];
  v9 = [v8 describeRecordCounts];
  v10 = +[IMDCKRecoverableMessageSyncController sharedInstance];
  v11 = [v10 describeRecordCounts];
  v14 = [v13 stringWithFormat:@"chat %@ init %@ %@ full %@ %@ %@", v2, v3, v5, v7, v9, v11];

  return v14;
}

- (NSString)description
{
  v35 = MEMORY[0x277CCACA8];
  v36.receiver = self;
  v36.super_class = IMDCKSyncState;
  v34 = [(IMDCKSyncState *)&v36 description];
  if ([(IMDCKSyncState *)self isFeatureEnabled])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v33 = v3;
  if ([(IMDCKSyncState *)self isSyncing])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v32 = v4;
  if ([(IMDCKSyncState *)self isEligibleForTruthZone])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v31 = v5;
  if ([(IMDCKSyncState *)self isSyncingEnabled])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v30 = v6;
  if ([(IMDCKSyncState *)self isRemovedFromBackup])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v29 = v7;
  if ([(IMDCKSyncState *)self isInExitState])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v28 = v8;
  v27 = [(IMDCKSyncState *)self exitDate];
  if ([(IMDCKSyncState *)self isDisablingDevices])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v26 = v9;
  v10 = [(IMDCKSyncState *)self lastSyncDate];
  if ([(IMDCKSyncState *)self isSyncingPaused])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v25 = v11;
  if ([(IMDCKSyncState *)self isStartingEnabledSettingChange])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v24 = v12;
  if ([(IMDCKSyncState *)self isSyncingPaused])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [(IMDCKSyncState *)self syncControllerSyncState];
  v23 = IMStringFromIMCloudKitSyncControllerSyncState();
  [(IMDCKSyncState *)self syncType];
  v14 = IMStringFromIMCloudKitSyncType();
  [(IMDCKSyncState *)self syncStatus];
  v22 = IMStringFromIMCloudKitSyncStatus();
  [(IMDCKSyncState *)self syncJobState];
  v15 = IMStringFromIMCloudKitSyncJobState();
  [(IMDCKSyncState *)self syncControllerRecordType];
  v16 = IMStringFromIMCloudKitSyncControllerSyncRecordType();
  [(IMDCKSyncState *)self syncControllerSyncType];
  v17 = IMStringFromIMCloudKitSyncControllerSyncType();
  [(IMDCKSyncState *)self accountStatus];
  v18 = IMStringFromIMCloudKitAccountStatus();
  v19 = [(IMDCKSyncState *)self syncErrors];
  v20 = [v35 stringWithFormat:@"%@, isFeatureEnabled: %@, isSyncing: %@, isEligibleForTruthzone %@, isSyncingEnabled: %@, isRemovedFromBackup: %@, isInExitState: %@, exitDate: %@, isStartingDisabledDisableDevice: %@, lastSyncDate: %@, isSyncingPaused: %@, startingChangingEnabledSetting: %@, isPaused: %@, syncControllerSyncState: %@, syncType: %@, syncStatus: %@, syncJobState: %@, syncControllerRecordType: %@, syncType: %@, accountStatus: %@, syncErrors: %@", v34, v33, v32, v31, v30, v29, v28, v27, v26, v10, v25, v24, v13, v23, v14, v22, v15, v16, v17, v18, v19];

  return v20;
}

- (void)setSyncingFinished
{
  v3 = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "syncing finished", v4, 2u);
  }

  [(IMDCKSyncState *)self _startBatchChange];
  [(IMDCKSyncState *)self setStartingPeriodicSyncSetByCloudKitHooks:0];
  [(IMDCKSyncState *)self setStartingInitialSyncSetByCloudKitHooks:0];
  [(IMDCKSyncState *)self setSyncControllerSyncState:0];
  [(IMDCKSyncState *)self setSyncControllerRecordType:0];
  [(IMDCKSyncState *)self setSyncControllerSyncType:0];
  [(IMDCKSyncState *)self setSyncStatus:0];
  [(IMDCKSyncState *)self setSyncJobState:0];
  [(IMDCKSyncState *)self _finishBatchChange];
}

- (void)clearLocalCloudKitSyncState
{
  v3 = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "clearing all sync states", v4, 2u);
  }

  [(IMDCKSyncState *)self _startBatchChange];
  [(IMDCKSyncState *)self setSyncControllerSyncState:0];
  [(IMDCKSyncState *)self setSyncControllerRecordType:0];
  [(IMDCKSyncState *)self setSyncStatus:0];
  [(IMDCKSyncState *)self setSyncJobState:0];
  [(IMDCKSyncState *)self setSyncingPaused:0];
  [(IMDCKSyncState *)self setSyncCancelled:0];
  [(IMDCKSyncState *)self setStartingEnabledSettingChange:0];
  [(IMDCKSyncState *)self setDisablingDevices:0];
  [(IMDCKSyncState *)self clearSyncErrors];
  [(IMDCKSyncState *)self setStartingPeriodicSyncSetByCloudKitHooks:0];
  [(IMDCKSyncState *)self setStartingInitialSyncSetByCloudKitHooks:0];
  [(IMDCKSyncState *)self setSyncControllerSyncType:0];
  [(IMDCKSyncState *)self setHasAvailableRecordsToDownload:0];
  [(IMDCKSyncState *)self setLastDownloadProgress:0.0];
  [(IMDCKSyncState *)self _finishBatchChange];
}

- (void)_setStartingSync
{
  [(IMDCKSyncState *)self setStartingPeriodicSyncSetByCloudKitHooks:0];
  [(IMDCKSyncState *)self setStartingInitialSyncSetByCloudKitHooks:0];

  [(IMDCKSyncState *)self clearSyncErrors];
}

- (void)setStartingPeriodicSyncWithRecordType:(int64_t)a3
{
  v5 = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Set starting periodic sync", v6, 2u);
  }

  [(IMDCKSyncState *)self _startBatchChange];
  [(IMDCKSyncState *)self _setStartingSync];
  [(IMDCKSyncState *)self setSyncControllerSyncType:2];
  [(IMDCKSyncState *)self setSyncControllerSyncState:1 withRecordType:a3];
  [(IMDCKSyncState *)self _finishBatchChange];
}

- (void)setStartingInitialSyncWithRecordType:(int64_t)a3
{
  v5 = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Set starting initial sync", v6, 2u);
  }

  [(IMDCKSyncState *)self _startBatchChange];
  [(IMDCKSyncState *)self _setStartingSync];
  [(IMDCKSyncState *)self setSyncControllerSyncType:1];
  [(IMDCKSyncState *)self setSyncControllerSyncState:1 withRecordType:a3];
  [(IMDCKSyncState *)self _finishBatchChange];
}

- (void)setSyncControllerSyncState:(unint64_t)a3 withRecordType:(int64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = IMStringFromIMCloudKitSyncControllerSyncState();
    v9 = IMStringFromIMCloudKitSyncControllerSyncRecordType();
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Setting controller sync type to %@ for record type: %@", &v11, 0x16u);
  }

  [(IMDCKSyncState *)self _startBatchChange];
  [(IMDCKSyncState *)self setStartingPeriodicSyncSetByCloudKitHooks:0];
  [(IMDCKSyncState *)self setStartingInitialSyncSetByCloudKitHooks:0];
  [(IMDCKSyncState *)self setSyncControllerRecordType:a4];
  [(IMDCKSyncState *)self setSyncControllerSyncState:a3];
  [(IMDCKSyncState *)self _finishBatchChange];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)keyValueCollection:(id)a3 willUpdateValues:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_22B7D25C4(v5, v6);
  }

  v7 = [(IMDCKSyncState *)self isSyncing];
  v8 = [v5 objectForKey:*MEMORY[0x277D19C80]];

  if (v8)
  {
    LODWORD(v9) = [(IMDCKSyncState *)self isSyncingEnabled];
  }

  else
  {
    v10 = +[IMDCKUtilities sharedInstance];
    v9 = [v10 cloudKitSyncingEnabled];

    [(IMDCKSyncState *)self setSyncingEnabled:v9];
  }

  v11 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v12 = [v11 isMessagesIniCloudVersion2];

  if (v12)
  {
    if (v9)
    {
      v13 = [(IMDCKSyncState *)self syncStatus];
LABEL_11:
      v14 = v13 != 0;
      if (v7 == v14)
      {
        goto LABEL_18;
      }

      v15 = v13 != 0;
      goto LABEL_15;
    }
  }

  else if (v9)
  {
    v13 = [(IMDCKSyncState *)self syncControllerSyncState];
    goto LABEL_11;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

  v14 = 0;
  v15 = 0;
LABEL_15:
  [(IMDCKSyncState *)self setSyncing:v15];
  [(IMDCKSyncState *)self setStartingPeriodicSyncSetByCloudKitHooks:0];
  [(IMDCKSyncState *)self setStartingInitialSyncSetByCloudKitHooks:0];
  v16 = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v21[0] = 67109120;
    v21[1] = v14;
    _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Updating syncing to: %{BOOL}d", v21, 8u);
  }

LABEL_18:
  v17 = [(IMDCKSyncState *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = [(IMDCKSyncState *)self delegate];
    [v19 syncStateWillUpdate:self];
  }

  [(IMDCKSyncState *)self setStartingEnabledSettingChange:0];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)keyValueCollection:(id)a3 didUpdateValues:(id)a4
{
  v5 = a4;
  v6 = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_22B7D263C(v5, v6);
  }

  v7 = [(IMDCKSyncState *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(IMDCKSyncState *)self delegate];
    [v9 syncStateDidUpdate:self];
  }

  [(IMDCKSyncState *)self broadcastSyncState];
}

- (void)setErrorToAccountNeedsRepair
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Account in need of repair detected, setting sync error", v9, 2u);
  }

  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D19C48];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = @"Account needs repair";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 errorWithDomain:v5 code:3 userInfo:v6];
  [(IMDCKSyncState *)self addSyncError:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setErrorToKeyRollingError
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Account in need of repair detected, setting sync error", v9, 2u);
  }

  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D19C48];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = @"Account needs repair";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 errorWithDomain:v5 code:6 userInfo:v6];
  [(IMDCKSyncState *)self addSyncError:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (IMDCKSyncStateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end