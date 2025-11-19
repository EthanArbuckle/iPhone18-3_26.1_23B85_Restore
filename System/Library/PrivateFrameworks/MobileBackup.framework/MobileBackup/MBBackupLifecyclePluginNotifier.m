@interface MBBackupLifecyclePluginNotifier
- (BOOL)_notifyPluginsOfState:(unint64_t)a3 engineError:(id)a4 error:(id *)a5;
- (MBBackupLifecyclePluginNotifier)initWithEngine:(id)a3;
- (MBEngine)engine;
@end

@implementation MBBackupLifecyclePluginNotifier

- (MBBackupLifecyclePluginNotifier)initWithEngine:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MBBackupLifecyclePluginNotifier;
  v5 = [(MBBackupLifecyclePluginNotifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_lastNotifiedState = 0;
    objc_storeWeak(&v5->_engine, v4);
  }

  return v6;
}

- (BOOL)_notifyPluginsOfState:(unint64_t)a3 engineError:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(MBBackupLifecyclePluginNotifier *)self lastNotifiedState];
  v10 = v9;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v11 = &selRef_startingBackupWithEngine_;
      goto LABEL_18;
    }

    if (a3 != 2)
    {
      goto LABEL_32;
    }

    v11 = &selRef_preparingBackupWithEngine_;
    if (v9 == 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        v11 = &selRef_endingBackupWithEngine_;
        if (v9 - 1 < 3)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      if (a3 == 5)
      {
        v11 = &selRef_endedBackupWithEngine_error_;
        if (v9 == 4)
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
        *&buf[4] = a3;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Invalid state to notify:%ld", buf, 0xCu);
        _MBLog();
      }

      __assert_rtn("[MBBackupLifecyclePluginNotifier _notifyPluginsOfState:engineError:error:]", "MBBackupPluginLifecycleNotifier.m", 68, "0");
    }

    v11 = &selRef_preparedBackupWithEngine_;
    if (v9 == 2)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  if (v9 != a3)
  {
    if (a5)
    {
      [MBError errorWithCode:1 format:@"Cannot notify plugins of state transition %ld -> %ld", v9, a3];
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
  v14 = [(MBBackupLifecyclePluginNotifier *)self engine];
  if (!v14)
  {
    __assert_rtn("[MBBackupLifecyclePluginNotifier _notifyPluginsOfState:engineError:error:]", "MBBackupPluginLifecycleNotifier.m", 80, "engine");
  }

  v15 = v14;
  v16 = [v14 settingsContext];
  v17 = [v16 plugins];
  v18 = [v17 objectEnumerator];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  if (a3 == 5)
  {
    *&buf[16] = sub_100137B5C;
    v25 = &unk_1003BF968;
    v27 = v8;
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

  v19 = MBNotifyPluginsBlock(v15, v18, v13, buf);

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
      *&buf[14] = a3;
      *&buf[22] = 2112;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Notified backup plugins for state transition:%ld -> %ld engine:%@", buf, 0x20u);
      _MBLog();
    }

    [(MBBackupLifecyclePluginNotifier *)self setLastNotifiedState:a3];
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