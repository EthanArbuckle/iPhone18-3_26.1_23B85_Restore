@interface MBCKEngine
- (BOOL)_refreshCacheWithDevice:(id)a3 operationTracker:(id)a4 refreshState:(id)a5 error:(id *)a6;
- (BOOL)_refreshSnapshot:(id)a3 operationTracker:(id)a4 refreshState:(id)a5 error:(id *)a6;
- (BOOL)_refreshSnapshot:(id)a3 operationTracker:(id)a4 refreshState:(id)a5 fileToDomainCache:(id)a6 error:(id *)a7;
- (BOOL)_verifySnapshotManifests:(id)a3 operationTracker:(id)a4 summary:(id)a5 shouldOutput:(BOOL)a6;
- (BOOL)backsUpPrimaryAccount;
- (BOOL)cancelWithError:(id)a3;
- (BOOL)fetchDeviceToDeviceEncryptionSupportedByAccount:(BOOL *)a3 error:(id *)a4;
- (BOOL)handleCancelation:(id *)a3;
- (BOOL)hasError;
- (BOOL)isNetworkAvailable;
- (BOOL)refreshCacheWithError:(id *)a3;
- (BOOL)setUpWithError:(id *)a3;
- (MBCKEngine)initWithSettingsContext:(id)a3 debugContext:(id)a4 domainManager:(id)a5;
- (MBCKManager)serviceManager;
- (MBCKOperationTracker)ckOperationTracker;
- (MBProgressModel)progressModel;
- (MBRetryStrategy)multistateRetryStrategy;
- (MBRetryStrategy)retryStrategy;
- (id)setUpOperationTrackerWithError:(id *)a3;
- (void)dealloc;
- (void)makeStateTransition;
- (void)performRetryablePhase:(id)a3;
- (void)replenishRetryTokens;
- (void)run;
- (void)setCkOperationTracker:(id)a3;
@end

@implementation MBCKEngine

- (MBCKEngine)initWithSettingsContext:(id)a3 debugContext:(id)a4 domainManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 account];
  if (!v12)
  {
    __assert_rtn("[MBCKEngine initWithSettingsContext:debugContext:domainManager:]", "MBCKEngine.m", 50, "account");
  }

  v13 = v12;
  v21.receiver = self;
  v21.super_class = MBCKEngine;
  v14 = [(MBEngine *)&v21 initWithSettingsContext:v9 debugContext:v10 domainManager:v11];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_context, a3);
    objc_storeStrong(&v15->super._settingsContext, a3);
    objc_storeStrong(&v15->_serviceAccount, v13);
    [(MBCKEngine *)v15 setShouldAdvanceState:1];
    if ([v10 isFlagSet:@"VerifyProgress"])
    {
      [(MBCKEngine *)v15 setVerifyProgressModel:1];
    }

    v16 = objc_alloc_init(NSMutableDictionary);
    performanceStatistics = v15->_performanceStatistics;
    v15->_performanceStatistics = v16;

    v15->_qualityOfService = 17;
    v18 = objc_opt_new();
    [(MBCKEngine *)v15 setCkOperationPolicy:v18];
    v19 = [v18 operationGroupWithName:0];
    [(MBCKEngine *)v15 setCkOperationGroup:v19];
  }

  return v15;
}

- (void)dealloc
{
  [(MBCKOperationTracker *)self->_ckOperationTracker removeEngine:self];
  v3.receiver = self;
  v3.super_class = MBCKEngine;
  [(MBCKEngine *)&v3 dealloc];
}

- (MBCKOperationTracker)ckOperationTracker
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_ckOperationTracker;
  objc_sync_exit(v2);

  return v3;
}

- (void)setCkOperationTracker:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  ckOperationTracker = v5->_ckOperationTracker;
  v5->_ckOperationTracker = v4;
  v7 = v4;

  objc_sync_exit(v5);
  [(MBCKOperationTracker *)v7 addEngine:v5];
}

- (BOOL)hasError
{
  v2 = [(MBCKEngine *)self engineError];
  v3 = v2 != 0;

  return v3;
}

- (MBProgressModel)progressModel
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_progressModel)
  {
    v3 = objc_opt_new();
    progressModel = v2->_progressModel;
    v2->_progressModel = v3;

    if ([(MBCKEngine *)v2 verifyProgressModel])
    {
      [(MBProgressModel *)v2->_progressModel setVerify:1];
    }
  }

  objc_sync_exit(v2);

  v5 = v2->_progressModel;

  return v5;
}

- (MBRetryStrategy)retryStrategy
{
  v2 = self;
  objc_sync_enter(v2);
  retryStrategy = v2->_retryStrategy;
  if (!retryStrategy)
  {
    v4 = [[MBRetryStrategy alloc] initWithEngine:v2];
    v5 = v2->_retryStrategy;
    v2->_retryStrategy = v4;

    retryStrategy = v2->_retryStrategy;
  }

  v6 = retryStrategy;
  objc_sync_exit(v2);

  return v6;
}

- (MBRetryStrategy)multistateRetryStrategy
{
  v2 = self;
  objc_sync_enter(v2);
  multistateRetryStrategy = v2->_multistateRetryStrategy;
  if (!multistateRetryStrategy)
  {
    v4 = [[MBRetryStrategy alloc] initWithEngine:v2];
    v5 = v2->_multistateRetryStrategy;
    v2->_multistateRetryStrategy = v4;

    multistateRetryStrategy = v2->_multistateRetryStrategy;
  }

  v6 = multistateRetryStrategy;
  objc_sync_exit(v2);

  return v6;
}

- (void)run
{
  *&v3 = atomic_fetch_add_explicit(&dword_100421650, 1u, memory_order_relaxed);
  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MBEngine *)self engineModeString];
    v8 = [(MBCKEngine *)self persona];
    v9 = [v8 personaName];
    *buf = 138543874;
    v67 = v7;
    v68 = 2048;
    v69 = v3;
    v70 = 2112;
    v71 = *&v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "========== %{public}@ starting (%ld) for %@ persona", buf, 0x20u);

    v10 = [(MBEngine *)self engineModeString];
    v11 = [(MBCKEngine *)self persona];
    [v11 personaName];
    v53 = v51 = v3;
    v49 = v10;
    _MBLog();
  }

  if (![(MBEngine *)self isBackgroundRestore])
  {
    MBLogDeviceProperties();
  }

  v12 = [(MBCKEngine *)self stateChange:v49];
  if (!v12)
  {
    __assert_rtn("[MBCKEngine run]", "MBCKEngine.m", 151, "stateChange");
  }

  v13 = __ROR8__([(MBCKEngine *)self qualityOfService]- 9, 3);
  if (v13 > 3)
  {
    v14 = QOS_CLASS_DEFAULT;
  }

  else
  {
    v14 = dword_1002B9D90[v13];
  }

  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_queue_attr_make_with_qos_class(v15, v14, 0);

  v17 = dispatch_queue_create("com.apple.backupd.stateChange", v16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007FDB4;
  block[3] = &unk_1003BCB38;
  v18 = v12;
  v65 = v18;
  dispatch_sync(v17, block);
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_10007FDD0;
  v61[3] = &unk_1003BCB88;
  v19 = v17;
  v62 = v19;
  v20 = v18;
  v63 = v20;
  v21 = [(MBCKEngine *)self progressModel];
  [v21 setBlock:v61];

  v60 = 0;
  v22 = [(MBCKEngine *)self runWithError:&v60];
  v23 = v60;
  v24 = [(MBCKEngine *)self progressModel];
  [v24 setBlock:0];

  [(MBCKCache *)self->_cache flush];
  +[NSDate timeIntervalSinceReferenceDate];
  v26 = v25 - v5;
  if ([(MBEngine *)self isCanceled])
  {
    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(MBEngine *)self engineModeString];
      *buf = 138412546;
      v67 = v28;
      v68 = 2048;
      v69 = v3;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "========== %@ cancelled (%ld)", buf, 0x16u);

      v50 = [(MBEngine *)self engineModeString];
      v52 = v3;
      _MBLog();
    }

    v29 = [(MBEngine *)self cancelError];

    if (!v29)
    {
      __assert_rtn("[MBCKEngine run]", "MBCKEngine.m", 181, "localError");
    }

    v30 = 4;
    goto LABEL_29;
  }

  if (v22)
  {

    v31 = MBGetDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [(MBEngine *)self engineModeString];
      *buf = 138412802;
      v67 = v32;
      v68 = 2048;
      v69 = v26;
      v70 = 2048;
      v71 = v3;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "========== %@ finished in %0.3fs (%ld)", buf, 0x20u);

      [(MBEngine *)self engineModeString];
      v54 = v3;
      v50 = v52 = v26;
      _MBLog();
    }

    if (self->_performanceStatistics)
    {
      v33 = [NSNumber numberWithDouble:v26];
      [(NSMutableDictionary *)self->_performanceStatistics setObject:v33 forKeyedSubscript:@"TotalDuration"];
    }

    v29 = 0;
    v30 = 2;
    goto LABEL_29;
  }

  if ([(MBEngine *)self isRestoreEngine]&& [MBError isRetryableRestoreError:v23])
  {
    v34 = MBGetDefaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [(MBEngine *)self engineModeString];
      [MBError loggableDescriptionForError:v23];
      v36 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v37 = [MBError descriptionForError:v23];
      *buf = 138413058;
      v67 = v35;
      v68 = 2114;
      v69 = v36;
      v70 = 2112;
      v71 = *&v37;
      v72 = 2048;
      v73 = v3;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "========== %@ encountered a retryable error: %{public}@, %@ (%ld)", buf, 0x2Au);

      v38 = [(MBEngine *)self engineModeString];
      [MBError loggableDescriptionForError:v23];
      v39 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v40 = [MBError descriptionForError:v23];
      v54 = *&v40;
      v55 = v3;
      v50 = v38;
      v52 = v39;
      _MBLog();
