@interface MBCKRestoreDomainEngine
- (BOOL)finalizeRestoredDomainWithError:(id *)a3;
- (BOOL)isRestoringToSameDevice;
- (BOOL)restoreFilesWithError:(id *)a3;
- (BOOL)runWithError:(id *)a3;
- (BOOL)setUpWithError:(id *)a3;
- (MBCKRestoreDomainEngine)initWithRestoreEngine:(id)a3 enumeratorCache:(id)a4 domain:(id)a5;
- (MBCKRestoreEngine)parentEngine;
- (id)restorePolicy;
- (int)restoreType;
- (void)_handleStateTransition;
- (void)cleanUpAfterError:(id)a3;
- (void)makeStateTransition;
- (void)resume;
@end

@implementation MBCKRestoreDomainEngine

- (MBCKRestoreDomainEngine)initWithRestoreEngine:(id)a3 enumeratorCache:(id)a4 domain:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    __assert_rtn("[MBCKRestoreDomainEngine initWithRestoreEngine:enumeratorCache:domain:]", "MBCKRestoreDomainEngine.m", 52, "engine");
  }

  v11 = v10;
  v12 = [v8 ckOperationPolicy];
  if (!v12)
  {
    __assert_rtn("[MBCKRestoreDomainEngine initWithRestoreEngine:enumeratorCache:domain:]", "MBCKRestoreDomainEngine.m", 54, "policy");
  }

  v13 = v12;
  v14 = [v8 ckOperationTracker];
  if (!v14)
  {
    __assert_rtn("[MBCKRestoreDomainEngine initWithRestoreEngine:enumeratorCache:domain:]", "MBCKRestoreDomainEngine.m", 56, "tracker");
  }

  v15 = v14;
  v16 = [v8 cache];
  if (!v16)
  {
    __assert_rtn("[MBCKRestoreDomainEngine initWithRestoreEngine:enumeratorCache:domain:]", "MBCKRestoreDomainEngine.m", 58, "cache");
  }

  v17 = v16;
  v18 = [v8 serviceManager];
  if (!v18)
  {
    __assert_rtn("[MBCKRestoreDomainEngine initWithRestoreEngine:enumeratorCache:domain:]", "MBCKRestoreDomainEngine.m", 60, "serviceManager");
  }

  v19 = v18;
  v20 = [v8 device];
  if (!v20)
  {
    __assert_rtn("[MBCKRestoreDomainEngine initWithRestoreEngine:enumeratorCache:domain:]", "MBCKRestoreDomainEngine.m", 62, "device");
  }

  v21 = v20;
  obj = a5;
  v35 = v11;
  [v8 context];
  v34 = v21;
  v22 = v19;
  v23 = v17;
  v24 = v15;
  v25 = v13;
  v27 = v26 = v9;
  v28 = [v8 debugContext];
  v29 = [v8 domainManager];
  v36.receiver = self;
  v36.super_class = MBCKRestoreDomainEngine;
  v30 = [(MBCKEngine *)&v36 initWithSettingsContext:v27 debugContext:v28 domainManager:v29];

  if (v30)
  {
    [(MBCKEngine *)v30 setServiceManager:v22];
    [(MBCKEngine *)v30 setCkOperationPolicy:v25];
    [(MBCKEngine *)v30 setCkOperationTracker:v24];
    [(MBCKRestoreDomainEngine *)v30 setParentEngine:v8];
    [(MBCKRestoreDomainEngine *)v30 setRestoreState:1];
    objc_storeStrong(&v30->_domain, obj);
    [(MBCKEngine *)v30 setDevice:v34];
    [(MBCKEngine *)v30 setShouldAdvanceState:1];
    [(MBCKEngine *)v30 setCache:v23];
    [(MBCKRestoreDomainEngine *)v30 setEnumeratorCache:v26];
    v31 = [v8 targetSnapshot];
    [(MBCKRestoreDomainEngine *)v30 setTargetSnapshot:v31];
  }

  return v30;
}

- (int)restoreType
{
  v2 = [(MBCKRestoreDomainEngine *)self parentEngine];
  v3 = [v2 restoreType];

  return v3;
}

