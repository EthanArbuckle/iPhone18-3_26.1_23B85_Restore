@interface NPSServer
+ (BOOL)isManagedConfigurationSettingPermittedForKind:(id)kind feature:(id)feature;
+ (BOOL)shouldAllowSyncOfItemWithSyncGroups:(id)groups allowedSyncGroups:(id)syncGroups;
+ (double)maxSendTimeout;
+ (id)managedConfigurationData;
+ (id)managedConfigurationSettings;
+ (id)queueOneIdentifierForFileBackupMsg:(id)msg;
+ (id)queueOneIdentifierForManagedConfigurationMsg:(id)msg;
+ (id)queueOneIdentifierForUserDefaultsBackupMsg:(id)msg;
+ (id)queueOneIdentifierForUserDefaultsMsg:(id)msg;
+ (int64_t)purgeRetryDelay;
+ (void)setLaunchNotification:(id)notification enabled:(BOOL)enabled;
- (BOOL)checkActiveDeviceChangedVersion;
- (BOOL)checkIfTinkerLastActiveDateChanged;
- (BOOL)doesCurrentDeviceSupportGroupedTwoWayKeys;
- (BOOL)doesCurrentDeviceSupportNewIDSServiceForSync;
- (BOOL)handlePermittedUserDefaultsMsg:(id)msg messageData:(id)data overwriteNewerTimestamps:(BOOL)timestamps backupFile:(id)file;
- (BOOL)hasPerformedInitialSync;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)retryFileBackupRestoreForFilePath:(id)path;
- (NPSFileBackupManager)fileBackupManager;
- (NPSServer)init;
- (NSDictionary)allowedGroups;
- (id)backupPathForDomain:(id)domain container:(id)container;
- (id)cachePathForDomain:(id)domain isPerGizmo:(BOOL)gizmo;
- (id)createDirectoryIfNeeded:(id)needed;
- (id)dumpDomain:(id)domain;
- (id)newDefaultsMsgWithDomain:(id)domain;
- (id)restoreFileBackupForLocalFileURL:(id)l originalFileURL:(id)rL isInitialSync:(BOOL)sync;
- (id)restoreRemoteFilesFromBackup;
- (id)restoreRemoteSettingsFromBackup;
- (id)sendManagedConfigurationSettings:(id)settings isInitialSync:(BOOL)sync;
- (id)sendMessageData:(id)data messageType:(int)type queueOneIdentifier:(id)identifier identifier:(id *)a6 isPairedSyncMessage:(BOOL)message cloudEnabled:(BOOL)enabled;
- (id)sendSetting:(id)setting keys:(id)keys allowedSyncGroups:(id)groups messageIdentifier:(id *)identifier messageData:(id *)data cloudEnabled:(BOOL)enabled backupFile:(id)file;
- (id)sendSettingsBackupInDomain:(id)domain keys:(id)keys container:(id)container isInitialSync:(BOOL)sync backupFile:(id)file;
- (id)systemBuildVersion;
- (void)_completeActiveSyncSessionWithError:(id)error;
- (void)_logUserDefaults:(id)defaults idsGuid:(id)guid;
- (void)_logUserDefaultsBackup:(id)backup idsGuid:(id)guid;
- (void)_resumeIDSMessageProcessingWithDevice:(id)device;
- (void)_suspendIDSMessageProcessing;
- (void)applyStashedSettingsSyncMessages;
- (void)checkAndUpdateCacheTimestamps;
- (void)dealloc;
- (void)debounceOnWorkerQueueWithblock:(id)withblock;
- (void)handleAppChangedRestrictions;
- (void)handleFileBackupMessage:(id)message resourceURL:(id)l backupFile:(id)file;
- (void)handleFileBackupMessage:(id)message service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handleFullBackupMessage:(id)message resourceURL:(id)l idsGuid:(id)guid;
- (void)handleManagedConfigurationChangedNotification;
- (void)handleRestoreOfSyncingUserDefaultsMsg:(id)msg backupFile:(id)file;
- (void)handleUserDefaultsBackupMsg:(id)msg service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handleUserDefaultsBackupMsgData:(id)data backupFile:(id)file idsGuid:(id)guid;
- (void)handleUserDefaultsMsg:(id)msg service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handleUserDefaultsMsgData:(id)data backupFile:(id)file idsGuid:(id)guid;
- (void)initCore:(id)core;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performFirstLaunchIntoNewBuildTasks;
- (void)performFirstUnlockTasks;
- (void)performMigration;
- (void)profileConnectionDidReceiveDefaultsChangedNotification:(id)notification userInfo:(id)info;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)notification userInfo:(id)info;
- (void)registerInitialSyncMessage:(id)message ofSize:(unint64_t)size orReportInitialSyncFailureWithError:(id)error;
- (void)registerSyncMessageWithIdentifier:(id)identifier size:(unint64_t)size;
- (void)resendMessagesForMessageID:(id)d;
- (void)resetIfActiveDeviceChanged;
- (void)sendPUDSettingsInDomain:(id)domain keys:(id)keys backupFile:(id)file allowedGroups:(id)groups;
- (void)sendSettingsInDomain:(id)domain keys:(id)keys cloudEnabled:(BOOL)enabled backupFile:(id)file allowedGroups:(id)groups;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)startPrefsSyncWithGroups:(id)groups backupWriter:(id)writer withCompletionHandler:(id)handler;
- (void)syncCompletedWithError:(id)error withDevice:(id)device;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
- (void)synchronizeNanoDomain:(id)domain keys:(id)keys cloudEnabled:(BOOL)enabled;
- (void)synchronizeUserDefaultsDomain:(id)domain keys:(id)keys container:(id)container appGroupContainer:(id)groupContainer cloudEnabled:(BOOL)enabled;
- (void)usingPrefsFromDomain:(id)domain;
@end

@implementation NPSServer

- (BOOL)hasPerformedInitialSync
{
  isPaired = [(NPSDeviceRegistry *)self->_deviceRegistry isPaired];
  if (isPaired)
  {
    domainAccessor = [(NPSDeviceRegistry *)self->_deviceRegistry domainAccessor];
    synchronize = [domainAccessor synchronize];
    v6 = [domainAccessor BOOLForKey:kNPSInitialSyncKey];

    LOBYTE(isPaired) = v6;
  }

  return isPaired;
}

- (NPSServer)init
{
  v22.receiver = self;
  v22.super_class = NPSServer;
  v2 = [(NPSServer *)&v22 init];
  if (v2)
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = sub_100006D10;
    v20[4] = sub_100006D20;
    v21 = os_transaction_create();
    NPSLoggingDaemonObjectInit();
    v3 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Launching; NanoPreferencesSyncDaemon-322 441", buf, 2u);
    }

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.nanoprefsync.workQueue", v4);
    workQueue = v2->_workQueue;
    v2->_workQueue = v5;

    v7 = objc_alloc_init(NSMutableArray);
    pendingIDSMessages = v2->_pendingIDSMessages;
    v2->_pendingIDSMessages = v7;

    v9 = v2->_workQueue;
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100006D28;
    v16 = &unk_10003CA30;
    v10 = v2;
    v17 = v10;
    v18 = v20;
    dispatch_async(v9, &v13);
    v11 = [MCProfileConnection sharedConnection:v13];
    [v11 addObserver:v10];

    _Block_object_dispose(v20, 8);
  }

  return v2;
}

- (void)dealloc
{
  purgeTimer = self->_purgeTimer;
  if (purgeTimer)
  {
    dispatch_source_cancel(purgeTimer);
  }

  deviceRegistry = self->_deviceRegistry;
  if (deviceRegistry)
  {
    [(NPSDeviceRegistry *)deviceRegistry removeObserver:self forKeyPath:@"activeDevice"];
  }

  v5.receiver = self;
  v5.super_class = NPSServer;
  [(NPSServer *)&v5 dealloc];
}

- (void)resetIfActiveDeviceChanged
{
  activeDeviceID = self->_activeDeviceID;
  activeDeviceID = [(NPSDeviceRegistry *)self->_deviceRegistry activeDeviceID];

  if (activeDeviceID != activeDeviceID)
  {
    activeDeviceID2 = [(NPSDeviceRegistry *)self->_deviceRegistry activeDeviceID];
    v6 = self->_activeDeviceID;
    self->_activeDeviceID = activeDeviceID2;

    fileBackupManager = self->_fileBackupManager;
    self->_fileBackupManager = 0;

    activeDeviceID3 = [(NPSDeviceRegistry *)self->_deviceRegistry activeDeviceID];

    if (activeDeviceID3)
    {

      [(NPSServer *)self performMigration];
    }
  }
}

- (void)initCore:(id)core
{
  coreCopy = core;
  v5 = objc_opt_new();
  settings = self->_settings;
  self->_settings = v5;

  [(NPSSettings *)self->_settings loadSettingsBundles];
  v7 = [NPSDatabase alloc];
  databasePath = [(NPSDeviceRegistry *)self->_deviceRegistry databasePath];
  v9 = [(NPSDatabase *)v7 initWithPath:databasePath];
  database = self->_database;
  self->_database = v9;

  [(NPSDeviceRegistry *)self->_deviceRegistry startMonitoringPairingEventsWithQueue:self->_workQueue];
  [(NPSServer *)self resetIfActiveDeviceChanged];
  v11 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.nanoprefsync"];
  xpcListener = self->_xpcListener;
  self->_xpcListener = v11;

  [(NSXPCListener *)self->_xpcListener setDelegate:self];
  v13 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.preferencessync"];
  idsService = self->_idsService;
  self->_idsService = v13;

  v15 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.preferencessync.pairedsync"];
  idsServiceSyncState = self->_idsServiceSyncState;
  self->_idsServiceSyncState = v15;

  [(IDSService *)self->_idsService setProtobufAction:"handleUserDefaultsMsg:service:account:fromID:context:" forIncomingRequestsOfType:0];
  [(IDSService *)self->_idsServiceSyncState setProtobufAction:"handleUserDefaultsMsg:service:account:fromID:context:" forIncomingRequestsOfType:0];
  [(IDSService *)self->_idsService setProtobufAction:"handleFileBackupMessage:service:account:fromID:context:" forIncomingRequestsOfType:3];
  [(IDSService *)self->_idsService setProtobufAction:"handleUserDefaultsBackupMsg:service:account:fromID:context:" forIncomingRequestsOfType:2];
  v17 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.nanoprefsyncdfirst"];
  pairedSyncCoordinatorFirstSync = self->_pairedSyncCoordinatorFirstSync;
  self->_pairedSyncCoordinatorFirstSync = v17;

  [(PSYSyncCoordinator *)self->_pairedSyncCoordinatorFirstSync setDelegate:self queue:self->_workQueue];
  v19 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.nanoprefsyncd"];
  pairedSyncCoordinatorRemainderSync = self->_pairedSyncCoordinatorRemainderSync;
  self->_pairedSyncCoordinatorRemainderSync = v19;

  [(PSYSyncCoordinator *)self->_pairedSyncCoordinatorRemainderSync setDelegate:self queue:self->_workQueue];
  [(NSXPCListener *)self->_xpcListener resume];
  self->_processingIDSMessage = 1;
  [(IDSService *)self->_idsService addDelegate:self queue:self->_workQueue];
  [(IDSService *)self->_idsServiceSyncState addDelegate:self queue:self->_workQueue];
  xpc_set_event_stream_handler("com.apple.private.alloy.preferencessync-idswake", self->_workQueue, &stru_10003CA70);
  xpc_set_event_stream_handler("com.apple.private.alloy.preferencessync.pairedsync-idswake", self->_workQueue, &stru_10003CA90);
  workQueue = self->_workQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100007404;
  handler[3] = &unk_10003CAB8;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", workQueue, handler);
  if ([(NPSServer *)self hasPerformedInitialSync])
  {
    activeDevice = [(NPSDeviceRegistry *)self->_deviceRegistry activeDevice];
    [(NPSServer *)self setHasPerformedInitialSync:1 updateBuildVersion:0 withDevice:activeDevice];
  }

  [(NPSServer *)self checkIfTinkerLastActiveDateChanged];
  [(NPSServer *)self checkAndUpdateCacheTimestamps];
  deviceRegistry = self->_deviceRegistry;
  if (deviceRegistry)
  {
    [(NPSDeviceRegistry *)deviceRegistry addObserver:self forKeyPath:@"activeDevice" options:7 context:0];
  }

  v24 = dispatch_time(0, 5000000000);
  v25 = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007690;
  block[3] = &unk_10003CAE0;
  block[4] = self;
  v28 = coreCopy;
  v26 = coreCopy;
  dispatch_after(v24, v25, block);
}

- (NPSFileBackupManager)fileBackupManager
{
  [(NPSServer *)self resetIfActiveDeviceChanged];
  fileBackupManager = self->_fileBackupManager;
  if (!fileBackupManager)
  {
    v4 = [[NPSFileBackupManager alloc] initWithDeviceRegistry:self->_deviceRegistry];
    v5 = self->_fileBackupManager;
    self->_fileBackupManager = v4;

    fileBackupManager = self->_fileBackupManager;
  }

  return fileBackupManager;
}

- (void)invalidate
{
  [(NPSDatabase *)self->_database invalidate];
  database = self->_database;
  self->_database = 0;
}

- (NSDictionary)allowedGroups
{
  isAltAccountDevice = [(NPSDeviceRegistry *)self->_deviceRegistry isAltAccountDevice];
  v3 = &off_10003D320;
  if (!isAltAccountDevice)
  {
    v3 = &off_10003D318;
  }

  v7 = *v3;
  v8 = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [v4 mutableCopy];

  return v5;
}

+ (BOOL)shouldAllowSyncOfItemWithSyncGroups:(id)groups allowedSyncGroups:(id)syncGroups
{
  groupsCopy = groups;
  syncGroupsCopy = syncGroups;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = groupsCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [syncGroupsCopy objectForKeyedSubscript:{*(*(&v16 + 1) + 8 * i), v16}];
        v14 = v13;
        if (v13)
        {
          if ([v13 isEqual:&__kCFBooleanFalse])
          {

            goto LABEL_13;
          }

          v10 |= [v14 isEqual:&__kCFBooleanTrue];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_13:
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

- (void)performMigration
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = sub_100006D10;
  v4[4] = sub_100006D20;
  v5 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100007AC8;
  v3[3] = &unk_10003CB08;
  v3[4] = v4;
  v2 = objc_retainBlock(v3);
  (v2[2])(v2, @"notificationsIndicatorEnabled");
  (v2[2])(v2, @"customMonogram");

  _Block_object_dispose(v4, 8);
}

- (void)performFirstUnlockTasks
{
  if ((byte_1000456C0 & 1) == 0)
  {
    v3 = MKBDeviceUnlockedSinceBoot();
    if (v3 == 1)
    {
      byte_1000456C0 = 1;
      [(NPSServer *)self applyStashedSettingsSyncMessages];

      [(NPSServer *)self resendMessagesForMessageID:0];
    }

    else
    {
      v4 = v3;
      v5 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v6[0] = 67109120;
        v6[1] = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed checking first unlock state (%d)", v6, 8u);
      }
    }
  }
}

- (void)registerInitialSyncMessage:(id)message ofSize:(unint64_t)size orReportInitialSyncFailureWithError:(id)error
{
  if (error)
  {
    [(NPSServer *)self syncCompletedWithError:error withDevice:0];
  }

  else
  {
    [(NPSServer *)self registerSyncMessageWithIdentifier:message size:size];
  }
}

- (void)syncCompletedWithError:(id)error withDevice:(id)device
{
  errorCopy = error;
  deviceCopy = device;
  if (!deviceCopy)
  {
    deviceCopy = [(NPSDeviceRegistry *)self->_deviceRegistry activeDevice];
  }

  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_ERROR))
  {
    sub_100026894();
  }

  [(NPSServer *)self setHasPerformedInitialSync:1 updateBuildVersion:1 withDevice:deviceCopy];
  [(NPSServer *)self _completeActiveSyncSessionWithError:errorCopy];
  syncSessionProgressDictionary = self->_syncSessionProgressDictionary;
  self->_syncSessionProgressDictionary = 0;

  syncTransaction = self->_syncTransaction;
  self->_syncTransaction = 0;
}

- (void)_completeActiveSyncSessionWithError:(id)error
{
  errorCopy = error;
  activeSyncSession = self->_activeSyncSession;
  p_activeSyncSession = &self->_activeSyncSession;
  if (activeSyncSession)
  {
    v7 = nps_daemon_log;
    if (errorCopy)
    {
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_ERROR))
      {
        sub_100026904(errorCopy, p_activeSyncSession);
      }

      [*p_activeSyncSession syncDidFailWithError:errorCopy];
    }

    else
    {
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *p_activeSyncSession;
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_completeActiveSyncSessionWithError:Reporting successful sync completion to sync session: (%@)", &v10, 0xCu);
      }

      [*p_activeSyncSession syncDidComplete];
    }

    v9 = *p_activeSyncSession;
    *p_activeSyncSession = 0;
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  v5 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MCProfileConnectionObserver received EffectiveSettingsChangedNotification", v6, 2u);
  }

  [(NPSServer *)self handleManagedConfigurationChangedNotification];
}

- (void)profileConnectionDidReceiveDefaultsChangedNotification:(id)notification userInfo:(id)info
{
  v5 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MCProfileConnectionObserver received DefaultsChangedNotification", v6, 2u);
  }

  [(NPSServer *)self handleManagedConfigurationChangedNotification];
}

- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)notification userInfo:(id)info
{
  v5 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MCProfileConnectionObserver received RestrictionChangedNotification", v6, 2u);
  }

  [(NPSServer *)self handleManagedConfigurationChangedNotification];
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  coordinatorCopy = coordinator;
  sessionCopy = session;
  v8 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = coordinatorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "coordinator: (%@)", buf, 0xCu);
  }

  v9 = os_transaction_create();
  syncTransaction = self->_syncTransaction;
  self->_syncTransaction = v9;

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008788;
  block[3] = &unk_10003CB58;
  block[4] = self;
  v15 = sessionCopy;
  v16 = coordinatorCopy;
  v12 = coordinatorCopy;
  v13 = sessionCopy;
  dispatch_async(workQueue, block);
}

- (void)registerSyncMessageWithIdentifier:(id)identifier size:(unint64_t)size
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    syncSessionProgressDictionary = self->_syncSessionProgressDictionary;
    if (syncSessionProgressDictionary)
    {
      *&self->_totalDataToSyncInBytes = vaddq_s64(*&self->_totalDataToSyncInBytes, vdupq_n_s64(size));
      v9 = identifierCopy;
      v8 = [NSNumber numberWithUnsignedLongLong:size];
      [(NSMutableDictionary *)syncSessionProgressDictionary setObject:v8 forKey:v9];

      identifierCopy = v9;
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  pathCopy = path;
  v10 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeOldKey];
  v11 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];

  LODWORD(changeCopy) = [pathCopy isEqualToString:@"activeDevice"];
  if (!changeCopy)
  {
    goto LABEL_28;
  }

  if (v10)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v11)
    {
LABEL_4:
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();
      goto LABEL_7;
    }
  }

  else
  {
    isKindOfClass = 0;
    if (v11)
    {
      goto LABEL_4;
    }
  }

  v13 = 0;
LABEL_7:
  v14 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v15 = "";
    if (isKindOfClass)
    {
      v16 = "non-";
    }

    else
    {
      v16 = "";
    }

    if (v13)
    {
      v15 = "non-";
    }

    *buf = 136315394;
    v29 = v16;
    v30 = 2080;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Active device changed: %snil -> %snil", buf, 0x16u);
  }

  if (isKindOfClass & 1 | ((v13 & 1) == 0))
  {
    if (!(v13 & 1 | ((isKindOfClass & 1) == 0)))
    {
      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100009124;
      block[3] = &unk_10003CBA8;
      block[4] = self;
      dispatch_async(workQueue, block);
    }
  }

  else
  {
    v18 = self->_workQueue;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100009118;
    v26[3] = &unk_10003CB80;
    v26[4] = self;
    v27 = v11;
    dispatch_async(v18, v26);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      pairingID = [v10 pairingID];
      pairingID2 = [v11 pairingID];
      if (([pairingID isEqual:pairingID2] & 1) == 0)
      {

LABEL_27:
        goto LABEL_28;
      }

      systemBuildVersion = [v10 systemBuildVersion];
      systemBuildVersion2 = [v11 systemBuildVersion];
      v23 = [systemBuildVersion isEqual:systemBuildVersion2];

      if ((v23 & 1) == 0 && [(NPSServer *)self hasPerformedInitialSync])
      {
        v24 = nps_daemon_log;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v29 = "[NPSServer observeValueForKeyPath:ofObject:change:context:]";
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s: Doing a sync because of a build version change (KVO)", buf, 0xCu);
        }

        [(NPProgressTracker *)self->_syncProgressTracker clearState];
        pairingID = [(NPSServer *)self allowedGroups];
        [(NPSServer *)self startPrefsSyncWithGroups:pairingID backupWriter:0 withCompletionHandler:0];
        goto LABEL_27;
      }
    }
  }

LABEL_28:
}

- (void)startPrefsSyncWithGroups:(id)groups backupWriter:(id)writer withCompletionHandler:(id)handler
{
  groupsCopy = groups;
  writerCopy = writer;
  handlerCopy = handler;
  v11 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = groupsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "startPrefsSyncWithGroups: %{public}@", buf, 0xCu);
  }

  v12 = os_transaction_create();
  syncTransaction = self->_syncTransaction;
  self->_syncTransaction = v12;

  v14 = objc_opt_new();
  syncSessionProgressDictionary = self->_syncSessionProgressDictionary;
  self->_syncSessionProgressDictionary = v14;

  self->_totalDataToSyncInBytes = 0;
  self->_remainingDataToSyncInBytes = 0;
  workQueue = self->_workQueue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000092CC;
  v20[3] = &unk_10003CD60;
  v21 = writerCopy;
  v22 = groupsCopy;
  selfCopy = self;
  v24 = handlerCopy;
  v17 = handlerCopy;
  v18 = groupsCopy;
  v19 = writerCopy;
  dispatch_async(workQueue, v20);
}

- (id)systemBuildVersion
{
  if (qword_1000456C8 != -1)
  {
    sub_10002697C();
  }

  v3 = qword_1000456D0;

  return v3;
}

- (void)performFirstLaunchIntoNewBuildTasks
{
  v3 = os_transaction_create();
  [(NPSServer *)self forceResyncManagedConfigurationIsInitialSync:1];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  syncedUserDefaults = [(NPSSettings *)self->_settings syncedUserDefaults];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000AFC0;
  v13[3] = &unk_10003CE18;
  v13[4] = self;
  [syncedUserDefaults enumerateKeysAndObjectsUsingBlock:v13];

  +[NSDate timeIntervalSinceReferenceDate];
  [NSNumber numberWithDouble:?];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000B728;
  v11[3] = &unk_10003CE40;
  v7 = v11[4] = self;
  v12 = v7;
  [v4 enumerateKeysAndObjectsUsingBlock:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B7D8;
  v9[3] = &unk_10003CE40;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
}

- (BOOL)checkIfTinkerLastActiveDateChanged
{
  deviceRegistry = [(NPSServer *)self deviceRegistry];
  isAltAccountDevice = [deviceRegistry isAltAccountDevice];

  if (!isAltAccountDevice)
  {
    return 0;
  }

  domainAccessor = [(NPSDeviceRegistry *)self->_deviceRegistry domainAccessor];
  synchronize = [domainAccessor synchronize];
  deviceRegistry2 = [(NPSServer *)self deviceRegistry];
  lastActiveDate = [deviceRegistry2 lastActiveDate];

  [lastActiveDate timeIntervalSinceReferenceDate];
  v10 = v9;
  v11 = [domainAccessor integerForKey:@"last-active-date"];
  if (v11 == v10)
  {

    return 0;
  }

  v13 = v11;
  v14 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v20 = v13;
    v21 = 2048;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "checkIfTinkerLastActiveDateChanged: LastActiveDate changed from %llu -> %llu Tinker watch switch detected", buf, 0x16u);
  }

  [(NPProgressTracker *)self->_syncProgressTracker clearState];
  v17 = @"Tinker";
  v18 = &__kCFBooleanTrue;
  v12 = 1;
  v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [(NPSServer *)self startPrefsSyncWithGroups:v15 backupWriter:0 withCompletionHandler:0];

  return v12;
}

- (void)checkAndUpdateCacheTimestamps
{
  v3 = kNanoPreferencesSyncDomain;
  v4 = kCFPreferencesCurrentUser;
  v5 = kCFPreferencesAnyHost;
  v6 = CFPreferencesCopyValue(@"cache-is-valid", kNanoPreferencesSyncDomain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v7 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v66 = "[NPSServer checkAndUpdateCacheTimestamps]";
    v67 = 2112;
    v68 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: - value: %@", buf, 0x16u);
  }

  if (!v6 || ([(__CFString *)v6 BOOLValue]& 1) == 0)
  {
    v8 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v66 = "[NPSServer checkAndUpdateCacheTimestamps]";
      v67 = 2112;
      v68 = @"cache-is-valid";
      v69 = 2112;
      v70 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: %@ doesn't exist in domain %@ cache is not valid", buf, 0x20u);
    }

    v9 = +[NSFileManager defaultManager];
    globalCacheDirectoryPath = [(NPSDeviceRegistry *)self->_deviceRegistry globalCacheDirectoryPath];
    v62 = 0;
    v11 = [v9 contentsOfDirectoryAtPath:globalCacheDirectoryPath error:&v62];
    v12 = v62;

    v13 = nps_daemon_log;
    v14 = os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        deviceRegistry = self->_deviceRegistry;
        v16 = v13;
        globalCacheDirectoryPath2 = [(NPSDeviceRegistry *)deviceRegistry globalCacheDirectoryPath];
        *buf = 136315650;
        v66 = "[NPSServer checkAndUpdateCacheTimestamps]";
        v67 = 2112;
        v68 = globalCacheDirectoryPath2;
        v69 = 2112;
        v70 = v12;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: can't open cache dir(%@), assuming there is nothing to update: %@", buf, 0x20u);
      }
    }

    else
    {
      if (v14)
      {
        *buf = 136315138;
        v66 = "[NPSServer checkAndUpdateCacheTimestamps]";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: setting all timestamps to now", buf, 0xCu);
      }

      +[NSDate timeIntervalSinceReferenceDate];
      v19 = v18;
      globalCacheDirectoryPath3 = [(NPSDeviceRegistry *)self->_deviceRegistry globalCacheDirectoryPath];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      obj = v11;
      v49 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
      if (v49)
      {
        v40 = 0;
        v41 = v11;
        v42 = kCFPreferencesAnyHost;
        v43 = kCFPreferencesCurrentUser;
        v44 = v3;
        v45 = v6;
        v20 = 0;
        v47 = *v59;
        do
        {
          v21 = 0;
          do
          {
            if (*v59 != v47)
            {
              objc_enumerationMutation(obj);
            }

            v52 = v21;
            v22 = *(*(&v58 + 1) + 8 * v21);
            context = objc_autoreleasePoolPush();
            v23 = [globalCacheDirectoryPath3 stringByAppendingPathComponent:v22];

            v50 = v23;
            v24 = [NSDictionary dictionaryWithContentsOfFile:v23];
            v25 = [v24 mutableCopy];

            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            allKeys = [v25 allKeys];
            v27 = [allKeys countByEnumeratingWithState:&v54 objects:v63 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v55;
              do
              {
                for (i = 0; i != v28; i = i + 1)
                {
                  if (*v55 != v29)
                  {
                    objc_enumerationMutation(allKeys);
                  }

                  v31 = *(*(&v54 + 1) + 8 * i);
                  v32 = [v25 objectForKeyedSubscript:{v31, v40, v41, v42, v43, v44, v45}];
                  v33 = [v32 mutableCopy];

                  v34 = [NSNumber numberWithDouble:v19];
                  [v33 setObject:v34 forKeyedSubscript:@"timestamp"];

                  [v25 setObject:v33 forKeyedSubscript:v31];
                }

                v28 = [allKeys countByEnumeratingWithState:&v54 objects:v63 count:16];
              }

              while (v28);
            }

            v20 = v50;

            v35 = [NSURL fileURLWithPath:v50];
            v53 = 0;
            [v25 writeToURL:v35 error:&v53];
            v36 = v53;

            if (v36)
            {
              v37 = nps_daemon_log;
              if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
              {
                v38 = v37;
                v39 = [NSURL URLWithString:v50];
                *buf = 136315650;
                v66 = "[NPSServer checkAndUpdateCacheTimestamps]";
                v67 = 2112;
                v68 = v39;
                v69 = 2112;
                v70 = v36;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s: Unable to write to url: %@.  Error: %@", buf, 0x20u);
              }
            }

            objc_autoreleasePoolPop(context);
            v21 = v52 + 1;
          }

          while ((v52 + 1) != v49);
          v49 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
        }

        while (v49);

        v3 = v44;
        v6 = v45;
        v5 = v42;
        v4 = v43;
        v12 = v40;
        v11 = v41;
      }
    }

    CFPreferencesSetValue(@"cache-is-valid", &__kCFBooleanTrue, v3, v4, v5);
  }
}

- (BOOL)checkActiveDeviceChangedVersion
{
  if ([(NPSDeviceRegistry *)self->_deviceRegistry isPaired])
  {
    domainAccessor = [(NPSDeviceRegistry *)self->_deviceRegistry domainAccessor];
    synchronize = [domainAccessor synchronize];
    hasPerformedInitialSync = [(NPSServer *)self hasPerformedInitialSync];
    systemBuildVersion = [(NPSServer *)self systemBuildVersion];
    v7 = [domainAccessor stringForKey:@"local-device-build-version"];
    v8 = v7;
    if (v7)
    {
      if ([v7 isEqualToString:systemBuildVersion])
      {
        goto LABEL_17;
      }
    }

    else if ((hasPerformedInitialSync & 1) == 0)
    {
      v15 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 136315394;
        *&v30[4] = "[NPSServer checkActiveDeviceChangedVersion]";
        *&v30[12] = 2112;
        *&v30[14] = systemBuildVersion;
        v12 = "%s: Detected first launch after pairing; Local build version: (%@)";
        v13 = v15;
        v14 = 22;
        goto LABEL_12;
      }

LABEL_13:
      v16 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 136315138;
        *&v30[4] = "[NPSServer checkActiveDeviceChangedVersion]";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Doing new build tasks", v30, 0xCu);
      }

      [(NPSServer *)self performFirstLaunchIntoNewBuildTasks:*v30];
      v17 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 136315138;
        *&v30[4] = "[NPSServer checkActiveDeviceChangedVersion]";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: New build tasks completed", v30, 0xCu);
      }

LABEL_17:
      if (hasPerformedInitialSync)
      {
        domainAccessor2 = [(NPSDeviceRegistry *)self->_deviceRegistry domainAccessor];
        activeDevice = [(NPSDeviceRegistry *)self->_deviceRegistry activeDevice];
        systemBuildVersion2 = [activeDevice systemBuildVersion];
        synchronize2 = [domainAccessor2 synchronize];
        v22 = [domainAccessor2 stringForKey:@"paired-device-build-version"];
        v23 = nps_daemon_log;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *v30 = 136315650;
          *&v30[4] = "[NPSServer checkActiveDeviceChangedVersion]";
          *&v30[12] = 2112;
          *&v30[14] = v22;
          *&v30[22] = 2112;
          v31 = systemBuildVersion2;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s: lastRegisteredPairedDeviceBuildVersion: (%@); pairedDeviceBuildVersion: (%@)", v30, 0x20u);
        }

        if (!v22 || (v24 = [v22 isEqualToString:systemBuildVersion2], !v8) || !v24 || (objc_msgSend(v8, "isEqualToString:", systemBuildVersion) & 1) == 0)
        {
          v27 = nps_daemon_log;
          if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
          {
            *v30 = 136315138;
            *&v30[4] = "[NPSServer checkActiveDeviceChangedVersion]";
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s: Doing a sync because of a build version change", v30, 0xCu);
          }

          [(NPProgressTracker *)self->_syncProgressTracker clearState];
          allowedGroups = [(NPSServer *)self allowedGroups];
          [(NPSServer *)self startPrefsSyncWithGroups:allowedGroups backupWriter:0 withCompletionHandler:0];

          v10 = 1;
          goto LABEL_34;
        }

        v25 = nps_daemon_log;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *v30 = 136315138;
          *&v30[4] = "[NPSServer checkActiveDeviceChangedVersion]";
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s: No build version change detected.", v30, 0xCu);
        }
      }

      else
      {
        v26 = nps_daemon_log;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *v30 = 136315138;
          *&v30[4] = "[NPSServer checkActiveDeviceChangedVersion]";
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s: Skipping Paired Device Version change check. Has not performed initial sync yet.", v30, 0xCu);
        }

        [(NPSServer *)self setHasPerformedInitialSync:0 updateBuildVersion:1 withDevice:0];
      }

      v10 = 0;
LABEL_34:

      return v10;
    }

    v11 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 136315650;
      *&v30[4] = "[NPSServer checkActiveDeviceChangedVersion]";
      *&v30[12] = 2112;
      *&v30[14] = systemBuildVersion;
      *&v30[22] = 2112;
      v31 = v8;
      v12 = "%s: Detected local device update; Current build version: (%@); Previous: (%@)";
      v13 = v11;
      v14 = 32;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, v30, v14);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v9 = nps_daemon_log;
  v10 = 0;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *v30 = 136315138;
    *&v30[4] = "[NPSServer checkActiveDeviceChangedVersion]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Skipping Paired Device Version change check. Not paired.", v30, 0xCu);
    return 0;
  }

  return v10;
}

+ (double)maxSendTimeout
{
  keyExistsAndHasValidFormat = 0;
  v2 = kNanoPreferencesSyncDomain;
  CFPreferencesAppSynchronize(kNanoPreferencesSyncDomain);
  result = CFPreferencesGetAppIntegerValue(@"MessageSendTimeout", v2, &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return IDSMaxMessageTimeout;
  }

  return result;
}

+ (int64_t)purgeRetryDelay
{
  keyExistsAndHasValidFormat = 0;
  v2 = kNanoPreferencesSyncDomain;
  CFPreferencesAppSynchronize(kNanoPreferencesSyncDomain);
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"PurgeRetryDelay", v2, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    return 1000000000 * AppIntegerValue;
  }

  else
  {
    return 300000000000;
  }
}

