@interface MBTelemetry
+ (BOOL)submitEngineCompletedEventName:(id)a3 engineStarted:(double)a4 engineError:(id)a5;
+ (BOOL)submitEventName:(id)a3 event:(id)a4;
+ (id)_dictToJSONString:(id)a3;
+ (void)sendBackgroundRestoreCompletion:(unint64_t)a3 snapshotIdentifier:(id)a4 snapshotFormat:(int64_t)a5 isRestoringUsingFileLists:(BOOL)a6 duration:(double)a7 error:(id)a8 fatalErrors:(id)a9 domainsTopNSizes:(id)a10 domainsTopNFileCount:(id)a11 failedDomains:(id)a12;
+ (void)sendBackgroundRestoreHeartbeat:(unint64_t)a3 restoreInfo:(id)a4;
+ (void)sendBackupEngineCompletionStatus:(id)a3 duration:(double)a4 error:(id)a5;
+ (void)sendBackupEngineStateChangeStatus:(id)a3 state:(unint64_t)a4 start:(id)a5 end:(id)a6;
+ (void)sendRestoreEngineCompletionStatus:(id)a3 duration:(double)a4 error:(id)a5;
+ (void)sendRestoreEngineStateChangeStatus:(id)a3 state:(unint64_t)a4 start:(id)a5 end:(id)a6;
@end

@implementation MBTelemetry

+ (BOOL)submitEventName:(id)a3 event:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5 || (v7 = v6) == 0)
  {
    __assert_rtn("+[MBTelemetry submitEventName:event:]", "MBTelemetry.m", 19, "eventName && event");
  }

  if ([v6 count])
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
      v19 = v5;
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
        v19 = v5;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=analytics= Successfully submitted %{public}@", buf, 0xCu);
LABEL_17:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v5;
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

+ (BOOL)submitEngineCompletedEventName:(id)a3 engineStarted:(double)a4 engineError:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = +[NSMutableDictionary dictionary];
  [v10 setObject:&off_1003E0CD8 forKeyedSubscript:@"total"];
  v11 = [NSNumber numberWithUnsignedLongLong:MBPeakProcessMemoryUsage()];
  [v10 setObject:v11 forKeyedSubscript:@"peakMemoryUsage"];

  if (v8)
  {
    [v10 setObject:&off_1003E0CD8 forKeyedSubscript:@"failed"];
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
    [v10 setObject:v12 forKeyedSubscript:@"errorCode"];

    v13 = [v8 domain];
    [v10 setObject:v13 forKeyedSubscript:@"errorDomain"];

    v14 = [v8 underlyingErrors];
    v15 = [v14 firstObject];

    if (v15)
    {
      v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 code]);
      [v10 setObject:v16 forKeyedSubscript:@"underlyingErrorCode"];

      v17 = [v15 domain];
      [v10 setObject:v17 forKeyedSubscript:@"underlyingErrorDomain"];
    }
  }

  else
  {
    [v10 setObject:&off_1003E0CD8 forKeyedSubscript:@"successes"];
    +[NSDate timeIntervalSinceReferenceDate];
    v15 = [NSNumber numberWithDouble:v18 - a4];
    [v10 setObject:v15 forKeyedSubscript:@"duration"];
  }

  v19 = [a1 submitEventName:v9 event:v10];
  return v19;
}

+ (id)_dictToJSONString:(id)a3
{
  v3 = a3;
  v4 = [NSString alloc];
  v5 = [NSJSONSerialization dataWithJSONObject:v3 options:1 error:0];

  v6 = [v4 initWithData:v5 encoding:4];

  return v6;
}

