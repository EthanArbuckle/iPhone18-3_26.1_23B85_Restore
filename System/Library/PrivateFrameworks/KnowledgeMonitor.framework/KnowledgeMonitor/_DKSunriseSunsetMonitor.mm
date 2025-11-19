@interface _DKSunriseSunsetMonitor
- (BOOL)currentSunriseSunsetTimes:(id)a3 differsFromPreviousTimes:(id)a4 byInterval:(double)a5;
- (BOOL)isAirplaneModeEnabled;
- (BOOL)isAirplaneModeEnabledWithPreferences:(__SCPreferences *)a3;
- (_DKSunriseSunsetMonitor)init;
- (id)contextDictionaryWithGeoAlmanac:(id)a3 authorizationStatus:(int)a4;
- (void)dealloc;
- (void)init;
- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)respondToAirplaneModeStatusChanged;
- (void)respondToTimeChange:(id)a3;
- (void)start;
- (void)stop;
- (void)unprotectedUpdateSunriseSunsetTime:(id)a3;
@end

@implementation _DKSunriseSunsetMonitor

- (_DKSunriseSunsetMonitor)init
{
  v45 = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = _DKSunriseSunsetMonitor;
  v2 = [(_DKMonitor *)&v42 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.coreduet.monitors", "_DKSunriseSunsetMonitor");
    v4 = *(v2 + 24);
    *(v2 + 24) = v3;

    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v5 doubleForKey:@"sunriseSunsetUpdateIntervalSeconds"];
    if (*&v6 == 0.0)
    {
      v6 = kUpdateIntervalSeconds;
    }

    else
    {
      kUpdateIntervalSeconds = v6;
    }

    *(v2 + 21) = *&v6;
    v7 = [v2 queue];
    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v7);
    v9 = *(v2 + 20);
    *(v2 + 20) = v8;

    dispatch_source_set_timer(*(v2 + 20), 0, 1000000000 * *(v2 + 21), 1000000000 * *(v2 + 21) / 0xAuLL);
    v10 = *(v2 + 20);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __31___DKSunriseSunsetMonitor_init__block_invoke;
    handler[3] = &unk_27856F060;
    v11 = v2;
    v41 = v11;
    dispatch_source_set_event_handler(v10, handler);
    v12 = [v11 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31___DKSunriseSunsetMonitor_init__block_invoke_2;
    block[3] = &unk_27856F060;
    v13 = v11;
    v39 = v13;
    dispatch_sync(v12, block);

    [v13[22] setDesiredAccuracy:*MEMORY[0x277CE4270]];
    *(v13 + 39) = 0;
    v14 = [v13 queue];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __31___DKSunriseSunsetMonitor_init__block_invoke_3;
    v36[3] = &unk_27856F060;
    v15 = v13;
    v37 = v15;
    v16 = v36;
    v17 = os_transaction_create();
    context.version = MEMORY[0x277D85DD0];
    context.info = 3221225472;
    context.retain = __cd_dispatch_async_capture_tx_block_invoke_9;
    context.release = &unk_27856F178;
    context.copyDescription = v17;
    v44 = v16;
    v18 = v17;
    dispatch_async(v14, &context);

    v19 = SCPreferencesCreate(*MEMORY[0x277CBECE8], @"com.apple.duetknowledged.sunrisesunset.airplaneMode", @"com.apple.radios.plist");
    v15[25] = v19;
    if (v19)
    {
      context.version = 0;
      memset(&context.retain, 0, 24);
      context.info = v15;
      if (SCPreferencesSetCallback(v19, scRadioPreferencesCallBackHandler_0, &context))
      {
        v20 = v15[25];
        v21 = [v15 queue];
        LODWORD(v20) = SCPreferencesSetDispatchQueue(v20, v21);

        if (!v20)
        {
          v22 = *(v2 + 24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(_DKSunriseSunsetMonitor *)v22 init];
          }
        }
      }

      else
      {
        v24 = *(v2 + 24);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [(_DKSunriseSunsetMonitor *)v24 init];
        }
      }
    }

    else
    {
      v23 = *(v2 + 24);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(_DKSunriseSunsetMonitor *)v23 init];
      }
    }

    v25 = *(v2 + 24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = MEMORY[0x277CCABB0];
      v27 = *(v13 + 39);
      v28 = v25;
      v29 = [v26 numberWithInt:v27];
      LODWORD(context.version) = 138412290;
      *(&context.version + 4) = v29;
      _os_log_impl(&dword_22595A000, v28, OS_LOG_TYPE_DEFAULT, "Location authorization status: %@", &context, 0xCu);
    }

    v30 = [MEMORY[0x277CCAB98] defaultCenter];
    [v30 addObserver:v15 selector:sel_respondToTimeChange_ name:*MEMORY[0x277CBE778] object:0];

    LODWORD(context.version) = 0;
    v31 = [v15 queue];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __31___DKSunriseSunsetMonitor_init__block_invoke_32;
    v34[3] = &unk_27856F408;
    v35 = v15;
    notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &context, v31, v34);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  [(_DKSunriseSunsetMonitor *)self deactivate];
  if (self->_enabled)
  {
    updateTimer = self->_updateTimer;
    if (updateTimer)
    {
      dispatch_source_cancel(updateTimer);
      dispatch_resume(self->_updateTimer);
      self->_enabled = 0;
      v4 = self->_updateTimer;
      self->_updateTimer = 0;
    }
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  radioPrefs = self->_radioPrefs;
  if (radioPrefs)
  {
    CFRelease(radioPrefs);
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self name:*MEMORY[0x277CBE778] object:0];

  v8.receiver = self;
  v8.super_class = _DKSunriseSunsetMonitor;
  [(_DKMonitor *)&v8 dealloc];
}

