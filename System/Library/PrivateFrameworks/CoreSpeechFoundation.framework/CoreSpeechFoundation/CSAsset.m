@interface CSAsset
+ (BOOL)isLeftConfigVersion:(id)a3 newerThanRightConfigVersion:(id)a4;
+ (id)assetForAssetType:(unint64_t)a3 resourcePath:(id)a4 configVersion:(id)a5 assetProvider:(unint64_t)a6 assetVariant:(unint64_t)a7 identity:(id)a8 assistantLanguageCode:(id)a9 uafAssetVersion:(id)a10;
+ (id)decodeJson:(id)a3;
+ (id)defaultFallBackAssetForAdBlocker;
+ (id)defaultFallBackAssetForHearst;
+ (id)defaultFallBackAssetForVoiceTrigger;
+ (id)fallBackAssetResourcePath;
+ (id)getAssetFileForAssetType:(unint64_t)a3 resourcePath:(id)a4 assetProvider:(unint64_t)a5;
+ (id)getConfigFileNameForAssetType:(unint64_t)a3;
+ (id)hybridEndpointerAssetFilename;
+ (id)overrideAssetForVoiceTrigger;
+ (unint64_t)parseCompatibilityFromConfigVersion:(id)a3;
- (BOOL)containsCategory:(id)a3;
- (BOOL)containsKey:(id)a3 category:(id)a4;
- (BOOL)isCompactVersion;
- (BOOL)isEqualAsset:(id)a3;
- (BOOL)isHSVoiceTrigger:(id)a3;
- (BOOL)isJSVoiceTrigger:(id)a3;
- (BOOL)progCheckerShadowMode;
- (CSAsset)initWithCoder:(id)a3;
- (CSAsset)initWithResourcePath:(id)a3 configFile:(id)a4 configVersion:(id)a5 assetProvderType:(unint64_t)a6 assetType:(unint64_t)a7 assetVariant:(unint64_t)a8 identity:(id)a9 assistantLanguageCode:(id)a10 uafAssetVersion:(id)a11;
- (NSArray)checkerThresholds;
- (NSArray)contConvRecognizerConfigFiles;
- (NSArray)contConvThresholds;
- (NSArray)progCheckerRecognizerConfigFiles;
- (NSDictionary)dictionary;
- (NSString)allowKeywordsFile;
- (NSString)contConvConfigFile;
- (NSString)gazeDetectionModelFile;
- (NSString)hashFromResourcePath;
- (NSString)keywordDetectorConfigPathRecognizer;
- (NSString)lipMovementVADModelFile;
- (NSString)mimVotingConfigFile;
- (NSString)progCheckerConfigFile;
- (float)attendingTimeoutValueInSecs;
- (float)eagerMitigationDurationThreshold;
- (float)keywordDetectorThreshold;
- (float)keywordDetectorWaitTimeSinceVT;
- (float)mitigationModelDefaultAFTMScore;
- (float)mitigationModelDefaultELFusionScore;
- (float)mitigationModelDefaultNLDAScore;
- (float)startOfSpeechPrependAudioDuration;
- (float)startOfSpeechThresholdDuration;
- (id)_sha1ForString:(id)a3;
- (id)assetHashForTrial:(id)a3;
- (id)assetHashInResourcePath:(id)a3;
- (id)description;
- (id)getAllMitigationConfigFiles;
- (id)getAllNldaConfigFiles;
- (id)getCategoryKeyWithRecordCtx:(id)a3;
- (id)getNumberForKey:(id)a3 category:(id)a4 default:(id)a5;
- (id)getRecognizerConfigsFrom:(id)a3;
- (id)getStringForKey:(id)a3;
- (id)getStringForKey:(id)a3 category:(id)a4 default:(id)a5;
- (id)getValueForKey:(id)a3 category:(id)a4;
- (id)mitigationConfigFileForCategory:(id)a3;
- (id)mitigatonConfigFile;
- (id)nldaConfigFile;
- (id)nldaConfigFileForCategory:(id)a3;
- (id)stringForCurrentAssetProviderType;
- (id)uesConfigFileForCategory:(id)a3;
- (int64_t)numOfConsecutiveBoronActivationThreshold;
- (unint64_t)_mapInputOriginFromAssetToCSAudioRecordType:(id)a3;
- (unint64_t)allowListWordCountThreshold;
- (unint64_t)supportedInputOrigins;
- (void)_updateAssetVariantIfNeeded;
- (void)encodeWithCoder:(id)a3;
- (void)logAssetVersionForInsight;
@end

@implementation CSAsset

- (NSDictionary)dictionary
{
  decodedInfo = self->_decodedInfo;
  if (!decodedInfo)
  {
    v4 = [CSAsset decodeJson:self->_path];
    v5 = self->_decodedInfo;
    self->_decodedInfo = v4;

    decodedInfo = self->_decodedInfo;
  }

  return decodedInfo;
}

