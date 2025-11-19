@interface IMDCKBackupController
+ (id)sharedInstance;
- (BOOL)_canDisableiCloudBackupsAfterRestore;
- (BOOL)_currentDeviceStateIsRestore:(id)a3;
- (BOOL)_deviceStateHasChanged:(id)a3;
- (BOOL)_firstSyncTimeoutHasExpired;
- (BOOL)_setiCloudBackupAttribute:(BOOL)a3 onItemAtPath:(id)a4 error:(id *)a5;
- (BOOL)_timeIntervalFromFirstSync:(id)a3 hasExpiredForDate:(id)a4;
- (BOOL)checkDatabaseWasRestored;
- (BOOL)iCloudBackupEnabledSystemWide;
- (BOOL)iCloudBackupsDisabled;
- (BOOL)pathRemovedFromBackup:(id)a3;
- (BOOL)readUserDefaultBoolForKey:(id)a3;
- (BOOL)setupAssistantNeedsToRun;
- (IMDCKUtilities)ckUtilities;
- (double)_firstSyncExpirationTimeInterval;
- (id)_debuggingRestoreStateDescription;
- (id)_primaryAccountAltDSID;
- (id)_serverBagTimeIntervalForFirstSyncTimeout;
- (id)createBackupManager;
- (id)dateOfLastBackUp;
- (id)syncStateDebuggingInfo:(id)a3;
- (int64_t)_attemptToDisableiCloudBackupsWithCurrentDeviceState:(id)a3;
- (int64_t)_disableiCloudBackupIfSyncPercentageIsHighEnough:(int64_t)a3 totalCount:(int64_t)a4;
- (int64_t)_readRecordCount;
- (void)_deviceIDFromMobileBackupManager:(id *)a3 legacyDeviceID:(id *)a4;
- (void)_enqueOperation:(id)a3;
- (void)_ensureRestoredDatabaseToBackup;
- (void)_fetchCountOfSyncedCloudKitRecords:(int64_t *)a3 totalCount:(int64_t *)a4;
- (void)_saveRecordCount:(int64_t)a3;
- (void)_setICloudBackupsDisabled:(BOOL)a3;
- (void)eventStreamHandler:(id)a3 didReceiveEventWithName:(id)a4 userInfo:(id)a5;
- (void)registerForDistributedNotifications;
- (void)removePathFromiCloudBackup:(id)a3;
- (void)sendDeviceIDToCloudKitWithCompletion:(id)a3;
- (void)setFirstSyncDateToNow;
- (void)toggleiCloudBackupsIfNeeded:(id)a3;
@end

@implementation IMDCKBackupController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B65A588;
  block[3] = &unk_278702AF8;
  block[4] = a1;
  if (qword_2814210C0 != -1)
  {
    dispatch_once(&qword_2814210C0, block);
  }

  v2 = qword_281421038;

  return v2;
}

- (BOOL)iCloudBackupsDisabled
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(IMDCKBackupController *)self _disabledDirectoryPath];
  v15 = 0;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  v4 = [v3 __im_getiCloudBackupAttributeForItemAtPath:v2 attributeValue:&v15 error:&v14];
  v5 = v14;

  v6 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = @"ENABLED";
        if (v15)
        {
          v8 = @"DISABLED";
        }

        *buf = 138412546;
        v17 = v8;
        v18 = 2112;
        v19 = v2;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "iCloud backups are %@ (at path '%@')", buf, 0x16u);
      }
    }

    v9 = v15;
  }

  else
  {
    if (v6)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v5 localizedDescription];
        *buf = 138412546;
        v17 = v2;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Failed to get iCloud backup attribute for path '%@', error: %@", buf, 0x16u);
      }
    }

    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (IMDCKUtilities)ckUtilities
{
  WeakRetained = objc_loadWeakRetained(&self->_ckUtilities);

  if (!WeakRetained)
  {
    v4 = +[IMDCKUtilities sharedInstance];
    objc_storeWeak(&self->_ckUtilities, v4);
  }

  v5 = objc_loadWeakRetained(&self->_ckUtilities);

  return v5;
}

- (void)_ensureRestoredDatabaseToBackup
{
  if ((IMGetCachedDomainBoolForKey() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "_ensureRestoredDatabaseToBackup restoring everything to iCloudBackup.", v4, 2u);
      }
    }

    IMSetDomainBoolForKey();
    [(IMDCKBackupController *)self _setICloudBackupsDisabled:0];
  }
}

