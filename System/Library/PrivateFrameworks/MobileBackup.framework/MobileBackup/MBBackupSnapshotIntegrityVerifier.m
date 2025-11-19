@interface MBBackupSnapshotIntegrityVerifier
+ (BOOL)shouldRunVerifierWithBackupPolicy:(int64_t)a3 backupReason:(int64_t)a4 snapshotFormat:(int64_t)a5 account:(id)a6;
- (BOOL)_fetchDomainNamesModifiedInPreviousSnapshotForPersona:(id)a3 error:(id *)a4;
- (BOOL)_verifyAssetRecordIDsAreReferencedForDomain:(id)a3 assetIDPrefix:(id)a4 recordsDB:(id)a5 verifiedAssetCount:(unint64_t *)a6 error:(id *)a7;
- (BOOL)_verifyFileListForDomain:(id)a3 snapshotDirectory:(id)a4 snapshotTacker:(id)a5 domainRecordIDsByDomainName:(id)a6 device:(id)a7 persona:(id)a8 recordsDB:(id)a9 commitID:(id)a10 error:(id *)a11;
- (BOOL)_verifySnapshotAfterCommitWithPath:(id)a3 operationTracker:(id)a4 scanMode:(unint64_t)a5 enginePolicy:(unint64_t)a6 snapshotTracker:(id)a7 domainManager:(id)a8 deviceRecordID:(id)a9 hmacKey:(id)a10 backupAttemptSummary:(id)a11 error:(id *)a12;
- (BOOL)verifySnapshotAfterCommitWithOperationTracker:(id)a3 scanMode:(unint64_t)a4 enginePolicy:(unint64_t)a5 snapshotTracker:(id)a6 domainManager:(id)a7 deviceRecordID:(id)a8 hmacKey:(id)a9 backupAttemptSummary:(id)a10 duration:(double *)a11 error:(id *)a12;
- (MBBackupSnapshotIntegrityVerifier)initWithDelegate:(id)a3;
- (id)_debugInfoForOpenedFileList:(id)a3;
- (id)_fetchDeviceRecordWithRecordID:(id)a3 tracker:(id)a4 hmacKey:(id)a5 error:(id *)a6;
- (id)_synchronizeFileListsForDevice:(id)a3 commitID:(id)a4 hmacKey:(id)a5 tracker:(id)a6 tempPath:(id)a7 error:(id *)a8;
- (id)_verifyAssetMetadata:(id)a3 file:(id)a4 localPath:(id)a5;
- (id)_verifyBackupMetadataForFile:(id)a3 localPath:(id)a4 fileList:(id)a5;
- (id)fileScanner:(id)a3 didFindFile:(id)a4;
@end

@implementation MBBackupSnapshotIntegrityVerifier

- (MBBackupSnapshotIntegrityVerifier)initWithDelegate:(id)a3
{
  v8.receiver = self;
  v8.super_class = MBBackupSnapshotIntegrityVerifier;
  v3 = [(MBSnapshotIntegrityVerifier *)&v8 _initWithDelegate:a3];
  v4 = +[MBBehaviorOptions sharedOptions];
  v5 = [v4 backupPathsToFailVerifyingRegex];
  v6 = [MBErrorInjector errorInjectorForRegex:v5 maxFailureCount:0];
  [(MBSnapshotIntegrityVerifier *)v3 setErrorInjector:v6];

  return v3;
}

