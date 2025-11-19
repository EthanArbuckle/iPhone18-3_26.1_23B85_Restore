@interface HAENUnknownDeviceManager
+ (id)sharedInstance;
- (BOOL)_isAlertSupported;
- (BOOL)_shouldSurfaceAlert:(id)a3;
- (BOOL)unknownWiredHeadsetConnectedThroughB204;
- (HAENUnknownDeviceManager)init;
- (void)_processPrompt:(id)a3;
- (void)_processWiredDevice:(id)a3;
- (void)_resetWiredStatus;
- (void)_updateMXVolumeLimitStatus:(id)a3;
- (void)_wiredDeviceSessionCreated:(id)a3 SessionID:(unint64_t)a4;
- (void)_wiredDeviceSessionDestroyed:(id)a3;
- (void)_wiredDeviceSessionInit:(id)a3;
- (void)deviceSessionCreated:(id)a3 SessionID:(unint64_t)a4;
- (void)deviceSessionDestroyed:(id)a3 isWired:(BOOL)a4;
- (void)registerDevice:(id)a3;
- (void)setDeviceConnectionState:(id)a3 isConnected:(BOOL)a4;
- (void)surfaceAlertBox;
- (void)updateWiredDeviceStatus;
@end

@implementation HAENUnknownDeviceManager

+ (id)sharedInstance
{
  if ((+[HAENDefaults isCurrentProcessMediaserverd](HAENDefaults, "isCurrentProcessMediaserverd") || +[HAENDefaults isRunningCITests]) && sharedInstance_once_6 != -1)
  {
    +[HAENUnknownDeviceManager sharedInstance];
  }

  v2 = sharedInstance_instance_6;

  return v2;
}

uint64_t __42__HAENUnknownDeviceManager_sharedInstance__block_invoke()
{
  sharedInstance_instance_6 = objc_alloc_init(HAENUnknownDeviceManager);

  return MEMORY[0x2821F96F8]();
}

- (HAENUnknownDeviceManager)init
{
  v7.receiver = self;
  v7.super_class = HAENUnknownDeviceManager;
  v2 = [(HAENUnknownDeviceManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_alertSupported = [(HAENUnknownDeviceManager *)v2 _isAlertSupported];
    deviceName = v3->_deviceName;
    v3->_deviceName = 0;

    deviceUID = v3->_deviceUID;
    v3->_deviceUID = 0;

    v3->_connectionCnt = 0;
    v3->_alertPending = 0;
    v3->_isWiredUnknown = 0;
    v3->_adamSessionID = 561211748;
  }

  return v3;
}

- (void)deviceSessionCreated:(id)a3 SessionID:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    self->_isWiredUnknown = 0;
    v8 = [v6 objectForKey:@"_HAENMetadataIdentifierHeadsetIsWired"];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = [v7 objectForKey:@"_HAENMetadataIdentifierDeviceName"];
      v11 = [v7 objectForKey:@"_HAENMetadataIdentifierHeadsetIsUnknown"];
      self->_isWiredUnknown = [v11 BOOLValue];

      v12 = [v7 objectForKey:@"_HAENMetadataIdentifierDeviceIdentifier"];
      deviceUID = self->_deviceUID;
      self->_deviceUID = v12;

      if (v10)
      {
        [(HAENUnknownDeviceManager *)self _wiredDeviceSessionCreated:v10 SessionID:a4];
      }

      else
      {
        v14 = HAENotificationsLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(HAENUnknownDeviceManager *)v7 deviceSessionCreated:v14 SessionID:v15, v16, v17, v18, v19, v20];
        }
      }
    }

    v21 = +[HAENVolumeControl sharedInstance];
    [v21 setDeviceInfo:v7];
  }
}

