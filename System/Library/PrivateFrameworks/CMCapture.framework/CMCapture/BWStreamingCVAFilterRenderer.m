@interface BWStreamingCVAFilterRenderer
+ (void)initialize;
- (BWStreamingCVAFilterRenderer)initWithCaptureDevice:(id)a3 studioAndContourRenderingEnabled:(BOOL)a4 stageRenderingEnabled:(BOOL)a5 depthDataSource:(int)a6 foregroundBlurEnabled:(BOOL)a7 depthFilterRenderingIsAfterPreviewStitcher:(BOOL)a8 commandQueue:(id)a9 priority:(unsigned int)a10 mirroredForMetadataAdjustment:(BOOL)a11 rotationDegreesForMetadataAdjustment:(int)a12 secondaryStreamingPersonSegmentationEnabled:(BOOL)a13 cropDepthToPrimaryCaptureAspectRatio:(BOOL)a14 disableDepthAndSegmentationRotationInLandscape:(BOOL)a15;
- (float)portraitLightingEffectStrength;
- (float)simulatedAperture;
- (int)prepareForRenderingWithParameters:(id)a3 inputVideoFormat:(id)a4 inputMediaPropertiesByAttachedMediaKey:(id)a5;
- (uint64_t)mattingRequest:(uint64_t)result didCompleteMattingWithResult:;
- (void)_removeFaceVisibilityForFacesMissingFromDetectedFaces:(uint64_t)a1;
- (void)adjustMetadataOfSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)dealloc;
- (void)disparityPostprocessingRequest:(void *)a3 didCompleteDisparityPostprocessingWithResult:;
- (void)portraitRequest:(void *)a3 didCompletePortraitWithResult:(uint64_t)a4 completionHandler:;
- (void)renderUsingParameters:(id)a3 inputPixelBuffer:(__CVBuffer *)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 originalPixelBuffer:(__CVBuffer *)a6 processedPixelBuffer:(__CVBuffer *)a7 completionHandler:(id)a8;
- (void)setPortraitLightingEffectStrength:(float)a3;
- (void)setSimulatedAperture:(float)a3;
@end

@implementation BWStreamingCVAFilterRenderer

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWStreamingCVAFilterRenderer)initWithCaptureDevice:(id)a3 studioAndContourRenderingEnabled:(BOOL)a4 stageRenderingEnabled:(BOOL)a5 depthDataSource:(int)a6 foregroundBlurEnabled:(BOOL)a7 depthFilterRenderingIsAfterPreviewStitcher:(BOOL)a8 commandQueue:(id)a9 priority:(unsigned int)a10 mirroredForMetadataAdjustment:(BOOL)a11 rotationDegreesForMetadataAdjustment:(int)a12 secondaryStreamingPersonSegmentationEnabled:(BOOL)a13 cropDepthToPrimaryCaptureAspectRatio:(BOOL)a14 disableDepthAndSegmentationRotationInLandscape:(BOOL)a15
{
  v18 = a5;
  v26.receiver = self;
  v26.super_class = BWStreamingCVAFilterRenderer;
  v21 = [(BWStreamingCVAFilterRenderer *)&v26 init];
  if (v21)
  {
    v21->_sharedContextQueue = dispatch_queue_create("com.apple.bwgraph.streaming-cva-renderer.context-queue", 0);
    v21->_notificationQueue = FigDispatchQueueCreateWithPriority();
    v21->_commandQueue = a9;
    v21->_depthFilterRenderingIsAfterPreviewStitcher = a8;
    v21->_animator = -[BWStreamingCVAFilterRendererAnimator initWithEffectStatus:overCaptureEnabled:]([BWStreamingCVAFilterRendererAnimator alloc], "initWithEffectStatus:overCaptureEnabled:", [a3 shallowDepthOfFieldEffectStatus], objc_msgSend(a3, "overCaptureEnabled"));
    v21->_previousSkinSegmentationPixelBuffer = 0;
    v21->_previousDisparityPixelBuffer = 0;
    v21->_previousForegroundSegmentationPixelBuffer = 0;
    sharedContextQueue = v21->_sharedContextQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __407__BWStreamingCVAFilterRenderer_initWithCaptureDevice_studioAndContourRenderingEnabled_stageRenderingEnabled_depthDataSource_foregroundBlurEnabled_depthFilterRenderingIsAfterPreviewStitcher_commandQueue_priority_mirroredForMetadataAdjustment_rotationDegreesForMetadataAdjustment_secondaryStreamingPersonSegmentationEnabled_cropDepthToPrimaryCaptureAspectRatio_disableDepthAndSegmentationRotationInLandscape___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = v21;
    dispatch_sync(sharedContextQueue, block);
    v21->_depthDataSource = a6;
    v21->_captureDevice = a3;
    v21->_studioAndContourRenderingEnabled = a4;
    v21->_stageRenderingEnabled = v18;
    if (v18)
    {
      v23 = objc_alloc_init(BWSpringSimulation);
      v21->_stageProxyLiveRenderingSpringSimulation = v23;
      [(BWSpringSimulation *)v23 resetWithInput:1.0 initialOutput:0.0 initialVelocity:0.0];
      [(BWSpringSimulation *)v21->_stageProxyLiveRenderingSpringSimulation setTension:800.0];
      [(BWSpringSimulation *)v21->_stageProxyLiveRenderingSpringSimulation setFriction:20.0];
    }

    v21->_objectVisibilityByID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21->_objectVisibilityByIDLock._os_unfair_lock_opaque = 0;
    v21->_postprocessedFaces = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21->_foregroundBlurEnabled = a7;
    v21->_mirroredForMetadataAdjustment = a11;
    v21->_rotationDegreesForMetadataAdjustment = a12;
    v21->_secondaryStreamingPersonSegmentationEnabled = a13;
    v21->_cropDepthToPrimaryCaptureAspectRatio = a14;
    v21->_disableDepthAndSegmentationRotationInLandscape = a15;
  }

  return v21;
}

uint64_t __407__BWStreamingCVAFilterRenderer_initWithCaptureDevice_studioAndContourRenderingEnabled_stageRenderingEnabled_depthDataSource_foregroundBlurEnabled_depthFilterRenderingIsAfterPreviewStitcher_commandQueue_priority_mirroredForMetadataAdjustment_rotationDegreesForMetadataAdjustment_secondaryStreamingPersonSegmentationEnabled_cropDepthToPrimaryCaptureAspectRatio_disableDepthAndSegmentationRotationInLandscape___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 192) isDepthAvailable];
  *(*(a1 + 32) + 24) = result;
  *(*(a1 + 32) + 56) = 0;
  *(*(a1 + 32) + 60) = 2143289344;
  return result;
}

