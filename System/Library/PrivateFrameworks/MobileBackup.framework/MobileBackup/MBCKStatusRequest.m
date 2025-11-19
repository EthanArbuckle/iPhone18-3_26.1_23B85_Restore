@interface MBCKStatusRequest
+ (void)sendStatusRequestForBackgroundRestoreCompletionWithAccount:(id)a3 databaseManager:(id)a4 sourceDeviceID:(id)a5 snapshotUUID:(id)a6 snapshotIndex:(unint64_t)a7 snapshotFormat:(int64_t)a8 isRestoringUsingFileLists:(BOOL)a9 fatalErrors:(id)a10 plan:(id)a11 duration:(double)a12 error:(id)a13;
+ (void)sendStatusRequestWithEngine:(id)a3 duration:(double)a4 error:(id)a5;
- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtFinish;
- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtStart;
- (MBCKStatusRequest)initWithRequestType:(unint64_t)a3 device:(id)a4 duration:(double)a5 error:(id)a6;
- (id)recordRepresentation;
- (id)stringForRestorePhase;
- (void)_addMetricsWithTracker:(id)a3;
- (void)_sendWithAccount:(id)a3 databaseManager:(id)a4;
@end

@implementation MBCKStatusRequest

- (void)_addMetricsWithTracker:(id)a3
{
  v22 = a3;
  v4 = +[NSDate date];
  [(MBCKStatusRequest *)self duration];
  v6 = [v4 dateByAddingTimeInterval:-v5];
  v7 = [(MBCKStatusRequest *)self errorToReport];
  v8 = @"1";
  if (v7)
  {
    v9 = [(MBCKStatusRequest *)self errorToReport];
    if (![MBError isError:v9 withCode:0])
    {
      v8 = @"0";
    }
  }

  v10 = [(MBCKStatusRequest *)self eventType];
  if (v10 != 1)
  {
    if (v10)
    {
      goto LABEL_23;
    }

    if ([(MBCKStatusRequest *)self backupReason]== 1)
    {
      v11 = @"ManualBackup";
    }

    else
    {
      if ([(MBCKStatusRequest *)self backupReason]!= 2)
      {
        v12 = 0;
        goto LABEL_18;
      }

      v11 = @"AutomaticBackup";
    }

    v12 = [[CKEventMetric alloc] initWithEventName:v11];
LABEL_18:
    [(MBCKStatusRequest *)self snapshotType];
    v20 = MBStringForSnapshotType();
    [v12 setMetricValue:v20 forKey:@"backupType"];

    [v12 setMetricValue:v8 forKey:@"succeeded"];
    v21 = [(MBCKStatusRequest *)self backupTotalSize];

    if (!v21)
    {
      goto LABEL_21;
    }

    v17 = [(MBCKStatusRequest *)self backupTotalSize];
    v18 = [v17 stringValue];
    v19 = @"backupSize";
    goto LABEL_20;
  }

  if (![(MBCKStatusRequest *)self isForegroundRestore])
  {
    goto LABEL_23;
  }

  v12 = [[CKEventMetric alloc] initWithEventName:@"ForegroundRestore"];
  [v12 setMetricValue:v8 forKey:@"succeeded"];
  v13 = [(MBCKStatusRequest *)self foregroundRestorableSize];

  if (v13)
  {
    v14 = [(MBCKStatusRequest *)self foregroundRestorableSize];
    v15 = [v14 stringValue];
    [v12 setMetricValue:v15 forKey:@"foregroundRestorableSize"];
  }

  v16 = [(MBCKStatusRequest *)self backgroundRestorableSize];

  if (v16)
  {
    v17 = [(MBCKStatusRequest *)self backgroundRestorableSize];
    v18 = [v17 stringValue];
    v19 = @"backgroundRestorableSize";
LABEL_20:
    [v12 setMetricValue:v18 forKey:v19];
  }

LABEL_21:
  if (v12)
  {
    [v12 setStartTime:v6];
    [v12 setEndTime:v4];
    [v22 addCKMetric:v12];
  }

LABEL_23:
}

- (void)_sendWithAccount:(id)a3 databaseManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKStatusRequest _sendWithAccount:databaseManager:]", "MBCKStatusRequest.m", 182, "account");
  }

  v8 = v7;
  if (!v7)
  {
    __assert_rtn("[MBCKStatusRequest _sendWithAccount:databaseManager:]", "MBCKStatusRequest.m", 183, "databaseManager");
  }

  v9 = [(MBCKStatusRequest *)self ckOperationPolicy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  v18 = 0;
  v13 = [MBCKOperationTracker operationTrackerWithAccount:v6 databaseManager:v8 policy:v12 error:&v18];
  v14 = v18;
  if (v13)
  {
    v15 = [(MBCKStatusRequest *)self ckOperationGroup];
    [v13 setCkOperationGroup:v15];

    [(MBCKStatusRequest *)self _addMetricsWithTracker:v13];
    v16 = [(MBCKStatusRequest *)self recordRepresentation];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10017EBDC;
    v17[3] = &unk_1003C02F8;
    v17[4] = self;
    [v13 saveRecord:v16 delegate:0 completion:v17];

    [v13 drain];
  }
}

