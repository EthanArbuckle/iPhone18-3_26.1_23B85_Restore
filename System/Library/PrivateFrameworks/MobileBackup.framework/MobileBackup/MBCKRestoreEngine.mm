@interface MBCKRestoreEngine
+ (int64_t)_fetchBackupPolicyWithDevice:(id)device snapshotUUID:(id)d error:(id *)error;
- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtFinish;
- ($1C6001547D93A6C6CE4901F2C331F3E5)networkConnectivityAtStart;
- (BOOL)_configureAndInstallPlaceholdersWithError:(id *)error;
- (BOOL)_downloadRestorablesForBackgroundAppWithError:(id *)error;
- (BOOL)_downloadRestorablesForBackgroundFilesWithError:(id *)error;
- (BOOL)_downloadRestorablesForForegroundWithError:(id *)error;
- (BOOL)_markForegroundRestorablesForBackgroundRestoreInPlan:(id)plan domainName:(id)name error:(id *)error;
- (BOOL)_restoreATCFiles:(id)files usingCKCache:(id *)cache;
- (BOOL)_restoreATCFiles:(id)files usingPlan:(id *)plan;
- (BOOL)_restoreBackgroundContainersUsingCKCacheForApp:(id)app error:(id *)error;
- (BOOL)_restoreBackgroundContainersUsingPlanForApp:(id)app error:(id *)error;
- (BOOL)_restoreDomains:(id)domains plan:(id)plan withQueue:(id)queue concurrencyLimit:(unint64_t)limit error:(id *)error;
- (BOOL)_restoreEntitlements:(id)entitlements withError:(id *)error;
- (BOOL)_restoreForegroundFilesUsingCKCacheForDomainNames:(id)names error:(id *)error;
- (BOOL)_restoreForegroundFilesUsingPlanForDomainNames:(id)names error:(id *)error;
- (BOOL)_runWithError:(id *)error;
- (BOOL)_shouldSimulateCancelationForState:(id)state;
- (BOOL)annotateRestoreWithError:(id *)error;
- (BOOL)cancelWithError:(id)error;
- (BOOL)downloadRestorablesWithError:(id *)error;
- (BOOL)finalizeRestoreWithError:(id *)error;
- (BOOL)findRestorablesWithError:(id *)error;
- (BOOL)isRestoringToSameDevice;
- (BOOL)refreshCacheWithError:(id *)error;
- (BOOL)restoreEntitlementsWithError:(id *)error;
- (BOOL)runWithError:(id *)error;
- (BOOL)setUpWithError:(id *)error;
- (BOOL)synchronizeFileListsWithError:(id *)error;
- (BOOL)verifyRestoreWithError:(id *)error;
- (MBCKEncryptionManager)encryptionManager;
- (MBCKRestoreEngine)initWithSettingsContext:(id)context debugContext:(id)debugContext domainManager:(id)manager serviceManager:(id)serviceManager excludedAppBundleIDs:(id)ds;
- (MBRestorePolicy)restorePolicy;
- (NSString)restoreStateDescription;
- (id)_fetchDomainNamesToForegroundRestoreWithError:(id *)error;
- (id)_populatedRestorePlan;
- (id)_restoreATCEngineForPlan:(id)plan error:(id *)error;
- (id)_restoreATCFile:(id)file usingCache:(id)cache;
- (id)_restoreDomainEngineForDomain:(id)domain plan:(id)plan error:(id *)error;
- (id)engineModeString;
- (id)getEntitlementsForDomainsWithError:(id *)error;
- (id)keyBagForUUID:(id)d;
- (id)restoreMode;
- (id)restoringBundleID;
- (id)secretForUUID:(id)d;
- (int)restoreType;
- (void)_finishCollectingTelemetry;
- (void)_handleStateTransition;
- (void)_purgeBeforeRestoring:(unint64_t)restoring;
- (void)_uninstallExistingAppWithBundleID:(id)d;
- (void)cleanUpAfterError:(id)error;
- (void)makeStateTransition;
- (void)reportRestoreStatusForState:(unint64_t)state start:(id)start end:(id)end;
- (void)resetRestorePolicy;
@end

@implementation MBCKRestoreEngine

- (id)restoringBundleID
{
  restorePolicy = [(MBCKRestoreEngine *)self restorePolicy];
  serviceRestoreMode = [restorePolicy serviceRestoreMode];

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

- (MBCKRestoreEngine)initWithSettingsContext:(id)context debugContext:(id)debugContext domainManager:(id)manager serviceManager:(id)serviceManager excludedAppBundleIDs:(id)ds
{
  contextCopy = context;
  debugContextCopy = debugContext;
  managerCopy = manager;
  serviceManagerCopy = serviceManager;
  dsCopy = ds;
  account = [contextCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKRestoreEngine initWithSettingsContext:debugContext:domainManager:serviceManager:excludedAppBundleIDs:]", "MBCKRestoreEngine.m", 90, "account");
  }

  v18 = account;
  if (!managerCopy)
  {
    v19 = [MBDomainManager alloc];
    persona = [v18 persona];
    managerCopy = [(MBDomainManager *)v19 initWithPersona:persona];
  }

  v28.receiver = self;
  v28.super_class = MBCKRestoreEngine;
  v21 = [(MBCKEngine *)&v28 initWithSettingsContext:contextCopy debugContext:debugContextCopy domainManager:managerCopy];
  v22 = v21;
  if (v21)
  {
    [(MBCKRestoreEngine *)v21 setRestoreState:1];
    [(MBCKEngine *)v22 setServiceManager:serviceManagerCopy];
    restoreMode = [contextCopy restoreMode];
    v22->_restoreType = [restoreMode type];

    v24 = +[NSDate date];
    startDate = v22->_startDate;
    v22->_startDate = v24;

    [(MBEngine *)v22 setEncrypted:1];
    v26 = objc_opt_new();
    [(MBCKRestoreEngine *)v22 setEstimator:v26];

    [(MBCKRestoreEngine *)v22 setExcludedAppBundleIDs:dsCopy];
    v22->_allowedCellularCost = 0;
    [(MBDomainManager *)managerCopy setDelegate:v22];
  }

  return v22;
}

- (NSString)restoreStateDescription
{
  restoreState = [(MBCKRestoreEngine *)self restoreState];

  return MBCKStringForRestoreState(restoreState);
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
    context = [(MBCKEngine *)self context];
    restoreMode = [context restoreMode];
    if ([restoreMode isForeground])
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
    serviceRestoreMode = [(MBRestorePolicy *)self->_restorePolicy serviceRestoreMode];
  }

  else
  {
    context = [(MBCKEngine *)self context];
    serviceRestoreMode = [context restoreMode];
  }

  return serviceRestoreMode;
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
  persona = [(MBCKEngine *)self persona];
  appManager = [(MBEngine *)self appManager];
  context = [(MBCKEngine *)self context];
  plugins = [context plugins];
  context2 = [(MBCKEngine *)self context];
  restoreMode = [context2 restoreMode];
  properties = [(MBCKEngine *)self properties];
  buildVersion = [properties buildVersion];
  settingsContext = [(MBEngine *)self settingsContext];
  shouldRestoreSystemFiles = [settingsContext shouldRestoreSystemFiles];
  restoresPrimaryAccount = [(MBCKEngine *)self restoresPrimaryAccount];
  BYTE2(v14) = [(MBEngine *)self isForegroundRestore];
  BYTE1(v14) = restoresPrimaryAccount;
  LOBYTE(v14) = shouldRestoreSystemFiles;
  v12 = [MBRestorePolicy initWithPersona:v16 enginePolicyProvider:"initWithPersona:enginePolicyProvider:appManager:plugins:serviceRestoreMode:osBuildVersionOfBackup:shouldRestoreSystemFiles:isRestoringPrimaryAccount:shouldCreateMissingIntermediateDirectories:" appManager:persona plugins:self serviceRestoreMode:appManager osBuildVersionOfBackup:plugins shouldRestoreSystemFiles:restoreMode isRestoringPrimaryAccount:buildVersion shouldCreateMissingIntermediateDirectories:v14];
  restorePolicy = self->_restorePolicy;
  self->_restorePolicy = v12;
}

- (id)keyBagForUUID:(id)d
{
  v4 = [d base64EncodedStringWithOptions:0];
  device = [(MBCKEngine *)self device];
  keybagManager = [device keybagManager];
  v7 = [keybagManager keybagWithUUID:v4];

  keybag = [v7 keybag];

  return keybag;
}

- (id)secretForUUID:(id)d
{
  v4 = [d base64EncodedStringWithOptions:0];
  device = [(MBCKEngine *)self device];
  keybagManager = [device keybagManager];
  v7 = [keybagManager keybagWithUUID:v4];

  secret = [v7 secret];

  return secret;
}

- (BOOL)isRestoringToSameDevice
{
  context = [(MBCKEngine *)self context];
  backupUDID = [context backupUDID];
  v4 = MBDeviceUUID();
  v5 = [backupUDID isEqualToString:v4];

  return v5;
}

- (void)cleanUpAfterError:(id)error
{
  errorCopy = error;
  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  databaseManager = [ckOperationTracker databaseManager];
  ckOperationTracker2 = [(MBCKEngine *)self ckOperationTracker];
  account = [ckOperationTracker2 account];
  [databaseManager setShouldSupportBudgeting:0 account:account];

  v9.receiver = self;
  v9.super_class = MBCKRestoreEngine;
  [(MBCKEngine *)&v9 cleanUpAfterError:errorCopy];
}

