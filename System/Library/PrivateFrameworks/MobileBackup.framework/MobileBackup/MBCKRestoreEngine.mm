@interface MBCKRestoreEngine
+ (int64_t)_fetchBackupPolicyWithDevice:(id)a3 snapshotUUID:(id)a4 error:(id *)a5;
- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtFinish;
- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtStart;
- (BOOL)_configureAndInstallPlaceholdersWithError:(id *)a3;
- (BOOL)_downloadRestorablesForBackgroundAppWithError:(id *)a3;
- (BOOL)_downloadRestorablesForBackgroundFilesWithError:(id *)a3;
- (BOOL)_downloadRestorablesForForegroundWithError:(id *)a3;
- (BOOL)_markForegroundRestorablesForBackgroundRestoreInPlan:(id)a3 domainName:(id)a4 error:(id *)a5;
- (BOOL)_restoreATCFiles:(id)a3 usingCKCache:(id *)a4;
- (BOOL)_restoreATCFiles:(id)a3 usingPlan:(id *)a4;
- (BOOL)_restoreBackgroundContainersUsingCKCacheForApp:(id)a3 error:(id *)a4;
- (BOOL)_restoreBackgroundContainersUsingPlanForApp:(id)a3 error:(id *)a4;
- (BOOL)_restoreDomains:(id)a3 plan:(id)a4 withQueue:(id)a5 concurrencyLimit:(unint64_t)a6 error:(id *)a7;
- (BOOL)_restoreEntitlements:(id)a3 withError:(id *)a4;
- (BOOL)_restoreForegroundFilesUsingCKCacheForDomainNames:(id)a3 error:(id *)a4;
- (BOOL)_restoreForegroundFilesUsingPlanForDomainNames:(id)a3 error:(id *)a4;
- (BOOL)_runWithError:(id *)a3;
- (BOOL)_shouldSimulateCancelationForState:(id)a3;
- (BOOL)annotateRestoreWithError:(id *)a3;
- (BOOL)cancelWithError:(id)a3;
- (BOOL)downloadRestorablesWithError:(id *)a3;
- (BOOL)finalizeRestoreWithError:(id *)a3;
- (BOOL)findRestorablesWithError:(id *)a3;
- (BOOL)isRestoringToSameDevice;
- (BOOL)refreshCacheWithError:(id *)a3;
- (BOOL)restoreEntitlementsWithError:(id *)a3;
- (BOOL)runWithError:(id *)a3;
- (BOOL)setUpWithError:(id *)a3;
- (BOOL)synchronizeFileListsWithError:(id *)a3;
- (BOOL)verifyRestoreWithError:(id *)a3;
- (MBCKEncryptionManager)encryptionManager;
- (MBCKRestoreEngine)initWithSettingsContext:(id)a3 debugContext:(id)a4 domainManager:(id)a5 serviceManager:(id)a6 excludedAppBundleIDs:(id)a7;
- (MBRestorePolicy)restorePolicy;
- (NSString)restoreStateDescription;
- (id)_fetchDomainNamesToForegroundRestoreWithError:(id *)a3;
- (id)_populatedRestorePlan;
- (id)_restoreATCEngineForPlan:(id)a3 error:(id *)a4;
- (id)_restoreATCFile:(id)a3 usingCache:(id)a4;
- (id)_restoreDomainEngineForDomain:(id)a3 plan:(id)a4 error:(id *)a5;
- (id)engineModeString;
- (id)getEntitlementsForDomainsWithError:(id *)a3;
- (id)keyBagForUUID:(id)a3;
- (id)restoreMode;
- (id)restoringBundleID;
- (id)secretForUUID:(id)a3;
- (int)restoreType;
- (void)_finishCollectingTelemetry;
- (void)_handleStateTransition;
- (void)_purgeBeforeRestoring:(unint64_t)a3;
- (void)_uninstallExistingAppWithBundleID:(id)a3;
- (void)cleanUpAfterError:(id)a3;
- (void)makeStateTransition;
- (void)reportRestoreStatusForState:(unint64_t)a3 start:(id)a4 end:(id)a5;
- (void)resetRestorePolicy;
@end

@implementation MBCKRestoreEngine

- (id)restoringBundleID
{
  v2 = [(MBCKRestoreEngine *)self restorePolicy];
  v3 = [v2 serviceRestoreMode];

  if ([v3 isBackgroundApp])
  {
    v4 = [v3 bundleID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MBCKRestoreEngine)initWithSettingsContext:(id)a3 debugContext:(id)a4 domainManager:(id)a5 serviceManager:(id)a6 excludedAppBundleIDs:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 account];
  if (!v17)
  {
    __assert_rtn("[MBCKRestoreEngine initWithSettingsContext:debugContext:domainManager:serviceManager:excludedAppBundleIDs:]", "MBCKRestoreEngine.m", 90, "account");
  }

  v18 = v17;
  if (!v14)
  {
    v19 = [MBDomainManager alloc];
    v20 = [v18 persona];
    v14 = [(MBDomainManager *)v19 initWithPersona:v20];
  }

  v28.receiver = self;
  v28.super_class = MBCKRestoreEngine;
  v21 = [(MBCKEngine *)&v28 initWithSettingsContext:v12 debugContext:v13 domainManager:v14];
  v22 = v21;
  if (v21)
  {
    [(MBCKRestoreEngine *)v21 setRestoreState:1];
    [(MBCKEngine *)v22 setServiceManager:v15];
    v23 = [v12 restoreMode];
    v22->_restoreType = [v23 type];

    v24 = +[NSDate date];
    startDate = v22->_startDate;
    v22->_startDate = v24;

    [(MBEngine *)v22 setEncrypted:1];
    v26 = objc_opt_new();
    [(MBCKRestoreEngine *)v22 setEstimator:v26];

    [(MBCKRestoreEngine *)v22 setExcludedAppBundleIDs:v16];
    v22->_allowedCellularCost = 0;
    [(MBDomainManager *)v14 setDelegate:v22];
  }

  return v22;
}

- (NSString)restoreStateDescription
{
  v2 = [(MBCKRestoreEngine *)self restoreState];

  return MBCKStringForRestoreState(v2);
}

- (int)restoreType
{
  if (self->_restorePolicy)
  {
    restorePolicy = self->_restorePolicy;

    return [(MBRestorePolicy *)restorePolicy restoreType];
  }

  else
  {
    v5 = [(MBCKEngine *)self context];
    v6 = [v5 restoreMode];
    if ([v6 isForeground])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    return v7;
  }
}

- (id)restoreMode
{
  if (self->_restorePolicy)
  {
    v2 = [(MBRestorePolicy *)self->_restorePolicy serviceRestoreMode];
  }

  else
  {
    v3 = [(MBCKEngine *)self context];
    v2 = [v3 restoreMode];
  }

  return v2;
}

- (MBRestorePolicy)restorePolicy
{
  restorePolicy = self->_restorePolicy;
  if (!restorePolicy)
  {
    __assert_rtn("[MBCKRestoreEngine restorePolicy]", "MBCKRestoreEngine.m", 147, "_restorePolicy");
  }

  return restorePolicy;
}

- (void)resetRestorePolicy
{
  v16 = [MBRestorePolicy alloc];
  v17 = [(MBCKEngine *)self persona];
  v15 = [(MBEngine *)self appManager];
  v3 = [(MBCKEngine *)self context];
  v4 = [v3 plugins];
  v5 = [(MBCKEngine *)self context];
  v6 = [v5 restoreMode];
  v7 = [(MBCKEngine *)self properties];
  v8 = [v7 buildVersion];
  v9 = [(MBEngine *)self settingsContext];
  v10 = [v9 shouldRestoreSystemFiles];
  v11 = [(MBCKEngine *)self restoresPrimaryAccount];
  BYTE2(v14) = [(MBEngine *)self isForegroundRestore];
  BYTE1(v14) = v11;
  LOBYTE(v14) = v10;
  v12 = [MBRestorePolicy initWithPersona:v16 enginePolicyProvider:"initWithPersona:enginePolicyProvider:appManager:plugins:serviceRestoreMode:osBuildVersionOfBackup:shouldRestoreSystemFiles:isRestoringPrimaryAccount:shouldCreateMissingIntermediateDirectories:" appManager:v17 plugins:self serviceRestoreMode:v15 osBuildVersionOfBackup:v4 shouldRestoreSystemFiles:v6 isRestoringPrimaryAccount:v8 shouldCreateMissingIntermediateDirectories:v14];
  restorePolicy = self->_restorePolicy;
  self->_restorePolicy = v12;
}

- (id)keyBagForUUID:(id)a3
{
  v4 = [a3 base64EncodedStringWithOptions:0];
  v5 = [(MBCKEngine *)self device];
  v6 = [v5 keybagManager];
  v7 = [v6 keybagWithUUID:v4];

  v8 = [v7 keybag];

  return v8;
}

- (id)secretForUUID:(id)a3
{
  v4 = [a3 base64EncodedStringWithOptions:0];
  v5 = [(MBCKEngine *)self device];
  v6 = [v5 keybagManager];
  v7 = [v6 keybagWithUUID:v4];

  v8 = [v7 secret];

  return v8;
}

- (BOOL)isRestoringToSameDevice
{
  v2 = [(MBCKEngine *)self context];
  v3 = [v2 backupUDID];
  v4 = MBDeviceUUID();
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)cleanUpAfterError:(id)a3
{
  v4 = a3;
  v5 = [(MBCKEngine *)self ckOperationTracker];
  v6 = [v5 databaseManager];
  v7 = [(MBCKEngine *)self ckOperationTracker];
  v8 = [v7 account];
  [v6 setShouldSupportBudgeting:0 account:v8];

  v9.receiver = self;
  v9.super_class = MBCKRestoreEngine;
  [(MBCKEngine *)&v9 cleanUpAfterError:v4];
}

- (BOOL)runWithError:(id *)a3
{
  v25 = 0;
  v5 = [(MBCKRestoreEngine *)self _runWithError:&v25];
  v6 = v25;
  if (v5)
  {
    goto LABEL_24;
  }

  v7 = [(MBCKEngine *)self serviceAccount];
  v8 = [(MBCKRestoreEngine *)self restoreMode];
  if ([(MBEngine *)self isForegroundRestore]&& ![MBError isRetryableRestoreError:v6]&& ([(MBCKRestoreEngine *)self _populatedRestorePlan], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = v7;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Lightrail restore failed for account %@: %@", buf, 0x16u);
      v22 = v7;
      v23 = v6;
      _MBLog();
    }

    v11 = [(MBCKEngine *)self persona];
    [MBRestoreCloudFormatPolicy recordFileListForegroundRestoreFailure:v6 persona:v11];
  }

  else
  {
    if (([v8 isBackgroundFile] & 1) == 0 && !objc_msgSend(v8, "isBackgroundFiles"))
    {
      goto LABEL_14;
    }

    v12 = [MBError sanitizedATCRestoreError:v6];

    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Sanitized ATC restore error: %@", buf, 0xCu);
      v22 = v12;
      _MBLog();
    }

    v6 = v12;
  }

LABEL_14:
  v13 = [v8 isBackgroundApp];
  v14 = MBGetDefaultLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (v13)
  {
    if (v15)
    {
      v16 = [v8 bundleID];
      v17 = [v7 accountIdentifier];
      *buf = 138543874;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Restore failed for %{public}@ account %@: %@", buf, 0x20u);

      v18 = [v8 bundleID];
      v24 = [v7 accountIdentifier];
      _MBLog();
    }
  }

  else if (v15)
  {
    *buf = 138412546;
    v27 = v7;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Restore failed for account %@: %@", buf, 0x16u);
    _MBLog();
  }

  if ([MBError shouldReportLowDiskSpaceForError:v6])
  {
    v19 = [NSNumber numberWithUnsignedLongLong:MBFreeDiskSpace()];
    [(MBCKRestoreEngine *)self setFreeDiskSpace:v19];
  }

  if (a3)
  {
    v20 = v6;
    *a3 = v6;
  }

LABEL_24:
  return v5;
}

- (BOOL)_runWithError:(id *)a3
{
  [(MBCKRestoreEngine *)self setChargingType:MBGetChargingType()];
  v49 = 0;
  v5 = [(MBCKRestoreEngine *)self setUpWithError:&v49];
  v6 = v49;
  if (v5)
  {
LABEL_4:

    if ([(MBCKRestoreEngine *)self useFileLists])
    {
      if ([(MBEngine *)self isForegroundRestore])
      {
        v10 = self;
        v11 = 1;
      }

      else
      {
        v10 = self;
        v11 = 3;
      }

      [(MBCKRestoreEngine *)v10 setRestoreState:v11];
    }

    else
    {
      v12 = [(MBCKEngine *)self cache];
      v13 = [(MBCKEngine *)self context];
      v14 = [v13 backupUDID];
      v15 = [(MBCKEngine *)self context];
      v16 = [v15 snapshotUUID];
      v48 = 0;
      v17 = [v12 fetchRestoreStateForDeviceUUID:v14 snapshotUUID:v16 error:&v48];
      v18 = v48;
      [(MBCKRestoreEngine *)self setRestoreState:v17];

      if (v18)
      {
        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = [(MBCKEngine *)self context];
          v21 = [v20 backupUDID];
          v22 = [(MBCKEngine *)self context];
          v23 = [v22 snapshotUUID];
          *buf = 138412802;
          *v51 = v21;
          *&v51[8] = 2112;
          *&v51[10] = v23;
          *&v51[18] = 2112;
          *&v51[20] = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Error getting restore state for deviceUUID %@ and snapshotUUID %@: %@", buf, 0x20u);

          v24 = [(MBCKEngine *)self context];
          v25 = [v24 backupUDID];
          v26 = [(MBCKEngine *)self context];
          v46 = [v26 snapshotUUID];
          v47 = v18;
          v45 = v25;
          _MBLog();
        }

        [(MBCKRestoreEngine *)self setRestoreState:1];
      }

      if ([(MBCKRestoreEngine *)self restoreState:v45]>= 4)
      {
        [(MBCKRestoreEngine *)self setRestoreState:3];
      }
    }

    v6 = [(MBCKRestoreEngine *)self restoreMode];
    v30 = [(MBCKEngine *)self ckOperationPolicy];
    v31 = [v30 cellularAccess];

    v32 = [(MBCKEngine *)self serviceAccount];
    if ([v6 isBackgroundApp])
    {
      v33 = [v6 bundleID];
      v34 = MBGetDefaultLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v32 accountIdentifier];
        *buf = 138543874;
        *v51 = v33;
        *&v51[8] = 2112;
        *&v51[10] = v35;
        *&v51[18] = 2112;
        *&v51[20] = v31;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Starting restore for %{public}@ account %@ cellularAccess:%@", buf, 0x20u);

        v46 = [v32 accountIdentifier];
        v47 = v31;
        v45 = v33;
        _MBLog();
      }
    }

    else
    {
      v33 = MBGetDefaultLog();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:

        if ([(MBEngine *)self isForegroundRestore])
        {
          v39 = [(MBCKRestoreEngine *)self restoreLogger];
          [v39 logForegroundRestoreStart];
        }

        [(MBCKRestoreEngine *)self makeStateTransition:v45];
        if ([(MBEngine *)self isForegroundRestore])
        {
          v40 = [(MBCKRestoreEngine *)self restoreLogger];
          [v40 logForegroundRestoreFinished];

          v41 = [(MBCKRestoreEngine *)self restoreLogger];
          [v41 flush];
        }

        v42 = [(MBCKEngine *)self hasError];
        if (v42)
        {
          v43 = [(MBCKEngine *)self engineError];
          if (a3)
          {
            v43 = v43;
            *a3 = v43;
          }
        }

        v29 = v42 ^ 1;

        goto LABEL_35;
      }

      restoreType = self->_restoreType;
      v37 = [v32 accountIdentifier];
      *buf = 67109634;
      *v51 = restoreType;
      *&v51[4] = 2112;
      *&v51[6] = v37;
      *&v51[14] = 2112;
      *&v51[16] = v31;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Starting restore (%d) account %@ cellularAccess:%@", buf, 0x1Cu);

      v38 = self->_restoreType;
      v34 = [v32 accountIdentifier];
      v46 = v34;
      v47 = v31;
      v45 = v38;
      _MBLog();
    }

    goto LABEL_26;
  }

  while (1)
  {
    v7 = [(MBCKEngine *)self retryStrategy];
    v8 = [v7 shouldRetryAfterError:v6];

    if ((v8 & 1) == 0)
    {
      break;
    }

    v49 = 0;
    v9 = [(MBCKRestoreEngine *)self setUpWithError:&v49];
    v6 = v49;
    if (v9)
    {
      goto LABEL_4;
    }
  }

  v27 = MBGetDefaultLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *v51 = v6;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Restore failed to setup: %@", buf, 0xCu);
    _MBLog();
  }

  if (a3)
  {
    v28 = v6;
    v29 = 0;
    *a3 = v6;
  }

  else
  {
    v29 = 0;
  }

LABEL_35:

  return v29;
}

- (void)_handleStateTransition
{
  v3 = +[NSDate date];
  v4 = [(MBCKRestoreEngine *)self restoreState];
  if (v4 <= 5)
  {
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        [(MBCKRestoreEngine *)self setRestoreState:4];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10005636C;
        v33[3] = &unk_1003BC400;
        v33[4] = self;
        v5 = v33;
      }

      else if (v4 == 4)
      {
        [(MBCKRestoreEngine *)self setRestoreState:5];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_1000563D8;
        v32[3] = &unk_1003BC400;
        v32[4] = self;
        v5 = v32;
      }

      else
      {
        [(MBCKRestoreEngine *)self setRestoreState:6];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1000563E4;
        v31[3] = &unk_1003BC400;
        v31[4] = self;
        v5 = v31;
      }

      goto LABEL_23;
    }

    if (v4 == 1)
    {
      [(MBCKRestoreEngine *)self setRestoreState:2];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100056288;
      v36[3] = &unk_1003BC400;
      v36[4] = self;
      v5 = v36;
      goto LABEL_23;
    }

    if (v4 == 2)
    {
      [(MBCKRestoreEngine *)self setRestoreState:9];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000562F4;
      v35[3] = &unk_1003BC400;
      v35[4] = self;
      v5 = v35;
LABEL_23:
      [(MBCKEngine *)self performRetryablePhase:v5];
LABEL_24:
      LOBYTE(v6) = 0;
      goto LABEL_25;
    }

