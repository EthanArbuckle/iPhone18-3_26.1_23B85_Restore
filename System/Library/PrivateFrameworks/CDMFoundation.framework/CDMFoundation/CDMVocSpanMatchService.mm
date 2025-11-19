@interface CDMVocSpanMatchService
- (id)setupSpanMatcher:(id)a3;
@end

@implementation CDMVocSpanMatchService

- (id)setupSpanMatcher:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a3 dynamicConfig];
  v4 = [v3 getAssetForFactorName:@"com.apple.siri.nl.voc"];

  v5 = [v4 getAssetPath];
  if (v5)
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v16 = 136315394;
      v17 = "[CDMVocSpanMatchService setupSpanMatcher:]";
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s Initializing VocSpanMatcher from path %@", &v16, 0x16u);
    }

    v7 = [v4 getAssetMetadata];
    v8 = v7;
    if (v7 && ([v7 objectForKeyedSubscript:@"normalizeWords"], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      v10 = [v8 objectForKeyedSubscript:@"normalizeWords"];
      v11 = [v10 BOOLValue];

      v12 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315394;
        v17 = "[CDMVocSpanMatchService setupSpanMatcher:]";
        v18 = 1024;
        LODWORD(v19) = v11;
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

      v11 = 0;
    }

    v13 = [[CDMVocTrieProtoSpanMatcher alloc] initWithVocTriePath:v5 useNormalizedValues:v11];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end