+ (void)sendStatusRequestWithEngine:(id)a3 duration:(double)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v8)
  {
    __assert_rtn("+[MBCKStatusRequest sendStatusRequestWithEngine:duration:error:]", "MBCKStatusRequest.m", 207, "engine");
  }

  v10 = v9;
  v11 = [v8 serviceAccount];
  if (v11)
  {
    v12 = v8;
    v13 = [v12 engineMode];
    v14 = v13 - 1;
    if (v14 >= 3)
    {
      __assert_rtn("typeForEngine", "MBCKStatusRequest.m", 133, "0");
    }

    v15 = v13;

    v16 = [a1 alloc];
    v17 = [v12 device];
    v18 = [v16 initWithRequestType:v14 device:v17 duration:v10 error:a4];

    v19 = [v12 ckOperationPolicy];
    v20 = [v19 copy];
    if (v20)
    {
      [v18 setCkOperationPolicy:v20];
    }

    else
    {
      v22 = objc_opt_new();
      [v18 setCkOperationPolicy:v22];
    }

    if (v15 == 2)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __assert_rtn("+[MBCKStatusRequest sendStatusRequestWithEngine:duration:error:]", "MBCKStatusRequest.m", 273, "[engine isKindOfClass:[MBCKRestoreEngine class]]");
      }

      v76 = v12;
      v77 = [v76 isForegroundRestore];
      if (v77)
      {
        v78 = +[MBCellularAccess expensiveCellularAccess];
        v79 = [v18 ckOperationPolicy];
        [v79 setCellularAccess:v78];
      }

      else
      {
        v80 = [v76 serviceAccount];
        v81 = [MBCKManager restoreInfoForAccount:v80];
        v78 = [v81 deviceBuildVersion];

        v79 = MBBuildVersion();
        if ([v78 isEqualToString:v79])
        {
          v82 = 0;
        }

        else
        {
          v82 = v78;
        }

        [v18 setRestoreBuildVersion:v82];
      }

      [v18 setIsForegroundRestore:v77];
      v83 = [v76 context];
      v84 = [v83 backupUDID];
      [v18 setSourceDeviceID:v84];

      v85 = [v76 context];
      v86 = [v85 snapshotUUID];
      [v18 setSnapshotUUID:v86];

      v87 = [v76 foregroundRestorableSize];
      [v18 setForegroundRestorableSize:v87];

      v88 = [v76 backgroundRestorableSize];
      [v18 setBackgroundRestorableSize:v88];

      v89 = [v76 foregroundRestorableFileCount];
      [v18 setForegroundRestorableFileCount:v89];

      v90 = [v76 backgroundRestorableFileCount];
      [v18 setBackgroundRestorableFileCount:v90];

      [v18 setChargingType:{objc_msgSend(v76, "chargingType")}];
      v91 = [v76 minutesRemaining];
      [v18 setMinutesRemaining:v91];

      v92 = [v76 restoreStateDescription];
      [v18 setStateDescription:v92];

      v93 = [v76 freeDiskSpace];
      [v18 setFreeDiskSpace:v93];

      [v18 setAllowedCellularCost:{objc_msgSend(v76, "allowedCellularCost")}];
      v94 = [v76 networkConnectivityAtStart];
      [v18 setNetworkConnectivityAtStart:{v94, v95}];
      v96 = [v76 networkConnectivityAtFinish];
      [v18 setNetworkConnectivityAtFinish:{v96, v97}];
      v98 = [v76 foregroundRestoreVerificationStatus];
      [v18 setForegroundRestoreVerificationStatus:v98];

      [v18 setForegroundRestoreVerificationEnabled:{objc_msgSend(v76, "foregroundRestoreVerificationEnabled")}];
      v99 = [v76 targetSnapshot];
      [v18 setSnapshotFormat:objc_msgSend(v99, "snapshotFormat")];

      [v18 setIsRestoringWithFileLists:{objc_msgSend(v76, "useFileLists")}];
    }

    else
    {
      if (v15 != 1)
      {
LABEL_24:
        [v18 setHasNetworkConnectivityInfo:1];
        v100 = [v12 ckOperationTracker];
        v101 = [v100 ckOperationGroup];
        [v18 setCkOperationGroup:v101];

        [v18 setBackupPolicy:{objc_msgSend(v12, "backupPolicy")}];
        v102 = [v12 serviceManager];
        v103 = [v102 databaseManager];
        [v18 _sendWithAccount:v11 databaseManager:v103];

        goto LABEL_25;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __assert_rtn("+[MBCKStatusRequest sendStatusRequestWithEngine:duration:error:]", "MBCKStatusRequest.m", 218, "[engine isKindOfClass:[MBCKBackupEngine class]]");
      }

      v23 = +[MBCellularAccess expensiveCellularAccess];
      v24 = [v18 ckOperationPolicy];
      [v24 setCellularAccess:v23];

      v25 = v12;
      if (![v25 backupReason])
      {
        __assert_rtn("+[MBCKStatusRequest sendStatusRequestWithEngine:duration:error:]", "MBCKStatusRequest.m", 221, "backupEngine.backupReason != kMBBackupReasonUnspecified");
      }

      v26 = [v25 pendingSnapshotID];
      [v18 setPendingSnapshotID:v26];

      v27 = [v25 device];
      [v18 setPendingSnapshotQuotaReserved:{objc_msgSend(v27, "pendingSnapshotQuotaReserved")}];

      [v18 setBackupReason:{objc_msgSend(v25, "backupReason")}];
      v28 = [v25 backupStateDescription];
      [v18 setStateDescription:v28];

      [v18 setUsedAPFSSnapshots:1];
      v29 = [v25 telemetry];
      [v18 setSnapshotType:{objc_msgSend(v29, "snapshotType")}];
      v30 = [v29 backupTotalSize];
      [v18 setBackupTotalSize:v30];

      v31 = [v29 topDomainsWithMissingEncryptionKeys];
      [v18 setTopDomainsWithMissingEncryptionKeys:v31];

      v32 = [v29 backupFileCount];
      [v18 setBackupFileCount:v32];

      v33 = [v29 backupDirectoryCount];
      [v18 setBackupDirectoryCount:v33];

      v34 = [v29 queuedSize];
      [v18 setQueuedSize:v34];

      v35 = [v29 queuedFileCount];
      [v18 setQueuedFileCount:v35];

      v36 = [v29 uploadedSize];
      [v18 setUploadedSize:v36];

      v37 = [v29 uploadedFileCount];
      [v18 setUploadedFileCount:v37];

      [v18 setChargingType:{objc_msgSend(v29, "chargingType")}];
      v38 = [MBBackupScheduler lastOnConditionEventsForAccount:v11];
      [v18 setLastOnConditionEvents:v38];

      v39 = [v29 minutesRemaining];
      [v18 setMinutesRemaining:v39];

      v40 = [v29 freeDiskSpace];
      [v18 setFreeDiskSpace:v40];

      [v18 setHasNewOTAKeyBag:{objc_msgSend(v29, "createdNewOTAKeybag")}];
      v41 = [v29 throughputs];
      [v18 setThroughputs:v41];

      v42 = [v29 wifiQuality];
      [v18 setWifiQuality:v42];

      v43 = [v29 cacheSize];
      [v18 setCacheSize:v43];

      v44 = [v29 remainingCellularBalance];
      [v18 setRemainingCellularBalance:v44];

      v45 = [v29 classAFilesMissingEncryptionKeys];
      [v18 setClassAFilesMissingEncryptionKeys:v45];

      v46 = [v29 classBFilesMissingEncryptionKeys];
      [v18 setClassBFilesMissingEncryptionKeys:v46];

      [v29 fseventDuration];
      [v18 setFseventDuration:?];
      v47 = [v29 enabledDomainsCount];
      [v18 setEnabledDomainsCount:v47];

      v48 = [v29 scannedDomainsCount];
      [v18 setScannedDomainsCount:v48];

      v49 = [v29 skippedFilesCount];
      [v18 setSkippedFilesCount:v49];

      [v18 setAllowedCellularCost:{objc_msgSend(v29, "allowedCellularCost")}];
      v50 = [v29 networkConnectivityAtStart];
      [v18 setNetworkConnectivityAtStart:{v50, v51}];
      v52 = [v29 networkConnectivityAtFinish];
      [v18 setNetworkConnectivityAtFinish:{v52, v53}];
      v54 = [v25 cacheRefreshSummary];
      [v18 setCacheRefreshSummary:v54];

      [v18 setBackupOnWiFiWithDAS:{+[MBBackupScheduler backupOnWiFiWithDAS](MBBackupScheduler, "backupOnWiFiWithDAS")}];
      v55 = [v29 snapshotVerificationStatus];
      [v18 setSnapshotVerificationStatus:v55];

      [v29 snapshotVerificationDuration];
      [v18 setSnapshotVerificationDuration:?];
      [v18 setSnapshotFormat:objc_msgSend(v29, "snapshotFormat")];
      [v18 setSnapshotVerificationEnabled:{objc_msgSend(v29, "snapshotVerificationEnabled")}];
      v56 = [v25 attemptSummary];
      v57 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v56 emptyDomainCount]);
      [v18 setEmptyDomainCount:v57];

      v58 = [v25 attemptSummary];
      v59 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v58 deletedFileCount]);
      [v18 setDeletedFileCount:v59];

      v60 = [v25 attemptSummary];
      v61 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v60 unmodifiedDirectoryCount]);
      [v18 setUnmodifiedDirectoryCount:v61];

      v62 = [v25 attemptSummary];
      v63 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v62 modifiedDirectoryCount]);
      [v18 setModifiedDirectoryCount:v63];

      v64 = [v25 attemptSummary];
      v65 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v64 uploadedAssetCount]);
      [v18 setUploadedAssetCount:v65];

      v66 = [v25 attemptSummary];
      v67 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v66 uploadedAssetSize]);
      [v18 setUploadedAssetSize:v67];

      v68 = [v25 attemptSummary];
      v69 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v68 unmodifiedRegularFileCount]);
      [v18 setUnmodifiedRegularFileCount:v69];

      v70 = [v25 attemptSummary];
      v71 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v70 modifiedRegularFileCount]);
      [v18 setModifiedRegularFileCount:v71];

      v72 = [v25 attemptSummary];
      v73 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v72 peakMemoryUsage]);
      [v18 setPeakMemoryUsage:v73];

      v74 = [v25 attemptSummary];
      [v18 setUploadedFileListSize:{objc_msgSend(v74, "uploadedFileListSize")}];

      v75 = [v29 snapshotVerificationCancellationError];
      [v18 setSnapshotVerificationCancellationError:v75];
    }

    goto LABEL_24;
  }

  v21 = MBGetDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *v104 = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "nil account", v104, 2u);
    _MBLog();
  }

