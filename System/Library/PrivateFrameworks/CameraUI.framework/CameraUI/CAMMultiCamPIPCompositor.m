@interface CAMMultiCamPIPCompositor
- (BOOL)_pipFrameEqualsMostRecentlyAdded:(id)a3;
- (CAMMultiCamPIPCompositor)initWithPictureInPictureRotationAngle:(int)a3;
- (CGRect)_lastCompositedPictureInPictureFrameForMotionBlur;
- (id)_applyMaskAndBorderToImage:(id)a3 cornerRadius:(double)a4 borderWidth:(double)a5 borderColor:(CGColor *)a6;
- (id)_compositePrimaryGainMapImage:(id)a3 pipGainMapImage:(id)a4 primarySDRImage:(id)a5 pipSDRImage:(id)a6 compositeSDRImage:(id)a7 pipFrame:(CGRect)a8 pipCornerRadius:(double)a9 pipBorderWidth:(double)a10 pipBorderColor:(CGColor *)a11 mirrorPIP:(BOOL)a12 captureOrientation:(int64_t)a13;
- (id)_compositePrimaryImage:(id)a3 pipImage:(id)a4 pipFrame:(CGRect)a5 pipCornerRadius:(double)a6 pipBorderWidth:(double)a7 pipBorderColor:(CGColor *)a8 mirrorPIP:(BOOL)a9 captureOrientation:(int64_t)a10 motionBlurAngle:(float)a11 motionBlurRadius:(float)a12 debugColorDuplicatedPrimaryImage:(BOOL)a13 debugColorDuplicatedPIPImage:(BOOL)a14;
- (id)_cropPIP:(id)a3 toSizeAspectRatioIfNecessary:(CGSize)a4;
- (id)_debugImageWithDuplicatedColorTint:(id)a3;
- (id)_pipMetricsForCompositingClosestToTimestamp:(id *)a3;
- (id)_scaledPIPMetrics:(id)a3 toPrimaryImageSize:(CGSize)a4;
- (id)_sortedPIPTimestamps;
- (void)_calculateMotionBlurAngle:(float *)a3 motionBlurRadius:(float *)a4 forPictureInPictureFrame:(CGRect)a5 fromPictureInPictureFrame:(CGRect)a6;
- (void)compositeWithCompositingData:(id)a3 strategy:(int64_t)a4 captureOrientation:(int64_t)a5 mirrorPIP:(BOOL)a6;
- (void)prepareForCompositing;
- (void)resetCompositingState:(BOOL)a3;
- (void)setMotionBlurDisabled:(BOOL)a3;
- (void)setPictureInPictureMetrics:(id)a3;
- (void)set_debugLastCompositedMovieFilePrimaryBufferPTS:(id *)a3;
- (void)set_debugLastCompositedMovieFileSecondaryBufferPTS:(id *)a3;
- (void)set_mostRecentlyAddedPIPMetricsTimestamp:(id *)a3;
@end

@implementation CAMMultiCamPIPCompositor

