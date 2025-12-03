@interface MBRestoreDomainEngine
- (BOOL)_downloadAssets:(id *)assets;
- (BOOL)_downloadAssets:(id *)assets withFetcher:(id)fetcher;
- (BOOL)_finalize:(id *)_finalize;
- (BOOL)_fixUpDirectoryAttributes:(id *)attributes;
- (BOOL)_placeAssets:(id *)assets;
- (BOOL)_placeDirectories:(id *)directories;
- (BOOL)_placeSymlinks:(id *)symlinks;
- (BOOL)_placeZeroByteFiles:(id *)files;
- (BOOL)_shouldRestore:(BOOL *)restore restorable:(id)restorable error:(id *)error;
- (BOOL)_verify:(id *)_verify;
- (BOOL)fetcher:(id)fetcher didReceiveAsset:(id)asset path:(id)path error:(id *)error;
- (BOOL)resumeWithError:(id *)error;
- (BOOL)runWithError:(id *)error;
- (BOOL)setUpWithError:(id *)error;
- (MBRestoreDomainEngine)initWithRootPath:(id)path policy:(id)policy depot:(id)depot fetcher:(id)fetcher decrypter:(id)decrypter plan:(id)plan progress:(id)progress verifier:(id)self0 logger:(id)self1 error:(id *)self2;
- (id)domainName;
- (id)restoringBundleID;
- (unint64_t)_restoreRestorable:(id)restorable error:(id *)error actionBlock:(id)block;
- (void)_handleStateTransition;
- (void)cleanUpOnceAfterError:(id)error;
- (void)fetcher:(id)fetcher failedFetchingAsset:(id)asset withFetchError:(id)error;
- (void)makeStateTransition;
@end

@implementation MBRestoreDomainEngine

- (MBRestoreDomainEngine)initWithRootPath:(id)path policy:(id)policy depot:(id)depot fetcher:(id)fetcher decrypter:(id)decrypter plan:(id)plan progress:(id)progress verifier:(id)self0 logger:(id)self1 error:(id *)self2
{
  pathCopy = path;
  policyCopy = policy;
  policyCopy2 = policy;
  depotCopy = depot;
  depotCopy2 = depot;
  fetcherCopy = fetcher;
  fetcherCopy2 = fetcher;
  decrypterCopy = decrypter;
  planCopy = plan;
  planCopy2 = plan;
  progressCopy = progress;
  verifierCopy = verifier;
  loggerCopy = logger;
  if (!pathCopy)
  {
    __assert_rtn("[MBRestoreDomainEngine initWithRootPath:policy:depot:fetcher:decrypter:plan:progress:verifier:logger:error:]", "MBRestoreDomainEngine.m", 78, "rootPath");
  }

  if (!policyCopy2)
  {
    __assert_rtn("[MBRestoreDomainEngine initWithRootPath:policy:depot:fetcher:decrypter:plan:progress:verifier:logger:error:]", "MBRestoreDomainEngine.m", 79, "policy");
  }

  if (!depotCopy2)
  {
    __assert_rtn("[MBRestoreDomainEngine initWithRootPath:policy:depot:fetcher:decrypter:plan:progress:verifier:logger:error:]", "MBRestoreDomainEngine.m", 80, "depot");
  }

  if (!fetcherCopy2)
  {
    __assert_rtn("[MBRestoreDomainEngine initWithRootPath:policy:depot:fetcher:decrypter:plan:progress:verifier:logger:error:]", "MBRestoreDomainEngine.m", 81, "fetcher");
  }

  if (!planCopy2)
  {
    __assert_rtn("[MBRestoreDomainEngine initWithRootPath:policy:depot:fetcher:decrypter:plan:progress:verifier:logger:error:]", "MBRestoreDomainEngine.m", 82, "plan");
  }

  v23 = planCopy2;
  v45 = verifierCopy;
  v46 = fetcherCopy2;
  v24 = [_TtC7backupd18MBRestorePerformer alloc];
  domain = [planCopy2 domain];
  name = [domain name];
  v54 = 0;
  v47 = depotCopy2;
  v48 = pathCopy;
  v27 = depotCopy2;
  v28 = decrypterCopy;
  v29 = [(MBRestorePerformer *)v24 initWithIdentifier:name destinationPath:pathCopy policy:policyCopy2 depot:v27 decrypter:decrypterCopy progressModel:progressCopy logger:loggerCopy error:&v54];
  v30 = v54;

  if (v29)
  {
    v53.receiver = self;
    v53.super_class = MBRestoreDomainEngine;
    v31 = [(MBStatefulEngine *)&v53 initWithSettingsContext:0 debugContext:0 domainManager:0];
    v32 = v31;
    if (v31)
    {
      objc_storeStrong(&v31->_restoreRootPath, path);
      objc_storeStrong(&v32->_policy, policyCopy);
      objc_storeStrong(&v32->_plan, planCopy);
      objc_storeStrong(&v32->_depot, depotCopy);
      objc_storeStrong(&v32->_fetcher, fetcherCopy);
      objc_storeStrong(&v32->_progressModel, progress);
      objc_storeStrong(&v32->_verifier, verifier);
      objc_storeStrong(&v32->_logger, logger);
      objc_storeStrong(&v32->_performer, v29);
      v32->_restoreState = 0;
      [(MBAssetFetcher *)v32->_fetcher setDelegate:v32];
    }

    selfCopy = v32;
    v34 = selfCopy;
    v35 = policyCopy2;
    v36 = v47;
  }

  else
  {
    v37 = MBGetDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v30;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "=domain-engine= Failed to create performer: %@", buf, 0xCu);
      _MBLog();
    }

    v35 = policyCopy2;
    v36 = v47;
    if (error)
    {
      v38 = v30;
      v34 = 0;
      *error = v30;
    }

    else
    {
      v34 = 0;
    }

    selfCopy = self;
  }

  return v34;
}