- (BOOL)readUserDefaultBoolForKey:(id)a3
{
  v3 = [(IMDCKBackupController *)self readUserDefaultForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_readRecordCount
{
  v2 = [(IMDCKBackupController *)self readUserDefaultForKey:@"IMDCKBackupControllerBackupRecordCountKey"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 longLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_saveRecordCount:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [(IMDCKBackupController *)self writeUserDefault:v4 forKey:@"IMDCKBackupControllerBackupRecordCountKey"];
}

- (id)_serverBagTimeIntervalForFirstSyncTimeout
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"disable-icloud-backup-after-first-sync-interval"];

  return v3;
}

- (double)_firstSyncExpirationTimeInterval
{
  v2 = IMDCKBackupControllerDefaultTimebombIntervalInDays;
  v3 = [(IMDCKBackupController *)self _serverBagTimeIntervalForFirstSyncTimeout];
  v4 = v3;
  if (v3)
  {
    v2 = [v3 integerValue];
  }

  return v2 * 86400.0;
}

- (void)setFirstSyncDateToNow
{
  v3 = [(IMDCKBackupController *)self firstSyncDate];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    [(IMDCKBackupController *)self setFirstSyncDate:v4];
  }
}

- (BOOL)_firstSyncTimeoutHasExpired
{
  v3 = [(IMDCKBackupController *)self firstSyncDate];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [(IMDCKBackupController *)self _timeIntervalFromFirstSync:v3 hasExpiredForDate:v4];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "First sync date is nil, this is a bug -- setFirstSyncDateToNow should have been called before this.", v8, 2u);
      }
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)_timeIntervalFromFirstSync:(id)a3 hasExpiredForDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    [v6 timeIntervalSinceReferenceDate];
    v10 = v9;
    [v8 timeIntervalSinceReferenceDate];
    v12 = v11 - v10;
    [(IMDCKBackupController *)self _firstSyncExpirationTimeInterval];
    v14 = v12 > v13;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "nil dates sent into _timeIntervalFromFirstSync", v17, 2u);
      }
    }

    v14 = 0;
  }

  return v14;
}

- (void)toggleiCloudBackupsIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(IMDCKBackupController *)self _readCurrentDeviceState];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B65ADAC;
  aBlock[3] = &unk_2787071D8;
  aBlock[4] = self;
  v6 = v5;
  v16 = v6;
  v7 = v4;
  v17 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277D18E90]];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    if (v8)
    {
      v8[2](v8, 3, 0);
    }
  }

  else
  {
    v11 = [(IMDCKBackupController *)self ckUtilities];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_22B65AF60;
    v12[3] = &unk_2787071D8;
    v12[4] = self;
    v13 = v6;
    v14 = v8;
    [v11 fetchCloudKitAccountStatusWithCompletion:v12];
  }
}

- (void)registerForDistributedNotifications
{
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    v3 = +[IMDDistributedNotificationXPCEventStreamHandler sharedInstance];
    [v3 addDelegate:self queue:MEMORY[0x277D85CD0]];
  }
}

- (id)_primaryAccountAltDSID
{
  v2 = [(IMDCKBackupController *)self ckUtilities];
  v3 = [v2 _primaryiCloudAccountAltDSID];

  return v3;
}