- (BOOL)doesCurrentDeviceSupportNewIDSServiceForSync
{
  activeDevice = [(NPSDeviceRegistry *)self->_deviceRegistry activeDevice];
  v3 = [activeDevice supportsCapability:916515619];

  return v3;
}

- (id)sendMessageData:(id)data messageType:(int)type queueOneIdentifier:(id)identifier identifier:(id *)a6 isPairedSyncMessage:(BOOL)message cloudEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  messageCopy = message;
  identifierCopy = identifier;
  dataCopy = data;
  v13 = [[IDSProtobuf alloc] initWithProtobufData:dataCopy type:type isResponse:0];

  v14 = self->_syncSessionProgressDictionary == 0;
  if (type >= 4)
  {
    v15 = 100;
  }

  else
  {
    v15 = 200;
  }

  idsService = [(NPSServer *)self idsService];
  if (messageCopy)
  {
    if ([(NPSServer *)self doesCurrentDeviceSupportNewIDSServiceForSync])
    {
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEBUG))
      {
        sub_100026990();
      }

      idsServiceSyncState = [(NPSServer *)self idsServiceSyncState];

      v14 = 0;
      v15 = 300;
      idsService = idsServiceSyncState;
    }

    else
    {
      v14 = 0;
      v15 = 300;
    }
  }

  v45[0] = IDSSendMessageOptionTimeoutKey;
  [objc_opt_class() maxSendTimeout];
  v18 = [NSNumber numberWithDouble:?];
  v46[0] = v18;
  v45[1] = IDSSendMessageOptionBypassDuetKey;
  v19 = [NSNumber numberWithBool:1];
  v46[1] = v19;
  v45[2] = IDSSendMessageOptionNonWakingKey;
  v20 = [NSNumber numberWithBool:v14];
  v45[3] = IDSSendMessageOptionEnforceRemoteTimeoutsKey;
  v46[2] = v20;
  v46[3] = &__kCFBooleanFalse;
  v21 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:4];
  v22 = [v21 mutableCopy];

  if (identifierCopy)
  {
    [v22 setObject:identifierCopy forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
  }

  if (enabledCopy)
  {
    v23 = [NSNumber numberWithBool:1];
    [v22 setObject:v23 forKeyedSubscript:IDSSendMessageOptionAllowCloudDeliveryKey];
  }

  activeDevice = [(NPSDeviceRegistry *)self->_deviceRegistry activeDevice];
  v25 = [NPSDeviceRegistry idsDestinationIDForDevice:activeDevice withIdsService:self->_idsService];

  v26 = idsService;
  if (v25)
  {
    v27 = [NSSet setWithObject:v25];
    v40 = 0;
    v28 = [idsService sendProtobuf:v13 toDestinations:v27 priority:v15 options:v22 identifier:a6 error:&v40];
    v29 = v40;

    usleep(0xC350u);
    if (v28)
    {
      v30 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        if (a6)
        {
          v31 = *a6;
        }

        else
        {
          v31 = @"n/a";
        }

        *buf = 138412290;
        v42 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Successfully sent message with identifier: (%@)", buf, 0xCu);
      }

      v34 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v43 = NSLocalizedDescriptionKey;
    v44 = @"NPS should not try syncing when there is no active device";
    v32 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v29 = [NSError errorWithDomain:@"com.apple.NanoPreferencesSync" code:1 userInfo:v32];
  }

  v33 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v29;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Failed sending message with error: (%@)", buf, 0xCu);
  }

  v34 = v29;
LABEL_26:
  v35 = v34;

  return v34;
}

- (void)_suspendIDSMessageProcessing
{
  v3 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Suspending IDS message processing", v4, 2u);
  }

  self->_processingIDSMessage = 0;
}

- (void)_resumeIDSMessageProcessingWithDevice:(id)device
{
  deviceCopy = device;
  v5 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    pendingIDSMessages = self->_pendingIDSMessages;
    v7 = v5;
    *buf = 134217984;
    v39 = [(NSMutableArray *)pendingIDSMessages count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resuming IDS message processing. Has %lu pending IDS messages to process.", buf, 0xCu);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  selfCopy = self;
  obj = self->_pendingIDSMessages;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v35;
    *&v9 = 138412802;
    v29 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        fromIDSDevice = [v13 fromIDSDevice];
        if (fromIDSDevice)
        {
          v15 = [NPSDeviceRegistry pdrDeviceForIDSDevice:fromIDSDevice];
        }

        else
        {
          v15 = 0;
        }

        pairingID = [v15 pairingID];
        pairingID2 = [deviceCopy pairingID];
        v18 = [pairingID isEqual:pairingID2];

        v19 = nps_daemon_log;
        if (v18)
        {
          if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v39 = v13;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Processing %@", buf, 0xCu);
          }

          messageType = [v13 messageType];
          idsProtobuf = [v13 idsProtobuf];
          context = [idsProtobuf context];
          outgoingResponseIdentifier = [context outgoingResponseIdentifier];

          if (messageType > 2)
          {
            if (messageType == 3)
            {
              v28 = nps_daemon_log;
              if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_ERROR))
              {
                sub_1000269D0(&v32, v33, v28);
              }

              goto LABEL_27;
            }

            if (messageType != 4)
            {
LABEL_27:

              goto LABEL_28;
            }

            data = [idsProtobuf data];
            [(NPSServer *)selfCopy handleFileBackupMessage:data resourceURL:0 backupFile:0];
          }

          else
          {
            if (messageType != 1)
            {
              if (messageType == 2)
              {
                data = [idsProtobuf data];
                [(NPSServer *)selfCopy handleUserDefaultsBackupMsgData:data backupFile:0 idsGuid:outgoingResponseIdentifier];
                goto LABEL_24;
              }

              goto LABEL_27;
            }

            data = [idsProtobuf data];
            [(NPSServer *)selfCopy handleUserDefaultsMsgData:data backupFile:0 idsGuid:outgoingResponseIdentifier];
          }

LABEL_24:

          goto LABEL_27;
        }

        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_ERROR))
        {
          v25 = v19;
          pairingID3 = [v15 pairingID];
          pairingID4 = [deviceCopy pairingID];
          *buf = v29;
          v39 = v13;
          v40 = 2112;
          v41 = pairingID3;
          v42 = 2112;
          v43 = pairingID4;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@ was originated from %@, not current active device %@; dropping.", buf, 0x20u);
        }

LABEL_28:
      }

      v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v10);
  }

  [(NSMutableArray *)selfCopy->_pendingIDSMessages removeAllObjects];
  selfCopy->_processingIDSMessage = 1;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v16 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    *&buf[4] = serviceCopy;
    *&buf[12] = 2112;
    *&buf[14] = accountCopy;
    *&buf[22] = 2112;
    v48 = identifierCopy;
    LOWORD(v49) = 1024;
    *(&v49 + 2) = successCopy;
    HIWORD(v49) = 2112;
    v50 = errorCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "service: (%@), account: (%@), identifier: (%@), success: (%d), error: (%@)", buf, 0x30u);
  }

  v17 = os_transaction_create();
  syncSessionProgressDictionary = self->_syncSessionProgressDictionary;
  if (syncSessionProgressDictionary)
  {
    v19 = [(NSMutableDictionary *)syncSessionProgressDictionary objectForKey:identifierCopy];
    if (!v19)
    {
LABEL_17:

      goto LABEL_18;
    }

    if (successCopy)
    {
      goto LABEL_6;
    }

    domain = [errorCopy domain];
    if ([domain isEqualToString:IDSErrorDomain])
    {
      v26 = v17;
      v27 = serviceCopy;
      code = [errorCopy code];

      v29 = code == 24;
      serviceCopy = v27;
      v17 = v26;
      if (v29)
      {
LABEL_6:
        unsignedLongLongValue = [v19 unsignedLongLongValue];
        totalDataToSyncInBytes = self->_totalDataToSyncInBytes;
        v22 = self->_remainingDataToSyncInBytes - unsignedLongLongValue;
        self->_remainingDataToSyncInBytes = v22;
        if (totalDataToSyncInBytes)
        {
          v23 = (totalDataToSyncInBytes - v22) / totalDataToSyncInBytes;
          v24 = nps_daemon_log;
          if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEBUG))
          {
            v43 = self->_totalDataToSyncInBytes;
            remainingDataToSyncInBytes = self->_remainingDataToSyncInBytes;
            *buf = 134218496;
            *&buf[4] = v23;
            *&buf[12] = 2048;
            *&buf[14] = v43;
            *&buf[22] = 2048;
            v48 = remainingDataToSyncInBytes;
            _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "progress: (%f), total: (%llu), remaining: (%llu)", buf, 0x20u);
          }

          [(PSYServiceSyncSession *)self->_activeSyncSession reportProgress:v23];
        }

        [(NSMutableDictionary *)self->_syncSessionProgressDictionary removeObjectForKey:identifierCopy];
        if ([(NSMutableDictionary *)self->_syncSessionProgressDictionary count])
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
    }

    nps_pairedPdrDevice = [(PSYServiceSyncSession *)self->_activeSyncSession nps_pairedPdrDevice];
    [(NPSServer *)self syncCompletedWithError:0 withDevice:nps_pairedPdrDevice];

    goto LABEL_17;
  }

LABEL_18:
  if (successCopy)
  {
LABEL_19:
    [(NPSDatabase *)self->_database messageWasDelivered:identifierCopy];
    goto LABEL_33;
  }

  domain2 = [errorCopy domain];
  v32 = IDSErrorDomain;
  if ([domain2 isEqualToString:IDSErrorDomain])
  {
    code2 = [errorCopy code];

    if (code2 == 24)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v34 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2112;
    *&buf[14] = errorCopy;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Message (%@) failed to be delivered with error: (%@)", buf, 0x16u);
  }

  domain3 = [errorCopy domain];
  if ([domain3 isEqualToString:v32])
  {
    code3 = [errorCopy code];

    if (code3 == 23)
    {
      [(NPSServer *)self resendMessagesForMessageID:identifierCopy];
      goto LABEL_33;
    }
  }

  else
  {
  }

  [(NPSDatabase *)self->_database messageWasPurged:identifierCopy];
  purgeTimer = self->_purgeTimer;
  if (purgeTimer)
  {
    dispatch_source_cancel(purgeTimer);
  }

  purgeRetryDelay = [objc_opt_class() purgeRetryDelay];
  v39 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_workQueue);
  v40 = dispatch_time(0, purgeRetryDelay);
  dispatch_source_set_timer(v39, v40, 0xFFFFFFFFFFFFFFFFLL, (purgeRetryDelay / 10.0));
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000D4D8;
  handler[3] = &unk_10003CBA8;
  handler[4] = self;
  dispatch_source_set_event_handler(v39, handler);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v48 = sub_100006D10;
  v49 = sub_100006D20;
  v50 = os_transaction_create();
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10000D56C;
  v45[3] = &unk_10003CA08;
  v45[4] = buf;
  dispatch_source_set_cancel_handler(v39, v45);
  v41 = self->_purgeTimer;
  self->_purgeTimer = v39;
  v42 = v39;

  dispatch_resume(v42);
  _Block_object_dispose(buf, 8);

LABEL_33:
}

- (void)resendMessagesForMessageID:(id)d
{
  dCopy = d;
  v5 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "messageID: (%@)", buf, 0xCu);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000D868;
  v21[3] = &unk_10003CB80;
  v21[4] = self;
  v6 = dCopy;
  v22 = v6;
  v7 = objc_retainBlock(v21);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000D968;
  v19[3] = &unk_10003CB80;
  v19[4] = self;
  v8 = v6;
  v20 = v8;
  v9 = objc_retainBlock(v19);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10000DB4C;
  v16 = &unk_10003CB80;
  selfCopy = self;
  v10 = v8;
  v18 = v10;
  v11 = objc_retainBlock(&v13);
  if (v10)
  {
    *buf = 0;
    if ([(NPSDatabase *)self->_database getMessageType:buf forMessageID:v10, v13, v14, v15, v16, selfCopy])
    {
      v12 = v7;
      if (*buf)
      {
        v12 = v11;
        if (*buf != 2)
        {
          v12 = v9;
          if (*buf != 1)
          {
            abort();
          }
        }
      }

      (v12[2])();
      [(NPSDatabase *)self->_database removeMessageFromMessageTypeTable:v10];
    }
  }

  else
  {
    (v7[2])(v7);
    (v9[2])(v9);
    (v11[2])(v11);
  }
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  lCopy = l;
  metadataCopy = metadata;
  dCopy = d;
  contextCopy = context;
  v20 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    v32 = serviceCopy;
    v33 = 2112;
    v34 = accountCopy;
    v35 = 2112;
    v36 = lCopy;
    v37 = 2112;
    v38 = metadataCopy;
    v39 = 2112;
    v40 = dCopy;
    v41 = 2112;
    v42 = contextCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "service: (%@); account: (%@); incomingResourceAtURL: (%@); metadata: (%@); fromID: (%@); context: (%@)", buf, 0x3Eu);
  }

  v21 = [metadataCopy objectForKeyedSubscript:@"type"];
  v22 = [metadataCopy objectForKeyedSubscript:@"content"];
  if (v21)
  {
    v30 = dCopy;
    v23 = accountCopy;
    v24 = serviceCopy;
    v25 = os_transaction_create();
    intValue = [v21 intValue];
    if (intValue == 4)
    {
      outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
      [(NPSServer *)self handleFullBackupMessage:v22 resourceURL:lCopy idsGuid:outgoingResponseIdentifier];
    }

    else if (intValue == 3)
    {
      [(NPSServer *)self handleFileBackupMessage:v22 resourceURL:lCopy backupFile:0];
    }

    else
    {
      v29 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v21;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Un-handled message type: (%@)", buf, 0xCu);
      }
    }

    serviceCopy = v24;
    accountCopy = v23;
    dCopy = v30;
  }

  else
  {
    v27 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = metadataCopy;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "nil messageType. metadata: (%@)", buf, 0xCu);
    }
  }
}

- (void)_logUserDefaults:(id)defaults idsGuid:(id)guid
{
  defaultsCopy = defaults;
  guidCopy = guid;
  v7 = objc_opt_new();
  v8 = v7;
  v9 = @"<n/a>";
  if (guidCopy)
  {
    v9 = guidCopy;
  }

  [v7 appendFormat:@"User defaults Msg: GUID: %@", v9];
  domain = [defaultsCopy domain];
  [v8 appendFormat:@"\nDomain: %@", domain];

  [v8 appendFormat:@"\nKeys: ["];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  keys = [defaultsCopy keys];
  v12 = [keys countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(keys);
        }

        v16 = [*(*(&v18 + 1) + 8 * v15) key];
        [v8 appendFormat:@" %@, ", v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [keys countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v13);
  }

  [v8 appendFormat:@" ]"];
  v17 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }
}

- (void)_logUserDefaultsBackup:(id)backup idsGuid:(id)guid
{
  backupCopy = backup;
  guidCopy = guid;
  v7 = objc_opt_new();
  v8 = v7;
  v9 = @"<n/a>";
  if (guidCopy)
  {
    v9 = guidCopy;
  }

  [v7 appendFormat:@"User defaults Msg: GUID: %@", v9];
  container = [backupCopy container];
  [v8 appendFormat:@"\tContainer: %@", container];

  domain = [backupCopy domain];
  [v8 appendFormat:@"\tDomain: %@", domain];

  [v8 appendFormat:@"\tKeys: ["];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  keys = [backupCopy keys];
  v13 = [keys countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(keys);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) key];
        [v8 appendFormat:@" %@, ", v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [keys countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v14);
  }

  [v8 appendFormat:@" ]"];
  v18 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }
}

- (void)handleUserDefaultsMsg:(id)msg service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  msgCopy = msg;
  serviceCopy = service;
  dCopy = d;
  context = [msgCopy context];
  outgoingResponseIdentifier = [context outgoingResponseIdentifier];

  v15 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    processingIDSMessage = self->_processingIDSMessage;
    v26 = 136315650;
    if (processingIDSMessage)
    {
      v17 = "processing";
    }

    else
    {
      v17 = "queueing";
    }

    v27 = v17;
    v28 = 2048;
    v29 = msgCopy;
    v30 = 2112;
    v31 = outgoingResponseIdentifier;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "handleUserDefaultsMsg: %s idsProtobuf: (%p); outgoingResponseIdentifier: (%@)", &v26, 0x20u);
  }

  if (self->_processingIDSMessage)
  {
    data = [msgCopy data];
    [(NPSServer *)self handleUserDefaultsMsgData:data backupFile:0 idsGuid:outgoingResponseIdentifier];
  }

  else
  {
    data = [serviceCopy deviceForFromID:dCopy];
    v19 = [PendingIDSProtobuf alloc];
    v20 = +[NSDate date];
    v21 = [(PendingIDSProtobuf *)v19 initWithIDSProtobuf:msgCopy ofType:1 from:data receivedAt:v20];

    [(NSMutableArray *)self->_pendingIDSMessages addObject:v21];
    v22 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      pendingIDSMessages = self->_pendingIDSMessages;
      v24 = v22;
      v25 = [(NSMutableArray *)pendingIDSMessages count];
      v26 = 138412546;
      v27 = v21;
      v28 = 2048;
      v29 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Added %@ to pending IDS messages queue, size = %lu", &v26, 0x16u);
    }
  }
}

