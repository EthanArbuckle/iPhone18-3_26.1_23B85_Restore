@interface CAMStillImageCaptureResult
- ($2825F4736939C4A6D3AD43837233062D)predictedFinalAssetPhotoDimensions;
- (CAMStillImageCaptureResult)initWithCaptureDeferredPhotoProxy:(id)a3 expectingPairedVideo:(BOOL)a4 adjustmentFilters:(id)a5 filteredPreviewSurface:(__IOSurface *)a6 shouldPersistAdjustmentSidecar:(BOOL)a7 persistenceUUID:(id)a8 coordinationInfo:(id)a9 semanticEnhancement:(int64_t)a10 error:(id)a11;
- (CAMStillImageCaptureResult)initWithCapturePhoto:(id)a3 expectingPairedVideo:(BOOL)a4 adjustmentFilters:(id)a5 filteredPreviewSurface:(__IOSurface *)a6 shouldPersistAdjustmentSidecar:(BOOL)a7 persistenceUUID:(id)a8 coordinationInfo:(id)a9 semanticEnhancement:(int64_t)a10 error:(id)a11;
- (CAMStillImageCaptureResult)initWithFullsizeSurface:(__IOSurface *)a3 size:(unint64_t)a4 unfilteredPreviewSurface:(__IOSurface *)a5 filteredPreviewSurface:(__IOSurface *)a6 metadata:(id)a7 expectingPairedVideo:(BOOL)a8 shouldPersistAdjustmentSidecar:(BOOL)a9 adjustmentFilters:(id)a10 persistenceUUID:(id)a11 coordinationInfo:(id)a12 error:(id)a13;
- (NSDictionary)compactMetadata;
- (NSString)imageGroupIdentifier;
- (id)_captureDateFromMetadata:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation CAMStillImageCaptureResult

- (NSDictionary)compactMetadata
{
  v25[8] = *MEMORY[0x1E69E9840];
  v2 = [(CAMStillImageCaptureResult *)self metadata];
  v3 = [v2 mutableCopy];

  v4 = *MEMORY[0x1E696DE30];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
  [v3 removeObjectForKey:@"{Diagnostic}"];
  [v3 removeObjectForKey:@"AddDebugInfoToUserComments"];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = *MEMORY[0x1E6990A50];
    v25[0] = *MEMORY[0x1E6990A40];
    v25[1] = v7;
    v8 = *MEMORY[0x1E6990A90];
    v25[2] = *MEMORY[0x1E6990B00];
    v25[3] = v8;
    v9 = *MEMORY[0x1E6986890];
    v25[4] = *MEMORY[0x1E6986820];
    v25[5] = v9;
    v10 = *MEMORY[0x1E6990B58];
    v25[6] = *MEMORY[0x1E6986888];
    v25[7] = v10;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:8];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v23 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          v17 = [v5 objectForKeyedSubscript:{v16, v20}];
          [v6 setObject:v17 forKeyedSubscript:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    [v3 setObject:v6 forKeyedSubscript:v4];
  }

  v18 = [v3 copy];

  return v18;
}

- (void)dealloc
{
  stillImageFullsizeSurface = self->_stillImageFullsizeSurface;
  if (stillImageFullsizeSurface)
  {
    CFRelease(stillImageFullsizeSurface);
    self->_stillImageFullsizeSurface = 0;
  }

  stillImageUnfilteredPreviewSurface = self->_stillImageUnfilteredPreviewSurface;
  if (stillImageUnfilteredPreviewSurface)
  {
    CFRelease(stillImageUnfilteredPreviewSurface);
    self->_stillImageUnfilteredPreviewSurface = 0;
  }

  stillImageFilteredPreviewSurface = self->_stillImageFilteredPreviewSurface;
  if (stillImageFilteredPreviewSurface)
  {
    CFRelease(stillImageFilteredPreviewSurface);
    self->_stillImageFilteredPreviewSurface = 0;
  }

  v6.receiver = self;
  v6.super_class = CAMStillImageCaptureResult;
  [(CAMStillImageCaptureResult *)&v6 dealloc];
}

- (CAMStillImageCaptureResult)initWithFullsizeSurface:(__IOSurface *)a3 size:(unint64_t)a4 unfilteredPreviewSurface:(__IOSurface *)a5 filteredPreviewSurface:(__IOSurface *)a6 metadata:(id)a7 expectingPairedVideo:(BOOL)a8 shouldPersistAdjustmentSidecar:(BOOL)a9 adjustmentFilters:(id)a10 persistenceUUID:(id)a11 coordinationInfo:(id)a12 error:(id)a13
{
  v18 = a7;
  v19 = a10;
  v20 = a11;
  v35 = a12;
  v34 = a13;
  v36.receiver = self;
  v36.super_class = CAMStillImageCaptureResult;
  v21 = [(CAMStillImageCaptureResult *)&v36 init];
  v22 = v21;
  if (v21)
  {
    if (a3)
    {
      v21->_stillImageFullsizeSurface = a3;
      v21->_stillImageFullsizeSurfaceSize = a4;
      CFRetain(a3);
    }

    if (a5)
    {
      v22->_stillImageUnfilteredPreviewSurface = a5;
      CFRetain(a5);
    }

    if (a6)
    {
      v22->_stillImageFilteredPreviewSurface = a6;
      CFRetain(a6);
    }

    v23 = [v18 copy];
    metadata = v22->_metadata;
    v22->_metadata = v23;

    objc_storeStrong(&v22->_error, a13);
    v22->_shouldPersistAdjustmentSidecar = a9;
    v25 = [v19 copy];
    adjustmentFilters = v22->_adjustmentFilters;
    v22->_adjustmentFilters = v25;

    v27 = [v20 copy];
    persistenceUUID = v22->_persistenceUUID;
    v22->_persistenceUUID = v27;

    objc_storeStrong(&v22->_coordinationInfo, a12);
    v22->_semanticEnhancement = 0;
    v22->_expectingPairedVideo = a8;
    v29 = [(CAMStillImageCaptureResult *)v22 _captureDateFromMetadata:v22->_metadata];
    captureDate = v22->_captureDate;
    v22->_captureDate = v29;

    v31 = v22;
  }

  return v22;
}

