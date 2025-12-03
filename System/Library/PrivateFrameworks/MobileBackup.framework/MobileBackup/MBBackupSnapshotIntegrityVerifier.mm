@interface MBBackupSnapshotIntegrityVerifier
+ (BOOL)shouldRunVerifierWithBackupPolicy:(int64_t)policy backupReason:(int64_t)reason snapshotFormat:(int64_t)format account:(id)account;
- (BOOL)_fetchDomainNamesModifiedInPreviousSnapshotForPersona:(id)persona error:(id *)error;
- (BOOL)_verifyAssetRecordIDsAreReferencedForDomain:(id)domain assetIDPrefix:(id)prefix recordsDB:(id)b verifiedAssetCount:(unint64_t *)count error:(id *)error;
- (BOOL)_verifyFileListForDomain:(id)domain snapshotDirectory:(id)directory snapshotTacker:(id)tacker domainRecordIDsByDomainName:(id)name device:(id)device persona:(id)persona recordsDB:(id)b commitID:(id)self0 error:(id *)self1;
- (BOOL)_verifySnapshotAfterCommitWithPath:(id)path operationTracker:(id)tracker scanMode:(unint64_t)mode enginePolicy:(unint64_t)policy snapshotTracker:(id)snapshotTracker domainManager:(id)manager deviceRecordID:(id)d hmacKey:(id)self0 backupAttemptSummary:(id)self1 error:(id *)self2;
- (BOOL)verifySnapshotAfterCommitWithOperationTracker:(id)tracker scanMode:(unint64_t)mode enginePolicy:(unint64_t)policy snapshotTracker:(id)snapshotTracker domainManager:(id)manager deviceRecordID:(id)d hmacKey:(id)key backupAttemptSummary:(id)self0 duration:(double *)self1 error:(id *)self2;
- (MBBackupSnapshotIntegrityVerifier)initWithDelegate:(id)delegate;
- (id)_debugInfoForOpenedFileList:(id)list;
- (id)_fetchDeviceRecordWithRecordID:(id)d tracker:(id)tracker hmacKey:(id)key error:(id *)error;
- (id)_synchronizeFileListsForDevice:(id)device commitID:(id)d hmacKey:(id)key tracker:(id)tracker tempPath:(id)path error:(id *)error;
- (id)_verifyAssetMetadata:(id)metadata file:(id)file localPath:(id)path;
- (id)_verifyBackupMetadataForFile:(id)file localPath:(id)path fileList:(id)list;
- (id)fileScanner:(id)scanner didFindFile:(id)file;
@end

@implementation MBBackupSnapshotIntegrityVerifier

- (MBBackupSnapshotIntegrityVerifier)initWithDelegate:(id)delegate
{
  v8.receiver = self;
  v8.super_class = MBBackupSnapshotIntegrityVerifier;
  v3 = [(MBSnapshotIntegrityVerifier *)&v8 _initWithDelegate:delegate];
  v4 = +[MBBehaviorOptions sharedOptions];
  backupPathsToFailVerifyingRegex = [v4 backupPathsToFailVerifyingRegex];
  v6 = [MBErrorInjector errorInjectorForRegex:backupPathsToFailVerifyingRegex maxFailureCount:0];
  [(MBSnapshotIntegrityVerifier *)v3 setErrorInjector:v6];

  return v3;
}

+ (BOOL)shouldRunVerifierWithBackupPolicy:(int64_t)policy backupReason:(int64_t)reason snapshotFormat:(int64_t)format account:(id)account
{
  accountCopy = account;
  v8 = MBSnapshotFormatContainsFileLists();
  LOBYTE(v9) = 0;
  if (policy != 1 && v8)
  {
    v10 = +[MBBehaviorOptions sharedOptions];
    verifySnapshotAfterCommit = [v10 verifySnapshotAfterCommit];

    if (verifySnapshotAfterCommit)
    {
      goto LABEL_4;
    }

    if (MBBackupReasonIsManual())
    {
      LOBYTE(v9) = 0;
      goto LABEL_11;
    }

    if (MBIsInternalInstall())
    {
LABEL_4:
      LOBYTE(v9) = 1;
    }

    else
    {
      v12 = +[MBRemoteConfiguration sharedInstance];
      v9 = [v12 backupVerificationEnabledForAccount:accountCopy];

      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=verifier= Snapshot verification enabled from server: %d", buf, 8u);
        _MBLog();
      }
    }
  }

LABEL_11:

  return v9;
}

