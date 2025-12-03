@interface MXSourceDataCacher
- (BOOL)saveToSourceDirectoryWithDiagnosticSourcePayload:(id)payload;
- (BOOL)saveToSourceDirectoryWithMetricSourcePayload:(id)payload;
- (MXSourceDataCacher)initWithSourcePathUtil:(id)util andStorageUtil:(id)storageUtil andBundleUtil:(id)bundleUtil;
@end

@implementation MXSourceDataCacher

- (MXSourceDataCacher)initWithSourcePathUtil:(id)util andStorageUtil:(id)storageUtil andBundleUtil:(id)bundleUtil
{
  utilCopy = util;
  storageUtilCopy = storageUtil;
  bundleUtilCopy = bundleUtil;
  v17.receiver = self;
  v17.super_class = MXSourceDataCacher;
  v12 = [(MXSourceDataCacher *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sourcePathUtil, util);
    objc_storeStrong(&v13->_storageUtil, storageUtil);
    objc_storeStrong(&v13->_bundleUtil, bundleUtil);
    v14 = os_log_create("com.apple.metrickit", "source.cache.manager");
    logHandle = v13->_logHandle;
    v13->_logHandle = v14;

    if (!v13->_logHandle)
    {
      objc_storeStrong(&v13->_logHandle, MEMORY[0x277D86220]);
    }
  }

  return v13;
}

- (BOOL)saveToSourceDirectoryWithMetricSourcePayload:(id)payload
{
  payloadCopy = payload;
  storageUtil = self->_storageUtil;
  v19 = 0;
  v6 = [(MXStorageUtilProtocol *)storageUtil archivedDataWithObject:payloadCopy error:&v19];
  v7 = v19;
  v8 = v7;
  logHandle = self->_logHandle;
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXSourceDataCacher saveToSourceDirectoryWithMetricSourcePayload:];
    }

    sourcePathUtil = self->_sourcePathUtil;
    sourceID = [payloadCopy sourceID];
    bundleID = [payloadCopy bundleID];
    datestamp = [payloadCopy datestamp];
    v15 = [(MXSourcePathUtilProtocol *)sourcePathUtil filePathOfMetricSourcePayloadForSourceID:sourceID andBundleID:bundleID andDate:datestamp];

    if (!v15)
    {
      v17 = 0;
      goto LABEL_19;
    }

    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXSourceDataCacher saveToSourceDirectoryWithMetricSourcePayload:];
    }

    if (([(MXStorageUtilProtocol *)self->_storageUtil saveData:v6 withFilePath:v15]& 1) == 0 && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
    {
      [MXSourceDataCacher saveToSourceDirectoryWithMetricSourcePayload:];
    }
  }

  else if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
  {
    [MXSourceDataCacher saveToSourceDirectoryWithMetricSourcePayload:];
  }

  v16 = self->_logHandle;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [(MXSourceDataCacher *)v16 saveToSourceDirectoryWithMetricSourcePayload:payloadCopy];
  }

  v17 = 1;
LABEL_19:

  return v17;
}

- (BOOL)saveToSourceDirectoryWithDiagnosticSourcePayload:(id)payload
{
  payloadCopy = payload;
  storageUtil = self->_storageUtil;
  v21 = 0;
  v6 = [(MXStorageUtilProtocol *)storageUtil archivedDataWithObject:payloadCopy error:&v21];
  v7 = v21;
  v8 = v7;
  logHandle = self->_logHandle;
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXSourceDataCacher saveToSourceDirectoryWithMetricSourcePayload:];
    }

    bundleID = [payloadCopy bundleID];
    if ([(MXBundleUtilProtocol *)self->_bundleUtil isAppExtensionFromBundleID:bundleID]&& ([(MXBundleUtilProtocol *)self->_bundleUtil mainAppBundleIDforExtension:bundleID], v12 = objc_claimAutoreleasedReturnValue(), bundleID, (bundleID = v12) == 0))
    {
      v19 = self->_logHandle;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(MXSourceDataCacher *)v19 saveToSourceDirectoryWithDiagnosticSourcePayload:payloadCopy];
      }
    }

    else
    {
      sourcePathUtil = self->_sourcePathUtil;
      sourceID = [payloadCopy sourceID];
      datestamp = [payloadCopy datestamp];
      v16 = [(MXSourcePathUtilProtocol *)sourcePathUtil filePathOfDiagnosticSourcePayloadForSourceID:sourceID andBundleID:bundleID andDate:datestamp];

      if (v16)
      {
        if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
        {
          [MXSourceDataCacher saveToSourceDirectoryWithMetricSourcePayload:];
        }

        if (([(MXStorageUtilProtocol *)self->_storageUtil saveData:v6 withFilePath:v16]& 1) == 0 && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
        {
          [MXSourceDataCacher saveToSourceDirectoryWithMetricSourcePayload:];
        }

        goto LABEL_18;
      }
    }

    v18 = 0;
    goto LABEL_25;
  }

  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
  {
    [MXSourceDataCacher saveToSourceDirectoryWithMetricSourcePayload:];
  }

LABEL_18:
  v17 = self->_logHandle;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [(MXSourceDataCacher *)v17 saveToSourceDirectoryWithMetricSourcePayload:payloadCopy];
  }

  v18 = 1;
LABEL_25:

  return v18;
}

- (void)saveToSourceDirectoryWithMetricSourcePayload:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Writing data: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveToSourceDirectoryWithMetricSourcePayload:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Log filename: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveToSourceDirectoryWithMetricSourcePayload:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)saveToSourceDirectoryWithMetricSourcePayload:(void *)a1 .cold.5(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 metrics];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1(&dword_258D6F000, v5, v6, "Interested source data is now available : %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)saveToSourceDirectoryWithDiagnosticSourcePayload:(void *)a1 .cold.4(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 bundleID];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_258D6F000, v3, OS_LOG_TYPE_ERROR, "Could not resolve Main App bunldeID for extension: %@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end