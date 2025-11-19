@interface MBCKBackupEngine
+ (BOOL)_shouldRemoveSnapshotAfterError:(id)a3;
+ (BOOL)_startOTABackupWithAccount:(id)a3 error:(id *)a4;
+ (BOOL)_stopOTABackupWithAccount:(id)a3 error:(id *)a4;
- (BOOL)_handleSkippedFilesWithError:(id *)a3;
- (BOOL)_notifyPluginsOfBackupEnded:(id)a3 error:(id *)a4;
- (BOOL)_shouldBackupUsingFSEvents;
- (BOOL)_shouldSimulateCancelationForState:(id)a3;
- (BOOL)_verifySnapshotWithError:(id *)a3;
- (BOOL)cancelWithError:(id)a3;
- (BOOL)checkIfBackupHasKeybagWithUUID:(id)a3;
- (BOOL)commitSnapshotWithError:(id *)a3;
- (BOOL)createVolumeSnapshots:(id *)a3;
- (BOOL)fileScanner:(id)a3 isFileAddedOrModified:(id)a4;
- (BOOL)findChangesWithError:(id *)a3;
- (BOOL)finishBackupWithError:(id *)a3;
- (BOOL)prepareToUploadChangesWithError:(id *)a3;
- (BOOL)reserveQuotaWithError:(id *)a3;
- (BOOL)runWithError:(id *)a3;
- (BOOL)setUpWithError:(id *)a3;
- (BOOL)shouldCancelTranscription;
- (BOOL)shouldCancelVerification;
- (BOOL)synchronizeFileListsWithError:(id *)a3;
- (BOOL)uploadAssetsWithError:(id *)a3;
- (BOOL)uploadChangesWithError:(id *)a3;
- (BOOL)uploadDomainRecords:(id *)a3;
- (MBCKBackupEngine)initWithReason:(int64_t)a3 settingsContext:(id)a4 debugContext:(id)a5 serviceManager:(id)a6;
- (MBCKBackupEngine)initWithReason:(int64_t)a3 settingsContext:(id)a4 debugContext:(id)a5 serviceManager:(id)a6 domainManager:(id)a7;
- (NSString)description;
- (NSString)pendingSnapshotID;
- (id)_createDomainTranscriberForAPFSSnapshots:(id)a3 error:(id *)a4;
- (id)_fetchPreviousBackupFSEventState;
- (id)fileScanner:(id)a3 didFindFile:(id)a4;
- (id)powerAssertionName;
- (int64_t)_snapshotFormatForAccount:(id)a3 previousSnapshot:(id)a4 error:(id *)a5;
- (void)_finishCollectingTelemetry;
- (void)_handleStateTransition;
- (void)_releaseLockAssertion;
- (void)_saveLastPendingSnapshotSize:(unint64_t)a3;
- (void)_saveNextBackupFSEventState;
- (void)_sendTelemetryForStateChange:(unint64_t)a3 start:(id)a4 end:(id)a5;
- (void)_tearDown;
- (void)cleanUpAfterError:(id)a3;
- (void)dealloc;
- (void)makeStateTransition;
- (void)resumeWatchdogIfNeeded;
- (void)setBackupState:(unint64_t)a3;
- (void)syncCompletedWithErrors:(id)a3;
- (void)syncProgress:(double)a3;
@end

@implementation MBCKBackupEngine

- (MBCKBackupEngine)initWithReason:(int64_t)a3 settingsContext:(id)a4 debugContext:(id)a5 serviceManager:(id)a6 domainManager:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v12 account];
  if (!v16)
  {
    __assert_rtn("[MBCKBackupEngine initWithReason:settingsContext:debugContext:serviceManager:domainManager:]", "MBCKBackupEngine.m", 120, "account");
  }

  v17 = v16;
  v29.receiver = self;
  v29.super_class = MBCKBackupEngine;
  v18 = [(MBCKEngine *)&v29 initWithSettingsContext:v12 debugContext:v13 domainManager:v15];
  v19 = v18;
  if (v18)
  {
    [(MBCKEngine *)v18 setServiceManager:v14];
    [(MBCKBackupEngine *)v19 setBackupState:1];
    v19->_backupReason = a3;
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

- (MBCKBackupEngine)initWithReason:(int64_t)a3 settingsContext:(id)a4 debugContext:(id)a5 serviceManager:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 account];
  if (!v13)
  {
    __assert_rtn("[MBCKBackupEngine initWithReason:settingsContext:debugContext:serviceManager:]", "MBCKBackupEngine.m", 141, "account");
  }

  v14 = v13;
  v15 = [MBDomainManager alloc];
  v16 = [v14 persona];
  v17 = [(MBDomainManager *)v15 initWithPersona:v16];

  v18 = [(MBCKBackupEngine *)self initWithReason:a3 settingsContext:v10 debugContext:v11 serviceManager:v12 domainManager:v17];
  return v18;
}

- (void)dealloc
{
  [(MBCKBackupEngine *)self _releaseLockAssertion];
  [(MBCKBackupEngine *)self _unmountSnapshotsAndRemoveThem:1];
  v3 = [(MBCKBackupEngine *)self pendingSnapshotDB];
  [v3 close:0];

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

- (void)setBackupState:(unint64_t)a3
{
  self->_backupState = a3;
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

- (BOOL)cancelWithError:(id)a3
{
  v7.receiver = self;
  v7.super_class = MBCKBackupEngine;
  v4 = [(MBCKEngine *)&v7 cancelWithError:a3];
  if (!v4)
  {
    v5 = [(MBCKBackupEngine *)self cacheDeleteRequest];
    [v5 cancel];
  }

  return v4;
}

+ (BOOL)_shouldRemoveSnapshotAfterError:(id)a3
{
  if (!MBIsInternalInstall())
  {
    return 1;
  }

  v4 = +[MBBehaviorOptions sharedOptions];
  v5 = v4;
  if (a3)
  {
    v6 = [v4 shouldKeepFileSystemSnapshotAfterBackupFailure];
  }

  else
  {
    v6 = [v4 shouldKeepFileSystemSnapshotAfterBackupSuccess];
  }

  v7 = v6 ^ 1;

  return v7;
}

- (void)cleanUpAfterError:(id)a3
{
  v4 = a3;
  if ([MBError isCKError:v4 withCode:25])
  {
    v5 = [(MBCKEngine *)self device];
    v6 = [(MBCKEngine *)self ckOperationTracker];
    v7 = [(MBCKEngine *)self persona];
    MBResetPendingSnapshot(v5, v6, v7);
  }

  v8 = [(MBCKEngine *)self ckOperationTracker];
  [v8 drain];

  -[MBCKBackupEngine _unmountSnapshotsAndRemoveThem:](self, "_unmountSnapshotsAndRemoveThem:", [objc_opt_class() _shouldRemoveSnapshotAfterError:v4]);
  v9 = self->_currentSnapshot;
  if ([(MBCKBackupEngine *)self backupState]== 3)
  {
    v10 = [MBError isResumableCacheRefreshError:v4];
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
    v11 = [(MBCKEngine *)self cache];
    v12 = [v11 removeAllOrphanedItemsForSnapshot:v9];

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
  [(MBCKEngine *)&v15 cleanUpAfterError:v4, v14];
}

- (BOOL)runWithError:(id *)a3
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
  v6 = [(MBEngine *)self isCanceled];
  if (v5 && v6)
  {
    [v5 cancelSync];
  }

  [(MBCKBackupEngine *)self _tearDown];
  v7 = [(MBCKEngine *)self hasError];
  if (v7)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(MBCKEngine *)self engineError];
      v10 = [MBError loggableDescriptionForError:v9];
      v11 = [(MBCKEngine *)self engineError];
      *buf = 138543618;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=cloud-backup= Backup failed: %{public}@, %@", buf, 0x16u);

      v12 = [(MBCKEngine *)self engineError];
      v13 = [MBError loggableDescriptionForError:v12];
      [(MBCKEngine *)self engineError];
      v23 = v22 = v13;
      _MBLog();
    }

    v14 = [(MBCKEngine *)self engineError];
    v15 = v14;
    if (a3)
    {
      v16 = v14;
      *a3 = v15;
    }

    v17 = [(MBCKEngine *)self persona:v22];
    v18 = [v17 volumeMountPoint];
    v19 = [NSNumber numberWithUnsignedLongLong:MBFreeDiskSpaceForVolume()];
    v20 = [(MBCKBackupEngine *)self telemetry];
    [v20 setFreeDiskSpace:v19];
  }

  return v7 ^ 1;
}

- (void)_tearDown
{
  v3 = [(MBCKBackupEngine *)self pendingSnapshotDB];

  if (v3)
  {
    v4 = [(MBCKBackupEngine *)self pendingSnapshotDB];
    v8 = 0;
    [v4 close:&v8];
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
  v4 = [(MBCKEngine *)self cache];
  [v4 beginBatch];

  switch([(MBCKBackupEngine *)self backupState])
  {
    case 1uLL:
      [(MBCKBackupEngine *)self setBackupState:2];
      v5 = [(MBCKEngine *)self multistateRetryStrategy];
      [v5 reset];

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
      v7 = [(MBCKBackupEngine *)self telemetry];
      [v7 _startCollectingWiFiQualityMeasurements];

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
        v9 = [(MBCKEngine *)self engineError];
        v10 = [MBError isCancelledError:v9];

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
        v8 = MBGetDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Backup finished successfully", buf, 2u);
          _MBLog();
        }

LABEL_6:
      }

LABEL_20:
      backupReason = self->_backupReason;
      if (MBBackupReasonIsScheduled())
      {
        v12 = [(MBCKEngine *)self engineError];
        v13 = [MBError isXPCActivityDeferredError:v12];

        if (v13)
        {
          v14 = [(MBCKEngine *)self engineError];
          v15 = [MBError errorWithCode:223 error:v14 format:@"Backup canceled (deferred)"];
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

      v22 = [(MBCKBackupEngine *)self attemptSummary];
      [v22 trackDuration:v16 forEngineState:v20];

      [(MBCKBackupEngine *)self _sendTelemetryForStateChange:[(MBCKBackupEngine *)self backupState] start:v3 end:v18];
      if ([(MBCKEngine *)self isFinished])
      {
        if ([(MBCKBackupEngine *)self backupState]>= 3 && [(MBCKBackupEngine *)self backupState]!= 8)
        {
          v23 = [(MBCKEngine *)self engineError];
          [(MBCKBackupEngine *)self _notifyPluginsOfBackupEnded:v23 error:0];
        }

        [(MBCKBackupEngine *)self _finishCollectingTelemetry:v26];
        v24 = [(MBCKEngine *)self progressModel];
        [v24 ended];
      }

      v25 = [(MBCKEngine *)self cache];
      [v25 flush];

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
      v8 = [(MBCKBackupEngine *)self telemetry];
      [v8 _stopCollectingWiFiQualityMeasurements];
      goto LABEL_6;
    default:
      __assert_rtn("[MBCKBackupEngine _handleStateTransition]", "MBCKBackupEngine.m", 277, "0");
  }
}

- (BOOL)_shouldSimulateCancelationForState:(id)a3
{
  v4 = a3;
  if (MBIsInternalInstall() && ![(MBCKEngine *)self isFinished])
  {
    v6 = +[MBBehaviorOptions sharedOptions];
    v7 = [v6 engineStateToCancelBackupAfter];
    v5 = [v7 isEqualToString:v4];
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

- (int64_t)_snapshotFormatForAccount:(id)a3 previousSnapshot:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(MBCKBackupEngine *)self backupState]!= 2)
  {
    __assert_rtn("[MBCKBackupEngine _snapshotFormatForAccount:previousSnapshot:error:]", "MBCKBackupEngine.m", 463, "self.backupState == kMBCKBackupStateSetup");
  }

  v10 = [MBBackupCloudFormatPolicy snapshotFormatForAccount:v8 previousSnapshot:v9 error:a5];

  return v10;
}