- (BOOL)isRestoringToSameDevice
{
  v2 = [(MBCKRestoreDomainEngine *)self parentEngine];
  v3 = [v2 device];
  v4 = [v3 deviceUUID];
  v5 = MBDeviceUUID();
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (id)restorePolicy
{
  v2 = [(MBCKRestoreDomainEngine *)self parentEngine];
  v3 = [v2 restorePolicy];

  return v3;
}

- (void)cleanUpAfterError:(id)a3
{
  v4 = a3;
  v5 = [(MBCKRestoreDomainEngine *)self domain];
  v6 = [v5 name];
  if (([MBDomain isAppName:v6]& 1) != 0 || ([MBDomain isAppPluginName:v6]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = [MBDomain isAppGroupName:v6];
  }

  if (![(MBEngine *)self isBackgroundRestore]|| !v7 || ![MBError isRetryableRestoreError:v4])
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "=ckdomain-engine= Removing staged items for %{public}@ with error %@", buf, 0x16u);
      _MBLog();
    }

    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100119530;
    v36[3] = &unk_1003BF078;
    v36[4] = self;
    v37 = v5;
    v39 = &v41;
    v10 = v6;
    v38 = v10;
    v40 = &v45;
    v11 = objc_retainBlock(v36);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v55 = sub_100119BC0;
    v56 = sub_100119BD0;
    v57 = 0;
    v12 = [(MBCKEngine *)self cache];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100119BD8;
    v33[3] = &unk_1003BF0A0;
    v35 = buf;
    v13 = v11;
    v34 = v13;
    v14 = [v12 enumeratePendingRestoreFilesForDomain:v10 excludingType:1 foundRestorable:v33];

    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v46[3];
      *v50 = 134218242;
      v51 = v16;
      v52 = 2114;
      v53 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Removed a total of %llu files for %{public}@", v50, 0x16u);
      v27 = v46[3];
      _MBLog();
    }

    v17 = *(*&buf[8] + 40);
    if (v14)
    {
      if (!v17)
      {
LABEL_20:
        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *v50 = 138543362;
          v51 = v14;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to enumerate restore files to cleanup after error: %{public}@", v50, 0xCu);
          _MBLog();
        }

        goto LABEL_33;
      }

LABEL_19:
      v18 = v17;

      v14 = v18;
      goto LABEL_20;
    }

    if (v17)
    {
      goto LABEL_19;
    }

    v20 = [(MBCKEngine *)self cache];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100119C34;
    v30[3] = &unk_1003BF0A0;
    v32 = buf;
    v31 = v13;
    v14 = [v20 enumeratePendingRestoreFilesForDomain:v10 forType:1 orderAscending:0 foundRestorable:v30];

    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v42[3];
      *v50 = 134218242;
      v51 = v22;
      v52 = 2114;
      v53 = v10;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Removed a total of %llu dirs for %{public}@", v50, 0x16u);
      v28 = v42[3];
      _MBLog();
    }

    v23 = *(*&buf[8] + 40);
    if (v14)
    {
      if (!v23)
      {
LABEL_29:
        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v50 = 138543362;
          v51 = v14;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to enumerate pending restore directories to cleanup after error: %{public}@", v50, 0xCu);
          _MBLog();
        }

        goto LABEL_31;
      }
    }

    else if (!v23)
    {
      v26 = [(MBCKEngine *)self cache];
      v14 = [v26 setRestoreState:1 forFilesInDomain:v10];

      if (!v14)
      {
        v29.receiver = self;
        v29.super_class = MBCKRestoreDomainEngine;
        [(MBCKEngine *)&v29 cleanUpAfterError:v4];
        v14 = 0;
        goto LABEL_32;
      }

      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *v50 = 138543362;
        v51 = v14;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to unset restore state: %{public}@", v50, 0xCu);
        _MBLog();
      }

LABEL_31:

LABEL_32:
      v19 = v31;
LABEL_33:

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v41, 8);
      _Block_object_dispose(&v45, 8);
      goto LABEL_34;
    }

    v24 = v23;

    v14 = v24;
    goto LABEL_29;
  }

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Not removing staged items for %{public}@ with error %@", buf, 0x16u);
    _MBLog();
  }

  v49.receiver = self;
  v49.super_class = MBCKRestoreDomainEngine;
  [(MBCKEngine *)&v49 cleanUpAfterError:v4];