LABEL_52:
    __assert_rtn("[MBCKRestoreEngine _handleStateTransition]", "MBCKRestoreEngine.m", 291, "0");
  }

  if (v4 <= 7)
  {
    if (v4 == 6)
    {
      [(MBCKRestoreEngine *)self setRestoreState:7];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000563F0;
      v30[3] = &unk_1003BC400;
      v30[4] = self;
      v5 = v30;
    }

    else
    {
      [(MBCKRestoreEngine *)self setRestoreState:10];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000563FC;
      v29[3] = &unk_1003BC400;
      v29[4] = self;
      v5 = v29;
    }

    goto LABEL_23;
  }

  if (v4 == 8)
  {
    [(MBCKEngine *)self setIsFinished:1];
    [(MBCKEngine *)self setEngineError:0];
    goto LABEL_24;
  }

  if (v4 == 9)
  {
    [(MBCKRestoreEngine *)self setRestoreState:3];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100056360;
    v34[3] = &unk_1003BC400;
    v34[4] = self;
    v5 = v34;
    goto LABEL_23;
  }

  if (v4 != 10)
  {
    goto LABEL_52;
  }

  [(MBCKRestoreEngine *)self setRestoreState:8];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100056408;
  v28[3] = &unk_1003BC400;
  v28[4] = self;
  [(MBCKEngine *)self performRetryablePhase:v28];
  v6 = [(MBCKEngine *)self isFinished];
  if (v6)
  {
    v7 = [(MBCKEngine *)self engineError];
    if (!v7)
    {
      __assert_rtn("[MBCKRestoreEngine _handleStateTransition]", "MBCKRestoreEngine.m", 375, "self.engineError != nil");
    }
  }

  else
  {
    [(MBCKEngine *)self setIsFinished:1];
    [(MBCKEngine *)self setEngineError:0];
    [(MBCKRestoreEngine *)self setEstimator:0];
    if (![(MBEngine *)self isForegroundRestore])
    {
      goto LABEL_25;
    }

    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Foreground restore finished successfully", buf, 2u);
      _MBLog();
    }
  }

LABEL_25:
  v8 = MBCKStringForRestoreState([(MBCKRestoreEngine *)self restoreState]);
  if ([(MBCKRestoreEngine *)self _shouldSimulateCancelationForState:v8])
  {
    v9 = [MBError errorWithCode:202 format:@"Restore canceled (simulated for %@)", v8];
    [(MBCKEngine *)self setEngineError:v9];

    [(MBCKEngine *)self setIsFinished:1];
  }

  v10 = +[NSDate date];
  if ([(MBEngine *)self isForegroundRestore])
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      [v10 timeIntervalSinceDate:v3];
      *buf = 138543618;
      v38 = v8;
      v39 = 2048;
      v40 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= %{public}@ done in %.3fs", buf, 0x16u);
      [v10 timeIntervalSinceDate:v3];
      v27 = v13;
      v25 = v8;
      _MBLog();
    }
  }

  [(MBCKRestoreEngine *)self reportRestoreStatusForState:[(MBCKRestoreEngine *)self restoreState:v25] start:v3 end:v10];
  if ([(MBCKEngine *)self isFinished])
  {
    [(MBCKRestoreEngine *)self _finishCollectingTelemetry];
    v14 = [(MBCKEngine *)self progressModel];
    [v14 ended];
  }

  if (![(MBCKRestoreEngine *)self useFileLists])
  {
    if (![(MBCKEngine *)self isFinished]|| ([(MBCKRestoreEngine *)self restoreState]!= 8 ? (v15 = 1) : (v15 = v6), (v15 & 1) == 0))
    {
      v16 = [(MBCKEngine *)self cache];
      v17 = [(MBCKRestoreEngine *)self restoreState];
      v18 = [(MBCKEngine *)self context];
      v19 = [v18 backupUDID];
      v20 = [(MBCKEngine *)self context];
      v21 = [v20 snapshotUUID];
      v22 = [v16 setRestoreState:v17 forDeviceUUID:v19 snapshotUUID:v21];

      if (v22)
      {
        v23 = MBGetDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v38 = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to set restore state in cache transaction: %@", buf, 0xCu);
          v26 = v22;
          _MBLog();
        }
      }
    }

    if ([(MBCKRestoreEngine *)self restoreState]<= 3)
    {
      v24 = [(MBCKEngine *)self cache];
      [v24 flush];
    }
  }
}

- (BOOL)_shouldSimulateCancelationForState:(id)a3
{
  v4 = a3;
  if (MBIsInternalInstall() && ![(MBCKEngine *)self isFinished]&& [(MBEngine *)self isForegroundRestore])
  {
    v5 = +[MBBehaviorOptions sharedOptions];
    v6 = [v5 engineStateToCancelRestoreAfter];
    v7 = [v6 isEqualToString:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)makeStateTransition
{
  v3 = objc_autoreleasePoolPush();
  [(MBCKRestoreEngine *)self _handleStateTransition];
  objc_autoreleasePoolPop(v3);
  v4.receiver = self;
  v4.super_class = MBCKRestoreEngine;
  [(MBCKEngine *)&v4 makeStateTransition];
}

- (void)_finishCollectingTelemetry
{
  if (![(MBEngine *)self isBackgroundRestore])
  {
    v3 = [(MBCKRestoreEngine *)self estimator];
    [v3 progressAtLastUpdate];
    if (v4 > 0.0)
    {
      v5 = [v3 minutesRemaining];
      if (v5 != -1)
      {
        v6 = [NSNumber numberWithUnsignedInteger:v5];
        [(MBCKRestoreEngine *)self setMinutesRemaining:v6];
      }
    }
  }

  v9 = [(MBCKEngine *)self serviceManager];
  v7 = [v9 networkConnectivity];
  [(MBCKRestoreEngine *)self setNetworkConnectivityAtFinish:v7, v8];
}

- (void)reportRestoreStatusForState:(unint64_t)a3 start:(id)a4 end:(id)a5
{
  v15 = a4;
  v8 = a5;
  [MBCKStatusReporter reportRestoreStateChangeForEngine:self state:a3 start:v15 end:v8];
  [MBTelemetry sendRestoreEngineStateChangeStatus:self state:[(MBCKRestoreEngine *)self restoreState] start:v15 end:v8];
  v9 = [(MBCKEngine *)self performanceStatistics];

  if (v9)
  {
    v10 = [NSString alloc];
    v11 = MBCKStringForRestoreState(a3);
    v12 = [v10 initWithFormat:@"state-%@", v11];

    [v8 timeIntervalSinceDate:v15];
    v13 = [NSNumber numberWithDouble:?];
    v14 = [(MBCKEngine *)self performanceStatistics];
    [v14 setObject:v13 forKeyedSubscript:v12];
  }
}

- (BOOL)refreshCacheWithError:(id *)a3
{
  v5 = [(MBCKRestoreEngine *)self targetSnapshot];
  if (!v5)
  {
    __assert_rtn("[MBCKRestoreEngine refreshCacheWithError:]", "MBCKRestoreEngine.m", 476, "targetSnapshot");
  }

  v6 = v5;
  if ([(MBCKRestoreEngine *)self useFileLists])
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [v6 snapshotFormat];
      v8 = MBStringForSnapshotFormat();
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Skipping refreshCacheWithError when restoring from snapshot format %@", buf, 0xCu);

      [v6 snapshotFormat];
      v11 = MBStringForSnapshotFormat();
      _MBLog();
    }

    v9 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MBCKRestoreEngine;
    v9 = [(MBCKEngine *)&v12 refreshCacheWithError:a3];
  }

  return v9;
}

+ (int64_t)_fetchBackupPolicyWithDevice:(id)a3 snapshotUUID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    __assert_rtn("+[MBCKRestoreEngine _fetchBackupPolicyWithDevice:snapshotUUID:error:]", "MBCKRestoreEngine.m", 486, "device");
  }

  v9 = v8;
  if (!v8)
  {
    __assert_rtn("+[MBCKRestoreEngine _fetchBackupPolicyWithDevice:snapshotUUID:error:]", "MBCKRestoreEngine.m", 487, "snapshotUUID");
  }

  if (!a5)
  {
    __assert_rtn("+[MBCKRestoreEngine _fetchBackupPolicyWithDevice:snapshotUUID:error:]", "MBCKRestoreEngine.m", 488, "error");
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [v7 snapshots];
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
LABEL_6:
    v14 = 0;
    while (1)
    {
      if (*v24 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v23 + 1) + 8 * v14);
      v16 = [v15 snapshotID];
      v17 = [v16 isEqualToString:v9];

      if (v17)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v12)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

    v18 = v15;

    if (!v18)
    {
      goto LABEL_17;
    }

    v19 = [v18 backupPolicy];
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v28 = v9;
      v29 = 2048;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=ckrestore-engine= Found target snapshot %{public}@, backupPolicy:%ld", buf, 0x16u);
      _MBLog();
    }
  }

  else
  {
LABEL_12:

LABEL_17:
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to find target snapshot %{public}@", buf, 0xCu);
      _MBLog();
    }

    [MBError errorWithCode:205 format:@"Failed to fetch the backup policy for target snapshot %@", v9];
    *a5 = v19 = 0;
  }

  return v19;
}

- (BOOL)setUpWithError:(id *)a3
{
  v158 = [(MBCKEngine *)self serviceAccount];
  if (!v158)
  {
    __assert_rtn("[MBCKRestoreEngine setUpWithError:]", "MBCKRestoreEngine.m", 509, "serviceAccount");
  }

  v5 = [(MBCKEngine *)self serviceManager];
  if (!v5)
  {
    __assert_rtn("[MBCKRestoreEngine setUpWithError:]", "MBCKRestoreEngine.m", 511, "serviceManager");
  }

  v177.receiver = self;
  v177.super_class = MBCKRestoreEngine;
  if (![(MBCKEngine *)&v177 setUpWithError:a3])
  {
    goto LABEL_46;
  }

  v6 = [(MBEngine *)self domainManager];
  v7 = v6 == 0;

  if (!v7)
  {
    v8 = [MBAppManager alloc];
    v9 = [(MBEngine *)self settingsContext];
    v10 = [v9 mobileInstallation];
    v11 = [(MBAppManager *)v8 initWithMobileInstallation:v10];
    appManager = self->super.super._appManager;
    self->super.super._appManager = v11;

    if (![(MBEngine *)self isForegroundRestore])
    {
      v13 = [(MBCKRestoreEngine *)self restoreMode];
      if ([v13 isBackgroundFile])
      {
      }

      else
      {
        v16 = [(MBCKRestoreEngine *)self restoreMode];
        v17 = [v16 isBackgroundFiles];

        if (!v17)
        {
          goto LABEL_14;
        }
      }
    }

    v18 = self->super.super._appManager;
    v19 = [(MBCKEngine *)self persona];
    LODWORD(v18) = [(MBAppManager *)v18 loadAppsWithPersona:v19 safeHarbors:0 error:a3];

    if (v18)
    {
LABEL_14:
      v20 = [(MBCKEngine *)self setUpOperationTrackerWithError:a3];
      v157 = v20;
      if (!v20)
      {
        v15 = 0;
LABEL_83:

        goto LABEL_47;
      }

      v21 = [v20 ckOperationPolicy];
      v156 = [v21 cellularAccess];

      if (v156)
      {
        if ([v156 allowsExpensiveNetworkAccess])
        {
          v22 = 2;
        }

        else
        {
          v22 = 1;
        }

        [(MBCKRestoreEngine *)self setAllowedCellularCost:v22];
      }

      v23 = [v5 networkConnectivity];
      [(MBCKRestoreEngine *)self setNetworkConnectivityAtStart:v23, v24];
      v155 = [(MBCKEngine *)self persona];
      if ([v155 cleanupRestoreDirectoriesWithError:a3])
      {
        v25 = [(MBEngine *)self isForegroundRestore];
        if (!v25)
        {
          goto LABEL_31;
        }

        if ([v5 resetCacheWithAccount:v158 error:a3])
        {
          v154 = [v5 openCacheWithAccount:v158 accessType:1 error:a3];
          v26 = v154;
          if (!v154)
          {
            v15 = 0;
LABEL_81:

            goto LABEL_82;
          }

          [(MBCKEngine *)self setCache:?];
          [_TtC7backupd14MBRestoreDepot disposeAllDepotsForPersona:v155 error:0];
          [v155 removeRestorePrefetchCachesOlderThanDate:0];
          if (([v155 createRestoreDirectoriesWithError:a3] & 1) == 0)
          {
            v76 = MBGetDefaultLog();
            v29 = v76;
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              if (a3)
              {
                v77 = *a3;
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v77;
                _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Error creating restore directory: %@", &buf, 0xCu);
                v78 = *a3;
              }

              else
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = @"(no error available)";
                _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Error creating restore directory: %@", &buf, 0xCu);
              }

              _MBLog();
              v15 = 0;
              v29 = v76;
              goto LABEL_80;
            }

            goto LABEL_74;
          }

          v27 = [v155 userIncompleteRestoreDirectory];
          v28 = [v155 placeholderRestoreDirectory];
          v29 = [v27 stringByAppendingPathComponent:v28];

          v30 = [(MBCKRestoreEngine *)self restoreMode];
          v31 = [v30 type] == 6;

          if (v31)
          {
            v32 = MBGetDefaultLog();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "=ckrestore-engine= FIXME: Removing existing placeholder directories to get data-separated restores working.", &buf, 2u);
              _MBLog();
            }

            v33 = +[NSFileManager defaultManager];
            [v33 removeItemAtPath:v29 error:0];
          }

          v34 = +[NSFileManager defaultManager];
          v35 = MBMobileFileAttributes();
          v36 = [v34 createDirectoryAtPath:v29 withIntermediateDirectories:1 attributes:v35 error:a3];

          if ((v36 & 1) == 0)
          {
            v79 = MBGetDefaultLog();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Error creating placeholder directory", &buf, 2u);
              _MBLog();
            }

            goto LABEL_74;
          }

