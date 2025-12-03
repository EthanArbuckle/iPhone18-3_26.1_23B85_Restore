@interface CAMSmartStyleSettingsResourceLoader
+ (CGRect)cropRectFromAssetIdentifier:(id)identifier;
+ (id)assetIdentifierForFilename:(id)filename cropRect:(CGRect)rect;
+ (id)filenameFromAssetIdentifier:(id)identifier;
- (BOOL)_isFileURL;
- (CAMSmartStyleSettingsResourceLoader)initWithDelegate:(id)delegate loadingQueue:(id)queue assetIdentifier:(id)identifier logIdentifier:(id)logIdentifier;
- (CAMSmartStyleSettingsResourceLoaderDelegate)delegate;
- (CGRect)_cropRect;
- (NSString)_filename;
- (id)_compositionControllerFromStillAssetAtUrl:(id)url imageProperties:(id)properties;
- (void)_didCreateCompositionController:(id)controller forFileURL:(id)l imageProperties:(id)properties;
- (void)_loadWithAsset:(id)asset;
- (void)_loadWithFileURL:(id)l;
- (void)_loadingQueue_createCompositionControllerForFileURL:(id)l;
- (void)_loadingQueue_fetchAsset;
- (void)_loadingQueue_fetchFileURL;
- (void)_setStatus:(int64_t)status;
- (void)photoEditResourceLoadRequestResourcesAvailabilityChanged:(id)changed previousAvailability:(int64_t)availability currentAvailability:(int64_t)currentAvailability;
- (void)resourceLoader:(id)loader request:(id)request didCompleteWithResult:(id)result;
- (void)resourceLoader:(id)loader request:(id)request downloadProgress:(double)progress;
- (void)resourceLoader:(id)loader request:(id)request mediaLoadDidFailWithError:(id)error;
- (void)startLoading;
@end

@implementation CAMSmartStyleSettingsResourceLoader

- (CAMSmartStyleSettingsResourceLoader)initWithDelegate:(id)delegate loadingQueue:(id)queue assetIdentifier:(id)identifier logIdentifier:(id)logIdentifier
{
  delegateCopy = delegate;
  queueCopy = queue;
  identifierCopy = identifier;
  logIdentifierCopy = logIdentifier;
  v17.receiver = self;
  v17.super_class = CAMSmartStyleSettingsResourceLoader;
  v14 = [(CAMSmartStyleSettingsResourceLoader *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_delegate, delegateCopy);
    objc_storeStrong(&v15->__resourceLoadingQueue, queue);
    objc_storeStrong(&v15->_assetIdentifier, identifier);
    objc_storeStrong(&v15->_logIdentifier, logIdentifier);
    v15->_status = 0;
  }

  return v15;
}

- (void)_setStatus:(int64_t)status
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_status != status)
  {
    self->_status = status;
    v5 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
      v7 = logIdentifier;
      if (status > 4)
      {
        v8 = 0;
      }

      else
      {
        v8 = off_1E76FC788[status];
      }

      v10 = 138543618;
      v11 = logIdentifier;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): status changed to %{public}@", &v10, 0x16u);
    }

    if (status <= 4 && ((1 << status) & 0x1A) != 0)
    {
      delegate = [(CAMSmartStyleSettingsResourceLoader *)self delegate];
      [delegate smartStyleSettingsResourceLoaderDidFinishLoading:self];
    }
  }
}

- (BOOL)_isFileURL
{
  _filename = [(CAMSmartStyleSettingsResourceLoader *)self _filename];
  v3 = _filename != 0;

  return v3;
}

- (NSString)_filename
{
  v3 = objc_opt_class();
  assetIdentifier = [(CAMSmartStyleSettingsResourceLoader *)self assetIdentifier];
  v5 = [v3 filenameFromAssetIdentifier:assetIdentifier];

  return v5;
}

- (CGRect)_cropRect
{
  v3 = objc_opt_class();
  assetIdentifier = [(CAMSmartStyleSettingsResourceLoader *)self assetIdentifier];
  [v3 cropRectFromAssetIdentifier:assetIdentifier];
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
      logIdentifier = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
      status = [(CAMSmartStyleSettingsResourceLoader *)self status];
      if (status > 4)
      {
        v6 = 0;
      }

      else
      {
        v6 = off_1E76FC788[status];
      }

      *buf = 138543618;
      v10 = logIdentifier;
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
  assetIdentifier = [(CAMSmartStyleSettingsResourceLoader *)self assetIdentifier];
  v19[0] = assetIdentifier;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v6 = [v3 fetchAssetsWithLocalIdentifiers:v5 options:0];

  Current = CFAbsoluteTimeGetCurrent();
  startTime = self->__startTime;
  v9 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
    *buf = 138543618;
    v16 = logIdentifier;
    v17 = 2048;
    v18 = Current - startTime;
    _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): asset fetch took %.3f", buf, 0x16u);
  }

  firstObject = [v6 firstObject];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__CAMSmartStyleSettingsResourceLoader__loadingQueue_fetchAsset__block_invoke;
  v13[3] = &unk_1E76F7960;
  v13[4] = self;
  v14 = firstObject;
  v12 = firstObject;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

