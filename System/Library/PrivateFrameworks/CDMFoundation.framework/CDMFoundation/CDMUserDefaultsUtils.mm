@interface CDMUserDefaultsUtils
+ (BOOL)isSkipNodeEnabled;
+ (BOOL)isWriteDebugToDiskEnabled;
+ (id)readCustomAssetsRootPath;
+ (id)readCustomLogPath;
+ (id)readUaaPNLAppModelPaths;
+ (id)readUaaPNLCoreModelPath;
+ (id)readUaaPNLSystemConfigPath;
+ (id)readUserDefaultForKeyString:(id)string andDefaultValue:(id)value;
+ (id)readUserDefaultLVCOverride;
+ (id)readUserDefaultPscOverride;
+ (id)readUserDefaultSnlcOverride;
+ (unint64_t)readNLv4MaxNumParses;
+ (unint64_t)readUaaPNLMaxNumParses;
+ (unint64_t)readUserDefaultsValueForKeyUint64:(id)uint64 defaultValue:(int64_t)value;
+ (unsigned)readAsrAlternativeCount:(id)count;
+ (unsigned)readGraphRunnerMaxConcurrentCount;
+ (unsigned)readNonSiriSelfSampleRate;
+ (unsigned)readXPCCallbackDefaultTimeout;
+ (void)initialize;
@end

@implementation CDMUserDefaultsUtils

+ (unsigned)readGraphRunnerMaxConcurrentCount
{
  if (+[CDMPlatformUtils isInternalInstall])
  {
    return [self readUserDefaultsValueForKeyUint64:@"graph runner max concurrent count" defaultValue:6];
  }

  else
  {
    return 6;
  }
}

+ (id)readCustomAssetsRootPath
{
  v2 = +[CDMPlatformUtils isInternalInstall];
  v3 = +[CDMUserDefaultsUtils getDefaultCustomAssetsRootPath];
  if (v2)
  {
    v4 = [CDMUserDefaultsUtils readUserDefaultForKeyString:@"custom assets root path" andDefaultValue:v3];

    v3 = v4;
  }

  return v3;
}

+ (unsigned)readNonSiriSelfSampleRate
{
  if (+[CDMPlatformUtils isInternalInstall])
  {
    return [self readUserDefaultsValueForKeyUint64:@"non siri sample rate" defaultValue:5];
  }

  else
  {
    return 5;
  }
}

+ (BOOL)isSkipNodeEnabled
{
  if (!+[CDMPlatformUtils isInternalInstall])
  {
    return 1;
  }

  return [CDMUserDefaultsUtils readUserDefaultForKeyBool:@"enable skip node" andDefaultValue:1];
}

+ (unsigned)readXPCCallbackDefaultTimeout
{
  if (+[CDMPlatformUtils isInternalInstall])
  {
    return [self readUserDefaultsValueForKeyUint64:@"xpc callback timeout" defaultValue:2];
  }

  else
  {
    return 2;
  }
}

+ (unsigned)readAsrAlternativeCount:(id)count
{
  v26 = *MEMORY[0x1E69E9840];
  countCopy = count;
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.siri.cdm"];
  if (+[CDMPlatformUtils isInternalInstall])
  {
    v5 = [v4 dictionaryForKey:@"asr alternatives count"];
    v6 = CDMOSLoggerForCategory(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v18 = 136315906;
      v19 = "+[CDMUserDefaultsUtils readAsrAlternativeCount:]";
      v20 = 2112;
      v21 = @"com.apple.siri.cdm";
      v22 = 2112;
      v23 = @"asr alternatives count";
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s defaults read %@ %@ -> %@", &v18, 0x2Au);
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = [&unk_1F5819CE0 objectForKey:countCopy];
  v8 = v7;
  if (v5)
  {
    goto LABEL_7;
  }

  if (v7 && [(__CFString *)v7 intValue]> 0)
  {
    if ([(__CFString *)v8 intValue]< 1)
    {
LABEL_7:
      v9 = [(__CFString *)v5 objectForKey:countCopy];
      v10 = v9;
      if (v9 && [(__CFString *)v9 intValue]> 0)
      {
        v11 = CDMOSLoggerForCategory(1);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v18 = 136315650;
          v19 = "+[CDMUserDefaultsUtils readAsrAlternativeCount:]";
          v20 = 2112;
          v21 = countCopy;
          v22 = 2112;
          v23 = v10;
          _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s NSUserDefaults found AND locale=%@ found in dict, returning %@", &v18, 0x20u);
        }

        intValue = [(__CFString *)v10 intValue];
      }

      else
      {
        v13 = CDMOSLoggerForCategory(1);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v18 = 136315650;
          v19 = "+[CDMUserDefaultsUtils readAsrAlternativeCount:]";
          v20 = 2112;
          v21 = countCopy;
          v22 = 2112;
          v23 = v5;
          _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s [WARN]: Returning 1. NSUserDefaults found, BUT locale=%@'s value is invalid in it? %@", &v18, 0x20u);
        }

        intValue = 1;
      }

      goto LABEL_25;
    }

    v14 = CDMOSLoggerForCategory(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v18 = 136315650;
      v19 = "+[CDMUserDefaultsUtils readAsrAlternativeCount:]";
      v20 = 2112;
      v21 = countCopy;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s NSUserDefaults not found. Locale=%@ found in default dict, returning %@", &v18, 0x20u);
    }

    intValue = [(__CFString *)v8 intValue];
  }

  else
  {
    v15 = CDMOSLoggerForCategory(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = 136315650;
      v19 = "+[CDMUserDefaultsUtils readAsrAlternativeCount:]";
      v20 = 2112;
      v21 = countCopy;
      v22 = 2112;
      v23 = &unk_1F5819CE0;
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s [WARN]: Returning 1. NSUserDefaults not found and locale=%@'s value is invalid in default dict? %@", &v18, 0x20u);
    }

    intValue = 1;
  }

LABEL_25:

  v16 = *MEMORY[0x1E69E9840];
  return intValue;
}

