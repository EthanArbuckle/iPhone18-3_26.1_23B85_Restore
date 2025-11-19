@interface HACycleTrackingDiagnosticExtension
- (id)attachmentList;
- (id)attachmentsForParameters:(id)a3;
- (void)enabledHealthSensitiveLogging;
@end

@implementation HACycleTrackingDiagnosticExtension

- (void)enabledHealthSensitiveLogging
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.HealthKit.SensitiveLogsTemporaryEnablement"];
  v3 = [NSDate dateWithTimeIntervalSinceNow:1800.0];
  v4 = [v2 objectForKey:@"HKShowSensitiveLogsUntilDate"];
  if (v4 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v3 timeIntervalSinceDate:v4], v5 <= 0.0)))
  {
    v7 = sub_100000E20();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = @"HKShowSensitiveLogsUntilDate";
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "not setting %{public}@ because the current value is %{public}@", &v8, 0x16u);
    }
  }

  else
  {
    v6 = sub_100000E20();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = @"HKShowSensitiveLogsUntilDate";
      v10 = 2114;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setting %{public}@ to %{public}@", &v8, 0x16u);
    }

    [v2 setObject:v3 forKey:@"HKShowSensitiveLogsUntilDate"];
  }
}

- (id)attachmentList
{
  v3 = sub_100000E20();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "attachmentList called: calling attachmentsForParameters with empty dictionary", v6, 2u);
  }

  v4 = [(HACycleTrackingDiagnosticExtension *)self attachmentsForParameters:&__NSDictionary0__struct];

  return v4;
}

- (id)attachmentsForParameters:(id)a3
{
  v4 = a3;
  v5 = sub_100000E20();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "attachments for parameters: %{public}@", buf, 0xCu);
  }

  v6 = [v4 objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  if ((([v6 isEqualToString:@"com.apple.taptoradard"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"com.apple.TapToRadar")) && (objc_msgSend(v4, "objectForKeyedSubscript:", @"DEExtensionAttachmentsParamConsentProvidedKey"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, !v8))
  {
    v19 = &__NSArray0__struct;
  }

  else
  {
    v9 = sub_1000011E8("com.apple.HealthAlgorithms.DayStreamProcessor.WriteToJson");
    v10 = sub_1000011E8("com.apple.HealthAlgorithms.HistoricalAnalyzer.WriteToJson");
    [(HACycleTrackingDiagnosticExtension *)self enabledHealthSensitiveLogging];
    v11 = objc_opt_new();
    v12 = [[HKMenstrualCyclesDiagnostics alloc] initWithHealthStore:v11];
    [v12 triggerAnalysisForDiagnosticsWithCompletion:&stru_100004158];
    v13 = 99;
    do
    {
      usleep(0x186A0u);
      *buf = 0;
      v21 = 0;
      notify_get_state(v9, buf);
      notify_get_state(v10, &v21);
      if (*buf | v21)
      {
        v14 = v13 == 0;
      }

      else
      {
        v14 = 1;
      }

      --v13;
    }

    while (!v14);
    notify_cancel(v9);
    notify_cancel(v10);
    LOBYTE(v21) = 0;
    v15 = +[NSFileManager defaultManager];
    v16 = [v15 fileExistsAtPath:@"/var/mobile/Library/Logs/CycleTracking" isDirectory:&v21];
    v17 = v21;

    if (v16 && (v17 & 1) != 0)
    {
      v18 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/CycleTracking"];
      [v18 setShouldCompress:&__kCFBooleanTrue];
      v22 = v18;
      v19 = [NSArray arrayWithObjects:&v22 count:1];
    }

    else
    {
      v18 = sub_100000E20();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = @"/var/mobile/Library/Logs/CycleTracking";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "logPath: %{public}@ does not exist. Returning an empty list.", buf, 0xCu);
      }

      v19 = &__NSArray0__struct;
    }
  }

  return v19;
}

@end