LABEL_25:
}

+ (void)sendStatusRequestForBackgroundRestoreCompletionWithAccount:(id)a3 databaseManager:(id)a4 sourceDeviceID:(id)a5 snapshotUUID:(id)a6 snapshotIndex:(unint64_t)a7 snapshotFormat:(int64_t)a8 isRestoringUsingFileLists:(BOOL)a9 fatalErrors:(id)a10 plan:(id)a11 duration:(double)a12 error:(id)a13
{
  v47 = a3;
  v46 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a10;
  v22 = a11;
  v23 = a13;
  v48 = v23;
  if (v22)
  {
    v53 = 0;
    v24 = [v22 restoreVerificationSummary:&v53];
    v25 = v53;
    if (!v24)
    {
      v26 = v20;
      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v56 = v25;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "Could not fetch restore verification summary from plan: %@", buf, 0xCu);
        v43 = v25;
        _MBLog();
      }

      v20 = v26;
      v23 = v48;
    }
  }

  else
  {
    v24 = 0;
  }

  v28 = [[MBCKStatusRequest alloc] initWithRequestType:1 device:0 duration:v23 error:a12];
  [(MBCKStatusRequest *)v28 setIsForegroundRestore:0];
  [(MBCKStatusRequest *)v28 setSourceDeviceID:v19];
  [(MBCKStatusRequest *)v28 setSnapshotUUID:v20];
  v29 = [NSNumber numberWithUnsignedInteger:a7];
  [(MBCKStatusRequest *)v28 setSnapshotIndex:v29];

  [(MBCKStatusRequest *)v28 setSnapshotFormat:a8];
  [(MBCKStatusRequest *)v28 setIsRestoringWithFileLists:a9];
  v44 = v20;
  v45 = v19;
  if (v24)
  {
    -[MBCKStatusRequest setBackgroundVerificationEnabled:](v28, "setBackgroundVerificationEnabled:", [v24 verifierWasRun]);
    v30 = [v24 statusToReport];
    [(MBCKStatusRequest *)v28 setBackgroundRestoreVerificationStatus:v30];
  }

  else
  {
    [(MBCKStatusRequest *)v28 setBackgroundVerificationEnabled:0];
    [(MBCKStatusRequest *)v28 setBackgroundRestoreVerificationStatus:0];
  }

  v31 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v32 = v21;
  v33 = [v32 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v50;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v50 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [MBError signatureForError:*(*(&v49 + 1) + 8 * i), v43, v44, v45];
        [v31 addObject:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v34);
  }

  if ([v31 count])
  {
    [(MBCKStatusRequest *)v28 setErrorSignatures:v31];
  }

  v38 = +[MBCKOperationPolicy expensiveCellularPolicy];
  [(MBCKStatusRequest *)v28 setCkOperationPolicy:v38];
  v39 = [(MBCKStatusRequest *)v28 stringForRestorePhase];
  v40 = [v39 capitalizedString];

  v41 = [[NSString alloc] initWithFormat:@"%@ Restore", v40];
  v42 = [v38 operationGroupWithName:v41];
  [(MBCKStatusRequest *)v28 setCkOperationGroup:v42];

  [(MBCKStatusRequest *)v28 _sendWithAccount:v47 databaseManager:v46];
}

