@interface MBCKRestoreDomainEngine
- (BOOL)finalizeRestoredDomainWithError:(id *)error;
- (BOOL)isRestoringToSameDevice;
- (BOOL)restoreFilesWithError:(id *)error;
- (BOOL)runWithError:(id *)error;
- (BOOL)setUpWithError:(id *)error;
- (MBCKRestoreDomainEngine)initWithRestoreEngine:(id)engine enumeratorCache:(id)cache domain:(id)domain;
- (MBCKRestoreEngine)parentEngine;
- (id)restorePolicy;
- (int)restoreType;
- (void)_handleStateTransition;
- (void)cleanUpAfterError:(id)error;
- (void)makeStateTransition;
- (void)resume;
@end

@implementation MBCKRestoreDomainEngine

- (MBCKRestoreDomainEngine)initWithRestoreEngine:(id)engine enumeratorCache:(id)cache domain:(id)domain
{
  engineCopy = engine;
  cacheCopy = cache;
  domainCopy = domain;
  if (!engineCopy)
  {
    __assert_rtn("[MBCKRestoreDomainEngine initWithRestoreEngine:enumeratorCache:domain:]", "MBCKRestoreDomainEngine.m", 52, "engine");
  }

  v11 = domainCopy;
  ckOperationPolicy = [engineCopy ckOperationPolicy];
  if (!ckOperationPolicy)
  {
    __assert_rtn("[MBCKRestoreDomainEngine initWithRestoreEngine:enumeratorCache:domain:]", "MBCKRestoreDomainEngine.m", 54, "policy");
  }

  v13 = ckOperationPolicy;
  ckOperationTracker = [engineCopy ckOperationTracker];
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKRestoreDomainEngine initWithRestoreEngine:enumeratorCache:domain:]", "MBCKRestoreDomainEngine.m", 56, "tracker");
  }

  v15 = ckOperationTracker;
  cache = [engineCopy cache];
  if (!cache)
  {
    __assert_rtn("[MBCKRestoreDomainEngine initWithRestoreEngine:enumeratorCache:domain:]", "MBCKRestoreDomainEngine.m", 58, "cache");
  }

  v17 = cache;
  serviceManager = [engineCopy serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBCKRestoreDomainEngine initWithRestoreEngine:enumeratorCache:domain:]", "MBCKRestoreDomainEngine.m", 60, "serviceManager");
  }

  v19 = serviceManager;
  device = [engineCopy device];
  if (!device)
  {
    __assert_rtn("[MBCKRestoreDomainEngine initWithRestoreEngine:enumeratorCache:domain:]", "MBCKRestoreDomainEngine.m", 62, "device");
  }

  v21 = device;
  obj = domain;
  v35 = v11;
  [engineCopy context];
  v34 = v21;
  v22 = v19;
  v23 = v17;
  v24 = v15;
  v25 = v13;
  v27 = v26 = cacheCopy;
  debugContext = [engineCopy debugContext];
  domainManager = [engineCopy domainManager];
  v36.receiver = self;
  v36.super_class = MBCKRestoreDomainEngine;
  v30 = [(MBCKEngine *)&v36 initWithSettingsContext:v27 debugContext:debugContext domainManager:domainManager];

  if (v30)
  {
    [(MBCKEngine *)v30 setServiceManager:v22];
    [(MBCKEngine *)v30 setCkOperationPolicy:v25];
    [(MBCKEngine *)v30 setCkOperationTracker:v24];
    [(MBCKRestoreDomainEngine *)v30 setParentEngine:engineCopy];
    [(MBCKRestoreDomainEngine *)v30 setRestoreState:1];
    objc_storeStrong(&v30->_domain, obj);
    [(MBCKEngine *)v30 setDevice:v34];
    [(MBCKEngine *)v30 setShouldAdvanceState:1];
    [(MBCKEngine *)v30 setCache:v23];
    [(MBCKRestoreDomainEngine *)v30 setEnumeratorCache:v26];
    targetSnapshot = [engineCopy targetSnapshot];
    [(MBCKRestoreDomainEngine *)v30 setTargetSnapshot:targetSnapshot];
  }

  return v30;
}

