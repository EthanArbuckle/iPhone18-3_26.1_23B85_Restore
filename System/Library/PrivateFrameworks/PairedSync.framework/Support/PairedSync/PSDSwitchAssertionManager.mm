@interface PSDSwitchAssertionManager
- (PSDSwitchAssertionManager)init;
- (void)dealloc;
- (void)scheduler:(id)a3 didClearSyncSession:(id)a4 withBlock:(id)a5;
- (void)scheduler:(id)a3 willStartSyncSession:(id)a4;
@end

@implementation PSDSwitchAssertionManager

- (PSDSwitchAssertionManager)init
{
  v7.receiver = self;
  v7.super_class = PSDSwitchAssertionManager;
  v2 = [(PSDSwitchAssertionManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    assertion = v2->_assertion;
    v2->_assertion = 0;

    v5 = +[PSDScheduler sharedScheduler];
    [v5 addSchedulerObserver:v3];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[PSDScheduler sharedScheduler];
  [v3 removeSchedulerObserver:self];

  v4.receiver = self;
  v4.super_class = PSDSwitchAssertionManager;
  [(PSDSwitchAssertionManager *)&v4 dealloc];
}

- (void)scheduler:(id)a3 willStartSyncSession:(id)a4
{
  v5 = a4;
  if ([v5 syncSessionType] != 1)
  {
    v6 = psy_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = psy_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PSDSwitchAssertionManager: Not a reunion sync, enabling switch assertion", buf, 2u);
      }
    }

    v9 = +[PSYRegistrySingleton registry];
    v10 = [v5 pairingIdentifier];
    v11 = [v9 deviceForPairingID:v10];

    v12 = psy_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      if (v13)
      {
        v14 = psy_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PSDSwitchAssertionManager: Found NRDevice for sync", buf, 2u);
        }
      }

      v15 = +[PSYRegistrySingleton registry];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100018D8C;
      v16[3] = &unk_10002CEB0;
      v16[4] = self;
      [v15 setActivePairedDevice:v11 resultsCallback:v16];
    }

    else
    {
      if (!v13)
      {
        goto LABEL_13;
      }

      v15 = psy_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PSDSwitchAssertionManager: Could not find NRDevice for sync", buf, 2u);
      }
    }

LABEL_13:
  }
}

- (void)scheduler:(id)a3 didClearSyncSession:(id)a4 withBlock:(id)a5
{
  v6 = a5;
  if (self->_assertion)
  {
    v7 = psy_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = psy_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PSDSwitchAssertionManager: Releasing switch assertion", v11, 2u);
      }
    }

    assertion = self->_assertion;
    self->_assertion = 0;
  }

  v6[2](v6);
}

@end