LABEL_34:
}

- (BOOL)runWithError:(id *)a3
{
  [(MBCKRestoreDomainEngine *)self resume];
  [(MBCKRestoreDomainEngine *)self makeStateTransition];
  v5 = [(MBCKEngine *)self hasError];
  if (v5)
  {
    v6 = [(MBCKEngine *)self engineError];
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MBError loggableDescriptionForError:v6];
      v9 = [(MBCKRestoreDomainEngine *)self domain];
      v10 = [v9 name];
      *buf = 138543874;
      v17 = v8;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Restore failed: %{public}@ (%@), %@", buf, 0x20u);

      v11 = [MBError loggableDescriptionForError:v6];
      v12 = [(MBCKRestoreDomainEngine *)self domain];
      v15 = [v12 name];
      _MBLog();
    }

    [(MBCKRestoreDomainEngine *)self cleanUpAfterError:v6];
    if (a3)
    {
      v13 = v6;
      *a3 = v6;
    }
  }

  return v5 ^ 1;
}

- (void)resume
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v3 = [(MBCKEngine *)self cache];
  v4 = [(MBCKRestoreDomainEngine *)self domainName];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100119F64;
  v6[3] = &unk_1003BF0C8;
  v6[4] = &v7;
  v5 = [v3 fetchDomainRestoreStateForDomain:v4 callback:v6];

  if (!v5)
  {
    [(MBCKRestoreDomainEngine *)self setRestoreState:v8[3]];
  }

  _Block_object_dispose(&v7, 8);
}

- (void)_handleStateTransition
{
  v3 = [(MBCKRestoreDomainEngine *)self restoreState];
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v26 = _NSConcreteStackBlock;
      v27 = 3221225472;
      v28 = sub_10011A2B4;
      v29 = &unk_1003BC400;
      v30 = self;
      v4 = &v26;
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_13;
      }

      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_10011A2C0;
      v24 = &unk_1003BC400;
      v25 = self;
      v4 = &v21;
    }

    goto LABEL_12;
  }

  if (v3 == 3)
  {
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10011A2CC;
    v19 = &unk_1003BC400;
    v20 = self;
    v4 = &v16;
LABEL_12:
    [(MBCKEngine *)self performRetryablePhase:v4];
    goto LABEL_13;
  }

  if (v3 == 4)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(MBCKRestoreDomainEngine *)self domainName];
      *buf = 138543362;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Domain restore of %{public}@ finished successfully", buf, 0xCu);

      v15 = [(MBCKRestoreDomainEngine *)self domainName];
      _MBLog();
    }

    [(MBCKEngine *)self setIsFinished:1];
    [(MBCKEngine *)self setEngineError:0];
  }

LABEL_13:
  if ([(MBCKEngine *)self isFinished:v15])
  {
    v7 = [(MBCKEngine *)self progressModel];
    [v7 ended];
  }

  else
  {
    [(MBCKRestoreDomainEngine *)self setRestoreState:[(MBCKRestoreDomainEngine *)self restoreState]+ 1];
  }

  v8 = [(MBCKRestoreDomainEngine *)self parentEngine];
  v9 = [v8 isForegroundRestore];

  if ((v9 & 1) == 0)
  {
    v10 = [(MBCKEngine *)self cache];
    v11 = [(MBCKRestoreDomainEngine *)self restoreState];
    v12 = [(MBCKRestoreDomainEngine *)self domainName];
    v13 = [v10 setDomainRestoreState:v11 forDomain:v12];

    if (v13)
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to set state in cache transaction: %@", buf, 0xCu);
        _MBLog();
      }
    }
  }
}

- (void)makeStateTransition
{
  v3 = objc_autoreleasePoolPush();
  [(MBCKRestoreDomainEngine *)self _handleStateTransition];
  objc_autoreleasePoolPop(v3);
  v4.receiver = self;
  v4.super_class = MBCKRestoreDomainEngine;
  [(MBCKEngine *)&v4 makeStateTransition];
}

