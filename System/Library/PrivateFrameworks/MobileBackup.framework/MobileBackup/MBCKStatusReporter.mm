@interface MBCKStatusReporter
+ (BOOL)_isEnabledForKey:(id)a3 account:(id)a4;
+ (void)_reportStatusForEngine:(id)a3 account:(id)a4 manager:(id)a5 key:(id)a6 values:(id)a7;
+ (void)_reportStatusForEngine:(id)a3 key:(id)a4 values:(id)a5;
+ (void)reportBackupStateChangeForEngine:(id)a3 state:(unint64_t)a4 start:(id)a5 end:(id)a6;
+ (void)reportRestoreStateChangeForEngine:(id)a3 state:(unint64_t)a4 start:(id)a5 end:(id)a6;
@end

@implementation MBCKStatusReporter

+ (BOOL)_isEnabledForKey:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MBRemoteConfiguration sharedInstance];
  v8 = [v7 valueForKey:@"MBCKStatusReporterEnabled" account:v6];

  if (!v8 || ([v8 BOOLValue] & 1) != 0)
  {
    v16[0] = @"MBCKStatusReporterEnabled";
    v16[1] = v5;
    v9 = [NSArray arrayWithObjects:v16 count:2];
    v10 = [v9 componentsJoinedByString:@"."];

    v11 = +[MBRemoteConfiguration sharedInstance];
    v12 = [v11 valueForKey:v10 account:v6];

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
        v18 = v5;
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
        v18 = v5;
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
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Skipping status reporting for %{public}@ because it's totally disabled", buf, 0xCu);
    _MBLog();
  }

  v13 = 0;
LABEL_16:

  return v13;
}

+ (void)_reportStatusForEngine:(id)a3 account:(id)a4 manager:(id)a5 key:(id)a6 values:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v14)
  {
    __assert_rtn("+[MBCKStatusReporter _reportStatusForEngine:account:manager:key:values:]", "MBCKStatusReporter.m", 52, "account");
  }

  v18 = v17;
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

  if (qword_100421A58 && [a1 _isEnabledForKey:v16 account:v14])
  {
    v53 = a2;
    v22 = [v13 ckOperationPolicy];
    v23 = [v22 copy];
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

    v28 = [v15 databaseManager];
    v61 = v21;
    v29 = [MBCKOperationTracker operationTrackerWithAccount:v14 databaseManager:v28 policy:v26 error:&v61];
    v55 = v61;

    if (v29)
    {
      v54 = v29;
      v30 = [v13 ckOperationTracker];
      v31 = [v30 ckOperationGroup];
      v32 = v31;
      v52 = v13;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = [v26 operationGroupWithName:@"reportStatus" processName:0];
      }

      v34 = v33;
      v51 = v15;

      [v54 setCkOperationGroup:v34];
      v35 = objc_alloc_init(BackupStatusMessage);
      v50 = v16;
      [(BackupStatusMessage *)v35 setKey:v16];
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
      v16 = v50;
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

      v15 = v51;
      v13 = v52;
      v18 = v49;
    }

    v21 = v55;
LABEL_27:
  }
}

+ (void)_reportStatusForEngine:(id)a3 key:(id)a4 values:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [v10 serviceAccount];
  v11 = [v10 serviceManager];
  [a1 _reportStatusForEngine:v10 account:v12 manager:v11 key:v9 values:v8];
}

