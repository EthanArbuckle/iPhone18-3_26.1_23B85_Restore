@interface FigCaptureCameraSourcePipeline
+ (void)initialize;
- (BOOL)requiresMasterClock;
- (BWNodeOutput)createOutputNetworkForOutput:(uint64_t)a3 withFanOutCount:(void *)a4 graph:(uint64_t)a5 sessionID:;
- (NSString)description;
- (double)trueVideoCaptureAdditionalZoomFactor;
- (double)trueVideoCaptureAdditionalZoomFactorForPhotoGraphVideoZoomFactor:(uint64_t)a1;
- (float)trueVideoTransitionPreviousPhotoGraphZoomFactor;
- (id)_addDepthFromInfraredSynchronizer:(void *)a3 previewOutputsBySourceDeviceType:(uint64_t)a4 pipelineConfiguration:(uint64_t)a5 graph:(uint64_t)a6 sourceDeviceType:;
- (id)_buildPointCloudOutputNetworkWithPipelineConfiguration:(id *)result graph:(uint64_t)a2;
- (id)initWithConfiguration:(void *)a3 captureDevice:(void *)a4 graph:(uint64_t)a5 name:(uint64_t)a6 renderDelegate:(uint64_t)a7 ispFastSwitchEnabled:(uint64_t)a8 rtscProcessorsBySourceDeviceType:(uint64_t)a9 inferenceScheduler:(int *)a10 error:;
- (uint64_t)_addCrossOverNodeToGraph:(int)a3 outputNetworkType:(void *)a4 inputs:(uint64_t)a5 mediaType:(uint64_t)a6 name:(_DWORD *)a7 outErr:;
- (uint64_t)_addOverCaptureSourcePipelineToGraph:(void *)a3 upstreamVideoCaptureOutputsBySourceDeviceType:(unsigned int)a4 depthEnabled:(uint64_t)a5 depthFilterRenderingEnabled:(unsigned int)a6 preLTMThumbnailEnabled:(unsigned int)a7 postColorProcessingThumbnailEnabled:(char)a8 weightSegmentMapEnabled:(char)a9 forPreview:(unsigned int)a10 maxLossyCompressionLevel:(int)a11 numberOfSecondaryFramesToSkip:(_DWORD *)a12 outErr:;
- (uint64_t)_buildMultiStreamCameraSourcePipeline:(void *)a3 graph:(uint64_t)a4 renderDelegate:(uint64_t)a5 fastModeSwitch:(uint64_t)a6 rtscProcessorsBySourceDeviceType:(uint64_t)a7 inferenceScheduler:;
- (uint64_t)_buildPreviewOutputNetwork:(uint64_t)a3 videoCaptureOutputsBySourceDeviceType:(uint64_t)a4 pipelineConfiguration:graph:numberOfSecondaryFramesToSkip:;
- (uint64_t)_buildSemanticMasksOutputNetwork:(uint64_t)a1 pipelineConfiguration:(void *)a2 graph:;
- (uint64_t)_canDeferSourceNodesForGraph:(uint64_t)result;
- (uint64_t)_connectCinematicFramingNode:(void *)a3 videoOutputsBySourceDeviceType:(void *)a4 sourceDeviceTypes:(void *)a5 portTypes:(void *)a6 graph:(void *)a7 cameraConfiguration:stillImageCaptureEnabled:stillImageOutputsByPortType:;
- (uint64_t)_getDeviceOrientationCorrectionEnabledForVideoCaptureConnectionConfigurations:(uint64_t)a1;
- (uint64_t)_insertSubjectSelectionAndCinematicFramingNodesOnOutputsBySourceDeviceType:(uint64_t)a1 connectionConfigurations:(void *)a2 pipelineConfiguration:(void *)a3 cameraInfoByPortType:(uint64_t)a4 graph:(uint64_t)a5 stillImageCaptureEnabled:(void *)a6 stillImageOutputsByPortType:(unsigned int)a7;
- (uint64_t)_stereoVideoAddSlaveFrameSynchronizerNode:(uint64_t)a3 input1:(uint64_t)a4 input2:(uint64_t)a5 mediaType:(uint64_t)a6 name:(_DWORD *)a7 outErr:;
- (uint64_t)allocateSharedBufferPools;
- (uint64_t)cameraConfiguration;
- (uint64_t)captureDevice;
- (uint64_t)captureSource;
- (uint64_t)captureSourceDepthDataFormat;
- (uint64_t)captureSourceVideoFormat;
- (uint64_t)cinematicFramingCameraStatesProvider;
- (uint64_t)clock;
- (uint64_t)colorSpaceProperties;
- (uint64_t)depthOutput;
- (uint64_t)depthType;
- (uint64_t)firmwareStillImageDimensionsAfterOverscanCropping;
- (uint64_t)getSmartStyle;
- (uint64_t)hackRetainedBufferCountsForDualStreamSources;
- (uint64_t)hardwareDepthFilteringEnabled;
- (uint64_t)isKeypointDescriptorDataOnVideoCaptureOutputsEnabledForSourceDeviceType:(uint64_t)result;
- (uint64_t)isLightSourceMaskOnVideoCaptureOutputsEnabledForSourceDeviceType:(uint64_t)result;
- (uint64_t)liveReconfigureForOutputDimensions:(uint64_t)a3 aspectRatio:;
- (uint64_t)loadInferenceNetworkForSmartStyle;
- (uint64_t)lowLatencyStabilizationEnabled;
- (uint64_t)metadataObjectConnectionConfigurationForSessionID:(uint64_t)result;
- (uint64_t)metadataOutputsByCategoryForSourceDeviceType:(uint64_t)a1;
- (uint64_t)motionAttachmentsSource;
- (uint64_t)nextPointCloudOutput;
- (uint64_t)postColorProcessingThumbnailEnabled;
- (uint64_t)preLTMThumbnailEnabled;
- (uint64_t)preferredPreviewDimensions;
- (uint64_t)previewOutputTransformForSourceDeviceType:(uint64_t)a1;
- (uint64_t)registerAttachedSessionID:(uint64_t)result;
- (uint64_t)semanticMasksOutputsBySourceDeviceType:(uint64_t)result;
- (uint64_t)semanticStyleSceneObserver;
- (uint64_t)setBlackenFramesForContinuityDisplayConnected:(uint64_t)result;
- (uint64_t)setCinematicVideoFocusDetectionsProvider:(uint64_t)result;
- (uint64_t)setDisableTemporalNoiseReductionWhenStopping:(uint64_t)result;
- (uint64_t)setKeepISPStreamingWhenStopping:(uint64_t)result;
- (uint64_t)setMasterClock:(uint64_t)result;
- (uint64_t)setMetadataObjectConnectionConfiguration:(uint64_t)a3 forSessionID:;
- (uint64_t)setMotionToWakeTargetFrameRate:(uint64_t)result;
- (uint64_t)setObjectDetectionTargetFrameRate:(uint64_t)result;
- (uint64_t)setPreviewShift:(double)a3 previewScaleFactor:(double)a4 forPortType:(float)a5 previewShiftAtBaseZoom:(double)a6;
- (uint64_t)setSmartStyle:(uint64_t)result;
- (uint64_t)setVideoHDRImageStatisticsEnabled:(uint64_t)result;
- (uint64_t)smartCropHomographyProvider;
- (uint64_t)sourceFormatReferenceOutput;
- (uint64_t)sourceNodes;
- (uint64_t)startIncrementalPrefetchingOfSourcePoolsIfNecessary;
- (uint64_t)stillImageOutputColorInfo;
- (uint64_t)stillImageOutputDerivesFromVideoCaptureOutput;
- (uint64_t)stillImageOutputVideoFormat;
- (uint64_t)stillImageOutputsByPortType;
- (uint64_t)stillImageSensorRawOutputsByPortType;
- (uint64_t)trueVideoCaptureEnabled;
- (uint64_t)usesFirmwareStillImageOutput;
- (uint64_t)videoCaptureDimensionsWithoutOverscan;
- (uint64_t)videoCaptureOutputTransformForSourceDeviceType:(uint64_t)a1;
- (uint64_t)videoHDRImageStatisticsEnabled;
- (uint64_t)videoOutputColorInfo;
- (uint64_t)visionDataOutputForSourceDeviceType:(uint64_t)result;
- (uint64_t)weightSegmentMapEnabled;
- (void)_addFunnelNodeToGraph:(uint64_t)a3 inputs:(uint64_t)a4 mediaType:(uint64_t)a5 name:(uint64_t)a6 outErr:(uint64_t)a7;
- (void)_buildDetectedObjectsOutputNetwork:pipelineConfiguration:graph:;
- (void)_buildVideoCaptureOutputNetwork:(uint64_t)a3 previewOutputsBySourceDeviceType:(uint64_t)a4 stillImageOutputsByPortType:(uint64_t)a5 lightSourceMaskOutputsBySourceDeviceType:(uint64_t)a6 keypointDescriptorDataOutputsBySourceDeviceType:(uint64_t)a7 pipelineConfiguration:(uint64_t)a8 graph:(uint64_t)a9 videoCaptureDimensions:(uint64_t)a10 numberOfSecondaryFramesToSkip:(uint64_t)a11 rtscProcessorsBySourceDeviceType:(uint64_t)a12 inferenceScheduler:(uint64_t)a13;
- (void)_connectSubjectSelectionNode:(uint64_t)a1 videoOutputsBySourceDeviceType:sourceDeviceTypes:portTypes:graph:;
- (void)_insertCrossOverAndOverCaptureNodesOnOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:outputNetworkType:numberOfSecondaryFramesToSkip:;
- (void)_insertFunnelOnMetadataOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:mediaType:metadataName:;
- (void)_insertFunnelOnPreviewOutputsBySourceDeviceType:previewDerivedConnectionConfigurations:graph:;
- (void)_insertSmartStyleLearningNodeOnOutputsBySourceDeviceType:ifAllowedByAdditionalPreviewConnectionConfigurations:semanticMasksOutputsBySourceDeviceType:pipelineConfiguration:graph:;
- (void)_insertSmartStyleMetadataSynchronizerNodeOnOutputsBySourceDeviceType:pipelineConfiguration:graph:;
- (void)_rerouteDetectedObjectsOutputsForSourcesWithCinematicFramingEnabled:graph:;
- (void)addMetadataOutputNetworksForSessionID:(uint64_t)a3 graph:(uint64_t)a4;
- (void)dealloc;
- (void)metadataCategoriesForConnectionConfiguration:(uint64_t)a1;
- (void)newConfigurationRequiresStreamRestart:tnrConfigurationChanged:newFormatIndexByPortTypeOut:;
- (void)nextPreviewOutputForSourceDeviceType:(char)a3 intendedForVideoDataSinkPipeline:;
- (void)nextVideoCaptureOutputForSourceDeviceType:(uint64_t)a3;
- (void)nextVideoCaptureOutputForSourceDeviceType:(uint64_t)a3 sharesBuffersWithOtherConnections:(uint64_t)a4;
- (void)nondisruptiveSwitchingFormatIndicesByPortTypeForConfiguration:;
- (void)prepareForStillImageCaptureWithStillImageOutputRetainedBufferCountOverride:(uint64_t)a3 infraRedStillImageOutputRetainedBufferCountOverride:(uint64_t)a4 clientBracketCount:(uint64_t)a5 enableSushiRawAttachmentOption:(uint64_t)a6;
- (void)setBackgroundBlurNodePropertiesWhileRunning:(uint64_t)a1 studioLightingEnabled:reactionEffectsEnabled:backgroundReplacementEnabled:;
- (void)setCinematicFramingControlsWhileRunning:(float)a3 panningAngleX:(float)a4 panningAngleY:(float)a5 videoZoomFactor:(double)a6 manualFramingDefaultZoomFactor:;
- (void)setFaceFilteringDelegate:(void *)result;
- (void)setStreamsSuspendedBySourceDeviceType:(uint64_t)a1;
@end

@implementation FigCaptureCameraSourcePipeline

- (uint64_t)colorSpaceProperties
{
  if (result)
  {
    return [*(result + 72) colorSpaceProperties];
  }

  return result;
}

- (uint64_t)captureSourceVideoFormat
{
  if (result)
  {
    return *(result + 472);
  }

  return result;
}

- (double)trueVideoCaptureAdditionalZoomFactor
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a1 + 56);
  if ((*(a1 + 584) & 1) == 0)
  {
    if (v2)
    {
      if (*(v2 + 336))
      {
        goto LABEL_7;
      }

      v4 = *(v2 + 176);
    }

    else
    {
      v4 = 0;
    }

    [v4 videoZoomFactor];
    goto LABEL_10;
  }

  if (v2)
  {
LABEL_7:
    v3 = *(v2 + 340);
    goto LABEL_10;
  }

  v3 = 0.0;
LABEL_10:

  return [(FigCaptureCameraSourcePipeline *)a1 trueVideoCaptureAdditionalZoomFactorForPhotoGraphVideoZoomFactor:v3];
}

- (uint64_t)trueVideoCaptureEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 584));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)lowLatencyStabilizationEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 588));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)videoHDRImageStatisticsEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 513));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)captureDevice
{
  if (result)
  {
    return *(result + 456);
  }

  return result;
}

- (uint64_t)stillImageOutputColorInfo
{
  if (result)
  {
    [*(result + 72) stillImageOutput];
    v1 = OUTLINED_FUNCTION_17();

    return [v1 colorInfoForOutput:?];
  }

  return result;
}

- (uint64_t)motionAttachmentsSource
{
  if (result)
  {
    v1 = [*(result + 72) configuration];

    return [v1 motionAttachmentsSource];
  }

  return result;
}

- (uint64_t)stillImageOutputsByPortType
{
  if (result)
  {
    return *(result + 176);
  }

  return result;
}

- (uint64_t)usesFirmwareStillImageOutput
{
  if (result)
  {
    v1 = [*(result + 72) configuration];

    return [v1 usesFirmwareStillImageOutput];
  }

  return result;
}

- (uint64_t)stillImageOutputDerivesFromVideoCaptureOutput
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 488));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)stillImageSensorRawOutputsByPortType
{
  if (result)
  {
    return *(result + 184);
  }

  return result;
}

- (uint64_t)captureSource
{
  if (result)
  {
    return *(result + 464);
  }

  return result;
}

- (uint64_t)nextPointCloudOutput
{
  if (result)
  {
    v1 = *(result + 376);
    ++*(result + 384);
    return [v1 objectAtIndexedSubscript:?];
  }

  return result;
}

- (uint64_t)videoCaptureDimensionsWithoutOverscan
{
  if (result)
  {
    v1 = [*(result + 72) configuration];

    return [v1 videoCaptureDimensions];
  }

  return result;
}

- (uint64_t)depthType
{
  if (result)
  {
    return *(result + 508);
  }

  return result;
}

