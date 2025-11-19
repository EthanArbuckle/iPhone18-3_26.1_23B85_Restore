@interface MBDaemon
+ (MBDaemon)sharedDaemon;
- (BOOL)_shouldIdleExit;
- (MBDaemon)init;
- (void)_handleSignal:(int)a3;
- (void)_holdWorkAssertionWithDescription:(const char *)a3;
- (void)_releaseWorkAssertionWithDescription:(const char *)a3;
- (void)_resetIdleTimer;
- (void)_scheduleIdleTimer;
- (void)holdWorkAssertion:(SEL)a3;
- (void)holdWorkAssertionWithClass:(Class)a3;
- (void)holdingWorkAssertionWithDescription:(id)a3 forScope:(id)a4;
- (void)reboot:(BOOL)a3;
- (void)releaseWorkAssertion:(SEL)a3;
- (void)releaseWorkAssertionWithClass:(Class)a3;
- (void)resetIdleTimer;
- (void)run;
- (void)setupSignalHandlers;
@end

@implementation MBDaemon

+ (MBDaemon)sharedDaemon
{
  if (qword_100421888 != -1)
  {
    dispatch_once(&qword_100421888, &stru_1003BFFB0);
  }

  v3 = qword_100421880;

  return v3;
}

- (MBDaemon)init
{
  v9.receiver = self;
  v9.super_class = MBDaemon;
  v2 = [(MBDaemon *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(Name, v5);
    assertionsQueue = v2->_assertionsQueue;
    v2->_assertionsQueue = v6;
  }

  return v2;
}

- (void)run
{
  v2 = +[NSRunLoop mainRunLoop];
  [v2 run];
}

- (void)reboot:(BOOL)a3
{
  v3 = a3;
  v4 = MKBKeyBagKeyStashCommit();
  v5 = MBGetDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v16) = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "=daemon= Unable to commit stash bag: %d", buf, 8u);
      goto LABEL_6;
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "=daemon= Committed stash bag", buf, 2u);
LABEL_6:
    _MBLog();
  }

  v14 = 0;
  [MBPersona personalPersonaWithError:0];
  v7 = [objc_claimAutoreleasedReturnValue() getBooleanValueForKey:@"RestoreShouldReboot" keyExists:&v14];
  if (v14 && !v7)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = @"com.apple.MobileBackup";
      v17 = 2112;
      v18 = @"RestoreShouldReboot";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=daemon= Not rebooting after restore because %@ %@ preference is set", buf, 0x16u);
      _MBLog();
    }

    _MBLogFlushDeprecated();
    MBLogStashLogs();
    v9 = dispatch_semaphore_create(0);
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    abort();
  }

  _MBLogFlushDeprecated();
  MBLogStashLogs();
  v10 = MBGetDefaultLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v11)
    {
      goto LABEL_18;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=daemon= Doing a full reboot", buf, 2u);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_18;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=daemon= Doing a Userspace reboot", buf, 2u);
  }

  _MBLog();
LABEL_18:

  v12 = reboot3();
  if (v12)
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v16) = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=daemon= reboot3 failed: %d", buf, 8u);
      _MBLog();
    }
  }

  exit(v12 != 0);
}

- (void)_handleSignal:(int)a3
{
  if (a3 <= 14)
  {
    if (a3 == 1)
    {
      v4 = MBGetDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "=daemon= SIGHUP", buf, 2u);
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    if (a3 == 3)
    {
      v4 = MBGetDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "=daemon= SIGQUIT", buf, 2u);
        goto LABEL_16;
      }

LABEL_17:

      return;
    }

    goto LABEL_18;
  }

  if (a3 == 15)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=daemon= SIGTERM", buf, 2u);
      _MBLog();
    }

    MBExit(1);
  }

  if (a3 != 30)
  {
    if (a3 == 31)
    {
      v4 = MBGetDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "=daemon= SIGUSR2", buf, 2u);
LABEL_16:
        _MBLog();
        goto LABEL_17;
      }

      goto LABEL_17;
    }

LABEL_18:
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v8 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "=daemon= Unhandled signal %d", buf, 8u);
      _MBLog();
    }
  }
}

- (void)setupSignalHandlers
{
  v3 = dispatch_get_global_queue(21, 0);
  for (i = 0; i != 5; ++i)
  {
    v5 = dword_1002B9F2C[i];
    v6 = dispatch_source_create(&_dispatch_source_type_signal, v5, 0, v3);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100169598;
    v9[3] = &unk_1003BFFD8;
    v9[4] = self;
    v10 = v5;
    dispatch_source_set_event_handler(v6, v9);
    dispatch_resume(v6);
    v7 = qword_100421858[i];
    qword_100421858[i] = v6;
    v8 = v6;

    signal(v5, 1);
  }
}