- (id)domainName
{
  domain = [(MBRestoreDomainPlan *)self->_plan domain];
  name = [domain name];

  return name;
}

- (BOOL)resumeWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBRestoreDomainEngine resumeWithError:]", "MBRestoreDomainEngine.m", 143, "error");
  }

  plan = self->_plan;
  v19 = 0;
  v6 = [(MBRestoreDomainPlan *)plan domainState:&v19];
  v7 = v19;
  if (v6)
  {
    self->_startTime = CFAbsoluteTimeGetCurrent();
    [(MBRestoreDomainEngine *)self setRestoreState:v6];
    domainName6 = MBGetDefaultLog();
    v9 = os_log_type_enabled(domainName6, OS_LOG_TYPE_DEFAULT);
    if (v6 == 1)
    {
      if (v9)
      {
        domainName = [(MBRestoreDomainEngine *)self domainName];
        *buf = 138543362;
        v21 = domainName;
        _os_log_impl(&_mh_execute_header, domainName6, OS_LOG_TYPE_DEFAULT, "=domain-engine= %{public}@: Starting restore", buf, 0xCu);

        domainName2 = [(MBRestoreDomainEngine *)self domainName];
        _MBLog();
LABEL_11:
      }
    }

    else if (v9)
    {
      domainName3 = [(MBRestoreDomainEngine *)self domainName];
      v15 = sub_10024D9E0(v6);
      *buf = 138543618;
      v21 = domainName3;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, domainName6, OS_LOG_TYPE_DEFAULT, "=domain-engine= %{public}@: Resuming restore at %@", buf, 0x16u);

      domainName2 = [(MBRestoreDomainEngine *)self domainName];
      v18 = sub_10024D9E0(v6);
      _MBLog();

      goto LABEL_11;
    }
  }

  else
  {
    [(MBRestoreDomainEngine *)self setRestoreState:1];
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      domainName4 = [(MBRestoreDomainEngine *)self domainName];
      *buf = 138543618;
      v21 = domainName4;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "=domain-engine= %{public}@: Unable to retrieve state to resume engine: %@", buf, 0x16u);

      domainName5 = [(MBRestoreDomainEngine *)self domainName];
      _MBLog();
    }

    domainName6 = [(MBRestoreDomainEngine *)self domainName];
    *error = [MBError errorForNSError:v7 path:0 format:@"Unable to retrieve state to resume engine for %@", domainName6];
  }

  return v6 != 0;
}

- (BOOL)runWithError:(id *)error
{
  v5 = [(MBRestoreDomainEngine *)self resumeWithError:?];
  if (v5)
  {
    [(MBRestoreDomainEngine *)self makeStateTransition];
    if ([(MBStatefulEngine *)self hasError])
    {
      engineError = [(MBStatefulEngine *)self engineError];
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        domain = [(MBRestoreDomainEngine *)self domain];
        name = [domain name];
        v10 = [MBError loggableDescriptionForError:engineError];
        *buf = 138543874;
        v27 = name;
        v28 = 2112;
        v29 = v10;
        v30 = 2112;
        v31 = engineError;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "=domain-engine= %{public}@: Restore failed: (%@), %@", buf, 0x20u);

        domain2 = [(MBRestoreDomainEngine *)self domain];
        name2 = [domain2 name];
        v24 = [MBError loggableDescriptionForError:engineError];
        v25 = engineError;
        v21 = name2;
        _MBLog();
      }

      if (error)
      {
        v13 = engineError;
        *error = engineError;
      }

      v14 = [(MBRestoreDomainPlan *)self->_plan domain:v21];
      if (-[MBEngine isBackgroundRestore](self, "isBackgroundRestore") && !+[MBError isRetryableRestoreError:](MBError, "isRetryableRestoreError:", engineError) && [v14 isContainerizedDomain])
      {
        restoreRootPath = [(MBRestoreDomainEngine *)self restoreRootPath];
        v16 = MBGetDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          name3 = [v14 name];
          *buf = 138412546;
          v27 = name3;
          v28 = 2112;
          v29 = restoreRootPath;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=domain-engine= Resetting container for %@ with root %@ after fatal restore error", buf, 0x16u);

          name4 = [v14 name];
          _MBLog();
        }

        [MBMobileInstallation resetContainerWithRoot:restoreRootPath error:0];
      }

      LOBYTE(v5) = 0;
    }

    else
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        domainName = [(MBRestoreDomainEngine *)self domainName];
        *buf = 138543362;
        v27 = domainName;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=domain-engine= %{public}@ restore finished successfully", buf, 0xCu);

        domainName2 = [(MBRestoreDomainEngine *)self domainName];
        _MBLog();
      }

      [(MBStatefulEngine *)self cleanUpAfterError:0];
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)cleanUpOnceAfterError:(id)error
{
  errorCopy = error;
  fetcher = self->_fetcher;
  v27 = 0;
  v6 = [(MBAssetFetcher *)fetcher disposeWithError:&v27];
  v7 = v27;
  if ((v6 & 1) == 0)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      domainName = [(MBRestoreDomainEngine *)self domainName];
      v10 = self->_fetcher;
      *buf = 138543874;
      v29 = domainName;
      v30 = 2112;
      v31 = v10;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=domain-engine= %{public}@: Failed to dispose of fetcher %@: %@", buf, 0x20u);

      domainName2 = [(MBRestoreDomainEngine *)self domainName];
      v21 = self->_fetcher;
      v23 = v7;
      v19 = domainName2;
      _MBLog();
    }
  }

  performer = self->_performer;
  v26 = v7;
  v13 = [(MBRestorePerformer *)performer disposeAndReturnError:&v26, v19, v21, v23];
  v14 = v26;

  if ((v13 & 1) == 0)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      domainName3 = [(MBRestoreDomainEngine *)self domainName];
      v17 = self->_performer;
      *buf = 138543874;
      v29 = domainName3;
      v30 = 2112;
      v31 = v17;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "=domain-engine= %{public}@: Failed to dispose of performer %@: %@", buf, 0x20u);

      domainName4 = [(MBRestoreDomainEngine *)self domainName];
      v22 = self->_performer;
      v24 = v14;
      v20 = domainName4;
      _MBLog();
    }
  }

  v25.receiver = self;
  v25.super_class = MBRestoreDomainEngine;
  [(MBStatefulEngine *)&v25 cleanUpOnceAfterError:errorCopy, v20, v22, v24];
}

