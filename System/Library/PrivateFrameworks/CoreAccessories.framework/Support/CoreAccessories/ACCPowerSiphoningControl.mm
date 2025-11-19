@interface ACCPowerSiphoningControl
+ (BOOL)_getUSBHubOverCurrentState:(id)a3;
+ (int)_getReserveCurrentInmA:(id)a3;
+ (unsigned)_getChargerCurrentInmA:(id)a3;
+ (unsigned)_getChargerVoltageInmV:(id)a3;
+ (unsigned)_getUSBHubSiphoningCurrentActualRequirementInmA:(id)a3;
+ (unsigned)_getUSBHubSiphoningCurrentRequirementInmA:(id)a3;
+ (unsigned)_getUSBHubUnitLoadInmA:(id)a3;
+ (void)_resetUSBHubOverCurrentSiphoning:(id)a3;
+ (void)_setUSBHubOverCurrentSiphoning:(id)a3;
- (ACCPowerSiphoningControl)initWithDelegate:(id)a3;
- (id)siphoningDebounceTimerSource;
- (unsigned)calculateSiphoningCurrent:(unsigned int)a3;
- (void)_cckHubChangeNotificationHandler:(id)a3;
- (void)_powerInfoChangeNotificationHandler:(id)a3;
- (void)_processPowerInfoChangeTimeout;
- (void)_sendChangedSiphoningValues;
- (void)_updateSiphoningValues;
- (void)dealloc;
@end

@implementation ACCPowerSiphoningControl

- (ACCPowerSiphoningControl)initWithDelegate:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = ACCPowerSiphoningControl;
  v6 = [(ACCPowerSiphoningControl *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
    v8 = [v5 connectionUID];
    connectionUID = v7->_connectionUID;
    v7->_connectionUID = v8;

    v7->_siphoningDebounceTimerTime = -1;
    v10 = [(ACCPowerSiphoningControl *)v7 siphoningDebounceTimerSource];
    siphoningDebounceTimerSource = v7->_siphoningDebounceTimerSource;
    v7->_siphoningDebounceTimerSource = v10;

    v7->_minSiphoningCurrentInmAOld = -1;
    *&v7->_siphoningCurrentInmAOld = -1;
    *&v7->_chargerVoltageInmVOld = -1;
    v7->_siphoningCurrentNeedSend = 1;
    v12 = _getUSBCameraKitHubPluginInstance();
    v13 = [(ACCPowerSiphoningControlDelegate *)v7->_delegate endpointUID];
    [v12 initUSBCameraKitHubNotifications:v13];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v7 selector:"_powerInfoChangeNotificationHandler:" name:ACCPlatformPowerPlugin_USBCurrentLimitDidChangeNotification object:0];
    [v14 addObserver:v7 selector:"_powerInfoChangeNotificationHandler:" name:ACCPlatformPowerPlugin_PowerDidChangeNotification object:0];
    [v14 addObserver:v7 selector:"_cckHubChangeNotificationHandler:" name:@"ACCPlatformUSBCameraKitHubPlugin_HubChange" object:0];
    [(ACCPowerSiphoningControl *)v7 _powerInfoChangeNotificationHandler:0];
    [(ACCPowerSiphoningControl *)v7 _cckHubChangeNotificationHandler:0];
  }

  return v7;
}

- (void)dealloc
{
  siphoningDebounceTimerSource = self->_siphoningDebounceTimerSource;
  if (siphoningDebounceTimerSource)
  {
    dispatch_source_cancel(siphoningDebounceTimerSource);
    v4 = self->_siphoningDebounceTimerSource;
    self->_siphoningDebounceTimerSource = 0;

    self->_siphoningDebounceTimerTime = -1;
  }

  v5.receiver = self;
  v5.super_class = ACCPowerSiphoningControl;
  [(ACCPowerSiphoningControl *)&v5 dealloc];
}

