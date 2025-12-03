@interface FigCaptureVISPipeline
- (BWVISNode)_buildVISPipelineWithUpstreamOutput:(void *)output graph:(void *)graph parentPipeline:(void *)pipeline videoCaptureConnectionConfiguration:(void *)configuration pipelineStage:(void *)stage sdofPipelineStage:(uint64_t)pipelineStage videoStabilizationType:(unsigned int)type motionAttachmentsSource:(int)self0 fillExtendedRowsOfOutputBuffer:(unsigned int)self1 overCaptureEnabled:(unsigned int)self2 stereoMode:(char)self3 videoStabilizationOverscanOverride:(int)self4 videoStabilizationStrength:(unsigned int)self5 motionMetadataPreloadingEnabled:(void *)self6 visExecutionMode:(unint64_t)self7 pipelineTraceID:(uint64_t)self8 captureDevice:(char)self9 outputDimensions:(char)dimensions generatedTransformsOutputDimensionsOverride:(uint64_t)dimensionsOverride P3ToBT2020ConversionEnabled:(unsigned int)conversionEnabled stabilizeDepthAttachments:(unsigned __int8)attachments outputDepthDimensions:(unsigned __int8)depthDimensions maxLossyCompressionLevel:(char)level videoSTFEnabled:(unsigned __int8)fEnabled videoGreenGhostMitigationEnabled:(unsigned __int8)mitigationEnabled lightSourceMaskAndKeypointDescriptorDataEnabled:(unsigned __int8)dataEnabled videoGreenGhostOfflineMetadataEnabled:(unsigned __int8)metadataEnabled videoGreenGhostOfflineLightSourceMaskEnabled:(unsigned __int8)output0 personSegmentationRenderingEnabled:(unsigned __int8)output1 smartStyleRenderingEnabled:(void *)output2 smartStyleReversibilityEnabled:(uint64_t)output3 lowResImageUsedByVideoEncoderEnabled:portTypesWithGeometricDistortionCorrectionInVISEnabled:visProcessingSemaphore:;
- (BWVISNode)_newVISNodeWithUpstreamOutput:(void *)output graph:(void *)graph parentPipeline:(void *)pipeline videoCaptureConnectionConfiguration:(unsigned int)configuration videoStabilizationType:(int)type motionAttachmentsSource:(char)source fillExtendedRowsOfOutputBuffer:(float)buffer overCaptureEnabled:(unsigned __int8)self0 stereoMode:(unsigned int)self1 videoStabilizationOverscanOverride:(unsigned int)self2 videoStabilizationStrength:(char)self3 motionMetadataPreloadingEnabled:(int)self4 visExecutionMode:(unsigned int)self5 pipelineTraceID:(void *)self6 pipelineStage:(void *)self7 captureDevice:(unint64_t)self8 outputDimensions:(uint64_t)self9 generatedTransformsOutputDimensionsOverride:(double *)dimensionsOverride irisVISCleanOutputRectOut:(char)out P3ToBT2020ConversionEnabled:(char)conversionEnabled stabilizeDepthAttachments:(uint64_t)attachments outputDepthDimensions:(unsigned int)depthDimensions maxLossyCompressionLevel:(unsigned __int8)level videoSTFEnabled:(unsigned __int8)fEnabled videoGreenGhostMitigationEnabled:(char)mitigationEnabled lightSourceMaskAndKeypointDescriptorDataEnabled:(unsigned __int8)dataEnabled videoGreenGhostOfflineMetadataEnabled:(unsigned __int8)metadataEnabled videoGreenGhostOfflineLightSourceMaskEnabled:(unsigned __int8)output0 personSegmentationRenderingEnabled:(unsigned __int8)output1 smartStyleRenderingEnabled:(unsigned __int8)output2 smartStyleReversibilityEnabled:(unsigned __int8)output3 lowResImageUsedByVideoEncoderEnabled:(void *)output4 portTypesWithGeometricDistortionCorrectionInVISEnabled:(uint64_t)output5 visProcessingSemaphore:;
- (BWVISNode)initWithUpstreamOutput:(void *)output graph:(uint64_t)graph name:(void *)name parentPipeline:(void *)pipeline videoCaptureConnectionConfiguration:(void *)configuration pipelineStage:(void *)stage sdofPipelineStage:(unsigned int)pipelineStage videoStabilizationType:(unsigned int)self0 motionAttachmentsSource:(__int16)self1 fillExtendedRowsOfOutputBuffer:(unsigned int)self2 overCaptureEnabled:(unsigned int)self3 stereoMode:(char)self4 videoStabilizationOverscanOverride:(int)self5 videoStabilizationStrength:(unsigned int)self6 motionMetadataPreloadingEnabled:(void *)self7 visExecutionMode:(unint64_t)self8 pipelineTraceID:(uint64_t)self9 captureDevice:(char)device outputDimensions:(char)dimensions generatedTransformsOutputDimensionsOverride:(uint64_t)dimensionsOverride P3ToBT2020ConversionEnabled:(unsigned int)conversionEnabled stabilizeDepthAttachments:(unsigned __int8)attachments outputDepthDimensions:(unsigned __int8)depthDimensions maxLossyCompressionLevel:(char)level videoSTFEnabled:(unsigned __int8)fEnabled videoGreenGhostMitigationEnabled:(unsigned __int8)mitigationEnabled lightSourceMaskAndKeypointDescriptorDataEnabled:(unsigned __int8)dataEnabled videoGreenGhostOfflineMetadataEnabled:(unsigned __int8)output0 videoGreenGhostOfflineLightSourceMaskEnabled:(unsigned __int8)output1 personSegmentationRenderingEnabled:(unsigned __int8)output2 smartStyleRenderingEnabled:(void *)output3 smartStyleReversibilityEnabled:(uint64_t)output4 lowResImageUsedByVideoEncoderEnabled:portTypesWithGeometricDistortionCorrectionInVISEnabled:visProcessingSemaphore:;
- (double)irisVISCleanOutputRect;
- (uint64_t)_buildMotionAttachmentsNodeWithUpstreamOutput:(void *)output graph:(uint64_t)graph parentPipeline:(void *)pipeline horizontalSensorBinningFactor:(void *)factor verticalSensorBinningFactor:(unsigned int)binningFactor maxSupportedFrameRate:(unsigned int)rate pipelineStage:(void *)stage motionAttachmentsSource:(unsigned int)source captureDevice:(float)device isPanorama:(void *)output0 optimizesImagesForOfflineVideoStabilization:(unsigned __int8)output1 provideSourceVideoWithMotionAttachmentsOutput:(char)output2 provideOfflineVISMotionDataOutput:(char)output3 maxLossyCompressionLevel:(unsigned __int8)output4 motionAttachmentsNodeOut:(BWMotionAttachmentsNode *)output5 errOut:(_DWORD *)output6;
- (uint64_t)motionAttachmentsNode;
- (uint64_t)sdofVISNode;
- (uint64_t)visNode;
- (void)_recreateISPProcessingSessionForVISNode:(uint64_t)node withCaptureDevice:(void *)device;
- (void)dealloc;
- (void)liveReconfigureForOutputDimensions:(uint64_t)dimensions;
@end

