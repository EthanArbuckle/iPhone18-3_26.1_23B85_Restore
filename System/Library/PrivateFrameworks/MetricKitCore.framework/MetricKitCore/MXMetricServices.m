@interface MXMetricServices
- (BOOL)_isMetricSourceDataAvailable;
- (MXMetricServices)initWithClientUtil:(id)a3 andSourcePathUtil:(id)a4;
- (id)_clientMetricsFromServices;
- (id)_metricPayloadsForClient:(id)a3;
- (id)_metricsFromServicesForClient:(id)a3;
- (id)clientMetricPayloadsForAllClients;
- (void)_cleanServiceMetricsDirectories;
- (void)_createServices;
- (void)_startServices;
- (void)_stopServices;
@end

@implementation MXMetricServices

- (MXMetricServices)initWithClientUtil:(id)a3 andSourcePathUtil:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = MXMetricServices;
  v9 = [(MXMetricServices *)&v15 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    services = v9->_services;
    v9->_services = v10;

    objc_storeStrong(&v9->_clientUtil, a3);
    objc_storeStrong(&v9->_sourcePathUtil, a4);
    v12 = os_log_create("com.apple.metrickit", "metric.service.manager");
    logHandle = v9->_logHandle;
    v9->_logHandle = v12;

    if (!v9->_logHandle)
    {
      objc_storeStrong(&v9->_logHandle, MEMORY[0x277D86220]);
    }
  }

  return v9;
}

- (id)clientMetricPayloadsForAllClients
{
  [(MXMetricServices *)self _createServices];
  [(MXMetricServices *)self _startServices];
  if ([(MXMetricServices *)self _isMetricSourceDataAvailable])
  {
    v3 = [(MXMetricServices *)self _clientMetricsFromServices];
    [(MXMetricServices *)self _stopServices];
    [(MXMetricServices *)self _cleanServiceMetricsDirectories];
  }

  else
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_INFO, "No data available to process", v6, 2u);
    }

    [(MXMetricServices *)self _stopServices];
    v3 = 0;
  }

  return v3;
}

- (void)_createServices
{
  v3 = [(MXMetricServices *)self services];

  if (v3)
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_DEFAULT, "Initializing MXCore Services\n", v9, 2u);
    }

    v5 = [(MXMetricServices *)self services];
    v6 = [MEMORY[0x277D286E8] sharedPowerlogService];
    [v5 addObject:v6];

    v7 = [(MXMetricServices *)self services];
    v8 = [MEMORY[0x277D286F8] sharedSpaceAttributionService];
    [v7 addObject:v8];
  }
}

- (void)_startServices
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(MXMetricServices *)self services];
  v4 = [v3 allObjects];

  v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v19;
    *&v6 = 138412290;
    v17 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if (([v10 startService] & 1) == 0)
        {
          logHandle = self->_logHandle;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v23 = v10;
            _os_log_error_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_ERROR, "%@ service failed to start", buf, 0xCu);
          }

          v12 = [(MXMetricServices *)self services];
          [v12 removeObject:v10];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  v13 = self->_logHandle;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = [(MXMetricServices *)self services];
    *buf = 138412290;
    v23 = v15;
    _os_log_impl(&dword_258D6F000, v14, OS_LOG_TYPE_INFO, "Services started:%@", buf, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_stopServices
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(MXMetricServices *)self services];

  if (v3)
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_DEFAULT, "Stopping MXCore Services\n", buf, 2u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [(MXMetricServices *)self services];
    v6 = [v5 allObjects];

    v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v18;
      *&v8 = 138412290;
      v16 = v8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if (([v12 stopService] & 1) == 0)
          {
            v13 = self->_logHandle;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = v16;
              v22 = v12;
              _os_log_error_impl(&dword_258D6F000, v13, OS_LOG_TYPE_ERROR, "%@ service failed to stop", buf, 0xCu);
            }

            v14 = [(MXMetricServices *)self services];
            [v14 removeObject:v12];
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_cleanServiceMetricsDirectories
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(MXMetricServices *)self services];

  if (v3)
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_DEFAULT, "Cleaning MXCore Services Data Directories\n", buf, 2u);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(MXMetricServices *)self services];
    v6 = [v5 allObjects];

    v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v17;
      *&v8 = 138412290;
      v15 = v8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if ([v12 isStarted])
          {
            v13 = self->_logHandle;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = v15;
              v21 = v12;
              _os_log_error_impl(&dword_258D6F000, v13, OS_LOG_TYPE_ERROR, "Cannot clean %@ data directory when service is started", buf, 0xCu);
            }
          }

          else
          {
            -[MXSourcePathUtilProtocol cleanDataDirectoryForSource:](self->_sourcePathUtil, "cleanDataDirectoryForSource:", [v12 sourceID]);
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v9);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isMetricSourceDataAvailable
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(MXMetricServices *)self services];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v17;
    *&v5 = 138412290;
    v15 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 metricsSupported] && objc_msgSend(v10, "metricsAvailable"))
        {
          logHandle = self->_logHandle;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = v15;
            v21 = v10;
            _os_log_debug_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_DEBUG, "Service %@ returned YES for metrics check ", buf, 0xCu);
          }

          v7 = 1;
        }

        else
        {
          v12 = self->_logHandle;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = v15;
            v21 = v10;
            _os_log_debug_impl(&dword_258D6F000, v12, OS_LOG_TYPE_DEBUG, "Service %@ returned NO for metrics check ", buf, 0xCu);
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

- (id)_metricPayloadsForClient:(id)a3
{
  v4 = a3;
  v5 = [(MXMetricServices *)self _metricsFromServicesForClient:v4];
  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    [(MXMetricServices *)v5 _metricPayloadsForClient:?];
  }

  v7 = [MXCorePayloadConstructor buildMetricPayloadForClient:v4 fromClientMetricsDictionary:v5];

  return v7;
}

- (id)_metricsFromServicesForClient:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(MXMetricServices *)self services];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v20;
    *&v8 = 138412546;
    v18 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 getMetricsForClient:{v4, v18}];
        if (v13)
        {
          logHandle = self->_logHandle;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = v18;
            v24 = v12;
            v25 = 2112;
            v26 = v13;
            _os_log_debug_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_DEBUG, "Service: %@ returned data: %@", buf, 0x16u);
          }

          v15 = [&unk_286A1BA90 objectAtIndexedSubscript:{objc_msgSend(v12, "sourceID")}];
          [v5 setObject:v13 forKey:v15];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_clientMetricsFromServices
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(MXClientUtilProtocol *)self->_clientUtil allClients];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    *&v6 = 138412290;
    v15 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(MXMetricServices *)self _metricPayloadsForClient:v10, v15];
        if ([v11 count])
        {
          [v3 setObject:v11 forKeyedSubscript:v10];
        }

        else
        {
          logHandle = self->_logHandle;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = v15;
            v21 = v10;
            _os_log_error_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_ERROR, "No metric report for client:%@", buf, 0xCu);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_metricPayloadsForClient:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_258D6F000, a2, OS_LOG_TYPE_DEBUG, "Client Metrics to Parse:%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end