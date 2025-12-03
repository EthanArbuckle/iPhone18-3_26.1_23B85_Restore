@interface JFXAnimojiEffectRenderer
+ (BOOL)isSupported;
+ (CGSize)animojiBufferSizeWithImageSize:(CGSize)result interfaceOrientation:(int64_t)orientation;
- (AVTAvatarStore)avatarStore;
- (BOOL)JFX_getRenderer:(id *)renderer forAnimojiEffect:(id)effect primeFrame:(id)frame captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation backgroundColor:(id)color;
- (BOOL)currentPuppetIsEqualTo:(id)to;
- (BOOL)setupHeadPoseAndBlendShapesForFrame:(id)frame forRenderer:(id)renderer captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation isInitialSetup:(BOOL)setup;
- (BOOL)setupPoseForPreRecordedBlendShapes:(id)shapes forRenderer:(id)renderer captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation withFrame:(id)frame;
- (CGSize)workingSize;
- (JFXAnimojiEffectRenderer)initWithConstrainedHeadPose:(BOOL)pose rgbOnlyMemoji:(BOOL)memoji;
- (JFXAnimojiTrackingLossDelegate)trackingLossDelegate;
- (NSString)description;
- (__CVBuffer)JFX_depthDataToTexture:(id)texture;
- (__CVBuffer)newPixelBufferRenderedFromARFrame:(id)frame withEffect:(id)effect depthData:(id)data captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation preRecordedBlendShapes:(id)shapes backgroundColor:(id)color;
- (double)JFX_focalLengthForFrame:(id)frame renderer:(id)renderer workingSize:(CGSize)size interfaceOrientation:(int64_t)orientation;
- (id)JFX_blendShapesForRenderer:(id)renderer;
- (id)createNewRendererForPuppet:(id)puppet;
- (id)preRecordedBlendShapesForFrame:(id)frame captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation backgroundColor:(id)color;
- (id)renderWithInputs:(id)inputs time:(id *)time userContext:(id)context compositeContext:(id)compositeContext;
- (id)renderWithTime:(id *)time metadata:(id)metadata;
- (void)asyncLoadNewPuppet:(id)puppet currentPuppet:(id)currentPuppet captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation primeFrame:(id)frame backgroundColor:(id)color;
- (void)clear;
- (void)clearRenderer_renderLocked;
- (void)computeHighQualitySegmentation:(id)segmentation;
- (void)createTextureCaches;
- (void)dealloc;
- (void)flush;
- (void)renderAnimoji:(id)animoji withPresentationTime:(id *)time frame:(id)frame depthData:(id)data backgroundColor:(id)color completionBlock:(id)block;
- (void)renderFrame:(id)frame withEffect:(id)effect depthData:(id)data captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation preRecordedBlendShapes:(id)shapes backgroundColor:(id)color completionBlock:(id)self0;
- (void)setupInputBufferPoolForSize:(CGSize)size capturedImage:(__CVBuffer *)image;
- (void)updateCurrentRenderer:(id)renderer withPuppet:(id)puppet;
@end

@implementation JFXAnimojiEffectRenderer

+ (CGSize)animojiBufferSizeWithImageSize:(CGSize)result interfaceOrientation:(int64_t)orientation
{
  v5 = result.height > result.width || (orientation - 3) < 0xFFFFFFFFFFFFFFFELL;
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

- (JFXAnimojiEffectRenderer)initWithConstrainedHeadPose:(BOOL)pose rgbOnlyMemoji:(BOOL)memoji
{
  memojiCopy = memoji;
  v29.receiver = self;
  v29.super_class = JFXAnimojiEffectRenderer;
  v6 = [(JFXAnimojiEffectRenderer *)&v29 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CF0518]);
    [(JFXAnimojiEffectRenderer *)v6 setAvatarStore:v7];

    v6->_rgbOnlyMemoji = memojiCopy;
    v8 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    rendererLock = v6->_rendererLock;
    v6->_rendererLock = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    renderPassLock = v6->_renderPassLock;
    v6->_renderPassLock = v10;

    v6->_systemTimeForAVTRenderer = 0.0;
    *&v6->_asynchronouslyLoadNewPuppets = 256;
    if (memojiCopy)
    {
      VTPixelTransferSessionCreate(0, &v6->_transferSession);
    }

    v12 = MEMORY[0x277CCACA8];
    jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
    bundleIdentifier = [jfxBundle bundleIdentifier];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v12 stringWithFormat:@"%@.%@.puppetLoading", bundleIdentifier, v16];

    v18 = dispatch_queue_create([v17 UTF8String], 0);
    puppetLoadingQ = v6->_puppetLoadingQ;
    v6->_puppetLoadingQ = v18;

    v20 = MEMORY[0x277CCACA8];
    jfxBundle2 = [MEMORY[0x277CCA8D8] jfxBundle];
    bundleIdentifier2 = [jfxBundle2 bundleIdentifier];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v20 stringWithFormat:@"%@.%@.puppetRendering", bundleIdentifier2, v24];

    v26 = dispatch_queue_create([v25 UTF8String], 0);
    puppetRenderingQ = v6->_puppetRenderingQ;
    v6->_puppetRenderingQ = v26;

    v6->_logged_render_failed = 0;
    v6->_constrainHeadPose = pose;
    v6->_rgbOnlyMemoji = memojiCopy;
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
  rendererLock = [(JFXAnimojiEffectRenderer *)self rendererLock];
  [rendererLock lock];

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

  rendererLock2 = [(JFXAnimojiEffectRenderer *)self rendererLock];
  [rendererLock2 unlock];
}

