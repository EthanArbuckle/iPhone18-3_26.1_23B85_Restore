@interface MBTelemetry
+ (BOOL)submitEngineCompletedEventName:(id)name engineStarted:(double)started engineError:(id)error;
+ (BOOL)submitEventName:(id)name event:(id)event;
+ (id)_dictToJSONString:(id)string;
+ (void)sendBackgroundRestoreCompletion:(unint64_t)completion snapshotIdentifier:(id)identifier snapshotFormat:(int64_t)format isRestoringUsingFileLists:(BOOL)lists duration:(double)duration error:(id)error fatalErrors:(id)errors domainsTopNSizes:(id)self0 domainsTopNFileCount:(id)self1 failedDomains:(id)self2;
+ (void)sendBackgroundRestoreHeartbeat:(unint64_t)heartbeat restoreInfo:(id)info;
+ (void)sendBackupEngineCompletionStatus:(id)status duration:(double)duration error:(id)error;
+ (void)sendBackupEngineStateChangeStatus:(id)status state:(unint64_t)state start:(id)start end:(id)end;
+ (void)sendRestoreEngineCompletionStatus:(id)status duration:(double)duration error:(id)error;
+ (void)sendRestoreEngineStateChangeStatus:(id)status state:(unint64_t)state start:(id)start end:(id)end;
@end

@implementation MBTelemetry

+ (BOOL)submitEventName:(id)name event:(id)event
{
  nameCopy = name;
  eventCopy = event;
  if (!nameCopy || (v7 = eventCopy) == 0)
  {
    __assert_rtn("+[MBTelemetry submitEventName:event:]", "MBTelemetry.m", 19, "eventName && event");
  }

  if ([eventCopy count])
  {
    v8 = [v7 objectForKeyedSubscript:@"successes"];
    if (v8)
    {
      v9 = v8;
      v10 = [v7 objectForKeyedSubscript:@"failed"];

      if (v10)
      {
        v11 = MBGetDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "=analytics= CA metrics have both success and failure recordings", buf, 2u);
          _MBLog();
        }

        LOBYTE(v12) = 0;
        goto LABEL_19;
      }
    }

    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v19 = nameCopy;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=analytics= Submitting %{public}@: %@", buf, 0x16u);
      _MBLog();
    }

    v17 = v7;
    v12 = AnalyticsSendEventLazy();
    v14 = MBGetDefaultLog();
    v15 = v14;
    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v19 = nameCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=analytics= Successfully submitted %{public}@", buf, 0xCu);
LABEL_17:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = nameCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "=analytics= Failed to submit %{public}@", buf, 0xCu);
      goto LABEL_17;
    }

    v11 = v17;
LABEL_19:

    goto LABEL_20;
  }

  LOBYTE(v12) = 1;
LABEL_20:

  return v12;
}

+ (BOOL)submitEngineCompletedEventName:(id)name engineStarted:(double)started engineError:(id)error
{
  errorCopy = error;
  nameCopy = name;
  v10 = +[NSMutableDictionary dictionary];
  [v10 setObject:&off_1003E0CD8 forKeyedSubscript:@"total"];
  v11 = [NSNumber numberWithUnsignedLongLong:MBPeakProcessMemoryUsage()];
  [v10 setObject:v11 forKeyedSubscript:@"peakMemoryUsage"];

  if (errorCopy)
  {
    [v10 setObject:&off_1003E0CD8 forKeyedSubscript:@"failed"];
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    [v10 setObject:v12 forKeyedSubscript:@"errorCode"];

    domain = [errorCopy domain];
    [v10 setObject:domain forKeyedSubscript:@"errorDomain"];

    underlyingErrors = [errorCopy underlyingErrors];
    firstObject = [underlyingErrors firstObject];

    if (firstObject)
    {
      v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [firstObject code]);
      [v10 setObject:v16 forKeyedSubscript:@"underlyingErrorCode"];

      domain2 = [firstObject domain];
      [v10 setObject:domain2 forKeyedSubscript:@"underlyingErrorDomain"];
    }
  }

  else
  {
    [v10 setObject:&off_1003E0CD8 forKeyedSubscript:@"successes"];
    +[NSDate timeIntervalSinceReferenceDate];
    firstObject = [NSNumber numberWithDouble:v18 - started];
    [v10 setObject:firstObject forKeyedSubscript:@"duration"];
  }

  v19 = [self submitEventName:nameCopy event:v10];
  return v19;
}

+ (id)_dictToJSONString:(id)string
{
  stringCopy = string;
  v4 = [NSString alloc];
  v5 = [NSJSONSerialization dataWithJSONObject:stringCopy options:1 error:0];

  v6 = [v4 initWithData:v5 encoding:4];

  return v6;
}

