@interface CSAsset(RTModel)
+ (uint64_t)supportsMultiPhraseVoiceTriggerForEngineVersion:()RTModel engineMinorVersion:accessoryRTModelType:;
- (CSVoiceTriggerRTModel)_buildRTModelWithBlobConfig:()RTModel requestOptions:;
- (CSVoiceTriggerRTModel)createRTModelWithLocale:()RTModel;
- (__CFString)_userSelectedPhraseTypeToRTModelPhraseType:()RTModel;
- (id)RTModelWithFallbackLanguage:()RTModel;
- (id)_getFilteredAccessoryRTBlobListForRequestOptions:()RTModel accessoryBlobs:forceSkipEngineVersionCheck:;
- (id)_rtModelWithRequestOptions:()RTModel accessoryBlobs:;
- (id)_splitBlobsByPhraseType:()RTModel;
- (id)latestHearstRTModelWithRequestOptions:()RTModel;
- (id)localeMapWithName:()RTModel;
- (id)rtModelLocaleMapWithModelType:()RTModel;
- (id)rtModelWithRequestOptions:()RTModel;
- (uint64_t)_allowMultiPhrase:()RTModel forceSkipEngineVersionCheck:;
@end

@implementation CSAsset(RTModel)

- (__CFString)_userSelectedPhraseTypeToRTModelPhraseType:()RTModel
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

- (uint64_t)_allowMultiPhrase:()RTModel forceSkipEngineVersionCheck:
{
  v30 = *MEMORY[0x277D85DE8];
  if (a3)
  {
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
    v17 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136316162;
      v21 = "[CSAsset(RTModel) _allowMultiPhrase:forceSkipEngineVersionCheck:]";
      v22 = 1024;
      v23 = v7 & v14 & v15;
      v24 = 1024;
      v25 = v7;
      v26 = 1024;
      v27 = v14;
      v28 = 1024;
      v29 = v15 & 1;
      _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_DEFAULT, "%s Multi-phrase keyword detection (%d): Accessory supports multi-phrase: %d, engine support multi-phrase: %d, device allows multi-phrase: %d", &v20, 0x24u);
    }
  }

  else
  {
    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)_rtModelWithRequestOptions:()RTModel accessoryBlobs:
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a1 _getFilteredAccessoryRTBlobListForRequestOptions:v6 accessoryBlobs:a4 forceSkipEngineVersionCheck:0];
  v8 = [v6 engineMajorVersion];
  v9 = [v8 unsignedIntValue];

  v10 = [v6 engineMinorVersion];
  v11 = [v10 unsignedIntValue];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v25 = a1;
    v26 = v6;
    v14 = *v29;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:@"majorVersion"];
        v18 = [v17 unsignedIntValue];

        v19 = [v16 objectForKeyedSubscript:@"minorVersion"];
        v20 = [v19 unsignedIntValue];

        if (v18 == v9 && v11 >= v20)
        {
          v6 = v26;
          v22 = [v25 _buildRTModelWithBlobConfig:v16 requestOptions:v26];
          goto LABEL_15;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v22 = 0;
    v6 = v26;
  }

  else
  {
    v22 = 0;
  }

LABEL_15:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_getFilteredAccessoryRTBlobListForRequestOptions:()RTModel accessoryBlobs:forceSkipEngineVersionCheck:
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [a1 _splitBlobsByPhraseType:a4];
  v10 = [v8 userSelectedPhraseType];
  v11 = [a1 _userSelectedPhraseTypeToRTModelPhraseType:v10];

  v12 = [a1 _allowMultiPhrase:v8 forceSkipEngineVersionCheck:a5];
  v13 = MEMORY[0x277D015D8];
  if (v12)
  {
    if (!v11)
    {
      v14 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v15 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315650;
      v20 = "[CSAsset(RTModel) _getFilteredAccessoryRTBlobListForRequestOptions:accessoryBlobs:forceSkipEngineVersionCheck:]";
      v21 = 1024;
      *v22 = 0;
      *&v22[4] = 2112;
      *&v22[6] = v8;
      _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_DEFAULT, "%s Falling back to HSOnly phrase - Multi-phrase allowed: %d, request options: %@", &v19, 0x1Cu);
    }

    v11 = @"HSOnly";
  }

  v14 = [v9 objectForKeyedSubscript:v11];