- (BOOL)setUpWithError:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 474, "error");
  }

  v5 = [(MBCKEngine *)self serviceManager];
  if (!v5)
  {
    __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 476, "serviceManager");
  }

  v6 = v5;
  v7 = [(MBCKEngine *)self serviceAccount];
  if (!v7)
  {
    __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 478, "serviceAccount");
  }

  v8 = v7;
  v9 = [(MBEngine *)self domainManager];

  if (v9)
  {
    v209 = 0;
    v10 = [(MBCKEngine *)self persona];
    v11 = [v10 getBooleanValueForKey:@"HasDeferredDiscountingQuota" keyExists:&v209];

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

    v15 = [(MBCKBackupEngine *)self cacheDeleteRequest];
    if (v15)
    {
      [(MBCKBackupEngine *)self setCacheDeleteRequest:v15];
    }

    else
    {
      v19 = [MBCacheDeleteRequest purgeRequestForCloudBackupReason:self->_backupReason];
      [(MBCKBackupEngine *)self setCacheDeleteRequest:v19];
    }

    v20 = [(MBCKBackupEngine *)self cacheDeleteRequest];

    if (v20)
    {
      v21 = [(MBCKBackupEngine *)self cacheDeleteRequest];
      v22 = [v21 purge];

      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v211 = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "=cloud-backup= CacheDelete purged %llu bytes", buf, 0xCu);
        v178 = v22;
        _MBLog();
      }
    }

    v207.receiver = self;
    v207.super_class = MBCKBackupEngine;
    if (![(MBCKEngine *)&v207 setUpWithError:a3, v178])
    {
LABEL_49:
      LOBYTE(v41) = 0;
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
      v26 = [v25 checkIfCloudBackupIsAllowed:a3];

      if (v26)
      {
        v27 = [(MBCKEngine *)self ckOperationTracker];
        if (!v27)
        {
          __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 522, "tracker");
        }

        v28 = v27;
        v29 = [v27 ckOperationPolicy];
        v30 = [v29 cellularAccess];

        if (v30)
        {
          if ([v30 allowsExpensiveNetworkAccess])
          {
            v31 = 2;
          }

          else
          {
            v31 = 1;
          }

          v32 = [(MBCKBackupEngine *)self telemetry];
          [v32 setAllowedCellularCost:v31];
        }

        v33 = [v6 networkConnectivity];
        v35 = v34;
        v36 = [(MBCKBackupEngine *)self telemetry];
        [v36 setNetworkConnectivityAtStart:{v33, v35}];

        v37 = MBGetChargingType();
        v38 = [(MBCKBackupEngine *)self telemetry];
        [v38 setChargingType:v37];

        v39 = [(MBCKEngine *)self cache];
        if (!v39)
        {
          __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 533, "cache");
        }

        v40 = v39;
        v206 = 0;
        LODWORD(v41) = [MBCKKeyBag validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:v28 state:&v206 error:a3];
        v42 = v206;
        if (!v41)
        {
          goto LABEL_86;
        }

        v199 = v30;
        v43 = [(MBCKBackupEngine *)self attemptSummary];
        [v43 trackKeyBagValidationState:v42];

        [(MBCKBackupEngine *)self setKeyBagValidationState:v42];
        v44 = [MBCKAccount fetchAccountWithOperationTracker:v28 cache:v40 create:1 error:a3];
        if (!v44)
        {
          if (!*a3)
          {
            __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 549, "*error != nil");
          }

          v51 = 0;
          LOBYTE(v41) = 0;
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
          v47 = [v6 openCacheWithAccount:v8 accessType:1 error:a3];

          if (!v47)
          {
            v40 = 0;
            LOBYTE(v41) = 0;
            v51 = v45;
            goto LABEL_84;
          }

          [(MBCKEngine *)self setCache:v47];
        }

        else
        {
          v47 = v40;
        }

        if ([v45 fetchDevicesWithOperationTracker:v28 error:{a3, v179}])
        {
          if (![(MBCKEngine *)self handleCancelation:a3])
          {
            v197 = v28;
            v52 = [(MBCKEngine *)self context];
            v53 = [v52 backupUDID];
            v54 = [v45 backupsDisabledFromAnotherDeviceForUUID:v53];

            if (!v54)
            {
              v51 = v45;
              v40 = v47;
              v28 = v197;
              goto LABEL_68;
            }

            v55 = self->_backupReason;
            IsManual = MBBackupReasonIsManual();
            v41 = MBGetDefaultLog();
            v57 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
            if (IsManual)
            {
              if (v57)
              {
                v58 = [(MBCKEngine *)self context];
                v59 = [v58 backupUDID];
                *buf = 138412290;
                v211 = v59;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Disabled from another device triggered manually. Resetting the cache - cached device:%@", buf, 0xCu);

                v60 = [(MBCKEngine *)self context];
                v180 = [v60 backupUDID];
                _MBLog();
              }

              v195 = [v6 resetCacheWithAccount:v8 error:a3];
              v40 = [v6 openCacheWithAccount:v8 accessType:1 error:a3];

              [(MBCKEngine *)self setCache:v40];
              v41 = [(MBCKEngine *)self cache];
              v28 = v197;
              v61 = [MBCKAccount fetchAccountWithOperationTracker:v197 cache:v41 error:a3];

              v51 = v61;
              LOBYTE(v41) = 0;
              if (v61)
              {
                v42 = v198;
                v30 = v199;
                if (!v195 || !v40)
                {
                  goto LABEL_85;
                }

LABEL_68:
                v204 = 0;
                v62 = v51;
                [(MBCKEngine *)self context];
                v64 = v63 = v28;
                v65 = [v64 backupUDID];
                v196 = v62;
                v66 = [v62 setupDeviceWithOperationTracker:v63 deviceUUID:v65 passcode:0 hasNewOTAKeyBag:&v204 error:a3];

                if ([v40 invalidated])
                {
                  v67 = [v6 openCacheWithAccount:v8 accessType:1 error:a3];

                  if (!v67)
                  {
                    v40 = 0;
                    goto LABEL_88;
                  }

                  [(MBCKEngine *)self setCache:v67];
                  v40 = v67;
                }

                v30 = v199;
                v68 = [(MBCKBackupEngine *)self telemetry];
                v69 = [v68 createdNewOTAKeybag];

                if ((v69 & 1) == 0)
                {
                  v70 = v204;
                  v71 = [(MBCKBackupEngine *)self telemetry];
                  [v71 setCreatedNewOTAKeybag:v70];
                }

                if ((v66 & 1) == 0)
                {
                  v28 = v197;
                  if (!*a3)
                  {
                    __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 612, "*error != nil");
                  }

                  LOBYTE(v41) = 0;
                  goto LABEL_121;
                }

                v72 = [(MBCKEngine *)self context];
                v73 = [v72 backupUDID];
                v74 = [v196 deviceForUUID:v73];
                [(MBCKEngine *)self setDevice:v74];

                v75 = [(MBCKEngine *)self device];

                if (!v75)
                {
                  v41 = MBGetDefaultLog();
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "=cloud-backup= Could not find device after setup, failing backup attempt", buf, 2u);
                    _MBLog();
                  }

                  [MBError errorWithCode:204 format:@"Could not find device after setup"];
                  *a3 = LOBYTE(v41) = 0;
                  goto LABEL_120;
                }

                v76 = [(MBCKEngine *)self context];
                v77 = [v76 backupUDID];
                v78 = MBDeviceUUID();
                v79 = [v77 isEqualToString:v78];

                if (v79)
                {
                  buf[0] = 0;
                  v80 = [(MBCKEngine *)self device];
                  v41 = [MBCKJournal journalForDevice:v80 cache:v40 engine:self];

                  v28 = v197;
                  if ([v41 replayJournalResetOrDisableWithOperationTracker:v197 serviceManager:v6 disable:buf error:a3])
                  {
                    if (buf[0] == 1)
                    {
                      [v6 setBackupEnabled:0 account:v8 connection:0];
                      v81 = @"Backups disabled from server action";
LABEL_98:
                      v42 = v198;
                      v30 = v199;
                      *a3 = [MBError errorWithCode:204 format:v81];
LABEL_99:

                      LOBYTE(v41) = 0;
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

                    v86 = [v6 openCacheWithAccount:v8 accessType:1 error:a3];

                    if (!v86)
                    {
                      v40 = 0;
                      v28 = v197;
                      v42 = v198;
                      v30 = v199;
                      goto LABEL_99;
                    }

                    [(MBCKEngine *)self setCache:v86];
                    v40 = v86;
                  }

                  v30 = v199;
                  if ([v40 invalidated])
                  {
                    __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 643, "!cache.invalidated");
                  }
                }

                else
                {
                  v30 = v199;
                }

                v87 = [(MBCKEngine *)self device];
                v88 = [v87 shouldDeleteDevice];

                if (v88)
                {
                  v89 = MBGetDefaultLog();
                  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Existing backup history has corrupt data. Deleting and starting a fresh backup", buf, 2u);
                    _MBLog();
                  }

                  v90 = [(MBCKEngine *)self context];
                  v91 = [v90 backupUDID];
                  v92 = [v196 deleteDeviceWithOperationTracker:v197 deviceUUID:v91 error:a3];

                  if (v92)
                  {
                    v93 = MBGetDefaultLog();
                    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Resetting the cache - shouldDeleteDevice", buf, 2u);
                      _MBLog();
                    }

                    [v6 resetCacheWithAccount:v8 error:a3];
                    v203 = 0;
                    v94 = [v6 openCacheWithAccount:v8 accessType:1 error:&v203];
                    v41 = v203;

                    [(MBCKEngine *)self setCache:v94];
                    [(MBCKEngine *)self setDevice:0];
                    v95 = [MBError errorWithCode:17 format:@"Device deleted, please retry"];
                    v96 = v95;

                    LOBYTE(v41) = 0;
                    *a3 = v95;
                    v40 = v94;
                    goto LABEL_120;
                  }

                  goto LABEL_119;
                }

                v97 = [(MBCKEngine *)self device];
                if ([v97 hasFetchedSnapshots])
                {
                }

                else
                {
                  v98 = [(MBCKEngine *)self device];
                  v99 = [v98 fetchSnapshotsWithOperationTracker:v197 error:a3];

                  if ((v99 & 1) == 0)
                  {
                    if (!*a3)
                    {
                      __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 662, "*error != nil");
                    }

                    goto LABEL_119;
                  }
                }

                v100 = [(MBCKEngine *)self device];
                [v100 pinLatestGMSnapshotIfNeeded];

                v101 = [(MBCKEngine *)self device];
                v102 = [v101 snapshots];
                v103 = [v102 lastObject];
                previousSnapshot = self->_previousSnapshot;
                self->_previousSnapshot = v103;

                v105 = [(MBCKBackupEngine *)self _snapshotFormatForAccount:v8 previousSnapshot:self->_previousSnapshot error:a3];
                if (v105 == -1)
                {
LABEL_119:
                  LOBYTE(v41) = 0;
LABEL_120:
                  v28 = v197;
                  goto LABEL_121;
                }

                v106 = v105;
                v107 = [(MBCKEngine *)self device];
                v108 = [v107 snapshots];
                v109 = [v108 count];

                v192 = v106;
                if (!v109)
                {
                  v112 = 0;
                  goto LABEL_129;
                }

                v110 = [(MBCKEngine *)self device];
                v111 = [v110 requiresFullBackupForAccount:v8];

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

                v112 = MBSnapshotTypeForFormatTransition([(MBCKSnapshot *)self->_previousSnapshot snapshotFormat], v106, a3);
                if (v112 != -1)
                {
LABEL_129:
                  v113 = MBGetDefaultLog();
                  if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
                  {
                    v114 = MBStringForSnapshotType();
                    v115 = MBStringForSnapshotFormat();
                    v116 = [(MBCKBackupEngine *)self telemetry];
                    v117 = [v116 createdNewOTAKeybag];
                    *buf = 138412802;
                    v211 = v114;
                    v212 = 2112;
                    *v213 = v115;
                    *&v213[8] = 1024;
                    *&v213[10] = v117;
                    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_INFO, "=cloud-backup= Setting up backup, type:%@ format:%@ hasNewOTAKeyBag:%d", buf, 0x1Cu);

                    v118 = MBStringForSnapshotType();
                    v119 = MBStringForSnapshotFormat();
                    v120 = [(MBCKBackupEngine *)self telemetry];
                    [v120 createdNewOTAKeybag];
                    _MBLog();

                    v106 = v192;
                  }

                  v121 = [(MBCKBackupEngine *)self telemetry];
                  v191 = v112;
                  [v121 setSnapshotType:v112];

                  v122 = [(MBCKBackupEngine *)self telemetry];
                  [v122 setSnapshotFormat:v106];

                  v123 = [(MBCKBackupEngine *)self previousSnapshot];
                  v124 = [v123 snapshotFormat];
                  v125 = [(MBCKBackupEngine *)self telemetry];
                  [v125 setPreviousSnapshotFormat:v124];

                  v126 = +[MBBehaviorOptions sharedOptions];
                  v127 = [v126 addRepairDomainToMBCKDevice];

                  if ([v127 length])
                  {
                    v128 = [(MBCKEngine *)self device];
                    v129 = [v128 hmacKey];
                    v130 = MBDomainHMACForDomainName(v127, v129);

                    v131 = [(MBCKEngine *)self device];
                    [v131 addRepairDomainHMAC:v130];
                  }

                  v190 = v127;
                  v132 = MBOperationGroupNamePrefixForBackup(self->_previousSnapshot, v106);
                  [v197 setGroupNamePrefix:v132];

                  v202 = 0;
                  v133 = [(MBCKEngine *)self device];
                  v134 = [(MBCKBackupEngine *)self backupReason];
                  v135 = [(MBEngine *)self backupPolicy];
                  v136 = [(MBCKEngine *)self persona];
                  v137 = v106;
                  v138 = v136;
                  v41 = MBCreateOrResumePendingSnapshot(v133, v191, v137, v134, v135, v40, v136, v197, &v202, a3);

                  if (!v41)
                  {
                    v139 = 0;
LABEL_154:
                    v42 = v198;
                    v30 = v199;

                    v28 = v197;
                    goto LABEL_122;
                  }

                  v139 = v41;
                  objc_storeStrong(&self->_currentSnapshot, v41);
                  v140 = [(MBCKBackupEngine *)self pluginNotifier];
                  v201 = 0;
                  v141 = [v140 notifyPluginsOfStartingBackupWithError:&v201];
                  v142 = v201;

                  if (v141)
                  {
                    v143 = [(MBCKBackupEngine *)self pluginNotifier];
                    v200 = v142;
                    v144 = [v143 notifyPluginsOfPreparingBackupWithError:&v200];
                    v189 = v200;

                    if (v144)
                    {
                      v145 = [(MBCKSnapshot *)self->_currentSnapshot commitID];
                      v146 = [(MBCKBackupEngine *)self attemptSummary];
                      [v146 setCommitID:v145];

                      v147 = [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
                      v148 = [(MBCKBackupEngine *)self attemptSummary];
                      [v148 setSnapshotFormat:v147];

                      v149 = [(MBCKSnapshot *)self->_currentSnapshot type];
                      v150 = [(MBCKBackupEngine *)self attemptSummary];
                      [v150 setSnapshotType:v149];

                      v151 = [(MBCKSnapshot *)self->_previousSnapshot commitID];
                      v152 = [(MBCKBackupEngine *)self attemptSummary];
                      [v152 setPreviousSnapshotCommitID:v151];

                      [(MBCKSnapshot *)self->_currentSnapshot setCameraRollBackupState:[(MBCKBackupEngine *)self cameraRollBackupState]];
                      v153 = [(MBCKEngine *)self ckOperationPolicy];
                      v154 = [v153 cellularAccess];
                      [(MBCKSnapshot *)self->_currentSnapshot setIsBackupAllowedOnCellular:v154 != 0];

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
                          v157 = [v139 commitID];
                          v184 = v202;
                          v158 = MBStringForSnapshotType();
                          v159 = MBStringForSnapshotFormat();
                          [(MBCKSnapshot *)self->_previousSnapshot snapshotFormat];
                          v160 = MBStringForSnapshotFormat();
                          v185 = [(MBCKBackupEngine *)self telemetry];
                          v183 = [v185 createdNewOTAKeybag];
                          [v139 backupPolicy];
                          v161 = MBStringForBackupPolicy();
                          *buf = 138413826;
                          v211 = v157;
                          v212 = 1024;
                          *v213 = v184;
                          *&v213[4] = 2112;
                          *&v213[6] = v158;
                          v214 = 2112;
                          v215 = v159;
                          v216 = 2112;
                          *v217 = v160;
                          *&v217[8] = 1024;
                          *&v217[10] = v183;
                          v218 = 2112;
                          v219 = v161;
                          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Finished setting up backup for %@ isResumed:%d type:%@ format:%@ previousFormat:%@ hasNewOTAKeyBag:%d policy:%@", buf, 0x40u);

                          v186 = [v139 commitID];
                          v162 = MBStringForSnapshotType();
                          v163 = MBStringForSnapshotFormat();
                          [(MBCKSnapshot *)self->_previousSnapshot snapshotFormat];
                          v164 = MBStringForSnapshotFormat();
                          v165 = [(MBCKBackupEngine *)self telemetry];
                          [v165 createdNewOTAKeybag];
                          [v139 backupPolicy];
                          v182 = MBStringForBackupPolicy();
                          _MBLog();
                        }
                      }

                      else if (v156)
                      {
                        v169 = [v139 commitID];
                        v187 = v202;
                        v170 = MBStringForSnapshotType();
                        v171 = MBStringForSnapshotFormat();
                        v193 = [(MBCKBackupEngine *)self telemetry];
                        v172 = [v193 createdNewOTAKeybag];
                        [v139 backupPolicy];
                        v173 = MBStringForBackupPolicy();
                        *buf = 138413570;
                        v211 = v169;
                        v212 = 1024;
                        *v213 = v187;
                        *&v213[4] = 2112;
                        *&v213[6] = v170;
                        v214 = 2112;
                        v215 = v171;
                        v216 = 1024;
                        *v217 = v172;
                        *&v217[4] = 2112;
                        *&v217[6] = v173;
                        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Finished setting up backup for initial snapshot %@ isResumed:%d type:%@ format:%@ hasNewOTAKeyBag:%d policy:%@", buf, 0x36u);

                        v194 = [v139 commitID];
                        v174 = MBStringForSnapshotType();
                        v175 = MBStringForSnapshotFormat();
                        v176 = [(MBCKBackupEngine *)self telemetry];
                        [v176 createdNewOTAKeybag];
                        [v139 backupPolicy];
                        v181 = MBStringForBackupPolicy();
                        _MBLog();
                      }

                      LOBYTE(v41) = 1;
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
                  LOBYTE(v41) = 0;
                  *a3 = v142;
LABEL_153:

                  goto LABEL_154;
                }

