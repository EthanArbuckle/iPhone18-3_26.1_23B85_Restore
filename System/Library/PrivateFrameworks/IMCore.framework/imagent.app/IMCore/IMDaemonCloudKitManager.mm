@interface IMDaemonCloudKitManager
+ (IMDaemonCloudKitManager)sharedManager;
- (void)_registerForAliasesBackup;
- (void)_registerForAttachmentFileSizeUpdate;
- (void)_registerForBackupSyncing;
- (void)_registerForMessageSyncing;
- (void)_registerForMetricsLogging;
- (void)_registerForTelemetrySyncing;
- (void)fetchLatestSaltWithMessageContext:(id)a3;
- (void)registerForCloudKitSyncing;
- (void)uploadDailyAnalyticstoCloudKit;
@end

@implementation IMDaemonCloudKitManager

+ (IMDaemonCloudKitManager)sharedManager
{
  if (qword_10008B800 != -1)
  {
    sub_100053CB0();
  }

  v3 = qword_10008B808;

  return v3;
}

- (void)registerForCloudKitSyncing
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Registering for cloudKitSyncing", v6, 2u);
    }
  }

  v4 = +[IMDCKBackupController sharedInstance];
  [v4 registerForDistributedNotifications];

  [(IMDaemonCloudKitManager *)self fetchLatestSaltWithMessageContext:0];
  v5 = +[IMDCKRampManager sharedInstance];
  [v5 fetchLatestRampStateFromCK:0];

  [(IMDaemonCloudKitManager *)self _registerForBackupSyncing];
  [(IMDaemonCloudKitManager *)self _registerForMessageSyncing];
  [(IMDaemonCloudKitManager *)self _registerForAttachmentFileSizeUpdate];
  [(IMDaemonCloudKitManager *)self _registerForAliasesBackup];
  [(IMDaemonCloudKitManager *)self _registerForMetricsLogging];
  if (![(IMDaemonCloudKitManager *)self _hasFinishedTelemetrySync])
  {
    [(IMDaemonCloudKitManager *)self _registerForTelemetrySyncing];
  }
}

- (void)_registerForBackupSyncing
{
  v2 = +[IMFeatureFlags sharedFeatureFlags];
  v3 = [v2 isMessagesIniCloudVersion2];

  if (v3)
  {
    v4 = +[IMDCKSyncController sharedInstance];
    [v4 registerCloudSyncDependencies];

    v5 = [IMDMessagesSyncCoordinator scheduleBackupSyncWithDelegate:0];
    if (v5 && IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 136315394;
        v9 = "[IMDaemonCloudKitManager _registerForBackupSyncing]";
        v10 = 2112;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: Tried to schedule backup sync but encountered error %@", &v8, 0x16u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Registering for backup triggered MiC sync", &v8, 2u);
      }
    }

    IMRegisterSADAwareXPCActivity();
  }
}

- (void)_registerForMessageSyncing
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  v4 = [v3 isMessagesIniCloudVersion2];

  if (v4)
  {
    v5 = +[IMDCKSyncController sharedInstance];
    [v5 registerCloudSyncDependencies];

    v6 = [IMDMessagesSyncCoordinator schedulePeriodicSyncWithDelegate:0];
    if (v6 && IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = 136315394;
        v13 = "[IMDaemonCloudKitManager _registerForMessageSyncing]";
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: Tried to schedule periodic sync but encountered error %@", &v12, 0x16u);
      }
    }

LABEL_14:

    return;
  }

  v8 = +[IMLockdownManager sharedInstance];
  if ([v8 isInternalInstall] && IMIsRunningInAutomation())
  {
    v9 = IMGetDomainBoolForKey();

    if (v9)
    {
      if (!IMOSLoggingEnabled())
      {
        return;
      }

      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "**** Not doing Core Duet for message syncing", &v12, 2u);
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  v10 = [(IMDaemonCloudKitManager *)self _messageSyncingIntervalBagValue];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "com.apple.messages.messageSyncing";
      v14 = 2048;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Registering for message syncing using identifier %s interval %lld", &v12, 0x16u);
    }
  }

  IMRegisterSADAwareXPCActivity();
}

- (void)_registerForTelemetrySyncing
{
  v2 = +[IMFeatureFlags sharedFeatureFlags];
  v3 = [v2 isMessagesIniCloudVersion2];

  if (v3)
  {
    v4 = +[IMDCKSyncController sharedInstance];
    [v4 registerCloudSyncDependencies];

    v5 = [IMDMessagesSyncCoordinator scheduleTelemetrySyncWithDelegate:0];
    if (v5 && IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 136315394;
        v8 = "[IMDaemonCloudKitManager _registerForTelemetrySyncing]";
        v9 = 2112;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: Tried to schedule telemetry sync but encountered error %@", &v7, 0x16u);
      }
    }
  }
}

- (void)_registerForAliasesBackup
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Registering for backup of active aliases", buf, 2u);
    }
  }

  IMRegisterSADAwareXPCActivity();
}

- (void)_registerForAttachmentFileSizeUpdate
{
  v2 = [(IMDaemonCloudKitManager *)self _attachmentFileSizeUpdateIntervalBagValue];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v5 = "com.apple.messages.attachmentFileSizeUpdate";
      v6 = 2048;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Registering for filesize update using identifier %s interval %lld", buf, 0x16u);
    }
  }

  IMRegisterSADAwareXPCActivity();
}

- (void)_registerForMetricsLogging
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v5 = "com.apple.messages.ckMetricsLogging";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Registering for metrics logging using identifier %s", buf, 0xCu);
    }
  }

  [(IMDaemonCloudKitManager *)self _metricsLoggingUpdateIntervalBagValue];
  IMRegisterSADAwareXPCActivity();
}

- (void)fetchLatestSaltWithMessageContext:(id)a3
{
  v3 = +[IMDCKRecordSaltManager sharedInstance];
  [v3 fetchLatestRecordKeyFromCKAndCreateIfKeyDoesNotExistWithCompletion:0];
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
  v4 = [v3 logCloudKitAnalytics];

  v5 = IMOSLoggingEnabled();
  if (v4)
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

@end