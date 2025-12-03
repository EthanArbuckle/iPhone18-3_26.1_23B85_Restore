@interface KeyboardBacklight
+ (unint64_t)getHashIDForDevice:(id)device;
- (BOOL)KBAuthenticationHandler:(id)handler;
- (BOOL)KBAutoBrightnessEnablePropertyHandler:(id)handler;
- (BOOL)KBAutoBrightnessSuspendPropertyHandler:(id)handler;
- (BOOL)KBAvailabilityUpdateHandler:(id)handler;
- (BOOL)KBBacklightLevelPropertyHandler:(id)handler;
- (BOOL)KBBrightnessPropertyHandler:(id)handler;
- (BOOL)KBClamshellUpdateHandler:(id)handler;
- (BOOL)KBDisplayBrightnessFactorPropertyHandler:(id)handler;
- (BOOL)KBIdleDimPropertyHandler:(id)handler;
- (BOOL)KBIdleDimTimeHandler:(id)handler;
- (BOOL)KBSuspendDimmingPropertyHandler:(id)handler;
- (BOOL)KBUpdateFrequencyHandler:(id)handler;
- (BOOL)KBUserActivityUpdateHandler:(id)handler;
- (BOOL)KBUserOffsetPropertyHandler:(id)handler;
- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)client;
- (BOOL)dimmed;
- (BOOL)handleHIDEvent:(__IOHIDEvent *)event from:(__IOHIDServiceClient *)from;
- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)client;
- (BOOL)retrieveKeyboardBacklightElements;
- (BOOL)setProperty:(id)property forKey:(id)key;
- (BOOL)suppressed;
- (KeyboardBacklight)initWithQueue:(id)queue device:(id)device ambientOffset:(float)offset;
- (NSString)description;
- (double)timeToNextBacklightUpdate;
- (float)brightness;
- (float)currentLuxToAmbient;
- (float)level;
- (id)brightnessUpdateReasonToString:(unint64_t)string;
- (id)copyPropertyForKey:(id)key;
- (id)newElementsArray;
- (void)calculateLevelPercentageAtAmbient:(float)ambient;
- (void)cancelScheduledBacklightUpdate;
- (void)commitCurrentBrightness;
- (void)dealloc;
- (void)didUpdateBacklightLevel:(float)level brightness:(float)brightness result:(BOOL)result error:(id)error;
- (void)endKeyDim;
- (void)forceBacklightUpdateRoutine;
- (void)forceLuxUpdate;
- (void)forceLuxUpdateRoutine;
- (void)getCurrentLux;
- (void)getKeyboardBacklightPreferences;
- (void)handleDeviceManagementArrival:(unsigned int)arrival;
- (void)handleLuxUpdate:(float)update;
- (void)handlePMUserActivityStateChanged:(unint64_t)changed;
- (void)rampToBrightness:(float)brightness withDuration:(unsigned int)duration;
- (void)resetKeyDimTimeout;
- (void)scheduleBacklightUpdate:(int)update;
- (void)sendNotificationForKey:(id)key withValue:(id)value;
- (void)sendSuppressedNotification;
- (void)setBacklightLevel:(float)level;
- (void)setBrightness:(float)brightness;
- (void)setBrightness:(float)brightness withFadeSpeed:(int)speed commit:(BOOL)commit;
- (void)setClamshellClosed:(BOOL)closed;
- (void)setDimmed:(BOOL)dimmed;
- (void)setKBPreferenceBacklightMaxUser;
- (void)setKeyboardAvailable:(BOOL)available;
- (void)setManualAdjust:(BOOL)adjust;
- (void)setMuted:(BOOL)muted;
- (void)setSaturated:(BOOL)saturated;
- (void)setSuspend:(BOOL)suspend;
- (void)setUserActive:(BOOL)active;
- (void)start;
- (void)startKBDeviceManagementServiceLookup;
- (void)startRamp;
- (void)stop;
- (void)stopKBDeviceManagementServiceLookup;
- (void)stopRamp;
- (void)storeKeyboardBacklightPreferences;
- (void)timerRoutine:(id)routine;
- (void)toggleMute;
- (void)updateAmbientOffset;
- (void)updateAuthentication:(BOOL)authentication;
- (void)updateBacklightDeviceWithFadeSpeed:(int)speed commit:(BOOL)commit reason:(unint64_t)reason;
- (void)updateBacklightDeviceWithReason:(unint64_t)reason;
@end

@implementation KeyboardBacklight

- (KeyboardBacklight)initWithQueue:(id)queue device:(id)device ambientOffset:(float)offset
{
  v58 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v53 = a2;
  queueCopy = queue;
  deviceCopy = device;
  offsetCopy = offset;
  v49.receiver = self;
  v49.super_class = KeyboardBacklight;
  selfCopy = [(CBModule *)&v49 initWithQueue:queue];
  if (selfCopy)
  {
    v5 = MEMORY[0x1E69E5928](deviceCopy);
    selfCopy->_device = v5;
    selfCopy->_suspend = 0;
    selfCopy->_saturated = 0;
    selfCopy->_manualAdjust = 1;
    selfCopy->_autoAdjust = 1;
    selfCopy->_dimmed = 0;
    selfCopy->_muted = 0;
    selfCopy->_keyboardAvailable = 1;
    selfCopy->_userActive = 1;
    selfCopy->_displayOn = 1;
    selfCopy->_levelMin = 0.0;
    selfCopy->_levelMax = 0.0;
    selfCopy->_levelOff = 0.0;
    selfCopy->_dimTime = 30;
    selfCopy->_levelPercentage = 1.0;
    selfCopy->_ambientSlope = 1.0;
    selfCopy->_ambientLowThreshold = 0.766;
    selfCopy->_ambientHighThreshold = 0.832;
    selfCopy->_ambientOffset = offsetCopy;
    selfCopy->_builtIn = 0;
    selfCopy->_keyboardID = 0;
    selfCopy->_activityNotificationHandle = 0;
    selfCopy->_numOfBacklightUpdateRetries = 0;
    selfCopy->_suspendDimming = 0;
    selfCopy->_turnOnBacklightDelayMS = 0;
    selfCopy->_forceDelayToTurnOnBacklight = 0;
    selfCopy->_clamshellClosed = 0;
    selfCopy->_currentLevel = 0.0;
    selfCopy->_currentBrightness = 0.0;
    selfCopy->_currentFadeSpeed = 0;
    selfCopy->_currentEnableState = 0;
    selfCopy->_backlightUpdateType = 1;
    selfCopy->_previousLevel = 0.0;
    selfCopy->_previousLevelPercentage = 0.0;
    selfCopy->_backlightUpdateInProgress = 0;
    selfCopy->_lastBacklightUpdate = 0;
    if (mach_timebase_info(&selfCopy->_clockInfo))
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      oslog = inited;
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        v27 = type;
        __os_log_helper_16_0_0(v46);
        _os_log_error_impl(&dword_1DE8E5000, log, v27, "Failed to create mach timebase info.", v46, 2u);
      }

LABEL_59:
      MEMORY[0x1E69E5920](selfCopy);
      v55 = 0;
      goto LABEL_60;
    }

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    selfCopy->_alsServiceClients = v6;
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    selfCopy->_keyboardSpecificPreferences = v7;
    if ([(KeyboardBacklight *)selfCopy supportsAuthentication])
    {
      v8 = "Secondary";
    }

    else
    {
      v8 = "default";
    }

    v9 = os_log_create("com.apple.CoreBrightness.KeyboardBacklight", v8);
    selfCopy->super._logHandle = v9;
    if (!selfCopy->super._logHandle)
    {
      v25 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
      v45 = v25;
      v44 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v23 = v45;
        v24 = v44;
        __os_log_helper_16_0_0(v43);
        _os_log_error_impl(&dword_1DE8E5000, v23, v24, "Failed to create logHandle", v43, 2u);
      }
    }

    selfCopy->_backlightUpdateFrequency = 60;
    selfCopy->_deviceManagementArrivalNotificationPort = 0;
    selfCopy->_deviceManagementArrivalIterator = 0;
    v42 = [(HIDDevice *)selfCopy->_device propertyForKey:@"ProductID"];
    if (v42)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v42 intValue] == 1108 || objc_msgSend(v42, "intValue") == 1109))
      {
        selfCopy->_backlightUpdateFrequency = 15;
      }
    }

    v41 = [(HIDDevice *)selfCopy->_device propertyForKey:@"VendorID"];
    if (v41)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v41 intValue] == 1133)
      {
        selfCopy->_backlightUpdateFrequency = 15;
        selfCopy->_turnOnBacklightDelayMS = 0;
      }
    }

    bzero(__s1, 0x400uLL);
    v40 = 1024;
    if (!sysctlbyname("kern.bootargs", __s1, &v40, 0, 0))
    {
      v39 = strstr(__s1, "kb_backlight_update_hz");
      if (v39)
      {
        v39 += 22;
        v38 = strtol(v39 + 1, 0, 0);
        if (v38 > 0)
        {
          selfCopy->_backlightUpdateFrequency = v38;
        }
      }
    }

    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v21 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v21 = init_default_corebrightness_log();
      }

      logHandle = v21;
    }

    v37 = logHandle;
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(HIDDevice *)selfCopy->_device propertyForKey:@"VendorID"];
      v10 = [(HIDDevice *)selfCopy->_device propertyForKey:@"ProductID"];
      __os_log_helper_16_2_3_8_64_8_64_4_0(v56, v20, v10, selfCopy->_backlightUpdateFrequency);
      _os_log_impl(&dword_1DE8E5000, v37, v36, "[VID=%@] [PID=%@] Update frequency = %d", v56, 0x1Cu);
    }

    if (selfCopy->super._logHandle)
    {
      v19 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v18 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v18 = init_default_corebrightness_log();
      }

      v19 = v18;
    }

    v35 = v19;
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v35;
      v17 = v34;
      __os_log_helper_16_0_0(v33);
      _os_log_impl(&dword_1DE8E5000, v16, v17, "Open HIDDevice", v33, 2u);
    }

    [(HIDDevice *)selfCopy->_device open];
    if (![(KeyboardBacklight *)selfCopy retrieveKeyboardBacklightElements])
    {
      if (selfCopy->super._logHandle)
      {
        v15 = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v14 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v14 = init_default_corebrightness_log();
        }

        v15 = v14;
      }

      v31 = v15;
      v30 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v12 = v31;
        v13 = v30;
        __os_log_helper_16_0_0(v29);
        _os_log_error_impl(&dword_1DE8E5000, v12, v13, "Initialization of KeyboardBacklight failed", v29, 2u);
      }

      goto LABEL_59;
    }

    [(HIDDevice *)selfCopy->_device setDispatchQueue:selfCopy->super._queue];
  }

  v55 = selfCopy;
LABEL_60:
  *MEMORY[0x1E69E9840];
  return v55;
}

- (void)dealloc
{
  selfCopy = self;
  v11 = a2;
  if (self->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v10 = logHandle;
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v10;
    type = v9;
    __os_log_helper_16_0_0(v8);
    _os_log_impl(&dword_1DE8E5000, log, type, "Dealloc", v8, 2u);
  }

  [(HIDDevice *)selfCopy->_device close];
  MEMORY[0x1E69E5920](selfCopy->_levelElement);
  MEMORY[0x1E69E5920](selfCopy->_levelFadeSpeedElement);
  MEMORY[0x1E69E5920](selfCopy->_enableElement);
  MEMORY[0x1E69E5920](selfCopy->_enableFadeSpeedElement);
  MEMORY[0x1E69E5920](selfCopy->_enableAuthenticationElement);
  MEMORY[0x1E69E5920](selfCopy->_device);
  MEMORY[0x1E69E5920](selfCopy->_alsServiceClients);
  MEMORY[0x1E69E5920](selfCopy->_properties);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_keyboardSpecificPreferences).n128_u64[0];
  v7.receiver = selfCopy;
  v7.super_class = KeyboardBacklight;
  [(CBModule *)&v7 dealloc];
}