- (MBCKStatusRequest)initWithRequestType:(unint64_t)a3 device:(id)a4 duration:(double)a5 error:(id)a6
{
  v10 = a4;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = MBCKStatusRequest;
  v12 = [(MBCKModel *)&v19 initWithRecord:0 cache:0];
  if (v12)
  {
    if (!v11)
    {
      v13 = @"Backup";
      if (a3 == 1)
      {
        v13 = @"Restore";
      }

      if (a3 == 2)
      {
        v13 = @"Usage";
      }

      v11 = [MBError errorWithCode:0 format:@"%@ completed successfully", v13];
    }

    [(MBCKStatusRequest *)v12 setDevice:v10];
    [(MBCKStatusRequest *)v12 setEventType:a3];
    [(MBCKStatusRequest *)v12 setDuration:a5];
    v18 = 0;
    v14 = MBSerializeErrors(v11, &v18);
    v15 = v18;
    [(MBCKStatusRequest *)v12 setSerializedUnderlyingErrors:v14];

    [(MBCKStatusRequest *)v12 setErrorToReport:v15];
    v16 = MBRandomUUID();
    [(MBCKStatusRequest *)v12 setUuid:v16];

    [(MBCKStatusRequest *)v12 setBackupReason:0];
    [(MBCKStatusRequest *)v12 setSnapshotType:-1];
    [(MBCKStatusRequest *)v12 setBackupPolicy:0];
  }

  return v12;
}

- (id)stringForRestorePhase
{
  if ([(MBCKStatusRequest *)self isForegroundRestore])
  {
    return @"foreground";
  }

  else
  {
    return @"background";
  }
}