- (id)siphoningDebounceTimerSource
{
  siphoningDebounceTimerSource = self->_siphoningDebounceTimerSource;
  if (!siphoningDebounceTimerSource)
  {
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    v5 = self->_siphoningDebounceTimerSource;
    self->_siphoningDebounceTimerSource = v4;

    v6 = self->_siphoningDebounceTimerSource;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __56__ACCPowerSiphoningControl_siphoningDebounceTimerSource__block_invoke;
    handler[3] = &unk_100225968;
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    self->_siphoningDebounceTimerTime = -1;
    dispatch_source_set_timer(self->_siphoningDebounceTimerSource, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_siphoningDebounceTimerSource);
    siphoningDebounceTimerSource = self->_siphoningDebounceTimerSource;
  }

  return siphoningDebounceTimerSource;
}

- (unsigned)calculateSiphoningCurrent:(unsigned int)a3
{
  v5 = self->_chargerVoltageInmV * self->_chargerCurrentInmA / 0x1388u;
  if (platform_systemInfo_isIPad() && self->_chargerCurrentInmA > 1999 || ((platform_systemInfo_isIPod() & 1) != 0 || platform_systemInfo_isIPhone()) && self->_chargerCurrentInmA >= 1000)
  {
    if (v5 <= a3 || self->_chargerVoltageInmV <= 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  else
  {
    v7 = 0;
  }

  if (self->_usbAccessoryDetected && self->_usbAccessorySiphoningNotRequired)
  {
    if (gLogObjects && gNumLogObjects >= 37)
    {
      v8 = *(gLogObjects + 288);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      usbAccessoryDetected = self->_usbAccessoryDetected;
      usbAccessorySiphoningNotRequired = self->_usbAccessorySiphoningNotRequired;
      v17 = 67109376;
      v18 = usbAccessoryDetected;
      v19 = 1024;
      v20 = usbAccessorySiphoningNotRequired;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Don't need siphoning Device working fine without, _usbAccessoryDetected=%d _usbAccessorySiphoningNotRequired=%d", &v17, 0xEu);
    }

    v7 = 0;
  }

  if (gLogObjects && gNumLogObjects >= 37)
  {
    v12 = *(gLogObjects + 288);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v12 = &_os_log_default;
    v13 = &_os_log_default;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    chargerCurrentInmA = self->_chargerCurrentInmA;
    chargerVoltageInmV = self->_chargerVoltageInmV;
    v17 = 67110144;
    v18 = a3;
    v19 = 1024;
    v20 = chargerVoltageInmV;
    v21 = 1024;
    v22 = chargerCurrentInmA;
    v23 = 1024;
    v24 = v5;
    v25 = 1024;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "usbDeviceRequestedCurrent=%d _chargerVoltageInmV=%d _chargerCurrentInmA=%d available5VCurrent=%d, result=%d", &v17, 0x20u);
  }

  return v7;
}

- (void)_powerInfoChangeNotificationHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:ACCPlatformPowerPlugin_ConnectionUUID];
  if (gLogObjects && gNumLogObjects >= 37)
  {
    v8 = *(gLogObjects + 288);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received notification: %@, userInfo=%@\n", &v10, 0x16u);
  }

  if (!v7 || [v7 isEqualToString:self->_connectionUID])
  {
    [(ACCPowerSiphoningControl *)self _updateSiphoningValues];
    [(ACCPowerSiphoningControl *)self _sendChangedSiphoningValues];
  }
}

- (void)_cckHubChangeNotificationHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:@"ACCPlatformUSBCameraKitHubPlugin_ConnectionUUID"];
  if (gLogObjects && gNumLogObjects >= 37)
  {
    v8 = *(gLogObjects + 288);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received notification: %@, userInfo=%@", &v21, 0x16u);
  }

  if ([v5 isEqualToString:@"ACCPlatformUSBCameraKitHubPlugin_HubChange"] && (!v7 || objc_msgSend(v7, "isEqualToString:", self->_connectionUID)))
  {
    v10 = dispatch_time(0, 200000000);
    v11 = v10;
    siphoningDebounceTimerTime = self->_siphoningDebounceTimerTime;
    if (gLogObjects)
    {
      v13 = gNumLogObjects <= 36;
    }

    else
    {
      v13 = 1;
    }

    v14 = !v13;
    if (siphoningDebounceTimerTime == -1 || v10 > siphoningDebounceTimerTime)
    {
      if (v14)
      {
        v16 = *(gLogObjects + 288);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v16 = &_os_log_default;
        v17 = &_os_log_default;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = self->_siphoningDebounceTimerTime;
        v21 = 134218240;
        v22 = v18;
        v23 = 2048;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "set new timeout %lld -> %lld", &v21, 0x16u);
      }

      self->_siphoningDebounceTimerTime = v11;
      v15 = [(ACCPowerSiphoningControl *)self siphoningDebounceTimerSource];
      dispatch_source_set_timer(v15, self->_siphoningDebounceTimerTime, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    else
    {
      if (v14)
      {
        v15 = *(gLogObjects + 288);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v15 = &_os_log_default;
        v19 = &_os_log_default;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v20 = self->_siphoningDebounceTimerTime;
        v21 = 134218240;
        v22 = v20;
        v23 = 2048;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "ignore timeout=%lld >= %lld", &v21, 0x16u);
      }
    }
  }
}

