@interface MSDKCacheManager
+ (id)getBundleFilePathFromHash:(id)hash;
+ (id)getDeviceContentPlistCachePath:(id)path;
+ (id)getDeviceFileCachePath:(id)path;
+ (id)getDeviceManifestCachePath:(id)path;
@end

@implementation MSDKCacheManager

+ (id)getDeviceFileCachePath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      fileHash = [pathCopy fileHash];
      if (fileHash)
      {
        v5 = fileHash;
        hexStringRepresentation = [fileHash hexStringRepresentation];
        lowercaseString = [hexStringRepresentation lowercaseString];

        if (lowercaseString)
        {
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", @"/var/MSDWorkContainer/.MSD_cache", lowercaseString];

          goto LABEL_10;
        }

        +[MSDKCacheManager getDeviceFileCachePath:];
      }

      else
      {
        v5 = defaultLogHandle();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          +[MSDKCacheManager getDeviceFileCachePath:];
        }
      }
    }

    else
    {
      v5 = defaultLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        +[MSDKCacheManager getDeviceFileCachePath:];
      }
    }
  }

  else
  {
    v5 = defaultLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[MSDKCacheManager getDeviceFileCachePath:];
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

+ (id)getDeviceManifestCachePath:(id)path
{
  pathCopy = path;
  v4 = pathCopy;
  if (pathCopy)
  {
    filePath = [pathCopy filePath];

    if (filePath)
    {
      filePath2 = [v4 filePath];
      lastPathComponent = [filePath2 lastPathComponent];

      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", @"/var/MSDWorkContainer/.MSD_cache_manifest", lastPathComponent];
      goto LABEL_4;
    }

    lastPathComponent = defaultLogHandle();
    if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
    {
      +[MSDKCacheManager getDeviceManifestCachePath:];
    }
  }

  else
  {
    lastPathComponent = defaultLogHandle();
    if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
    {
      +[MSDKCacheManager getDeviceManifestCachePath:];
    }
  }

  v8 = 0;
LABEL_4:

  return v8;
}

+ (id)getDeviceContentPlistCachePath:(id)path
{
  pathCopy = path;
  v4 = pathCopy;
  if (pathCopy)
  {
    partNumber = [pathCopy partNumber];

    if (partNumber)
    {
      partNumber = [v4 revision];

      if (partNumber)
      {
        v6 = MEMORY[0x277CCACA8];
        partNumber2 = [v4 partNumber];
        revision = [v4 revision];
        partNumber = [v6 stringWithFormat:@"%@/%@_%d.plist", @"/var/MSDWorkContainer/.MSD_cache_content_plist", partNumber2, objc_msgSend(revision, "intValue")];
      }

      else
      {
        +[MSDKCacheManager getDeviceContentPlistCachePath:];
      }
    }

    else
    {
      +[MSDKCacheManager getDeviceContentPlistCachePath:];
    }
  }

  else
  {
    +[MSDKCacheManager getDeviceContentPlistCachePath:];
    partNumber = 0;
  }

  return partNumber;
}

+ (id)getBundleFilePathFromHash:(id)hash
{
  hashCopy = hash;
  v4 = hashCopy;
  if (hashCopy)
  {
    hexStringRepresentation = [hashCopy hexStringRepresentation];
    lowercaseString = [hexStringRepresentation lowercaseString];

    if (lowercaseString)
    {
      if ([lowercaseString length]> 1)
      {
        v7 = MEMORY[0x277CCACA8];
        v8 = [lowercaseString substringToIndex:2];
        v9 = [v7 stringWithFormat:@"%@/%@", v8, lowercaseString];

        goto LABEL_5;
      }

      +[MSDKCacheManager getBundleFilePathFromHash:];
    }

    else
    {
      lowercaseString = defaultLogHandle();
      if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_ERROR))
      {
        +[MSDKCacheManager getBundleFilePathFromHash:];
      }
    }
  }

  else
  {
    lowercaseString = defaultLogHandle();
    if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_ERROR))
    {
      +[MSDKCacheManager getBundleFilePathFromHash:];
    }
  }

  v9 = 0;
LABEL_5:

  return v9;
}

+ (void)getDeviceFileCachePath:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)getDeviceFileCachePath:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

+ (void)getDeviceFileCachePath:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)getDeviceFileCachePath:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)getDeviceManifestCachePath:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)getDeviceManifestCachePath:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)getDeviceContentPlistCachePath:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

+ (void)getDeviceContentPlistCachePath:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

+ (void)getDeviceContentPlistCachePath:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

+ (void)getBundleFilePathFromHash:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

+ (void)getBundleFilePathFromHash:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)getBundleFilePathFromHash:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end