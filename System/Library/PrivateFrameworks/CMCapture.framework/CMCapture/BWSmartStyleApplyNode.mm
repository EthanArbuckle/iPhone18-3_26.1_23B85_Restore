@interface BWSmartStyleApplyNode
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_getSampleBufferPresentationTimeStamp:(SEL)a3;
- (BOOL)_canRenderWithStyleEngineApplyForInput:(opaqueCMSampleBuffer *)a3;
- (BOOL)_updateCurrentStyle:(opaqueCMSampleBuffer *)a3;
- (BWSmartStyleApplyNode)initWithMetalCommandQueue:(id)a3 renderingMethod:(int)a4 squareAspectRatioConfigEnabled:(BOOL)a5;
- (id)_updateSupportedPixelFormats;
- (int)_applySmartStyleFromSampleBuffer:(opaqueCMSampleBuffer *)a3 to:(opaqueCMSampleBuffer *)a4;
- (int)_applySmartStyleProxyRenderingWithMethod:(int)a3 fromSampleBuffer:(opaqueCMSampleBuffer *)a4 to:(opaqueCMSampleBuffer *)a5;
- (int)_loadAndConfigureSmartStyleBundle:(BOOL)a3;
- (int)_loadAndConfigureSmartStyleProxyRenderer;
- (uint64_t)_loadAndConfigureSmartStyleProxyRenderer;
- (uint64_t)prepareForCurrentConfigurationToBecomeLive;
- (void)_consumeSampleBufferAttachments:(opaqueCMSampleBuffer *)a3;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)setMaxLossyCompressionLevel:(int)a3;
@end

@implementation BWSmartStyleApplyNode

- (BWSmartStyleApplyNode)initWithMetalCommandQueue:(id)a3 renderingMethod:(int)a4 squareAspectRatioConfigEnabled:(BOOL)a5
{
  v5 = a5;
  v34.receiver = self;
  v34.super_class = BWSmartStyleApplyNode;
  v8 = [(BWNode *)&v34 init];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v8->_renderingMethod = a4;
  v8->_maxLossyCompressionLevel = 0;
  v8->_metalCommandQueue = a3;
  v9->_firstFrame = 1;
  v10 = [(BWSmartStyleApplyNode *)v9 _updateSupportedPixelFormats];
  if (!v10)
  {
    [BWSmartStyleApplyNode initWithMetalCommandQueue:renderingMethod:squareAspectRatioConfigEnabled:];
    return 0;
  }

  v11 = v10;
  v12 = objc_alloc_init(BWVideoFormatRequirements);
  if (!v12)
  {
    [BWSmartStyleApplyNode initWithMetalCommandQueue:renderingMethod:squareAspectRatioConfigEnabled:];
    return 0;
  }

  v13 = v12;
  v27 = v5;
  [(BWVideoFormatRequirements *)v12 setSupportedPixelFormats:v11];
  v28 = v9;
  v14 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v9];
  [(BWNodeInput *)v14 setFormatRequirements:v13];
  [(BWNodeInput *)v14 setPassthroughMode:2];
  if (a4 == 1)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, 0);
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          v21 = objc_alloc_init(BWNodeInputMediaConfiguration);
          [(BWNodeInputMediaConfiguration *)v21 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
          [(BWNodeInputMediaConfiguration *)v21 setPassthroughMode:0];
          if ([v20 isEqualToString:0x1F21AB070])
          {
            [(BWNodeInputMediaConfiguration *)v21 setRetainedBufferCount:4];
          }

          [(BWNodeInput *)v14 setMediaConfiguration:v21 forAttachedMediaKey:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v29 count:16];
      }

      while (v17);
    }
  }

  v22 = v28;
  [(BWNode *)v28 addInput:v14];
  v23 = objc_alloc_init(BWVideoFormatRequirements);
  if (!v23)
  {
    [BWSmartStyleApplyNode initWithMetalCommandQueue:renderingMethod:squareAspectRatioConfigEnabled:];
    return 0;
  }

  v24 = v23;
  [(BWVideoFormatRequirements *)v23 setSupportedPixelFormats:v11];
  v25 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v28];
  [(BWNodeOutput *)v25 setFormatRequirements:v24];
  [(BWNodeOutput *)v25 setPassthroughMode:2];
  [(BWNodeOutput *)v25 setProvidesPixelBufferPool:1];
  [(BWNodeOutput *)v25 setOwningNodeRetainedBufferCount:1];
  [(BWNode *)v28 addOutput:v25];
  if ([(BWSmartStyleApplyNode *)v28 _loadAndConfigureSmartStyleBundle:v27])
  {
    [BWSmartStyleApplyNode initWithMetalCommandQueue:renderingMethod:squareAspectRatioConfigEnabled:];
    return 0;
  }

  v28->_applyDither = 1;
  return v22;
}

