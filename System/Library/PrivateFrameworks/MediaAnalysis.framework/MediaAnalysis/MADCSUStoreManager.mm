@interface MADCSUStoreManager
+ (id)sharedCSUStoreManager;
- (MADCSUStoreManager)init;
- (id)sharedCSUStoreForPhotoLibrary:(id)library;
@end

@implementation MADCSUStoreManager

- (MADCSUStoreManager)init
{
  v8.receiver = self;
  v8.super_class = MADCSUStoreManager;
  v2 = [(MADCSUStoreManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mediaanalysisd.MADCSUStoreManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    stores = v2->_stores;
    v2->_stores = dictionary;
  }

  return v2;
}

+ (id)sharedCSUStoreManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MADCSUStoreManager_sharedCSUStoreManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCSUStoreManager_once != -1)
  {
    dispatch_once(&sharedCSUStoreManager_once, block);
  }

  v2 = sharedCSUStoreManager_instance;

  return v2;
}

void __43__MADCSUStoreManager_sharedCSUStoreManager__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = sharedCSUStoreManager_instance;
  sharedCSUStoreManager_instance = v0;
}

- (id)sharedCSUStoreForPhotoLibrary:(id)library
{
  libraryCopy = library;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__45;
  v19 = __Block_byref_object_dispose__45;
  v20 = 0;
  photoLibraryURL = [libraryCopy photoLibraryURL];
  v6 = photoLibraryURL;
  if (photoLibraryURL)
  {
    queue = self->_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__MADCSUStoreManager_sharedCSUStoreForPhotoLibrary___block_invoke;
    v10[3] = &unk_1E834C3A8;
    v13 = &v15;
    v10[4] = self;
    v11 = photoLibraryURL;
    v12 = libraryCopy;
    dispatch_sync(queue, v10);
    v8 = v16[5];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADCSUStoreManager] Failed to create CSUSearchableKnowledgeObjectStore: no Photo Library URL", buf, 2u);
    }

    v8 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __52__MADCSUStoreManager_sharedCSUStoreForPhotoLibrary___block_invoke(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[7] + 8) + 40))
  {
    v5 = a1[6];
    v16 = 0;
    v6 = [v5 urlForApplicationDataFolderIdentifier:13 error:&v16];
    v7 = v16;
    if (v6)
    {
      v8 = objc_alloc(MEMORY[0x1E6999148]);
      v9 = [v6 path];
      v15 = 0;
      v10 = [v8 initDB:v9 error:&v15];
      v11 = v15;
      v12 = *(a1[7] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v10;

      v14 = *(*(a1[7] + 8) + 40);
      if (v14)
      {
        [*(a1[4] + 16) setObject:v14 forKeyedSubscript:a1[5]];
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADCSUStoreManager] Failed to initialize entity store (%@)", buf, 0xCu);
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADCSUStoreManager] Failed to retrieve CSU store url from Photos (%@)", buf, 0xCu);
    }
  }
}

@end