- (uint64_t)hackRetainedBufferCountsForDualStreamSources
{
  if (result)
  {
    v2 = result;
    switch(*(result + 44))
    {
      case 4:
        v9 = *(result + 72);
        [objc_msgSend(OUTLINED_FUNCTION_27_12() "previewOutput")];
        v10 = [objc_msgSend(OUTLINED_FUNCTION_103_3(objc_msgSend(objc_msgSend(*(v2 + 72) "previewOutput")];
        [objc_msgSend(OUTLINED_FUNCTION_27_12() "previewOutput")];
        [objc_msgSend(OUTLINED_FUNCTION_27_12() "videoCaptureOutput")];
        v11 = [objc_msgSend(OUTLINED_FUNCTION_103_3(objc_msgSend(objc_msgSend(*(v2 + 72) "videoCaptureOutput")];
        [objc_msgSend(OUTLINED_FUNCTION_27_12() "videoCaptureOutput")];
        [objc_msgSend(OUTLINED_FUNCTION_27_12() "previewOutput")];
        [objc_msgSend(OUTLINED_FUNCTION_18_0() "previewOutput")];
        v7 = [objc_msgSend(OUTLINED_FUNCTION_27_12() "videoCaptureOutput")];
        goto LABEL_12;
      case 6:
      case 0xC:
        v3 = *(result + 72);
        [objc_msgSend(OUTLINED_FUNCTION_104_1() "previewOutput")];
        v4 = [objc_msgSend(OUTLINED_FUNCTION_18_0() "previewOutput")];
        v5 = v3;
        if (v1 > v4)
        {
          v5 = OUTLINED_FUNCTION_104_1();
        }

        v6 = [objc_msgSend(v5 "previewOutput")];
        [objc_msgSend(OUTLINED_FUNCTION_104_1() "previewOutput")];
        [objc_msgSend(OUTLINED_FUNCTION_104_1() "videoCaptureOutput")];
        if (v6 > [objc_msgSend(OUTLINED_FUNCTION_18_0() "videoCaptureOutput")])
        {
          v3 = *(v2 + 96);
        }

        v7 = [objc_msgSend(v3 "videoCaptureOutput")];
        v8 = 96;
        goto LABEL_11;
      case 8:
        result = [*(result + 456) stereoVideoCaptureEnabled];
        if (!result)
        {
          return result;
        }

        [objc_msgSend(OUTLINED_FUNCTION_27_12() "previewOutput")];
        v12 = [objc_msgSend(OUTLINED_FUNCTION_101_2(objc_msgSend(objc_msgSend(*(v2 + 72) "previewOutput")];
        [objc_msgSend(OUTLINED_FUNCTION_27_12() "previewOutput")];
        [objc_msgSend(OUTLINED_FUNCTION_27_12() "videoCaptureOutput")];
        v7 = [objc_msgSend(OUTLINED_FUNCTION_101_2(objc_msgSend(objc_msgSend(*(v2 + 72) "videoCaptureOutput")];
        v8 = 88;
LABEL_11:
        v9 = *(v2 + v8);
LABEL_12:
        v13 = [v9 videoCaptureOutput];

        result = [v13 setRetainedBufferCount:v7];
        break;
      default:
        return result;
    }
  }

  return result;
}

- (uint64_t)allocateSharedBufferPools
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1[9] allocateOrReuseBufferPoolsFromSourceNode:0];
  if (v2 || (v2 = [a1[10] allocateOrReuseBufferPoolsFromSourceNode:a1[9]], v2) || (v2 = objc_msgSend(a1[11], "allocateOrReuseBufferPoolsFromSourceNode:", a1[9]), v2))
  {
    v3 = v2;
    OUTLINED_FUNCTION_1_5();
LABEL_9:
    FigDebugAssert3();
    return v3;
  }

  v3 = [a1[12] allocateOrReuseBufferPoolsFromSourceNode:0];
  if (v3)
  {
    OUTLINED_FUNCTION_0_8();
    goto LABEL_9;
  }

  return v3;
}

- (uint64_t)sourceFormatReferenceOutput
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

- (uint64_t)sourceNodes
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (uint64_t)_buildMultiStreamCameraSourcePipeline:(void *)a3 graph:(uint64_t)a4 renderDelegate:(uint64_t)a5 fastModeSwitch:(uint64_t)a6 rtscProcessorsBySourceDeviceType:(uint64_t)a7 inferenceScheduler:
{
  if (!result)
  {
    return result;
  }

  v9 = result;
  v817 = 0;
  v816 = 0;
  v618 = [MEMORY[0x1E695DF90] dictionary];
  v617 = [MEMORY[0x1E695DF90] dictionary];
  v619 = [MEMORY[0x1E695DF90] dictionary];
  v612 = [MEMORY[0x1E695DF90] dictionary];
  v613 = [MEMORY[0x1E695DF90] dictionary];
  v615 = [MEMORY[0x1E695DF90] dictionary];
  v614 = [MEMORY[0x1E695DF90] dictionary];
  v616 = [MEMORY[0x1E695DF90] dictionary];
  v610 = [MEMORY[0x1E695DF90] dictionary];
  v609 = [MEMORY[0x1E695DF90] dictionary];
  v608 = [MEMORY[0x1E695DF90] dictionary];
  v607 = [MEMORY[0x1E695DF90] dictionary];
  v606 = [MEMORY[0x1E695DF90] dictionary];
  v708 = a2;
  if (a2)
  {
    v661 = *(a2 + 16);
    v689 = *(a2 + 32);
    v646 = *(a2 + 121);
    v717 = *(a2 + 176);
    v10 = *(a2 + 192);
    v693 = *(a2 + 200);
    v11 = *(a2 + 216);
    v696 = *(a2 + 208);
    v658 = *(a2 + 224);
    a2 = *(a2 + 256);
  }

  else
  {
    v658 = 0;
    v696 = 0;
    v10 = 0;
    v646 = 0;
    v661 = 0;
    v689 = 0;
    v717 = 0;
    v693 = 0;
    v11 = 0;
  }

  if ([a2 count] && objc_msgSend(a2, "count"))
  {
    v12 = 0;
    do
    {
      v13 = [objc_msgSend(a2 "firstObject")];
      if ((v13 & 1) == 0)
      {
        break;
      }

      ++v12;
    }

    while ([a2 count] > v12);
    v637 = v13 ^ 1;
  }

  else
  {
    v637 = 0;
  }

  if (v708)
  {
    v14 = *(v708 + 256);
  }

  else
  {
    v14 = 0;
  }

  if ([v14 count])
  {
    v709 = [objc_msgSend(v14 "firstObject")];
    if ([v14 count] >= 2)
    {
      v15 = 1;
      do
      {
        if (v709 != [objc_msgSend(v14 objectAtIndexedSubscript:{v15), "supplementalPointCloudData"}])
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Point cloud connection configs with the same source should have the same supplementalPointCloudData value" userInfo:0]);
        }

        ++v15;
      }

      while ([v14 count] > v15);
    }
  }

  else
  {
    v709 = 0;
  }

  if (v708)
  {
    v16 = *(v708 + 256);
  }

  else
  {
    v16 = 0;
  }

  v828 = 0u;
  v829 = 0u;
  v830 = 0u;
  v831 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v828 objects:&v841 count:16];
  v692 = v11;
  v688 = v10;
  if (v17)
  {
    v18 = v17;
    v19 = *v829;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v829 != v19)
        {
          objc_enumerationMutation(v16);
        }

        if ([objc_msgSend(*(*(&v828 + 1) + 8 * i) "sinkConfiguration")] == 15)
        {
          v594 = 0;
          goto LABEL_31;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v828 objects:&v841 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v594 = 1;
LABEL_31:
  v21 = [v717 depthDataDeliveryEnabled];
  v754 = v21;
  if (v689 == 3)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  *v680 = v22;
  v636 = [v10 previewDepthFilterRenderingEnabled];
  v23 = [v717 requiredFormat];
  v634 = [objc_msgSend(v692 "irisSinkConfiguration")];
  v24 = [objc_msgSend(objc_msgSend(objc_msgSend(*(v9 + 456) "captureStream")];
  if ([v717 cinematicFramingEnabled])
  {
    isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration = 1;
  }

  else
  {
    if (v708)
    {
      v26 = *(v708 + 208);
    }

    else
    {
      v26 = 0;
    }

    isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration = csp_isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration(v26);
  }

  v733 = v24;
  if ([v717 manualCinematicFramingEnabled])
  {
    v27 = 1;
  }

  else
  {
    if (v708)
    {
      v28 = *(v708 + 208);
    }

    else
    {
      v28 = 0;
    }

    v27 = csp_isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration(v28);
  }

  if ([v717 deskCamEnabled])
  {
    isDeskCamEnabledInVideoDataConnectionConfiguration = 1;
  }

  else
  {
    if (v708)
    {
      v29 = *(v708 + 208);
    }

    else
    {
      v29 = 0;
    }

    isDeskCamEnabledInVideoDataConnectionConfiguration = csp_isDeskCamEnabledInVideoDataConnectionConfiguration(v29);
  }

  v30 = FigCaptureCinematicFramingNodeRequiredInGraph(isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration, [objc_msgSend(v717 "requiredFormat")], v27);
  v697 = v23;
  if ([v717 cinematicFramingEnabled] && objc_msgSend(objc_msgSend(v717, "requiredFormat"), "isSmartCropSupported") && (objc_msgSend(objc_msgSend(v717, "requiredFormat"), "isCinematicFramingSupported") & 1) == 0)
  {
    v31 = a3;
    v32 = [objc_msgSend(v717 "requiredFormat")] ^ 1;
  }

  else
  {
    v31 = a3;
    v32 = 0;
  }

  v33 = (v32 ^ 1) & v30;
  v34 = v692 != 0;
  v748 = FigCaptureVideoEffectEnabledInGraph(@"backgroundblur", [v717 backgroundBlurEnabled], objc_msgSend(v717, "isBackgroundBlurSupported"), objc_msgSend(objc_msgSend(v717, "requiredFormat"), "isBackgroundBlurProvidedBySource"), v34, objc_msgSend(v717, "isCinematicVideoCaptureEnabled"), 0);
  obj = FigCaptureVideoEffectEnabledInGraph(@"studiolighting", [v717 studioLightingEnabled], objc_msgSend(v717, "isStudioLightingSupported"), objc_msgSend(objc_msgSend(v717, "requiredFormat"), "isStudioLightingProvidedBySource"), v34, objc_msgSend(v717, "isCinematicVideoCaptureEnabled"), 0);
  v622 = FigCaptureVideoEffectEnabledInGraph(@"reactioneffects", [v717 reactionEffectsEnabled], objc_msgSend(v717, "reactionEffectsSupported"), objc_msgSend(objc_msgSend(v717, "requiredFormat"), "reactionEffectsProvidedBySource"), v34, objc_msgSend(v717, "isCinematicVideoCaptureEnabled"), 0);
  v740 = FigCaptureVideoEffectEnabledInGraph(@"backgroundreplacement", [v717 backgroundReplacementEnabled], objc_msgSend(v717, "isBackgroundReplacementSupported"), objc_msgSend(objc_msgSend(v717, "requiredFormat"), "isBackgroundReplacementProvidedBySource"), v34, objc_msgSend(v717, "isCinematicVideoCaptureEnabled"), 0);
  v730 = v33;
  v644 = isDeskCamEnabledInVideoDataConnectionConfiguration | v33;
  v640 = v32;
  shouldApplyCropFromVideoDataOutput = csp_shouldApplyCropFromVideoDataOutput(v708);
  v35 = csp_videoCaptureDimensionsFromConnectionConfigurations([v717 requiredFormat], v692, v696, v693, v658, ((isDeskCamEnabledInVideoDataConnectionConfiguration | v33) | v32) & 1, shouldApplyCropFromVideoDataOutput, objc_msgSend(v717, "outputAspectRatio"), v32);
  csp_shouldUseFESCompanionIndex(v717, v696, v35, v36, v37, v38, v39, v40, v534, v538, v541, v543, v545, v548, v551, v554, v557, v560, v563, v566, v569, v572, v575, v578, v581, v584, v587, v589, v591, v592);
  v647 = v41;
  v682 = v35;
  csp_shouldUseDepthCompanionIndex(v717, v696, v35, v42, v43, v44, v45, v46, v535, v539, v542, v544, v546, v549, v552, v555, v558, v561, v564, v567, v570, v573, v576, v579, v582, v585, v588, v590);
  v632 = v47;
  v631 = [*(v9 + 456) hasFlash];
  if (FigCapturePlatformIdentifier() > 10)
  {
    v630 = 0;
  }

  else
  {
    if (v708)
    {
      v48 = *(v708 + 192);
    }

    else
    {
      v48 = 0;
    }

    if ([objc_msgSend(v48 "sinkConfiguration")] == 1)
    {
      v630 = [v48 enabled];
    }

    else
    {
      v630 = 0;
    }
  }

  v718 = v9;
  if (v708)
  {
    v49 = *(v708 + 136);
    v685 = v49 != 0.0;
  }

  else
  {
    v685 = 0;
    v49 = 0.0;
  }

  v736 = HIDWORD(v35);
  IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw([v23 format]);
  v719 = v31;
  [v31 isRunningForContinuityCapture];
  csp_dockKitNodeEnabled();
  v681 = v51;
  v52 = csp_willDecoupleWarperFromStreamProcessing(v661);
  if (*v680)
  {
    v53 = v717;
    if ([*(v718 + 456) isBravoVariant])
    {
      if (v35 == 3840 && v736 == 2160 || (v660 = 0, v54 = 1, v35 == 2160) && v736 == 3840)
      {
        v55 = IsPackedBayerRaw;
        v56 = *(v718 + 456);
        v828 = 0u;
        v829 = 0u;
        v830 = 0u;
        v831 = 0u;
        v57 = [v56 captureStreams];
        v58 = [v57 countByEnumeratingWithState:&v828 objects:&v841 count:16];
        if (!v58)
        {
LABEL_79:
          [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:? graph:? renderDelegate:? fastModeSwitch:? rtscProcessorsBySourceDeviceType:? inferenceScheduler:?];
          goto LABEL_609;
        }

        v59 = v58;
        v60 = *v829;
        v61 = *off_1E798A0C0;
        v62 = *off_1E798A0D0;
LABEL_70:
        v63 = 0;
        while (1)
        {
          if (*v829 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v64 = *(*(&v828 + 1) + 8 * v63);
          if ([v56 bravoTelephotoCaptureStream])
          {
            if ([objc_msgSend(v64 "portType")])
            {
              break;
            }
          }

          if ([v56 bravoSuperWideCaptureStream] && (objc_msgSend(objc_msgSend(v64, "portType"), "isEqualToString:", v62) & 1) != 0)
          {
            break;
          }

          if (v59 == ++v63)
          {
            v59 = [v57 countByEnumeratingWithState:&v828 objects:&v841 count:16];
            if (!v59)
            {
              goto LABEL_79;
            }

            goto LABEL_70;
          }
        }

        if (!v64)
        {
          goto LABEL_79;
        }

        v53 = v717;
        v65 = BWUtilitiesUnderlyingDeviceTypeFromPortType([v64 portType], objc_msgSend(v717, "sourceDeviceType"));
        v66 = FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v696);
        v67 = FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v693);
        IsPackedBayerRaw = v55;
        if ([v66 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v65)}])
        {
          v660 = 0;
        }

        else
        {
          v660 = [v67 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v65)}] ^ 1;
        }

        v54 = 1;
        v23 = v697;
      }
    }

    else
    {
      v54 = 0;
      v660 = 0;
    }
  }

  else
  {
    v54 = 0;
    v660 = 0;
    v53 = v717;
  }

  if (v52 & 1 | (([objc_msgSend(objc_msgSend(*(v718 + 456) "captureStream")] & 1) == 0))
  {
    v68 = 1;
  }

  else
  {
    v68 = v54 & (v660 ^ 1);
  }

  if ([objc_msgSend(objc_msgSend(*(v718 + 456) "captureStream")])
  {
    v69 = [v23 isSecondaryScalerUnavailable] | v52 & (v733 == 0);
  }

  else
  {
    v69 = 1;
  }

  v659 = v69;
  if (v689 - 1 < 2)
  {
    v70 = v754;
  }

  else
  {
    v70 = 0;
  }

  if (v70 == 1 && [v696 count])
  {
    if (v682 == 3840 && v736 == 2160)
    {
      v659 = 1;
    }

    else
    {
      v72 = v682 == 2160 && v736 == 3840;
      v659 |= v72;
    }
  }

  v73 = [objc_msgSend(objc_msgSend(*(v718 + 456) "captureStream")];
  v74 = [v53 geometricDistortionCorrectionEnabled];
  if (FigCapturePlatformIdentifier() <= 9 && v74 && (([v661 containsObject:&unk_1F2244788] & 1) != 0 || objc_msgSend(v661, "containsObject:", &unk_1F22447B8)))
  {
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:? graph:? renderDelegate:? fastModeSwitch:? rtscProcessorsBySourceDeviceType:? inferenceScheduler:?];
    goto LABEL_609;
  }

  if (v708)
  {
    v635 = *(v708 + 125);
    v639 = *(v708 + 124);
    v645[1] = *(v708 + 148);
    v645[0] = *(v708 + 152);
    v629[1] = *(v708 + 156);
    v629[0] = *(v708 + 160);
    if ([v697 sushiRawSupported])
    {
      v666 = *(v708 + 264) ^ 1;
    }

    else
    {
      v666 = 0;
    }

    v75 = v748;
    v76 = obj;
    v77 = v740;
    v664 = *(v708 + 164);
  }

  else
  {
    v666 = [v697 sushiRawSupported];
    *v629 = 0;
    *v645 = 0;
    v635 = 0;
    v639 = 0;
    v664 = 0;
    v75 = v748;
    v76 = obj;
    v77 = v740;
  }

  v78 = v75 | v76;
  v79 = v622 | v77;
  if ((FigCapturePlatformIdentifier() < 7) | (v68 | v659) & 1)
  {
    v80 = 0;
  }

  else
  {
    v80 = FigCaptureSourceGetBoolAttribute([v53 source], @"GeometricDistortionCorrectionExpandsImageDimensions", 0) ^ 1;
  }

  v638 = v78 | v79;
  v81 = v692;
  *(v718 + 488) = csp_shouldCaptureStillsFromVideoStream(v53, v697, v647, v692 != 0);
  *(v718 + 40) = 0;
  if (v693)
  {
    if (v692)
    {
      v81 = [v697 capturesStillsFromVideoStream];
    }

    v82 = [v696 count] != 0;
    if (v74)
    {
      v83 = [*(v718 + 456) isBravoVariant] & v660;
    }

    else
    {
      v83 = 1;
    }

    v85 = v708;
    if (IsPackedBayerRaw)
    {
      v84 = v718;
      *(v718 + 40) = 0;
LABEL_133:
      v86 = v697;
      v87 = 0x1E696A000;
      v53 = v717;
      goto LABEL_134;
    }

    if (((v82 | v81) & 1) != 0 && ((((v659 & 1) == 0) + (v68 ^ 1u) + v73 > 1) & (v80 | v83)) == 0)
    {
      v84 = v718;
      *(v718 + 40) = 1;
      goto LABEL_133;
    }

    v87 = 0x1E696A000;
    v53 = v717;
    if ([v696 count] || *(v718 + 488) == 1)
    {
      v85 = v708;
      v86 = v697;
      if ((isDeskCamEnabledInVideoDataConnectionConfiguration | v640 | v68 & v659 | v685 | v730 | v638))
      {
        *(v718 + 40) = 1;
        v84 = v718;
      }

      else if (v635 == v639)
      {
        if (v74 & 1 | (([v661 containsObject:&unk_1F2244908] & 1) == 0))
        {
          v366 = [v697 previewDimensionsForAspectRatio:{objc_msgSend(v717, "outputAspectRatio")}];
          v367 = v736 * v682;
          v368 = HIDWORD(v366) * v366;
          v84 = v718;
          if (HIDWORD(v366) * v366 <= v736 * v682 && (v368 * 1.5385) >= v367 || v367 <= v368 && (v367 * 1.5385) >= v368)
          {
            *(v718 + 40) = 1;
          }

          else
          {
            v85 = v708;
            if (v366 >= v682 || ((v659 | v68) & 1) == 0)
            {
              goto LABEL_134;
            }

            v369 = [v717 requiredFormat];
            if (v647)
            {
              v370 = [objc_msgSend(objc_msgSend(v369 "frontEndScalerCompanionFormats")];
            }

            else
            {
              v370 = [v369 nativeDimensions];
            }

            *(v718 + 40) = (v682 * 1.2) < v370;
          }
        }

        else
        {
          v84 = v718;
        }

        v85 = v708;
      }

      else
      {
        v84 = v718;
        *(v718 + 40) = 0;
      }
    }

    else
    {
      v84 = v718;
      v85 = v708;
      v86 = v697;
    }
  }

  else
  {
    v84 = v718;
    v85 = v708;
    v86 = v697;
    v87 = 0x1E696A000;
  }

LABEL_134:
  if (v85)
  {
    v88 = v708;
    *(v84 + 584) = csp_trueVideoCaptureEnabled(*(v85 + 208));
    if (*(v708 + 336) == 1 && (*(v84 + 584) & 1) == 0)
    {
      if (dword_1ED844130)
      {
        LODWORD(v823[0]) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v89 = 0;
        v88 = v708;
        v86 = v697;
        v53 = v717;
      }

      else
      {
        v89 = 0;
      }
    }

    else
    {
      v89 = 8;
    }

    v90 = *(v88 + 256);
  }

  else
  {
    v88 = 0;
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:v84 graph:? renderDelegate:? fastModeSwitch:? rtscProcessorsBySourceDeviceType:? inferenceScheduler:?];
    v90 = 0;
    v89 = 8;
  }

  v690 = csp_projectorModeFromPointCloudDataConnectionConfigurations(v90);
  v734 = csp_cinematicVideoEnabled(v88);
  v91 = [v86 sensorCropDimensions];
  if (v91 < 1 || SHIDWORD(v91) < 1)
  {
    v92 = [v86 sensorDimensions];
  }

  else
  {
    v92 = [v86 sensorCropDimensions];
  }

  v93 = v92;
  v94 = [v86 horizontalSensorBinningFactor];
  v95 = [v86 verticalSensorBinningFactor];
  v96 = v682 / v736;
  v97 = v96 >= 1.0 && (v96 - (((v93 * v94) / SHIDWORD(v93)) * v95)) > 0.01;
  if (v708)
  {
    v98 = *(v708 + 208);
  }

  else
  {
    v98 = 0;
  }

  v99 = [FigVideoCaptureConnectionConfiguration videoStabilizationMethods:v98 includeIris:1];
  v723 = csp_stabilizationMethodWithMostOverscan(v99);
  v100 = [v697 isDynamicAspectRatioSupported];
  if (!v97)
  {
    goto LABEL_162;
  }

  v101 = v100;
  if (v734 & 1 | (([objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")] & 1) == 0))
  {
    goto LABEL_162;
  }

  v102 = v708;
  if (v708 && *(v708 + 24) == 1)
  {
    v103 = 0;
    v104 = *(v84 + 456);
LABEL_164:
    v714 = v103;
    v701 = *(v102 + 168);
    v698 = *(v102 + 129);
    v702 = *(v102 + 140);
    v704 = *(v102 + 141);
    v686 = *(v102 + 130);
    v106 = *(v102 + 224);
    goto LABEL_165;
  }

  if ([v53 cinematicFramingEnabled] & 1) != 0 || (objc_msgSend(v53, "manualCinematicFramingEnabled") & 1) != 0 || (objc_msgSend(v53, "deskCamEnabled"))
  {
LABEL_162:
    v103 = 0;
    v102 = v708;
  }

  else
  {
    v102 = v708;
    if (v682 == 3840 && v736 == 2160 || (v103 = 0, v682 == 2160) && v736 == 3840)
    {
      v371 = csp_enableAdaptiveOverscanByVideoStabilizationMethods(v99);
      v102 = v708;
      v103 = v371 & (v101 ^ 1);
    }
  }

  v104 = *(v84 + 456);
  if (v102)
  {
    goto LABEL_164;
  }

  v714 = v103;
  v686 = 0;
  v702 = 0;
  v701 = 0;
  v698 = 0;
  v704 = 0;
  v106 = 0;
LABEL_165:
  v107 = v102;
  v108 = *(v84 + 496);
  v725 = [objc_msgSend(v106 "depthDataSinkConfiguration")];
  if (v107)
  {
    v728 = *(v107 + 24);
    v109 = *(v107 + 176);
  }

  else
  {
    v728 = 0;
    v109 = 0;
  }

  *&v841 = 0;
  v110 = [v109 source];
  v598 = *MEMORY[0x1E695E480];
  v111 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v111)
  {
    v111(v110, @"AttributesDictionary", v598, &v841);
    v112 = v841;
  }

  else
  {
    v112 = 0;
  }

  v113 = v112;
  v593 = v89;
  v710 = [objc_msgSend(v841 objectForKeyedSubscript:{@"VideoZoomSmoothingSupported", "BOOLValue"}];
  v694 = v108;
  if (v708)
  {
    v720 = *(v708 + 143);
    v670 = *(v708 + 312);
    v114 = *(v708 + 304);
    LOBYTE(v667) = *(v708 + 302);
    v115 = *(v708 + 36);
    v731 = *(v708 + 354);
    HIDWORD(v667) = *(v708 + 144);
    v674 = *(v84 + 584);
    v676 = *(v708 + 336);
    v683 = *(v708 + 344);
    v672 = *(v708 + 300);
    v711 = *(v708 + 357);
    v706 = *(v708 + 28) > 2;
    v678 = *(v708 + 358);
  }

  else
  {
    v672 = 0;
    v706 = 0;
    v667 = 0;
    v720 = 0;
    v670 = 0;
    v731 = 0;
    v676 = 0;
    v683 = 0;
    v711 = 0;
    v678 = 0;
    v674 = *(v84 + 584);
    v115 = 0;
    v114 = 0;
  }

  v840 = 0;
  v116 = [v53 requiredFormat];
  v755 = [MEMORY[0x1E695DF90] dictionary];
  v836 = 0u;
  v837 = 0u;
  v838 = 0u;
  v839 = 0u;
  v741 = v104;
  obja = [v104 captureStreams];
  v117 = [obja countByEnumeratingWithState:&v836 objects:&v841 count:16];
  v760 = v116;
  if (v117)
  {
    v118 = v117;
    v749 = *v837;
    do
    {
      for (j = 0; j != v118; ++j)
      {
        if (*v837 != v749)
        {
          objc_enumerationMutation(obja);
        }

        v120 = *(*(&v836 + 1) + 8 * j);
        v121 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType([v53 source], v116, objc_msgSend(v120, "portType"), &v840);
        v122 = v840;
        if (v840)
        {
          goto LABEL_607;
        }

        if (v121)
        {
          v123 = v121;
        }

        else
        {
          v123 = v116;
        }

        v124 = [MEMORY[0x1E695DFA8] set];
        v832 = 0u;
        v833 = 0u;
        v834 = 0u;
        v835 = 0u;
        v125 = [v123 highResStillImageDimensions];
        v126 = [v125 countByEnumeratingWithState:&v832 objects:&v828 count:16];
        if (v126)
        {
          v127 = v126;
          v128 = *v833;
          do
          {
            for (k = 0; k != v127; ++k)
            {
              if (*v833 != v128)
              {
                objc_enumerationMutation(v125);
              }

              v130 = MEMORY[0x1E696AD98];
              v131 = [*(*(&v832 + 1) + 8 * k) flavor];
              v132 = v130;
              v87 = 0x1E696A000;
              [v124 addObject:{objc_msgSend(v132, "numberWithInt:", v131)}];
            }

            v127 = [v125 countByEnumeratingWithState:&v832 objects:&v828 count:16];
          }

          while (v127);
        }

        [v755 setObject:objc_msgSend(v124 forKeyedSubscript:{"allObjects"), objc_msgSend(v120, "portType")}];
        if (v121)
        {
          CFRelease(v121);
        }

        v53 = v717;
        v116 = v760;
      }

      v118 = [obja countByEnumeratingWithState:&v836 objects:&v841 count:16];
    }

    while (v118);
  }

  v133 = [v53 depthDataDeliveryEnabled];
  if (v689 == 3)
  {
    v134 = 0;
  }

  else
  {
    v134 = v133;
  }

  v135 = 0;
  if (v134 == 1)
  {
    [v53 depthDataMaxFrameRate];
    v135 = v136;
  }

  v137 = [v116 isStereoFusionSupported];
  v138 = v134 ^ 1;
  v750 = [objc_msgSend(v692 "irisSinkConfiguration")];
  if ([v688 previewDepthFilterRenderingEnabled])
  {
    v139 = [v688 portraitAutoSuggestEnabled] ^ 1;
  }

  else
  {
    v139 = 0;
  }

  [v741 setStillImageSupportedHighResolutionFlavorsByPortType:v755];
  [v741 setStillImageEnhancedResByMaintainingSensorResolutionSupported:{objc_msgSend(v760, "stillImageEnhancedResByMaintainingSensorResolutionSupported")}];
  [v741 setStereoFusionEnabled:v137 & v138];
  [v741 setBravoConstituentPhotoDeliveryEnabled:v750];
  [v741 setDepthDataDeliveryEnabled:v134];
  [v741 setShallowDepthOfFieldEffectEnabled:v139];
  [v741 setWideDigitalFlashAvailableShallowDepthOfFieldEffectsEnabled:{objc_msgSend(v760, "isWideDigitalFlashAvailableShallowDepthOfFieldEffectsEnabled")}];
  [v741 setPortraitAutoSuggestEnabled:{objc_msgSend(v688, "portraitAutoSuggestEnabled")}];
  LODWORD(v140) = v115;
  [v741 setMaxContinuousZoomFactorForDepthDataDelivery:v140];
  [v741 setStillImageISPMultiBandNoiseReductionEnabled:{objc_msgSend(v760, "isStillImageISPMultiBandNoiseReductionSupported")}];
  [v741 setStillImageFocusPixelDataCaptureWithDepthEnabled:v645[1] != 0];
  [v741 setStillImageSashimiRawCaptureWithDepthEnabled:v645[0] != 0];
  [v741 setFocusPixelsEnabled:{objc_msgSend(v760, "autoFocusSystem") == 2}];
  [v741 setRedEyeReductionEnabled:{objc_msgSend(v760, "redEyeReductionVersion") > 0}];
  if (v728)
  {
    v141 = [objc_msgSend(v760 "actionCameraCompanionFormat")];
    [v760 maxVisibleSensorRect];
    v143 = v142;
    v145 = v144;
    v147 = v146;
    v149 = v148;
    [v760 sensorDimensions];
    [v760 sensorDimensions];
    FigCaptureMetadataUtilitiesNormalizeCropRect(v143, v145, v147, v149);
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v150, v151, v152, v153);
    v155 = v154;
    v157 = v156;
    v159 = v158;
    v161 = v160;
  }

  else
  {
    [v760 maxVisibleSensorRect];
    v155 = v162;
    v157 = v163;
    v159 = v164;
    v161 = v165;
    v141 = [v760 sensorDimensions];
  }

  [v741 setSensorRegionOfInterestForCameraControls:v141 forSensorDimensions:{v155, v157, v159, v161}];
  [v741 setWideAsStatisticsPrimaryPreferred:{objc_msgSend(v760, "isWideAsStatisticsPrimaryEnabled")}];
  [v741 setAwbStatisticsAveragingEnabled:{objc_msgSend(v760, "isAWBStatisticsAveragingEnabled")}];
  [v741 setSmartCameraEnabled:{objc_msgSend(v717, "smartCameraEnabled")}];
  [v741 setFullBinSIFROnSecondaryCameraAllowed:{objc_msgSend(v760, "fullBinSIFROnSecondaryCameraAllowed")}];
  v166 = [MEMORY[0x1E695DF90] dictionary];
  v824 = 0u;
  v825 = 0u;
  v826 = 0u;
  v827 = 0u;
  v167 = [v741 captureStreams];
  v168 = [v167 countByEnumeratingWithState:&v824 objects:v823 count:16];
  if (v168)
  {
    v169 = v168;
    v170 = *v825;
    do
    {
      for (m = 0; m != v169; ++m)
      {
        if (*v825 != v170)
        {
          objc_enumerationMutation(v167);
        }

        v172 = *(*(&v824 + 1) + 8 * m);
        v173 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType([v717 source], objc_msgSend(v717, "requiredFormat"), objc_msgSend(v172, "portType"), &v840);
        v87 = 0x1E696A000uLL;
        v174 = MEMORY[0x1E696AD98];
        [v173 sensorOrientation];
        [v166 setObject:objc_msgSend(v174 forKeyedSubscript:{"numberWithFloat:"), objc_msgSend(v172, "portType")}];
      }

      v169 = [v167 countByEnumeratingWithState:&v824 objects:v823 count:16];
    }

    while (v169);
  }

  v175 = v741;
  [v741 setSensorOrientationByPortType:v166];
  [v741 setAttachesUprightExifOrientationMetadataToStreamingFrames:0];
  [v741 setStereoVideoCaptureEnabled:v731 & 1];
  if (v731)
  {
    [v741 setAwbStatisticsAveragingEnabled:FigCapturePlatformIdentifier() > 11];
  }

  v176 = v717;
  [v741 setCinematicFramingSupported:{objc_msgSend(v717, "isCinematicFramingSupported")}];
  [v741 setCinematicFramingEnabled:{objc_msgSend(v717, "cinematicFramingEnabled")}];
  [v741 setManualCinematicFramingEnabled:{objc_msgSend(v717, "manualCinematicFramingEnabled")}];
  v177 = v719;
  if (([v741 manualCinematicFramingEnabled] & 1) != 0 || objc_msgSend(v741, "isCMIOZoomStreamPropertySupported"))
  {
    v178 = [v741 zoomCommandHandler];
    LODWORD(v179) = 1.0;
    [v178 setRequestedZoomFactor:v179];
  }

  [v741 setCinematicFramingControlMode:{objc_msgSend(v717, "cinematicFramingControlMode")}];
  [v741 setSmartCropSupported:{objc_msgSend(objc_msgSend(v717, "requiredFormat"), "isSmartCropSupported")}];
  [v741 setBackgroundBlurSupported:{objc_msgSend(v717, "isBackgroundBlurSupported")}];
  [v741 setBackgroundBlurEnabled:{objc_msgSend(v717, "backgroundBlurEnabled")}];
  [v741 setStudioLightingSupported:{objc_msgSend(v717, "isStudioLightingSupported")}];
  [v741 setStudioLightingEnabled:{objc_msgSend(v717, "studioLightingEnabled")}];
  [v741 setReactionEffectsSupported:{objc_msgSend(v717, "reactionEffectsSupported")}];
  [v741 setReactionEffectsEnabled:{objc_msgSend(v717, "reactionEffectsEnabled")}];
  [v741 setBackgroundReplacementSupported:{objc_msgSend(v717, "isBackgroundReplacementSupported")}];
  [v741 setBackgroundReplacementEnabled:{objc_msgSend(v717, "backgroundReplacementEnabled")}];
  [v741 setFaceDrivenAEAFEnabledByDefault:{objc_msgSend(v717, "faceDrivenAEAFEnabledByDefault")}];
  [v741 setPhotoFormat:objc_msgSend(v760, "isPhotoFormat")];
  [v741 setSmartFramingEnabled:{objc_msgSend(v760, "isSmartFramingSupported")}];
  [v741 setSmartFramingRequiresSceneMonitoring:{objc_msgSend(v741, "smartFramingEnabled")}];
  if ([v717 nonDestructiveCropEnabled])
  {
    [v717 normalizedNonDestructiveCropSize];
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v846);
    v181 = [v717 source];
    v182 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v182)
    {
      v182(v181, @"NonDestructiveCropSize", DictionaryRepresentation);
    }

    CFRelease(DictionaryRepresentation);
    v175 = v741;
  }

  v183 = [v717 source];
  if (v183)
  {
    v184 = v183;
    if (([v717 hasSetVideoZoomFactorOnCaptureSource] & 1) == 0)
    {
      v185 = *(v87 + 3480);
      [v717 videoZoomFactor];
      v840 = FigVideoCaptureSourceSetSessionProperty(v184, v741, @"VideoZoomFactor", [v185 numberWithFloat:?]);
      if (v840)
      {
        [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
        goto LABEL_285;
      }

      [v717 setHasSetVideoZoomFactorOnCaptureSource:1];
    }

    if (([v717 hasSetSimulatedApertureOnCaptureSource] & 1) == 0)
    {
      v186 = *(v87 + 3480);
      [v717 simulatedAperture];
      v840 = FigVideoCaptureSourceSetSessionProperty(v184, v741, @"SimulatedAperture", [v186 numberWithFloat:?]);
      if (v840)
      {
        [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
        goto LABEL_285;
      }

      [v717 setHasSetSimulatedApertureOnCaptureSource:1];
    }

    if ([v741 isBravoVariant])
    {
      v840 = FigVideoCaptureSourceSetSessionProperty(v184, v741, @"EligibleFallbackCaptureSourceDeviceTypes", [v717 fallbackPrimaryConstituentDeviceTypes]);
      if (v840)
      {
        [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
        goto LABEL_285;
      }
    }

    v840 = FigVideoCaptureSourceSetSessionProperty(v184, v741, @"ActiveFormat_FigCaptureSessionOnly", v760);
    if (v840)
    {
      [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
      goto LABEL_285;
    }

    v187 = [v717 requiredMaxFrameRate];
    v189 = FigCaptureFrameRateAsData(v187, v188);
    v840 = FigVideoCaptureSourceSetSessionProperty(v184, v741, @"ActiveMaxFrameRate_FigCaptureSessionOnly", v189);
    if (v840)
    {
      [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
      goto LABEL_285;
    }

    v190 = [v717 requiredMinFrameRate];
    v192 = FigCaptureFrameRateAsData(v190, v191);
    v840 = FigVideoCaptureSourceSetSessionProperty(v184, v741, @"ActiveMinFrameRate_FigCaptureSessionOnly", v192);
    if (v840)
    {
      [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
      goto LABEL_285;
    }

    LODWORD(v193) = v135;
    v840 = FigVideoCaptureSourceSetSessionProperty(v184, v741, @"ActiveDepthDataMaxFrameRate", [*(v87 + 3480) numberWithFloat:v193]);
    if (v840)
    {
      [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
      goto LABEL_285;
    }

    v194 = *(v87 + 3480);
    v195 = [v717 faceDrivenAEAFMode];
    v196 = v194;
    v175 = v741;
    v840 = FigVideoCaptureSourceSetSessionProperty(v184, v741, @"FaceDrivenAEAFMode", [v196 numberWithInt:v195]);
    if (v840)
    {
      [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
      goto LABEL_285;
    }
  }

  [v175 setAutoImageControlMode:v701];
  if (v698)
  {
    v197 = 4;
  }

  else
  {
    v197 = 1;
  }

  [v175 setZeroShutterLagEnabled:v698 & 1];
  [v175 setZeroShutterLagTimeMachineBufferCapacity:v197];
  [v175 setMemoryPool:v694];
  [v175 setOverCaptureEnabled:v685];
  *&v198 = v49;
  [v175 setOverCapturePercentage:v198];
  [v175 setAllocateResourcesCompatibleWithOverCapture:v702 & 1];
  v199 = [objc_msgSend(v692 "irisSinkConfiguration")];
  [v175 setDigitalFlashMetadataEnabled:(v704 | v199) & 1];
  if (v199)
  {
    v200 = [v760 digitalFlashDetectedObjectTypes];
  }

  else
  {
    v200 = 0;
  }

  [v175 setDigitalFlashDetectedObjectTypes:v200];
  [v175 setMomentCaptureVideoRecordingSupported:{objc_msgSend(objc_msgSend(v692, "irisSinkConfiguration"), "momentCaptureMovieRecordingEnabled")}];
  v201 = v175;
  v202 = [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
  v203 = csp_variableFrameRateVideoEnabled(v717);
  [v201 setVariableFrameRateControlEnabled:v203 & (v202 ^ 1)];
  v822 = 0u;
  v821 = 0u;
  v820 = 0u;
  v819 = 0u;
  v204 = [v201 captureStreams];
  v205 = [v204 countByEnumeratingWithState:&v819 objects:type count:16];
  if (v205)
  {
    v206 = v205;
    v207 = *v820;
    do
    {
      for (n = 0; n != v206; ++n)
      {
        if (*v820 != v207)
        {
          objc_enumerationMutation(v204);
        }

        [*(*(&v819 + 1) + 8 * n) setVariableFrameRateVideoEnabled:v203];
      }

      v206 = [v204 countByEnumeratingWithState:&v819 objects:type count:16];
    }

    while (v206);
  }

  [v741 setTeleAutoVideoFrameRateAllows24FPS:{objc_msgSend(objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider, "sharedCaptureSourceBackingsProvider"), "commonSettings"), "teleAutoVideoFrameRateAllows24FPS")}];
  [v741 setCinematicVideoEnabled:v734];
  [v741 setDepthType:v689];
  [v741 setMaxOverscanVideoStabilizationMethod:v723];
  v176 = v717;
  [v741 setVideoStabilizationStrength:{objc_msgSend(v717, "videoStabilizationStrength")}];
  [v741 setConfiguresStreamingImageIntentForActionCamera:v706];
  if (v723 == 5)
  {
    [v760 stabilizationOverscanPercentageOverrideForCinematicExtendedEnhanced];
    if (v209 == 0.0)
    {
      v211 = 0;
    }

    else
    {
      [v760 stabilizationOverscanPercentageOverrideForCinematicExtendedEnhanced];
      v211 = v210 < 28.0;
    }

    [v741 setVideoStabilizationModeUsesReducedOverscan:v211];
  }

  [v741 setAdaptiveOverscanEnabled:v714];
  [v741 setOptimizesZoomRampsForVISZoomSmoothing:v710];
  v212 = [v760 temporalNoiseReductionMode] >= 1 && objc_msgSend(v717, "imageControlMode") != 4;
  [v741 setTemporalNoiseReductionEnabled:v212];
  if ([v741 cinematicVideoEnabled])
  {
    v213 = v682 == 3840 && v736 == 2160 || v682 == 2160 && v736 == 3840;
  }

  else
  {
    v213 = 0;
  }

  if (FigCapturePlatformIdentifier() < 9)
  {
    v215 = 1;
  }

  else
  {
    v215 = v138;
  }

  if (v212 & (v213 | v215) && (v213 | [v741 cinematicVideoEnabled] ^ 1) == 1)
  {
    v216 = v741;
    [v741 setTemporalNoiseReductionBand0Disabled:{objc_msgSend(v760, "temporalNoiseReductionBand0Disabled")}];
    v217 = [v760 temporalNoiseReductionRawEnabled];
  }

  else
  {
    v216 = v741;
    [v741 setTemporalNoiseReductionBand0Disabled:0];
    v217 = 0;
  }

  [v216 setTemporalNoiseReductionRawEnabled:v217];
  [v216 setTemporalNoiseReductionStrengthHighEnabled:v711 & 1];
  [v216 setDepthFormatDimensions:{objc_msgSend(objc_msgSend(v717, "depthDataFormat"), "dimensions")}];
  [v216 setDepthPixelFormat:objc_msgSend(objc_msgSend(v717, "depthDataFormat"), "format")];
  [v216 setDepthFilteringEnabled:v725];
  [v216 setTimeOfFlightProjectorMode:v690];
  [v216 setAllocateResourcesCompatibleWithDepthDataDelivery:v720 & 1];
  v218 = [objc_msgSend(v688 "videoPreviewSinkConfiguration")];
  v219 = 0.0;
  v220 = 0;
  if (v218)
  {
    *&v219 = FigVideoCaptureSourceUIBaseZoomFactor([v717 source], &v840);
    if (v840)
    {
      [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
      goto LABEL_285;
    }

    v220 = LODWORD(v219);
    LODWORD(v219) = v114;
  }

  [v216 setZoomPIPMinimumUIZoomFactor:v219];
  [v216 setZoomPIPSingleStreamModeEnabled:v667 & 1];
  LODWORD(v221) = v220;
  [v216 setUiBaseZoomFactor:v221];
  v222 = [objc_msgSend(v216 "captureStreams")];
  if (((v686 & HIDWORD(v667) | v720) & [v216 isBravoVariant]) != 0)
  {
    v223 = 2;
  }

  else
  {
    v223 = 1;
  }

  if (v750)
  {
    v224 = v222;
  }

  else
  {
    v224 = v223;
  }

  [v216 setNumberOfActiveTimeMachines:v224];
  [v216 setPreferredMasterPortType:v670];
  [v216 setStreamingSessionAnalyticsPixelFormat:objc_msgSend(v760, "format")];
  [v216 setStreamingSessionAnalyticsVideoDimensions:{objc_msgSend(v760, "dimensions")}];
  [v216 setStreamingSessionAnalyticsHighlightRecoveryEnabled:{objc_msgSend(v717, "highlightRecoveryEnabled")}];
  [v216 setStreamingSessionAnalyticsClientIsVOIP:v672 & 1];
  [v216 setTrueVideoCaptureEnabled:v674 & 1];
  [v216 setRebuildingGraphForTrueVideoTransition:v676 & 1];
  [v216 setTargetFrameRateWhenNotRecording:v683];
  [v216 setFrameSkippingWhenNotRecordingEnabled:v683 > 0];
  [v216 setStreamingSessionAnalyticsMixWithOthersEnabled:v678 & 1];
  if ([v717 outputAspectRatio])
  {
    if (([v760 isDynamicAspectRatioSupported] & 1) == 0)
    {
      [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
      v122 = -12780;
LABEL_607:
      v817 = v122;
LABEL_608:
      [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
      goto LABEL_609;
    }

    [v216 setAspectRatio:{objc_msgSend(v717, "outputAspectRatio")}];
  }

  [v216 setOutputAspectRatioSupported:{objc_msgSend(v760, "isDynamicAspectRatioSupported")}];
LABEL_285:
  v817 = v840;
  if (v840)
  {
    goto LABEL_608;
  }

  v815 = 0u;
  v814 = 0u;
  v813 = 0u;
  v812 = 0u;
  v627 = [*(v718 + 456) captureStreams];
  v648 = [v627 countByEnumeratingWithState:&v812 objects:v811 count:16];
  if (!v648)
  {
    v620 = 0;
    v605 = 0;
    goto LABEL_503;
  }

  v620 = 0;
  v605 = 0;
  v662 = *v813;
  v643 = *off_1E798A0E8;
  v599 = (v658 != 0) | v646;
  v641 = *off_1E798A0C0;
  v677 = *off_1E798A0D8;
  v621 = *off_1E798A0D0;
  v695 = *off_1E798ACB8;
  v626 = v664 & 1;
  v684 = *off_1E798ACB0;
  v625 = v666 & 1;
  v642 = *off_1E798ACD0;
  v611 = *off_1E798ACC8;
  v600 = *off_1E798B220;
  v601 = *off_1E798A3C8;
  v624 = *off_1E798AC98;
  v623 = *off_1E798ACA8;
  v603 = *off_1E798AC90;
  v604 = *off_1E798ACA0;
  v602 = *off_1E798ACE0;
  v225 = &selRef__waitForPreviewGenerationGroupToComplete;
  do
  {
    v226 = 0;
    v628 = v225[148];
    do
    {
      if (*v813 != v662)
      {
        v227 = v226;
        objc_enumerationMutation(v627);
        v226 = v227;
      }

      v691 = v226;
      v228 = *(*(&v812 + 1) + 8 * v226);
      v229 = [v228 portType];
      v230 = [v176 sourceDeviceType];
      if (v230 == 12 || v230 == 6) && ([v229 isEqualToString:v643])
      {
        v620 = v228;
        goto LABEL_473;
      }

      v705 = v229;
      v231 = BWUtilitiesUnderlyingDeviceTypeFromPortType(v229, [v176 sourceDeviceType]);
      v232 = [v176 sourceDeviceType];
      if (v232 == 6 || v232 == 12 || [v176 sourceDeviceType] == 13)
      {
        v231 = [v176 sourceDeviceType];
      }

      if ([v176 sourceDeviceType] == 14)
      {
        v231 = [v176 sourceDeviceType];
      }

      v699 = v228;
      if ([v176 sourceDeviceType] - 17 <= 3)
      {
        v231 = [v176 sourceDeviceType];
      }

      v233 = FigCaptureConnectionConfigurationsFilterWithBlock(v696, &__block_literal_global_69);
      v234 = FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v233);
      v235 = FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v693);
      v703 = v231;
      if ([v234 containsObject:{objc_msgSend(*(v87 + 3480), "numberWithInt:", v231)}])
      {
        v236 = 1;
LABEL_311:
        v238 = v692;
        v239 = v688;
        v240 = v705;
        goto LABEL_312;
      }

      v237 = [v235 containsObject:{objc_msgSend(*(v87 + 3480), "numberWithInt:", v231)}];
      if (v689 == 3)
      {
        v236 = 1;
      }

      else
      {
        v236 = v237;
      }

      if (!v708)
      {
        goto LABEL_311;
      }

      v238 = v692;
      v239 = v688;
      v240 = v705;
      if ((v236 & 1) == 0)
      {
        v236 = *(v708 + 354);
      }

LABEL_312:
      v242 = 0;
      if ([objc_msgSend(v239 "videoPreviewSinkConfiguration")])
      {
        v243 = [v240 isEqualToString:v641];
        if (v708 && v243)
        {
          v244 = v236 | v685;
          v236 = *(v708 + 302) ^ 1;
          if ((v244 & 1) == 0 && (*(v708 + 302) & 1) == 0)
          {
            v242 = *(v708 + 308);
          }
        }

        else
        {
          v236 |= v243;
        }
      }

      LODWORD(v241) = v242;
      [v699 setStreamingFrameRateForZoomPIPOverlay:v241];
      v245 = [v176 sourceDeviceType];
      *&v841 = MEMORY[0x1E69E9820];
      *(&v841 + 1) = 3221225472;
      v842 = __csp_filterConnectionConfigurationsForSourceDeviceTypes_block_invoke;
      v843 = &__block_descriptor_40_e60_B24__0__FigCaptureConnectionConfiguration_8__NSDictionary_16l;
      v844 = v231;
      v845 = v245;
      v675 = [v693 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &v841)}];
      v246 = [v176 sourceDeviceType];
      if ([v238 underlyingDeviceType] != v231 && objc_msgSend(v238, "underlyingDeviceType") != v246)
      {
        v238 = 0;
      }

      v687 = v238;
      v247 = [v176 sourceDeviceType];
      *&v841 = MEMORY[0x1E69E9820];
      *(&v841 + 1) = 3221225472;
      v842 = __csp_filterConnectionConfigurationsForSourceDeviceTypes_block_invoke;
      v843 = &__block_descriptor_40_e60_B24__0__FigCaptureConnectionConfiguration_8__NSDictionary_16l;
      v844 = v231;
      v845 = v247;
      v673 = [v696 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &v841)}];
      if (v708)
      {
        v671 = FigCaptureConnectionConfigurationWithUnderlyingDeviceType(*(v708 + 232), v231);
        v248 = *(v708 + 240);
      }

      else
      {
        v671 = FigCaptureConnectionConfigurationWithUnderlyingDeviceType(0, v231);
        v248 = 0;
      }

      v249 = [v176 sourceDeviceType];
      *&v841 = MEMORY[0x1E69E9820];
      *(&v841 + 1) = 3221225472;
      v842 = __csp_filterConnectionConfigurationsForSourceDeviceTypes_block_invoke;
      v843 = &__block_descriptor_40_e60_B24__0__FigCaptureConnectionConfiguration_8__NSDictionary_16l;
      v844 = v231;
      v845 = v249;
      v712 = [v248 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &v841)}];
      if (v708)
      {
        v250 = *(v708 + 248);
      }

      else
      {
        v250 = 0;
      }

      v251 = [v176 sourceDeviceType];
      *&v841 = MEMORY[0x1E69E9820];
      *(&v841 + 1) = 3221225472;
      v842 = __csp_filterConnectionConfigurationsForSourceDeviceTypes_block_invoke;
      v843 = &__block_descriptor_40_e60_B24__0__FigCaptureConnectionConfiguration_8__NSDictionary_16l;
      v844 = v231;
      v845 = v251;
      v715 = [v250 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &v841)}];
      v252 = [[BWMultiStreamCameraSourceNode alloc] initWithCaptureDevice:*(v718 + 456) captureStream:v699];
      if (!v252)
      {
        [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:? graph:? renderDelegate:? fastModeSwitch:? rtscProcessorsBySourceDeviceType:? inferenceScheduler:?];
        goto LABEL_609;
      }

      v669 = v236;
      v254 = v252;
      -[BWNode setName:](v252, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Camera", BWPortTypeToDisplayString(v705, v253)]);
      v707 = v254;
      [*(v718 + 64) addObject:v254];
      if (![v705 isEqualToString:v677] || (v255 = &OBJC_IVAR___FigCaptureCameraSourcePipeline__telephotoSourceNode, objc_msgSend(objc_msgSend(*(v718 + 456), "captureStreams"), "count") <= 1))
      {
        if (![v705 isEqualToString:v621] || (v255 = &OBJC_IVAR___FigCaptureCameraSourcePipeline__superWideSourceNode, objc_msgSend(objc_msgSend(*(v718 + 456), "captureStreams"), "count") <= 1))
        {
          v255 = &OBJC_IVAR___FigCaptureCameraSourcePipeline__sourceNode;
        }
      }

      *(v718 + *v255) = v254;
      if (((v644 | v681) & 1) == 0)
      {
        v256 = v705;
        if (v708 && (*(v708 + 166) & 1) != 0)
        {
          LOBYTE(v668) = 0;
          v257 = 1;
LABEL_340:
          v679 = v257;
          goto LABEL_341;
        }

        if (v254 != *(v718 + 72))
        {
          LOBYTE(v668) = 0;
          v257 = (v254 == *(v718 + 80)) & v599;
          goto LABEL_340;
        }

        if (*v680 && [*(v718 + 456) pearlInfraredCaptureStream])
        {
          v345 = 1;
          v679 = (v658 != 0) | v646;
          goto LABEL_484;
        }

        if ([objc_msgSend(v238 "irisSinkConfiguration")])
        {
          v345 = [objc_msgSend(*(v718 + 456) "captureStreams")] == 1;
          if ((v345 | *v680 ^ 1))
          {
            v679 = 0;
LABEL_483:
            if (*v680)
            {
LABEL_484:
              v679 |= [v176 sourceDeviceType] == 13;
            }

LABEL_486:
            if ([objc_msgSend(v238 "irisSinkConfiguration")])
            {
              v345 |= [objc_msgSend(v238 "irisSinkConfiguration")];
            }

            v668 = [objc_msgSend(v238 "irisSinkConfiguration")] | v345;
            goto LABEL_334;
          }
        }

        else if (!*v680)
        {
          v345 = 0;
          v679 = 0;
          goto LABEL_486;
        }

        v345 = 0;
        v679 = ([*(v718 + 456) bravoSuperWideCaptureStream] != 0) & v599;
        goto LABEL_483;
      }

      LOBYTE(v668) = 1;
      v679 = 1;
LABEL_334:
      v256 = v705;
LABEL_341:
      if ([*(v718 + 456) bravoTelephotoCaptureStream] && (objc_msgSend(v256, "isEqualToString:", v677) & 1) != 0)
      {
        v258 = v689;
        v259 = v689;
        goto LABEL_350;
      }

      if (![*(v718 + 456) bravoSuperWideCaptureStream])
      {
        v259 = 0;
        goto LABEL_353;
      }

      v260 = [v256 isEqualToString:v641];
      if (v260)
      {
        v259 = v689;
      }

      else
      {
        v259 = 0;
      }

      if (v260)
      {
        v258 = v689;
LABEL_350:
        if (v689 - 1 < 2)
        {
          goto LABEL_356;
        }
      }

LABEL_353:
      if (([*(v718 + 456) isBravoVariant] & 1) == 0)
      {
        v258 = v259;
LABEL_356:
        if (v708)
        {
          BYTE4(v665) = *(v708 + 165);
          LOBYTE(v665) = *(v708 + 122);
        }

        else
        {
          v665 = 0;
        }

        v259 = v258;
        goto LABEL_359;
      }

      v665 = 0;
LABEL_359:
      v663 = v259;
      v261 = [MEMORY[0x1E695DFA8] set];
      v807 = 0u;
      v808 = 0u;
      v809 = 0u;
      v810 = 0u;
      v726 = [v712 countByEnumeratingWithState:&v807 objects:v806 count:16];
      v724 = v261;
      if (v726)
      {
        v262 = 0;
        v263 = 0;
        v264 = 0;
        v761 = 0;
        v756 = 0;
        v729 = 0;
        v742 = 0;
        v751 = 0;
        objb = 0;
        v721 = *v808;
        v265 = -1.0;
        v266 = 0.0;
        v267 = 0.0;
        v268 = 0.0;
        while (2)
        {
          for (ii = 0; ii != v726; ++ii)
          {
            if (*v808 != v721)
            {
              objc_enumerationMutation(v712);
            }

            v270 = *(*(&v807 + 1) + 8 * ii);
            FigCaptureAddDetectedObjectTypesFromMetadataIdentifiersToSet([v270 metadataIdentifiers], v261);
            v271 = [v270 attentionDetectionEnabled];
            v272 = FigCaptureMetadataObjectConfigurationRequiresEyeReliefStatus(v270);
            if (FigCaptureMetadataObjectConfigurationRequiresFaceTracking(v270))
            {
              BoolAttribute = FigCaptureSourceGetBoolAttribute([objc_msgSend(v270 "sourceConfiguration")], 0x1F219FFF0, &v817);
            }

            else
            {
              BoolAttribute = 0;
            }

            if (v729 <= [v270 faceTrackingMaxFaces])
            {
              v729 = [v270 faceTrackingMaxFaces];
            }

            [v270 faceTrackingNetworkFailureThresholdMultiplier];
            if (v268 <= v274)
            {
              [v270 faceTrackingNetworkFailureThresholdMultiplier];
              v268 = v275;
            }

            [v270 faceTrackingFailureFieldOfViewModifier];
            if (v265 <= v276)
            {
              [v270 faceTrackingFailureFieldOfViewModifier];
              v265 = v277;
            }

            if (v817)
            {
              [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
              goto LABEL_609;
            }

            v732 = v264;
            v735 = v263;
            v737 = v262;
            [v270 objectDetectionTargetFrameRate];
            if (v267 <= v278)
            {
              [v270 objectDetectionTargetFrameRate];
              v267 = v279;
            }

            v280 = FigCaptureMetadataObjectConfigurationRequiresFaceIDReadiness(v270);
            v281 = [v270 periocularForFaceIDReadinessEnabled];
            v282 = [v270 attentionForFaceIDReadinessRequired];
            v283 = [v270 faceOcclusionDetectionEnabled];
            v284 = FigCaptureMetadataObjectConfigurationRequiresMotionToWake(v270);
            [v270 motionToWakeTargetFrameRate];
            if (v266 <= v285)
            {
              [v270 motionToWakeTargetFrameRate];
              v266 = v286;
            }

            objb |= v271;
            v751 |= v272;
            v742 = BoolAttribute | v742 & 1;
            v756 |= v280;
            v761 |= v281;
            v264 = v732 | v282;
            v263 = v735 | v283;
            v262 = v737 | v284;
            v261 = v724;
          }

          v726 = [v712 countByEnumeratingWithState:&v807 objects:v806 count:16];
          if (v726)
          {
            continue;
          }

          break;
        }

        v738 = v262;
        v177 = v719;
        v176 = v717;
        v239 = v688;
      }

      else
      {
        v738 = 0;
        LOBYTE(v263) = 0;
        LOBYTE(v264) = 0;
        v761 = 0;
        v756 = 0;
        v729 = 0;
        v742 = 0;
        v751 = 0;
        objb = 0;
        v265 = -1.0;
        v266 = 0.0;
        v267 = 0.0;
        v268 = 0.0;
      }

      v805 = 0u;
      v804 = 0u;
      v803 = 0u;
      v802 = 0u;
      v287 = [v715 countByEnumeratingWithState:&v802 objects:v801 count:16];
      if (v287)
      {
        v288 = v287;
        v289 = *v803;
        do
        {
          for (jj = 0; jj != v288; ++jj)
          {
            if (*v803 != v289)
            {
              objc_enumerationMutation(v715);
            }

            Identifiers = CMMetadataFormatDescriptionGetIdentifiers([*(*(&v802 + 1) + 8 * jj) formatDescription]);
            FigCaptureAddDetectedObjectTypesFromMetadataIdentifiersToSet(Identifiers, v261);
          }

          v288 = [v715 countByEnumeratingWithState:&v802 objects:v801 count:16];
        }

        while (v288);
      }

      v292 = [v697 digitalFlashDetectedObjectTypes];
      if ([v292 count] && objc_msgSend(objc_msgSend(v687, "irisSinkConfiguration"), "digitalFlashCaptureEnabled"))
      {
        [v261 addObjectsFromArray:v292];
      }

      v293 = v699;
      if (v681)
      {
        v800[0] = v695;
        v800[1] = v684;
        [v261 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v800, 2)}];
      }

      if (v644)
      {
        v799[0] = v695;
        v799[1] = v684;
        [v261 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v799, 2)}];
      }

      if ((v640 & 1) != 0 || [*(v718 + 456) smartFramingEnabled])
      {
        v798[0] = v695;
        v798[1] = v642;
        v798[2] = v684;
        [v261 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v798, 3)}];
      }

      if (v638)
      {
        [v261 addObject:v695];
        if ([v177 isRunningForContinuityCapture])
        {
          [v261 addObject:v684];
        }

        if ((v622 & 1) != 0 && (!v708 || *(v708 + 296) != 4))
        {
          [v261 addObject:v611];
        }
      }

      v294 = [v176 sourceDeviceType];
      if (((v294 - 2) < 0xD || (v294 - 17) <= 3) && [v176 sourceDeviceType] - 17 >= 4)
      {
        [v261 addObject:v695];
      }

      v295 = [FigCaptureConnectionConfigurationWithSinkType(v696 6)];
      if (v295)
      {
        v296 = v295;
        if ([v295 requestedBufferAttachmentsTrie])
        {
          v797[0] = v601;
          v797[1] = v600;
          v297 = [MEMORY[0x1E695DEC8] arrayWithObjects:v797 count:2];
          v298 = [v296 requestedBufferAttachmentsTrie];
          v299 = v297;
          v293 = v699;
          v300 = [v298 getSubTrie:v299];
          if (v300)
          {
            v301 = v300;
            if (([v300 isComplete] & 1) == 0)
            {
              if ([objc_msgSend(v301 "children")])
              {
                [v261 addObjectsFromArray:{objc_msgSend(objc_msgSend(v301, "children"), "allKeys")}];
              }
            }
          }
        }
      }

      if (v708)
      {
        [v293 setContinuityCameraIsWired:*(v708 + 294)];
        v302 = *(v708 + 296);
      }

      else
      {
        [v293 setContinuityCameraIsWired:0];
        v302 = 0;
      }

      [v293 setContinuityCameraClientDeviceClass:v302];
      v303 = csp_cinematicVideoEnabled(v708);
      if ([v239 portraitAutoSuggestEnabled])
      {
        [v261 addObject:v695];
        [v261 addObject:v624];
        [v261 addObject:v623];
      }

      if (v303)
      {
        v796[0] = v695;
        v796[1] = v611;
        v796[2] = v684;
        v796[3] = v642;
        v796[4] = v604;
        v796[5] = v603;
        v796[6] = v624;
        v796[7] = v623;
        v796[8] = v602;
        [v261 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v796, 9)}];
      }

      v304 = v708;
      if (v708)
      {
        v305 = v707;
        if (*(v708 + 123) == 1)
        {
          if ([objc_msgSend(v176 "requiredFormat")])
          {
            v304 = v708;
          }

          else
          {
            v304 = v708;
          }
        }
      }

      else
      {
        v305 = v707;
      }

      if (v685)
      {
        v650 = [v176 sourceDeviceType] == 9 && v305 == *(v718 + 80);
        v304 = v708;
      }

      else
      {
        v650 = 0;
      }

      v651 = *(v718 + 456);
      v649 = *(v718 + 40);
      if (v304)
      {
        v727 = *(v304 + 24);
        v700 = *(v304 + 28);
        v656 = *(v304 + 8);
        v722 = *(v304 + 120);
        v841 = *(v304 + 72);
        v842 = *(v304 + 88);
        v828 = *(v304 + 96);
        *&v829 = *(v304 + 112);
      }

      else
      {
        v700 = 0;
        v727 = 0;
        v656 = 0;
        v722 = 0;
        v841 = 0uLL;
        v842 = 0;
        v828 = 0uLL;
        *&v829 = 0;
      }

      v306 = v304;
      [objc_msgSend(v658 "depthDataSinkConfiguration")];
      if (v306)
      {
        v307 = *(v306 + 36) > 0.0;
        v716 = *(v306 + 129);
        v713 = *(v306 + 130);
        v657 = *(v306 + 68);
        v308 = *(v306 + 268);
        BYTE4(v655) = *(v306 + 266);
        v654 = *(v306 + 131);
        LOBYTE(v655) = *(v306 + 133);
        BYTE4(v653) = *(v306 + 142);
        v652 = *(v306 + 126);
        LOBYTE(v653) = *(v306 + 127);
        csp_portraitPhotoModeEnabled(v306);
        [v719 isRunningForContinuityCapture];
        v309 = *(v306 + 340);
      }

      else
      {
        csp_portraitPhotoModeEnabled(0);
        [v719 isRunningForContinuityCapture];
        v653 = 0;
        v654 = 0;
        v655 = 0;
        v657 = 0;
        v716 = 0;
        v307 = 0;
        v713 = 0;
        v652 = 0;
        v308 = 0.0;
        v309 = 0.0;
      }

      BYTE2(v586) = v650;
      BYTE1(v586) = v653 & 1;
      LOBYTE(v586) = v652 & 1;
      v176 = v717;
      v817 = csp_configureMultiStreamCameraNode(v707, v717, v651, v675, v687, v673, v637, v709, v268, v265, v308, v267, v266, v309, v649, v646 & 1, v661, v727 & 1, v700, v656, v634, v631, v722 & 1, v647, v632, v659 & 1, v630, &v841, &v828, v663, v636, v680[0], v307, v679 & 1, v668 & 1, v716 & 1, v713 & 1, v645[1], v645[0], v629[1], v629[0], v625, v626, v671, BYTE4(v665) & 1, v665 & 1, v729, v657 & 1, v685, v669 & 1, v724, objb & 1, v751 & 1, v742, v756 & 1, v761 & 1, v264 & 1, v263 & 1, v738 & 1, BYTE4(v655) & 1, v654 & 1, v655 & 1, BYTE4(v653) & 1);
      if (v817)
      {
        FigDebugAssert3();
        goto LABEL_609;
      }

      v795.receiver = v718;
      v795.super_class = FigCaptureCameraSourcePipeline;
      if ((objc_msgSendSuper2(&v795, v628, v707, &v816) & 1) == 0)
      {
        [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
        goto LABEL_609;
      }

      v310 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{-[BWMultiStreamCameraSourceNodeConfiguration videoStabilizationMethods](-[BWMultiStreamCameraSourceNode configuration](v707, "configuration"), "videoStabilizationMethods")}];
      v87 = 0x1E696A000uLL;
      v177 = v719;
      [v310 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(objc_msgSend(v719, "memoryAnalyticsPayload"), "maxVideoStabilizationMethod"))}];
      [objc_msgSend(v719 "memoryAnalyticsPayload")];
      LODWORD(v310) = [v717 videoStabilizationStrength];
      v311 = [objc_msgSend(v719 "memoryAnalyticsPayload")];
      v312 = v717;
      if (v310 <= v311)
      {
        v312 = [v719 memoryAnalyticsPayload];
      }

      [objc_msgSend(v719 "memoryAnalyticsPayload")];
      v313 = v703;
      if (v660)
      {
        v313 = [v717 sourceDeviceType];
      }

      v314 = v707;
      if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v707 configuration] previewOutputEnabled])
      {
        v315 = [(BWMultiStreamCameraSourceNode *)v707 previewOutput];
        v314 = v707;
        [v618 setObject:v315 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v313)}];
      }

      if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v314 configuration] videoCaptureOutputEnabled])
      {
        v316 = [(BWMultiStreamCameraSourceNode *)v314 videoCaptureOutput];
        v314 = v707;
        [v617 setObject:v316 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v313)}];
      }

      if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v314 configuration] stillImageOutputEnabled])
      {
        [v619 setObject:-[BWMultiStreamCameraSourceNode stillImageOutput](v314 forKeyedSubscript:{"stillImageOutput"), v705}];
      }

      if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v314 configuration] sensorRawStillImageOutputEnabled])
      {
        [v612 setObject:-[BWMultiStreamCameraSourceNode stillImageSensorRawOutput](v314 forKeyedSubscript:{"stillImageSensorRawOutput"), v705}];
      }

      v317 = v314;
      if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v314 configuration] depthOutputEnabled])
      {
        v605 = [(BWMultiStreamCameraSourceNode *)v314 depthOutput];
      }

      if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v314 configuration] lightSourceMaskOutputEnabled])
      {
        v318 = [(BWMultiStreamCameraSourceNode *)v314 lightSourceMaskOutput];
        v319 = [MEMORY[0x1E696AD98] numberWithInt:v313];
        v320 = v318;
        v317 = v707;
        [v615 setObject:v320 forKeyedSubscript:v319];
      }

      if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v317 configuration] keypointDescriptorDataOutputEnabled])
      {
        v321 = [(BWMultiStreamCameraSourceNode *)v317 keypointDescriptorDataOutput];
        v322 = [MEMORY[0x1E696AD98] numberWithInt:v313];
        v323 = v321;
        v317 = v707;
        [v614 setObject:v323 forKeyedSubscript:v322];
      }

      if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v317 configuration] semanticMasksOutputEnabled])
      {
        v324 = [(BWMultiStreamCameraSourceNode *)v317 semanticMasksOutput];
        v325 = [MEMORY[0x1E696AD98] numberWithInt:v313];
        v326 = v324;
        v317 = v707;
        [v616 setObject:v326 forKeyedSubscript:v325];
      }

      if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v317 configuration] detectedObjectsOutputEnabled])
      {
        v327 = [(NSDictionary *)[(BWMultiStreamCameraSourceNode *)v317 metadataOutputsByCategory] objectForKeyedSubscript:&unk_1F2244908];
        v328 = [MEMORY[0x1E696AD98] numberWithInt:v313];
        v329 = v327;
        v317 = v707;
        [v613 setObject:v329 forKeyedSubscript:v328];
      }

      if ([(BWSecureMetadataOutputConfiguration *)[(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v317 configuration] secureMetadataOutputConfiguration] objectDetectionEnabled])
      {
        v330 = [(NSDictionary *)[(BWMultiStreamCameraSourceNode *)v317 metadataOutputsByCategory] objectForKeyedSubscript:&unk_1F2244770];
        v331 = [MEMORY[0x1E696AD98] numberWithInt:v313];
        v332 = v330;
        v317 = v707;
        [v610 setObject:v332 forKeyedSubscript:v331];
        [*(v718 + 392) setObject:v610 forKeyedSubscript:&unk_1F2244770];
      }

      if ([(BWSecureMetadataOutputConfiguration *)[(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v317 configuration] secureMetadataOutputConfiguration] eyeReliefStatusDetectionEnabled])
      {
        v333 = [(NSDictionary *)[(BWMultiStreamCameraSourceNode *)v317 metadataOutputsByCategory] objectForKeyedSubscript:&unk_1F2244788];
        v334 = [MEMORY[0x1E696AD98] numberWithInt:v313];
        v335 = v333;
        v317 = v707;
        [v609 setObject:v335 forKeyedSubscript:v334];
        [*(v718 + 392) setObject:v609 forKeyedSubscript:&unk_1F2244788];
      }

      if ([(BWSecureMetadataOutputConfiguration *)[(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v317 configuration] secureMetadataOutputConfiguration] faceTrackingEnabled])
      {
        v336 = [(NSDictionary *)[(BWMultiStreamCameraSourceNode *)v317 metadataOutputsByCategory] objectForKeyedSubscript:&unk_1F22447B8];
        v337 = [MEMORY[0x1E696AD98] numberWithInt:v313];
        v338 = v336;
        v317 = v707;
        [v608 setObject:v338 forKeyedSubscript:v337];
        [*(v718 + 392) setObject:v608 forKeyedSubscript:&unk_1F22447B8];
      }

      if ([(BWSecureMetadataOutputConfiguration *)[(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v317 configuration] secureMetadataOutputConfiguration] faceIDReadinessEnabled])
      {
        v339 = [(NSDictionary *)[(BWMultiStreamCameraSourceNode *)v317 metadataOutputsByCategory] objectForKeyedSubscript:&unk_1F2244920];
        v340 = [MEMORY[0x1E696AD98] numberWithInt:v313];
        v341 = v339;
        v317 = v707;
        [v607 setObject:v341 forKeyedSubscript:v340];
        [*(v718 + 392) setObject:v607 forKeyedSubscript:&unk_1F2244920];
      }

      if ([(BWSecureMetadataOutputConfiguration *)[(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v317 configuration] secureMetadataOutputConfiguration] motionToWakeEnabled])
      {
        v342 = [(NSDictionary *)[(BWMultiStreamCameraSourceNode *)v317 metadataOutputsByCategory] objectForKeyedSubscript:&unk_1F2244830];
        v343 = [MEMORY[0x1E696AD98] numberWithInt:v313];
        v344 = v342;
        v317 = v707;
        [v606 setObject:v344 forKeyedSubscript:v343];
        [*(v718 + 392) setObject:v606 forKeyedSubscript:&unk_1F2244830];
      }

      *(v718 + 512) |= [(BWMultiStreamCameraSourceNode *)v317 hardwareDepthFilteringEnabled];
