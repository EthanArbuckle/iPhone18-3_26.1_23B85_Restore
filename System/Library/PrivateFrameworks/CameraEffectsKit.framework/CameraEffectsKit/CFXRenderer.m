@interface CFXRenderer
+ (__CVBuffer)createBufferWith:(id)a3 size:(CGSize)a4;
+ (void)initialize;
- (BOOL)livePlayerIsSaturated;
- (CFXRenderer)initWithDelegate:(id)a3 captureMode:(int64_t)a4;
- (CFXRendererDelegate)delegate;
- (id)CFX_JTEffectsFromCFXEffectComposition:(id)a3 forRenderTime:(id *)a4;
- (id)CFX_PVFrameSetFromCFXFrame:(id)a3;
- (id)CFX_getPreviewColorSpace;
- (id)buildRenderRequest:(id)a3 time:(id *)a4;
- (id)createJFXAnimojiEffectRenderer;
- (void)dealloc;
- (void)flush;
- (void)pause;
- (void)renderFrame:(id)a3 effectComposition:(id)a4;
- (void)renderRequestComplete:(id)a3 results:(id)a4 completedOutOfOrder:(BOOL)a5;
- (void)resetMetadataValidation;
- (void)resume;
- (void)setTrackingLossDelegate:(id)a3;
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

+ (__CVBuffer)createBufferWith:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
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
  [v6 getRed:&v33 green:&v32 blue:&v31 alpha:&v30];
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
  v18 = [MEMORY[0x277D415E0] extendedSRGBColorSpace];
  v19 = pixelBufferOut;
  v20 = *MEMORY[0x277CC4C00];
  v21 = [v18 nclcTriplet];
  CVBufferSetAttachment(v19, v20, [v21 colorPrimary], kCVAttachmentMode_ShouldPropagate);

  v22 = pixelBufferOut;
  v23 = *MEMORY[0x277CC4CC0];
  v24 = [v18 nclcTriplet];
  CVBufferSetAttachment(v22, v23, [v24 transferFunction], kCVAttachmentMode_ShouldPropagate);

  v25 = pixelBufferOut;
  v26 = *MEMORY[0x277CC4D10];
  v27 = [v18 nclcTriplet];
  CVBufferSetAttachment(v25, v26, [v27 ycbcrMatrix], kCVAttachmentMode_ShouldPropagate);

  v28 = pixelBufferOut;
  return v28;
}

- (CFXRenderer)initWithDelegate:(id)a3 captureMode:(int64_t)a4
{
  v41[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v39.receiver = self;
  v39.super_class = CFXRenderer;
  v7 = [(CFXRenderer *)&v39 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v8->_captureMode = a4;
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
      v12 = [(CFXRenderer *)v8 createJFXAnimojiEffectRenderer];
      animojiRenderer = v8->_animojiRenderer;
      v8->_animojiRenderer = v12;
    }

    v14 = [MEMORY[0x277D75348] clearColor];
    animojiBackgroundColor = v8->_animojiBackgroundColor;
    v8->_animojiBackgroundColor = v14;

    v16 = [(CFXRenderer *)v8 CFX_getPreviewColorSpace];
    v40 = *MEMORY[0x277D41AC0];
    v41[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v18 = [objc_alloc(MEMORY[0x277D41660]) initWithOptions:v17 delegate:v8];
    livePlayer = v8->_livePlayer;
    v8->_livePlayer = v18;

    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [(PVLivePlayer *)v8->_livePlayer setName:v21];

    if (isStreamingMode(a4))
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
    v33 = [(CFXRenderer *)v8 cameraSource];
    [(PVLivePlayer *)v32 setSource:v33 inputID:0];

    v34 = objc_alloc(MEMORY[0x277D41670]);
    v35 = [(CFXRenderer *)v8 cameraSource];
    v36 = [v34 initWithPlayerCameraSource:v35];

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

- (void)setTrackingLossDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CFXRenderer *)self animojiRenderer];
  [v5 setTrackingLossDelegate:v4];
}

- (void)resetMetadataValidation
{
  v2 = [(CFXRenderer *)self metadataValidator];
  [v2 reset];
}

- (void)pause
{
  v2 = [(CFXRenderer *)self livePlayer];
  [v2 stop];
}

