@interface CDMNLAssetCollection
+ (id)assetCollectionWithAssetPaths:(id)a3 withLanguageCode:(id)a4;
- (id)_initWithAssetPaths:(id)a3 withLanguageCode:(id)a4;
- (id)getAssetBundlePathForFactorName:(id)a3;
- (id)getAssetForFactorName:(id)a3;
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

- (id)getAssetBundlePathForFactorName:(id)a3
{
  assetPaths = self->_assetPaths;
  if (assetPaths)
  {
    v4 = [(NSDictionary *)assetPaths objectForKey:a3];
    v5 = [v4 getAssetPath];
    if (v5)
    {
      v6 = [MEMORY[0x1E696AAE8] bundleWithPath:v5];
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

- (id)getAssetForFactorName:(id)a3
{
  assetPaths = self->_assetPaths;
  if (assetPaths)
  {
    assetPaths = [assetPaths objectForKey:a3];
    v3 = vars8;
  }

  return assetPaths;
}

- (id)_initWithAssetPaths:(id)a3 withLanguageCode:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CDMNLAssetCollection;
  v9 = [(CDMNLAssetCollection *)&v13 init];
  v10 = v9;
  if (v7)
  {
    objc_storeStrong(&v9->_assetPaths, a3);
  }

  languageCode = v10->_languageCode;
  v10->_languageCode = v8;

  return v10;
}

+ (id)assetCollectionWithAssetPaths:(id)a3 withLanguageCode:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CDMNLAssetCollection alloc] _initWithAssetPaths:v6 withLanguageCode:v5];

  return v7;
}

@end