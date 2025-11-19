@interface FigCaptureVISPipeline
- (BWVISNode)_buildVISPipelineWithUpstreamOutput:(void *)a3 graph:(void *)a4 parentPipeline:(void *)a5 videoCaptureConnectionConfiguration:(void *)a6 pipelineStage:(void *)a7 sdofPipelineStage:(uint64_t)a8 videoStabilizationType:(unsigned int)a9 motionAttachmentsSource:(int)a10 fillExtendedRowsOfOutputBuffer:(unsigned int)a11 overCaptureEnabled:(unsigned int)a12 stereoMode:(char)a13 videoStabilizationOverscanOverride:(int)a14 videoStabilizationStrength:(unsigned int)a15 motionMetadataPreloadingEnabled:(void *)a16 visExecutionMode:(unint64_t)a17 pipelineTraceID:(uint64_t)a18 captureDevice:(char)a19 outputDimensions:(char)a20 generatedTransformsOutputDimensionsOverride:(uint64_t)a21 P3ToBT2020ConversionEnabled:(unsigned int)a22 stabilizeDepthAttachments:(unsigned __int8)a23 outputDepthDimensions:(unsigned __int8)a24 maxLossyCompressionLevel:(char)a25 videoSTFEnabled:(unsigned __int8)a26 videoGreenGhostMitigationEnabled:(unsigned __int8)a27 lightSourceMaskAndKeypointDescriptorDataEnabled:(unsigned __int8)a28 videoGreenGhostOfflineMetadataEnabled:(unsigned __int8)a29 videoGreenGhostOfflineLightSourceMaskEnabled:(unsigned __int8)a30 personSegmentationRenderingEnabled:(unsigned __int8)a31 smartStyleRenderingEnabled:(void *)a32 smartStyleReversibilityEnabled:(uint64_t)a33 lowResImageUsedByVideoEncoderEnabled:portTypesWithGeometricDistortionCorrectionInVISEnabled:visProcessingSemaphore:;
- (BWVISNode)_newVISNodeWithUpstreamOutput:(void *)a3 graph:(void *)a4 parentPipeline:(void *)a5 videoCaptureConnectionConfiguration:(unsigned int)a6 videoStabilizationType:(int)a7 motionAttachmentsSource:(char)a8 fillExtendedRowsOfOutputBuffer:(float)a9 overCaptureEnabled:(unsigned __int8)a10 stereoMode:(unsigned int)a11 videoStabilizationOverscanOverride:(unsigned int)a12 videoStabilizationStrength:(char)a13 motionMetadataPreloadingEnabled:(int)a14 visExecutionMode:(unsigned int)a15 pipelineTraceID:(void *)a16 pipelineStage:(void *)a17 captureDevice:(unint64_t)a18 outputDimensions:(uint64_t)a19 generatedTransformsOutputDimensionsOverride:(double *)a20 irisVISCleanOutputRectOut:(char)a21 P3ToBT2020ConversionEnabled:(char)a22 stabilizeDepthAttachments:(uint64_t)a23 outputDepthDimensions:(unsigned int)a24 maxLossyCompressionLevel:(unsigned __int8)a25 videoSTFEnabled:(unsigned __int8)a26 videoGreenGhostMitigationEnabled:(char)a27 lightSourceMaskAndKeypointDescriptorDataEnabled:(unsigned __int8)a28 videoGreenGhostOfflineMetadataEnabled:(unsigned __int8)a29 videoGreenGhostOfflineLightSourceMaskEnabled:(unsigned __int8)a30 personSegmentationRenderingEnabled:(unsigned __int8)a31 smartStyleRenderingEnabled:(unsigned __int8)a32 smartStyleReversibilityEnabled:(unsigned __int8)a33 lowResImageUsedByVideoEncoderEnabled:(void *)a34 portTypesWithGeometricDistortionCorrectionInVISEnabled:(uint64_t)a35 visProcessingSemaphore:;
- (BWVISNode)initWithUpstreamOutput:(void *)a3 graph:(uint64_t)a4 name:(void *)a5 parentPipeline:(void *)a6 videoCaptureConnectionConfiguration:(void *)a7 pipelineStage:(void *)a8 sdofPipelineStage:(unsigned int)a9 videoStabilizationType:(unsigned int)a10 motionAttachmentsSource:(__int16)a11 fillExtendedRowsOfOutputBuffer:(unsigned int)a12 overCaptureEnabled:(unsigned int)a13 stereoMode:(char)a14 videoStabilizationOverscanOverride:(int)a15 videoStabilizationStrength:(unsigned int)a16 motionMetadataPreloadingEnabled:(void *)a17 visExecutionMode:(unint64_t)a18 pipelineTraceID:(uint64_t)a19 captureDevice:(char)a20 outputDimensions:(char)a21 generatedTransformsOutputDimensionsOverride:(uint64_t)a22 P3ToBT2020ConversionEnabled:(unsigned int)a23 stabilizeDepthAttachments:(unsigned __int8)a24 outputDepthDimensions:(unsigned __int8)a25 maxLossyCompressionLevel:(char)a26 videoSTFEnabled:(unsigned __int8)a27 videoGreenGhostMitigationEnabled:(unsigned __int8)a28 lightSourceMaskAndKeypointDescriptorDataEnabled:(unsigned __int8)a29 videoGreenGhostOfflineMetadataEnabled:(unsigned __int8)a30 videoGreenGhostOfflineLightSourceMaskEnabled:(unsigned __int8)a31 personSegmentationRenderingEnabled:(unsigned __int8)a32 smartStyleRenderingEnabled:(void *)a33 smartStyleReversibilityEnabled:(uint64_t)a34 lowResImageUsedByVideoEncoderEnabled:portTypesWithGeometricDistortionCorrectionInVISEnabled:visProcessingSemaphore:;
- (double)irisVISCleanOutputRect;
- (uint64_t)_buildMotionAttachmentsNodeWithUpstreamOutput:(void *)a1 graph:(uint64_t)a2 parentPipeline:(void *)a3 horizontalSensorBinningFactor:(void *)a4 verticalSensorBinningFactor:(unsigned int)a5 maxSupportedFrameRate:(unsigned int)a6 pipelineStage:(void *)a7 motionAttachmentsSource:(unsigned int)a8 captureDevice:(float)a9 isPanorama:(void *)a10 optimizesImagesForOfflineVideoStabilization:(unsigned __int8)a11 provideSourceVideoWithMotionAttachmentsOutput:(char)a12 provideOfflineVISMotionDataOutput:(char)a13 maxLossyCompressionLevel:(unsigned __int8)a14 motionAttachmentsNodeOut:(BWMotionAttachmentsNode *)a15 errOut:(_DWORD *)a16;
- (uint64_t)motionAttachmentsNode;
- (uint64_t)sdofVISNode;
- (uint64_t)visNode;
- (void)_recreateISPProcessingSessionForVISNode:(uint64_t)a1 withCaptureDevice:(void *)a2;
- (void)dealloc;
- (void)liveReconfigureForOutputDimensions:(uint64_t)a1;
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