- (void)handleUserDefaultsMsgData:(id)data backupFile:(id)file idsGuid:(id)guid
{
  dataCopy = data;
  fileCopy = file;
  guidCopy = guid;
  v11 = objc_opt_new();
  v12 = [[PBDataReader alloc] initWithData:dataCopy];
  if (sub_100005EA4(v11, v12))
  {
    [(NPSServer *)self _logUserDefaults:v11 idsGuid:guidCopy];
    [(NPSServer *)self handlePermittedUserDefaultsMsg:v11 messageData:dataCopy overwriteNewerTimestamps:0 backupFile:fileCopy];
  }

  else
  {
    v13 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Could not parse incoming data", v14, 2u);
    }
  }
}

- (BOOL)handlePermittedUserDefaultsMsg:(id)msg messageData:(id)data overwriteNewerTimestamps:(BOOL)timestamps backupFile:(id)file
{
  timestampsCopy = timestamps;
  msgCopy = msg;
  dataCopy = data;
  fileCopy = file;
  v90 = msgCopy;
  domain = [msgCopy domain];
  hasTimestamp = [msgCopy hasTimestamp];
  [msgCopy timestamp];
  v10 = v9;
  v11 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "NO";
    *buf = 138413058;
    *&buf[12] = 1024;
    *&buf[4] = domain;
    if (timestampsCopy)
    {
      v12 = "YES";
    }

    *&buf[14] = hasTimestamp;
    *&buf[18] = 2048;
    *&buf[20] = v10;
    *&buf[28] = 2080;
    *&buf[30] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Handling User Defaults message for domain: (%@);        hasTimestamp: (%d);        timestamp: (%f);        overwriteNewerTimestamps: (%s)", buf, 0x26u);
  }

  v79 = objc_opt_new();
  permittedUserDefaults = [(NPSSettings *)self->_settings permittedUserDefaults];
  v92 = [permittedUserDefaults objectForKeyedSubscript:domain];

  if (v92)
  {
    [(NPSServer *)self usingPrefsFromDomain:domain];
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    obj = [msgCopy keys];
    v91 = [obj countByEnumeratingWithState:&v105 objects:v123 count:16];
    if (v91)
    {
      v87 = 0;
      v94 = 0;
      v82 = 0;
      v89 = *v106;
      v15 = "NO";
      if (timestampsCopy)
      {
        v15 = "YES";
      }

      v85 = v15;
      *&v14 = 138413058;
      v78 = v14;
      while (1)
      {
        for (i = 0; i != v91; i = i + 1)
        {
          if (*v106 != v89)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v105 + 1) + 8 * i);
          [v17 key];
          v18 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          value = [v17 value];
          v19 = nps_daemon_log;
          if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413570;
            v20 = "not-nil";
            if (!value)
            {
              v20 = "nil";
            }

            *&buf[4] = domain;
            *&buf[12] = 2112;
            *&buf[14] = v18;
            *&buf[22] = 2080;
            *&buf[24] = v20;
            *&buf[32] = 1024;
            *&buf[34] = hasTimestamp & 1;
            *&buf[38] = 2048;
            v120 = v10;
            v121 = 2080;
            v122 = v85;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Handling key in domain: (%@)            key: (%@);            value: (%s);            hasTimestamp: (%d);            timestamp: (%f);            overwriteNewerTimestamps: (%s)", buf, 0x3Au);
          }

          if ([v17 hasTimestamp])
          {
            hasTimestamp = [v17 hasTimestamp];
            [v17 timestamp];
            v10 = v21;
            v22 = nps_daemon_log;
            if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218498;
              *&buf[4] = v10;
              *&buf[12] = 2112;
              *&buf[14] = domain;
              *&buf[22] = 2112;
              *&buf[24] = v18;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Using timestamp from user defaults message key (%f) for <Domain %@; key %@>.", buf, 0x20u);
            }
          }

          else
          {
            hasTimestamp = [v90 hasTimestamp];
            [v90 timestamp];
            v10 = v23;
            v24 = nps_daemon_log;
            if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218498;
              *&buf[4] = v10;
              *&buf[12] = 2112;
              *&buf[14] = domain;
              *&buf[22] = 2112;
              *&buf[24] = v18;
              _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Using timestamp from user defaults message (%f) for <Domain %@; key %@>.", buf, 0x20u);
            }
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          *&buf[24] = sub_100006D10;
          *&buf[32] = sub_100006D20;
          keys = [v92 keys];
          v120 = [keys objectForKeyedSubscript:*&v18];

          v26 = *(*&buf[8] + 40);
          if (v26)
          {
            goto LABEL_25;
          }

          keyPrefixes = [v92 keyPrefixes];
          v102[0] = _NSConcreteStackBlock;
          v102[1] = 3221225472;
          v102[2] = sub_10000F754;
          v102[3] = &unk_10003CEE0;
          v28 = *&v18;
          v103 = v28;
          v104 = buf;
          [keyPrefixes enumerateKeysAndObjectsUsingBlock:v102];

          if (*(*&buf[8] + 40))
          {

            v26 = *(*&buf[8] + 40);
LABEL_25:
            container = [v26 container];
            [*(*&buf[8] + 40) appGroupContainer];
            v30 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            if ([*(*&buf[8] + 40) isPerGizmoSetting])
            {
              v31 = v87;
              if (!v87)
              {
                v31 = [[NPSSettingAccessor alloc] initWithNanoDomain:domain];
                v87 = v31;
              }
            }

            else
            {
              if (v94)
              {
                container2 = [(NPSSettingAccessor *)v94 container];
                v33 = container2;
                if (container2 == container)
                {
                  appGroupContainer = [(NPSSettingAccessor *)v94 appGroupContainer];
                  v36 = appGroupContainer == *&v30;

                  if (v36)
                  {
                    v31 = v94;
                    goto LABEL_38;
                  }
                }

                else
                {
                }
              }

              v37 = nps_daemon_log;
              if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
              {
                *v111 = 138412802;
                v112 = *&domain;
                v113 = 2112;
                v114 = *&container;
                v115 = 2112;
                v116 = v30;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Creating domain accessor (domain: %@, container: %@, appGroupContainer: %@)", v111, 0x20u);
              }

              v31 = [[NPSSettingAccessor alloc] initWithUserDefaultsDomain:domain container:container appGroupContainer:*&v30];

              v94 = v31;
            }

LABEL_38:
            v38 = v31;
            v39 = v38;
            if (!v38)
            {
              v53 = nps_daemon_log;
              if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
              {
                *v111 = 138412546;
                v112 = v18;
                v113 = 2112;
                v114 = *&domain;
                _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Unable to create settings accessor for Key (%@) Domain (%@); dropping incoming message.", v111, 0x16u);
              }

              goto LABEL_83;
            }

            if (!-[NPSSettingAccessor requiresDeviceUnlockedSinceBoot](v38, "requiresDeviceUnlockedSinceBoot") || ([*(*&buf[8] + 40) isPerGizmoSetting] & 1) != 0 || (v40 = MKBDeviceUnlockedSinceBoot(), v40 > 0))
            {
              v101 = 0;
              [NPSSettingAccessor unserializeObject:value error:&v101];
              *&v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v88 = v101;
              if (v88)
              {
                goto LABEL_82;
              }

              v42 = nps_daemon_log;
              if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
              {
                *v111 = 138412802;
                v112 = *&domain;
                v113 = 2112;
                v114 = v18;
                v115 = 2112;
                v116 = *&v41;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Received User Defaults value for <%@, %@>: (%@)", v111, 0x20u);
              }

              if (fileCopy)
              {
                v43 = objc_opt_class();
                syncGroups = [*(*&buf[8] + 40) syncGroups];
                allowedGroups = [(NPSServer *)self allowedGroups];
                LODWORD(v43) = [v43 shouldAllowSyncOfItemWithSyncGroups:syncGroups allowedSyncGroups:allowedGroups];

                if (v43)
                {
                  [fileCopy writeMessage:0 data:dataCopy];
                }
              }

              if ([*(*&buf[8] + 40) twoWaySync])
              {
                if (!timestampsCopy && (!hasTimestamp || ![v17 hasTwoWaySync] || !objc_msgSend(v17, "twoWaySync")))
                {
                  v58 = nps_daemon_log;
                  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                  {
                    *v111 = 138412546;
                    v112 = *&domain;
                    v113 = 2112;
                    v114 = v18;
                    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Local expects <%@, %@> to be 2-way-synced, but remote doesn't", v111, 0x16u);
                  }

                  v82 = 1;
                  goto LABEL_75;
                }

                v46 = -[NPSServer getCachedTimeStampFor:key:usePerGizmoCache:](self, "getCachedTimeStampFor:key:usePerGizmoCache:", domain, *&v18, [*(*&buf[8] + 40) isPerGizmoSetting]);
                v47 = v46;
                if (v46)
                {
                  [v46 doubleValue];
                  v49 = v48;
                  +[NSDate timeIntervalSinceReferenceDate];
                  v51 = v50;
                  if (v50 < v49)
                  {
                    v52 = nps_daemon_log;
                    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                    {
                      *v111 = v78;
                      v112 = *&domain;
                      v113 = 2112;
                      v114 = v18;
                      v115 = 2048;
                      v116 = v49;
                      v117 = 2048;
                      v118 = v51;
                      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Discarding cached timestamp for <%@, %@> since it is set to the future; cached: (%f); current: (%f)", v111, 0x2Au);
                    }

                    v47 = 0;
                    goto LABEL_72;
                  }

                  if (timestampsCopy)
                  {
                    goto LABEL_72;
                  }

                  v59 = [NSNumber numberWithDouble:*&v10];
                  v60 = [v47 compare:v59] == -1;

                  if (v60)
                  {
                    goto LABEL_72;
                  }

                  v61 = nps_daemon_log;
                  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                  {
                    *v111 = 138412546;
                    v112 = *&domain;
                    v113 = 2112;
                    v114 = v18;
                    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Discarding incoming setting for <%@, %@>, local value is more recent", v111, 0x16u);
                  }

                  v82 = 1;
LABEL_81:

LABEL_82:
LABEL_83:

                  goto LABEL_84;
                }

LABEL_72:
                v62 = nps_daemon_log;
                if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                {
                  *v111 = 138412802;
                  v112 = *&domain;
                  v113 = 2112;
                  v114 = v18;
                  v115 = 2048;
                  v116 = *&v10;
                  _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Updating timestamp for domain:%@ key:%@ to timestamp: %f", v111, 0x20u);
                }

                v110 = v18;
                v63 = [NSArray arrayWithObjects:&v110 count:1];
                v64 = [NSNumber numberWithDouble:*&v10];
                -[NPSServer updateCacheForDomain:keys:twoWaySyncTimestamp:isPerGizmo:](self, "updateCacheForDomain:keys:twoWaySyncTimestamp:isPerGizmo:", domain, v63, v64, [*(*&buf[8] + 40) isPerGizmoSetting]);
              }

LABEL_75:
              v65 = [(NPSSettingAccessor *)v39 objectForKey:*&v18];
              v47 = v65;
              if (v65 | v41 && ![v65 isEqual:v41])
              {
                [(NPSSettingAccessor *)v39 setObject:v41 forKey:*&v18];
                notificationNames = [*(*&buf[8] + 40) notificationNames];

                if (notificationNames)
                {
                  notificationNames2 = [*(*&buf[8] + 40) notificationNames];
                  [v79 unionSet:notificationNames2];
                }
              }

              else
              {
                v66 = nps_daemon_log;
                if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                {
                  *v111 = 138412802;
                  v112 = v18;
                  v113 = 2112;
                  v114 = *&v47;
                  v115 = 2112;
                  v116 = *&v41;
                  _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Skipping key (%@) since incoming value is un-changed                Current value: %@; incoming value: %@", v111, 0x20u);
                }
              }

              goto LABEL_81;
            }

            v54 = nps_daemon_log;
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              container3 = [*(*&buf[8] + 40) container];
              *v111 = v78;
              v112 = *&container3;
              v113 = 2112;
              v114 = *&domain;
              v115 = 2112;
              v116 = v18;
              v117 = 1024;
              LODWORD(v118) = v40;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Received containerized user defaults  (%@, %@, %@) before first unlock (%d); Stashing in database.", v111, 0x26u);
            }

            database = self->_database;
            twoWaySync = [v17 twoWaySync];
            [v90 timestamp];
            [(NPSDatabase *)database stashSettingsSyncData:value forDomain:domain key:*&v18 isTwoWaySync:twoWaySync timestamp:?];
            goto LABEL_83;
          }

          v34 = nps_daemon_log;
          if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
          {
            *v111 = 138412546;
            v112 = *&v28;
            v113 = 2112;
            v114 = *&domain;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Key (%@) in domain (%@) not permitted; dropping incoming message", v111, 0x16u);
          }

          v82 = 1;
          container = v103;
LABEL_84:

          _Block_object_dispose(buf, 8);
        }

        v91 = [obj countByEnumeratingWithState:&v105 objects:v123 count:16];
        if (!v91)
        {
          goto LABEL_91;
        }
      }
    }

    v87 = 0;
    v94 = 0;
    v82 = 0;
LABEL_91:

    [(NPSSettingAccessor *)v94 synchronizeForWriting];
    [(NPSSettingAccessor *)v87 synchronizeForWriting];
    if (v79)
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v70 = v79;
      v71 = [v70 countByEnumeratingWithState:&v97 objects:v109 count:16];
      if (v71)
      {
        v72 = *v98;
        do
        {
          for (j = 0; j != v71; j = j + 1)
          {
            if (*v98 != v72)
            {
              objc_enumerationMutation(v70);
            }

            v74 = *(*(&v97 + 1) + 8 * j);
            v75 = nps_daemon_log;
            if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = v74;
              *&buf[12] = 2112;
              *&buf[14] = domain;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Posting (%@) for domain (%@)", buf, 0x16u);
            }

            DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
            CFNotificationCenterPostNotification(DarwinNotifyCenter, v74, 0, 0, 0);
          }

          v71 = [v70 countByEnumeratingWithState:&v97 objects:v109 count:16];
        }

        while (v71);
      }
    }
  }

  else
  {
    v69 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = domain;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Domain (%@) not permitted; dropping incoming message", buf, 0xCu);
    }

    v87 = 0;
    v94 = 0;
    v82 = 1;
  }

  return v82 & 1;
}

