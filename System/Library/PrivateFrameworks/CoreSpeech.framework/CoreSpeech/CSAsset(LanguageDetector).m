@interface CSAsset(LanguageDetector)
- (id)languageDetectorConfigFile;
- (id)languageDetectorSupportedLocale;
- (id)spgConfigFile;
- (id)startOfSpeechDetectorConfigFile;
@end

@implementation CSAsset(LanguageDetector)

- (id)spgConfigFile
{
  v1 = [a1 resourcePath];
  v2 = [v1 stringByAppendingPathComponent:@"SPG.json"];

  return v2;
}

- (id)startOfSpeechDetectorConfigFile
{
  v1 = [a1 resourcePath];
  v2 = [v1 stringByAppendingPathComponent:@"sos-options.json"];

  return v2;
}

- (id)languageDetectorConfigFile
{
  v2 = [a1 resourcePath];
  v3 = [a1 dictionary];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [a1 dictionary];
  v6 = [v5 objectForKeyedSubscript:@"detector-config"];
  if (!v6)
  {

    v11 = @"detector.json";
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [a1 dictionary];
  v9 = [v8 objectForKeyedSubscript:@"detector-config"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_5:
    v11 = @"detector.json";
    goto LABEL_8;
  }

  v4 = [a1 dictionary];
  v11 = [v4 objectForKeyedSubscript:@"detector-config"];
LABEL_7:

LABEL_8:
  v12 = [v2 stringByAppendingPathComponent:v11];

  return v12;
}

- (id)languageDetectorSupportedLocale
{
  v2 = [a1 dictionary];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  v4 = [a1 dictionary];
  v5 = [v4 objectForKeyedSubscript:@"supported-locales"];
  if (!v5)
  {

    v10 = 0;
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [a1 dictionary];
  v8 = [v7 objectForKeyedSubscript:@"supported-locales"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_8;
  }

  v3 = [a1 dictionary];
  v10 = [v3 objectForKeyedSubscript:@"supported-locales"];
LABEL_7:

LABEL_8:

  return v10;
}

@end