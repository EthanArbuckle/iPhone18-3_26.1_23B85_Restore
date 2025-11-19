@interface MXCleanUtil
- (BOOL)_isDiagnosticDeliveryStaleForDirectory:(id)a3;
- (BOOL)_isDiagnosticSourceFilename:(id)a3;
- (BOOL)_isMetricDeliveryStaleForDirectory:(id)a3;
- (BOOL)_isMetricSourceFilename:(id)a3;
- (BOOL)_isStaleDiagnosticSourceForFilename:(id)a3;
- (BOOL)_isStaleForDate:(id)a3;
- (BOOL)_isStaleMetricSourceForFilename:(id)a3;
- (BOOL)_isStaleSourceForFilename:(id)a3;
- (MXCleanUtil)initWithClientUtil:(id)a3 andDeliveryPathUtil:(id)a4;
- (MXCleanUtil)initWithClientUtil:(id)a3 andDeliveryPathUtil:(id)a4 andDateUtil:(id)a5;
- (id)_clientfulSourceDirectories;
- (id)_clientlessSourceDirectories;
- (id)_dateFromDateString:(id)a3;
- (id)_dateFromDiagnosticFilename:(id)a3;
- (id)_dateFromMetricFilename:(id)a3;
- (id)_dateStringFromDiagnosticSourceFilename:(id)a3;
- (id)_dateStringFromMetricSourceFilename:(id)a3;
- (id)_dateStringFromUnprefixedFilename:(id)a3;
- (id)_datesFromDiagnosticFilenames:(id)a3;
- (id)_datesFromMetricFilenames:(id)a3;
- (id)_diagnosticDeliveryDirectories;
- (id)_diagnosticDeliveryDirectoryForClient:(id)a3;
- (id)_diagnosticDeliveryParentDirectory;
- (id)_filenamesFromDirectory:(id)a3;
- (id)_lastFileDateFromDiagnosticFilenames:(id)a3;
- (id)_lastFileDateFromMetricFilenames:(id)a3;
- (id)_latestDateFromDates:(id)a3;
- (id)_metricDeliveryDirectories;
- (id)_metricDeliveryDirectoryForClient:(id)a3;
- (id)_metricDeliveryParentDirectory;
- (id)_sourceDirectoryForSource:(id)a3 andClient:(id)a4;
- (id)_subdirectoriesFromDirectory:(id)a3;
- (void)_cleanClientfulSourceDirectoriesForStaleData;
- (void)_cleanClientlessSourceDirectoriesForStaleData;
- (void)_cleanDeliveryDirectoriesForClient:(id)a3;
- (void)_cleanDeliveryDirectoriesForStaleData;
- (void)_cleanDiagnosticDeliveryDirectoriesForStaleData;
- (void)_cleanDiagnosticDeliveryDirectoryForStaleDataForDirectory:(id)a3;
- (void)_cleanDirectoriesForStaleData;
- (void)_cleanDirectoriesForUninstalledClient:(id)a3;
- (void)_cleanDirectoriesForUninstalledClients;
- (void)_cleanDirectory:(id)a3;
- (void)_cleanFileFromFilePath:(id)a3;
- (void)_cleanMetricDeliveryDirectoriesForStaleData;
- (void)_cleanMetricDeliveryDirectoryForStaleDataForDirectory:(id)a3;
- (void)_cleanSourceDirectoriesForClient:(id)a3;
- (void)_cleanSourceDirectoriesForStaleData;
- (void)_cleanSourceDirectoryForSource:(id)a3 andClient:(id)a4;
- (void)_cleanStaleDataForSourceDirectory:(id)a3;
- (void)_clientlessSourceDirectories;
- (void)_diagnosticDeliveryDirectories;
- (void)_diagnosticDeliveryParentDirectory;
- (void)_metricDeliveryDirectories;
- (void)_metricDeliveryParentDirectory;
- (void)cleanStaleData;
@end

@implementation MXCleanUtil

- (MXCleanUtil)initWithClientUtil:(id)a3 andDeliveryPathUtil:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MXCleanUtil;
  v9 = [(MXCleanUtil *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientUtil, a3);
    objc_storeStrong(&v10->_deliveryPathUtil, a4);
    v11 = os_log_create("com.apple.metrickit", "cache.clean.utility");
    logHandle = v10->_logHandle;
    v10->_logHandle = v11;

    if (!v10->_logHandle)
    {
      objc_storeStrong(&v10->_logHandle, MEMORY[0x277D86220]);
    }
  }

  return v10;
}

