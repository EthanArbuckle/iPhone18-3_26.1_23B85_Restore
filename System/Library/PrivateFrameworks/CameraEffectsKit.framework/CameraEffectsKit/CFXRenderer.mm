@interface CFXRenderer
+ (__CVBuffer)createBufferWith:(id)with size:(CGSize)size;
+ (void)initialize;
- (BOOL)livePlayerIsSaturated;
- (CFXRenderer)initWithDelegate:(id)delegate captureMode:(int64_t)mode;
- (CFXRendererDelegate)delegate;
- (id)CFX_JTEffectsFromCFXEffectComposition:(id)composition forRenderTime:(id *)time;
- (id)CFX_PVFrameSetFromCFXFrame:(id)frame;
- (id)CFX_getPreviewColorSpace;
- (id)buildRenderRequest:(id)request time:(id *)time;
- (id)createJFXAnimojiEffectRenderer;
- (void)dealloc;
- (void)flush;
- (void)pause;
- (void)renderFrame:(id)frame effectComposition:(id)composition;
- (void)renderRequestComplete:(id)complete results:(id)results completedOutOfOrder:(BOOL)order;
- (void)resetMetadataValidation;
- (void)resume;
- (void)setTrackingLossDelegate:(id)delegate;
- (void)shutdown;
- (void)willDropCameraFrame;
@end

@implementation CFXRenderer

+ (void)initialize
{
  if (initialize_onceToken_1 != -1)
  {
    +[CFXRenderer initialize];
  }
}

void __25__CFXRenderer_initialize__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v0 addSuiteNamed:@"com.apple.avfoundation"];
}

+ (__CVBuffer)createBufferWith:(id)with size:(CGSize)size
{
  height = size.height;
  width = size.width;
  withCopy = with;
  v7 = objc_opt_new();
  [v7 setObject:&unk_28556D548 forKeyedSubscript:*MEMORY[0x277CC4E30]];
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CC4E08]];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:width];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277CC4EC8]];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:height];
  [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x277CC4DD8]];

  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, 0x20u, v7, &pixelBufferOut);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  v11 = height * CVPixelBufferGetBytesPerRow(pixelBufferOut);
  v32 = 0.0;
  v33 = 0.0;
  v30 = 0.0;
  v31 = 0.0;
  [withCopy getRed:&v33 green:&v32 blue:&v31 alpha:&v30];
  if (v11 > 0.0)
  {
    v12.f64[0] = v30;
    v13.f64[0] = v32;
    v12.f64[1] = v33;
    v13.f64[1] = v31;
    v14 = vdupq_n_s64(0x406FE00000000000uLL);
    *&v12.f64[0] = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vmulq_f64(v12, v14)), vcvtq_s64_f64(vmulq_f64(v13, v14))));
    v15 = 4;
    v16 = vuzp1_s8(*&v12.f64[0], *&v12.f64[0]).u32[0];
    do
    {
      *BaseAddress++ = v16;
      v17 = v15;
      v15 += 4;
    }

    while (v11 > v17);
  }

  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  extendedSRGBColorSpace = [MEMORY[0x277D415E0] extendedSRGBColorSpace];
  v19 = pixelBufferOut;
  v20 = *MEMORY[0x277CC4C00];
  nclcTriplet = [extendedSRGBColorSpace nclcTriplet];
  CVBufferSetAttachment(v19, v20, [nclcTriplet colorPrimary], kCVAttachmentMode_ShouldPropagate);

  v22 = pixelBufferOut;
  v23 = *MEMORY[0x277CC4CC0];
  nclcTriplet2 = [extendedSRGBColorSpace nclcTriplet];
  CVBufferSetAttachment(v22, v23, [nclcTriplet2 transferFunction], kCVAttachmentMode_ShouldPropagate);

  v25 = pixelBufferOut;
  v26 = *MEMORY[0x277CC4D10];
  nclcTriplet3 = [extendedSRGBColorSpace nclcTriplet];
  CVBufferSetAttachment(v25, v26, [nclcTriplet3 ycbcrMatrix], kCVAttachmentMode_ShouldPropagate);

  v28 = pixelBufferOut;
  return v28;
}