- (int64_t)_disableiCloudBackupIfSyncPercentageIsHighEnough:(int64_t)a3 totalCount:(int64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  if (a4 < 1)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = a3 / a4;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v15 = 134218496;
      v16 = v7;
      v17 = 2048;
      v18 = a3;
      v19 = 2048;
      v20 = a4;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Calculated percent synced (%f) from (%lld synced of %lld total records) ok ", &v15, 0x20u);
    }
  }

  v9 = v7 > *a33s;
  v10 = IMOSLoggingEnabled();
  if (v9)
  {
    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v15 = 134218240;
        v16 = v7;
        v17 = 2048;
        *&v18 = *a33s;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Disabling iCloud backup since percentage of synced cloudkit records is high enough: %f >= %f ", &v15, 0x16u);
      }
    }

    [(IMDCKBackupController *)self setICloudBackupsDisabled:1];
    result = 1;
  }

  else
  {
    if (v10)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = 134218240;
        v16 = v7;
        v17 = 2048;
        *&v18 = *a33s;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "NOT disabling iCloud backup since percentage of synced cloudkit records is NOT high enough: %f < %f. We will check again later.", &v15, 0x16u);
      }
    }

    result = 5;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_fetchCountOfSyncedCloudKitRecords:(int64_t *)a3 totalCount:(int64_t *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = IMDMessageRecordCalculateLocalCloudKitStatistics();
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v6 description];
        v10 = [v9 description];
        v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_283F23018];
        v19 = 138412290;
        v20 = v11;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Loaded cloud kit stats: %@", &v19, 0xCu);
      }
    }

    v12 = [v6 objectForKey:*MEMORY[0x277D19D40]];
    *a4 = [v12 unsignedLongValue];

    v13 = [v6 objectForKey:*MEMORY[0x277D19D20]];
    *a3 = [v13 unsignedLongValue];

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *a4;
        v16 = *a3;
        v19 = 134218240;
        v20 = v15;
        v21 = 2048;
        v22 = v16;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Total record count: %lld, total syncedCount: %lld", &v19, 0x16u);
      }
    }
  }

  else if (v7)
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "IMDMessageRecordCalculateLocalCloudKitStatistics returned NULL stats", &v19, 2u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_currentDeviceStateIsRestore:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D18E80]];
  if ([v4 BOOLValue])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D18E78]];
    if ([v6 BOOLValue])
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 objectForKeyedSubscript:*MEMORY[0x277D18E88]];
      v5 = [v7 BOOLValue];
    }
  }

  return v5;
}

- (BOOL)_deviceStateHasChanged:(id)a3
{
  v4 = a3;
  v5 = [(IMDCKBackupController *)self _readPreviousDeviceState];
  if (v5)
  {
    v6 = *MEMORY[0x277D18E70];
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D18E70]];
    v8 = [v5 objectForKeyedSubscript:v6];
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      v11 = [v7 isEqual:v8] ^ 1;
    }
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11;
}

- (int64_t)_attemptToDisableiCloudBackupsWithCurrentDeviceState:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(IMDCKBackupController *)self _currentDeviceStateIsRestore:v4];
    v6 = IMOSLoggingEnabled();
    if (v5)
    {
      if (v6)
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Device has been restored, checking to see if we can disable iCloud backups", buf, 2u);
        }
      }

      v8 = [(IMDCKBackupController *)self _canDisableiCloudBackupsAfterRestore];
      v9 = IMOSLoggingEnabled();
      if (v8)
      {
        if (v9)
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Device has been restored ok and is in acceptable state, wa are disabling iClound backups now", buf, 2u);
          }
        }

        v11 = 1;
        [(IMDCKBackupController *)self setICloudBackupsDisabled:1];
      }

      else
      {
        if (v9)
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Enabling iCloud backup and restore until restore is complete.", buf, 2u);
          }
        }

        [(IMDCKBackupController *)self setICloudBackupsDisabled:0];
        v11 = 5;
      }
    }

    else
    {
      if (v6)
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Checking counts of synced records to see if we can automatically disable iCloud backups", buf, 2u);
        }
      }

      v16 = 0;
      *buf = 0;
      [(IMDCKBackupController *)self _fetchCountOfSyncedCloudKitRecords:buf totalCount:&v16];
      v11 = [(IMDCKBackupController *)self _disableiCloudBackupIfSyncPercentageIsHighEnough:*buf totalCount:v16];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Device State is unexpectedly nil", buf, 2u);
      }
    }

    v11 = 8;
  }

  return v11;
}

- (void)_setICloudBackupsDisabled:(BOOL)a3
{
  v3 = a3;
  v30 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v7 = [(IMDCKBackupController *)self _disabledDirectoryPath];
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v22 = 0;
    v9 = [v11 __im_setiCloudBackupAttribute:0 onDirectoryAndChildrenAtPath:v7 error:&v22];
    v10 = v22;

    goto LABEL_5;
  }

  v5 = [(IMDCKBackupController *)self ckUtilities];
  v6 = [v5 removeFromBackUpAllowed];

  if (v6)
  {
    v7 = [(IMDCKBackupController *)self _disabledDirectoryPath];
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v23 = 0;
    v9 = [v8 __im_setiCloudBackupAttribute:1 onItemAtPath:v7 error:&v23];
    v10 = v23;

LABEL_5:
    if (v9)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [(IMDCKBackupController *)self _disabledDirectoryPath];
          v14 = v13;
          v15 = @"ENABLED";
          if (v3)
          {
            v15 = @"DISABLED";
          }

          *buf = 138412546;
          v25 = v15;
          v26 = 2112;
          v27 = v13;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "set iCloud backups to %@ (at path '%@')", buf, 0x16u);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v10 localizedDescription];
        v18 = v17;
        v19 = @"NO";
        *buf = 138412802;
        if (v3)
        {
          v19 = @"YES";
        }

        v25 = v19;
        v26 = 2112;
        v27 = v7;
        v28 = 2112;
        v29 = v17;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Failed to set iCloud backup file attribute to %@ on path: '%@'. Error: %@", buf, 0x20u);
      }
    }

    goto LABEL_19;
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "We are not allowed to remove backups from iCloud and we got called to disable the back up -- early returning", buf, 2u);
    }
  }

