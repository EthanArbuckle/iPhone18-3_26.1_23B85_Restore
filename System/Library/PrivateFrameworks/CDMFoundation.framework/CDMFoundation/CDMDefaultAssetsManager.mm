@interface CDMDefaultAssetsManager
+ (id)getAbsolutePathForAssetsRootFolderForAssetDirPath:(id)path;
+ (id)getAbsolutePathForLocalizedAssetsRootFolderForAssetDirPath:(id)path locale:(id)locale;
- (id)getAbsolutePathForServiceAssetFolders:(id)folders assetDirPath:(id)path locale:(id)locale;
- (id)initManager;
@end

@implementation CDMDefaultAssetsManager

- (id)getAbsolutePathForServiceAssetFolders:(id)folders assetDirPath:(id)path locale:(id)locale
{
  v20 = *MEMORY[0x1E69E9840];
  foldersCopy = folders;
  v9 = [CDMDefaultAssetsManager getAbsolutePathForLocalizedAssetsRootFolderForAssetDirPath:path locale:locale];
  v10 = [CDMAssetsUtils findExistFolderInAssetFolders:foldersCopy underBasePath:v9 useFileManager:self->_fileManager];

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

+ (id)getAbsolutePathForLocalizedAssetsRootFolderForAssetDirPath:(id)path locale:(id)locale
{
  localeCopy = locale;
  v6 = [CDMDefaultAssetsManager getAbsolutePathForAssetsRootFolderForAssetDirPath:path];
  v7 = MEMORY[0x1E696AEC0];
  localeIdentifier = [localeCopy localeIdentifier];

  v9 = [v7 stringWithFormat:@"%@%@", localeIdentifier, @".loc"];
  v10 = [v6 stringByAppendingPathComponent:v9];

  return v10;
}

+ (id)getAbsolutePathForAssetsRootFolderForAssetDirPath:(id)path
{
  v12 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    pathCopy = +[CDMUserDefaultsUtils readCustomAssetsRootPath];
  }

  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315394;
    v9 = "+[CDMDefaultAssetsManager getAbsolutePathForAssetsRootFolderForAssetDirPath:]";
    v10 = 2112;
    v11 = pathCopy;
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Asset dir path: %@.", &v8, 0x16u);
  }

  v5 = [pathCopy stringByAppendingPathComponent:@"assets"];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end