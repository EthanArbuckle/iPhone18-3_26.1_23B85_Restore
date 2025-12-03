@interface MBBackgroundRestoreProgressMonitor
- (BOOL)_firePromptForCellular;
- (BOOL)_isContinuouslyThermallyThrottled;
- (MBBackgroundRestoreProgressMonitor)initWithAccount:(id)account serviceManager:(id)manager thermalPressureMonitor:(id)monitor snapshotUUID:(id)d;
- (MBCKManager)serviceManager;
- (unint64_t)estimatedBackgroundRestoreSizeWithError:(id *)error;
- (void)_cancel;
- (void)_cancelBackgroundRestoreCellularAccessChangedNotification;
- (void)_cancelMonitoringForSetupAssistantFinished;
- (void)_cancelNetworkAccessTimer;
- (void)_cancelRestoreInProgressFollowUpTimer;
- (void)_cancelRestoreTelemetryHeartbeatTimer;
- (void)_cancelThermalPressureNotifications;
- (void)_clearRestoreInProgressFollowUp;
- (void)_firePromptForWiFi;
- (void)_handleNetworkAccessTimer;
- (void)_postRestoreInProgressFollowUpWithReason:(id)reason;
- (void)_postRestoreTelemetryHeartbeat;
- (void)_registerForBackgroundRestoreCellularAccessChangedNotification;
- (void)_registerForThermalPressureNotifications;
- (void)_setupAssistantDidFinish;
- (void)_startMonitoringForSetupAssistantFinished;
- (void)_startNetworkAccessTimer;
- (void)_startRestoreInProgressFollowUpTimer;
- (void)_startRestoreTelemetryHeartbeatTimer;
- (void)cancel;
- (void)dealloc;
- (void)handleNetworkPathUpdateWithType:(int)type state:(id)state;
- (void)start;
- (void)thermalPressureLevelDidChange:(id)change;
@end

@implementation MBBackgroundRestoreProgressMonitor

- (MBBackgroundRestoreProgressMonitor)initWithAccount:(id)account serviceManager:(id)manager thermalPressureMonitor:(id)monitor snapshotUUID:(id)d
{
  accountCopy = account;
  managerCopy = manager;
  monitorCopy = monitor;
  dCopy = d;
  if (!managerCopy)
  {
    __assert_rtn("[MBBackgroundRestoreProgressMonitor initWithAccount:serviceManager:thermalPressureMonitor:snapshotUUID:]", "MBBackgroundRestoreProgressMonitor.m", 59, "serviceManager");
  }

  v15 = dCopy;
  v29.receiver = self;
  v29.super_class = MBBackgroundRestoreProgressMonitor;
  v16 = [(MBBackgroundRestoreProgressMonitor *)&v29 init];
  v17 = v16;
  if (v16)
  {
    atomic_store(0, &v16->_setupAssistantFinished);
    atomic_store(0, &v16->_cancelled);
    objc_storeStrong(&v16->_account, account);
    objc_storeWeak(&v17->_serviceManager, managerCopy);
    v18 = objc_opt_new();
    restoreNetworkAccessPrompt = v17->_restoreNetworkAccessPrompt;
    v17->_restoreNetworkAccessPrompt = v18;

    v20 = [[MBBackgroundRestoreSizeEstimator alloc] initWithAccount:accountCopy serviceManager:managerCopy snapshotUUID:v15];
    estimator = v17->_estimator;
    v17->_estimator = v20;

    *&v17->_cellularAccessToken = -1;
    v17->_wasThermallyThrottled = 0;
    v22 = objc_opt_class();
    Name = class_getName(v22);
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_attr_make_with_qos_class(v24, QOS_CLASS_UTILITY, 0);
    v26 = dispatch_queue_create(Name, v25);
    queue = v17->_queue;
    v17->_queue = v26;

    objc_storeStrong(&v17->_thermalPressureMonitor, monitor);
  }

  return v17;
}

- (void)dealloc
{
  [(MBBackgroundRestoreProgressMonitor *)self _cancel];
  v3.receiver = self;
  v3.super_class = MBBackgroundRestoreProgressMonitor;
  [(MBBackgroundRestoreProgressMonitor *)&v3 dealloc];
}