LABEL_8:
  v16 = *v13;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v19 = 136315651;
    v20 = "[CSAsset(RTModel) _getFilteredAccessoryRTBlobListForRequestOptions:accessoryBlobs:forceSkipEngineVersionCheck:]";
    v21 = 2113;
    *v22 = v11;
    *&v22[8] = 2113;
    *&v22[10] = v14;
    _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_INFO, "%s Selected phrase type: %{private}@ accessory RTBlobs: %{private}@", &v19, 0x20u);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_splitBlobsByPhraseType:()RTModel
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
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
          v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v4 setObject:v15 forKey:v14];
        }

        [v15 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  v16 = [v4 allKeys];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        v22 = [v4 objectForKeyedSubscript:v21];
        v23 = [v22 sortedArrayUsingComparator:&__block_literal_global_63];

        if (v23)
        {
          [v4 setObject:v23 forKeyedSubscript:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v4;
}

- (CSVoiceTriggerRTModel)_buildRTModelWithBlobConfig:()RTModel requestOptions:
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"blob"];
  if (v8)
  {
    v9 = [a1 resourcePath];
    v10 = [v9 stringByAppendingPathComponent:v8];

    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [v11 fileExistsAtPath:v10];

    v13 = MEMORY[0x277D015D8];
    v14 = *MEMORY[0x277D015D8];
    v15 = *MEMORY[0x277D015D8];
    if (v12)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v44 = "[CSAsset(RTModel) _buildRTModelWithBlobConfig:requestOptions:]";
        v45 = 2114;
        v46 = v10;
        _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_DEFAULT, "%s Reading blob from : %{public}@", buf, 0x16u);
      }

      v16 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v10];
      if (v16)
      {
        v17 = [MEMORY[0x277D01758] sha1StringFromInputData:v16];
        v42 = [v17 substringWithRange:{0, 20}];

        v41 = [MEMORY[0x277D01758] sha256DataFromInputData:v16];
        v18 = [v6 objectForKeyedSubscript:@"signature"];
        v40 = v18;
        if (v18)
        {
          v19 = v18;
          v20 = [a1 resourcePath];
          v21 = [v20 stringByAppendingPathComponent:v19];

          v22 = [MEMORY[0x277CCAA00] defaultManager];
          v23 = [v22 fileExistsAtPath:v21];

          if (v23)
          {
            v39 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v21];
          }

          else
          {
            v39 = 0;
          }
        }

        else
        {
          v39 = 0;
        }

        v27 = [v6 objectForKeyedSubscript:@"cert"];
        v38 = v27;
        if (v27)
        {
          v28 = v27;
          v29 = [a1 resourcePath];
          v30 = [v29 stringByAppendingPathComponent:v28];

          v31 = [MEMORY[0x277CCAA00] defaultManager];
          v32 = [v31 fileExistsAtPath:v30];

          if (v32)
          {
            v33 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v30];
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          v33 = 0;
        }

        v34 = [CSVoiceTriggerRTModel alloc];
        v35 = [v7 siriLocale];
        v25 = [(CSVoiceTriggerRTModel *)v34 initWithData:v16 hash:v42 locale:v35 digest:v41 signature:v39 certificate:v33];
      }

      else
      {
        v26 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v44 = "[CSAsset(RTModel) _buildRTModelWithBlobConfig:requestOptions:]";
          v45 = 2114;
          v46 = v10;
          _os_log_error_impl(&dword_222E4D000, v26, OS_LOG_TYPE_ERROR, "%s Blob is nil : %{public}@", buf, 0x16u);
        }

        v25 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v44 = "[CSAsset(RTModel) _buildRTModelWithBlobConfig:requestOptions:]";
        v45 = 2114;
        v46 = v10;
        _os_log_error_impl(&dword_222E4D000, v14, OS_LOG_TYPE_ERROR, "%s blob file is not exists at %{public}@", buf, 0x16u);
      }

      v25 = 0;
    }
  }

  else
  {
    v24 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v44 = "[CSAsset(RTModel) _buildRTModelWithBlobConfig:requestOptions:]";
      _os_log_error_impl(&dword_222E4D000, v24, OS_LOG_TYPE_ERROR, "%s blob file name is not exists", buf, 0xCu);
    }

    v25 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)localeMapWithName:()RTModel
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 dictionary];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 dictionary];
    v8 = [v7 objectForKeyedSubscript:v4];
    if (v8)
    {
      v9 = v8;
      v10 = [a1 dictionary];
      v11 = [v10 objectForKeyedSubscript:v4];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = [a1 dictionary];
        v14 = [v13 objectForKeyedSubscript:v4];

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v15 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v18 = 136315394;
    v19 = "[CSAsset(RTModel) localeMapWithName:]";
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_222E4D000, v15, OS_LOG_TYPE_ERROR, "%s Locale map for %{public}@ is not available on asset", &v18, 0x16u);
  }

  v14 = 0;
LABEL_9:

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)rtModelLocaleMapWithModelType:()RTModel
{
  if (a3 == 1)
  {
    [a1 remoraRTModelLocaleMap];
  }

  else
  {
    [a1 hearstRTModelLocaleMap];
  }
  v3 = ;

  return v3;
}

