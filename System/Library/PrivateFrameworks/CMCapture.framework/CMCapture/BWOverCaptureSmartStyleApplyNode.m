@interface BWOverCaptureSmartStyleApplyNode
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_getSampleBufferPresentationTimeStamp:(SEL)a3;
- (BOOL)hasNonLiveConfigurationChanges;
- (BWOverCaptureSmartStyleApplyNode)initWithMetalCommandQueue:(id)a3 squareAspectRatioConfigEnabled:(BOOL)a4;
- (double)_computeAffineTransform:(int)a3 mirror:(int)a4;
- (id)_updateSupportedPixelFormats;
- (int)_applySmartStyleOnSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (int)_applySmartStyleProxyRenderingWithMethod:(int)a3 onSampleBuffer:(opaqueCMSampleBuffer *)a4;
- (int)_getMirrorConfigForPixelBuffer:(__CVBuffer *)a3;
- (int)_getRotationConfigForPixelBuffer:(__CVBuffer *)a3;
- (int)_loadAndConfigureSmartStyleBundle:(BOOL)a3;
- (int)_loadAndConfigureSmartStyleProxyRenderer;
- (uint64_t)_calculateExtrapolationAndSpotlightZoom:(double)a3 inputCropRectWithinPrimaryCaptureRect:(double)a4 learningROIRect:(CGFloat)a5 adjustedPrimaryCaptureRect:(CGFloat)a6 adjustedSpotlightZoomRect:(CGFloat)a7;
- (uint64_t)_loadAndConfigureSmartStyleProxyRenderer;
- (uint64_t)prepareForCurrentConfigurationToBecomeLive;
- (void)_consumeSampleBufferAttachments:(opaqueCMSampleBuffer *)a3;
- (void)_updateCurrentStyle:(opaqueCMSampleBuffer *)a3;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)setMaxLossyCompressionLevel:(int)a3;
@end

@implementation BWOverCaptureSmartStyleApplyNode

- (BWOverCaptureSmartStyleApplyNode)initWithMetalCommandQueue:(id)a3 squareAspectRatioConfigEnabled:(BOOL)a4
{
  v4 = a4;
  v18.receiver = self;
  v18.super_class = BWOverCaptureSmartStyleApplyNode;
  v6 = [(BWNode *)&v18 init];
  v7 = v6;
  if (v6)
  {
    v8 = [(BWOverCaptureSmartStyleApplyNode *)v6 _updateSupportedPixelFormats];
    if (v8)
    {
      v9 = v8;
      v7->_renderingMethod = 1;
      v7->_maxLossyCompressionLevel = 0;
      v7->_metalCommandQueue = a3;
      v7->_firstFrame = 1;
      v10 = objc_alloc_init(BWVideoFormatRequirements);
      if (v10)
      {
        v11 = v10;
        [(BWVideoFormatRequirements *)v10 setSupportedPixelFormats:v9];
        v12 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v7];
        [(BWNodeInput *)v12 setFormatRequirements:v11];
        [(BWNodeInput *)v12 setPassthroughMode:1];
        v13 = objc_alloc_init(BWNodeInputMediaConfiguration);
        [(BWNodeInputMediaConfiguration *)v13 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
        [(BWNodeInputMediaConfiguration *)v13 setPassthroughMode:0];
        [(BWNodeInputMediaConfiguration *)v13 setRetainedBufferCount:6];
        [(BWNodeInput *)v12 setMediaConfiguration:v13 forAttachedMediaKey:0x1F21AB070];
        [(BWNode *)v7 addInput:v12];
        v14 = objc_alloc_init(BWVideoFormatRequirements);
        if (v14)
        {
          v15 = v14;
          [(BWVideoFormatRequirements *)v14 setSupportedPixelFormats:v9];
          v16 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v7];
          [(BWNodeOutput *)v16 setFormatRequirements:v15];
          [(BWNodeOutput *)v16 setPassthroughMode:1];
          [(BWNode *)v7 addOutput:v16];
          if (![(BWOverCaptureSmartStyleApplyNode *)v7 _loadAndConfigureSmartStyleBundle:v4])
          {
            v7->_applyDither = 1;
            [(BWNode *)v7 setSupportsLiveReconfiguration:1];
            return v7;
          }

          [BWOverCaptureSmartStyleApplyNode initWithMetalCommandQueue:squareAspectRatioConfigEnabled:];
        }

        else
        {
          [BWOverCaptureSmartStyleApplyNode initWithMetalCommandQueue:squareAspectRatioConfigEnabled:];
        }
      }

      else
      {
        [BWOverCaptureSmartStyleApplyNode initWithMetalCommandQueue:squareAspectRatioConfigEnabled:];
      }
    }

    else
    {
      [BWOverCaptureSmartStyleApplyNode initWithMetalCommandQueue:squareAspectRatioConfigEnabled:];
    }

    return 0;
  }

  return v7;
}

- (void)setMaxLossyCompressionLevel:(int)a3
{
  if (self->_maxLossyCompressionLevel != a3)
  {
    v5 = [(BWNodeInput *)self->super._input formatRequirements];
    v6 = [(BWNodeOutput *)self->super._output formatRequirements];
    self->_maxLossyCompressionLevel = a3;
    v7 = [(BWOverCaptureSmartStyleApplyNode *)self _updateSupportedPixelFormats];
    if (v7)
    {
      v8 = v7;
      [(BWFormatRequirements *)v5 setSupportedPixelFormats:v7];

      [(BWFormatRequirements *)v6 setSupportedPixelFormats:v8];
    }

    else
    {
      [BWOverCaptureSmartStyleApplyNode setMaxLossyCompressionLevel:];
    }
  }
}

