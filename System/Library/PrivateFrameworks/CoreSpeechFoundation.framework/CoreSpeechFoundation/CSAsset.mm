@interface CSAsset
+ (BOOL)isLeftConfigVersion:(id)version newerThanRightConfigVersion:(id)configVersion;
+ (id)assetForAssetType:(unint64_t)type resourcePath:(id)path configVersion:(id)version assetProvider:(unint64_t)provider assetVariant:(unint64_t)variant identity:(id)identity assistantLanguageCode:(id)code uafAssetVersion:(id)self0;
+ (id)decodeJson:(id)json;
+ (id)defaultFallBackAssetForAdBlocker;
+ (id)defaultFallBackAssetForHearst;
+ (id)defaultFallBackAssetForVoiceTrigger;
+ (id)fallBackAssetResourcePath;
+ (id)getAssetFileForAssetType:(unint64_t)type resourcePath:(id)path assetProvider:(unint64_t)provider;
+ (id)getConfigFileNameForAssetType:(unint64_t)type;
+ (id)hybridEndpointerAssetFilename;
+ (id)overrideAssetForVoiceTrigger;
+ (unint64_t)parseCompatibilityFromConfigVersion:(id)version;
- (BOOL)containsCategory:(id)category;
- (BOOL)containsKey:(id)key category:(id)category;
- (BOOL)isCompactVersion;
- (BOOL)isEqualAsset:(id)asset;
- (BOOL)isHSVoiceTrigger:(id)trigger;
- (BOOL)isJSVoiceTrigger:(id)trigger;
- (BOOL)progCheckerShadowMode;
- (CSAsset)initWithCoder:(id)coder;
- (CSAsset)initWithResourcePath:(id)path configFile:(id)file configVersion:(id)version assetProvderType:(unint64_t)type assetType:(unint64_t)assetType assetVariant:(unint64_t)variant identity:(id)identity assistantLanguageCode:(id)self0 uafAssetVersion:(id)self1;
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
- (id)_sha1ForString:(id)string;
- (id)assetHashForTrial:(id)trial;
- (id)assetHashInResourcePath:(id)path;
- (id)description;
- (id)getAllMitigationConfigFiles;
- (id)getAllNldaConfigFiles;
- (id)getCategoryKeyWithRecordCtx:(id)ctx;
- (id)getNumberForKey:(id)key category:(id)category default:(id)default;
- (id)getRecognizerConfigsFrom:(id)from;
- (id)getStringForKey:(id)key;
- (id)getStringForKey:(id)key category:(id)category default:(id)default;
- (id)getValueForKey:(id)key category:(id)category;
- (id)mitigationConfigFileForCategory:(id)category;
- (id)mitigatonConfigFile;
- (id)nldaConfigFile;
- (id)nldaConfigFileForCategory:(id)category;
- (id)stringForCurrentAssetProviderType;
- (id)uesConfigFileForCategory:(id)category;
- (int64_t)numOfConsecutiveBoronActivationThreshold;
- (unint64_t)_mapInputOriginFromAssetToCSAudioRecordType:(id)type;
- (unint64_t)allowListWordCountThreshold;
- (unint64_t)supportedInputOrigins;
- (void)_updateAssetVariantIfNeeded;
- (void)encodeWithCoder:(id)coder;
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
  resourcePath = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"allowKeywordFile" category:@"AttSiriCC" default:@"allowList.txt"];
  v5 = [resourcePath stringByAppendingPathComponent:v4];

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