- (BOOL)verifySnapshotAfterCommitWithOperationTracker:(id)tracker scanMode:(unint64_t)mode enginePolicy:(unint64_t)policy snapshotTracker:(id)snapshotTracker domainManager:(id)manager deviceRecordID:(id)d hmacKey:(id)key backupAttemptSummary:(id)self0 duration:(double *)self1 error:(id *)self2
{
  trackerCopy = tracker;
  snapshotTrackerCopy = snapshotTracker;
  managerCopy = manager;
  dCopy = d;
  keyCopy = key;
  summaryCopy = summary;
  if (!error)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier verifySnapshotAfterCommitWithOperationTracker:scanMode:enginePolicy:snapshotTracker:domainManager:deviceRecordID:hmacKey:backupAttemptSummary:duration:error:]", "MBSnapshotIntegrityVerifier.m", 436, "error");
  }

  if (!trackerCopy)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier verifySnapshotAfterCommitWithOperationTracker:scanMode:enginePolicy:snapshotTracker:domainManager:deviceRecordID:hmacKey:backupAttemptSummary:duration:error:]", "MBSnapshotIntegrityVerifier.m", 437, "tracker");
  }

  if (!dCopy)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier verifySnapshotAfterCommitWithOperationTracker:scanMode:enginePolicy:snapshotTracker:domainManager:deviceRecordID:hmacKey:backupAttemptSummary:duration:error:]", "MBSnapshotIntegrityVerifier.m", 438, "recordID");
  }

  if (!keyCopy)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier verifySnapshotAfterCommitWithOperationTracker:scanMode:enginePolicy:snapshotTracker:domainManager:deviceRecordID:hmacKey:backupAttemptSummary:duration:error:]", "MBSnapshotIntegrityVerifier.m", 439, "hmacKey");
  }

  if (!managerCopy)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier verifySnapshotAfterCommitWithOperationTracker:scanMode:enginePolicy:snapshotTracker:domainManager:deviceRecordID:hmacKey:backupAttemptSummary:duration:error:]", "MBSnapshotIntegrityVerifier.m", 440, "domainManager");
  }

  v23 = summaryCopy;
  if (!summaryCopy)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier verifySnapshotAfterCommitWithOperationTracker:scanMode:enginePolicy:snapshotTracker:domainManager:deviceRecordID:hmacKey:backupAttemptSummary:duration:error:]", "MBSnapshotIntegrityVerifier.m", 441, "attemptSummary");
  }

  if (!duration)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier verifySnapshotAfterCommitWithOperationTracker:scanMode:enginePolicy:snapshotTracker:domainManager:deviceRecordID:hmacKey:backupAttemptSummary:duration:error:]", "MBSnapshotIntegrityVerifier.m", 442, "duration");
  }

  v40 = trackerCopy;
  [(MBSnapshotIntegrityVerifier *)self setAttemptSummary:summaryCopy];
  v24 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:@"/private/var/mobile" identifiedBy:@"SnapshotVerification" error:error];
  if (v24)
  {
    v38 = dCopy;
    v25 = managerCopy;
    policyCopy = policy;
    Current = CFAbsoluteTimeGetCurrent();
    v28 = MBGetDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=verifier= Starting snapshot verification after commit", buf, 2u);
      _MBLog();
    }

    makeTemporaryFilePath = [v24 makeTemporaryFilePath];
    selfCopy = self;
    v31 = snapshotTrackerCopy;
    v32 = policyCopy;
    managerCopy = v25;
    v33 = [(MBBackupSnapshotIntegrityVerifier *)selfCopy _verifySnapshotAfterCommitWithPath:makeTemporaryFilePath operationTracker:v40 scanMode:mode enginePolicy:v32 snapshotTracker:snapshotTrackerCopy domainManager:v25 deviceRecordID:v38 hmacKey:keyCopy backupAttemptSummary:v23 error:error];
    [v24 dispose];
    *duration = CFAbsoluteTimeGetCurrent() - Current;
    v34 = MBGetDefaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *duration;
      *buf = 134217984;
      v42 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "=verifier= Finished snapshot verification in %.2fs", buf, 0xCu);
      v37 = *duration;
      _MBLog();
    }

    dCopy = v38;
  }

  else
  {
    makeTemporaryFilePath = MBGetDefaultLog();
    if (os_log_type_enabled(makeTemporaryFilePath, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, makeTemporaryFilePath, OS_LOG_TYPE_ERROR, "=verifier= Failed to create a temp directory", buf, 2u);
      _MBLog();
    }

    v33 = 0;
    v31 = snapshotTrackerCopy;
  }

  return v33;
}