+ (void)sendBackupEngineCompletionStatus:(id)status duration:(double)duration error:(id)error
{
  statusCopy = status;
  errorCopy = error;
  serviceAccount = [statusCopy serviceAccount];
  if (serviceAccount)
  {
    [MBCKStatusRequest sendStatusRequestWithEngine:statusCopy duration:errorCopy error:duration];
    v10 = objc_opt_new();
    telemetry = [statusCopy telemetry];
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [telemetry telemetryID]);
    [v10 setObject:v12 forKeyedSubscript:@"sessionID"];

    [v10 setObject:@"BackupCompletion" forKeyedSubscript:@"telemetryType"];
    [statusCopy backupPolicy];
    v13 = MBStringForBackupPolicy();
    [v10 setObject:v13 forKeyedSubscript:@"policy"];

    if (!+[MBBackupScheduler backupOnWiFiWithDAS])
    {
      v14 = [NSNumber numberWithBool:0];
      [v10 setObject:v14 forKeyedSubscript:@"backupOnWiFiWithDAS"];
    }

    [statusCopy backupReason];
    v15 = MBStringForBackupReason();
    [v10 setObject:v15 forKeyedSubscript:@"reason"];

    backupStateDescription = [statusCopy backupStateDescription];
    [v10 setObject:backupStateDescription forKeyedSubscript:@"state"];

    v17 = MBStringForCameraRollState([statusCopy cameraRollBackupState]);
    [v10 setObject:v17 forKeyedSubscript:@"cameraRollBackupState"];

    telemetry2 = [statusCopy telemetry];
    v105 = 0;
    v19 = +[L28BackupStats l28BackupStatsForAccount:snapshotFormat:backupReason:backupError:error:](L28BackupStats, "l28BackupStatsForAccount:snapshotFormat:backupReason:backupError:error:", serviceAccount, [telemetry2 snapshotFormat], objc_msgSend(statusCopy, "backupReason"), errorCopy, &v105);
    v20 = v105;

    if (v19)
    {
      [v10 addEntriesFromDictionary:v19];
    }

    if (v20)
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v107 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to generate L28 stats: %@", buf, 0xCu);
        v101 = v20;
        _MBLog();
      }
    }

    v102 = v20;
    v103 = v19;
    v104 = serviceAccount;
    telemetry3 = [statusCopy telemetry];
    attemptSummary = [statusCopy attemptSummary];
    [attemptSummary snapshotFormat];
    scannedDomainsCount = [telemetry3 scannedDomainsCount];
    [v10 setObject:scannedDomainsCount forKeyedSubscript:@"scannedDomainsCount"];

    enabledDomainsCount = [telemetry3 enabledDomainsCount];
    [v10 setObject:enabledDomainsCount forKeyedSubscript:@"enabledDomainsCount"];

    attemptSummary2 = [statusCopy attemptSummary];
    v27 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary2 emptyDomainCount]);
    [v10 setObject:v27 forKeyedSubscript:@"emptyDomainsCount"];

    if (MBSnapshotFormatContainsManifests())
    {
      backupFileCount = [telemetry3 backupFileCount];
      [v10 setObject:backupFileCount forKeyedSubscript:@"fileCount"];

      backupDirectoryCount = [telemetry3 backupDirectoryCount];
      [v10 setObject:backupDirectoryCount forKeyedSubscript:@"directoryCount"];
    }

    if (MBSnapshotFormatContainsFileLists())
    {
      v30 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary modifiedDirectoryCount]);
      [v10 setObject:v30 forKeyedSubscript:@"modifiedDirectoryCount"];

      v31 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary modifiedRegularFileCount]);
      [v10 setObject:v31 forKeyedSubscript:@"modifiedRegularFileCount"];

      v32 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary unmodifiedDirectoryCount]);
      [v10 setObject:v32 forKeyedSubscript:@"unmodifiedDirectoryCount"];

      v33 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary unmodifiedRegularFileCount]);
      [v10 setObject:v33 forKeyedSubscript:@"unmodifiedRegularFileCount"];

      v34 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary deletedFileCount]);
      [v10 setObject:v34 forKeyedSubscript:@"deletedFileCount"];
    }

    backupTotalSize = [telemetry3 backupTotalSize];
    [v10 setObject:backupTotalSize forKeyedSubscript:@"totalSize"];

    if (MBSnapshotFormatContainsManifests())
    {
      queuedSize = [telemetry3 queuedSize];
      [v10 setObject:queuedSize forKeyedSubscript:@"queuedSize"];

      uploadedSize = [telemetry3 uploadedSize];
      [v10 setObject:uploadedSize forKeyedSubscript:@"uploadedSize"];

      queuedFileCount = [telemetry3 queuedFileCount];
      [v10 setObject:queuedFileCount forKeyedSubscript:@"queuedFileCount"];

      uploadedFileCount = [telemetry3 uploadedFileCount];
      [v10 setObject:uploadedFileCount forKeyedSubscript:@"uploadedFileCount"];

      skippedFilesCount = [telemetry3 skippedFilesCount];
      [v10 setObject:skippedFilesCount forKeyedSubscript:@"skippedFilesCount"];
    }

    if (MBSnapshotFormatContainsFileLists())
    {
      v41 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [attemptSummary queuedAssetSize]);
      [v10 setObject:v41 forKeyedSubscript:@"queuedAssetSize"];

      v42 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary queuedAssetCount]);
      [v10 setObject:v42 forKeyedSubscript:@"queuedAssetCount"];

      v43 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary uploadedAssetCount]);
      [v10 setObject:v43 forKeyedSubscript:@"uploadedAssetCount"];

      v44 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [attemptSummary uploadedAssetSize]);
      [v10 setObject:v44 forKeyedSubscript:@"uploadedAssetSize"];
    }

    cacheRefreshSummary = [statusCopy cacheRefreshSummary];
    v46 = cacheRefreshSummary;
    if (cacheRefreshSummary && [cacheRefreshSummary downloadedSnapshotCount])
    {
      v47 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v46 cachedSnapshotCount]);
      [v10 setObject:v47 forKeyedSubscript:@"cachedSnapshotCount"];

      v48 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v46 serverSnapshotCount]);
      [v10 setObject:v48 forKeyedSubscript:@"serverSnapshotCount"];

      v49 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v46 journalActionCount]);
      [v10 setObject:v49 forKeyedSubscript:@"journalActionCount"];

      v50 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v46 journalReplaySucceeded]);
      [v10 setObject:v50 forKeyedSubscript:@"journalReplaySucceeded"];

      v51 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v46 journalVerificationErrorCount]);
      [v10 setObject:v51 forKeyedSubscript:@"journalVerificationErrorCount"];

      v52 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v46 downloadedSnapshotCount]);
      [v10 setObject:v52 forKeyedSubscript:@"downloadedSnapshotCount"];

      v53 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v46 downloadedSnapshotVerificationFailureCount]);
      [v10 setObject:v53 forKeyedSubscript:@"downloadedSnapshotVerificationFailureCount"];

      verificationFailureStrings = [v46 verificationFailureStrings];
      if ([verificationFailureStrings count])
      {
        v55 = [verificationFailureStrings componentsJoinedByString:@" "];
        [v10 setObject:v55 forKeyedSubscript:@"verificationFailures"];
      }
    }

    v56 = [NSNumber numberWithDouble:duration];
    [v10 setObject:v56 forKeyedSubscript:@"duration"];

    cacheSize = [telemetry3 cacheSize];
    [v10 setObject:cacheSize forKeyedSubscript:@"cacheSize"];

    freeDiskSpace = [telemetry3 freeDiskSpace];
    [v10 setObject:freeDiskSpace forKeyedSubscript:@"freeDiskSpace"];

    [telemetry3 fseventDuration];
    v59 = [NSNumber numberWithDouble:?];
    [v10 setObject:v59 forKeyedSubscript:@"fseventDuration"];

    attemptSummary3 = [statusCopy attemptSummary];
    v61 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary3 peakMemoryUsage]);
    [v10 setObject:v61 forKeyedSubscript:@"peakMemoryUsage"];

    attemptSummary4 = [statusCopy attemptSummary];
    v63 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [attemptSummary4 uploadedFileListSize]);
    [v10 setObject:v63 forKeyedSubscript:@"uploadedFileListSize"];

    v64 = MBStringForChargingType([telemetry3 chargingType]);
    [v10 setObject:v64 forKeyedSubscript:@"chargingType"];

    topDomainsWithMissingEncryptionKeys = [telemetry3 topDomainsWithMissingEncryptionKeys];
    v66 = [topDomainsWithMissingEncryptionKeys count];

    if (v66)
    {
      topDomainsWithMissingEncryptionKeys2 = [telemetry3 topDomainsWithMissingEncryptionKeys];
      v68 = [topDomainsWithMissingEncryptionKeys2 componentsJoinedByString:@" "];
      [v10 setObject:v68 forKeyedSubscript:@"topDomainsWithMissingEncryptionKeys"];
    }

    if (MBSnapshotFormatContainsManifests())
    {
      classAFilesMissingEncryptionKeys = [telemetry3 classAFilesMissingEncryptionKeys];
      [v10 setObject:classAFilesMissingEncryptionKeys forKeyedSubscript:@"classAFilesMissingEncryptionKeys"];

      [telemetry3 classBFilesMissingEncryptionKeys];
    }

    else
    {
      v70 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary classAFilesMissingEncryptionKeys]);
      [v10 setObject:v70 forKeyedSubscript:@"classAFilesMissingEncryptionKeys"];

      +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary classBFilesMissingEncryptionKeys]);
    }
    v71 = ;
    [v10 setObject:v71 forKeyedSubscript:@"classBFilesMissingEncryptionKeys"];

    attemptSummary5 = [statusCopy attemptSummary];
    keyBagValidationResult = [attemptSummary5 keyBagValidationResult];

    attemptSummary6 = [statusCopy attemptSummary];
    v75 = MBStringForKeyBagValidationResult([attemptSummary6 keyBagValidationResult]);
    [v10 setObject:v75 forKeyedSubscript:@"keyBagValidationResult"];

    if (keyBagValidationResult)
    {
      attemptSummary7 = [statusCopy attemptSummary];
      v77 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary7 encryptionKeysPendingRepairCount]);
      [v10 setObject:v77 forKeyedSubscript:@"encryptionKeysPendingRepairCount"];

      attemptSummary8 = [statusCopy attemptSummary];
      v79 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary8 invalidKeyBagReferenceCount]);
      [v10 setObject:v79 forKeyedSubscript:@"invalidKeyBagReferenceCount"];

      attemptSummary9 = [statusCopy attemptSummary];
      v81 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary9 validKeyBagReferenceCount]);
      [v10 setObject:v81 forKeyedSubscript:@"validKeyBagReferenceCount"];
    }

    v82 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [telemetry3 backupAttemptCount]);
    [v10 setObject:v82 forKeyedSubscript:@"attemptCount"];

    device = [statusCopy device];
    v84 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [device pendingSnapshotQuotaReserved]);
    [v10 setObject:v84 forKeyedSubscript:@"pendingSnapshotQuotaReserved"];

    [telemetry3 snapshotType];
    v85 = MBStringForSnapshotType();
    [v10 setObject:v85 forKeyedSubscript:@"snapshotType"];

    [telemetry3 snapshotFormat];
    v86 = MBStringForSnapshotFormat();
    [v10 setObject:v86 forKeyedSubscript:@"snapshotFormat"];

    [telemetry3 previousSnapshotFormat];
    v87 = MBStringForSnapshotFormat();
    [v10 setObject:v87 forKeyedSubscript:@"previousSnapshotFormat"];

    attemptSummary10 = [statusCopy attemptSummary];
    commitID = [attemptSummary10 commitID];

    if (commitID)
    {
      attemptSummary11 = [statusCopy attemptSummary];
      commitID2 = [attemptSummary11 commitID];
      v92 = sub_1002498EC(commitID2, @"backup");
      [v10 setObject:v92 forKeyedSubscript:@"pendingSnapshotID"];
    }

    if (errorCopy)
    {
      v93 = [MBError isError:errorCopy withCode:0];
    }

    else
    {
      v93 = 1;
    }

    v94 = MBExtractFirstMBErrorOrCKError(errorCopy);
    v95 = [NSNumber numberWithBool:v93];
    [v10 setObject:v95 forKeyedSubscript:@"success"];

    if (v94)
    {
      domain = [v94 domain];
      [v10 setObject:domain forKeyedSubscript:@"errorDomain"];

      v97 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v94 code]);
      [v10 setObject:v97 forKeyedSubscript:@"errorCode"];
    }

    snapshotVerificationStatus = [telemetry3 snapshotVerificationStatus];

    if (snapshotVerificationStatus)
    {
      snapshotVerificationStatus2 = [telemetry3 snapshotVerificationStatus];
      [v10 setObject:snapshotVerificationStatus2 forKeyedSubscript:@"snapshotVerificationStatus"];

      [telemetry3 snapshotVerificationDuration];
      v100 = [NSNumber numberWithDouble:?];
      [v10 setObject:v100 forKeyedSubscript:@"snapshotVerificationDuration"];
    }

    else
    {
      [v10 setObject:@"Skipped" forKeyedSubscript:@"snapshotVerificationStatus"];
    }

    [MBTelemetry submitEventName:@"com.apple.massStorage.MobileBackupInfo.Backup_1" event:v10];

    serviceAccount = v104;
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "nil account", buf, 2u);
      _MBLog();
    }
  }
}