- (void)_handleStateTransition
{
  Current = CFAbsoluteTimeGetCurrent();
  restoreState = [(MBRestoreDomainEngine *)self restoreState];
  v5 = restoreState;
  if (restoreState > 5)
  {
    if (restoreState <= 7)
    {
      if (restoreState == 6)
      {
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10024E6A8;
        v38[3] = &unk_1003BC400;
        v38[4] = self;
        v6 = v38;
      }

      else
      {
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_10024E6B4;
        v37[3] = &unk_1003BC400;
        v37[4] = self;
        v6 = v37;
      }

      goto LABEL_22;
    }

    switch(restoreState)
    {
      case 8:
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10024E6C0;
        v36[3] = &unk_1003BC400;
        v36[4] = self;
        v6 = v36;
        goto LABEL_22;
      case 9:
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_10024E6CC;
        v35[3] = &unk_1003BC400;
        v35[4] = self;
        v6 = v35;
        goto LABEL_22;
      case 10:
        [(MBStatefulEngine *)self setIsFinished:1];
        [(MBStatefulEngine *)self setEngineError:0];
        goto LABEL_23;
    }
  }

  else
  {
    if (restoreState > 2)
    {
      if (restoreState == 3)
      {
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_10024E684;
        v41[3] = &unk_1003BC400;
        v41[4] = self;
        v6 = v41;
      }

      else if (restoreState == 4)
      {
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_10024E690;
        v40[3] = &unk_1003BC400;
        v40[4] = self;
        v6 = v40;
      }

      else
      {
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_10024E69C;
        v39[3] = &unk_1003BC400;
        v39[4] = self;
        v6 = v39;
      }

      goto LABEL_22;
    }

    if (restoreState == 1)
    {
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_10024E66C;
      v43[3] = &unk_1003BC400;
      v43[4] = self;
      v6 = v43;
      goto LABEL_22;
    }

    if (restoreState == 2)
    {
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10024E678;
      v42[3] = &unk_1003BC400;
      v42[4] = self;
      v6 = v42;
LABEL_22:
      [(MBStatefulEngine *)self performRetryablePhase:v6];
      goto LABEL_23;
    }
  }

  v19 = MBGetDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    domainName = [(MBRestoreDomainEngine *)self domainName];
    *buf = 138412546;
    v45 = domainName;
    v46 = 2048;
    v47 = v5;
    _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "%@: Invalid restore engine state (%lu)", buf, 0x16u);
  }

  domainName2 = [(MBRestoreDomainEngine *)self domainName];
  v32 = v5;
  v28 = sub_10012F338(@"%@: Invalid restore engine state (%lu)", v21, v22, v23, v24, v25, v26, v27, domainName2);

  [(MBStatefulEngine *)self setEngineError:v28];
  [(MBStatefulEngine *)self setIsFinished:1];
LABEL_23:
  if (![(MBStatefulEngine *)self isFinished])
  {
    [(MBRestoreDomainEngine *)self setRestoreState:[(MBRestoreDomainEngine *)self restoreState]+ 1];
  }

  v7 = CFAbsoluteTimeGetCurrent();
  if (v5 - 11 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8 - Current;
      domainName3 = [(MBRestoreDomainEngine *)self domainName];
      v12 = sub_10024D9E0(v5);
      *buf = 138543874;
      v45 = domainName3;
      v46 = 2114;
      v47 = v12;
      v48 = 2048;
      v49 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=domain-engine= %{public}@: %{public}@ done in %.3fs", buf, 0x20u);

      domainName4 = [(MBRestoreDomainEngine *)self domainName];
      sub_10024D9E0(v5);
      v33 = v10;
      v32 = v30 = domainName4;
      _MBLog();
    }
  }

  [(MBRestoreOperationLogger *)self->_logger flush:v30];
  plan = self->_plan;
  v34 = 0;
  v15 = [(MBRestoreDomainPlan *)plan setDomainState:[(MBRestoreDomainEngine *)self restoreState] error:&v34];
  v16 = v34;
  if ((v15 & 1) == 0)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      domainName5 = [(MBRestoreDomainEngine *)self domainName];
      *buf = 138543618;
      v45 = domainName5;
      v46 = 2112;
      v47 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=domain-engine= %{public}@: Unable to set resume engine state: %@", buf, 0x16u);

      domainName6 = [(MBRestoreDomainEngine *)self domainName];
      _MBLog();
    }
  }
}