LABEL_473:
      v226 = v691 + 1;
    }

    while (v691 + 1 != v648);
    v346 = [v627 countByEnumeratingWithState:&v812 objects:v811 count:16];
    v648 = v346;
    v225 = &selRef__waitForPreviewGenerationGroupToComplete;
  }

  while (v346);
LABEL_503:
  v347 = v718;
  if (!v708 || *(v708 + 32) != 3 && (*(v708 + 354) & 1) == 0)
  {
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:v718 graph:? renderDelegate:? fastModeSwitch:? rtscProcessorsBySourceDeviceType:? inferenceScheduler:?];
  }

  v348 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
  if (!v620)
  {
    goto LABEL_542;
  }

  [*(v718 + 72) setName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@ RGB Camera", BWCaptureDevicePositionToString(objc_msgSend(*(v718 + 456), "position")))}];
  v349 = [[BWMultiStreamCameraSourceNode alloc] initWithCaptureDevice:*(v718 + 456) captureStream:v620];
  if (!v349)
  {
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:? graph:? renderDelegate:? fastModeSwitch:? rtscProcessorsBySourceDeviceType:? inferenceScheduler:?];
    goto LABEL_609;
  }

  v350 = v349;
  -[BWNode setName:](v349, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Infrared Camera", BWCaptureDevicePositionToString(objc_msgSend(*(v718 + 456), "position"))]);
  [*(v718 + 64) addObject:v350];
  LODWORD(v841) = 0;
  v351 = [v717 source];
  v352 = *off_1E798A0E8;
  v353 = FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType(v351, *off_1E798A0E8, &v841);
  if (v841)
  {
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
    v355 = 0;
  }

  else
  {
    v354 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType(v351, [v717 requiredFormat], v352, &v841);
    v355 = v354;
    if (!v841 && v354)
    {
      v356 = [[FigCaptureSourceConfiguration alloc] initWithSource:v353];
      [(FigCaptureSourceConfiguration *)v356 setRequiredFormat:v355];
      [v717 maxFrameRateClientOverride];
      [(FigCaptureSourceConfiguration *)v356 setMaxFrameRateClientOverride:?];
      v357 = [v717 requiredMinFrameRate];
      [(FigCaptureSourceConfiguration *)v356 setRequiredMinFrameRate:v357, v358];
      v359 = [v717 requiredMaxFrameRate];
      [(FigCaptureSourceConfiguration *)v356 setRequiredMaxFrameRate:v359, v360];
      -[FigCaptureSourceConfiguration setDepthDataFormat:](v356, "setDepthDataFormat:", [v717 depthDataFormat]);
      -[FigCaptureSourceConfiguration setDepthDataDeliveryEnabled:](v356, "setDepthDataDeliveryEnabled:", [v717 depthDataDeliveryEnabled]);
      -[FigCaptureSourceConfiguration setCinematicVideoCaptureEnabled:](v356, "setCinematicVideoCaptureEnabled:", [v717 isCinematicVideoCaptureEnabled]);
      if (v353)
      {
        goto LABEL_513;
      }

      goto LABEL_514;
    }

    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
  }

  v356 = 0;
  if (v353)
  {
LABEL_513:
    CFRelease(v353);
  }

LABEL_514:

  if (!v356)
  {
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:? graph:? renderDelegate:? fastModeSwitch:? rtscProcessorsBySourceDeviceType:? inferenceScheduler:?];
    goto LABEL_609;
  }

  [(FigCaptureSourceVideoFormat *)[(FigCaptureSourceConfiguration *)v356 requiredFormat] nativeDimensions];
  v361 = *(v718 + 456);
  [objc_msgSend(v658 "depthDataSinkConfiguration")];
  if (v708)
  {
    v362 = *(v708 + 36) > 0.0;
    v363 = *(v708 + 129);
    v364 = *(v708 + 130);
    v365 = *(v708 + 68);
  }

  else
  {
    v364 = 0;
    v362 = 0;
    v363 = 0;
    v365 = 0;
  }

  v841 = *MEMORY[0x1E6960C70];
  v842 = *(MEMORY[0x1E6960C70] + 16);
  BYTE2(v586) = 0;
  LOWORD(v586) = 0;
  v817 = csp_configureMultiStreamCameraNode(v350, v356, v361, 0, v692, 0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, MEMORY[0x1E6960C70], &v841, v689, v636, v680[0], v362, 0, 1, v363 & 1, v364 & 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v365 & 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

  if (v817)
  {
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
    goto LABEL_609;
  }

  v347 = v718;
  *(v718 + 512) |= [(BWMultiStreamCameraSourceNode *)v350 hardwareDepthFilteringEnabled];
  v794.receiver = v718;
  v794.super_class = FigCaptureCameraSourcePipeline;
  if ((objc_msgSendSuper2(&v794, sel_addNode_error_, v350, &v816) & 1) == 0)
  {
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
    goto LABEL_609;
  }

  *(v718 + 96) = v350;
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v350 configuration] stillImageOutputEnabled])
  {
    [v619 setObject:-[BWMultiStreamCameraSourceNode stillImageOutput](v350 forKeyedSubscript:{"stillImageOutput"), v352}];
  }

  if (v708 && *(v708 + 292) == 1)
  {
    v605 = [(BWMultiStreamCameraSourceNode *)v350 depthOutput];
    v348 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
    goto LABEL_542;
  }

  v817 = -[FigCaptureCameraSourcePipeline _addDepthFromInfraredSynchronizer:previewOutputsBySourceDeviceType:pipelineConfiguration:graph:sourceDeviceType:](v718, v617, v618, v708, v719, [v717 sourceDeviceType]);
  v348 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
  if (v817)
  {
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
    goto LABEL_609;
  }

LABEL_542:
  v372 = [v717 source];
  v752 = *(v347 + 64);
  v373 = *(v347 + v348[631]);
  v823[0] = 0;
  v374 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v374)
  {
    *type = -12782;
    goto LABEL_544;
  }

  v739 = v373;
  *type = v374(v372, @"AttributesDictionary", v598, v823);
  if (*type)
  {
LABEL_544:
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
LABEL_545:

    v375 = v718;
    goto LABEL_546;
  }

  v762 = [v823[0] objectForKeyedSubscript:0x1F21A05D0];
  if (!v762)
  {
    goto LABEL_545;
  }

  v743 = [v823[0] objectForKeyedSubscript:0x1F21A0630];
  if (!v743)
  {
    goto LABEL_545;
  }

  v757 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v752, "count")}];
  v381 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v752, "count")}];
  v828 = 0u;
  v829 = 0u;
  v830 = 0u;
  v831 = 0u;
  v382 = [v752 countByEnumeratingWithState:&v828 objects:&v841 count:16];
  if (v382)
  {
    v413 = v382;
    v414 = *v829;
    while (2)
    {
      for (kk = 0; kk != v413; ++kk)
      {
        if (*v829 != v414)
        {
          objc_enumerationMutation(v752);
        }

        v416 = *(*(&v828 + 1) + 8 * kk);
        v417 = [v416 portType];
        if ([objc_msgSend(v416 "configuration")])
        {
          v418 = [objc_msgSend(v762 objectForKeyedSubscript:{v417), "objectForKeyedSubscript:", 0x1F21A0610}];
          if (!v418)
          {
            goto LABEL_545;
          }

          v419 = v418;
          v420 = MEMORY[0x1E696AD98];
          [v416 geometricDistortionCorrectionStrengthOnStreamingOutputs];
          [v757 setObject:objc_msgSend(v419 forKeyedSubscript:{"objectForKeyedSubscript:", objc_msgSend(objc_msgSend(v420, "numberWithLong:", llroundf(v421 * 100.0)), "stringValue")), v417}];
        }

        v422 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType(v372, v697, v417, type);
        if (*type)
        {
          [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
          goto LABEL_545;
        }

        if (!v422)
        {
          [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
          goto LABEL_545;
        }

        v423 = [v422 sensorCropDimensions];
        if (!v423)
        {
          v423 = [v422 sensorDimensions];
        }

        v424 = [v422 horizontalSensorBinningFactor];
        [objc_msgSend(v416 "configuration")];
        v426 = v425;
        [objc_msgSend(v416 "configuration")];
        v428 = v427;
        v429 = [v416 configuration];
        if (v426 <= v428)
        {
          [v429 visOverscan];
        }

        else
        {
          [v429 sensorOverscan];
        }

        v431 = v430;
        v432 = (v424 * v423) / (v431 + 1.0);
        [objc_msgSend(v416 "configuration")];
        *&v434 = v432 / (v433 + 1.0);
        [v381 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v434), v417}];
      }

      v413 = [v752 countByEnumeratingWithState:&v828 objects:&v841 count:16];
      if (v413)
      {
        continue;
      }

      break;
    }
  }

  v383 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v743];
  v375 = v718;
  if ([objc_msgSend(v739 "captureStreamsByFocalLength")] >= 2)
  {
    v384 = 1;
    do
    {
      v385 = [objc_msgSend(objc_msgSend(v739 "captureStreamsByFocalLength")];
      v386 = [objc_msgSend(objc_msgSend(v739 "captureStreamsByFocalLength")];
      v387 = [v762 objectForKeyedSubscript:v385];
      v388 = [v762 objectForKeyedSubscript:v386];
      LODWORD(v387) = [objc_msgSend(v387 objectForKeyedSubscript:{0x1F21A05F0), "intValue"}];
      v389 = [objc_msgSend(v388 objectForKeyedSubscript:{0x1F21A05F0), "intValue"}];
      [objc_msgSend(v381 objectForKeyedSubscript:{v386), "floatValue"}];
      v391 = v389 / v390;
      [objc_msgSend(v381 objectForKeyedSubscript:{v385), "floatValue"}];
      v393 = v387 / v392;
      [objc_msgSend(v757 objectForKeyedSubscript:{v386), "floatValue"}];
      if (v394 == 0.0)
      {
        v395 = 1.0;
      }

      else
      {
        v395 = v394;
      }

      [objc_msgSend(v757 objectForKeyedSubscript:{v385), "floatValue"}];
      if (v396 == 0.0)
      {
        v396 = 1.0;
      }

      v397 = v391 * v395;
      v398 = v393 * v396;
      [objc_msgSend(v743 objectForKeyedSubscript:{v385), "floatValue"}];
      v400 = v399;
      [objc_msgSend(v743 objectForKeyedSubscript:{v386), "floatValue"}];
      v402 = (v398 / v397) * (v400 / v401);
      [objc_msgSend(v383 objectForKeyedSubscript:{v386), "floatValue"}];
      v404 = v403 * v402;
      if (([v739 overCaptureEnabled] & 1) == 0 && objc_msgSend(v739, "maxOverscanVideoStabilizationMethod") <= 0)
      {
        [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v739 "captureStreamsByFocalLength")];
        v407 = v406;
        if (BWWiderNonDisruptiveSwitchingFormatZoomFactorAndNarrowerBaseZoomFactorShouldBeCombined(v406, v404))
        {
          v404 = v407;
        }
      }

      v375 = v718;
      *&v405 = v404;
      [v383 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v405), v385}];
      ++v384;
    }

    while ([objc_msgSend(v739 "captureStreamsByFocalLength")] > v384);
  }

  if (v383)
  {
    [*(v375 + 456) setBaseZoomFactorsByPortType:v383];
    v793 = 0u;
    v792 = 0u;
    v791 = 0u;
    v790 = 0u;
    v408 = *(v375 + 64);
    v409 = [v408 countByEnumeratingWithState:&v790 objects:v789 count:16];
    if (v409)
    {
      v410 = v409;
      v411 = *v791;
      do
      {
        for (mm = 0; mm != v410; ++mm)
        {
          if (*v791 != v411)
          {
            objc_enumerationMutation(v408);
          }

          [*(*(&v790 + 1) + 8 * mm) updateZoomFactorsToNondisruptiveSwitchingFormatIndexMapping];
        }

        v410 = [v408 countByEnumeratingWithState:&v790 objects:v789 count:16];
      }

      while (v410);
    }
  }

