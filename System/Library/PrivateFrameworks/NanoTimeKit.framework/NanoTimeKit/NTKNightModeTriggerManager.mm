@interface NTKNightModeTriggerManager
- (NTKNightModeTriggerManager)initWithFaceAnalyticsIdentifier:(id)a3;
- (double)_alsLatency;
- (void)_notifyObservers;
- (void)_setNightModeTriggered:(BOOL)a3;
- (void)_startClockTimer;
- (void)_stopClockTimer;
- (void)_updateAverageWithCurrentLux;
- (void)_updateAverageWithCurrentNits;
- (void)_updateAverageWithLux:(double)a3;
- (void)_updateAverageWithNits:(double)a3;
- (void)_updateTriggerState;
- (void)addObserver:(id)a3;
- (void)ambientIlluminationMonitor:(id)a3 receivedAmbientLux:(double)a4;
- (void)dealloc;
- (void)removeObserver:(id)a3;
- (void)sampleSizeChanged:(id)a3;
- (void)setNightModeDetectionEnabled:(BOOL)a3;
- (void)setThresholdLuxHigh:(double)a3;
- (void)setThresholdLuxLow:(double)a3;
- (void)setThresholdOffset:(double)a3;
- (void)thresholdsChanged:(id)a3;
@end

@implementation NTKNightModeTriggerManager

- (NTKNightModeTriggerManager)initWithFaceAnalyticsIdentifier:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22.receiver = self;
  v22.super_class = NTKNightModeTriggerManager;
  v6 = [(NTKNightModeTriggerManager *)&v22 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v7;

    v9 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v24 = v6;
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode manager init", buf, 0xCu);
    }

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v6 selector:sel_thresholdsChanged_ name:@"com.apple.NanoTimeKit.NightModeThresholdsChanged" object:0];
    [v10 addObserver:v6 selector:sel_sampleSizeChanged_ name:@"com.apple.NanoTimeKit.NightModeSampleSize" object:0];
    v11 = objc_opt_new();
    settings = v6->_settings;
    v6->_settings = v11;

    [(NTKNightModeTriggerSettings *)v6->_settings thresholdLuxLow];
    v6->_thresholdLuxLow = v13;
    [(NTKNightModeTriggerSettings *)v6->_settings thresholdLuxHigh];
    v6->_thresholdLuxHigh = v14;
    v15 = [MEMORY[0x277CBBAE8] currentDevice];
    v6->_isN199 = [v15 productType] == 41;

    objc_storeStrong(&v6->_faceAnalyticsIdentifier, a3);
    __asm { FMOV            V0.2D, #-1.0 }

    *&v6->_activeTime = _Q0;
  }

  return v6;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode manager teardown", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = NTKNightModeTriggerManager;
  [(NTKNightModeTriggerManager *)&v5 dealloc];
}

- (void)addObserver:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() description];
    v7 = 134218242;
    v8 = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode observer attaching %@", &v7, 0x16u);
  }

  [(NSHashTable *)self->_observers addObject:v4];
  [v4 nightModeTriggerManager:self didUpdateNightModeTriggeredState:self->_nightModeTriggered];
}

- (void)removeObserver:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() description];
    v7 = 134218242;
    v8 = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode observer detaching %@", &v7, 0x16u);
  }

  [(NSHashTable *)self->_observers removeObject:v4];
}