- (void)start
{
  v3.receiver = self;
  v3.super_class = _DKSunriseSunsetMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsActivation])
  {
    self->_enabled = 1;
    dispatch_resume(self->_updateTimer);
  }
}

- (void)stop
{
  v5.receiver = self;
  v5.super_class = _DKSunriseSunsetMonitor;
  if ([(_DKMonitor *)&v5 instantMonitorNeedsDeactivation])
  {
    v3 = [(_DKMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31___DKSunriseSunsetMonitor_stop__block_invoke;
    block[3] = &unk_27856F060;
    block[4] = self;
    dispatch_sync(v3, block);

    [(_DKSunriseSunsetMonitor *)self deactivate];
  }
}

- (id)contextDictionaryWithGeoAlmanac:(id)a3 authorizationStatus:(int)a4
{
  v48[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a4 && a4 != 3)
  {
    v24 = [MEMORY[0x277CFE338] sunriseSunsetAvailabilityStatusKey];
    v47 = v24;
    v48[0] = &unk_2838F79C0;
    v25 = MEMORY[0x277CBEAC0];
    v26 = v48;
    v27 = &v47;
LABEL_31:
    v23 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
    goto LABEL_32;
  }

  if (!v5)
  {
    v24 = [MEMORY[0x277CFE338] sunriseSunsetAvailabilityStatusKey];
    v45 = v24;
    v46 = &unk_2838F79D8;
    v25 = MEMORY[0x277CBEAC0];
    v26 = &v46;
    v27 = &v45;
    goto LABEL_31;
  }

  v7 = [v5 isDayLightForTime:CFAbsoluteTimeGetCurrent()];
  v8 = [MEMORY[0x277CFE338] sunriseSunsetAvailabilityStatusKey];
  v43[0] = v8;
  v44[0] = &unk_2838F79F0;
  v41 = [MEMORY[0x277CFE338] currentSunriseKey];
  v43[1] = v41;
  v9 = [v6 sunrise];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEAA8] distantFuture];
  }

  v33 = v9;
  v44[1] = v9;
  v39 = [MEMORY[0x277CFE338] currentSunsetKey];
  v43[2] = v39;
  v11 = [v6 sunset];
  v12 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v32 = v11;
  v44[2] = v11;
  v37 = [MEMORY[0x277CFE338] nextSunriseKey];
  v43[3] = v37;
  v13 = [v6 nextSunrise];
  v36 = v13;
  if (!v13)
  {
    v13 = [MEMORY[0x277CBEAA8] distantFuture];
  }

  v38 = v12;
  v40 = v10;
  v31 = v13;
  v44[3] = v13;
  v35 = [MEMORY[0x277CFE338] nextSunsetKey];
  v43[4] = v35;
  v14 = [v6 nextSunset];
  v15 = v14;
  if (!v14)
  {
    v14 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v42 = v8;
  v30 = v14;
  v44[4] = v14;
  v34 = [MEMORY[0x277CFE338] previousSunriseKey];
  v43[5] = v34;
  v16 = [v6 previousSunrise];
  v17 = v16;
  if (!v16)
  {
    v17 = [MEMORY[0x277CBEAA8] distantFuture];
  }

  v44[5] = v17;
  v18 = [MEMORY[0x277CFE338] previousSunsetKey];
  v43[6] = v18;
  v19 = [v6 previousSunset];
  v20 = v19;
  if (!v19)
  {
    v20 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v44[6] = v20;
  v21 = [MEMORY[0x277CFE338] isDaylightKey];
  v43[7] = v21;
  v22 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v44[7] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:8];

  if (!v19)
  {
  }

  if (!v16)
  {
  }

  v24 = v42;
  if (!v15)
  {
  }

  if (!v36)
  {
  }

  if (!v38)
  {
  }

  if (!v40)
  {
  }

LABEL_32:
  v28 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)currentSunriseSunsetTimes:(id)a3 differsFromPreviousTimes:(id)a4 byInterval:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CFE338] sunriseSunsetAvailabilityStatusKey];
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = [MEMORY[0x277CFE338] sunriseSunsetAvailabilityStatusKey];
  v12 = [v7 objectForKeyedSubscript:v11];
  v13 = [v10 isEqual:v12];

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = [MEMORY[0x277CFE338] isDaylightKey];
  v15 = [v8 objectForKeyedSubscript:v14];
  v16 = [MEMORY[0x277CFE338] isDaylightKey];
  v17 = [v7 objectForKeyedSubscript:v16];
  v18 = [v15 isEqual:v17];

  if (v18)
  {
    v19 = [MEMORY[0x277CFE338] currentSunriseKey];
    v20 = [v8 objectForKeyedSubscript:v19];

    v21 = [MEMORY[0x277CFE338] currentSunriseKey];
    v22 = [v7 objectForKeyedSubscript:v21];

    v23 = [MEMORY[0x277CFE338] nextSunriseKey];
    v24 = [v8 objectForKeyedSubscript:v23];

    v25 = [MEMORY[0x277CFE338] nextSunriseKey];
    v26 = [v7 objectForKeyedSubscript:v25];

    v27 = [MEMORY[0x277CFE338] previousSunriseKey];
    v28 = [v8 objectForKeyedSubscript:v27];

    v29 = [MEMORY[0x277CFE338] previousSunriseKey];
    v30 = [v7 objectForKeyedSubscript:v29];

    v34 = 1;
    if ((v20 == 0) != (v22 != 0) && (v28 == 0) != (v30 != 0) && (v24 == 0) != (v26 != 0))
    {
      if (!v22 || ([v22 timeIntervalSinceDate:v20], fabs(v31) < a5))
      {
        if (!v30 || ([v30 timeIntervalSinceDate:v28], fabs(v32) < a5))
        {
          if (!v26 || ([v26 timeIntervalSinceDate:v24], fabs(v33) < a5))
          {
            v34 = 0;
          }
        }
      }
    }
  }

  else
  {
LABEL_13:
    v34 = 1;
  }

  return v34;
}

