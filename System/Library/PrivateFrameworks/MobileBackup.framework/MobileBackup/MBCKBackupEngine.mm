@interface MBCKBackupEngine
+ (BOOL)_shouldRemoveSnapshotAfterError:(id)error;
+ (BOOL)_startOTABackupWithAccount:(id)account error:(id *)error;
+ (BOOL)_stopOTABackupWithAccount:(id)account error:(id *)error;
- (BOOL)_handleSkippedFilesWithError:(id *)error;
- (BOOL)_notifyPluginsOfBackupEnded:(id)ended error:(id *)error;
- (BOOL)_shouldBackupUsingFSEvents;
- (BOOL)_shouldSimulateCancelationForState:(id)state;
- (BOOL)_verifySnapshotWithError:(id *)error;
- (BOOL)cancelWithError:(id)error;
- (BOOL)checkIfBackupHasKeybagWithUUID:(id)d;
- (BOOL)commitSnapshotWithError:(id *)error;
- (BOOL)createVolumeSnapshots:(id *)snapshots;
- (BOOL)fileScanner:(id)scanner isFileAddedOrModified:(id)modified;
- (BOOL)findChangesWithError:(id *)error;
- (BOOL)finishBackupWithError:(id *)error;
- (BOOL)prepareToUploadChangesWithError:(id *)error;
- (BOOL)reserveQuotaWithError:(id *)error;
- (BOOL)runWithError:(id *)error;
- (BOOL)setUpWithError:(id *)error;
- (BOOL)shouldCancelTranscription;
- (BOOL)shouldCancelVerification;
- (BOOL)synchronizeFileListsWithError:(id *)error;
- (BOOL)uploadAssetsWithError:(id *)error;
- (BOOL)uploadChangesWithError:(id *)error;
- (BOOL)uploadDomainRecords:(id *)records;
- (MBCKBackupEngine)initWithReason:(int64_t)reason settingsContext:(id)context debugContext:(id)debugContext serviceManager:(id)manager;
- (MBCKBackupEngine)initWithReason:(int64_t)reason settingsContext:(id)context debugContext:(id)debugContext serviceManager:(id)manager domainManager:(id)domainManager;
- (NSString)description;
- (NSString)pendingSnapshotID;
- (id)_createDomainTranscriberForAPFSSnapshots:(id)snapshots error:(id *)error;
- (id)_fetchPreviousBackupFSEventState;
- (id)fileScanner:(id)scanner didFindFile:(id)file;
- (id)powerAssertionName;
- (int64_t)_snapshotFormatForAccount:(id)account previousSnapshot:(id)snapshot error:(id *)error;
- (void)_finishCollectingTelemetry;
- (void)_handleStateTransition;
- (void)_releaseLockAssertion;
- (void)_saveLastPendingSnapshotSize:(unint64_t)size;
- (void)_saveNextBackupFSEventState;
- (void)_sendTelemetryForStateChange:(unint64_t)change start:(id)start end:(id)end;
- (void)_tearDown;
- (void)cleanUpAfterError:(id)error;
- (void)dealloc;
- (void)makeStateTransition;
- (void)resumeWatchdogIfNeeded;
- (void)setBackupState:(unint64_t)state;
- (void)syncCompletedWithErrors:(id)errors;
- (void)syncProgress:(double)progress;
@end

@implementation MBCKBackupEngine

- (MBCKBackupEngine)initWithReason:(int64_t)reason settingsContext:(id)context debugContext:(id)debugContext serviceManager:(id)manager domainManager:(id)domainManager
{
  contextCopy = context;
  debugContextCopy = debugContext;
  managerCopy = manager;
  domainManagerCopy = domainManager;
  account = [contextCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKBackupEngine initWithReason:settingsContext:debugContext:serviceManager:domainManager:]", "MBCKBackupEngine.m", 120, "account");
  }

  v17 = account;
  v29.receiver = self;
  v29.super_class = MBCKBackupEngine;
  v18 = [(MBCKEngine *)&v29 initWithSettingsContext:contextCopy debugContext:debugContextCopy domainManager:domainManagerCopy];
  v19 = v18;
  if (v18)
  {
    [(MBCKEngine *)v18 setServiceManager:managerCopy];
    [(MBCKBackupEngine *)v19 setBackupState:1];
    v19->_backupReason = reason;
    v20 = objc_alloc_init(MBCKProperties);
    [(MBCKEngine *)v19 setProperties:v20];

    v19->_lockAssertionRef = 0;
    v21 = objc_opt_new();
    [(MBCKBackupEngine *)v19 setEstimator:v21];

    v22 = [[MBBackupLifecyclePluginNotifier alloc] initWithEngine:v19];
    pluginNotifier = v19->_pluginNotifier;
    v19->_pluginNotifier = v22;

    v24 = objc_opt_new();
    attemptSummary = v19->_attemptSummary;
    v19->_attemptSummary = v24;

    v26 = objc_opt_new();
    telemetry = v19->_telemetry;
    v19->_telemetry = v26;
  }

  return v19;
}

- (MBCKBackupEngine)initWithReason:(int64_t)reason settingsContext:(id)context debugContext:(id)debugContext serviceManager:(id)manager
{
  contextCopy = context;
  debugContextCopy = debugContext;
  managerCopy = manager;
  account = [contextCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKBackupEngine initWithReason:settingsContext:debugContext:serviceManager:]", "MBCKBackupEngine.m", 141, "account");
  }

  v14 = account;
  v15 = [MBDomainManager alloc];
  persona = [v14 persona];
  v17 = [(MBDomainManager *)v15 initWithPersona:persona];

  v18 = [(MBCKBackupEngine *)self initWithReason:reason settingsContext:contextCopy debugContext:debugContextCopy serviceManager:managerCopy domainManager:v17];
  return v18;
}

- (void)dealloc
{
  [(MBCKBackupEngine *)self _releaseLockAssertion];
  [(MBCKBackupEngine *)self _unmountSnapshotsAndRemoveThem:1];
  pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];
  [pendingSnapshotDB close:0];

  v4.receiver = self;
  v4.super_class = MBCKBackupEngine;
  [(MBCKEngine *)&v4 dealloc];
}

- (void)_releaseLockAssertion
{
  lockAssertionRef = self->_lockAssertionRef;
  self->_lockAssertionRef = 0;
  if (lockAssertionRef)
  {
    [MBKeyBag releaseLockAssertion:?];
  }
}

- (void)setBackupState:(unint64_t)state
{
  self->_backupState = state;
  v4 = MBCKStringForBackupState();
  backupStateDescription = self->_backupStateDescription;
  self->_backupStateDescription = v4;

  _objc_release_x1();
}

- (id)powerAssertionName
{
  backupReason = self->_backupReason;
  if (MBBackupReasonIsManual())
  {
    return @"backup-manual";
  }

  v5 = self->_backupReason;
  if (MBBackupReasonIsScheduled())
  {
    return @"backup-scheduled";
  }

  else
  {
    return @"backup";
  }
}

- (BOOL)cancelWithError:(id)error
{
  v7.receiver = self;
  v7.super_class = MBCKBackupEngine;
  v4 = [(MBCKEngine *)&v7 cancelWithError:error];
  if (!v4)
  {
    cacheDeleteRequest = [(MBCKBackupEngine *)self cacheDeleteRequest];
    [cacheDeleteRequest cancel];
  }

  return v4;
}

+ (BOOL)_shouldRemoveSnapshotAfterError:(id)error
{
  if (!MBIsInternalInstall())
  {
    return 1;
  }

  v4 = +[MBBehaviorOptions sharedOptions];
  v5 = v4;
  if (error)
  {
    shouldKeepFileSystemSnapshotAfterBackupFailure = [v4 shouldKeepFileSystemSnapshotAfterBackupFailure];
  }

  else
  {
    shouldKeepFileSystemSnapshotAfterBackupFailure = [v4 shouldKeepFileSystemSnapshotAfterBackupSuccess];
  }

  v7 = shouldKeepFileSystemSnapshotAfterBackupFailure ^ 1;

  return v7;
}

- (void)cleanUpAfterError:(id)error
{
  errorCopy = error;
  if ([MBError isCKError:errorCopy withCode:25])
  {
    device = [(MBCKEngine *)self device];
    ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
    persona = [(MBCKEngine *)self persona];
    MBResetPendingSnapshot(device, ckOperationTracker, persona);
  }

  ckOperationTracker2 = [(MBCKEngine *)self ckOperationTracker];
  [ckOperationTracker2 drain];

  -[MBCKBackupEngine _unmountSnapshotsAndRemoveThem:](self, "_unmountSnapshotsAndRemoveThem:", [objc_opt_class() _shouldRemoveSnapshotAfterError:errorCopy]);
  v9 = self->_currentSnapshot;
  if ([(MBCKBackupEngine *)self backupState]== 3)
  {
    v10 = [MBError isResumableCacheRefreshError:errorCopy];
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if ((v10 & 1) == 0)
  {
    cache = [(MBCKEngine *)self cache];
    v12 = [cache removeAllOrphanedItemsForSnapshot:v9];

    if (v12)
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to remove orphaned items for snapshot: %@", buf, 0xCu);
        v14 = v12;
        _MBLog();
      }
    }
  }

LABEL_13:
  v15.receiver = self;
  v15.super_class = MBCKBackupEngine;
  [(MBCKEngine *)&v15 cleanUpAfterError:errorCopy, v14];
}

- (BOOL)runWithError:(id *)error
{
  if ([(MBEngine *)self backupPolicy]== 1)
  {
    v5 = objc_opt_new();
    [v5 setDelegate:self];
    [v5 startSync];
  }

  else
  {
    v5 = 0;
  }

  [(MBCKBackupEngine *)self makeStateTransition];
  isCanceled = [(MBEngine *)self isCanceled];
  if (v5 && isCanceled)
  {
    [v5 cancelSync];
  }

  [(MBCKBackupEngine *)self _tearDown];
  hasError = [(MBCKEngine *)self hasError];
  if (hasError)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      engineError = [(MBCKEngine *)self engineError];
      v10 = [MBError loggableDescriptionForError:engineError];
      engineError2 = [(MBCKEngine *)self engineError];
      *buf = 138543618;
      v25 = v10;
      v26 = 2112;
      v27 = engineError2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=cloud-backup= Backup failed: %{public}@, %@", buf, 0x16u);

      engineError3 = [(MBCKEngine *)self engineError];
      v13 = [MBError loggableDescriptionForError:engineError3];
      [(MBCKEngine *)self engineError];
      v23 = v22 = v13;
      _MBLog();
    }

    engineError4 = [(MBCKEngine *)self engineError];
    v15 = engineError4;
    if (error)
    {
      v16 = engineError4;
      *error = v15;
    }

    v17 = [(MBCKEngine *)self persona:v22];
    volumeMountPoint = [v17 volumeMountPoint];
    v19 = [NSNumber numberWithUnsignedLongLong:MBFreeDiskSpaceForVolume()];
    telemetry = [(MBCKBackupEngine *)self telemetry];
    [telemetry setFreeDiskSpace:v19];
  }

  return hasError ^ 1;
}

- (void)_tearDown
{
  pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];

  if (pendingSnapshotDB)
  {
    pendingSnapshotDB2 = [(MBCKBackupEngine *)self pendingSnapshotDB];
    v8 = 0;
    [pendingSnapshotDB2 close:&v8];
    v5 = v8;

    if (v5)
    {
      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "=cloud-backup= Error closing pending snapshot database: %@", buf, 0xCu);
        v7 = v5;
        _MBLog();
      }
    }

    [(MBCKBackupEngine *)self setPendingSnapshotDB:0, v7];
  }
}

- (void)_handleStateTransition
{
  v3 = +[NSDate date];
  cache = [(MBCKEngine *)self cache];
  [cache beginBatch];

  switch([(MBCKBackupEngine *)self backupState])
  {
    case 1uLL:
      [(MBCKBackupEngine *)self setBackupState:2];
      multistateRetryStrategy = [(MBCKEngine *)self multistateRetryStrategy];
      [multistateRetryStrategy reset];

      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10006D188;
      v39[3] = &unk_1003BC400;
      v39[4] = self;
      v6 = v39;
      goto LABEL_19;
    case 2uLL:
      [(MBCKBackupEngine *)self setBackupState:3];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10006D1F0;
      v38[3] = &unk_1003BC400;
      v38[4] = self;
      v6 = v38;
      goto LABEL_19;
    case 3uLL:
      [(MBCKBackupEngine *)self setBackupState:12];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10006D25C;
      v37[3] = &unk_1003BC400;
      v37[4] = self;
      v6 = v37;
      goto LABEL_19;
    case 4uLL:
      [(MBCKBackupEngine *)self setBackupState:10];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10006D398;
      v34[3] = &unk_1003BC400;
      v34[4] = self;
      v6 = v34;
      goto LABEL_19;
    case 5uLL:
      [(MBCKBackupEngine *)self setBackupState:13];
      telemetry = [(MBCKBackupEngine *)self telemetry];
      [telemetry _startCollectingWiFiQualityMeasurements];

      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10006D464;
      v32[3] = &unk_1003BC400;
      v32[4] = self;
      v6 = v32;
      goto LABEL_19;
    case 6uLL:
      [(MBCKBackupEngine *)self setBackupState:11];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10006D47C;
      v30[3] = &unk_1003BC400;
      v30[4] = self;
      v6 = v30;
      goto LABEL_19;
    case 7uLL:
      [(MBCKBackupEngine *)self setBackupState:8];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10006D550;
      v28[3] = &unk_1003BC400;
      v28[4] = self;
      [(MBCKEngine *)self performRetryablePhase:v28];
      if ([(MBCKEngine *)self isFinished])
      {
        engineError = [(MBCKEngine *)self engineError];
        v10 = [MBError isCancelledError:engineError];

        if (v10)
        {
LABEL_11:
          [(MBCKEngine *)self setEngineError:0];
        }
      }

      else
      {
        [(MBCKEngine *)self setIsFinished:1];
        [(MBCKEngine *)self setEngineError:0];
        [(MBCKBackupEngine *)self setEstimator:0];
        telemetry2 = MBGetDefaultLog();
        if (os_log_type_enabled(telemetry2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, telemetry2, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Backup finished successfully", buf, 2u);
          _MBLog();
        }

LABEL_6:
      }

LABEL_20:
      backupReason = self->_backupReason;
      if (MBBackupReasonIsScheduled())
      {
        engineError2 = [(MBCKEngine *)self engineError];
        v13 = [MBError isXPCActivityDeferredError:engineError2];

        if (v13)
        {
          engineError3 = [(MBCKEngine *)self engineError];
          v15 = [MBError errorWithCode:223 error:engineError3 format:@"Backup canceled (deferred)"];
          [(MBCKEngine *)self setEngineError:v15];
        }
      }

      [(MBCKBackupEngine *)self backupState];
      v16 = MBCKStringForBackupState();
      if ([(MBCKBackupEngine *)self _shouldSimulateCancelationForState:v16])
      {
        v17 = [MBError errorWithCode:202 format:@"Backup canceled (simulated for %@)", v16];
        [(MBCKEngine *)self setEngineError:v17];

        [(MBCKEngine *)self setIsFinished:1];
      }

      v18 = +[NSDate date];
      [v18 timeIntervalSinceDate:v3];
      v20 = v19;
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v41 = v16;
        v42 = 2048;
        v43 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=cloud-backup= %{public}@ done in %.3fs", buf, 0x16u);
        v27 = v20;
        v26 = v16;
        _MBLog();
      }

      attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
      [attemptSummary trackDuration:v16 forEngineState:v20];

      [(MBCKBackupEngine *)self _sendTelemetryForStateChange:[(MBCKBackupEngine *)self backupState] start:v3 end:v18];
      if ([(MBCKEngine *)self isFinished])
      {
        if ([(MBCKBackupEngine *)self backupState]>= 3 && [(MBCKBackupEngine *)self backupState]!= 8)
        {
          engineError4 = [(MBCKEngine *)self engineError];
          [(MBCKBackupEngine *)self _notifyPluginsOfBackupEnded:engineError4 error:0];
        }

        [(MBCKBackupEngine *)self _finishCollectingTelemetry:v26];
        progressModel = [(MBCKEngine *)self progressModel];
        [progressModel ended];
      }

      cache2 = [(MBCKEngine *)self cache];
      [cache2 flush];

      return;
    case 8uLL:
      [(MBCKEngine *)self setIsFinished:1];
      goto LABEL_11;
    case 9uLL:
      [(MBCKBackupEngine *)self setBackupState:4];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10006D330;
      v35[3] = &unk_1003BC400;
      v35[4] = self;
      v6 = v35;
      goto LABEL_19;
    case 0xAuLL:
      [(MBCKBackupEngine *)self setBackupState:5];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10006D3FC;
      v33[3] = &unk_1003BC400;
      v33[4] = self;
      v6 = v33;
      goto LABEL_19;
    case 0xBuLL:
      [(MBCKBackupEngine *)self setBackupState:7];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10006D4E8;
      v29[3] = &unk_1003BC400;
      v29[4] = self;
      v6 = v29;
      goto LABEL_19;
    case 0xCuLL:
      [(MBCKBackupEngine *)self setBackupState:9];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10006D2C8;
      v36[3] = &unk_1003BC400;
      v36[4] = self;
      v6 = v36;
LABEL_19:
      [(MBCKEngine *)self performRetryablePhase:v6];
      goto LABEL_20;
    case 0xDuLL:
      [(MBCKBackupEngine *)self setBackupState:6];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10006D470;
      v31[3] = &unk_1003BC400;
      v31[4] = self;
      [(MBCKEngine *)self performRetryablePhase:v31];
      telemetry2 = [(MBCKBackupEngine *)self telemetry];
      [telemetry2 _stopCollectingWiFiQualityMeasurements];
      goto LABEL_6;
    default:
      __assert_rtn("[MBCKBackupEngine _handleStateTransition]", "MBCKBackupEngine.m", 277, "0");
  }
}

