@interface BWStreamingRaytracingSDOFRenderer
- (BWStreamingRaytracingSDOFRenderer)initWithCaptureDevice:(id)device commandQueue:(id)queue smartStyleRenderingEnabled:(BOOL)enabled squareAspectRatioConfigEnabled:(BOOL)configEnabled;
- (CMTime)_getSampleBufferPresentationTimeStamp:(uint64_t)stamp@<X8>;
- (id)disparityTextureFromCacheUsingPixelBuffer:(uint64_t)buffer;
- (int)prepareForRenderingWithParameters:(id)parameters inputVideoFormat:(id)format inputMediaPropertiesByAttachedMediaKey:(id)key;
- (uint64_t)_loadAndConfigureSmartStyleBundle:(uint64_t)bundle;
- (uint64_t)_runSmartStyleIntegrate:(uint64_t)integrate;
- (uint64_t)disparityTextureDescriptorsWithDepthVideoFormat:(uint64_t)result;
- (void)dealloc;
- (void)renderUsingParameters:(id)parameters inputPixelBuffer:(__CVBuffer *)buffer inputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer originalPixelBuffer:(__CVBuffer *)pixelBuffer processedPixelBuffer:(__CVBuffer *)processedPixelBuffer completionHandler:(id)handler;
@end

@implementation BWStreamingRaytracingSDOFRenderer

- (BWStreamingRaytracingSDOFRenderer)initWithCaptureDevice:(id)device commandQueue:(id)queue smartStyleRenderingEnabled:(BOOL)enabled squareAspectRatioConfigEnabled:(BOOL)configEnabled
{
  configEnabledCopy = configEnabled;
  enabledCopy = enabled;
  v14.receiver = self;
  v14.super_class = BWStreamingRaytracingSDOFRenderer;
  v10 = [(BWStreamingRaytracingSDOFRenderer *)&v14 init];
  if (v10)
  {
    v11 = [[BWVideoDepthInferenceConfiguration alloc] initWithConcurrencyWidth:1 videoDepthLayout:0 captureDevice:device backpressureEvent:0];
    [(BWVideoDepthInferenceConfiguration *)v11 networkBias];
    v10->_networkBias = v12;
    v10->_captureDevice = device;
    v10->_commandQueue = queue;
    v10->_portTypeProvidingTuningParameters = [(BWVideoDepthInferenceConfiguration *)v11 portType];
    v10->_smartStyleRenderingEnabled = enabledCopy;
    if (enabledCopy)
    {
      [(BWStreamingRaytracingSDOFRenderer *)v10 _loadAndConfigureSmartStyleBundle:configEnabledCopy];
    }
  }

  return v10;
}

- (void)dealloc
{
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
  }

  v4.receiver = self;
  v4.super_class = BWStreamingRaytracingSDOFRenderer;
  [(BWStreamingRaytracingSDOFRenderer *)&v4 dealloc];
}