@implementation FigCaptureVISPipeline

- (uint64_t)visNode
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)sdofVISNode
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureVISPipeline;
  [(FigCapturePipeline *)&v3 dealloc];
}

- (BWVISNode)initWithUpstreamOutput:(void *)output graph:(uint64_t)graph name:(void *)name parentPipeline:(void *)pipeline videoCaptureConnectionConfiguration:(void *)configuration pipelineStage:(void *)stage sdofPipelineStage:(unsigned int)pipelineStage videoStabilizationType:(unsigned int)self0 motionAttachmentsSource:(__int16)self1 fillExtendedRowsOfOutputBuffer:(unsigned int)self2 overCaptureEnabled:(unsigned int)self3 stereoMode:(char)self4 videoStabilizationOverscanOverride:(int)self5 videoStabilizationStrength:(unsigned int)self6 motionMetadataPreloadingEnabled:(void *)self7 visExecutionMode:(unint64_t)self8 pipelineTraceID:(uint64_t)self9 captureDevice:(char)device outputDimensions:(char)dimensions generatedTransformsOutputDimensionsOverride:(uint64_t)dimensionsOverride P3ToBT2020ConversionEnabled:(unsigned int)conversionEnabled stabilizeDepthAttachments:(unsigned __int8)attachments outputDepthDimensions:(unsigned __int8)depthDimensions maxLossyCompressionLevel:(char)level videoSTFEnabled:(unsigned __int8)fEnabled videoGreenGhostMitigationEnabled:(unsigned __int8)mitigationEnabled lightSourceMaskAndKeypointDescriptorDataEnabled:(unsigned __int8)dataEnabled videoGreenGhostOfflineMetadataEnabled:(unsigned __int8)output0 videoGreenGhostOfflineLightSourceMaskEnabled:(unsigned __int8)output1 personSegmentationRenderingEnabled:(unsigned __int8)output2 smartStyleRenderingEnabled:(void *)output3 smartStyleReversibilityEnabled:(uint64_t)output4 lowResImageUsedByVideoEncoderEnabled:portTypesWithGeometricDistortionCorrectionInVISEnabled:visProcessingSemaphore:
{
  if (!self)
  {
    return 0;
  }

  v45.receiver = self;
  v45.super_class = FigCaptureVISPipeline;
  v40 = objc_msgSendSuper2(&v45, sel_initWithGraph_name_);
  v41 = v40;
  if (v40)
  {
    v43 = *(MEMORY[0x1E695F058] + 16);
    *(v40 + 56) = *MEMORY[0x1E695F058];
    *(v40 + 72) = v43;
    *(v40 + 11) = [preloadingEnabled device];
    LOWORD(v44) = source;
    [FigCaptureVISPipeline _buildVISPipelineWithUpstreamOutput:v41 graph:a2 parentPipeline:output videoCaptureConnectionConfiguration:name pipelineStage:pipeline sdofPipelineStage:configuration videoStabilizationType:stage motionAttachmentsSource:pipelineStage fillExtendedRowsOfOutputBuffer:type overCaptureEnabled:v44 stereoMode:buffer videoStabilizationOverscanOverride:enabled videoStabilizationStrength:mode motionMetadataPreloadingEnabled:override visExecutionMode:strength pipelineTraceID:preloadingEnabled captureDevice:executionMode outputDimensions:d generatedTransformsOutputDimensionsOverride:device P3ToBT2020ConversionEnabled:dimensions stabilizeDepthAttachments:dimensionsOverride outputDepthDimensions:conversionEnabled maxLossyCompressionLevel:attachments videoSTFEnabled:depthDimensions videoGreenGhostMitigationEnabled:level lightSourceMaskAndKeypointDescriptorDataEnabled:fEnabled videoGreenGhostOfflineMetadataEnabled:mitigationEnabled videoGreenGhostOfflineLightSourceMaskEnabled:dataEnabled personSegmentationRenderingEnabled:metadataEnabled smartStyleRenderingEnabled:maskEnabled smartStyleReversibilityEnabled:renderingEnabled lowResImageUsedByVideoEncoderEnabled:styleRenderingEnabled portTypesWithGeometricDistortionCorrectionInVISEnabled:reversibilityEnabled visProcessingSemaphore:?];
    if (!v41->super._name || [pipeline irisSDOFEnabled] && !v41->super._subgraphName)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();

      return 0;
    }
  }

  return v41;
}

