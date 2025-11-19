@interface DSDiagnosticsSessionAvailabilityService
- (BOOL)_getHasActiveDiagnosticsSession;
- (id)_enhancedLoggingStatusOverride;
- (id)_sessionStatusOverride;
- (void)_getASTIdentitiesWithCompletionHandler:(id)a3;
- (void)_getASTSessionStatusForTicketNumber:(id)a3 timeout:(id)a4 completion:(id)a5;
- (void)_getHasActiveEnhancedLoggingSessionWithCompletionHandler:(id)a3;
- (void)getEnhancedLoggingStatusWithCompletionHandler:(id)a3;
- (void)getSessionStatusWithTicketNumber:(id)a3 timeout:(id)a4 completionHandler:(id)a5;
@end

@implementation DSDiagnosticsSessionAvailabilityService

- (void)getSessionStatusWithTicketNumber:(id)a3 timeout:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DSDiagnosticsSessionAvailabilityService *)self _sessionStatusOverride];
  if (v11)
  {
    v10[2](v10, v11, 0);
  }

  else
  {
    v12 = +[NSXPCConnection currentConnection];
    v13 = [v12 processIdentifier];

    v14 = DSLogSessionAvailability();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v22 = "[DSDiagnosticsSessionAvailabilityService getSessionStatusWithTicketNumber:timeout:completionHandler:]";
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      v27 = 1024;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s ticketNumber: %@ timeout: %@ client PID: %d", buf, 0x26u);
    }

    v15 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000015B0;
    block[3] = &unk_1000144E0;
    block[4] = self;
    v17 = v8;
    v18 = v9;
    v20 = v13;
    v19 = v10;
    dispatch_async(v15, block);
  }
}

- (void)_getASTSessionStatusForTicketNumber:(id)a3 timeout:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DSLogSessionAvailability();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B06C(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100001D7C;
  v22[3] = &unk_100014530;
  v23 = v9;
  v24 = v8;
  v25 = v10;
  v19 = v10;
  v20 = v8;
  v21 = v9;
  [(DSDiagnosticsSessionAvailabilityService *)self _getASTIdentitiesWithCompletionHandler:v22];
}

- (BOOL)_getHasActiveDiagnosticsSession
{
  v2 = DSLogSessionAvailability();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B0E4(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  CFPreferencesAppSynchronize(@"com.apple.Diagnostics");
  v10 = CFPreferencesCopyAppValue(@"InCurrentSession", @"com.apple.Diagnostics");
  v11 = DSLogSessionAvailability();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = [v10 BOOLValue];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Active Diagnostics session: %d", v14, 8u);
  }

  v12 = [v10 BOOLValue];
  return v12;
}

- (void)_getHasActiveEnhancedLoggingSessionWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = DSLogSessionAvailability();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B15C(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = +[ELSManager sharedManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100002134;
  v14[3] = &unk_100014558;
  v15 = v3;
  v13 = v3;
  [v12 refreshWithCompletion:v14];
}

- (void)_getASTIdentitiesWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableSet set];
  v5 = [NSMutableSet setWithObjects:objc_opt_class(), 0];
  [v5 addObject:objc_opt_class()];
  v6 = +[CBSUtilities isCheckerBoardActive];
  if ((BYSetupAssistantNeedsToRun() & 1) != 0 || v6 & 1 | ((BYSetupAssistantHasCompletedInitialRun() & 1) == 0))
  {
    v7 = DSLogSessionAvailability();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Only reporting serial number for local device and physically connected accessories because Buddy is not finished", buf, 2u);
    }
  }

  else
  {
    [v5 addObject:objc_opt_class()];
    [v5 addObject:objc_opt_class()];
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [DADeviceObserverAggregator aggregatorWithObserverClasses:v5];
  v10 = DSLogSessionAvailability();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Discovering devices...", buf, 2u);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100002494;
  v13[3] = &unk_1000145A8;
  v11 = v4;
  v14 = v11;
  v12 = v3;
  v15 = v12;
  [v9 discoverAllDevicesWithCompletionHandler:v13];

  objc_autoreleasePoolPop(v8);
}

- (void)getEnhancedLoggingStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(DSDiagnosticsSessionAvailabilityService *)self _enhancedLoggingStatusOverride];
  if (!v5)
  {
    v6 = +[ELSManager sharedManager];
    v7 = [v6 snapshot];
    v8 = [v7 status];

    if (v8 <= 9)
    {
      if (((1 << v8) & 0x3CE) != 0)
      {
        v9 = v4[2];
        v10 = &off_100015358;
LABEL_13:
        v9(v4, v10);
        goto LABEL_14;
      }

      if (!v8)
      {
LABEL_12:
        v9 = v4[2];
        v10 = &off_100015310;
        goto LABEL_13;
      }

      if (v8 == 5)
      {
        v9 = v4[2];
        v10 = &off_100015340;
        goto LABEL_13;
      }
    }

    v11 = DSLogSessionAvailability();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_10000B1D4(v8, v11);
    }

    goto LABEL_12;
  }

  (v4[2])(v4, v5);
LABEL_14:
}

- (id)_sessionStatusOverride
{
  if (os_variant_has_internal_content())
  {
    v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.DiagnosticsSessionAvailability"];
    v3 = [v2 valueForKey:@"sessionStatus"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_enhancedLoggingStatusOverride
{
  if (os_variant_has_internal_content())
  {
    v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.DiagnosticsSessionAvailability"];
    v3 = [v2 valueForKey:@"enhancedLoggingStatus"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end