- (id)_fetchDeviceRecordWithRecordID:(id)d tracker:(id)tracker hmacKey:(id)key error:(id *)error
{
  dCopy = d;
  trackerCopy = tracker;
  keyCopy = key;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10011F268;
  v34 = sub_10011F278;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10011F268;
  v28 = sub_10011F278;
  v29 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001201F0;
  v20[3] = &unk_1003BE5E0;
  v22 = &v30;
  v23 = &v24;
  v12 = dispatch_semaphore_create(0);
  v21 = v12;
  [trackerCopy fetchRecordWithID:dCopy completion:v20];
  MBSemaphoreWaitForever();
  if (v31[5])
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v31[5];
      *buf = 138412290;
      v37 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=verifier= Failed to fetch device records: %@", buf, 0xCu);
      v19 = v31[5];
      _MBLog();
    }

    v15 = 0;
    if (error)
    {
      *error = v31[5];
    }
  }

  else
  {
    v16 = [MBCKDevice alloc];
    v17 = [(MBCKModel *)v16 initWithRecord:v25[5] cache:0];
    [(MBCKDevice *)v17 setHmacKey:keyCopy];
    if ([(MBCKDevice *)v17 fetchSnapshotsWithOperationTracker:trackerCopy error:error])
    {
      v15 = v17;
    }

    else
    {
      v15 = 0;
    }
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v15;
}

- (id)_synchronizeFileListsForDevice:(id)device commitID:(id)d hmacKey:(id)key tracker:(id)tracker tempPath:(id)path error:(id *)error
{
  deviceCopy = device;
  dCopy = d;
  keyCopy = key;
  trackerCopy = tracker;
  pathCopy = path;
  if (!error)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier _synchronizeFileListsForDevice:commitID:hmacKey:tracker:tempPath:error:]", "MBSnapshotIntegrityVerifier.m", 510, "error");
  }

  v18 = pathCopy;
  errorCopy = error;
  v19 = MBGetDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    [deviceCopy recordID];
    v21 = v20 = keyCopy;
    recordName = [v21 recordName];
    [deviceCopy snapshots];
    v23 = v47 = dCopy;
    v24 = [v23 valueForKey:@"snapshotID"];
    [v24 componentsJoinedByString:{@", "}];
    v26 = v25 = trackerCopy;
    *buf = 138412546;
    v55 = recordName;
    v56 = 2112;
    v57 = v26;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "=verifier= Performing domain reference replay for device %@ with snapshots [%@]", buf, 0x16u);

    keyCopy = v20;
    recordID = [deviceCopy recordID];
    recordName2 = [recordID recordName];
    snapshots = [deviceCopy snapshots];
    v30 = [snapshots valueForKey:@"snapshotID"];
    v46 = [v30 componentsJoinedByString:{@", "}];
    _MBLog();

    dCopy = v47;
    trackerCopy = v25;
  }

  snapshots2 = [deviceCopy snapshots];
  v32 = MBGetLatestDomainRecordReferencesFromSnapshots(snapshots2);

  v33 = objc_opt_new();
  v34 = MBGetDefaultLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    snapshotRefs = [deviceCopy snapshotRefs];
    *buf = 138412546;
    v55 = snapshotRefs;
    v56 = 2112;
    v57 = v18;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "=verifier= Fetching latest domain records for %@ and stashing file lists under %@", buf, 0x16u);

    snapshotRefs2 = [deviceCopy snapshotRefs];
    _MBLog();
  }

  v53 = 0;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1001207B0;
  v49[3] = &unk_1003BF230;
  v36 = v18;
  v50 = v36;
  v37 = dCopy;
  v51 = v37;
  v38 = v33;
  v52 = v38;
  v39 = MBSynchronizeFileListsWithSnapshotDirectory(v36, v37, keyCopy, v32, trackerCopy, 0, &v53, v49);
  v40 = v53;
  if (v39)
  {

    v41 = v38;
  }

  else
  {
    v42 = MBGetDefaultLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v55 = v40;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "=verifier= Failed to synchronize file lists %@", buf, 0xCu);
      _MBLog();
    }

    v43 = v40;
    *errorCopy = v40;

    v41 = 0;
  }

  return v41;
}