LABEL_26:
    }
  }

  else
  {
    v34 = MBGetDefaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v41 = [(MBEngine *)self engineModeString];
      [MBError loggableDescriptionForError:v23];
      v42 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v43 = [MBError descriptionForError:v23];
      *buf = 138413058;
      v67 = v41;
      v68 = 2114;
      v69 = v42;
      v70 = 2112;
      v71 = *&v43;
      v72 = 2048;
      v73 = v3;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "========== %@ failed: %{public}@, %@ (%ld)", buf, 0x2Au);

      v38 = [(MBEngine *)self engineModeString];
      [MBError loggableDescriptionForError:v23];
      v39 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v40 = [MBError descriptionForError:v23];
      v54 = *&v40;
      v55 = v3;
      v50 = v38;
      v52 = v39;
      _MBLog();
      goto LABEL_26;
    }
  }

  if (!v23)
  {
    __assert_rtn("[MBCKEngine run]", "MBCKEngine.m", 193, "localError");
  }

  v30 = 4;
  v29 = v23;
LABEL_29:
  [(MBCKEngine *)self sendEngineCompletionTelemetry:v29 duration:v26, v50, *&v52, *&v54, *&v55];
  v44 = dispatch_group_create();
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_10007FE88;
  v56[3] = &unk_1003BCBB0;
  v45 = v20;
  v58 = v45;
  v59 = v30;
  v46 = v29;
  v57 = v46;
  dispatch_group_async(v44, v19, v56);
  v47 = dispatch_time(0, 14700000000000);
  if (dispatch_group_wait(v44, v47))
  {
    __assert_rtn("[MBCKEngine run]", "MBCKEngine.m", 216, "result == 0");
  }

  [(MBCKEngine *)self setStateChange:0];
  v48 = [(MBCKEngine *)self ckOperationTracker];
  [v48 drain];
}

- (BOOL)cancelWithError:(id)a3
{
  v9.receiver = self;
  v9.super_class = MBCKEngine;
  v4 = [(MBEngine *)&v9 cancelWithError:a3];
  if (!v4)
  {
    v5 = [(MBCKEngine *)self ckOperationTracker];
    [v5 cancel];

    v6 = [(MBCKEngine *)self retryStrategy];
    [v6 cancel];

    v7 = [(MBCKEngine *)self multistateRetryStrategy];
    [v7 cancel];
  }

  return v4;
}

- (BOOL)handleCancelation:(id *)a3
{
  v5 = [(MBEngine *)self isCanceled];
  if (v5)
  {
    v6 = [(MBEngine *)self cancelError];
    if (!v6)
    {
      __assert_rtn("[MBCKEngine handleCancelation:]", "MBCKEngine.m", 239, "cancelError");
    }

    v7 = v6;
    [(MBCKEngine *)self cleanUpAfterError:v6];
    if (a3)
    {
      v8 = v7;
      *a3 = v7;
    }
  }

  return v5;
}

