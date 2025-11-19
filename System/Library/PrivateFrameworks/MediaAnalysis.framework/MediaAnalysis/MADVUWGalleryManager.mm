@interface MADVUWGalleryManager
+ (id)sharedGalleryForPhotoLibrary:(id)a3;
+ (id)sharedGalleryManager;
+ (void)releaseSharedGalleryForPhotoLibrary:(id)a3;
- (MADVUWGalleryManager)init;
- (id)sharedGalleryForPhotoLibrary:(id)a3;
- (void)releaseSharedGalleryForPhotoLibrary:(id)a3;
@end

@implementation MADVUWGalleryManager

- (MADVUWGalleryManager)init
{
  v8.receiver = self;
  v8.super_class = MADVUWGalleryManager;
  v2 = [(MADVUWGalleryManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mediaanalysisd.MADVUWGalleryManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    galleries = v2->_galleries;
    v2->_galleries = v5;
  }

  return v2;
}

+ (id)sharedGalleryManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MADVUWGalleryManager_sharedGalleryManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedGalleryManager_once != -1)
  {
    dispatch_once(&sharedGalleryManager_once, block);
  }

  v2 = sharedGalleryManager_instance;

  return v2;
}

void __44__MADVUWGalleryManager_sharedGalleryManager__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = sharedGalleryManager_instance;
  sharedGalleryManager_instance = v0;
}

- (id)sharedGalleryForPhotoLibrary:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v5 = [v4 photoLibraryURL];
  v6 = v5;
  if (v5)
  {
    queue = self->_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__MADVUWGalleryManager_sharedGalleryForPhotoLibrary___block_invoke;
    v10[3] = &unk_1E834C3A8;
    v13 = &v15;
    v10[4] = self;
    v11 = v5;
    v12 = v4;
    dispatch_sync(queue, v10);
    v8 = v16[5];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADVUWGalleryManager] Failed to create VUWGallery: no Photo Library URL", buf, 2u);
    }

    v8 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __53__MADVUWGalleryManager_sharedGalleryForPhotoLibrary___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v5 = [*(a1 + 48) vcp_visionCacheStorageDirectoryURL];
    v6 = [v5 URLByAppendingPathComponent:@"VUIndex.sqlite"];
    if (v6)
    {
      v7 = VCPSignPostLog();
      v8 = os_signpost_id_generate(v7);

      v9 = VCPSignPostLog();
      v10 = v9;
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VUWGallery_initWithPath", "", buf, 2u);
      }

      v19 = 0;
      v11 = [objc_alloc(MEMORY[0x1E69E0678]) initWithClient:0 path:v6 error:&v19];
      v12 = v19;
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v11;

      if (*(*(*(a1 + 56) + 8) + 40))
      {
        v15 = VCPSignPostLog();
        v16 = v15;
        if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_END, v8, "VUWGallery_initWithPath", "", buf, 2u);
        }

        [*(*(a1 + 32) + 16) setObject:*(*(*(a1 + 56) + 8) + 40) forKeyedSubscript:*(a1 + 40)];
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 40);
        *buf = 138412546;
        v21 = v18;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADVUWGalleryManager] Failed to create VUWGallery with library %@ - %@", buf, 0x16u);
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      *buf = 138412290;
      v21 = v17;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADVUWGalleryManager] Failed to create VUWGallery: no VUIndex URL for library %@", buf, 0xCu);
    }
  }
}

+ (id)sharedGalleryForPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() sharedGalleryManager];
  v5 = [v4 sharedGalleryForPhotoLibrary:v3];

  return v5;
}

- (void)releaseSharedGalleryForPhotoLibrary:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MADVUWGalleryManager_releaseSharedGalleryForPhotoLibrary___block_invoke;
  v7[3] = &unk_1E834C3D0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __60__MADVUWGalleryManager_releaseSharedGalleryForPhotoLibrary___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) photoLibraryURL];
  if (v2)
  {
    v3 = v2;
    v4 = *(*(a1 + 40) + 16);
    v5 = [*(a1 + 32) photoLibraryURL];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = *(*(a1 + 40) + 16);
      v8 = [*(a1 + 32) photoLibraryURL];
      [v7 setObject:0 forKeyedSubscript:v8];

      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v9 = [*(a1 + 32) photoLibraryURL];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADVUWGalleryManager] Releasing shared gallery for %@", &v10, 0xCu);
      }
    }
  }
}

+ (void)releaseSharedGalleryForPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() sharedGalleryManager];
  [v4 releaseSharedGalleryForPhotoLibrary:v3];
}

@end