- (CFXRenderer)initWithDelegate:(id)delegate captureMode:(int64_t)mode
{
  v41[1] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v39.receiver = self;
  v39.super_class = CFXRenderer;
  v7 = [(CFXRenderer *)&v39 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v8->_captureMode = mode;
    v9 = [[JTFrameRateCalculator alloc] initWithWindowSize:1.0];
    fpsCalc = v8->_fpsCalc;
    v8->_fpsCalc = v9;

    if (+[JFXAnimojiEffectRenderer isSupported])
    {
      +[JFXAnimojiEffectRenderer setupAVTMetalShaderCache];
      v38 = 0;
      JFX_getFrontAndBackCameras(0, &v38, 0);
      v11 = v38;
      v8->_rgbOnlyMemoji = JFXRGBOnlyMemoji(v11);
      v8->_isAnimojiOnlyMode = v8->_captureMode == 3;
      createJFXAnimojiEffectRenderer = [(CFXRenderer *)v8 createJFXAnimojiEffectRenderer];
      animojiRenderer = v8->_animojiRenderer;
      v8->_animojiRenderer = createJFXAnimojiEffectRenderer;
    }

    clearColor = [MEMORY[0x277D75348] clearColor];
    animojiBackgroundColor = v8->_animojiBackgroundColor;
    v8->_animojiBackgroundColor = clearColor;

    cFX_getPreviewColorSpace = [(CFXRenderer *)v8 CFX_getPreviewColorSpace];
    v40 = *MEMORY[0x277D41AC0];
    v41[0] = cFX_getPreviewColorSpace;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v18 = [objc_alloc(MEMORY[0x277D41660]) initWithOptions:v17 delegate:v8];
    livePlayer = v8->_livePlayer;
    v8->_livePlayer = v18;

    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [(PVLivePlayer *)v8->_livePlayer setName:v21];

    if (isStreamingMode(mode))
    {
      v22 = objc_alloc_init(MEMORY[0x277D41688]);
      v23 = CreatePVLPThrottlingControlParameters();
      [v22 setThermalLevel:0 controlParameters:v23];

      v24 = CreatePVLPThrottlingControlParameters();
      [v22 setThermalLevel:10 controlParameters:v24];

      v25 = CreatePVLPThrottlingControlParameters();
      [v22 setThermalLevel:20 controlParameters:v25];

      v26 = CreatePVLPThrottlingControlParameters();
      [v22 setThermalLevel:30 controlParameters:v26];

      [(PVLivePlayer *)v8->_livePlayer setThermalThrottlingPolicy:v22];
    }

    v27 = +[JFXVideoCameraController sharedInstance];
    v8->_cameraMode = [v27 cameraMode];

    v28 = objc_opt_new();
    metadataValidator = v8->_metadataValidator;
    v8->_metadataValidator = v28;

    v30 = objc_alloc_init(MEMORY[0x277D41678]);
    cameraSource = v8->_cameraSource;
    v8->_cameraSource = v30;

    v32 = v8->_livePlayer;
    cameraSource = [(CFXRenderer *)v8 cameraSource];
    [(PVLivePlayer *)v32 setSource:cameraSource inputID:0];

    v34 = objc_alloc(MEMORY[0x277D41670]);
    cameraSource2 = [(CFXRenderer *)v8 cameraSource];
    v36 = [v34 initWithPlayerCameraSource:cameraSource2];

    [(PVLivePlayer *)v8->_livePlayer setRenderLink:v36];
    [(PVLivePlayer *)v8->_livePlayer start];
  }

  return v8;
}