- (BOOL)_shouldIdleExit
{
  if (BYSetupAssistantNeedsToRun())
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "=daemon= Not idle exiting while Setup is still running", buf, 2u);
      _MBLog();
    }

    return 0;
  }

  else
  {
    v7 = 0;
    v4 = [MBPersona personalPersonaWithError:0];
    if ([v4 getBooleanValueForKey:@"BackupShouldIdleExit" keyExists:&v7])
    {
      v5 = 1;
    }

    else
    {
      v5 = v7 == 0;
    }

    v3 = v5;
  }

  return v3;
}

- (void)_scheduleIdleTimer
{
  dispatch_assert_queue_V2(self->_assertionsQueue);
  if (MBIsRunningInDaemon())
  {
    idleTimer = self->_idleTimer;
    if (idleTimer)
    {
      dispatch_source_cancel(idleTimer);
      v4 = self->_idleTimer;
      self->_idleTimer = 0;
    }

    if (qword_100421898 != -1)
    {
      dispatch_once(&qword_100421898, &stru_1003BFFF8);
    }

    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_assertionsQueue);
    v6 = self->_idleTimer;
    self->_idleTimer = v5;

    v7 = self->_idleTimer;
    v8 = dispatch_time(0, 1000000000 * qword_100421890);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(&location, self);
    v9 = self->_idleTimer;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001698D4;
    v10[3] = &unk_1003BE6A0;
    objc_copyWeak(&v11, &location);
    dispatch_source_set_event_handler(v9, v10);
    dispatch_resume(self->_idleTimer);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)_resetIdleTimer
{
  dispatch_assert_queue_V2(self->_assertionsQueue);
  idleTimer = self->_idleTimer;
  if (idleTimer)
  {
    dispatch_source_cancel(idleTimer);
    v4 = self->_idleTimer;
    self->_idleTimer = 0;
  }

  if (!self->_assertions)
  {

    [(MBDaemon *)self _scheduleIdleTimer];
  }
}

- (void)resetIdleTimer
{
  dispatch_assert_queue_not_V2(self->_assertionsQueue);
  assertionsQueue = self->_assertionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100169A6C;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_sync(assertionsQueue, block);
}

- (void)_holdWorkAssertionWithDescription:(const char *)a3
{
  dispatch_assert_queue_V2(self->_assertionsQueue);
  ++self->_assertions;
  idleTimer = self->_idleTimer;
  if (idleTimer)
  {
    dispatch_source_cancel(idleTimer);
    v6 = self->_idleTimer;
    self->_idleTimer = 0;
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    assertions = self->_assertions;
    *buf = 136315394;
    v11 = a3;
    v12 = 1024;
    v13 = assertions;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=daemon= holdWorkAssertion: %s, %d", buf, 0x12u);
    v9 = self->_assertions;
    _MBLog();
  }
}

- (void)holdWorkAssertionWithClass:(Class)a3
{
  dispatch_assert_queue_not_V2(self->_assertionsQueue);
  assertionsQueue = self->_assertionsQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100169C04;
  v6[3] = &unk_1003C0020;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(assertionsQueue, v6);
}

- (void)holdWorkAssertion:(SEL)a3
{
  dispatch_assert_queue_not_V2(self->_assertionsQueue);
  assertionsQueue = self->_assertionsQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100169CC8;
  v6[3] = &unk_1003BDAE8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(assertionsQueue, v6);
}

- (void)_releaseWorkAssertionWithDescription:(const char *)a3
{
  assertions = self->_assertions;
  if (!assertions)
  {
    if (MBIsInternalInstall())
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v12 = a3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "=daemon= Over-released work assertion: %s", buf, 0xCu);
        _MBLog();
      }
    }

    objc_exception_throw([[MBException alloc] initWithCode:1 format:@"Over-released work assertion"]);
  }

  v6 = assertions - 1;
  self->_assertions = v6;
  if (!v6)
  {
    [(MBDaemon *)self _scheduleIdleTimer];
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = self->_assertions;
    *buf = 136315394;
    v12 = a3;
    v13 = 1024;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=daemon= releaseWorkAssertion: %s, %d", buf, 0x12u);
    v10 = self->_assertions;
    _MBLog();
  }
}

- (void)releaseWorkAssertionWithClass:(Class)a3
{
  assertionsQueue = self->_assertionsQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100169F04;
  v4[3] = &unk_1003C0020;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(assertionsQueue, v4);
}

- (void)releaseWorkAssertion:(SEL)a3
{
  assertionsQueue = self->_assertionsQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100169FB4;
  v4[3] = &unk_1003BDAE8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(assertionsQueue, v4);
}

- (void)holdingWorkAssertionWithDescription:(id)a3 forScope:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_assertionsQueue);
  assertionsQueue = self->_assertionsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016A15C;
  block[3] = &unk_1003BC060;
  block[4] = self;
  v9 = v6;
  v15 = v9;
  dispatch_sync(assertionsQueue, block);
  v7[2](v7);
  v10 = self->_assertionsQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10016A19C;
  v12[3] = &unk_1003BC060;
  v12[4] = self;
  v11 = v9;
  v13 = v11;
  dispatch_async(v10, v12);
}

@end