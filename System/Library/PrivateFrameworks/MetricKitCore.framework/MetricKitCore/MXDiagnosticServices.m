@interface MXDiagnosticServices
- (MXDiagnosticServices)initWithSourcePathUtil:(id)a3 andDateUtil:(id)a4;
- (id)_diagnosticPayloadForClient:(id)a3 andDate:(id)a4;
- (id)_diagnosticsFromServicesForClient:(id)a3 dateString:(id)a4;
- (id)diagnosticPayloadForClient:(id)a3 andDate:(id)a4;
- (id)diagnosticPayloadForClient:(id)a3 isExtension:(BOOL)a4 andMainAppBundleID:(id)a5 andDate:(id)a6;
- (void)_createServicesForClient:(id)a3;
- (void)_startServices;
- (void)_stopServices;
- (void)cleanServiceDiagnosticsDirectoriesForClient:(id)a3;
@end

@implementation MXDiagnosticServices

- (MXDiagnosticServices)initWithSourcePathUtil:(id)a3 andDateUtil:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = MXDiagnosticServices;
  v9 = [(MXDiagnosticServices *)&v15 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    services = v9->_services;
    v9->_services = v10;

    objc_storeStrong(&v9->_sourcePathUtil, a3);
    objc_storeStrong(&v9->_dateUtil, a4);
    v12 = os_log_create("com.apple.metrickit", "diagnostic.service.manager");
    logHandle = v9->_logHandle;
    v9->_logHandle = v12;

    if (!v9->_logHandle)
    {
      objc_storeStrong(&v9->_logHandle, MEMORY[0x277D86220]);
    }
  }

  return v9;
}

- (id)diagnosticPayloadForClient:(id)a3 andDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D28708] verifySDKVersionForClient:v6])
  {
    [(MXDiagnosticServices *)self _createServicesForClient:v6];
    [(MXDiagnosticServices *)self _startServices];
    v8 = [(MXDiagnosticServices *)self _diagnosticPayloadForClient:v6 andDate:v7];
    [(MXDiagnosticServices *)self _stopServices];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)cleanServiceDiagnosticsDirectoriesForClient:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MXDiagnosticServices *)self services];

  if (v5)
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_DEFAULT, "Cleaning MXSource Services Data Directories\n", buf, 2u);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(MXDiagnosticServices *)self services];
    v8 = [v7 allObjects];

    v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v19;
      *&v10 = 138412290;
      v17 = v10;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([v14 isStarted])
          {
            v15 = self->_logHandle;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = v17;
              v23 = v14;
              _os_log_error_impl(&dword_258D6F000, v15, OS_LOG_TYPE_ERROR, "Cannot clean %@ data directory when service is started", buf, 0xCu);
            }
          }

          else
          {
            -[MXSourcePathUtilProtocol cleanDiagnosticsDirectoryForSource:andClient:](self->_sourcePathUtil, "cleanDiagnosticsDirectoryForSource:andClient:", [v14 sourceID], v4);
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v11);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_createServicesForClient:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MXDiagnosticServices *)self services];

  if (v5)
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_DEFAULT, "Initializing MXSource Services\n", buf, 2u);
    }

    v7 = [(MXDiagnosticServices *)self services];
    v8 = [MEMORY[0x277D286E0] sharedHangTracerService];
    [v7 addObject:v8];

    v9 = [(MXDiagnosticServices *)self services];
    v10 = [MEMORY[0x277D28700] sharedSpinTracerService];
    [v9 addObject:v10];

    v11 = [(MXDiagnosticServices *)self services];
    v12 = [MEMORY[0x277D286F0] sharedReportCrashService];
    [v11 addObject:v12];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = [(MXDiagnosticServices *)self services];
    v14 = [v13 allObjects];

    v15 = [v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v20 + 1) + 8 * i) setCurrentClient:v4];
        }

        v16 = [v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v16);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_startServices
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(MXDiagnosticServices *)self services];

  if (v3)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = [(MXDiagnosticServices *)self services];
    v5 = [v4 allObjects];

    v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v20;
      *&v7 = 138412290;
      v18 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          if (([v11 startService] & 1) == 0)
          {
            logHandle = self->_logHandle;
            if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = v18;
              v24 = v11;
              _os_log_error_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_ERROR, "%@ service failed to start", buf, 0xCu);
            }

            v13 = [(MXDiagnosticServices *)self services];
            [v13 removeObject:v11];
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v8);
    }

    v14 = self->_logHandle;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v16 = [(MXDiagnosticServices *)self services];
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&dword_258D6F000, v15, OS_LOG_TYPE_INFO, "Services started:%@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_stopServices
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(MXDiagnosticServices *)self services];

  if (v3)
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_DEFAULT, "Stopping MXSource Services\n", buf, 2u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [(MXDiagnosticServices *)self services];
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

            v14 = [(MXDiagnosticServices *)self services];
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

- (id)_diagnosticPayloadForClient:(id)a3 andDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MXDiagnosticServices *)self dateUtil];
  v9 = [v8 stringFromDate:v7];

  v10 = [(MXDiagnosticServices *)self _diagnosticsFromServicesForClient:v6 dateString:v9];
  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXDiagnosticServices _diagnosticPayloadForClient:v10 andDate:logHandle];
  }

  v12 = [MXCorePayloadConstructor buildDiagnosticPayloadForClient:v6 fromClientDiagnosticsDictionary:v10 withDateString:v9];

  return v12;
}

- (id)_diagnosticsFromServicesForClient:(id)a3 dateString:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self;
  v9 = [(MXDiagnosticServices *)self services];
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v24;
    *&v11 = 138412546;
    v21 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v15 getDiagnosticsForClient:v6 dateString:{v7, v21}];
        if (v16)
        {
          logHandle = v8->_logHandle;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = v21;
            v28 = v15;
            v29 = 2112;
            v30 = v16;
            _os_log_debug_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_DEBUG, "Service: %@ returned data: %@", buf, 0x16u);
          }

          v18 = [&unk_286A1B9D0 objectAtIndexedSubscript:{objc_msgSend(v15, "sourceID")}];
          [v22 setObject:v16 forKey:v18];
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)diagnosticPayloadForClient:(id)a3 isExtension:(BOOL)a4 andMainAppBundleID:(id)a5 andDate:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = v11;
  if (v8)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  v14 = v13;
  v15 = a6;
  [(MXDiagnosticServices *)self _createServicesForClient:v14];
  [(MXDiagnosticServices *)self _startServices];
  v16 = [(MXDiagnosticServices *)self _diagnosticPayloadForClient:v10 andDate:v15];

  [(MXDiagnosticServices *)self _stopServices];

  return v16;
}

- (void)_diagnosticPayloadForClient:(uint64_t)a1 andDate:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_258D6F000, a2, OS_LOG_TYPE_DEBUG, "Client Diagnostics to Parse: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end