- (CAMMultiCamPIPCompositor)initWithPictureInPictureRotationAngle:(int)a3
{
  v63[1] = *MEMORY[0x1E69E9840];
  v52.receiver = self;
  v52.super_class = CAMMultiCamPIPCompositor;
  v4 = [(CAMMultiCamPIPCompositor *)&v52 init];
  v5 = v4;
  if (v4)
  {
    v4->__pipRotationAngle = a3;
    v6 = MTLCreateSystemDefaultDevice();
    metalDevice = v5->__metalDevice;
    v5->__metalDevice = v6;

    v8 = [(MTLDevice *)v5->__metalDevice newCommandQueue];
    commandQueue = v5->__commandQueue;
    v5->__commandQueue = v8;

    v10 = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentUseCoreImageCVTextureCache"];
    v5->__useCoreImageCVTextureCache = v10;
    if (v10)
    {
      v62 = *MEMORY[0x1E6966000];
      v63[0] = &unk_1F16C8CE8;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
      CVMetalTextureCacheCreate(*MEMORY[0x1E695E480], v11, v5->__metalDevice, 0, &v5->__textureCache);
    }

    v12 = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMFeatureDevelopmentUseCoreImageSurfacePool" defaultValue:1];
    v5->__useCoreImageSurfacePool = v12;
    v13 = MEMORY[0x1E695E118];
    if (v12)
    {
      v14 = *MEMORY[0x1E696CF80];
      v60[0] = *MEMORY[0x1E696CF88];
      v60[1] = v14;
      v61[0] = MEMORY[0x1E695E118];
      v57 = *MEMORY[0x1E696CE60];
      v58 = &unk_1F16C8240;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v59 = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
      v61[1] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];

      v18 = [objc_alloc(MEMORY[0x1E696CDF8]) initWithProperties:v17];
      surfaceMemoryPool = v5->__surfaceMemoryPool;
      v5->__surfaceMemoryPool = v18;
    }

    v20 = MEMORY[0x1E695DF90];
    v21 = *MEMORY[0x1E695F7F0];
    v22 = MEMORY[0x1E695E110];
    v23 = *MEMORY[0x1E695F848];
    v55[0] = *MEMORY[0x1E695F7F0];
    v55[1] = v23;
    v56[0] = MEMORY[0x1E695E110];
    v56[1] = v13;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
    v25 = [v20 dictionaryWithDictionary:v24];

    if (v5->__useCoreImageCVTextureCache)
    {
      [v25 setObject:v5->__textureCache forKeyedSubscript:*MEMORY[0x1E695F7E8]];
    }

    if (v5->__useCoreImageSurfacePool)
    {
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IOSurfaceMemoryPool poolId](v5->__surfaceMemoryPool, "poolId")}];
      [v25 setObject:v26 forKeyedSubscript:*MEMORY[0x1E695F808]];
    }

    v27 = MEMORY[0x1E695F620];
    v28 = CAMCameraUIFrameworkBundle();
    v29 = [v28 bundleURL];
    [v27 loadArchiveWithName:@"FRSVCoreImageArchive" fromURL:v29];

    v30 = +[CAMCaptureCapabilities capabilities];
    if ([v30 isFrontRearSimultaneousVideoFrontCameraHDR10Supported])
    {
      v31 = [MEMORY[0x1E695DFB0] null];
      v32 = *MEMORY[0x1E695F868];
      [v25 setObject:v31 forKeyedSubscript:*MEMORY[0x1E695F868]];
    }

    else
    {
      v32 = *MEMORY[0x1E695F868];
    }

    v33 = [MEMORY[0x1E695F620] contextWithMTLDevice:v5->__metalDevice options:v25];
    ciContext = v5->__ciContext;
    v5->__ciContext = v33;

    v35 = MEMORY[0x1E695DF90];
    v53[0] = v21;
    v53[1] = v23;
    v54[0] = v22;
    v54[1] = MEMORY[0x1E695E118];
    v53[2] = v32;
    v36 = [MEMORY[0x1E695DFB0] null];
    v54[2] = v36;
    v53[3] = *MEMORY[0x1E695F838];
    v37 = [MEMORY[0x1E695DFB0] null];
    v54[3] = v37;
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:4];
    v39 = [v35 dictionaryWithDictionary:v38];

    v40 = [MEMORY[0x1E695F620] contextWithMTLDevice:v5->__metalDevice options:v39];
    gainMapCIContext = v5->__gainMapCIContext;
    v5->__gainMapCIContext = v40;

    [CAMPreferencesUtilities doubleForKey:@"CAMFeatureDevelopmentFrontRearSimultaneousVideoPIPMetricsMaxCapacity" applicationID:@"com.apple.camera" defaultValue:600.0];
    v5->__pipMetricsMaxCapacity = v42;
    v43 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v5->__pipMetricsMaxCapacity];
    pipMetricsByTimestamp = v5->__pipMetricsByTimestamp;
    v5->__pipMetricsByTimestamp = v43;

    v45 = MEMORY[0x1E6960C70];
    v51 = *MEMORY[0x1E6960C70];
    *&v5->$95D729B680665BEAEFA1D6FCA8238556::value = *MEMORY[0x1E6960C70];
    v46 = *(v45 + 16);
    v47 = MEMORY[0x1E695F050];
    v5->$95D729B680665BEAEFA1D6FCA8238556::epoch = v46;
    v48 = v47[1];
    v5->__lastCompositedPictureInPictureFrameForMotionBlur.origin = *v47;
    v5->__lastCompositedPictureInPictureFrameForMotionBlur.size = v48;
    [CAMPreferencesUtilities doubleForKey:@"CAMFeatureDevelopmentFrontRearSimultaneousVideoPIPMaxBlurRadius" applicationID:@"com.apple.camera" defaultValue:240.0];
    v5->__pipMaxBlurRadius = v49;
    if ([v30 isInternalInstall])
    {
      v5->__debugColorDuplicatedMovieFileBuffers = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMDebugFrontRearSimultaneousVideoColorDuplicatedMovieFileBuffers"];
      *&v5->$95D729B680665BEAEFA1D6FCA8238556::value = v51;
      v5->$95D729B680665BEAEFA1D6FCA8238556::epoch = v46;
      *&v5->$95D729B680665BEAEFA1D6FCA8238556::value = v51;
      v5->$95D729B680665BEAEFA1D6FCA8238556::epoch = v46;
      v5->__debugDisableMotionBlur = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMDebugFrontRearSimultaneousVideoDisableMotionBlur"];
    }

    *&v5->__excessiveBlurRadiusReported = 0;
  }

  return v5;
}