- (void)_processPowerInfoChangeTimeout
{
  self->_siphoningDebounceTimerTime = -1;
  v3 = [ACCPowerSiphoningControl _getUSBHubSiphoningCurrentRequirementInmA:self->_connectionUID];
  v4 = [ACCPowerSiphoningControl _getUSBHubSiphoningCurrentActualRequirementInmA:self->_connectionUID];
  v5 = [ACCPowerSiphoningControl _getUSBHubUnitLoadInmA:self->_connectionUID];
  usbAccessoryDetected = self->_usbAccessoryDetected;
  usbAccessorySiphoningNotRequired = self->_usbAccessorySiphoningNotRequired;
  if (gLogObjects && gNumLogObjects >= 7)
  {
    v8 = *(gLogObjects + 48);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 67109888;
    v40 = v4;
    v41 = 1024;
    v42 = v5;
    v43 = 1024;
    v44 = usbAccessoryDetected;
    v45 = 1024;
    *v46 = usbAccessorySiphoningNotRequired;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "realRequiredCurrent=%d unitLoad=%d old_usbAccessoryDetected=%d old_usbAccessorySiphoningNotRequired=%d", &v39, 0x1Au);
  }

  if (!v4)
  {
    v10 = 0;
    self->_usbAccessoryDetected = 0;
    v11 = 1;
    goto LABEL_13;
  }

  v10 = 1;
  self->_usbAccessoryDetected = 1;
  if (v4 > v5)
  {
    v11 = 0;
LABEL_13:
    self->_usbAccessorySiphoningNotRequired = v11;
  }

  if (usbAccessoryDetected != v10 || usbAccessorySiphoningNotRequired != self->_usbAccessorySiphoningNotRequired)
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v12 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v29 = self->_usbAccessoryDetected;
      v30 = self->_usbAccessorySiphoningNotRequired;
      v39 = 67110400;
      v40 = v4;
      v41 = 1024;
      v42 = v5;
      v43 = 1024;
      v44 = usbAccessoryDetected;
      v45 = 1024;
      *v46 = v29;
      *&v46[4] = 1024;
      *&v46[6] = usbAccessorySiphoningNotRequired;
      LOWORD(v47) = 1024;
      *(&v47 + 2) = v30;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "realRequiredCurrent=%d unitLoad=%d _usbAccessoryDetected=%d->%d _usbAccessorySiphoningNotRequired=%d->%d", &v39, 0x26u);
    }
  }

  v14 = [(ACCPowerSiphoningControl *)self calculateSiphoningCurrent:v3];
  self->_siphoningCurrentInmA = v14;
  if (self->_siphoningCurrentNeedSend)
  {
    goto LABEL_26;
  }

  siphoningCurrentInmAOld = self->_siphoningCurrentInmAOld;
  if (siphoningCurrentInmAOld == -1 || v14 != siphoningCurrentInmAOld)
  {
    if (siphoningCurrentInmAOld != -1 && v14 <= siphoningCurrentInmAOld)
    {
      v24 = dispatch_time(0, 5000000000);
      v25 = v24;
      siphoningDebounceTimerTime = self->_siphoningDebounceTimerTime;
      if (siphoningDebounceTimerTime != -1 && v24 <= siphoningDebounceTimerTime)
      {
        goto LABEL_41;
      }

      if (gLogObjects && gNumLogObjects >= 7)
      {
        v27 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v27 = &_os_log_default;
        v31 = &_os_log_default;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v32 = self->_siphoningCurrentInmAOld;
        siphoningCurrentInmA = self->_siphoningCurrentInmA;
        v34 = self->_siphoningDebounceTimerTime;
        siphoningCurrentNeedSend = self->_siphoningCurrentNeedSend;
        v39 = 67110656;
        v40 = v3;
        v41 = 1024;
        v42 = v32;
        v43 = 1024;
        v44 = siphoningCurrentInmA;
        v45 = 2048;
        *v46 = v34;
        *&v46[8] = 2048;
        v47 = v25;
        v48 = 1024;
        v49 = siphoningCurrentNeedSend;
        v50 = 1024;
        v51 = 1;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "siphoningCurrentRequirement going down, debounce some more, usbRequiredCurrent=%d _siphoningCurrent=%d->%d, timeout %lld -> %lld, _siphoningCurrentNeedSend %d -> %d", &v39, 0x34u);
      }

      self->_siphoningDebounceTimerTime = v25;
      v22 = [(ACCPowerSiphoningControl *)self siphoningDebounceTimerSource];
      dispatch_source_set_timer(v22, self->_siphoningDebounceTimerTime, 0xFFFFFFFFFFFFFFFFLL, 0);
      v23 = 1;
LABEL_40:

      self->_siphoningCurrentNeedSend = v23;
LABEL_41:
      self->_siphoningCurrentInmAOld = self->_siphoningCurrentInmA;
      return;
    }