- (void)_updateAssetVariantIfNeeded
{
  if (!self->_assetVariant && self->_assetProvider - 1 <= 1)
  {
    self->_assetVariant = 2;
  }
}

- (NSString)allowKeywordsFile
{
  v3 = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"allowKeywordFile" category:@"AttSiriCC" default:@"allowList.txt"];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (id)description
{
  uafAssetVersion = self->_uafAssetVersion;
  resourcePath = self->_resourcePath;
  configVersion = self->_configVersion;
  path = self->_path;
  if (uafAssetVersion)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"configVersion:%@ uafAssetVersion:%@ resourcePath:%@ path:%@", configVersion, uafAssetVersion, resourcePath, path];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"configVersion:%@ resourcePath:%@ path:%@", configVersion, resourcePath, path, v8];
  }
  v6 = ;

  return v6;
}

- (CSAsset)initWithCoder:(id)a3
{
  v26[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CSAsset;
  v5 = [(CSAsset *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resourcePath"];
    resourcePath = v5->_resourcePath;
    v5->_resourcePath = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configVersion"];
    configVersion = v5->_configVersion;
    v5->_configVersion = v10;

    v5->_assetProvider = [v4 decodeIntegerForKey:@"assetProvider"];
    v5->_assetVariant = [v4 decodeIntegerForKey:@"assetVariant"];
    v5->_assetType = [v4 decodeIntegerForKey:@"assetType"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assistantLanguageCode"];
    assistantLanguageCode = v5->_assistantLanguageCode;
    v5->_assistantLanguageCode = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uafAssetVersion"];
    uafAssetVersion = v5->_uafAssetVersion;
    v5->_uafAssetVersion = v16;

    v18 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v26[2] = objc_opt_class();
    v26[3] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    v20 = [v18 setWithArray:v19];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"decodedInfo"];
    decodedInfo = v5->_decodedInfo;
    v5->_decodedInfo = v21;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  path = self->_path;
  v5 = a3;
  [v5 encodeObject:path forKey:@"path"];
  [v5 encodeObject:self->_resourcePath forKey:@"resourcePath"];
  [v5 encodeObject:self->_configVersion forKey:@"configVersion"];
  [v5 encodeInteger:self->_assetProvider forKey:@"assetProvider"];
  [v5 encodeInteger:self->_assetVariant forKey:@"assetVariant"];
  [v5 encodeInteger:self->_assetType forKey:@"assetType"];
  [v5 encodeObject:self->_identity forKey:@"identity"];
  [v5 encodeObject:self->_assistantLanguageCode forKey:@"assistantLanguageCode"];
  [v5 encodeObject:self->_uafAssetVersion forKey:@"uafAssetVersion"];
  v6 = [(CSAsset *)self dictionary];
  [v5 encodeObject:v6 forKey:@"decodedInfo"];
}

- (void)logAssetVersionForInsight
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(CSAsset *)self assetType]&& [(CSAsset *)self assetType]!= 5 && [(CSAsset *)self assetType]!= 7 && [(CSAsset *)self assetType]!= 8)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v4 = v7;
    v8 = 136315394;
    v9 = "[CSAsset logAssetVersionForInsight]";
    v10 = 2048;
    v11 = [(CSAsset *)self assetType];
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s logAssetVersionForInsight for assetType: %lu", &v8, 0x16u);
    goto LABEL_7;
  }

  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(CSAsset *)self configVersion];
    v8 = 136315394;
    v9 = "[CSAsset logAssetVersionForInsight]";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s [Asset Version Used]: VTAssetVersion: %{public}@", &v8, 0x16u);

LABEL_7:
  }

LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
}

- (id)_sha1ForString:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [a3 dataUsingEncoding:4];
  CC_SHA1([v3 bytes], objc_msgSend(v3, "length"), md);
  v4 = [MEMORY[0x1E696AD60] stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v4 appendFormat:@"%02x", md[i]];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)assetHashInResourcePath:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if ([(CSAsset *)self assetProvider]== 1 || [(CSAsset *)self assetProvider]== 2)
    {
      v5 = [(CSAsset *)self assetHashForTrial:v4];
    }

    else
    {
      v17 = 0;
      v6 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"((?:[a-z]|[0-9])*)\\.asset" options:0 error:&v17];
      v7 = v17;
      if (v7)
      {
        v8 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          v15 = v8;
          v16 = [v7 localizedDescription];
          *buf = 136315394;
          v19 = "[CSAsset assetHashInResourcePath:]";
          v20 = 2114;
          v21 = v16;
          _os_log_error_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_ERROR, "%s Failed to create regular expression : %{public}@", buf, 0x16u);
        }

        v5 = @"nohash";
      }

      else
      {
        v9 = [v6 firstMatchInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
        v10 = v9;
        if (v9 && [v9 numberOfRanges] >= 2)
        {
          v11 = [v10 rangeAtIndex:1];
          v5 = [v4 substringWithRange:{v11, v12}];
        }

        else
        {
          v5 = @"nohash";
        }
      }
    }
  }

  else
  {
    v5 = @"nohash";
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)assetHashForTrial:(id)a3
{
  v4 = [(CSAsset *)self _sha1ForString:a3];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v4, self->_configVersion];

  return v5;
}

