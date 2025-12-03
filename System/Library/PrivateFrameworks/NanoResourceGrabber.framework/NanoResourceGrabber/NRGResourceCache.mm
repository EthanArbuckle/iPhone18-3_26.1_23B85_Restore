@interface NRGResourceCache
+ (id)cacheDirPathForAppBundleID:(id)d withPairedDeviceStorePath:(id)path;
+ (id)cacheDirPathForPairedDevice;
+ (id)cacheDirPathForPairedDeviceStorePath:(id)path;
+ (id)iconCacheDirPathForAppBundleID:(id)d withPairedDeviceStorePath:(id)path;
+ (void)createCachePathIfNecessaryWithPairedDeviceStorePath:(id)path;
+ (void)invalidateBundleID:(id)d withPairedDeviceStorePath:(id)path;
+ (void)invalidatePairedDevice:(id)device;
@end

@implementation NRGResourceCache

+ (void)invalidateBundleID:(id)d withPairedDeviceStorePath:(id)path
{
  dCopy = d;
  pathCopy = path;
  v8 = [self cacheDirPathForAppBundleID:dCopy withPairedDeviceStorePath:pathCopy];
  if (v8)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [defaultManager fileExistsAtPath:v8];

    if (v10)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v15 = 0;
      v12 = [defaultManager2 removeItemAtPath:v8 error:&v15];
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

+ (void)invalidatePairedDevice:(id)device
{
  deviceCopy = device;
  v5 = [self cacheDirPathForPairedDeviceStorePath:deviceCopy];
  if (!v5)
  {
    v6 = nrg_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(NRGResourceCache *)deviceCopy invalidatePairedDevice:v6];
    }
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [defaultManager fileExistsAtPath:v5];

  if (v8)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = 0;
    v10 = [defaultManager2 removeItemAtPath:v5 error:&v13];
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

+ (id)cacheDirPathForPairedDeviceStorePath:(id)path
{
  pathCopy = path;
  v4 = pathCopy;
  if (pathCopy)
  {
    v5 = [pathCopy stringByAppendingPathComponent:@"com.apple.private.nanoresourcegrabber"];
    v6 = [v5 stringByAppendingPathComponent:@"received"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)cacheDirPathForAppBundleID:(id)d withPairedDeviceStorePath:(id)path
{
  if (d)
  {
    dCopy = d;
    v7 = [self cacheDirPathForPairedDeviceStorePath:path];
    v8 = [v7 stringByAppendingPathComponent:dCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)createCachePathIfNecessaryWithPairedDeviceStorePath:(id)path
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [self cacheDirPathForPairedDeviceStorePath:path];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];

  if ((v5 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = 0;
    v7 = [defaultManager2 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v17];
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

+ (id)iconCacheDirPathForAppBundleID:(id)d withPairedDeviceStorePath:(id)path
{
  v4 = [self cacheDirPathForAppBundleID:d withPairedDeviceStorePath:path];
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