- (BOOL)setUpWithError:(id *)a3
{
  v60.receiver = self;
  v60.super_class = MBCKRestoreDomainEngine;
  if ([(MBCKEngine *)&v60 setUpWithError:?])
  {
    v5 = [(MBCKRestoreDomainEngine *)self domain];

    if (v5)
    {
      v6 = [(MBCKEngine *)self cache];
      v7 = [(MBCKRestoreDomainEngine *)self domainName];
      v59 = 0;
      v8 = [v6 domainShouldRestoreToSafeHarbor:v7 error:&v59];
      v9 = v59;

      if (v9)
      {
        v10 = MBGetDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = [(MBCKRestoreDomainEngine *)self domainName];
          *buf = 138412546;
          v62 = v11;
          v63 = 2112;
          v64 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to determine if %@ should restore to safe harbor: %@", buf, 0x16u);

          v54 = [(MBCKRestoreDomainEngine *)self domainName];
          _MBLog();
        }

        if (a3)
        {
          v12 = v9;
          v13 = 0;
          *a3 = v9;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_39;
      }

      v16 = [(MBCKRestoreDomainEngine *)self parentEngine];
      if (!v16)
      {
        __assert_rtn("[MBCKRestoreDomainEngine setUpWithError:]", "MBCKRestoreDomainEngine.m", 296, "parentEngine");
      }

      v17 = v16;
      v18 = [(MBCKRestoreDomainEngine *)self domain];
      v19 = [v18 rootPath];

      if ([v17 isForegroundRestore])
      {
        v20 = [(MBCKRestoreDomainEngine *)self domain];
        v21 = [v20 shouldRestoreToSharedVolume];
        v22 = [(MBCKEngine *)self persona];
        v23 = v22;
        if (v21)
        {
          [v22 sharedIncompleteRestoreDirectory];
        }

        else
        {
          [v22 userIncompleteRestoreDirectory];
        }
        v24 = ;

        v25 = [v24 stringByAppendingPathComponent:v19];

        v19 = v25;
      }

      if (v8)
      {
        v26 = [v17 appManager];
        v27 = [(MBCKEngine *)self context];
        v28 = [v27 restoreMode];
        v29 = [v28 bundleID];
        v30 = [v26 appWithIdentifier:v29];

        v31 = [v17 appManager];
        v32 = [(MBCKEngine *)self persona];
        v58 = 0;
        v33 = [v31 createSafeHarborForContainer:v30 withPersona:v32 usingIntermediateRestoreDir:objc_msgSend(v17 error:{"isForegroundRestore"), &v58}];
        v34 = v58;

        if (v33)
        {
          v35 = [v17 appManager];
          v36 = [(MBCKEngine *)self context];
          v37 = [v36 restoreMode];
          v38 = [v37 bundleID];
          v39 = [v35 appWithIdentifier:v38];

          if ([v39 isSafeHarbor])
          {
            v40 = [v39 safeHarborDir];
            [(MBCKRestoreDomainEngine *)self setSafeHarborDir:v40];
          }

          v13 = 1;
          v30 = v39;
          goto LABEL_37;
        }

        v46 = MBGetDefaultLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = [(MBCKEngine *)self context];
          v48 = [v47 restoreMode];
          v49 = [v48 bundleID];
          *buf = 138412546;
          v62 = v49;
          v63 = 2112;
          v64 = v34;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Failed to create safe harbor for %@: %@", buf, 0x16u);

          v50 = [(MBCKEngine *)self context];
          v51 = [v50 restoreMode];
          v56 = [v51 bundleID];
          _MBLog();
        }

        if (a3)
        {
          v52 = v34;
          v13 = 0;
          *a3 = v34;
LABEL_37:

          goto LABEL_38;
        }

LABEL_36:
        v13 = 0;
        goto LABEL_37;
      }

      v41 = MBGetDefaultLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [(MBCKRestoreDomainEngine *)self domain];
        *buf = 138543618;
        v62 = v42;
        v63 = 2114;
        v64 = v19;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Creating root path for domain %{public}@ at %{public}@", buf, 0x16u);

        v55 = [(MBCKRestoreDomainEngine *)self domain];
        _MBLog();
      }

      v34 = +[NSFileManager defaultManager];
      if ([v34 fileExistsAtPath:v19])
      {
        v13 = 1;
      }

      else
      {
        v43 = MBMobileFileAttributes();
        v13 = 1;
        v44 = [v34 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:v43 error:a3];

        if ((v44 & 1) == 0)
        {
          if (!a3)
          {
            v13 = 0;
            goto LABEL_38;
          }

          v30 = [(MBCKRestoreDomainEngine *)self domain];
          v45 = [v30 name];
          *a3 = [MBError errorWithCode:100 path:v19 format:@"Error creating root path for domain %@", v45];

          goto LABEL_36;
        }
      }

LABEL_38:

      v9 = 0;
      goto LABEL_39;
    }

    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [(MBCKRestoreDomainEngine *)self domainName];
      *buf = 138412546;
      v62 = self;
      v63 = 2112;
      v64 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Unable to get domain for restore %@ (%@)", buf, 0x16u);

      v57 = [(MBCKRestoreDomainEngine *)self domainName];
      _MBLog();
    }

    if (a3)
    {
      v9 = [(MBCKRestoreDomainEngine *)self domainName];
      [MBError errorWithCode:205 format:@"Failed to get domain for %@", v9];
      *a3 = v13 = 0;
LABEL_39:

      return v13;
    }
  }

  return 0;
}