- (void)_cancel
{
  [(MBBackgroundRestoreProgressMonitor *)self _cancelMonitoringForSetupAssistantFinished];
  [(MBBackgroundRestoreProgressMonitor *)self _cancelBackgroundRestoreCellularAccessChangedNotification];
  [(MBBackgroundRestoreProgressMonitor *)self _cancelNetworkAccessTimer];
  [(MBBackgroundRestoreProgressMonitor *)self _cancelThermalPressureNotifications];
  [(MBBackgroundRestoreProgressMonitor *)self _cancelRestoreInProgressFollowUpTimer];

  [(MBBackgroundRestoreProgressMonitor *)self _cancelRestoreTelemetryHeartbeatTimer];
}

- (void)cancel
{
  if ((atomic_exchange(&self->_cancelled, 1u) & 1) == 0)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancelling background restore progress monitor", buf, 2u);
      _MBLog();
    }

    [(MBBackgroundRestoreProgressMonitor *)self _clearRestoreInProgressFollowUp];
    queue = [(MBBackgroundRestoreProgressMonitor *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B9964;
    block[3] = &unk_1003BC0B0;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)start
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting background restore progress monitor", buf, 2u);
    _MBLog();
  }

  queue = [(MBBackgroundRestoreProgressMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B9A50;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_startMonitoringForSetupAssistantFinished
{
  queue = [(MBBackgroundRestoreProgressMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = atomic_load(&self->_cancelled);
  if ((v4 & 1) == 0)
  {
    queue2 = [(MBBackgroundRestoreProgressMonitor *)self queue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue2);

    v7 = dispatch_time(0, 0);
    dispatch_source_set_timer(v6, v7, 0x6FC23AC00uLL, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1001B9CC8;
    handler[3] = &unk_1003BC0B0;
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    [(MBBackgroundRestoreProgressMonitor *)self setSetupAssistantTimer:v6];
    dispatch_resume(v6);
    v8 = BYSetupAssistantFinishedDarwinNotification;
    uTF8String = [v8 UTF8String];
    queue3 = [(MBBackgroundRestoreProgressMonitor *)self queue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001B9D58;
    v14[3] = &unk_1003C0ED0;
    v11 = v8;
    v15 = v11;
    selfCopy = self;
    v12 = notify_register_dispatch(uTF8String, &self->_setupAssistantFinishedToken, queue3, v14);

    if (v12)
    {
      self->_setupAssistantFinishedToken = -1;
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v19 = v11;
        v20 = 1024;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "notify_register_dispatch(%{public}@) failed: %u", buf, 0x12u);
        _MBLog();
      }
    }
  }
}

- (void)_cancelMonitoringForSetupAssistantFinished
{
  setupAssistantFinishedToken = self->_setupAssistantFinishedToken;
  self->_setupAssistantFinishedToken = -1;
  if (setupAssistantFinishedToken != -1)
  {
    notify_cancel(setupAssistantFinishedToken);
  }

  source = [(MBBackgroundRestoreProgressMonitor *)self setupAssistantTimer];
  [(MBBackgroundRestoreProgressMonitor *)self setSetupAssistantTimer:0];
  v4 = source;
  if (source)
  {
    dispatch_source_cancel(source);
    v4 = source;
  }
}

- (void)_setupAssistantDidFinish
{
  if ((atomic_exchange(&self->_setupAssistantFinished, 1u) & 1) == 0)
  {
    if (MBIsInternalInstall())
    {
      persona = [(MBServiceAccount *)self->_account persona];
      [MBRestoreCloudFormatPolicy promptTTRIfFileListForegroundRestoreFailed:persona];
    }

    [(MBBackgroundRestoreProgressMonitor *)self _cancelMonitoringForSetupAssistantFinished];
    serviceManager = [(MBBackgroundRestoreProgressMonitor *)self serviceManager];
    if (!serviceManager)
    {
      __assert_rtn("[MBBackgroundRestoreProgressMonitor _setupAssistantDidFinish]", "MBBackgroundRestoreProgressMonitor.m", 159, "serviceManager");
    }

    v5 = serviceManager;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001B9FA4;
    v6[3] = &unk_1003C0F20;
    v6[4] = self;
    [serviceManager fetchNetworkConnectivityWithBlock:v6];
  }
}

- (void)handleNetworkPathUpdateWithType:(int)type state:(id)state
{
  v4 = atomic_load(&self->_setupAssistantFinished);
  if (v4)
  {
    queue = [(MBBackgroundRestoreProgressMonitor *)self queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001BA228;
    v9[3] = &unk_1003BDAE8;
    typeCopy = type;
    stateCopy = state;
    v9[4] = self;
    dispatch_async(queue, v9);
  }
}

- (void)_cancelNetworkAccessTimer
{
  restoreNetworkAccessPrompt = [(MBBackgroundRestoreProgressMonitor *)self restoreNetworkAccessPrompt];
  [restoreNetworkAccessPrompt cancel];

  v4 = self->_networkAccessTimer;
  networkAccessTimer = self->_networkAccessTimer;
  self->_networkAccessTimer = 0;

  if (v4)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cancelling prompt timer", v7, 2u);
      _MBLog();
    }

    dispatch_source_cancel(v4);
  }
}

- (void)_startNetworkAccessTimer
{
  queue = [(MBBackgroundRestoreProgressMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  [(MBBackgroundRestoreProgressMonitor *)self _cancelNetworkAccessTimer];
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting prompt timer", buf, 2u);
    _MBLog();
  }

  queue2 = [(MBBackgroundRestoreProgressMonitor *)self queue];
  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue2);

  v7 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(buf, self);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001BA570;
  handler[3] = &unk_1003BE6A0;
  objc_copyWeak(&v11, buf);
  dispatch_source_set_event_handler(v6, handler);
  networkAccessTimer = self->_networkAccessTimer;
  self->_networkAccessTimer = v6;
  v9 = v6;

  dispatch_resume(v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)_handleNetworkAccessTimer
{
  queue = [(MBBackgroundRestoreProgressMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  [(MBBackgroundRestoreProgressMonitor *)self _cancelNetworkAccessTimer];
  serviceManager = [(MBBackgroundRestoreProgressMonitor *)self serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBBackgroundRestoreProgressMonitor _handleNetworkAccessTimer]", "MBBackgroundRestoreProgressMonitor.m", 234, "serviceManager");
  }

  v5 = serviceManager;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001BA6E8;
  v6[3] = &unk_1003C0F20;
  v6[4] = self;
  [serviceManager fetchNetworkConnectivityWithBlock:v6];
}

- (void)_firePromptForWiFi
{
  v2 = atomic_load(&self->_cancelled);
  if ((v2 & 1) == 0)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to fire WiFi prompt", v6, 2u);
      _MBLog();
    }

    restoreNetworkAccessPrompt = [(MBBackgroundRestoreProgressMonitor *)self restoreNetworkAccessPrompt];
    [restoreNetworkAccessPrompt fireWiFiPromptWithCompletion:&stru_1003C0F60];
  }
}

- (BOOL)_firePromptForCellular
{
  v2 = atomic_load(&self->_cancelled);
  if ((v2 & 1) == 0)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to fire cellular prompt", buf, 2u);
      _MBLog();
    }

    account = [(MBBackgroundRestoreProgressMonitor *)self account];
    v7 = account;
    if (!account)
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No primary account found, skipping prompt", buf, 2u);
        _MBLog();
      }

      v3 = 0;
      goto LABEL_27;
    }

    persona = [account persona];
    v9 = [persona copyPreferencesValueForKey:@"BackgroundCellularAccessConfirmationDate" class:objc_opt_class()];

    if (v9)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "The background restore cellular access was already confirmed on:%@, skipping prompt", buf, 0xCu);
        _MBLog();
      }

      v3 = 0;
      goto LABEL_26;
    }

    persona2 = [v7 persona];
    v10 = [persona2 copyPreferencesValueForKey:@"BackgroundRestoreCellularAccess" class:objc_opt_class()];

    if (v10)
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found existing background restore cellular access:%@, skipping prompt", buf, 0xCu);
        _MBLog();
      }
    }

    else
    {
      estimator = [(MBBackgroundRestoreProgressMonitor *)self estimator];
      v25 = 0;
      v14 = [estimator estimatedBackgroundRestoreSizeWithError:&v25];
      v12 = v25;

      v15 = MBGetDefaultLog();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v16)
        {
          *buf = 138412290;
          v27 = v12;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Error when estimating background restore size:%@", buf, 0xCu);
          _MBLog();
        }

        v3 = [MBError isError:v12 withCode:17];
        goto LABEL_25;
      }

      if (v16)
      {
        *buf = 134217984;
        v27 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received size estimate of %llu for background restore", buf, 0xCu);
        _MBLog();
      }

      serviceManager = [(MBBackgroundRestoreProgressMonitor *)self serviceManager];
      if (!serviceManager)
      {
        __assert_rtn("[MBBackgroundRestoreProgressMonitor _firePromptForCellular]", "MBBackgroundRestoreProgressMonitor.m", 305, "serviceManager");
      }

      v18 = serviceManager;
      restoreNetworkAccessPrompt = [(MBBackgroundRestoreProgressMonitor *)self restoreNetworkAccessPrompt];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1001BAFD4;
      v22[3] = &unk_1003C0F88;
      v23 = v18;
      v24 = v7;
      v20 = v18;
      [restoreNetworkAccessPrompt fireCellularPromptWithEstimate:v14 completion:v22];

      v12 = 0;
    }

    v3 = 0;
