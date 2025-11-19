@interface CAMSmartStyleSettingsResourceLoader
+ (CGRect)cropRectFromAssetIdentifier:(id)a3;
+ (id)assetIdentifierForFilename:(id)a3 cropRect:(CGRect)a4;
+ (id)filenameFromAssetIdentifier:(id)a3;
- (BOOL)_isFileURL;
- (CAMSmartStyleSettingsResourceLoader)initWithDelegate:(id)a3 loadingQueue:(id)a4 assetIdentifier:(id)a5 logIdentifier:(id)a6;
- (CAMSmartStyleSettingsResourceLoaderDelegate)delegate;
- (CGRect)_cropRect;
- (NSString)_filename;
- (id)_compositionControllerFromStillAssetAtUrl:(id)a3 imageProperties:(id)a4;
- (void)_didCreateCompositionController:(id)a3 forFileURL:(id)a4 imageProperties:(id)a5;
- (void)_loadWithAsset:(id)a3;
- (void)_loadWithFileURL:(id)a3;
- (void)_loadingQueue_createCompositionControllerForFileURL:(id)a3;
- (void)_loadingQueue_fetchAsset;
- (void)_loadingQueue_fetchFileURL;
- (void)_setStatus:(int64_t)a3;
- (void)photoEditResourceLoadRequestResourcesAvailabilityChanged:(id)a3 previousAvailability:(int64_t)a4 currentAvailability:(int64_t)a5;
- (void)resourceLoader:(id)a3 request:(id)a4 didCompleteWithResult:(id)a5;
- (void)resourceLoader:(id)a3 request:(id)a4 downloadProgress:(double)a5;
- (void)resourceLoader:(id)a3 request:(id)a4 mediaLoadDidFailWithError:(id)a5;
- (void)startLoading;
@end

@implementation CAMSmartStyleSettingsResourceLoader

- (CAMSmartStyleSettingsResourceLoader)initWithDelegate:(id)a3 loadingQueue:(id)a4 assetIdentifier:(id)a5 logIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CAMSmartStyleSettingsResourceLoader;
  v14 = [(CAMSmartStyleSettingsResourceLoader *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_delegate, v10);
    objc_storeStrong(&v15->__resourceLoadingQueue, a4);
    objc_storeStrong(&v15->_assetIdentifier, a5);
    objc_storeStrong(&v15->_logIdentifier, a6);
    v15->_status = 0;
  }

  return v15;
}

- (void)_setStatus:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_status != a3)
  {
    self->_status = a3;
    v5 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
      v7 = v6;
      if (a3 > 4)
      {
        v8 = 0;
      }

      else
      {
        v8 = off_1E76FC788[a3];
      }

      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): status changed to %{public}@", &v10, 0x16u);
    }

    if (a3 <= 4 && ((1 << a3) & 0x1A) != 0)
    {
      v9 = [(CAMSmartStyleSettingsResourceLoader *)self delegate];
      [v9 smartStyleSettingsResourceLoaderDidFinishLoading:self];
    }
  }
}

- (BOOL)_isFileURL
{
  v2 = [(CAMSmartStyleSettingsResourceLoader *)self _filename];
  v3 = v2 != 0;

  return v3;
}

- (NSString)_filename
{
  v3 = objc_opt_class();
  v4 = [(CAMSmartStyleSettingsResourceLoader *)self assetIdentifier];
  v5 = [v3 filenameFromAssetIdentifier:v4];

  return v5;
}

- (CGRect)_cropRect
{
  v3 = objc_opt_class();
  v4 = [(CAMSmartStyleSettingsResourceLoader *)self assetIdentifier];
  [v3 cropRectFromAssetIdentifier:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)startLoading
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(CAMSmartStyleSettingsResourceLoader *)self status])
  {
    v3 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
      v5 = [(CAMSmartStyleSettingsResourceLoader *)self status];
      if (v5 > 4)
      {
        v6 = 0;
      }

      else
      {
        v6 = off_1E76FC788[v5];
      }

      *buf = 138543618;
      v10 = v4;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): ignoring call to startLoading since status is %{public}@", buf, 0x16u);
    }
  }

  else
  {
    self->__startTime = CFAbsoluteTimeGetCurrent();
    resourceLoadingQueue = self->__resourceLoadingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__CAMSmartStyleSettingsResourceLoader_startLoading__block_invoke;
    block[3] = &unk_1E76F77B0;
    block[4] = self;
    dispatch_async(resourceLoadingQueue, block);
  }
}

uint64_t __51__CAMSmartStyleSettingsResourceLoader_startLoading__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _isFileURL];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _loadingQueue_fetchFileURL];
  }

  else
  {

    return [v3 _loadingQueue_fetchAsset];
  }
}