- (CSAsset)initWithCoder:(id)coder
{
  v26[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = CSAsset;
  v5 = [(CSAsset *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resourcePath"];
    resourcePath = v5->_resourcePath;
    v5->_resourcePath = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configVersion"];
    configVersion = v5->_configVersion;
    v5->_configVersion = v10;

    v5->_assetProvider = [coderCopy decodeIntegerForKey:@"assetProvider"];
    v5->_assetVariant = [coderCopy decodeIntegerForKey:@"assetVariant"];
    v5->_assetType = [coderCopy decodeIntegerForKey:@"assetType"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assistantLanguageCode"];
    assistantLanguageCode = v5->_assistantLanguageCode;
    v5->_assistantLanguageCode = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uafAssetVersion"];
    uafAssetVersion = v5->_uafAssetVersion;
    v5->_uafAssetVersion = v16;

    v18 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v26[2] = objc_opt_class();
    v26[3] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    v20 = [v18 setWithArray:v19];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"decodedInfo"];
    decodedInfo = v5->_decodedInfo;
    v5->_decodedInfo = v21;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  path = self->_path;
  coderCopy = coder;
  [coderCopy encodeObject:path forKey:@"path"];
  [coderCopy encodeObject:self->_resourcePath forKey:@"resourcePath"];
  [coderCopy encodeObject:self->_configVersion forKey:@"configVersion"];
  [coderCopy encodeInteger:self->_assetProvider forKey:@"assetProvider"];
  [coderCopy encodeInteger:self->_assetVariant forKey:@"assetVariant"];
  [coderCopy encodeInteger:self->_assetType forKey:@"assetType"];
  [coderCopy encodeObject:self->_identity forKey:@"identity"];
  [coderCopy encodeObject:self->_assistantLanguageCode forKey:@"assistantLanguageCode"];
  [coderCopy encodeObject:self->_uafAssetVersion forKey:@"uafAssetVersion"];
  dictionary = [(CSAsset *)self dictionary];
  [coderCopy encodeObject:dictionary forKey:@"decodedInfo"];
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
    assetType = [(CSAsset *)self assetType];
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s logAssetVersionForInsight for assetType: %lu", &v8, 0x16u);
    goto LABEL_7;
  }

  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    configVersion = [(CSAsset *)self configVersion];
    v8 = 136315394;
    v9 = "[CSAsset logAssetVersionForInsight]";
    v10 = 2114;
    assetType = configVersion;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s [Asset Version Used]: VTAssetVersion: %{public}@", &v8, 0x16u);

LABEL_7:
  }

LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
}

- (id)_sha1ForString:(id)string
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [string dataUsingEncoding:4];
  CC_SHA1([v3 bytes], objc_msgSend(v3, "length"), md);
  v4 = [MEMORY[0x1E696AD60] stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v4 appendFormat:@"%02x", md[i]];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)assetHashInResourcePath:(id)path
{
  v22 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (pathCopy)
  {
    if ([(CSAsset *)self assetProvider]== 1 || [(CSAsset *)self assetProvider]== 2)
    {
      v5 = [(CSAsset *)self assetHashForTrial:pathCopy];
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
          localizedDescription = [v7 localizedDescription];
          *buf = 136315394;
          v19 = "[CSAsset assetHashInResourcePath:]";
          v20 = 2114;
          v21 = localizedDescription;
          _os_log_error_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_ERROR, "%s Failed to create regular expression : %{public}@", buf, 0x16u);
        }

        v5 = @"nohash";
      }

      else
      {
        v9 = [v6 firstMatchInString:pathCopy options:0 range:{0, objc_msgSend(pathCopy, "length")}];
        v10 = v9;
        if (v9 && [v9 numberOfRanges] >= 2)
        {
          v11 = [v10 rangeAtIndex:1];
          v5 = [pathCopy substringWithRange:{v11, v12}];
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

- (id)assetHashForTrial:(id)trial
{
  v4 = [(CSAsset *)self _sha1ForString:trial];
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
  configVersion = [(CSAsset *)self configVersion];
  v3 = configVersion;
  if (configVersion)
  {
    lowercaseString = [configVersion lowercaseString];
    v5 = [lowercaseString containsString:@"compact"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualAsset:(id)asset
{
  path = self->_path;
  path = [asset path];
  LOBYTE(path) = [(NSString *)path isEqualToString:path];

  return path;
}

- (NSString)hashFromResourcePath
{
  resourcePath = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self assetHashInResourcePath:resourcePath];

  return v4;
}

- (BOOL)containsCategory:(id)category
{
  categoryCopy = category;
  dictionary = [(CSAsset *)self dictionary];
  if (dictionary)
  {
    dictionary2 = [(CSAsset *)self dictionary];
    v7 = [dictionary2 objectForKeyedSubscript:categoryCopy];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)containsKey:(id)key category:(id)category
{
  keyCopy = key;
  categoryCopy = category;
  dictionary = [(CSAsset *)self dictionary];
  if (dictionary)
  {
    dictionary2 = [(CSAsset *)self dictionary];
    v10 = [dictionary2 objectForKeyedSubscript:categoryCopy];
    if (v10)
    {
      dictionary3 = [(CSAsset *)self dictionary];
      v12 = [dictionary3 objectForKeyedSubscript:categoryCopy];
      v13 = [v12 objectForKeyedSubscript:keyCopy];
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

- (id)getStringForKey:(id)key
{
  v18 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dictionary = [(CSAsset *)self dictionary];
  if (!dictionary)
  {
    goto LABEL_4;
  }

  v6 = dictionary;
  dictionary2 = [(CSAsset *)self dictionary];
  v8 = [dictionary2 objectForKeyedSubscript:keyCopy];

  if (v8)
  {
    dictionary3 = [(CSAsset *)self dictionary];
    v10 = [dictionary3 objectForKeyedSubscript:keyCopy];
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
      v17 = keyCopy;
      _os_log_debug_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEBUG, "%s Cannot access to %{public}@", &v14, 0x16u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)getValueForKey:(id)key category:(id)category
{
  v28 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  categoryCopy = category;
  dictionary = [(CSAsset *)self dictionary];
  if (dictionary)
  {
    v9 = dictionary;
    dictionary2 = [(CSAsset *)self dictionary];
    v11 = [dictionary2 objectForKeyedSubscript:categoryCopy];
    if (v11)
    {
      v12 = v11;
      dictionary3 = [(CSAsset *)self dictionary];
      v14 = [dictionary3 objectForKeyedSubscript:categoryCopy];
      v15 = [v14 objectForKeyedSubscript:keyCopy];

      if (v15)
      {
        dictionary4 = [(CSAsset *)self dictionary];
        v17 = [dictionary4 objectForKeyedSubscript:categoryCopy];
        v18 = [v17 objectForKeyedSubscript:keyCopy];

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
    v25 = categoryCopy;
    v26 = 2114;
    v27 = keyCopy;
    _os_log_debug_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEBUG, "%s Cannot access to %{public}@ %{public}@", &v22, 0x20u);
  }

  v18 = 0;
LABEL_9:

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)getStringForKey:(id)key category:(id)category default:(id)default
{
  v33 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  categoryCopy = category;
  defaultCopy = default;
  dictionary = [(CSAsset *)self dictionary];
  if (dictionary)
  {
    v12 = dictionary;
    dictionary2 = [(CSAsset *)self dictionary];
    v14 = [dictionary2 objectForKeyedSubscript:categoryCopy];
    if (v14)
    {
      v15 = v14;
      dictionary3 = [(CSAsset *)self dictionary];
      v17 = [dictionary3 objectForKeyedSubscript:categoryCopy];
      v18 = [v17 objectForKeyedSubscript:keyCopy];

      if (v18)
      {
        dictionary4 = [(CSAsset *)self dictionary];
        v20 = [dictionary4 objectForKeyedSubscript:categoryCopy];
        v21 = [v20 objectForKeyedSubscript:keyCopy];

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v22 = CSLogContextFacilityCoreSpeech;
  v21 = defaultCopy;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    v25 = 136315906;
    v26 = "[CSAsset getStringForKey:category:default:]";
    v27 = 2114;
    v28 = categoryCopy;
    v29 = 2114;
    v30 = keyCopy;
    v31 = 2114;
    v32 = defaultCopy;
    _os_log_debug_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_DEBUG, "%s Cannot access to %{public}@ %{public}@ using default value=%{public}@", &v25, 0x2Au);
    v21 = defaultCopy;
  }

LABEL_8:

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)getNumberForKey:(id)key category:(id)category default:(id)default
{
  v33 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  categoryCopy = category;
  defaultCopy = default;
  dictionary = [(CSAsset *)self dictionary];
  if (dictionary)
  {
    v12 = dictionary;
    dictionary2 = [(CSAsset *)self dictionary];
    v14 = [dictionary2 objectForKeyedSubscript:categoryCopy];
    if (v14)
    {
      v15 = v14;
      dictionary3 = [(CSAsset *)self dictionary];
      v17 = [dictionary3 objectForKeyedSubscript:categoryCopy];
      v18 = [v17 objectForKeyedSubscript:keyCopy];

      if (v18)
      {
        dictionary4 = [(CSAsset *)self dictionary];
        v20 = [dictionary4 objectForKeyedSubscript:categoryCopy];
        v21 = [v20 objectForKeyedSubscript:keyCopy];

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v22 = CSLogContextFacilityCoreSpeech;
  v21 = defaultCopy;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    v25 = 136315906;
    v26 = "[CSAsset getNumberForKey:category:default:]";
    v27 = 2114;
    v28 = categoryCopy;
    v29 = 2114;
    v30 = keyCopy;
    v31 = 2114;
    v32 = defaultCopy;
    _os_log_debug_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_DEBUG, "%s Cannot access to %{public}@ %{public}@ using default value=%{public}@", &v25, 0x2Au);
    v21 = defaultCopy;
  }

LABEL_8:

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

- (CSAsset)initWithResourcePath:(id)path configFile:(id)file configVersion:(id)version assetProvderType:(unint64_t)type assetType:(unint64_t)assetType assetVariant:(unint64_t)variant identity:(id)identity assistantLanguageCode:(id)self0 uafAssetVersion:(id)self1
{
  v40 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  fileCopy = file;
  versionCopy = version;
  identityCopy = identity;
  codeCopy = code;
  assetVersionCopy = assetVersion;
  v35.receiver = self;
  v35.super_class = CSAsset;
  v18 = [(CSAsset *)&v35 init];
  if (!v18)
  {
    goto LABEL_7;
  }

  v31 = versionCopy;
  v19 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v37 = "[CSAsset initWithResourcePath:configFile:configVersion:assetProvderType:assetType:assetVariant:identity:assistantLanguageCode:uafAssetVersion:]";
    v38 = 2114;
    v39 = pathCopy;
    _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v21 = [(NSString *)pathCopy stringByAppendingPathComponent:fileCopy];
  if ([defaultManager fileExistsAtPath:pathCopy] && (objc_msgSend(defaultManager, "fileExistsAtPath:", v21) & 1) != 0)
  {
    objc_storeStrong(&v18->_configVersion, version);
    objc_storeStrong(&v18->_resourcePath, path);
    path = v18->_path;
    v18->_path = v21;
    v23 = v21;

    v18->_assetProvider = type;
    v18->_assetType = assetType;
    objc_storeStrong(&v18->_identity, identity);
    objc_storeStrong(&v18->_assistantLanguageCode, code);
    v18->_assetVariant = variant;
    objc_storeStrong(&v18->_uafAssetVersion, assetVersion);

    [(CSAsset *)v18 _updateAssetVariantIfNeeded];
    versionCopy = v31;
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
  versionCopy = v31;
LABEL_11:

  v26 = *MEMORY[0x1E69E9840];
  return v24;
}

+ (BOOL)isLeftConfigVersion:(id)version newerThanRightConfigVersion:(id)configVersion
{
  v31 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  configVersionCopy = configVersion;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v26 = "+[CSAsset isLeftConfigVersion:newerThanRightConfigVersion:]";
    v27 = 2114;
    v28 = versionCopy;
    v29 = 2114;
    v30 = configVersionCopy;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Comparing %{public}@ with %{public}@", buf, 0x20u);
  }

  v8 = [configVersionCopy componentsSeparatedByString:@"."];
  if ([v8 count] > 2)
  {
    v11 = [versionCopy componentsSeparatedByString:@"."];
    if ([v11 count] > 2)
    {
      v13 = [v11 objectAtIndexedSubscript:0];
      v14 = [v8 objectAtIndexedSubscript:0];
      if ([v13 isEqualToString:v14])
      {
        v15 = [v8 objectAtIndexedSubscript:1];
        v16 = [v11 objectAtIndexedSubscript:1];
        integerValue = [v16 integerValue];
        if (integerValue == [v15 integerValue])
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
          integerValue2 = [v16 integerValue];
          v10 = integerValue2 > [v15 integerValue];
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
        v28 = versionCopy;
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
      v28 = configVersionCopy;
      _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, "%s Invalid rightConfig syntax : %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)decodeJson:(id)json
{
  v23 = *MEMORY[0x1E69E9840];
  jsonCopy = json;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:jsonCopy];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:jsonCopy];
    if (!v6)
    {
      v14 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "+[CSAsset decodeJson:]";
        v21 = 2114;
        v22 = jsonCopy;
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
        localizedDescription = [v8 localizedDescription];
        *buf = 136315394;
        v20 = "+[CSAsset decodeJson:]";
        v21 = 2114;
        v22 = localizedDescription;
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
    v22 = jsonCopy;
    _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s Configuration file is not exists : %{public}@", buf, 0x16u);
  }

  v13 = 0;
LABEL_19:

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (unint64_t)parseCompatibilityFromConfigVersion:(id)version
{
  v3 = [version componentsSeparatedByString:@"."];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)overrideAssetForVoiceTrigger
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[CSFPreferences sharedPreferences];
  fakeVoiceTriggerAssetPath = [v2 fakeVoiceTriggerAssetPath];

  stringByDeletingLastPathComponent = [fakeVoiceTriggerAssetPath stringByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:fakeVoiceTriggerAssetPath];

  if (v6)
  {
    v7 = [CSAsset assetForAssetType:0 resourcePath:stringByDeletingLastPathComponent configVersion:@"override-asset" assetProvider:2];
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
  fallBackAssetResourcePath = [self fallBackAssetResourcePath];
  v3 = [CSAsset alloc];
  v4 = [fallBackAssetResourcePath stringByAppendingPathComponent:@"iOS"];
  v5 = [(CSAsset *)v3 initWithResourcePath:v4 configFile:@"corespeech.json" configVersion:@"defaultFallback" assetProvderType:0 assetType:0];

  return v5;
}

+ (id)defaultFallBackAssetForAdBlocker
{
  v3 = [CSAsset alloc];
  fallBackAssetResourcePath = [self fallBackAssetResourcePath];
  v5 = [(CSAsset *)v3 initWithResourcePath:fallBackAssetResourcePath configFile:@"adBlockerPayload.bin" configVersion:@"defaultFallbackAdBlocker" assetProvderType:0 assetType:4];

  return v5;
}

+ (id)defaultFallBackAssetForHearst
{
  v3 = [CSAsset alloc];
  fallBackAssetResourcePath = [self fallBackAssetResourcePath];
  v5 = [(CSAsset *)v3 initWithResourcePath:fallBackAssetResourcePath configFile:@"corespeech.json" configVersion:@"defaultFallbackHearst" assetProvderType:0 assetType:0];

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

+ (id)assetForAssetType:(unint64_t)type resourcePath:(id)path configVersion:(id)version assetProvider:(unint64_t)provider assetVariant:(unint64_t)variant identity:(id)identity assistantLanguageCode:(id)code uafAssetVersion:(id)self0
{
  assetVersionCopy = assetVersion;
  codeCopy = code;
  identityCopy = identity;
  versionCopy = version;
  pathCopy = path;
  v21 = [CSAsset getAssetFileForAssetType:type resourcePath:pathCopy assetProvider:provider];
  v22 = [[CSAsset alloc] initWithResourcePath:pathCopy configFile:v21 configVersion:versionCopy assetProvderType:provider assetType:type assetVariant:variant identity:identityCopy assistantLanguageCode:codeCopy uafAssetVersion:assetVersionCopy];

  return v22;
}

+ (id)getAssetFileForAssetType:(unint64_t)type resourcePath:(id)path assetProvider:(unint64_t)provider
{
  pathCopy = path;
  firstObject = 0;
  if (type <= 3)
  {
    if (type > 1)
    {
      v9 = @"speakerRecognition.json";
      if (type != 3)
      {
        v9 = 0;
      }

      if (type == 2)
      {
        firstObject = @"assets.json";
      }

      else
      {
        firstObject = v9;
      }

      goto LABEL_27;
    }

    if (type)
    {
      if (type == 1)
      {
        firstObject = +[CSAsset hybridEndpointerAssetFilename];
      }

      goto LABEL_27;
    }

LABEL_17:
    firstObject = @"corespeech.json";
    goto LABEL_27;
  }

  if (type <= 5)
  {
    if (type == 4)
    {
      if (provider == 1)
      {
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v11 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:0];

        if (v11 && [v11 count])
        {
          firstObject = [v11 firstObject];
        }

        else
        {
          firstObject = 0;
        }
      }

      else
      {
        firstObject = @"adBlockerPayload.bin";
      }

      goto LABEL_27;
    }

    goto LABEL_17;
  }

  switch(type)
  {
    case 6uLL:
      firstObject = @"mitigation.json";
      break;
    case 8uLL:
      firstObject = @"repromptMetadata.json";
      break;
    case 7uLL:
      goto LABEL_17;
  }

LABEL_27:

  return firstObject;
}

+ (id)getConfigFileNameForAssetType:(unint64_t)type
{
  v5 = 0;
  if (type <= 3)
  {
    if (type > 1)
    {
      v7 = @"speakerRecognition.json";
      if (type != 3)
      {
        v7 = 0;
      }

      if (type == 2)
      {
        v5 = @"assets.json";
      }

      else
      {
        v5 = v7;
      }

      return v5;
    }

    if (type)
    {
      if (type != 1)
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

  if (type <= 5)
  {
    if (type == 4)
    {
      v5 = @"adBlockerPayload.bin";

      return v5;
    }

    goto LABEL_24;
  }

  switch(type)
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
  resourcePath = [(CSAsset *)self resourcePath];

  if (resourcePath)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    nldaConfigFile = [(CSAsset *)self nldaConfigFile];
    [v4 addObject:nldaConfigFile];

    v6 = [(CSAsset *)self nldaConfigFileForCategory:@"AttSiriCC"];
    [v4 addObject:v6];

    v7 = [(CSAsset *)self nldaConfigFileForCategory:@"AttSiriHS"];
    [v4 addObject:v7];

    v8 = [(CSAsset *)self nldaConfigFileForCategory:@"AttSiriJS"];
    [v4 addObject:v8];

    allObjects = [v4 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (id)getAllMitigationConfigFiles
{
  resourcePath = [(CSAsset *)self resourcePath];

  if (resourcePath)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    mitigatonConfigFile = [(CSAsset *)self mitigatonConfigFile];
    [v4 addObject:mitigatonConfigFile];

    v6 = [(CSAsset *)self mitigationConfigFileForCategory:@"AttSiriCC"];
    [v4 addObject:v6];

    v7 = [(CSAsset *)self mitigationConfigFileForCategory:@"AttSiriHS"];
    [v4 addObject:v7];

    v8 = [(CSAsset *)self mitigationConfigFileForCategory:@"AttSiriJS"];
    [v4 addObject:v8];

    allObjects = [v4 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (float)eagerMitigationDurationThreshold
{
  v2 = [(CSAsset *)self getNumberForKey:@"defaultEagerMitigationDurationThreshold" category:@"AttSiri" default:&unk_1F5916B80];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (BOOL)isHSVoiceTrigger:(id)trigger
{
  triggerCopy = trigger;
  v4 = triggerCopy;
  if (triggerCopy)
  {
    v5 = [triggerCopy objectForKeyedSubscript:@"triggeredPhrase"];

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

- (BOOL)isJSVoiceTrigger:(id)trigger
{
  triggerCopy = trigger;
  v4 = triggerCopy;
  if (triggerCopy)
  {
    v5 = [triggerCopy objectForKeyedSubscript:@"triggeredPhrase"];

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

- (id)getCategoryKeyWithRecordCtx:(id)ctx
{
  ctxCopy = ctx;
  activationMetadata = [ctxCopy activationMetadata];
  if ([(CSAsset *)self isHSVoiceTrigger:activationMetadata])
  {
    v6 = @"AttSiriHS";
  }

  else if ([(CSAsset *)self isJSVoiceTrigger:activationMetadata])
  {
    v6 = @"AttSiriJS";
  }

  else if ([ctxCopy isContinuousConversation])
  {
    v6 = @"AttSiriCC";
  }

  else
  {
    v6 = @"AttSiri";
  }

  return v6;
}

- (id)uesConfigFileForCategory:(id)category
{
  categoryCopy = category;
  resourcePath = [(CSAsset *)self resourcePath];
  v6 = [(CSAsset *)self getStringForKey:@"uesConfigFile" category:categoryCopy default:@"uesConfig.json"];

  v7 = [resourcePath stringByAppendingPathComponent:v6];

  return v7;
}

- (id)nldaConfigFileForCategory:(id)category
{
  categoryCopy = category;
  resourcePath = [(CSAsset *)self resourcePath];
  v6 = [(CSAsset *)self getStringForKey:@"nldaConfigFile" category:categoryCopy default:@"nldaConfig.json"];

  v7 = [resourcePath stringByAppendingPathComponent:v6];

  return v7;
}

- (id)mitigationConfigFileForCategory:(id)category
{
  categoryCopy = category;
  resourcePath = [(CSAsset *)self resourcePath];
  v6 = [(CSAsset *)self getStringForKey:@"mitigationModelConfigFile" category:categoryCopy default:@"ouresConfig.json"];

  v7 = [resourcePath stringByAppendingPathComponent:v6];

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
  resourcePath = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"nldaConfigFile" category:@"AttSiri" default:@"nldaConfig.json"];
  v5 = [resourcePath stringByAppendingPathComponent:v4];

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
  resourcePath = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"mitigationModelConfigFile" category:@"AttSiri" default:@"ouresConfig.json"];
  v5 = [resourcePath stringByAppendingPathComponent:v4];

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
  intValue = [v2 intValue];

  return intValue;
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
  resourcePath = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"visualActivityDetectorModelFile" category:@"AttSiri" default:@"vvad.mlmodelc"];
  v5 = [resourcePath stringByAppendingPathComponent:v4];

  return v5;
}

- (NSString)gazeDetectionModelFile
{
  resourcePath = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"gazeDetectionModelFile" category:@"AttSiri" default:@"gazeModel.mlmodelc"];
  v5 = [resourcePath stringByAppendingPathComponent:v4];

  return v5;
}

- (NSString)mimVotingConfigFile
{
  resourcePath = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"mimVotingConfigFile" category:@"AttSiri" default:@"mimConfig.json"];
  v5 = [resourcePath stringByAppendingPathComponent:v4];

  return v5;
}

- (unint64_t)_mapInputOriginFromAssetToCSAudioRecordType:(id)type
{
  v18[6] = *MEMORY[0x1E69E9840];
  typeCopy = type;
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
  v5 = typeCopy;
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

- (id)getRecognizerConfigsFrom:(id)from
{
  v21 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (fromCopy)
  {
    v4 = [CSAsset decodeJson:fromCopy];
    v5 = [CSFModelConfigDecoder getAftmRecognizerRelativeConfigFromConfigDict:v4];
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      stringByDeletingLastPathComponent = [fromCopy stringByDeletingLastPathComponent];
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

            v13 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:{*(*(&v16 + 1) + 8 * i), v16}];
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
  contConvConfigFile = [(CSAsset *)self contConvConfigFile];
  v3 = [CSAsset decodeJson:contConvConfigFile];
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
  contConvConfigFile = [(CSAsset *)self contConvConfigFile];
  v4 = [(CSAsset *)self getRecognizerConfigsFrom:contConvConfigFile];

  return v4;
}

- (NSString)contConvConfigFile
{
  resourcePath = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"contionusConversationConfigFile" category:@"Liminal" default:@"progChecker.json"];
  v5 = [resourcePath stringByAppendingPathComponent:v4];

  return v5;
}

- (BOOL)progCheckerShadowMode
{
  progCheckerConfigFile = [(CSAsset *)self progCheckerConfigFile];
  v3 = [CSAsset decodeJson:progCheckerConfigFile];
  v4 = [v3 objectForKeyedSubscript:@"checkerConfig"];

  if (v4 && ([v4 objectForKeyedSubscript:@"shadowMode"], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 objectForKeyedSubscript:@"shadowMode"];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (NSArray)checkerThresholds
{
  progCheckerConfigFile = [(CSAsset *)self progCheckerConfigFile];
  v3 = [CSAsset decodeJson:progCheckerConfigFile];
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
  progCheckerConfigFile = [(CSAsset *)self progCheckerConfigFile];
  v4 = [CSAsset decodeJson:progCheckerConfigFile];
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
  progCheckerConfigFile = [(CSAsset *)self progCheckerConfigFile];
  v4 = [(CSAsset *)self getRecognizerConfigsFrom:progCheckerConfigFile];

  return v4;
}

- (NSString)progCheckerConfigFile
{
  resourcePath = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"progressiveCheckerConfigFile" category:@"Liminal" default:@"progChecker.json"];
  v5 = [resourcePath stringByAppendingPathComponent:v4];

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
  resourcePath = [(CSAsset *)self resourcePath];
  v4 = [(CSAsset *)self getStringForKey:@"configFileRecognizer" category:@"keywordDetector" default:@"keyword_detector.json"];
  v5 = [resourcePath stringByAppendingPathComponent:v4];

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