- (void)unprotectedUpdateSunriseSunsetTime:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_enabled)
  {
    dispatch_suspend(self->_updateTimer);
    [(CLLocationManager *)self->_manager stopUpdatingLocation];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = [(CLLocationManager *)self->_manager location];
    }

    v6 = v5;
    if (self->_awaitingLocationAfterDisabledAirplaneMode)
    {
      goto LABEL_6;
    }

    if (![(_DKSunriseSunsetMonitor *)self isAirplaneModeEnabled]|| v6)
    {
      if (v6)
      {
        goto LABEL_21;
      }
    }

    else if (self->_authorizationStatus == 3)
    {
LABEL_6:
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        [_DKSunriseSunsetMonitor unprotectedUpdateSunriseSunsetTime:?];
      }

      goto LABEL_33;
    }

    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&dword_22595A000, v8, OS_LOG_TYPE_DEFAULT, "Location unknown", &v34, 2u);
    }

    previousDataDictionary = self->_previousDataDictionary;
    v10 = [MEMORY[0x277CFE338] currentSunriseKey];
    v11 = [(NSDictionary *)previousDataDictionary objectForKeyedSubscript:v10];
    if (v11)
    {
    }

    else
    {
      authorizationStatus = self->_authorizationStatus;

      if (authorizationStatus == 3)
      {
        v13 = self->_log;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v34) = 0;
          _os_log_impl(&dword_22595A000, v13, OS_LOG_TYPE_DEFAULT, "Attempt to request location", &v34, 2u);
        }

        [(CLLocationManager *)self->_manager startUpdatingLocation];
        v6 = [(_DKSunriseSunsetMonitor *)self contextDictionaryWithGeoAlmanac:0 authorizationStatus:self->_authorizationStatus];
        v14 = [MEMORY[0x277CFE318] userContext];
        v15 = [MEMORY[0x277CFE338] keyPathForSunriseSunsetDataDictionary];
        [v14 setObject:v6 forKeyedSubscript:v15];
        goto LABEL_32;
      }
    }