- (BWVISNode)initWithUpstreamOutput:(void *)a3 graph:(uint64_t)a4 name:(void *)a5 parentPipeline:(void *)a6 videoCaptureConnectionConfiguration:(void *)a7 pipelineStage:(void *)a8 sdofPipelineStage:(unsigned int)a9 videoStabilizationType:(unsigned int)a10 motionAttachmentsSource:(__int16)a11 fillExtendedRowsOfOutputBuffer:(unsigned int)a12 overCaptureEnabled:(unsigned int)a13 stereoMode:(char)a14 videoStabilizationOverscanOverride:(int)a15 videoStabilizationStrength:(unsigned int)a16 motionMetadataPreloadingEnabled:(void *)a17 visExecutionMode:(unint64_t)a18 pipelineTraceID:(uint64_t)a19 captureDevice:(char)a20 outputDimensions:(char)a21 generatedTransformsOutputDimensionsOverride:(uint64_t)a22 P3ToBT2020ConversionEnabled:(unsigned int)a23 stabilizeDepthAttachments:(unsigned __int8)a24 outputDepthDimensions:(unsigned __int8)a25 maxLossyCompressionLevel:(char)a26 videoSTFEnabled:(unsigned __int8)a27 videoGreenGhostMitigationEnabled:(unsigned __int8)a28 lightSourceMaskAndKeypointDescriptorDataEnabled:(unsigned __int8)a29 videoGreenGhostOfflineMetadataEnabled:(unsigned __int8)a30 videoGreenGhostOfflineLightSourceMaskEnabled:(unsigned __int8)a31 personSegmentationRenderingEnabled:(unsigned __int8)a32 smartStyleRenderingEnabled:(void *)a33 smartStyleReversibilityEnabled:(uint64_t)a34 lowResImageUsedByVideoEncoderEnabled:portTypesWithGeometricDistortionCorrectionInVISEnabled:visProcessingSemaphore:
{
  if (!a1)
  {
    return 0;
  }

  v45.receiver = a1;
  v45.super_class = FigCaptureVISPipeline;
  v40 = objc_msgSendSuper2(&v45, sel_initWithGraph_name_);
  v41 = v40;
  if (v40)
  {
    v43 = *(MEMORY[0x1E695F058] + 16);
    *(v40 + 56) = *MEMORY[0x1E695F058];
    *(v40 + 72) = v43;
    *(v40 + 11) = [a17 device];
    LOWORD(v44) = a11;
    [FigCaptureVISPipeline _buildVISPipelineWithUpstreamOutput:v41 graph:a2 parentPipeline:a3 videoCaptureConnectionConfiguration:a5 pipelineStage:a6 sdofPipelineStage:a7 videoStabilizationType:a8 motionAttachmentsSource:a9 fillExtendedRowsOfOutputBuffer:a10 overCaptureEnabled:v44 stereoMode:a12 videoStabilizationOverscanOverride:a13 videoStabilizationStrength:a14 motionMetadataPreloadingEnabled:a15 visExecutionMode:a16 pipelineTraceID:a17 captureDevice:a18 outputDimensions:a19 generatedTransformsOutputDimensionsOverride:a20 P3ToBT2020ConversionEnabled:a21 stabilizeDepthAttachments:a22 outputDepthDimensions:a23 maxLossyCompressionLevel:a24 videoSTFEnabled:a25 videoGreenGhostMitigationEnabled:a26 lightSourceMaskAndKeypointDescriptorDataEnabled:a27 videoGreenGhostOfflineMetadataEnabled:a28 videoGreenGhostOfflineLightSourceMaskEnabled:a29 personSegmentationRenderingEnabled:a30 smartStyleRenderingEnabled:a31 smartStyleReversibilityEnabled:a32 lowResImageUsedByVideoEncoderEnabled:a33 portTypesWithGeometricDistortionCorrectionInVISEnabled:a34 visProcessingSemaphore:?];
    if (!v41->super._name || [a6 irisSDOFEnabled] && !v41->super._subgraphName)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();

      return 0;
    }
  }

  return v41;
}

