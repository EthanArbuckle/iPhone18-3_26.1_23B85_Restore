@interface CSRemoteAssetManagerDarwinExclave
+ (id)sharedManager;
- (CSRemoteAssetManagerDarwinExclave)init;
- (CSRemoteAssetManagerDarwinExclave)initWithExclaveAssetsController:(id)controller;
- (id)_languageCode;
- (id)assetConfigVersionForAssetType:(unint64_t)type;
- (id)assetForCurrentLanguageOfType:(unint64_t)type;
- (id)assetHashForAssetType:(unint64_t)type;
- (id)languageCode;
- (id)resourcePathForAssetType:(unint64_t)type;
- (void)addObserver:(id)observer forAssetType:(unint64_t)type;
- (void)removeObserver:(id)observer forAssetType:(unint64_t)type;
- (void)setLanguageCode:(id)code resourcePath:(id)path configVersion:(id)version assetHash:(id)hash assetType:(unint64_t)type;
@end

@implementation CSRemoteAssetManagerDarwinExclave

- (void)removeObserver:(id)observer forAssetType:(unint64_t)type
{
  observerCopy = observer;
  v7 = observerCopy;
  if (!type)
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__CSRemoteAssetManagerDarwinExclave_removeObserver_forAssetType___block_invoke;
    v9[3] = &unk_1E865C970;
    v9[4] = self;
    v10 = observerCopy;
    dispatch_async(queue, v9);
  }
}

uint64_t __65__CSRemoteAssetManagerDarwinExclave_removeObserver_forAssetType___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 16))
  {
    return [*(*(result + 32) + 16) removeObject:*(result + 40)];
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
    v9[2] = __62__CSRemoteAssetManagerDarwinExclave_addObserver_forAssetType___block_invoke;
    v9[3] = &unk_1E865C970;
    v9[4] = self;
    v10 = observerCopy;
    dispatch_async(queue, v9);
  }
}

uint64_t __62__CSRemoteAssetManagerDarwinExclave_addObserver_forAssetType___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (id)resourcePathForAssetType:(unint64_t)type
{
  v3 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1382;
  v12 = __Block_byref_object_dispose__1383;
  v13 = 0;
  if (!type)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__CSRemoteAssetManagerDarwinExclave_resourcePathForAssetType___block_invoke;
    v7[3] = &unk_1E865C880;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(queue, v7);
    v3 = v9[5];
  }

  v5 = v3;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __62__CSRemoteAssetManagerDarwinExclave_resourcePathForAssetType___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 24) asset];
  v2 = [v5 resourcePath];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)assetHashForAssetType:(unint64_t)type
{
  v3 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1382;
  v12 = __Block_byref_object_dispose__1383;
  v13 = 0;
  if (!type)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__CSRemoteAssetManagerDarwinExclave_assetHashForAssetType___block_invoke;
    v7[3] = &unk_1E865C880;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(queue, v7);
    v3 = v9[5];
  }

  v5 = v3;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __59__CSRemoteAssetManagerDarwinExclave_assetHashForAssetType___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 24) asset];
  v2 = [v5 configVersion];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)assetConfigVersionForAssetType:(unint64_t)type
{
  v3 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1382;
  v12 = __Block_byref_object_dispose__1383;
  v13 = 0;
  if (!type)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__CSRemoteAssetManagerDarwinExclave_assetConfigVersionForAssetType___block_invoke;
    v7[3] = &unk_1E865C880;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(queue, v7);
    v3 = v9[5];
  }

  v5 = v3;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __68__CSRemoteAssetManagerDarwinExclave_assetConfigVersionForAssetType___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 24) asset];
  v2 = [v5 configVersion];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)languageCode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1382;
  v10 = __Block_byref_object_dispose__1383;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__CSRemoteAssetManagerDarwinExclave_languageCode__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __49__CSRemoteAssetManagerDarwinExclave_languageCode__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) languageCode];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setLanguageCode:(id)code resourcePath:(id)path configVersion:(id)version assetHash:(id)hash assetType:(unint64_t)type
{
  v30 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  pathCopy = path;
  versionCopy = version;
  hashCopy = hash;
  v16 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v21 = "[CSRemoteAssetManagerDarwinExclave setLanguageCode:resourcePath:configVersion:assetHash:assetType:]";
    v22 = 2114;
    v23 = codeCopy;
    v24 = 2114;
    v25 = pathCopy;
    v26 = 2114;
    v27 = versionCopy;
    v28 = 2114;
    v29 = hashCopy;
    _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_DEFAULT, "%s LanguageCode : %{public}@, resourcePath : %{public}@, configVersion : %{public}@, assetHash : %{public}@", buf, 0x34u);
  }

  if (!type)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__CSRemoteAssetManagerDarwinExclave_setLanguageCode_resourcePath_configVersion_assetHash_assetType___block_invoke;
    block[3] = &unk_1E865CB68;
    block[4] = self;
    dispatch_async(queue, block);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __100__CSRemoteAssetManagerDarwinExclave_setLanguageCode_resourcePath_configVersion_assetHash_assetType___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 16);
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

