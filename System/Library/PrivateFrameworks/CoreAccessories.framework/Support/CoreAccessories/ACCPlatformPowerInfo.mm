@interface ACCPlatformPowerInfo
- (ACCPlatformPowerInfo)initWithEndpointUID:(id)a3 andBitmask:(unint64_t)a4 andOldBitmask:(unint64_t)a5;
- (void)dealloc;
- (void)powerInfoChangeNotificationHandler:(id)a3;
- (void)startPowerUpdates;
- (void)startSiphoningControl;
- (void)stopPowerUpdates;
- (void)systemHasPoweredOnNotificationHandler:(id)a3;
- (void)systemWillSleepNotificationHandler:(id)a3;
@end

@implementation ACCPlatformPowerInfo

- (ACCPlatformPowerInfo)initWithEndpointUID:(id)a3 andBitmask:(unint64_t)a4 andOldBitmask:(unint64_t)a5
{
  v9 = a3;
  v20.receiver = self;
  v20.super_class = ACCPlatformPowerInfo;
  v10 = [(ACCPlatformPowerInfo *)&v20 init];
  if (v10)
  {
    EndpointWithUUID = acc_manager_getEndpointWithUUID(v9);
    objc_storeStrong(v10 + 4, a3);
    if (EndpointWithUUID && *EndpointWithUUID)
    {
      v12 = **EndpointWithUUID;
    }

    else
    {
      v12 = 0;
    }

    objc_storeStrong(v10 + 5, v12);
    [v10 setUpdateTypesBitmask:a4];
    [v10 setOldUpdateTypesBitmask:a5];
    v13 = *(v10 + 7);
    *(v10 + 7) = 0;

    *(v10 + 15) = 0;
    *(v10 + 11) = 0;
    v14 = objc_alloc_init(ACCPowerManager);
    v15 = *(v10 + 6);
    *(v10 + 6) = v14;

    v10[17] = 0;
    v16 = *(v10 + 10);
    *(v10 + 10) = 0;

    v10[18] = 0;
    v17 = *(v10 + 11);
    *(v10 + 11) = 0;

    v18 = *(v10 + 12);
    *(v10 + 12) = 0;

    v10[19] = 0;
  }

  return v10;
}

- (void)dealloc
{
  endpointUID = self->_endpointUID;
  self->_endpointUID = 0;

  siphoningControl = self->_siphoningControl;
  self->_siphoningControl = 0;

  accessoryPowerManager = self->_accessoryPowerManager;
  self->_accessoryPowerManager = 0;

  [(ACCPlatformPowerInfo *)self setUpdateTypesBitmask:0];
  [(ACCPlatformPowerInfo *)self setOldUpdateTypesBitmask:0];
  v6.receiver = self;
  v6.super_class = ACCPlatformPowerInfo;
  [(ACCPlatformPowerInfo *)&v6 dealloc];
}

- (void)startSiphoningControl
{
  if (!self->_siphoningControl)
  {
    v4 = [[ACCPowerSiphoningControl alloc] initWithDelegate:self];
    siphoningControl = self->_siphoningControl;
    self->_siphoningControl = v4;

    _objc_release_x1();
  }
}

- (void)startPowerUpdates
{
  v4 = [a1 isUpdateTypeEnabled:3];
  v5 = [a1 isUpdateTypeEnabled:8];
  v6 = [a1 isUpdateTypeEnabled:9];
  v7 = [a1 isUpdateTypeEnabled:10];
  [a1 isUpdateTypeEnabled:11];
  *v10 = 67111424;
  *&v10[2] = 3;
  OUTLINED_FUNCTION_9_13();
  *&v10[5] = v4;
  v10[7] = v8;
  v11 = 8;
  v12 = v8;
  v13 = v5;
  v14 = v8;
  v15 = 9;
  v16 = v8;
  v17 = v6;
  v18 = v8;
  v19 = 10;
  v20 = v8;
  v21 = v7;
  v22 = v8;
  v23 = 11;
  v24 = v8;
  v25 = v9;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[#Power] startSiphoningControl %d:%d %d:%d %d:%d %d:%d %d:%d", v10, 0x3Eu);
}

- (void)stopPowerUpdates
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  if ([(ACCPlatformPowerInfo *)self isUpdateTypeEnabled:7])
  {
    v4 = [(ACCPlatformPowerInfo *)self sleepNotificationClientUUID];

    if (v4)
    {
      v5 = _getIOKitPowerPluginInstance();
      v6 = [(ACCPlatformPowerInfo *)self sleepNotificationClientUUID];
      [v5 destroySleepNotificationsForClient:v6];

      [(ACCPlatformPowerInfo *)self setSleepNotificationClientUUID:0];
    }
  }

  else if ([(ACCPlatformPowerInfo *)self isUpdateTypeEnabled:4]|| [(ACCPlatformPowerInfo *)self isUpdateTypeEnabled:5]|| [(ACCPlatformPowerInfo *)self isUpdateTypeEnabled:6])
  {
    v7 = _getIOKitPowerPluginInstance();
    v8 = [(ACCPlatformPowerInfo *)self batteryNotificationClientUUID];
    [v7 destroyBatteryNotificationsForClient:v8];

    [(ACCPlatformPowerInfo *)self setBatteryNotificationClientUUID:0];
  }
}

- (void)powerInfoChangeNotificationHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:ACCPlatformPowerPlugin_ConnectionUUID];
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v66 = 136315394;
    *v67 = "[ACCPlatformPowerInfo powerInfoChangeNotificationHandler:]";
    *&v67[8] = 2112;
    *v68 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#Power] %s: Received notification: %@\n", &v66, 0x16u);
  }

  if ([v5 isEqualToString:ACCPlatformPowerPlugin_USBCurrentLimitDidChangeNotification])
  {
    p_availableCurrent = &self->_availableCurrent;
    availableCurrent = self->_availableCurrent;
    v13 = _getPowerPluginInstance();
    self->_availableCurrent = [v13 USBCurrentLimitInmA:v7];

    if (platform_systemInfo_isLightning())
    {
      if (availableCurrent == *p_availableCurrent && self->_isFirstSent_AvailableCurrent)
      {
        if (gLogObjects && gNumLogObjects >= 8)
        {
          v14 = *(gLogObjects + 56);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v14 = &_os_log_default;
          v41 = &_os_log_default;
        }

        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_115;
        }

        v42 = self->_availableCurrent;
        isFirstSent_AvailableCurrent = self->_isFirstSent_AvailableCurrent;
        v66 = 67109888;
        *v67 = 0;
        *&v67[4] = 1024;
        *&v67[6] = availableCurrent;
        *v68 = 1024;
        *&v68[2] = v42;
        *&v68[6] = 1024;
        *&v68[8] = isFirstSent_AvailableCurrent;
        goto LABEL_114;
      }

      self->_isFirstSent_AvailableCurrent = 1;
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v17 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v17 = &_os_log_default;
        v27 = &_os_log_default;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [ACCPlatformPowerInfo powerInfoChangeNotificationHandler:?];
      }
    }

    else
    {
      self->_isFirstSent_AvailableCurrent = 1;
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v17 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v17 = &_os_log_default;
        v20 = &_os_log_default;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v21 = *p_availableCurrent;
        v66 = 136316162;
        *v67 = "[ACCPlatformPowerInfo powerInfoChangeNotificationHandler:]";
        *&v67[8] = 1024;
        *v68 = 1047;
        *&v68[4] = 1024;
        *&v68[6] = 0;
        *&v68[10] = 1024;
        v69 = availableCurrent;
        v70 = 1024;
        v71 = v21;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[#Power] %s:%d Sending Power Update: %d: %d->%d\n", &v66, 0x24u);
      }
    }

    v28 = [(ACCPlatformPowerInfo *)self endpointUID];
    v29 = self->_availableCurrent;
    v30 = 0;
    goto LABEL_102;
  }

  if ([v5 isEqualToString:ACCPlatformPowerPlugin_BatteryPackModeDidChangeNotification])
  {
    isDeviceBatteryCharging = self->_isDeviceBatteryCharging;
    v16 = _getPowerPluginInstance();
    self->_isDeviceBatteryCharging = [v16 isBatteryPackModeEnabled:v7] ^ 1;

    if (platform_systemInfo_isLightning())
    {
      if (isDeviceBatteryCharging == self->_isDeviceBatteryCharging && self->_isFirstSent_DeviceBatteryCharging)
      {
        if (gLogObjects && gNumLogObjects >= 8)
        {
          v14 = *(gLogObjects + 56);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v14 = &_os_log_default;
          v45 = &_os_log_default;
        }

        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_115;
        }

        v46 = self->_isDeviceBatteryCharging;
        isFirstSent_DeviceBatteryCharging = self->_isFirstSent_DeviceBatteryCharging;
        v66 = 67109888;
        *v67 = 1;
        *&v67[4] = 1024;
        *&v67[6] = isDeviceBatteryCharging;
        *v68 = 1024;
        *&v68[2] = v46;
        *&v68[6] = 1024;
        *&v68[8] = isFirstSent_DeviceBatteryCharging;
        goto LABEL_114;
      }

      self->_isFirstSent_DeviceBatteryCharging = 1;
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v22 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v22 = &_os_log_default;
        v38 = &_os_log_default;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [ACCPlatformPowerInfo powerInfoChangeNotificationHandler:?];
      }
    }

    else
    {
      self->_isFirstSent_DeviceBatteryCharging = 1;
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v22 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v22 = &_os_log_default;
        v32 = &_os_log_default;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [(ACCPlatformPowerInfo *)isDeviceBatteryCharging powerInfoChangeNotificationHandler:v22];
      }
    }

    v28 = [(ACCPlatformPowerInfo *)self endpointUID];
    v29 = self->_isDeviceBatteryCharging;
    v30 = 1;