LABEL_19:
  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setiCloudBackupAttribute:(BOOL)a3 onItemAtPath:(id)a4 error:(id *)a5
{
  v6 = MEMORY[0x277CCAA00];
  v7 = a4;
  v8 = [v6 defaultManager];
  LOBYTE(a5) = [v8 __im_setiCloudBackupAttribute:1 onItemAtPath:v7 error:a5];

  return a5;
}

- (void)removePathFromiCloudBackup:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDCKBackupController *)self ckUtilities];
  v6 = [v5 removeFromBackUpAllowed];

  if ((v6 & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_21;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "We are not allowed to remove this device from backup -- not removing path (%@) from backup", buf, 0xCu);
    }

    goto LABEL_6;
  }

  if (![(IMDCKBackupController *)self iCloudBackupsDisabled])
  {
    v14 = 0;
    v8 = [(IMDCKBackupController *)self _setiCloudBackupAttribute:1 onItemAtPath:v4 error:&v14];
    v9 = v14;
    v10 = IMOSLoggingEnabled();
    if (v8)
    {
      if (v10)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v16 = v4;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "removed path from iCloud backup: '%@'", buf, 0xCu);
        }

LABEL_19:
      }
    }

    else if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v9 localizedDescription];
        *buf = 138412546;
        v16 = v4;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Failed to set iCloud backup file attribute to YES on path: '%@'. Error: %@", buf, 0x16u);
      }

      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "All iCloud backups disabled so path is already not backing up: %@", buf, 0xCu);
    }

LABEL_6:
  }

LABEL_21:

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)pathRemovedFromBackup:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(IMDCKBackupController *)self iCloudBackupsDisabled])
  {
    v5 = 1;
  }

  else
  {
    v17 = 0;
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = 0;
    v7 = [v6 __im_getiCloudBackupAttributeForItemAtPath:v4 attributeValue:&v17 error:&v16];
    v8 = v16;

    v9 = IMOSLoggingEnabled();
    if (v7)
    {
      if (v9)
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = @"ENABLED";
          if (v17)
          {
            v11 = @"DISABLED";
          }

          *buf = 138412546;
          v19 = v11;
          v20 = 2112;
          v21 = v4;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "iCloud backups are %@ for path '%@')", buf, 0x16u);
        }
      }

      v5 = v17;
    }

    else
    {
      if (v9)
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [v8 localizedDescription];
          *buf = 138412546;
          v19 = v4;
          v20 = 2112;
          v21 = v13;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Failed to get iCloud backup attribute for path '%@', error: %@", buf, 0x16u);
        }
      }

      v5 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