+ (BOOL)shouldRunVerifierWithBackupPolicy:(int64_t)a3 backupReason:(int64_t)a4 snapshotFormat:(int64_t)a5 account:(id)a6
{
  v7 = a6;
  v8 = MBSnapshotFormatContainsFileLists();
  LOBYTE(v9) = 0;
  if (a3 != 1 && v8)
  {
    v10 = +[MBBehaviorOptions sharedOptions];
    v11 = [v10 verifySnapshotAfterCommit];

    if (v11)
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
      v9 = [v12 backupVerificationEnabledForAccount:v7];

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

- (BOOL)verifySnapshotAfterCommitWithOperationTracker:(id)a3 scanMode:(unint64_t)a4 enginePolicy:(unint64_t)a5 snapshotTracker:(id)a6 domainManager:(id)a7 deviceRecordID:(id)a8 hmacKey:(id)a9 backupAttemptSummary:(id)a10 duration:(double *)a11 error:(id *)a12
{
  v18 = a3;
  v39 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if (!a12)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier verifySnapshotAfterCommitWithOperationTracker:scanMode:enginePolicy:snapshotTracker:domainManager:deviceRecordID:hmacKey:backupAttemptSummary:duration:error:]", "MBSnapshotIntegrityVerifier.m", 436, "error");
  }

  if (!v18)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier verifySnapshotAfterCommitWithOperationTracker:scanMode:enginePolicy:snapshotTracker:domainManager:deviceRecordID:hmacKey:backupAttemptSummary:duration:error:]", "MBSnapshotIntegrityVerifier.m", 437, "tracker");
  }

  if (!v20)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier verifySnapshotAfterCommitWithOperationTracker:scanMode:enginePolicy:snapshotTracker:domainManager:deviceRecordID:hmacKey:backupAttemptSummary:duration:error:]", "MBSnapshotIntegrityVerifier.m", 438, "recordID");
  }

  if (!v21)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier verifySnapshotAfterCommitWithOperationTracker:scanMode:enginePolicy:snapshotTracker:domainManager:deviceRecordID:hmacKey:backupAttemptSummary:duration:error:]", "MBSnapshotIntegrityVerifier.m", 439, "hmacKey");
  }

  if (!v19)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier verifySnapshotAfterCommitWithOperationTracker:scanMode:enginePolicy:snapshotTracker:domainManager:deviceRecordID:hmacKey:backupAttemptSummary:duration:error:]", "MBSnapshotIntegrityVerifier.m", 440, "domainManager");
  }

  v23 = v22;
  if (!v22)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier verifySnapshotAfterCommitWithOperationTracker:scanMode:enginePolicy:snapshotTracker:domainManager:deviceRecordID:hmacKey:backupAttemptSummary:duration:error:]", "MBSnapshotIntegrityVerifier.m", 441, "attemptSummary");
  }

  if (!a11)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier verifySnapshotAfterCommitWithOperationTracker:scanMode:enginePolicy:snapshotTracker:domainManager:deviceRecordID:hmacKey:backupAttemptSummary:duration:error:]", "MBSnapshotIntegrityVerifier.m", 442, "duration");
  }

  v40 = v18;
  [(MBSnapshotIntegrityVerifier *)self setAttemptSummary:v22];
  v24 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:@"/private/var/mobile" identifiedBy:@"SnapshotVerification" error:a12];
  if (v24)
  {
    v38 = v20;
    v25 = v19;
    v26 = a5;
    Current = CFAbsoluteTimeGetCurrent();
    v28 = MBGetDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=verifier= Starting snapshot verification after commit", buf, 2u);
      _MBLog();
    }

    v29 = [v24 makeTemporaryFilePath];
    v30 = self;
    v31 = v39;
    v32 = v26;
    v19 = v25;
    v33 = [(MBBackupSnapshotIntegrityVerifier *)v30 _verifySnapshotAfterCommitWithPath:v29 operationTracker:v40 scanMode:a4 enginePolicy:v32 snapshotTracker:v39 domainManager:v25 deviceRecordID:v38 hmacKey:v21 backupAttemptSummary:v23 error:a12];
    [v24 dispose];
    *a11 = CFAbsoluteTimeGetCurrent() - Current;
    v34 = MBGetDefaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *a11;
      *buf = 134217984;
      v42 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "=verifier= Finished snapshot verification in %.2fs", buf, 0xCu);
      v37 = *a11;
      _MBLog();
    }

    v20 = v38;
  }

  else
  {
    v29 = MBGetDefaultLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "=verifier= Failed to create a temp directory", buf, 2u);
      _MBLog();
    }

    v33 = 0;
    v31 = v39;
  }

  return v33;
}