- (id)stringForCurrentAssetProviderType
{
  assetProvider = self->_assetProvider;
  if (assetProvider > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E865A828[assetProvider];
  }
}

- (BOOL)isCompactVersion
{
  v2 = [(CSAsset *)self configVersion];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 lowercaseString];
    v5 = [v4 containsString:@"compact"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualAsset:(id)a3
{
  path = self->_path;
  v4 = [a3 path];
  LOBYTE(path) = [(NSString *)path isEqualToString:v4];

  return path;
}

- (NSString)hashFromResourcePath
{
  v3 = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self assetHashInResourcePath:v3];

  return v4;
}

- (BOOL)containsCategory:(id)a3
{
  v4 = a3;
  v5 = [(CSAsset *)self dictionary];
  if (v5)
  {
    v6 = [(CSAsset *)self dictionary];
    v7 = [v6 objectForKeyedSubscript:v4];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)containsKey:(id)a3 category:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSAsset *)self dictionary];
  if (v8)
  {
    v9 = [(CSAsset *)self dictionary];
    v10 = [v9 objectForKeyedSubscript:v7];
    if (v10)
    {
      v11 = [(CSAsset *)self dictionary];
      v12 = [v11 objectForKeyedSubscript:v7];
      v13 = [v12 objectForKeyedSubscript:v6];
      v14 = v13 != 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)getStringForKey:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CSAsset *)self dictionary];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  v7 = [(CSAsset *)self dictionary];
  v8 = [v7 objectForKeyedSubscript:v4];

  if (v8)
  {
    v9 = [(CSAsset *)self dictionary];
    v10 = [v9 objectForKeyedSubscript:v4];
  }

  else
  {
LABEL_4:
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315394;
      v15 = "[CSAsset getStringForKey:]";
      v16 = 2114;
      v17 = v4;
      _os_log_debug_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEBUG, "%s Cannot access to %{public}@", &v14, 0x16u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)getValueForKey:(id)a3 category:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CSAsset *)self dictionary];
  if (v8)
  {
    v9 = v8;
    v10 = [(CSAsset *)self dictionary];
    v11 = [v10 objectForKeyedSubscript:v7];
    if (v11)
    {
      v12 = v11;
      v13 = [(CSAsset *)self dictionary];
      v14 = [v13 objectForKeyedSubscript:v7];
      v15 = [v14 objectForKeyedSubscript:v6];

      if (v15)
      {
        v16 = [(CSAsset *)self dictionary];
        v17 = [v16 objectForKeyedSubscript:v7];
        v18 = [v17 objectForKeyedSubscript:v6];

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v19 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    v22 = 136315650;
    v23 = "[CSAsset getValueForKey:category:]";
    v24 = 2114;
    v25 = v7;
    v26 = 2114;
    v27 = v6;
    _os_log_debug_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEBUG, "%s Cannot access to %{public}@ %{public}@", &v22, 0x20u);
  }

  v18 = 0;
LABEL_9:

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)getStringForKey:(id)a3 category:(id)a4 default:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSAsset *)self dictionary];
  if (v11)
  {
    v12 = v11;
    v13 = [(CSAsset *)self dictionary];
    v14 = [v13 objectForKeyedSubscript:v9];
    if (v14)
    {
      v15 = v14;
      v16 = [(CSAsset *)self dictionary];
      v17 = [v16 objectForKeyedSubscript:v9];
      v18 = [v17 objectForKeyedSubscript:v8];

      if (v18)
      {
        v19 = [(CSAsset *)self dictionary];
        v20 = [v19 objectForKeyedSubscript:v9];
        v21 = [v20 objectForKeyedSubscript:v8];

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v22 = CSLogContextFacilityCoreSpeech;
  v21 = v10;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    v25 = 136315906;
    v26 = "[CSAsset getStringForKey:category:default:]";
    v27 = 2114;
    v28 = v9;
    v29 = 2114;
    v30 = v8;
    v31 = 2114;
    v32 = v10;
    _os_log_debug_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_DEBUG, "%s Cannot access to %{public}@ %{public}@ using default value=%{public}@", &v25, 0x2Au);
    v21 = v10;
  }

LABEL_8:

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)getNumberForKey:(id)a3 category:(id)a4 default:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSAsset *)self dictionary];
  if (v11)
  {
    v12 = v11;
    v13 = [(CSAsset *)self dictionary];
    v14 = [v13 objectForKeyedSubscript:v9];
    if (v14)
    {
      v15 = v14;
      v16 = [(CSAsset *)self dictionary];
      v17 = [v16 objectForKeyedSubscript:v9];
      v18 = [v17 objectForKeyedSubscript:v8];

      if (v18)
      {
        v19 = [(CSAsset *)self dictionary];
        v20 = [v19 objectForKeyedSubscript:v9];
        v21 = [v20 objectForKeyedSubscript:v8];

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v22 = CSLogContextFacilityCoreSpeech;
  v21 = v10;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    v25 = 136315906;
    v26 = "[CSAsset getNumberForKey:category:default:]";
    v27 = 2114;
    v28 = v9;
    v29 = 2114;
    v30 = v8;
    v31 = 2114;
    v32 = v10;
    _os_log_debug_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_DEBUG, "%s Cannot access to %{public}@ %{public}@ using default value=%{public}@", &v25, 0x2Au);
    v21 = v10;
  }

LABEL_8:

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

- (CSAsset)initWithResourcePath:(id)a3 configFile:(id)a4 configVersion:(id)a5 assetProvderType:(unint64_t)a6 assetType:(unint64_t)a7 assetVariant:(unint64_t)a8 identity:(id)a9 assistantLanguageCode:(id)a10 uafAssetVersion:(id)a11
{
  v40 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v34 = a9;
  v33 = a10;
  v32 = a11;
  v35.receiver = self;
  v35.super_class = CSAsset;
  v18 = [(CSAsset *)&v35 init];
  if (!v18)
  {
    goto LABEL_7;
  }

  v31 = v17;
  v19 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v37 = "[CSAsset initWithResourcePath:configFile:configVersion:assetProvderType:assetType:assetVariant:identity:assistantLanguageCode:uafAssetVersion:]";
    v38 = 2114;
    v39 = v15;
    _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  v20 = [MEMORY[0x1E696AC08] defaultManager];
  v21 = [(NSString *)v15 stringByAppendingPathComponent:v16];
  if ([v20 fileExistsAtPath:v15] && (objc_msgSend(v20, "fileExistsAtPath:", v21) & 1) != 0)
  {
    objc_storeStrong(&v18->_configVersion, a5);
    objc_storeStrong(&v18->_resourcePath, a3);
    path = v18->_path;
    v18->_path = v21;
    v23 = v21;

    v18->_assetProvider = a6;
    v18->_assetType = a7;
    objc_storeStrong(&v18->_identity, a9);
    objc_storeStrong(&v18->_assistantLanguageCode, a10);
    v18->_assetVariant = a8;
    objc_storeStrong(&v18->_uafAssetVersion, a11);

    [(CSAsset *)v18 _updateAssetVariantIfNeeded];
    v17 = v31;
LABEL_7:
    v24 = v18;
    goto LABEL_11;
  }

  v25 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v37 = "[CSAsset initWithResourcePath:configFile:configVersion:assetProvderType:assetType:assetVariant:identity:assistantLanguageCode:uafAssetVersion:]";
    v38 = 2114;
    v39 = v21;
    _os_log_impl(&dword_1DDA4B000, v25, OS_LOG_TYPE_DEFAULT, "%s Cannot find corespeech asset from resourcePath : %{public}@", buf, 0x16u);
  }

  v24 = 0;
  v17 = v31;
LABEL_11:

  v26 = *MEMORY[0x1E69E9840];
  return v24;
}