- (void)dealloc
{
  sharedContextQueue = self->_sharedContextQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__BWStreamingCVAFilterRenderer_dealloc__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(sharedContextQueue, block);

  mattingBuffer = self->_mattingBuffer;
  if (mattingBuffer)
  {
    CFRelease(mattingBuffer);
  }

  previousForegroundSegmentationPixelBuffer = self->_previousForegroundSegmentationPixelBuffer;
  if (previousForegroundSegmentationPixelBuffer)
  {
    CFRelease(previousForegroundSegmentationPixelBuffer);
  }

  previousSkinSegmentationPixelBuffer = self->_previousSkinSegmentationPixelBuffer;
  if (previousSkinSegmentationPixelBuffer)
  {
    CFRelease(previousSkinSegmentationPixelBuffer);
  }

  previousDisparityPixelBuffer = self->_previousDisparityPixelBuffer;
  if (previousDisparityPixelBuffer)
  {
    CFRelease(previousDisparityPixelBuffer);
  }

  v8.receiver = self;
  v8.super_class = BWStreamingCVAFilterRenderer;
  [(BWStreamingCVAFilterRenderer *)&v8 dealloc];
}

void __39__BWStreamingCVAFilterRenderer_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 32) = 0;
    v2 = *(a1 + 32);
  }

  v4 = *(*(a1 + 32) + 80);
}

- (void)setSimulatedAperture:(float)a3
{
  sharedContextQueue = self->_sharedContextQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__BWStreamingCVAFilterRenderer_setSimulatedAperture___block_invoke;
  v4[3] = &unk_1E7991CF0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(sharedContextQueue, v4);
}

float __53__BWStreamingCVAFilterRenderer_setSimulatedAperture___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 56) = result;
  return result;
}

- (float)simulatedAperture
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  sharedContextQueue = self->_sharedContextQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__BWStreamingCVAFilterRenderer_simulatedAperture__block_invoke;
  v5[3] = &unk_1E798FAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sharedContextQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __49__BWStreamingCVAFilterRenderer_simulatedAperture__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 56);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setPortraitLightingEffectStrength:(float)a3
{
  sharedContextQueue = self->_sharedContextQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__BWStreamingCVAFilterRenderer_setPortraitLightingEffectStrength___block_invoke;
  v4[3] = &unk_1E7991CF0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(sharedContextQueue, v4);
}

float __66__BWStreamingCVAFilterRenderer_setPortraitLightingEffectStrength___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 60) = result;
  return result;
}