- (BOOL)_shouldSimulateCancelationForState:(id)state
{
  stateCopy = state;
  if (MBIsInternalInstall() && ![(MBCKEngine *)self isFinished])
  {
    v6 = +[MBBehaviorOptions sharedOptions];
    engineStateToCancelBackupAfter = [v6 engineStateToCancelBackupAfter];
    v5 = [engineStateToCancelBackupAfter isEqualToString:stateCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)makeStateTransition
{
  v3 = objc_autoreleasePoolPush();
  [(MBCKBackupEngine *)self _handleStateTransition];
  objc_autoreleasePoolPop(v3);
  v4.receiver = self;
  v4.super_class = MBCKBackupEngine;
  [(MBCKEngine *)&v4 makeStateTransition];
}

- (int64_t)_snapshotFormatForAccount:(id)account previousSnapshot:(id)snapshot error:(id *)error
{
  accountCopy = account;
  snapshotCopy = snapshot;
  if ([(MBCKBackupEngine *)self backupState]!= 2)
  {
    __assert_rtn("[MBCKBackupEngine _snapshotFormatForAccount:previousSnapshot:error:]", "MBCKBackupEngine.m", 463, "self.backupState == kMBCKBackupStateSetup");
  }

  v10 = [MBBackupCloudFormatPolicy snapshotFormatForAccount:accountCopy previousSnapshot:snapshotCopy error:error];

  return v10;
}

- (BOOL)setUpWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 474, "error");
  }

  serviceManager = [(MBCKEngine *)self serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 476, "serviceManager");
  }

  v6 = serviceManager;
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 478, "serviceAccount");
  }

  v8 = serviceAccount;
  domainManager = [(MBEngine *)self domainManager];

  if (domainManager)
  {
    v209 = 0;
    persona = [(MBCKEngine *)self persona];
    v11 = [persona getBooleanValueForKey:@"HasDeferredDiscountingQuota" keyExists:&v209];

    if (v209 && v11)
    {
      v208 = 0;
      v12 = [v6 discountCameraRollQuotaWithAccount:v8 connection:0 error:&v208];
      v13 = v208;
      if ((v12 & 1) == 0)
      {
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v211 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to discount camera roll quota: %@", buf, 0xCu);
          v177 = v13;
          _MBLog();
        }
      }
    }

    cacheDeleteRequest = [(MBCKBackupEngine *)self cacheDeleteRequest];
    if (cacheDeleteRequest)
    {
      [(MBCKBackupEngine *)self setCacheDeleteRequest:cacheDeleteRequest];
    }

    else
    {
      v19 = [MBCacheDeleteRequest purgeRequestForCloudBackupReason:self->_backupReason];
      [(MBCKBackupEngine *)self setCacheDeleteRequest:v19];
    }

    cacheDeleteRequest2 = [(MBCKBackupEngine *)self cacheDeleteRequest];

    if (cacheDeleteRequest2)
    {
      cacheDeleteRequest3 = [(MBCKBackupEngine *)self cacheDeleteRequest];
      purge = [cacheDeleteRequest3 purge];

      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v211 = purge;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "=cloud-backup= CacheDelete purged %llu bytes", buf, 0xCu);
        v178 = purge;
        _MBLog();
      }
    }

    v207.receiver = self;
    v207.super_class = MBCKBackupEngine;
    if (![(MBCKEngine *)&v207 setUpWithError:error, v178])
    {
LABEL_49:
      LOBYTE(cache2) = 0;
      goto LABEL_50;
    }

    backupReason = self->_backupReason;
    if (MBBackupReasonIsManual() && !self->_lockAssertionRef)
    {
      self->_lockAssertionRef = [MBKeyBag holdLockAssertion:@"Manual Backup"];
    }

    if ([v8 isEnabled])
    {
      v25 = +[MBManagedPolicy sharedPolicy];
      v26 = [v25 checkIfCloudBackupIsAllowed:error];

      if (v26)
      {
        ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
        if (!ckOperationTracker)
        {
          __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 522, "tracker");
        }

        v28 = ckOperationTracker;
        ckOperationPolicy = [ckOperationTracker ckOperationPolicy];
        cellularAccess = [ckOperationPolicy cellularAccess];

        if (cellularAccess)
        {
          if ([cellularAccess allowsExpensiveNetworkAccess])
          {
            v31 = 2;
          }

          else
          {
            v31 = 1;
          }

          telemetry = [(MBCKBackupEngine *)self telemetry];
          [telemetry setAllowedCellularCost:v31];
        }

        networkConnectivity = [v6 networkConnectivity];
        v35 = v34;
        telemetry2 = [(MBCKBackupEngine *)self telemetry];
        [telemetry2 setNetworkConnectivityAtStart:{networkConnectivity, v35}];

        v37 = MBGetChargingType();
        telemetry3 = [(MBCKBackupEngine *)self telemetry];
        [telemetry3 setChargingType:v37];

        cache = [(MBCKEngine *)self cache];
        if (!cache)
        {
          __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 533, "cache");
        }

        v40 = cache;
        v206 = 0;
        LODWORD(cache2) = [MBCKKeyBag validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:v28 state:&v206 error:error];
        v42 = v206;
        if (!cache2)
        {
          goto LABEL_86;
        }

        v199 = cellularAccess;
        attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
        [attemptSummary trackKeyBagValidationState:v42];

        [(MBCKBackupEngine *)self setKeyBagValidationState:v42];
        v44 = [MBCKAccount fetchAccountWithOperationTracker:v28 cache:v40 create:1 error:error];
        if (!v44)
        {
          if (!*error)
          {
            __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 549, "*error != nil");
          }

          v51 = 0;
          LOBYTE(cache2) = 0;
          goto LABEL_85;
        }

        v45 = v44;
        v46 = MBGetDefaultLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v211 = v45;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "=cloud-backup= Account record is %@", buf, 0xCu);
          v179 = v45;
          _MBLog();
        }

        v198 = v42;

        if ([v40 invalidated])
        {
          v47 = [v6 openCacheWithAccount:v8 accessType:1 error:error];

          if (!v47)
          {
            v40 = 0;
            LOBYTE(cache2) = 0;
            v51 = v45;
            goto LABEL_84;
          }

          [(MBCKEngine *)self setCache:v47];
        }

        else
        {
          v47 = v40;
        }

        if ([v45 fetchDevicesWithOperationTracker:v28 error:{error, v179}])
        {
          if (![(MBCKEngine *)self handleCancelation:error])
          {
            v197 = v28;
            context = [(MBCKEngine *)self context];
            backupUDID = [context backupUDID];
            v54 = [v45 backupsDisabledFromAnotherDeviceForUUID:backupUDID];

            if (!v54)
            {
              v51 = v45;
              v40 = v47;
              v28 = v197;
              goto LABEL_68;
            }

            v55 = self->_backupReason;
            IsManual = MBBackupReasonIsManual();
            cache2 = MBGetDefaultLog();
            v57 = os_log_type_enabled(cache2, OS_LOG_TYPE_DEFAULT);
            if (IsManual)
            {
              if (v57)
              {
                context2 = [(MBCKEngine *)self context];
                backupUDID2 = [context2 backupUDID];
                *buf = 138412290;
                v211 = backupUDID2;
                _os_log_impl(&_mh_execute_header, cache2, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Disabled from another device triggered manually. Resetting the cache - cached device:%@", buf, 0xCu);

                context3 = [(MBCKEngine *)self context];
                backupUDID3 = [context3 backupUDID];
                _MBLog();
              }

              v195 = [v6 resetCacheWithAccount:v8 error:error];
              v40 = [v6 openCacheWithAccount:v8 accessType:1 error:error];

              [(MBCKEngine *)self setCache:v40];
              cache2 = [(MBCKEngine *)self cache];
              v28 = v197;
              v61 = [MBCKAccount fetchAccountWithOperationTracker:v197 cache:cache2 error:error];

              v51 = v61;
              LOBYTE(cache2) = 0;
              if (v61)
              {
                v42 = v198;
                cellularAccess = v199;
                if (!v195 || !v40)
                {
                  goto LABEL_85;
                }

LABEL_68:
                v204 = 0;
                v62 = v51;
                [(MBCKEngine *)self context];
                v64 = v63 = v28;
                backupUDID4 = [v64 backupUDID];
                v196 = v62;
                v66 = [v62 setupDeviceWithOperationTracker:v63 deviceUUID:backupUDID4 passcode:0 hasNewOTAKeyBag:&v204 error:error];

                if ([v40 invalidated])
                {
                  v67 = [v6 openCacheWithAccount:v8 accessType:1 error:error];

                  if (!v67)
                  {
                    v40 = 0;
                    goto LABEL_88;
                  }

                  [(MBCKEngine *)self setCache:v67];
                  v40 = v67;
                }

                cellularAccess = v199;
                telemetry4 = [(MBCKBackupEngine *)self telemetry];
                createdNewOTAKeybag = [telemetry4 createdNewOTAKeybag];

                if ((createdNewOTAKeybag & 1) == 0)
                {
                  v70 = v204;
                  telemetry5 = [(MBCKBackupEngine *)self telemetry];
                  [telemetry5 setCreatedNewOTAKeybag:v70];
                }

                if ((v66 & 1) == 0)
                {
                  v28 = v197;
                  if (!*error)
                  {
                    __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 612, "*error != nil");
                  }

                  LOBYTE(cache2) = 0;
                  goto LABEL_121;
                }

                context4 = [(MBCKEngine *)self context];
                backupUDID5 = [context4 backupUDID];
                v74 = [v196 deviceForUUID:backupUDID5];
                [(MBCKEngine *)self setDevice:v74];

                device = [(MBCKEngine *)self device];

                if (!device)
                {
                  cache2 = MBGetDefaultLog();
                  if (os_log_type_enabled(cache2, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, cache2, OS_LOG_TYPE_ERROR, "=cloud-backup= Could not find device after setup, failing backup attempt", buf, 2u);
                    _MBLog();
                  }

                  [MBError errorWithCode:204 format:@"Could not find device after setup"];
                  *error = LOBYTE(cache2) = 0;
                  goto LABEL_120;
                }

                context5 = [(MBCKEngine *)self context];
                backupUDID6 = [context5 backupUDID];
                v78 = MBDeviceUUID();
                v79 = [backupUDID6 isEqualToString:v78];

                if (v79)
                {
                  buf[0] = 0;
                  device2 = [(MBCKEngine *)self device];
                  cache2 = [MBCKJournal journalForDevice:device2 cache:v40 engine:self];

                  v28 = v197;
                  if ([cache2 replayJournalResetOrDisableWithOperationTracker:v197 serviceManager:v6 disable:buf error:error])
                  {
                    if (buf[0] == 1)
                    {
                      [v6 setBackupEnabled:0 account:v8 connection:0];
                      v81 = @"Backups disabled from server action";
LABEL_98:
                      v42 = v198;
                      cellularAccess = v199;
                      *error = [MBError errorWithCode:204 format:v81];
LABEL_99:

                      LOBYTE(cache2) = 0;
LABEL_122:
                      v51 = v196;
                      goto LABEL_85;
                    }

                    v85 = self->_backupReason;
                    if (MBBackupReasonIsScheduled())
                    {
                      v81 = @"Backups reset from server action";
                      goto LABEL_98;
                    }

                    v86 = [v6 openCacheWithAccount:v8 accessType:1 error:error];

                    if (!v86)
                    {
                      v40 = 0;
                      v28 = v197;
                      v42 = v198;
                      cellularAccess = v199;
                      goto LABEL_99;
                    }

                    [(MBCKEngine *)self setCache:v86];
                    v40 = v86;
                  }

                  cellularAccess = v199;
                  if ([v40 invalidated])
                  {
                    __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 643, "!cache.invalidated");
                  }
                }

                else
                {
                  cellularAccess = v199;
                }

                device3 = [(MBCKEngine *)self device];
                shouldDeleteDevice = [device3 shouldDeleteDevice];

                if (shouldDeleteDevice)
                {
                  v89 = MBGetDefaultLog();
                  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Existing backup history has corrupt data. Deleting and starting a fresh backup", buf, 2u);
                    _MBLog();
                  }

                  context6 = [(MBCKEngine *)self context];
                  backupUDID7 = [context6 backupUDID];
                  v92 = [v196 deleteDeviceWithOperationTracker:v197 deviceUUID:backupUDID7 error:error];

                  if (v92)
                  {
                    v93 = MBGetDefaultLog();
                    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Resetting the cache - shouldDeleteDevice", buf, 2u);
                      _MBLog();
                    }

                    [v6 resetCacheWithAccount:v8 error:error];
                    v203 = 0;
                    v94 = [v6 openCacheWithAccount:v8 accessType:1 error:&v203];
                    cache2 = v203;

                    [(MBCKEngine *)self setCache:v94];
                    [(MBCKEngine *)self setDevice:0];
                    v95 = [MBError errorWithCode:17 format:@"Device deleted, please retry"];
                    v96 = v95;

                    LOBYTE(cache2) = 0;
                    *error = v95;
                    v40 = v94;
                    goto LABEL_120;
                  }

                  goto LABEL_119;
                }

                device4 = [(MBCKEngine *)self device];
                if ([device4 hasFetchedSnapshots])
                {
                }

                else
                {
                  device5 = [(MBCKEngine *)self device];
                  v99 = [device5 fetchSnapshotsWithOperationTracker:v197 error:error];

                  if ((v99 & 1) == 0)
                  {
                    if (!*error)
                    {
                      __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 662, "*error != nil");
                    }

                    goto LABEL_119;
                  }
                }

                device6 = [(MBCKEngine *)self device];
                [device6 pinLatestGMSnapshotIfNeeded];

                device7 = [(MBCKEngine *)self device];
                snapshots = [device7 snapshots];
                lastObject = [snapshots lastObject];
                previousSnapshot = self->_previousSnapshot;
                self->_previousSnapshot = lastObject;

                v105 = [(MBCKBackupEngine *)self _snapshotFormatForAccount:v8 previousSnapshot:self->_previousSnapshot error:error];
                if (v105 == -1)
                {
LABEL_119:
                  LOBYTE(cache2) = 0;
LABEL_120:
                  v28 = v197;
                  goto LABEL_121;
                }

                v106 = v105;
                device8 = [(MBCKEngine *)self device];
                snapshots2 = [device8 snapshots];
                v109 = [snapshots2 count];

                v192 = v106;
                if (!v109)
                {
                  v112 = 0;
                  goto LABEL_129;
                }

                device9 = [(MBCKEngine *)self device];
                v111 = [device9 requiresFullBackupForAccount:v8];

                if (v111)
                {
                  v112 = 2;
                  goto LABEL_129;
                }

                if ([(MBCKSnapshot *)self->_previousSnapshot snapshotFormat]== v106)
                {
                  v112 = 1;
                  goto LABEL_129;
                }

                v112 = MBSnapshotTypeForFormatTransition([(MBCKSnapshot *)self->_previousSnapshot snapshotFormat], v106, error);
                if (v112 != -1)
                {
LABEL_129:
                  v113 = MBGetDefaultLog();
                  if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
                  {
                    v114 = MBStringForSnapshotType();
                    v115 = MBStringForSnapshotFormat();
                    telemetry6 = [(MBCKBackupEngine *)self telemetry];
                    createdNewOTAKeybag2 = [telemetry6 createdNewOTAKeybag];
                    *buf = 138412802;
                    v211 = v114;
                    v212 = 2112;
                    *v213 = v115;
                    *&v213[8] = 1024;
                    *&v213[10] = createdNewOTAKeybag2;
                    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_INFO, "=cloud-backup= Setting up backup, type:%@ format:%@ hasNewOTAKeyBag:%d", buf, 0x1Cu);

                    v118 = MBStringForSnapshotType();
                    v119 = MBStringForSnapshotFormat();
                    telemetry7 = [(MBCKBackupEngine *)self telemetry];
                    [telemetry7 createdNewOTAKeybag];
                    _MBLog();

                    v106 = v192;
                  }

                  telemetry8 = [(MBCKBackupEngine *)self telemetry];
                  v191 = v112;
                  [telemetry8 setSnapshotType:v112];

                  telemetry9 = [(MBCKBackupEngine *)self telemetry];
                  [telemetry9 setSnapshotFormat:v106];

                  previousSnapshot = [(MBCKBackupEngine *)self previousSnapshot];
                  snapshotFormat = [previousSnapshot snapshotFormat];
                  telemetry10 = [(MBCKBackupEngine *)self telemetry];
                  [telemetry10 setPreviousSnapshotFormat:snapshotFormat];

                  v126 = +[MBBehaviorOptions sharedOptions];
                  addRepairDomainToMBCKDevice = [v126 addRepairDomainToMBCKDevice];

                  if ([addRepairDomainToMBCKDevice length])
                  {
                    device10 = [(MBCKEngine *)self device];
                    hmacKey = [device10 hmacKey];
                    v130 = MBDomainHMACForDomainName(addRepairDomainToMBCKDevice, hmacKey);

                    device11 = [(MBCKEngine *)self device];
                    [device11 addRepairDomainHMAC:v130];
                  }

                  v190 = addRepairDomainToMBCKDevice;
                  v132 = MBOperationGroupNamePrefixForBackup(self->_previousSnapshot, v106);
                  [v197 setGroupNamePrefix:v132];

                  v202 = 0;
                  device12 = [(MBCKEngine *)self device];
                  backupReason = [(MBCKBackupEngine *)self backupReason];
                  backupPolicy = [(MBEngine *)self backupPolicy];
                  persona2 = [(MBCKEngine *)self persona];
                  v137 = v106;
                  v138 = persona2;
                  cache2 = MBCreateOrResumePendingSnapshot(device12, v191, v137, backupReason, backupPolicy, v40, persona2, v197, &v202, error);

                  if (!cache2)
                  {
                    v139 = 0;
LABEL_154:
                    v42 = v198;
                    cellularAccess = v199;

                    v28 = v197;
                    goto LABEL_122;
                  }

                  v139 = cache2;
                  objc_storeStrong(&self->_currentSnapshot, cache2);
                  pluginNotifier = [(MBCKBackupEngine *)self pluginNotifier];
                  v201 = 0;
                  v141 = [pluginNotifier notifyPluginsOfStartingBackupWithError:&v201];
                  v142 = v201;

                  if (v141)
                  {
                    pluginNotifier2 = [(MBCKBackupEngine *)self pluginNotifier];
                    v200 = v142;
                    v144 = [pluginNotifier2 notifyPluginsOfPreparingBackupWithError:&v200];
                    v189 = v200;

                    if (v144)
                    {
                      commitID = [(MBCKSnapshot *)self->_currentSnapshot commitID];
                      attemptSummary2 = [(MBCKBackupEngine *)self attemptSummary];
                      [attemptSummary2 setCommitID:commitID];

                      snapshotFormat2 = [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
                      attemptSummary3 = [(MBCKBackupEngine *)self attemptSummary];
                      [attemptSummary3 setSnapshotFormat:snapshotFormat2];

                      type = [(MBCKSnapshot *)self->_currentSnapshot type];
                      attemptSummary4 = [(MBCKBackupEngine *)self attemptSummary];
                      [attemptSummary4 setSnapshotType:type];

                      commitID2 = [(MBCKSnapshot *)self->_previousSnapshot commitID];
                      attemptSummary5 = [(MBCKBackupEngine *)self attemptSummary];
                      [attemptSummary5 setPreviousSnapshotCommitID:commitID2];

                      [(MBCKSnapshot *)self->_currentSnapshot setCameraRollBackupState:[(MBCKBackupEngine *)self cameraRollBackupState]];
                      ckOperationPolicy2 = [(MBCKEngine *)self ckOperationPolicy];
                      cellularAccess2 = [ckOperationPolicy2 cellularAccess];
                      [(MBCKSnapshot *)self->_currentSnapshot setIsBackupAllowedOnCellular:cellularAccess2 != 0];

                      if ([(MBEngine *)self backupPolicy]== 1)
                      {
                        [(MBCKSnapshot *)self->_currentSnapshot setBackupPolicy:1];
                      }

                      v155 = self->_previousSnapshot;
                      log = MBGetDefaultLog();
                      v156 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
                      if (v155)
                      {
                        if (v156)
                        {
                          commitID3 = [v139 commitID];
                          v184 = v202;
                          v158 = MBStringForSnapshotType();
                          v159 = MBStringForSnapshotFormat();
                          [(MBCKSnapshot *)self->_previousSnapshot snapshotFormat];
                          v160 = MBStringForSnapshotFormat();
                          telemetry11 = [(MBCKBackupEngine *)self telemetry];
                          createdNewOTAKeybag3 = [telemetry11 createdNewOTAKeybag];
                          [v139 backupPolicy];
                          v161 = MBStringForBackupPolicy();
                          *buf = 138413826;
                          v211 = commitID3;
                          v212 = 1024;
                          *v213 = v184;
                          *&v213[4] = 2112;
                          *&v213[6] = v158;
                          v214 = 2112;
                          v215 = v159;
                          v216 = 2112;
                          *v217 = v160;
                          *&v217[8] = 1024;
                          *&v217[10] = createdNewOTAKeybag3;
                          v218 = 2112;
                          v219 = v161;
                          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Finished setting up backup for %@ isResumed:%d type:%@ format:%@ previousFormat:%@ hasNewOTAKeyBag:%d policy:%@", buf, 0x40u);

                          commitID4 = [v139 commitID];
                          v162 = MBStringForSnapshotType();
                          v163 = MBStringForSnapshotFormat();
                          [(MBCKSnapshot *)self->_previousSnapshot snapshotFormat];
                          v164 = MBStringForSnapshotFormat();
                          telemetry12 = [(MBCKBackupEngine *)self telemetry];
                          [telemetry12 createdNewOTAKeybag];
                          [v139 backupPolicy];
                          v182 = MBStringForBackupPolicy();
                          _MBLog();
                        }
                      }

                      else if (v156)
                      {
                        commitID5 = [v139 commitID];
                        v187 = v202;
                        v170 = MBStringForSnapshotType();
                        v171 = MBStringForSnapshotFormat();
                        telemetry13 = [(MBCKBackupEngine *)self telemetry];
                        createdNewOTAKeybag4 = [telemetry13 createdNewOTAKeybag];
                        [v139 backupPolicy];
                        v173 = MBStringForBackupPolicy();
                        *buf = 138413570;
                        v211 = commitID5;
                        v212 = 1024;
                        *v213 = v187;
                        *&v213[4] = 2112;
                        *&v213[6] = v170;
                        v214 = 2112;
                        v215 = v171;
                        v216 = 1024;
                        *v217 = createdNewOTAKeybag4;
                        *&v217[4] = 2112;
                        *&v217[6] = v173;
                        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Finished setting up backup for initial snapshot %@ isResumed:%d type:%@ format:%@ hasNewOTAKeyBag:%d policy:%@", buf, 0x36u);

                        commitID6 = [v139 commitID];
                        v174 = MBStringForSnapshotType();
                        v175 = MBStringForSnapshotFormat();
                        telemetry14 = [(MBCKBackupEngine *)self telemetry];
                        [telemetry14 createdNewOTAKeybag];
                        [v139 backupPolicy];
                        v181 = MBStringForBackupPolicy();
                        _MBLog();
                      }

                      LOBYTE(cache2) = 1;
                      v142 = v189;
                      goto LABEL_153;
                    }

                    v167 = MBGetDefaultLog();
                    if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v211 = v189;
                      _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to notify plugins of preparingBackupWithError: %@", buf, 0xCu);
                      _MBLog();
                    }

                    v142 = v189;
                  }

                  else
                  {
                    v166 = MBGetDefaultLog();
                    if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v211 = v142;
                      _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to notify plugins of startingBackupWithError: %@", buf, 0xCu);
                      _MBLog();
                    }
                  }

                  v168 = v142;
                  LOBYTE(cache2) = 0;
                  *error = v142;