+ (BOOL)isLeftConfigVersion:(id)a3 newerThanRightConfigVersion:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v26 = "+[CSAsset isLeftConfigVersion:newerThanRightConfigVersion:]";
    v27 = 2114;
    v28 = v5;
    v29 = 2114;
    v30 = v6;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Comparing %{public}@ with %{public}@", buf, 0x20u);
  }

  v8 = [v6 componentsSeparatedByString:@"."];
  if ([v8 count] > 2)
  {
    v11 = [v5 componentsSeparatedByString:@"."];
    if ([v11 count] > 2)
    {
      v13 = [v11 objectAtIndexedSubscript:0];
      v14 = [v8 objectAtIndexedSubscript:0];
      if ([v13 isEqualToString:v14])
      {
        v15 = [v8 objectAtIndexedSubscript:1];
        v16 = [v11 objectAtIndexedSubscript:1];
        v17 = [v16 integerValue];
        if (v17 == [v15 integerValue])
        {
          v18 = [v11 objectAtIndexedSubscript:2];
          v19 = [v8 objectAtIndexedSubscript:2];
          v24 = v18;
          if ([v19 isEqualToString:@"Premium"])
          {
            v10 = 0;
          }

          else
          {
            v10 = [v18 isEqualToString:@"Premium"];
          }
        }

        else
        {
          v21 = [v16 integerValue];
          v10 = v21 > [v15 integerValue];
        }
      }

      else
      {
        v20 = CSLogContextFacilityCoreSpeech;
        v10 = 0;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v26 = "+[CSAsset isLeftConfigVersion:newerThanRightConfigVersion:]";
          v27 = 2114;
          v28 = v13;
          _os_log_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_DEFAULT, "%s Not comparable with %{public}@, ignore", buf, 0x16u);
          v10 = 0;
        }
      }
    }

    else
    {
      v12 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "+[CSAsset isLeftConfigVersion:newerThanRightConfigVersion:]";
        v27 = 2114;
        v28 = v5;
        _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, "%s Invalid leftConfig syntax : %{public}@", buf, 0x16u);
      }

      v10 = 0;
    }
  }

  else
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "+[CSAsset isLeftConfigVersion:newerThanRightConfigVersion:]";
      v27 = 2114;
      v28 = v6;
      _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, "%s Invalid rightConfig syntax : %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)decodeJson:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3];
    if (!v6)
    {
      v14 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "+[CSAsset decodeJson:]";
        v21 = 2114;
        v22 = v3;
        _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s Cannot read configuration file : %{public}@", buf, 0x16u);
      }

      v13 = 0;
      goto LABEL_18;
    }

    v18 = 0;
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:&v18];
    v8 = v18;
    if (v8)
    {
      v9 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [v8 localizedDescription];
        *buf = 136315394;
        v20 = "+[CSAsset decodeJson:]";
        v21 = 2114;
        v22 = v11;
        _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Cannot decode configuration json file : %{public}@", buf, 0x16u);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v7;
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }

      v15 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "+[CSAsset decodeJson:]";
        _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s Configuration json file is not expected format", buf, 0xCu);
      }
    }

    v13 = 0;
    goto LABEL_17;
  }

  v12 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "+[CSAsset decodeJson:]";
    v21 = 2114;
    v22 = v3;
    _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s Configuration file is not exists : %{public}@", buf, 0x16u);
  }

  v13 = 0;
