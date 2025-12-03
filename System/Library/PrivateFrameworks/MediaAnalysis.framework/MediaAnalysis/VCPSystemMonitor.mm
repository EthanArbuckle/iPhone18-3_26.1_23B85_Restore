@interface VCPSystemMonitor
- (VCPSystemMonitor)init;
- (id)checkFullyCharged;
- (int)disable;
- (int)enable;
- (int64_t)checkPluggedIn;
- (int64_t)checkScreenLocked;
- (unint64_t)checkThermalPressure;
- (void)checkFreeSpace;
- (void)dealloc;
- (void)reset;
@end

@implementation VCPSystemMonitor

- (VCPSystemMonitor)init
{
  v6.receiver = self;
  v6.super_class = VCPSystemMonitor;
  v2 = [(VCPSystemMonitor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_powerToken = -1;
    *&v2->_chargedToken = -1;
    freeSpaceTimer = v2->_freeSpaceTimer;
    v2->_freeSpaceTimer = 0;
    v2->_recommendedState = 2;
  }

  return v3;
}

- (void)reset
{
  p_powerToken = &self->_powerToken;
  powerToken = self->_powerToken;
  if (powerToken != -1)
  {
    notify_cancel(powerToken);
  }

  screenToken = self->_screenToken;
  if (screenToken != -1)
  {
    notify_cancel(screenToken);
  }

  chargedToken = self->_chargedToken;
  if (chargedToken != -1)
  {
    notify_cancel(chargedToken);
  }

  thermalToken = self->_thermalToken;
  if (thermalToken != -1)
  {
    notify_cancel(thermalToken);
  }

  freeSpaceTimer = self->_freeSpaceTimer;
  if (freeSpaceTimer)
  {
    dispatch_source_cancel(freeSpaceTimer);
    freeSpaceTimer = self->_freeSpaceTimer;
  }

  *p_powerToken = -1;
  *(p_powerToken + 1) = -1;
  self->_freeSpaceTimer = 0;
}

- (void)dealloc
{
  [(VCPSystemMonitor *)self reset];
  v3.receiver = self;
  v3.super_class = VCPSystemMonitor;
  [(VCPSystemMonitor *)&v3 dealloc];
}

- (int64_t)checkPluggedIn
{
  v3 = IOPSGetTimeRemainingEstimate();
  if (self->_powerToken == -1 || v3 == -1.0)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v5 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Failed to query whether device is plugged-in", &v11, 2u);
      }
    }

    self->_recommendedState = 5;
    return -1;
  }

  else
  {
    v7 = MediaAnalysisLogLevel();
    if (v7 >= 7)
    {
      v8 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        v9 = "unplugged";
        if (v3 == -2.0)
        {
          v9 = "plugged-in";
        }

        v11 = 136315138;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "Device is %s", &v11, 0xCu);
      }
    }

    if (v3 != -2.0 && self->_recommendedState == 2)
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v10 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v10))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "Device is unplugged", &v11, 2u);
        }
      }

      self->_recommendedState = 3;
    }

    return v3 == -2.0;
  }
}

- (int64_t)checkScreenLocked
{
  state64 = 0;
  screenToken = self->_screenToken;
  if (screenToken == -1 || notify_get_state(screenToken, &state64))
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v4 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Failed to query whether screen is locked", buf, 2u);
      }
    }

    self->_recommendedState = 5;
    return -1;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v6 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        if (state64)
        {
          v7 = "locked";
        }

        else
        {
          v7 = "unlocked";
        }

        *buf = 136315138;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "Screen is %s", buf, 0xCu);
      }
    }

    if (state64)
    {
      return 1;
    }

    else if (self->_recommendedState == 2)
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v8 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v8))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "Screen is unlocked", buf, 2u);
        }
      }

      self->_recommendedState = 3;
      return state64 != 0;
    }

    else
    {
      return 0;
    }
  }
}

- (id)checkFullyCharged
{
  if (qword_1002B8538 != -1)
  {
    sub_1001AC6DC();
  }

  if (byte_1002B8530 != 1)
  {
    goto LABEL_10;
  }

  if (self->_chargedToken == -1)
  {
    goto LABEL_7;
  }

  if (IOPSGetPercentRemaining())
  {
    if (byte_1002B8530)
    {
LABEL_7:
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_14;
      }

      v3 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v3))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v4 = "Failed to query whether device is fully charged";
LABEL_13:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, v4, buf, 2u);
LABEL_14:
      self->_recommendedState = 5;
      v14[0] = @"FullyCharged";
      v14[1] = @"IsCharging";
      v15[0] = &off_100295418;
      v15[1] = &off_100295418;
      v5 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
      goto LABEL_15;
    }

LABEL_10:
    if (MediaAnalysisLogLevel() < 6)
    {
      goto LABEL_14;
    }

    v3 = VCPLogToOSLogType[6];
    if (!os_log_type_enabled(&_os_log_default, v3))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v4 = "Device does not have active battery";
    goto LABEL_13;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v7 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 67109120;
      v13 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "Device is not fully charged (Battery %d%%)", buf, 8u);
    }
  }

  self->_recommendedState = 5;
  v10[0] = @"FullyCharged";
  v8 = [NSNumber numberWithInteger:0];
  v10[1] = @"IsCharging";
  v11[0] = v8;
  v9 = [NSNumber numberWithInteger:0];
  v11[1] = v9;
  v5 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