- (id)_fetchDeviceRecordWithRecordID:(id)a3 tracker:(id)a4 hmacKey:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
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
  [v10 fetchRecordWithID:v9 completion:v20];
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
    if (a6)
    {
      *a6 = v31[5];
    }
  }

  else
  {
    v16 = [MBCKDevice alloc];
    v17 = [(MBCKModel *)v16 initWithRecord:v25[5] cache:0];
    [(MBCKDevice *)v17 setHmacKey:v11];
    if ([(MBCKDevice *)v17 fetchSnapshotsWithOperationTracker:v10 error:a6])
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

- (id)_synchronizeFileListsForDevice:(id)a3 commitID:(id)a4 hmacKey:(id)a5 tracker:(id)a6 tempPath:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!a8)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier _synchronizeFileListsForDevice:commitID:hmacKey:tracker:tempPath:error:]", "MBSnapshotIntegrityVerifier.m", 510, "error");
  }

  v18 = v17;
  v48 = a8;
  v19 = MBGetDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    [v13 recordID];
    v21 = v20 = v15;
    v22 = [v21 recordName];
    [v13 snapshots];
    v23 = v47 = v14;
    v24 = [v23 valueForKey:@"snapshotID"];
    [v24 componentsJoinedByString:{@", "}];
    v26 = v25 = v16;
    *buf = 138412546;
    v55 = v22;
    v56 = 2112;
    v57 = v26;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "=verifier= Performing domain reference replay for device %@ with snapshots [%@]", buf, 0x16u);

    v15 = v20;
    v27 = [v13 recordID];
    v28 = [v27 recordName];
    v29 = [v13 snapshots];
    v30 = [v29 valueForKey:@"snapshotID"];
    v46 = [v30 componentsJoinedByString:{@", "}];
    _MBLog();

    v14 = v47;
    v16 = v25;
  }

  v31 = [v13 snapshots];
  v32 = MBGetLatestDomainRecordReferencesFromSnapshots(v31);

  v33 = objc_opt_new();
  v34 = MBGetDefaultLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = [v13 snapshotRefs];
    *buf = 138412546;
    v55 = v35;
    v56 = 2112;
    v57 = v18;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "=verifier= Fetching latest domain records for %@ and stashing file lists under %@", buf, 0x16u);

    v45 = [v13 snapshotRefs];
    _MBLog();
  }

  v53 = 0;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1001207B0;
  v49[3] = &unk_1003BF230;
  v36 = v18;
  v50 = v36;
  v37 = v14;
  v51 = v37;
  v38 = v33;
  v52 = v38;
  v39 = MBSynchronizeFileListsWithSnapshotDirectory(v36, v37, v15, v32, v16, 0, &v53, v49);
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
    *v48 = v40;

    v41 = 0;
  }

  return v41;
}