- (void)_loadingQueue_fetchAsset
{
  v19[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->__resourceLoadingQueue);
  v3 = MEMORY[0x1E6978630];
  v4 = [(CAMSmartStyleSettingsResourceLoader *)self assetIdentifier];
  v19[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v6 = [v3 fetchAssetsWithLocalIdentifiers:v5 options:0];

  Current = CFAbsoluteTimeGetCurrent();
  startTime = self->__startTime;
  v9 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
    *buf = 138543618;
    v16 = v10;
    v17 = 2048;
    v18 = Current - startTime;
    _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): asset fetch took %.3f", buf, 0x16u);
  }

  v11 = [v6 firstObject];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__CAMSmartStyleSettingsResourceLoader__loadingQueue_fetchAsset__block_invoke;
  v13[3] = &unk_1E76F7960;
  v13[4] = self;
  v14 = v11;
  v12 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

- (void)_loadingQueue_fetchFileURL
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->__resourceLoadingQueue);
  v3 = [(CAMSmartStyleSettingsResourceLoader *)self _filename];
  v4 = [v3 pathExtension];
  v5 = [v3 stringByDeletingPathExtension];
  v6 = CAMCameraUIFrameworkBundle();
  v7 = [v6 URLForResource:v5 withExtension:v4];

  Current = CFAbsoluteTimeGetCurrent();
  startTime = self->__startTime;
  v10 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
    *buf = 138543618;
    v16 = v11;
    v17 = 2048;
    v18 = Current - startTime;
    _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): fileURL fetch took %.3f", buf, 0x16u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__CAMSmartStyleSettingsResourceLoader__loadingQueue_fetchFileURL__block_invoke;
  v13[3] = &unk_1E76F7960;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

- (void)_loadWithAsset:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69C42E0]);
    [v5 setRequireLocalResources:1];
    [v5 setVersion:1];
    [v5 setSkipLivePhotoImageAndAVAsset:1];
    [v5 setDelegate:self];
    v6 = [objc_alloc(MEMORY[0x1E69C42F0]) initWithAsset:v4 loadingQueue:self->__resourceLoadingQueue];
    [v6 setSkipDisplaySizeImage:1];
    [(CAMSmartStyleSettingsResourceLoader *)self _setStatus:2];
    [v6 enqueueRequest:v5];
    resourceLoader = self->__resourceLoader;
    self->__resourceLoader = v6;
  }

  else
  {
    v8 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): failed to load asset", &v10, 0xCu);
    }

    [(CAMSmartStyleSettingsResourceLoader *)self _setStatus:1];
  }
}

- (void)_loadWithFileURL:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    [(CAMSmartStyleSettingsResourceLoader *)self _setStatus:2];
    resourceLoadingQueue = self->__resourceLoadingQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__CAMSmartStyleSettingsResourceLoader__loadWithFileURL___block_invoke;
    v8[3] = &unk_1E76F7960;
    v8[4] = self;
    v9 = v4;
    dispatch_async(resourceLoadingQueue, v8);
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): failed to load fileURL", buf, 0xCu);
    }

    [(CAMSmartStyleSettingsResourceLoader *)self _setStatus:1];
  }
}

- (void)_loadingQueue_createCompositionControllerForFileURL:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->__resourceLoadingQueue);
  v5 = [CAMOrientationUtilities imagePropertiesFromAssetAtUrl:v4];
  v6 = [(CAMSmartStyleSettingsResourceLoader *)self _compositionControllerFromStillAssetAtUrl:v4 imageProperties:v5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91__CAMSmartStyleSettingsResourceLoader__loadingQueue_createCompositionControllerForFileURL___block_invoke;
  v10[3] = &unk_1E76F8230;
  v10[4] = self;
  v11 = v6;
  v12 = v4;
  v13 = v5;
  v7 = v5;
  v8 = v4;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

- (void)_didCreateCompositionController:(id)a3 forFileURL:(id)a4 imageProperties:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    Current = CFAbsoluteTimeGetCurrent();
    startTime = self->__startTime;
    v13 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
      v31 = 138543618;
      v32 = v14;
      v33 = 2048;
      v34 = Current - startTime;
      _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): loading fileURL took %.3f seconds", &v31, 0x16u);
    }

    v15 = [CAMSmartStyleSettingsResourceLoadResult alloc];
    [(CAMSmartStyleSettingsResourceLoader *)self _cropRect];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
    v25 = [(CAMSmartStyleSettingsResourceLoadResult *)v15 initWithCompositionController:v8 fileURL:v9 imageProperties:v10 cropRect:v24 logIdentifier:v17, v19, v21, v23];
    resourceLoadResult = self->_resourceLoadResult;
    self->_resourceLoadResult = v25;

    v27 = self;
    v28 = 3;
  }

  else
  {
    v29 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
      v31 = 138543362;
      v32 = v30;
      _os_log_impl(&dword_1A3640000, v29, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): failed to load fileURL", &v31, 0xCu);
    }

    v27 = self;
    v28 = 4;
  }

  [(CAMSmartStyleSettingsResourceLoader *)v27 _setStatus:v28];
}