LABEL_153:

                  goto LABEL_154;
                }

LABEL_88:
                LOBYTE(cache2) = 0;
                v28 = v197;
                cellularAccess = v199;
LABEL_121:
                v42 = v198;
                goto LABEL_122;
              }
            }

            else
            {
              if (v57)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, cache2, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Resetting the cache since the backup was disabled from another device", buf, 2u);
                _MBLog();
              }

              [v6 resetCacheWithAccount:v8 error:error];
              v205 = 0;
              v40 = [v6 openCacheWithAccount:v8 accessType:1 error:&v205];
              v82 = v205;

              [(MBCKEngine *)self setCache:v40];
              [v6 setBackupEnabled:0 account:v8 connection:0];
              v83 = [MBError errorWithCode:204 format:@"Backups disabled from another device"];
              v84 = v83;

              LOBYTE(cache2) = 0;
              *error = v83;
              v51 = v45;
              v28 = v197;
            }

LABEL_84:
            v42 = v198;
            cellularAccess = v199;
LABEL_85:

LABEL_86:
            goto LABEL_50;
          }
        }

        else if (!*error)
        {
          __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 565, "*error != nil");
        }

        LOBYTE(cache2) = 0;
        v51 = v45;
        v40 = v47;
        goto LABEL_84;
      }

      v49 = MBGetDefaultLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "=cloud-backup= Account disabled in EDU and RRTS mode", buf, 2u);
        _MBLog();
      }

      goto LABEL_49;
    }

    v48 = MBGetDefaultLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "=cloud-backup= Account is not enabled for backup", buf, 2u);
      _MBLog();
    }

    v17 = @"Account not enabled";
    v18 = 210;
  }

  else
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=cloud-backup= nil domain manager", buf, 2u);
      _MBLog();
    }

    v17 = @"nil domain manager";
    v18 = 1;
  }

  [MBError errorWithCode:v18 format:v17];
  *error = LOBYTE(cache2) = 0;
LABEL_50:

  return cache2;
}

- (BOOL)checkIfBackupHasKeybagWithUUID:(id)d
{
  dCopy = d;
  device = [(MBCKEngine *)self device];
  keybagManager = [device keybagManager];
  v7 = [keybagManager hasKeybagWithUUID:dCopy];

  return v7;
}

- (BOOL)synchronizeFileListsWithError:(id *)error
{
  persona = [(MBCKEngine *)self persona];
  snapshotDatabaseDirectory = [persona snapshotDatabaseDirectory];
  previousSnapshot = [(MBCKBackupEngine *)self previousSnapshot];
  currentSnapshot = [(MBCKBackupEngine *)self currentSnapshot];
  device = [(MBCKEngine *)self device];
  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
  v12 = MBSynchronizeSnapshotDirectoryForBackup(snapshotDatabaseDirectory, previousSnapshot, currentSnapshot, device, ckOperationTracker, attemptSummary, error);

  if (v12)
  {
    [(MBCKBackupEngine *)self setPendingSnapshotDB:v12];
  }

  return v12 != 0;
}

- (BOOL)createVolumeSnapshots:(id *)snapshots
{
  persona = [(MBCKEngine *)self persona];
  if (!persona)
  {
    __assert_rtn("[MBCKBackupEngine createVolumeSnapshots:]", "MBCKBackupEngine.m", 779, "persona");
  }

  snapshotsCopy = snapshots;
  v36 = persona;
  volumesToBackUp = [persona volumesToBackUp];
  v38 = 0;
  v7 = [MBFSEventState stateForVolumeMountPoints:volumesToBackUp error:&v38];
  v8 = v38;

  if (!v7)
  {
    v9 = MBIsInternalInstall();
    v10 = MBGetDefaultLog();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v40 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "=cloud-backup= =cloud-backup= Failed to fetch next backup FSEvent state: %@", buf, 0xCu);
LABEL_9:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=cloud-backup= =cloud-backup= Failed to fetch next backup FSEvent state: %@", buf, 0xCu);
      goto LABEL_9;
    }

    v33 = 0;
    goto LABEL_11;
  }

  v33 = v8;
LABEL_11:
  nextBackupFSEventState = self->_nextBackupFSEventState;
  self->_nextBackupFSEventState = v7;
  v32 = v7;

  v13 = [MBAppManager alloc];
  context = [(MBCKEngine *)self context];
  mobileInstallation = [context mobileInstallation];
  v16 = [(MBAppManager *)v13 initWithMobileInstallation:mobileInstallation];
  appManager = self->super.super._appManager;
  self->super.super._appManager = v16;

  v18 = objc_opt_new();
  mountedSnapshotTracker = self->_mountedSnapshotTracker;
  self->_mountedSnapshotTracker = v18;

  serviceAccount = [(MBCKEngine *)self serviceAccount];
  appManager = [(MBEngine *)self appManager];
  domainManager = [(MBEngine *)self domainManager];
  serviceManager = [(MBCKEngine *)self serviceManager];
  backupReason = [(MBCKBackupEngine *)self backupReason];
  mountedSnapshotTracker = [(MBCKBackupEngine *)self mountedSnapshotTracker];
  device = [(MBCKEngine *)self device];
  pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];
  currentSnapshot = [(MBCKBackupEngine *)self currentSnapshot];
  previousSnapshot = [(MBCKBackupEngine *)self previousSnapshot];
  attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10006F638;
  v37[3] = &unk_1003BC8B8;
  v37[4] = self;
  v35 = MBCreateVolumeSnapshots(serviceAccount, appManager, domainManager, serviceManager, backupReason, mountedSnapshotTracker, device, pendingSnapshotDB, currentSnapshot, previousSnapshot, attemptSummary, snapshotsCopy, v37);

  return v35;
}

