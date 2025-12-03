@interface CSAsset
+ (BOOL)supportsMultiPhraseVoiceTriggerForEngineVersion:(id)version engineMinorVersion:(id)minorVersion accessoryRTModelType:(id)type;
- (BOOL)_allowMultiPhrase:(id)phrase forceSkipEngineVersionCheck:(BOOL)check;
- (id)RTModelWithFallbackLanguage:(id)language;
- (id)_buildRTModelWithBlobConfig:(id)config requestOptions:(id)options;
- (id)_rtModelWithRequestOptions:(id)options accessoryBlobs:(id)blobs;
- (id)_splitBlobsByPhraseType:(id)type;
- (id)_userSelectedPhraseTypeToRTModelPhraseType:(id)type;
- (id)createRTModelWithLocale:(id)locale;
- (id)latestHearstRTModelWithRequestOptions:(id)options;
- (id)localeMapWithName:(id)name;
- (id)rtModelLocaleMapWithModelType:(int64_t)type;
- (id)rtModelWithRequestOptions:(id)options;
@end

@implementation CSAsset

- (id)_userSelectedPhraseTypeToRTModelPhraseType:(id)type
{
  if ([type unsignedIntegerValue] == 1)
  {
    return @"HSJS";
  }

  else
  {
    return @"HSOnly";
  }
}

- (BOOL)_allowMultiPhrase:(id)phrase forceSkipEngineVersionCheck:(BOOL)check
{
  if (!phrase)
  {
    return 0;
  }

  phraseCopy = phrase;
  accessoryInfo = [phraseCopy accessoryInfo];
  supportsJustSiri = [accessoryInfo supportsJustSiri];

  engineMajorVersion = [phraseCopy engineMajorVersion];
  unsignedIntValue = [engineMajorVersion unsignedIntValue];

  engineMinorVersion = [phraseCopy engineMinorVersion];
  unsignedIntValue2 = [engineMinorVersion unsignedIntValue];

  if (unsignedIntValue)
  {
    v12 = unsignedIntValue2 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (check)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  allowMph = [phraseCopy allowMph];

  v16 = supportsJustSiri & v14 & allowMph;
  v17 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136316162;
    v20 = "[CSAsset(RTModel) _allowMultiPhrase:forceSkipEngineVersionCheck:]";
    v21 = 1024;
    v22 = supportsJustSiri & v14 & allowMph;
    v23 = 1024;
    v24 = supportsJustSiri;
    v25 = 1024;
    v26 = v14;
    v27 = 1024;
    v28 = allowMph & 1;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Multi-phrase keyword detection (%d): Accessory supports multi-phrase: %d, engine support multi-phrase: %d, device allows multi-phrase: %d", &v19, 0x24u);
  }

  return v16;
}

- (id)_rtModelWithRequestOptions:(id)options accessoryBlobs:(id)blobs
{
  optionsCopy = options;
  v7 = [(CSAsset *)self _getFilteredAccessoryRTBlobListForRequestOptions:optionsCopy accessoryBlobs:blobs forceSkipEngineVersionCheck:0];
  engineMajorVersion = [optionsCopy engineMajorVersion];
  unsignedIntValue = [engineMajorVersion unsignedIntValue];

  engineMinorVersion = [optionsCopy engineMinorVersion];
  unsignedIntValue2 = [engineMinorVersion unsignedIntValue];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    selfCopy = self;
    v25 = optionsCopy;
    v14 = *v28;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:@"majorVersion"];
        unsignedIntValue3 = [v17 unsignedIntValue];

        v19 = [v16 objectForKeyedSubscript:@"minorVersion"];
        unsignedIntValue4 = [v19 unsignedIntValue];

        if (unsignedIntValue3 == unsignedIntValue && unsignedIntValue2 >= unsignedIntValue4)
        {
          optionsCopy = v25;
          v22 = [(CSAsset *)selfCopy _buildRTModelWithBlobConfig:v16 requestOptions:v25];
          goto LABEL_15;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v22 = 0;
    optionsCopy = v25;
  }

  else
  {
    v22 = 0;
  }

LABEL_15:

  return v22;
}

- (id)_splitBlobsByPhraseType:(id)type
{
  typeCopy = type;
  v4 = objc_alloc_init(NSMutableDictionary);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = typeCopy;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"phraseType"];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = @"HSOnly";
        }

        v14 = v13;

        v15 = [v4 objectForKey:v14];
        if (!v15)
        {
          v15 = objc_alloc_init(NSMutableArray);
          [v4 setObject:v15 forKey:v14];
        }

        [v15 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  allKeys = [v4 allKeys];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = [allKeys countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(allKeys);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        v22 = [v4 objectForKeyedSubscript:v21];
        v23 = [v22 sortedArrayUsingComparator:&stru_10001CA58];

        if (v23)
        {
          [v4 setObject:v23 forKeyedSubscript:v21];
        }
      }

      v18 = [allKeys countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }

  return v4;
}

