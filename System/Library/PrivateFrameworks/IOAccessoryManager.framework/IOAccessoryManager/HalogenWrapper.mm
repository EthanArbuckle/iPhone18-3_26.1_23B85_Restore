@interface HalogenWrapper
- (HalogenWrapper)init;
- (void)dealloc;
@end

@implementation HalogenWrapper

- (HalogenWrapper)init
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HalogenWrapper;
  v2 = [(HalogenWrapper *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_halogenMeasurement = 0;
    v4 = dispatch_queue_create("HalogenMeasurementDispatchQueue", 0);
    v3->_halogenMeasurementDispatchQueue = v4;
    if (!v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v19 = "[HalogenWrapper init]";
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Failed to create HalogenMeasurementDispatchQueue\n", buf, 0xCu);
      }

      v3 = 0;
    }

    v5 = dispatch_queue_create("HalogenTtrDispatchQueue", 0);
    v3->_halogenTtrDispatchQueue = v5;
    if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[HalogenWrapper init]";
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Failed to create HalogenTtrDispatchQueue\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Halogen Parameters: \n", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      wetPollingIntervalSec = [gUserLdcmParams wetPollingIntervalSec];
      *buf = 134217984;
      v19 = wetPollingIntervalSec;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  wetPollingIntervalSec = %lld \n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      dryPollingIntervalSec = [gUserLdcmParams dryPollingIntervalSec];
      *buf = 134217984;
      v19 = dryPollingIntervalSec;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  dryPollingIntervalSec = %lld \n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      ldcmArbiterRetrySec = [gUserLdcmParams ldcmArbiterRetrySec];
      *buf = 134217984;
      v19 = ldcmArbiterRetrySec;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  ldcmArbiterRetrySec = %lld \n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      ldcmStartMeasurementsDelayMs = [gUserLdcmParams ldcmStartMeasurementsDelayMs];
      *buf = 134217984;
      v19 = ldcmStartMeasurementsDelayMs;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  ldcmStartMeasurementsDelayMs = %lld \n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      ldcmStartMeasurementsRetryMs = [gUserLdcmParams ldcmStartMeasurementsRetryMs];
      *buf = 134217984;
      v19 = ldcmStartMeasurementsRetryMs;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  ldcmStartMeasurementsRetryMs = %lld \n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      minDryReadings = [gUserLdcmParams minDryReadings];
      *buf = 134217984;
      v19 = minDryReadings;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  minDryReadings = %lld \n", buf, 0xCu);
    }

    v3->_wetPollingIntervalNs = 1000000000 * [gUserLdcmParams wetPollingIntervalSec];
    v3->_dryPollingIntervalNs = 1000000000 * [gUserLdcmParams dryPollingIntervalSec];
    v3->_ldcmArbiterRetryNs = 1000000000 * [gUserLdcmParams ldcmArbiterRetrySec];
    v3->_ldcmStartMeasurementsDelayNs = 1000000 * [gUserLdcmParams ldcmStartMeasurementsDelayMs];
    v3->_ldcmStartMeasurementsRetryNs = 1000000 * [gUserLdcmParams ldcmStartMeasurementsRetryMs];
    v3->_minDryReadings = [gUserLdcmParams minDryReadings];
    *&v3->_didNotify = 0;
    v3->_isBlacklistedAccessoryConnected = 0;
    v3->_isReceptacleEmpty = 1;
    v3->_isMeasurementEnabled = 0;
    *&v3->_justDetached = 0;
    v3->_isPowerAssertionHeld = 0;
    v3->_attachDelayTimerRunning = 0;
    v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3->_halogenMeasurementDispatchQueue);
    v3->_timer = v12;
    if (v12)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __22__HalogenWrapper_init__block_invoke;
      handler[3] = &unk_279793038;
      handler[4] = v3;
      dispatch_source_set_event_handler(v12, handler);
      dispatch_source_set_timer(v3->_timer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(v3->_timer);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v19 = "[HalogenWrapper init]";
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Failed to create Halogen Timer\n", buf, 0xCu);
      }

      v3 = 0;
    }

    v13 = objc_alloc_init(MEMORY[0x277CCA928]);
    v3->_cond = v13;
    if (!v13)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v19 = "[HalogenWrapper init]";
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Failed to create NSCondition\n", buf, 0xCu);
      }

      v3 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)dealloc
{
  dispatch_release(self->_timer);
  dispatch_release(self->_halogenMeasurementDispatchQueue);

  v3.receiver = self;
  v3.super_class = HalogenWrapper;
  [(HalogenWrapper *)&v3 dealloc];
}

@end