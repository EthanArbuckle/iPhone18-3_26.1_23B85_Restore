@interface VCPFaceProcessingVersionManager
+ (id)sharedManagerForPhotoLibrary:(id)library;
- (BOOL)_updateVersionStateFileWithError:(id *)error;
- (VCPFaceProcessingVersionManager)initWithPhotoLibrary:(id)library;
- (id)_versionStateURL;
- (int)_updateCurrentProcessingVersion:(int)version;
- (int)currentProcessingVersion;
- (int)defaultProcessingVersion;
- (int)migrateFaceProcessingToVersion:(int)version;
- (int)resetAnalysisStateWithError:(id *)error;
@end

@implementation VCPFaceProcessingVersionManager

- (VCPFaceProcessingVersionManager)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (libraryCopy)
  {
    v14.receiver = self;
    v14.super_class = VCPFaceProcessingVersionManager;
    v6 = [(VCPFaceProcessingVersionManager *)&v14 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_photoLibrary, library);
      v8 = objc_alloc(MEMORY[0x1E695DF20]);
      _versionStateURL = [(VCPFaceProcessingVersionManager *)v7 _versionStateURL];
      v10 = [v8 initWithContentsOfURL:_versionStateURL];
      versionState = v7->_versionState;
      v7->_versionState = v10;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)sharedManagerForPhotoLibrary:(id)library
{
  libraryCopy = library;
  photoLibraryURL = [libraryCopy photoLibraryURL];
  absoluteString = [photoLibraryURL absoluteString];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPFaceProcessingVersionManager-%@", absoluteString];
  v7 = +[VCPSharedInstanceManager sharedManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__VCPFaceProcessingVersionManager_sharedManagerForPhotoLibrary___block_invoke;
  v11[3] = &unk_1E834DB88;
  v8 = libraryCopy;
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
  vcp_visionCacheStorageDirectoryURL = [(PHPhotoLibrary *)self->_photoLibrary vcp_visionCacheStorageDirectoryURL];
  absoluteURL = [vcp_visionCacheStorageDirectoryURL absoluteURL];

  v4 = [absoluteURL URLByAppendingPathComponent:@"mediaAnalysisVersionState.plist"];

  return v4;
}

- (BOOL)_updateVersionStateFileWithError:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  versionState = self->_versionState;
  _versionStateURL = [(VCPFaceProcessingVersionManager *)self _versionStateURL];
  v11 = 0;
  v6 = [(NSDictionary *)versionState writeToURL:_versionStateURL error:&v11];
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

    if (error)
    {
      v9 = v7;
      *error = v7;
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
  optInPersonCount = [v4 optInPersonCount];

  if (!optInPersonCount)
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
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (int)_updateCurrentProcessingVersion:(int)version
{
  v3 = *&version;
  v19 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  versionState = selfCopy->_versionState;
  if (versionState)
  {
    dictionary = [(NSDictionary *)versionState mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = dictionary;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [v7 setObject:v8 forKeyedSubscript:@"FaceProcessingInternalVersion"];

  _versionStateURL = [(VCPFaceProcessingVersionManager *)selfCopy _versionStateURL];
  if (_versionStateURL)
  {
    v16 = 0;
    v10 = [v7 writeToURL:_versionStateURL error:&v16];
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
      objc_storeStrong(&selfCopy->_versionState, v7);
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

  objc_sync_exit(selfCopy);
  return v14;
}

- (int)resetAnalysisStateWithError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    photoLibraryURL = [(PHPhotoLibrary *)self->_photoLibrary photoLibraryURL];
    path = [photoLibraryURL path];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = path;
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
    vcp_visionCacheStorageDirectoryURL = [(PHPhotoLibrary *)self->_photoLibrary vcp_visionCacheStorageDirectoryURL];
    v13 = [vcp_visionCacheStorageDirectoryURL URLByAppendingPathComponent:@"VUIndex.sqlite"];
    v11[2](v11, v13);

    v14 = [vcp_visionCacheStorageDirectoryURL URLByAppendingPathComponent:@"VUIndex.sqlite-shm"];
    v11[2](v11, v14);

    v15 = [vcp_visionCacheStorageDirectoryURL URLByAppendingPathComponent:@"VUIndex.sqlite-wal"];
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
    if (error)
    {
      v17 = [v9 copy];
      v18 = *error;
      *error = v17;
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

- (int)migrateFaceProcessingToVersion:(int)version
{
  v3 = *&version;
  v15 = *MEMORY[0x1E69E9840];
  currentProcessingVersion = [(VCPFaceProcessingVersionManager *)self currentProcessingVersion];
  if (!currentProcessingVersion || (currentProcessingVersion2 = currentProcessingVersion, currentProcessingVersion > v3))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = [(VCPFaceProcessingVersionManager *)selfCopy _updateCurrentProcessingVersion:5];
    if (v8)
    {
      objc_sync_exit(selfCopy);

      return v8;
    }

    currentProcessingVersion2 = [(VCPFaceProcessingVersionManager *)selfCopy currentProcessingVersion];
    objc_sync_exit(selfCopy);
  }

  if (currentProcessingVersion2 >= v3)
  {
    return 0;
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v12 = 0;
  v8 = [(VCPFaceProcessingVersionManager *)selfCopy2 resetAnalysisStateWithError:&v12];
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
    v8 = [(VCPFaceProcessingVersionManager *)selfCopy2 _updateCurrentProcessingVersion:v3];
    v10 = v8 == 0;
  }

  objc_sync_exit(selfCopy2);
  if (v10)
  {
    return 0;
  }

  return v8;
}

@end