- (int)restoreType
{
  parentEngine = [(MBCKRestoreDomainEngine *)self parentEngine];
  restoreType = [parentEngine restoreType];

  return restoreType;
}

- (BOOL)isRestoringToSameDevice
{
  parentEngine = [(MBCKRestoreDomainEngine *)self parentEngine];
  device = [parentEngine device];
  deviceUUID = [device deviceUUID];
  v5 = MBDeviceUUID();
  v6 = [deviceUUID isEqualToString:v5];

  return v6;
}

- (id)restorePolicy
{
  parentEngine = [(MBCKRestoreDomainEngine *)self parentEngine];
  restorePolicy = [parentEngine restorePolicy];

  return restorePolicy;
}

- (void)cleanUpAfterError:(id)error
{
  errorCopy = error;
  domain = [(MBCKRestoreDomainEngine *)self domain];
  name = [domain name];
  if (([MBDomain isAppName:name]& 1) != 0 || ([MBDomain isAppPluginName:name]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = [MBDomain isAppGroupName:name];
  }

  if (![(MBEngine *)self isBackgroundRestore]|| !v7 || ![MBError isRetryableRestoreError:errorCopy])
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      *&buf[4] = name;
      *&buf[12] = 2112;
      *&buf[14] = errorCopy;
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
    v37 = domain;
    v39 = &v41;
    v10 = name;
    v38 = v10;
    v40 = &v45;
    v11 = objc_retainBlock(v36);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v55 = sub_100119BC0;
    v56 = sub_100119BD0;
    v57 = 0;
    cache = [(MBCKEngine *)self cache];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100119BD8;
    v33[3] = &unk_1003BF0A0;
    v35 = buf;
    v13 = v11;
    v34 = v13;
    v14 = [cache enumeratePendingRestoreFilesForDomain:v10 excludingType:1 foundRestorable:v33];

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

    cache2 = [(MBCKEngine *)self cache];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100119C34;
    v30[3] = &unk_1003BF0A0;
    v32 = buf;
    v31 = v13;
    v14 = [cache2 enumeratePendingRestoreFilesForDomain:v10 forType:1 orderAscending:0 foundRestorable:v30];

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
      cache3 = [(MBCKEngine *)self cache];
      v14 = [cache3 setRestoreState:1 forFilesInDomain:v10];

      if (!v14)
      {
        v29.receiver = self;
        v29.super_class = MBCKRestoreDomainEngine;
        [(MBCKEngine *)&v29 cleanUpAfterError:errorCopy];
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
    *&buf[4] = name;
    *&buf[12] = 2112;
    *&buf[14] = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Not removing staged items for %{public}@ with error %@", buf, 0x16u);
    _MBLog();
  }

  v49.receiver = self;
  v49.super_class = MBCKRestoreDomainEngine;
  [(MBCKEngine *)&v49 cleanUpAfterError:errorCopy];
LABEL_34:
}

- (BOOL)runWithError:(id *)error
{
  [(MBCKRestoreDomainEngine *)self resume];
  [(MBCKRestoreDomainEngine *)self makeStateTransition];
  hasError = [(MBCKEngine *)self hasError];
  if (hasError)
  {
    engineError = [(MBCKEngine *)self engineError];
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MBError loggableDescriptionForError:engineError];
      domain = [(MBCKRestoreDomainEngine *)self domain];
      name = [domain name];
      *buf = 138543874;
      v17 = v8;
      v18 = 2112;
      v19 = name;
      v20 = 2112;
      v21 = engineError;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Restore failed: %{public}@ (%@), %@", buf, 0x20u);

      v11 = [MBError loggableDescriptionForError:engineError];
      domain2 = [(MBCKRestoreDomainEngine *)self domain];
      name2 = [domain2 name];
      _MBLog();
    }

    [(MBCKRestoreDomainEngine *)self cleanUpAfterError:engineError];
    if (error)
    {
      v13 = engineError;
      *error = engineError;
    }
  }

  return hasError ^ 1;
}