- (id)_buildRTModelWithBlobConfig:(id)config requestOptions:(id)options
{
  configCopy = config;
  optionsCopy = options;
  v8 = [configCopy objectForKeyedSubscript:@"blob"];
  if (v8)
  {
    resourcePath = [(CSAsset *)self resourcePath];
    v10 = [resourcePath stringByAppendingPathComponent:v8];

    v11 = +[NSFileManager defaultManager];
    v12 = [v11 fileExistsAtPath:v10];

    v13 = CSLogContextFacilityCoreSpeech;
    if (v12)
    {
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v41 = "[CSAsset(RTModel) _buildRTModelWithBlobConfig:requestOptions:]";
        v42 = 2114;
        v43 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Reading blob from : %{public}@", buf, 0x16u);
      }

      v14 = [NSData dataWithContentsOfFile:v10];
      if (v14)
      {
        v15 = [CSFHashUtils sha1StringFromInputData:v14];
        v39 = [v15 substringWithRange:{0, 20}];

        v38 = [CSFHashUtils sha256DataFromInputData:v14];
        v16 = [configCopy objectForKeyedSubscript:@"signature"];
        v37 = v16;
        if (v16)
        {
          v17 = v16;
          resourcePath2 = [(CSAsset *)self resourcePath];
          v19 = [resourcePath2 stringByAppendingPathComponent:v17];

          v20 = +[NSFileManager defaultManager];
          v21 = [v20 fileExistsAtPath:v19];

          if (v21)
          {
            v36 = [NSData dataWithContentsOfFile:v19];
          }

          else
          {
            v36 = 0;
          }
        }

        else
        {
          v36 = 0;
        }

        v25 = [configCopy objectForKeyedSubscript:@"cert"];
        v35 = v25;
        if (v25)
        {
          v26 = v25;
          resourcePath3 = [(CSAsset *)self resourcePath];
          v28 = [resourcePath3 stringByAppendingPathComponent:v26];

          v29 = +[NSFileManager defaultManager];
          v30 = [v29 fileExistsAtPath:v28];

          if (v30)
          {
            v31 = [NSData dataWithContentsOfFile:v28];
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 0;
        }

        v32 = [CSVoiceTriggerRTModel alloc];
        siriLocale = [optionsCopy siriLocale];
        v23 = [(CSVoiceTriggerRTModel *)v32 initWithData:v14 hash:v39 locale:siriLocale digest:v38 signature:v36 certificate:v31];
      }

      else
      {
        v24 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v41 = "[CSAsset(RTModel) _buildRTModelWithBlobConfig:requestOptions:]";
          v42 = 2114;
          v43 = v10;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s Blob is nil : %{public}@", buf, 0x16u);
        }

        v23 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v41 = "[CSAsset(RTModel) _buildRTModelWithBlobConfig:requestOptions:]";
        v42 = 2114;
        v43 = v10;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s blob file is not exists at %{public}@", buf, 0x16u);
      }

      v23 = 0;
    }
  }

  else
  {
    v22 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v41 = "[CSAsset(RTModel) _buildRTModelWithBlobConfig:requestOptions:]";
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s blob file name is not exists", buf, 0xCu);
    }

    v23 = 0;
  }

  return v23;
}