LABEL_25:

LABEL_26:
LABEL_27:

    return v3;
  }

  return 0;
}

- (void)_registerForBackgroundRestoreCellularAccessChangedNotification
{
  objc_initWeak(&location, self);
  self->_cellularAccessToken = -1;
  p_cellularAccessToken = &self->_cellularAccessToken;
  uTF8String = [kMBBackgroundRestoreCellularAccessChangedNotification UTF8String];
  queue = self->_queue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001BB4D8;
  handler[3] = &unk_1003C1000;
  objc_copyWeak(&v9, &location);
  v6 = notify_register_dispatch(uTF8String, p_cellularAccessToken, queue, handler);
  if (v6)
  {
    *p_cellularAccessToken = -1;
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v12 = uTF8String;
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "notify_register_dispatch(%{public}s) failed: %u", buf, 0x12u);
      _MBLog();
    }
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = uTF8String;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Registered for %{public}s notifications", buf, 0xCu);
      _MBLog();
    }
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_cancelBackgroundRestoreCellularAccessChangedNotification
{
  cellularAccessToken = self->_cellularAccessToken;
  self->_cellularAccessToken = -1;
  if (cellularAccessToken != -1)
  {
    notify_cancel(cellularAccessToken);
  }
}

- (void)thermalPressureLevelDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  queue = [(MBBackgroundRestoreProgressMonitor *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001BB620;
  v6[3] = &unk_1003BE6A0;
  objc_copyWeak(&v7, &location);
  dispatch_async(queue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_registerForThermalPressureNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"thermalPressureLevelDidChange:" name:@"MBThermalPressureMonitorNotification" object:0];
}

- (BOOL)_isContinuouslyThermallyThrottled
{
  queue = [(MBBackgroundRestoreProgressMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  thermalPressureMonitor = [(MBBackgroundRestoreProgressMonitor *)self thermalPressureMonitor];
  thermalPressureLevel = [thermalPressureMonitor thermalPressureLevel];

  if (thermalPressureLevel == kOSThermalPressureLevelUndefined)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to fetch the thermal pressure level", v14, 2u);
      _MBLog();
    }

    goto LABEL_8;
  }

  if (thermalPressureLevel <= 0x13)
  {
LABEL_8:
    [(MBBackgroundRestoreProgressMonitor *)self setDateOfThermalThrottleStart:0];
    return 0;
  }

  dateOfThermalThrottleStart = [(MBBackgroundRestoreProgressMonitor *)self dateOfThermalThrottleStart];
  if (dateOfThermalThrottleStart)
  {
    [(MBBackgroundRestoreProgressMonitor *)self setDateOfThermalThrottleStart:dateOfThermalThrottleStart];
  }

  else
  {
    v9 = +[NSDate now];
    [(MBBackgroundRestoreProgressMonitor *)self setDateOfThermalThrottleStart:v9];
  }

  v10 = +[NSDate now];
  dateOfThermalThrottleStart2 = [(MBBackgroundRestoreProgressMonitor *)self dateOfThermalThrottleStart];
  [v10 timeIntervalSinceDate:dateOfThermalThrottleStart2];
  v8 = v12 >= 300.0;

  return v8;
}

- (void)_cancelThermalPressureNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)_startRestoreInProgressFollowUpTimer
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting restore in progress follow-up timer", buf, 2u);
    _MBLog();
  }

  objc_initWeak(buf, self);
  queue = [(MBBackgroundRestoreProgressMonitor *)self queue];
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);

  v6 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v5, v6, 0xDF8475800uLL, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001BBA6C;
  handler[3] = &unk_1003BE6A0;
  objc_copyWeak(&v10, buf);
  dispatch_source_set_event_handler(v5, handler);
  followUpTimer = self->_followUpTimer;
  self->_followUpTimer = v5;
  v8 = v5;

  dispatch_resume(v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)_clearRestoreInProgressFollowUp
{
  v4 = +[MBFollowUpManager sharedManager];
  account = [(MBBackgroundRestoreProgressMonitor *)self account];
  [v4 clearPendingFollowUpsWithAccount:account identifiers:&off_1003E2390];
}