LABEL_31:
          v37 = [(MBCKEngine *)self context];
          v154 = [v37 backupUDID];

          if (!v154)
          {
            __assert_rtn("[MBCKRestoreEngine setUpWithError:]", "MBCKRestoreEngine.m", 592, "backupUDID");
          }

          v38 = [(MBCKEngine *)self cache];
          v153 = [v5 fetchDeviceForRestoreWithUUID:v154 tracker:v157 isForegroundRestore:v25 cache:v38 error:a3];

          v29 = v153;
          if (v153)
          {
            [(MBCKEngine *)self setDevice:v153];
            if (![(MBCKEngine *)self handleCancelation:a3])
            {
              v39 = [(MBCKRestoreEngine *)self storedKeybagsByUUIDString];
              if (v39)
              {
                v40 = [(MBCKRestoreEngine *)self storedKeybagsByUUIDString];
                v41 = [v40 count] == 0;

                if (!v41)
                {
                  v42 = MBGetDefaultLog();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                  {
                    LOWORD(buf) = 0;
                    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "=ckrestore-engine= Using keybags serialized to disk for this restore session", &buf, 2u);
                    _MBLog();
                  }

                  v175 = 0u;
                  v176 = 0u;
                  v173 = 0u;
                  v174 = 0u;
                  v43 = [(MBCKRestoreEngine *)self storedKeybagsByUUIDString];
                  v44 = [v43 countByEnumeratingWithState:&v173 objects:v187 count:16];
                  if (v44)
                  {
                    v45 = *v174;
                    do
                    {
                      for (i = 0; i != v44; i = i + 1)
                      {
                        if (*v174 != v45)
                        {
                          objc_enumerationMutation(v43);
                        }

                        v47 = *(*(&v173 + 1) + 8 * i);
                        v48 = [(MBCKRestoreEngine *)self storedKeybagsByUUIDString];
                        v49 = [v48 objectForKeyedSubscript:v47];

                        v50 = [(MBCKEngine *)self device];
                        v51 = [v50 keybagManager];
                        [v51 addKeybag:v49];
                      }

                      v44 = [v43 countByEnumeratingWithState:&v173 objects:v187 count:16];
                    }

                    while (v44);
                  }

LABEL_54:
                  if (![(MBCKEngine *)self handleCancelation:a3])
                  {
                    v61 = [(MBCKEngine *)self context];
                    v62 = [v61 lockManager];
                    v63 = [v62 reacquireLockWithError:a3];

                    if (v63)
                    {
                      if (!-[MBCKEngine handleCancelation:](self, "handleCancelation:", a3) && [v153 fetchSnapshotsWithOperationTracker:v157 retry:1 error:a3])
                      {
                        v64 = [(MBCKEngine *)self context];
                        v152 = [v64 snapshotUUID];

                        v65 = [NSMutableArray alloc];
                        v66 = [(MBCKEngine *)self device];
                        v67 = [v66 snapshots];
                        obj = [v65 initWithCapacity:{objc_msgSend(v67, "count")}];

                        v171 = 0u;
                        v172 = 0u;
                        v169 = 0u;
                        v170 = 0u;
                        v68 = [(MBCKEngine *)self device];
                        v69 = [v68 snapshots];

                        v70 = [v69 countByEnumeratingWithState:&v169 objects:v186 count:16];
                        if (v70)
                        {
                          v71 = *v170;
                          while (2)
                          {
                            for (j = 0; j != v70; j = j + 1)
                            {
                              if (*v170 != v71)
                              {
                                objc_enumerationMutation(v69);
                              }

                              v73 = *(*(&v169 + 1) + 8 * j);
                              [obj addObject:v73];
                              v74 = [v73 snapshotID];
                              v75 = [v74 isEqualToString:v152];

                              if (v75)
                              {
                                objc_storeStrong(&self->_targetSnapshot, v73);

                                goto LABEL_93;
                              }
                            }

                            v70 = [v69 countByEnumeratingWithState:&v169 objects:v186 count:16];
                            if (v70)
                            {
                              continue;
                            }

                            break;
                          }
                        }

LABEL_93:
                        if (self->_targetSnapshot)
                        {
                          v148 = [(MBCKEngine *)self serviceAccount];
                          if (!v148)
                          {
                            __assert_rtn("[MBCKRestoreEngine setUpWithError:]", "MBCKRestoreEngine.m", 649, "account");
                          }

                          v168 = 0;
                          if ([(MBEngine *)self isForegroundRestore])
                          {
                            if ([MBRestoreCloudFormatPolicy shouldRestoreSnapshot:self->_targetSnapshot account:v148 persona:v155 useFileLists:&v168 error:a3])
                            {
                              v82 = [v155 copyPreferencesValueForKey:@"RestoreCloudFormatInfo" class:objc_opt_class()];
                              if (!v82)
                              {
                                __assert_rtn("[MBCKRestoreEngine setUpWithError:]", "MBCKRestoreEngine.m", 659, "savedCloudFormatInfo");
                              }

                              [(MBCKRestoreEngine *)self setCloudFormatInfo:v82];

LABEL_102:
                              [(MBCKRestoreEngine *)self setUseFileLists:v168];
                              *&buf = 0;
                              *(&buf + 1) = &buf;
                              v184 = 0x2020000000;
                              v185 = 0;
                              if ([(MBCKRestoreEngine *)self useFileLists])
                              {
                                if ([(MBEngine *)self isForegroundRestore])
                                {
                                  v86 = 0;
                                }

                                else
                                {
                                  v90 = [(MBCKSnapshot *)self->_targetSnapshot snapshotID];
                                  v167 = 0;
                                  v91 = [v5 restorePlanForAccount:v148 snapshotUUID:v90 error:&v167];
                                  v86 = v167;
                                  if (!v91)
                                  {
                                    v110 = MBGetDefaultLog();
                                    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                                    {
                                      *v179 = 138412290;
                                      v180 = v86;
                                      _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to load restore plan for background restore: %@", v179, 0xCu);
                                      _MBLog();
                                    }

                                    if (a3)
                                    {
                                      v111 = v86;
                                      *a3 = v86;
                                    }

                                    goto LABEL_140;
                                  }

                                  v92 = [v91 isPopulated];
                                  *(*(&buf + 1) + 24) = v92;
                                }
                              }

                              else
                              {
                                v87 = [(MBCKEngine *)self cache];
                                v166[0] = _NSConcreteStackBlock;
                                v166[1] = 3221225472;
                                v166[2] = sub_1000582FC;
                                v166[3] = &unk_1003BC428;
                                v166[4] = &buf;
                                v86 = [v87 hasRestoreFilesWithCallback:v166];

                                if (v86)
                                {
                                  v88 = MBGetDefaultLog();
                                  if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                                  {
                                    *v179 = 138412290;
                                    v180 = v86;
                                    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Cache error checking for restorable files: %@", v179, 0xCu);
                                    _MBLog();
                                  }

                                  if (a3)
                                  {
                                    v89 = v86;
                                    *a3 = v86;
                                  }

                                  v86 = 0;
                                  goto LABEL_140;
                                }
                              }

                              if (*(*(&buf + 1) + 24) == 1 && ![(MBEngine *)self isForegroundRestore])
                              {
                                goto LABEL_125;
                              }

                              v93 = MBGetDefaultLog();
                              if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
                              {
                                v94 = v93;
                                if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
                                {
                                  v95 = [(MBCKEngine *)self device];
                                  v96 = [v95 snapshots];
                                  *v179 = 138412290;
                                  v180 = v96;
                                  _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, "=ckrestore-engine= Device has snapshots: %@", v179, 0xCu);
                                }

                                v97 = [(MBCKEngine *)self device];
                                v144 = [v97 snapshots];
                                _MBLog();
                              }

                              v98 = [MBCKProperties alloc];
                              v99 = [(MBCKSnapshot *)self->_targetSnapshot backupProperties];
                              v100 = [(MBProperties *)v98 initWithData:v99 error:a3];
                              [(MBCKEngine *)self setProperties:v100];

                              v101 = [(MBCKEngine *)self properties];
                              v102 = v101 == 0;

                              if (!v102)
                              {
                                objc_storeStrong(&self->_validSnapshots, obj);
                                v103 = MBGetDefaultLog();
                                if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
                                {
                                  validSnapshots = self->_validSnapshots;
                                  *v179 = 138412290;
                                  v180 = validSnapshots;
                                  _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_INFO, "=ckrestore-engine= Restoring from snapshots: %@", v179, 0xCu);
                                  v144 = self->_validSnapshots;
                                  _MBLog();
                                }

LABEL_125:
                                v165 = v86;
                                v105 = [objc_opt_class() _fetchBackupPolicyWithDevice:v153 snapshotUUID:v152 error:&v165];
                                v147 = v165;

                                if (!v105 && v147)
                                {
                                  if (a3)
                                  {
                                    [MBError errorWithCode:205 format:@"Failed to fetch the backup policy for snapshot %@", v152];
                                    *a3 = v15 = 0;
LABEL_175:
                                    v86 = v147;
                                    goto LABEL_176;
                                  }

LABEL_174:
                                  v15 = 0;
                                  goto LABEL_175;
                                }

                                v106 = [(MBCKEngine *)self context];
                                [v106 setBackupPolicy:v105];

                                if ([(MBCKEngine *)self handleCancelation:a3])
                                {
                                  goto LABEL_174;
                                }

                                v107 = [(MBCKEngine *)self device];
                                v108 = [v107 canRestoreSystemFiles];
                                if (v108)
                                {
                                  v105 = [(MBCKEngine *)self persona];
                                  v109 = [v105 shouldRestoreToSharedVolume];
                                }

                                else
                                {
                                  v109 = 0;
                                }

                                v112 = [(MBCKEngine *)self context];
                                [v112 setShouldRestoreSystemFiles:v109];

                                if (v108)
                                {
                                }

                                v113 = [(MBCKEngine *)self context];
                                v114 = [v113 shouldRestoreSystemFiles];

                                if ((v114 & 1) == 0)
                                {
                                  v115 = MBGetDefaultLog();
                                  if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v116 = v115;
                                    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v117 = [(MBCKEngine *)self device];
                                      v118 = [v117 deviceClass];
                                      v119 = MBDeviceClass();
                                      *v179 = 138412546;
                                      v180 = v118;
                                      v181 = 2112;
                                      v182 = v119;
                                      _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Not restoring system files from %@ backup to %@", v179, 0x16u);
                                    }

                                    v120 = [(MBCKEngine *)self device];
                                    v121 = [v120 deviceClass];
                                    MBDeviceClass();
                                    v146 = v145 = v121;
                                    _MBLog();
                                  }
                                }

                                if (![(MBCKRestoreEngine *)self useFileLists:v145])
                                {
                                  v122 = +[NSMutableSet set];
                                  v123 = [(MBCKEngine *)self cache];
                                  v163[0] = _NSConcreteStackBlock;
                                  v163[1] = 3221225472;
                                  v163[2] = sub_10005830C;
                                  v163[3] = &unk_1003BC450;
                                  v124 = v122;
                                  v164 = v124;
                                  v125 = [v123 enumeratePendingRestorableDomainsWithCallback:v163];

                                  v161 = 0u;
                                  v162 = 0u;
                                  v159 = 0u;
                                  v160 = 0u;
                                  v149 = [(MBAppManager *)self->super.super._appManager allContainers];
                                  v126 = [v149 countByEnumeratingWithState:&v159 objects:v178 count:16];
                                  if (v126)
                                  {
                                    v150 = *v160;
                                    do
                                    {
                                      for (k = 0; k != v126; k = k + 1)
                                      {
                                        if (*v160 != v150)
                                        {
                                          objc_enumerationMutation(v149);
                                        }

                                        v128 = *(*(&v159 + 1) + 8 * k);
                                        v129 = [v128 domain];
                                        v130 = [v129 name];
                                        v131 = [v124 containsObject:v130];

                                        if (v131)
                                        {
                                          v132 = [(MBEngine *)self domainManager];
                                          v133 = [v128 domain];
                                          [v132 addDomain:v133];
                                        }
                                      }

                                      v126 = [v149 countByEnumeratingWithState:&v159 objects:v178 count:16];
                                    }

                                    while (v126);
                                  }
                                }

                                [(MBCKRestoreEngine *)self resetRestorePolicy];
                                if ([(MBEngine *)self isForegroundRestore])
                                {
                                  v134 = [(MBCKRestoreEngine *)self restorePolicy];
                                  v135 = [v134 notifyPluginsStartingRestoreWithEngine:self];

                                  if (v135)
                                  {
                                    v136 = MBGetDefaultLog();
                                    if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
                                    {
                                      *v179 = 138412290;
                                      v180 = v135;
                                      _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to notify plugins of startingRestoreWithEngine: %@", v179, 0xCu);
                                      _MBLog();
                                    }

LABEL_171:

                                    if (a3)
                                    {
                                      v143 = v135;
                                      *a3 = v135;
                                    }

                                    goto LABEL_174;
                                  }

                                  v142 = [(MBCKRestoreEngine *)self restorePolicy];
                                  v135 = [v142 notifyPluginsPreparingRestoreWithEngine:self];

                                  if (v135)
                                  {
                                    v136 = MBGetDefaultLog();
                                    if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
                                    {
                                      *v179 = 138412290;
                                      v180 = v135;
                                      _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to notify plugins of preparingRestoreWithEngine: %@", v179, 0xCu);
                                      _MBLog();
                                    }

                                    goto LABEL_171;
                                  }
                                }

                                else
                                {
                                  v137 = [(MBCKEngine *)self context];
                                  v138 = [v137 qos];
                                  v139 = [v138 integerValue];

                                  v140 = [v157 databaseManager];
                                  v141 = [v157 account];
                                  [v140 setShouldSupportBudgeting:v139 > 24 account:v141];
                                }

                                v15 = 1;
                                goto LABEL_175;
                              }

                              if (a3)
                              {
                                [MBError errorWithCode:205 format:@"Invalid snapshot %@: missing properties", self->_targetSnapshot];
                                *a3 = v15 = 0;
LABEL_176:
                                _Block_object_dispose(&buf, 8);
                                goto LABEL_177;
                              }

LABEL_140:
                              v15 = 0;
                              goto LABEL_176;
                            }
                          }

                          else if ([MBRestoreCloudFormatPolicy isRestoringFromFileLists:&v168 persona:v155 error:a3])
                          {
                            goto LABEL_102;
                          }
                        }

                        else
                        {
                          if (!a3)
                          {
                            v86 = 0;
                            v15 = 0;
LABEL_178:

                            goto LABEL_79;
                          }

                          v148 = [(MBCKEngine *)self context];
                          v83 = [v148 snapshotID];
                          v84 = [(MBCKEngine *)self device];
                          v85 = [v84 snapshots];
                          *a3 = +[MBError errorWithCode:format:](MBError, "errorWithCode:format:", 205, @"Invalid snapshot offset (%ld of %lu snapshots)", v83, [v85 count]);
                        }

                        v86 = 0;
                        v15 = 0;
LABEL_177:

                        goto LABEL_178;
                      }
                    }

                    else
                    {
                      v80 = MBGetDefaultLog();
                      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                      {
                        LOWORD(buf) = 0;
                        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to acquire lock", &buf, 2u);
                        _MBLog();
                      }
                    }
                  }

                  goto LABEL_78;
                }
              }

              v53 = [(MBCKEngine *)self device];
              v54 = [v53 keybagManager];
              v55 = [v54 hasFetchedKeybags];

              if (v55)
              {
                goto LABEL_54;
              }

              if (-[MBEngine isForegroundRestore](self, "isForegroundRestore") || (-[MBCKEngine persona](self, "persona"), v56 = objc_claimAutoreleasedReturnValue(), v57 = [v56 isDataSeparatedPersona], v56, v57))
              {
                v58 = [(MBCKEngine *)self device];
                v59 = [v58 keybagManager];
                v60 = [v59 fetchKeybagsWithOperationTracker:v157 error:a3];

                if (v60)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                v81 = MBGetDefaultLog();
                if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf) = 0;
                  _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Restore keybag not loaded yet", &buf, 2u);
                  _MBLog();
                }

                if (a3)
                {
                  [MBError errorWithCode:208 format:@"Restore keybag not loaded yet"];
                  *a3 = v15 = 0;
                  goto LABEL_79;
                }
              }
            }

LABEL_78:
            v15 = 0;
LABEL_79:
            v29 = v153;
            goto LABEL_80;
          }

LABEL_74:
          v15 = 0;
LABEL_80:

          v26 = v154;
          goto LABEL_81;
        }
      }

      v15 = 0;
LABEL_82:

      v20 = v157;
      goto LABEL_83;
    }

    goto LABEL_46;
  }

  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=ckrestore-engine= nil domain manager", &buf, 2u);
    _MBLog();
  }

  if (!a3)
  {
LABEL_46:
    v15 = 0;
    goto LABEL_47;
  }

  [MBError errorWithCode:1 format:@"nil domain manager"];
  *a3 = v15 = 0;
LABEL_47:

  return v15;
}

- (BOOL)cancelWithError:(id)a3
{
  v7.receiver = self;
  v7.super_class = MBCKRestoreEngine;
  v4 = [(MBCKEngine *)&v7 cancelWithError:a3];
  if (!v4)
  {
    v5 = [(MBCKRestoreEngine *)self cacheDeleteRequest];
    [v5 cancel];
  }

  return v4;
}

- (BOOL)synchronizeFileListsWithError:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[MBCKRestoreEngine synchronizeFileListsWithError:]", "MBCKRestoreEngine.m", 767, "error");
  }

  if (![(MBEngine *)self isForegroundRestore])
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= =sync= Skipping file list synchronization for background restore", buf, 2u);
LABEL_15:
      _MBLog();
    }

LABEL_16:
    v12 = 1;
    goto LABEL_73;
  }

  if (![(MBCKRestoreEngine *)self useFileLists])
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= =sync= Skipping file list synchronization, restoring legacy snapshot data", buf, 2u);
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v5 = [(MBCKEngine *)self serviceManager];
  if (!v5)
  {
    __assert_rtn("[MBCKRestoreEngine synchronizeFileListsWithError:]", "MBCKRestoreEngine.m", 780, "serviceManager");
  }

  v6 = v5;
  v7 = [(MBCKEngine *)self serviceAccount];
  if (!v7)
  {
    __assert_rtn("[MBCKRestoreEngine synchronizeFileListsWithError:]", "MBCKRestoreEngine.m", 783, "account");
  }

  v8 = v7;
  v9 = [(MBCKSnapshot *)self->_targetSnapshot snapshotID];
  v65 = a3;
  v10 = [v6 restorePlanForAccount:v8 snapshotUUID:v9 error:a3];
  v66 = v10;
  if (v10)
  {
    if ([v10 isPopulated])
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v83 = v66;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= =sync= Restore plan already synchronized %@", buf, 0xCu);
        _MBLog();
      }

      v12 = 1;
    }

    else
    {
      v14 = [(MBCKEngine *)self device];
      if (!v14)
      {
        __assert_rtn("[MBCKRestoreEngine synchronizeFileListsWithError:]", "MBCKRestoreEngine.m", 799, "device");
      }

      v11 = v14;
      v15 = [(MBCKEngine *)self ckOperationTracker];
      if (!v15)
      {
        __assert_rtn("[MBCKRestoreEngine synchronizeFileListsWithError:]", "MBCKRestoreEngine.m", 801, "tracker");
      }

      v16 = v15;
      v17 = +[NSMutableArray array];
      v18 = [v66 restoreSnapshotsDirectoryRoot];
      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_100058D94;
      v79[3] = &unk_1003BC478;
      v19 = v17;
      v80 = v19;
      LOBYTE(v17) = [v11 synchronizeFileListsWithOperationTracker:v16 snapshotDirectory:v18 snapshotUUID:v9 error:a3 fetchedFileListBlock:v79];

      v63 = v19;
      if (v17)
      {
        v58 = v16;
        v59 = v11;
        v60 = v9;
        v61 = v8;
        v62 = v6;

        v57 = [(MBEngine *)self domainManager];
        if (!v57)
        {
          __assert_rtn("[MBCKRestoreEngine synchronizeFileListsWithError:]", "MBCKRestoreEngine.m", 814, "domainManager");
        }

        [v19 sortUsingSelector:"compare:"];
        v20 = +[NSMutableArray array];
        v21 = +[NSMutableArray array];
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v22 = v19;
        v23 = [v22 countByEnumeratingWithState:&v75 objects:v89 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v76;
          do
          {
            for (i = 0; i != v24; i = i + 1)
            {
              if (*v76 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v75 + 1) + 8 * i);
              v28 = [(MBCKRestoreEngine *)self restorePolicy];
              v29 = [v28 shouldForegroundRestoreDomain:v27];

              if (v29)
              {
                v30 = v20;
              }

              else
              {
                v30 = v21;
              }

              [v30 addObject:v27];
            }

            v24 = [v22 countByEnumeratingWithState:&v75 objects:v89 count:16];
          }

          while (v24);
        }

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v31 = v20;
        v32 = [v31 countByEnumeratingWithState:&v71 objects:v88 count:16];
        obj = v31;
        if (v32)
        {
          v33 = v32;
          v34 = *v72;
LABEL_36:
          v35 = 0;
          while (1)
          {
            if (*v72 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v71 + 1) + 8 * v35);
            v37 = MBGetDefaultLog();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v83 = v36;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= =sync= Ingesting foreground domain (%@) into restore plan", buf, 0xCu);
              _MBLog();
            }

            if (([v66 ingestFileListForDomainNamed:v36 error:v65] & 1) == 0)
            {
              break;
            }

            if (![(MBCKRestoreEngine *)self _markForegroundRestorablesForBackgroundRestoreInPlan:v66 domainName:v36 error:v65])
            {
              v12 = 0;
              v50 = obj;
              v38 = obj;
              v8 = v61;
              v6 = v62;
              v11 = v59;
              v9 = v60;
LABEL_65:
              v47 = v57;
              goto LABEL_70;
            }

            if (v33 == ++v35)
            {
              v31 = obj;
              v33 = [obj countByEnumeratingWithState:&v71 objects:v88 count:16];
              if (v33)
              {
                goto LABEL_36;
              }

              goto LABEL_45;
            }
          }

          v48 = MBGetDefaultLog();
          v8 = v61;
          v6 = v62;
          v11 = v59;
          v9 = v60;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v49 = *v65;
            *buf = 138412802;
            v83 = v36;
            v84 = 2112;
            v85 = v66;
            v86 = 2112;
            v87 = v49;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "=ckrestore-engine= =sync= Error ingesting foreground domain (%@) into restore plan %@: %@", buf, 0x20u);
            v55 = *v65;
            _MBLog();
          }

          v12 = 0;
          v50 = obj;
          v38 = obj;
          goto LABEL_65;
        }