+ (void)sendBackupEngineCompletionStatus:(id)a3 duration:(double)a4 error:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 serviceAccount];
  if (v9)
  {
    [MBCKStatusRequest sendStatusRequestWithEngine:v7 duration:v8 error:a4];
    v10 = objc_opt_new();
    v11 = [v7 telemetry];
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 telemetryID]);
    [v10 setObject:v12 forKeyedSubscript:@"sessionID"];

    [v10 setObject:@"BackupCompletion" forKeyedSubscript:@"telemetryType"];
    [v7 backupPolicy];
    v13 = MBStringForBackupPolicy();
    [v10 setObject:v13 forKeyedSubscript:@"policy"];

    if (!+[MBBackupScheduler backupOnWiFiWithDAS])
    {
      v14 = [NSNumber numberWithBool:0];
      [v10 setObject:v14 forKeyedSubscript:@"backupOnWiFiWithDAS"];
    }

    [v7 backupReason];
    v15 = MBStringForBackupReason();
    [v10 setObject:v15 forKeyedSubscript:@"reason"];

    v16 = [v7 backupStateDescription];
    [v10 setObject:v16 forKeyedSubscript:@"state"];

    v17 = MBStringForCameraRollState([v7 cameraRollBackupState]);
    [v10 setObject:v17 forKeyedSubscript:@"cameraRollBackupState"];

    v18 = [v7 telemetry];
    v105 = 0;
    v19 = +[L28BackupStats l28BackupStatsForAccount:snapshotFormat:backupReason:backupError:error:](L28BackupStats, "l28BackupStatsForAccount:snapshotFormat:backupReason:backupError:error:", v9, [v18 snapshotFormat], objc_msgSend(v7, "backupReason"), v8, &v105);
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
    v104 = v9;
    v22 = [v7 telemetry];
    v23 = [v7 attemptSummary];
    [v23 snapshotFormat];
    v24 = [v22 scannedDomainsCount];
    [v10 setObject:v24 forKeyedSubscript:@"scannedDomainsCount"];

    v25 = [v22 enabledDomainsCount];
    [v10 setObject:v25 forKeyedSubscript:@"enabledDomainsCount"];

    v26 = [v7 attemptSummary];
    v27 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v26 emptyDomainCount]);
    [v10 setObject:v27 forKeyedSubscript:@"emptyDomainsCount"];

    if (MBSnapshotFormatContainsManifests())
    {
      v28 = [v22 backupFileCount];
      [v10 setObject:v28 forKeyedSubscript:@"fileCount"];

      v29 = [v22 backupDirectoryCount];
      [v10 setObject:v29 forKeyedSubscript:@"directoryCount"];
    }

    if (MBSnapshotFormatContainsFileLists())
    {
      v30 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v23 modifiedDirectoryCount]);
      [v10 setObject:v30 forKeyedSubscript:@"modifiedDirectoryCount"];

      v31 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v23 modifiedRegularFileCount]);
      [v10 setObject:v31 forKeyedSubscript:@"modifiedRegularFileCount"];

      v32 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v23 unmodifiedDirectoryCount]);
      [v10 setObject:v32 forKeyedSubscript:@"unmodifiedDirectoryCount"];

      v33 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v23 unmodifiedRegularFileCount]);
      [v10 setObject:v33 forKeyedSubscript:@"unmodifiedRegularFileCount"];

      v34 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v23 deletedFileCount]);
      [v10 setObject:v34 forKeyedSubscript:@"deletedFileCount"];
    }

    v35 = [v22 backupTotalSize];
    [v10 setObject:v35 forKeyedSubscript:@"totalSize"];

    if (MBSnapshotFormatContainsManifests())
    {
      v36 = [v22 queuedSize];
      [v10 setObject:v36 forKeyedSubscript:@"queuedSize"];

      v37 = [v22 uploadedSize];
      [v10 setObject:v37 forKeyedSubscript:@"uploadedSize"];

      v38 = [v22 queuedFileCount];
      [v10 setObject:v38 forKeyedSubscript:@"queuedFileCount"];

      v39 = [v22 uploadedFileCount];
      [v10 setObject:v39 forKeyedSubscript:@"uploadedFileCount"];

      v40 = [v22 skippedFilesCount];
      [v10 setObject:v40 forKeyedSubscript:@"skippedFilesCount"];
    }

    if (MBSnapshotFormatContainsFileLists())
    {
      v41 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v23 queuedAssetSize]);
      [v10 setObject:v41 forKeyedSubscript:@"queuedAssetSize"];

      v42 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v23 queuedAssetCount]);
      [v10 setObject:v42 forKeyedSubscript:@"queuedAssetCount"];

      v43 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v23 uploadedAssetCount]);
      [v10 setObject:v43 forKeyedSubscript:@"uploadedAssetCount"];

      v44 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v23 uploadedAssetSize]);
      [v10 setObject:v44 forKeyedSubscript:@"uploadedAssetSize"];
    }

    v45 = [v7 cacheRefreshSummary];
    v46 = v45;
    if (v45 && [v45 downloadedSnapshotCount])
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

      v54 = [v46 verificationFailureStrings];
      if ([v54 count])
      {
        v55 = [v54 componentsJoinedByString:@" "];
        [v10 setObject:v55 forKeyedSubscript:@"verificationFailures"];
      }
    }

    v56 = [NSNumber numberWithDouble:a4];
    [v10 setObject:v56 forKeyedSubscript:@"duration"];

    v57 = [v22 cacheSize];
    [v10 setObject:v57 forKeyedSubscript:@"cacheSize"];

    v58 = [v22 freeDiskSpace];
    [v10 setObject:v58 forKeyedSubscript:@"freeDiskSpace"];

    [v22 fseventDuration];
    v59 = [NSNumber numberWithDouble:?];
    [v10 setObject:v59 forKeyedSubscript:@"fseventDuration"];

    v60 = [v7 attemptSummary];
    v61 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v60 peakMemoryUsage]);
    [v10 setObject:v61 forKeyedSubscript:@"peakMemoryUsage"];

    v62 = [v7 attemptSummary];
    v63 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v62 uploadedFileListSize]);
    [v10 setObject:v63 forKeyedSubscript:@"uploadedFileListSize"];

    v64 = MBStringForChargingType([v22 chargingType]);
    [v10 setObject:v64 forKeyedSubscript:@"chargingType"];

    v65 = [v22 topDomainsWithMissingEncryptionKeys];
    v66 = [v65 count];

    if (v66)
    {
      v67 = [v22 topDomainsWithMissingEncryptionKeys];
      v68 = [v67 componentsJoinedByString:@" "];
      [v10 setObject:v68 forKeyedSubscript:@"topDomainsWithMissingEncryptionKeys"];
    }

    if (MBSnapshotFormatContainsManifests())
    {
      v69 = [v22 classAFilesMissingEncryptionKeys];
      [v10 setObject:v69 forKeyedSubscript:@"classAFilesMissingEncryptionKeys"];

      [v22 classBFilesMissingEncryptionKeys];
    }

    else
    {
      v70 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v23 classAFilesMissingEncryptionKeys]);
      [v10 setObject:v70 forKeyedSubscript:@"classAFilesMissingEncryptionKeys"];

      +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v23 classBFilesMissingEncryptionKeys]);
    }
    v71 = ;
    [v10 setObject:v71 forKeyedSubscript:@"classBFilesMissingEncryptionKeys"];

    v72 = [v7 attemptSummary];
    v73 = [v72 keyBagValidationResult];

    v74 = [v7 attemptSummary];
    v75 = MBStringForKeyBagValidationResult([v74 keyBagValidationResult]);
    [v10 setObject:v75 forKeyedSubscript:@"keyBagValidationResult"];

    if (v73)
    {
      v76 = [v7 attemptSummary];
      v77 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v76 encryptionKeysPendingRepairCount]);
      [v10 setObject:v77 forKeyedSubscript:@"encryptionKeysPendingRepairCount"];

      v78 = [v7 attemptSummary];
      v79 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v78 invalidKeyBagReferenceCount]);
      [v10 setObject:v79 forKeyedSubscript:@"invalidKeyBagReferenceCount"];

      v80 = [v7 attemptSummary];
      v81 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v80 validKeyBagReferenceCount]);
      [v10 setObject:v81 forKeyedSubscript:@"validKeyBagReferenceCount"];
    }

    v82 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 backupAttemptCount]);
    [v10 setObject:v82 forKeyedSubscript:@"attemptCount"];

    v83 = [v7 device];
    v84 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v83 pendingSnapshotQuotaReserved]);
    [v10 setObject:v84 forKeyedSubscript:@"pendingSnapshotQuotaReserved"];

    [v22 snapshotType];
    v85 = MBStringForSnapshotType();
    [v10 setObject:v85 forKeyedSubscript:@"snapshotType"];

    [v22 snapshotFormat];
    v86 = MBStringForSnapshotFormat();
    [v10 setObject:v86 forKeyedSubscript:@"snapshotFormat"];

    [v22 previousSnapshotFormat];
    v87 = MBStringForSnapshotFormat();
    [v10 setObject:v87 forKeyedSubscript:@"previousSnapshotFormat"];

    v88 = [v7 attemptSummary];
    v89 = [v88 commitID];

    if (v89)
    {
      v90 = [v7 attemptSummary];
      v91 = [v90 commitID];
      v92 = sub_1002498EC(v91, @"backup");
      [v10 setObject:v92 forKeyedSubscript:@"pendingSnapshotID"];
    }

    if (v8)
    {
      v93 = [MBError isError:v8 withCode:0];
    }

    else
    {
      v93 = 1;
    }

    v94 = MBExtractFirstMBErrorOrCKError(v8);
    v95 = [NSNumber numberWithBool:v93];
    [v10 setObject:v95 forKeyedSubscript:@"success"];

    if (v94)
    {
      v96 = [v94 domain];
      [v10 setObject:v96 forKeyedSubscript:@"errorDomain"];

      v97 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v94 code]);
      [v10 setObject:v97 forKeyedSubscript:@"errorCode"];
    }

    v98 = [v22 snapshotVerificationStatus];

    if (v98)
    {
      v99 = [v22 snapshotVerificationStatus];
      [v10 setObject:v99 forKeyedSubscript:@"snapshotVerificationStatus"];

      [v22 snapshotVerificationDuration];
      v100 = [NSNumber numberWithDouble:?];
      [v10 setObject:v100 forKeyedSubscript:@"snapshotVerificationDuration"];
    }

    else
    {
      [v10 setObject:@"Skipped" forKeyedSubscript:@"snapshotVerificationStatus"];
    }

    [MBTelemetry submitEventName:@"com.apple.massStorage.MobileBackupInfo.Backup_1" event:v10];

    v9 = v104;
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