- (MXCleanUtil)initWithClientUtil:(id)a3 andDeliveryPathUtil:(id)a4 andDateUtil:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = MXCleanUtil;
  v12 = [(MXCleanUtil *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientUtil, a3);
    objc_storeStrong(&v13->_deliveryPathUtil, a4);
    objc_storeStrong(&v13->_dateUtil, a5);
    v14 = os_log_create("com.apple.metrickit", "cache.clean.utility");
    logHandle = v13->_logHandle;
    v13->_logHandle = v14;

    if (!v13->_logHandle)
    {
      objc_storeStrong(&v13->_logHandle, MEMORY[0x277D86220]);
    }
  }

  return v13;
}

- (void)cleanStaleData
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_cleanDirectoriesForUninstalledClients
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_cleanDirectoriesForUninstalledClient:(id)a3
{
  v4 = a3;
  if (([MEMORY[0x277D28708] isAppInstalledForBundleID:v4] & 1) == 0)
  {
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXCleanUtil _cleanDirectoriesForUninstalledClient:];
    }

    [(MXCleanUtil *)self _cleanDeliveryDirectoriesForClient:v4];
    [(MXCleanUtil *)self _cleanSourceDirectoriesForClient:v4];
  }
}

- (void)_cleanDeliveryDirectoriesForClient:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _cleanDeliveryDirectoriesForClient:];
  }

  v5 = [(MXCleanUtil *)self _metricDeliveryDirectoryForClient:v4];
  [(MXCleanUtil *)self _cleanDirectory:v5];
  v6 = [(MXCleanUtil *)self _diagnosticDeliveryDirectoryForClient:v4];
  [(MXCleanUtil *)self _cleanDirectory:v6];
}

- (id)_metricDeliveryDirectoryForClient:(id)a3
{
  v4 = a3;
  v5 = [(MXCleanUtil *)self _metricDeliveryParentDirectory];
  v6 = [v5 stringByAppendingPathComponent:v4];

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _metricDeliveryDirectoryForClient:];
  }

  return v6;
}

- (id)_metricDeliveryParentDirectory
{
  v3 = [(MXDeliveryPathUtilProtocol *)self->_deliveryPathUtil applicationContainerPath];
  v4 = [v3 stringByAppendingPathComponent:@"Reports"];

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _metricDeliveryParentDirectory];
  }

  return v4;
}

- (id)_diagnosticDeliveryDirectoryForClient:(id)a3
{
  v4 = a3;
  v5 = [(MXCleanUtil *)self _diagnosticDeliveryParentDirectory];
  v6 = [v5 stringByAppendingPathComponent:v4];

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _diagnosticDeliveryDirectoryForClient:];
  }

  return v6;
}

- (id)_diagnosticDeliveryParentDirectory
{
  v3 = [(MXDeliveryPathUtilProtocol *)self->_deliveryPathUtil applicationContainerPath];
  v4 = [v3 stringByAppendingPathComponent:@"Diagnostics"];

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _diagnosticDeliveryParentDirectory];
  }

  return v4;
}

- (void)_cleanSourceDirectoriesForClient:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _cleanSourceDirectoriesForClient:];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [&unk_286A1B9E8 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(&unk_286A1B9E8);
        }

        [(MXCleanUtil *)self _cleanSourceDirectoryForSource:*(*(&v10 + 1) + 8 * v8++) andClient:v4];
      }

      while (v6 != v8);
      v6 = [&unk_286A1B9E8 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_cleanSourceDirectoryForSource:(id)a3 andClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _cleanSourceDirectoryForSource:andClient:];
  }

  v8 = [(MXCleanUtil *)self _sourceDirectoryForSource:v6 andClient:v7];
  [(MXCleanUtil *)self _cleanDirectory:v8];
}

- (void)_cleanDirectory:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = 0;
  [v5 removeItemAtPath:v4 error:&v7];
  v6 = v7;
  if (v6 && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
  {
    [MXCleanUtil _cleanDirectory:];
  }
}

- (id)_sourceDirectoryForSource:(id)a3 andClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D28708] containerPath];
  v9 = [v8 stringByAppendingPathComponent:v6];
  v10 = [v9 stringByAppendingPathComponent:v7];

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _sourceDirectoryForSource:andClient:];
  }

  return v10;
}

- (void)_cleanDirectoriesForStaleData
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_cleanDeliveryDirectoriesForStaleData
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_cleanMetricDeliveryDirectoriesForStaleData
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)_metricDeliveryDirectories
{
  v3 = [(MXCleanUtil *)self _metricDeliveryParentDirectory];
  v4 = [(MXCleanUtil *)self _subdirectoriesFromDirectory:v3];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _metricDeliveryDirectories];
  }

  return v4;
}