- (id)createJFXAnimojiEffectRenderer
{
  v2 = [[JFXAnimojiEffectRenderer alloc] initWithConstrainedHeadPose:self->_isAnimojiOnlyMode rgbOnlyMemoji:self->_rgbOnlyMemoji];
  [(JFXAnimojiEffectRenderer *)v2 setAsynchronouslyLoadNewPuppets:1];
  [(JFXAnimojiEffectRenderer *)v2 setAllowAntialiasing:1];

  return v2;
}

- (void)dealloc
{
  [(CFXRenderer *)self shutdown];
  pixelRotationSession = self->_pixelRotationSession;
  self->_pixelRotationSession = 0;

  v4.receiver = self;
  v4.super_class = CFXRenderer;
  [(CFXRenderer *)&v4 dealloc];
}

- (void)setTrackingLossDelegate:(id)delegate
{
  delegateCopy = delegate;
  animojiRenderer = [(CFXRenderer *)self animojiRenderer];
  [animojiRenderer setTrackingLossDelegate:delegateCopy];
}

- (void)resetMetadataValidation
{
  metadataValidator = [(CFXRenderer *)self metadataValidator];
  [metadataValidator reset];
}

- (void)pause
{
  livePlayer = [(CFXRenderer *)self livePlayer];
  [livePlayer stop];
}

- (void)resume
{
  livePlayer = [(CFXRenderer *)self livePlayer];
  [livePlayer start];
}

- (void)shutdown
{
  livePlayer = [(CFXRenderer *)self livePlayer];
  [livePlayer shutdown];
}

- (void)flush
{
  livePlayer = [(CFXRenderer *)self livePlayer];
  [livePlayer flush];
}

- (BOOL)livePlayerIsSaturated
{
  livePlayer = [(CFXRenderer *)self livePlayer];
  v3 = [livePlayer status] == 2;

  return v3;
}