- (void)_saveLastPendingSnapshotSize:(unint64_t)size
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v9 = @"LastPendingSnapshotSize";
    v10 = 2048;
    sizeCopy = size;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Saving %{public}@: %llu", buf, 0x16u);
    _MBLog();
  }

  persona = [(MBCKEngine *)self persona];
  v7 = [NSNumber numberWithUnsignedLongLong:size];
  [persona setPreferencesValue:v7 forKey:@"LastPendingSnapshotSize"];
}

+ (BOOL)_startOTABackupWithAccount:(id)account error:(id *)error
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKBackupEngine _startOTABackupWithAccount:error:]", "MBCKBackupEngine.m", 819, "account");
  }

  if (!error)
  {
    __assert_rtn("+[MBCKBackupEngine _startOTABackupWithAccount:error:]", "MBCKBackupEngine.m", 820, "error");
  }

  v6 = accountCopy;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  persona = [accountCopy persona];
  volumesToBackUp = [persona volumesToBackUp];

  v9 = [volumesToBackUp countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(volumesToBackUp);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [MBFileSystemManager volumeUUIDWithVolumeMountPoint:v13 error:error];
        if (!v14)
        {
          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = *error;
            *buf = 138543618;
            v26 = v13;
            v27 = 2112;
            v28 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to fetch the volume UUID for %{public}@: %@", buf, 0x16u);
            v20 = *error;
            _MBLog();
          }

          v16 = 0;
          goto LABEL_15;
        }

        v15 = v14;
        [MBKeyBag startOTABackupForVolumeUUID:v14];
      }

      v10 = [volumesToBackUp countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_15:

  return v16;
}

+ (BOOL)_stopOTABackupWithAccount:(id)account error:(id *)error
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKBackupEngine _stopOTABackupWithAccount:error:]", "MBCKBackupEngine.m", 834, "account");
  }

  if (!error)
  {
    __assert_rtn("+[MBCKBackupEngine _stopOTABackupWithAccount:error:]", "MBCKBackupEngine.m", 835, "error");
  }

  v6 = accountCopy;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  persona = [accountCopy persona];
  volumesToBackUp = [persona volumesToBackUp];

  v9 = [volumesToBackUp countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(volumesToBackUp);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [MBFileSystemManager volumeUUIDWithVolumeMountPoint:v13 error:error];
        if (!v14)
        {
          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = *error;
            *buf = 138543618;
            v26 = v13;
            v27 = 2112;
            v28 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to fetch the volume UUID for %{public}@: %@", buf, 0x16u);
            v20 = *error;
            _MBLog();
          }

          v16 = 0;
          goto LABEL_15;
        }

        v15 = v14;
        [MBKeyBag stopOTABackupForVolumeUUID:v14];
      }

      v10 = [volumesToBackUp countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_15:

  return v16;
}

- (BOOL)findChangesWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 848, "error");
  }

  errorCopy = error;
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 850, "serviceAccount");
  }

  v6 = serviceAccount;
  persona = [(MBCKEngine *)self persona];
  if (!persona)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 852, "persona");
  }

  v8 = persona;
  v9 = self->super.super._domainManager;
  if (!v9)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 854, "domainManager");
  }

  v10 = v9;
  v11 = self->_currentSnapshot;
  if (!v11)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 856, "currentSnapshot");
  }

  v12 = v11;
  pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];
  if (!pendingSnapshotDB)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 858, "pendingSnapshotDB");
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = errorCopy;
    v15 = v13;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Scanning files for changes", buf, 2u);
    }

    _MBLog();
    errorCopy = v14;
  }

  v163 = v12;
  if ([(MBCKEngine *)self handleCancelation:errorCopy])
  {
    v16 = 0;
    goto LABEL_183;
  }

  v165 = errorCopy;
  [(MBCKSnapshot *)v12 snapshotFormat];
  if (MBSnapshotFormatContainsManifests())
  {
    cache = [(MBCKEngine *)self cache];
    removeAllFilesMissingEncryptionKeys = [cache removeAllFilesMissingEncryptionKeys];

    _fetchPreviousBackupFSEventState = removeAllFilesMissingEncryptionKeys;
    if (removeAllFilesMissingEncryptionKeys)
    {
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v192 = removeAllFilesMissingEncryptionKeys;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=cloud-backup= Could not remove all missing encryption keys from the cache: %@", buf, 0xCu);
        _MBLog();
      }

      v16 = 0;
      *v165 = removeAllFilesMissingEncryptionKeys;
      goto LABEL_182;
    }
  }

  telemetry = [(MBCKBackupEngine *)self telemetry];
  [telemetry setBackupFileCount:&off_1003E0CF0];

  telemetry2 = [(MBCKBackupEngine *)self telemetry];
  [telemetry2 setBackupDirectoryCount:&off_1003E0CF0];

  telemetry3 = [(MBCKBackupEngine *)self telemetry];
  domainsWithMissingEncryptionKeys = [telemetry3 domainsWithMissingEncryptionKeys];
  [domainsWithMissingEncryptionKeys removeAllObjects];

  if ([(MBCKBackupEngine *)self _shouldBackupUsingFSEvents])
  {
    _fetchPreviousBackupFSEventState = [(MBCKBackupEngine *)self _fetchPreviousBackupFSEventState];
  }

  else
  {
    _fetchPreviousBackupFSEventState = 0;
  }

  v158 = v8;
  v156 = v6;
  v166 = objc_opt_new();
  v168 = objc_opt_new();
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v157 = v10;
  obj = [(MBDomainManager *)v10 allDomains];
  v24 = [obj countByEnumeratingWithState:&v185 objects:v196 count:16];
  if (!v24)
  {
    v26 = 0;
    goto LABEL_62;
  }

  v25 = v24;
  v26 = 0;
  v27 = *v186;
  while (2)
  {
    v28 = 0;
    v161 = &v26[v25];
    do
    {
      if (*v186 != v27)
      {
        objc_enumerationMutation(obj);
      }

      name = [*(*(&v185 + 1) + 8 * v28) name];
      if (!_fetchPreviousBackupFSEventState)
      {
        goto LABEL_46;
      }

      [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
      v184 = 0;
      if (MBSnapshotFormatContainsManifests())
      {
        cache2 = [(MBCKEngine *)self cache];
        v31 = [cache2 hasDomainBeenBackedUp:name backedUp:&v184];

        if (v31)
        {
          v32 = MBGetDefaultLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = v32;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *v192 = name;
              *&v192[8] = 2112;
              v193 = v31;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Failed to determine whether domain %@ has been backed up:%@", buf, 0x16u);
            }

            v147 = *&name;
            v152 = v31;
            _MBLog();
          }
        }
      }

      v183 = 0;
      if (MBSnapshotFormatContainsFileLists())
      {
        pendingSnapshotDB2 = [(MBCKBackupEngine *)self pendingSnapshotDB];
        v35 = [pendingSnapshotDB2 isDomainInPreviousSnapshot:name outResult:&v183 error:v165];

        if (!v35)
        {
          v16 = 0;
          v6 = v156;
          v8 = v158;
          goto LABEL_181;
        }
      }

      if ((v184 & 1) == 0 && (MBSnapshotFormatContainsManifests() & 1) != 0 || (v183 & 1) == 0 && MBSnapshotFormatContainsFileLists())
      {
        v36 = MBGetDefaultLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = v36;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v192 = name;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "=cloud-backup= Forcing a scan on new domain %@", buf, 0xCu);
          }

          v147 = *&name;
          _MBLog();
        }

LABEL_46:
        v38 = 0;
        goto LABEL_48;
      }

      v38 = 1;
LABEL_48:
      v39 = [(MBCKEngine *)self device:*&v147];
      v40 = [v39 shouldRepairDomain:name];

      if (v40)
      {
        device = [(MBCKEngine *)self device];
        hmacKey = [device hmacKey];
        v43 = MBDomainHMACForDomainName(name, hmacKey);
        [v166 addObject:v43];

        v44 = MBGetDefaultLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = v44;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "=cloud-backup= =domain repair= Forcing a scan on domain pending repair", buf, 2u);
          }

          _MBLog();
        }
      }

      else if (v38)
      {
        [v168 markUnmodifiedDomain:name];
        goto LABEL_57;
      }

      [v168 markModifiedDomain:name];
LABEL_57:

      ++v28;
    }

    while (v25 != v28);
    v25 = [obj countByEnumeratingWithState:&v185 objects:v196 count:16];
    v26 = v161;
    if (v25)
    {
      continue;
    }

    break;
  }

LABEL_62:
  v162 = v26;

  if ([v166 count])
  {
    device2 = [(MBCKEngine *)self device];
    [device2 setDomainHMACsToRepairOnDisk:v166];
  }

  v6 = v156;
  v8 = v158;
  if (_fetchPreviousBackupFSEventState)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v182[0] = _NSConcreteStackBlock;
    v182[1] = 3221225472;
    v182[2] = sub_1000713D4;
    v182[3] = &unk_1003BC8B8;
    v182[4] = self;
    [MBFSEventCollector markModificationsWith:v168 since:_fetchPreviousBackupFSEventState domainManager:v10 persona:v158 cancellationHandler:v182];
    v48 = CFAbsoluteTimeGetCurrent() - Current;
    v49 = MBGetDefaultLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v49;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v192 = v48;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Finished collecting FSEvents in %.3fs", buf, 0xCu);
      }

      v147 = v48;
      _MBLog();
    }

    telemetry4 = [(MBCKBackupEngine *)self telemetry];
    [telemetry4 setFseventDuration:v48];
  }

  obj = [v168 unmodifiedDomainNames];
  v52 = MBGetDefaultLog();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = v52;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = [obj count];
      *buf = 134218498;
      *v192 = v54;
      *&v192[8] = 2048;
      v193 = v162;
      v194 = 2112;
      v195 = obj;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Unmodified domains: (%lu/%lu) %@", buf, 0x20u);
    }

    v152 = v162;
    v153 = obj;
    v148 = [obj count];
    _MBLog();
  }

  name = [v168 modifiedDomainNames];
  v55 = MBGetDefaultLog();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = v55;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [name count];
      *buf = 134218498;
      *v192 = v57;
      *&v192[8] = 2048;
      v193 = v162;
      v194 = 2112;
      v195 = name;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Modified domains: (%lu/%lu) %@", buf, 0x20u);
    }

    v152 = v162;
    v153 = name;
    v148 = [name count];
    _MBLog();
  }

  v58 = [obj count];
  if (&v58[[name count]] != v162)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 953, "unmodifiedDomainNames.count + modifiedDomainNames.count == enabledDomainsCount");
  }

  [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
  if (!MBSnapshotFormatContainsManifests())
  {
    goto LABEL_88;
  }

  cache3 = [(MBCKEngine *)self cache];
  markAllFileChangesAsDeleted = [cache3 markAllFileChangesAsDeleted];

  if (markAllFileChangesAsDeleted)
  {
    v61 = MBGetDefaultLog();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v192 = markAllFileChangesAsDeleted;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to mark file changes as deleted: %@", buf, 0xCu);
      goto LABEL_86;
    }

    goto LABEL_87;
  }

  cache4 = [(MBCKEngine *)self cache];
  markAllFileChangesAsDeleted = [cache4 markFileChangesAsUnmodifiedForDomainNames:obj];

  if (!markAllFileChangesAsDeleted)
  {
LABEL_88:
    v64 = objc_opt_new();
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    v181 = 0u;
    name = name;
    v65 = [name countByEnumeratingWithState:&v178 objects:v190 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v179;
      do
      {
        for (i = 0; i != v66; i = i + 1)
        {
          if (*v179 != v67)
          {
            objc_enumerationMutation(name);
          }

          v153 = [(MBDomainManager *)self->super.super._domainManager domainForName:*(*(&v178 + 1) + 8 * i), v148, v152, v153];
          if (!v153)
          {
            __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 977, "domain");
          }

          v70 = v153;
          [v64 addObject:v153];
        }

        v66 = [name countByEnumeratingWithState:&v178 objects:v190 count:16];
      }

      while (v66);
    }

    v71 = +[MBBehaviorOptions sharedOptions];
    domainsToSendInvalidChecksumRegex = [v71 domainsToSendInvalidChecksumRegex];
    v73 = [domainsToSendInvalidChecksumRegex length];

    if (v73)
    {
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v74 = v64;
      v75 = [v74 countByEnumeratingWithState:&v174 objects:v189 count:16];
      if (v75)
      {
        v76 = v75;
        v77 = *v175;
        while (2)
        {
          for (j = 0; j != v76; j = j + 1)
          {
            if (*v175 != v77)
            {
              objc_enumerationMutation(v74);
            }

            name2 = [*(*(&v174 + 1) + 8 * j) name];
            v80 = MBShouldSendInvalidChecksumForDomain(name2);

            if (v80)
            {
              [(MBCKSnapshot *)self->_currentSnapshot setTestCommitRepairChecksumOnLightrailChecksumMismatch:1];
              goto LABEL_107;
            }
          }

          v76 = [v74 countByEnumeratingWithState:&v174 objects:v189 count:16];
          if (v76)
          {
            continue;
          }

          break;
        }
      }

LABEL_107:
    }

    v8 = v158;
    if (-[MBEngine backupPolicy](self, "backupPolicy", v148) != 1 || ![v158 isPersonalPersona])
    {
      goto LABEL_132;
    }

    volumeMountPoint = [v158 volumeMountPoint];
    mountedSnapshotTracker = [(MBCKBackupEngine *)self mountedSnapshotTracker];
    v83 = [mountedSnapshotTracker snapshotMountPointForVolumeMountPoint:volumeMountPoint];

    v84 = [MBiCloudDrivePlugin backUpiCloudDriveDatabaseManifestForUserVolume:volumeMountPoint snapshotMountPoint:v83];
    v85 = MBGetDefaultLog();
    v86 = v85;
    if (v84)
    {
      if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_121;
      }

      v87 = v86;
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v192 = v84;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to save iCloud Drive Manifest: %@", buf, 0xCu);
      }

      v149 = v84;
    }

    else
    {
      if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_121;
      }

      v88 = v86;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Saved iCloud Drive Manifest", buf, 2u);
      }
    }

    _MBLog();
LABEL_121:

    v89 = [MBiCloudDrivePlugin backUpFPFSDatabaseManifestForUserVolume:volumeMountPoint snapshotMountPoint:v83];

    v90 = MBGetDefaultLog();
    v91 = v90;
    if (v89)
    {
      v8 = v158;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        v92 = v91;
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v192 = v89;
          _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to save FPFS Manifest: %@", buf, 0xCu);
        }

        v149 = v89;
LABEL_130:
        _MBLog();
      }
    }

    else
    {
      v8 = v158;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        v93 = v91;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Saved FPFS Manifest", buf, 2u);
        }

        goto LABEL_130;
      }
    }

