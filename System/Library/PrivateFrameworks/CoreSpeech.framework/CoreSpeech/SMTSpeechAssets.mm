@interface SMTSpeechAssets
+ (void)initialize;
- (id)fetchAssetPathForAssetConfig:(id)config outError:(id *)error;
- (id)fetchAssetPathForInstalledLanguage:(id)language outError:(id *)error;
@end

@implementation SMTSpeechAssets

- (id)fetchAssetPathForAssetConfig:(id)config outError:(id *)error
{
  configCopy = config;
  language = [configCopy language];
  v7 = +[SFEntitledAssetManager sharedInstance];
  v8 = [v7 installedAssetWithConfig:configCopy];

  if (v8 && [v8 length])
  {
    v9 = v8;
  }

  else
  {
    if (error)
    {
      nSLocalizedDescriptionKey = [NSString stringWithFormat:@"No asset found for language=%@", language, NSLocalizedDescriptionKey];
      v14 = nSLocalizedDescriptionKey;
      v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      *error = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:102 userInfo:v11];
    }

    v9 = &stru_100039238;
  }

  return v9;
}

- (id)fetchAssetPathForInstalledLanguage:(id)language outError:(id *)error
{
  languageCopy = language;
  v7 = [[SFEntitledAssetConfig alloc] initWithLanguage:languageCopy assetType:3];

  v8 = [(SMTSpeechAssets *)self fetchAssetPathForAssetConfig:v7 outError:error];

  return v8;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_10003FF08 = os_log_create("com.apple.speech.speechmodeltraining", "SMTSpeechAssets");

    _objc_release_x1();
  }
}

@end