- (void)makeStateTransition
{
  v3 = objc_autoreleasePoolPush();
  [(MBRestoreDomainEngine *)self _handleStateTransition];
  objc_autoreleasePoolPop(v3);
  v4.receiver = self;
  v4.super_class = MBRestoreDomainEngine;
  [(MBStatefulEngine *)&v4 makeStateTransition];
}

- (BOOL)setUpWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBRestoreDomainEngine setUpWithError:]", "MBRestoreDomainEngine.m", 319, "error");
  }

  v26.receiver = self;
  v26.super_class = MBRestoreDomainEngine;
  if (![(MBStatefulEngine *)&v26 setUpWithError:?])
  {
    return 0;
  }

  domain = [(MBRestoreDomainEngine *)self domain];

  v6 = MBGetDefaultLog();
  v7 = v6;
  if (domain)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      domain2 = [(MBRestoreDomainEngine *)self domain];
      restoreRootPath = self->_restoreRootPath;
      *buf = 138543618;
      v28 = domain2;
      v29 = 2114;
      selfCopy = restoreRootPath;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=domain-engine= %{public}@: Creating root path at %{public}@", buf, 0x16u);

      domain3 = [(MBRestoreDomainEngine *)self domain];
      v24 = self->_restoreRootPath;
      _MBLog();
    }

    domainName6 = +[NSFileManager defaultManager];
    if ([domainName6 fileExistsAtPath:self->_restoreRootPath] & 1) != 0 || (v11 = self->_restoreRootPath, MBMobileFileAttributes(), v12 = objc_claimAutoreleasedReturnValue(), LOBYTE(v11) = objc_msgSend(domainName6, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v11, 1, v12, error), v12, (v11))
    {
      domainName3 = [(MBRestoreDomainPlan *)self->_plan countsOfRestorablesByState:error, domain3, v24];
      if (domainName3)
      {
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          domainName = [(MBRestoreDomainEngine *)self domainName];
          v16 = MBDescriptionForStateSummaryDictionary(domainName3);
          *buf = 138543618;
          v28 = domainName;
          v29 = 2114;
          selfCopy = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "=domain-engine= %{public}@: Starting domain restore: %{public}@", buf, 0x16u);

          domainName2 = [(MBRestoreDomainEngine *)self domainName];
          v25 = MBDescriptionForStateSummaryDictionary(domainName3);
          _MBLog();
        }

        v18 = 1;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v20 = self->_restoreRootPath;
      domainName3 = [(MBRestoreDomainEngine *)self domainName];
      [MBError errorWithCode:100 path:v20 format:@"Failed creating root path for domain %@", domainName3];
      *error = v18 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      domainName4 = [(MBRestoreDomainEngine *)self domainName];
      *buf = 138543618;
      v28 = domainName4;
      v29 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "=domain-engine= %{public}@: Unable to get domain for restore %@)", buf, 0x16u);

      domainName5 = [(MBRestoreDomainEngine *)self domainName];
      _MBLog();
    }

    domainName6 = [(MBRestoreDomainEngine *)self domainName];
    [MBError errorWithCode:205 format:@"Failed to get domain for %@", domainName6];
    *error = v18 = 0;
  }

  return v18;
}

- (BOOL)_downloadAssets:(id *)assets
{
  if (!assets)
  {
    __assert_rtn("[MBRestoreDomainEngine _downloadAssets:]", "MBRestoreDomainEngine.m", 348, "error");
  }

  if (([(MBAssetFetcher *)self->_fetcher begin:?]& 1) != 0)
  {
    v5 = [(MBRestoreDomainEngine *)self _downloadAssets:assets withFetcher:self->_fetcher];
    v6 = [(MBAssetFetcher *)self->_fetcher finishWithError:assets];
    v7 = MBGetDefaultLog();
    v8 = v7;
    if (v6 && (v5 & 1) != 0)
    {
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 1;
        goto LABEL_15;
      }

      domainName = [(MBRestoreDomainEngine *)self domainName];
      assetFetchSummary = [(MBRestoreDomainEngine *)self assetFetchSummary];
      *buf = 138543618;
      v24 = domainName;
      v25 = 2112;
      v26 = assetFetchSummary;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=domain-engine= %{public}@: Finished downloading assets: %@ assets", buf, 0x16u);

      domainName2 = [(MBRestoreDomainEngine *)self domainName];
      assetFetchSummary2 = [(MBRestoreDomainEngine *)self assetFetchSummary];
      _MBLog();

      v12 = 1;
      goto LABEL_12;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      domainName3 = [(MBRestoreDomainEngine *)self domainName];
      fetcher = self->_fetcher;
      v17 = *assets;
      *buf = 138543874;
      v24 = domainName3;
      v25 = 2112;
      v26 = fetcher;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=domain-engine= %{public}@: Failed batch fetching assets with %@: %@", buf, 0x20u);

      domainName2 = [(MBRestoreDomainEngine *)self domainName];
      v18 = self->_fetcher;
      v22 = *assets;
      goto LABEL_11;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_15;
  }

  v8 = MBGetDefaultLog();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_13;
  }

  domainName4 = [(MBRestoreDomainEngine *)self domainName];
  v14 = *assets;
  *buf = 138543618;
  v24 = domainName4;
  v25 = 2112;
  v26 = v14;
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=domain-engine= %{public}@: Fetcher failed to begin: %@", buf, 0x16u);

  domainName2 = [(MBRestoreDomainEngine *)self domainName];
  v21 = *assets;
