@interface NviUtils
+ (BOOL)_createDirAtPath:(id)path;
+ (BOOL)createDirAtPath:(id)path;
+ (BOOL)isNviEnabled;
+ (double)getVoiceTriggerEndSecsFromVTEI:(id)i;
+ (id)getValueFromDictionaryOfDictionaries:(id)dictionaries keypath:(id)keypath;
+ (id)readJsonDictionaryAt:(id)at;
+ (id)strRepForNviDataSourceType:(unint64_t)type;
+ (id)strRepForNviSignalMask:(unint64_t)mask;
+ (id)strRepForNviSignalType:(unint64_t)type;
+ (id)timeStampString;
+ (int64_t)getVoiceTriggerEndSampleCountFromVTEI:(id)i;
+ (unint64_t)nviDataSourceTypeForStr:(id)str;
+ (unint64_t)nviSignalTypeForStr:(id)str;
@end

@implementation NviUtils

+ (BOOL)createDirAtPath:(id)path
{
  v15 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0;
  v5 = [defaultManager createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v10];
  v6 = v10;
  if (v6)
  {
    v5 = 0;
  }

  if ((v5 & 1) == 0)
  {
    v7 = NviLogContextFacility;
    if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "+[NviUtils createDirAtPath:]";
      v13 = 2114;
      v14 = pathCopy;
      _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s Failed to create dir at: %{public}@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)getValueFromDictionaryOfDictionaries:(id)dictionaries keypath:(id)keypath
{
  v25 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  keypathCopy = keypath;
  v7 = dictionariesCopy;
  v8 = v7;
  if ([keypathCopy count] == 1)
  {
LABEL_5:
    lastObject = [keypathCopy lastObject];
    v13 = [v8 objectForKeyedSubscript:lastObject];
  }

  else
  {
    v9 = 0;
    v10 = v7;
    while (1)
    {
      v11 = [keypathCopy objectAtIndexedSubscript:v9];
      v8 = [v10 objectForKeyedSubscript:v11];

      if (!v8)
      {
        break;
      }

      ++v9;
      v10 = v8;
      if (v9 >= [keypathCopy count] - 1)
      {
        goto LABEL_5;
      }
    }

    v14 = NviLogContextFacility;
    if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [keypathCopy objectAtIndexedSubscript:v9];
      v19 = 136315650;
      v20 = "+[NviUtils getValueFromDictionaryOfDictionaries:keypath:]";
      v21 = 2114;
      v22 = v16;
      v23 = 2114;
      v24 = keypathCopy;
      _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_DEFAULT, "%s Could not find <%{public}@> in Keypath=%{public}@", &v19, 0x20u);
    }

    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)readJsonDictionaryAt:(id)at
{
  v26 = *MEMORY[0x277D85DE8];
  atCopy = at;
  v19 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:atCopy isDirectory:&v19];

  if (v19)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NviUtils.m" lineNumber:213 description:{@"Unexpected!! Received dir for NviConfig: %@", atCopy}];

    if (v7)
    {
LABEL_3:
      v18 = 0;
      v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:atCopy options:0 error:&v18];
      v9 = v18;
      if (v9 || !v8)
      {
        v11 = NviLogContextFacility;
        if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v21 = "+[NviUtils readJsonDictionaryAt:]";
          v22 = 2114;
          v23 = atCopy;
          v24 = 2114;
          v25 = v9;
          _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_DEFAULT, "%s Could not read Json file at: %{public}@, err: %{public}@", buf, 0x20u);
        }

        v10 = 0;
      }

      else
      {
        v17 = 0;
        v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v17];
        v9 = v17;
        if (v9 || !v10)
        {
          v12 = NviLogContextFacility;
          if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v21 = "+[NviUtils readJsonDictionaryAt:]";
            v22 = 2114;
            v23 = atCopy;
            v24 = 2114;
            v25 = v9;
            _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_DEFAULT, "%s Failed to parse json at: %{public}@, err: %{public}@", buf, 0x20u);
          }
        }

        else
        {
          v9 = 0;
        }
      }

      goto LABEL_18;
    }
  }

  else if (v7)
  {
    goto LABEL_3;
  }

  v14 = NviLogContextFacility;
  if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "+[NviUtils readJsonDictionaryAt:]";
    v22 = 2114;
    v23 = atCopy;
    _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_DEFAULT, "%s Json file doesnt exist at: %{public}@", buf, 0x16u);
  }

  v10 = 0;