- (BOOL)_fetchDomainNamesModifiedInPreviousSnapshotForPersona:(id)persona error:(id *)error
{
  personaCopy = persona;
  snapshotDatabaseDirectory = [personaCopy snapshotDatabaseDirectory];
  v8 = [MBPendingSnapshotDB openOrCreateDatabaseIn:snapshotDatabaseDirectory commitID:@"latest" readonly:1 error:error];

  if (v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100120AA8;
    v13[3] = &unk_1003BF258;
    v9 = objc_opt_new();
    v14 = v9;
    v10 = [v8 enumerateUploadedDomains:error block:v13];

    if (v10)
    {
      [(MBBackupSnapshotIntegrityVerifier *)self setDomainNamesModifiedInPreviousSnapshot:v9];
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    [v8 close:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_verifySnapshotAfterCommitWithPath:(id)path operationTracker:(id)tracker scanMode:(unint64_t)mode enginePolicy:(unint64_t)policy snapshotTracker:(id)snapshotTracker domainManager:(id)manager deviceRecordID:(id)d hmacKey:(id)self0 backupAttemptSummary:(id)self1 error:(id *)self2
{
  pathCopy = path;
  trackerCopy = tracker;
  snapshotTrackerCopy = snapshotTracker;
  managerCopy = manager;
  dCopy = d;
  keyCopy = key;
  summaryCopy = summary;
  if (!error)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier _verifySnapshotAfterCommitWithPath:operationTracker:scanMode:enginePolicy:snapshotTracker:domainManager:deviceRecordID:hmacKey:backupAttemptSummary:error:]", "MBSnapshotIntegrityVerifier.m", 564, "error");
  }

  v22 = summaryCopy;
  v23 = [[MBFileScanner alloc] initWithDelegate:self mode:mode enginePolicy:policy debugContext:0];
  [(MBBackupSnapshotIntegrityVerifier *)self setScanner:v23];

  v24 = [(MBBackupSnapshotIntegrityVerifier *)self _fetchDeviceRecordWithRecordID:dCopy tracker:trackerCopy hmacKey:keyCopy error:error];
  v25 = v24;
  if (v24)
  {
    snapshots = [v24 snapshots];
    lastObject = [snapshots lastObject];
    [(MBBackupSnapshotIntegrityVerifier *)self setSnapshot:lastObject];

    v44 = [(MBBackupSnapshotIntegrityVerifier *)self _synchronizeFileListsForDevice:v25 commitID:@"SnapshotVerification" hmacKey:keyCopy tracker:trackerCopy tempPath:pathCopy error:error];
    if (v44)
    {
      account = [trackerCopy account];
      persona = [account persona];
      v43 = v22;
      v30 = [(MBBackupSnapshotIntegrityVerifier *)self _fetchDomainNamesModifiedInPreviousSnapshotForPersona:persona error:error];

      if (!v30)
      {
        v39 = 0;
        v22 = v43;
        goto LABEL_22;
      }

      [trackerCopy account];
      v31 = v22 = v43;
      v32 = MBBuildBackupCKRecordsDB(v31, trackerCopy, pathCopy, error);

      if (v32)
      {
        v33 = [MBBackupCKRecordsDB openDatabaseIn:pathCopy readOnly:1 error:error];
        if (v33)
        {
          v60 = 0;
          v61 = &v60;
          v62 = 0x3032000000;
          v63 = sub_10011F268;
          v64 = sub_10011F278;
          v65 = 0;
          v59 = 0;
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_100120FE8;
          v48[3] = &unk_1003BF280;
          v49 = managerCopy;
          selfCopy = self;
          v51 = pathCopy;
          v52 = snapshotTrackerCopy;
          v53 = v44;
          v54 = v25;
          v55 = trackerCopy;
          v42 = v33;
          v56 = v42;
          v57 = @"SnapshotVerification";
          v58 = &v60;
          v34 = MBEnumerateDomainNamesForSnapshot(v51, @"SnapshotVerification", &v59, v48);
          v35 = v59;
          v41 = v34;
          if (!v34)
          {
            v36 = MBGetDefaultLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v67 = v35;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "=verifier= Failed to enumerate domain names: %@", buf, 0xCu);
              _MBLog();
            }

            v37 = v35;
            *error = v35;
          }

          [v42 close:0];
          if (v41)
          {
            v38 = v61[5];
            if (v38)
            {
              v39 = 0;
              *error = v38;
            }

            else
            {
              v39 = 1;
            }
          }

          else
          {
            v39 = 0;
          }

          _Block_object_dispose(&v60, 8);
        }

        else
        {
          v39 = 0;
        }

        goto LABEL_22;
      }
    }

    v39 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v39 = 0;
LABEL_23:

  return v39;
}

- (BOOL)_verifyFileListForDomain:(id)domain snapshotDirectory:(id)directory snapshotTacker:(id)tacker domainRecordIDsByDomainName:(id)name device:(id)device persona:(id)persona recordsDB:(id)b commitID:(id)self0 error:(id *)self1
{
  domainCopy = domain;
  directoryCopy = directory;
  tackerCopy = tacker;
  nameCopy = name;
  deviceCopy = device;
  personaCopy = persona;
  bCopy = b;
  dCopy = d;
  if (!error)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier _verifyFileListForDomain:snapshotDirectory:snapshotTacker:domainRecordIDsByDomainName:device:persona:recordsDB:commitID:error:]", "MBSnapshotIntegrityVerifier.m", 641, "error");
  }

  v20 = dCopy;
  delegate = [(MBSnapshotIntegrityVerifier *)self delegate];
  shouldCancelVerification = [delegate shouldCancelVerification];

  if (!shouldCancelVerification)
  {
    name = [domainCopy name];
    if ([domainCopy isLegacyPerAppPlaceholderDomain])
    {
      *error = [MBError errorWithCode:500 format:@"App placeholder domains should not exist in snapshot: %@", name];
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = *error;
        *buf = 138412290;
        v68 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=verifier= Failed to verify due to snapshot format integrity violation: %@", buf, 0xCu);
        v51 = *error;
        _MBLog();
      }
    }

    else
    {
      v25 = [MBFileListDB openOrCreateDatabaseIn:directoryCopy commitID:v20 domainName:name error:error];
      if (v25)
      {
        [(MBBackupSnapshotIntegrityVerifier *)self setCurrentFileList:v25];
        volumeMountPoint = [domainCopy volumeMountPoint];
        v58 = [tackerCopy snapshotMountPointForVolumeMountPoint:volumeMountPoint];

        if (tackerCopy && !v58)
        {
          __assert_rtn("[MBBackupSnapshotIntegrityVerifier _verifyFileListForDomain:snapshotDirectory:snapshotTacker:domainRecordIDsByDomainName:device:persona:recordsDB:commitID:error:]", "MBSnapshotIntegrityVerifier.m", 665, "snapshotPathForDomain");
        }

        v57 = [nameCopy objectForKeyedSubscript:name];
        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v28;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            recordName = [v57 recordName];
            path = [v25 path];
            *buf = 138412802;
            v68 = name;
            v69 = 2112;
            v70 = recordName;
            v71 = 2112;
            v72 = path;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "=verifier= Starting verification for domain %@ with recordID %@ using fetched file list at %@", buf, 0x20u);
          }

          recordName2 = [v57 recordName];
          path2 = [v25 path];
          _MBLog();
        }

        scanner = [(MBBackupSnapshotIntegrityVerifier *)self scanner];
        v59 = [scanner scanDomain:domainCopy snapshotMountPoint:v58];

        if (v59)
        {
          v34 = MBGetDefaultLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = v34;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              recordName3 = [v57 recordName];
              path3 = [v25 path];
              *buf = 138413058;
              v68 = name;
              v69 = 2112;
              v70 = recordName3;
              v71 = 2112;
              v72 = path3;
              v73 = 2112;
              v74 = v59;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "=verifier= Failed to verify domain %@ with recordID %@ using fetched file list at %@: %@", buf, 0x2Au);
            }

            recordName4 = [v57 recordName];
            path4 = [v25 path];
            _MBLog();
          }

          v39 = v59;
          v24 = 0;
          v40 = v59;
          *error = v59;
        }

        else
        {
          v66 = 0;
          assetIDPrefix = [deviceCopy assetIDPrefix];
          v44 = [(MBBackupSnapshotIntegrityVerifier *)self _verifyAssetRecordIDsAreReferencedForDomain:domainCopy assetIDPrefix:assetIDPrefix recordsDB:bCopy verifiedAssetCount:&v66 error:error];

          if (v44)
          {
            if ([deviceCopy shouldRepairDomain:name] && !MBShouldSendInvalidChecksumForDomain(name))
            {
              v50 = [NSString stringWithFormat:@"Found server-detected checksum mismatch for %@", name];
              [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v50];

              v45 = [(MBBackupSnapshotIntegrityVerifier *)self _debugInfoForOpenedFileList:personaCopy];
              [MBError errorWithCode:500 format:@"Server-detected checksum mismatch for %@ debug[%@]", name, v45];
              *error = v24 = 0;
            }

            else
            {
              v45 = MBGetDefaultLog();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                v45 = v45;
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                {
                  v46 = v66;
                  recordName5 = [v57 recordName];
                  *buf = 138412802;
                  v68 = name;
                  v69 = 2048;
                  v70 = v46;
                  v71 = 2112;
                  v72 = recordName5;
                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "=verifier= Finished backup verification for domain %@ with %llu assets and recordID %@", buf, 0x20u);
                }

                recordName6 = [v57 recordName];
                _MBLog();
              }

              v24 = 1;
            }
          }

          else
          {
            v45 = MBGetDefaultLog();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              v48 = *error;
              *buf = 138412546;
              v68 = name;
              v69 = 2112;
              v70 = v48;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "=verifier= Failed to verify asset references exist for domain %@: %@", buf, 0x16u);
              v53 = *error;
              _MBLog();
            }

            v24 = 0;
          }

          v40 = 0;
        }

        [(MBBackupSnapshotIntegrityVerifier *)self setCurrentFileList:0];
        [v25 close:0];
        goto LABEL_37;
      }

      v41 = MBGetDefaultLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = *error;
        *buf = 138412546;
        v68 = name;
        v69 = 2112;
        v70 = v42;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "=verifier= Failed to get file list for %@: %@", buf, 0x16u);
        v52 = *error;
        _MBLog();
      }

      v25 = 0;
    }

    v24 = 0;