- (BOOL)_refreshSnapshot:(id)a3 operationTracker:(id)a4 refreshState:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    __assert_rtn("[MBCKEngine _refreshSnapshot:operationTracker:refreshState:error:]", "MBCKEngine.m", 247, "snapshot");
  }

  v13 = v12;
  if ([v10 snapshotFormat] == 3)
  {
    v14 = 1;
  }

  else
  {
    v15 = [(MBCKEngine *)self cache];
    v16 = [v15 path];
    v17 = [v16 stringByDeletingLastPathComponent];

    v18 = [[MBCKRefreshManifestDomainCache alloc] initWithCacheDirPath:v17 error:a6];
    if (v18)
    {
      v14 = [(MBCKEngine *)self _refreshSnapshot:v10 operationTracker:v11 refreshState:v13 fileToDomainCache:v18 error:a6];
      v23 = 0;
      v19 = [(MBCKRefreshManifestDomainCache *)v18 close:&v23];
      v20 = v23;
      if ((v19 & 1) == 0)
      {
        v21 = MBGetDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v25 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Error closing file to domain cache: %@", buf, 0xCu);
          _MBLog();
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14 & 1;
}

- (BOOL)_refreshSnapshot:(id)a3 operationTracker:(id)a4 refreshState:(id)a5 fileToDomainCache:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v74 = a6;
  v81 = v10;
  if (!v10)
  {
    __assert_rtn("[MBCKEngine _refreshSnapshot:operationTracker:refreshState:fileToDomainCache:error:]", "MBCKEngine.m", 270, "snapshot");
  }

  if (!v11)
  {
    __assert_rtn("[MBCKEngine _refreshSnapshot:operationTracker:refreshState:fileToDomainCache:error:]", "MBCKEngine.m", 271, "tracker");
  }

  if (!v12)
  {
    __assert_rtn("[MBCKEngine _refreshSnapshot:operationTracker:refreshState:fileToDomainCache:error:]", "MBCKEngine.m", 272, "refreshState");
  }

  if (!a7)
  {
    __assert_rtn("[MBCKEngine _refreshSnapshot:operationTracker:refreshState:fileToDomainCache:error:]", "MBCKEngine.m", 273, "error");
  }

  v75 = v11;
  v76 = v12;
  v80 = [(MBCKEngine *)self cache];
  if (!v80)
  {
    __assert_rtn("[MBCKEngine _refreshSnapshot:operationTracker:refreshState:fileToDomainCache:error:]", "MBCKEngine.m", 276, "cache");
  }

  v77 = [v10 snapshotID];
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v77;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Refreshing snapshot %{public}@", buf, 0xCu);
    v66 = v77;
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v15 = v14;
  if ([(MBCKEngine *)self handleCancelation:a7])
  {
    goto LABEL_9;
  }

  if (![v12 hasRefreshedSnapshotID:v77])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v149 = sub_100081454;
    v150 = sub_100081464;
    v151 = 0;
    v137 = 0;
    v138 = &v137;
    v139 = 0x3032000000;
    v140 = sub_100081454;
    v141 = sub_100081464;
    v142 = 0;
    v106 = 0;
    v107 = &v106;
    v108 = 0x2020000000;
    v109 = 0;
    *v143 = 0;
    *&v143[8] = v143;
    *&v143[16] = 0x2020000000;
    v144 = 0;
    v133 = 0;
    v134 = &v133;
    v135 = 0x2020000000;
    v136 = 0;
    v19 = dispatch_group_create();
    dispatch_group_enter(v19);
    v128[0] = _NSConcreteStackBlock;
    v128[1] = 3221225472;
    v128[2] = sub_10008146C;
    v128[3] = &unk_1003BCBD8;
    v128[4] = self;
    v130 = v143;
    v131 = &v133;
    v72 = v74;
    v129 = v72;
    v132 = &v137;
    v124[0] = _NSConcreteStackBlock;
    v124[1] = 3221225472;
    v124[2] = sub_1000816AC;
    v124[3] = &unk_1003BCC00;
    v124[4] = self;
    v126 = &v137;
    v127 = &v106;
    v125 = v77;
    v117[0] = _NSConcreteStackBlock;
    v117[1] = 3221225472;
    v117[2] = sub_10008194C;
    v117[3] = &unk_1003BCC28;
    v120 = buf;
    v73 = v125;
    v118 = v73;
    v121 = &v106;
    v122 = &v133;
    v123 = v143;
    v20 = v19;
    v119 = v20;
    [v10 fetchManifestsWithOperationTracker:v11 referenceFetchProgress:v128 manifestProgress:v124 snapshotCompletion:v117];
    MBGroupWaitForever();
    v21 = v138[5];
    if (v21 || (v21 = *(*&buf[8] + 40)) != 0)
    {
      v22 = 0;
      *a7 = v21;
    }

    else
    {
      v22 = 1;
    }

    _Block_object_dispose(&v133, 8);
    _Block_object_dispose(v143, 8);
    _Block_object_dispose(&v106, 8);
    _Block_object_dispose(&v137, 8);

    _Block_object_dispose(buf, 8);
    if ((v22 & 1) == 0)
    {
LABEL_9:
      if (!*a7)
      {
        __assert_rtn("[MBCKEngine _refreshSnapshot:operationTracker:refreshState:fileToDomainCache:error:]", "MBCKEngine.m", 345, "*error");
      }

      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *a7;
        *buf = 138543618;
        *&buf[4] = v77;
        *&buf[12] = 2114;
        *&buf[14] = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to refresh snapshot %{public}@: %{public}@", buf, 0x16u);
        v68 = *a7;
        _MBLog();
      }

      v18 = 0;
      goto LABEL_60;
    }

    if ([(MBEngine *)self isRestoreEngine])
    {
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v10 snapshotID];
        *buf = 138412290;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "RestoreApps: Populating restoreApps for snapshot: %@", buf, 0xCu);

        v66 = [v10 snapshotID];
        _MBLog();
      }

      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v25 = [v10 manifestsByDomainName];
      v26 = [v25 countByEnumeratingWithState:&v113 objects:v147 count:16];
      if (v26)
      {
        v27 = *v114;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v114 != v27)
            {
              objc_enumerationMutation(v25);
            }

            v29 = *(*(&v113 + 1) + 8 * i);
            v30 = objc_autoreleasePoolPush();
            v31 = [v81 manifestsByDomainName];
            v32 = [v31 objectForKeyedSubscript:v29];

            v33 = [v32 domainName];
            v34 = [v32 dependentDomainNames];
            v35 = MBGetDefaultLog();
            v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
            if (v34)
            {
              if (v36)
              {
                *buf = 138412546;
                *&buf[4] = v33;
                *&buf[12] = 2112;
                *&buf[14] = v34;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "RestoreApps: %@ -> %@", buf, 0x16u);
                v66 = v33;
                v67 = v34;
                _MBLog();
              }

              v37 = [v80 addDependentDomains:v34 forApp:v33];
            }

            else
            {
              if (v36)
              {
                *buf = 138412290;
                *&buf[4] = v33;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "RestoreApps: %@", buf, 0xCu);
                v66 = v33;
                _MBLog();
              }
            }

            objc_autoreleasePoolPop(v30);
          }

          v26 = [v25 countByEnumeratingWithState:&v113 objects:v147 count:16];
        }

        while (v26);
      }
    }

    v38 = [MBBehaviorOptions sharedOptions:v66];
    v39 = [v38 numberOfRecordsToFetchBeforeCancellingPrivilegedSnapshotDownload];

    v40 = [v81 manifestsByDomainName];
    v41 = [v40 count];

    v42 = dispatch_group_create();
    dispatch_group_enter(v42);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v149 = sub_100081454;
    v150 = sub_100081464;
    v151 = 0;
    v137 = 0;
    v138 = &v137;
    v139 = 0x3032000000;
    v140 = sub_100081454;
    v141 = sub_100081464;
    v142 = 0;
    v133 = 0;
    v134 = &v133;
    v135 = 0x2020000000;
    v136 = 0;
    v112[0] = 0;
    v112[1] = v112;
    v112[2] = 0x2020000000;
    v112[3] = 0;
    v106 = 0;
    v107 = &v106;
    v108 = 0x3032000000;
    v109 = sub_100081454;
    v110 = sub_100081464;
    v111 = [v76 queryCursorForSnapshotID:v73];
    if (v107[5])
    {
      v43 = MBGetDefaultLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v107[5];
        *v143 = 138544130;
        *&v143[4] = @"PrivilegedSnapshotDownload";
        *&v143[12] = 2114;
        *&v143[14] = v73;
        *&v143[22] = 2048;
        v144 = v41;
        v145 = 2114;
        v146 = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Resuming %{public}@ query for snapshot %{public}@ (%lu manifests) with cursor: %{public}@", v143, 0x2Au);
        v71 = v107[5];
        _MBLog();
      }

      v45 = [CKQueryOperation alloc];
      v46 = [v45 initWithCursor:v107[5]];
    }

    else
    {
      v47 = MBGetDefaultLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *v143 = 138543874;
        *&v143[4] = @"PrivilegedSnapshotDownload";
        *&v143[12] = 2114;
        *&v143[14] = v73;
        *&v143[22] = 2048;
        v144 = v41;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Starting %{public}@ query for snapshot %{public}@ (%lu manifests)", v143, 0x20u);
        _MBLog();
      }

      v48 = [v81 recordID];
      v49 = [NSPredicate predicateWithFormat:@"recordID==%@", v48];

      v50 = [[CKQuery alloc] initWithRecordType:@"PrivilegedSnapshotDownload" predicate:v49];
      v46 = [[CKQueryOperation alloc] initWithQuery:v50];
    }

    if (!v46)
    {
      __assert_rtn("[MBCKEngine _refreshSnapshot:operationTracker:refreshState:fileToDomainCache:error:]", "MBCKEngine.m", 392, "op");
    }

    if ([(MBEngine *)self isBackupEngine])
    {
      +[MBCKFile keysToFetchWithoutContents];
    }

    else
    {
      +[MBCKFile keysToFetchWithContents];
    }
    v51 = ;
    [v46 setDesiredKeys:v51];

    [v46 setFetchAllResults:1];
    [v46 setShouldFetchAssetContent:0];
    v101[0] = _NSConcreteStackBlock;
    v101[1] = 3221225472;
    v101[2] = sub_100081B28;
    v101[3] = &unk_1003BCC50;
    v104 = &v106;
    v102 = @"PrivilegedSnapshotDownload";
    v52 = v73;
    v103 = v52;
    v105 = &v133;
    [v46 setQueryCursorFetchedBlock:v101];
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_100081C54;
    v90[3] = &unk_1003BCC78;
    v100 = v39;
    v97 = &v133;
    v91 = @"PrivilegedSnapshotDownload";
    v53 = v52;
    v92 = v53;
    v93 = self;
    v94 = v72;
    v98 = &v137;
    v95 = v80;
    v54 = v81;
    v96 = v54;
    v99 = v112;
    [v46 setRecordFetchedBlock:v90];
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3221225472;
    v82[2] = sub_100082220;
    v82[3] = &unk_1003BCCA0;
    v83 = @"PrivilegedSnapshotDownload";
    v55 = v53;
    v87 = buf;
    v88 = &v133;
    v84 = v55;
    v85 = self;
    v89 = v112;
    v16 = v42;
    v86 = v16;
    [v46 setQueryCompletionBlock:v82];
    [v11 addDatabaseOperation:v46];
    MBGroupWaitForever();
    [v54 forgetManifests];
    v56 = v138[5];
    if (v56)
    {
      *a7 = v56;
    }

    else
    {
      v61 = *(*&buf[8] + 40);
      if (!v61)
      {
        [v76 addRefreshedSnapshotID:v55];
        +[NSDate timeIntervalSinceReferenceDate];
        v65 = v64;
        v58 = MBGetDefaultLog();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *v143 = 138543618;
          *&v143[4] = v55;
          *&v143[12] = 2048;
          *&v143[14] = v65 - v15;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Finished refreshing snapshot %{public}@ in %.3fs", v143, 0x16u);
          _MBLog();
        }

        v18 = 1;
        goto LABEL_59;
      }

      *a7 = v61;
      if (v107[5] && [MBError isResumableCacheRefreshError:*(*&buf[8] + 40)])
      {
        v62 = MBGetDefaultLog();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v63 = v107[5];
          *v143 = 138543618;
          *&v143[4] = v55;
          *&v143[12] = 2114;
          *&v143[14] = v63;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Updating the query cursor for snapshot %{public}@: %{public}@", v143, 0x16u);
          v70 = v107[5];
          _MBLog();
        }

        [v76 addQueryCursor:v107[5] forSnapshotID:v55];
        goto LABEL_55;
      }
    }

    v57 = MBGetDefaultLog();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *v143 = 138543362;
      *&v143[4] = v54;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Resetting the query cursor for snapshot %{public}@", v143, 0xCu);
      _MBLog();
    }

    [v76 forgetSnapshotID:v55];
LABEL_55:
    if (!*a7)
    {
      __assert_rtn("[MBCKEngine _refreshSnapshot:operationTracker:refreshState:fileToDomainCache:error:]", "MBCKEngine.m", 477, "*error");
    }

    v58 = MBGetDefaultLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = *a7;
      *v143 = 138543618;
      *&v143[4] = v55;
      *&v143[12] = 2114;
      *&v143[14] = v59;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Failed to refresh snapshot %{public}@: %{public}@", v143, 0x16u);
      v69 = *a7;
      _MBLog();
    }

    v18 = 0;