- (void)setNightModeDetectionEnabled:(BOOL)a3
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_nightModeDetectionEnabled != a3)
  {
    v3 = a3;
    self->_nightModeDetectionEnabled = a3;
    v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 134218240;
      v25 = self;
      v26 = 1024;
      LODWORD(v27) = v3;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode detection-enabled changing to %d", &v24, 0x12u);
    }

    if (self->_nightModeDetectionEnabled)
    {
      v6 = objc_opt_new();
      ambientIlluminationMonitor = self->_ambientIlluminationMonitor;
      self->_ambientIlluminationMonitor = v6;

      [(NTKAmbientIlluminationMonitor *)self->_ambientIlluminationMonitor setDelegate:self];
      v8 = [[NTKMovingMedian alloc] initWithSampleSize:[(NTKNightModeTriggerSettings *)self->_settings sampleSize]];
      luxStatistic = self->_luxStatistic;
      self->_luxStatistic = v8;

      v10 = [[NTKMovingMedian alloc] initWithSampleSize:[(NTKNightModeTriggerSettings *)self->_settings sampleSize]];
      nitsStatistic = self->_nitsStatistic;
      self->_nitsStatistic = v10;

      [(NTKNightModeTriggerManager *)self _updateAverageWithCurrentLux];
      [(NTKNightModeTriggerManager *)self _updateAverageWithCurrentNits];
      [(NTKNightModeTriggerManager *)self _startClockTimer];
      [(NTKNightModeTriggerManager *)self _notifyObservers];
      self->_activeTime = CFAbsoluteTimeGetCurrent();
      self->_sensorReadingsTime = -1.0;
      v12 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_ambientIlluminationMonitor;
        v24 = 134218240;
        v25 = self;
        v26 = 2048;
        v27 = v13;
        _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode created illumination monitor %p", &v24, 0x16u);
      }
    }

    else
    {
      v14 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_ambientIlluminationMonitor;
        v24 = 134218240;
        v25 = self;
        v26 = 2048;
        v27 = v15;
        _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode deleting illumination monitor %p", &v24, 0x16u);
      }

      [(NTKAmbientIlluminationMonitor *)self->_ambientIlluminationMonitor setDelegate:0];
      v16 = self->_ambientIlluminationMonitor;
      self->_ambientIlluminationMonitor = 0;

      v17 = self->_luxStatistic;
      self->_luxStatistic = 0;

      v18 = self->_nitsStatistic;
      self->_nitsStatistic = 0;

      __asm { FMOV            V0.2D, #-1.0 }

      *&self->_activeTime = _Q0;
      [(NTKNightModeTriggerManager *)self _stopClockTimer];
    }
  }
}

- (void)_setNightModeTriggered:(BOOL)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_nightModeTriggered != a3)
  {
    v3 = a3;
    self->_nightModeTriggered = a3;
    v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode night-mode-triggered changing to %d", &v6, 0x12u);
    }

    [(NTKNightModeTriggerManager *)self _notifyObservers];
  }
}

- (void)_notifyObservers
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) nightModeTriggerManager:self didUpdateNightModeTriggeredState:{self->_nightModeTriggered, v8}];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setThresholdLuxLow:(double)a3
{
  v10 = *MEMORY[0x277D85DE8];
  self->_thresholdLuxLow = a3;
  v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218240;
    v7 = self;
    v8 = 2048;
    v9 = a3;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode threshold low set to %f", &v6, 0x16u);
  }

  [(NTKNightModeTriggerManager *)self _updateTriggerState];
}

- (void)setThresholdLuxHigh:(double)a3
{
  v10 = *MEMORY[0x277D85DE8];
  self->_thresholdLuxHigh = a3;
  v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218240;
    v7 = self;
    v8 = 2048;
    v9 = a3;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode threshold high set to %f", &v6, 0x16u);
  }

  [(NTKNightModeTriggerManager *)self _updateTriggerState];
}

- (void)setThresholdOffset:(double)a3
{
  v10 = *MEMORY[0x277D85DE8];
  self->_thresholdOffset = a3;
  v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218240;
    v7 = self;
    v8 = 2048;
    v9 = a3;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode threshold offset set to %f", &v6, 0x16u);
  }

  [(NTKNightModeTriggerManager *)self _updateTriggerState];
}

- (void)ambientIlluminationMonitor:(id)a3 receivedAmbientLux:(double)a4
{
  if (![(NTKMovingStatistic *)self->_luxStatistic sampleCount])
  {
    self->_sensorReadingsTime = CFAbsoluteTimeGetCurrent();
  }

  [(NTKNightModeTriggerManager *)self _updateAverageWithLux:a4];
}