- (void)_cancelRestoreInProgressFollowUpTimer
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancelling restore in progress follow-up timer", v6, 2u);
    _MBLog();
  }

  v4 = self->_followUpTimer;
  followUpTimer = self->_followUpTimer;
  self->_followUpTimer = 0;

  if (v4)
  {
    dispatch_source_cancel(v4);
  }

  [(MBBackgroundRestoreProgressMonitor *)self _clearRestoreInProgressFollowUp];
}

- (void)_postRestoreInProgressFollowUpWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Attempting to post restore in progress follow-up (%@)", buf, 0xCu);
    _MBLog();
  }

  account = [(MBBackgroundRestoreProgressMonitor *)self account];
  if (account)
  {
    estimator = [(MBBackgroundRestoreProgressMonitor *)self estimator];
    v18 = 0;
    v8 = [estimator estimatedBackgroundRestoreSizeWithError:&v18];
    v9 = v18;

    if (v9)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to fetch the background restore size estimate: %@", buf, 0xCu);
        _MBLog();
      }
    }

    else
    {
      serviceManager = [(MBBackgroundRestoreProgressMonitor *)self serviceManager];
      if (!serviceManager)
      {
        __assert_rtn("[MBBackgroundRestoreProgressMonitor _postRestoreInProgressFollowUpWithReason:]", "MBBackgroundRestoreProgressMonitor.m", 450, "serviceManager");
      }

      v12 = serviceManager;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1001BBE90;
      v13[3] = &unk_1003C0FD8;
      v13[4] = self;
      v14 = serviceManager;
      v15 = account;
      v17 = v8;
      v16 = reasonCopy;
      v10 = v12;
      [v10 fetchNetworkConnectivityWithBlock:v13];
    }
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No account found, skipping follow-up (%@)", buf, 0xCu);
      _MBLog();
    }
  }
}