LABEL_11:
  _MBLog();
  v12 = 0;
LABEL_12:

LABEL_15:
  return v12;
}

- (BOOL)_downloadAssets:(id *)assets withFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  if (!assets)
  {
    __assert_rtn("[MBRestoreDomainEngine _downloadAssets:withFetcher:]", "MBRestoreDomainEngine.m", 367, "error");
  }

  if (!fetcherCopy)
  {
    __assert_rtn("[MBRestoreDomainEngine _downloadAssets:withFetcher:]", "MBRestoreDomainEngine.m", 368, "fetcher");
  }

  plan = self->_plan;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10024EFF8;
  v16[3] = &unk_1003C23A8;
  v16[4] = self;
  v8 = fetcherCopy;
  v17 = v8;
  v9 = [(MBRestoreDomainPlan *)plan enumerateAssetsToDownload:assets enumerator:v16];
  if ((v9 & 1) == 0)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      domainName = [(MBRestoreDomainEngine *)self domainName];
      v12 = *assets;
      *buf = 138543618;
      v19 = domainName;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=domain-engine= %{public}@: Failed enumerating unfinished assets: %@", buf, 0x16u);

      domainName2 = [(MBRestoreDomainEngine *)self domainName];
      v15 = *assets;
      _MBLog();
    }
  }

  return v9;
}

- (BOOL)fetcher:(id)fetcher didReceiveAsset:(id)asset path:(id)path error:(id *)error
{
  fetcherCopy = fetcher;
  assetCopy = asset;
  pathCopy = path;
  if (!fetcherCopy)
  {
    __assert_rtn("[MBRestoreDomainEngine fetcher:didReceiveAsset:path:error:]", "MBRestoreDomainEngine.m", 419, "fetcher");
  }

  if (!assetCopy)
  {
    __assert_rtn("[MBRestoreDomainEngine fetcher:didReceiveAsset:path:error:]", "MBRestoreDomainEngine.m", 420, "asset");
  }

  v13 = pathCopy;
  if (!pathCopy)
  {
    __assert_rtn("[MBRestoreDomainEngine fetcher:didReceiveAsset:path:error:]", "MBRestoreDomainEngine.m", 421, "path");
  }

  if (!error)
  {
    __assert_rtn("[MBRestoreDomainEngine fetcher:didReceiveAsset:path:error:]", "MBRestoreDomainEngine.m", 422, "error");
  }

  depot = self->_depot;
  v39 = 0;
  v15 = [(MBRestoreDepot *)depot depositWithAsset:assetCopy assetPath:v13 error:&v39];
  v16 = v39;
  if (v15)
  {
    plan = self->_plan;
    v37 = 0;
    v18 = [(MBRestoreDomainPlan *)plan setAssetState:2 asset:assetCopy withFailure:0 error:&v37];
    v19 = v37;
    if (v18)
    {
      progressModel = [(MBRestoreDomainEngine *)self progressModel];
      metadata = [assetCopy metadata];
      [progressModel updatingProgress:objc_msgSend(metadata previousProgress:"assetSize") size:{1.0, 0.0}];

      v22 = 1;
    }

    else
    {
      v30 = MBGetDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        domainName = [(MBRestoreDomainEngine *)self domainName];
        *buf = 138543874;
        v41 = domainName;
        v42 = 2112;
        v43 = assetCopy;
        v44 = 2112;
        v45 = v19;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "=domain-engine= %{public}@: Failed marking asset %@ as ready: %@", buf, 0x20u);

        domainName2 = [(MBRestoreDomainEngine *)self domainName];
        _MBLog();
      }

      v32 = v19;
      v22 = 0;
      *error = v19;
    }
  }

  else
  {
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      domainName3 = [(MBRestoreDomainEngine *)self domainName];
      *buf = 138544386;
      v41 = domainName3;
      v42 = 2112;
      v43 = assetCopy;
      v44 = 2112;
      v45 = v13;
      v46 = 2112;
      selfCopy = self;
      v48 = 2112;
      v49 = v16;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=domain-engine= %{public}@: Failed depositing asset %@ at %@ into depot %@: %@", buf, 0x34u);

      domainName4 = [(MBRestoreDomainEngine *)self domainName];
      _MBLog();
    }

    v25 = v16;
    *error = v16;
    v26 = self->_plan;
    v38 = 0;
    v27 = [(MBRestoreDomainPlan *)v26 setAssetState:3 asset:assetCopy withFailure:v16 error:&v38];
    v19 = v38;
    if ((v27 & 1) == 0)
    {
      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        domainName5 = [(MBRestoreDomainEngine *)self domainName];
        *buf = 138543874;
        v41 = domainName5;
        v42 = 2112;
        v43 = assetCopy;
        v44 = 2112;
        v45 = v19;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=domain-engine= %{public}@: Failed marking asset %@ as failed failing to deposition err: %@", buf, 0x20u);

        domainName6 = [(MBRestoreDomainEngine *)self domainName];
        _MBLog();
      }
    }

    v22 = 0;
  }

  return v22;
}

