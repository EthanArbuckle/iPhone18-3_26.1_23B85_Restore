@interface IMDaemonCloudSyncRequestHandler
- (void)broadcastCloudKitState;
- (void)broadcastCloudKitStateAfterClearingErrors;
- (void)broadcastCloudKitStateAfterFetchingAccountStatus;
- (void)cancelSync:(id)sync;
- (void)clearAnalyticDefaultsAndLocalSyncState;
- (void)clearChatZoneSyncToken;
- (void)clearDataFromCloudKit;
- (void)clearLocalCloudKitSyncState;
- (void)createAttachmentZone;
- (void)createChatZone;
- (void)currentStorageOnDeviceWithReply:(id)reply;
- (void)deleteAttachmentZone;
- (void)deleteChatZone;
- (void)deleteExitRecord;
- (void)deleteMessagesZone;
- (void)deleteSalt;
- (void)downloadAttachmentAssets;
- (void)fetchAccountStatusAndUpdateMiCSwitchEligibility;
- (void)fetchCloudKitSyncStateDebuggingInfo:(id)info;
- (void)fetchExitRecord;
- (void)fetchLatestRampState;
- (void)fetchLatestSalt;
- (void)fetchSyncStateStatistics;
- (void)initiatePeriodicSync;
- (void)loadDeletedMessagesWithLimit:(int64_t)limit;
- (void)loadDirtyMessagesWithLimit:(int64_t)limit;
- (void)markAllChatsAsDirty;
- (void)metricAttachments:(int64_t)attachments;
- (void)performAdditionalStorageRequiredCheck;
- (void)printCachedRampState;
- (void)printCachedSalt;
- (void)purgeAttachments:(int64_t)attachments;
- (void)removePathFromiCloudBackups:(id)backups;
- (void)reportMetricToCK:(id)k withDict:(id)dict;
- (void)simulateCloudKitSyncWithSyncState:(id)state;
- (void)startUserInitiatedSync;
- (void)syncAttachments;
- (void)syncDeletesToCloudKit;
- (void)syncMessages;
- (void)toggleiCloudBackupsIfNeeded;
- (void)tryToDisableAllDevices;
- (void)updateAttachmentFileSizes;
- (void)uploadDailyAnalyticstoCloudKit;
- (void)writeAttachments;
- (void)writeCloudKitSyncCounts:(id)counts;
- (void)writeDirtyChats;
- (void)writeDirtyMessages;
- (void)writeExitRecord;
@end

@implementation IMDaemonCloudSyncRequestHandler

- (void)broadcastCloudKitState
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Requested to broadcast CloudKit state", v4, 2u);
    }
  }

  v3 = +[IMDCKUtilities sharedInstance];
  [v3 broadcastCloudKitState];
}

- (void)broadcastCloudKitStateAfterFetchingAccountStatus
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Requested to broadcast CloudKit state after fetching account status", v4, 2u);
    }
  }

  v3 = +[IMDCKUtilities sharedInstance];
  [v3 broadcastCloudKitStateAfterFetchingAccountStatus];
}

- (void)createChatZone
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Request to create chat zone", v4, 2u);
    }
  }

  v3 = +[IMDRecordZoneManager sharedInstance];
  [v3 createChatZoneIfNeededWithCompletionBlock:&stru_100081BD8];
}

- (void)writeDirtyChats
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Request to write all dirty chats", v3, 2u);
    }
  }
}

- (void)deleteChatZone
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Request to delet chat zone and nuke chat sync token", v4, 2u);
    }
  }

  v3 = +[IMDCKChatSyncController sharedInstance];
  [v3 deleteChatZone];
}

- (void)fetchAccountStatusAndUpdateMiCSwitchEligibility
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Request to fetch security level and update MiC switch eligibility", v4, 2u);
    }
  }

  v3 = +[IMDCKUtilities sharedInstance];
  [v3 fetchAccountStatusAndUpdateMiCSwitchEligibility];
}

- (void)markAllChatsAsDirty
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Request to mark all chats as dirty", v4, 2u);
    }
  }

  v3 = +[IMDChatStore sharedInstance];
  [v3 enumerateBatchedChatsFilteredUsingPredicate:0 block:&stru_100081C18];
}

- (void)clearChatZoneSyncToken
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Request to clear chat sync token", v4, 2u);
    }
  }

  v3 = +[IMDCKChatSyncController sharedInstance];
  [v3 deleteChatSyncToken];
}

- (void)createAttachmentZone
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Request to create attachment zone", v4, 2u);
    }
  }

  v3 = +[IMDRecordZoneManager sharedInstance];
  [v3 createAttachmentZoneIfNeededWithCompletionBlock:&stru_100081C38];
}

- (void)deleteAttachmentZone
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Request to delete attachment zone", v4, 2u);
    }
  }

  v3 = +[IMDRecordZoneManager sharedInstance];
  [v3 deleteAttachmentZone];
}

