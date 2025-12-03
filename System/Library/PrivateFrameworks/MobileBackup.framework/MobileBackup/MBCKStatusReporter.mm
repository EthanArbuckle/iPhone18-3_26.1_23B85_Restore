@interface MBCKStatusReporter
+ (BOOL)_isEnabledForKey:(id)key account:(id)account;
+ (void)_reportStatusForEngine:(id)engine account:(id)account manager:(id)manager key:(id)key values:(id)values;
+ (void)_reportStatusForEngine:(id)engine key:(id)key values:(id)values;
+ (void)reportBackupStateChangeForEngine:(id)engine state:(unint64_t)state start:(id)start end:(id)end;
+ (void)reportRestoreStateChangeForEngine:(id)engine state:(unint64_t)state start:(id)start end:(id)end;
@end

@implementation MBCKStatusReporter

+ (BOOL)_isEnabledForKey:(id)key account:(id)account
{
  keyCopy = key;
  accountCopy = account;
  v7 = +[MBRemoteConfiguration sharedInstance];
  v8 = [v7 valueForKey:@"MBCKStatusReporterEnabled" account:accountCopy];

  if (!v8 || ([v8 BOOLValue] & 1) != 0)
  {
    v16[0] = @"MBCKStatusReporterEnabled";
    v16[1] = keyCopy;
    v9 = [NSArray arrayWithObjects:v16 count:2];
    v10 = [v9 componentsJoinedByString:@"."];

    v11 = +[MBRemoteConfiguration sharedInstance];
    v12 = [v11 valueForKey:v10 account:accountCopy];

    if (v12)
    {
      if ([v12 BOOLValue])
      {
        v13 = 1;
LABEL_15:

        goto LABEL_16;
      }

      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v18 = keyCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Skipping status reporting for %{public}@ because it's explicitly disabled", buf, 0xCu);
        goto LABEL_13;
      }
    }

    else
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v18 = keyCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Skipping status reporting for %{public}@ because it's disabled by default", buf, 0xCu);
LABEL_13:
        _MBLog();
      }
    }

    v13 = 0;
    goto LABEL_15;
  }

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v18 = keyCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Skipping status reporting for %{public}@ because it's totally disabled", buf, 0xCu);
    _MBLog();
  }

  v13 = 0;
LABEL_16:

  return v13;
}