- (void)fetcher:(id)fetcher failedFetchingAsset:(id)asset withFetchError:(id)error
{
  fetcherCopy = fetcher;
  assetCopy = asset;
  errorCopy = error;
  if (!fetcherCopy)
  {
    __assert_rtn("[MBRestoreDomainEngine fetcher:failedFetchingAsset:withFetchError:]", "MBRestoreDomainEngine.m", 449, "fetcher");
  }

  if (!assetCopy)
  {
    __assert_rtn("[MBRestoreDomainEngine fetcher:failedFetchingAsset:withFetchError:]", "MBRestoreDomainEngine.m", 450, "asset");
  }

  v11 = errorCopy;
  if (!errorCopy)
  {
    __assert_rtn("[MBRestoreDomainEngine fetcher:failedFetchingAsset:withFetchError:]", "MBRestoreDomainEngine.m", 451, "fetchError");
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    domainName = [(MBRestoreDomainEngine *)self domainName];
    *buf = 138544130;
    v23 = domainName;
    v24 = 2112;
    v25 = fetcherCopy;
    v26 = 2112;
    v27 = assetCopy;
    v28 = 2112;
    v29 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "=domain-engine= %{public}@: Fetcher %@ failed to fetch %@: %@", buf, 0x2Au);

    domainName2 = [(MBRestoreDomainEngine *)self domainName];
    _MBLog();
  }

  plan = self->_plan;
  v21 = 0;
  v15 = [(MBRestoreDomainPlan *)plan setAssetState:3 asset:assetCopy withFailure:v11 error:&v21];
  v16 = v21;
  if ((v15 & 1) == 0)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      domainName3 = [(MBRestoreDomainEngine *)self domainName];
      *buf = 138543874;
      v23 = domainName3;
      v24 = 2112;
      v25 = assetCopy;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=domain-engine= %{public}@: Failed marking asset %@ as failed: %@", buf, 0x20u);

      domainName4 = [(MBRestoreDomainEngine *)self domainName];
      _MBLog();
    }
  }
}

- (BOOL)_placeDirectories:(id *)directories
{
  if (!directories)
  {
    __assert_rtn("[MBRestoreDomainEngine _placeDirectories:]", "MBRestoreDomainEngine.m", 463, "error");
  }

  directoriesCopy = directories;
  v5 = +[NSDate now];
  plan = self->_plan;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10024FDA8;
  v10[3] = &unk_1003C23D0;
  v10[4] = self;
  LOBYTE(directoriesCopy) = [(MBRestoreDomainPlan *)plan enumerateAndMarkNotStartedDirectoriesTopDown:directoriesCopy enumerator:v10];
  performer = self->_performer;
  v8 = +[NSDate now];
  [(MBRestorePerformer *)performer recordPlacingDurationWithStart:v5 end:v8];

  return directoriesCopy;
}

- (BOOL)_placeAssets:(id *)assets
{
  if (!assets)
  {
    __assert_rtn("[MBRestoreDomainEngine _placeAssets:]", "MBRestoreDomainEngine.m", 484, "error");
  }

  assetsCopy = assets;
  v5 = +[NSDate now];
  plan = self->_plan;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100250008;
  v10[3] = &unk_1003C2420;
  v10[4] = self;
  LOBYTE(assetsCopy) = [(MBRestoreDomainPlan *)plan enumerateAndMarkUnfinishedAssets:assetsCopy enumerator:v10];
  performer = self->_performer;
  v8 = +[NSDate now];
  [(MBRestorePerformer *)performer recordPlacingDurationWithStart:v5 end:v8];

  return assetsCopy;
}

- (BOOL)_placeZeroByteFiles:(id *)files
{
  if (!files)
  {
    __assert_rtn("[MBRestoreDomainEngine _placeZeroByteFiles:]", "MBRestoreDomainEngine.m", 506, "error");
  }

  filesCopy = files;
  v5 = +[NSDate now];
  plan = self->_plan;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002502CC;
  v10[3] = &unk_1003C2470;
  v10[4] = self;
  LOBYTE(filesCopy) = [(MBRestoreDomainPlan *)plan enumerateAndMarkUnfinishedZeroByteFiles:filesCopy enumerator:v10];
  performer = self->_performer;
  v8 = +[NSDate now];
  [(MBRestorePerformer *)performer recordPlacingDurationWithStart:v5 end:v8];

  return filesCopy;
}

- (BOOL)_placeSymlinks:(id *)symlinks
{
  if (!symlinks)
  {
    __assert_rtn("[MBRestoreDomainEngine _placeSymlinks:]", "MBRestoreDomainEngine.m", 527, "error");
  }

  symlinksCopy = symlinks;
  v5 = +[NSDate now];
  plan = self->_plan;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10025053C;
  v10[3] = &unk_1003C2498;
  v10[4] = self;
  LOBYTE(symlinksCopy) = [(MBRestoreDomainPlan *)plan enumerateAndMarkUnfinishedSymlinks:symlinksCopy enumerator:v10];
  performer = self->_performer;
  v8 = +[NSDate now];
  [(MBRestorePerformer *)performer recordPlacingDurationWithStart:v5 end:v8];

  return symlinksCopy;
}

