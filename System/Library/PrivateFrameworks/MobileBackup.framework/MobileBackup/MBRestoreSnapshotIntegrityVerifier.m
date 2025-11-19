@interface MBRestoreSnapshotIntegrityVerifier
+ (BOOL)shouldRunVerifierForRestoreWithSnapshotFormat:(int64_t)a3 account:(id)a4;
- (BOOL)_verifyContainerizedDataAfterBackgroundRestore:(id)a3 domainPlan:(id)a4 error:(id *)a5;
- (BOOL)_verifyDomain:(id)a3 snapshotUUID:(id)a4 errors:(id)a5 cancellationError:(id *)a6 pathForFile:(id)a7;
- (BOOL)verifyContainerizedDataAfterBackgroundRestore:(id)a3 domainPlan:(id)a4 error:(id *)a5;
- (BOOL)verifyIntermediateDirectoryAfterForegroundRestoreWithDomainManager:(id)a3 plan:(id)a4 overridePath:(id)a5 error:(id *)a6;
- (MBRestoreSnapshotIntegrityVerifier)initWithPolicy:(id)a3 snapshotFormat:(int64_t)a4 snapshotDir:(id)a5 snapshotUUID:(id)a6 delegate:(id)a7;
- (id)_domainNamesFromFileListWithCommitID:(id)a3 snapshotDir:(id)a4 error:(id *)a5;
- (id)_verifyRestoreMetadataForFile:(id)a3 localPath:(id)a4 fileList:(id)a5;
@end

@implementation MBRestoreSnapshotIntegrityVerifier

- (MBRestoreSnapshotIntegrityVerifier)initWithPolicy:(id)a3 snapshotFormat:(int64_t)a4 snapshotDir:(id)a5 snapshotUUID:(id)a6 delegate:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v13)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier initWithPolicy:snapshotFormat:snapshotDir:snapshotUUID:delegate:]", "MBSnapshotIntegrityVerifier.m", 86, "policy");
  }

  if (!v14)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier initWithPolicy:snapshotFormat:snapshotDir:snapshotUUID:delegate:]", "MBSnapshotIntegrityVerifier.m", 87, "snapshotDir");
  }

  if (a4 == -1)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier initWithPolicy:snapshotFormat:snapshotDir:snapshotUUID:delegate:]", "MBSnapshotIntegrityVerifier.m", 88, "snapshotFormat != MBSnapshotFormatUnspecified");
  }

  if (!v15)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier initWithPolicy:snapshotFormat:snapshotDir:snapshotUUID:delegate:]", "MBSnapshotIntegrityVerifier.m", 89, "snapshotUUID");
  }

  v17 = v16;
  if (!v16)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier initWithPolicy:snapshotFormat:snapshotDir:snapshotUUID:delegate:]", "MBSnapshotIntegrityVerifier.m", 90, "delegate");
  }

  v24.receiver = self;
  v24.super_class = MBRestoreSnapshotIntegrityVerifier;
  v18 = [(MBSnapshotIntegrityVerifier *)&v24 _initWithDelegate:v16];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(v18 + 4, a3);
    objc_storeStrong(&v19->_snapshotDir, a5);
    objc_storeStrong(&v19->_snapshotUUID, a6);
    v19->_snapshotFormat = a4;
    v20 = +[MBBehaviorOptions sharedOptions];
    v21 = [v20 restorePathsToFailVerifyingRegex];
    v22 = [MBErrorInjector errorInjectorForRegex:v21 maxFailureCount:0];
    [(MBSnapshotIntegrityVerifier *)v19 setErrorInjector:v22];
  }

  return v19;
}