LABEL_45:

        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v38 = v21;
        v39 = [v38 countByEnumeratingWithState:&v67 objects:v81 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v68;
          while (2)
          {
            for (j = 0; j != v40; j = j + 1)
            {
              if (*v68 != v41)
              {
                objc_enumerationMutation(v38);
              }

              v43 = *(*(&v67 + 1) + 8 * j);
              v44 = MBGetDefaultLog();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v83 = v43;
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= =sync= Ingesting background domain (%@) into restore plan", buf, 0xCu);
                _MBLog();
              }

              if (([v66 ingestFileListForDomainNamed:v43 error:v65] & 1) == 0)
              {
                v51 = MBGetDefaultLog();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  v52 = *v65;
                  *buf = 138412802;
                  v83 = v43;
                  v84 = 2112;
                  v85 = v66;
                  v86 = 2112;
                  v87 = v52;
                  _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "=ckrestore-engine= =sync= Error ingesting background domain (%@) into restore plan %@: %@", buf, 0x20u);
                  v56 = *v65;
                  _MBLog();
                }

                v12 = 0;
                goto LABEL_69;
              }
            }

            v40 = [v38 countByEnumeratingWithState:&v67 objects:v81 count:16];
            if (v40)
            {
              continue;
            }

            break;
          }
        }

        v38 = MBGetDefaultLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v22 count];
          *buf = 134218242;
          v83 = v45;
          v84 = 2112;
          v85 = v66;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= =sync= Restore plan initialized, ingested %ld file lists: %@", buf, 0x16u);
          [v22 count];
          _MBLog();
        }

        v12 = 1;
LABEL_69:
        v8 = v61;
        v6 = v62;
        v11 = v59;
        v9 = v60;
        v47 = v57;
        v50 = obj;
LABEL_70:

        v16 = v58;
      }

      else
      {
        v46 = MBGetDefaultLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "=ckrestore-engine= =sync= Error synchronizing file lists", buf, 2u);
          _MBLog();
        }

        v12 = 0;
        v47 = v80;
      }
    }
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *a3;
      *buf = 138412290;
      v83 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=ckrestore-engine= =sync= Failed to open a restore plan to synchronize into: %@", buf, 0xCu);
      v54 = *a3;
      _MBLog();
    }

    v12 = 0;
  }

LABEL_73:
  return v12;
}

- (BOOL)_markForegroundRestorablesForBackgroundRestoreInPlan:(id)a3 domainName:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    __assert_rtn("[MBCKRestoreEngine _markForegroundRestorablesForBackgroundRestoreInPlan:domainName:error:]", "MBCKRestoreEngine.m", 857, "error");
  }

  v10 = v9;
  v11 = [(MBEngine *)self domainManager];
  v12 = [v11 domainForName:v10];

  if (!v12)
  {
    __assert_rtn("[MBCKRestoreEngine _markForegroundRestorablesForBackgroundRestoreInPlan:domainName:error:]", "MBCKRestoreEngine.m", 860, "domain");
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v13 = [v8 planForDomain:v12 restoreType:1 error:a5];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_11;
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000591E0;
  v25[3] = &unk_1003BC4A0;
  v25[4] = self;
  v25[5] = &v30;
  v25[6] = &v26;
  if (([v13 enumerateAndMarkATCRestorables:a5 enumerator:v25] & 1) == 0)
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *a5;
      *buf = 138412546;
      v35 = v10;
      v36 = 2112;
      v37 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=ckrestore-engine= =sync= Error marking ATC files for (%@) in restore plan: %@", buf, 0x16u);
      v24 = *a5;
      _MBLog();
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v27[3];
    v17 = v31[3];
    *buf = 134218498;
    v35 = v16;
    v36 = 2048;
    v37 = v17;
    v38 = 2112;
    v39 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= =sync= Deferred %ld/%ld restorables from foreground to background in %@", buf, 0x20u);
    v23 = v31[3];
    v22 = v27[3];
    _MBLog();
  }

  v18 = 1;
LABEL_12:

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v18;
}

- (BOOL)findRestorablesWithError:(id *)a3
{
  if ([(MBCKRestoreEngine *)self useFileLists])
  {
    v4 = MBGetDefaultLog();
    v5 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Skipping findRestorables when restoring assets from file lists", &buf, 2u);
      _MBLog();
      v6 = 1;
      v5 = v4;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v50 = [(MBCKEngine *)self cache];
    v44 = self->_validSnapshots;
    v49 = [(MBEngine *)self domainManager];
    v45 = [(MBCKEngine *)self serviceAccount];
    Current = CFAbsoluteTimeGetCurrent();
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Finding restorable files", &buf, 2u);
      _MBLog();
    }

    v9 = [(MBCKEngine *)self serviceManager];
    v51 = [v9 openCacheWithAccount:v45 accessType:2 cached:0 error:a3];

    if (v51)
    {
      v76 = 0;
      v77 = &v76;
      v78 = 0x2020000000;
      v79 = 0;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      obj = v44;
      v10 = 0;
      v11 = [(NSArray *)obj countByEnumeratingWithState:&v72 objects:v89 count:16];
      if (v11)
      {
        v48 = *v73;
        do
        {
          v12 = 0;
          do
          {
            if (*v73 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v72 + 1) + 8 * v12);
            v71 = v10;
            v14 = [(MBCKEngine *)self handleCancelation:&v71, v40, v43];
            v15 = v71;

            if (v14)
            {
              v10 = v15;
              goto LABEL_31;
            }

            v16 = MBGetDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v13;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Adding restorables for snapshot %@", &buf, 0xCu);
              v40 = v13;
              _MBLog();
            }

            v67 = 0;
            v68 = &v67;
            v69 = 0x2020000000;
            v70 = 0;
            *&buf = 0;
            *(&buf + 1) = &buf;
            v85 = 0x3032000000;
            v86 = sub_100059C00;
            v87 = sub_100059C10;
            v88 = 0;
            v61 = 0;
            v62 = &v61;
            v63 = 0x3032000000;
            v64 = sub_100059C00;
            v65 = sub_100059C10;
            v66 = 0;
            v17 = [v13 snapshotID];
            v53[0] = _NSConcreteStackBlock;
            v53[1] = 3221225472;
            v53[2] = sub_100059C18;
            v53[3] = &unk_1003BC4C8;
            v54 = v49;
            v55 = self;
            v57 = &v61;
            v56 = v50;
            p_buf = &buf;
            v59 = &v67;
            v60 = &v76;
            v18 = [v51 enumerateFilesForSnapshotOrderedByDomain:v17 block:v53];

            v19 = MBGetDefaultLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = v68[3];
              v21 = *(*(&buf + 1) + 40);
              *v80 = 134218242;
              v81 = v20;
              v82 = 2114;
              v83 = v21;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Found %llu restorables for %{public}@", v80, 0x16u);
              v40 = v68[3];
              v43 = *(*(&buf + 1) + 40);
              _MBLog();
            }

            v22 = v18;
            if (v18 || (v22 = v62[5]) != 0)
            {
              v10 = v22;

              v23 = 0;
            }

            else
            {
              v23 = 1;
              v10 = v15;
            }

            _Block_object_dispose(&v61, 8);
            _Block_object_dispose(&buf, 8);

            _Block_object_dispose(&v67, 8);
            if (!v23)
            {
              goto LABEL_31;
            }

            v12 = v12 + 1;
          }

          while (v11 != v12);
          v24 = [(NSArray *)obj countByEnumeratingWithState:&v72 objects:v89 count:16];
          v11 = v24;
        }

        while (v24);
      }

LABEL_31:

      [v51 close];
      if (v10)
      {
        if (a3)
        {
          v27 = v10;
          v6 = 0;
          *a3 = v10;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v77[3];
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Found %llu total restorables", &buf, 0xCu);
          v42 = v77[3];
          _MBLog();
        }

        v52 = 0;
        v30 = [v50 computeSignatureRetainCountsWithError:&v52];
        v31 = v52;
        if (v30)
        {
          v32 = [v50 removeDeletedRestoreFiles];

          if (v32)
          {
            v33 = MBGetDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v32;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to remove deleted restore files prior to restore: %@", &buf, 0xCu);
              _MBLog();
            }

            if (a3)
            {
              v34 = v32;
              v6 = 0;
              *a3 = v32;
            }

            else
            {
              v6 = 0;
            }

            v31 = v32;
          }

          else
          {
            v37 = CFAbsoluteTimeGetCurrent();
            v38 = MBGetDefaultLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 134217984;
              *(&buf + 4) = v37 - Current;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Finished finding restorables in %.3fs", &buf, 0xCu);
              _MBLog();
            }

            v31 = 0;
            v6 = 1;
          }
        }

        else
        {
          v35 = MBGetDefaultLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v31;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to compute signature retain counts: %@", &buf, 0xCu);
            _MBLog();
          }

          if (a3)
          {
            v36 = v31;
            v6 = 0;
            *a3 = v31;
          }

          else
          {
            v6 = 0;
          }
        }
      }

      _Block_object_dispose(&v76, 8);
    }

    else
    {
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = *a3;
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to open readonly cache %@", &buf, 0xCu);
        v41 = *a3;
        _MBLog();
      }

      v6 = 0;
    }

    v5 = v50;
  }

  return v6;
}

- (void)_uninstallExistingAppWithBundleID:(id)a3
{
  v4 = a3;
  v5 = [(MBCKEngine *)self serviceAccount];
  if (!v5)
  {
    __assert_rtn("[MBCKRestoreEngine _uninstallExistingAppWithBundleID:]", "MBCKRestoreEngine.m", 1016, "serviceAccount");
  }

  v6 = v5;
  v7 = [(MBEngine *)self settingsContext];
  v8 = [v7 mobileInstallation];

  if (!v8)
  {
    __assert_rtn("[MBCKRestoreEngine _uninstallExistingAppWithBundleID:]", "MBCKRestoreEngine.m", 1018, "mobileInstallation");
  }

  v9 = [(MBCKRestoreEngine *)self useFileLists];
  v10 = [v6 persona];
  if (v9)
  {
    v27 = 0;
    v11 = [v8 userAppWithBundleID:v4 placeholder:1 persona:v10 error:&v27];
    v12 = v27;

    v13 = v11 != 0;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v26 = 0;
    v11 = [v8 userAppWithBundleID:v4 placeholder:0 persona:v10 error:&v26];
    v12 = v26;

    if (v11)
    {
      v14 = [v11 objectForKeyedSubscript:@"IsInstalled"];
      v15 = [v14 BOOLValue];

      if ((v15 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_13:
      v17 = [MBApp alloc];
      v18 = [(MBCKEngine *)self persona];
      v19 = [v18 userDataVolume];
      v20 = [(MBContainer *)v17 initWithPropertyList:v11 volumeMountPoint:v19];

      LODWORD(v18) = [(MBApp *)v20 isSystemApp];
      v21 = MBGetDefaultLog();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        if (v22)
        {
          *buf = 138412290;
          v29 = v4;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Not uninstalling system app with bundleID %@", buf, 0xCu);
          _MBLog();
        }
      }

      else
      {
        if (v22)
        {
          *buf = 138412290;
          v29 = v4;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Uninstalling 2nd party factory-installed app %@", buf, 0xCu);
          _MBLog();
        }

        v25 = v12;
        v23 = [MBMobileInstallation uninstallAppWithBundleID:v4 error:&v25];
        v24 = v25;

        if (v23)
        {
          v12 = v24;
LABEL_24:

          goto LABEL_25;
        }

        v21 = MBGetDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v29 = v4;
          v30 = 2112;
          v31 = v24;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to uninstall %{public}@: %@", buf, 0x16u);
          _MBLog();
        }

        v12 = v24;
      }

      goto LABEL_24;
    }

    v13 = 0;
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = v4;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Failed to find user app %@: %@", buf, 0x16u);
    _MBLog();
  }

  v11 = 0;
  if (v13)
  {
    goto LABEL_13;
  }

LABEL_25:
}

- (id)_fetchDomainNamesToForegroundRestoreWithError:(id *)a3
{
  v5 = [(MBCKEngine *)self ckOperationTracker];
  if (!v5)
  {
    __assert_rtn("[MBCKRestoreEngine _fetchDomainNamesToForegroundRestoreWithError:]", "MBCKRestoreEngine.m", 1054, "tracker");
  }

  v6 = v5;
  v7 = [v5 account];
  if (!v7)
  {
    __assert_rtn("[MBCKRestoreEngine _fetchDomainNamesToForegroundRestoreWithError:]", "MBCKRestoreEngine.m", 1056, "serviceAccount");
  }

  v8 = v7;
  v9 = [(MBEngine *)self domainManager];
  if (!v9)
  {
    __assert_rtn("[MBCKRestoreEngine _fetchDomainNamesToForegroundRestoreWithError:]", "MBCKRestoreEngine.m", 1058, "domainManager");
  }

  v10 = v9;
  v11 = self->_targetSnapshot;
  if (!v11)
  {
    __assert_rtn("[MBCKRestoreEngine _fetchDomainNamesToForegroundRestoreWithError:]", "MBCKRestoreEngine.m", 1060, "targetSnapshot");
  }

  v12 = v11;
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v138[0] = _NSConcreteStackBlock;
  v138[1] = 3221225472;
  v138[2] = sub_10005B144;
  v138[3] = &unk_1003BC4F0;
  v138[4] = self;
  v96 = v13;
  v139 = v96;
  v95 = v10;
  v140 = v95;
  v15 = v14;
  v141 = v15;
  v16 = objc_retainBlock(v138);
  v110 = v15;
  if ([(MBCKRestoreEngine *)self useFileLists])
  {
    v17 = self;
    v18 = [(MBCKRestoreEngine *)self _populatedRestorePlan];
    if (!v18)
    {
      __assert_rtn("[MBCKRestoreEngine _fetchDomainNamesToForegroundRestoreWithError:]", "MBCKRestoreEngine.m", 1102, "plan");
    }

    v19 = v18;
    v137 = 0;
    v20 = [v18 enumerateDomainNamesPendingRestoreWithError:&v137 enumerator:v16];
    v21 = v137;
    v22 = v21;
    if ((v20 & 1) == 0)
    {
      if (a3)
      {
        v29 = v21;
        *a3 = v22;
      }

      v30 = MBGetDefaultLog();
      v15 = v110;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v146 = v22;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to enumerate restorable domains from plan: %@", buf, 0xCu);
        _MBLog();
      }

      goto LABEL_23;
    }

    v136 = v21;
    v135[0] = _NSConcreteStackBlock;
    v135[1] = 3221225472;
    v135[2] = sub_10005B36C;
    v135[3] = &unk_1003BC518;
    v135[4] = self;
    v23 = [v19 enumerateBundleIDsWithPlaceholderIPAsWithError:&v136 enumerator:v135];
    v24 = v136;

    if ((v23 & 1) == 0)
    {
      if (a3)
      {
        v77 = v24;
        *a3 = v24;
      }

      v78 = MBGetDefaultLog();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v146 = v24;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to enumerate app bundleIDs from plan: %@", buf, 0xCu);
        _MBLog();
      }

      v31 = 0;
      v15 = v110;
      goto LABEL_24;
    }

    v15 = v110;
  }

  else
  {
    v25 = [(MBCKEngine *)self cache];
    v133[0] = _NSConcreteStackBlock;
    v133[1] = 3221225472;
    v133[2] = sub_10005B4D0;
    v133[3] = &unk_1003BC540;
    v134 = v16;
    v26 = [v25 enumeratePendingRestorableDomainsWithCallback:v133];

    if (v26)
    {
      if (a3)
      {
        v27 = v26;
        *a3 = v26;
      }

      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v146 = v26;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to enumerate restorable domains from cache: %@", buf, 0xCu);
        _MBLog();
      }

      goto LABEL_23;
    }

    v17 = self;
    v19 = v134;
  }

  if ([(MBCKEngine *)v17 handleCancelation:a3])
  {
LABEL_23:
    v31 = 0;
    goto LABEL_24;
  }

  v92 = v12;
  v93 = v8;
  v94 = v6;
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  p_isa = &v17->super.super.super.isa;
  obj = [(MBAppManager *)v17->super.super._appManager allPlugins];
  v100 = [obj countByEnumeratingWithState:&v129 objects:v154 count:16];
  v101 = v16;
  if (v100)
  {
    v99 = *v130;
    do
    {
      v33 = 0;
      do
      {
        if (*v130 != v99)
        {
          objc_enumerationMutation(obj);
        }

        v106 = v33;
        v34 = *(*(&v129 + 1) + 8 * v33);
        context = objc_autoreleasePoolPush();
        v35 = [v34 identifier];
        v36 = [v34 domain];
        v37 = [v36 name];

        v38 = MBGetDefaultLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [v34 containerTypeString];
          *buf = 138412802;
          v146 = v37;
          v147 = 2112;
          v148 = v35;
          v149 = 2112;
          v150 = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Adding plugin %@/%@ (%@)", buf, 0x20u);

          [v34 containerTypeString];
          v90 = v89 = v35;
          v88 = v37;
          _MBLog();
        }

        v102 = v37;
        [v15 addObject:v37];
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v109 = [v34 allAppGroupContainers];
        v40 = [v109 countByEnumeratingWithState:&v125 objects:v153 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v126;
          do
          {
            for (i = 0; i != v41; i = i + 1)
            {
              if (*v126 != v42)
              {
                objc_enumerationMutation(v109);
              }

              v44 = *(*(&v125 + 1) + 8 * i);
              v45 = MBGetDefaultLog();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                v46 = [v44 domain];
                v47 = [v46 name];
                v48 = [v44 identifier];
                v49 = [v44 containerTypeString];
                *buf = 138413058;
                v146 = v47;
                v147 = 2112;
                v148 = v48;
                v149 = 2112;
                v150 = v49;
                v151 = 2112;
                v152 = v35;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Adding app group container %@/%@ (%@) for %@", buf, 0x2Au);

                v50 = [v44 domain];
                v51 = [v50 name];
                v52 = [v44 identifier];
                v90 = [v44 containerTypeString];
                v91 = v35;
                v88 = v51;
                v89 = v52;
                _MBLog();

                v15 = v110;
              }

              v53 = [v44 domain];
              v54 = [v53 name];
              [v15 addObject:v54];
            }

            v41 = [v109 countByEnumeratingWithState:&v125 objects:v153 count:16];
          }

          while (v41);
        }

        objc_autoreleasePoolPop(context);
        v33 = v106 + 1;
        v16 = v101;
      }

      while (v106 + 1 != v100);
      v100 = [obj countByEnumeratingWithState:&v129 objects:v154 count:16];
    }

    while (v100);
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v107 = [p_isa[6] allApps];
  v55 = [v107 countByEnumeratingWithState:&v121 objects:v144 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v122;
    v103 = *v122;
    do
    {
      v58 = 0;
      contexta = v56;
      do
      {
        if (*v122 != v57)
        {
          objc_enumerationMutation(v107);
        }

        v59 = *(*(&v121 + 1) + 8 * v58);
        if ([v59 isSystemApp])
        {
          v60 = [v59 containerDir];

          if (v60)
          {
            v108 = v58;
            v119 = 0u;
            v120 = 0u;
            v117 = 0u;
            v118 = 0u;
            v61 = [v59 containers];
            v62 = [v61 countByEnumeratingWithState:&v117 objects:v143 count:16];
            if (v62)
            {
              v63 = v62;
              v64 = *v118;
              do
              {
                for (j = 0; j != v63; j = j + 1)
                {
                  if (*v118 != v64)
                  {
                    objc_enumerationMutation(v61);
                  }

                  v66 = *(*(&v117 + 1) + 8 * j);
                  if ([v66 containerType] - 1 <= 2)
                  {
                    v67 = MBGetDefaultLog();
                    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                    {
                      v68 = [v66 domain];
                      v69 = [v68 name];
                      v70 = [v66 identifier];
                      v71 = [v66 containerTypeString];
                      *buf = 138412802;
                      v146 = v69;
                      v147 = 2112;
                      v148 = v70;
                      v149 = 2112;
                      v150 = v71;
                      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Adding container %@/%@ (%@)", buf, 0x20u);

                      v72 = [v66 domain];
                      v73 = [v72 name];
                      v74 = [v66 identifier];
                      [v66 containerTypeString];
                      v90 = v89 = v74;
                      v88 = v73;
                      _MBLog();

                      v15 = v110;
                    }

                    v75 = [v66 domain];
                    v76 = [v75 name];
                    [v15 addObject:v76];
                  }
                }

                v63 = [v61 countByEnumeratingWithState:&v117 objects:v143 count:16];
              }

              while (v63);
            }

            v16 = v101;
            v57 = v103;
            v56 = contexta;
            v58 = v108;
          }
        }

        v58 = v58 + 1;
      }

      while (v58 != v56);
      v56 = [v107 countByEnumeratingWithState:&v121 objects:v144 count:16];
    }

    while (v56);
  }

  if ([p_isa useFileLists])
  {
    [v15 intersectSet:v96];
  }

  else
  {
    v79 = +[NSMutableSet set];
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v80 = v15;
    v81 = [v80 countByEnumeratingWithState:&v113 objects:v142 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v114;
      do
      {
        for (k = 0; k != v82; k = k + 1)
        {
          if (*v114 != v83)
          {
            objc_enumerationMutation(v80);
          }

          v85 = *(*(&v113 + 1) + 8 * k);
          v86 = [p_isa cache];
          v111[0] = _NSConcreteStackBlock;
          v111[1] = 3221225472;
          v111[2] = sub_10005B4E4;
          v111[3] = &unk_1003BC568;
          v111[4] = v85;
          v112 = v79;
          v87 = [v86 fetchPendingRestoreSizeForDomain:v85 callback:v111];
        }

        v82 = [v80 countByEnumeratingWithState:&v113 objects:v142 count:16];
      }

      while (v82);
    }

    [v80 minusSet:v79];
    v15 = v110;
    v16 = v101;
  }

  v31 = v15;
  v8 = v93;
  v6 = v94;
  v12 = v92;