- (float)portraitLightingEffectStrength
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  sharedContextQueue = self->_sharedContextQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__BWStreamingCVAFilterRenderer_portraitLightingEffectStrength__block_invoke;
  v5[3] = &unk_1E798FAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sharedContextQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __62__BWStreamingCVAFilterRenderer_portraitLightingEffectStrength__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 60);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)prepareForRenderingWithParameters:(id)a3 inputVideoFormat:(id)a4 inputMediaPropertiesByAttachedMediaKey:(id)a5
{
  v62 = 0;
  if (!a3)
  {
    goto LABEL_177;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v9 = [a3 prepareForRenderingWithInputVideoFormat:a4];
  if (!v9)
  {
LABEL_177:
    if (self->_portraitVideoPipeline)
    {
      return 0;
    }

    self->_hasSeenDepth = 0;
    *&self->_maxFramesWithoutDepth = 1;
    self->_hasSeenSegmentation = 0;
    *&self->_maxFramesWithoutSegmentation = 6;
    v10 = [objc_msgSend(a5 objectForKeyedSubscript:{@"Depth", "resolvedVideoFormat"}];
    if (!a4)
    {
      [BWStreamingCVAFilterRenderer prepareForRenderingWithParameters:inputVideoFormat:inputMediaPropertiesByAttachedMediaKey:];
      goto LABEL_72;
    }

    v11 = v10;
    if (!self->_depthDataSource && !v10)
    {
      [BWStreamingCVAFilterRenderer prepareForRenderingWithParameters:inputVideoFormat:inputMediaPropertiesByAttachedMediaKey:];
      goto LABEL_72;
    }

    v12 = [(BWFigVideoCaptureDevice *)self->_captureDevice position];
    v13 = [(BWFigVideoCaptureDevice *)self->_captureDevice bravoSuperWideCaptureStream];
    [(BWZoomCommandHandler *)[(BWFigVideoCaptureDevice *)self->_captureDevice zoomCommandHandler] requestedZoomFactorWithoutFudge];
    v15 = v14;
    depthFilterRenderingIsAfterPreviewStitcher = self->_depthFilterRenderingIsAfterPreviewStitcher;
    ModelSpecificName = FigCaptureGetModelSpecificName();
    if ([ModelSpecificName hasPrefix:@"N104"])
    {
      v18 = v12 == 2;
      v19 = 18;
      goto LABEL_10;
    }

    if ([ModelSpecificName hasPrefix:@"D42"])
    {
      v21 = 12;
      if (v13)
      {
        v21 = 13;
      }

      v22 = v12 == 2;
      v23 = 14;
      goto LABEL_21;
    }

    if ([ModelSpecificName hasPrefix:@"D43"])
    {
      v21 = 15;
      if (v13)
      {
        v21 = 16;
      }

      v22 = v12 == 2;
      v23 = 17;
      goto LABEL_21;
    }

    if ([ModelSpecificName hasPrefix:@"J317"] & 1) != 0 || (objc_msgSend(ModelSpecificName, "hasPrefix:", @"J318"))
    {
      goto LABEL_26;
    }

    if ([ModelSpecificName hasPrefix:@"J320"] & 1) != 0 || (objc_msgSend(ModelSpecificName, "hasPrefix:", @"J321"))
    {
LABEL_56:
      v20 = 11;
      goto LABEL_27;
    }

    if ([ModelSpecificName hasPrefix:@"D79"])
    {
      goto LABEL_58;
    }

    if (([ModelSpecificName hasPrefix:@"J417"] & 1) == 0 && (objc_msgSend(ModelSpecificName, "hasPrefix:", @"J418") & 1) == 0)
    {
      if ([ModelSpecificName hasPrefix:@"J420"] & 1) != 0 || (objc_msgSend(ModelSpecificName, "hasPrefix:", @"J421"))
      {
        goto LABEL_56;
      }

      if ([ModelSpecificName hasPrefix:@"D52g"] || objc_msgSend(ModelSpecificName, "hasPrefix:", @"D53g"))
      {
        v18 = v12 == 2;
        v19 = 22;
        goto LABEL_10;
      }

      if ([ModelSpecificName hasPrefix:@"D53p"])
      {
        v46 = v13 == 0;
        v21 = 24;
LABEL_80:
        if (!v46)
        {
          ++v21;
        }

        v22 = v12 == 2;
        v23 = 26;
        goto LABEL_21;
      }

      if ([ModelSpecificName hasPrefix:@"D54p"])
      {
        v46 = v13 == 0;
        v21 = 27;
        goto LABEL_80;
      }

      if (([ModelSpecificName hasPrefix:@"J517"] & 1) == 0 && (objc_msgSend(ModelSpecificName, "hasPrefix:", @"J518") & 1) == 0)
      {
        if ([ModelSpecificName hasPrefix:@"J522"] & 1) != 0 || (objc_msgSend(ModelSpecificName, "hasPrefix:", @"J523"))
        {
          goto LABEL_56;
        }

        if ([ModelSpecificName hasPrefix:@"D16"] || objc_msgSend(ModelSpecificName, "hasPrefix:", @"D17"))
        {
          v18 = v12 == 2;
          v19 = 29;
LABEL_10:
          if (v18)
          {
            v20 = v19 + 1;
          }

          else
          {
            v20 = v19;
          }

          goto LABEL_27;
        }

        if ([ModelSpecificName hasPrefix:@"D27"] || objc_msgSend(ModelSpecificName, "hasPrefix:", @"D28"))
        {
          if (v12 == 2)
          {
            v20 = 37;
          }

          else
          {
            v20 = 38;
          }

          goto LABEL_27;
        }

        if ([ModelSpecificName hasPrefix:@"D37"])
        {
LABEL_96:
          if (v12 != 2)
          {
            v47 = !depthFilterRenderingIsAfterPreviewStitcher;
            v48 = 42;
LABEL_107:
            v49 = 48;
LABEL_108:
            if (v47)
            {
              v20 = v48;
            }

            else
            {
              v20 = v49;
            }

            goto LABEL_27;
          }

          goto LABEL_100;
        }

        if ([ModelSpecificName hasPrefix:@"D38"])
        {
          goto LABEL_99;
        }

        if ([ModelSpecificName hasPrefix:@"D47"])
        {
          goto LABEL_96;
        }

        if ([ModelSpecificName hasPrefix:@"D48"])
        {
LABEL_99:
          if (v12 != 2)
          {
            v47 = !depthFilterRenderingIsAfterPreviewStitcher;
            v48 = 43;
            goto LABEL_107;
          }

LABEL_100:
          v47 = !depthFilterRenderingIsAfterPreviewStitcher;
          v48 = 33;
          v49 = 49;
          goto LABEL_108;
        }

        if ([ModelSpecificName hasPrefix:@"V59"])
        {
          if (v12 == 2)
          {
            goto LABEL_100;
          }

          v22 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters monocularStreamingDepthType]== 2;
          v21 = 50;
          v23 = 48;
LABEL_21:
          if (v22)
          {
            v20 = v23;
          }

          else
          {
            v20 = v21;
          }

          goto LABEL_27;
        }

        if ([ModelSpecificName hasPrefix:@"V57"] || objc_msgSend(ModelSpecificName, "hasPrefix:", @"D23"))
        {
          goto LABEL_113;
        }

        if ([ModelSpecificName hasPrefix:@"D63"] || objc_msgSend(ModelSpecificName, "hasPrefix:", @"D64"))
        {
          v21 = 31;
          if (!v13)
          {
            v21 = 32;
          }

          v22 = v12 == 2;
          v23 = 30;
          goto LABEL_21;
        }

        if ([ModelSpecificName hasPrefix:@"D73"] || objc_msgSend(ModelSpecificName, "hasPrefix:", @"D74"))
        {
          if (v12 != 2)
          {
            v21 = 34;
            if (v15 == 4.0)
            {
              v21 = 35;
            }

            v22 = v13 == 0;
            v23 = 36;
            goto LABEL_21;
          }

          v20 = 33;
LABEL_27:
          v24 = [MEMORY[0x1E698C0E0] videoPipelinePropertiesForDevice:v20];
          if (v24)
          {
            v25 = v24;
            v26 = [a4 width];
            v27 = [a4 height];
            [v25 setColorPixelBufferWidth:v26];
            [v25 setColorPixelBufferHeight:v27];
            [v25 setAlphaMattePixelBufferWidth:v26];
            [v25 setAlphaMattePixelBufferHeight:v27];
            depthDataSource = self->_depthDataSource;
            switch(depthDataSource)
            {
              case 2:
                goto LABEL_31;
              case 1:
                [v25 setFocusStatisticsXTileCount:24];
                [v25 setFocusStatisticsYTileCount:19];
                [(BWFigVideoCaptureStream *)[(BWFigVideoCaptureDevice *)self->_captureDevice captureStream] focalLength];
                [v25 setColorPixelBufferFocalLength_mm:?];
                [(BWFigVideoCaptureStream *)[(BWFigVideoCaptureDevice *)self->_captureDevice captureStream] pixelSize];
                [v25 setColorPixelBufferPixelSize_um:?];
                [(BWFigVideoCaptureStream *)[(BWFigVideoCaptureDevice *)self->_captureDevice captureStream] lensFNumber];
                [v25 setColorPixelBufferFocalRatio:?];
                break;
              case 0:
LABEL_31:
                [v25 setInputDisparityPixelBufferWidth:{objc_msgSend(v11, "width")}];
                [v25 setInputDisparityPixelBufferHeight:{objc_msgSend(v11, "height")}];
                break;
            }

            if (self->_foregroundBlurEnabled)
            {
              v29 = 1751411059;
            }

            else if (self->_depthDataSource == 2)
            {
              v29 = 1717855600;
            }

            else
            {
              v29 = 825306677;
            }

            self->_requiredDisparityFormat = v29;
            [v25 setInputDisparityPixelBufferPixelFormat:?];
            if (self->_foregroundBlurEnabled && v12 == 2)
            {
              v30 = 0;
            }

            else
            {
              v30 = [v25 inputToOutputDisparityPixelBufferRotation];
            }

            [v25 setInputToOutputDisparityPixelBufferRotation:v30];
            if (self->_depthFilterRenderingIsAfterPreviewStitcher && ![(BWFigVideoCaptureDevice *)self->_captureDevice isBravoVariant])
            {
              [v25 setOutputDisparityPixelBufferWidth:{objc_msgSend(v11, "height")}];
              [v25 setOutputDisparityPixelBufferHeight:{objc_msgSend(v11, "width")}];
              if (v12 == 2)
              {
                v31 = 1;
              }

              else
              {
                v31 = 3;
              }

              [v25 setInputToOutputDisparityPixelBufferRotation:v31];
            }

            v32 = [v25 outputDisparityPixelBufferWidth];
            v33 = [v25 outputDisparityPixelBufferHeight];

            v34 = [MEMORY[0x1E698C0E0] portraitVideoPipelineWithProperties:v25 commandQueue:self->_commandQueue notificationQueue:self->_notificationQueue error:&v62];
            self->_portraitVideoPipeline = v34;
            if (v34)
            {
              v60[0] = *MEMORY[0x1E6966208];
              v61[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v32];
              v60[1] = *MEMORY[0x1E69660B8];
              v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v33];
              v36 = *MEMORY[0x1E6966130];
              v61[1] = v35;
              v61[2] = &unk_1F22488C8;
              v37 = *MEMORY[0x1E69660D8];
              v60[2] = v36;
              v60[3] = v37;
              v38 = MEMORY[0x1E695E0F8];
              v61[3] = MEMORY[0x1E695E0F8];
              v39 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:4]);
              v59 = v39;
              v40 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1]);

              self->_postprocessedDisparityBufferPool = [[BWPixelBufferPool alloc] initWithVideoFormat:v40 capacity:4 name:@"Postprocessed Disparity Pool" memoryPool:+[BWMemoryPool sharedMemoryPool]];
              p_mattingBuffer = &self->_mattingBuffer;
              mattingBuffer = self->_mattingBuffer;
              if (mattingBuffer)
              {
                CFRelease(mattingBuffer);
                *p_mattingBuffer = 0;
              }

              v57 = v37;
              v58 = v38;
              CVPixelBufferCreate(0, v26, v27, 0x4C303038u, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1], &self->_mattingBuffer);
              if (*p_mattingBuffer)
              {
                return 0;
              }

              [BWStreamingCVAFilterRenderer prepareForRenderingWithParameters:inputVideoFormat:inputMediaPropertiesByAttachedMediaKey:];
              goto LABEL_72;
            }

            if (![BWStreamingCVAFilterRenderer prepareForRenderingWithParameters:&v63 inputVideoFormat:? inputMediaPropertiesByAttachedMediaKey:?])
            {
              v43 = v63;
              goto LABEL_73;
            }

            return 0;
          }

          [BWStreamingCVAFilterRenderer prepareForRenderingWithParameters:inputVideoFormat:inputMediaPropertiesByAttachedMediaKey:];