LABEL_37:

    goto LABEL_38;
  }

  scanner2 = [(MBBackupSnapshotIntegrityVerifier *)self scanner];
  [scanner2 cancel];

  [objc_opt_class() _cancellationError];
  *error = v24 = 0;
LABEL_38:

  return v24 & 1;
}

- (BOOL)_verifyAssetRecordIDsAreReferencedForDomain:(id)domain assetIDPrefix:(id)prefix recordsDB:(id)b verifiedAssetCount:(unint64_t *)count error:(id *)error
{
  domainCopy = domain;
  prefixCopy = prefix;
  bCopy = b;
  if (!count)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier _verifyAssetRecordIDsAreReferencedForDomain:assetIDPrefix:recordsDB:verifiedAssetCount:error:]", "MBSnapshotIntegrityVerifier.m", 705, "verifiedAssetCount");
  }

  if (!error)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier _verifyAssetRecordIDsAreReferencedForDomain:assetIDPrefix:recordsDB:verifiedAssetCount:error:]", "MBSnapshotIntegrityVerifier.m", 706, "error");
  }

  v15 = bCopy;
  currentFileList = [(MBBackupSnapshotIntegrityVerifier *)self currentFileList];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100121B28;
  v22[3] = &unk_1003BF2A8;
  v17 = prefixCopy;
  v23 = v17;
  v18 = v15;
  v24 = v18;
  v19 = domainCopy;
  v25 = v19;
  selfCopy = self;
  v27 = &v28;
  v20 = [currentFileList enumerateAssetRecordIdSuffixForNonEmptyFiles:error block:v22];
  *count += v29[3];

  _Block_object_dispose(&v28, 8);
  return v20;
}