LABEL_102:
    platform_power_sendPowerUpdate(v28, v30, v29, 13, 0);
    goto LABEL_103;
  }

  if ([v5 isEqualToString:ACCPlatformIOKitPowerPlugin_IsExternalChargerConnected])
  {
    isExternalChargerConnected = self->_isExternalChargerConnected;
    v19 = _getIOKitPowerPluginInstance();
    self->_isExternalChargerConnected = [v19 isExternalChargerConnected];

    if (isExternalChargerConnected != self->_isExternalChargerConnected || !self->_isFirstSent_ExternalChargerConnected)
    {
      self->_isFirstSent_ExternalChargerConnected = 1;
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v31 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v31 = &_os_log_default;
        v39 = &_os_log_default;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [ACCPlatformPowerInfo powerInfoChangeNotificationHandler:?];
      }

      v28 = [(ACCPlatformPowerInfo *)self endpointUID];
      v29 = self->_isExternalChargerConnected;
      v30 = 4;
      goto LABEL_102;
    }

    if (gLogObjects && gNumLogObjects >= 8)
    {
      v14 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v14 = &_os_log_default;
      v48 = &_os_log_default;
    }

    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_115;
    }

    v49 = self->_isExternalChargerConnected;
    isFirstSent_ExternalChargerConnected = self->_isFirstSent_ExternalChargerConnected;
    v66 = 67109888;
    *v67 = 4;
    *&v67[4] = 1024;
    *&v67[6] = isExternalChargerConnected;
    *v68 = 1024;
    *&v68[2] = v49;
    *&v68[6] = 1024;
    *&v68[8] = isFirstSent_ExternalChargerConnected;
LABEL_114:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[#Power] Skip Sending Power Update: %d: %d = %d, isFirst=%d", &v66, 0x1Au);
    goto LABEL_115;
  }

  if ([v5 isEqualToString:ACCPlatformIOKitPowerPlugin_BatteryChargingState])
  {
    batteryChargingState = self->_batteryChargingState;
    v24 = _getIOKitPowerPluginInstance();
    self->_batteryChargingState = [v24 getBatteryChargingState];

    if (batteryChargingState != self->_batteryChargingState || !self->_isFirstSent_BatteryChargingState)
    {
      self->_isFirstSent_BatteryChargingState = 1;
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v40 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v40 = &_os_log_default;
        v44 = &_os_log_default;
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        [ACCPlatformPowerInfo powerInfoChangeNotificationHandler:?];
      }

      v28 = [(ACCPlatformPowerInfo *)self endpointUID];
      v29 = self->_batteryChargingState;
      v30 = 5;
      goto LABEL_102;
    }

    v14 = logObjectForModule_19();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