- (void)writeAttachments
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Request to write all attachments", v4, 2u);
    }
  }

  v3 = +[IMDCKAttachmentSyncController sharedInstance];
  [v3 syncAttachmentsWithSyncType:2 deviceConditionsToCheck:0 activity:0 completionBlock:0];
}

- (void)syncAttachments
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Request to sync all attachments", v4, 2u);
    }
  }

  v3 = +[IMDCKAttachmentSyncController sharedInstance];
  [v3 syncAttachmentsWithSyncType:0 deviceConditionsToCheck:0 activity:0 completionBlock:0];
}

- (void)downloadAttachmentAssets
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Request to download CloudKit attachment assets", v4, 2u);
    }
  }

  v3 = +[IMDCKAttachmentSyncController sharedInstance];
  [v3 downloadAttachmentAssetsWithActivity:0 restoringAttachments:1 completion:0];
}

- (void)writeDirtyMessages
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Request to write all dirty messages", v4, 2u);
    }
  }

  v3 = +[IMDCKMessageSyncController sharedInstance];
  [v3 syncMessagesWithSyncType:2 deviceConditionsToCheck:0 activity:0 completionBlock:0];
}

- (void)deleteMessagesZone
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Request to delete message zone", v4, 2u);
    }
  }

  v3 = +[IMDCKMessageSyncController sharedInstance];
  [v3 deleteMessagesZone];
}

- (void)syncMessages
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Request to sync with messages zone", v4, 2u);
    }
  }

  v3 = +[IMDCKMessageSyncController sharedInstance];
  [v3 syncMessagesWithSyncType:1 deviceConditionsToCheck:0 activity:0 completionBlock:0];
}

- (void)writeExitRecord
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Requesting to write Exit record for current date", v5, 2u);
    }
  }

  v3 = +[IMDCKExitManager sharedInstance];
  v4 = +[NSDate date];
  [v3 writeExitRecordWithDate:v4 completion:&stru_100081C58];
}

- (void)fetchExitRecord
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Requesting to fetch exit record", v4, 2u);
    }
  }

  v3 = +[IMDCKExitManager sharedInstance];
  [v3 exitRecordDateWithCompletion:&stru_100081C98];
}

- (void)deleteExitRecord
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Requesting to delete exit record", v4, 2u);
    }
  }

  v3 = +[IMDCKExitManager sharedInstance];
  [v3 deleteExitRecordWithCompletion:&stru_100081CB8];
}

- (void)tryToDisableAllDevices
{
  v2 = +[IMDCKUtilities sharedInstance];
  [v2 disableAllDevicesWithCompletion:&stru_100081CF8];
}

- (void)cancelSync:(id)sync
{
  syncCopy = sync;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Attempting to cancel sync", v7, 2u);
    }
  }

  v5 = +[IMDCKSyncController sharedInstance];
  syncState = [v5 syncState];

  [syncState setSyncCancelled:1];
  syncCopy[2](syncCopy, 1, [syncState syncType]);
}

- (void)initiatePeriodicSync
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "beginning periodic sync and setting priority ramp request default", v4, 2u);
    }
  }

  v3 = +[IMDCKSyncController sharedInstance];
  [v3 beginPeriodicSyncWithChecks:2 priority:XPC_ACTIVITY_PRIORITY_UTILITY reason:@"SPI_initiated"];
}

- (void)startUserInitiatedSync
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "beginning user initiated sync", v4, 2u);
    }
  }

  v3 = +[IMDCKSyncController sharedInstance];
  [v3 beginUserInitiatedSync];
}

- (void)loadDirtyMessagesWithLimit:(int64_t)limit
{
  v4 = +[IMDMessageStore sharedInstance];
}

- (void)loadDeletedMessagesWithLimit:(int64_t)limit
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      limitCopy = limit;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "loadDeleted messages with limit %ld", &v6, 0xCu);
    }
  }

  v5 = +[IMDMessageStore sharedInstance];
}

- (void)clearLocalCloudKitSyncState
{
  v2 = +[IMDCKUtilities sharedInstance];
  [v2 clearLocalCloudKitSyncState:3];

  v3 = +[IMCoreAutomationNotifications sharedInstance];
  [v3 postCoreAutomationNotificationWithAction:@"clearLocalCloudKitSyncState"];
}