+ (BOOL)shouldRunVerifierForRestoreWithSnapshotFormat:(int64_t)a3 account:(id)a4
{
  v4 = a4;
  if (MBSnapshotFormatContainsFileLists())
  {
    v5 = +[MBBehaviorOptions sharedOptions];
    v6 = [v5 shouldVerifyRestore];

    if (v6)
    {
      v7 = [v6 BOOLValue];
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        if (v7)
        {
          v9 = "enabled";
        }

        else
        {
          v9 = "disabled";
        }

        *buf = 136315138;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "=verifier= Restore verification %s from local behavior option", buf, 0xCu);
        goto LABEL_14;
      }

LABEL_15:

      goto LABEL_16;
    }

    if (MBIsInternalInstall())
    {
      v8 = MBGetDefaultLog();
      LOBYTE(v7) = 1;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      *buf = 0;
      LOBYTE(v7) = 1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "=verifier= Restore verification enabled, because AppleInternal", buf, 2u);
    }

    else
    {
      v10 = +[MBRemoteConfiguration sharedInstance];
      v7 = [v10 restoreVerificationEnabledForAccount:v4];

      v8 = MBGetDefaultLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      *buf = 67109120;
      LODWORD(v13) = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "=verifier= Restore verification enabled from server: %d", buf, 8u);
    }

LABEL_14:
    _MBLog();
    goto LABEL_15;
  }

  LOBYTE(v7) = 0;
LABEL_16:

  return v7;
}

- (BOOL)verifyIntermediateDirectoryAfterForegroundRestoreWithDomainManager:(id)a3 plan:(id)a4 overridePath:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v48 = a5;
  if (!v10)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier verifyIntermediateDirectoryAfterForegroundRestoreWithDomainManager:plan:overridePath:error:]", "MBSnapshotIntegrityVerifier.m", 132, "domainManager");
  }

  if (!a6)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier verifyIntermediateDirectoryAfterForegroundRestoreWithDomainManager:plan:overridePath:error:]", "MBSnapshotIntegrityVerifier.m", 133, "error");
  }

  if ([(MBSnapshotIntegrityVerifier *)self _checkForCancellation:a6])
  {
    v49 = a6;
    v47 = [(MBRestoreSnapshotIntegrityVerifier *)self _domainNamesFromFileListWithCommitID:self->_snapshotUUID snapshotDir:self->_snapshotDir error:a6];
    if (v47)
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = [v47 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v71 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "=verifier= Verifying domains: %@", buf, 0xCu);

        v37 = [v47 componentsJoinedByString:{@", "}];
        _MBLog();
      }

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = v47;
      v51 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
      if (v51)
      {
        v44 = 0;
        v45 = 0;
        v50 = *v67;
        v14 = &selRef_consolidatedDomainsInFileListSynchronization;
        v42 = v11;
        v43 = v10;
LABEL_9:
        v15 = 0;
        while (1)
        {
          if (*v67 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v66 + 1) + 8 * v15);
          if ([*(&self->super.super.isa + *(v14 + 827)) shouldForegroundRestoreDomain:{v16, v37, v38, v39, v41}])
          {
            if (![(MBSnapshotIntegrityVerifier *)self _checkForCancellation:v49])
            {
              goto LABEL_44;
            }

            v17 = [v10 domainForName:v16];
            if ([v17 hasRootPath])
            {
              v18 = [v11 planForDomain:v17 restoreType:1 error:v49];
              v19 = v18;
              if (!v18)
              {
                v34 = MBGetDefaultLog();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v35 = *v49;
                  *buf = 138412802;
                  v71 = v16;
                  v72 = 2112;
                  v73 = v11;
                  v74 = 2112;
                  v75 = v35;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "=verifier= Failed to find domain %@ in plan %@: %@", buf, 0x20u);
                  v40 = *v49;
                  _MBLog();
                }

LABEL_44:
                v31 = 0;
                v33 = obj;
                goto LABEL_45;
              }

              if (![v18 wasSkipped])
              {
                v62 = 0;
                v63 = &v62;
                v64 = 0x2020000000;
                v65 = 0;
                v58 = 0;
                v59 = &v58;
                v60 = 0x2020000000;
                v61 = 0;
                v21 = objc_opt_new();
                snapshotUUID = self->_snapshotUUID;
                v53[0] = _NSConcreteStackBlock;
                v53[1] = 3221225472;
                v53[2] = sub_10011E514;
                v53[3] = &unk_1003BF1B8;
                v53[4] = self;
                v56 = &v58;
                v57 = &v62;
                v54 = v48;
                v22 = v17;
                v55 = v22;
                LODWORD(v23) = [(MBRestoreSnapshotIntegrityVerifier *)self _verifyDomain:v22 snapshotUUID:snapshotUUID errors:v21 cancellationError:v49 pathForFile:v53];

                v10 = v43;
                v14 = &selRef_consolidatedDomainsInFileListSynchronization;

                if (v23)
                {
                  v24 = v63[3];
                  v25 = v59[3];
                  v26 = [v21 count];
                  v44 += v24;
                  v45 += v25;
                  if (v26)
                  {
                    v27 = MBGetDefaultLog();
                    v10 = v43;
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                    {
                      v28 = v63[3];
                      v29 = v59[3];
                      *buf = 138413058;
                      v71 = v16;
                      v72 = 2048;
                      v73 = v28;
                      v74 = 2048;
                      v75 = v29;
                      v76 = 2048;
                      v77 = v26;
                      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "=verifier= Failed to verify %@ during FG restore - checked: %llu ignored: %llu failed: %llu", buf, 0x2Au);
                      v39 = v59[3];
                      v41 = v26;
                      v37 = v16;
                      v38 = v63[3];
                      _MBLog();
                    }

                    v11 = v42;
                    v14 = &selRef_consolidatedDomainsInFileListSynchronization;
                    v23 = [MBError errorWithErrors:v21];
                    if (([v19 recordVerificationFailure:v23 error:v49]& 1) != 0)
                    {
                      v30 = v23;
                      *v49 = v23;
                    }

                    LOBYTE(v23) = 0;
                  }

                  else
                  {
                    LOBYTE(v23) = [v19 recordVerificationSuccess:v49];
                    v10 = v43;
                    v11 = v42;
                    v14 = &selRef_consolidatedDomainsInFileListSynchronization;
                  }
                }

                _Block_object_dispose(&v58, 8);
                _Block_object_dispose(&v62, 8);

                if ((v23 & 1) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_32;
              }

              v20 = MBGetDefaultLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v71 = v16;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=verifier= Skipping verifying %@ because it was skipped", buf, 0xCu);
                v37 = v16;
                _MBLog();
              }
            }

            else
            {
              v19 = MBGetDefaultLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "=verifier= Skipping verification of domain with nil root path", buf, 2u);
                _MBLog();
              }
            }
          }