+ (void)_reportStatusForEngine:(id)engine account:(id)account manager:(id)manager key:(id)key values:(id)values
{
  engineCopy = engine;
  accountCopy = account;
  managerCopy = manager;
  keyCopy = key;
  valuesCopy = values;
  if (!accountCopy)
  {
    __assert_rtn("+[MBCKStatusReporter _reportStatusForEngine:account:manager:key:values:]", "MBCKStatusReporter.m", 52, "account");
  }

  v18 = valuesCopy;
  v19 = +[MBManagedPolicy sharedPolicy];
  v62 = 0;
  v20 = [v19 checkIfDiagnosticTelemetryIsAllowed:&v62];
  v21 = v62;

  if ((v20 & 1) == 0)
  {
    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v64 = v21;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Not sending telemetry: %@", buf, 0xCu);
      _MBLog();
    }

    goto LABEL_27;
  }

  if (qword_100421A60 != -1)
  {
    dispatch_once(&qword_100421A60, &stru_1003C1958);
  }

  if (qword_100421A58 && [self _isEnabledForKey:keyCopy account:accountCopy])
  {
    v53 = a2;
    ckOperationPolicy = [engineCopy ckOperationPolicy];
    v23 = [ckOperationPolicy copy];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = objc_opt_new();
    }

    v26 = v25;

    v27 = +[MBCellularAccess expensiveCellularAccess];
    [v26 setCellularAccess:v27];

    databaseManager = [managerCopy databaseManager];
    v61 = v21;
    v29 = [MBCKOperationTracker operationTrackerWithAccount:accountCopy databaseManager:databaseManager policy:v26 error:&v61];
    v55 = v61;

    if (v29)
    {
      v54 = v29;
      ckOperationTracker = [engineCopy ckOperationTracker];
      ckOperationGroup = [ckOperationTracker ckOperationGroup];
      v32 = ckOperationGroup;
      v52 = engineCopy;
      if (ckOperationGroup)
      {
        v33 = ckOperationGroup;
      }

      else
      {
        v33 = [v26 operationGroupWithName:@"reportStatus" processName:0];
      }

      v34 = v33;
      v51 = managerCopy;

      [v54 setCkOperationGroup:v34];
      v35 = objc_alloc_init(BackupStatusMessage);
      v50 = keyCopy;
      [(BackupStatusMessage *)v35 setKey:keyCopy];
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v49 = v18;
      v36 = v18;
      v37 = [v36 countByEnumeratingWithState:&v57 objects:v69 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v58;
        do
        {
          for (i = 0; i != v38; i = i + 1)
          {
            if (*v58 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v57 + 1) + 8 * i);
            v42 = objc_alloc_init(BackupStatusKeyAndValue);
            [(BackupStatusKeyAndValue *)v42 setKey:v41];
            v43 = [v36 objectForKeyedSubscript:v41];
            [(BackupStatusKeyAndValue *)v42 setValue:v43];

            [(BackupStatusMessage *)v35 addKeysAndValues:v42];
          }

          v38 = [v36 countByEnumeratingWithState:&v57 objects:v69 count:16];
        }

        while (v38);
      }

      v44 = objc_opt_new();
      [v44 addMessages:v35];
      v45 = [qword_100421A58 longLivedOperationForRequest:v44];
      v46 = +[MBDaemon sharedDaemon];
      [v46 holdWorkAssertion:v53];

      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_1002033F0;
      v56[3] = &unk_1003BBFE8;
      v56[4] = v53;
      [v45 setCompletionBlock:v56];
      v47 = MBGetDefaultLog();
      keyCopy = v50;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = objc_opt_class();
        *buf = 138543874;
        v64 = v48;
        v65 = 2114;
        v66 = v50;
        v67 = 2114;
        v68 = v36;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Sending %{public}@ status, key:%{public}@, values:%{public}@", buf, 0x20u);
        objc_opt_class();
        _MBLog();
      }

      v29 = v54;
      [v54 addDatabaseOperation:v45];

      managerCopy = v51;
      engineCopy = v52;
      v18 = v49;
    }

    v21 = v55;
LABEL_27:
  }
}

+ (void)_reportStatusForEngine:(id)engine key:(id)key values:(id)values
{
  valuesCopy = values;
  keyCopy = key;
  engineCopy = engine;
  serviceAccount = [engineCopy serviceAccount];
  serviceManager = [engineCopy serviceManager];
  [self _reportStatusForEngine:engineCopy account:serviceAccount manager:serviceManager key:keyCopy values:valuesCopy];
}