LABEL_24:

  return v31;
}

- (BOOL)_downloadRestorablesForForegroundWithError:(id *)a3
{
  v5 = [(MBCKRestoreEngine *)self _fetchDomainNamesToForegroundRestoreWithError:?];
  if (v5)
  {
    [(MBRestorePolicy *)self->_restorePolicy setDomainNamesToForegroundRestore:v5];
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
    [(MBCKRestoreEngine *)self setForegroundRestorableDomainCount:v6];

    v7 = self->_targetSnapshot;
    if (!v7)
    {
      __assert_rtn("[MBCKRestoreEngine _downloadRestorablesForForegroundWithError:]", "MBCKRestoreEngine.m", 1198, "targetSnapshot");
    }

    v8 = v7;
    if ([(MBCKRestoreEngine *)self useFileLists])
    {
      v9 = [(MBCKRestoreEngine *)self _restoreForegroundFilesUsingPlanForDomainNames:v5 error:a3];
    }

    else
    {
      v9 = [(MBCKRestoreEngine *)self _restoreForegroundFilesUsingCKCacheForDomainNames:v5 error:a3];
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_restoreDomainEngineForDomain:(id)a3 plan:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MBCKEngine *)self device];
  if (!v10)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreDomainEngineForDomain:plan:error:]", "MBCKRestoreEngine.m", 1209, "device");
  }

  v11 = v10;
  v12 = [(MBCKEngine *)self ckOperationTracker];
  if (!v12)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreDomainEngineForDomain:plan:error:]", "MBCKRestoreEngine.m", 1211, "tracker");
  }

  v13 = v12;
  v14 = [(MBCKEngine *)self persona];
  if (!v14)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreDomainEngineForDomain:plan:error:]", "MBCKRestoreEngine.m", 1213, "persona");
  }

  v15 = v14;
  v16 = [(MBCKRestoreEngine *)self restorePolicy];
  v17 = [v16 restoreRootForDomain:v8];

  if ([(MBEngine *)self isForegroundRestore]&& ![MBFileOperation createDirectories:4294967294 destinationBasePath:@"/" destinationRpath:v17 permissions:493 error:a5])
  {
    v28 = 0;
  }

  else
  {
    v18 = [_TtC7backupd14MBRestoreDepot restoreDepotWithPersona:v15 destination:v17 restoreDepotOverridePath:0 error:a5];
    if (v18)
    {
      v19 = [v9 planForDomain:v8 restoreType:-[MBCKRestoreEngine restoreType](self error:{"restoreType"), a5}];
      if (v19)
      {
        v20 = [MBAssetRecordFetcher assetFetcherWithTracker:v13 device:v11 error:a5];
        if (v20)
        {
          v44 = v20;
          v21 = [MBAssetDecrypterFactory assetDecrypterWithTracker:v13 device:v11 error:a5];
          if (v21)
          {
            v39 = v21;
            v40 = v9;
            v37 = v19;
            v22 = [(MBCKRestoreEngine *)self targetSnapshot];
            v38 = v22;
            if (-[MBEngine isBackgroundRestore](self, "isBackgroundRestore") && (v23 = [v22 snapshotFormat], -[MBCKEngine serviceAccount](self, "serviceAccount"), v24 = objc_claimAutoreleasedReturnValue(), v25 = v23, v26 = v24, v41 = +[MBRestoreSnapshotIntegrityVerifier shouldRunVerifierForRestoreWithSnapshotFormat:account:](MBRestoreSnapshotIntegrityVerifier, "shouldRunVerifierForRestoreWithSnapshotFormat:account:", v25), v26, v41))
            {
              v42 = [MBRestoreSnapshotIntegrityVerifier alloc];
              v35 = [(MBCKRestoreEngine *)self restorePolicy];
              v33 = [v22 snapshotFormat];
              v31 = [v40 restoreSnapshotsDirectoryRoot];
              v27 = [v22 snapshotID];
              v43 = [(MBRestoreSnapshotIntegrityVerifier *)v42 initWithPolicy:v35 snapshotFormat:v33 snapshotDir:v31 snapshotUUID:v27 delegate:self];
            }

            else
            {
              v43 = 0;
            }

            v36 = [MBRestoreDomainEngine alloc];
            v34 = [(MBCKRestoreEngine *)self restorePolicy];
            v32 = [(MBCKEngine *)self progressModel];
            v29 = [(MBCKRestoreEngine *)self restoreLogger];
            v19 = v37;
            v28 = [(MBRestoreDomainEngine *)v36 initWithRootPath:v17 policy:v34 depot:v18 fetcher:v44 decrypter:v39 plan:v37 progress:v32 verifier:v43 logger:v29 error:a5];

            v21 = v39;
            v9 = v40;
          }

          else
          {
            v28 = 0;
          }

          v20 = v44;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  return v28;
}

- (BOOL)_restoreForegroundFilesUsingPlanForDomainNames:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MBCKRestoreEngine *)self _populatedRestorePlan];
  if (!v7)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreForegroundFilesUsingPlanForDomainNames:error:]", "MBCKRestoreEngine.m", 1270, "plan");
  }

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INITIATED, 0);

  v10 = dispatch_queue_create("com.apple.MobileBackup.ForegroundRestore", v9);
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v54) = [v6 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "=ckrestore-engine= Performing restore for %u foreground domains using plan", buf, 8u);
    [v6 count];
    _MBLog();
  }

  v12 = [(MBCKRestoreEngine *)self _restoreDomains:v6 plan:v7 withQueue:v10 concurrencyLimit:6 error:a4];
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v36 = 0;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10005BF88;
  v30[3] = &unk_1003BC590;
  v13 = v6;
  v31 = v13;
  v32 = &v49;
  v33 = &v45;
  v34 = &v37;
  v35 = &v41;
  v14 = [v7 enumerateDomainsAndAttributes:&v36 enumerator:v30];
  v15 = v36;
  if (v14)
  {
    v16 = [NSNumber numberWithUnsignedLongLong:v50[3]];
    [(MBCKRestoreEngine *)self setForegroundRestorableFileCount:v16];

    v17 = [NSNumber numberWithLongLong:v46[3]];
    [(MBCKRestoreEngine *)self setForegroundRestorableSize:v17];

    v18 = [NSNumber numberWithLongLong:v38[3]];
    [(MBCKRestoreEngine *)self setBackgroundRestorableFileCount:v18];

    v19 = [NSNumber numberWithUnsignedLongLong:v42[3]];
    [(MBCKRestoreEngine *)self setBackgroundRestorableSize:v19];

    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v50[3];
      v22 = v46[3];
      v23 = v38[3];
      v24 = v42[3];
      *buf = 134218752;
      v54 = v21;
      v55 = 2048;
      v56 = v22;
      v57 = 2048;
      v58 = v23;
      v59 = 2048;
      v60 = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Foreground asset count:%llu size:%llu, background asset count:%llu size:%llu", buf, 0x2Au);
      v28 = v38[3];
      v29 = v42[3];
      v26 = v50[3];
      v27 = v46[3];
      _MBLog();
    }
  }

  else
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v54 = v15;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to collect FG/BG domain statistics from restore plan: %@", buf, 0xCu);
      _MBLog();
    }
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  return v12;
}

- (BOOL)_restoreDomains:(id)a3 plan:(id)a4 withQueue:(id)a5 concurrencyLimit:(unint64_t)a6 error:(id *)a7
{
  v36 = a3;
  v12 = a4;
  v40 = a5;
  v13 = [(MBCKEngine *)self progressModel];
  v14 = [v12 addRemainingProgress:v13 forDomainNames:v36 error:a7];

  if (v14)
  {
    dsema = dispatch_semaphore_create(a6);
    group = dispatch_group_create();
    v42 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v36;
    v15 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v15)
    {
      v16 = *v49;
LABEL_4:
      v17 = 0;
      while (1)
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v48 + 1) + 8 * v17);
        if ([v42 count])
        {
          break;
        }

        v19 = [(MBEngine *)self domainManager];
        v20 = [v19 domainForName:v18];

        if (!v20)
        {
          __assert_rtn("[MBCKRestoreEngine _restoreDomains:plan:withQueue:concurrencyLimit:error:]", "MBCKRestoreEngine.m", 1325, "domain");
        }

        if ([v20 hasRootPath])
        {
          v47 = 0;
          v21 = [(MBCKRestoreEngine *)self _restoreDomainEngineForDomain:v20 plan:v12 error:&v47];
          v22 = v47;
          v23 = v22;
          if (!v21)
          {
            v32 = MBGetDefaultLog();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v54 = v23;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to create restore domain engine: %@", buf, 0xCu);
              _MBLog();
            }

            v33 = v42;
            objc_sync_enter(v33);
            [v33 addObject:v23];
            objc_sync_exit(v33);

            break;
          }

          v41 = v20;
          v24 = v22;
          dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10005C56C;
          block[3] = &unk_1003BC5B8;
          block[4] = v18;
          v44 = v21;
          v45 = v42;
          v25 = v24;
          v20 = v41;
          v46 = dsema;
          v26 = v21;
          dispatch_group_async(group, v40, block);
        }

        else
        {
          v27 = MBGetDefaultLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [v20 name];
            *buf = 138412290;
            v54 = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Not restoring domain %@ with nil root path", buf, 0xCu);

            v35 = [v20 name];
            _MBLog();
          }

          v52 = v18;
          v29 = [NSArray arrayWithObjects:&v52 count:1];
          v30 = [v12 skipDomains:v29 error:a7];

          if ((v30 & 1) == 0)
          {

            goto LABEL_27;
          }
        }

        if (v15 == ++v17)
        {
          v15 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
          if (v15)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
    if ([v42 count])
    {
      if (a7)
      {
        [MBError errorWithErrors:v42];
        *a7 = v31 = 0;
      }

      else
      {
LABEL_27:
        v31 = 0;
      }
    }

    else
    {
      v31 = 1;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (BOOL)_restoreForegroundFilesUsingCKCacheForDomainNames:(id)a3 error:(id *)a4
{
  v81 = a3;
  v5 = [(MBCKEngine *)self cache];
  v83 = [v5 tracker];

  if (!v83)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreForegroundFilesUsingCKCacheForDomainNames:error:]", "MBCKRestoreEngine.m", 1367, "cacheTracker");
  }

  v143 = 0;
  v87 = [v83 openCacheWithAccessType:2 cached:0 error:&v143];
  v6 = COERCE_DOUBLE(v143);
  if (!v87)
  {
    v67 = MBGetDefaultLog();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v146 = v6;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to re-open cache for restore enumeration: %@", buf, 0xCu);
      _MBLog();
    }

    if (a4)
    {
      v68 = *&v6;
      v84 = 0;
      *a4 = v6;
    }

    else
    {
      v84 = 0;
    }

    goto LABEL_49;
  }

  v7 = +[NSDate date];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v142 = 0;
  v135 = 0;
  v136 = &v135;
  v137 = 0x2020000000;
  v138 = 0;
  v131 = 0;
  v132 = &v131;
  v133 = 0x2020000000;
  v134 = 0;
  v126[0] = _NSConcreteStackBlock;
  v126[1] = 3221225472;
  v126[2] = sub_10005D5BC;
  v126[3] = &unk_1003BC5E0;
  v128 = &v131;
  v126[4] = self;
  v10 = v81;
  v127 = v10;
  v129 = &v139;
  v130 = &v135;
  v11 = [v87 enumeratePendingRestoreFilesForAnyDomainOrderAscendingWithBlock:v126];

  v12 = [(MBCKEngine *)self progressModel];
  [v12 willTransferItemsWithSize:v140[3] count:*(v136 + 6)];

  +[NSDate timeIntervalSinceReferenceDate];
  v14 = v13;
  v15 = MBGetDefaultLog();
  v16 = v14 - v9;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v140[3];
    v18 = *(v136 + 6);
    *buf = 134218496;
    v146 = v16;
    v147 = 2048;
    v148 = v17;
    v149 = 2048;
    v150 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Preflight: duration:%.3fs, fgTotalRestorableSize:%llu, fgTotalRestorableCount:%lu", buf, 0x20u);
    v75 = v140[3];
    v76 = *(v136 + 6);
    v74 = v16;
    _MBLog();
  }

  [(MBCKRestoreEngine *)self _purgeBeforeRestoring:v132[3]];
  v19 = +[NSDate date];
  [v19 timeIntervalSinceReferenceDate];
  v21 = v20;

  v80 = [[MBCKRestoreFilePrefetchEngine alloc] initWithRestoreEngine:self];
  if (![(MBCKRestoreFilePrefetchEngine *)v80 setUpWithError:a4])
  {
    [v87 close];
    v84 = 0;
    goto LABEL_48;
  }

  v122 = 0;
  v123 = &v122;
  v124 = 0x2020000000;
  v125 = 0;
  v118 = 0;
  v119 = &v118;
  v120 = 0x2020000000;
  v121 = 0;
  v114 = 0;
  v115 = &v114;
  v116 = 0x2020000000;
  v117 = 0;
  v110 = 0;
  v111 = &v110;
  v112 = 0x2020000000;
  v113 = 0;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 0;
  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v105 = 0;
  v93[0] = _NSConcreteStackBlock;
  v93[1] = 3221225472;
  v93[2] = sub_10005D6D0;
  v93[3] = &unk_1003BC608;
  v93[4] = self;
  v22 = v10;
  v94 = v22;
  v96 = &v106;
  v97 = &v118;
  v98 = &v114;
  v99 = &v102;
  v23 = v80;
  v95 = v23;
  v100 = &v122;
  v101 = &v110;
  v79 = [v87 enumeratePendingRestoreRegularFilesForAnyDomainOrderAscendingWithBlock:v93];

  v24 = MBGetDefaultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v111[3];
    v26 = v123[3];
    v27 = v103[3];
    v28 = v115[3];
    v29 = v107[3];
    *buf = 134219008;
    v146 = v25;
    v147 = 2048;
    v148 = v26;
    v149 = 2048;
    v150 = v27;
    v151 = 2048;
    v152 = v28;
    v153 = 2048;
    v154 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Preflight: fgRestoreSize:%llu, fgRestoreCount:%llu, fgPrefetchRestoreSize:%llu, fgPrefetchRestoreCount:%llu, bgRestoreSize:%llu", buf, 0x34u);
    v77 = v115[3];
    v78 = v107[3];
    v75 = v123[3];
    v76 = v103[3];
    v74 = v111[3];
    _MBLog();
  }

  v30 = [NSNumber numberWithDouble:v16];
  v31 = [(MBCKEngine *)self performanceStatistics];
  [v31 setObject:v30 forKeyedSubscript:@"PreflightTime"];

  v32 = [NSNumber numberWithUnsignedLongLong:v123[3]];
  v33 = [(MBCKEngine *)self performanceStatistics];
  [v33 setObject:v32 forKeyedSubscript:@"ForegroundRestoreItems"];

  v34 = [NSNumber numberWithUnsignedLongLong:v115[3]];
  v35 = [(MBCKEngine *)self performanceStatistics];
  [v35 setObject:v34 forKeyedSubscript:@"ForegroundPrefetchItems"];

  v36 = [NSNumber numberWithUnsignedLongLong:v103[3]];
  v37 = [(MBCKEngine *)self performanceStatistics];
  [v37 setObject:v36 forKeyedSubscript:@"ForegroundPrefetchSize"];

  v38 = [NSNumber numberWithUnsignedLongLong:v107[3]];
  v39 = [(MBCKEngine *)self performanceStatistics];
  [v39 setObject:v38 forKeyedSubscript:@"BackgroundRestoreSize"];

  v40 = [NSNumber numberWithUnsignedLongLong:v119[3]];
  v41 = [(MBCKEngine *)self performanceStatistics];
  [v41 setObject:v40 forKeyedSubscript:@"BackgroundRestoreItems"];

  v42 = [NSNumber numberWithUnsignedLongLong:*(v111 + 3)];
  [(MBCKRestoreEngine *)self setForegroundRestorableSize:v42];

  v43 = [NSNumber numberWithUnsignedLongLong:v107[3]];
  [(MBCKRestoreEngine *)self setBackgroundRestorableSize:v43];

  v44 = [NSNumber numberWithUnsignedLongLong:v123[3]];
  [(MBCKRestoreEngine *)self setForegroundRestorableFileCount:v44];

  v45 = [NSNumber numberWithUnsignedLongLong:v119[3]];
  [(MBCKRestoreEngine *)self setBackgroundRestorableFileCount:v45];

  [(MBCKRestoreFilePrefetchEngine *)v23 waitForPrefetchCompletion];
  +[NSDate timeIntervalSinceReferenceDate];
  v47 = v46 - v21;
  v48 = [NSNumber numberWithDouble:v47];
  v49 = [(MBCKEngine *)self performanceStatistics];
  [v49 setObject:v48 forKeyedSubscript:@"PrefetchTime"];

  v50 = MBGetDefaultLog();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v146 = v47;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Prefetch: duration:%.3fs", buf, 0xCu);
    v74 = v47;
    _MBLog();
  }

  v51 = +[NSDate date];
  [v51 timeIntervalSinceReferenceDate];
  v53 = v52;

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v22;
  v54 = 0;
  v55 = [obj countByEnumeratingWithState:&v89 objects:v144 count:16];
  if (!v55)
  {
    v84 = 1;
LABEL_43:

    goto LABEL_45;
  }

  v84 = 1;
  v85 = *v90;