LABEL_115:

      goto LABEL_103;
    }

    v25 = self->_batteryChargingState;
    isFirstSent_BatteryChargingState = self->_isFirstSent_BatteryChargingState;
    v66 = 67109888;
    *v67 = 5;
    *&v67[4] = 1024;
    *&v67[6] = batteryChargingState;
    *v68 = 1024;
    *&v68[2] = v25;
    *&v68[6] = 1024;
    *&v68[8] = isFirstSent_BatteryChargingState;
    goto LABEL_114;
  }

  if ([v5 isEqualToString:ACCPlatformIOKitPowerPlugin_BatteryChargeLevel])
  {
    batteryChargeLevel = self->_batteryChargeLevel;
    v59 = _getIOKitPowerPluginInstance();
    self->_batteryChargeLevel = [v59 getBatteryChargeLevel];

    if (batteryChargeLevel == self->_batteryChargeLevel && self->_isFirstSent_BatteryChargeLevel)
    {
      v60 = logObjectForModule_19();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = self->_batteryChargeLevel;
        isFirstSent_BatteryChargeLevel = self->_isFirstSent_BatteryChargeLevel;
        v66 = 67109888;
        *v67 = 6;
        *&v67[4] = 1024;
        *&v67[6] = batteryChargeLevel;
        *v68 = 1024;
        *&v68[2] = v61;
        *&v68[6] = 1024;
        *&v68[8] = isFirstSent_BatteryChargeLevel;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "[#Power] Skip Sending Power Update: %d: %d = %d, isFirst=%d", &v66, 0x1Au);
      }
    }

    else
    {
      self->_isFirstSent_BatteryChargeLevel = 1;
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v63 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v63 = &_os_log_default;
        v64 = &_os_log_default;
      }

      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        [ACCPlatformPowerInfo powerInfoChangeNotificationHandler:?];
      }

      platform_power_sendPowerUpdate([(ACCPlatformPowerInfo *)self endpointUID], 6, self->_batteryChargeLevel, 13, 0);
    }

    v14 = [(ACCPlatformPowerInfo *)self endpointUID];
    if (!_isModelNumberConnected(v14, @"A1603") || !platform_systemInfo_isApplePencilSupported() || self->_batteryChargeLevel > 0xAu)
    {
      goto LABEL_115;
    }

    v65 = [(ACCPlatformPowerInfo *)self holdingApplePencilSleepAssertion];

    if (v65)
    {
      platform_sleepAssertion_destroyForApplePencil();
      [(ACCPlatformPowerInfo *)self setHoldingApplePencilSleepAssertion:0];
    }
  }

  else
  {
    if (![v5 isEqualToString:ACCPlatformPowerPlugin_PowerDidChangeNotification])
    {
      v33 = logObjectForModule_19();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v66 = 138412290;
        *v67 = v5;
        v34 = "[#Power] PowerInfoChangeNotifications: Unknown notification received: %@\n";
        v35 = v33;
        v36 = OS_LOG_TYPE_DEFAULT;
        v37 = 12;
        goto LABEL_94;
      }

LABEL_95:

      goto LABEL_103;
    }

    if (self->_systemAsleep)
    {
      v33 = logObjectForModule_19();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        LOWORD(v66) = 0;
        v34 = "[#Power] ignoring PowerDidChangeNotification because we're asleep";
        v35 = v33;
        v36 = OS_LOG_TYPE_INFO;
        v37 = 2;
LABEL_94:
        _os_log_impl(&_mh_execute_header, v35, v36, v34, &v66, v37);
        goto LABEL_95;
      }

      goto LABEL_95;
    }

    accessoryChargingCurrent = self->_accessoryChargingCurrent;
    v52 = _getPowerPluginInstance();
    self->_accessoryChargingCurrent = [v52 accessoryChargingCurrentInmA:v7];

    if (accessoryChargingCurrent != self->_accessoryChargingCurrent || !self->_isFirstSent_AccessoryChargingCurrent)
    {
      self->_isFirstSent_AccessoryChargingCurrent = 1;
      v56 = logObjectForModule_19();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = self->_accessoryChargingCurrent;
        v66 = 67109632;
        *v67 = 7;
        *&v67[4] = 1024;
        *&v67[6] = accessoryChargingCurrent;
        *v68 = 1024;
        *&v68[2] = v57;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[#Power] Sending Power Update: %d: %d->%d\n", &v66, 0x14u);
      }

      v28 = [(ACCPlatformPowerInfo *)self endpointUID];
      v29 = self->_accessoryChargingCurrent;
      v30 = 7;
      goto LABEL_102;
    }

    v53 = logObjectForModule_19();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = self->_accessoryChargingCurrent;
      isFirstSent_AccessoryChargingCurrent = self->_isFirstSent_AccessoryChargingCurrent;
      v66 = 67109888;
      *v67 = 7;
      *&v67[4] = 1024;
      *&v67[6] = accessoryChargingCurrent;
      *v68 = 1024;
      *&v68[2] = v54;
      *&v68[6] = 1024;
      *&v68[8] = isFirstSent_AccessoryChargingCurrent;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[#Power] Skip Sending Power Update: %d: %d = %d, isFirst=%d", &v66, 0x1Au);
    }
  }

LABEL_103:
}

