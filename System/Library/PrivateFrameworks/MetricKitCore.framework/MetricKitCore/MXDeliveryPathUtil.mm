@interface MXDeliveryPathUtil
- (BOOL)_createDiagnosticDirectoryForDeliveryAtPath:(id)path forClient:(id)client withError:(id *)error;
- (BOOL)_createMetricDirectoryForDeliveryAtPath:(id)path forClient:(id)client withError:(id *)error;
- (BOOL)createDiagnosticDirectoryAtPath:(id)path forClient:(id)client withError:(id *)error;
- (BOOL)createMetricDirectoryAtPath:(id)path forClient:(id)client withError:(id *)error;
- (MXDeliveryPathUtil)initWithStorageUtil:(id)util andBundleUtil:(id)bundleUtil;
- (id)_applicationContainerPath;
- (id)_diagnosticDeliveryDirectoryForAppContainerPath:(id)path forClient:(id)client;
- (id)_filepathsFromDirectory:(id)directory withError:(id *)error;
- (id)_metricDeliveryDirectoryForAppContainerPath:(id)path forClient:(id)client;
- (id)applicationContainerPathForBundleID:(id)d;
- (id)diagnosticReportFilepathsFromClient:(id)client withError:(id *)error;
- (id)filepathOfDiagnosticForDeliveryFromAppContainerPath:(id)path forClient:(id)client atDate:(id)date;
- (id)filepathOfMetricForDeliveryFromAppContainerPath:(id)path forClient:(id)client atDate:(id)date;
- (id)metricReportFilepathsFromClient:(id)client withError:(id *)error;
- (void)_applicationContainerPath;
- (void)_protectDiagnosticUntilFirstUserAuthForPath:(id)path forClient:(id)client withError:(id *)error;
- (void)_protectMetricUntilFirstUserAuthForPath:(id)path withError:(id *)error;
@end

@implementation MXDeliveryPathUtil

- (MXDeliveryPathUtil)initWithStorageUtil:(id)util andBundleUtil:(id)bundleUtil
{
  utilCopy = util;
  bundleUtilCopy = bundleUtil;
  v14.receiver = self;
  v14.super_class = MXDeliveryPathUtil;
  v9 = [(MXDeliveryPathUtil *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storageUtil, util);
    objc_storeStrong(&v10->_bundleUtil, bundleUtil);
    v11 = os_log_create("com.apple.metrickit", "delivery.filepath.utility");
    logHandle = v10->_logHandle;
    v10->_logHandle = v11;

    if (!v10->_logHandle)
    {
      objc_storeStrong(&v10->_logHandle, MEMORY[0x277D86220]);
    }
  }

  return v10;
}

- (id)filepathOfMetricForDeliveryFromAppContainerPath:(id)path forClient:(id)client atDate:(id)date
{
  dateCopy = date;
  v9 = [(MXDeliveryPathUtil *)self _metricDeliveryDirectoryForAppContainerPath:path forClient:client];
  v10 = [dateCopy description];

  v11 = [@"report_" stringByAppendingString:v10];

  v12 = [v9 stringByAppendingPathComponent:v11];

  return v12;
}

- (id)filepathOfDiagnosticForDeliveryFromAppContainerPath:(id)path forClient:(id)client atDate:(id)date
{
  dateCopy = date;
  v9 = [(MXDeliveryPathUtil *)self _diagnosticDeliveryDirectoryForAppContainerPath:path forClient:client];
  v10 = [dateCopy description];

  v11 = [@"diagnostic_report_" stringByAppendingString:v10];

  v12 = [v9 stringByAppendingPathComponent:v11];

  return v12;
}

- (id)metricReportFilepathsFromClient:(id)client withError:(id *)error
{
  clientCopy = client;
  _applicationContainerPath = [(MXDeliveryPathUtil *)self _applicationContainerPath];
  v8 = [(MXDeliveryPathUtil *)self _metricDeliveryDirectoryForAppContainerPath:_applicationContainerPath forClient:clientCopy];

  v9 = [(MXDeliveryPathUtil *)self _filepathsFromDirectory:v8 withError:error];

  return v9;
}

