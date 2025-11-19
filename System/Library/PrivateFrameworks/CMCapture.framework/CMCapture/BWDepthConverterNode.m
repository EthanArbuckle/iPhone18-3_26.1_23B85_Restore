@interface BWDepthConverterNode
+ (void)initialize;
- (BWDepthConverterNode)initWithStillImageNodeConfiguration:(id)a3 cameraInfoByPortType:(id)a4 sensorIDDictionary:(id)a5 rgbPersonSegmentationEnabled:(BOOL)a6 depthIsAlwaysHighQuality:(BOOL)a7 depthOriginatesFromNeuralNetwork:(BOOL)a8 backPressureDrivenPipelining:(BOOL)a9;
- (uint64_t)_computeConversionParametersFromSampleBuffer:(uint64_t)a3 convertOptionsOut:;
- (uint64_t)_convertDepthDisparityToFloat_C:(__CVBuffer *)a3 dst:(uint64_t)a4 options:;
- (uint64_t)_convertDepthDisparityToFloat_NEON:(__CVBuffer *)a3 dst:(int *)a4 options:;
- (uint64_t)_depthMetadataDictionaryFromSampleBuffer:(int)a3 orientation:(int)a4 stillFilteringRequested:;
- (uint64_t)_generateAndAttachUnfilteredDepthToSampleBuffer:(__CVBuffer *)a3 depthOutputPixelBuffer:(opaqueCMSampleBuffer *)a4 depthOutputSampleBuffer:;
- (uint64_t)_loadAndConfigureDepthProcessorClass:(uint64_t)result;
- (uint64_t)_parseCameraInfo;
- (uint64_t)_resolveFilteringTypeWithStillFilteringRequested:(uint64_t)result;
- (uint64_t)_scaleDepthValues:(void *)a3 depthMetadata:(uint64_t)a4 sbuf:;
- (uint64_t)_updateOutputRequirements;
- (uint64_t)convertToFloatAndRotateAndCrop:(__CVBuffer *)a3 outputPixelBuffer:;
- (uint64_t)filterDepthPixelBuffer:(__CVBuffer *)a3 outputDepthPixelBuffer:(CMSampleBufferRef)sbuf yuvImageSampleBuffer:(uint64_t)a5 depthSampleBuffer:(unsigned int)a6 filteringType:;
- (uint64_t)rotateAndScaleAndCropImagePixelBuffer:(uint64_t)a1 depthPixelBuffer:(__CVBuffer *)a2 to:(__CVBuffer *)a3 rotationAngle:(uint64_t)a4 flip:(int)a5;
- (void)_removeConsumedAttachedMediaFromSampleBuffer:(uint64_t)a1;
- (void)dealloc;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)setOutputDimensions:(id)a3;
- (void)setOutputFormat:(unsigned int)a3;
@end

@implementation BWDepthConverterNode

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWDepthConverterNode)initWithStillImageNodeConfiguration:(id)a3 cameraInfoByPortType:(id)a4 sensorIDDictionary:(id)a5 rgbPersonSegmentationEnabled:(BOOL)a6 depthIsAlwaysHighQuality:(BOOL)a7 depthOriginatesFromNeuralNetwork:(BOOL)a8 backPressureDrivenPipelining:(BOOL)a9
{
  v11 = a6;
  v31.receiver = self;
  v31.super_class = BWDepthConverterNode;
  v15 = [(BWNode *)&v31 init];
  v16 = v15;
  if (v15)
  {
    [(BWNode *)v15 setSupportsLiveReconfiguration:1];
    v16->_stillImageNodeConfiguration = a3;
    v16->_cameraInfoByPortType = a4;
    v16->_sensorIDDictionary = a5;
    v16->_depthIsAlwaysHighQuality = a7;
    v16->_depthOriginatesFromNeuralNetwork = a8;
    v16->_backPressureDrivenPipelining = a9;
    v17 = *(MEMORY[0x1E695F050] + 16);
    v16->_inputCropRect.origin = *MEMORY[0x1E695F050];
    v16->_inputCropRect.size = v17;
    v16->_depthProcessingEnabled = [(BWStillImageNodeConfiguration *)v16->_stillImageNodeConfiguration depthDataType]!= 10;
    v16->_disparityAPSScaling = -[BWDisparityAPSScaling initWithDepthScalingTuningParameters:]([BWDisparityAPSScaling alloc], "initWithDepthScalingTuningParameters:", [objc_msgSend(a5 objectForKeyedSubscript:{@"DepthProcessingParameters", "objectForKeyedSubscript:", @"DepthScalingParameters"}]);
    v18 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v16];
    v19 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v19 setSupportedPixelFormats:FigCapturePixelFormatsByAddingCompressedVariants(&unk_1F2249258, 3)];
    [(BWNodeInput *)v18 setFormatRequirements:v19];

    [(BWNodeInput *)v18 setPassthroughMode:1];
    v20 = objc_alloc_init(BWNodeInputMediaConfiguration);
    v21 = objc_alloc_init(BWVideoFormatRequirements);
    v22 = v21;
    if (v16->_depthOriginatesFromNeuralNetwork)
    {
      v23 = &unk_1F2249270;
    }

    else
    {
      v23 = &unk_1F2249288;
    }

    [(BWVideoFormatRequirements *)v21 setSupportedPixelFormats:v23];
    [(BWNodeInputMediaConfiguration *)v20 setFormatRequirements:v22];
    [(BWNodeInputMediaConfiguration *)v20 setPassthroughMode:0];
    [(BWNodeInput *)v18 setMediaConfiguration:v20 forAttachedMediaKey:@"Depth"];
    if (v11)
    {
      v24 = objc_alloc_init(BWNodeInputMediaConfiguration);
      v25 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v25 setSupportedPixelFormats:&unk_1F22492A0];
      [(BWNodeInputMediaConfiguration *)v24 setFormatRequirements:v25];
      [(BWNodeInputMediaConfiguration *)v24 setPassthroughMode:0];
      [(BWNodeInput *)v18 setMediaConfiguration:v24 forAttachedMediaKey:0x1F21AAC70];
    }

    [(BWNode *)v16 addInput:v18];

    v26 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v16];
    v27 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeOutput *)v26 setFormatRequirements:v27];
    [(BWNodeOutput *)v26 setPassthroughMode:1];

    v28 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v29 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v29 setSupportedPixelFormats:&unk_1F22492B8];
    [(BWNodeOutputMediaConfiguration *)v28 setFormatRequirements:v29];
    [(BWNodeOutputMediaConfiguration *)v28 setPassthroughMode:!v16->_depthProcessingEnabled];
    [(BWNodeOutputMediaConfiguration *)v28 setPixelBufferPoolProvidesBackPressure:v16->_backPressureDrivenPipelining];
    [(BWNodeOutputMediaConfiguration *)v28 setPixelBufferPoolReportSlowBackPressureAllocations:v16->_backPressureDrivenPipelining];
    [(BWNodeOutput *)v26 setMediaConfiguration:v28 forAttachedMediaKey:@"Depth"];
    [(BWNode *)v16 addOutput:v26];

    v16->_forceCPath = 0;
  }

  return v16;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  fixedPointScaledIntermediateBuffer = self->_fixedPointScaledIntermediateBuffer;
  if (fixedPointScaledIntermediateBuffer)
  {
    CFRelease(fixedPointScaledIntermediateBuffer);
  }

  fixedPointRotatedIntermediateBuffer = self->_fixedPointRotatedIntermediateBuffer;
  if (fixedPointRotatedIntermediateBuffer)
  {
    CFRelease(fixedPointRotatedIntermediateBuffer);
  }

  filteringInputBuffer = self->_filteringInputBuffer;
  if (filteringInputBuffer)
  {
    CFRelease(filteringInputBuffer);
  }

  filteringOutputBuffer = self->_filteringOutputBuffer;
  if (filteringOutputBuffer)
  {
    CFRelease(filteringOutputBuffer);
  }

  streamingFilteringScaledDepthInputBuffer = self->_streamingFilteringScaledDepthInputBuffer;
  if (streamingFilteringScaledDepthInputBuffer)
  {
    CFRelease(streamingFilteringScaledDepthInputBuffer);
  }

  streamingFilteringScaledDepthOutputBuffer = self->_streamingFilteringScaledDepthOutputBuffer;
  if (streamingFilteringScaledDepthOutputBuffer)
  {
    CFRelease(streamingFilteringScaledDepthOutputBuffer);
  }

  filteringScaledYUVBuffer = self->_filteringScaledYUVBuffer;
  if (filteringScaledYUVBuffer)
  {
    CFRelease(filteringScaledYUVBuffer);
  }

  unfilteredDepthFormatDescription = self->_unfilteredDepthFormatDescription;
  if (unfilteredDepthFormatDescription)
  {
    CFRelease(unfilteredDepthFormatDescription);
  }

  unfilteredDepthTransferSession = self->_unfilteredDepthTransferSession;
  if (unfilteredDepthTransferSession)
  {
    CFRelease(unfilteredDepthTransferSession);
  }

  scaler = self->_scaler;
  if (scaler)
  {
    CFRelease(scaler);
    self->_scaler = 0;
  }

  v14.receiver = self;
  v14.super_class = BWDepthConverterNode;
  [(BWNode *)&v14 dealloc];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  if ([a5 isEqualToString:@"PrimaryFormat"])
  {
    output = self->super._output;

    [(BWNodeOutput *)output setFormat:a3];
  }

  else if ([a5 isEqualToString:@"Depth"])
  {
    v10 = [a3 dimensions];
    self->_inputDepthDimensions = v10;
    if (!self->_depthProcessingEnabled)
    {
      baseRotationDegrees = self->_baseRotationDegrees;
      v16 = __ROR8__(v10, 32);
      if (baseRotationDegrees == 180)
      {
        v16 = v10;
      }

      if (baseRotationDegrees)
      {
        v17 = v16;
      }

      else
      {
        v17 = v10;
      }

      self->_outputDimensions = v17;
      [(BWDepthConverterNode *)self _updateOutputRequirements];
    }

    if (self->_providesUnfilteredDepthAsAttachedMedia)
    {
      v11 = [(BWNodeOutput *)self->super._output mediaConfigurationForAttachedMediaKey:@"Depth"];
      if (v11)
      {
        v12 = v11;
        v13 = objc_alloc_init(BWNodeOutputMediaConfiguration);
        -[BWNodeOutputMediaConfiguration setFormatRequirements:](v13, "setFormatRequirements:", [v12 formatRequirements]);
        [(BWNodeOutputMediaConfiguration *)v13 setPassthroughMode:0];
        [(BWNodeOutputMediaConfiguration *)v13 setProvidesPixelBufferPool:1];
        v14 = self->super._output;

        [(BWNodeOutput *)v14 setMediaConfiguration:v13 forAttachedMediaKey:0x1F21AAAB0];
      }
    }
  }

  else if (([a5 isEqualToString:0x1F21AAC70] & 1) == 0 && (objc_msgSend(a5, "isEqualToString:", 0x1F21AAC90) & 1) == 0)
  {
    v18.receiver = self;
    v18.super_class = BWDepthConverterNode;
    [(BWNode *)&v18 didSelectFormat:a3 forInput:a4 forAttachedMediaKey:a5];
  }
}