- (void)flush
{
  rendererLock = [(JFXAnimojiEffectRenderer *)self rendererLock];
  [rendererLock lock];

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

  rendererLock2 = [(JFXAnimojiEffectRenderer *)self rendererLock];
  [rendererLock2 unlock];
}

- (void)clearRenderer_renderLocked
{
  renderer = [(JFXAnimojiEffectRenderer *)self renderer];

  if (renderer)
  {
    renderer2 = [(JFXAnimojiEffectRenderer *)self renderer];
    [renderer2 setEnableDepthMask:0];

    LODWORD(renderer2) = [(JFXAnimojiEffectRenderer *)self constrainHeadPose];
    renderer3 = [(JFXAnimojiEffectRenderer *)self renderer];
    v7 = renderer3;
    if (renderer2)
    {
      faceTracker = [renderer3 faceTracker];
      [faceTracker discardARFrameData];
    }

    else
    {
      [renderer3 setCapturedDepth:0];
    }
  }
}

- (NSString)description
{
  [(NSLock *)self->_rendererLock lock];
  currentPuppet = [(JFXAnimojiEffectRenderer *)self currentPuppet];
  effectID = [currentPuppet effectID];

  [(NSLock *)self->_rendererLock unlock];
  v8.receiver = self;
  v8.super_class = JFXAnimojiEffectRenderer;
  v5 = [(JFXAnimojiEffectRenderer *)&v8 description];
  v6 = [v5 stringByAppendingFormat:@" %@", effectID];

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

- (void)setupInputBufferPoolForSize:(CGSize)size capturedImage:(__CVBuffer *)image
{
  height = size.height;
  width = size.width;
  v43[3] = *MEMORY[0x277D85DE8];
  [(JFXAnimojiEffectRenderer *)self workingSize];
  if (width != v9 || height != v8)
  {
    pixelBuffer = image;
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

    sRGBColorSpace = [MEMORY[0x277D415E0] sRGBColorSpace];
    nclcTriplet = [sRGBColorSpace nclcTriplet];

    v18 = *MEMORY[0x277CC4C00];
    v42[0] = *MEMORY[0x277CC4C00];
    v43[0] = [nclcTriplet colorPrimary];
    v19 = *MEMORY[0x277CC4CC0];
    v42[1] = *MEMORY[0x277CC4CC0];
    v43[1] = [nclcTriplet transferFunction];
    v20 = *MEMORY[0x277CC4D10];
    v42[2] = *MEMORY[0x277CC4D10];
    v43[2] = [nclcTriplet ycbcrMatrix];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];
    v22 = *MEMORY[0x277CC4B48];
    [v11 setObject:v21 forKeyedSubscript:*MEMORY[0x277CC4B48]];

    v23 = *MEMORY[0x277CBECE8];
    CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], 0, v11, &self->_inputBufferPool);
    if (self->_rgbOnlyMemoji)
    {
      v35 = nclcTriplet;
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
      commandQueue = [(AVTRenderer *)self->_renderer commandQueue];
      [v30 setMetalCommandQueue:commandQueue];

      [v30 setSyncInitialization:1];
      v32 = [objc_alloc(MEMORY[0x277D3E868]) initWithDescriptor:v30];
      effect = self->_effect;
      self->_effect = v32;

      [MEMORY[0x277D3E868] personSegmentationMatteFormatForColorSize:{height, width}];
      CVPixelBufferRelease(self->_segmentationPixelBuffer);
      v38 = *MEMORY[0x277CC4DE8];
      v39 = MEMORY[0x277CBEC10];
      nclcTriplet = v35;
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

- (id)renderWithTime:(id *)time metadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = [metadataCopy objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_JFXARMetadata"];
  v27 = [metadataCopy objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_DepthData"];
  v7 = [metadataCopy objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_Effect"];
  v8 = [metadataCopy objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_DataRepresentation"];
  v9 = [metadataCopy objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_BackgroundColor"];
  arFrame = [v6 arFrame];
  dataRepresentation = [v7 dataRepresentation];
  v25 = v8;
  LODWORD(v8) = [v8 isEqualToData:dataRepresentation];

  v26 = v6;
  if (v8)
  {
    animojiPhysicsBlendShapes = [v6 animojiPhysicsBlendShapes];
  }

  else
  {
    animojiPhysicsBlendShapes = 0;
  }

  v13 = [metadataCopy objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_AVCaptureVideoOrientation"];
  integerValue = [v13 integerValue];

  v15 = [metadataCopy objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_UIInterfaceOrientation"];
  integerValue2 = [v15 integerValue];

  v17 = [metadataCopy objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_RenderSize"];
  [v17 CGSizeValue];
  -[JFXAnimojiEffectRenderer setupInputBufferPoolForSize:capturedImage:](self, "setupInputBufferPoolForSize:capturedImage:", [arFrame capturedImage], v18, v19);
  renderPassLock = [(JFXAnimojiEffectRenderer *)self renderPassLock];
  [renderPassLock lock];

  kdebug_trace();
  v21 = [(JFXAnimojiEffectRenderer *)self newPixelBufferRenderedFromARFrame:arFrame withEffect:v7 depthData:v27 captureOrientation:integerValue interfaceOrientation:integerValue2 preRecordedBlendShapes:animojiPhysicsBlendShapes backgroundColor:v9];
  kdebug_trace();
  renderPassLock2 = [(JFXAnimojiEffectRenderer *)self renderPassLock];
  [renderPassLock2 unlock];

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

- (id)renderWithInputs:(id)inputs time:(id *)time userContext:(id)context compositeContext:(id)compositeContext
{
  inputsCopy = inputs;
  v15 = *time;
  v10 = [(JFXAnimojiEffectRenderer *)self renderWithTime:&v15 metadata:context];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
LABEL_3:
    v13 = v12;
    goto LABEL_4;
  }

  if (inputsCopy)
  {
    v13 = [inputsCopy objectForKeyedSubscript:&unk_28556D0E0];

    if (v13)
    {
      v12 = [inputsCopy objectForKeyedSubscript:&unk_28556D0E0];
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

- (id)createNewRendererForPuppet:(id)puppet
{
  v32[2] = *MEMORY[0x277D85DE8];
  puppetCopy = puppet;
  dataRepresentation = [puppetCopy dataRepresentation];
  if (dataRepresentation && [MEMORY[0x277CF04B8] canLoadDataRepresentation:dataRepresentation])
  {
    v30 = 0;
    v6 = [MEMORY[0x277CF04B8] avatarWithDataRepresentation:dataRepresentation error:&v30];
    v7 = v30;
  }

  else
  {
    v8 = MEMORY[0x277CF0500];
    effectID = [puppetCopy effectID];
    v10 = [v8 requestForAvatarWithIdentifier:effectID];

    avatarStore = [(JFXAnimojiEffectRenderer *)self avatarStore];
    v29 = 0;
    v12 = [avatarStore avatarsForFetchRequest:v10 error:&v29];
    v28 = v29;

    firstObject = [v12 firstObject];
    v14 = MEMORY[0x277CCACA8];
    v15 = NSStringFromJFXEffectType(7);
    effectID2 = [puppetCopy effectID];
    v17 = [v14 stringWithFormat:@"Unable to render effect - type: %@, name: %@, reason: An Animoji with the specified name does not exist", v15, effectID2];

    if (firstObject)
    {
      v6 = [MEMORY[0x277CF0508] avatarForRecord:firstObject];
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
  constrainHeadPose = [(JFXAnimojiEffectRenderer *)self constrainHeadPose];
  v20 = MEMORY[0x277CBEC38];
  v21 = MEMORY[0x277CBEC28];
  if (constrainHeadPose)
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

- (void)asyncLoadNewPuppet:(id)puppet currentPuppet:(id)currentPuppet captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation primeFrame:(id)frame backgroundColor:(id)color
{
  puppetCopy = puppet;
  currentPuppetCopy = currentPuppet;
  frameCopy = frame;
  colorCopy = color;
  puppetLoadingQ = self->_puppetLoadingQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__JFXAnimojiEffectRenderer_asyncLoadNewPuppet_currentPuppet_captureOrientation_interfaceOrientation_primeFrame_backgroundColor___block_invoke;
  block[3] = &unk_278D7A5D8;
  block[4] = self;
  v24 = puppetCopy;
  orientationCopy = orientation;
  interfaceOrientationCopy = interfaceOrientation;
  v25 = frameCopy;
  v26 = currentPuppetCopy;
  v27 = colorCopy;
  v19 = colorCopy;
  v20 = currentPuppetCopy;
  v21 = frameCopy;
  v22 = puppetCopy;
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

- (void)updateCurrentRenderer:(id)renderer withPuppet:(id)puppet
{
  rendererCopy = renderer;
  puppetCopy = puppet;
  puppetRenderingQ = self->_puppetRenderingQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__JFXAnimojiEffectRenderer_updateCurrentRenderer_withPuppet___block_invoke;
  block[3] = &unk_278D7A600;
  block[4] = self;
  v12 = puppetCopy;
  v13 = rendererCopy;
  v9 = rendererCopy;
  v10 = puppetCopy;
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

- (BOOL)currentPuppetIsEqualTo:(id)to
{
  toCopy = to;
  rendererLock = [(JFXAnimojiEffectRenderer *)self rendererLock];
  [rendererLock lock];

  currentPuppet = [(JFXAnimojiEffectRenderer *)self currentPuppet];
  v7 = [currentPuppet isEqual:toCopy];

  rendererLock2 = [(JFXAnimojiEffectRenderer *)self rendererLock];
  [rendererLock2 unlock];

  return v7;
}

- (BOOL)setupPoseForPreRecordedBlendShapes:(id)shapes forRenderer:(id)renderer captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation withFrame:(id)frame
{
  shapesCopy = shapes;
  rendererCopy = renderer;
  frameCopy = frame;
  if (objc_opt_respondsToSelector())
  {
    [rendererCopy _cek_beginTransaction];
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
    v30 = shapesCopy;
    [rendererCopy _cek_applyBlendshapeWeightsInHierarchyUsingBlock:v29];
    v15 = 1;
    v16 = v30;
  }

  else
  {
    if ((orientation - 1) > 3)
    {
      v17 = 0;
    }

    else
    {
      v17 = qword_242B5B7C0[orientation - 1];
    }

    faceTracker = [rendererCopy faceTracker];
    [faceTracker setInterfaceOrientation:interfaceOrientation];

    v16 = [MEMORY[0x277CF04D8] trackingInfoWithARFrame:frameCopy inputOrientation:v17 outputOrientation:interfaceOrientation];
    v15 = v16 != 0;
    if (v16)
    {
      avatar = [rendererCopy avatar];
      pointOfView = [rendererCopy pointOfView];
      [avatar applyHeadPoseWithTrackingInfo:v16 gazeCorrection:0 pointOfView:pointOfView];

      if (objc_opt_respondsToSelector())
      {
        v24 = MEMORY[0x277D85DD0];
        v25 = 3221225472;
        v26 = __125__JFXAnimojiEffectRenderer_setupPoseForPreRecordedBlendShapes_forRenderer_captureOrientation_interfaceOrientation_withFrame___block_invoke_2;
        v27 = &unk_278D7A628;
        v28 = shapesCopy;
        [rendererCopy _cek_applyBlendshapeWeightsInHierarchyUsingBlock:&v24];
      }

      avatar2 = [rendererCopy avatar];
      pointOfView2 = [rendererCopy pointOfView];
      [avatar2 applyHeadPoseWithTrackingInfo:v16 gazeCorrection:0 pointOfView:pointOfView2];

      v15 = 1;
    }
  }

LABEL_15:
  if (objc_opt_respondsToSelector())
  {
    [rendererCopy _cek_commitTransaction];
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

- (BOOL)setupHeadPoseAndBlendShapesForFrame:(id)frame forRenderer:(id)renderer captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation isInitialSetup:(BOOL)setup
{
  setupCopy = setup;
  v33 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  rendererCopy = renderer;
  v14 = rendererCopy;
  v15 = 0;
  if (frameCopy && rendererCopy)
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
      if ((orientation - 1) > 3)
      {
        v16 = 0;
      }

      else
      {
        v16 = qword_242B5B7C0[orientation - 1];
      }

      faceTracker = [v14 faceTracker];
      [faceTracker setInterfaceOrientation:interfaceOrientation];

      v18 = [MEMORY[0x277CF04D8] trackingInfoWithARFrame:frameCopy inputOrientation:v16 outputOrientation:interfaceOrientation];
      v15 = v18 != 0;
      trackingLossDelegate = [(JFXAnimojiEffectRenderer *)self trackingLossDelegate];
      shouldShowAnimojiFaceReticle = [trackingLossDelegate shouldShowAnimojiFaceReticle];

      if (v18)
      {
        if ((shouldShowAnimojiFaceReticle & 1) == 0)
        {
          trackingLossDelegate2 = [(JFXAnimojiEffectRenderer *)self trackingLossDelegate];
          [trackingLossDelegate2 hideAnimojiFaceReticleForTrackingGain];
        }

        avatar = [v14 avatar];
        pointOfView = [v14 pointOfView];
        [avatar applyHeadPoseWithTrackingInfo:v18 gazeCorrection:0 pointOfView:pointOfView];

        [avatar applyBlendShapesWithTrackingInfo:v18];
        if (setupCopy)
        {
          pointOfView2 = [v14 pointOfView];
          [avatar applyHeadPoseWithTrackingInfo:v18 gazeCorrection:0 pointOfView:pointOfView2];
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
        if (shouldShowAnimojiFaceReticle)
        {
          trackingLossDelegate3 = [(JFXAnimojiEffectRenderer *)self trackingLossDelegate];
          [trackingLossDelegate3 setupAnimojiFaceReticleForTrackingLoss];

          trackingLossDelegate4 = [(JFXAnimojiEffectRenderer *)self trackingLossDelegate];
          [trackingLossDelegate4 showAnimojiFaceReticleForTrackingLoss];
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

- (id)preRecordedBlendShapesForFrame:(id)frame captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation backgroundColor:(id)color
{
  v18 = 0;
  colorCopy = color;
  frameCopy = frame;
  currentPuppet = [(JFXAnimojiEffectRenderer *)self currentPuppet];
  [(JFXAnimojiEffectRenderer *)self JFX_getRenderer:&v18 forAnimojiEffect:currentPuppet primeFrame:0 captureOrientation:orientation interfaceOrientation:interfaceOrientation backgroundColor:colorCopy];

  v13 = v18;
  LODWORD(orientation) = [(JFXAnimojiEffectRenderer *)self setupHeadPoseAndBlendShapesForFrame:frameCopy forRenderer:v13 captureOrientation:orientation interfaceOrientation:interfaceOrientation isInitialSetup:1];
  [frameCopy timestamp];
  v15 = v14;

  [v13 updateAtTime:v15];
  v16 = 0;
  if (orientation)
  {
    v16 = [(JFXAnimojiEffectRenderer *)self JFX_blendShapesForRenderer:v13];
  }

  return v16;
}

- (BOOL)JFX_getRenderer:(id *)renderer forAnimojiEffect:(id)effect primeFrame:(id)frame captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation backgroundColor:(id)color
{
  effectCopy = effect;
  frameCopy = frame;
  colorCopy = color;
  rendererLock = [(JFXAnimojiEffectRenderer *)self rendererLock];
  [rendererLock lock];

  currentPuppet = [(JFXAnimojiEffectRenderer *)self currentPuppet];
  v19 = [currentPuppet isEqual:effectCopy];

  if ((v19 & 1) == 0)
  {
    if (![(JFXAnimojiEffectRenderer *)self asynchronouslyLoadNewPuppets])
    {
      v22 = [(JFXAnimojiEffectRenderer *)self createNewRendererForPuppet:effectCopy];
      [(JFXAnimojiEffectRenderer *)self setRenderer:v22];

      [(JFXAnimojiEffectRenderer *)self setCurrentPuppet:effectCopy];
      v21 = 1;
      goto LABEL_6;
    }

    currentPuppet2 = [(JFXAnimojiEffectRenderer *)self currentPuppet];
    [(JFXAnimojiEffectRenderer *)self setCurrentPuppet:effectCopy];
    [(JFXAnimojiEffectRenderer *)self asyncLoadNewPuppet:effectCopy currentPuppet:currentPuppet2 captureOrientation:orientation interfaceOrientation:interfaceOrientation primeFrame:frameCopy backgroundColor:colorCopy];
  }

  v21 = 0;
LABEL_6:
  *renderer = [(JFXAnimojiEffectRenderer *)self renderer];
  rendererLock2 = [(JFXAnimojiEffectRenderer *)self rendererLock];
  [rendererLock2 unlock];

  return v21;
}

- (void)renderFrame:(id)frame withEffect:(id)effect depthData:(id)data captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation preRecordedBlendShapes:(id)shapes backgroundColor:(id)color completionBlock:(id)self0
{
  v72 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  effectCopy = effect;
  dataCopy = data;
  shapesCopy = shapes;
  colorCopy = color;
  v48 = effectCopy;
  blockCopy = block;
  v70 = 0;
  v19 = [(JFXAnimojiEffectRenderer *)self JFX_getRenderer:&v70 forAnimojiEffect:effectCopy primeFrame:frameCopy captureOrientation:orientation interfaceOrientation:interfaceOrientation backgroundColor:colorCopy];
  v20 = v70;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  if ([(JFXAnimojiEffectRenderer *)self constrainHeadPose])
  {
    if (v20)
    {
      if ([frameCopy segmentationBuffer])
      {
        faceTracker = [v20 faceTracker];
        [faceTracker updateWithARFrame:frameCopy captureOrientation:orientation interfaceOrientation:interfaceOrientation constrainHeadPose:-[JFXAnimojiEffectRenderer constrainHeadPose](self mirroredDepthData:{"constrainHeadPose"), 1}];
      }

      else
      {
        faceTracker = [v20 faceTracker];
        LOBYTE(v47) = 1;
        [faceTracker updateWithARFrame:frameCopy worldAlignment:2 fallBackDepthData:dataCopy captureOrientation:orientation interfaceOrientation:interfaceOrientation constrainHeadPose:-[JFXAnimojiEffectRenderer constrainHeadPose](self mirroredDepthData:{"constrainHeadPose"), v47}];
      }

      if (shapesCopy)
      {
        v27 = [(JFXAnimojiEffectRenderer *)self setupPoseForPreRecordedBlendShapes:shapesCopy forRenderer:v20 captureOrientation:orientation interfaceOrientation:interfaceOrientation withFrame:frameCopy];
        *(v67 + 24) = v27;
      }

      else
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        anchors = [frameCopy anchors];
        v29 = [anchors countByEnumeratingWithState:&v62 objects:v71 count:16];
        if (v29)
        {
          v30 = *v63;
          while (2)
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v63 != v30)
              {
                objc_enumerationMutation(anchors);
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

            v29 = [anchors countByEnumeratingWithState:&v62 objects:v71 count:16];
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
          trackingLossDelegate = [(JFXAnimojiEffectRenderer *)self trackingLossDelegate];
          shouldShowAnimojiFaceReticle = [trackingLossDelegate shouldShowAnimojiFaceReticle];

          if ((shouldShowAnimojiFaceReticle & 1) == 0)
          {
            trackingLossDelegate2 = [(JFXAnimojiEffectRenderer *)self trackingLossDelegate];
            [trackingLossDelegate2 hideAnimojiFaceReticleForTrackingGain];
          }
        }

        else
        {
          trackingLossDelegate3 = [(JFXAnimojiEffectRenderer *)self trackingLossDelegate];
          shouldShowAnimojiFaceReticle2 = [trackingLossDelegate3 shouldShowAnimojiFaceReticle];

          if (shouldShowAnimojiFaceReticle2)
          {
            trackingLossDelegate4 = [(JFXAnimojiEffectRenderer *)self trackingLossDelegate];
            [trackingLossDelegate4 setupAnimojiFaceReticleForTrackingLoss];

            trackingLossDelegate5 = [(JFXAnimojiEffectRenderer *)self trackingLossDelegate];
            [trackingLossDelegate5 showAnimojiFaceReticleForTrackingLoss];
          }

          *(v67 + 24) = 1;
        }
      }
    }
  }

  else
  {
    if (shapesCopy)
    {
      v22 = [(JFXAnimojiEffectRenderer *)self setupPoseForPreRecordedBlendShapes:shapesCopy forRenderer:v20 captureOrientation:orientation interfaceOrientation:interfaceOrientation withFrame:frameCopy];
    }

    else
    {
      v22 = [(JFXAnimojiEffectRenderer *)self setupHeadPoseAndBlendShapesForFrame:frameCopy forRenderer:v20 captureOrientation:orientation interfaceOrientation:interfaceOrientation isInitialSetup:v19];
    }

    *(v67 + 24) = v22;
    if (v20)
    {
      if ([frameCopy segmentationBuffer] && self->_rgbOnlyMemoji)
      {
        [(JFXAnimojiEffectRenderer *)self computeHighQualitySegmentation:frameCopy];
        faceTracker2 = [v20 faceTracker];
        [faceTracker2 updateWithARFrame:frameCopy captureOrientation:orientation interfaceOrientation:interfaceOrientation constrainHeadPose:-[JFXAnimojiEffectRenderer constrainHeadPose](self mirroredDepthData:{"constrainHeadPose"), 0}];
      }

      [(JFXAnimojiEffectRenderer *)self workingSize];
      [(JFXAnimojiEffectRenderer *)self JFX_focalLengthForFrame:frameCopy renderer:v20 workingSize:interfaceOrientation interfaceOrientation:?];
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
  v53 = frameCopy;
  selfCopy = self;
  v55 = v20;
  v56 = dataCopy;
  v57 = colorCopy;
  v58 = blockCopy;
  v42 = blockCopy;
  v43 = colorCopy;
  v44 = dataCopy;
  v45 = v20;
  v46 = frameCopy;
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

- (__CVBuffer)newPixelBufferRenderedFromARFrame:(id)frame withEffect:(id)effect depthData:(id)data captureOrientation:(int64_t)orientation interfaceOrientation:(int64_t)interfaceOrientation preRecordedBlendShapes:(id)shapes backgroundColor:(id)color
{
  v44[1] = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  effectCopy = effect;
  dataCopy = data;
  shapesCopy = shapes;
  colorCopy = color;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  if (!dataCopy)
  {
    dataCopy = [frameCopy capturedDepthData];
    if ((useMirroredFrontCameraInStreamMode() & 1) == 0)
    {
      v20 = dataCopy;
      depthDataMap = [dataCopy depthDataMap];
      v22 = depthDataMap;
      if (depthDataMap)
      {
        Width = CVPixelBufferGetWidth(depthDataMap);
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
  [(JFXAnimojiEffectRenderer *)self renderFrame:frameCopy withEffect:effectCopy depthData:dataCopy captureOrientation:orientation interfaceOrientation:interfaceOrientation preRecordedBlendShapes:shapesCopy backgroundColor:colorCopy completionBlock:v36];
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

- (void)renderAnimoji:(id)animoji withPresentationTime:(id *)time frame:(id)frame depthData:(id)data backgroundColor:(id)color completionBlock:(id)block
{
  animojiCopy = animoji;
  frameCopy = frame;
  dataCopy = data;
  colorCopy = color;
  blockCopy = block;
  pixelBufferOut = 0;
  time = *time;
  [(JFXAnimojiEffectRenderer *)self setSystemTimeForAVTRenderer:CMTimeGetSeconds(&time)];
  v17 = *MEMORY[0x277CBECE8];
  LODWORD(time) = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], self->_inputBufferPool, &pixelBufferOut);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  Height = CVPixelBufferGetHeight(pixelBufferOut);
  bzero(BaseAddress, Height * BytesPerRow);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  if (time)
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

  renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
  colorAttachments = [renderPassDescriptor colorAttachments];
  v27 = [colorAttachments objectAtIndexedSubscript:0];
  [v27 setLoadAction:2];

  v54 = 0.0;
  v55 = 0.0;
  v52 = 0.0;
  v53 = 0.0;
  if (colorCopy)
  {
    [colorCopy getRed:&v55 green:&v54 blue:&v53 alpha:&v52];
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

  colorAttachments2 = [renderPassDescriptor colorAttachments];
  v33 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v33 setClearColor:{v29, v28, v31, v30}];

  v34 = CVMetalTextureGetTexture(time.value);
  colorAttachments3 = [renderPassDescriptor colorAttachments];
  v36 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v36 setTexture:v34];

  commandQueue = [animojiCopy commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  useDepth = [(JFXAnimojiEffectRenderer *)self useDepth];
  v40 = 0;
  if (dataCopy)
  {
    if (useDepth)
    {
      v41 = [(JFXAnimojiEffectRenderer *)self JFX_depthDataToTexture:dataCopy];
      v40 = v41;
      if (v41)
      {
        v42 = CVMetalTextureGetTexture(v41);
        if (v42)
        {
          v43 = v42;
          [animojiCopy setCapturedDepth:v42];
        }
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(JFXAnimojiEffectRenderer *)self systemTimeForAVTRenderer];
    [animojiCopy _cek_renderAtTime:-[JFXAnimojiEffectRenderer allowAntialiasing](self enableAntialiasing:"allowAntialiasing") viewport:commandBuffer commandBuffer:renderPassDescriptor passDescriptor:{v44, 0.0, 0.0, WidthOfPlane, HeightOfPlane}];
  }

  objc_initWeak(&location, self);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __111__JFXAnimojiEffectRenderer_renderAnimoji_withPresentationTime_frame_depthData_backgroundColor_completionBlock___block_invoke;
  v48[3] = &unk_278D7A6A0;
  objc_copyWeak(v50, &location);
  v45 = blockCopy;
  v49 = v45;
  v50[1] = pixelBufferOut;
  v50[2] = time.value;
  v50[3] = v40;
  [commandBuffer addCompletedHandler:v48];
  [commandBuffer commit];

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

- (void)computeHighQualitySegmentation:(id)segmentation
{
  segmentationCopy = segmentation;
  if ([segmentationCopy capturedImage])
  {
    if ([segmentationCopy segmentationBuffer])
    {
      commandQueue = [(AVTRenderer *)self->_renderer commandQueue];

      if (commandQueue)
      {
        pixelBufferOut = 0;
        CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], [(JFXAnimojiEffectRenderer *)self deviceOrientedColorBufferPool], &pixelBufferOut);
        VTSessionSetProperty(self->_rotationSession, *MEMORY[0x277CE2850], *MEMORY[0x277CE2A30]);
        rotationSession = self->_rotationSession;
        capturedImage = [segmentationCopy capturedImage];
        VTPixelRotationSessionRotateImage(rotationSession, capturedImage, pixelBufferOut);
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

        v11 = VTPixelTransferSessionTransferImage(self->_transferSession, self->_segmentationPixelBuffer, [segmentationCopy segmentationBuffer]);
        [segmentationCopy setCapturedImage:pixelBufferOut];
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

- (id)JFX_blendShapesForRenderer:(id)renderer
{
  rendererCopy = renderer;
  v4 = objc_opt_new();
  if (objc_opt_respondsToSelector())
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__JFXAnimojiEffectRenderer_JFX_blendShapesForRenderer___block_invoke;
    v7[3] = &unk_278D7A6C8;
    v8 = v4;
    [rendererCopy _cek_fetchBlendshapeWeightsInHierarchyUsingBlock:v7];
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

- (__CVBuffer)JFX_depthDataToTexture:(id)texture
{
  textureCopy = texture;
  v5 = textureCopy;
  if (!textureCopy)
  {
    goto LABEL_5;
  }

  v6 = textureCopy;
  if ([v6 depthDataType] != 1717855600)
  {
    v7 = [v6 depthDataByConvertingToDepthDataType:1717855600];

    v6 = v7;
  }

  depthDataMap = [v6 depthDataMap];
  Width = CVPixelBufferGetWidth(depthDataMap);
  Height = CVPixelBufferGetHeight(depthDataMap);
  textureOut = 0;
  LODWORD(depthDataMap) = CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], self->_metalDepthTextureCache, depthDataMap, 0, MTLPixelFormatR32Float, Width, Height, 0, &textureOut);
  v11 = textureOut;

  if (depthDataMap)
  {
LABEL_5:
    v11 = 0;
  }

  return v11;
}

- (double)JFX_focalLengthForFrame:(id)frame renderer:(id)renderer workingSize:(CGSize)size interfaceOrientation:(int64_t)orientation
{
  height = size.height;
  width = size.width;
  rendererCopy = renderer;
  frameCopy = frame;
  camera = [frameCopy camera];
  [camera intrinsics];
  v31 = v15;
  v32 = v14;
  v29 = v16;
  camera2 = [frameCopy camera];

  [camera2 imageResolution];
  [JFXFaceTrackingUtilities adjustIntrinsics:orientation forRenderSize:v32 capturedSize:v31 interfaceOrientation:v29, width, height, v18, v19];
  v30.columns[0] = v20;
  v30.columns[1] = v21;
  v30.columns[2] = v22;

  height = [(JFXAnimojiEffectRenderer *)self JFX_inputBufferIsPortraitAspect:width, height];
  v24 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [rendererCopy _cek_currentPointOfViewSensorHeight];
    v24 = v25;
  }

  if (height)
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