+ (void)sendRestoreEngineCompletionStatus:(id)status duration:(double)duration error:(id)error
{
  statusCopy = status;
  errorCopy = error;
  if (errorCopy || [statusCopy isForegroundRestore])
  {
    [MBCKStatusRequest sendStatusRequestWithEngine:statusCopy duration:errorCopy error:duration];
  }

  if ([statusCopy isForegroundRestore])
  {
    v9 = objc_opt_new();
    serviceManager = [statusCopy serviceManager];
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [serviceManager restoreTelemetryID]);
    [v9 setObject:v11 forKeyedSubscript:@"sessionID"];

    [v9 setObject:@"ForegroundRestoreCompletion" forKeyedSubscript:@"telemetryType"];
    engineError = [statusCopy engineError];
    if (engineError)
    {
      engineError2 = [statusCopy engineError];
      v14 = [MBError isError:engineError2 withCode:0];
    }

    else
    {
      v14 = 1;
    }

    [statusCopy backupPolicy];
    v15 = MBStringForBackupPolicy();
    [v9 setObject:v15 forKeyedSubscript:@"policy"];

    restoreStateDescription = [statusCopy restoreStateDescription];
    [v9 setObject:restoreStateDescription forKeyedSubscript:@"state"];

    v17 = [NSNumber numberWithDouble:duration];
    [v9 setObject:v17 forKeyedSubscript:@"duration"];

    v18 = [NSNumber numberWithUnsignedLongLong:MBPeakProcessMemoryUsage()];
    [v9 setObject:v18 forKeyedSubscript:@"peakMemoryUsage"];

    freeDiskSpace = [statusCopy freeDiskSpace];
    [v9 setObject:freeDiskSpace forKeyedSubscript:@"freeDiskSpace"];

    v20 = MBStringForChargingType([statusCopy chargingType]);
    [v9 setObject:v20 forKeyedSubscript:@"chargingType"];

    v21 = MBExtractFirstMBErrorOrCKError(errorCopy);
    v22 = [NSNumber numberWithBool:v14];
    [v9 setObject:v22 forKeyedSubscript:@"success"];

    if (v21)
    {
      domain = [v21 domain];
      [v9 setObject:domain forKeyedSubscript:@"errorDomain"];

      v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 code]);
      [v9 setObject:v24 forKeyedSubscript:@"errorCode"];
    }

    foregroundRestorableSize = [statusCopy foregroundRestorableSize];
    [v9 setObject:foregroundRestorableSize forKeyedSubscript:@"foregroundRestorableSize"];

    backgroundRestorableSize = [statusCopy backgroundRestorableSize];
    [v9 setObject:backgroundRestorableSize forKeyedSubscript:@"backgroundRestorableSize"];

    foregroundRestorableFileCount = [statusCopy foregroundRestorableFileCount];
    [v9 setObject:foregroundRestorableFileCount forKeyedSubscript:@"foregroundRestorableFileCount"];

    backgroundRestorableFileCount = [statusCopy backgroundRestorableFileCount];
    [v9 setObject:backgroundRestorableFileCount forKeyedSubscript:@"backgroundRestorableFileCount"];

    foregroundRestorableDomainCount = [statusCopy foregroundRestorableDomainCount];
    [v9 setObject:foregroundRestorableDomainCount forKeyedSubscript:@"foregroundRestoreDomainsCount"];

    foregroundRestoreVerificationStatus = [statusCopy foregroundRestoreVerificationStatus];
    v31 = foregroundRestoreVerificationStatus;
    if (foregroundRestoreVerificationStatus)
    {
      v32 = foregroundRestoreVerificationStatus;
    }

    else
    {
      v32 = @"Skipped";
    }

    [v9 setObject:v32 forKeyedSubscript:@"foregroundRestoreVerificationStatus"];

    targetSnapshot = [statusCopy targetSnapshot];
    [targetSnapshot snapshotFormat];
    v34 = MBStringForSnapshotFormat();
    [v9 setObject:v34 forKeyedSubscript:@"snapshotFormat"];

    v50 = 0;
    serviceAccount = [statusCopy serviceAccount];
    persona = [serviceAccount persona];
    v49 = 0;
    v37 = [MBRestoreCloudFormatPolicy isRestoringFromFileLists:&v50 persona:persona error:&v49];
    v38 = v49;

    if (v37)
    {
      if (v50)
      {
        v39 = @"Lightrail";
      }

      else
      {
        v39 = @"Legacy";
      }

      [v9 setObject:v39 forKeyedSubscript:@"snapshotFormatRestored"];
    }

    else
    {
      v40 = MBGetDefaultLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v52 = v38;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Could not determine if restoring using file lists: %@", buf, 0xCu);
        v48 = v38;
        _MBLog();
      }
    }

    targetSnapshot2 = [statusCopy targetSnapshot];
    commitID = [targetSnapshot2 commitID];
    snapshotID = commitID;
    if (!commitID)
    {
      snapshotID = [targetSnapshot2 snapshotID];
    }

    v44 = sub_1002498EC(snapshotID, @"restore");
    [v9 setObject:v44 forKeyedSubscript:@"snapshotID"];

    if (!commitID)
    {
    }

    device = [targetSnapshot2 device];
    hardwareModel = [device hardwareModel];
    [v9 setObject:hardwareModel forKeyedSubscript:@"sourceDeviceHardwareModel"];

    buildVersion = [targetSnapshot2 buildVersion];
    [v9 setObject:buildVersion forKeyedSubscript:@"sourceDeviceBuildVersion"];

    [MBTelemetry submitEventName:@"com.apple.massStorage.MobileBackupInfo.FGRestore_1" event:v9];
  }
}