- (void)setOutputFormat:(unsigned int)a3
{
  if (self->_outputFormat != a3)
  {
    self->_outputFormat = a3;
    [(BWDepthConverterNode *)self _updateOutputRequirements];
  }
}

- (void)setOutputDimensions:(id)a3
{
  if (self->_outputDimensions.width != a3.var0 || self->_outputDimensions.height != a3.var1)
  {
    self->_outputDimensions = a3;
    [(BWDepthConverterNode *)self _updateOutputRequirements];
  }
}

- (uint64_t)_updateOutputRequirements
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v3 = objc_alloc_init(BWVideoFormatRequirements);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v1 + 184)];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v3, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:1]);
    [(BWVideoFormatRequirements *)v3 setWidth:*(v1 + 188)];
    [(BWVideoFormatRequirements *)v3 setHeight:*(v1 + 192)];
    [(BWNodeOutputMediaConfiguration *)v2 setFormatRequirements:v3];
    [(BWNodeOutputMediaConfiguration *)v2 setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)v2 setProvidesPixelBufferPool:1];
    [(BWNodeOutputMediaConfiguration *)v2 setPixelBufferPoolProvidesBackPressure:*(v1 + 196)];
    [(BWNodeOutputMediaConfiguration *)v2 setPixelBufferPoolReportSlowBackPressureAllocations:*(v1 + 196)];
    return [*(v1 + 16) setMediaConfiguration:v2 forAttachedMediaKey:@"Depth"];
  }

  return result;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  if (self->_depthProcessingEnabled)
  {
    v3 = self->_streamingGDRFilteringEnabled || self->_streamingSMPFilteringEnabled || self->_stillGDRFilteringSupportEnabled;
  }

  else
  {
    v3 = 0;
  }

  if ([(BWDepthConverterNode *)self _parseCameraInfo])
  {
    OUTLINED_FUNCTION_1_5();
LABEL_77:
    FigDebugAssert3();
    return;
  }

  if (!self->_depthValueMultiplier && [(BWStillImageNodeConfiguration *)self->_stillImageNodeConfiguration depthDataType]== 10)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

    self->_metalContext = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:v4 andOptionalCommandQueue:{-[BWStillImageNodeConfiguration metalCommandQueue](self->_stillImageNodeConfiguration, "metalCommandQueue")}];
    self->_depthValueMultiplier = [[FigDepthValueMultiplier alloc] initWithMetalContext:self->_metalContext];
    if (!self->_monocularStillsPipeline)
    {
      v5 = objc_alloc_init(getADMonocularStillsPipelineParametersClass());
      if (!v5)
      {
        return;
      }

      v6 = [objc_alloc(getADMonocularStillsPipelineClass()) initWithParameters:v5];
      self->_monocularStillsPipeline = v6;
      if (!v6)
      {
        return;
      }
    }
  }

  streamingFilteringScaledDepthInputBuffer = self->_streamingFilteringScaledDepthInputBuffer;
  if (streamingFilteringScaledDepthInputBuffer)
  {
    CFRelease(streamingFilteringScaledDepthInputBuffer);
    self->_streamingFilteringScaledDepthInputBuffer = 0;
  }

  streamingFilteringScaledDepthOutputBuffer = self->_streamingFilteringScaledDepthOutputBuffer;
  if (streamingFilteringScaledDepthOutputBuffer)
  {
    CFRelease(streamingFilteringScaledDepthOutputBuffer);
    self->_streamingFilteringScaledDepthOutputBuffer = 0;
  }

  filteringInputBuffer = self->_filteringInputBuffer;
  if (filteringInputBuffer)
  {
    CFRelease(filteringInputBuffer);
    self->_filteringInputBuffer = 0;
  }

  filteringOutputBuffer = self->_filteringOutputBuffer;
  if (filteringOutputBuffer)
  {
    CFRelease(filteringOutputBuffer);
    self->_filteringOutputBuffer = 0;
  }

  filteringScaledYUVBuffer = self->_filteringScaledYUVBuffer;
  if (filteringScaledYUVBuffer)
  {
    CFRelease(filteringScaledYUVBuffer);
    self->_filteringScaledYUVBuffer = 0;
  }

  inputDepthDimensions = self->_inputDepthDimensions;
  p_outputDimensions = &self->_outputDimensions;
  outputDimensions = self->_outputDimensions;
  v45 = inputDepthDimensions;
  if (inputDepthDimensions != *&outputDimensions)
  {
    v14 = FigCaptureNormalizeAngle(self->_baseRotationDegrees - self->_rotationDegrees);
    FigCaptureSwapVideoDimensionsFor90Or270Rotation(&v45, v14);
    FigCaptureSwapVideoDimensionsFor90Or270Rotation(&outputDimensions, v14);
    if (!FigCaptureVideoAspectRatiosAreEqual(*&v45, *p_outputDimensions, 0.01))
    {
      self->_inputCropRect.origin.x = FigCaptureMakeRectWithAspectRatioInsideDimensions(*&self->_inputDepthDimensions, 1, outputDimensions.i32[0] / outputDimensions.i32[1]);
      self->_inputCropRect.origin.y = v15;
      self->_inputCropRect.size.width = v16;
      self->_inputCropRect.size.height = v17;
    }
  }

  v18 = MEMORY[0x1E695E480];
  if (v3)
  {
    v19 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    if (self->_streamingGDRFilteringEnabled || self->_streamingSMPFilteringEnabled)
    {
      self->_depthProcessorClassName = @"FigStreamingDepthProcessorCPU";
      v20 = 1717856627;
      OUTLINED_FUNCTION_33();
      if (v27)
      {
        if (v24 <= v25)
        {
          v28 = v25;
        }

        else
        {
          v28 = v24;
        }

        v29 = 320.0 / v28;
        if (v29 == 1.0)
        {
          height = v25;
          v42 = v24;
          v35 = 1717856627;
        }

        else
        {
          v30 = (v29 * v24);
          v31 = (v29 * v25);
          v32 = OUTLINED_FUNCTION_17_28(v21, v22, v23, &self->_streamingFilteringScaledDepthInputBuffer, @"DepthConverter: Scaled Depth Input");
          if (v32 || (height = v31, v42 = v30, v35 = 1717856627, OUTLINED_FUNCTION_17_28(v32, v33, v34, &self->_streamingFilteringScaledDepthOutputBuffer, @"DepthConverter: Scaled Depth Output")))
          {
LABEL_76:
            OUTLINED_FUNCTION_1_5();
            goto LABEL_77;
          }
        }
      }

      else
      {
        height = v25;
        v42 = v24;
        v36 = *(v26 + 1212);
        if (FigDepthFormatIsDisparity(*(&self->super.super.isa + v36)))
        {
          v35 = 1717856627;
        }

        else
        {
          v35 = 1717855600;
        }

        if (FigDepthFormatIsDisparity(*(&self->super.super.isa + v36)))
        {
          v20 = 1717856627;
        }

        else
        {
          v20 = 1717855600;
        }
      }

      OUTLINED_FUNCTION_33();
      if (v27)
      {
        v39 = [(BWNodeConnection *)[(BWNodeInput *)self->super._input connection] pipelineStage];
        v18 = MEMORY[0x1E695E480];
        if (v39)
        {
          [(BWPipelineStage *)[(BWNodeConnection *)[(BWNodeInput *)self->super._input connection] pipelineStage] priority];
        }

        self->_depthProcessorWorkerQueue = FigDispatchQueueCreateWithPriority();
      }

      else
      {
        v18 = MEMORY[0x1E695E480];
      }

      v19 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    }

    else
    {
      v20 = 1751411059;
      if (self->_depthOriginatesFromNeuralNetwork)
      {
        v38 = @"FigStillDepthProcessorANE";
      }

      else
      {
        v38 = @"FigStillDepthProcessorGPU";
      }

      if (self->_depthOriginatesFromNeuralNetwork)
      {
        v35 = 1717855600;
      }

      else
      {
        v35 = 1751411059;
      }

      self->_depthProcessorClassName = &v38->isa;
      height = self->_outputDimensions.height;
      v42 = *p_outputDimensions;
    }

    self->_conversionAfterFilteringRequired = *(&self->super.super.isa + v19[303]) != v20;
    if (!BWCreateIOSurfaceBackedCVPixelBuffer(*p_outputDimensions, self->_outputDimensions.height, v35, &self->_filteringInputBuffer, @"DepthConverter: Filtering Input") && (!self->_conversionAfterFilteringRequired || !BWCreateIOSurfaceBackedCVPixelBuffer(*p_outputDimensions, self->_outputDimensions.height, v20, &self->_filteringOutputBuffer, @"DepthConverter: Filtering Output")) && (self->_scaler || !CMPhotoScaleAndRotateSessionCreate()))
    {
      v40 = FigCapturePixelFormatIsFullRange([(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] pixelFormat]) ? 875704422 : 875704438;
      if (!BWCreateIOSurfaceBackedCVPixelBuffer(v42, height, v40, &self->_filteringScaledYUVBuffer, @"DepthConverter: Scaled YUV"))
      {
        if (!self->_depthProcessor && [(BWDepthConverterNode *)self _loadAndConfigureDepthProcessorClass:?])
        {
          return;
        }

        goto LABEL_68;
      }
    }

    goto LABEL_76;
  }