- (id)diagnosticReportFilepathsFromClient:(id)client withError:(id *)error
{
  clientCopy = client;
  _applicationContainerPath = [(MXDeliveryPathUtil *)self _applicationContainerPath];
  v8 = [(MXDeliveryPathUtil *)self _diagnosticDeliveryDirectoryForAppContainerPath:_applicationContainerPath forClient:clientCopy];

  v9 = [(MXDeliveryPathUtil *)self _filepathsFromDirectory:v8 withError:error];

  return v9;
}

- (id)_filepathsFromDirectory:(id)directory withError:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [(MXStorageUtilProtocol *)self->_storageUtil filesFromDirectory:directoryCopy error:error];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [directoryCopy stringByAppendingPathComponent:*(*(&v17 + 1) + 8 * i)];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [MEMORY[0x277CBEA60] arrayWithArray:v7];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_metricDeliveryDirectoryForAppContainerPath:(id)path forClient:(id)client
{
  clientCopy = client;
  v6 = [path stringByAppendingPathComponent:@"Reports"];
  v7 = [v6 stringByAppendingPathComponent:clientCopy];

  return v7;
}

- (id)_diagnosticDeliveryDirectoryForAppContainerPath:(id)path forClient:(id)client
{
  clientCopy = client;
  v6 = [path stringByAppendingPathComponent:@"Diagnostics"];
  v7 = [v6 stringByAppendingPathComponent:clientCopy];

  return v7;
}

- (id)applicationContainerPathForBundleID:(id)d
{
  dCopy = d;
  v5 = [(MXBundleUtilProtocol *)self->_bundleUtil isAppInstalledForBundleID:dCopy];
  logHandle = self->_logHandle;
  v7 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      [MXDeliveryPathUtil applicationContainerPathForBundleID:?];
    }

    _applicationContainerPath = [(MXDeliveryPathUtil *)self _applicationContainerPath];
  }

  else
  {
    if (v7)
    {
      [MXDeliveryPathUtil applicationContainerPathForBundleID:];
    }

    _applicationContainerPath = 0;
  }

  return _applicationContainerPath;
}

- (id)_applicationContainerPath
{
  containerPath = [MEMORY[0x277D28708] containerPath];
  v4 = [containerPath stringByAppendingPathComponent:@"Library/Caches/MetricKit"];

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXDeliveryPathUtil _applicationContainerPath];
  }

  return v4;
}

- (BOOL)createMetricDirectoryAtPath:(id)path forClient:(id)client withError:(id *)error
{
  clientCopy = client;
  v9 = [path stringByAppendingPathComponent:@"Reports"];
  v10 = [v9 stringByAppendingPathComponent:clientCopy];

  v18 = 0;
  v11 = [(MXDeliveryPathUtil *)self _createMetricDirectoryForDeliveryAtPath:v10 forClient:clientCopy withError:&v18];

  v12 = v18;
  v13 = v12;
  if (v11)
  {
    v17 = v12;
    [(MXDeliveryPathUtil *)self _protectMetricUntilFirstUserAuthForPath:v10 withError:&v17];
    v14 = v17;

    v13 = v14;
  }

  else if (error)
  {
    v15 = v12;
    *error = v13;
  }

  return v11;
}

- (BOOL)createDiagnosticDirectoryAtPath:(id)path forClient:(id)client withError:(id *)error
{
  clientCopy = client;
  v9 = [path stringByAppendingPathComponent:@"Diagnostics"];
  v10 = [v9 stringByAppendingPathComponent:clientCopy];

  v18 = 0;
  v11 = [(MXDeliveryPathUtil *)self _createDiagnosticDirectoryForDeliveryAtPath:v10 forClient:clientCopy withError:&v18];
  v12 = v18;
  v13 = v12;
  if (v11)
  {
    v17 = v12;
    [(MXDeliveryPathUtil *)self _protectDiagnosticUntilFirstUserAuthForPath:v10 forClient:clientCopy withError:&v17];
    v14 = v17;

    v13 = v14;
  }

  else if (error)
  {
    v15 = v12;
    *error = v13;
  }

  return v11;
}

