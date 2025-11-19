@interface MBDaemonPlugin
- (id)endedRestoreWithPolicy:(id)a3 engine:(id)a4 error:(id)a5;
- (id)endingBackupWithEngine:(id)a3;
- (id)preparingRestoreWithPolicy:(id)a3 engine:(id)a4;
- (id)startingBackupWithEngine:(id)a3;
- (void)_waitForRebootSignal;
@end

@implementation MBDaemonPlugin

- (id)startingBackupWithEngine:(id)a3
{
  if (([a3 isDeviceTransferEngine] & 1) == 0)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Starting sync spinner for backup", v5, 2u);
      _MBLog();
    }

    SBSSetStatusBarShowsSyncActivity();
  }

  return 0;
}

- (id)endingBackupWithEngine:(id)a3
{
  if (([a3 isDeviceTransferEngine] & 1) == 0)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Stopping sync spinner for backup", v5, 2u);
      _MBLog();
    }

    SBSSetStatusBarShowsSyncActivity();
  }

  return 0;
}

- (id)preparingRestoreWithPolicy:(id)a3 engine:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 isDeviceTransferEngine] & 1) != 0 || (objc_msgSend(v7, "settingsContext"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "shouldNotifySpringBoard"), v8, !v9))
  {
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Not sending notification that a restore has started", v28, 2u);
      _MBLog();
    }

    goto LABEL_14;
  }

  out_token = 0;
  *v28 = 0;
  v29 = v28;
  v30 = 0x2020000000;
  v31 = 0;
  v10 = [SBSReadyForRestoreNotification UTF8String];
  v11 = &_dispatch_main_q;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001BDC18;
  handler[3] = &unk_1003C1028;
  handler[4] = v28;
  v12 = notify_register_dispatch(v10, &out_token, &_dispatch_main_q, handler);

  if (v12)
  {
    objc_exception_throw([[MBException alloc] initWithCode:1 format:{@"notify_register_dispatch failed: %u", v12}]);
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Sending notification that a restore has started", buf, 2u);
    _MBLog();
  }

  v14 = +[MBNotificationCenter sharedNotificationCenter];
  v15 = MBBackupAgentRestoreStartedNotification;
  [v14 setState:1 forNotification:MBBackupAgentRestoreStartedNotification];

  v16 = +[MBNotificationCenter sharedNotificationCenter];
  [v16 postNotification:v15];

  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Waiting for notification from SpringBoard that it's ready for a restore", buf, 2u);
    _MBLog();
  }

  Current = CFAbsoluteTimeGetCurrent();
  v19 = (Current - CFAbsoluteTimeGetCurrent() + 90.0);
  if (v19 < 1 || (v29[24] & 1) != 0)
  {
    v20 = 0;
  }

  else
  {
    do
    {
      v24 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, v19, 0);
      v19 = (Current - CFAbsoluteTimeGetCurrent() + 90.0);
    }

    while (v19 >= 1 && (v29[24] & 1) == 0);
    v20 = v24 == kCFRunLoopRunTimedOut;
  }

  v25 = +[MBNotificationCenter sharedNotificationCenter];
  [v25 setState:0 forNotification:v15];

  notify_cancel(out_token);
  if (!v20)
  {
    self->_restoreStarted = 1;
    _Block_object_dispose(v28, 8);
LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  v22 = [MBError errorWithCode:1 format:@"Timeout waiting for SpringBoard notification from SpringBoard that it's ready for a restore"];
  _Block_object_dispose(v28, 8);
LABEL_15:

  return v22;
}

- (void)_waitForRebootSignal
{
  v2 = 0;
  for (i = 0; ; ++i)
  {
    v10 = 0;
    v4 = [MBPersona personalPersonaWithError:0, v8, v9];
    v5 = [v4 getBooleanValueForKey:@"RestoreShouldReboot" keyExists:&v10];
    if (!v10 || v5 != 0)
    {
      break;
    }

    if (!(v2 + 24 * (i / 0x18)))
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v12 = @"com.apple.MobileBackup";
        v13 = 2112;
        v14 = @"RestoreShouldReboot";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not rebooting after restore because %@ %@ preference is set - unset this preference to finish the restore", buf, 0x16u);
        v8 = @"com.apple.MobileBackup";
        v9 = @"RestoreShouldReboot";
        _MBLog();
      }
    }

    sleep(5u);

    --v2;
  }
}

- (id)endedRestoreWithPolicy:(id)a3 engine:(id)a4 error:(id)a5
{
  v6 = a4;
  [(MBDaemonPlugin *)self _waitForRebootSignal];
  if (([v6 isDeviceTransferEngine] & 1) == 0 && self->_restoreStarted && (objc_msgSend(v6, "settingsContext"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "shouldNotifySpringBoard"), v7, v8))
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Sending notification that a restore has ended", buf, 2u);
      _MBLog();
    }

    v10 = +[MBNotificationCenter sharedNotificationCenter];
    [v10 postNotification:MBBackupAgentRestoreEndedNotification];
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Not sending notification that a restore has ended", v12, 2u);
      _MBLog();
    }
  }

  return 0;
}

@end