- (id)recordRepresentation
{
  v206.receiver = self;
  v206.super_class = MBCKStatusRequest;
  v3 = [(MBCKModel *)&v206 recordRepresentation];
  v4 = [(MBCKStatusRequest *)self device];
  v5 = [v3 objectForKeyedSubscript:@"device"];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    v7 = [CKReference alloc];
    v8 = [v4 recordID];
    v9 = [v7 initWithRecordID:v8 action:0];
    [v3 setObject:v9 forKeyedSubscript:@"device"];
  }

  v10 = [v3 objectForKeyedSubscript:@"eventType"];

  if (!v10)
  {
    v11 = [NSNumber numberWithLongLong:[(MBCKStatusRequest *)self eventType]];
    [v3 setObject:v11 forKeyedSubscript:@"eventType"];
  }

  v12 = [v3 objectForKeyedSubscript:@"errorCode"];

  if (!v12)
  {
    v13 = [(MBCKStatusRequest *)self errorToReport];
    v14 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v13 code]);
    [v3 setObject:v14 forKeyedSubscript:@"errorCode"];
  }

  v15 = [v3 objectForKeyedSubscript:@"errorDescription"];

  if (!v15)
  {
    v16 = [(MBCKStatusRequest *)self errorToReport];
    v17 = [v16 localizedDescription];
    [v3 setObject:v17 forKeyedSubscript:@"errorDescription"];
  }

  v18 = [v3 objectForKeyedSubscript:@"errorDomain"];

  if (!v18)
  {
    v19 = [(MBCKStatusRequest *)self errorToReport];
    v20 = [v19 domain];
    [v3 setObject:v20 forKeyedSubscript:@"errorDomain"];
  }

  v21 = +[NSMutableDictionary dictionary];
  v22 = [v3 objectForKeyedSubscript:@"duration"];
  if (!v22)
  {
    [(MBCKStatusRequest *)self duration];
    [(MBCKStatusRequest *)self duration];
    v22 = [NSNumber numberWithLongLong:(v23 * 1000.0)];
    [v21 setObject:v22 forKeyedSubscript:@"duration"];
  }

  v24 = [(MBCKStatusRequest *)self errorToReport];

  if (v24)
  {
    v25 = [(MBCKStatusRequest *)self errorToReport];
    v26 = [v25 localizedDescription];
    [v21 setObject:v26 forKeyedSubscript:@"shortErrorDescription"];
  }

  v27 = [(MBCKStatusRequest *)self serializedUnderlyingErrors];
  v28 = [v27 count];

  if (v28)
  {
    v29 = [(MBCKStatusRequest *)self serializedUnderlyingErrors];
    [v21 setObject:v29 forKeyedSubscript:@"underlyingErrors"];
  }

  v30 = [(MBCKStatusRequest *)self errorToReport];
  if (v30)
  {
    v31 = v30;
    v32 = [(MBCKStatusRequest *)self errorToReport];
    v33 = [MBError isError:v32 withCode:0];

    if (v33)
    {
      v34 = @"YES";
    }

    else
    {
      v35 = [(MBCKStatusRequest *)self minutesRemaining];

      if (v35)
      {
        v36 = [(MBCKStatusRequest *)self minutesRemaining];
        [v21 setObject:v36 forKeyedSubscript:@"minutesRemaining"];
      }

      v34 = @"NO";
    }
  }

  else
  {
    v34 = @"YES";
  }

  v37 = [NSNumber numberWithLongLong:[(MBCKStatusRequest *)self chargingType]];
  [v21 setObject:v37 forKeyedSubscript:@"chargingType"];

  v38 = [(MBCKStatusRequest *)self stateDescription];

  if (v38)
  {
    v39 = [(MBCKStatusRequest *)self stateDescription];
    [v21 setObject:v39 forKeyedSubscript:@"state"];
  }

  v40 = [(MBCKStatusRequest *)self freeDiskSpace];

  if (v40)
  {
    v41 = [(MBCKStatusRequest *)self freeDiskSpace];
    [v21 setObject:v41 forKeyedSubscript:@"freeDiskSpace"];
  }

  v42 = [NSNumber numberWithInteger:[(MBCKStatusRequest *)self backupPolicy]];
  [v21 setObject:v42 forKeyedSubscript:@"backupPolicy"];

  if ([(MBCKStatusRequest *)self allowedCellularCost])
  {
    v43 = [NSNumber numberWithInt:[(MBCKStatusRequest *)self allowedCellularCost]];
    [v21 setObject:v43 forKeyedSubscript:@"allowedCellularCost"];
  }

  v44 = [NSNumber numberWithLongLong:[(MBCKStatusRequest *)self snapshotFormat]];
  [v21 setObject:v44 forKeyedSubscript:@"snapshotFormat"];

  if ([(MBCKStatusRequest *)self hasNetworkConnectivityInfo])
  {
    v45 = [(MBCKStatusRequest *)self networkConnectivityAtStart];
    v46 = [NSNumber numberWithBool:v45 & 1];
    [v21 setObject:v46 forKeyedSubscript:@"onWiFiAtStart"];

    v47 = [NSNumber numberWithBool:(v45 >> 8) & 1];
    [v21 setObject:v47 forKeyedSubscript:@"onCellularAtStart"];

    if ((v45 & 0x100) != 0)
    {
      if ((v45 & 0x10000) != 0)
      {
        v48 = &off_1003E0EA0;
      }

      else
      {
        v48 = &off_1003E0EB8;
      }

      [v21 setObject:v48 forKeyedSubscript:@"cellularCostAtStart"];
      v49 = [NSNumber numberWithInt:HIDWORD(v45)];
      [v21 setObject:v49 forKeyedSubscript:@"cellularRadioTypeAtStart"];
    }

    v50 = [(MBCKStatusRequest *)self networkConnectivityAtFinish];
    v51 = [NSNumber numberWithBool:v50 & 1];
    [v21 setObject:v51 forKeyedSubscript:@"onWiFiAtFinish"];

    v52 = [NSNumber numberWithBool:(v50 >> 8) & 1];
    [v21 setObject:v52 forKeyedSubscript:@"onCellularAtFinish"];

    if ((v50 & 0x100) != 0)
    {
      if ((v50 & 0x10000) != 0)
      {
        v53 = &off_1003E0EA0;
      }

      else
      {
        v53 = &off_1003E0EB8;
      }

      [v21 setObject:v53 forKeyedSubscript:@"cellularCostAtFinish"];
      v54 = [NSNumber numberWithInt:HIDWORD(v50)];
      [v21 setObject:v54 forKeyedSubscript:@"cellularRadioTypeAtFinish"];
    }
  }

  if ([(MBCKStatusRequest *)self eventType])
  {
    if ([(MBCKStatusRequest *)self eventType]!= 1)
    {
      goto LABEL_163;
    }

    v55 = [(MBCKStatusRequest *)self sourceDeviceID];
    v56 = [v3 objectForKeyedSubscript:@"device"];

    if (!v56 && v55)
    {
      v57 = [v55 mb_backupIDByAddingCKPrefix];
      v58 = [CKRecordID alloc];
      v59 = [MBCKDatabaseManager zoneIDOfType:2];
      v60 = [v58 initWithRecordName:v57 zoneID:v59];

      v61 = [[CKReference alloc] initWithRecordID:v60 action:0];
      [v3 setObject:v61 forKeyedSubscript:@"device"];
    }

    v62 = [(MBCKStatusRequest *)self snapshotUUID];
    v63 = [(MBCKStatusRequest *)self snapshotIndex];
    v64 = v63;
    if (v63)
    {
      v65 = v63;
    }

    else
    {
      v167 = [v4 snapshots];
      v168 = v62;
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100182980;
      v208 = &unk_1003C0320;
      v209[0] = v168;
      v169 = [v167 indexOfObjectPassingTest:buf];
      if (v169 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v65 = 0;
      }

      else
      {
        v65 = [NSNumber numberWithUnsignedInteger:v169];
      }
    }

    v170 = [(MBCKStatusRequest *)self stringForRestorePhase];
    [v21 setObject:v170 forKeyedSubscript:@"restoreType"];

    [v21 setObject:v62 forKeyedSubscript:@"snapshot"];
    [v21 setObject:v55 forKeyedSubscript:@"sourceDeviceID"];
    v171 = MBDeviceUUID();
    [v21 setObject:v171 forKeyedSubscript:@"targetDeviceID"];

    [v21 setObject:v34 forKeyedSubscript:@"restoreSucceeded"];
    if (v65)
    {
      [v21 setObject:v65 forKeyedSubscript:@"snapshotIndex"];
    }

    v172 = [(MBCKStatusRequest *)self foregroundRestorableSize];

    if (v172)
    {
      v173 = [(MBCKStatusRequest *)self foregroundRestorableSize];
      [v21 setObject:v173 forKeyedSubscript:@"foregroundRestorableSize"];
    }

    v174 = [(MBCKStatusRequest *)self backgroundRestorableSize];

    if (v174)
    {
      v175 = [(MBCKStatusRequest *)self backgroundRestorableSize];
      [v21 setObject:v175 forKeyedSubscript:@"backgroundRestorableSize"];
    }

    v176 = [(MBCKStatusRequest *)self foregroundRestorableFileCount];

    if (v176)
    {
      v177 = [(MBCKStatusRequest *)self foregroundRestorableFileCount];
      [v21 setObject:v177 forKeyedSubscript:@"foregroundRestorableFileCount"];
    }

    v178 = [(MBCKStatusRequest *)self backgroundRestorableFileCount];

    if (v178)
    {
      v179 = [(MBCKStatusRequest *)self backgroundRestorableFileCount];
      [v21 setObject:v179 forKeyedSubscript:@"backgroundRestorableFileCount"];
    }

    v180 = [(MBCKStatusRequest *)self restoreBuildVersion];

    if (v180)
    {
      v181 = [(MBCKStatusRequest *)self restoreBuildVersion];
      [v21 setObject:v181 forKeyedSubscript:@"restoreBuildVersion"];
    }

    if ([(MBCKStatusRequest *)self isForegroundRestore])
    {
      v182 = [NSNumber numberWithBool:[(MBCKStatusRequest *)self foregroundRestoreVerificationEnabled]];
      [v21 setObject:v182 forKeyedSubscript:@"foregroundRestoreVerificationEnabled"];

      v183 = [(MBCKStatusRequest *)self foregroundRestoreVerificationStatus];

      if (!v183)
      {
LABEL_158:
        v191 = [(MBCKStatusRequest *)self errorToReport];

        if (v191)
        {
          v192 = [(MBCKStatusRequest *)self errorToReport];
          v193 = [NSNumber numberWithBool:[MBError isRetryableRestoreError:v192]];
          [v21 setObject:v193 forKeyedSubscript:@"isRetryableRestoreError"];
        }

        v194 = [NSNumber numberWithBool:[(MBCKStatusRequest *)self isRestoringWithFileLists]];
        [v21 setObject:v194 forKeyedSubscript:@"isRestoringWithFileLists"];

        goto LABEL_161;
      }

      v184 = [(MBCKStatusRequest *)self foregroundRestoreVerificationStatus];
      v185 = @"foregroundRestoreVerificationStatus";
    }

    else
    {
      v186 = [NSNumber numberWithBool:[(MBCKStatusRequest *)self backgroundVerificationEnabled]];
      [v21 setObject:v186 forKeyedSubscript:@"backgroundRestoreVerificationEnabled"];

      v187 = [(MBCKStatusRequest *)self backgroundRestoreVerificationStatus];

      if (v187)
      {
        v188 = [(MBCKStatusRequest *)self backgroundRestoreVerificationStatus];
        [v21 setObject:v188 forKeyedSubscript:@"backgroundRestoreVerificationStatus"];
      }

      v189 = [(MBCKStatusRequest *)self errorSignatures];
      v190 = [v189 count];

      if (!v190)
      {
        goto LABEL_158;
      }

      v184 = [(MBCKStatusRequest *)self errorSignatures];
      v185 = @"errorSignatures";
    }

    [v21 setObject:v184 forKeyedSubscript:v185];

    goto LABEL_158;
  }

  v66 = [NSNumber numberWithLongLong:[(MBCKStatusRequest *)self backupReason]];
  [v21 setObject:v66 forKeyedSubscript:@"backupReason"];

  if ([(MBCKStatusRequest *)self snapshotType]!= -1)
  {
    v67 = [NSNumber numberWithLongLong:[(MBCKStatusRequest *)self snapshotType]];
    [v21 setObject:v67 forKeyedSubscript:@"backupType"];
  }

  v68 = [v4 pendingSnapshot];
  v62 = v68;
  if (v68)
  {
    v55 = [v68 snapshotID];
    v69 = [v4 dateOfLastBackup];
    if (v69)
    {
      [v21 setObject:v69 forKeyedSubscript:@"lastBackupDate"];
    }

    if (!v55)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v55 = [(MBCKStatusRequest *)self pendingSnapshotID];
    if (!v55)
    {
      goto LABEL_58;
    }
  }

  [v21 setObject:v55 forKeyedSubscript:@"snapshot"];