- (void)systemWillSleepNotificationHandler:(id)a3
{
  [a3 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_10_14();
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v5 < 8;
  }

  if (v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v12, v13, v14, v15, v58);
    }

    v17 = &_os_log_default;
    v16 = &_os_log_default;
  }

  else
  {
    v17 = *(v4 + 56);
  }

  if (OUTLINED_FUNCTION_82())
  {
    [(ACCPlatformPowerInfo *)self endpointUID];
    objc_claimAutoreleasedReturnValue();
    v18 = [OUTLINED_FUNCTION_10_4() connectionUID];
    OUTLINED_FUNCTION_8_11();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v19, v20, v21, v22, v23, 0x20u);
  }

  [(ACCPlatformPowerInfo *)self setSystemAsleep:1];
  if ([(ACCPlatformPowerInfo *)self requestSleepUpdate])
  {
    platform_power_sendSleepUpdate([(ACCPlatformPowerInfo *)self endpointUID]);
  }

  v24 = [(ACCPlatformPowerInfo *)self endpointUID];
  v25 = platform_power_powerDuringSleepEnabled(v24);

  if (v25)
  {
    v26 = [(ACCPlatformPowerInfo *)self endpointUID];
    isModelNumberConnected = _isModelNumberConnected(v26, @"A1603");

    if (isModelNumberConnected)
    {
      v28 = [(ACCPlatformPowerInfo *)self accessoryChargingCurrent];
      _getPowerPluginInstance();
      objc_claimAutoreleasedReturnValue();
      v29 = [OUTLINED_FUNCTION_10_4() connectionUID];
      -[ACCPlatformPowerInfo setAccessoryChargingCurrent:](self, "setAccessoryChargingCurrent:", [isModelNumberConnected sleepPowerCurrentLimitInmA:v29]);

      v30 = *(v6 + 3928);
      v31 = *(v7 + 3936);
      if (v30 && v31 >= 8)
      {
        v32 = *(v30 + 56);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *&v59[4] = HIDWORD(v30);
          OUTLINED_FUNCTION_3();
          v60[0] = v31;
          OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v48, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v49, v50, v51, v52, 0);
        }

        v32 = &_os_log_default;
        v34 = &_os_log_default;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        [(ACCPlatformPowerInfo *)self accessoryChargingCurrent];
        v58 = 67109376;
        *v59 = v28;
        OUTLINED_FUNCTION_9_13();
        *&v59[6] = v35;
        OUTLINED_FUNCTION_11_10();
        _os_log_impl(v36, v37, v38, v39, v40, 0xEu);
      }

      if (v28 != [(ACCPlatformPowerInfo *)self accessoryChargingCurrent])
      {
        v41 = *(v6 + 3928);
        if (v41 && *(v7 + 3936) >= 8)
        {
          v42 = *(v41 + 56);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_2_3();
            OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v53, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v54, v55, v56, v57, v58);
          }

          v42 = &_os_log_default;
          v43 = &_os_log_default;
        }

        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [(ACCPlatformPowerInfo *)self accessoryChargingCurrent];
          [(ACCPlatformPowerInfo *)self accessoryChargingCurrent];
          v58 = 67109632;
          *v59 = 7;
          OUTLINED_FUNCTION_9_13();
          *&v59[6] = v44;
          LOWORD(v60[0]) = v45;
          *(v60 + 2) = v46;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[#Power] Sending Power Update (for sleep): %d: %d->%d\n", &v58, 0x14u);
        }

        [(ACCPlatformPowerInfo *)self endpointUID];
        v47 = [OUTLINED_FUNCTION_15_11() accessoryChargingCurrent];
        OUTLINED_FUNCTION_13_11(v47);
        [(ACCPlatformPowerInfo *)self setPowerUpdateSentDueToSleep:1];
      }
    }

    else
    {
      _getIOKitPowerPluginInstance();
      objc_claimAutoreleasedReturnValue();
      v33 = [OUTLINED_FUNCTION_15_11() sleepNotificationClientUUID];
      [v26 clientHandledSleepNotification:v33];
    }
  }
}