LABEL_546:
  if (v708)
  {
    v376 = *(v375 + 64);
    v377 = v697;
    v378 = v593;
    if (*(v708 + 24) == 1)
    {
      v379 = [objc_msgSend(v697 "actionCameraCompanionFormat")];
      v380 = [v697 actionCameraCompanionFormat];
      goto LABEL_646;
    }
  }

  else
  {
    v376 = *(v375 + 64);
    v377 = v697;
    v378 = v593;
  }

  v379 = [v377 sensorDimensions];
  v435 = [v377 preGDCSensorCropDimensions];
  if (v435 < 1)
  {
    v380 = v377;
    goto LABEL_646;
  }

  v380 = v377;
  if (SHIDWORD(v435) <= 0)
  {
LABEL_646:
    v435 = [v380 sensorCropDimensions];
  }

  v437 = *MEMORY[0x1E695F060];
  v436 = *(MEMORY[0x1E695F060] + 8);
  v831 = 0u;
  v830 = 0u;
  v829 = 0u;
  v828 = 0u;
  v438 = [v376 countByEnumeratingWithState:&v828 objects:&v841 count:16];
  if (v438)
  {
    v439 = v438;
    v440 = v435 > 0;
    v441 = SHIDWORD(v435) > 0;
    v442 = !v440 || !v441;
    if (v440 && v441)
    {
      v443 = HIDWORD(v435);
    }

    else
    {
      v443 = HIDWORD(v379);
    }

    if (v442)
    {
      v444 = v379;
    }

    else
    {
      v444 = v435;
    }

    v445 = *v829;
    v446 = v444;
    v447 = v443;
    do
    {
      for (nn = 0; nn != v439; ++nn)
      {
        if (*v829 != v445)
        {
          objc_enumerationMutation(v376);
        }

        v449 = *(*(&v828 + 1) + 8 * nn);
        [objc_msgSend(v449 "configuration")];
        v451 = v450;
        v453 = v452;
        [objc_msgSend(v449 "configuration")];
        v456 = v451 > v454;
        if (v453 > v455)
        {
          v456 = 1;
        }

        if (v456)
        {
          v454 = v451;
          v455 = v453;
        }

        v457 = v446 / (v454 + 1.0);
        v458 = v447 / (v455 + 1.0);
        if (v437 <= v457)
        {
          v437 = v457;
        }

        if (v436 <= v458)
        {
          v436 = v458;
        }
      }

      v439 = [v376 countByEnumeratingWithState:&v828 objects:&v841 count:16];
    }

    while (v439);
  }

  v459 = v437;
  v460 = v436;
  v461 = [v697 sourceCropAspectRatio];
  if (v461 < 1)
  {
    v462 = v719;
  }

  else
  {
    v462 = v719;
    if (SHIDWORD(v461) >= 1)
    {
      v463 = FigCaptureFitAspectInsideDimensions(v459 | (v460 << 32), 0x200000002, v461 / HIDWORD(v461));
      v460 = HIDWORD(v463);
      LODWORD(v459) = v463;
    }
  }

  v464 = 0.0;
  if (v379 <= v459 && SHIDWORD(v379) <= v460)
  {
    v460 = HIDWORD(v379);
    LODWORD(v459) = v379;
    v467 = 0.0;
  }

  else
  {
    [v697 sensorCenterOffset];
    v467 = v466 + ((v379 - v459) / 2);
    v464 = v468 + ((HIDWORD(v379) - v460) / 2);
  }

  v469 = v459;
  v470 = v718;
  [*(v718 + 456) setRegionOfInterestWithoutOverscan:{v467, v464, v469, v460}];
  if (!v708)
  {
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:v718 graph:? renderDelegate:? fastModeSwitch:? rtscProcessorsBySourceDeviceType:? inferenceScheduler:?];
    goto LABEL_709;
  }

  [*(v718 + 456) setLumaHistogramsEnabled:*(v708 + 293)];
  v471 = v708;
  if ((*(v708 + 132) & 1) != 0 || *(v708 + 142) == 1)
  {
    [*(v718 + 456) setSensorRawPoolEnabled:1];
    v788 = 0u;
    v787 = 0u;
    v786 = 0u;
    v785 = 0u;
    v472 = *(v718 + 64);
    v473 = [v472 countByEnumeratingWithState:&v785 objects:v784 count:16];
    if (v473)
    {
      v475 = v473;
      v476 = 0;
      v477 = 0;
      v478 = *v786;
      do
      {
        for (i1 = 0; i1 != v475; ++i1)
        {
          if (*v786 != v478)
          {
            objc_enumerationMutation(v472);
          }

          v480 = *(*(&v785 + 1) + 8 * i1);
          if (v476 < 1 || v477 < 1)
          {
            v486 = [v480 ultraHighResSensorRawStillImageOutputDimensions];
            v476 = v486;
            v477 = HIDWORD(v486);
          }

          else
          {
            v481 = [v480 ultraHighResSensorRawStillImageOutputDimensions];
            if (v476 <= v481)
            {
              v482 = v481;
            }

            else
            {
              v482 = v476;
            }

            if (v477 <= HIDWORD(v481))
            {
              v483 = HIDWORD(v481);
            }

            else
            {
              v483 = v477;
            }

            if ((v476 | (v477 << 32)) == v481 || v481 < 1 || SHIDWORD(v481) < 1)
            {
              v477 = v477;
            }

            else
            {
              v476 = v482;
              v477 = v483;
            }
          }
        }

        v475 = [v472 countByEnumeratingWithState:&v785 objects:v784 count:16];
      }

      while (v475);
      v474 = v476 | (v477 << 32);
      v462 = v719;
    }

    else
    {
      v474 = 0;
    }

    v470 = v718;
    [*(v718 + 456) setUltraHighResSensorRawPoolDimensions:v474];
LABEL_709:
    v471 = v708;
  }

  v817 = [FigCaptureCameraSourcePipeline _buildSemanticMasksOutputNetwork:v470 pipelineConfiguration:v616 graph:?];
  if (v817)
  {
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
  }

  else
  {
    LODWORD(v540) = v378;
    [(FigCaptureCameraSourcePipeline *)v470 _buildVideoCaptureOutputNetwork:v617 previewOutputsBySourceDeviceType:v618 stillImageOutputsByPortType:v619 lightSourceMaskOutputsBySourceDeviceType:v615 keypointDescriptorDataOutputsBySourceDeviceType:v614 pipelineConfiguration:v471 graph:v462 videoCaptureDimensions:v537 numberOfSecondaryFramesToSkip:v540 rtscProcessorsBySourceDeviceType:a6 inferenceScheduler:a7, v547, v550, v553, v556, v559, v562, v565, v568, v571, v574, v577, v580, v583, v586];
    v817 = v488;
    if (v488)
    {
      [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
    }

    else
    {
      v817 = [FigCaptureCameraSourcePipeline _buildPreviewOutputNetwork:v470 videoCaptureOutputsBySourceDeviceType:v618 pipelineConfiguration:v487 graph:v471 numberOfSecondaryFramesToSkip:?];
      if (v817)
      {
        [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
      }

      else
      {
        [FigCaptureCameraSourcePipeline _buildDetectedObjectsOutputNetwork:pipelineConfiguration:graph:];
        v817 = v489;
        if (v489)
        {
          [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
        }

        else
        {
          v490 = v718;
          if (v646)
          {
            if (v708)
            {
              v491 = *(v708 + 240);
            }

            else
            {
              v491 = 0;
            }

            [(FigCaptureCameraSourcePipeline *)v718 _updateNumberOfFaceTrackingConnectionConfigurations:v491];
          }

          if (*(v718 + 41) == 1)
          {
            v783 = 0u;
            v782 = 0u;
            v781 = 0u;
            v780 = 0u;
            v492 = v708 ? *(v708 + 240) : 0;
            objc = v492;
            v758 = [v492 countByEnumeratingWithState:&v780 objects:v779 count:16];
            if (v758)
            {
              v753 = *v781;
              do
              {
                v493 = 0;
                do
                {
                  if (*v781 != v753)
                  {
                    objc_enumerationMutation(objc);
                  }

                  v763 = v493;
                  v494 = *(*(&v780 + 1) + 8 * v493);
                  v495 = [(FigCaptureCameraSourcePipeline *)v490 metadataCategoriesForConnectionConfiguration:v494];
                  v775 = 0u;
                  v776 = 0u;
                  v777 = 0u;
                  v778 = 0u;
                  v496 = [v495 countByEnumeratingWithState:&v775 objects:v774 count:16];
                  if (v496)
                  {
                    v497 = v496;
                    v498 = *v776;
                    do
                    {
                      for (i2 = 0; i2 != v497; ++i2)
                      {
                        if (*v776 != v498)
                        {
                          objc_enumerationMutation(v495);
                        }

                        v500 = *(*(&v775 + 1) + 8 * i2);
                        v501 = [(FigCaptureCameraSourcePipeline *)v718 createOutputNetworkForOutput:v500 withFanOutCount:1 graph:v719 sessionID:@"PrimaryClientSession"];
                        v502 = [*(v718 + 392) objectForKeyedSubscript:v500];
                        [v502 setObject:v501 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v494, "underlyingDeviceType"))}];
                      }

                      v497 = [v495 countByEnumeratingWithState:&v775 objects:v774 count:16];
                    }

                    while (v497);
                  }

                  v493 = v763 + 1;
                  v490 = v718;
                }

                while (v763 + 1 != v758);
                v758 = [objc countByEnumeratingWithState:&v780 objects:v779 count:16];
              }

              while (v758);
            }
          }

          v817 = [FigCaptureCameraSourcePipeline _buildPointCloudOutputNetworkWithPipelineConfiguration:v490 graph:v708];
          if (v817)
          {
            [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
          }

          else
          {
            *(v490 + 408) = v605;
            [*(v490 + 72) setRenderDelegate:a4];
            v503 = [objc_msgSend(*(v490 + 72) "configuration")];
            v504 = *(v490 + 72);
            if (v503)
            {
              v505 = [v504 videoCaptureOutput];
              goto LABEL_757;
            }

            if ([objc_msgSend(v504 "configuration")])
            {
              v505 = [*(v490 + 72) previewOutput];
              goto LABEL_757;
            }

            v506 = [v619 count];
            v507 = *(v490 + 72);
            if (v506)
            {
              v505 = [v507 stillImageOutput];
              goto LABEL_757;
            }

            v508 = [objc_msgSend(v507 "configuration")];
            v509 = *(v490 + 72);
            if (v508)
            {
              v510 = [v509 metadataOutputsByCategory];
              v511 = &unk_1F2244908;
              goto LABEL_756;
            }

            v512 = [objc_msgSend(v509 "configuration")];
            v513 = *(v490 + 72);
            if (v512)
            {
              v505 = [v513 pointCloudOutput];
              goto LABEL_757;
            }

            v514 = [objc_msgSend(objc_msgSend(v513 "configuration")];
            v515 = *(v490 + 72);
            if (v514)
            {
              v510 = [v515 metadataOutputsByCategory];
              v511 = &unk_1F2244770;
LABEL_756:
              v505 = [v510 objectForKeyedSubscript:v511];
LABEL_757:
              *(v490 + 112) = v505;
            }

            else
            {
              v516 = [objc_msgSend(objc_msgSend(v515 "configuration")];
              v517 = *(v490 + 72);
              if (v516)
              {
                v510 = [v517 metadataOutputsByCategory];
                v511 = &unk_1F22447B8;
                goto LABEL_756;
              }

              v518 = [objc_msgSend(objc_msgSend(v517 "configuration")];
              v519 = *(v490 + 72);
              if (v518)
              {
                v510 = [v519 metadataOutputsByCategory];
                v511 = &unk_1F2244788;
                goto LABEL_756;
              }

              v520 = [objc_msgSend(objc_msgSend(v519 "configuration")];
              v521 = *(v490 + 72);
              if (v520)
              {
                v510 = [v521 metadataOutputsByCategory];
                v511 = &unk_1F2244830;
                goto LABEL_756;
              }

              if ([objc_msgSend(objc_msgSend(v521 "configuration")])
              {
                v510 = [*(v490 + 72) metadataOutputsByCategory];
                v511 = &unk_1F2244920;
                goto LABEL_756;
              }
            }

            *(v490 + 176) = v619;
            *(v490 + 184) = v612;
            *(v490 + 508) = v689;
            if (v708)
            {
              *(v490 + 585) = *(v708 + 348);
              *(v490 + 586) = *(v708 + 350);
              *(v490 + 587) = *(v708 + 351);
              if ((v637 & v594 & *(v708 + 265)) == 1)
              {
                v773 = 0u;
                v772 = 0u;
                v771 = 0u;
                v770 = 0u;
                v522 = *(v718 + 64);
                v523 = [v522 countByEnumeratingWithState:&v770 objects:v769 count:16];
                if (v523)
                {
                  v524 = v523;
                  v525 = *v771;
                  v526 = *off_1E798A0C8;
                  do
                  {
                    for (i3 = 0; i3 != v524; ++i3)
                    {
                      if (*v771 != v525)
                      {
                        objc_enumerationMutation(v522);
                      }

                      v528 = *(*(&v770 + 1) + 8 * i3);
                      if ([objc_msgSend(objc_msgSend(v528 "captureStream")])
                      {
                        [v719 enableDeferredStartForSourceNode:v528 mustStartAfterNonDeferred:1];
                      }
                    }

                    v524 = [v522 countByEnumeratingWithState:&v770 objects:v769 count:16];
                  }

                  while (v524);
                }
              }
            }

            else
            {
              [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:v490 graph:? renderDelegate:? fastModeSwitch:? rtscProcessorsBySourceDeviceType:? inferenceScheduler:?];
            }

            if ([(FigCaptureCameraSourcePipeline *)v718 _canDeferSourceNodesForGraph:v719])
            {
              v768 = 0u;
              v767 = 0u;
              v766 = 0u;
              v765 = 0u;
              v529 = *(v718 + 64);
              v530 = [v529 countByEnumeratingWithState:&v765 objects:v764 count:16];
              if (v530)
              {
                v531 = v530;
                v532 = *v766;
                do
                {
                  for (i4 = 0; i4 != v531; ++i4)
                  {
                    if (*v766 != v532)
                    {
                      objc_enumerationMutation(v529);
                    }

                    [v719 enableDeferredStartForSourceNode:*(*(&v765 + 1) + 8 * i4) mustStartAfterNonDeferred:1];
                  }

                  v531 = [v529 countByEnumeratingWithState:&v765 objects:v764 count:16];
                }

                while (v531);
              }
            }
          }
        }
      }
    }
  }

LABEL_609:
  result = v817;
  if (!v817)
  {
    if (v816)
    {
      return [v816 code];
    }
  }

  return result;
}

- (void)dealloc
{
  captureSource = self->_captureSource;
  if (captureSource)
  {
    CFRelease(captureSource);
  }

  v4.receiver = self;
  v4.super_class = FigCaptureCameraSourcePipeline;
  [(FigCaptureSourcePipeline *)&v4 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p> captureDevice:%@ captureSource:%@", NSStringFromClass(v4), self, self->_captureDevice, self->_captureSource];
}

- (uint64_t)_getDeviceOrientationCorrectionEnabledForVideoCaptureConnectionConfigurations:(uint64_t)a1
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = [a2 count];
      if (result)
      {
        v12 = 0u;
        v13 = 0u;
        v10 = 0u;
        v11 = 0u;
        result = [a2 countByEnumeratingWithState:&v10 objects:v9 count:16];
        if (result)
        {
          v5 = result;
          v6 = *v11;
          while (2)
          {
            for (i = 0; i != v5; ++i)
            {
              if (*v11 != v6)
              {
                objc_enumerationMutation(a2);
              }

              v8 = *(*(&v10 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 deviceOrientationCorrectionEnabled])
              {
                return 1;
              }
            }

            v5 = [a2 countByEnumeratingWithState:&v10 objects:v9 count:16];
            result = 0;
            if (v5)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

  return result;
}

- (id)initWithConfiguration:(void *)a3 captureDevice:(void *)a4 graph:(uint64_t)a5 name:(uint64_t)a6 renderDelegate:(uint64_t)a7 ispFastSwitchEnabled:(uint64_t)a8 rtscProcessorsBySourceDeviceType:(uint64_t)a9 inferenceScheduler:(int *)a10 error:
{
  v10 = a1;
  if (!a1)
  {
    return v10;
  }

  v34 = 0;
  if (a2)
  {
    v17 = *(a2 + 176);
  }

  else
  {
    v17 = 0;
  }

  v18 = [v17 source];
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v19)
  {
    v29 = -12782;
LABEL_23:
    OUTLINED_FUNCTION_0_8();
    goto LABEL_24;
  }

  v20 = v19(v18, @"AttributesDictionary", *MEMORY[0x1E695E480], &v34);
  if (v20)
  {
    v29 = v20;
    goto LABEL_23;
  }

  if (a2)
  {
    v21 = *(a2 + 176);
  }

  else
  {
    v21 = 0;
  }

  v33.receiver = v10;
  v33.super_class = FigCaptureCameraSourcePipeline;
  v10 = objc_msgSendSuper2(&v33, sel_initWithGraph_name_sourceID_, a4, a5, [v21 sourceID]);
  if (!v10)
  {
LABEL_21:

    return v10;
  }

  if (a2)
  {
    v22 = *(a2 + 176);
  }

  else
  {
    v22 = 0;
  }

  if (![v22 source])
  {
    v29 = FigSignalErrorAtGM();
    goto LABEL_25;
  }

  *(v10 + 7) = a2;
  *(v10 + 8) = objc_alloc_init(MEMORY[0x1E695DF70]);
  *(v10 + 11) = [objc_msgSend(v34 objectForKeyedSubscript:{@"DeviceType", "intValue"}];
  *(v10 + 12) = [objc_msgSend(v34 objectForKeyedSubscript:{@"Position", "intValue"}];
  *(v10 + 57) = a3;
  if (a2)
  {
    v23 = *(a2 + 176);
  }

  else
  {
    v23 = 0;
  }

  v24 = [v23 source];
  if (v24)
  {
    v24 = CFRetain(v24);
  }

  *(v10 + 58) = v24;
  if (a2)
  {
    *(v10 + 59) = [*(a2 + 176) requiredFormat];
    v25 = *(a2 + 176);
  }

  else
  {
    v31 = [0 requiredFormat];
    v25 = OUTLINED_FUNCTION_110_2();
    *(v10 + 59) = v32;
  }

  *(v10 + 60) = [v25 depthDataFormat];
  *(v10 + 62) = [a4 memoryPool];
  if (a2)
  {
    *(v10 + 504) = *(a2 + 136) != 0.0;
    *(v10 + 513) = *(a2 + 266);
    v26 = *(a2 + 176);
  }

  else
  {
    v26 = 0;
    *(v10 + 504) = 0;
    *(v10 + 513) = 0;
  }

  [v26 maxFrameRateClientOverride];
  *(v10 + 129) = v27;
  *(v10 + 71) = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(v10 + 72) = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(v10 + 49) = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(v10 + 41) = [objc_msgSend(v34 objectForKeyedSubscript:{0x1F21833F0), "BOOLValue"}];
  *(v10 + 65) = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(v10 + 55) = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = [(FigCaptureCameraSourcePipeline *)v10 _buildMultiStreamCameraSourcePipeline:a2 graph:a4 renderDelegate:a6 fastModeSwitch:0 rtscProcessorsBySourceDeviceType:a8 inferenceScheduler:a9];
  if (!v28)
  {
    goto LABEL_21;
  }

  v29 = v28;
  OUTLINED_FUNCTION_1_5();
LABEL_24:
  FigDebugAssert3();
LABEL_25:

  if (a10)
  {
    *a10 = v29;
  }

  return 0;
}

- (uint64_t)cameraConfiguration
{
  if (result)
  {
    v1 = *(result + 56);
    if (v1)
    {
      return *(v1 + 176);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)videoOutputColorInfo
{
  if (result)
  {
    [*(result + 72) videoCaptureOutput];
    v1 = OUTLINED_FUNCTION_17();

    return [v1 colorInfoForOutput:?];
  }

  return result;
}

- (uint64_t)metadataOutputsByCategoryForSourceDeviceType:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [*(a1 + 392) allKeys];
  OUTLINED_FUNCTION_43();
  v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        OUTLINED_FUNCTION_4_10();
        if (v11 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 392) objectForKeyedSubscript:*(v17 + 8 * v10)];
        [MEMORY[0x1E696AD98] numberWithInt:a2];
        [OUTLINED_FUNCTION_36() objectForKeyedSubscript:?];
        [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
        ++v10;
      }

      while (v8 != v10);
      OUTLINED_FUNCTION_43();
      v8 = OUTLINED_FUNCTION_52(v12, v13, v14, v15);
    }

    while (v8);
  }

  return v4;
}

- (void)metadataCategoriesForConnectionConfiguration:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = [MEMORY[0x1E695DF70] array];
  if (FigCaptureMetadataObjectConfigurationRequiresObjectDetection(a2))
  {
    [v3 addObject:&unk_1F2244770];
  }

  if (FigCaptureMetadataObjectConfigurationRequiresEyeReliefStatus(a2))
  {
    [v3 addObject:&unk_1F2244788];
  }

  if (FigCaptureMetadataObjectConfigurationRequiresFaceTracking(a2))
  {
    [v3 addObject:&unk_1F22447B8];
  }

  if (FigCaptureMetadataObjectConfigurationRequiresFaceIDReadiness(a2))
  {
    [v3 addObject:&unk_1F2244920];
  }

  if (FigCaptureMetadataObjectConfigurationRequiresMotionToWake(a2))
  {
    [v3 addObject:&unk_1F2244830];
  }

  return v3;
}

- (uint64_t)visionDataOutputForSourceDeviceType:(uint64_t)result
{
  if (result)
  {
    [MEMORY[0x1E696AD98] numberWithInt:a2];
    v2 = OUTLINED_FUNCTION_17();

    return [v2 objectForKeyedSubscript:?];
  }

  return result;
}

- (uint64_t)depthOutput
{
  if (result)
  {
    return *(result + 408);
  }

  return result;
}

- (uint64_t)isLightSourceMaskOnVideoCaptureOutputsEnabledForSourceDeviceType:(uint64_t)result
{
  if (result)
  {
    [MEMORY[0x1E696AD98] numberWithInt:a2];
    v2 = OUTLINED_FUNCTION_17();

    return [v2 containsObject:?];
  }

  return result;
}

- (uint64_t)isKeypointDescriptorDataOnVideoCaptureOutputsEnabledForSourceDeviceType:(uint64_t)result
{
  if (result)
  {
    [MEMORY[0x1E696AD98] numberWithInt:a2];
    v2 = OUTLINED_FUNCTION_17();

    return [v2 containsObject:?];
  }

  return result;
}

- (uint64_t)semanticMasksOutputsBySourceDeviceType:(uint64_t)result
{
  if (result)
  {
    [MEMORY[0x1E696AD98] numberWithInt:a2];
    v2 = OUTLINED_FUNCTION_17();

    return [v2 objectForKeyedSubscript:?];
  }

  return result;
}

- (uint64_t)preferredPreviewDimensions
{
  if (result)
  {
    v1 = [*(result + 72) configuration];

    return [v1 preferredPreviewDimensions];
  }

  return result;
}

- (uint64_t)videoCaptureOutputTransformForSourceDeviceType:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_141_0(a1, a2);
    if ([objc_msgSend(OUTLINED_FUNCTION_7() "objectForKeyedSubscript:"count"")])
    {
      [*(v2 + 3480) numberWithInt:a2];
      v5 = [objc_msgSend(OUTLINED_FUNCTION_8() "objectForKeyedSubscript:{"objectAtIndexedSubscript:", 0}")];
      if (v5)
      {
        v6 = v5;
        while (1)
        {
          v7 = [v6 formatRequirements];
          if ([v7 width])
          {
            if ([v7 height])
            {
              break;
            }
          }

          v6 = [objc_msgSend(objc_msgSend(objc_msgSend(v6 "node")];
          if (!v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v7 = 0;
      }
    }

    else
    {
      v7 = [objc_msgSend(*(a1 + 72) "videoCaptureOutput")];
    }

    [v7 width];
    [v7 height];
  }

  return OUTLINED_FUNCTION_3_19();
}

- (uint64_t)previewOutputTransformForSourceDeviceType:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_141_0(a1, a2);
    if ([objc_msgSend(OUTLINED_FUNCTION_7() "objectForKeyedSubscript:"count"")])
    {
      [*(v2 + 3480) numberWithInt:a2];
      v5 = [objc_msgSend(OUTLINED_FUNCTION_8() "objectForKeyedSubscript:{"objectAtIndexedSubscript:", 0}")];
      if (v5)
      {
        v6 = v5;
        while (1)
        {
          v7 = [v6 formatRequirements];
          if ([v7 width])
          {
            if ([v7 height])
            {
              break;
            }
          }

          v6 = [objc_msgSend(objc_msgSend(objc_msgSend(v6 "node")];
          if (!v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v7 = 0;
      }
    }

    else
    {
      v7 = [objc_msgSend(*(a1 + 72) "previewOutput")];
    }

    [v7 width];
    [v7 height];
  }

  return OUTLINED_FUNCTION_3_19();
}

- (uint64_t)firmwareStillImageDimensionsAfterOverscanCropping
{
  if (result)
  {
    return [*(result + 72) firmwareStillImageDimensionsAfterOverscanCropping];
  }

  return result;
}

- (uint64_t)stillImageOutputVideoFormat
{
  if (result)
  {
    v1 = [*(result + 72) stillImageOutput];

    return [v1 videoFormat];
  }

  return result;
}

- (void)nextVideoCaptureOutputForSourceDeviceType:(uint64_t)a3
{
  if (a1)
  {
    [(FigCaptureCameraSourcePipeline *)a1 nextVideoCaptureOutputForSourceDeviceType:a2 sharesBuffersWithOtherConnections:0, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28];
  }
}

- (void)nextVideoCaptureOutputForSourceDeviceType:(uint64_t)a3 sharesBuffersWithOtherConnections:(uint64_t)a4
{
  if (a1)
  {
    OUTLINED_FUNCTION_91();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    OUTLINED_FUNCTION_124_3(v33, v31, 208);
    v35 = 0x1E696A000uLL;
    [MEMORY[0x1E696AD98] numberWithInt:v36];
    if (![OUTLINED_FUNCTION_28() objectForKeyedSubscript:?])
    {
      goto LABEL_28;
    }

    [MEMORY[0x1E696AD98] numberWithInt:v32];
    if ([objc_msgSend(OUTLINED_FUNCTION_28() "objectForKeyedSubscript:"count"")] <= v28)
    {
      goto LABEL_28;
    }

    if (!v30)
    {
LABEL_27:
      [*(v35 + 3480) numberWithInt:v32];
      [objc_msgSend(OUTLINED_FUNCTION_8() "objectForKeyedSubscript:{"objectAtIndexedSubscript:", v28}")];
LABEL_28:
      OUTLINED_FUNCTION_90_3();
      return;
    }

    [MEMORY[0x1E696AD98] numberWithInt:v32];
    v37 = [OUTLINED_FUNCTION_28() arrayWithObject:?];
    if (*(v34 + 44) != v32)
    {
      [MEMORY[0x1E696AD98] numberWithInt:?];
      [OUTLINED_FUNCTION_28() addObject:?];
    }

    switch(v32)
    {
      case 4:
        v38 = &unk_1F22489D0;
        break;
      case 9:
        v38 = &unk_1F2248A00;
        break;
      case 8:
        v38 = &unk_1F22489E8;
        break;
      default:
LABEL_14:
        OUTLINED_FUNCTION_69_0();
        OUTLINED_FUNCTION_17_20();
        v43 = OUTLINED_FUNCTION_1_0(v39, v40, v41, v42);
        if (v43)
        {
          v44 = v43;
          v55 = v30;
          v56 = v28;
          v45 = 0;
          OUTLINED_FUNCTION_82_4();
          while (2)
          {
            for (i = 0; i != v44; ++i)
            {
              OUTLINED_FUNCTION_19_17();
              if (!v47)
              {
                objc_enumerationMutation(v37);
              }

              v48 = *(a28 + 8 * i);
              v49 = [objc_msgSend(*(v34 + 192) objectForKeyedSubscript:{v48), "count"}] + v45;
              v45 = v49 + [objc_msgSend(*(v34 + 200) objectForKeyedSubscript:{v48), "intValue"}];
              if (v45 > 1)
              {
                v54 = 1;
                goto LABEL_24;
              }
            }

            OUTLINED_FUNCTION_17_20();
            v44 = OUTLINED_FUNCTION_1_0(v50, v51, v52, v53);
            if (v44)
            {
              continue;
            }

            break;
          }

          v54 = 0;
LABEL_24:
          v30 = v55;
          v28 = v56;
          v35 = 0x1E696A000;
        }

        else
        {
          v54 = 0;
        }

        *v30 = v54;
        goto LABEL_27;
    }

    [v37 addObjectsFromArray:v38];
    goto LABEL_14;
  }
}

- (void)nextPreviewOutputForSourceDeviceType:(char)a3 intendedForVideoDataSinkPipeline:
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_124_3(a1, a2, 292);
  [MEMORY[0x1E696AD98] numberWithInt:v7];
  if (![OUTLINED_FUNCTION_37_0() objectForKeyedSubscript:?] || (objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2), objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_37_0(), "objectForKeyedSubscript:"), "count") <= v3))
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }

  [MEMORY[0x1E696AD98] numberWithInt:a2];
  v8 = [objc_msgSend(OUTLINED_FUNCTION_28() "objectForKeyedSubscript:{"objectAtIndexedSubscript:", v3}")];
  v9 = v8;
  if ((a3 & 1) == 0)
  {
    v10 = *(a1 + 56);
    if (v10)
    {
      v11 = *(v10 + 176);
      if (!v8)
      {
        return v9;
      }
    }

    else
    {
      v11 = 0;
      if (!v8)
      {
        return v9;
      }
    }

    v12 = [v11 requiredMinFrameRate];
    v14 = v13;
    v15 = [v11 requiredMaxFrameRate];
    if (FigCaptureFrameRateEqual(v12, v14, v15, v16))
    {
      v17 = BWGetMaximumDisplayFrequency();
      v18 = [objc_msgSend(v11 "requiredFormat")];
      if (v18 >= 1 && v18 <= v17)
      {
        v21 = [OUTLINED_FUNCTION_18_0() requiredMaxFrameRate];
        v23 = FigCaptureFrameRateAsInt(v21, v22);
        v17 = v23 / ((v12 + v23 - 1) / v12);
      }

      *&v19 = v17;
      [v9 setMaxSampleDataOutputRate:v19];
    }
  }

  return v9;
}

- (uint64_t)setSmartStyle:(uint64_t)result
{
  if (result)
  {
    v4 = OUTLINED_FUNCTION_36_13();
    v6 = [*(v5 + 568) allValues];
    result = OUTLINED_FUNCTION_134_2(v6, v7);
    if (result)
    {
      OUTLINED_FUNCTION_39_12();
      while (1)
      {
        OUTLINED_FUNCTION_49_7();
        if (!v8)
        {
          objc_enumerationMutation(v2);
        }

        [OUTLINED_FUNCTION_121_0() setSmartStyle:a2];
        OUTLINED_FUNCTION_120_0();
        if (v8)
        {
          result = OUTLINED_FUNCTION_13_26(v9, v10, v17, v11, v12, v13, v14, v15, v16);
          if (!result)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

- (uint64_t)getSmartStyle
{
  if (result)
  {
    v1 = [objc_msgSend(*(result + 568) "allValues")];

    return [v1 smartStyle];
  }

  return result;
}

- (uint64_t)loadInferenceNetworkForSmartStyle
{
  if (result)
  {
    v2 = OUTLINED_FUNCTION_72_3();
    v4 = [*(v3 + 568) allValues];
    result = [v4 countByEnumeratingWithState:v16 objects:v15 count:16];
    if (result)
    {
      OUTLINED_FUNCTION_74_4();
      do
      {
        v5 = 0;
        do
        {
          OUTLINED_FUNCTION_76_3();
          if (!v6)
          {
            objc_enumerationMutation(v4);
          }

          v7 = [*(v17 + 8 * v5++) loadInferenceNetwork];
        }

        while (v1 != v5);
        result = OUTLINED_FUNCTION_57(v7, v8, v9, v10, v11, v12, v13, v14, v15[0]);
        v1 = result;
      }

      while (result);
    }
  }

  return result;
}

- (uint64_t)registerAttachedSessionID:(uint64_t)result
{
  if (result)
  {
    v3 = [objc_msgSend(*(result + 72) "captureStream")];

    return [v3 registerAttachedSessionID:a2];
  }

  return result;
}

- (uint64_t)setMetadataObjectConnectionConfiguration:(uint64_t)a3 forSessionID:
{
  if (result)
  {
    v5 = result;
    v6 = *(result + 448);
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      *(v5 + 448) = v6;
    }

    return [v6 setObject:a2 forKeyedSubscript:a3];
  }

  return result;
}

- (uint64_t)metadataObjectConnectionConfigurationForSessionID:(uint64_t)result
{
  if (result)
  {
    return [*(result + 448) objectForKeyedSubscript:a2];
  }

  return result;
}

- (void)addMetadataOutputNetworksForSessionID:(uint64_t)a3 graph:(uint64_t)a4
{
  OUTLINED_FUNCTION_91();
  v46 = v30;
  if (v28)
  {
    v31 = v29;
    v32 = v28;
    v33 = [v28[56] objectForKeyedSubscript:v29];
    v34 = [(FigCaptureCameraSourcePipeline *)v32 metadataCategoriesForConnectionConfiguration:v33];
    v35 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v33, "underlyingDeviceType")}];
    v36 = [v34 countByEnumeratingWithState:OUTLINED_FUNCTION_9_35() objects:? count:?];
    if (v36)
    {
      v37 = v36;
      OUTLINED_FUNCTION_82_4();
      do
      {
        for (i = 0; i != v37; ++i)
        {
          OUTLINED_FUNCTION_19_17();
          if (!v39)
          {
            objc_enumerationMutation(v34);
          }

          v40 = *(a28 + 8 * i);
          v41 = [v32[55] objectForKeyedSubscript:v40];
          if (!v41)
          {
            v41 = [MEMORY[0x1E695DF90] dictionary];
          }

          if (![v41 objectForKeyedSubscript:v31])
          {
            [MEMORY[0x1E695DF90] dictionary];
            [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
          }

          if (![objc_msgSend(v41 objectForKeyedSubscript:{v31), "objectForKeyedSubscript:", v35}])
          {
            v42 = v34;
            v43 = [(FigCaptureCameraSourcePipeline *)v32 createOutputNetworkForOutput:v40 withFanOutCount:0 graph:v46 sessionID:v31];
            v44 = [v41 objectForKeyedSubscript:v31];
            v45 = v43;
            v34 = v42;
            [v44 setObject:v45 forKeyedSubscript:v35];
            [v32[55] setObject:v41 forKeyedSubscript:v40];
          }
        }

        OUTLINED_FUNCTION_17_20();
        v37 = [v34 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v37);
    }
  }

  OUTLINED_FUNCTION_90_3();
}

- (BWNodeOutput)createOutputNetworkForOutput:(uint64_t)a3 withFanOutCount:(void *)a4 graph:(uint64_t)a5 sessionID:
{
  if (!a1)
  {
    return 0;
  }

  v18 = 0;
  v10 = objc_alloc_init(BWNodeOutput);
  if (![a1[65] objectForKeyedSubscript:a2])
  {
    v11 = [[BWFanOutNode alloc] initWithFanOutCount:a3 mediaType:1835365473];
    [a1[65] setObject:v11 forKeyedSubscript:a2];
    BWMetadataCategoryToString([a2 intValue]);
    [OUTLINED_FUNCTION_15() setName:?];
    [a1 addNode:v11 error:&v18];
    if (v18)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      return v10;
    }

    [objc_msgSend(a1[9] "metadataOutputsByCategory")];
    v12 = [(BWNode *)v11 input];
    OUTLINED_FUNCTION_93_1(a4, v13, v14, v12);
  }

  v15 = [a1[65] objectForKeyedSubscript:a2];
  if (a3)
  {
    v16 = [v15 output];
  }

  else
  {
    v16 = [v15 addExtendedOutput];
  }

  v10 = v16;
  [(BWNodeOutput *)v16 setName:a5];
  return v10;
}

- (uint64_t)setMotionToWakeTargetFrameRate:(uint64_t)result
{
  if (result)
  {
    return [*(result + 72) setMotionToWakeTargetFrameRate:?];
  }

  return result;
}

- (uint64_t)setObjectDetectionTargetFrameRate:(uint64_t)result
{
  if (result)
  {
    return [*(result + 72) setObjectDetectionTargetFrameRate:?];
  }

  return result;
}

- (double)trueVideoCaptureAdditionalZoomFactorForPhotoGraphVideoZoomFactor:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 44);
  objc_opt_self();
  if (v4 == 1)
  {
    result = 1.18;
  }

  else if (v4 == 2)
  {
    result = dbl_1AD055E20[a2 > 1.1];
    if (v5 != 7)
    {
      result = 1.1;
    }
  }

  else
  {
    result = 1.0;
  }

  v7 = *(a1 + 48);
  if (v7 == 2)
  {
    if (*(a1 + 44) == 7)
    {
      return result * 1.02;
    }
  }

  else if (v7 == 1)
  {
    return result / 1.04761905;
  }

  return result;
}

- (float)trueVideoTransitionPreviousPhotoGraphZoomFactor
{
  result = 0.0;
  if (a1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      return *(v2 + 340);
    }
  }

  return result;
}

- (uint64_t)semanticStyleSceneObserver
{
  if (result)
  {
    v1 = [*(result + 568) allValues];

    return [v1 firstObject];
  }

  return result;
}

- (uint64_t)startIncrementalPrefetchingOfSourcePoolsIfNecessary
{
  if (result)
  {
    OUTLINED_FUNCTION_72_3();
    v3 = *(v2 + 64);
    result = OUTLINED_FUNCTION_57(v2, v4, v5, v6, v7, v8, v9, v10, v21);
    if (result)
    {
      OUTLINED_FUNCTION_74_4();
      do
      {
        v11 = 0;
        do
        {
          OUTLINED_FUNCTION_76_3();
          if (!v12)
          {
            objc_enumerationMutation(v3);
          }

          v13 = [*(v23 + 8 * v11++) startIncrementalPrefetchingOfSourcePoolsIfNecessary];
        }

        while (v1 != v11);
        result = OUTLINED_FUNCTION_57(v13, v14, v15, v16, v17, v18, v19, v20, v22);
        v1 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)setFaceFilteringDelegate:(void *)result
{
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_80();
  v4 = *(v3 + 80);
  if (v4)
  {
    if (*(v2 + 72))
    {
      [v4 setDetectedFacesFilterDelegate:v1];
    }

LABEL_7:
    result = *(v2 + 72);
    if (!result || !*(v2 + 88))
    {
      return result;
    }

    goto LABEL_9;
  }

  if (*(v2 + 88))
  {
    goto LABEL_7;
  }

  result = *(v2 + 72);
LABEL_9:

  return [result setDetectedFacesFilterDelegate:v1];
}

- (uint64_t)setCinematicVideoFocusDetectionsProvider:(uint64_t)result
{
  if (result)
  {
    return [*(result + 104) setCinematicVideoFocusDetectionsProvider:a2];
  }

  return result;
}

- (void)prepareForStillImageCaptureWithStillImageOutputRetainedBufferCountOverride:(uint64_t)a3 infraRedStillImageOutputRetainedBufferCountOverride:(uint64_t)a4 clientBracketCount:(uint64_t)a5 enableSushiRawAttachmentOption:(uint64_t)a6
{
  OUTLINED_FUNCTION_81_3();
  if (v34)
  {
    v35 = v33;
    v36 = v32;
    v37 = v31;
    v38 = v30;
    OUTLINED_FUNCTION_35_12();
    v40 = *(v39 + 64);
    OUTLINED_FUNCTION_47_0();
    v45 = OUTLINED_FUNCTION_21_10(v41, v42, v43, v44);
    if (v45)
    {
      v46 = v45;
      OUTLINED_FUNCTION_125_1();
      v47 = *off_1E798A0E8;
      while (2)
      {
        for (i = 0; i != v46; ++i)
        {
          OUTLINED_FUNCTION_32_10();
          if (!v49)
          {
            objc_enumerationMutation(v40);
          }

          v50 = *(a30 + 8 * i);
          if ([objc_msgSend(v50 "portType")])
          {
            v51 = v37;
          }

          else
          {
            v51 = v38;
          }

          if ([v50 prepareForStillImageCaptureWithFirmwareStillImageOutputRetainedBufferCountOverride:v51 clientBracketCount:v36 enableSushiRawAttachmentOption:v35])
          {
            OUTLINED_FUNCTION_1_5();
            FigDebugAssert3();
            goto LABEL_15;
          }
        }

        OUTLINED_FUNCTION_47_0();
        v46 = OUTLINED_FUNCTION_21_10(v52, v53, v54, v55);
        if (v46)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_80_3();
}

- (void)newConfigurationRequiresStreamRestart:tnrConfigurationChanged:newFormatIndexByPortTypeOut:
{
  OUTLINED_FUNCTION_60();
  v5 = v4;
  if (!v0)
  {
    goto LABEL_25;
  }

  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = v0;
  if (v1)
  {
    v10 = *(v1 + 176);
    v11 = *(v1 + 208);
    v174 = *(v1 + 216);
    v173 = *(v1 + 8);
    v12 = *(v1 + 130);
  }

  else
  {
    v173 = 0;
    v174 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  [v0 sourceID];
  [v10 sourceID];
  if (![OUTLINED_FUNCTION_17() isEqual:?])
  {
    goto LABEL_25;
  }

  if (FigCapturePlatformIdentifier() < 4)
  {
    goto LABEL_25;
  }

  v13 = [v10 sourceDeviceType];
  if (v13 > 0x14 || ((1 << v13) & 0x1E7FFC) == 0 || [v10 sourceDeviceType] == 10 && FigCapturePlatformIdentifier() < 10)
  {
    goto LABEL_25;
  }

  v176[0] = 0;
  Attribute = FigCaptureSourceGetAttribute([v10 source], @"DepthDataDeliveryConfigurations", v176);
  if (v176[0])
  {
    if ([OUTLINED_FUNCTION_16_24() depthDataDeliveryEnabled])
    {
      goto LABEL_25;
    }

    LOBYTE(v15) = 0;
LABEL_16:
    if ([v10 depthDataDeliveryEnabled] && (v15 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  v15 = [objc_msgSend(Attribute objectForKeyedSubscript:{@"FastModeSwitchingSupported", "BOOLValue"}];
  if (([OUTLINED_FUNCTION_16_24() depthDataDeliveryEnabled] & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!v15)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (![OUTLINED_FUNCTION_16_24() synchronizedStreamsGroup] || (!v8 ? (v16 = 0) : (v16 = *(v8 + 147)), ((v16 ^ objc_msgSend(OUTLINED_FUNCTION_16_24(), "midFrameSynchronizationEnabled")) & 1) == 0 && ((v17 = objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_16_24(), "synchronizedStreamsGroup"), "syncGroup"), "synchronizationMaster"), v18 = OUTLINED_FUNCTION_16_24(), !v8) ? (v19 = 0) : (v19 = *(v8 + 147)), v17 == objc_msgSend(objc_msgSend(v18, "synchronizationPrimaryForMidFrameSynchronizationEnabled:", v19 & 1), "stream"))))
  {
    v168 = [v10 bravoShiftMitigationEnabled];
    v20 = [v10 cinematicFramingEnabled];
    v21 = [v10 deskCamEnabled];
    v22 = 1;
    if ((v20 & 1) == 0 && (v21 & 1) == 0)
    {
      v22 = [v10 manualCinematicFramingEnabled];
    }

    v169 = [v10 cinematicFramingEnabled] ? objc_msgSend(objc_msgSend(v10, "requiredFormat"), "isSmartCropSupported") : 0;
    v148 = v9;
    v133 = v6;
    v23 = [v10 requiredFormat];
    v171 = v22;
    if (v8)
    {
      v24 = *(v8 + 200);
      v25 = *(v8 + 224);
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    shouldApplyCropFromVideoDataOutput = csp_shouldApplyCropFromVideoDataOutput(v8);
    v27 = csp_videoCaptureDimensionsFromConnectionConfigurations(v23, v174, v11, v24, v25, v171, shouldApplyCropFromVideoDataOutput, [v10 outputAspectRatio], v169);
    csp_shouldUseFESCompanionIndex(v10, v11, v27, v28, v29, v30, v31, v32, v114, v116, v118, v120, v122, v124, v126, v128, v5, v7, v133, v136, v139, v142, obj, v148, v151, v153, v155, v159, v162, v164);
    v172 = v33;
    csp_shouldUseDepthCompanionIndex(v10, v11, v27, v34, v35, v36, v37, v38, v115, v117, v119, v121, v123, v125, v127, v129, v130, v131, v134, v137, v140, v143, objb, v149, v152, v154, v156, v160);
    v167 = v39;
    v40 = v8 ? *(v8 + 24) : 0;
    v41 = v135;
    shouldUseActionCameraCompanionIndex = csp_shouldUseActionCameraCompanionIndex(v10, v11, v40 & 1);
    v42 = (v174 == 0) | csp_shouldCaptureStillsFromVideoStream(v10, [v10 requiredFormat], v172, v174 != 0);
    if (v12 & 1 | ((v42 & 1) == 0))
    {
      v43 = (v12 & 1) != 0 ? 4 : 1;
      v158 = v43;
      v170 = v8 ? *(v8 + 131) : 0;
    }

    else
    {
      v170 = 0;
      v158 = 0;
    }

    v44 = [objc_msgSend(v174 "irisSinkConfiguration")];
    if (v44 == [OUTLINED_FUNCTION_16_24() bravoConstituentPhotoDeliveryEnabled])
    {
      v45 = [objc_msgSend(OUTLINED_FUNCTION_16_24() "captureStreams")];
      v46 = [OUTLINED_FUNCTION_16_24() isBravoVariant];
      if (v8)
      {
        v47 = *(v8 + 143);
        v48 = *(v8 + 144);
      }

      else
      {
        OUTLINED_FUNCTION_130_1();
      }

      if ((v46 & (v47 | v12 & v48)) != 0)
      {
        v49 = 2;
      }

      else
      {
        v49 = 1;
      }

      if (!v44)
      {
        v45 = v49;
      }

      if ([OUTLINED_FUNCTION_16_24() numberOfActiveTimeMachines] == v45)
      {
        v50 = v8 ? *(v8 + 216) : 0;
        v51 = [objc_msgSend(v50 "irisSinkConfiguration")];
        if (v51 == [OUTLINED_FUNCTION_16_24() ultraHighResolutionZeroShutterLagSupportEnabled])
        {
          if (v8)
          {
            v157 = *(v8 + 131);
          }

          else
          {
            v157 = 0;
          }

          if ([objc_msgSend(v10 "requiredFormat")])
          {
            BWColorSpaceIsHDR([v10 colorSpace]);
          }

          if (v8)
          {
            v52 = *(v8 + 136) != 0.0;
          }

          else
          {
            v52 = 0;
          }

          if ([OUTLINED_FUNCTION_16_24() overCaptureEnabled])
          {
            v53 = 1;
          }

          else
          {
            v53 = [OUTLINED_FUNCTION_16_24() allocateResourcesCompatibleWithOverCapture];
          }

          if (v8)
          {
            v54 = v52;
          }

          else
          {
            v54 = 1;
          }

          if ((v54 & 1) == 0)
          {
            v52 = *(v8 + 140);
          }

          if (v53 == v52)
          {
            v55 = ([OUTLINED_FUNCTION_16_24() digitalFlashEnabled] & 1) != 0 ? 1 : objc_msgSend(OUTLINED_FUNCTION_16_24(), "digitalFlashMetadataEnabled");
            v56 = v8 && (*(v8 + 141) & 1) != 0 ? 1 : [objc_msgSend(v174 "irisSinkConfiguration")];
            if (v55 == v56)
            {
              v57 = [objc_msgSend(*(v150 + 72) "configuration")];
              if (v8)
              {
                if (v57 != *(v8 + 122))
                {
                  goto LABEL_25;
                }

                v58 = [OUTLINED_FUNCTION_16_24() timeOfFlightProjectorMode];
                v59 = *(v8 + 256);
              }

              else
              {
                if (v57)
                {
                  goto LABEL_25;
                }

                v58 = [*(v150 + 456) timeOfFlightProjectorMode];
                v59 = 0;
                v41 = v135;
              }

              if (v58 == csp_projectorModeFromPointCloudDataConnectionConfigurations(v59))
              {
                v60 = [v10 lockedFrameRate];
                IsValidRational = FigCaptureFrameRateIsValidRational(v60, v61);
                if (!IsValidRational)
                {
                  v63 = !IsValidRational;
                  [v10 lockedFrameRate];
                  v64 = [objc_msgSend(OUTLINED_FUNCTION_16_24() "captureStream")];
                  if ((OUTLINED_FUNCTION_95_5(v64, v65) & v63 & 1) == 0)
                  {
                    v66 = [v10 externalSyncFrameRate];
                    if (!FigCaptureFrameRateIsValidRational(v66, v67))
                    {
                      [v10 externalSyncFrameRate];
                      v68 = [objc_msgSend(OUTLINED_FUNCTION_16_24() "captureStream")];
                      if ((OUTLINED_FUNCTION_95_5(v68, v69) & v63 & 1) == 0)
                      {
                        v70 = [OUTLINED_FUNCTION_16_24() temporalNoiseReductionBand0Disabled];
                        v71 = [objc_msgSend(v10 "requiredFormat")];
                        v72 = [OUTLINED_FUNCTION_16_24() temporalNoiseReductionRawEnabled];
                        v73 = v72 ^ [objc_msgSend(v10 "requiredFormat")];
                        if (v8)
                        {
                          v165 = *(v8 + 133);
                          if ((v42 & v165) == 1)
                          {
                            v165 = *(v8 + 142);
                          }
                        }

                        else
                        {
                          v165 = 0;
                        }

                        v74 = v73 | v70 ^ v71;
                        v141 = [MEMORY[0x1E695DF90] dictionary];
                        OUTLINED_FUNCTION_73_2();
                        OUTLINED_FUNCTION_117_2();
                        obja = v75;
                        v163 = [v75 countByEnumeratingWithState:? objects:? count:?];
                        if (v163)
                        {
                          v144 = v74 & 1;
                          OUTLINED_FUNCTION_23_14();
                          v161 = v76;
                          v138 = *off_1E798C998;
LABEL_91:
                          v77 = 0;
                          while (1)
                          {
                            OUTLINED_FUNCTION_23_14();
                            if (v78 != v161)
                            {
                              objc_enumerationMutation(obja);
                            }

                            v79 = *(v175 + 8 * v77);
                            [v10 source];
                            [v10 requiredFormat];
                            [OUTLINED_FUNCTION_45_1() portType];
                            v80 = OUTLINED_FUNCTION_3_19();
                            v84 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType(v80, v81, v82, v83);
                            if (v176[0])
                            {
                              break;
                            }

                            v85 = v84;
                            if (!v84)
                            {
                              break;
                            }

                            [objc_msgSend(v79 "captureStream")];
                            v86 = OUTLINED_FUNCTION_114_2();
                            if (v8)
                            {
                              shouldUseFullBinSIFRCompanionIndex = csp_shouldUseFullBinSIFRCompanionIndex(v86, v87, v88, v89, v90);
                              v92 = *(v8 + 147);
                              v93 = *(v8 + 354);
                            }

                            else
                            {
                              shouldUseFullBinSIFRCompanionIndex = csp_shouldUseFullBinSIFRCompanionIndex(v86, v87, v88, v89, 0);
                              v92 = 0;
                              v93 = 0;
                            }

                            v94 = [v10 sensorHDREnabled];
                            v95 = [v10 highlightRecoveryEnabled];
                            [v10 geometricDistortionCorrectionEnabled];
                            if (v8)
                            {
                              v96 = *(v8 + 36) > 0.0;
                            }

                            else
                            {
                              v96 = 0;
                            }

                            v97 = csp_formatIndex(v85, v172, v167, 0, shouldUseActionCameraCompanionIndex, shouldUseFullBinSIFRCompanionIndex, v92 & 1, v93 & 1, v168, v94, v95, v96, 0, 0, 0, 0, 0, 0);
                            if ([objc_msgSend(v79 "captureStream")] && objc_msgSend(v85, "isFastSwitchingConfigurationRequired") && objc_msgSend(objc_msgSend(v79, "configuration"), "fastSwitchingNondisruptiveFormatIndices"))
                            {
                              if (v97 != [objc_msgSend(v79 "configuration")])
                              {
                                [objc_msgSend(v79 "captureStream")];
                                v98 = [v94 objectAtIndexedSubscript:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_45_1(), "configuration"), "formatIndex")}];
                                [v98 objectForKeyedSubscript:v138];
                                [MEMORY[0x1E696AD98] numberWithInt:v97];
                                if (![OUTLINED_FUNCTION_24_1() containsObject:?])
                                {
                                  goto LABEL_25;
                                }

                                v99 = csp_formatUsesFES(v98);
                                if (v99 != csp_formatUsesFES([objc_msgSend(objc_msgSend(v79 "captureStream")]))
                                {
                                  goto LABEL_25;
                                }

                                v100 = v144;
                                if ((v144 & 1) == 0)
                                {
                                  v100 = 1;
                                }

                                v144 = v100;
                                [MEMORY[0x1E696AD98] numberWithInt:v97];
                                [v141 setObject:v99 forKeyedSubscript:{objc_msgSend(OUTLINED_FUNCTION_45_1(), "portType")}];
                              }
                            }

                            else
                            {
                              [objc_msgSend(*(v150 + 72) "captureStream")];
                              v102 = v101;
                              [v10 maxFrameRateClientOverride];
                              if (v102 != v103 || v97 != [objc_msgSend(v79 "configuration")])
                              {
                                goto LABEL_25;
                              }
                            }

                            if (v173 != [objc_msgSend(v79 "configuration")] || v165 != objc_msgSend(objc_msgSend(v79, "configuration"), "sensorRawStillImageOutputEnabled"))
                            {
                              goto LABEL_25;
                            }

                            if ([objc_msgSend(v79 "configuration")] && (objc_msgSend(objc_msgSend(v79, "configuration"), "usesFirmwareStillImageOutput") & 1) != 0 || objc_msgSend(objc_msgSend(v79, "configuration"), "forceFirmwareStillImageOutputEnabled"))
                            {
                              if (v158 != [objc_msgSend(v79 "configuration")])
                              {
                                goto LABEL_25;
                              }

                              v104 = [objc_msgSend(v79 "configuration")];
                              v105 = 1;
                            }

                            else
                            {
                              if (v158)
                              {
                                goto LABEL_25;
                              }

                              v105 = 0;
                              v104 = 0;
                            }

                            if (v104 != (v170 & 1) || ([objc_msgSend(v79 "configuration")] & 1) != 0)
                            {
                              goto LABEL_25;
                            }

                            v106 = v105 ? [objc_msgSend(v79 "configuration")] : 0;
                            if (v157 != v106 || ([objc_msgSend(v79 "captureStream")] & 1) != 0)
                            {
                              goto LABEL_25;
                            }

                            v107 = [objc_msgSend(v79 "configuration")];
                            if (v8)
                            {
                              if (v107 != *(v8 + 127))
                              {
                                goto LABEL_25;
                              }
                            }

                            else if (v107)
                            {
                              goto LABEL_25;
                            }

                            v108 = [objc_msgSend(v79 "configuration")];
                            if (v8)
                            {
                              if (v108 != *(v8 + 272))
                              {
                                goto LABEL_25;
                              }
                            }

                            else if (v108)
                            {
                              goto LABEL_25;
                            }

                            if (FigCaptureSourceGetBoolAttribute([v10 source], @"GeometricDistortionCorrectionExpandsImageDimensions", 0))
                            {
                              v109 = [objc_msgSend(v79 "configuration")];
                              if (v8)
                              {
                                if (v109 != *(v8 + 125))
                                {
                                  goto LABEL_25;
                                }
                              }

                              else if (v109)
                              {
                                goto LABEL_25;
                              }

                              v110 = [objc_msgSend(v79 "configuration")];
                              if (v8)
                              {
                                if (v110 != *(v8 + 124))
                                {
                                  goto LABEL_25;
                                }
                              }

                              else if (v110)
                              {
                                goto LABEL_25;
                              }

                              v111 = [objc_msgSend(v79 "configuration")];
                              if (v8)
                              {
                                if (v111 != *(v8 + 123))
                                {
                                  goto LABEL_25;
                                }
                              }

                              else if (v111)
                              {
                                goto LABEL_25;
                              }
                            }

                            if ([objc_msgSend(v79 "configuration")])
                            {
                              goto LABEL_25;
                            }

                            if (v163 == ++v77)
                            {
                              OUTLINED_FUNCTION_117_2();
                              v112 = [obja countByEnumeratingWithState:? objects:? count:?];
                              v163 = v112;
                              if (!v112)
                              {
                                v41 = v135;
                                v74 = v144;
                                goto LABEL_155;
                              }

                              goto LABEL_91;
                            }
                          }

                          OUTLINED_FUNCTION_0();
                          FigDebugAssert3();
                        }

                        else
                        {
LABEL_155:
                          if (!v132)
                          {
                            OUTLINED_FUNCTION_0();
                            FigDebugAssert3();
                          }

                          *v132 = v74 & 1;
                          if ([v141 count])
                          {
                            v113 = v141;
                          }

                          else
                          {
                            v113 = 0;
                          }

                          *v41 = v113;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_128_0();
}

- (void)nondisruptiveSwitchingFormatIndicesByPortTypeForConfiguration:
{
  OUTLINED_FUNCTION_60();
  if (v1)
  {
    OUTLINED_FUNCTION_54();
    v50 = [MEMORY[0x1E695DF90] dictionary];
    v2 = v0 ? *(v0 + 176) : 0;
    OUTLINED_FUNCTION_71_2();
    OUTLINED_FUNCTION_118_2();
    v48 = OUTLINED_FUNCTION_145(v3, v4, v5, v6);
    if (v48)
    {
      OUTLINED_FUNCTION_23_14();
      v45 = v7;
      v8 = *off_1E798C960;
      v52 = *off_1E798C958;
      v43 = *(MEMORY[0x1E695F058] + 16);
      v44 = *MEMORY[0x1E695F058];
      v46 = v2;
      v47 = v0;
      do
      {
        v9 = 0;
        do
        {
          OUTLINED_FUNCTION_23_14();
          if (v10 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(v56 + 8 * v9);
          v12 = [objc_msgSend(v11 "configuration")];
          v51 = v11;
          v13 = [objc_msgSend(v11 "captureStream")];
          if (v0 && *(v0 + 129) == 1)
          {
            [objc_msgSend(*(v0 + 216) "irisSinkConfiguration")];
          }

          [objc_msgSend(v2 "requiredFormat")];
          csp_activeStreamingNondisruptiveSwitchingFormatIndices();
          v15 = v14;
          v54[4] = v44;
          v55 = v43;
          v16 = [v13 objectAtIndexedSubscript:v12];
          if (FigCFDictionaryGetCGRectIfPresent())
          {
            v17 = *&v55;
          }

          else
          {
            v17 = 0.0;
          }

          v49 = v9;
          if ([objc_msgSend(v16 objectForKeyedSubscript:{v8), "BOOLValue"}])
          {
            v18 = [objc_msgSend(v16 objectForKeyedSubscript:{v52), "intValue"}];
          }

          else
          {
            v18 = 0;
          }

          v19 = [objc_msgSend(v2 "requiredFormat")];
          if (v19 <= 0 || v18 <= 0)
          {
            v21 = v18;
          }

          else
          {
            v21 = v19;
          }

          v22 = csp_formatUsesFES(v16);
          v23 = v22;
          memset(v54, 0, 64);
          v25 = OUTLINED_FUNCTION_52(v22, v24, v54, v53);
          if (v25)
          {
            v26 = v25;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                OUTLINED_FUNCTION_21_20();
                if (!v32)
                {
                  objc_enumerationMutation(v15);
                }

                v28 = *(*(&v54[0] + 1) + 8 * i);
                v29 = [v13 objectAtIndexedSubscript:{objc_msgSend(v28, "intValue")}];
                CGRectIfPresent = [objc_msgSend(v29 objectForKeyedSubscript:{v8), "BOOLValue"}];
                if (CGRectIfPresent)
                {
                  CGRectIfPresent = [objc_msgSend(v29 objectForKeyedSubscript:{v52), "intValue"}];
                }

                if (v21 == CGRectIfPresent)
                {
                  CGRectIfPresent = csp_formatUsesFES(v29);
                  if (v23 == CGRectIfPresent)
                  {
                    CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
                    if (CGRectIfPresent)
                    {
                      v32 = *&v55 == v17;
                    }

                    else
                    {
                      v32 = 0;
                    }

                    if (v32)
                    {
                      CGRectIfPresent = [v50 setObject:v28 forKeyedSubscript:{objc_msgSend(v51, "portType", *&v55)}];
                    }
                  }
                }
              }

              v26 = OUTLINED_FUNCTION_52(CGRectIfPresent, v31, v54, v53);
            }

            while (v26);
          }

          ++v9;
          v2 = v46;
          v0 = v47;
        }

        while (v49 + 1 != v48);
        OUTLINED_FUNCTION_118_2();
        v48 = OUTLINED_FUNCTION_94_1(v33, v34, v35, v36, v37, v38, v39, v40, v41, obj);
      }

      while (v48);
    }
  }

  OUTLINED_FUNCTION_128_0();
}

- (uint64_t)setBlackenFramesForContinuityDisplayConnected:(uint64_t)result
{
  if (result)
  {
    v4 = OUTLINED_FUNCTION_36_13();
    v6 = [*(v5 + 456) captureStreams];
    result = OUTLINED_FUNCTION_134_2(v6, v7);
    if (result)
    {
      OUTLINED_FUNCTION_39_12();
      while (1)
      {
        OUTLINED_FUNCTION_49_7();
        if (!v8)
        {
          objc_enumerationMutation(v2);
        }

        [OUTLINED_FUNCTION_121_0() setBlackenFramesForContinuityDisplayConnected:a2];
        OUTLINED_FUNCTION_120_0();
        if (v8)
        {
          result = OUTLINED_FUNCTION_13_26(v9, v10, v17, v11, v12, v13, v14, v15, v16);
          if (!result)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

- (uint64_t)setKeepISPStreamingWhenStopping:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_36_13();
    v4 = *(v3 + 64);
    result = OUTLINED_FUNCTION_13_26(v3, v5, v21, v6, v7, v8, v9, v10, v19);
    if (result)
    {
      OUTLINED_FUNCTION_39_12();
      while (1)
      {
        OUTLINED_FUNCTION_49_7();
        if (!v11)
        {
          objc_enumerationMutation(v4);
        }

        [OUTLINED_FUNCTION_121_0() setKeepISPStreamingWhenStopping:a2];
        OUTLINED_FUNCTION_120_0();
        if (v11)
        {
          result = OUTLINED_FUNCTION_13_26(v12, v13, v21, v14, v15, v16, v17, v18, v20);
          if (!result)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

- (uint64_t)setDisableTemporalNoiseReductionWhenStopping:(uint64_t)result
{
  if (result)
  {
    return [*(result + 456) setDisableTemporalNoiseReductionWhenStopping:a2];
  }

  return result;
}

- (void)setCinematicFramingControlsWhileRunning:(float)a3 panningAngleX:(float)a4 panningAngleY:(float)a5 videoZoomFactor:(double)a6 manualFramingDefaultZoomFactor:
{
  if (a1)
  {
    v10 = a2;
    v68[0] = 0;
    [*(a1 + 456) setCinematicFramingEnabled:a2];
    if ([*(a1 + 472) isCinematicFramingProvidedBySource])
    {
LABEL_22:

      return;
    }

    [OUTLINED_FUNCTION_46_11() setManualCinematicFramingEnabled:v10 ^ 1u];
    [objc_msgSend(OUTLINED_FUNCTION_46_11() "manualCinematicFramingDelegate")];
    v12 = *(a1 + 464);
    *&v13 = a5;
    v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v15)
    {
      v15(v12, @"VideoZoomFactor", v14);
    }

    [objc_msgSend(OUTLINED_FUNCTION_46_11() "manualCinematicFramingDelegate")];
    CenterStageFramingMode = csp_getCenterStageFramingMode(*(a1 + 464));
    [objc_msgSend(OUTLINED_FUNCTION_46_11() "subjectSelectionDelegate")];
    CinematicFramingFieldOfViewRestrictedToWide = csp_getCinematicFramingFieldOfViewRestrictedToWide(*(a1 + 464));
    csp_getCenterStageRectOfInterest(*(a1 + 464));
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = *(a1 + 464);
    v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    v50 = v21;
    v51 = v23;
    v49 = v19;
    if (v27 && (v27(v26, @"AttributesDictionary", *MEMORY[0x1E695E480], v68), v68[0]))
    {
      v28 = v25;
      v29 = a6;
      v30 = a5;
      v31 = [v68[0] objectForKeyedSubscript:@"CinematicFramingVirtualCameraConfiguration"];
      v32 = v31;
      if (v31)
      {
        v33 = a3;
        v34 = a4;
        v48 = [objc_msgSend(v31 objectForKeyedSubscript:{@"FishEyeEffectEnabled", "BOOLValue"}];
        v35 = 0;
        goto LABEL_11;
      }

      v33 = a3;
      v34 = a4;
    }

    else
    {
      v28 = v25;
      v29 = a6;
      v30 = a5;
      v33 = a3;
      v34 = a4;
      v32 = 0;
    }

    v35 = 1;
    v48 = 1;
LABEL_11:
    v36 = [v32 objectForKeyedSubscript:@"DefaultVirtualCameraRotationAngleX"];
    v37 = [v32 objectForKeyedSubscript:@"DefaultVirtualCameraRotationAngleY"];
    v38 = [v32 objectForKeyedSubscript:@"DefaultVirtualCameraRotationAngleZ"];
    v39 = 0;
    v40 = 0;
    if (v36)
    {
      [v36 floatValue];
      v40 = v41;
    }

    if (v37)
    {
      [v37 floatValue];
      v39 = v42;
    }

    if (v38)
    {
      [v38 floatValue];
      v44 = v43;
      if (v35)
      {
LABEL_18:
        v46 = OUTLINED_FUNCTION_46_11();
        if (v10)
        {
          v47 = [v46 manualCinematicFramingDelegate];
        }

        else
        {
          v47 = [v46 centerStageDelegate];
        }

        v52[0] = v10;
        v52[1] = v48;
        v52[2] = CinematicFramingFieldOfViewRestrictedToWide;
        v53 = 0;
        v54 = 0;
        v55 = v49;
        v56 = v50;
        v57 = v51;
        v58 = v28;
        v59 = CenterStageFramingMode;
        v60 = v30;
        v61 = v33;
        v62 = v34;
        v63 = v29;
        v64 = v40;
        v65 = v39;
        v66 = v44;
        v67 = 0;
        [v47 setCinematicFramingControls:v52];
        goto LABEL_22;
      }
    }

    else
    {
      v44 = 0;
      if (v35)
      {
        goto LABEL_18;
      }
    }

    [objc_msgSend(v32 objectForKeyedSubscript:{@"ManualFramingDefaultZoomFactor", "floatValue"}];
    v29 = v45;
    goto LABEL_18;
  }
}

- (void)setBackgroundBlurNodePropertiesWhileRunning:(uint64_t)a1 studioLightingEnabled:reactionEffectsEnabled:backgroundReplacementEnabled:
{
  if (a1)
  {
    OUTLINED_FUNCTION_60();
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [*(v9 + 456) setBackgroundBlurEnabled:v7];
    [OUTLINED_FUNCTION_25_13() setStudioLightingEnabled:v6];
    [OUTLINED_FUNCTION_25_13() setReactionEffectsEnabled:v4];
    [OUTLINED_FUNCTION_25_13() setBackgroundReplacementEnabled:v2];
    [*(v10 + 160) allValues];
    OUTLINED_FUNCTION_118_2();
    v47 = OUTLINED_FUNCTION_145(v11, v12, v13, v14);
    if (v47)
    {
      OUTLINED_FUNCTION_23_14();
      v46 = v15;
      v45 = v4 | v2 | v6 | v8;
      v16 = v8;
      if (v6)
      {
        v16 = v8 | 2;
      }

      if (v4)
      {
        v16 |= 0x10uLL;
      }

      if (v2)
      {
        v16 |= 0x40uLL;
      }

      v44 = v16;
      do
      {
        v17 = 0;
        do
        {
          OUTLINED_FUNCTION_23_14();
          if (v18 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v48 = v17;
          v19 = *(v57 + 8 * v17);
          [v19 setEffectBypassed:v45 ^ 1u];
          [v19 setActiveBlurEffect:v44];
          memset(v56, 0, 64);
          v50 = [OUTLINED_FUNCTION_25_13() captureStreams];
          v20 = [v50 countByEnumeratingWithState:v56 objects:v55 count:16];
          if (v20)
          {
            v21 = v20;
            do
            {
              v22 = 0;
              v49 = v21;
              do
              {
                OUTLINED_FUNCTION_10_18();
                if (!v23)
                {
                  objc_enumerationMutation(v50);
                }

                v24 = *(*(&v56[0] + 1) + 8 * v22);
                if ([objc_msgSend(v24 "stream")])
                {
                  v54 = 0;
                  v52 = 0u;
                  v53 = 0u;
                  LOBYTE(v52) = [v24 pixelFormatIsTenBit];
                  [v24 maximumSupportedFrameRate];
                  DWORD1(v52) = v25;
                  BYTE8(v52) = [v24 highlightRecoveryEnabled];
                  HIDWORD(v52) = [v24 sensorDimensions];
                  LODWORD(v53) = [v24 sensorDimensions] >> 32;
                  DWORD1(v53) = [v24 videoCaptureDimensions];
                  DWORD2(v53) = [v24 videoCaptureDimensions] >> 32;
                  BYTE12(v53) = [OUTLINED_FUNCTION_25_13() backgroundBlurEnabled];
                  BYTE13(v53) = [OUTLINED_FUNCTION_25_13() studioLightingEnabled];
                  BYTE14(v53) = [OUTLINED_FUNCTION_25_13() reactionEffectsEnabled];
                  HIBYTE(v53) = [OUTLINED_FUNCTION_25_13() backgroundReplacementEnabled];
                  LOBYTE(v54) = [OUTLINED_FUNCTION_25_13() cinematicFramingEnabled];
                  if (v24)
                  {
                    [v24 clientAuditToken];
                  }

                  else
                  {
                    memset(v51, 0, sizeof(v51));
                  }

                  PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(v51);
                  v27 = [OUTLINED_FUNCTION_25_13() applicationID];
                  v28 = *(v10 + 44);
                  v29 = [v24 portType];
                  v30 = [MEMORY[0x1E695DF00] date];
                  [v24 averageFrameRate];
                  v32 = v31;
                  [v24 continuityCameraIsWired];
                  v33 = [OUTLINED_FUNCTION_84_4() isDeskCamActive];
                  FigCaptureLogCameraStreamingPowerEvent(PIDFromAuditToken, v27, v28, 1, v29, v30, &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn, v33, v32, &v52);
                  v21 = v49;
                }

                ++v22;
              }

              while (v21 != v22);
              v21 = [v50 countByEnumeratingWithState:v56 objects:v55 count:16];
            }

            while (v21);
          }

          v17 = v48 + 1;
        }

        while (v48 + 1 != v47);
        OUTLINED_FUNCTION_118_2();
        v47 = OUTLINED_FUNCTION_94_1(v34, v35, v36, v37, v38, v39, v40, v41, v42, obj);
      }

      while (v47);
    }

    OUTLINED_FUNCTION_128_0();
  }
}

- (void)setStreamsSuspendedBySourceDeviceType:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_80();
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = *(v3 + 64);
    v30 = [obj countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v30)
    {
      v28 = *off_1E798A0C0;
      v29 = *v35;
      v24 = *off_1E798A0D8;
      v26 = v2;
      v27 = *off_1E798A0D0;
      v22 = *off_1E798A0F8;
      v23 = *off_1E798A0E0;
      v21 = *off_1E798A0E8;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v34 + 1) + 8 * i);
          v6 = [v5 portType];
          v7 = [v6 isEqualToString:v28];
          v9 = &unk_1F2248A18;
          if ((v7 & 1) == 0)
          {
            v7 = [v6 isEqualToString:v24];
            v9 = &unk_1F2248A30;
            if ((v7 & 1) == 0)
            {
              v7 = [v6 isEqualToString:v27];
              v9 = &unk_1F2248A48;
              if ((v7 & 1) == 0)
              {
                v7 = [v6 isEqualToString:v23];
                v9 = &unk_1F2248A60;
                if ((v7 & 1) == 0)
                {
                  v7 = [v6 isEqualToString:v22];
                  v9 = &unk_1F2248A78;
                  if ((v7 & 1) == 0)
                  {
                    v7 = [v6 isEqualToString:v21];
                    v9 = &unk_1F2248A90;
                    if (!v7)
                    {
                      continue;
                    }
                  }
                }
              }
            }
          }

          memset(v32, 0, sizeof(v32));
          v10 = OUTLINED_FUNCTION_21_10(v7, v8, v32, v31);
          if (v10)
          {
            v11 = v10;
            v12 = 1;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                OUTLINED_FUNCTION_21_20();
                if (!v14)
                {
                  objc_enumerationMutation(v9);
                }

                v15 = [*(*(&v32[0] + 1) + 8 * j) intValue];
                [MEMORY[0x1E696AD98] numberWithInt:v15];
                v16 = [OUTLINED_FUNCTION_17() objectForKeyedSubscript:?];
                if (v16)
                {
                  [MEMORY[0x1E696AD98] numberWithInt:v15];
                  v16 = [objc_msgSend(OUTLINED_FUNCTION_17() "objectForKeyedSubscript:"BOOLValue"")];
                  v12 &= v16;
                }
              }

              v11 = OUTLINED_FUNCTION_21_10(v16, v17, v32, v31);
            }

            while (v11);
          }

          else
          {
            v12 = 1;
          }

          v18 = [v5 captureStream];
          if ([v18 suspendingSupported])
          {
            [v18 setSuspended:v12 & 1];
          }

          v19 = [objc_msgSend(v1 objectForKeyedSubscript:{&unk_1F2244818), "BOOLValue"}];
          if ((([objc_msgSend(*(v26 + 456) "applicationID")] & 1) != 0 || objc_msgSend(objc_msgSend(*(v26 + 456), "applicationID"), "isEqualToString:", 0x1F2185250)) && objc_msgSend(objc_msgSend(v5, "portType"), "isEqualToString:", v27) && *(v26 + 544))
          {
            [v18 setDeskCamActive:v19 ^ 1];
          }

          v20 = *(v26 + 544);
          if (v20)
          {
            [objc_msgSend(objc_msgSend(objc_msgSend(v20 "input")];
            [*(v26 + 456) setDeskCamActive:v19 ^ 1];
            if ([v1 objectForKeyedSubscript:&unk_1F22447A0])
            {
              [*(v26 + 456) setUltraWideActive:{objc_msgSend(objc_msgSend(v1, "objectForKeyedSubscript:", &unk_1F22447A0), "BOOLValue") ^ 1}];
            }
          }
        }

        v30 = [obj countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v30);
    }

    OUTLINED_FUNCTION_81();
  }
}

- (BOOL)requiresMasterClock
{
  if (result)
  {
    return [*(result + 120) count] != 0;
  }

  return result;
}

- (uint64_t)setMasterClock:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_36_13();
    v4 = *(v3 + 120);
    result = OUTLINED_FUNCTION_13_26(v3, v5, v21, v6, v7, v8, v9, v10, v19);
    if (result)
    {
      OUTLINED_FUNCTION_39_12();
      while (1)
      {
        OUTLINED_FUNCTION_49_7();
        if (!v11)
        {
          objc_enumerationMutation(v4);
        }

        [OUTLINED_FUNCTION_121_0() setMasterClock:a2];
        OUTLINED_FUNCTION_120_0();
        if (v11)
        {
          result = OUTLINED_FUNCTION_13_26(v12, v13, v21, v14, v15, v16, v17, v18, v20);
          if (!result)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

- (uint64_t)clock
{
  if (result)
  {
    return [*(result + 72) clock];
  }

  return result;
}

- (uint64_t)setPreviewShift:(double)a3 previewScaleFactor:(double)a4 forPortType:(float)a5 previewShiftAtBaseZoom:(double)a6
{
  if (result)
  {
    OUTLINED_FUNCTION_1_13();
    v16 = *(v15 + 64);
    result = OUTLINED_FUNCTION_1_3(v15, v17, v18, v19, v20, v21, v22, v23, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75);
    if (result)
    {
      OUTLINED_FUNCTION_37_9();
      while (1)
      {
        OUTLINED_FUNCTION_4_10();
        if (v32 != v8)
        {
          objc_enumerationMutation(v16);
        }

        if ([objc_msgSend(OUTLINED_FUNCTION_31_13(v24 v25])
        {
          break;
        }

        OUTLINED_FUNCTION_51_11();
        if (v42)
        {
          result = OUTLINED_FUNCTION_1_3(v34, v35, v36, v37, v38, v39, v40, v41, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76);
          if (!result)
          {
            return result;
          }
        }
      }

      *&v33 = a5;
      return [v7 setPreviewShift:a3 previewScaleFactor:a4 previewShiftAtBaseZoom:{v33, a6, a7}];
    }
  }

  return result;
}

- (uint64_t)setVideoHDRImageStatisticsEnabled:(uint64_t)result
{
  if (result)
  {
    if (*(result + 513) != a2)
    {
      *(result + 513) = a2;
      return [*(result + 456) setVideoHDRImageStatisticsEnabled:a2];
    }
  }

  return result;
}

- (id)_addDepthFromInfraredSynchronizer:(void *)a3 previewOutputsBySourceDeviceType:(uint64_t)a4 pipelineConfiguration:(uint64_t)a5 graph:(uint64_t)a6 sourceDeviceType:
{
  if (result)
  {
    v10 = result;
    v54[0] = 0;
    if (a4)
    {
      v11 = *(a4 + 192);
      v12 = *(a4 + 200);
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    v52 = [v11 previewDepthFilterRenderingEnabled];
    [MEMORY[0x1E696AD98] numberWithInt:a6];
    v13 = [OUTLINED_FUNCTION_28() objectForKeyedSubscript:?];
    [MEMORY[0x1E696AD98] numberWithInt:a6];
    v14 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
    if (v13 | v14)
    {
      v22 = v14;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      if (OUTLINED_FUNCTION_136_1(v14, v15, v16, v17, v18, v19, v20, v21, v44, v46, v48, v50))
      {
        v51 = a5;
        while (1)
        {
          OUTLINED_FUNCTION_21_20();
          if (!v34)
          {
            objc_enumerationMutation(v12);
          }

          v23 = **(&v55 + 1);
          v24 = [**(&v55 + 1) sinkConfiguration];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v24 sinkType] == 11)
          {
            break;
          }

          OUTLINED_FUNCTION_131_2();
          if (v34 && !OUTLINED_FUNCTION_136_1(v25, v26, v27, v28, v29, v30, v31, v32, v45, v47, v49, v51))
          {
            v33 = 1;
            goto LABEL_22;
          }
        }

        if (v23)
        {
          v34 = v22 == 0;
        }

        else
        {
          v34 = 1;
        }

        v33 = v34;
      }

      else
      {
        v33 = 1;
      }

LABEL_22:
      if (((v13 != 0) & v33) != 0)
      {
        v35 = v13;
      }

      else
      {
        v35 = v22;
      }

      v36 = [[BWDepthSynchronizerNode alloc] initForStreaming:1 separateDepthComponentsEnabled:0];
      [v36 setName:@"Source Depth Synchronizer"];
      v53.receiver = v10;
      v53.super_class = FigCaptureCameraSourcePipeline;
      if (objc_msgSendSuper2(&v53, sel_addNode_error_, v36, v54) & 1) != 0 && ([v36 imageInput], (objc_msgSend(OUTLINED_FUNCTION_67_5(), "connectOutput:toInput:pipelineStage:", v35)) && (objc_msgSend(v10[12], "depthOutput"), objc_msgSend(v36, "depthInput"), v37 = OUTLINED_FUNCTION_67_5(), (OUTLINED_FUNCTION_77_4(v37, v38, v39, v40)))
      {
        [v36 setDiscardsDegradedDepthBuffers:v52 ^ 1u];
        v41 = [v36 output];
        v42 = [MEMORY[0x1E696AD98] numberWithInt:a6];
        if (v35 == v22)
        {
          v43 = a3;
        }

        else
        {
          v43 = a2;
        }

        [v43 setObject:v41 forKeyedSubscript:v42];
      }

      else
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
      }
    }

    result = v54[0];
    if (v54[0])
    {
      return [v54[0] code];
    }
  }

  return result;
}

- (uint64_t)_buildSemanticMasksOutputNetwork:(uint64_t)a1 pipelineConfiguration:(void *)a2 graph:
{
  if (!a1)
  {
    return 0;
  }

  [FigCaptureCameraSourcePipeline _insertFunnelOnMetadataOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:mediaType:metadataName:];
  v5 = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_0_8();
    FigDebugAssert3();
  }

  else
  {
    *(a1 + 432) = [a2 copy];
  }

  return v5;
}

- (void)_buildVideoCaptureOutputNetwork:(uint64_t)a3 previewOutputsBySourceDeviceType:(uint64_t)a4 stillImageOutputsByPortType:(uint64_t)a5 lightSourceMaskOutputsBySourceDeviceType:(uint64_t)a6 keypointDescriptorDataOutputsBySourceDeviceType:(uint64_t)a7 pipelineConfiguration:(uint64_t)a8 graph:(uint64_t)a9 videoCaptureDimensions:(uint64_t)a10 numberOfSecondaryFramesToSkip:(uint64_t)a11 rtscProcessorsBySourceDeviceType:(uint64_t)a12 inferenceScheduler:(uint64_t)a13
{
  OUTLINED_FUNCTION_60();
  v551 = v30;
  v558 = v31;
  v544 = v32;
  v572 = v33;
  v771 = v34;
  if (!v26)
  {
    goto LABEL_74;
  }

  v35 = v29;
  v36 = v27;
  v37 = v26;
  v851[0] = 0;
  v850 = 0;
  v773 = v28;
  if (v28)
  {
    v38 = v28[22];
    v39 = v28[26];
    v565 = v28[28];
  }

  else
  {
    v39 = 0;
    v38 = 0;
    v565 = 0;
  }

  v40 = [MEMORY[0x1E695DF70] array];
  v41 = [MEMORY[0x1E695DF70] array];
  if (v39)
  {
    [v40 addObjectsFromArray:v39];
  }

  OUTLINED_FUNCTION_91_4();
  if (v42)
  {
    if (v773)
    {
      v43 = *(v773 + 200);
    }

    else
    {
      v43 = 0;
    }

    v44 = v40;
  }

  else
  {
    if (v773)
    {
      v43 = *(v773 + 200);
    }

    else
    {
      v43 = 0;
    }

    v44 = v41;
  }

  [v44 addObjectsFromArray:v43];
  OUTLINED_FUNCTION_91_4();
  v45 = v773;
  if (v42)
  {
    if (v773)
    {
      v46 = *(v773 + 216);
    }

    else
    {
      v46 = 0;
    }

    [v40 addObject:v46];
    v45 = v773;
  }

  v760 = v35;
  v684 = v41;
  v691 = v38;
  v537 = v36;
  if (v45)
  {
    if (*(v45 + 354) == 1)
    {
      OUTLINED_FUNCTION_91_4();
      if (v42)
      {
        v47 = [BWFanOutNode alloc];
        v49 = OUTLINED_FUNCTION_48_12(v47, v48);
        [v49 setName:@"Video Preview/Capture Splitter"];
        [v771 objectForKeyedSubscript:&unk_1F2244770];
        v849.receiver = v37;
        v849.super_class = FigCaptureCameraSourcePipeline;
        if ((objc_msgSendSuper2(&v849, sel_addNode_error_, v49, &v850) & 1) == 0 || ([v49 input], v50 = OUTLINED_FUNCTION_24_0(), (OUTLINED_FUNCTION_100_3(v50, v51, v52, v53) & 1) == 0))
        {
          OUTLINED_FUNCTION_0_64();
          goto LABEL_70;
        }

        v54 = [objc_msgSend(v49 "outputs")];
        [v54 setName:@"Preview"];
        [v36 setObject:v54 forKeyedSubscript:&unk_1F2244770];
        v55 = [objc_msgSend(v49 "outputs")];
        [OUTLINED_FUNCTION_108_1(v55 v56];
        v45 = v773;
      }
    }

    if (![*(v45 + 232) count])
    {
      v66 = 0;
      OUTLINED_FUNCTION_62_6();
      goto LABEL_31;
    }

    v63 = *(v45 + 232);
  }

  else
  {
    [0 count];
    v63 = OUTLINED_FUNCTION_110_2();
    if (!v459)
    {
      v66 = 0;
      v67 = 0;
      OUTLINED_FUNCTION_62_6();
      goto LABEL_32;
    }
  }

  [v63 count];
  v64 = [OUTLINED_FUNCTION_17() dictionaryWithCapacity:?];
  v66 = v64;
  v845 = 0u;
  v846 = 0u;
  v847 = 0u;
  v848 = 0u;
  if (v45)
  {
LABEL_31:
    v67 = *(v45 + 232);
    goto LABEL_32;
  }

  v67 = 0;
LABEL_32:
  v68 = OUTLINED_FUNCTION_1_18(v64, v65, &v845, v844);
  v768 = v37;
  v753 = v40;
  if (v68)
  {
    v69 = v68;
    v737 = *v846;
    obja = v67;
    v707 = @"PrimaryFormat";
    v722 = 0x1F2192EF0;
    do
    {
      v70 = 0;
      do
      {
        if (*v846 != v737)
        {
          objc_enumerationMutation(obja);
        }

        v71 = *(*(&v845 + 1) + 8 * v70);
        [v40 removeObject:v71];
        v72 = [v71 underlyingDeviceType];
        v73 = [MEMORY[0x1E696AD98] numberWithInt:v72];
        [OUTLINED_FUNCTION_108_1(v73 v74];
        if (v773)
        {
          v81 = *(v773 + 208);
        }

        else
        {
          v81 = 0;
        }

        v82 = [FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(v81 v72)];
        if (v82)
        {
          v843[0] = v708;
          v843[1] = v723;
          v83 = MEMORY[0x1E695DEC8];
          v84 = v843;
          v85 = 2;
        }

        else
        {
          v842 = v723;
          v83 = MEMORY[0x1E695DEC8];
          v84 = &v842;
          v85 = 1;
        }

        v86 = [v83 arrayWithObjects:v84 count:v85];
        v87 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (v773)
        {
          if (*(v773 + 320) == 1)
          {
            [MEMORY[0x1E696AD98] numberWithInt:v72];
            v37 = v768;
            if ([OUTLINED_FUNCTION_24_1() objectForKey:?])
            {
              BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, *(v773 + 321));
              [OUTLINED_FUNCTION_7() addObjectsFromArray:?];
            }
          }
        }

        v88 = [[BWAttachedMediaSplitNode alloc] initWithAttachedMediaKeys:v86 attachedMediaToPropagateToPrimaryOutput:v87];
        [(BWNode *)v88 setName:@"Vision Data Splitter"];
        v841.receiver = v37;
        v841.super_class = FigCaptureCameraSourcePipeline;
        if ((objc_msgSendSuper2(&v841, sel_addNode_error_, v88, &v850) & 1) == 0)
        {
          goto LABEL_69;
        }

        v89 = [(BWNode *)v88 input];
        v97 = OUTLINED_FUNCTION_66_4(v89, v90, v91, v92, v93, v94, v95, v96, v461, v471, v479, v487, v495, v502, v509, v517, v524, v531, v538, v545, v552, v559, v566, v573, v580, v587, v595, v603, v610, v617, v623, v630, v636, v643, v649, v656, v663, v670, v678, v685, v692, objb, v708, v716, v723, v731, v738, v746, v754, v761);
        if ((OUTLINED_FUNCTION_77_4(v97, v98, v99, v100) & 1) == 0)
        {
          goto LABEL_69;
        }

        if (v82)
        {
          v82 = [(NSArray *)[(BWNode *)v88 outputs] objectAtIndexedSubscript:0];
          v101 = 1;
        }

        else
        {
          v101 = 0;
        }

        [v771 setObject:v82 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v72)}];
        v102 = [(NSArray *)[(BWNode *)v88 outputs] objectAtIndexedSubscript:v101];
        [MEMORY[0x1E696AD98] numberWithInt:v72];
        [OUTLINED_FUNCTION_67_5() setObject:v102 forKeyedSubscript:?];
        ++v70;
        v40 = v753;
      }

      while (v69 != v70);
      v103 = [obja countByEnumeratingWithState:&v845 objects:v844 count:16];
      v69 = v103;
    }

    while (v103);
  }

  v104 = [v66 count];
  if (v104)
  {
    v104 = [v66 copy];
  }

  *(v37 + 400) = v104;
  [FigCaptureCameraSourcePipeline _insertCrossOverAndOverCaptureNodesOnOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:outputNetworkType:numberOfSecondaryFramesToSkip:];
  v851[0] = v105;
  if (v105)
  {
    goto LABEL_409;
  }

  if (!v773 || *(v773 + 320) != 1 || *(v773 + 32) == 3)
  {
    HIDWORD(v516) = 0;
    goto LABEL_62;
  }

  [FigCaptureCameraSourcePipeline _insertSmartStyleLearningNodeOnOutputsBySourceDeviceType:ifAllowedByAdditionalPreviewConnectionConfigurations:semanticMasksOutputsBySourceDeviceType:pipelineConfiguration:graph:];
  v851[0] = v458;
  if (v458)
  {
LABEL_409:
    OUTLINED_FUNCTION_3_60();
    goto LABEL_70;
  }

  HIDWORD(v516) = 1;
LABEL_62:
  if ([v771 count])
  {
    v106 = v771;
  }

  else
  {
    v106 = v537;
  }

  v107 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
  objc = v106;
  if (![objc_msgSend(v691 "requiredFormat")])
  {
    v108 = 0;
    if (![*(v37 + 456) smartFramingEnabled])
    {
      goto LABEL_91;
    }

    goto LABEL_76;
  }

  v108 = [v691 cinematicFramingEnabled];
  if ([*(v37 + 456) smartFramingEnabled])
  {
LABEL_76:
    if (([*(v37 + 456) smartFramingRequiresSceneMonitoring] & 1) == 0 && (v108 & 1) == 0)
    {
      v108 = 0;
      goto LABEL_91;
    }

    goto LABEL_78;
  }

  if (!v108)
  {
    goto LABEL_91;
  }

  v108 = 1;
LABEL_78:
  if ([v106 count] != 1)
  {
LABEL_69:
    OUTLINED_FUNCTION_0_64();
LABEL_70:
    FigDebugAssert3();
    goto LABEL_71;
  }

  v109 = [objc_msgSend(v106 "allKeys")];
  v110 = [BWFanOutNode alloc];
  v112 = OUTLINED_FUNCTION_48_12(v110, v111);
  [v112 setName:@"Video capture/SmartFraming Inference Splitter"];
  [v106 objectForKeyedSubscript:v109];
  v840.receiver = v37;
  v840.super_class = FigCaptureCameraSourcePipeline;
  if ((objc_msgSendSuper2(&v840, sel_addNode_error_, v112, &v850) & 1) == 0 || ([v112 input], v113 = OUTLINED_FUNCTION_67_5(), (OUTLINED_FUNCTION_93_1(v113, v114, v115, v116) & 1) == 0))
  {
    OUTLINED_FUNCTION_0_64();
    goto LABEL_70;
  }

  v117 = [objc_msgSend(v112 "outputs")];
  [v117 setName:@"Video Capture"];
  [objc setObject:v117 forKeyedSubscript:v109];
  v118 = [objc_msgSend(v112 "outputs")];
  [BWPipelineStage pipelineStageWithName:FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.perception" priority:v691), 13];
  v119 = [[BWSmartFramingPerceptionSinkNode alloc] initWithSinkID:@"SmartFramingPerceptionSink" captureDevice:*(v37 + 456) inferenceScheduler:a26];
  v839.receiver = v37;
  v839.super_class = FigCaptureCameraSourcePipeline;
  if ((objc_msgSendSuper2(&v839, sel_addNode_error_, v119, &v850) & 1) == 0 || (-[BWNode input](v119, "input"), ([OUTLINED_FUNCTION_67_5() connectOutput:v118 toInput:? pipelineStage:?] & 1) == 0))
  {
    OUTLINED_FUNCTION_0_64();
    goto LABEL_70;
  }

  v107 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
  v106 = objc;
  if ([v760 deferredNodePrepareSupported])
  {
    v120 = v773 ? *(v773 + 192) : 0;
    if (([objc_msgSend(v120 "sinkConfiguration")] & 1) == 0 && (!v773 || (*(v773 + 336) & 1) == 0))
    {
      [v760 enableDeferredPrepareForNodesNotInPathOfSinkNode:v119];
    }
  }

LABEL_91:
  OUTLINED_FUNCTION_119_1();
  v596 = v121;
  [FigCaptureCameraSourcePipeline _insertFunnelOnMetadataOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:mediaType:metadataName:];
  v851[0] = v122;
  if (v122 || (OUTLINED_FUNCTION_119_1(), v588 = v123, [FigCaptureCameraSourcePipeline _insertFunnelOnMetadataOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:mediaType:metadataName:], (v851[0] = v124) != 0))
  {
    OUTLINED_FUNCTION_3_60();
    goto LABEL_70;
  }

  v125 = v691;
  if (v773)
  {
    v126 = *(v773 + 216) != 0;
  }

  else
  {
    v126 = 0;
  }

  v838 = 0;
  [v691 backgroundBlurEnabled];
  [OUTLINED_FUNCTION_58_10() isBackgroundBlurSupported];
  [OUTLINED_FUNCTION_144() isBackgroundBlurProvidedBySource];
  [OUTLINED_FUNCTION_84_4() isCinematicVideoCaptureEnabled];
  OUTLINED_FUNCTION_43_11();
  v133 = FigCaptureVideoEffectEnabledInGraph(v127, v128, v129, v130, v126, v131, v132);
  v837 = 0;
  [v691 studioLightingEnabled];
  [OUTLINED_FUNCTION_58_10() isStudioLightingSupported];
  [OUTLINED_FUNCTION_144() isStudioLightingProvidedBySource];
  [OUTLINED_FUNCTION_84_4() isCinematicVideoCaptureEnabled];
  OUTLINED_FUNCTION_43_11();
  LODWORD(v737) = FigCaptureVideoEffectEnabledInGraph(v134, v135, v136, v137, v126, v138, v139);
  [v691 reactionEffectsEnabled];
  [OUTLINED_FUNCTION_58_10() reactionEffectsSupported];
  [OUTLINED_FUNCTION_144() reactionEffectsProvidedBySource];
  [OUTLINED_FUNCTION_84_4() isCinematicVideoCaptureEnabled];
  OUTLINED_FUNCTION_43_11();
  LODWORD(v523) = FigCaptureVideoEffectEnabledInGraph(v140, v141, v142, v143, v126, v144, v145);
  v836 = 0;
  [v691 backgroundReplacementEnabled];
  [OUTLINED_FUNCTION_58_10() isBackgroundReplacementSupported];
  [OUTLINED_FUNCTION_144() isBackgroundReplacementProvidedBySource];
  [OUTLINED_FUNCTION_84_4() isCinematicVideoCaptureEnabled];
  OUTLINED_FUNCTION_43_11();
  LODWORD(v684) = v126;
  HIDWORD(v530) = FigCaptureVideoEffectEnabledInGraph(v146, v147, v148, v149, v126, v150, v151);
  if ([OUTLINED_FUNCTION_123_2(v107[631] v460] && objc_msgSend(v106, "count") == 1 && objc_msgSend(objc_msgSend(v106, "allKeys"), "firstObject"))
  {
    [OUTLINED_FUNCTION_49_8() objectForKeyedSubscript:v773];
    if ([v125 outputAspectRatio])
    {
      v152 = v769;
      [objc_msgSend(objc_msgSend(*(v769 + 64) "firstObject")];
      v154 = v153;
      v156 = v155;
      v157 = BWAspectRatioValueFromAspectRatio([v125 outputAspectRatio]);
      v158 = (v154 + 1.0) * v157 / (v156 + 1.0);
    }

    else
    {
      v158 = 0.0;
      v152 = v769;
    }

    v159 = [BWVISOverscanPredictionNode alloc];
    [*&v152[v107[631]] cameraInfoByPortType];
    v160 = OUTLINED_FUNCTION_8();
    *&v161 = v158;
    v162 = [v160 initWithCameraInfoByPortType:v161 visInputAspectRatio:? delegate:?];
    [v162 setName:@"Overscan prediction"];
    v835.receiver = v152;
    v835.super_class = FigCaptureCameraSourcePipeline;
    if ((objc_msgSendSuper2(&v835, sel_addNode_error_, v162, &v850) & 1) == 0 || (v163 = [v162 input], v171 = OUTLINED_FUNCTION_66_4(v163, v164, v165, v166, v167, v168, v169, v170, v462, v472, v480, v488, v496, v503, v510, v518, v525, v532, v539, v546, v553, v560, v567, v574, v581, v589, v597, v604, v611, *(&v611 + 1), v624[0], v624[1], v637, *(&v637 + 1), v650, v657, v664, v671, v679, v686, v693, objd, v709, v717, v724, v732, v739, v747, v755, v762), v106 = objd, (OUTLINED_FUNCTION_100_3(v171, v172, v173, v174) & 1) == 0))
    {
      OUTLINED_FUNCTION_0_64();
      goto LABEL_70;
    }

    [v162 output];
    [OUTLINED_FUNCTION_7() setObject:? forKeyedSubscript:?];
  }

  [v762 isRunningForContinuityCapture];
  csp_dockKitNodeEnabled();
  if (v175)
  {
    csp_cinematicVideoEnabled(v773);
    v176 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_58_10() "requiredFormat")];
    v177 = csp_portraitPhotoModeEnabled(v773);
    v178 = [OUTLINED_FUNCTION_123_2(456 v462];
    v179 = FigCaptureClientApplicationIDIsCameraOrDerivative(v178);
    v180 = &unk_1F2244770;
    if (([objc_msgSend(v106 "allKeys")] & 1) != 0 || (v180 = objc_msgSend(objc_msgSend(v106, "allKeys"), "firstObject")) != 0)
    {
      LODWORD(v724) = v133;
      LODWORD(v709) = v108;
      v181 = [v106 objectForKeyedSubscript:v180];
      v182 = -[BWDockKitNode initWithIsRunningForContinuityCapture:cinematicVideoEnabled:captureDevice:]([BWDockKitNode alloc], "initWithIsRunningForContinuityCapture:cinematicVideoEnabled:captureDevice:", [v762 isRunningForContinuityCapture], v773, *(v769 + 456));
      v834.receiver = v769;
      v834.super_class = FigCaptureCameraSourcePipeline;
      if ((objc_msgSendSuper2(&v834, sel_addNode_error_, v182, &v850) & 1) == 0)
      {
        goto LABEL_432;
      }

      [(BWNode *)v182 input];
      if (([OUTLINED_FUNCTION_126_2() connectOutput:v181 toInput:? pipelineStage:?] & 1) == 0)
      {
        goto LABEL_432;
      }

      v106 = objd;
      [objd setObject:-[BWNode output](v182 forKeyedSubscript:{"output"), v180}];
      if (v773 & 1 | ((v179 & 1) == 0))
      {
        v183 = v773;
      }

      else
      {
        v183 = v176 | v177;
      }

      [(BWDockKitNode *)v182 setCustomInferenceEnabled:(v183 & 1) == 0];
      [*(v769 + 456) applicationID];
      [OUTLINED_FUNCTION_36() setClientApplicationID:?];
      *(v769 + 104) = v182;
      v125 = v693;
      v40 = v755;
    }
  }

  LODWORD(v532) = v133 | v739;
  v184 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
  if (([objc_msgSend(v125 "requiredFormat")] & 1) == 0)
  {
    v185 = ([v125 cinematicFramingEnabled] & 1) != 0 ? 0 : objc_msgSend(v125, "manualCinematicFramingEnabled") ^ 1;
    if (((v108 | v185) & 1) == 0)
    {
      HIDWORD(v525) = [v125 deskCamEnabled];
      if (!HIDWORD(v525))
      {
        v188 = 0;
        goto LABEL_125;
      }

      if ([v771 objectForKeyedSubscript:&unk_1F22447A0])
      {
        v186 = [BWFanOutNode alloc];
        v188 = OUTLINED_FUNCTION_48_12(v186, v187);
        [v188 setName:@"Cinematic Framing/DeskCam Splitter"];
        v833.receiver = v769;
        v833.super_class = FigCaptureCameraSourcePipeline;
        if ((objc_msgSendSuper2(&v833, sel_addNode_error_, v188, &v850) & 1) == 0)
        {
          goto LABEL_433;
        }

        [v188 input];
        v189 = OUTLINED_FUNCTION_24_0();
        if ((OUTLINED_FUNCTION_77_4(v189, v190, v191, v192) & 1) == 0)
        {
          goto LABEL_433;
        }

        [v106 setObject:objc_msgSend(objc_msgSend(v188 forKeyedSubscript:{"outputs"), "objectAtIndexedSubscript:", 0), &unk_1F22447A0}];
LABEL_125:
        v193 = [OUTLINED_FUNCTION_46_11() cameraInfoByPortType];
        v194 = BYTE4(v525) ^ 1;
        if (v188)
        {
          v194 = 1;
        }

        if (v194)
        {
          v195 = v193;
          v511 = v188;
          v196 = objc_alloc(MEMORY[0x1E695DF90]);
          [OUTLINED_FUNCTION_49_8() count];
          *(v769 + 144) = [OUTLINED_FUNCTION_17() initWithCapacity:?];
          v672 = v195;
          v851[0] = [FigCaptureCameraSourcePipeline _insertSubjectSelectionAndCinematicFramingNodesOnOutputsBySourceDeviceType:v769 connectionConfigurations:v106 pipelineConfiguration:v40 cameraInfoByPortType:v773 graph:v195 stillImageCaptureEnabled:v762 stillImageOutputsByPortType:v686 & ((v532 | HIDWORD(v532)) ^ 1)];
          if (v851[0])
          {
            OUTLINED_FUNCTION_3_60();
            goto LABEL_70;
          }

          goto LABEL_129;
        }

LABEL_433:
        OUTLINED_FUNCTION_0_64();
        goto LABEL_70;
      }

LABEL_432:
      OUTLINED_FUNCTION_0_64();
      goto LABEL_70;
    }
  }

  v672 = [OUTLINED_FUNCTION_46_11() cameraInfoByPortType];
  v511 = 0;
  HIDWORD(v525) = 0;
LABEL_129:
  if ((v108 & 1) != 0 || v773 && *(v773 + 353) == 1)
  {
    v197 = objc_alloc(MEMORY[0x1E695DF90]);
    [OUTLINED_FUNCTION_49_8() count];
    *(v769 + 152) = [OUTLINED_FUNCTION_17() initWithCapacity:?];
    if (FigCapturePlatformSupportsUniversalLossyCompression())
    {
      v198 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(v755, [v125 sourceDeviceType]);
      LODWORD(v664) = csp_maxLossyCompressionLevelForConnectionConfigurations(v198, v773);
    }

    else
    {
      LODWORD(v664) = 0;
    }

    v831 = 0u;
    v832 = 0u;
    v829 = 0u;
    v830 = 0u;
    v581 = [v106 allKeys];
    v199 = [v581 countByEnumeratingWithState:&v829 objects:v828 count:16];
    if (v199)
    {
      v200 = v199;
      v604 = a25;
      v657 = *v830;
      *v624 = *(MEMORY[0x1E69E9B10] + 16);
      v637 = *MEMORY[0x1E69E9B10];
      v611 = *(MEMORY[0x1E69E9B10] + 32);
      do
      {
        v201 = 0;
        v679 = sel_addNode_error_;
        do
        {
          if (*v830 != v657)
          {
            objc_enumerationMutation(v581);
          }

          v202 = *(*(&v829 + 1) + 8 * v201);
          IsExtensionDeviceType = BWDeviceTypeIsExtensionDeviceType([v202 integerValue]);
          v206 = *v624;
          v205 = v637;
          v207 = v611;
          if (!IsExtensionDeviceType)
          {
            v208 = [OUTLINED_FUNCTION_123_2(456 v462] == 2;
            *&v205 = FigCaptureGetDeviceToCameraTransform(v208);
          }

          if (v773)
          {
            v209 = *(v773 + 353);
          }

          else
          {
            v209 = 0;
          }

          *(v769 + 588) = v209 & 1;
          v210 = *(v769 + 588);
          v725 = v206;
          *v740 = v205;
          v710 = v207;
          if ((v210 & 1) != 0 || ((v826 = 0u, v827 = 0u, v824 = 0u, v825 = 0u, !v773) ? (v211 = 0) : (v211 = *(v773 + 240)), (v212 = OUTLINED_FUNCTION_1_18(IsExtensionDeviceType, v204, &v824, v823)) == 0))
          {
            v220 = 0;
          }

          else
          {
            v213 = v212;
            v214 = *v825;
            while (2)
            {
              for (i = 0; i != v213; ++i)
              {
                if (*v825 != v214)
                {
                  objc_enumerationMutation(v211);
                }

                v216 = *(*(&v824 + 1) + 8 * i);
                v217 = [objc_msgSend(v216 "sourceConfiguration")];
                v218 = [v202 intValue];
                if (v217 == v218)
                {
                  v220 = [v216 metadataIdentifiers];
                  v125 = v693;
                  goto LABEL_158;
                }
              }

              v213 = OUTLINED_FUNCTION_1_18(v218, v219, &v824, v823);
              v220 = 0;
              v125 = v693;
              if (v213)
              {
                continue;
              }

              break;
            }
          }

LABEL_158:
          v221 = FigCaptureConvertDimensionsForAspectRatio([objc_msgSend(v125 "requiredFormat")], objc_msgSend(v125, "outputAspectRatio"));
          v222 = [BWSmartCropNode alloc];
          v223 = [objc_msgSend(v125 "requiredFormat")];
          v224 = [objc_msgSend(v125 "requiredFormat")];
          v184 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
          v473 = v220;
          v481 = *(v769 + 456);
          LOBYTE(v462) = v686;
          v225 = [(BWSmartCropNode *)v222 initWithOutputDimensions:v221 cameraInfoByPortType:v672 horizontalSensorBinningFactor:v223 verticalSensorBinningFactor:v224 maxLossyCompressionLevel:v664 cameraExtrinsicMatrix:v210 processingMode:*v740 stillCaptureEnabled:*&v725 objectMetadataIdentifiers:*&v710 captureDevice:?];
          if (!v225)
          {
            v457 = -12786;
            goto LABEL_399;
          }

          v226 = v225;
          [v604 objectForKeyedSubscript:v202];
          [OUTLINED_FUNCTION_17() setRtscProcessor:?];
          if (v686)
          {
            *(v769 + 552) = v226;
          }

          v106 = objd;
          if (v210)
          {
            [(BWNode *)v226 setName:@"Low Latency Stabilization"];
            v227 = v769;
          }

          else
          {
            [(BWNode *)v226 setName:@"Center Stage (SmartCrop)"];
            v227 = v769;
            [*(v769 + 456) setCenterStageDelegate:v226];
            csp_getCenterStageRectOfInterest(*(v769 + 464));
            [OUTLINED_FUNCTION_46_11() setCenterStageRectOfInterest:?];
          }

          v822.receiver = v227;
          v822.super_class = FigCaptureCameraSourcePipeline;
          if ((objc_msgSendSuper2(&v822, v679, v226, &v850) & 1) == 0)
          {
LABEL_392:
            OUTLINED_FUNCTION_0_64();
            goto LABEL_70;
          }

          [objd objectForKeyedSubscript:v202];
          v228 = [(BWNode *)v226 input];
          v236 = OUTLINED_FUNCTION_66_4(v228, v229, v230, v231, v232, v233, v234, v235, v462, v473, v481, v488, v496, v503, v511, v518, v525, v532, v539, v546, v553, v560, v567, v574, v581, v589, v597, v604, v611, *(&v611 + 1), v624[0], v624[1], v637, *(&v637 + 1), v650, v657, v664, v672, v679, v686, v693, objd, v710, *(&v710 + 1), v725, *(&v725 + 1), v740[0], v740[1], v755, v762);
          if ((OUTLINED_FUNCTION_100_3(v236, v237, v238, v239) & 1) == 0)
          {
            goto LABEL_398;
          }

          if (![(BWNode *)v226 output])
          {
            goto LABEL_71;
          }

          [(BWNode *)v226 output];
          [OUTLINED_FUNCTION_7() setObject:? forKeyedSubscript:?];
          [OUTLINED_FUNCTION_123_2(152 v463];
          ++v201;
        }

        while (v201 != v200);
        v240 = [v581 countByEnumeratingWithState:&v829 objects:v828 count:16];
        v200 = v240;
      }

      while (v240);
    }
  }

  v241 = v762;
  v242 = v769;
  if ((v532 | v525 | HIDWORD(v532)))
  {
    v243 = objc_alloc(MEMORY[0x1E695DF90]);
    [OUTLINED_FUNCTION_49_8() count];
    *(v769 + 160) = [OUTLINED_FUNCTION_17() initWithCapacity:?];
    v818 = 0u;
    v819 = 0u;
    v820 = 0u;
    v821 = 0u;
    v624[0] = [v106 allKeys];
    v664 = [v624[0] countByEnumeratingWithState:&v818 objects:v817 count:16];
    if (v664)
    {
      *&v637 = *v819;
      *&v244 = 136315394;
      v611 = v244;
      do
      {
        v245 = 0;
        v657 = sel_addNode_error_;
        do
        {
          if (*v819 != v637)
          {
            objc_enumerationMutation(v624[0]);
          }

          v246 = *(*(&v818 + 1) + 8 * v245);
          v247 = [OUTLINED_FUNCTION_86() objectForKeyedSubscript:?];
          v248 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(v755, [v246 intValue]);
          v679 = v245;
          v709 = v247;
          v739 = v246;
          if (FigCapturePlatformSupportsUniversalLossyCompression())
          {
            LODWORD(v724) = csp_maxLossyCompressionLevelForConnectionConfigurations(v248, v773);
          }

          else
          {
            LODWORD(v724) = 0;
          }

          v249 = [(FigCaptureCameraSourcePipeline *)v242 _getDeviceOrientationCorrectionEnabledForVideoCaptureConnectionConfigurations:v248];
          v250 = [v693 backgroundBlurEnabled];
          if ([v693 studioLightingEnabled])
          {
            v250 |= 2uLL;
          }

          if ([v693 reactionEffectsEnabled])
          {
            v250 |= 0x10uLL;
          }

          if ([v693 backgroundReplacementEnabled])
          {
            v251 = v250 | 0x40;
          }

          else
          {
            v251 = v250;
          }

          v252 = v838;
          v253 = v251 | v838;
          v254 = v837;
          if (v837)
          {
            v253 |= 2uLL;
          }

          v255 = HIBYTE(v836);
          if (HIBYTE(v836))
          {
            v253 |= 0x10uLL;
          }

          v256 = v836;
          if (v836)
          {
            v257 = v253 | 0x40;
          }

          else
          {
            v257 = v253;
          }

          if (v251 == 16)
          {
            v184 = 0;
          }

          else
          {
            v184 = v686;
          }

          v258 = (([v241 isRunningForContinuityCapture] & 1) != 0 || BWDeviceIsiPad()) && FigCapturePlatformIdentifier() > 6;
          v259 = [BWBackgroundBlurNode alloc];
          if (v249)
          {
            if ([v693 cinematicFramingEnabled])
            {
              LOBYTE(v249) = 1;
            }

            else
            {
              LOBYTE(v249) = [v693 manualCinematicFramingEnabled];
            }
          }

          v260 = v256 | v255 | v254 | v252;
          v261 = [v739 intValue];
          v242 = v769;
          v472 = *(v769 + 456);
          HIDWORD(v462) = v261;
          LOBYTE(v462) = v249;
          v262 = [BWBackgroundBlurNode initWithStillImageCaptureEnabled:v259 maxLossyCompressionLevel:"initWithStillImageCaptureEnabled:maxLossyCompressionLevel:fastSwitchEnabled:availableEffects:activeEffect:isHighQualitySupported:upstreamDeviceOrientationCorrectionEnabled:deviceType:captureDevice:" fastSwitchEnabled:v184 availableEffects:v724 activeEffect:v260 & 1 isHighQualitySupported:v257 upstreamDeviceOrientationCorrectionEnabled:v251 deviceType:v258 captureDevice:?];
          [*(v769 + 456) setPortraitEffectPropertiesDelegate:v262];
          [*(v769 + 456) applicationID];
          [OUTLINED_FUNCTION_8() setClientApplicationID:?];
          [objc_msgSend(*(v769 + 456) "captureStream")];
          [OUTLINED_FUNCTION_8() setContinuityCameraClientDeviceClass:?];
          v816.receiver = v769;
          v816.super_class = FigCaptureCameraSourcePipeline;
          if ((objc_msgSendSuper2(&v816, sel_addNode_error_, v262, &v850) & 1) == 0)
          {
            goto LABEL_392;
          }

          if (![(BWBackgroundBlurNode *)v262 videoInput])
          {
            goto LABEL_392;
          }

          v241 = v762;
          if (([v762 connectOutput:v709 toInput:-[BWBackgroundBlurNode videoInput](v262 pipelineStage:{"videoInput"), 0}] & 1) == 0 || !-[BWBackgroundBlurNode videoOutput](v262, "videoOutput"))
          {
            goto LABEL_392;
          }

          [*(v769 + 160) setObject:v262 forKeyedSubscript:v739];
          [objd setObject:-[BWBackgroundBlurNode videoOutput](v262 forKeyedSubscript:{"videoOutput"), v739}];
          v125 = v693;
          if (v184)
          {
            if (![(BWBackgroundBlurNode *)v262 stillImageInput])
            {
              goto LABEL_392;
            }

            [v574 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(*(v769 + 456), "captureStream"), "portType")}];
            [(BWBackgroundBlurNode *)v262 stillImageInput];
            v263 = OUTLINED_FUNCTION_129();
            if ((OUTLINED_FUNCTION_77_4(v263, v264, v265, v266) & 1) == 0 || ![(BWBackgroundBlurNode *)v262 stillImageOutput])
            {
              goto LABEL_392;
            }

            [v574 setObject:-[BWBackgroundBlurNode stillImageOutput](v262 forKeyedSubscript:{"stillImageOutput"), objc_msgSend(objc_msgSend(*(v769 + 456), "captureStream"), "portType")}];
          }

          [(BWBackgroundBlurNode *)v262 setEffectBypassed:v251 == 0];
          if (dword_1ED844130)
          {
            v815 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v268 = v815;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v269 = v268;
            }

            else
            {
              v269 = v268 & 0xFFFFFFFE;
            }

            if (v269)
            {
              v270 = [(BWBackgroundBlurNode *)v262 effectBypassed];
              v809 = v611;
              v271 = @"NO";
              if (v270)
              {
                v271 = @"YES";
              }

              v810 = "[FigCaptureCameraSourcePipeline _buildVideoCaptureOutputNetwork:previewOutputsBySourceDeviceType:stillImageOutputsByPortType:lightSourceMaskOutputsBySourceDeviceType:keypointDescriptorDataOutputsBySourceDeviceType:pipelineConfiguration:graph:videoCaptureDimensions:numberOfSecondaryFramesToSkip:rtscProcessorsBySourceDeviceType:inferenceScheduler:]";
              v811 = 2112;
              v812 = v271;
              LODWORD(v472) = 22;
              v462 = &v809;
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v245 = v679 + 1;
        }

        while (v664 != v679 + 1);
        v664 = [v624[0] countByEnumeratingWithState:&v818 objects:v817 count:16];
      }

      while (v664);
    }
  }

  if ([v125 deskCamEnabled])
  {
    if (HIDWORD(v525))
    {
      v272 = 7;
    }

    else
    {
      v272 = 14;
    }

    [MEMORY[0x1E696AD98] numberWithInt:v272];
    [OUTLINED_FUNCTION_7() objectForKeyedSubscript:?];
    v273 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(v755, v272);
    if (FigCapturePlatformSupportsUniversalLossyCompression())
    {
      v274 = csp_maxLossyCompressionLevelForConnectionConfigurations(v273, v773);
    }

    else
    {
      v274 = 0;
    }

    v813[0] = 0;
    v275 = [v125 source];
    FigCaptureSourceCopyProperty(v275, @"OverheadCameraMode", *MEMORY[0x1E695E480], v813);
    v276 = v813[0];
    v277 = [v813[0] intValue];
    v278 = v125;
    v279 = *off_1E798A0D0;
    [BWDeskCamNode alloc];
    [v278 deskCamOutputDimensions];
    v184 = [objc_msgSend(v278 "requiredFormat")];
    [objc_msgSend(v278 "requiredFormat")];
    LOBYTE(v496) = 0;
    v490 = v242[57];
    LODWORD(v480) = v277;
    LODWORD(v464) = v274;
    v280 = OUTLINED_FUNCTION_86();
    v282 = v281;
    v283 = [v280 initWithOutputDimensions:? cameraInfoByPortType:? horizontalSensorBinningFactor:? verticalSensorBinningFactor:? stillImageCaptureEnabled:? objectMetadataIdentifiers:? maxLossyCompressionLevel:? portType:? overheadCameraMode:? captureDevice:? downStreamRequires10BitPixelFormat:?];
    v242[68] = v283;
    [*(v242 + *(v282 + 2524)) applicationID];
    [OUTLINED_FUNCTION_17() setClientApplicationID:?];
    v808.receiver = v242;
    v808.super_class = FigCaptureCameraSourcePipeline;
    if ((objc_msgSendSuper2(&v808, sel_addNode_error_, v283, &v850) & 1) == 0 || ![v283 videoCaptureInput])
    {
      goto LABEL_237;
    }

    if (HIDWORD(v525))
    {
      [objc_msgSend(v511 outputs];
      [v283 videoCaptureInput];
      v284 = OUTLINED_FUNCTION_129();
      if ((OUTLINED_FUNCTION_100_3(v284, v285, v286, v287) & 1) == 0)
      {
LABEL_237:
        OUTLINED_FUNCTION_0_64();
        goto LABEL_70;
      }
    }

    else
    {
      [v283 videoCaptureInput];
      v288 = OUTLINED_FUNCTION_129();
      if ((OUTLINED_FUNCTION_146(v288, v289, v290, v291) & 1) == 0)
      {
        goto LABEL_237;
      }
    }

    if (![v283 videoCaptureOutput])
    {
      goto LABEL_237;
    }

    [objd setObject:objc_msgSend(v283 forKeyedSubscript:{"videoCaptureOutput"), &unk_1F2244818}];
  }

  if (!v773)
  {
    v344 = [MEMORY[0x1E695DF90] dictionary];
    v351 = v344;
    goto LABEL_273;
  }

  if (*(v773 + 145) != 1)
  {
    goto LABEL_257;
  }

  objc_alloc(MEMORY[0x1E695DF70]);
  [v771 count];
  *(v769 + 120) = [OUTLINED_FUNCTION_17() initWithCapacity:?];
  v804 = 0u;
  v805 = 0u;
  v806 = 0u;
  v807 = 0u;
  v755 = [v771 allKeys];
  v292 = [v755 countByEnumeratingWithState:&v804 objects:v803 count:16];
  if (!v292)
  {
    goto LABEL_257;
  }

  v293 = v292;
  v294 = *v805;
  do
  {
    for (j = 0; j != v293; ++j)
    {
      if (*v805 != v294)
      {
        objc_enumerationMutation(v755);
      }

      v296 = [v771 objectForKeyedSubscript:*(*(&v804 + 1) + 8 * j)];
      v297 = [[BWSynchronizerNode alloc] initWithMediaType:1986618469];
      v802.receiver = v769;
      v802.super_class = FigCaptureCameraSourcePipeline;
      if ((objc_msgSendSuper2(&v802, sel_addNode_error_, v297, &v850) & 1) == 0)
      {
LABEL_400:
        OUTLINED_FUNCTION_0_64();
        goto LABEL_70;
      }

      [*(v769 + 120) addObject:v297];
      -[BWSynchronizerNode setSourceClock:](v297, "setSourceClock:", [*(v769 + 72) clock]);
      v298 = [v693 lockedFrameRate];
      if (FigCaptureFrameRateIsValidRational(v298, v299))
      {
        CMTimeMake(&v801, [v693 lockedFrameRate] >> 32, objc_msgSend(v693, "lockedFrameRate"));
        *v813 = *&v801.value;
        epoch = v801.epoch;
      }

      else
      {
        v301 = [v693 externalSyncFrameRate];
        v184 = v184 & 0xFFFFFFFF00000000 | v302;
        if (!FigCaptureFrameRateIsValidRational(v301, v184))
        {
          goto LABEL_254;
        }

        CMTimeMake(&v800, [v693 externalSyncFrameRate] >> 32, objc_msgSend(v693, "externalSyncFrameRate"));
        *v813 = *&v800.value;
        epoch = v800.epoch;
      }

      v813[2] = epoch;
      [(BWSynchronizerNode *)v297 setQuantizationFrameDuration:v813];
LABEL_254:
      v303 = [(BWNode *)v297 input];
      if (([OUTLINED_FUNCTION_66_4(v303 v304] & 1) == 0)
      {
        goto LABEL_400;
      }

      v311 = [(BWNode *)v297 output];
      [OUTLINED_FUNCTION_108_1(v311 v312];
    }

    v293 = [v755 countByEnumeratingWithState:&v804 objects:v803 count:16];
  }

  while (v293);
LABEL_257:
  if (*(v773 + 146) != 1)
  {
    goto LABEL_271;
  }

  v798 = 0u;
  v799 = 0u;
  v796 = 0u;
  v797 = 0u;
  v739 = [v771 allKeys];
  v319 = [v739 countByEnumeratingWithState:&v796 objects:v795 count:16];
  if (!v319)
  {
    goto LABEL_271;
  }

  v320 = v319;
  v755 = *v797;
  do
  {
    for (k = 0; k != v320; ++k)
    {
      if (*v797 != v755)
      {
        objc_enumerationMutation(v739);
      }

      v322 = [v771 objectForKeyedSubscript:*(*(&v796 + 1) + 8 * k)];
      v323 = *(v773 + 200);
      VideoDataConfigurationFromConfigurations = csp_getVideoDataConfigurationFromConfigurations(*(v773 + 208));
      if (!VideoDataConfigurationFromConfigurations)
      {
        VideoDataConfigurationFromConfigurations = csp_getVideoDataConfigurationFromConfigurations(v323);
      }

      v325 = FigCaptureCreateAndConfigureDepthConverterNode(v567, VideoDataConfigurationFromConfigurations, 0, [v693 requiredFormat], objc_msgSend(*(v769 + 456), "cameraInfoByPortType"), objc_msgSend(*(v769 + 456), "depthDataBaseRotation"), *(v769 + 512), 0, v851);
      if (v851[0])
      {
        OUTLINED_FUNCTION_14_21();
        goto LABEL_70;
      }

      v326 = v325;
      v327 = v325;
      if (!v326)
      {
        OUTLINED_FUNCTION_0_64();
LABEL_397:
        FigDebugAssert3();
LABEL_398:
        v457 = -12780;
LABEL_399:
        v851[0] = v457;
        goto LABEL_71;
      }

      v794.receiver = v769;
      v794.super_class = FigCaptureCameraSourcePipeline;
      if ((objc_msgSendSuper2(&v794, sel_addNode_error_, v326, &v850) & 1) == 0)
      {
        goto LABEL_400;
      }

      v328 = [(BWNode *)v326 input];
      if (([OUTLINED_FUNCTION_66_4(v328 v329] & 1) == 0)
      {
        goto LABEL_400;
      }

      v336 = [(BWNode *)v326 output];
      [OUTLINED_FUNCTION_108_1(v336 v337];
    }

    v320 = [v739 countByEnumeratingWithState:&v796 objects:v795 count:16];
  }

  while (v320);
LABEL_271:
  v344 = [MEMORY[0x1E695DF90] dictionary];
  v351 = v344;
  if (*(v773 + 32) == 3)
  {
    v793 = [v771 objectForKeyedSubscript:&unk_1F22447A0];
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v793 count:1];
    [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
    v344 = [v771 setObject:objc_msgSend(v771 forKeyedSubscript:{"objectForKeyedSubscript:", &unk_1F2244770), &unk_1F22447D0}];
  }

LABEL_273:
  v352 = v762;
  v353 = v769;
  if (HIDWORD(v518))
  {
    [FigCaptureCameraSourcePipeline _insertSmartStyleMetadataSynchronizerNodeOnOutputsBySourceDeviceType:pipelineConfiguration:graph:];
    v851[0] = v344;
    if (v344)
    {
      OUTLINED_FUNCTION_3_60();
      goto LABEL_70;
    }
  }

  v791 = 0u;
  v792 = 0u;
  v789 = 0u;
  v790 = 0u;
  v690 = OUTLINED_FUNCTION_139(v344, v345, v346, v352, v347, v348, v349, v350, v464, v472, v480, v488, v496, v503, v511, v518, v525, v532, v539, v546, v553, v560, v567, v574, v581, v589, v597, v604, v611, *(&v611 + 1), v624[0], v624[1], v637, *(&v637 + 1), v650, v657, v664, v672, v679, v686, v693, objd, v709, v717, v724, v732, v739, v747, v755, v762, v769, v771);
  if (!v690)
  {
    goto LABEL_382;
  }

  v697 = *v790;
  v729 = v351;
  while (2)
  {
    v354 = 0;
    objh = sel_addNode_error_;
    while (2)
    {
      if (*v790 != v697)
      {
        objc_enumerationMutation(v772);
      }

      v744 = v354;
      v355 = *(*(&v789 + 1) + 8 * v354);
      v356 = [v355 intValue];
      v357 = [v772 objectForKeyedSubscript:v355];
      if (v773)
      {
        v358 = *(v773 + 208);
      }

      else
      {
        v358 = 0;
      }

      v359 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(v358, v356);
      v360 = [v359 count];
      if (v773)
      {
        v361 = *(v773 + 200);
      }

      else
      {
        v361 = 0;
      }

      FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v361);
      v362 = [MEMORY[0x1E695DF90] dictionary];
      [v557 objectForKeyedSubscript:v355];
      [OUTLINED_FUNCTION_36() setObject:? forKeyedSubscript:?];
      [v550 objectForKeyedSubscript:v355];
      [OUTLINED_FUNCTION_36() setObject:? forKeyedSubscript:?];
      OUTLINED_FUNCTION_91_4();
      v759 = v355;
      if (v42 && ([MEMORY[0x1E696AD98] numberWithInt:v356], objc_msgSend(OUTLINED_FUNCTION_4(), "containsObject:")) && (csp_cinematicVideoEnabled(v773) & 1) == 0)
      {
        v364 = v773;
        if (v773)
        {
          v363 = *(v773 + 354) ^ 1;
          v360 += v363 & 1;
LABEL_288:
          v365 = *(v364 + 232);
        }

        else
        {
          v365 = 0;
          ++v360;
          v363 = 1;
        }
      }

      else
      {
        v363 = 0;
        v364 = v773;
        if (v773)
        {
          goto LABEL_288;
        }

        v365 = 0;
      }

      v366 = v364;
      FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v365);
      [MEMORY[0x1E696AD98] numberWithInt:v356];
      v367 = [OUTLINED_FUNCTION_4() containsObject:?];
      if (v366)
      {
        v368 = *(v366 + 248);
      }

      else
      {
        v368 = 0;
      }

      v369 = (v360 - v367);
      FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v368);
      [MEMORY[0x1E696AD98] numberWithInt:v356];
      v370 = v369;
      v371 = v759;
      if ([OUTLINED_FUNCTION_4() containsObject:?])
      {
        v370 = v369 - (FigCaptureConnectionConfigurationWithSinkTypeAndMediaType(v359, 4, 1986618469) != 0);
      }

      v351 = (v370 - 1);
      if (v370 == 1)
      {
        if (v363)
        {
          v351 = v729;
          if ([v543 objectForKeyedSubscript:v759])
          {
            OUTLINED_FUNCTION_0_64();
            FigDebugAssert3();
          }

          [v543 setObject:v357 forKeyedSubscript:v759];
          LODWORD(v370) = 0;
        }

        else
        {
          v788[0] = v357;
          v372 = [MEMORY[0x1E695DEC8] arrayWithObjects:v788 count:1];
          OUTLINED_FUNCTION_135_2(v372, v373, v374, v375, v376, v377, v378, v379, v468, v477, v485, v493, v500, v507, v515, v522, v529, v536, v543, v550, v557, v564, v571, v578, v585, v593, v601, v608, v615, v621, v628, v634, v641, v647, v654, v661, v668, v676, v683, v690, v697, objh, v714, v721, v729);
          LODWORD(v370) = [v362 count] != 0;
        }
      }

      else
      {
        if (v370 < 2)
        {
          LODWORD(v370) = 0;
        }

        else
        {
          if ([v362 count])
          {
            if ((v363 & 1) == 0)
            {
              v787 = v357;
              v383 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v787 count:1];
              OUTLINED_FUNCTION_135_2(v383, v384, v385, v386, v387, v388, v389, v390, v468, v477, v485, v493, v500, v507, v515, v522, v529, v536, v543, v550, v557, v564, v571, v578, v585, v593, v601, v608, v615, v621, v628, v634, v641, v647, v654, v661, v668, v676, v683, v690, v697, objh, v714, v721, v729);
              goto LABEL_338;
            }

            v370 = 2;
          }

          else
          {
            LODWORD(v351) = 0;
          }

          v380 = [[BWFanOutNode alloc] initWithFanOutCount:v370 mediaType:1986618469];
          if ((csp_isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration(v359) & 1) != 0 || csp_isDeskCamEnabledInVideoDataConnectionConfiguration(v359))
          {

            v381 = v380;
            *(v353 + 528) = v381;
            v382 = @"Center Stage, Manual Framing and Desk Cam Video Capture Splitter";
          }

          else
          {
            if (v363)
            {
              v382 = @"Video Preview/Capture Splitter";
            }

            else
            {
              v382 = @"Video Capture Splitter";
            }

            v381 = v380;
          }

          [(BWNode *)v381 setName:v382];
          v786.receiver = v353;
          v786.super_class = FigCaptureCameraSourcePipeline;
          if ((objc_msgSendSuper2(&v786, objh, v380, &v850) & 1) == 0)
          {
            goto LABEL_408;
          }

          v391 = [(BWNode *)v380 input];
          if (([OUTLINED_FUNCTION_66_4(v391 v392] & 1) == 0)
          {
            goto LABEL_408;
          }

          LODWORD(v714) = v370;
          if (v363)
          {
            v399 = [(NSArray *)[(BWNode *)v380 outputs] objectAtIndexedSubscript:0];
            [v399 setName:@"Preview"];
            [v543 setObject:v399 forKeyedSubscript:v371];
            v400 = 1;
          }

          else
          {
            v400 = 0;
          }

          [v729 setObject:-[NSArray subarrayWithRange:](-[BWNode outputs](v380 forKeyedSubscript:{"outputs"), "subarrayWithRange:", v400, (v370 - v400)), v371}];
          OUTLINED_FUNCTION_91_4();
          if (v42)
          {
            if (v773 && *(v773 + 320) == 1)
            {
              if (*(v773 + 321) == 1)
              {
                v401 = [objc_msgSend(*(v773 + 216) "irisSinkConfiguration")];
              }

              else
              {
                v401 = 0;
              }

              v402 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, v401);
              do
              {
                [(BWFanOutNode *)v380 setAllowedAttachedMediaKeys:v402 forOutputIndex:v400];
                v400 = (v400 + 1);
              }

              while (v400 < v714);
            }

            else
            {
              do
              {
                [(BWFanOutNode *)v380 setDiscardsAttachedMedia:1 forOutputIndex:v400];
                v400 = (v400 + 1);
              }

              while (v400 < v370);
            }
          }

          LODWORD(v370) = v351;
        }

        v351 = v729;
      }

LABEL_338:
      v403 = [v362 count];
      if (v403)
      {
        LODWORD(v714) = v370;
        if (v356 <= 9 && ((1 << v356) & 0x310) != 0)
        {
          v411 = [MEMORY[0x1E695DF90] dictionary];
          v782 = 0u;
          v783 = 0u;
          v784 = 0u;
          v785 = 0u;
          v412 = *(v353 + 64);
          v413 = OUTLINED_FUNCTION_138_0();
          if (v413)
          {
            v414 = v413;
            v415 = *v783;
            do
            {
              for (m = 0; m != v414; ++m)
              {
                if (*v783 != v415)
                {
                  objc_enumerationMutation(v412);
                }

                v417 = *(*(&v782 + 1) + 8 * m);
                BWUnderlyingDeviceTypesForCompositeDeviceType(v356);
                [MEMORY[0x1E696AD98] numberWithInt:{BWUtilitiesUnderlyingDeviceTypeFromPortType(objc_msgSend(v417, "portType"), v356)}];
                if ([OUTLINED_FUNCTION_7() containsObject:?])
                {
                  v418 = [MEMORY[0x1E695DF70] array];
                  if ([objc_msgSend(v417 "configuration")])
                  {
                    [v418 addObject:v601];
                  }

                  if ([objc_msgSend(v417 "configuration")])
                  {
                    [v418 addObject:v593];
                  }

                  if ([v418 count])
                  {
                    [v417 portType];
                    [OUTLINED_FUNCTION_1_15() setObject:v418 forKeyedSubscript:?];
                  }
                }
              }

              v414 = OUTLINED_FUNCTION_138_0();
            }

            while (v414);
          }

          v353 = v770;
          v351 = v729;
          v371 = v759;
          if (![objc_msgSend(v411 "allKeys")])
          {
            OUTLINED_FUNCTION_0_64();
            goto LABEL_397;
          }
        }

        v419 = [BWMetadataSynchronizerNode alloc];
        [v362 allKeys];
        v420 = [OUTLINED_FUNCTION_4() initWithMetadataInputs:? propagateSampleBufferAttachmentKeys:? propagateSampleBufferMetadataDictKeys:? syncMetadataByPortType:? syncOnlyIfMetadataEnabledForKeys:?];
        v421 = MEMORY[0x1E696AEC0];
        v469 = [v353 name];
        [v421 stringWithFormat:@"%@ Metadata Synchronizer"];
        [OUTLINED_FUNCTION_17() setName:?];
        v781.receiver = v353;
        v781.super_class = FigCaptureCameraSourcePipeline;
        if ((objc_msgSendSuper2(&v781, objh, v420, &v850) & 1) == 0)
        {
          goto LABEL_408;
        }

        [objc_msgSend(v351 objectForKeyedSubscript:{v371), "objectAtIndexedSubscript:", 0}];
        [objc_msgSend(v420 "inputs")];
        v422 = OUTLINED_FUNCTION_126_2();
        v426 = OUTLINED_FUNCTION_100_3(v422, v423, v424, v425);
        if ((v426 & 1) == 0)
        {
          goto LABEL_408;
        }

        v779 = 0u;
        v780 = 0u;
        v777 = 0u;
        v778 = 0u;
        if (OUTLINED_FUNCTION_137_1(v426, v427, v428, v429, v430, v431, v432, v433, v469, v477, v485, v493, v500, v507, v515, v522, v529, v536, v543, v550, v557, v564, v571, v578, v585, v593, v601, v608, v615, v621, v628, v634, v641, v647, v654, v661, v668, v676, v683, v690, v697, objh, v714, v721, v729, v736, v744, v751, v759, v766, v770, v772, v773, v774.receiver, v774.super_class, v775, v776))
        {
          LODWORD(v434) = 1;
LABEL_360:
          v434 = v434;
          while (1)
          {
            OUTLINED_FUNCTION_21_20();
            if (!v42)
            {
              objc_enumerationMutation(v362);
            }

            [v362 objectForKeyedSubscript:**(&v777 + 1)];
            [objc_msgSend(v420 "inputs")];
            v435 = OUTLINED_FUNCTION_126_2();
            if (!OUTLINED_FUNCTION_93_1(v435, v436, v437, v438))
            {
              break;
            }

            ++v434;
            OUTLINED_FUNCTION_51_11();
            if (v42)
            {
              if (OUTLINED_FUNCTION_137_1(v439, v440, v441, v442, v443, v444, v445, v446, v468, v477, v485, v493, v500, v507, v515, v522, v529, v536, v543, v550, v557, v564, v571, v578, v585, v593, v601, v608, v615, v621, v628, v634, v641, v647, v654, v661, v668, v676, v683, v690, v697, objh, v714, v721, v729, v736, v744, v751, v759, v766, v770, v772, v773, v774.receiver, v774.super_class, v775, v776))
              {
                goto LABEL_360;
              }

              goto LABEL_367;
            }
          }

LABEL_408:
          OUTLINED_FUNCTION_0_64();
          goto LABEL_70;
        }

LABEL_367:
        if (v714 == 1)
        {
          v775 = [v420 output];
          v447 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v775 count:1];
          v448 = v759;
        }

        else
        {
          v449 = [[BWFanOutNode alloc] initWithFanOutCount:v714 mediaType:1986618469];
          [(BWNode *)v449 setName:@"Video Capture Splitter"];
          v774.receiver = v353;
          v774.super_class = FigCaptureCameraSourcePipeline;
          if ((objc_msgSendSuper2(&v774, objh, v449, &v850) & 1) == 0)
          {
            goto LABEL_408;
          }

          [v420 output];
          [(BWNode *)v449 input];
          v450 = OUTLINED_FUNCTION_126_2();
          v448 = v759;
          if ((OUTLINED_FUNCTION_77_4(v450, v451, v452, v453) & 1) == 0)
          {
            goto LABEL_408;
          }

          v447 = [(BWNode *)v449 outputs];
        }

        [v351 setObject:v447 forKeyedSubscript:v448];
        if ([v557 objectForKeyedSubscript:v448])
        {
          v454 = *(v353 + 416);
          if (!v454)
          {
            v454 = objc_alloc_init(MEMORY[0x1E695DF70]);
            *(v353 + 416) = v454;
          }

          [v454 addObject:v448];
        }

        v403 = [v550 objectForKeyedSubscript:v448];
        if (v403)
        {
          v455 = *(v353 + 424);
          if (!v455)
          {
            v455 = objc_alloc_init(MEMORY[0x1E695DF70]);
            *(v353 + 424) = v455;
          }

          v403 = [v455 addObject:v448];
        }
      }

      v354 = v744 + 1;
      if (v744 + 1 != v690)
      {
        continue;
      }

      break;
    }

    v690 = OUTLINED_FUNCTION_139(v403, v404, v405, v406, v407, v408, v409, v410, v468, v477, v485, v493, v500, v507, v515, v522, v529, v536, v543, v550, v557, v564, v571, v578, v585, v593, v601, v608, v615, v621, v628, v634, v641, v647, v654, v661, v668, v676, v683, v690, v697, objh, v714, v721, v729, v736, v744, v751, v759, v766, v770, v772);
    if (v690)
    {
      continue;
    }

    break;
  }

LABEL_382:
  v456 = [v351 count];
  if (v456)
  {
    v456 = [v351 copy];
  }

  *(v353 + 192) = v456;
LABEL_71:
  if (!v851[0] && v850)
  {
    [v850 code];
  }

LABEL_74:
  OUTLINED_FUNCTION_128_0();
}

- (uint64_t)_buildPreviewOutputNetwork:(uint64_t)a3 videoCaptureOutputsBySourceDeviceType:(uint64_t)a4 pipelineConfiguration:graph:numberOfSecondaryFramesToSkip:
{
  if (!a1)
  {
    return 0;
  }

  if (!a4)
  {
    OUTLINED_FUNCTION_113_2();
    [FigCaptureCameraSourcePipeline _insertCrossOverAndOverCaptureNodesOnOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:outputNetworkType:numberOfSecondaryFramesToSkip:];
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = v5;
    OUTLINED_FUNCTION_1_5();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_113_2();
  [FigCaptureCameraSourcePipeline _insertCrossOverAndOverCaptureNodesOnOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:outputNetworkType:numberOfSecondaryFramesToSkip:];
  if (v5)
  {
    goto LABEL_13;
  }

  if (*(a4 + 320) == 1 && *(a4 + 32) != 3)
  {
    OUTLINED_FUNCTION_113_2();
    [FigCaptureCameraSourcePipeline _insertSmartStyleLearningNodeOnOutputsBySourceDeviceType:ifAllowedByAdditionalPreviewConnectionConfigurations:semanticMasksOutputsBySourceDeviceType:pipelineConfiguration:graph:];
    if (v5)
    {
      goto LABEL_13;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_113_2();
  [FigCaptureCameraSourcePipeline _insertFunnelOnPreviewOutputsBySourceDeviceType:previewDerivedConnectionConfigurations:graph:];
  v7 = v6;
  if (v6)
  {
    OUTLINED_FUNCTION_0_8();
LABEL_14:
    FigDebugAssert3();
  }

  return v7;
}

- (void)_buildDetectedObjectsOutputNetwork:pipelineConfiguration:graph:
{
  OUTLINED_FUNCTION_81_3();
  if (v3)
  {
    v4 = v2;
    OUTLINED_FUNCTION_54();
    if ((csp_cinematicVideoEnabled(v5) & 1) == 0)
    {
      v6 = [MEMORY[0x1E695DF70] array];
      if (v4)
      {
        v7 = *(v4 + 240);
      }

      else
      {
        v7 = 0;
      }

      OUTLINED_FUNCTION_47_0();
      v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
      if (v8)
      {
        v9 = v8;
        OUTLINED_FUNCTION_125_1();
        do
        {
          for (i = 0; i != v9; ++i)
          {
            OUTLINED_FUNCTION_32_10();
            if (!v11)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(8 * i);
            if ((FigCaptureMetadataObjectConfigurationRequiresObjectDetection(v12) & 1) != 0 || FigCaptureMetadataObjectConfigurationRequiresEyeReliefStatus(v12))
            {
              [v6 addObject:v12];
            }
          }

          OUTLINED_FUNCTION_47_0();
          v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v9);
      }

      if (v4)
      {
        v13 = *(v4 + 248);
      }

      else
      {
        v13 = 0;
      }

      [v6 addObjectsFromArray:v13];
      OUTLINED_FUNCTION_3_19();
      [FigCaptureCameraSourcePipeline _insertCrossOverAndOverCaptureNodesOnOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:outputNetworkType:numberOfSecondaryFramesToSkip:];
      if (v14)
      {
        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3();
        goto LABEL_4;
      }

      v1 = [v1 mutableCopy];
      OUTLINED_FUNCTION_3_19();
      [FigCaptureCameraSourcePipeline _rerouteDetectedObjectsOutputsForSourcesWithCinematicFramingEnabled:graph:];
    }

    [*(v0 + 392) setObject:v1 forKeyedSubscript:&unk_1F2244908];
  }

LABEL_4:
  OUTLINED_FUNCTION_80_3();
}

- (id)_buildPointCloudOutputNetworkWithPipelineConfiguration:(id *)result graph:(uint64_t)a2
{
  if (result)
  {
    v3 = result;
    v13 = 0;
    if (a2)
    {
      if (![*(a2 + 256) count])
      {
        goto LABEL_10;
      }

      v4 = *(a2 + 256);
    }

    else
    {
      [0 count];
      v4 = OUTLINED_FUNCTION_110_2();
      if (!v12)
      {
        return 0;
      }
    }

    v5 = [v4 count];
    v6 = [MEMORY[0x1E695DF70] array];
    if (v5 < 2)
    {
      [v3[9] pointCloudOutput];
      [OUTLINED_FUNCTION_8() addObject:?];
    }

    else
    {
      v7 = [[BWFanOutNode alloc] initWithFanOutCount:v5 mediaType:1885564004];
      [v3 addNode:v7 error:&v13];
      if (v13)
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
LABEL_10:
        result = v13;
        if (v13)
        {
          return [v13 code];
        }

        return result;
      }

      [v3[9] pointCloudOutput];
      [(BWNode *)v7 input];
      v8 = OUTLINED_FUNCTION_40_9();
      OUTLINED_FUNCTION_93_1(v8, v9, v10, v11);
      [(BWNode *)v7 outputs];
      [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
    }

    v3[47] = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v6];
    goto LABEL_10;
  }

  return result;
}

- (uint64_t)_canDeferSourceNodesForGraph:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    result = [a2 deferredNodePrepareSupported];
    if (result)
    {
      OUTLINED_FUNCTION_72_3();
      v12 = *(v3 + 56);
      if (v12)
      {
        v13 = *(v12 + 184);
      }

      else
      {
        v13 = 0;
      }

      if (OUTLINED_FUNCTION_57(v4, v5, v6, v7, v8, v9, v10, v11, v23))
      {
        OUTLINED_FUNCTION_74_4();
LABEL_7:
        v14 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_76_3();
          if (!v15)
          {
            objc_enumerationMutation(v13);
          }

          result = [objc_msgSend(*(v25 + 8 * v14) "sinkConfiguration")];
          if (!result)
          {
            break;
          }

          if (v2 == ++v14)
          {
            v2 = OUTLINED_FUNCTION_57(result, v16, v17, v18, v19, v20, v21, v22, v24);
            if (v2)
            {
              goto LABEL_7;
            }

            return 1;
          }
        }
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

- (uint64_t)_addCrossOverNodeToGraph:(int)a3 outputNetworkType:(void *)a4 inputs:(uint64_t)a5 mediaType:(uint64_t)a6 name:(_DWORD *)a7 outErr:
{
  if (result)
  {
    v11 = -[BWCrossoverNode initWithMediaType:numberOfInputs:]([BWCrossoverNode alloc], "initWithMediaType:numberOfInputs:", a5, [a4 count]);
    [(BWNode *)v11 setName:a6];
    v12 = OUTLINED_FUNCTION_111_2();
    if (objc_msgSendSuper2(v12, v13, v11))
    {
      if (a3 == 2)
      {
        [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.detectedObjects" priority:14];
      }

      OUTLINED_FUNCTION_35_12();
      OUTLINED_FUNCTION_47_0();
      v18 = OUTLINED_FUNCTION_52(v14, v15, v16, v17);
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        OUTLINED_FUNCTION_125_1();
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            OUTLINED_FUNCTION_32_10();
            if (!v22)
            {
              objc_enumerationMutation(a4);
            }

            v23 = *(v28 + 8 * i);
            [(NSArray *)[(BWNode *)v11 inputs] objectAtIndexedSubscript:v20];
            if (([OUTLINED_FUNCTION_6_44() connectOutput:v23 toInput:? pipelineStage:?] & 1) == 0)
            {
              OUTLINED_FUNCTION_1_9();
              goto LABEL_15;
            }

            ++v20;
          }

          OUTLINED_FUNCTION_47_0();
          v19 = OUTLINED_FUNCTION_52(v24, v25, v26, v27);
          if (v19)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
LABEL_15:
      FigDebugAssert3();
    }

    *a7 = 0;
    return [(BWNode *)v11 output];
  }

  return result;
}

- (uint64_t)_stereoVideoAddSlaveFrameSynchronizerNode:(uint64_t)a3 input1:(uint64_t)a4 input2:(uint64_t)a5 mediaType:(uint64_t)a6 name:(_DWORD *)a7 outErr:
{
  if (result)
  {
    v11 = result;
    v20 = 0;
    BYTE12(v19) = 0;
    *(&v19 + 4) = 1;
    LOBYTE(v19) = 1;
    v12 = [BWSlaveFrameSynchronizerNode initWithDepthEnabled:"initWithDepthEnabled:numberOfInputs:syncSlaveForMasterPortTypes:separateDepthComponentsEnabled:preLTMThumbnailEnabledInputs:postColorProcessingThumbnailEnabledInputs:weightSegmentMapEnabledInputs:differentInputFormatsSupported:bufferSize:numberOfSlaveFramesToSkip:startEmittingMasterFramesBeforeSlaveStreamStarts:" numberOfInputs:0 syncSlaveForMasterPortTypes:2 separateDepthComponentsEnabled:0 preLTMThumbnailEnabledInputs:0 postColorProcessingThumbnailEnabledInputs:0 weightSegmentMapEnabledInputs:0 differentInputFormatsSupported:0 bufferSize:v19 numberOfSlaveFramesToSkip:? startEmittingMasterFramesBeforeSlaveStreamStarts:?];
    v13 = v12;
    if (a3 && a4)
    {
      [(BWNode *)v12 setName:a6];
      if ([v11 addNode:v13 error:&v20])
      {
        [(NSArray *)[(BWNode *)v13 inputs] objectAtIndexedSubscript:0];
        if ([OUTLINED_FUNCTION_6_44() connectOutput:a3 toInput:? pipelineStage:?])
        {
          [(NSArray *)[(BWNode *)v13 inputs] objectAtIndexedSubscript:1];
          v14 = OUTLINED_FUNCTION_6_44();
          if (OUTLINED_FUNCTION_93_1(v14, v15, v16, v17))
          {
            goto LABEL_7;
          }
        }
      }

      OUTLINED_FUNCTION_0();
    }

    else
    {
      OUTLINED_FUNCTION_0();
    }

    FigDebugAssert3();
LABEL_7:
    if (v20)
    {
      [v20 code];
      result = OUTLINED_FUNCTION_110_2();
      *a7 = v18;
    }

    else
    {
      return [(BWNode *)v13 output];
    }
  }

  return result;
}

- (void)_addFunnelNodeToGraph:(uint64_t)a3 inputs:(uint64_t)a4 mediaType:(uint64_t)a5 name:(uint64_t)a6 outErr:(uint64_t)a7
{
  if (a1)
  {
    OUTLINED_FUNCTION_81_3();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    [BWFunnelNode alloc];
    [v34 count];
    v35 = [OUTLINED_FUNCTION_15() initWithNumberOfInputs:? mediaType:?];
    [v35 setName:v32];
    v36 = OUTLINED_FUNCTION_111_2();
    if (objc_msgSendSuper2(v36, v37, v35))
    {
      OUTLINED_FUNCTION_69_0();
      OUTLINED_FUNCTION_17_20();
      v42 = OUTLINED_FUNCTION_52(v38, v39, v40, v41);
      if (!v42)
      {
LABEL_13:
        *v30 = 0;
        [v35 output];
        OUTLINED_FUNCTION_80_3();
        return;
      }

      v43 = v42;
      v44 = 0;
      v45 = *a29;
LABEL_5:
      v46 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_29_11();
        if (v47 != v45)
        {
          objc_enumerationMutation(v34);
        }

        v48 = *(a28 + 8 * v46);
        [objc_msgSend(v35 "inputs")];
        if (([OUTLINED_FUNCTION_6_44() connectOutput:v48 toInput:? pipelineStage:?] & 1) == 0)
        {
          break;
        }

        ++v44;
        if (v43 == ++v46)
        {
          OUTLINED_FUNCTION_17_20();
          v43 = OUTLINED_FUNCTION_52(v49, v50, v51, v52);
          if (v43)
          {
            goto LABEL_5;
          }

          goto LABEL_13;
        }
      }
    }

    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    goto LABEL_13;
  }
}

- (uint64_t)_addOverCaptureSourcePipelineToGraph:(void *)a3 upstreamVideoCaptureOutputsBySourceDeviceType:(unsigned int)a4 depthEnabled:(uint64_t)a5 depthFilterRenderingEnabled:(unsigned int)a6 preLTMThumbnailEnabled:(unsigned int)a7 postColorProcessingThumbnailEnabled:(char)a8 weightSegmentMapEnabled:(char)a9 forPreview:(unsigned int)a10 maxLossyCompressionLevel:(int)a11 numberOfSecondaryFramesToSkip:(_DWORD *)a12 outErr:
{
  v72 = result;
  if (result)
  {
    v80[0] = 0;
    v16 = @"Video Capture Synchronizer";
    if (a9)
    {
      v16 = @"Preview Synchronizer";
    }

    v69 = v16;
    v17 = [MEMORY[0x1E695DF70] array];
    memset(v79, 0, sizeof(v79));
    v18 = [&unk_1F2248AA8 countByEnumeratingWithState:v79 objects:v78 count:16];
    if (v18)
    {
      v19 = v18;
      v12 = &unk_1F2248AA8;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          OUTLINED_FUNCTION_10_18();
          if (!v41)
          {
            objc_enumerationMutation(&unk_1F2248AA8);
          }

          v21 = [a3 objectForKeyedSubscript:*(*(&v79[0] + 1) + 8 * i)];
          if (v21)
          {
            v21 = [OUTLINED_FUNCTION_7() addObject:?];
          }
        }

        v19 = OUTLINED_FUNCTION_1_0(v21, v22, v79, v78);
      }

      while (v19);
    }

    v23 = a12;
    if ([v17 count] <= 1)
    {
      v65 = v66;
      LODWORD(v64) = 0;
      FigDebugAssert3();
      v63 = FigSignalErrorAtGM();
      v47 = 0;
      if (v63)
      {
LABEL_43:
        *v23 = v63;
        return [v47 output];
      }

LABEL_41:
      if (v80[0])
      {
        v63 = [v80[0] code];
      }

      goto LABEL_43;
    }

    v67 = a6;
    v68 = a7;
    if (!a4 || (a9 & 1) != 0 || ((v24 = *(v72 + 72), [objc_msgSend(v24 "configuration")], v26 = v25 + 1.0, objc_msgSend(objc_msgSend(v24, "configuration"), "sensorOverscan"), v28 = v26 * (v27 + 1.0), objc_msgSend(objc_msgSend(v24, "configuration"), "overscanForShiftMitigation"), v30 = v29 + 1.0, objc_msgSend(objc_msgSend(v24, "configuration"), "sensorOverscan"), v32 = v30 * (v31 + 1.0), v33 = objc_msgSend(objc_msgSend(v24, "configuration"), "videoCaptureDimensions"), v34 = HIDWORD(v33), v35 = v28 * v33, v12 = FigCaptureRoundFloatToMultipleOf(2, v35), v36 = v32 * v34, v37 = FigCaptureRoundFloatToMultipleOf(2, v36), v38 = objc_msgSend(objc_msgSend(v24, "videoCaptureOutput"), "formatRequirements"), v39 = objc_msgSend(v38, "width"), v40 = objc_msgSend(v38, "height"), v12 == v39) ? (v41 = v37 == v40) : (v41 = 0), v41 || !objc_msgSend(v17, "count")))
    {
LABEL_25:
      if (*(v72 + 560) == 1)
      {
        v76 = *off_1E798A0D8;
        v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
      }

      else
      {
        v45 = 0;
      }

      v46 = [BWSlaveFrameSynchronizerNode alloc];
      HIDWORD(v64) = a11;
      LOBYTE(v64) = a8;
      v47 = [v12 initWithDepthEnabled:a4 numberOfInputs:objc_msgSend(OUTLINED_FUNCTION_111() syncSlaveForMasterPortTypes:"count") separateDepthComponentsEnabled:v45 preLTMThumbnailEnabled:0 postColorProcessingThumbnailEnabled:v67 weightSegmentMapEnabled:v68 numberOfSecondaryFramesToSkip:v64];
      [v47 setName:v69];
      v75.receiver = v72;
      v75.super_class = FigCaptureCameraSourcePipeline;
      if (objc_msgSendSuper2(&v75, sel_addNode_error_, v47, v80))
      {
        OUTLINED_FUNCTION_70_2();
        OUTLINED_FUNCTION_59_7();
        v52 = OUTLINED_FUNCTION_52(v48, v49, v50, v51);
        if (!v52)
        {
LABEL_37:

          v62 = v47;
          v63 = 0;
          *(v72 + 128) = v62;
LABEL_40:
          v23 = a12;
          goto LABEL_41;
        }

        v53 = v52;
        v54 = 0;
        v55 = *v74;
LABEL_31:
        v56 = 0;
        while (1)
        {
          if (*v74 != v55)
          {
            objc_enumerationMutation(v17);
          }

          v57 = *(v73 + 8 * v56);
          [objc_msgSend(v47 "inputs")];
          if (![OUTLINED_FUNCTION_24_0() connectOutput:v57 toInput:? pipelineStage:?])
          {
            break;
          }

          ++v54;
          if (v53 == ++v56)
          {
            OUTLINED_FUNCTION_59_7();
            v53 = OUTLINED_FUNCTION_52(v58, v59, v60, v61);
            if (v53)
            {
              goto LABEL_31;
            }

            goto LABEL_37;
          }
        }
      }

      OUTLINED_FUNCTION_1_9();
      FigDebugAssert3();
    }

    else
    {
      v42 = 0;
      v12 = v12;
      while (1)
      {
        v43 = [v17 objectAtIndexedSubscript:v42];
        v44 = objc_alloc_init(BWPixelTransferNode);
        v77.receiver = v72;
        v77.super_class = FigCaptureCameraSourcePipeline;
        if ((objc_msgSendSuper2(&v77, sel_addNode_error_, v44, v80) & 1) == 0)
        {
          break;
        }

        [(BWPixelTransferNode *)v44 setOutputWidth:v12];
        [(BWPixelTransferNode *)v44 setOutputHeight:v37];
        [(BWPixelTransferNode *)v44 setUpdatesSampleBufferMetadataForIrisVIS:1];
        [(BWPixelTransferNode *)v44 setMaxLossyCompressionLevel:a10];
        [(BWNode *)v44 input];
        if (([OUTLINED_FUNCTION_24_0() connectOutput:v43 toInput:? pipelineStage:?] & 1) == 0)
        {
          break;
        }

        [(BWNode *)v44 output];
        [OUTLINED_FUNCTION_7() setObject:? atIndexedSubscript:?];
        if ([v17 count] <= ++v42)
        {
          goto LABEL_25;
        }
      }

      OUTLINED_FUNCTION_1_9();
      FigDebugAssert3();
      v47 = 0;
    }

    v63 = 0;
    goto LABEL_40;
  }

  return result;
}

- (void)_connectSubjectSelectionNode:(uint64_t)a1 videoOutputsBySourceDeviceType:sourceDeviceTypes:portTypes:graph:
{
  if (a1)
  {
    OUTLINED_FUNCTION_84();
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v9 = OUTLINED_FUNCTION_111_2();
    if (objc_msgSendSuper2(v9, v10, v8))
    {
      if ([objc_msgSend(v8 "videoCaptureInputsByPortType")])
      {
        v11 = [objc_msgSend(v8 "videoCaptureInputsByPortType")];
        if (v11 == [objc_msgSend(v6 "allKeys")])
        {
          v12 = [v6 allKeys];
          OUTLINED_FUNCTION_117_2();
          v14 = [v13 countByEnumeratingWithState:? objects:? count:?];
          if (v14)
          {
            v15 = v14;
            v16 = *v38;
LABEL_7:
            v17 = 0;
            while (1)
            {
              OUTLINED_FUNCTION_23_14();
              if (v18 != v16)
              {
                objc_enumerationMutation(v12);
              }

              if (![v2 connectOutput:objc_msgSend(v6 toInput:"objectForKeyedSubscript:" pipelineStage:{*(v37 + 8 * v17)), objc_msgSend(objc_msgSend(v8, "videoCaptureInputsByPortType"), "objectForKeyedSubscript:", BWUtilitiesGetPortTypeForUnderlyingDeviceType(objc_msgSend(*(v37 + 8 * v17), "intValue"), v4)), 0}])
              {
                break;
              }

              if (v15 == ++v17)
              {
                OUTLINED_FUNCTION_117_2();
                v15 = OUTLINED_FUNCTION_1_0(v19, v20, v21, v22);
                if (v15)
                {
                  goto LABEL_7;
                }

                goto LABEL_13;
              }
            }
          }

          else
          {
LABEL_13:
            if ([objc_msgSend(v8 "videoCaptureOutputsByPortType")])
            {
              v23 = [objc_msgSend(v8 "videoCaptureOutputsByPortType")];
              if (v23 == [objc_msgSend(v6 "allKeys")])
              {
                v24 = [v6 allKeys];
                OUTLINED_FUNCTION_17_20();
                v26 = [v25 countByEnumeratingWithState:? objects:? count:?];
                if (v26)
                {
                  v27 = v26;
                  v28 = *v36;
                  do
                  {
                    for (i = 0; i != v27; ++i)
                    {
                      OUTLINED_FUNCTION_29_11();
                      if (v30 != v28)
                      {
                        objc_enumerationMutation(v24);
                      }

                      [objc_msgSend(v8 "videoCaptureOutputsByPortType")];
                      [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
                    }

                    OUTLINED_FUNCTION_17_20();
                    v27 = OUTLINED_FUNCTION_52(v31, v32, v33, v34);
                  }

                  while (v27);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    OUTLINED_FUNCTION_81();
  }
}

- (uint64_t)_connectCinematicFramingNode:(void *)a3 videoOutputsBySourceDeviceType:(void *)a4 sourceDeviceTypes:(void *)a5 portTypes:(void *)a6 graph:(void *)a7 cameraConfiguration:stillImageCaptureEnabled:stillImageOutputsByPortType:
{
  if (result)
  {
    v12 = result;
    v35 = result;
    v36 = FigCaptureCameraSourcePipeline;
    v37 = 0;
    v13 = OUTLINED_FUNCTION_111_2();
    if (objc_msgSendSuper2(v13, v14, a2))
    {
      if (![objc_msgSend(a2 "videoCaptureInputsByPortType")])
      {
        return 4294954514;
      }

      v15 = [objc_msgSend(a2 "videoCaptureInputsByPortType")];
      if (v15 != [objc_msgSend(a3 "allKeys")])
      {
        return 4294954514;
      }

      v26 = v12;
      v27 = a7;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = [a3 allKeys];
      v16 = [obj countByEnumeratingWithState:&v31 objects:v30 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v32;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v32 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v31 + 1) + 8 * i);
            PortTypeForUnderlyingDeviceType = BWUtilitiesGetPortTypeForUnderlyingDeviceType([v20 intValue], a5);
            [a3 objectForKeyedSubscript:v20];
            v22 = [objc_msgSend(a2 "videoCaptureInputsByPortType")];
            if (!OUTLINED_FUNCTION_146(a6, v23, v24, v22))
            {
              return 4294954516;
            }

            if ([a4 count] >= 2)
            {
              [a3 setObject:0 forKeyedSubscript:v20];
            }
          }

          v17 = [obj countByEnumeratingWithState:&v31 objects:v30 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      if ([a2 videoCaptureOutput])
      {
        v25 = [a2 videoCaptureOutput];
        [v27 sourceDeviceType];
        [a3 setObject:v25 forKeyedSubscript:{objc_msgSend(OUTLINED_FUNCTION_8(), "numberWithInt:")}];
        [*(v26 + 456) applicationID];
        [OUTLINED_FUNCTION_28() setClientApplicationID:?];
        [a2 setCinematicFramingControlMode:{objc_msgSend(v27, "cinematicFramingControlMode")}];
        [v27 sourceDeviceType];
        [OUTLINED_FUNCTION_8() numberWithInt:?];
        [OUTLINED_FUNCTION_40_9() setObject:a2 forKeyedSubscript:?];
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    result = v37;
    if (v37)
    {
      return [v37 code];
    }
  }

  return result;
}

- (uint64_t)_insertSubjectSelectionAndCinematicFramingNodesOnOutputsBySourceDeviceType:(uint64_t)a1 connectionConfigurations:(void *)a2 pipelineConfiguration:(void *)a3 cameraInfoByPortType:(uint64_t)a4 graph:(uint64_t)a5 stillImageCaptureEnabled:(void *)a6 stillImageOutputsByPortType:(unsigned int)a7
{
  if (a1)
  {
    v7 = a4;
    if (a4)
    {
      v9 = *(a4 + 176);
    }

    else
    {
      v9 = 0;
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *&v11 = OUTLINED_FUNCTION_106_2();
    v12[38] = v11;
    v12[39] = v11;
    v12[40] = v11;
    v12[41] = v11;
    v13 = *(a1 + 64);
    v16 = OUTLINED_FUNCTION_52(v14, v15, v126, v125);
    if (v16)
    {
      v17 = v16;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          OUTLINED_FUNCTION_10_18();
          if (!v19)
          {
            objc_enumerationMutation(v13);
          }

          [*(v127 + 8 * i) portType];
          v20 = [OUTLINED_FUNCTION_15() addObject:?];
        }

        v17 = OUTLINED_FUNCTION_52(v20, v21, v126, v125);
      }

      while (v17);
    }

    v22 = [v10 count];
    if (v22 != [objc_msgSend(a2 "allKeys")])
    {
      return 4294954510;
    }

    v23 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(a3, [v9 sourceDeviceType]);
    v101 = [(FigCaptureCameraSourcePipeline *)a1 _getDeviceOrientationCorrectionEnabledForVideoCaptureConnectionConfigurations:v23];
    if (FigCapturePlatformSupportsUniversalLossyCompression())
    {
      v93 = csp_maxLossyCompressionLevelForConnectionConfigurations(v23, v7);
    }

    else
    {
      v93 = 0;
    }

    *&v26 = OUTLINED_FUNCTION_106_2();
    v27[28] = v26;
    v27[29] = v26;
    v27[26] = v26;
    v27[27] = v26;
    if (v7)
    {
      v7 = *(v7 + 240);
    }

    if (OUTLINED_FUNCTION_1_18(v24, v25, v123, v122))
    {
      while (1)
      {
        OUTLINED_FUNCTION_10_18();
        if (!v19)
        {
          objc_enumerationMutation(v7);
        }

        v28 = *v124;
        v29 = [objc_msgSend(*v124 "sourceConfiguration")];
        if (v29 == [v9 sourceDeviceType])
        {
          break;
        }

        OUTLINED_FUNCTION_51_11();
        if (v19 && !OUTLINED_FUNCTION_1_18(v30, v31, v123, v122))
        {
          goto LABEL_24;
        }
      }

      v92 = [v28 metadataIdentifiers];
    }

    else
    {
LABEL_24:
      v92 = 0;
    }

    CenterStageFramingMode = csp_getCenterStageFramingMode([v9 source]);
    v32 = a1;
    if ([objc_msgSend(*(a1 + 456) "captureStreams")] != 1)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      return 4294954516;
    }

    v99 = [objc_msgSend(OUTLINED_FUNCTION_132_2() "captureStream")];
    [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_132_2() "captureStream")];
    if (v33 <= 0.0)
    {
      v98 = BWDeviceIsiPad();
    }

    else
    {
      v98 = 1;
    }

    *&v34 = OUTLINED_FUNCTION_106_2();
    v35[16] = v34;
    v35[17] = v34;
    v35[14] = v34;
    v35[15] = v34;
    obj = [a2 allKeys];
    v36 = [obj countByEnumeratingWithState:v120 objects:v119 count:16];
    if (v36)
    {
      v37 = v36;
      while (2)
      {
        for (j = 0; j != v37; ++j)
        {
          OUTLINED_FUNCTION_10_18();
          if (!v19)
          {
            objc_enumerationMutation(obj);
          }

          v118 = *(v121 + 8 * j);
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
          v39 = [BWSubjectSelectionNode alloc];
          v40 = [objc_msgSend(v9 "requiredFormat")];
          v41 = [objc_msgSend(v9 "requiredFormat")];
          [objc_msgSend(v9 "requiredFormat")];
          LOBYTE(v84) = [OUTLINED_FUNCTION_58_10() gazeSelectionEnabled];
          HIDWORD(v83) = CenterStageFramingMode;
          BYTE1(v83) = v98;
          LOBYTE(v83) = v99 != 0;
          v42 = [BWSubjectSelectionNode initWithOutputDimensions:v39 cameraInfoByPortType:"initWithOutputDimensions:cameraInfoByPortType:horizontalSensorBinningFactor:verticalSensorBinningFactor:deviceOrientationCorrectionEnabled:portTypes:cameraHasDistortionCoefficients:cameraHasCalibrationValidMaxRadius:centerStageFramingMode:gazeSelectionEnabled:" horizontalSensorBinningFactor:v40 verticalSensorBinningFactor:a5 deviceOrientationCorrectionEnabled:v41 portTypes:v32 cameraHasDistortionCoefficients:v101 cameraHasCalibrationValidMaxRadius:v10 centerStageFramingMode:v83 gazeSelectionEnabled:v84];
          if (!v42)
          {
            OUTLINED_FUNCTION_0();
            FigDebugAssert3();
            return 0;
          }

          v43 = v42;
          v32 = a1;
          [FigCaptureCameraSourcePipeline _connectSubjectSelectionNode:a1 videoOutputsBySourceDeviceType:? sourceDeviceTypes:? portTypes:? graph:?];
          if (v44)
          {
            v81 = v44;
            OUTLINED_FUNCTION_1_5();
LABEL_66:
            FigDebugAssert3();
            return v81;
          }
        }

        v37 = [obj countByEnumeratingWithState:v120 objects:v119 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v43 = 0;
    }

    [OUTLINED_FUNCTION_132_2() setSubjectSelectionDelegate:v43];
    CinematicFramingFieldOfViewRestrictedToWide = csp_getCinematicFramingFieldOfViewRestrictedToWide([v9 source]);
    v117 = 0;
    [v9 source];
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v45 = OUTLINED_FUNCTION_86();
      v46(v45);
      v47 = v117;
    }

    else
    {
      v47 = 0;
    }

    [v47 floatValue];
    v49 = v48;

    v116 = 0;
    v115 = 0;
    csp_getCenterStageRectOfInterest([v9 source]);
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v90 = [v9 cinematicFramingEnabled];
    [v9 manualFramingPanningAngleX];
    v59 = v58;
    [v9 manualFramingPanningAngleY];
    v61 = v60;
    [v9 manualFramingDefaultZoomFactor];
    v63 = v62;
    v64 = OUTLINED_FUNCTION_132_2();
    LODWORD(v65) = 1.0;
    [v64 setZoomFactor:v65];
    [v9 source];
    cf[0] = 0;
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v66 = OUTLINED_FUNCTION_86();
      v67(v66);
      v68 = cf[0];
    }

    else
    {
      v68 = 0;
    }

    v89 = [v68 BOOLValue];
    *&v69 = OUTLINED_FUNCTION_106_2();
    *v70 = v69;
    v70[1] = v69;
    v70[2] = v69;
    v70[3] = v69;
    [a2 allKeys];
    OUTLINED_FUNCTION_122();
    v87 = v71;
    obja = [v71 countByEnumeratingWithState:? objects:? count:?];
    if (obja)
    {
      v88 = *v114;
LABEL_49:
      v72 = 0;
      while (1)
      {
        if (*v114 != v88)
        {
          objc_enumerationMutation(v87);
        }

        v113[0] = *(v113[18] + 8 * v72);
        v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:1];
        v74 = [BWCinematicFramingNode alloc];
        v75 = [objc_msgSend(v9 "requiredFormat")];
        v76 = [objc_msgSend(v9 "requiredFormat")];
        v77 = [objc_msgSend(v9 "requiredFormat")];
        LOBYTE(cf[0]) = v90;
        BYTE1(cf[0]) = 1;
        BYTE2(cf[0]) = CinematicFramingFieldOfViewRestrictedToWide;
        *(cf + 3) = v115;
        HIBYTE(cf[0]) = v116;
        cf[1] = v51;
        cf[2] = v53;
        cf[3] = v55;
        cf[4] = v57;
        v106 = CenterStageFramingMode;
        v107 = v49;
        v108 = v59;
        v109 = v61;
        v110 = v63;
        v111 = 0;
        v112 = 0;
        LOBYTE(v86) = 0;
        BYTE2(v85) = v89;
        BYTE1(v85) = v98;
        LOBYTE(v85) = v99 != 0;
        LODWORD(v84) = v93;
        v78 = [BWCinematicFramingNode initWithOutputDimensions:v74 cameraInfoByPortType:"initWithOutputDimensions:cameraInfoByPortType:horizontalSensorBinningFactor:verticalSensorBinningFactor:deviceOrientationCorrectionEnabled:stillImageCaptureEnabled:objectMetadataIdentifiers:maxLossyCompressionLevel:portTypes:cinematicFramingControls:cameraHasDistortionCoefficients:cameraHasCalibrationValidMaxRadius:centerStageMetadataDeliveryEnabled:pipelineType:downStreamRequires10BitPixelFormat:" horizontalSensorBinningFactor:v75 verticalSensorBinningFactor:a5 deviceOrientationCorrectionEnabled:v76 stillImageCaptureEnabled:v77 objectMetadataIdentifiers:v101 maxLossyCompressionLevel:a7 portTypes:v92 cinematicFramingControls:v84 cameraHasDistortionCoefficients:v10 cameraHasCalibrationValidMaxRadius:cf centerStageMetadataDeliveryEnabled:v85 pipelineType:0 downStreamRequires10BitPixelFormat:v86];
        if (!v78)
        {
          return 4294954510;
        }

        v79 = v78;
        v32 = a1;
        [*(a1 + 456) setManualCinematicFramingDelegate:v78];
        if (a7)
        {
          *(a1 + 536) = v79;
        }

        v80 = [FigCaptureCameraSourcePipeline _connectCinematicFramingNode:a1 videoOutputsBySourceDeviceType:v79 sourceDeviceTypes:a2 portTypes:v73 graph:v10 cameraConfiguration:a6 stillImageCaptureEnabled:v9 stillImageOutputsByPortType:?];
        if (v80)
        {
          v81 = v80;
          OUTLINED_FUNCTION_1_5();
          goto LABEL_66;
        }

        if (obja == ++v72)
        {
          OUTLINED_FUNCTION_122();
          obja = [v87 countByEnumeratingWithState:? objects:? count:?];
          if (obja)
          {
            goto LABEL_49;
          }

          goto LABEL_60;
        }
      }
    }

    v79 = 0;
LABEL_60:
    [*(v32 + 456) setCenterStageDelegate:v79];
  }

  return 0;
}

- (void)_insertCrossOverAndOverCaptureNodesOnOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:outputNetworkType:numberOfSecondaryFramesToSkip:
{
  OUTLINED_FUNCTION_84();
  v59 = v5;
  v61 = v7;
  v62 = v6;
  if (!v6)
  {
    goto LABEL_66;
  }

  v8 = v4;
  v9 = v3;
  v10 = v2;
  v60 = v1;
  v69[0] = 0;
  v68 = 0;
  if (v3)
  {
    if (*(v3 + 32) == 3)
    {
      goto LABEL_63;
    }

    v11 = *(v3 + 176);
  }

  else
  {
    v11 = 0;
  }

  v58 = [v11 sourceDeviceType];
  v12 = [FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v10) mutableCopy];
  if (v9)
  {
    v13 = *(v9 + 192);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_msgSend(v13 "videoPreviewSinkConfiguration")];
  if (v9)
  {
    v15 = *(v9 + 302);
  }

  else
  {
    v15 = 0;
  }

  *(v62 + 560) = 0;
  [*(v62 + 456) isBravoVariant];
  OUTLINED_FUNCTION_130_1();
  if (v18)
  {
    [v60 count];
    v19 = OUTLINED_FUNCTION_45_1();
    [FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(v19 v58)];
    OUTLINED_FUNCTION_130_1();
    if (v0 >= 2)
    {
      if (v20)
      {
        if (v9)
        {
          v16 = *(v9 + 136) != 0.0;
        }

        else
        {
          v16 = 0;
        }

        if (v59 == 2)
        {
          v16 = 0;
        }

        if (v16 & 1 | ((v14 & 1) == 0) | v15 & 1)
        {
          goto LABEL_23;
        }

        if (v59)
        {
          v21 = v62;
          if (v59 != 1)
          {
LABEL_22:
            v16 = *(v21 + 560);
LABEL_23:
            v17 = v16 ^ 1;
            goto LABEL_24;
          }

          v22 = *(v62 + 40);
        }

        else
        {
          v22 = 1;
          v21 = v62;
        }

        *(v21 + 560) = v22;
        goto LABEL_22;
      }
    }
  }

LABEL_24:
  if (!v9 || *(v9 + 354) != 1)
  {
    if ((v17 & 1) == 0)
    {
      if (v16)
      {
        if (v9)
        {
          v49 = *(v9 + 32) != 0;
        }

        else
        {
          v49 = 0;
        }

        if (FigCapturePlatformSupportsUniversalLossyCompression())
        {
          v50 = csp_maxLossyCompressionLevelForConnectionConfigurations(v10, v9);
        }

        else
        {
          v50 = 0;
        }

        if (v9)
        {
          [*(v9 + 192) previewDepthFilterRenderingEnabled];
          v51 = *(v9 + 348);
          v52 = *(v9 + 350);
          v53 = *(v9 + 351);
        }

        else
        {
          [0 previewDepthFilterRenderingEnabled];
          OUTLINED_FUNCTION_130_1();
          v53 = 0;
        }

        v54 = [(FigCaptureCameraSourcePipeline *)v62 _addOverCaptureSourcePipelineToGraph:v61 upstreamVideoCaptureOutputsBySourceDeviceType:v60 depthEnabled:v49 depthFilterRenderingEnabled:0 preLTMThumbnailEnabled:v51 & 1 postColorProcessingThumbnailEnabled:v52 & 1 weightSegmentMapEnabled:v53 & 1 forPreview:v59 == 0 maxLossyCompressionLevel:v50 numberOfSecondaryFramesToSkip:v8 outErr:v69];
        [MEMORY[0x1E696AD98] numberWithInt:v58];
        [OUTLINED_FUNCTION_1_15() setObject:v54 forKeyedSubscript:?];
        v55 = [v60 allKeys];
        OUTLINED_FUNCTION_122();
        if ([v56 countByEnumeratingWithState:? objects:? count:?])
        {
          while (1)
          {
            OUTLINED_FUNCTION_21_20();
            if (!v42)
            {
              objc_enumerationMutation(v55);
            }

            v57 = MEMORY[0];
            if ([MEMORY[0] intValue] != v58)
            {
              [v60 setObject:0 forKeyedSubscript:v57];
            }

            OUTLINED_FUNCTION_131_2();
            if (v42)
            {
              OUTLINED_FUNCTION_122();
              if (![v55 countByEnumeratingWithState:? objects:? count:?])
              {
                break;
              }
            }
          }
        }
      }

      else
      {
        v40 = [v60 allKeys];
        OUTLINED_FUNCTION_59_7();
        if ([v41 countByEnumeratingWithState:? objects:? count:?])
        {
          while (1)
          {
            OUTLINED_FUNCTION_21_20();
            if (!v42)
            {
              objc_enumerationMutation(v40);
            }

            v43 = *v64;
            if (([v12 containsObject:*v64] & 1) == 0)
            {
              [v60 setObject:0 forKeyedSubscript:v43];
            }

            OUTLINED_FUNCTION_51_11();
            if (v42)
            {
              OUTLINED_FUNCTION_59_7();
              if (!OUTLINED_FUNCTION_37(v44, v45, v46, v47))
              {
                break;
              }
            }
          }
        }
      }

      goto LABEL_63;
    }

    v26 = [MEMORY[0x1E695DF70] array];
    obj = [v60 allKeys];
    v27 = [obj countByEnumeratingWithState:v67 objects:v66 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v67[2];
      while (2)
      {
        for (i = 0; i != v28; ++i)
        {
          OUTLINED_FUNCTION_23_14();
          if (v31 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(v67[1] + 8 * i);
          if ([v12 containsObject:v32])
          {
            v33 = [BWFanOutNode alloc];
            v35 = OUTLINED_FUNCTION_48_12(v33, v34);
            v65.receiver = v62;
            v65.super_class = FigCaptureCameraSourcePipeline;
            if ((objc_msgSendSuper2(&v65, sel_addNode_error_, v35, &v68) & 1) == 0 || ([v60 objectForKeyedSubscript:v32], v36 = objc_msgSend(v35, "input"), (OUTLINED_FUNCTION_77_4(v61, v37, v38, v36) & 1) == 0))
            {
              OUTLINED_FUNCTION_0();
              goto LABEL_62;
            }

            [objc_msgSend(v35 "outputs")];
            [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
            [objc_msgSend(v35 "outputs")];
            [OUTLINED_FUNCTION_15() addObject:?];
          }

          else
          {
            [v60 objectForKeyedSubscript:v32];
            [OUTLINED_FUNCTION_15() addObject:?];
            [v60 setObject:0 forKeyedSubscript:v32];
          }
        }

        v28 = [obj countByEnumeratingWithState:v67 objects:v66 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    if (v59 > 2)
    {
      v39 = 0;
    }

    else
    {
      v39 = off_1E7998360[v59];
    }

    [v60 setObject:-[FigCaptureCameraSourcePipeline _addCrossOverNodeToGraph:outputNetworkType:inputs:mediaType:name:outErr:](v62 forKeyedSubscript:{v61, v59, v26, 1986618469, v39, v69), objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v58)}];
    if (!v69[0])
    {
      goto LABEL_63;
    }

    OUTLINED_FUNCTION_14_21();
    goto LABEL_62;
  }

  if (!v59 || v59 == 2)
  {
    v48 = [v60 objectForKeyedSubscript:&unk_1F2244770];
    [MEMORY[0x1E696AD98] numberWithInt:v58];
    [OUTLINED_FUNCTION_1_15() setObject:v48 forKeyedSubscript:?];
  }

  else if (v59 == 1)
  {
    if (![*(v62 + 456) isBravoVariant] || !objc_msgSend(v60, "objectForKey:", &unk_1F2244770) || !objc_msgSend(v60, "objectForKey:", &unk_1F22447A0) || objc_msgSend(v60, "count") != 2)
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_62;
    }

    v23 = [v60 objectForKey:&unk_1F22447A0];
    v24 = [v60 objectForKey:&unk_1F2244770];
    [v60 setObject:-[FigCaptureCameraSourcePipeline _stereoVideoAddSlaveFrameSynchronizerNode:input1:input2:mediaType:name:outErr:](v62 forKeyedSubscript:{v61, v23, v24, v25, @"Back Wide S-Wide sync node", v69), &unk_1F22447D0}];
    [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
    [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
    if (v69[0])
    {
      OUTLINED_FUNCTION_14_21();
LABEL_62:
      FigDebugAssert3();
    }
  }

LABEL_63:
  if (!v69[0] && v68)
  {
    [v68 code];
  }

LABEL_66:
  OUTLINED_FUNCTION_81();
}

- (void)_insertSmartStyleLearningNodeOnOutputsBySourceDeviceType:ifAllowedByAdditionalPreviewConnectionConfigurations:semanticMasksOutputsBySourceDeviceType:pipelineConfiguration:graph:
{
  OUTLINED_FUNCTION_84();
  v62 = v5;
  if (v0)
  {
    v6 = v3;
    v7 = v2;
    v8 = v1;
    v9 = v0;
    v69 = v4;
    v76 = 0;
    v68 = [MEMORY[0x1E695DF90] dictionary];
    if (v6)
    {
      v10 = *(v6 + 176);
    }

    else
    {
      v10 = 0;
    }

    v66 = [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
    v65 = [objc_msgSend(v10 "requiredFormat")];
    if ([v10 cinematicFramingEnabled])
    {
      v11 = 2;
    }

    else
    {
      v12 = [v10 manualCinematicFramingEnabled];
      v11 = 2;
      if (!v12)
      {
        v11 = 3;
      }
    }

    v64 = v11;
    if (v6)
    {
      if (*(v6 + 321) == 1)
      {
        v67 = [objc_msgSend(*(v6 + 216) "irisSinkConfiguration")];
        if (*(v6 + 321))
        {
          v13 = *(v6 + 200);
          OUTLINED_FUNCTION_34_13();
          v17 = OUTLINED_FUNCTION_1_18(v14, v15, v16, v77);
          if (v17)
          {
            v18 = v17;
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                OUTLINED_FUNCTION_10_18();
                if (!v20)
                {
                  objc_enumerationMutation(v13);
                }

                v21 = *(v78[1] + 8 * i);
                v22 = [objc_msgSend(v21 "sinkConfiguration")];
                if (v22 == 14)
                {
                  v22 = [objc_msgSend(v21 "sinkConfiguration")];
                  if (v22 == 3)
                  {
                    v24 = 1;
                    goto LABEL_23;
                  }
                }
              }

              v18 = OUTLINED_FUNCTION_1_18(v22, v23, v78, v77);
              if (v18)
              {
                continue;
              }

              break;
            }

            v24 = 0;
LABEL_23:
            v67 |= v24;
          }
        }
      }

      else
      {
        v67 = 0;
      }

      v25 = (*(v6 + 168) - 4) < 0xFFFFFFFD;
    }

    else
    {
      v67 = 0;
      v25 = 1;
    }

    v63 = v25;
    v26 = [FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v7) copy];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    OUTLINED_FUNCTION_112_0();
    v31 = OUTLINED_FUNCTION_21_10(v27, v28, v29, v30);
    if (v31)
    {
      v32 = v31;
      v61 = v6;
      do
      {
        v33 = 0;
        do
        {
          OUTLINED_FUNCTION_49_7();
          if (!v20)
          {
            objc_enumerationMutation(v8);
          }

          v34 = *(*(&v72 + 1) + 8 * v33);
          v35 = [v9[71] objectForKeyedSubscript:v34];
          if (([v26 containsObject:v34] & 1) == 0 && !v35)
          {
            [v9[57] device];
            v36 = [OUTLINED_FUNCTION_17() newISPSMGProcessingSession:?];
            if (v6 && *(v6 + 264) == 1)
            {
              v37 = [objc_msgSend(*(v6 + 176) "requiredFormat")];
            }

            else
            {
              v37 = 0;
            }

            v38 = [[BWSmartStyleLearningNode alloc] initWithOutputs:v64 masksRefinerEnabled:v37 propagateMasks:v67 ispSMGProcessingSession:v36 squareAspectRatioConfigEnabled:v65 subjectRelightingPreviewVersion:v66];

            if (!v38)
            {
              goto LABEL_55;
            }

            [(BWNode *)v38 setName:@"Source SmartStyle Learning"];
            if (v6)
            {
              [(BWSmartStyleLearningNode *)v38 setDisableWaitForCoefficientsOnFirstFrame:*(v6 + 336)];
              [(BWSmartStyleLearningNode *)v38 setSubjectRelightingEnabled:v63];
              [v9[57] cameraInfoByPortType];
              [OUTLINED_FUNCTION_17() setCameraInfoByPortType:?];
              v39 = *(v6 + 328);
            }

            else
            {
              [(BWSmartStyleLearningNode *)v38 setDisableWaitForCoefficientsOnFirstFrame:0];
              [(BWSmartStyleLearningNode *)v38 setSubjectRelightingEnabled:v63];
              [v9[57] cameraInfoByPortType];
              [OUTLINED_FUNCTION_17() setCameraInfoByPortType:?];
              v39 = 0;
            }

            [(BWSmartStyleLearningNode *)v38 setSmartStyle:v39];
            v71.receiver = v9;
            v71.super_class = FigCaptureCameraSourcePipeline;
            if ((objc_msgSendSuper2(&v71, sel_addNode_error_, v38, &v76) & 1) == 0 || ([v8 objectForKeyedSubscript:v34], v40 = -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v38, "inputs"), "objectAtIndexedSubscript:", 0), (OUTLINED_FUNCTION_93_1(v69, v41, v42, v40) & 1) == 0) || objc_msgSend(v62, "objectForKeyedSubscript:", v34) && (v43 = -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v38, "inputs"), "objectAtIndexedSubscript:", 1), (OUTLINED_FUNCTION_93_1(v69, v44, v45, v43) & 1) == 0))
            {
LABEL_54:
              OUTLINED_FUNCTION_1_9();
              FigDebugAssert3();
              goto LABEL_55;
            }

            [v68 setObject:v38 forKeyedSubscript:v34];
            if ([v9[72] objectForKeyedSubscript:v34])
            {
              v46 = [BWFanOutNode alloc];
              v48 = OUTLINED_FUNCTION_48_12(v46, v47);
              [v48 setName:@"SmartStyle Preview/Capture FanOut"];
              v70.receiver = v9;
              v70.super_class = FigCaptureCameraSourcePipeline;
              if ((objc_msgSendSuper2(&v70, sel_addNode_error_, v48, &v76) & 1) == 0)
              {
                goto LABEL_54;
              }

              [(BWNode *)v38 output];
              v49 = [OUTLINED_FUNCTION_49_8() input];
              if ((OUTLINED_FUNCTION_77_4(v69, v50, v51, v49) & 1) == 0)
              {
                goto LABEL_54;
              }

              [objc_msgSend(v48 "outputs")];
              [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
              [objc_msgSend(v48 "outputs")];
              [objc_msgSend(objc_msgSend(v9[72] objectForKeyedSubscript:{v34), "inputs"), "objectAtIndexedSubscript:", 1}];
              v52 = OUTLINED_FUNCTION_67_5();
              v6 = v61;
              if ((OUTLINED_FUNCTION_77_4(v52, v53, v54, v55) & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            else
            {
              [(BWNode *)v38 output];
              [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
            }
          }

          ++v33;
        }

        while (v32 != v33);
        OUTLINED_FUNCTION_112_0();
        v60 = OUTLINED_FUNCTION_21_10(v56, v57, v58, v59);
        v32 = v60;
      }

      while (v60);
    }

    [v9[71] addEntriesFromDictionary:v68];
LABEL_55:
    if (v76)
    {
      [v76 code];
    }
  }

  OUTLINED_FUNCTION_81();
}

- (void)_insertFunnelOnMetadataOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:mediaType:metadataName:
{
  OUTLINED_FUNCTION_84();
  v85 = v4;
  HIDWORD(v92) = v5;
  v91 = v6;
  v93 = v7;
  if (!v7)
  {
    goto LABEL_50;
  }

  v8 = v3;
  v9 = v2;
  v10 = v1;
  v11 = v0;
  v117[0] = 0;
  v116 = 0;
  if ([v0 count])
  {
    if (v9)
    {
      v12 = *(v9 + 176);
    }

    else
    {
      v12 = 0;
    }

    v13 = [v12 sourceDeviceType];
    v14 = [FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v10) mutableCopy];
    if (![v93[57] isBravoVariant])
    {
      goto LABEL_36;
    }

    v15 = [v11 count];
    v16 = [FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(v10 v13)];
    if (v15 >= 2 && v16)
    {
      v84 = v8;
      LODWORD(v86) = v13;
      v17 = [MEMORY[0x1E695DF70] array];
      obj = [v11 allKeys];
      v18 = [obj countByEnumeratingWithState:v115 objects:v114 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v115[2];
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            OUTLINED_FUNCTION_23_14();
            if (v22 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(v115[1] + 8 * i);
            if ([OUTLINED_FUNCTION_85_0() containsObject:?])
            {
              v24 = [[BWFanOutNode alloc] initWithFanOutCount:2 mediaType:HIDWORD(v92)];
              v113.receiver = v93;
              v113.super_class = FigCaptureCameraSourcePipeline;
              if ((objc_msgSendSuper2(&v113, sel_addNode_error_, v24, &v116) & 1) == 0 || ([v11 objectForKeyedSubscript:v23], v25 = objc_msgSend(OUTLINED_FUNCTION_111(), "input"), (OUTLINED_FUNCTION_142(v25, v26, v27, v28, v29, v30, v31, v32, v79, v81, v82, v84, v85, v86, obj, v91) & 1) == 0))
              {
                OUTLINED_FUNCTION_0();
                goto LABEL_47;
              }

              [(NSArray *)[(BWNode *)v24 outputs] objectAtIndexedSubscript:0];
              [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
              [(NSArray *)[(BWNode *)v24 outputs] objectAtIndexedSubscript:1];
              v33 = [OUTLINED_FUNCTION_24_1() addObject:?];
            }

            else
            {
              [v11 objectForKeyedSubscript:v23];
              [OUTLINED_FUNCTION_24_1() addObject:?];
              v33 = [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
            }
          }

          v19 = OUTLINED_FUNCTION_147(v33, v34, v115, v114, v35, v36, v37, v38, v79, v81, v82, v84, v85, v86, obj);
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Metadata Funnel", v84];
      [(FigCaptureCameraSourcePipeline *)v93 _addFunnelNodeToGraph:v91 inputs:v17 mediaType:HIDWORD(v92) name:v39 outErr:v117, v40, v41, v80, v81, v82, v84, v85, v86, obj, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104];
      v43 = v42;
      [MEMORY[0x1E696AD98] numberWithInt:v87];
      [OUTLINED_FUNCTION_1_15() setObject:v43 forKeyedSubscript:?];
      if (v117[0])
      {
        FigDebugAssert3();
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    if (v16)
    {
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      obja = [v11 allKeys];
      v44 = [obja countByEnumeratingWithState:&v109 objects:v108 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v110;
        while (2)
        {
          v47 = 0;
          v88 = sel_addNode_error_;
          do
          {
            if (*v110 != v46)
            {
              objc_enumerationMutation(obja);
            }

            v48 = *(*(&v109 + 1) + 8 * v47);
            if ([v14 containsObject:v48])
            {
              v49 = [[BWFanOutNode alloc] initWithFanOutCount:2 mediaType:HIDWORD(v92)];
              v107.receiver = v93;
              v107.super_class = FigCaptureCameraSourcePipeline;
              if ((objc_msgSendSuper2(&v107, v88, v49, &v116) & 1) == 0 || ([v11 objectForKeyedSubscript:v48], v50 = objc_msgSend(OUTLINED_FUNCTION_111(), "input"), (OUTLINED_FUNCTION_142(v50, v51, v52, v53, v54, v55, v56, v57, v79, v81, v82, v83, v85, v88, obja, v91) & 1) == 0))
              {
                OUTLINED_FUNCTION_0();
LABEL_47:
                FigDebugAssert3();
                goto LABEL_48;
              }

              [(NSArray *)[(BWNode *)v49 outputs] objectAtIndexedSubscript:0];
              [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
              v58 = [(NSArray *)[(BWNode *)v49 outputs] objectAtIndexedSubscript:1];
              [MEMORY[0x1E696AD98] numberWithInt:v13];
              v59 = OUTLINED_FUNCTION_1_15();
              v61 = v58;
            }

            else
            {
              v62 = [v11 objectForKeyedSubscript:v48];
              [MEMORY[0x1E696AD98] numberWithInt:v13];
              [OUTLINED_FUNCTION_1_15() setObject:v62 forKeyedSubscript:?];
              v59 = OUTLINED_FUNCTION_4_3();
              v60 = v48;
            }

            v63 = [v59 setObject:v61 forKeyedSubscript:v60];
            ++v47;
          }

          while (v45 != v47);
          v45 = OUTLINED_FUNCTION_147(v63, v64, &v109, v108, v65, v66, v67, v68, v79, v81, v82, v83, v85, v88, obja);
          if (v45)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
LABEL_36:
      v69 = [v11 allKeys];
      OUTLINED_FUNCTION_59_7();
      v71 = [v70 countByEnumeratingWithState:? objects:? count:?];
      if (v71)
      {
        v72 = v71;
        v73 = *v106;
        do
        {
          for (j = 0; j != v72; ++j)
          {
            if (*v106 != v73)
            {
              objc_enumerationMutation(v69);
            }

            if (([v14 containsObject:*(v105 + 8 * j)] & 1) == 0)
            {
              [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
            }
          }

          OUTLINED_FUNCTION_59_7();
          v72 = OUTLINED_FUNCTION_37(v75, v76, v77, v78);
        }

        while (v72);
      }
    }
  }

LABEL_48:
  if (v116)
  {
    [v116 code];
  }

LABEL_50:
  OUTLINED_FUNCTION_81();
}

- (void)_insertSmartStyleMetadataSynchronizerNodeOnOutputsBySourceDeviceType:pipelineConfiguration:graph:
{
  OUTLINED_FUNCTION_84();
  v32 = v3;
  if (v0)
  {
    v4 = v2;
    v5 = v1;
    v6 = v0;
    v42[0] = 0;
    v34 = [MEMORY[0x1E695DF90] dictionary];
    if (v4 && *(v4 + 321) == 1)
    {
      v7 = [objc_msgSend(*(v4 + 216) "irisSinkConfiguration")];
    }

    else
    {
      v7 = 0;
    }

    v33 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, v7);
    OUTLINED_FUNCTION_34_13();
    v11 = OUTLINED_FUNCTION_37(v8, v9, v10, v40);
    if (v11)
    {
      v12 = v11;
      v31 = *off_1E798A8C0;
      v30 = *off_1E798A8F8;
      v29 = *off_1E798A920;
      v28 = *off_1E798A928;
      v27 = *off_1E798A8E8;
      v26 = *off_1E798A8D0;
      v25 = *off_1E798A4C0;
      while (2)
      {
        v13 = 0;
        v35 = v12;
        do
        {
          OUTLINED_FUNCTION_49_7();
          if (!v14)
          {
            objc_enumerationMutation(v5);
          }

          v15 = *(v41[1] + 8 * v13);
          v16 = [v6[71] objectForKeyedSubscript:v15];
          if (!v16)
          {
            v18 = objc_alloc(MEMORY[0x1E695DF70]);
            v39[0] = v31;
            v39[1] = v30;
            v39[2] = v29;
            v39[3] = v28;
            v39[4] = v27;
            v39[5] = v26;
            [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:6];
            v19 = [OUTLINED_FUNCTION_17() initWithArray:?];
            [BWMetadataSynchronizerNode alloc];
            v38 = v33;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
            v37 = v25;
            [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
            v21 = [OUTLINED_FUNCTION_129() initWithArraysOfMetadataInputs:v20 propagateSampleBufferAttachmentKeys:? propagateSampleBufferMetadataDictKeys:? syncMetadataByPortType:? syncOnlyIfMetadataEnabledForKeys:?];
            [v21 setName:@"SmartStyle AttachedMedia Synchronizer"];
            [v34 setObject:v21 forKeyedSubscript:v15];
            v36.receiver = v6;
            v36.super_class = FigCaptureCameraSourcePipeline;
            if ((objc_msgSendSuper2(&v36, sel_addNode_error_, v21, v42) & 1) == 0 || ([v5 objectForKeyedSubscript:v15], v22 = objc_msgSend(objc_msgSend(v21, "inputs"), "objectAtIndexedSubscript:", 0), (OUTLINED_FUNCTION_146(v32, v23, v24, v22) & 1) == 0))
            {
              OUTLINED_FUNCTION_1_9();
              FigDebugAssert3();
              goto LABEL_18;
            }

            [objc_msgSend(v21 "outputs")];
            v16 = [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
            v12 = v35;
          }

          ++v13;
        }

        while (v12 != v13);
        v12 = OUTLINED_FUNCTION_37(v16, v17, v41, v40);
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    [v6[72] addEntriesFromDictionary:v34];
LABEL_18:
    if (v42[0])
    {
      [v42[0] code];
    }
  }

  OUTLINED_FUNCTION_81();
}

- (void)_insertFunnelOnPreviewOutputsBySourceDeviceType:previewDerivedConnectionConfigurations:graph:
{
  OUTLINED_FUNCTION_84();
  v2 = v1;
  v37 = v4;
  v38 = v3;
  v47 = v5;
  if (v3)
  {
    v6 = v0;
    v56[0] = 0;
    if ([v0 count])
    {
      v36 = v2;
      v42 = [MEMORY[0x1E695DF90] dictionary];
      memset(v55, 0, 64);
      obj = [v6 allKeys];
      v43 = [obj countByEnumeratingWithState:v55 objects:v54 count:16];
      if (v43)
      {
        OUTLINED_FUNCTION_23_14();
        v40 = v6;
        v41 = v7;
        while (2)
        {
          for (i = 0; i != v43; ++i)
          {
            OUTLINED_FUNCTION_23_14();
            if (v9 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(v55[1] + 8 * i);
            v45 = [MEMORY[0x1E695DF70] array];
            v46 = [MEMORY[0x1E695DF70] array];
            v11 = [MEMORY[0x1E695DF70] array];
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            OUTLINED_FUNCTION_112_0();
            v12 = [v47 countByEnumeratingWithState:? objects:? count:?];
            if (!v12)
            {
              goto LABEL_27;
            }

            v13 = v12;
            v44 = i;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                OUTLINED_FUNCTION_49_7();
                if (!v18)
                {
                  objc_enumerationMutation(v47);
                }

                v19 = *(*(&v50 + 1) + 8 * j);
                [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v19, "underlyingDeviceType")}];
                if ([OUTLINED_FUNCTION_17() isEqualToNumber:?])
                {
                  if ([v19 videoDataSinkConfiguration])
                  {
                    [v11 setObject:v19 atIndexedSubscript:v14++];
                  }

                  else if ([objc_msgSend(v19 "sinkConfiguration")] == 14)
                  {
                    [v46 setObject:v19 atIndexedSubscript:v15++];
                  }

                  else
                  {
                    [v45 setObject:v19 atIndexedSubscript:v16++];
                  }
                }
              }

              OUTLINED_FUNCTION_112_0();
              v13 = [v47 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v13);
            v20 = v16 + v15;
            v6 = v40;
            i = v44;
            if (v14 <= 1 && (v14 == 1 ? (v21 = v20 < 1) : (v21 = 1), v21))
            {
LABEL_27:
              v48 = [v6 objectForKeyedSubscript:v10];
              v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
            }

            else
            {
              v23 = [MEMORY[0x1E695DF70] arrayWithArray:v45];
              [v23 addObjectsFromArray:v11];
              [v23 addObjectsFromArray:v46];
              v24 = [[BWFanOutNode alloc] initWithFanOutCount:(v14 + v20) mediaType:1986618469];
              [(BWNode *)v24 setName:@"Preview Output Splitter"];
              FigCaptureNameSplitterNodeOutputsCorrespondingToConnections([(BWNode *)v24 outputs], v23);
              v49.receiver = v38;
              v49.super_class = FigCaptureCameraSourcePipeline;
              if ((objc_msgSendSuper2(&v49, sel_addNode_error_, v24, v56) & 1) == 0 || ([v40 objectForKeyedSubscript:v10], v25 = -[BWNode input](v24, "input"), (OUTLINED_FUNCTION_146(v37, v26, v27, v25) & 1) == 0))
              {
                OUTLINED_FUNCTION_0();
                FigDebugAssert3();
                goto LABEL_35;
              }

              v22 = [(BWNode *)v24 outputs];
            }

            v28 = [v42 setObject:v22 forKeyedSubscript:v10];
          }

          v43 = OUTLINED_FUNCTION_147(v28, v29, v55, v54, v30, v31, v32, v33, v34, v35, v36, v37, v38, sel_addNode_error_, obj);
          if (v43)
          {
            continue;
          }

          break;
        }
      }

      v38[21] = [v42 copy];
LABEL_35:
      if (v56[0])
      {
        [v56[0] code];
      }
    }
  }

  OUTLINED_FUNCTION_81();
}

- (void)_rerouteDetectedObjectsOutputsForSourcesWithCinematicFramingEnabled:graph:
{
  OUTLINED_FUNCTION_84();
  if (v0)
  {
    v1 = v0;
    if (![*(v0 + 144) count] || !objc_msgSend(*(v1 + 152), "count"))
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = [*(v1 + 144) allKeys];
      v2 = [obj countByEnumeratingWithState:&v25 objects:v24 count:16];
      if (v2)
      {
        v3 = v2;
        v4 = *v26;
        do
        {
          v5 = 0;
          do
          {
            if (*v26 != v4)
            {
              objc_enumerationMutation(obj);
            }

            v6 = *(*(&v25 + 1) + 8 * v5);
            if ([OUTLINED_FUNCTION_85_0() objectForKeyedSubscript:?])
            {
              v7 = [*(v1 + 144) objectForKeyedSubscript:v6];
              PortTypeForUnderlyingDeviceType = BWUtilitiesGetPortTypeForUnderlyingDeviceType([v6 intValue], objc_msgSend(objc_msgSend(v7, "detectionMetadataInputsByPortType"), "allKeys"));
              if ([objc_msgSend(v7 "detectionMetadataInputsByPortType")] && (v9 = objc_msgSend(OUTLINED_FUNCTION_85_0(), "objectForKeyedSubscript:"), objc_msgSend(objc_msgSend(v7, "detectionMetadataInputsByPortType"), "objectForKeyedSubscript:", PortTypeForUnderlyingDeviceType), (objc_msgSend(OUTLINED_FUNCTION_40_9(), "connectOutput:toInput:pipelineStage:", v9) & 1) != 0) && objc_msgSend(v7, "detectionMetadataOutput"))
              {
                [v7 detectionMetadataOutput];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
              }

              else
              {
                OUTLINED_FUNCTION_0();
                FigDebugAssert3();
              }
            }

            ++v5;
          }

          while (v3 != v5);
          v10 = [obj countByEnumeratingWithState:&v25 objects:v24 count:16];
          v3 = v10;
        }

        while (v10);
      }

      [*(v1 + 152) allKeys];
      OUTLINED_FUNCTION_47_0();
      obja = v11;
      v12 = [v11 countByEnumeratingWithState:? objects:? count:?];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          v15 = 0;
          do
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(obja);
            }

            v16 = *(v22 + 8 * v15);
            if ([OUTLINED_FUNCTION_85_0() objectForKeyedSubscript:?] && (*(v1 + 588) & 1) == 0)
            {
              v17 = [*(v1 + 152) objectForKeyedSubscript:v16];
              if ([v17 detectionMetadataInput] && (v18 = objc_msgSend(OUTLINED_FUNCTION_85_0(), "objectForKeyedSubscript:"), objc_msgSend(v17, "detectionMetadataInput"), (objc_msgSend(OUTLINED_FUNCTION_40_9(), "connectOutput:toInput:pipelineStage:", v18) & 1) != 0) && objc_msgSend(v17, "detectionMetadataOutput"))
              {
                [v17 detectionMetadataOutput];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
              }

              else
              {
                OUTLINED_FUNCTION_0();
                FigDebugAssert3();
              }
            }

            ++v15;
          }

          while (v13 != v15);
          OUTLINED_FUNCTION_47_0();
          v19 = [obja countByEnumeratingWithState:? objects:? count:?];
          v13 = v19;
        }

        while (v19);
      }
    }
  }

  OUTLINED_FUNCTION_81();
}

- (uint64_t)liveReconfigureForOutputDimensions:(uint64_t)a3 aspectRatio:
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v7 = *(v6 + 64);
    v9 = OUTLINED_FUNCTION_52(v6, v8, &v70, v69);
    if (v9)
    {
      v10 = v9;
      v11 = *v71;
      do
      {
        v12 = 0;
        do
        {
          if (*v71 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v70 + 1) + 8 * v12++) setAspectRatio:a3];
        }

        while (v10 != v12);
        v10 = OUTLINED_FUNCTION_52(v13, v14, &v70, v69);
      }

      while (v10);
    }

    OUTLINED_FUNCTION_1_13();
    v15 = *(v4 + 152);
    result = OUTLINED_FUNCTION_0_0(v16, v17, v18, v19, v20, v21, v22, v23, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66);
    if (result)
    {
      OUTLINED_FUNCTION_61_6();
      do
      {
        v24 = 0;
        do
        {
          OUTLINED_FUNCTION_71();
          if (!v25)
          {
            objc_enumerationMutation(v15);
          }

          v26 = [objc_msgSend(*(v4 + 152) objectForKeyedSubscript:{*(v68 + 8 * v24)), "setOutputDimensions:", v3}];
          v24 = v24 + 1;
        }

        while (v7 != v24);
        result = OUTLINED_FUNCTION_0_0(v26, v27, v28, v29, v30, v31, v32, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67);
        v7 = result;
      }

      while (result);
    }
  }

  return result;
}

- (uint64_t)captureSourceDepthDataFormat
{
  if (result)
  {
    return *(result + 480);
  }

  return result;
}

- (uint64_t)hardwareDepthFilteringEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 512));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)preLTMThumbnailEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 585));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)postColorProcessingThumbnailEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 586));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)weightSegmentMapEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 587));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)cinematicFramingCameraStatesProvider
{
  if (result)
  {
    return *(result + 536);
  }

  return result;
}

- (uint64_t)smartCropHomographyProvider
{
  if (result)
  {
    return *(result + 552);
  }

  return result;
}

- (uint64_t)_buildMultiStreamCameraSourcePipeline:(uint64_t)a1 graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:.cold.1(uint64_t a1)
{
  result = csp_trueVideoCaptureEnabled(0);
  *(a1 + 584) = result;
  return result;
}

- (uint64_t)_buildMultiStreamCameraSourcePipeline:(_DWORD *)a1 graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:.cold.15(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_buildMultiStreamCameraSourcePipeline:(id *)a1 graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:.cold.16(id *a1)
{
  [a1[10] updateFormatRequirementsFromSourceNode:a1[9]];
  result = [a1[11] updateFormatRequirementsFromSourceNode:a1[9]];
  if (a1[10])
  {
    [a1[9] updateFormatRequirementsFromSourceNode:?];
    result = [a1[11] updateFormatRequirementsFromSourceNode:a1[10]];
  }

  if (a1[11])
  {
    [a1[10] updateFormatRequirementsFromSourceNode:?];
    return [a1[9] updateFormatRequirementsFromSourceNode:a1[11]];
  }

  return result;
}

- (uint64_t)_buildMultiStreamCameraSourcePipeline:(_DWORD *)a1 graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:.cold.22(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_buildMultiStreamCameraSourcePipeline:(_DWORD *)a1 graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:.cold.23(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (void)_buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:.cold.25()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_115_2();
}

- (_BYTE)_buildMultiStreamCameraSourcePipeline:(_BYTE *)result graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:.cold.33(_BYTE *result)
{
  result[585] = 0;
  result[586] = 0;
  result[587] = 0;
  return result;
}

- (uint64_t)_buildMultiStreamCameraSourcePipeline:(_DWORD *)a1 graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:.cold.34(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_buildMultiStreamCameraSourcePipeline:(_DWORD *)a1 graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:.cold.35(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end