- (BOOL)_fetchDomainNamesModifiedInPreviousSnapshotForPersona:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 snapshotDatabaseDirectory];
  v8 = [MBPendingSnapshotDB openOrCreateDatabaseIn:v7 commitID:@"latest" readonly:1 error:a4];

  if (v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100120AA8;
    v13[3] = &unk_1003BF258;
    v9 = objc_opt_new();
    v14 = v9;
    v10 = [v8 enumerateUploadedDomains:a4 block:v13];

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

- (BOOL)_verifySnapshotAfterCommitWithPath:(id)a3 operationTracker:(id)a4 scanMode:(unint64_t)a5 enginePolicy:(unint64_t)a6 snapshotTracker:(id)a7 domainManager:(id)a8 deviceRecordID:(id)a9 hmacKey:(id)a10 backupAttemptSummary:(id)a11 error:(id *)a12
{
  v45 = a3;
  v18 = a4;
  v46 = a7;
  v47 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  if (!a12)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier _verifySnapshotAfterCommitWithPath:operationTracker:scanMode:enginePolicy:snapshotTracker:domainManager:deviceRecordID:hmacKey:backupAttemptSummary:error:]", "MBSnapshotIntegrityVerifier.m", 564, "error");
  }

  v22 = v21;
  v23 = [[MBFileScanner alloc] initWithDelegate:self mode:a5 enginePolicy:a6 debugContext:0];
  [(MBBackupSnapshotIntegrityVerifier *)self setScanner:v23];

  v24 = [(MBBackupSnapshotIntegrityVerifier *)self _fetchDeviceRecordWithRecordID:v19 tracker:v18 hmacKey:v20 error:a12];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 snapshots];
    v27 = [v26 lastObject];
    [(MBBackupSnapshotIntegrityVerifier *)self setSnapshot:v27];

    v44 = [(MBBackupSnapshotIntegrityVerifier *)self _synchronizeFileListsForDevice:v25 commitID:@"SnapshotVerification" hmacKey:v20 tracker:v18 tempPath:v45 error:a12];
    if (v44)
    {
      v28 = [v18 account];
      v29 = [v28 persona];
      v43 = v22;
      v30 = [(MBBackupSnapshotIntegrityVerifier *)self _fetchDomainNamesModifiedInPreviousSnapshotForPersona:v29 error:a12];

      if (!v30)
      {
        v39 = 0;
        v22 = v43;
        goto LABEL_22;
      }

      [v18 account];
      v31 = v22 = v43;
      v32 = MBBuildBackupCKRecordsDB(v31, v18, v45, a12);

      if (v32)
      {
        v33 = [MBBackupCKRecordsDB openDatabaseIn:v45 readOnly:1 error:a12];
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
          v49 = v47;
          v50 = self;
          v51 = v45;
          v52 = v46;
          v53 = v44;
          v54 = v25;
          v55 = v18;
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
            *a12 = v35;
          }

          [v42 close:0];
          if (v41)
          {
            v38 = v61[5];
            if (v38)
            {
              v39 = 0;
              *a12 = v38;
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

- (BOOL)_verifyFileListForDomain:(id)a3 snapshotDirectory:(id)a4 snapshotTacker:(id)a5 domainRecordIDsByDomainName:(id)a6 device:(id)a7 persona:(id)a8 recordsDB:(id)a9 commitID:(id)a10 error:(id *)a11
{
  v17 = a3;
  v65 = a4;
  v18 = a5;
  v64 = a6;
  v63 = a7;
  v61 = a8;
  v62 = a9;
  v19 = a10;
  if (!a11)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier _verifyFileListForDomain:snapshotDirectory:snapshotTacker:domainRecordIDsByDomainName:device:persona:recordsDB:commitID:error:]", "MBSnapshotIntegrityVerifier.m", 641, "error");
  }

  v20 = v19;
  v21 = [(MBSnapshotIntegrityVerifier *)self delegate];
  v22 = [v21 shouldCancelVerification];

  if (!v22)
  {
    v60 = [v17 name];
    if ([v17 isLegacyPerAppPlaceholderDomain])
    {
      *a11 = [MBError errorWithCode:500 format:@"App placeholder domains should not exist in snapshot: %@", v60];
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = *a11;
        *buf = 138412290;
        v68 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=verifier= Failed to verify due to snapshot format integrity violation: %@", buf, 0xCu);
        v51 = *a11;
        _MBLog();
      }
    }

    else
    {
      v25 = [MBFileListDB openOrCreateDatabaseIn:v65 commitID:v20 domainName:v60 error:a11];
      if (v25)
      {
        [(MBBackupSnapshotIntegrityVerifier *)self setCurrentFileList:v25];
        v27 = [v17 volumeMountPoint];
        v58 = [v18 snapshotMountPointForVolumeMountPoint:v27];

        if (v18 && !v58)
        {
          __assert_rtn("[MBBackupSnapshotIntegrityVerifier _verifyFileListForDomain:snapshotDirectory:snapshotTacker:domainRecordIDsByDomainName:device:persona:recordsDB:commitID:error:]", "MBSnapshotIntegrityVerifier.m", 665, "snapshotPathForDomain");
        }

        v57 = [v64 objectForKeyedSubscript:v60];
        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v28;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [v57 recordName];
            v31 = [v25 path];
            *buf = 138412802;
            v68 = v60;
            v69 = 2112;
            v70 = v30;
            v71 = 2112;
            v72 = v31;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "=verifier= Starting verification for domain %@ with recordID %@ using fetched file list at %@", buf, 0x20u);
          }

          v32 = [v57 recordName];
          v54 = [v25 path];
          _MBLog();
        }

        v33 = [(MBBackupSnapshotIntegrityVerifier *)self scanner];
        v59 = [v33 scanDomain:v17 snapshotMountPoint:v58];

        if (v59)
        {
          v34 = MBGetDefaultLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = v34;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v36 = [v57 recordName];
              v37 = [v25 path];
              *buf = 138413058;
              v68 = v60;
              v69 = 2112;
              v70 = v36;
              v71 = 2112;
              v72 = v37;
              v73 = 2112;
              v74 = v59;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "=verifier= Failed to verify domain %@ with recordID %@ using fetched file list at %@: %@", buf, 0x2Au);
            }

            v38 = [v57 recordName];
            v55 = [v25 path];
            _MBLog();
          }

          v39 = v59;
          v24 = 0;
          v40 = v59;
          *a11 = v59;
        }

        else
        {
          v66 = 0;
          v43 = [v63 assetIDPrefix];
          v44 = [(MBBackupSnapshotIntegrityVerifier *)self _verifyAssetRecordIDsAreReferencedForDomain:v17 assetIDPrefix:v43 recordsDB:v62 verifiedAssetCount:&v66 error:a11];

          if (v44)
          {
            if ([v63 shouldRepairDomain:v60] && !MBShouldSendInvalidChecksumForDomain(v60))
            {
              v50 = [NSString stringWithFormat:@"Found server-detected checksum mismatch for %@", v60];
              [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v50];

              v45 = [(MBBackupSnapshotIntegrityVerifier *)self _debugInfoForOpenedFileList:v61];
              [MBError errorWithCode:500 format:@"Server-detected checksum mismatch for %@ debug[%@]", v60, v45];
              *a11 = v24 = 0;
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
                  v47 = [v57 recordName];
                  *buf = 138412802;
                  v68 = v60;
                  v69 = 2048;
                  v70 = v46;
                  v71 = 2112;
                  v72 = v47;
                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "=verifier= Finished backup verification for domain %@ with %llu assets and recordID %@", buf, 0x20u);
                }

                v56 = [v57 recordName];
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
              v48 = *a11;
              *buf = 138412546;
              v68 = v60;
              v69 = 2112;
              v70 = v48;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "=verifier= Failed to verify asset references exist for domain %@: %@", buf, 0x16u);
              v53 = *a11;
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
        v42 = *a11;
        *buf = 138412546;
        v68 = v60;
        v69 = 2112;
        v70 = v42;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "=verifier= Failed to get file list for %@: %@", buf, 0x16u);
        v52 = *a11;
        _MBLog();
      }

      v25 = 0;
    }

    v24 = 0;