- (void)registerDevice:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (![(HAENUnknownDeviceManager *)self isUSBCPort])
  {
    v9 = HAENotificationsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(HAENUnknownDeviceManager *)v4 registerDevice:v9, v10, v11, v12, v13, v14, v15];
    }

    goto LABEL_7;
  }

  if (v4)
  {
    v5 = [v4 objectForKey:@"_HAENMetadataIdentifierDeviceIdentifier"];
    deviceUID = self->_deviceUID;
    self->_deviceUID = v5;

    v7 = [v4 objectForKey:@"_HAENMetadataIdentifierHeadsetIsUnknown"];
    if ([v7 BOOLValue])
    {
      v8 = [v4 objectForKey:@"_HAENMetadataIdentifierHeadsetIsWired"];
      self->_isWiredUnknown = [v8 BOOLValue];
    }

    else
    {
      self->_isWiredUnknown = 0;
    }

    v17 = [v4 objectForKey:@"_HAENMetadataIdentifierDeviceName"];
    v9 = v17;
    if (self->_deviceUID)
    {
      v18 = [v17 copy];
      deviceName = self->_deviceName;
      self->_deviceName = v18;

      if (self->_alertSupported && [(HAENUnknownDeviceManager *)self _shouldSurfaceAlert:v9])
      {
        v20 = +[HAENDefaults sharedInstance];
        v21 = [v20 getAudioAccessoryConnectionInfoWithKey:self->_deviceUID];

        v22 = HAENotificationsLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 134217984;
          v31 = v21;
          _os_log_impl(&dword_25081E000, v22, OS_LOG_TYPE_DEFAULT, "accessory returned value: %ld", &v30, 0xCu);
        }

        if (v21 == -1)
        {
          [(HAENUnknownDeviceManager *)self surfaceAlertBox];
        }
      }

LABEL_7:

      os_unfair_lock_unlock(&self->_lock);
      goto LABEL_8;
    }

    v23 = HAENotificationsLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(HAENUnknownDeviceManager *)v4 deviceSessionCreated:v23 SessionID:v24, v25, v26, v27, v28, v29];
    }
  }

LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setDeviceConnectionState:(id)a3 isConnected:(BOOL)a4
{
  v13 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([(HAENUnknownDeviceManager *)self isUSBCPort])
  {
    v6 = +[HAENDefaults sharedInstance];
    v7 = [v6 getAudioAccessoryConnectionInfoWithKey:v13];

    if (!v7)
    {
      v8 = objc_alloc_init(MEMORY[0x277CEFB38]);
      v9 = v8;
      v10 = *MEMORY[0x277CEFAB0];
      if (a4)
      {
        v11 = [MEMORY[0x277CCABB0] numberWithInt:0];
        v12 = [v9 setPreferenceFor:v10 value:v11 notify:1];
      }

      else
      {
        [v8 removePreferenceFor:*MEMORY[0x277CEFAB0]];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_wiredDeviceSessionCreated:(id)a3 SessionID:(unint64_t)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HAENUnknownDeviceManager *)self _wiredDeviceSessionInit:v6];
  if (self->_adamSessionID != a4)
  {
    ++self->_connectionCnt;
    self->_adamSessionID = a4;
  }

  [(HAENUnknownDeviceManager *)self _processWiredDevice:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_wiredDeviceSessionInit:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 isEqualToString:self->_deviceName] & 1) == 0)
  {
    v5 = HAENotificationsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      deviceName = self->_deviceName;
      connectionCnt = self->_connectionCnt;
      v12 = 138412802;
      v13 = v4;
      v14 = 2112;
      v15 = deviceName;
      v16 = 1024;
      v17 = connectionCnt;
      _os_log_impl(&dword_25081E000, v5, OS_LOG_TYPE_DEFAULT, "new wired headset [%@], previous [%@], session count [%d]", &v12, 0x1Cu);
    }

    if (self->_connectionCnt >= 1)
    {
      v8 = HAENotificationsLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_25081E000, v8, OS_LOG_TYPE_DEFAULT, "**** old device has not been released yet, but replacing with new device", &v12, 2u);
      }
    }

    [(HAENUnknownDeviceManager *)self _resetWiredStatus];
    v9 = [v4 copy];
    v10 = self->_deviceName;
    self->_deviceName = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_processWiredDevice:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  alertSupported = self->_alertSupported;
  v6 = HAENotificationsLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (alertSupported)
  {
    if (v7)
    {
      connectionCnt = self->_connectionCnt;
      v12 = 138412546;
      v13 = v4;
      v14 = 1024;
      v15 = connectionCnt;
      _os_log_impl(&dword_25081E000, v6, OS_LOG_TYPE_DEFAULT, "wired headset connected [%@], session count [%d]", &v12, 0x12u);
    }

    if ([(HAENUnknownDeviceManager *)self _shouldSurfaceAlert:v4])
    {
      if ([(HAENUnknownDeviceManager *)self isUSBCPort])
      {
        deviceUID = self->_deviceUID;
        v10 = self;
      }

      else
      {
        v10 = self;
        deviceUID = v4;
      }

      [(HAENUnknownDeviceManager *)v10 _processPrompt:deviceUID];
    }

    else
    {
      [(HAENUnknownDeviceManager *)self _updateMXVolumeLimitStatus:v4];
    }
  }

  else
  {
    if (v7)
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_25081E000, v6, OS_LOG_TYPE_DEFAULT, "Alert not supported: %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateWiredDeviceStatus
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_25081E000, a2, a3, "device [%@] alread released?", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)unknownWiredHeadsetConnectedThroughB204
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HAENUnknownDeviceManager *)self _isUnknownWiredHeadset:self->_deviceName];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)_processPrompt:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HAENotificationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_25081E000, v5, OS_LOG_TYPE_DEFAULT, "found unknown wired headset!", &v19, 2u);
  }

  v6 = [(HAENUnknownDeviceManager *)self isUSBCPort];
  v7 = +[HAENDefaults sharedInstance];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 getAudioAccessoryConnectionInfoWithKey:v4];
  }

  else
  {
    v9 = [v7 getAudioAccessoryConnectionInfo];
  }

  v10 = v9;

  v11 = HAENotificationsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134217984;
    v20 = v10;
    _os_log_impl(&dword_25081E000, v11, OS_LOG_TYPE_DEFAULT, "accessory returned value: %ld", &v19, 0xCu);
  }

  if (v10 >= 2)
  {
    if (v10 == -1)
    {
      [(HAENUnknownDeviceManager *)self surfaceAlertBox];
      goto LABEL_13;
    }

    v17 = objc_alloc_init(MEMORY[0x277CEFB38]);
    v18 = [v17 setPreferenceFor:*MEMORY[0x277CEFAB0] value:&unk_2862C9790 notify:1];

    v12 = HAENotificationsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      v20 = v10;
      _os_log_impl(&dword_25081E000, v12, OS_LOG_TYPE_DEFAULT, "notice: could not get accessory info: %ld, assumed to be headphone", &v19, 0xCu);
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CEFB38]);
    v13 = *MEMORY[0x277CEFAB0];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:v10 == 1];
    v15 = [v12 setPreferenceFor:v13 value:v14 notify:1];
  }

LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_updateMXVolumeLimitStatus:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HAENUnknownDeviceManager *)self _isUnknownWiredHeadset:v4])
  {
    v5 = +[HAENDefaults sharedInstance];
    if ([v5 softwareVersionEnabled])
    {
    }

    else
    {
      v10 = _os_feature_enabled_impl();

      if ((v10 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v11 = +[HAENDefaults sharedInstance];
    v12 = [v11 isConnectedUnknownWiredDeviceHeadphone];

    if ((v12 & 1) == 0)
    {
      v13 = objc_alloc_init(MEMORY[0x277CEFB38]);
      v14 = [v13 setPreferenceFor:*MEMORY[0x277CEFAB0] value:&unk_2862C9790];
    }

LABEL_9:
    v6 = HAENotificationsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      v7 = "assuming connected unknown device is headphone.";
      v8 = v6;
      v9 = 2;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v6 = HAENotificationsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v4;
    v7 = "Calibrated wired connection: %@";
    v8 = v6;
    v9 = 12;
LABEL_11:
    _os_log_impl(&dword_25081E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v17, v9);
  }

LABEL_12:

  v15 = +[HAENVolumeControl sharedInstance];
  [v15 wiredHeadphoneConnected:1];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)surfaceAlertBox
{
  if (self->_alertPending)
  {
    v2 = HAENotificationsLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25081E000, v2, OS_LOG_TYPE_DEFAULT, "alert box pending...", buf, 2u);
    }
  }

  else
  {
    self->_alertPending = 1;
    v4 = HAENotificationsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25081E000, v4, OS_LOG_TYPE_DEFAULT, "surfacing alert box", buf, 2u);
    }

    *buf = 0;
    v7 = buf;
    v8 = 0x3042000000;
    v9 = __Block_byref_object_copy_;
    v10 = __Block_byref_object_dispose_;
    objc_initWeak(&v11, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __43__HAENUnknownDeviceManager_surfaceAlertBox__block_invoke;
    v5[3] = &unk_27969F308;
    v5[4] = self;
    v5[5] = buf;
    dispatch_async(MEMORY[0x277D85CD0], v5);
    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&v11);
  }
}

