@interface CSRemoteAssetManager
+ (id)sharedManager;
- (BOOL)_loadFromJsonFile:(id)file;
- (BOOL)_loadPreinstalledAssetMetaIfNeeded;
- (BOOL)_writeToJsonFile:(id)file;
- (CSRemoteAssetManager)init;
- (id)_loadJsonDataFromFile:(id)file;
- (id)_remoteAssetMetaPath;
- (id)assetConfigVersionForAssetType:(unint64_t)type;
- (id)assetForCurrentLanguageOfType:(unint64_t)type;
- (id)assetHashForAssetType:(unint64_t)type;
- (id)resourcePathForAssetType:(unint64_t)type;
- (void)_setAssetsInfoFromMetaData:(id)data;
- (void)addObserver:(id)observer forAssetType:(unint64_t)type;
- (void)removeObserver:(id)observer forAssetType:(unint64_t)type;
- (void)setLanguageCode:(id)code resourcePath:(id)path configVersion:(id)version assetHash:(id)hash assetType:(unint64_t)type;
@end

@implementation CSRemoteAssetManager

- (void)removeObserver:(id)observer forAssetType:(unint64_t)type
{
  observerCopy = observer;
  v7 = observerCopy;
  if (!type)
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__CSRemoteAssetManager_removeObserver_forAssetType___block_invoke;
    v9[3] = &unk_1E865C970;
    v9[4] = self;
    v10 = observerCopy;
    dispatch_sync(queue, v9);
  }
}

uint64_t __52__CSRemoteAssetManager_removeObserver_forAssetType___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 48))
  {
    return [*(*(result + 32) + 48) removeObject:*(result + 40)];
  }

  return result;
}

- (void)addObserver:(id)observer forAssetType:(unint64_t)type
{
  observerCopy = observer;
  v7 = observerCopy;
  if (!type)
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__CSRemoteAssetManager_addObserver_forAssetType___block_invoke;
    v9[3] = &unk_1E865C970;
    v9[4] = self;
    v10 = observerCopy;
    dispatch_sync(queue, v9);
  }
}

uint64_t __49__CSRemoteAssetManager_addObserver_forAssetType___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(*(a1 + 32) + 48);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (id)resourcePathForAssetType:(unint64_t)type
{
  if (type)
  {
    v4 = 0;
  }

  else
  {
    v4 = self->_resourcePath;
  }

  return v4;
}

- (id)assetHashForAssetType:(unint64_t)type
{
  if (type)
  {
    v4 = 0;
  }

  else
  {
    v4 = self->_assetHash;
  }

  return v4;
}

- (id)assetConfigVersionForAssetType:(unint64_t)type
{
  if (type)
  {
    v4 = 0;
  }

  else
  {
    v4 = self->_configVersion;
  }

  return v4;
}

- (void)setLanguageCode:(id)code resourcePath:(id)path configVersion:(id)version assetHash:(id)hash assetType:(unint64_t)type
{
  v36 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  pathCopy = path;
  versionCopy = version;
  hashCopy = hash;
  v16 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v27 = "[CSRemoteAssetManager setLanguageCode:resourcePath:configVersion:assetHash:assetType:]";
    v28 = 2114;
    v29 = codeCopy;
    v30 = 2114;
    v31 = pathCopy;
    v32 = 2114;
    v33 = versionCopy;
    v34 = 2114;
    v35 = hashCopy;
    _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_DEFAULT, "%s LanguageCode : %{public}@, resourcePath : %{public}@, configVersion : %{public}@, assetHash : %{public}@", buf, 0x34u);
  }

  if (!type)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__CSRemoteAssetManager_setLanguageCode_resourcePath_configVersion_assetHash_assetType___block_invoke;
    block[3] = &unk_1E865C948;
    block[4] = self;
    v22 = codeCopy;
    v23 = pathCopy;
    v24 = versionCopy;
    v25 = hashCopy;
    dispatch_sync(queue, block);
    v18 = self->_queue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __87__CSRemoteAssetManager_setLanguageCode_resourcePath_configVersion_assetHash_assetType___block_invoke_2;
    v20[3] = &unk_1E865CB68;
    v20[4] = self;
    dispatch_async(v18, v20);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __87__CSRemoteAssetManager_setLanguageCode_resourcePath_configVersion_assetHash_assetType___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 48));
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 56));
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 64));
  v2 = *(a1 + 32);
  v3 = [v2 _remoteAssetMetaPath];
  [v2 _writeToJsonFile:v3];
}