LABEL_15:

  return v5;
}

- (unint64_t)checkThermalPressure
{
  state64 = 0;
  thermalToken = self->_thermalToken;
  if (thermalToken == -1 || notify_get_state(thermalToken, &state64))
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v4 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Failed to query thermal pressure level", buf, 2u);
      }
    }

    self->_recommendedState = 5;
    return -1;
  }

  else if (state64)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v6 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "Device is under thermal pressure", v7, 2u);
      }
    }

    self->_recommendedState = 5;
    return state64;
  }

  else
  {
    return 0;
  }
}

- (void)checkFreeSpace
{
  v3 = +[NSFileManager defaultManager];
  v4 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
  vcp_mediaAnalysisDirectory = [v4 vcp_mediaAnalysisDirectory];
  stringByDeletingLastPathComponent = [vcp_mediaAnalysisDirectory stringByDeletingLastPathComponent];

  v7 = [v3 attributesOfFileSystemForPath:stringByDeletingLastPathComponent error:0];
  v8 = v7;
  if (!v7 || ([v7 objectForKey:NSFileSystemFreeSize], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v14 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "Failed to query free space", &v15, 2u);
      }
    }

    v10 = 0;
    goto LABEL_14;
  }

  v10 = v9;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v11 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      v15 = 134217984;
      v16 = vcvtd_n_f64_u64([v10 unsignedLongLongValue], 0xAuLL) * 0.0009765625;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "Free space: %0.1f MB", &v15, 0xCu);
    }
  }

  if ([v10 unsignedLongLongValue] >> 21 <= 4)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v12 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        unsignedLongLongValue = [v10 unsignedLongLongValue];
        v15 = 134217984;
        v16 = *&unsignedLongLongValue;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "Insufficient free space (%llu bytes)", &v15, 0xCu);
      }
    }

LABEL_14:
    self->_recommendedState = 5;
  }
}

- (int)enable
{
  if ([(VCPSystemMonitor *)self _successfullyRegistered])
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v3 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v3))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[VCPSystemMonitor] Attempted enablement when already registered", buf, 2u);
      }
    }

    return -18;
  }

  else
  {
    self->_recommendedState = 2;
    objc_initWeak(buf, self);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1001AC430;
    handler[3] = &unk_1002886D8;
    objc_copyWeak(&v23, buf);
    notify_register_dispatch("com.apple.system.powersources.source", &self->_powerToken, &_dispatch_main_q, handler);
    [(VCPSystemMonitor *)self checkPluggedIn];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001AC494;
    v20[3] = &unk_1002886D8;
    objc_copyWeak(&v21, buf);
    notify_register_dispatch("com.apple.springboard.lockstate", &self->_screenToken, &_dispatch_main_q, v20);
    [(VCPSystemMonitor *)self checkScreenLocked];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001AC4F8;
    v18[3] = &unk_1002886D8;
    objc_copyWeak(&v19, buf);
    notify_register_dispatch("com.apple.system.powersources.timeremaining", &self->_chargedToken, &_dispatch_main_q, v18);
    checkFullyCharged = [(VCPSystemMonitor *)self checkFullyCharged];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001AC564;
    v16[3] = &unk_1002886D8;
    objc_copyWeak(&v17, buf);
    notify_register_dispatch(kOSThermalNotificationPressureLevelName, &self->_thermalToken, &_dispatch_main_q, v16);
    [(VCPSystemMonitor *)self checkThermalPressure];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    freeSpaceTimer = self->_freeSpaceTimer;
    self->_freeSpaceTimer = v6;

    v8 = self->_freeSpaceTimer;
    if (v8)
    {
      dispatch_source_set_timer(v8, 0, 0x45D964B800uLL, 0x6FC23AC00uLL);
      v9 = self->_freeSpaceTimer;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1001AC5C8;
      v14[3] = &unk_100282A30;
      objc_copyWeak(&v15, buf);
      dispatch_source_set_event_handler(v9, v14);
      dispatch_resume(self->_freeSpaceTimer);
      objc_destroyWeak(&v15);
    }

    else if (MediaAnalysisLogLevel() >= 3)
    {
      v10 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "Failed to query free space", v13, 2u);
      }
    }

    if ([(VCPSystemMonitor *)self _successfullyRegistered])
    {
      v4 = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v11 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[VCPSystemMonitor] Failed to register during enablement", v13, 2u);
        }
      }

      [(VCPSystemMonitor *)self reset];
      self->_recommendedState = 5;
      v4 = -18;
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  return v4;
}

- (int)disable
{
  if ([(VCPSystemMonitor *)self _successfullyRegistered])
  {
    [(VCPSystemMonitor *)self reset];
    return 0;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v4 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[VCPSystemMonitor] Attempted disablement when not registered", v5, 2u);
      }
    }

    return -18;
  }
}

@end