- (id)createBackupManager
{
  v5 = *MEMORY[0x277D85DE8];
  if (qword_27D8CFFC0 != -1)
  {
    sub_22B7D8344();
  }

  v2 = qword_27D8CFFB8;
  if (qword_27D8CFFB8)
  {
    v2 = objc_alloc_init(qword_27D8CFFB8);
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)iCloudBackupEnabledSystemWide
{
  v2 = [(IMDCKBackupController *)self createBackupManager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isBackupEnabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)setupAssistantNeedsToRun
{
  if (qword_27D8CFFD0 != -1)
  {
    sub_22B7D8358();
  }

  v3 = off_27D8CFFC8;
  if (!off_27D8CFFC8)
  {
    return 1;
  }

  return v3();
}

- (void)_deviceIDFromMobileBackupManager:(id *)a3 legacyDeviceID:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = [(IMDCKBackupController *)self createBackupManager];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 backupDeviceUUID];
    v9 = [v7 backupDeviceUDID];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Device ID from MobileBackup deviceID (deviceUUID) = %@, legacyDevice (deviceUDID) = %@", &v14, 0x16u);
    }
  }

  if (a3)
  {
    v11 = v8;
    *a3 = v8;
  }

  if (a4)
  {
    v12 = v9;
    *a4 = v9;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_enqueOperation:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting operation: '%@'", &v8, 0xCu);
    }
  }

  v5 = +[IMDCKDatabaseManager sharedInstance];
  v6 = [v5 truthDatabase];
  [v6 addOperation:v3];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendDeviceIDToCloudKitWithCompletion:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDCKBackupController *)self ckUtilities];
  v6 = [v5 cloudKitSyncingEnabled];

  if (v6)
  {
    v7 = [(IMDCKBackupController *)self readUserDefaultForKey:@"IMDCKBackupControllerWrittenQuotaRecordKeyV2"];
    v8 = [v7 BOOLValue];

    if (v8)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "The iCloud quota record has already been written, returning", buf, 2u);
        }
      }

      if (v4)
      {
        v4[2](v4, 1, 0);
      }

      goto LABEL_37;
    }

    v30 = 0;
    v31 = 0;
    [(IMDCKBackupController *)self _deviceIDFromMobileBackupManager:&v31 legacyDeviceID:&v30];
    v12 = v31;
    v13 = v30;
    v14 = IMOSLoggingEnabled();
    if (v12 | v13)
    {
      if (v14)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v33 = v12;
          v34 = 2112;
          v35 = v13;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "deviceID (deviceUUID) = %@, legacyDevice (deviceUDID) = %@", buf, 0x16u);
        }
      }

      v16 = _IMCreatePredicateWithDeviceUDIDAndDeviceUUID(v12, v13);
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [v16 predicateFormat];
          *buf = 138412290;
          v33 = v18;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Writing grace quota with device IDs: '%@'", buf, 0xCu);
        }
      }

      v19 = [objc_alloc(MEMORY[0x277CBC578]) initWithRecordType:@"InitialGraceQuota" predicate:v16];
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v33 = v19;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "created query ok: %@", buf, 0xCu);
        }
      }

      v21 = objc_alloc_init(MEMORY[0x277CBC4F0]);
      [v21 setAllowsCellularAccess:1];
      [v21 setQualityOfService:17];
      v22 = [objc_alloc(MEMORY[0x277CBC590]) initWithQuery:v19];
      [v22 setConfiguration:v21];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = sub_22B65D038;
      v26[3] = &unk_278707200;
      v27 = v16;
      v28 = self;
      v29 = v4;
      v23 = v16;
      [v22 setQueryCompletionBlock:v26];
      [(IMDCKBackupController *)self _enqueOperation:v22];
    }

    else
    {
      if (v14)
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "both device UUID or UDID are nil", buf, 2u);
        }
      }

      if (!v4)
      {
        goto LABEL_36;
      }

      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMDCKBackupControllerErrorDomain" code:0 userInfo:0];
      (v4)[2](v4, 0, v19);
    }

LABEL_36:
    goto LABEL_37;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Messages in iCloud is not on, not sending up quota grace request", buf, 2u);
    }
  }

  if (v4)
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMDCKBackupControllerErrorDomain" code:1 userInfo:0];
    (v4)[2](v4, 0, v11);
  }

LABEL_37:

  v25 = *MEMORY[0x277D85DE8];
}

- (id)dateOfLastBackUp
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [(IMDCKBackupController *)self createBackupManager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 dateOfLastBackup];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "BackupManager is nil, no date for last backup", &v9, 2u);
      }
    }

    v4 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Date of last backup %@", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)checkDatabaseWasRestored
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = 0;
  [(IMDCKBackupController *)self _fetchCountOfSyncedCloudKitRecords:&v8 totalCount:&v7];
  v2 = v7;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      *buf = 138412802;
      if (v2 > 9)
      {
        v4 = @"YES";
      }

      v10 = v4;
      v11 = 2048;
      v12 = v7;
      v13 = 1024;
      v14 = 10;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Database is in acceptable restore state: %@ (%lld records found, at least %d expected before we can disable iCloud backups if device is in restore state)", buf, 0x1Cu);
    }
  }

  result = v2 > 9;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_debuggingRestoreStateDescription
{
  v2 = [(IMDCKBackupController *)self createBackupManager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 restoreState];
    v5 = v4;
    if (v4)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = sub_22B65D58C([v4 state]);
      v8 = [v5 description];
      v9 = [v6 stringWithFormat:@"Got valid restore state (%@) from MBManager: %@", v7, v8];
    }

    else
    {
      v9 = @"BackupManager restore state is nil";
    }
  }

  else
  {
    v9 = @"BackupManager is nil, can't disable iCloud backups";
  }

  return v9;
}

