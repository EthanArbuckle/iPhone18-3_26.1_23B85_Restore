@interface VCPDefaultPhotoLibraryManager
+ (id)sharedManager;
- (VCPDefaultPhotoLibraryManager)init;
- (id)defaultPhotoLibrary;
- (void)closedefaultPhotoLibrary;
- (void)photoLibraryDidBecomeUnavailable:(id)unavailable;
@end

@implementation VCPDefaultPhotoLibraryManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VCPDefaultPhotoLibraryManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_instance_1;

  return v2;
}

- (id)defaultPhotoLibrary
{
  if ([MEMORY[0x1E69789B0] isMultiLibraryModeEnabled])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__60;
    v11 = __Block_byref_object_dispose__60;
    v12 = 0;
    queue = self->_queue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__VCPDefaultPhotoLibraryManager_defaultPhotoLibrary__block_invoke;
    v6[3] = &unk_1E834BFE8;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(queue, v6);
    mEMORY[0x1E69789B0] = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    mEMORY[0x1E69789B0] = [MEMORY[0x1E69789B0] sharedPhotoLibrary];
  }

  return mEMORY[0x1E69789B0];
}

void __52__VCPDefaultPhotoLibraryManager_defaultPhotoLibrary__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 24))
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Connecting to system photo library...", buf, 2u);
    }

    if (*(*(a1 + 32) + 16) || ([MEMORY[0x1E69789B0] systemPhotoLibraryURL], v2 = objc_claimAutoreleasedReturnValue(), v3 = *(a1 + 32), v4 = *(v3 + 16), *(v3 + 16) = v2, v4, *(*(a1 + 32) + 16)))
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Opening system photo library...", buf, 2u);
      }

      v5 = [objc_alloc(MEMORY[0x1E69789B0]) initWithPhotoLibraryURL:*(*(a1 + 32) + 16)];
      v6 = *(a1 + 32);
      v7 = *(v6 + 24);
      *(v6 + 24) = v5;

      v8 = *(*(a1 + 32) + 24);
      v15 = 0;
      v9 = [v8 openAndWaitWithUpgrade:0 error:&v15];
      v10 = v15;
      v11 = MediaAnalysisLogLevel();
      if (v9)
      {
        if (v11 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Opened system photo library", buf, 2u);
        }

        [*(*(a1 + 32) + 24) registerAvailabilityObserver:?];
      }

      else
      {
        if (v11 >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v10 description];
          *buf = 138412290;
          v17 = v12;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to open system photo library (%@)", buf, 0xCu);
        }

        v13 = *(a1 + 32);
        v14 = *(v13 + 24);
        *(v13 + 24) = 0;
      }
    }

    else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to obtain system photo library URL", buf, 2u);
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 24));
}

- (VCPDefaultPhotoLibraryManager)init
{
  v6.receiver = self;
  v6.super_class = VCPDefaultPhotoLibraryManager;
  v2 = [(VCPDefaultPhotoLibraryManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mediaanalysis.VCPDefaultPhotoLibraryManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

void __46__VCPDefaultPhotoLibraryManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = sharedManager_instance_1;
  sharedManager_instance_1 = v0;
}

- (void)closedefaultPhotoLibrary
{
  defaultPhotoLibrary = self->_defaultPhotoLibrary;
  if (defaultPhotoLibrary)
  {
    [(PHPhotoLibrary *)defaultPhotoLibrary unregisterAvailabilityObserver:self];
    [(PHPhotoLibrary *)self->_defaultPhotoLibrary close];
    v4 = self->_defaultPhotoLibrary;
    self->_defaultPhotoLibrary = 0;

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Closed Photo Library", v5, 2u);
    }
  }
}

- (void)photoLibraryDidBecomeUnavailable:(id)unavailable
{
  v10 = *MEMORY[0x1E69E9840];
  unavailableCopy = unavailable;
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = unavailableCopy;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Photo Library unavailable (%@); closing Photo Library...", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__VCPDefaultPhotoLibraryManager_photoLibraryDidBecomeUnavailable___block_invoke;
  block[3] = &unk_1E8351100;
  objc_copyWeak(&v7, buf);
  dispatch_async(queue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __66__VCPDefaultPhotoLibraryManager_photoLibraryDidBecomeUnavailable___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained closedefaultPhotoLibrary];
    WeakRetained = v2;
  }
}

@end