LABEL_26:
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v15 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v15 = &_os_log_default;
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v19 = self->_siphoningCurrentInmAOld;
      v20 = self->_siphoningCurrentInmA;
      v21 = self->_siphoningCurrentNeedSend;
      v39 = 67109888;
      v40 = v3;
      v41 = 1024;
      v42 = v19;
      v43 = 1024;
      v44 = v20;
      v45 = 1024;
      *v46 = v21;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "sendPowerUpdate usbRequiredCurrent=%d _siphoningCurrent=%d->%d _siphoningCurrentNeedSend=%d", &v39, 0x1Au);
    }

    v22 = [(ACCPowerSiphoningControlDelegate *)self->_delegate endpointUID];
    platform_power_sendPowerUpdate(v22, 3, self->_siphoningCurrentInmA, 13, 0);
    v23 = 0;
    goto LABEL_40;
  }

  if (gLogObjects && gNumLogObjects >= 7)
  {
    v17 = *(gLogObjects + 48);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v17 = &_os_log_default;
    v28 = &_os_log_default;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v36 = self->_siphoningCurrentNeedSend;
    v37 = self->_siphoningCurrentInmAOld;
    v38 = self->_siphoningCurrentInmA;
    v39 = 67110144;
    v40 = v3;
    v41 = 1024;
    v42 = v36;
    v43 = 1024;
    v44 = v37;
    v45 = 1024;
    *v46 = v38;
    *&v46[4] = 1024;
    *&v46[6] = v37;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Skip check/send siphoning current, usbRequiredCurrent=%d _siphoningCurrentNeedSend=%d _siphoningCurrentInmAOld=%d _siphoningCurrentInmA=%d _siphoningCurrentInmAOld=%d", &v39, 0x20u);
  }
}

- (void)_updateSiphoningValues
{
  if (gLogObjects && gNumLogObjects >= 37)
  {
    v3 = *(gLogObjects + 288);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v3 = &_os_log_default;
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    chargerCurrentInmA = self->_chargerCurrentInmA;
    chargerVoltageInmV = self->_chargerVoltageInmV;
    reserveCurrentInmA = self->_reserveCurrentInmA;
    v13 = 67109632;
    v14 = chargerCurrentInmA;
    v15 = 1024;
    v16 = chargerVoltageInmV;
    v17 = 1024;
    v18 = reserveCurrentInmA;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "old: _chargerCurrentInmA=%d _chargerVoltageInmV=%d _reserveCurrentInmA=%d", &v13, 0x14u);
  }

  self->_chargerCurrentInmA = [ACCPowerSiphoningControl _getChargerCurrentInmA:self->_connectionUID];
  self->_chargerVoltageInmV = [ACCPowerSiphoningControl _getChargerVoltageInmV:self->_connectionUID];
  self->_reserveCurrentInmA = [ACCPowerSiphoningControl _getReserveCurrentInmA:self->_connectionUID];
  if (gLogObjects && gNumLogObjects >= 37)
  {
    v8 = *(gLogObjects + 288);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = self->_chargerCurrentInmA;
    v11 = self->_chargerVoltageInmV;
    v12 = self->_reserveCurrentInmA;
    v13 = 67109632;
    v14 = v10;
    v15 = 1024;
    v16 = v11;
    v17 = 1024;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "new: _chargerCurrentInmA=%d _chargerVoltageInmV=%d _reserveCurrentInmA=%d", &v13, 0x14u);
  }
}

