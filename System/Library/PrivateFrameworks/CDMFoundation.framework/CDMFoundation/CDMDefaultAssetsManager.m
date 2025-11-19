@interface CDMDefaultAssetsManager
+ (id)getAbsolutePathForAssetsRootFolderForAssetDirPath:(id)a3;
+ (id)getAbsolutePathForLocalizedAssetsRootFolderForAssetDirPath:(id)a3 locale:(id)a4;
- (id)getAbsolutePathForServiceAssetFolders:(id)a3 assetDirPath:(id)a4 locale:(id)a5;
- (id)initManager;
@end

@implementation CDMDefaultAssetsManager

- (id)getAbsolutePathForServiceAssetFolders:(id)a3 assetDirPath:(id)a4 locale:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [CDMDefaultAssetsManager getAbsolutePathForLocalizedAssetsRootFolderForAssetDirPath:a4 locale:a5];
  v10 = [CDMAssetsUtils findExistFolderInAssetFolders:v8 underBasePath:v9 useFileManager:self->_fileManager];

  if (v10)
  {
    v11 = [v9 stringByAppendingPathComponent:v10];
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315394;
      v17 = "[CDMDefaultAssetsManager getAbsolutePathForServiceAssetFolders:assetDirPath:locale:]";
      v18 = 2112;
      v19 = v11;
      _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s Asset is available under custom asset path %@.", &v16, 0x16u);
    }

    v13 = [[CustomAsset alloc] initWithPath:v11];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)initManager
{
  v11 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CDMDefaultAssetsManager;
  v2 = [(CDMDefaultAssetsManager *)&v8 init];
  if (v2)
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[CDMDefaultAssetsManager initManager]";
      _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, "%s Initialize CDMDefaultAssetsManager", buf, 0xCu);
    }

    v4 = objc_alloc_init(MEMORY[0x1E696AC08]);
    fileManager = v2->_fileManager;
    v2->_fileManager = v4;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (id)getAbsolutePathForLocalizedAssetsRootFolderForAssetDirPath:(id)a3 locale:(id)a4
{
  v5 = a4;
  v6 = [CDMDefaultAssetsManager getAbsolutePathForAssetsRootFolderForAssetDirPath:a3];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [v5 localeIdentifier];

  v9 = [v7 stringWithFormat:@"%@%@", v8, @".loc"];
  v10 = [v6 stringByAppendingPathComponent:v9];

  return v10;
}

+ (id)getAbsolutePathForAssetsRootFolderForAssetDirPath:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v3 = +[CDMUserDefaultsUtils readCustomAssetsRootPath];
  }

  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315394;
    v9 = "+[CDMDefaultAssetsManager getAbsolutePathForAssetsRootFolderForAssetDirPath:]";
    v10 = 2112;
    v11 = v3;
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Asset dir path: %@.", &v8, 0x16u);
  }

  v5 = [v3 stringByAppendingPathComponent:@"assets"];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end