LABEL_88:
                LOBYTE(v41) = 0;
                v28 = v197;
                v30 = v199;
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
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Resetting the cache since the backup was disabled from another device", buf, 2u);
                _MBLog();
              }

              [v6 resetCacheWithAccount:v8 error:a3];
              v205 = 0;
              v40 = [v6 openCacheWithAccount:v8 accessType:1 error:&v205];
              v82 = v205;

              [(MBCKEngine *)self setCache:v40];
              [v6 setBackupEnabled:0 account:v8 connection:0];
              v83 = [MBError errorWithCode:204 format:@"Backups disabled from another device"];
              v84 = v83;

              LOBYTE(v41) = 0;
              *a3 = v83;
              v51 = v45;
              v28 = v197;
            }

LABEL_84:
            v42 = v198;
            v30 = v199;
LABEL_85:

LABEL_86:
            goto LABEL_50;
          }
        }

        else if (!*a3)
        {
          __assert_rtn("[MBCKBackupEngine setUpWithError:]", "MBCKBackupEngine.m", 565, "*error != nil");
        }

        LOBYTE(v41) = 0;
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
  *a3 = LOBYTE(v41) = 0;
LABEL_50:

  return v41;
}

- (BOOL)checkIfBackupHasKeybagWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(MBCKEngine *)self device];
  v6 = [v5 keybagManager];
  v7 = [v6 hasKeybagWithUUID:v4];

  return v7;
}