- (BOOL)runWithError:(id *)error
{
  v25 = 0;
  v5 = [(MBCKRestoreEngine *)self _runWithError:&v25];
  v6 = v25;
  if (v5)
  {
    goto LABEL_24;
  }

  serviceAccount = [(MBCKEngine *)self serviceAccount];
  restoreMode = [(MBCKRestoreEngine *)self restoreMode];
  if ([(MBEngine *)self isForegroundRestore]&& ![MBError isRetryableRestoreError:v6]&& ([(MBCKRestoreEngine *)self _populatedRestorePlan], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = serviceAccount;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Lightrail restore failed for account %@: %@", buf, 0x16u);
      v22 = serviceAccount;
      v23 = v6;
      _MBLog();
    }

    persona = [(MBCKEngine *)self persona];
    [MBRestoreCloudFormatPolicy recordFileListForegroundRestoreFailure:v6 persona:persona];
  }

  else
  {
    if (([restoreMode isBackgroundFile] & 1) == 0 && !objc_msgSend(restoreMode, "isBackgroundFiles"))
    {
      goto LABEL_14;
    }

    v12 = [MBError sanitizedATCRestoreError:v6];

    persona = MBGetDefaultLog();
    if (os_log_type_enabled(persona, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, persona, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Sanitized ATC restore error: %@", buf, 0xCu);
      v22 = v12;
      _MBLog();
    }

    v6 = v12;
  }

LABEL_14:
  isBackgroundApp = [restoreMode isBackgroundApp];
  v14 = MBGetDefaultLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (isBackgroundApp)
  {
    if (v15)
    {
      bundleID = [restoreMode bundleID];
      accountIdentifier = [serviceAccount accountIdentifier];
      *buf = 138543874;
      v27 = bundleID;
      v28 = 2112;
      v29 = accountIdentifier;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Restore failed for %{public}@ account %@: %@", buf, 0x20u);

      bundleID2 = [restoreMode bundleID];
      accountIdentifier2 = [serviceAccount accountIdentifier];
      _MBLog();
    }
  }

  else if (v15)
  {
    *buf = 138412546;
    v27 = serviceAccount;
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

  if (error)
  {
    v20 = v6;
    *error = v6;
  }

LABEL_24:
  return v5;
}

- (BOOL)_runWithError:(id *)error
{
  [(MBCKRestoreEngine *)self setChargingType:MBGetChargingType()];
  v49 = 0;
  v5 = [(MBCKRestoreEngine *)self setUpWithError:&v49];
  restoreMode = v49;
  if (v5)
  {
LABEL_4:

    if ([(MBCKRestoreEngine *)self useFileLists])
    {
      if ([(MBEngine *)self isForegroundRestore])
      {
        selfCopy2 = self;
        v11 = 1;
      }

      else
      {
        selfCopy2 = self;
        v11 = 3;
      }

      [(MBCKRestoreEngine *)selfCopy2 setRestoreState:v11];
    }

    else
    {
      cache = [(MBCKEngine *)self cache];
      context = [(MBCKEngine *)self context];
      backupUDID = [context backupUDID];
      context2 = [(MBCKEngine *)self context];
      snapshotUUID = [context2 snapshotUUID];
      v48 = 0;
      v17 = [cache fetchRestoreStateForDeviceUUID:backupUDID snapshotUUID:snapshotUUID error:&v48];
      v18 = v48;
      [(MBCKRestoreEngine *)self setRestoreState:v17];

      if (v18)
      {
        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          context3 = [(MBCKEngine *)self context];
          backupUDID2 = [context3 backupUDID];
          context4 = [(MBCKEngine *)self context];
          snapshotUUID2 = [context4 snapshotUUID];
          *buf = 138412802;
          *v51 = backupUDID2;
          *&v51[8] = 2112;
          *&v51[10] = snapshotUUID2;
          *&v51[18] = 2112;
          *&v51[20] = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Error getting restore state for deviceUUID %@ and snapshotUUID %@: %@", buf, 0x20u);

          context5 = [(MBCKEngine *)self context];
          backupUDID3 = [context5 backupUDID];
          context6 = [(MBCKEngine *)self context];
          snapshotUUID3 = [context6 snapshotUUID];
          v47 = v18;
          v45 = backupUDID3;
          _MBLog();
        }

        [(MBCKRestoreEngine *)self setRestoreState:1];
      }

      if ([(MBCKRestoreEngine *)self restoreState:v45]>= 4)
      {
        [(MBCKRestoreEngine *)self setRestoreState:3];
      }
    }

    restoreMode = [(MBCKRestoreEngine *)self restoreMode];
    ckOperationPolicy = [(MBCKEngine *)self ckOperationPolicy];
    cellularAccess = [ckOperationPolicy cellularAccess];

    serviceAccount = [(MBCKEngine *)self serviceAccount];
    if ([restoreMode isBackgroundApp])
    {
      bundleID = [restoreMode bundleID];
      accountIdentifier3 = MBGetDefaultLog();
      if (os_log_type_enabled(accountIdentifier3, OS_LOG_TYPE_DEFAULT))
      {
        accountIdentifier = [serviceAccount accountIdentifier];
        *buf = 138543874;
        *v51 = bundleID;
        *&v51[8] = 2112;
        *&v51[10] = accountIdentifier;
        *&v51[18] = 2112;
        *&v51[20] = cellularAccess;
        _os_log_impl(&_mh_execute_header, accountIdentifier3, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Starting restore for %{public}@ account %@ cellularAccess:%@", buf, 0x20u);

        snapshotUUID3 = [serviceAccount accountIdentifier];
        v47 = cellularAccess;
        v45 = bundleID;
        _MBLog();
      }
    }

    else
    {
      bundleID = MBGetDefaultLog();
      if (!os_log_type_enabled(bundleID, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:

        if ([(MBEngine *)self isForegroundRestore])
        {
          restoreLogger = [(MBCKRestoreEngine *)self restoreLogger];
          [restoreLogger logForegroundRestoreStart];
        }

        [(MBCKRestoreEngine *)self makeStateTransition:v45];
        if ([(MBEngine *)self isForegroundRestore])
        {
          restoreLogger2 = [(MBCKRestoreEngine *)self restoreLogger];
          [restoreLogger2 logForegroundRestoreFinished];

          restoreLogger3 = [(MBCKRestoreEngine *)self restoreLogger];
          [restoreLogger3 flush];
        }

        hasError = [(MBCKEngine *)self hasError];
        if (hasError)
        {
          engineError = [(MBCKEngine *)self engineError];
          if (error)
          {
            engineError = engineError;
            *error = engineError;
          }
        }

        v29 = hasError ^ 1;

        goto LABEL_35;
      }

      restoreType = self->_restoreType;
      accountIdentifier2 = [serviceAccount accountIdentifier];
      *buf = 67109634;
      *v51 = restoreType;
      *&v51[4] = 2112;
      *&v51[6] = accountIdentifier2;
      *&v51[14] = 2112;
      *&v51[16] = cellularAccess;
      _os_log_impl(&_mh_execute_header, bundleID, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Starting restore (%d) account %@ cellularAccess:%@", buf, 0x1Cu);

      v38 = self->_restoreType;
      accountIdentifier3 = [serviceAccount accountIdentifier];
      snapshotUUID3 = accountIdentifier3;
      v47 = cellularAccess;
      v45 = v38;
      _MBLog();
    }

    goto LABEL_26;
  }

  while (1)
  {
    retryStrategy = [(MBCKEngine *)self retryStrategy];
    v8 = [retryStrategy shouldRetryAfterError:restoreMode];

    if ((v8 & 1) == 0)
    {
      break;
    }

    v49 = 0;
    v9 = [(MBCKRestoreEngine *)self setUpWithError:&v49];
    restoreMode = v49;
    if (v9)
    {
      goto LABEL_4;
    }
  }

  v27 = MBGetDefaultLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *v51 = restoreMode;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Restore failed to setup: %@", buf, 0xCu);
    _MBLog();
  }

  if (error)
  {
    v28 = restoreMode;
    v29 = 0;
    *error = restoreMode;
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
  restoreState = [(MBCKRestoreEngine *)self restoreState];
  if (restoreState <= 5)
  {
    if (restoreState > 2)
    {
      if (restoreState == 3)
      {
        [(MBCKRestoreEngine *)self setRestoreState:4];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10005636C;
        v33[3] = &unk_1003BC400;
        v33[4] = self;
        v5 = v33;
      }

      else if (restoreState == 4)
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

    if (restoreState == 1)
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

    if (restoreState == 2)
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
      LOBYTE(isFinished) = 0;
      goto LABEL_25;
    }

LABEL_52:
    __assert_rtn("[MBCKRestoreEngine _handleStateTransition]", "MBCKRestoreEngine.m", 291, "0");
  }

  if (restoreState <= 7)
  {
    if (restoreState == 6)
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

  if (restoreState == 8)
  {
    [(MBCKEngine *)self setIsFinished:1];
    [(MBCKEngine *)self setEngineError:0];
    goto LABEL_24;
  }

  if (restoreState == 9)
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

  if (restoreState != 10)
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
  isFinished = [(MBCKEngine *)self isFinished];
  if (isFinished)
  {
    engineError = [(MBCKEngine *)self engineError];
    if (!engineError)
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

    engineError = MBGetDefaultLog();
    if (os_log_type_enabled(engineError, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, engineError, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Foreground restore finished successfully", buf, 2u);
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
    progressModel = [(MBCKEngine *)self progressModel];
    [progressModel ended];
  }

  if (![(MBCKRestoreEngine *)self useFileLists])
  {
    if (![(MBCKEngine *)self isFinished]|| ([(MBCKRestoreEngine *)self restoreState]!= 8 ? (v15 = 1) : (v15 = isFinished), (v15 & 1) == 0))
    {
      cache = [(MBCKEngine *)self cache];
      restoreState2 = [(MBCKRestoreEngine *)self restoreState];
      context = [(MBCKEngine *)self context];
      backupUDID = [context backupUDID];
      context2 = [(MBCKEngine *)self context];
      snapshotUUID = [context2 snapshotUUID];
      v22 = [cache setRestoreState:restoreState2 forDeviceUUID:backupUDID snapshotUUID:snapshotUUID];

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
      cache2 = [(MBCKEngine *)self cache];
      [cache2 flush];
    }
  }
}

- (BOOL)_shouldSimulateCancelationForState:(id)state
{
  stateCopy = state;
  if (MBIsInternalInstall() && ![(MBCKEngine *)self isFinished]&& [(MBEngine *)self isForegroundRestore])
  {
    v5 = +[MBBehaviorOptions sharedOptions];
    engineStateToCancelRestoreAfter = [v5 engineStateToCancelRestoreAfter];
    v7 = [engineStateToCancelRestoreAfter isEqualToString:stateCopy];
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
    estimator = [(MBCKRestoreEngine *)self estimator];
    [estimator progressAtLastUpdate];
    if (v4 > 0.0)
    {
      minutesRemaining = [estimator minutesRemaining];
      if (minutesRemaining != -1)
      {
        v6 = [NSNumber numberWithUnsignedInteger:minutesRemaining];
        [(MBCKRestoreEngine *)self setMinutesRemaining:v6];
      }
    }
  }

  serviceManager = [(MBCKEngine *)self serviceManager];
  networkConnectivity = [serviceManager networkConnectivity];
  [(MBCKRestoreEngine *)self setNetworkConnectivityAtFinish:networkConnectivity, v8];
}

- (void)reportRestoreStatusForState:(unint64_t)state start:(id)start end:(id)end
{
  startCopy = start;
  endCopy = end;
  [MBCKStatusReporter reportRestoreStateChangeForEngine:self state:state start:startCopy end:endCopy];
  [MBTelemetry sendRestoreEngineStateChangeStatus:self state:[(MBCKRestoreEngine *)self restoreState] start:startCopy end:endCopy];
  performanceStatistics = [(MBCKEngine *)self performanceStatistics];

  if (performanceStatistics)
  {
    v10 = [NSString alloc];
    v11 = MBCKStringForRestoreState(state);
    v12 = [v10 initWithFormat:@"state-%@", v11];

    [endCopy timeIntervalSinceDate:startCopy];
    v13 = [NSNumber numberWithDouble:?];
    performanceStatistics2 = [(MBCKEngine *)self performanceStatistics];
    [performanceStatistics2 setObject:v13 forKeyedSubscript:v12];
  }
}

- (BOOL)refreshCacheWithError:(id *)error
{
  targetSnapshot = [(MBCKRestoreEngine *)self targetSnapshot];
  if (!targetSnapshot)
  {
    __assert_rtn("[MBCKRestoreEngine refreshCacheWithError:]", "MBCKRestoreEngine.m", 476, "targetSnapshot");
  }

  v6 = targetSnapshot;
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
    v9 = [(MBCKEngine *)&v12 refreshCacheWithError:error];
  }

  return v9;
}

+ (int64_t)_fetchBackupPolicyWithDevice:(id)device snapshotUUID:(id)d error:(id *)error
{
  deviceCopy = device;
  dCopy = d;
  if (!deviceCopy)
  {
    __assert_rtn("+[MBCKRestoreEngine _fetchBackupPolicyWithDevice:snapshotUUID:error:]", "MBCKRestoreEngine.m", 486, "device");
  }

  v9 = dCopy;
  if (!dCopy)
  {
    __assert_rtn("+[MBCKRestoreEngine _fetchBackupPolicyWithDevice:snapshotUUID:error:]", "MBCKRestoreEngine.m", 487, "snapshotUUID");
  }

  if (!error)
  {
    __assert_rtn("+[MBCKRestoreEngine _fetchBackupPolicyWithDevice:snapshotUUID:error:]", "MBCKRestoreEngine.m", 488, "error");
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  snapshots = [deviceCopy snapshots];
  v11 = [snapshots countByEnumeratingWithState:&v23 objects:v31 count:16];
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
        objc_enumerationMutation(snapshots);
      }

      v15 = *(*(&v23 + 1) + 8 * v14);
      snapshotID = [v15 snapshotID];
      v17 = [snapshotID isEqualToString:v9];

      if (v17)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [snapshots countByEnumeratingWithState:&v23 objects:v31 count:16];
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

    backupPolicy = [v18 backupPolicy];
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v28 = v9;
      v29 = 2048;
      v30 = backupPolicy;
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
    *error = backupPolicy = 0;
  }

  return backupPolicy;
}

- (BOOL)setUpWithError:(id *)error
{
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKRestoreEngine setUpWithError:]", "MBCKRestoreEngine.m", 509, "serviceAccount");
  }

  serviceManager = [(MBCKEngine *)self serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBCKRestoreEngine setUpWithError:]", "MBCKRestoreEngine.m", 511, "serviceManager");
  }

  v177.receiver = self;
  v177.super_class = MBCKRestoreEngine;
  if (![(MBCKEngine *)&v177 setUpWithError:error])
  {
    goto LABEL_46;
  }

  domainManager = [(MBEngine *)self domainManager];
  v7 = domainManager == 0;

  if (!v7)
  {
    v8 = [MBAppManager alloc];
    settingsContext = [(MBEngine *)self settingsContext];
    mobileInstallation = [settingsContext mobileInstallation];
    v11 = [(MBAppManager *)v8 initWithMobileInstallation:mobileInstallation];
    appManager = self->super.super._appManager;
    self->super.super._appManager = v11;

    if (![(MBEngine *)self isForegroundRestore])
    {
      restoreMode = [(MBCKRestoreEngine *)self restoreMode];
      if ([restoreMode isBackgroundFile])
      {
      }

      else
      {
        restoreMode2 = [(MBCKRestoreEngine *)self restoreMode];
        isBackgroundFiles = [restoreMode2 isBackgroundFiles];

        if (!isBackgroundFiles)
        {
          goto LABEL_14;
        }
      }
    }

    v18 = self->super.super._appManager;
    persona = [(MBCKEngine *)self persona];
    LODWORD(v18) = [(MBAppManager *)v18 loadAppsWithPersona:persona safeHarbors:0 error:error];

    if (v18)
    {
LABEL_14:
      v20 = [(MBCKEngine *)self setUpOperationTrackerWithError:error];
      v157 = v20;
      if (!v20)
      {
        v15 = 0;
LABEL_83:

        goto LABEL_47;
      }

      ckOperationPolicy = [v20 ckOperationPolicy];
      cellularAccess = [ckOperationPolicy cellularAccess];

      if (cellularAccess)
      {
        if ([cellularAccess allowsExpensiveNetworkAccess])
        {
          v22 = 2;
        }

        else
        {
          v22 = 1;
        }

        [(MBCKRestoreEngine *)self setAllowedCellularCost:v22];
      }

      networkConnectivity = [serviceManager networkConnectivity];
      [(MBCKRestoreEngine *)self setNetworkConnectivityAtStart:networkConnectivity, v24];
      persona2 = [(MBCKEngine *)self persona];
      if ([persona2 cleanupRestoreDirectoriesWithError:error])
      {
        isForegroundRestore = [(MBEngine *)self isForegroundRestore];
        if (!isForegroundRestore)
        {
          goto LABEL_31;
        }

        if ([serviceManager resetCacheWithAccount:serviceAccount error:error])
        {
          backupUDID = [serviceManager openCacheWithAccount:serviceAccount accessType:1 error:error];
          v26 = backupUDID;
          if (!backupUDID)
          {
            v15 = 0;
LABEL_81:

            goto LABEL_82;
          }

          [(MBCKEngine *)self setCache:?];
          [_TtC7backupd14MBRestoreDepot disposeAllDepotsForPersona:persona2 error:0];
          [persona2 removeRestorePrefetchCachesOlderThanDate:0];
          if (([persona2 createRestoreDirectoriesWithError:error] & 1) == 0)
          {
            v76 = MBGetDefaultLog();
            v29 = v76;
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              if (error)
              {
                v77 = *error;
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v77;
                _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Error creating restore directory: %@", &buf, 0xCu);
                v78 = *error;
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

          userIncompleteRestoreDirectory = [persona2 userIncompleteRestoreDirectory];
          placeholderRestoreDirectory = [persona2 placeholderRestoreDirectory];
          v29 = [userIncompleteRestoreDirectory stringByAppendingPathComponent:placeholderRestoreDirectory];

          restoreMode3 = [(MBCKRestoreEngine *)self restoreMode];
          v31 = [restoreMode3 type] == 6;

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
          v36 = [v34 createDirectoryAtPath:v29 withIntermediateDirectories:1 attributes:v35 error:error];

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
          context = [(MBCKEngine *)self context];
          backupUDID = [context backupUDID];

          if (!backupUDID)
          {
            __assert_rtn("[MBCKRestoreEngine setUpWithError:]", "MBCKRestoreEngine.m", 592, "backupUDID");
          }

          cache = [(MBCKEngine *)self cache];
          v153 = [serviceManager fetchDeviceForRestoreWithUUID:backupUDID tracker:v157 isForegroundRestore:isForegroundRestore cache:cache error:error];

          v29 = v153;
          if (v153)
          {
            [(MBCKEngine *)self setDevice:v153];
            if (![(MBCKEngine *)self handleCancelation:error])
            {
              storedKeybagsByUUIDString = [(MBCKRestoreEngine *)self storedKeybagsByUUIDString];
              if (storedKeybagsByUUIDString)
              {
                storedKeybagsByUUIDString2 = [(MBCKRestoreEngine *)self storedKeybagsByUUIDString];
                v41 = [storedKeybagsByUUIDString2 count] == 0;

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
                  storedKeybagsByUUIDString3 = [(MBCKRestoreEngine *)self storedKeybagsByUUIDString];
                  v44 = [storedKeybagsByUUIDString3 countByEnumeratingWithState:&v173 objects:v187 count:16];
                  if (v44)
                  {
                    v45 = *v174;
                    do
                    {
                      for (i = 0; i != v44; i = i + 1)
                      {
                        if (*v174 != v45)
                        {
                          objc_enumerationMutation(storedKeybagsByUUIDString3);
                        }

                        v47 = *(*(&v173 + 1) + 8 * i);
                        storedKeybagsByUUIDString4 = [(MBCKRestoreEngine *)self storedKeybagsByUUIDString];
                        v49 = [storedKeybagsByUUIDString4 objectForKeyedSubscript:v47];

                        device = [(MBCKEngine *)self device];
                        keybagManager = [device keybagManager];
                        [keybagManager addKeybag:v49];
                      }

                      v44 = [storedKeybagsByUUIDString3 countByEnumeratingWithState:&v173 objects:v187 count:16];
                    }

                    while (v44);
                  }

LABEL_54:
                  if (![(MBCKEngine *)self handleCancelation:error])
                  {
                    context2 = [(MBCKEngine *)self context];
                    lockManager = [context2 lockManager];
                    v63 = [lockManager reacquireLockWithError:error];

                    if (v63)
                    {
                      if (!-[MBCKEngine handleCancelation:](self, "handleCancelation:", error) && [v153 fetchSnapshotsWithOperationTracker:v157 retry:1 error:error])
                      {
                        context3 = [(MBCKEngine *)self context];
                        snapshotUUID = [context3 snapshotUUID];

                        v65 = [NSMutableArray alloc];
                        device2 = [(MBCKEngine *)self device];
                        snapshots = [device2 snapshots];
                        obj = [v65 initWithCapacity:{objc_msgSend(snapshots, "count")}];

                        v171 = 0u;
                        v172 = 0u;
                        v169 = 0u;
                        v170 = 0u;
                        device3 = [(MBCKEngine *)self device];
                        snapshots2 = [device3 snapshots];

                        v70 = [snapshots2 countByEnumeratingWithState:&v169 objects:v186 count:16];
                        if (v70)
                        {
                          v71 = *v170;
                          while (2)
                          {
                            for (j = 0; j != v70; j = j + 1)
                            {
                              if (*v170 != v71)
                              {
                                objc_enumerationMutation(snapshots2);
                              }

                              v73 = *(*(&v169 + 1) + 8 * j);
                              [obj addObject:v73];
                              snapshotID = [v73 snapshotID];
                              v75 = [snapshotID isEqualToString:snapshotUUID];

                              if (v75)
                              {
                                objc_storeStrong(&self->_targetSnapshot, v73);

                                goto LABEL_93;
                              }
                            }

                            v70 = [snapshots2 countByEnumeratingWithState:&v169 objects:v186 count:16];
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
                          serviceAccount2 = [(MBCKEngine *)self serviceAccount];
                          if (!serviceAccount2)
                          {
                            __assert_rtn("[MBCKRestoreEngine setUpWithError:]", "MBCKRestoreEngine.m", 649, "account");
                          }

                          v168 = 0;
                          if ([(MBEngine *)self isForegroundRestore])
                          {
                            if ([MBRestoreCloudFormatPolicy shouldRestoreSnapshot:self->_targetSnapshot account:serviceAccount2 persona:persona2 useFileLists:&v168 error:error])
                            {
                              v82 = [persona2 copyPreferencesValueForKey:@"RestoreCloudFormatInfo" class:objc_opt_class()];
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
                                  snapshotID2 = [(MBCKSnapshot *)self->_targetSnapshot snapshotID];
                                  v167 = 0;
                                  v91 = [serviceManager restorePlanForAccount:serviceAccount2 snapshotUUID:snapshotID2 error:&v167];
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

                                    if (error)
                                    {
                                      v111 = v86;
                                      *error = v86;
                                    }

                                    goto LABEL_140;
                                  }

                                  isPopulated = [v91 isPopulated];
                                  *(*(&buf + 1) + 24) = isPopulated;
                                }
                              }

                              else
                              {
                                cache2 = [(MBCKEngine *)self cache];
                                v166[0] = _NSConcreteStackBlock;
                                v166[1] = 3221225472;
                                v166[2] = sub_1000582FC;
                                v166[3] = &unk_1003BC428;
                                v166[4] = &buf;
                                v86 = [cache2 hasRestoreFilesWithCallback:v166];

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

                                  if (error)
                                  {
                                    v89 = v86;
                                    *error = v86;
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
                                  device4 = [(MBCKEngine *)self device];
                                  snapshots3 = [device4 snapshots];
                                  *v179 = 138412290;
                                  v180 = snapshots3;
                                  _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, "=ckrestore-engine= Device has snapshots: %@", v179, 0xCu);
                                }

                                device5 = [(MBCKEngine *)self device];
                                snapshots4 = [device5 snapshots];
                                _MBLog();
                              }

                              v98 = [MBCKProperties alloc];
                              backupProperties = [(MBCKSnapshot *)self->_targetSnapshot backupProperties];
                              v100 = [(MBProperties *)v98 initWithData:backupProperties error:error];
                              [(MBCKEngine *)self setProperties:v100];

                              properties = [(MBCKEngine *)self properties];
                              v102 = properties == 0;

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
                                  snapshots4 = self->_validSnapshots;
                                  _MBLog();
                                }

LABEL_125:
                                v165 = v86;
                                persona3 = [objc_opt_class() _fetchBackupPolicyWithDevice:v153 snapshotUUID:snapshotUUID error:&v165];
                                v147 = v165;

                                if (!persona3 && v147)
                                {
                                  if (error)
                                  {
                                    [MBError errorWithCode:205 format:@"Failed to fetch the backup policy for snapshot %@", snapshotUUID];
                                    *error = v15 = 0;
LABEL_175:
                                    v86 = v147;
                                    goto LABEL_176;
                                  }

LABEL_174:
                                  v15 = 0;
                                  goto LABEL_175;
                                }

                                context4 = [(MBCKEngine *)self context];
                                [context4 setBackupPolicy:persona3];

                                if ([(MBCKEngine *)self handleCancelation:error])
                                {
                                  goto LABEL_174;
                                }

                                device6 = [(MBCKEngine *)self device];
                                canRestoreSystemFiles = [device6 canRestoreSystemFiles];
                                if (canRestoreSystemFiles)
                                {
                                  persona3 = [(MBCKEngine *)self persona];
                                  shouldRestoreToSharedVolume = [persona3 shouldRestoreToSharedVolume];
                                }

                                else
                                {
                                  shouldRestoreToSharedVolume = 0;
                                }

                                context5 = [(MBCKEngine *)self context];
                                [context5 setShouldRestoreSystemFiles:shouldRestoreToSharedVolume];

                                if (canRestoreSystemFiles)
                                {
                                }

                                context6 = [(MBCKEngine *)self context];
                                shouldRestoreSystemFiles = [context6 shouldRestoreSystemFiles];

                                if ((shouldRestoreSystemFiles & 1) == 0)
                                {
                                  v115 = MBGetDefaultLog();
                                  if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v116 = v115;
                                    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
                                    {
                                      device7 = [(MBCKEngine *)self device];
                                      deviceClass = [device7 deviceClass];
                                      v119 = MBDeviceClass();
                                      *v179 = 138412546;
                                      v180 = deviceClass;
                                      v181 = 2112;
                                      v182 = v119;
                                      _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Not restoring system files from %@ backup to %@", v179, 0x16u);
                                    }

                                    device8 = [(MBCKEngine *)self device];
                                    deviceClass2 = [device8 deviceClass];
                                    MBDeviceClass();
                                    v146 = v145 = deviceClass2;
                                    _MBLog();
                                  }
                                }

                                if (![(MBCKRestoreEngine *)self useFileLists:v145])
                                {
                                  v122 = +[NSMutableSet set];
                                  cache3 = [(MBCKEngine *)self cache];
                                  v163[0] = _NSConcreteStackBlock;
                                  v163[1] = 3221225472;
                                  v163[2] = sub_10005830C;
                                  v163[3] = &unk_1003BC450;
                                  v124 = v122;
                                  v164 = v124;
                                  v125 = [cache3 enumeratePendingRestorableDomainsWithCallback:v163];

                                  v161 = 0u;
                                  v162 = 0u;
                                  v159 = 0u;
                                  v160 = 0u;
                                  allContainers = [(MBAppManager *)self->super.super._appManager allContainers];
                                  v126 = [allContainers countByEnumeratingWithState:&v159 objects:v178 count:16];
                                  if (v126)
                                  {
                                    v150 = *v160;
                                    do
                                    {
                                      for (k = 0; k != v126; k = k + 1)
                                      {
                                        if (*v160 != v150)
                                        {
                                          objc_enumerationMutation(allContainers);
                                        }

                                        v128 = *(*(&v159 + 1) + 8 * k);
                                        domain = [v128 domain];
                                        name = [domain name];
                                        v131 = [v124 containsObject:name];

                                        if (v131)
                                        {
                                          domainManager2 = [(MBEngine *)self domainManager];
                                          domain2 = [v128 domain];
                                          [domainManager2 addDomain:domain2];
                                        }
                                      }

                                      v126 = [allContainers countByEnumeratingWithState:&v159 objects:v178 count:16];
                                    }

                                    while (v126);
                                  }
                                }

                                [(MBCKRestoreEngine *)self resetRestorePolicy];
                                if ([(MBEngine *)self isForegroundRestore])
                                {
                                  restorePolicy = [(MBCKRestoreEngine *)self restorePolicy];
                                  v135 = [restorePolicy notifyPluginsStartingRestoreWithEngine:self];

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

                                    if (error)
                                    {
                                      v143 = v135;
                                      *error = v135;
                                    }

                                    goto LABEL_174;
                                  }

                                  restorePolicy2 = [(MBCKRestoreEngine *)self restorePolicy];
                                  v135 = [restorePolicy2 notifyPluginsPreparingRestoreWithEngine:self];

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
                                  context7 = [(MBCKEngine *)self context];
                                  v138 = [context7 qos];
                                  integerValue = [v138 integerValue];

                                  databaseManager = [v157 databaseManager];
                                  account = [v157 account];
                                  [databaseManager setShouldSupportBudgeting:integerValue > 24 account:account];
                                }

                                v15 = 1;
                                goto LABEL_175;
                              }

                              if (error)
                              {
                                [MBError errorWithCode:205 format:@"Invalid snapshot %@: missing properties", self->_targetSnapshot];
                                *error = v15 = 0;
LABEL_176:
                                _Block_object_dispose(&buf, 8);
                                goto LABEL_177;
                              }

LABEL_140:
                              v15 = 0;
                              goto LABEL_176;
                            }
                          }

                          else if ([MBRestoreCloudFormatPolicy isRestoringFromFileLists:&v168 persona:persona2 error:error])
                          {
                            goto LABEL_102;
                          }
                        }

                        else
                        {
                          if (!error)
                          {
                            v86 = 0;
                            v15 = 0;
LABEL_178:

                            goto LABEL_79;
                          }

                          serviceAccount2 = [(MBCKEngine *)self context];
                          snapshotID3 = [serviceAccount2 snapshotID];
                          device9 = [(MBCKEngine *)self device];
                          snapshots5 = [device9 snapshots];
                          *error = +[MBError errorWithCode:format:](MBError, "errorWithCode:format:", 205, @"Invalid snapshot offset (%ld of %lu snapshots)", snapshotID3, [snapshots5 count]);
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

              device10 = [(MBCKEngine *)self device];
              keybagManager2 = [device10 keybagManager];
              hasFetchedKeybags = [keybagManager2 hasFetchedKeybags];

              if (hasFetchedKeybags)
              {
                goto LABEL_54;
              }

              if (-[MBEngine isForegroundRestore](self, "isForegroundRestore") || (-[MBCKEngine persona](self, "persona"), v56 = objc_claimAutoreleasedReturnValue(), v57 = [v56 isDataSeparatedPersona], v56, v57))
              {
                device11 = [(MBCKEngine *)self device];
                keybagManager3 = [device11 keybagManager];
                v60 = [keybagManager3 fetchKeybagsWithOperationTracker:v157 error:error];

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

                if (error)
                {
                  [MBError errorWithCode:208 format:@"Restore keybag not loaded yet"];
                  *error = v15 = 0;
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

          v26 = backupUDID;
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

  if (!error)
  {
LABEL_46:
    v15 = 0;
    goto LABEL_47;
  }

  [MBError errorWithCode:1 format:@"nil domain manager"];
  *error = v15 = 0;
LABEL_47:

  return v15;
}

- (BOOL)cancelWithError:(id)error
{
  v7.receiver = self;
  v7.super_class = MBCKRestoreEngine;
  v4 = [(MBCKEngine *)&v7 cancelWithError:error];
  if (!v4)
  {
    cacheDeleteRequest = [(MBCKRestoreEngine *)self cacheDeleteRequest];
    [cacheDeleteRequest cancel];
  }

  return v4;
}

- (BOOL)synchronizeFileListsWithError:(id *)error
{
  if (!error)
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

  serviceManager = [(MBCKEngine *)self serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBCKRestoreEngine synchronizeFileListsWithError:]", "MBCKRestoreEngine.m", 780, "serviceManager");
  }

  v6 = serviceManager;
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKRestoreEngine synchronizeFileListsWithError:]", "MBCKRestoreEngine.m", 783, "account");
  }

  v8 = serviceAccount;
  snapshotID = [(MBCKSnapshot *)self->_targetSnapshot snapshotID];
  errorCopy = error;
  v10 = [v6 restorePlanForAccount:v8 snapshotUUID:snapshotID error:error];
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
      device = [(MBCKEngine *)self device];
      if (!device)
      {
        __assert_rtn("[MBCKRestoreEngine synchronizeFileListsWithError:]", "MBCKRestoreEngine.m", 799, "device");
      }

      v11 = device;
      ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
      if (!ckOperationTracker)
      {
        __assert_rtn("[MBCKRestoreEngine synchronizeFileListsWithError:]", "MBCKRestoreEngine.m", 801, "tracker");
      }

      v16 = ckOperationTracker;
      v17 = +[NSMutableArray array];
      restoreSnapshotsDirectoryRoot = [v66 restoreSnapshotsDirectoryRoot];
      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_100058D94;
      v79[3] = &unk_1003BC478;
      v19 = v17;
      v80 = v19;
      LOBYTE(v17) = [v11 synchronizeFileListsWithOperationTracker:v16 snapshotDirectory:restoreSnapshotsDirectoryRoot snapshotUUID:snapshotID error:error fetchedFileListBlock:v79];

      v63 = v19;
      if (v17)
      {
        v58 = v16;
        v59 = v11;
        v60 = snapshotID;
        v61 = v8;
        v62 = v6;

        domainManager = [(MBEngine *)self domainManager];
        if (!domainManager)
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
              restorePolicy = [(MBCKRestoreEngine *)self restorePolicy];
              v29 = [restorePolicy shouldForegroundRestoreDomain:v27];

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

            if (([v66 ingestFileListForDomainNamed:v36 error:errorCopy] & 1) == 0)
            {
              break;
            }

            if (![(MBCKRestoreEngine *)self _markForegroundRestorablesForBackgroundRestoreInPlan:v66 domainName:v36 error:errorCopy])
            {
              v12 = 0;
              v50 = obj;
              v38 = obj;
              v8 = v61;
              v6 = v62;
              v11 = v59;
              snapshotID = v60;
LABEL_65:
              v47 = domainManager;
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
          snapshotID = v60;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v49 = *errorCopy;
            *buf = 138412802;
            v83 = v36;
            v84 = 2112;
            v85 = v66;
            v86 = 2112;
            v87 = v49;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "=ckrestore-engine= =sync= Error ingesting foreground domain (%@) into restore plan %@: %@", buf, 0x20u);
            v55 = *errorCopy;
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

              if (([v66 ingestFileListForDomainNamed:v43 error:errorCopy] & 1) == 0)
              {
                v51 = MBGetDefaultLog();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  v52 = *errorCopy;
                  *buf = 138412802;
                  v83 = v43;
                  v84 = 2112;
                  v85 = v66;
                  v86 = 2112;
                  v87 = v52;
                  _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "=ckrestore-engine= =sync= Error ingesting background domain (%@) into restore plan %@: %@", buf, 0x20u);
                  v56 = *errorCopy;
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
        snapshotID = v60;
        v47 = domainManager;
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
      v13 = *error;
      *buf = 138412290;
      v83 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=ckrestore-engine= =sync= Failed to open a restore plan to synchronize into: %@", buf, 0xCu);
      v54 = *error;
      _MBLog();
    }

    v12 = 0;
  }

LABEL_73:
  return v12;
}

- (BOOL)_markForegroundRestorablesForBackgroundRestoreInPlan:(id)plan domainName:(id)name error:(id *)error
{
  planCopy = plan;
  nameCopy = name;
  if (!error)
  {
    __assert_rtn("[MBCKRestoreEngine _markForegroundRestorablesForBackgroundRestoreInPlan:domainName:error:]", "MBCKRestoreEngine.m", 857, "error");
  }

  v10 = nameCopy;
  domainManager = [(MBEngine *)self domainManager];
  v12 = [domainManager domainForName:v10];

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
  v13 = [planCopy planForDomain:v12 restoreType:1 error:error];
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
  if (([v13 enumerateAndMarkATCRestorables:error enumerator:v25] & 1) == 0)
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *error;
      *buf = 138412546;
      v35 = v10;
      v36 = 2112;
      v37 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=ckrestore-engine= =sync= Error marking ATC files for (%@) in restore plan: %@", buf, 0x16u);
      v24 = *error;
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

- (BOOL)findRestorablesWithError:(id *)error
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
    cache = [(MBCKEngine *)self cache];
    v44 = self->_validSnapshots;
    domainManager = [(MBEngine *)self domainManager];
    serviceAccount = [(MBCKEngine *)self serviceAccount];
    Current = CFAbsoluteTimeGetCurrent();
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Finding restorable files", &buf, 2u);
      _MBLog();
    }

    serviceManager = [(MBCKEngine *)self serviceManager];
    v51 = [serviceManager openCacheWithAccount:serviceAccount accessType:2 cached:0 error:error];

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
            snapshotID = [v13 snapshotID];
            v53[0] = _NSConcreteStackBlock;
            v53[1] = 3221225472;
            v53[2] = sub_100059C18;
            v53[3] = &unk_1003BC4C8;
            v54 = domainManager;
            selfCopy = self;
            v57 = &v61;
            v56 = cache;
            p_buf = &buf;
            v59 = &v67;
            v60 = &v76;
            v18 = [v51 enumerateFilesForSnapshotOrderedByDomain:snapshotID block:v53];

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
        if (error)
        {
          v27 = v10;
          v6 = 0;
          *error = v10;
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
        v30 = [cache computeSignatureRetainCountsWithError:&v52];
        v31 = v52;
        if (v30)
        {
          removeDeletedRestoreFiles = [cache removeDeletedRestoreFiles];

          if (removeDeletedRestoreFiles)
          {
            v33 = MBGetDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = removeDeletedRestoreFiles;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to remove deleted restore files prior to restore: %@", &buf, 0xCu);
              _MBLog();
            }

            if (error)
            {
              v34 = removeDeletedRestoreFiles;
              v6 = 0;
              *error = removeDeletedRestoreFiles;
            }

            else
            {
              v6 = 0;
            }

            v31 = removeDeletedRestoreFiles;
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

          if (error)
          {
            v36 = v31;
            v6 = 0;
            *error = v31;
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
        v26 = *error;
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to open readonly cache %@", &buf, 0xCu);
        v41 = *error;
        _MBLog();
      }

      v6 = 0;
    }

    v5 = cache;
  }

  return v6;
}

- (void)_uninstallExistingAppWithBundleID:(id)d
{
  dCopy = d;
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKRestoreEngine _uninstallExistingAppWithBundleID:]", "MBCKRestoreEngine.m", 1016, "serviceAccount");
  }

  v6 = serviceAccount;
  settingsContext = [(MBEngine *)self settingsContext];
  mobileInstallation = [settingsContext mobileInstallation];

  if (!mobileInstallation)
  {
    __assert_rtn("[MBCKRestoreEngine _uninstallExistingAppWithBundleID:]", "MBCKRestoreEngine.m", 1018, "mobileInstallation");
  }

  useFileLists = [(MBCKRestoreEngine *)self useFileLists];
  persona = [v6 persona];
  if (useFileLists)
  {
    v27 = 0;
    v11 = [mobileInstallation userAppWithBundleID:dCopy placeholder:1 persona:persona error:&v27];
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
    v11 = [mobileInstallation userAppWithBundleID:dCopy placeholder:0 persona:persona error:&v26];
    v12 = v26;

    if (v11)
    {
      v14 = [v11 objectForKeyedSubscript:@"IsInstalled"];
      bOOLValue = [v14 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_13:
      v17 = [MBApp alloc];
      persona2 = [(MBCKEngine *)self persona];
      userDataVolume = [persona2 userDataVolume];
      v20 = [(MBContainer *)v17 initWithPropertyList:v11 volumeMountPoint:userDataVolume];

      LODWORD(persona2) = [(MBApp *)v20 isSystemApp];
      v21 = MBGetDefaultLog();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (persona2)
      {
        if (v22)
        {
          *buf = 138412290;
          v29 = dCopy;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Not uninstalling system app with bundleID %@", buf, 0xCu);
          _MBLog();
        }
      }

      else
      {
        if (v22)
        {
          *buf = 138412290;
          v29 = dCopy;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Uninstalling 2nd party factory-installed app %@", buf, 0xCu);
          _MBLog();
        }

        v25 = v12;
        v23 = [MBMobileInstallation uninstallAppWithBundleID:dCopy error:&v25];
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
          v29 = dCopy;
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
    v29 = dCopy;
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

- (id)_fetchDomainNamesToForegroundRestoreWithError:(id *)error
{
  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKRestoreEngine _fetchDomainNamesToForegroundRestoreWithError:]", "MBCKRestoreEngine.m", 1054, "tracker");
  }

  v6 = ckOperationTracker;
  account = [ckOperationTracker account];
  if (!account)
  {
    __assert_rtn("[MBCKRestoreEngine _fetchDomainNamesToForegroundRestoreWithError:]", "MBCKRestoreEngine.m", 1056, "serviceAccount");
  }

  v8 = account;
  domainManager = [(MBEngine *)self domainManager];
  if (!domainManager)
  {
    __assert_rtn("[MBCKRestoreEngine _fetchDomainNamesToForegroundRestoreWithError:]", "MBCKRestoreEngine.m", 1058, "domainManager");
  }

  v10 = domainManager;
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
    selfCopy2 = self;
    _populatedRestorePlan = [(MBCKRestoreEngine *)self _populatedRestorePlan];
    if (!_populatedRestorePlan)
    {
      __assert_rtn("[MBCKRestoreEngine _fetchDomainNamesToForegroundRestoreWithError:]", "MBCKRestoreEngine.m", 1102, "plan");
    }

    v19 = _populatedRestorePlan;
    v137 = 0;
    v20 = [_populatedRestorePlan enumerateDomainNamesPendingRestoreWithError:&v137 enumerator:v16];
    v21 = v137;
    v22 = v21;
    if ((v20 & 1) == 0)
    {
      if (error)
      {
        v29 = v21;
        *error = v22;
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
      if (error)
      {
        v77 = v24;
        *error = v24;
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
    cache = [(MBCKEngine *)self cache];
    v133[0] = _NSConcreteStackBlock;
    v133[1] = 3221225472;
    v133[2] = sub_10005B4D0;
    v133[3] = &unk_1003BC540;
    v134 = v16;
    v26 = [cache enumeratePendingRestorableDomainsWithCallback:v133];

    if (v26)
    {
      if (error)
      {
        v27 = v26;
        *error = v26;
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

    selfCopy2 = self;
    v19 = v134;
  }

  if ([(MBCKEngine *)selfCopy2 handleCancelation:error])
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
  p_isa = &selfCopy2->super.super.super.isa;
  obj = [(MBAppManager *)selfCopy2->super.super._appManager allPlugins];
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
        identifier = [v34 identifier];
        domain = [v34 domain];
        name = [domain name];

        v38 = MBGetDefaultLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          containerTypeString = [v34 containerTypeString];
          *buf = 138412802;
          v146 = name;
          v147 = 2112;
          v148 = identifier;
          v149 = 2112;
          v150 = containerTypeString;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Adding plugin %@/%@ (%@)", buf, 0x20u);

          [v34 containerTypeString];
          containerTypeString3 = v89 = identifier;
          v88 = name;
          _MBLog();
        }

        v102 = name;
        [v15 addObject:name];
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        allAppGroupContainers = [v34 allAppGroupContainers];
        v40 = [allAppGroupContainers countByEnumeratingWithState:&v125 objects:v153 count:16];
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
                objc_enumerationMutation(allAppGroupContainers);
              }

              v44 = *(*(&v125 + 1) + 8 * i);
              v45 = MBGetDefaultLog();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                domain2 = [v44 domain];
                name2 = [domain2 name];
                identifier2 = [v44 identifier];
                containerTypeString2 = [v44 containerTypeString];
                *buf = 138413058;
                v146 = name2;
                v147 = 2112;
                v148 = identifier2;
                v149 = 2112;
                v150 = containerTypeString2;
                v151 = 2112;
                v152 = identifier;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Adding app group container %@/%@ (%@) for %@", buf, 0x2Au);

                domain3 = [v44 domain];
                name3 = [domain3 name];
                identifier3 = [v44 identifier];
                containerTypeString3 = [v44 containerTypeString];
                v91 = identifier;
                v88 = name3;
                v89 = identifier3;
                _MBLog();

                v15 = v110;
              }

              domain4 = [v44 domain];
              name4 = [domain4 name];
              [v15 addObject:name4];
            }

            v41 = [allAppGroupContainers countByEnumeratingWithState:&v125 objects:v153 count:16];
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
  allApps = [p_isa[6] allApps];
  v55 = [allApps countByEnumeratingWithState:&v121 objects:v144 count:16];
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
          objc_enumerationMutation(allApps);
        }

        v59 = *(*(&v121 + 1) + 8 * v58);
        if ([v59 isSystemApp])
        {
          containerDir = [v59 containerDir];

          if (containerDir)
          {
            v108 = v58;
            v119 = 0u;
            v120 = 0u;
            v117 = 0u;
            v118 = 0u;
            containers = [v59 containers];
            v62 = [containers countByEnumeratingWithState:&v117 objects:v143 count:16];
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
                    objc_enumerationMutation(containers);
                  }

                  v66 = *(*(&v117 + 1) + 8 * j);
                  if ([v66 containerType] - 1 <= 2)
                  {
                    v67 = MBGetDefaultLog();
                    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                    {
                      domain5 = [v66 domain];
                      name5 = [domain5 name];
                      identifier4 = [v66 identifier];
                      containerTypeString4 = [v66 containerTypeString];
                      *buf = 138412802;
                      v146 = name5;
                      v147 = 2112;
                      v148 = identifier4;
                      v149 = 2112;
                      v150 = containerTypeString4;
                      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Adding container %@/%@ (%@)", buf, 0x20u);

                      domain6 = [v66 domain];
                      name6 = [domain6 name];
                      identifier5 = [v66 identifier];
                      [v66 containerTypeString];
                      containerTypeString3 = v89 = identifier5;
                      v88 = name6;
                      _MBLog();

                      v15 = v110;
                    }

                    domain7 = [v66 domain];
                    name7 = [domain7 name];
                    [v15 addObject:name7];
                  }
                }

                v63 = [containers countByEnumeratingWithState:&v117 objects:v143 count:16];
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
      v56 = [allApps countByEnumeratingWithState:&v121 objects:v144 count:16];
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
          cache2 = [p_isa cache];
          v111[0] = _NSConcreteStackBlock;
          v111[1] = 3221225472;
          v111[2] = sub_10005B4E4;
          v111[3] = &unk_1003BC568;
          v111[4] = v85;
          v112 = v79;
          v87 = [cache2 fetchPendingRestoreSizeForDomain:v85 callback:v111];
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

- (BOOL)_downloadRestorablesForForegroundWithError:(id *)error
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
      v9 = [(MBCKRestoreEngine *)self _restoreForegroundFilesUsingPlanForDomainNames:v5 error:error];
    }

    else
    {
      v9 = [(MBCKRestoreEngine *)self _restoreForegroundFilesUsingCKCacheForDomainNames:v5 error:error];
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_restoreDomainEngineForDomain:(id)domain plan:(id)plan error:(id *)error
{
  domainCopy = domain;
  planCopy = plan;
  device = [(MBCKEngine *)self device];
  if (!device)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreDomainEngineForDomain:plan:error:]", "MBCKRestoreEngine.m", 1209, "device");
  }

  v11 = device;
  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreDomainEngineForDomain:plan:error:]", "MBCKRestoreEngine.m", 1211, "tracker");
  }

  v13 = ckOperationTracker;
  persona = [(MBCKEngine *)self persona];
  if (!persona)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreDomainEngineForDomain:plan:error:]", "MBCKRestoreEngine.m", 1213, "persona");
  }

  v15 = persona;
  restorePolicy = [(MBCKRestoreEngine *)self restorePolicy];
  v17 = [restorePolicy restoreRootForDomain:domainCopy];

  if ([(MBEngine *)self isForegroundRestore]&& ![MBFileOperation createDirectories:4294967294 destinationBasePath:@"/" destinationRpath:v17 permissions:493 error:error])
  {
    v28 = 0;
  }

  else
  {
    v18 = [_TtC7backupd14MBRestoreDepot restoreDepotWithPersona:v15 destination:v17 restoreDepotOverridePath:0 error:error];
    if (v18)
    {
      v19 = [planCopy planForDomain:domainCopy restoreType:-[MBCKRestoreEngine restoreType](self error:{"restoreType"), error}];
      if (v19)
      {
        v20 = [MBAssetRecordFetcher assetFetcherWithTracker:v13 device:v11 error:error];
        if (v20)
        {
          v44 = v20;
          v21 = [MBAssetDecrypterFactory assetDecrypterWithTracker:v13 device:v11 error:error];
          if (v21)
          {
            v39 = v21;
            v40 = planCopy;
            v37 = v19;
            targetSnapshot = [(MBCKRestoreEngine *)self targetSnapshot];
            v38 = targetSnapshot;
            if (-[MBEngine isBackgroundRestore](self, "isBackgroundRestore") && (v23 = [targetSnapshot snapshotFormat], -[MBCKEngine serviceAccount](self, "serviceAccount"), v24 = objc_claimAutoreleasedReturnValue(), v25 = v23, v26 = v24, v41 = +[MBRestoreSnapshotIntegrityVerifier shouldRunVerifierForRestoreWithSnapshotFormat:account:](MBRestoreSnapshotIntegrityVerifier, "shouldRunVerifierForRestoreWithSnapshotFormat:account:", v25), v26, v41))
            {
              v42 = [MBRestoreSnapshotIntegrityVerifier alloc];
              restorePolicy2 = [(MBCKRestoreEngine *)self restorePolicy];
              snapshotFormat = [targetSnapshot snapshotFormat];
              restoreSnapshotsDirectoryRoot = [v40 restoreSnapshotsDirectoryRoot];
              snapshotID = [targetSnapshot snapshotID];
              v43 = [(MBRestoreSnapshotIntegrityVerifier *)v42 initWithPolicy:restorePolicy2 snapshotFormat:snapshotFormat snapshotDir:restoreSnapshotsDirectoryRoot snapshotUUID:snapshotID delegate:self];
            }

            else
            {
              v43 = 0;
            }

            v36 = [MBRestoreDomainEngine alloc];
            restorePolicy3 = [(MBCKRestoreEngine *)self restorePolicy];
            progressModel = [(MBCKEngine *)self progressModel];
            restoreLogger = [(MBCKRestoreEngine *)self restoreLogger];
            v19 = v37;
            v28 = [(MBRestoreDomainEngine *)v36 initWithRootPath:v17 policy:restorePolicy3 depot:v18 fetcher:v44 decrypter:v39 plan:v37 progress:progressModel verifier:v43 logger:restoreLogger error:error];

            v21 = v39;
            planCopy = v40;
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

- (BOOL)_restoreForegroundFilesUsingPlanForDomainNames:(id)names error:(id *)error
{
  namesCopy = names;
  _populatedRestorePlan = [(MBCKRestoreEngine *)self _populatedRestorePlan];
  if (!_populatedRestorePlan)
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
    LODWORD(v54) = [namesCopy count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "=ckrestore-engine= Performing restore for %u foreground domains using plan", buf, 8u);
    [namesCopy count];
    _MBLog();
  }

  v12 = [(MBCKRestoreEngine *)self _restoreDomains:namesCopy plan:_populatedRestorePlan withQueue:v10 concurrencyLimit:6 error:error];
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
  v13 = namesCopy;
  v31 = v13;
  v32 = &v49;
  v33 = &v45;
  v34 = &v37;
  v35 = &v41;
  v14 = [_populatedRestorePlan enumerateDomainsAndAttributes:&v36 enumerator:v30];
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

- (BOOL)_restoreDomains:(id)domains plan:(id)plan withQueue:(id)queue concurrencyLimit:(unint64_t)limit error:(id *)error
{
  domainsCopy = domains;
  planCopy = plan;
  queueCopy = queue;
  progressModel = [(MBCKEngine *)self progressModel];
  v14 = [planCopy addRemainingProgress:progressModel forDomainNames:domainsCopy error:error];

  if (v14)
  {
    dsema = dispatch_semaphore_create(limit);
    group = dispatch_group_create();
    v42 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = domainsCopy;
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

        domainManager = [(MBEngine *)self domainManager];
        v20 = [domainManager domainForName:v18];

        if (!v20)
        {
          __assert_rtn("[MBCKRestoreEngine _restoreDomains:plan:withQueue:concurrencyLimit:error:]", "MBCKRestoreEngine.m", 1325, "domain");
        }

        if ([v20 hasRootPath])
        {
          v47 = 0;
          v21 = [(MBCKRestoreEngine *)self _restoreDomainEngineForDomain:v20 plan:planCopy error:&v47];
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
          dispatch_group_async(group, queueCopy, block);
        }

        else
        {
          v27 = MBGetDefaultLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            name = [v20 name];
            *buf = 138412290;
            v54 = name;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Not restoring domain %@ with nil root path", buf, 0xCu);

            name2 = [v20 name];
            _MBLog();
          }

          v52 = v18;
          v29 = [NSArray arrayWithObjects:&v52 count:1];
          v30 = [planCopy skipDomains:v29 error:error];

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
      if (error)
      {
        [MBError errorWithErrors:v42];
        *error = v31 = 0;
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

- (BOOL)_restoreForegroundFilesUsingCKCacheForDomainNames:(id)names error:(id *)error
{
  namesCopy = names;
  cache = [(MBCKEngine *)self cache];
  tracker = [cache tracker];

  if (!tracker)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreForegroundFilesUsingCKCacheForDomainNames:error:]", "MBCKRestoreEngine.m", 1367, "cacheTracker");
  }

  v143 = 0;
  v87 = [tracker openCacheWithAccessType:2 cached:0 error:&v143];
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

    if (error)
    {
      v68 = *&v6;
      v84 = 0;
      *error = v6;
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
  v10 = namesCopy;
  v127 = v10;
  v129 = &v139;
  v130 = &v135;
  v11 = [v87 enumeratePendingRestoreFilesForAnyDomainOrderAscendingWithBlock:v126];

  progressModel = [(MBCKEngine *)self progressModel];
  [progressModel willTransferItemsWithSize:v140[3] count:*(v136 + 6)];

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
  if (![(MBCKRestoreFilePrefetchEngine *)v80 setUpWithError:error])
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
  performanceStatistics = [(MBCKEngine *)self performanceStatistics];
  [performanceStatistics setObject:v30 forKeyedSubscript:@"PreflightTime"];

  v32 = [NSNumber numberWithUnsignedLongLong:v123[3]];
  performanceStatistics2 = [(MBCKEngine *)self performanceStatistics];
  [performanceStatistics2 setObject:v32 forKeyedSubscript:@"ForegroundRestoreItems"];

  v34 = [NSNumber numberWithUnsignedLongLong:v115[3]];
  performanceStatistics3 = [(MBCKEngine *)self performanceStatistics];
  [performanceStatistics3 setObject:v34 forKeyedSubscript:@"ForegroundPrefetchItems"];

  v36 = [NSNumber numberWithUnsignedLongLong:v103[3]];
  performanceStatistics4 = [(MBCKEngine *)self performanceStatistics];
  [performanceStatistics4 setObject:v36 forKeyedSubscript:@"ForegroundPrefetchSize"];

  v38 = [NSNumber numberWithUnsignedLongLong:v107[3]];
  performanceStatistics5 = [(MBCKEngine *)self performanceStatistics];
  [performanceStatistics5 setObject:v38 forKeyedSubscript:@"BackgroundRestoreSize"];

  v40 = [NSNumber numberWithUnsignedLongLong:v119[3]];
  performanceStatistics6 = [(MBCKEngine *)self performanceStatistics];
  [performanceStatistics6 setObject:v40 forKeyedSubscript:@"BackgroundRestoreItems"];

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
  performanceStatistics7 = [(MBCKEngine *)self performanceStatistics];
  [performanceStatistics7 setObject:v48 forKeyedSubscript:@"PrefetchTime"];

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
    if ([(MBCKEngine *)self handleCancelation:error, *&v74, v75, v76, v77, v78])
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

    domainManager = [(MBEngine *)self domainManager];
    v61 = [domainManager domainForName:*&v57];

    v62 = [[MBCKRestoreDomainEngine alloc] initWithRestoreEngine:self enumeratorCache:v87 domain:v61];
    v88 = v54;
    LOBYTE(domainManager) = [(MBCKRestoreDomainEngine *)v62 runWithError:&v88];
    v63 = v88;

    v54 = v63;
    if (domainManager)
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
  performanceStatistics8 = [(MBCKEngine *)self performanceStatistics];
  [performanceStatistics8 setObject:v70 forKeyedSubscript:@"RestoreTime"];

  [v87 close];
  if (!((error == 0) | v84 & 1))
  {
    v72 = v54;
    v84 = 0;
    *error = v54;
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

- (void)_purgeBeforeRestoring:(unint64_t)restoring
{
  v4 = [MBCacheDeleteRequest purgeRequestForCloudForegroundRestoreOfSize:restoring];
  if (v4)
  {
    [(MBCKRestoreEngine *)self setCacheDeleteRequest:v4];
  }

  else
  {
    cacheDeleteRequest = [(MBCKRestoreEngine *)self cacheDeleteRequest];
    [(MBCKRestoreEngine *)self setCacheDeleteRequest:cacheDeleteRequest];
  }

  cacheDeleteRequest2 = [(MBCKRestoreEngine *)self cacheDeleteRequest];

  if (cacheDeleteRequest2)
  {
    cacheDeleteRequest3 = [(MBCKRestoreEngine *)self cacheDeleteRequest];
    purge = [cacheDeleteRequest3 purge];

    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = purge;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= CacheDelete purged %llu bytes", buf, 0xCu);
      _MBLog();
    }
  }
}

- (BOOL)_downloadRestorablesForBackgroundAppWithError:(id *)error
{
  context = [(MBCKEngine *)self context];
  restoreMode = [context restoreMode];
  bundleID = [restoreMode bundleID];

  appManager = [(MBEngine *)self appManager];
  persona = [(MBCKEngine *)self persona];
  v31 = 0;
  v10 = [appManager fetchAppWithIdentifier:bundleID persona:persona error:&v31];
  v11 = v31;

  if (v10)
  {
    errorCopy = error;
    v26 = bundleID;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    containers = [v10 containers];
    v13 = [containers countByEnumeratingWithState:&v27 objects:v32 count:16];
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
            objc_enumerationMutation(containers);
          }

          domain = [*(*(&v27 + 1) + 8 * i) domain];
          domainManager = [(MBEngine *)self domainManager];
          name = [domain name];
          [domainManager addDomain:domain forName:name];
        }

        v14 = [containers countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v14);
    }

    if ([(MBCKRestoreEngine *)self useFileLists])
    {
      v20 = [(MBCKRestoreEngine *)self _restoreBackgroundContainersUsingPlanForApp:v10 error:errorCopy];
    }

    else
    {
      v20 = [(MBCKRestoreEngine *)self _restoreBackgroundContainersUsingCKCacheForApp:v10 error:errorCopy];
    }

    v23 = v20;
    bundleID = v26;
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

    if (error)
    {
      v22 = v11;
      v23 = 0;
      *error = v11;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (BOOL)_restoreBackgroundContainersUsingPlanForApp:(id)app error:(id *)error
{
  appCopy = app;
  bundleID = [appCopy bundleID];
  if (!bundleID)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreBackgroundContainersUsingPlanForApp:error:]", "MBCKRestoreEngine.m", 1555, "bundleID");
  }

  _populatedRestorePlan = [(MBCKRestoreEngine *)self _populatedRestorePlan];
  if (!_populatedRestorePlan)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreBackgroundContainersUsingPlanForApp:error:]", "MBCKRestoreEngine.m", 1557, "plan");
  }

  persona = [(MBCKEngine *)self persona];
  personaIdentifier = [persona personaIdentifier];

  if (!personaIdentifier)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreBackgroundContainersUsingPlanForApp:error:]", "MBCKRestoreEngine.m", 1559, "currentPersonaIdentifier");
  }

  if (qword_1004215F0 != -1)
  {
    dispatch_once(&qword_1004215F0, &stru_1003BC628);
  }

  v5 = objc_opt_class();
  objc_sync_enter(v5);
  v6 = [qword_1004215E8 objectForKeyedSubscript:personaIdentifier];
  if (!v6)
  {
    v6 = objc_opt_new();
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v75 = personaIdentifier;
      v76 = 2048;
      v77 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Creating empty active set for personaID %@ (%p)", buf, 0x16u);
      v44 = personaIdentifier;
      v46 = v6;
      _MBLog();
    }

    [qword_1004215E8 setObject:v6 forKeyedSubscript:personaIdentifier];
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
  containers = [appCopy containers];
  v10 = [containers countByEnumeratingWithState:&v68 objects:v82 count:16];
  if (v10)
  {
    v11 = *v69;
LABEL_13:
    v12 = 0;
    while (1)
    {
      if (*v69 != v11)
      {
        objc_enumerationMutation(containers);
      }

      domain = [*(*(&v68 + 1) + 8 * v12) domain];
      name = [domain name];
      v67 = 0;
      v15 = [_populatedRestorePlan planForDomain:domain restoreType:2 error:&v67];
      v16 = v67;
      if (!v15)
      {
        break;
      }

      if ([v15 isPopulated])
      {
        if ([v8 containsObject:name])
        {
          v40 = MBGetDefaultLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = v40;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v42 = [v8 count];
              *buf = 138413058;
              v75 = name;
              v76 = 2112;
              v77 = bundleID;
              v78 = 2048;
              v79 = v8;
              v80 = 2048;
              v81 = v42;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Dependent domain %@ for %@ is actively being restored (%p: count %lu)", buf, 0x2Au);
            }

            [v8 count];
            _MBLog();
          }

          if (error)
          {
            v39 = [MBError errorWithCode:17 format:@"Dependent domain %@ is actively being restored", name];
LABEL_60:
            *error = v39;
          }

          goto LABEL_62;
        }

        [v56 addObject:name];
      }

      else
      {
        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v75 = name;
          v76 = 2112;
          v77 = bundleID;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=ckrestore-engine= Not restoring dependent domain %@ for bundleID %@", buf, 0x16u);
          v44 = name;
          v46 = bundleID;
          _MBLog();
        }
      }

      if (v10 == ++v12)
      {
        v10 = [containers countByEnumeratingWithState:&v68 objects:v82 count:16];
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
      v75 = name;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed look up domain plan for domain %@", buf, 0xCu);
      _MBLog();
    }

    if (error)
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
            v77 = personaIdentifier;
            v78 = 2048;
            v79 = v8;
            v80 = 2048;
            v81 = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Adding domain %@ to active set for personaID %@ (%p: count %lu)", buf, 0x2Au);
          }

          v47 = v8;
          v48 = [v8 count];
          v46 = personaIdentifier;
          _MBLog();
        }

        [v8 addObject:v22];
      }

      v19 = [v18 countByEnumeratingWithState:&v63 objects:v73 count:16];
    }

    while (v19);
  }

  objc_sync_exit(v8);
  v52 = [NSString stringWithFormat:@"com.apple.MobileBackup.Background.%@", bundleID];
  v26 = v52;
  v49 = dispatch_queue_create([v52 UTF8String], &_dispatch_queue_attr_concurrent);
  v54 = [MBCKRestoreEngine _restoreDomains:"_restoreDomains:plan:withQueue:concurrencyLimit:error:" plan:v18 withQueue:_populatedRestorePlan concurrencyLimit:? error:?];
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
              v77 = personaIdentifier;
              v78 = 2048;
              v79 = v27;
              v80 = 2048;
              v81 = v35;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Removing domain %@ from active set for personaID %@ (%p: count %lu)", buf, 0x2Au);
            }

            v47 = v27;
            v48 = [v27 count];
            v45 = v32;
            v46 = personaIdentifier;
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