- (id)rtModelWithRequestOptions:()RTModel
{
  v20 = *MEMORY[0x277D85DE8];
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

  v8 = [a1 dictionary];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [a1 dictionary];
  v11 = [v10 objectForKeyedSubscript:v7];

  if (v11)
  {
    v12 = [a1 dictionary];
    v13 = [v12 objectForKeyedSubscript:v7];

    v14 = [a1 _rtModelWithRequestOptions:v4 accessoryBlobs:v13];
  }

  else
  {
LABEL_7:
    v15 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[CSAsset(RTModel) rtModelWithRequestOptions:]";
      _os_log_error_impl(&dword_222E4D000, v15, OS_LOG_TYPE_ERROR, "%s corespeech.json doesn't contains rtblobs", &v18, 0xCu);
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)latestHearstRTModelWithRequestOptions:()RTModel
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 dictionary];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = [a1 dictionary];
  v8 = [v7 objectForKeyedSubscript:@"rtblobs"];

  if (!v8)
  {
LABEL_18:
    v25 = 0;
    goto LABEL_23;
  }

  v9 = [a1 dictionary];
  v10 = [v9 objectForKeyedSubscript:@"rtblobs"];
  v31 = a1;
  v32 = v4;
  v11 = [a1 _getFilteredAccessoryRTBlobListForRequestOptions:v4 accessoryBlobs:v10 forceSkipEngineVersionCheck:1];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (!v12)
  {
    v14 = 0;
    v34 = 0;
    v15 = 0;
    goto LABEL_20;
  }

  v13 = v12;
  v14 = 0;
  v34 = 0;
  v15 = 0;
  v16 = *v37;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v37 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v36 + 1) + 8 * i);
      v19 = [v18 objectForKeyedSubscript:@"majorVersion"];
      v20 = [v19 unsignedIntValue];

      v21 = [v18 objectForKeyedSubscript:@"minorVersion"];
      v22 = [v21 unsignedIntValue];

      if (v14 < v20)
      {
        v14 = v20;
LABEL_14:
        v24 = v18;

        v34 = v22;
        v15 = v24;
        continue;
      }

      if (v14 == v20 && v34 < v22)
      {
        goto LABEL_14;
      }
    }

    v13 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
  }

  while (v13);
LABEL_20:

  v26 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315907;
    v41 = "[CSAsset(RTModel) latestHearstRTModelWithRequestOptions:]";
    v42 = 1024;
    v43 = v14;
    v44 = 1024;
    v45 = v34;
    v46 = 2113;
    v47 = v15;
    _os_log_impl(&dword_222E4D000, v26, OS_LOG_TYPE_DEFAULT, "%s latestMajorVersion = %d, LatestMinorVersion = %d rtBlob = %{private}@", buf, 0x22u);
  }

  v27 = [CSVoiceTriggerRTModelRequestOptions alloc];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __58__CSAsset_RTModel__latestHearstRTModelWithRequestOptions___block_invoke;
  v35[3] = &__block_descriptor_48_e56_v16__0___CSVoiceTriggerRTModelRequestOptionsMutablity__8l;
  v35[4] = v14;
  v35[5] = v34;
  v4 = v32;
  v28 = [(CSVoiceTriggerRTModelRequestOptions *)v27 initWithCSRTModelRequestOptions:v32 builder:v35];
  v25 = [v31 _buildRTModelWithBlobConfig:v15 requestOptions:v28];

LABEL_23:
  v29 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)RTModelWithFallbackLanguage:()RTModel
{
  v2 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:?];
  v3 = [a1 createRTModelWithLocale:v2];

  return v3;
}