- (void)stop
{
  selfCopy = self;
  v17 = a2;
  if (self->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v16 = logHandle;
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v16;
    type = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_impl(&dword_1DE8E5000, log, type, "Stop", v14, 2u);
  }

  [(HIDDevice *)selfCopy->_device cancel];
  [(KeyboardBacklight *)selfCopy stopKBDeviceManagementServiceLookup];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, selfCopy, @"com.apple.springboard.deviceWillShutDown", 0);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = [v3 initWithUTF8String:*MEMORY[0x1E69A28E0]];
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, selfCopy, v13, 0);
  *&v5 = MEMORY[0x1E69E5920](v13).n128_u64[0];
  if (selfCopy->_forceLuxUpdateTimer)
  {
    dispatch_source_cancel(selfCopy->_forceLuxUpdateTimer);
    dispatch_release(selfCopy->_forceLuxUpdateTimer);
    selfCopy->_forceLuxUpdateTimer = 0;
  }

  if (selfCopy->_backlightUpdateTimer)
  {
    dispatch_source_cancel(selfCopy->_backlightUpdateTimer);
    dispatch_release(selfCopy->_backlightUpdateTimer);
    selfCopy->_backlightUpdateTimer = 0;
  }

  selfCopy->_numOfBacklightUpdateRetries = 0;
  if (selfCopy->_rampTimer)
  {
    dispatch_source_cancel(selfCopy->_rampTimer);
    dispatch_release(selfCopy->_rampTimer);
    selfCopy->_rampTimer = 0;
  }

  if (selfCopy->_activityNotificationHandle)
  {
    v8 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
    activityNotificationHandle = selfCopy->_activityNotificationHandle;
    IOPMUnregisterNotification();
    selfCopy->_activityNotificationHandle = 0;
  }

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:selfCopy name:@"com.apple.AmbientLightSensorHID.PreferencesChanged" object:0];
}

- (void)start
{
  v50 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v44 = a2;
  [(HIDDevice *)self->_device activate];
  if (selfCopy->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v43 = logHandle;
  v42 = 2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    log = v43;
    type = v42;
    __os_log_helper_16_0_0(v41);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "Get properties for Keyboard Backlight", v41, 2u);
  }

  selfCopy->_properties = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v40 = [(HIDDevice *)selfCopy->_device propertyForKey:@"KeyboardUniqueID"];
  if (v40)
  {
    -[KeyboardBacklight setKeyboardID:](selfCopy, "setKeyboardID:", [v40 unsignedIntegerValue]);
    if (selfCopy->super._logHandle)
    {
      v21 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v20 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v20 = init_default_corebrightness_log();
      }

      v21 = v20;
    }

    v39 = v21;
    v38 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_66(v49, v40);
      _os_log_impl(&dword_1DE8E5000, v39, v38, "KeyboardID = %{public}@", v49, 0xCu);
    }
  }

  else
  {
    selfCopy->_keyboardID = [KeyboardBacklight getHashIDForDevice:selfCopy->_device];
    if (selfCopy->super._logHandle)
    {
      v19 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v18 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v18 = init_default_corebrightness_log();
      }

      v19 = v18;
    }

    v37 = v19;
    v36 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v48, selfCopy->_keyboardID);
      _os_log_debug_impl(&dword_1DE8E5000, v37, v36, "Keyboard ID = %lu", v48, 0xCu);
    }
  }

  v35 = [(HIDDevice *)selfCopy->_device propertyForKey:@"Built-In"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy->_builtIn = [v35 BOOLValue];
    if (selfCopy->super._logHandle)
    {
      v17 = selfCopy->super._logHandle;
    }

    else
    {
      v16 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v17 = v16;
    }

    v34 = v17;
    v33 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_66(v47, v35);
      _os_log_impl(&dword_1DE8E5000, v34, v33, "builtIn = %{public}@", v47, 0xCu);
    }
  }

  [(KeyboardBacklight *)selfCopy getKeyboardBacklightPreferences];
  [(KeyboardBacklight *)selfCopy storeKeyboardBacklightPreferences];
  [(KeyboardBacklight *)selfCopy resetKeyDimTimeout];
  if (selfCopy->super._logHandle)
  {
    v15 = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v14 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v14 = init_default_corebrightness_log();
    }

    v15 = v14;
  }

  v32 = v15;
  v31 = 2;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v12 = v32;
    v13 = v31;
    __os_log_helper_16_0_0(v30);
    _os_log_debug_impl(&dword_1DE8E5000, v12, v13, "Registering for device shutdown notification", v30, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, selfCopy, handleShutdownNotification, @"com.apple.springboard.deviceWillShutDown", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  if (selfCopy->super._logHandle)
  {
    v11 = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v10 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v10 = init_default_corebrightness_log();
    }

    v11 = v10;
  }

  v29 = v11;
  v28 = 2;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v8 = v29;
    v9 = v28;
    __os_log_helper_16_0_0(v27);
    _os_log_debug_impl(&dword_1DE8E5000, v8, v9, "Registering for keyboard availability notification", v27, 2u);
  }

  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = MEMORY[0x1E69A28E0];
  v26 = [v3 initWithUTF8String:*MEMORY[0x1E69A28E0]];
  center = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(center, selfCopy, handleAvailabilityNotification, [MEMORY[0x1E696AEC0] stringWithUTF8String:*v6], 0, 0);
  MEMORY[0x1E69E5920](v26);
  if (selfCopy->super._logHandle)
  {
    v5 = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v4 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v4 = init_default_corebrightness_log();
    }

    v5 = v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v46, selfCopy);
    _os_log_debug_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEBUG, "%@", v46, 0xCu);
  }

  [(KeyboardBacklight *)selfCopy startKBDeviceManagementServiceLookup];
  *MEMORY[0x1E69E9840];
}

- (void)startKBDeviceManagementServiceLookup
{
  v10 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  self->_deviceManagementArrivalNotificationPort = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  IONotificationPortSetDispatchQueue(self->_deviceManagementArrivalNotificationPort, self->super._queue);
  deviceManagementArrivalNotificationPort = self->_deviceManagementArrivalNotificationPort;
  v2 = IOServiceMatching("AppleDeviceManagementHIDEventService");
  if (!IOServiceAddMatchingNotification(deviceManagementArrivalNotificationPort, "IOServiceFirstMatch", v2, deviceManagementArrivalCallback, self, &self->_deviceManagementArrivalIterator) && self->_deviceManagementArrivalIterator)
  {
    while (1)
    {
      v7 = IOIteratorNext(self->_deviceManagementArrivalIterator);
      if (!v7)
      {
        break;
      }

      if (self->super._logHandle)
      {
        logHandle = self->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        logHandle = inited;
      }

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_4_0(v9, v7);
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Found device management service (%u)", v9, 8u);
      }

      [(KeyboardBacklight *)self handleDeviceManagementArrival:v7];
    }
  }

  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
}

- (void)stopKBDeviceManagementServiceLookup
{
  if (self->_deviceManagementArrivalNotificationPort)
  {
    IONotificationPortDestroy(self->_deviceManagementArrivalNotificationPort);
    self->_deviceManagementArrivalNotificationPort = 0;
  }

  if (self->_deviceManagementArrivalIterator)
  {
    IOObjectRelease(self->_deviceManagementArrivalIterator);
    self->_deviceManagementArrivalIterator = 0;
  }
}

- (void)handleDeviceManagementArrival:(unsigned int)arrival
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v25 = a2;
  arrivalCopy = arrival;
  if (arrival)
  {
    CFProperty = IORegistryEntryCreateCFProperty(arrivalCopy, @"ColorID", *MEMORY[0x1E695E480], 0);
    if (CFProperty && (v13 = CFGetTypeID(CFProperty), v13 == CFNumberGetTypeID()))
    {
      valuePtr = 0;
      CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
      if (selfCopy->super._logHandle)
      {
        logHandle = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        logHandle = inited;
      }

      v21 = logHandle;
      v20 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_4_0(v27, valuePtr);
        _os_log_impl(&dword_1DE8E5000, v21, v20, "Found device colorID = %d", v27, 8u);
      }

      [(KeyboardBacklight *)selfCopy setColor:valuePtr];
    }

    else
    {
      if (selfCopy->super._logHandle)
      {
        v10 = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v9 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v9 = init_default_corebrightness_log();
        }

        v10 = v9;
      }

      v19 = v10;
      v18 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v19;
        v8 = v18;
        __os_log_helper_16_0_0(v17);
        _os_log_impl(&dword_1DE8E5000, v7, v8, "Device color is not present", v17, 2u);
      }
    }

    if (CFProperty)
    {
      CFRelease(CFProperty);
    }
  }

  else
  {
    if (selfCopy->super._logHandle)
    {
      v6 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v5 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v5 = init_default_corebrightness_log();
      }

      v6 = v5;
    }

    v16 = v6;
    v15 = 16;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v3 = v16;
      v4 = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_error_impl(&dword_1DE8E5000, v3, v4, "No service", v14, 2u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)retrieveKeyboardBacklightElements
{
  v100 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v94 = a2;
  v93 = 0;
  v92 = &unk_1F59C98A8;
  v2 = [(HIDDevice *)self->_device elementsMatching:&unk_1F59C98A8];
  v91 = MEMORY[0x1E69E5928](v2);
  if (![v91 count])
  {
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
    }

    else
    {
      v63 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      logHandle = v63;
    }

    oslog = logHandle;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v62 = type;
      __os_log_helper_16_0_0(v88);
      _os_log_error_impl(&dword_1DE8E5000, log, v62, "HID elements not found.", v88, 2u);
    }
  }

  memset(__b, 0, sizeof(__b));
  obj = v91;
  v60 = [v91 countByEnumeratingWithState:__b objects:v99 count:16];
  if (v60)
  {
    v56 = *__b[2];
    v57 = 0;
    v58 = v60;
    while (1)
    {
      v55 = v57;
      if (*__b[2] != v56)
      {
        objc_enumerationMutation(obj);
      }

      v87 = 0;
      v87 = *(__b[1] + 8 * v57);
      if ([v87 type] == 257)
      {
        if (selfCopy->super._logHandle)
        {
          v54 = selfCopy->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          v54 = inited;
        }

        v85 = v54;
        v84 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          v51 = v85;
          v52 = v84;
          usage = [v87 usage];
          usagePage = [v87 usagePage];
          reportID = [v87 reportID];
          unit = [v87 unit];
          reportSize = [v87 reportSize];
          logicalMax = [v87 logicalMax];
          __os_log_helper_16_0_7_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v98, usage, usagePage, reportID, unit, reportSize, logicalMax, [v87 logicalMin]);
          _os_log_debug_impl(&dword_1DE8E5000, v51, v52, "usage = 0x%lx, usage page = 0x%lx, reportID = %ld, unit = 0x%lx, reportSize = %ld, max logical = %ld, min logical = %ld", v98, 0x48u);
        }

        usage2 = [v87 usage];
        switch(usage2)
        {
          case 1:
            v3 = MEMORY[0x1E69E5928](v87);
            selfCopy->_levelElement = v3;
            v4 = scaleForExponent([v87 unitExponent]);
            [(KeyboardBacklight *)selfCopy setUnitExponent:v4];
            logicalMin = [v87 logicalMin];
            *&v5 = logicalMin / [(KeyboardBacklight *)selfCopy unitExponent];
            [(KeyboardBacklight *)selfCopy setLevelMin:v5];
            logicalMax2 = [v87 logicalMax];
            *&v6 = logicalMax2 / [(KeyboardBacklight *)selfCopy unitExponent];
            [(KeyboardBacklight *)selfCopy setLevelMax:v6];
            [(KeyboardBacklight *)selfCopy setLevelOff:0.0];
            unit2 = [v87 unit];
            [(KeyboardBacklight *)selfCopy setLevelUnit:unit2];
            if (selfCopy->super._logHandle)
            {
              v41 = selfCopy->super._logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v40 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v40 = init_default_corebrightness_log();
              }

              v41 = v40;
            }

            v83 = v41;
            v82 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              v38 = v83;
              v39 = v82;
              [(KeyboardBacklight *)selfCopy levelMin];
              *&v37 = v8;
              [(KeyboardBacklight *)selfCopy levelMax];
              __os_log_helper_16_0_3_8_0_8_0_4_0(v97, v37, COERCE__INT64(v9), [(KeyboardBacklight *)selfCopy unitExponent]);
              _os_log_debug_impl(&dword_1DE8E5000, v38, v39, "found Level element with min = %f, max = %f, exponent = %d", v97, 0x1Cu);
            }

            break;
          case 2:
            v10 = MEMORY[0x1E69E5928](v87);
            selfCopy->_levelFadeSpeedElement = v10;
            if (selfCopy->super._logHandle)
            {
              v36 = selfCopy->super._logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v35 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v35 = init_default_corebrightness_log();
              }

              v36 = v35;
            }

            v81 = v36;
            v80 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              v33 = v81;
              v34 = v80;
              __os_log_helper_16_0_0(v79);
              _os_log_debug_impl(&dword_1DE8E5000, v33, v34, "found level fade speed element", v79, 2u);
            }

            break;
          case 3:
            v11 = MEMORY[0x1E69E5928](v87);
            selfCopy->_enableElement = v11;
            if (selfCopy->super._logHandle)
            {
              v32 = selfCopy->super._logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v31 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v31 = init_default_corebrightness_log();
              }

              v32 = v31;
            }

            v78 = v32;
            v77 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              v29 = v78;
              v30 = v77;
              __os_log_helper_16_0_0(v76);
              _os_log_debug_impl(&dword_1DE8E5000, v29, v30, "found Enable element", v76, 2u);
            }

            break;
          case 4:
            v12 = MEMORY[0x1E69E5928](v87);
            selfCopy->_enableFadeSpeedElement = v12;
            if (selfCopy->super._logHandle)
            {
              v28 = selfCopy->super._logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v27 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v27 = init_default_corebrightness_log();
              }

              v28 = v27;
            }

            v75 = v28;
            v74 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v25 = v75;
              v26 = v74;
              __os_log_helper_16_0_0(v73);
              _os_log_debug_impl(&dword_1DE8E5000, v25, v26, "found enable fade speed element", v73, 2u);
            }

            break;
          case 5:
            v13 = MEMORY[0x1E69E5928](v87);
            selfCopy->_enableAuthenticationElement = v13;
            if (selfCopy->super._logHandle)
            {
              v24 = selfCopy->super._logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v23 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v23 = init_default_corebrightness_log();
              }

              v24 = v23;
            }

            v72 = v24;
            v71 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v21 = v72;
              v22 = v71;
              __os_log_helper_16_0_0(v70);
              _os_log_impl(&dword_1DE8E5000, v21, v22, "found auth element", v70, 2u);
            }

            break;
          default:
            if (selfCopy->super._logHandle)
            {
              v20 = selfCopy->super._logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v19 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v19 = init_default_corebrightness_log();
              }

              v20 = v19;
            }

            v69 = v20;
            v68 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_0_1_8_0(v96, [v87 usage]);
              _os_log_debug_impl(&dword_1DE8E5000, v69, v68, "Unknown element with usage = %ld", v96, 0xCu);
            }

            break;
        }
      }

      ++v57;
      if (v55 + 1 >= v58)
      {
        v57 = 0;
        v58 = [obj countByEnumeratingWithState:__b objects:v99 count:16];
        if (!v58)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](v91);
  if (selfCopy->_levelElement && selfCopy->_levelFadeSpeedElement)
  {
    v93 = 1;
  }

  else
  {
    if (selfCopy->super._logHandle)
    {
      v18 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v17 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v17 = init_default_corebrightness_log();
      }

      v18 = v17;
    }

    v67 = v18;
    v66 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v15 = v67;
      v16 = v66;
      __os_log_helper_16_0_0(v65);
      _os_log_error_impl(&dword_1DE8E5000, v15, v16, "Elements to set keyboard backlight level are not available", v65, 2u);
    }
  }

  *MEMORY[0x1E69E9840];
  return v93 & 1;
}