LABEL_68:
  OUTLINED_FUNCTION_33();
  if (!v27 || !VTPixelTransferSessionCreate(*v18, &self->_unfilteredDepthTransferSession))
  {
    v43.receiver = self;
    v43.super_class = BWDepthConverterNode;
    [(BWNode *)&v43 prepareForCurrentConfigurationToBecomeLive];
  }
}

- (uint64_t)_parseCameraInfo
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [*(result + 152) objectForKeyedSubscript:*off_1E798A0E8];
  v3 = *(v1 + 152);
  if (v2)
  {
    v4 = *off_1E798A0E0;
    if ([v3 objectForKeyedSubscript:*off_1E798A0E0])
    {
      v5 = v4;
    }

    else
    {
      v5 = *off_1E798A0F8;
    }

    v6 = [*(v1 + 152) objectForKeyedSubscript:v5];
    v7 = [v6 objectForKeyedSubscript:*off_1E7989EC0];
    *(v1 + 272) = 1;
    *(v1 + 553) = 1;
    [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E7989F18), "floatValue"}];
    *(v1 + 408) = v8;
    goto LABEL_17;
  }

  v9 = *off_1E798A0C0;
  if ([v3 objectForKeyedSubscript:*off_1E798A0C0] && (v10 = OUTLINED_FUNCTION_7_57(), v11 = *off_1E798A0D8, objc_msgSend(v10, "objectForKeyedSubscript:", *off_1E798A0D8)))
  {
    v7 = [objc_msgSend(OUTLINED_FUNCTION_7_57() objectForKeyedSubscript:{v11), "objectForKeyedSubscript:", *off_1E7989EC0}];
    v12 = OUTLINED_FUNCTION_7_57();
    v13 = v11;
  }

  else
  {
    if (![OUTLINED_FUNCTION_7_57() objectForKeyedSubscript:v9] || !objc_msgSend(OUTLINED_FUNCTION_7_57(), "objectForKeyedSubscript:", *off_1E798A0D0))
    {
      if ([OUTLINED_FUNCTION_7_57() count] != 1)
      {
        return 4294954514;
      }

      v16 = [objc_msgSend(OUTLINED_FUNCTION_7_57() "allValues")];
      v7 = [v16 objectForKeyedSubscript:*off_1E7989EC0];
      v15 = *off_1E7989F18;
      v14 = v16;
      goto LABEL_16;
    }

    v7 = [objc_msgSend(OUTLINED_FUNCTION_7_57() objectForKeyedSubscript:{v9), "objectForKeyedSubscript:", *off_1E7989EC0}];
    v12 = OUTLINED_FUNCTION_7_57();
    v13 = v9;
  }

  v14 = [v12 objectForKeyedSubscript:v13];
  v15 = *off_1E7989F18;
LABEL_16:
  [objc_msgSend(v14 objectForKeyedSubscript:{v15), "floatValue"}];
  *(v1 + 408) = v17;
  *(v1 + 272) = 0;
LABEL_17:
  *(v1 + 208) = 1065353216;
  *(v1 + 228) = 1065353216;
  *(v1 + 248) = 1065353216;
  if (*(v1 + 489))
  {
    return 0;
  }

  if (v7)
  {
    v18 = [v7 objectForKeyedSubscript:*off_1E798ADC0];
    if ([v18 length] != 64 || (v19 = objc_msgSend(v18, "bytes"), v20 = v19[3], v22 = *v19, v21 = v19[1], *(v1 + 312) = v19[2], *(v1 + 328) = v20, *(v1 + 280) = v22, *(v1 + 296) = v21, v23 = objc_msgSend(v7, "objectForKeyedSubscript:", *off_1E798ADC8), objc_msgSend(v23, "length") != 64))
    {
      OUTLINED_FUNCTION_1_8();
      FigDebugAssert3();
      return 0;
    }

    v24 = [v23 bytes];
    result = 0;
    v25 = v24[3];
    v27 = *v24;
    v26 = v24[1];
    *(v1 + 376) = v24[2];
    *(v1 + 392) = v25;
    *(v1 + 344) = v27;
    *(v1 + 360) = v26;
    *(v1 + 276) = 1;
  }

  else
  {

    return FigSignalErrorAtGM();
  }

  return result;
}