- (void)resume
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  cache = [(MBCKEngine *)self cache];
  domainName = [(MBCKRestoreDomainEngine *)self domainName];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100119F64;
  v6[3] = &unk_1003BF0C8;
  v6[4] = &v7;
  v5 = [cache fetchDomainRestoreStateForDomain:domainName callback:v6];

  if (!v5)
  {
    [(MBCKRestoreDomainEngine *)self setRestoreState:v8[3]];
  }

  _Block_object_dispose(&v7, 8);
}

- (void)_handleStateTransition
{
  restoreState = [(MBCKRestoreDomainEngine *)self restoreState];
  if (restoreState <= 2)
  {
    if (restoreState == 1)
    {
      v26 = _NSConcreteStackBlock;
      v27 = 3221225472;
      v28 = sub_10011A2B4;
      v29 = &unk_1003BC400;
      selfCopy = self;
      v4 = &v26;
    }

    else
    {
      if (restoreState != 2)
      {
        goto LABEL_13;
      }

      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_10011A2C0;
      v24 = &unk_1003BC400;
      selfCopy2 = self;
      v4 = &v21;
    }

    goto LABEL_12;
  }

  if (restoreState == 3)
  {
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10011A2CC;
    v19 = &unk_1003BC400;
    selfCopy3 = self;
    v4 = &v16;
LABEL_12:
    [(MBCKEngine *)self performRetryablePhase:v4];
    goto LABEL_13;
  }

  if (restoreState == 4)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      domainName = [(MBCKRestoreDomainEngine *)self domainName];
      *buf = 138543362;
      v32 = domainName;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Domain restore of %{public}@ finished successfully", buf, 0xCu);

      domainName2 = [(MBCKRestoreDomainEngine *)self domainName];
      _MBLog();
    }

    [(MBCKEngine *)self setIsFinished:1];
    [(MBCKEngine *)self setEngineError:0];
  }

