@interface MXSourcePathUtil
- (MXSourcePathUtil)initWithDateUtil:(id)a3 andStorageUtil:(id)a4;
- (id)_filePathOfDiagnosticSourcePayloadForDate:(id)a3 andSourceDirectory:(id)a4;
- (id)_filePathOfMetricSourcePayloadForDate:(id)a3 andSourceDirectory:(id)a4;
- (id)_setupSourceDirectoryForSourceID:(int64_t)a3 andBundleID:(id)a4;
- (id)_sourceDirectoryForSource:(int64_t)a3 andBundleID:(id)a4;
- (id)filePathOfDiagnosticSourcePayloadForSourceID:(int64_t)a3 andBundleID:(id)a4 andDate:(id)a5;
- (id)filePathOfMetricSourcePayloadForSourceID:(int64_t)a3 andBundleID:(id)a4 andDate:(id)a5;
- (void)_removeFilesForSourceID:(int64_t)a3;
- (void)_removeFilesForSourceID:(int64_t)a3 andClient:(id)a4;
- (void)cleanDataDirectoryForSource:(int64_t)a3;
- (void)cleanDiagnosticsDirectoryForSource:(int64_t)a3 andClient:(id)a4;
- (void)removeDeliveredDiagnosticsForSourceID:(int64_t)a3 forDate:(id)a4;
@end

@implementation MXSourcePathUtil

- (MXSourcePathUtil)initWithDateUtil:(id)a3 andStorageUtil:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MXSourcePathUtil;
  v9 = [(MXSourcePathUtil *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dateUtil, a3);
    objc_storeStrong(&v10->_storageUtil, a4);
    v11 = os_log_create("com.apple.metrickit", "source.filepath.utility");
    logHandle = v10->_logHandle;
    v10->_logHandle = v11;

    if (!v10->_logHandle)
    {
      objc_storeStrong(&v10->_logHandle, MEMORY[0x277D86220]);
    }
  }

  return v10;
}

- (id)filePathOfMetricSourcePayloadForSourceID:(int64_t)a3 andBundleID:(id)a4 andDate:(id)a5
{
  v8 = a5;
  v9 = [(MXSourcePathUtil *)self _setupSourceDirectoryForSourceID:a3 andBundleID:a4];
  if (v9)
  {
    v10 = [(MXSourcePathUtil *)self _filePathOfMetricSourcePayloadForDate:v8 andSourceDirectory:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)filePathOfDiagnosticSourcePayloadForSourceID:(int64_t)a3 andBundleID:(id)a4 andDate:(id)a5
{
  v8 = a5;
  v9 = [(MXSourcePathUtil *)self _setupSourceDirectoryForSourceID:a3 andBundleID:a4];
  if (v9)
  {
    v10 = [(MXSourcePathUtil *)self _filePathOfDiagnosticSourcePayloadForDate:v8 andSourceDirectory:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)cleanDataDirectoryForSource:(int64_t)a3
{
  if ((a3 - 2) <= 4)
  {
    [(MXSourcePathUtil *)self _removeFilesForSourceID:?];
  }
}

- (void)cleanDiagnosticsDirectoryForSource:(int64_t)a3 andClient:(id)a4
{
  if ((a3 - 3) <= 2)
  {
    [MXSourcePathUtil _removeFilesForSourceID:"_removeFilesForSourceID:andClient:" andClient:?];
  }
}

- (void)removeDeliveredDiagnosticsForSourceID:(int64_t)a3 forDate:(id)a4
{
  v6 = a4;
  v7 = [&unk_286A1BAA8 objectAtIndexedSubscript:a3];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXSourcePathUtil removeDeliveredDiagnosticsForSourceID:forDate:];
  }

  v8 = [MEMORY[0x277D28708] containerPath];
  v9 = [v8 stringByAppendingPathComponent:v7];
  storageUtil = self->_storageUtil;
  v18 = 0;
  v11 = [(MXStorageUtilProtocol *)storageUtil filesFromDirectory:v9 error:&v18];
  v12 = v18;
  logHandle = self->_logHandle;
  if (v12)
  {
    v14 = v12;
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
    {
      [MXSourcePathUtil removeDeliveredDiagnosticsForSourceID:forDate:];
    }
  }

  else
  {
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXSourcePathUtil removeDeliveredDiagnosticsForSourceID:v11 forDate:?];
    }

    v15 = [(MXDateUtil *)self->_dateUtil stringFromDate:v6];
    v16 = self->_storageUtil;
    v17 = 0;
    [(MXStorageUtilProtocol *)v16 removeFiles:v11 withFilenameContainsSubstring:v15 fromDirectory:v9 error:&v17];
    v14 = v17;
  }
}

- (id)_filePathOfMetricSourcePayloadForDate:(id)a3 andSourceDirectory:(id)a4
{
  dateUtil = self->_dateUtil;
  v6 = a4;
  v7 = [(MXDateUtil *)dateUtil stringFromDate:a3];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"log-%@", v7];
  v9 = [v6 stringByAppendingPathComponent:v8];

  return v9;
}

