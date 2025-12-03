@interface MXStorageUtil
- (BOOL)_removeFile:(id)file error:(id *)error;
- (BOOL)_removeFiles:(id)files fromDirectory:(id)directory error:(id *)error;
- (BOOL)createDirectory:(id)directory error:(id *)error;
- (BOOL)isDataExistAsDirectoryForPath:(id)path;
- (BOOL)removeExistingFilesFromDirectory:(id)directory;
- (BOOL)saveData:(id)data withFilePath:(id)path;
- (MXStorageUtil)init;
- (id)dataFromPath:(id)path;
- (void)removeFiles:(id)files withFilenameContainsSubstring:(id)substring fromDirectory:(id)directory error:(id *)error;
- (void)setAuthProtectionForPath:(id)path fromAttributes:(id)attributes;
@end

@implementation MXStorageUtil

- (MXStorageUtil)init
{
  v8.receiver = self;
  v8.super_class = MXStorageUtil;
  v2 = [(MXStorageUtil *)&v8 init];
  if (v2)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    fileManager = v2->_fileManager;
    v2->_fileManager = defaultManager;

    v5 = os_log_create("com.apple.metrickit", "storage.utility");
    logHandle = v2->_logHandle;
    v2->_logHandle = v5;

    if (!v2->_logHandle)
    {
      objc_storeStrong(&v2->_logHandle, MEMORY[0x277D86220]);
    }
  }

  return v2;
}

- (BOOL)saveData:(id)data withFilePath:(id)path
{
  pathCopy = path;
  v16 = 0;
  v7 = [data writeToFile:pathCopy options:0x40000000 error:&v16];
  v8 = v16;
  if (v8 && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
  {
    [MXStorageUtil saveData:withFilePath:];
  }

  v9 = open([pathCopy UTF8String], 0);
  if (v9 < 0)
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [MXStorageUtil saveData:pathCopy withFilePath:logHandle];
    }
  }

  else
  {
    v10 = v9;
    v15 = 66565;
    v11 = ffsctl(v9, 0xC0084A44uLL, &v15, 0);
    v12 = self->_logHandle;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MXStorageUtil saveData:withFilePath:];
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [MXStorageUtil saveData:withFilePath:];
    }

    close(v10);
  }

  return v7;
}

- (id)dataFromPath:(id)path
{
  pathCopy = path;
  fileManager = [(MXStorageUtil *)self fileManager];
  v6 = [fileManager contentsAtPath:pathCopy];

  return v6;
}

- (BOOL)removeExistingFilesFromDirectory:(id)directory
{
  directoryCopy = directory;
  v5 = [(MXStorageUtil *)self _filesFromDirectory:directoryCopy error:0];
  v7 = 0;
  LOBYTE(self) = [(MXStorageUtil *)self _removeFiles:v5 fromDirectory:directoryCopy error:&v7];

  return self;
}

- (void)removeFiles:(id)files withFilenameContainsSubstring:(id)substring fromDirectory:(id)directory error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  substringCopy = substring;
  directoryCopy = directory;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [filesCopy countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v26;
    *&v13 = 138412546;
    v23 = v13;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(filesCopy);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        if ([v17 containsString:{substringCopy, v23}])
        {
          fileManager = self->_fileManager;
          v19 = [directoryCopy stringByAppendingPathComponent:v17];
          LOBYTE(fileManager) = [(NSFileManager *)fileManager removeItemAtPath:v19 error:error];

          if ((fileManager & 1) == 0)
          {
            logHandle = self->_logHandle;
            if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
            {
              v21 = *error;
              *buf = v23;
              v30 = v17;
              v31 = 2112;
              v32 = v21;
              _os_log_error_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_ERROR, "Failed to remove file %@ with error %@", buf, 0x16u);
            }
          }
        }
      }

      v14 = [filesCopy countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v14);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)createDirectory:(id)directory error:(id *)error
{
  directoryCopy = directory;
  v7 = [(NSFileManager *)self->_fileManager createDirectoryAtPath:directoryCopy withIntermediateDirectories:1 attributes:0 error:error];
  if (!v7 && os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
  {
    [MXStorageUtil createDirectory:directoryCopy error:error];
  }

  return v7;
}

- (BOOL)isDataExistAsDirectoryForPath:(id)path
{
  v5 = 0;
  v3 = [(NSFileManager *)self->_fileManager fileExistsAtPath:path isDirectory:&v5];
  return v3 & v5;
}

- (void)setAuthProtectionForPath:(id)path fromAttributes:(id)attributes
{
  v15[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = *MEMORY[0x277CCA1B0];
  v8 = [attributes objectForKeyedSubscript:*MEMORY[0x277CCA1B0]];
  v9 = *MEMORY[0x277CCA1A0];
  v10 = [v8 isEqualToString:*MEMORY[0x277CCA1A0]];

  if ((v10 & 1) == 0)
  {
    fileManager = self->_fileManager;
    v14 = v7;
    v15[0] = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [(NSFileManager *)fileManager setAttributes:v12 ofItemAtPath:pathCopy error:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_removeFiles:(id)files fromDirectory:(id)directory error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  directoryCopy = directory;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = filesCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [directoryCopy stringByAppendingPathComponent:{v15, v21}];
        v17 = [(MXStorageUtil *)self _removeFile:v16 error:error];

        if (!v17)
        {
          if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
          {
            [MXStorageUtil _removeFiles:v15 fromDirectory:error error:?];
          }

          v18 = 0;
          goto LABEL_13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)_removeFile:(id)file error:(id *)error
{
  fileCopy = file;
  fileManager = [(MXStorageUtil *)self fileManager];
  LOBYTE(error) = [fileManager removeItemAtPath:fileCopy error:error];

  return error;
}

- (void)saveData:withFilePath:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)saveData:withFilePath:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)saveData:withFilePath:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_258D6F000, v0, OS_LOG_TYPE_DEBUG, "Marked %{public}@ purgeable", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)saveData:(uint64_t)a1 withFilePath:(void *)a2 .cold.4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *__error();
  v6 = 138543618;
  v7 = a1;
  v8 = 1024;
  v9 = v4;
  _os_log_error_impl(&dword_258D6F000, v3, OS_LOG_TYPE_ERROR, "Failed to open the file %{public}@ with errno %{errno}d hence couldn't mark it purgeable", &v6, 0x12u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)createDirectory:(uint64_t)a1 error:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_removeFiles:(uint64_t)a1 fromDirectory:(uint64_t *)a2 error:.cold.1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

@end