- (uint64_t)_loadAndConfigureDepthProcessorClass:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v13 = 0;
    Height = 0;
    BytesPerRow = 0;
    *(result + 600) = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters depthProcessorVersion];
    if (*(v3 + 600))
    {
      v4 = [*(v3 + 624) pearlModuleType];
      v5 = *(v3 + 600);
      if (v4 == 2 && v5 < 2)
      {
        return 4294954516;
      }

      v7 = BWLoadProcessorBundle(@"DepthProcessor", v5);
      if (!v7)
      {
        return 4294954510;
      }

      v8 = v7;
      v9 = *(v3 + 520);
      if (v9 && *(v3 + 528))
      {
        Width = CVPixelBufferGetWidth(v9);
        v11 = &OBJC_IVAR___BWDepthConverterNode__streamingFilteringScaledDepthInputBuffer;
      }

      else
      {
        v11 = &OBJC_IVAR___BWDepthConverterNode__filteringInputBuffer;
        Width = CVPixelBufferGetWidth(*(v3 + 512));
      }

      v13 = Width;
      Height = CVPixelBufferGetHeight(*(v3 + *v11));
      BytesPerRow = CVPixelBufferGetBytesPerRow(*(v3 + *v11));
      v12 = [objc_alloc(objc_msgSend(v8 classNamed:{a2)), "initWithParameters:commandQueue:", &v13, objc_msgSend(*(v3 + 624), "metalCommandQueue")}];
      *(v3 + 592) = v12;
      if (!v12)
      {
        return 4294954510;
      }

      if ([a2 isEqualToString:@"FigStillDepthProcessorGPU"] || objc_msgSend(a2, "isEqualToString:", @"FigStillDepthProcessorANE"))
      {
        result = [*(v3 + 592) setTuningParameters:{objc_msgSend(*(v3 + 144), "objectForKeyedSubscript:", @"DepthProcessingParameters"}];
        if (result)
        {
          return result;
        }
      }

      else if ([a2 isEqualToString:@"FigStreamingDepthProcessorCPU"])
      {
        [OUTLINED_FUNCTION_6_63() setCameraInfoByPortType:?];
        if (*(v3 + 600) >= 2)
        {
          OUTLINED_FUNCTION_6_63();
          if (objc_opt_respondsToSelector())
          {
            [OUTLINED_FUNCTION_6_63() setStreamingGDRFilterEnabled:?];
          }

          OUTLINED_FUNCTION_6_63();
          if (objc_opt_respondsToSelector())
          {
            [OUTLINED_FUNCTION_6_63() setStreamingSMPFilterEnabled:?];
          }

          OUTLINED_FUNCTION_6_63();
          if (objc_opt_respondsToSelector())
          {
            [OUTLINED_FUNCTION_6_63() setWorkerQueue:?];
          }
        }
      }

      if (([OUTLINED_FUNCTION_6_63() allocateResources] & 1) == 0)
      {
        return 4294954510;
      }
    }

    return 0;
  }

  return result;
}

- (uint64_t)_computeConversionParametersFromSampleBuffer:(uint64_t)a3 convertOptionsOut:
{
  if (!a1)
  {
    return 0;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(ImageBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(ImageBuffer);
  if (Width && Height && BytesPerRow && *(a1 + 188) && *(a1 + 192))
  {
    v10 = CMGetAttachment(sbuf, @"DepthPixelBufferType", 0);
    Attributes = CVPixelBufferGetAttributes();
    *(a3 + 12) = [objc_msgSend(Attributes objectForKeyedSubscript:{*MEMORY[0x1E69660A8]), "shortValue"}];
    if ([v10 isEqualToString:*off_1E798ABB0])
    {
      FixedPointFractionalBits = CVPixelBufferGetFixedPointFractionalBits();
      v13 = 1;
      v14 = (1.0 / (1 << FixedPointFractionalBits)) * 0.001;
      *(a3 + 4) = 0;
    }

    else
    {
      v15 = CMGetAttachment(sbuf, *off_1E798A328, 0);
      [objc_msgSend(v15 objectForKeyedSubscript:{*off_1E798ABC0), "floatValue"}];
      *(a3 + 4) = v16;
      [objc_msgSend(v15 objectForKeyedSubscript:{*off_1E798ABB8), "floatValue"}];
      v13 = 0;
    }

    *(a3 + 8) = v14;
    *(a3 + 16) = v13;
    v17 = FigCaptureNormalizeAngle(*(a1 + 412) + [objc_msgSend(Attributes objectForKeyedSubscript:{*MEMORY[0x1E69661F0]), "intValue"}] - *(a1 + 416));
    if (v17)
    {
      v18 = 360 - v17;
    }

    else
    {
      v18 = 0;
    }

    *a3 = FigCaptureConvertRotationAndMirroringToExifOrientation(v18, *(a1 + 420));
    return 0;
  }

  return FigSignalErrorAtGM();
}

- (uint64_t)_depthMetadataDictionaryFromSampleBuffer:(int)a3 orientation:(int)a4 stillFilteringRequested:
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = *off_1E798A3C8;
  v9 = CMGetAttachment(target, *off_1E798A3C8, 0);
  CMSampleBufferGetPresentationTimeStamp(&time, target);
  Seconds = CMTimeGetSeconds(&time);
  v11 = *(v7 + 138);
  if (*(v7 + 553))
  {
    if ([+[FigCaptureCameraParameters portraitTapToRefocusPrevented:Seconds]])
    {
      v12 = 21002;
    }

    else
    {
      v12 = 20002;
    }

    v13 = v12 | (FigDepthDataGetCurrentMajorVersion() << 16);
    v14 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_33();
    if (v15)
    {
      if ([*(v7 + 624) depthDataType] == 10)
      {
        v16 = 40002;
      }

      else
      {
        v16 = 40001;
      }
    }

    else
    {
      v16 = 10001;
    }

    v13 = v16 | (FigDepthDataGetCurrentMajorVersion() << 16);
    v14 = *(v7 + 489);
  }

  v17 = v11 & a4;
  if (*(v7 + 488) & 1) == 0 && (*(v7 + 136) & v17)
  {
    v14 = [*(v7 + 592) figDepthQuality];
  }

  *&time.value = *MEMORY[0x1E695F060];
  v18 = CMGetAttachment(target, @"OriginalCameraIntrinsicMatrixReferenceDimensions", 0);
  if (!v18 || (v19 = v18, !CGSizeMakeWithDictionaryRepresentation(v18, &time)))
  {
    OUTLINED_FUNCTION_16_0();
LABEL_48:
    FigDebugAssert3();
    return 0;
  }

  v52 = *MEMORY[0x1E695EFF8];
  if (*(v7 + 276) == 1)
  {
    if (FigMotionComputeDistortionCenter(v9, *&time.value, *&time.timescale, *(v7 + 456), *(v7 + 460), &v52, 1.0 / *(v7 + 408), 1.0))
    {
      OUTLINED_FUNCTION_1_5();
      goto LABEL_48;
    }

    v20 = [(__CFDictionary *)v9 objectForKeyedSubscript:*off_1E798B260];
    LODWORD(v21) = 1.0;
    if (v20)
    {
      [v20 floatValue];
    }

    v22 = vmlaq_n_f32(*(v7 + 280), *(v7 + 344), *&v21);
    v23 = vmlaq_n_f32(*(v7 + 328), *(v7 + 392), *&v21);
    v24 = vmlaq_n_f32(*(v7 + 296), *(v7 + 360), *&v21);
    v51[0] = vmlaq_n_f32(*(v7 + 312), *(v7 + 376), *&v21);
    v51[1] = v23;
    v50[0] = v22;
    v50[1] = v24;
  }

  v25 = CMGetAttachment(target, @"OriginalCameraIntrinsicMatrix", 0);
  if (!v25)
  {
    OUTLINED_FUNCTION_16_0();
    goto LABEL_48;
  }

  v26 = v25;
  v47 = a3;
  AttachedMedia = BWSampleBufferGetAttachedMedia(target, @"Depth");
  v28 = CMGetAttachment(AttachedMedia, v8, 0);
  v29 = *off_1E798CFD0;
  v46 = v17;
  if ([v28 objectForKeyedSubscript:*off_1E798CFD0])
  {
    v30 = 1;
  }

  else
  {
    v30 = *(v7 + 137) | v17;
  }

  v31 = [MEMORY[0x1E695DF90] dictionary];
  [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v14), *off_1E798D008}];
  [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v30 & 1), v29}];
  [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(v7 + 272)), *off_1E798CFC0}];
  *&v32 = *(v7 + 408) * 0.001;
  [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v32), *off_1E798D000}];
  [v31 setObject:v26 forKeyedSubscript:*off_1E798CFD8];
  [v31 setObject:v19 forKeyedSubscript:*off_1E798CFE0];
  [v31 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", v7 + 208, 64), *off_1E798CFC8}];
  OUTLINED_FUNCTION_33();
  if (v15)
  {
    [v31 setObject:CGPointCreateDictionaryRepresentation(v52) forKeyedSubscript:*off_1E798CFF0];
    [v31 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", v51, 32), *off_1E798CFF8}];
    [v31 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", v50, 32), *off_1E798CFE8}];
  }

  [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v13), *off_1E798D010}];
  if (FigDepthRotateMetadataDictionary(v31, v47, 1))
  {
    FigSignalErrorAtGM();
    return 0;
  }

  if (v46)
  {
    v33 = 1.0;
    if (*(v7 + 136) == 1)
    {
      v34 = [OUTLINED_FUNCTION_6_63() disparityQualityIsHigh];
      if (*(v7 + 136))
      {
        [OUTLINED_FUNCTION_6_63() disparityQualityScore];
        v33 = v35;
      }
    }

    else
    {
      v34 = 1;
    }

    [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v34), *off_1E798D020}];
    *&v36 = v33;
    [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v36), *off_1E798D018}];
  }

  v48 = *MEMORY[0x1E695F050];
  v49 = *(MEMORY[0x1E695F050] + 16);
  v37 = *off_1E798A598;
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    FigCaptureMetadataUtilitiesUpdateDepthDataMetadataForStillImageCropAndScale(v31, *&v48, *(&v48 + 1), *&v49, *(&v49 + 1), 1.0);
    [v28 removeObjectForKey:v37];
  }

  v54.origin.x = OUTLINED_FUNCTION_8_48(v7 + 424);
  if (!CGRectIsNull(v54))
  {
    v38 = OUTLINED_FUNCTION_8_48(v7 + 424);
    FigCaptureMetadataUtilitiesNormalizeCropRect(v38, v39, v40, v41);
    FigCaptureMetadataUtilitiesUpdateDepthDataMetadataForStillImageCropAndScale(v31, v42, v43, v44, v45, 1.0);
  }

  return [MEMORY[0x1E695DF20] dictionaryWithDictionary:v31];
}