+ (void)sendRestoreEngineCompletionStatus:(id)a3 duration:(double)a4 error:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (v8 || [v7 isForegroundRestore])
  {
    [MBCKStatusRequest sendStatusRequestWithEngine:v7 duration:v8 error:a4];
  }

  if ([v7 isForegroundRestore])
  {
    v9 = objc_opt_new();
    v10 = [v7 serviceManager];
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 restoreTelemetryID]);
    [v9 setObject:v11 forKeyedSubscript:@"sessionID"];

    [v9 setObject:@"ForegroundRestoreCompletion" forKeyedSubscript:@"telemetryType"];
    v12 = [v7 engineError];
    if (v12)
    {
      v13 = [v7 engineError];
      v14 = [MBError isError:v13 withCode:0];
    }

    else
    {
      v14 = 1;
    }

    [v7 backupPolicy];
    v15 = MBStringForBackupPolicy();
    [v9 setObject:v15 forKeyedSubscript:@"policy"];

    v16 = [v7 restoreStateDescription];
    [v9 setObject:v16 forKeyedSubscript:@"state"];

    v17 = [NSNumber numberWithDouble:a4];
    [v9 setObject:v17 forKeyedSubscript:@"duration"];

    v18 = [NSNumber numberWithUnsignedLongLong:MBPeakProcessMemoryUsage()];
    [v9 setObject:v18 forKeyedSubscript:@"peakMemoryUsage"];

    v19 = [v7 freeDiskSpace];
    [v9 setObject:v19 forKeyedSubscript:@"freeDiskSpace"];

    v20 = MBStringForChargingType([v7 chargingType]);
    [v9 setObject:v20 forKeyedSubscript:@"chargingType"];

    v21 = MBExtractFirstMBErrorOrCKError(v8);
    v22 = [NSNumber numberWithBool:v14];
    [v9 setObject:v22 forKeyedSubscript:@"success"];

    if (v21)
    {
      v23 = [v21 domain];
      [v9 setObject:v23 forKeyedSubscript:@"errorDomain"];

      v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 code]);
      [v9 setObject:v24 forKeyedSubscript:@"errorCode"];
    }

    v25 = [v7 foregroundRestorableSize];
    [v9 setObject:v25 forKeyedSubscript:@"foregroundRestorableSize"];

    v26 = [v7 backgroundRestorableSize];
    [v9 setObject:v26 forKeyedSubscript:@"backgroundRestorableSize"];

    v27 = [v7 foregroundRestorableFileCount];
    [v9 setObject:v27 forKeyedSubscript:@"foregroundRestorableFileCount"];

    v28 = [v7 backgroundRestorableFileCount];
    [v9 setObject:v28 forKeyedSubscript:@"backgroundRestorableFileCount"];

    v29 = [v7 foregroundRestorableDomainCount];
    [v9 setObject:v29 forKeyedSubscript:@"foregroundRestoreDomainsCount"];

    v30 = [v7 foregroundRestoreVerificationStatus];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = @"Skipped";
    }

    [v9 setObject:v32 forKeyedSubscript:@"foregroundRestoreVerificationStatus"];

    v33 = [v7 targetSnapshot];
    [v33 snapshotFormat];
    v34 = MBStringForSnapshotFormat();
    [v9 setObject:v34 forKeyedSubscript:@"snapshotFormat"];

    v50 = 0;
    v35 = [v7 serviceAccount];
    v36 = [v35 persona];
    v49 = 0;
    v37 = [MBRestoreCloudFormatPolicy isRestoringFromFileLists:&v50 persona:v36 error:&v49];
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

    v41 = [v7 targetSnapshot];
    v42 = [v41 commitID];
    v43 = v42;
    if (!v42)
    {
      v43 = [v41 snapshotID];
    }

    v44 = sub_1002498EC(v43, @"restore");
    [v9 setObject:v44 forKeyedSubscript:@"snapshotID"];

    if (!v42)
    {
    }

    v45 = [v41 device];
    v46 = [v45 hardwareModel];
    [v9 setObject:v46 forKeyedSubscript:@"sourceDeviceHardwareModel"];

    v47 = [v41 buildVersion];
    [v9 setObject:v47 forKeyedSubscript:@"sourceDeviceBuildVersion"];

    [MBTelemetry submitEventName:@"com.apple.massStorage.MobileBackupInfo.FGRestore_1" event:v9];
  }
}