LABEL_58:
  v70 = [(MBCKStatusRequest *)self errorToReport];
  v71 = [MBError isCKError:v70 withCode:25];

  if (v71)
  {
    v72 = [NSNumber numberWithUnsignedLongLong:[(MBCKStatusRequest *)self pendingSnapshotQuotaReserved]];
    [v21 setObject:v72 forKeyedSubscript:@"quotaReserved"];
  }

  if ([(MBCKStatusRequest *)self usedAPFSSnapshots])
  {
    v73 = @"YES";
  }

  else
  {
    v73 = @"NO";
  }

  [v21 setObject:v73 forKeyedSubscript:@"usedAPFSSnapshots"];
  v74 = [(MBCKStatusRequest *)self topDomainsWithMissingEncryptionKeys];
  v75 = [v74 count];

  if (v75)
  {
    v76 = [(MBCKStatusRequest *)self topDomainsWithMissingEncryptionKeys];
    [v21 setObject:v76 forKeyedSubscript:@"topDomainsWithMissingEncryptionKeys"];
  }

  v77 = [(MBCKStatusRequest *)self backupTotalSize];

  if (v77)
  {
    v78 = [(MBCKStatusRequest *)self backupTotalSize];
    [v21 setObject:v78 forKeyedSubscript:@"backupSize"];
  }

  v79 = [(MBCKStatusRequest *)self backupFileCount];

  if (v79)
  {
    v80 = [(MBCKStatusRequest *)self backupFileCount];
    [v21 setObject:v80 forKeyedSubscript:@"backupFileCount"];
  }

  v81 = [(MBCKStatusRequest *)self backupDirectoryCount];

  if (v81)
  {
    v82 = [(MBCKStatusRequest *)self backupDirectoryCount];
    [v21 setObject:v82 forKeyedSubscript:@"backupDirectoryCount"];
  }

  v83 = [(MBCKStatusRequest *)self queuedSize];

  if (v83)
  {
    v84 = [(MBCKStatusRequest *)self queuedSize];
    [v21 setObject:v84 forKeyedSubscript:@"queuedSize"];
  }

  v85 = [(MBCKStatusRequest *)self queuedFileCount];

  if (v85)
  {
    v86 = [(MBCKStatusRequest *)self queuedFileCount];
    [v21 setObject:v86 forKeyedSubscript:@"queuedFileCount"];
  }

  v87 = [(MBCKStatusRequest *)self uploadedSize];

  if (v87)
  {
    v88 = [(MBCKStatusRequest *)self uploadedSize];
    [v21 setObject:v88 forKeyedSubscript:@"uploadedSize"];
  }

  v89 = [(MBCKStatusRequest *)self uploadedFileCount];

  if (v89)
  {
    v90 = [(MBCKStatusRequest *)self uploadedFileCount];
    [v21 setObject:v90 forKeyedSubscript:@"uploadedFileCount"];
  }

  v91 = [(MBCKStatusRequest *)self lastOnConditionEvents];

  if (v91)
  {
    v92 = [(MBCKStatusRequest *)self lastOnConditionEvents];
    [v21 setObject:v92 forKeyedSubscript:@"lastOnConditionEvents"];
  }

  if ([(MBCKStatusRequest *)self hasNewOTAKeyBag])
  {
    v93 = @"YES";
  }

  else
  {
    v93 = @"NO";
  }

  [v21 setObject:v93 forKeyedSubscript:@"newOTAKeyBag"];
  v94 = [(MBCKStatusRequest *)self throughputs];
  v95 = [v94 count];

  if (v95)
  {
    v96 = [(MBCKStatusRequest *)self throughputs];
    [v21 setObject:v96 forKeyedSubscript:@"throughputs"];
  }

  v97 = [(MBCKStatusRequest *)self wifiQuality];
  v98 = [v97 count];

  if (v98)
  {
    v99 = [(MBCKStatusRequest *)self wifiQuality];
    [v21 setObject:v99 forKeyedSubscript:@"wifiQuality"];
  }

  v100 = [(MBCKStatusRequest *)self cacheSize];

  if (v100)
  {
    v101 = [(MBCKStatusRequest *)self cacheSize];
    [v21 setObject:v101 forKeyedSubscript:@"cacheSize"];
  }

  v102 = [(MBCKStatusRequest *)self remainingCellularBalance];

  if (v102)
  {
    v103 = [(MBCKStatusRequest *)self remainingCellularBalance];
    [v21 setObject:v103 forKeyedSubscript:@"remainingCellularBalance"];
  }

  v104 = [(MBCKStatusRequest *)self classAFilesMissingEncryptionKeys];

  if (v104)
  {
    v105 = [(MBCKStatusRequest *)self classAFilesMissingEncryptionKeys];
    [v21 setObject:v105 forKeyedSubscript:@"classAFilesMissingEncryptionKeys"];
  }

  v106 = [(MBCKStatusRequest *)self classBFilesMissingEncryptionKeys];

  if (v106)
  {
    v107 = [(MBCKStatusRequest *)self classBFilesMissingEncryptionKeys];
    [v21 setObject:v107 forKeyedSubscript:@"classBFilesMissingEncryptionKeys"];
  }

  [(MBCKStatusRequest *)self fseventDuration];
  if (v108 != 0.0)
  {
    [(MBCKStatusRequest *)self fseventDuration];
    v109 = [NSNumber numberWithDouble:?];
    [v21 setObject:v109 forKeyedSubscript:@"fseventDuration"];
  }

  v110 = [(MBCKStatusRequest *)self enabledDomainsCount];

  if (v110)
  {
    v111 = [(MBCKStatusRequest *)self enabledDomainsCount];
    [v21 setObject:v111 forKeyedSubscript:@"enabledDomainsCount"];
  }

  v112 = [(MBCKStatusRequest *)self scannedDomainsCount];

  if (v112)
  {
    v113 = [(MBCKStatusRequest *)self scannedDomainsCount];
    [v21 setObject:v113 forKeyedSubscript:@"scannedDomainsCount"];
  }

  v114 = [(MBCKStatusRequest *)self skippedFilesCount];

  if (v114)
  {
    v115 = [(MBCKStatusRequest *)self skippedFilesCount];
    [v21 setObject:v115 forKeyedSubscript:@"skippedFilesCount"];
  }

  v116 = [(MBCKStatusRequest *)self cacheRefreshSummary];
  if (v116)
  {
    v117 = v116;
    v118 = [(MBCKStatusRequest *)self cacheRefreshSummary];
    v119 = [v118 downloadedSnapshotCount];

    if (v119)
    {
      v120 = [(MBCKStatusRequest *)self cacheRefreshSummary];
      v121 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v120 cachedSnapshotCount]);
      [v21 setObject:v121 forKeyedSubscript:@"cachedSnapshotCount"];

      v122 = [(MBCKStatusRequest *)self cacheRefreshSummary];
      v123 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v122 serverSnapshotCount]);
      [v21 setObject:v123 forKeyedSubscript:@"serverSnapshotCount"];

      v124 = [(MBCKStatusRequest *)self cacheRefreshSummary];
      v125 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v124 journalActionCount]);
      [v21 setObject:v125 forKeyedSubscript:@"journalActionCount"];

      v126 = [(MBCKStatusRequest *)self cacheRefreshSummary];
      v127 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v126 journalReplaySucceeded]);
      [v21 setObject:v127 forKeyedSubscript:@"journalReplaySucceeded"];

      v128 = [(MBCKStatusRequest *)self cacheRefreshSummary];
      v129 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v128 journalVerificationErrorCount]);
      [v21 setObject:v129 forKeyedSubscript:@"journalVerificationErrorCount"];

      v130 = [(MBCKStatusRequest *)self cacheRefreshSummary];
      v131 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v130 downloadedSnapshotCount]);
      [v21 setObject:v131 forKeyedSubscript:@"downloadedSnapshotCount"];

      v132 = [(MBCKStatusRequest *)self cacheRefreshSummary];
      v133 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v132 downloadedSnapshotVerificationFailureCount]);
      [v21 setObject:v133 forKeyedSubscript:@"downloadedSnapshotVerificationFailureCount"];

      v134 = [(MBCKStatusRequest *)self cacheRefreshSummary];
      v135 = [v134 verificationFailureStrings];

      if ([v135 count])
      {
        [v21 setObject:v135 forKeyedSubscript:@"verificationFailures"];
      }
    }
  }

  v136 = [NSNumber numberWithBool:[(MBCKStatusRequest *)self backupOnWiFiWithDAS]];
  [v21 setObject:v136 forKeyedSubscript:@"backupOnWiFiWithDAS"];

  v137 = [(MBCKStatusRequest *)self snapshotVerificationStatus];

  if (v137)
  {
    v138 = [(MBCKStatusRequest *)self snapshotVerificationStatus];
    [v21 setObject:v138 forKeyedSubscript:@"snapshotVerificationStatus"];

    [(MBCKStatusRequest *)self snapshotVerificationDuration];
    [(MBCKStatusRequest *)self snapshotVerificationDuration];
    v140 = [NSNumber numberWithLongLong:(v139 * 1000.0)];
    [v21 setObject:v140 forKeyedSubscript:@"snapshotVerificationDuration"];

    v141 = [(MBCKStatusRequest *)self snapshotVerificationCancellationError];

    if (v141)
    {
      v142 = [(MBCKStatusRequest *)self snapshotVerificationCancellationError];
      v143 = [v142 domain];
      [v21 setObject:v143 forKeyedSubscript:@"verificationCancellationErrorDomain"];

      v144 = [(MBCKStatusRequest *)self snapshotVerificationCancellationError];
      v145 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v144 code]);
      [v21 setObject:v145 forKeyedSubscript:@"verificationCancellationErrorCode"];

      v146 = [(MBCKStatusRequest *)self snapshotVerificationCancellationError];
      v147 = [v146 localizedDescription];
      [v21 setObject:v147 forKeyedSubscript:@"verificationCancellationErrorDescription"];
    }
  }

  v148 = [NSNumber numberWithBool:[(MBCKStatusRequest *)self snapshotVerificationEnabled]];
  [v21 setObject:v148 forKeyedSubscript:@"snapshotVerificationEnabled"];

  v149 = [(MBCKStatusRequest *)self emptyDomainCount];

  if (v149)
  {
    v150 = [(MBCKStatusRequest *)self emptyDomainCount];
    [v21 setObject:v150 forKeyedSubscript:@"emptyDomainCount"];
  }

  v151 = [(MBCKStatusRequest *)self deletedFileCount];

  if (v151)
  {
    v152 = [(MBCKStatusRequest *)self deletedFileCount];
    [v21 setObject:v152 forKeyedSubscript:@"deletedFileCount"];
  }

  v153 = [(MBCKStatusRequest *)self unmodifiedDirectoryCount];

  if (v153)
  {
    v154 = [(MBCKStatusRequest *)self unmodifiedDirectoryCount];
    [v21 setObject:v154 forKeyedSubscript:@"unmodifiedDirectoryCount"];
  }

  v155 = [(MBCKStatusRequest *)self modifiedDirectoryCount];

  if (v155)
  {
    v156 = [(MBCKStatusRequest *)self modifiedDirectoryCount];
    [v21 setObject:v156 forKeyedSubscript:@"modifiedDirectoryCount"];
  }

  v157 = [(MBCKStatusRequest *)self uploadedAssetSize];

  if (v157)
  {
    v158 = [(MBCKStatusRequest *)self uploadedAssetSize];
    [v21 setObject:v158 forKeyedSubscript:@"uploadedAssetSize"];
  }

  v159 = [(MBCKStatusRequest *)self uploadedAssetCount];

  if (v159)
  {
    v160 = [(MBCKStatusRequest *)self uploadedAssetCount];
    [v21 setObject:v160 forKeyedSubscript:@"uploadedAssetCount"];
  }

  v161 = [(MBCKStatusRequest *)self unmodifiedRegularFileCount];

  if (v161)
  {
    v162 = [(MBCKStatusRequest *)self unmodifiedRegularFileCount];
    [v21 setObject:v162 forKeyedSubscript:@"unmodifiedRegularFileCount"];
  }

  v163 = [(MBCKStatusRequest *)self modifiedRegularFileCount];

  if (v163)
  {
    v164 = [(MBCKStatusRequest *)self modifiedRegularFileCount];
    [v21 setObject:v164 forKeyedSubscript:@"modifiedRegularFileCount"];
  }

  v165 = [(MBCKStatusRequest *)self peakMemoryUsage];

  if (v165)
  {
    v166 = [(MBCKStatusRequest *)self peakMemoryUsage];
    [v21 setObject:v166 forKeyedSubscript:@"peakMemoryUsage"];
  }

  if (![(MBCKStatusRequest *)self uploadedFileListSize])
  {
    goto LABEL_162;
  }

  v65 = [NSNumber numberWithUnsignedInteger:[(MBCKStatusRequest *)self uploadedFileListSize]];
  [v21 setObject:v65 forKeyedSubscript:@"uploadedFileListSize"];