- (void)handleRestoreOfSyncingUserDefaultsMsg:(id)msg backupFile:(id)file
{
  msgCopy = msg;
  fileCopy = file;
  v6 = objc_opt_new();
  v70 = msgCopy;
  v61 = [[PBDataReader alloc] initWithData:msgCopy];
  v62 = v6;
  if (sub_100005EA4(v6, v61))
  {
    domain = [v6 domain];
    hasTimestamp = [v6 hasTimestamp];
    [v6 timestamp];
    v8 = v7;
    v9 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = domain;
      *&buf[12] = 1024;
      *&buf[14] = hasTimestamp;
      *&buf[18] = 2048;
      *&buf[20] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Handling Restore of User Defaults message for domain: (%@); hasTimestamp: (%d); timestamp: (%f)", buf, 0x1Cu);
    }

    v60 = objc_opt_new();
    syncedUserDefaults = [(NPSSettings *)self->_settings syncedUserDefaults];
    v66 = [syncedUserDefaults objectForKeyedSubscript:domain];

    if (v66)
    {
      [(NPSServer *)self usingPrefsFromDomain:domain];
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      obj = [v62 keys];
      v65 = [obj countByEnumeratingWithState:&v91 objects:v109 count:16];
      if (v65)
      {
        v74 = 0;
        v75 = 0;
        v64 = *v92;
        while (1)
        {
          v11 = 0;
          do
          {
            if (*v92 != v64)
            {
              v12 = v11;
              objc_enumerationMutation(obj);
              v11 = v12;
            }

            v68 = v11;
            v71 = *(*(&v91 + 1) + 8 * v11);
            v13 = [v71 key];
            value = [v71 value];
            if ([v71 hasTimestamp])
            {
              LOBYTE(hasTimestamp) = [v71 hasTimestamp];
              [v71 timestamp];
              v8 = v14;
              v15 = nps_daemon_log;
              if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218498;
                *&buf[4] = v8;
                *&buf[12] = 2112;
                *&buf[14] = domain;
                *&buf[22] = 2112;
                *&buf[24] = v13;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Using timestamp from user defaults message key (%f) for <Domain %@; key %@>.", buf, 0x20u);
              }
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            *&buf[24] = sub_100006D10;
            v107 = sub_100006D20;
            keyArrays = [v66 keyArrays];
            v108 = [keyArrays objectForKeyedSubscript:v13];

            if (*(*&buf[8] + 40))
            {
              goto LABEL_16;
            }

            keyPrefixArrays = [v66 keyPrefixArrays];
            v88[0] = _NSConcreteStackBlock;
            v88[1] = 3221225472;
            v88[2] = sub_1000104AC;
            v88[3] = &unk_10003CF08;
            v18 = v13;
            v89 = v18;
            v90 = buf;
            [keyPrefixArrays enumerateKeysAndObjectsUsingBlock:v88];

            if (*(*&buf[8] + 40))
            {

LABEL_16:
              v87 = 0;
              [NPSSettingAccessor unserializeObject:value error:&v87];
              *&v19 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v67 = v87;
              if (!v67)
              {
                v20 = nps_daemon_log;
                if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                {
                  *v97 = 138412802;
                  v98 = domain;
                  v99 = 2112;
                  v100 = v13;
                  v101 = 2112;
                  v102 = *&v19;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Received User Defaults value for <%@, %@>: (%@)", v97, 0x20u);
                }

                v85 = 0u;
                v86 = 0u;
                v83 = 0u;
                v84 = 0u;
                v73 = *(*&buf[8] + 40);
                v21 = [v73 countByEnumeratingWithState:&v83 objects:v105 count:16];
                if (v21)
                {
                  v22 = *v84;
                  do
                  {
                    for (i = 0; i != v21; i = i + 1)
                    {
                      if (*v84 != v22)
                      {
                        objc_enumerationMutation(v73);
                      }

                      v24 = *(*(&v83 + 1) + 8 * i);
                      if (fileCopy)
                      {
                        v25 = objc_opt_class();
                        syncGroups = [v24 syncGroups];
                        allowedGroups = [(NPSServer *)self allowedGroups];
                        v28 = [v25 shouldAllowSyncOfItemWithSyncGroups:syncGroups allowedSyncGroups:allowedGroups];

                        if (v28)
                        {
                          [fileCopy writeMessage:0 data:v70];
                        }
                      }

                      if ([v24 twoWaySync])
                      {
                        if ((hasTimestamp & 1) != 0 && [v71 hasTwoWaySync] && objc_msgSend(v71, "twoWaySync"))
                        {
                          v29 = -[NPSServer getCachedTimeStampFor:key:usePerGizmoCache:](self, "getCachedTimeStampFor:key:usePerGizmoCache:", domain, v13, [v24 isPerGizmoSetting]);
                          v30 = v29;
                          if (v29)
                          {
                            [v29 doubleValue];
                            v32 = v31;
                            +[NSDate timeIntervalSinceReferenceDate];
                            v34 = v33;
                            if (v33 < v32)
                            {
                              v35 = nps_daemon_log;
                              if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                              {
                                *v97 = 138413058;
                                v98 = domain;
                                v99 = 2112;
                                v100 = v13;
                                v101 = 2048;
                                v102 = v32;
                                v103 = 2048;
                                v104 = v34;
                                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Discarding cached timestamp for <%@, %@> since it is set to the future; cached: (%f); current: (%f)", v97, 0x2Au);
                              }

                              v30 = 0;
                            }
                          }

                          v36 = nps_daemon_log;
                          if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                          {
                            *v97 = 138412802;
                            v98 = domain;
                            v99 = 2112;
                            v100 = v13;
                            v101 = 2048;
                            v102 = v8;
                            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Updating timestamp for domain:%@ key:%@ to timestamp: %f", v97, 0x20u);
                          }

                          v96 = v13;
                          v37 = [NSArray arrayWithObjects:&v96 count:1];
                          v38 = [NSNumber numberWithDouble:v8];
                          -[NPSServer updateCacheForDomain:keys:twoWaySyncTimestamp:isPerGizmo:](self, "updateCacheForDomain:keys:twoWaySyncTimestamp:isPerGizmo:", domain, v37, v38, [v24 isPerGizmoSetting]);
                        }

                        else
                        {
                          v39 = nps_daemon_log;
                          if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                          {
                            *v97 = 138412546;
                            v98 = domain;
                            v99 = 2112;
                            v100 = v13;
                            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Local expects <%@, %@> to be 2-way-synced, but remote doesn't", v97, 0x16u);
                          }
                        }
                      }

                      container = [v24 container];
                      appGroupContainer = [v24 appGroupContainer];
                      if ([v24 isPerGizmoSetting])
                      {
                        v42 = v74;
                        if (!v74)
                        {
                          v42 = [[NPSSettingAccessor alloc] initWithNanoDomain:domain];
                          v74 = v42;
                        }
                      }

                      else
                      {
                        v42 = v75;
                        if (!v75)
                        {
                          v42 = [[NPSSettingAccessor alloc] initWithUserDefaultsDomain:domain container:container appGroupContainer:appGroupContainer];
                          v75 = v42;
                        }
                      }

                      v43 = v42;
                      v44 = v43;
                      if (v43)
                      {
                        v45 = [(NPSSettingAccessor *)v43 objectForKey:v13];
                        v46 = v45;
                        if (v45 | v19 && ![v45 isEqual:v19])
                        {
                          [(NPSSettingAccessor *)v44 setObject:v19 forKey:v13];
                        }

                        else
                        {
                          v47 = nps_daemon_log;
                          if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                          {
                            *v97 = 138412802;
                            v98 = v13;
                            v99 = 2112;
                            v100 = v46;
                            v101 = 2112;
                            v102 = *&v19;
                            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Skipping key (%@) since incoming value is un-changed                        Current value: %@; incoming value: %@", v97, 0x20u);
                          }
                        }
                      }

                      else
                      {
                        v48 = nps_daemon_log;
                        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                        {
                          *v97 = 138412546;
                          v98 = v13;
                          v99 = 2112;
                          v100 = domain;
                          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Unable to create settings accessor for Key (%@) Domain (%@); dropping incoming message.", v97, 0x16u);
                        }
                      }
                    }

                    v21 = [v73 countByEnumeratingWithState:&v83 objects:v105 count:16];
                  }

                  while (v21);
                }
              }

              goto LABEL_59;
            }

            v49 = nps_daemon_log;
            if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
            {
              *v97 = 138412546;
              v98 = v18;
              v99 = 2112;
              v100 = domain;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Key (%@) in domain (%@) not synced; dropping incoming message", v97, 0x16u);
            }

LABEL_59:
            _Block_object_dispose(buf, 8);

            v11 = v68 + 1;
          }

          while ((v68 + 1) != v65);
          v50 = [obj countByEnumeratingWithState:&v91 objects:v109 count:16];
          v65 = v50;
          if (!v50)
          {
            goto LABEL_72;
          }
        }
      }

      v74 = 0;
      v75 = 0;
LABEL_72:

      [(NPSSettingAccessor *)v75 synchronizeForWriting];
      [(NPSSettingAccessor *)v74 synchronizeForWriting];
      if (v60)
      {
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v53 = v60;
        v54 = [v53 countByEnumeratingWithState:&v79 objects:v95 count:16];
        if (v54)
        {
          v55 = *v80;
          do
          {
            for (j = 0; j != v54; j = j + 1)
            {
              if (*v80 != v55)
              {
                objc_enumerationMutation(v53);
              }

              v57 = *(*(&v79 + 1) + 8 * j);
              v58 = nps_daemon_log;
              if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = v57;
                *&buf[12] = 2112;
                *&buf[14] = domain;
                _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Posting (%@) for domain (%@)", buf, 0x16u);
              }

              DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
              CFNotificationCenterPostNotification(DarwinNotifyCenter, v57, 0, 0, 0);
            }

            v54 = [v53 countByEnumeratingWithState:&v79 objects:v95 count:16];
          }

          while (v54);
        }
      }
    }

    else
    {
      v52 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = domain;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Domain (%@) not synced; dropping incoming message", buf, 0xCu);
      }

      v74 = 0;
      v75 = 0;
    }
  }

  else
  {
    v51 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Could not parse incoming data", buf, 2u);
    }
  }
}

- (void)handleUserDefaultsBackupMsg:(id)msg service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  msgCopy = msg;
  serviceCopy = service;
  dCopy = d;
  context = [msgCopy context];
  outgoingResponseIdentifier = [context outgoingResponseIdentifier];

  v15 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    processingIDSMessage = self->_processingIDSMessage;
    v26 = 136315650;
    if (processingIDSMessage)
    {
      v17 = "processing";
    }

    else
    {
      v17 = "queueing";
    }

    v27 = v17;
    v28 = 2048;
    v29 = msgCopy;
    v30 = 2112;
    v31 = outgoingResponseIdentifier;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "handleUserDefaultsBackupMsg: %s idsProtobuf: (%p); outgoingResponseIdentifier: (%@)", &v26, 0x20u);
  }

  if (self->_processingIDSMessage)
  {
    data = [msgCopy data];
    [(NPSServer *)self handleUserDefaultsBackupMsgData:data backupFile:0 idsGuid:outgoingResponseIdentifier];
  }

  else
  {
    data = [serviceCopy deviceForFromID:dCopy];
    v19 = [PendingIDSProtobuf alloc];
    v20 = +[NSDate date];
    v21 = [(PendingIDSProtobuf *)v19 initWithIDSProtobuf:msgCopy ofType:2 from:data receivedAt:v20];

    [(NSMutableArray *)self->_pendingIDSMessages addObject:v21];
    v22 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      pendingIDSMessages = self->_pendingIDSMessages;
      v24 = v22;
      v25 = [(NSMutableArray *)pendingIDSMessages count];
      v26 = 138412546;
      v27 = v21;
      v28 = 2048;
      v29 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Added %@ to pending IDS messages queue, size = %lu", &v26, 0x16u);
    }
  }
}

- (void)handleUserDefaultsBackupMsgData:(id)data backupFile:(id)file idsGuid:(id)guid
{
  guidCopy = guid;
  dataCopy = data;
  v9 = objc_opt_new();
  v10 = [[PBDataReader alloc] initWithData:dataCopy];

  if (sub_100004BC0(v9, v10))
  {
    [(NPSServer *)self _logUserDefaultsBackup:v9 idsGuid:guidCopy];
    domain = [v9 domain];
    container = [v9 container];
    v13 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = container;
      v42 = 2112;
      v43 = domain;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Handling User Defaults Backup message for container: (%@); domain: (%@)", buf, 0x16u);
    }

    v14 = [(NPSServer *)self backupPathForDomain:domain container:container];
    if (!v14 || container && ([(NPSServer *)self createDirectoryIfNeeded:v14], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {

      goto LABEL_36;
    }

    v17 = [NSData dataWithContentsOfFile:v14];
    if (!v17)
    {
      v19 = 0;
LABEL_19:
      v18 = objc_opt_new();
LABEL_20:
      keys = [v9 keys];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100010EC8;
      v36[3] = &unk_10003CF90;
      v32 = domain;
      v37 = v32;
      v24 = v18;
      v38 = v24;
      [keys enumerateObjectsUsingBlock:v36];

      if (![v24 count])
      {
        v30 = +[NSFileManager defaultManager];
        if ([v30 fileExistsAtPath:v14])
        {
          v33 = v19;
          [v30 removeItemAtPath:v14 error:&v33];
          v26 = v33;

          if (v26)
          {
            v31 = nps_daemon_log;
            if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v41 = v32;
              v42 = 2112;
              v43 = v14;
              v44 = 2112;
              v45 = v26;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Failed to delete backup for domain (%@) at path (%@) with error: (%@)", buf, 0x20u);
            }
          }
        }

        else
        {
          v26 = v19;
        }

        v28 = v32;
        goto LABEL_35;
      }

      v35 = 0;
      v25 = [NSPropertyListSerialization dataWithPropertyList:v24 format:200 options:0 error:&v35];
      v26 = v35;

      if (v26)
      {
        v27 = nps_daemon_log;
        v28 = v32;
        if (!os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
LABEL_32:
          v17 = v25;
LABEL_35:

          goto LABEL_36;
        }

        *buf = 138412802;
        v41 = v32;
        v42 = 2112;
        v43 = v24;
        v44 = 2112;
        v45 = v26;
        v29 = "Failed to serialize updated domain (%@) backup dictionary (%@) with error: (%@)";
      }

      else
      {
        v34 = 0;
        [v25 writeToFile:v14 options:268435457 error:&v34];
        v26 = v34;
        v28 = v32;
        if (!v26)
        {
          goto LABEL_32;
        }

        v27 = nps_daemon_log;
        if (!os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }

        *buf = 138412802;
        v41 = v32;
        v42 = 2112;
        v43 = v14;
        v44 = 2112;
        v45 = v26;
        v29 = "Failed to write updated domain (%@) backup at path (%@) with error: (%@)";
      }

      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v29, buf, 0x20u);
      goto LABEL_32;
    }

    v39 = 0;
    v18 = [NSPropertyListSerialization propertyListWithData:v17 options:1 format:0 error:&v39];
    v19 = v39;
    v20 = nps_daemon_log;
    v21 = os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (!v21)
      {
        goto LABEL_18;
      }

      *buf = 138412546;
      v41 = v17;
      v42 = 2112;
      v43 = v19;
      v22 = "Failed to unserialized domain backup (%@) with error: (%@)";
    }

    else
    {
      if (!v21)
      {
        goto LABEL_18;
      }

      *buf = 138412546;
      v41 = domain;
      v42 = 2112;
      v43 = v18;
      v22 = "Read pre-existing domain (%@) backup: (%@)";
    }

    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v22, buf, 0x16u);
LABEL_18:
    if (v18)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v16 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Could not parse incoming data", buf, 2u);
  }

LABEL_36:
}

- (void)handleFileBackupMessage:(id)message service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  messageCopy = message;
  serviceCopy = service;
  dCopy = d;
  context = [messageCopy context];
  outgoingResponseIdentifier = [context outgoingResponseIdentifier];

  v15 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    processingIDSMessage = self->_processingIDSMessage;
    v26 = 136315650;
    if (processingIDSMessage)
    {
      v17 = "processing";
    }

    else
    {
      v17 = "queueing";
    }

    v27 = v17;
    v28 = 2048;
    v29 = messageCopy;
    v30 = 2112;
    v31 = outgoingResponseIdentifier;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "handleFileBackupMessage: %s idsProtobuf: (%p); outgoingResponseIdentifier: (%@)", &v26, 0x20u);
  }

  if (self->_processingIDSMessage)
  {
    data = [messageCopy data];
    [(NPSServer *)self handleFileBackupMessage:data resourceURL:0 backupFile:0];
  }

  else
  {
    data = [serviceCopy deviceForFromID:dCopy];
    v19 = [PendingIDSProtobuf alloc];
    v20 = +[NSDate date];
    v21 = [(PendingIDSProtobuf *)v19 initWithIDSProtobuf:messageCopy ofType:4 from:data receivedAt:v20];

    [(NSMutableArray *)self->_pendingIDSMessages addObject:v21];
    v22 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      pendingIDSMessages = self->_pendingIDSMessages;
      v24 = v22;
      v25 = [(NSMutableArray *)pendingIDSMessages count];
      v26 = 138412546;
      v27 = v21;
      v28 = 2048;
      v29 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Added %@ to pending IDS messages queue, size = %lu", &v26, 0x16u);
    }
  }
}

- (void)handleFileBackupMessage:(id)message resourceURL:(id)l backupFile:(id)file
{
  lCopy = l;
  messageCopy = message;
  v9 = [[NPSFileBackupMsg alloc] initWithData:messageCopy];

  if (v9)
  {
    v10 = [NSSet setWithObject:objc_opt_class()];
    fileURL = [(NPSFileBackupMsg *)v9 fileURL];
    v12 = [NPSKeyedArchiverUtil unarchiveObjectOfClasses:v10 withData:fileURL];

    v13 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = lCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Handling file backup message for path: (%@); Temporary URL: (%@)", &v16, 0x16u);
    }

    fileBackupManager = [(NPSServer *)self fileBackupManager];
    [fileBackupManager backupFileAtURL:lCopy originalFileURL:v12];
  }

  else
  {
    v15 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could not parse incoming data", &v16, 2u);
    }
  }
}

- (void)handleFullBackupMessage:(id)message resourceURL:(id)l idsGuid:(id)guid
{
  lCopy = l;
  guidCopy = guid;
  messageCopy = message;
  v11 = [[NPSFileBackupMsg alloc] initWithData:messageCopy];

  if (v11)
  {
    v12 = [[NPSBackupReaderWriter alloc] initWithPathToLoadBackup:lCopy];
    if (v12)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100011588;
      v14[3] = &unk_10003CFB8;
      v14[4] = self;
      v15 = guidCopy;
      [(NPSBackupReaderWriter *)v12 enumerateMessages:v14];
    }
  }

  if (lCopy)
  {
    v13 = +[NSFileManager defaultManager];
    [v13 removeItemAtURL:lCopy error:0];
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v13 = listenerCopy;
    v14 = 2048;
    v15 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "listener: (%p); connection: (%p)", buf, 0x16u);
  }

  if (qword_1000456D8 != -1)
  {
    sub_100026A10();
  }

  [connectionCopy setExportedInterface:qword_1000456E0];
  [connectionCopy setExportedObject:self];
  objc_initWeak(buf, connectionCopy);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001197C;
  v10[3] = &unk_10003D000;
  objc_copyWeak(&v11, buf);
  [connectionCopy setInvalidationHandler:v10];
  [connectionCopy setInterruptionHandler:0];
  [connectionCopy resume];
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);

  return 1;
}