LABEL_19:

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (unint64_t)parseCompatibilityFromConfigVersion:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"."];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)overrideAssetForVoiceTrigger
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[CSFPreferences sharedPreferences];
  v3 = [v2 fakeVoiceTriggerAssetPath];

  v4 = [v3 stringByDeletingLastPathComponent];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 fileExistsAtPath:v3];

  if (v6)
  {
    v7 = [CSAsset assetForAssetType:0 resourcePath:v4 configVersion:@"override-asset" assetProvider:2];
    v8 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "+[CSAsset overrideAssetForVoiceTrigger]";
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Returning Overriding Asset", buf, 0xCu);
    }

    if (v7)
    {
      v9 = +[CSOnDeviceCompilationHandler sharedHandler];

      if (v9)
      {
        v10 = +[CSOnDeviceCompilationHandler sharedHandler];
        v15 = 0;
        [v10 compileAndUpdateDeviceCachesWithAsset:v7 assetType:0 endpointId:0 errOut:&v15];
        v11 = v15;

        v12 = CSLogCategoryAsset;
        if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v17 = "+[CSAsset overrideAssetForVoiceTrigger]";
          v18 = 2112;
          v19 = v11;
          _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s Compile cached asset to onDevice CacheIr with error: %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)defaultFallBackAssetForVoiceTrigger
{
  v2 = [a1 fallBackAssetResourcePath];
  v3 = [CSAsset alloc];
  v4 = [v2 stringByAppendingPathComponent:@"iOS"];
  v5 = [(CSAsset *)v3 initWithResourcePath:v4 configFile:@"corespeech.json" configVersion:@"defaultFallback" assetProvderType:0 assetType:0];

  return v5;
}

+ (id)defaultFallBackAssetForAdBlocker
{
  v3 = [CSAsset alloc];
  v4 = [a1 fallBackAssetResourcePath];
  v5 = [(CSAsset *)v3 initWithResourcePath:v4 configFile:@"adBlockerPayload.bin" configVersion:@"defaultFallbackAdBlocker" assetProvderType:0 assetType:4];

  return v5;
}

+ (id)defaultFallBackAssetForHearst
{
  v3 = [CSAsset alloc];
  v4 = [a1 fallBackAssetResourcePath];
  v5 = [(CSAsset *)v3 initWithResourcePath:v4 configFile:@"corespeech.json" configVersion:@"defaultFallbackHearst" assetProvderType:0 assetType:0];

  return v5;
}

+ (id)fallBackAssetResourcePath
{
  v10 = *MEMORY[0x1E69E9840];
  if (+[CSUtils isDarwinOS])
  {
    v2 = @"/System/Library/PrivateFrameworks/CoreSpeechDarwin.framework";
  }

  else
  {
    v2 = [CSUtils getResourcePathInSystemDomainMaskFromRootPathByAppending:@"PrivateFrameworks/CoreSpeech.framework"];
  }

  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[CSAsset fallBackAssetResourcePath]";
    v8 = 2114;
    v9 = v2;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Fallback asset resource path : %{public}@", &v6, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)assetForAssetType:(unint64_t)a3 resourcePath:(id)a4 configVersion:(id)a5 assetProvider:(unint64_t)a6 assetVariant:(unint64_t)a7 identity:(id)a8 assistantLanguageCode:(id)a9 uafAssetVersion:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a5;
  v20 = a4;
  v21 = [CSAsset getAssetFileForAssetType:a3 resourcePath:v20 assetProvider:a6];
  v22 = [[CSAsset alloc] initWithResourcePath:v20 configFile:v21 configVersion:v19 assetProvderType:a6 assetType:a3 assetVariant:a7 identity:v18 assistantLanguageCode:v17 uafAssetVersion:v16];

  return v22;
}

+ (id)getAssetFileForAssetType:(unint64_t)a3 resourcePath:(id)a4 assetProvider:(unint64_t)a5
{
  v7 = a4;
  v8 = 0;
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      v9 = @"speakerRecognition.json";
      if (a3 != 3)
      {
        v9 = 0;
      }

      if (a3 == 2)
      {
        v8 = @"assets.json";
      }

      else
      {
        v8 = v9;
      }

      goto LABEL_27;
    }

    if (a3)
    {
      if (a3 == 1)
      {
        v8 = +[CSAsset hybridEndpointerAssetFilename];
      }

      goto LABEL_27;
    }

LABEL_17:
    v8 = @"corespeech.json";
    goto LABEL_27;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      if (a5 == 1)
      {
        v10 = [MEMORY[0x1E696AC08] defaultManager];
        v11 = [v10 contentsOfDirectoryAtPath:v7 error:0];

        if (v11 && [v11 count])
        {
          v8 = [v11 firstObject];
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = @"adBlockerPayload.bin";
      }

      goto LABEL_27;
    }

    goto LABEL_17;
  }

  switch(a3)
  {
    case 6uLL:
      v8 = @"mitigation.json";
      break;
    case 8uLL:
      v8 = @"repromptMetadata.json";
      break;
    case 7uLL:
      goto LABEL_17;
  }

