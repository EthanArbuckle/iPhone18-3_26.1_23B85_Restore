@interface FigCapturePreviewSinkPipeline
- (BOOL)discardsImageQueueSampleData;
- (CGPoint)primaryCaptureRectCenter;
- (FigCapturePreviewSinkPipeline)initWithConfiguration:(id)a3 sourcePreviewOutput:(id)a4 imageQueueSinkNode:(id)a5 graph:(id)a6 name:(id)a7 inferenceScheduler:(id)a8 captureDevice:(id)a9 previewTapDelegate:(id)a10 zoomPIPOverlayDelegate:(id)a11 sourceStillImageOutputsByPortType:(id)a12;
- (FigCaptureVideoTransform)outputTransform;
- (FigCaptureVideoTransform)videoThumbnailSinkOutputTransform;
- (float)portraitLightingEffectStrength;
- (id)_buildImageQueuePreviewSinkPipeline:(uint64_t)a3 previewPipelineStage:(void *)a4 videoPreviewSinkConnectionConfiguration:(int)a5 previewScalerOutputBuffersAreShared:(int)a6 zoomPIPOverlayEnabled:(unsigned int)a7 zoomPIPSmartStyleRenderingEnabled:(unsigned int)a8 zoomPIPSlaveStreamingEnabled:(float)a9 zoomPIPSlaveStreamingFrameRate:(unsigned __int8)a10 debugOverlayEnabled:(unsigned __int8)a11 parallelGraphRebuildEnabled:(uint64_t)a12 transform:(uint64_t)a13 remoteVideoPreview:(unsigned __int8)a14 maxLossyCompressionLevel:(unsigned int)a15 clientAuditToken:(_OWORD *)a16 graph:(void *)a17 captureDevice:(void *)a18 previewTapDelegate:(uint64_t)a19 videoHDRImageStatisticsEnabled:(unsigned __int8)a20 zoomPIPOverlayDelegate:(uint64_t)a21 metalCommandQueue:(uint64_t)a22;
- (id)_buildPreviewSmartStyleCoefficientsTimeMachineSinkPipeline:(uint64_t)a3 upstreamPipelineStageForPreviewTimeMachine:(uint64_t)a4 previewTimeMachineConnectionConfiguration:(void *)a5 graph:(void *)a6 captureDevice:;
- (id)_metalCommandQueueWithNamePrefix:(uint64_t)a1 priority:(void *)a2;
- (id)_stashPreviewImageQueueUpdatedNotificationPayload:(unint64_t)a3 previewDimensions:(int)a4 remoteVideoPreview:;
- (uint64_t)_appendFilteredPreviewPipeline:(BWPipelineStage *)a3 desiredPipelineStage:(uint64_t)a4 desiredStreamingFilterPipelineStage:(uint64_t)a5 previewSinkPipelineConfiguration:(void *)a6 videoPreviewSinkConnectionConfiguration:(void *)a7 graph:(uint64_t)a8 inferenceScheduler:(void *)a9 captureDevice:(unsigned __int8)a10 focusBlurMapForDepthFiltersEnabled:(unsigned __int8)a11 depthFromMonocularNetworkEnabled:(unsigned __int8)a12 runMonocularDepthInVideoDepthNode:(unsigned int)a13 maxLossyCompressionLevel:(uint64_t)a14 metalCommandQueue:(unsigned __int8)a15 depthFilterRenderingIsAfterPreviewStitcher:(unsigned __int8)a16 portraitAutoSuggestEnabled:(void *)a17 sourceStillImageOutputsByPortType:(unsigned __int8)a18 usePrimaryPreviewSourceAttachedMediaForInference:;
- (uint64_t)_buildVideoPreviewSinkPipeline:(uint64_t)a3 sourcePreviewOutput:(void *)a4 graph:(uint64_t)a5 inferenceScheduler:(void *)a6 captureDevice:(uint64_t)a7 previewTapDelegate:(uint64_t)a8 zoomPIPOverlayDelegate:(uint64_t)a9 sourceStillImageOutputsByPortType:;
- (uint64_t)_metalCompletionQueue;
- (uint64_t)_metalSubmissionQueue;
- (uint64_t)_setPortraitRenderingInferencesNeededForFilters:(uint64_t)result;
- (uint64_t)toggleDepthDensificationAccordingToFilters:(uint64_t)result;
- (void)_buildPreviewTimeMachineSinkPipeline:(uint64_t)a3 upstreamPipelineStageForPreviewTimeMachine:(uint64_t)a4 upstreamTransform:(uint64_t)a5 previewTimeMachineConnectionConfiguration:(uint64_t)a6 videoPreviewEnabled:(uint64_t)a7 smartCameraMotionDetectionEnabled:(uint64_t)a8 graph:(void *)a9 captureDevice:(void *)a10;
- (void)dealloc;
- (void)liveReconfigureForOutputDimensions:(id)a3;
- (void)setDiscardsImageQueueSampleData:(BOOL)a3;
- (void)setFilters:(id)a3;
- (void)setPreviewTapRegistered:(BOOL)a3;
- (void)setPrimaryCaptureRectAspectRatio:(double)a3 center:(CGPoint)a4 trueVideoTransitionPercentComplete:(double)a5 smartFramingTransitionPercentComplete:(double)a6 smartFramingTransitionTargetFieldOfView:(int)a7 fencePortSendRight:(id)a8 uniqueID:(int64_t)a9;
- (void)setSceneClassifierSuspended:(BOOL)a3;
- (void)setSemanticStyle:(id)a3;
- (void)setSemanticStyle:(id)a3 animated:(BOOL)a4;
- (void)setSemanticStyleRenderingSuspended:(BOOL)a3 animated:(BOOL)a4;
- (void)setSemanticStyleSet:(id)a3 fencePortSendRight:(id)a4;
- (void)setStoppingForModeSwitch:(BOOL)a3 parallelGraphRebuildEnabled:(BOOL)a4 ispFastSwitchEnabled:(BOOL)a5 smartStyleRenderingEnabledInTrueVideoGraph:(BOOL)a6;
- (void)setVideoStabilizationOverscanCropEnabled:(BOOL)a3 momentMovieRecordingEnabled:(BOOL)a4;
- (void)updateClientAuditToken:(id *)a3;
@end

@implementation FigCapturePreviewSinkPipeline

- (FigCaptureVideoTransform)outputTransform
{
  p_outputTransform = &self->_outputTransform;
  v3 = *&self->_outputTransform.mirrored;
  dimensions = p_outputTransform->dimensions;
  result.dimensions = dimensions;
  result.mirrored = v3;
  result.rotationDegrees = HIDWORD(v3);
  return result;
}

- (FigCaptureVideoTransform)videoThumbnailSinkOutputTransform
{
  p_videoThumbnailSinkOutputTransform = &self->_videoThumbnailSinkOutputTransform;
  v3 = *&self->_videoThumbnailSinkOutputTransform.mirrored;
  dimensions = p_videoThumbnailSinkOutputTransform->dimensions;
  result.dimensions = dimensions;
  result.mirrored = v3;
  result.rotationDegrees = HIDWORD(v3);
  return result;
}

- (BOOL)discardsImageQueueSampleData
{
  v2 = [(BWNodeConnection *)[(BWNodeInput *)[(BWNode *)self->_imageQueueSinkNode input] connection] output];

  return [(BWNodeOutput *)v2 discardsSampleData];
}

- (float)portraitLightingEffectStrength
{
  filterNode = self->_filterNode;
  if (!filterNode)
  {
    return NAN;
  }

  [(BWStreamingFilterNode *)filterNode portraitLightingEffectStrength];
  return result;
}