LABEL_132:
    +[NSDate timeIntervalSinceReferenceDate];
    v95 = v94;
    if (!-[MBCKSnapshot type](self->_currentSnapshot, "type") && ![objc_opt_class() _startOTABackupWithAccount:v156 error:v165])
    {
      v16 = 0;
      v10 = v157;
LABEL_180:

      goto LABEL_181;
    }

    v96 = [MBSkippedFileTracker alloc];
    skippedFileRecordsPlistPath = [v8 skippedFileRecordsPlistPath];
    v98 = [(MBSkippedFileTracker *)v96 initWithPlistPath:skippedFileRecordsPlistPath];
    [(MBCKBackupEngine *)self setSkippedFileTracker:v98];

    [v64 sortUsingComparator:&stru_1003BC8D8];
    v99 = MBGetDefaultLog();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      v100 = v99;
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        v101 = [v64 valueForKey:@"name"];
        *buf = 138412290;
        *v192 = v101;
        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Scanning domains: %@", buf, 0xCu);
      }

      [v64 valueForKey:@"name"];
      v150 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      _MBLog();
    }

    mountedSnapshotTracker2 = [(MBCKBackupEngine *)self mountedSnapshotTracker];
    v103 = [(MBCKBackupEngine *)self _createDomainTranscriberForAPFSSnapshots:mountedSnapshotTracker2 error:v165];

    if (!v103)
    {
      v16 = 0;
      v10 = v157;
LABEL_179:

      goto LABEL_180;
    }

    v104 = objc_opt_new();
    pendingSnapshotDB3 = [(MBCKBackupEngine *)self pendingSnapshotDB];
    progressModel = [(MBCKEngine *)self progressModel];
    v173 = 0;
    v160 = v103;
    v159 = v104;
    LOBYTE(v104) = [v103 scanDomains:v64 pendingSnapshotDB:pendingSnapshotDB3 progress:progressModel summary:v104 error:&v173];
    v107 = v173;

    if ((v104 & 1) == 0)
    {
      v118 = v159;
      v111 = v107;
      if ([MBError isError:v107 withCode:209])
      {
        [MBCKEncryptionManager trackMissingEncryptionKeyForAccount:v156];
        attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
        [attemptSummary trackDomainTranscription:v159];
      }

      v122 = v107;
      v16 = 0;
      *v165 = v107;
      v10 = v157;
      v103 = v160;
      goto LABEL_178;
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v109 = v108;
    v172 = v107;
    [objc_opt_class() _stopOTABackupWithAccount:v156 error:&v172];
    v110 = v172;

    v171 = v110;
    [objc_opt_class() _startOTABackupWithAccount:v156 error:&v171];
    v111 = v171;

    v112 = MBGetDefaultLog();
    v103 = v160;
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      v113 = v109 - v95;
      v114 = v112;
      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v192 = v113;
        _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Finished scanning for changes in %0.3fs", buf, 0xCu);
      }

      v150 = v113;
      _MBLog();
    }

    [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
    if (!MBSnapshotFormatContainsManifests())
    {
      goto LABEL_158;
    }

    cache5 = [(MBCKEngine *)self cache];
    v170 = 0;
    v116 = [cache5 countFilesMissingEncryptionKeysWithError:&v170];
    v111 = v170;

    if (v116)
    {
      v117 = MBGetDefaultLog();
      v118 = v159;
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
      {
        v119 = v111;
        v120 = v117;
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v192 = v116;
          _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Found %llu files with missing encryption keys during scan", buf, 0xCu);
        }

        _MBLog();
        v111 = v119;
        v103 = v160;
      }

      [MBError errorWithCode:209 format:@"Found %llu files with missing encryption keys during scan", v116];
      *v165 = v16 = 0;
      v10 = v157;
      goto LABEL_178;
    }

    if (v111)
    {
      v123 = v111;
      v16 = 0;
      *v165 = v111;
      v10 = v157;
    }

    else
    {
LABEL_158:
      v10 = v157;
      if (![(MBCKEngine *)self handleCancelation:v165, *&v150])
      {
        [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
        if (MBSnapshotFormatContainsFileLists())
        {
          v154 = v111;
          +[NSDate timeIntervalSinceReferenceDate];
          v125 = v124;
          commitID = [(MBCKSnapshot *)self->_previousSnapshot commitID];
          [(MBCKSnapshot *)self->_currentSnapshot type];
          IsFull = MBSnapshotTypeIsFull();
          previousSnapshot = [(MBCKBackupEngine *)self previousSnapshot];
          v128 = MBSnapshotsAreTransitioningFormats(previousSnapshot, self->_currentSnapshot);

          if ((IsFull & 1) != 0 || v128)
          {

            v129 = MBGetDefaultLog();
            if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
            {
              v130 = v129;
              if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v192 = IsFull;
                *&v192[4] = 1024;
                *&v192[6] = v128;
                _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Ignoring previous snapshot from asset copy, isFullBackup:%d isTransitioningFormats:%d", buf, 0xEu);
              }

              v151 = *&IsFull;
              v152 = v128;
              _MBLog();
            }

            commitID = 0;
          }

          v131 = [(MBCKEngine *)self device:*&v151];
          appManager = [(MBEngine *)self appManager];
          v133 = [pendingSnapshotDB updateDomainListInPlaceholderDomainWithDevice:v131 appManager:appManager error:v165];

          if (!v133 || ([(MBCKEngine *)self device], v134 = objc_claimAutoreleasedReturnValue(), v135 = MBCopyAssetsToUploadIntoPendingSnapshotDB(pendingSnapshotDB, commitID, v134, v165), v134, !v135))
          {

            v16 = 0;
            v10 = v157;
            v103 = v160;
            v118 = v159;
            v111 = v154;
            goto LABEL_178;
          }

          +[NSDate timeIntervalSinceReferenceDate];
          v137 = v136 - v125;
          v138 = MBGetDefaultLog();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
          {
            v139 = v138;
            if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *v192 = v137;
              _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Finished copying assets into pending snapshot database in %.2f s", buf, 0xCu);
            }

            v151 = v137;
            _MBLog();
          }

          attemptSummary2 = [(MBCKBackupEngine *)self attemptSummary];
          [attemptSummary2 setAssetCopyDuration:v137];

          v141 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v64 count]);
          telemetry5 = [(MBCKBackupEngine *)self telemetry];
          [telemetry5 setScannedDomainsCount:v141];

          v143 = [NSNumber numberWithUnsignedLong:v162];
          telemetry6 = [(MBCKBackupEngine *)self telemetry];
          [telemetry6 setEnabledDomainsCount:v143];

          v10 = v157;
          v8 = v158;
          v103 = v160;
          v111 = v154;
        }

        attemptSummary3 = [(MBCKBackupEngine *)self attemptSummary];
        v118 = v159;
        [attemptSummary3 trackDomainTranscription:v159];

        v16 = 1;
LABEL_178:

        goto LABEL_179;
      }

      v16 = 0;
    }

    v118 = v159;
    goto LABEL_178;
  }

  v61 = MBGetDefaultLog();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *v192 = markAllFileChangesAsDeleted;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to mark file changes as unmodified: %@", buf, 0xCu);
LABEL_86:
    _MBLog();
  }

LABEL_87:

  v63 = markAllFileChangesAsDeleted;
  *v165 = markAllFileChangesAsDeleted;

  v16 = 0;
LABEL_181:

LABEL_182:
LABEL_183:

  return v16;
}

- (BOOL)reserveQuotaWithError:(id *)error
{
  persona = [(MBCKEngine *)self persona];
  if (!persona)
  {
    __assert_rtn("[MBCKBackupEngine reserveQuotaWithError:]", "MBCKBackupEngine.m", 1112, "persona");
  }

  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKBackupEngine reserveQuotaWithError:]", "MBCKBackupEngine.m", 1114, "tracker");
  }

  currentSnapshot = [(MBCKBackupEngine *)self currentSnapshot];
  if (!currentSnapshot)
  {
    __assert_rtn("[MBCKBackupEngine reserveQuotaWithError:]", "MBCKBackupEngine.m", 1116, "currentSnapshot");
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  [currentSnapshot snapshotFormat];
  if (MBSnapshotFormatContainsManifests())
  {
    cache = [(MBCKEngine *)self cache];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100071CE4;
    v59[3] = &unk_1003BC900;
    v60 = v8;
    v61 = &v62;
    v10 = [cache summarizeFileChangesGroupByDomain:v59];

    if (v10)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v67 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=cloud-backup= Error when summarizing file changes:%@", buf, 0xCu);
        _MBLog();
      }

      if (error)
      {
        v12 = v10;
        *error = v10;
      }

      v13 = 0;
      v14 = v60;
      goto LABEL_39;
    }
  }

  else
  {
    pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100071D64;
    v56[3] = &unk_1003BC928;
    v57 = v8;
    v58 = &v62;
    v16 = [pendingSnapshotDB fetchQuotaReservationByDomain:error block:v56];

    if ((v16 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  type = [currentSnapshot type];
  IsFull = MBSnapshotTypeIsFull();
  if (type)
  {
    v19 = IsFull;
  }

  else
  {
    v19 = 1;
  }

  v20 = v63[3];
  if (v19 != 1 || v20)
  {
    v23 = [NSNumber numberWithUnsignedLongLong:v20];
    telemetry = [(MBCKBackupEngine *)self telemetry];
    [telemetry setBackupTotalSize:v23];

    v25 = [NSNumber numberWithUnsignedLongLong:v63[3]];
    [v8 setObject:v25 forKeyedSubscript:@"_TotalSize"];

    [persona setPreferencesValue:v8 forKey:@"PreflightSizing"];
    v26 = v63[3];
    attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
    [attemptSummary setTotalQuotaReservation:v26];

    v28 = MBDeviceName();
    device = [(MBCKEngine *)self device];
    [device setDeviceName:v28];

    [(MBCKBackupEngine *)self _saveLastPendingSnapshotSize:v63[3]];
    v30 = v63[3];
    device2 = [(MBCKEngine *)self device];
    [device2 setPendingSnapshotQuotaReserved:v30];

    type2 = [(MBCKSnapshot *)self->_currentSnapshot type];
    device3 = [(MBCKEngine *)self device];
    [device3 setPendingSnapshotType:type2];

    backupPolicy = [(MBCKSnapshot *)self->_currentSnapshot backupPolicy];
    device4 = [(MBCKEngine *)self device];
    [device4 setPendingSnapshotBackupPolicy:backupPolicy];

    snapshotFormat = [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
    device5 = [(MBCKEngine *)self device];
    [device5 setPendingSnapshotFormat:snapshotFormat];

    device6 = [(MBCKEngine *)self device];
    domainHMACsToRepairOnDisk = [device6 domainHMACsToRepairOnDisk];
    v40 = [domainHMACsToRepairOnDisk count] == 0;

    device7 = [(MBCKEngine *)self device];
    if (v40)
    {
      [device7 setPendingRepairedDomainHMACs:0];
    }

    else
    {
      domainHMACsToRepairOnDisk2 = [device7 domainHMACsToRepairOnDisk];
      device8 = [(MBCKEngine *)self device];
      [device8 setPendingRepairedDomainHMACs:domainHMACsToRepairOnDisk2];
    }

    device9 = [(MBCKEngine *)self device];
    [device9 setPendingSnapshot:0];

    device10 = [(MBCKEngine *)self device];
    v46 = [device10 saveWithOperationTracker:ckOperationTracker error:error];

    if (v46)
    {
      device11 = [(MBCKEngine *)self device];
      deviceName = [device11 deviceName];
      [(MBCKSnapshot *)self->_currentSnapshot setDeviceName:deviceName];

      currentSnapshot = self->_currentSnapshot;
      device12 = [(MBCKEngine *)self device];
      [device12 setPendingSnapshot:currentSnapshot];

      pluginNotifier = [(MBCKBackupEngine *)self pluginNotifier];
      v55 = 0;
      LOBYTE(currentSnapshot) = [pluginNotifier notifyPluginsOfPreparedBackupWithError:&v55];
      v14 = v55;

      if (currentSnapshot)
      {
        v13 = 1;
        goto LABEL_39;
      }

      v52 = MBGetDefaultLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v67 = v14;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to notify plugins of preparedBackupWithError: %@", buf, 0xCu);
        _MBLog();
      }

      if (error)
      {
        v53 = v14;
        v13 = 0;
        *error = v14;
        goto LABEL_39;
      }

LABEL_27:
      v13 = 0;
LABEL_39:

      goto LABEL_40;
    }
  }

  else
  {
    if (MBIsInternalInstall() && !dword_100421630 && !atomic_fetch_add_explicit(&dword_100421630, 1u, memory_order_relaxed))
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "=cloud-backup= =cloud-backup= Backup has reserved quota size of 0", buf, 2u);
        _MBLog();
      }
    }

    if (error)
    {
      v14 = MBStringForSnapshotType();
      localizedCapitalizedString = [v14 localizedCapitalizedString];
      *error = [MBError errorWithCode:205 format:@"%@ backup has a reserved quota size of 0", localizedCapitalizedString];

      goto LABEL_27;
    }
  }

LABEL_34:
  v13 = 0;
LABEL_40:
  _Block_object_dispose(&v62, 8);

  return v13;
}

- (BOOL)_handleSkippedFilesWithError:(id *)error
{
  skippedFileTracker = [(MBCKBackupEngine *)self skippedFileTracker];
  skippedFilesCount = [skippedFileTracker skippedFilesCount];
  if (skippedFilesCount)
  {
    v7 = skippedFilesCount;
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v45 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Skipped %lld files during the file scan", buf, 0xCu);
      _MBLog();
    }

    persona = [(MBCKEngine *)self persona];
    skippedFilesPlistValue = [skippedFileTracker skippedFilesPlistValue];
    [persona setPreferencesValue:skippedFilesPlistValue forKey:@"SkippedFilesFromBackup"];

    persona2 = [(MBCKEngine *)self persona];
    skippedFileRecordsPlistPath = [persona2 skippedFileRecordsPlistPath];

    v42 = 0;
    v13 = [skippedFileTracker writeSkippedFilesToPlistWithError:&v42];
    v14 = v42;
    if ((v13 & 1) == 0)
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to write skipped files to plist", buf, 2u);
        _MBLog();
      }

      if (!error)
      {
        goto LABEL_27;
      }

      v15 = v14;
      goto LABEL_14;
    }

    if (v7 >= 0xB)
    {
      if (!error)
      {
LABEL_27:

        v17 = 0;
        goto LABEL_28;
      }

      v15 = [MBError errorWithCode:100 format:@"Too many skipped files during scanning (%llu > %llu)", v7, 10];
LABEL_14:
      *error = v15;
      goto LABEL_27;
    }

    v19 = self->super.super._domainManager;
    v40 = v19;
    if (![(MBDomainManager *)v19 containsDomainName:@"SkippedFilesDomain"])
    {
      persona3 = [(MBCKEngine *)self persona];
      volumeMountPoint = [persona3 volumeMountPoint];
      stringByDeletingLastPathComponent = [skippedFileRecordsPlistPath stringByDeletingLastPathComponent];
      v23 = [MBDomain skippedFilesDomainWithVolumeMountPoint:volumeMountPoint rootPath:stringByDeletingLastPathComponent];

      lastPathComponent = [skippedFileRecordsPlistPath lastPathComponent];
      v25 = [NSSet setWithObject:lastPathComponent];
      [v23 setRelativePathsToBackupAndRestore:v25];

      v19 = v40;
      [(MBDomainManager *)v40 addDomain:v23];
    }

    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = skippedFileRecordsPlistPath;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Scanning the skipped files plist (%@) from the live filesystem", buf, 0xCu);
      _MBLog();
    }

    v27 = [(MBCKBackupEngine *)self _createDomainTranscriberForAPFSSnapshots:0 error:error];
    if (v27)
    {
      v38 = [(MBDomainManager *)v19 domainForName:@"SkippedFilesDomain"];
      v43 = v38;
      v28 = [NSArray arrayWithObjects:&v43 count:1];
      pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];
      progressModel = [(MBCKEngine *)self progressModel];
      v41 = v14;
      v37 = v27;
      v31 = [v27 scanDomains:v28 pendingSnapshotDB:pendingSnapshotDB progress:progressModel summary:0 error:&v41];
      v39 = v41;

      if (v31)
      {
        v32 = [NSNumber numberWithUnsignedLongLong:v7];
        telemetry = [(MBCKBackupEngine *)self telemetry];
        [telemetry setSkippedFilesCount:v32];

        goto LABEL_9;
      }

      v27 = v37;
      v19 = v40;
      v34 = MBGetDefaultLog();
      v14 = v39;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v45 = v39;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to transcribe skipped files domain: %@", buf, 0xCu);
        _MBLog();
      }

      if (error)
      {
        v35 = v39;
        *error = v39;
      }
    }

    goto LABEL_27;
  }

  persona4 = [(MBCKEngine *)self persona];
  [persona4 setPreferencesValue:0 forKey:@"SkippedFilesFromBackup"];

  [skippedFileTracker writeSkippedFilesToPlistWithError:0];
