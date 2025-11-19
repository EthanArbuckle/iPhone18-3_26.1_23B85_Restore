@interface NRGResourceCache
+ (id)cacheDirPathForAppBundleID:(id)a3 withPairedDeviceStorePath:(id)a4;
+ (id)cacheDirPathForPairedDevice;
+ (id)cacheDirPathForPairedDeviceStorePath:(id)a3;
+ (id)iconCacheDirPathForAppBundleID:(id)a3 withPairedDeviceStorePath:(id)a4;
+ (void)createCachePathIfNecessaryWithPairedDeviceStorePath:(id)a3;
+ (void)invalidateBundleID:(id)a3 withPairedDeviceStorePath:(id)a4;
+ (void)invalidatePairedDevice:(id)a3;
@end

@implementation NRGResourceCache

+ (void)invalidateBundleID:(id)a3 withPairedDeviceStorePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 cacheDirPathForAppBundleID:v6 withPairedDeviceStorePath:v7];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v9 fileExistsAtPath:v8];

    if (v10)
    {
      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v15 = 0;
      v12 = [v11 removeItemAtPath:v8 error:&v15];
      v13 = v15;

      if ((v12 & 1) == 0)
      {
        v14 = nrg_daemon_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          +[NRGResourceCache invalidateBundleID:withPairedDeviceStorePath:];
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = nrg_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[NRGResourceCache invalidateBundleID:withPairedDeviceStorePath:];
    }
  }
}

+ (void)invalidatePairedDevice:(id)a3
{
  v4 = a3;
  v5 = [a1 cacheDirPathForPairedDeviceStorePath:v4];
  if (!v5)
  {
    v6 = nrg_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(NRGResourceCache *)v4 invalidatePairedDevice:v6];
    }
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 fileExistsAtPath:v5];

  if (v8)
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = 0;
    v10 = [v9 removeItemAtPath:v5 error:&v13];
    v11 = v13;

    if ((v10 & 1) == 0)
    {
      v12 = nrg_daemon_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[NRGResourceCache invalidatePairedDevice:];
      }
    }
  }

  else
  {
    v11 = 0;
  }
}

+ (id)cacheDirPathForPairedDevice
{
  v2 = NRGGetActivePairedDeviceStorePath();
  v3 = [v2 stringByAppendingPathComponent:@"com.apple.private.nanoresourcegrabber"];

  return v3;
}

+ (id)cacheDirPathForPairedDeviceStorePath:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 stringByAppendingPathComponent:@"com.apple.private.nanoresourcegrabber"];
    v6 = [v5 stringByAppendingPathComponent:@"received"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)cacheDirPathForAppBundleID:(id)a3 withPairedDeviceStorePath:(id)a4
{
  if (a3)
  {
    v6 = a3;
    v7 = [a1 cacheDirPathForPairedDeviceStorePath:a4];
    v8 = [v7 stringByAppendingPathComponent:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)createCachePathIfNecessaryWithPairedDeviceStorePath:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [a1 cacheDirPathForPairedDeviceStorePath:a3];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = 0;
    v7 = [v6 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v17];
    v8 = v17;

    if (v7)
    {
      v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3 isDirectory:1];
      v10 = *MEMORY[0x277CBE878];
      v16 = v8;
      v11 = [v9 setResourceValue:MEMORY[0x277CBEC38] forKey:v10 error:&v16];
      v12 = v16;

      v13 = nrg_daemon_log();
      v14 = v13;
      if (v11)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v19 = v3;
          _os_log_impl(&dword_25B66E000, v14, OS_LOG_TYPE_DEFAULT, "createCachePathIfNecessary created and excludedFromBackup %@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[NRGResourceCache createCachePathIfNecessaryWithPairedDeviceStorePath:];
      }
    }

    else
    {
      v9 = nrg_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[NRGResourceCache createCachePathIfNecessaryWithPairedDeviceStorePath:];
      }

      v12 = v8;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (id)iconCacheDirPathForAppBundleID:(id)a3 withPairedDeviceStorePath:(id)a4
{
  v4 = [a1 cacheDirPathForAppBundleID:a3 withPairedDeviceStorePath:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 stringByAppendingPathComponent:@"icons"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)iconForIconVariant:(uint64_t)a1 inBundleID:(NSObject *)a2 withPairedDeviceStorePath:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25B66E000, a2, OS_LOG_TYPE_ERROR, "iconForIconVariant: Error reading data %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)invalidateBundleID:withPairedDeviceStorePath:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25B66E000, v0, v1, "invalidateBundleID: Failed invalidating cache at %@, error %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)invalidateBundleID:withPairedDeviceStorePath:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25B66E000, v0, v1, "invalidateBundleID: Error creating bundle cache dir path: appBundleID=%@ pairedDeviceStorePath=%@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)invalidatePairedDevice:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25B66E000, a2, OS_LOG_TYPE_ERROR, "invalidatePairedDevice: Error creating bundle cache dir path: pairedDeviceStorePath=%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)invalidatePairedDevice:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25B66E000, v0, v1, "invalidatePairedDevice: Failed invalidating paired device cache at %@, error %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)createCachePathIfNecessaryWithPairedDeviceStorePath:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25B66E000, v0, v1, "createCachePathIfNecessary: Error creating cache directory %@ path %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)createCachePathIfNecessaryWithPairedDeviceStorePath:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25B66E000, v0, v1, "createCachePathIfNecessary: Error setting attributes on cache directory %@ path %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end