- (id)_verifyAssetMetadata:(id)metadata file:(id)file localPath:(id)path
{
  metadataCopy = metadata;
  fileCopy = file;
  pathCopy = path;
  assetMetadata = [metadataCopy assetMetadata];

  if (!assetMetadata)
  {
    domain = [fileCopy domain];
    name = [domain name];
    relativePath = [fileCopy relativePath];
    v22 = [NSString stringWithFormat:@"Nil asset metadata for %@:%@", name, relativePath];
    [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v22];

    v23 = [MBError errorWithCode:500 path:pathCopy format:@"Nil asset metadata"];
    goto LABEL_21;
  }

  assetMetadata2 = [metadataCopy assetMetadata];
  assetType = [assetMetadata2 assetType];

  if (![metadataCopy size])
  {
    if (assetType == 4)
    {
LABEL_14:
      v23 = 0;
      goto LABEL_21;
    }

    v14 = MBStringForAssetType(4);
    domain2 = [fileCopy domain];
    name2 = [domain2 name];
    relativePath2 = [fileCopy relativePath];
    v18 = [NSString stringWithFormat:@"Invalid asset type (%@) for empty file %@:%@", v14, name2, relativePath2];

    [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v18];
    [MBError errorWithCode:500 path:pathCopy format:@"Invalid asset type for 0-byte file: %@", v14];
    goto LABEL_9;
  }

  if (assetType == 4)
  {
    v14 = MBStringForAssetType(4);
    domain3 = [fileCopy domain];
    name3 = [domain3 name];
    relativePath3 = [fileCopy relativePath];
    v18 = [NSString stringWithFormat:@"Invalid asset type (%@) for non-empty file %@:%@", v14, name3, relativePath3];

    [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v18];
    [MBError errorWithCode:500 path:pathCopy format:@"Invalid asset type for non-empty file: %@", v14];
    v23 = LABEL_9:;

    goto LABEL_20;
  }

  assetMetadata3 = [metadataCopy assetMetadata];
  recordIDSuffix = [assetMetadata3 recordIDSuffix];

  if (recordIDSuffix)
  {
    assetMetadata4 = [metadataCopy assetMetadata];
    assetSignature = [assetMetadata4 assetSignature];

    if (assetSignature)
    {
      assetMetadata5 = [metadataCopy assetMetadata];
      assetType2 = [assetMetadata5 assetType];

      if (assetType2 != 2)
      {
        goto LABEL_14;
      }

      assetMetadata6 = [metadataCopy assetMetadata];
      encryptionKey = [assetMetadata6 encryptionKey];

      if (encryptionKey)
      {
        goto LABEL_14;
      }

      domain4 = [fileCopy domain];
      name4 = [domain4 name];
      relativePath4 = [fileCopy relativePath];
      [NSString stringWithFormat:@"Nil encryption key for %@:%@", name4, relativePath4];
    }

    else
    {
      domain4 = [fileCopy domain];
      name4 = [domain4 name];
      relativePath4 = [fileCopy relativePath];
      [NSString stringWithFormat:@"Nil signature for %@:%@", name4, relativePath4];
    }
    v14 = ;

    [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v14];
    v38 = @"Nil signature";
  }

  else
  {
    domain5 = [fileCopy domain];
    name5 = [domain5 name];
    relativePath5 = [fileCopy relativePath];
    v14 = [NSString stringWithFormat:@"Nil recordID suffix for %@:%@", name5, relativePath5];

    [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v14];
    v38 = @"Nil recordID suffix";
  }

  v23 = [MBError errorWithCode:500 path:pathCopy format:v38];
LABEL_20:

LABEL_21:

  return v23;
}