LABEL_21:
    v16 = self->_log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = MEMORY[0x277CCABB0];
      v18 = self->_authorizationStatus;
      v19 = v16;
      v20 = [v17 numberWithInt:v18];
      v21 = self->_previousDataDictionary;
      v34 = 138412546;
      v35 = v20;
      v36 = 2112;
      v37 = v21;
      _os_log_impl(&dword_22595A000, v19, OS_LOG_TYPE_DEFAULT, "Not requesting location (%@, %@)", &v34, 0x16u);
    }

    if (v6)
    {
      v14 = objc_opt_new();
      [v6 coordinate];
      v23 = v22;
      [v6 coordinate];
      v24 = *MEMORY[0x277D0E7B8];
      [v14 calculateAstronomicalTimeForLocation:v23 altitudeInDegrees:?];
    }

    else
    {
      v14 = 0;
    }

    v15 = [(_DKSunriseSunsetMonitor *)self contextDictionaryWithGeoAlmanac:v14 authorizationStatus:self->_authorizationStatus];
    v25 = [(_DKSunriseSunsetMonitor *)self currentSunriseSunsetTimes:v15 differsFromPreviousTimes:self->_previousDataDictionary byInterval:5.0];
    v26 = self->_log;
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      if (v27)
      {
        v34 = 138412290;
        v35 = v15;
        _os_log_impl(&dword_22595A000, v26, OS_LOG_TYPE_DEFAULT, "Saving new values: %@", &v34, 0xCu);
      }

      v28 = [MEMORY[0x277CFE318] userContext];
      v29 = [MEMORY[0x277CFE338] keyPathForSunriseSunsetDataDictionary];
      [v28 setObject:v15 forKeyedSubscript:v29];

      objc_storeStrong(&self->_previousDataDictionary, v15);
    }

    else if (v27)
    {
      v30 = self->_previousDataDictionary;
      v34 = 138412546;
      v35 = v15;
      v36 = 2112;
      v37 = v30;
      _os_log_impl(&dword_22595A000, v26, OS_LOG_TYPE_DEFAULT, "Not saving new values: %@ (Old=%@)", &v34, 0x16u);
    }