- (NSString)description
{
  v28 = MEMORY[0x1E696AEC0];
  [(KeyboardBacklight *)self currentLux];
  v13 = v2;
  [(KeyboardBacklight *)self brightness];
  v14 = v3;
  [(KeyboardBacklight *)self levelPercentage];
  v15 = v4;
  saturated = [(KeyboardBacklight *)self saturated];
  manualAdjust = [(KeyboardBacklight *)self manualAdjust];
  autoAdjust = [(KeyboardBacklight *)self autoAdjust];
  suppressed = [(KeyboardBacklight *)self suppressed];
  dimmed = [(KeyboardBacklight *)self dimmed];
  muted = [(KeyboardBacklight *)self muted];
  [(KeyboardBacklight *)self levelMin];
  v22 = v5;
  [(KeyboardBacklight *)self levelMax];
  v23 = v6;
  [(KeyboardBacklight *)self levelOff];
  v24 = v7;
  [(KeyboardBacklight *)self ambientOffset];
  v25 = v8;
  [(KeyboardBacklight *)self ambientSlope];
  v26 = v9;
  [(KeyboardBacklight *)self ambientLowThreshold];
  v27 = v10;
  [(KeyboardBacklight *)self ambientHighThreshold];
  return [v28 stringWithFormat:@"currentLux %f brightness %f levelPercentage %f saturated %d manualAdjust %d autoAdjust %d suppressed %d dimmed %d muted %d levelMin %f levelMax %f levelOff %f ambientOffset %f ambientSlope %f ambientLowThreshold %f ambientHighThreshold %f suspend %d userActive %d HW available %d", *&v13, *&v14, *&v15, saturated, manualAdjust, autoAdjust, suppressed, dimmed, muted, *&v22, *&v23, *&v24, *&v25, *&v26, *&v27, v11, -[KeyboardBacklight suspend](self, "suspend"), -[KeyboardBacklight userActive](self, "userActive"), -[KeyboardBacklight keyboardAvailable](self, "keyboardAvailable")];
}

- (BOOL)suppressed
{
  v3 = 1;
  if (![(KeyboardBacklight *)self dimmed])
  {
    v3 = 1;
    if (![(KeyboardBacklight *)self muted])
    {
      v3 = 1;
      if ([(KeyboardBacklight *)self userActive])
      {
        v3 = 1;
        if ([(KeyboardBacklight *)self keyboardAvailable])
        {
          return [(KeyboardBacklight *)self clamshellClosed];
        }
      }
    }
  }

  return v3;
}

- (BOOL)dimmed
{
  v3 = 0;
  if (self->_dimmed)
  {
    return !self->_suspendDimming;
  }

  return v3;
}

- (void)setDimmed:(BOOL)dimmed
{
  v9 = *MEMORY[0x1E69E9840];
  if (dimmed != self->_dimmed)
  {
    suppressed = [(KeyboardBacklight *)self suppressed];
    self->_dimmed = dimmed;
    if (suppressed != [(KeyboardBacklight *)self suppressed])
    {
      [(KeyboardBacklight *)self sendSuppressedNotification];
    }

    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v8, self->_dimmed);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "keyboard backlight dimmed %d", v8, 8u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)setSuspend:(BOOL)suspend
{
  v7 = *MEMORY[0x1E69E9840];
  if (suspend != self->_suspend)
  {
    self->_suspend = suspend;
    if (self->_suspend)
    {
      [(KeyboardBacklight *)self stopRamp];
    }

    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v6, self->_suspend);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Suspend auto-brightness = %d", v6, 8u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)setUserActive:(BOOL)active
{
  v9 = *MEMORY[0x1E69E9840];
  if (active != self->_userActive)
  {
    suppressed = [(KeyboardBacklight *)self suppressed];
    self->_userActive = active;
    if (suppressed != [(KeyboardBacklight *)self suppressed])
    {
      [(KeyboardBacklight *)self sendSuppressedNotification];
    }

    if (!self->_userActive)
    {
      [(KeyboardBacklight *)self setSuspend:0];
    }

    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v8, self->_userActive);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "User activity %d", v8, 8u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)setKeyboardAvailable:(BOOL)available
{
  v9 = *MEMORY[0x1E69E9840];
  if (available != self->_keyboardAvailable)
  {
    suppressed = [(KeyboardBacklight *)self suppressed];
    self->_keyboardAvailable = available;
    if (suppressed != [(KeyboardBacklight *)self suppressed])
    {
      [(KeyboardBacklight *)self sendSuppressedNotification];
    }

    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v8, self->_keyboardAvailable);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "HW keyboard availability %d", v8, 8u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)setClamshellClosed:(BOOL)closed
{
  v10 = *MEMORY[0x1E69E9840];
  if (closed != self->_clamshellClosed)
  {
    suppressed = [(KeyboardBacklight *)self suppressed];
    self->_clamshellClosed = closed;
    if (suppressed != [(KeyboardBacklight *)self suppressed])
    {
      [(KeyboardBacklight *)self sendSuppressedNotification];
    }

    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (closed)
      {
        v3 = "closed";
      }

      else
      {
        v3 = "opened";
      }

      __os_log_helper_16_2_1_8_32(v9, v3);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Clamshell is %s.", v9, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)sendSuppressedNotification
{
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{-[KeyboardBacklight suppressed](self, "suppressed")}];
  [(KeyboardBacklight *)self sendNotificationForKey:@"KeyboardBacklightSuppressed" withValue:v2];
  MEMORY[0x1E69E5920](v2);
}

- (void)updateAuthentication:(BOOL)authentication
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v15 = a2;
  authenticationCopy = authentication;
  if ([(KeyboardBacklight *)self supportsAuthentication]&& selfCopy->_enableAuthenticationElement)
  {
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    v13 = logHandle;
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (authenticationCopy)
      {
        v3 = "Start";
      }

      else
      {
        v3 = "Stop";
      }

      __os_log_helper_16_2_1_8_32(v19, v3);
      _os_log_impl(&dword_1DE8E5000, v13, v12, "%s authentication", v19, 0xCu);
    }

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = 0;
    [(HIDElement *)selfCopy->_enableAuthenticationElement setIntegerValue:authenticationCopy];
    [v11 addObject:selfCopy->_enableAuthenticationElement];
    if (([(HIDDevice *)selfCopy->_device commitElements:v11 direction:1 error:&v10]& 1) != 0)
    {
      if (selfCopy->super._logHandle)
      {
        v5 = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v4 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v4 = init_default_corebrightness_log();
        }

        v5 = v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_4_0(v17, authenticationCopy);
        _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "Authentication updated successfully = %d", v17, 8u);
      }
    }

    else
    {
      if (selfCopy->super._logHandle)
      {
        v7 = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v6 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v6 = init_default_corebrightness_log();
        }

        v7 = v6;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_66(v18, v10);
        _os_log_error_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_ERROR, "Failed to set authentication %{public}@", v18, 0xCu);
      }
    }

    MEMORY[0x1E69E5920](v11);
  }

  *MEMORY[0x1E69E9840];
}

- (void)toggleMute
{
  [(KeyboardBacklight *)self setMuted:[(KeyboardBacklight *)self muted]^ 1];
  if ([(KeyboardBacklight *)self manualAdjust])
  {
    [(KeyboardBacklight *)self setSaturated:0];
  }

  [(KeyboardBacklight *)self updateBacklightDevice];
}

- (void)setMuted:(BOOL)muted
{
  if (self->_muted != muted)
  {
    suppressed = [(KeyboardBacklight *)self suppressed];
    self->_muted = muted;
    if (suppressed != [(KeyboardBacklight *)self suppressed])
    {
      [(KeyboardBacklight *)self sendSuppressedNotification];
    }

    [CBKeyboardPreferencesManager setBoolPreference:self->_muted forKey:@"KeyboardBacklightMuted"];
  }
}

- (void)setManualAdjust:(BOOL)adjust
{
  LOBYTE(v3) = 1;
  if (!adjust)
  {
    v3 = ![(KeyboardBacklight *)self autoAdjust];
  }

  self->_manualAdjust = v3 & 1;
}

- (void)setSaturated:(BOOL)saturated
{
  v12 = *MEMORY[0x1E69E9840];
  saturated = self->_saturated;
  autoAdjust = 0;
  if (saturated)
  {
    autoAdjust = [(KeyboardBacklight *)self autoAdjust];
  }

  self->_saturated = autoAdjust;
  if (saturated != self->_saturated)
  {
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      v4 = self->_saturated;
      [(KeyboardBacklight *)self currentLux];
      __os_log_helper_16_0_2_4_0_8_0(v11, v4, COERCE__INT64(v3));
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "keyboard backlight saturated %d (Lux=%f)", v11, 0x12u);
    }

    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->_saturated];
    [(KeyboardBacklight *)self sendNotificationForKey:@"KeyboardBacklightSaturated" withValue:v8];
    MEMORY[0x1E69E5920](v8);
  }

  *MEMORY[0x1E69E9840];
}