- (id)_subdirectoriesFromDirectory:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = 0;
  v6 = [v5 contentsOfDirectoryAtPath:v4 error:&v22];
  v7 = v22;
  if (v7)
  {
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
    {
      [MXCleanUtil _subdirectoriesFromDirectory:];
    }

    v8 = 0;
  }

  else
  {
    v8 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [v4 stringByAppendingPathComponent:*(*(&v18 + 1) + 8 * i)];
          v17 = 0;
          if ([v5 fileExistsAtPath:v14 isDirectory:&v17] && v17 == 1)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_cleanMetricDeliveryDirectoryForStaleDataForDirectory:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _cleanMetricDeliveryDirectoryForStaleDataForDirectory:];
  }

  if ([(MXCleanUtil *)self _isMetricDeliveryStaleForDirectory:v4])
  {
    [(MXCleanUtil *)self _cleanDirectory:v4];
  }
}

- (BOOL)_isMetricDeliveryStaleForDirectory:(id)a3
{
  v4 = a3;
  v5 = [(MXCleanUtil *)self _filenamesFromDirectory:v4];
  v6 = [(MXCleanUtil *)self _lastFileDateFromMetricFilenames:v5];
  v7 = [(MXCleanUtil *)self _isStaleForDate:v6];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _isMetricDeliveryStaleForDirectory:];
  }

  return v7;
}

- (id)_filenamesFromDirectory:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v25 = 0;
  v6 = [v5 contentsOfDirectoryAtPath:v4 error:&v25];
  v7 = v25;
  if (v7)
  {
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
    {
      [MXCleanUtil _filenamesFromDirectory:];
    }

    v8 = 0;
  }

  else
  {
    v18 = self;
    v8 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v4 stringByAppendingPathComponent:v14];
          v20 = 0;
          if ([v5 fileExistsAtPath:v15 isDirectory:&v20] && (v20 & 1) == 0)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v11);
    }

    if (os_log_type_enabled(v18->_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXCleanUtil _filenamesFromDirectory:];
    }

    v6 = v19;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_lastFileDateFromMetricFilenames:(id)a3
{
  v4 = [(MXCleanUtil *)self _datesFromMetricFilenames:a3];
  v5 = [(MXCleanUtil *)self _latestDateFromDates:v4];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _lastFileDateFromMetricFilenames:];
  }

  return v5;
}

- (id)_datesFromMetricFilenames:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(MXCleanUtil *)self _dateFromMetricFilename:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _datesFromMetricFilenames:];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_cleanDiagnosticDeliveryDirectoriesForStaleData
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)_diagnosticDeliveryDirectories
{
  v3 = [(MXCleanUtil *)self _diagnosticDeliveryParentDirectory];
  v4 = [(MXCleanUtil *)self _subdirectoriesFromDirectory:v3];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _diagnosticDeliveryDirectories];
  }

  return v4;
}

- (void)_cleanDiagnosticDeliveryDirectoryForStaleDataForDirectory:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _cleanDiagnosticDeliveryDirectoryForStaleDataForDirectory:];
  }

  if ([(MXCleanUtil *)self _isDiagnosticDeliveryStaleForDirectory:v4])
  {
    [(MXCleanUtil *)self _cleanDirectory:v4];
  }
}

- (BOOL)_isDiagnosticDeliveryStaleForDirectory:(id)a3
{
  v4 = a3;
  v5 = [(MXCleanUtil *)self _filenamesFromDirectory:v4];
  v6 = [(MXCleanUtil *)self _lastFileDateFromDiagnosticFilenames:v5];
  v7 = [(MXCleanUtil *)self _isStaleForDate:v6];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _isDiagnosticDeliveryStaleForDirectory:];
  }

  return v7;
}

- (id)_lastFileDateFromDiagnosticFilenames:(id)a3
{
  v4 = [(MXCleanUtil *)self _datesFromDiagnosticFilenames:a3];
  v5 = [(MXCleanUtil *)self _latestDateFromDates:v4];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _lastFileDateFromDiagnosticFilenames:];
  }

  return v5;
}

- (id)_datesFromDiagnosticFilenames:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(MXCleanUtil *)self _dateFromDiagnosticFilename:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _datesFromDiagnosticFilenames:];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_dateFromDiagnosticFilename:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@"diagnostic_report_" withString:&stru_286A18718];
  v5 = [(MXCleanUtil *)self _dateStringFromUnprefixedFilename:v4];
  v6 = [(MXCleanUtil *)self _dateFromDateString:v5];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _dateFromDiagnosticFilename:];
  }

  return v6;
}