+ (void)reportBackupStateChangeForEngine:(id)engine state:(unint64_t)state start:(id)start end:(id)end
{
  engineCopy = engine;
  endCopy = end;
  startCopy = start;
  v12 = +[NSMutableDictionary dictionary];
  stateDescription = [engineCopy stateDescription];
  v14 = MBCKStringForBackupState();
  [v12 setObject:v14 forKeyedSubscript:@"state"];

  if (stateDescription)
  {
    [v12 setObject:stateDescription forKeyedSubscript:@"description"];
  }

  [endCopy timeIntervalSinceDate:startCopy];
  v16 = [NSString stringWithFormat:@"%.6f", v15];
  [v12 setObject:v16 forKeyedSubscript:@"duration"];

  v17 = +[NSDateFormatter ISO8601Formatter];
  v18 = [v17 stringFromDate:startCopy];

  [v12 setObject:v18 forKeyedSubscript:@"start"];
  v19 = +[NSDateFormatter ISO8601Formatter];
  v20 = [v19 stringFromDate:endCopy];

  [v12 setObject:v20 forKeyedSubscript:@"end"];
  if ([engineCopy isFinished])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  [v12 setObject:v21 forKeyedSubscript:@"finished"];
  if ([engineCopy hasError])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  [v12 setObject:v22 forKeyedSubscript:@"hasError"];
  device = [engineCopy device];
  dateOfLastBackup = [device dateOfLastBackup];

  if (dateOfLastBackup)
  {
    v25 = +[NSDateFormatter ISO8601Formatter];
    device2 = [engineCopy device];
    dateOfLastBackup2 = [device2 dateOfLastBackup];
    v28 = [v25 stringFromDate:dateOfLastBackup2];
    [v12 setObject:v28 forKeyedSubscript:@"lastBackupDate"];
  }

  if (state == 8)
  {
    [v12 setObject:@"YES" forKeyedSubscript:@"usedAPFSSnapshot"];
  }

  if ([engineCopy hasError])
  {
    engineError = [engineCopy engineError];
    v30 = MBExtractFirstMBErrorOrCKError(engineError);

    if (v30)
    {
      domain = [v30 domain];
      [v12 setObject:domain forKeyedSubscript:@"errorDomain"];

      v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v30 code]);
      stringValue = [v32 stringValue];
      [v12 setObject:stringValue forKeyedSubscript:@"errorCode"];

      localizedDescription = [v30 localizedDescription];
      [v12 setObject:localizedDescription forKeyedSubscript:@"errorDescription"];
    }
  }

  if (state >= 4)
  {
    telemetry = [engineCopy telemetry];
    backupFileCount = [telemetry backupFileCount];
    stringValue2 = [backupFileCount stringValue];
    [v12 setObject:stringValue2 forKeyedSubscript:@"backupFileCount"];

    telemetry2 = [engineCopy telemetry];
    backupDirectoryCount = [telemetry2 backupDirectoryCount];
    stringValue3 = [backupDirectoryCount stringValue];
    [v12 setObject:stringValue3 forKeyedSubscript:@"backupDirectoryCount"];
  }

  v41 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [engineCopy backupPolicy]);
  stringValue4 = [v41 stringValue];
  [v12 setObject:stringValue4 forKeyedSubscript:@"backupPolicy"];

  [self _reportStatusForEngine:engineCopy key:@"MBCKBackupEngine" values:v12];
}

+ (void)reportRestoreStateChangeForEngine:(id)engine state:(unint64_t)state start:(id)start end:(id)end
{
  engineCopy = engine;
  endCopy = end;
  startCopy = start;
  v12 = +[NSMutableDictionary dictionary];
  v13 = MBCKStringForRestoreState(state);
  [v12 setObject:v13 forKeyedSubscript:@"state"];

  if ([engineCopy isForegroundRestore])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [v12 setObject:v14 forKeyedSubscript:@"foreground"];
  [endCopy timeIntervalSinceDate:startCopy];
  v16 = [NSString stringWithFormat:@"%.6f", v15];
  [v12 setObject:v16 forKeyedSubscript:@"duration"];

  v17 = +[NSDateFormatter ISO8601Formatter];
  v18 = [v17 stringFromDate:startCopy];

  [v12 setObject:v18 forKeyedSubscript:@"start"];
  v19 = +[NSDateFormatter ISO8601Formatter];
  v20 = [v19 stringFromDate:endCopy];

  [v12 setObject:v20 forKeyedSubscript:@"end"];
  if ([engineCopy isFinished])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  [v12 setObject:v21 forKeyedSubscript:@"finished"];
  if ([engineCopy hasError])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  [v12 setObject:v22 forKeyedSubscript:@"hasError"];
  if ([engineCopy hasError])
  {
    engineError = [engineCopy engineError];
    v24 = MBExtractFirstMBErrorOrCKError(engineError);

    domain = [v24 domain];
    [v12 setObject:domain forKeyedSubscript:@"errorDomain"];

    v26 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v24 code]);
    stringValue = [v26 stringValue];
    [v12 setObject:stringValue forKeyedSubscript:@"errorCode"];

    localizedDescription = [v24 localizedDescription];
    [v12 setObject:localizedDescription forKeyedSubscript:@"errorDescription"];
  }

  v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [engineCopy backupPolicy]);
  stringValue2 = [v29 stringValue];
  [v12 setObject:stringValue2 forKeyedSubscript:@"backupPolicy"];

  [self _reportStatusForEngine:engineCopy key:@"MBCKRestoreEngine" values:v12];
}

@end