- (void)setMaxLossyCompressionLevel:(int)a3
{
  if (self->_maxLossyCompressionLevel != a3)
  {
    v4 = [(BWNodeInput *)self->super._input formatRequirements];
    v5 = [(BWNodeOutput *)self->super._output formatRequirements];
    v6 = [(BWSmartStyleApplyNode *)self _updateSupportedPixelFormats];
    if (v6)
    {
      v7 = v6;
      [(BWFormatRequirements *)v4 setSupportedPixelFormats:v6];

      [(BWFormatRequirements *)v5 setSupportedPixelFormats:v7];
    }

    else
    {
      [BWSmartStyleApplyNode setMaxLossyCompressionLevel:];
    }
  }
}

- (void)dealloc
{
  [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];

  mostRecentCoefficients = self->_mostRecentCoefficients;
  if (mostRecentCoefficients)
  {
    CFRelease(mostRecentCoefficients);
  }

  v4.receiver = self;
  v4.super_class = BWSmartStyleApplyNode;
  [(BWNode *)&v4 dealloc];
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
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "pixelFormat")}];
        -[BWFormatRequirements setSupportedPixelFormats:](v9, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1]);
        v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a3, "colorSpaceProperties")}];
        -[BWFormatRequirements setSupportedColorSpaceProperties:](v9, "setSupportedColorSpaceProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1]);
        [(BWNodeOutput *)self->super._output setFormat:a3];
      }

      else if ([a5 isEqual:0x1F21AB070])
      {
        v10 = [BWPixelBufferPool alloc];
        v11 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:](v10, "initWithVideoFormat:capacity:name:memoryPool:", a3, self->_filteredCoefficientsPixelBufferPoolSize, [MEMORY[0x1E696AEC0] stringWithFormat:@"ApplyNode filtered coefficients buffer pool"], -[BWNodeOutput memoryPool](self->super._output, "memoryPool"));
        self->_filteredCoefficientsPixelBufferPool = v11;
        if (!v11)
        {
          [BWSmartStyleApplyNode didSelectFormat:forInput:forAttachedMediaKey:];
        }
      }

      else if (([BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1 1)] & 1) == 0)
      {
        v12.receiver = self;
        v12.super_class = BWSmartStyleApplyNode;
        [(BWNode *)&v12 didSelectFormat:a3 forInput:a4 forAttachedMediaKey:a5];
      }
    }

    else
    {
      [BWSmartStyleApplyNode didSelectFormat:forInput:forAttachedMediaKey:];
    }
  }

  else
  {
    [BWSmartStyleApplyNode didSelectFormat:forInput:forAttachedMediaKey:];
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWSmartStyleApplyNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  if ([(BWSmartStyleApplyNode *)self _loadAndConfigureSmartStyleProxyRenderer])
  {
    [BWSmartStyleApplyNode prepareForCurrentConfigurationToBecomeLive];
  }

  else if ([(CMISmartStyleProcessor *)self->_smartStyleProcessor setup])
  {
    [BWSmartStyleApplyNode prepareForCurrentConfigurationToBecomeLive];
  }

  else if ([(CMISmartStyleProcessor *)self->_smartStyleProcessor prepareToProcess:4])
  {
    [BWSmartStyleApplyNode prepareForCurrentConfigurationToBecomeLive];
  }

  else if ([-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")])
  {
    [BWSmartStyleApplyNode prepareForCurrentConfigurationToBecomeLive];
  }
}

- (void)didReachEndOfDataForInput:(id)a3
{
  v3.receiver = self;
  v3.super_class = BWSmartStyleApplyNode;
  [(BWNode *)&v3 didReachEndOfDataForInput:a3];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  target = 0;
  if (!a3)
  {
    [BWSmartStyleApplyNode renderSampleBuffer:? forInput:?];
    goto LABEL_26;
  }

  if (!a4)
  {
    [BWSmartStyleApplyNode renderSampleBuffer:forInput:];
    goto LABEL_29;
  }

  if (!BWSampleBufferIsMarkerBuffer(a3))
  {
    if ([(BWSmartStyleApplyNode *)self _updateCurrentStyle:a3])
    {
      renderingMethod = self->_renderingMethod;
      if (renderingMethod)
      {
        v8 = *off_1E798A3C8;
        v9 = CMGetAttachment(a3, *off_1E798A3C8, 0);
        if (v9)
        {
          v10 = *off_1E798B710;
          if (([objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B710), "BOOLValue"}] & 1) != 0 || (AttachedMedia = BWSampleBufferGetAttachedMedia(a3, @"SynchronizedSlaveFrame")) == 0)
          {
            v12 = 0;
            v13 = a3;
            goto LABEL_17;
          }

          v14 = AttachedMedia;
          v15 = CMGetAttachment(AttachedMedia, v8, 0);
          if (v15)
          {
            v16 = [objc_msgSend(v15 objectForKeyedSubscript:{v10), "BOOLValue"}];
            v12 = v16;
            if (v16)
            {
              v13 = v14;
            }

            else
            {
              v13 = a3;
            }

LABEL_17:
            if (BWSmartStyleRenderingShouldBeBypassed(v13))
            {
LABEL_25:
              [(BWSmartStyleApplyNode *)&self->super.super.isa renderSampleBuffer:a3 forInput:v12, &target];
LABEL_26:
              self->_firstFrame = 0;
              return;
            }

            if (renderingMethod == 1)
            {
              if ([(BWSmartStyleApplyNode *)self _canRenderWithStyleEngineApplyForInput:v13])
              {
                if ([(BWSmartStyleApplyNode *)self _applySmartStyleFromSampleBuffer:v13 to:&target])
                {
                  [BWSmartStyleApplyNode renderSampleBuffer:forInput:];
                  goto LABEL_25;
                }

LABEL_24:
                CMSetAttachment(target, @"FiltersApplied", MEMORY[0x1E695E118], 1u);
                goto LABEL_25;
              }

              renderingMethod = 3;
            }

            if ([(BWSmartStyleApplyNode *)self _applySmartStyleProxyRenderingWithMethod:renderingMethod fromSampleBuffer:v13 to:&target])
            {
              [BWSmartStyleApplyNode renderSampleBuffer:forInput:];
              goto LABEL_25;
            }

            goto LABEL_24;
          }

          [BWSmartStyleApplyNode renderSampleBuffer:forInput:];
        }

        else
        {
          [BWSmartStyleApplyNode renderSampleBuffer:forInput:];
        }
      }
    }

LABEL_29:
    v12 = 0;
    goto LABEL_25;
  }

  output = self->super._output;

  [(BWNodeOutput *)output emitSampleBuffer:a3];
}