- (void)setPictureInPictureMetrics:(id)a3
{
  v4 = a3;
  if (![(CAMMultiCamPIPCompositor *)self _pipFrameEqualsMostRecentlyAdded:v4])
  {
    v5 = [(CAMMultiCamPIPCompositor *)self _pipMetricsByTimestamp];
    v6 = MEMORY[0x1E696AD98];
    [v4 timeStampInSeconds];
    v7 = [v6 numberWithDouble:?];
    [v5 setObject:v4 forKeyedSubscript:v7];

    if (v4)
    {
      [v4 timestamp];
    }

    else
    {
      v16 = 0uLL;
      v17 = 0;
    }

    v14 = v16;
    v15 = v17;
    [(CAMMultiCamPIPCompositor *)self set_mostRecentlyAddedPIPMetricsTimestamp:&v14];
    v8 = [(CAMMultiCamPIPCompositor *)self _pipMetricsByTimestamp];
    v9 = [v8 count];
    v10 = [(CAMMultiCamPIPCompositor *)self _pipMetricsMaxCapacity];

    if (v9 > v10)
    {
      v11 = [(CAMMultiCamPIPCompositor *)self _sortedPIPTimestamps];
      v12 = [v11 firstObject];
      v13 = [(CAMMultiCamPIPCompositor *)self _pipMetricsByTimestamp];
      [v13 setObject:0 forKeyedSubscript:v12];
    }
  }
}

- (BOOL)_pipFrameEqualsMostRecentlyAdded:(id)a3
{
  v4 = a3;
  [(CAMMultiCamPIPCompositor *)self _mostRecentlyAddedPIPMetricsTimestamp];
  if (v12)
  {
    [(CAMMultiCamPIPCompositor *)self _mostRecentlyAddedPIPMetricsTimestamp];
    Seconds = CMTimeGetSeconds(&v11);
    v7 = [(CAMMultiCamPIPCompositor *)self _pipMetricsByTimestamp];
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:Seconds];
    v9 = [v7 objectForKeyedSubscript:v8];

    [v4 frame];
    [v9 frame];
    v5 = BSRectEqualToRect();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_pipMetricsForCompositingClosestToTimestamp:(id *)a3
{
  v24 = *a3;
  Seconds = CMTimeGetSeconds(&v24);
  v5 = [(CAMMultiCamPIPCompositor *)self _pipMetricsByTimestamp];
  v6 = [v5 count];

  if (!v6)
  {
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Missing PIP location information" userInfo:0];
    objc_exception_throw(v23);
  }

  v7 = [(CAMMultiCamPIPCompositor *)self _sortedPIPTimestamps];
  v8 = [v7 firstObject];
  [v8 doubleValue];
  if (Seconds >= v9)
  {
    if ([v7 count] && (objc_msgSend(v7, "objectAtIndexedSubscript:", 0), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "doubleValue"), v16 = v15, v14, Seconds >= v16))
    {
      v20 = 1;
      do
      {
        v17 = v16;
        if (v20 >= [v7 count])
        {
          break;
        }

        v21 = [v7 objectAtIndexedSubscript:v20];
        [v21 doubleValue];
        v16 = v22;

        ++v20;
      }

      while (Seconds >= v16);
    }

    else
    {
      v17 = 9.22337204e18;
    }

    v12 = [(CAMMultiCamPIPCompositor *)self _pipMetricsByTimestamp];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
    v13 = [v12 objectForKeyedSubscript:v18];
  }

  else
  {
    v10 = v9;
    if (![(CAMMultiCamPIPCompositor *)self _pipTimestampTooOldReported])
    {
      v11 = os_log_create("com.apple.camera", "FRSV");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(CAMMultiCamPIPCompositor *)v11 _pipMetricsForCompositingClosestToTimestamp:v10];
      }

      [(CAMMultiCamPIPCompositor *)self set_pipTimestampTooOldReported:1];
    }

    v12 = [(CAMMultiCamPIPCompositor *)self _pipMetricsByTimestamp];
    v13 = [v12 objectForKeyedSubscript:v8];
  }

  return v13;
}

- (id)_sortedPIPTimestamps
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(CAMMultiCamPIPCompositor *)self _pipMetricsByTimestamp];
  v3 = [v2 allKeys];

  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [v3 sortedArrayUsingDescriptors:v5];

  return v6;
}