- (BOOL)synchronizeFileListsWithError:(id *)a3
{
  v5 = [(MBCKEngine *)self persona];
  v6 = [v5 snapshotDatabaseDirectory];
  v7 = [(MBCKBackupEngine *)self previousSnapshot];
  v8 = [(MBCKBackupEngine *)self currentSnapshot];
  v9 = [(MBCKEngine *)self device];
  v10 = [(MBCKEngine *)self ckOperationTracker];
  v11 = [(MBCKBackupEngine *)self attemptSummary];
  v12 = MBSynchronizeSnapshotDirectoryForBackup(v6, v7, v8, v9, v10, v11, a3);

  if (v12)
  {
    [(MBCKBackupEngine *)self setPendingSnapshotDB:v12];
  }

  return v12 != 0;
}

- (BOOL)createVolumeSnapshots:(id *)a3
{
  v5 = [(MBCKEngine *)self persona];
  if (!v5)
  {
    __assert_rtn("[MBCKBackupEngine createVolumeSnapshots:]", "MBCKBackupEngine.m", 779, "persona");
  }

  v34 = a3;
  v36 = v5;
  v6 = [v5 volumesToBackUp];
  v38 = 0;
  v7 = [MBFSEventState stateForVolumeMountPoints:v6 error:&v38];
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
  v14 = [(MBCKEngine *)self context];
  v15 = [v14 mobileInstallation];
  v16 = [(MBAppManager *)v13 initWithMobileInstallation:v15];
  appManager = self->super.super._appManager;
  self->super.super._appManager = v16;

  v18 = objc_opt_new();
  mountedSnapshotTracker = self->_mountedSnapshotTracker;
  self->_mountedSnapshotTracker = v18;

  v20 = [(MBCKEngine *)self serviceAccount];
  v21 = [(MBEngine *)self appManager];
  v22 = [(MBEngine *)self domainManager];
  v31 = [(MBCKEngine *)self serviceManager];
  v30 = [(MBCKBackupEngine *)self backupReason];
  v23 = [(MBCKBackupEngine *)self mountedSnapshotTracker];
  v24 = [(MBCKEngine *)self device];
  v25 = [(MBCKBackupEngine *)self pendingSnapshotDB];
  v26 = [(MBCKBackupEngine *)self currentSnapshot];
  v27 = [(MBCKBackupEngine *)self previousSnapshot];
  v28 = [(MBCKBackupEngine *)self attemptSummary];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10006F638;
  v37[3] = &unk_1003BC8B8;
  v37[4] = self;
  v35 = MBCreateVolumeSnapshots(v20, v21, v22, v31, v30, v23, v24, v25, v26, v27, v28, v34, v37);

  return v35;
}

- (void)_saveLastPendingSnapshotSize:(unint64_t)a3
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v9 = @"LastPendingSnapshotSize";
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Saving %{public}@: %llu", buf, 0x16u);
    _MBLog();
  }

  v6 = [(MBCKEngine *)self persona];
  v7 = [NSNumber numberWithUnsignedLongLong:a3];
  [v6 setPreferencesValue:v7 forKey:@"LastPendingSnapshotSize"];
}

+ (BOOL)_startOTABackupWithAccount:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5)
  {
    __assert_rtn("+[MBCKBackupEngine _startOTABackupWithAccount:error:]", "MBCKBackupEngine.m", 819, "account");
  }

  if (!a4)
  {
    __assert_rtn("+[MBCKBackupEngine _startOTABackupWithAccount:error:]", "MBCKBackupEngine.m", 820, "error");
  }

  v6 = v5;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v5 persona];
  v8 = [v7 volumesToBackUp];

  v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [MBFileSystemManager volumeUUIDWithVolumeMountPoint:v13 error:a4];
        if (!v14)
        {
          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = *a4;
            *buf = 138543618;
            v26 = v13;
            v27 = 2112;
            v28 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to fetch the volume UUID for %{public}@: %@", buf, 0x16u);
            v20 = *a4;
            _MBLog();
          }

          v16 = 0;
          goto LABEL_15;
        }

        v15 = v14;
        [MBKeyBag startOTABackupForVolumeUUID:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
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

+ (BOOL)_stopOTABackupWithAccount:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5)
  {
    __assert_rtn("+[MBCKBackupEngine _stopOTABackupWithAccount:error:]", "MBCKBackupEngine.m", 834, "account");
  }

  if (!a4)
  {
    __assert_rtn("+[MBCKBackupEngine _stopOTABackupWithAccount:error:]", "MBCKBackupEngine.m", 835, "error");
  }

  v6 = v5;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v5 persona];
  v8 = [v7 volumesToBackUp];

  v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [MBFileSystemManager volumeUUIDWithVolumeMountPoint:v13 error:a4];
        if (!v14)
        {
          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = *a4;
            *buf = 138543618;
            v26 = v13;
            v27 = 2112;
            v28 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to fetch the volume UUID for %{public}@: %@", buf, 0x16u);
            v20 = *a4;
            _MBLog();
          }

          v16 = 0;
          goto LABEL_15;
        }

        v15 = v14;
        [MBKeyBag stopOTABackupForVolumeUUID:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
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

- (BOOL)findChangesWithError:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 848, "error");
  }

  v3 = a3;
  v5 = [(MBCKEngine *)self serviceAccount];
  if (!v5)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 850, "serviceAccount");
  }

  v6 = v5;
  v7 = [(MBCKEngine *)self persona];
  if (!v7)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 852, "persona");
  }

  v8 = v7;
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
  v164 = [(MBCKBackupEngine *)self pendingSnapshotDB];
  if (!v164)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 858, "pendingSnapshotDB");
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v3;
    v15 = v13;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Scanning files for changes", buf, 2u);
    }

    _MBLog();
    v3 = v14;
  }

  v163 = v12;
  if ([(MBCKEngine *)self handleCancelation:v3])
  {
    v16 = 0;
    goto LABEL_183;
  }

  v165 = v3;
  [(MBCKSnapshot *)v12 snapshotFormat];
  if (MBSnapshotFormatContainsManifests())
  {
    v17 = [(MBCKEngine *)self cache];
    v18 = [v17 removeAllFilesMissingEncryptionKeys];

    v169 = v18;
    if (v18)
    {
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v192 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=cloud-backup= Could not remove all missing encryption keys from the cache: %@", buf, 0xCu);
        _MBLog();
      }

      v16 = 0;
      *v165 = v18;
      goto LABEL_182;
    }
  }

  v20 = [(MBCKBackupEngine *)self telemetry];
  [v20 setBackupFileCount:&off_1003E0CF0];

  v21 = [(MBCKBackupEngine *)self telemetry];
  [v21 setBackupDirectoryCount:&off_1003E0CF0];

  v22 = [(MBCKBackupEngine *)self telemetry];
  v23 = [v22 domainsWithMissingEncryptionKeys];
  [v23 removeAllObjects];

  if ([(MBCKBackupEngine *)self _shouldBackupUsingFSEvents])
  {
    v169 = [(MBCKBackupEngine *)self _fetchPreviousBackupFSEventState];
  }

  else
  {
    v169 = 0;
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

      v29 = [*(*(&v185 + 1) + 8 * v28) name];
      if (!v169)
      {
        goto LABEL_46;
      }

      [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
      v184 = 0;
      if (MBSnapshotFormatContainsManifests())
      {
        v30 = [(MBCKEngine *)self cache];
        v31 = [v30 hasDomainBeenBackedUp:v29 backedUp:&v184];

        if (v31)
        {
          v32 = MBGetDefaultLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = v32;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *v192 = v29;
              *&v192[8] = 2112;
              v193 = v31;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Failed to determine whether domain %@ has been backed up:%@", buf, 0x16u);
            }

            v147 = *&v29;
            v152 = v31;
            _MBLog();
          }
        }
      }

      v183 = 0;
      if (MBSnapshotFormatContainsFileLists())
      {
        v34 = [(MBCKBackupEngine *)self pendingSnapshotDB];
        v35 = [v34 isDomainInPreviousSnapshot:v29 outResult:&v183 error:v165];

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
            *v192 = v29;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "=cloud-backup= Forcing a scan on new domain %@", buf, 0xCu);
          }

          v147 = *&v29;
          _MBLog();
        }

LABEL_46:
        v38 = 0;
        goto LABEL_48;
      }

      v38 = 1;