LABEL_161:

LABEL_162:
LABEL_163:
  if ([v21 count])
  {
    [v3 setPluginFields:v21];
  }

  v195 = MBGetDefaultLog();
  if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
  {
    v196 = v195;
    if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
    {
      v197 = objc_opt_class();
      v198 = [v3 recordID];
      v199 = [v198 recordName];
      v200 = [v3 pluginFields];
      *buf = 138544130;
      *&buf[4] = v197;
      *&buf[12] = 2114;
      *&buf[14] = v199;
      *&buf[22] = 2112;
      v208 = v3;
      LOWORD(v209[0]) = 2112;
      *(v209 + 2) = v200;
      _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "Saving %{public}@(%{public}@) record:%@, pluginFields:%@", buf, 0x2Au);
    }

    objc_opt_class();
    v201 = [v3 recordID];
    v202 = [v201 recordName];
    v205 = [v3 pluginFields];
    _MBLog();
  }

  v203 = v3;
  return v3;
}

- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtStart
{
  p_networkConnectivityAtStart = &self->_networkConnectivityAtStart;
  v3 = *&self->_networkConnectivityAtStart.isOnWiFi;
  backupOnCellularSupport = p_networkConnectivityAtStart->backupOnCellularSupport;
  result.var4 = backupOnCellularSupport;
  result.var0 = v3;
  result.var1 = BYTE1(v3);
  result.var2 = BYTE2(v3);
  result.var3 = HIDWORD(v3);
  return result;
}

- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtFinish
{
  p_networkConnectivityAtFinish = &self->_networkConnectivityAtFinish;
  v3 = *&self->_networkConnectivityAtFinish.isOnWiFi;
  backupOnCellularSupport = p_networkConnectivityAtFinish->backupOnCellularSupport;
  result.var4 = backupOnCellularSupport;
  result.var0 = v3;
  result.var1 = BYTE1(v3);
  result.var2 = BYTE2(v3);
  result.var3 = HIDWORD(v3);
  return result;
}

@end