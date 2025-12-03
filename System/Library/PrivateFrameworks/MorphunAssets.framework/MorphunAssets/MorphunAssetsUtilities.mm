@interface MorphunAssetsUtilities
+ (id)configFileValueForKey:(id)key;
+ (id)configurationFromPropertiesFile:(id)file;
+ (id)embeddedLanguages;
+ (id)libmorphunVersion;
+ (id)userSiriXLocales;
+ (int)compareVersion:(id)version;
+ (void)embeddedLanguages;
+ (void)libmorphunVersion;
@end

@implementation MorphunAssetsUtilities

+ (id)embeddedLanguages
{
  MorphunLogInitIfNeeded();
  if (embeddedLanguages_oncePredicate != -1)
  {
    +[MorphunAssetsUtilities embeddedLanguages];
  }

  if (embeddedLanguages_languages)
  {
    v2 = embeddedLanguages_languages;
  }

  else
  {
    if (os_log_type_enabled(MorphunAssetOSLog, OS_LOG_TYPE_ERROR))
    {
      +[MorphunAssetsUtilities embeddedLanguages];
    }

    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

void __43__MorphunAssetsUtilities_embeddedLanguages__block_invoke()
{
  v0 = [MorphunAssetsUtilities configFileValueForKey:@"languages.default"];
  if (v0)
  {
    v3 = v0;
    v1 = [v0 componentsSeparatedByString:{@", "}];
    v2 = embeddedLanguages_languages;
    embeddedLanguages_languages = v1;

    v0 = v3;
  }
}

+ (id)userSiriXLocales
{
  v15 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  v4 = MorphunAssetOSLog;
  if (os_log_type_enabled(MorphunAssetOSLog, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "+[MorphunAssetsUtilities userSiriXLocales]";
    v13 = 2114;
    v14 = languageCode;
    _os_log_impl(&dword_25AACA000, v4, OS_LOG_TYPE_INFO, "%s AFPreferences returned %{public}@", buf, 0x16u);
  }

  if (languageCode)
  {
    v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:languageCode];
    v6 = v5;
    if (v5)
    {
      v10 = v5;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)configurationFromPropertiesFile:(id)file
{
  fileCopy = file;
  path = [fileCopy path];
  v5 = path;
  if (path)
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __58__MorphunAssetsUtilities_configurationFromPropertiesFile___block_invoke;
    v13 = &unk_2799224C8;
    v6 = path;
    v14 = v6;
    v15 = fileCopy;
    if (configurationFromPropertiesFile__oncePredicate != -1)
    {
      dispatch_once(&configurationFromPropertiesFile__oncePredicate, &v10);
    }

    if (configurationFromPropertiesFile__configurationStore && ([configurationFromPropertiesFile__configurationStore objectForKeyedSubscript:{v6, v10, v11, v12, v13, v14, v15}], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      v8 = [configurationFromPropertiesFile__configurationStore objectForKeyedSubscript:v6];
    }

    else
    {
      v8 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

void __58__MorphunAssetsUtilities_configurationFromPropertiesFile___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = configurationFromPropertiesFile__configurationStore;
  configurationFromPropertiesFile__configurationStore = v2;

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = (a1 + 32);
  [configurationFromPropertiesFile__configurationStore setObject:v4 forKeyedSubscript:*(a1 + 32)];

  v6 = MorphunAssetOSLog;
  if (os_log_type_enabled(MorphunAssetOSLog, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    *buf = 136315394;
    v36 = "+[MorphunAssetsUtilities configurationFromPropertiesFile:]_block_invoke";
    v37 = 2114;
    v38 = v7;
    _os_log_impl(&dword_25AACA000, v6, OS_LOG_TYPE_INFO, "%s Reading configuration file %{public}@", buf, 0x16u);
  }

  v8 = *v5;
  v33 = 0;
  v9 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v8 encoding:4 error:&v33];
  v10 = v33;
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(MorphunAssetOSLog, OS_LOG_TYPE_ERROR))
    {
      __58__MorphunAssetsUtilities_configurationFromPropertiesFile___block_invoke_cold_1(v5);
    }
  }

  else
  {
    v32 = 0;
    v12 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^[ \t]*(.*?)[ \t]*[=|:][ \t]*(.*?)[ \t]*$" options:16 error:&v32];
    v11 = v32;
    if (v11)
    {
      if (os_log_type_enabled(MorphunAssetOSLog, OS_LOG_TYPE_ERROR))
      {
        __58__MorphunAssetsUtilities_configurationFromPropertiesFile___block_invoke_cold_2(v5);
      }
    }

    else
    {
      v27 = v12;
      v13 = [v12 matchesInString:v9 options:0 range:{0, objc_msgSend(v9, "length")}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v29;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v28 + 1) + 8 * i);
            v19 = [v18 rangeAtIndex:1];
            v21 = [v9 substringWithRange:{v19, v20}];
            v22 = [v18 rangeAtIndex:2];
            v24 = [v9 substringWithRange:{v22, v23}];
            v25 = [configurationFromPropertiesFile__configurationStore objectForKeyedSubscript:*v5];
            [v25 setObject:v24 forKeyedSubscript:v21];
          }

          v15 = [v13 countByEnumeratingWithState:&v28 objects:v34 count:16];
        }

        while (v15);
      }

      v12 = v27;
      v11 = 0;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (id)configFileValueForKey:(id)key
{
  keyCopy = key;
  embeddedPath = [self embeddedPath];
  v6 = [embeddedPath stringByAppendingPathComponent:@"config.properties"];

  v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v6];
  v8 = [MorphunAssetsUtilities configurationFromPropertiesFile:v7];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v10 = [v9 objectForKeyedSubscript:keyCopy];
  }

  else
  {
    if (os_log_type_enabled(MorphunAssetOSLog, OS_LOG_TYPE_ERROR))
    {
      +[MorphunAssetsUtilities configFileValueForKey:];
    }

    v10 = 0;
  }

  return v10;
}

+ (id)libmorphunVersion
{
  MorphunLogInitIfNeeded();
  if ([libmorphunVersion_version isEqualToString:&stru_286C1C540])
  {
    v2 = [MorphunAssetsUtilities configFileValueForKey:@"library.version"];
    if (v2)
    {
      objc_storeStrong(&libmorphunVersion_version, v2);
    }

    else if (os_log_type_enabled(MorphunAssetOSLog, OS_LOG_TYPE_ERROR))
    {
      +[MorphunAssetsUtilities libmorphunVersion];
    }

    v3 = libmorphunVersion_version;
  }

  else
  {
    v3 = libmorphunVersion_version;
  }

  return v3;
}

+ (int)compareVersion:(id)version
{
  versionCopy = version;
  v4 = [versionCopy componentsSeparatedByString:@"."];
  v5 = +[MorphunAssetsUtilities libmorphunVersion];
  v6 = [v5 componentsSeparatedByString:@"."];

  if ([v4 count] >= 2 && objc_msgSend(v6, "count") > 1)
  {
    v10 = [v4 objectAtIndexedSubscript:0];
    intValue = [v10 intValue];
    v12 = [v6 objectAtIndexedSubscript:0];
    intValue2 = [v12 intValue];

    if (intValue >= intValue2)
    {
      if (intValue == intValue2)
      {
        v14 = [v4 objectAtIndexedSubscript:1];
        intValue3 = [v14 intValue];
        v16 = [v6 objectAtIndexedSubscript:1];
        intValue4 = [v16 intValue];

        if (intValue3 < intValue4)
        {
          v8 = -1;
        }

        else
        {
          v8 = intValue3 != intValue4;
        }
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v7 = MorphunAssetOSLog;
    if (os_log_type_enabled(MorphunAssetOSLog, OS_LOG_TYPE_ERROR))
    {
      [(MorphunAssetsUtilities *)versionCopy compareVersion:v7];
    }

    v8 = 0;
  }

  return v8;
}

void __58__MorphunAssetsUtilities_configurationFromPropertiesFile___block_invoke_cold_1(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_25AACA000, v2, v3, "%s Failed to read configuration file at %{public}@", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __58__MorphunAssetsUtilities_configurationFromPropertiesFile___block_invoke_cold_2(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_25AACA000, v2, v3, "%s Failed to parse configuration file at %{public}@", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)configFileValueForKey:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25AACA000, v0, v1, "%s Retrieved configuration returned an empty dictionary for %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)embeddedLanguages
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25AACA000, v0, v1, "%s Configuration parser returned a nil value for key %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)libmorphunVersion
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25AACA000, v0, v1, "%s Configuration parser returned a nil value for key %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)compareVersion:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[MorphunAssetsUtilities libmorphunVersion];
  v8[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  v9 = a1;
  v10 = v5;
  v11 = v6;
  _os_log_error_impl(&dword_25AACA000, v3, OS_LOG_TYPE_ERROR, "%s Error parsing version strings:\nInput version: %{public}@\nlibmorphun version:%{public}@", v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end