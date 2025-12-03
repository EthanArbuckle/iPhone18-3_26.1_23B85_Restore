@interface CAMStillImageCaptureResult
- ($2825F4736939C4A6D3AD43837233062D)predictedFinalAssetPhotoDimensions;
- (CAMStillImageCaptureResult)initWithCaptureDeferredPhotoProxy:(id)proxy expectingPairedVideo:(BOOL)video adjustmentFilters:(id)filters filteredPreviewSurface:(__IOSurface *)surface shouldPersistAdjustmentSidecar:(BOOL)sidecar persistenceUUID:(id)d coordinationInfo:(id)info semanticEnhancement:(int64_t)self0 error:(id)self1;
- (CAMStillImageCaptureResult)initWithCapturePhoto:(id)photo expectingPairedVideo:(BOOL)video adjustmentFilters:(id)filters filteredPreviewSurface:(__IOSurface *)surface shouldPersistAdjustmentSidecar:(BOOL)sidecar persistenceUUID:(id)d coordinationInfo:(id)info semanticEnhancement:(int64_t)self0 error:(id)self1;
- (CAMStillImageCaptureResult)initWithFullsizeSurface:(__IOSurface *)surface size:(unint64_t)size unfilteredPreviewSurface:(__IOSurface *)previewSurface filteredPreviewSurface:(__IOSurface *)filteredPreviewSurface metadata:(id)metadata expectingPairedVideo:(BOOL)video shouldPersistAdjustmentSidecar:(BOOL)sidecar adjustmentFilters:(id)self0 persistenceUUID:(id)self1 coordinationInfo:(id)self2 error:(id)self3;
- (NSDictionary)compactMetadata;
- (NSString)imageGroupIdentifier;
- (id)_captureDateFromMetadata:(id)metadata;
- (id)description;
- (void)dealloc;
@end

@implementation CAMStillImageCaptureResult

- (NSDictionary)compactMetadata
{
  v25[8] = *MEMORY[0x1E69E9840];
  metadata = [(CAMStillImageCaptureResult *)self metadata];
  v3 = [metadata mutableCopy];

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

- (CAMStillImageCaptureResult)initWithFullsizeSurface:(__IOSurface *)surface size:(unint64_t)size unfilteredPreviewSurface:(__IOSurface *)previewSurface filteredPreviewSurface:(__IOSurface *)filteredPreviewSurface metadata:(id)metadata expectingPairedVideo:(BOOL)video shouldPersistAdjustmentSidecar:(BOOL)sidecar adjustmentFilters:(id)self0 persistenceUUID:(id)self1 coordinationInfo:(id)self2 error:(id)self3
{
  metadataCopy = metadata;
  filtersCopy = filters;
  dCopy = d;
  infoCopy = info;
  errorCopy = error;
  v36.receiver = self;
  v36.super_class = CAMStillImageCaptureResult;
  v21 = [(CAMStillImageCaptureResult *)&v36 init];
  v22 = v21;
  if (v21)
  {
    if (surface)
    {
      v21->_stillImageFullsizeSurface = surface;
      v21->_stillImageFullsizeSurfaceSize = size;
      CFRetain(surface);
    }

    if (previewSurface)
    {
      v22->_stillImageUnfilteredPreviewSurface = previewSurface;
      CFRetain(previewSurface);
    }

    if (filteredPreviewSurface)
    {
      v22->_stillImageFilteredPreviewSurface = filteredPreviewSurface;
      CFRetain(filteredPreviewSurface);
    }

    v23 = [metadataCopy copy];
    metadata = v22->_metadata;
    v22->_metadata = v23;

    objc_storeStrong(&v22->_error, error);
    v22->_shouldPersistAdjustmentSidecar = sidecar;
    v25 = [filtersCopy copy];
    adjustmentFilters = v22->_adjustmentFilters;
    v22->_adjustmentFilters = v25;

    v27 = [dCopy copy];
    persistenceUUID = v22->_persistenceUUID;
    v22->_persistenceUUID = v27;

    objc_storeStrong(&v22->_coordinationInfo, info);
    v22->_semanticEnhancement = 0;
    v22->_expectingPairedVideo = video;
    v29 = [(CAMStillImageCaptureResult *)v22 _captureDateFromMetadata:v22->_metadata];
    captureDate = v22->_captureDate;
    v22->_captureDate = v29;

    v31 = v22;
  }

  return v22;
}

- (CAMStillImageCaptureResult)initWithCapturePhoto:(id)photo expectingPairedVideo:(BOOL)video adjustmentFilters:(id)filters filteredPreviewSurface:(__IOSurface *)surface shouldPersistAdjustmentSidecar:(BOOL)sidecar persistenceUUID:(id)d coordinationInfo:(id)info semanticEnhancement:(int64_t)self0 error:(id)self1
{
  photoCopy = photo;
  filtersCopy = filters;
  dCopy = d;
  infoCopy = info;
  errorCopy = error;
  v39.receiver = self;
  v39.super_class = CAMStillImageCaptureResult;
  v21 = [(CAMStillImageCaptureResult *)&v39 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_capturePhoto, photo);
    metadata = [photoCopy metadata];
    v24 = [metadata copy];
    metadata = v22->_metadata;
    v22->_metadata = v24;

    objc_storeStrong(&v22->_error, error);
    v26 = [filtersCopy copy];
    adjustmentFilters = v22->_adjustmentFilters;
    v22->_adjustmentFilters = v26;

    v28 = [dCopy copy];
    persistenceUUID = v22->_persistenceUUID;
    v22->_persistenceUUID = v28;

    objc_storeStrong(&v22->_coordinationInfo, info);
    v22->_shouldPersistAdjustmentSidecar = sidecar;
    v22->_expectingPairedVideo = video;
    v22->_semanticEnhancement = enhancement;
    v30 = [(CAMStillImageCaptureResult *)v22 _captureDateFromMetadata:v22->_metadata];
    captureDate = v22->_captureDate;
    v22->_captureDate = v30;

    portraitMetadata = [(AVCapturePhoto *)v22->_capturePhoto portraitMetadata];
    if (portraitMetadata)
    {
      v33 = +[CAMCaptureCapabilities capabilities];
      v22->_representsDeferredFilteredProxy = [v33 isDeferredPortraitRenderingSupported];
    }

    else
    {
      v22->_representsDeferredFilteredProxy = 0;
    }

    if (surface)
    {
      v22->_stillImageFilteredPreviewSurface = surface;
      CFRetain(surface);
    }

    IOSurface = CVPixelBufferGetIOSurface([photoCopy previewPixelBuffer]);
    if (IOSurface)
    {
      v22->_stillImageUnfilteredPreviewSurface = IOSurface;
      CFRetain(IOSurface);
    }

    v35 = v22;
  }

  return v22;
}