LABEL_48:
      v39 = [(MBCKEngine *)self device:*&v147];
      v40 = [v39 shouldRepairDomain:v29];

      if (v40)
      {
        v41 = [(MBCKEngine *)self device];
        v42 = [v41 hmacKey];
        v43 = MBDomainHMACForDomainName(v29, v42);
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
        [v168 markUnmodifiedDomain:v29];
        goto LABEL_57;
      }

      [v168 markModifiedDomain:v29];
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
    v46 = [(MBCKEngine *)self device];
    [v46 setDomainHMACsToRepairOnDisk:v166];
  }

  v6 = v156;
  v8 = v158;
  if (v169)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v182[0] = _NSConcreteStackBlock;
    v182[1] = 3221225472;
    v182[2] = sub_1000713D4;
    v182[3] = &unk_1003BC8B8;
    v182[4] = self;
    [MBFSEventCollector markModificationsWith:v168 since:v169 domainManager:v10 persona:v158 cancellationHandler:v182];
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

    v51 = [(MBCKBackupEngine *)self telemetry];
    [v51 setFseventDuration:v48];
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

  v29 = [v168 modifiedDomainNames];
  v55 = MBGetDefaultLog();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = v55;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [v29 count];
      *buf = 134218498;
      *v192 = v57;
      *&v192[8] = 2048;
      v193 = v162;
      v194 = 2112;
      v195 = v29;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Modified domains: (%lu/%lu) %@", buf, 0x20u);
    }

    v152 = v162;
    v153 = v29;
    v148 = [v29 count];
    _MBLog();
  }

  v58 = [obj count];
  if (&v58[[v29 count]] != v162)
  {
    __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 953, "unmodifiedDomainNames.count + modifiedDomainNames.count == enabledDomainsCount");
  }

  [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
  if (!MBSnapshotFormatContainsManifests())
  {
    goto LABEL_88;
  }

  v59 = [(MBCKEngine *)self cache];
  v60 = [v59 markAllFileChangesAsDeleted];

  if (v60)
  {
    v61 = MBGetDefaultLog();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v192 = v60;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to mark file changes as deleted: %@", buf, 0xCu);
      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v62 = [(MBCKEngine *)self cache];
  v60 = [v62 markFileChangesAsUnmodifiedForDomainNames:obj];

  if (!v60)
  {
LABEL_88:
    v64 = objc_opt_new();
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    v181 = 0u;
    v29 = v29;
    v65 = [v29 countByEnumeratingWithState:&v178 objects:v190 count:16];
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
            objc_enumerationMutation(v29);
          }

          v69 = [(MBDomainManager *)self->super.super._domainManager domainForName:*(*(&v178 + 1) + 8 * i), v148, v152, v153];
          if (!v69)
          {
            __assert_rtn("[MBCKBackupEngine findChangesWithError:]", "MBCKBackupEngine.m", 977, "domain");
          }

          v70 = v69;
          [v64 addObject:v69];
        }

        v66 = [v29 countByEnumeratingWithState:&v178 objects:v190 count:16];
      }

      while (v66);
    }

    v71 = +[MBBehaviorOptions sharedOptions];
    v72 = [v71 domainsToSendInvalidChecksumRegex];
    v73 = [v72 length];

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

            v79 = [*(*(&v174 + 1) + 8 * j) name];
            v80 = MBShouldSendInvalidChecksumForDomain(v79);

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

    v81 = [v158 volumeMountPoint];
    v82 = [(MBCKBackupEngine *)self mountedSnapshotTracker];
    v83 = [v82 snapshotMountPointForVolumeMountPoint:v81];

    v84 = [MBiCloudDrivePlugin backUpiCloudDriveDatabaseManifestForUserVolume:v81 snapshotMountPoint:v83];
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

    v89 = [MBiCloudDrivePlugin backUpFPFSDatabaseManifestForUserVolume:v81 snapshotMountPoint:v83];

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
    v97 = [v8 skippedFileRecordsPlistPath];
    v98 = [(MBSkippedFileTracker *)v96 initWithPlistPath:v97];
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

    v102 = [(MBCKBackupEngine *)self mountedSnapshotTracker];
    v103 = [(MBCKBackupEngine *)self _createDomainTranscriberForAPFSSnapshots:v102 error:v165];

    if (!v103)
    {
      v16 = 0;
      v10 = v157;
LABEL_179:

      goto LABEL_180;
    }

    v104 = objc_opt_new();
    v105 = [(MBCKBackupEngine *)self pendingSnapshotDB];
    v106 = [(MBCKEngine *)self progressModel];
    v173 = 0;
    v160 = v103;
    v159 = v104;
    LOBYTE(v104) = [v103 scanDomains:v64 pendingSnapshotDB:v105 progress:v106 summary:v104 error:&v173];
    v107 = v173;

    if ((v104 & 1) == 0)
    {
      v118 = v159;
      v111 = v107;
      if ([MBError isError:v107 withCode:209])
      {
        [MBCKEncryptionManager trackMissingEncryptionKeyForAccount:v156];
        v121 = [(MBCKBackupEngine *)self attemptSummary];
        [v121 trackDomainTranscription:v159];
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

    v115 = [(MBCKEngine *)self cache];
    v170 = 0;
    v116 = [v115 countFilesMissingEncryptionKeysWithError:&v170];
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
          v155 = [(MBCKSnapshot *)self->_previousSnapshot commitID];
          [(MBCKSnapshot *)self->_currentSnapshot type];
          IsFull = MBSnapshotTypeIsFull();
          v127 = [(MBCKBackupEngine *)self previousSnapshot];
          v128 = MBSnapshotsAreTransitioningFormats(v127, self->_currentSnapshot);

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

            v155 = 0;
          }

          v131 = [(MBCKEngine *)self device:*&v151];
          v132 = [(MBEngine *)self appManager];
          v133 = [v164 updateDomainListInPlaceholderDomainWithDevice:v131 appManager:v132 error:v165];

          if (!v133 || ([(MBCKEngine *)self device], v134 = objc_claimAutoreleasedReturnValue(), v135 = MBCopyAssetsToUploadIntoPendingSnapshotDB(v164, v155, v134, v165), v134, !v135))
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

          v140 = [(MBCKBackupEngine *)self attemptSummary];
          [v140 setAssetCopyDuration:v137];

          v141 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v64 count]);
          v142 = [(MBCKBackupEngine *)self telemetry];
          [v142 setScannedDomainsCount:v141];

          v143 = [NSNumber numberWithUnsignedLong:v162];
          v144 = [(MBCKBackupEngine *)self telemetry];
          [v144 setEnabledDomainsCount:v143];

          v10 = v157;
          v8 = v158;
          v103 = v160;
          v111 = v154;
        }

        v145 = [(MBCKBackupEngine *)self attemptSummary];
        v118 = v159;
        [v145 trackDomainTranscription:v159];

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
    *v192 = v60;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to mark file changes as unmodified: %@", buf, 0xCu);
LABEL_86:
    _MBLog();
  }

LABEL_87:

  v63 = v60;
  *v165 = v60;

  v16 = 0;
LABEL_181:

LABEL_182:
LABEL_183:

  return v16;
}