- (void)_loadingQueue_fetchFileURL
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->__resourceLoadingQueue);
  _filename = [(CAMSmartStyleSettingsResourceLoader *)self _filename];
  pathExtension = [_filename pathExtension];
  stringByDeletingPathExtension = [_filename stringByDeletingPathExtension];
  v6 = CAMCameraUIFrameworkBundle();
  v7 = [v6 URLForResource:stringByDeletingPathExtension withExtension:pathExtension];

  Current = CFAbsoluteTimeGetCurrent();
  startTime = self->__startTime;
  v10 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
    *buf = 138543618;
    v16 = logIdentifier;
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

- (void)_loadWithAsset:(id)asset
{
  v12 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (assetCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69C42E0]);
    [v5 setRequireLocalResources:1];
    [v5 setVersion:1];
    [v5 setSkipLivePhotoImageAndAVAsset:1];
    [v5 setDelegate:self];
    v6 = [objc_alloc(MEMORY[0x1E69C42F0]) initWithAsset:assetCopy loadingQueue:self->__resourceLoadingQueue];
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
      logIdentifier = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
      v10 = 138543362;
      v11 = logIdentifier;
      _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): failed to load asset", &v10, 0xCu);
    }

    [(CAMSmartStyleSettingsResourceLoader *)self _setStatus:1];
  }
}

- (void)_loadWithFileURL:(id)l
{
  v12 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (lCopy)
  {
    [(CAMSmartStyleSettingsResourceLoader *)self _setStatus:2];
    resourceLoadingQueue = self->__resourceLoadingQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__CAMSmartStyleSettingsResourceLoader__loadWithFileURL___block_invoke;
    v8[3] = &unk_1E76F7960;
    v8[4] = self;
    v9 = lCopy;
    dispatch_async(resourceLoadingQueue, v8);
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
      *buf = 138543362;
      v11 = logIdentifier;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): failed to load fileURL", buf, 0xCu);
    }

    [(CAMSmartStyleSettingsResourceLoader *)self _setStatus:1];
  }
}

- (void)_loadingQueue_createCompositionControllerForFileURL:(id)l
{
  lCopy = l;
  dispatch_assert_queue_V2(self->__resourceLoadingQueue);
  v5 = [CAMOrientationUtilities imagePropertiesFromAssetAtUrl:lCopy];
  v6 = [(CAMSmartStyleSettingsResourceLoader *)self _compositionControllerFromStillAssetAtUrl:lCopy imageProperties:v5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91__CAMSmartStyleSettingsResourceLoader__loadingQueue_createCompositionControllerForFileURL___block_invoke;
  v10[3] = &unk_1E76F8230;
  v10[4] = self;
  v11 = v6;
  v12 = lCopy;
  v13 = v5;
  v7 = v5;
  v8 = lCopy;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

- (void)_didCreateCompositionController:(id)controller forFileURL:(id)l imageProperties:(id)properties
{
  v35 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  lCopy = l;
  propertiesCopy = properties;
  if (controllerCopy)
  {
    Current = CFAbsoluteTimeGetCurrent();
    startTime = self->__startTime;
    v13 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
      v31 = 138543618;
      v32 = logIdentifier;
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
    logIdentifier2 = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
    v25 = [(CAMSmartStyleSettingsResourceLoadResult *)v15 initWithCompositionController:controllerCopy fileURL:lCopy imageProperties:propertiesCopy cropRect:logIdentifier2 logIdentifier:v17, v19, v21, v23];
    resourceLoadResult = self->_resourceLoadResult;
    self->_resourceLoadResult = v25;

    selfCopy2 = self;
    v28 = 3;
  }

  else
  {
    v29 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier3 = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
      v31 = 138543362;
      v32 = logIdentifier3;
      _os_log_impl(&dword_1A3640000, v29, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): failed to load fileURL", &v31, 0xCu);
    }

    selfCopy2 = self;
    v28 = 4;
  }

  [(CAMSmartStyleSettingsResourceLoader *)selfCopy2 _setStatus:v28];
}

- (id)_compositionControllerFromStillAssetAtUrl:(id)url imageProperties:(id)properties
{
  urlCopy = url;
  propertiesCopy = properties;
  v24 = 0;
  v7 = *MEMORY[0x1E695DAA0];
  v23 = 0;
  v8 = [urlCopy getResourceValue:&v24 forKey:v7 error:&v23];
  v9 = v24;
  v10 = v23;
  if (v8)
  {
    v11 = [CAMOrientationUtilities orientationFromImageProperties:propertiesCopy];
    registeredPhotosSchemaIdentifier = [MEMORY[0x1E69BDF20] registeredPhotosSchemaIdentifier];
    v13 = [objc_alloc(MEMORY[0x1E69B3AA0]) initWithIdentifier:registeredPhotosSchemaIdentifier];
    v14 = MEMORY[0x1E69BDEF0];
    identifier = [v9 identifier];
    v16 = [v14 imageSourceWithURL:urlCopy type:identifier useEmbeddedPreview:0];
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
    registeredPhotosSchemaIdentifier = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(registeredPhotosSchemaIdentifier, OS_LOG_TYPE_DEBUG))
    {
      [CAMSmartStyleSettingsResourceLoader _compositionControllerFromStillAssetAtUrl:urlCopy imageProperties:registeredPhotosSchemaIdentifier];
    }

    v21 = 0;
  }

  return v21;
}