- (id)_verifyBackupMetadataForFile:(id)file localPath:(id)path fileList:(id)list
{
  fileCopy = file;
  pathCopy = path;
  listCopy = list;
  relativePath = [fileCopy relativePath];
  v35 = 0;
  v12 = [(MBSnapshotIntegrityVerifier *)self _fetchMetadataFromFetchedFileList:listCopy relativePath:relativePath metadata:&v35];

  v13 = v35;
  if (v12)
  {
    v14 = v12;
    v15 = v14;
    goto LABEL_15;
  }

  lastModified = [fileCopy lastModified];
  absolutePath = [fileCopy absolutePath];
  v33 = 0;
  v17 = [(MBSnapshotIntegrityVerifier *)self _fetchMetadataFromDiskForPath:absolutePath modifiedDate:&lastModified metadata:&v33];
  v18 = v33;

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    if (([v18 mode] & 0xF000) != 0x8000 || (-[MBBackupSnapshotIntegrityVerifier _verifyAssetMetadata:file:localPath:](self, "_verifyAssetMetadata:file:localPath:", v13, fileCopy, pathCopy), (v20 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      domain = [fileCopy domain];
      v22 = [MBSnapshotIntegrityVerifier _differencesBetweenCloudMetadata:v13 localMetadata:v18 domain:domain path:pathCopy isBackup:1];

      if (!v22)
      {
        goto LABEL_12;
      }

      domainNamesModifiedInPreviousSnapshot = [(MBBackupSnapshotIntegrityVerifier *)self domainNamesModifiedInPreviousSnapshot];
      domain2 = [fileCopy domain];
      name = [domain2 name];
      v26 = [domainNamesModifiedInPreviousSnapshot containsObject:name];

      if (v26)
      {
        typeString = [fileCopy typeString];
        domain3 = [fileCopy domain];
        name2 = [domain3 name];
        v29 = [v22 componentsJoinedByString:{@", "}];
        v30 = [NSString stringWithFormat:@"Metadata mismatch for %@ %@:%@ (local) %@ vs (cloud) %@ [%@]", typeString, name2, fileCopy, v18, v13, v29];

        [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v30];
        v15 = [MBError errorWithCode:500 path:pathCopy format:@"Metadata mismatch"];
      }

      else
      {
LABEL_12:
        v15 = 0;
      }

      v14 = 0;
      goto LABEL_14;
    }

    v19 = v20;
  }

  v14 = v19;
  v15 = v19;
LABEL_14:

LABEL_15:

  return v15;
}

- (id)_debugInfoForOpenedFileList:(id)list
{
  listCopy = list;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v5 = objc_opt_new();
  currentFileList = [(MBBackupSnapshotIntegrityVerifier *)self currentFileList];
  v39 = 0;
  v7 = [currentFileList fetchFileListStats:&v40 error:&v39];
  v8 = v39;

  if (v7)
  {
    [v5 appendFormat:@"f=%llu a=%llu e=%llu", *(&v40 + 1), v40, v41];
  }

  else
  {
    domain = [v8 domain];
    [v5 appendFormat:@"ERROR_NO_FILE_LIST_STATS (%@/%lu)", domain, objc_msgSend(v8, "code")];
  }

  snapshotDatabaseDirectory = [listCopy snapshotDatabaseDirectory];
  v38 = v8;
  v11 = [MBPendingSnapshotDB openOrCreateDatabaseIn:snapshotDatabaseDirectory commitID:@"latest" readonly:1 error:&v38];
  v12 = v38;

  if (v11)
  {
    *&v32 = 0;
    v37 = 0;
    currentFileList2 = [(MBBackupSnapshotIntegrityVerifier *)self currentFileList];
    domainName = [currentFileList2 domainName];
    v36 = v12;
    v15 = [v11 countAssetRecordsToCommitForDomain:domainName addedOrModifiedCount:&v32 deletedCount:&v37 error:&v36];
    v16 = v36;

    if (v15)
    {
      [v5 appendFormat:@"| u=%llu d=%llu", v32, v37];
    }

    else
    {
      domain2 = [v16 domain];
      [v5 appendFormat:@"| ERROR_NO_PENDING_SNAPSHOT_STATS (%@/%lu)", domain2, objc_msgSend(v16, "code")];
    }

    [v11 close:0];
  }

  else
  {
    domain3 = [v12 domain];
    [v5 appendFormat:@"| ERROR_OPEN_PENDING_SNAPSHOT_DB (%@/%lu)", domain3, objc_msgSend(v12, "code")];

    v16 = v12;
  }

  attemptSummary = [(MBSnapshotIntegrityVerifier *)self attemptSummary];
  previousSnapshotCommitID = [attemptSummary previousSnapshotCommitID];

  if (previousSnapshotCommitID)
  {
    snapshotDatabaseDirectory2 = [listCopy snapshotDatabaseDirectory];
    currentFileList3 = [(MBBackupSnapshotIntegrityVerifier *)self currentFileList];
    domainName2 = [currentFileList3 domainName];
    v35 = 0;
    v24 = [MBFileListDB openDatabaseIn:snapshotDatabaseDirectory2 commitID:previousSnapshotCommitID domainName:domainName2 error:&v35];
    v25 = v35;

    if (v24)
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      v31 = v16;
      v26 = [v24 fetchFileListStats:&v32 error:&v31];
      v27 = v31;

      if (v26)
      {
        [v5 appendFormat:@"| f=%llu a=%llu e=%llu", *(&v32 + 1), v32, v33];
      }

      else
      {
        domain4 = [v27 domain];
        [v5 appendFormat:@"| ERROR_NO_FILE_LIST_STATS (%@/%lu)", domain4, objc_msgSend(v27, "code")];
      }

      [v24 close:0];
    }

    else
    {
      if (([MBError isError:v25 withCode:4]& 1) != 0)
      {
        [v5 appendFormat:@"| NO_PREVIOUS_FILE_LIST"];
      }

      else
      {
        domain5 = [v16 domain];
        [v5 appendFormat:@"| ERROR_OPEN_PREVIOUS_FILE_LIST (%@/%lu)", domain5, objc_msgSend(v16, "code")];
      }

      v27 = v16;
    }

    v16 = v27;
  }

  else
  {
    [v5 appendFormat:@"| NO_PREVIOUS_COMMIT_ID"];
  }

  return v5;
}