LABEL_37:

    goto LABEL_38;
  }

  v23 = [(MBBackupSnapshotIntegrityVerifier *)self scanner];
  [v23 cancel];

  [objc_opt_class() _cancellationError];
  *a11 = v24 = 0;
LABEL_38:

  return v24 & 1;
}

- (BOOL)_verifyAssetRecordIDsAreReferencedForDomain:(id)a3 assetIDPrefix:(id)a4 recordsDB:(id)a5 verifiedAssetCount:(unint64_t *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!a6)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier _verifyAssetRecordIDsAreReferencedForDomain:assetIDPrefix:recordsDB:verifiedAssetCount:error:]", "MBSnapshotIntegrityVerifier.m", 705, "verifiedAssetCount");
  }

  if (!a7)
  {
    __assert_rtn("[MBBackupSnapshotIntegrityVerifier _verifyAssetRecordIDsAreReferencedForDomain:assetIDPrefix:recordsDB:verifiedAssetCount:error:]", "MBSnapshotIntegrityVerifier.m", 706, "error");
  }

  v15 = v14;
  v16 = [(MBBackupSnapshotIntegrityVerifier *)self currentFileList];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100121B28;
  v22[3] = &unk_1003BF2A8;
  v17 = v13;
  v23 = v17;
  v18 = v15;
  v24 = v18;
  v19 = v12;
  v25 = v19;
  v26 = self;
  v27 = &v28;
  v20 = [v16 enumerateAssetRecordIdSuffixForNonEmptyFiles:a7 block:v22];
  *a6 += v29[3];

  _Block_object_dispose(&v28, 8);
  return v20;
}