- (void)renderFrame:(id)frame effectComposition:(id)composition
{
  v68[6] = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  compositionCopy = composition;
  v8 = [(CFXRenderer *)self CFX_PVFrameSetFromCFXFrame:frameCopy];
  if (v8)
  {
    v9 = v8;
    v10 = *MEMORY[0x277D41A00];
    v11 = [v8 metadataObjectForKey:*MEMORY[0x277D41A00]];
    if ([v11 cameraPosition])
    {
      v66 = v9;
      v12 = &v66;
      [JFXPixelRotationSession rotateFrameSetToUIOrientation:&v66 pixelRotationSession:&self->_pixelRotationSession];
    }

    else
    {
      v13 = +[JFXOrientationMonitor deviceInterfaceOrientation];
      if (v13 > 4)
      {
        v14 = 0;
      }

      else
      {
        v14 = dword_242B5BF70[v13 & 7];
      }

      v65 = v9;
      v12 = &v65;
      [JFXPixelRotationSession rotateFrameSet:&v65 by:v14 mirror:1 pixelRotationSession:&self->_pixelRotationSession];
    }

    v15 = *v12;

    [v15 setMetadataObject:compositionCopy forKey:@"kEffectCompositionMetadataKey"];
    v16 = [compositionCopy jtEffectsForType:7];
    v17 = +[JFXPickerCameraSource sharedInstance];
    if ([v17 isPickerPreviewing])
    {
      v18 = [v16 count];

      if (v18)
      {
LABEL_12:
        v20 = JFXIsCTMCroppedCameraMode([(CFXRenderer *)self cameraMode]);
        if ([compositionCopy isEmpty] && !v20)
        {
          colorImageBuffer = [v15 colorImageBuffer];
          cvPixelBuffer = [colorImageBuffer cvPixelBuffer];
          v63 = 0uLL;
          v64 = 0;
          if (frameCopy)
          {
            [frameCopy timestamp];
          }

          v23 = [CFXFrame alloc];
          *buf = v63;
          v62 = v64;
          v24 = [(CFXFrame *)v23 initWithPixelBuffer:cvPixelBuffer timestamp:buf];
          delegate = [(CFXRenderer *)self delegate];
          *buf = v63;
          v62 = v64;
          [delegate renderer:self didPrepareToRenderFrameAtPresentationTime:buf];

          delegate2 = [(CFXRenderer *)self delegate];
          [delegate2 renderer:self didRenderFrame:v24];

          goto LABEL_36;
        }

        if ([(CFXRenderer *)self captureMode]!= 3)
        {
          fpsCalc = [(CFXRenderer *)self fpsCalc];
          [fpsCalc log:&__block_literal_global_42];

          fpsCalc2 = [(CFXRenderer *)self fpsCalc];
          [fpsCalc2 tickFrameReceived];

          cameraSource = [(CFXRenderer *)self cameraSource];
          [cameraSource cameraFrameSetRecieved:v15];

LABEL_36:
          goto LABEL_37;
        }

        v63 = 0uLL;
        v64 = 0;
        if (frameCopy)
        {
          [frameCopy timestamp];
        }

        if ([v16 count])
        {
          firstObject = [v16 firstObject];

          if (firstObject)
          {
            v28 = [v15 metadataObjectForKey:v10];
            interfaceOrientation = [v28 interfaceOrientation];
            captureVideoOrientation = [v28 captureVideoOrientation];
            metadataDict = [v15 metadataDict];
            v31 = [metadataDict objectForKey:@"PVFrameSetMetadataOriginalBufferSizeKey"];
            [v31 CGSizeValue];
            v33 = v32;
            v35 = v34;

            metadataDict2 = [v15 metadataDict];
            v37 = [metadataDict2 objectForKey:@"PVFrameSetMetadataARMetadataKey"];

            if (v37)
            {
              v38 = ((interfaceOrientation - 3) < 2) ^ ((captureVideoOrientation - 5) < 0xFFFFFFFFFFFFFFFELL);
              if (v38)
              {
                v39 = v33;
              }

              else
              {
                v39 = v35;
              }

              if (v38)
              {
                v40 = v35;
              }

              else
              {
                v40 = v33;
              }

              v68[0] = v37;
              v67[0] = @"JFXAnimojiRendererMetadata_JFXARMetadata";
              v67[1] = @"JFXAnimojiRendererMetadata_RenderSize";
              v60[0] = v39;
              v60[1] = v40;
              v56 = [MEMORY[0x277CCAE60] valueWithBytes:v60 objCType:"{CGSize=dd}"];
              v68[1] = v56;
              v67[2] = @"JFXAnimojiRendererMetadata_AVCaptureVideoOrientation";
              v57 = v28;
              v55 = [MEMORY[0x277CCABB0] numberWithInteger:captureVideoOrientation];
              v68[2] = v55;
              v67[3] = @"JFXAnimojiRendererMetadata_UIInterfaceOrientation";
              v41 = [MEMORY[0x277CCABB0] numberWithInteger:interfaceOrientation];
              v68[3] = v41;
              v67[4] = @"JFXAnimojiRendererMetadata_Effect";
              firstObject2 = [v16 firstObject];
              v68[4] = firstObject2;
              v67[5] = @"JFXAnimojiRendererMetadata_BackgroundColor";
              [(CFXRenderer *)self animojiBackgroundColor];
              v43 = v59 = v37;
              v68[5] = v43;
              v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:6];

              animojiRenderer = [(CFXRenderer *)self animojiRenderer];
              *buf = v63;
              v62 = v64;
              v46 = [animojiRenderer renderWithTime:buf metadata:v44];

              if (v46)
              {
                delegate3 = [(CFXRenderer *)self delegate];
                *buf = v63;
                v62 = v64;
                [delegate3 renderer:self didPrepareToRenderFrameAtPresentationTime:buf];

                v48 = [CFXFrame alloc];
                cvPixelBuffer2 = [v46 cvPixelBuffer];
                *buf = v63;
                v62 = v64;
                v50 = [(CFXFrame *)v48 initWithPixelBuffer:cvPixelBuffer2 timestamp:buf];
                delegate4 = [(CFXRenderer *)self delegate];
                [delegate4 renderer:self didRenderFrame:v50];

LABEL_35:
                goto LABEL_36;
              }
            }

            else
            {
            }
          }
        }

        v46 = JFXLog_animoji();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_242A3B000, v46, OS_LOG_TYPE_DEFAULT, "Couldn't get a buffer at all, not even a solid background buffer", buf, 2u);
        }

        goto LABEL_35;
      }

      v17 = +[JFXPickerCameraSource sharedInstance];
      pickerSource = [v17 pickerSource];
      [pickerSource cameraFrameSetRecieved:v15];
    }

    goto LABEL_12;
  }