LABEL_12:
  v56 = 0;
  while (1)
  {
    if (*v90 != v85)
    {
      objc_enumerationMutation(obj);
    }

    v57 = *(*(&v89 + 1) + 8 * v56);
    if ([(MBCKEngine *)self handleCancelation:a4, *&v74, v75, v76, v77, v78])
    {
      [v87 close];

LABEL_41:
      v84 = 0;
      goto LABEL_47;
    }

    v58 = objc_autoreleasePoolPush();
    v59 = MBGetDefaultLog();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v146 = v57;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Restoring domain %{public}@", buf, 0xCu);
      v74 = v57;
      _MBLog();
    }

    v60 = [(MBEngine *)self domainManager];
    v61 = [v60 domainForName:*&v57];

    v62 = [[MBCKRestoreDomainEngine alloc] initWithRestoreEngine:self enumeratorCache:v87 domain:v61];
    v88 = v54;
    LOBYTE(v60) = [(MBCKRestoreDomainEngine *)v62 runWithError:&v88];
    v63 = v88;

    v54 = v63;
    if (v60)
    {
      v64 = 0;
      v65 = 0;
    }

    else
    {
      if ([v61 isLegacyPerAppPlaceholderDomain] && !+[MBError isRetryableRestoreError:](MBError, "isRetryableRestoreError:", v63))
      {
        v66 = MBGetDefaultLog();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v146 = v57;
          v147 = 2112;
          v148 = v63;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Ignoring placeholder failure: to restore domain %@: %@", buf, 0x16u);
          v74 = v57;
          v75 = v63;
          _MBLog();
        }

        v64 = 0;
        v65 = 19;
      }

      else
      {
        v66 = MBGetDefaultLog();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v146 = v57;
          v147 = 2112;
          v148 = v63;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to restore domain %@: %@", buf, 0x16u);
          v74 = v57;
          v75 = v63;
          _MBLog();
        }

        v84 = 0;
        v65 = 18;
        v64 = 1;
      }
    }

    objc_autoreleasePoolPop(v58);
    if (v65 != 19)
    {
      if (v65)
      {
        break;
      }
    }

    if (v55 == ++v56)
    {
      v55 = [obj countByEnumeratingWithState:&v89 objects:v144 count:16];
      if (v55)
      {
        goto LABEL_12;
      }

      goto LABEL_43;
    }
  }

  if (!v64)
  {
    goto LABEL_41;
  }

LABEL_45:
  +[NSDate timeIntervalSinceReferenceDate];
  v70 = [NSNumber numberWithDouble:v69 - v53];
  v71 = [(MBCKEngine *)self performanceStatistics];
  [v71 setObject:v70 forKeyedSubscript:@"RestoreTime"];

  [v87 close];
  if (!((a4 == 0) | v84 & 1))
  {
    v72 = v54;
    v84 = 0;
    *a4 = v54;
  }

LABEL_47:

  _Block_object_dispose(&v102, 8);
  _Block_object_dispose(&v106, 8);
  _Block_object_dispose(&v110, 8);
  _Block_object_dispose(&v114, 8);
  _Block_object_dispose(&v118, 8);
  _Block_object_dispose(&v122, 8);
  v11 = v79;
LABEL_48:

  _Block_object_dispose(&v131, 8);
  _Block_object_dispose(&v135, 8);
  _Block_object_dispose(&v139, 8);
  v6 = *&v11;
LABEL_49:

  return v84 & 1;
}

- (void)_purgeBeforeRestoring:(unint64_t)a3
{
  v4 = [MBCacheDeleteRequest purgeRequestForCloudForegroundRestoreOfSize:a3];
  if (v4)
  {
    [(MBCKRestoreEngine *)self setCacheDeleteRequest:v4];
  }

  else
  {
    v5 = [(MBCKRestoreEngine *)self cacheDeleteRequest];
    [(MBCKRestoreEngine *)self setCacheDeleteRequest:v5];
  }

  v6 = [(MBCKRestoreEngine *)self cacheDeleteRequest];

  if (v6)
  {
    v7 = [(MBCKRestoreEngine *)self cacheDeleteRequest];
    v8 = [v7 purge];

    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= CacheDelete purged %llu bytes", buf, 0xCu);
      _MBLog();
    }
  }
}

- (BOOL)_downloadRestorablesForBackgroundAppWithError:(id *)a3
{
  v5 = [(MBCKEngine *)self context];
  v6 = [v5 restoreMode];
  v7 = [v6 bundleID];

  v8 = [(MBEngine *)self appManager];
  v9 = [(MBCKEngine *)self persona];
  v31 = 0;
  v10 = [v8 fetchAppWithIdentifier:v7 persona:v9 error:&v31];
  v11 = v31;

  if (v10)
  {
    v25 = a3;
    v26 = v7;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [v10 containers];
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v27 + 1) + 8 * i) domain];
          v18 = [(MBEngine *)self domainManager];
          v19 = [v17 name];
          [v18 addDomain:v17 forName:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v14);
    }

    if ([(MBCKRestoreEngine *)self useFileLists])
    {
      v20 = [(MBCKRestoreEngine *)self _restoreBackgroundContainersUsingPlanForApp:v10 error:v25];
    }

    else
    {
      v20 = [(MBCKRestoreEngine *)self _restoreBackgroundContainersUsingCKCacheForApp:v10 error:v25];
    }

    v23 = v20;
    v7 = v26;
  }

  else
  {
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v11;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to load app: %@", buf, 0xCu);
      _MBLog();
    }

    if (a3)
    {
      v22 = v11;
      v23 = 0;
      *a3 = v11;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (BOOL)_restoreBackgroundContainersUsingPlanForApp:(id)a3 error:(id *)a4
{
  v51 = a3;
  v55 = [v51 bundleID];
  if (!v55)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreBackgroundContainersUsingPlanForApp:error:]", "MBCKRestoreEngine.m", 1555, "bundleID");
  }

  v57 = [(MBCKRestoreEngine *)self _populatedRestorePlan];
  if (!v57)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreBackgroundContainersUsingPlanForApp:error:]", "MBCKRestoreEngine.m", 1557, "plan");
  }

  v4 = [(MBCKEngine *)self persona];
  v58 = [v4 personaIdentifier];

  if (!v58)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreBackgroundContainersUsingPlanForApp:error:]", "MBCKRestoreEngine.m", 1559, "currentPersonaIdentifier");
  }

  if (qword_1004215F0 != -1)
  {
    dispatch_once(&qword_1004215F0, &stru_1003BC628);
  }

  v5 = objc_opt_class();
  objc_sync_enter(v5);
  v6 = [qword_1004215E8 objectForKeyedSubscript:v58];
  if (!v6)
  {
    v6 = objc_opt_new();
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v75 = v58;
      v76 = 2048;
      v77 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Creating empty active set for personaID %@ (%p)", buf, 0x16u);
      v44 = v58;
      v46 = v6;
      _MBLog();
    }

    [qword_1004215E8 setObject:v6 forKeyedSubscript:v58];
  }

  objc_sync_exit(v5);

  if (!v6)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreBackgroundContainersUsingPlanForApp:error:]", "MBCKRestoreEngine.m", 1576, "activeDomainRestoresForCurrentPersona");
  }

  v56 = objc_opt_new();
  v8 = v6;
  objc_sync_enter(v8);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v9 = [v51 containers];
  v10 = [v9 countByEnumeratingWithState:&v68 objects:v82 count:16];
  if (v10)
  {
    v11 = *v69;
LABEL_13:
    v12 = 0;
    while (1)
    {
      if (*v69 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = [*(*(&v68 + 1) + 8 * v12) domain];
      v14 = [v13 name];
      v67 = 0;
      v15 = [v57 planForDomain:v13 restoreType:2 error:&v67];
      v16 = v67;
      if (!v15)
      {
        break;
      }

      if ([v15 isPopulated])
      {
        if ([v8 containsObject:v14])
        {
          v40 = MBGetDefaultLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = v40;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v42 = [v8 count];
              *buf = 138413058;
              v75 = v14;
              v76 = 2112;
              v77 = v55;
              v78 = 2048;
              v79 = v8;
              v80 = 2048;
              v81 = v42;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Dependent domain %@ for %@ is actively being restored (%p: count %lu)", buf, 0x2Au);
            }

            [v8 count];
            _MBLog();
          }

          if (a4)
          {
            v39 = [MBError errorWithCode:17 format:@"Dependent domain %@ is actively being restored", v14];
LABEL_60:
            *a4 = v39;
          }

          goto LABEL_62;
        }

        [v56 addObject:v14];
      }

      else
      {
        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v75 = v14;
          v76 = 2112;
          v77 = v55;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=ckrestore-engine= Not restoring dependent domain %@ for bundleID %@", buf, 0x16u);
          v44 = v14;
          v46 = v55;
          _MBLog();
        }
      }

      if (v10 == ++v12)
      {
        v10 = [v9 countByEnumeratingWithState:&v68 objects:v82 count:16];
        if (v10)
        {
          goto LABEL_13;
        }

        goto LABEL_25;
      }
    }

    v37 = MBGetDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v75 = v14;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed look up domain plan for domain %@", buf, 0xCu);
      _MBLog();
    }

    if (a4)
    {
      v38 = v16;
      v39 = v16;
      goto LABEL_60;
    }

    v15 = 0;
LABEL_62:

    objc_sync_exit(v8);
    v54 = 0;
    v36 = v8;
    goto LABEL_63;
  }

LABEL_25:

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v18 = v56;
  v19 = [v18 countByEnumeratingWithState:&v63 objects:v73 count:16];
  if (v19)
  {
    v20 = *v64;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v64 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v63 + 1) + 8 * i);
        v23 = MBGetDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v8 count];
            *buf = 138413058;
            v75 = v22;
            v76 = 2112;
            v77 = v58;
            v78 = 2048;
            v79 = v8;
            v80 = 2048;
            v81 = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Adding domain %@ to active set for personaID %@ (%p: count %lu)", buf, 0x2Au);
          }

          v47 = v8;
          v48 = [v8 count];
          v46 = v58;
          _MBLog();
        }

        [v8 addObject:v22];
      }

      v19 = [v18 countByEnumeratingWithState:&v63 objects:v73 count:16];
    }

    while (v19);
  }

  objc_sync_exit(v8);
  v52 = [NSString stringWithFormat:@"com.apple.MobileBackup.Background.%@", v55];
  v26 = v52;
  v49 = dispatch_queue_create([v52 UTF8String], &_dispatch_queue_attr_concurrent);
  v54 = [MBCKRestoreEngine _restoreDomains:"_restoreDomains:plan:withQueue:concurrencyLimit:error:" plan:v18 withQueue:v57 concurrencyLimit:? error:?];
  v27 = v8;
  objc_sync_enter(v27);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v28 = v18;
  v29 = [v28 countByEnumeratingWithState:&v59 objects:v72 count:16];
  if (v29)
  {
    v30 = *v60;
    do
    {
      for (j = 0; j != v29; j = j + 1)
      {
        if (*v60 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v59 + 1) + 8 * j);
        if ([v27 containsObject:{v32, v45, v46, v47, v48}])
        {
          v33 = MBGetDefaultLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v33;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = [v27 count];
              *buf = 138413058;
              v75 = v32;
              v76 = 2112;
              v77 = v58;
              v78 = 2048;
              v79 = v27;
              v80 = 2048;
              v81 = v35;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Removing domain %@ from active set for personaID %@ (%p: count %lu)", buf, 0x2Au);
            }

            v47 = v27;
            v48 = [v27 count];
            v45 = v32;
            v46 = v58;
            _MBLog();
          }

          [v27 removeObject:v32];
        }
      }

      v29 = [v28 countByEnumeratingWithState:&v59 objects:v72 count:16];
    }

    while (v29);
  }

  objc_sync_exit(v27);
  v36 = v52;
LABEL_63:

  return v54;
}

- (BOOL)_restoreBackgroundContainersUsingCKCacheForApp:(id)a3 error:(id *)a4
{
  v85 = a3;
  v93 = [v85 bundleID];
  if (qword_100421600 != -1)
  {
    dispatch_once(&qword_100421600, &stru_1003BC648);
  }

  v88 = objc_opt_new();
  obj = objc_opt_class();
  objc_sync_enter(obj);
  [v85 containers];
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v5 = v106 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v105 objects:v124 count:16];
  if (v6)
  {
    v91 = *v106;
    while (2)
    {
      v89 = v6;
      for (i = 0; i != v89; i = i + 1)
      {
        if (*v106 != v91)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v105 + 1) + 8 * i);
        if ([(MBCKEngine *)self handleCancelation:a4, v77])
        {
          goto LABEL_71;
        }

        v9 = MBGetDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = v9;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v11 = [v8 identifier];
            v12 = [v8 containerTypeString];
            *buf = 138412802;
            *&buf[4] = v11;
            *&buf[12] = 2112;
            *&buf[14] = v12;
            *&buf[22] = 2112;
            v121 = v93;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=ckrestore-engine= Restoring container %@ (%@) as a dependent of %@", buf, 0x20u);
          }

          v13 = [v8 identifier];
          v80 = [v8 containerTypeString];
          v83 = v93;
          v77 = v13;
          _MBLog();
        }

        v101 = 0;
        v102 = &v101;
        v103 = 0x2020000000;
        v104 = 0;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v121 = sub_100059C00;
        v122 = sub_100059C10;
        v123 = 0;
        v14 = [(MBCKEngine *)self cache];
        v15 = [v8 domain];
        v16 = [v15 name];
        v100[0] = _NSConcreteStackBlock;
        v100[1] = 3221225472;
        v100[2] = sub_10005F784;
        v100[3] = &unk_1003BC670;
        v100[4] = &v101;
        v100[5] = buf;
        v17 = [v14 fetchDomainRestoreStateForDomain:v16 callback:v100];

        if (v17)
        {
          v53 = MBGetDefaultLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v54 = v53;
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v55 = [v8 domain];
              v56 = [v55 name];
              *v112 = 138412546;
              v113 = v56;
              v114 = 2112;
              v115 = v17;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to fetch domain state for dependent container %@: %@", v112, 0x16u);
            }

            v57 = [v8 domain];
            v79 = [v57 name];
            _MBLog();
          }

          if (a4)
          {
LABEL_69:
            v63 = v17;
            *a4 = v17;
          }

LABEL_70:
          _Block_object_dispose(buf, 8);

          _Block_object_dispose(&v101, 8);