- (id)_verifyAssetMetadata:(id)a3 file:(id)a4 localPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 assetMetadata];

  if (!v11)
  {
    v19 = [v9 domain];
    v20 = [v19 name];
    v21 = [v9 relativePath];
    v22 = [NSString stringWithFormat:@"Nil asset metadata for %@:%@", v20, v21];
    [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v22];

    v23 = [MBError errorWithCode:500 path:v10 format:@"Nil asset metadata"];
    goto LABEL_21;
  }

  v12 = [v8 assetMetadata];
  v13 = [v12 assetType];

  if (![v8 size])
  {
    if (v13 == 4)
    {
LABEL_14:
      v23 = 0;
      goto LABEL_21;
    }

    v14 = MBStringForAssetType(4);
    v24 = [v9 domain];
    v25 = [v24 name];
    v26 = [v9 relativePath];
    v18 = [NSString stringWithFormat:@"Invalid asset type (%@) for empty file %@:%@", v14, v25, v26];

    [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v18];
    [MBError errorWithCode:500 path:v10 format:@"Invalid asset type for 0-byte file: %@", v14];
    goto LABEL_9;
  }

  if (v13 == 4)
  {
    v14 = MBStringForAssetType(4);
    v15 = [v9 domain];
    v16 = [v15 name];
    v17 = [v9 relativePath];
    v18 = [NSString stringWithFormat:@"Invalid asset type (%@) for non-empty file %@:%@", v14, v16, v17];

    [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v18];
    [MBError errorWithCode:500 path:v10 format:@"Invalid asset type for non-empty file: %@", v14];
    v23 = LABEL_9:;

    goto LABEL_20;
  }

  v27 = [v8 assetMetadata];
  v28 = [v27 recordIDSuffix];

  if (v28)
  {
    v29 = [v8 assetMetadata];
    v30 = [v29 assetSignature];

    if (v30)
    {
      v31 = [v8 assetMetadata];
      v32 = [v31 assetType];

      if (v32 != 2)
      {
        goto LABEL_14;
      }

      v33 = [v8 assetMetadata];
      v34 = [v33 encryptionKey];

      if (v34)
      {
        goto LABEL_14;
      }

      v39 = [v9 domain];
      v40 = [v39 name];
      v41 = [v9 relativePath];
      [NSString stringWithFormat:@"Nil encryption key for %@:%@", v40, v41];
    }

    else
    {
      v39 = [v9 domain];
      v40 = [v39 name];
      v41 = [v9 relativePath];
      [NSString stringWithFormat:@"Nil signature for %@:%@", v40, v41];
    }
    v14 = ;

    [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v14];
    v38 = @"Nil signature";
  }

  else
  {
    v35 = [v9 domain];
    v36 = [v35 name];
    v37 = [v9 relativePath];
    v14 = [NSString stringWithFormat:@"Nil recordID suffix for %@:%@", v36, v37];

    [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v14];
    v38 = @"Nil recordID suffix";
  }

  v23 = [MBError errorWithCode:500 path:v10 format:v38];
LABEL_20:

LABEL_21:

  return v23;
}