- (id)_dateFromMetricFilename:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@"report_" withString:&stru_286A18718];
  v5 = [(MXCleanUtil *)self _dateStringFromUnprefixedFilename:v4];
  v6 = [(MXCleanUtil *)self _dateFromDateString:v5];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _dateFromMetricFilename:];
  }

  return v6;
}

- (id)_dateFromDateString:(id)a3
{
  v4 = [(MXDateUtil *)self->_dateUtil dateFromString:a3];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _dateFromDateString:];
  }

  return v4;
}

- (id)_latestDateFromDates:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (!v7)
        {
          v7 = v10;
        }

        v11 = v7;
        v7 = [v10 laterDate:v7];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _latestDateFromDates:];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_isStaleForDate:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [v4 dateByAddingTimeInterval:1209600.0];
  v7 = [v5 laterDate:v6];
  v8 = [v7 isEqualToDate:v5];

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _isStaleForDate:];
  }

  return v8;
}

- (void)_cleanSourceDirectoriesForStaleData
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_cleanClientlessSourceDirectoriesForStaleData
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(MXCleanUtil *)self _clientlessSourceDirectories];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(MXCleanUtil *)self _cleanStaleDataForSourceDirectory:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_cleanStaleDataForSourceDirectory:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _cleanStaleDataForSourceDirectory:];
  }

  v5 = [(MXCleanUtil *)self _filenamesFromDirectory:v4];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(MXCleanUtil *)self _isStaleSourceForFilename:v10])
        {
          v11 = [v4 stringByAppendingPathComponent:v10];
          [(MXCleanUtil *)self _cleanFileFromFilePath:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isStaleSourceForFilename:(id)a3
{
  v4 = a3;
  if ([(MXCleanUtil *)self _isMetricSourceFilename:v4])
  {
    v5 = [(MXCleanUtil *)self _isStaleMetricSourceForFilename:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(MXCleanUtil *)self _isDiagnosticSourceFilename:v4];
  if (v6)
  {
    LOBYTE(v6) = [(MXCleanUtil *)self _isStaleDiagnosticSourceForFilename:v4];
  }

  v7 = v5 || v6;
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _isStaleSourceForFilename:];
  }

  return v7;
}

- (BOOL)_isMetricSourceFilename:(id)a3
{
  v4 = [a3 containsString:@"log-"];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _isMetricSourceFilename:];
  }

  return v4;
}

- (BOOL)_isStaleMetricSourceForFilename:(id)a3
{
  v4 = a3;
  v5 = [(MXCleanUtil *)self _dateStringFromMetricSourceFilename:v4];
  v6 = [(MXCleanUtil *)self _dateFromDateString:v5];
  v7 = [(MXCleanUtil *)self _isStaleForDate:v6];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _isStaleMetricSourceForFilename:];
  }

  return v7;
}

- (id)_dateStringFromMetricSourceFilename:(id)a3
{
  v4 = a3;
  v5 = [v4 stringByReplacingOccurrencesOfString:@"log-" withString:&stru_286A18718];
  v6 = [(MXCleanUtil *)self _dateStringFromUnprefixedFilename:v5];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _dateStringFromMetricSourceFilename:];
  }

  return v6;
}

- (id)_dateStringFromUnprefixedFilename:(id)a3
{
  v4 = a3;
  v5 = [v4 substringToIndex:{objc_msgSend(@"yyyy-MM-dd", "length")}];

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _dateStringFromUnprefixedFilename:];
  }

  return v5;
}

- (BOOL)_isDiagnosticSourceFilename:(id)a3
{
  v4 = [a3 containsString:@"diag-log-"];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _isDiagnosticSourceFilename:];
  }

  return v4;
}

- (BOOL)_isStaleDiagnosticSourceForFilename:(id)a3
{
  v4 = a3;
  v5 = [(MXCleanUtil *)self _dateStringFromDiagnosticSourceFilename:v4];
  v6 = [(MXCleanUtil *)self _dateFromDateString:v5];
  v7 = [(MXCleanUtil *)self _isStaleForDate:v6];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _isStaleDiagnosticSourceForFilename:];
  }

  return v7;
}

- (id)_dateStringFromDiagnosticSourceFilename:(id)a3
{
  v4 = a3;
  v5 = [v4 stringByReplacingOccurrencesOfString:@"diag-log-" withString:&stru_286A18718];
  v6 = [(MXCleanUtil *)self _dateStringFromUnprefixedFilename:v5];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _dateStringFromDiagnosticSourceFilename:];
  }

  return v6;
}