+ (BOOL)isWriteDebugToDiskEnabled
{
  v2 = +[CDMPlatformUtils isInternalInstall];
  if (v2)
  {

    LOBYTE(v2) = [CDMUserDefaultsUtils readUserDefaultForKeyBool:@"write debug data" andDefaultValue:0];
  }

  return v2;
}

+ (id)readCustomLogPath
{
  v2 = +[CDMPlatformUtils isInternalInstall];
  v3 = +[CDMUserDefaultsUtils getDefaultCustomLogPath];
  if (v2)
  {
    v4 = [CDMUserDefaultsUtils readUserDefaultForKeyString:@"custom log path" andDefaultValue:v3];

    v3 = v4;
  }

  return v3;
}

+ (unint64_t)readUaaPNLMaxNumParses
{
  if (!+[CDMPlatformUtils isInternalInstall])
  {
    return 3;
  }

  return [self readUserDefaultsValueForKeyUint64:@"UaaPNL max num parses" defaultValue:3];
}

+ (unint64_t)readNLv4MaxNumParses
{
  if (!+[CDMPlatformUtils isInternalInstall])
  {
    return 1;
  }

  return [self readUserDefaultsValueForKeyUint64:@"NLv4 max num parses" defaultValue:1];
}

+ (unint64_t)readUserDefaultsValueForKeyUint64:(id)uint64 defaultValue:(int64_t)value
{
  v27 = *MEMORY[0x1E69E9840];
  uint64Copy = uint64;
  v6 = +[CDMUserDefaultsUtils userDefaultsCache];
  v7 = [v6 objectForKey:uint64Copy];

  v8 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.siri.cdm"];
  v9 = [v8 integerForKey:uint64Copy];
  v10 = v9;
  if (v9 >= 1)
  {
    valueCopy = v9;
  }

  else
  {
    valueCopy = value;
  }

  if (!v7 || [v7 integerValue] != valueCopy)
  {
    v12 = CDMOSLoggerForCategory(1);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v10 <= 0)
    {
      if (v13)
      {
        v19 = 136315906;
        v20 = "+[CDMUserDefaultsUtils readUserDefaultsValueForKeyUint64:defaultValue:]";
        v21 = 2112;
        v22 = @"com.apple.siri.cdm";
        v23 = 2112;
        v24 = uint64Copy;
        v25 = 2048;
        valueCopy2 = value;
        v14 = "%s defaults read %@ %@ -> not set (or set to <= 0). Using default: count=%zd";
        goto LABEL_11;
      }
    }

    else if (v13)
    {
      v19 = 136315906;
      v20 = "+[CDMUserDefaultsUtils readUserDefaultsValueForKeyUint64:defaultValue:]";
      v21 = 2112;
      v22 = @"com.apple.siri.cdm";
      v23 = 2112;
      v24 = uint64Copy;
      v25 = 2048;
      valueCopy2 = v10;
      v14 = "%s defaults read %@ %@ -> count=%zd";
LABEL_11:
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, v14, &v19, 0x2Au);
    }

    v15 = [MEMORY[0x1E696AD98] numberWithInteger:valueCopy];
    v16 = +[CDMUserDefaultsUtils userDefaultsCache];
    [v16 setObject:v15 forKeyedSubscript:uint64Copy];
  }

  v17 = *MEMORY[0x1E69E9840];
  return valueCopy;
}