- (id)assetForCurrentLanguageOfType:(unint64_t)type
{
  _languageCode = [(CSRemoteAssetManagerDarwinExclave *)self _languageCode];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1382;
  v18 = __Block_byref_object_dispose__1383;
  v19 = 0;
  objc_initWeak(&location, self);
  if (!type)
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__CSRemoteAssetManagerDarwinExclave_assetForCurrentLanguageOfType___block_invoke;
    v9[3] = &unk_1E865A870;
    v9[4] = self;
    v10 = _languageCode;
    v11 = &v14;
    objc_copyWeak(v12, &location);
    v12[1] = 0;
    dispatch_sync(queue, v9);
    objc_destroyWeak(v12);
  }

  v7 = v15[5];
  objc_destroyWeak(&location);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __67__CSRemoteAssetManagerDarwinExclave_assetForCurrentLanguageOfType___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = [v3 languageCode];
  v5 = [v4 isEqualToString:*(a1 + 40)];

  if ((v5 & 1) == 0)
  {
    v2 = *(a1 + 32);
LABEL_7:
    v14 = *(v2 + 32);
    v15 = *(a1 + 40);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __67__CSRemoteAssetManagerDarwinExclave_assetForCurrentLanguageOfType___block_invoke_23;
    v19[3] = &unk_1E865A848;
    objc_copyWeak(v22, (a1 + 56));
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v20 = v16;
    v21 = v17;
    v22[1] = *(a1 + 64);
    [v14 setAssetForLocale:v15 isOTA:0 completion:v19];

    objc_destroyWeak(v22);
    goto LABEL_8;
  }

  v6 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 24);
    v9 = v6;
    v10 = [v8 languageCode];
    *buf = 136315650;
    v24 = "[CSRemoteAssetManagerDarwinExclave assetForCurrentLanguageOfType:]_block_invoke";
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Language code requested: %@, Cached asset language code: %@. Returning cached asset", buf, 0x20u);
  }

  v11 = [*(*(a1 + 32) + 24) asset];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

LABEL_8:
  v18 = *MEMORY[0x1E69E9840];
}

