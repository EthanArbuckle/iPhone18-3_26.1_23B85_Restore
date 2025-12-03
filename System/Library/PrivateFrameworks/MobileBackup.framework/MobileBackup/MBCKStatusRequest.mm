@interface MBCKStatusRequest
+ (void)sendStatusRequestForBackgroundRestoreCompletionWithAccount:(id)account databaseManager:(id)manager sourceDeviceID:(id)d snapshotUUID:(id)iD snapshotIndex:(unint64_t)index snapshotFormat:(int64_t)format isRestoringUsingFileLists:(BOOL)lists fatalErrors:(id)self0 plan:(id)self1 duration:(double)self2 error:(id)self3;
+ (void)sendStatusRequestWithEngine:(id)engine duration:(double)duration error:(id)error;
- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtFinish;
- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtStart;
- (MBCKStatusRequest)initWithRequestType:(unint64_t)type device:(id)device duration:(double)duration error:(id)error;
- (id)recordRepresentation;
- (id)stringForRestorePhase;
- (void)_addMetricsWithTracker:(id)tracker;
- (void)_sendWithAccount:(id)account databaseManager:(id)manager;
@end

@implementation MBCKStatusRequest

- (void)_addMetricsWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v4 = +[NSDate date];
  [(MBCKStatusRequest *)self duration];
  v6 = [v4 dateByAddingTimeInterval:-v5];
  errorToReport = [(MBCKStatusRequest *)self errorToReport];
  v8 = @"1";
  if (errorToReport)
  {
    errorToReport2 = [(MBCKStatusRequest *)self errorToReport];
    if (![MBError isError:errorToReport2 withCode:0])
    {
      v8 = @"0";
    }
  }

  eventType = [(MBCKStatusRequest *)self eventType];
  if (eventType != 1)
  {
    if (eventType)
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
    backupTotalSize = [(MBCKStatusRequest *)self backupTotalSize];

    if (!backupTotalSize)
    {
      goto LABEL_21;
    }

    backupTotalSize2 = [(MBCKStatusRequest *)self backupTotalSize];
    stringValue = [backupTotalSize2 stringValue];
    v19 = @"backupSize";
    goto LABEL_20;
  }

  if (![(MBCKStatusRequest *)self isForegroundRestore])
  {
    goto LABEL_23;
  }

  v12 = [[CKEventMetric alloc] initWithEventName:@"ForegroundRestore"];
  [v12 setMetricValue:v8 forKey:@"succeeded"];
  foregroundRestorableSize = [(MBCKStatusRequest *)self foregroundRestorableSize];

  if (foregroundRestorableSize)
  {
    foregroundRestorableSize2 = [(MBCKStatusRequest *)self foregroundRestorableSize];
    stringValue2 = [foregroundRestorableSize2 stringValue];
    [v12 setMetricValue:stringValue2 forKey:@"foregroundRestorableSize"];
  }

  backgroundRestorableSize = [(MBCKStatusRequest *)self backgroundRestorableSize];

  if (backgroundRestorableSize)
  {
    backupTotalSize2 = [(MBCKStatusRequest *)self backgroundRestorableSize];
    stringValue = [backupTotalSize2 stringValue];
    v19 = @"backgroundRestorableSize";
LABEL_20:
    [v12 setMetricValue:stringValue forKey:v19];
  }

LABEL_21:
  if (v12)
  {
    [v12 setStartTime:v6];
    [v12 setEndTime:v4];
    [trackerCopy addCKMetric:v12];
  }

LABEL_23:
}

- (void)_sendWithAccount:(id)account databaseManager:(id)manager
{
  accountCopy = account;
  managerCopy = manager;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKStatusRequest _sendWithAccount:databaseManager:]", "MBCKStatusRequest.m", 182, "account");
  }

  v8 = managerCopy;
  if (!managerCopy)
  {
    __assert_rtn("[MBCKStatusRequest _sendWithAccount:databaseManager:]", "MBCKStatusRequest.m", 183, "databaseManager");
  }

  ckOperationPolicy = [(MBCKStatusRequest *)self ckOperationPolicy];
  v10 = ckOperationPolicy;
  if (ckOperationPolicy)
  {
    v11 = ckOperationPolicy;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  v18 = 0;
  v13 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:v8 policy:v12 error:&v18];
  v14 = v18;
  if (v13)
  {
    ckOperationGroup = [(MBCKStatusRequest *)self ckOperationGroup];
    [v13 setCkOperationGroup:ckOperationGroup];

    [(MBCKStatusRequest *)self _addMetricsWithTracker:v13];
    recordRepresentation = [(MBCKStatusRequest *)self recordRepresentation];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10017EBDC;
    v17[3] = &unk_1003C02F8;
    v17[4] = self;
    [v13 saveRecord:recordRepresentation delegate:0 completion:v17];

    [v13 drain];
  }
}