LABEL_9:
  v17 = 1;
LABEL_28:

  return v17;
}

- (BOOL)prepareToUploadChangesWithError:(id *)error
{
  v5 = self->_currentSnapshot;
  if (!v5)
  {
    __assert_rtn("[MBCKBackupEngine prepareToUploadChangesWithError:]", "MBCKBackupEngine.m", 1250, "currentSnapshot");
  }

  v6 = v5;
  if ([(MBCKEngine *)self handleCancelation:error])
  {
    goto LABEL_33;
  }

  [(MBCKBackupEngine *)self _releaseLockAssertion];
  if (![(MBCKBackupEngine *)self _handleSkippedFilesWithError:error])
  {
    goto LABEL_33;
  }

  [(MBCKSnapshot *)v6 snapshotFormat];
  if (MBSnapshotFormatContainsManifests())
  {
    v7 = objc_opt_new();
    cache = [(MBCKEngine *)self cache];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100072AD8;
    v64[3] = &unk_1003BC450;
    v9 = v7;
    v65 = v9;
    v10 = [cache enumerateChangedDomainNames:v64];

    if (v10)
    {
      if (error)
      {
        v11 = v10;
        *error = v10;
      }

      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v67 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "=cloud-backup= Error enumerating changed domains: %@", buf, 0xCu);
        _MBLog();
      }

      goto LABEL_33;
    }

    cache2 = [(MBCKEngine *)self cache];
    snapshotID = [(MBCKSnapshot *)self->_currentSnapshot snapshotID];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100072AFC;
    v63[3] = &unk_1003BC450;
    v63[4] = self;
    v15 = [cache2 enumerateDomainNamesOfPendingSnapshot:snapshotID domainCallback:v63];

    if (v15)
    {
      if (error)
      {
        v16 = v15;
        *error = v15;
      }

      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v67 = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=cloud-backup= Error enumerating changed already uploaded domains: %@", buf, 0xCu);
        _MBLog();
      }

      goto LABEL_33;
    }

    domainManager = [(MBEngine *)self domainManager];
    if (!domainManager)
    {
      __assert_rtn("[MBCKBackupEngine prepareToUploadChangesWithError:]", "MBCKBackupEngine.m", 1293, "domainManager");
    }

    allObjects = [v9 allObjects];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100072BF0;
    v61[3] = &unk_1003BC950;
    v45 = domainManager;
    v62 = v45;
    obj = [allObjects sortedArrayUsingComparator:v61];

    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    cache3 = [(MBCKEngine *)self cache];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100072C7C;
    v48[3] = &unk_1003BC978;
    v48[4] = self;
    v48[5] = &v57;
    v48[6] = &v53;
    v48[7] = &v49;
    v21 = [cache3 summarizeFileChanges:v48];

    v46 = [NSByteCountFormatter stringFromByteCount:v54[3] countStyle:0];
    v44 = v21;
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *(v58 + 6);
        v24 = v54[3];
        v25 = v50[3];
        v26 = [obj count];
        *buf = 67110146;
        *v67 = v43;
        *&v67[4] = 2048;
        *&v67[6] = v24;
        *&v67[14] = 2112;
        *&v67[16] = v46;
        *&v67[24] = 2048;
        *&v67[26] = v25;
        v68 = 2048;
        v69 = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Going to upload %d file records with size %llu (%@) and %llu delete records for %lu domains", buf, 0x30u);
      }

      v27 = *(v58 + 6);
      v28 = v54[3];
      v41 = v50[3];
      v42 = [obj count];
      v39 = v28;
      v40 = v46;
      v38 = v27;
      _MBLog();
    }

    if (v44)
    {
      if (error)
      {
        v29 = v44;
        *error = v44;
      }
    }

    else
    {
      objc_storeStrong(&self->_domainNamesToUpload, obj);
    }

    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(&v57, 8);

    if (v44)
    {
      goto LABEL_33;
    }
  }

  if (MBSnapshotFormatContainsAssets())
  {
    v57 = 0;
    v53 = 0;
    pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];
    v31 = [pendingSnapshotDB fetchPendingUploadSizeInBytes:&v57 assetCount:&v53 error:error];

    if (!v31)
    {
LABEL_33:
      v36 = 0;
      goto LABEL_34;
    }

    v32 = [NSByteCountFormatter stringFromByteCount:v57 countStyle:0];
    v33 = MBGetDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      *v67 = v53;
      *&v67[8] = 2048;
      *&v67[10] = v57;
      *&v67[18] = 2112;
      *&v67[20] = v32;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Going to upload %llu asset records with size %llu (%@)", buf, 0x20u);
      v39 = v57;
      v40 = v32;
      v38 = v53;
      _MBLog();
    }

    progressModel = [(MBCKEngine *)self progressModel];
    [progressModel willTransferItemsWithSize:v57 count:v53];
  }

  v35 = [(MBCKEngine *)self progressModel:v38];
  [(MBCKModel *)self->_currentSnapshot setProgressModel:v35];

  v36 = 1;
LABEL_34:

  return v36;
}

- (BOOL)uploadAssetsWithError:(id *)error
{
  [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
  if (!MBSnapshotFormatContainsFileLists())
  {
    return 1;
  }

  domainManager = [(MBEngine *)self domainManager];
  pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];
  device = [(MBCKEngine *)self device];
  mountedSnapshotTracker = [(MBCKBackupEngine *)self mountedSnapshotTracker];
  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  settingsContext = [(MBEngine *)self settingsContext];
  plugins = [settingsContext plugins];
  attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100072E80;
  v15[3] = &unk_1003BC8B8;
  v15[4] = self;
  v13 = MBUploadAssetsForBackup(domainManager, pendingSnapshotDB, device, mountedSnapshotTracker, ckOperationTracker, plugins, attemptSummary, error, v15);

  return v13;
}

- (BOOL)uploadChangesWithError:(id *)error
{
  [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
  if (MBSnapshotFormatContainsManifests())
  {
    errorCopy = error;
    if (!error)
    {
      __assert_rtn("[MBCKBackupEngine uploadChangesWithError:]", "MBCKBackupEngine.m", 1370, "error");
    }

    serviceManager = [(MBCKEngine *)self serviceManager];
    if (!serviceManager)
    {
      __assert_rtn("[MBCKBackupEngine uploadChangesWithError:]", "MBCKBackupEngine.m", 1372, "serviceManager");
    }

    ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
    if (!ckOperationTracker)
    {
      __assert_rtn("[MBCKBackupEngine uploadChangesWithError:]", "MBCKBackupEngine.m", 1374, "tracker");
    }

    serviceAccount = [(MBCKEngine *)self serviceAccount];
    if (!serviceAccount)
    {
      __assert_rtn("[MBCKBackupEngine uploadChangesWithError:]", "MBCKBackupEngine.m", 1376, "serviceAccount");
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v5 = v4;
    v6 = objc_opt_new();
    v212 = 0u;
    v213 = 0u;
    v214 = 0u;
    v215 = 0u;
    v7 = self->_domainNamesToUpload;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v212 objects:v231 count:16];
    if (v8)
    {
      v9 = *v213;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v213 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [(MBCKSnapshot *)self->_currentSnapshot manifestForDomainName:*(*(&v212 + 1) + 8 * i)];
          v12 = v11;
          if (v11)
          {
            [v11 setFileUploadError:0];
            [v6 addObject:v12];
          }
        }

        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v212 objects:v231 count:16];
      }

      while (v8);
    }

    v211[0] = 0;
    v211[1] = v211;
    v211[2] = 0x2020000000;
    v211[3] = 0;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    obj = v6;
    v13 = [obj countByEnumeratingWithState:&v207 objects:v230 count:16];
    if (v13)
    {
      v118 = *v208;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v208 != v118)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v207 + 1) + 8 * j);
          v16 = objc_autoreleasePoolPush();
          manifestID = [v15 manifestID];
          domainName = [v15 domainName];
          v19 = MBGetDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = manifestID;
            *&buf[12] = 2112;
            *&buf[14] = domainName;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Reclaiming quota from pending items for manifest %{public}@ (%@)", buf, 0x16u);
            v104 = manifestID;
            v106 = domainName;
            _MBLog();
          }

          cache = [(MBCKEngine *)self cache];
          v206[0] = _NSConcreteStackBlock;
          v206[1] = 3221225472;
          v206[2] = sub_100074378;
          v206[3] = &unk_1003BC9A0;
          v206[4] = v211;
          v21 = [cache summarizeCloudFilesPendingDeleteForManifestID:manifestID callback:v206];

          v22 = dispatch_group_create();
          dispatch_group_enter(v22);
          startBatchDelete = [ckOperationTracker startBatchDelete];
          [startBatchDelete setRetryWhenNetworkDisconnected:0];
          dispatch_group_enter(v22);
          v204[0] = _NSConcreteStackBlock;
          v204[1] = 3221225472;
          v204[2] = sub_100074390;
          v204[3] = &unk_1003BC0B0;
          v24 = v22;
          v205 = v24;
          [v15 deletePendingCloudFilesWithBatchDelete:startBatchDelete completion:v204];
          v199[0] = _NSConcreteStackBlock;
          v199[1] = 3221225472;
          v199[2] = sub_100074398;
          v199[3] = &unk_1003BC9C8;
          v25 = manifestID;
          v200 = v25;
          v26 = domainName;
          v201 = v26;
          selfCopy = self;
          v27 = v24;
          v203 = v27;
          [ckOperationTracker finishBatchDelete:startBatchDelete completion:v199];
          MBGroupWaitForever();

          objc_autoreleasePoolPop(v16);
        }

        v13 = [obj countByEnumeratingWithState:&v207 objects:v230 count:16];
      }

      while (v13);
    }

    startBatchSave = [ckOperationTracker startBatchSave];
    v195 = 0;
    v196 = &v195;
    v197 = 0x2020000000;
    v198 = 0;
    v191 = 0;
    v192 = &v191;
    v193 = 0x2020000000;
    v194 = 0;
    v187 = 0;
    v188 = &v187;
    v189 = 0x2020000000;
    v190 = 0;
    v181 = 0;
    v182 = &v181;
    v183 = 0x3032000000;
    v184 = sub_1000744B8;
    v185 = sub_1000744C8;
    v186 = 0;
    v175 = 0;
    v176 = &v175;
    v177 = 0x3032000000;
    v178 = sub_1000744B8;
    v179 = sub_1000744C8;
    v180 = 0;
    v171 = 0;
    v172 = &v171;
    v173 = 0x2020000000;
    v174 = 1;
    v111 = self->_domainNamesToUpload;
    v28 = MBGetDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(NSArray *)v111 count];
        *buf = 134217984;
        *&buf[4] = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Uploading files for %lu domains", buf, 0xCu);
      }

      v104 = [(NSArray *)v111 count];
      _MBLog();
    }

    v31 = [serviceManager openCacheWithAccount:serviceAccount accessType:2 cached:0 error:errorCopy];
    if (!v31)
    {
      v71 = MBGetDefaultLog();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
      {
        v76 = *errorCopy;
        *buf = 138412290;
        *&buf[4] = v76;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_FAULT, "=cloud-backup= Failed to open readonly cache %@", buf, 0xCu);
        v105 = *errorCopy;
        _MBLog();
      }

      v75 = 0;
      goto LABEL_96;
    }

    obja = v31;
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v32 = v111;
    v33 = [(NSArray *)v32 countByEnumeratingWithState:&v167 objects:v229 count:16];
    v112 = v32;
    if (v33)
    {
      v119 = *v168;
LABEL_31:
      v34 = 0;
      while (1)
      {
        if (*v168 != v119)
        {
          objc_enumerationMutation(v32);
        }

        v35 = *(*(&v167 + 1) + 8 * v34);
        v36 = objc_autoreleasePoolPush();
        v37 = MBGetDefaultLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v35;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Uploading files for %{public}@", buf, 0xCu);
          v104 = v35;
          _MBLog();
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v218 = sub_1000744B8;
        *v219 = sub_1000744C8;
        *&v219[8] = 0;
        v166 = 0;
        v38 = [(MBCKEngine *)self handleCancelation:&v166];
        objc_storeStrong(&v219[8], v166);
        if (v38)
        {
          objc_storeStrong(v182 + 5, *(*&buf[8] + 40));
          v39 = 0;
          *(v172 + 24) = 0;
        }

        else
        {
          v162 = 0;
          v163 = &v162;
          v164 = 0x2020000000;
          v165 = 0;
          v158 = 0;
          v159 = &v158;
          v160 = 0x2020000000;
          v161 = 0;
          v154 = 0;
          v155 = &v154;
          v156 = 0x2020000000;
          v157 = 0;
          v144[0] = _NSConcreteStackBlock;
          v144[1] = 3221225472;
          v144[2] = sub_1000744D0;
          v144[3] = &unk_1003BC9F0;
          v144[4] = self;
          v147 = buf;
          v40 = obja;
          v145 = v40;
          v146 = startBatchSave;
          v148 = &v162;
          v149 = &v195;
          v150 = &v158;
          v151 = &v154;
          v152 = &v191;
          v153 = &v187;
          v41 = [v40 enumerateFileChangesForDomainName:v35 skipUnmodified:1 foundChange:v144];
          v42 = MBGetDefaultLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = v159[3];
            v44 = v155[3];
            v45 = v163[3];
            *v221 = 134218754;
            v222 = v43;
            v223 = 2048;
            v224 = v44;
            v225 = 2048;
            v226 = v45;
            v227 = 2114;
            v228 = v35;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Queued a total of %llu files (%llu) and %llu deletes for %{public}@", v221, 0x2Au);
            v107 = v163[3];
            v108 = v35;
            v104 = v159[3];
            v106 = v155[3];
            _MBLog();
          }

          v46 = *(*&buf[8] + 40);
          if (v46 | v41)
          {
            objc_storeStrong(v182 + 5, v46);
            if (!v182[5])
            {
              objc_storeStrong(v182 + 5, v41);
            }

            v47 = MBGetDefaultLog();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v48 = v182[5];
              *v221 = 138412546;
              v222 = v35;
              v223 = 2112;
              v224 = v48;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to upload files for domain %@: %@", v221, 0x16u);
              v104 = v35;
              v106 = v182[5];
              _MBLog();
            }

            v39 = 0;
            *(v172 + 24) = 0;
          }

          else
          {
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            manifestsByDomainName = [(MBCKSnapshot *)self->_currentSnapshot manifestsByDomainName];
            allValues = [manifestsByDomainName allValues];

            v51 = [allValues countByEnumeratingWithState:&v140 objects:v220 count:16];
            if (v51)
            {
              v52 = *v141;
              while (2)
              {
                for (k = 0; k != v51; k = k + 1)
                {
                  if (*v141 != v52)
                  {
                    objc_enumerationMutation(allValues);
                  }

                  fileUploadError = [*(*(&v140 + 1) + 8 * k) fileUploadError];
                  if (fileUploadError)
                  {
                    *(v172 + 24) = 0;
                    v55 = v182[5];
                    v182[5] = fileUploadError;

                    v32 = v112;
                    goto LABEL_56;
                  }
                }

                v51 = [allValues countByEnumeratingWithState:&v140 objects:v220 count:16];
                v32 = v112;
                if (v51)
                {
                  continue;
                }

                break;
              }
            }

LABEL_56:

            v39 = v182[5] == 0;
          }

          _Block_object_dispose(&v154, 8);
          _Block_object_dispose(&v158, 8);
          _Block_object_dispose(&v162, 8);
        }

        _Block_object_dispose(buf, 8);

        objc_autoreleasePoolPop(v36);
        if (!v39)
        {
          break;
        }

        if (++v34 == v33)
        {
          v33 = [(NSArray *)v32 countByEnumeratingWithState:&v167 objects:v229 count:16];
          if (v33)
          {
            goto LABEL_31;
          }

          break;
        }
      }
    }

    [obja close];
    +[NSDate timeIntervalSinceReferenceDate];
    v57 = v56;
    v58 = MBGetDefaultLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = v57 - v5;
      v60 = v58;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = v32;
        v62 = v192[3];
        v63 = v188[3];
        v64 = v196[3];
        v65 = [(NSArray *)v61 count];
        *buf = 134219008;
        *&buf[4] = v62;
        *&buf[12] = 2048;
        *&buf[14] = v63;
        *&buf[22] = 2048;
        v218 = v64;
        *v219 = 2048;
        *&v219[2] = v65;
        *&v219[10] = 2048;
        *&v219[12] = v59;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Finished queueing %llu files (%llu) and %llu deletes for %lu domains in %.2fs", buf, 0x34u);
        v32 = v112;
      }

      v66 = v192[3];
      v67 = v188[3];
      v109 = v59;
      v107 = v196[3];
      v108 = [(NSArray *)v32 count];
      v104 = v66;
      v106 = v67;
      _MBLog();
    }

    v68 = MBGetDefaultLog();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = startBatchSave;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "=cloud-backup= Waiting for %{public}@ to complete", buf, 0xCu);
      v104 = startBatchSave;
      _MBLog();
    }

    v69 = dispatch_semaphore_create(0);
    v127[0] = _NSConcreteStackBlock;
    v127[1] = 3221225472;
    v127[2] = sub_100074FE8;
    v127[3] = &unk_1003BCA18;
    v134 = &v191;
    v135 = &v187;
    v136 = &v195;
    v70 = v32;
    v128 = v70;
    selfCopy2 = self;
    v130 = ckOperationTracker;
    v131 = serviceManager;
    v132 = serviceAccount;
    v137 = &v171;
    v138 = &v175;
    v139 = &v181;
    v71 = v69;
    v133 = v71;
    [v130 finishBatchSave:startBatchSave completion:v127];
    throughputEstimator = [startBatchSave throughputEstimator];
    throughputs = [throughputEstimator throughputs];
    telemetry = [(MBCKBackupEngine *)self telemetry];
    [telemetry setThroughputs:throughputs];

    if ([(MBCKEngine *)self handleCancelation:errorCopy])
    {
      v75 = 0;
    }

    else
    {
      MBSemaphoreWaitForever();
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v77 = v70;
      v78 = [(NSArray *)v77 countByEnumeratingWithState:&v123 objects:v216 count:16];
      if (v78)
      {
        v79 = *v124;
        while (2)
        {
          for (m = 0; m != v78; m = m + 1)
          {
            if (*v124 != v79)
            {
              objc_enumerationMutation(v77);
            }

            v81 = [(MBCKSnapshot *)self->_currentSnapshot manifestForDomainName:*(*(&v123 + 1) + 8 * m), v104, v106, v107, v108, *&v109];
            fileUploadError2 = [v81 fileUploadError];

            if (fileUploadError2)
            {
              *(v172 + 24) = 0;
              fileUploadError3 = [v81 fileUploadError];
              v84 = v182[5];
              v182[5] = fileUploadError3;

              goto LABEL_83;
            }
          }

          v78 = [(NSArray *)v77 countByEnumeratingWithState:&v123 objects:v216 count:16];
          if (v78)
          {
            continue;
          }

          break;
        }
      }

LABEL_83:

      if ((v172[3] & 1) == 0)
      {
        v85 = v182[5];
        if (!v85)
        {
          v85 = v176[5];
          if (!v85)
          {
            v96 = MBGetDefaultLog();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&_mh_execute_header, v96, OS_LOG_TYPE_FAULT, "success is false and uploadError and retryError are both nil", buf, 2u);
            }

            sub_10012F338(@"success is false and uploadError and retryError are both nil", v97, v98, v99, v100, v101, v102, v103, v104);
            *errorCopy = v75 = 0;
            goto LABEL_95;
          }
        }

        *errorCopy = v85;
      }

      v104 = [NSNumber numberWithUnsignedLongLong:v188[3], v104];
      telemetry2 = [(MBCKBackupEngine *)self telemetry];
      [telemetry2 setQueuedSize:v104];

      v88 = [NSNumber numberWithUnsignedLongLong:v196[3] + v192[3]];
      telemetry3 = [(MBCKBackupEngine *)self telemetry];
      [telemetry3 setQueuedFileCount:v88];

      cache2 = [(MBCKEngine *)self cache];
      v122 = 0;
      v91 = [cache2 countFilesMissingEncryptionKeysWithError:&v122];
      v92 = v122;

      if (v91)
      {
        v93 = MBGetDefaultLog();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v91;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Found %llu files with missing encryption keys during upload", buf, 0xCu);
          _MBLog();
        }

        [MBError errorWithCode:209 format:@"Found %llu files with missing encryption keys during upload", v91];
        *errorCopy = v75 = 0;
      }

      else if (v92)
      {
        v94 = v92;
        v75 = 0;
        *errorCopy = v92;
      }

      else
      {
        v75 = *(v172 + 24);
      }
    }