- (CSVoiceTriggerRTModel)createRTModelWithLocale:()RTModel
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 resourcePath];
  v6 = MEMORY[0x277D015D8];
  v7 = 0x277D7A000uLL;
  if (v5 && (v8 = v5, [a1 path], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [a1 resourcePath];
    v11 = [v10 stringByAppendingPathComponent:@"config_rtv2.txt"];

    v12 = [a1 resourcePath];
    v13 = [v12 stringByAppendingPathComponent:@"config_rt.txt"];

    v14 = [a1 resourcePath];
    v15 = [v14 stringByAppendingPathComponent:@"config.txt"];

    v16 = CSHasAOP();
    v17 = v15;
    if (v16)
    {
      v18 = [MEMORY[0x277CCAA00] defaultManager];
      v19 = [v18 fileExistsAtPath:v11 isDirectory:0];

      v17 = v11;
      if ((v19 & 1) == 0)
      {
        v20 = [MEMORY[0x277CCAA00] defaultManager];
        v21 = [v20 fileExistsAtPath:v13 isDirectory:0];

        v17 = v13;
        if ((v21 & 1) == 0)
        {
          v22 = *v6;
          v23 = os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT);
          v17 = v15;
          if (v23)
          {
            v43 = 136315650;
            v44 = "[CSAsset(RTModel) createRTModelWithLocale:]";
            v45 = 2114;
            v46 = 0;
            v47 = 2114;
            v48 = v15;
            _os_log_impl(&dword_222E4D000, v22, OS_LOG_TYPE_DEFAULT, "%s RT specific configuration %{public}@ does not exist, defaulting to unified configuration %{public}@", &v43, 0x20u);
            v17 = v15;
          }
        }
      }
    }

    v24 = v17;
    v25 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 136315394;
      v44 = "[CSAsset(RTModel) createRTModelWithLocale:]";
      v45 = 2114;
      v46 = v24;
      _os_log_impl(&dword_222E4D000, v25, OS_LOG_TYPE_DEFAULT, "%s Creating RT blob using: %{public}@", &v43, 0x16u);
    }

    v26 = MEMORY[0x277D7A8C0];
    v27 = [a1 resourcePath];
    v28 = [v26 getBlobWithConfigFilename:v24 rootDirectory:v27];

    v29 = *v6;
    v30 = *v6;
    if (v28)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v43 = 136315394;
        v44 = "[CSAsset(RTModel) createRTModelWithLocale:]";
        v45 = 2114;
        v46 = v24;
        _os_log_impl(&dword_222E4D000, v29, OS_LOG_TYPE_DEFAULT, "%s CorealisRT model creation done successfully : %{public}@", &v43, 0x16u);
      }

      v31 = [a1 assetHashInResourcePath:v24];
    }

    else
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v43 = 136315138;
        v44 = "[CSAsset(RTModel) createRTModelWithLocale:]";
        _os_log_error_impl(&dword_222E4D000, v29, OS_LOG_TYPE_ERROR, "%s Failed to create CorealisRT model", &v43, 0xCu);
      }

      v31 = 0;
    }

    v7 = 0x277D7A000;

    if (v28)
    {
      v40 = [a1 resourcePath];
      if (v40)
      {
        v41 = v40;
        v42 = [a1 path];

        if (v42)
        {
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    v31 = 0;
    v28 = 0;
  }

  v32 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v43 = 136315138;
    v44 = "[CSAsset(RTModel) createRTModelWithLocale:]";
    _os_log_impl(&dword_222E4D000, v32, OS_LOG_TYPE_DEFAULT, "%s Defaulting to en_US CorealisRT model", &v43, 0xCu);
  }

  v33 = [*(v7 + 2240) getDefaultBlob];

  v34 = *v6;
  v35 = *v6;
  if (v33)
  {
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 136315138;
      v44 = "[CSAsset(RTModel) createRTModelWithLocale:]";
      _os_log_impl(&dword_222E4D000, v34, OS_LOG_TYPE_DEFAULT, "%s Default CorealisRT model creation done successfully", &v43, 0xCu);
    }

    v31 = @"nohash";
    v28 = v33;
LABEL_21:
    v36 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 136315650;
      v44 = "[CSAsset(RTModel) createRTModelWithLocale:]";
      v45 = 2114;
      v46 = v4;
      v47 = 2114;
      v48 = v31;
      _os_log_impl(&dword_222E4D000, v36, OS_LOG_TYPE_DEFAULT, "%s RT Model queried - %{public}@ %{public}@", &v43, 0x20u);
    }

    v37 = [[CSVoiceTriggerRTModel alloc] initWithData:v28 hash:v31 locale:v4];

    goto LABEL_27;
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v43 = 136315138;
    v44 = "[CSAsset(RTModel) createRTModelWithLocale:]";
    _os_log_error_impl(&dword_222E4D000, v34, OS_LOG_TYPE_ERROR, "%s Failed to create default CorealisRT model", &v43, 0xCu);
  }

  v37 = 0;
LABEL_27:

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

+ (uint64_t)supportsMultiPhraseVoiceTriggerForEngineVersion:()RTModel engineMinorVersion:accessoryRTModelType:
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 unsignedIntegerValue];
  v11 = [v8 unsignedIntegerValue];
  v12 = [v9 unsignedIntegerValue];

  v13 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315650;
    v20 = "+[CSAsset(RTModel) supportsMultiPhraseVoiceTriggerForEngineVersion:engineMinorVersion:accessoryRTModelType:]";
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_DEFAULT, "%s Incoming Major version:%@, Incoming Minor version:%@", &v19, 0x20u);
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

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

@end