- (id)cachePathForDomain:(id)domain isPerGizmo:(BOOL)gizmo
{
  gizmoCopy = gizmo;
  domainCopy = domain;
  perGizmoCacheDirectoryPath = [(NPSDeviceRegistry *)self->_deviceRegistry perGizmoCacheDirectoryPath];
  if (!gizmoCopy)
  {
    globalCacheDirectoryPath = [(NPSDeviceRegistry *)self->_deviceRegistry globalCacheDirectoryPath];

    perGizmoCacheDirectoryPath = globalCacheDirectoryPath;
  }

  if (perGizmoCacheDirectoryPath)
  {
    v9 = [perGizmoCacheDirectoryPath stringByAppendingPathComponent:domainCopy];
    stringByStandardizingPath = [v9 stringByStandardizingPath];

    if ([stringByStandardizingPath hasPrefix:perGizmoCacheDirectoryPath])
    {
      v11 = stringByStandardizingPath;
    }

    else
    {
      v12 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = domainCopy;
        v16 = 1024;
        v17 = gizmoCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to resolve cache path for domain: (%@); isPerGizmo: (%d)", &v14, 0x12u);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)restoreRemoteSettingsFromBackup
{
  v3 = os_transaction_create();
  +[NSFileManager defaultManager];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000126E4;
  v22 = sub_100012710;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100012718;
  v4 = v14[3] = &unk_10003D028;
  selfCopy = self;
  v17 = &v18;
  v15 = v4;
  v5 = objc_retainBlock(v14);
  v6 = v19[5];
  v19[5] = v5;

  userDefaultsBackupDirectoryPath = [(NPSDeviceRegistry *)self->_deviceRegistry userDefaultsBackupDirectoryPath];
  v8 = [v4 fileExistsAtPath:userDefaultsBackupDirectoryPath];
  v9 = nps_daemon_log;
  v10 = os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138412290;
      v25 = userDefaultsBackupDirectoryPath;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Restoring remote settings from backup at path (%@)", buf, 0xCu);
    }

    v11 = (*(v19[5] + 16))();
  }

  else
  {
    if (v10)
    {
      *buf = 138412290;
      v25 = userDefaultsBackupDirectoryPath;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No remote settings backup directory (%@)", buf, 0xCu);
    }

    v11 = 0;
  }

  v12 = v19[5];
  v19[5] = 0;

  _Block_object_dispose(&v18, 8);

  return v11;
}

- (id)restoreRemoteFilesFromBackup
{
  v3 = os_transaction_create();
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100006D10;
  v12 = sub_100006D20;
  v13 = 0;
  fileBackupManager = [(NPSServer *)self fileBackupManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012B18;
  v7[3] = &unk_10003D050;
  v7[4] = self;
  v7[5] = &v8;
  [fileBackupManager enumerateFileBackupsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)restoreFileBackupForLocalFileURL:(id)l originalFileURL:(id)rL isInitialSync:(BOOL)sync
{
  syncCopy = sync;
  lCopy = l;
  rLCopy = rL;
  v10 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v49 = rLCopy;
    v50 = 2112;
    v51 = lCopy;
    v52 = 1024;
    LODWORD(v53) = syncCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Restoring remote file (%@) stored locally at (%@); isInitialSync: (%d)", buf, 0x1Cu);
  }

  if (syncCopy)
  {
    v47 = 0;
    v46 = 0;
    v11 = [lCopy getResourceValue:&v47 forKey:NSURLFileSizeKey error:&v46];
    v12 = v47;
    v13 = v46;
    if (v11)
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      v15 = v13;
      v16 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v49 = lCopy;
        v50 = 2112;
        v51 = v15;
        v52 = 1024;
        LODWORD(v53) = v11;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to retrieve file size for file URL: (%@) with error: (%@); result: (%d)", buf, 0x1Cu);
      }

      v17 = v15;
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 0;
  }

  v43 = lCopy;
  v18 = objc_opt_new();
  v19 = [NPSKeyedArchiverUtil archiveObject:rLCopy];
  [v18 setFileURL:v19];

  v42 = rLCopy;
  v20 = [objc_opt_class() queueOneIdentifierForFileBackupMsg:rLCopy];
  data = [v18 data];
  v58[0] = @"type";
  v58[1] = @"content";
  v59[0] = &off_10003E908;
  v59[1] = data;
  v40 = data;
  v22 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];
  activeDevice = [(NPSDeviceRegistry *)self->_deviceRegistry activeDevice];
  v24 = [NPSDeviceRegistry idsDestinationIDForDevice:activeDevice withIdsService:self->_idsService];

  v41 = v20;
  v39 = v22;
  if (v24)
  {
    idsService = [(NPSServer *)self idsService];
    [NSSet setWithObject:v24];
    v26 = v38 = v12;
    v56[0] = IDSSendMessageOptionTimeoutKey;
    [objc_opt_class() maxSendTimeout];
    v27 = [NSNumber numberWithDouble:?];
    v57[0] = v27;
    v57[1] = &__kCFBooleanTrue;
    v56[1] = IDSSendMessageOptionBypassDuetKey;
    v56[2] = IDSSendMessageOptionQueueOneIdentifierKey;
    v57[2] = v20;
    v28 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:3];
    v44 = 0;
    v45 = 0;
    [idsService sendResourceAtURL:v43 metadata:v22 toDestinations:v26 priority:200 options:v28 identifier:&v45 error:&v44];
    v29 = v45;
    v17 = v44;

    v12 = v38;
  }

  else
  {
    v54 = NSLocalizedDescriptionKey;
    v55 = @"NPS should not try syncing when there is no active device";
    idsService = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v17 = [NSError errorWithDomain:@"com.apple.NanoPreferencesSync" code:1 userInfo:idsService];
    v29 = 0;
  }

  v30 = nps_daemon_log;
  v31 = os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    rLCopy = v42;
    lCopy = v43;
    if (v31)
    {
      v32 = v30;
      fileURL = [v18 fileURL];
      *buf = 138412802;
      v49 = v43;
      v50 = 2112;
      v51 = fileURL;
      v52 = 2112;
      v53 = v17;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Failed to send file resource (%@) for backup at (%@) with error: (%@)", buf, 0x20u);
    }

    v34 = v17;
  }

  else
  {
    rLCopy = v42;
    if (v31)
    {
      *buf = 138412290;
      v49 = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Successfully sent file backup with identifier (%@)", buf, 0xCu);
    }

    database = self->_database;
    path = [v42 path];
    [(NPSDatabase *)database sentFileBackupMessage:v29 forFileAtPath:path];

    -[NPSServer registerSyncMessageWithIdentifier:size:](self, "registerSyncMessageWithIdentifier:size:", v29, [v12 unsignedLongLongValue] + objc_msgSend(v40, "length"));
    lCopy = v43;
  }

LABEL_23:

  return v17;
}

- (id)createDirectoryIfNeeded:(id)needed
{
  neededCopy = needed;
  if (neededCopy)
  {
    v4 = +[NSFileManager defaultManager];
    if ([v4 fileExistsAtPath:neededCopy])
    {
      v5 = 0;
    }

    else
    {
      v15 = NSFileProtectionKey;
      v16 = NSFileProtectionNone;
      v7 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v10 = 0;
      [v4 createDirectoryAtPath:neededCopy withIntermediateDirectories:1 attributes:v7 error:&v10];
      v5 = v10;

      if (v5)
      {
        v8 = nps_daemon_log;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v12 = neededCopy;
          v13 = 2112;
          v14 = v5;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to create backup directory (%@) with error: (%@)", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v6 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Requested to create directory with nil path", buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)backupPathForDomain:(id)domain container:(id)container
{
  domainCopy = domain;
  containerCopy = container;
  userDefaultsBackupDirectoryPath = [(NPSDeviceRegistry *)self->_deviceRegistry userDefaultsBackupDirectoryPath];
  v9 = userDefaultsBackupDirectoryPath;
  if (containerCopy)
  {
    v10 = [userDefaultsBackupDirectoryPath stringByAppendingPathComponent:containerCopy];
  }

  else
  {
    v10 = userDefaultsBackupDirectoryPath;
  }

  v11 = v10;
  v12 = [v10 stringByAppendingPathComponent:domainCopy];
  stringByStandardizingPath = [v12 stringByStandardizingPath];

  if ([stringByStandardizingPath hasPrefix:v9])
  {
    v14 = stringByStandardizingPath;
  }

  else
  {
    v15 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = domainCopy;
      v19 = 2112;
      v20 = containerCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to resolve backup path for domain: (%@) for container: (%@)", &v17, 0x16u);
    }

    v14 = 0;
  }

  return v14;
}

- (void)usingPrefsFromDomain:(id)domain
{
  domainCopy = domain;
  currentlyUsedDomain = self->_currentlyUsedDomain;
  p_currentlyUsedDomain = &self->_currentlyUsedDomain;
  v8 = domainCopy;
  if (([domainCopy isEqualToString:currentlyUsedDomain] & 1) == 0)
  {
    objc_storeStrong(p_currentlyUsedDomain, domain);
    CFPreferencesFlushCaches();
  }
}

- (id)sendSetting:(id)setting keys:(id)keys allowedSyncGroups:(id)groups messageIdentifier:(id *)identifier messageData:(id *)data cloudEnabled:(BOOL)enabled backupFile:(id)file
{
  enabledCopy = enabled;
  settingCopy = setting;
  keysCopy = keys;
  groupsCopy = groups;
  fileCopy = file;
  v16 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[NPSServer sendSetting:keys:allowedSyncGroups:messageIdentifier:messageData:cloudEnabled:backupFile:]";
    *&buf[12] = 2112;
    *&buf[14] = keysCopy;
    *&buf[22] = 2112;
    v100 = groupsCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: keys: %@; syncGroups: %@", buf, 0x20u);
  }

  v78 = settingCopy;
  if (settingCopy)
  {
    identifierCopy = identifier;
    dataCopy = data;
    v65 = enabledCopy;
    v68 = fileCopy;
    [settingCopy synchronizeForReading];
    v77 = objc_opt_new();
    domain = [settingCopy domain];
    [v77 setDomain:domain];

    v18 = objc_opt_new();
    [v77 setKeys:v18];

    +[NSDate timeIntervalSinceReferenceDate];
    [v77 setTimestamp:?];
    syncedUserDefaults = [(NPSSettings *)self->_settings syncedUserDefaults];
    domain2 = [settingCopy domain];
    v72 = [syncedUserDefaults objectForKeyedSubscript:domain2];

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = keysCopy;
    v74 = [obj countByEnumeratingWithState:&v88 objects:v103 count:16];
    if (v74)
    {
      v21 = 0;
      v22 = 0;
      v73 = *v89;
      do
      {
        v23 = 0;
        do
        {
          if (*v89 != v73)
          {
            v24 = v23;
            objc_enumerationMutation(obj);
            v23 = v24;
          }

          v75 = v23;
          v25 = *(*(&v88 + 1) + 8 * v23);
          context = objc_autoreleasePoolPush();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v100 = sub_100006D10;
            v101 = sub_100006D20;
            keyArrays = [v72 keyArrays];
            v102 = [keyArrays objectForKeyedSubscript:v25];

            v27 = *&buf[8];
            if (!*(*&buf[8] + 40))
            {
              keyPrefixArrays = [v72 keyPrefixArrays];
              v87[0] = _NSConcreteStackBlock;
              v87[1] = 3221225472;
              v87[2] = sub_100013E24;
              v87[3] = &unk_10003CF08;
              v87[4] = v25;
              v87[5] = buf;
              [keyPrefixArrays enumerateKeysAndObjectsUsingBlock:v87];

              v27 = *&buf[8];
            }

            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v79 = *(v27 + 40);
            v29 = [v79 countByEnumeratingWithState:&v83 objects:v98 count:16];
            v30 = v21;
            if (v29)
            {
              v31 = *v84;
              do
              {
                for (i = 0; i != v29; i = i + 1)
                {
                  if (*v84 != v31)
                  {
                    objc_enumerationMutation(v79);
                  }

                  v33 = *(*(&v83 + 1) + 8 * i);
                  syncGroups = [v33 syncGroups];
                  v35 = [NPSServer shouldAllowSyncOfItemWithSyncGroups:syncGroups allowedSyncGroups:groupsCopy];

                  if (v35)
                  {
                    if ([v33 twoWaySync] && (objc_msgSend(v33, "syncGroups"), v36 = objc_claimAutoreleasedReturnValue(), v37 = +[NPSServer shouldAllowSyncOfItemWithSyncGroups:allowedSyncGroups:](NPSServer, "shouldAllowSyncOfItemWithSyncGroups:allowedSyncGroups:", v36, groupsCopy), v36, v37))
                    {
                      v38 = v30;
                      if (!v30)
                      {
                        v38 = objc_opt_new();
                      }

                      [v38 addObject:v25];
                    }

                    else
                    {
                      v38 = v30;
                    }

                    v30 = v38;
                    v40 = objc_opt_new();
                    [v40 setKey:v25];
                    if ([v33 twoWaySync])
                    {
                      [v40 setTwoWaySync:1];
                      [v77 timestamp];
                      [v40 setTimestamp:?];
                    }

                    v82 = v22;
                    v41 = [v78 serializedObjectForKey:v25 error:&v82];
                    v42 = v82;

                    if (v42)
                    {
                      v43 = nps_daemon_log;
                      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                      {
                        *v92 = 136315650;
                        v93 = "[NPSServer sendSetting:keys:allowedSyncGroups:messageIdentifier:messageData:cloudEnabled:backupFile:]";
                        v94 = 2112;
                        v95 = v25;
                        v96 = 2112;
                        v97 = v42;
                        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%s: Error serializing object for key %@. Error: %@", v92, 0x20u);
                      }
                    }

                    else
                    {
                      [v40 setValue:v41];
                      keys = [v77 keys];
                      [keys addObject:v40];
                    }

                    v22 = v42;
                  }

                  else
                  {
                    v39 = nps_daemon_log;
                    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                    {
                      *v92 = 136315138;
                      v93 = "[NPSServer sendSetting:keys:allowedSyncGroups:messageIdentifier:messageData:cloudEnabled:backupFile:]";
                      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%s: Not allowed to sync items in this sync groups.", v92, 0xCu);
                    }
                  }
                }

                v29 = [v79 countByEnumeratingWithState:&v83 objects:v98 count:16];
              }

              while (v29);
            }

            v21 = v30;

            _Block_object_dispose(buf, 8);
          }

          else
          {
            v45 = nps_daemon_log;
            if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v25;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Key (%@) is not a String.", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(context);
          v23 = v75 + 1;
        }

        while ((v75 + 1) != v74);
        v74 = [obj countByEnumeratingWithState:&v88 objects:v103 count:16];
      }

      while (v74);
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    keys2 = [v77 keys];
    v49 = [keys2 count];

    if (v49)
    {
      data = [v77 data];
      v51 = data;
      if (dataCopy)
      {
        v52 = data;
        *dataCopy = v51;
      }

      if (v68)
      {
        [v68 writeMessage:0 data:v51];
        v53 = 0;
      }

      else
      {
        if ([v78 type] == 1)
        {
          domain3 = [v78 domain];
          v55 = [domain3 isEqualToString:@"com.apple.pairedsync"];
        }

        else
        {
          v55 = 0;
        }

        v56 = [objc_opt_class() queueOneIdentifierForUserDefaultsMsg:v77];
        v81 = 0;
        v57 = [(NPSServer *)self sendMessageData:v51 messageType:0 queueOneIdentifier:v56 identifier:&v81 isPairedSyncMessage:v55 cloudEnabled:v65];
        v53 = v81;

        if (identifierCopy)
        {
          v58 = v53;
          *identifierCopy = v53;
        }

        v59 = [v78 type] == 1;
        domain4 = [v78 domain];
        [v77 timestamp];
        v61 = [NSNumber numberWithDouble:?];
        [(NPSServer *)self updateCacheForDomain:domain4 keys:v21 twoWaySyncTimestamp:v61 isPerGizmo:v59];

        if (!v57)
        {
          database = self->_database;
          domain5 = [v78 domain];
          [(NPSDatabase *)database sentSettingsSyncMessage:v53 forDomain:domain5 keys:obj cloudEnabled:v65];
        }

        v22 = v57;
      }
    }

    v47 = v22;

    fileCopy = v68;
  }

  else
  {
    v46 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NPSServer sendSetting:keys:allowedSyncGroups:messageIdentifier:messageData:cloudEnabled:backupFile:]";
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%s: Settings accessor not passed.", buf, 0xCu);
    }

    v47 = 0;
  }

  return v47;
}

+ (id)queueOneIdentifierForUserDefaultsMsg:(id)msg
{
  msgCopy = msg;
  v4 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  keys = [msgCopy keys];
  v6 = [keys countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(keys);
        }

        v10 = [*(*(&v26 + 1) + 8 * i) key];
        [v4 addObject:v10];
      }

      v7 = [keys countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  allObjects = [v4 allObjects];
  v12 = [allObjects sortedArrayUsingSelector:"compare:"];

  v13 = [[NSMutableString alloc] initWithString:@"UserDefaults/"];
  domain = [msgCopy domain];
  [v13 appendString:domain];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v22 + 1) + 8 * j);
        [v13 appendString:{@"|", v22}];
        [v13 appendString:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  return v13;
}

