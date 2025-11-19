@interface JFXAnimojiEffectRenderer
+ (BOOL)isSupported;
+ (CGSize)animojiBufferSizeWithImageSize:(CGSize)result interfaceOrientation:(int64_t)a4;
- (AVTAvatarStore)avatarStore;
- (BOOL)JFX_getRenderer:(id *)a3 forAnimojiEffect:(id)a4 primeFrame:(id)a5 captureOrientation:(int64_t)a6 interfaceOrientation:(int64_t)a7 backgroundColor:(id)a8;
- (BOOL)currentPuppetIsEqualTo:(id)a3;
- (BOOL)setupHeadPoseAndBlendShapesForFrame:(id)a3 forRenderer:(id)a4 captureOrientation:(int64_t)a5 interfaceOrientation:(int64_t)a6 isInitialSetup:(BOOL)a7;
- (BOOL)setupPoseForPreRecordedBlendShapes:(id)a3 forRenderer:(id)a4 captureOrientation:(int64_t)a5 interfaceOrientation:(int64_t)a6 withFrame:(id)a7;
- (CGSize)workingSize;
- (JFXAnimojiEffectRenderer)initWithConstrainedHeadPose:(BOOL)a3 rgbOnlyMemoji:(BOOL)a4;
- (JFXAnimojiTrackingLossDelegate)trackingLossDelegate;
- (NSString)description;
- (__CVBuffer)JFX_depthDataToTexture:(id)a3;
- (__CVBuffer)newPixelBufferRenderedFromARFrame:(id)a3 withEffect:(id)a4 depthData:(id)a5 captureOrientation:(int64_t)a6 interfaceOrientation:(int64_t)a7 preRecordedBlendShapes:(id)a8 backgroundColor:(id)a9;
- (double)JFX_focalLengthForFrame:(id)a3 renderer:(id)a4 workingSize:(CGSize)a5 interfaceOrientation:(int64_t)a6;
- (id)JFX_blendShapesForRenderer:(id)a3;
- (id)createNewRendererForPuppet:(id)a3;
- (id)preRecordedBlendShapesForFrame:(id)a3 captureOrientation:(int64_t)a4 interfaceOrientation:(int64_t)a5 backgroundColor:(id)a6;
- (id)renderWithInputs:(id)a3 time:(id *)a4 userContext:(id)a5 compositeContext:(id)a6;
- (id)renderWithTime:(id *)a3 metadata:(id)a4;
- (void)asyncLoadNewPuppet:(id)a3 currentPuppet:(id)a4 captureOrientation:(int64_t)a5 interfaceOrientation:(int64_t)a6 primeFrame:(id)a7 backgroundColor:(id)a8;
- (void)clear;
- (void)clearRenderer_renderLocked;
- (void)computeHighQualitySegmentation:(id)a3;
- (void)createTextureCaches;
- (void)dealloc;
- (void)flush;
- (void)renderAnimoji:(id)a3 withPresentationTime:(id *)a4 frame:(id)a5 depthData:(id)a6 backgroundColor:(id)a7 completionBlock:(id)a8;
- (void)renderFrame:(id)a3 withEffect:(id)a4 depthData:(id)a5 captureOrientation:(int64_t)a6 interfaceOrientation:(int64_t)a7 preRecordedBlendShapes:(id)a8 backgroundColor:(id)a9 completionBlock:(id)a10;
- (void)setupInputBufferPoolForSize:(CGSize)a3 capturedImage:(__CVBuffer *)a4;
- (void)updateCurrentRenderer:(id)a3 withPuppet:(id)a4;
@end

@implementation JFXAnimojiEffectRenderer

+ (CGSize)animojiBufferSizeWithImageSize:(CGSize)result interfaceOrientation:(int64_t)a4
{
  v5 = result.height > result.width || (a4 - 3) < 0xFFFFFFFFFFFFFFFELL;
  if (v5)
  {
    height = result.height;
  }

  else
  {
    height = result.width;
  }

  if (!v5)
  {
    result.width = result.height;
  }

  v7 = height;
  result.height = v7;
  return result;
}

+ (BOOL)isSupported
{
  if (isSupported_onceToken != -1)
  {
    +[JFXAnimojiEffectRenderer isSupported];
  }

  return isSupported_isAnimojiCapableDevice;
}

uint64_t __39__JFXAnimojiEffectRenderer_isSupported__block_invoke()
{
  v0 = [MEMORY[0x277CE5280] isSupported];
  result = [MEMORY[0x277CE5280] supportsFrameSemantics:1];
  isSupported_isAnimojiCapableDevice = v0 & result;
  return result;
}

- (JFXAnimojiEffectRenderer)initWithConstrainedHeadPose:(BOOL)a3 rgbOnlyMemoji:(BOOL)a4
{
  v4 = a4;
  v29.receiver = self;
  v29.super_class = JFXAnimojiEffectRenderer;
  v6 = [(JFXAnimojiEffectRenderer *)&v29 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CF0518]);
    [(JFXAnimojiEffectRenderer *)v6 setAvatarStore:v7];

    v6->_rgbOnlyMemoji = v4;
    v8 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    rendererLock = v6->_rendererLock;
    v6->_rendererLock = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    renderPassLock = v6->_renderPassLock;
    v6->_renderPassLock = v10;

    v6->_systemTimeForAVTRenderer = 0.0;
    *&v6->_asynchronouslyLoadNewPuppets = 256;
    if (v4)
    {
      VTPixelTransferSessionCreate(0, &v6->_transferSession);
    }

    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] jfxBundle];
    v14 = [v13 bundleIdentifier];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v12 stringWithFormat:@"%@.%@.puppetLoading", v14, v16];

    v18 = dispatch_queue_create([v17 UTF8String], 0);
    puppetLoadingQ = v6->_puppetLoadingQ;
    v6->_puppetLoadingQ = v18;

    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCA8D8] jfxBundle];
    v22 = [v21 bundleIdentifier];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v20 stringWithFormat:@"%@.%@.puppetRendering", v22, v24];

    v26 = dispatch_queue_create([v25 UTF8String], 0);
    puppetRenderingQ = v6->_puppetRenderingQ;
    v6->_puppetRenderingQ = v26;

    v6->_logged_render_failed = 0;
    v6->_constrainHeadPose = a3;
    v6->_rgbOnlyMemoji = v4;
    VTPixelRotationSessionCreate(0, &v6->_rotationSession);
    [(JFXAnimojiEffectRenderer *)v6 createTextureCaches];
  }

  return v6;
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_inputBufferPool);
  CVPixelBufferPoolRelease(self->_deviceOrientedColorBufferPool);
  CFRelease(self->_metalTextureCache);
  CFRelease(self->_rotationSession);
  CVPixelBufferRelease(self->_mirroredDepthBuffer);
  if (![(JFXAnimojiEffectRenderer *)self constrainHeadPose]&& [(JFXAnimojiEffectRenderer *)self metalDepthTextureCache])
  {
    CFRelease([(JFXAnimojiEffectRenderer *)self metalDepthTextureCache]);
  }

  transferSession = self->_transferSession;
  if (transferSession)
  {
    VTPixelTransferSessionInvalidate(transferSession);
    CFRelease(self->_transferSession);
  }

  CVPixelBufferRelease(self->_segmentationPixelBuffer);
  v4.receiver = self;
  v4.super_class = JFXAnimojiEffectRenderer;
  [(JFXAnimojiEffectRenderer *)&v4 dealloc];
}

