@interface CDMDateTimeSpanMatchService
- (id)setupSpanMatcher:(id)matcher;
@end

@implementation CDMDateTimeSpanMatchService

- (id)setupSpanMatcher:(id)matcher
{
  v22 = *MEMORY[0x1E69E9840];
  matcherCopy = matcher;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    dynamicConfig = [matcherCopy dynamicConfig];
    languageCode = [dynamicConfig languageCode];
    v18 = 136315394;
    v19 = "[CDMDateTimeSpanMatchService setupSpanMatcher:]";
    v20 = 2112;
    v21 = languageCode;
    _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_INFO, "%s Initializing CDMDateTimeSpanMatcher for locale %@", &v18, 0x16u);
  }

  dynamicConfig2 = [matcherCopy dynamicConfig];
  v8 = [dynamicConfig2 getAssetBundlePathForFactorName:@"com.apple.siri.nl.data_detectors"];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E695DF58]);
    dynamicConfig3 = [matcherCopy dynamicConfig];
    languageCode2 = [dynamicConfig3 languageCode];
    v12 = [v9 initWithLocaleIdentifier:languageCode2];

    v13 = [CDMDateTimeProtoSpanMatcher alloc];
    resourcePath = [v8 resourcePath];
    v15 = [(CDMDateTimeProtoSpanMatcher *)v13 initWithDataDetectorPath:resourcePath locale:v12];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end