- (void)renderUsingParameters:(id)parameters inputPixelBuffer:(__CVBuffer *)buffer inputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer originalPixelBuffer:(__CVBuffer *)pixelBuffer processedPixelBuffer:(__CVBuffer *)processedPixelBuffer completionHandler:(id)handler
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v13 = CMGetAttachment(sampleBuffer, *off_1E798A3C8, 0);
  if ((renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_completionHandler__ptRenderStateIsConfigured & 1) == 0)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
    if (FigCapturePixelFormatIsTenBit(PixelFormatType))
    {
      v15 = 10;
    }

    else
    {
      v15 = 8;
    }

    [(PTRenderState *)self->_ptRenderState setSourceColorBitDepth:v15];
    PTTuningParametersClass = getPTTuningParametersClass();
    -[PTRenderState setHwModelID:](self->_ptRenderState, "setHwModelID:", [PTTuningParametersClass hwModelIDFromFigModelSpecificName:FigCaptureGetModelSpecificName()]);
    [getPTTuningParametersClass() noiseScaleFactorForHwModelID:-[PTRenderState hwModelID](self->_ptRenderState sensorID:{"hwModelID"), objc_msgSend(objc_msgSend(v13, "objectForKeyedSubscript:", *off_1E798B660), "intValue")}];
    [(PTRenderState *)self->_ptRenderState setNoiseScaleFactor:?];
    renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_completionHandler__ptRenderStateIsConfigured = 1;
  }

  AttachedMedia = BWSampleBufferGetAttachedMedia(sampleBuffer, @"Depth");
  v18 = CMGetAttachment(sampleBuffer, @"CinematicVideoCinematographyMetadata", 0);
  v19 = v18;
  if (v18)
  {
    _ZF = AttachedMedia == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (!_ZF)
  {
LABEL_34:
    ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
    disparityTextureWhileWaitingForCamera = [(BWStreamingRaytracingSDOFRenderer *)self disparityTextureFromCacheUsingPixelBuffer:?];

    self->_disparityTextureWhileWaitingForCamera = 0;
    goto LABEL_14;
  }

  disparityTextureWhileWaitingForCamera = self->_disparityTextureWhileWaitingForCamera;
  if (!disparityTextureWhileWaitingForCamera)
  {
    if (!AttachedMedia)
    {
      [BWStreamingRaytracingSDOFRenderer renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:];
      goto LABEL_36;
    }

    if (!v18)
    {
      [BWStreamingRaytracingSDOFRenderer renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:];
      goto LABEL_36;
    }

    goto LABEL_34;
  }

LABEL_14:
  v22 = *(MEMORY[0x1E695F050] + 16);
  v57 = *MEMORY[0x1E695F050];
  v58 = v22;
  FigCFDictionaryGetCGRectIfPresent();
  v54 = 0.0;
  v55 = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  v51 = _Q0;
  v56 = _Q0;
  FigCFDictionaryGetCGRectIfPresent();
  -[PTRenderRequest setSourceColor:](self->_ptRenderRequest, "setSourceColor:", [getPTTextureClass() createFromPixelbuffer:buffer device:-[FigMetalContext device](self->_metalContext textureCache:"device") read:self->_textureCache write:{1, 0}]);
  [(PTRenderRequest *)self->_ptRenderRequest setSourceDisparity:disparityTextureWhileWaitingForCamera];
  -[PTRenderRequest setDestinationColor:](self->_ptRenderRequest, "setDestinationColor:", [getPTTextureClass() createFromPixelbuffer:processedPixelBuffer device:-[FigMetalContext device](self->_metalContext textureCache:"device") read:self->_textureCache write:{1, 1}]);
  [(PTRenderRequest *)self->_ptRenderRequest setRenderState:self->_ptRenderState];
  [(PTRenderRequest *)self->_ptRenderRequest setTotalSensorCropRectSize:v58];
  *&v27 = [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B2D8), "intValue"}];
  [(PTRenderRequest *)self->_ptRenderRequest setFocalLenIn35mmFilm:v27];
  -[PTRenderRequest setSensorID:](self->_ptRenderRequest, "setSensorID:", [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B660), "intValue"}]);
  -[PTRenderRequest setConversionGain:](self->_ptRenderRequest, "setConversionGain:", [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B1F8), "intValue"}]);
  -[PTRenderRequest setReadNoise_1x:](self->_ptRenderRequest, "setReadNoise_1x:", [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B5B0), "intValue"}]);
  -[PTRenderRequest setReadNoise_8x:](self->_ptRenderRequest, "setReadNoise_8x:", [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B5B8), "intValue"}]);
  -[PTRenderRequest setAGC:](self->_ptRenderRequest, "setAGC:", [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B0B8), "intValue"}]);
  [(PTRenderRequest *)self->_ptRenderRequest setFrameId:arc4random()];
  v28 = 0.0;
  if (!self->_disparityTextureWhileWaitingForCamera)
  {
    [objc_msgSend(v19 objectForKeyedSubscript:{0x1F21A9910, 0.0), "floatValue"}];
  }

  [(PTRenderRequest *)self->_ptRenderRequest setAlphaLowLight:v28];
  LODWORD(v29) = 0.5;
  if (!self->_disparityTextureWhileWaitingForCamera)
  {
    [objc_msgSend(v19 objectForKeyedSubscript:{0x1F21A9930, v29), "floatValue"}];
  }

  [(PTRenderRequest *)self->_ptRenderRequest setFocusDisparity:v29];
  LODWORD(v30) = 4.5;
  if (!self->_disparityTextureWhileWaitingForCamera)
  {
    [objc_msgSend(v19 objectForKeyedSubscript:{0x1F21A98F0, v30), "floatValue"}];
  }

  [(PTRenderRequest *)self->_ptRenderRequest setFNumber:v30];
  *&v31 = self->_networkBias;
  [(PTRenderRequest *)self->_ptRenderRequest setNetworkBias:v31];
  __asm { FMOV            V0.2S, #1.0 }

  [(PTRenderRequest *)self->_ptRenderRequest setVisCropFactor:_D0];
  [(PTRenderRequest *)self->_ptRenderRequest setVisCropFactorPreview:COERCE_DOUBLE(vcvt_f32_f64(vdivq_f64(v51, v56)))];
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  alignment = self->_alignment;
  v36 = v54 * Width;
  v37 = FigCaptureFloorFloatToMultipleOf(alignment.width, v36);
  v38 = Height;
  v39 = v55 * Height;
  v40 = FigCaptureFloorFloatToMultipleOf(alignment.height, v39);
  v41 = v56.f64[0] * Width;
  v42 = FigCaptureCeilFloatToMultipleOf(alignment.width, v41);
  v43 = v56.f64[1] * v38;
  v44 = FigCaptureCeilFloatToMultipleOf(alignment.height, v43);
  v45 = alignment.width;
  if ((v54 + v56.f64[0]) * Width <= (v42 + v37))
  {
    v45 = 0;
  }

  v46 = v45 + v42;
  if ((v55 + v56.f64[1]) * v38 <= (v44 + v40))
  {
    v47 = 0;
  }

  else
  {
    v47 = *&alignment >> 32;
  }

  ptRenderRequest = self->_ptRenderRequest;
  v53[0] = v37;
  v53[1] = v40;
  v53[2] = v46;
  v53[3] = v47 + v44;
  [(PTRenderRequest *)ptRenderRequest setScissorRect:v53];
  if (self->_smartStyleRenderingEnabled && (BWSmartStyleRenderingShouldBeBypassed(sampleBuffer) & 1) == 0)
  {
    [(PTRenderRequest *)self->_ptRenderRequest setIntegratedStyleCoefficientsTextureArray:[(BWStreamingRaytracingSDOFRenderer *)self _runSmartStyleIntegrate:sampleBuffer]];
  }

  if (!self->_disparityTextureWhileWaitingForCamera)
  {
  }

  v49 = [-[FigMetalContext commandQueue](self->_metalContext "commandQueue")];
  if (![(PTRenderPipeline *)self->_ptRenderPipeline encodeRenderTo:v49 withRenderRequest:self->_ptRenderRequest])
  {
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __153__BWStreamingRaytracingSDOFRenderer_renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_completionHandler___block_invoke;
    v52[3] = &unk_1E7998320;
    v52[4] = handler;
    [v49 addCompletedHandler:v52];
    [v49 commit];
    return;
  }

  [BWStreamingRaytracingSDOFRenderer renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:];
LABEL_36:
  (*(handler + 2))(handler, 0, 0);
}