- (id)sendSettingsBackupInDomain:(id)domain keys:(id)keys container:(id)container isInitialSync:(BOOL)sync backupFile:(id)file
{
  domainCopy = domain;
  keysCopy = keys;
  containerCopy = container;
  fileCopy = file;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_100006D10;
  v64 = sub_100006D20;
  v65 = 0;
  v47 = +[NSFileManager defaultManager];
  selfCopy = self;
  userDefaultsBackupDirectoryPath = [(NPSDeviceRegistry *)self->_deviceRegistry userDefaultsBackupDirectoryPath];
  v16 = userDefaultsBackupDirectoryPath;
  v46 = fileCopy;
  if (containerCopy)
  {
    v17 = [userDefaultsBackupDirectoryPath stringByAppendingPathComponent:containerCopy];

    v16 = v17;
  }

  v18 = [v16 stringByAppendingPathComponent:domainCopy];

  v19 = [NSData dataWithContentsOfFile:v18];
  if (v19)
  {
    v20 = v61;
    obj = 0;
    v45 = [NSPropertyListSerialization propertyListWithData:v19 options:0 format:0 error:&obj];
    objc_storeStrong(v20 + 5, obj);
    if (v61[5])
    {
      v21 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v61[5];
        *buf = 138413058;
        v68 = domainCopy;
        v69 = 2112;
        v70 = v19;
        v71 = 2112;
        v72 = containerCopy;
        v73 = 2112;
        v74 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Failed to unserialize domain (%@) backup (%@) for container (%@) with error: (%@)", buf, 0x2Au);
      }

      v23 = 0;
    }

    else
    {
      v25 = objc_opt_new();
      v26 = objc_opt_new();
      [v26 setContainer:containerCopy];
      [v26 setDomain:domainCopy];
      v27 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v45, "count")}];
      [v26 setKeys:v27];

      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_1000146FC;
      v53[3] = &unk_10003D078;
      v39 = domainCopy;
      v54 = v39;
      v38 = containerCopy;
      v55 = v38;
      v58 = &v60;
      v28 = v26;
      v56 = v28;
      v40 = v25;
      v57 = v40;
      [v45 enumerateKeysAndObjectsUsingBlock:v53];
      v42 = v28;
      data = [v28 data];
      if (v46)
      {
        [v46 writeMessage:0 data:data];
        v41 = 0;
        v23 = 0;
      }

      else
      {
        v37 = [objc_opt_class() queueOneIdentifierForUserDefaultsBackupMsg:v28];
        v52 = 0;
        v29 = [(NPSServer *)selfCopy sendMessageData:data messageType:2 queueOneIdentifier:v37 identifier:&v52 cloudEnabled:0];
        v41 = v52;
        v30 = v61[5];
        v61[5] = v29;

        if (v61[5])
        {
          v23 = 0;
        }

        else
        {
          -[NPSServer registerSyncMessageWithIdentifier:size:](selfCopy, "registerSyncMessageWithIdentifier:size:", v41, [data length]);
          if (!keysCopy)
          {
            keysCopy = objc_opt_new();
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            keys = [v42 keys];
            v32 = [keys countByEnumeratingWithState:&v48 objects:v66 count:16];
            if (v32)
            {
              v33 = *v49;
              do
              {
                for (i = 0; i != v32; i = i + 1)
                {
                  if (*v49 != v33)
                  {
                    objc_enumerationMutation(keys);
                  }

                  v35 = [*(*(&v48 + 1) + 8 * i) key];
                  [keysCopy addObject:v35];
                }

                v32 = [keys countByEnumeratingWithState:&v48 objects:v66 count:16];
              }

              while (v32);
            }
          }

          [(NPSDatabase *)selfCopy->_database sentSettingsBackupMessage:v41 forContainer:v38 domain:v39 keys:keysCopy];
          v23 = v40;
        }
      }
    }
  }

  else
  {
    v24 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = domainCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Remote backup for domain (%@) is empty; Deleting the associated .plist", buf, 0xCu);
    }

    [v47 removeItemAtPath:v18 error:0];
    v23 = 0;
  }

  _Block_object_dispose(&v60, 8);

  return v23;
}

+ (id)queueOneIdentifierForUserDefaultsBackupMsg:(id)msg
{
  msgCopy = msg;
  v4 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  keys = [msgCopy keys];
  v6 = [keys countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(keys);
        }

        v10 = [*(*(&v29 + 1) + 8 * i) key];
        [v4 addObject:v10];
      }

      v7 = [keys countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  allObjects = [v4 allObjects];
  v12 = [allObjects sortedArrayUsingSelector:"compare:"];

  v13 = [[NSMutableString alloc] initWithString:@"UserDefaultsBackup/"];
  container = [msgCopy container];
  v15 = container;
  if (container)
  {
    v16 = container;
  }

  else
  {
    v16 = &stru_10003DCC0;
  }

  domain = [msgCopy domain];
  [v13 appendFormat:@"%@|%@", v16, domain];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v25 + 1) + 8 * j);
        [v13 appendString:@"|"];
        [v13 appendString:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }

  return v13;
}

- (BOOL)doesCurrentDeviceSupportGroupedTwoWayKeys
{
  activeDevice = [(NPSDeviceRegistry *)self->_deviceRegistry activeDevice];
  v3 = [activeDevice supportsCapability:4108101681];

  return v3;
}

- (id)newDefaultsMsgWithDomain:(id)domain
{
  domainCopy = domain;
  v4 = objc_opt_new();
  [v4 setDomain:domainCopy];

  v5 = objc_opt_new();
  [v4 setKeys:v5];

  return v4;
}

- (void)sendSettingsInDomain:(id)domain keys:(id)keys cloudEnabled:(BOOL)enabled backupFile:(id)file allowedGroups:(id)groups
{
  enabledCopy = enabled;
  domainCopy = domain;
  keysCopy = keys;
  fileCopy = file;
  groupsCopy = groups;
  v12 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [keysCopy count];
    v15 = @"NO";
    *buf = 138543874;
    *&buf[4] = domainCopy;
    if (enabledCopy)
    {
      v15 = @"YES";
    }

    *&buf[12] = 2048;
    *&buf[14] = v14;
    *&buf[22] = 2114;
    v97 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Start sending settings in Domain: %{public}@ \t             Keys: %lu\t             cloudEnabled: %{public}@", buf, 0x20u);
  }

  allowedGroups = groupsCopy;
  v63 = allowedGroups;
  if (!allowedGroups)
  {
    allowedGroups = [(NPSServer *)self allowedGroups];
  }

  syncedUserDefaults = [(NPSSettings *)self->_settings syncedUserDefaults];
  v60 = [syncedUserDefaults objectForKeyedSubscript:domainCopy];

  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  v83 = 0u;
  obj = keysCopy;
  v59 = [obj countByEnumeratingWithState:&v83 objects:v100 count:16];
  if (v59)
  {
    v68 = 0;
    v69 = 0;
    v64 = 0;
    v58 = *v84;
    do
    {
      for (i = 0; i != v59; i = i + 1)
      {
        if (*v84 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v72 = *(*(&v83 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        if (!v68)
        {
          v68 = [(NPSServer *)self newDefaultsMsgWithDomain:domainCopy];
          v17 = objc_opt_new();

          v64 = v17;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v97 = sub_100006D10;
        v98 = sub_100006D20;
        keyArrays = [v60 keyArrays];
        v99 = [keyArrays objectForKeyedSubscript:v72];

        if (![*(*&buf[8] + 40) count])
        {
          keyPrefixArrays = [v60 keyPrefixArrays];
          v82[0] = _NSConcreteStackBlock;
          v82[1] = 3221225472;
          v82[2] = sub_100015D20;
          v82[3] = &unk_10003CF08;
          v82[4] = v72;
          v82[5] = buf;
          [keyPrefixArrays enumerateKeysAndObjectsUsingBlock:v82];
        }

        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v70 = *(*&buf[8] + 40);
        v20 = [v70 countByEnumeratingWithState:&v78 objects:v95 count:16];
        if (v20)
        {
          v74 = *v79;
          do
          {
            v75 = v20;
            for (j = 0; j != v75; j = j + 1)
            {
              if (*v79 != v74)
              {
                objc_enumerationMutation(v70);
              }

              v22 = *(*(&v78 + 1) + 8 * j);
              syncGroups = [v22 syncGroups];
              v24 = [NPSServer shouldAllowSyncOfItemWithSyncGroups:syncGroups allowedSyncGroups:allowedGroups];

              if (v24)
              {
                if ([v22 isPerGizmoSetting] && (objc_msgSend(v22, "isMirroring") & 1) == 0)
                {
                  v28 = [[NPSSettingAccessor alloc] initWithNanoDomain:domainCopy];
                }

                else
                {
                  v25 = [NPSSettingAccessor alloc];
                  container = [v22 container];
                  appGroupContainer = [v22 appGroupContainer];
                  v28 = [(NPSSettingAccessor *)v25 initWithUserDefaultsDomain:domainCopy container:container appGroupContainer:appGroupContainer];
                }

                if ([(NPSSettingAccessor *)v28 requiresDeviceUnlockedSinceBoot]&& (v30 = MKBDeviceUnlockedSinceBoot(), v30 <= 0))
                {
                  v41 = nps_daemon_log;
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                  {
                    container2 = [v22 container];
                    *v87 = 138544130;
                    v88 = container2;
                    v89 = 2114;
                    v90 = domainCopy;
                    v91 = 2114;
                    v92 = v72;
                    v93 = 1024;
                    v94 = v30;
                    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Requested to mirror containerized settings (%{public}@, %{public}@, %{public}@) before first unlock (%d); Stashing in database.", v87, 0x26u);
                  }

                  v43 = v69;
                  if (!v69)
                  {
                    v43 = objc_opt_new();
                  }

                  v69 = v43;
                  [v43 addObject:v72];
                }

                else if (![v22 twoWaySync] || -[NPSServer doesCurrentDeviceSupportGroupedTwoWayKeys](self, "doesCurrentDeviceSupportGroupedTwoWayKeys") || objc_msgSend(obj, "count") < 2)
                {
                  typeString = [(NPSSettingAccessor *)v28 typeString];
                  v34 = [domainCopy stringByAppendingFormat:@" | %@", typeString];

                  if ([(NPProgressTracker *)self->_syncProgressTracker canStartOperation:v34])
                  {
                    [(NPSSettingAccessor *)v28 synchronizeForReading];
                    if (![(NPSSettingAccessor *)v28 sizeSafeToLoadInMemory])
                    {
                      v35 = nps_daemon_log;
                      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_ERROR))
                      {
                        *v87 = 138543362;
                        v88 = domainCopy;
                        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "<%{public}@>Domain size not safe to load in memory. Trying to send it once.", v87, 0xCu);
                      }

                      [(NPProgressTracker *)self->_syncProgressTracker addToProblematicOperationSet:v34];
                    }

                    v77 = 0;
                    v36 = [(NPSSettingAccessor *)v28 serializedObjectForKey:v72 error:&v77];
                    v37 = v77;
                    if (v37)
                    {
                      v38 = nps_daemon_log;
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                      {
                        localizedDescription = [v37 localizedDescription];
                        *v87 = 138543874;
                        v88 = domainCopy;
                        v89 = 2114;
                        v90 = v72;
                        v91 = 2112;
                        v92 = localizedDescription;
                        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Failed to serialize value for <Domain: %{public}@; Key: %{public}@> (Error: %@)", v87, 0x20u);
                      }
                    }

                    else
                    {
                      +[NSDate timeIntervalSinceReferenceDate];
                      v38 = -[NPSServer getCachedTimeStampFor:key:usePerGizmoCache:](self, "getCachedTimeStampFor:key:usePerGizmoCache:", domainCopy, v72, [v22 isPerGizmoSetting]);
                      if (![v22 twoWaySync] || v38 || v36)
                      {
                        [v38 doubleValue];
                        v46 = v45;
                        [v68 setTimestamp:?];
                        v47 = objc_opt_new();
                        [v47 setKey:v72];
                        if ([v22 twoWaySync])
                        {
                          [v47 setTwoWaySync:1];
                          [v47 setTimestamp:v46];
                        }

                        [v47 setValue:v36];
                        keys = [v68 keys];
                        [keys addObject:v47];

                        [v64 addObject:v72];
                        data = [v68 data];
                        if ([data length] <= 0xC831)
                        {
                        }

                        else
                        {
                          keys2 = [v68 keys];
                          v51 = [keys2 count] == 0;

                          if (!v51)
                          {
                            v52 = nps_daemon_log;
                            if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                            {
                              *v87 = 0;
                              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Message size reached max allowed size. Sending current default message.", v87, 2u);
                            }

                            [(NPSServer *)self sendUserDefaultMsg:v68 forDomain:domainCopy includedKeys:v64 cloudEnabled:enabledCopy backupFile:fileCopy];

                            [v64 removeAllObjects];
                            v68 = 0;
                          }
                        }
                      }

                      else
                      {
                        v44 = nps_daemon_log;
                        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                        {
                          *v87 = 138543618;
                          v88 = domainCopy;
                          v89 = 2114;
                          v90 = v72;
                          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "No cached timestamp, and value is null. Not sending value for <Domain: %{public}@; Key: %{public}@>.", v87, 0x16u);
                        }
                      }
                    }
                  }

                  else
                  {
                    v40 = nps_daemon_log;
                    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_ERROR))
                    {
                      *v87 = 138412546;
                      v88 = domainCopy;
                      v89 = 2112;
                      v90 = v72;
                      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Skipping <%@; %@>.", v87, 0x16u);
                    }
                  }
                }

                else
                {
                  v31 = [NSSet setWithObject:v72];
                  [(NPSServer *)self sendSettingsInDomain:domainCopy keys:v31 cloudEnabled:enabledCopy backupFile:fileCopy allowedGroups:v63];

                  v32 = nps_daemon_log;
                  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
                  {
                    *v87 = 138543618;
                    v88 = domainCopy;
                    v89 = 2114;
                    v90 = v72;
                    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Sent <Domain: %{public}@; Key: %{public}@> as individual default sync message.", v87, 0x16u);
                  }
                }
              }

              else
              {
                v28 = nps_daemon_log;
                if (os_log_type_enabled(&v28->super, OS_LOG_TYPE_DEFAULT))
                {
                  syncGroups2 = [v22 syncGroups];
                  *v87 = 138543618;
                  v88 = syncGroups2;
                  v89 = 2114;
                  v90 = v72;
                  _os_log_impl(&_mh_execute_header, &v28->super, OS_LOG_TYPE_DEFAULT, "Not allowed to sync groups %{public}@. Skipping key %{public}@.", v87, 0x16u);
                }
              }
            }

            v20 = [v70 countByEnumeratingWithState:&v78 objects:v95 count:16];
          }

          while (v20);
        }

        _Block_object_dispose(buf, 8);
        objc_autoreleasePoolPop(context);
      }

      v59 = [obj countByEnumeratingWithState:&v83 objects:v100 count:16];
    }

    while (v59);
  }

  else
  {
    v68 = 0;
    v69 = 0;
    v64 = 0;
  }

  if ([v69 count])
  {
    [(NPSDatabase *)self->_database sentSettingsSyncMessage:0 forDomain:domainCopy keys:v69 cloudEnabled:enabledCopy];
  }

  keys3 = [v68 keys];
  v54 = [keys3 count] == 0;

  if (!v54)
  {
    [(NPSServer *)self sendUserDefaultMsg:v68 forDomain:domainCopy includedKeys:v64 cloudEnabled:enabledCopy backupFile:fileCopy];
  }

  v55 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v56 = v55;
    v57 = [obj count];
    *buf = 138543618;
    *&buf[4] = domainCopy;
    *&buf[12] = 2048;
    *&buf[14] = v57;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[STATS] Completed sending settings in <Domain: %{public}@; Keys: %lul>.", buf, 0x16u);
  }
}