- (float)brightness
{
  if ([(KeyboardBacklight *)self suppressed]|| [(KeyboardBacklight *)self saturated])
  {
    [(KeyboardBacklight *)self levelOff];
    return v2;
  }

  else
  {
    [(KeyboardBacklight *)self levelPercentage];
    return v3;
  }
}

- (void)setBrightness:(float)brightness
{
  v33 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v29 = a2;
  brightnessCopy = brightness;
  if (self->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v27 = logHandle;
  v26 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_8_0_4_0(v32, COERCE__INT64(brightnessCopy), [(KeyboardBacklight *)selfCopy manualAdjust]);
    _os_log_debug_impl(&dword_1DE8E5000, v27, v26, "Requested keyboard brightness %f, manualAdjust %d", v32, 0x12u);
  }

  if ([(KeyboardBacklight *)selfCopy manualAdjust])
  {
    v24 = 0.0;
    *&v3 = LODWORD(brightnessCopy);
    v23 = brightnessCopy;
    if (brightnessCopy <= 0.0)
    {
      v12 = v24;
    }

    else
    {
      v12 = v23;
    }

    v22 = v12;
    v25 = v12;
    v21 = 1.0;
    if (v12 >= 1.0)
    {
      v11 = v21;
    }

    else
    {
      v11 = v25;
    }

    v20 = v11;
    *&v3 = v11;
    [(KeyboardBacklight *)selfCopy setLevelPercentage:v3];
    [(KeyboardBacklight *)selfCopy setSaturated:0];
    [(KeyboardBacklight *)selfCopy levelPercentage];
    [(KeyboardBacklight *)selfCopy setMuted:v4 == 0.0];
    [(KeyboardBacklight *)selfCopy levelPercentage];
    [CBKeyboardPreferencesManager setFloatPreference:@"KeyboardBacklightManualBrightness" forKey:?];
    [(KeyboardBacklight *)selfCopy updateAmbientOffset];
    [(KeyboardBacklight *)selfCopy updateBacklightDeviceWithReason:1];
    if (selfCopy->super._logHandle)
    {
      v10 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v9 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v9 = init_default_corebrightness_log();
      }

      v10 = v9;
    }

    v19 = v10;
    v18 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v31, selfCopy);
      _os_log_debug_impl(&dword_1DE8E5000, v19, v18, "%@", v31, 0xCu);
    }
  }

  else
  {
    if (selfCopy->super._logHandle)
    {
      v8 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v7 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v7 = init_default_corebrightness_log();
      }

      v8 = v7;
    }

    v17 = v8;
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v17;
      v6 = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_impl(&dword_1DE8E5000, v5, v6, "Manual keyboard brightness adjustment not allowed", v15, 2u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)setBrightness:(float)brightness withFadeSpeed:(int)speed commit:(BOOL)commit
{
  v37 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v33 = a2;
  brightnessCopy = brightness;
  speedCopy = speed;
  commitCopy = commit;
  if (self->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v29 = logHandle;
  v28 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_4_8_0_4_0_4_0_4_0(v36, COERCE__INT64(brightnessCopy), [(KeyboardBacklight *)selfCopy manualAdjust], speedCopy, commitCopy);
    _os_log_debug_impl(&dword_1DE8E5000, v29, v28, "Requested keyboard brightness %f, manualAdjust %d, fade speed %d, commit %d", v36, 0x1Eu);
  }

  if ([(KeyboardBacklight *)selfCopy manualAdjust])
  {
    v26 = 0.0;
    *&v5 = LODWORD(brightnessCopy);
    v25 = brightnessCopy;
    if (brightnessCopy <= 0.0)
    {
      v14 = v26;
    }

    else
    {
      v14 = v25;
    }

    v24 = v14;
    v27 = v14;
    v23 = 1.0;
    if (v14 >= 1.0)
    {
      v13 = v23;
    }

    else
    {
      v13 = v27;
    }

    v22 = v13;
    *&v5 = v13;
    [(KeyboardBacklight *)selfCopy setLevelPercentage:v5];
    [(KeyboardBacklight *)selfCopy setSaturated:0];
    [(KeyboardBacklight *)selfCopy levelPercentage];
    [(KeyboardBacklight *)selfCopy setMuted:v6 == 0.0];
    [(KeyboardBacklight *)selfCopy levelPercentage];
    [CBKeyboardPreferencesManager setFloatPreference:@"KeyboardBacklightManualBrightness" forKey:?];
    [(KeyboardBacklight *)selfCopy updateAmbientOffset];
    [(KeyboardBacklight *)selfCopy updateBacklightDeviceWithFadeSpeed:speedCopy commit:commitCopy reason:1];
    if (selfCopy->super._logHandle)
    {
      v12 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v11 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v11 = init_default_corebrightness_log();
      }

      v12 = v11;
    }

    v21 = v12;
    v20 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v35, selfCopy);
      _os_log_debug_impl(&dword_1DE8E5000, v21, v20, "%@", v35, 0xCu);
    }
  }

  else
  {
    if (selfCopy->super._logHandle)
    {
      v10 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v9 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v9 = init_default_corebrightness_log();
      }

      v10 = v9;
    }

    oslog = v10;
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v7 = oslog;
      v8 = v18;
      __os_log_helper_16_0_0(v17);
      _os_log_impl(&dword_1DE8E5000, v7, v8, "Manual keyboard brightness adjustment not allowed", v17, 2u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)setBacklightLevel:(float)level
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v16, COERCE__INT64(level));
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Set backlight level = %f", v16, 0xCu);
  }

  [(KeyboardBacklight *)self levelMin];
  v10 = level - v3;
  [(KeyboardBacklight *)self levelMax];
  v9 = v4;
  [(KeyboardBacklight *)self levelMin];
  v13 = v10 / (v9 - v5);
  *&v6 = LODWORD(v13);
  if (v13 >= 0.0)
  {
    v8 = v13;
  }

  else
  {
    v8 = 0.0;
  }

  if (v8 >= 1.0)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = v8;
  }

  *&v6 = v7;
  [(KeyboardBacklight *)self setBrightness:v6];
  *MEMORY[0x1E69E9840];
}

- (void)updateAmbientOffset
{
  v51 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v47 = a2;
  [(KeyboardBacklight *)self levelPercentage];
  if (v2 < 0.0)
  {
    v32 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v46 = v32;
    v45 = 16;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      log = v46;
      type = v45;
      __os_log_helper_16_0_0(v44);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "ASSERTION FAILED: self.levelPercentage >= 0.0", v44, 2u);
    }
  }

  [(KeyboardBacklight *)selfCopy levelPercentage];
  if (v3 > 1.0)
  {
    v29 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v43 = v29;
    v42 = 16;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v27 = v43;
      v28 = v42;
      __os_log_helper_16_0_0(v41);
      _os_log_error_impl(&dword_1DE8E5000, v27, v28, "ASSERTION FAILED: self.levelPercentage <= 1.0", v41, 2u);
    }
  }

  [(KeyboardBacklight *)selfCopy levelPercentage];
  if (v4 >= 0.0)
  {
    [(KeyboardBacklight *)selfCopy levelPercentage];
    if (v5 <= 1.0 && ![(KeyboardBacklight *)selfCopy saturated]&& [(KeyboardBacklight *)selfCopy autoAdjust])
    {
      [(KeyboardBacklight *)selfCopy currentLuxToAmbient];
      v40 = *&v6;
      if (*&v6 < 0.0)
      {
        v26 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
        v39 = v26;
        v38 = 16;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v24 = v39;
          v25 = v38;
          __os_log_helper_16_0_0(v37);
          _os_log_error_impl(&dword_1DE8E5000, v24, v25, "ASSERTION FAILED: ambient >= 0.0F", v37, 2u);
        }
      }

      if (v40 > 1.0)
      {
        v23 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
        v36 = v23;
        v35 = 16;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v21 = v36;
          v22 = v35;
          __os_log_helper_16_0_0(v34);
          _os_log_error_impl(&dword_1DE8E5000, v21, v22, "ASSERTION FAILED: ambient <= 1.0F", v34, 2u);
        }
      }

      if (v40 >= 0.0)
      {
        *&v6 = v40;
        if (v40 <= 1.0)
        {
          [(KeyboardBacklight *)selfCopy levelPercentage];
          v20 = v7;
          [(KeyboardBacklight *)selfCopy ambientSlope];
          v33 = v20 - (v8 * v40);
          if (selfCopy->super._logHandle)
          {
            logHandle = selfCopy->super._logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              inited = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              inited = init_default_corebrightness_log();
            }

            logHandle = inited;
          }

          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            *&v16 = v40;
            [(KeyboardBacklight *)selfCopy levelPercentage];
            *&v17 = v9;
            [(KeyboardBacklight *)selfCopy ambientOffset];
            __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v50, v16, v17, COERCE__INT64(v10), COERCE__INT64(v33));
            _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "keyboard offset changed: ambient = %1.5f, pwmPercentage = %1.5f, ambientOffset %1.5f, newOffset %1.5f", v50, 0x2Au);
          }

          [(KeyboardBacklight *)selfCopy ambientOffset];
          v12 = fabs((v11 - v33));
          if (v12 > 0.001)
          {
            *&v12 = v33;
            [(KeyboardBacklight *)selfCopy setAmbientOffset:v12];
            if (selfCopy->super._logHandle)
            {
              v15 = selfCopy->super._logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v14 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v14 = init_default_corebrightness_log();
              }

              v15 = v14;
            }

            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              [(KeyboardBacklight *)selfCopy ambientOffset];
              __os_log_helper_16_0_1_8_0(v49, COERCE__INT64(v13));
              _os_log_debug_impl(&dword_1DE8E5000, v15, OS_LOG_TYPE_DEBUG, "New ambientOffset %f", v49, 0xCu);
            }

            [(KeyboardBacklight *)selfCopy ambientOffset];
            [CBKeyboardPreferencesManager setFloatPreference:@"KeyboardBacklightUserOffset" forKey:?];
          }
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (float)level
{
  if ([(KeyboardBacklight *)self suppressed]|| [(KeyboardBacklight *)self saturated])
  {
    [(KeyboardBacklight *)self levelOff];
    return v2;
  }

  else
  {
    [(KeyboardBacklight *)self levelMax];
    v12 = v3;
    [(KeyboardBacklight *)self levelMin];
    v14 = v12 - v4;
    [(KeyboardBacklight *)self levelPercentage];
    v13 = v5;
    [(KeyboardBacklight *)self levelMin];
    v15 = rintf(v6 + (v14 * v13));
    [(KeyboardBacklight *)self levelMin];
    if (v15 >= v7)
    {
      v11 = v15;
    }

    else
    {
      v11 = v7;
    }

    [(KeyboardBacklight *)self levelMax];
    if (v11 >= v8)
    {
      return v8;
    }

    else
    {
      return v11;
    }
  }
}

- (void)getCurrentLux
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  if ([(NSMutableArray *)self->_alsServiceClients count])
  {
    [(NSMutableArray *)self->_alsServiceClients objectAtIndex:0];
    v6 = IOHIDServiceClientCopyEvent();
  }

  if (v6)
  {
    IOHIDEventGetFloatValue();
    *&v2 = v2;
    [(KeyboardBacklight *)self setCurrentLux:v2];
    CFRelease(v6);
  }

  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    [(KeyboardBacklight *)self currentLux];
    __os_log_helper_16_0_1_8_0(v8, COERCE__INT64(v3));
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "currentLux %f", v8, 0xCu);
  }

  *MEMORY[0x1E69E9840];
}