LABEL_27:

  return v8;
}

+ (id)getConfigFileNameForAssetType:(unint64_t)a3
{
  v5 = 0;
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      v7 = @"speakerRecognition.json";
      if (a3 != 3)
      {
        v7 = 0;
      }

      if (a3 == 2)
      {
        v5 = @"assets.json";
      }

      else
      {
        v5 = v7;
      }

      return v5;
    }

    if (a3)
    {
      if (a3 != 1)
      {
LABEL_6:

        return v5;
      }

      v5 = +[CSAsset hybridEndpointerAssetFilename];

      return v5;
    }

LABEL_24:
    v5 = @"corespeech.json";

    return v5;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      v5 = @"adBlockerPayload.bin";

      return v5;
    }

    goto LABEL_24;
  }

  switch(a3)
  {
    case 6uLL:
      v5 = @"mitigation.json";

      break;
    case 8uLL:
      v5 = @"repromptMetadata.json";

      break;
    case 7uLL:
      goto LABEL_24;
    default:
      goto LABEL_6;
  }

  return v5;
}

+ (id)hybridEndpointerAssetFilename
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman)
  {
    return @"hybridendpointer_marsh.json";
  }

  else
  {
    return @"hybridendpointer.json";
  }
}

- (id)getAllNldaConfigFiles
{
  v3 = [(CSAsset *)self resourcePath];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = [(CSAsset *)self nldaConfigFile];
    [v4 addObject:v5];

    v6 = [(CSAsset *)self nldaConfigFileForCategory:@"AttSiriCC"];
    [v4 addObject:v6];

    v7 = [(CSAsset *)self nldaConfigFileForCategory:@"AttSiriHS"];
    [v4 addObject:v7];

    v8 = [(CSAsset *)self nldaConfigFileForCategory:@"AttSiriJS"];
    [v4 addObject:v8];

    v9 = [v4 allObjects];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)getAllMitigationConfigFiles
{
  v3 = [(CSAsset *)self resourcePath];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = [(CSAsset *)self mitigatonConfigFile];
    [v4 addObject:v5];

    v6 = [(CSAsset *)self mitigationConfigFileForCategory:@"AttSiriCC"];
    [v4 addObject:v6];

    v7 = [(CSAsset *)self mitigationConfigFileForCategory:@"AttSiriHS"];
    [v4 addObject:v7];

    v8 = [(CSAsset *)self mitigationConfigFileForCategory:@"AttSiriJS"];
    [v4 addObject:v8];

    v9 = [v4 allObjects];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (float)eagerMitigationDurationThreshold
{
  v2 = [(CSAsset *)self getNumberForKey:@"defaultEagerMitigationDurationThreshold" category:@"AttSiri" default:&unk_1F5916B80];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (BOOL)isHSVoiceTrigger:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"triggeredPhrase"];

    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"triggeredPhrase"];
      LOBYTE(v5) = [v6 isEqualToString:@"HS"];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isJSVoiceTrigger:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"triggeredPhrase"];

    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"triggeredPhrase"];
      LOBYTE(v5) = [v6 isEqualToString:@"Siri"];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)getCategoryKeyWithRecordCtx:(id)a3
{
  v4 = a3;
  v5 = [v4 activationMetadata];
  if ([(CSAsset *)self isHSVoiceTrigger:v5])
  {
    v6 = @"AttSiriHS";
  }

  else if ([(CSAsset *)self isJSVoiceTrigger:v5])
  {
    v6 = @"AttSiriJS";
  }

  else if ([v4 isContinuousConversation])
  {
    v6 = @"AttSiriCC";
  }

  else
  {
    v6 = @"AttSiri";
  }

  return v6;
}