- (id)_compositionControllerFromStillAssetAtUrl:(id)a3 imageProperties:(id)a4
{
  v5 = a3;
  v6 = a4;
  v24 = 0;
  v7 = *MEMORY[0x1E695DAA0];
  v23 = 0;
  v8 = [v5 getResourceValue:&v24 forKey:v7 error:&v23];
  v9 = v24;
  v10 = v23;
  if (v8)
  {
    v11 = [CAMOrientationUtilities orientationFromImageProperties:v6];
    v12 = [MEMORY[0x1E69BDF20] registeredPhotosSchemaIdentifier];
    v13 = [objc_alloc(MEMORY[0x1E69B3AA0]) initWithIdentifier:v12];
    v14 = MEMORY[0x1E69BDEF0];
    v15 = [v9 identifier];
    v16 = [v14 imageSourceWithURL:v5 type:v15 useEmbeddedPreview:0];
    [v13 setObject:v16 forKeyedSubscript:@"source"];

    [v13 setMediaType:1];
    v17 = objc_alloc(MEMORY[0x1E69B3A98]);
    v18 = [objc_alloc(MEMORY[0x1E69B3AD0]) initWithName:@"Orientation"];
    v19 = [v17 initWithIdentifier:v18];

    v20 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    [v19 setObject:v20 forKeyedSubscript:@"value"];

    [v13 setObject:v19 forKeyedSubscript:@"orientation"];
    v21 = [objc_alloc(MEMORY[0x1E69BDDE8]) initWithComposition:v13];
  }

  else
  {
    v12 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [CAMSmartStyleSettingsResourceLoader _compositionControllerFromStillAssetAtUrl:v5 imageProperties:v12];
    }

    v21 = 0;
  }

  return v21;
}

+ (id)assetIdentifierForFilename:(id)a3 cropRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = MEMORY[0x1E696AEC0];
  v10 = a3;
  v11 = [a1 _filenameCropRectDelimiter];
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v12 = NSStringFromCGRect(v16);
  v13 = [v9 stringWithFormat:@"%@/%@%@%@", @"SmartStylesOnboarding", v10, v11, v12];

  return v13;
}

+ (id)filenameFromAssetIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _filenameCropRectDelimiter];
  v6 = [v4 componentsSeparatedByString:v5];

  if ([v6 count] == 2)
  {
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (CGRect)cropRectFromAssetIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _filenameCropRectDelimiter];
  v6 = [v4 componentsSeparatedByString:v5];

  if ([v6 count] == 2)
  {
    v7 = [v6 lastObject];
    v16 = CGRectFromString(v7);
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
  }

  else
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)resourceLoader:(id)a3 request:(id)a4 didCompleteWithResult:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a5;
  Current = CFAbsoluteTimeGetCurrent();
  startTime = self->__startTime;
  v9 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
    v15 = 138543618;
    v16 = v10;
    v17 = 2048;
    v18 = Current - startTime;
    _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): loading took %.3f seconds", &v15, 0x16u);
  }

  v11 = [CAMSmartStyleSettingsResourceLoadResult alloc];
  v12 = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
  v13 = [(CAMSmartStyleSettingsResourceLoadResult *)v11 initWithResourceLoadResult:v6 logIdentifier:v12];

  resourceLoadResult = self->_resourceLoadResult;
  self->_resourceLoadResult = v13;

  [(CAMSmartStyleSettingsResourceLoader *)self _setStatus:3];
}

- (void)resourceLoader:(id)a3 request:(id)a4 mediaLoadDidFailWithError:(id)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
    v9 = 138543618;
    v10 = v8;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): failed to load resource: %{public}@", &v9, 0x16u);
  }

  [(CAMSmartStyleSettingsResourceLoader *)self _setStatus:4];
}

- (void)resourceLoader:(id)a3 request:(id)a4 downloadProgress:(double)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
    v9 = 138543618;
    v10 = v8;
    v11 = 2048;
    v12 = a5;
    _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): download progress: %.3f", &v9, 0x16u);
  }
}

- (void)photoEditResourceLoadRequestResourcesAvailabilityChanged:(id)a3 previousAvailability:(int64_t)a4 currentAvailability:(int64_t)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __137__CAMSmartStyleSettingsResourceLoader_photoEditResourceLoadRequestResourcesAvailabilityChanged_previousAvailability_currentAvailability___block_invoke;
  v5[3] = &unk_1E76FA580;
  v5[4] = self;
  v5[5] = a4;
  v5[6] = a5;
  cam_perform_on_main_asap(v5);
}

void __137__CAMSmartStyleSettingsResourceLoader_photoEditResourceLoadRequestResourcesAvailabilityChanged_previousAvailability_currentAvailability___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) logIdentifier];
    v4 = v3;
    v5 = *(a1 + 40);
    if (v5 > 4)
    {
      v6 = 0;
    }

    else
    {
      v6 = off_1E76FC7B0[v5];
    }

    v7 = *(a1 + 48);
    if (v7 > 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = off_1E76FC7B0[v7];
    }

    v9 = 138543874;
    v10 = v3;
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): availability changed from %{public}@ to %{public}@", &v9, 0x20u);
  }
}

- (CAMSmartStyleSettingsResourceLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_compositionControllerFromStillAssetAtUrl:(uint64_t)a1 imageProperties:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1A3640000, a2, OS_LOG_TYPE_DEBUG, "ResourceLoadingManager: error getting the file type for url %@", &v2, 0xCu);
}

@end