- (BOOL)_canDisableiCloudBackupsAfterRestore
{
  v23 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "checking to see if device is restoring…", &v19, 2u);
    }
  }

  if (![(IMDCKBackupController *)self setupAssistantNeedsToRun])
  {
    v5 = [(IMDCKBackupController *)self createBackupManager];
    v6 = v5;
    if (!v5)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "BackupManager is nil, can't disable iCloud backups", &v19, 2u);
        }
      }

      v4 = 0;
      goto LABEL_31;
    }

    v7 = [v5 restoreState];
    v8 = IMOSLoggingEnabled();
    if (v7)
    {
      if (v8)
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = sub_22B65D58C([v7 state]);
          v11 = [v7 description];
          v19 = 138412546;
          v20 = v10;
          v21 = 2112;
          v22 = v11;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Got valid restore state (%@) from MBManager: %@", &v19, 0x16u);
        }
      }

      v12 = [v7 state];
      if (v12 > 6)
      {
        goto LABEL_19;
      }

      if (((1 << v12) & 0x6E) != 0)
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = sub_22B65D58C([v7 state]);
            v19 = 138412290;
            v20 = v14;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Can't disable iCloud backups because restore state is: %@. Will try again later.", &v19, 0xCu);
          }
        }

LABEL_19:
        v4 = 0;
LABEL_30:

LABEL_31:
        goto LABEL_32;
      }
    }

    else if (v8)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "BackupManager restore state is nil, checking database directly...", &v19, 2u);
      }
    }

    v4 = [(IMDCKBackupController *)self checkDatabaseWasRestored];
    goto LABEL_30;
  }

  v4 = 0;
LABEL_32:
  v17 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)syncStateDebuggingInfo:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(IMDCKBackupController *)self _debuggingRestoreStateDescription];
  [v4 setObject:v5 forKey:@"restore-state"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMDCKBackupController setupAssistantNeedsToRun](self, "setupAssistantNeedsToRun")}];
  [v4 setObject:v6 forKey:@"setup-assistant-needs-to-run"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMDCKBackupController checkDatabaseWasRestored](self, "checkDatabaseWasRestored")}];
  [v4 setObject:v7 forKey:@"db-has-records"];

  v8 = [(IMDCKBackupController *)self dateOfLastBackUp];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v11 = v10;

  [v4 setObject:v11 forKey:@"last-backup-date"];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMDCKBackupController iCloudBackupsDisabled](self, "iCloudBackupsDisabled")}];
  [v4 setObject:v12 forKey:@"icloud-backups-disabled"];

  v13 = [(IMDCKBackupController *)self firstSyncDate];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v16 = v15;

  [v4 setObject:v16 forKey:@"first-sync-date"];
  v17 = [(IMDCKBackupController *)self _readCurrentDeviceState];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = [MEMORY[0x277CBEB68] null];
  }

  v20 = v19;

  [v4 setObject:v20 forKey:@"device-state"];
  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = [(IMDCKBackupController *)self _disabledDirectoryPath];
  v32 = 0;
  v33 = 0;
  v31 = 0;
  [v21 __im_getItemsRemovedFromiCloudBackupsAtDirectoryPath:v22 outPaths:&v33 outRemovedPaths:&v32 error:&v31];
  v23 = v33;
  v24 = v32;
  v25 = v31;

  v26 = v24;
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = [MEMORY[0x277CBEB68] null];
  }

  v29 = v28;

  [v4 setObject:v29 forKey:@"paths-removed-from-backup"];

  return v4;
}

- (void)eventStreamHandler:(id)a3 didReceiveEventWithName:(id)a4 userInfo:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:*MEMORY[0x277D19CD0]])
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Handling event with name %@ userInfo %@", &v13, 0x16u);
      }
    }

    [(IMDCKBackupController *)self setICloudBackupsDisabled:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end