+ (void)sendStatusRequestWithEngine:(id)engine duration:(double)duration error:(id)error
{
  engineCopy = engine;
  errorCopy = error;
  if (!engineCopy)
  {
    __assert_rtn("+[MBCKStatusRequest sendStatusRequestWithEngine:duration:error:]", "MBCKStatusRequest.m", 207, "engine");
  }

  v10 = errorCopy;
  serviceAccount = [engineCopy serviceAccount];
  if (serviceAccount)
  {
    v12 = engineCopy;
    engineMode = [v12 engineMode];
    v14 = engineMode - 1;
    if (v14 >= 3)
    {
      __assert_rtn("typeForEngine", "MBCKStatusRequest.m", 133, "0");
    }

    v15 = engineMode;

    v16 = [self alloc];
    device = [v12 device];
    v18 = [v16 initWithRequestType:v14 device:device duration:v10 error:duration];

    ckOperationPolicy = [v12 ckOperationPolicy];
    v20 = [ckOperationPolicy copy];
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
      isForegroundRestore = [v76 isForegroundRestore];
      if (isForegroundRestore)
      {
        deviceBuildVersion = +[MBCellularAccess expensiveCellularAccess];
        ckOperationPolicy2 = [v18 ckOperationPolicy];
        [ckOperationPolicy2 setCellularAccess:deviceBuildVersion];
      }

      else
      {
        serviceAccount2 = [v76 serviceAccount];
        v81 = [MBCKManager restoreInfoForAccount:serviceAccount2];
        deviceBuildVersion = [v81 deviceBuildVersion];

        ckOperationPolicy2 = MBBuildVersion();
        if ([deviceBuildVersion isEqualToString:ckOperationPolicy2])
        {
          v82 = 0;
        }

        else
        {
          v82 = deviceBuildVersion;
        }

        [v18 setRestoreBuildVersion:v82];
      }

      [v18 setIsForegroundRestore:isForegroundRestore];
      context = [v76 context];
      backupUDID = [context backupUDID];
      [v18 setSourceDeviceID:backupUDID];

      context2 = [v76 context];
      snapshotUUID = [context2 snapshotUUID];
      [v18 setSnapshotUUID:snapshotUUID];

      foregroundRestorableSize = [v76 foregroundRestorableSize];
      [v18 setForegroundRestorableSize:foregroundRestorableSize];

      backgroundRestorableSize = [v76 backgroundRestorableSize];
      [v18 setBackgroundRestorableSize:backgroundRestorableSize];

      foregroundRestorableFileCount = [v76 foregroundRestorableFileCount];
      [v18 setForegroundRestorableFileCount:foregroundRestorableFileCount];

      backgroundRestorableFileCount = [v76 backgroundRestorableFileCount];
      [v18 setBackgroundRestorableFileCount:backgroundRestorableFileCount];

      [v18 setChargingType:{objc_msgSend(v76, "chargingType")}];
      minutesRemaining = [v76 minutesRemaining];
      [v18 setMinutesRemaining:minutesRemaining];

      restoreStateDescription = [v76 restoreStateDescription];
      [v18 setStateDescription:restoreStateDescription];

      freeDiskSpace = [v76 freeDiskSpace];
      [v18 setFreeDiskSpace:freeDiskSpace];

      [v18 setAllowedCellularCost:{objc_msgSend(v76, "allowedCellularCost")}];
      networkConnectivityAtStart = [v76 networkConnectivityAtStart];
      [v18 setNetworkConnectivityAtStart:{networkConnectivityAtStart, v95}];
      networkConnectivityAtFinish = [v76 networkConnectivityAtFinish];
      [v18 setNetworkConnectivityAtFinish:{networkConnectivityAtFinish, v97}];
      foregroundRestoreVerificationStatus = [v76 foregroundRestoreVerificationStatus];
      [v18 setForegroundRestoreVerificationStatus:foregroundRestoreVerificationStatus];

      [v18 setForegroundRestoreVerificationEnabled:{objc_msgSend(v76, "foregroundRestoreVerificationEnabled")}];
      targetSnapshot = [v76 targetSnapshot];
      [v18 setSnapshotFormat:objc_msgSend(targetSnapshot, "snapshotFormat")];

      [v18 setIsRestoringWithFileLists:{objc_msgSend(v76, "useFileLists")}];
    }

    else
    {
      if (v15 != 1)
      {
LABEL_24:
        [v18 setHasNetworkConnectivityInfo:1];
        ckOperationTracker = [v12 ckOperationTracker];
        ckOperationGroup = [ckOperationTracker ckOperationGroup];
        [v18 setCkOperationGroup:ckOperationGroup];

        [v18 setBackupPolicy:{objc_msgSend(v12, "backupPolicy")}];
        serviceManager = [v12 serviceManager];
        databaseManager = [serviceManager databaseManager];
        [v18 _sendWithAccount:serviceAccount databaseManager:databaseManager];

        goto LABEL_25;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __assert_rtn("+[MBCKStatusRequest sendStatusRequestWithEngine:duration:error:]", "MBCKStatusRequest.m", 218, "[engine isKindOfClass:[MBCKBackupEngine class]]");
      }

      v23 = +[MBCellularAccess expensiveCellularAccess];
      ckOperationPolicy3 = [v18 ckOperationPolicy];
      [ckOperationPolicy3 setCellularAccess:v23];

      v25 = v12;
      if (![v25 backupReason])
      {
        __assert_rtn("+[MBCKStatusRequest sendStatusRequestWithEngine:duration:error:]", "MBCKStatusRequest.m", 221, "backupEngine.backupReason != kMBBackupReasonUnspecified");
      }

      pendingSnapshotID = [v25 pendingSnapshotID];
      [v18 setPendingSnapshotID:pendingSnapshotID];

      device2 = [v25 device];
      [v18 setPendingSnapshotQuotaReserved:{objc_msgSend(device2, "pendingSnapshotQuotaReserved")}];

      [v18 setBackupReason:{objc_msgSend(v25, "backupReason")}];
      backupStateDescription = [v25 backupStateDescription];
      [v18 setStateDescription:backupStateDescription];

      [v18 setUsedAPFSSnapshots:1];
      telemetry = [v25 telemetry];
      [v18 setSnapshotType:{objc_msgSend(telemetry, "snapshotType")}];
      backupTotalSize = [telemetry backupTotalSize];
      [v18 setBackupTotalSize:backupTotalSize];

      topDomainsWithMissingEncryptionKeys = [telemetry topDomainsWithMissingEncryptionKeys];
      [v18 setTopDomainsWithMissingEncryptionKeys:topDomainsWithMissingEncryptionKeys];

      backupFileCount = [telemetry backupFileCount];
      [v18 setBackupFileCount:backupFileCount];

      backupDirectoryCount = [telemetry backupDirectoryCount];
      [v18 setBackupDirectoryCount:backupDirectoryCount];

      queuedSize = [telemetry queuedSize];
      [v18 setQueuedSize:queuedSize];

      queuedFileCount = [telemetry queuedFileCount];
      [v18 setQueuedFileCount:queuedFileCount];

      uploadedSize = [telemetry uploadedSize];
      [v18 setUploadedSize:uploadedSize];

      uploadedFileCount = [telemetry uploadedFileCount];
      [v18 setUploadedFileCount:uploadedFileCount];

      [v18 setChargingType:{objc_msgSend(telemetry, "chargingType")}];
      v38 = [MBBackupScheduler lastOnConditionEventsForAccount:serviceAccount];
      [v18 setLastOnConditionEvents:v38];

      minutesRemaining2 = [telemetry minutesRemaining];
      [v18 setMinutesRemaining:minutesRemaining2];

      freeDiskSpace2 = [telemetry freeDiskSpace];
      [v18 setFreeDiskSpace:freeDiskSpace2];

      [v18 setHasNewOTAKeyBag:{objc_msgSend(telemetry, "createdNewOTAKeybag")}];
      throughputs = [telemetry throughputs];
      [v18 setThroughputs:throughputs];

      wifiQuality = [telemetry wifiQuality];
      [v18 setWifiQuality:wifiQuality];

      cacheSize = [telemetry cacheSize];
      [v18 setCacheSize:cacheSize];

      remainingCellularBalance = [telemetry remainingCellularBalance];
      [v18 setRemainingCellularBalance:remainingCellularBalance];

      classAFilesMissingEncryptionKeys = [telemetry classAFilesMissingEncryptionKeys];
      [v18 setClassAFilesMissingEncryptionKeys:classAFilesMissingEncryptionKeys];

      classBFilesMissingEncryptionKeys = [telemetry classBFilesMissingEncryptionKeys];
      [v18 setClassBFilesMissingEncryptionKeys:classBFilesMissingEncryptionKeys];

      [telemetry fseventDuration];
      [v18 setFseventDuration:?];
      enabledDomainsCount = [telemetry enabledDomainsCount];
      [v18 setEnabledDomainsCount:enabledDomainsCount];

      scannedDomainsCount = [telemetry scannedDomainsCount];
      [v18 setScannedDomainsCount:scannedDomainsCount];

      skippedFilesCount = [telemetry skippedFilesCount];
      [v18 setSkippedFilesCount:skippedFilesCount];

      [v18 setAllowedCellularCost:{objc_msgSend(telemetry, "allowedCellularCost")}];
      networkConnectivityAtStart2 = [telemetry networkConnectivityAtStart];
      [v18 setNetworkConnectivityAtStart:{networkConnectivityAtStart2, v51}];
      networkConnectivityAtFinish2 = [telemetry networkConnectivityAtFinish];
      [v18 setNetworkConnectivityAtFinish:{networkConnectivityAtFinish2, v53}];
      cacheRefreshSummary = [v25 cacheRefreshSummary];
      [v18 setCacheRefreshSummary:cacheRefreshSummary];

      [v18 setBackupOnWiFiWithDAS:{+[MBBackupScheduler backupOnWiFiWithDAS](MBBackupScheduler, "backupOnWiFiWithDAS")}];
      snapshotVerificationStatus = [telemetry snapshotVerificationStatus];
      [v18 setSnapshotVerificationStatus:snapshotVerificationStatus];

      [telemetry snapshotVerificationDuration];
      [v18 setSnapshotVerificationDuration:?];
      [v18 setSnapshotFormat:objc_msgSend(telemetry, "snapshotFormat")];
      [v18 setSnapshotVerificationEnabled:{objc_msgSend(telemetry, "snapshotVerificationEnabled")}];
      attemptSummary = [v25 attemptSummary];
      v57 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary emptyDomainCount]);
      [v18 setEmptyDomainCount:v57];

      attemptSummary2 = [v25 attemptSummary];
      v59 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary2 deletedFileCount]);
      [v18 setDeletedFileCount:v59];

      attemptSummary3 = [v25 attemptSummary];
      v61 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary3 unmodifiedDirectoryCount]);
      [v18 setUnmodifiedDirectoryCount:v61];

      attemptSummary4 = [v25 attemptSummary];
      v63 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary4 modifiedDirectoryCount]);
      [v18 setModifiedDirectoryCount:v63];

      attemptSummary5 = [v25 attemptSummary];
      v65 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary5 uploadedAssetCount]);
      [v18 setUploadedAssetCount:v65];

      attemptSummary6 = [v25 attemptSummary];
      v67 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [attemptSummary6 uploadedAssetSize]);
      [v18 setUploadedAssetSize:v67];

      attemptSummary7 = [v25 attemptSummary];
      v69 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary7 unmodifiedRegularFileCount]);
      [v18 setUnmodifiedRegularFileCount:v69];

      attemptSummary8 = [v25 attemptSummary];
      v71 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary8 modifiedRegularFileCount]);
      [v18 setModifiedRegularFileCount:v71];

      attemptSummary9 = [v25 attemptSummary];
      v73 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [attemptSummary9 peakMemoryUsage]);
      [v18 setPeakMemoryUsage:v73];

      attemptSummary10 = [v25 attemptSummary];
      [v18 setUploadedFileListSize:{objc_msgSend(attemptSummary10, "uploadedFileListSize")}];

      snapshotVerificationCancellationError = [telemetry snapshotVerificationCancellationError];
      [v18 setSnapshotVerificationCancellationError:snapshotVerificationCancellationError];
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