- (void)clear
{
  v3 = [(JFXAnimojiEffectRenderer *)self rendererLock];
  [v3 lock];

  [(JFXAnimojiEffectRenderer *)self setCurrentPuppet:0];
  [(JFXAnimojiEffectRenderer *)self clearRenderer_renderLocked];
  [(JFXAnimojiEffectRenderer *)self setRenderer:0];
  [(JFXAnimojiEffectRenderer *)self setAvatarStore:0];
  metalTextureCache = self->_metalTextureCache;
  if (metalTextureCache)
  {
    CFRelease(metalTextureCache);
  }

  metalDepthTextureCache = self->_metalDepthTextureCache;
  if (metalDepthTextureCache)
  {
    CFRelease(metalDepthTextureCache);
  }

  [(JFXAnimojiEffectRenderer *)self createTextureCaches];
  inputBufferPool = self->_inputBufferPool;
  if (inputBufferPool)
  {
    CVPixelBufferPoolFlush(inputBufferPool, 1uLL);
  }

  v7 = [(JFXAnimojiEffectRenderer *)self rendererLock];
  [v7 unlock];
}

- (void)flush
{
  v3 = [(JFXAnimojiEffectRenderer *)self rendererLock];
  [v3 lock];

  metalTextureCache = self->_metalTextureCache;
  if (metalTextureCache)
  {
    CVMetalTextureCacheFlush(metalTextureCache, 0);
  }

  metalDepthTextureCache = self->_metalDepthTextureCache;
  if (metalDepthTextureCache)
  {
    CVMetalTextureCacheFlush(metalDepthTextureCache, 0);
  }

  inputBufferPool = self->_inputBufferPool;
  if (inputBufferPool)
  {
    CVPixelBufferPoolFlush(inputBufferPool, 1uLL);
  }

  deviceOrientedColorBufferPool = self->_deviceOrientedColorBufferPool;
  if (deviceOrientedColorBufferPool)
  {
    CVPixelBufferPoolFlush(deviceOrientedColorBufferPool, 1uLL);
  }

  v8 = [(JFXAnimojiEffectRenderer *)self rendererLock];
  [v8 unlock];
}

- (void)clearRenderer_renderLocked
{
  v3 = [(JFXAnimojiEffectRenderer *)self renderer];

  if (v3)
  {
    v4 = [(JFXAnimojiEffectRenderer *)self renderer];
    [v4 setEnableDepthMask:0];

    LODWORD(v4) = [(JFXAnimojiEffectRenderer *)self constrainHeadPose];
    v5 = [(JFXAnimojiEffectRenderer *)self renderer];
    v7 = v5;
    if (v4)
    {
      v6 = [v5 faceTracker];
      [v6 discardARFrameData];
    }

    else
    {
      [v5 setCapturedDepth:0];
    }
  }
}

- (NSString)description
{
  [(NSLock *)self->_rendererLock lock];
  v3 = [(JFXAnimojiEffectRenderer *)self currentPuppet];
  v4 = [v3 effectID];

  [(NSLock *)self->_rendererLock unlock];
  v8.receiver = self;
  v8.super_class = JFXAnimojiEffectRenderer;
  v5 = [(JFXAnimojiEffectRenderer *)&v8 description];
  v6 = [v5 stringByAppendingFormat:@" %@", v4];

  return v6;
}

- (AVTAvatarStore)avatarStore
{
  avatarStore = self->_avatarStore;
  if (!avatarStore)
  {
    v4 = objc_alloc_init(MEMORY[0x277CF0518]);
    [(JFXAnimojiEffectRenderer *)self setAvatarStore:v4];

    avatarStore = self->_avatarStore;
  }

  return avatarStore;
}