- (BOOL)_fixUpDirectoryAttributes:(id *)attributes
{
  if (!attributes)
  {
    __assert_rtn("[MBRestoreDomainEngine _fixUpDirectoryAttributes:]", "MBRestoreDomainEngine.m", 549, "error");
  }

  attributesCopy = attributes;
  v5 = +[NSDate now];
  plan = self->_plan;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100250800;
  v10[3] = &unk_1003C23D0;
  v10[4] = self;
  LOBYTE(attributesCopy) = [(MBRestoreDomainPlan *)plan enumerateAndMarkPlacedDirectoriesBottomUp:attributesCopy enumerator:v10];
  performer = self->_performer;
  v8 = +[NSDate now];
  [(MBRestorePerformer *)performer recordPlacingDurationWithStart:v5 end:v8];

  return attributesCopy;
}

- (unint64_t)_restoreRestorable:(id)restorable error:(id *)error actionBlock:(id)block
{
  restorableCopy = restorable;
  blockCopy = block;
  if (!restorableCopy)
  {
    __assert_rtn("[MBRestoreDomainEngine _restoreRestorable:error:actionBlock:]", "MBRestoreDomainEngine.m", 571, "restorable");
  }

  if (!error)
  {
    __assert_rtn("[MBRestoreDomainEngine _restoreRestorable:error:actionBlock:]", "MBRestoreDomainEngine.m", 572, "error");
  }

  v10 = blockCopy;
  if (!blockCopy)
  {
    __assert_rtn("[MBRestoreDomainEngine _restoreRestorable:error:actionBlock:]", "MBRestoreDomainEngine.m", 573, "actionBlock");
  }

  if (![(MBStatefulEngine *)self handleCancelation:error])
  {
    v34 = 0;
    if (![(MBRestoreDomainEngine *)self _shouldRestore:&v34 restorable:restorableCopy error:error])
    {
      progressModel = MBGetDefaultLog();
      if (os_log_type_enabled(progressModel, OS_LOG_TYPE_ERROR))
      {
        v13 = *error;
        *buf = 138412546;
        v36 = restorableCopy;
        v37 = 2112;
        v38 = v13;
        _os_log_impl(&_mh_execute_header, progressModel, OS_LOG_TYPE_ERROR, "=domain-engine= Failed determining if %@ should be restored: %@", buf, 0x16u);
        v31 = *error;
        _MBLog();
      }

      goto LABEL_12;
    }

    if ((v34 & 1) == 0)
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = restorableCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=domain-engine= Skipping restore of %@", buf, 0xCu);
        _MBLog();
      }

      progressModel = [(MBRestoreDomainEngine *)self progressModel];
      [progressModel updatingProgress:1 previousProgress:1.0 size:0.0];
      v11 = 2;
      goto LABEL_16;
    }

    if ((v10)[2](v10, error))
    {
      progressModel = [(MBRestoreDomainEngine *)self progressModel];
      [progressModel updatingProgress:1 previousProgress:1.0 size:0.0];
      v11 = 5;
LABEL_16:

      goto LABEL_17;
    }

    progressModel = *error;
    if (![MBError isError:progressModel withCode:4])
    {
LABEL_12:
      v11 = 6;
      goto LABEL_16;
    }

    if ([(MBRestoreDepot *)self->_depot wasDisposed])
    {
      *error = [MBError errorWithCode:202 format:@"Depot was disposed (Domain restore cancelled)"];
      goto LABEL_12;
    }

    serviceRestoreMode = [(MBRestorePolicy *)self->_policy serviceRestoreMode];
    isBackgroundApp = [serviceRestoreMode isBackgroundApp];

    if (!isBackgroundApp)
    {
      goto LABEL_12;
    }

    serviceRestoreMode2 = [(MBRestorePolicy *)self->_policy serviceRestoreMode];
    bundleID = [serviceRestoreMode2 bundleID];

    appManager = [(MBRestorePolicy *)self->_policy appManager];
    persona = [(MBRestorePolicy *)self->_policy persona];
    v33 = 0;
    v32 = bundleID;
    v22 = [appManager fetchAppWithIdentifier:bundleID persona:persona error:&v33];
    v23 = v33;

    if (v22)
    {
      v24 = +[NSFileManager defaultManager];
      v25 = [v24 fileExistsAtPath:self->_restoreRootPath];

      if ((v25 & 1) == 0)
      {
        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          restoreRootPath = self->_restoreRootPath;
          *buf = 138412290;
          v36 = restoreRootPath;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=domain-engine= Restore root does not exist at %@", buf, 0xCu);
          v30 = self->_restoreRootPath;
          _MBLog();
        }

        v28 = [MBError errorWithCode:245 path:self->_restoreRootPath format:@"Restore root does not exist"];
LABEL_31:
        *error = v28;
      }
    }

    else if ([MBError isError:v23 withCode:245])
    {
      v29 = MBGetDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v36 = v32;
        v37 = 2112;
        v38 = v23;
        v39 = 2112;
        v40 = progressModel;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "=domain-engine= App %@ was uninstalled while a it was being restored, reporting %@ instead of %@ ", buf, 0x20u);
        _MBLog();
      }

      v28 = v23;
      goto LABEL_31;
    }

    goto LABEL_12;
  }

  v11 = 1;