- (BOOL)_canRenderWithStyleEngineApplyForInput:(opaqueCMSampleBuffer *)a3
{
  AttachedMedia = BWSampleBufferGetAttachedMedia(a3, 0x1F21AB0D0);
  v5 = BWSampleBufferGetAttachedMedia(a3, 0x1F21AB070);
  if (AttachedMedia)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

- (int)_loadAndConfigureSmartStyleBundle:(BOOL)a3
{
  v3 = a3;
  v5 = BWLoadProcessorBundle(@"SmartStyle", 1);
  if (v5)
  {
    v6 = [v5 classNamed:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CMISmartStyleProcessorV%d", 1)}];
    v7 = [[v6 alloc] initWithOptionalMetalCommandQueue:self->_metalCommandQueue];
    self->_smartStyleProcessor = v7;
    if (v7)
    {
      [(CMISmartStyleProcessor *)v7 setInstanceLabel:@"ApplyNode"];
      [(CMISmartStyleProcessor *)self->_smartStyleProcessor setUseLiveMetalAllocations:1];
      v8 = [(objc_class *)v6 getSmartStyleCoefficientsFilterType:@"iir"];
      self->_filterType = v8;
      v9 = v3 ? [(objc_class *)v6 getDefaultProcessorConfigurationForStreamingSquareAspectRatioWithFilterType:v8]: [(objc_class *)v6 getDefaultProcessorConfigurationForStreamingWithFilterType:v8];
      [(CMISmartStyleProcessor *)self->_smartStyleProcessor setConfiguration:v9];
      if ([(CMISmartStyleProcessor *)self->_smartStyleProcessor configuration])
      {
        [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
        self->_globalLocalSystemMixFactorDecayRate = v10 / 10.0;
        self->_filteredCoefficientsPixelBufferPoolSize = [(objc_class *)v6 getRequiredFilteredCoefficientsPixelBufferPoolSizeForFilterType:self->_filterType]+ 1;
        v11 = [v5 classNamed:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CMISmartStyleProcessorInputOutputV%d", 1)}];
        self->_smartStyleProcessorInputOutputClass = v11;
        if (v11)
        {
          return 0;
        }
      }
    }
  }

  [(BWSmartStyleApplyNode *)v5 _loadAndConfigureSmartStyleBundle:?];
  return -12786;
}

- (int)_loadAndConfigureSmartStyleProxyRenderer
{
  v3 = NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISmartStyleV%d", 1]);
  self->_smartStyleClass = v3;
  if (!v3 || (v4 = NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISmartStyleProxyRendererV%d", 1]), !self->_smartStyleClass) || (v5 = objc_msgSend([v4 alloc], "initWithOptionalMetalCommandQueue:", self->_metalCommandQueue), (self->_smartStyleProxyRenderer = v5) == 0))
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
  [v9 setLabel:@"BWSmartStyleApplyNode-SmartStyleProxyRenderer-FigMetalAllocatorBackend"];
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
    [BWSmartStyleApplyNode _loadAndConfigureSmartStyleProxyRenderer];
    goto LABEL_22;
  }

  v14 = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer setup];
  if (v14)
  {
    v13 = v14;
    [BWSmartStyleApplyNode _loadAndConfigureSmartStyleProxyRenderer];
    goto LABEL_22;
  }

  v13 = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer prewarm];
  if (v13)
  {
    [BWSmartStyleApplyNode _loadAndConfigureSmartStyleProxyRenderer];
    goto LABEL_22;
  }

  return v13;
}

- (id)_updateSupportedPixelFormats
{
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F2249BE8];
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
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, 1);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        BWSampleBufferRemoveAttachedMedia(a3, *(*(&v11 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  CMRemoveAttachment(a3, *off_1E798A4C0);
  v9 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  [v9 setObject:0 forKeyedSubscript:*off_1E798A8F8];
  [v9 setObject:0 forKeyedSubscript:*off_1E798A920];
  [v9 setObject:0 forKeyedSubscript:*off_1E798A928];
  [v9 setObject:0 forKeyedSubscript:*off_1E798A8E8];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_getSampleBufferPresentationTimeStamp:(SEL)a3
{
  *retstr = **&MEMORY[0x1E6960C70];
  if (!a4)
  {
    return [BWSmartStyleApplyNode _getSampleBufferPresentationTimeStamp:];
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

- (BOOL)_updateCurrentStyle:(opaqueCMSampleBuffer *)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = [v4 objectForKeyedSubscript:*off_1E798A8C0];
  if (!v5)
  {

    result = 0;
    self->_currentStyle = 0;
    return result;
  }

  v6 = [FigCaptureSmartStyle createFromDictionary:v5];
  if (v6)
  {
    v7 = v6;
    currentStyle = self->_currentStyle;
    if (!currentStyle)
    {
      currentStyle = objc_alloc_init(self->_smartStyleClass);
    }

    self->_currentStyle = currentStyle;
    -[CMISmartStyle setCastType:](self->_currentStyle, "setCastType:", [v7 cast]);
    [v7 intensity];
    [(CMISmartStyle *)self->_currentStyle setCastIntensity:?];
    [v7 toneBias];
    [(CMISmartStyle *)self->_currentStyle setToneBias:?];
    [v7 colorBias];
    [(CMISmartStyle *)self->_currentStyle setColorBias:?];
    return self->_currentStyle != 0;
  }

  else
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }
}

- (int)_applySmartStyleFromSampleBuffer:(opaqueCMSampleBuffer *)a3 to:(opaqueCMSampleBuffer *)a4
{
  v66 = 0;
  v67 = 0;
  v64 = *MEMORY[0x1E6960CC0];
  v65 = *(MEMORY[0x1E6960CC0] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v7;
  v8 = MEMORY[0x1E695FF58];
  if (!a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    goto LABEL_51;
  }

  v9 = a4;
  if (!a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    goto LABEL_53;
  }

  *a4 = 0;
  if (!self)
  {
    v9 = 0;
    OUTLINED_FUNCTION_9_61();
    v65 = 0;
    v64 = 0;
LABEL_18:
    v37 = -12780;
    goto LABEL_39;
  }

  v12 = [(BWSmartStyleApplyNode *)self _getSampleBufferPresentationTimeStamp:?];
  v20 = v61;
  v64 = v58;
  v65 = v59;
  if ((v60 & 1) == 0)
  {
LABEL_51:
    v9 = 0;
LABEL_53:
    OUTLINED_FUNCTION_9_61();
    goto LABEL_18;
  }

  if (*v8 == 1)
  {
    OUTLINED_FUNCTION_8_58(v12, v13, v14, v15, v16, v17, v18, v19, v51, v52, v53, key, v55, v56, v57, v58, v59, v60, v61, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height, v63, v64, v65);
    OUTLINED_FUNCTION_5_7();
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  if (!ImageBuffer)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    AttachedMedia = FigDebugAssert3();
    v9 = 0;
    v4 = 0;
    goto LABEL_18;
  }

  v21 = *off_1E798A3C8;
  v22 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  if (!v22)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v9 = 0;
    OUTLINED_FUNCTION_9_61();
    v37 = -12780;
    goto LABEL_39;
  }

  v23 = v22;
  AttachedMedia = BWSampleBufferGetAttachedMedia(a3, 0x1F21AB0D0);
  v4 = AttachedMedia;
  if (!AttachedMedia)
  {
    v9 = 0;
LABEL_58:
    ImageBuffer = 0;
    v37 = -12783;
    goto LABEL_39;
  }

  v55 = v9;
  AttachedMedia = BWSampleBufferGetAttachedMedia(a3, 0x1F21AB070);
  v9 = AttachedMedia;
  if (!AttachedMedia)
  {
    v4 = 0;
    goto LABEL_58;
  }

  v53 = v6;
  key = v21;
  v56 = v20;
  v32 = *off_1E798B588;
  v33 = [objc_msgSend(v23 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
  mostRecentCoefficients = self->_mostRecentCoefficients;
  if (v33 == self->_mostRecentQuadraBinningFactor)
  {
    if (mostRecentCoefficients)
    {
      CFRelease(mostRecentCoefficients);
      self->_mostRecentCoefficients = 0;
    }

    self->_mostRecentCoefficients = CFRetain(v9);
    self->_applyGlobalMostRecentCoefficients = 0;
    v35 = self->_currentGlobalLocalMixFactor - self->_globalLocalSystemMixFactorDecayRate;
    [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
    if (v35 >= v36)
    {
      v36 = v35;
    }

    self->_currentGlobalLocalMixFactor = v36;
  }

  else if (mostRecentCoefficients)
  {
    self->_applyGlobalMostRecentCoefficients = 1;
    self->_currentGlobalLocalMixFactor = 1.0;
    v9 = mostRecentCoefficients;
  }

  self->_mostRecentQuadraBinningFactor = [objc_msgSend(v23 objectForKeyedSubscript:{v32), "intValue"}];
  v38 = [v23 objectForKeyedSubscript:*off_1E798A8F0];
  if (v38 && !CGRectMakeWithDictionaryRepresentation(v38, &rect) || (v39 = CMSampleBufferGetImageBuffer(v4)) == 0 || (v40 = v39, (v41 = CMSampleBufferGetImageBuffer(v9)) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v51) = 0;
    FigDebugAssert3();
    v9 = 0;
    OUTLINED_FUNCTION_9_61();
    v37 = -12780;
LABEL_71:
    v8 = MEMORY[0x1E695FF58];
    goto LABEL_39;
  }

  v42 = v41;
  AttachedMedia = [(BWPixelBufferPool *)[(BWNodeOutput *)self->super._output livePixelBufferPool] newPixelBuffer];
  v4 = AttachedMedia;
  if (!AttachedMedia)
  {
    v9 = 0;
LABEL_63:
    ImageBuffer = 0;
LABEL_70:
    v37 = -12786;
    goto LABEL_71;
  }

  CVBufferPropagateAttachments(ImageBuffer, AttachedMedia);
  v9 = objc_alloc_init(self->_smartStyleProcessorInputOutputClass);
  if (!v9)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v51) = 0;
    AttachedMedia = FigDebugAssert3();
    goto LABEL_63;
  }

  [v9 setMetalSharedEvent:{CMGetAttachment(a3, *off_1E798A4C0, 0)}];
  [v9 setInputUnstyledPixelBuffer:ImageBuffer];
  [v9 setInputMetadataDict:v23];
  [v9 setInputUnstyledThumbnailPixelBuffer:v40];
  [v9 setOutputStyledPixelBuffer:v4];
  [v9 setPrimaryCaptureRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  *&v43 = self->_currentGlobalLocalMixFactor;
  [v9 setGlobalLinearSystemMixFactor:v43];
  [v9 setApplyDither:self->_applyDither];
  if (!self->_filterType)
  {
    [v9 setInputStyleCoefficientsPixelBuffer:v42];
    ImageBuffer = 0;
    goto LABEL_32;
  }

  [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
  OUTLINED_FUNCTION_5_83();
  v45 = [v44 enqueueCoefficientsForFiltering:v42 withMetadata:v23 pts:&v58];
  if (v45)
  {
    v37 = v45;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v51) = v37;
    AttachedMedia = FigDebugAssert3();
    ImageBuffer = 0;
    goto LABEL_71;
  }

  ImageBuffer = [(BWPixelBufferPool *)self->_filteredCoefficientsPixelBufferPool newPixelBuffer];
  if (!ImageBuffer)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v51) = 0;
    AttachedMedia = FigDebugAssert3();
    goto LABEL_70;
  }

  [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
  OUTLINED_FUNCTION_5_83();
  [v46 filterCoefficientsForFrameWithMetadata:v23 pts:&v58 filterType:? toPixelBuffer:?];
  [v9 setInputStyleCoefficientsPixelBuffer:ImageBuffer];
LABEL_32:
  [(CMISmartStyleProcessor *)self->_smartStyleProcessor setInputOutput:v9];
  v47 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor process];
  if (v47 || (v47 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor finishProcessing]) != 0)
  {
    v37 = v47;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v51) = v37;
    AttachedMedia = FigDebugAssert3();
    v8 = MEMORY[0x1E695FF58];
    goto LABEL_39;
  }

  v48 = BWCMSampleBufferCreateCopyWithNewPixelBuffer(a3, v4, &v66, &v67);
  v8 = MEMORY[0x1E695FF58];
  if (v48)
  {
    v37 = v48;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v51) = v37;
    AttachedMedia = FigDebugAssert3();
    goto LABEL_39;
  }

  v49 = CMGetAttachment(a3, v21, 0);
  if (!v49)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v51) = 0;
    AttachedMedia = FigDebugAssert3();
    goto LABEL_18;
  }

  [v49 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798A8B8];
  AttachedMedia = v67;
  if (v67)
  {
    AttachedMedia = CFRetain(v67);
  }

  v37 = 0;
  *v55 = AttachedMedia;
LABEL_39:
  if (*v8 == 1)
  {
    OUTLINED_FUNCTION_8_58(AttachedMedia, v25, v26, v27, v28, v29, v30, v31, v51, v52, v53, key, v55, v56, v57, v58, v59, v60, v61, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height, v63, v64, v65);
    OUTLINED_FUNCTION_5_7();
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (ImageBuffer)
  {
    CFRelease(ImageBuffer);
  }

  return v37;
}

- (int)_applySmartStyleProxyRenderingWithMethod:(int)a3 fromSampleBuffer:(opaqueCMSampleBuffer *)a4 to:(opaqueCMSampleBuffer *)a5
{
  v11 = self;
  v41 = 0;
  cf = 0;
  v38 = *MEMORY[0x1E6960CC0];
  v39 = *(MEMORY[0x1E6960CC0] + 8);
  v12 = MEMORY[0x1E695FF58];
  if (a3 == 2)
  {
    v13 = 1;
  }

  else
  {
    if (a3 != 3)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      self = FigDebugAssert3();
      v20 = 0;
      v24 = 0;
      goto LABEL_26;
    }

    v13 = 2;
  }

  if (!a4 || !a5)
  {
    goto LABEL_35;
  }

  *a5 = 0;
  if (!self)
  {
    v20 = 0;
    v39 = 0;
    v38 = 0;
LABEL_18:
    v24 = -12780;
    goto LABEL_26;
  }

  self = [(BWSmartStyleApplyNode *)self _getSampleBufferPresentationTimeStamp:a4];
  v14 = v37;
  v38 = v34;
  v15 = v36;
  v39 = v35;
  if ((v36 & 1) == 0)
  {
LABEL_36:
    v20 = 0;
    goto LABEL_18;
  }

  if (*v12 == 1)
  {
    OUTLINED_FUNCTION_7_73(self, a2, *&a3, a4, a5, v5, v6, v7, v27, v28, v29, v30, v31, v32, currentStyle, v34, v35, v36, v37, v38, v39);
    OUTLINED_FUNCTION_5_7();
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a4);
  if (!ImageBuffer || (v17 = ImageBuffer, (v18 = CMGetAttachment(a4, *off_1E798A3C8, 0)) == 0))
  {
LABEL_35:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    self = FigDebugAssert3();
    goto LABEL_36;
  }

  v19 = v18;
  v30 = v8;
  self = [(BWPixelBufferPool *)[(BWNodeOutput *)v11->super._output livePixelBufferPool] newPixelBuffer];
  v20 = self;
  if (self)
  {
    v31 = v14;
    HIDWORD(v32) = v15;
    CVBufferPropagateAttachments(v17, self);
    v21 = [v19 objectForKeyedSubscript:*off_1E798A8D0];
    AttachedMedia = BWSampleBufferGetAttachedMedia(a4, 0x1F21AAED0);
    if (AttachedMedia)
    {
      v23 = CMSampleBufferGetImageBuffer(AttachedMedia);
    }

    else
    {
      v23 = 0;
    }

    currentStyle = v11->_currentStyle;
    -[CMISmartStyleProxyRenderer setInputStyles:](v11->_smartStyleProxyRenderer, "setInputStyles:", [MEMORY[0x1E695DEC8] arrayWithObjects:&currentStyle count:1]);
    [(CMISmartStyleProxyRenderer *)v11->_smartStyleProxyRenderer setInputPixelBuffer:v17];
    [(CMISmartStyleProxyRenderer *)v11->_smartStyleProxyRenderer setInputMaskPixelBuffer:v23];
    [(CMISmartStyleProxyRenderer *)v11->_smartStyleProxyRenderer setInputImageStatistics:v21];
    [(CMISmartStyleProxyRenderer *)v11->_smartStyleProxyRenderer setOutputPixelBuffer:v20];
    v25 = [(CMISmartStyleProxyRenderer *)v11->_smartStyleProxyRenderer prepareToProcess:v13];
    if (v25 || (v25 = [(CMISmartStyleProxyRenderer *)v11->_smartStyleProxyRenderer process]) != 0 || (v25 = BWCMSampleBufferCreateCopyWithNewPixelBuffer(a4, v20, &cf, &v41)) != 0)
    {
      v24 = v25;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_88();
      self = FigDebugAssert3();
    }

    else
    {
      self = v41;
      if (v41)
      {
        self = CFRetain(v41);
      }

      v24 = 0;
      *a5 = self;
    }
  }

  else
  {
    v24 = -12786;
  }

LABEL_26:
  if (*v12 == 1)
  {
    OUTLINED_FUNCTION_7_73(self, a2, *&a3, a4, a5, v5, v6, v7, v27, v28, v29, v30, v31, v32, currentStyle, v34, v35, v36, v37, v38, v39);
    OUTLINED_FUNCTION_5_7();
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v24;
}

- (uint64_t)initWithMetalCommandQueue:renderingMethod:squareAspectRatioConfigEnabled:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)initWithMetalCommandQueue:renderingMethod:squareAspectRatioConfigEnabled:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithMetalCommandQueue:renderingMethod:squareAspectRatioConfigEnabled:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithMetalCommandQueue:renderingMethod:squareAspectRatioConfigEnabled:.cold.4()
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