- (uint64_t)convertToFloatAndRotateAndCrop:(__CVBuffer *)a3 outputPixelBuffer:
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_16_2();
  if (v6)
  {
    OUTLINED_FUNCTION_9_29();
    kdebug_trace();
  }

  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  v8 = [(BWDepthConverterNode *)a1 _computeConversionParametersFromSampleBuffer:a2 convertOptionsOut:v26];
  if (v8)
  {
    v24 = v8;
    OUTLINED_FUNCTION_1_5();
  }

  else
  {
    if ((*(a1 + 160) & 1) != 0 || (Width = CVPixelBufferGetWidth(ImageBuffer), Height = CVPixelBufferGetHeight(ImageBuffer), BytesPerRow = CVPixelBufferGetBytesPerRow(ImageBuffer), v12 = CVPixelBufferGetWidth(a3), v13 = CVPixelBufferGetHeight(a3), v14 = CVPixelBufferGetBytesPerRow(a3), ((Width | Height) & 7) != 0) || (v12 & 7) != 0 || (v13 & 7) != 0 || (BytesPerRow & 0xF) != 0 || (v14 & 0xF) != 0)
    {
      v20 = OUTLINED_FUNCTION_14_34();
      v19 = [(BWDepthConverterNode *)v20 _convertDepthDisparityToFloat_C:v21 dst:v22 options:v23];
    }

    else
    {
      v15 = OUTLINED_FUNCTION_14_34();
      v19 = [(BWDepthConverterNode *)v15 _convertDepthDisparityToFloat_NEON:v16 dst:v17 options:v18];
    }

    v24 = v19;
    if (!v19)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_1_8();
  }

  FigDebugAssert3();
LABEL_15:
  OUTLINED_FUNCTION_16_2();
  if (v6)
  {
    OUTLINED_FUNCTION_9_29();
    kdebug_trace();
  }

  return v24;
}

- (uint64_t)_convertDepthDisparityToFloat_NEON:(__CVBuffer *)a3 dst:(int *)a4 options:
{
  if (!a1)
  {
    return 0;
  }

  v6 = pixelBuffer;
  pixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  Width = CVPixelBufferGetWidth(v6);
  Height = CVPixelBufferGetHeight(v6);
  v10 = CVPixelBufferGetWidth(a3);
  v11 = CVPixelBufferGetHeight(a3);
  v13 = v11;
  v14 = *a4;
  v16 = Width != v10 || Height != v11;
  if (v14 != 1 || v16)
  {
    v17 = v14 - 5;
    v19 = Width != v11 || Height != v10;
    if (v17 >= 4)
    {
      v20 = v10;
    }

    else
    {
      v20 = v11;
    }

    if (v17 >= 4)
    {
      v21 = v11;
    }

    else
    {
      v21 = v10;
    }

    if (v17 < 4)
    {
      LOBYTE(v16) = v19;
    }

    if (v16 || (v33.origin.x = OUTLINED_FUNCTION_8_48(a1 + 424), !CGRectIsNull(v33)))
    {
      v22 = *(a1 + 496);
      if (!v22 || CVPixelBufferGetWidth(v22) != v20 || CVPixelBufferGetHeight(*(a1 + 496)) != v21 || CVPixelBufferGetPixelFormatType(*(a1 + 496)) != pixelFormatType)
      {
        CVPixelBufferRelease(*(a1 + 496));
        *(a1 + 496) = 0;
        v23 = CVPixelBufferCreate(0, v20, v21, pixelFormatType, 0, (a1 + 496));
        if (v23)
        {
          goto LABEL_46;
        }
      }

      v34.origin.x = OUTLINED_FUNCTION_8_48(a1 + 424);
      if (CGRectIsNull(v34))
      {
        FigDepthScaleBuffer(v6, *(a1 + 496));
      }

      else
      {
        v24 = OUTLINED_FUNCTION_8_48(a1 + 424);
        FigDepthScaleBufferWithCrop(v6, v25, v24, v26, v27, v28);
      }

      v6 = *(a1 + 496);
    }

    if (v14 == 1)
    {
      goto LABEL_43;
    }

    v29 = *(a1 + 504);
    if (v29 && CVPixelBufferGetWidth(v29) == v10 && CVPixelBufferGetHeight(*(a1 + 504)) == v13 && CVPixelBufferGetPixelFormatType(*(a1 + 504)) == pixelFormatType || (CVPixelBufferRelease(*(a1 + 504)), *(a1 + 504) = 0, v23 = CVPixelBufferCreate(0, v10, v13, pixelFormatType, 0, (a1 + 504)), !v23))
    {
      v23 = FigDepthRotateBuffer(v6, *(a1 + 504), v14);
      if (!v23)
      {
        v6 = *(a1 + 504);
        goto LABEL_43;
      }
    }

LABEL_46:
    v30 = v23;
    OUTLINED_FUNCTION_1_5();
    goto LABEL_47;
  }

LABEL_43:
  v30 = dcn_convertU16toFloatForImage_NEON(v6, a3, a4, v12);
  if (v30)
  {
    OUTLINED_FUNCTION_1_8();
LABEL_47:
    FigDebugAssert3();
  }

  return v30;
}