- (void)_calculateMotionBlurAngle:(float *)a3 motionBlurRadius:(float *)a4 forPictureInPictureFrame:(CGRect)a5 fromPictureInPictureFrame:(CGRect)a6
{
  y = a6.origin.y;
  x = a6.origin.x;
  v8 = a5.origin.y;
  v9 = a5.origin.x;
  v13 = 0.0;
  if (CGRectIsNull(a6) || [(CAMMultiCamPIPCompositor *)self _motionBlurDisabledForCurrentCompositingSession])
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 0.0;
    if (![(CAMMultiCamPIPCompositor *)self _debugDisableMotionBlur])
    {
      v15 = v8 - y;
      v16 = v9 - x;
      v17 = atan2(v15, v16);
      v18 = sqrt(v16 * v16 + v15 * v15);
      if (v18 <= 20.0)
      {
        v14 = 0.0;
      }

      else
      {
        v19 = v18 * 0.5;
        v14 = v19;
      }

      [(CAMMultiCamPIPCompositor *)self _pipMaxBlurRadius];
      if (v20 < v14)
      {
        if (![(CAMMultiCamPIPCompositor *)self _excessiveBlurRadiusReported])
        {
          v21 = os_log_create("com.apple.camera", "FRSV");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [CAMMultiCamPIPCompositor _calculateMotionBlurAngle:v21 motionBlurRadius:v14 forPictureInPictureFrame:? fromPictureInPictureFrame:?];
          }

          [(CAMMultiCamPIPCompositor *)self set_excessiveBlurRadiusReported:1];
        }

        [(CAMMultiCamPIPCompositor *)self _pipMaxBlurRadius];
        v14 = v22;
      }

      v13 = v17;
    }
  }

  *a3 = v13;
  *a4 = v14;
}

- (id)_scaledPIPMetrics:(id)a3 toPrimaryImageSize:(CGSize)a4
{
  width = a4.width;
  v5 = a3;
  v6 = [(CAMMultiCamPIPMetrics *)v5 videoResolution];
  if ((v6 - 1) >= 4)
  {
    v7 = MEMORY[0x1E695F060];
  }

  else
  {
    v7 = (&unk_1A3A6A5F8 + 8 * v6 - 8);
  }

  v8 = *v7;
  v9 = v5;
  if ((BSSizeEqualToSize() & 1) == 0)
  {
    v10 = width / v8;
    [(CAMMultiCamPIPMetrics *)v5 frame];
    BSRectRoundForScale();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(CAMMultiCamPIPMetrics *)v5 cornerRadius];
    v20 = v10 * v19;
    [(CAMMultiCamPIPMetrics *)v5 borderWidth];
    v22 = v10 * v21;
    v23 = [CAMMultiCamPIPMetrics alloc];
    if (v5)
    {
      [(CAMMultiCamPIPMetrics *)v5 timestamp];
    }

    else
    {
      memset(v25, 0, sizeof(v25));
    }

    v9 = [(CAMMultiCamPIPMetrics *)v23 initWithTimestamp:v25 frame:[(CAMMultiCamPIPMetrics *)v5 borderColor] cornerRadius:0 borderWidth:v12 borderColor:v14 videoResolution:v16, v18, v20, v22];
  }

  return v9;
}

- (void)setMotionBlurDisabled:(BOOL)a3
{
  if (self->_motionBlurDisabled != a3)
  {
    v16 = v3;
    v17 = v4;
    v5 = a3;
    self->_motionBlurDisabled = a3;
    v7 = [(CAMMultiCamPIPCompositor *)self _isCompositingSessionActive];
    v8 = os_log_create("com.apple.camera", "FRSV");
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        if (v9)
        {
          v15 = 0;
          v10 = "Disabling PIP motion blur for the current compositing session";
          v11 = &v15;
LABEL_14:
          _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
        }
      }

      else if (v9)
      {
        v14 = 0;
        v10 = "Disabling PIP motion blur for the next compositing session";
        v11 = &v14;
        goto LABEL_14;
      }

LABEL_15:

      [(CAMMultiCamPIPCompositor *)self set_motionBlurDisabledForCurrentCompositingSession:v5];
      return;
    }

    if (!v7)
    {
      if (v9)
      {
        *buf = 0;
        v10 = "Enabling PIP motion blur for the next compositing session";
        v11 = buf;
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    if (v9)
    {
      *v12 = 0;
      _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "Deferring enabling PIP motion blur for the next compositing session", v12, 2u);
    }
  }
}