- (void)setupInputBufferPoolForSize:(CGSize)a3 capturedImage:(__CVBuffer *)a4
{
  height = a3.height;
  width = a3.width;
  v43[3] = *MEMORY[0x277D85DE8];
  [(JFXAnimojiEffectRenderer *)self workingSize];
  if (width != v9 || height != v8)
  {
    pixelBuffer = a4;
    [(JFXAnimojiEffectRenderer *)self setWorkingSize:width, height];
    if ([(JFXAnimojiEffectRenderer *)self inputBufferPool])
    {
      CVPixelBufferPoolRelease([(JFXAnimojiEffectRenderer *)self inputBufferPool]);
      [(JFXAnimojiEffectRenderer *)self setInputBufferPool:0];
    }

    v11 = objc_opt_new();
    v36 = *MEMORY[0x277CC4E30];
    [v11 setObject:&unk_28556D0C8 forKeyedSubscript:?];
    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CC4E08]];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:width];
    v13 = *MEMORY[0x277CC4EC8];
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277CC4EC8]];

    v14 = [MEMORY[0x277CCABB0] numberWithDouble:height];
    v15 = *MEMORY[0x277CC4DD8];
    [v11 setObject:v14 forKeyedSubscript:*MEMORY[0x277CC4DD8]];

    v16 = [MEMORY[0x277D415E0] sRGBColorSpace];
    v17 = [v16 nclcTriplet];

    v18 = *MEMORY[0x277CC4C00];
    v42[0] = *MEMORY[0x277CC4C00];
    v43[0] = [v17 colorPrimary];
    v19 = *MEMORY[0x277CC4CC0];
    v42[1] = *MEMORY[0x277CC4CC0];
    v43[1] = [v17 transferFunction];
    v20 = *MEMORY[0x277CC4D10];
    v42[2] = *MEMORY[0x277CC4D10];
    v43[2] = [v17 ycbcrMatrix];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];
    v22 = *MEMORY[0x277CC4B48];
    [v11 setObject:v21 forKeyedSubscript:*MEMORY[0x277CC4B48]];

    v23 = *MEMORY[0x277CBECE8];
    CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], 0, v11, &self->_inputBufferPool);
    if (self->_rgbOnlyMemoji)
    {
      v35 = v17;
      if ([(JFXAnimojiEffectRenderer *)self deviceOrientedColorBufferPool])
      {
        CVPixelBufferPoolRelease([(JFXAnimojiEffectRenderer *)self deviceOrientedColorBufferPool]);
        [(JFXAnimojiEffectRenderer *)self setDeviceOrientedColorBufferPool:0];
      }

      v24 = [MEMORY[0x277CCABB0] numberWithDouble:height];
      [v11 setObject:v24 forKeyedSubscript:v13];

      v25 = [MEMORY[0x277CCABB0] numberWithDouble:width];
      [v11 setObject:v25 forKeyedSubscript:v15];

      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(pixelBuffer)];
      [v11 setObject:v26 forKeyedSubscript:v36];

      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(pixelBuffer)];
      [v11 setObject:v27 forKeyedSubscript:v36];

      v28 = CVBufferCopyAttachments(pixelBuffer, kCVAttachmentMode_ShouldPropagate);
      v40[0] = v18;
      v40[1] = v19;
      v41[0] = CFDictionaryGetValue(v28, v18);
      v41[1] = CFDictionaryGetValue(v28, v19);
      v40[2] = v20;
      v41[2] = CFDictionaryGetValue(v28, v20);
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
      [v11 setObject:v29 forKeyedSubscript:v22];

      CVPixelBufferPoolCreate(v23, 0, v11, &self->_deviceOrientedColorBufferPool);
      v30 = objc_opt_new();
      [v30 setColorSize:{height, width}];
      [v30 setAvailableEffectTypes:8];
      [v30 setActiveEffectType:8];
      v31 = [(AVTRenderer *)self->_renderer commandQueue];
      [v30 setMetalCommandQueue:v31];

      [v30 setSyncInitialization:1];
      v32 = [objc_alloc(MEMORY[0x277D3E868]) initWithDescriptor:v30];
      effect = self->_effect;
      self->_effect = v32;

      [MEMORY[0x277D3E868] personSegmentationMatteFormatForColorSize:{height, width}];
      CVPixelBufferRelease(self->_segmentationPixelBuffer);
      v38 = *MEMORY[0x277CC4DE8];
      v39 = MEMORY[0x277CBEC10];
      v17 = v35;
      if (CVPixelBufferCreate(0, 0.0, 0.0, 0, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1], &self->_segmentationPixelBuffer))
      {
        v34 = JFXLog_effects();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [JFXAnimojiEffectRenderer setupInputBufferPoolForSize:capturedImage:];
        }
      }
    }
  }
}