LABEL_59:

    _Block_object_dispose(&v106, 8);
    _Block_object_dispose(v112, 8);
    _Block_object_dispose(&v133, 8);
    _Block_object_dispose(&v137, 8);

    _Block_object_dispose(buf, 8);
    goto LABEL_60;
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v77;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping snapshot %{public}@ since it's was already refreshed", buf, 0xCu);
    _MBLog();
  }

  v18 = 1;
LABEL_60:

  return v18;
}

- (BOOL)_verifySnapshotManifests:(id)a3 operationTracker:(id)a4 summary:(id)a5 shouldOutput:(BOOL)a6
{
  v55 = a6;
  v62 = a3;
  v57 = a4;
  v58 = a5;
  v53 = self;
  v59 = [(MBCKEngine *)self cache];
  if (!v59)
  {
    __assert_rtn("[MBCKEngine _verifySnapshotManifests:operationTracker:summary:shouldOutput:]", "MBCKEngine.m", 485, "cache");
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v62 snapshotID];
    *buf = 138543362;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Verifying snapshot %{public}@", buf, 0xCu);

    v46 = [v62 snapshotID];
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v12 = v11;
  if ([v62 snapshotFormat] == 3)
  {
    LOBYTE(v13) = 1;
    goto LABEL_53;
  }

  [v62 manifestIDs];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  obj = v73 = 0u;
  v14 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (!v14)
  {
    v13 = 1;
    goto LABEL_48;
  }

  v15 = *v73;
  while (2)
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v73 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v72 + 1) + 8 * i);
      context = objc_autoreleasePoolPush();
      v18 = [obj indexOfObject:v17];
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = MBGetDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v17;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to find manifest %{public}@ - cannot validate cache", buf, 0xCu);
          _MBLog();
        }

LABEL_47:

        objc_autoreleasePoolPop(context);
        v13 = 0;
        goto LABEL_48;
      }

      v19 = [v17 substringFromIndex:{objc_msgSend(@"M:", "length")}];
      v71 = 0;
      v20 = [v59 checksumForManifest:v19 error:&v71];
      v21 = v71;
      v22 = [v62 manifestChecksums];
      v23 = [v22 objectAtIndexedSubscript:v18];
      v24 = [v23 longLongValue];

      if (v21)
      {
        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v19;
          *&buf[12] = 2114;
          *&buf[14] = v21;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to compute the checksum for the cached manifest %{public}@: %{public}@", buf, 0x16u);
          v46 = v19;
          v48 = v21;
          _MBLog();
        }

        goto LABEL_25;
      }

      if (v24 != v20)
      {
        v26 = [v59 countFilesForManifestID:v19 error:0];
        v25 = [v59 domainNameForManifestID:v19 error:0];
        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138544386;
          *&buf[4] = v19;
          *&buf[12] = 2114;
          *&buf[14] = v25;
          *&buf[22] = 2048;
          v78 = v24;
          *v79 = 2048;
          *&v79[2] = v20;
          *&v79[10] = 2048;
          *&v79[12] = v26;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Found a checksum mismatch for cached manifest %{public}@ %{public}@: %llx != %llx (%llu)", buf, 0x34u);
          v51 = v20;
          v52 = v26;
          v48 = v25;
          v50 = v24;
          v46 = v19;
          _MBLog();
        }

        v28 = [v62 snapshotID];
        [v58 trackVerificationFailureForSnapshot:v28 manifestID:v17 domain:v25 serverChecksum:v24 localChecksum:v20 localFileCount:v26];

LABEL_25:
        if (v55)
        {
          if (([v62 hasFetchedManifests] & 1) == 0)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v78 = sub_100081454;
            *v79 = sub_100081464;
            *&v79[8] = 0;
            v29 = dispatch_semaphore_create(0);
            v69 = buf;
            v70[0] = _NSConcreteStackBlock;
            v70[1] = 3221225472;
            v70[2] = sub_100082EB8;
            v70[3] = &unk_1003BCCC8;
            v70[4] = v53;
            v67[0] = _NSConcreteStackBlock;
            v67[1] = 3221225472;
            v67[2] = sub_100082EFC;
            v67[3] = &unk_1003BC160;
            v30 = v29;
            v68 = v30;
            [v62 fetchManifestsWithOperationTracker:v57 referenceFetchProgress:0 manifestProgress:v70 snapshotCompletion:v67];
            MBSemaphoreWaitForever();
            v31 = *(*&buf[8] + 40);

            _Block_object_dispose(buf, 8);
            v21 = v31;
          }

          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v54 = [v62 manifestsByDomainName];
          v32 = [v54 countByEnumeratingWithState:&v63 objects:v76 count:16];
          if (v32)
          {
            v56 = *v64;
LABEL_30:
            v33 = 0;
            while (1)
            {
              if (*v64 != v56)
              {
                objc_enumerationMutation(v54);
              }

              v34 = *(*(&v63 + 1) + 8 * v33);
              v35 = [v62 manifestsByDomainName];
              v36 = [v35 objectForKeyedSubscript:v34];

              v37 = [v36 manifestID];
              LOBYTE(v34) = [v37 isEqualToString:v19];

              if (v34)
              {
                break;
              }

              if (v32 == ++v33)
              {
                v32 = [v54 countByEnumeratingWithState:&v63 objects:v76 count:16];
                if (v32)
                {
                  goto LABEL_30;
                }

                goto LABEL_36;
              }
            }
          }

          else
          {
LABEL_36:
            v36 = 0;
          }

          v38 = MBGetDefaultLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = [v36 domainName];
            *buf = 138544130;
            *&buf[4] = v17;
            *&buf[12] = 2114;
            *&buf[14] = v39;
            *&buf[22] = 2048;
            v78 = v20;
            *v79 = 2048;
            *&v79[2] = v24;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Manifest %{public}@ (%{public}@) may be corrupted in the cache: 0x%llx != 0x%llx", buf, 0x2Au);

            v49 = [v36 domainName];
            _MBLog();
          }

          if (MBIsInternalInstall() && !dword_100421654 && !atomic_fetch_add_explicit(&dword_100421654, 1u, memory_order_relaxed))
          {
            v40 = MBGetDefaultLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_FAULT, "Snapshot did not verify", buf, 2u);
              _MBLog();
            }
          }
        }

        goto LABEL_47;
      }

      objc_autoreleasePoolPop(context);
    }

    v14 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
    v13 = 1;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_48:

  +[NSDate timeIntervalSinceReferenceDate];
  v42 = v41;
  v43 = MBGetDefaultLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [v62 snapshotID];
    *buf = 138543874;
    *&buf[4] = v44;
    *&buf[12] = 2048;
    *&buf[14] = v42 - v12;
    *&buf[22] = 1024;
    LODWORD(v78) = v13;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Finished verifying snapshot %{public}@ in %.3fs: %d", buf, 0x1Cu);

    v47 = [v62 snapshotID];
    _MBLog();
  }

  if (v13)
  {
    [v62 forgetManifests];
  }

LABEL_53:
  return v13;
}

