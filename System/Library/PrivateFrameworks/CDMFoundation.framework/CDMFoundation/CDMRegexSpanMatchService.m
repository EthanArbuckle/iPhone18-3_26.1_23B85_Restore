@interface CDMRegexSpanMatchService
- (id)setupSpanMatcher:(id)a3;
@end

@implementation CDMRegexSpanMatchService

- (id)setupSpanMatcher:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [a3 dynamicConfig];
  v4 = [v3 getAssetForFactorName:@"com.apple.siri.nl.voc"];

  v5 = [v4 getAssetPath];
  if (v5)
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[CDMRegexSpanMatchService setupSpanMatcher:]";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s Initializing RegexSpanMatcher from path %@", &v10, 0x16u);
    }

    v7 = [[CDMRegexSpanMatcher alloc] initWithCachePath:v5];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end