- (void)systemHasPoweredOnNotificationHandler:(id)a3
{
  [a3 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_10_14();
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v5 < 8;
  }

  if (v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v12, v13, v14, v15, v57);
    }

    v17 = &_os_log_default;
    v16 = &_os_log_default;
  }

  else
  {
    v17 = *(v4 + 56);
  }

  if (OUTLINED_FUNCTION_82())
  {
    [(ACCPlatformPowerInfo *)self endpointUID];
    objc_claimAutoreleasedReturnValue();
    v18 = [OUTLINED_FUNCTION_10_4() connectionUID];
    OUTLINED_FUNCTION_8_11();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v19, v20, v21, v22, v23, 0x20u);
  }

  [(ACCPlatformPowerInfo *)self setSystemAsleep:0];
  if ([(ACCPlatformPowerInfo *)self requestSleepUpdate])
  {
    platform_power_sendWakeUpdate([(ACCPlatformPowerInfo *)self endpointUID]);
  }

  v24 = [(ACCPlatformPowerInfo *)self endpointUID];
  v25 = platform_power_powerDuringSleepEnabled(v24);

  if (v25)
  {
    v26 = [(ACCPlatformPowerInfo *)self endpointUID];
    isModelNumberConnected = _isModelNumberConnected(v26, @"A1603");

    if (isModelNumberConnected)
    {
      v28 = [(ACCPlatformPowerInfo *)self accessoryChargingCurrent];
      _getPowerPluginInstance();
      objc_claimAutoreleasedReturnValue();
      v29 = [OUTLINED_FUNCTION_10_4() connectionUID];
      -[ACCPlatformPowerInfo setAccessoryChargingCurrent:](self, "setAccessoryChargingCurrent:", [isModelNumberConnected accessoryChargingCurrentInmA:v29]);

      v30 = *(v6 + 3928);
      if (v30 && *(v7 + 3936) >= 8)
      {
        v31 = *(v30 + 56);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v47, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v48, v49, v50, v51, 0);
        }

        v31 = &_os_log_default;
        v32 = &_os_log_default;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        [(ACCPlatformPowerInfo *)self accessoryChargingCurrent];
        OUTLINED_FUNCTION_9_13();
        OUTLINED_FUNCTION_11_10();
        _os_log_impl(v33, v34, v35, v36, v37, 0xEu);
      }

      if (v28 != [(ACCPlatformPowerInfo *)self accessoryChargingCurrent])
      {
        v38 = *(v6 + 3928);
        if (v38 && *(v7 + 3936) >= 8)
        {
          v39 = *(v38 + 56);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v52, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v53, v54, v55, v56, 0);
          }

          v39 = &_os_log_default;
          v40 = &_os_log_default;
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          [(ACCPlatformPowerInfo *)self accessoryChargingCurrent];
          OUTLINED_FUNCTION_9_13();
          OUTLINED_FUNCTION_11_10();
          _os_log_impl(v41, v42, v43, v44, v45, 0x14u);
        }

        [(ACCPlatformPowerInfo *)self endpointUID];
        v46 = [OUTLINED_FUNCTION_15_11() accessoryChargingCurrent];
        OUTLINED_FUNCTION_13_11(v46);
      }
    }
  }
}

- (void)powerInfoChangeNotificationHandler:(unsigned __int8 *)a1 .cold.3(unsigned __int8 *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_6_18(&_mh_execute_header, v2, v3, "[#Power] Sending Power Update: %d: %d->%d\n", 67109632, v4, v5);
}

- (void)powerInfoChangeNotificationHandler:(unsigned int *)a1 .cold.5(unsigned int *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_6_18(&_mh_execute_header, v2, v3, "[#Power] Sending Power Update: %d: %d->%d\n", 67109632, v4, v5);
}

- (void)powerInfoChangeNotificationHandler:(unsigned __int8 *)a1 .cold.7(unsigned __int8 *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_6_18(&_mh_execute_header, v2, v3, "[#Power] Sending Power Update: %d: %d->%d\n", 67109632, v4, v5);
}

- (void)powerInfoChangeNotificationHandler:(NSObject *)a3 .cold.10(unsigned __int8 a1, unsigned __int8 *a2, NSObject *a3)
{
  LOWORD(v3) = 1024;
  HIWORD(v3) = a1;
  OUTLINED_FUNCTION_6_18(&_mh_execute_header, a2, a3, "[#Power] Sending Power Update: %d: %d->%d\n", 67109632, v3, *a2);
}

- (void)powerInfoChangeNotificationHandler:(unsigned __int8 *)a1 .cold.12(unsigned __int8 *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_6_18(&_mh_execute_header, v2, v3, "[#Power] Sending Power Update: %d: %d->%d\n", 67109632, v4, v5);
}

- (void)powerInfoChangeNotificationHandler:(unsigned __int16 *)a1 .cold.16(unsigned __int16 *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_6_18(&_mh_execute_header, v2, v3, "[#Power] Sending Power Update: %d: %d->%d\n", 67109632, v4, v5);
}

@end