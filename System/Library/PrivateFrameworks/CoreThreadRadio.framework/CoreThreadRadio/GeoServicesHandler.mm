@interface GeoServicesHandler
- (BOOL)startMonitoring:(id)monitoring;
- (void)regulatoryAreaGeoChanged;
- (void)stopMonitoring;
@end

@implementation GeoServicesHandler

- (BOOL)startMonitoring:(id)monitoring
{
  v4 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v4)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      monitoring = self->_monitoring;
      v9[0] = 67109120;
      v9[1] = monitoring;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[PowerTable] startMonitoring: Geo _monitoring: %d", v9, 8u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  if (self->_monitoring)
  {
    v6 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v6)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9[0]) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[PowerTable] regulatory,geo,geosvc,startMonitoring, _monitoring is already true, done.", v9, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }
  }

  else
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"countryConfigurationDidChangeNotification:" name:GEOCountryConfigurationCountryCodeDidChangeNotification object:0];

    self->_monitoring = 1;
    [(GeoServicesHandler *)self regulatoryAreaGeoChanged];
  }

  return 1;
}

- (void)regulatoryAreaGeoChanged
{
  v3 = objc_autoreleasePoolPush();
  v4 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v4)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[PowerTable] regulatoryAreaGeoChanged: regulatory,geo,geosvc,regulatory area GEO changed notification.", buf, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  v5 = +[GEOCountryConfiguration sharedConfiguration];
  countryCode = [v5 countryCode];

  if (countryCode)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v8)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v12 = countryCode;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[PowerTable] regulatory,geo,geosvc,regulatory area GEO changed: %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    objc_storeStrong(&selfCopy->_lastCountryCode, countryCode);
    v9 = countryCode;
    std::string::assign(country, [countryCode cStringUsingEncoding:4]);
    if (country[23] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *country, *&country[8]);
    }

    else
    {
      __p = *country;
    }

    updateRegionNcp(&__p);
  }

  objc_autoreleasePoolPop(v3);
}

- (void)stopMonitoring
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:GEOCountryConfigurationCountryCodeDidChangeNotification object:0];

  v4 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v4)
  {
    if (syslog_is_the_mask_enabled(6))
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[PowerTable] regulatory,geo,geosvc,stopMonitoring done.", v5, 2u);
      }
    }

    goto LABEL_5;
  }

  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
LABEL_5:

    return;
  }

  CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
}

@end