- (unint64_t)estimatedBackgroundRestoreSizeWithError:(id *)error
{
  estimator = [(MBBackgroundRestoreProgressMonitor *)self estimator];
  v5 = [estimator estimatedBackgroundRestoreSizeWithError:error];

  return v5;
}

- (void)_postRestoreTelemetryHeartbeat
{
  serviceManager = [(MBBackgroundRestoreProgressMonitor *)self serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[MBBackgroundRestoreProgressMonitor _postRestoreTelemetryHeartbeat]", "MBBackgroundRestoreProgressMonitor.m", 485, "manager");
  }

  account = [(MBBackgroundRestoreProgressMonitor *)self account];
  if (!account)
  {
    __assert_rtn("[MBBackgroundRestoreProgressMonitor _postRestoreTelemetryHeartbeat]", "MBBackgroundRestoreProgressMonitor.m", 487, "account");
  }

  v4 = account;
  v5 = [serviceManager backgroundRestoreInfoWithAccount:account];
  +[MBTelemetry sendBackgroundRestoreHeartbeat:restoreInfo:](MBTelemetry, "sendBackgroundRestoreHeartbeat:restoreInfo:", [serviceManager restoreTelemetryID], v5);
}

- (void)_startRestoreTelemetryHeartbeatTimer
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting restore telemetry heartbeat timer", buf, 2u);
    _MBLog();
  }

  objc_initWeak(buf, self);
  queue = [(MBBackgroundRestoreProgressMonitor *)self queue];
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);

  v6 = dispatch_time(0, 3600000000000);
  dispatch_source_set_timer(v5, v6, 0x34630B8A000uLL, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001BC404;
  handler[3] = &unk_1003BE6A0;
  objc_copyWeak(&v10, buf);
  dispatch_source_set_event_handler(v5, handler);
  telemetryHeartBeatTimer = self->_telemetryHeartBeatTimer;
  self->_telemetryHeartBeatTimer = v5;
  v8 = v5;

  dispatch_resume(v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)_cancelRestoreTelemetryHeartbeatTimer
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancelling restore telemetry heartbeat timer", v6, 2u);
    _MBLog();
  }

  v4 = self->_telemetryHeartBeatTimer;
  telemetryHeartBeatTimer = self->_telemetryHeartBeatTimer;
  self->_telemetryHeartBeatTimer = 0;

  if (v4)
  {
    dispatch_source_cancel(v4);
  }
}

- (MBCKManager)serviceManager
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceManager);

  return WeakRetained;
}

@end