+ (id)readUserDefaultLVCOverride
{
  if (+[CDMPlatformUtils isInternalInstall])
  {
    v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.siri.cdm"];
    v3 = [v2 stringForKey:@"LVC override"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)readUserDefaultPscOverride
{
  if (+[CDMPlatformUtils isInternalInstall])
  {
    v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.siri.cdm"];
    v3 = [v2 stringForKey:@"PSC override"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)readUserDefaultSnlcOverride
{
  if (+[CDMPlatformUtils isInternalInstall])
  {
    v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.siri.cdm"];
    v3 = [v2 stringForKey:@"SNLC override"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)readUaaPNLSystemConfigPath
{
  v15 = *MEMORY[0x1E69E9840];
  if (!+[CDMPlatformUtils isInternalInstall])
  {
    v3 = 0;
    goto LABEL_10;
  }

  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.internal.ck"];
  v3 = [v2 stringForKey:@"UaaPSystemConfigPath"];
  v4 = CDMOSLoggerForCategory(1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v11 = 136315394;
      v12 = "+[CDMUserDefaultsUtils readUaaPNLSystemConfigPath]";
      v13 = 2112;
      v14 = v3;
      v6 = "%s UaaP system config path: %@";
      v7 = v4;
      v8 = 22;
LABEL_8:
      _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, v6, &v11, v8);
    }
  }

  else if (v5)
  {
    v11 = 136315138;
    v12 = "+[CDMUserDefaultsUtils readUaaPNLSystemConfigPath]";
    v6 = "%s No UaaP system config path provided via defaults write";
    v7 = v4;
    v8 = 12;
    goto LABEL_8;
  }

LABEL_10:
  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)readUaaPNLCoreModelPath
{
  v15 = *MEMORY[0x1E69E9840];
  if (!+[CDMPlatformUtils isInternalInstall])
  {
    v3 = 0;
    goto LABEL_10;
  }

  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.internal.ck"];
  v3 = [v2 stringForKey:@"UaaPCoreModelPath"];
  v4 = CDMOSLoggerForCategory(1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v11 = 136315394;
      v12 = "+[CDMUserDefaultsUtils readUaaPNLCoreModelPath]";
      v13 = 2112;
      v14 = v3;
      v6 = "%s UaaP Core model path: %@";
      v7 = v4;
      v8 = 22;
LABEL_8:
      _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, v6, &v11, v8);
    }
  }

  else if (v5)
  {
    v11 = 136315138;
    v12 = "+[CDMUserDefaultsUtils readUaaPNLCoreModelPath]";
    v6 = "%s No UaaP Core model path provided via defaults write";
    v7 = v4;
    v8 = 12;
    goto LABEL_8;
  }

LABEL_10:
  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)readUaaPNLAppModelPaths
{
  v12 = *MEMORY[0x1E69E9840];
  if (+[CDMPlatformUtils isInternalInstall])
  {
    v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.internal.ck"];
    v3 = [v2 objectForKey:@"UaaPModelPaths"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _cdm_JSONDictionary = [v3 _cdm_JSONDictionary];
      if (_cdm_JSONDictionary)
      {
        v5 = CDMOSLoggerForCategory(1);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v8 = 136315394;
          v9 = "+[CDMUserDefaultsUtils readUaaPNLAppModelPaths]";
          v10 = 2112;
          v11 = _cdm_JSONDictionary;
          _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s %@", &v8, 0x16u);
        }
      }
    }

    else
    {
      _cdm_JSONDictionary = 0;
    }
  }

  else
  {
    _cdm_JSONDictionary = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return _cdm_JSONDictionary;
}

+ (id)readUserDefaultForKeyString:(id)string andDefaultValue:(id)value
{
  v26 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  valueCopy = value;
  v7 = +[CDMUserDefaultsUtils userDefaultsCache];
  v8 = [v7 objectForKey:stringCopy];

  v9 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.siri.cdm"];
  v10 = [v9 stringForKey:stringCopy];
  if (v10)
  {
    v11 = v10;
    if (v8 == v10)
    {
      goto LABEL_11;
    }

    v12 = CDMOSLoggerForCategory(1);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v18 = 136315906;
    v19 = "+[CDMUserDefaultsUtils readUserDefaultForKeyString:andDefaultValue:]";
    v20 = 2112;
    v21 = @"com.apple.siri.cdm";
    v22 = 2112;
    v23 = stringCopy;
    v24 = 2112;
    v25 = v11;
    v13 = "%s defaults read %@ %@ -> %@";
    goto LABEL_9;
  }

  v14 = valueCopy;
  v11 = v14;
  if (!v8 || v8 != v14)
  {
    v12 = CDMOSLoggerForCategory(1);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
LABEL_10:

      v15 = +[CDMUserDefaultsUtils userDefaultsCache];
      [v15 setObject:v11 forKeyedSubscript:stringCopy];

      goto LABEL_11;
    }

    v18 = 136315906;
    v19 = "+[CDMUserDefaultsUtils readUserDefaultForKeyString:andDefaultValue:]";
    v20 = 2112;
    v21 = @"com.apple.siri.cdm";
    v22 = 2112;
    v23 = stringCopy;
    v24 = 2112;
    v25 = v11;
    v13 = "%s defaults read %@ %@ -> not set. Using default value: %@";
LABEL_9:
    _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, v13, &v18, 0x2Au);
    goto LABEL_10;
  }

LABEL_11:

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (void)initialize
{
  _userDefaultsCache = objc_alloc_init(SafeMutableDictionary);

  MEMORY[0x1EEE66BB8]();
}

@end