- (BOOL)reserveQuotaWithError:(id *)a3
{
  v5 = [(MBCKEngine *)self persona];
  if (!v5)
  {
    __assert_rtn("[MBCKBackupEngine reserveQuotaWithError:]", "MBCKBackupEngine.m", 1112, "persona");
  }

  v6 = [(MBCKEngine *)self ckOperationTracker];
  if (!v6)
  {
    __assert_rtn("[MBCKBackupEngine reserveQuotaWithError:]", "MBCKBackupEngine.m", 1114, "tracker");
  }

  v7 = [(MBCKBackupEngine *)self currentSnapshot];
  if (!v7)
  {
    __assert_rtn("[MBCKBackupEngine reserveQuotaWithError:]", "MBCKBackupEngine.m", 1116, "currentSnapshot");
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  [v7 snapshotFormat];
  if (MBSnapshotFormatContainsManifests())
  {
    v9 = [(MBCKEngine *)self cache];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100071CE4;
    v59[3] = &unk_1003BC900;
    v60 = v8;
    v61 = &v62;
    v10 = [v9 summarizeFileChangesGroupByDomain:v59];

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

      if (a3)
      {
        v12 = v10;
        *a3 = v10;
      }

      v13 = 0;
      v14 = v60;
      goto LABEL_39;
    }
  }

  else
  {
    v15 = [(MBCKBackupEngine *)self pendingSnapshotDB];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100071D64;
    v56[3] = &unk_1003BC928;
    v57 = v8;
    v58 = &v62;
    v16 = [v15 fetchQuotaReservationByDomain:a3 block:v56];

    if ((v16 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v17 = [v7 type];
  IsFull = MBSnapshotTypeIsFull();
  if (v17)
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
    v24 = [(MBCKBackupEngine *)self telemetry];
    [v24 setBackupTotalSize:v23];

    v25 = [NSNumber numberWithUnsignedLongLong:v63[3]];
    [v8 setObject:v25 forKeyedSubscript:@"_TotalSize"];

    [v5 setPreferencesValue:v8 forKey:@"PreflightSizing"];
    v26 = v63[3];
    v27 = [(MBCKBackupEngine *)self attemptSummary];
    [v27 setTotalQuotaReservation:v26];

    v28 = MBDeviceName();
    v29 = [(MBCKEngine *)self device];
    [v29 setDeviceName:v28];

    [(MBCKBackupEngine *)self _saveLastPendingSnapshotSize:v63[3]];
    v30 = v63[3];
    v31 = [(MBCKEngine *)self device];
    [v31 setPendingSnapshotQuotaReserved:v30];

    v32 = [(MBCKSnapshot *)self->_currentSnapshot type];
    v33 = [(MBCKEngine *)self device];
    [v33 setPendingSnapshotType:v32];

    v34 = [(MBCKSnapshot *)self->_currentSnapshot backupPolicy];
    v35 = [(MBCKEngine *)self device];
    [v35 setPendingSnapshotBackupPolicy:v34];

    v36 = [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
    v37 = [(MBCKEngine *)self device];
    [v37 setPendingSnapshotFormat:v36];

    v38 = [(MBCKEngine *)self device];
    v39 = [v38 domainHMACsToRepairOnDisk];
    v40 = [v39 count] == 0;

    v41 = [(MBCKEngine *)self device];
    if (v40)
    {
      [v41 setPendingRepairedDomainHMACs:0];
    }

    else
    {
      v42 = [v41 domainHMACsToRepairOnDisk];
      v43 = [(MBCKEngine *)self device];
      [v43 setPendingRepairedDomainHMACs:v42];
    }

    v44 = [(MBCKEngine *)self device];
    [v44 setPendingSnapshot:0];

    v45 = [(MBCKEngine *)self device];
    v46 = [v45 saveWithOperationTracker:v6 error:a3];

    if (v46)
    {
      v47 = [(MBCKEngine *)self device];
      v48 = [v47 deviceName];
      [(MBCKSnapshot *)self->_currentSnapshot setDeviceName:v48];

      currentSnapshot = self->_currentSnapshot;
      v50 = [(MBCKEngine *)self device];
      [v50 setPendingSnapshot:currentSnapshot];

      v51 = [(MBCKBackupEngine *)self pluginNotifier];
      v55 = 0;
      LOBYTE(currentSnapshot) = [v51 notifyPluginsOfPreparedBackupWithError:&v55];
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

      if (a3)
      {
        v53 = v14;
        v13 = 0;
        *a3 = v14;
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

    if (a3)
    {
      v14 = MBStringForSnapshotType();
      v22 = [v14 localizedCapitalizedString];
      *a3 = [MBError errorWithCode:205 format:@"%@ backup has a reserved quota size of 0", v22];

      goto LABEL_27;
    }
  }

LABEL_34:
  v13 = 0;
LABEL_40:
  _Block_object_dispose(&v62, 8);

  return v13;
}

- (BOOL)_handleSkippedFilesWithError:(id *)a3
{
  v5 = [(MBCKBackupEngine *)self skippedFileTracker];
  v6 = [v5 skippedFilesCount];
  if (v6)
  {
    v7 = v6;
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v45 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Skipped %lld files during the file scan", buf, 0xCu);
      _MBLog();
    }

    v9 = [(MBCKEngine *)self persona];
    v10 = [v5 skippedFilesPlistValue];
    [v9 setPreferencesValue:v10 forKey:@"SkippedFilesFromBackup"];

    v11 = [(MBCKEngine *)self persona];
    v12 = [v11 skippedFileRecordsPlistPath];

    v42 = 0;
    v13 = [v5 writeSkippedFilesToPlistWithError:&v42];
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

      if (!a3)
      {
        goto LABEL_27;
      }

      v15 = v14;
      goto LABEL_14;
    }

    if (v7 >= 0xB)
    {
      if (!a3)
      {
LABEL_27:

        v17 = 0;
        goto LABEL_28;
      }

      v15 = [MBError errorWithCode:100 format:@"Too many skipped files during scanning (%llu > %llu)", v7, 10];
LABEL_14:
      *a3 = v15;
      goto LABEL_27;
    }

    v19 = self->super.super._domainManager;
    v40 = v19;
    if (![(MBDomainManager *)v19 containsDomainName:@"SkippedFilesDomain"])
    {
      v20 = [(MBCKEngine *)self persona];
      v21 = [v20 volumeMountPoint];
      v22 = [v12 stringByDeletingLastPathComponent];
      v23 = [MBDomain skippedFilesDomainWithVolumeMountPoint:v21 rootPath:v22];

      v24 = [v12 lastPathComponent];
      v25 = [NSSet setWithObject:v24];
      [v23 setRelativePathsToBackupAndRestore:v25];

      v19 = v40;
      [(MBDomainManager *)v40 addDomain:v23];
    }

    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v12;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Scanning the skipped files plist (%@) from the live filesystem", buf, 0xCu);
      _MBLog();
    }

    v27 = [(MBCKBackupEngine *)self _createDomainTranscriberForAPFSSnapshots:0 error:a3];
    if (v27)
    {
      v38 = [(MBDomainManager *)v19 domainForName:@"SkippedFilesDomain"];
      v43 = v38;
      v28 = [NSArray arrayWithObjects:&v43 count:1];
      v29 = [(MBCKBackupEngine *)self pendingSnapshotDB];
      v30 = [(MBCKEngine *)self progressModel];
      v41 = v14;
      v37 = v27;
      v31 = [v27 scanDomains:v28 pendingSnapshotDB:v29 progress:v30 summary:0 error:&v41];
      v39 = v41;

      if (v31)
      {
        v32 = [NSNumber numberWithUnsignedLongLong:v7];
        v33 = [(MBCKBackupEngine *)self telemetry];
        [v33 setSkippedFilesCount:v32];

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

      if (a3)
      {
        v35 = v39;
        *a3 = v39;
      }
    }

    goto LABEL_27;
  }

  v16 = [(MBCKEngine *)self persona];
  [v16 setPreferencesValue:0 forKey:@"SkippedFilesFromBackup"];

  [v5 writeSkippedFilesToPlistWithError:0];
LABEL_9:
  v17 = 1;
LABEL_28:

  return v17;
}

- (BOOL)prepareToUploadChangesWithError:(id *)a3
{
  v5 = self->_currentSnapshot;
  if (!v5)
  {
    __assert_rtn("[MBCKBackupEngine prepareToUploadChangesWithError:]", "MBCKBackupEngine.m", 1250, "currentSnapshot");
  }

  v6 = v5;
  if ([(MBCKEngine *)self handleCancelation:a3])
  {
    goto LABEL_33;
  }

  [(MBCKBackupEngine *)self _releaseLockAssertion];
  if (![(MBCKBackupEngine *)self _handleSkippedFilesWithError:a3])
  {
    goto LABEL_33;
  }

  [(MBCKSnapshot *)v6 snapshotFormat];
  if (MBSnapshotFormatContainsManifests())
  {
    v7 = objc_opt_new();
    v8 = [(MBCKEngine *)self cache];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100072AD8;
    v64[3] = &unk_1003BC450;
    v9 = v7;
    v65 = v9;
    v10 = [v8 enumerateChangedDomainNames:v64];

    if (v10)
    {
      if (a3)
      {
        v11 = v10;
        *a3 = v10;
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

    v13 = [(MBCKEngine *)self cache];
    v14 = [(MBCKSnapshot *)self->_currentSnapshot snapshotID];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100072AFC;
    v63[3] = &unk_1003BC450;
    v63[4] = self;
    v15 = [v13 enumerateDomainNamesOfPendingSnapshot:v14 domainCallback:v63];

    if (v15)
    {
      if (a3)
      {
        v16 = v15;
        *a3 = v15;
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

    v18 = [(MBEngine *)self domainManager];
    if (!v18)
    {
      __assert_rtn("[MBCKBackupEngine prepareToUploadChangesWithError:]", "MBCKBackupEngine.m", 1293, "domainManager");
    }

    v19 = [v9 allObjects];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100072BF0;
    v61[3] = &unk_1003BC950;
    v45 = v18;
    v62 = v45;
    obj = [v19 sortedArrayUsingComparator:v61];

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
    v20 = [(MBCKEngine *)self cache];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100072C7C;
    v48[3] = &unk_1003BC978;
    v48[4] = self;
    v48[5] = &v57;
    v48[6] = &v53;
    v48[7] = &v49;
    v21 = [v20 summarizeFileChanges:v48];

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
      if (a3)
      {
        v29 = v44;
        *a3 = v44;
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
    v30 = [(MBCKBackupEngine *)self pendingSnapshotDB];
    v31 = [v30 fetchPendingUploadSizeInBytes:&v57 assetCount:&v53 error:a3];

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

    v34 = [(MBCKEngine *)self progressModel];
    [v34 willTransferItemsWithSize:v57 count:v53];
  }

  v35 = [(MBCKEngine *)self progressModel:v38];
  [(MBCKModel *)self->_currentSnapshot setProgressModel:v35];

  v36 = 1;
LABEL_34:

  return v36;
}

- (BOOL)uploadAssetsWithError:(id *)a3
{
  [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
  if (!MBSnapshotFormatContainsFileLists())
  {
    return 1;
  }

  v5 = [(MBEngine *)self domainManager];
  v6 = [(MBCKBackupEngine *)self pendingSnapshotDB];
  v7 = [(MBCKEngine *)self device];
  v8 = [(MBCKBackupEngine *)self mountedSnapshotTracker];
  v9 = [(MBCKEngine *)self ckOperationTracker];
  v10 = [(MBEngine *)self settingsContext];
  v11 = [v10 plugins];
  v12 = [(MBCKBackupEngine *)self attemptSummary];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100072E80;
  v15[3] = &unk_1003BC8B8;
  v15[4] = self;
  v13 = MBUploadAssetsForBackup(v5, v6, v7, v8, v9, v11, v12, a3, v15);

  return v13;
}

- (BOOL)uploadChangesWithError:(id *)a3
{
  [(MBCKSnapshot *)self->_currentSnapshot snapshotFormat];
  if (MBSnapshotFormatContainsManifests())
  {
    v110 = a3;
    if (!a3)
    {
      __assert_rtn("[MBCKBackupEngine uploadChangesWithError:]", "MBCKBackupEngine.m", 1370, "error");
    }

    v114 = [(MBCKEngine *)self serviceManager];
    if (!v114)
    {
      __assert_rtn("[MBCKBackupEngine uploadChangesWithError:]", "MBCKBackupEngine.m", 1372, "serviceManager");
    }

    v120 = [(MBCKEngine *)self ckOperationTracker];
    if (!v120)
    {
      __assert_rtn("[MBCKBackupEngine uploadChangesWithError:]", "MBCKBackupEngine.m", 1374, "tracker");
    }

    v113 = [(MBCKEngine *)self serviceAccount];
    if (!v113)
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
          v17 = [v15 manifestID];
          v18 = [v15 domainName];
          v19 = MBGetDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v17;
            *&buf[12] = 2112;
            *&buf[14] = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Reclaiming quota from pending items for manifest %{public}@ (%@)", buf, 0x16u);
            v104 = v17;
            v106 = v18;
            _MBLog();
          }

          v20 = [(MBCKEngine *)self cache];
          v206[0] = _NSConcreteStackBlock;
          v206[1] = 3221225472;
          v206[2] = sub_100074378;
          v206[3] = &unk_1003BC9A0;
          v206[4] = v211;
          v21 = [v20 summarizeCloudFilesPendingDeleteForManifestID:v17 callback:v206];

          v22 = dispatch_group_create();
          dispatch_group_enter(v22);
          v23 = [v120 startBatchDelete];
          [v23 setRetryWhenNetworkDisconnected:0];
          dispatch_group_enter(v22);
          v204[0] = _NSConcreteStackBlock;
          v204[1] = 3221225472;
          v204[2] = sub_100074390;
          v204[3] = &unk_1003BC0B0;
          v24 = v22;
          v205 = v24;
          [v15 deletePendingCloudFilesWithBatchDelete:v23 completion:v204];
          v199[0] = _NSConcreteStackBlock;
          v199[1] = 3221225472;
          v199[2] = sub_100074398;
          v199[3] = &unk_1003BC9C8;
          v25 = v17;
          v200 = v25;
          v26 = v18;
          v201 = v26;
          v202 = self;
          v27 = v24;
          v203 = v27;
          [v120 finishBatchDelete:v23 completion:v199];
          MBGroupWaitForever();

          objc_autoreleasePoolPop(v16);
        }

        v13 = [obj countByEnumeratingWithState:&v207 objects:v230 count:16];
      }

      while (v13);
    }

    v117 = [v120 startBatchSave];
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

    v31 = [v114 openCacheWithAccount:v113 accessType:2 cached:0 error:v110];
    if (!v31)
    {
      v71 = MBGetDefaultLog();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
      {
        v76 = *v110;
        *buf = 138412290;
        *&buf[4] = v76;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_FAULT, "=cloud-backup= Failed to open readonly cache %@", buf, 0xCu);
        v105 = *v110;
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
          v146 = v117;
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
            v49 = [(MBCKSnapshot *)self->_currentSnapshot manifestsByDomainName];
            v50 = [v49 allValues];

            v51 = [v50 countByEnumeratingWithState:&v140 objects:v220 count:16];
            if (v51)
            {
              v52 = *v141;
              while (2)
              {
                for (k = 0; k != v51; k = k + 1)
                {
                  if (*v141 != v52)
                  {
                    objc_enumerationMutation(v50);
                  }

                  v54 = [*(*(&v140 + 1) + 8 * k) fileUploadError];
                  if (v54)
                  {
                    *(v172 + 24) = 0;
                    v55 = v182[5];
                    v182[5] = v54;

                    v32 = v112;
                    goto LABEL_56;
                  }
                }

                v51 = [v50 countByEnumeratingWithState:&v140 objects:v220 count:16];
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
      *&buf[4] = v117;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "=cloud-backup= Waiting for %{public}@ to complete", buf, 0xCu);
      v104 = v117;
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
    v129 = self;
    v130 = v120;
    v131 = v114;
    v132 = v113;
    v137 = &v171;
    v138 = &v175;
    v139 = &v181;
    v71 = v69;
    v133 = v71;
    [v130 finishBatchSave:v117 completion:v127];
    v72 = [v117 throughputEstimator];
    v73 = [v72 throughputs];
    v74 = [(MBCKBackupEngine *)self telemetry];
    [v74 setThroughputs:v73];

    if ([(MBCKEngine *)self handleCancelation:v110])
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
            v82 = [v81 fileUploadError];

            if (v82)
            {
              *(v172 + 24) = 0;
              v83 = [v81 fileUploadError];
              v84 = v182[5];
              v182[5] = v83;

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
            *v110 = v75 = 0;
            goto LABEL_95;
          }
        }

        *v110 = v85;
      }

      v86 = [NSNumber numberWithUnsignedLongLong:v188[3], v104];
      v87 = [(MBCKBackupEngine *)self telemetry];
      [v87 setQueuedSize:v86];

      v88 = [NSNumber numberWithUnsignedLongLong:v196[3] + v192[3]];
      v89 = [(MBCKBackupEngine *)self telemetry];
      [v89 setQueuedFileCount:v88];

      v90 = [(MBCKEngine *)self cache];
      v122 = 0;
      v91 = [v90 countFilesMissingEncryptionKeysWithError:&v122];
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
        *v110 = v75 = 0;
      }

      else if (v92)
      {
        v94 = v92;
        v75 = 0;
        *v110 = v92;
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

- (BOOL)uploadDomainRecords:(id *)a3
{
  v5 = [(MBCKBackupEngine *)self currentSnapshot];
  [v5 snapshotFormat];
  v6 = MBSnapshotFormatContainsFileLists();

  if (!v6)
  {
    return 1;
  }

  v7 = [(MBCKBackupEngine *)self pendingSnapshotDB];
  v8 = [(MBCKEngine *)self device];
  v9 = [v8 hmacKey];
  v10 = [(MBCKEngine *)self device];
  v11 = [v10 assetIDPrefix];
  v12 = [(MBCKEngine *)self ckOperationTracker];
  v13 = [(MBCKBackupEngine *)self attemptSummary];
  v14 = MBUploadDomainRecordsForBackup(v7, v9, v11, v12, v13, a3);

  return v14;
}

- (BOOL)commitSnapshotWithError:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[MBCKBackupEngine commitSnapshotWithError:]", "MBCKBackupEngine.m", 1703, "error");
  }

  v5 = self->_currentSnapshot;
  if (v5)
  {
    v6 = [(MBCKEngine *)self device];
    v7 = [(MBCKEngine *)self ckOperationTracker];
    v8 = [(MBCKBackupEngine *)self pendingSnapshotDB];
    v9 = [(MBEngine *)self appManager];
    v10 = [(MBCKEngine *)self properties];
    v11 = [(MBCKBackupEngine *)self attemptSummary];
    v12 = MBCommitSnapshot(v5, v6, v7, v8, v9, v10, v11, a3);

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
    *a3 = v14 = 0;
  }

  return v14;
}

- (BOOL)_verifySnapshotWithError:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[MBCKBackupEngine _verifySnapshotWithError:]", "MBCKBackupEngine.m", 1730, "error");
  }

  v5 = [(MBEngine *)self backupPolicy];
  v6 = [(MBCKBackupEngine *)self backupReason];
  v7 = [(MBCKBackupEngine *)self attemptSummary];
  v8 = [v7 snapshotFormat];
  v9 = [(MBCKEngine *)self serviceAccount];
  LOBYTE(v5) = [MBBackupSnapshotIntegrityVerifier shouldRunVerifierWithBackupPolicy:v5 backupReason:v6 snapshotFormat:v8 account:v9];

  v10 = [(MBCKBackupEngine *)self telemetry];
  v11 = v10;
  if (v5)
  {
    v37 = a3;
    [v10 setSnapshotVerificationEnabled:1];

    v12 = [(MBCKBackupEngine *)self attemptSummary];
    [v12 setSnapshotVerificationRan:1];

    v13 = [(MBCKBackupEngine *)self telemetry];
    [v13 setSnapshotVerificationStatus:@"CANCELLED"];

    v43 = 0.0;
    v14 = [[MBBackupSnapshotIntegrityVerifier alloc] initWithDelegate:self];
    v15 = [(MBCKEngine *)self ckOperationTracker];
    v39 = [(MBCKBackupEngine *)self _scannerMode];
    v38 = [(MBEngine *)self enginePolicy];
    v16 = [(MBCKBackupEngine *)self mountedSnapshotTracker];
    v17 = [(MBEngine *)self domainManager];
    v18 = [(MBCKEngine *)self device];
    v19 = [v18 recordID];
    v20 = [(MBCKEngine *)self device];
    v21 = [v20 hmacKey];
    v22 = [(MBCKBackupEngine *)self attemptSummary];
    v41 = v14;
    v42 = 0;
    v23 = v14;
    v24 = v15;
    LOBYTE(v15) = [(MBBackupSnapshotIntegrityVerifier *)v23 verifySnapshotAfterCommitWithOperationTracker:v15 scanMode:v39 enginePolicy:v38 snapshotTracker:v16 domainManager:v17 deviceRecordID:v19 hmacKey:v21 backupAttemptSummary:v22 duration:&v43 error:&v42];
    v40 = v42;

    if (v15)
    {
      v25 = [(MBCKBackupEngine *)self telemetry];
      [v25 setSnapshotVerificationStatus:@"PASS"];
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

        v30 = [(MBCKBackupEngine *)self telemetry];
        [v30 setSnapshotVerificationStatus:@"FAIL"];

        v31 = +[MBTapToRadar sharedInstance];
        v32 = [(MBCKEngine *)self persona];
        [v31 reportBackupVerificationFailure:v40 persona:v32];

        v33 = v40;
        v28 = 0;
        *v37 = v40;
        goto LABEL_12;
      }

      v25 = [(MBCKBackupEngine *)self telemetry];
      [v25 setSnapshotVerificationCancellationError:v40];
    }

    v34 = v43;
    v35 = [(MBCKBackupEngine *)self telemetry];
    [v35 setSnapshotVerificationDuration:v34];

    v28 = 1;
LABEL_12:

    return v28;
  }

  [v10 setSnapshotVerificationEnabled:0];

  v27 = [(MBCKBackupEngine *)self attemptSummary];
  [v27 setSnapshotVerificationRan:0];

  return 1;
}

- (BOOL)finishBackupWithError:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[MBCKBackupEngine finishBackupWithError:]", "MBCKBackupEngine.m", 1775, "error");
  }

  v5 = [(MBCKBackupEngine *)self _verifySnapshotWithError:?];
  if (v5)
  {
    if ([(MBCKBackupEngine *)self _notifyPluginsOfBackupEnded:0 error:a3])
    {
      -[MBCKBackupEngine _unmountSnapshotsAndRemoveThem:](self, "_unmountSnapshotsAndRemoveThem:", [objc_opt_class() _shouldRemoveSnapshotAfterError:0]);
      v6 = [(MBCKEngine *)self cache];
      v7 = [v6 size];
      v8 = [(MBCKBackupEngine *)self telemetry];
      [v8 setCacheSize:v7];

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
  v3 = [(MBCKBackupEngine *)self lastWatchdogResume];

  if (!v3)
  {
    v4 = +[NSDate date];
    [(MBCKBackupEngine *)self setLastWatchdogResume:v4];
  }

  v5 = [(MBCKBackupEngine *)self lastWatchdogResume];
  [v5 timeIntervalSinceNow];
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

    v10 = [(MBEngine *)self watchdog];
    [v10 resume];
  }
}

- (BOOL)_notifyPluginsOfBackupEnded:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MBCKBackupEngine *)self pluginNotifier];
  v19 = 0;
  v8 = [v7 notifyPluginsOfEndingBackupWithError:&v19];
  v9 = v19;
  v10 = v9;
  if (v8)
  {
    v18 = v9;
    v11 = [v7 notifyPluginsOfEndedBackup:v6 error:&v18];
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

    if (!a4)
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

  if (a4)
  {
LABEL_12:
    v16 = v10;
    v13 = 0;
    *a4 = v10;
    goto LABEL_15;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (BOOL)fileScanner:(id)a3 isFileAddedOrModified:(id)a4
{
  v5 = a4;
  v6 = [(MBCKEngine *)self cache];
  v7 = [MBCKFile fileWithMBFile:v5 cache:v6];

  LOBYTE(v6) = [v7 changeType] - 1 < 2;
  return v6;
}

- (id)fileScanner:(id)a3 didFindFile:(id)a4
{
  v5 = a4;
  v6 = [(MBCKEngine *)self cache];
  v7 = [MBCKFile fileWithMBFile:v5 cache:v6];

  [(MBCKSnapshot *)self->_currentSnapshot type];
  IsFull = MBSnapshotTypeIsFull();
  v9 = [v7 changeTypeForFullBackup:IsFull];
  if (IsFull)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v5 domain];
      v12 = [v5 relativePath];
      *buf = 134218498;
      v66 = v9;
      v67 = 2112;
      v68 = v11;
      v69 = 2112;
      *v70 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=cloud-backup= Detected change type %lu for %@:%@ during full backup", buf, 0x20u);

      v13 = [v5 domain];
      [v5 relativePath];
      v55 = v53 = v13;
      v51 = v9;
      _MBLog();
    }

LABEL_9:

    if (v9)
    {
      v18 = v9 == 3;
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

  v10 = [(MBCKBackupEngine *)self keyBagValidationState];
  if (![v10 requiresEncryptionKeyRepair]|| v9)
  {
    goto LABEL_9;
  }

  v9 = [v7 encryptionKey];
  if (!v9)
  {

    goto LABEL_27;
  }

  v14 = [(MBCKEngine *)self device];
  v15 = [v14 keybagManager];
  v16 = [v7 encryptionKey];
  v17 = [v15 hasKeybagForEncryptionKey:v16];

  if (v17)
  {
    v9 = 0;
    goto LABEL_27;
  }

  v19 = MBGetDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v7 domain];
    v21 = [v7 relativePath];
    v22 = [v7 encryptionKey];
    *buf = 138412802;
    v66 = v20;
    v67 = 2112;
    v68 = v21;
    v69 = 2048;
    *v70 = [v22 length];
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=cloud-backup= Found file requiring encryption key repair %@:%@ (sz: %llu)", buf, 0x20u);

    v23 = [v7 domain];
    v24 = [v7 relativePath];
    v25 = [v7 encryptionKey];
    v53 = v24;
    v55 = [v25 length];
    v51 = v23;
    _MBLog();
  }

  v26 = [(MBCKBackupEngine *)self attemptSummary];
  [v26 setEncryptionKeysPendingRepairCount:{objc_msgSend(v26, "encryptionKeysPendingRepairCount") + 1}];

  v9 = 2;