- (id)renderWithTime:(id *)a3 metadata:(id)a4
{
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_JFXARMetadata"];
  v27 = [v5 objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_DepthData"];
  v7 = [v5 objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_Effect"];
  v8 = [v5 objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_DataRepresentation"];
  v9 = [v5 objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_BackgroundColor"];
  v10 = [v6 arFrame];
  v11 = [v7 dataRepresentation];
  v25 = v8;
  LODWORD(v8) = [v8 isEqualToData:v11];

  v26 = v6;
  if (v8)
  {
    v12 = [v6 animojiPhysicsBlendShapes];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v5 objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_AVCaptureVideoOrientation"];
  v14 = [v13 integerValue];

  v15 = [v5 objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_UIInterfaceOrientation"];
  v16 = [v15 integerValue];

  v17 = [v5 objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_RenderSize"];
  [v17 CGSizeValue];
  -[JFXAnimojiEffectRenderer setupInputBufferPoolForSize:capturedImage:](self, "setupInputBufferPoolForSize:capturedImage:", [v10 capturedImage], v18, v19);
  v20 = [(JFXAnimojiEffectRenderer *)self renderPassLock];
  [v20 lock];

  kdebug_trace();
  v21 = [(JFXAnimojiEffectRenderer *)self newPixelBufferRenderedFromARFrame:v10 withEffect:v7 depthData:v27 captureOrientation:v14 interfaceOrientation:v16 preRecordedBlendShapes:v12 backgroundColor:v9];
  kdebug_trace();
  v22 = [(JFXAnimojiEffectRenderer *)self renderPassLock];
  [v22 unlock];

  if (v21)
  {
    v23 = [MEMORY[0x277D41618] imageWithCVPixelBuffer:v21];
    CVPixelBufferRelease(v21);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)renderWithInputs:(id)a3 time:(id *)a4 userContext:(id)a5 compositeContext:(id)a6
{
  v9 = a3;
  v15 = *a4;
  v10 = [(JFXAnimojiEffectRenderer *)self renderWithTime:&v15 metadata:a5];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
LABEL_3:
    v13 = v12;
    goto LABEL_4;
  }

  if (v9)
  {
    v13 = [v9 objectForKeyedSubscript:&unk_28556D0E0];

    if (v13)
    {
      v12 = [v9 objectForKeyedSubscript:&unk_28556D0E0];
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_4:

  return v13;
}

- (id)createNewRendererForPuppet:(id)a3
{
  v32[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 dataRepresentation];
  if (v5 && [MEMORY[0x277CF04B8] canLoadDataRepresentation:v5])
  {
    v30 = 0;
    v6 = [MEMORY[0x277CF04B8] avatarWithDataRepresentation:v5 error:&v30];
    v7 = v30;
  }

  else
  {
    v8 = MEMORY[0x277CF0500];
    v9 = [v4 effectID];
    v10 = [v8 requestForAvatarWithIdentifier:v9];

    v11 = [(JFXAnimojiEffectRenderer *)self avatarStore];
    v29 = 0;
    v12 = [v11 avatarsForFetchRequest:v10 error:&v29];
    v28 = v29;

    v13 = [v12 firstObject];
    v14 = MEMORY[0x277CCACA8];
    v15 = NSStringFromJFXEffectType(7);
    v16 = [v4 effectID];
    v17 = [v14 stringWithFormat:@"Unable to render effect - type: %@, name: %@, reason: An Animoji with the specified name does not exist", v15, v16];

    if (v13)
    {
      v6 = [MEMORY[0x277CF0508] avatarForRecord:v13];
    }

    else
    {
      v18 = JFXLog_animoji();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(JFXAnimojiEffectRenderer *)v17 createNewRendererForPuppet:v18];
      }

      v6 = 0;
    }

    v7 = v28;
  }

  v31[0] = *MEMORY[0x277CF0498];
  v19 = [(JFXAnimojiEffectRenderer *)self constrainHeadPose];
  v20 = MEMORY[0x277CBEC38];
  v21 = MEMORY[0x277CBEC28];
  if (v19)
  {
    v22 = MEMORY[0x277CBEC28];
  }

  else
  {
    v22 = MEMORY[0x277CBEC38];
  }

  v32[0] = v22;
  v31[1] = *MEMORY[0x277CF0490];
  if ([(JFXAnimojiEffectRenderer *)self constrainHeadPose])
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  v32[1] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v25 = [MEMORY[0x277CF04F0] _cek_rendererWithDevice:0 options:v24];
  [v25 setAvatar:v6];
  v26 = objc_opt_new();
  [v25 setFaceTracker:v26];

  if (![(JFXAnimojiEffectRenderer *)self constrainHeadPose])
  {
    [v25 setEnableDepthMask:1 withFlippedDepth:1];
  }

  return v25;
}

- (void)asyncLoadNewPuppet:(id)a3 currentPuppet:(id)a4 captureOrientation:(int64_t)a5 interfaceOrientation:(int64_t)a6 primeFrame:(id)a7 backgroundColor:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  puppetLoadingQ = self->_puppetLoadingQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__JFXAnimojiEffectRenderer_asyncLoadNewPuppet_currentPuppet_captureOrientation_interfaceOrientation_primeFrame_backgroundColor___block_invoke;
  block[3] = &unk_278D7A5D8;
  block[4] = self;
  v24 = v14;
  v28 = a5;
  v29 = a6;
  v25 = v16;
  v26 = v15;
  v27 = v17;
  v19 = v17;
  v20 = v15;
  v21 = v16;
  v22 = v14;
  dispatch_async(puppetLoadingQ, block);
}

void __128__JFXAnimojiEffectRenderer_asyncLoadNewPuppet_currentPuppet_captureOrientation_interfaceOrientation_primeFrame_backgroundColor___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) currentPuppetIsEqualTo:*(a1 + 40)])
  {
    v2 = [*(a1 + 32) createNewRendererForPuppet:*(a1 + 40)];
    if ([*(a1 + 32) currentPuppetIsEqualTo:*(a1 + 40)])
    {
      if (([*(a1 + 32) setupHeadPoseAndBlendShapesForFrame:*(a1 + 48) forRenderer:v2 captureOrientation:*(a1 + 72) interfaceOrientation:*(a1 + 80) isInitialSetup:1] & 1) == 0)
      {
        v6 = JFXLog_animoji();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11.value) = 0;
          _os_log_impl(&dword_242A3B000, v6, OS_LOG_TYPE_DEFAULT, "setupPuppetRenderer was not successful", &v11, 2u);
        }

        if (([*(a1 + 32) currentPuppetIsEqualTo:*(a1 + 40)] & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if ([*(a1 + 32) currentPuppetIsEqualTo:*(a1 + 40)])
      {
        if (!*(a1 + 56))
        {
          memset(&v11, 0, sizeof(v11));
          [*(a1 + 48) timestamp];
          CMTimeMakeWithSeconds(&v11, v3, 1000000000);
          v4 = *(a1 + 32);
          v5 = *(a1 + 64);
          v8[0] = MEMORY[0x277D85DD0];
          v8[1] = 3221225472;
          v8[2] = __128__JFXAnimojiEffectRenderer_asyncLoadNewPuppet_currentPuppet_captureOrientation_interfaceOrientation_primeFrame_backgroundColor___block_invoke_59;
          v8[3] = &unk_278D7A5B0;
          v8[4] = v4;
          v9 = v2;
          v10 = *(a1 + 40);
          v7 = v11;
          [v4 renderAnimoji:v9 withPresentationTime:&v7 frame:0 depthData:0 backgroundColor:v5 completionBlock:v8];

          goto LABEL_11;
        }

LABEL_10:
        [*(a1 + 32) updateCurrentRenderer:v2 withPuppet:*(a1 + 40)];
      }
    }

LABEL_11:
  }
}

- (void)updateCurrentRenderer:(id)a3 withPuppet:(id)a4
{
  v6 = a3;
  v7 = a4;
  puppetRenderingQ = self->_puppetRenderingQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__JFXAnimojiEffectRenderer_updateCurrentRenderer_withPuppet___block_invoke;
  block[3] = &unk_278D7A600;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(puppetRenderingQ, block);
}

void __61__JFXAnimojiEffectRenderer_updateCurrentRenderer_withPuppet___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rendererLock];
  [v2 lock];

  v3 = [*(a1 + 32) currentPuppet];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    [*(a1 + 32) clearRenderer_renderLocked];
    [*(a1 + 32) setRenderer:*(a1 + 48)];
  }

  v5 = [*(a1 + 32) rendererLock];
  [v5 unlock];
}

- (BOOL)currentPuppetIsEqualTo:(id)a3
{
  v4 = a3;
  v5 = [(JFXAnimojiEffectRenderer *)self rendererLock];
  [v5 lock];

  v6 = [(JFXAnimojiEffectRenderer *)self currentPuppet];
  v7 = [v6 isEqual:v4];

  v8 = [(JFXAnimojiEffectRenderer *)self rendererLock];
  [v8 unlock];

  return v7;
}

- (BOOL)setupPoseForPreRecordedBlendShapes:(id)a3 forRenderer:(id)a4 captureOrientation:(int64_t)a5 interfaceOrientation:(int64_t)a6 withFrame:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (objc_opt_respondsToSelector())
  {
    [v13 _cek_beginTransaction];
  }

  if ([(JFXAnimojiEffectRenderer *)self constrainHeadPose])
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v15 = 1;
      goto LABEL_15;
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __125__JFXAnimojiEffectRenderer_setupPoseForPreRecordedBlendShapes_forRenderer_captureOrientation_interfaceOrientation_withFrame___block_invoke;
    v29[3] = &unk_278D7A628;
    v30 = v12;
    [v13 _cek_applyBlendshapeWeightsInHierarchyUsingBlock:v29];
    v15 = 1;
    v16 = v30;
  }

  else
  {
    if ((a5 - 1) > 3)
    {
      v17 = 0;
    }

    else
    {
      v17 = qword_242B5B7C0[a5 - 1];
    }

    v18 = [v13 faceTracker];
    [v18 setInterfaceOrientation:a6];

    v16 = [MEMORY[0x277CF04D8] trackingInfoWithARFrame:v14 inputOrientation:v17 outputOrientation:a6];
    v15 = v16 != 0;
    if (v16)
    {
      v19 = [v13 avatar];
      v20 = [v13 pointOfView];
      [v19 applyHeadPoseWithTrackingInfo:v16 gazeCorrection:0 pointOfView:v20];

      if (objc_opt_respondsToSelector())
      {
        v24 = MEMORY[0x277D85DD0];
        v25 = 3221225472;
        v26 = __125__JFXAnimojiEffectRenderer_setupPoseForPreRecordedBlendShapes_forRenderer_captureOrientation_interfaceOrientation_withFrame___block_invoke_2;
        v27 = &unk_278D7A628;
        v28 = v12;
        [v13 _cek_applyBlendshapeWeightsInHierarchyUsingBlock:&v24];
      }

      v21 = [v13 avatar];
      v22 = [v13 pointOfView];
      [v21 applyHeadPoseWithTrackingInfo:v16 gazeCorrection:0 pointOfView:v22];

      v15 = 1;
    }
  }