- (void)prepareForCompositing
{
  v12[1] = *MEMORY[0x1E69E9840];
  [(CAMMultiCamPIPCompositor *)self set_compositingSessionActive:1];
  if ([(CAMMultiCamPIPCompositor *)self _useCoreImageSurfacePool])
  {
    v11 = *MEMORY[0x1E696CF80];
    v3 = *MEMORY[0x1E696CE30];
    v8[0] = *MEMORY[0x1E696CE60];
    v8[1] = v3;
    v9[0] = &unk_1F16C8240;
    v9[1] = &unk_1F16C8258;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
    v10 = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
    v12[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    v7 = [(CAMMultiCamPIPCompositor *)self _surfaceMemoryPool];
    [v7 ensureMemory:v6];
  }

  [(CAMMultiCamPIPCompositor *)self set_motionBlurDisabledForCurrentCompositingSession:[(CAMMultiCamPIPCompositor *)self isMotionBlurDisabled]];
}

- (void)compositeWithCompositingData:(id)a3 strategy:(int64_t)a4 captureOrientation:(int64_t)a5 mirrorPIP:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = [v9 primaryImage];
  v11 = [v9 secondaryImage];
  memset(&v72, 0, sizeof(v72));
  CMSampleBufferGetPresentationTimeStamp(&v72, [v9 primarySampleBuffer]);
  memset(&v71, 0, sizeof(v71));
  CMSampleBufferGetPresentationTimeStamp(&v71, [v9 secondarySampleBuffer]);
  v70 = v71;
  v12 = [(CAMMultiCamPIPCompositor *)self _pipMetricsForCompositingClosestToTimestamp:&v70];
  [v10 extent];
  v15 = [(CAMMultiCamPIPCompositor *)self _scaledPIPMetrics:v12 toPrimaryImageSize:v13, v14];

  [v15 frameInCoreImageLandscapeCoordinateSpace];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v15 cornerRadius];
  v25 = v24;
  v69 = 0;
  if (a4 || ([(CAMMultiCamPIPCompositor *)self _lastCompositedPictureInPictureFrameForMotionBlur], [(CAMMultiCamPIPCompositor *)self _calculateMotionBlurAngle:&v69 + 4 motionBlurRadius:&v69 forPictureInPictureFrame:v17 fromPictureInPictureFrame:v19, v21, v23, v26, v27, v28, v29], [(CAMMultiCamPIPCompositor *)self set_lastCompositedPictureInPictureFrameForMotionBlur:v17, v19, v21, v23], ![(CAMMultiCamPIPCompositor *)self _debugColorDuplicatedMovieFileBuffers]))
  {
    v31 = 0;
    v30 = 0;
  }

  else
  {
    memset(&v70, 0, sizeof(v70));
    [(CAMMultiCamPIPCompositor *)self _debugLastCompositedMovieFilePrimaryBufferPTS];
    memset(&v68, 0, sizeof(v68));
    [(CAMMultiCamPIPCompositor *)self _debugLastCompositedMovieFileSecondaryBufferPTS];
    if (v70.flags)
    {
      time1 = v70;
      time2 = v72;
      v30 = CMTimeCompare(&time1, &time2) == 0;
    }

    else
    {
      v30 = 0;
    }

    if (v68.flags)
    {
      time1 = v68;
      time2 = v71;
      v31 = CMTimeCompare(&time1, &time2) == 0;
    }

    else
    {
      v31 = 0;
    }

    time1 = v72;
    [(CAMMultiCamPIPCompositor *)self set_debugLastCompositedMovieFilePrimaryBufferPTS:&time1];
    time1 = v71;
    [(CAMMultiCamPIPCompositor *)self set_debugLastCompositedMovieFileSecondaryBufferPTS:&time1];
  }

  [v15 borderWidth];
  v33 = v32;
  v34 = [v15 borderColor];
  LODWORD(v35) = HIDWORD(v69);
  LODWORD(v36) = v69;
  LOBYTE(v58) = v31;
  v61 = v11;
  v62 = v10;
  v37 = v6;
  v38 = [(CAMMultiCamPIPCompositor *)self _compositePrimaryImage:v10 pipImage:v11 pipFrame:v34 pipCornerRadius:v6 pipBorderWidth:a5 pipBorderColor:v30 mirrorPIP:v17 captureOrientation:v19 motionBlurAngle:v21 motionBlurRadius:v23 debugColorDuplicatedPrimaryImage:v25 debugColorDuplicatedPIPImage:v33, v35, v36, v58];
  v39 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:{CMSampleBufferGetImageBuffer(objc_msgSend(v9, "outputSampleBuffer"))}];
  v40 = [(CAMMultiCamPIPCompositor *)self _ciContext];
  v65 = 0;
  v60 = v39;
  v41 = [v40 startTaskToRender:v38 toDestination:v39 error:&v65];
  v42 = v65;

  if (v42)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"CoreImage failed to render to destination: %@.", v42];
    goto LABEL_22;
  }

  v43 = [v9 primaryGainMapImage];
  v44 = [v9 secondaryGainMapImage];
  v45 = v44;
  v46 = 0;
  if (v43 && v44)
  {
    [v15 borderWidth];
    LOBYTE(v59) = v37;
    v48 = -[CAMMultiCamPIPCompositor _compositePrimaryGainMapImage:pipGainMapImage:primarySDRImage:pipSDRImage:compositeSDRImage:pipFrame:pipCornerRadius:pipBorderWidth:pipBorderColor:mirrorPIP:captureOrientation:](self, "_compositePrimaryGainMapImage:pipGainMapImage:primarySDRImage:pipSDRImage:compositeSDRImage:pipFrame:pipCornerRadius:pipBorderWidth:pipBorderColor:mirrorPIP:captureOrientation:", v43, v45, v62, v61, v38, [v15 borderColor], v17, v19, v21, v23, v25, v47, v59, a5);
    v49 = v48;
    if (!v48)
    {
      v46 = 0;
      goto LABEL_13;
    }

    v46 = [v48 properties];
    v50 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:{CMSampleBufferGetImageBuffer(objc_msgSend(v9, "outputGainMapSampleBuffer"))}];
    v51 = [(CAMMultiCamPIPCompositor *)self _gainMapCIContext];
    v64 = 0;
    v52 = [v51 startTaskToRender:v49 toDestination:v50 error:&v64];
    v53 = v64;

    if (!v53)
    {

LABEL_13:
      goto LABEL_14;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"CoreImage failed to render the gain map image to destination: %@.", v53];