- (uint64_t)_convertDepthDisparityToFloat_C:(__CVBuffer *)a3 dst:(uint64_t)a4 options:
{
  if (!a1)
  {
    return 0;
  }

  v6 = pixelBuffer;
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(v6);
  v10 = CVPixelBufferGetWidth(a3);
  v11 = CVPixelBufferGetHeight(a3);
  v12 = *a4 - 5;
  if (v12 >= 4)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  v63 = v11;
  v64 = v10;
  if (v12 >= 4)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (Width != v14 || Height != v13)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(v6);
    v17 = *(a1 + 496);
    if (!v17 || CVPixelBufferGetWidth(v17) != v14 || CVPixelBufferGetHeight(*(a1 + 496)) != v13 || CVPixelBufferGetPixelFormatType(*(a1 + 496)) != PixelFormatType)
    {
      v18 = *(a1 + 496);
      if (v18)
      {
        CFRelease(v18);
        *(a1 + 496) = 0;
      }

      v19 = CVPixelBufferCreate(0, v14, v13, PixelFormatType, 0, (a1 + 496));
      if (v19)
      {
        goto LABEL_65;
      }
    }

    v67.origin.x = OUTLINED_FUNCTION_8_48(a1 + 424);
    if (CGRectIsNull(v67))
    {
      FigDepthScaleBuffer(v6, *(a1 + 496));
    }

    else
    {
      v20 = OUTLINED_FUNCTION_8_48(a1 + 424);
      FigDepthScaleBufferWithCrop(v6, v21, v20, v22, v23, v24);
    }

    v6 = *(a1 + 496);
  }

  v19 = CVPixelBufferLockBaseAddress(v6, 1uLL);
  if (v19)
  {
LABEL_65:
    v55 = v19;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3();
    return v55;
  }

  v25 = CVPixelBufferLockBaseAddress(a3, 0);
  if (v25)
  {
    v55 = v25;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3();
    v56 = v6;
    v57 = 1;
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(v6);
    if (BaseAddress && (v27 = BaseAddress, (v28 = CVPixelBufferGetBaseAddress(a3)) != 0))
    {
      v65 = v28;
      v29 = CVPixelBufferGetWidth(v6);
      v30 = CVPixelBufferGetHeight(v6);
      BytesPerRow = CVPixelBufferGetBytesPerRow(v6);
      v61 = CVPixelBufferGetBytesPerRow(a3);
      v32 = CVPixelBufferGetPixelFormatType(a3);
      v33 = FigDepthBytesPerPixelForDepthFormat(v32);
      v34 = *(a4 + 12);
      if (FigDepthFormatIsDepth(v32))
      {
        v35 = *(a4 + 16) ^ 1u;
      }

      else
      {
        v35 = 0;
      }

      v36 = 0;
      v38 = *(a4 + 4);
      v37 = *(a4 + 8);
      LODWORD(v39) = *a4;
      LODWORD(v40) = BytesPerRow;
      switch(*a4)
      {
        case 1:
          v36 = 0;
          v41 = 0;
          LODWORD(v39) = 2;
          LODWORD(v40) = BytesPerRow;
          goto LABEL_40;
        case 2:
          goto LABEL_37;
        case 3:
        case 4:
          v40 = -BytesPerRow;
          v36 = (v30 - 1) * BytesPerRow + 2 * v29 - 2;
          LODWORD(v39) = -2;
          if (*a4 == 4)
          {
            goto LABEL_37;
          }

          goto LABEL_34;
        case 5:
        case 6:
          v39 = -BytesPerRow;
          v36 = (v30 - 1) * BytesPerRow;
          LODWORD(v40) = 2;
          if (*a4 == 5)
          {
            goto LABEL_37;
          }

LABEL_34:
          v41 = 0;
          goto LABEL_40;
        case 7:
        case 8:
          v36 = 2 * v29 - 2;
          LODWORD(v40) = -2;
          if (v39 == 7)
          {
            LODWORD(v39) = BytesPerRow;
LABEL_37:
            v42 = -v33;
            v41 = v33 * (v64 - 1);
          }

          else
          {
            v41 = 0;
            LODWORD(v39) = BytesPerRow;
LABEL_40:
            LODWORD(v42) = v33;
          }

LABEL_41:
          if (v63)
          {
            v59 = a3;
            v60 = v6;
            v43 = 0;
            v44 = &v65[v41];
            v45 = &v27[v36];
            v46 = v39;
            v47 = v42;
            v62 = v40;
            do
            {
              v66 = v43;
              if (v64)
              {
                v48 = 0;
                v49 = 0;
                v50 = v64;
                do
                {
                  v51 = *&v45[v48];
                  if (v51 == v34)
                  {
                    if (v33 == 2)
                    {
                      *&v44[v49] = 0x7FFF;
                    }

                    else
                    {
                      *&v44[v49] = 2143289344;
                    }
                  }

                  else
                  {
                    v52 = fmaxf(v38 + (v51 * v37), 0.0);
                    if ((v35 & (v52 != 0.0)) != 0)
                    {
                      v52 = 1.0 / v52;
                    }

                    if (v33 == 2)
                    {
                      v53 = v35;
                      v54 = FigFloat32ConvertToFloat16();
                      v35 = v53;
                      *&v44[v49] = v54;
                    }

                    else
                    {
                      *&v44[v49] = v52;
                    }
                  }

                  v49 += v47;
                  v48 += v46;
                  --v50;
                }

                while (v50);
              }

              v45 += v62;
              v44 += v61;
              v43 = v66 + 1;
            }

            while (v66 + 1 != v63);
            v55 = 0;
            a3 = v59;
            v6 = v60;
          }

          else
          {
            v55 = 0;
          }

          break;
        default:
          LODWORD(v40) = 0;
          LODWORD(v39) = 0;
          LODWORD(v42) = v33;
          v41 = 0;
          goto LABEL_41;
      }
    }

    else
    {
      v55 = FigSignalErrorAtGM();
    }

    CVPixelBufferUnlockBaseAddress(v6, 1uLL);
    v56 = a3;
    v57 = 0;
  }

  CVPixelBufferUnlockBaseAddress(v56, v57);
  return v55;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v46 = 0;
  v6 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_9_29();
    kdebug_trace();
  }

  v7 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  sbuf = a3;
  if (self)
  {
    if (self->_stillGDRFilteringSupportEnabled)
    {
      v8 = CMGetAttachment(a3, @"BWStillImageCaptureSettings", 0);
      if (!v8)
      {
        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v8 = 0;
        v11 = 0;
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v41 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(FrameworkRadarComponent, v41, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWDepthConverterNode.m", 943, @"LastShownDate:BWDepthConverterNode.m:943", @"LastShownBuild:BWDepthConverterNode.m:943", 0);
        free(v41);
        OUTLINED_FUNCTION_9_49();
        target = 0;
        v42 = -12780;
LABEL_36:
        v6 = MEMORY[0x1E695FF58];
        goto LABEL_37;
      }
    }

    else
    {
      v8 = 0;
    }

    v11 = @"Depth";
    target = BWSampleBufferGetAttachedMedia(a3, @"Depth");
    if (!target)
    {
      OUTLINED_FUNCTION_9_49();
      target = 0;
      goto LABEL_14;
    }

    if (!self->_stillGDRFilteringSupportEnabled)
    {
      v13 = 0;
      goto LABEL_20;
    }

    if (([(opaqueCMSampleBuffer *)v8 captureFlags]& 0x800) == 0 || (BWStillImageProcessingFlagsForSampleBuffer(a3) & 0x200000) != 0 && self->_skipSmartStyleBuffer)
    {
      OUTLINED_FUNCTION_9_49();
LABEL_14:
      v42 = 0;
      goto LABEL_37;
    }

    v12 = CMGetAttachment(a3, @"StillImageSettings", 0);
    if (v12)
    {
      v13 = ([v12 depthDataFiltered] & 1) != 0 || self->_depthOriginatesFromNeuralNetwork;
      if ([objc_msgSend(CMGetAttachment(target *off_1E798A3C8])
      {
        if (dword_1EB58E420)
        {
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v8 = 0;
          os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_12_39();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          OUTLINED_FUNCTION_9_49();
          v42 = -16809;
          v7 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
        }

        else
        {
          OUTLINED_FUNCTION_9_49();
          v42 = -16809;
        }

        goto LABEL_36;
      }

LABEL_20:
      v14 = [(BWDepthConverterNode *)self _resolveFilteringTypeWithStillFilteringRequested:v13];
      v15 = [(BWStillImageNodeConfiguration *)self->_stillImageNodeConfiguration depthDataType];
      if ((0x80u >> v14))
      {
        v11 = 0;
        v8 = target;
LABEL_29:
        FigCaptureConvertRotationAndMirroringToExifOrientation(self->_rotationDegrees, self->_mirroringEnabled);
        v19 = OUTLINED_FUNCTION_13_33();
        v23 = [(BWDepthConverterNode *)v19 _depthMetadataDictionaryFromSampleBuffer:v20 orientation:v21 stillFilteringRequested:v22];
        if (v15 != 10 || (v32 = [(BWDepthConverterNode *)self _scaleDepthValues:v8 depthMetadata:v23 sbuf:a3]) == 0)
        {
          v7 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
          if (self->_stillGDRFilteringSupportEnabled)
          {
            v24 = a3;
          }

          else
          {
            v24 = v8;
          }

          CMSetAttachment(v24, *off_1E798D2B8, v23, 1u);
          CMRemoveAttachment(v8, @"OriginalCameraIntrinsicMatrix");
          if (self->_providesUnfilteredDepthAsAttachedMedia)
          {
            v33 = OUTLINED_FUNCTION_13_33();
            [(BWDepthConverterNode *)v33 _generateAndAttachUnfilteredDepthToSampleBuffer:v34 depthOutputPixelBuffer:v11 depthOutputSampleBuffer:v8];
          }

          v42 = 0;
          goto LABEL_36;
        }

        v42 = v32;
        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3();
        goto LABEL_83;
      }

      v16 = [objc_msgSend(-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->super._output mediaPropertiesForAttachedMediaKey:{@"Depth", "livePixelBufferPool"), "newPixelBuffer"}];
      v11 = v16;
      if (!v16)
      {
        v8 = 0;
        v42 = -12786;
LABEL_83:
        v7 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
        goto LABEL_36;
      }

      filteringInputBuffer = v16;
      if (((0x81u >> v14) & 1) == 0)
      {
        filteringInputBuffer = self->_filteringInputBuffer;
      }

      if (self->_depthOriginatesFromNeuralNetwork)
      {
        CMSampleBufferGetImageBuffer(target);
      }

      else
      {
        v35 = [(BWDepthConverterNode *)self convertToFloatAndRotateAndCrop:filteringInputBuffer outputPixelBuffer:?];
        if (v35)
        {
          v42 = v35;
          OUTLINED_FUNCTION_1_5();
          goto LABEL_81;
        }
      }

      if ((0x81u >> v14))
      {
        goto LABEL_27;
      }

      filteringOutputBuffer = v11;
      if (self->_conversionAfterFilteringRequired)
      {
        filteringOutputBuffer = self->_filteringOutputBuffer;
      }

      v37 = OUTLINED_FUNCTION_13_33();
      v40 = [(BWDepthConverterNode *)v37 filterDepthPixelBuffer:v38 outputDepthPixelBuffer:filteringOutputBuffer yuvImageSampleBuffer:sbuf depthSampleBuffer:v39 filteringType:v14];
      if (v40)
      {
        v42 = v40;
        goto LABEL_82;
      }

      if (!self->_conversionAfterFilteringRequired)
      {
        goto LABEL_27;
      }

      if (*MEMORY[0x1E695FF58] == 1)
      {
        OUTLINED_FUNCTION_9_29();
        kdebug_trace();
      }

      v42 = FigDepthConvertBuffer(filteringOutputBuffer, v11);
      if (*MEMORY[0x1E695FF58] == 1)
      {
        OUTLINED_FUNCTION_9_29();
        kdebug_trace();
      }

      if (v42)
      {
        OUTLINED_FUNCTION_16_0();
        LODWORD(v43) = v42;
      }

      else
      {
LABEL_27:
        v18 = BWCMSampleBufferCreateCopyWithNewPixelBuffer(target, v11, &self->_outputFormatDescription, &v46);
        if (!v18)
        {
          v8 = v46;
          a3 = sbuf;
          goto LABEL_29;
        }

        v42 = v18;
        OUTLINED_FUNCTION_1_5();
      }

LABEL_81:
      FigDebugAssert3();
LABEL_82:
      v8 = 0;
      a3 = sbuf;
      goto LABEL_83;
    }

    v42 = FigSignalErrorAtGM();
    OUTLINED_FUNCTION_9_49();
  }

  else
  {
    target = BWSampleBufferGetAttachedMedia(a3, @"Depth");
    if (target)
    {
      v13 = 0;
      goto LABEL_20;
    }

    v42 = 0;
    v8 = 0;
    v11 = 0;
    target = 0;
  }

LABEL_37:
  if (*v6 == 1)
  {
    OUTLINED_FUNCTION_9_29();
    kdebug_trace();
  }

  if (v42)
  {
    v25 = 1;
  }

  else
  {
    v25 = v8 == 0;
  }

  v26 = !v25;
  v27 = v7[317];
  if (*(&self->super.super.isa + v27) == 1 && dword_1EB58E420 != 0)
  {
    v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_12_39();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a3 = sbuf;
  }

  if (v26)
  {
    if (v8 != target)
    {
      BWSampleBufferSetAttachedMedia(a3, @"Depth", v8);
    }
  }

  else if (target)
  {
    BWSampleBufferRemoveAttachedMedia(a3, @"Depth");
  }

  if (*(&self->super.super.isa + v27) == 1)
  {
    v30 = OUTLINED_FUNCTION_13_33();
    [(BWDepthConverterNode *)v30 _removeConsumedAttachedMediaFromSampleBuffer:v31];
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:a3, v43];
}

- (uint64_t)_resolveFilteringTypeWithStillFilteringRequested:(uint64_t)result
{
  if (result)
  {
    if (*(result + 138) == 1)
    {
      if (*(result + 489) == 1)
      {
        if ([*(result + 624) depthDataType] == 10)
        {
          return 7;
        }

        else
        {
          return 6;
        }
      }

      else if (a2)
      {
        if (*(result + 600) <= 1)
        {
          return 4;
        }

        else
        {
          return 5;
        }
      }

      else
      {
        return 0;
      }
    }

    else if (*(result + 137) == 1)
    {
      if (*(result + 139))
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }

    else if (*(result + 139))
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)filterDepthPixelBuffer:(__CVBuffer *)a3 outputDepthPixelBuffer:(CMSampleBufferRef)sbuf yuvImageSampleBuffer:(uint64_t)a5 depthSampleBuffer:(unsigned int)a6 filteringType:
{
  if (!a1)
  {
    return 0;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  v12 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
  if (!a6)
  {
    return 4294954516;
  }

  v13 = a6 - 4;
  if (a6 - 4 > 2)
  {
    v53 = 0;
    v54 = 0;
    v24 = 0;
    v52 = 0;
    v55 = 0;
    goto LABEL_19;
  }

  v14 = v12;
  v50 = ImageBuffer;
  v15 = a3;
  AttachedInference = BWInferenceGetAttachedInference(sbuf, 801, 0x1F219E5F0);
  if ([AttachedInference count])
  {
    v17 = AttachedInference;
  }

  else
  {
    v17 = 0;
  }

  [*(a1 + 592) setFaceLandmarksArray:v17];
  v18 = *off_1E798A5B0;
  v19 = [v14 objectForKeyedSubscript:*off_1E798A5B0];
  v55 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v19, v18, CMGetAttachment(sbuf, *off_1E798D340, 0), *off_1E798D340, 0}];
  if ((a6 & 6) != 4)
  {
    v53 = 0;
    v54 = 0;
    v24 = 0;
    v52 = 0;
    v13 = a6 - 4;
LABEL_18:
    a3 = v15;
    ImageBuffer = v50;
    goto LABEL_19;
  }

  AttachedMedia = BWSampleBufferGetAttachedMedia(sbuf, 0x1F21AAC70);
  if (a6 == 5)
  {
    v21 = BWSampleBufferGetAttachedMedia(sbuf, 0x1F219E750);
    LowResPersonInstanceMasksFromSampleBuffer = BWInferenceGetLowResPersonInstanceMasksFromSampleBuffer(sbuf);
    v23 = sbuf;
    v24 = LowResPersonInstanceMasksFromSampleBuffer;
    v25 = BWInferenceGetAttachedInference(v23, 104, 0x1F219E990);
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v21 = 0;
  }

  v13 = a6 - 4;
  v54 = v25;
  if (!(AttachedMedia | v21))
  {
    if (![v24 count])
    {
      OUTLINED_FUNCTION_2_92();
      LODWORD(v49) = 0;
      FigDebugAssert3();
      v28 = 4294954516;
      goto LABEL_59;
    }

    v52 = 0;
    v53 = 0;
    goto LABEL_18;
  }

  if (AttachedMedia)
  {
    v53 = CMSampleBufferGetImageBuffer(AttachedMedia);
  }

  else
  {
    v53 = 0;
  }

  a3 = v15;
  ImageBuffer = v50;
  if (v21)
  {
    v52 = CMSampleBufferGetImageBuffer(v21);
  }

  else
  {
    v52 = 0;
  }

LABEL_19:
  v26 = *(a1 + 520);
  if (v26 && (v27 = *(a1 + 528)) != 0)
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_9_29();
      kdebug_trace();
      v26 = *(a1 + 520);
      v27 = *(a1 + 528);
    }

    v28 = FigDepthScaleBuffer(a2, v26);
    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_9_29();
      kdebug_trace();
    }

    if (v28)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v27 = a3;
    v26 = a2;
  }

  if (a6 <= 6 && ((1 << a6) & 0x7A) != 0)
  {
    v29 = [CMGetAttachment(ImageBuffer @"RotationDegrees"];
    v51 = a3;
    v30 = v13;
    v31 = [CMGetAttachment(ImageBuffer @"MirroredVertical"];
    v32 = v24;
    v33 = [CMGetAttachment(ImageBuffer @"MirroredHorizontal"];
    v34 = FigCaptureNormalizeAngle(v29 - *(a1 + 416)) % 180;
    v35 = v34 ? 0 : v31;
    v13 = v30;
    a3 = v51;
    v36 = v33 & (v34 == 90);
    v24 = v32;
    v37 = v35 | v36 ? v29 + 180 : v29;
    v38 = FigCaptureNormalizeAngle(*(a1 + 416) - v37);
    v39 = [BWDepthConverterNode rotateAndScaleAndCropImagePixelBuffer:a1 depthPixelBuffer:ImageBuffer to:v26 rotationAngle:*(a1 + 536) flip:v38];
    if (v39)
    {
      v28 = v39;
      OUTLINED_FUNCTION_1_5();
      goto LABEL_72;
    }
  }

  OUTLINED_FUNCTION_18();
  if (v41)
  {
    OUTLINED_FUNCTION_9_29();
    v43 = v42;
    kdebug_trace();
    v40 = v43;
  }

  if (a6 <= 6 && ((1 << a6) & 0x4F) != 0)
  {
    v44 = [*(a1 + 592) processDepthBuffer:v26 yuvBuffer:*(a1 + *(v40 + 1156)) parametersDictionary:v55 outputDisparityBuffer:v27];
  }

  else
  {
    v47 = *(a1 + 592);
    v48 = *(a1 + *(v40 + 1156));
    if (a6 == 5)
    {
      v44 = [v47 processDepthBuffer:v26 yuvBuffer:v48 personSegmentationMaskBuffer:v52 instanceSegmentationMaskBufferArray:v24 instanceSegmentationConfidences:v54 parametersDictionary:v55 outputDisparityBuffer:v27];
    }

    else
    {
      v44 = [v47 processDepthBuffer:v26 yuvBuffer:v48 rgbSegmentationMaskBuffer:v53 parametersDictionary:v55 outputDisparityBuffer:v27];
    }
  }

  v45 = v44;
  OUTLINED_FUNCTION_18();
  if (v41)
  {
    OUTLINED_FUNCTION_9_29();
    kdebug_trace();
  }

  if (v45)
  {
    v28 = 4294954516;
    goto LABEL_58;
  }

  if (!*(a1 + 520) || !*(a1 + 528))
  {
    v28 = 0;
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_18();
  if (v41)
  {
    OUTLINED_FUNCTION_9_29();
    kdebug_trace();
  }

  v28 = FigDepthScaleBuffer(v27, a3);
  OUTLINED_FUNCTION_18();
  if (v41)
  {
    OUTLINED_FUNCTION_9_29();
    kdebug_trace();
  }

  if (v28)
  {
LABEL_26:
    OUTLINED_FUNCTION_2_92();
    LODWORD(v49) = v28;
LABEL_72:
    FigDebugAssert3();
  }

LABEL_58:
  if (v13 <= 2)
  {
LABEL_59:
    [*(a1 + 592) setFaceLandmarksArray:{0, v49}];
  }

  return v28;
}

- (uint64_t)_scaleDepthValues:(void *)a3 depthMetadata:(uint64_t)a4 sbuf:
{
  if (!a1)
  {
    return 0;
  }

  *&v17 = NAN;
  v7 = FigDepthComputeNormalizedFocalLength(a3, &v17);
  if (v7)
  {
    return v7;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  v9 = ImageBuffer;
  if (ImageBuffer)
  {
    CFRetain(ImageBuffer);
  }

  v10 = *&v17;
  *&v11 = v10 * FigCaptureLongerDimensionForDimensions(*(a1 + 164));
  [*(a1 + 640) getMetricScaleFactorForEFL:v11];
  if (*&v12 <= 0.1)
  {
    *&v12 = 0.1;
  }

  [*(a1 + 648) stillImageScalingFactorWithDisparityBuffer:v9 sbuf:a4 scaleFactorFromEFL:v12];
  LODWORD(v14) = v13;
  v15 = [*(a1 + 568) depthValueInputPixelBuffer:v9 bias:0.0 scaleFactor:v14];
  if (v9)
  {
    CFRelease(v9);
  }

  return v15;
}

- (uint64_t)_generateAndAttachUnfilteredDepthToSampleBuffer:(__CVBuffer *)a3 depthOutputPixelBuffer:(opaqueCMSampleBuffer *)a4 depthOutputSampleBuffer:
{
  if (!a1)
  {
    return 0;
  }

  cf = 0;
  v8 = [objc_msgSend(objc_msgSend(*(a1 + 16) mediaPropertiesForAttachedMediaKey:{0x1F21AAAB0), "livePixelBufferPool"), "newPixelBuffer"}];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if ((*(a1 + 138) & 1) != 0 || (*(a1 + 137) & 1) != 0 || *(a1 + 139) == 1)
  {
    if (*(a1 + 552) == 1)
    {
      v10 = FigDepthConvertBuffer(*(a1 + 512), v8);
      if (!v10)
      {
        goto LABEL_8;
      }

LABEL_14:
      CopyWithNewPixelBuffer = v10;
      goto LABEL_15;
    }

    v12 = *(a1 + 480);
    if (v12)
    {
      a3 = *(a1 + 512);
      goto LABEL_13;
    }
  }

  else
  {
    v12 = *(a1 + 480);
    if (v12)
    {
LABEL_13:
      v10 = VTPixelTransferSessionTransferImage(v12, a3, v9);
      if (!v10)
      {
LABEL_8:
        CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(a4, v9, (a1 + 472), &cf);
        if (!CopyWithNewPixelBuffer)
        {
          BWSampleBufferSetAttachedMedia(a2, 0x1F21AAAB0, cf);
        }

        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  CopyWithNewPixelBuffer = 4294954510;
LABEL_15:
  CFRelease(v9);
  if (cf)
  {
    CFRelease(cf);
  }

  return CopyWithNewPixelBuffer;
}

- (void)_removeConsumedAttachedMediaFromSampleBuffer:(uint64_t)a1
{
  if (a1)
  {
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAC70);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAC90);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219E750);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219E8F0);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219E910);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219E930);

    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219E950);
  }
}

