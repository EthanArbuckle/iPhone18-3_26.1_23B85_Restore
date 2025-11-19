@interface VCPFaceProcessingVersionManager
+ (id)sharedManagerForPhotoLibrary:(id)a3;
- (BOOL)_updateVersionStateFileWithError:(id *)a3;
- (VCPFaceProcessingVersionManager)initWithPhotoLibrary:(id)a3;
- (id)_versionStateURL;
- (int)_updateCurrentProcessingVersion:(int)a3;
- (int)currentProcessingVersion;
- (int)defaultProcessingVersion;
- (int)migrateFaceProcessingToVersion:(int)a3;
- (int)resetAnalysisStateWithError:(id *)a3;
@end

@implementation VCPFaceProcessingVersionManager

- (VCPFaceProcessingVersionManager)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v14.receiver = self;
    v14.super_class = VCPFaceProcessingVersionManager;
    v6 = [(VCPFaceProcessingVersionManager *)&v14 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_photoLibrary, a3);
      v8 = objc_alloc(MEMORY[0x1E695DF20]);
      v9 = [(VCPFaceProcessingVersionManager *)v7 _versionStateURL];
      v10 = [v8 initWithContentsOfURL:v9];
      versionState = v7->_versionState;
      v7->_versionState = v10;
    }

    self = v7;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)sharedManagerForPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = [v3 photoLibraryURL];
  v5 = [v4 absoluteString];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPFaceProcessingVersionManager-%@", v5];
  v7 = +[VCPSharedInstanceManager sharedManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__VCPFaceProcessingVersionManager_sharedManagerForPhotoLibrary___block_invoke;
  v11[3] = &unk_1E834DB88;
  v8 = v3;
  v12 = v8;
  v9 = [v7 sharedInstanceWithIdentifier:v6 andCreationBlock:v11];

  return v9;
}

VCPFaceProcessingVersionManager *__64__VCPFaceProcessingVersionManager_sharedManagerForPhotoLibrary___block_invoke(uint64_t a1)
{
  v1 = [[VCPFaceProcessingVersionManager alloc] initWithPhotoLibrary:*(a1 + 32)];

  return v1;
}

- (id)_versionStateURL
{
  v2 = [(PHPhotoLibrary *)self->_photoLibrary vcp_visionCacheStorageDirectoryURL];
  v3 = [v2 absoluteURL];

  v4 = [v3 URLByAppendingPathComponent:@"mediaAnalysisVersionState.plist"];

  return v4;
}

- (BOOL)_updateVersionStateFileWithError:(id *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  versionState = self->_versionState;
  v5 = [(VCPFaceProcessingVersionManager *)self _versionStateURL];
  v11 = 0;
  v6 = [(NSDictionary *)versionState writeToURL:v5 error:&v11];
  v7 = v11;

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (!v8)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceVersion] Failed to update version state - %@", buf, 0xCu);
    }

    if (a3)
    {
      v9 = v7;
      *a3 = v7;
    }
  }

  return v6;
}

- (int)defaultProcessingVersion
{
  v3 = _os_feature_enabled_impl();
  if (![(PHPhotoLibrary *)self->_photoLibrary isSystemPhotoLibrary])
  {
    return 15;
  }

  if ((VCPMAIsAppleInternal() & v3) != 1)
  {
    return 15;
  }

  v4 = [VCPPhotosAutoCounterWorker workerWithPhotoLibrary:self->_photoLibrary];
  v5 = [v4 optInPersonCount];

  if (!v5)
  {
    return 15;
  }

  if (![(VCPFaceProcessingVersionManager *)self currentProcessingVersion])
  {
    [(VCPFaceProcessingVersionManager *)self _updateCurrentProcessingVersion:11];
  }

  return [(VCPFaceProcessingVersionManager *)self currentProcessingVersion];
}

- (int)currentProcessingVersion
{
  v3 = [(NSDictionary *)self->_versionState objectForKeyedSubscript:@"FaceProcessingInternalVersion"];
  if (v3)
  {
    v4 = [(NSDictionary *)self->_versionState objectForKeyedSubscript:@"FaceProcessingInternalVersion"];
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)_updateCurrentProcessingVersion:(int)a3
{
  v3 = *&a3;
  v19 = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
  versionState = v4->_versionState;
  if (versionState)
  {
    v6 = [(NSDictionary *)versionState mutableCopy];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = v6;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [v7 setObject:v8 forKeyedSubscript:@"FaceProcessingInternalVersion"];

  v9 = [(VCPFaceProcessingVersionManager *)v4 _versionStateURL];
  if (v9)
  {
    v16 = 0;
    v10 = [v7 writeToURL:v9 error:&v16];
    v11 = v16;
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      objc_storeStrong(&v4->_versionState, v7);
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v13 = v11;
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v13;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceVersion] Failed to update version state - %@", buf, 0xCu);
      }

      v14 = -20;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceVersion] No persistentURL to update version state - %@", buf, 0xCu);
    }

    v13 = 0;
    v14 = -50;
  }

  objc_sync_exit(v4);
  return v14;
}