void __87__CSRemoteAssetManager_setLanguageCode_resourcePath_configVersion_assetHash_assetType___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 48);
  if (v1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v8 CSRemoteAssetManagerDidDownloadNewAsset:{*(a1 + 32), v10}];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_loadJsonDataFromFile:(id)file
{
  v23 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:fileCopy];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:fileCopy];
    if (!v6)
    {
      v14 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "[CSRemoteAssetManager _loadJsonDataFromFile:]";
        v21 = 2114;
        v22 = fileCopy;
        _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s Cannot read configuration file : %{public}@", buf, 0x16u);
      }

      v13 = 0;
      goto LABEL_18;
    }

    v18 = 0;
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:&v18];
    v8 = v18;
    if (v8)
    {
      v9 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        localizedDescription = [v8 localizedDescription];
        *buf = 136315394;
        v20 = "[CSRemoteAssetManager _loadJsonDataFromFile:]";
        v21 = 2114;
        v22 = localizedDescription;
        _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Cannot decode configuration json file : %{public}@", buf, 0x16u);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v7;
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }

      v15 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "[CSRemoteAssetManager _loadJsonDataFromFile:]";
        _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s Configuration json file is not expected format", buf, 0xCu);
      }
    }

    v13 = 0;
    goto LABEL_17;
  }

  v12 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[CSRemoteAssetManager _loadJsonDataFromFile:]";
    v21 = 2114;
    v22 = fileCopy;
    _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s Remote asset file is not exists : %{public}@", buf, 0x16u);
  }

  v13 = 0;
LABEL_19:

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)_setAssetsInfoFromMetaData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy objectForKeyedSubscript:@"languageCode"];
  currentLanguageCode = self->_currentLanguageCode;
  self->_currentLanguageCode = v5;

  v7 = [dataCopy objectForKeyedSubscript:@"resourcePath"];
  resourcePath = self->_resourcePath;
  self->_resourcePath = v7;

  v9 = [dataCopy objectForKeyedSubscript:@"configVersion"];
  configVersion = self->_configVersion;
  self->_configVersion = v9;

  v11 = [dataCopy objectForKeyedSubscript:@"assetHash"];

  assetHash = self->_assetHash;
  self->_assetHash = v11;
}

- (BOOL)_loadFromJsonFile:(id)file
{
  v4 = [(CSRemoteAssetManager *)self _loadJsonDataFromFile:file];
  if (v4)
  {
    [(CSRemoteAssetManager *)self _setAssetsInfoFromMetaData:v4];
  }

  return v4 != 0;
}

- (BOOL)_writeToJsonFile:(id)file
{
  v40 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  currentLanguageCode = self->_currentLanguageCode;
  v36[0] = @"languageCode";
  v36[1] = @"resourcePath";
  v38 = *&self->_resourcePath;
  v36[2] = @"configVersion";
  v36[3] = @"assetHash";
  v37 = currentLanguageCode;
  assetHash = self->_assetHash;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:v36 count:4];
  v29 = 0;
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:3 error:&v29];
  v8 = v29;
  if (v7)
  {
    stringByDeletingLastPathComponent = [fileCopy stringByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [defaultManager fileExistsAtPath:stringByDeletingLastPathComponent];

    if ((v11 & 1) == 0)
    {
      v12 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v31 = "[CSRemoteAssetManager _writeToJsonFile:]";
        v32 = 2114;
        v33 = stringByDeletingLastPathComponent;
        _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s Creating directory : %{public}@", buf, 0x16u);
      }

      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager2 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
    }

    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = [defaultManager3 fileExistsAtPath:fileCopy];

    if (v15)
    {
      defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
      v28 = v8;
      v17 = [defaultManager4 removeItemAtPath:fileCopy error:&v28];
      v18 = v28;

      if ((v17 & 1) == 0)
      {
        v19 = CSLogCategoryAsset;
        if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
        {
          v26 = v19;
          localizedDescription = [v18 localizedDescription];
          *buf = 136315650;
          v31 = "[CSRemoteAssetManager _writeToJsonFile:]";
          v32 = 2114;
          v33 = fileCopy;
          v34 = 2114;
          v35 = localizedDescription;
          _os_log_error_impl(&dword_1DDA4B000, v26, OS_LOG_TYPE_ERROR, "%s Cannot remove asset meta file : %{public}@, %{public}@", buf, 0x20u);
        }

        v20 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v18 = v8;
    }

    v20 = [v7 writeToFile:fileCopy atomically:1];
LABEL_16:

    v8 = v18;
    goto LABEL_17;
  }

  v21 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
  {
    v24 = v21;
    localizedDescription2 = [v8 localizedDescription];
    *buf = 136315394;
    v31 = "[CSRemoteAssetManager _writeToJsonFile:]";
    v32 = 2114;
    v33 = localizedDescription2;
    _os_log_error_impl(&dword_1DDA4B000, v24, OS_LOG_TYPE_ERROR, "%s Cannot create json file : %{public}@", buf, 0x16u);
  }

  v20 = 0;
LABEL_17:

  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)assetForCurrentLanguageOfType:(unint64_t)type
{
  if (type)
  {
    v3 = 0;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__14709;
    v11 = __Block_byref_object_dispose__14710;
    v12 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__CSRemoteAssetManager_assetForCurrentLanguageOfType___block_invoke;
    block[3] = &unk_1E865C920;
    block[4] = self;
    block[5] = &v7;
    block[6] = 0;
    dispatch_sync(queue, block);
    v3 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  return v3;
}

uint64_t __54__CSRemoteAssetManager_assetForCurrentLanguageOfType___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _loadPreinstalledAssetMetaIfNeeded];
  if (result)
  {
    v3 = [CSAsset assetForAssetType:*(a1 + 48) resourcePath:*(*(a1 + 32) + 16) configVersion:*(*(a1 + 32) + 24)];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x1EEE66BB8](v3, v5);
  }

  return result;
}