- (void)_startClockTimer
{
  v12 = *MEMORY[0x277D85DE8];
  if (!self->_clockTimerToken)
  {
    objc_initWeak(&location, self);
    v3 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = self;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode manager start clock timer", buf, 0xCu);
    }

    v4 = [MEMORY[0x277CBB700] sharedInstance];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__NTKNightModeTriggerManager__startClockTimer__block_invoke;
    v7[3] = &unk_27877ED48;
    objc_copyWeak(&v8, &location);
    v5 = [v4 startUpdatesWithUpdateFrequency:2 withHandler:v7 identificationLog:&__block_literal_global_73];
    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __46__NTKNightModeTriggerManager__startClockTimer__block_invoke(uint64_t a1, void *a2, id *a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    ++_startClockTimer__cycle;
    if (0xAAAAAAAAAAAAAAABLL * _startClockTimer__cycle <= 0x5555555555555555)
    {
      [WeakRetained _updateAverageWithCurrentLux];
    }

    [v6 _updateAverageWithCurrentNits];
  }
}

- (void)_stopClockTimer
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_clockTimerToken)
  {
    v3 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = self;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode manager stop clock timer", &v6, 0xCu);
    }

    v4 = [MEMORY[0x277CBB700] sharedInstance];
    [v4 stopUpdatesForToken:self->_clockTimerToken];

    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = 0;
  }
}

- (void)_updateAverageWithLux:(double)a3
{
  [(NTKMovingStatistic *)self->_luxStatistic addNewValue:a3];

  [(NTKNightModeTriggerManager *)self _updateTriggerState];
}

- (void)_updateAverageWithCurrentLux
{
  [(NTKAmbientIlluminationMonitor *)self->_ambientIlluminationMonitor ambientLux];
  if (v3 >= 0.0)
  {
    [(NTKAmbientIlluminationMonitor *)self->_ambientIlluminationMonitor ambientLux];

    [(NTKNightModeTriggerManager *)self _updateAverageWithLux:?];
  }
}

- (void)_updateAverageWithNits:(double)a3
{
  [(NTKMovingStatistic *)self->_nitsStatistic addNewValue:a3];

  [(NTKNightModeTriggerManager *)self _updateTriggerState];
}

- (void)_updateAverageWithCurrentNits
{
  [(NTKAmbientIlluminationMonitor *)self->_ambientIlluminationMonitor displayNits];
  if (v3 >= 0.0)
  {

    [(NTKNightModeTriggerManager *)self _updateAverageWithNits:?];
  }
}

- (double)_alsLatency
{
  activeTime = self->_activeTime;
  result = -1.0;
  if (activeTime != -1.0)
  {
    sensorReadingsTime = self->_sensorReadingsTime;
    if (sensorReadingsTime != -1.0)
    {
      return sensorReadingsTime - activeTime;
    }
  }

  return result;
}

