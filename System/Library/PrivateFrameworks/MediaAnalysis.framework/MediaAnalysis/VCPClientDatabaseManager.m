@interface VCPClientDatabaseManager
+ (id)sharedDatabaseForPhotoLibrary:(id)a3;
+ (id)sharedDatabaseForPhotoLibraryURL:(id)a3;
+ (id)sharedDatabaseManager;
- (VCPClientDatabaseManager)init;
- (id)sharedDatabaseForPhotoLibrary:(id)a3;
- (id)sharedDatabaseForPhotoLibraryURL:(id)a3;
@end

@implementation VCPClientDatabaseManager

- (VCPClientDatabaseManager)init
{
  v8.receiver = self;
  v8.super_class = VCPClientDatabaseManager;
  v2 = [(VCPClientDatabaseManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mediaanalysis.VCPClientDatabaseManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    databases = v2->_databases;
    v2->_databases = v5;
  }

  return v2;
}

+ (id)sharedDatabaseManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VCPClientDatabaseManager_sharedDatabaseManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedDatabaseManager_once != -1)
  {
    dispatch_once(&sharedDatabaseManager_once, block);
  }

  v2 = sharedDatabaseManager_instance;

  return v2;
}

void __49__VCPClientDatabaseManager_sharedDatabaseManager__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = sharedDatabaseManager_instance;
  sharedDatabaseManager_instance = v0;
}

- (id)sharedDatabaseForPhotoLibrary:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14;
  v19 = __Block_byref_object_dispose__14;
  v20 = 0;
  if (v4)
  {
    [v4 photoLibraryURL];
  }

  else
  {
    [MEMORY[0x1E69789B0] vcp_defaultURL];
  }
  v6 = ;
  v7 = v6;
  if (v6)
  {
    queue = self->_queue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__VCPClientDatabaseManager_sharedDatabaseForPhotoLibrary___block_invoke;
    v11[3] = &unk_1E834C3A8;
    v14 = &v15;
    v11[4] = self;
    v12 = v6;
    v13 = v5;
    dispatch_sync(queue, v11);
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Specified Photo Library has no URL (<%@>); cannot find analysis database", buf, 0xCu);
  }

  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __58__VCPClientDatabaseManager_sharedDatabaseForPhotoLibrary___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [VCPDatabaseReader databaseForPhotoLibrary:*(a1 + 48)];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(*(a1 + 56) + 8) + 40);
    if (v9)
    {
      [*(*(a1 + 32) + 16) setObject:v9 forKeyedSubscript:*(a1 + 40)];
    }

    else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) path];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to open analysis database for Photo Library (%@)", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (id)sharedDatabaseForPhotoLibraryURL:(id)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__14;
  v17 = __Block_byref_object_dispose__14;
  v18 = 0;
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__VCPClientDatabaseManager_sharedDatabaseForPhotoLibraryURL___block_invoke;
    block[3] = &unk_1E834D498;
    v12 = &v13;
    block[4] = self;
    v11 = v4;
    dispatch_sync(queue, block);
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "No PhotoLibrary URL received", v9, 2u);
  }

  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __61__VCPClientDatabaseManager_sharedDatabaseForPhotoLibraryURL___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [VCPDatabaseReader databaseForPhotoLibraryURL:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(*(a1 + 48) + 8) + 40);
    if (v9)
    {
      [*(*(a1 + 32) + 16) setObject:v9 forKeyedSubscript:*(a1 + 40)];
    }

    else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) path];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to open analysis database for Photo Library (%@)", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }
}

+ (id)sharedDatabaseForPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() sharedDatabaseManager];
  v5 = [v4 sharedDatabaseForPhotoLibrary:v3];

  return v5;
}

+ (id)sharedDatabaseForPhotoLibraryURL:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() sharedDatabaseManager];
  v5 = [v4 sharedDatabaseForPhotoLibraryURL:v3];

  return v5;
}

@end