- (id)_clientlessSourceDirectories
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D28708] containerPath];
  v4 = [&unk_286A1BA00 objectAtIndexedSubscript:2];
  v21[0] = v4;
  v5 = [&unk_286A1BA18 objectAtIndexedSubscript:6];
  v21[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];

  v7 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v3 stringByAppendingPathComponent:{*(*(&v16 + 1) + 8 * i), v16}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _clientlessSourceDirectories];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_cleanClientfulSourceDirectoriesForStaleData
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(MXCleanUtil *)self _clientfulSourceDirectories];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(MXCleanUtil *)self _cleanStaleDataForSourceDirectory:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_clientfulSourceDirectories
{
  v23[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D28708] containerPath];
  v4 = [&unk_286A1BA30 objectAtIndexedSubscript:4];
  v23[0] = v4;
  v5 = [&unk_286A1BA48 objectAtIndexedSubscript:3];
  v23[1] = v5;
  v6 = [&unk_286A1BA60 objectAtIndexedSubscript:5];
  v23[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];

  v8 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v3 stringByAppendingPathComponent:{*(*(&v18 + 1) + 8 * i), v18}];
        v15 = [(MXCleanUtil *)self _subdirectoriesFromDirectory:v14];
        [v8 addObjectsFromArray:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _clientlessSourceDirectories];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_cleanFileFromFilePath:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXCleanUtil _cleanFileFromFilePath:];
  }

  v7 = 0;
  [v5 removeItemAtPath:v4 error:&v7];
  v6 = v7;
  if (v6 && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
  {
    [MXCleanUtil _cleanFileFromFilePath:];
  }
}

- (void)_cleanDirectoriesForUninstalledClient:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Client: %@ is not installed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_cleanDeliveryDirectoriesForClient:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Start clean delivery directory for client: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_metricDeliveryDirectoryForClient:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_metricDeliveryParentDirectory
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Metric Delivery directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_diagnosticDeliveryDirectoryForClient:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_diagnosticDeliveryParentDirectory
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Diagnostics Delivery directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_cleanSourceDirectoriesForClient:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Start clean Source directories for client: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_cleanSourceDirectoryForSource:andClient:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_cleanDirectory:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_10() description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_258D6F000, v4, v5, "Error removing directory: %@ with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sourceDirectoryForSource:andClient:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_metricDeliveryDirectories
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Metric delivery directories: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_subdirectoriesFromDirectory:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_10() description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_258D6F000, v4, v5, "Error searching contents of directory: %@ with error %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_cleanMetricDeliveryDirectoryForStaleDataForDirectory:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Start clean Metric delivery for stale data for directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_isMetricDeliveryStaleForDirectory:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_filenamesFromDirectory:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_10() description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_258D6F000, v4, v5, "Error searching contents of directory: %@ with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_filenamesFromDirectory:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_lastFileDateFromMetricFilenames:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "last file date: %@ from metric filenames", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_datesFromMetricFilenames:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "dates: %@ from metric filenames", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_diagnosticDeliveryDirectories
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Diagnostic delivery directories: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_cleanDiagnosticDeliveryDirectoryForStaleDataForDirectory:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Start clean Diagnostic delivery for stale data for directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_isDiagnosticDeliveryStaleForDirectory:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_lastFileDateFromDiagnosticFilenames:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "last file date: %@ from diagnostic filenames", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_datesFromDiagnosticFilenames:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "diagnostic filenames dates: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_dateFromDiagnosticFilename:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "diagnostic filename date: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_dateFromMetricFilename:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "metric filename date: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_dateFromDateString:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Convert string to date: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_latestDateFromDates:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isStaleForDate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_cleanStaleDataForSourceDirectory:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Start clean stale data for source directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_isStaleSourceForFilename:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isMetricSourceFilename:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isStaleMetricSourceForFilename:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_dateStringFromMetricSourceFilename:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_dateStringFromUnprefixedFilename:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "date string: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_isDiagnosticSourceFilename:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isStaleDiagnosticSourceForFilename:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_dateStringFromDiagnosticSourceFilename:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_clientlessSourceDirectories
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Source Directories: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_cleanFileFromFilePath:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Remove item at path: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_cleanFileFromFilePath:.cold.2()
{
  OUTLINED_FUNCTION_11();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_10() description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7(&dword_258D6F000, v4, v5, "Error clean file from path: %@ with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end