void __43__HAENUnknownDeviceManager_surfaceAlertBox__block_invoke(uint64_t a1)
{
  v26 = MEMORY[0x277CBEAC0];
  v27 = HAENLocalizationUtilityGetBundle();
  v1 = [v27 localizedStringForKey:@"AlertUnknownHeadsetTitle" value:&stru_2862C7158 table:0];
  v2 = *MEMORY[0x277CBF188];
  v3 = HAENLocalizationUtilityGetBundle();
  if (MGGetBoolAnswer())
  {
    v4 = @"AlertUnknownHeadsetMessage";
  }

  else
  {
    v4 = @"AlertUnknownHeadsetMessageNoHaptics";
  }

  v5 = [v3 localizedStringForKey:v4 value:&stru_2862C7158 table:0];
  v6 = *MEMORY[0x277CBF198];
  v7 = HAENLocalizationUtilityGetBundle();
  v8 = [v7 localizedStringForKey:@"AlertButtonHeadphone" value:&stru_2862C7158 table:0];
  v9 = *MEMORY[0x277CBF1E8];
  v10 = HAENLocalizationUtilityGetBundle();
  v11 = [v10 localizedStringForKey:@"AlertButtonOtherDevice" value:&stru_2862C7158 table:0];
  v12 = [v26 dictionaryWithObjectsAndKeys:{v1, v2, v5, v6, v8, v9, v11, *MEMORY[0x277CBF1C0], 0}];

  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  v14 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, v12);
  WeakRetained[2] = v14;
  responseFlags = 0;
  CFUserNotificationReceiveResponse(v14, 0.0, &responseFlags);
  v15 = responseFlags;
  v16 = HAENotificationsLog();
  v17 = v16;
  if (v15 == 1)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v30 = 0;
      _os_log_impl(&dword_25081E000, v17, OS_LOG_TYPE_INFO, "device is not a headphone", v30, 2u);
    }

    v23 = [*(a1 + 32) isUSBCPort];
    v19 = +[HAENDefaults sharedInstance];
    v17 = v19;
    if (v23)
    {
      v21 = WeakRetained[3];
      v20 = WeakRetained[4];
      v22 = 0;
      goto LABEL_14;
    }

    v24 = WeakRetained[3];
    v25 = 0;
LABEL_19:
    [v19 setAudioAccessoryIsConnectedToHeadphones:v25 withName:v24];
    goto LABEL_20;
  }

  if (!v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25081E000, v17, OS_LOG_TYPE_INFO, "device is a headphone", buf, 2u);
    }

    v18 = [*(a1 + 32) isUSBCPort];
    v19 = +[HAENDefaults sharedInstance];
    v17 = v19;
    if (v18)
    {
      v21 = WeakRetained[3];
      v20 = WeakRetained[4];
      v22 = 1;
LABEL_14:
      [v19 setAudioAccessoryIsConnectedToHeadphones:v22 withKey:v20 name:v21];
      goto LABEL_20;
    }

    v24 = WeakRetained[3];
    v25 = 1;
    goto LABEL_19;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_25081E000, v17, OS_LOG_TYPE_DEFAULT, "device is unknown", v29, 2u);
  }

LABEL_20:

  WeakRetained[2] = 0;
  *(WeakRetained + 48) = 0;
}