LABEL_18:

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (double)getVoiceTriggerEndSecsFromVTEI:(id)i
{
  iCopy = i;
  v4 = iCopy;
  v5 = -1.0;
  if (iCopy)
  {
    v6 = *MEMORY[0x277D01EB0];
    v7 = [iCopy objectForKeyedSubscript:*MEMORY[0x277D01EB0]];

    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:v6];
      [v8 floatValue];
      v5 = v9;
    }
  }

  return v5;
}

+ (int64_t)getVoiceTriggerEndSampleCountFromVTEI:(id)i
{
  iCopy = i;
  v4 = iCopy;
  if (iCopy && (v5 = *MEMORY[0x277D01EA8], [iCopy objectForKeyedSubscript:*MEMORY[0x277D01EA8]], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v4 objectForKeyedSubscript:v5];
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

+ (id)timeStampString
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyyMMdd_HHmmss.SSS"];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [v2 stringFromDate:date];

  return v5;
}

+ (BOOL)_createDirAtPath:(id)path
{
  v15 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0;
  v5 = [defaultManager createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v10];
  v6 = v10;
  if (v6)
  {
    v5 = 0;
  }

  if ((v5 & 1) == 0)
  {
    v7 = NviLogContextFacility;
    if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "+[NviUtils _createDirAtPath:]";
      v13 = 2114;
      v14 = pathCopy;
      _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s Failed to create dir at: %{public}@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (unint64_t)nviDataSourceTypeForStr:(id)str
{
  v12 = *MEMORY[0x277D85DE8];
  strCopy = str;
  if ([strCopy isEqualToString:@"NviAudioDataSrcType"])
  {
    v4 = 0;
  }

  else
  {
    v5 = NviLogContextFacility;
    if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "+[NviUtils nviDataSourceTypeForStr:]";
      v10 = 2114;
      v11 = strCopy;
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Unknown DataSrcTypeStr(%{public}@)", &v8, 0x16u);
    }

    v4 = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)strRepForNviDataSourceType:(unint64_t)type
{
  v11 = *MEMORY[0x277D85DE8];
  if (type)
  {
    v4 = NviLogContextFacility;
    if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "+[NviUtils strRepForNviDataSourceType:]";
      v9 = 2050;
      typeCopy = type;
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s Unknown DataSrc Type: %{public}lu", &v7, 0x16u);
    }

    result = @"NviDataSource_END_MARKER";
  }

  else
  {
    result = @"NviAudioDataSrcType";
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (unint64_t)nviSignalTypeForStr:(id)str
{
  strCopy = str;
  if ([strCopy isEqualToString:@"NviVADSignalType"])
  {
    v6 = 1;
  }

  else if ([strCopy isEqualToString:@"NviKwdSignalType"])
  {
    v6 = 2;
  }

  else if ([strCopy isEqualToString:@"NviDirectionalitySignalType"])
  {
    v6 = 4;
  }

  else if ([strCopy isEqualToString:@"NviAsdAnchorSignalType"])
  {
    v6 = 8;
  }

  else if ([strCopy isEqualToString:@"NviAsdPayloadSignalType"])
  {
    v6 = 16;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NviUtils.m" lineNumber:144 description:{@"Unknown NviSignalTypeString: <%@>", strCopy}];

    v6 = -1;
  }

  return v6;
}

+ (id)strRepForNviSignalMask:(unint64_t)mask
{
  maskCopy = mask;
  string = [MEMORY[0x277CCAB68] string];
  for (i = 0; i != 5; ++i)
  {
    maskCopy = [NviUtils strRepForNviSignalType:(1 << i) & maskCopy];
    [string appendFormat:@"|%@", maskCopy];
  }

  [string appendString:@"|"];

  return string;
}

+ (id)strRepForNviSignalType:(unint64_t)type
{
  v11 = *MEMORY[0x277D85DE8];
  if (type <= 3)
  {
    if (type == 1)
    {
      result = @"NviVADSignalType";
      goto LABEL_15;
    }

    if (type == 2)
    {
      result = @"NviKwdSignalType";
      goto LABEL_15;
    }
  }

  else
  {
    switch(type)
    {
      case 4uLL:
        result = @"NviDirectionalitySignalType";
        goto LABEL_15;
      case 8uLL:
        result = @"NviAsdAnchorSignalType";
        goto LABEL_15;
      case 0x10uLL:
        result = @"NviAsdPayloadSignalType";
        goto LABEL_15;
    }
  }

  v5 = NviLogContextFacility;
  if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "+[NviUtils strRepForNviSignalType:]";
    v9 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s WARN: Invalid sigType: %lu", &v7, 0x16u);
  }

  result = 0;
LABEL_15:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)isNviEnabled
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"IsNviEnabled", @"com.apple.nvi", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

@end