- (BWVISNode)_buildVISPipelineWithUpstreamOutput:(void *)a3 graph:(void *)a4 parentPipeline:(void *)a5 videoCaptureConnectionConfiguration:(void *)a6 pipelineStage:(void *)a7 sdofPipelineStage:(uint64_t)a8 videoStabilizationType:(unsigned int)a9 motionAttachmentsSource:(int)a10 fillExtendedRowsOfOutputBuffer:(unsigned int)a11 overCaptureEnabled:(unsigned int)a12 stereoMode:(char)a13 videoStabilizationOverscanOverride:(int)a14 videoStabilizationStrength:(unsigned int)a15 motionMetadataPreloadingEnabled:(void *)a16 visExecutionMode:(unint64_t)a17 pipelineTraceID:(uint64_t)a18 captureDevice:(char)a19 outputDimensions:(char)a20 generatedTransformsOutputDimensionsOverride:(uint64_t)a21 P3ToBT2020ConversionEnabled:(unsigned int)a22 stabilizeDepthAttachments:(unsigned __int8)a23 outputDepthDimensions:(unsigned __int8)a24 maxLossyCompressionLevel:(char)a25 videoSTFEnabled:(unsigned __int8)a26 videoGreenGhostMitigationEnabled:(unsigned __int8)a27 lightSourceMaskAndKeypointDescriptorDataEnabled:(unsigned __int8)a28 videoGreenGhostOfflineMetadataEnabled:(unsigned __int8)a29 videoGreenGhostOfflineLightSourceMaskEnabled:(unsigned __int8)a30 personSegmentationRenderingEnabled:(unsigned __int8)a31 smartStyleRenderingEnabled:(void *)a32 smartStyleReversibilityEnabled:(uint64_t)a33 lowResImageUsedByVideoEncoderEnabled:portTypesWithGeometricDistortionCorrectionInVISEnabled:visProcessingSemaphore:
{
  if (result)
  {
    v38 = result;
    v80 = 0;
    v39 = [objc_msgSend(a5 "sourceConfiguration")];
    v40 = [a5 irisSDOFEnabled];
    v41 = [objc_msgSend(a5 "sourceConfiguration")];
    v75 = v40;
    if (a14 != 3)
    {
      v56 = v41 == 4;
      v79 = 0;
      v57 = [objc_msgSend(a5 "irisSinkConfiguration")];
      if (a14 == 5)
      {
        v58 = 1;
      }

      else
      {
        v58 = v57;
      }

      v78 = 0;
      v74 = [v39 horizontalSensorBinningFactor];
      v59 = [v39 verticalSensorBinningFactor];
      [v39 maxSupportedFrameRate];
      v61 = [FigCaptureVISPipeline _buildMotionAttachmentsNodeWithUpstreamOutput:v38 graph:a2 parentPipeline:a3 horizontalSensorBinningFactor:a4 verticalSensorBinningFactor:v74 maxSupportedFrameRate:v59 pipelineStage:a6 motionAttachmentsSource:a9 captureDevice:v60 isPanorama:a16 optimizesImagesForOfflineVideoStabilization:v56 provideSourceVideoWithMotionAttachmentsOutput:v58 provideOfflineVISMotionDataOutput:1 maxLossyCompressionLevel:0 motionAttachmentsNodeOut:&v79 errOut:&v78];
      if (v78)
      {
        fig_log_get_emitter();
        return FigDebugAssert3();
      }

      a2 = v61;
      v38->super._outputs = v79;
      v40 = v75;
    }

    if (v40)
    {
      v42 = objc_alloc_init(BWVideoSDOFSplitNode);
      v43 = MEMORY[0x1E696AEC0];
      v69 = [(BWNode *)v38 name];
      -[BWNode setName:](v42, "setName:", [v43 stringWithFormat:@"%@ Iris SDOF Split"]);
      if (([a4 addNode:v42 error:&v80] & 1) == 0 || (objc_msgSend(a3, "connectOutput:toInput:pipelineStage:", a2, -[BWNode input](v42, "input"), a6) & 1) == 0)
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

    v44 = a29;
    if (a14 == 3 || a14 == 0)
    {
      v46 = a30;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    v73 = v46;
    v72 = v44;
    v71 = a6;
    v47 = OUTLINED_FUNCTION_1_97();
    v77 = v48;
    v55 = [(FigCaptureVISPipeline *)v49 _newVISNodeWithUpstreamOutput:v50 graph:v51 parentPipeline:v52 videoCaptureConnectionConfiguration:v53 videoStabilizationType:v54 motionAttachmentsSource:a9 fillExtendedRowsOfOutputBuffer:v48 overCaptureEnabled:v47 stereoMode:v69 videoStabilizationOverscanOverride:a11 videoStabilizationStrength:a12 motionMetadataPreloadingEnabled:a13 visExecutionMode:a14 pipelineTraceID:a15 pipelineStage:v71 captureDevice:a16 outputDimensions:a17 generatedTransformsOutputDimensionsOverride:a18 irisVISCleanOutputRectOut:&v38->super._supportsConcurrentLiveInputCallbacks P3ToBT2020ConversionEnabled:a19 stabilizeDepthAttachments:a20 outputDepthDimensions:a21 maxLossyCompressionLevel:a22 videoSTFEnabled:a23 videoGreenGhostMitigationEnabled:a24 lightSourceMaskAndKeypointDescriptorDataEnabled:a25 videoGreenGhostOfflineMetadataEnabled:a26 videoGreenGhostOfflineLightSourceMaskEnabled:a27 personSegmentationRenderingEnabled:a28 smartStyleRenderingEnabled:v72 smartStyleReversibilityEnabled:v73 lowResImageUsedByVideoEncoderEnabled:a31 portTypesWithGeometricDistortionCorrectionInVISEnabled:a32 visProcessingSemaphore:a33];
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
      result = [(FigCaptureVISPipeline *)v63 _newVISNodeWithUpstreamOutput:v64 graph:v65 parentPipeline:v66 videoCaptureConnectionConfiguration:v67 videoStabilizationType:v68 motionAttachmentsSource:a9 fillExtendedRowsOfOutputBuffer:v77 overCaptureEnabled:v62 stereoMode:v70 videoStabilizationOverscanOverride:0 videoStabilizationStrength:a12 motionMetadataPreloadingEnabled:a13 visExecutionMode:a14 pipelineTraceID:a15 pipelineStage:a7 captureDevice:a16 outputDimensions:a17 generatedTransformsOutputDimensionsOverride:a18 irisVISCleanOutputRectOut:0 P3ToBT2020ConversionEnabled:a19 stabilizeDepthAttachments:a20 outputDepthDimensions:a21 maxLossyCompressionLevel:a22 videoSTFEnabled:a23 videoGreenGhostMitigationEnabled:a24 lightSourceMaskAndKeypointDescriptorDataEnabled:a25 videoGreenGhostOfflineMetadataEnabled:a26 videoGreenGhostOfflineLightSourceMaskEnabled:a27 personSegmentationRenderingEnabled:a28 smartStyleRenderingEnabled:a29 smartStyleReversibilityEnabled:a30 lowResImageUsedByVideoEncoderEnabled:a31 portTypesWithGeometricDistortionCorrectionInVISEnabled:0 visProcessingSemaphore:0];
      v38->super._subgraphName = &result->super.super.isa;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  return result;
}

- (void)liveReconfigureForOutputDimensions:(uint64_t)a1
{
  if (a1)
  {
    [*(a1 + 40) setOutputDimensions:a2];
    [*(a1 + 48) setOutputDimensions:a2];
    v9.origin.x = OUTLINED_FUNCTION_2_83();
    if (!CGRectIsEmpty(v9))
    {
      *(a1 + 56) = vp_irisVISCleanOutputRectForOutputDimensions([*(a1 + 40) outputDimensions]);
      *(a1 + 64) = v4;
      *(a1 + 72) = v5;
      *(a1 + 80) = v6;
      [*(a1 + 40) setIrisVISCleanOutputRect:OUTLINED_FUNCTION_2_83()];
    }

    [FigCaptureVISPipeline _recreateISPProcessingSessionForVISNode:a1 withCaptureDevice:*(a1 + 40)];
    v7 = *(a1 + 48);

    [FigCaptureVISPipeline _recreateISPProcessingSessionForVISNode:a1 withCaptureDevice:v7];
  }
}

- (void)_recreateISPProcessingSessionForVISNode:(uint64_t)a1 withCaptureDevice:(void *)a2
{
  if (a1 && [a2 ispProcessingSession])
  {
    v6 = 0;
    v4 = [*(a1 + 88) copyISPProcessingSessionWithType:objc_msgSend(objc_msgSend(a2 error:{"ispProcessingSession"), "type"), &v6}];
    if (v4)
    {
      v5 = v4;
      [a2 setIspProcessingSession:v4];
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }
  }
}

- (uint64_t)_buildMotionAttachmentsNodeWithUpstreamOutput:(void *)a1 graph:(uint64_t)a2 parentPipeline:(void *)a3 horizontalSensorBinningFactor:(void *)a4 verticalSensorBinningFactor:(unsigned int)a5 maxSupportedFrameRate:(unsigned int)a6 pipelineStage:(void *)a7 motionAttachmentsSource:(unsigned int)a8 captureDevice:(float)a9 isPanorama:(void *)a10 optimizesImagesForOfflineVideoStabilization:(unsigned __int8)a11 provideSourceVideoWithMotionAttachmentsOutput:(char)a12 provideOfflineVISMotionDataOutput:(char)a13 maxLossyCompressionLevel:(unsigned __int8)a14 motionAttachmentsNodeOut:(BWMotionAttachmentsNode *)a15 errOut:(_DWORD *)a16
{
  if (!a1)
  {
    return 0;
  }

  v19 = a11;
  v40 = 0;
  v39 = 0;
  v20 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters motionAttachmentsParameters];
  v21 = [a10 sensorIDDictionaryByPortType];
  v22 = [a10 cameraInfoByPortType];
  v23 = [a10 activePortTypes];
  if (a12)
  {
    v19 = 2;
  }

  v24 = [BWMotionAttachmentsNode alloc];
  *(&v32 + 5) = a14;
  BYTE4(v32) = a13;
  LODWORD(v32) = [a7 priority];
  *&v25 = a9;
  v26 = [BWMotionAttachmentsNode initWithSensorIDDictionaryByPortType:v24 cameraInfoByPortType:"initWithSensorIDDictionaryByPortType:cameraInfoByPortType:tuningParameters:activePortTypes:horizontalSensorBinningFactor:verticalSensorBinningFactor:maxSupportedFrameRate:motionAttachmentsMode:motionAttachmentsSource:motionCallbackThreadPriority:provideSourceVideoWithMotionAttachmentsOutput:provideOfflineVISMotionDataOutput:inputFormatIsProResRaw:errorOut:" tuningParameters:v21 activePortTypes:v22 horizontalSensorBinningFactor:v20 verticalSensorBinningFactor:v23 maxSupportedFrameRate:a5 motionAttachmentsMode:a6 motionAttachmentsSource:v25 motionCallbackThreadPriority:__PAIR64__(a8 provideSourceVideoWithMotionAttachmentsOutput:v19) provideOfflineVISMotionDataOutput:v32 inputFormatIsProResRaw:&v39 errorOut:?];
  if (v39)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    v28 = 0;
LABEL_17:
    v30 = a16;
    goto LABEL_12;
  }

  v27 = v26;
  -[BWNode setName:](v26, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Motion Attachments", objc_msgSend(a1, "name")]);
  if ([a4 addNode:v27 error:&v40])
  {
    v28 = a2;
    if ([a3 connectOutput:a2 toInput:-[BWNode input](v27 pipelineStage:{"input"), a7}])
    {
      if (a13)
      {
        v29 = [(BWMotionAttachmentsNode *)v27 sourceVideoWithMotionAttachmentsOutput];
      }

      else
      {
        v29 = [(BWMotionAttachmentsNode *)v27 offlineVISMotionDataOutput];
      }

      v28 = v29;
      v30 = a16;
      if (a15)
      {
        *a15 = v27;
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
  v28 = a2;
  v30 = a16;
LABEL_12:
  *v30 = v39;
  return v28;
}

- (BWVISNode)_newVISNodeWithUpstreamOutput:(void *)a3 graph:(void *)a4 parentPipeline:(void *)a5 videoCaptureConnectionConfiguration:(unsigned int)a6 videoStabilizationType:(int)a7 motionAttachmentsSource:(char)a8 fillExtendedRowsOfOutputBuffer:(float)a9 overCaptureEnabled:(unsigned __int8)a10 stereoMode:(unsigned int)a11 videoStabilizationOverscanOverride:(unsigned int)a12 videoStabilizationStrength:(char)a13 motionMetadataPreloadingEnabled:(int)a14 visExecutionMode:(unsigned int)a15 pipelineTraceID:(void *)a16 pipelineStage:(void *)a17 captureDevice:(unint64_t)a18 outputDimensions:(uint64_t)a19 generatedTransformsOutputDimensionsOverride:(double *)a20 irisVISCleanOutputRectOut:(char)a21 P3ToBT2020ConversionEnabled:(char)a22 stabilizeDepthAttachments:(uint64_t)a23 outputDepthDimensions:(unsigned int)a24 maxLossyCompressionLevel:(unsigned __int8)a25 videoSTFEnabled:(unsigned __int8)a26 videoGreenGhostMitigationEnabled:(char)a27 lightSourceMaskAndKeypointDescriptorDataEnabled:(unsigned __int8)a28 videoGreenGhostOfflineMetadataEnabled:(unsigned __int8)a29 videoGreenGhostOfflineLightSourceMaskEnabled:(unsigned __int8)a30 personSegmentationRenderingEnabled:(unsigned __int8)a31 smartStyleRenderingEnabled:(unsigned __int8)a32 smartStyleReversibilityEnabled:(unsigned __int8)a33 lowResImageUsedByVideoEncoderEnabled:(void *)a34 portTypesWithGeometricDistortionCorrectionInVISEnabled:(uint64_t)a35 visProcessingSemaphore:
{
  if (!a1)
  {
    return 0;
  }

  v139 = [objc_msgSend(a17 "captureStream")];
  v42 = [objc_msgSend(a5 "sourceConfiguration")];
  v43 = [a5 irisVISEnabled];
  if (v43)
  {
    v44 = [a5 irisSinkConfiguration];
    if (v44)
    {
      [v44 irisMovieVideoFrameDuration];
    }

    else
    {
      memset(&v161, 0, sizeof(v161));
    }

    v49 = FigCaptureFrameRateFromCMTime(&v161);
    v47 = FigCaptureFrameRateAsFloat(v49, v50);
    v48 = [a5 irisVISMethod];
  }

  else
  {
    v45 = [objc_msgSend(a5 "sourceConfiguration")];
    v47 = FigCaptureFrameRateAsFloat(v45, v46);
    v48 = [a5 videoStabilizationMethod];
  }

  v142 = v48;
  if (v48 == 5 || v48 == 3)
  {
    [v42 cinematicStabilizationExtendedLookAheadDuration];
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  v54 = [a17 thermalSystemPressureLevel];
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    goto LABEL_26;
  }

  v137 = v54;
  v160 = 0;
  v55 = [objc_msgSend(a5 "sourceConfiguration")];
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

  if (a6 == 4)
  {
    v61 = a17;
    cf = [a17 copyISPProcessingSessionWithType:6 error:0];
    if (!cf)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v61 = a17;
    if (a6 == 3)
    {
      cf = [a17 copyISPProcessingSessionWithType:1 error:0];
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

  v131 = a3;
  v132 = a2;
  v129 = a1;
  v130 = a4;
  v144 = a5;
  if (v43)
  {
    v63 = vp_irisVISCleanOutputRectForOutputDimensions(a18);
    v67 = v63;
    v68 = v64;
    v69 = v65;
    v70 = v66;
    if (a20)
    {
      *a20 = v63;
      a20[1] = v64;
      a20[2] = v65;
      a20[3] = v66;
    }

    v61 = a17;
  }

  else
  {
    v67 = *MEMORY[0x1E695F058];
    v68 = *(MEMORY[0x1E695F058] + 8);
    v69 = *(MEMORY[0x1E695F058] + 16);
    v70 = *(MEMORY[0x1E695F058] + 24);
  }

  if ([objc_msgSend(a5 "irisSinkConfiguration")] & 1) != 0 || (objc_msgSend(v61, "parallaxMitigationBasedOnZoomFactorEnabled"))
  {
    v134 = 1;
  }

  else
  {
    v134 = [v61 adaptiveOverscanEnabled];
  }

  v133 = [v61 cameraInfoByPortType];
  v143 = [MEMORY[0x1E695DF70] array];
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v71 = [v61 activePortTypes];
  v72 = [v71 countByEnumeratingWithState:&v155 objects:v154 count:16];
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
        objc_enumerationMutation(v71);
      }

      v76 = *(*(&v155 + 1) + 8 * v75);
      v77 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType([objc_msgSend(a5 "sourceConfiguration")], v42, v76, &v159);
      if (v159)
      {
        break;
      }

      v78 = v77;
      if (!v77)
      {
        break;
      }

      v79 = [v77 distortionCompensationSupported];
      if (a14 != 5 && !a11 && v79 && ([a34 containsObject:v76] & 1) == 0)
      {
        [v143 addObject:v76];
      }

      if (v73 == ++v75)
      {
        v73 = [v71 countByEnumeratingWithState:&v155 objects:v154 count:16];
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
  v84 = a9;
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
  v91 = [a16 priority];
  BYTE1(v127) = v135;
  LOBYTE(v127) = v86;
  HIBYTE(v126) = a11 == 1;
  BYTE6(v126) = a27;
  WORD2(v126) = __PAIR16__(a29, a28);
  *&v126 = v85;
  HIDWORD(v125) = a14;
  BYTE2(v125) = a13;
  BYTE1(v125) = v134;
  LOBYTE(v125) = [a5 zoomSmoothingEnabled];
  BYTE5(v124) = a10;
  BYTE4(v124) = a8;
  LODWORD(v124) = a7;
  LODWORD(v92) = v90;
  *&v93 = v47;
  *&v94 = v84;
  LODWORD(v95) = v128;
  v96 = cf;
  v62 = [BWVISNode initWithSensorIDDict:v88 stabilizationMethod:"initWithSensorIDDict:stabilizationMethod:stabilizationType:ispProcessingSession:maxSupportedFrameRate:activeMaxFrameRate:gpuPriority:metalSubmissionAndCompletionQueuePriority:motionAttachmentsSource:fillExtendedRowsOfOutputBuffer:overCaptureEnabled:stereoMode:videoStabilizationOverscanOverride:videoStabilizationStrength:zoomSmoothingEnabled:applyFrameCropOffset:motionMetadataPreloadingEnabled:visExecutionMode:livePhotoCleanOutputRect:cameraInfoByPortType:cvisExtendedLookAheadDuration:distortionCorrectionEnabledPortTypes:distortionCompensationEnabledPortTypes:minDistanceForBravoParallaxShift:videoGreenGhostOfflineMetadataEnabled:videoGreenGhostOfflineLightSourceMaskEnabled:lightSourceMaskAndKeypointDescriptorDataEnabled:attachStabilizedOutputCameraTrajectory:systemIsUnderCriticalThermalPressure:faceAwareVideoStabilizationEnabled:" stabilizationType:v139 ispProcessingSession:v142 maxSupportedFrameRate:a6 activeMaxFrameRate:cf gpuPriority:v138 metalSubmissionAndCompletionQueuePriority:v91 motionAttachmentsSource:v92 fillExtendedRowsOfOutputBuffer:v93 overCaptureEnabled:v94 stereoMode:v83 videoStabilizationOverscanOverride:v82 videoStabilizationStrength:v81 zoomSmoothingEnabled:v80 applyFrameCropOffset:v95 motionMetadataPreloadingEnabled:v124 visExecutionMode:__PAIR64__(a12 livePhotoCleanOutputRect:a11) cameraInfoByPortType:v125 cvisExtendedLookAheadDuration:v133 distortionCorrectionEnabledPortTypes:a34 distortionCompensationEnabledPortTypes:v143 minDistanceForBravoParallaxShift:v126 videoGreenGhostOfflineMetadataEnabled:v127 videoGreenGhostOfflineLightSourceMaskEnabled:? lightSourceMaskAndKeypointDescriptorDataEnabled:? attachStabilizedOutputCameraTrajectory:? systemIsUnderCriticalThermalPressure:? faceAwareVideoStabilizationEnabled:?];
  [(BWVISNode *)v62 setGeneratedTransformsOutputDimensionsOverride:a19];
  v97 = a17;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  DeviceToCameraTransform = FigCaptureGetDeviceToCameraTransform([a17 position] == 2);
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
  v107 = [a17 captureStreams];
  v108 = [v107 countByEnumeratingWithState:&v146 objects:v145 count:16];
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
          objc_enumerationMutation(v107);
        }

        [*(*(&v146 + 1) + 8 * v112) currentNonLowPowerSphereMode];
        v113 = FigCFEqual() || FigCFEqual() || FigCFEqual() != 0;
        v110 = v113 | v110 & 1;
        ++v112;
      }

      while (v109 != v112);
      v114 = [v107 countByEnumeratingWithState:&v146 objects:v145 count:16];
      v109 = v114;
    }

    while (v114);
    v96 = cf;
    v97 = a17;
  }

  else
  {
    v110 = 0;
  }

  v115 = [v97 variableFrameRateControlEnabled];
  [(BWVISNode *)v62 setOutputDimensions:a18];
  [(BWVISNode *)v62 setSphereVideoEnabled:v110 | a10];
  [(BWVISNode *)v62 setFrameRateConversionEnabled:v115];
  if (a21)
  {
    [(BWVISNode *)v62 setOutputColorSpaceProperties:6];
  }

  if (a22)
  {
    [(BWVISNode *)v62 setStabilizeDepthAttachments:1];
    [(BWVISNode *)v62 setOutputDepthDimensions:a23];
  }

  [(BWVISNode *)v62 setMaxLossyCompressionLevel:a24];
  -[BWVISNode setFlipHorizontalExcludingIris:](v62, "setFlipHorizontalExcludingIris:", [v144 physicalMirroringForMovieRecordingEnabled]);
  [(BWVISNode *)v62 setVideoSTFEnabled:a25];
  [(BWVISNode *)v62 setVideoGreenGhostMitigationEnabled:a26];
  [(BWVISNode *)v62 setSmartStyleRenderingEnabled:a31];
  [(BWVISNode *)v62 setSmartStyleReversibilityEnabled:a32];
  v116 = [MEMORY[0x1E695DF90] dictionary];
  v117 = [objc_msgSend(objc_msgSend(v144 "sourceConfiguration")];
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

  [v116 setObject:v118 forKeyedSubscript:*off_1E798CEB0];
  [v116 setObject:v119 forKeyedSubscript:*off_1E798CEB8];
  [(BWVISNode *)v62 setLowResImageUsedByVideoEncoderEnabled:a33];
  [(BWVISNode *)v62 setPersonSegmentationRenderingEnabled:a30];
  [(BWVISNode *)v62 setProcessingSemaphore:a35];
  v120 = MEMORY[0x1E696AEC0];
  v121 = [v129 name];
  if (a6 - 1 > 3)
  {
    v122 = @"None";
  }

  else
  {
    v122 = off_1E7999D58[a6 - 1];
  }

  -[BWNode setName:](v62, "setName:", [v120 stringWithFormat:@"%@ Stabilizer (%@)", v121, v122]);
  [(BWVISNode *)v62 setPipelineTraceID:a15];
  if (([v130 addNode:v62 error:0] & 1) == 0 || (objc_msgSend(v131, "connectOutput:toInput:pipelineStage:", v132, -[BWNode input](v62, "input"), a16) & 1) == 0)
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
  if (a1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0.0;
  }
}

@end