- (id)_remoteAssetMetaPath
{
  v2 = +[CSFPreferences sharedPreferences];
  baseDir = [v2 baseDir];

  v4 = [baseDir stringByAppendingPathComponent:@"VoiceTrigger/assetMeta.json"];

  return v4;
}

- (BOOL)_loadPreinstalledAssetMetaIfNeeded
{
  v27 = *MEMORY[0x1E69E9840];
  if (+[CSUtils isDarwinOS](CSUtils, "isDarwinOS") && (+[CSFPreferences sharedPreferences](CSFPreferences, "sharedPreferences"), v3 = objc_claimAutoreleasedReturnValue(), [v3 languageCodeDarwin], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = +[CSFPreferences sharedPreferences];
    languageCodeDarwin = [v5 languageCodeDarwin];
  }

  else
  {
    languageCodeDarwin = @"en-US";
  }

  if ([(NSString *)self->_currentLanguageCode isEqualToString:languageCodeDarwin]&& (+[CSUtils isExclaveHardware]|| ([(CSRemoteAssetManager *)self _remoteAssetMetaPath], v7 = objc_claimAutoreleasedReturnValue(), v8 = [(CSRemoteAssetManager *)self _loadFromJsonFile:v7], v7, v8)))
  {
    v9 = CSLogCategoryAsset;
    v10 = 1;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_INFO))
    {
      v23 = 136315138;
      v24 = "[CSRemoteAssetManager _loadPreinstalledAssetMetaIfNeeded]";
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_INFO, "%s Skip reload assets, already up-to-date", &v23, 0xCu);
    }
  }

  else if (+[CSUtils isDarwinOS])
  {
    v11 = +[CSAsset fallBackAssetResourcePath];
    v12 = [v11 stringByAppendingPathComponent:@"preinstalledMeta.json"];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [defaultManager fileExistsAtPath:v12];

    if (v14)
    {
      v15 = [(CSRemoteAssetManager *)self _loadJsonDataFromFile:v12];
      v16 = [v15 objectForKeyedSubscript:languageCodeDarwin];
      v17 = v16;
      if (v15 && v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [(CSRemoteAssetManager *)self _setAssetsInfoFromMetaData:v17];
        _remoteAssetMetaPath = [(CSRemoteAssetManager *)self _remoteAssetMetaPath];
        v10 = [(CSRemoteAssetManager *)self _writeToJsonFile:_remoteAssetMetaPath];
      }

      else
      {
        v20 = CSLogCategoryAsset;
        if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315394;
          v24 = "[CSRemoteAssetManager _loadPreinstalledAssetMetaIfNeeded]";
          v25 = 2114;
          v26 = v15;
          _os_log_error_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_ERROR, "%s Invalid rawRemoteAssetMeta : %{public}@", &v23, 0x16u);
        }

        v10 = 0;
      }
    }

    else
    {
      v19 = CSLogCategoryAsset;
      v10 = 0;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315394;
        v24 = "[CSRemoteAssetManager _loadPreinstalledAssetMetaIfNeeded]";
        v25 = 2114;
        v26 = v12;
        _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s preinstalled model meta not found : %{public}@", &v23, 0x16u);
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

- (CSRemoteAssetManager)init
{
  v10.receiver = self;
  v10.super_class = CSRemoteAssetManager;
  v2 = [(CSRemoteAssetManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSRemoteAssetManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    currentLanguageCode = v2->_currentLanguageCode;
    v2->_currentLanguageCode = @"en-US";

    _remoteAssetMetaPath = [(CSRemoteAssetManager *)v2 _remoteAssetMetaPath];
    [(CSRemoteAssetManager *)v2 _loadFromJsonFile:_remoteAssetMetaPath];
  }

  return v2;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken_14732 != -1)
  {
    dispatch_once(&sharedManager_onceToken_14732, &__block_literal_global_14733);
  }

  v3 = sharedManager_sharedManager_14734;

  return v3;
}

uint64_t __37__CSRemoteAssetManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(CSRemoteAssetManager);
  v1 = sharedManager_sharedManager_14734;
  sharedManager_sharedManager_14734 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end