- (id)_verifyBackupMetadataForFile:(id)a3 localPath:(id)a4 fileList:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 relativePath];
  v35 = 0;
  v12 = [(MBSnapshotIntegrityVerifier *)self _fetchMetadataFromFetchedFileList:v10 relativePath:v11 metadata:&v35];

  v13 = v35;
  if (v12)
  {
    v14 = v12;
    v15 = v14;
    goto LABEL_15;
  }

  v34 = [v8 lastModified];
  v16 = [v8 absolutePath];
  v33 = 0;
  v17 = [(MBSnapshotIntegrityVerifier *)self _fetchMetadataFromDiskForPath:v16 modifiedDate:&v34 metadata:&v33];
  v18 = v33;

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    if (([v18 mode] & 0xF000) != 0x8000 || (-[MBBackupSnapshotIntegrityVerifier _verifyAssetMetadata:file:localPath:](self, "_verifyAssetMetadata:file:localPath:", v13, v8, v9), (v20 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v21 = [v8 domain];
      v22 = [MBSnapshotIntegrityVerifier _differencesBetweenCloudMetadata:v13 localMetadata:v18 domain:v21 path:v9 isBackup:1];

      if (!v22)
      {
        goto LABEL_12;
      }

      v23 = [(MBBackupSnapshotIntegrityVerifier *)self domainNamesModifiedInPreviousSnapshot];
      v24 = [v8 domain];
      v25 = [v24 name];
      v26 = [v23 containsObject:v25];

      if (v26)
      {
        v32 = [v8 typeString];
        v27 = [v8 domain];
        v28 = [v27 name];
        v29 = [v22 componentsJoinedByString:{@", "}];
        v30 = [NSString stringWithFormat:@"Metadata mismatch for %@ %@:%@ (local) %@ vs (cloud) %@ [%@]", v32, v28, v8, v18, v13, v29];

        [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v30];
        v15 = [MBError errorWithCode:500 path:v9 format:@"Metadata mismatch"];
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

- (id)_debugInfoForOpenedFileList:(id)a3
{
  v4 = a3;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v5 = objc_opt_new();
  v6 = [(MBBackupSnapshotIntegrityVerifier *)self currentFileList];
  v39 = 0;
  v7 = [v6 fetchFileListStats:&v40 error:&v39];
  v8 = v39;

  if (v7)
  {
    [v5 appendFormat:@"f=%llu a=%llu e=%llu", *(&v40 + 1), v40, v41];
  }

  else
  {
    v9 = [v8 domain];
    [v5 appendFormat:@"ERROR_NO_FILE_LIST_STATS (%@/%lu)", v9, objc_msgSend(v8, "code")];
  }

  v10 = [v4 snapshotDatabaseDirectory];
  v38 = v8;
  v11 = [MBPendingSnapshotDB openOrCreateDatabaseIn:v10 commitID:@"latest" readonly:1 error:&v38];
  v12 = v38;

  if (v11)
  {
    *&v32 = 0;
    v37 = 0;
    v13 = [(MBBackupSnapshotIntegrityVerifier *)self currentFileList];
    v14 = [v13 domainName];
    v36 = v12;
    v15 = [v11 countAssetRecordsToCommitForDomain:v14 addedOrModifiedCount:&v32 deletedCount:&v37 error:&v36];
    v16 = v36;

    if (v15)
    {
      [v5 appendFormat:@"| u=%llu d=%llu", v32, v37];
    }

    else
    {
      v18 = [v16 domain];
      [v5 appendFormat:@"| ERROR_NO_PENDING_SNAPSHOT_STATS (%@/%lu)", v18, objc_msgSend(v16, "code")];
    }

    [v11 close:0];
  }

  else
  {
    v17 = [v12 domain];
    [v5 appendFormat:@"| ERROR_OPEN_PENDING_SNAPSHOT_DB (%@/%lu)", v17, objc_msgSend(v12, "code")];

    v16 = v12;
  }

  v19 = [(MBSnapshotIntegrityVerifier *)self attemptSummary];
  v20 = [v19 previousSnapshotCommitID];

  if (v20)
  {
    v21 = [v4 snapshotDatabaseDirectory];
    v22 = [(MBBackupSnapshotIntegrityVerifier *)self currentFileList];
    v23 = [v22 domainName];
    v35 = 0;
    v24 = [MBFileListDB openDatabaseIn:v21 commitID:v20 domainName:v23 error:&v35];
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
        v28 = [v27 domain];
        [v5 appendFormat:@"| ERROR_NO_FILE_LIST_STATS (%@/%lu)", v28, objc_msgSend(v27, "code")];
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
        v29 = [v16 domain];
        [v5 appendFormat:@"| ERROR_OPEN_PREVIOUS_FILE_LIST (%@/%lu)", v29, objc_msgSend(v16, "code")];
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

- (id)fileScanner:(id)a3 didFindFile:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isTopLevelDirectoryToExcludeFromiCloud])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(MBBackupSnapshotIntegrityVerifier *)self currentFileList];
    if (!v9)
    {
      __assert_rtn("[MBBackupSnapshotIntegrityVerifier fileScanner:didFindFile:]", "MBSnapshotIntegrityVerifier.m", 869, "currentDB");
    }

    v10 = v9;
    v11 = [v7 absolutePath];
    v12 = [v10 domainName];
    v13 = [v7 domain];
    v14 = [v13 name];
    v15 = [v12 isEqualToString:v14];

    if (v15)
    {
      v8 = [(MBBackupSnapshotIntegrityVerifier *)self _verifyBackupMetadataForFile:v7 localPath:v11 fileList:v10];
    }

    else
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v17 = [v10 domainName];
        v18 = [v7 domain];
        v19 = [v18 name];
        *buf = 138412546;
        v28 = v17;
        v29 = 2112;
        v30 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "=verifier= Inconsistent domain names between file list and file found locally %@ vs %@", buf, 0x16u);

        v20 = [v10 domainName];
        v21 = [v7 domain];
        v26 = [v21 name];
        _MBLog();
      }

      v22 = [v10 domainName];
      v23 = [v7 domain];
      v24 = [v23 name];
      v8 = [MBError errorWithCode:500 path:v11 format:@"Inconsistent domain name between file list and file found locally %@ vs %@", v22, v24];
    }
  }

  return v8;
}

@end