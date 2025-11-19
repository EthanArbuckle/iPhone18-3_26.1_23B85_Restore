@interface MBPowerLog
+ (void)reportBackupStateChangeForEngine:(id)a3 state:(unint64_t)a4 start:(id)a5 end:(id)a6;
@end

@implementation MBPowerLog

+ (void)reportBackupStateChangeForEngine:(id)a3 state:(unint64_t)a4 start:(id)a5 end:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v11 = +[MBBehaviorOptions sharedOptions];
  v12 = [v11 usePowerLog];

  if ((v12 & 1) == 0)
  {
    if ([v8 hasError])
    {
      v13 = [v8 engineError];
      v14 = MBExtractFirstMBErrorOrCKError(v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = +[NSMutableDictionary dictionary];
    v16 = MBCKStringForBackupState();
    [v15 setObject:v16 forKeyedSubscript:@"state"];

    [v15 setObject:v9 forKeyedSubscript:@"start"];
    [v15 setObject:v10 forKeyedSubscript:@"end"];
    if ([v8 isFinished])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    [v15 setObject:v17 forKeyedSubscript:@"finished"];
    if ([v8 hasError])
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    [v15 setObject:v18 forKeyedSubscript:@"hasError"];
    if (v14)
    {
      v19 = [v14 domain];
      [v15 setObject:v19 forKeyedSubscript:@"errorDomain"];

      v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 code]);
      v21 = [v20 stringValue];
      [v15 setObject:v21 forKeyedSubscript:@"errorCode"];
    }

    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v24 = @"BackupEvents";
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Sending to PowerLog: %@ %@", buf, 0x16u);
      _MBLog();
    }

    PLLogRegisteredEvent();
  }
}

@end