+ (void)sendBackupEngineStateChangeStatus:(id)status state:(unint64_t)state start:(id)start end:(id)end
{
  statusCopy = status;
  endCopy = end;
  startCopy = start;
  v11 = objc_opt_new();
  telemetry = [statusCopy telemetry];
  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [telemetry telemetryID]);
  [v11 setObject:v13 forKeyedSubscript:@"sessionID"];

  [v11 setObject:@"BackupStateChange" forKeyedSubscript:@"telemetryType"];
  backupStateDescription = [statusCopy backupStateDescription];
  [v11 setObject:backupStateDescription forKeyedSubscript:@"state"];

  [endCopy timeIntervalSinceDate:startCopy];
  v16 = v15;

  v17 = [NSNumber numberWithDouble:v16];
  [v11 setObject:v17 forKeyedSubscript:@"duration"];

  engineError = [statusCopy engineError];
  v19 = MBExtractFirstMBErrorOrCKError(engineError);

  if (v19)
  {
    domain = [v19 domain];
    [v11 setObject:domain forKeyedSubscript:@"errorDomain"];

    v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v19 code]);
    [v11 setObject:v21 forKeyedSubscript:@"errorCode"];
  }

  [statusCopy backupPolicy];
  v22 = MBStringForBackupPolicy();
  [v11 setObject:v22 forKeyedSubscript:@"policy"];

  [statusCopy backupReason];
  v23 = MBStringForBackupReason();
  [v11 setObject:v23 forKeyedSubscript:@"reason"];

  telemetry2 = [statusCopy telemetry];
  [telemetry2 snapshotFormat];
  v25 = MBStringForSnapshotFormat();
  [v11 setObject:v25 forKeyedSubscript:@"snapshotFormat"];

  [telemetry2 snapshotType];
  v26 = MBStringForSnapshotType();
  [v11 setObject:v26 forKeyedSubscript:@"snapshotType"];

  if (state == 8)
  {
    snapshotVerificationStatus = [telemetry2 snapshotVerificationStatus];

    if (snapshotVerificationStatus)
    {
      snapshotVerificationStatus2 = [telemetry2 snapshotVerificationStatus];
      [v11 setObject:snapshotVerificationStatus2 forKeyedSubscript:@"snapshotVerificationStatus"];

      [telemetry2 snapshotVerificationDuration];
      v29 = [NSNumber numberWithDouble:?];
      [v11 setObject:v29 forKeyedSubscript:@"snapshotVerificationDuration"];
    }

    else
    {
      [v11 setObject:@"Skipped" forKeyedSubscript:@"snapshotVerificationStatus"];
    }
  }

  [MBTelemetry submitEventName:@"com.apple.massStorage.MobileBackupInfo.Backup_1" event:v11];
}