LABEL_95:

LABEL_96:
    _Block_object_dispose(&v171, 8);
    _Block_object_dispose(&v175, 8);

    _Block_object_dispose(&v181, 8);
    _Block_object_dispose(&v187, 8);
    _Block_object_dispose(&v191, 8);
    _Block_object_dispose(&v195, 8);

    _Block_object_dispose(v211, 8);
    return v75 & 1;
  }

  v75 = 1;
  return v75 & 1;
}

- (BOOL)uploadDomainRecords:(id *)records
{
  currentSnapshot = [(MBCKBackupEngine *)self currentSnapshot];
  [currentSnapshot snapshotFormat];
  v6 = MBSnapshotFormatContainsFileLists();

  if (!v6)
  {
    return 1;
  }

  pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];
  device = [(MBCKEngine *)self device];
  hmacKey = [device hmacKey];
  device2 = [(MBCKEngine *)self device];
  assetIDPrefix = [device2 assetIDPrefix];
  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
  v14 = MBUploadDomainRecordsForBackup(pendingSnapshotDB, hmacKey, assetIDPrefix, ckOperationTracker, attemptSummary, records);

  return v14;
}

- (BOOL)commitSnapshotWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBCKBackupEngine commitSnapshotWithError:]", "MBCKBackupEngine.m", 1703, "error");
  }

  v5 = self->_currentSnapshot;
  if (v5)
  {
    device = [(MBCKEngine *)self device];
    ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
    pendingSnapshotDB = [(MBCKBackupEngine *)self pendingSnapshotDB];
    appManager = [(MBEngine *)self appManager];
    properties = [(MBCKEngine *)self properties];
    attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
    v12 = MBCommitSnapshot(v5, device, ckOperationTracker, pendingSnapshotDB, appManager, properties, attemptSummary, error);

    if (v12)
    {
      [(MBCKBackupEngine *)self _saveNextBackupFSEventState];
      currentSnapshot = self->_currentSnapshot;
      self->_currentSnapshot = 0;

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    [MBError errorWithCode:205 format:@"Attempting to commit a snapshot that doesn't exist"];
    *error = v14 = 0;
  }

  return v14;
}

- (BOOL)_verifySnapshotWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBCKBackupEngine _verifySnapshotWithError:]", "MBCKBackupEngine.m", 1730, "error");
  }

  backupPolicy = [(MBEngine *)self backupPolicy];
  backupReason = [(MBCKBackupEngine *)self backupReason];
  attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
  snapshotFormat = [attemptSummary snapshotFormat];
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  LOBYTE(backupPolicy) = [MBBackupSnapshotIntegrityVerifier shouldRunVerifierWithBackupPolicy:backupPolicy backupReason:backupReason snapshotFormat:snapshotFormat account:serviceAccount];

  telemetry = [(MBCKBackupEngine *)self telemetry];
  v11 = telemetry;
  if (backupPolicy)
  {
    errorCopy = error;
    [telemetry setSnapshotVerificationEnabled:1];

    attemptSummary2 = [(MBCKBackupEngine *)self attemptSummary];
    [attemptSummary2 setSnapshotVerificationRan:1];

    telemetry2 = [(MBCKBackupEngine *)self telemetry];
    [telemetry2 setSnapshotVerificationStatus:@"CANCELLED"];

    v43 = 0.0;
    v14 = [[MBBackupSnapshotIntegrityVerifier alloc] initWithDelegate:self];
    ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
    _scannerMode = [(MBCKBackupEngine *)self _scannerMode];
    enginePolicy = [(MBEngine *)self enginePolicy];
    mountedSnapshotTracker = [(MBCKBackupEngine *)self mountedSnapshotTracker];
    domainManager = [(MBEngine *)self domainManager];
    device = [(MBCKEngine *)self device];
    recordID = [device recordID];
    device2 = [(MBCKEngine *)self device];
    hmacKey = [device2 hmacKey];
    attemptSummary3 = [(MBCKBackupEngine *)self attemptSummary];
    v41 = v14;
    v42 = 0;
    v23 = v14;
    v24 = ckOperationTracker;
    LOBYTE(ckOperationTracker) = [(MBBackupSnapshotIntegrityVerifier *)v23 verifySnapshotAfterCommitWithOperationTracker:ckOperationTracker scanMode:_scannerMode enginePolicy:enginePolicy snapshotTracker:mountedSnapshotTracker domainManager:domainManager deviceRecordID:recordID hmacKey:hmacKey backupAttemptSummary:attemptSummary3 duration:&v43 error:&v42];
    v40 = v42;

    if (ckOperationTracker)
    {
      telemetry3 = [(MBCKBackupEngine *)self telemetry];
      [telemetry3 setSnapshotVerificationStatus:@"PASS"];
      v26 = v40;
    }

    else
    {
      v26 = v40;
      if ([MBError isError:v40 withCodes:500, 555, 0])
      {
        v29 = MBGetDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v45 = v40;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to verify snapshot: %@", buf, 0xCu);
          _MBLog();
        }

        telemetry4 = [(MBCKBackupEngine *)self telemetry];
        [telemetry4 setSnapshotVerificationStatus:@"FAIL"];

        v31 = +[MBTapToRadar sharedInstance];
        persona = [(MBCKEngine *)self persona];
        [v31 reportBackupVerificationFailure:v40 persona:persona];

        v33 = v40;
        v28 = 0;
        *errorCopy = v40;
        goto LABEL_12;
      }

      telemetry3 = [(MBCKBackupEngine *)self telemetry];
      [telemetry3 setSnapshotVerificationCancellationError:v40];
    }

    v34 = v43;
    telemetry5 = [(MBCKBackupEngine *)self telemetry];
    [telemetry5 setSnapshotVerificationDuration:v34];

    v28 = 1;
LABEL_12:

    return v28;
  }

  [telemetry setSnapshotVerificationEnabled:0];

  attemptSummary4 = [(MBCKBackupEngine *)self attemptSummary];
  [attemptSummary4 setSnapshotVerificationRan:0];

  return 1;
}

- (BOOL)finishBackupWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBCKBackupEngine finishBackupWithError:]", "MBCKBackupEngine.m", 1775, "error");
  }

  v5 = [(MBCKBackupEngine *)self _verifySnapshotWithError:?];
  if (v5)
  {
    if ([(MBCKBackupEngine *)self _notifyPluginsOfBackupEnded:0 error:error])
    {
      -[MBCKBackupEngine _unmountSnapshotsAndRemoveThem:](self, "_unmountSnapshotsAndRemoveThem:", [objc_opt_class() _shouldRemoveSnapshotAfterError:0]);
      cache = [(MBCKEngine *)self cache];
      v7 = [cache size];
      telemetry = [(MBCKBackupEngine *)self telemetry];
      [telemetry setCacheSize:v7];

      LOBYTE(v5) = 1;
    }

    else
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to notify plugins of backup ended", v11, 2u);
        _MBLog();
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)resumeWatchdogIfNeeded
{
  lastWatchdogResume = [(MBCKBackupEngine *)self lastWatchdogResume];

  if (!lastWatchdogResume)
  {
    v4 = +[NSDate date];
    [(MBCKBackupEngine *)self setLastWatchdogResume:v4];
  }

  lastWatchdogResume2 = [(MBCKBackupEngine *)self lastWatchdogResume];
  [lastWatchdogResume2 timeIntervalSinceNow];
  v7 = v6;

  v8 = -v7;
  if (v7 >= 0.0)
  {
    v8 = v7;
  }

  if (v8 > 60.0)
  {
    v9 = +[NSDate date];
    [(MBCKBackupEngine *)self setLastWatchdogResume:v9];

    watchdog = [(MBEngine *)self watchdog];
    [watchdog resume];
  }
}