- (id)uesConfigFileForCategory:(id)a3
{
  v4 = a3;
  v5 = [(CSAsset *)self resourcePath];
  v6 = [(CSAsset *)self getStringForKey:@"uesConfigFile" category:v4 default:@"uesConfig.json"];

  v7 = [v5 stringByAppendingPathComponent:v6];

  return v7;
}

- (id)nldaConfigFileForCategory:(id)a3
{
  v4 = a3;
  v5 = [(CSAsset *)self resourcePath];
  v6 = [(CSAsset *)self getStringForKey:@"nldaConfigFile" category:v4 default:@"nldaConfig.json"];

  v7 = [v5 stringByAppendingPathComponent:v6];

  return v7;
}

- (id)mitigationConfigFileForCategory:(id)a3
{
  v4 = a3;
  v5 = [(CSAsset *)self resourcePath];
  v6 = [(CSAsset *)self getStringForKey:@"mitigationModelConfigFile" category:v4 default:@"ouresConfig.json"];

  v7 = [v5 stringByAppendingPathComponent:v6];

  return v7;
}

- (unint64_t)allowListWordCountThreshold
{
  v2 = [(CSAsset *)self getNumberForKey:@"allowKeywordCount" category:@"AttSiriCC" default:&unk_1F5916880];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (id)nldaConfigFile
{
  v3 = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"nldaConfigFile" category:@"AttSiri" default:@"nldaConfig.json"];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (float)mitigationModelDefaultNLDAScore
{
  v2 = [(CSAsset *)self getNumberForKey:@"defaultNLDAValue" category:@"AttSiri" default:&unk_1F5916B70];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)mitigationModelDefaultELFusionScore
{
  v2 = [(CSAsset *)self getNumberForKey:@"defaultELScoreValue" category:@"AttSiri" default:&unk_1F5916B70];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)mitigationModelDefaultAFTMScore
{
  v2 = [(CSAsset *)self getNumberForKey:@"defaultAFTMValue" category:@"AttSiri" default:&unk_1F5916B70];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (id)mitigatonConfigFile
{
  v3 = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"mitigationModelConfigFile" category:@"AttSiri" default:@"ouresConfig.json"];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (float)attendingTimeoutValueInSecs
{
  v2 = [(CSAsset *)self getNumberForKey:@"attendingTimeoutInSecs" category:@"AttSiri" default:&unk_1F5916B70];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (int64_t)numOfConsecutiveBoronActivationThreshold
{
  v2 = [(CSAsset *)self getNumberForKey:@"numOfConsecutiveBoronActivationThreshold" category:@"AttSiri" default:&unk_1F5916868];
  v3 = [v2 intValue];

  return v3;
}

- (float)startOfSpeechPrependAudioDuration
{
  v2 = [(CSAsset *)self getNumberForKey:@"prependingAudioDurationInMs" category:@"AttSiri" default:&unk_1F5916B60];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (float)startOfSpeechThresholdDuration
{
  v2 = [(CSAsset *)self getNumberForKey:@"startOfSpeechThresholdDuration" category:@"AttSiri" default:&unk_1F5916B50];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (NSString)lipMovementVADModelFile
{
  v3 = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"visualActivityDetectorModelFile" category:@"AttSiri" default:@"vvad.mlmodelc"];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (NSString)gazeDetectionModelFile
{
  v3 = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"gazeDetectionModelFile" category:@"AttSiri" default:@"gazeModel.mlmodelc"];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (NSString)mimVotingConfigFile
{
  v3 = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"mimVotingConfigFile" category:@"AttSiri" default:@"mimConfig.json"];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (unint64_t)_mapInputOriginFromAssetToCSAudioRecordType:(id)a3
{
  v18[6] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v17[0] = &unk_1F59168E0;
  v18[0] = @"Unspecified";
  v18[1] = @"VoiceTrigger";
  v17[1] = &unk_1F59168F8;
  v17[2] = &unk_1F5916910;
  v17[3] = &unk_1F5916928;
  v18[2] = @"VoiceTrigger";
  v18[3] = @"ButtonPress";
  v17[4] = &unk_1F5916940;
  v17[5] = &unk_1F5916958;
  v18[4] = @"ButtonPress";
  v18[5] = @"VoiceTrigger";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__CSAsset_Liminal___mapInputOriginFromAssetToCSAudioRecordType___block_invoke;
  v11[3] = &unk_1E865AE50;
  v5 = v3;
  v12 = v5;
  v6 = [v4 keysOfEntriesPassingTest:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__CSAsset_Liminal___mapInputOriginFromAssetToCSAudioRecordType___block_invoke_2;
  v10[3] = &unk_1E865AE78;
  v10[4] = &v13;
  [v6 enumerateObjectsUsingBlock:v10];
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __64__CSAsset_Liminal___mapInputOriginFromAssetToCSAudioRecordType___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 unsignedIntValue];
  *(*(*(a1 + 32) + 8) + 24) |= 1 << result;
  return result;
}

- (id)getRecognizerConfigsFrom:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [CSAsset decodeJson:v3];
    v5 = [CSFModelConfigDecoder getAftmRecognizerRelativeConfigFromConfigDict:v4];
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = [v3 stringByDeletingLastPathComponent];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [v7 stringByAppendingPathComponent:{*(*(&v16 + 1) + 8 * i), v16}];
            [v6 addObject:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSArray)contConvThresholds
{
  v2 = [(CSAsset *)self contConvConfigFile];
  v3 = [CSAsset decodeJson:v2];
  v4 = [v3 objectForKeyedSubscript:@"checkerConfig"];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"thresholds"];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E695DEC8]);
      v7 = [v4 objectForKeyedSubscript:@"thresholds"];
      v5 = [v6 initWithArray:v7];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)contConvRecognizerConfigFiles
{
  v3 = [(CSAsset *)self contConvConfigFile];
  v4 = [(CSAsset *)self getRecognizerConfigsFrom:v3];

  return v4;
}

- (NSString)contConvConfigFile
{
  v3 = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"contionusConversationConfigFile" category:@"Liminal" default:@"progChecker.json"];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (BOOL)progCheckerShadowMode
{
  v2 = [(CSAsset *)self progCheckerConfigFile];
  v3 = [CSAsset decodeJson:v2];
  v4 = [v3 objectForKeyedSubscript:@"checkerConfig"];

  if (v4 && ([v4 objectForKeyedSubscript:@"shadowMode"], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 objectForKeyedSubscript:@"shadowMode"];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (NSArray)checkerThresholds
{
  v2 = [(CSAsset *)self progCheckerConfigFile];
  v3 = [CSAsset decodeJson:v2];
  v4 = [v3 objectForKeyedSubscript:@"checkerConfig"];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"thresholds"];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E695DEC8]);
      v7 = [v4 objectForKeyedSubscript:@"thresholds"];
      v5 = [v6 initWithArray:v7];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)supportedInputOrigins
{
  v3 = [(CSAsset *)self progCheckerConfigFile];
  v4 = [CSAsset decodeJson:v3];
  v5 = [v4 objectForKeyedSubscript:@"checkerConfig"];

  if (v5 && ([v5 objectForKeyedSubscript:@"validInputOrigins"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = objc_alloc(MEMORY[0x1E695DEC8]);
    v8 = [v5 objectForKeyedSubscript:@"validInputOrigins"];
    v9 = [v7 initWithArray:v8];

    v10 = [(CSAsset *)self _mapInputOriginFromAssetToCSAudioRecordType:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSArray)progCheckerRecognizerConfigFiles
{
  v3 = [(CSAsset *)self progCheckerConfigFile];
  v4 = [(CSAsset *)self getRecognizerConfigsFrom:v3];

  return v4;
}

- (NSString)progCheckerConfigFile
{
  v3 = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"progressiveCheckerConfigFile" category:@"Liminal" default:@"progChecker.json"];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (float)keywordDetectorWaitTimeSinceVT
{
  v2 = [(CSAsset *)self getNumberForKey:@"waitTimeSinceVT" category:@"keywordDetector" default:&unk_1F5916BE0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (NSString)keywordDetectorConfigPathRecognizer
{
  v3 = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"configFileRecognizer" category:@"keywordDetector" default:@"keyword_detector.json"];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (float)keywordDetectorThreshold
{
  v2 = [(CSAsset *)self getNumberForKey:@"threshold" category:@"keywordDetector" default:&unk_1F5916BD0];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

@end