+ (void)sendRestoreEngineStateChangeStatus:(id)status state:(unint64_t)state start:(id)start end:(id)end
{
  statusCopy = status;
  startCopy = start;
  endCopy = end;
  if ([statusCopy isForegroundRestore])
  {
    v11 = objc_opt_new();
    serviceManager = [statusCopy serviceManager];
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [serviceManager restoreTelemetryID]);
    [v11 setObject:v13 forKeyedSubscript:@"sessionID"];

    [v11 setObject:@"ForegroundRestoreStateChange" forKeyedSubscript:@"telemetryType"];
    v14 = MBCKStringForRestoreState(state);
    [v11 setObject:v14 forKeyedSubscript:@"state"];

    [endCopy timeIntervalSinceDate:startCopy];
    v15 = [NSNumber numberWithDouble:?];
    [v11 setObject:v15 forKeyedSubscript:@"duration"];

    engineError = [statusCopy engineError];
    v17 = MBExtractFirstMBErrorOrCKError(engineError);

    if (v17)
    {
      domain = [v17 domain];
      [v11 setObject:domain forKeyedSubscript:@"errorDomain"];

      v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v17 code]);
      [v11 setObject:v19 forKeyedSubscript:@"errorCode"];
    }

    [MBTelemetry submitEventName:@"com.apple.massStorage.MobileBackupInfo.FGRestore_1" event:v11];
  }
}