- (id)localeMapWithName:(id)name
{
  nameCopy = name;
  dictionary = [(CSAsset *)self dictionary];
  if (dictionary)
  {
    v6 = dictionary;
    dictionary2 = [(CSAsset *)self dictionary];
    v8 = [dictionary2 objectForKeyedSubscript:nameCopy];
    if (v8)
    {
      v9 = v8;
      dictionary3 = [(CSAsset *)self dictionary];
      v11 = [dictionary3 objectForKeyedSubscript:nameCopy];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        dictionary4 = [(CSAsset *)self dictionary];
        v14 = [dictionary4 objectForKeyedSubscript:nameCopy];

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v15 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v17 = 136315394;
    v18 = "[CSAsset(RTModel) localeMapWithName:]";
    v19 = 2114;
    v20 = nameCopy;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Locale map for %{public}@ is not available on asset", &v17, 0x16u);
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (id)rtModelLocaleMapWithModelType:(int64_t)type
{
  if (type == 1)
  {
    [(CSAsset *)self remoraRTModelLocaleMap];
  }

  else
  {
    [(CSAsset *)self hearstRTModelLocaleMap];
  }
  v3 = ;

  return v3;
}

- (id)rtModelWithRequestOptions:(id)options
{
  optionsCopy = options;
  accessoryModelType = [optionsCopy accessoryModelType];
  integerValue = [accessoryModelType integerValue];

  if (integerValue)
  {
    v7 = @"adkblobs";
  }

  else
  {
    v7 = @"rtblobs";
  }

  dictionary = [(CSAsset *)self dictionary];
  if (!dictionary)
  {
    goto LABEL_7;
  }

  v9 = dictionary;
  dictionary2 = [(CSAsset *)self dictionary];
  v11 = [dictionary2 objectForKeyedSubscript:v7];

  if (v11)
  {
    dictionary3 = [(CSAsset *)self dictionary];
    v13 = [dictionary3 objectForKeyedSubscript:v7];

    v14 = [(CSAsset *)self _rtModelWithRequestOptions:optionsCopy accessoryBlobs:v13];
  }

  else
  {
LABEL_7:
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[CSAsset(RTModel) rtModelWithRequestOptions:]";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s corespeech.json doesn't contains rtblobs", &v17, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (id)latestHearstRTModelWithRequestOptions:(id)options
{
  optionsCopy = options;
  dictionary = [(CSAsset *)self dictionary];
  if (!dictionary)
  {
    goto LABEL_18;
  }

  v6 = dictionary;
  dictionary2 = [(CSAsset *)self dictionary];
  v8 = [dictionary2 objectForKeyedSubscript:@"rtblobs"];

  if (!v8)
  {
LABEL_18:
    v25 = 0;
    goto LABEL_23;
  }

  dictionary3 = [(CSAsset *)self dictionary];
  v10 = [dictionary3 objectForKeyedSubscript:@"rtblobs"];
  selfCopy = self;
  v30 = optionsCopy;
  v11 = [(CSAsset *)self _getFilteredAccessoryRTBlobListForRequestOptions:optionsCopy accessoryBlobs:v10 forceSkipEngineVersionCheck:1];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (!v12)
  {
    v14 = 0;
    v32 = 0;
    v15 = 0;
    goto LABEL_20;
  }

  v13 = v12;
  v14 = 0;
  v32 = 0;
  v15 = 0;
  v16 = *v35;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v35 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v34 + 1) + 8 * i);
      v19 = [v18 objectForKeyedSubscript:@"majorVersion"];
      unsignedIntValue = [v19 unsignedIntValue];

      v21 = [v18 objectForKeyedSubscript:@"minorVersion"];
      unsignedIntValue2 = [v21 unsignedIntValue];

      if (v14 < unsignedIntValue)
      {
        v14 = unsignedIntValue;
LABEL_14:
        v24 = v18;

        v32 = unsignedIntValue2;
        v15 = v24;
        continue;
      }

      if (v14 == unsignedIntValue && v32 < unsignedIntValue2)
      {
        goto LABEL_14;
      }
    }

    v13 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
  }

  while (v13);
LABEL_20:

  v26 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315907;
    v39 = "[CSAsset(RTModel) latestHearstRTModelWithRequestOptions:]";
    v40 = 1024;
    v41 = v14;
    v42 = 1024;
    v43 = v32;
    v44 = 2113;
    v45 = v15;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s latestMajorVersion = %d, LatestMinorVersion = %d rtBlob = %{private}@", buf, 0x22u);
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10000E144;
  v33[3] = &unk_10001CA18;
  v33[4] = v14;
  v33[5] = v32;
  optionsCopy = v30;
  v27 = [[CSVoiceTriggerRTModelRequestOptions alloc] initWithCSRTModelRequestOptions:v30 builder:v33];
  v25 = [(CSAsset *)selfCopy _buildRTModelWithBlobConfig:v15 requestOptions:v27];

LABEL_23:

  return v25;
}

- (id)RTModelWithFallbackLanguage:(id)language
{
  v4 = [CSUtils getSiriLanguageWithFallback:language];
  v5 = [(CSAsset *)self createRTModelWithLocale:v4];

  return v5;
}

- (id)createRTModelWithLocale:(id)locale
{
  localeCopy = locale;
  resourcePath = [(CSAsset *)self resourcePath];
  v6 = &NSLog_ptr;
  if (resourcePath && (v7 = resourcePath, [(CSAsset *)self path], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    resourcePath2 = [(CSAsset *)self resourcePath];
    v10 = [resourcePath2 stringByAppendingPathComponent:@"config_rtv2.txt"];

    resourcePath3 = [(CSAsset *)self resourcePath];
    v12 = [resourcePath3 stringByAppendingPathComponent:@"config_rt.txt"];

    resourcePath4 = [(CSAsset *)self resourcePath];
    v14 = [resourcePath4 stringByAppendingPathComponent:@"config.txt"];

    v15 = CSHasAOP();
    v16 = v14;
    if (v15)
    {
      v17 = +[NSFileManager defaultManager];
      v18 = [v17 fileExistsAtPath:v10 isDirectory:0];

      v16 = v10;
      if ((v18 & 1) == 0)
      {
        v19 = +[NSFileManager defaultManager];
        v20 = [v19 fileExistsAtPath:v12 isDirectory:0];

        v16 = v12;
        if ((v20 & 1) == 0)
        {
          v21 = CSLogContextFacilityCoreSpeech;
          v22 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
          v16 = v14;
          if (v22)
          {
            v38 = 136315650;
            v39 = "[CSAsset(RTModel) createRTModelWithLocale:]";
            v40 = 2114;
            v41 = 0;
            v42 = 2114;
            v43 = v14;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s RT specific configuration %{public}@ does not exist, defaulting to unified configuration %{public}@", &v38, 0x20u);
            v16 = v14;
          }
        }
      }
    }

    v23 = v16;
    v24 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 136315394;
      v39 = "[CSAsset(RTModel) createRTModelWithLocale:]";
      v40 = 2114;
      v41 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s Creating RT blob using: %{public}@", &v38, 0x16u);
    }

    resourcePath5 = [(CSAsset *)self resourcePath];
    v26 = [VTBlobBuilder getBlobWithConfigFilename:v23 rootDirectory:resourcePath5];

    v27 = CSLogContextFacilityCoreSpeech;
    if (v26)
    {
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v38 = 136315394;
        v39 = "[CSAsset(RTModel) createRTModelWithLocale:]";
        v40 = 2114;
        v41 = v23;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s CorealisRT model creation done successfully : %{public}@", &v38, 0x16u);
      }

      v28 = [(CSAsset *)self assetHashInResourcePath:v23];
    }

    else
    {
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v38 = 136315138;
        v39 = "[CSAsset(RTModel) createRTModelWithLocale:]";
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s Failed to create CorealisRT model", &v38, 0xCu);
      }

      v28 = 0;
    }

    v6 = &NSLog_ptr;

    if (v26)
    {
      resourcePath6 = [(CSAsset *)self resourcePath];
      if (resourcePath6)
      {
        v36 = resourcePath6;
        path = [(CSAsset *)self path];

        if (path)
        {
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    v28 = 0;
    v26 = 0;
  }

  v29 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 136315138;
    v39 = "[CSAsset(RTModel) createRTModelWithLocale:]";
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s Defaulting to en_US CorealisRT model", &v38, 0xCu);
  }

  getDefaultBlob = [v6[126] getDefaultBlob];

  v31 = CSLogContextFacilityCoreSpeech;
  if (getDefaultBlob)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 136315138;
      v39 = "[CSAsset(RTModel) createRTModelWithLocale:]";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s Default CorealisRT model creation done successfully", &v38, 0xCu);
    }

    v28 = @"nohash";
    v26 = getDefaultBlob;
LABEL_21:
    v32 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 136315650;
      v39 = "[CSAsset(RTModel) createRTModelWithLocale:]";
      v40 = 2114;
      v41 = localeCopy;
      v42 = 2114;
      v43 = v28;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s RT Model queried - %{public}@ %{public}@", &v38, 0x20u);
    }

    v33 = [[CSVoiceTriggerRTModel alloc] initWithData:v26 hash:v28 locale:localeCopy];

    goto LABEL_27;
  }

  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v38 = 136315138;
    v39 = "[CSAsset(RTModel) createRTModelWithLocale:]";
    _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s Failed to create default CorealisRT model", &v38, 0xCu);
  }

  v33 = 0;
LABEL_27:

  return v33;
}

+ (BOOL)supportsMultiPhraseVoiceTriggerForEngineVersion:(id)version engineMinorVersion:(id)minorVersion accessoryRTModelType:(id)type
{
  versionCopy = version;
  minorVersionCopy = minorVersion;
  typeCopy = type;
  unsignedIntegerValue = [versionCopy unsignedIntegerValue];
  unsignedIntegerValue2 = [minorVersionCopy unsignedIntegerValue];
  unsignedIntegerValue3 = [typeCopy unsignedIntegerValue];

  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315650;
    v19 = "+[CSAsset(RTModel) supportsMultiPhraseVoiceTriggerForEngineVersion:engineMinorVersion:accessoryRTModelType:]";
    v20 = 2112;
    v21 = versionCopy;
    v22 = 2112;
    v23 = minorVersionCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Incoming Major version:%@, Incoming Minor version:%@", &v18, 0x20u);
  }

  if (unsignedIntegerValue)
  {
    v14 = unsignedIntegerValue2 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (unsignedIntegerValue3 <= 1)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end