LABEL_15:
  if (objc_opt_respondsToSelector())
  {
    [v13 _cek_commitTransaction];
  }

  return v15;
}

void __125__JFXAnimojiEffectRenderer_setupPoseForPreRecordedBlendShapes_forRenderer_captureOrientation_interfaceOrientation_withFrame___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v6)
  {
    v7[2](v7, v6);
  }
}

void __125__JFXAnimojiEffectRenderer_setupPoseForPreRecordedBlendShapes_forRenderer_captureOrientation_interfaceOrientation_withFrame___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v6)
  {
    v7[2](v7, v6);
  }
}

- (BOOL)setupHeadPoseAndBlendShapesForFrame:(id)a3 forRenderer:(id)a4 captureOrientation:(int64_t)a5 interfaceOrientation:(int64_t)a6 isInitialSetup:(BOOL)a7
{
  v7 = a7;
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = v13;
  v15 = 0;
  if (v12 && v13)
  {
    if (objc_opt_respondsToSelector())
    {
      [v14 _cek_beginTransaction];
    }

    if ([(JFXAnimojiEffectRenderer *)self constrainHeadPose])
    {
      v15 = 1;
    }

    else
    {
      if ((a5 - 1) > 3)
      {
        v16 = 0;
      }

      else
      {
        v16 = qword_242B5B7C0[a5 - 1];
      }

      v17 = [v14 faceTracker];
      [v17 setInterfaceOrientation:a6];

      v18 = [MEMORY[0x277CF04D8] trackingInfoWithARFrame:v12 inputOrientation:v16 outputOrientation:a6];
      v15 = v18 != 0;
      v19 = [(JFXAnimojiEffectRenderer *)self trackingLossDelegate];
      v20 = [v19 shouldShowAnimojiFaceReticle];

      if (v18)
      {
        if ((v20 & 1) == 0)
        {
          v21 = [(JFXAnimojiEffectRenderer *)self trackingLossDelegate];
          [v21 hideAnimojiFaceReticleForTrackingGain];
        }

        v22 = [v14 avatar];
        v23 = [v14 pointOfView];
        [v22 applyHeadPoseWithTrackingInfo:v18 gazeCorrection:0 pointOfView:v23];

        [v22 applyBlendShapesWithTrackingInfo:v18];
        if (v7)
        {
          v24 = [v14 pointOfView];
          [v22 applyHeadPoseWithTrackingInfo:v18 gazeCorrection:0 pointOfView:v24];
        }

        if (self->_logged_render_failed)
        {
          v25 = JFXLog_animoji();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = NSStringFromJFXEffectType(7);
            v31 = 138543362;
            v32 = v26;
            _os_log_impl(&dword_242A3B000, v25, OS_LOG_TYPE_DEFAULT, "Rendering effect - type: %{public}@", &v31, 0xCu);
          }

          self->_logged_render_failed = 0;
        }
      }

      else
      {
        if (v20)
        {
          v27 = [(JFXAnimojiEffectRenderer *)self trackingLossDelegate];
          [v27 setupAnimojiFaceReticleForTrackingLoss];

          v28 = [(JFXAnimojiEffectRenderer *)self trackingLossDelegate];
          [v28 showAnimojiFaceReticleForTrackingLoss];
        }

        if (!self->_logged_render_failed)
        {
          v29 = JFXLog_animoji();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [JFXAnimojiEffectRenderer setupHeadPoseAndBlendShapesForFrame:v29 forRenderer:? captureOrientation:? interfaceOrientation:? isInitialSetup:?];
          }

          self->_logged_render_failed = 1;
        }
      }
    }

    if (objc_opt_respondsToSelector())
    {
      [v14 _cek_commitTransaction];
    }
  }

  return v15;
}

- (id)preRecordedBlendShapesForFrame:(id)a3 captureOrientation:(int64_t)a4 interfaceOrientation:(int64_t)a5 backgroundColor:(id)a6
{
  v18 = 0;
  v10 = a6;
  v11 = a3;
  v12 = [(JFXAnimojiEffectRenderer *)self currentPuppet];
  [(JFXAnimojiEffectRenderer *)self JFX_getRenderer:&v18 forAnimojiEffect:v12 primeFrame:0 captureOrientation:a4 interfaceOrientation:a5 backgroundColor:v10];

  v13 = v18;
  LODWORD(a4) = [(JFXAnimojiEffectRenderer *)self setupHeadPoseAndBlendShapesForFrame:v11 forRenderer:v13 captureOrientation:a4 interfaceOrientation:a5 isInitialSetup:1];
  [v11 timestamp];
  v15 = v14;

  [v13 updateAtTime:v15];
  v16 = 0;
  if (a4)
  {
    v16 = [(JFXAnimojiEffectRenderer *)self JFX_blendShapesForRenderer:v13];
  }

  return v16;
}

- (BOOL)JFX_getRenderer:(id *)a3 forAnimojiEffect:(id)a4 primeFrame:(id)a5 captureOrientation:(int64_t)a6 interfaceOrientation:(int64_t)a7 backgroundColor:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v17 = [(JFXAnimojiEffectRenderer *)self rendererLock];
  [v17 lock];

  v18 = [(JFXAnimojiEffectRenderer *)self currentPuppet];
  v19 = [v18 isEqual:v14];

  if ((v19 & 1) == 0)
  {
    if (![(JFXAnimojiEffectRenderer *)self asynchronouslyLoadNewPuppets])
    {
      v22 = [(JFXAnimojiEffectRenderer *)self createNewRendererForPuppet:v14];
      [(JFXAnimojiEffectRenderer *)self setRenderer:v22];

      [(JFXAnimojiEffectRenderer *)self setCurrentPuppet:v14];
      v21 = 1;
      goto LABEL_6;
    }

    v20 = [(JFXAnimojiEffectRenderer *)self currentPuppet];
    [(JFXAnimojiEffectRenderer *)self setCurrentPuppet:v14];
    [(JFXAnimojiEffectRenderer *)self asyncLoadNewPuppet:v14 currentPuppet:v20 captureOrientation:a6 interfaceOrientation:a7 primeFrame:v15 backgroundColor:v16];
  }

  v21 = 0;
LABEL_6:
  *a3 = [(JFXAnimojiEffectRenderer *)self renderer];
  v23 = [(JFXAnimojiEffectRenderer *)self rendererLock];
  [v23 unlock];

  return v21;
}