- (BOOL)_refreshCacheWithDevice:(id)a3 operationTracker:(id)a4 refreshState:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v190 = a5;
  if (!v10)
  {
    __assert_rtn("[MBCKEngine _refreshCacheWithDevice:operationTracker:refreshState:error:]", "MBCKEngine.m", 558, "device");
  }

  v187 = v11;
  if (!v11)
  {
    __assert_rtn("[MBCKEngine _refreshCacheWithDevice:operationTracker:refreshState:error:]", "MBCKEngine.m", 559, "tracker");
  }

  if (!v190)
  {
    __assert_rtn("[MBCKEngine _refreshCacheWithDevice:operationTracker:refreshState:error:]", "MBCKEngine.m", 560, "refreshState");
  }

  if (!a6)
  {
    __assert_rtn("[MBCKEngine _refreshCacheWithDevice:operationTracker:refreshState:error:]", "MBCKEngine.m", 561, "error");
  }

  v12 = [(MBCKEngine *)self serviceManager];
  if (!v12)
  {
    __assert_rtn("[MBCKEngine _refreshCacheWithDevice:operationTracker:refreshState:error:]", "MBCKEngine.m", 563, "serviceManager");
  }

  v13 = v12;
  v14 = [v11 account];
  if (!v14)
  {
    __assert_rtn("[MBCKEngine _refreshCacheWithDevice:operationTracker:refreshState:error:]", "MBCKEngine.m", 565, "serviceAccount");
  }

  v15 = v14;
  v16 = objc_opt_new();
  stateDescription = self->_stateDescription;
  self->_stateDescription = v16;

  if ([(MBCKEngine *)self handleCancelation:a6])
  {
    LOBYTE(v18) = 0;
    goto LABEL_203;
  }

  v183 = a6;
  v19 = [(MBCKEngine *)self cache];
  v20 = v19;
  if (!v19)
  {
    [MBError errorWithCode:1 format:@"nil cache"];
    *a6 = LOBYTE(v18) = 0;
    goto LABEL_202;
  }

  v180 = v15;
  [v19 beginBatch];
  v193 = self;
  v21 = objc_opt_new();
  [(MBCKEngine *)v193 setCacheRefreshSummary:v21];
  v22 = [(MBCKEngine *)v193 context];
  v23 = [v22 backupUDID];
  v24 = MBDeviceUUID();
  v25 = [v23 isEqualToString:v24];

  v181 = v21;
  if (v25)
  {
    [MBCKJournal journalForDevice:v10 cache:v20 engine:v193];
    v234 = 0;
    obj = v233 = 0;
    v26 = [obj replayWithOperationTracker:v187 actionCount:&v234 error:&v233];
    v27 = v233;
    [v21 setJournalActionCount:v234];
    if ((v26 & 1) == 0 && v27)
    {
      v28 = v27;
      *v183 = v27;
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v237 = *&v27;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to replay journal %@", buf, 0xCu);
        _MBLog();
      }

      LOBYTE(v18) = 0;
      v15 = v180;
      goto LABEL_200;
    }

    [v21 setJournalReplaySucceeded:v26];
  }

  if (([v10 hasFetchedSnapshots] & 1) == 0)
  {
    if (![v10 fetchSnapshotsWithOperationTracker:v187 error:v183])
    {
      LOBYTE(v18) = 0;
      v15 = v180;
      goto LABEL_201;
    }

    v29 = [(MBEngine *)v193 watchdog];
    [v29 resume];
  }

  v195 = v20;
  v177 = v13;
  v30 = [v10 snapshots];
  v176 = v10;
  v31 = [v10 snapshots];
  [v21 setServerSnapshotCount:{objc_msgSend(v31, "count")}];

  v32 = +[NSDate date];
  [v32 timeIntervalSinceReferenceDate];
  v34 = v33;

  v27 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v30, "count")}];
  v229 = 0u;
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  obj = v30;
  v35 = [obj countByEnumeratingWithState:&v229 objects:v248 count:16];
  v194 = v27;
  if (v35)
  {
    v36 = v35;
    v37 = *v230;
    do
    {
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v230 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v229 + 1) + 8 * i);
        v40 = objc_autoreleasePoolPush();
        v41 = MBGetDefaultLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v41;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = [v194 count];
            *buf = 134218242;
            v237 = *&v43;
            v238 = 2114;
            v239 = v39;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Found device record snapshot (%lu): %{public}@", buf, 0x16u);
          }

          v27 = v194;
          v168 = COERCE_DOUBLE([v194 count]);
          v171 = v39;
          _MBLog();
        }

        v44 = [v39 snapshotID];
        [v27 addObject:v44];

        objc_autoreleasePoolPop(v40);
      }

      v36 = [obj countByEnumeratingWithState:&v229 objects:v248 count:16];
    }

    while (v36);
  }

  v45 = MBGetDefaultLog();
  v13 = v177;
  v15 = v180;
  v20 = v195;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = v45;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [v27 count];
      *buf = 134217984;
      v237 = *&v47;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Found %lu snapshots in the device record", buf, 0xCu);
    }

    v168 = COERCE_DOUBLE([v27 count]);
    _MBLog();
  }

  v226[0] = _NSConcreteStackBlock;
  v226[1] = 3221225472;
  v226[2] = sub_100084B54;
  v226[3] = &unk_1003BCCF0;
  v197 = objc_opt_new();
  v227 = v197;
  v196 = v181;
  v228 = v196;
  v185 = [v195 enumerateSnapshots:v226];
  if (v185)
  {
    v48 = MBGetDefaultLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = v48;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v237 = *&v185;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Failed to fetch the snapshots from the local cache: %@", buf, 0xCu);
      }

      v168 = *&v185;
      _MBLog();
    }

    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v50 = v18;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Resetting the cache (failed to enumerate the snapshots from the local cache)", buf, 2u);
      }

      _MBLog();
    }

    LODWORD(v18) = [v177 resetCacheWithAccount:v180 error:v183];
    v225 = 0;
    v51 = [v177 openCacheWithAccount:v180 accessType:1 error:&v225];
    v52 = v225;
    [(MBCKEngine *)v193 setCache:v51];
    if (!v18)
    {
      v78 = v185;
      goto LABEL_199;
    }

    if (!v51)
    {
      __assert_rtn("[MBCKEngine _refreshCacheWithDevice:operationTracker:refreshState:error:]", "MBCKEngine.m", 637, "cache");
    }
  }

  v53 = MBGetDefaultLog();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = v53;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = [v197 count];
      *buf = 134217984;
      v237 = *&v55;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Found %lu snapshots in the local cache", buf, 0xCu);
    }

    v168 = COERCE_DOUBLE([v197 count]);
    _MBLog();
  }

  v56 = [v197 mutableCopy];
  [v56 minusSet:v27];
  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  v175 = v56;
  v57 = [v56 allObjects];
  v58 = [v57 countByEnumeratingWithState:&v221 objects:v247 count:16];
  v189 = v58 != 0;
  if (v58)
  {
    v59 = v58;
    v60 = *v222;
    do
    {
      for (j = 0; j != v59; j = j + 1)
      {
        if (*v222 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v221 + 1) + 8 * j);
        v63 = MBGetDefaultLog();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = v63;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v237 = *&v62;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Removing cache-only snapshot %{public}@", buf, 0xCu);
          }

          v168 = *&v62;
          _MBLog();
        }

        [v196 setCacheOnlySnapshotCount:{objc_msgSend(v196, "cacheOnlySnapshotCount") + 1}];
        v65 = [v195 removeSnapshotID:v62];
        [v197 removeObject:v62];
      }

      v59 = [v57 countByEnumeratingWithState:&v221 objects:v247 count:16];
    }

    while (v59);
  }

  v219 = 0u;
  v220 = 0u;
  v217 = 0u;
  v218 = 0u;
  v66 = obj;
  v67 = [v66 countByEnumeratingWithState:&v217 objects:v246 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v218;
    v70 = v195;
    do
    {
      for (k = 0; k != v68; k = k + 1)
      {
        if (*v218 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v72 = *(*(&v217 + 1) + 8 * k);
        v73 = objc_autoreleasePoolPush();
        v74 = [v72 snapshotID];
        if ([v197 containsObject:v74] && !-[MBCKEngine _verifySnapshotManifests:operationTracker:summary:shouldOutput:](v193, "_verifySnapshotManifests:operationTracker:summary:shouldOutput:", v72, v187, v196, 0))
        {
          v75 = MBGetDefaultLog();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            v76 = v75;
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v237 = *&v74;
              _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Removing unverified snapshot %{public}@", buf, 0xCu);
            }

            _MBLog();
          }

          [v196 setJournalVerificationErrorCount:{objc_msgSend(v196, "journalVerificationErrorCount") + 1}];
          v70 = v195;
          v77 = [v195 removeSnapshotID:v74];
          [v197 removeObject:v74];
          [v190 forgetSnapshotID:v74];
          [(NSMutableString *)v193->_stateDescription appendFormat:@"mismatch(%@), ", v74];
          v189 = 1;
        }

        objc_autoreleasePoolPop(v73);
      }

      v68 = [v66 countByEnumeratingWithState:&v217 objects:v246 count:16];
    }

    while (v68);
  }

  else
  {
    v70 = v195;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v80 = v79 - v34;
  v81 = MBGetDefaultLog();
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    v82 = v81;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v237 = v80;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Analyzed existing cache in %0.3fs", buf, 0xCu);
    }

    v168 = v80;
    _MBLog();
  }

  v83 = [NSNumber numberWithDouble:v80];
  [(NSMutableDictionary *)v193->_performanceStatistics setObject:v83 forKeyedSubscript:@"CacheAnalysis"];

  if ([v196 journalVerificationErrorCount])
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v85 = v84;
    v86 = [v70 removeAllOrphanedItems];
    +[NSDate timeIntervalSinceReferenceDate];
    v88 = v87;
    v89 = MBGetDefaultLog();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      v90 = v88 - v85;
      v91 = v89;
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v237 = v90;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Removed orphaned items in %0.3fs", buf, 0xCu);
      }

      v168 = v90;
      _MBLog();
    }
  }

  v92 = [NSDate date:*&v168];
  [v92 timeIntervalSinceReferenceDate];
  v94 = v93;

  v95 = [(MBCKEngine *)v193 progressModel];
  [v95 willTransferItemsWithSize:0 count:{objc_msgSend(v66, "count")}];

  v191 = objc_opt_new();
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  v96 = v66;
  v97 = [v96 countByEnumeratingWithState:&v213 objects:v245 count:16];
  if (v97)
  {
    v98 = v97;
    v99 = *v214;
    do
    {
      for (m = 0; m != v98; m = m + 1)
      {
        if (*v214 != v99)
        {
          objc_enumerationMutation(v96);
        }

        v101 = *(*(&v213 + 1) + 8 * m);
        v102 = [v101 snapshotID];
        v103 = [v101 productVersion];
        v104 = [v101 requiredProductVersion];
        v105 = MBGetDefaultLog();
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          v106 = v105;
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v237 = *&v102;
            v238 = 2114;
            v239 = v103;
            v240 = 2114;
            v241 = v104;
            _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "snapshot:%{public}@, productVersion:%{public}@, requiredProductVersion:%{public}@", buf, 0x20u);
          }

          v172 = v103;
          v173 = v104;
          v169 = v102;
          _MBLog();
        }

        if (v103)
        {
          [v191 setObject:v104 forKeyedSubscript:v103];
        }
      }

      v98 = [v96 countByEnumeratingWithState:&v213 objects:v245 count:16];
    }

    while (v98);
  }

  v107 = MBGetDefaultLog();
  v13 = v177;
  p_isa = &v193->super.super.isa;
  v27 = v194;
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
  {
    v109 = v107;
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v237 = *&v191;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "requiredProductVersionByProductVersion: %{public}@", buf, 0xCu);
    }

    v169 = v191;
    _MBLog();
  }

  v211 = 0u;
  v212 = 0u;
  v209 = 0u;
  v210 = 0u;
  v182 = v96;
  v110 = [v182 countByEnumeratingWithState:&v209 objects:v244 count:16];
  if (!v110)
  {
    v78 = 0;
    goto LABEL_150;
  }

  v111 = v110;
  v112 = *v210;
  v178 = *v210;
  while (2)
  {
    v113 = 0;
    v179 = v111;
    do
    {
      if (*v210 != v112)
      {
        objc_enumerationMutation(v182);
      }

      v114 = *(*(&v209 + 1) + 8 * v113);
      v115 = objc_autoreleasePoolPush();
      v116 = [v114 snapshotID];
      v117 = [v114 productVersion];
      if (v117)
      {
        v188 = [v191 objectForKeyedSubscript:v117];
      }

      else
      {
        v188 = 0;
      }

      v118 = [v114 device];
      v186 = [v118 deviceClass];

      v119 = MBGetDefaultLog();
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        v120 = v119;
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          v237 = *&v116;
          v238 = 2114;
          v239 = v117;
          v240 = 2114;
          v241 = v188;
          v242 = 2114;
          v243 = v186;
          _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "snapshot:%{public}@, productVersion:%{public}@, requiredProductVersion:%{public}@, snapshotDeviceClass:%{public}@", buf, 0x2Au);
        }

        v173 = v188;
        v174 = v186;
        v169 = v116;
        v172 = v117;
        _MBLog();
      }

      if ([(MBEngine *)v193 isRestoreEngine])
      {
        v121 = MBProductVersion();
        v122 = MBIsRestoreCompatible();

        if (!v122)
        {
          v184 = v117;
          v126 = v116;
          v78 = 0;
          goto LABEL_146;
        }
      }

      if ([(MBEngine *)v193 isBackupEngine:v169])
      {
        v123 = MBProductVersion();
        v124 = MBCompareVersionStrings();

        if (v124 == -1)
        {
          v184 = v117;
          v126 = v116;
          v78 = [MBError errorWithCode:203 format:@"Version incompatible. iCloud contains a backup for this device from a newer OS version"];
LABEL_146:
          p_isa = &v193->super.super.isa;
LABEL_149:

          objc_autoreleasePoolPop(v115);
          v13 = v177;
          goto LABEL_150;
        }
      }

      if ([v197 containsObject:v116])
      {
        v125 = MBGetDefaultLog();
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          v125 = v125;
          p_isa = &v193->super.super.isa;
          if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v237 = *&v116;
            _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "Skipping snapshot %{public}@ since it's already in the cache", buf, 0xCu);
          }

          v169 = v116;
          _MBLog();
        }

        else
        {
          p_isa = &v193->super.super.isa;
        }

        goto LABEL_140;
      }

      v184 = v117;
      v126 = v116;
      [v196 setDownloadedSnapshotCount:{objc_msgSend(v196, "downloadedSnapshotCount") + 1}];
      v208 = 0;
      v127 = [(MBCKEngine *)v193 _refreshSnapshot:v114 operationTracker:v187 refreshState:v190 error:&v208];
      v128 = v208;
      v129 = v128;
      if (!v127)
      {
        p_isa = &v193->super.super.isa;
        v78 = v128;
        goto LABEL_149;
      }

      [(NSMutableString *)v193->_stateDescription appendFormat:@"fetched(%@), ", v116];
      if ([(MBCKEngine *)v193 _verifySnapshotManifests:v114 operationTracker:v187 summary:v196 shouldOutput:1])
      {
        v125 = v129;
        v189 = 1;
        p_isa = &v193->super.super.isa;
        v112 = v178;
        v111 = v179;
      }

      else
      {
        v130 = MBGetDefaultLog();
        if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
        {
          v131 = v130;
          if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v237 = *&v116;
            _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_ERROR, "Failed to verify snapshot %{public}@", buf, 0xCu);
          }

          v169 = v116;
          _MBLog();
        }

        [v196 setDownloadedSnapshotVerificationFailureCount:{objc_msgSend(v196, "downloadedSnapshotVerificationFailureCount") + 1}];
        [v190 forgetSnapshotID:v116];
        v207 = v129;
        v132 = [(MBCKEngine *)v193 _refreshSnapshot:v114 operationTracker:v187 refreshState:v190 error:&v207];
        v125 = v207;

        if (!v132)
        {
          v78 = v125;
          p_isa = &v193->super.super.isa;
          goto LABEL_149;
        }

        [(NSMutableString *)v193->_stateDescription appendFormat:@"fetched(%@), ", v116];
        v189 = 1;
        p_isa = &v193->super.super.isa;
        v112 = v178;
        v111 = v179;
      }

      v117 = v184;
