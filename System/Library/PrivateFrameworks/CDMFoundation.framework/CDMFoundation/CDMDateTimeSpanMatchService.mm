@interface CDMDateTimeSpanMatchService
- (id)setupSpanMatcher:(id)a3;
@end

@implementation CDMDateTimeSpanMatchService

- (id)setupSpanMatcher:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 dynamicConfig];
    v6 = [v5 languageCode];
    v18 = 136315394;
    v19 = "[CDMDateTimeSpanMatchService setupSpanMatcher:]";
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_INFO, "%s Initializing CDMDateTimeSpanMatcher for locale %@", &v18, 0x16u);
  }

  v7 = [v3 dynamicConfig];
  v8 = [v7 getAssetBundlePathForFactorName:@"com.apple.siri.nl.data_detectors"];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E695DF58]);
    v10 = [v3 dynamicConfig];
    v11 = [v10 languageCode];
    v12 = [v9 initWithLocaleIdentifier:v11];

    v13 = [CDMDateTimeProtoSpanMatcher alloc];
    v14 = [v8 resourcePath];
    v15 = [(CDMDateTimeProtoSpanMatcher *)v13 initWithDataDetectorPath:v14 locale:v12];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end