- (id)fileScanner:(id)scanner didFindFile:(id)file
{
  scannerCopy = scanner;
  fileCopy = file;
  if ([fileCopy isTopLevelDirectoryToExcludeFromiCloud])
  {
    v8 = 0;
  }

  else
  {
    currentFileList = [(MBBackupSnapshotIntegrityVerifier *)self currentFileList];
    if (!currentFileList)
    {
      __assert_rtn("[MBBackupSnapshotIntegrityVerifier fileScanner:didFindFile:]", "MBSnapshotIntegrityVerifier.m", 869, "currentDB");
    }

    v10 = currentFileList;
    absolutePath = [fileCopy absolutePath];
    domainName = [v10 domainName];
    domain = [fileCopy domain];
    name = [domain name];
    v15 = [domainName isEqualToString:name];

    if (v15)
    {
      v8 = [(MBBackupSnapshotIntegrityVerifier *)self _verifyBackupMetadataForFile:fileCopy localPath:absolutePath fileList:v10];
    }

    else
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        domainName2 = [v10 domainName];
        domain2 = [fileCopy domain];
        name2 = [domain2 name];
        *buf = 138412546;
        v28 = domainName2;
        v29 = 2112;
        v30 = name2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "=verifier= Inconsistent domain names between file list and file found locally %@ vs %@", buf, 0x16u);

        domainName3 = [v10 domainName];
        domain3 = [fileCopy domain];
        name3 = [domain3 name];
        _MBLog();
      }

      domainName4 = [v10 domainName];
      domain4 = [fileCopy domain];
      name4 = [domain4 name];
      v8 = [MBError errorWithCode:500 path:absolutePath format:@"Inconsistent domain name between file list and file found locally %@ vs %@", domainName4, name4];
    }
  }

  return v8;
}

@end