@interface CDMRegexSpanMatchService
- (id)setupSpanMatcher:(id)matcher;
@end

@implementation CDMRegexSpanMatchService

- (id)setupSpanMatcher:(id)matcher
{
  v14 = *MEMORY[0x1E69E9840];
  dynamicConfig = [matcher dynamicConfig];
  v4 = [dynamicConfig getAssetForFactorName:@"com.apple.siri.nl.voc"];

  getAssetPath = [v4 getAssetPath];
  if (getAssetPath)
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[CDMRegexSpanMatchService setupSpanMatcher:]";
      v12 = 2112;
      v13 = getAssetPath;
      _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s Initializing RegexSpanMatcher from path %@", &v10, 0x16u);
    }

    v7 = [[CDMRegexSpanMatcher alloc] initWithCachePath:getAssetPath];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end