LABEL_13:
  if ([(MBCKEngine *)self isFinished:domainName2])
  {
    progressModel = [(MBCKEngine *)self progressModel];
    [progressModel ended];
  }

  else
  {
    [(MBCKRestoreDomainEngine *)self setRestoreState:[(MBCKRestoreDomainEngine *)self restoreState]+ 1];
  }

  parentEngine = [(MBCKRestoreDomainEngine *)self parentEngine];
  isForegroundRestore = [parentEngine isForegroundRestore];

  if ((isForegroundRestore & 1) == 0)
  {
    cache = [(MBCKEngine *)self cache];
    restoreState2 = [(MBCKRestoreDomainEngine *)self restoreState];
    domainName3 = [(MBCKRestoreDomainEngine *)self domainName];
    v13 = [cache setDomainRestoreState:restoreState2 forDomain:domainName3];

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

- (BOOL)setUpWithError:(id *)error
{
  v60.receiver = self;
  v60.super_class = MBCKRestoreDomainEngine;
  if ([(MBCKEngine *)&v60 setUpWithError:?])
  {
    domain = [(MBCKRestoreDomainEngine *)self domain];

    if (domain)
    {
      cache = [(MBCKEngine *)self cache];
      domainName = [(MBCKRestoreDomainEngine *)self domainName];
      v59 = 0;
      v8 = [cache domainShouldRestoreToSafeHarbor:domainName error:&v59];
      domainName6 = v59;

      if (domainName6)
      {
        v10 = MBGetDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          domainName2 = [(MBCKRestoreDomainEngine *)self domainName];
          *buf = 138412546;
          selfCopy = domainName2;
          v63 = 2112;
          v64 = domainName6;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to determine if %@ should restore to safe harbor: %@", buf, 0x16u);

          domainName3 = [(MBCKRestoreDomainEngine *)self domainName];
          _MBLog();
        }

        if (error)
        {
          v12 = domainName6;
          v13 = 0;
          *error = domainName6;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_39;
      }

      parentEngine = [(MBCKRestoreDomainEngine *)self parentEngine];
      if (!parentEngine)
      {
        __assert_rtn("[MBCKRestoreDomainEngine setUpWithError:]", "MBCKRestoreDomainEngine.m", 296, "parentEngine");
      }

      v17 = parentEngine;
      domain2 = [(MBCKRestoreDomainEngine *)self domain];
      rootPath = [domain2 rootPath];

      if ([v17 isForegroundRestore])
      {
        domain3 = [(MBCKRestoreDomainEngine *)self domain];
        shouldRestoreToSharedVolume = [domain3 shouldRestoreToSharedVolume];
        persona = [(MBCKEngine *)self persona];
        v23 = persona;
        if (shouldRestoreToSharedVolume)
        {
          [persona sharedIncompleteRestoreDirectory];
        }

        else
        {
          [persona userIncompleteRestoreDirectory];
        }
        v24 = ;

        v25 = [v24 stringByAppendingPathComponent:rootPath];

        rootPath = v25;
      }

      if (v8)
      {
        appManager = [v17 appManager];
        context = [(MBCKEngine *)self context];
        restoreMode = [context restoreMode];
        bundleID = [restoreMode bundleID];
        domain6 = [appManager appWithIdentifier:bundleID];

        appManager2 = [v17 appManager];
        persona2 = [(MBCKEngine *)self persona];
        v58 = 0;
        v33 = [appManager2 createSafeHarborForContainer:domain6 withPersona:persona2 usingIntermediateRestoreDir:objc_msgSend(v17 error:{"isForegroundRestore"), &v58}];
        v34 = v58;

        if (v33)
        {
          appManager3 = [v17 appManager];
          context2 = [(MBCKEngine *)self context];
          restoreMode2 = [context2 restoreMode];
          bundleID2 = [restoreMode2 bundleID];
          v39 = [appManager3 appWithIdentifier:bundleID2];

          if ([v39 isSafeHarbor])
          {
            safeHarborDir = [v39 safeHarborDir];
            [(MBCKRestoreDomainEngine *)self setSafeHarborDir:safeHarborDir];
          }

          v13 = 1;
          domain6 = v39;
          goto LABEL_37;
        }

        v46 = MBGetDefaultLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          context3 = [(MBCKEngine *)self context];
          restoreMode3 = [context3 restoreMode];
          bundleID3 = [restoreMode3 bundleID];
          *buf = 138412546;
          selfCopy = bundleID3;
          v63 = 2112;
          v64 = v34;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Failed to create safe harbor for %@: %@", buf, 0x16u);

          context4 = [(MBCKEngine *)self context];
          restoreMode4 = [context4 restoreMode];
          bundleID4 = [restoreMode4 bundleID];
          _MBLog();
        }

        if (error)
        {
          v52 = v34;
          v13 = 0;
          *error = v34;
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
        domain4 = [(MBCKRestoreDomainEngine *)self domain];
        *buf = 138543618;
        selfCopy = domain4;
        v63 = 2114;
        v64 = rootPath;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Creating root path for domain %{public}@ at %{public}@", buf, 0x16u);

        domain5 = [(MBCKRestoreDomainEngine *)self domain];
        _MBLog();
      }

      v34 = +[NSFileManager defaultManager];
      if ([v34 fileExistsAtPath:rootPath])
      {
        v13 = 1;
      }

      else
      {
        v43 = MBMobileFileAttributes();
        v13 = 1;
        v44 = [v34 createDirectoryAtPath:rootPath withIntermediateDirectories:1 attributes:v43 error:error];

        if ((v44 & 1) == 0)
        {
          if (!error)
          {
            v13 = 0;
            goto LABEL_38;
          }

          domain6 = [(MBCKRestoreDomainEngine *)self domain];
          name = [domain6 name];
          *error = [MBError errorWithCode:100 path:rootPath format:@"Error creating root path for domain %@", name];

          goto LABEL_36;
        }
      }

LABEL_38:

      domainName6 = 0;
      goto LABEL_39;
    }

    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      domainName4 = [(MBCKRestoreDomainEngine *)self domainName];
      *buf = 138412546;
      selfCopy = self;
      v63 = 2112;
      v64 = domainName4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Unable to get domain for restore %@ (%@)", buf, 0x16u);

      domainName5 = [(MBCKRestoreDomainEngine *)self domainName];
      _MBLog();
    }

    if (error)
    {
      domainName6 = [(MBCKRestoreDomainEngine *)self domainName];
      [MBError errorWithCode:205 format:@"Failed to get domain for %@", domainName6];
      *error = v13 = 0;
LABEL_39:

      return v13;
    }
  }

  return 0;
}