LABEL_32:

LABEL_33:
    updateTimer = self->_updateTimer;
    v32 = dispatch_time(0, 1000000000 * self->_updateInterval);
    dispatch_source_set_timer(updateTimer, v32, 0xFFFFFFFFFFFFFFFFLL, 1000000000 * self->_updateInterval / 0xA);
    dispatch_resume(self->_updateTimer);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)respondToTimeChange:(id)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22595A000, log, OS_LOG_TYPE_DEFAULT, "Time changed; reevaluating sunrise/sunset times", buf, 2u);
  }

  v5 = [(_DKMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47___DKSunriseSunsetMonitor_respondToTimeChange___block_invoke;
  block[3] = &unk_27856F060;
  block[4] = self;
  dispatch_sync(v5, block);
}

- (void)respondToAirplaneModeStatusChanged
{
  if (self->_authorizationStatus == 3)
  {
    v3 = [(_DKSunriseSunsetMonitor *)self isAirplaneModeEnabled];
    self->_awaitingLocationAfterDisabledAirplaneMode = !v3;
    if (!v3)
    {
      manager = self->_manager;

      [(CLLocationManager *)manager startUpdatingLocation];
    }
  }

  else
  {
    self->_awaitingLocationAfterDisabledAirplaneMode = 0;
  }
}

- (BOOL)isAirplaneModeEnabled
{
  v3 = [(_DKSunriseSunsetMonitor *)self radioPrefs];

  return [(_DKSunriseSunsetMonitor *)self isAirplaneModeEnabledWithPreferences:v3];
}

- (BOOL)isAirplaneModeEnabledWithPreferences:(__SCPreferences *)a3
{
  if (a3)
  {
    SCPreferencesLock(a3, 1u);
    v4 = SCPreferencesGetValue(a3, @"AirplaneMode") == *MEMORY[0x277CBED28];
    SCPreferencesUnlock(a3);
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [_DKSunriseSunsetMonitor isAirplaneModeEnabledWithPreferences:?];
    }

    return 0;
  }

  return v4;
}

- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  if ([a3 isEqual:self->_manager])
  {
    if (self->_authorizationStatus != a4)
    {
      self->_authorizationStatus = a4;
      v6 = [(_DKMonitor *)self queue];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __72___DKSunriseSunsetMonitor_locationManager_didChangeAuthorizationStatus___block_invoke;
      v10[3] = &unk_27856F060;
      v10[4] = self;
      v7 = v10;
      v8 = os_transaction_create();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __cd_dispatch_async_capture_tx_block_invoke_9;
      block[3] = &unk_27856F178;
      v12 = v8;
      v13 = v7;
      v9 = v8;
      dispatch_async(v6, block);
    }
  }
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v5 = a4;
  self->_awaitingLocationAfterDisabledAirplaneMode = 0;
  if ([v5 count])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22595A000, log, OS_LOG_TYPE_INFO, "Obtained new location", buf, 2u);
    }
  }

  v7 = [(_DKMonitor *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62___DKSunriseSunsetMonitor_locationManager_didUpdateLocations___block_invoke;
  v12[3] = &unk_27856F0B0;
  v12[4] = self;
  v13 = v5;
  v8 = v12;
  v9 = v5;
  v10 = os_transaction_create();
  *buf = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __cd_dispatch_async_capture_tx_block_invoke_9;
  v17 = &unk_27856F178;
  v18 = v10;
  v19 = v8;
  v11 = v10;
  dispatch_async(v7, buf);
}

- (void)init
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = SCError();
  SCErrorString(v2);
  OUTLINED_FUNCTION_0_1(&dword_22595A000, v3, v4, "SCPreferencesSetCallback() failed: %s", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

@end