- (void)resume
{
  v2 = [(CFXRenderer *)self livePlayer];
  [v2 start];
}

- (void)shutdown
{
  v2 = [(CFXRenderer *)self livePlayer];
  [v2 shutdown];
}

- (void)flush
{
  v2 = [(CFXRenderer *)self livePlayer];
  [v2 flush];
}

- (BOOL)livePlayerIsSaturated
{
  v2 = [(CFXRenderer *)self livePlayer];
  v3 = [v2 status] == 2;

  return v3;
}

- (void)renderFrame:(id)a3 effectComposition:(id)a4
{
  v68[6] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CFXRenderer *)self CFX_PVFrameSetFromCFXFrame:v6];
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

    [v15 setMetadataObject:v7 forKey:@"kEffectCompositionMetadataKey"];
    v16 = [v7 jtEffectsForType:7];
    v17 = +[JFXPickerCameraSource sharedInstance];
    if ([v17 isPickerPreviewing])
    {
      v18 = [v16 count];

      if (v18)
      {
LABEL_12:
        v20 = JFXIsCTMCroppedCameraMode([(CFXRenderer *)self cameraMode]);
        if ([v7 isEmpty] && !v20)
        {
          v21 = [v15 colorImageBuffer];
          v22 = [v21 cvPixelBuffer];
          v63 = 0uLL;
          v64 = 0;
          if (v6)
          {
            [v6 timestamp];
          }

          v23 = [CFXFrame alloc];
          *buf = v63;
          v62 = v64;
          v24 = [(CFXFrame *)v23 initWithPixelBuffer:v22 timestamp:buf];
          v25 = [(CFXRenderer *)self delegate];
          *buf = v63;
          v62 = v64;
          [v25 renderer:self didPrepareToRenderFrameAtPresentationTime:buf];

          v26 = [(CFXRenderer *)self delegate];
          [v26 renderer:self didRenderFrame:v24];

          goto LABEL_36;
        }

        if ([(CFXRenderer *)self captureMode]!= 3)
        {
          v52 = [(CFXRenderer *)self fpsCalc];
          [v52 log:&__block_literal_global_42];

          v53 = [(CFXRenderer *)self fpsCalc];
          [v53 tickFrameReceived];

          v54 = [(CFXRenderer *)self cameraSource];
          [v54 cameraFrameSetRecieved:v15];

LABEL_36:
          goto LABEL_37;
        }

        v63 = 0uLL;
        v64 = 0;
        if (v6)
        {
          [v6 timestamp];
        }

        if ([v16 count])
        {
          v27 = [v16 firstObject];

          if (v27)
          {
            v28 = [v15 metadataObjectForKey:v10];
            v58 = [v28 interfaceOrientation];
            v29 = [v28 captureVideoOrientation];
            v30 = [v15 metadataDict];
            v31 = [v30 objectForKey:@"PVFrameSetMetadataOriginalBufferSizeKey"];
            [v31 CGSizeValue];
            v33 = v32;
            v35 = v34;

            v36 = [v15 metadataDict];
            v37 = [v36 objectForKey:@"PVFrameSetMetadataARMetadataKey"];

            if (v37)
            {
              v38 = ((v58 - 3) < 2) ^ ((v29 - 5) < 0xFFFFFFFFFFFFFFFELL);
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
              v55 = [MEMORY[0x277CCABB0] numberWithInteger:v29];
              v68[2] = v55;
              v67[3] = @"JFXAnimojiRendererMetadata_UIInterfaceOrientation";
              v41 = [MEMORY[0x277CCABB0] numberWithInteger:v58];
              v68[3] = v41;
              v67[4] = @"JFXAnimojiRendererMetadata_Effect";
              v42 = [v16 firstObject];
              v68[4] = v42;
              v67[5] = @"JFXAnimojiRendererMetadata_BackgroundColor";
              [(CFXRenderer *)self animojiBackgroundColor];
              v43 = v59 = v37;
              v68[5] = v43;
              v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:6];

              v45 = [(CFXRenderer *)self animojiRenderer];
              *buf = v63;
              v62 = v64;
              v46 = [v45 renderWithTime:buf metadata:v44];

              if (v46)
              {
                v47 = [(CFXRenderer *)self delegate];
                *buf = v63;
                v62 = v64;
                [v47 renderer:self didPrepareToRenderFrameAtPresentationTime:buf];

                v48 = [CFXFrame alloc];
                v49 = [v46 cvPixelBuffer];
                *buf = v63;
                v62 = v64;
                v50 = [(CFXFrame *)v48 initWithPixelBuffer:v49 timestamp:buf];
                v51 = [(CFXRenderer *)self delegate];
                [v51 renderer:self didRenderFrame:v50];

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
      v19 = [v17 pickerSource];
      [v19 cameraFrameSetRecieved:v15];
    }

    goto LABEL_12;
  }

LABEL_37:
}

- (void)willDropCameraFrame
{
  v2 = [(CFXRenderer *)self cameraSource];
  [v2 cameraFrameSetDropped];
}

- (id)buildRenderRequest:(id)a3 time:(id *)a4
{
  v6 = [a3 objectForKeyedSubscript:&unk_28556D5D8];
  v7 = v6;
  if (v6)
  {
    [v6 presentationTimeStamp];
    *time = v45;
    *&time[16] = v46;
    CMTimeGetSeconds(time);
    kdebug_trace();
    v8 = [(CFXRenderer *)self fpsCalc];
    [v8 tickReceived];

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
    v21 = [(CFXRenderer *)self cameraMode];
    *time = *&a4->var0;
    *&time[16] = a4->var3;
    v22 = [(JFXCapturePreviewProperties *)v20 initWithCameraFrameSet:v7 renderCameraMode:v21 renderTime:time renderOutputSize:v11 frameSize:v13, v16, v18];
    v23 = [JFXCapturePreviewRequestBuilder alloc];
    v24 = [(PVLivePlayer *)self->_livePlayer outputColorSpace];
    v42 = v22;
    v25 = [(JFXCapturePreviewRequestBuilder *)v23 initWithPreviewProperties:v22 outputColorSpace:v24];

    *time = *&a4->var0;
    *&time[16] = a4->var3;
    v26 = [(CFXRenderer *)self CFX_JTEffectsFromCFXEffectComposition:v19 forRenderTime:time];
    v27 = [(CFXRenderer *)self animojiRenderer];
    v28 = [(CFXRenderer *)self metadataValidator];
    v29 = +[JFXPickerCameraSource sharedInstance];
    v30 = [v29 isPickerPreviewing];
    v31 = *(MEMORY[0x277CBF2C0] + 16);
    *time = *MEMORY[0x277CBF2C0];
    *&time[16] = v31;
    v44 = *(MEMORY[0x277CBF2C0] + 32);
    v32 = [(JFXCapturePreviewRequestBuilder *)v25 createPVRenderRequestUsingAnimojiRenderer:v27 metadataValidator:v28 additionalTransform:time effectStack:v26 animojiTapPoint:v30 animojiUsesInterfaceOrientation:1 requestHandler:0];

    v33 = [(CFXRenderer *)self animojiRenderer];

    if (v33)
    {
      v34 = [CFXEffectType effectTypeWithIdentifier:@"Animoji"];
      if ([v19 hasEffectOfType:v34])
      {
        v35 = [v7 metadataDict];
        v36 = [v35 objectForKey:@"PVFrameSetMetadataARMetadataKey"];

        v37 = [(CFXRenderer *)self animojiRenderer];
        v38 = [v37 trackingLossDelegate];

        v39 = [v36 arFrame];
        if (v39)
        {
        }

        else if ([v38 shouldShowAnimojiFaceReticle])
        {
          [v38 setupAnimojiFaceReticleForTrackingLoss];
          [v38 showAnimojiFaceReticleForTrackingLoss];
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
    v40 = [(CFXRenderer *)self delegate];
    v45 = *time;
    v46 = *&time[16];
    [v40 renderer:self didPrepareToRenderFrameAtPresentationTime:&v45];
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (void)renderRequestComplete:(id)a3 results:(id)a4 completedOutOfOrder:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 userContext];
  v11 = v10;
  if (v10)
  {
    [v10 presentationTimeStamp];
  }

  else
  {
    memset(&v29, 0, sizeof(v29));
  }

  time = v29;
  CMTimeGetSeconds(&time);
  kdebug_trace();
  if (a5 || ![v9 count])
  {
    v12 = [(CFXRenderer *)self fpsCalc];
    [v12 tickDropped];
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
  v12 = [v11 metadataObjectForKey:@"kEffectCompositionMetadataKey"];
  [v11 setMetadataObject:0 forKey:@"kEffectCompositionMetadataKey"];
  v13 = +[JFXPickerCameraSource sharedInstance];
  if (![v13 isPickerPreviewing])
  {
    goto LABEL_18;
  }

  v14 = [v12 jtEffectsForType:7];
  v15 = [v14 count];

  if (v15)
  {
    if ([v9 count] >= 2)
    {
      v16 = [v9 objectAtIndexedSubscript:1];
      v17 = [v16 cvPixelBuffer];
      v18 = [CFXFrame alloc];
      if (v11)
      {
        [v11 presentationTimeStamp];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v19 = [(CFXFrame *)v18 initWithPixelBuffer:v17 timestamp:&time];
      v20 = [(CFXRenderer *)self CFX_PVFrameSetFromCFXFrame:v19];

      v11 = v20;
    }

    v13 = +[JFXPickerCameraSource sharedInstance];
    v21 = [v13 pickerSource];
    [v21 cameraFrameSetRecieved:v11];

LABEL_18:
  }

  v22 = [v9 objectAtIndexedSubscript:0];
  v23 = [v22 cvPixelBuffer];
  v24 = [v11 colorImageBuffer];
  CVBufferPropagateAttachments([v24 cvPixelBuffer], v23);

  v25 = [CFXFrame alloc];
  if (v11)
  {
    [v11 presentationTimeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v26 = [(CFXFrame *)v25 initWithPixelBuffer:v23 timestamp:&time];
  if (v8)
  {
    [v8 time];
  }

  else
  {
    memset(&v28, 0, sizeof(v28));
  }

  time = v28;
  [(CFXFrame *)v26 setRequestTime:&time, *&v28.value, v28.epoch];
  v27 = [(CFXRenderer *)self delegate];
  [v27 renderer:self didRenderFrame:v26];

LABEL_26:
}

- (id)CFX_PVFrameSetFromCFXFrame:(id)a3
{
  v3 = a3;
  v4 = [v3 pvFrameSet];
  if (!v4)
  {
    v5 = [v3 pixelBuffer];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v7 = [v3 arFrame];
      v6 = [v7 capturedImage];

      if (!v6)
      {
        v4 = 0;
        goto LABEL_8;
      }
    }

    v8 = [MEMORY[0x277D41618] imageWithCVPixelBuffer:v6];
    v16 = 0uLL;
    v17 = 0;
    if (v3)
    {
      [v3 timestamp];
    }

    memset(&v15, 0, sizeof(v15));
    v9 = +[CFXMediaSettings sharedInstance];
    CMTimeMake(&v15, 1, [v9 timeScale]);

    v13 = v16;
    v14 = v17;
    v12 = v15;
    v10 = [MEMORY[0x277D415D8] sampleBufferWithPVImageBuffer:v8 timestamp:&v13 frameDuration:&v12];
    v4 = [objc_alloc(MEMORY[0x277D41608]) initWithColorBuffer:v10 metadata:0];
  }

LABEL_8:

  return v4;
}

- (id)CFX_JTEffectsFromCFXEffectComposition:(id)a3 forRenderTime:(id *)a4
{
  v5 = [a3 effects];
  v6 = [MEMORY[0x277CBEB18] array];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__CFXRenderer_CFX_JTEffectsFromCFXEffectComposition_forRenderTime___block_invoke;
  v9[3] = &unk_278D7C978;
  v11 = *a4;
  v7 = v6;
  v10 = v7;
  [v5 enumerateObjectsUsingBlock:v9];

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
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 jfx_displayColorSpace];

  v4 = MEMORY[0x277D415E0];
  v5 = +[JFXVideoCameraController sharedInstance];
  v6 = [v4 jfx_getColorSpaceFromCaptureColorSpace:{objc_msgSend(v5, "cameraColorSpace")}];

  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 jfx_recommendedDisplayColorSpaceForColorSpace:v6];

  v9 = [MEMORY[0x277D415E0] jfx_compareAndChooseLesserColorSpace:v3 right:v8];

  return v9;
}

- (CFXRendererDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end