- (void)sendPUDSettingsInDomain:(id)domain keys:(id)keys backupFile:(id)file allowedGroups:(id)groups
{
  domainCopy = domain;
  keysCopy = keys;
  fileCopy = file;
  groupsCopy = groups;
  v11 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    *buf = 138543874;
    *&buf[4] = domainCopy;
    *&buf[12] = 2048;
    *&buf[14] = [keysCopy count];
    *&buf[22] = 2112;
    v80 = groupsCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Start sending permitted defaults in Domain: %{public}@ \t            Keys: %lu\t AllowedGroups: %@", buf, 0x20u);
  }

  allowedGroups = groupsCopy;
  v55 = allowedGroups;
  if (!allowedGroups)
  {
    allowedGroups = [(NPSServer *)self allowedGroups];
  }

  permittedUserDefaults = [(NPSSettings *)self->_settings permittedUserDefaults];
  v65 = [permittedUserDefaults objectForKeyedSubscript:domainCopy];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = keysCopy;
  v62 = [obj countByEnumeratingWithState:&v69 objects:v83 count:16];
  if (!v62)
  {
    v60 = 0;
    v14 = 0;
    goto LABEL_59;
  }

  v14 = 0;
  v61 = *v70;
  v60 = 0;
  do
  {
    for (i = 0; i != v62; i = i + 1)
    {
      if (*v70 != v61)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v69 + 1) + 8 * i);
      v17 = objc_autoreleasePoolPush();
      if (!v14)
      {
        v14 = [(NPSServer *)self newDefaultsMsgWithDomain:domainCopy];
        v18 = objc_opt_new();

        v60 = v18;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v80 = sub_100006D10;
      v81 = sub_100006D20;
      keys = [v65 keys];
      v82 = [keys objectForKeyedSubscript:v16];

      v20 = *(*&buf[8] + 40);
      if (!v20)
      {
        keyPrefixes = [v65 keyPrefixes];
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = sub_1000168DC;
        v68[3] = &unk_10003CEE0;
        v68[4] = v16;
        v68[5] = buf;
        [keyPrefixes enumerateKeysAndObjectsUsingBlock:v68];

        v20 = *(*&buf[8] + 40);
      }

      syncGroups = [v20 syncGroups];
      v23 = [NPSServer shouldAllowSyncOfItemWithSyncGroups:syncGroups allowedSyncGroups:allowedGroups];

      if (v23)
      {
        if (![*(*&buf[8] + 40) twoWaySync] || -[NPSServer doesCurrentDeviceSupportGroupedTwoWayKeys](self, "doesCurrentDeviceSupportGroupedTwoWayKeys") || objc_msgSend(obj, "count") < 2)
        {
          if ([*(*&buf[8] + 40) isPerGizmoSetting])
          {
            v29 = [[NPSSettingAccessor alloc] initWithNanoDomain:domainCopy];
          }

          else
          {
            v30 = [NPSSettingAccessor alloc];
            container = [*(*&buf[8] + 40) container];
            appGroupContainer = [*(*&buf[8] + 40) appGroupContainer];
            v29 = [(NPSSettingAccessor *)v30 initWithUserDefaultsDomain:domainCopy container:container appGroupContainer:appGroupContainer];
          }

          typeString = [(NPSSettingAccessor *)v29 typeString];
          v34 = [domainCopy stringByAppendingFormat:@" | %@", typeString, v55];

          if (![(NPProgressTracker *)self->_syncProgressTracker canStartOperation:v34])
          {
            v39 = nps_daemon_log;
            if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_ERROR))
            {
              *v73 = 138412546;
              v74 = domainCopy;
              v75 = 2112;
              v76 = v16;
              _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Skipping <%@; %@>", v73, 0x16u);
            }

            goto LABEL_54;
          }

          [(NPSSettingAccessor *)v29 synchronizeForReading];
          if (![(NPSSettingAccessor *)v29 sizeSafeToLoadInMemory])
          {
            v35 = nps_daemon_log;
            if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_ERROR))
            {
              *v73 = 138543362;
              v74 = domainCopy;
              _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "<%{public}@>Domain size not safe to load in memory. Trying to load it once.", v73, 0xCu);
            }

            [(NPProgressTracker *)self->_syncProgressTracker addToProblematicOperationSet:v34];
          }

          v67 = 0;
          v36 = [(NPSSettingAccessor *)v29 serializedObjectForKey:v16 error:&v67];
          v58 = v67;
          if (v58)
          {
            v37 = nps_daemon_log;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              localizedDescription = [v58 localizedDescription];
              *v73 = 138543874;
              v74 = domainCopy;
              v75 = 2114;
              v76 = v16;
              v77 = 2112;
              v78 = localizedDescription;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Failed to serialize value for <Domain: %{public}@; Key: %{public}@> (Error: %@)", v73, 0x20u);
            }

            goto LABEL_53;
          }

          +[NSDate timeIntervalSinceReferenceDate];
          v37 = -[NPSServer getCachedTimeStampFor:key:usePerGizmoCache:](self, "getCachedTimeStampFor:key:usePerGizmoCache:", domainCopy, v16, [*(*&buf[8] + 40) isPerGizmoSetting]);
          if ([*(*&buf[8] + 40) twoWaySync] && !v37 && !v36)
          {
            v40 = nps_daemon_log;
            if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
            {
              *v73 = 138543618;
              v74 = domainCopy;
              v75 = 2114;
              v76 = v16;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "No cached timestamp, and value is null. Not sending value for <Domain: %{public}@; Key: %{public}@>.", v73, 0x16u);
            }

LABEL_53:

LABEL_54:
            goto LABEL_55;
          }

          [v37 doubleValue];
          v42 = v41;
          [v14 setTimestamp:?];
          v43 = objc_opt_new();
          [v43 setKey:v16];
          if ([*(*&buf[8] + 40) twoWaySync])
          {
            [v43 setTwoWaySync:1];
            [v43 setTimestamp:v42];
          }

          [v43 setValue:v36];
          keys2 = [v14 keys];
          [keys2 addObject:v43];
          v57 = v43;

          [v60 addObject:v16];
          data = [v14 data];
          if ([data length] <= 0xC831)
          {
          }

          else
          {
            keys3 = [v14 keys];
            v47 = [keys3 count] == 0;

            if (!v47)
            {
              v48 = nps_daemon_log;
              if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
              {
                *v73 = 0;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Message size reached max allowed size. Sending current default message.", v73, 2u);
              }

              [(NPSServer *)self sendUserDefaultMsg:v14 forDomain:domainCopy includedKeys:v60 cloudEnabled:0 backupFile:fileCopy];

              [v60 removeAllObjects];
              v49 = v57;
              v14 = 0;
              goto LABEL_52;
            }
          }

          v49 = v57;
LABEL_52:

          goto LABEL_53;
        }

        v24 = [NSSet setWithObject:v16];
        [(NPSServer *)self sendPUDSettingsInDomain:domainCopy keys:v24 backupFile:fileCopy allowedGroups:allowedGroups];

        v25 = nps_daemon_log;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *v73 = 138543618;
          v74 = domainCopy;
          v75 = 2114;
          v76 = v16;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Sent <Domain: %{public}@; Key: %{public}@> as individual default sync message.", v73, 0x16u);
        }
      }

      else
      {
        v26 = nps_daemon_log;
        if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *v73 = 138412290;
          v74 = v16;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Key: %@ not allowed, not syncing/backing up", v73, 0xCu);
        }

        v27 = nps_daemon_log;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          syncGroups2 = [*(*&buf[8] + 40) syncGroups];
          *v73 = 138412546;
          v74 = syncGroups2;
          v75 = 2112;
          v76 = allowedGroups;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Groups: %@, allowed groups: %@", v73, 0x16u);
        }
      }

LABEL_55:
      _Block_object_dispose(buf, 8);

      objc_autoreleasePoolPop(v17);
    }

    v62 = [obj countByEnumeratingWithState:&v69 objects:v83 count:16];
  }

  while (v62);
LABEL_59:

  keys4 = [v14 keys];
  v51 = [keys4 count] == 0;

  if (!v51)
  {
    [(NPSServer *)self sendUserDefaultMsg:v14 forDomain:domainCopy includedKeys:v60 cloudEnabled:0 backupFile:fileCopy];
  }

  v52 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v53 = v52;
    v54 = [obj count];
    *buf = 138543618;
    *&buf[4] = domainCopy;
    *&buf[12] = 2048;
    *&buf[14] = v54;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[STATS] Completed sending settings in <Domain: %{public}@; Keys: %lul>.", buf, 0x16u);
  }
}

- (void)applyStashedSettingsSyncMessages
{
  v3 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[NPSServer applyStashedSettingsSyncMessages]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  database = self->_database;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100016A68;
  v5[3] = &unk_10003D0A0;
  v5[4] = self;
  [(NPSDatabase *)database getStashedSettingsSyncDataWithHandler:v5];
  [(NPSDatabase *)self->_database flushStashedSettingsSyncData];
}

+ (id)managedConfigurationSettings
{
  if (qword_1000456F0 != -1)
  {
    sub_100026B90();
  }

  v3 = qword_1000456E8;

  return v3;
}

+ (BOOL)isManagedConfigurationSettingPermittedForKind:(id)kind feature:(id)feature
{
  featureCopy = feature;
  kindCopy = kind;
  managedConfigurationSettings = [self managedConfigurationSettings];
  v9 = [managedConfigurationSettings objectForKeyedSubscript:kindCopy];

  LOBYTE(kindCopy) = [v9 containsObject:featureCopy];
  return kindCopy;
}

- (void)handleAppChangedRestrictions
{
  v3 = objc_opt_new();
  v2 = [NSSet setWithObjects:@"SBParentalControlsCapabilities", @"SBParentalControlsEnabled", 0];
  [v3 synchronizeUserDefaultsDomain:@"com.apple.springboard" keys:v2 cloudEnabled:1];
}

- (void)debounceOnWorkerQueueWithblock:(id)withblock
{
  withblockCopy = withblock;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000172E0;
  v7[3] = &unk_10003D110;
  v7[4] = self;
  v8 = withblockCopy;
  v6 = withblockCopy;
  dispatch_async(workQueue, v7);
}

- (void)handleManagedConfigurationChangedNotification
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000177A8;
  v2[3] = &unk_10003CBA8;
  v2[4] = self;
  [(NPSServer *)self debounceOnWorkerQueueWithblock:v2];
}

+ (id)managedConfigurationData
{
  managedConfigurationSettings = [objc_opt_class() managedConfigurationSettings];
  v3 = +[MCProfileConnection sharedConnection];
  userSettings = [v3 userSettings];
  [v3 effectiveRestrictions];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100017954;
  v11[3] = &unk_10003D138;
  v13 = v12 = userSettings;
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v5 = v15;
  v6 = v14;
  v7 = v13;
  v8 = userSettings;
  [managedConfigurationSettings enumerateKeysAndObjectsUsingBlock:v11];
  v16[0] = v6;
  v16[1] = v5;
  v9 = [NSArray arrayWithObjects:v16 count:2];

  return v9;
}

- (id)sendManagedConfigurationSettings:(id)settings isInitialSync:(BOOL)sync
{
  settingsCopy = settings;
  if ([settingsCopy count])
  {
    v6 = [settingsCopy objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  if ([settingsCopy count] < 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = [settingsCopy objectAtIndexedSubscript:1];
  }

  v8 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending MC user settings:", buf, 2u);
  }

  [objc_opt_class() logManagedConfigurationDictionary:v6];
  v9 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending MC restrictions:", buf, 2u);
  }

  [objc_opt_class() logManagedConfigurationDictionary:v7];
  v10 = objc_opt_new();
  v19 = 0;
  v11 = [NPSSettingAccessor serializeObject:settingsCopy error:&v19];
  v12 = v19;
  [v10 setUserSettingsAndRestrictions:v11];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    data = [v10 data];
    v18 = 0;
    v15 = [(NPSServer *)self sendMessageData:data messageType:1 queueOneIdentifier:@"ManagedConfiguration/" identifier:&v18 cloudEnabled:0];
    v16 = v18;
    -[NPSServer registerInitialSyncMessage:ofSize:orReportInitialSyncFailureWithError:](self, "registerInitialSyncMessage:ofSize:orReportInitialSyncFailureWithError:", v16, [data length], v15);

    v13 = v15;
  }

  return v13;
}

+ (id)queueOneIdentifierForManagedConfigurationMsg:(id)msg
{
  msgCopy = msg;
  v4 = [[NSMutableString alloc] initWithString:@"ManagedConfiguration/"];
  kind = [msgCopy kind];
  feature = [msgCopy feature];

  [v4 appendFormat:@"%@|%@", kind, feature];

  return v4;
}

- (BOOL)retryFileBackupRestoreForFilePath:(id)path
{
  pathCopy = path;
  v5 = [NSURL fileURLWithPath:pathCopy isDirectory:0];
  fileBackupManager = [(NPSServer *)self fileBackupManager];
  v7 = [fileBackupManager localFileURLForOriginalFileURL:v5];

  if (v7)
  {
    v8 = [(NPSServer *)self restoreFileBackupForLocalFileURL:v7 originalFileURL:v5 isInitialSync:0];
    v9 = v8 == 0;
  }

  else
  {
    v10 = nps_daemon_log;
    v9 = 0;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = pathCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "File Backup manager did not have an entry for original file path (%@)", &v12, 0xCu);
      v9 = 0;
    }
  }

  return v9;
}

+ (id)queueOneIdentifierForFileBackupMsg:(id)msg
{
  msgCopy = msg;
  v4 = [[NSMutableString alloc] initWithString:@"FileBackup/"];
  path = [msgCopy path];

  [v4 appendString:path];

  return v4;
}

- (void)synchronizeUserDefaultsDomain:(id)domain keys:(id)keys container:(id)container appGroupContainer:(id)groupContainer cloudEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  domainCopy = domain;
  keysCopy = keys;
  containerCopy = container;
  groupContainerCopy = groupContainer;
  v16 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    *&buf[4] = "[NPSServer synchronizeUserDefaultsDomain:keys:container:appGroupContainer:cloudEnabled:]";
    *&buf[12] = 2112;
    *&buf[14] = domainCopy;
    *&buf[22] = 2112;
    v34 = keysCopy;
    *v35 = 2112;
    *&v35[2] = containerCopy;
    *&v35[10] = 2112;
    *&v35[12] = groupContainerCopy;
    v36 = 1024;
    v37 = enabledCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: domain: (%@); keys: (%@); container: (%@); appGroupContainer: (%@); cloudEnabled: (%d)", buf, 0x3Au);
  }

  if (domainCopy && [keysCopy count])
  {
    if (containerCopy || !groupContainerCopy)
    {
      v22 = [[NPSSettingAccessor alloc] initWithUserDefaultsDomain:domainCopy container:containerCopy appGroupContainer:groupContainerCopy];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v34 = sub_100006D10;
      *v35 = sub_100006D20;
      *&v35[8] = os_transaction_create();
      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000185DC;
      block[3] = &unk_10003D160;
      v26 = v22;
      v27 = containerCopy;
      v28 = domainCopy;
      v29 = keysCopy;
      selfCopy = self;
      v32 = enabledCopy;
      v31 = buf;
      v24 = v22;
      dispatch_async(workQueue, block);

      _Block_object_dispose(buf, 8);
      goto LABEL_13;
    }

    v17 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = groupContainerCopy;
      *&buf[12] = 2112;
      *&buf[14] = domainCopy;
      *&buf[22] = 2112;
      v34 = keysCopy;
      v18 = "Container should not be nil when specifing an app group container (%@) for domain (%@) and keys (%@).";
      v19 = v17;
      v20 = 32;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    }
  }

  else
  {
    v21 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = domainCopy;
      *&buf[12] = 2112;
      *&buf[14] = keysCopy;
      v18 = "Domain (%@) should not be nil, and keys (%@) should not be nil or empty.";
      v19 = v21;
      v20 = 22;
      goto LABEL_11;
    }
  }

LABEL_13:
}

- (void)synchronizeNanoDomain:(id)domain keys:(id)keys cloudEnabled:(BOOL)enabled
{
  domainCopy = domain;
  keysCopy = keys;
  v10 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[NPSServer synchronizeNanoDomain:keys:cloudEnabled:]";
    *&buf[12] = 2112;
    *&buf[14] = domainCopy;
    *&buf[22] = 2112;
    v19 = keysCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: domain: (%@); keys: (%@)", buf, 0x20u);
  }

  if (domainCopy && [keysCopy count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = sub_100006D10;
    v20 = sub_100006D20;
    v21 = os_transaction_create();
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000189CC;
    block[3] = &unk_10003D188;
    block[4] = self;
    v14 = domainCopy;
    enabledCopy = enabled;
    v15 = keysCopy;
    v16 = buf;
    dispatch_async(workQueue, block);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v12 = nps_daemon_log;
    if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = domainCopy;
      *&buf[12] = 2112;
      *&buf[14] = keysCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Domain (%@) should not be nil, and keys (%@) should not be nil or empty.", buf, 0x16u);
    }
  }
}

+ (void)setLaunchNotification:(id)notification enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  notificationCopy = notification;
  if (enabledCopy)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v6, "Notification", [notificationCopy UTF8String]);
  }

  else
  {
    v6 = 0;
  }

  v7 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"disabling";
    if (enabledCopy)
    {
      v8 = @"enabling";
    }

    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setLaunchNotification: %@ launch notification %@", &v9, 0x16u);
  }

  [notificationCopy UTF8String];
  xpc_set_event();
}

- (id)dumpDomain:(id)domain
{
  domainCopy = domain;
  if (MGGetBoolAnswer())
  {
    v4 = 1;
  }

  else
  {
    v4 = MGGetBoolAnswer();
  }

  domainCopy = [NSMutableString stringWithFormat:@"Domain <%@>", domainCopy];
  settings = [(NPSServer *)self settings];
  syncedUserDefaults = [settings syncedUserDefaults];
  v8 = [syncedUserDefaults objectForKeyedSubscript:domainCopy];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v29 = v8;
  keyArrays = [v8 keyArrays];
  allValues = [keyArrays allValues];

  obj = allValues;
  v32 = [allValues countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v32)
  {
    v31 = *v40;
    do
    {
      v11 = 0;
      do
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v11;
        v12 = *(*(&v39 + 1) + 8 * v11);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v36;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v36 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v35 + 1) + 8 * i);
              if ([v18 isPerGizmoSetting] && (objc_msgSend(v18, "isMirroring") & 1) == 0)
              {
                v22 = [[NPSSettingAccessor alloc] initWithNanoDomain:domainCopy];
              }

              else
              {
                v19 = [NPSSettingAccessor alloc];
                container = [v18 container];
                appGroupContainer = [v18 appGroupContainer];
                v22 = [(NPSSettingAccessor *)v19 initWithUserDefaultsDomain:domainCopy container:container appGroupContainer:appGroupContainer];
              }

              v23 = [v18 key];
              v24 = [(NPSSettingAccessor *)v22 objectForKey:v23];

              v25 = [v18 key];
              v26 = v25;
              v27 = @"YES";
              if (!v24)
              {
                v27 = @"NO";
              }

              if (v4)
              {
                v27 = v24;
              }

              [domainCopy appendFormat:@"<key: %@; Value: %@>", v25, v27];
            }

            v15 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v15);
        }

        v11 = v33 + 1;
      }

      while ((v33 + 1) != v32);
      v32 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v32);
  }

  return domainCopy;
}

@end