LABEL_32:
          if (v51 == ++v15)
          {
            v51 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
            if (v51)
            {
              goto LABEL_9;
            }

            goto LABEL_38;
          }
        }
      }

      v44 = 0;
      v45 = 0;
LABEL_38:

      v32 = MBGetDefaultLog();
      v33 = v32;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v71 = &v45[v44];
        v72 = 2048;
        v73 = v44;
        v74 = 2048;
        v75 = v45;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "=verifier= Finished foreground verification total: %llu, checked: %llu, ignored: %llu", buf, 0x20u);
        _MBLog();
        v31 = 1;
        v33 = v32;
      }

      else
      {
        v31 = 1;
      }

LABEL_45:
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (BOOL)verifyContainerizedDataAfterBackgroundRestore:(id)a3 domainPlan:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier verifyContainerizedDataAfterBackgroundRestore:domainPlan:error:]", "MBSnapshotIntegrityVerifier.m", 216, "domainPlan");
  }

  if (!a5)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier verifyContainerizedDataAfterBackgroundRestore:domainPlan:error:]", "MBSnapshotIntegrityVerifier.m", 217, "error");
  }

  v10 = v9;
  v36 = 0;
  v11 = [(MBRestoreSnapshotIntegrityVerifier *)self _verifyContainerizedDataAfterBackgroundRestore:v8 domainPlan:v9 error:&v36];
  v12 = v36;
  if (v11)
  {
    v13 = [v10 recordVerificationSuccess:a5];
    goto LABEL_19;
  }

  v14 = [(MBRestorePolicy *)self->_policy serviceRestoreMode];
  v15 = [v14 isBackgroundApp];

  if (v15)
  {
    v16 = [(MBRestorePolicy *)self->_policy serviceRestoreMode];
    v17 = [v16 bundleID];

    v18 = [(MBRestorePolicy *)self->_policy appManager];
    v19 = [(MBRestorePolicy *)self->_policy persona];
    v35 = 0;
    v20 = [v18 fetchAppWithIdentifier:v17 persona:v19 error:&v35];
    v21 = v35;

    if (v20)
    {
      v22 = +[NSFileManager defaultManager];
      v23 = [v22 fileExistsAtPath:v8];

      if ((v23 & 1) == 0)
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v10 domain];
          v26 = [v25 name];
          *buf = 138412546;
          v39 = v26;
          v40 = 2112;
          v41 = v8;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=verifier= Marking verification success for %@ because container %@ was removed during verification", buf, 0x16u);

          v27 = [v10 domain];
          v28 = [v27 name];
LABEL_13:
          _MBLog();

          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else if ([MBError isError:v21 withCode:245])
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v10 domain];
        v30 = [v29 name];
        *buf = 138412546;
        v39 = v30;
        v40 = 2112;
        v41 = v17;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=verifier= Marking verification success for %@ because parent app %@ was uninstalled during verification", buf, 0x16u);

        v27 = [v10 domain];
        v28 = [v27 name];
        goto LABEL_13;
      }