LABEL_37:
}

- (void)willDropCameraFrame
{
  cameraSource = [(CFXRenderer *)self cameraSource];
  [cameraSource cameraFrameSetDropped];
}

- (id)buildRenderRequest:(id)request time:(id *)time
{
  v6 = [request objectForKeyedSubscript:&unk_28556D5D8];
  v7 = v6;
  if (v6)
  {
    [v6 presentationTimeStamp];
    *time = v45;
    *&time[16] = v46;
    CMTimeGetSeconds(time);
    kdebug_trace();
    fpsCalc = [(CFXRenderer *)self fpsCalc];
    [fpsCalc tickReceived];

    v9 = +[CFXMediaSettings sharedInstance];
    [v9 renderSize];
    v11 = v10;
    v13 = v12;

    v14 = +[CFXMediaSettings sharedInstance];
    [v14 frameSize];
    v16 = v15;
    v18 = v17;

    v19 = [v7 metadataObjectForKey:@"kEffectCompositionMetadataKey"];
    v20 = [JFXCapturePreviewProperties alloc];
    cameraMode = [(CFXRenderer *)self cameraMode];
    *time = *&time->var0;
    *&time[16] = time->var3;
    v22 = [(JFXCapturePreviewProperties *)v20 initWithCameraFrameSet:v7 renderCameraMode:cameraMode renderTime:time renderOutputSize:v11 frameSize:v13, v16, v18];
    v23 = [JFXCapturePreviewRequestBuilder alloc];
    outputColorSpace = [(PVLivePlayer *)self->_livePlayer outputColorSpace];
    v42 = v22;
    v25 = [(JFXCapturePreviewRequestBuilder *)v23 initWithPreviewProperties:v22 outputColorSpace:outputColorSpace];

    *time = *&time->var0;
    *&time[16] = time->var3;
    v26 = [(CFXRenderer *)self CFX_JTEffectsFromCFXEffectComposition:v19 forRenderTime:time];
    animojiRenderer = [(CFXRenderer *)self animojiRenderer];
    metadataValidator = [(CFXRenderer *)self metadataValidator];
    v29 = +[JFXPickerCameraSource sharedInstance];
    isPickerPreviewing = [v29 isPickerPreviewing];
    v31 = *(MEMORY[0x277CBF2C0] + 16);
    *time = *MEMORY[0x277CBF2C0];
    *&time[16] = v31;
    v44 = *(MEMORY[0x277CBF2C0] + 32);
    v32 = [(JFXCapturePreviewRequestBuilder *)v25 createPVRenderRequestUsingAnimojiRenderer:animojiRenderer metadataValidator:metadataValidator additionalTransform:time effectStack:v26 animojiTapPoint:isPickerPreviewing animojiUsesInterfaceOrientation:1 requestHandler:0];

    animojiRenderer2 = [(CFXRenderer *)self animojiRenderer];

    if (animojiRenderer2)
    {
      v34 = [CFXEffectType effectTypeWithIdentifier:@"Animoji"];
      if ([v19 hasEffectOfType:v34])
      {
        metadataDict = [v7 metadataDict];
        v36 = [metadataDict objectForKey:@"PVFrameSetMetadataARMetadataKey"];

        animojiRenderer3 = [(CFXRenderer *)self animojiRenderer];
        trackingLossDelegate = [animojiRenderer3 trackingLossDelegate];

        arFrame = [v36 arFrame];
        if (arFrame)
        {
        }

        else if ([trackingLossDelegate shouldShowAnimojiFaceReticle])
        {
          [trackingLossDelegate setupAnimojiFaceReticleForTrackingLoss];
          [trackingLossDelegate showAnimojiFaceReticleForTrackingLoss];
        }
      }
    }

    [v7 presentationTimeStamp];
    *time = v45;
    *&time[16] = v46;
    CMTimeGetSeconds(time);
    kdebug_trace();
    [v7 presentationTimeStamp];
    *time = v45;
    *&time[16] = v46;
    CMTimeGetSeconds(time);
    kdebug_trace();
    memset(time, 0, 24);
    [v7 presentationTimeStamp];
    delegate = [(CFXRenderer *)self delegate];
    v45 = *time;
    v46 = *&time[16];
    [delegate renderer:self didPrepareToRenderFrameAtPresentationTime:&v45];
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (void)renderRequestComplete:(id)complete results:(id)results completedOutOfOrder:(BOOL)order
{
  completeCopy = complete;
  resultsCopy = results;
  userContext = [completeCopy userContext];
  v11 = userContext;
  if (userContext)
  {
    [userContext presentationTimeStamp];
  }

  else
  {
    memset(&v29, 0, sizeof(v29));
  }

  time = v29;
  CMTimeGetSeconds(&time);
  kdebug_trace();
  if (order || ![resultsCopy count])
  {
    fpsCalc = [(CFXRenderer *)self fpsCalc];
    [fpsCalc tickDropped];
    goto LABEL_26;
  }

  if (v11)
  {
    [v11 presentationTimeStamp];
  }

  else
  {
    memset(&v29, 0, sizeof(v29));
  }

  time = v29;
  CMTimeGetSeconds(&time);
  kdebug_trace();
  fpsCalc = [v11 metadataObjectForKey:@"kEffectCompositionMetadataKey"];
  [v11 setMetadataObject:0 forKey:@"kEffectCompositionMetadataKey"];
  v13 = +[JFXPickerCameraSource sharedInstance];
  if (![v13 isPickerPreviewing])
  {
    goto LABEL_18;
  }

  v14 = [fpsCalc jtEffectsForType:7];
  v15 = [v14 count];

  if (v15)
  {
    if ([resultsCopy count] >= 2)
    {
      v16 = [resultsCopy objectAtIndexedSubscript:1];
      cvPixelBuffer = [v16 cvPixelBuffer];
      v18 = [CFXFrame alloc];
      if (v11)
      {
        [v11 presentationTimeStamp];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v19 = [(CFXFrame *)v18 initWithPixelBuffer:cvPixelBuffer timestamp:&time];
      v20 = [(CFXRenderer *)self CFX_PVFrameSetFromCFXFrame:v19];

      v11 = v20;
    }

    v13 = +[JFXPickerCameraSource sharedInstance];
    pickerSource = [v13 pickerSource];
    [pickerSource cameraFrameSetRecieved:v11];

LABEL_18:
  }

  v22 = [resultsCopy objectAtIndexedSubscript:0];
  cvPixelBuffer2 = [v22 cvPixelBuffer];
  colorImageBuffer = [v11 colorImageBuffer];
  CVBufferPropagateAttachments([colorImageBuffer cvPixelBuffer], cvPixelBuffer2);

  v25 = [CFXFrame alloc];
  if (v11)
  {
    [v11 presentationTimeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v26 = [(CFXFrame *)v25 initWithPixelBuffer:cvPixelBuffer2 timestamp:&time];
  if (completeCopy)
  {
    [completeCopy time];
  }

  else
  {
    memset(&v28, 0, sizeof(v28));
  }

  time = v28;
  [(CFXFrame *)v26 setRequestTime:&time, *&v28.value, v28.epoch];
  delegate = [(CFXRenderer *)self delegate];
  [delegate renderer:self didRenderFrame:v26];

LABEL_26:
}

- (id)CFX_PVFrameSetFromCFXFrame:(id)frame
{
  frameCopy = frame;
  pvFrameSet = [frameCopy pvFrameSet];
  if (!pvFrameSet)
  {
    pixelBuffer = [frameCopy pixelBuffer];
    if (pixelBuffer)
    {
      capturedImage = pixelBuffer;
    }

    else
    {
      arFrame = [frameCopy arFrame];
      capturedImage = [arFrame capturedImage];

      if (!capturedImage)
      {
        pvFrameSet = 0;
        goto LABEL_8;
      }
    }

    v8 = [MEMORY[0x277D41618] imageWithCVPixelBuffer:capturedImage];
    v16 = 0uLL;
    v17 = 0;
    if (frameCopy)
    {
      [frameCopy timestamp];
    }

    memset(&v15, 0, sizeof(v15));
    v9 = +[CFXMediaSettings sharedInstance];
    CMTimeMake(&v15, 1, [v9 timeScale]);

    v13 = v16;
    v14 = v17;
    v12 = v15;
    v10 = [MEMORY[0x277D415D8] sampleBufferWithPVImageBuffer:v8 timestamp:&v13 frameDuration:&v12];
    pvFrameSet = [objc_alloc(MEMORY[0x277D41608]) initWithColorBuffer:v10 metadata:0];
  }

LABEL_8:

  return pvFrameSet;
}

- (id)CFX_JTEffectsFromCFXEffectComposition:(id)composition forRenderTime:(id *)time
{
  effects = [composition effects];
  array = [MEMORY[0x277CBEB18] array];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__CFXRenderer_CFX_JTEffectsFromCFXEffectComposition_forRenderTime___block_invoke;
  v9[3] = &unk_278D7C978;
  v11 = *time;
  v7 = array;
  v10 = v7;
  [effects enumerateObjectsUsingBlock:v9];

  return v7;
}

void __67__CFXRenderer_CFX_JTEffectsFromCFXEffectComposition_forRenderTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 jtEffect];
  if ([v3 type] == 2)
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    v4 = [v3 renderEffect];
    v5 = v4;
    if (v4)
    {
      [v4 effectRange];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
    }

    v7 = v14;
    *&v8 = v15;
    *&time2.value = CFXEffectPreviewStartAtNextRenderTime;
    time2.epoch = 0;
    if (!CMTimeCompare(&v7, &time2))
    {
      *&v15 = *(a1 + 56);
      v14 = *(a1 + 40);
      v11 = v15;
      v12 = v16;
      v10 = v14;
      v6 = [v3 renderEffect];
      v7 = v10;
      v8 = v11;
      v9 = v12;
      [v6 setEffectRange:&v7];
    }
  }

  [*(a1 + 32) addObject:v3];
}

- (id)CFX_getPreviewColorSpace
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  jfx_displayColorSpace = [currentDevice jfx_displayColorSpace];

  v4 = MEMORY[0x277D415E0];
  v5 = +[JFXVideoCameraController sharedInstance];
  v6 = [v4 jfx_getColorSpaceFromCaptureColorSpace:{objc_msgSend(v5, "cameraColorSpace")}];

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  v8 = [currentDevice2 jfx_recommendedDisplayColorSpaceForColorSpace:v6];

  v9 = [MEMORY[0x277D415E0] jfx_compareAndChooseLesserColorSpace:jfx_displayColorSpace right:v8];

  return v9;
}

- (CFXRendererDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end