- (void)_sendChangedSiphoningValues
{
  chargerCurrentInmAOld = self->_chargerCurrentInmAOld;
  if (chargerCurrentInmAOld == -1 || self->_chargerCurrentInmA != chargerCurrentInmAOld || (v4 = self->_chargerVoltageInmVOld, v4 == -1) || self->_chargerVoltageInmV != v4)
  {
    if (gLogObjects)
    {
      v6 = gNumLogObjects < 7;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v7 = &_os_log_default;
    }

    else
    {
      v8 = *(gLogObjects + 48);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = self->_chargerCurrentInmAOld;
      chargerVoltageInmVOld = self->_chargerVoltageInmVOld;
      chargerCurrentInmA = self->_chargerCurrentInmA;
      chargerVoltageInmV = self->_chargerVoltageInmV;
      v30 = 67109888;
      v31 = v9;
      v32 = 1024;
      v33 = chargerCurrentInmA;
      v34 = 1024;
      v35 = chargerVoltageInmVOld;
      v36 = 1024;
      v37 = chargerVoltageInmV;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "sendPowerUpdate chargerCurrent=%d->%d chargerVoltage=%d->%d", &v30, 0x1Au);
    }

    v13 = [(ACCPowerSiphoningControlDelegate *)self->_delegate endpointUID];
    platform_power_sendPowerUpdate(v13, 9, self->_chargerVoltageInmV, 8, self->_chargerCurrentInmA);

    *&self->_chargerCurrentInmAOld = *&self->_chargerCurrentInmA;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  reserveCurrentInmAOld = self->_reserveCurrentInmAOld;
  if (reserveCurrentInmAOld == -1 || self->_reserveCurrentInmA != reserveCurrentInmAOld)
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v15 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v15 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = self->_reserveCurrentInmAOld;
      reserveCurrentInmA = self->_reserveCurrentInmA;
      v30 = 67109376;
      v31 = v17;
      v32 = 1024;
      v33 = reserveCurrentInmA;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "sendPowerUpdate reserveCurrent=%d->%d", &v30, 0xEu);
    }

    v19 = [(ACCPowerSiphoningControlDelegate *)self->_delegate endpointUID];
    platform_power_sendPowerUpdate(v19, 10, self->_reserveCurrentInmA, 13, 0);

    self->_reserveCurrentInmAOld = self->_reserveCurrentInmA;
  }

  minSiphoningCurrentInmAOld = self->_minSiphoningCurrentInmAOld;
  if (minSiphoningCurrentInmAOld == -1 || self->_minSiphoningCurrentInmA != minSiphoningCurrentInmAOld)
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v21 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v21 = &_os_log_default;
      v22 = &_os_log_default;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = self->_minSiphoningCurrentInmAOld;
      minSiphoningCurrentInmA = self->_minSiphoningCurrentInmA;
      v30 = 67109376;
      v31 = v23;
      v32 = 1024;
      v33 = minSiphoningCurrentInmA;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "sendPowerUpdate minSiphoningCurrent=%d->%d", &v30, 0xEu);
    }

    v25 = [(ACCPowerSiphoningControlDelegate *)self->_delegate endpointUID];
    platform_power_sendPowerUpdate(v25, 11, self->_minSiphoningCurrentInmA, 13, 0);

    self->_minSiphoningCurrentInmAOld = self->_minSiphoningCurrentInmA;
  }

  if (v5)
  {
    if (self->_chargerCurrentInmA)
    {
      v26 = 0xFFFF;
      if (self->_chargerVoltageInmV)
      {
        if (self->_siphoningCurrentInmA)
        {
          v26 = 0xFFFF;
        }

        else
        {
          v26 = 20;
        }
      }
    }

    else
    {
      v26 = 0xFFFF;
    }

    if (gLogObjects && gNumLogObjects >= 7)
    {
      v27 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v27 = &_os_log_default;
      v28 = &_os_log_default;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v30 = 67109120;
      v31 = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "sendPowerUpdate maxNonSiphoningCurrent=%d", &v30, 8u);
    }

    v29 = [(ACCPowerSiphoningControlDelegate *)self->_delegate endpointUID];
    platform_power_sendPowerUpdate(v29, 12, v26, 13, 0);
  }
}