LABEL_17:

  return v11;
}

- (BOOL)_shouldRestore:(BOOL *)restore restorable:(id)restorable error:(id *)error
{
  restorableCopy = restorable;
  if (!restore)
  {
    __assert_rtn("[MBRestoreDomainEngine _shouldRestore:restorable:error:]", "MBRestoreDomainEngine.m", 619, "shouldRestoreOut");
  }

  v9 = restorableCopy;
  if (!restorableCopy)
  {
    __assert_rtn("[MBRestoreDomainEngine _shouldRestore:restorable:error:]", "MBRestoreDomainEngine.m", 620, "restorable");
  }

  if (!error)
  {
    __assert_rtn("[MBRestoreDomainEngine _shouldRestore:restorable:error:]", "MBRestoreDomainEngine.m", 621, "error");
  }

  v18 = 0;
  policy = self->_policy;
  v17 = 0;
  v11 = [(MBRestorePolicy *)policy shouldRestoreFile:v9 markFileAsSkipped:&v18 error:&v17];
  v12 = v17;
  v13 = v12;
  if (v11)
  {
    v14 = 1;
    *restore = 1;
  }

  else if (v18 == 1 || !v12 || ([MBError isError:v12 withCode:213]& 1) != 0)
  {
    *restore = 0;
    v14 = 1;
  }

  else
  {
    v16 = v13;
    v14 = 0;
    *error = v13;
  }

  return v14;
}

- (BOOL)_verify:(id *)_verify
{
  if (!_verify)
  {
    __assert_rtn("[MBRestoreDomainEngine _verify:]", "MBRestoreDomainEngine.m", 645, "error");
  }

  if (self->_verifier)
  {
    Current = CFAbsoluteTimeGetCurrent();
    verifier = self->_verifier;
    restoreRootPath = self->_restoreRootPath;
    plan = self->_plan;
    v25 = 0;
    v9 = [(MBRestoreSnapshotIntegrityVerifier *)verifier verifyContainerizedDataAfterBackgroundRestore:restoreRootPath domainPlan:plan error:&v25];
    v10 = v25;
    v11 = CFAbsoluteTimeGetCurrent() - Current;
    v12 = MBGetDefaultLog();
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        domainName = [(MBRestoreDomainEngine *)self domainName];
        *buf = 138543618;
        v27 = domainName;
        v28 = 2048;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=domain-engine= %{public}@: Restore verification passed in %0.3fs", buf, 0x16u);

        domainName2 = [(MBRestoreDomainEngine *)self domainName];
        _MBLog();
      }

LABEL_13:
      v15 = 1;
      goto LABEL_14;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      domainName3 = [(MBRestoreDomainEngine *)self domainName];
      *buf = 138543874;
      v27 = domainName3;
      v28 = 2048;
      v29 = v11;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=domain-engine= %{public}@: Restore verification failed in %0.3fs: %@", buf, 0x20u);

      domainName4 = [(MBRestoreDomainEngine *)self domainName];
      _MBLog();
    }

    v18 = +[MBBehaviorOptions sharedOptions];
    isAutomation = [v18 isAutomation];

    if (!isAutomation)
    {
      goto LABEL_13;
    }

    v20 = v10;
    v15 = 0;
    *_verify = v10;
  }

  else
  {
    v10 = MBGetDefaultLog();
    v15 = 1;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      domainName5 = [(MBRestoreDomainEngine *)self domainName];
      *buf = 138543362;
      v27 = domainName5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=domain-engine= %{public}@: Skipped restore verification", buf, 0xCu);

      domainName6 = [(MBRestoreDomainEngine *)self domainName];
      _MBLog();
    }
  }

LABEL_14:

  return v15;
}

- (BOOL)_finalize:(id *)_finalize
{
  if (!_finalize)
  {
    __assert_rtn("[MBRestoreDomainEngine _finalize:]", "MBRestoreDomainEngine.m", 674, "error");
  }

  if (![(MBRestoreDomainPlan *)self->_plan setDomainState:10 error:_finalize])
  {
    return 0;
  }

  v5 = [(MBRestoreDomainPlan *)self->_plan countsOfRestorablesByState:_finalize];
  v6 = v5 != 0;
  if (v5)
  {
    Current = CFAbsoluteTimeGetCurrent();
    startTime = self->_startTime;
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      domainName = [(MBRestoreDomainEngine *)self domainName];
      v11 = MBDescriptionForStateSummaryDictionary(v5);
      *buf = 138543874;
      v16 = domainName;
      v17 = 2048;
      v18 = Current - startTime;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=domain-engine= %{public}@: Completed restore in %0.3fs: %@", buf, 0x20u);

      domainName2 = [(MBRestoreDomainEngine *)self domainName];
      v14 = MBDescriptionForStateSummaryDictionary(v5);
      _MBLog();
    }
  }

  return v6;
}

- (id)restoringBundleID
{
  serviceRestoreMode = [(MBRestorePolicy *)self->_policy serviceRestoreMode];
  if ([serviceRestoreMode isBackgroundApp])
  {
    bundleID = [serviceRestoreMode bundleID];
  }

  else
  {
    bundleID = 0;
  }

  return bundleID;
}

@end