LABEL_18:
  v27 = [(MBCKEngine *)self serviceAccount:v51];
  v28 = [(MBCKEngine *)self device];
  v64 = 0;
  v29 = [v7 fetchEncryptionKeyWithAccount:v27 device:v28 error:&v64];
  v30 = v64;

  if ((v29 & 1) == 0)
  {
    v31 = MBGetDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v61 = [v5 inodeNumber];
      v32 = [v5 size];
      v63 = v30;
      v33 = [v5 protectionClass];
      v34 = [v5 domain];
      v35 = [v34 name];
      v36 = [v5 relativePath];
      *buf = 134219522;
      v66 = v61;
      v67 = 2048;
      v68 = v32;
      v69 = 1024;
      *v70 = v33;
      *&v70[4] = 2048;
      *&v70[6] = v9;
      v71 = 2112;
      v72 = v35;
      v73 = 2112;
      v74 = v36;
      v75 = 2112;
      v76 = v63;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to fetch encryption key for inode:%llu, sz:%lld, pc:%d, changeType:%lu, (%@:%@): %@", buf, 0x44u);

      v62 = [v5 inodeNumber];
      v37 = [v5 size];
      v38 = [v5 protectionClass];
      v39 = [v5 domain];
      v40 = [v39 name];
      v59 = [v5 relativePath];
      v60 = v63;
      v57 = v9;
      v58 = v40;
      v54 = v37;
      v56 = v38;
      v52 = v62;
      _MBLog();

      v30 = v63;
    }

    if ([MBError isError:v30 withCode:209])
    {
      v41 = [(MBCKBackupEngine *)self telemetry];
      [v41 _countMissingEncryptionKeyForFile:v7];
    }
  }

  v42 = [v7 isDirectory];
  v43 = [(MBCKBackupEngine *)self telemetry];
  v44 = v43;
  if (v42)
  {
    v45 = [v43 backupDirectoryCount];
    v46 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v45 integerValue] + 1);
    v47 = [(MBCKBackupEngine *)self telemetry];
    [v47 setBackupDirectoryCount:v46];
  }

  else
  {
    v45 = [v43 backupFileCount];
    v46 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v45 integerValue] + 1);
    v47 = [(MBCKBackupEngine *)self telemetry];
    [v47 setBackupFileCount:v46];
  }

