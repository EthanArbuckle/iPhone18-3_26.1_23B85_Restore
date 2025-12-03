@interface CDMNLAssetCollection
+ (id)assetCollectionWithAssetPaths:(id)paths withLanguageCode:(id)code;
- (id)_initWithAssetPaths:(id)paths withLanguageCode:(id)code;
- (id)getAssetBundlePathForFactorName:(id)name;
- (id)getAssetForFactorName:(id)name;
- (id)getAssetPaths;
@end

@implementation CDMNLAssetCollection

- (id)getAssetPaths
{
  v9 = *MEMORY[0x1E69E9840];
  assetPaths = self->_assetPaths;
  if (!assetPaths)
  {
    v4 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[CDMNLAssetCollection getAssetPaths]";
      _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_INFO, "%s [WARN]: Nil Asset Paths", &v7, 0xCu);
    }

    assetPaths = self->_assetPaths;
  }

  v5 = *MEMORY[0x1E69E9840];

  return assetPaths;
}

- (id)getAssetBundlePathForFactorName:(id)name
{
  assetPaths = self->_assetPaths;
  if (assetPaths)
  {
    v4 = [(NSDictionary *)assetPaths objectForKey:name];
    getAssetPath = [v4 getAssetPath];
    if (getAssetPath)
    {
      v6 = [MEMORY[0x1E696AAE8] bundleWithPath:getAssetPath];
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

  return v6;
}

- (id)getAssetForFactorName:(id)name
{
  assetPaths = self->_assetPaths;
  if (assetPaths)
  {
    assetPaths = [assetPaths objectForKey:name];
    v3 = vars8;
  }

  return assetPaths;
}

- (id)_initWithAssetPaths:(id)paths withLanguageCode:(id)code
{
  pathsCopy = paths;
  codeCopy = code;
  v13.receiver = self;
  v13.super_class = CDMNLAssetCollection;
  v9 = [(CDMNLAssetCollection *)&v13 init];
  v10 = v9;
  if (pathsCopy)
  {
    objc_storeStrong(&v9->_assetPaths, paths);
  }

  languageCode = v10->_languageCode;
  v10->_languageCode = codeCopy;

  return v10;
}

+ (id)assetCollectionWithAssetPaths:(id)paths withLanguageCode:(id)code
{
  codeCopy = code;
  pathsCopy = paths;
  v7 = [[CDMNLAssetCollection alloc] _initWithAssetPaths:pathsCopy withLanguageCode:codeCopy];

  return v7;
}

@end