LABEL_71:

          v48 = obj;
          objc_sync_exit(obj);
          v52 = 0;
          goto LABEL_72;
        }

        if (v102[3] <= 3)
        {
          v18 = *&buf[8];
          v19 = *(*&buf[8] + 40);
          if (v19)
          {
            v20 = [v19 isEqualToString:v93];
            v18 = *&buf[8];
            if ((v20 & 1) == 0)
            {
              if ([qword_1004215F8 containsObject:*(*&buf[8] + 40)])
              {
                v65 = MBGetDefaultLog();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                {
                  v66 = v65;
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                  {
                    v67 = [v8 domain];
                    v68 = [v67 name];
                    v69 = v102[3];
                    v70 = *(*&buf[8] + 40);
                    *v112 = 138413058;
                    v113 = v68;
                    v114 = 2048;
                    v115 = v69;
                    v116 = 2112;
                    v117 = v93;
                    v118 = 2112;
                    v119 = v70;
                    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Dependent domain %@ (state:%ld) for %@ is being restored by agent %@", v112, 0x2Au);
                  }

                  v71 = [v8 domain];
                  v72 = [v71 name];
                  v84 = *(*&buf[8] + 40);
                  v82 = v102[3];
                  _MBLog();
                }

                if (a4)
                {
                  v73 = [v8 domain];
                  v74 = [v73 name];
                  v75 = [NSString stringWithFormat:@"Dependent domain %@ is being restored by agent %@", v74, *(*&buf[8] + 40)];

                  v110[0] = NSLocalizedDescriptionKey;
                  v110[1] = @"RetryAfter";
                  v111[0] = v75;
                  v111[1] = @"5";
                  v76 = [NSDictionary dictionaryWithObjects:v111 forKeys:v110 count:2];
                  *a4 = [NSError errorWithDomain:@"MBErrorDomain" code:17 userInfo:v76];
                }

                v17 = 0;
                goto LABEL_70;
              }

              v18 = *&buf[8];
            }
          }

          v21 = *(v18 + 40);
          if (v21 && ([v21 isEqualToString:v93] & 1) == 0)
          {
            v22 = MBGetDefaultLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = v22;
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = v5;
                v25 = *(*&buf[8] + 40);
                v26 = [v8 domain];
                v27 = [v26 name];
                *v112 = 138412802;
                v113 = v25;
                v114 = 2112;
                v115 = v93;
                v116 = 2112;
                v117 = v27;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Changing the dependent domain from %@ to %@ for dependent %@", v112, 0x20u);

                v5 = v24;
              }

              v28 = *(*&buf[8] + 40);
              v29 = [v8 domain];
              [v29 name];
              v83 = v80 = v93;
              v77 = v28;
              _MBLog();
            }
          }

          v30 = [(MBCKEngine *)self cache:v77];
          v31 = [v8 domain];
          v32 = [v31 name];
          v17 = [v30 setDomainRestoreAgent:v93 forDomain:v32];

          if (v17)
          {
            v58 = MBGetDefaultLog();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              v59 = v58;
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                v60 = [v8 domain];
                v61 = [v60 name];
                *v112 = 138412802;
                v113 = v93;
                v114 = 2112;
                v115 = v61;
                v116 = 2112;
                v117 = v17;
                _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to set agent domain %@ for dependent %@: %@", v112, 0x20u);
              }

              v62 = [v8 domain];
              v81 = [v62 name];
              _MBLog();
            }

            if (a4)
            {
              goto LABEL_69;
            }

            goto LABEL_70;
          }

          [v88 addObject:v8];
        }

        _Block_object_dispose(buf, 8);

        _Block_object_dispose(&v101, 8);
      }

      v6 = [v5 countByEnumeratingWithState:&v105 objects:v124 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if ([v5 count] >= 2)
  {
    [qword_1004215F8 addObject:v93];
    if ([v88 count])
    {
      v33 = [(MBCKEngine *)self cache];
      [v33 flush];
    }
  }

  objc_sync_exit(obj);
  [v88 sortUsingComparator:&stru_1003BC6B0];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obja = v88;
  v92 = [obja countByEnumeratingWithState:&v96 objects:v109 count:16];
  if (v92)
  {
    v90 = *v97;
    while (2)
    {
      for (j = 0; j != v92; j = j + 1)
      {
        if (*v97 != v90)
        {
          objc_enumerationMutation(obja);
        }

        v35 = [*(*(&v96 + 1) + 8 * j) domain];
        if ([(MBCKEngine *)self handleCancelation:a4])
        {

LABEL_63:
          v52 = 0;
          v48 = obja;
          goto LABEL_72;
        }

        v36 = objc_autoreleasePoolPush();
        v37 = MBGetDefaultLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v37;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [v35 name];
            *buf = 138412290;
            *&buf[4] = v39;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Beginning restore for %@", buf, 0xCu);
          }

          v77 = [v35 name];
          _MBLog();
        }

        v40 = [[MBCKRestoreDomainEngine alloc] initWithRestoreEngine:self enumeratorCache:0 domain:v35];
        v95 = 0;
        v41 = [(MBCKRestoreDomainEngine *)v40 runWithError:&v95];
        v42 = v95;
        if ((v41 & 1) == 0)
        {
          v43 = MBGetDefaultLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = v43;
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v45 = [v35 name];
              *buf = 138412546;
              *&buf[4] = v45;
              *&buf[12] = 2112;
              *&buf[14] = v42;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to restore domain %@: %@", buf, 0x16u);
            }

            v77 = [v35 name];
            v80 = v42;
            _MBLog();
          }
        }

        objc_autoreleasePoolPop(v36);
        if (a4)
        {
          v46 = v42;
          *a4 = v42;
        }

        if (!v41)
        {
          goto LABEL_63;
        }
      }

      v92 = [obja countByEnumeratingWithState:&v96 objects:v109 count:16];
      if (v92)
      {
        continue;
      }

      break;
    }
  }

  v47 = MBGetDefaultLog();
  v48 = v47;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v49 = [v85 domain];
    v50 = [v49 name];
    *buf = 138412290;
    *&buf[4] = v50;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Restored domain %@ successfully", buf, 0xCu);

    v51 = [v85 domain];
    v78 = [v51 name];
    _MBLog();

    v52 = 1;
    v48 = v47;
  }

  else
  {
    v52 = 1;
  }

LABEL_72:

  return v52;
}

- (id)_populatedRestorePlan
{
  v3 = [(MBCKSnapshot *)self->_targetSnapshot snapshotID];
  v4 = [(MBCKEngine *)self serviceManager];
  v5 = [(MBCKEngine *)self serviceAccount];
  v13 = 0;
  v6 = [v4 restorePlanForAccount:v5 snapshotUUID:v3 error:&v13];
  v7 = v13;

  if (!v6)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to load restore plan: %@", buf, 0xCu);
LABEL_10:
      _MBLog();
    }

LABEL_11:

    v11 = 0;
    goto LABEL_12;
  }

  v8 = [v6 isPopulated];
  v9 = MBGetDefaultLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (!v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "=ckrestore-engine= No plan", buf, 2u);
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "=ckrestore-engine= Plan populated", buf, 2u);
    _MBLog();
  }

  v11 = v6;
LABEL_12:

  return v11;
}

- (id)_restoreATCEngineForPlan:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MBCKEngine *)self persona];
  if (!v7)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreATCEngineForPlan:error:]", "MBCKRestoreEngine.m", 1770, "persona");
  }

  v8 = v7;
  v9 = [v6 domain];
  v10 = [v9 rootPath];

  if (!v10)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreATCEngineForPlan:error:]", "MBCKRestoreEngine.m", 1772, "rootPath");
  }

  v11 = [_TtC7backupd14MBRestoreDepot restoreDepotWithPersona:v8 destination:v10 restoreDepotOverridePath:0 error:a4];
  if (v11)
  {
    v12 = [(MBCKEngine *)self ckOperationTracker];
    if (!v12)
    {
      __assert_rtn("[MBCKRestoreEngine _restoreATCEngineForPlan:error:]", "MBCKRestoreEngine.m", 1780, "tracker");
    }

    v13 = v12;
    v14 = [(MBCKEngine *)self device];
    if (!v14)
    {
      __assert_rtn("[MBCKRestoreEngine _restoreATCEngineForPlan:error:]", "MBCKRestoreEngine.m", 1782, "device");
    }

    v15 = v14;
    v16 = [MBAssetRecordFetcher assetFetcherWithTracker:v13 device:v14 error:a4];
    if (v16)
    {
      v17 = [MBAssetDecrypterFactory assetDecrypterWithTracker:v13 device:v15 error:a4];
      if (v17)
      {
        v25 = v17;
        v18 = [(MBCKRestoreEngine *)self restorePolicy];
        v24 = [v18 deriveATCPolicy];

        v23 = [_TtC7backupd18MBRestoreATCEngine alloc];
        v22 = [(MBCKEngine *)self progressModel];
        v19 = [(MBCKRestoreEngine *)self restoreLogger];
        v20 = [(MBRestoreATCEngine *)v23 initWithRootPath:v10 policy:v24 depot:v11 fetcher:v16 decrypter:v25 plan:v6 progress:v22 verifier:0 logger:v19 error:a4];

        v17 = v25;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)_downloadRestorablesForBackgroundFilesWithError:(id *)a3
{
  v5 = [(MBCKEngine *)self context];
  v6 = [v5 restoreMode];
  v7 = [v6 type];

  v8 = [(MBCKEngine *)self context];
  v9 = [v8 restoreMode];
  v10 = v9;
  if (v7 == 5)
  {
    v11 = [v9 paths];
  }

  else
  {
    v12 = [v9 path];
    v16 = v12;
    v11 = [NSArray arrayWithObjects:&v16 count:1];
  }

  if ([(MBCKRestoreEngine *)self useFileLists])
  {
    v13 = [(MBCKRestoreEngine *)self _restoreATCFiles:v11 usingPlan:a3];
  }

  else
  {
    v13 = [(MBCKRestoreEngine *)self _restoreATCFiles:v11 usingCKCache:a3];
  }

  v14 = v13;

  return v14;
}

- (BOOL)_restoreATCFiles:(id)a3 usingPlan:(id *)a4
{
  v6 = a3;
  v7 = [(MBCKRestoreEngine *)self _populatedRestorePlan];
  if (!v7)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreATCFiles:usingPlan:]", "MBCKRestoreEngine.m", 1826, "restorePlan");
  }

  v8 = v7;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10005FFA0;
  v25[3] = &unk_1003BC6D8;
  v25[4] = self;
  v9 = [v7 atcRestorePlansForAbsolutePaths:v6 domainProvider:v25 error:a4];
  v10 = v9;
  if (v9)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      v20 = v6;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(MBCKRestoreEngine *)self _restoreATCEngineForPlan:*(*(&v21 + 1) + 8 * i) error:a4];
          v17 = v16;
          if (!v16)
          {
            goto LABEL_16;
          }

          v18 = [v16 runWithError:a4];

          if (!v18)
          {
            LOBYTE(v17) = 0;
LABEL_16:
            v6 = v20;
            goto LABEL_17;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
        LOBYTE(v17) = 1;
        v6 = v20;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      LOBYTE(v17) = 1;
    }

LABEL_17:
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (BOOL)_restoreATCFiles:(id)a3 usingCKCache:(id *)a4
{
  v6 = a3;
  v36 = a4;
  if (!a4)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreATCFiles:usingCKCache:]", "MBCKRestoreEngine.m", 1850, "error");
  }

  v7 = v6;
  v39 = [(MBCKEngine *)self cache];
  if (!v39)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreATCFiles:usingCKCache:]", "MBCKRestoreEngine.m", 1853, "cache");
  }

  v8 = [[MBCKRestoreFilePrefetchEngine alloc] initWithRestoreEngine:self];
  if ([(MBCKRestoreFilePrefetchEngine *)v8 setUpWithError:a4])
  {
    v37 = self;
    v38 = [(MBEngine *)self domainManager];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v35 = v7;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v45;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v44 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v16 = [v39 fetchRestorableFileForPath:v14 error:0];
          v17 = v16;
          if (v16)
          {
            v18 = [v16 domainName];
            v19 = [v38 domainForName:v18];

            if (v19)
            {
              [v17 setupWithDomain:v19];
            }

            [(MBCKRestoreFilePrefetchEngine *)v8 prefetchRecord:v17, v34];
            v20 = MBGetDefaultLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v50 = v14;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Found Legacy file by absolute path: %@", buf, 0xCu);
              v34 = v14;
              _MBLog();
            }
          }

          else
          {
            v19 = MBGetDefaultLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v50 = v14;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to find file by absolute path: %@", buf, 0xCu);
              v34 = v14;
              _MBLog();
            }
          }

          objc_autoreleasePoolPop(v15);
        }

        v11 = [v9 countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v11);
    }

    v21 = objc_autoreleasePoolPush();
    [(MBCKRestoreFilePrefetchEngine *)v8 waitForPrefetchCompletion];

    objc_autoreleasePoolPop(v21);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v22 = v9;
    v23 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v41;
      while (2)
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v41 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v40 + 1) + 8 * j);
          if ([(MBCKEngine *)v37 handleCancelation:v36, v34])
          {
            goto LABEL_34;
          }

          v28 = MBGetDefaultLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v50 = v27;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "=ckrestore-engine= Starting restore for %@", buf, 0xCu);
            v34 = v27;
            _MBLog();
          }

          v29 = objc_autoreleasePoolPush();
          v30 = [(MBCKRestoreEngine *)v37 _restoreATCFile:v27 usingCache:v39];
          objc_autoreleasePoolPop(v29);
          if (v30)
          {
            v32 = v30;
            *v36 = v30;

LABEL_34:
            v31 = 0;
            goto LABEL_35;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
        v31 = 1;
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v31 = 1;
    }

LABEL_35:

    v8 = 0;
    v7 = v35;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)_restoreATCFile:(id)a3 usingCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MBCKEngine *)self cache];
  v27 = 0;
  v9 = [v8 fetchRestorableFileForPath:v6 error:&v27];
  v10 = v27;

  if (v9)
  {
    domainManager = self->super.super._domainManager;
    v12 = [v9 domainName];
    v13 = [(MBDomainManager *)domainManager domainForName:v12];

    if (!v13)
    {
      __assert_rtn("[MBCKRestoreEngine _restoreATCFile:usingCache:]", "MBCKRestoreEngine.m", 1921, "domain");
    }

    [v9 setupWithDomain:v13];
    v14 = [(MBRestorePolicy *)self->_restorePolicy deprecated_destinationPathForiCloudRestorable:v9 safeHarborDir:0];
    v15 = [[MBCKRestoreFileEngine alloc] initWithRestoreEngine:self file:v9 destinationPath:v14 shouldSetProtectionClass:1];
    v26 = v10;
    v16 = [(MBCKRestoreFileEngine *)v15 runWithError:&v26];
    v17 = v26;

    v18 = MBGetDefaultLog();
    v19 = v18;
    if (v16)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v9 fileID];
        *buf = 138412546;
        v29 = v20;
        v30 = 2112;
        v31 = v6;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Restored file(%@) at %@", buf, 0x16u);

        v24 = [v9 fileID];
        _MBLog();
      }

      v10 = 0;
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v22 = [v9 fileID];
        *buf = 138412802;
        v29 = v22;
        v30 = 2112;
        v31 = v6;
        v32 = 2112;
        v33 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to restore file(%@) at %@: %@", buf, 0x20u);

        v25 = [v9 fileID];
        _MBLog();
      }

      v10 = v17;
    }
  }

  else
  {
    v17 = MBGetDefaultLog();
    v21 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v21)
      {
        *buf = 138412546;
        v29 = v6;
        v30 = 2112;
        v31 = v10;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to fetch file %@ from RestoreFiles table: %@", buf, 0x16u);
        _MBLog();
      }
    }

    else
    {
      if (v21)
      {
        *buf = 138412290;
        v29 = v6;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to find file %@ in the RestoreFiles table", buf, 0xCu);
        _MBLog();
      }

      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)downloadRestorablesWithError:(id *)a3
{
  v5 = [(MBCKEngine *)self context];
  v6 = [v5 restoreMode];
  v7 = [v6 type];

  if (v7 > 7)
  {
    return 1;
  }

  if (((1 << v7) & 0x8E) != 0)
  {

    return [(MBCKRestoreEngine *)self _downloadRestorablesForBackgroundAppWithError:a3];
  }

  else if (((1 << v7) & 0x30) != 0)
  {

    return [(MBCKRestoreEngine *)self _downloadRestorablesForBackgroundFilesWithError:a3];
  }

  else
  {

    return [(MBCKRestoreEngine *)self _downloadRestorablesForForegroundWithError:a3];
  }
}

- (BOOL)_restoreEntitlements:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(MBCKRestoreEngine *)self restoreMode];
  v8 = [v7 type];

  v9 = [(MBCKEngine *)self persona];
  v10 = v9;
  if (v8 == 6)
  {
    v11 = [v9 placeholderRestoreDirectory];
    v49[0] = v11;
    v12 = [v6 bundleID];
    v49[1] = v12;
    v13 = [v6 relativePath];
    v49[2] = v13;
    v14 = [NSArray arrayWithObjects:v49 count:3];
    v15 = [NSString pathWithComponents:v14];
  }

  else
  {
    v11 = [v9 userIncompleteRestoreDirectory];
    v48[0] = v11;
    v12 = [(MBCKEngine *)self persona];
    v13 = [v12 placeholderRestoreDirectory];
    v48[1] = v13;
    v14 = [v6 bundleID];
    v48[2] = v14;
    v16 = [v6 relativePath];
    v48[3] = v16;
    v17 = [NSArray arrayWithObjects:v48 count:4];
    v15 = [NSString pathWithComponents:v17];
  }

  v18 = [v15 stringByDeletingLastPathComponent];
  v43 = 0;
  v19 = +[NSFileManager defaultManager];
  v20 = [v19 fileExistsAtPath:v18 isDirectory:&v43];

  if (v20)
  {
    if (v43)
    {
      v42 = 0;
      v21 = [v6 writeToFile:v15 error:&v42];
      v22 = v42;
      if (v21)
      {
        v23 = +[NSFileManager defaultManager];
        v24 = MBMobileFileAttributes();
        v41 = v22;
        v25 = [v23 setAttributes:v24 ofItemAtPath:v15 error:&v41];
        v26 = v41;

        if (v25)
        {
          v27 = 1;
        }

        else
        {
          v35 = MBGetDefaultLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = [v6 bundleID];
            *buf = 138412546;
            v45 = v36;
            v46 = 2112;
            v47 = v26;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to set placeholder entitlements file attributes for %@: %@", buf, 0x16u);

            v40 = [v6 bundleID];
            _MBLog();
          }

          if (a4)
          {
            [MBError errorWithCode:100 error:v26 path:v15 format:@"Error setting placeholder entitlements plist file attributes"];
            *a4 = v27 = 0;
          }

          else
          {
            v27 = 0;
          }
        }

        v22 = v26;
        goto LABEL_28;
      }

      v32 = MBGetDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = [v6 bundleID];
        *buf = 138412546;
        v45 = v33;
        v46 = 2112;
        v47 = v22;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to restore placeholder entitlement for %@: %@", buf, 0x16u);

        v39 = [v6 bundleID];
        _MBLog();
      }

      if (a4)
      {
        v34 = v22;
        v27 = 0;
        *a4 = v22;
        goto LABEL_28;
      }
    }

    else
    {
      v29 = MBGetDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = [v6 bundleID];
        *buf = 138412290;
        v45 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to restore placeholder entitlements for %@: parent directory is a file", buf, 0xCu);

        v38 = [v6 bundleID];
        _MBLog();
      }

      if (a4)
      {
        v31 = [v6 bundleID];
        *a4 = [MBError errorWithCode:100 path:v18 format:@"Placeholder entitlement's parent directory for %@ is a file", v31];
      }

      v22 = 0;
    }

    v27 = 0;
    goto LABEL_28;
  }

  v28 = MBGetDefaultLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v45 = v18;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Application placeholder does not exist at %{public}@ - not setting entitlements", buf, 0xCu);
    _MBLog();
  }

  v22 = 0;
  v27 = 1;
LABEL_28:

  return v27;
}