- (CAMStillImageCaptureResult)initWithCapturePhoto:(id)a3 expectingPairedVideo:(BOOL)a4 adjustmentFilters:(id)a5 filteredPreviewSurface:(__IOSurface *)a6 shouldPersistAdjustmentSidecar:(BOOL)a7 persistenceUUID:(id)a8 coordinationInfo:(id)a9 semanticEnhancement:(int64_t)a10 error:(id)a11
{
  v17 = a3;
  v18 = a5;
  v19 = a8;
  v20 = a9;
  v38 = a11;
  v39.receiver = self;
  v39.super_class = CAMStillImageCaptureResult;
  v21 = [(CAMStillImageCaptureResult *)&v39 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_capturePhoto, a3);
    v23 = [v17 metadata];
    v24 = [v23 copy];
    metadata = v22->_metadata;
    v22->_metadata = v24;

    objc_storeStrong(&v22->_error, a11);
    v26 = [v18 copy];
    adjustmentFilters = v22->_adjustmentFilters;
    v22->_adjustmentFilters = v26;

    v28 = [v19 copy];
    persistenceUUID = v22->_persistenceUUID;
    v22->_persistenceUUID = v28;

    objc_storeStrong(&v22->_coordinationInfo, a9);
    v22->_shouldPersistAdjustmentSidecar = a7;
    v22->_expectingPairedVideo = a4;
    v22->_semanticEnhancement = a10;
    v30 = [(CAMStillImageCaptureResult *)v22 _captureDateFromMetadata:v22->_metadata];
    captureDate = v22->_captureDate;
    v22->_captureDate = v30;

    v32 = [(AVCapturePhoto *)v22->_capturePhoto portraitMetadata];
    if (v32)
    {
      v33 = +[CAMCaptureCapabilities capabilities];
      v22->_representsDeferredFilteredProxy = [v33 isDeferredPortraitRenderingSupported];
    }

    else
    {
      v22->_representsDeferredFilteredProxy = 0;
    }

    if (a6)
    {
      v22->_stillImageFilteredPreviewSurface = a6;
      CFRetain(a6);
    }

    IOSurface = CVPixelBufferGetIOSurface([v17 previewPixelBuffer]);
    if (IOSurface)
    {
      v22->_stillImageUnfilteredPreviewSurface = IOSurface;
      CFRetain(IOSurface);
    }

    v35 = v22;
  }

  return v22;
}

- (CAMStillImageCaptureResult)initWithCaptureDeferredPhotoProxy:(id)a3 expectingPairedVideo:(BOOL)a4 adjustmentFilters:(id)a5 filteredPreviewSurface:(__IOSurface *)a6 shouldPersistAdjustmentSidecar:(BOOL)a7 persistenceUUID:(id)a8 coordinationInfo:(id)a9 semanticEnhancement:(int64_t)a10 error:(id)a11
{
  v12 = a7;
  v15 = a4;
  v17 = a3;
  v18 = [(CAMStillImageCaptureResult *)self initWithCapturePhoto:v17 expectingPairedVideo:v15 adjustmentFilters:a5 filteredPreviewSurface:a6 shouldPersistAdjustmentSidecar:v12 persistenceUUID:a8 coordinationInfo:a9 semanticEnhancement:a10 error:a11];
  v19 = [v17 deferredPhotoIdentifier];

  deferredPhotoIdentifier = v18->_deferredPhotoIdentifier;
  v18->_deferredPhotoIdentifier = v19;

  return v18;
}

- (id)_captureDateFromMetadata:(id)a3
{
  v3 = [CAMCaptureMetadataUtilities preciseCaptureDateFromStillImageMetadata:self->_metadata];
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF00] date];
  }

  return v3;
}

- (NSString)imageGroupIdentifier
{
  v2 = [(CAMStillImageCaptureResult *)self metadata];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6990A90]];

  return v4;
}

- ($2825F4736939C4A6D3AD43837233062D)predictedFinalAssetPhotoDimensions
{
  if (self->_deferredPhotoIdentifier || [(CAMStillImageCaptureResult *)self representsDeferredFilteredProxy])
  {
    v3 = [(AVCapturePhoto *)self->_capturePhoto resolvedSettings];
    v4 = [v3 photoDimensions];
    v5 = v4;
    v6 = HIDWORD(v4);
  }

  else
  {
    v3 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:*MEMORY[0x1E696D9B0]];
    v8 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DAA8]];
    v9 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696DAB0]];
    v5 = [v8 intValue];
    v6 = [v9 intValue];
  }

  return (v5 | (v6 << 32));
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CAMStillImageCaptureResult *)self error];
  v6 = [(CAMStillImageCaptureResult *)self captureDate];
  v7 = [(CAMStillImageCaptureResult *)self captureDate];
  [v7 timeIntervalSince1970];
  v9 = [v3 stringWithFormat:@"<%@ error:%@, captureDate:%@ (%.3f)>", v4, v5, v6, v8];

  return v9;
}

@end