+ (void)reportBackupStateChangeForEngine:(id)a3 state:(unint64_t)a4 start:(id)a5 end:(id)a6
{
  v43 = a3;
  v10 = a6;
  v11 = a5;
  v12 = +[NSMutableDictionary dictionary];
  v13 = [v43 stateDescription];
  v14 = MBCKStringForBackupState();
  [v12 setObject:v14 forKeyedSubscript:@"state"];

  if (v13)
  {
    [v12 setObject:v13 forKeyedSubscript:@"description"];
  }

  [v10 timeIntervalSinceDate:v11];
  v16 = [NSString stringWithFormat:@"%.6f", v15];
  [v12 setObject:v16 forKeyedSubscript:@"duration"];

  v17 = +[NSDateFormatter ISO8601Formatter];
  v18 = [v17 stringFromDate:v11];

  [v12 setObject:v18 forKeyedSubscript:@"start"];
  v19 = +[NSDateFormatter ISO8601Formatter];
  v20 = [v19 stringFromDate:v10];

  [v12 setObject:v20 forKeyedSubscript:@"end"];
  if ([v43 isFinished])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  [v12 setObject:v21 forKeyedSubscript:@"finished"];
  if ([v43 hasError])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  [v12 setObject:v22 forKeyedSubscript:@"hasError"];
  v23 = [v43 device];
  v24 = [v23 dateOfLastBackup];

  if (v24)
  {
    v25 = +[NSDateFormatter ISO8601Formatter];
    v26 = [v43 device];
    v27 = [v26 dateOfLastBackup];
    v28 = [v25 stringFromDate:v27];
    [v12 setObject:v28 forKeyedSubscript:@"lastBackupDate"];
  }

  if (a4 == 8)
  {
    [v12 setObject:@"YES" forKeyedSubscript:@"usedAPFSSnapshot"];
  }

  if ([v43 hasError])
  {
    v29 = [v43 engineError];
    v30 = MBExtractFirstMBErrorOrCKError(v29);

    if (v30)
    {
      v31 = [v30 domain];
      [v12 setObject:v31 forKeyedSubscript:@"errorDomain"];

      v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v30 code]);
      v33 = [v32 stringValue];
      [v12 setObject:v33 forKeyedSubscript:@"errorCode"];

      v34 = [v30 localizedDescription];
      [v12 setObject:v34 forKeyedSubscript:@"errorDescription"];
    }
  }

  if (a4 >= 4)
  {
    v35 = [v43 telemetry];
    v36 = [v35 backupFileCount];
    v37 = [v36 stringValue];
    [v12 setObject:v37 forKeyedSubscript:@"backupFileCount"];

    v38 = [v43 telemetry];
    v39 = [v38 backupDirectoryCount];
    v40 = [v39 stringValue];
    [v12 setObject:v40 forKeyedSubscript:@"backupDirectoryCount"];
  }

  v41 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v43 backupPolicy]);
  v42 = [v41 stringValue];
  [v12 setObject:v42 forKeyedSubscript:@"backupPolicy"];

  [a1 _reportStatusForEngine:v43 key:@"MBCKBackupEngine" values:v12];
}

+ (void)reportRestoreStateChangeForEngine:(id)a3 state:(unint64_t)a4 start:(id)a5 end:(id)a6
{
  v31 = a3;
  v10 = a6;
  v11 = a5;
  v12 = +[NSMutableDictionary dictionary];
  v13 = MBCKStringForRestoreState(a4);
  [v12 setObject:v13 forKeyedSubscript:@"state"];

  if ([v31 isForegroundRestore])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [v12 setObject:v14 forKeyedSubscript:@"foreground"];
  [v10 timeIntervalSinceDate:v11];
  v16 = [NSString stringWithFormat:@"%.6f", v15];
  [v12 setObject:v16 forKeyedSubscript:@"duration"];

  v17 = +[NSDateFormatter ISO8601Formatter];
  v18 = [v17 stringFromDate:v11];

  [v12 setObject:v18 forKeyedSubscript:@"start"];
  v19 = +[NSDateFormatter ISO8601Formatter];
  v20 = [v19 stringFromDate:v10];

  [v12 setObject:v20 forKeyedSubscript:@"end"];
  if ([v31 isFinished])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  [v12 setObject:v21 forKeyedSubscript:@"finished"];
  if ([v31 hasError])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  [v12 setObject:v22 forKeyedSubscript:@"hasError"];
  if ([v31 hasError])
  {
    v23 = [v31 engineError];
    v24 = MBExtractFirstMBErrorOrCKError(v23);

    v25 = [v24 domain];
    [v12 setObject:v25 forKeyedSubscript:@"errorDomain"];

    v26 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v24 code]);
    v27 = [v26 stringValue];
    [v12 setObject:v27 forKeyedSubscript:@"errorCode"];

    v28 = [v24 localizedDescription];
    [v12 setObject:v28 forKeyedSubscript:@"errorDescription"];
  }

  v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v31 backupPolicy]);
  v30 = [v29 stringValue];
  [v12 setObject:v30 forKeyedSubscript:@"backupPolicy"];

  [a1 _reportStatusForEngine:v31 key:@"MBCKRestoreEngine" values:v12];
}

@end