LABEL_72:
          v43 = -12780;
          goto LABEL_73;
        }

        if (([ModelSpecificName hasPrefix:@"D83"] & 1) != 0 || (objc_msgSend(ModelSpecificName, "hasPrefix:", @"D84") & 1) != 0 || (objc_msgSend(ModelSpecificName, "hasPrefix:", @"D93") & 1) != 0 || (objc_msgSend(ModelSpecificName, "hasPrefix:", @"D94") & 1) != 0 || objc_msgSend(ModelSpecificName, "hasPrefix:", @"T2030"))
        {
          v50 = 33;
          if (depthFilterRenderingIsAfterPreviewStitcher)
          {
            v50 = 49;
          }

          if (v12 == 2)
          {
            v20 = v50;
          }

          else
          {
            v20 = 48;
          }

          goto LABEL_27;
        }

        if (([ModelSpecificName hasPrefix:@"V53"] & 1) != 0 || objc_msgSend(ModelSpecificName, "hasPrefix:", @"V54"))
        {
LABEL_113:
          v22 = v12 == 2;
          v21 = 48;
          v23 = 51;
          goto LABEL_21;
        }

        if ([ModelSpecificName hasPrefix:@"D49"])
        {
LABEL_58:
          v18 = v12 == 2;
          v19 = 20;
          goto LABEL_10;
        }

        if ([ModelSpecificName hasPrefix:@"J617"])
        {
          if (v12 != 2)
          {
            if (([ModelSpecificName hasPrefix:@"J620"] & 1) == 0)
            {
              [ModelSpecificName hasPrefix:@"J621"];
            }

            goto LABEL_150;
          }
        }

        else
        {
          v51 = [ModelSpecificName hasPrefix:@"J618"];
          if (v12 != 2 || (v51 & 1) == 0)
          {
            if ([ModelSpecificName hasPrefix:@"J620"])
            {
              if (v12 == 2)
              {
                goto LABEL_56;
              }
            }

            else
            {
              v52 = [ModelSpecificName hasPrefix:@"J621"];
              if (v12 == 2 && (v52 & 1) != 0)
              {
                goto LABEL_56;
              }
            }

LABEL_150:
            if ([ModelSpecificName hasPrefix:@"J717"])
            {
              if (v12 == 2)
              {
                goto LABEL_167;
              }

              if (([ModelSpecificName hasPrefix:@"J720"] & 1) == 0)
              {
                [ModelSpecificName hasPrefix:@"J721"];
              }
            }

            else
            {
              v53 = [ModelSpecificName hasPrefix:@"J718"];
              if (v12 == 2 && (v53 & 1) != 0)
              {
                goto LABEL_167;
              }

              if ([ModelSpecificName hasPrefix:@"J720"])
              {
                if (v12 == 2)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v54 = [ModelSpecificName hasPrefix:@"J721"];
                if (v12 == 2 && (v54 & 1) != 0)
                {
                  goto LABEL_173;
                }
              }
            }

            if ([ModelSpecificName hasPrefix:@"J817"])
            {
              if (v12 != 2)
              {
                if (([ModelSpecificName hasPrefix:@"J820"] & 1) == 0)
                {
                  [ModelSpecificName hasPrefix:@"J821"];
                }

LABEL_174:
                objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Failed to find CVAVideoPipelineDevice for modelSpecificName: %@, isFrontCamera: %d, zoomFactor %f", ModelSpecificName, v12 == 2, v15), 0}]);
              }

LABEL_167:
              v20 = 46;
              goto LABEL_27;
            }

            v55 = [ModelSpecificName hasPrefix:@"J818"];
            if (v12 == 2 && (v55 & 1) != 0)
            {
              goto LABEL_167;
            }

            if ([ModelSpecificName hasPrefix:@"J820"])
            {
              if (v12 != 2)
              {
                goto LABEL_174;
              }
            }

            else
            {
              v56 = [ModelSpecificName hasPrefix:@"J821"];
              if (v12 != 2 || (v56 & 1) == 0)
              {
                goto LABEL_174;
              }
            }

LABEL_173:
            v20 = 47;
            goto LABEL_27;
          }
        }
      }
    }

