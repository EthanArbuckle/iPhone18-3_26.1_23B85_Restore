@interface CDMVocSpanMatchService
- (id)setupSpanMatcher:(id)matcher;
@end

@implementation CDMVocSpanMatchService

- (id)setupSpanMatcher:(id)matcher
{
  v20 = *MEMORY[0x1E69E9840];
  dynamicConfig = [matcher dynamicConfig];
  v4 = [dynamicConfig getAssetForFactorName:@"com.apple.siri.nl.voc"];

  getAssetPath = [v4 getAssetPath];
  if (getAssetPath)
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v16 = 136315394;
      v17 = "[CDMVocSpanMatchService setupSpanMatcher:]";
      v18 = 2112;
      v19 = getAssetPath;
      _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s Initializing VocSpanMatcher from path %@", &v16, 0x16u);
    }

    getAssetMetadata = [v4 getAssetMetadata];
    v8 = getAssetMetadata;
    if (getAssetMetadata && ([getAssetMetadata objectForKeyedSubscript:@"normalizeWords"], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      v10 = [v8 objectForKeyedSubscript:@"normalizeWords"];
      bOOLValue = [v10 BOOLValue];

      v12 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315394;
        v17 = "[CDMVocSpanMatchService setupSpanMatcher:]";
        v18 = 1024;
        LODWORD(v19) = bOOLValue;
        _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s Voc asset sets normalizeWords to %d", &v16, 0x12u);
      }
    }

    else
    {
      v12 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v16 = 136315138;
        v17 = "[CDMVocSpanMatchService setupSpanMatcher:]";
        _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s [WARN]: Voc asset does not specify normalizeWords configuration", &v16, 0xCu);
      }

      bOOLValue = 0;
    }

    v13 = [[CDMVocTrieProtoSpanMatcher alloc] initWithVocTriePath:getAssetPath useNormalizedValues:bOOLValue];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end