+ (void)sendStatusRequestForBackgroundRestoreCompletionWithAccount:(id)account databaseManager:(id)manager sourceDeviceID:(id)d snapshotUUID:(id)iD snapshotIndex:(unint64_t)index snapshotFormat:(int64_t)format isRestoringUsingFileLists:(BOOL)lists fatalErrors:(id)self0 plan:(id)self1 duration:(double)self2 error:(id)self3
{
  accountCopy = account;
  managerCopy = manager;
  dCopy = d;
  iDCopy = iD;
  errorsCopy = errors;
  planCopy = plan;
  errorCopy = error;
  v48 = errorCopy;
  if (planCopy)
  {
    v53 = 0;
    v24 = [planCopy restoreVerificationSummary:&v53];
    v25 = v53;
    if (!v24)
    {
      v26 = iDCopy;
      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v56 = v25;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "Could not fetch restore verification summary from plan: %@", buf, 0xCu);
        v43 = v25;
        _MBLog();
      }

      iDCopy = v26;
      errorCopy = v48;
    }
  }

  else
  {
    v24 = 0;
  }

  v28 = [[MBCKStatusRequest alloc] initWithRequestType:1 device:0 duration:errorCopy error:duration];
  [(MBCKStatusRequest *)v28 setIsForegroundRestore:0];
  [(MBCKStatusRequest *)v28 setSourceDeviceID:dCopy];
  [(MBCKStatusRequest *)v28 setSnapshotUUID:iDCopy];
  v29 = [NSNumber numberWithUnsignedInteger:index];
  [(MBCKStatusRequest *)v28 setSnapshotIndex:v29];

  [(MBCKStatusRequest *)v28 setSnapshotFormat:format];
  [(MBCKStatusRequest *)v28 setIsRestoringWithFileLists:lists];
  v44 = iDCopy;
  v45 = dCopy;
  if (v24)
  {
    -[MBCKStatusRequest setBackgroundVerificationEnabled:](v28, "setBackgroundVerificationEnabled:", [v24 verifierWasRun]);
    statusToReport = [v24 statusToReport];
    [(MBCKStatusRequest *)v28 setBackgroundRestoreVerificationStatus:statusToReport];
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
  v32 = errorsCopy;
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
  stringForRestorePhase = [(MBCKStatusRequest *)v28 stringForRestorePhase];
  capitalizedString = [stringForRestorePhase capitalizedString];

  v41 = [[NSString alloc] initWithFormat:@"%@ Restore", capitalizedString];
  v42 = [v38 operationGroupWithName:v41];
  [(MBCKStatusRequest *)v28 setCkOperationGroup:v42];

  [(MBCKStatusRequest *)v28 _sendWithAccount:accountCopy databaseManager:managerCopy];
}