+ (id)assetIdentifierForFilename:(id)filename cropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = MEMORY[0x1E696AEC0];
  filenameCopy = filename;
  _filenameCropRectDelimiter = [self _filenameCropRectDelimiter];
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v12 = NSStringFromCGRect(v16);
  v13 = [v9 stringWithFormat:@"%@/%@%@%@", @"SmartStylesOnboarding", filenameCopy, _filenameCropRectDelimiter, v12];

  return v13;
}

+ (id)filenameFromAssetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _filenameCropRectDelimiter = [self _filenameCropRectDelimiter];
  v6 = [identifierCopy componentsSeparatedByString:_filenameCropRectDelimiter];

  if ([v6 count] == 2)
  {
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (CGRect)cropRectFromAssetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _filenameCropRectDelimiter = [self _filenameCropRectDelimiter];
  v6 = [identifierCopy componentsSeparatedByString:_filenameCropRectDelimiter];

  if ([v6 count] == 2)
  {
    lastObject = [v6 lastObject];
    v16 = CGRectFromString(lastObject);
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

- (void)resourceLoader:(id)loader request:(id)request didCompleteWithResult:(id)result
{
  v19 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  Current = CFAbsoluteTimeGetCurrent();
  startTime = self->__startTime;
  v9 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
    v15 = 138543618;
    v16 = logIdentifier;
    v17 = 2048;
    v18 = Current - startTime;
    _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): loading took %.3f seconds", &v15, 0x16u);
  }

  v11 = [CAMSmartStyleSettingsResourceLoadResult alloc];
  logIdentifier2 = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
  v13 = [(CAMSmartStyleSettingsResourceLoadResult *)v11 initWithResourceLoadResult:resultCopy logIdentifier:logIdentifier2];

  resourceLoadResult = self->_resourceLoadResult;
  self->_resourceLoadResult = v13;

  [(CAMSmartStyleSettingsResourceLoader *)self _setStatus:3];
}

- (void)resourceLoader:(id)loader request:(id)request mediaLoadDidFailWithError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v7 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
    v9 = 138543618;
    v10 = logIdentifier;
    v11 = 2114;
    v12 = errorCopy;
    _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): failed to load resource: %{public}@", &v9, 0x16u);
  }

  [(CAMSmartStyleSettingsResourceLoader *)self _setStatus:4];
}

- (void)resourceLoader:(id)loader request:(id)request downloadProgress:(double)progress
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = [(CAMSmartStyleSettingsResourceLoader *)self logIdentifier];
    v9 = 138543618;
    v10 = logIdentifier;
    v11 = 2048;
    progressCopy = progress;
    _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "ResourceLoader (%{public}@): download progress: %.3f", &v9, 0x16u);
  }
}

- (void)photoEditResourceLoadRequestResourcesAvailabilityChanged:(id)changed previousAvailability:(int64_t)availability currentAvailability:(int64_t)currentAvailability
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __137__CAMSmartStyleSettingsResourceLoader_photoEditResourceLoadRequestResourcesAvailabilityChanged_previousAvailability_currentAvailability___block_invoke;
  v5[3] = &unk_1E76FA580;
  v5[4] = self;
  v5[5] = availability;
  v5[6] = currentAvailability;
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