- (uint64_t)didSelectFormat:forInput:forAttachedMediaKey:.cold.3()
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
  OUTLINED_FUNCTION_1_11();
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
  OUTLINED_FUNCTION_1_6();
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

- (void)renderSampleBuffer:(char)a3 forInput:(uint64_t *)a4 .cold.6(id *a1, const void *a2, char a3, uint64_t *a4)
{
  [a1 _consumeSampleBufferAttachments:a2];
  if (*a4)
  {
    [a1 _consumeSampleBufferAttachments:?];
    if (a3)
    {
      BWSampleBufferSetAttachedMedia(a2, @"SynchronizedSlaveFrame", *a4);
      v8 = a1[2];
      v9 = a2;
    }

    else
    {
      v9 = *a4;
      v8 = a1[2];
    }

    [v8 emitSampleBuffer:v9];
    if (*a4)
    {
      CFRelease(*a4);
    }
  }

  else
  {
    [a1[2] emitSampleBuffer:a2];
  }
}

- (void)renderSampleBuffer:(id *)a1 forInput:.cold.7(id *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  [a1 _consumeSampleBufferAttachments:0];
  CMSampleBufferGetPresentationTimeStamp(&v3, 0);
  v2 = [BWDroppedSample newDroppedSampleWithReason:0x1F219C1B0 pts:&v3];
  [a1[2] emitDroppedSample:v2];
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

@end