LABEL_26:
    v20 = 10;
    goto LABEL_27;
  }

  v43 = v9;
LABEL_73:

  self->_portraitVideoPipeline = 0;
  v45 = self->_mattingBuffer;
  if (v45)
  {
    CFRelease(v45);
    self->_mattingBuffer = 0;
  }

  return v43;
}

- (void)renderUsingParameters:(id)a3 inputPixelBuffer:(__CVBuffer *)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 originalPixelBuffer:(__CVBuffer *)a6 processedPixelBuffer:(__CVBuffer *)a7 completionHandler:(id)a8
{
  v8 = MEMORY[0x1EEE9AC00](self);
  v59 = v10;
  v60 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v8;
  v110[5] = v8;
  v111 = 0;
  v110[0] = 0;
  v110[1] = v110;
  v110[2] = 0x3052000000;
  v110[3] = __Block_byref_object_copy__22;
  v110[4] = __Block_byref_object_dispose__22;
  theDict = CMGetAttachment(v11, *off_1E798A3C8, 0);
  target = v12;
  AttachedMedia = BWSampleBufferGetAttachedMedia(v12, @"Depth");
  v19 = [-[__CFDictionary objectForKeyedSubscript:](theDict objectForKeyedSubscript:{*off_1E798A660), "BOOLValue"}];
  if (AttachedMedia)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
    if (CVPixelBufferGetPixelFormatType(ImageBuffer) != *(v17 + 120))
    {
      BWSampleBufferRemoveAttachedMedia(target, @"Depth");
      ImageBuffer = 0;
    }
  }

  else
  {
    ImageBuffer = 0;
  }

  if (*(v17 + 256) == 1)
  {
    v20 = BWSampleBufferGetAttachedMedia(target, 0x1F21AAC10);
    v21 = BWSampleBufferGetAttachedMedia(target, 0x1F21AAC50);
  }

  else
  {
    v20 = BWSampleBufferGetAttachedMedia(target, 0x1F21AABF0);
    v21 = BWSampleBufferGetAttachedMedia(target, 0x1F21AAC30);
  }

  v22 = v21;
  if (v20)
  {
    v23 = CMSampleBufferGetImageBuffer(v20);
  }

  else
  {
    v23 = CMGetAttachment(target, *off_1E798A4C8, 0);
  }

  v24 = v23;
  if (v22)
  {
    cf = CMSampleBufferGetImageBuffer(v22);
  }

  else
  {
    cf = 0;
  }

  v56 = [(__CFDictionary *)theDict objectForKeyedSubscript:*off_1E798B2E8];
  v25 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v25;
  if (target)
  {
    v26 = CMGetAttachment(target, *off_1E798A430, 0);
    if (v26)
    {
      CGRectMakeWithDictionaryRepresentation(v26, &rect);
      CVPixelBufferGetWidth(v14);
      CVPixelBufferGetHeight(v14);
      FigCaptureMetadataUtilitiesDenormalizeCropRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
      rect.origin.x = v27;
      rect.origin.y = v28;
      rect.size.width = v29;
      rect.size.height = v30;
    }
  }

  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v108 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x3052000000;
  v102 = __Block_byref_object_copy__22;
  v103 = __Block_byref_object_dispose__22;
  v104 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  v89 = 0;
  v90 = &v89;
  v91 = 0x3052000000;
  v92 = __Block_byref_object_copy__22;
  v93 = __Block_byref_object_dispose__22;
  v94 = 0;
  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x2020000000;
  v88 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x2020000000;
  v82 = 2143289344;
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x2020000000;
  v80 = 0;
  v31 = *(v17 + 8);
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __148__BWStreamingCVAFilterRenderer_renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_completionHandler___block_invoke;
  v78[3] = &unk_1E7997670;
  v78[5] = &v105;
  v78[4] = v17;
  v78[6] = &v99;
  v78[7] = &v95;
  v78[8] = &v89;
  v78[9] = v79;
  v78[10] = v87;
  v78[11] = &v83;
  v78[12] = v81;
  dispatch_sync(v31, v78);
  v58 = [CMGetAttachment(target @"StructuredLightRecentlyOccluded"];
  v32 = *(MEMORY[0x1E695F058] + 16);
  v76 = *MEMORY[0x1E695F058];
  v77 = v32;
  CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
  BYTE4(v62) = ImageBuffer == 0;
  if (ImageBuffer)
  {
    *(v17 + 232) = 0;
    *(v17 + 225) = 1;
    if (!v20)
    {
      if (v19)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if ((v19 & 1) == 0)
  {
    ++*(v17 + 232);
    if (!v20)
    {
LABEL_26:
      ++*(v17 + 244);
      goto LABEL_27;
    }

LABEL_25:
    *(v17 + 244) = 0;
    *(v17 + 236) = 1;
    goto LABEL_27;
  }

  if (v20)
  {
    goto LABEL_25;
  }

LABEL_27:
  if (*(v17 + 244) <= *(v17 + 240))
  {
    if (v24 && cf)
    {
      v36 = *(v17 + 128);
      if (v36)
      {
        CFRelease(v36);
      }

      *(v17 + 128) = CFRetain(v24);
      v37 = *(v17 + 136);
      if (v37)
      {
        CFRelease(v37);
      }

      *(v17 + 136) = CFRetain(cf);
    }
  }

  else
  {
    v34 = *(v17 + 128);
    if (v34)
    {
      CFRelease(v34);
    }

    v35 = *(v17 + 136);
    if (v35)
    {
      CFRelease(v35);
    }

    *(v17 + 128) = 0;
    *(v17 + 136) = 0;
  }

  if (*(v17 + 232) <= *(v17 + 228))
  {
    if (ImageBuffer)
    {
      v39 = *(v17 + 144);
      *(v17 + 144) = ImageBuffer;
      CFRetain(ImageBuffer);
      if (v39)
      {
        CFRelease(v39);
      }
    }
  }

  else
  {
    v38 = *(v17 + 144);
    if (v38)
    {
      CFRelease(v38);
      *(v17 + 144) = 0;
    }
  }

  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_97;
    }
  }

  v40 = [v16 colorFilter];
  v41 = *(v17 + 152);
  if (v41 != 2)
  {
    if (v41 != 1)
    {
      if (v41)
      {
        goto LABEL_59;
      }

      goto LABEL_51;
    }

    if (v56)
    {
      if (!CGRectIfPresent)
      {
        goto LABEL_91;
      }

      goto LABEL_59;
    }

LABEL_97:
    v62 = 0;
    v53 = 0;
    goto LABEL_84;
  }

LABEL_51:
  if ((v58 & 1) != 0 || *(v17 + 225) != 1 || *(v17 + 232) > *(v17 + 228))
  {
    goto LABEL_60;
  }

  if (v19)
  {
    if (!(ImageBuffer | *(v17 + 144)))
    {
      goto LABEL_91;
    }

    goto LABEL_59;
  }

  if (!ImageBuffer)
  {
LABEL_91:
    BYTE4(v62) = 0;
    goto LABEL_99;
  }

LABEL_59:
  BYTE4(v62) = 0;
LABEL_60:
  if (v40)
  {
    v75 = v40;
    if (BWCIFilterArrayContainsFiltersRequiringSegmentation([MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1]))
    {
      if (*(v17 + 236) == 1 && *(v17 + 244) <= *(v17 + 240))
      {
        if (!v24)
        {
          if (!*(v17 + 128))
          {
LABEL_99:
            LOBYTE(v62) = 0;
            v53 = -12780;
            goto LABEL_84;
          }

          if (dword_1EB58E300)
          {
            v48 = v19;
          }

          else
          {
            v48 = 1;
          }

          if ((v48 & 1) == 0)
          {
            LODWORD(v73) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }

      else
      {
        BYTE4(v62) = 1;
      }
    }
  }

  if (!theDict || !v14 || !v60)
  {
LABEL_98:
    FigDebugAssert3();
    goto LABEL_99;
  }

  if (*(v17 + 96) && *(v17 + 104))
  {
    CMGetAttachment(target, *off_1E798A510, 0);
    [(__CFDictionary *)theDict objectForKeyedSubscript:*off_1E798B308];
    [(__CFDictionary *)theDict objectForKeyedSubscript:*off_1E798B310];
    [(__CFDictionary *)theDict objectForKeyedSubscript:*off_1E798B208];
    [CMGetAttachment(target @"SDOFFocusLocked"];
    [(__CFDictionary *)theDict objectForKeyedSubscript:*off_1E798D338];
    if ([-[__CFDictionary objectForKeyedSubscript:](theDict objectForKeyedSubscript:{*off_1E798B0A8), "intValue"}] == 4)
    {
      v42 = *(v96 + 6) + 1;
    }

    else
    {
      v42 = 0;
    }

    *(v96 + 6) = v42;
    v43 = [*(v17 + 160) shallowDepthOfFieldEffectStatus];
    v44 = CMGetAttachment(target, @"BWShallowDepthOfFieldEffectPreviewStatusOverride", 0);
    if (v44)
    {
      v43 = [v44 intValue];
    }

    LODWORD(v45) = *(v106 + 6);
    LODWORD(v46) = *(v84 + 6);
    [*(v17 + 192) simulateNextFrameWithEffectStatus:v43 portraitStability:v45 clientSuppliedSimulatedAperture:v46];
    v47 = [(__CFDictionary *)theDict objectForKeyedSubscript:*off_1E798B4B8];
    if (v47)
    {
      [v47 floatValue];
      v74 = 0;
      FigCaptureComputeImageGainFromMetadata();
    }

    goto LABEL_98;
  }

  FigDebugAssert3();
  LOBYTE(v62) = 0;
  v53 = -12786;
LABEL_84:
  v50 = *(v17 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __148__BWStreamingCVAFilterRenderer_renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_completionHandler___block_invoke_4;
  block[3] = &unk_1E7997710;
  v69 = v58;
  block[5] = 0;
  block[6] = &v95;
  v68 = 0;
  v70 = v62 & 1;
  block[4] = v17;
  v71 = BYTE4(v62);
  dispatch_sync(v50, block);
  if (!v111 && v53)
  {
    v51 = MEMORY[0x1E696ABC0];
    v65 = *MEMORY[0x1E696A578];
    v66 = @"Streaming CVA rendering failure";
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v111 = [v51 errorWithDomain:*MEMORY[0x1E696A768] code:v53 userInfo:v52];
  }

  if (v59)
  {
    (*(v59 + 16))(v59, 0);
  }

  _Block_object_dispose(v79, 8);
  _Block_object_dispose(v81, 8);
  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(v87, 8);
  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(&v105, 8);
  _Block_object_dispose(v110, 8);
}

float __148__BWStreamingCVAFilterRenderer_renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_completionHandler___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 48);
  *(*(a1[6] + 8) + 40) = *(a1[4] + 72);
  *(*(a1[7] + 8) + 24) = *(a1[4] + 52);
  *(*(a1[8] + 8) + 40) = *(a1[4] + 80);
  *(*(a1[9] + 8) + 24) = *(a1[4] + 88);
  *(*(a1[10] + 8) + 24) = *(a1[4] + 65);
  *(*(a1[11] + 8) + 24) = *(a1[4] + 56);
  result = *(a1[4] + 60);
  *(*(a1[12] + 8) + 24) = result;
  return result;
}

- (void)disparityPostprocessingRequest:(void *)a3 didCompleteDisparityPostprocessingWithResult:
{
  if (a1)
  {
    v5 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [a3 postprocessedDisparityPixelBuffer];
      kdebug_trace();
      if (*v5 == 1)
      {
        [a3 postprocessedDisparityPixelBuffer];
        kdebug_trace();
      }
    }

    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3052000000;
    v32 = __Block_byref_object_copy__22;
    v33 = __Block_byref_object_dispose__22;
    v34 = MEMORY[0x1E695E0F0];
    v6 = *(a1 + 8);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __108__BWStreamingCVAFilterRenderer_disparityPostprocessingRequest_didCompleteDisparityPostprocessingWithResult___block_invoke;
    v28[3] = &unk_1E7997788;
    v28[4] = a1;
    v28[5] = a3;
    v28[6] = &v35;
    v28[7] = &v29;
    dispatch_sync(v6, v28);
    v7 = *(a1 + 160);
    [a3 backgroundDisparitySum];
    v9 = v8;
    [a3 invalidDisparityRatio];
    v11 = v10;
    [a3 closeCanonicalDisparityAverage];
    v13 = v12;
    v14 = [a3 faceCanonicalDisparityAverage];
    [a3 erodedForegroundRatio];
    v16 = v15;
    [a3 foregroundRatio];
    v18 = v17;
    v19 = *(v36 + 24);
    v20 = v30[5];
    [a3 personSegmentationRatio];
    LODWORD(v22) = v21;
    LODWORD(v23) = v9;
    LODWORD(v24) = v11;
    LODWORD(v25) = v13;
    LODWORD(v26) = v16;
    LODWORD(v27) = v18;
    [v7 updateSDOFBackgroundShiftSum:v14 invalidShiftRatio:v19 closeCanonicalDisparityAverage:v20 faceCanonicalDisparityAverages:v23 erodedForegroundRatio:v24 foregroundRatio:v25 occluded:v26 faces:v27 personSegmentationRatio:v22];

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v35, 8);
  }
}

