@interface CSAsset
+ (BOOL)supportsMultiPhraseVoiceTriggerForEngineVersion:(id)a3 engineMinorVersion:(id)a4 accessoryRTModelType:(id)a5;
- (BOOL)_allowMultiPhrase:(id)a3 forceSkipEngineVersionCheck:(BOOL)a4;
- (id)RTModelWithFallbackLanguage:(id)a3;
- (id)_buildRTModelWithBlobConfig:(id)a3 requestOptions:(id)a4;
- (id)_rtModelWithRequestOptions:(id)a3 accessoryBlobs:(id)a4;
- (id)_splitBlobsByPhraseType:(id)a3;
- (id)_userSelectedPhraseTypeToRTModelPhraseType:(id)a3;
- (id)createRTModelWithLocale:(id)a3;
- (id)latestHearstRTModelWithRequestOptions:(id)a3;
- (id)localeMapWithName:(id)a3;
- (id)rtModelLocaleMapWithModelType:(int64_t)a3;
- (id)rtModelWithRequestOptions:(id)a3;
@end

@implementation CSAsset

- (id)_userSelectedPhraseTypeToRTModelPhraseType:(id)a3
{
  if ([a3 unsignedIntegerValue] == 1)
  {
    return @"HSJS";
  }

  else
  {
    return @"HSOnly";
  }
}

- (BOOL)_allowMultiPhrase:(id)a3 forceSkipEngineVersionCheck:(BOOL)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v6 = [v5 accessoryInfo];
  v7 = [v6 supportsJustSiri];

  v8 = [v5 engineMajorVersion];
  v9 = [v8 unsignedIntValue];

  v10 = [v5 engineMinorVersion];
  v11 = [v10 unsignedIntValue];

  if (v9)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (a4)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  v15 = [v5 allowMph];

  v16 = v7 & v14 & v15;
  v17 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136316162;
    v20 = "[CSAsset(RTModel) _allowMultiPhrase:forceSkipEngineVersionCheck:]";
    v21 = 1024;
    v22 = v7 & v14 & v15;
    v23 = 1024;
    v24 = v7;
    v25 = 1024;
    v26 = v14;
    v27 = 1024;
    v28 = v15 & 1;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Multi-phrase keyword detection (%d): Accessory supports multi-phrase: %d, engine support multi-phrase: %d, device allows multi-phrase: %d", &v19, 0x24u);
  }

  return v16;
}

- (id)_rtModelWithRequestOptions:(id)a3 accessoryBlobs:(id)a4
{
  v6 = a3;
  v7 = [(CSAsset *)self _getFilteredAccessoryRTBlobListForRequestOptions:v6 accessoryBlobs:a4 forceSkipEngineVersionCheck:0];
  v8 = [v6 engineMajorVersion];
  v9 = [v8 unsignedIntValue];

  v10 = [v6 engineMinorVersion];
  v11 = [v10 unsignedIntValue];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v24 = self;
    v25 = v6;
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
        v18 = [v17 unsignedIntValue];

        v19 = [v16 objectForKeyedSubscript:@"minorVersion"];
        v20 = [v19 unsignedIntValue];

        if (v18 == v9 && v11 >= v20)
        {
          v6 = v25;
          v22 = [(CSAsset *)v24 _buildRTModelWithBlobConfig:v16 requestOptions:v25];
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
    v6 = v25;
  }

  else
  {
    v22 = 0;
  }

LABEL_15:

  return v22;
}

- (id)_splitBlobsByPhraseType:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v3;
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

  v16 = [v4 allKeys];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        v22 = [v4 objectForKeyedSubscript:v21];
        v23 = [v22 sortedArrayUsingComparator:&stru_10001CA58];

        if (v23)
        {
          [v4 setObject:v23 forKeyedSubscript:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }

  return v4;
}