- (void)renderFrame:(id)a3 withEffect:(id)a4 depthData:(id)a5 captureOrientation:(int64_t)a6 interfaceOrientation:(int64_t)a7 preRecordedBlendShapes:(id)a8 backgroundColor:(id)a9 completionBlock:(id)a10
{
  v72 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v50 = a5;
  v51 = a8;
  v18 = a9;
  v48 = v17;
  v49 = a10;
  v70 = 0;
  v19 = [(JFXAnimojiEffectRenderer *)self JFX_getRenderer:&v70 forAnimojiEffect:v17 primeFrame:v16 captureOrientation:a6 interfaceOrientation:a7 backgroundColor:v18];
  v20 = v70;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  if ([(JFXAnimojiEffectRenderer *)self constrainHeadPose])
  {
    if (v20)
    {
      if ([v16 segmentationBuffer])
      {
        v21 = [v20 faceTracker];
        [v21 updateWithARFrame:v16 captureOrientation:a6 interfaceOrientation:a7 constrainHeadPose:-[JFXAnimojiEffectRenderer constrainHeadPose](self mirroredDepthData:{"constrainHeadPose"), 1}];
      }

      else
      {
        v21 = [v20 faceTracker];
        LOBYTE(v47) = 1;
        [v21 updateWithARFrame:v16 worldAlignment:2 fallBackDepthData:v50 captureOrientation:a6 interfaceOrientation:a7 constrainHeadPose:-[JFXAnimojiEffectRenderer constrainHeadPose](self mirroredDepthData:{"constrainHeadPose"), v47}];
      }

      if (v51)
      {
        v27 = [(JFXAnimojiEffectRenderer *)self setupPoseForPreRecordedBlendShapes:v51 forRenderer:v20 captureOrientation:a6 interfaceOrientation:a7 withFrame:v16];
        *(v67 + 24) = v27;
      }

      else
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v28 = [v16 anchors];
        v29 = [v28 countByEnumeratingWithState:&v62 objects:v71 count:16];
        if (v29)
        {
          v30 = *v63;
          while (2)
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v63 != v30)
              {
                objc_enumerationMutation(v28);
              }

              v32 = *(*(&v62 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v33 = v32;
                if ([v33 isTracked])
                {
                  *(v67 + 24) = 1;

                  goto LABEL_29;
                }
              }
            }

            v29 = [v28 countByEnumeratingWithState:&v62 objects:v71 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

LABEL_29:

        if (*(v67 + 24) == 1)
        {
          v34 = [(JFXAnimojiEffectRenderer *)self trackingLossDelegate];
          v35 = [v34 shouldShowAnimojiFaceReticle];

          if ((v35 & 1) == 0)
          {
            v36 = [(JFXAnimojiEffectRenderer *)self trackingLossDelegate];
            [v36 hideAnimojiFaceReticleForTrackingGain];
          }
        }

        else
        {
          v37 = [(JFXAnimojiEffectRenderer *)self trackingLossDelegate];
          v38 = [v37 shouldShowAnimojiFaceReticle];

          if (v38)
          {
            v39 = [(JFXAnimojiEffectRenderer *)self trackingLossDelegate];
            [v39 setupAnimojiFaceReticleForTrackingLoss];

            v40 = [(JFXAnimojiEffectRenderer *)self trackingLossDelegate];
            [v40 showAnimojiFaceReticleForTrackingLoss];
          }

          *(v67 + 24) = 1;
        }
      }
    }
  }

  else
  {
    if (v51)
    {
      v22 = [(JFXAnimojiEffectRenderer *)self setupPoseForPreRecordedBlendShapes:v51 forRenderer:v20 captureOrientation:a6 interfaceOrientation:a7 withFrame:v16];
    }

    else
    {
      v22 = [(JFXAnimojiEffectRenderer *)self setupHeadPoseAndBlendShapesForFrame:v16 forRenderer:v20 captureOrientation:a6 interfaceOrientation:a7 isInitialSetup:v19];
    }

    *(v67 + 24) = v22;
    if (v20)
    {
      if ([v16 segmentationBuffer] && self->_rgbOnlyMemoji)
      {
        [(JFXAnimojiEffectRenderer *)self computeHighQualitySegmentation:v16];
        v23 = [v20 faceTracker];
        [v23 updateWithARFrame:v16 captureOrientation:a6 interfaceOrientation:a7 constrainHeadPose:-[JFXAnimojiEffectRenderer constrainHeadPose](self mirroredDepthData:{"constrainHeadPose"), 0}];
      }

      [(JFXAnimojiEffectRenderer *)self workingSize];
      [(JFXAnimojiEffectRenderer *)self JFX_focalLengthForFrame:v16 renderer:v20 workingSize:a7 interfaceOrientation:?];
      v25 = v24;
      if (objc_opt_respondsToSelector())
      {
        *&v26 = v25;
        [v20 _cek_setCurrentPointOfViewFocalLength:v26];
      }
    }
  }

  objc_initWeak(&location, self);
  puppetRenderingQ = self->_puppetRenderingQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __156__JFXAnimojiEffectRenderer_renderFrame_withEffect_depthData_captureOrientation_interfaceOrientation_preRecordedBlendShapes_backgroundColor_completionBlock___block_invoke;
  block[3] = &unk_278D7A650;
  objc_copyWeak(&v60, &location);
  v59 = &v66;
  v53 = v16;
  v54 = self;
  v55 = v20;
  v56 = v50;
  v57 = v18;
  v58 = v49;
  v42 = v49;
  v43 = v18;
  v44 = v50;
  v45 = v20;
  v46 = v16;
  dispatch_async(puppetRenderingQ, block);

  objc_destroyWeak(&v60);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v66, 8);
}

void __156__JFXAnimojiEffectRenderer_renderFrame_withEffect_depthData_captureOrientation_interfaceOrientation_preRecordedBlendShapes_backgroundColor_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    memset(&v12, 0, sizeof(v12));
    [*(a1 + 32) timestamp];
    CMTimeMakeWithSeconds(&v12, v3, 1000000000);
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v11 = v12;
    [v4 renderAnimoji:v6 withPresentationTime:&v11 frame:v5 depthData:v7 backgroundColor:v8 completionBlock:v9];
  }

  else
  {
    v10 = *(a1 + 72);
    if (v10)
    {
      (*(v10 + 16))(v10, 0);
    }

    [WeakRetained flush];
  }
}

