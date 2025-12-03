@interface MBPowerLog
+ (void)reportBackupStateChangeForEngine:(id)engine state:(unint64_t)state start:(id)start end:(id)end;
@end

@implementation MBPowerLog

+ (void)reportBackupStateChangeForEngine:(id)engine state:(unint64_t)state start:(id)start end:(id)end
{
  engineCopy = engine;
  startCopy = start;
  endCopy = end;
  v11 = +[MBBehaviorOptions sharedOptions];
  usePowerLog = [v11 usePowerLog];

  if ((usePowerLog & 1) == 0)
  {
    if ([engineCopy hasError])
    {
      engineError = [engineCopy engineError];
      v14 = MBExtractFirstMBErrorOrCKError(engineError);
    }

    else
    {
      v14 = 0;
    }

    v15 = +[NSMutableDictionary dictionary];
    v16 = MBCKStringForBackupState();
    [v15 setObject:v16 forKeyedSubscript:@"state"];

    [v15 setObject:startCopy forKeyedSubscript:@"start"];
    [v15 setObject:endCopy forKeyedSubscript:@"end"];
    if ([engineCopy isFinished])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    [v15 setObject:v17 forKeyedSubscript:@"finished"];
    if ([engineCopy hasError])
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
      domain = [v14 domain];
      [v15 setObject:domain forKeyedSubscript:@"errorDomain"];

      v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 code]);
      stringValue = [v20 stringValue];
      [v15 setObject:stringValue forKeyedSubscript:@"errorCode"];
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