- (BWVISNode)_buildVISPipelineWithUpstreamOutput:(void *)output graph:(void *)graph parentPipeline:(void *)pipeline videoCaptureConnectionConfiguration:(void *)configuration pipelineStage:(void *)stage sdofPipelineStage:(uint64_t)pipelineStage videoStabilizationType:(unsigned int)type motionAttachmentsSource:(int)self0 fillExtendedRowsOfOutputBuffer:(unsigned int)self1 overCaptureEnabled:(unsigned int)self2 stereoMode:(char)self3 videoStabilizationOverscanOverride:(int)self4 videoStabilizationStrength:(unsigned int)self5 motionMetadataPreloadingEnabled:(void *)self6 visExecutionMode:(unint64_t)self7 pipelineTraceID:(uint64_t)self8 captureDevice:(char)self9 outputDimensions:(char)dimensions generatedTransformsOutputDimensionsOverride:(uint64_t)dimensionsOverride P3ToBT2020ConversionEnabled:(unsigned int)conversionEnabled stabilizeDepthAttachments:(unsigned __int8)attachments outputDepthDimensions:(unsigned __int8)depthDimensions maxLossyCompressionLevel:(char)level videoSTFEnabled:(unsigned __int8)fEnabled videoGreenGhostMitigationEnabled:(unsigned __int8)mitigationEnabled lightSourceMaskAndKeypointDescriptorDataEnabled:(unsigned __int8)dataEnabled videoGreenGhostOfflineMetadataEnabled:(unsigned __int8)metadataEnabled videoGreenGhostOfflineLightSourceMaskEnabled:(unsigned __int8)output0 personSegmentationRenderingEnabled:(unsigned __int8)output1 smartStyleRenderingEnabled:(void *)output2 smartStyleReversibilityEnabled:(uint64_t)output3 lowResImageUsedByVideoEncoderEnabled:portTypesWithGeometricDistortionCorrectionInVISEnabled:visProcessingSemaphore:
{
  if (result)
  {
    v38 = result;
    v80 = 0;
    v39 = [objc_msgSend(pipeline "sourceConfiguration")];
    irisSDOFEnabled = [pipeline irisSDOFEnabled];
    v41 = [objc_msgSend(pipeline "sourceConfiguration")];
    v75 = irisSDOFEnabled;
    if (override != 3)
    {
      v56 = v41 == 4;
      v79 = 0;
      v57 = [objc_msgSend(pipeline "irisSinkConfiguration")];
      if (override == 5)
      {
        v58 = 1;
      }

      else
      {
        v58 = v57;
      }

      v78 = 0;
      horizontalSensorBinningFactor = [v39 horizontalSensorBinningFactor];
      verticalSensorBinningFactor = [v39 verticalSensorBinningFactor];
      [v39 maxSupportedFrameRate];
      v61 = [FigCaptureVISPipeline _buildMotionAttachmentsNodeWithUpstreamOutput:v38 graph:a2 parentPipeline:output horizontalSensorBinningFactor:graph verticalSensorBinningFactor:horizontalSensorBinningFactor maxSupportedFrameRate:verticalSensorBinningFactor pipelineStage:configuration motionAttachmentsSource:type captureDevice:v60 isPanorama:preloadingEnabled optimizesImagesForOfflineVideoStabilization:v56 provideSourceVideoWithMotionAttachmentsOutput:v58 provideOfflineVISMotionDataOutput:1 maxLossyCompressionLevel:0 motionAttachmentsNodeOut:&v79 errOut:&v78];
      if (v78)
      {
        fig_log_get_emitter();
        return FigDebugAssert3();
      }

      a2 = v61;
      v38->super._outputs = v79;
      irisSDOFEnabled = v75;
    }

    if (irisSDOFEnabled)
    {
      v42 = objc_alloc_init(BWVideoSDOFSplitNode);
      v43 = MEMORY[0x1E696AEC0];
      name = [(BWNode *)v38 name];
      -[BWNode setName:](v42, "setName:", [v43 stringWithFormat:@"%@ Iris SDOF Split"]);
      if (([graph addNode:v42 error:&v80] & 1) == 0 || (objc_msgSend(output, "connectOutput:toInput:pipelineStage:", a2, -[BWNode input](v42, "input"), configuration) & 1) == 0)
      {
LABEL_23:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        return FigDebugAssert3();
      }

      [(BWVideoSDOFSplitNode *)v42 originalOutput];
    }

    else
    {
      v42 = 0;
    }

    metadataEnabledCopy = metadataEnabled;
    if (override == 3 || override == 0)
    {
      maskEnabledCopy = maskEnabled;
    }

    else
    {
      metadataEnabledCopy = 0;
      maskEnabledCopy = 0;
    }

    v73 = maskEnabledCopy;
    v72 = metadataEnabledCopy;
    configurationCopy = configuration;
    v47 = OUTLINED_FUNCTION_1_97();
    v77 = v48;
    v55 = [(FigCaptureVISPipeline *)v49 _newVISNodeWithUpstreamOutput:v50 graph:v51 parentPipeline:v52 videoCaptureConnectionConfiguration:v53 videoStabilizationType:v54 motionAttachmentsSource:type fillExtendedRowsOfOutputBuffer:v48 overCaptureEnabled:v47 stereoMode:name videoStabilizationOverscanOverride:buffer videoStabilizationStrength:enabled motionMetadataPreloadingEnabled:mode visExecutionMode:override pipelineTraceID:strength pipelineStage:configurationCopy captureDevice:preloadingEnabled outputDimensions:executionMode generatedTransformsOutputDimensionsOverride:d irisVISCleanOutputRectOut:&v38->super._supportsConcurrentLiveInputCallbacks P3ToBT2020ConversionEnabled:device stabilizeDepthAttachments:dimensions outputDepthDimensions:dimensionsOverride maxLossyCompressionLevel:conversionEnabled videoSTFEnabled:attachments videoGreenGhostMitigationEnabled:depthDimensions lightSourceMaskAndKeypointDescriptorDataEnabled:level videoGreenGhostOfflineMetadataEnabled:fEnabled videoGreenGhostOfflineLightSourceMaskEnabled:mitigationEnabled personSegmentationRenderingEnabled:dataEnabled smartStyleRenderingEnabled:v72 smartStyleReversibilityEnabled:v73 lowResImageUsedByVideoEncoderEnabled:renderingEnabled portTypesWithGeometricDistortionCorrectionInVISEnabled:styleRenderingEnabled visProcessingSemaphore:reversibilityEnabled];
    v38->super._name = &v55->super.super.isa;
    if (!v55)
    {
      goto LABEL_23;
    }

    result = [(BWNode *)v55 output];
    if (v75)
    {
      [(BWVideoSDOFSplitNode *)v42 sdofOutput];
      v62 = OUTLINED_FUNCTION_1_97();
      result = [(FigCaptureVISPipeline *)v63 _newVISNodeWithUpstreamOutput:v64 graph:v65 parentPipeline:v66 videoCaptureConnectionConfiguration:v67 videoStabilizationType:v68 motionAttachmentsSource:type fillExtendedRowsOfOutputBuffer:v77 overCaptureEnabled:v62 stereoMode:v70 videoStabilizationOverscanOverride:0 videoStabilizationStrength:enabled motionMetadataPreloadingEnabled:mode visExecutionMode:override pipelineTraceID:strength pipelineStage:stage captureDevice:preloadingEnabled outputDimensions:executionMode generatedTransformsOutputDimensionsOverride:d irisVISCleanOutputRectOut:0 P3ToBT2020ConversionEnabled:device stabilizeDepthAttachments:dimensions outputDepthDimensions:dimensionsOverride maxLossyCompressionLevel:conversionEnabled videoSTFEnabled:attachments videoGreenGhostMitigationEnabled:depthDimensions lightSourceMaskAndKeypointDescriptorDataEnabled:level videoGreenGhostOfflineMetadataEnabled:fEnabled videoGreenGhostOfflineLightSourceMaskEnabled:mitigationEnabled personSegmentationRenderingEnabled:dataEnabled smartStyleRenderingEnabled:metadataEnabled smartStyleReversibilityEnabled:maskEnabled lowResImageUsedByVideoEncoderEnabled:renderingEnabled portTypesWithGeometricDistortionCorrectionInVISEnabled:0 visProcessingSemaphore:0];
      v38->super._subgraphName = &result->super.super.isa;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  return result;
}

- (void)liveReconfigureForOutputDimensions:(uint64_t)dimensions
{
  if (dimensions)
  {
    [*(dimensions + 40) setOutputDimensions:a2];
    [*(dimensions + 48) setOutputDimensions:a2];
    v9.origin.x = OUTLINED_FUNCTION_2_83();
    if (!CGRectIsEmpty(v9))
    {
      *(dimensions + 56) = vp_irisVISCleanOutputRectForOutputDimensions([*(dimensions + 40) outputDimensions]);
      *(dimensions + 64) = v4;
      *(dimensions + 72) = v5;
      *(dimensions + 80) = v6;
      [*(dimensions + 40) setIrisVISCleanOutputRect:OUTLINED_FUNCTION_2_83()];
    }

    [FigCaptureVISPipeline _recreateISPProcessingSessionForVISNode:dimensions withCaptureDevice:*(dimensions + 40)];
    v7 = *(dimensions + 48);

    [FigCaptureVISPipeline _recreateISPProcessingSessionForVISNode:dimensions withCaptureDevice:v7];
  }
}

- (void)_recreateISPProcessingSessionForVISNode:(uint64_t)node withCaptureDevice:(void *)device
{
  if (node && [device ispProcessingSession])
  {
    v6 = 0;
    v4 = [*(node + 88) copyISPProcessingSessionWithType:objc_msgSend(objc_msgSend(device error:{"ispProcessingSession"), "type"), &v6}];
    if (v4)
    {
      v5 = v4;
      [device setIspProcessingSession:v4];
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }
  }
}

- (uint64_t)_buildMotionAttachmentsNodeWithUpstreamOutput:(void *)output graph:(uint64_t)graph parentPipeline:(void *)pipeline horizontalSensorBinningFactor:(void *)factor verticalSensorBinningFactor:(unsigned int)binningFactor maxSupportedFrameRate:(unsigned int)rate pipelineStage:(void *)stage motionAttachmentsSource:(unsigned int)source captureDevice:(float)device isPanorama:(void *)output0 optimizesImagesForOfflineVideoStabilization:(unsigned __int8)output1 provideSourceVideoWithMotionAttachmentsOutput:(char)output2 provideOfflineVISMotionDataOutput:(char)output3 maxLossyCompressionLevel:(unsigned __int8)output4 motionAttachmentsNodeOut:(BWMotionAttachmentsNode *)output5 errOut:(_DWORD *)output6
{
  if (!output)
  {
    return 0;
  }

  stabilizationCopy = stabilization;
  v40 = 0;
  v39 = 0;
  motionAttachmentsParameters = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters motionAttachmentsParameters];
  sensorIDDictionaryByPortType = [panorama sensorIDDictionaryByPortType];
  cameraInfoByPortType = [panorama cameraInfoByPortType];
  activePortTypes = [panorama activePortTypes];
  if (attachmentsOutput)
  {
    stabilizationCopy = 2;
  }

  v24 = [BWMotionAttachmentsNode alloc];
  *(&v32 + 5) = level;
  BYTE4(v32) = dataOutput;
  LODWORD(v32) = [stage priority];
  *&v25 = device;
  v26 = [BWMotionAttachmentsNode initWithSensorIDDictionaryByPortType:v24 cameraInfoByPortType:"initWithSensorIDDictionaryByPortType:cameraInfoByPortType:tuningParameters:activePortTypes:horizontalSensorBinningFactor:verticalSensorBinningFactor:maxSupportedFrameRate:motionAttachmentsMode:motionAttachmentsSource:motionCallbackThreadPriority:provideSourceVideoWithMotionAttachmentsOutput:provideOfflineVISMotionDataOutput:inputFormatIsProResRaw:errorOut:" tuningParameters:sensorIDDictionaryByPortType activePortTypes:cameraInfoByPortType horizontalSensorBinningFactor:motionAttachmentsParameters verticalSensorBinningFactor:activePortTypes maxSupportedFrameRate:binningFactor motionAttachmentsMode:rate motionAttachmentsSource:v25 motionCallbackThreadPriority:__PAIR64__(source provideSourceVideoWithMotionAttachmentsOutput:stabilizationCopy) provideOfflineVISMotionDataOutput:v32 inputFormatIsProResRaw:&v39 errorOut:?];
  if (v39)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    graphCopy2 = 0;
LABEL_17:
    errOutCopy3 = errOut;
    goto LABEL_12;
  }

  v27 = v26;
  -[BWNode setName:](v26, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Motion Attachments", objc_msgSend(output, "name")]);
  if ([factor addNode:v27 error:&v40])
  {
    graphCopy2 = graph;
    if ([pipeline connectOutput:graph toInput:-[BWNode input](v27 pipelineStage:{"input"), stage}])
    {
      if (dataOutput)
      {
        sourceVideoWithMotionAttachmentsOutput = [(BWMotionAttachmentsNode *)v27 sourceVideoWithMotionAttachmentsOutput];
      }

      else
      {
        sourceVideoWithMotionAttachmentsOutput = [(BWMotionAttachmentsNode *)v27 offlineVISMotionDataOutput];
      }

      graphCopy2 = sourceVideoWithMotionAttachmentsOutput;
      errOutCopy3 = errOut;
      if (out)
      {
        *out = v27;
      }

      goto LABEL_12;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    goto LABEL_17;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  graphCopy2 = graph;
  errOutCopy3 = errOut;
LABEL_12:
  *errOutCopy3 = v39;
  return graphCopy2;
}

- (BWVISNode)_newVISNodeWithUpstreamOutput:(void *)output graph:(void *)graph parentPipeline:(void *)pipeline videoCaptureConnectionConfiguration:(unsigned int)configuration videoStabilizationType:(int)type motionAttachmentsSource:(char)source fillExtendedRowsOfOutputBuffer:(float)buffer overCaptureEnabled:(unsigned __int8)self0 stereoMode:(unsigned int)self1 videoStabilizationOverscanOverride:(unsigned int)self2 videoStabilizationStrength:(char)self3 motionMetadataPreloadingEnabled:(int)self4 visExecutionMode:(unsigned int)self5 pipelineTraceID:(void *)self6 pipelineStage:(void *)self7 captureDevice:(unint64_t)self8 outputDimensions:(uint64_t)self9 generatedTransformsOutputDimensionsOverride:(double *)dimensionsOverride irisVISCleanOutputRectOut:(char)out P3ToBT2020ConversionEnabled:(char)conversionEnabled stabilizeDepthAttachments:(uint64_t)attachments outputDepthDimensions:(unsigned int)depthDimensions maxLossyCompressionLevel:(unsigned __int8)level videoSTFEnabled:(unsigned __int8)fEnabled videoGreenGhostMitigationEnabled:(char)mitigationEnabled lightSourceMaskAndKeypointDescriptorDataEnabled:(unsigned __int8)dataEnabled videoGreenGhostOfflineMetadataEnabled:(unsigned __int8)metadataEnabled videoGreenGhostOfflineLightSourceMaskEnabled:(unsigned __int8)output0 personSegmentationRenderingEnabled:(unsigned __int8)output1 smartStyleRenderingEnabled:(unsigned __int8)output2 smartStyleReversibilityEnabled:(unsigned __int8)output3 lowResImageUsedByVideoEncoderEnabled:(void *)output4 portTypesWithGeometricDistortionCorrectionInVISEnabled:(uint64_t)output5 visProcessingSemaphore:
{
  if (!self)
  {
    return 0;
  }

  v139 = [objc_msgSend(stage "captureStream")];
  v42 = [objc_msgSend(pipeline "sourceConfiguration")];
  irisVISEnabled = [pipeline irisVISEnabled];
  if (irisVISEnabled)
  {
    irisSinkConfiguration = [pipeline irisSinkConfiguration];
    if (irisSinkConfiguration)
    {
      [irisSinkConfiguration irisMovieVideoFrameDuration];
    }

    else
    {
      memset(&v161, 0, sizeof(v161));
    }

    v49 = FigCaptureFrameRateFromCMTime(&v161);
    v47 = FigCaptureFrameRateAsFloat(v49, v50);
    irisVISMethod = [pipeline irisVISMethod];
  }

  else
  {
    v45 = [objc_msgSend(pipeline "sourceConfiguration")];
    v47 = FigCaptureFrameRateAsFloat(v45, v46);
    irisVISMethod = [pipeline videoStabilizationMethod];
  }

  v142 = irisVISMethod;
  if (irisVISMethod == 5 || irisVISMethod == 3)
  {
    [v42 cinematicStabilizationExtendedLookAheadDuration];
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  thermalSystemPressureLevel = [stage thermalSystemPressureLevel];
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    goto LABEL_26;
  }

  v137 = thermalSystemPressureLevel;
  v160 = 0;
  v55 = [objc_msgSend(pipeline "sourceConfiguration")];
  v56 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v56)
  {
    v159 = -12782;
LABEL_25:
    fig_log_get_emitter();
    goto LABEL_26;
  }

  v159 = v56(v55, @"AttributesDictionary", *MEMORY[0x1E695E480], &v160);
  if (v159)
  {
    goto LABEL_25;
  }

  [objc_msgSend(objc_msgSend(v160 objectForKeyedSubscript:{0x1F21A0550), "objectForKeyedSubscript:", 0x1F21A0570), "floatValue"}];
  v58 = v57;
  v59 = [objc_msgSend(v160 objectForKeyedSubscript:{@"FaceAwareVideoStabilizationSupported", "BOOLValue"}];
  if (((v142 - 3) & 0xFFFFFFFD) != 0)
  {
    v60 = 0;
  }

  else
  {
    v60 = v59;
  }

  v135 = v60;

  if (configuration == 4)
  {
    stageCopy3 = stage;
    cf = [stage copyISPProcessingSessionWithType:6 error:0];
    if (!cf)
    {
      goto LABEL_23;
    }
  }

  else
  {
    stageCopy3 = stage;
    if (configuration == 3)
    {
      cf = [stage copyISPProcessingSessionWithType:1 error:0];
      if (!cf)
      {
LABEL_23:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
LABEL_26:
        FigDebugAssert3();
        v62 = 0;
LABEL_27:

        return 0;
      }
    }

    else
    {
      cf = 0;
    }
  }

  outputCopy = output;
  v132 = a2;
  selfCopy = self;
  graphCopy = graph;
  pipelineCopy = pipeline;
  if (irisVISEnabled)
  {
    v63 = vp_irisVISCleanOutputRectForOutputDimensions(device);
    v67 = v63;
    v68 = v64;
    v69 = v65;
    v70 = v66;
    if (dimensionsOverride)
    {
      *dimensionsOverride = v63;
      dimensionsOverride[1] = v64;
      dimensionsOverride[2] = v65;
      dimensionsOverride[3] = v66;
    }

    stageCopy3 = stage;
  }

  else
  {
    v67 = *MEMORY[0x1E695F058];
    v68 = *(MEMORY[0x1E695F058] + 8);
    v69 = *(MEMORY[0x1E695F058] + 16);
    v70 = *(MEMORY[0x1E695F058] + 24);
  }

  if ([objc_msgSend(pipeline "irisSinkConfiguration")] & 1) != 0 || (objc_msgSend(stageCopy3, "parallaxMitigationBasedOnZoomFactorEnabled"))
  {
    adaptiveOverscanEnabled = 1;
  }

  else
  {
    adaptiveOverscanEnabled = [stageCopy3 adaptiveOverscanEnabled];
  }

  cameraInfoByPortType = [stageCopy3 cameraInfoByPortType];
  array = [MEMORY[0x1E695DF70] array];
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  activePortTypes = [stageCopy3 activePortTypes];
  v72 = [activePortTypes countByEnumeratingWithState:&v155 objects:v154 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v156;
LABEL_43:
    v75 = 0;
    while (1)
    {
      if (*v156 != v74)
      {
        objc_enumerationMutation(activePortTypes);
      }

      v76 = *(*(&v155 + 1) + 8 * v75);
      v77 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType([objc_msgSend(pipeline "sourceConfiguration")], v42, v76, &v159);
      if (v159)
      {
        break;
      }

      v78 = v77;
      if (!v77)
      {
        break;
      }

      distortionCompensationSupported = [v77 distortionCompensationSupported];
      if (preloadingEnabled != 5 && !mode && distortionCompensationSupported && ([encoderEnabled containsObject:v76] & 1) == 0)
      {
        [array addObject:v76];
      }

      if (v73 == ++v75)
      {
        v73 = [activePortTypes countByEnumeratingWithState:&v155 objects:v154 count:16];
        if (v73)
        {
          goto LABEL_43;
        }

        goto LABEL_55;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v62 = 0;
    v96 = cf;
    if (!cf)
    {
      goto LABEL_27;
    }

LABEL_96:
    CFRelease(v96);
    goto LABEL_27;
  }

LABEL_55:
  v128 = v53;
  v80 = v70;
  v81 = v69;
  v82 = v68;
  v83 = v67;
  bufferCopy = buffer;
  v85 = v58 * 10.0;
  v86 = v137 > 2;
  if ([v42 isHighPhotoQualitySupported])
  {
    v87 = 2;
  }

  else
  {
    v87 = 1;
  }

  v138 = v87;
  v88 = [BWVISNode alloc];
  [v42 maxSupportedFrameRate];
  v90 = v89;
  priority = [d priority];
  BYTE1(v127) = v135;
  LOBYTE(v127) = v86;
  HIBYTE(v126) = mode == 1;
  BYTE6(v126) = mitigationEnabled;
  WORD2(v126) = __PAIR16__(metadataEnabled, dataEnabled);
  *&v126 = v85;
  HIDWORD(v125) = preloadingEnabled;
  BYTE2(v125) = strength;
  BYTE1(v125) = adaptiveOverscanEnabled;
  LOBYTE(v125) = [pipeline zoomSmoothingEnabled];
  BYTE5(v124) = enabled;
  BYTE4(v124) = source;
  LODWORD(v124) = type;
  LODWORD(v92) = v90;
  *&v93 = v47;
  *&v94 = bufferCopy;
  LODWORD(v95) = v128;
  v96 = cf;
  v62 = [BWVISNode initWithSensorIDDict:v88 stabilizationMethod:"initWithSensorIDDict:stabilizationMethod:stabilizationType:ispProcessingSession:maxSupportedFrameRate:activeMaxFrameRate:gpuPriority:metalSubmissionAndCompletionQueuePriority:motionAttachmentsSource:fillExtendedRowsOfOutputBuffer:overCaptureEnabled:stereoMode:videoStabilizationOverscanOverride:videoStabilizationStrength:zoomSmoothingEnabled:applyFrameCropOffset:motionMetadataPreloadingEnabled:visExecutionMode:livePhotoCleanOutputRect:cameraInfoByPortType:cvisExtendedLookAheadDuration:distortionCorrectionEnabledPortTypes:distortionCompensationEnabledPortTypes:minDistanceForBravoParallaxShift:videoGreenGhostOfflineMetadataEnabled:videoGreenGhostOfflineLightSourceMaskEnabled:lightSourceMaskAndKeypointDescriptorDataEnabled:attachStabilizedOutputCameraTrajectory:systemIsUnderCriticalThermalPressure:faceAwareVideoStabilizationEnabled:" stabilizationType:v139 ispProcessingSession:v142 maxSupportedFrameRate:configuration activeMaxFrameRate:cf gpuPriority:v138 metalSubmissionAndCompletionQueuePriority:priority motionAttachmentsSource:v92 fillExtendedRowsOfOutputBuffer:v93 overCaptureEnabled:v94 stereoMode:v83 videoStabilizationOverscanOverride:v82 videoStabilizationStrength:v81 zoomSmoothingEnabled:v80 applyFrameCropOffset:v95 motionMetadataPreloadingEnabled:v124 visExecutionMode:__PAIR64__(override livePhotoCleanOutputRect:mode) cameraInfoByPortType:v125 cvisExtendedLookAheadDuration:cameraInfoByPortType distortionCorrectionEnabledPortTypes:encoderEnabled distortionCompensationEnabledPortTypes:array minDistanceForBravoParallaxShift:v126 videoGreenGhostOfflineMetadataEnabled:v127 videoGreenGhostOfflineLightSourceMaskEnabled:? lightSourceMaskAndKeypointDescriptorDataEnabled:? attachStabilizedOutputCameraTrajectory:? systemIsUnderCriticalThermalPressure:? faceAwareVideoStabilizationEnabled:?];
  [(BWVISNode *)v62 setGeneratedTransformsOutputDimensionsOverride:dimensions];
  stageCopy5 = stage;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  DeviceToCameraTransform = FigCaptureGetDeviceToCameraTransform([stage position] == 2);
  v99 = 0;
  DWORD2(v151) = v100;
  DWORD2(v152) = v101;
  *&v151 = DeviceToCameraTransform;
  *&v152 = v102;
  DWORD2(v153) = v103;
  *&v153 = v104;
  v105 = v150;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      *&v105[8 * i] = *((&v151 + i) & 0xFFFFFFFFFFFFFFF3 | (4 * (v99 & 3)));
    }

    ++v99;
    v105 += 24;
  }

  while (v99 != 3);
  -[BWVISNode setCameraExtrinsicMatrix:](v62, "setCameraExtrinsicMatrix:", [MEMORY[0x1E695DEF0] dataWithBytes:v150 length:72]);
  if (!v62)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    goto LABEL_100;
  }

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  captureStreams = [stage captureStreams];
  v108 = [captureStreams countByEnumeratingWithState:&v146 objects:v145 count:16];
  if (v108)
  {
    v109 = v108;
    LOBYTE(v110) = 0;
    v111 = *v147;
    do
    {
      v112 = 0;
      do
      {
        if (*v147 != v111)
        {
          objc_enumerationMutation(captureStreams);
        }

        [*(*(&v146 + 1) + 8 * v112) currentNonLowPowerSphereMode];
        v113 = FigCFEqual() || FigCFEqual() || FigCFEqual() != 0;
        v110 = v113 | v110 & 1;
        ++v112;
      }

      while (v109 != v112);
      v114 = [captureStreams countByEnumeratingWithState:&v146 objects:v145 count:16];
      v109 = v114;
    }

    while (v114);
    v96 = cf;
    stageCopy5 = stage;
  }

  else
  {
    v110 = 0;
  }

  variableFrameRateControlEnabled = [stageCopy5 variableFrameRateControlEnabled];
  [(BWVISNode *)v62 setOutputDimensions:device];
  [(BWVISNode *)v62 setSphereVideoEnabled:v110 | enabled];
  [(BWVISNode *)v62 setFrameRateConversionEnabled:variableFrameRateControlEnabled];
  if (out)
  {
    [(BWVISNode *)v62 setOutputColorSpaceProperties:6];
  }

  if (conversionEnabled)
  {
    [(BWVISNode *)v62 setStabilizeDepthAttachments:1];
    [(BWVISNode *)v62 setOutputDepthDimensions:attachments];
  }

  [(BWVISNode *)v62 setMaxLossyCompressionLevel:depthDimensions];
  -[BWVISNode setFlipHorizontalExcludingIris:](v62, "setFlipHorizontalExcludingIris:", [pipelineCopy physicalMirroringForMovieRecordingEnabled]);
  [(BWVISNode *)v62 setVideoSTFEnabled:level];
  [(BWVISNode *)v62 setVideoGreenGhostMitigationEnabled:fEnabled];
  [(BWVISNode *)v62 setSmartStyleRenderingEnabled:renderingEnabled];
  [(BWVISNode *)v62 setSmartStyleReversibilityEnabled:styleRenderingEnabled];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v117 = [objc_msgSend(objc_msgSend(pipelineCopy "sourceConfiguration")];
  if (v117)
  {
    v118 = &unk_1F22455E0;
  }

  else
  {
    v118 = &unk_1F2245610;
  }

  if (v117)
  {
    v119 = &unk_1F22455F8;
  }

  else
  {
    v119 = &unk_1F2245628;
  }

  [dictionary setObject:v118 forKeyedSubscript:*off_1E798CEB0];
  [dictionary setObject:v119 forKeyedSubscript:*off_1E798CEB8];
  [(BWVISNode *)v62 setLowResImageUsedByVideoEncoderEnabled:reversibilityEnabled];
  [(BWVISNode *)v62 setPersonSegmentationRenderingEnabled:maskEnabled];
  [(BWVISNode *)v62 setProcessingSemaphore:sEnabled];
  v120 = MEMORY[0x1E696AEC0];
  name = [selfCopy name];
  if (configuration - 1 > 3)
  {
    v122 = @"None";
  }

  else
  {
    v122 = off_1E7999D58[configuration - 1];
  }

  -[BWNode setName:](v62, "setName:", [v120 stringWithFormat:@"%@ Stabilizer (%@)", name, v122]);
  [(BWVISNode *)v62 setPipelineTraceID:executionMode];
  if (([graphCopy addNode:v62 error:0] & 1) == 0 || (objc_msgSend(outputCopy, "connectOutput:toInput:pipelineStage:", v132, -[BWNode input](v62, "input"), d) & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
LABEL_100:
    FigDebugAssert3();
    if (!v96)
    {
      goto LABEL_27;
    }

    goto LABEL_96;
  }

  if (v96)
  {
    CFRelease(v96);
  }

  return v62;
}

- (uint64_t)motionAttachmentsNode
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (double)irisVISCleanOutputRect
{
  if (self)
  {
    return *(self + 56);
  }

  else
  {
    return 0.0;
  }
}

@end