+ (void)sendBackgroundRestoreHeartbeat:(unint64_t)heartbeat restoreInfo:(id)info
{
  infoCopy = info;
  v6 = +[NSMutableDictionary dictionary];
  v7 = [NSNumber numberWithUnsignedInteger:heartbeat];
  [v6 setObject:v7 forKeyedSubscript:@"sessionID"];

  [v6 setObject:@"BackgroundRestoreHeartbeat" forKeyedSubscript:@"telemetryType"];
  v8 = [NSNumber numberWithInt:BYSetupAssistantNeedsToRun() ^ 1];
  [v6 setObject:v8 forKeyedSubscript:@"setupAssistantFinished"];

  v9 = infoCopy;
  commitID = [infoCopy commitID];
  snapshotID = [v9 snapshotID];
  v12 = snapshotID;
  if (commitID)
  {
    snapshotID = commitID;
  }

  v13 = sub_1002498EC(snapshotID, @"restore");
  [v6 setObject:v13 forKeyedSubscript:@"snapshotID"];
  [v9 snapshotFormat];
  v38 = MBStringForSnapshotFormat();
  [v6 setObject:? forKeyedSubscript:?];
  p_weak_ivar_lyt = (&MBRestoreDomainCommand + 56);
  if (v9)
  {
    v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 appDataDidFinishRestore]);
    [v6 setObject:v15 forKeyedSubscript:@"appRestoreComplete"];

    v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 airTrafficDidFinishRestore]);
    [v6 setObject:v16 forKeyedSubscript:@"atcRestoreComplete"];

    v17 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 dataClassesRemaining]);
    [v6 setObject:v17 forKeyedSubscript:@"dataClassesRemaining"];

    v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 bytesRemaining]);
    [v6 setObject:v18 forKeyedSubscript:@"bytesRemaining"];

    recentATCErrors = [v9 recentATCErrors];
    v20 = [recentATCErrors count];

    p_weak_ivar_lyt = &MBRestoreDomainCommand.weak_ivar_lyt;
    if (v20)
    {
      recentATCErrors2 = [v9 recentATCErrors];
      v22 = [MBTelemetry _dictToJSONString:recentATCErrors2];
      [v6 setObject:v22 forKeyedSubscript:@"recentATCErrors"];

      p_weak_ivar_lyt = &MBRestoreDomainCommand.weak_ivar_lyt;
    }
  }

  [p_weak_ivar_lyt + 180 submitEventName:@"com.apple.massStorage.MobileBackupInfo.BGRestore_1" event:v6];
  perClassItemsRemaining = [v9 perClassItemsRemaining];
  v24 = [perClassItemsRemaining count];

  if (v24)
  {
    v35 = v12;
    v36 = commitID;
    v37 = v6;
    v25 = +[NSMutableDictionary dictionary];
    v26 = [NSNumber numberWithUnsignedInteger:heartbeat];
    [v25 setObject:v26 forKeyedSubscript:@"sessionID"];

    [v25 setObject:@"BackgroundRestoreHeartbeat-Items" forKeyedSubscript:@"telemetryType"];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [v9 perClassItemsRemaining];
    v27 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v41;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v41 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v40 + 1) + 8 * i);
          [v25 setObject:v31 forKeyedSubscript:@"perClassItemsRemaining"];
          [v9 perClassItemsRemaining];
          v33 = v32 = v9;
          v34 = [v33 objectForKeyedSubscript:v31];
          [v25 setObject:v34 forKeyedSubscript:@"fileCounts"];

          v9 = v32;
          [MBTelemetry submitEventName:@"com.apple.massStorage.MobileBackupInfo.BGRestore_1" event:v25];
        }

        v28 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v28);
    }

    commitID = v36;
    v6 = v37;
    v12 = v35;
  }
}