- (void)_updateTriggerState
{
  v118[6] = *MEMORY[0x277D85DE8];
  if ([(NTKNightModeTriggerManager *)self isNightModeDetectionEnabled])
  {
    v3 = [(NTKNightModeTriggerManager *)self isNightModeTriggered];
    v4 = [(NTKNightModeTriggerManager *)self _isReady];
    [(NTKNightModeTriggerManager *)self _smoothedLux];
    v6 = v5;
    [(NTKNightModeTriggerManager *)self thresholdOffset];
    v8 = v7;
    [(NTKNightModeTriggerManager *)self thresholdLuxLow];
    v10 = v8 + v9;
    [(NTKNightModeTriggerManager *)self thresholdLuxHigh];
    v12 = v8 + v11;
    [(NTKNightModeTriggerManager *)self _smoothedNits];
    v14 = v13;
    [(NTKNightModeTriggerManager *)self currentFaceAPL];
    if (v15 >= 0.1)
    {
      [(NTKNightModeTriggerManager *)self currentFaceAPL];
      isN199 = self->_isN199;
      if (v19 >= 0.25)
      {
        v20 = !isN199;
        v17 = 1.0;
        if (self->_isN199)
        {
          v17 = 5.0;
        }

        v16 = 17.0;
        v21 = 8.0;
      }

      else
      {
        v20 = !isN199;
        v17 = 0.0;
        if (self->_isN199)
        {
          v17 = 5.0;
        }

        v16 = 80.0;
        v21 = 7.0;
      }

      if (!v20)
      {
        v16 = v21;
      }
    }

    else
    {
      v16 = 100.0;
      v17 = 0.0;
    }

    v81 = v14;
    v82 = v6;
    v22 = fmax(v17 + v14 / v16, 0.0);
    v23 = v12 - v10 + v10 + v22;
    if (v23 < v12 + v22 / 3.0)
    {
      v23 = v12 + v22 / 3.0;
    }

    v80 = v23;
    if (v3)
    {
      v24 = v6 <= v23;
    }

    else
    {
      v24 = v6 < v10 + v22;
    }

    [(NTKAmbientIlluminationMonitor *)self->_ambientIlluminationMonitor ambientLux];
    v26 = v25;
    [(NTKAmbientIlluminationMonitor *)self->_ambientIlluminationMonitor displayNits];
    v28 = v27;
    v29 = [(NTKMovingStatistic *)self->_luxStatistic sampleSize];
    v30 = [(NTKMovingStatistic *)self->_luxStatistic sampleCount];
    lastSensorLux = self->_lastSensorLux;
    v32 = fabs(lastSensorLux);
    v33 = fabs(v26);
    v34 = v33 < 0.00000011920929;
    if (v32 >= 0.00000011920929)
    {
      v34 = 0;
    }

    if (v33 >= 0.00000011920929 && v32 >= 0.00000011920929)
    {
      v34 = v26 == -1.0;
      if (lastSensorLux != -1.0)
      {
        v34 = 0;
      }

      if (v26 != -1.0 && lastSensorLux != -1.0)
      {
        v35 = lastSensorLux / v26 + -1.0;
        if (v35 < 0.0)
        {
          v35 = -v35;
        }

        v34 = v35 < 0.05;
      }
    }

    lastIsTriggered = self->_lastIsTriggered;
    lastCurrentNits = self->_lastCurrentNits;
    v38 = fabs(lastCurrentNits);
    v39 = fabs(v28);
    v40 = v39 < 0.00000011920929;
    if (v38 >= 0.00000011920929)
    {
      v40 = 0;
    }

    if (v39 >= 0.00000011920929 && v38 >= 0.00000011920929)
    {
      v40 = v28 == -1.0;
      if (lastCurrentNits != -1.0)
      {
        v40 = 0;
      }

      if (v28 != -1.0 && lastCurrentNits != -1.0)
      {
        v41 = lastCurrentNits / v28 + -1.0;
        if (v41 < 0.0)
        {
          v41 = -v41;
        }

        v40 = v41 < 0.1;
      }
    }

    lastThresholdOffset = self->_lastThresholdOffset;
    lastThresholdLow = self->_lastThresholdLow;
    lastThresholdHigh = self->_lastThresholdHigh;
    lastTargetTrigger = self->_lastTargetTrigger;
    lastSampleSize = self->_lastSampleSize;
    lastIsReady = self->_lastIsReady;
    if (lastIsTriggered == v3 && lastIsReady == v4 && lastThresholdOffset == v8 && lastThresholdLow == v10 && lastThresholdHigh == v12 && lastTargetTrigger == v24 && v34 && v40 && lastSampleSize == v29)
    {
      ++self->_skippedLogs;
    }

    else
    {
      v76 = v30;
      v78 = v4;
      if (lastIsTriggered == v3)
      {
        v48 = &stru_284110E98;
      }

      else
      {
        v48 = @"IsTr";
      }

      if (lastIsReady == v4)
      {
        v49 = &stru_284110E98;
      }

      else
      {
        v49 = @"Redy";
      }

      v50 = @"Offs";
      if (lastThresholdOffset == v8)
      {
        v50 = &stru_284110E98;
      }

      v51 = @"TLow";
      if (lastThresholdLow == v10)
      {
        v51 = &stru_284110E98;
      }

      v52 = @"THgh";
      if (lastThresholdHigh == v12)
      {
        v52 = &stru_284110E98;
      }

      if (lastTargetTrigger == v24)
      {
        v53 = &stru_284110E98;
      }

      else
      {
        v53 = @"Trig";
      }

      if (v34)
      {
        v54 = &stru_284110E98;
      }

      else
      {
        v54 = @"SLux";
      }

      if (v40)
      {
        v55 = &stru_284110E98;
      }

      else
      {
        v55 = @"Nits";
      }

      if (lastSampleSize == v29)
      {
        v56 = &stru_284110E98;
      }

      else
      {
        v56 = @"SSiz";
      }

      v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@%@%@%@%@%@%@", v48, v49, v50, v51, v52, v53, v54, v55, v56];
      v118[0] = self->_faceAnalyticsIdentifier;
      v117[0] = @"faceIdentifier";
      v117[1] = @"faceAPL";
      v57 = MEMORY[0x277CCABB0];
      [(NTKNightModeTriggerManager *)self currentFaceAPL];
      v58 = [v57 numberWithDouble:?];
      v118[1] = v58;
      v117[2] = @"ALSLatency";
      v59 = MEMORY[0x277CCABB0];
      [(NTKNightModeTriggerManager *)self _alsLatency];
      v60 = [v59 numberWithDouble:?];
      v118[2] = v60;
      v117[3] = @"triggerThreshold";
      v61 = [MEMORY[0x277CCABB0] numberWithDouble:v10 + v22];
      v118[3] = v61;
      v117[4] = @"smoothedALS";
      v62 = [MEMORY[0x277CCABB0] numberWithDouble:v82];
      v118[4] = v62;
      v117[5] = @"triggered";
      v63 = [MEMORY[0x277CCABB0] numberWithBool:v3];
      v118[5] = v63;
      v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:6];
      AnalyticsSendEvent();

      v65 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        v66 = [MEMORY[0x277CCABB0] numberWithBool:v3];
        v74 = [MEMORY[0x277CCABB0] numberWithBool:v24];
        v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v76];
        [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
        v68 = v77 = v24;
        v69 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
        [MEMORY[0x277CCABB0] numberWithDouble:v82];
        v3 = v75 = v3;
        v70 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
        v71 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
        [(NTKNightModeTriggerManager *)self currentFaceAPL];
        skippedLogs = self->_skippedLogs;
        *buf = 134222082;
        v84 = self;
        v85 = 2112;
        v86 = v66;
        v87 = 2112;
        v88 = v74;
        v89 = 2112;
        v90 = v67;
        v91 = 2112;
        v92 = v68;
        v93 = 2112;
        v94 = v69;
        v95 = 2112;
        v96 = v3;
        v97 = 2112;
        v98 = v70;
        v99 = 2048;
        v100 = v10 + v22;
        v101 = 2112;
        v102 = v71;
        v103 = 2048;
        v104 = v80;
        v105 = 2048;
        v106 = v22;
        v107 = 2048;
        v108 = v73;
        v109 = 2048;
        v110 = v28;
        v111 = 2048;
        v112 = v81;
        v113 = 2048;
        v114 = skippedLogs;
        v115 = 2112;
        v116 = v79;
        _os_log_impl(&dword_22D9C5000, v65, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode updateTriggerState currentlyTriggered:%@ shouldTrigger:%@ samples:%@ of %@ (lux--sensorLux:%@ smoothedLux:%@ threshLow:%@ calib:%0.0f threshHigh:%@ calib:%0.0f calibration:%0.0f apl:%0.2f) (nits--currentNits:%0.3f smoothedNits:%0.3f) [skipped %lu]  %@", buf, 0xACu);

        LOBYTE(v3) = v75;
        v24 = v77;
      }

      if ([(NTKNightModeTriggerManager *)self _isReady])
      {
        [(NTKNightModeTriggerManager *)self _setNightModeTriggered:v24];
      }

      self->_lastIsTriggered = v3;
      self->_lastSmoothedLux = v82;
      self->_lastThresholdOffset = v8;
      self->_lastThresholdLow = v10;
      self->_lastThresholdHigh = v12;
      self->_lastSmoothedNits = v81;
      self->_lastTargetTrigger = v24;
      self->_lastSensorLux = v26;
      self->_lastCurrentNits = v28;
      self->_lastSampleSize = v29;
      self->_lastIsReady = v78;
      self->_skippedLogs = 0;
    }
  }
}

- (void)thresholdsChanged:(id)a3
{
  [(NTKNightModeTriggerSettings *)self->_settings thresholdLuxLow];
  [(NTKNightModeTriggerManager *)self setThresholdLuxLow:?];
  [(NTKNightModeTriggerSettings *)self->_settings thresholdLuxHigh];

  [(NTKNightModeTriggerManager *)self setThresholdLuxHigh:?];
}

- (void)sampleSizeChanged:(id)a3
{
  luxStatistic = self->_luxStatistic;
  v4 = [(NTKNightModeTriggerSettings *)self->_settings sampleSize];

  [(NTKMovingStatistic *)luxStatistic setSampleSize:v4];
}

@end