- (uint64_t)mattingRequest:(uint64_t)result didCompleteMattingWithResult:
{
  if (result)
  {
    v1 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      result = kdebug_trace();
      if (*v1 == 1)
      {

        return kdebug_trace();
      }
    }
  }

  return result;
}

id __148__BWStreamingCVAFilterRenderer_renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_completionHandler___block_invoke_4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 192) isDepthAvailable];
  *(*(a1 + 32) + 24) = result;
  *(*(a1 + 32) + 64) = *(a1 + 60);
  *(*(a1 + 32) + 52) = *(*(*(a1 + 48) + 8) + 24);
  *(*(a1 + 32) + 88) = *(a1 + 56);
  if ((*(a1 + 61) & 1) == 0)
  {

    result = *(a1 + 40);
    *(*(a1 + 32) + 80) = result;
    *(*(a1 + 32) + 65) = *(a1 + 62);
  }

  return result;
}

- (void)adjustMetadataOfSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v4 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  v15 = *off_1E798B220;
  v5 = [v4 objectForKeyedSubscript:?];
  v6 = [v5 objectForKeyedSubscript:*off_1E798ACB8];
  v7 = *off_1E798ACE8;
  v8 = [v6 objectForKeyedSubscript:*off_1E798ACE8];
  if (!v8)
  {
    v8 = [v4 objectForKeyedSubscript:*off_1E798B218];
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  mirroredForMetadataAdjustment = self->_mirroredForMetadataAdjustment;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  rotationDegreesForMetadataAdjustment = self->_rotationDegreesForMetadataAdjustment;
  [(BWStreamingCVAFilterRenderer *)self _removeFaceVisibilityForFacesMissingFromDetectedFaces:v8];
  sharedContextQueue = self->_sharedContextQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__BWStreamingCVAFilterRenderer_adjustMetadataOfSampleBuffer___block_invoke;
  block[3] = &unk_1E7997738;
  block[6] = &v37;
  block[7] = &v33;
  block[8] = v31;
  block[9] = v29;
  block[10] = v27;
  block[4] = self;
  block[5] = v8;
  dispatch_sync(sharedContextQueue, block);
  if ([v8 count])
  {
    if (*(v38 + 24) == 1)
    {
      if (v34[3])
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __61__BWStreamingCVAFilterRenderer_adjustMetadataOfSampleBuffer___block_invoke_2;
        v21[3] = &unk_1E7997760;
        v21[4] = self;
        v21[5] = v27;
        v21[6] = v31;
        v21[7] = v29;
        v21[8] = &v33;
        v21[9] = v25;
        v21[10] = v23;
        v10 = [MEMORY[0x1E696AE18] predicateWithBlock:v21];
        if (!CVPixelBufferLockBaseAddress(v34[3], 1uLL))
        {
          if (v5)
          {
            v19 = 0u;
            v20 = 0u;
            v17 = 0u;
            v18 = 0u;
            v11 = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
            if (v11)
            {
              v12 = *v18;
              do
              {
                v13 = 0;
                do
                {
                  if (*v18 != v12)
                  {
                    objc_enumerationMutation(v5);
                  }

                  [objc_msgSend(v5 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * v13)), "setObject:forKeyedSubscript:", objc_msgSend(objc_msgSend(objc_msgSend(v5, "objectForKeyedSubscript:", *(*(&v17 + 1) + 8 * v13)), "objectForKeyedSubscript:", v7), "filteredArrayUsingPredicate:", v10), v7}];
                  ++v13;
                }

                while (v11 != v13);
                v11 = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
              }

              while (v11);
            }

            [v4 setObject:v5 forKeyedSubscript:v15];
          }

          else
          {
            [v4 setObject:objc_msgSend(v8 forKeyedSubscript:{"filteredArrayUsingPredicate:", v10), *off_1E798B218}];
          }

          CVPixelBufferUnlockBaseAddress(v34[3], 1uLL);
        }
      }
    }
  }

  v14 = v34[3];
  if (v14)
  {
    CFRelease(v14);
  }

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
}