- (BOOL)_notifyPluginsOfBackupEnded:(id)ended error:(id *)error
{
  endedCopy = ended;
  pluginNotifier = [(MBCKBackupEngine *)self pluginNotifier];
  v19 = 0;
  v8 = [pluginNotifier notifyPluginsOfEndingBackupWithError:&v19];
  v9 = v19;
  v10 = v9;
  if (v8)
  {
    v18 = v9;
    v11 = [pluginNotifier notifyPluginsOfEndedBackup:endedCopy error:&v18];
    v12 = v18;

    if (v11)
    {
      v13 = 1;
LABEL_14:
      v10 = v12;
      goto LABEL_15;
    }

    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to notify plugins of endingBackupWithEngine: %@", buf, 0xCu);
      _MBLog();
    }

    if (!error)
    {
      v13 = 0;
      goto LABEL_14;
    }

    v10 = v12;
    goto LABEL_12;
  }

  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to notify plugins of endingBackupWithEngine: %@", buf, 0xCu);
    _MBLog();
  }

  if (error)
  {
LABEL_12:
    v16 = v10;
    v13 = 0;
    *error = v10;
    goto LABEL_15;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (BOOL)fileScanner:(id)scanner isFileAddedOrModified:(id)modified
{
  modifiedCopy = modified;
  cache = [(MBCKEngine *)self cache];
  v7 = [MBCKFile fileWithMBFile:modifiedCopy cache:cache];

  LOBYTE(cache) = [v7 changeType] - 1 < 2;
  return cache;
}

- (id)fileScanner:(id)scanner didFindFile:(id)file
{
  fileCopy = file;
  cache = [(MBCKEngine *)self cache];
  v7 = [MBCKFile fileWithMBFile:fileCopy cache:cache];

  [(MBCKSnapshot *)self->_currentSnapshot type];
  IsFull = MBSnapshotTypeIsFull();
  encryptionKey = [v7 changeTypeForFullBackup:IsFull];
  if (IsFull)
  {
    keyBagValidationState = MBGetDefaultLog();
    if (os_log_type_enabled(keyBagValidationState, OS_LOG_TYPE_INFO))
    {
      domain = [fileCopy domain];
      relativePath = [fileCopy relativePath];
      *buf = 134218498;
      v66 = encryptionKey;
      v67 = 2112;
      v68 = domain;
      v69 = 2112;
      *v70 = relativePath;
      _os_log_impl(&_mh_execute_header, keyBagValidationState, OS_LOG_TYPE_INFO, "=cloud-backup= Detected change type %lu for %@:%@ during full backup", buf, 0x20u);

      domain2 = [fileCopy domain];
      [fileCopy relativePath];
      v55 = v53 = domain2;
      v51 = encryptionKey;
      _MBLog();
    }

LABEL_9:

    if (encryptionKey)
    {
      v18 = encryptionKey == 3;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  keyBagValidationState = [(MBCKBackupEngine *)self keyBagValidationState];
  if (![keyBagValidationState requiresEncryptionKeyRepair]|| encryptionKey)
  {
    goto LABEL_9;
  }

  encryptionKey = [v7 encryptionKey];
  if (!encryptionKey)
  {

    goto LABEL_27;
  }

  device = [(MBCKEngine *)self device];
  keybagManager = [device keybagManager];
  encryptionKey2 = [v7 encryptionKey];
  v17 = [keybagManager hasKeybagForEncryptionKey:encryptionKey2];

  if (v17)
  {
    encryptionKey = 0;
    goto LABEL_27;
  }

  v19 = MBGetDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    domain3 = [v7 domain];
    relativePath2 = [v7 relativePath];
    encryptionKey3 = [v7 encryptionKey];
    *buf = 138412802;
    v66 = domain3;
    v67 = 2112;
    v68 = relativePath2;
    v69 = 2048;
    *v70 = [encryptionKey3 length];
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Found file requiring encryption key repair %@:%@ (sz: %llu)", buf, 0x20u);

    domain4 = [v7 domain];
    relativePath3 = [v7 relativePath];
    encryptionKey4 = [v7 encryptionKey];
    v53 = relativePath3;
    v55 = [encryptionKey4 length];
    v51 = domain4;
    _MBLog();
  }

  attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
  [attemptSummary setEncryptionKeysPendingRepairCount:{objc_msgSend(attemptSummary, "encryptionKeysPendingRepairCount") + 1}];

  encryptionKey = 2;
LABEL_18:
  v27 = [(MBCKEngine *)self serviceAccount:v51];
  device2 = [(MBCKEngine *)self device];
  v64 = 0;
  v29 = [v7 fetchEncryptionKeyWithAccount:v27 device:device2 error:&v64];
  v30 = v64;

  if ((v29 & 1) == 0)
  {
    v31 = MBGetDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      inodeNumber = [fileCopy inodeNumber];
      v32 = [fileCopy size];
      v63 = v30;
      protectionClass = [fileCopy protectionClass];
      domain5 = [fileCopy domain];
      name = [domain5 name];
      relativePath4 = [fileCopy relativePath];
      *buf = 134219522;
      v66 = inodeNumber;
      v67 = 2048;
      v68 = v32;
      v69 = 1024;
      *v70 = protectionClass;
      *&v70[4] = 2048;
      *&v70[6] = encryptionKey;
      v71 = 2112;
      v72 = name;
      v73 = 2112;
      v74 = relativePath4;
      v75 = 2112;
      v76 = v63;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to fetch encryption key for inode:%llu, sz:%lld, pc:%d, changeType:%lu, (%@:%@): %@", buf, 0x44u);

      inodeNumber2 = [fileCopy inodeNumber];
      v37 = [fileCopy size];
      protectionClass2 = [fileCopy protectionClass];
      domain6 = [fileCopy domain];
      name2 = [domain6 name];
      relativePath5 = [fileCopy relativePath];
      v60 = v63;
      v57 = encryptionKey;
      v58 = name2;
      v54 = v37;
      v56 = protectionClass2;
      v52 = inodeNumber2;
      _MBLog();

      v30 = v63;
    }

    if ([MBError isError:v30 withCode:209])
    {
      telemetry = [(MBCKBackupEngine *)self telemetry];
      [telemetry _countMissingEncryptionKeyForFile:v7];
    }
  }

  isDirectory = [v7 isDirectory];
  telemetry2 = [(MBCKBackupEngine *)self telemetry];
  v44 = telemetry2;
  if (isDirectory)
  {
    backupDirectoryCount = [telemetry2 backupDirectoryCount];
    v46 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [backupDirectoryCount integerValue] + 1);
    telemetry3 = [(MBCKBackupEngine *)self telemetry];
    [telemetry3 setBackupDirectoryCount:v46];
  }

  else
  {
    backupDirectoryCount = [telemetry2 backupFileCount];
    v46 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [backupDirectoryCount integerValue] + 1);
    telemetry3 = [(MBCKBackupEngine *)self telemetry];
    [telemetry3 setBackupFileCount:v46];
  }

LABEL_27:
  v48 = [(MBCKEngine *)self cache:v51];
  v49 = [v48 fileSeen:v7 changeType:encryptionKey];

  return v49;
}

- (NSString)description
{
  v3 = objc_opt_class();
  Name = class_getName(v3);
  [(MBCKBackupEngine *)self backupState];
  v5 = MBCKStringForBackupState();
  v6 = [NSString stringWithFormat:@"<%p: %s, state:%@, cancelled:%d>", self, Name, v5, [(MBEngine *)self isCanceled]];

  return v6;
}

- (BOOL)shouldCancelVerification
{
  [(MBCKBackupEngine *)self resumeWatchdogIfNeeded];

  return [(MBCKEngine *)self handleCancelation:0];
}

- (BOOL)shouldCancelTranscription
{
  [(MBCKBackupEngine *)self resumeWatchdogIfNeeded];

  return [(MBCKEngine *)self handleCancelation:0];
}

- (id)_createDomainTranscriberForAPFSSnapshots:(id)snapshots error:(id *)error
{
  snapshotsCopy = snapshots;
  persona = [(MBCKEngine *)self persona];
  if (!persona)
  {
    __assert_rtn("[MBCKBackupEngine _createDomainTranscriberForAPFSSnapshots:error:]", "MBCKBackupEngine.m", 1976, "persona");
  }

  v7 = persona;
  currentSnapshot = [(MBCKBackupEngine *)self currentSnapshot];
  if (!currentSnapshot)
  {
    __assert_rtn("[MBCKBackupEngine _createDomainTranscriberForAPFSSnapshots:error:]", "MBCKBackupEngine.m", 1979, "currentSnapshot");
  }

  v9 = currentSnapshot;
  currentSnapshot2 = [(MBCKBackupEngine *)self currentSnapshot];
  commitID = [currentSnapshot2 commitID];

  if (!commitID)
  {
    __assert_rtn("[MBCKBackupEngine _createDomainTranscriberForAPFSSnapshots:error:]", "MBCKBackupEngine.m", 1982, "currentSnapshotCommitID");
  }

  v35 = 0;
  v12 = [_TtC7backupd11MBVolumeMap createOrLoadForPersona:v7 outLoadType:&v35 error:error];
  if (v12)
  {
    v13 = [_TtC7backupd11MBVolumeMap loadTypeToStringWithLoadType:v35];
    attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
    [attemptSummary setVolumeMapLoadType:v13];

    if ([v9 snapshotFormat] == 3)
    {
      selfCopy = 0;
    }

    else
    {
      selfCopy = self;
    }

    v16 = selfCopy;
    v32 = [MBDomainTranscriber alloc];
    snapshotDatabaseDirectory = [v7 snapshotDatabaseDirectory];
    _scannerMode = [(MBCKBackupEngine *)self _scannerMode];
    enginePolicy = [(MBEngine *)self enginePolicy];
    v17 = v9;
    snapshotFormat = [v9 snapshotFormat];
    [(MBCKEngine *)self device];
    v19 = v33 = v7;
    keyBagValidationState = [(MBCKBackupEngine *)self keyBagValidationState];
    v21 = commitID;
    requiresEncryptionKeyRepair = [keyBagValidationState requiresEncryptionKeyRepair];
    attemptSummary2 = [(MBCKBackupEngine *)self attemptSummary];
    LOBYTE(v28) = requiresEncryptionKeyRepair;
    commitID = v21;
    v24 = snapshotFormat;
    v9 = v17;
    v25 = [(MBDomainTranscriber *)v32 initWithPendingCommitID:v21 snapshotDatabaseDirectory:snapshotDatabaseDirectory scanMode:_scannerMode enginePolicy:enginePolicy snapshotFormat:v24 device:v19 volumeMap:v12 shouldRepairEncryptionKeys:v28 snapshotTracker:snapshotsCopy attemptSummary:attemptSummary2 compatibilityDelegate:v16 delegate:self];

    v7 = v33;
  }

  else
  {
    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to load volume map: %@", buf, 0xCu);
      _MBLog();
    }

    v25 = 0;
    if (error)
    {
      *error = 0;
    }
  }

  return v25;
}

- (BOOL)_shouldBackupUsingFSEvents
{
  v3 = _os_feature_enabled_impl();
  type = [(MBCKSnapshot *)self->_currentSnapshot type];
  result = 0;
  if (v3 && type == 1)
  {
    if (MBSnapshotsAreTransitioningFormats(self->_previousSnapshot, self->_currentSnapshot))
    {
      return 0;
    }

    [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
    if (MBSnapshotFormatContainsManifests() && (-[MBCKEngine cache](self, "cache"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 previousSnapshotHasSkippedFiles], v6, v7))
    {
      v8 = MBGetDefaultLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:

        return 0;
      }

      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Previous snapshot has skipped files, not using FSEvents", buf, 2u);
    }

    else
    {
      keyBagValidationState = [(MBCKBackupEngine *)self keyBagValidationState];
      requiresEncryptionKeyRepair = [keyBagValidationState requiresEncryptionKeyRepair];

      if (!requiresEncryptionKeyRepair)
      {
        return 1;
      }

      v8 = MBGetDefaultLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Device requires encryption key repair. Not using FSEvents", v11, 2u);
    }

    _MBLog();
    goto LABEL_12;
  }

  return result;
}

- (id)_fetchPreviousBackupFSEventState
{
  persona = [(MBCKEngine *)self persona];
  v3 = [persona copyPreferencesValueForKey:@"FSEventState" class:objc_opt_class()];

  v4 = [[MBFSEventState alloc] initWithDictionaryRepresentation:v3];
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Fetched previous FSEvent state of: %@", buf, 0xCu);
    _MBLog();
  }

  return v4;
}

- (void)_saveNextBackupFSEventState
{
  v3 = self->_nextBackupFSEventState;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Updating FSEvent state to: %@", buf, 0xCu);
    _MBLog();
  }

  persona = [(MBCKEngine *)self persona];
  dictionaryRepresentation = [(MBFSEventState *)v3 dictionaryRepresentation];
  [persona setPreferencesValue:dictionaryRepresentation forKey:@"FSEventState"];
}

- (void)_sendTelemetryForStateChange:(unint64_t)change start:(id)start end:(id)end
{
  endCopy = end;
  startCopy = start;
  [MBCKStatusReporter reportBackupStateChangeForEngine:self state:change start:startCopy end:endCopy];
  [MBPowerLog reportBackupStateChangeForEngine:self state:change start:startCopy end:endCopy];
  [MBTelemetry sendBackupEngineStateChangeStatus:self state:change start:startCopy end:endCopy];
}

- (void)_finishCollectingTelemetry
{
  [(MBCKBackupEngine *)self backupReason];
  if (MBBackupReasonIsScheduled())
  {
    ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
    ckOperationPolicy = [ckOperationTracker ckOperationPolicy];
    cellularAccess = [ckOperationPolicy cellularAccess];

    if (cellularAccess)
    {
      +[MBCKManager inexpensiveCellularBalance];
      v6 = [NSNumber numberWithDouble:?];
      telemetry = [(MBCKBackupEngine *)self telemetry];
      [telemetry setRemainingCellularBalance:v6];
    }
  }

  estimator = [(MBCKBackupEngine *)self estimator];
  [estimator progressAtLastUpdate];
  if (v9 > 0.0)
  {
    minutesRemaining = [estimator minutesRemaining];
    if (minutesRemaining != -1)
    {
      v11 = [NSNumber numberWithUnsignedInteger:minutesRemaining];
      telemetry2 = [(MBCKBackupEngine *)self telemetry];
      [telemetry2 setMinutesRemaining:v11];
    }
  }

  serviceManager = [(MBCKEngine *)self serviceManager];
  networkConnectivity = [serviceManager networkConnectivity];
  v16 = v15;
  telemetry3 = [(MBCKBackupEngine *)self telemetry];
  [telemetry3 setNetworkConnectivityAtFinish:{networkConnectivity, v16}];

  engineError = [(MBCKEngine *)self engineError];
  attemptSummary = [(MBCKBackupEngine *)self attemptSummary];
  [attemptSummary setError:engineError];

  cache = [(MBCKEngine *)self cache];
  v21 = [cache size];
  unsignedLongLongValue = [v21 unsignedLongLongValue];
  attemptSummary2 = [(MBCKBackupEngine *)self attemptSummary];
  [attemptSummary2 setLegacyCacheSize:unsignedLongLongValue];

  v45 = 0;
  persona = [(MBCKEngine *)self persona];
  snapshotDatabaseDirectory = [persona snapshotDatabaseDirectory];
  v44 = 0;
  v26 = MBCalculateDiskUsageForSnapshotDirectory(snapshotDatabaseDirectory, &v45, &v44);
  v27 = v44;

  if (v26 < 0)
  {
    attemptSummary4 = MBGetDefaultLog();
    if (os_log_type_enabled(attemptSummary4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v47 = v27;
      _os_log_impl(&_mh_execute_header, attemptSummary4, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to calculate disk usage for snapshot directory: %@", buf, 0xCu);
      _MBLog();
    }
  }

  else
  {
    attemptSummary3 = [(MBCKBackupEngine *)self attemptSummary];
    [attemptSummary3 setSnapshotDirectorySize:v26];

    v29 = v45;
    attemptSummary4 = [(MBCKBackupEngine *)self attemptSummary];
    [attemptSummary4 setSnapshotDirectoryCloneSize:v29];
  }

  v31 = MBPeakProcessMemoryUsage();
  attemptSummary5 = [(MBCKBackupEngine *)self attemptSummary];
  [attemptSummary5 setPeakMemoryUsage:v31];

  if (MBIsInternalInstall())
  {
    attemptSummary6 = [(MBCKBackupEngine *)self attemptSummary];
    commitID = [attemptSummary6 commitID];

    if (commitID)
    {
      attemptSummary7 = [(MBCKBackupEngine *)self attemptSummary];
      persona2 = [(MBCKEngine *)self persona];
      snapshotDatabaseDirectory2 = [persona2 snapshotDatabaseDirectory];
      attemptSummary8 = [(MBCKBackupEngine *)self attemptSummary];
      commitID2 = [attemptSummary8 commitID];
      v43 = 0;
      v40 = MBAppendAttemptSummaryToPlist(attemptSummary7, snapshotDatabaseDirectory2, commitID2, &v43);
      v41 = v43;

      if ((v40 & 1) == 0 && !dword_100421634 && !atomic_fetch_add_explicit(&dword_100421634, 1u, memory_order_relaxed))
      {
        v42 = MBGetDefaultLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v47 = v41;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, "=cloud-backup= =cloud-backup= Failed to append attempt summary to plist: %@", buf, 0xCu);
          _MBLog();
        }
      }
    }
  }
}

- (NSString)pendingSnapshotID
{
  currentSnapshot = [(MBCKBackupEngine *)self currentSnapshot];
  snapshotID = [currentSnapshot snapshotID];

  return snapshotID;
}

- (void)syncProgress:(double)progress
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    progressCopy = progress;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "=cloud-backup= BYClientDaemonCloudSyncProtocol sync progress: %f", buf, 0xCu);
    _MBLog();
  }
}

- (void)syncCompletedWithErrors:(id)errors
{
  errorsCopy = errors;
  v4 = [errorsCopy count];
  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = errorsCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "=cloud-backup= BYClientDaemonCloudSyncProtocol syncCompletedWithErrors: %@", buf, 0xCu);
LABEL_6:
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "=cloud-backup= BYClientDaemonCloudSyncProtocol sync completed.", buf, 2u);
    goto LABEL_6;
  }
}

@end