- (CGPoint)primaryCaptureRectCenter
{
  previewStitcher = self->_previewStitcher;
  if (previewStitcher)
  {
    [(BWPreviewStitcherNode *)previewStitcher primaryCaptureRectCenter];
  }

  else
  {
    v3 = 0.5;
    v4 = 0.5;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (void)dealloc
{
  [(BWImageQueueSinkNode *)self->_imageQueueSinkNode setCaptureDevice:0];

  v3.receiver = self;
  v3.super_class = FigCapturePreviewSinkPipeline;
  [(FigCaptureSinkPipeline *)&v3 dealloc];
}

- (void)setDiscardsImageQueueSampleData:(BOOL)a3
{
  v3 = a3;
  v4 = [(BWNodeConnection *)[(BWNodeInput *)[(BWNode *)self->_imageQueueSinkNode input] connection] output];

  [(BWNodeOutput *)v4 setDiscardsSampleData:v3];
}

- (void)setSceneClassifierSuspended:(BOOL)a3
{
  if (self->_sceneClassifierSinkNode)
  {
    v3 = a3;
    sceneClassifierPipelineUpstreamOutput = self->_sceneClassifierPipelineUpstreamOutput;
    if (!sceneClassifierPipelineUpstreamOutput)
    {
      [(FigCapturePreviewSinkPipeline *)&self->_sceneClassifierPipelineUpstreamOutput setSceneClassifierSuspended:?];
      sceneClassifierPipelineUpstreamOutput = v5;
    }

    [(BWNodeOutput *)sceneClassifierPipelineUpstreamOutput setDiscardsSampleData:v3];
  }
}

- (void)setPrimaryCaptureRectAspectRatio:(double)a3 center:(CGPoint)a4 trueVideoTransitionPercentComplete:(double)a5 smartFramingTransitionPercentComplete:(double)a6 smartFramingTransitionTargetFieldOfView:(int)a7 fencePortSendRight:(id)a8 uniqueID:(int64_t)a9
{
  if (self->_primaryCaptureRectUniqueID <= a9)
  {
    v11 = *&a7;
    y = a4.y;
    x = a4.x;
    if (self->_trueVideoTransitionPercentComplete < a5 && ![(BWPreviewStitcherNode *)self->_previewStitcher trueVideoCaptureEnabled])
    {
      [(BWPreviewStabilizationNode *)self->_previewStabilizationNode setRampOffStabilizationForGraphStop:1];
    }

    self->_trueVideoTransitionPercentComplete = a5;
    self->_primaryCaptureRectUniqueID = a9;
    v18 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [a8 port];
      kdebug_trace();
    }

    [(BWImageQueueSinkNode *)self->_imageQueueSinkNode fencePortGenerationIDWillChange];
    [(BWPreviewStitcherNode *)self->_previewStitcher setPrimaryCaptureRectAspectRatio:0 center:v11 trueVideoTransitionPercentComplete:a8 trueVideoTransitionReferenceSampleBuffer:a3 smartFramingTransitionPercentComplete:x smartFramingTransitionTargetFieldOfView:y fencePortSendRight:a5, a6];
    if (*v18 == 1)
    {

      kdebug_trace();
    }
  }
}

- (void)setVideoStabilizationOverscanCropEnabled:(BOOL)a3 momentMovieRecordingEnabled:(BOOL)a4
{
  v4 = 1.0;
  if (a3)
  {
    v4 = self->_videoStabilizationOverscan + 1.0;
  }

  v5 = a4 && !self->_applyPreviewShiftToMomentCapture;
  [(BWPreviewStitcherNode *)self->_previewStitcher rampToAdditionalZoomFactor:v5 momentMovieRecordingRecenteringEnabled:v4];
}

- (void)setStoppingForModeSwitch:(BOOL)a3 parallelGraphRebuildEnabled:(BOOL)a4 ispFastSwitchEnabled:(BOOL)a5 smartStyleRenderingEnabledInTrueVideoGraph:(BOOL)a6
{
  v6 = a4;
  [(BWPreviewStitcherNode *)self->_previewStitcher setStoppingForModeSwitch:a3 delayedEndOfDataEnabled:a4 ispFastSwitchEnabled:a5 smartStyleRenderingEnabledInTrueVideoGraph:a6];
  if (v6)
  {
    [(BWPreviewStabilizationNode *)self->_previewStabilizationNode setRampOffStabilizationForGraphStop:1];
    [(BWVideoDepthNode *)self->_videoDepthNode setReleasesResourcesAtEndOfData:0];
    [(BWInferenceNode *)self->_opticalFlowInferenceNode setEndOfDataBehavior:1];
    [(BWInferenceNode *)self->_personSegmentationAndDepthNode setEndOfDataBehavior:1];
    [(BWInferenceNode *)self->_portraitOnlyPersonSegmentationNode setEndOfDataBehavior:1];
    zoomPIPOverlayNode = self->_zoomPIPOverlayNode;

    [(BWVideoPIPOverlayNode *)zoomPIPOverlayNode setReleasesResourcesAtEndOfData:0];
  }
}

- (void)setPreviewTapRegistered:(BOOL)a3
{
  previewStitcher = self->_previewStitcher;
  if (previewStitcher)
  {
    [(BWPreviewStitcherNode *)previewStitcher setPreviewTapRegistered:a3];
  }
}

- (void)updateClientAuditToken:(id *)a3
{
  self->_primaryCaptureRectUniqueID = 0;
  imageQueueSinkNode = self->_imageQueueSinkNode;
  v4 = *&a3->var0[4];
  v5[0] = *a3->var0;
  v5[1] = v4;
  [(BWImageQueueSinkNode *)imageQueueSinkNode updateClientAuditToken:v5];
}

- (void)liveReconfigureForOutputDimensions:(id)a3
{
  [(BWPixelTransferNode *)self->_scalerNode setOutputWidth:a3.var0];
  [(BWPixelTransferNode *)self->_scalerNode setOutputHeight:*&a3 >> 32];
  lowLatencyStabilizationNode = self->_lowLatencyStabilizationNode;

  [(BWSmartCropNode *)lowLatencyStabilizationNode setOutputDimensions:a3];
}

- (FigCapturePreviewSinkPipeline)initWithConfiguration:(id)a3 sourcePreviewOutput:(id)a4 imageQueueSinkNode:(id)a5 graph:(id)a6 name:(id)a7 inferenceScheduler:(id)a8 captureDevice:(id)a9 previewTapDelegate:(id)a10 zoomPIPOverlayDelegate:(id)a11 sourceStillImageOutputsByPortType:(id)a12
{
  if (a3)
  {
    v17 = *(a3 + 1);
  }

  else
  {
    v17 = 0;
  }

  v22.receiver = self;
  v22.super_class = FigCapturePreviewSinkPipeline;
  v18 = [(FigCaptureSinkPipeline *)&v22 initWithGraph:a6 name:a7 sinkID:v17];
  if (v18)
  {
    v18->_imageQueueSinkNode = a5;
    if (a3)
    {
      v18->_overCaptureEnabled = *(a3 + 130);
      v18->_singleCameraOverCaptureEnabled = *(a3 + 131);
      v18->_videoStabilizationOverscan = *(a3 + 17);
      v20 = *(a3 + 2);
    }

    else
    {
      v20 = 0;
      v18->_overCaptureEnabled = 0;
      v18->_singleCameraOverCaptureEnabled = 0;
      v18->_videoStabilizationOverscan = 0.0;
    }

    v18->_primaryCaptureRectUniqueID = [objc_msgSend(v20 "videoPreviewSinkConfiguration")];
    if (a3)
    {
      v21 = *(a3 + 9);
    }

    else
    {
      v21 = 0;
    }

    v18->_applyPreviewShiftToMomentCapture = [objc_msgSend(v21 "irisSinkConfiguration")];
    if ([(FigCapturePreviewSinkPipeline *)v18 _buildVideoPreviewSinkPipeline:a3 sourcePreviewOutput:a4 graph:a6 inferenceScheduler:a8 captureDevice:a9 previewTapDelegate:a10 zoomPIPOverlayDelegate:a11 sourceStillImageOutputsByPortType:a12])
    {
      fig_log_get_emitter();
      FigDebugAssert3();

      return 0;
    }
  }

  return v18;
}

- (uint64_t)_buildVideoPreviewSinkPipeline:(uint64_t)a3 sourcePreviewOutput:(void *)a4 graph:(uint64_t)a5 inferenceScheduler:(void *)a6 captureDevice:(uint64_t)a7 previewTapDelegate:(uint64_t)a8 zoomPIPOverlayDelegate:(uint64_t)a9 sourceStillImageOutputsByPortType:
{
  v375 = a8;
  v377 = a7;
  v391 = a4;
  v394 = result;
  if (!result)
  {
    return result;
  }

  v425[0] = 0;
  v423 = a3;
  v424 = 0;
  v343 = kFigCaptureVideoTransform_Identity;
  v422 = kFigCaptureVideoTransform_Identity;
  if (a2)
  {
    v12 = [*(a2 + 16) previewFilterRenderingEnabled];
    v13 = *(a2 + 181);
    LODWORD(v372) = *(a2 + 182);
    v14 = *(a2 + 183);
    v15 = *(a2 + 16);
  }

  else
  {
    v12 = [0 previewFilterRenderingEnabled];
    v14 = 0;
    v13 = 0;
    LODWORD(v372) = 0;
    v15 = 0;
  }

  *(v394 + 328) = [v15 previewDepthFilterRenderingEnabled];
  if (a2)
  {
    *(v394 + 281) = *(a2 + 184);
    *(v394 + 304) = 0;
    *(v394 + 252) = *(a2 + 163);
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = [objc_msgSend(v16 "sourceConfiguration")];
      v18 = [objc_msgSend(FigCaptureDeviceCoreRepairStatusesByKeys() objectForKeyedSubscript:{@"FrontCameraAssembly", "intValue"}];
      if (([v17 isPhotoFormat] & 1) == 0 && ((v12 ^ 1) & 1) == 0)
      {
        v12 = ((v18 & 0xFFFFFFFE) != 2) & v12;
      }

      [v17 maxContinuousZoomFactorForDepthDataDelivery];
      if (v19 == 0.0)
      {
        v20 = 0;
      }

      else
      {
        v20 = [*(a2 + 16) previewDepthDataDeliveryEnabled];
      }

      HIDWORD(v372) = v12;
      [v17 maxContinuousZoomFactorForDepthDataDelivery];
      if (v22 == 0.0)
      {
        v21 = 0;
      }

      else
      {
        v21 = *(v394 + 328);
      }

      HIDWORD(v357) = [*(a2 + 16) portraitAutoSuggestEnabled];
      if ((v357 & 0x100000000) == 0)
      {
        OUTLINED_FUNCTION_14_35();
        if (v23 != 1)
        {
          HIDWORD(v357) = 0;
        }
      }
    }

    else
    {
      HIDWORD(v372) = v12;
      HIDWORD(v357) = 0;
      v21 = 0;
      v20 = 0;
    }

    OUTLINED_FUNCTION_14_35();
    LODWORD(v361) = v24;
    HIDWORD(v350) = v25 & (v24 ^ 1);
    v26 = *(a2 + 16);
    HIDWORD(v341) = v20 | v21;
  }

  else
  {
    HIDWORD(v372) = v12;
    HIDWORD(v341) = 0;
    LODWORD(v361) = 0;
    HIDWORD(v357) = 0;
    v26 = 0;
    *(v394 + 281) = 0;
    *(v394 + 304) = 0;
    *(v394 + 252) = 0;
    HIDWORD(v350) = *(v394 + 328);
  }

  HIDWORD(v383) = [objc_msgSend(v26 "videoPreviewSinkConfiguration")];
  v395 = a6;
  HIDWORD(v359) = [a6 depthType];
  if (HIDWORD(v359) == 4)
  {
    HIDWORD(v361) = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters monocularStreamingDepthType]== 2;
    if ((v372 & 0x100000000) != 0)
    {
LABEL_26:
      v29 = 1;
      if (!a2)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  else
  {
    HIDWORD(v361) = 0;
    if ((v372 & 0x100000000) != 0)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_14_35();
  if (v28)
  {
    goto LABEL_26;
  }

  v29 = *(v27 + 281);
  if (!a2)
  {
LABEL_31:
    v396 = 0;
    goto LABEL_32;
  }

LABEL_29:
  if (!*(a2 + 48))
  {
    goto LABEL_31;
  }

  v396 = *(a2 + 128);
LABEL_32:
  v30 = [MEMORY[0x1E6991778] metalDevice];
  if (!v30 || (v352 = [v30 newCommandQueue]) == 0 || (v31 = -[FigCapturePreviewSinkPipeline _metalCompletionQueue](v394)) == 0 || (v32 = v31, (v33 = -[FigCapturePreviewSinkPipeline _metalSubmissionQueue](v394)) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_94();
    goto LABEL_380;
  }

  v34 = v33;
  [v352 setCompletionQueue:v32];
  [v352 setSubmissionQueue:v34];
  [v394 setUpstreamOutput:a3];
  v381 = [MEMORY[0x1E695DF70] array];
  v385 = [MEMORY[0x1E695DF70] array];
  if (a2)
  {
    if (*(a2 + 16))
    {
      [v381 addObject:?];
    }

    if (*(a2 + 48))
    {
      v35 = v385;
      if ((v29 & 1) == 0)
      {
        v35 = v381;
      }

      if (v396)
      {
        v36 = v381;
      }

      else
      {
        v36 = v35;
      }

      [v36 addObject:?];
    }

    if (!((*(a2 + 24) == 0) | BYTE4(v350) & 1))
    {
      [v381 addObject:?];
    }

    if (*(a2 + 32))
    {
      [v381 addObject:?];
    }

    if (*(a2 + 40))
    {
      [v381 addObject:?];
    }

    if (*(a2 + 232))
    {
      if (v29)
      {
        v37 = v385;
      }

      else
      {
        v37 = v381;
      }

      [v37 addObject:?];
    }

    if (*(a2 + 56))
    {
      if (v29)
      {
        v38 = v385;
      }

      else
      {
        v38 = v381;
      }

      [v38 addObject:?];
    }

    if (*(a2 + 64))
    {
      [v381 addObject:?];
    }
  }

  if ([v381 count])
  {
    v39 = v381;
  }

  else
  {
    v39 = v385;
  }

  if (![v39 count])
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    fig_log_get_emitter();
    v425[0] = FigSignalErrorAtGM();
    goto LABEL_372;
  }

  v40 = v394;
  *(v394 + 240) = [objc_msgSend(objc_msgSend(v39 "firstObject")];
  *(v394 + 248) = [objc_msgSend(v39 "firstObject")];
  v389 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.preview", [objc_msgSend(v39 "firstObject")]), 6);
  if (a2)
  {
    v41 = *(a2 + 72);
  }

  else
  {
    v41 = 0;
  }

  if (([objc_msgSend(v41 "irisSinkConfiguration")] & 1) != 0 || a2 && *(a2 + 187) == 1 && (*(a2 + 186) & 1) == 0)
  {
    v42 = objc_alloc_init(BWFrameRateGovernorNode);
    [(BWNode *)v42 setName:@"Preview Governor"];
    if (a2)
    {
      [objc_msgSend(*(a2 + 72) "irisSinkConfiguration")];
      [OUTLINED_FUNCTION_17() setDropsStillBracketFramesToMaintainConsistentFrameRate:?];
      if (*(a2 + 187) == 1 && (*(a2 + 186) & 1) == 0)
      {
        [(BWFrameRateGovernorNode *)v42 setDropsStartupFramesWithUnstableAE:1];
        [(BWFrameRateGovernorNode *)v42 setAeStabilityTuning:1];
      }
    }

    else
    {
      [objc_msgSend(0 "irisSinkConfiguration")];
      [OUTLINED_FUNCTION_17() setDropsStillBracketFramesToMaintainConsistentFrameRate:?];
    }

    v421.receiver = v394;
    v421.super_class = FigCapturePreviewSinkPipeline;
    if ((objc_msgSendSuper2(&v421, sel_addNode_error_, v42, &v424) & 1) == 0 || ([v391 connectOutput:v423 toInput:-[BWNode input](v42 pipelineStage:{"input"), 0}] & 1) == 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_94();
      goto LABEL_380;
    }

    v423 = [(BWNode *)v42 output];
    v40 = v394;
  }

  if ([v385 count])
  {
    v43 = v40;
    v44 = -[BWFanOutNode initWithFanOutCount:mediaType:]([BWFanOutNode alloc], "initWithFanOutCount:mediaType:", [v385 count] + 1, 1986618469);
    [(BWNode *)v44 setName:@"Preview Pre-Filter Splitter"];
    v420.receiver = v43;
    v420.super_class = FigCapturePreviewSinkPipeline;
    if ((objc_msgSendSuper2(&v420, sel_addNode_error_, v44, &v424) & 1) == 0 || (v45 = v423, v46 = -[BWNode input](v44, "input"), ([OUTLINED_FUNCTION_12_40(v46 v47] & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_94();
      goto LABEL_380;
    }

    v423 = [(NSArray *)[(BWNode *)v44 outputs] objectAtIndexedSubscript:0];
    v397 = [(BWNode *)v44 outputs];
    v40 = v394;
    if (a2)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v397 = 0;
    if (a2)
    {
LABEL_85:
      v54 = *(a2 + 16);
      goto LABEL_86;
    }
  }

  v54 = 0;
LABEL_86:
  v355 = a9;
  v348 = [v54 sourceConfiguration];
  v366 = v39;
  v369 = [v348 requiredFormat];
  if (!a2)
  {
    LODWORD(v359) = 0;
    goto LABEL_122;
  }

  if (*(a2 + 130) != 1)
  {
    if (*(a2 + 132))
    {
      OUTLINED_FUNCTION_16_33();
      goto LABEL_94;
    }

    v56 = *(a2 + 131);
    LODWORD(v359) = HIDWORD(v361) & v361 & v56;
    if (v56)
    {
LABEL_94:
      if (*(a2 + 131) & 1) != 0 || *(a2 + 94) == 1 && ([objc_msgSend(*(a2 + 72) "irisSinkConfiguration")] & 1) != 0 || (*(a2 + 144))
      {
        LODWORD(v55) = 0;
      }

      else
      {
        LODWORD(v55) = v361 & HIDWORD(v361) ^ 1;
      }

      goto LABEL_99;
    }

LABEL_122:
    LODWORD(v387) = 0;
    goto LABEL_123;
  }

  LODWORD(v55) = 0;
  OUTLINED_FUNCTION_16_33();
LABEL_99:
  LODWORD(v387) = 1;
  if (*(a2 + 144) != 1 || (v55 & 1) != 0)
  {
    goto LABEL_124;
  }

  if ([v395 position] != 2)
  {
    LODWORD(v55) = 0;
    LODWORD(v387) = 1;
LABEL_110:
    HIDWORD(v345) = 1;
    goto LABEL_128;
  }

  v57 = [v369 dimensions];
  v58 = HIDWORD(v57);
  if (v57 != 3840 || v58 != 2160)
  {
    LODWORD(v55) = 0;
    LODWORD(v387) = 1;
    if (v57 != 2160 || v58 != 3840)
    {
      goto LABEL_110;
    }
  }

  v59 = [objc_msgSend(*(a2 + 16) "sourceConfiguration")];
  LODWORD(v387) = 1;
  if (FigCaptureFrameRateAsFloat(v59, v60) < 60.0)
  {
    LODWORD(v55) = 0;
    goto LABEL_110;
  }

LABEL_123:
  LODWORD(v55) = 1;
LABEL_124:
  if (*(v40 + 281) == 1 && (v55 & 1) != 0 && ((*(v40 + 252) | HIDWORD(v361)) & 1) == 0)
  {
    v208 = OUTLINED_FUNCTION_8_49();
    v425[0] = [FigCapturePreviewSinkPipeline _appendSmartStyleApplyNodeToPreviewPipelineStage:v208 previewSinkPipelineConfiguration:? graph:? metalCommandQueue:? upstreamOutput:?];
    if (v425[0])
    {
      goto LABEL_244;
    }
  }

  HIDWORD(v345) = v55 ^ 1;
  if (!a2)
  {
    if ((v350 & 0x100000000) == 0)
    {
      v40 = v394;
      goto LABEL_140;
    }

    v40 = v394;
    goto LABEL_139;
  }

LABEL_128:
  if (*(a2 + 225) == 1)
  {
    FigCaptureSourceGetIntAttribute([objc_msgSend(*(a2 + 16) "sourceConfiguration")], @"PearlModuleType", v425);
    if (!v425[0])
    {
      v61 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.previewfacetracking", [objc_msgSend(v39 "firstObject")]), -[BWPipelineStage priority](v389, "priority"));
      v62 = [BWFaceTrackingNode alloc];
      [(BWPipelineStage *)v61 priority];
      v63 = [OUTLINED_FUNCTION_28() initWithFigThreadPriority:? pearlModuleType:? useUnfilteredDepth:? queueDepth:? passthroughInputs:? allowPixelTransfer:?];
      if (!v63)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_94();
LABEL_267:
        FigDebugAssert3();
        v209 = -12786;
        goto LABEL_268;
      }

      v64 = v63;
      [v63 setName:@"Face Tracking"];
      v419.receiver = v40;
      v419.super_class = FigCapturePreviewSinkPipeline;
      if ((objc_msgSendSuper2(&v419, sel_addNode_error_, v64, &v424) & 1) == 0 || ([v391 connectOutput:v423 toInput:objc_msgSend(v64 pipelineStage:{"input"), v61}] & 1) == 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_94();
        goto LABEL_380;
      }

      v65 = v64;
      *(v40 + 144) = v65;
      v423 = [v65 output];
      [OUTLINED_FUNCTION_9_50() setMirrored:?];
      [OUTLINED_FUNCTION_9_50() setRotationDegrees:?];
      [*(v40 + 144) setMaxFaces:1];
      [OUTLINED_FUNCTION_9_50() setUsesFaceRecognition:?];
      [OUTLINED_FUNCTION_9_50() setFaceTrackingPlusEnabled:?];
      [*(v40 + 144) setNetworkFailureThresholdMultiplier:0.0];
      LODWORD(v66) = -1.0;
      [*(v40 + 144) setTrackingFailureFieldOfViewModifier:v66];
      goto LABEL_134;
    }

LABEL_244:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_105();
    goto LABEL_380;
  }

LABEL_134:
  if ((v350 & 0x100000000) == 0)
  {
    goto LABEL_140;
  }

  if (*(a2 + 24))
  {
    v67 = [[BWFanOutNode alloc] initWithFanOutCount:2 mediaType:1986618469];
    v418.receiver = v40;
    v418.super_class = FigCapturePreviewSinkPipeline;
    if ((objc_msgSendSuper2(&v418, sel_addNode_error_, v67, &v424) & 1) == 0 || ([v391 connectOutput:v423 toInput:-[BWNode input](v67 pipelineStage:{"input"), 0}] & 1) == 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_94();
      goto LABEL_380;
    }

    v423 = [(NSArray *)[(BWNode *)v67 outputs] objectAtIndexedSubscript:0];
    *(v40 + 184) = [(NSArray *)[(BWNode *)v67 outputs] objectAtIndexedSubscript:1];
  }

LABEL_139:
  OUTLINED_FUNCTION_7_58();
  HIDWORD(v292) = v68;
  v69 = OUTLINED_FUNCTION_11_41();
  v425[0] = [(FigCapturePreviewSinkPipeline *)v69 _appendFilteredPreviewPipeline:v70 desiredPipelineStage:0 desiredStreamingFilterPipelineStage:0 previewSinkPipelineConfiguration:a2 videoPreviewSinkConnectionConfiguration:v71 graph:v391 inferenceScheduler:a5 captureDevice:v289 focusBlurMapForDepthFiltersEnabled:v292 depthFromMonocularNetworkEnabled:BYTE1(v292) runMonocularDepthInVideoDepthNode:BYTE2(v292) maxLossyCompressionLevel:HIDWORD(v292) metalCommandQueue:v352 depthFilterRenderingIsAfterPreviewStitcher:v296 portraitAutoSuggestEnabled:BYTE1(v296) sourceStillImageOutputsByPortType:v298 usePrimaryPreviewSourceAttachedMediaForInference:v300];
  if (v425[0])
  {
LABEL_241:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_105();
    goto LABEL_380;
  }

LABEL_140:
  if (*(v40 + 281) == 1 && (v55 & 1) != 0 && (*(v40 + 252) & 1) == 0 && ((HIDWORD(v361) ^ 1) & 1) == 0)
  {
    v207 = OUTLINED_FUNCTION_8_49();
    v425[0] = [FigCapturePreviewSinkPipeline _appendSmartStyleApplyNodeToPreviewPipelineStage:v207 previewSinkPipelineConfiguration:? graph:? metalCommandQueue:? upstreamOutput:?];
    if (v425[0])
    {
      goto LABEL_241;
    }
  }

  v72 = v381;
  if (v14)
  {
    [(BWPipelineStage *)v389 priority];
    v74 = [FigCapturePreviewSinkPipeline _metalCommandQueueWithNamePrefix:v40 priority:@"com.apple.coremedia.previewsink.pocketdetection"];
    v75 = [BWPocketDetectionNode alloc];
    if (a2)
    {
      v76 = *(a2 + 216);
    }

    else
    {
      v76 = 0;
    }

    v77 = [(BWPocketDetectionNode *)v75 initWithMetalCommandQueue:v74 clientApplicationID:v76];
    if (!v77)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_94();
      goto LABEL_267;
    }

    v78 = v77;
    [(BWNode *)v77 setName:@"Pocket Detection"];
    v417.receiver = v40;
    v417.super_class = FigCapturePreviewSinkPipeline;
    if ((objc_msgSendSuper2(&v417, sel_addNode_error_, v78, &v424) & 1) == 0 || (v79 = v423, v80 = -[BWNode input](v78, "input"), ([OUTLINED_FUNCTION_12_40(v80 v81] & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_94();
      goto LABEL_380;
    }

    *(v40 + 136) = v78;
    v423 = [(BWNode *)v78 output];
    if (v13)
    {
      goto LABEL_146;
    }
  }

  else if (v13)
  {
LABEL_146:
    v73 = [objc_msgSend(objc_msgSend(v395 "captureStreamsByFocalLength")];
    goto LABEL_154;
  }

  v73 = 0;
LABEL_154:
  HIDWORD(v379) = v55;
  LODWORD(v363) = v13;
  if ((v372 | v73))
  {
    if (BWDeviceTypeIsExtensionDeviceType(*(v40 + 248)))
    {
      v329 = *(MEMORY[0x1E69E9B10] + 16);
      v334 = *MEMORY[0x1E69E9B10];
      v323 = *(MEMORY[0x1E69E9B10] + 32);
      v88 = v395;
    }

    else
    {
      v88 = v395;
      *&v89 = FigCaptureGetDeviceToCameraTransform([v395 position] == 2);
      v329 = v90;
      v334 = v89;
      v323 = v91;
    }

    if (v73)
    {
      v92 = 2;
    }

    else
    {
      v92 = 1;
    }

    v93 = FigCaptureConvertDimensionsForAspectRatio([v369 dimensions], objc_msgSend(v348, "outputAspectRatio"));
    v94 = [BWSmartCropNode alloc];
    v95 = [v88 cameraInfoByPortType];
    v96 = [v369 horizontalSensorBinningFactor];
    v97 = [v369 verticalSensorBinningFactor];
    if (a2)
    {
      v98 = *(a2 + 164);
    }

    else
    {
      v98 = 0;
    }

    LOBYTE(v289) = 0;
    v99 = [(BWSmartCropNode *)v94 initWithOutputDimensions:v93 cameraInfoByPortType:v95 horizontalSensorBinningFactor:v96 verticalSensorBinningFactor:v97 maxLossyCompressionLevel:v98 cameraExtrinsicMatrix:v92 processingMode:*&v334 stillCaptureEnabled:*&v329 objectMetadataIdentifiers:*&v323 captureDevice:v289];
    v100 = v99;
    if (v73)
    {
      v101 = @"Rolling Shutter Correction";
    }

    else
    {
      v101 = @"Low Latency Stabilization";
    }

    [(BWNode *)v99 setName:v101];
    v416.receiver = v40;
    v416.super_class = FigCapturePreviewSinkPipeline;
    if ((objc_msgSendSuper2(&v416, sel_addNode_error_, v100, &v424) & 1) == 0 || (v102 = v423, v103 = -[BWNode input](v100, "input"), ([OUTLINED_FUNCTION_12_40(v103 v104] & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_94();
      goto LABEL_380;
    }

    v423 = [(BWNode *)v100 output];
    *(v40 + 160) = v100;
    v72 = v381;
    LOBYTE(v55) = BYTE4(v379);
    LOBYTE(v13) = v363;
  }

  v111 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  if ((v13 & 1) == 0)
  {
    goto LABEL_178;
  }

  if (a2)
  {
    if (*(a2 + 130))
    {
      v112 = 0;
    }

    else
    {
      v112 = *(a2 + 132) ^ 1;
    }
  }

  else
  {
    v112 = 1;
  }

  v113 = [v395 cameraInfoByPortType];
  v114 = [v395 autoImageControlMode] == 0;
  [-[NSDictionary objectForKeyedSubscript:](-[FigCaptureCameraParameters previewStabilizationParameters](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters "sharedInstance")];
  v116 = v115;
  v117 = [BWPreviewStabilizationNode alloc];
  LODWORD(v118) = v116;
  v119 = [(BWPreviewStabilizationNode *)v117 initWithCameraInfoByPortType:v113 forStillImagePreview:v114 updateFinalCropRectWithStabilizationShift:v112 & 1 minimumSupportedUIZoomFactor:v118];
  if (!v119)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_94();
    goto LABEL_267;
  }

  v120 = v119;
  [(BWNode *)v119 setName:@"Preview Stabilization"];
  v415.receiver = v40;
  v415.super_class = FigCapturePreviewSinkPipeline;
  if ((objc_msgSendSuper2(&v415, sel_addNode_error_, v120, &v424) & 1) == 0 || (v121 = v423, v122 = -[BWNode input](v120, "input"), ([OUTLINED_FUNCTION_12_40(v122 v123] & 1) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_94();
    goto LABEL_380;
  }

  *(v40 + 128) = v120;
  v423 = [(BWNode *)v120 output];
LABEL_178:
  v130 = v395;
  if (!v387)
  {
    goto LABEL_229;
  }

  if (a2)
  {
    v131 = [*(a2 + 16) videoPreviewSinkConfiguration];
    v132 = *(a2 + 172);
    v133 = *(a2 + 169);
  }

  else
  {
    v131 = [0 videoPreviewSinkConfiguration];
    v133 = 0;
    v132 = 0;
  }

  if ([v395 smartFramingEnabled])
  {
    v335 = [v395 smartFramingZoomFactorsByFieldOfView];
  }

  else
  {
    v335 = 0;
  }

  v324 = v131;
  if (a2 && *(a2 + 130) == 1)
  {
    v134 = [objc_msgSend(*(a2 + 16) "sourceConfiguration")];
    v314 = *off_1E798A0C0;
    v135 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType(v134, v369, *off_1E798A0C0, v425);
    if (v425[0])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_105();
      goto LABEL_380;
    }

    if (!v135)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_94();
      goto LABEL_265;
    }

    [v135 stabilizationOverscanFromSensorForFESCropDimensions:objc_msgSend(v135 preferSIFRFormat:"fesInputCropDimensions") geometricDistortionCorrection:objc_msgSend(v135 useFESCompanionIndex:"shouldPreferSIFRFormatWithHighlightRecoveryEnabled:", objc_msgSend(v348, "highlightRecoveryEnabled")), objc_msgSend(v348, "geometricDistortionCorrectionEnabled"), 1];
    v138 = v137 == 0.0 && v136 > 0.0;
    LODWORD(v348) = [v369 horizontalSensorBinningFactor];
    v139 = [v369 verticalSensorBinningFactor];
    v140 = [+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
    v141 = [v140 previewRegistrationType];
    if (v141 == 1)
    {
      [(BWPipelineStage *)v389 priority];
      v142 = [FigCapturePreviewSinkPipeline _metalCommandQueueWithNamePrefix:v40 priority:@"com.apple.coremedia.previewsink.registration"];
    }

    else
    {
      v142 = 0;
    }

    v143 = v133;
    HIDWORD(v316) = [v140 previewRegistrationExcludeStaticComponentFromAlignmentShiftsEnabled];
    HIDWORD(v320) = v138;
    v318 = v142;
    v144 = v139;
    if (*(a2 + 130) == 1)
    {
      v145 = v395;
      v146 = [v395 cameraInfoByPortType];
    }

    else
    {
      v146 = 0;
      v145 = v395;
    }

    v159 = [BWPreviewStitcherNode alloc];
    v160 = *(a2 + 184) & BYTE4(v345);
    v161 = [v145 sensorOrientationByPortType];
    v162 = *(a2 + 131);
    v163 = [v145 parallaxMitigationBasedOnZoomFactorEnabled];
    BYTE6(v296) = v359;
    WORD2(v296) = *(a2 + 180);
    BYTE3(v296) = v143 & 1;
    BYTE2(v296) = BYTE4(v383);
    BYTE1(v296) = v163;
    LOBYTE(v296) = v162;
    v292 = v335;
    v294 = v161;
    BYTE1(v289) = v160;
    LOBYTE(v289) = v361 & (HIDWORD(v359) != 4);
    LODWORD(v164) = v132;
    v165 = [BWPreviewStitcherNode initWithCameraInfoByPortType:v159 sensorBinningFactor:"initWithCameraInfoByPortType:sensorBinningFactor:inputBuffersHaveHorizontalOverscanOnly:registrationType:registrationMetalCommandQueue:excludeStaticComponentFromAlignmentShifts:propagateDepth:propagateStyles:smartFramingZoomFactorsByFieldOfView:sensorOrientationByPortType:singleCameraOverCaptureEnabled:parallaxMitigationBasedOnZoomFactorEnabled:zoomPIPOverlayEnabled:zoomPIPMinimumUIZoomFactor:zoomPIPSingleStreamModeEnabled:preallocateOutputBufferPool:primaryCaptureRectCenterYPixelOffsetEnabled:propagatePrimaryPreviewSource:" inputBuffersHaveHorizontalOverscanOnly:v146 registrationType:v348 | (v144 << 32) registrationMetalCommandQueue:HIDWORD(v320) excludeStaticComponentFromAlignmentShifts:v141 propagateDepth:v318 propagateStyles:HIDWORD(v316) smartFramingZoomFactorsByFieldOfView:v164 sensorOrientationByPortType:? singleCameraOverCaptureEnabled:? parallaxMitigationBasedOnZoomFactorEnabled:? zoomPIPOverlayEnabled:? zoomPIPMinimumUIZoomFactor:? zoomPIPSingleStreamModeEnabled:? preallocateOutputBufferPool:? primaryCaptureRectCenterYPixelOffsetEnabled:? propagatePrimaryPreviewSource:?];
    if (v165)
    {
      v55 = v165;
      [(BWPreviewStitcherNode *)v165 setDelegate:v377];
      [objc_msgSend(*(a2 + 16) "sourceConfiguration")];
      v167 = v166;
      v168 = [objc_msgSend(*(a2 + 16) "sourceConfiguration")];
      v169 = [v145 clientBaseZoomFactorsByPortType];
      v170 = v169;
      v130 = v145;
      if (v168 == 8)
      {
        v171 = v314;
        [objc_msgSend(v169 objectForKeyedSubscript:{v314), "floatValue"}];
        v40 = v394;
        v111 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
        v72 = v381;
        LOBYTE(v13) = v363;
        if (v167 < v205)
        {
LABEL_206:
          v174 = 0;
LABEL_207:
          [(BWPreviewStitcherNode *)v55 setPreviewsWideBeforeSlaveStreamStarts:v174];
          [objc_msgSend(v130 "bravoSuperWideCaptureStream")];
          [OUTLINED_FUNCTION_28() setSuperWideFallbackForMacroSceneEnabled:?];
          goto LABEL_208;
        }
      }

      else
      {
        v40 = v394;
        v111 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
        v72 = v381;
        LOBYTE(v13) = v363;
        if (v168 != 9)
        {
          goto LABEL_206;
        }

        v171 = v314;
        [objc_msgSend(v169 objectForKeyedSubscript:{v314), "floatValue"}];
        if (v167 < v172)
        {
          goto LABEL_206;
        }

        [objc_msgSend(v170 objectForKeyedSubscript:{*off_1E798A0D8), "floatValue"}];
        if (v167 >= v173)
        {
          goto LABEL_206;
        }
      }

      if ([v130 preferredMasterPortType])
      {
        v174 = [objc_msgSend(v130 "preferredMasterPortType")];
      }

      else
      {
        v174 = 1;
      }

      goto LABEL_207;
    }

    goto LABEL_266;
  }

  v147 = v133;
  v148 = [v395 position] == 2;
  v149 = [v395 isExternalVariant];
  [v395 clientExpectsCameraMountedInLandscapeOrientation];
  v150 = FigCapturePlatformMountsCamerasInLandscapeOrientation(v148, v149);
  v151 = [BWPreviewStitcherNode alloc];
  if (a2)
  {
    v152 = *(a2 + 184) & BYTE4(v345);
    v153 = [v395 sensorOrientationByPortType];
    v154 = *(a2 + 131);
    v155 = [v395 parallaxMitigationBasedOnZoomFactorEnabled];
    v157 = *(a2 + 180);
  }

  else
  {
    v153 = [v395 sensorOrientationByPortType];
    v155 = [v395 parallaxMitigationBasedOnZoomFactorEnabled];
    v154 = 0;
    v152 = 0;
    v157 = 0;
  }

  v111 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  BYTE4(v289) = v359;
  BYTE2(v289) = v157 & 1;
  BYTE1(v289) = v155;
  LOBYTE(v289) = v154 & 1;
  BYTE3(v289) = !v150;
  LODWORD(v156) = v132;
  v158 = [BWPreviewStitcherNode initWithStitchingDisabledAndZoomPIPOverlayEnabled:v151 zoomPIPMinimumUIZoomFactor:"initWithStitchingDisabledAndZoomPIPOverlayEnabled:zoomPIPMinimumUIZoomFactor:zoomPIPSingleStreamModeEnabled:propagateDepth:propagateStyles:smartFramingZoomFactorsByFieldOfView:sensorOrientationByPortType:singleCameraOverCaptureEnabled:parallaxMitigationBasedOnZoomFactorEnabled:preallocateOutputBufferPool:primaryCaptureRectCenterYPixelOffsetEnabled:propagatePrimaryPreviewSource:" zoomPIPSingleStreamModeEnabled:HIDWORD(v383) propagateDepth:v147 & 1 propagateStyles:v361 & (HIDWORD(v359) != 4) smartFramingZoomFactorsByFieldOfView:v152 & 1 sensorOrientationByPortType:v335 singleCameraOverCaptureEnabled:v153 parallaxMitigationBasedOnZoomFactorEnabled:v156 preallocateOutputBufferPool:? primaryCaptureRectCenterYPixelOffsetEnabled:? propagatePrimaryPreviewSource:?];
  if (!v158)
  {
LABEL_266:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_94();
    goto LABEL_267;
  }

  v55 = v158;
  [(BWPreviewStitcherNode *)v158 setDelegate:v377];
  if (!a2)
  {
    v175 = 0;
    v72 = v381;
    LOBYTE(v13) = v363;
    goto LABEL_209;
  }

  v72 = v381;
  LOBYTE(v13) = v363;
LABEL_208:
  v175 = *(a2 + 16);
LABEL_209:
  [v175 transform];
  [(BWPreviewStitcherNode *)v55 setOutputDimensions:v176];
  [v324 primaryCaptureRectAspectRatio];
  [(BWPreviewStitcherNode *)v55 setPrimaryCameraAspectRatio:?];
  [v324 primaryCaptureRectCenter];
  [(BWPreviewStitcherNode *)v55 setPrimaryCaptureRectCenter:?];
  if (a2)
  {
    v177 = *(a2 + 164);
  }

  else
  {
    v177 = 0;
  }

  [(BWPreviewStitcherNode *)v55 setMaxLossyCompressionLevel:v177];
  v178 = BYTE4(v372);
  if (HIDWORD(v372))
  {
    v178 = *(v40 + 328) ^ 1 | BYTE4(v341);
  }

  [(BWPreviewStitcherNode *)v55 setForceBlackFillBorderEnabled:v178 & 1];
  if (a2)
  {
    BWCIFilterArrayContainsFiltersRequiringSegmentation([objc_msgSend(*(a2 + 16) "videoPreviewSinkConfiguration")]);
    [OUTLINED_FUNCTION_28() setOverCaptureNotSupportedByDownstreamNodes:?];
    cs_configurePreviewStitcherNodeOutputTransformAndHistogramGeneration(v55, *(a2 + 16), *(a2 + 162), &v422);
    [(BWPreviewStitcherNode *)v55 setRebuildingGraphForTrueVideoTransition:*(a2 + 187)];
    v179 = *(a2 + 144);
  }

  else
  {
    BWCIFilterArrayContainsFiltersRequiringSegmentation([objc_msgSend(0 "videoPreviewSinkConfiguration")]);
    [OUTLINED_FUNCTION_28() setOverCaptureNotSupportedByDownstreamNodes:?];
    cs_configurePreviewStitcherNodeOutputTransformAndHistogramGeneration(v55, 0, 0, &v422);
    [(BWPreviewStitcherNode *)v55 setRebuildingGraphForTrueVideoTransition:0];
    v179 = 0;
  }

  [(BWPreviewStitcherNode *)v55 setTrueVideoCaptureEnabled:v179 & 1];
  v180 = [v369 dimensions];
  v181 = HIDWORD(v180);
  v182 = v180 == 3840 && v181 == 2160 || v180 == 2160 && v181 == 3840;
  [(BWPreviewStitcherNode *)v55 setTrueVideoCaptureFormatIs4K:v182];
  if (a2)
  {
    v184 = *(a2 + 152);
  }

  else
  {
    v184 = 0.0;
  }

  [(BWPreviewStitcherNode *)v55 setTrueVideoCaptureAdditionalZoomFactor:v184];
  -[BWPreviewStitcherNode setThermalPressureIsCritical:](v55, "setThermalPressureIsCritical:", [v130 thermalSystemPressureLevel] > 2);
  v414.receiver = v40;
  v414.super_class = FigCapturePreviewSinkPipeline;
  if ((objc_msgSendSuper2(&v414, sel_addNode_error_, v55, &v424) & 1) == 0 || (v185 = v423, v186 = -[BWNode input](v55, "input"), LODWORD(v328) = v361 & (HIDWORD(v359) != 4), ([OUTLINED_FUNCTION_12_40(v186 v187] & 1) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_94();
    goto LABEL_380;
  }

  *(v40 + 152) = v55;
  v423 = [(BWNode *)v55 output];
  LOBYTE(v55) = BYTE4(v379);
LABEL_229:
  if (!(v55 & 1 | ((*(v40 + v111[401]) & 1) == 0) | BYTE4(v361) & 1))
  {
    v206 = OUTLINED_FUNCTION_8_49();
    v425[0] = [FigCapturePreviewSinkPipeline _appendOverCaptureSmartStyleApplyNodeToPreviewPipelineStage:v206 previewSinkPipelineConfiguration:? graph:? metalCommandQueue:? upstreamOutput:?];
    if (v425[0])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_105();
      goto LABEL_380;
    }
  }

  FigCapturePixelFormatIsTenBit([objc_msgSend(objc_msgSend(objc_msgSend(v366 "firstObject")]);
  v194 = -[BWPixelTransferNode initWithfractionalSourceRectEnabled:]([BWPixelTransferNode alloc], "initWithfractionalSourceRectEnabled:", (([v130 parallaxMitigationBasedOnZoomFactorEnabled] | v13) | v372) & 1);
  [(BWNode *)v194 setName:@"Preview Scaler"];
  v195 = [v366 firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_94();
LABEL_265:
    FigDebugAssert3();
    v209 = -12780;
LABEL_268:
    v425[0] = v209;
    goto LABEL_372;
  }

  if (!a2)
  {
    v198 = [v195 transform];
    v200 = v210;
    v197 = 0;
    LODWORD(v372) = 0;
    v201 = HIDWORD(v198);
    goto LABEL_275;
  }

  LODWORD(v372) = (v387 ^ 1) & *(a2 + 162);
  v196 = *(a2 + 88);
  v197 = *(a2 + 164);
  v198 = [v195 transform];
  v200 = v199;
  v201 = HIDWORD(v198);
  if (v196 != 5)
  {
LABEL_275:
    v202 = v394;
LABEL_276:
    if ([objc_msgSend(v195 "sinkConfiguration")] == 6)
    {
      v211 = MEMORY[0x1E696AD98];
      v212 = [v195 outputFormat];
      v213 = v211;
      v72 = v381;
      *&v404 = [v213 numberWithInt:v212];
      v203 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v404 count:1];
      v204 = 0;
    }

    else
    {
      v204 = 0;
      v203 = 0;
    }

    goto LABEL_279;
  }

  v202 = v394;
  if ([objc_msgSend(v195 "sinkConfiguration")] != 1)
  {
    goto LABEL_276;
  }

  v203 = 0;
  v204 = 5;
LABEL_279:
  [(BWPixelTransferNode *)v194 setPreferredOutputPixelFormats:v203];
  [(BWPixelTransferNode *)v194 setOutputColorSpaceProperties:v204];
  [(BWPixelTransferNode *)v194 setMaxLossyCompressionLevel:v197];
  if ((v387 & 1) == 0)
  {
    [(BWPixelTransferNode *)v194 setOutputWidth:v200];
    [(BWPixelTransferNode *)v194 setOutputHeight:v200 >> 32];
    [(BWPixelTransferNode *)v194 setRotationDegrees:v201];
    v214 = FigCaptureTransformFlipAppliedBeforeRotationToAfter(v198 & 1, v201);
    [(BWPixelTransferNode *)v194 setFlipHorizontal:v214 == 1];
    [(BWPixelTransferNode *)v194 setFlipVertical:v214 == 2];
  }

  [(BWPixelTransferNode *)v194 setCropMode:1];
  if (![(BWPixelTransferNode *)v194 flipHorizontal]&& ![(BWPixelTransferNode *)v194 flipVertical]&& ![(BWPixelTransferNode *)v194 rotationDegrees])
  {
    [(BWPixelTransferNode *)v194 setPassesBuffersThroughWhenPossible:1];
  }

  [(BWPixelTransferNode *)v194 setGeneratesHistogram:v372];
  [(BWPixelTransferNode *)v194 setAllows422To420Conversion:1];
  *&v422 = v198;
  *(&v422 + 1) = v200;
  v413.receiver = v202;
  v413.super_class = FigCapturePreviewSinkPipeline;
  v215 = v352;
  if ((objc_msgSendSuper2(&v413, sel_addNode_error_, v194, &v424) & 1) == 0)
  {
    goto LABEL_381;
  }

  *(v202 + 48) = v194;
  v216 = v423;
  v217 = [(BWNode *)v194 input];
  if (([OUTLINED_FUNCTION_12_40(v217 v218] & 1) == 0)
  {
    goto LABEL_381;
  }

  v423 = [(BWNode *)v194 output];
  if ([v72 count] < 2)
  {
    v411 = v423;
    v235 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v411 count:1];
    goto LABEL_292;
  }

  v225 = -[BWFanOutNode initWithFanOutCount:mediaType:]([BWFanOutNode alloc], "initWithFanOutCount:mediaType:", [v72 count], 1986618469);
  [(BWNode *)v225 setName:@"Preview Splitter"];
  FigCaptureNameSplitterNodeOutputsCorrespondingToConnections([(BWNode *)v225 outputs], v72);
  v412.receiver = v202;
  v412.super_class = FigCapturePreviewSinkPipeline;
  if ((objc_msgSendSuper2(&v412, sel_addNode_error_, v225, &v424) & 1) == 0 || (v226 = v423, v227 = -[BWNode input](v225, "input"), ([OUTLINED_FUNCTION_12_40(v227 v228] & 1) == 0))
  {
LABEL_381:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_94();
LABEL_380:
    FigDebugAssert3();
    goto LABEL_372;
  }

  v235 = [(BWNode *)v225 outputs];
LABEL_292:
  v236 = v235;
  v409 = 0u;
  v410 = 0u;
  v407 = 0u;
  v408 = 0u;
  v237 = OUTLINED_FUNCTION_23_19();
  if (!v237)
  {
    goto LABEL_345;
  }

  v238 = v237;
  v239 = 0;
  v240 = *v408;
  v374 = BYTE4(v373) ^ 1 | BYTE4(v351);
  v371 = v236;
  do
  {
    v241 = 0;
    do
    {
      if (*v408 != v240)
      {
        objc_enumerationMutation(v72);
      }

      v242 = *(*(&v407 + 1) + 8 * v241);
      v243 = [v236 objectAtIndexedSubscript:v239];
      v406 = v243;
      if (!a2)
      {
        if (v242)
        {
          goto LABEL_313;
        }

LABEL_321:
        v252 = v390;
        if ((v374 & 1) == 0)
        {
          if (([objc_msgSend(v242 "videoPreviewSinkConfiguration")] & 1) != 0 || (v252 = v390, v253 = v390, *(v202 + 281) == 1))
          {
            v253 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.preview.filtering", [objc_msgSend(v382 "firstObject")]), -[BWPipelineStage priority](v390, "priority"));
            v215 = v353;
            v202 = v394;
            v252 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.separate-streaming-filter", [v242 sourceConfiguration]), -[BWPipelineStage priority](v390, "priority"));
          }

          OUTLINED_FUNCTION_7_58();
          HIDWORD(v293) = v254;
          v255 = OUTLINED_FUNCTION_11_41();
          v425[0] = [(FigCapturePreviewSinkPipeline *)v255 _appendFilteredPreviewPipeline:v256 desiredPipelineStage:v253 desiredStreamingFilterPipelineStage:v252 previewSinkPipelineConfiguration:a2 videoPreviewSinkConnectionConfiguration:v257 graph:v392 inferenceScheduler:a5 captureDevice:v291 focusBlurMapForDepthFiltersEnabled:v293 depthFromMonocularNetworkEnabled:BYTE1(v293) runMonocularDepthInVideoDepthNode:BYTE2(v293) maxLossyCompressionLevel:HIDWORD(v293) metalCommandQueue:v215 depthFilterRenderingIsAfterPreviewStitcher:v297 portraitAutoSuggestEnabled:BYTE1(v297) sourceStillImageOutputsByPortType:v299 usePrimaryPreviewSourceAttachedMediaForInference:v301];
          if (v425[0])
          {
LABEL_379:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1_105();
            goto LABEL_380;
          }

          if (*(v202 + 152) && v252 != v390)
          {
            v258 = dispatch_semaphore_create(2);
            [*(v394 + 152) setEmitSampleBufferSemaphore:v258];
            [*(v394 + 72) setPreviewFilterBackpressureSemaphore:v258];
            [*(v394 + 72) setPreviewFilterBackpressureSemaphoreInitialCount:2];

            v202 = v394;
            [v392 registerEmitSampleBufferSemaphoreFromNode:*(v394 + 152) toNode:*(v394 + 72)];
          }
        }

        if (!(BYTE4(v380) & 1 | ((*(v202 + 281) & 1) == 0) | (BYTE4(v362) ^ 1) & 1))
        {
          v425[0] = [FigCapturePreviewSinkPipeline _appendOverCaptureSmartStyleApplyNodeToPreviewPipelineStage:v202 previewSinkPipelineConfiguration:? graph:? metalCommandQueue:? upstreamOutput:?];
          if (v425[0])
          {
            goto LABEL_379;
          }
        }

        v259 = [objc_msgSend(v242 "videoPreviewSinkConfiguration")];
        v260 = 0;
        if (v252)
        {
          v261 = v259;
        }

        else
        {
          v261 = 0;
        }

        if (a2)
        {
          v72 = v382;
          if ((v261 & 1) == 0)
          {
            v260 = *(a2 + 185);
          }
        }

        else
        {
          v72 = v382;
        }

        if ((HIDWORD(v384) | v260))
        {
          v262 = FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.preview.image-queue", [objc_msgSend(v72 "firstObject")]);
          v263 = [(BWPipelineStage *)v390 priority];
          v264 = v262;
          v202 = v394;
          v252 = [BWPipelineStage pipelineStageWithName:v264 priority:v263];
        }

        v265 = [v72 count];
        if (a2)
        {
          v266 = *(a2 + 16);
          v267 = *(a2 + 184);
          v268 = *(a2 + 169) ^ 1;
          v269 = *(a2 + 176);
          v270 = *(a2 + 185);
          v271 = *(a2 + 129);
          v272 = *(a2 + 164);
          v273 = *(a2 + 112);
          v404 = *(a2 + 96);
          v405 = v273;
          v274 = *(a2 + 168);
        }

        else
        {
          v271 = 0;
          v267 = 0;
          v266 = 0;
          v270 = 0;
          v272 = 0;
          v274 = 0;
          v404 = 0u;
          v405 = 0u;
          v269 = 0.0;
          v268 = 1;
        }

        v425[0] = [(FigCapturePreviewSinkPipeline *)v202 _buildImageQueuePreviewSinkPipeline:v406 previewPipelineStage:v252 videoPreviewSinkConnectionConfiguration:v266 previewScalerOutputBuffersAreShared:v265 > 1 zoomPIPOverlayEnabled:SHIDWORD(v384) zoomPIPSmartStyleRenderingEnabled:v267 & 1 zoomPIPSlaveStreamingEnabled:v268 & 1 zoomPIPSlaveStreamingFrameRate:v269 debugOverlayEnabled:0 parallelGraphRebuildEnabled:v270 & 1 transform:0 remoteVideoPreview:0 maxLossyCompressionLevel:v271 & 1 clientAuditToken:v272 graph:&v404 captureDevice:v392 previewTapDelegate:v395 videoHDRImageStatisticsEnabled:v378 zoomPIPOverlayDelegate:v274 & 1 metalCommandQueue:v376, v215];
        v236 = v371;
        goto LABEL_313;
      }

      if (v242 == *(a2 + 16))
      {
        goto LABEL_321;
      }

      if (v242 == *(a2 + 40))
      {
        v425[0] = [(FigCapturePreviewSinkPipeline *)v202 _buildPreviewTimeMachineSinkPipeline:v243 upstreamPipelineStageForPreviewTimeMachine:v390 upstreamTransform:v244 previewTimeMachineConnectionConfiguration:v245 videoPreviewEnabled:v246 smartCameraMotionDetectionEnabled:0 graph:*(a2 + 161) captureDevice:v392, v395];
        if (v425[0])
        {
          goto LABEL_379;
        }
      }

      else if (v242 == *(a2 + 232))
      {
        v425[0] = [(FigCapturePreviewSinkPipeline *)v202 _buildPreviewSmartStyleCoefficientsTimeMachineSinkPipeline:v243 upstreamPipelineStageForPreviewTimeMachine:v390 previewTimeMachineConnectionConfiguration:v244 graph:v392 captureDevice:v395];
      }

      else
      {
        if (v242 == *(a2 + 48))
        {
          if (v396)
          {
            goto LABEL_313;
          }

          +[BWPipelineStage pipelineStageWithName:priority:discardsLateSampleData:](BWPipelineStage, "pipelineStageWithName:priority:discardsLateSampleData:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.sceneclassifier", [v242 sourceConfiguration]), 0, 1);
          v403 = 0;
          OUTLINED_FUNCTION_10_43();
          v388 = v388 & 0xFFFF000000000000 | v249;
          v425[0] = FigCaptureBuildSceneClassifierPipeline(v202, v250, v388, 6, v251, 0, &v404, v395, a5, 0, 0, &v403);
          if (v425[0])
          {
            goto LABEL_379;
          }

          *(v202 + 64) = v403;
          v247 = v406;
          v248 = 96;
          goto LABEL_312;
        }

        if (v242 != *(a2 + 56))
        {
          if (v242 == *(a2 + 64))
          {
            v247 = v243;
            v248 = 176;
          }

          else if (v242 == *(a2 + 32))
          {
            v247 = v243;
            v248 = 192;
          }

          else
          {
            if (v242 != *(a2 + 24))
            {
              goto LABEL_313;
            }

            v247 = v243;
            v248 = 184;
          }

LABEL_312:
          *(v202 + v248) = v247;
          goto LABEL_313;
        }

        v425[0] = [FigCapturePreviewSinkPipeline _buildSensitiveContentAnalyzerPipelineStage:v202 connectionConfiguration:v243 graph:?];
        if (v425[0])
        {
          goto LABEL_379;
        }

        [v395 setAttachesUprightExifOrientationMetadataToStreamingFrames:1];
      }

LABEL_313:
      ++v239;
      ++v241;
    }

    while (v238 != v241);
    v275 = OUTLINED_FUNCTION_23_19();
    v238 = v275;
  }

  while (v275);
LABEL_345:
  v401 = 0u;
  v402 = 0u;
  v399 = 0u;
  v400 = 0u;
  v276 = v386;
  v277 = [v386 countByEnumeratingWithState:&v399 objects:v398 count:16];
  if (v277)
  {
    v278 = v277;
    v279 = *v400;
    v280 = 1;
    do
    {
      v281 = 0;
      do
      {
        if (*v400 != v279)
        {
          objc_enumerationMutation(v276);
        }

        v282 = *(*(&v399 + 1) + 8 * v281);
        v284 = [(NSArray *)v397 objectAtIndexedSubscript:v280];
        if (a2)
        {
          if (v282 != *(a2 + 48))
          {
            if (v282 == *(a2 + 232))
            {
              v425[0] = [(FigCapturePreviewSinkPipeline *)v394 _buildPreviewSmartStyleCoefficientsTimeMachineSinkPipeline:v284 upstreamPipelineStageForPreviewTimeMachine:v390 previewTimeMachineConnectionConfiguration:v283 graph:v392 captureDevice:v395];
            }

            else if (v282 == *(a2 + 56))
            {
              v425[0] = [FigCapturePreviewSinkPipeline _buildSensitiveContentAnalyzerPipelineStage:v394 connectionConfiguration:v284 graph:?];
              if (v425[0])
              {
                goto LABEL_376;
              }

              [v395 setAttachesUprightExifOrientationMetadataToStreamingFrames:1];
            }

            goto LABEL_361;
          }

          if (v396)
          {
            goto LABEL_361;
          }
        }

        else if ((v282 != 0) | v396 & 1)
        {
          goto LABEL_361;
        }

        v285 = +[BWPipelineStage pipelineStageWithName:priority:discardsLateSampleData:](BWPipelineStage, "pipelineStageWithName:priority:discardsLateSampleData:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.sceneclassifier", [v282 sourceConfiguration]), 0, 1);
        v406 = 0;
        if (a2)
        {
          OUTLINED_FUNCTION_10_43();
        }

        else
        {
          v286 = 0;
          v404 = 0uLL;
          DWORD2(v405) = 0;
          *&v405 = 0;
        }

        v215 = v286 | v215 & 0xFFFF000000000000;
        v425[0] = FigCaptureBuildSceneClassifierPipeline(v394, v284, v215, 6, v285, 0, &v404, v395, a5, 0, 0, &v406);
        if (v425[0])
        {
LABEL_376:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_105();
          goto LABEL_380;
        }

        *(v394 + 64) = v406;
        *(v394 + 96) = v284;
        v276 = v386;
LABEL_361:
        ++v280;
        ++v281;
      }

      while (v278 != v281);
      v287 = [v276 countByEnumeratingWithState:&v399 objects:v398 count:16];
      v278 = v287;
    }

    while (v287);
  }

  *(v394 + 208) = v422;
  if ((v351 & 0x100000000) != 0)
  {
    v288 = v344;
  }

  else
  {
    v288 = v422;
  }

  *(v394 + 224) = v288;
LABEL_372:
  result = v425[0];
  if (!v425[0])
  {
    if (v424)
    {
      return [v424 code];
    }
  }

  return result;
}

- (uint64_t)toggleDepthDensificationAccordingToFilters:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [*(result + 288) setSkipProcessing:BWCIFilterArrayContainsPortraitFilters(a2) ^ 1];
    if (BWCIFilterArrayContainsPortraitFilters(a2))
    {
      v4 = [MEMORY[0x1E695DFD8] set];
    }

    else
    {
      v4 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F2245D30];
    }

    v5 = v4;
    v6 = *(v3 + 296);

    return [v6 setInferencesToSkip:v5];
  }

  return result;
}

- (void)setFilters:(id)a3
{
  [(FigCapturePreviewSinkPipeline *)self toggleDepthDensificationAccordingToFilters:a3];
  [(FigCapturePreviewSinkPipeline *)self _setPortraitRenderingInferencesNeededForFilters:a3];
  [(BWPreviewStitcherNode *)self->_previewStitcher setOverCaptureNotSupportedByDownstreamNodes:BWCIFilterArrayContainsFiltersRequiringSegmentation(a3)];
  filterNode = self->_filterNode;

  [(BWStreamingFilterNode *)filterNode changeToFilters:a3 animated:1];
}

- (uint64_t)_setPortraitRenderingInferencesNeededForFilters:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = BWCIFilterArrayContainsFiltersRequiringSegmentation(a2);
    v4 = *(v2 + 120);
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F2245D48];
    }

    [v4 setInferencesToSkip:v5];
    v6 = *(v2 + 144);

    return [v6 setSkipProcessing:v3 ^ 1u];
  }

  return result;
}

- (void)setSemanticStyle:(id)a3 animated:(BOOL)a4
{
  if (!self->_smartStyleRenderingEnabled)
  {
    v4 = a4;
    if ([a3 isIdentity])
    {
      v7 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2245D48, &unk_1F2245D30, 0}];
    }

    else
    {
      v7 = 0;
    }

    [(BWInferenceNode *)self->_semanticStylePersonSegmentationNode setInferencesToSkip:v7];
    filterNode = self->_filterNode;

    [(BWStreamingFilterNode *)filterNode changeToSemanticStyle:a3 animated:v4];
  }
}

- (void)setSemanticStyleSet:(id)a3 fencePortSendRight:(id)a4
{
  if (!self->_smartStyleRenderingEnabled)
  {
    v7 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [a3 leftmostRegionStartXOffset];
      [a4 port];
      kdebug_trace();
    }

    [(BWImageQueueSinkNode *)self->_imageQueueSinkNode fencePortGenerationIDWillChange];
    if ([objc_msgSend(a3 "semanticStyles")])
    {
      [(BWInferenceNode *)self->_semanticStylePersonSegmentationNode setInferencesToSkip:0];
    }

    [(BWStreamingFilterNode *)self->_filterNode setSemanticStyleSet:a3 fencePortSendRight:a4];
    if (*v7 == 1)
    {

      kdebug_trace();
    }
  }
}

- (void)setSemanticStyle:(id)a3
{
  if (!self->_smartStyleRenderingEnabled)
  {
    [(FigCapturePreviewSinkPipeline *)self setSemanticStyle:a3 animated:0];
  }
}

- (void)setSemanticStyleRenderingSuspended:(BOOL)a3 animated:(BOOL)a4
{
  if (!self->_smartStyleRenderingEnabled)
  {
    v4 = a4;
    v5 = a3;
    if ([(BWStreamingFilterNode *)self->_filterNode isSemanticStyleRenderingEnabled])
    {
      filterNode = self->_filterNode;

      [(BWStreamingFilterNode *)filterNode setSemanticStyleRenderingSuspended:v5 animated:v4];
    }
  }
}

- (uint64_t)_metalCompletionQueue
{
  if (result)
  {
    v1 = result;
    result = *(result + 312);
    if (!result)
    {
      result = FigDispatchQueueCreateWithPriority();
      *(v1 + 312) = result;
    }
  }

  return result;
}

- (uint64_t)_metalSubmissionQueue
{
  if (result)
  {
    v1 = result;
    result = *(result + 320);
    if (!result)
    {
      result = FigDispatchQueueCreateWithPriority();
      *(v1 + 320) = result;
    }
  }

  return result;
}

- (uint64_t)_appendFilteredPreviewPipeline:(BWPipelineStage *)a3 desiredPipelineStage:(uint64_t)a4 desiredStreamingFilterPipelineStage:(uint64_t)a5 previewSinkPipelineConfiguration:(void *)a6 videoPreviewSinkConnectionConfiguration:(void *)a7 graph:(uint64_t)a8 inferenceScheduler:(void *)a9 captureDevice:(unsigned __int8)a10 focusBlurMapForDepthFiltersEnabled:(unsigned __int8)a11 depthFromMonocularNetworkEnabled:(unsigned __int8)a12 runMonocularDepthInVideoDepthNode:(unsigned int)a13 maxLossyCompressionLevel:(uint64_t)a14 metalCommandQueue:(unsigned __int8)a15 depthFilterRenderingIsAfterPreviewStitcher:(unsigned __int8)a16 portraitAutoSuggestEnabled:(void *)a17 sourceStillImageOutputsByPortType:(unsigned __int8)a18 usePrimaryPreviewSourceAttachedMediaForInference:
{
  if (!result)
  {
    return result;
  }

  v22 = a2;
  v23 = result;
  v165[0] = 0;
  v164 = 0;
  if (a2)
  {
    v24 = *a2;
  }

  else
  {
    v24 = 0;
  }

  v151 = v24;
  HIDWORD(v136) = [a6 previewDepthDataDeliveryEnabled];
  v152 = v23;
  if (!a3)
  {
    if (HIDWORD(v136))
    {
      v25 = @"com.apple.coremedia.capture.streaming-disparity+filter";
    }

    else
    {
      v25 = @"com.apple.coremedia.capture.streaming-filter";
    }

    v26 = [a6 sourceConfiguration];
    v27 = v25;
    v23 = v152;
    a3 = [BWPipelineStage pipelineStageWithName:FigCaptureBuildPipelineStageName(v27 priority:v26), 13];
  }

  if (a4)
  {
    v28 = a4;
  }

  else
  {
    v28 = a3;
  }

  v146 = [objc_msgSend(a6 "sourceConfiguration")];
  [v146 defaultPortraitLightingEffectStrength];
  if (*(v23 + 328) == 1)
  {
    v147 = [a9 portraitPreviewForegroundBlurEnabled];
  }

  else
  {
    v147 = 0;
  }

  v29 = [objc_msgSend(a6 "videoPreviewSinkConfiguration")];
  v132 = [objc_msgSend(a6 "videoPreviewSinkConfiguration")];
  v149 = v29;
  if (v29)
  {
    v29 = *(v23 + 328) == a16;
  }

  HIDWORD(v128) = a11;
  HIDWORD(v134) = a18;
  HIDWORD(v121) = a16;
  v150 = a15 | a16;
  v139 = [objc_msgSend(a6 "videoPreviewSinkConfiguration")];
  v30 = BWCIFilterArrayContainsPortraitEffectFilters(v139);
  LODWORD(v141) = [a7 deferredNodePrepareSupported] & (v30 ^ 1);
  LODWORD(v136) = [v146 isDynamicAspectRatioSupported];
  LODWORD(v128) = 1;
  v148 = a6;
  if (FigCaptureOptimizedBWInferenceScalingPathSupported())
  {
    v31 = objc_alloc_init(BWInferenceProcessingConfiguration);
    [(BWInferenceProcessingConfiguration *)v31 setScalingStrategy:10];
    [(BWInferenceProcessingConfiguration *)v31 setFilterType:2];
  }

  v32 = [BWInferenceNode alloc];
  v40 = OUTLINED_FUNCTION_13_34(v32, v33, v34, v35, v36, v37, v38, v39, v105, v107, v109, v111, v113, v115, v117, v119, v121, a5, v125, v128, v130, v132, v134, v136, v28, v139, v141, a8);
  [v40 setName:@"Segmentation Node"];
  if (v142)
  {
    [a7 enableBypassUntilPreparedForNode:v40 deferredPreparePriority:2];
  }

  v41 = v152;
  v163.receiver = v152;
  v163.super_class = FigCapturePreviewSinkPipeline;
  v118 = sel_addNode_error_;
  if ((objc_msgSendSuper2(&v163, sel_addNode_error_, v40, &v164) & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_93();
    FigDebugAssert3();
LABEL_113:
    v43 = v151;
    goto LABEL_107;
  }

  *(v152 + 104) = v40;
  v42 = [(BWInferenceConfiguration *)[BWStreamingPersonSegmentationConfiguration alloc] initWithInferenceType:105];
  if (v29)
  {
    *(v152 + 112) = v40;
    if ([v133 isIdentity])
    {
      v106 = &unk_1F2245D30;
      v108 = 0;
      v131 = [MEMORY[0x1E695DFD8] setWithObjects:&unk_1F2245D48];
    }

    else
    {
      v131 = 0;
    }

    -[BWStreamingPersonSegmentationConfiguration setInputRotationAngle:](v42, "setInputRotationAngle:", -([a6 transform] >> 32));
    [(BWStreamingPersonSegmentationConfiguration *)v42 setPropagateColorInput:0];
    [(BWStreamingPersonSegmentationConfiguration *)v42 setCropColorInputToPrimaryCaptureRect:0];
    [OUTLINED_FUNCTION_19_27() setPropagatesFrameRatePrevention:?];
    LODWORD(v44) = 10.0;
    [(BWInferenceConfiguration *)v42 setMaximumFramesPerSecond:v44];
    [OUTLINED_FUNCTION_19_27() setUseLowFrameRateOptimizedNetwork:?];
    BWInferenceVersionMakeMajor(1);
    [OUTLINED_FUNCTION_15_32() addInferenceOfType:? version:? configuration:?];
    v45 = [(BWInferenceConfiguration *)[BWOpticalFlowInferenceConfiguration alloc] initWithInferenceType:117];
    [(BWOpticalFlowInferenceConfiguration *)v45 setInputDimensions:0xC000000100];
    [(BWOpticalFlowInferenceConfiguration *)v45 setOutputDimensions:0xC000000100];
    [(BWOpticalFlowInferenceConfiguration *)v45 setConcurrencyWidth:2];
    -[BWOpticalFlowInferenceConfiguration setInputRotationAngle:](v45, "setInputRotationAngle:", -([a6 transform] >> 32));
    [(BWOpticalFlowInferenceConfiguration *)v45 setColorInputCropMode:0];
    [(BWOpticalFlowInferenceConfiguration *)v45 setAttachedMediaKeyForPropagatedColorInput:0x1F219EA70];
    [v40 addInferenceOfType:117 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:v45];
    v46 = [v40 name];
    v47 = [v46 length];
    v48 = @"Optical Flow";
    if (v47)
    {
      v106 = @"Optical Flow";
      v48 = [v46 stringByAppendingFormat:@" + %@"];
    }

    v43 = v151;
    [v40 setName:v48];

    v41 = v152;
    [*(v152 + 112) setInferencesToSkip:v131];
    goto LABEL_32;
  }

  if (v150)
  {
    LODWORD(v131) = 0;
    v43 = v151;
    goto LABEL_34;
  }

  LODWORD(v131) = 1;
  BWInferenceVersionMakeMajor(1);
  [OUTLINED_FUNCTION_15_32() addInferenceOfType:? version:? configuration:?];
  v43 = v151;
  if (v147)
  {
    *(v152 + 120) = v40;
    [(FigCapturePreviewSinkPipeline *)v152 _setPortraitRenderingInferencesNeededForFilters:v140];
LABEL_32:
    LODWORD(v131) = 1;
  }

LABEL_34:
  if ((HIDWORD(v129) & ~a12) != 0)
  {
    [v40 addInferenceOfType:106 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:{-[BWMonocularDepthConfiguration initWithInferenceType:monocularDepthType:]([BWMonocularDepthConfiguration alloc], "initWithInferenceType:monocularDepthType:", 106, 1)}];
    v49 = [v40 name];
    v50 = [v49 length];
    v51 = @"Monocular Depth";
    if (v50)
    {
      v106 = @"Monocular Depth";
      v51 = [v49 stringByAppendingFormat:@" + %@"];
    }

    [v40 setName:v51];
    v41 = v152;
  }

  [v40 input];
  if (([OUTLINED_FUNCTION_6_64() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_93();
    goto LABEL_129;
  }

  v43 = [v40 output];
  if (v29)
  {
    v103 = v41;
    v104 = [[BWPersonSegmentationFilteringNode alloc] initWithGPUPriority:0 frameRateUpsamplingEnabled:1 metalCommandQueue:[FigCapturePreviewSinkPipeline _metalCommandQueueWithNamePrefix:v41 priority:@"com.apple.coremedia.previewsink.personsegmentation"]];
    v162.receiver = v103;
    v162.super_class = FigCapturePreviewSinkPipeline;
    v53 = 0x1E7988000;
    if ((objc_msgSendSuper2(&v162, sel_addNode_error_, v104, &v164) & 1) == 0 || (-[BWPersonSegmentationFilteringNode setInputOrientationRelativeToSensor:](v104, "setInputOrientationRelativeToSensor:", [a6 transform] >> 32), -[BWPersonSegmentationFilteringNode setAlignsMaskWithPrimaryCaptureRect:](v104, "setAlignsMaskWithPrimaryCaptureRect:", -[BWStreamingPersonSegmentationConfiguration cropColorInputToPrimaryCaptureRect](v42, "cropColorInputToPrimaryCaptureRect")), -[BWNode input](v104, "input"), (objc_msgSend(OUTLINED_FUNCTION_6_64(), "connectOutput:toInput:pipelineStage:") & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_93();
      goto LABEL_129;
    }

    v43 = [(BWNode *)v104 output];
    v52 = a9;
  }

  else
  {
    v52 = a9;
    v53 = 0x1E7988000;
  }

  if ((a12 | v147))
  {
    v54 = [BWVideoDepthInferenceConfiguration alloc];
    v55 = v138;
    if (a15)
    {
      v56 = [v52 isBravoVariant] ^ 1;
    }

    else
    {
      v56 = 0;
    }

    v57 = [(BWVideoDepthInferenceConfiguration *)v54 initWithConcurrencyWidth:2 videoDepthLayout:1 captureDevice:v52 requiresCroppingOfDepthBuffer:a15 requiresVerticalFlipOfDepthBuffer:v56 backpressureEvent:0];
    [(BWVideoDepthInferenceConfiguration *)v57 setRequiresAppleDepthPostProcessing:1];
    [(BWVideoDepthInferenceConfiguration *)v57 setColorInputRotationChangesWithAspectRatio:v137];
    IntAttribute = FigCaptureSourceGetIntAttribute([objc_msgSend(a6 "sourceConfiguration")], @"PearlModuleType", v165);
    if (v165[0])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_81();
      goto LABEL_129;
    }

    [(BWVideoDepthInferenceConfiguration *)v57 setSourceIsNuri:IntAttribute == 3];
    if (FigCaptureOptimizedBWInferenceScalingPathSupported())
    {
      v59 = objc_alloc_init(BWInferenceProcessingConfiguration);
      [(BWInferenceProcessingConfiguration *)v59 setScalingStrategy:10];
      [(BWInferenceProcessingConfiguration *)v59 setFilterType:2];
    }

    v60 = [BWInferenceNode alloc];
    *(v152 + 296) = OUTLINED_FUNCTION_13_34(v60, v61, v62, v63, v64, v65, v66, v67, v106, v108, v110, v112, v114, v116, sel_addNode_error_, v120, v122, v124, v126, v129, v131, v133, v135, v137, v138, v140, v142, v145);
    v68 = [(BWInferenceConfiguration *)[BWOpticalFlowInferenceConfiguration alloc] initWithInferenceType:117];
    [(BWOpticalFlowInferenceConfiguration *)v68 setInputDimensions:[(BWVideoDepthInferenceConfiguration *)v57 outputDimensions]];
    [(BWOpticalFlowInferenceConfiguration *)v68 setOutputDimensions:[(BWVideoDepthInferenceConfiguration *)v57 outputDimensions]];
    [(BWOpticalFlowInferenceConfiguration *)v68 setConcurrencyWidth:2];
    [objc_msgSend(objc_msgSend(a6 "sourceConfiguration")];
    IsSensorMountedInPortraitOrientation = FigCaptureSourceIsSensorMountedInPortraitOrientation(v69);
    if (HIDWORD(v135))
    {
      if (IsSensorMountedInPortraitOrientation)
      {
        v71 = 90;
      }

      else
      {
        v71 = 0;
      }

      [(BWOpticalFlowInferenceConfiguration *)v68 setInputRotationAngle:v71];
      [(BWOpticalFlowInferenceConfiguration *)v68 setAttachedMediaKeyForColorInput:0x1F21AAAD0];
      -[BWOpticalFlowInferenceConfiguration setColorInputFlipHorizontal:](v68, "setColorInputFlipHorizontal:", [a6 transform] & 1);
      [(BWOpticalFlowInferenceConfiguration *)v68 setColorInputCropMode:2];
      [(BWOpticalFlowInferenceConfiguration *)v68 setAttachedMediaCropRectKey:*off_1E798A360];
      [(BWVideoDepthInferenceConfiguration *)v57 setUsePrimaryPreviewSourceAttachedMediaForInference:1];
    }

    else
    {
      if (a15)
      {
        v72 = psp_rotationAngleForStreamingFilterInferences(a6);
      }

      else
      {
        v72 = 0;
      }

      [(BWOpticalFlowInferenceConfiguration *)v68 setInputRotationAngle:v72];
      [OUTLINED_FUNCTION_19_27() setColorInputCropMode:?];
    }

    [(BWOpticalFlowInferenceConfiguration *)v68 setAttachedMediaKeyForPropagatedColorInput:0x1F219EC10];
    [*(v152 + 296) addInferenceOfType:117 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:v68];

    [*(v152 + 296) setName:@"Optical Flow Node"];
    if (v142)
    {
      [a7 enableBypassUntilPreparedForNode:*(v152 + 296) deferredPreparePriority:2];
    }

    v73 = *(v152 + 296);
    v161.receiver = v152;
    v161.super_class = FigCapturePreviewSinkPipeline;
    if ((objc_msgSendSuper2(&v161, v118, v73, &v164) & 1) == 0 || ([*(v152 + 296) input], (objc_msgSend(OUTLINED_FUNCTION_6_64(), "connectOutput:toInput:pipelineStage:") & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_93();
      goto LABEL_129;
    }

    v43 = [*(v152 + 296) output];
    v74 = [[BWVideoDepthNode alloc] initWithInferenceScheduler:v145 captureDevice:a9 videoDepthConfiguration:v57 extraDepthOutputRetainedBufferCount:4 error:v165];
    *(v152 + 288) = v74;
    if (v165[0])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_81();
      goto LABEL_129;
    }

    v160.receiver = v152;
    v160.super_class = FigCapturePreviewSinkPipeline;
    if ((objc_msgSendSuper2(&v160, v118, v74, &v164) & 1) == 0 || ([*(v152 + 288) input], (objc_msgSend(OUTLINED_FUNCTION_6_64(), "connectOutput:toInput:pipelineStage:") & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_93();
      goto LABEL_129;
    }

    v43 = [*(v152 + 288) output];
    if (v142)
    {
      [OUTLINED_FUNCTION_19_27() setPreviewVideoDepthNodeUnprepared:?];
      [a7 enableBypassUntilPreparedForNode:*(v152 + 288) deferredPreparePriority:2];
    }

    -[FigCapturePreviewSinkPipeline toggleDepthDensificationAccordingToFilters:](v152, [objc_msgSend(a6 "videoPreviewSinkConfiguration")]);
    v53 = 0x1E7988000uLL;
  }

  else
  {
    v55 = v138;
  }

  v127 = v22;
  if (v150)
  {
    if (FigCaptureOptimizedBWInferenceScalingPathSupported())
    {
      v75 = objc_alloc_init(BWInferenceProcessingConfiguration);
      [(BWInferenceProcessingConfiguration *)v75 setScalingStrategy:10];
      [(BWInferenceProcessingConfiguration *)v75 setFilterType:2];
    }

    v76 = objc_alloc(*(v53 + 4040));
    v84 = OUTLINED_FUNCTION_13_34(v76, v77, v78, v79, v80, v81, v82, v83, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v22, v129, v131, v133, v135, v137, v138, v140, v142, v145);
    [v84 setName:@"Segmentation Node (secondary)"];
    if (v143)
    {
      [a7 enableBypassUntilPreparedForNode:v84 deferredPreparePriority:2];
    }

    v159.receiver = v152;
    v159.super_class = FigCapturePreviewSinkPipeline;
    if ((objc_msgSendSuper2(&v159, sel_addNode_error_, v84, &v164) & 1) == 0 || (*(v152 + 120) = v84, [v84 input], (objc_msgSend(OUTLINED_FUNCTION_6_64(), "connectOutput:toInput:pipelineStage:") & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_93();
      goto LABEL_129;
    }

    v43 = [v84 output];
    v85 = [(BWInferenceConfiguration *)[BWStreamingPersonSegmentationConfiguration alloc] initWithInferenceType:105];
    v86 = psp_rotationAngleForStreamingFilterInferences(a6);
    if ([a6 transform])
    {
      v87 = -v86;
    }

    else
    {
      v87 = v86;
    }

    [(BWStreamingPersonSegmentationConfiguration *)v85 setInputRotationAngle:v87];
    [(BWStreamingPersonSegmentationConfiguration *)v85 setCropColorInputToPrimaryCaptureRect:1];
    [(BWStreamingPersonSegmentationConfiguration *)v85 setAlternativeStreamingPersonSegmentationMaskKey:0x1F21AAC10];
    [(BWStreamingPersonSegmentationConfiguration *)v85 setAlternativeStreamingSkinSegmentationMaskKey:0x1F21AAC50];
    BWInferenceVersionMakeMajor(1);
    [OUTLINED_FUNCTION_15_32() addInferenceOfType:? version:? configuration:?];
    [(FigCapturePreviewSinkPipeline *)v152 _setPortraitRenderingInferencesNeededForFilters:v140];
  }

  v151 = v43;
  if (a15)
  {
    v88 = [a6 transform];
    v89 = [a6 transform] >> 32;
  }

  else
  {
    v88 = 0;
    LODWORD(v89) = 0;
  }

  v90 = [objc_msgSend(objc_msgSend(a6 "sourceConfiguration")];
  v91 = [BWStreamingFilterNode alloc];
  v92 = v152;
  v93 = *(v152 + 252);
  v94 = *(v152 + 281);
  BYTE2(v116) = v137;
  BYTE1(v116) = BYTE4(v135);
  LOBYTE(v116) = v90;
  LODWORD(v112) = v89;
  BYTE4(v110) = v88 & 1;
  LODWORD(v110) = [v55 priority];
  LOBYTE(v106) = a15;
  v95 = -[BWStreamingFilterNode initWithCaptureDevice:maxLossyCompressionLevel:semanticStyleRenderingEnabled:cinematicVideoEnabled:smartStyleRenderingEnabled:portraitPreviewForegroundBlurEnabled:depthFilterRenderingIsAfterPreviewStitcher:metalCommandQueue:priority:mirroredForMetadataAdjustment:rotationDegreesForMetadataAdjustment:sourceStillImageOutputPortTypes:squareAspectRatioConfigEnabled:cropDepthToPrimaryCaptureAspectRatio:disableDepthAndSegmentationRotationInLandscape:](v91, "initWithCaptureDevice:maxLossyCompressionLevel:semanticStyleRenderingEnabled:cinematicVideoEnabled:smartStyleRenderingEnabled:portraitPreviewForegroundBlurEnabled:depthFilterRenderingIsAfterPreviewStitcher:metalCommandQueue:priority:mirroredForMetadataAdjustment:rotationDegreesForMetadataAdjustment:sourceStillImageOutputPortTypes:squareAspectRatioConfigEnabled:cropDepthToPrimaryCaptureAspectRatio:disableDepthAndSegmentationRotationInLandscape:", a9, a13, v149, v93, v94, v147, v106, a14, v110, v112, [a17 allKeys], v116);
  v158.receiver = v152;
  v158.super_class = FigCapturePreviewSinkPipeline;
  if ((objc_msgSendSuper2(&v158, sel_addNode_error_, v95, &v164) & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_93();
LABEL_112:
    FigDebugAssert3();
    v22 = v127;
    goto LABEL_113;
  }

  *(v152 + 72) = v95;
  if (*(v152 + 328) == 1)
  {
    [(BWStreamingFilterNode *)v95 setMetadataProcessingEnabled:1];
    [v146 isStudioAndContourPreviewRenderingSupported];
    [OUTLINED_FUNCTION_17() setStudioAndContourRenderingEnabled:?];
    [v146 isStagePreviewRenderingSupported];
    [OUTLINED_FUNCTION_17() setStageRenderingEnabled:?];
    v92 = v152;
    [(BWStreamingFilterNode *)v95 setFocusBlurMapDeliveryEnabled:a10];
    [(BWStreamingFilterNode *)v95 setPortraitAutoSuggestEnabled:HIDWORD(v122)];
    [(BWStreamingFilterNode *)v95 setDepthFromMonocularNetworkEnabled:HIDWORD(v129)];
  }

  [(BWStreamingFilterNode *)v95 setPrimaryStreamingPersonSegmentationEnabled:v131];
  [(BWStreamingFilterNode *)v95 setSecondaryStreamingPersonSegmentationEnabled:v150];
  [(BWStreamingFilterNode *)v95 setStreamingSegmentationFromInferenceEngine:v129];
  if (a17)
  {
    if (*(v92 + 252))
    {
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v96 = [a17 allKeys];
      v97 = [v96 countByEnumeratingWithState:&v154 objects:v153 count:16];
      if (v97)
      {
        v98 = v97;
        v99 = *v155;
        while (2)
        {
          for (i = 0; i != v98; ++i)
          {
            if (*v155 != v99)
            {
              objc_enumerationMutation(v96);
            }

            if (![a7 connectOutput:objc_msgSend(a17 toInput:"objectForKeyedSubscript:" pipelineStage:{*(*(&v154 + 1) + 8 * i)), -[NSDictionary objectForKeyedSubscript:](-[BWStreamingFilterNode stillImageInputsByPortType](v95, "stillImageInputsByPortType"), "objectForKeyedSubscript:", *(*(&v154 + 1) + 8 * i)), 0}])
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_2_93();
              goto LABEL_112;
            }
          }

          v98 = [v96 countByEnumeratingWithState:&v154 objects:v153 count:16];
          if (v98)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v101 = v124;
  if (v124)
  {
    v101 = *(v124 + 184);
  }

  v22 = v127;
  v43 = v151;
  if (v101 & 1 | ((v149 & 1) == 0))
  {
    v102 = 0;
  }

  else
  {
    v102 = v133;
  }

  if ([v140 count] || v102)
  {
    [(BWStreamingFilterNode *)v95 changeToFilters:v140 semanticStyle:v102 animated:0];
  }

  if ([v140 count])
  {
    [a9 simulatedAperture];
    [(BWStreamingFilterNode *)v95 setSimulatedAperture:?];
    [objc_msgSend(v148 "videoPreviewSinkConfiguration")];
    [(BWStreamingFilterNode *)v95 setPortraitLightingEffectStrength:?];
  }

  [(BWStreamingFilterNode *)v95 setDepthDataDeliveryEnabled:HIDWORD(v137)];
  [(BWStreamingFilterNode *)v95 setAttachesInputPixelBufferAfterRendering:0];
  [(BWNode *)v95 input];
  if (([OUTLINED_FUNCTION_6_64() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_93();
LABEL_129:
    FigDebugAssert3();
    goto LABEL_107;
  }

  v43 = [(BWNode *)v95 output];
LABEL_107:
  if (v22)
  {
    *v22 = v43;
  }

  return v165[0];
}

- (id)_metalCommandQueueWithNamePrefix:(uint64_t)a1 priority:(void *)a2
{
  if (!a1)
  {
    return 0;
  }

  v3 = [objc_msgSend(MEMORY[0x1E6991778] "metalDevice")];
  [objc_msgSend(a2 stringByAppendingString:{@".metal-completion-queue", "UTF8String"}];
  v4 = FigDispatchQueueCreateWithPriority();
  [objc_msgSend(a2 stringByAppendingString:{@".metal-submission-queue", "UTF8String"}];
  v5 = FigDispatchQueueCreateWithPriority();
  [v3 setCompletionQueue:v4];
  [v3 setSubmissionQueue:v5];

  return v3;
}

- (id)_buildImageQueuePreviewSinkPipeline:(uint64_t)a3 previewPipelineStage:(void *)a4 videoPreviewSinkConnectionConfiguration:(int)a5 previewScalerOutputBuffersAreShared:(int)a6 zoomPIPOverlayEnabled:(unsigned int)a7 zoomPIPSmartStyleRenderingEnabled:(unsigned int)a8 zoomPIPSlaveStreamingEnabled:(float)a9 zoomPIPSlaveStreamingFrameRate:(unsigned __int8)a10 debugOverlayEnabled:(unsigned __int8)a11 parallelGraphRebuildEnabled:(uint64_t)a12 transform:(uint64_t)a13 remoteVideoPreview:(unsigned __int8)a14 maxLossyCompressionLevel:(unsigned int)a15 clientAuditToken:(_OWORD *)a16 graph:(void *)a17 captureDevice:(void *)a18 previewTapDelegate:(uint64_t)a19 videoHDRImageStatisticsEnabled:(unsigned __int8)a20 zoomPIPOverlayDelegate:(uint64_t)a21 metalCommandQueue:(uint64_t)a22
{
  if (result)
  {
    v27 = result;
    v84[0] = 0;
    if ((a6 | a10) == 1 && a5)
    {
      v28 = objc_alloc_init(BWPixelTransferNode);
      v29 = v28;
      if (a6)
      {
        v30 = @"Zoom PIP Overlay Buffer Copier";
      }

      else
      {
        v30 = @"Debug Overlay Buffer Copier";
      }

      [(BWNode *)v28 setName:v30];
      if (a6)
      {
        [(BWPixelTransferNode *)v29 setMaxInputLossyCompressionLevel:a15];
        [(BWPixelTransferNode *)v29 setMaxOutputLossyCompressionLevel:a15];
      }

      v83.receiver = v27;
      v83.super_class = FigCapturePreviewSinkPipeline;
      if ((objc_msgSendSuper2(&v83, sel_addNode_error_, v29, v84) & 1) == 0 || ([a17 connectOutput:a2 toInput:-[BWNode input](v29 pipelineStage:{"input"), a3}] & 1) == 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        goto LABEL_76;
      }

      v31 = a3;
      a2 = [(BWNode *)v29 output];
    }

    else
    {
      v31 = a3;
    }

    if (a6)
    {
      v76 = a7;
      v32 = [BWVideoPIPOverlayNode alloc];
      v33 = [a18 isBravoVariant];
      v34 = a18;
      v35 = [a18 baseZoomFactorsByPortType];
      *&v36 = a9;
      v37 = [(BWVideoPIPOverlayNode *)v32 initWithDelegate:a21 metalCommandQueue:a22 secondaryCameraStreamingEnabled:a8 secondaryCameraFrameRate:a15 maxLossyCompressionLevel:v33 isDeviceBravoVariant:v35 baseZoomFactorsByPortType:v36];
      [(BWNode *)v37 setName:@"PIP Overlay"];
      if ([a17 deferredNodePrepareSupported])
      {
        [a17 enableBypassUntilPreparedForNode:v37 deferredPreparePriority:3];
      }

      v82.receiver = v27;
      v82.super_class = FigCapturePreviewSinkPipeline;
      if ((objc_msgSendSuper2(&v82, sel_addNode_error_, v37, v84) & 1) == 0 || (v38 = v31, v39 = v37, *(v27 + 11) = v39, -[BWVideoPIPOverlayNode setSmartStyleRenderingEnabled:](v39, "setSmartStyleRenderingEnabled:", v76), ([a17 connectOutput:a2 toInput:-[BWNode input](v37 pipelineStage:{"input"), v31}] & 1) == 0))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        goto LABEL_76;
      }

      v75 = [(BWNode *)v37 output];
    }

    else
    {
      v34 = a18;
      v38 = v31;
      v75 = a2;
    }

    v40 = [a4 sourceConfiguration];
    if (FigCapturePlatformIdentifier() <= 4)
    {
      v42 = [v40 sourceDeviceType];
      if (v42 > 9)
      {
        v74 = 0;
        goto LABEL_26;
      }

      v41 = 0x310u >> v42;
    }

    else
    {
      LOBYTE(v41) = 1;
    }

    v74 = v41;
LABEL_26:
    v43 = *(v27 + 7);
    v78 = v43;
    if (v43)
    {
      [v43 setPreviewTapDelegate:a19];
      v44 = *(v27 + 7);
    }

    else
    {
      v45 = [BWImageQueueSinkNode alloc];
      v46 = [v27 sinkID];
      v47 = a16[1];
      v81[0] = *a16;
      v81[1] = v47;
      v44 = [(BWImageQueueSinkNode *)v45 initWithHFRSupport:1 ispJitterCompensationEnabled:v74 & 1 clientAuditToken:v81 sinkID:v46];
      [(BWImageQueueSinkNode *)v44 setPreviewTapDelegate:a19];
      *(v27 + 7) = v44;
    }

    [(BWImageQueueSinkNode *)v44 setCaptureDevice:v34];
    [*(v27 + 7) setTransform:{a12, a13}];
    [*(v27 + 7) setVideoHDRImageStatisticsEnabled:a20];
    if (*(v27 + 253))
    {
      v48 = 1;
    }

    else
    {
      v48 = [objc_msgSend(a4 "videoPreviewSinkConfiguration")];
    }

    v49 = *(v27 + 7);
    v50 = [a4 sourceConfiguration];
    [objc_msgSend(v50 "requiredFormat")];
    v52 = v51;
    v53 = [v50 requiredMinFrameRate];
    v55 = FigCaptureFrameRateAsFloat(v53, v54);
    v56 = [v50 requiredMaxFrameRate];
    v58 = FigCaptureFrameRateAsFloat(v56, v57);
    v59 = BWGetMaximumDisplayFrequency();
    v60 = v59;
    v61 = v58 == v55 && fmod(v58, v59) == 0.0;
    [v49 setFenceSupportEnabled:v48];
    [v49 setMaxLossyCompressionLevel:a15];
    if ([objc_msgSend(v50 "requiredFormat")])
    {
      v62 = [objc_msgSend(v50 "requiredFormat")];
    }

    else if ((v74 & 1) != 0 && (v52 <= v60 || v61))
    {
      v62 = 3;
    }

    else if (v52 <= 30.0)
    {
      v62 = 1;
    }

    else
    {
      v62 = 2;
    }

    [v49 setSyncStrategy:v62];
    v63 = *(v27 + 7);
    v80.receiver = v27;
    v80.super_class = FigCapturePreviewSinkPipeline;
    if (objc_msgSendSuper2(&v80, sel_addNode_error_, v63, v84))
    {
      v64 = v78 ? a11 : 0;
      if ([a17 connectOutput:v75 toInput:objc_msgSend(*(v27 + 7) pipelineStage:"input") deferredAttach:{v38, v64}])
      {
        if ([a17 deferredNodePrepareSupported])
        {
          if (([objc_msgSend(a4 "sinkConfiguration")] & 1) == 0)
          {
            [a17 enableDeferredPrepareForNodesNotInPathOfSinkNode:*(v27 + 7)];
            if (*(v27 + 8))
            {
              [a17 enableDeferredPrepareForNodesNotInPathOfSinkNode:?];
            }
          }
        }

        if (!v78 || !*(v27 + 25))
        {
          v65 = [*(v27 + 19) rotationDegrees];
          if (!v65)
          {
            v65 = [*(v27 + 6) rotationDegrees];
          }

          v66 = [v34 position];
          v67 = v66 == 2;
          v68 = FigCaptureCameraRequires180DegreesRotation(v67, [v34 isExternalVariant]);
          v69 = [v34 isExternalVariant];
          [v34 clientExpectsCameraMountedInLandscapeOrientation];
          if (FigCapturePlatformMountsCamerasInLandscapeOrientation(v67, v69))
          {
            v70 = a4;
            if ([a4 mirroringEnabled] && ((objc_msgSend(v34, "isExternalVariant") | v68) & 1) != 0 || (objc_msgSend(a4, "mirroringEnabled") & 1) == 0 && ((v71 = objc_msgSend(v34, "isExternalVariant"), v66 != 2) ? (v72 = 1) : (v72 = v71), ((v72 | v68) & 1) == 0))
            {
              v65 = FigCaptureNormalizeAngle(v65 + 180);
            }
          }

          else
          {
            v70 = a4;
          }

          [v70 transform];
          *(v27 + 76) = v65;
          [(FigCapturePreviewSinkPipeline *)v27 _stashPreviewImageQueueUpdatedNotificationPayload:v65 previewDimensions:v73 remoteVideoPreview:a14];
        }

        goto LABEL_54;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
LABEL_76:
    FigDebugAssert3();
LABEL_54:
    result = v84[0];
    if (v84[0])
    {
      return [v84[0] code];
    }
  }

  return result;
}

- (void)_buildPreviewTimeMachineSinkPipeline:(uint64_t)a3 upstreamPipelineStageForPreviewTimeMachine:(uint64_t)a4 upstreamTransform:(uint64_t)a5 previewTimeMachineConnectionConfiguration:(uint64_t)a6 videoPreviewEnabled:(uint64_t)a7 smartCameraMotionDetectionEnabled:(uint64_t)a8 graph:(void *)a9 captureDevice:(void *)a10
{
  if (result)
  {
    v13 = result;
    if ([a10 zeroShutterLagEnabled])
    {
      v14 = 7;
    }

    else
    {
      v14 = 4;
    }

    v15 = -[BWPreviewTimeMachineSinkNode initWithCaptureDevice:processingQueuePriority:timeMachineCapacity:smartCameraMotionDetectionEnabled:sinkID:]([BWPreviewTimeMachineSinkNode alloc], "initWithCaptureDevice:processingQueuePriority:timeMachineCapacity:smartCameraMotionDetectionEnabled:sinkID:", a10, 13, v14, a8, [v13 sinkID]);
    v22 = OUTLINED_FUNCTION_20_20(v15, sel_addNode_error_, v16, v17, v18, v19, v20, v21, v24, v25, v26, v13);
    if (objc_msgSendSuper2(v22, v23, v15) & 1) != 0 && (v13[10] = v15, ([a9 connectOutput:a2 toInput:-[BWNode input](v15 pipelineStage:{"input"), a3}]))
    {
      [(BWNode *)v15 output];
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    return 0;
  }

  return result;
}

- (id)_buildPreviewSmartStyleCoefficientsTimeMachineSinkPipeline:(uint64_t)a3 upstreamPipelineStageForPreviewTimeMachine:(uint64_t)a4 previewTimeMachineConnectionConfiguration:(void *)a5 graph:(void *)a6 captureDevice:
{
  if (result)
  {
    v10 = result;
    v19 = 0;
    v18[0] = 0x1F21AB110;
    v18[1] = 0x1F21AB070;
    v18[2] = 0x1F21AAED0;
    v18[3] = 0x1F21AAEF0;
    v18[4] = 0x1F21AAF30;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:5];
    v12 = *off_1E798A928;
    v17[0] = *off_1E798A920;
    v17[1] = v12;
    v13 = *off_1E798A8D0;
    v17[2] = *off_1E798A8F0;
    v17[3] = v13;
    v17[4] = *off_1E798A8D8;
    v14 = -[BWAttachedMediaTimeMachineSinkNode initWithTimeMachineCapacity:attachedMediaKeys:metadataKeys:sinkID:]([BWAttachedMediaTimeMachineSinkNode alloc], "initWithTimeMachineCapacity:attachedMediaKeys:metadataKeys:sinkID:", 4, v11, [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:5], @"SmartStyle attachments Time Machine");
    if (v14)
    {
      v15 = v14;
      [(BWNode *)v14 setName:@"SmartStyle attachments Time Machine"];
      [a6 setSmartStyleAttachedMediaTimeMachineDelegate:v15];
      v16.receiver = v10;
      v16.super_class = FigCapturePreviewSinkPipeline;
      if (objc_msgSendSuper2(&v16, sel_addNode_error_, v15, &v19) & 1) != 0 && ([a5 connectOutput:a2 toInput:-[BWNode input](v15 pipelineStage:{"input"), a3}])
      {
        [(BWNode *)v15 output];
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
      }
    }

    result = v19;
    if (v19)
    {
      return [v19 code];
    }
  }

  return result;
}

- (id)_stashPreviewImageQueueUpdatedNotificationPayload:(unint64_t)a3 previewDimensions:(int)a4 remoteVideoPreview:
{
  if (result)
  {
    v7 = result;
    v8 = [result[7] imageQueueSlot];
    if (v8)
    {
      v9 = v8;
      if (a4)
      {
        v18[0] = @"SectionID";
        v19[0] = [v7 sinkID];
        v18[1] = @"ImageQueueSlot";
        v19[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
        v18[2] = @"RotationDegrees";
        v19[2] = [MEMORY[0x1E696AD98] numberWithInt:a2];
        v18[3] = @"ImageQueueWidth";
        v19[3] = [MEMORY[0x1E696AD98] numberWithInt:a3];
        v18[4] = @"ImageQueueHeight";
        v19[4] = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(a3)];
        v10 = MEMORY[0x1E695DF20];
        v11 = v19;
        v12 = v18;
        v13 = 5;
      }

      else
      {
        v15 = [v7[7] imageQueue];
        v17[0] = [v7 sinkID];
        v16[1] = @"ImageQueueSlot";
        v17[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
        v17[2] = v15;
        v16[2] = @"ImageQueue";
        v16[3] = @"RotationDegrees";
        v17[3] = [MEMORY[0x1E696AD98] numberWithInt:a2];
        v16[4] = @"ImageQueueWidth";
        v17[4] = [MEMORY[0x1E696AD98] numberWithInt:a3];
        v16[5] = @"ImageQueueHeight";
        v17[5] = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(a3)];
        v10 = MEMORY[0x1E695DF20];
        v11 = v17;
        v12 = v16;
        v13 = 6;
      }

      v14 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:v13];
    }

    else
    {
      v14 = 0;
    }

    result = v14;
    v7[25] = result;
  }

  return result;
}

- (uint64_t)setSceneClassifierSuspended:(void *)a1 .cold.1(void *a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  result = FigDebugAssert3();
  *a2 = *a1;
  return result;
}

@end