uint64_t __153__BWStreamingRaytracingSDOFRenderer_renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 error])
  {
    [objc_msgSend(a2 "error")];
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (CMTime)_getSampleBufferPresentationTimeStamp:(uint64_t)stamp@<X8>
{
  if (result)
  {
    v5 = MEMORY[0x1E6960C70];
    *stamp = *MEMORY[0x1E6960C70];
    *(stamp + 16) = *(v5 + 16);
    if (target)
    {
      v6 = CMGetAttachment(target, *off_1E798A3C8, 0);
      if (v6 && (v7 = v6, v8 = *off_1E798A420, [v6 objectForKeyedSubscript:*off_1E798A420]))
      {
        v9 = [v7 objectForKeyedSubscript:v8];

        return CMTimeMakeFromDictionary(stamp, v9);
      }

      else
      {

        return CMSampleBufferGetPresentationTimeStamp(stamp, target);
      }
    }

    else
    {
      return [BWStreamingRaytracingSDOFRenderer _getSampleBufferPresentationTimeStamp:];
    }
  }

  else
  {
    *stamp = 0;
    *(stamp + 8) = 0;
    *(stamp + 16) = 0;
  }

  return result;
}

- (uint64_t)_loadAndConfigureSmartStyleBundle:(uint64_t)bundle
{
  if (!bundle)
  {
    return 0;
  }

  v4 = BWLoadProcessorBundle(@"SmartStyle", 1);
  if (!v4 || (v5 = [v4 classNamed:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CMISmartStyleProcessorInputOutputV%d", 1)}], (*(bundle + 120) = v5) == 0) || (v6 = objc_msgSend(v4, "classNamed:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CMISmartStyleProcessorV%d", 1)), (*(bundle + 128) = v6) == 0) || (v7 = objc_msgSend([v6 alloc], "initWithOptionalMetalCommandQueue:", *(bundle + 96)), (*(bundle + 112) = v7) == 0) || ((objc_msgSend(v7, "setInstanceLabel:", @"StreamingSDOF"), v8 = objc_msgSend(*(bundle + 128), "getSmartStyleCoefficientsFilterType:", @"iir"), *(bundle + 136) = v8, v9 = *(bundle + 128), !a2) ? (v10 = objc_msgSend(v9, "getDefaultProcessorConfigurationForStreamingWithFilterType:", v8)) : (v10 = objc_msgSend(v9, "getDefaultProcessorConfigurationForStreamingSquareAspectRatioWithFilterType:", v8)), objc_msgSend(*(bundle + 112), "setConfiguration:", v10), !objc_msgSend(*(bundle + 112), "configuration")))
  {
    v12 = 4294954510;
LABEL_17:

    *(bundle + 112) = 0;
    return v12;
  }

  *(bundle + 152) = [*(bundle + 128) getRequiredFilteredCoefficientsPixelBufferPoolSizeForFilterType:*(bundle + 136)];
  setup = [*(bundle + 112) setup];
  if (setup)
  {
    v12 = setup;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_65();
LABEL_16:
    FigDebugAssert3();
    goto LABEL_17;
  }

  v12 = [*(bundle + 112) prepareToProcess:2];
  if (v12)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_65();
    goto LABEL_16;
  }

  return v12;
}

- (int)prepareForRenderingWithParameters:(id)parameters inputVideoFormat:(id)format inputMediaPropertiesByAttachedMediaKey:(id)key
{
  if (self->_metalContext)
  {
    v17 = 0;
    goto LABEL_23;
  }

  v8 = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:objc_msgSend(MEMORY[0x1E696AAE8] andOptionalCommandQueue:{"bundleForClass:", objc_opt_class()), self->_commandQueue}];
  self->_metalContext = v8;
  [(FigMetalContext *)v8 setQueuePriority:2];
  v9 = *MEMORY[0x1E695E480];
  v24 = *MEMORY[0x1E6966000];
  v25 = &unk_1F2244758;
  if (CVMetalTextureCacheCreate(v9, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1], -[FigMetalContext device](self->_metalContext, "device"), 0, &self->_textureCache) || !self->_textureCache)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3();
    v17 = 0;
    v22 = -12786;
    goto LABEL_24;
  }

  v10 = [objc_alloc(getPTRenderRequestClass()) init];
  self->_ptRenderRequest = v10;
  if (!v10 || (v11 = [key objectForKeyedSubscript:@"Depth"]) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3();
    v17 = 0;
LABEL_28:
    v22 = -12780;
    goto LABEL_24;
  }

  resolvedVideoFormat = [v11 resolvedVideoFormat];
  v13 = [(BWStreamingRaytracingSDOFRenderer *)self disparityTextureDescriptorsWithDepthVideoFormat:resolvedVideoFormat];
  if (v13)
  {
    v22 = v13;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3();
    v17 = 0;
    goto LABEL_24;
  }

  self->_disparityTextureWhileWaitingForCamera = [-[FigMetalContext device](self->_metalContext "device")];
  v14 = [-[NSDictionary objectForKeyedSubscript:](-[BWFigVideoCaptureDevice sensorIDDictionaryByPortType](self->_captureDevice "sensorIDDictionaryByPortType")];
  if (v14)
  {
    intValue = [v14 intValue];
  }

  else
  {
    intValue = [getPTRenderPipelineClass() latestVersion];
  }

  v16 = [objc_alloc(getPTRenderPipelineDescriptorClass()) initWithDevice:-[FigMetalContext device](self->_metalContext version:"device") colorSize:intValue disparitySize:{objc_msgSend(format, "width"), objc_msgSend(format, "height"), objc_msgSend(resolvedVideoFormat, "width"), objc_msgSend(resolvedVideoFormat, "height")}];
  v17 = v16;
  if (!v16 || ([v16 setDebugRendering:0], v18 = objc_msgSend(objc_alloc(getPTRenderPipelineClass()), "initWithDescriptor:", v17), (self->_ptRenderPipeline = v18) == 0) || (v19 = -[PTRenderPipeline createRenderStateWithQuality:](v18, "createRenderStateWithQuality:", 0), (self->_ptRenderState = v19) == 0))
  {
LABEL_27:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3();
    goto LABEL_28;
  }

  self->_alignment = 0x200000002;
  if (FigCapturePixelFormatGetCompressionType([format pixelFormat]))
  {
    self->_alignment = FigCapturePixelFormatTileAlignment([format pixelFormat]);
  }

  if (!self->_smartStyleRenderingEnabled || !self->_smartStyleCoefficientsFilterType)
  {
LABEL_23:
    v22 = 0;
    goto LABEL_24;
  }

  v20 = [key objectForKeyedSubscript:0x1F21AB070];
  if (!v20)
  {
    goto LABEL_27;
  }

  v21 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", [v20 resolvedVideoFormat], self->_smartStyleFilteredCoefficientsPixelBufferPoolSize, @"Cinematic preview", +[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"));
  self->_smartStyleCoefficientsPixelBufferPool = v21;
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = -12786;
  }

