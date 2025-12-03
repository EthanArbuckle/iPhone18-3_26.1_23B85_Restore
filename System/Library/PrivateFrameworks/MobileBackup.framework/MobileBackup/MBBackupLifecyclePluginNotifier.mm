@interface MBBackupLifecyclePluginNotifier
- (BOOL)_notifyPluginsOfState:(unint64_t)state engineError:(id)error error:(id *)a5;
- (MBBackupLifecyclePluginNotifier)initWithEngine:(id)engine;
- (MBEngine)engine;
@end

@implementation MBBackupLifecyclePluginNotifier

- (MBBackupLifecyclePluginNotifier)initWithEngine:(id)engine
{
  engineCopy = engine;
  v8.receiver = self;
  v8.super_class = MBBackupLifecyclePluginNotifier;
  v5 = [(MBBackupLifecyclePluginNotifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_lastNotifiedState = 0;
    objc_storeWeak(&v5->_engine, engineCopy);
  }

  return v6;
}

- (BOOL)_notifyPluginsOfState:(unint64_t)state engineError:(id)error error:(id *)a5
{
  errorCopy = error;
  lastNotifiedState = [(MBBackupLifecyclePluginNotifier *)self lastNotifiedState];
  v10 = lastNotifiedState;
  if (state <= 2)
  {
    if (state == 1)
    {
      v11 = &selRef_startingBackupWithEngine_;
      goto LABEL_18;
    }

    if (state != 2)
    {
      goto LABEL_32;
    }

    v11 = &selRef_preparingBackupWithEngine_;
    if (lastNotifiedState == 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (state != 3)
    {
      if (state == 4)
      {
        v11 = &selRef_endingBackupWithEngine_;
        if (lastNotifiedState - 1 < 3)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      if (state == 5)
      {
        v11 = &selRef_endedBackupWithEngine_error_;
        if (lastNotifiedState == 4)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

LABEL_32:
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = state;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Invalid state to notify:%ld", buf, 0xCu);
        _MBLog();
      }

      __assert_rtn("[MBBackupLifecyclePluginNotifier _notifyPluginsOfState:engineError:error:]", "MBBackupPluginLifecycleNotifier.m", 68, "0");
    }

    v11 = &selRef_preparedBackupWithEngine_;
    if (lastNotifiedState == 2)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  if (lastNotifiedState != state)
  {
    if (a5)
    {
      [MBError errorWithCode:1 format:@"Cannot notify plugins of state transition %ld -> %ld", lastNotifiedState, state];
      *a5 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_30;
  }

LABEL_18:
  v13 = *v11;
  engine = [(MBBackupLifecyclePluginNotifier *)self engine];
  if (!engine)
  {
    __assert_rtn("[MBBackupLifecyclePluginNotifier _notifyPluginsOfState:engineError:error:]", "MBBackupPluginLifecycleNotifier.m", 80, "engine");
  }

  v15 = engine;
  settingsContext = [engine settingsContext];
  plugins = [settingsContext plugins];
  objectEnumerator = [plugins objectEnumerator];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  if (state == 5)
  {
    *&buf[16] = sub_100137B5C;
    v25 = &unk_1003BF968;
    v27 = errorCopy;
    v28 = v13;
    v26 = v15;
  }

  else
  {
    *&buf[16] = sub_100137B50;
    v25 = &unk_1003BF940;
    v26 = v15;
    v27 = v13;
  }

  v19 = MBNotifyPluginsBlock(v15, objectEnumerator, v13, buf);

  v12 = v19 == 0;
  if (v19)
  {
    if (a5)
    {
      v20 = v19;
      *a5 = v19;
    }
  }

  else
  {
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      *&buf[4] = v10;
      *&buf[12] = 2048;
      *&buf[14] = state;
      *&buf[22] = 2112;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Notified backup plugins for state transition:%ld -> %ld engine:%@", buf, 0x20u);
      _MBLog();
    }

    [(MBBackupLifecyclePluginNotifier *)self setLastNotifiedState:state];
  }

LABEL_30:
  return v12;
}

- (MBEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

@end