- (__CVBuffer)newPixelBufferRenderedFromARFrame:(id)a3 withEffect:(id)a4 depthData:(id)a5 captureOrientation:(int64_t)a6 interfaceOrientation:(int64_t)a7 preRecordedBlendShapes:(id)a8 backgroundColor:(id)a9
{
  v44[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = a9;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  if (!v17)
  {
    v17 = [v15 capturedDepthData];
    if ((useMirroredFrontCameraInStreamMode() & 1) == 0)
    {
      v20 = v17;
      v21 = [v17 depthDataMap];
      v22 = v21;
      if (v21)
      {
        Width = CVPixelBufferGetWidth(v21);
        Height = CVPixelBufferGetHeight(v22);
        p_mirroredDepthBuffer = &self->_mirroredDepthBuffer;
        mirroredDepthBuffer = self->_mirroredDepthBuffer;
        pixelBuffer = v22;
        if (mirroredDepthBuffer)
        {
          if (Width == CVPixelBufferGetWidth(mirroredDepthBuffer))
          {
            if (Height == CVPixelBufferGetWidth(*p_mirroredDepthBuffer))
            {
LABEL_11:
              v26 = *MEMORY[0x277CE2838];
              VTSessionSetProperty(self->_rotationSession, *MEMORY[0x277CE2838], *MEMORY[0x277CBED28]);
              v27 = *MEMORY[0x277CE2850];
              VTSessionSetProperty(self->_rotationSession, *MEMORY[0x277CE2850], *MEMORY[0x277CE2A28]);
              VTPixelRotationSessionRotateImage(self->_rotationSession, pixelBuffer, self->_mirroredDepthBuffer);
              VTSessionSetProperty(self->_rotationSession, v26, *MEMORY[0x277CBED10]);
              VTSessionSetProperty(self->_rotationSession, v27, *MEMORY[0x277CE2A20]);
              VTPixelRotationSessionRotateImage(self->_rotationSession, self->_mirroredDepthBuffer, pixelBuffer);
              goto LABEL_12;
            }

            texture = *p_mirroredDepthBuffer;
          }

          else
          {
            texture = *p_mirroredDepthBuffer;
          }
        }

        else
        {
          texture = 0;
        }

        PixelFormatType = CVPixelBufferGetPixelFormatType(v22);
        v43 = *MEMORY[0x277CC4DE8];
        v44[0] = MEMORY[0x277CBEC10];
        CVPixelBufferCreate(0, Width, Height, PixelFormatType, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1], &self->_mirroredDepthBuffer);
        CVPixelBufferRelease(texture);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v28 = dispatch_group_create();
  dispatch_group_enter(v28);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __162__JFXAnimojiEffectRenderer_newPixelBufferRenderedFromARFrame_withEffect_depthData_captureOrientation_interfaceOrientation_preRecordedBlendShapes_backgroundColor___block_invoke;
  v36[3] = &unk_278D7A678;
  v38 = &v39;
  v29 = v28;
  v37 = v29;
  [(JFXAnimojiEffectRenderer *)self renderFrame:v15 withEffect:v16 depthData:v17 captureOrientation:a6 interfaceOrientation:a7 preRecordedBlendShapes:v18 backgroundColor:v19 completionBlock:v36];
  dispatch_group_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
  v30 = v40[3];

  _Block_object_dispose(&v39, 8);
  return v30;
}

void __162__JFXAnimojiEffectRenderer_newPixelBufferRenderedFromARFrame_withEffect_depthData_captureOrientation_interfaceOrientation_preRecordedBlendShapes_backgroundColor___block_invoke(uint64_t a1, CVPixelBufferRef texture)
{
  *(*(*(a1 + 40) + 8) + 24) = CVPixelBufferRetain(texture);
  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

- (void)renderAnimoji:(id)a3 withPresentationTime:(id *)a4 frame:(id)a5 depthData:(id)a6 backgroundColor:(id)a7 completionBlock:(id)a8
{
  v14 = a3;
  v46 = a5;
  v15 = a6;
  v16 = a7;
  v47 = a8;
  pixelBufferOut = 0;
  time = *a4;
  [(JFXAnimojiEffectRenderer *)self setSystemTimeForAVTRenderer:CMTimeGetSeconds(&time)];
  v17 = *MEMORY[0x277CBECE8];
  LODWORD(a4) = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], self->_inputBufferPool, &pixelBufferOut);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  Height = CVPixelBufferGetHeight(pixelBufferOut);
  bzero(BaseAddress, Height * BytesPerRow);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  if (a4)
  {
    v21 = JFXLog_effects();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [JFXAnimojiEffectRenderer renderAnimoji:withPresentationTime:frame:depthData:backgroundColor:completionBlock:];
    }
  }

  time.value = 0;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBufferOut, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBufferOut, 0);
  if (CVMetalTextureCacheCreateTextureFromImage(v17, self->_metalTextureCache, pixelBufferOut, 0, MTLPixelFormatBGRA8Unorm_sRGB, WidthOfPlane, HeightOfPlane, 0, &time))
  {
    v24 = JFXLog_effects();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [JFXAnimojiEffectRenderer renderAnimoji:withPresentationTime:frame:depthData:backgroundColor:completionBlock:];
    }
  }

  v25 = [MEMORY[0x277CD6F50] renderPassDescriptor];
  v26 = [v25 colorAttachments];
  v27 = [v26 objectAtIndexedSubscript:0];
  [v27 setLoadAction:2];

  v54 = 0.0;
  v55 = 0.0;
  v52 = 0.0;
  v53 = 0.0;
  if (v16)
  {
    [v16 getRed:&v55 green:&v54 blue:&v53 alpha:&v52];
    v28 = v54;
    v29 = v55;
    v30 = v52;
    v31 = v53;
  }

  else
  {
    v30 = 0.0;
    v31 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
  }

  v32 = [v25 colorAttachments];
  v33 = [v32 objectAtIndexedSubscript:0];
  [v33 setClearColor:{v29, v28, v31, v30}];

  v34 = CVMetalTextureGetTexture(time.value);
  v35 = [v25 colorAttachments];
  v36 = [v35 objectAtIndexedSubscript:0];
  [v36 setTexture:v34];

  v37 = [v14 commandQueue];
  v38 = [v37 commandBuffer];

  v39 = [(JFXAnimojiEffectRenderer *)self useDepth];
  v40 = 0;
  if (v15)
  {
    if (v39)
    {
      v41 = [(JFXAnimojiEffectRenderer *)self JFX_depthDataToTexture:v15];
      v40 = v41;
      if (v41)
      {
        v42 = CVMetalTextureGetTexture(v41);
        if (v42)
        {
          v43 = v42;
          [v14 setCapturedDepth:v42];
        }
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(JFXAnimojiEffectRenderer *)self systemTimeForAVTRenderer];
    [v14 _cek_renderAtTime:-[JFXAnimojiEffectRenderer allowAntialiasing](self enableAntialiasing:"allowAntialiasing") viewport:v38 commandBuffer:v25 passDescriptor:{v44, 0.0, 0.0, WidthOfPlane, HeightOfPlane}];
  }

  objc_initWeak(&location, self);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __111__JFXAnimojiEffectRenderer_renderAnimoji_withPresentationTime_frame_depthData_backgroundColor_completionBlock___block_invoke;
  v48[3] = &unk_278D7A6A0;
  objc_copyWeak(v50, &location);
  v45 = v47;
  v49 = v45;
  v50[1] = pixelBufferOut;
  v50[2] = time.value;
  v50[3] = v40;
  [v38 addCompletedHandler:v48];
  [v38 commit];

  objc_destroyWeak(v50);
  objc_destroyWeak(&location);
}