- (MBCKStatusRequest)initWithRequestType:(unint64_t)type device:(id)device duration:(double)duration error:(id)error
{
  deviceCopy = device;
  errorCopy = error;
  v19.receiver = self;
  v19.super_class = MBCKStatusRequest;
  v12 = [(MBCKModel *)&v19 initWithRecord:0 cache:0];
  if (v12)
  {
    if (!errorCopy)
    {
      v13 = @"Backup";
      if (type == 1)
      {
        v13 = @"Restore";
      }

      if (type == 2)
      {
        v13 = @"Usage";
      }

      errorCopy = [MBError errorWithCode:0 format:@"%@ completed successfully", v13];
    }

    [(MBCKStatusRequest *)v12 setDevice:deviceCopy];
    [(MBCKStatusRequest *)v12 setEventType:type];
    [(MBCKStatusRequest *)v12 setDuration:duration];
    v18 = 0;
    v14 = MBSerializeErrors(errorCopy, &v18);
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
  recordRepresentation = [(MBCKModel *)&v206 recordRepresentation];
  device = [(MBCKStatusRequest *)self device];
  v5 = [recordRepresentation objectForKeyedSubscript:@"device"];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = device == 0;
  }

  if (!v6)
  {
    v7 = [CKReference alloc];
    recordID = [device recordID];
    v9 = [v7 initWithRecordID:recordID action:0];
    [recordRepresentation setObject:v9 forKeyedSubscript:@"device"];
  }

  v10 = [recordRepresentation objectForKeyedSubscript:@"eventType"];

  if (!v10)
  {
    v11 = [NSNumber numberWithLongLong:[(MBCKStatusRequest *)self eventType]];
    [recordRepresentation setObject:v11 forKeyedSubscript:@"eventType"];
  }

  v12 = [recordRepresentation objectForKeyedSubscript:@"errorCode"];

  if (!v12)
  {
    errorToReport = [(MBCKStatusRequest *)self errorToReport];
    v14 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [errorToReport code]);
    [recordRepresentation setObject:v14 forKeyedSubscript:@"errorCode"];
  }

  v15 = [recordRepresentation objectForKeyedSubscript:@"errorDescription"];

  if (!v15)
  {
    errorToReport2 = [(MBCKStatusRequest *)self errorToReport];
    localizedDescription = [errorToReport2 localizedDescription];
    [recordRepresentation setObject:localizedDescription forKeyedSubscript:@"errorDescription"];
  }

  v18 = [recordRepresentation objectForKeyedSubscript:@"errorDomain"];

  if (!v18)
  {
    errorToReport3 = [(MBCKStatusRequest *)self errorToReport];
    domain = [errorToReport3 domain];
    [recordRepresentation setObject:domain forKeyedSubscript:@"errorDomain"];
  }

  v21 = +[NSMutableDictionary dictionary];
  v22 = [recordRepresentation objectForKeyedSubscript:@"duration"];
  if (!v22)
  {
    [(MBCKStatusRequest *)self duration];
    [(MBCKStatusRequest *)self duration];
    v22 = [NSNumber numberWithLongLong:(v23 * 1000.0)];
    [v21 setObject:v22 forKeyedSubscript:@"duration"];
  }

  errorToReport4 = [(MBCKStatusRequest *)self errorToReport];

  if (errorToReport4)
  {
    errorToReport5 = [(MBCKStatusRequest *)self errorToReport];
    localizedDescription2 = [errorToReport5 localizedDescription];
    [v21 setObject:localizedDescription2 forKeyedSubscript:@"shortErrorDescription"];
  }

  serializedUnderlyingErrors = [(MBCKStatusRequest *)self serializedUnderlyingErrors];
  v28 = [serializedUnderlyingErrors count];

  if (v28)
  {
    serializedUnderlyingErrors2 = [(MBCKStatusRequest *)self serializedUnderlyingErrors];
    [v21 setObject:serializedUnderlyingErrors2 forKeyedSubscript:@"underlyingErrors"];
  }

  errorToReport6 = [(MBCKStatusRequest *)self errorToReport];
  if (errorToReport6)
  {
    v31 = errorToReport6;
    errorToReport7 = [(MBCKStatusRequest *)self errorToReport];
    v33 = [MBError isError:errorToReport7 withCode:0];

    if (v33)
    {
      v34 = @"YES";
    }

    else
    {
      minutesRemaining = [(MBCKStatusRequest *)self minutesRemaining];

      if (minutesRemaining)
      {
        minutesRemaining2 = [(MBCKStatusRequest *)self minutesRemaining];
        [v21 setObject:minutesRemaining2 forKeyedSubscript:@"minutesRemaining"];
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

  stateDescription = [(MBCKStatusRequest *)self stateDescription];

  if (stateDescription)
  {
    stateDescription2 = [(MBCKStatusRequest *)self stateDescription];
    [v21 setObject:stateDescription2 forKeyedSubscript:@"state"];
  }

  freeDiskSpace = [(MBCKStatusRequest *)self freeDiskSpace];

  if (freeDiskSpace)
  {
    freeDiskSpace2 = [(MBCKStatusRequest *)self freeDiskSpace];
    [v21 setObject:freeDiskSpace2 forKeyedSubscript:@"freeDiskSpace"];
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
    networkConnectivityAtStart = [(MBCKStatusRequest *)self networkConnectivityAtStart];
    v46 = [NSNumber numberWithBool:networkConnectivityAtStart & 1];
    [v21 setObject:v46 forKeyedSubscript:@"onWiFiAtStart"];

    v47 = [NSNumber numberWithBool:(networkConnectivityAtStart >> 8) & 1];
    [v21 setObject:v47 forKeyedSubscript:@"onCellularAtStart"];

    if ((networkConnectivityAtStart & 0x100) != 0)
    {
      if ((networkConnectivityAtStart & 0x10000) != 0)
      {
        v48 = &off_1003E0EA0;
      }

      else
      {
        v48 = &off_1003E0EB8;
      }

      [v21 setObject:v48 forKeyedSubscript:@"cellularCostAtStart"];
      v49 = [NSNumber numberWithInt:HIDWORD(networkConnectivityAtStart)];
      [v21 setObject:v49 forKeyedSubscript:@"cellularRadioTypeAtStart"];
    }

    networkConnectivityAtFinish = [(MBCKStatusRequest *)self networkConnectivityAtFinish];
    v51 = [NSNumber numberWithBool:networkConnectivityAtFinish & 1];
    [v21 setObject:v51 forKeyedSubscript:@"onWiFiAtFinish"];

    v52 = [NSNumber numberWithBool:(networkConnectivityAtFinish >> 8) & 1];
    [v21 setObject:v52 forKeyedSubscript:@"onCellularAtFinish"];

    if ((networkConnectivityAtFinish & 0x100) != 0)
    {
      if ((networkConnectivityAtFinish & 0x10000) != 0)
      {
        v53 = &off_1003E0EA0;
      }

      else
      {
        v53 = &off_1003E0EB8;
      }

      [v21 setObject:v53 forKeyedSubscript:@"cellularCostAtFinish"];
      v54 = [NSNumber numberWithInt:HIDWORD(networkConnectivityAtFinish)];
      [v21 setObject:v54 forKeyedSubscript:@"cellularRadioTypeAtFinish"];
    }
  }

  if ([(MBCKStatusRequest *)self eventType])
  {
    if ([(MBCKStatusRequest *)self eventType]!= 1)
    {
      goto LABEL_163;
    }

    sourceDeviceID = [(MBCKStatusRequest *)self sourceDeviceID];
    v56 = [recordRepresentation objectForKeyedSubscript:@"device"];

    if (!v56 && sourceDeviceID)
    {
      mb_backupIDByAddingCKPrefix = [sourceDeviceID mb_backupIDByAddingCKPrefix];
      v58 = [CKRecordID alloc];
      v59 = [MBCKDatabaseManager zoneIDOfType:2];
      v60 = [v58 initWithRecordName:mb_backupIDByAddingCKPrefix zoneID:v59];

      v61 = [[CKReference alloc] initWithRecordID:v60 action:0];
      [recordRepresentation setObject:v61 forKeyedSubscript:@"device"];
    }

    snapshotUUID = [(MBCKStatusRequest *)self snapshotUUID];
    snapshotIndex = [(MBCKStatusRequest *)self snapshotIndex];
    v64 = snapshotIndex;
    if (snapshotIndex)
    {
      v65 = snapshotIndex;
    }

    else
    {
      snapshots = [device snapshots];
      v168 = snapshotUUID;
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100182980;
      v208 = &unk_1003C0320;
      v209[0] = v168;
      v169 = [snapshots indexOfObjectPassingTest:buf];
      if (v169 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v65 = 0;
      }

      else
      {
        v65 = [NSNumber numberWithUnsignedInteger:v169];
      }
    }

    stringForRestorePhase = [(MBCKStatusRequest *)self stringForRestorePhase];
    [v21 setObject:stringForRestorePhase forKeyedSubscript:@"restoreType"];

    [v21 setObject:snapshotUUID forKeyedSubscript:@"snapshot"];
    [v21 setObject:sourceDeviceID forKeyedSubscript:@"sourceDeviceID"];
    v171 = MBDeviceUUID();
    [v21 setObject:v171 forKeyedSubscript:@"targetDeviceID"];

    [v21 setObject:v34 forKeyedSubscript:@"restoreSucceeded"];
    if (v65)
    {
      [v21 setObject:v65 forKeyedSubscript:@"snapshotIndex"];
    }

    foregroundRestorableSize = [(MBCKStatusRequest *)self foregroundRestorableSize];

    if (foregroundRestorableSize)
    {
      foregroundRestorableSize2 = [(MBCKStatusRequest *)self foregroundRestorableSize];
      [v21 setObject:foregroundRestorableSize2 forKeyedSubscript:@"foregroundRestorableSize"];
    }

    backgroundRestorableSize = [(MBCKStatusRequest *)self backgroundRestorableSize];

    if (backgroundRestorableSize)
    {
      backgroundRestorableSize2 = [(MBCKStatusRequest *)self backgroundRestorableSize];
      [v21 setObject:backgroundRestorableSize2 forKeyedSubscript:@"backgroundRestorableSize"];
    }

    foregroundRestorableFileCount = [(MBCKStatusRequest *)self foregroundRestorableFileCount];

    if (foregroundRestorableFileCount)
    {
      foregroundRestorableFileCount2 = [(MBCKStatusRequest *)self foregroundRestorableFileCount];
      [v21 setObject:foregroundRestorableFileCount2 forKeyedSubscript:@"foregroundRestorableFileCount"];
    }

    backgroundRestorableFileCount = [(MBCKStatusRequest *)self backgroundRestorableFileCount];

    if (backgroundRestorableFileCount)
    {
      backgroundRestorableFileCount2 = [(MBCKStatusRequest *)self backgroundRestorableFileCount];
      [v21 setObject:backgroundRestorableFileCount2 forKeyedSubscript:@"backgroundRestorableFileCount"];
    }

    restoreBuildVersion = [(MBCKStatusRequest *)self restoreBuildVersion];

    if (restoreBuildVersion)
    {
      restoreBuildVersion2 = [(MBCKStatusRequest *)self restoreBuildVersion];
      [v21 setObject:restoreBuildVersion2 forKeyedSubscript:@"restoreBuildVersion"];
    }

    if ([(MBCKStatusRequest *)self isForegroundRestore])
    {
      v182 = [NSNumber numberWithBool:[(MBCKStatusRequest *)self foregroundRestoreVerificationEnabled]];
      [v21 setObject:v182 forKeyedSubscript:@"foregroundRestoreVerificationEnabled"];

      foregroundRestoreVerificationStatus = [(MBCKStatusRequest *)self foregroundRestoreVerificationStatus];

      if (!foregroundRestoreVerificationStatus)
      {
LABEL_158:
        errorToReport8 = [(MBCKStatusRequest *)self errorToReport];

        if (errorToReport8)
        {
          errorToReport9 = [(MBCKStatusRequest *)self errorToReport];
          v193 = [NSNumber numberWithBool:[MBError isRetryableRestoreError:errorToReport9]];
          [v21 setObject:v193 forKeyedSubscript:@"isRetryableRestoreError"];
        }

        v194 = [NSNumber numberWithBool:[(MBCKStatusRequest *)self isRestoringWithFileLists]];
        [v21 setObject:v194 forKeyedSubscript:@"isRestoringWithFileLists"];

        goto LABEL_161;
      }

      foregroundRestoreVerificationStatus2 = [(MBCKStatusRequest *)self foregroundRestoreVerificationStatus];
      v185 = @"foregroundRestoreVerificationStatus";
    }

    else
    {
      v186 = [NSNumber numberWithBool:[(MBCKStatusRequest *)self backgroundVerificationEnabled]];
      [v21 setObject:v186 forKeyedSubscript:@"backgroundRestoreVerificationEnabled"];

      backgroundRestoreVerificationStatus = [(MBCKStatusRequest *)self backgroundRestoreVerificationStatus];

      if (backgroundRestoreVerificationStatus)
      {
        backgroundRestoreVerificationStatus2 = [(MBCKStatusRequest *)self backgroundRestoreVerificationStatus];
        [v21 setObject:backgroundRestoreVerificationStatus2 forKeyedSubscript:@"backgroundRestoreVerificationStatus"];
      }

      errorSignatures = [(MBCKStatusRequest *)self errorSignatures];
      v190 = [errorSignatures count];

      if (!v190)
      {
        goto LABEL_158;
      }

      foregroundRestoreVerificationStatus2 = [(MBCKStatusRequest *)self errorSignatures];
      v185 = @"errorSignatures";
    }

    [v21 setObject:foregroundRestoreVerificationStatus2 forKeyedSubscript:v185];

    goto LABEL_158;
  }

  v66 = [NSNumber numberWithLongLong:[(MBCKStatusRequest *)self backupReason]];
  [v21 setObject:v66 forKeyedSubscript:@"backupReason"];

  if ([(MBCKStatusRequest *)self snapshotType]!= -1)
  {
    v67 = [NSNumber numberWithLongLong:[(MBCKStatusRequest *)self snapshotType]];
    [v21 setObject:v67 forKeyedSubscript:@"backupType"];
  }

  pendingSnapshot = [device pendingSnapshot];
  snapshotUUID = pendingSnapshot;
  if (pendingSnapshot)
  {
    sourceDeviceID = [pendingSnapshot snapshotID];
    dateOfLastBackup = [device dateOfLastBackup];
    if (dateOfLastBackup)
    {
      [v21 setObject:dateOfLastBackup forKeyedSubscript:@"lastBackupDate"];
    }

    if (!sourceDeviceID)
    {
      goto LABEL_58;
    }
  }

  else
  {
    sourceDeviceID = [(MBCKStatusRequest *)self pendingSnapshotID];
    if (!sourceDeviceID)
    {
      goto LABEL_58;
    }
  }

  [v21 setObject:sourceDeviceID forKeyedSubscript:@"snapshot"];
LABEL_58:
  errorToReport10 = [(MBCKStatusRequest *)self errorToReport];
  v71 = [MBError isCKError:errorToReport10 withCode:25];

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
  topDomainsWithMissingEncryptionKeys = [(MBCKStatusRequest *)self topDomainsWithMissingEncryptionKeys];
  v75 = [topDomainsWithMissingEncryptionKeys count];

  if (v75)
  {
    topDomainsWithMissingEncryptionKeys2 = [(MBCKStatusRequest *)self topDomainsWithMissingEncryptionKeys];
    [v21 setObject:topDomainsWithMissingEncryptionKeys2 forKeyedSubscript:@"topDomainsWithMissingEncryptionKeys"];
  }

  backupTotalSize = [(MBCKStatusRequest *)self backupTotalSize];

  if (backupTotalSize)
  {
    backupTotalSize2 = [(MBCKStatusRequest *)self backupTotalSize];
    [v21 setObject:backupTotalSize2 forKeyedSubscript:@"backupSize"];
  }

  backupFileCount = [(MBCKStatusRequest *)self backupFileCount];

  if (backupFileCount)
  {
    backupFileCount2 = [(MBCKStatusRequest *)self backupFileCount];
    [v21 setObject:backupFileCount2 forKeyedSubscript:@"backupFileCount"];
  }

  backupDirectoryCount = [(MBCKStatusRequest *)self backupDirectoryCount];

  if (backupDirectoryCount)
  {
    backupDirectoryCount2 = [(MBCKStatusRequest *)self backupDirectoryCount];
    [v21 setObject:backupDirectoryCount2 forKeyedSubscript:@"backupDirectoryCount"];
  }

  queuedSize = [(MBCKStatusRequest *)self queuedSize];

  if (queuedSize)
  {
    queuedSize2 = [(MBCKStatusRequest *)self queuedSize];
    [v21 setObject:queuedSize2 forKeyedSubscript:@"queuedSize"];
  }

  queuedFileCount = [(MBCKStatusRequest *)self queuedFileCount];

  if (queuedFileCount)
  {
    queuedFileCount2 = [(MBCKStatusRequest *)self queuedFileCount];
    [v21 setObject:queuedFileCount2 forKeyedSubscript:@"queuedFileCount"];
  }

  uploadedSize = [(MBCKStatusRequest *)self uploadedSize];

  if (uploadedSize)
  {
    uploadedSize2 = [(MBCKStatusRequest *)self uploadedSize];
    [v21 setObject:uploadedSize2 forKeyedSubscript:@"uploadedSize"];
  }

  uploadedFileCount = [(MBCKStatusRequest *)self uploadedFileCount];

  if (uploadedFileCount)
  {
    uploadedFileCount2 = [(MBCKStatusRequest *)self uploadedFileCount];
    [v21 setObject:uploadedFileCount2 forKeyedSubscript:@"uploadedFileCount"];
  }

  lastOnConditionEvents = [(MBCKStatusRequest *)self lastOnConditionEvents];

  if (lastOnConditionEvents)
  {
    lastOnConditionEvents2 = [(MBCKStatusRequest *)self lastOnConditionEvents];
    [v21 setObject:lastOnConditionEvents2 forKeyedSubscript:@"lastOnConditionEvents"];
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
  throughputs = [(MBCKStatusRequest *)self throughputs];
  v95 = [throughputs count];

  if (v95)
  {
    throughputs2 = [(MBCKStatusRequest *)self throughputs];
    [v21 setObject:throughputs2 forKeyedSubscript:@"throughputs"];
  }

  wifiQuality = [(MBCKStatusRequest *)self wifiQuality];
  v98 = [wifiQuality count];

  if (v98)
  {
    wifiQuality2 = [(MBCKStatusRequest *)self wifiQuality];
    [v21 setObject:wifiQuality2 forKeyedSubscript:@"wifiQuality"];
  }

  cacheSize = [(MBCKStatusRequest *)self cacheSize];

  if (cacheSize)
  {
    cacheSize2 = [(MBCKStatusRequest *)self cacheSize];
    [v21 setObject:cacheSize2 forKeyedSubscript:@"cacheSize"];
  }

  remainingCellularBalance = [(MBCKStatusRequest *)self remainingCellularBalance];

  if (remainingCellularBalance)
  {
    remainingCellularBalance2 = [(MBCKStatusRequest *)self remainingCellularBalance];
    [v21 setObject:remainingCellularBalance2 forKeyedSubscript:@"remainingCellularBalance"];
  }

  classAFilesMissingEncryptionKeys = [(MBCKStatusRequest *)self classAFilesMissingEncryptionKeys];

  if (classAFilesMissingEncryptionKeys)
  {
    classAFilesMissingEncryptionKeys2 = [(MBCKStatusRequest *)self classAFilesMissingEncryptionKeys];
    [v21 setObject:classAFilesMissingEncryptionKeys2 forKeyedSubscript:@"classAFilesMissingEncryptionKeys"];
  }

  classBFilesMissingEncryptionKeys = [(MBCKStatusRequest *)self classBFilesMissingEncryptionKeys];

  if (classBFilesMissingEncryptionKeys)
  {
    classBFilesMissingEncryptionKeys2 = [(MBCKStatusRequest *)self classBFilesMissingEncryptionKeys];
    [v21 setObject:classBFilesMissingEncryptionKeys2 forKeyedSubscript:@"classBFilesMissingEncryptionKeys"];
  }

  [(MBCKStatusRequest *)self fseventDuration];
  if (v108 != 0.0)
  {
    [(MBCKStatusRequest *)self fseventDuration];
    v109 = [NSNumber numberWithDouble:?];
    [v21 setObject:v109 forKeyedSubscript:@"fseventDuration"];
  }

  enabledDomainsCount = [(MBCKStatusRequest *)self enabledDomainsCount];

  if (enabledDomainsCount)
  {
    enabledDomainsCount2 = [(MBCKStatusRequest *)self enabledDomainsCount];
    [v21 setObject:enabledDomainsCount2 forKeyedSubscript:@"enabledDomainsCount"];
  }

  scannedDomainsCount = [(MBCKStatusRequest *)self scannedDomainsCount];

  if (scannedDomainsCount)
  {
    scannedDomainsCount2 = [(MBCKStatusRequest *)self scannedDomainsCount];
    [v21 setObject:scannedDomainsCount2 forKeyedSubscript:@"scannedDomainsCount"];
  }

  skippedFilesCount = [(MBCKStatusRequest *)self skippedFilesCount];

  if (skippedFilesCount)
  {
    skippedFilesCount2 = [(MBCKStatusRequest *)self skippedFilesCount];
    [v21 setObject:skippedFilesCount2 forKeyedSubscript:@"skippedFilesCount"];
  }

  cacheRefreshSummary = [(MBCKStatusRequest *)self cacheRefreshSummary];
  if (cacheRefreshSummary)
  {
    v117 = cacheRefreshSummary;
    cacheRefreshSummary2 = [(MBCKStatusRequest *)self cacheRefreshSummary];
    downloadedSnapshotCount = [cacheRefreshSummary2 downloadedSnapshotCount];

    if (downloadedSnapshotCount)
    {
      cacheRefreshSummary3 = [(MBCKStatusRequest *)self cacheRefreshSummary];
      v121 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [cacheRefreshSummary3 cachedSnapshotCount]);
      [v21 setObject:v121 forKeyedSubscript:@"cachedSnapshotCount"];

      cacheRefreshSummary4 = [(MBCKStatusRequest *)self cacheRefreshSummary];
      v123 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [cacheRefreshSummary4 serverSnapshotCount]);
      [v21 setObject:v123 forKeyedSubscript:@"serverSnapshotCount"];

      cacheRefreshSummary5 = [(MBCKStatusRequest *)self cacheRefreshSummary];
      v125 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [cacheRefreshSummary5 journalActionCount]);
      [v21 setObject:v125 forKeyedSubscript:@"journalActionCount"];

      cacheRefreshSummary6 = [(MBCKStatusRequest *)self cacheRefreshSummary];
      v127 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [cacheRefreshSummary6 journalReplaySucceeded]);
      [v21 setObject:v127 forKeyedSubscript:@"journalReplaySucceeded"];

      cacheRefreshSummary7 = [(MBCKStatusRequest *)self cacheRefreshSummary];
      v129 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [cacheRefreshSummary7 journalVerificationErrorCount]);
      [v21 setObject:v129 forKeyedSubscript:@"journalVerificationErrorCount"];

      cacheRefreshSummary8 = [(MBCKStatusRequest *)self cacheRefreshSummary];
      v131 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [cacheRefreshSummary8 downloadedSnapshotCount]);
      [v21 setObject:v131 forKeyedSubscript:@"downloadedSnapshotCount"];

      cacheRefreshSummary9 = [(MBCKStatusRequest *)self cacheRefreshSummary];
      v133 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [cacheRefreshSummary9 downloadedSnapshotVerificationFailureCount]);
      [v21 setObject:v133 forKeyedSubscript:@"downloadedSnapshotVerificationFailureCount"];

      cacheRefreshSummary10 = [(MBCKStatusRequest *)self cacheRefreshSummary];
      verificationFailureStrings = [cacheRefreshSummary10 verificationFailureStrings];

      if ([verificationFailureStrings count])
      {
        [v21 setObject:verificationFailureStrings forKeyedSubscript:@"verificationFailures"];
      }
    }
  }

  v136 = [NSNumber numberWithBool:[(MBCKStatusRequest *)self backupOnWiFiWithDAS]];
  [v21 setObject:v136 forKeyedSubscript:@"backupOnWiFiWithDAS"];

  snapshotVerificationStatus = [(MBCKStatusRequest *)self snapshotVerificationStatus];

  if (snapshotVerificationStatus)
  {
    snapshotVerificationStatus2 = [(MBCKStatusRequest *)self snapshotVerificationStatus];
    [v21 setObject:snapshotVerificationStatus2 forKeyedSubscript:@"snapshotVerificationStatus"];

    [(MBCKStatusRequest *)self snapshotVerificationDuration];
    [(MBCKStatusRequest *)self snapshotVerificationDuration];
    v140 = [NSNumber numberWithLongLong:(v139 * 1000.0)];
    [v21 setObject:v140 forKeyedSubscript:@"snapshotVerificationDuration"];

    snapshotVerificationCancellationError = [(MBCKStatusRequest *)self snapshotVerificationCancellationError];

    if (snapshotVerificationCancellationError)
    {
      snapshotVerificationCancellationError2 = [(MBCKStatusRequest *)self snapshotVerificationCancellationError];
      domain2 = [snapshotVerificationCancellationError2 domain];
      [v21 setObject:domain2 forKeyedSubscript:@"verificationCancellationErrorDomain"];

      snapshotVerificationCancellationError3 = [(MBCKStatusRequest *)self snapshotVerificationCancellationError];
      v145 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [snapshotVerificationCancellationError3 code]);
      [v21 setObject:v145 forKeyedSubscript:@"verificationCancellationErrorCode"];

      snapshotVerificationCancellationError4 = [(MBCKStatusRequest *)self snapshotVerificationCancellationError];
      localizedDescription3 = [snapshotVerificationCancellationError4 localizedDescription];
      [v21 setObject:localizedDescription3 forKeyedSubscript:@"verificationCancellationErrorDescription"];
    }
  }

  v148 = [NSNumber numberWithBool:[(MBCKStatusRequest *)self snapshotVerificationEnabled]];
  [v21 setObject:v148 forKeyedSubscript:@"snapshotVerificationEnabled"];

  emptyDomainCount = [(MBCKStatusRequest *)self emptyDomainCount];

  if (emptyDomainCount)
  {
    emptyDomainCount2 = [(MBCKStatusRequest *)self emptyDomainCount];
    [v21 setObject:emptyDomainCount2 forKeyedSubscript:@"emptyDomainCount"];
  }

  deletedFileCount = [(MBCKStatusRequest *)self deletedFileCount];

  if (deletedFileCount)
  {
    deletedFileCount2 = [(MBCKStatusRequest *)self deletedFileCount];
    [v21 setObject:deletedFileCount2 forKeyedSubscript:@"deletedFileCount"];
  }

  unmodifiedDirectoryCount = [(MBCKStatusRequest *)self unmodifiedDirectoryCount];

  if (unmodifiedDirectoryCount)
  {
    unmodifiedDirectoryCount2 = [(MBCKStatusRequest *)self unmodifiedDirectoryCount];
    [v21 setObject:unmodifiedDirectoryCount2 forKeyedSubscript:@"unmodifiedDirectoryCount"];
  }

  modifiedDirectoryCount = [(MBCKStatusRequest *)self modifiedDirectoryCount];

  if (modifiedDirectoryCount)
  {
    modifiedDirectoryCount2 = [(MBCKStatusRequest *)self modifiedDirectoryCount];
    [v21 setObject:modifiedDirectoryCount2 forKeyedSubscript:@"modifiedDirectoryCount"];
  }

  uploadedAssetSize = [(MBCKStatusRequest *)self uploadedAssetSize];

  if (uploadedAssetSize)
  {
    uploadedAssetSize2 = [(MBCKStatusRequest *)self uploadedAssetSize];
    [v21 setObject:uploadedAssetSize2 forKeyedSubscript:@"uploadedAssetSize"];
  }

  uploadedAssetCount = [(MBCKStatusRequest *)self uploadedAssetCount];

  if (uploadedAssetCount)
  {
    uploadedAssetCount2 = [(MBCKStatusRequest *)self uploadedAssetCount];
    [v21 setObject:uploadedAssetCount2 forKeyedSubscript:@"uploadedAssetCount"];
  }

  unmodifiedRegularFileCount = [(MBCKStatusRequest *)self unmodifiedRegularFileCount];

  if (unmodifiedRegularFileCount)
  {
    unmodifiedRegularFileCount2 = [(MBCKStatusRequest *)self unmodifiedRegularFileCount];
    [v21 setObject:unmodifiedRegularFileCount2 forKeyedSubscript:@"unmodifiedRegularFileCount"];
  }

  modifiedRegularFileCount = [(MBCKStatusRequest *)self modifiedRegularFileCount];

  if (modifiedRegularFileCount)
  {
    modifiedRegularFileCount2 = [(MBCKStatusRequest *)self modifiedRegularFileCount];
    [v21 setObject:modifiedRegularFileCount2 forKeyedSubscript:@"modifiedRegularFileCount"];
  }

  peakMemoryUsage = [(MBCKStatusRequest *)self peakMemoryUsage];

  if (peakMemoryUsage)
  {
    peakMemoryUsage2 = [(MBCKStatusRequest *)self peakMemoryUsage];
    [v21 setObject:peakMemoryUsage2 forKeyedSubscript:@"peakMemoryUsage"];
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
    [recordRepresentation setPluginFields:v21];
  }

  v195 = MBGetDefaultLog();
  if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
  {
    v196 = v195;
    if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
    {
      v197 = objc_opt_class();
      recordID2 = [recordRepresentation recordID];
      recordName = [recordID2 recordName];
      pluginFields = [recordRepresentation pluginFields];
      *buf = 138544130;
      *&buf[4] = v197;
      *&buf[12] = 2114;
      *&buf[14] = recordName;
      *&buf[22] = 2112;
      v208 = recordRepresentation;
      LOWORD(v209[0]) = 2112;
      *(v209 + 2) = pluginFields;
      _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "Saving %{public}@(%{public}@) record:%@, pluginFields:%@", buf, 0x2Au);
    }

    objc_opt_class();
    recordID3 = [recordRepresentation recordID];
    recordName2 = [recordID3 recordName];
    pluginFields2 = [recordRepresentation pluginFields];
    _MBLog();
  }

  v203 = recordRepresentation;
  return recordRepresentation;
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