- (BOOL)_isAlertSupported
{
  v2 = MGGetStringAnswer();
  if ([v2 isEqualToString:@"iPhone"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"iPad"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"iPod"];
  }

  return v3;
}

- (BOOL)_shouldSurfaceAlert:(id)a3
{
  v4 = a3;
  v5 = +[HAENDefaults sharedInstance];
  if ([v5 isHAENFeatureEnabled])
  {
    v6 = 1;
  }

  else
  {
    v7 = +[HAENDefaults sharedInstance];
    if ([v7 isReduceLoudSoundEnabled])
    {
      v6 = 1;
    }

    else
    {
      v8 = +[HAENDefaults sharedInstance];
      if ([v8 isHKWriteEnabled])
      {
        v9 = +[HAENDefaults sharedInstance];
        if ([v9 isHAEOtherDevicesEnabled])
        {
          v6 = 1;
        }

        else
        {
          v6 = (_os_feature_enabled_impl() & 1) != 0 && [(HAENUnknownDeviceManager *)self isUSBCPort];
        }
      }

      else if (_os_feature_enabled_impl())
      {
        v6 = [(HAENUnknownDeviceManager *)self isUSBCPort];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  v10 = [(HAENUnknownDeviceManager *)self _isUnknownWiredHeadset:v4];
  return v10 && v6;
}

- (void)deviceSessionDestroyed:(id)a3 isWired:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    if (v4)
    {
      [(HAENUnknownDeviceManager *)self _wiredDeviceSessionDestroyed:v6];
    }

    v7 = +[HAENVolumeControl sharedInstance];
    [v7 applyVolumeLoweringAtNextSession];
  }

  else
  {
    v7 = HAENotificationsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [HAENUnknownDeviceManager deviceSessionDestroyed:v7 isWired:?];
    }
  }
}

- (void)_wiredDeviceSessionDestroyed:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 isEqualToString:self->_deviceName];

  if (v5)
  {
    notification = self->_notification;
    if (notification)
    {
      CFUserNotificationCancel(notification);
      self->_notification = 0;
      self->_alertPending = 0;
    }

    connectionCnt = self->_connectionCnt;
    v8 = __OFSUB__(connectionCnt--, 1);
    self->_connectionCnt = connectionCnt;
    if ((connectionCnt < 0) ^ v8 | (connectionCnt == 0))
    {
      v9 = HAENotificationsLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->_connectionCnt;
        v14 = 67109120;
        LODWORD(v15) = v10;
        _os_log_impl(&dword_25081E000, v9, OS_LOG_TYPE_DEFAULT, "reset wire due to ZERO session count: %d", &v14, 8u);
      }

      [(HAENUnknownDeviceManager *)self _resetWiredStatus];
    }
  }

  else
  {
    v11 = HAENotificationsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      deviceName = self->_deviceName;
      v14 = 138412290;
      v15 = deviceName;
      _os_log_impl(&dword_25081E000, v11, OS_LOG_TYPE_DEFAULT, "**** device [%@] already released?", &v14, 0xCu);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_resetWiredStatus
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_deviceName)
  {
    v3 = HAENotificationsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      deviceName = self->_deviceName;
      v8 = 138412290;
      v9 = deviceName;
      _os_log_impl(&dword_25081E000, v3, OS_LOG_TYPE_DEFAULT, "reset wired status: %@", &v8, 0xCu);
    }

    if ([(HAENUnknownDeviceManager *)self _isUnknownWiredHeadset:self->_deviceName])
    {
      v5 = objc_alloc_init(MEMORY[0x277CEFB38]);
      [v5 removePreferenceFor:*MEMORY[0x277CEFAB0]];
    }

    else
    {
      v5 = +[HAENVolumeControl sharedInstance];
      [v5 wiredHeadphoneConnected:0];
    }

    v6 = self->_deviceName;
    self->_deviceName = 0;
  }

  self->_connectionCnt = 0;
  self->_adamSessionID = 561211748;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)deviceSessionCreated:(uint64_t)a3 SessionID:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_25081E000, a2, a3, "no device UID in device information for wired headset %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerDevice:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_25081E000, a2, a3, "device registration is only for unknown USBC ports %@ ", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end