void __111__JFXAnimojiEffectRenderer_renderAnimoji_withPresentationTime_frame_depthData_backgroundColor_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 48));
  }

  CFRelease(*(a1 + 56));
  v3 = *(a1 + 64);
  if (v3)
  {
    CVBufferRelease(v3);
  }

  CVPixelBufferRelease(*(a1 + 48));
  [WeakRetained flush];
}

- (void)computeHighQualitySegmentation:(id)a3
{
  v4 = a3;
  if ([v4 capturedImage])
  {
    if ([v4 segmentationBuffer])
    {
      v5 = [(AVTRenderer *)self->_renderer commandQueue];

      if (v5)
      {
        pixelBufferOut = 0;
        CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], [(JFXAnimojiEffectRenderer *)self deviceOrientedColorBufferPool], &pixelBufferOut);
        VTSessionSetProperty(self->_rotationSession, *MEMORY[0x277CE2850], *MEMORY[0x277CE2A30]);
        rotationSession = self->_rotationSession;
        v7 = [v4 capturedImage];
        VTPixelRotationSessionRotateImage(rotationSession, v7, pixelBufferOut);
        v8 = objc_opt_new();
        v9 = *(MEMORY[0x277CBF2C0] + 16);
        *&v13.a = *MEMORY[0x277CBF2C0];
        *&v13.c = v9;
        *&v13.tx = *(MEMORY[0x277CBF2C0] + 32);
        CGAffineTransformRotate(&v14, &v13, 90.0);
        v13 = v14;
        [v8 setTransform:&v13];
        [v8 setInColorBuffer:pixelBufferOut];
        [v8 setOutColorBuffer:0];
        [v8 setOutPersonSegmentationMatteBuffer:self->_segmentationPixelBuffer];
        [v8 setEffectType:8];
        if ([(PTEffect *)self->_effect render:v8])
        {
          v10 = JFXLog_effects();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [JFXAnimojiEffectRenderer computeHighQualitySegmentation:];
          }
        }

        v11 = VTPixelTransferSessionTransferImage(self->_transferSession, self->_segmentationPixelBuffer, [v4 segmentationBuffer]);
        [v4 setCapturedImage:pixelBufferOut];
        CVPixelBufferRelease(pixelBufferOut);
        if (v11)
        {
          v12 = JFXLog_effects();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [JFXAnimojiEffectRenderer computeHighQualitySegmentation:];
          }
        }
      }
    }
  }
}

- (id)JFX_blendShapesForRenderer:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (objc_opt_respondsToSelector())
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__JFXAnimojiEffectRenderer_JFX_blendShapesForRenderer___block_invoke;
    v7[3] = &unk_278D7A6C8;
    v8 = v4;
    [v3 _cek_fetchBlendshapeWeightsInHierarchyUsingBlock:v7];
  }

  if ([v4 count])
  {
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)createTextureCaches
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MTLCreateSystemDefaultDevice();
  v12 = *MEMORY[0x277CC4D40];
  v13[0] = &unk_28556D7C8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v5 = *MEMORY[0x277CC4D50];
  v10 = *MEMORY[0x277CC4D50];
  v11 = &unk_28556D0F8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = *MEMORY[0x277CBECE8];
  CVMetalTextureCacheCreate(*MEMORY[0x277CBECE8], v4, v3, v6, &self->_metalTextureCache);
  if ([(JFXAnimojiEffectRenderer *)self useDepth])
  {
    v8 = v5;
    v9 = &unk_28556D110;
    CVMetalTextureCacheCreate(v7, v4, v3, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1], &self->_metalDepthTextureCache);
  }
}

- (__CVBuffer)JFX_depthDataToTexture:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = v4;
  if ([v6 depthDataType] != 1717855600)
  {
    v7 = [v6 depthDataByConvertingToDepthDataType:1717855600];

    v6 = v7;
  }

  v8 = [v6 depthDataMap];
  Width = CVPixelBufferGetWidth(v8);
  Height = CVPixelBufferGetHeight(v8);
  textureOut = 0;
  LODWORD(v8) = CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], self->_metalDepthTextureCache, v8, 0, MTLPixelFormatR32Float, Width, Height, 0, &textureOut);
  v11 = textureOut;

  if (v8)
  {
LABEL_5:
    v11 = 0;
  }

  return v11;
}

- (double)JFX_focalLengthForFrame:(id)a3 renderer:(id)a4 workingSize:(CGSize)a5 interfaceOrientation:(int64_t)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a4;
  v12 = a3;
  v13 = [v12 camera];
  [v13 intrinsics];
  v31 = v15;
  v32 = v14;
  v29 = v16;
  v17 = [v12 camera];

  [v17 imageResolution];
  [JFXFaceTrackingUtilities adjustIntrinsics:a6 forRenderSize:v32 capturedSize:v31 interfaceOrientation:v29, width, height, v18, v19];
  v30.columns[0] = v20;
  v30.columns[1] = v21;
  v30.columns[2] = v22;

  v23 = [(JFXAnimojiEffectRenderer *)self JFX_inputBufferIsPortraitAspect:width, height];
  v24 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v11 _cek_currentPointOfViewSensorHeight];
    v24 = v25;
  }

  if (v23)
  {
    height = width;
  }

  pv_focal_length_from_intrinsics(v30);
  v27 = v24 * v26 / height;

  return v27;
}

- (JFXAnimojiTrackingLossDelegate)trackingLossDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_trackingLossDelegate);

  return WeakRetained;
}

- (CGSize)workingSize
{
  width = self->_workingSize.width;
  height = self->_workingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)createNewRendererForPuppet:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_242A3B000, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

- (void)setupHeadPoseAndBlendShapesForFrame:(void *)a1 forRenderer:(NSObject *)a2 captureOrientation:interfaceOrientation:isInitialSetup:.cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromJFXEffectType(7);
  v5 = [a1 currentPuppet];
  v6 = [v5 effectID];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_242A3B000, a2, OS_LOG_TYPE_ERROR, "Unable to render effect - type: %{public}@, name: %{public}@, reason: No tracked face anchors for the current frame", &v7, 0x16u);
}

@end