LABEL_24:

  return v22;
}

- (uint64_t)disparityTextureDescriptorsWithDepthVideoFormat:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if ([a2 pixelFormat] == 1751411059)
    {

      v4 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:objc_msgSend(a2 height:"width") mipmapped:objc_msgSend(a2, "height"), 0];
      *(v3 + 48) = v4;
      [v4 setUsage:1];
      v5 = *(v3 + 48);
      return 0;
    }

    else
    {
      return 4294954516;
    }
  }

  return result;
}

- (id)disparityTextureFromCacheUsingPixelBuffer:(uint64_t)buffer
{
  if (!buffer)
  {
    return 0;
  }

  image = 0;
  v3 = *(buffer + 40);
  if (!v3 || (v4 = *(buffer + 48)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
LABEL_15:
    FigDebugAssert3();
    v8 = 0;
    goto LABEL_8;
  }

  v6 = *MEMORY[0x1E695E480];
  v11[0] = *MEMORY[0x1E6966010];
  v12[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "usage")}];
  v11[1] = *MEMORY[0x1E6966008];
  v12[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(buffer + 48), "storageMode")}];
  if (CVMetalTextureCacheCreateTextureFromImage(v6, v3, a2, [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2], objc_msgSend(*(buffer + 48), "pixelFormat"), objc_msgSend(*(buffer + 48), "width"), objc_msgSend(*(buffer + 48), "height"), 0, &image))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    goto LABEL_15;
  }

  if (!image)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    goto LABEL_15;
  }

  Texture = CVMetalTextureGetTexture(image);
  v8 = Texture;
  if (Texture)
  {
    v9 = Texture;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3();
  }