+ (void)sendBackgroundRestoreCompletion:(unint64_t)completion snapshotIdentifier:(id)identifier snapshotFormat:(int64_t)format isRestoringUsingFileLists:(BOOL)lists duration:(double)duration error:(id)error fatalErrors:(id)errors domainsTopNSizes:(id)self0 domainsTopNFileCount:(id)self1 failedDomains:(id)self2
{
  listsCopy = lists;
  identifierCopy = identifier;
  errorCopy = error;
  errorsCopy = errors;
  sizesCopy = sizes;
  countCopy = count;
  domainsCopy = domains;
  v21 = objc_opt_new();
  completionCopy = completion;
  v22 = [NSNumber numberWithUnsignedInteger:completion];
  [v21 setObject:v22 forKeyedSubscript:@"sessionID"];

  [v21 setObject:@"BackgroundRestoreCompletion" forKeyedSubscript:@"telemetryType"];
  if ([errorsCopy count])
  {
    v23 = 0;
  }

  else if (errorCopy)
  {
    v23 = [MBError isError:errorCopy withCode:0];
  }

  else
  {
    v23 = 1;
  }

  if ([MBError shouldReportLowDiskSpaceForError:errorCopy])
  {
    v24 = [NSNumber numberWithUnsignedLongLong:MBFreeDiskSpace()];
    [v21 setObject:v24 forKeyedSubscript:@"freeDiskSpace"];
  }

  v64 = errorCopy;
  v25 = [NSNumber numberWithDouble:duration];
  [v21 setObject:v25 forKeyedSubscript:@"duration"];

  v26 = [NSNumber numberWithUnsignedLongLong:MBPeakProcessMemoryUsage()];
  [v21 setObject:v26 forKeyedSubscript:@"peakMemoryUsage"];

  v65 = identifierCopy;
  v27 = sub_1002498EC(identifierCopy, @"restore");
  v28 = MBStringForSnapshotFormat();
  v29 = @"Legacy";
  if (listsCopy)
  {
    v29 = @"Lightrail";
  }

  v30 = v29;
  v71 = v27;
  [v21 setObject:v27 forKeyedSubscript:@"snapshotID"];
  v70 = v28;
  [v21 setObject:v28 forKeyedSubscript:@"snapshotFormat"];
  v69 = v30;
  [v21 setObject:v30 forKeyedSubscript:@"snapshotFormatRestored"];
  v31 = [NSNumber numberWithBool:v23];
  [v21 setObject:v31 forKeyedSubscript:@"success"];

  if ([domainsCopy count])
  {
    v32 = [domainsCopy componentsJoinedByString:@" "];
    [v21 setObject:v32 forKeyedSubscript:@"failedDomains"];
  }

  v62 = v21;
  v63 = domainsCopy;
  [MBTelemetry submitEventName:@"com.apple.massStorage.MobileBackupInfo.BGRestore_1" event:v21];
  v33 = objc_opt_new();
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = errorsCopy;
  v34 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v82;
    do
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v82 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v81 + 1) + 8 * i);
        [v33 setObject:v27 forKeyedSubscript:@"snapshotID"];
        [v33 setObject:v70 forKeyedSubscript:@"snapshotFormat"];
        [v33 setObject:v69 forKeyedSubscript:@"snapshotFormatRestored"];
        v39 = [NSNumber numberWithUnsignedInteger:completion];
        [v33 setObject:v39 forKeyedSubscript:@"sessionID"];

        [v33 setObject:@"BackgroundRestoreCompletion-Domains" forKeyedSubscript:@"telemetryType"];
        domain = [v38 domain];
        [v33 setObject:domain forKeyedSubscript:@"errorDomain"];

        v41 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v38 code]);
        [v33 setObject:v41 forKeyedSubscript:@"errorCode"];

        v42 = [MBError signatureForError:v38];
        [v33 setObject:v42 forKeyedSubscript:@"errorSignature"];

        [MBTelemetry submitEventName:@"com.apple.massStorage.MobileBackupInfo.BGRestore_1" event:v33];
      }

      v35 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
    }

    while (v35);
  }

  if ([sizesCopy count])
  {
    v43 = +[NSMutableDictionary dictionary];
    v44 = [NSNumber numberWithUnsignedInteger:completion];
    [v43 setObject:v44 forKeyedSubscript:@"sessionID"];

    [v43 setObject:@"BackgroundRestoreCompletion-Domains" forKeyedSubscript:@"telemetryType"];
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v45 = sizesCopy;
    v46 = [v45 countByEnumeratingWithState:&v77 objects:v86 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v78;
      do
      {
        for (j = 0; j != v47; j = j + 1)
        {
          if (*v78 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v77 + 1) + 8 * j);
          [v43 setObject:v50 forKeyedSubscript:@"domainName"];
          v51 = [v45 objectForKeyedSubscript:v50];
          [v43 setObject:v51 forKeyedSubscript:@"domainSize"];

          [MBTelemetry submitEventName:@"com.apple.massStorage.MobileBackupInfo.BGRestore_1" event:v43];
        }

        v47 = [v45 countByEnumeratingWithState:&v77 objects:v86 count:16];
      }

      while (v47);
    }
  }

  v52 = countCopy;
  if ([countCopy count])
  {
    v53 = +[NSMutableDictionary dictionary];
    v54 = [NSNumber numberWithUnsignedInteger:completionCopy];
    [v53 setObject:v54 forKeyedSubscript:@"sessionID"];

    [v53 setObject:@"BackgroundRestoreCompletion-Domains" forKeyedSubscript:@"telemetryType"];
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v55 = countCopy;
    v56 = [v55 countByEnumeratingWithState:&v73 objects:v85 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v74;
      do
      {
        for (k = 0; k != v57; k = k + 1)
        {
          if (*v74 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v60 = *(*(&v73 + 1) + 8 * k);
          [v53 setObject:v60 forKeyedSubscript:@"domainName"];
          v61 = [v55 objectForKeyedSubscript:v60];
          [v53 setObject:v61 forKeyedSubscript:@"fileCounts"];

          [MBTelemetry submitEventName:@"com.apple.massStorage.MobileBackupInfo.BGRestore_1" event:v53];
        }

        v57 = [v55 countByEnumeratingWithState:&v73 objects:v85 count:16];
      }

      while (v57);
    }

    v52 = countCopy;
  }
}

@end