void __67__CSRemoteAssetManagerDarwinExclave_assetForCurrentLanguageOfType___block_invoke_23(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a2)
    {
      v5 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[CSRemoteAssetManagerDarwinExclave assetForCurrentLanguageOfType:]_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = a2;
        _os_log_error_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_ERROR, "%s Setting asset on exclave hardware failed with error %u", buf, 0x12u);
      }
    }

    else
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x2050000000;
      v6 = getSecureAssetTypeUtilsClass_softClass;
      v37 = getSecureAssetTypeUtilsClass_softClass;
      if (!getSecureAssetTypeUtilsClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getSecureAssetTypeUtilsClass_block_invoke;
        v39 = &unk_1E865C120;
        *v40 = &v34;
        CoreSpeechUtilsLibraryCore();
        Class = objc_getClass("SecureAssetTypeUtils");
        *(*(*v40 + 8) + 24) = Class;
        getSecureAssetTypeUtilsClass_softClass = *(*(*v40 + 8) + 24);
        v6 = v35[3];
      }

      v8 = v6;
      _Block_object_dispose(&v34, 8);
      v34 = 0;
      v35 = &v34;
      v36 = 0x2050000000;
      v9 = getSecureAssetsPreinstalledBundleClass_softClass;
      v37 = getSecureAssetsPreinstalledBundleClass_softClass;
      if (!getSecureAssetsPreinstalledBundleClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getSecureAssetsPreinstalledBundleClass_block_invoke;
        v39 = &unk_1E865C120;
        *v40 = &v34;
        CoreSpeechUtilsLibraryCore();
        v10 = objc_getClass("SecureAssetsPreinstalledBundle");
        *(*(*v40 + 8) + 24) = v10;
        getSecureAssetsPreinstalledBundleClass_softClass = *(*(*v40 + 8) + 24);
        v9 = v35[3];
      }

      v11 = v9;
      _Block_object_dispose(&v34, 8);
      v12 = [v9 alloc];
      v13 = [v6 getVoiceTriggerAssetBundle];
      v14 = [v12 init:v13];

      v15 = [v14 resourcePathURL:*(a1 + 32)];
      v16 = [v14 assetVersion:*(a1 + 32)];
      v17 = *(a1 + 56);
      v18 = [v15 absoluteString];
      v19 = [CSAsset assetForAssetType:v17 resourcePath:v18 configVersion:v16 assetProvider:3];
      v20 = *(*(a1 + 40) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;

      v22 = [[CSRemoteAssetCache alloc] initWithAsset:*(*(*(a1 + 40) + 8) + 40) languageCode:*(a1 + 32)];
      v23 = WeakRetained[3];
      WeakRetained[3] = v22;

      v24 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 40);
        v25 = a1 + 40;
        v27 = *(v25 - 8);
        v28 = *(*(v26 + 8) + 40);
        v29 = v24;
        v30 = [v28 resourcePath];
        v31 = [*(*(*v25 + 8) + 40) configVersion];
        v32 = [*(*(*v25 + 8) + 40) hashFromResourcePath];
        *buf = 136316162;
        *&buf[4] = "[CSRemoteAssetManagerDarwinExclave assetForCurrentLanguageOfType:]_block_invoke";
        *&buf[12] = 2114;
        *&buf[14] = v27;
        *&buf[22] = 2114;
        v39 = v30;
        *v40 = 2114;
        *&v40[2] = v31;
        v41 = 2114;
        v42 = v32;
        _os_log_impl(&dword_1DDA4B000, v29, OS_LOG_TYPE_DEFAULT, "%s LanguageCode : %{public}@, resourcePath : %{public}@, configVersion : %{public}@, assetHash : %{public}@", buf, 0x34u);
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (id)_languageCode
{
  v11 = *MEMORY[0x1E69E9840];
  if (+[CSUtils isDarwinOS](CSUtils, "isDarwinOS") && (+[CSFPreferences sharedPreferences](CSFPreferences, "sharedPreferences"), v2 = objc_claimAutoreleasedReturnValue(), [v2 languageCodeDarwin], v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v3))
  {
    v4 = +[CSFPreferences sharedPreferences];
    languageCodeDarwin = [v4 languageCodeDarwin];
  }

  else
  {
    v6 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[CSRemoteAssetManagerDarwinExclave _languageCode]";
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s LanguageCode setting not found. Falling back to en-US asset", &v9, 0xCu);
    }

    languageCodeDarwin = @"en-US";
  }

  v7 = *MEMORY[0x1E69E9840];

  return languageCodeDarwin;
}

- (CSRemoteAssetManagerDarwinExclave)init
{
  v3 = +[CSExclaveMessageHandlingFactory exclaveAssetsController];
  v4 = [(CSRemoteAssetManagerDarwinExclave *)self initWithExclaveAssetsController:v3];

  return v4;
}

- (CSRemoteAssetManagerDarwinExclave)initWithExclaveAssetsController:(id)controller
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = CSRemoteAssetManagerDarwinExclave;
  v5 = [(CSRemoteAssetManagerDarwinExclave *)&v14 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.corespeech.remoteAssetManagerExclave", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = weakObjectsHashTable;

    if (controllerCopy)
    {
      v10 = controllerCopy;
    }

    else
    {
      v10 = +[CSExclaveMessageHandlingFactory exclaveAssetsController];
    }

    exclaveAssetsController = v5->_exclaveAssetsController;
    v5->_exclaveAssetsController = v10;

    assetCache = v5->_assetCache;
    v5->_assetCache = 0;
  }

  return v5;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_1400);
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __50__CSRemoteAssetManagerDarwinExclave_sharedManager__block_invoke()
{
  sharedManager_sharedManager = objc_alloc_init(CSRemoteAssetManagerDarwinExclave);

  return MEMORY[0x1EEE66BB8]();
}

@end