- (uint64_t)rotateAndScaleAndCropImagePixelBuffer:(uint64_t)a1 depthPixelBuffer:(__CVBuffer *)a2 to:(__CVBuffer *)a3 rotationAngle:(uint64_t)a4 flip:(int)a5
{
  v18[1] = a4;
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_16_2();
  if (v10)
  {
    OUTLINED_FUNCTION_9_29();
    kdebug_trace();
  }

  if (!a2 || !a3 || !a4)
  {
    OUTLINED_FUNCTION_5_69();
    FigDebugAssert3();
    v15 = FigSignalErrorAtGM();
    goto LABEL_13;
  }

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v19.origin.x = OUTLINED_FUNCTION_8_48(a1 + 424);
  if (!CGRectIsNull(v19))
  {
    v13 = CVPixelBufferGetWidth(a2);
    v14 = v13 | (CVPixelBufferGetHeight(a2) << 32);
    v18[0] = v14;
    FigCaptureSwapVideoDimensionsFor90Or270Rotation(v18, a5);
    if (!FigCaptureVideoAspectRatiosAreEqual(*v18, Width | (Height << 32), 0.01))
    {
      FigCaptureMakeRectWithAspectRatioInsideDimensions(v14, 1, Width / Height);
    }
  }

  if (!(FigCaptureNormalizeAngle(-a5) % 90) || (FigDebugAssert3(), v16 = FigSignalErrorAtGM(), !v16))
  {
    CVPixelBufferGetPixelFormatType(a2);
    v15 = CMPhotoScaleAndRotateSessionTransformForMaxSideLength();
LABEL_13:
    v16 = v15;
    goto LABEL_14;
  }

  FigDebugAssert3();
LABEL_14:
  OUTLINED_FUNCTION_16_2();
  if (v10)
  {
    OUTLINED_FUNCTION_9_29();
    kdebug_trace();
  }

  return v16;
}

@end