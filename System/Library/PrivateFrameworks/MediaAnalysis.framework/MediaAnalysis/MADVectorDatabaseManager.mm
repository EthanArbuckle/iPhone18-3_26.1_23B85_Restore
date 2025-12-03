@interface MADVectorDatabaseManager
+ (id)sharedDatabaseWithPhotoLibrary:(id)library;
+ (id)sharedManager;
+ (void)releaseAllSharedDatabase;
+ (void)releaseSharedDatabaseWithPhotoLibrary:(id)library;
- (MADVectorDatabaseManager)init;
- (id)sharedDatabaseWithPhotoLibrary:(id)library;
- (void)releaseAllSharedDatabase;
- (void)releaseSharedDatabaseWithPhotoLibrary:(id)library;
@end

@implementation MADVectorDatabaseManager

- (MADVectorDatabaseManager)init
{
  v9.receiver = self;
  v9.super_class = MADVectorDatabaseManager;
  v2 = [(MADVectorDatabaseManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.mediaanalysis.databasemanager.vector", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    databases = v2->_databases;
    v2->_databases = dictionary;

    v2->_readOnly = 0;
  }

  return v2;
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MADVectorDatabaseManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[MADVectorDatabaseManager sharedManager]::once != -1)
  {
    dispatch_once(&+[MADVectorDatabaseManager sharedManager]::once, block);
  }

  v2 = +[MADVectorDatabaseManager sharedManager]::instance;

  return v2;
}

void __41__MADVectorDatabaseManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = +[MADVectorDatabaseManager sharedManager]::instance;
  +[MADVectorDatabaseManager sharedManager]::instance = v0;
}

- (id)sharedDatabaseWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__MADVectorDatabaseManager_sharedDatabaseWithPhotoLibrary___block_invoke;
  block[3] = &unk_1E834D210;
  v10 = libraryCopy;
  v11 = &v12;
  block[4] = self;
  v6 = libraryCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __59__MADVectorDatabaseManager_sharedDatabaseWithPhotoLibrary___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) photoLibraryURL];
  v4 = [v3 path];
  v5 = [v2 objectForKeyedSubscript:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [MADVectorDatabase databaseWithPhotoLibrary:*(a1 + 40) readyOnly:*(*(a1 + 32) + 24)];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = *(*(*(a1 + 48) + 8) + 40);
    if (v12)
    {
      v13 = *(*(a1 + 32) + 16);
      v14 = [*(a1 + 40) photoLibraryURL];
      v15 = [v14 path];
      [v13 setObject:v12 forKeyedSubscript:v15];
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 40);
      v17 = 138412290;
      v18 = v16;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADVectorDatabaseManager] Failed to open database for %@", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }
}

+ (id)sharedDatabaseWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    sharedManager = [objc_opt_class() sharedManager];
    v5 = [sharedManager sharedDatabaseWithPhotoLibrary:libraryCopy];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADVectorDatabaseManager] Embedding generation disabled, skip vector database creation", v7, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)releaseSharedDatabaseWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__MADVectorDatabaseManager_releaseSharedDatabaseWithPhotoLibrary___block_invoke;
  v7[3] = &unk_1E834D238;
  v8 = libraryCopy;
  selfCopy = self;
  v6 = libraryCopy;
  dispatch_sync(queue, v7);
}

void __66__MADVectorDatabaseManager_releaseSharedDatabaseWithPhotoLibrary___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) photoLibraryURL];
  v3 = [v2 path];
  if (v3)
  {
    v4 = *(*(a1 + 40) + 16);
    v5 = [v2 path];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = *(*(a1 + 40) + 16);
      v8 = [v2 path];
      [v7 setObject:0 forKeyedSubscript:v8];

      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v2;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADVectorDatabaseManager] Releasing shared database for %@", &v9, 0xCu);
      }
    }
  }
}

+ (void)releaseSharedDatabaseWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  sharedManager = [objc_opt_class() sharedManager];
  [sharedManager releaseSharedDatabaseWithPhotoLibrary:libraryCopy];
}

- (void)releaseAllSharedDatabase
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MADVectorDatabaseManager_releaseAllSharedDatabase__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(queue, block);
}

+ (void)releaseAllSharedDatabase
{
  sharedManager = [objc_opt_class() sharedManager];
  [sharedManager releaseAllSharedDatabase];
}

@end