+ (int)_getReserveCurrentInmA:(id)a3
{
  v3 = a3;
  v4 = +[ACCPlatformPluginManager sharedManager];
  v5 = [v4 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformPowerPluginProtocol fallbackToTransportPlugins:1];

  LODWORD(v4) = [v5 USBCurrentLimitOffsetInmA:v3];
  return -v4;
}

+ (unsigned)_getChargerCurrentInmA:(id)a3
{
  v3 = a3;
  v4 = +[ACCPlatformPluginManager sharedManager];
  v5 = [v4 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformPowerPluginProtocol fallbackToTransportPlugins:1];

  if (v5)
  {
    v6 = [v5 USBCurrentLimitBaseInmA:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unsigned)_getChargerVoltageInmV:(id)a3
{
  v3 = a3;
  v4 = +[ACCPlatformPluginManager sharedManager];
  v5 = [v4 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformPowerPluginProtocol fallbackToTransportPlugins:1];

  if (v5)
  {
    v6 = [v5 USBChargingVoltageInmV:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unsigned)_getUSBHubUnitLoadInmA:(id)a3
{
  v3 = a3;
  v4 = +[ACCPlatformPluginManager sharedManager];
  v5 = [v4 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformUSBCameraKitHubPluginProtocol fallbackToTransportPlugins:1];

  if (v5)
  {
    v6 = [v5 getUSBHubUnitLoadInmA:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unsigned)_getUSBHubSiphoningCurrentRequirementInmA:(id)a3
{
  v3 = a3;
  v4 = +[ACCPlatformPluginManager sharedManager];
  v5 = [v4 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformUSBCameraKitHubPluginProtocol fallbackToTransportPlugins:1];

  if (v5)
  {
    v6 = [v5 getUSBHubSiphoningCurrentRequirementInmA:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unsigned)_getUSBHubSiphoningCurrentActualRequirementInmA:(id)a3
{
  v3 = a3;
  v4 = +[ACCPlatformPluginManager sharedManager];
  v5 = [v4 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformUSBCameraKitHubPluginProtocol fallbackToTransportPlugins:1];

  if (v5)
  {
    v6 = [v5 getUSBHubSiphoningCurrentActualRequirementInmA:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)_getUSBHubOverCurrentState:(id)a3
{
  v3 = a3;
  v4 = +[ACCPlatformPluginManager sharedManager];
  v5 = [v4 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformUSBCameraKitHubPluginProtocol fallbackToTransportPlugins:1];

  if (v5)
  {
    v6 = [v5 getUSBHubOverCurrentState:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)_resetUSBHubOverCurrentSiphoning:(id)a3
{
  v5 = a3;
  v3 = +[ACCPlatformPluginManager sharedManager];
  v4 = [v3 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformUSBCameraKitHubPluginProtocol fallbackToTransportPlugins:1];

  if (v4)
  {
    [v4 resetUSBHubOverCurrentSiphoning:v5];
  }
}

+ (void)_setUSBHubOverCurrentSiphoning:(id)a3
{
  v5 = a3;
  v3 = +[ACCPlatformPluginManager sharedManager];
  v4 = [v3 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformUSBCameraKitHubPluginProtocol fallbackToTransportPlugins:1];

  if (v4)
  {
    [v4 setUSBHubOverCurrentSiphoning:v5];
  }
}

@end