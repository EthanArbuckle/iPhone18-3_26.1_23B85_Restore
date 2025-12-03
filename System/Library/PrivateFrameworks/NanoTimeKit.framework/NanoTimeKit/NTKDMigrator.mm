@interface NTKDMigrator
+ (void)runPostMigrator;
+ (void)runPreMigrator;
@end

@implementation NTKDMigrator

+ (void)runPreMigrator
{
  if (qword_100066BB0 != -1)
  {
    sub_10003DF14();
  }

  if (byte_100066BB8 == 1)
  {
    v2 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "beginning pre migration", buf, 2u);
    }

    v3 = +[NTKDSiriDataSourcesObserver sharedInstance];
    [v3 updateDeviceDataSourcesInNanoPreferences];

    v4 = +[NTKSiriDefaults sharedInstance];
    [v4 migrateIfNecessary];

    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "pre migration complete", v6, 2u);
    }
  }
}

+ (void)runPostMigrator
{
  if (qword_100066BB0 != -1)
  {
    sub_10003DF14();
  }

  if (byte_100066BB8 == 1)
  {
    v2 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "beginning post migration", buf, 2u);
    }

    v3 = +[CLKDevice currentDevice];
    isRunningNapiliGMOrLater = [v3 isRunningNapiliGMOrLater];

    v5 = _NTKLoggingObjectForDomain();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (isRunningNapiliGMOrLater)
    {
      if (v6)
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Skipping snapshot migration - Bridge manages it", v10, 2u);
      }
    }

    else
    {
      if (v6)
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating all snapshots due to migration", v11, 2u);
      }

      +[NTKDFaceSnapshotCoordinator updateAllSnapshots];
    }

    v7 = NTKBuildVersion();
    CFPreferencesSetAppValue(@"LastSystemVersionMigrated", v7, NTKFacePreferencesDomain);
    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "post migration complete", v9, 2u);
    }
  }
}

@end