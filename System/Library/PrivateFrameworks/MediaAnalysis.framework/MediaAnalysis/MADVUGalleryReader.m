@interface MADVUGalleryReader
+ (id)sharedGalleryWithPhotoLibrary:(id)a3;
- (MADVUGalleryReader)initWithPhotoLibrary:(id)a3;
- (id)queryKeyObservationsFor:(id)a3 limit:(int64_t)a4 offset:(int64_t)a5;
@end

@implementation MADVUGalleryReader

- (MADVUGalleryReader)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MADVUGalleryReader;
  v5 = [(MADVUGalleryReader *)&v13 init];
  if (v5)
  {
    if (!v4)
    {
      v11 = 0;
      goto LABEL_6;
    }

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("MADVUGalleryReader", v6);
    operationQueue = v5->_operationQueue;
    v5->_operationQueue = v7;

    v9 = [v4 vcp_visionCacheStorageDirectoryURL];
    storageURL = v5->_storageURL;
    v5->_storageURL = v9;
  }

  v11 = v5;
LABEL_6:

  return v11;
}

+ (id)sharedGalleryWithPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AEC0];
  v5 = [v3 photoLibraryURL];
  v6 = [v4 stringWithFormat:@"MADVUGalleryReader-%@", v5];

  v7 = +[VCPSharedInstanceManager sharedManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__MADVUGalleryReader_sharedGalleryWithPhotoLibrary___block_invoke;
  v11[3] = &unk_1E8351AC0;
  v12 = v3;
  v8 = v3;
  v9 = [v7 sharedInstanceWithIdentifier:v6 andCreationBlock:v11];

  return v9;
}

MADVUGalleryReader *__52__MADVUGalleryReader_sharedGalleryWithPhotoLibrary___block_invoke(uint64_t a1)
{
  v1 = [[MADVUGalleryReader alloc] initWithPhotoLibrary:*(a1 + 32)];

  return v1;
}

- (id)queryKeyObservationsFor:(id)a3 limit:(int64_t)a4 offset:(int64_t)a5
{
  v8 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__71;
  v22 = __Block_byref_object_dispose__71;
  v23 = 0;
  operationQueue = self->_operationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__MADVUGalleryReader_queryKeyObservationsFor_limit_offset___block_invoke;
  block[3] = &unk_1E8351AE8;
  block[4] = self;
  v14 = v8;
  v16 = a4;
  v17 = a5;
  v15 = &v18;
  v10 = v8;
  dispatch_sync(operationQueue, block);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

void __59__MADVUGalleryReader_queryKeyObservationsFor_limit_offset___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 24))
  {
    goto LABEL_7;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADVUGalleryReader] Lazy allocation of vuGallery", buf, 2u);
  }

  v2 = objc_alloc(MEMORY[0x1E69E0678]);
  v3 = *(*(a1 + 32) + 16);
  v15 = 0;
  v4 = [v2 initWithClient:0 path:v3 error:&v15];
  v5 = v15;
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v4;

  if (*(*(a1 + 32) + 24))
  {

LABEL_7:
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 40) value];
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      *buf = 134218496;
      v17 = v8;
      v18 = 2048;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADVUGalleryHeader] Querying key observations for entity %ld, limit: %ld, offset: %ld", buf, 0x20u);
    }

    v11 = [*(*(a1 + 32) + 24) keyObservationsFor:*(a1 + 40) limit:*(a1 + 56) offset:*(a1 + 64)];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v14 = [*(a1 + 40) value];
      *buf = 134217984;
      v17 = v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADVUGalleryHeader] Finished querying key observations for entity %ld", buf, 0xCu);
    }

    return;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADVUGalleryReader] Failed to load Gallery - %@", buf, 0xCu);
  }
}

void __27__MADVUGalleryReader_flush__block_invoke()
{
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v0 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADVUGalleryReader] Flushing operation queue ", v0, 2u);
  }
}

@end