- (BOOL)restoreFilesWithError:(id *)a3
{
  v4 = [(MBCKEngine *)self ckOperationTracker];
  v5 = v4;
  if (!v4)
  {
    __assert_rtn("[MBCKRestoreDomainEngine restoreFilesWithError:]", "MBCKRestoreDomainEngine.m", 332, "tracker");
  }

  v6 = [v4 account];
  if (!v6)
  {
    __assert_rtn("[MBCKRestoreDomainEngine restoreFilesWithError:]", "MBCKRestoreDomainEngine.m", 334, "serviceAccount");
  }

  v54 = [(MBCKRestoreDomainEngine *)self domainName];
  v55 = [(MBCKRestoreDomainEngine *)self domain];
  if (v55)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v101 = sub_100119BC0;
    v102 = sub_100119BD0;
    v103 = 0;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.backupd.restore_queue", v7);

    v92[0] = 0;
    v92[1] = v92;
    v92[2] = 0x3032000000;
    v92[3] = sub_100119BC0;
    v92[4] = sub_100119BD0;
    v93 = objc_opt_new();
    v86 = 0;
    v87 = &v86;
    v88 = 0x3032000000;
    v89 = sub_100119BC0;
    v90 = sub_100119BD0;
    v91 = objc_opt_new();
    v80 = 0;
    v81 = &v80;
    v82 = 0x3032000000;
    v83 = sub_100119BC0;
    v84 = sub_100119BD0;
    v85 = objc_opt_new();
    v9 = +[MBBehaviorOptions sharedOptions];
    v10 = [v9 maxBatchCount];

    v11 = +[MBBehaviorOptions sharedOptions];
    v12 = [v11 maxBatchFetchAssetSize];

    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_10011B65C;
    v73[3] = &unk_1003BF140;
    v73[4] = self;
    v74 = v5;
    v78 = &v80;
    v75 = v6;
    v51 = v8;
    v76 = v51;
    v13 = v54;
    v77 = v13;
    v79 = &v86;
    v52 = objc_retainBlock(v73);
    v14 = [(MBCKRestoreDomainEngine *)self enumeratorCache];
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v18 = [(MBCKEngine *)self cache];
      v19 = [v18 tracker];

      if (!v19)
      {
        __assert_rtn("[MBCKRestoreDomainEngine restoreFilesWithError:]", "MBCKRestoreDomainEngine.m", 489, "cacheTracker");
      }

      v72 = 0;
      v14 = [v19 openCacheWithAccessType:2 cached:0 error:&v72];
      v15 = v72;
      if (!v14)
      {
        v37 = MBGetDefaultLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *v98 = 138412546;
          *&v98[4] = v13;
          *&v98[12] = 2112;
          *&v98[14] = v15;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to re-open cache during restore for %@: %@", v98, 0x16u);
          _MBLog();
        }

        if (a3)
        {
          v38 = v15;
          v17 = 0;
          *a3 = v15;
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_44;
      }
    }

    *v98 = 0;
    *&v98[8] = v98;
    *&v98[16] = 0x2020000000;
    v99 = 0;
    v20 = [(MBCKRestoreDomainEngine *)self parentEngine];
    if (!v20)
    {
      __assert_rtn("[MBCKRestoreDomainEngine restoreFilesWithError:]", "MBCKRestoreDomainEngine.m", 500, "parentEngine");
    }

    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10011C7A0;
    v61[3] = &unk_1003BF168;
    v61[4] = self;
    v65 = buf;
    v21 = v55;
    v62 = v21;
    v22 = v20;
    v63 = v22;
    v66 = v92;
    v67 = &v80;
    v68 = &v86;
    v69 = v98;
    v70 = v10;
    v71 = v12;
    v23 = v52;
    v64 = v23;
    v24 = [v14 enumeratePendingRestoreFilesForDomain:v13 orderAscending:1 foundRestorable:v61];

    if (v24)
    {
      v25 = [(MBCKRestoreDomainEngine *)self enumeratorCache];
      v26 = v14 == v25;

      if (!v26)
      {
        [v14 close];
      }

      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *v94 = 138412546;
        v95 = v13;
        v96 = 2112;
        v97 = v24;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to enumerate pending restore directories (first pass) for %@: %@", v94, 0x16u);
        _MBLog();
      }

      if (a3)
      {
        v28 = v24;
        v17 = 0;
        *a3 = v24;
LABEL_43:

        _Block_object_dispose(v98, 8);
        v19 = v14;
        v15 = v24;
LABEL_44:

        _Block_object_dispose(&v80, 8);
        _Block_object_dispose(&v86, 8);

        _Block_object_dispose(v92, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_45;
      }

LABEL_42:
      v17 = 0;
      goto LABEL_43;
    }

    if ([(MBCKEngine *)self handleCancelation:a3])
    {
      v29 = [(MBCKRestoreDomainEngine *)self enumeratorCache];
      v30 = v14 == v29;

      if (v30)
      {
LABEL_41:
        v24 = 0;
        goto LABEL_42;
      }

LABEL_23:
      [v14 close];
      goto LABEL_41;
    }

    if (!*(*&buf[8] + 40) && [v87[5] count])
    {
      v31 = (v23[2])(v23, v87[5]);
      v32 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v31;
    }

    if (*(*&buf[8] + 40))
    {
      v33 = [(MBCKRestoreDomainEngine *)self enumeratorCache];
      v34 = v14 == v33;

      if (!v34)
      {
        [v14 close];
      }

      v35 = MBGetDefaultLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = *(*&buf[8] + 40);
        *v94 = 138412290;
        v95 = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to restore domain: %@", v94, 0xCu);
        v49 = *(*&buf[8] + 40);
        _MBLog();
      }

      if (a3)
      {
        v24 = 0;
        v17 = 0;
        *a3 = *(*&buf[8] + 40);
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if ([(MBCKEngine *)self handleCancelation:a3])
    {
      v39 = [(MBCKRestoreDomainEngine *)self enumeratorCache];
      v40 = v14 == v39;

      if (v40)
      {
        goto LABEL_41;
      }

      goto LABEL_23;
    }

    v42 = v81[5];
    v81[5] = 0;

    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_10011D054;
    v56[3] = &unk_1003BF190;
    v56[4] = self;
    v59 = buf;
    v60 = v92;
    v57 = v21;
    v58 = v22;
    v24 = [v14 enumeratePendingRestoreFilesForDomain:v13 forType:1 orderAscending:1 foundRestorable:v56];
    v43 = [(MBCKRestoreDomainEngine *)self enumeratorCache];
    v44 = v14 == v43;

    if (!v44)
    {
      [v14 close];
    }

    if (v24)
    {
      v45 = MBGetDefaultLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *v94 = 138412546;
        v95 = v13;
        v96 = 2112;
        v97 = v24;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to enumerate pending restore directories (second pass) for %@: %@", v94, 0x16u);
        _MBLog();
      }

      v46 = v24;
      if (!a3)
      {
LABEL_60:
        v17 = 0;
        goto LABEL_62;
      }
    }

    else
    {
      if (!*(*&buf[8] + 40))
      {
        v17 = 1;
        goto LABEL_62;
      }

      v47 = MBGetDefaultLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = *(*&buf[8] + 40);
        *v94 = 138412546;
        v95 = v13;
        v96 = 2112;
        v97 = v48;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to restore domain %@: %@", v94, 0x16u);
        v50 = *(*&buf[8] + 40);
        _MBLog();
      }

      if (!a3)
      {
        goto LABEL_60;
      }

      v46 = *(*&buf[8] + 40);
    }

    v17 = 0;
    *a3 = v46;