- (BOOL)restoreFilesWithError:(id *)error
{
  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  v5 = ckOperationTracker;
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKRestoreDomainEngine restoreFilesWithError:]", "MBCKRestoreDomainEngine.m", 332, "tracker");
  }

  account = [ckOperationTracker account];
  if (!account)
  {
    __assert_rtn("[MBCKRestoreDomainEngine restoreFilesWithError:]", "MBCKRestoreDomainEngine.m", 334, "serviceAccount");
  }

  domainName = [(MBCKRestoreDomainEngine *)self domainName];
  domain = [(MBCKRestoreDomainEngine *)self domain];
  if (domain)
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
    maxBatchCount = [v9 maxBatchCount];

    v11 = +[MBBehaviorOptions sharedOptions];
    maxBatchFetchAssetSize = [v11 maxBatchFetchAssetSize];

    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_10011B65C;
    v73[3] = &unk_1003BF140;
    v73[4] = self;
    v74 = v5;
    v78 = &v80;
    v75 = account;
    v51 = v8;
    v76 = v51;
    v13 = domainName;
    v77 = v13;
    v79 = &v86;
    v52 = objc_retainBlock(v73);
    enumeratorCache = [(MBCKRestoreDomainEngine *)self enumeratorCache];
    if (enumeratorCache)
    {
      v15 = 0;
    }

    else
    {
      cache = [(MBCKEngine *)self cache];
      tracker = [cache tracker];

      if (!tracker)
      {
        __assert_rtn("[MBCKRestoreDomainEngine restoreFilesWithError:]", "MBCKRestoreDomainEngine.m", 489, "cacheTracker");
      }

      v72 = 0;
      enumeratorCache = [tracker openCacheWithAccessType:2 cached:0 error:&v72];
      v15 = v72;
      if (!enumeratorCache)
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

        if (error)
        {
          v38 = v15;
          v17 = 0;
          *error = v15;
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
    parentEngine = [(MBCKRestoreDomainEngine *)self parentEngine];
    if (!parentEngine)
    {
      __assert_rtn("[MBCKRestoreDomainEngine restoreFilesWithError:]", "MBCKRestoreDomainEngine.m", 500, "parentEngine");
    }

    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10011C7A0;
    v61[3] = &unk_1003BF168;
    v61[4] = self;
    v65 = buf;
    v21 = domain;
    v62 = v21;
    v22 = parentEngine;
    v63 = v22;
    v66 = v92;
    v67 = &v80;
    v68 = &v86;
    v69 = v98;
    v70 = maxBatchCount;
    v71 = maxBatchFetchAssetSize;
    v23 = v52;
    v64 = v23;
    v24 = [enumeratorCache enumeratePendingRestoreFilesForDomain:v13 orderAscending:1 foundRestorable:v61];

    if (v24)
    {
      enumeratorCache2 = [(MBCKRestoreDomainEngine *)self enumeratorCache];
      v26 = enumeratorCache == enumeratorCache2;

      if (!v26)
      {
        [enumeratorCache close];
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

      if (error)
      {
        v28 = v24;
        v17 = 0;
        *error = v24;
LABEL_43:

        _Block_object_dispose(v98, 8);
        tracker = enumeratorCache;
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

    if ([(MBCKEngine *)self handleCancelation:error])
    {
      enumeratorCache3 = [(MBCKRestoreDomainEngine *)self enumeratorCache];
      v30 = enumeratorCache == enumeratorCache3;

      if (v30)
      {
LABEL_41:
        v24 = 0;
        goto LABEL_42;
      }

LABEL_23:
      [enumeratorCache close];
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
      enumeratorCache4 = [(MBCKRestoreDomainEngine *)self enumeratorCache];
      v34 = enumeratorCache == enumeratorCache4;

      if (!v34)
      {
        [enumeratorCache close];
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

      if (error)
      {
        v24 = 0;
        v17 = 0;
        *error = *(*&buf[8] + 40);
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if ([(MBCKEngine *)self handleCancelation:error])
    {
      enumeratorCache5 = [(MBCKRestoreDomainEngine *)self enumeratorCache];
      v40 = enumeratorCache == enumeratorCache5;

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
    v24 = [enumeratorCache enumeratePendingRestoreFilesForDomain:v13 forType:1 orderAscending:1 foundRestorable:v56];
    enumeratorCache6 = [(MBCKRestoreDomainEngine *)self enumeratorCache];
    v44 = enumeratorCache == enumeratorCache6;

    if (!v44)
    {
      [enumeratorCache close];
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
      if (!error)
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

      if (!error)
      {
        goto LABEL_60;
      }

      v46 = *(*&buf[8] + 40);
    }

    v17 = 0;
    *error = v46;
LABEL_62:

    goto LABEL_43;
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = domainName;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Unable to get domain for restore %@ (%@)", buf, 0x16u);
    _MBLog();
  }

  if (error)
  {
    [MBError errorWithCode:205 format:@"Failed to get domain for %@", domainName];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_45:

  return v17;
}

- (BOOL)finalizeRestoredDomainWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBCKRestoreDomainEngine finalizeRestoredDomainWithError:]", "MBCKRestoreDomainEngine.m", 650, "error");
  }

  parentEngine = [(MBCKRestoreDomainEngine *)self parentEngine];
  if (!parentEngine)
  {
    __assert_rtn("[MBCKRestoreDomainEngine finalizeRestoredDomainWithError:]", "MBCKRestoreDomainEngine.m", 652, "parentEngine");
  }

  v6 = parentEngine;
  if (([parentEngine isForegroundRestore] & 1) == 0)
  {
    context = [(MBCKEngine *)self context];
    restoreMode = [context restoreMode];
    isBackgroundApp = [restoreMode isBackgroundApp];

    if (isBackgroundApp)
    {
      context2 = [(MBCKEngine *)self context];
      restoreMode2 = [context2 restoreMode];
      bundleID = [restoreMode2 bundleID];

      domain = [(MBCKRestoreDomainEngine *)self domain];
      name = [domain name];

      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v44 = name;
        v45 = 2112;
        v46 = bundleID;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=ckdomain-engine= Finalizing the restore for %@ (%@)", buf, 0x16u);
        v39 = name;
        v40 = bundleID;
        _MBLog();
      }

      +[NSDate timeIntervalSinceReferenceDate];
      v17 = v16;
      context3 = [(MBCKEngine *)self context];
      restoreMode3 = [context3 restoreMode];
      wasCancelled = [restoreMode3 wasCancelled];

      if (wasCancelled)
      {
        v21 = MBGetDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = bundleID;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=ckdomain-engine= Uninstalling the placeholder for %@", buf, 0xCu);
          v39 = bundleID;
          _MBLog();
        }

        v42 = 0;
        v22 = [MBMobileInstallation uninstallAppWithBundleID:bundleID error:&v42];
        v23 = v42;
        if ((v22 & 1) == 0)
        {
          v24 = MBGetDefaultLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v44 = bundleID;
            v45 = 2112;
            v46 = v23;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "=ckdomain-engine= Failed to uninstall the placeholder for %@: %@", buf, 0x16u);
            v39 = bundleID;
            v40 = v23;
            _MBLog();
          }

          v25 = v23;
          *error = v23;
        }
      }

      else
      {
        appManager = [v6 appManager];
        persona = [(MBCKEngine *)self persona];
        v29 = [appManager fetchAppWithIdentifier:bundleID persona:persona error:error];

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
        context4 = [(MBCKEngine *)self context];
        restoreMode4 = [context4 restoreMode];
        errorString = [restoreMode4 errorString];
        *buf = 138413058;
        v44 = name;
        v45 = 2112;
        v46 = bundleID;
        v47 = 2048;
        v48 = v31 - v17;
        v49 = 2112;
        v50 = errorString;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "=ckdomain-engine= Finalized the restore for %@ (%@) in %0.3fs (%@)", buf, 0x2Au);

        context5 = [(MBCKEngine *)self context];
        restoreMode5 = [context5 restoreMode];
        errorString2 = [restoreMode5 errorString];
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