LABEL_14:

      v13 = [v10 recordVerificationSuccess:a5];
      goto LABEL_19;
    }
  }

  if ([v10 recordVerificationFailure:v12 error:a5])
  {
    v31 = v12;
    v13 = 0;
    *a5 = v12;
  }

  else
  {
    v32 = *a5;
    v37[0] = v12;
    v37[1] = v32;
    v33 = [NSArray arrayWithObjects:v37 count:2];
    *a5 = [MBError errorWithErrors:v33];

    v13 = 0;
  }

LABEL_19:

  return v13;
}

- (BOOL)_verifyContainerizedDataAfterBackgroundRestore:(id)a3 domainPlan:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier _verifyContainerizedDataAfterBackgroundRestore:domainPlan:error:]", "MBSnapshotIntegrityVerifier.m", 249, "domainPlan");
  }

  if (!a5)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier _verifyContainerizedDataAfterBackgroundRestore:domainPlan:error:]", "MBSnapshotIntegrityVerifier.m", 250, "error");
  }

  v10 = v9;
  v11 = [v9 domain];
  if (!v11)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier _verifyContainerizedDataAfterBackgroundRestore:domainPlan:error:]", "MBSnapshotIntegrityVerifier.m", 252, "domain");
  }

  if ([(MBSnapshotIntegrityVerifier *)self _checkForCancellation:a5])
  {
    if (!v8)
    {
      v8 = [v11 rootPath];
    }

    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v12 = objc_opt_new();
    snapshotUUID = self->_snapshotUUID;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10011EDCC;
    v24[3] = &unk_1003BF1E0;
    v24[4] = self;
    v26 = &v28;
    v27 = &v32;
    v8 = v8;
    v25 = v8;
    v14 = [(MBRestoreSnapshotIntegrityVerifier *)self _verifyDomain:v11 snapshotUUID:snapshotUUID errors:v12 cancellationError:a5 pathForFile:v24];

    if (v14)
    {
      v15 = [v12 count];
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v11 name];
          v19 = v33[3];
          v20 = v29[3];
          *buf = 138413314;
          v37 = v18;
          v38 = 2048;
          v39 = v20 + v19;
          v40 = 2048;
          v41 = v19;
          v42 = 2048;
          v43 = v20;
          v44 = 2048;
          v45 = v15;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "=verifier= Finished background verification for %@ total: %llu, checked: %llu, ignored: %llu, failed: %llu", buf, 0x34u);
        }

        v21 = [v11 name];
        v23 = v29[3] + v33[3];
        _MBLog();
      }

      if (v15)
      {
        [MBError errorWithErrors:v12];
        *a5 = LOBYTE(v14) = 0;
      }

      else
      {
        LOBYTE(v14) = 1;
      }
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (BOOL)_verifyDomain:(id)a3 snapshotUUID:(id)a4 errors:(id)a5 cancellationError:(id *)a6 pathForFile:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (!v12)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier _verifyDomain:snapshotUUID:errors:cancellationError:pathForFile:]", "MBSnapshotIntegrityVerifier.m", 292, "domain");
  }

  if (!v13)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier _verifyDomain:snapshotUUID:errors:cancellationError:pathForFile:]", "MBSnapshotIntegrityVerifier.m", 293, "snapshotUUID");
  }

  if (!v14)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier _verifyDomain:snapshotUUID:errors:cancellationError:pathForFile:]", "MBSnapshotIntegrityVerifier.m", 294, "errors");
  }

  if (!a6)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier _verifyDomain:snapshotUUID:errors:cancellationError:pathForFile:]", "MBSnapshotIntegrityVerifier.m", 295, "cancellationError");
  }

  if (!v15)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier _verifyDomain:snapshotUUID:errors:cancellationError:pathForFile:]", "MBSnapshotIntegrityVerifier.m", 296, "pathForFile");
  }

  v31 = a6;
  v32 = v15;
  v16 = [v12 name];
  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "=verifier= Verifying domain: %@", &buf, 0xCu);
    _MBLog();
  }

  snapshotDir = self->_snapshotDir;
  v40 = 0;
  v19 = [MBFileListDB openDatabaseIn:snapshotDir commitID:v13 domainName:v16 error:&v40];
  v20 = v40;
  v21 = v20;
  if (v19)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v42 = 0x3032000000;
    v43 = sub_10011F268;
    v44 = sub_10011F278;
    v45 = 0;
    p_buf = &buf;
    v39 = v20;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10011F280;
    v34[3] = &unk_1003BF208;
    v34[4] = self;
    v37 = v32;
    v22 = v19;
    v35 = v22;
    v23 = v14;
    v36 = v23;
    v24 = [v22 enumerateFilesWithDomain:v12 error:&v39 block:v34];
    v25 = v39;

    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      [v23 addObject:v25];
    }

    v33 = v25;
    v27 = [v22 close:&v33];
    v21 = v33;

    if ((v27 & 1) == 0)
    {
      [v23 addObject:v21];
    }

    v28 = *(*(&buf + 1) + 40);
    v29 = v28 == 0;
    if (v28)
    {
      *v31 = v28;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    [v14 addObject:v20];
    v29 = 1;
  }

  return v29;
}