- (void)_removeFaceVisibilityForFacesMissingFromDetectedFaces:(uint64_t)a1
{
  if (a1 && a2)
  {
    os_unfair_lock_lock((a1 + 208));
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], [*(a1 + 200) allKeys], 0);
    v15 = a1;
    os_unfair_lock_unlock((a1 + 208));
    v16 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [DeepCopy countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      v8 = *off_1E798B2B8;
      do
      {
        v9 = 0;
        do
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(DeepCopy);
          }

          v10 = *(*(&v23 + 1) + 8 * v9);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v11 = [a2 countByEnumeratingWithState:&v18 objects:v17 count:{16, v15}];
          if (v11)
          {
            v12 = v11;
            v13 = *v19;
LABEL_10:
            v14 = 0;
            while (1)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(a2);
              }

              if ([objc_msgSend(*(*(&v18 + 1) + 8 * v14) objectForKeyedSubscript:{v8), "isEqualToNumber:", v10}])
              {
                break;
              }

              if (v12 == ++v14)
              {
                v12 = [a2 countByEnumeratingWithState:&v18 objects:v17 count:16];
                if (v12)
                {
                  goto LABEL_10;
                }

                goto LABEL_16;
              }
            }
          }

          else
          {
LABEL_16:
            [v16 addObject:v10];
          }

          ++v9;
        }

        while (v9 != v6);
        v6 = [DeepCopy countByEnumeratingWithState:&v23 objects:v22 count:16];
      }

      while (v6);
    }

    os_unfair_lock_lock((v15 + 208));
    [*(v15 + 200) removeObjectsForKeys:v16];
    os_unfair_lock_unlock((v15 + 208));
  }
}