+ (void)sendBackupEngineStateChangeStatus:(id)a3 state:(unint64_t)a4 start:(id)a5 end:(id)a6
{
  v30 = a3;
  v9 = a6;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = [v30 telemetry];
  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 telemetryID]);
  [v11 setObject:v13 forKeyedSubscript:@"sessionID"];

  [v11 setObject:@"BackupStateChange" forKeyedSubscript:@"telemetryType"];
  v14 = [v30 backupStateDescription];
  [v11 setObject:v14 forKeyedSubscript:@"state"];

  [v9 timeIntervalSinceDate:v10];
  v16 = v15;

  v17 = [NSNumber numberWithDouble:v16];
  [v11 setObject:v17 forKeyedSubscript:@"duration"];

  v18 = [v30 engineError];
  v19 = MBExtractFirstMBErrorOrCKError(v18);

  if (v19)
  {
    v20 = [v19 domain];
    [v11 setObject:v20 forKeyedSubscript:@"errorDomain"];

    v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v19 code]);
    [v11 setObject:v21 forKeyedSubscript:@"errorCode"];
  }

  [v30 backupPolicy];
  v22 = MBStringForBackupPolicy();
  [v11 setObject:v22 forKeyedSubscript:@"policy"];

  [v30 backupReason];
  v23 = MBStringForBackupReason();
  [v11 setObject:v23 forKeyedSubscript:@"reason"];

  v24 = [v30 telemetry];
  [v24 snapshotFormat];
  v25 = MBStringForSnapshotFormat();
  [v11 setObject:v25 forKeyedSubscript:@"snapshotFormat"];

  [v24 snapshotType];
  v26 = MBStringForSnapshotType();
  [v11 setObject:v26 forKeyedSubscript:@"snapshotType"];

  if (a4 == 8)
  {
    v27 = [v24 snapshotVerificationStatus];

    if (v27)
    {
      v28 = [v24 snapshotVerificationStatus];
      [v11 setObject:v28 forKeyedSubscript:@"snapshotVerificationStatus"];

      [v24 snapshotVerificationDuration];
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

+ (void)sendRestoreEngineStateChangeStatus:(id)a3 state:(unint64_t)a4 start:(id)a5 end:(id)a6
{
  v20 = a3;
  v9 = a5;
  v10 = a6;
  if ([v20 isForegroundRestore])
  {
    v11 = objc_opt_new();
    v12 = [v20 serviceManager];
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 restoreTelemetryID]);
    [v11 setObject:v13 forKeyedSubscript:@"sessionID"];

    [v11 setObject:@"ForegroundRestoreStateChange" forKeyedSubscript:@"telemetryType"];
    v14 = MBCKStringForRestoreState(a4);
    [v11 setObject:v14 forKeyedSubscript:@"state"];

    [v10 timeIntervalSinceDate:v9];
    v15 = [NSNumber numberWithDouble:?];
    [v11 setObject:v15 forKeyedSubscript:@"duration"];

    v16 = [v20 engineError];
    v17 = MBExtractFirstMBErrorOrCKError(v16);

    if (v17)
    {
      v18 = [v17 domain];
      [v11 setObject:v18 forKeyedSubscript:@"errorDomain"];

      v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v17 code]);
      [v11 setObject:v19 forKeyedSubscript:@"errorCode"];
    }

    [MBTelemetry submitEventName:@"com.apple.massStorage.MobileBackupInfo.FGRestore_1" event:v11];
  }
}

