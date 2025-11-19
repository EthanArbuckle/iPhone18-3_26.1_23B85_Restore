@interface MSDKCacheManager
+ (id)getBundleFilePathFromHash:(id)a3;
+ (id)getDeviceContentPlistCachePath:(id)a3;
+ (id)getDeviceFileCachePath:(id)a3;
+ (id)getDeviceManifestCachePath:(id)a3;
@end

@implementation MSDKCacheManager

+ (id)getDeviceFileCachePath:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v4 = [v3 fileHash];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 hexStringRepresentation];
        v7 = [v6 lowercaseString];

        if (v7)
        {
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", @"/var/MSDWorkContainer/.MSD_cache", v7];

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

+ (id)getDeviceManifestCachePath:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 filePath];

    if (v5)
    {
      v6 = [v4 filePath];
      v7 = [v6 lastPathComponent];

      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", @"/var/MSDWorkContainer/.MSD_cache_manifest", v7];
      goto LABEL_4;
    }

    v7 = defaultLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[MSDKCacheManager getDeviceManifestCachePath:];
    }
  }

  else
  {
    v7 = defaultLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[MSDKCacheManager getDeviceManifestCachePath:];
    }
  }

  v8 = 0;
LABEL_4:

  return v8;
}

+ (id)getDeviceContentPlistCachePath:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 partNumber];

    if (v5)
    {
      v5 = [v4 revision];

      if (v5)
      {
        v6 = MEMORY[0x277CCACA8];
        v7 = [v4 partNumber];
        v8 = [v4 revision];
        v5 = [v6 stringWithFormat:@"%@/%@_%d.plist", @"/var/MSDWorkContainer/.MSD_cache_content_plist", v7, objc_msgSend(v8, "intValue")];
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
    v5 = 0;
  }

  return v5;
}

+ (id)getBundleFilePathFromHash:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hexStringRepresentation];
    v6 = [v5 lowercaseString];

    if (v6)
    {
      if ([v6 length]> 1)
      {
        v7 = MEMORY[0x277CCACA8];
        v8 = [v6 substringToIndex:2];
        v9 = [v7 stringWithFormat:@"%@/%@", v8, v6];

        goto LABEL_5;
      }

      +[MSDKCacheManager getBundleFilePathFromHash:];
    }

    else
    {
      v6 = defaultLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[MSDKCacheManager getBundleFilePathFromHash:];
      }
    }
  }

  else
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
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