id __61__BWStreamingCVAFilterRenderer_adjustMetadataOfSampleBuffer___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 24);
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    v2 = CFRetain(v2);
  }

  *(*(*(a1 + 56) + 8) + 24) = v2;
  *(*(*(a1 + 64) + 8) + 24) = *(*(a1 + 32) + 40);
  *(*(*(a1 + 72) + 8) + 24) = *(*(a1 + 32) + 44);
  v3 = *(a1 + 32);
  if (*(v3 + 152) == 1)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1048576000;
    v3 = *(a1 + 32);
  }

  *(*(*(a1 + 80) + 8) + 24) = *(v3 + 52) > 2;

  result = *(a1 + 40);
  *(*(a1 + 32) + 72) = result;
  return result;
}

uint64_t __61__BWStreamingCVAFilterRenderer_adjustMetadataOfSampleBuffer___block_invoke_2(void *a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*off_1E798AC78];
  v5 = v4;
  if (!v4)
  {
    v5 = [a2 objectForKeyedSubscript:*off_1E798B2B8];
    if (!v5)
    {
      return 1;
    }
  }

  v6 = [*(a1[4] + 200) objectForKeyedSubscript:v5];
  v7 = v6;
  if (*(*(a1[5] + 8) + 24))
  {
    _S0 = *(*(a1[6] + 8) + 24) - *(*(a1[7] + 8) + 24);
    __asm { FCVT            H8, S0 }

    if (v6)
    {
      v14 = [v6 BOOLValue];
      v15 = 0.049988;
      if (v14)
      {
        v15 = -0.049988;
      }

      __asm { FCVT            S1, H8 }

      _S0 = v15 + _S1;
      __asm { FCVT            H8, S0 }
    }

    LOWORD(v30) = 0;
    v20 = *MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 16);
    v28 = *MEMORY[0x1E695F058];
    *v29 = v21;
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      if (v4)
      {
LABEL_29:
        v18 = 1;
        goto LABEL_32;
      }

      LOWORD(v27) = 0;
      v25 = v20;
      *v26 = v21;
LABEL_20:
      if (!FigCFDictionaryGetCGRectIfPresent())
      {
        LOWORD(v24) = 0;
        v22 = v20;
        *v23 = v21;
        goto LABEL_26;
      }

      if (scfr_averageForegroundDisparityForRect(*(*(a1[8] + 8) + 24), &v27, *(*(a1[9] + 8) + 24), *(*(a1[10] + 8) + 24), *&v25, *(&v25 + 1), v26[0], v26[1]))
      {
        LOWORD(v24) = 0;
        v22 = v20;
        *v23 = v21;
        if (v27 <= _H8)
        {
          goto LABEL_30;
        }

        goto LABEL_26;
      }

      LOWORD(v24) = 0;
      v22 = v20;
      *v23 = v21;
      if ([v7 BOOLValue])
      {
LABEL_26:
        if (FigCFDictionaryGetCGRectIfPresent())
        {
          if (scfr_averageForegroundDisparityForRect(*(*(a1[8] + 8) + 24), &v24, *(*(a1[9] + 8) + 24), *(*(a1[10] + 8) + 24), *&v22, *(&v22 + 1), v23[0], v23[1]))
          {
            v18 = v24 > _H8;
          }

          else
          {
            v18 = [v7 BOOLValue];
          }

          goto LABEL_32;
        }

        goto LABEL_29;
      }

LABEL_30:
      v18 = 0;
      goto LABEL_32;
    }

    if (scfr_averageForegroundDisparityForRect(*(*(a1[8] + 8) + 24), &v30, *(*(a1[9] + 8) + 24), *(*(a1[10] + 8) + 24), *&v28, *(&v28 + 1), v29[0], v29[1]))
    {
      v18 = v30 > _H8;
      if (!v4)
      {
LABEL_19:
        LOWORD(v27) = 0;
        v25 = v20;
        *v26 = v21;
        if ((v18 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v18 = [v7 BOOLValue];
      if (!v4)
      {
        goto LABEL_19;
      }
    }

LABEL_32:
    os_unfair_lock_lock((a1[4] + 208));
    [*(a1[4] + 200) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v18), v5}];
    os_unfair_lock_unlock((a1[4] + 208));
    return v18;
  }

  return [v6 BOOLValue];
}

id __108__BWStreamingCVAFilterRenderer_disparityPostprocessingRequest_didCompleteDisparityPostprocessingWithResult___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 32) = 0;
  }

  v3 = [*(a1 + 40) postprocessedDisparityPixelBuffer];
  if (v3)
  {
    v3 = CFRetain(v3);
  }

  *(*(a1 + 32) + 32) = v3;
  [*(a1 + 40) focusDisparity];
  *(*(a1 + 32) + 40) = v4;
  [*(a1 + 40) deltaCanonicalDisparity];
  *(*(a1 + 32) + 44) = v5;
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 64);
  result = *(*(a1 + 32) + 72);
  *(*(*(a1 + 56) + 8) + 40) = result;
  return result;
}

uint64_t __96__BWStreamingCVAFilterRenderer_portraitRequest_didCompletePortraitWithResult_completionHandler___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) portraitStability];
  *(*(a1 + 32) + 48) = v3;
  return result;
}

- (void)portraitRequest:(void *)a3 didCompletePortraitWithResult:(uint64_t)a4 completionHandler:
{
  if (a1)
  {
    v7 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_5_14();
      if (*v7 == 1)
      {
        OUTLINED_FUNCTION_5_14();
      }
    }

    if ([a3 portraitPixelBuffer])
    {
      v8 = 0;
      v9 = 2;
    }

    else
    {
      v10 = *MEMORY[0x1E696A768];
      v13 = *MEMORY[0x1E696A578];
      v14 = @"Portrait rendering request provided no result";
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:v10 code:-12780 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v14, &v13, 1)}];
      v9 = 0;
    }

    v11 = *(a1 + 8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __96__BWStreamingCVAFilterRenderer_portraitRequest_didCompletePortraitWithResult_completionHandler___block_invoke;
    v12[3] = &unk_1E798F898;
    v12[4] = a1;
    v12[5] = a3;
    dispatch_sync(v11, v12);
    if (a4)
    {
      (*(a4 + 16))(a4, v9, v8);
    }
  }
}

- (BOOL)prepareForRenderingWithParameters:(id *)a1 inputVideoFormat:(_DWORD *)a2 inputMediaPropertiesByAttachedMediaKey:.cold.2(id *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  v4 = [*a1 code];
  *a2 = v4;
  return v4 == 0;
}

@end