- (void)handleLuxUpdate:(float)update
{
  v32 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v28 = a2;
  updateCopy = update;
  if (update < 0.0)
  {
    v21 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v26 = v21;
    v25 = 16;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      log = v26;
      type = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "ASSERTION FAILED: lux >= 0.0F", v24, 2u);
    }
  }

  if (selfCopy->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v31, COERCE__INT64(updateCopy));
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Lux=%f", v31, 0xCu);
  }

  *&v3 = updateCopy;
  [(KeyboardBacklight *)selfCopy setCurrentLux:v3];
  if (![(KeyboardBacklight *)selfCopy suspend])
  {
    v23 = 1;
    [(KeyboardBacklight *)selfCopy currentLuxToAmbient];
    v22 = v4;
    v16 = v4;
    [(KeyboardBacklight *)selfCopy ambientHighThreshold];
    v6 = v5;
    *&v7 = v16;
    [(KeyboardBacklight *)selfCopy setManualAdjust:v16 <= v6, v7];
    if ([(KeyboardBacklight *)selfCopy saturated]&& ([(KeyboardBacklight *)selfCopy ambientLowThreshold], v9 = *&v8, *&v8 = v22, v22 < v9))
    {
      [(KeyboardBacklight *)selfCopy setSaturated:0, v8];
    }

    else if ([(KeyboardBacklight *)selfCopy saturated]|| ([(KeyboardBacklight *)selfCopy ambientHighThreshold], v11 = *&v10, *&v10 = v22, v22 <= v11))
    {
      if ([(KeyboardBacklight *)selfCopy suppressed]|| [(KeyboardBacklight *)selfCopy saturated])
      {
        v23 = 0;
      }
    }

    else
    {
      [(KeyboardBacklight *)selfCopy setSaturated:1, v10];
    }

    [(KeyboardBacklight *)selfCopy levelPercentage];
    if (v12 > 0.0 && [(KeyboardBacklight *)selfCopy autoAdjust]&& ![(KeyboardBacklight *)selfCopy suspend]&& (v23 & 1) != 0)
    {
      *&v13 = v22;
      [(KeyboardBacklight *)selfCopy calculateLevelPercentageAtAmbient:v13];
      [(KeyboardBacklight *)selfCopy updateBacklightDeviceWithReason:3];
    }

    if (selfCopy->super._logHandle)
    {
      v15 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v14 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v14 = init_default_corebrightness_log();
      }

      v15 = v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v30, selfCopy);
      _os_log_debug_impl(&dword_1DE8E5000, v15, OS_LOG_TYPE_DEBUG, "%@", v30, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (float)currentLuxToAmbient
{
  v14 = 1.0;
  [(KeyboardBacklight *)self currentLux];
  if (v2 > 0.0)
  {
    [(KeyboardBacklight *)self currentLux];
    if (v3 < 300.0)
    {
      for (i = 1; i < 9; ++i)
      {
        [(KeyboardBacklight *)self currentLux];
        if (v4 <= *(&currentLuxToAmbient_luxTransferCurve + 2 * i))
        {
          v12 = *(&currentLuxToAmbient_luxTransferCurve + 2 * (i - 1));
          v11 = *(&currentLuxToAmbient_luxTransferCurve + 2 * i);
          v10 = *(&currentLuxToAmbient_luxTransferCurve + 2 * (i - 1) + 1);
          v9 = *(&currentLuxToAmbient_luxTransferCurve + 2 * i + 1);
          [(KeyboardBacklight *)self currentLux];
          v14 = v10 + (((v5 - v12) / (v11 - v12)) * (v9 - v10));
          break;
        }
      }
    }

    else
    {
      v14 = 1.0;
    }
  }

  else
  {
    v14 = 0.0;
  }

  if (v14 >= 1.0)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v14;
  }

  if (v8 <= 0.0)
  {
    return 0.0;
  }

  else
  {
    return v8;
  }
}

- (void)calculateLevelPercentageAtAmbient:(float)ambient
{
  selfCopy = self;
  v27 = a2;
  ambientCopy = ambient;
  if (ambient < 0.0)
  {
    v19 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v25 = v19;
    v24 = 16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      log = v25;
      type = v24;
      __os_log_helper_16_0_0(v23);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "ASSERTION FAILED: ambient >= 0.0", v23, 2u);
    }
  }

  v3 = ambientCopy;
  if (ambientCopy > 1.0)
  {
    v16 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v22 = v16;
    v21 = 16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v14 = v22;
      v15 = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_error_impl(&dword_1DE8E5000, v14, v15, "ASSERTION FAILED: ambient <= 1.0", v20, 2u);
    }
  }

  LODWORD(v3) = 981668463;
  [(KeyboardBacklight *)selfCopy setLevelPercentage:v3];
  if (ambientCopy >= 0.0 && ambientCopy <= 1.0)
  {
    v4 = ambientCopy;
    if (ambientCopy == 0.0)
    {
      v13 = 0.001;
    }

    else
    {
      [(KeyboardBacklight *)selfCopy ambientSlope];
      v13 = *&v4 * ambientCopy;
    }

    *&v4 = v13;
    [(KeyboardBacklight *)selfCopy setLevelPercentage:v4];
    v12 = selfCopy;
    [(KeyboardBacklight *)selfCopy ambientOffset];
    v11 = v5;
    [(KeyboardBacklight *)v12 levelPercentage];
    *&v7 = v6 + v11;
    [(KeyboardBacklight *)v12 setLevelPercentage:v7];
    [(KeyboardBacklight *)selfCopy levelPercentage];
    if (*&v8 <= 1.0)
    {
      v10 = *&v8;
    }

    else
    {
      v10 = 1.0;
    }

    if (v10 <= 0.001)
    {
      v9 = 981668463;
    }

    else
    {
      v9 = LODWORD(v10);
    }

    LODWORD(v8) = v9;
    [(KeyboardBacklight *)selfCopy setLevelPercentage:v8];
  }
}

- (void)resetKeyDimTimeout
{
  v36 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v31 = a2;
  if ([(KeyboardBacklight *)self dimTime]<= 0)
  {
    if (selfCopy->_activityNotificationHandle)
    {
      activityNotificationHandle = selfCopy->_activityNotificationHandle;
      IOPMUnregisterNotification();
      selfCopy->_activityNotificationHandle = 0;
    }

    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    v17 = logHandle;
    v16 = 1;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      v3 = v17;
      v4 = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_impl(&dword_1DE8E5000, v3, v4, "Idle dim time for keyboard backlight has been turned off", v15, 2u);
    }
  }

  else if (selfCopy->_activityNotificationHandle)
  {
    v14 = selfCopy->_activityNotificationHandle;
    [(KeyboardBacklight *)selfCopy dimTime];
    if (IOPMSetUserActivityIdleTimeout())
    {
      if (selfCopy->super._logHandle)
      {
        v13 = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v12 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v12 = init_default_corebrightness_log();
        }

        v13 = v12;
      }

      v29 = v13;
      v28 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_4_0(v35, [(KeyboardBacklight *)selfCopy dimTime]);
        _os_log_error_impl(&dword_1DE8E5000, v29, v28, "Failed to set idle dim time to %d sec", v35, 8u);
      }
    }

    else
    {
      if (selfCopy->super._logHandle)
      {
        v11 = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v10 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v10 = init_default_corebrightness_log();
        }

        v11 = v10;
      }

      v27 = v11;
      v26 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_4_0(v34, [(KeyboardBacklight *)selfCopy dimTime]);
        _os_log_impl(&dword_1DE8E5000, v27, v26, "Idle dim time for keyboard backlight has been changed to %d sec", v34, 8u);
      }
    }
  }

  else
  {
    queue = selfCopy->super._queue;
    [(KeyboardBacklight *)selfCopy dimTime];
    v20 = MEMORY[0x1E69E9820];
    v21 = -1073741824;
    v22 = 0;
    v23 = __39__KeyboardBacklight_resetKeyDimTimeout__block_invoke;
    v24 = &unk_1E867C628;
    v25 = selfCopy;
    selfCopy->_activityNotificationHandle = IOPMScheduleUserActivityLevelNotificationWithTimeout();
    if (selfCopy->super._logHandle)
    {
      v8 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v7 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v7 = init_default_corebrightness_log();
      }

      v8 = v7;
    }

    v19 = v8;
    v18 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_4_0(v33, [(KeyboardBacklight *)selfCopy dimTime]);
      _os_log_impl(&dword_1DE8E5000, v19, v18, "Idle dim time for keyboard backlight has been set to %d sec", v33, 8u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)handlePMUserActivityStateChanged:(unint64_t)changed
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = (changed & 1) != 0;
  if (changed)
  {
    [(KeyboardBacklight *)self endKeyDim];
  }

  else
  {
    [(KeyboardBacklight *)self setDimmed:1];
    v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
    [(KeyboardBacklight *)self sendNotificationForKey:@"KeyboardBacklightIdleDimActive" withValue:v7];
    [(KeyboardBacklight *)self updateBacklightDeviceWithReason:2, MEMORY[0x1E69E5920](v7).n128_f64[0]];
  }

  v6 = IOPMCopyUserActivityLevelDescription();
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v3 = "";
    }

    else
    {
      v3 = "in";
    }

    __os_log_helper_16_2_3_8_32_8_66_8_0(v11, v3, v6, changed);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "User became %sactive (%{public}@ | Activity level = %llu)", v11, 0x20u);
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
}

- (void)endKeyDim
{
  selfCopy = self;
  v11 = a2;
  if (self->_dimmed && ![(KeyboardBacklight *)selfCopy suspend])
  {
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    v10 = logHandle;
    v9 = 2;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      log = v10;
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_debug_impl(&dword_1DE8E5000, log, type, "End keyboard backlight dimming", v8, 2u);
    }

    v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
    [(KeyboardBacklight *)selfCopy sendNotificationForKey:@"KeyboardBacklightIdleDimActive" withValue:v7];
    *&v2 = MEMORY[0x1E69E5920](v7).n128_u64[0];
    [(KeyboardBacklight *)selfCopy setDimmed:0, v2];
    if ([(KeyboardBacklight *)selfCopy manualAdjust])
    {
      [(KeyboardBacklight *)selfCopy setSaturated:0];
    }

    if ([(KeyboardBacklight *)selfCopy autoAdjust])
    {
      [(KeyboardBacklight *)selfCopy forceLuxUpdate];
    }

    else
    {
      [(KeyboardBacklight *)selfCopy updateBacklightDeviceWithReason:2];
    }
  }
}

- (void)forceLuxUpdate
{
  selfCopy = self;
  v23 = a2;
  if (self->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v22 = logHandle;
  v21 = 2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    log = v22;
    type = v21;
    __os_log_helper_16_0_0(v20);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "ForceLuxUpdate", v20, 2u);
  }

  v19 = 25;
  v18 = 200;
  if (selfCopy->_forceLuxUpdateTimer)
  {
    source = selfCopy->_forceLuxUpdateTimer;
    v2 = dispatch_time(0, 25000000);
    dispatch_source_set_timer(source, v2, 0xFFFFFFFFFFFFFFFFLL, 0xC8uLL);
  }

  else
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy->super._queue);
    selfCopy->_forceLuxUpdateTimer = v3;
    if (selfCopy->_forceLuxUpdateTimer)
    {
      forceLuxUpdateTimer = selfCopy->_forceLuxUpdateTimer;
      handler = MEMORY[0x1E69E9820];
      v13 = -1073741824;
      v14 = 0;
      v15 = __35__KeyboardBacklight_forceLuxUpdate__block_invoke;
      v16 = &unk_1E867B480;
      v17 = selfCopy;
      dispatch_source_set_event_handler(forceLuxUpdateTimer, &handler);
      v6 = selfCopy->_forceLuxUpdateTimer;
      v5 = dispatch_time(0, 25000000);
      dispatch_source_set_timer(v6, v5, 0xFFFFFFFFFFFFFFFFLL, 0xC8uLL);
      dispatch_resume(selfCopy->_forceLuxUpdateTimer);
    }
  }
}

- (void)forceLuxUpdateRoutine
{
  [(KeyboardBacklight *)self getCurrentLux];
  [(KeyboardBacklight *)self currentLux];
  [(KeyboardBacklight *)self handleLuxUpdate:?];
  dispatch_source_cancel(self->_forceLuxUpdateTimer);
  dispatch_release(self->_forceLuxUpdateTimer);
  self->_forceLuxUpdateTimer = 0;
}

- (void)updateBacklightDeviceWithReason:(unint64_t)reason
{
  [(KeyboardBacklight *)self level];
  v8 = v3;
  [(KeyboardBacklight *)self levelOff];
  v4 = *&v5;
  *&v5 = v8;
  if (v8 == v4)
  {
    v6 = 350;
  }

  else
  {
    v6 = 500;
  }

  [(KeyboardBacklight *)self updateBacklightDeviceWithFadeSpeed:v6 commit:1 reason:reason, v5];
}