LABEL_22:
    v57 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v57);
  }

LABEL_14:
  v54 = [MEMORY[0x1E695DF90] dictionary];
  [v62 extent];
  v73.origin.y = v55 - v23 - v19;
  v73.origin.x = v17;
  v73.size.width = v21;
  v73.size.height = v23;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v73);
  [v54 setObject:DictionaryRepresentation forKeyedSubscript:*MEMORY[0x1E69869B0]];
  [v54 setObject:v46 forKeyedSubscript:*MEMORY[0x1E69869B8]];
  [v9 setCompositingMetadata:v54];
}

- (id)_compositePrimaryImage:(id)a3 pipImage:(id)a4 pipFrame:(CGRect)a5 pipCornerRadius:(double)a6 pipBorderWidth:(double)a7 pipBorderColor:(CGColor *)a8 mirrorPIP:(BOOL)a9 captureOrientation:(int64_t)a10 motionBlurAngle:(float)a11 motionBlurRadius:(float)a12 debugColorDuplicatedPrimaryImage:(BOOL)a13 debugColorDuplicatedPIPImage:(BOOL)a14
{
  v14 = a13;
  v16 = a9;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v28 = a3;
  v29 = a4;
  if ([(CAMMultiCamPIPCompositor *)self _pipRotationAngle]== 90)
  {
    v30 = [v29 imageByApplyingCGOrientation:8];

    v29 = v30;
  }

  v31 = [(CAMMultiCamPIPCompositor *)self _cropPIP:v29 toSizeAspectRatioIfNecessary:width, height];

  [v31 extent];
  memset(&v55, 0, sizeof(v55));
  CGAffineTransformMakeScale(&v55, height / v32, height / v32);
  v54 = v55;
  v33 = [v31 imageByApplyingTransform:&v54];

  if (v16)
  {
    v34 = *(MEMORY[0x1E695EFD0] + 16);
    *&v54.a = *MEMORY[0x1E695EFD0];
    *&v54.c = v34;
    *&v54.tx = *(MEMORY[0x1E695EFD0] + 32);
    if ((a10 - 1) > 1)
    {
      if ((a10 - 3) > 1)
      {
LABEL_9:
        v53 = v54;
        v39 = [v33 imageByApplyingTransform:&v53 highQualityDownsample:1];

        v33 = v39;
        goto LABEL_10;
      }

      CGAffineTransformMakeScale(&v54, -1.0, 1.0);
      [v33 extent];
      v37 = v38;
      v36 = 0.0;
    }

    else
    {
      CGAffineTransformMakeScale(&v54, 1.0, -1.0);
      [v33 extent];
      v36 = v35;
      v37 = 0.0;
    }

    CGAffineTransformMakeTranslation(&t2, v37, v36);
    v51 = v54;
    CGAffineTransformConcat(&v53, &v51, &t2);
    v54 = v53;
    goto LABEL_9;
  }

LABEL_10:
  if ((a10 - 3) <= 1)
  {
    v49 = [v33 imageByApplyingCGOrientation:3];

    v33 = v49;
    if (!v14)
    {
LABEL_12:
      if (!a14)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if (!v14)
  {
    goto LABEL_12;
  }

  v50 = [(CAMMultiCamPIPCompositor *)self _debugImageWithDuplicatedColorTint:v28];

  v28 = v50;
  if (a14)
  {
LABEL_13:
    v40 = [(CAMMultiCamPIPCompositor *)self _debugImageWithDuplicatedColorTint:v33];

    v33 = v40;
  }

LABEL_14:
  v41 = [(CAMMultiCamPIPCompositor *)self _applyMaskAndBorderToImage:v33 cornerRadius:a8 borderWidth:a6 borderColor:a7];

  if (a12 > 0.0)
  {
    v42 = [MEMORY[0x1E695F648] motionBlurFilter];
    *&v43 = a11;
    [v42 setAngle:v43];
    [v42 setInputImage:v41];
    *&v44 = a12;
    [v42 setRadius:v44];
    v45 = [v42 outputImage];

    v41 = v45;
  }

  memset(&v54, 0, sizeof(v54));
  CGAffineTransformMakeTranslation(&v54, x, y);
  v53 = v54;
  v46 = [v41 imageByApplyingTransform:&v53];

  v47 = [v46 imageByCompositingOverImage:v28];

  return v47;
}

- (id)_compositePrimaryGainMapImage:(id)a3 pipGainMapImage:(id)a4 primarySDRImage:(id)a5 pipSDRImage:(id)a6 compositeSDRImage:(id)a7 pipFrame:(CGRect)a8 pipCornerRadius:(double)a9 pipBorderWidth:(double)a10 pipBorderColor:(CGColor *)a11 mirrorPIP:(BOOL)a12 captureOrientation:(int64_t)a13
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v24 = a7;
  v25 = a6;
  v26 = a5;
  v27 = a4;
  v28 = a3;
  v29 = [v26 imageByApplyingGainMap:v28];
  v30 = [v25 imageByApplyingGainMap:v27];

  LOBYTE(v44) = 0;
  v31 = [(CAMMultiCamPIPCompositor *)self _compositePrimaryImage:v29 pipImage:v30 pipFrame:a11 pipCornerRadius:a12 pipBorderWidth:a13 pipBorderColor:0 mirrorPIP:x captureOrientation:y motionBlurAngle:width motionBlurRadius:height debugColorDuplicatedPrimaryImage:a9 debugColorDuplicatedPIPImage:a10, 0.0, 0.0, v44];
  v32 = [(CAMMultiCamPIPCompositor *)self _gainMapCIContext];
  v33 = [v26 colorSpace];

  v34 = [v32 gainMapImageForSDR:v24 HDR:v31 colorSpace:v33 rgbGainmap:0];

  memset(&v47, 0, sizeof(v47));
  [v28 extent];
  v36 = v35;
  [v31 extent];
  v38 = v36 / v37;
  [v28 extent];
  v40 = v39;

  [v31 extent];
  CGAffineTransformMakeScale(&v47, v38, v40 / v41);
  v46 = v47;
  v42 = [v34 imageByApplyingTransform:&v46 highQualityDownsample:1];

  return v42;
}

- (void)resetCompositingState:(BOOL)a3
{
  v3 = a3;
  [(CAMMultiCamPIPCompositor *)self set_lastCompositedPictureInPictureFrameForMotionBlur:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  v8 = *MEMORY[0x1E6960C70];
  v7 = v8;
  v9 = *(MEMORY[0x1E6960C70] + 16);
  v5 = v9;
  [(CAMMultiCamPIPCompositor *)self set_debugLastCompositedMovieFilePrimaryBufferPTS:&v8];
  v8 = v7;
  v9 = v5;
  [(CAMMultiCamPIPCompositor *)self set_debugLastCompositedMovieFileSecondaryBufferPTS:&v8];
  [(CAMMultiCamPIPCompositor *)self set_excessiveBlurRadiusReported:0];
  [(CAMMultiCamPIPCompositor *)self set_pipTimestampTooOldReported:0];
  if ([(CAMMultiCamPIPCompositor *)self _useCoreImageCVTextureCache])
  {
    CVMetalTextureCacheFlush([(CAMMultiCamPIPCompositor *)self _textureCache], 0);
  }

  if (v3)
  {
    [(CAMMultiCamPIPCompositor *)self set_compositingSessionActive:0];
    if ([(CAMMultiCamPIPCompositor *)self _useCoreImageSurfacePool])
    {
      v6 = [(CAMMultiCamPIPCompositor *)self _surfaceMemoryPool];
      [v6 flush:MEMORY[0x1E695E0F8]];
    }

    [(CAMMultiCamPIPCompositor *)self set_motionBlurDisabledForCurrentCompositingSession:[(CAMMultiCamPIPCompositor *)self isMotionBlurDisabled]];
  }
}

- (id)_cropPIP:(id)a3 toSizeAspectRatioIfNecessary:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  [v6 extent];
  v8 = v7;
  v9 = width / height;
  if (BSFloatApproximatelyEqualToFloat())
  {
    v10 = v6;
  }

  else
  {
    v11 = v8 - v8 / v9;
    v12 = [v6 imageByCroppingToRect:{v11 * 0.5, 0.0}];
    memset(&v15, 0, sizeof(v15));
    CGAffineTransformMakeTranslation(&v15, -(v11 * 0.5), 0.0);
    v14 = v15;
    v10 = [v12 imageByApplyingTransform:&v14];
  }

  return v10;
}

- (id)_applyMaskAndBorderToImage:(id)a3 cornerRadius:(double)a4 borderWidth:(double)a5 borderColor:(CGColor *)a6
{
  v9 = MEMORY[0x1E695F648];
  v10 = a3;
  v11 = [v9 roundedRectangleGeneratorFilter];
  [v10 extent];
  [v11 setExtent:?];
  *&v12 = a4;
  [v11 setRadius:v12];
  LODWORD(v13) = 1.0;
  [v11 setSmoothness:v13];
  v14 = [MEMORY[0x1E695F610] whiteColor];
  [v11 setColor:v14];

  v15 = [MEMORY[0x1E695F608] sourceIn];
  v16 = [v11 outputImage];
  v17 = [v15 applyWithForeground:v10 background:v16];

  v18 = [MEMORY[0x1E695F648] roundedRectangleStrokeGeneratorFilter];
  [v11 extent];
  [v18 setExtent:?];
  [v11 radius];
  [v18 setRadius:?];
  [v11 smoothness];
  [v18 setSmoothness:?];
  *&v19 = a5;
  [v18 setWidth:v19];
  v20 = [MEMORY[0x1E695F610] colorWithCGColor:a6];
  [v18 setColor:v20];

  v21 = [v18 outputImage];
  v22 = [v21 imageByCompositingOverImage:v17];

  return v22;
}

- (id)_debugImageWithDuplicatedColorTint:(id)a3
{
  v3 = MEMORY[0x1E695F648];
  v4 = a3;
  v5 = [v3 colorMonochromeFilter];
  [v5 setInputImage:v4];
  v6 = MEMORY[0x1E695F610];
  v7 = [v4 colorSpace];

  v8 = [v6 colorWithRed:v7 green:1.0 blue:0.0 colorSpace:0.0];
  [v5 setColor:v8];

  LODWORD(v9) = 0.5;
  [v5 setIntensity:v9];
  v10 = [v5 outputImage];

  return v10;
}

- (void)set_mostRecentlyAddedPIPMetricsTimestamp:(id *)a3
{
  v3 = *&a3->var0;
  self->$95D729B680665BEAEFA1D6FCA8238556::epoch = a3->var3;
  *&self->$95D729B680665BEAEFA1D6FCA8238556::value = v3;
}

- (CGRect)_lastCompositedPictureInPictureFrameForMotionBlur
{
  x = self->__lastCompositedPictureInPictureFrameForMotionBlur.origin.x;
  y = self->__lastCompositedPictureInPictureFrameForMotionBlur.origin.y;
  width = self->__lastCompositedPictureInPictureFrameForMotionBlur.size.width;
  height = self->__lastCompositedPictureInPictureFrameForMotionBlur.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)set_debugLastCompositedMovieFilePrimaryBufferPTS:(id *)a3
{
  v3 = *&a3->var0;
  self->$95D729B680665BEAEFA1D6FCA8238556::epoch = a3->var3;
  *&self->$95D729B680665BEAEFA1D6FCA8238556::value = v3;
}

- (void)set_debugLastCompositedMovieFileSecondaryBufferPTS:(id *)a3
{
  v3 = *&a3->var0;
  self->$95D729B680665BEAEFA1D6FCA8238556::epoch = a3->var3;
  *&self->$95D729B680665BEAEFA1D6FCA8238556::value = v3;
}

- (void)_pipMetricsForCompositingClosestToTimestamp:(double)a3 .cold.1(os_log_t log, double a2, double a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a3;
  _os_log_error_impl(&dword_1A3640000, log, OS_LOG_TYPE_ERROR, "PIP timestamp %.2f is older than any known timestamps! Oldest timestamp is %.2f. Using oldest timestamp.", &v3, 0x16u);
}

- (void)_calculateMotionBlurAngle:(double)a3 motionBlurRadius:forPictureInPictureFrame:fromPictureInPictureFrame:.cold.1(void *a1, NSObject *a2, double a3)
{
  v10 = *MEMORY[0x1E69E9840];
  [a1 _pipMaxBlurRadius];
  v6 = 134218240;
  v7 = a3;
  v8 = 2048;
  v9 = v5;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Motion blur radius of %f exceeded max value of %f.", &v6, 0x16u);
}

@end