- (void)clearDataFromCloudKit
{
  v2 = +[IMDRecordZoneManager sharedInstance];
  [v2 deleteAllZones];

  v3 = +[IMDCKChatSyncController sharedInstance];
  [v3 deleteChatZone];

  v4 = +[IMDCKMessageSyncController sharedInstance];
  [v4 deleteMessagesZone];

  v5 = +[IMDCKAttachmentSyncController sharedInstance];
  [v5 deleteAttachmentZone];

  v6 = +[IMDCKRecordSaltManager sharedInstance];
  [v6 deleteDeDupeRecordZone];

  v7 = +[IMDCKUpdateSyncController sharedInstance];
  [v7 deleteUpdateZone];

  v8 = +[IMDCKRecoverableMessageSyncController sharedInstance];
  [v8 deleteRecoverableMessageZone];

  v9 = +[IMDCKSyncController sharedInstance];
  [v9 clearCKRelatedDefaults];

  v10 = +[IMCoreAutomationNotifications sharedInstance];
  [v10 postCoreAutomationNotificationWithAction:@"clearDataFromCloudKit"];
}

- (void)currentStorageOnDeviceWithReply:(id)reply
{
  replyCopy = reply;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024034;
  block[3] = &unk_100081D20;
  v7 = replyCopy;
  v5 = replyCopy;
  dispatch_async(v4, block);
}

- (void)performAdditionalStorageRequiredCheck
{
  v2 = +[IMDCKUtilities sharedInstance];
  [v2 estimateQuotaAvailability:&stru_100081D60];
}

- (void)broadcastCloudKitStateAfterClearingErrors
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Requested to clear sync errors and broadcast CloudKit state", v4, 2u);
    }
  }

  v3 = +[IMDCKUtilities sharedInstance];
  [v3 broadcastCloudKitStateAfterClearingErrors];
}

- (void)uploadDailyAnalyticstoCloudKit
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Requested to upload daily syncing analytics to CK", buf, 2u);
    }
  }

  v3 = +[IMDCKSyncController sharedInstance];
  logCloudKitAnalytics = [v3 logCloudKitAnalytics];

  v5 = IMOSLoggingEnabled();
  if (logCloudKitAnalytics)
  {
    if (!v5)
    {
      return;
    }

    v6 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v10 = 0;
    v7 = "Uploaded analytics to CK.";
    v8 = &v10;
    goto LABEL_12;
  }

  if (!v5)
  {
    return;
  }

  v6 = OSLogHandleForIMFoundationCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 0;
    v7 = "Did not upload analytics to CK.";
    v8 = &v9;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v7, v8, 2u);
  }

LABEL_13:
}

- (void)clearAnalyticDefaultsAndLocalSyncState
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Requested to clear analytic defaults and local sync state", v4, 2u);
    }
  }

  v3 = +[IMDCKSyncController sharedInstance];
  [v3 clearAnalyticDefaultsAndLocalSyncState];
}

- (void)printCachedRampState
{
  v2 = +[IMDCKRampManager sharedInstance];
  [v2 cachedRampState:&stru_100081DA0];
}

- (void)updateAttachmentFileSizes
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Calling to update attachment file sizes", v4, 2u);
    }
  }

  v3 = +[IMDCKCacheDeleteManager sharedInstance];
  [v3 updateAttachmentFileSizesWithActivity:0];
}

- (void)fetchSyncStateStatistics
{
  v2 = IMDMessageRecordCalculateLocalCloudKitStatistics();
  if (v2)
  {
    v3 = +[IMDefaults sharedInstance];
    [v3 setValue:v2 forDomain:IMCloudKitDefinesDomain forKey:IMDCKLocalDBStatsKey];

    v4 = +[IMFeatureFlags sharedFeatureFlags];
    isMessagesIniCloudVersion2 = [v4 isMessagesIniCloudVersion2];

    if (isMessagesIniCloudVersion2)
    {
      v6 = [v2 mutableCopy];
      v7 = +[IMDMessagesSyncCoordinator readServerCountsFromDefaults];
      v8 = v7;
      if (v7)
      {
        v19 = IMDMessageRecordCloudKitStatisticServerCountsKey;
        v20 = v7;
        v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        [v6 addEntriesFromDictionary:v9];
      }

      else
      {
        v9 = IMLogHandleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100053B9C(v9);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v6 description];
          v17 = 138412290;
          v18 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Fetching sync stats: %@", &v17, 0xCu);
        }
      }

      v15 = +[IMDBroadcastController sharedProvider];
      broadcasterForAllListeners = [v15 broadcasterForAllListeners];
      [broadcasterForAllListeners didFetchSyncStateStats:v6];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [v2 description];
          v17 = 138412290;
          v18 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Fetching sync stats: %@", &v17, 0xCu);
        }
      }

      v6 = +[IMDBroadcastController sharedProvider];
      broadcasterForAllListeners2 = [v6 broadcasterForAllListeners];
      [broadcasterForAllListeners2 didFetchSyncStateStats:v2];
    }
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100053BE0(v6);
    }
  }
}

- (void)toggleiCloudBackupsIfNeeded
{
  v2 = +[IMDCKBackupController sharedInstance];
  [v2 toggleiCloudBackupsIfNeeded:&stru_100081DE0];
}