LABEL_27:
  v48 = [(MBCKEngine *)self cache:v51];
  v49 = [v48 fileSeen:v7 changeType:v9];

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

- (id)_createDomainTranscriberForAPFSSnapshots:(id)a3 error:(id *)a4
{
  v34 = a3;
  v6 = [(MBCKEngine *)self persona];
  if (!v6)
  {
    __assert_rtn("[MBCKBackupEngine _createDomainTranscriberForAPFSSnapshots:error:]", "MBCKBackupEngine.m", 1976, "persona");
  }

  v7 = v6;
  v8 = [(MBCKBackupEngine *)self currentSnapshot];
  if (!v8)
  {
    __assert_rtn("[MBCKBackupEngine _createDomainTranscriberForAPFSSnapshots:error:]", "MBCKBackupEngine.m", 1979, "currentSnapshot");
  }

  v9 = v8;
  v10 = [(MBCKBackupEngine *)self currentSnapshot];
  v11 = [v10 commitID];

  if (!v11)
  {
    __assert_rtn("[MBCKBackupEngine _createDomainTranscriberForAPFSSnapshots:error:]", "MBCKBackupEngine.m", 1982, "currentSnapshotCommitID");
  }

  v35 = 0;
  v12 = [_TtC7backupd11MBVolumeMap createOrLoadForPersona:v7 outLoadType:&v35 error:a4];
  if (v12)
  {
    v13 = [_TtC7backupd11MBVolumeMap loadTypeToStringWithLoadType:v35];
    v14 = [(MBCKBackupEngine *)self attemptSummary];
    [v14 setVolumeMapLoadType:v13];

    if ([v9 snapshotFormat] == 3)
    {
      v15 = 0;
    }

    else
    {
      v15 = self;
    }

    v16 = v15;
    v32 = [MBDomainTranscriber alloc];
    v31 = [v7 snapshotDatabaseDirectory];
    v30 = [(MBCKBackupEngine *)self _scannerMode];
    v29 = [(MBEngine *)self enginePolicy];
    v17 = v9;
    v18 = [v9 snapshotFormat];
    [(MBCKEngine *)self device];
    v19 = v33 = v7;
    v20 = [(MBCKBackupEngine *)self keyBagValidationState];
    v21 = v11;
    v22 = [v20 requiresEncryptionKeyRepair];
    v23 = [(MBCKBackupEngine *)self attemptSummary];
    LOBYTE(v28) = v22;
    v11 = v21;
    v24 = v18;
    v9 = v17;
    v25 = [(MBDomainTranscriber *)v32 initWithPendingCommitID:v21 snapshotDatabaseDirectory:v31 scanMode:v30 enginePolicy:v29 snapshotFormat:v24 device:v19 volumeMap:v12 shouldRepairEncryptionKeys:v28 snapshotTracker:v34 attemptSummary:v23 compatibilityDelegate:v16 delegate:self];

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
    if (a4)
    {
      *a4 = 0;
    }
  }

  return v25;
}

- (BOOL)_shouldBackupUsingFSEvents
{
  v3 = _os_feature_enabled_impl();
  v4 = [(MBCKSnapshot *)self->_currentSnapshot type];
  result = 0;
  if (v3 && v4 == 1)
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
      v9 = [(MBCKBackupEngine *)self keyBagValidationState];
      v10 = [v9 requiresEncryptionKeyRepair];

      if (!v10)
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
  v2 = [(MBCKEngine *)self persona];
  v3 = [v2 copyPreferencesValueForKey:@"FSEventState" class:objc_opt_class()];

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

  v5 = [(MBCKEngine *)self persona];
  v6 = [(MBFSEventState *)v3 dictionaryRepresentation];
  [v5 setPreferencesValue:v6 forKey:@"FSEventState"];
}

- (void)_sendTelemetryForStateChange:(unint64_t)a3 start:(id)a4 end:(id)a5
{
  v8 = a5;
  v9 = a4;
  [MBCKStatusReporter reportBackupStateChangeForEngine:self state:a3 start:v9 end:v8];
  [MBPowerLog reportBackupStateChangeForEngine:self state:a3 start:v9 end:v8];
  [MBTelemetry sendBackupEngineStateChangeStatus:self state:a3 start:v9 end:v8];
}

- (void)_finishCollectingTelemetry
{
  [(MBCKBackupEngine *)self backupReason];
  if (MBBackupReasonIsScheduled())
  {
    v3 = [(MBCKEngine *)self ckOperationTracker];
    v4 = [v3 ckOperationPolicy];
    v5 = [v4 cellularAccess];

    if (v5)
    {
      +[MBCKManager inexpensiveCellularBalance];
      v6 = [NSNumber numberWithDouble:?];
      v7 = [(MBCKBackupEngine *)self telemetry];
      [v7 setRemainingCellularBalance:v6];
    }
  }

  v8 = [(MBCKBackupEngine *)self estimator];
  [v8 progressAtLastUpdate];
  if (v9 > 0.0)
  {
    v10 = [v8 minutesRemaining];
    if (v10 != -1)
    {
      v11 = [NSNumber numberWithUnsignedInteger:v10];
      v12 = [(MBCKBackupEngine *)self telemetry];
      [v12 setMinutesRemaining:v11];
    }
  }

  v13 = [(MBCKEngine *)self serviceManager];
  v14 = [v13 networkConnectivity];
  v16 = v15;
  v17 = [(MBCKBackupEngine *)self telemetry];
  [v17 setNetworkConnectivityAtFinish:{v14, v16}];

  v18 = [(MBCKEngine *)self engineError];
  v19 = [(MBCKBackupEngine *)self attemptSummary];
  [v19 setError:v18];

  v20 = [(MBCKEngine *)self cache];
  v21 = [v20 size];
  v22 = [v21 unsignedLongLongValue];
  v23 = [(MBCKBackupEngine *)self attemptSummary];
  [v23 setLegacyCacheSize:v22];

  v45 = 0;
  v24 = [(MBCKEngine *)self persona];
  v25 = [v24 snapshotDatabaseDirectory];
  v44 = 0;
  v26 = MBCalculateDiskUsageForSnapshotDirectory(v25, &v45, &v44);
  v27 = v44;

  if (v26 < 0)
  {
    v30 = MBGetDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v47 = v27;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "=cloud-backup= Failed to calculate disk usage for snapshot directory: %@", buf, 0xCu);
      _MBLog();
    }
  }

  else
  {
    v28 = [(MBCKBackupEngine *)self attemptSummary];
    [v28 setSnapshotDirectorySize:v26];

    v29 = v45;
    v30 = [(MBCKBackupEngine *)self attemptSummary];
    [v30 setSnapshotDirectoryCloneSize:v29];
  }

  v31 = MBPeakProcessMemoryUsage();
  v32 = [(MBCKBackupEngine *)self attemptSummary];
  [v32 setPeakMemoryUsage:v31];

  if (MBIsInternalInstall())
  {
    v33 = [(MBCKBackupEngine *)self attemptSummary];
    v34 = [v33 commitID];

    if (v34)
    {
      v35 = [(MBCKBackupEngine *)self attemptSummary];
      v36 = [(MBCKEngine *)self persona];
      v37 = [v36 snapshotDatabaseDirectory];
      v38 = [(MBCKBackupEngine *)self attemptSummary];
      v39 = [v38 commitID];
      v43 = 0;
      v40 = MBAppendAttemptSummaryToPlist(v35, v37, v39, &v43);
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
  v2 = [(MBCKBackupEngine *)self currentSnapshot];
  v3 = [v2 snapshotID];

  return v3;
}

- (void)syncProgress:(double)a3
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v6 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "=cloud-backup= BYClientDaemonCloudSyncProtocol sync progress: %f", buf, 0xCu);
    _MBLog();
  }
}

- (void)syncCompletedWithErrors:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v3;
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