- (BOOL)_createMetricDirectoryForDeliveryAtPath:(id)path forClient:(id)client withError:(id *)error
{
  if (([(MXStorageUtilProtocol *)self->_storageUtil createDirectory:path error:error]& 1) != 0)
  {
    return 1;
  }

  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
  {
    [(MXDeliveryPathUtil *)error _createMetricDirectoryForDeliveryAtPath:v9 forClient:v10 withError:v11, v12, v13, v14];
  }

  domain = [*error domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA050]])
  {
    code = [*error code];

    if (code == 516)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (BOOL)_createDiagnosticDirectoryForDeliveryAtPath:(id)path forClient:(id)client withError:(id *)error
{
  pathCopy = path;
  clientCopy = client;
  if ([MEMORY[0x277D28708] verifySDKVersionForClient:clientCopy])
  {
    if (([(MXStorageUtilProtocol *)self->_storageUtil createDirectory:pathCopy error:error]& 1) == 0)
    {
      logHandle = self->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        [(MXDeliveryPathUtil *)error _createDiagnosticDirectoryForDeliveryAtPath:v11 forClient:v12 withError:v13, v14, v15, v16];
      }

      domain = [*error domain];
      if (![domain isEqualToString:*MEMORY[0x277CCA050]])
      {

LABEL_13:
        v19 = 0;
        goto LABEL_11;
      }

      code = [*error code];

      if (code != 516)
      {
        goto LABEL_13;
      }
    }
  }

  else if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
  {
    [MXDeliveryPathUtil _createDiagnosticDirectoryForDeliveryAtPath:forClient:withError:];
  }

  v19 = 1;
LABEL_11:

  return v19;
}

- (void)_protectMetricUntilFirstUserAuthForPath:(id)path withError:(id *)error
{
  storageUtil = self->_storageUtil;
  pathCopy = path;
  v8 = [(MXStorageUtilProtocol *)storageUtil attributesOfItemAtPath:pathCopy error:error];
  [(MXStorageUtilProtocol *)self->_storageUtil setAuthProtectionForPath:pathCopy fromAttributes:v8];
}

- (void)_protectDiagnosticUntilFirstUserAuthForPath:(id)path forClient:(id)client withError:(id *)error
{
  pathCopy = path;
  storageUtil = self->_storageUtil;
  clientCopy = client;
  v10 = [(MXStorageUtilProtocol *)storageUtil attributesOfItemAtPath:pathCopy error:error];
  LODWORD(storageUtil) = [MEMORY[0x277D28708] verifySDKVersionForClient:clientCopy];

  if (storageUtil)
  {
    [(MXStorageUtilProtocol *)self->_storageUtil setAuthProtectionForPath:pathCopy fromAttributes:v10];
  }
}

- (void)applicationContainerPathForBundleID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_258D6F000, v0, OS_LOG_TYPE_DEBUG, "Application: %@ uninstalled", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)applicationContainerPathForBundleID:(void *)a1 .cold.2(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D28708];
  v2 = a1;
  v3 = [v1 containerPath];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_258D6F000, v2, OS_LOG_TYPE_DEBUG, "Container Path: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_applicationContainerPath
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_258D6F000, v0, OS_LOG_TYPE_DEBUG, "Application Container Path: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_createMetricDirectoryForDeliveryAtPath:(uint64_t)a3 forClient:(uint64_t)a4 withError:(uint64_t)a5 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_3_0(&dword_258D6F000, a2, a3, "Error creating metrics directory: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_createDiagnosticDirectoryForDeliveryAtPath:forClient:withError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0(&dword_258D6F000, v0, v1, "failed to verify SDK version for client: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_createDiagnosticDirectoryForDeliveryAtPath:(uint64_t)a3 forClient:(uint64_t)a4 withError:(uint64_t)a5 .cold.2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_3_0(&dword_258D6F000, a2, a3, "Error creating diagnostics directory: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end