LABEL_8:
  if (image)
  {
    CFRelease(image);
  }

  return v8;
}

- (uint64_t)_runSmartStyleIntegrate:(uint64_t)integrate
{
  if (!integrate)
  {
    return 0;
  }

  if (!sbuf)
  {
    goto LABEL_20;
  }

  if (!CMSampleBufferGetImageBuffer(sbuf))
  {
    goto LABEL_20;
  }

  v4 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  AttachedMedia = BWSampleBufferGetAttachedMedia(sbuf, 0x1F21AB0D0);
  if (!AttachedMedia)
  {
    goto LABEL_27;
  }

  v7 = BWSampleBufferGetAttachedMedia(sbuf, 0x1F21AB070);
  if (!v7)
  {
LABEL_21:
    AttachedMedia = 0;
    goto LABEL_27;
  }

  v8 = v7;
  ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
  if (!ImageBuffer || (v10 = ImageBuffer, (v11 = CMSampleBufferGetImageBuffer(v8)) == 0))
  {
LABEL_20:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3();
    goto LABEL_21;
  }

  v12 = v11;
  v13 = objc_opt_new();
  AttachedMedia = v13;
  if (!v13)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
LABEL_26:
    FigDebugAssert3();
    goto LABEL_27;
  }

  [(opaqueCMSampleBuffer *)v13 setInputUnstyledThumbnailPixelBuffer:v10];
  [(opaqueCMSampleBuffer *)AttachedMedia setInputMetadataDict:v5];
  if (!*(integrate + 136))
  {
    [(opaqueCMSampleBuffer *)AttachedMedia setInputStyleCoefficientsPixelBuffer:v12];
    goto LABEL_16;
  }

  v44 = 0uLL;
  v45 = 0;
  [(BWStreamingRaytracingSDOFRenderer *)sbuf _getSampleBufferPresentationTimeStamp:integrate, &v44];
  if ((BYTE12(v44) & 1) == 0)
  {
LABEL_27:
    outputIntegratedStyleCoefficientsTexture = 0;
    goto LABEL_18;
  }

  utilities = [*(integrate + 112) utilities];
  *&v22 = OUTLINED_FUNCTION_3_59(utilities, v15, v16, v17, v18, v19, v20, v21, v37, v39, v41, v42, v43, v44).n128_u64[0];
  if ([v23 enqueueCoefficientsForFiltering:v12 withMetadata:v5 pts:{&v41, v22}])
  {
    goto LABEL_23;
  }

  newPixelBuffer = [*(integrate + 144) newPixelBuffer];
  if (!newPixelBuffer)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    goto LABEL_26;
  }

  v25 = newPixelBuffer;
  utilities2 = [*(integrate + 112) utilities];
  *&v33 = OUTLINED_FUNCTION_3_59(utilities2, v27, v28, v29, *(integrate + 136), v30, v31, v32, v38, v40, v41, v42, v43, v44).n128_u64[0];
  [v34 filterCoefficientsForFrameWithMetadata:v5 pts:&v41 filterType:v33 toPixelBuffer:?];
  [(opaqueCMSampleBuffer *)AttachedMedia setInputStyleCoefficientsPixelBuffer:v25];
  CFRelease(v25);
LABEL_16:
  [*(integrate + 112) setInputOutput:AttachedMedia];
  if ([*(integrate + 112) process])
  {
LABEL_23:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    goto LABEL_26;
  }

  outputIntegratedStyleCoefficientsTexture = [*(integrate + 112) outputIntegratedStyleCoefficientsTexture];
LABEL_18:

  return outputIntegratedStyleCoefficientsTexture;
}

- (uint64_t)renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_getSampleBufferPresentationTimeStamp:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end