- (void)dealloc
{
  [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];

  identityCoefficientsPixelBuffer = self->_identityCoefficientsPixelBuffer;
  if (identityCoefficientsPixelBuffer)
  {
    CFRelease(identityCoefficientsPixelBuffer);
  }

  mostRecentCoefficients = self->_mostRecentCoefficients;
  if (mostRecentCoefficients)
  {
    CFRelease(mostRecentCoefficients);
  }

  previewThumbnailBuffer = self->_previewThumbnailBuffer;
  if (previewThumbnailBuffer)
  {
    CFRelease(previewThumbnailBuffer);
  }

  v6.receiver = self;
  v6.super_class = BWOverCaptureSmartStyleApplyNode;
  [(BWNode *)&v6 dealloc];
}

- (BOOL)hasNonLiveConfigurationChanges
{
  v4.receiver = self;
  v4.super_class = BWOverCaptureSmartStyleApplyNode;
  v2 = [(BWNode *)&v4 hasNonLiveConfigurationChanges];
  if (v2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Live reconfiguring BWOverCaptureSmartStylsApplyNode with changing formats is not supported", 0}]);
  }

  return v2;
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  if (a3)
  {
    if (a4)
    {
      if ([a5 isEqualToString:@"PrimaryFormat"])
      {
        v9 = [(BWNodeOutput *)self->super._output formatRequirements];
        -[BWFormatRequirements setWidth:](v9, "setWidth:", [a3 width]);
        -[BWFormatRequirements setHeight:](v9, "setHeight:", [a3 height]);
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "pixelFormat")}];
        -[BWFormatRequirements setSupportedPixelFormats:](v9, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1]);
        v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a3, "colorSpaceProperties")}];
        -[BWFormatRequirements setSupportedColorSpaceProperties:](v9, "setSupportedColorSpaceProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1]);
        [(BWNodeOutput *)self->super._output setFormat:a3];
      }

      else if ([a5 isEqual:0x1F21AB070])
      {

        self->_filterCoefficientsVideoFormatToPrepare = a3;
      }

      else if (([BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1 1)] & 1) == 0)
      {
        v10.receiver = self;
        v10.super_class = BWOverCaptureSmartStyleApplyNode;
        [(BWNode *)&v10 didSelectFormat:a3 forInput:a4 forAttachedMediaKey:a5];
      }
    }

    else
    {
      [BWOverCaptureSmartStyleApplyNode didSelectFormat:forInput:forAttachedMediaKey:];
    }
  }

  else
  {
    [BWOverCaptureSmartStyleApplyNode didSelectFormat:forInput:forAttachedMediaKey:];
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v4.receiver = self;
  v4.super_class = BWOverCaptureSmartStyleApplyNode;
  [(BWNode *)&v4 prepareForCurrentConfigurationToBecomeLive];
  if (self->_filterCoefficientsVideoFormatToPrepare && (v3 = [BWPixelBufferPool alloc], self->_filteredCoefficientsPixelBufferPool = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:](v3, "initWithVideoFormat:capacity:name:memoryPool:", self->_filterCoefficientsVideoFormatToPrepare, self->_filteredCoefficientsPixelBufferPoolSize, [MEMORY[0x1E696AEC0] stringWithFormat:@"BWOverCaptureSmartStyleApplyNode filtered coefficients buffer pool"], -[BWNodeOutput memoryPool](self->super._output, "memoryPool")), self->_filterCoefficientsVideoFormatToPrepare, self->_filterCoefficientsVideoFormatToPrepare = 0, !self->_filteredCoefficientsPixelBufferPool))
  {
    [BWOverCaptureSmartStyleApplyNode prepareForCurrentConfigurationToBecomeLive];
  }

  else if ([(BWOverCaptureSmartStyleApplyNode *)self _loadAndConfigureSmartStyleProxyRenderer])
  {
    [BWOverCaptureSmartStyleApplyNode prepareForCurrentConfigurationToBecomeLive];
  }

  else if ([(CMISmartStyleProcessor *)self->_smartStyleProcessor setup])
  {
    [BWOverCaptureSmartStyleApplyNode prepareForCurrentConfigurationToBecomeLive];
  }

  else if ([(CMISmartStyleProcessor *)self->_smartStyleProcessor prepareToProcess:4])
  {
    [BWOverCaptureSmartStyleApplyNode prepareForCurrentConfigurationToBecomeLive];
  }

  else if ([-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")])
  {
    [BWOverCaptureSmartStyleApplyNode prepareForCurrentConfigurationToBecomeLive];
  }

  else
  {
    self->_currentGlobalLocalMixFactor = 1.0;
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  v4.receiver = self;
  v4.super_class = BWOverCaptureSmartStyleApplyNode;
  [(BWNode *)&v4 didReachEndOfDataForConfigurationID:a3 input:a4];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      [(BWOverCaptureSmartStyleApplyNode *)self _updateCurrentStyle:a3];
      renderingMethod = self->_renderingMethod;
      if (CMGetAttachment(a3, *off_1E798A3C8, 0))
      {
        if (renderingMethod == 1)
        {
          [(BWOverCaptureSmartStyleApplyNode *)self _canRenderWithStyleEngineApplyForInput:a3];
          if ([(BWOverCaptureSmartStyleApplyNode *)self _applySmartStyleOnSampleBuffer:a3])
          {
            [BWOverCaptureSmartStyleApplyNode renderSampleBuffer:forInput:];
          }
        }

        else if (renderingMethod && [(BWOverCaptureSmartStyleApplyNode *)self _applySmartStyleProxyRenderingWithMethod:renderingMethod onSampleBuffer:a3])
        {
          [BWOverCaptureSmartStyleApplyNode renderSampleBuffer:forInput:];
        }
      }

      else
      {
        [BWOverCaptureSmartStyleApplyNode renderSampleBuffer:forInput:];
      }
    }

    else
    {
      [BWOverCaptureSmartStyleApplyNode renderSampleBuffer:forInput:];
    }
  }

  else
  {
    [BWOverCaptureSmartStyleApplyNode renderSampleBuffer:forInput:];
  }

  [(BWOverCaptureSmartStyleApplyNode *)self _consumeSampleBufferAttachments:a3];
  [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
  self->_firstFrame = 0;
}

- (void)_updateCurrentStyle:(opaqueCMSampleBuffer *)a3
{
  v4 = [CMGetAttachment(a3 *off_1E798A3C8];
  if (v4)
  {
    v5 = [FigCaptureSmartStyle createFromDictionary:v4];
    if (v5)
    {
      v6 = v5;
      currentStyle = self->_currentStyle;
      if (!currentStyle)
      {
        currentStyle = objc_alloc_init(self->_smartStyleClass);
      }

      self->_currentStyle = currentStyle;
      -[CMISmartStyle setCastType:](self->_currentStyle, "setCastType:", [v6 cast]);
      [v6 intensity];
      [(CMISmartStyle *)self->_currentStyle setCastIntensity:?];
      [v6 toneBias];
      [(CMISmartStyle *)self->_currentStyle setToneBias:?];
      [v6 colorBias];
      v8 = self->_currentStyle;

      [(CMISmartStyle *)v8 setColorBias:?];
    }
  }

  else
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v11 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v11, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWOverCaptureSmartStyleApplyNode.m", 416, @"LastShownDate:BWOverCaptureSmartStyleApplyNode.m:416", @"LastShownBuild:BWOverCaptureSmartStyleApplyNode.m:416", 0);
    free(v11);
  }
}

- (int)_loadAndConfigureSmartStyleBundle:(BOOL)a3
{
  v3 = a3;
  v5 = BWLoadProcessorBundle(@"SmartStyle", 1);
  if (v5 && (v6 = [v5 classNamed:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CMISmartStyleProcessorV%d", 1)}], v7 = objc_msgSend([v6 alloc], "initWithOptionalMetalCommandQueue:", self->_metalCommandQueue), (self->_smartStyleProcessor = v7) != 0) && ((-[CMISmartStyleProcessor setInstanceLabel:](v7, "setInstanceLabel:", @"OverCaptureApplyNode"), -[CMISmartStyleProcessor setUseLiveMetalAllocations:](self->_smartStyleProcessor, "setUseLiveMetalAllocations:", 1), v8 = -[objc_class getSmartStyleCoefficientsFilterType:](v6, "getSmartStyleCoefficientsFilterType:", @"iir"), self->_filterType = v8, !v3) ? (v9 = -[objc_class getDefaultProcessorConfigurationForStreamingWithFilterType:](v6, "getDefaultProcessorConfigurationForStreamingWithFilterType:", v8)) : (v9 = -[objc_class getDefaultProcessorConfigurationForStreamingSquareAspectRatioWithFilterType:](v6, "getDefaultProcessorConfigurationForStreamingSquareAspectRatioWithFilterType:", v8)), (v10 = v9, objc_msgSend(v9, "setTemporalFilterInputBufferSize:", 5), -[CMISmartStyleProcessor setConfiguration:](self->_smartStyleProcessor, "setConfiguration:", v10), -[CMISmartStyleProcessor configuration](self->_smartStyleProcessor, "configuration")) && (objc_msgSend(objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor, "configuration"), "styleEngineConfiguration"), "setThumbnailSize:", 128.0, 282.0), objc_msgSend(objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor, "configuration"), "styleEngineConfiguration"), "globalLinearSystemMixFactor"), self->_globalLocalSystemMixFactorDecayRate = (1.0 - v11) / 10.0, self->_filteredCoefficientsPixelBufferPoolSize = 6, v12 = objc_msgSend(v5, "classNamed:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CMISmartStyleProcessorInputOutputV%d", 1)), (self->_smartStyleProcessorInputOutputClass = v12) != 0)))
  {
    result = 0;
    self->_useOptimizedThumbnailGeneration = 0;
  }

  else
  {
    [(BWOverCaptureSmartStyleApplyNode *)v5 _loadAndConfigureSmartStyleBundle:?];
    return -12786;
  }

  return result;
}

- (int)_loadAndConfigureSmartStyleProxyRenderer
{
  v3 = NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISmartStyleV%d", 1]);
  self->_smartStyleClass = v3;
  if (!v3 || (v4 = NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISmartStyleProxyRendererV%d", 1])) == 0 || (v5 = objc_msgSend([v4 alloc], "initWithOptionalMetalCommandQueue:", self->_metalCommandQueue), (self->_smartStyleProxyRenderer = v5) == 0))
  {
    v13 = -12786;
LABEL_22:

    self->_smartStyleProxyRenderer = 0;
    return v13;
  }

  [(CMISmartStyleProxyRenderer *)v5 setMaxInputStylesCount:1];
  [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer setForegroundRatio:0.0];
  smartStyleProxyRenderer = self->_smartStyleProxyRenderer;
  v7 = [(CMISmartStyleProxyRenderer *)smartStyleProxyRenderer externalMemoryDescriptorForConfiguration:0];
  if (!v7)
  {
    v8 = 0;
    goto LABEL_16;
  }

  v8 = [objc_alloc(MEMORY[0x1E6991758]) initWithDevice:objc_msgSend(-[CMISmartStyleProxyRenderer metalCommandQueue](smartStyleProxyRenderer allocatorType:{"metalCommandQueue"), "device"), objc_msgSend(v7, "allocatorType")}];
  if (!v8)
  {
LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  v9 = objc_opt_new();
  if (!v9)
  {
LABEL_17:
    v12 = 0;
LABEL_18:
    v13 = -12786;
    goto LABEL_10;
  }

  [v9 setMemSize:{objc_msgSend(v7, "memSize")}];
  [v9 setWireMemory:1];
  [v9 setLabel:@"BWOverCaptureSmartStyleApplyNode-SmartStyleProxyRenderer-FigMetalAllocatorBackend"];
  [v9 setMemoryPoolId:{-[BWMemoryPool poolIdentifier](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "poolIdentifier")}];
  v10 = [v8 setupWithDescriptor:v9];
  if (!v10)
  {
    v11 = objc_opt_new();
    v12 = v11;
    if (v11)
    {
      [v11 setAllocatorBackend:v8];
      [(CMISmartStyleProxyRenderer *)smartStyleProxyRenderer setExternalMemoryResource:v12];
      v13 = 0;
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  v13 = v10;
  v12 = 0;
LABEL_10:

  if (v13)
  {
    [BWOverCaptureSmartStyleApplyNode _loadAndConfigureSmartStyleProxyRenderer];
    goto LABEL_22;
  }

  v14 = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer setup];
  if (v14)
  {
    v13 = v14;
    [BWOverCaptureSmartStyleApplyNode _loadAndConfigureSmartStyleProxyRenderer];
    goto LABEL_22;
  }

  v13 = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer prewarm];
  if (v13)
  {
    [BWOverCaptureSmartStyleApplyNode _loadAndConfigureSmartStyleProxyRenderer];
    goto LABEL_22;
  }

  return v13;
}

- (id)_updateSupportedPixelFormats
{
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F22487C0];
  [v3 addObjectsFromArray:{FigCaptureSupportedPixelFormatsForCompressionType(4, 1, 0, 0)}];
  maxLossyCompressionLevel = self->_maxLossyCompressionLevel;
  if (maxLossyCompressionLevel)
  {
    [v3 addObjectsFromArray:{FigCaptureSupportedPixelFormatsForCompressionType(4, 1, 0, maxLossyCompressionLevel)}];
  }

  return v3;
}

- (void)_consumeSampleBufferAttachments:(opaqueCMSampleBuffer *)a3
{
  BWSampleBufferRemoveAttachedMedia(a3, 0x1F21AB0D0);
  BWSampleBufferRemoveAttachedMedia(a3, 0x1F21AB110);
  BWSampleBufferRemoveAttachedMedia(a3, 0x1F21AB070);
  BWSampleBufferRemoveAttachedMedia(a3, 0x1F21AAED0);
  BWSampleBufferRemoveAttachedMedia(a3, 0x1F21AAEF0);
  BWSampleBufferRemoveAttachedMedia(a3, 0x1F21AAF30);
  BWSampleBufferRemoveAttachedMedia(a3, @"PreLTMThumbnail");
  BWSampleBufferRemoveAttachedMedia(a3, @"LTMThumbnail");
  CMRemoveAttachment(a3, *off_1E798A4C0);
  v4 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  [v4 setObject:0 forKeyedSubscript:*off_1E798A8F8];
  [v4 setObject:0 forKeyedSubscript:*off_1E798A920];
  [v4 setObject:0 forKeyedSubscript:*off_1E798A928];
  v5 = *off_1E798A8E8;

  [v4 setObject:0 forKeyedSubscript:v5];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_getSampleBufferPresentationTimeStamp:(SEL)a3
{
  *retstr = **&MEMORY[0x1E6960C70];
  if (!a4)
  {
    return [BWOverCaptureSmartStyleApplyNode _getSampleBufferPresentationTimeStamp:];
  }

  v6 = CMGetAttachment(a4, *off_1E798A3C8, 0);
  if (v6 && (v7 = v6, v8 = *off_1E798A420, [v6 objectForKeyedSubscript:*off_1E798A420]))
  {
    v9 = [v7 objectForKeyedSubscript:v8];

    return CMTimeMakeFromDictionary(retstr, v9);
  }

  else
  {

    return CMSampleBufferGetPresentationTimeStamp(retstr, a4);
  }
}

- (int)_getRotationConfigForPixelBuffer:(__CVBuffer *)a3
{
  v3 = CMGetAttachment(a3, @"RotationDegrees", 0);
  if (v3)
  {
    LODWORD(v3) = [v3 intValue];
    if (v3 > 179)
    {
      if (v3 == 180)
      {
        LODWORD(v3) = 2;
        return v3;
      }

      if (v3 == 270)
      {
        LODWORD(v3) = 6;
        return v3;
      }

      goto LABEL_9;
    }

    if (v3)
    {
      if (v3 == 90)
      {
        LODWORD(v3) = 4;
        return v3;
      }

LABEL_9:
      LODWORD(v3) = -1;
    }
  }

  return v3;
}

- (int)_getMirrorConfigForPixelBuffer:(__CVBuffer *)a3
{
  v4 = CMGetAttachment(a3, @"MirroredVertical", 0);
  v5 = CMGetAttachment(a3, @"MirroredHorizontal", 0);
  if (!(v4 | v5))
  {
    return 0;
  }

  v6 = v5;
  v7 = [v4 BOOLValue];
  v8 = [v6 BOOLValue];
  v9 = v8;
  v10 = (v7 & v8) != 0 ? 3 : 2;
  result = v7 ? v10 : 1;
  if ((v7 & 1) == 0 && (v9 & 1) == 0)
  {
    return 0;
  }

  return result;
}

- (double)_computeAffineTransform:(int)a3 mirror:(int)a4
{
  v4 = xmmword_1AD046FE0;
  v5 = xmmword_1AD046FF0;
  v6 = 0;
  if (a3 <= 3)
  {
    if (a3 == 2)
    {
      v6 = 0x3F8000003F800000;
      v8 = xmmword_1AD055220;
      v7 = xmmword_1AD055210;
      goto LABEL_11;
    }

    v7 = xmmword_1AD046FF0;
    v8 = xmmword_1AD046FE0;
    if (a3 != 3)
    {
      goto LABEL_11;
    }

LABEL_8:
    v6 = 1065353216;
    v8 = xmmword_1AD046FF0;
    v7 = xmmword_1AD055220;
    goto LABEL_11;
  }

  if (a3 == 4 || a3 == 5)
  {
    v6 = 0x3F80000000000000;
    v8 = xmmword_1AD055210;
    v7 = xmmword_1AD046FE0;
    goto LABEL_11;
  }

  v7 = xmmword_1AD046FF0;
  v8 = xmmword_1AD046FE0;
  if (a3 == 6)
  {
    goto LABEL_8;
  }

LABEL_11:
  __asm { FMOV            V5.4S, #1.0 }

  _Q5.i32[0] = v6;
  if (a4 == 1)
  {
    *&v14 = 1065353216;
    v4 = xmmword_1AD055220;
  }

  else if (a4 == 3)
  {
    *&v14 = 0x3F8000003F800000;
    v4 = xmmword_1AD055210;
    v5 = xmmword_1AD055220;
  }

  else
  {
    *&v14 = 0;
    if (a4 == 2)
    {
      *&v14 = 0x3F80000000000000;
      v5 = xmmword_1AD055210;
    }
  }

  v15 = 0;
  _Q5.i32[1] = HIDWORD(v6);
  HIDWORD(v4) = 0;
  HIDWORD(v5) = 0;
  *(&v14 + 1) = COERCE_UNSIGNED_INT(1.0);
  v17[0] = v4;
  v17[1] = v5;
  v17[2] = v14;
  memset(v18, 0, sizeof(v18));
  do
  {
    v18[v15] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(v17[v15])), v7, *&v17[v15], 1), _Q5, v17[v15], 2);
    ++v15;
  }

  while (v15 != 3);
  return *v18;
}

- (uint64_t)_calculateExtrapolationAndSpotlightZoom:(double)a3 inputCropRectWithinPrimaryCaptureRect:(double)a4 learningROIRect:(CGFloat)a5 adjustedPrimaryCaptureRect:(CGFloat)a6 adjustedSpotlightZoomRect:(CGFloat)a7
{
  *&v54[16] = a3;
  *&v54[24] = a4;
  *v54 = a1;
  *&v54[8] = a2;
  if (!a11)
  {
    [BWOverCaptureSmartStyleApplyNode _calculateExtrapolationAndSpotlightZoom:inputCropRectWithinPrimaryCaptureRect:learningROIRect:adjustedPrimaryCaptureRect:adjustedSpotlightZoomRect:];
    return 4294954516;
  }

  if (!a12)
  {
    [BWOverCaptureSmartStyleApplyNode _calculateExtrapolationAndSpotlightZoom:inputCropRectWithinPrimaryCaptureRect:learningROIRect:adjustedPrimaryCaptureRect:adjustedSpotlightZoomRect:];
    return 4294954516;
  }

  v55.origin.x = a13;
  v55.origin.y = a14;
  v55.size.width = a15;
  v55.size.height = a16;
  if (!CGRectIsEmpty(v55) && !CGRectIsEmpty(*v54))
  {
    v56.origin.x = a5;
    v56.origin.y = a6;
    v56.size.width = a7;
    v56.size.height = a8;
    if (!CGRectIsEmpty(v56))
    {
      v26 = FigCaptureMetadataUtilitiesRectNormalizedToRect(a13, a14, a15, a16, a5, a6, a7);
      v30 = FigCaptureMetadataUtilitiesRectDenormalizedToRect(v26, v27, v28, v29, *v54, *&v54[8], *&v54[16]);
      v52 = v31;
      v53 = v30;
      v50 = v33;
      v51 = v32;
      v34 = FigCaptureMetadataUtilitiesRectNormalizedToRect(a5, a6, a7, a8, a13, a14, a15);
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v41.f64[0] = v53;
      *v54 = FigCaptureMetadataUtilitiesClampRectToBoundingRect(v41, v52, v51, v50, *v54, *&v54[8], *&v54[16], *&v54[24]);
      *&v54[8] = v42;
      *&v54[16] = v43;
      *&v54[24] = v44;
      v45.f64[0] = v34;
      a5 = FigCaptureMetadataUtilitiesClampRectToBoundingRect(v45, v36, v38, v40, 0.0, 0.0, 1.0, 1.0);
      a6 = v46;
      a7 = v47;
      a8 = v48;
    }
  }

  result = 0;
  *a11 = *v54;
  a11[1] = *&v54[8];
  a11[2] = *&v54[16];
  a11[3] = *&v54[24];
  *a12 = a5;
  a12[1] = a6;
  a12[2] = a7;
  a12[3] = a8;
  return result;
}

- (int)_applySmartStyleOnSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v80 = 0;
  v81 = 0;
  value = *MEMORY[0x1E6960CC0];
  timescale = *(MEMORY[0x1E6960CC0] + 8);
  v3 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v3;
  v76.origin = rect.origin;
  v76.size = v3;
  v75.origin = rect.origin;
  v75.size = v3;
  v74.origin = rect.origin;
  v74.size = v3;
  v73 = 0.0;
  v4 = MEMORY[0x1E695FF58];
  if (!a3)
  {
    epoch = *(MEMORY[0x1E6960CC0] + 16);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7_30();
    FigDebugAssert3();
    goto LABEL_88;
  }

  if (!self)
  {
    AttachedMedia = 0;
    epoch = 0;
    v15 = 0;
    ImageBuffer = 0;
    timescale = 0;
    value = 0;
LABEL_14:
    v16 = -12780;
    goto LABEL_76;
  }

  [(BWOverCaptureSmartStyleApplyNode *)self _getSampleBufferPresentationTimeStamp:?];
  epoch = time.duration.epoch;
  value = time.duration.value;
  timescale = time.duration.timescale;
  if ((time.duration.flags & 1) == 0)
  {
LABEL_88:
    AttachedMedia = 0;
    v15 = 0;
    ImageBuffer = 0;
    goto LABEL_14;
  }

  AttachedMedia = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
  if (!self->_didSetTimeToStartStyleEngineBypass)
  {
    OUTLINED_FUNCTION_4_38();
    time.duration.epoch = epoch;
    v9 = CMTimeGetSeconds(&time.duration) + 0.5;
    self->_timeToStartStyleEngineBypass = v9;
    self->_didSetTimeToStartStyleEngineBypass = 1;
  }

  if (*v4 == 1)
  {
    OUTLINED_FUNCTION_4_38();
    time.duration.epoch = epoch;
    CMTimeGetSeconds(&time.duration);
    OUTLINED_FUNCTION_5_7();
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  if (!ImageBuffer)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7_30();
    FigDebugAssert3();
    AttachedMedia = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v11 = [(BWOverCaptureSmartStyleApplyNode *)self _computeAffineTransform:[(BWOverCaptureSmartStyleApplyNode *)self _getRotationConfigForPixelBuffer:ImageBuffer] mirror:[(BWOverCaptureSmartStyleApplyNode *)self _getMirrorConfigForPixelBuffer:ImageBuffer]];
  v65 = v13;
  v66 = v12;
  v64 = v14;
  v15 = OUTLINED_FUNCTION_22_6(v11, *off_1E798A3C8);
  if (!v15)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_56();
    FigDebugAssert3();
    OUTLINED_FUNCTION_9_24();
    v16 = -12780;
    goto LABEL_76;
  }

  if (BWSmartStyleRenderingShouldBeBypassed(a3))
  {
    OUTLINED_FUNCTION_4_38();
    time.duration.epoch = epoch;
    if (CMTimeGetSeconds(&time.duration) > self->_timeToStartStyleEngineBypass)
    {
      AttachedMedia = 0;
      v15 = 0;
      ImageBuffer = 0;
      v16 = 0;
      self->_currentGlobalLocalMixFactor = 1.0;
      goto LABEL_76;
    }
  }

  else
  {
    self->_didSetTimeToStartStyleEngineBypass = 0;
  }

  v17 = [(CMISmartStyle *)self->_currentStyle castType];
  v18 = [v17 isEqual:FigSmartStyleCastTypeStandard];
  if (v18 && (v18 = -[CMISmartStyle toneBias](self->_currentStyle, "toneBias"), v19 == 0.0) && (v18 = -[CMISmartStyle colorBias](self->_currentStyle, "colorBias"), v20 == 0.0) || ![OUTLINED_FUNCTION_22_6(v18 @"SmartStyleApplyWithIdentityCoefficients")])
  {
    AttachedMedia = BWSampleBufferGetAttachedMedia(a3, 0x1F21AB070);
    v63 = 0;
    goto LABEL_30;
  }

  memset(&time, 0, sizeof(time));
  SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(a3, 1, &time, 0);
  if (SampleTimingInfoArray)
  {
    v16 = SampleTimingInfoArray;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_42();
    FigDebugAssert3();
    v15 = 0;
  }

  else
  {
    AttachedMedia = self->_identityCoefficientsPixelBuffer;
    if (AttachedMedia)
    {
      v63 = 0;
LABEL_28:
      memcpy(&__dst, &time, sizeof(__dst));
      v31 = BWSampleBufferCreateFromPixelBufferWithTimingInfo(AttachedMedia, &__dst, &v80, &v81);
      if (!v31)
      {
        AttachedMedia = v81;
LABEL_30:
        v32 = *off_1E798B588;
        v33 = [objc_msgSend(v15 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
        if (AttachedMedia)
        {
          v34 = v33;
          mostRecentCoefficients = self->_mostRecentCoefficients;
          if (v34 == self->_mostRecentQuadraBinningFactor)
          {
            if (mostRecentCoefficients)
            {
              CFRelease(mostRecentCoefficients);
              self->_mostRecentCoefficients = 0;
            }

            self->_mostRecentCoefficients = CFRetain(AttachedMedia);
            self->_applyGlobalMostRecentCoefficients = 0;
            v36 = self->_currentGlobalLocalMixFactor - self->_globalLocalSystemMixFactorDecayRate;
            [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
            if (v36 >= v37)
            {
              v37 = v36;
            }

            self->_currentGlobalLocalMixFactor = v37;
LABEL_42:
            self->_mostRecentQuadraBinningFactor = [objc_msgSend(v15 objectForKeyedSubscript:{v32), "intValue"}];
            v38 = CMSampleBufferGetImageBuffer(AttachedMedia);
            if (!v38 || (v39 = v38, (v40 = [v15 objectForKeyedSubscript:*off_1E798A8F0]) != 0) && (v40 = CGRectMakeWithDictionaryRepresentation(v40, &rect), (v40 & 1) == 0) || (v41 = OUTLINED_FUNCTION_22_6(v40, *off_1E798A430)) != 0 && (v41 = CGRectMakeWithDictionaryRepresentation(v41, &v76), (v41 & 1) == 0) || (v42 = OUTLINED_FUNCTION_22_6(v41, *off_1E798A398)) != 0 && (v42 = CGRectMakeWithDictionaryRepresentation(v42, &v75), (v42 & 1) == 0) || (v69 = 0u, v70 = 0u, (v43 = OUTLINED_FUNCTION_22_6(v42, @"OverCaptureStitchedValidBufferRect")) != 0) && !CGRectMakeWithDictionaryRepresentation(v43, &v74))
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_56();
              FigDebugAssert3();
              OUTLINED_FUNCTION_9_24();
              v16 = -12780;
              goto LABEL_39;
            }

            v67 = 0u;
            v68 = 0u;
            v44 = [(BWOverCaptureSmartStyleApplyNode *)self _calculateExtrapolationAndSpotlightZoom:&v69 inputCropRectWithinPrimaryCaptureRect:&v67 learningROIRect:OUTLINED_FUNCTION_10_21() adjustedPrimaryCaptureRect:*&rect.origin.x adjustedSpotlightZoomRect:*&rect.origin.y, *&rect.size.width, *&rect.size.height];
            if (v44)
            {
              v16 = v44;
              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_42();
              FigDebugAssert3();
              AttachedMedia = 0;
LABEL_93:
              ImageBuffer = 0;
              goto LABEL_39;
            }

            v45 = objc_alloc_init(self->_smartStyleProcessorInputOutputClass);
            AttachedMedia = v45;
            if (!v45)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_56();
              FigDebugAssert3();
              ImageBuffer = 0;
              v16 = -12786;
              goto LABEL_39;
            }

            v46 = OUTLINED_FUNCTION_22_6(v45, @"PreviewStitcherPrimaryCameraTransitionInProgress");
            if (!self->_useOptimizedThumbnailGeneration || ([v46 BOOLValue] & 1) != 0 || self->_applyGlobalMostRecentCoefficients)
            {
LABEL_65:
              [(__CVBuffer *)AttachedMedia setInputUnstyledPixelBuffer:ImageBuffer];
              [(__CVBuffer *)AttachedMedia setInputMetadataDict:v15];
              [(__CVBuffer *)AttachedMedia setOutputStyledPixelBuffer:ImageBuffer];
              [(__CVBuffer *)AttachedMedia setPrimaryCaptureRect:v69, v70];
              [(__CVBuffer *)AttachedMedia setInputCropRectWithinPrimaryCaptureRect:v67, v68];
              [(__CVBuffer *)AttachedMedia setSpotlightAffineTransform:*&v66, *&v65, *&v64];
              [(__CVBuffer *)AttachedMedia setOutputRenderRect:v74.origin.x, v74.origin.y, v74.size.width, v74.size.height];
              [(__CVBuffer *)AttachedMedia setApplyDither:self->_applyDither];
              if (self->_filterType)
              {
                [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
                OUTLINED_FUNCTION_4_38();
                time.duration.epoch = epoch;
                v56 = [v55 enqueueCoefficientsForFiltering:v39 withMetadata:v15 pts:&time];
                v4 = MEMORY[0x1E695FF58];
                if (v56)
                {
                  v16 = v56;
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_3_42();
                  FigDebugAssert3();
                  ImageBuffer = 0;
                  goto LABEL_75;
                }

                v57 = [(BWPixelBufferPool *)self->_filteredCoefficientsPixelBufferPool newPixelBuffer];
                if (!v57)
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_1_56();
                  FigDebugAssert3();
                  ImageBuffer = 0;
                  v16 = -12786;
                  goto LABEL_75;
                }

                v39 = v57;
                [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
                OUTLINED_FUNCTION_4_38();
                time.duration.epoch = epoch;
                [v58 filterCoefficientsForFrameWithMetadata:v15 pts:&time filterType:? toPixelBuffer:? toGlobalRemixFactor:?];
                ImageBuffer = v39;
              }

              else
              {
                ImageBuffer = 0;
                v4 = MEMORY[0x1E695FF58];
              }

              [(__CVBuffer *)AttachedMedia setInputStyleCoefficientsPixelBuffer:v39];
              *&v59 = self->_currentGlobalLocalMixFactor;
              v60 = *&v59 + (v73 * (1.0 - *&v59));
              if (v60 > *&v59)
              {
                self->_currentGlobalLocalMixFactor = v60;
                *&v59 = v60;
              }

              [(__CVBuffer *)AttachedMedia setGlobalLinearSystemMixFactor:v59];
              [(CMISmartStyleProcessor *)self->_smartStyleProcessor setInputOutput:AttachedMedia];
              v61 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor process];
              if (v61)
              {
                v16 = v61;
                fig_log_get_emitter();
                OUTLINED_FUNCTION_3_42();
              }

              else
              {
                v16 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor finishProcessing];
                if (!v16)
                {
                  [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798A8B8];
                  goto LABEL_75;
                }

                fig_log_get_emitter();
                OUTLINED_FUNCTION_3_42();
              }

              FigDebugAssert3();
              goto LABEL_75;
            }

            v47 = BWSampleBufferGetAttachedMedia(a3, 0x1F21AB0D0);
            if (v47)
            {
              v48 = CMSampleBufferGetImageBuffer(v47);
              if (v48)
              {
                v49 = v48;
                if (self->_previewThumbnailBuffer)
                {
LABEL_61:
                  v51 = [(MTLCommandQueue *)self->_metalCommandQueue commandBuffer];
                  if (v51)
                  {
                    v52 = v51;
                    v53 = OUTLINED_FUNCTION_10_21();
                    if (![v54 generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:v49 stitcherOutputPixelBuffer:ImageBuffer outputOvercaptureIntegrationThumbnailPixelBuffer:v53 primaryCaptureRect:v66 inputCropRectWithinPrimaryCaptureRect:v65 affineTransformForPreviewThumbnailPixelBuffer:v64 optionalCommandBuffer:?])
                    {
                      [(__CVBuffer *)AttachedMedia setInputUnstyledThumbnailPixelBuffer:self->_previewThumbnailBuffer];
                    }

                    goto LABEL_64;
                  }

                  fig_log_get_emitter();
                  FigDebugAssert3();
                  fig_log_get_emitter();
                  v16 = FigSignalErrorAtGM();
                  goto LABEL_93;
                }

                CVPixelBufferGetPixelFormatType(v48);
                PixelBuffer = CreatePixelBuffer();
                self->_previewThumbnailBuffer = PixelBuffer;
                if (PixelBuffer)
                {
                  CVBufferPropagateAttachments(ImageBuffer, PixelBuffer);
                  goto LABEL_61;
                }
              }
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_1_56();
            FigDebugAssert3();
            v52 = 0;
LABEL_64:
            [v52 commit];
            goto LABEL_65;
          }

          if (!mostRecentCoefficients)
          {
            goto LABEL_42;
          }
        }

        else
        {
          mostRecentCoefficients = self->_mostRecentCoefficients;
          if (!mostRecentCoefficients)
          {
            OUTLINED_FUNCTION_9_24();
            v16 = -12783;
LABEL_39:
            v4 = MEMORY[0x1E695FF58];
LABEL_75:
            v15 = v63;
            goto LABEL_76;
          }
        }

        self->_applyGlobalMostRecentCoefficients = 1;
        self->_currentGlobalLocalMixFactor = 1.0;
        AttachedMedia = mostRecentCoefficients;
        goto LABEL_42;
      }

      v16 = v31;
      v15 = v63;
      goto LABEL_107;
    }

    v22 = BWSampleBufferGetAttachedMedia(a3, 0x1F21AB070);
    v23 = CMSampleBufferGetImageBuffer(v22);
    if (v23)
    {
      AttachedMedia = v23;
      v24 = CVPixelBufferCopyCreationAttributes(v23);
      v25 = *MEMORY[0x1E695E480];
      Width = CVPixelBufferGetWidth(AttachedMedia);
      Height = CVPixelBufferGetHeight(AttachedMedia);
      PixelFormatType = CVPixelBufferGetPixelFormatType(AttachedMedia);
      v63 = v24;
      v29 = CVPixelBufferCreate(v25, Width, Height, PixelFormatType, v24, &self->_identityCoefficientsPixelBuffer);
      if (v29)
      {
        v16 = v29;
      }

      else
      {
        v30 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
        AttachedMedia = self->_identityCoefficientsPixelBuffer;
        if (AttachedMedia)
        {
          v4 = MEMORY[0x1E695FF58];
          goto LABEL_28;
        }

        v16 = v30;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_56();
        FigDebugAssert3();
      }

      v4 = MEMORY[0x1E695FF58];
      v15 = v24;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_56();
      FigDebugAssert3();
      v15 = 0;
      v16 = -12780;
    }
  }

LABEL_107:
  OUTLINED_FUNCTION_9_24();
LABEL_76:
  if (*v4 == 1)
  {
    OUTLINED_FUNCTION_4_38();
    time.duration.epoch = epoch;
    CMTimeGetSeconds(&time.duration);
    OUTLINED_FUNCTION_5_7();
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  if (v80)
  {
    CFRelease(v80);
  }

  if (ImageBuffer)
  {
    CFRelease(ImageBuffer);
  }

  return v16;
}

- (int)_applySmartStyleProxyRenderingWithMethod:(int)a3 onSampleBuffer:(opaqueCMSampleBuffer *)a4
{
  v9 = self;
  v27 = *MEMORY[0x1E6960CC0];
  v28 = *(MEMORY[0x1E6960CC0] + 8);
  v10 = MEMORY[0x1E695FF58];
  if (a3 == 2)
  {
    v11 = 1;
  }

  else
  {
    if (a3 != 3)
    {
      goto LABEL_16;
    }

    v11 = 2;
  }

  if (!a4)
  {
    goto LABEL_16;
  }

  if (!self)
  {
    v28 = 0;
    v27 = 0;
    goto LABEL_18;
  }

  self = [(BWOverCaptureSmartStyleApplyNode *)self _getSampleBufferPresentationTimeStamp:a4];
  v27 = v23;
  v28 = v24;
  if ((v25 & 1) == 0)
  {
LABEL_18:
    v18 = -12780;
    goto LABEL_19;
  }

  if (*v10 == 1)
  {
    OUTLINED_FUNCTION_6_35(self, a2, *&a3, a4, v4, v5, v6, v7, v20, v21, currentStyle, v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_5_7();
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a4);
  if (!ImageBuffer || (v13 = ImageBuffer, (v14 = CMGetAttachment(a4, *off_1E798A3C8, 0)) == 0))
  {
LABEL_16:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    self = FigDebugAssert3();
    goto LABEL_18;
  }

  v15 = v14;
  self = BWSmartStyleRenderingShouldBeBypassed(a4);
  if (self)
  {
    v18 = 0;
  }

  else
  {
    v16 = [v15 objectForKeyedSubscript:*off_1E798A8D0];
    currentStyle = v9->_currentStyle;
    -[CMISmartStyleProxyRenderer setInputStyles:](v9->_smartStyleProxyRenderer, "setInputStyles:", [MEMORY[0x1E695DEC8] arrayWithObjects:&currentStyle count:1]);
    [(CMISmartStyleProxyRenderer *)v9->_smartStyleProxyRenderer setInputPixelBuffer:v13];
    [(CMISmartStyleProxyRenderer *)v9->_smartStyleProxyRenderer setInputImageStatistics:v16];
    v17 = [(CMISmartStyleProxyRenderer *)v9->_smartStyleProxyRenderer prepareToProcess:v11];
    if (v17)
    {
      v18 = v17;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      LODWORD(v20) = v18;
    }

    else
    {
      self = [(CMISmartStyleProxyRenderer *)v9->_smartStyleProxyRenderer process];
      v18 = self;
      if (!self)
      {
        goto LABEL_19;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      LODWORD(v20) = v18;
    }

    self = FigDebugAssert3();
  }

LABEL_19:
  if (*v10 == 1)
  {
    OUTLINED_FUNCTION_6_35(self, a2, *&a3, a4, v4, v5, v6, v7, v20, v21, currentStyle, v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_5_7();
  }

  return v18;
}

- (uint64_t)initWithMetalCommandQueue:squareAspectRatioConfigEnabled:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)initWithMetalCommandQueue:squareAspectRatioConfigEnabled:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithMetalCommandQueue:squareAspectRatioConfigEnabled:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithMetalCommandQueue:squareAspectRatioConfigEnabled:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)setMaxLossyCompressionLevel:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)prepareForCurrentConfigurationToBecomeLive
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_loadAndConfigureSmartStyleProxyRenderer
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

- (uint64_t)_calculateExtrapolationAndSpotlightZoom:inputCropRectWithinPrimaryCaptureRect:learningROIRect:adjustedPrimaryCaptureRect:adjustedSpotlightZoomRect:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)_calculateExtrapolationAndSpotlightZoom:inputCropRectWithinPrimaryCaptureRect:learningROIRect:adjustedPrimaryCaptureRect:adjustedSpotlightZoomRect:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end