LABEL_140:

      objc_autoreleasePoolPop(v115);
      v113 = v113 + 1;
    }

    while (v111 != v113);
    v111 = [v182 countByEnumeratingWithState:&v209 objects:v244 count:16];
    v78 = 0;
    v13 = v177;
    if (v111)
    {
      continue;
    }

    break;
  }

LABEL_150:

  v15 = v180;
  v20 = v195;
  if (MBIsInternalInstall())
  {
    v133 = v196;
    if ([v196 downloadedSnapshotCount] && objc_msgSend(v196, "cachedSnapshotCount") && !dword_100421658 && !atomic_fetch_add_explicit(&dword_100421658, 1u, memory_order_relaxed))
    {
      v134 = MBGetDefaultLog();
      if (os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
      {
        v135 = v134;
        if (os_log_type_enabled(v135, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v237 = *&v196;
          _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_FAULT, "Downloaded snapshot during cache refresh: %@", buf, 0xCu);
        }

        v169 = v196;
        _MBLog();
      }

      v133 = v196;
    }

    v136 = [v180 persona];
    v137 = v133;
    v138 = v136;
    v139 = [v137 dictionaryRepresentation];
    [v138 setPreferencesValue:v139 forKey:@"WasSnapshotDownloadedDuringCacheRefresh"];
  }

  if ([p_isa handleCancelation:{v183, v169}])
  {
LABEL_162:
    LOBYTE(v18) = 0;
  }

  else if (v78)
  {
    v140 = v78;
    LOBYTE(v18) = 0;
    *v183 = v78;
  }

  else
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v142 = v141 - v94;
    v143 = [NSNumber numberWithDouble:v142];
    [p_isa[27] setObject:v143 forKeyedSubscript:@"CacheFetchTime"];

    v144 = MBGetDefaultLog();
    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
    {
      v145 = v144;
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v237 = v142;
        _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "Fetched all missing snapshots in %0.3fs", buf, 0xCu);
      }

      v170 = v142;
      _MBLog();
    }

    if (v189)
    {
      v146 = +[NSDate date];
      [v146 timeIntervalSinceReferenceDate];
      v148 = v147;

      v205 = 0u;
      v206 = 0u;
      v203 = 0u;
      v204 = 0u;
      v149 = v182;
      v150 = [v149 countByEnumeratingWithState:&v203 objects:v235 count:16];
      if (v150)
      {
        v151 = v150;
        v152 = 0;
        v153 = *v204;
        do
        {
          for (n = 0; n != v151; n = n + 1)
          {
            if (*v204 != v153)
            {
              objc_enumerationMutation(v149);
            }

            v152 |= [p_isa _verifySnapshotManifests:*(*(&v203 + 1) + 8 * n) operationTracker:v187 summary:v196 shouldOutput:{1, *&v170}] ^ 1;
          }

          v151 = [v149 countByEnumeratingWithState:&v203 objects:v235 count:16];
        }

        while (v151);
      }

      else
      {
        LOBYTE(v152) = 0;
      }

      +[NSDate timeIntervalSinceReferenceDate];
      v156 = v155 - v148;
      v157 = MBGetDefaultLog();
      if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
      {
        v158 = v157;
        if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v237 = v156;
          _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEFAULT, "Validated all snapshots in %0.3fs", buf, 0xCu);
        }

        v170 = v156;
        _MBLog();
      }

      v159 = [NSNumber numberWithDouble:v156];
      [p_isa[27] setObject:v159 forKeyedSubscript:@"CacheValidationTime"];

      if (v152)
      {
        v160 = MBGetDefaultLog();
        if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
        {
          v161 = v160;
          if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_ERROR, "CK Cache is corrupted - continuing anyways", buf, 2u);
          }

          _MBLog();
        }

        [p_isa[26] appendFormat:@"forced-rebuild, "];
      }

      v198[0] = _NSConcreteStackBlock;
      v198[1] = 3221225472;
      v198[2] = sub_100084C80;
      v198[3] = &unk_1003BCD18;
      v199 = v195;
      v200 = v149;
      v201 = p_isa;
      v202 = v176;
      v162 = [v199 performInTransaction:v198];
      if (v162)
      {
        v163 = MBGetDefaultLog();
        if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
        {
          v164 = v163;
          if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v237 = *&v162;
            _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_ERROR, "Failed to save the snapshots and update the FileChanges table: %{public}@", buf, 0xCu);
          }

          v170 = *&v162;
          _MBLog();
        }

        v165 = v162;
        *v183 = v162;
        v166 = 78;
      }

      else
      {
        v166 = 0;
      }

      v15 = v180;

      if (v166 == 78)
      {
        if (!*v183)
        {
          __assert_rtn("[MBCKEngine _refreshCacheWithDevice:operationTracker:refreshState:error:]", "MBCKEngine.m", 809, "*error");
        }

        v78 = 0;
        goto LABEL_162;
      }
    }

    [v195 flush];
    v78 = 0;
    LOBYTE(v18) = 1;
  }

  v52 = v175;
  v51 = v191;