- (int)resetAnalysisStateWithError:(id *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(PHPhotoLibrary *)self->_photoLibrary photoLibraryURL];
    v6 = [v5 path];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[FaceVersion] Resetting processing state ... (%@)", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x2020000000;
  v26 = 0;
  photoLibrary = self->_photoLibrary;
  v21 = 0;
  v8 = [(PHPhotoLibrary *)photoLibrary resetStateForMediaProcessingTaskID:3 assetIdentifiers:0 resetOptions:262177 error:&v21];
  v9 = v21;
  v10 = v9;
  if (v8)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __63__VCPFaceProcessingVersionManager_resetAnalysisStateWithError___block_invoke;
    v20[3] = &unk_1E834DBB0;
    v20[4] = &buf;
    v11 = _Block_copy(v20);
    v12 = [(PHPhotoLibrary *)self->_photoLibrary vcp_visionCacheStorageDirectoryURL];
    v13 = [v12 URLByAppendingPathComponent:@"VUIndex.sqlite"];
    v11[2](v11, v13);

    v14 = [v12 URLByAppendingPathComponent:@"VUIndex.sqlite-shm"];
    v11[2](v11, v14);

    v15 = [v12 URLByAppendingPathComponent:@"VUIndex.sqlite-wal"];
    v11[2](v11, v15);

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceVersion] Reset processing state in Photos Library", v22, 2u);
    }

    v16 = *(*(&buf + 1) + 24);
  }

  else
  {
    if (a3)
    {
      v17 = [v9 copy];
      v18 = *a3;
      *a3 = v17;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v22 = 138412290;
      v23 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceVersion] Failed to reset processing state in Photos Library - %@", v22, 0xCu);
    }

    v16 = -18;
    *(*(&buf + 1) + 24) = -18;
  }

  _Block_object_dispose(&buf, 8);
  return v16;
}

void __63__VCPFaceProcessingVersionManager_resetAnalysisStateWithError___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v3 path];
    v6 = [v4 fileExistsAtPath:v5];

    if (v6)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v12 = v3;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceVersion] Dropping %@", buf, 0xCu);
      }

      v7 = [MEMORY[0x1E696AC08] defaultManager];
      v10 = 0;
      v8 = [v7 removeItemAtURL:v3 error:&v10];
      v9 = v10;

      if ((v8 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v12 = v3;
          v13 = 2112;
          v14 = v9;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceVersion] Failed to remove %@ - %@", buf, 0x16u);
        }

        *(*(*(a1 + 32) + 8) + 24) = -18;
      }
    }
  }
}

- (int)migrateFaceProcessingToVersion:(int)a3
{
  v3 = *&a3;
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(VCPFaceProcessingVersionManager *)self currentProcessingVersion];
  if (!v5 || (v6 = v5, v5 > v3))
  {
    v7 = self;
    objc_sync_enter(v7);
    v8 = [(VCPFaceProcessingVersionManager *)v7 _updateCurrentProcessingVersion:5];
    if (v8)
    {
      objc_sync_exit(v7);

      return v8;
    }

    v6 = [(VCPFaceProcessingVersionManager *)v7 currentProcessingVersion];
    objc_sync_exit(v7);
  }

  if (v6 >= v3)
  {
    return 0;
  }

  v9 = self;
  objc_sync_enter(v9);
  v12 = 0;
  v8 = [(VCPFaceProcessingVersionManager *)v9 resetAnalysisStateWithError:&v12];
  if (v8)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v12;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceVersion] Failed to reset Face Analysis data for PhotoLibrary %@", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v8 = [(VCPFaceProcessingVersionManager *)v9 _updateCurrentProcessingVersion:v3];
    v10 = v8 == 0;
  }

  objc_sync_exit(v9);
  if (v10)
  {
    return 0;
  }

  return v8;
}

@end