- (void)updateBacklightDeviceWithFadeSpeed:(int)speed commit:(BOOL)commit reason:(unint64_t)reason
{
  v49 = *MEMORY[0x1E69E9840];
  [(KeyboardBacklight *)self level];
  v38 = v5;
  [(KeyboardBacklight *)self previousLevel];
  if (float_equal(v38, v6))
  {
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      [(KeyboardBacklight *)self level];
      __os_log_helper_16_0_1_8_0(v48, COERCE__INT64(v7));
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Backlight was already updated to level %f.", v48, 0xCu);
    }
  }

  else
  {
    if (self->super._logHandle)
    {
      v35 = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v34 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v34 = init_default_corebrightness_log();
      }

      v35 = v34;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      [(KeyboardBacklight *)self levelPercentage];
      *&v32 = v8;
      [(KeyboardBacklight *)self level];
      *&v33 = v9;
      [(KeyboardBacklight *)self currentLux];
      __os_log_helper_16_2_4_8_0_8_0_8_0_8_66(v47, v32, v33, COERCE__INT64(v10), [(KeyboardBacklight *)self brightnessUpdateReasonToString:reason]);
      _os_log_impl(&dword_1DE8E5000, v35, OS_LOG_TYPE_DEFAULT, "levelPercentage %f, level = %f (nits/pwm), lux = %f (reason = %{public}@)", v47, 0x2Au);
    }

    speedCopy = speed;
    if (self->_backlightUpdateFrequency > 0 && speed <= (1000.0 / self->_backlightUpdateFrequency))
    {
      speedCopy = (1000.0 / self->_backlightUpdateFrequency);
    }

    if (speedCopy > 0)
    {
      v31 = speedCopy;
    }

    else
    {
      v31 = 10;
    }

    [(KeyboardBacklight *)self level];
    v29 = v11;
    [(KeyboardBacklight *)self levelOff];
    v13 = v12;
    *&v14 = v29;
    self->_currentEnableState = v29 != v13;
    self->_currentFadeSpeed = v31;
    [(KeyboardBacklight *)self level];
    self->_currentLevel = v15;
    [(KeyboardBacklight *)self level];
    v30 = v16;
    [(KeyboardBacklight *)self levelOff];
    if (v30 == v17)
    {
      if (self->super._logHandle)
      {
        v28 = self->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v27 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v27 = init_default_corebrightness_log();
        }

        v28 = v27;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        [(KeyboardBacklight *)self levelOff];
        __os_log_helper_16_0_1_8_0(v46, COERCE__INT64(v18));
        _os_log_impl(&dword_1DE8E5000, v28, OS_LOG_TYPE_INFO, "Turn off keyboard backlight with level %f", v46, 0xCu);
      }
    }

    else
    {
      if (self->super._logHandle)
      {
        v26 = self->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v25 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v25 = init_default_corebrightness_log();
        }

        v26 = v25;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        [(KeyboardBacklight *)self level];
        __os_log_helper_16_0_3_8_0_4_0_8_0(v45, COERCE__INT64(v19), v31, reason);
        _os_log_impl(&dword_1DE8E5000, v26, OS_LOG_TYPE_INFO, "Set keyboard backlight with level %f (nits/pwm), fade speed %d (ms), reason %lu", v45, 0x1Cu);
      }
    }

    if (self->_backlightUpdateType == 1)
    {
      if (self->_backlightUpdateInProgress)
      {
        if (self->super._logHandle)
        {
          v24 = self->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v23 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v23 = init_default_corebrightness_log();
          }

          v24 = v23;
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [(KeyboardBacklight *)self timeToNextBacklightUpdate];
          __os_log_helper_16_0_1_8_0(v44, v21);
          _os_log_debug_impl(&dword_1DE8E5000, v24, OS_LOG_TYPE_DEBUG, "Backlight update is scheduled already (in %f ms).", v44, 0xCu);
        }
      }

      else
      {
        self->_backlightUpdateInProgress = 1;
        [(KeyboardBacklight *)self timeToNextBacklightUpdate];
        [(KeyboardBacklight *)self scheduleBacklightUpdate:v20];
      }
    }

    else
    {
      [(KeyboardBacklight *)self cancelScheduledBacklightUpdate];
      self->_numOfBacklightUpdateRetries = 0;
      [(KeyboardBacklight *)self commitCurrentBrightness];
    }

    if (reason == 3 || reason == 1 && commit)
    {
      [(KeyboardBacklight *)self brightness];
      [(KeyboardBacklight *)self rampToBrightness:speed withDuration:?];
    }

    else if (reason != 2)
    {
      [(KeyboardBacklight *)self brightness];
      self->_ramp.current = v22;
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)didUpdateBacklightLevel:(float)level brightness:(float)brightness result:(BOOL)result error:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  if (result)
  {
    self->_previousLevel = level;
    self->_numOfBacklightUpdateRetries = 0;
    if (self->_previousLevelPercentage != brightness)
    {
      self->_previousLevelPercentage = brightness;
      v6 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v7 = brightness;
      v15 = [v6 initWithFloat:v7];
      v8 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v9 = level;
      v14 = [v8 initWithFloat:v9];
      [(KeyboardBacklight *)self sendNotificationForKey:@"KeyboardBacklightBrightness" withValue:v15];
      [(KeyboardBacklight *)self sendNotificationForKey:@"KeyboardBacklightLevel" withValue:v14];
      MEMORY[0x1E69E5920](v15);
      MEMORY[0x1E69E5920](v14);
    }

    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_2_8_0_8_0(v20, COERCE__INT64(level), COERCE__INT64(brightness));
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "Keyboard backlight updated successfully - level = %f, brightness = %f", v20, 0x16u);
    }
  }

  else
  {
    if (self->super._logHandle)
    {
      v13 = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v12 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v12 = init_default_corebrightness_log();
      }

      v13 = v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_0_8_0_8_64(v21, COERCE__INT64(level), COERCE__INT64(brightness), error);
      _os_log_error_impl(&dword_1DE8E5000, v13, OS_LOG_TYPE_ERROR, "Keyboard backlight update to %f level and %f brightness failed with error %@", v21, 0x20u);
    }

    if (self->_numOfBacklightUpdateRetries < 12)
    {
      ++self->_numOfBacklightUpdateRetries;
      [(KeyboardBacklight *)self scheduleBacklightUpdate:250];
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)scheduleBacklightUpdate:(int)update
{
  v23 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v20 = a2;
  turnOnBacklightDelayMS = update;
  v18 = 200;
  if (self->_forceDelayToTurnOnBacklight && turnOnBacklightDelayMS < selfCopy->_turnOnBacklightDelayMS)
  {
    turnOnBacklightDelayMS = selfCopy->_turnOnBacklightDelayMS;
  }

  if (selfCopy->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v17 = logHandle;
  v16 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_1_4_0(v22, turnOnBacklightDelayMS);
    _os_log_impl(&dword_1DE8E5000, v17, v16, "Schedule keyboard backlight update in %d ms", v22, 8u);
  }

  if (selfCopy->_backlightUpdateTimer)
  {
    source = selfCopy->_backlightUpdateTimer;
    v3 = dispatch_time(0, 1000000 * turnOnBacklightDelayMS);
    dispatch_source_set_timer(source, v3, 0xFFFFFFFFFFFFFFFFLL, 0xC8uLL);
  }

  else
  {
    selfCopy->_backlightUpdateTimer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy->super._queue);
    if (selfCopy->_backlightUpdateTimer)
    {
      backlightUpdateTimer = selfCopy->_backlightUpdateTimer;
      handler = MEMORY[0x1E69E9820];
      v11 = -1073741824;
      v12 = 0;
      v13 = __45__KeyboardBacklight_scheduleBacklightUpdate___block_invoke;
      v14 = &unk_1E867B480;
      v15 = selfCopy;
      dispatch_source_set_event_handler(backlightUpdateTimer, &handler);
      v6 = selfCopy->_backlightUpdateTimer;
      v5 = dispatch_time(0, 1000000 * turnOnBacklightDelayMS);
      dispatch_source_set_timer(v6, v5, 0xFFFFFFFFFFFFFFFFLL, 0xC8uLL);
      dispatch_resume(selfCopy->_backlightUpdateTimer);
    }
  }

  selfCopy->_forceDelayToTurnOnBacklight = 0;
  *MEMORY[0x1E69E9840];
}

- (void)forceBacklightUpdateRoutine
{
  [(KeyboardBacklight *)self cancelScheduledBacklightUpdate];
  self->_backlightUpdateInProgress = 0;
  self->_lastBacklightUpdate = mach_absolute_time();
  [(KeyboardBacklight *)self commitCurrentBrightness];
}

- (void)cancelScheduledBacklightUpdate
{
  dispatch_assert_queue_V2(self->super._queue);
  if (self->_backlightUpdateTimer)
  {
    dispatch_source_cancel(self->_backlightUpdateTimer);
    dispatch_release(self->_backlightUpdateTimer);
    self->_backlightUpdateTimer = 0;
  }
}

- (void)commitCurrentBrightness
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v15 = a2;
  [(KeyboardBacklight *)self brightness];
  v14 = v2;
  currentLevel = selfCopy->_currentLevel;
  v12 = 0;
  newElementsArray = [(KeyboardBacklight *)selfCopy newElementsArray];
  if ([newElementsArray count])
  {
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v17, newElementsArray);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "Commit elements %@", v17, 0xCu);
    }

    if (selfCopy->_backlightUpdateType == 1)
    {
      v10 = [(HIDDevice *)selfCopy->_device commitElements:newElementsArray direction:1 error:&v12 timeout:100 callback:?];
      if ((v10 & 1) == 0)
      {
        *&v3 = currentLevel;
        LODWORD(v4) = v14;
        [(KeyboardBacklight *)selfCopy didUpdateBacklightLevel:v10 & 1 brightness:v12 result:v3 error:v4];
      }
    }

    else
    {
      v5 = [(HIDDevice *)selfCopy->_device commitElements:newElementsArray direction:1 error:&v12];
      *&v6 = currentLevel;
      LODWORD(v7) = v14;
      [(KeyboardBacklight *)selfCopy didUpdateBacklightLevel:v5 & 1 brightness:v12 result:v6 error:v7];
    }
  }

  MEMORY[0x1E69E5920](newElementsArray);
  *MEMORY[0x1E69E9840];
}

uint64_t __44__KeyboardBacklight_commitCurrentBrightness__block_invoke(uint64_t a1, int a2, double a3, double a4)
{
  LODWORD(a3) = *(a1 + 48);
  LODWORD(a4) = *(a1 + 52);
  return [*(a1 + 32) didUpdateBacklightLevel:a2 == 0 brightness:*(a1 + 40) result:a3 error:a4];
}

- (id)newElementsArray
{
  v4 = self->_currentLevel * self->_unitExponent;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_currentEnableState)
  {
    if (!self->_levelElement)
    {
      return v3;
    }

    if (!self->_levelFadeSpeedElement)
    {
      return v3;
    }

    [(HIDElement *)self->_levelElement setIntegerValue:v4];
    [(HIDElement *)self->_levelFadeSpeedElement setIntegerValue:self->_currentFadeSpeed];
    [v3 addObject:self->_levelElement];
    [v3 addObject:self->_levelFadeSpeedElement];
    if (!self->_enableElement || !self->_enableFadeSpeedElement || [(HIDElement *)self->_enableElement integerValue]== self->_currentEnableState)
    {
      return v3;
    }

LABEL_13:
    [(HIDElement *)self->_enableElement setIntegerValue:self->_currentEnableState];
    [(HIDElement *)self->_enableFadeSpeedElement setIntegerValue:self->_currentFadeSpeed];
    [v3 addObject:self->_enableElement];
    [v3 addObject:self->_enableFadeSpeedElement];
    return v3;
  }

  if (self->_enableElement && self->_enableFadeSpeedElement)
  {
    goto LABEL_13;
  }

  if (self->_levelElement && self->_levelFadeSpeedElement)
  {
    [(HIDElement *)self->_levelElement setIntegerValue:v4];
    [(HIDElement *)self->_levelFadeSpeedElement setIntegerValue:self->_currentFadeSpeed];
    [v3 addObject:self->_levelElement];
    [v3 addObject:self->_levelFadeSpeedElement];
  }

  return v3;
}