- (id)_verifyRestoreMetadataForFile:(id)a3 localPath:(id)a4 fileList:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 relativePath];
  v26 = 0;
  v12 = [(MBSnapshotIntegrityVerifier *)self _fetchMetadataFromFetchedFileList:v10 relativePath:v11 metadata:&v26];

  v13 = v26;
  if (v12)
  {
    v14 = v12;
    v15 = v14;
  }

  else
  {
    v25 = 0;
    v14 = [(MBSnapshotIntegrityVerifier *)self _fetchMetadataFromDiskForPath:v9 modifiedDate:0 metadata:&v25];
    v16 = v25;
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v17 = [v8 domain];
      v18 = [MBSnapshotIntegrityVerifier _differencesBetweenCloudMetadata:v13 localMetadata:v16 domain:v17 path:v9 isBackup:0];

      if (v18 && ([v8 domain], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isBackupDomain"), v19, (v20 & 1) == 0))
      {
        v21 = [v8 typeString];
        v22 = [v18 componentsJoinedByString:{@", "}];
        v23 = [NSString stringWithFormat:@"Metadata mismatch [%@] for %@ %@:\n\tcloud: %@\n\tlocal: %@", v21, v22, v9, v13, v16];

        [(MBSnapshotIntegrityVerifier *)self _logFailureAndAppendToAttemptSummary:v23];
        v15 = [MBError errorWithCode:501 path:v9 format:@"Verification failed: %@", v23];
      }

      else
      {
        v15 = 0;
      }
    }
  }

  return v15;
}

- (id)_domainNamesFromFileListWithCommitID:(id)a3 snapshotDir:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    __assert_rtn("[MBRestoreSnapshotIntegrityVerifier _domainNamesFromFileListWithCommitID:snapshotDir:error:]", "MBSnapshotIntegrityVerifier.m", 369, "error");
  }

  v10 = v9;
  if ([(MBSnapshotIntegrityVerifier *)self _checkForCancellation:a5])
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10011F8A8;
    v19[3] = &unk_1003BC450;
    v11 = objc_opt_new();
    v20 = v11;
    if (MBEnumerateDomainNamesForSnapshot(v10, v8, a5, v19))
    {

      v11 = v11;
      v12 = v11;
      goto LABEL_11;
    }

    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *a5;
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=verifier= Foreground restore verification: failed to acquire all file lists %@", buf, 0xCu);
      v18 = *a5;
      _MBLog();
    }
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *a5;
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=verifier= Foreground restore verification cancelled %@", buf, 0xCu);
      v17 = *a5;
      _MBLog();
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

@end