- (CAMStillImageCaptureResult)initWithCaptureDeferredPhotoProxy:(id)proxy expectingPairedVideo:(BOOL)video adjustmentFilters:(id)filters filteredPreviewSurface:(__IOSurface *)surface shouldPersistAdjustmentSidecar:(BOOL)sidecar persistenceUUID:(id)d coordinationInfo:(id)info semanticEnhancement:(int64_t)self0 error:(id)self1
{
  sidecarCopy = sidecar;
  videoCopy = video;
  proxyCopy = proxy;
  v18 = [(CAMStillImageCaptureResult *)self initWithCapturePhoto:proxyCopy expectingPairedVideo:videoCopy adjustmentFilters:filters filteredPreviewSurface:surface shouldPersistAdjustmentSidecar:sidecarCopy persistenceUUID:d coordinationInfo:info semanticEnhancement:enhancement error:error];
  deferredPhotoIdentifier = [proxyCopy deferredPhotoIdentifier];

  deferredPhotoIdentifier = v18->_deferredPhotoIdentifier;
  v18->_deferredPhotoIdentifier = deferredPhotoIdentifier;

  return v18;
}

- (id)_captureDateFromMetadata:(id)metadata
{
  date = [CAMCaptureMetadataUtilities preciseCaptureDateFromStillImageMetadata:self->_metadata];
  if (!date)
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  return date;
}

- (NSString)imageGroupIdentifier
{
  metadata = [(CAMStillImageCaptureResult *)self metadata];
  v3 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6990A90]];

  return v4;
}

- ($2825F4736939C4A6D3AD43837233062D)predictedFinalAssetPhotoDimensions
{
  if (self->_deferredPhotoIdentifier || [(CAMStillImageCaptureResult *)self representsDeferredFilteredProxy])
  {
    resolvedSettings = [(AVCapturePhoto *)self->_capturePhoto resolvedSettings];
    photoDimensions = [resolvedSettings photoDimensions];
    intValue = photoDimensions;
    intValue2 = HIDWORD(photoDimensions);
  }

  else
  {
    resolvedSettings = [(NSDictionary *)self->_metadata objectForKeyedSubscript:*MEMORY[0x1E696D9B0]];
    v8 = [resolvedSettings objectForKeyedSubscript:*MEMORY[0x1E696DAA8]];
    v9 = [resolvedSettings objectForKeyedSubscript:*MEMORY[0x1E696DAB0]];
    intValue = [v8 intValue];
    intValue2 = [v9 intValue];
  }

  return (intValue | (intValue2 << 32));
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  error = [(CAMStillImageCaptureResult *)self error];
  captureDate = [(CAMStillImageCaptureResult *)self captureDate];
  captureDate2 = [(CAMStillImageCaptureResult *)self captureDate];
  [captureDate2 timeIntervalSince1970];
  v9 = [v3 stringWithFormat:@"<%@ error:%@, captureDate:%@ (%.3f)>", v4, error, captureDate, v8];

  return v9;
}

@end