- (id)copyPropertyForKey:(id)key
{
  v8 = 0;
  if ([key isEqualToString:@"KeyboardBacklightBrightness"])
  {
    v7 = objc_alloc(MEMORY[0x1E696AD98]);
    [(KeyboardBacklight *)self brightness];
    v8 = [v7 initWithFloat:?];
  }

  else if ([key isEqualToString:@"KeyboardBacklightLevel"])
  {
    v6 = objc_alloc(MEMORY[0x1E696AD98]);
    [(KeyboardBacklight *)self previousLevel];
    v8 = [v6 initWithFloat:?];
  }

  else if ([key isEqualToString:@"KeyboardBacklightSaturated"])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{-[KeyboardBacklight saturated](self, "saturated")}];
  }

  else if ([key isEqualToString:@"KeyboardBacklightSuppressed"])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{-[KeyboardBacklight suppressed](self, "suppressed")}];
  }

  else if ([key isEqualToString:@"KeyboardBacklightABSuspend"])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{-[KeyboardBacklight suspend](self, "suspend")}];
  }

  else if ([key isEqualToString:@"KeyboardBacklightABEnabled"])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{-[KeyboardBacklight autoAdjust](self, "autoAdjust")}];
  }

  else if ([key isEqualToString:@"KeyboardBacklightIdleDimTime"])
  {
    v5 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v3 = [(KeyboardBacklight *)self dimTime];
    v8 = [v5 initWithFloat:v3];
  }

  else if ([key isEqualToString:@"KeyboardBacklightIdleDimActive"])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{-[KeyboardBacklight dimmed](self, "dimmed")}];
  }

  else if ([key isEqualToString:@"KeyboardBacklightSuspendDimming"])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->_suspendDimming];
  }

  else if ([key isEqualToString:@"KeyboardBacklightBuiltIn"])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{-[KeyboardBacklight builtIn](self, "builtIn")}];
  }

  else if ([key isEqualToString:@"KeyboardBacklightUpdateFrequency"])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:self->_backlightUpdateFrequency];
  }

  else if ([key isEqualToString:@"CBUserAuthentication"])
  {
    if ([(KeyboardBacklight *)self supportsAuthentication]&& self->_enableAuthenticationElement)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{-[HIDElement integerValue](self->_enableAuthenticationElement, "integerValue") != 0}];
    }
  }

  else
  {
    v8 = [-[NSMutableDictionary objectForKey:](self->_properties objectForKey:{key), "copy"}];
  }

  if (!v8)
  {
    v8 = [CBKeyboardPreferencesManager copyPreferenceForKey:key];
  }

  if (!v8)
  {
    return [CBKeyboardPreferencesManager copyPreferenceForKey:key keyboardID:[(KeyboardBacklight *)self keyboardID]];
  }

  return v8;
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  if ([key isEqualToString:@"KeyboardBacklightBrightness"])
  {
    v8 = [(KeyboardBacklight *)self KBBrightnessPropertyHandler:property];
  }

  else if ([key isEqualToString:@"KeyboardBacklightLevel"])
  {
    v8 = [(KeyboardBacklight *)self KBBacklightLevelPropertyHandler:property];
  }

  else if ([key isEqualToString:@"KeyboardBacklightABSuspend"])
  {
    v8 = [(KeyboardBacklight *)self KBAutoBrightnessSuspendPropertyHandler:property];
  }

  else if ([key isEqualToString:@"KeyboardBacklightABEnabled"])
  {
    v8 = [(KeyboardBacklight *)self KBAutoBrightnessEnablePropertyHandler:property];
  }

  else if ([key isEqualToString:@"KeyboardBacklightIdleDimActive"])
  {
    v8 = [(KeyboardBacklight *)self KBIdleDimPropertyHandler:property];
  }

  else if ([key isEqualToString:@"KeyboardBacklightIdleDimTime"])
  {
    v8 = [(KeyboardBacklight *)self KBIdleDimTimeHandler:property];
  }

  else if ([key isEqualToString:@"KeyboardBacklightSuspendDimming"])
  {
    v8 = [(KeyboardBacklight *)self KBSuspendDimmingPropertyHandler:property];
  }

  else if ([key isEqualToString:@"CBUserActivityUpdate"])
  {
    v8 = [(KeyboardBacklight *)self KBUserActivityUpdateHandler:property];
  }

  else if ([key isEqual:@"DisplayBrightnessFactor"] & 1) != 0 || (objc_msgSend(key, "isEqual:", @"DisplayBrightnessFactorWithFade"))
  {
    v8 = [(KeyboardBacklight *)self KBDisplayBrightnessFactorPropertyHandler:property];
  }

  else if ([key isEqualToString:@"KeyboardBacklightUserOffset"])
  {
    v8 = [(KeyboardBacklight *)self KBUserOffsetPropertyHandler:property];
  }

  else if ([key isEqualToString:@"KeyboardBacklightUpdateFrequency"])
  {
    v8 = [(KeyboardBacklight *)self KBUpdateFrequencyHandler:property];
  }

  else if ([key isEqualToString:@"TrustedFrontLux"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self->super._logHandle)
      {
        logHandle = self->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        logHandle = inited;
      }

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        [property floatValue];
        __os_log_helper_16_0_1_8_0(v12, COERCE__INT64(v4));
        _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "TrustedFrontLux from AABC = %f", v12, 0xCu);
      }

      [property floatValue];
      [(KeyboardBacklight *)self handleLuxUpdate:?];
      v8 = 1;
    }
  }

  else if ([key isEqualToString:@"ClamshellUpdate"])
  {
    v8 = [(KeyboardBacklight *)self KBClamshellUpdateHandler:property];
  }

  else if ([key isEqualToString:@"CBUserAuthentication"])
  {
    v8 = [(KeyboardBacklight *)self KBAuthenticationHandler:property];
  }

  *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)KBDisplayBrightnessFactorPropertyHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    handlerCopy = [handler objectForKey:@"DisplayBrightnessFactor"];
  }

  else
  {
    handlerCopy = handler;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 1;
    [handlerCopy floatValue];
    v10 = v3;
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v15, COERCE__INT64(v10));
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "KB: Brightness factor update = %f", v15, 0xCu);
    }

    displayOn = self->_displayOn;
    v4 = v10;
    self->_displayOn = v10 > 0.0;
    if (self->_displayOn != displayOn)
    {
      if (self->_displayOn)
      {
        self->_forceDelayToTurnOnBacklight = 1;
      }

      v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->_displayOn];
      [(KeyboardBacklight *)self KBUserActivityUpdateHandler:v8];
      *&v4 = MEMORY[0x1E69E5920](v8).n128_u64[0];
    }

    [(NSMutableDictionary *)self->_properties setObject:handlerCopy forKey:@"DisplayBrightnessFactor", v4];
  }

  *MEMORY[0x1E69E9840];
  return v12 & 1;
}

- (BOOL)KBAutoBrightnessSuspendPropertyHandler:(id)handler
{
  v4 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[KeyboardBacklight setSuspend:](self, "setSuspend:", [handler BOOLValue]);
    return 1;
  }

  return v4;
}

- (BOOL)KBAutoBrightnessEnablePropertyHandler:(id)handler
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v10, handler);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Set Keyboard Auto Brightness = %{public}@", v10, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    +[CBKeyboardPreferencesManager setBoolPreference:forKey:](CBKeyboardPreferencesManager, "setBoolPreference:forKey:", [handler BOOLValue], @"KeyboardBacklightABEnabled");
    autoAdjust = [(KeyboardBacklight *)self autoAdjust];
    if (autoAdjust != [handler BOOLValue])
    {
      -[KeyboardBacklight setAutoAdjust:](self, "setAutoAdjust:", [handler BOOLValue]);
      if ([(KeyboardBacklight *)self autoAdjust])
      {
        [(KeyboardBacklight *)self updateAmbientOffset];
        [(KeyboardBacklight *)self forceLuxUpdate];
      }

      else
      {
        [(KeyboardBacklight *)self levelPercentage];
        [CBKeyboardPreferencesManager setFloatPreference:@"KeyboardBacklightManualBrightness" forKey:?];
        [(KeyboardBacklight *)self setSaturated:0];
        [(KeyboardBacklight *)self setManualAdjust:1];
      }

      [(KeyboardBacklight *)self sendNotificationForKey:@"KeyboardBacklightABEnabled" withValue:handler];
      [(KeyboardBacklight *)self updateBacklightDeviceWithReason:3];
    }

    v7 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (BOOL)KBBrightnessPropertyHandler:(id)handler
{
  v12 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [handler floatValue];
    [(KeyboardBacklight *)self setBrightness:?];
    return 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [handler objectForKey:@"Brightness"];
      v10 = [handler objectForKey:@"FadeSpeed"];
      v9 = [handler objectForKey:@"Commit"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (([v9 BOOLValue] & 1) == 0 && !-[KeyboardBacklight suspend](self, "suspend"))
            {
              [(KeyboardBacklight *)self setSuspend:1];
            }

            [v11 floatValue];
            v7 = v3;
            intValue = [v10 intValue];
            bOOLValue = [v9 BOOLValue];
            LODWORD(v5) = v7;
            [(KeyboardBacklight *)self setBrightness:intValue withFadeSpeed:bOOLValue commit:v5];
            if (([v9 BOOLValue] & 1) != 0 && -[KeyboardBacklight suspend](self, "suspend"))
            {
              [(KeyboardBacklight *)self setSuspend:0];
            }
          }
        }
      }
    }
  }

  return v12;
}

- (BOOL)KBBacklightLevelPropertyHandler:(id)handler
{
  v4 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [handler floatValue];
    [(KeyboardBacklight *)self setBacklightLevel:?];
    return 1;
  }

  return v4;
}

- (BOOL)KBIdleDimPropertyHandler:(id)handler
{
  v4 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([handler BOOLValue] & 1) == 0)
  {
    [(KeyboardBacklight *)self endKeyDim];
    return 1;
  }

  return v4;
}

- (BOOL)KBIdleDimTimeHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dimTime = [(KeyboardBacklight *)self dimTime];
    if (dimTime != [handler intValue])
    {
      +[CBKeyboardPreferencesManager setIntPreference:forKey:](CBKeyboardPreferencesManager, "setIntPreference:forKey:", [handler intValue], @"KeyboardBacklightIdleDimTime");
      -[KeyboardBacklight setDimTime:](self, "setDimTime:", [handler intValue]);
      if (self->_dimmed && ![(KeyboardBacklight *)self dimTime])
      {
        [(KeyboardBacklight *)self setDimmed:0];
      }

      [(KeyboardBacklight *)self resetKeyDimTimeout];
      v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{-[KeyboardBacklight dimTime](self, "dimTime")}];
      [(KeyboardBacklight *)self sendNotificationForKey:@"KeyboardBacklightIdleDimTime" withValue:v7];
      MEMORY[0x1E69E5920](v7);
      if (self->super._logHandle)
      {
        logHandle = self->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        logHandle = inited;
      }

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_4_0(v11, [(KeyboardBacklight *)self dimTime]);
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Dim time changed to %d sec", v11, 8u);
      }

      [(KeyboardBacklight *)self updateBacklightDeviceWithReason:2];
    }

    v8 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (BOOL)KBSuspendDimmingPropertyHandler:(id)handler
{
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v8, [handler BOOLValue]);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Suspend dimming = %d", v8, 8u);
    }

    self->_suspendDimming = [handler BOOLValue];
    [(KeyboardBacklight *)self updateBacklightDeviceWithReason:8];
  }

  *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)KBUserActivityUpdateHandler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[KeyboardBacklight setUserActive:](self, "setUserActive:", [handler BOOLValue]);
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v9, [(KeyboardBacklight *)self userActive]);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "user active = %d", v9, 8u);
    }

    if ([(KeyboardBacklight *)self userActive]&& [(KeyboardBacklight *)self autoAdjust])
    {
      [(KeyboardBacklight *)self forceLuxUpdate];
    }

    else
    {
      [(KeyboardBacklight *)self updateBacklightDeviceWithReason:2];
    }

    v6 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (BOOL)KBAvailabilityUpdateHandler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[KeyboardBacklight setKeyboardAvailable:](self, "setKeyboardAvailable:", [handler BOOLValue]);
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v9, [(KeyboardBacklight *)self keyboardAvailable]);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "HW keyboard availability = %d", v9, 8u);
    }

    if ([(KeyboardBacklight *)self keyboardAvailable]&& [(KeyboardBacklight *)self autoAdjust])
    {
      [(KeyboardBacklight *)self forceLuxUpdate];
    }

    else
    {
      [(KeyboardBacklight *)self updateBacklightDeviceWithReason:5];
    }

    v6 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (BOOL)KBUserOffsetPropertyHandler:(id)handler
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [handler floatValue];
    self->_ambientOffset = v3;
    [(KeyboardBacklight *)self ambientOffset];
    [CBKeyboardPreferencesManager setFloatPreference:@"KeyboardBacklightUserOffset" forKey:?];
    [(KeyboardBacklight *)self forceLuxUpdate];
  }

  return 0;
}