LABEL_199:

  v10 = v176;
LABEL_200:

LABEL_201:
LABEL_202:

LABEL_203:
  return v18;
}

- (BOOL)refreshCacheWithError:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[MBCKEngine refreshCacheWithError:]", "MBCKEngine.m", 836, "error");
  }

  v5 = [(MBCKEngine *)self device];
  v6 = v5;
  if (!v5)
  {
    __assert_rtn("[MBCKEngine refreshCacheWithError:]", "MBCKEngine.m", 838, "device");
  }

  v35 = [v5 deviceUUID];
  v37 = [(MBCKEngine *)self serviceManager];
  if (!v37)
  {
    __assert_rtn("[MBCKEngine refreshCacheWithError:]", "MBCKEngine.m", 841, "serviceManager");
  }

  v7 = [(MBCKEngine *)self cache];
  if (!v7)
  {
    __assert_rtn("[MBCKEngine refreshCacheWithError:]", "MBCKEngine.m", 843, "cache");
  }

  v36 = [(MBCKEngine *)self serviceAccount];
  if (!v36)
  {
    __assert_rtn("[MBCKEngine refreshCacheWithError:]", "MBCKEngine.m", 845, "serviceAccount");
  }

  [MBCacheRefreshState loadFromCache:v7];
  v8 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v43 = *&v35;
    v44 = 2114;
    v45 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting cache refresh for device %{public}@ with cache refresh state: %{public}@", buf, 0x16u);
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v11 = v10;
  if (![(MBCKEngine *)self handleCancelation:a3])
  {
    v13 = [(MBCKEngine *)self ckOperationTracker];
    if (!v13)
    {
      v14 = [(MBCKEngine *)self ckOperationPolicy];
      v15 = v14;
      if (!v14)
      {
        __assert_rtn("[MBCKEngine refreshCacheWithError:]", "MBCKEngine.m", 860, "policy");
      }

      v16 = [v14 operationGroupWithName:@"refreshCache" processName:0];
      v17 = [v37 databaseManager];
      v13 = [MBCKOperationTracker operationTrackerWithAccount:v36 databaseManager:v17 policy:v15 error:a3];

      [v13 setCkOperationGroup:v16];
      if (!v13)
      {
        v12 = 0;
        goto LABEL_38;
      }

      [(MBCKEngine *)self setCkOperationTracker:v13];
    }

    v18 = v6;
    objc_sync_enter(v18);
    v41 = 0;
    v19 = [(MBCKEngine *)self _refreshCacheWithDevice:v18 operationTracker:v13 refreshState:*&v8 error:&v41];
    v20 = COERCE_DOUBLE(v41);
    objc_sync_exit(v18);

    +[NSDate timeIntervalSinceReferenceDate];
    v22 = v21;
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v43 = *&v35;
      v44 = 2048;
      v45 = v22 - v11;
      v46 = 2114;
      v47 = v8;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Finished cache refresh for device %{public}@ in %.3fs with state: %{public}@", buf, 0x20u);
      _MBLog();
    }

    if (v19)
    {
      v38 = v20;
      v24 = [MBCacheRefreshState saveRefreshState:0 toCache:v7 error:&v38];
      v16 = *&v38;

      if (v24)
      {
        v12 = 1;
LABEL_37:
        v15 = v13;
LABEL_38:

        goto LABEL_39;
      }

      v29 = MBGetDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = *&v16;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to clear cache refresh state: %@", buf, 0xCu);
        _MBLog();
      }

      v30 = v16;
      *a3 = v16;
      v31 = v16;
LABEL_35:
      if (!v31)
      {
        __assert_rtn("[MBCKEngine refreshCacheWithError:]", "MBCKEngine.m", 898, "result || *error");
      }

      v12 = 0;
      goto LABEL_37;
    }

    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v43 = *&v35;
      v44 = 2112;
      v45 = v20;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Failed cache refresh for device %{public}@: %@", buf, 0x16u);
      _MBLog();
    }

    v26 = *&v20;
    *a3 = v20;
    if ([MBError isResumableCacheRefreshError:*&v20])
    {
      v40 = v20;
      v27 = [MBCacheRefreshState saveRefreshState:*&v8 toCache:v7 error:&v40];
      v16 = *&v40;

      if (v27)
      {
LABEL_34:
        v31 = *a3;
        goto LABEL_35;
      }

      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = *&v16;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to set cache refresh state: %@", buf, 0xCu);
        _MBLog();
      }
    }

    else
    {
      v32 = MBGetDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43 = v20;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Not saving cache refresh state for non-resumable error: %@", buf, 0xCu);
        _MBLog();
      }

      v39 = v20;
      v33 = [MBCacheRefreshState saveRefreshState:0 toCache:v7 error:&v39];
      v16 = *&v39;

      if (v33)
      {
        goto LABEL_34;
      }

      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = *&v16;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to clear cache refresh state: %@", buf, 0xCu);
        _MBLog();
      }
    }

    goto LABEL_34;
  }

  v12 = 0;
LABEL_39:

  return v12;
}

- (BOOL)setUpWithError:(id *)a3
{
  v5 = [(MBCKEngine *)self serviceManager];
  if (!v5)
  {
    __assert_rtn("[MBCKEngine setUpWithError:]", "MBCKEngine.m", 904, "serviceManager");
  }

  v6 = v5;
  v7 = [(MBCKEngine *)self serviceAccount];
  if (!v7)
  {
    __assert_rtn("[MBCKEngine setUpWithError:]", "MBCKEngine.m", 906, "serviceAccount");
  }

  v8 = v7;
  v9 = [(MBCKEngine *)self cache];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = [v6 openCacheWithAccount:v8 accessType:1 error:a3];
    if (!v10)
    {
      v11 = 0;
      goto LABEL_8;
    }

    [(MBCKEngine *)self setCache:v10];
  }

  v11 = 1;
LABEL_8:

  return v11;
}

- (void)makeStateTransition
{
  if (![(MBCKEngine *)self isFinished]&& [(MBCKEngine *)self shouldAdvanceState])
  {
    stateDescription = self->_stateDescription;
    self->_stateDescription = 0;

    [(MBCKEngine *)self makeStateTransition];
  }
}