+ (void)sendBackgroundRestoreHeartbeat:(unint64_t)a3 restoreInfo:(id)a4
{
  v5 = a4;
  v6 = +[NSMutableDictionary dictionary];
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  [v6 setObject:v7 forKeyedSubscript:@"sessionID"];

  [v6 setObject:@"BackgroundRestoreHeartbeat" forKeyedSubscript:@"telemetryType"];
  v8 = [NSNumber numberWithInt:BYSetupAssistantNeedsToRun() ^ 1];
  [v6 setObject:v8 forKeyedSubscript:@"setupAssistantFinished"];

  v9 = v5;
  v10 = [v5 commitID];
  v11 = [v9 snapshotID];
  v12 = v11;
  if (v10)
  {
    v11 = v10;
  }

  v13 = sub_1002498EC(v11, @"restore");
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

    v19 = [v9 recentATCErrors];
    v20 = [v19 count];

    p_weak_ivar_lyt = &MBRestoreDomainCommand.weak_ivar_lyt;
    if (v20)
    {
      v21 = [v9 recentATCErrors];
      v22 = [MBTelemetry _dictToJSONString:v21];
      [v6 setObject:v22 forKeyedSubscript:@"recentATCErrors"];

      p_weak_ivar_lyt = &MBRestoreDomainCommand.weak_ivar_lyt;
    }
  }

  [p_weak_ivar_lyt + 180 submitEventName:@"com.apple.massStorage.MobileBackupInfo.BGRestore_1" event:v6];
  v23 = [v9 perClassItemsRemaining];
  v24 = [v23 count];

  if (v24)
  {
    v35 = v12;
    v36 = v10;
    v37 = v6;
    v25 = +[NSMutableDictionary dictionary];
    v26 = [NSNumber numberWithUnsignedInteger:a3];
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

    v10 = v36;
    v6 = v37;
    v12 = v35;
  }
}