- (BOOL)KBUpdateFrequencyHandler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_backlightUpdateFrequency = [handler intValue];
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v9, [handler intValue]);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Backlight update frequency = %d", v9, 8u);
    }

    v6 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (BOOL)KBClamshellUpdateHandler:(id)handler
{
  v4 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[KeyboardBacklight setClamshellClosed:](self, "setClamshellClosed:", [handler BOOLValue]);
    [(KeyboardBacklight *)self updateBacklightDeviceWithReason:7];
    return 1;
  }

  return v4;
}

- (BOOL)KBAuthenticationHandler:(id)handler
{
  v4 = 0;
  if ([(KeyboardBacklight *)self supportsAuthentication])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[KeyboardBacklight updateAuthentication:](self, "updateAuthentication:", [handler BOOLValue]);
      return 1;
    }
  }

  return v4;
}

- (void)sendNotificationForKey:(id)key withValue:(id)value
{
  if (self->super._notificationBlock)
  {
    (*(self->super._notificationBlock + 2))();
  }
}

- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)client
{
  v4 = 0;
  if (client)
  {
    [(NSMutableArray *)self->_alsServiceClients addObject:client];
    if ([(KeyboardBacklight *)self autoAdjust])
    {
      [(KeyboardBacklight *)self forceLuxUpdate];
    }

    else
    {
      [(KeyboardBacklight *)self updateBacklightDevice];
    }

    return 1;
  }

  return v4;
}

- (BOOL)handleHIDEvent:(__IOHIDEvent *)event from:(__IOHIDServiceClient *)from
{
  v6 = 0;
  if (IOHIDEventGetType() == 12 && ([(NSMutableArray *)self->_alsServiceClients containsObject:from]& 1) != 0)
  {
    IOHIDEventGetFloatValue();
    *&v4 = v4;
    [(KeyboardBacklight *)self handleLuxUpdate:v4];
    return 1;
  }

  return v6;
}

- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)client
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v14 = a2;
  clientCopy = client;
  v12 = 0;
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_alsServiceClients;
  v9 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v11 = 0;
      v11 = *(__b[1] + 8 * v6);
      if (v11 == clientCopy)
      {
        v12 = 1;
      }

      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  if (v12)
  {
    [(NSMutableArray *)selfCopy->_alsServiceClients removeObject:clientCopy];
  }

  *MEMORY[0x1E69E9840];
  return v12 & 1;
}

+ (unint64_t)getHashIDForDevice:(id)device
{
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F599E370];
  v4 = [device propertyForKey:@"SerialNumber"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 appendString:v4];
    }
  }

  v5 = [device propertyForKey:@"VendorID"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 appendString:{objc_msgSend(v5, "stringValue")}];
    }
  }

  v6 = [device propertyForKey:@"ProductID"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 appendString:{objc_msgSend(v6, "stringValue")}];
    }
  }

  v8 = [v7 hash];
  MEMORY[0x1E69E5920](v7);
  return v8;
}

- (void)setKBPreferenceBacklightMaxUser
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:{-[KeyboardBacklight keyboardID](self, "keyboardID")}];
  v2 = objc_alloc(MEMORY[0x1E696AD98]);
  [(KeyboardBacklight *)self maxUserLevel];
  v3 = [v2 initWithFloat:?];
  [(NSMutableDictionary *)self->_keyboardSpecificPreferences setObject:v3 forKey:@"KeyboardBacklightMaxUser"];
  +[CBKeyboardPreferencesManager setPreference:forKey:](CBKeyboardPreferencesManager, "setPreference:forKey:", self->_keyboardSpecificPreferences, [v4 stringValue]);
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v3);
}

- (void)getKeyboardBacklightPreferences
{
  selfCopy = self;
  v18 = a2;
  if (self->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v17 = logHandle;
  v16 = 2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    log = v17;
    type = v16;
    __os_log_helper_16_0_0(v15);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "Get keyboard backlight prefereneces", v15, 2u);
  }

  v14 = +[CBKeyboardPreferencesManager copyAllPreferences];
  if (v14 && [v14 count])
  {
    v13 = -1.0;
    if ([CBKeyboardPreferencesManager getFloatPreference:&v13 forKey:@"KeyboardBacklightPrefVersion"]&& v13 == 1.0)
    {
      [CBKeyboardPreferencesManager getBoolPreference:&selfCopy->_muted forKey:@"KeyboardBacklightMuted", v13];
      [CBKeyboardPreferencesManager getFloatPreference:&selfCopy->_levelPercentage forKey:@"KeyboardBacklightManualBrightness"];
      if ([(KeyboardBacklight *)selfCopy muted])
      {
        [(KeyboardBacklight *)selfCopy setLevelPercentage:0.0];
      }

      [CBKeyboardPreferencesManager getBoolPreference:&selfCopy->_autoAdjust forKey:@"KeyboardBacklightABEnabled"];
      [CBKeyboardPreferencesManager getIntPreference:&selfCopy->_dimTime forKey:@"KeyboardBacklightIdleDimTime"];
      [CBKeyboardPreferencesManager getFloatPreference:&selfCopy->_ambientOffset forKey:@"KeyboardBacklightUserOffset"];
    }
  }

  else
  {
    if (selfCopy->super._logHandle)
    {
      v5 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v4 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v4 = init_default_corebrightness_log();
      }

      v5 = v4;
    }

    v12 = v5;
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v2 = v12;
      v3 = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_1DE8E5000, v2, v3, "Keyboard backlight preferences not present in defaults", v10, 2u);
    }
  }

  MEMORY[0x1E69E5920](v14);
}

- (void)storeKeyboardBacklightPreferences
{
  [CBKeyboardPreferencesManager setBoolPreference:[(KeyboardBacklight *)self muted] forKey:@"KeyboardBacklightMuted"];
  [(KeyboardBacklight *)self levelPercentage];
  [CBKeyboardPreferencesManager setFloatPreference:@"KeyboardBacklightManualBrightness" forKey:?];
  [CBKeyboardPreferencesManager setBoolPreference:[(KeyboardBacklight *)self autoAdjust] forKey:@"KeyboardBacklightABEnabled"];
  [CBKeyboardPreferencesManager setIntPreference:[(KeyboardBacklight *)self dimTime] forKey:@"KeyboardBacklightIdleDimTime"];
  [(KeyboardBacklight *)self ambientOffset];
  [CBKeyboardPreferencesManager setFloatPreference:@"KeyboardBacklightUserOffset" forKey:?];
  LODWORD(v2) = 1.0;
  [CBKeyboardPreferencesManager setFloatPreference:@"KeyboardBacklightPrefVersion" forKey:v2];
  [(KeyboardBacklight *)self setKBPreferenceBacklightMaxUser];
}

- (void)rampToBrightness:(float)brightness withDuration:(unsigned int)duration
{
  [(KeyboardBacklight *)self stopRamp];
  self->_ramp.start = self->_ramp.current;
  self->_ramp.target = brightness;
  self->_ramp.duration = duration / 1000.0;
  self->_ramp.startTime = CFAbsoluteTimeGetCurrent();
  [(KeyboardBacklight *)self startRamp];
}

- (void)startRamp
{
  selfCopy = self;
  v15 = a2;
  if (self->_rampTimer || selfCopy->_ramp.current == selfCopy->_ramp.target || selfCopy->_ramp.duration <= 0.0)
  {
    v2 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v3 = selfCopy->_ramp.target;
    v14 = [v2 initWithFloat:v3];
    [(KeyboardBacklight *)selfCopy sendNotificationForKey:@"KeyboardBacklightBrightnessSlider" withValue:v14];
    MEMORY[0x1E69E5920](v14);
  }

  else
  {
    v13 = 16667000.0;
    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy->super._queue);
    if (v12)
    {
      dispatch_source_set_timer(v12, 0, v13, 0);
      block = MEMORY[0x1E69E9820];
      v5 = -1073741824;
      v6 = 0;
      v7 = __30__KeyboardBacklight_startRamp__block_invoke;
      v8 = &unk_1E867BB90;
      v9 = selfCopy;
      v10 = v12;
      v11 = dispatch_block_create_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0, &block);
      if (v11)
      {
        dispatch_source_set_event_handler(v12, v11);
        _Block_release(v11);
      }

      selfCopy->_rampTimer = v12;
      dispatch_resume(v12);
    }
  }
}

- (void)timerRoutine:(id)routine
{
  v25 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v22 = a2;
  routineCopy = routine;
  v20 = 1017370378;
  Current = CFAbsoluteTimeGetCurrent();
  if (Current >= selfCopy->_ramp.startTime + selfCopy->_ramp.duration + 0.0199999996 || selfCopy->_ramp.current == selfCopy->_ramp.target)
  {
    if (selfCopy->_rampTimer)
    {
      [(KeyboardBacklight *)selfCopy stopRamp];
      selfCopy->_ramp.current = selfCopy->_ramp.target;
    }

    else
    {
      if (selfCopy->super._logHandle)
      {
        logHandle = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        logHandle = inited;
      }

      v18 = logHandle;
      v17 = 16;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        log = v18;
        type = v17;
        __os_log_helper_16_0_0(v16);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "Ramp timer null and the ramp is running. This shouldn't happen", v16, 2u);
      }
    }
  }

  else
  {
    v3 = Current - selfCopy->_ramp.startTime;
    v4 = ((selfCopy->_ramp.target - selfCopy->_ramp.start) * v3) / selfCopy->_ramp.duration + selfCopy->_ramp.start;
    selfCopy->_ramp.current = v4;
    if (selfCopy->_ramp.current <= 0.0)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = selfCopy->_ramp.current;
    }

    if (v10 >= 1.0)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = v10;
    }

    selfCopy->_ramp.current = v9;
    if (selfCopy->super._logHandle)
    {
      v8 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v7 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v7 = init_default_corebrightness_log();
      }

      v8 = v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v24, COERCE__INT64(selfCopy->_ramp.current));
      _os_log_debug_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEBUG, "Keyboard backlight virtual ramp - current = %f", v24, 0xCu);
    }

    v5 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v6 = selfCopy->_ramp.current;
    v15 = [v5 initWithFloat:v6];
    [(KeyboardBacklight *)selfCopy sendNotificationForKey:@"KeyboardBacklightBrightnessSlider" withValue:v15];
    MEMORY[0x1E69E5920](v15);
  }

  *MEMORY[0x1E69E9840];
}

- (void)stopRamp
{
  if (self->_rampTimer)
  {
    dispatch_source_cancel(self->_rampTimer);
    dispatch_release(self->_rampTimer);
    self->_rampTimer = 0;
  }
}

- (double)timeToNextBacklightUpdate
{
  v9 = mach_absolute_time();
  LODWORD(v2) = self->_clockInfo.numer;
  *&v3 = v2;
  v4 = (v9 - self->_lastBacklightUpdate) * *&v3;
  LODWORD(v3) = self->_clockInfo.denom;
  v8 = v4 / v3 / 1000000.0;
  v7 = (1000.0 / self->_backlightUpdateFrequency);
  if (v7 > v8)
  {
    return v7 - v8;
  }

  else
  {
    return 0.0;
  }
}

- (id)brightnessUpdateReasonToString:(unint64_t)string
{
  switch(string)
  {
    case 0uLL:
      return @"Unknown";
    case 1uLL:
      return @"Set Brightness";
    case 2uLL:
      return @"Idle Dim";
    case 3uLL:
      return @"ALS Update";
    case 4uLL:
      return @"Tear Down";
    case 5uLL:
      return @"HW Availability";
    case 6uLL:
      return @"Initial Update";
    case 7uLL:
      return @"Clamshell Update";
    case 8uLL:
      return @"Suspend Dimming";
  }

  return @"Not Specified";
}

@end