- (id)_filePathOfDiagnosticSourcePayloadForDate:(id)a3 andSourceDirectory:(id)a4
{
  dateUtil = self->_dateUtil;
  v6 = a4;
  v7 = [(MXDateUtil *)dateUtil stringFromDate:a3];
  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [v9 UUIDString];
  v11 = [v8 stringWithFormat:@"diag-log-%@-%@", v7, v10];
  v12 = [v6 stringByAppendingPathComponent:v11];

  return v12;
}

- (id)_setupSourceDirectoryForSourceID:(int64_t)a3 andBundleID:(id)a4
{
  v6 = [(MXSourcePathUtil *)self _sourceDirectoryForSource:a3 andBundleID:a4];
  if ([(MXStorageUtilProtocol *)self->_storageUtil isDataExistAsDirectoryForPath:v6])
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFBLL) == 2)
    {
      if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
      {
        [MXSourcePathUtil _setupSourceDirectoryForSourceID:andBundleID:];
      }

      if (([(MXStorageUtilProtocol *)self->_storageUtil removeExistingFilesFromDirectory:v6]& 1) == 0)
      {
LABEL_6:
        v7 = 0;
        goto LABEL_11;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXSourcePathUtil _setupSourceDirectoryForSourceID:andBundleID:];
    }

    storageUtil = self->_storageUtil;
    v10 = 0;
    if (![(MXStorageUtilProtocol *)storageUtil createDirectory:v6 error:&v10])
    {
      goto LABEL_6;
    }
  }

  v7 = v6;
LABEL_11:

  return v7;
}

- (id)_sourceDirectoryForSource:(int64_t)a3 andBundleID:(id)a4
{
  v5 = a4;
  v6 = [&unk_286A1BAC0 objectAtIndexedSubscript:a3];
  v7 = [MEMORY[0x277D28708] containerPath];
  v8 = v7;
  if ((a3 & 0xFFFFFFFFFFFFFFFBLL) == 2)
  {
    v9 = [v7 stringByAppendingPathComponent:v6];
  }

  else if ((a3 - 3) > 2)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v7 stringByAppendingPathComponent:v6];
    v9 = [v10 stringByAppendingPathComponent:v5];
  }

  return v9;
}

- (void)_removeFilesForSourceID:(int64_t)a3
{
  v4 = [&unk_286A1BAD8 objectAtIndexedSubscript:a3];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXSourcePathUtil removeDeliveredDiagnosticsForSourceID:forDate:];
  }

  v5 = [MEMORY[0x277D28708] containerPath];
  v6 = [v5 stringByAppendingPathComponent:v4];
  storageUtil = self->_storageUtil;
  v14 = 0;
  v8 = [(MXStorageUtilProtocol *)storageUtil filesFromDirectory:v6 error:&v14];
  v9 = v14;
  logHandle = self->_logHandle;
  if (v9)
  {
    v11 = v9;
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
    {
      [MXSourcePathUtil removeDeliveredDiagnosticsForSourceID:forDate:];
    }
  }

  else
  {
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXSourcePathUtil removeDeliveredDiagnosticsForSourceID:v8 forDate:?];
    }

    v12 = self->_storageUtil;
    v13 = 0;
    [(MXStorageUtilProtocol *)v12 removeFiles:v8 fromDirectory:v6 error:&v13];
    v11 = v13;
  }
}

- (void)_removeFilesForSourceID:(int64_t)a3 andClient:(id)a4
{
  v6 = a4;
  v7 = [&unk_286A1BAF0 objectAtIndexedSubscript:a3];
  if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
  {
    [MXSourcePathUtil removeDeliveredDiagnosticsForSourceID:forDate:];
  }

  v8 = [MEMORY[0x277D28708] containerPath];
  v9 = [v8 stringByAppendingPathComponent:v7];
  v10 = [v9 stringByAppendingPathComponent:v6];

  storageUtil = self->_storageUtil;
  v18 = 0;
  v12 = [(MXStorageUtilProtocol *)storageUtil filesFromDirectory:v10 error:&v18];
  v13 = v18;
  logHandle = self->_logHandle;
  if (v13)
  {
    v15 = v13;
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
    {
      [MXSourcePathUtil removeDeliveredDiagnosticsForSourceID:forDate:];
    }
  }

  else
  {
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
    {
      [MXSourcePathUtil removeDeliveredDiagnosticsForSourceID:v12 forDate:?];
    }

    v16 = self->_storageUtil;
    v17 = 0;
    [(MXStorageUtilProtocol *)v16 removeFiles:v12 fromDirectory:v10 error:&v17];
    v15 = v17;
  }
}

- (void)removeDeliveredDiagnosticsForSourceID:forDate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Cleaning %@ Directory", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeDeliveredDiagnosticsForSourceID:forDate:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3(&dword_258D6F000, v0, v1, "Failed to read contents of %@ source directory: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)removeDeliveredDiagnosticsForSourceID:(void *)a1 forDate:(void *)a2 .cold.3(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 count];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4(&dword_258D6F000, v4, v5, "Found %lu files to clean for source: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setupSourceDirectoryForSourceID:andBundleID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Creating Source Directory at path %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupSourceDirectoryForSourceID:andBundleID:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_258D6F000, v0, v1, "Source Directory %@ exists", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end