- (void)performRetryablePhase:(id)a3
{
  v4 = a3;
  v5 = [(MBCKEngine *)self injectedError];

  if (v5)
  {
    [(MBCKEngine *)self setIsFinished:1];
    v6 = [(MBCKEngine *)self injectedError];
    [(MBCKEngine *)self setEngineError:v6];

    v7 = [(MBCKEngine *)self injectedError];
    [(MBCKEngine *)self cleanUpAfterError:v7];
  }

  else
  {
    v8 = [(MBCKEngine *)self retryStrategy];
    [v8 reset];

    v9 = [(MBEngine *)self watchdog];
    [v9 resume];

    v10 = objc_autoreleasePoolPush();
    v36 = 0;
    v11 = [(MBCKEngine *)self handleCancelation:&v36];
    v12 = v36;
    if (v11)
    {
LABEL_4:
      [(MBCKEngine *)self setIsFinished:1, v30, v32];
      [(MBCKEngine *)self setEngineError:v12];
    }

    else
    {
      v13 = MBError_ptr;
      while (1)
      {
        v35 = 0;
        v14 = [(MBCKEngine *)self setUpOperationTrackerWithError:&v35, v30, v32];
        v15 = v35;
        v16 = v15;
        if (!v14)
        {
          [(MBCKEngine *)self setIsFinished:1];
          [(MBCKEngine *)self setEngineError:v16];
LABEL_20:
          v27 = v12;
          goto LABEL_21;
        }

        v34 = 0;
        v17 = v4[2](v4, &v34);
        v18 = v34;
        v16 = v18;
        if (v17)
        {
          goto LABEL_20;
        }

        if (!v18)
        {
          v19 = [v13[101] stringWithFormat:@"block returned NO without setting an out error: %@", self];
          if (MBIsInternalInstall())
          {
            v20 = v13;
            v21 = +[NSAssertionHandler currentHandler];
            v22 = [v20[101] stringWithUTF8String:"-[MBCKEngine performRetryablePhase:]"];
            [v21 handleFailureInFunction:v22 file:@"MBCKEngine.m" lineNumber:975 description:v19];
          }

          else
          {
            v21 = MBGetDefaultLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v38 = v19;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
              v31 = v19;
              _MBLog();
            }
          }

          v13 = MBError_ptr;
        }

        v23 = [(MBCKEngine *)self retryStrategy];
        v24 = [v23 shouldRetryAfterError:v16];

        if ((v24 & 1) == 0)
        {
          break;
        }

        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v38 = self;
          v39 = 2112;
          v40 = v16;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Retrying transition for %{public}@ after error: %@", buf, 0x16u);
          v30 = self;
          v32 = v16;
          _MBLog();
        }

        objc_autoreleasePoolPop(v10);
        v10 = objc_autoreleasePoolPush();
        v36 = 0;
        v26 = [(MBCKEngine *)self handleCancelation:&v36];
        v12 = v36;
        if (v26)
        {
          goto LABEL_4;
        }
      }

      v33 = v12;
      v28 = [(MBCKEngine *)self handleCancelation:&v33];
      v27 = v33;

      if (v28)
      {
        [(MBCKEngine *)self setIsFinished:1];
        [(MBCKEngine *)self setEngineError:v27];
      }

      else
      {
        v29 = MBGetDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v38 = self;
          v39 = 2112;
          v40 = v16;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Not retrying transition for %{public}@ after error: %@", buf, 0x16u);
          _MBLog();
        }

        [(MBCKEngine *)self setIsFinished:1];
        [(MBCKEngine *)self setEngineError:v16];
        [(MBCKEngine *)self cleanUpAfterError:v16];
      }

LABEL_21:
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (BOOL)fetchDeviceToDeviceEncryptionSupportedByAccount:(BOOL *)a3 error:(id *)a4
{
  v7 = [(MBCKEngine *)self serviceManager];
  if (!v7)
  {
    __assert_rtn("[MBCKEngine fetchDeviceToDeviceEncryptionSupportedByAccount:error:]", "MBCKEngine.m", 1004, "serviceManager");
  }

  v8 = v7;
  v9 = [v7 databaseManager];
  v10 = [(MBCKEngine *)self serviceAccount];
  v11 = [v9 fetchDeviceToDeviceEncryptionSupportedByAccount:a3 account:v10 error:a4];

  return v11;
}

- (void)replenishRetryTokens
{
  v2 = [(MBCKEngine *)self retryStrategy];
  [v2 replenishRetryTokens];
}

- (BOOL)backsUpPrimaryAccount
{
  v2 = [(MBCKEngine *)self serviceAccount];
  if (!v2)
  {
    __assert_rtn("[MBCKEngine backsUpPrimaryAccount]", "MBCKEngine.m", 1016, "serviceAccount");
  }

  v3 = v2;
  v4 = [v2 isPrimaryAccount];

  return v4;
}

- (BOOL)isNetworkAvailable
{
  v3 = [(MBCKEngine *)self serviceManager];
  if (!v3)
  {
    __assert_rtn("[MBCKEngine isNetworkAvailable]", "MBCKEngine.m", 1028, "serviceManager");
  }

  v4 = v3;
  v5 = [v3 networkConnectivity];
  v6 = [(MBCKEngine *)self ckOperationPolicy];
  v7 = [v6 cellularAccess];

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v12 = v5 & 1;
    v13 = 1024;
    v14 = (v5 >> 8) & 1;
    v15 = 1024;
    v16 = HIWORD(v5) & 1;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "isOnWiFi:%d, isOnCellular:%d(%d), cellularAccess:%{public}@", buf, 0x1Eu);
    _MBLog();
  }

  if (v5)
  {
LABEL_5:
    v9 = 1;
    goto LABEL_6;
  }

  v9 = 0;
  if ((v5 & 0x100) != 0 && v7)
  {
    if ((v5 & 0x10000) != 0)
    {
      v9 = [v7 allowsExpensiveNetworkAccess];
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:

  return v9;
}

- (id)setUpOperationTrackerWithError:(id *)a3
{
  v5 = [(MBCKEngine *)self serviceAccount];
  if (!v5)
  {
    __assert_rtn("[MBCKEngine setUpOperationTrackerWithError:]", "MBCKEngine.m", 1044, "serviceAccount");
  }

  v6 = v5;
  v7 = [(MBCKEngine *)self serviceManager];
  if (!v7)
  {
    __assert_rtn("[MBCKEngine setUpOperationTrackerWithError:]", "MBCKEngine.m", 1046, "serviceManager");
  }

  v8 = v7;
  v9 = [(MBCKEngine *)self ckOperationTracker];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 ckOperationPolicy];
    v12 = [v10 ckOperationGroup];
    v13 = v12;
    if (v11)
    {
      if (v12)
      {
        goto LABEL_6;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v13 = 0;
  }

  v11 = [(MBCKEngine *)self ckOperationPolicy];
  if (v13)
  {
LABEL_6:
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_28:
    __assert_rtn("[MBCKEngine setUpOperationTrackerWithError:]", "MBCKEngine.m", 1060, "policy");
  }

LABEL_27:
  v13 = [(MBCKEngine *)self ckOperationGroup];
  if (!v11)
  {
    goto LABEL_28;
  }

LABEL_7:
  if (!v13)
  {
    __assert_rtn("[MBCKEngine setUpOperationTrackerWithError:]", "MBCKEngine.m", 1061, "group");
  }

  v14 = [v11 cellularAccess];
  if ([(MBEngine *)self isRestoreEngine]&& [(MBEngine *)self restoreType]== 2)
  {
    v15 = [v8 cellularAccessForRestoreType:-[MBEngine restoreType](self account:{"restoreType"), v6}];
  }

  else
  {
    v15 = [v11 cellularAccess];
  }

  v16 = v15;
  v26 = v8;
  if (v10 && (v14 == v15 || ([v14 isEqual:v15] & 1) != 0))
  {
    v17 = v11;
    v18 = v10;
  }

  else
  {
    v17 = [v11 copy];

    [v17 setCellularAccess:v16];
    v19 = [v8 databaseManager];
    v18 = [MBCKOperationTracker operationTrackerWithAccount:v6 databaseManager:v19 policy:v17 group:v13 error:a3];

    if (!v18)
    {
      goto LABEL_22;
    }

    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v28 = v16;
      v29 = 2114;
      v30 = self;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Created a new operation tracker with cellularAccess:%{public}@ for %{public}@", buf, 0x16u);
      v24 = v16;
      v25 = self;
      _MBLog();
    }

    [(MBCKEngine *)self setCkOperationTracker:v18];
    if ([(MBEngine *)self isCanceled])
    {
      [v18 cancel];
    }
  }

  v21 = [(MBCKEngine *)self qualityOfService:v24];
  v22 = [v18 ckOperationPolicy];
  [v22 setQualityOfService:v21];

LABEL_22:

  return v18;
}

- (MBCKManager)serviceManager
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceManager);

  return WeakRetained;
}

@end