- (BOOL)_restoreBackgroundContainersUsingCKCacheForApp:(id)app error:(id *)error
{
  appCopy = app;
  bundleID = [appCopy bundleID];
  if (qword_100421600 != -1)
  {
    dispatch_once(&qword_100421600, &stru_1003BC648);
  }

  v88 = objc_opt_new();
  obj = objc_opt_class();
  objc_sync_enter(obj);
  [appCopy containers];
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
        if ([(MBCKEngine *)self handleCancelation:error, name12])
        {
          goto LABEL_71;
        }

        v9 = MBGetDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = v9;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            identifier = [v8 identifier];
            containerTypeString = [v8 containerTypeString];
            *buf = 138412802;
            *&buf[4] = identifier;
            *&buf[12] = 2112;
            *&buf[14] = containerTypeString;
            *&buf[22] = 2112;
            v121 = bundleID;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=ckrestore-engine= Restoring container %@ (%@) as a dependent of %@", buf, 0x20u);
          }

          identifier2 = [v8 identifier];
          containerTypeString2 = [v8 containerTypeString];
          v83 = bundleID;
          name12 = identifier2;
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
        cache = [(MBCKEngine *)self cache];
        domain = [v8 domain];
        name = [domain name];
        v100[0] = _NSConcreteStackBlock;
        v100[1] = 3221225472;
        v100[2] = sub_10005F784;
        v100[3] = &unk_1003BC670;
        v100[4] = &v101;
        v100[5] = buf;
        v17 = [cache fetchDomainRestoreStateForDomain:name callback:v100];

        if (v17)
        {
          v53 = MBGetDefaultLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v54 = v53;
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              domain2 = [v8 domain];
              name2 = [domain2 name];
              *v112 = 138412546;
              v113 = name2;
              v114 = 2112;
              v115 = v17;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to fetch domain state for dependent container %@: %@", v112, 0x16u);
            }

            domain3 = [v8 domain];
            name3 = [domain3 name];
            _MBLog();
          }

          if (error)
          {
LABEL_69:
            v63 = v17;
            *error = v17;
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
            v20 = [v19 isEqualToString:bundleID];
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
                    domain4 = [v8 domain];
                    name4 = [domain4 name];
                    v69 = v102[3];
                    v70 = *(*&buf[8] + 40);
                    *v112 = 138413058;
                    v113 = name4;
                    v114 = 2048;
                    v115 = v69;
                    v116 = 2112;
                    v117 = bundleID;
                    v118 = 2112;
                    v119 = v70;
                    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Dependent domain %@ (state:%ld) for %@ is being restored by agent %@", v112, 0x2Au);
                  }

                  domain5 = [v8 domain];
                  name5 = [domain5 name];
                  v84 = *(*&buf[8] + 40);
                  v82 = v102[3];
                  _MBLog();
                }

                if (error)
                {
                  domain6 = [v8 domain];
                  name6 = [domain6 name];
                  v75 = [NSString stringWithFormat:@"Dependent domain %@ is being restored by agent %@", name6, *(*&buf[8] + 40)];

                  v110[0] = NSLocalizedDescriptionKey;
                  v110[1] = @"RetryAfter";
                  v111[0] = v75;
                  v111[1] = @"5";
                  v76 = [NSDictionary dictionaryWithObjects:v111 forKeys:v110 count:2];
                  *error = [NSError errorWithDomain:@"MBErrorDomain" code:17 userInfo:v76];
                }

                v17 = 0;
                goto LABEL_70;
              }

              v18 = *&buf[8];
            }
          }

          v21 = *(v18 + 40);
          if (v21 && ([v21 isEqualToString:bundleID] & 1) == 0)
          {
            v22 = MBGetDefaultLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = v22;
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = v5;
                v25 = *(*&buf[8] + 40);
                domain7 = [v8 domain];
                name7 = [domain7 name];
                *v112 = 138412802;
                v113 = v25;
                v114 = 2112;
                v115 = bundleID;
                v116 = 2112;
                v117 = name7;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Changing the dependent domain from %@ to %@ for dependent %@", v112, 0x20u);

                v5 = v24;
              }

              v28 = *(*&buf[8] + 40);
              domain8 = [v8 domain];
              [domain8 name];
              v83 = containerTypeString2 = bundleID;
              name12 = v28;
              _MBLog();
            }
          }

          v30 = [(MBCKEngine *)self cache:name12];
          domain9 = [v8 domain];
          name8 = [domain9 name];
          v17 = [v30 setDomainRestoreAgent:bundleID forDomain:name8];

          if (v17)
          {
            v58 = MBGetDefaultLog();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              v59 = v58;
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                domain10 = [v8 domain];
                name9 = [domain10 name];
                *v112 = 138412802;
                v113 = bundleID;
                v114 = 2112;
                v115 = name9;
                v116 = 2112;
                v117 = v17;
                _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to set agent domain %@ for dependent %@: %@", v112, 0x20u);
              }

              domain11 = [v8 domain];
              name10 = [domain11 name];
              _MBLog();
            }

            if (error)
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
    [qword_1004215F8 addObject:bundleID];
    if ([v88 count])
    {
      cache2 = [(MBCKEngine *)self cache];
      [cache2 flush];
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

        domain12 = [*(*(&v96 + 1) + 8 * j) domain];
        if ([(MBCKEngine *)self handleCancelation:error])
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
            name11 = [domain12 name];
            *buf = 138412290;
            *&buf[4] = name11;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Beginning restore for %@", buf, 0xCu);
          }

          name12 = [domain12 name];
          _MBLog();
        }

        v40 = [[MBCKRestoreDomainEngine alloc] initWithRestoreEngine:self enumeratorCache:0 domain:domain12];
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
              name13 = [domain12 name];
              *buf = 138412546;
              *&buf[4] = name13;
              *&buf[12] = 2112;
              *&buf[14] = v42;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to restore domain %@: %@", buf, 0x16u);
            }

            name12 = [domain12 name];
            containerTypeString2 = v42;
            _MBLog();
          }
        }

        objc_autoreleasePoolPop(v36);
        if (error)
        {
          v46 = v42;
          *error = v42;
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
    domain13 = [appCopy domain];
    name14 = [domain13 name];
    *buf = 138412290;
    *&buf[4] = name14;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Restored domain %@ successfully", buf, 0xCu);

    domain14 = [appCopy domain];
    name15 = [domain14 name];
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
  snapshotID = [(MBCKSnapshot *)self->_targetSnapshot snapshotID];
  serviceManager = [(MBCKEngine *)self serviceManager];
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  v13 = 0;
  v6 = [serviceManager restorePlanForAccount:serviceAccount snapshotUUID:snapshotID error:&v13];
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

  isPopulated = [v6 isPopulated];
  v9 = MBGetDefaultLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (!isPopulated)
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

- (id)_restoreATCEngineForPlan:(id)plan error:(id *)error
{
  planCopy = plan;
  persona = [(MBCKEngine *)self persona];
  if (!persona)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreATCEngineForPlan:error:]", "MBCKRestoreEngine.m", 1770, "persona");
  }

  v8 = persona;
  domain = [planCopy domain];
  rootPath = [domain rootPath];

  if (!rootPath)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreATCEngineForPlan:error:]", "MBCKRestoreEngine.m", 1772, "rootPath");
  }

  v11 = [_TtC7backupd14MBRestoreDepot restoreDepotWithPersona:v8 destination:rootPath restoreDepotOverridePath:0 error:error];
  if (v11)
  {
    ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
    if (!ckOperationTracker)
    {
      __assert_rtn("[MBCKRestoreEngine _restoreATCEngineForPlan:error:]", "MBCKRestoreEngine.m", 1780, "tracker");
    }

    v13 = ckOperationTracker;
    device = [(MBCKEngine *)self device];
    if (!device)
    {
      __assert_rtn("[MBCKRestoreEngine _restoreATCEngineForPlan:error:]", "MBCKRestoreEngine.m", 1782, "device");
    }

    v15 = device;
    v16 = [MBAssetRecordFetcher assetFetcherWithTracker:v13 device:device error:error];
    if (v16)
    {
      v17 = [MBAssetDecrypterFactory assetDecrypterWithTracker:v13 device:v15 error:error];
      if (v17)
      {
        v25 = v17;
        restorePolicy = [(MBCKRestoreEngine *)self restorePolicy];
        deriveATCPolicy = [restorePolicy deriveATCPolicy];

        v23 = [_TtC7backupd18MBRestoreATCEngine alloc];
        progressModel = [(MBCKEngine *)self progressModel];
        restoreLogger = [(MBCKRestoreEngine *)self restoreLogger];
        v20 = [(MBRestoreATCEngine *)v23 initWithRootPath:rootPath policy:deriveATCPolicy depot:v11 fetcher:v16 decrypter:v25 plan:planCopy progress:progressModel verifier:0 logger:restoreLogger error:error];

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

- (BOOL)_downloadRestorablesForBackgroundFilesWithError:(id *)error
{
  context = [(MBCKEngine *)self context];
  restoreMode = [context restoreMode];
  type = [restoreMode type];

  context2 = [(MBCKEngine *)self context];
  restoreMode2 = [context2 restoreMode];
  v10 = restoreMode2;
  if (type == 5)
  {
    paths = [restoreMode2 paths];
  }

  else
  {
    path = [restoreMode2 path];
    v16 = path;
    paths = [NSArray arrayWithObjects:&v16 count:1];
  }

  if ([(MBCKRestoreEngine *)self useFileLists])
  {
    v13 = [(MBCKRestoreEngine *)self _restoreATCFiles:paths usingPlan:error];
  }

  else
  {
    v13 = [(MBCKRestoreEngine *)self _restoreATCFiles:paths usingCKCache:error];
  }

  v14 = v13;

  return v14;
}

- (BOOL)_restoreATCFiles:(id)files usingPlan:(id *)plan
{
  filesCopy = files;
  _populatedRestorePlan = [(MBCKRestoreEngine *)self _populatedRestorePlan];
  if (!_populatedRestorePlan)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreATCFiles:usingPlan:]", "MBCKRestoreEngine.m", 1826, "restorePlan");
  }

  v8 = _populatedRestorePlan;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10005FFA0;
  v25[3] = &unk_1003BC6D8;
  v25[4] = self;
  v9 = [_populatedRestorePlan atcRestorePlansForAbsolutePaths:filesCopy domainProvider:v25 error:plan];
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
      v20 = filesCopy;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(MBCKRestoreEngine *)self _restoreATCEngineForPlan:*(*(&v21 + 1) + 8 * i) error:plan];
          v17 = v16;
          if (!v16)
          {
            goto LABEL_16;
          }

          v18 = [v16 runWithError:plan];

          if (!v18)
          {
            LOBYTE(v17) = 0;
LABEL_16:
            filesCopy = v20;
            goto LABEL_17;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
        LOBYTE(v17) = 1;
        filesCopy = v20;
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

- (BOOL)_restoreATCFiles:(id)files usingCKCache:(id *)cache
{
  filesCopy = files;
  cacheCopy = cache;
  if (!cache)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreATCFiles:usingCKCache:]", "MBCKRestoreEngine.m", 1850, "error");
  }

  v7 = filesCopy;
  cache = [(MBCKEngine *)self cache];
  if (!cache)
  {
    __assert_rtn("[MBCKRestoreEngine _restoreATCFiles:usingCKCache:]", "MBCKRestoreEngine.m", 1853, "cache");
  }

  v8 = [[MBCKRestoreFilePrefetchEngine alloc] initWithRestoreEngine:self];
  if ([(MBCKRestoreFilePrefetchEngine *)v8 setUpWithError:cache])
  {
    selfCopy = self;
    domainManager = [(MBEngine *)self domainManager];
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
          v16 = [cache fetchRestorableFileForPath:v14 error:0];
          v17 = v16;
          if (v16)
          {
            domainName = [v16 domainName];
            v19 = [domainManager domainForName:domainName];

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
          if ([(MBCKEngine *)selfCopy handleCancelation:cacheCopy, v34])
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
          v30 = [(MBCKRestoreEngine *)selfCopy _restoreATCFile:v27 usingCache:cache];
          objc_autoreleasePoolPop(v29);
          if (v30)
          {
            v32 = v30;
            *cacheCopy = v30;

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

- (id)_restoreATCFile:(id)file usingCache:(id)cache
{
  fileCopy = file;
  cacheCopy = cache;
  cache = [(MBCKEngine *)self cache];
  v27 = 0;
  v9 = [cache fetchRestorableFileForPath:fileCopy error:&v27];
  v10 = v27;

  if (v9)
  {
    domainManager = self->super.super._domainManager;
    domainName = [v9 domainName];
    v13 = [(MBDomainManager *)domainManager domainForName:domainName];

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
        fileID = [v9 fileID];
        *buf = 138412546;
        v29 = fileID;
        v30 = 2112;
        v31 = fileCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Restored file(%@) at %@", buf, 0x16u);

        fileID2 = [v9 fileID];
        _MBLog();
      }

      v10 = 0;
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        fileID3 = [v9 fileID];
        *buf = 138412802;
        v29 = fileID3;
        v30 = 2112;
        v31 = fileCopy;
        v32 = 2112;
        v33 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to restore file(%@) at %@: %@", buf, 0x20u);

        fileID4 = [v9 fileID];
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
        v29 = fileCopy;
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
        v29 = fileCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to find file %@ in the RestoreFiles table", buf, 0xCu);
        _MBLog();
      }

      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)downloadRestorablesWithError:(id *)error
{
  context = [(MBCKEngine *)self context];
  restoreMode = [context restoreMode];
  type = [restoreMode type];

  if (type > 7)
  {
    return 1;
  }

  if (((1 << type) & 0x8E) != 0)
  {

    return [(MBCKRestoreEngine *)self _downloadRestorablesForBackgroundAppWithError:error];
  }

  else if (((1 << type) & 0x30) != 0)
  {

    return [(MBCKRestoreEngine *)self _downloadRestorablesForBackgroundFilesWithError:error];
  }

  else
  {

    return [(MBCKRestoreEngine *)self _downloadRestorablesForForegroundWithError:error];
  }
}

- (BOOL)_restoreEntitlements:(id)entitlements withError:(id *)error
{
  entitlementsCopy = entitlements;
  restoreMode = [(MBCKRestoreEngine *)self restoreMode];
  type = [restoreMode type];

  persona = [(MBCKEngine *)self persona];
  v10 = persona;
  if (type == 6)
  {
    placeholderRestoreDirectory = [persona placeholderRestoreDirectory];
    v49[0] = placeholderRestoreDirectory;
    bundleID = [entitlementsCopy bundleID];
    v49[1] = bundleID;
    relativePath = [entitlementsCopy relativePath];
    v49[2] = relativePath;
    bundleID2 = [NSArray arrayWithObjects:v49 count:3];
    v15 = [NSString pathWithComponents:bundleID2];
  }

  else
  {
    placeholderRestoreDirectory = [persona userIncompleteRestoreDirectory];
    v48[0] = placeholderRestoreDirectory;
    bundleID = [(MBCKEngine *)self persona];
    relativePath = [bundleID placeholderRestoreDirectory];
    v48[1] = relativePath;
    bundleID2 = [entitlementsCopy bundleID];
    v48[2] = bundleID2;
    relativePath2 = [entitlementsCopy relativePath];
    v48[3] = relativePath2;
    v17 = [NSArray arrayWithObjects:v48 count:4];
    v15 = [NSString pathWithComponents:v17];
  }

  stringByDeletingLastPathComponent = [v15 stringByDeletingLastPathComponent];
  v43 = 0;
  v19 = +[NSFileManager defaultManager];
  v20 = [v19 fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v43];

  if (v20)
  {
    if (v43)
    {
      v42 = 0;
      v21 = [entitlementsCopy writeToFile:v15 error:&v42];
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
            bundleID3 = [entitlementsCopy bundleID];
            *buf = 138412546;
            v45 = bundleID3;
            v46 = 2112;
            v47 = v26;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to set placeholder entitlements file attributes for %@: %@", buf, 0x16u);

            bundleID4 = [entitlementsCopy bundleID];
            _MBLog();
          }

          if (error)
          {
            [MBError errorWithCode:100 error:v26 path:v15 format:@"Error setting placeholder entitlements plist file attributes"];
            *error = v27 = 0;
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
        bundleID5 = [entitlementsCopy bundleID];
        *buf = 138412546;
        v45 = bundleID5;
        v46 = 2112;
        v47 = v22;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to restore placeholder entitlement for %@: %@", buf, 0x16u);

        bundleID6 = [entitlementsCopy bundleID];
        _MBLog();
      }

      if (error)
      {
        v34 = v22;
        v27 = 0;
        *error = v22;
        goto LABEL_28;
      }
    }

    else
    {
      v29 = MBGetDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        bundleID7 = [entitlementsCopy bundleID];
        *buf = 138412290;
        v45 = bundleID7;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to restore placeholder entitlements for %@: parent directory is a file", buf, 0xCu);

        bundleID8 = [entitlementsCopy bundleID];
        _MBLog();
      }

      if (error)
      {
        bundleID9 = [entitlementsCopy bundleID];
        *error = [MBError errorWithCode:100 path:stringByDeletingLastPathComponent format:@"Placeholder entitlement's parent directory for %@ is a file", bundleID9];
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
    v45 = stringByDeletingLastPathComponent;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Application placeholder does not exist at %{public}@ - not setting entitlements", buf, 0xCu);
    _MBLog();
  }

  v22 = 0;
  v27 = 1;
LABEL_28:

  return v27;
}

- (BOOL)restoreEntitlementsWithError:(id *)error
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

    if (error)
    {
      v13 = v7;
      LOBYTE(v10) = 0;
      *error = v7;
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
      if ([(MBCKEngine *)self handleCancelation:error, bundleID3, v29])
      {
        LOBYTE(v10) = 0;
        goto LABEL_39;
      }

      v16 = [v9 objectForKeyedSubscript:v15];
      appManager = [(MBEngine *)self appManager];
      bundleID = [v16 bundleID];
      v19 = [appManager appWithIdentifier:bundleID];

      if ([v19 isSystemApp])
      {
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          bundleID2 = [v16 bundleID];
          *buf = 138412290;
          v41 = bundleID2;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=ckrestore-engine= Skipping restore of entitlements for system app %@", buf, 0xCu);

          bundleID3 = [v16 bundleID];
          _MBLog();
        }

LABEL_33:

        goto LABEL_34;
      }

      relativePath = [v16 relativePath];

      v20 = MBGetDefaultLog();
      v23 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
      if (!relativePath)
      {
        if (v23)
        {
          *buf = 138412290;
          v41 = v15;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=ckrestore-engine= Not creating placeholder entitlement for %@", buf, 0xCu);
          bundleID3 = v15;
          _MBLog();
        }

        goto LABEL_33;
      }

      if (v23)
      {
        *buf = 138412290;
        v41 = v15;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=ckrestore-engine= Creating placeholder entitlement for %@", buf, 0xCu);
        bundleID3 = v15;
        _MBLog();
      }

      v34 = 0;
      v24 = [(MBCKRestoreEngine *)self _restoreEntitlements:v16 withError:&v34];
      v25 = v34;
      v7 = v25;
      if ((v24 & 1) == 0)
      {
        if (error)
        {
          v26 = v25;
          *error = v7;
        }

        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v41 = v15;
          v42 = 2112;
          v43 = v7;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Error writing placeholder entitlement for %@: %@", buf, 0x16u);
          bundleID3 = v15;
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

- (id)getEntitlementsForDomainsWithError:(id *)error
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
        cache = [(MBCKEngine *)self cache];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10006171C;
        v22[3] = &unk_1003BC700;
        v12 = v5;
        v23 = v5;
        v13 = [cache enumerateManifestsForSnapshot:v10 foundManifest:v22];

        if (v13)
        {
          if (error)
          {
            v15 = v13;
            *error = v13;
          }

          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            snapshotID = [v10 snapshotID];
            *buf = 138412546;
            v29 = snapshotID;
            v30 = 2112;
            v31 = v13;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Error fetching manifests for snapshot %@: %@", buf, 0x16u);

            snapshotID2 = [v10 snapshotID];
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

- (BOOL)annotateRestoreWithError:(id *)error
{
  restoreMode = [(MBCKRestoreEngine *)self restoreMode];
  type = [restoreMode type];

  if (type == 6)
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
    persona = [(MBCKEngine *)self persona];
    backupPolicy = [(MBEngine *)self backupPolicy];
    settingsContext = [(MBEngine *)self settingsContext];
    v7 = +[MBRestoreDirectoryAnnotator restoreDirectoryAnnotatorWithPersona:engineType:backupPolicy:shouldRestoreSystemFiles:encrypted:](MBRestoreDirectoryAnnotator, "restoreDirectoryAnnotatorWithPersona:engineType:backupPolicy:shouldRestoreSystemFiles:encrypted:", persona, 2, backupPolicy, [settingsContext shouldRestoreSystemFiles], -[MBCKEngine encrypted](self, "encrypted"));

    domainManager = [(MBEngine *)self domainManager];
    allDomains = [domainManager allDomains];
    [v7 annotateDomains:allDomains];
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

      if (error)
      {
        v20 = *&v17;
        *error = v17;
      }
    }

    goto LABEL_18;
  }

  return 1;
}

- (BOOL)verifyRestoreWithError:(id *)error
{
  if ([(MBCKRestoreEngine *)self restoreType]== 1 && [(MBCKRestoreEngine *)self useFileLists])
  {
    serviceAccount = [(MBCKEngine *)self serviceAccount];
    if (![MBRestoreSnapshotIntegrityVerifier shouldRunVerifierForRestoreWithSnapshotFormat:[(MBCKSnapshot *)self->_targetSnapshot snapshotFormat] account:serviceAccount])
    {
      v18 = 1;
LABEL_17:

      return v18;
    }

    _populatedRestorePlan = [(MBCKRestoreEngine *)self _populatedRestorePlan];
    [(MBCKRestoreEngine *)self setForegroundRestoreVerificationEnabled:1];
    v7 = [MBRestoreSnapshotIntegrityVerifier alloc];
    restorePolicy = self->_restorePolicy;
    snapshotFormat = [(MBCKSnapshot *)self->_targetSnapshot snapshotFormat];
    persona = [(MBCKEngine *)self persona];
    restoreSnapshotsDatabaseDirectory = [persona restoreSnapshotsDatabaseDirectory];
    snapshotID = [(MBCKSnapshot *)self->_targetSnapshot snapshotID];
    v13 = [(MBRestoreSnapshotIntegrityVerifier *)v7 initWithPolicy:restorePolicy snapshotFormat:snapshotFormat snapshotDir:restoreSnapshotsDatabaseDirectory snapshotUUID:snapshotID delegate:self];

    domainManager = [(MBEngine *)self domainManager];
    v26 = 0;
    LODWORD(persona) = [(MBRestoreSnapshotIntegrityVerifier *)v13 verifyIntermediateDirectoryAfterForegroundRestoreWithDomainManager:domainManager plan:_populatedRestorePlan overridePath:0 error:&v26];
    v15 = v26;

    if (persona)
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
        isAutomation = [v23 isAutomation];

        if (isAutomation)
        {
          if (error)
          {
            v25 = v15;
            v18 = 0;
            *error = v15;
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

- (BOOL)finalizeRestoreWithError:(id *)error
{
  ckOperationTracker = [(MBCKEngine *)self ckOperationTracker];
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKRestoreEngine finalizeRestoreWithError:]", "MBCKRestoreEngine.m", 2164, "tracker");
  }

  v6 = ckOperationTracker;
  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKRestoreEngine finalizeRestoreWithError:]", "MBCKRestoreEngine.m", 2166, "serviceAccount");
  }

  v8 = serviceAccount;
  if ([(MBCKRestoreEngine *)self restoreType]== 1)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Finalizing foreground restore", buf, 2u);
      _MBLog();
    }

    restorePolicy = [(MBCKRestoreEngine *)self restorePolicy];
    v11 = [restorePolicy notifyPluginsEndingRestoreWithEngine:self];

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

    restorePolicy2 = [(MBCKRestoreEngine *)self restorePolicy];
    engineError = [(MBCKEngine *)self engineError];
    v11 = [restorePolicy2 notifyPluginsEndedRestoreWithEngine:self error:engineError];

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

      if (error)
      {
        v19 = v11;
        v16 = 0;
        *error = v11;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_42;
    }

    device = [(MBCKEngine *)self device];
    v54 = 0;
    v21 = [MBCKEncryptionManager saveRestoreKeyBagsWithAccount:v8 device:device error:&v54];
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

      if (error)
      {
        v45 = v22;
        v16 = 0;
        *error = v22;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_41;
    }

    persona = [(MBCKEngine *)self persona];
    serviceManager = [(MBCKEngine *)self serviceManager];
    v25 = [MBServiceRestoreSession alloc];
    v50 = persona;
    personaIdentifier = [persona personaIdentifier];
    v27 = [(MBServiceRestoreSession *)v25 initWithPersonaIdentifier:personaIdentifier];

    context = [(MBCKEngine *)self context];
    -[MBServiceRestoreSession setSnapshotID:](v27, "setSnapshotID:", [context snapshotID]);

    context2 = [(MBCKEngine *)self context];
    snapshotUUID = [context2 snapshotUUID];
    [(MBServiceRestoreSession *)v27 setSnapshotUUID:snapshotUUID];

    context3 = [(MBCKEngine *)self context];
    backupUDID = [context3 backupUDID];
    [(MBServiceRestoreSession *)v27 setBackupUDID:backupUDID];

    startDate = [(MBCKRestoreEngine *)self startDate];
    [(MBServiceRestoreSession *)v27 setStartDate:startDate];

    [(MBServiceRestoreSession *)v27 setFinishing:0];
    [(MBServiceRestoreSession *)v27 setCancelled:0];
    context4 = [(MBCKEngine *)self context];
    -[MBServiceRestoreSession setSnapshotBackupPolicy:](v27, "setSnapshotBackupPolicy:", [context4 backupPolicy]);

    -[MBServiceRestoreSession setTelemetryID:](v27, "setTelemetryID:", [serviceManager restoreTelemetryID]);
    cloudFormatInfo = [(MBCKRestoreEngine *)self cloudFormatInfo];
    if (!cloudFormatInfo)
    {
      __assert_rtn("[MBCKRestoreEngine finalizeRestoreWithError:]", "MBCKRestoreEngine.m", 2214, "cloudFormatInfo");
    }

    v36 = cloudFormatInfo;
    performanceStatistics = [(MBCKEngine *)self performanceStatistics];
    v53 = v22;
    v38 = [MBDataMigratorPlugin setUpMobileBackupPreferencesForBackgroundRestoreWithAccount:v8 restoreSession:v27 cloudFormatInfo:v36 performanceStatistics:performanceStatistics backupPolicy:[(MBEngine *)self backupPolicy] error:&v53];
    v39 = v53;

    if (v38)
    {
      snapshotUUID2 = [(MBServiceRestoreSession *)v27 snapshotUUID];
      v52 = v39;
      v41 = [serviceManager closeRestorePlanForAccount:v8 snapshotUUID:snapshotUUID2 error:&v52];
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

        if (!error)
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

        if (!error)
        {
          v16 = 0;
          goto LABEL_40;
        }

LABEL_39:
        v48 = v39;
        v16 = 0;
        *error = v39;
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

  databaseManager = [v6 databaseManager];
  account = [v6 account];
  [databaseManager setShouldSupportBudgeting:0 account:account];

  v16 = 1;
LABEL_43:

  return v16;
}

- (MBCKEncryptionManager)encryptionManager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_encryptionManager;
  if (!v3)
  {
    v4 = objc_alloc_init(MBCKEncryptionManager);
    encryptionManager = selfCopy->_encryptionManager;
    selfCopy->_encryptionManager = v4;

    v3 = v4;
  }

  v6 = v3;

  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)_configureAndInstallPlaceholdersWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBCKRestoreEngine _configureAndInstallPlaceholdersWithError:]", "MBCKRestoreEngine.m", 2260, "error");
  }

  serviceAccount = [(MBCKEngine *)self serviceAccount];
  if (!serviceAccount)
  {
    __assert_rtn("[MBCKRestoreEngine _configureAndInstallPlaceholdersWithError:]", "MBCKRestoreEngine.m", 2262, "serviceAccount");
  }

  v6 = serviceAccount;
  if ([(MBEngine *)self isForegroundRestore])
  {
    persona = [v6 persona];
    if (-[MBCKRestoreEngine useFileLists](self, "useFileLists") && (-[MBCKRestoreEngine excludedAppBundleIDs](self, "excludedAppBundleIDs"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [persona copyPlaceholderIPAsForAppInstallationExcluding:v8 error:error], v8, !v9))
    {
      LOBYTE(v13) = 0;
    }

    else
    {
      if ([persona isDataSeparatedPersona])
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
        v13 = [v11 performMigrationWithConfig:v12 error:error];
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
          v16 = *error;
          *buf = 138543362;
          v20 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to install the app placeholders for the data-separated foreground restore: %{public}@", buf, 0xCu);
          v18 = *error;
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
    restoreMode = [(MBCKRestoreEngine *)self restoreMode];
    if ([restoreMode isBackgroundApp])
    {
      if (MBIsInternalInstall())
      {
        bundleID = [restoreMode bundleID];
        v3 = [NSString stringWithFormat:@"Background Restore for %@", bundleID];
      }

      else
      {
        v3 = [NSString stringWithFormat:@"Background Restore for App"];
      }
    }

    else if ([restoreMode isBackgroundFile])
    {
      v3 = @"Background Restore for ATC File";
    }

    else if ([restoreMode isBackgroundFiles])
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