- (void)removePathFromiCloudBackups:(id)backups
{
  backupsCopy = backups;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(a2);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = backupsCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ (%@)", &v8, 0x16u);
    }
  }

  v7 = +[IMDCKBackupController sharedInstance];
  [v7 removePathFromiCloudBackup:backupsCopy];
}

- (void)writeCloudKitSyncCounts:(id)counts
{
  countsCopy = counts;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [countsCopy description];
      v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_100083400];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "set sync counts: %@", &v7, 0xCu);
    }
  }

  _IMDMessageRecordSetCloudKitSyncCounts();
}

- (void)reportMetricToCK:(id)k withDict:(id)dict
{
  kCopy = k;
  dictCopy = dict;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412546;
      v10 = kCopy;
      v11 = 2112;
      v12 = dictCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "post metric to analytic zone with opGroupName: %@, dict: %@", &v9, 0x16u);
    }
  }

  v8 = +[IMDCKExitManager sharedInstance];
  [v8 submitCloudKitAnalyticWithOperationGroupName:kCopy analyticDictionary:dictCopy];
}

- (void)fetchCloudKitSyncStateDebuggingInfo:(id)info
{
  infoCopy = info;
  v4 = +[IMDCKSyncController sharedInstance];
  v5 = [v4 syncStateDebuggingInfo:infoCopy];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "fetched cloudkit sync state debugging info: %@", &v9, 0xCu);
    }
  }

  v7 = +[IMDBroadcastController sharedProvider];
  broadcasterForAllListeners = [v7 broadcasterForAllListeners];
  [broadcasterForAllListeners didFetchCloudKitSyncDebuggingInfo:v5];
}

- (void)simulateCloudKitSyncWithSyncState:(id)state
{
  stateCopy = state;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = stateCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "simulateCloudKitSyncWithSyncState called with sync state %@", &v7, 0xCu);
    }
  }

  if (stateCopy)
  {
    v5 = +[IMDBroadcastController sharedProvider];
    broadcasterForCloudSyncListeners = [v5 broadcasterForCloudSyncListeners];
    [broadcasterForCloudSyncListeners updateCloudKitStateWithDictionary:stateCopy];
  }
}

- (void)metricAttachments:(int64_t)attachments
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      attachmentsCopy = attachments;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Calling to metric attachments with bytes: %lld", &v6, 0xCu);
    }
  }

  v5 = +[IMDCKCacheDeleteManager sharedInstance];
  [v5 metricAttachmentsToPurge:attachments withActivity:0];
}

- (void)purgeAttachments:(int64_t)attachments
{
  v4 = +[IMDCKUtilities sharedInstance];
  cacheDeleteEnabled = [v4 cacheDeleteEnabled];

  v6 = IMOSLoggingEnabled();
  if (cacheDeleteEnabled)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 134217984;
        attachmentsCopy = attachments;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Calling to purge attachments with bytes: %lld", &v10, 0xCu);
      }
    }

    v8 = +[IMDCKCacheDeleteManager sharedInstance];
    [v8 purgeAttachments:attachments];
    goto LABEL_13;
  }

  if (v6)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Tried to purge attachments without proper default ---- please set them: defaults write com.apple.madrid EnableCacheDelete -BOOL YES", &v10, 2u);
    }
  }

  if (IMIsRunningInAutomation())
  {
    v8 = +[IMCoreAutomationNotifications sharedInstance];
    [v8 postCoreAutomationNotificationFinishedPurgingAttachments:0 withErrorString:@"EnableCacheDelete default not enabled"];
LABEL_13:
  }
}

- (void)fetchLatestSalt
{
  v2 = +[IMDCKRecordSaltManager sharedInstance];
  [v2 fetchLatestRecordKeyFromCKAndCreateIfKeyDoesNotExistWithCompletion:0];
}

- (void)printCachedSalt
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = +[IMDCKRecordSaltManager sharedInstance];
      cachedSalt = [v3 cachedSalt];
      v5 = 138412290;
      v6 = cachedSalt;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Current cached salt %@", &v5, 0xCu);
    }
  }
}

- (void)deleteSalt
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Deleting salt locally and from cloudKit", v4, 2u);
    }
  }

  v3 = +[IMDCKRecordSaltManager sharedInstance];
  [v3 deleteDeDupeRecordZone];
}

- (void)fetchLatestRampState
{
  v3 = +[IMDCKRampManager sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002577C;
  v4[3] = &unk_100081E08;
  v4[4] = self;
  [v3 fetchLatestRampStateFromCK:v4];
}

- (void)syncDeletesToCloudKit
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Request from client to sync deletes to cloudkit", v4, 2u);
    }
  }

  v3 = +[IMDCKSyncController sharedInstance];
  [v3 syncDeletesToCloudKitWithActivity:0 completion:&stru_100081E28];
}

@end