+ (void)sendBackgroundRestoreCompletion:(unint64_t)a3 snapshotIdentifier:(id)a4 snapshotFormat:(int64_t)a5 isRestoringUsingFileLists:(BOOL)a6 duration:(double)a7 error:(id)a8 fatalErrors:(id)a9 domainsTopNSizes:(id)a10 domainsTopNFileCount:(id)a11 failedDomains:(id)a12
{
  v15 = a6;
  v17 = a4;
  v18 = a8;
  v19 = a9;
  v67 = a10;
  v66 = a11;
  v20 = a12;
  v21 = objc_opt_new();
  v72 = a3;
  v22 = [NSNumber numberWithUnsignedInteger:a3];
  [v21 setObject:v22 forKeyedSubscript:@"sessionID"];

  [v21 setObject:@"BackgroundRestoreCompletion" forKeyedSubscript:@"telemetryType"];
  if ([v19 count])
  {
    v23 = 0;
  }

  else if (v18)
  {
    v23 = [MBError isError:v18 withCode:0];
  }

  else
  {
    v23 = 1;
  }

  if ([MBError shouldReportLowDiskSpaceForError:v18])
  {
    v24 = [NSNumber numberWithUnsignedLongLong:MBFreeDiskSpace()];
    [v21 setObject:v24 forKeyedSubscript:@"freeDiskSpace"];
  }

  v64 = v18;
  v25 = [NSNumber numberWithDouble:a7];
  [v21 setObject:v25 forKeyedSubscript:@"duration"];

  v26 = [NSNumber numberWithUnsignedLongLong:MBPeakProcessMemoryUsage()];
  [v21 setObject:v26 forKeyedSubscript:@"peakMemoryUsage"];

  v65 = v17;
  v27 = sub_1002498EC(v17, @"restore");
  v28 = MBStringForSnapshotFormat();
  v29 = @"Legacy";
  if (v15)
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

  if ([v20 count])
  {
    v32 = [v20 componentsJoinedByString:@" "];
    [v21 setObject:v32 forKeyedSubscript:@"failedDomains"];
  }

  v62 = v21;
  v63 = v20;
  [MBTelemetry submitEventName:@"com.apple.massStorage.MobileBackupInfo.BGRestore_1" event:v21];
  v33 = objc_opt_new();
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v19;
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
        v39 = [NSNumber numberWithUnsignedInteger:a3];
        [v33 setObject:v39 forKeyedSubscript:@"sessionID"];

        [v33 setObject:@"BackgroundRestoreCompletion-Domains" forKeyedSubscript:@"telemetryType"];
        v40 = [v38 domain];
        [v33 setObject:v40 forKeyedSubscript:@"errorDomain"];

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

  if ([v67 count])
  {
    v43 = +[NSMutableDictionary dictionary];
    v44 = [NSNumber numberWithUnsignedInteger:a3];
    [v43 setObject:v44 forKeyedSubscript:@"sessionID"];

    [v43 setObject:@"BackgroundRestoreCompletion-Domains" forKeyedSubscript:@"telemetryType"];
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v45 = v67;
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

  v52 = v66;
  if ([v66 count])
  {
    v53 = +[NSMutableDictionary dictionary];
    v54 = [NSNumber numberWithUnsignedInteger:v72];
    [v53 setObject:v54 forKeyedSubscript:@"sessionID"];

    [v53 setObject:@"BackgroundRestoreCompletion-Domains" forKeyedSubscript:@"telemetryType"];
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v55 = v66;
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

    v52 = v66;
  }
}

@end