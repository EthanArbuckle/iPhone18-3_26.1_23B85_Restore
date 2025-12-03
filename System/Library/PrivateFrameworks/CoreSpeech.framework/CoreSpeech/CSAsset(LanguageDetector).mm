@interface CSAsset(LanguageDetector)
- (id)languageDetectorConfigFile;
- (id)languageDetectorSupportedLocale;
- (id)spgConfigFile;
- (id)startOfSpeechDetectorConfigFile;
@end

@implementation CSAsset(LanguageDetector)

- (id)spgConfigFile
{
  resourcePath = [self resourcePath];
  v2 = [resourcePath stringByAppendingPathComponent:@"SPG.json"];

  return v2;
}

- (id)startOfSpeechDetectorConfigFile
{
  resourcePath = [self resourcePath];
  v2 = [resourcePath stringByAppendingPathComponent:@"sos-options.json"];

  return v2;
}

- (id)languageDetectorConfigFile
{
  resourcePath = [self resourcePath];
  dictionary = [self dictionary];
  if (!dictionary)
  {
    goto LABEL_5;
  }

  dictionary4 = dictionary;
  dictionary2 = [self dictionary];
  v6 = [dictionary2 objectForKeyedSubscript:@"detector-config"];
  if (!v6)
  {

    v11 = @"detector.json";
    goto LABEL_7;
  }

  v7 = v6;
  dictionary3 = [self dictionary];
  v9 = [dictionary3 objectForKeyedSubscript:@"detector-config"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_5:
    v11 = @"detector.json";
    goto LABEL_8;
  }

  dictionary4 = [self dictionary];
  v11 = [dictionary4 objectForKeyedSubscript:@"detector-config"];
LABEL_7:

LABEL_8:
  v12 = [resourcePath stringByAppendingPathComponent:v11];

  return v12;
}

- (id)languageDetectorSupportedLocale
{
  dictionary = [self dictionary];
  if (!dictionary)
  {
    goto LABEL_5;
  }

  dictionary4 = dictionary;
  dictionary2 = [self dictionary];
  v5 = [dictionary2 objectForKeyedSubscript:@"supported-locales"];
  if (!v5)
  {

    v10 = 0;
    goto LABEL_7;
  }

  v6 = v5;
  dictionary3 = [self dictionary];
  v8 = [dictionary3 objectForKeyedSubscript:@"supported-locales"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_8;
  }

  dictionary4 = [self dictionary];
  v10 = [dictionary4 objectForKeyedSubscript:@"supported-locales"];
LABEL_7:

LABEL_8:

  return v10;
}

@end