- (id)_buildRTModelWithBlobConfig:(id)a3 requestOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"blob"];
  if (v8)
  {
    v9 = [(CSAsset *)self resourcePath];
    v10 = [v9 stringByAppendingPathComponent:v8];

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
        v16 = [v6 objectForKeyedSubscript:@"signature"];
        v37 = v16;
        if (v16)
        {
          v17 = v16;
          v18 = [(CSAsset *)self resourcePath];
          v19 = [v18 stringByAppendingPathComponent:v17];

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

        v25 = [v6 objectForKeyedSubscript:@"cert"];
        v35 = v25;
        if (v25)
        {
          v26 = v25;
          v27 = [(CSAsset *)self resourcePath];
          v28 = [v27 stringByAppendingPathComponent:v26];

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
        v33 = [v7 siriLocale];
        v23 = [(CSVoiceTriggerRTModel *)v32 initWithData:v14 hash:v39 locale:v33 digest:v38 signature:v36 certificate:v31];
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

- (id)localeMapWithName:(id)a3
{
  v4 = a3;
  v5 = [(CSAsset *)self dictionary];
  if (v5)
  {
    v6 = v5;
    v7 = [(CSAsset *)self dictionary];
    v8 = [v7 objectForKeyedSubscript:v4];
    if (v8)
    {
      v9 = v8;
      v10 = [(CSAsset *)self dictionary];
      v11 = [v10 objectForKeyedSubscript:v4];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = [(CSAsset *)self dictionary];
        v14 = [v13 objectForKeyedSubscript:v4];

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
    v20 = v4;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Locale map for %{public}@ is not available on asset", &v17, 0x16u);
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (id)rtModelLocaleMapWithModelType:(int64_t)a3
{
  if (a3 == 1)
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

- (id)rtModelWithRequestOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 accessoryModelType];
  v6 = [v5 integerValue];

  if (v6)
  {
    v7 = @"adkblobs";
  }

  else
  {
    v7 = @"rtblobs";
  }

  v8 = [(CSAsset *)self dictionary];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [(CSAsset *)self dictionary];
  v11 = [v10 objectForKeyedSubscript:v7];

  if (v11)
  {
    v12 = [(CSAsset *)self dictionary];
    v13 = [v12 objectForKeyedSubscript:v7];

    v14 = [(CSAsset *)self _rtModelWithRequestOptions:v4 accessoryBlobs:v13];
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

- (id)latestHearstRTModelWithRequestOptions:(id)a3
{
  v4 = a3;
  v5 = [(CSAsset *)self dictionary];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = [(CSAsset *)self dictionary];
  v8 = [v7 objectForKeyedSubscript:@"rtblobs"];

  if (!v8)
  {
LABEL_18:
    v25 = 0;
    goto LABEL_23;
  }

  v9 = [(CSAsset *)self dictionary];
  v10 = [v9 objectForKeyedSubscript:@"rtblobs"];
  v29 = self;
  v30 = v4;
  v11 = [(CSAsset *)self _getFilteredAccessoryRTBlobListForRequestOptions:v4 accessoryBlobs:v10 forceSkipEngineVersionCheck:1];

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
      v20 = [v19 unsignedIntValue];

      v21 = [v18 objectForKeyedSubscript:@"minorVersion"];
      v22 = [v21 unsignedIntValue];

      if (v14 < v20)
      {
        v14 = v20;
LABEL_14:
        v24 = v18;

        v32 = v22;
        v15 = v24;
        continue;
      }

      if (v14 == v20 && v32 < v22)
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
  v4 = v30;
  v27 = [[CSVoiceTriggerRTModelRequestOptions alloc] initWithCSRTModelRequestOptions:v30 builder:v33];
  v25 = [(CSAsset *)v29 _buildRTModelWithBlobConfig:v15 requestOptions:v27];

LABEL_23:

  return v25;
}

- (id)RTModelWithFallbackLanguage:(id)a3
{
  v4 = [CSUtils getSiriLanguageWithFallback:a3];
  v5 = [(CSAsset *)self createRTModelWithLocale:v4];

  return v5;
}

- (id)createRTModelWithLocale:(id)a3
{
  v4 = a3;
  v5 = [(CSAsset *)self resourcePath];
  v6 = &NSLog_ptr;
  if (v5 && (v7 = v5, [(CSAsset *)self path], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = [(CSAsset *)self resourcePath];
    v10 = [v9 stringByAppendingPathComponent:@"config_rtv2.txt"];

    v11 = [(CSAsset *)self resourcePath];
    v12 = [v11 stringByAppendingPathComponent:@"config_rt.txt"];

    v13 = [(CSAsset *)self resourcePath];
    v14 = [v13 stringByAppendingPathComponent:@"config.txt"];

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

    v25 = [(CSAsset *)self resourcePath];
    v26 = [VTBlobBuilder getBlobWithConfigFilename:v23 rootDirectory:v25];

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
      v35 = [(CSAsset *)self resourcePath];
      if (v35)
      {
        v36 = v35;
        v37 = [(CSAsset *)self path];

        if (v37)
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

  v30 = [v6[126] getDefaultBlob];

  v31 = CSLogContextFacilityCoreSpeech;
  if (v30)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 136315138;
      v39 = "[CSAsset(RTModel) createRTModelWithLocale:]";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s Default CorealisRT model creation done successfully", &v38, 0xCu);
    }

    v28 = @"nohash";
    v26 = v30;
LABEL_21:
    v32 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 136315650;
      v39 = "[CSAsset(RTModel) createRTModelWithLocale:]";
      v40 = 2114;
      v41 = v4;
      v42 = 2114;
      v43 = v28;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s RT Model queried - %{public}@ %{public}@", &v38, 0x20u);
    }

    v33 = [[CSVoiceTriggerRTModel alloc] initWithData:v26 hash:v28 locale:v4];

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

+ (BOOL)supportsMultiPhraseVoiceTriggerForEngineVersion:(id)a3 engineMinorVersion:(id)a4 accessoryRTModelType:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 unsignedIntegerValue];
  v11 = [v8 unsignedIntegerValue];
  v12 = [v9 unsignedIntegerValue];

  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315650;
    v19 = "+[CSAsset(RTModel) supportsMultiPhraseVoiceTriggerForEngineVersion:engineMinorVersion:accessoryRTModelType:]";
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Incoming Major version:%@, Incoming Minor version:%@", &v18, 0x20u);
  }

  if (v10)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (v12 <= 1)
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