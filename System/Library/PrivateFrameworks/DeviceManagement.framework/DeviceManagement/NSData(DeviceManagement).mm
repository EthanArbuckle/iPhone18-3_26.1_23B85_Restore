@interface NSData(DeviceManagement)
- (uint64_t)dm_atomicWriteToURL:()DeviceManagement error:;
@end

@implementation NSData(DeviceManagement)

- (uint64_t)dm_atomicWriteToURL:()DeviceManagement error:
{
  v6 = a3;
  v37 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v6 path];
  v9 = [defaultManager fileExistsAtPath:path isDirectory:&v37];
  v10 = v37;

  if (v9 && (v10 & 1) != 0)
  {
    v11 = DMFAtomicFileWritingLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NSData(DeviceManagement) dm_atomicWriteToURL:error:];
    }

    DMFErrorWithCodeAndUserInfo(6, 0);
    *a4 = v12 = 0;
  }

  else
  {
    uRLByDeletingLastPathComponent = [v6 URLByDeletingLastPathComponent];
    v14 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v17 = [uUIDString substringToIndex:8];
    lastPathComponent = [v6 lastPathComponent];
    v19 = [v14 stringWithFormat:@".temp-%@-%@", v17, lastPathComponent];

    v20 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v19];
    v36 = 0;
    LOBYTE(uUIDString) = [self writeToURL:v20 options:0 error:&v36];
    v21 = v36;
    if (uUIDString)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v35 = v21;
      v23 = [defaultManager2 replaceItemAtURL:v6 withItemAtURL:v20 backupItemName:0 options:1 resultingItemURL:0 error:&v35];
      v24 = v35;

      v25 = DMFAtomicFileWritingLog();
      v26 = v25;
      if (v23)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [NSData(DeviceManagement) dm_atomicWriteToURL:error:];
        }

        v12 = 1;
        v21 = v24;
      }

      else
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [NSData(DeviceManagement) dm_atomicWriteToURL:error:];
        }

        v29 = v24;
        *a4 = v24;
        defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
        v34 = v24;
        v31 = [defaultManager3 removeItemAtURL:v20 error:&v34];
        v21 = v34;

        if ((v31 & 1) == 0)
        {
          v32 = DMFAtomicFileWritingLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [NSData(DeviceManagement) dm_atomicWriteToURL:error:];
          }
        }

        v12 = 0;
      }
    }

    else
    {
      v27 = DMFAtomicFileWritingLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [NSData(DeviceManagement) dm_atomicWriteToURL:error:];
      }

      v28 = v21;
      v12 = 0;
      *a4 = v21;
    }
  }

  return v12;
}

- (void)dm_atomicWriteToURL:()DeviceManagement error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1DBFFF000, v0, v1, "Failed to write temporary file: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dm_atomicWriteToURL:()DeviceManagement error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1DBFFF000, v0, v1, "Failed to replace original file: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dm_atomicWriteToURL:()DeviceManagement error:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1DBFFF000, v0, v1, "Failed to remove temporary file: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dm_atomicWriteToURL:()DeviceManagement error:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1DBFFF000, v0, OS_LOG_TYPE_DEBUG, "Wrote file atomically in-place: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)dm_atomicWriteToURL:()DeviceManagement error:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1DBFFF000, v0, v1, "Failed to write temporary file since a directory is present: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end