- (BOOL)restoreEntitlementsWithError:(id *)a3
{
  v5 = self->_targetSnapshot;
  if (!v5)
  {
    __assert_rtn("[MBCKRestoreEngine restoreEntitlementsWithError:]", "MBCKRestoreEngine.m", 1999, "targetSnapshot");
  }

  v6 = v5;
  if ([(MBCKRestoreEngine *)self useFileLists])
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [(MBCKSnapshot *)v6 snapshotFormat];
      v8 = MBStringForSnapshotFormat();
      *buf = 138412290;
      v41 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Skipping restoreEntitlements for snapshot format %@", buf, 0xCu);

      [(MBCKSnapshot *)v6 snapshotFormat];
      v9 = MBStringForSnapshotFormat();
      _MBLog();
      LOBYTE(v10) = 1;
      goto LABEL_40;
    }

    LOBYTE(v10) = 1;
    goto LABEL_41;
  }

  if (![(MBEngine *)self isForegroundRestore])
  {
    LOBYTE(v10) = 1;
    goto LABEL_42;
  }

  v39 = 0;
  v9 = [(MBCKRestoreEngine *)self getEntitlementsForDomainsWithError:&v39];
  v11 = v39;
  if (v11)
  {
    v7 = v11;
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to get entitlements for domains: %@", buf, 0xCu);
      _MBLog();
    }

    if (a3)
    {
      v13 = v7;
      LOBYTE(v10) = 0;
      *a3 = v7;
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    goto LABEL_40;
  }

  v30 = v6;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = v9;
  v33 = [v9 countByEnumeratingWithState:&v35 objects:v44 count:16];
  v7 = 0;
  v10 = 1;
  if (!v33)
  {
    goto LABEL_39;
  }

  v32 = *v36;
  while (2)
  {
    v31 = v10;
    for (i = 0; i != v33; i = i + 1)
    {
      if (*v36 != v32)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v35 + 1) + 8 * i);
      if ([(MBCKEngine *)self handleCancelation:a3, v28, v29])
      {
        LOBYTE(v10) = 0;
        goto LABEL_39;
      }

      v16 = [v9 objectForKeyedSubscript:v15];
      v17 = [(MBEngine *)self appManager];
      v18 = [v16 bundleID];
      v19 = [v17 appWithIdentifier:v18];

      if ([v19 isSystemApp])
      {
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [v16 bundleID];
          *buf = 138412290;
          v41 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=ckrestore-engine= Skipping restore of entitlements for system app %@", buf, 0xCu);

          v28 = [v16 bundleID];
          _MBLog();
        }

LABEL_33:

        goto LABEL_34;
      }

      v22 = [v16 relativePath];

      v20 = MBGetDefaultLog();
      v23 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
      if (!v22)
      {
        if (v23)
        {
          *buf = 138412290;
          v41 = v15;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=ckrestore-engine= Not creating placeholder entitlement for %@", buf, 0xCu);
          v28 = v15;
          _MBLog();
        }

        goto LABEL_33;
      }

      if (v23)
      {
        *buf = 138412290;
        v41 = v15;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=ckrestore-engine= Creating placeholder entitlement for %@", buf, 0xCu);
        v28 = v15;
        _MBLog();
      }

      v34 = 0;
      v24 = [(MBCKRestoreEngine *)self _restoreEntitlements:v16 withError:&v34];
      v25 = v34;
      v7 = v25;
      if ((v24 & 1) == 0)
      {
        if (a3)
        {
          v26 = v25;
          *a3 = v7;
        }

        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v41 = v15;
          v42 = 2112;
          v43 = v7;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Error writing placeholder entitlement for %@: %@", buf, 0x16u);
          v28 = v15;
          v29 = v7;
          _MBLog();
        }

        v31 = 0;
        goto LABEL_33;
      }

LABEL_34:
    }

    v10 = v31;
    v33 = [v9 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_39:

  v6 = v30;
LABEL_40:

LABEL_41:
LABEL_42:

  return v10 & 1;
}

- (id)getEntitlementsForDomainsWithError:(id *)a3
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Getting entitlements for domains", buf, 2u);
    _MBLog();
  }

  v5 = objc_alloc_init(NSMutableDictionary);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_validSnapshots;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [(MBCKEngine *)self cache];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10006171C;
        v22[3] = &unk_1003BC700;
        v12 = v5;
        v23 = v5;
        v13 = [v11 enumerateManifestsForSnapshot:v10 foundManifest:v22];

        if (v13)
        {
          if (a3)
          {
            v15 = v13;
            *a3 = v13;
          }

          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = [v10 snapshotID];
            *buf = 138412546;
            v29 = v17;
            v30 = 2112;
            v31 = v13;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Error fetching manifests for snapshot %@: %@", buf, 0x16u);

            v19 = [v10 snapshotID];
            _MBLog();
          }

          v14 = 0;
          v5 = v12;
          goto LABEL_17;
        }

        v5 = v12;
      }

      v7 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = v5;
LABEL_17:

  return v14;
}

- (BOOL)annotateRestoreWithError:(id *)a3
{
  v5 = [(MBCKRestoreEngine *)self restoreMode];
  v6 = [v5 type];

  if (v6 == 6)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Not annotating the restored data", buf, 2u);
      _MBLog();
    }

    v8 = 1;
LABEL_18:

    return v8;
  }

  if ([(MBEngine *)self isForegroundRestore])
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Annotating restored data", buf, 2u);
      _MBLog();
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v11 = v10;
    v12 = [(MBCKEngine *)self persona];
    v13 = [(MBEngine *)self backupPolicy];
    v14 = [(MBEngine *)self settingsContext];
    v7 = +[MBRestoreDirectoryAnnotator restoreDirectoryAnnotatorWithPersona:engineType:backupPolicy:shouldRestoreSystemFiles:encrypted:](MBRestoreDirectoryAnnotator, "restoreDirectoryAnnotatorWithPersona:engineType:backupPolicy:shouldRestoreSystemFiles:encrypted:", v12, 2, v13, [v14 shouldRestoreSystemFiles], -[MBCKEngine encrypted](self, "encrypted"));

    v15 = [(MBEngine *)self domainManager];
    v16 = [v15 allDomains];
    [v7 annotateDomains:v16];
    v17 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    v8 = *&v17 == 0;
    v18 = MBGetDefaultLog();
    v19 = v18;
    if (v17 == 0.0)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        +[NSDate timeIntervalSinceReferenceDate];
        *buf = 134217984;
        v24 = v21 - v11;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "=ckrestore-engine= Finished annotating all restored domains in %0.3f s", buf, 0xCu);
        +[NSDate timeIntervalSinceReferenceDate];
        _MBLog();
      }
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to annotate all restored domains: %@", buf, 0xCu);
        _MBLog();
      }

      if (a3)
      {
        v20 = *&v17;
        *a3 = v17;
      }
    }

    goto LABEL_18;
  }

  return 1;
}

- (BOOL)verifyRestoreWithError:(id *)a3
{
  if ([(MBCKRestoreEngine *)self restoreType]== 1 && [(MBCKRestoreEngine *)self useFileLists])
  {
    v5 = [(MBCKEngine *)self serviceAccount];
    if (![MBRestoreSnapshotIntegrityVerifier shouldRunVerifierForRestoreWithSnapshotFormat:[(MBCKSnapshot *)self->_targetSnapshot snapshotFormat] account:v5])
    {
      v18 = 1;
LABEL_17:

      return v18;
    }

    v6 = [(MBCKRestoreEngine *)self _populatedRestorePlan];
    [(MBCKRestoreEngine *)self setForegroundRestoreVerificationEnabled:1];
    v7 = [MBRestoreSnapshotIntegrityVerifier alloc];
    restorePolicy = self->_restorePolicy;
    v9 = [(MBCKSnapshot *)self->_targetSnapshot snapshotFormat];
    v10 = [(MBCKEngine *)self persona];
    v11 = [v10 restoreSnapshotsDatabaseDirectory];
    v12 = [(MBCKSnapshot *)self->_targetSnapshot snapshotID];
    v13 = [(MBRestoreSnapshotIntegrityVerifier *)v7 initWithPolicy:restorePolicy snapshotFormat:v9 snapshotDir:v11 snapshotUUID:v12 delegate:self];

    v14 = [(MBEngine *)self domainManager];
    v26 = 0;
    LODWORD(v10) = [(MBRestoreSnapshotIntegrityVerifier *)v13 verifyIntermediateDirectoryAfterForegroundRestoreWithDomainManager:v14 plan:v6 overridePath:0 error:&v26];
    v15 = v26;

    if (v10)
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Successfully verified intermediate directories for foreground restore", buf, 2u);
        _MBLog();
      }

      v17 = @"PASS";
    }

    else
    {
      v19 = [MBError isError:v15 withCode:202];
      v20 = MBGetDefaultLog();
      v21 = v20;
      if (!v19)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v28 = v15;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to verify intermediate directory for foreground restore %@", buf, 0xCu);
          _MBLog();
        }

        [(MBCKRestoreEngine *)self setForegroundRestoreVerificationStatus:@"FAIL"];
        v23 = +[MBBehaviorOptions sharedOptions];
        v24 = [v23 isAutomation];

        if (v24)
        {
          if (a3)
          {
            v25 = v15;
            v18 = 0;
            *a3 = v15;
          }

          else
          {
            v18 = 0;
          }

          goto LABEL_16;
        }

LABEL_15:
        v18 = 1;
LABEL_16:

        goto LABEL_17;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Cancelled verifying intermediate directories for foreground restore", buf, 2u);
        _MBLog();
      }

      v17 = @"CANCELLED";
    }

    [(MBCKRestoreEngine *)self setForegroundRestoreVerificationStatus:v17];
    goto LABEL_15;
  }

  return 1;
}

- (BOOL)finalizeRestoreWithError:(id *)a3
{
  v5 = [(MBCKEngine *)self ckOperationTracker];
  if (!v5)
  {
    __assert_rtn("[MBCKRestoreEngine finalizeRestoreWithError:]", "MBCKRestoreEngine.m", 2164, "tracker");
  }

  v6 = v5;
  v7 = [(MBCKEngine *)self serviceAccount];
  if (!v7)
  {
    __assert_rtn("[MBCKRestoreEngine finalizeRestoreWithError:]", "MBCKRestoreEngine.m", 2166, "serviceAccount");
  }

  v8 = v7;
  if ([(MBCKRestoreEngine *)self restoreType]== 1)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Finalizing foreground restore", buf, 2u);
      _MBLog();
    }

    v10 = [(MBCKRestoreEngine *)self restorePolicy];
    v11 = [v10 notifyPluginsEndingRestoreWithEngine:self];

    v12 = MBGetDefaultLog();
    v13 = v12;
    if (v11)
    {
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      *buf = 138412290;
      v56 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to notify plugins of endingRestoreWithEngine: %@", buf, 0xCu);
      goto LABEL_15;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=ckrestore-engine= Notifying plugins of endedRestoreWithEngine:", buf, 2u);
      _MBLog();
    }

    v17 = [(MBCKRestoreEngine *)self restorePolicy];
    v18 = [(MBCKEngine *)self engineError];
    v11 = [v17 notifyPluginsEndedRestoreWithEngine:self error:v18];

    if (v11)
    {
      v13 = MBGetDefaultLog();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      *buf = 138412290;
      v56 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to notify plugins of endedRestoreWithEngine:error: %@", buf, 0xCu);
LABEL_15:
      _MBLog();
LABEL_16:

      if (a3)
      {
        v19 = v11;
        v16 = 0;
        *a3 = v11;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_42;
    }

    v20 = [(MBCKEngine *)self device];
    v54 = 0;
    v21 = [MBCKEncryptionManager saveRestoreKeyBagsWithAccount:v8 device:v20 error:&v54];
    v22 = v54;

    if ((v21 & 1) == 0)
    {
      v44 = MBGetDefaultLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v56 = v22;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Unable to save restore keybags for device: %@", buf, 0xCu);
        _MBLog();
      }

      if (a3)
      {
        v45 = v22;
        v16 = 0;
        *a3 = v22;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_41;
    }

    v23 = [(MBCKEngine *)self persona];
    v24 = [(MBCKEngine *)self serviceManager];
    v25 = [MBServiceRestoreSession alloc];
    v50 = v23;
    v26 = [v23 personaIdentifier];
    v27 = [(MBServiceRestoreSession *)v25 initWithPersonaIdentifier:v26];

    v28 = [(MBCKEngine *)self context];
    -[MBServiceRestoreSession setSnapshotID:](v27, "setSnapshotID:", [v28 snapshotID]);

    v29 = [(MBCKEngine *)self context];
    v30 = [v29 snapshotUUID];
    [(MBServiceRestoreSession *)v27 setSnapshotUUID:v30];

    v31 = [(MBCKEngine *)self context];
    v32 = [v31 backupUDID];
    [(MBServiceRestoreSession *)v27 setBackupUDID:v32];

    v33 = [(MBCKRestoreEngine *)self startDate];
    [(MBServiceRestoreSession *)v27 setStartDate:v33];

    [(MBServiceRestoreSession *)v27 setFinishing:0];
    [(MBServiceRestoreSession *)v27 setCancelled:0];
    v34 = [(MBCKEngine *)self context];
    -[MBServiceRestoreSession setSnapshotBackupPolicy:](v27, "setSnapshotBackupPolicy:", [v34 backupPolicy]);

    -[MBServiceRestoreSession setTelemetryID:](v27, "setTelemetryID:", [v24 restoreTelemetryID]);
    v35 = [(MBCKRestoreEngine *)self cloudFormatInfo];
    if (!v35)
    {
      __assert_rtn("[MBCKRestoreEngine finalizeRestoreWithError:]", "MBCKRestoreEngine.m", 2214, "cloudFormatInfo");
    }

    v36 = v35;
    v37 = [(MBCKEngine *)self performanceStatistics];
    v53 = v22;
    v38 = [MBDataMigratorPlugin setUpMobileBackupPreferencesForBackgroundRestoreWithAccount:v8 restoreSession:v27 cloudFormatInfo:v36 performanceStatistics:v37 backupPolicy:[(MBEngine *)self backupPolicy] error:&v53];
    v39 = v53;

    if (v38)
    {
      v40 = [(MBServiceRestoreSession *)v27 snapshotUUID];
      v52 = v39;
      v41 = [v24 closeRestorePlanForAccount:v8 snapshotUUID:v40 error:&v52];
      v42 = v52;

      if ((v41 & 1) == 0)
      {
        v47 = MBGetDefaultLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v56 = v42;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed closing restore plan: %@", buf, 0xCu);
          _MBLog();
        }

        if (!a3)
        {
          v16 = 0;
          v39 = v42;
          goto LABEL_40;
        }

        v39 = v42;
        goto LABEL_39;
      }

      v51 = v42;
      v43 = [v50 finalizeRestoreDirectoriesWithError:&v51];
      v39 = v51;

      if (v43)
      {
        v16 = 1;
LABEL_40:

        v22 = v39;
LABEL_41:

        v11 = 0;
LABEL_42:

        goto LABEL_43;
      }

      v46 = MBGetDefaultLog();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
LABEL_32:

        if (!a3)
        {
          v16 = 0;
          goto LABEL_40;
        }

LABEL_39:
        v48 = v39;
        v16 = 0;
        *a3 = v39;
        goto LABEL_40;
      }

      *buf = 138412290;
      v56 = v39;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to move restore sandboxes into place: %@", buf, 0xCu);
    }

    else
    {
      v46 = MBGetDefaultLog();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      *buf = 138412290;
      v56 = v39;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to set up MobileBackup preferences for background restore: %@", buf, 0xCu);
    }

    _MBLog();
    goto LABEL_32;
  }

  v14 = [v6 databaseManager];
  v15 = [v6 account];
  [v14 setShouldSupportBudgeting:0 account:v15];

  v16 = 1;
LABEL_43:

  return v16;
}

- (MBCKEncryptionManager)encryptionManager
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_encryptionManager;
  if (!v3)
  {
    v4 = objc_alloc_init(MBCKEncryptionManager);
    encryptionManager = v2->_encryptionManager;
    v2->_encryptionManager = v4;

    v3 = v4;
  }

  v6 = v3;

  objc_sync_exit(v2);

  return v6;
}

- (BOOL)_configureAndInstallPlaceholdersWithError:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[MBCKRestoreEngine _configureAndInstallPlaceholdersWithError:]", "MBCKRestoreEngine.m", 2260, "error");
  }

  v5 = [(MBCKEngine *)self serviceAccount];
  if (!v5)
  {
    __assert_rtn("[MBCKRestoreEngine _configureAndInstallPlaceholdersWithError:]", "MBCKRestoreEngine.m", 2262, "serviceAccount");
  }

  v6 = v5;
  if ([(MBEngine *)self isForegroundRestore])
  {
    v7 = [v6 persona];
    if (-[MBCKRestoreEngine useFileLists](self, "useFileLists") && (-[MBCKRestoreEngine excludedAppBundleIDs](self, "excludedAppBundleIDs"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 copyPlaceholderIPAsForAppInstallationExcluding:v8 error:a3], v8, !v9))
    {
      LOBYTE(v13) = 0;
    }

    else
    {
      if ([v7 isDataSeparatedPersona])
      {
        v10 = MBGetDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Installing the app placeholders for the data-separated foreground restore", buf, 2u);
          _MBLog();
        }

        v11 = objc_opt_new();
        v12 = [[_TtC7backupd14MigratorConfig alloc] initWithDataSeparatedAccount:v6];
        v13 = [v11 performMigrationWithConfig:v12 error:a3];
        v14 = MBGetDefaultLog();
        v15 = v14;
        if (v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Finished installing the app placeholders for the data-separated foreground restore", buf, 2u);
LABEL_17:
            _MBLog();
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v16 = *a3;
          *buf = 138543362;
          v20 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to install the app placeholders for the data-separated foreground restore: %{public}@", buf, 0xCu);
          v18 = *a3;
          goto LABEL_17;
        }

        goto LABEL_19;
      }

      LOBYTE(v13) = 1;
    }

LABEL_19:

    goto LABEL_20;
  }

  LOBYTE(v13) = 1;
LABEL_20:

  return v13;
}

- (id)engineModeString
{
  if ([(MBEngine *)self isForegroundRestore])
  {
    v3 = @"Foreground Restore";
  }

  else if ([(MBEngine *)self isBackgroundRestore])
  {
    v4 = [(MBCKRestoreEngine *)self restoreMode];
    if ([v4 isBackgroundApp])
    {
      if (MBIsInternalInstall())
      {
        v5 = [v4 bundleID];
        v3 = [NSString stringWithFormat:@"Background Restore for %@", v5];
      }

      else
      {
        v3 = [NSString stringWithFormat:@"Background Restore for App"];
      }
    }

    else if ([v4 isBackgroundFile])
    {
      v3 = @"Background Restore for ATC File";
    }

    else if ([v4 isBackgroundFiles])
    {
      v3 = @"Background Restore for ATC Files";
    }

    else
    {
      v3 = @"Background Restore [UNKNOWN TYPE]";
    }
  }

  else
  {
    v3 = @"UNKNOWN RESTORE TYPE";
  }

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