LABEL_62:

    goto LABEL_43;
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v54;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Unable to get domain for restore %@ (%@)", buf, 0x16u);
    _MBLog();
  }

  if (a3)
  {
    [MBError errorWithCode:205 format:@"Failed to get domain for %@", v54];
    *a3 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_45:

  return v17;
}

- (BOOL)finalizeRestoredDomainWithError:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[MBCKRestoreDomainEngine finalizeRestoredDomainWithError:]", "MBCKRestoreDomainEngine.m", 650, "error");
  }

  v5 = [(MBCKRestoreDomainEngine *)self parentEngine];
  if (!v5)
  {
    __assert_rtn("[MBCKRestoreDomainEngine finalizeRestoredDomainWithError:]", "MBCKRestoreDomainEngine.m", 652, "parentEngine");
  }

  v6 = v5;
  if (([v5 isForegroundRestore] & 1) == 0)
  {
    v7 = [(MBCKEngine *)self context];
    v8 = [v7 restoreMode];
    v9 = [v8 isBackgroundApp];

    if (v9)
    {
      v10 = [(MBCKEngine *)self context];
      v11 = [v10 restoreMode];
      v12 = [v11 bundleID];

      v13 = [(MBCKRestoreDomainEngine *)self domain];
      v14 = [v13 name];

      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v44 = v14;
        v45 = 2112;
        v46 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=ckdomain-engine= Finalizing the restore for %@ (%@)", buf, 0x16u);
        v39 = v14;
        v40 = v12;
        _MBLog();
      }

      +[NSDate timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [(MBCKEngine *)self context];
      v19 = [v18 restoreMode];
      v20 = [v19 wasCancelled];

      if (v20)
      {
        v21 = MBGetDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = v12;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Uninstalling the placeholder for %@", buf, 0xCu);
          v39 = v12;
          _MBLog();
        }

        v42 = 0;
        v22 = [MBMobileInstallation uninstallAppWithBundleID:v12 error:&v42];
        v23 = v42;
        if ((v22 & 1) == 0)
        {
          v24 = MBGetDefaultLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v44 = v12;
            v45 = 2112;
            v46 = v23;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to uninstall the placeholder for %@: %@", buf, 0x16u);
            v39 = v12;
            v40 = v23;
            _MBLog();
          }

          v25 = v23;
          *a3 = v23;
        }
      }

      else
      {
        v27 = [v6 appManager];
        v28 = [(MBCKEngine *)self persona];
        v29 = [v27 fetchAppWithIdentifier:v12 persona:v28 error:a3];

        if (!v29)
        {
          v26 = 0;
LABEL_20:

          goto LABEL_21;
        }
      }

      [NSDate timeIntervalSinceReferenceDate:v39];
      v31 = v30;
      v32 = MBGetDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [(MBCKEngine *)self context];
        v34 = [v33 restoreMode];
        v35 = [v34 errorString];
        *buf = 138413058;
        v44 = v14;
        v45 = 2112;
        v46 = v12;
        v47 = 2048;
        v48 = v31 - v17;
        v49 = 2112;
        v50 = v35;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "=ckdomain-engine= Finalized the restore for %@ (%@) in %0.3fs (%@)", buf, 0x2Au);

        v36 = [(MBCKEngine *)self context];
        v37 = [v36 restoreMode];
        v41 = [v37 errorString];
        _MBLog();
      }

      v26 = 1;
      goto LABEL_20;
    }
  }

  v26 = 1;
LABEL_21:

  return v26;
}

- (MBCKRestoreEngine)parentEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_parentEngine);

  return WeakRetained;
}

@end