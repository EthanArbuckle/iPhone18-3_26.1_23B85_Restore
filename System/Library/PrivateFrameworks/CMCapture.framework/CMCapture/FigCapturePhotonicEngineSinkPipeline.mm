@interface FigCapturePhotonicEngineSinkPipeline
+ (void)initialize;
- (FigCapturePhotonicEngineSinkPipeline)initWithConfiguration:(id)a3 captureDevice:(id)a4 sourceOutputsByPortType:(id)a5 sourceSensorRawOutputsByPortType:(id)a6 highResStillImageDimensions:(id)a7 supplementalPointCloudCaptureDevice:(id)a8 supplementalPointCloudSourceOutput:(id)a9 captureStatusDelegate:(id)a10 inferenceScheduler:(id)a11 cinematicFramingStatesProvider:(id)a12 smartCropHomographyProvider:(id)a13 multiCamClientCompositingCallback:(id)a14 isPrimaryStillImagePipeline:(BOOL)a15 graph:(id)a16 name:(id)a17;
- (uint64_t)_addLandmarksInferenceToNode:(uint64_t)result;
- (uint64_t)_addMattingInferenceToNode:(uint64_t)a3 mattingVersion:(int)a4 learnedMattingEnabled:(uint64_t)a5 learnedMattingVersion:(uint64_t)a6 mainImageDownscalingFactor:(unsigned int)a7 targetAspectRatio:(uint64_t)a8 appliesFinalCropRect:(float)a9 enabledSemantics:(float)a10 metalCommandQueue:(uint64_t)a11 mattingSensorConfigurationsByPortType:(char)a12 clientIsCameraOrDerivative:(unsigned int)a13 requiredAdditionalInferenceOutputBuffers:;
- (uint64_t)_addScalerNodeWithNodeConfiguration:(int)a3 intermediate:(uint64_t)a4 bravoConstituentPhotoDeliveryEnabled:(uint64_t)a5 mainImageDownscalingFactorByAttachedMediaKey:(int)a6 zoomingDepthSupported:(int)a7 smartStyleReversibilityEnabled:(uint64_t)a8 constantColorConfidenceMapDimensions:(unsigned __int8)a9 filterRenderingEnabled:(unsigned __int8)a10 enforcesZoomingForPortraitCaptures:(unsigned __int8)a11 backPressureDrivenPipelining:(void *)a12 scalerNodeInputOut:(uint64_t *)a13 scalerNodeOutputOut:;
- (uint64_t)_buildScaleAndEncodeSubPipelineWithPipelineStage:(uint64_t)a1 graph:(uint64_t)a2 nodeConfiguration:(void *)a3 stillImageSinkPipelineWithConfiguration:(void *)a4 sensorConfigurationsByPortType:(void *)a5 supportsScaling:(uint64_t)a6 deferredPearlDepthProcessingEnabled:(int)a7 provideMeteorHeadroom:(int)a8 provideFlexGTC:(char)a9 providePostEncodeInferences:(char)a10 semanticDevelopmentVersion:(char)a11 constituentPhotoDeliveryEnabled:(unsigned int)a12 demosaicedRawEnabled:(unsigned __int8)a13 nonPropagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)a14 propagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)a15 scalingMainImageDownscalingFactorByAttachedMediaKey:(uint64_t)a16 inferenceScheduler:(uint64_t)a17 subPipelineInputOut:(uint64_t)a18 subPipelineOutputOut:(uint64_t)a19 cameraSupportsFlash:(unsigned __int8)a20 cinematicFramingStatesProvider:(void *)a21 smartCropHomographyProvider:(void *)a22 multiCamClientCompositingCallback:(uint64_t)a23 photoEncoderControllerOut:(void *)a24;
- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:(uint64_t)a3 captureDevice:(uint64_t)a4 sourceOutputsByPortType:(uint64_t)a5 sourceSensorRawOutputsByPortType:(uint64_t)a6 highResStillImageDimensions:(uint64_t)a7 supplementalPointCloudCaptureDevice:(uint64_t)a8 supplementalPointCloudSourceOutput:(uint64_t)a9 captureStatusDelegate:(uint64_t)a10 inferenceScheduler:(void *)a11 cinematicFramingStatesProvider:(void *)a12 smartCropHomographyProvider:(uint64_t)a13 multiCamClientCompositingCallback:(void *)a14 graph:;
- (void)connectToSecondaryMultiCameraClientCompositingPipeline:(id)a3;
- (void)dealloc;
@end

@implementation FigCapturePhotonicEngineSinkPipeline

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (FigCapturePhotonicEngineSinkPipeline)initWithConfiguration:(id)a3 captureDevice:(id)a4 sourceOutputsByPortType:(id)a5 sourceSensorRawOutputsByPortType:(id)a6 highResStillImageDimensions:(id)a7 supplementalPointCloudCaptureDevice:(id)a8 supplementalPointCloudSourceOutput:(id)a9 captureStatusDelegate:(id)a10 inferenceScheduler:(id)a11 cinematicFramingStatesProvider:(id)a12 smartCropHomographyProvider:(id)a13 multiCamClientCompositingCallback:(id)a14 isPrimaryStillImagePipeline:(BOOL)a15 graph:(id)a16 name:(id)a17
{
  v27.receiver = self;
  v27.super_class = FigCapturePhotonicEngineSinkPipeline;
  v23 = -[FigCaptureSinkPipeline initWithGraph:name:sinkID:](&v27, sel_initWithGraph_name_sinkID_, a16, a17, [objc_msgSend(a3 "sinkConfiguration")]);
  v24 = v23;
  if (v23)
  {
    v23->_isPrimaryStillImagePipeline = a15;
    v25 = [(FigCapturePhotonicEngineSinkPipeline *)v23 _buildStillImageSinkPipelineWithConfiguration:a3 captureDevice:a4 sourceOutputsByPortType:a5 sourceSensorRawOutputsByPortType:a6 highResStillImageDimensions:a7 supplementalPointCloudCaptureDevice:a8 supplementalPointCloudSourceOutput:a9 captureStatusDelegate:a10 inferenceScheduler:a11 cinematicFramingStatesProvider:a12 smartCropHomographyProvider:a13 multiCamClientCompositingCallback:a14 graph:a16];
    if (v25)
    {
      [FigCapturePhotonicEngineSinkPipeline initWithConfiguration:v25 captureDevice:v24 sourceOutputsByPortType:? sourceSensorRawOutputsByPortType:? highResStillImageDimensions:? supplementalPointCloudCaptureDevice:? supplementalPointCloudSourceOutput:? captureStatusDelegate:? inferenceScheduler:? cinematicFramingStatesProvider:? smartCropHomographyProvider:? multiCamClientCompositingCallback:? isPrimaryStillImagePipeline:? graph:? name:?];
      return 0;
    }
  }

  return v24;
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:(uint64_t)a3 captureDevice:(uint64_t)a4 sourceOutputsByPortType:(uint64_t)a5 sourceSensorRawOutputsByPortType:(uint64_t)a6 highResStillImageDimensions:(uint64_t)a7 supplementalPointCloudCaptureDevice:(uint64_t)a8 supplementalPointCloudSourceOutput:(uint64_t)a9 captureStatusDelegate:(uint64_t)a10 inferenceScheduler:(void *)a11 cinematicFramingStatesProvider:(void *)a12 smartCropHomographyProvider:(uint64_t)a13 multiCamClientCompositingCallback:(void *)a14 graph:
{
  result = MEMORY[0x1EEE9AC00](a1);
  v706 = v19;
  v747 = v20;
  v723 = v21;
  if (!result)
  {
    return result;
  }

  v22 = v16;
  v23 = v15;
  v24 = result;
  obj = v17;
  v770 = v18;
  v1056[0] = 0;
  v1055 = 0;
  [v15 sinkConfiguration];
  objc_opt_class();
  v25 = 0;
  if (objc_opt_isKindOfClass())
  {
    v25 = [v23 sinkConfiguration];
  }

  *(v24 + 48) = [v23 pipelineStagePriority];
  *(v24 + 52) = [v23 inferencePriority];
  v26 = [v23 deferredProcessingSupported];
  v27 = [v23 stillImageSinkPipelineProcessingMode];
  v751 = [v25 filterRenderingEnabled];
  v28 = [v25 depthDataDeliveryEnabled];
  v759 = v27;
  v765 = v27 == 1;
  v763 = v28;
  if (v27 == 1)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v719 = v29;
  v757 = v22;
  v810 = v29 == 1 && [v23 depthDataType] == 3;
  v30 = v27 == 1;
  v31 = [v23 deepFusionEnhancedResolutionDimensions];
  v32 = v30 & v763;
  if (v31 <= 0)
  {
    v32 = 0;
  }

  v750 = v32;
  v774 = [v25 previewQualityAdjustedPhotoFilterRenderingEnabled];
  if (v774)
  {
    v33 = 2;
  }

  else
  {
    v33 = 0;
  }

  v694 = v33;
  v34 = objc_alloc_init(BWPhotonicEngineNodeConfiguration);
  -[BWStillImageNodeConfiguration setPipelineProcessingContext:](v34, "setPipelineProcessingContext:", [v23 pipelineProcessingContext]);
  [(BWStillImageNodeConfiguration *)v34 setDeferredCaptureSupportEnabled:v26];
  [(BWStillImageNodeConfiguration *)v34 setDeferredPhotoProcessorEnabled:v30];
  [(BWStillImageNodeConfiguration *)v34 setFilterRenderingEnabled:v751];
  if (v763)
  {
    -[BWStillImageNodeConfiguration setDepthDataOutputDimensions:](v34, "setDepthDataOutputDimensions:", [v23 depthDataTargetDimensions]);
  }

  -[BWStillImageNodeConfiguration setStillImageProcessingMode:](v34, "setStillImageProcessingMode:", [v23 stillImageSinkPipelineProcessingMode]);
  -[BWStillImageNodeConfiguration setMetalCommandQueue:](v34, "setMetalCommandQueue:", [objc_msgSend(MEMORY[0x1E6991778] "metalDevice")]);
  if (![v23 stillImageSinkPipelineProcessingMode])
  {
    v35 = [(BWStillImageNodeConfiguration *)v34 metalCommandQueue];
    [v23 pipelineStagePriority];
    v36 = FigDispatchQueueCreateWithPriority();
    [(MTLCommandQueue *)v35 setSubmissionQueue:v36];

    [v23 pipelineStagePriority];
    v37 = FigDispatchQueueCreateWithPriority();
    [(MTLCommandQueue *)v35 setCompletionQueue:v37];
  }

  [(BWStillImageNodeConfiguration *)v34 setFigThreadPriority:*(v24 + 48)];
  -[BWStillImageNodeConfiguration setDepthDataType:](v34, "setDepthDataType:", [v23 depthDataType]);
  -[BWStillImageNodeConfiguration setDeepFusionEnhancedResolutionDimensions:](v34, "setDeepFusionEnhancedResolutionDimensions:", [v23 deepFusionEnhancedResolutionDimensions]);
  -[BWStillImageNodeConfiguration setDowngradedDeepFusionEnhancedResolutionDimensions:](v34, "setDowngradedDeepFusionEnhancedResolutionDimensions:", [v23 downgradedDeepFusionEnhancedResolutionDimensions]);
  [(BWStillImageNodeConfiguration *)v34 setOptimizedEnhancedResolutionDepthPipelineEnabled:v750];
  -[BWStillImageNodeConfiguration setConstantColorConfidenceMapDimensions:](v34, "setConstantColorConfidenceMapDimensions:", [v23 constantColorConfidenceMapDimensions]);
  -[BWStillImageNodeConfiguration setDocumentScanningEnabled:](v34, "setDocumentScanningEnabled:", [v23 constantColorClippingRecoveryEnabled]);
  -[BWStillImageNodeConfiguration setStereoPhotoOutputDimensions:](v34, "setStereoPhotoOutputDimensions:", [v23 stereoPhotoOutputDimensions]);
  -[BWStillImageNodeConfiguration setPearlModuleType:](v34, "setPearlModuleType:", [v23 pearlModuleType]);
  [(BWStillImageNodeConfiguration *)v34 setInferenceScheduler:a10];
  -[BWStillImageNodeConfiguration setMaxLossyCompressionLevel:](v34, "setMaxLossyCompressionLevel:", [v23 maxLossyCompressionLevel]);
  -[BWStillImageNodeConfiguration setCameraSensorOrientationCompensationDegreesCW:](v34, "setCameraSensorOrientationCompensationDegreesCW:", [v23 cameraSensorOrientationCompensationDegreesCW]);
  v38 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:obj];
  v748 = [v23 depthDataType];
  v722 = v26;
  if (v748 == 7)
  {
    v39 = *off_1E798A0C8;
    v40 = [obj objectForKeyedSubscript:*off_1E798A0C8];
    v1053 = v39;
    v1054 = v40;
    v691 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1054 forKeys:&v1053 count:1];
    [v38 setObject:0 forKeyedSubscript:v39];
  }

  else
  {
    v691 = 0;
  }

  v800 = v38;
  v41 = [v38 allKeys];
  v42 = [obj allKeys];
  v756 = [v770 count];
  v693 = v42;
  v764 = v41;
  if ([obj count] >= 2)
  {
    v43 = [v23 deviceType];
    if (v43 > 8)
    {
      switch(v43)
      {
        case 9:
          v44 = *off_1E798A0D0;
          v52 = *off_1E798A0D8;
          v1048[0] = *off_1E798A0C0;
          v1048[1] = v52;
          v45 = MEMORY[0x1E695DEC8];
          v46 = v1048;
          v51 = 2;
          goto LABEL_39;
        case 12:
          v44 = *off_1E798A0F8;
          v789 = *off_1E798A0E8;
          v1050 = *off_1E798A0E8;
          v48 = MEMORY[0x1E695DEC8];
          v49 = &v1050;
          break;
        case 13:
          v44 = *off_1E798A0C0;
          v789 = *off_1E798A0C8;
          v1047 = *off_1E798A0C8;
          v48 = MEMORY[0x1E695DEC8];
          v49 = &v1047;
          break;
        default:
          goto LABEL_1022;
      }
    }

    else
    {
      if (v43 == 4)
      {
        v44 = *off_1E798A0C0;
        v1052 = *off_1E798A0D8;
        v45 = MEMORY[0x1E695DEC8];
        v46 = &v1052;
LABEL_37:
        v51 = 1;
LABEL_39:
        v789 = 0;
        v811 = [v45 arrayWithObjects:v46 count:v51];
        v772 = v811;
        goto LABEL_43;
      }

      if (v43 != 6)
      {
        if (v43 != 8)
        {
          goto LABEL_1022;
        }

        v44 = *off_1E798A0D0;
        v1049 = *off_1E798A0C0;
        v45 = MEMORY[0x1E695DEC8];
        v46 = &v1049;
        goto LABEL_37;
      }

      v44 = *off_1E798A0E0;
      v789 = *off_1E798A0E8;
      v1051 = *off_1E798A0E8;
      v48 = MEMORY[0x1E695DEC8];
      v49 = &v1051;
    }

    v811 = [v48 arrayWithObjects:v49 count:1];
    v772 = 0;
LABEL_43:
    v53 = [MEMORY[0x1E695DFD8] setWithArray:v42];
    v54 = [MEMORY[0x1E695DFA8] set];
    v55 = v54;
    if (v44)
    {
      [v54 addObject:v44];
    }

    v742 = v44;
    if (v772)
    {
      [v55 addObjectsFromArray:?];
    }

    if (v789)
    {
      [v55 addObject:?];
    }

    if (([v53 isEqualToSet:v55] & 1) == 0)
    {
      goto LABEL_1022;
    }

    goto LABEL_50;
  }

  v47 = [v41 firstObject];
  v742 = v47;
  if (v810)
  {
    v1046 = *off_1E798A0E8;
    v811 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v1046 count:1];
  }

  else
  {
    v50 = v47;
    v1045 = v47;
    v811 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v1045 count:1];
    if (!v50)
    {
      goto LABEL_1022;
    }
  }

  v789 = 0;
  v772 = 0;
LABEL_50:
  v733 = [v770 allKeys];
  if (v756)
  {
    v56 = [MEMORY[0x1E695DFD8] setWithArray:v733];
    v57 = [MEMORY[0x1E695DFA8] set];
    v58 = v57;
    if (v742)
    {
      [v57 addObject:?];
    }

    if (v772)
    {
      [v58 addObjectsFromArray:?];
    }

    v59 = [v789 isEqualToString:*off_1E798A0E8];
    v60 = [v789 isEqualToString:*off_1E798A0C8];
    if (v789 && (v59 & 1) == 0 && (v60 & 1) == 0)
    {
      [v58 addObject:v789];
    }

    if (([v56 isEqualToSet:v58] & 1) == 0)
    {
      goto LABEL_1022;
    }
  }

  v758 = v34;
  v744 = v25;
  v762 = v24;
  v825 = +[FigCaptureCameraParameters sharedInstance];
  v61 = [v23 sensorIDStringsByPortType];
  v822 = [v23 cameraInfoByPortType];
  v62 = [v23 moduleCalibrationByPortType];
  v63 = [MEMORY[0x1E695DF90] dictionary];
  v64 = [v23 outputStillImageDimensions];
  v66 = v64 < 1 || SHIDWORD(v64) < 1;
  v818 = v66;
  v67 = [v23 gdcInDCProcessorOutputCropDimensions];
  v1041 = 0u;
  v1042 = 0u;
  v69 = v67 > 0 && SHIDWORD(v67) > 0;
  v740 = v69;
  v1043 = 0uLL;
  v1044 = 0uLL;
  v824 = v63;
  v826 = [obj countByEnumeratingWithState:&v1041 objects:v1040 count:16];
  if (v826)
  {
    v792 = 0;
    v785 = 0;
    v804 = *v1042;
    v801 = *off_1E798A0E0;
    v778 = *off_1E798A0F8;
    v70 = *off_1E798A0E8;
    v776 = *off_1E798A0C8;
    do
    {
      for (i = 0; i != v826; i = i + 1)
      {
        if (*v1042 != v804)
        {
          objc_enumerationMutation(obj);
        }

        v72 = *(*(&v1041 + 1) + 8 * i);
        v73 = [v61 objectForKeyedSubscript:v72];
        v63 = v824;
        [v824 setObject:-[BWSensorConfiguration initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:moduleCalibration:]([BWSensorConfiguration alloc] forKeyedSubscript:{"initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:moduleCalibration:", v72, v73, -[FigCaptureCameraParameters sensorIDDictionaryForPortType:sensorIDString:](v825, "sensorIDDictionaryForPortType:sensorIDString:", v72, v73), objc_msgSend(v822, "objectForKeyedSubscript:", v72), objc_msgSend(v62, "objectForKeyedSubscript:", v72)), v72}];
        if (v810 && (([v72 isEqualToString:v801] & 1) != 0 || objc_msgSend(v72, "isEqualToString:", v778)))
        {
          v74 = [v61 objectForKeyedSubscript:v70];
          v75 = [(FigCaptureCameraParameters *)v825 sensorIDDictionaryForPortType:v70 sensorIDString:v74];
          v76 = [v822 objectForKeyedSubscript:v70];
          v77 = [v62 objectForKeyedSubscript:v70];
          v78 = [BWSensorConfiguration alloc];
          v79 = v74;
          v63 = v824;
          [v824 setObject:-[BWSensorConfiguration initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:moduleCalibration:](v78 forKeyedSubscript:{"initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:moduleCalibration:", v70, v79, v75, v76, v77), v70}];
        }

        if (!v818 && ([v72 isEqualToString:v70] & 1) == 0 && (objc_msgSend(v72, "isEqualToString:", v776) & 1) == 0)
        {
          v80 = [objc_msgSend(obj objectForKeyedSubscript:{v72), "formatRequirements"}];
          v81 = [v80 width];
          v82 = v81;
          if (v785 < 1 || v792 <= 0)
          {
            v792 = [v80 height];
            if (v82 < 1)
            {
              goto LABEL_964;
            }

            v785 = v82;
            if (v792 <= 0)
            {
              goto LABEL_964;
            }
          }

          else if (v785 != v81 || v792 != [v80 height])
          {
            goto LABEL_964;
          }
        }
      }

      v826 = [obj countByEnumeratingWithState:&v1041 objects:v1040 count:16];
    }

    while (v826);
  }

  else
  {
    v792 = 0;
    v785 = 0;
  }

  v83 = [MEMORY[0x1E695DF90] dictionary];
  v1036 = 0u;
  v1037 = 0u;
  v1038 = 0u;
  v1039 = 0u;
  v84 = [v63 countByEnumeratingWithState:&v1036 objects:v1035 count:16];
  if (v84)
  {
    v85 = v84;
    v86 = *v1037;
    do
    {
      for (j = 0; j != v85; ++j)
      {
        if (*v1037 != v86)
        {
          objc_enumerationMutation(v63);
        }

        v88 = *(*(&v1036 + 1) + 8 * j);
        if ([v811 containsObject:v88])
        {
          [v83 setObject:objc_msgSend(v63 forKeyedSubscript:{"objectForKeyedSubscript:", v88), v88}];
        }
      }

      v85 = [v63 countByEnumeratingWithState:&v1036 objects:v1035 count:16];
    }

    while (v85);
  }

  v754 = [v23 clientIsCameraOrDerivative];
  v731 = [v800 objectForKeyedSubscript:v789];
  v89 = [v789 isEqualToString:*off_1E798A0E8];
  v90 = [v23 pearlModuleType];
  v91 = [v23 pearlModuleType];
  v753 = [v744 bravoConstituentPhotoDeliveryEnabled];
  v779 = v753 ^ 1;
  if (((v753 ^ 1) & 1) == 0 && !v772)
  {
    v1056[0] = -12780;
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v1034 = 0;
    v1033 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *v951 = 0;
    v634 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 1454, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:1454", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:1454", 0);
    goto LABEL_1175;
  }

  v92 = [v23 depthDataType];
  if (v763)
  {
    if (v772)
    {
      v93 = v759 == 1;
    }

    else
    {
      v93 = 1;
    }

    v94 = !v93;
    v752 = v94;
    if (!v93)
    {
      if ([v23 depthDataType] != 8)
      {
        v1056[0] = -12780;
        v643 = FigCaptureGetFrameworkRadarComponent();
        v1034 = 0;
        v1033 = OS_LOG_TYPE_DEFAULT;
        v644 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v644, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        *v951 = 67109120;
        *&v951[4] = [v23 depthDataType];
        v634 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(v643, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 1460, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:1460", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:1460", 0);
        goto LABEL_1175;
      }

      if ([(FigCaptureCameraParameters *)v825 disparityVersion]<= 4)
      {
        v1056[0] = -12780;
        v647 = FigCaptureGetFrameworkRadarComponent();
        v1034 = 0;
        v1033 = OS_LOG_TYPE_DEFAULT;
        v648 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v648, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        *v951 = 67109120;
        *&v951[4] = [(FigCaptureCameraParameters *)v825 disparityVersion];
        v634 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(v647, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 1461, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:1461", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:1461", 0);
        goto LABEL_1175;
      }
    }

    v734 = 0;
    if (v89 && v759 != 1)
    {
      if ([v23 depthDataType] != 3)
      {
        v1056[0] = -12780;
        v645 = FigCaptureGetFrameworkRadarComponent();
        v1034 = 0;
        v1033 = OS_LOG_TYPE_DEFAULT;
        v646 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v646, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        *v951 = 67109120;
        *&v951[4] = [v23 depthDataType];
        v634 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(v645, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 1465, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:1465", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:1465", 0);
        goto LABEL_1175;
      }

      v734 = 1;
    }

    v716 = v751;
  }

  else
  {
    v716 = 0;
    v734 = 0;
    v752 = 0;
  }

  v95 = v92 == 9 || (v92 & 0xFFFFFFFE) == 4;
  v96 = v95;
  v687 = v96;
  if (v95)
  {
    v97 = 1;
  }

  else
  {
    v97 = v763 & (v92 == 10);
  }

  v697 = v97;
  v724 = v763 & (v92 == 10);
  if (v92 == 6)
  {
    v98 = 1;
  }

  else
  {
    v98 = v763 & (v92 == 10);
  }

  v738 = v98;
  if (v772)
  {
    v99 = *off_1E798A0D0;
    if (([v811 containsObject:*off_1E798A0D0] & 1) == 0)
    {
      v99 = *off_1E798A0C0;
      if (([v811 containsObject:*off_1E798A0C0] & 1) == 0)
      {
        v99 = *off_1E798A0D8;
        if (![v811 containsObject:*off_1E798A0D8])
        {
          v99 = 0;
        }
      }
    }
  }

  else
  {
    v99 = [v811 firstObject];
  }

  v100 = 0.0;
  if (v763)
  {
    if (v757)
    {
      [v757 requestedZoomFactorRelativeToPortType:v99];
      v100 = v101;
    }

    else
    {
      v100 = 1.0;
    }
  }

  v743 = v92;
  v696 = v99;
  if ([v23 highQualityPhotoCaptureForVideoFormatEnabled])
  {
    if (v763 | v753)
    {
      v102 = 0;
    }

    else
    {
      v102 = 2;
    }
  }

  else
  {
    v102 = [v23 stillImageStabilizationSupported];
  }

  if ([v23 learnedNRSupported])
  {
    if (v102 == 2)
    {
      v104 = 1;
    }

    else if (v102 == 1)
    {
      v103 = (v100 == 2.0) & ~[v757 zeroShutterLagEnabled];
      if (v92 == 8)
      {
        LODWORD(v104) = v103;
      }

      else
      {
        LODWORD(v104) = 0;
      }

      if ([v23 learnedHRNRSupported])
      {
        v104 = 17;
      }

      else
      {
        v104 = v104;
      }
    }

    else
    {
      v104 = 0;
    }

    if ([v23 ultraHighResolutionProcessingEnabled])
    {
      v105 = [v757 learnedNRUltraHighResolutionDowngradeSupported];
      if (v105)
      {
        v106 = 5;
      }

      else
      {
        v106 = 4;
      }

      v104 = v106 | v104;
    }

    else
    {
      LOBYTE(v105) = 0;
    }

    if (v722)
    {
      if (BWResolutionFlavorSupported([v23 dimensionsByResolutionFlavorByPortType], 2))
      {
        v107 = [v757 learnedNRUltraHighResolutionDowngradeSupported];
        LOBYTE(v105) = v107 | v105;
        if (v107)
        {
          v108 = 10;
        }

        else
        {
          v108 = 8;
        }

        v104 = v108 | v104;
      }
    }

    else
    {
      v104 = v104 | (v759 == 1);
    }
  }

  else
  {
    LOBYTE(v105) = 0;
    v104 = 0;
  }

  v727 = v105;
  if ((([v23 deepFusionSupported] & 1) != 0 || ((v109 = objc_msgSend(objc_msgSend(v23, "portTypesWithLearnedFusionEnabled"), "count"), !v104) ? (v110 = v109 == 0) : (v110 = 0), !v110)) && v759 == 1)
  {
    v736 = 0;
    v111 = 0;
  }

  else
  {
    if (v102)
    {
      if (v102 == 2)
      {
        v111 = v104 ^ 1;
      }

      else
      {
        v111 = (v104 & 0x10) == 0;
      }
    }

    else
    {
      v111 = 0;
    }

    v736 = 1;
  }

  v714 = [v744 digitalFlashCaptureEnabled];
  v767 = [v744 stereoPhotoCaptureEnabled];
  v730 = [v744 portraitEffectsMatteDeliveryEnabled];
  v112 = (v730 & 1) != 0 || [objc_msgSend(v23 "enabledSemanticSegmentationMatteURNs")] != 0;
  v755 = v112;
  v113 = [(FigCaptureCameraParameters *)v825 personSemanticsVersion];
  if (v113 && v113 <= 4)
  {
    v605 = v113;
    v1056[0] = -12780;
    v606 = FigCaptureGetFrameworkRadarComponent();
    v1034 = 0;
    v1033 = OS_LOG_TYPE_DEFAULT;
    v607 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v607, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *v951 = 67109120;
    *&v951[4] = v605;
    v634 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v606, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 1581, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:1581", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:1581", 0);
    goto LABEL_1175;
  }

  v735 = v104;
  v703 = v113;
  Major = BWInferenceVersionMakeMajor(v113);
  v114 = [objc_msgSend(v83 "allValues")];
  if (v763)
  {
    v115 = v114;
    v116 = [v114 portType];
    v117 = [v115 sensorIDString];
    *&v118 = v100;
    v119 = [(FigCaptureCameraParameters *)v825 sdofRenderingVersionForPortType:v116 sensorIDString:v117 zoomFactor:v118];
    v120 = v119;
    if (v119 && v119 <= 4)
    {
      v121 = v119;
      v1056[0] = -12780;
      v122 = FigCaptureGetFrameworkRadarComponent();
      v1034 = 0;
      v1033 = OS_LOG_TYPE_DEFAULT;
      v123 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v951 = 67109120;
      *&v951[4] = v121;
      v634 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v122, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 1587, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:1587", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:1587", 0);
LABEL_1175:
      v662 = v634;
LABEL_1176:
      free(v662);
      goto LABEL_964;
    }
  }

  else
  {
    v120 = 0;
  }

  if (v755)
  {
    v124 = [(FigCaptureCameraParameters *)v825 mattingVersion];
    v684 = v124;
    if (v124 && v124 <= 1)
    {
      v125 = v124;
      v1056[0] = -12780;
      v126 = FigCaptureGetFrameworkRadarComponent();
      v1034 = 0;
      v1033 = OS_LOG_TYPE_DEFAULT;
      v127 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v951 = 67109120;
      *&v951[4] = v125;
      v634 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v126, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 1590, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:1590", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:1590", 0);
      goto LABEL_1175;
    }
  }

  else
  {
    v684 = 0;
  }

  v704 = [(FigCaptureCameraParameters *)v825 learnedMattingVersion];
  v746 = 0;
  v705 = v120;
  if (((v763 ^ 1) & 1) == 0 && v755)
  {
    v129 = v748 != 7 && v759 != 1;
    v746 = v129;
  }

  v131 = v90 == 2 || v91 == 3;
  v726 = v131;
  v132 = [v23 devicePosition];
  v682 = v89;
  v702 = v111;
  v133 = v132 == 2 && [v23 aspectRatio] && objc_msgSend(v23, "aspectRatio") != 5;
  v686 = v133;
  [(BWStillImageNodeConfiguration *)v758 setOptimizedProcessingForZoomFOVSupported:?];
  if ((v724 ^ 1 | v774))
  {
    v134 = v724;
  }

  else
  {
    v134 = v719 | v716 ^ 1;
  }

  v690 = v132 != 2;
  v777 = [v23 continuousZoomWithDepthSupported] & (v719 | v724 | v752) & (v690 | v134);
  v135 = [v23 aspectRatio];
  v136 = v135 != 0;
  if (v135)
  {
    if (![v23 smartCropWarpingRequired])
    {
      v137 = [v23 aspectRatio];
      v729 = [v723 firstObject];
      v136 = v137 == 6;
      if (v137 != 6)
      {
        v138 = 0.0;
        if (v137)
        {
          goto LABEL_236;
        }
      }

      goto LABEL_230;
    }

    v137 = 6;
  }

  else
  {
    v137 = 0;
  }

  v729 = [v723 firstObject];
LABEL_230:
  v138 = 0.0;
  if (v777)
  {
    v139 = [v729 dimensions];
    if (v139 >= 1 && SHIDWORD(v139) >= 1)
    {
      v140 = [v729 dimensions];
      v138 = v140 / ([v729 dimensions] >> 32);
    }
  }

LABEL_236:
  v688 = v136;
  v141 = [v23 continuousZoomWithDepthSupported];
  if (v132 == 2)
  {
    v142 = v141;
  }

  else
  {
    v142 = 0;
  }

  v692 = v142;
  if (v137)
  {
    v143 = v137 == 6;
  }

  else
  {
    v143 = 1;
  }

  v144 = !v143;
  v708 = v144;
  v745 = BWEmitUnstyledBufferForInferencesOrAdjustedImageWithConfigurations(v23, v744);
  if (v745)
  {
    v1031[0] = MEMORY[0x1E69E9820];
    v1031[1] = 3221225472;
    v707 = v1031;
    v1031[2] = __396__FigCapturePhotonicEngineSinkPipeline__buildStillImageSinkPipelineWithConfiguration_captureDevice_sourceOutputsByPortType_sourceSensorRawOutputsByPortType_highResStillImageDimensions_supplementalPointCloudCaptureDevice_supplementalPointCloudSourceOutput_captureStatusDelegate_inferenceScheduler_cinematicFramingStatesProvider_smartCropHomographyProvider_multiCamClientCompositingCallback_graph___block_invoke;
    v1031[3] = &__block_descriptor_33_e31_B16__0__opaqueCMSampleBuffer__8l;
    v1032 = v765;
  }

  else
  {
    v707 = 0;
  }

  if (v755)
  {
    v145 = [(BWInferenceConfiguration *)[BWPersonSemanticsConfiguration alloc] initWithInferenceType:104];
    [(BWInferenceConfiguration *)v145 setPriority:*(v762 + 52)];
    v718 = v145;
    [(BWPersonSemanticsConfiguration *)v145 setAppliesFinalCropRect:v777];
    if (v730)
    {
      [(BWPersonSemanticsConfiguration *)v145 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v145 enabledSemantics]| 1];
    }

    v146 = [v23 supportedSemanticSegmentationMatteURNs];
    v147 = *MEMORY[0x1E69917E0];
    if ([v146 containsObject:*MEMORY[0x1E69917E0]] && objc_msgSend(objc_msgSend(v23, "enabledSemanticSegmentationMatteURNs"), "containsObject:", v147))
    {
      [(BWPersonSemanticsConfiguration *)v718 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v718 enabledSemantics]| 2];
    }

    v148 = [v23 supportedSemanticSegmentationMatteURNs];
    v149 = *MEMORY[0x1E69917E8];
    if ([v148 containsObject:*MEMORY[0x1E69917E8]] && objc_msgSend(objc_msgSend(v23, "enabledSemanticSegmentationMatteURNs"), "containsObject:", v149))
    {
      [(BWPersonSemanticsConfiguration *)v718 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v718 enabledSemantics]| 8];
    }

    v150 = [v23 supportedSemanticSegmentationMatteURNs];
    v151 = *MEMORY[0x1E69917F8];
    if ([v150 containsObject:*MEMORY[0x1E69917F8]] && objc_msgSend(objc_msgSend(v23, "enabledSemanticSegmentationMatteURNs"), "containsObject:", v151))
    {
      [(BWPersonSemanticsConfiguration *)v718 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v718 enabledSemantics]| 0x10];
    }

    v152 = [v23 supportedSemanticSegmentationMatteURNs];
    v153 = *MEMORY[0x1E69917D8];
    if ([v152 containsObject:*MEMORY[0x1E69917D8]] && objc_msgSend(objc_msgSend(v23, "enabledSemanticSegmentationMatteURNs"), "containsObject:", v153))
    {
      [(BWPersonSemanticsConfiguration *)v718 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v718 enabledSemantics]| 0x20];
    }
  }

  else
  {
    v718 = 0;
  }

  v1029[0] = MEMORY[0x1E69E9820];
  v1029[1] = 3221225472;
  v1029[2] = __396__FigCapturePhotonicEngineSinkPipeline__buildStillImageSinkPipelineWithConfiguration_captureDevice_sourceOutputsByPortType_sourceSensorRawOutputsByPortType_highResStillImageDimensions_supplementalPointCloudCaptureDevice_supplementalPointCloudSourceOutput_captureStatusDelegate_inferenceScheduler_cinematicFramingStatesProvider_smartCropHomographyProvider_multiCamClientCompositingCallback_graph___block_invoke_2;
  v1029[3] = &__block_descriptor_33_e38___NSSet_16__0__opaqueCMSampleBuffer__8l;
  v1030 = v754;
  v1028[0] = MEMORY[0x1E69E9820];
  v1028[1] = 3221225472;
  v1028[2] = __396__FigCapturePhotonicEngineSinkPipeline__buildStillImageSinkPipelineWithConfiguration_captureDevice_sourceOutputsByPortType_sourceSensorRawOutputsByPortType_highResStillImageDimensions_supplementalPointCloudCaptureDevice_supplementalPointCloudSourceOutput_captureStatusDelegate_inferenceScheduler_cinematicFramingStatesProvider_smartCropHomographyProvider_multiCamClientCompositingCallback_graph___block_invoke_773;
  v1028[3] = &unk_1E79913E0;
  v1028[4] = v1029;
  if ([v23 allowsMultipleInflightCaptures])
  {
    v760 = 1;
    if ([v23 responsiveShutterSupported])
    {
      if ([v23 responsiveShutterEnabled])
      {
        v154 = 2;
      }

      else
      {
        v154 = 1;
      }

      v760 = v154;
    }
  }

  else
  {
    v760 = 0;
  }

  v155 = [v23 redEyeReductionVersion];
  v156 = v155;
  if (v155 && v155 <= 1)
  {
    v1056[0] = -12780;
    v608 = FigCaptureGetFrameworkRadarComponent();
    v1034 = 0;
    v1033 = OS_LOG_TYPE_DEFAULT;
    v609 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v610 = v1034;
    if (os_log_type_enabled(v609, v1033))
    {
      v611 = v610;
    }

    else
    {
      v611 = v610 & 0xFFFFFFFE;
    }

    if (v611)
    {
      *v991 = 136315394;
      *&v991[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
      v992 = 1024;
      *v993 = v156;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *v951 = 67109120;
    *&v951[4] = v156;
    v634 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v608, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 1751, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:1751", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:1751", 0);
    goto LABEL_1175;
  }

  v739 = v155;
  v698 = v734 | v810;
  v157 = [v23 semanticRenderingVersion];
  v827 = [MEMORY[0x1E695DF90] dictionary];
  v712 = v157;
  if (v157)
  {
    v721 = [v23 semanticDevelopmentVersion];
  }

  else
  {
    v721 = 0;
  }

  v158 = [v744 demosaicedRawEnabled];
  if (v158)
  {
    [v827 setObject:BWSemanticSegmentationMatteAttachedMediaKeysSupportedByDemosaicedRaw() forKeyedSubscript:&unk_1F2243528];
  }

  if (((v734 | v810) & v726) != 0)
  {
    v159 = [MEMORY[0x1E695DF70] array];
    [v159 addObject:0x1F219E750];
    [v159 addObjectsFromArray:BWInferenceLowResPersonInstanceMaskKeys()];
    [v827 setObject:v159 forKeyedSubscript:&unk_1F2243540];
  }

  if ([v23 smartStyleReversibilityEnabled])
  {
    [v827 setObject:BWSemanticSegmentationMatteAttachedMediaKeysSupportedByDemosaicedRaw() forKeyedSubscript:&unk_1F2243558];
  }

  v709 = v137;
  if ([objc_msgSend(v23 "portTypesWithGeometricDistortionCorrectionEnabled")])
  {
    v1027 = 0u;
    v1026 = 0u;
    v1025 = 0u;
    v1024 = 0u;
    v160 = [v811 countByEnumeratingWithState:&v1024 objects:v1023 count:16];
    if (v160)
    {
      v161 = v160;
      v162 = *v1025;
LABEL_285:
      v163 = 0;
      while (1)
      {
        if (*v1025 != v162)
        {
          objc_enumerationMutation(v811);
        }

        if ([objc_msgSend(v23 "portTypesWithGeometricDistortionCorrectionEnabled")])
        {
          break;
        }

        if (v161 == ++v163)
        {
          v161 = [v811 countByEnumeratingWithState:&v1024 objects:v1023 count:16];
          if (v161)
          {
            goto LABEL_285;
          }

          goto LABEL_291;
        }
      }
    }

    else
    {
LABEL_291:
      if ((v753 & 1) == 0)
      {
        if ([v23 deviceType] == 12)
        {
          v164 = [objc_msgSend(v23 "portTypesWithGeometricDistortionCorrectionEnabled")];
        }

        else
        {
          v164 = 0;
        }

LABEL_293:
        if (v763)
        {
          v165 = [v23 continuousZoomWithDepthSupported] | v164;
        }

        else
        {
          v165 = 1;
        }

        v725 = [v23 gdcInDCProcessorSupported] & v165;
        goto LABEL_298;
      }
    }

    v164 = 1;
    goto LABEL_293;
  }

  v725 = 0;
LABEL_298:
  v166 = [objc_msgSend(v23 "portTypesWithIntelligentDistortionCorrectionEnabled")] != 0;
  if (v818)
  {
    v167 = 0;
    v710 = 1;
  }

  else
  {
    if (v91 == 3)
    {
      v168 = 0;
    }

    else
    {
      v168 = v725;
    }

    v710 = v168;
    v167 = v168;
  }

  v701 = v166;
  v700 = v167;
  if (v785 >= [v23 rawSensorDimensions] && (v792 >= (objc_msgSend(v23, "rawSensorDimensions") >> 32) ? (v169 = v167) : (v169 = 0), v169 == 1))
  {
    if (v740)
    {
      v170 = [v23 gdcInDCProcessorOutputCropDimensions];
    }

    else
    {
      v170 = [v23 outputStillImageDimensions];
    }

    v689 = v170;
  }

  else
  {
    v689 = 0;
  }

  v741 = v102;
  v717 = v83;
  v171 = [MEMORY[0x1E695DF90] dictionary];
  [v23 gainMapMainImageDownscalingFactor];
  if (v172 != 0.0)
  {
    v173 = MEMORY[0x1E696AD98];
    [v23 gainMapMainImageDownscalingFactor];
    [v171 setObject:objc_msgSend(v173 forKeyedSubscript:{"numberWithFloat:"), 0x1F217BF50}];
  }

  v713 = v158;
  if (v158)
  {
    [v171 setObject:&unk_1F224A7F0 forKeyedSubscript:0x1F21AAE10];
    v1022 = 0u;
    v1021 = 0u;
    v1020 = 0u;
    v1019 = 0u;
    v819 = [v827 countByEnumeratingWithState:&v1019 objects:v1018 count:16];
    if (v819)
    {
      v805 = *v1020;
      do
      {
        for (k = 0; k != v819; k = k + 1)
        {
          if (*v1020 != v805)
          {
            objc_enumerationMutation(v827);
          }

          v175 = *(*(&v1019 + 1) + 8 * k);
          v1014 = 0u;
          v1015 = 0u;
          v1016 = 0u;
          v1017 = 0u;
          v176 = [v827 objectForKeyedSubscript:v175];
          v177 = [v176 countByEnumeratingWithState:&v1014 objects:v1013 count:16];
          if (v177)
          {
            v178 = v177;
            v179 = *v1015;
            do
            {
              for (m = 0; m != v178; ++m)
              {
                if (*v1015 != v179)
                {
                  objc_enumerationMutation(v176);
                }

                v181 = *(*(&v1014 + 1) + 8 * m);
                v182 = MEMORY[0x1E696AD98];
                [v23 ubInferenceMainImageDownscalingFactor];
                [v171 setObject:objc_msgSend(v182 forKeyedSubscript:{"numberWithFloat:"), v181}];
              }

              v178 = [v176 countByEnumeratingWithState:&v1014 objects:v1013 count:16];
            }

            while (v178);
          }
        }

        v819 = [v827 countByEnumeratingWithState:&v1019 objects:v1018 count:16];
      }

      while (v819);
    }
  }

  if ((v745 & 1) != 0 || [v23 smartStyleReversibilityEnabled])
  {
    [v171 setObject:&unk_1F224A7F0 forKeyedSubscript:0x1F21AAF90];
  }

  if ([v23 smartStyleReversibilityEnabled])
  {
    v1012 = 0u;
    v1011 = 0u;
    v1010 = 0u;
    v1009 = 0u;
    v183 = [v827 countByEnumeratingWithState:&v1009 objects:v1008 count:16];
    if (v183)
    {
      v184 = v183;
      v820 = *v1010;
      do
      {
        for (n = 0; n != v184; ++n)
        {
          if (*v1010 != v820)
          {
            objc_enumerationMutation(v827);
          }

          v186 = *(*(&v1009 + 1) + 8 * n);
          v1004 = 0u;
          v1005 = 0u;
          v1006 = 0u;
          v1007 = 0u;
          v187 = [v827 objectForKeyedSubscript:v186];
          v188 = [v187 countByEnumeratingWithState:&v1004 objects:v1003 count:16];
          if (v188)
          {
            v189 = v188;
            v190 = *v1005;
            do
            {
              for (ii = 0; ii != v189; ++ii)
              {
                if (*v1005 != v190)
                {
                  objc_enumerationMutation(v187);
                }

                v192 = *(*(&v1004 + 1) + 8 * ii);
                [v23 gainMapMainImageDownscalingFactor];
                if (v193 <= 0.0)
                {
                  [v23 portraitEffectsMatteMainImageDownscalingFactor];
                  v195 = *&v194;
                  LODWORD(v194) = 2.0;
                  if (v195 > 0.0)
                  {
                    [v23 portraitEffectsMatteMainImageDownscalingFactor];
                  }
                }

                else
                {
                  [v23 gainMapMainImageDownscalingFactor];
                }

                [v171 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v194), v192}];
              }

              v189 = [v187 countByEnumeratingWithState:&v1004 objects:v1003 count:16];
            }

            while (v189);
          }
        }

        v184 = [v827 countByEnumeratingWithState:&v1009 objects:v1008 count:16];
      }

      while (v184);
    }
  }

  v775 = [MEMORY[0x1E695DF90] dictionary];
  v766 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v171];
  [v23 portraitEffectsMatteMainImageDownscalingFactor];
  if (v196 != 0.0)
  {
    if (v730)
    {
      v197 = MEMORY[0x1E696AD98];
      [v23 portraitEffectsMatteMainImageDownscalingFactor];
      [v775 setObject:objc_msgSend(v197 forKeyedSubscript:{"numberWithFloat:"), 0x1F21AABB0}];
      if ((v777 & 1) == 0)
      {
        v198 = MEMORY[0x1E696AD98];
        [v23 portraitEffectsMatteMainImageDownscalingFactor];
        [v766 setObject:objc_msgSend(v198 forKeyedSubscript:{"numberWithFloat:"), 0x1F21AABB0}];
      }
    }

    v1002 = 0u;
    v1001 = 0u;
    v1000 = 0u;
    v999 = 0u;
    v821 = [v23 enabledSemanticSegmentationMatteURNs];
    v199 = [v821 countByEnumeratingWithState:&v999 objects:v998 count:16];
    if (v199)
    {
      v200 = v199;
      v201 = *v1000;
      v202 = *MEMORY[0x1E69917E0];
      v203 = *MEMORY[0x1E69917E8];
      v806 = *MEMORY[0x1E69917F8];
      v802 = *MEMORY[0x1E69917D8];
      do
      {
        for (jj = 0; jj != v200; ++jj)
        {
          if (*v1000 != v201)
          {
            objc_enumerationMutation(v821);
          }

          v205 = *(*(&v999 + 1) + 8 * jj);
          v206 = [v205 isEqualToString:v202];
          v207 = BWAttachedMediaKey_PersonSemanticsHair;
          if ((v206 & 1) == 0)
          {
            v208 = [v205 isEqualToString:v203];
            v207 = BWAttachedMediaKey_PersonSemanticsSkin;
            if ((v208 & 1) == 0)
            {
              v209 = [v205 isEqualToString:v806];
              v207 = BWAttachedMediaKey_PersonSemanticsTeeth;
              if ((v209 & 1) == 0)
              {
                v210 = [v205 isEqualToString:v802];
                v207 = BWAttachedMediaKey_PersonSemanticsGlasses;
                if (!v210)
                {
                  continue;
                }
              }
            }
          }

          v211 = *v207;
          if (*v207)
          {
            v212 = MEMORY[0x1E696AD98];
            [v23 portraitEffectsMatteMainImageDownscalingFactor];
            [v775 setObject:objc_msgSend(v212 forKeyedSubscript:{"numberWithFloat:"), v211}];
            if ((v777 & 1) == 0)
            {
              v213 = MEMORY[0x1E696AD98];
              [v23 portraitEffectsMatteMainImageDownscalingFactor];
              [v766 setObject:objc_msgSend(v213 forKeyedSubscript:{"numberWithFloat:"), v211}];
            }
          }
        }

        v200 = [v821 countByEnumeratingWithState:&v999 objects:v998 count:16];
      }

      while (v200);
    }
  }

  v699 = [v23 allowedToModifyInputBuffers];
  if (v754)
  {
    v214 = v762;
    v215 = v744;
    v216 = v824;
    v217 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
    v218 = v760;
    v219 = v757;
    if (+[BWInferenceEngine isNeuralEngineSupported])
    {
      v695 = [v23 captureTimePhotosCurationSupported];
    }

    else
    {
      v695 = 0;
    }

    v220 = 0;
  }

  else
  {
    if (v755)
    {
      v220 = 7;
    }

    else
    {
      v220 = 0;
    }

    v214 = v762;
    v215 = v744;
    v216 = v824;
    v217 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
    v218 = v760;
    v219 = v757;
    v695 = 0;
    if (((!v755 | v779) & 1) == 0)
    {
      v220 = 8 * [v800 count] - 1;
    }
  }

  v683 = v220;
  if (v218 == 2)
  {
    v221 = [v23 responsiveShutterSupported];
    v222 = 0;
    if (v756)
    {
      v223 = v753 ^ 1;
    }

    else
    {
      v223 = 0;
    }

    v720 = v221;
    if (v221 && v223)
    {
      v222 = [v23 fastCapturePrioritizationEnabled];
      v720 = 1;
    }
  }

  else
  {
    v720 = 0;
    v222 = 0;
  }

  v711 = v222;
  v737 = v736 & v714;
  [v219 setStillImageCaptureEnabled:1];
  [v219 setStereoPhotoCaptureEnabled:v767];
  [v219 setIrisFrameHarvestingEnabled:{objc_msgSend(v215, "irisFrameHarvestingEnabled")}];
  [v219 setStillImageFusionScheme:{objc_msgSend(v23, "noiseReductionAndFusionScheme")}];
  [v219 setUnifiedBracketingMode:v741];
  [v219 setSifrStillImageCaptureEnabledIfAvailable:{objc_msgSend(v23, "sifrStillImageCaptureEnabledIfAvailable")}];
  [v219 setSoftISPEnabled:{objc_msgSend(v23, "softISPSupported")}];
  [v219 setSensorRawStillImageOutputsEnabled:v756 != 0];
  [v219 setDeepFusionEnabled:{objc_msgSend(v23, "deepFusionSupported")}];
  if ([v23 depthWithDeepFusionSupported])
  {
    v224 = [v23 deepFusionSupported];
    if (v748 == 7)
    {
      v225 = 0;
    }

    else
    {
      v225 = v224;
    }

    v226 = v763 & v225;
  }

  else
  {
    v226 = 0;
  }

  v749 = v753 | v752 | v767;
  [v219 setDepthWithDeepFusionEnabled:v226];
  [v219 setLearnedNRMode:v735];
  [v219 setLearnedNRUltraHighResolutionDowngradeEnabled:v727 & 1];
  [v219 setSwfrEnabled:{objc_msgSend(v23, "swfrVersion") != 0}];
  [v219 setConstantColorEnabled:{objc_msgSend(v23, "constantColorVersion") != 0}];
  [v219 setDigitalFlashEnabled:v737];
  if (v737)
  {
    [v219 setPortTypesWithDigitalFlashZeroShutterLagEnabled:{objc_msgSend(v23, "portTypesWithDigitalFlashZeroShutterLagEnabled")}];
  }

  [v219 setRedSaturationMitigationEnabled:{objc_msgSend(v215, "optimizesImagesForOfflineVideoStabilization") ^ 1}];
  [v219 registerForAEMatrixMetadata];
  [v219 setRedEyeReductionEnabled:v739 != 0];
  if (v772)
  {
    v227 = v763 & v779;
  }

  else
  {
    v227 = 0;
  }

  [v219 setDisparityGenerationFromReferenceFramesSupported:v227];
  [v219 setSupplementalPointCloudCaptureDevice:v747];
  [v219 setExifFocalLengthsByZoomFactor:{objc_msgSend(v215, "exifFocalLengthsByZoomFactor")}];
  v228 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage" priority:*(v214 + v217[452])];
  v803 = v228;
  v768 = v228;
  if ((v749 | v746))
  {
    v768 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.ub.default" priority:*(v214 + v217[452])];
    v228 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.concurrent" priority:*(v214 + v217[452])];
  }

  v715 = v803;
  v793 = v803;
  if (v218 == 2)
  {
    v715 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.scale-and-encode" priority:*(v214 + v217[452])];
    if (v720)
    {
      v793 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.buffer-servicing" priority:*(v214 + v217[452])];
    }

    else
    {
      v793 = v803;
    }
  }

  v728 = v228;
  if (dword_1EB58E2C0)
  {
    v1034 = 0;
    v1033 = OS_LOG_TYPE_DEFAULT;
    v229 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v230 = v1034;
    if (os_log_type_enabled(v229, v1033))
    {
      v231 = v230;
    }

    else
    {
      v231 = v230 & 0xFFFFFFFE;
    }

    if (v231)
    {
      *v951 = 136320514;
      *&v951[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
      *&v951[12] = 2114;
      *&v951[14] = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "dt", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(v23, "deviceType"))];
      *v952 = 2114;
      *&v952[2] = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "bd", v772 != 0];
      v953 = 2114;
      v954 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "soc", objc_msgSend(obj, "count")];
      v955 = 2114;
      v956 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %dx%d", "sfd", objc_msgSend(v729, "dimensions"), objc_msgSend(v729, "dimensions") >> 32];
      v957 = 2114;
      v958 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "bmcp", v749 & 1];
      v959 = 2114;
      v960 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "mlcl", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", -[BWStillImageNodeConfiguration maxLossyCompressionLevel](v758, "maxLossyCompressionLevel"))];
      v961 = 2114;
      v962 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "ddd", v763];
      v963 = 2114;
      v964 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "ddt", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(v23, "depthDataType"))];
      v965 = 2114;
      v966 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %dx%d", "dtd", objc_msgSend(v23, "depthDataTargetDimensions"), objc_msgSend(v23, "depthDataTargetDimensions") >> 32];
      v967 = 2114;
      v968 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %dx%d", "dsd", objc_msgSend(v23, "depthDataSourceDimensions"), objc_msgSend(v23, "depthDataSourceDimensions") >> 32];
      v969 = 2114;
      v970 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "cpd", v753];
      v971 = 2114;
      v972 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "fr", v751];
      v973 = 2114;
      v974 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "swfr", objc_msgSend(v23, "swfrVersion")];
      v975 = 2114;
      v976 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "rer", v739];
      v977 = 2114;
      v978 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "psip", objc_msgSend(objc_msgSend(v23, "enabledSemanticSegmentationMatteURNs"), "count") != 0];
      v979 = 2114;
      v980 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "sr", v712];
      v981 = 2114;
      v982 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "sd", v721];
      v219 = v757;
      v983 = 2114;
      v984 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "ssr", objc_msgSend(v23, "semanticStyleRenderingEnabled")];
      v985 = 2114;
      v986 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "ssv", objc_msgSend(v23, "smartStyleRenderingVersion")];
      v214 = v762;
      v987 = 2114;
      v988 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "sse", objc_msgSend(v23, "smartStyleRenderingEnabled")];
      v216 = v824;
      v989 = 2114;
      v990 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "ssr", objc_msgSend(v23, "smartStyleReversibilityEnabled")];
      LODWORD(v666) = 222;
      v663 = v951;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v218 = v760;
    if (dword_1EB58E2C0)
    {
      v1034 = 0;
      v1033 = OS_LOG_TYPE_DEFAULT;
      v232 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v233 = v1034;
      if (os_log_type_enabled(v232, v1033))
      {
        v234 = v233;
      }

      else
      {
        v234 = v233 & 0xFFFFFFFE;
      }

      if (v234)
      {
        v780 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "igfsp", objc_msgSend(v23, "generateInferencesForSemanticProcessingIfNeeded", v663, v666)];
        v235 = MEMORY[0x1E696AEC0];
        [v23 ubInferenceMainImageDownscalingFactor];
        v680 = [v235 stringWithFormat:@"\n %s: %.3f", "imf", v236];
        v678 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "idc", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(objc_msgSend(v23, "portTypesWithIntelligentDistortionCorrectionEnabled"), "count"))];
        v676 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "gdcsp", v725];
        v674 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "gdc", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(objc_msgSend(v23, "portTypesWithGeometricDistortionCorrectionEnabled"), "count"))];
        v672 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "ggm", objc_msgSend(v23, "greenGhostMitigationVersion")];
        v671 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "df", objc_msgSend(v23, "deepFusionSupported")];
        v670 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "lf", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(objc_msgSend(v23, "portTypesWithLearnedFusionEnabled"), "count"))];
        v669 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "cp", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", v760)];
        v668 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "rs", v720];
        v237 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "csb", v711];
        v238 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "dr", v713];
        v239 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "lnrm", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", v735)];
        v240 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "dc", v722];
        v218 = v760;
        v216 = v824;
        v241 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "dc", v759 == 1];
        *v951 = 136318978;
        *&v951[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
        *&v951[12] = 2114;
        *&v951[14] = v780;
        *v952 = 2114;
        *&v952[2] = v680;
        v953 = 2114;
        v954 = v678;
        v955 = 2114;
        v956 = v676;
        v957 = 2114;
        v958 = v674;
        v959 = 2114;
        v960 = v672;
        v961 = 2114;
        v962 = v671;
        v963 = 2114;
        v964 = v670;
        v965 = 2114;
        v966 = v669;
        v967 = 2114;
        v968 = v668;
        v969 = 2114;
        v970 = v237;
        v214 = v762;
        v971 = 2114;
        v972 = v238;
        v219 = v757;
        v973 = 2114;
        v974 = v239;
        v975 = 2114;
        v976 = v240;
        v977 = 2114;
        v978 = v241;
        LODWORD(v666) = 162;
        v663 = v951;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EB58E2C0)
      {
        v1034 = 0;
        v1033 = OS_LOG_TYPE_DEFAULT;
        v242 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v243 = v1034;
        v244 = os_log_type_enabled(v242, v1033);
        v245 = v243 & 0xFFFFFFFE;
        if (v244)
        {
          v245 = v243;
        }

        if (v245)
        {
          v781 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %dx%d", "rsd", objc_msgSend(v23, "rawSensorDimensions"), objc_msgSend(v23, "rawSensorDimensions") >> 32];
          v681 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %dx%d", "erd", objc_msgSend(v23, "deepFusionEnhancedResolutionDimensions"), objc_msgSend(v23, "deepFusionEnhancedResolutionDimensions") >> 32];
          v679 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "uhrc", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(BWPortTypesWithResolutionFlavor(objc_msgSend(v23, "dimensionsByResolutionFlavorByPortType"), 2), "count"))];
          v677 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "uhrp", objc_msgSend(v23, "ultraHighResolutionProcessingEnabled")];
          v675 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "zqs", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(BWPortTypesWithResolutionFlavor(objc_msgSend(v23, "dimensionsByResolutionFlavorByPortType"), 1), "count"))];
          v673 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "lcrp", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(BWPortTypesWithResolutionFlavor(objc_msgSend(v23, "dimensionsByResolutionFlavorByPortType"), 3), "count"))];
          v246 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "pcrp", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(BWPortTypesWithResolutionFlavor(objc_msgSend(v23, "dimensionsByResolutionFlavorByPortType"), 4), "count"))];
          v247 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "sqrc", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(BWPortTypesWithResolutionFlavor(objc_msgSend(v23, "dimensionsByResolutionFlavorByPortType"), 6), "count"))];
          v248 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "fsqr", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(BWPortTypesWithResolutionFlavor(objc_msgSend(v23, "dimensionsByResolutionFlavorByPortType"), 5), "count"))];
          v249 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "ar", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(v23, "aspectRatio"))];
          v216 = v824;
          v250 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "sfhr", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(v23, "sfhrMode"))];
          *v951 = 136318210;
          *&v951[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
          *&v951[12] = 2114;
          *&v951[14] = v781;
          *v952 = 2114;
          *&v952[2] = v681;
          v953 = 2114;
          v954 = v679;
          v955 = 2114;
          v956 = v677;
          v957 = 2114;
          v958 = v675;
          v959 = 2114;
          v960 = v673;
          v961 = 2114;
          v962 = v246;
          v963 = 2114;
          v964 = v247;
          v219 = v757;
          v965 = 2114;
          v966 = v248;
          v214 = v762;
          v967 = 2114;
          v968 = v249;
          v969 = 2114;
          v970 = v250;
          v971 = 2114;
          v972 = &stru_1F216A3D0;
          LODWORD(v666) = 132;
          v663 = v951;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v218 = v760;
      }
    }
  }

  v761 = v218;
  v251 = &classRef_BWDerectificationInferenceProvider;
  if (v731)
  {
    v252 = [BWAttachedMediaSplitNode alloc];
    v950 = @"Depth";
    v253 = -[BWAttachedMediaSplitNode initWithAttachedMediaKeys:](v252, "initWithAttachedMediaKeys:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v950 count:1]);
    v949.receiver = v214;
    v949.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v949, sel_addNode_error_, v253, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [a14 safelyConnectOutput:v731 toInput:-[BWNode input](v253 pipelineStage:{"input"), v793}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    [(BWNode *)v253 setName:@"Still Image IR-Depth Splitter"];
    [(BWAttachedMediaSplitNode *)v253 setEmitsNodeErrorsForMissingAttachedMedia:1];
    v786 = [(NSArray *)[(BWNode *)v253 outputs] objectAtIndexedSubscript:0];
  }

  else
  {
    v786 = 0;
  }

  v807 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v800, "count", v663, v666)}];
  obja = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v770, "count")}];
  v732 = [v747 cameraInfoByPortType];
  if ([v23 stillImageSinkPipelineProcessingMode] && objc_msgSend(v23, "stillImageSinkPipelineProcessingMode") != 2)
  {
    v807 = [v800 mutableCopy];
    obja = [v770 mutableCopy];
    v256 = v772;
    if (v789)
    {
      v257 = [v800 objectForKeyedSubscript:?];
      v782 = 0;
    }

    else
    {
      v782 = 0;
      v257 = 0;
    }

    v281 = a14;
  }

  else
  {
    if ([v23 stillImageSinkPipelineProcessingMode])
    {
      v254 = 0;
      v255 = v758;
    }

    else
    {
      v255 = v758;
      v254 = [[BWStillImageCoordinatorNode alloc] initWithNodeConfiguration:v758 captureDevice:v219 inputPortTypes:v764 sensorRawInputPortTypes:v733 highResStillImageDimensions:v723];
      v948.receiver = v214;
      v948.super_class = FigCapturePhotonicEngineSinkPipeline;
      if ((objc_msgSendSuper2(&v948, sel_addNode_error_, v254, &v1055) & 1) == 0)
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      [(BWNode *)v254 setName:@"Still Image Coordinator"];
      [(BWStillImageCoordinatorNode *)v254 setStillImageCaptureStatusDelegate:a9];
      [(BWStillImageCoordinatorNode *)v254 setResponsiveShutterEnabled:v720];
      if ([v23 responsiveShutterSupported])
      {
        v258 = [v23 responsiveShutterEnabled];
      }

      else
      {
        v258 = 0;
      }

      [(BWStillImageCoordinatorNode *)v254 setResponsiveShutterEnabledViaAPI:v258];
      -[BWStillImageCoordinatorNode setFastCapturePrioritizationEnabled:](v254, "setFastCapturePrioritizationEnabled:", [v23 fastCapturePrioritizationEnabled]);
      [(BWStillImageCoordinatorNode *)v254 setStillImageCapturePipeliningMode:v761];
      -[BWStillImageCoordinatorNode setCinematicFramingWarpingRequired:](v254, "setCinematicFramingWarpingRequired:", [v23 cinematicFramingWarpingRequired]);
      if (v761 == 1)
      {
        [(BWStillImageCoordinatorNode *)v254 setMaxNumberOfBurstCapturesAllowedInFlight:2];
      }

      v214[7] = v254;
    }

    v259 = [[BWStillImageFrameCoordinatorNode alloc] initWithNodeConfiguration:v255 inputPortTypes:v764 sensorRawInputPortTypes:v733];
    v947.receiver = v214;
    v947.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v947, sel_addNode_error_, v259, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    [(BWNode *)v259 setName:@"Still Image Frame Coordinator"];
    v946 = 0u;
    v945 = 0u;
    v944 = 0u;
    v943 = 0u;
    v260 = [v800 countByEnumeratingWithState:&v943 objects:v942 count:16];
    v261 = v803;
    if (v260)
    {
      v262 = v260;
      v783 = *v944;
      while (2)
      {
        for (kk = 0; kk != v262; ++kk)
        {
          if (*v944 != v783)
          {
            objc_enumerationMutation(v800);
          }

          v264 = *(*(&v943 + 1) + 8 * kk);
          v265 = [v800 objectForKeyedSubscript:v264];
          if ([v264 isEqualToString:v789])
          {
            v266 = v786;
          }

          else
          {
            v266 = v265;
          }

          if (v254)
          {
            v1056[0] = [a14 safelyConnectOutput:v266 toInput:-[BWStillImageCoordinatorNode inputForPortType:](v254 pipelineStage:{"inputForPortType:", v264), v793}];
            if (v1056[0])
            {
              [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
              goto LABEL_964;
            }

            v261 = v803;
            v1056[0] = [a14 safelyConnectOutput:-[BWStillImageCoordinatorNode outputForPortType:](v254 toInput:"outputForPortType:" pipelineStage:{v264), -[BWStillImageFrameCoordinatorNode inputForPortType:](v259, "inputForPortType:", v264), v803}];
            if (v1056[0])
            {
              [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
              goto LABEL_964;
            }
          }

          else
          {
            v1056[0] = [a14 safelyConnectOutput:v266 toInput:-[BWStillImageFrameCoordinatorNode inputForPortType:](v259 pipelineStage:{"inputForPortType:", v264), v261}];
            if (v1056[0])
            {
              [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
              goto LABEL_964;
            }
          }

          [v807 setObject:-[BWStillImageFrameCoordinatorNode outputForPortType:](v259 forKeyedSubscript:{"outputForPortType:", v264), v264}];
        }

        v262 = [v800 countByEnumeratingWithState:&v943 objects:v942 count:16];
        if (v262)
        {
          continue;
        }

        break;
      }
    }

    v941 = 0u;
    v940 = 0u;
    v939 = 0u;
    v938 = 0u;
    v267 = v770;
    v268 = [v770 countByEnumeratingWithState:&v938 objects:v937 count:16];
    if (v268)
    {
      v269 = v268;
      v787 = *v939;
      while (2)
      {
        for (mm = 0; mm != v269; ++mm)
        {
          if (*v939 != v787)
          {
            objc_enumerationMutation(v267);
          }

          v271 = *(*(&v938 + 1) + 8 * mm);
          v272 = [v267 objectForKeyedSubscript:v271];
          if (v254)
          {
            v1056[0] = [a14 safelyConnectOutput:v272 toInput:-[BWStillImageCoordinatorNode sensorRawInputForPortType:](v254 pipelineStage:{"sensorRawInputForPortType:", v271), v793}];
            if (v1056[0])
            {
              [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
              goto LABEL_964;
            }

            v273 = [(BWStillImageCoordinatorNode *)v254 sensorRawOutputForPortType:v271];
            v274 = [(BWStillImageFrameCoordinatorNode *)v259 sensorRawInputForPortType:v271];
            v275 = v273;
            v267 = v770;
            v261 = v803;
            v1056[0] = [a14 safelyConnectOutput:v275 toInput:v274 pipelineStage:v803];
            if (v1056[0])
            {
              [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
              goto LABEL_964;
            }
          }

          else
          {
            v1056[0] = [a14 safelyConnectOutput:v272 toInput:-[BWStillImageFrameCoordinatorNode sensorRawInputForPortType:](v259 pipelineStage:{"sensorRawInputForPortType:", v271), v261}];
            if (v1056[0])
            {
              [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
              goto LABEL_964;
            }
          }

          [obja setObject:-[BWStillImageFrameCoordinatorNode sensorRawOutputForPortType:](v259 forKeyedSubscript:{"sensorRawOutputForPortType:", v271), v271}];
        }

        v269 = [v267 countByEnumeratingWithState:&v938 objects:v937 count:16];
        if (v269)
        {
          continue;
        }

        break;
      }
    }

    v257 = [(BWStillImageFrameCoordinatorNode *)v259 outputForPortType:v789];
    v276 = objc_alloc_init(FigCaptureIrisPreparedSettings);
    v277 = [v23 deepFusionSupported];
    if (v741)
    {
      v278 = 2;
    }

    else
    {
      v278 = 1;
    }

    if (v277)
    {
      v279 = 3;
    }

    else
    {
      v279 = v278;
    }

    [(FigCaptureIrisPreparedSettings *)v276 setQualityPrioritization:v279];
    [(FigCaptureIrisPreparedSettings *)v276 setDigitalFlashMode:v737];
    memset(v951, 0, 20);
    [BWStillImageCoordinatorNode worstCaseMaxBracketedCaptureBufferCountForPreparedSettings:v276 stillImageCaptureSettings:0 captureDevice:v757];
    v280 = *v951;
    if (*v951 <= *&v951[4])
    {
      v280 = *&v951[4];
    }

    v782 = v280;
    v216 = v824;
    v281 = a14;
    v256 = v772;
    v251 = &classRef_BWDerectificationInferenceProvider;
  }

  v282 = v742;
  if (!((v256 == 0) | v749 & 1))
  {
    v283 = -[BWCrossoverNode initWithMediaType:numberOfInputs:]([BWCrossoverNode alloc], "initWithMediaType:numberOfInputs:", 1986618469, [v800 count]);
    v284 = v251[65];
    v936.receiver = v762;
    v936.super_class = v284;
    if ((objc_msgSendSuper2(&v936, sel_addNode_error_, v283, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v794 = v257;
    v935 = 0u;
    v934 = 0u;
    v933 = 0u;
    v932 = 0u;
    v285 = [v800 countByEnumeratingWithState:&v932 objects:v931 count:16];
    if (v285)
    {
      v286 = v285;
      v287 = 0;
      v288 = *v933;
      while (2)
      {
        for (nn = 0; nn != v286; ++nn)
        {
          if (*v933 != v288)
          {
            objc_enumerationMutation(v800);
          }

          v1056[0] = [a14 safelyConnectOutput:objc_msgSend(v807 toInput:"objectForKeyedSubscript:" pipelineStage:{*(*(&v932 + 1) + 8 * nn)), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v283, "inputs"), "objectAtIndexedSubscript:", v287), v803}];
          if (v1056[0])
          {
            [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
            goto LABEL_964;
          }

          ++v287;
        }

        v286 = [v800 countByEnumeratingWithState:&v932 objects:v931 count:16];
        if (v286)
        {
          continue;
        }

        break;
      }
    }

    v290 = [(BWNode *)v283 output];
    v282 = v742;
    [v807 setObject:v290 forKeyedSubscript:v742];
    v216 = v824;
    v281 = a14;
    v251 = &classRef_BWDerectificationInferenceProvider;
    v291 = v770;
    v257 = v794;
    if (v756)
    {
      v292 = -[BWCrossoverNode initWithMediaType:numberOfInputs:]([BWCrossoverNode alloc], "initWithMediaType:numberOfInputs:", 1986618469, [v770 count]);
      v930.receiver = v762;
      v930.super_class = FigCapturePhotonicEngineSinkPipeline;
      if ((objc_msgSendSuper2(&v930, sel_addNode_error_, v292, &v1055) & 1) == 0)
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v929 = 0u;
      v928 = 0u;
      v927 = 0u;
      v926 = 0u;
      v293 = [v770 countByEnumeratingWithState:&v926 objects:v925 count:16];
      if (v293)
      {
        v294 = v293;
        v295 = 0;
        v296 = *v927;
        while (2)
        {
          for (i1 = 0; i1 != v294; ++i1)
          {
            if (*v927 != v296)
            {
              objc_enumerationMutation(v291);
            }

            v1056[0] = [a14 safelyConnectOutput:objc_msgSend(obja toInput:"objectForKeyedSubscript:" pipelineStage:{*(*(&v926 + 1) + 8 * i1)), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v292, "inputs"), "objectAtIndexedSubscript:", v295), v803}];
            if (v1056[0])
            {
              [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
              goto LABEL_964;
            }

            ++v295;
            v291 = v770;
          }

          v294 = [v770 countByEnumeratingWithState:&v926 objects:v925 count:16];
          if (v294)
          {
            continue;
          }

          break;
        }
      }

      v298 = [(BWNode *)v292 output];
      v282 = v742;
      [obja setObject:v298 forKeyedSubscript:v742];
      v281 = a14;
      v257 = v794;
    }
  }

  v299 = objc_alloc_init(BWPixelTransferNode);
  [(BWNode *)v299 setName:@"Still Image Format Converter"];
  [(BWPixelTransferNode *)v299 setCropMode:3];
  [(BWPixelTransferNode *)v299 setMaxInputLossyCompressionLevel:3];
  -[BWPixelTransferNode setMaxOutputLossyCompressionLevel:](v299, "setMaxOutputLossyCompressionLevel:", [v23 maxLossyCompressionLevel]);
  if ([v23 inputIsHLG] && (objc_msgSend(v23, "gainMapMainImageDownscalingFactor"), v300 != 0.0))
  {
    v301 = 0;
  }

  else
  {
    -[BWPixelTransferNode setOutputColorSpaceProperties:](v299, "setOutputColorSpaceProperties:", [v23 outputColorSpaceProperties]);
    v301 = 2;
  }

  v795 = v299;
  [(BWPixelTransferNode *)v299 setConversionMethodForStillImagesDuringHDRVideos:v301];
  if (v257)
  {
    v302 = 0x1E7988000;
    if (v756)
    {
      v303 = v257;
      v304 = +[BWStillImageConditionalRouterDepthConfiguration depthConfiguration];
      v305 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v304];
      [(BWNode *)v305 setName:@"Depth Conditional Router"];
      [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v305 "outputs")];
      [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v305 "outputs")];
      v306 = v251[65];
      v924.receiver = v762;
      v924.super_class = v306;
      if ((objc_msgSendSuper2(&v924, sel_addNode_error_, v305, &v1055) & 1) == 0)
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v1056[0] = [v281 safelyConnectOutput:v303 toInput:-[BWNode input](v305 pipelineStage:{"input"), v803}];
      if (v1056[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v307 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v305, "outputs"), "objectAtIndexedSubscript:", [v304 yuvOutputIndex]);
      v308 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v305, "outputs"), "objectAtIndexedSubscript:", [v304 rawOutputIndex]);
      v309 = -[BWDepthSynchronizerNode initForStreaming:maxQueueDepth:separateDepthComponentsEnabled:]([BWDepthSynchronizerNode alloc], "initForStreaming:maxQueueDepth:separateDepthComponentsEnabled:", 0, [v757 zeroShutterLagTimeMachineBufferCapacity] + objc_msgSend(v23, "sifrStillImageCaptureEnabledIfAvailable"), 0);
      v310 = v251[65];
      v923.receiver = v762;
      v923.super_class = v310;
      if ((objc_msgSendSuper2(&v923, sel_addNode_error_, v309, &v1055) & 1) == 0)
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      [v309 setName:@"Still Image Raw Depth Synchronizer"];
      v1056[0] = [v281 safelyConnectOutput:objc_msgSend(obja toInput:"objectForKeyedSubscript:" pipelineStage:{v742), objc_msgSend(v309, "imageInput"), v803}];
      if (v1056[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v1056[0] = [v281 safelyConnectOutput:v308 toInput:objc_msgSend(v309 pipelineStage:{"depthInput"), v803}];
      if (v1056[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v282 = v742;
      [obja setObject:objc_msgSend(v309 forKeyedSubscript:{"output"), v742}];
      v257 = v307;
      v302 = 0x1E7988000uLL;
    }

    v311 = [objc_alloc(*(v302 + 3656)) initForStreaming:0 separateDepthComponentsEnabled:0];
    v312 = v251[65];
    v922.receiver = v762;
    v922.super_class = v312;
    if ((objc_msgSendSuper2(&v922, sel_addNode_error_, v311, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    [v311 setName:@"Still Image YUV Depth Synchronizer"];
    v1056[0] = [v281 safelyConnectOutput:objc_msgSend(v807 toInput:"objectForKeyedSubscript:" pipelineStage:{v282), objc_msgSend(v311, "imageInput"), v803}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v281 safelyConnectOutput:v257 toInput:objc_msgSend(v311 pipelineStage:{"depthInput"), v803}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    [v807 setObject:objc_msgSend(v311 forKeyedSubscript:{"output"), v282}];
  }

  v313 = [v807 objectForKeyedSubscript:v282];
  v788 = [obja objectForKeyedSubscript:v282];
  v314 = [MEMORY[0x1E695DF90] dictionary];
  [v314 setObject:objc_msgSend(v216 forKeyedSubscript:{"objectForKeyedSubscript:", v282), v282}];
  v921 = 0u;
  v920 = 0u;
  v919 = 0u;
  v918 = 0u;
  v315 = [v772 countByEnumeratingWithState:&v918 objects:v917 count:16];
  if (v315)
  {
    v316 = v315;
    v317 = *v919;
    do
    {
      for (i2 = 0; i2 != v316; ++i2)
      {
        if (*v919 != v317)
        {
          objc_enumerationMutation(v772);
        }

        [v314 setObject:objc_msgSend(v216 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v918 + 1) + 8 * i2)), *(*(&v918 + 1) + 8 * i2)}];
      }

      v316 = [v772 countByEnumeratingWithState:&v918 objects:v917 count:16];
    }

    while (v316);
  }

  if (v789)
  {
    [v314 setObject:objc_msgSend(v216 forKeyedSubscript:{"objectForKeyedSubscript:", v789), v789}];
  }

  v319 = v762;
  v320 = a14;
  v321 = v803;
  if (v749)
  {
    v322 = -[BWFunnelNode initWithNumberOfInputs:mediaType:]([BWFunnelNode alloc], "initWithNumberOfInputs:mediaType:", [v314 count], 1986618469);
    v323 = v251[65];
    v916.receiver = v762;
    v916.super_class = v323;
    if ((objc_msgSendSuper2(&v916, sel_addNode_error_, v322, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    [(BWNode *)v322 setName:@"UB Funnel"];
    v915 = 0u;
    v914 = 0u;
    v913 = 0u;
    v912 = 0u;
    v324 = [v807 countByEnumeratingWithState:&v912 objects:v911 count:16];
    if (v324)
    {
      v325 = v324;
      v326 = 0;
      v327 = *v913;
      while (2)
      {
        for (i3 = 0; i3 != v325; ++i3)
        {
          if (*v913 != v327)
          {
            objc_enumerationMutation(v807);
          }

          v1056[0] = [a14 safelyConnectOutput:objc_msgSend(v807 toInput:"objectForKeyedSubscript:" pipelineStage:{*(*(&v912 + 1) + 8 * i3)), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v322, "inputs"), "objectAtIndexedSubscript:", v326), v768}];
          if (v1056[0])
          {
            [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
            goto LABEL_964;
          }

          ++v326;
        }

        v325 = [v807 countByEnumeratingWithState:&v912 objects:v911 count:16];
        if (v325)
        {
          continue;
        }

        break;
      }
    }

    v313 = [(BWNode *)v322 output];
    if (v756)
    {
      v329 = -[BWFunnelNode initWithNumberOfInputs:mediaType:]([BWFunnelNode alloc], "initWithNumberOfInputs:mediaType:", [v314 count], 1986618469);
      v910.receiver = v762;
      v910.super_class = FigCapturePhotonicEngineSinkPipeline;
      if ((objc_msgSendSuper2(&v910, sel_addNode_error_, v329, &v1055) & 1) == 0)
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      [(BWNode *)v329 setName:@"UB Sensor Raw Funnel"];
      v909 = 0u;
      v908 = 0u;
      v907 = 0u;
      v906 = 0u;
      v330 = [obja countByEnumeratingWithState:&v906 objects:v905 count:16];
      if (v330)
      {
        v331 = v330;
        v332 = 0;
        v333 = *v907;
        while (2)
        {
          for (i4 = 0; i4 != v331; ++i4)
          {
            if (*v907 != v333)
            {
              objc_enumerationMutation(obja);
            }

            v1056[0] = [a14 safelyConnectOutput:objc_msgSend(obja toInput:"objectForKeyedSubscript:" pipelineStage:{*(*(&v906 + 1) + 8 * i4)), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v329, "inputs"), "objectAtIndexedSubscript:", v332), v768}];
            if (v1056[0])
            {
              [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
              goto LABEL_964;
            }

            ++v332;
          }

          v331 = [obja countByEnumeratingWithState:&v906 objects:v905 count:16];
          if (v331)
          {
            continue;
          }

          break;
        }
      }

      v788 = [(BWNode *)v329 output];
    }

    v319 = v762;
    v216 = v824;
    v320 = a14;
    v321 = v803;
    v251 = &classRef_BWDerectificationInferenceProvider;
  }

  v335 = v251[65];
  v904.receiver = v319;
  v904.super_class = v335;
  if ((objc_msgSendSuper2(&v904, sel_addNode_error_, v795, &v1055) & 1) == 0)
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  v1056[0] = [v320 safelyConnectOutput:v313 toInput:-[BWNode input](v795 pipelineStage:{"input"), v321}];
  if (v1056[0])
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  v808 = [(BWNode *)v795 output];
  if (v711)
  {
    v336 = [v23 rawSensorDimensions];
    if (!v772)
    {
      v337 = FigCaptureDimensionsFromDictionaryRepresentation([objc_msgSend(objc_msgSend(v23 "dimensionsByResolutionFlavorByPortType")]);
      if (SHIDWORD(v337) > 0 && v337 > 0)
      {
        v336 = v337;
      }
    }

    v339 = [[BWCompressedShotBufferNode alloc] initWithNodeConfiguration:v758 compressionInputDimensions:v336];
    v340 = v251[65];
    v903.receiver = v762;
    v903.super_class = v340;
    if ((objc_msgSendSuper2(&v903, sel_addNode_error_, v339, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v341 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.compressed-shot-buffer" priority:*(v762 + 48)];
    v768 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.ub.default" priority:*(v762 + 48)];
    v1056[0] = [a14 safelyConnectOutput:v808 toInput:-[BWNode input](v339 pipelineStage:{"input"), v341}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v808 = [(BWNode *)v339 output];
    v1056[0] = [a14 safelyConnectOutput:v788 toInput:-[BWCompressedShotBufferNode sensorRawInput](v339 pipelineStage:{"sensorRawInput"), v341}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v788 = [(BWCompressedShotBufferNode *)v339 sensorRawOutput];
    v342 = v762;
    [*(v762 + 56) setCompressedShotBuffer:v339];
    *(v762 + 64) = v339;
    v343 = v709;
    v344 = v782;
  }

  else
  {
    v343 = v709;
    v344 = v782;
    v342 = v762;
  }

  if (v754)
  {
    if (v759 == 1)
    {
      v345 = 1;
    }

    else
    {
      v345 = 2;
    }
  }

  else if (v753)
  {
    v345 = 8 * [v314 count];
  }

  else
  {
    v345 = 8;
  }

  v346 = [v23 constantColorVersion];
  if (v761 == 1)
  {
    v348 = 4;
  }

  else
  {
    v348 = 2;
  }

  if (v345 > v348)
  {
    v348 = v345;
  }

  if (v346 > 0)
  {
    v345 = v348;
  }

  if (v345 <= 2)
  {
    v349 = 2;
  }

  else
  {
    v349 = v345;
  }

  if (v761 == 1)
  {
    v350 = v349;
  }

  else
  {
    v350 = v345;
  }

  v351 = v314;
  v352 = v758;
  [(BWPhotonicEngineNodeConfiguration *)v758 setSensorConfigurationsByPortType:v351, v347];
  -[BWPhotonicEngineNodeConfiguration setInputIs10Bit:](v758, [v23 inputIs10Bit]);
  [(BWPhotonicEngineNodeConfiguration *)v758 setRetainedBufferCount:v344];
  if ([v23 inputIsHLG])
  {
    -[BWPhotonicEngineNodeConfiguration setOutputPixelFormat:](v758, [v23 outputPixelFormat]);
    -[BWPhotonicEngineNodeConfiguration setOutputColorSpaceProperties:](v758, [v23 outputColorSpaceProperties]);
  }

  [(BWPhotonicEngineNodeConfiguration *)v758 setOutputBufferCount:v350];
  [(BWPhotonicEngineNodeConfiguration *)v758 setMinimumOutputBufferCount:v345];
  [(BWPhotonicEngineNodeConfiguration *)v758 setMaxNumberOfBurstCapturesAllowedInFlight:?];
  [(BWPhotonicEngineNodeConfiguration *)v758 setOutputPoolBackPressureEnabled:?];
  -[BWPhotonicEngineNodeConfiguration setStillImageFusionScheme:](v758, [v23 noiseReductionAndFusionScheme]);
  [(BWStillImageNodeConfiguration *)v758 setFigThreadPriority:*(v342 + 48)];
  [(BWPhotonicEngineNodeConfiguration *)v758 setReferenceFrameSelectionDelegate:?];
  -[BWPhotonicEngineNodeConfiguration setStandardFormatDimensions:](v758, [v729 dimensions]);
  if (v700)
  {
    -[BWPhotonicEngineNodeConfiguration setOutputDimensions:](v758, [v23 outputStillImageDimensions]);
  }

  -[BWPhotonicEngineNodeConfiguration setSoftISPSupportEnabled:](v758, [v23 softISPSupported]);
  -[BWPhotonicEngineNodeConfiguration setQuadraProcessingSupportEnabled:](v758, [v23 quadraProcessingSupportEnabled]);
  -[BWPhotonicEngineNodeConfiguration setSensorRawPixelFormat:](v758, [v23 sensorRawPixelFormat]);
  -[BWPhotonicEngineNodeConfiguration setRawSensorDimensions:](v758, [v23 rawSensorDimensions]);
  [v23 sensorCenterOffset];
  [(BWPhotonicEngineNodeConfiguration *)v758 setSensorCenterOffset:v353, v354];
  v355 = [v23 dimensionsByResolutionFlavorByPortType];
  [(BWPhotonicEngineNodeConfiguration *)v758 setDimensionsByResolutionFlavorByPortType:v355, v356];
  -[BWPhotonicEngineNodeConfiguration setUltraHighResolutionProcessingEnabled:](v758, [v23 ultraHighResolutionProcessingEnabled]);
  [(BWPhotonicEngineNodeConfiguration *)v758 setProcessingAspectRatio:v343];
  -[BWPhotonicEngineNodeConfiguration setStillImageGDCSourceMode:](v758, [v23 stillImageGDCSourceMode]);
  -[BWPhotonicEngineNodeConfiguration setSfhrMode:](v758, [v23 sfhrMode]);
  [(BWPhotonicEngineNodeConfiguration *)v758 setUnifiedBracketingFusionSupportEnabled:?];
  [(BWPhotonicEngineNodeConfiguration *)v758 setDigitalFlashSupportEnabled:v737];
  v357 = [v23 portTypesWithRawNightModeEnabled];
  [(BWPhotonicEngineNodeConfiguration *)v758 setPortTypesWithRawNightModeEnabled:v357, v358];
  v359 = v759 != 1 && ([v23 deepFusionSupported] && !-[BWPhotonicEngineNodeConfiguration softISPSupportEnabled](v758) || objc_msgSend(objc_msgSend(v23, "portTypesWithLearnedFusionEnabled"), "count") != 0);
  [(BWPhotonicEngineNodeConfiguration *)v758 setDeepFusionSyntheticsInNRSupportEnabled:v359];
  v360 = [v23 deepFusionSupported];
  if (v761 == 2)
  {
    v361 = 0;
  }

  else
  {
    v361 = v722;
  }

  if (v360)
  {
    v362 = v361;
  }

  else
  {
    v362 = 0;
  }

  [(BWPhotonicEngineNodeConfiguration *)v758 setDeepFusionWaitForPreprocessingToFinish:v362];
  -[BWPhotonicEngineNodeConfiguration setDeepFusionSupportEnabled:](v758, [v23 deepFusionSupported]);
  v363 = [v23 portTypesWithLearnedFusionEnabled];
  [(BWPhotonicEngineNodeConfiguration *)v758 setPortTypesWithLearnedFusionEnabled:v363, v364];
  if (v759 == 1)
  {
    v365 = 1;
  }

  else
  {
    v365 = v722;
  }

  v790 = v350;
  if ((v365 & 1) != 0 || ((v741 == 2) & v735) != 0)
  {
    v366 = [v23 deepZoomVersion];
  }

  else
  {
    v366 = 0;
  }

  [(BWPhotonicEngineNodeConfiguration *)v758 setDeepZoomVersion:v366];
  -[BWPhotonicEngineNodeConfiguration setDeepZoomMode:](v758, [v23 deepZoomMode]);
  [(BWPhotonicEngineNodeConfiguration *)v758 setMaxDeepFusionOutputCount:?];
  [(BWPhotonicEngineNodeConfiguration *)v758 setLearnedNRMode:v735];
  [(BWPhotonicEngineNodeConfiguration *)v758 setDepthDataDeliveryEnabled:v763];
  if (v747)
  {
    v367 = [BWSensorConfiguration alloc];
    v368 = [objc_msgSend(v747 "captureStream")];
    v369 = [objc_msgSend(v747 "captureStream")];
    v370 = [objc_msgSend(v747 "captureStream")];
    v371 = [v732 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(v747, "captureStream"), "portType")}];
    v372 = v370;
    v352 = v758;
    v373 = [(BWSensorConfiguration *)v367 initWithPortType:v368 sensorIDString:v369 sensorIDDictionary:v372 cameraInfo:v371];
    [(BWPhotonicEngineNodeConfiguration *)v758 setJasperSensorConfiguration:v373, v374];
  }

  [(BWPhotonicEngineNodeConfiguration *)v352 setCmiResourceEnabled:?];
  [(BWPhotonicEngineNodeConfiguration *)v352 setAlwaysAllowModifyingInputBuffers:v699];
  [v23 ubInferenceMainImageDownscalingFactor];
  [(BWPhotonicEngineNodeConfiguration *)v352 setInferenceMainImageDownscalingFactor:v375];
  [(BWPhotonicEngineNodeConfiguration *)v352 setProvidedInferenceAttachedMediaByMode:v827, v376];
  [(BWPhotonicEngineNodeConfiguration *)v352 setSemanticRenderingVersion:v712];
  [(BWPhotonicEngineNodeConfiguration *)v352 setSemanticDevelopmentVersion:v721];
  -[BWPhotonicEngineNodeConfiguration setSmartStyleRenderingVersion:](v352, [v23 smartStyleRenderingVersion]);
  -[BWPhotonicEngineNodeConfiguration setSmartStyleRenderingEnabled:](v352, [v23 smartStyleRenderingEnabled]);
  -[BWPhotonicEngineNodeConfiguration setSmartStyleReversibilityEnabled:](v352, [v23 smartStyleReversibilityEnabled]);
  if (v745)
  {
    v377 = 1;
  }

  else
  {
    v377 = [v23 smartStyleReversibilityEnabled];
  }

  [(BWPhotonicEngineNodeConfiguration *)v352 setUnstyledBufferEmitted:v377];
  -[BWPhotonicEngineNodeConfiguration setGenerateInferencesForSemanticProcessingIfNeeded:](v352, [v23 generateInferencesForSemanticProcessingIfNeeded]);
  [(BWPhotonicEngineNodeConfiguration *)v352 setPersonSemanticsVersion:v703];
  -[BWPhotonicEngineNodeConfiguration setSemanticStyleRenderingEnabled:](v352, [v23 semanticStyleRenderingEnabled]);
  if (v752)
  {
    [(BWPhotonicEngineNodeConfiguration *)v352 setPortTypesWithDepthSegmentationPortraitParameters:v811, v378];
    [(BWPhotonicEngineNodeConfiguration *)v352 setZoomingDisparityAllowed:?];
    [(BWPhotonicEngineNodeConfiguration *)v352 setShouldComputeDisparityWhenCalibrationFails:?];
  }

  if (v763)
  {
    -[BWPhotonicEngineNodeConfiguration setContinuousZoomWithDepthSupported:](v352, [v23 continuousZoomWithDepthSupported]);
  }

  [(BWPhotonicEngineNodeConfiguration *)v352 setDemosaicedRawEnabled:v713];
  if (v713)
  {
    -[BWPhotonicEngineNodeConfiguration setDemosaicedRawPixelFormat:](v352, [v23 demosaicedRawPixelFormat]);
  }

  v379 = [v23 rawColorCalibrationsByPortType];
  [(BWPhotonicEngineNodeConfiguration *)v352 setRawColorCalibrationsByPortType:v379, v380];
  v381 = [v23 rawLensShadingCorrectionCoefficientsByPortType];
  [(BWPhotonicEngineNodeConfiguration *)v352 setRawLensShadingCorrectionCoefficientsByPortType:v381, v382];
  if ((v701 | v725))
  {
    -[BWPhotonicEngineNodeConfiguration setIntelligentDistortionCorrectionVersion:](v352, [v23 dcProcessorVersion]);
    if (v725)
    {
      v384 = [v23 portTypesWithGeometricDistortionCorrectionEnabled];
    }

    else
    {
      v384 = 0;
    }

    [(BWPhotonicEngineNodeConfiguration *)v352 setPortTypesWithGeometricDistortionCorrectionEnabled:v384, v383];
    [(BWPhotonicEngineNodeConfiguration *)v352 setGeometricDistortionCorrectionExpandedImageDimensions:v689];
    v385 = [v23 portTypesWithIntelligentDistortionCorrectionEnabled];
    [(BWPhotonicEngineNodeConfiguration *)v352 setPortTypesWithIntelligentDistortionCorrectionEnabled:v385, v386];
    [(BWPhotonicEngineNodeConfiguration *)v352 setIntelligentDistortionCorrectionAppliesFinalDimensions:v710];
    -[BWPhotonicEngineNodeConfiguration setDcProcessingWithDepthSupported:](v352, [v23 dcProcessingWithDepthSupported]);
    if ((v763 ^ 1 | v690))
    {
      v387 = 0;
    }

    else if ([v23 dcProcessingWithDepthSupported])
    {
      v387 = 1;
    }

    else
    {
      v387 = [v23 continuousZoomWithDepthSupported];
    }

    [(BWPhotonicEngineNodeConfiguration *)v352 setReplicatePixelsOutsideOfFinalImageDimensionsWithDCProcessing:v387];
  }

  -[BWPhotonicEngineNodeConfiguration setGreenGhostMitigationVersion:](v352, [v23 greenGhostMitigationVersion]);
  -[BWPhotonicEngineNodeConfiguration setSwfrVersion:](v352, [v23 swfrVersion]);
  -[BWPhotonicEngineNodeConfiguration setConstantColorVersion:](v352, [v23 constantColorVersion]);
  -[BWPhotonicEngineNodeConfiguration setConstantColorClippingRecoveryEnabled:](v352, [v23 constantColorClippingRecoveryEnabled]);
  -[BWPhotonicEngineNodeConfiguration setConstantColorSaturationBoostEnabled:](v352, [v23 constantColorSaturationBoostEnabled]);
  [(BWStillImageNodeConfiguration *)v352 setStereoPhotoOutputDimensions:[(BWStillImageNodeConfiguration *)v352 stereoPhotoOutputDimensions]];
  [(BWPhotonicEngineNodeConfiguration *)v352 setRedEyeReductionEnabled:?];
  [v23 gainMapMainImageDownscalingFactor];
  [(BWPhotonicEngineNodeConfiguration *)v352 setGainMapMainImageDownscalingFactor:v388];
  -[BWPhotonicEngineNodeConfiguration setHorizontalSensorBinningFactor:](v352, [v23 horizontalSensorBinningFactor]);
  -[BWPhotonicEngineNodeConfiguration setVerticalSensorBinningFactor:](v352, [v23 verticalSensorBinningFactor]);
  v389 = [[BWPhotonicEngineNode alloc] initWithNodeConfiguration:v352 captureDevice:v757];
  v390 = v251[65];
  v902.receiver = v342;
  v902.super_class = v390;
  if ((objc_msgSendSuper2(&v902, sel_addNode_error_, v389, &v1055) & 1) == 0)
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  [(BWNode *)v389 setName:@"PhotonicEngine"];
  [v757 setStillImageProcessingSupportProvider:v389];
  [*(v342 + 56) setStillImageProcessingSupportProvider:v389];
  if ([v23 aspectRatio] && (objc_msgSend(v23, "smartCropWarpingRequired") & 1) == 0)
  {
    *(v342 + 128) = v389;
  }

  v1056[0] = [a14 safelyConnectOutput:v808 toInput:-[BWNode input](v389 pipelineStage:{"input"), v768}];
  if (v1056[0])
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  objb = v389;
  v391 = a14;
  if (v756)
  {
    v1056[0] = [a14 safelyConnectOutput:v788 toInput:-[BWPhotonicEngineNode sensorRawInput](v389 pipelineStage:{"sensorRawInput"), v768}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }
  }

  if (v706)
  {
    v392 = v389;
    v1056[0] = [a14 safelyConnectOutput:v706 toInput:-[BWPhotonicEngineNode pointCloudInput](v389 pipelineStage:{"pointCloudInput"), v768}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }
  }

  else
  {
    v393 = *off_1E798A0C8;
    v392 = v389;
    if ([v691 objectForKeyedSubscript:*off_1E798A0C8])
    {
      v1056[0] = [a14 safelyConnectOutput:objc_msgSend(v691 toInput:"objectForKeyedSubscript:" pipelineStage:{v393), -[BWPhotonicEngineNode pointCloudInput](v389, "pointCloudInput"), v768}];
      if (v1056[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }
    }
  }

  v394 = [(BWNode *)v392 output];
  v395 = v394;
  if ((v710 & 1) == 0)
  {
    v812 = v394;
    v396 = [MEMORY[0x1E695DF90] dictionary];
    [v23 gainMapMainImageDownscalingFactor];
    if (v397 != 0.0)
    {
      v398 = MEMORY[0x1E696AD98];
      [v23 gainMapMainImageDownscalingFactor];
      [v396 setObject:objc_msgSend(v398 forKeyedSubscript:{"numberWithFloat:"), 0x1F217BF50}];
    }

    v399 = [MEMORY[0x1E695DF70] array];
    v898 = 0u;
    v899 = 0u;
    v900 = 0u;
    v901 = 0u;
    v400 = [v827 countByEnumeratingWithState:&v898 objects:v897 count:16];
    if (v400)
    {
      v401 = v400;
      v402 = *v899;
      do
      {
        for (i5 = 0; i5 != v401; ++i5)
        {
          if (*v899 != v402)
          {
            objc_enumerationMutation(v827);
          }

          [v399 addObjectsFromArray:{objc_msgSend(v827, "objectForKeyedSubscript:", *(*(&v898 + 1) + 8 * i5))}];
        }

        v401 = [v827 countByEnumeratingWithState:&v898 objects:v897 count:16];
      }

      while (v401);
    }

    if (v713)
    {
      [v396 setObject:&unk_1F224A7F0 forKeyedSubscript:0x1F21AAE10];
      v896 = 0u;
      v895 = 0u;
      v894 = 0u;
      v893 = 0u;
      v404 = [v399 countByEnumeratingWithState:&v893 objects:v892 count:16];
      if (v404)
      {
        v405 = v404;
        v406 = *v894;
        do
        {
          for (i6 = 0; i6 != v405; ++i6)
          {
            if (*v894 != v406)
            {
              objc_enumerationMutation(v399);
            }

            v408 = *(*(&v893 + 1) + 8 * i6);
            v409 = MEMORY[0x1E696AD98];
            [v23 ubInferenceMainImageDownscalingFactor];
            [v396 setObject:objc_msgSend(v409 forKeyedSubscript:{"numberWithFloat:"), v408}];
          }

          v405 = [v399 countByEnumeratingWithState:&v893 objects:v892 count:16];
        }

        while (v405);
      }
    }

    v352 = v758;
    v410 = [[BWStillImageScalerNode alloc] initWithBasePoolCapacity:v790 nodeConfiguration:v758];
    [(BWNode *)v410 setName:@"Resizing"];
    -[BWStillImageScalerNode setResizedOutputDimensions:](v410, "setResizedOutputDimensions:", [v23 outputStillImageDimensions]);
    [(BWStillImageScalerNode *)v410 setBlackFillingRequired:0];
    [(BWStillImageScalerNode *)v410 setMainImageDownscalingFactorByAttachedMediaKey:v396];
    [(BWStillImageScalerNode *)v410 setPreferMainImageDownscalingFactorByAttachedMediaKeyFromSampleBuffer:1];
    v251 = &classRef_BWDerectificationInferenceProvider;
    v342 = v762;
    v891.receiver = v762;
    v891.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v891, sel_addNode_error_, v410, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:v1056 captureDevice:? sourceOutputsByPortType:? sourceSensorRawOutputsByPortType:? highResStillImageDimensions:? supplementalPointCloudCaptureDevice:? supplementalPointCloudSourceOutput:? captureStatusDelegate:? inferenceScheduler:? cinematicFramingStatesProvider:? smartCropHomographyProvider:? multiCamClientCompositingCallback:? graph:?];
      goto LABEL_964;
    }

    v391 = a14;
    v1056[0] = [a14 safelyConnectOutput:v812 toInput:-[BWNode input](v410 pipelineStage:{"input"), v803}];
    v216 = v824;
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v395 = [(BWNode *)v410 output];
  }

  [(BWPixelTransferNode *)v795 setPreferredOutputPixelFormats:[(BWFormatRequirements *)[(BWNodeInput *)[(BWNode *)objb input] formatRequirements] supportedPixelFormats]];
  [(BWPixelTransferNode *)v795 setConverting10BitVideoRangeTo8BitFullRangeEncouraged:1];
  if (v743 != 9 || v759 == 1)
  {
    v418 = v738;
  }

  else
  {
    v411 = v251;
    v412 = v395;
    v413 = +[BWStillImageConditionalRouterFocusPixelDisparityInputConfiguration focusPixelDisparityInputConfiguration];
    v414 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v413];
    [(BWNode *)v414 setName:@"Focus Pixel Disparity Input Frame Router"];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v414 "outputs")];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v414 "outputs")];
    v415 = v411[65];
    v890.receiver = v342;
    v890.super_class = v415;
    if ((objc_msgSendSuper2(&v890, sel_addNode_error_, v414, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v412 toInput:-[BWNode input](v414 pipelineStage:{"input"), v803}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v416 = [[BWInferenceSynchronizerNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:0 indexOfInputProvidingPreferredInferences:1 errorHandlingModel:0];
    [(BWNode *)v416 setName:@"Default/FocusPixel Sync"];
    [(BWInferenceSynchronizerNode *)v416 setSynchronizeInferencesResolver:&__block_literal_global_41];
    v417 = v411[65];
    v889.receiver = v342;
    v889.super_class = v417;
    if ((objc_msgSendSuper2(&v889, sel_addNode_error_, v416, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [a14 safelyConnectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v414 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", objc_msgSend(v413, "defaultOutputIndex")), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v416, "inputs"), "objectAtIndexedSubscript:", 0), v728}];
    v418 = v738;
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [a14 safelyConnectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v414 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", objc_msgSend(v413, "focusPixelDisparityInputOutputIndex")), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v416, "inputs"), "objectAtIndexedSubscript:", 1), v728}];
    v352 = v758;
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v395 = [(BWNode *)v416 output];
    v391 = a14;
    v251 = &classRef_BWDerectificationInferenceProvider;
  }

  if (((v777 | v745 ^ 1) & 1) == 0)
  {
    v419 = objc_alloc_init(BWStillImageSmartStyleUnstyledBufferEmitterNode);
    [v342 addNode:v419 error:0];
    v1056[0] = [v391 safelyConnectOutput:v395 toInput:-[BWNode input](v419 pipelineStage:{"input"), v803}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v395 = [(BWNode *)v419 output];
  }

  v420 = [v23 stereoPhotoOutputDimensions];
  v796 = 0;
  if (v420 >= 1 && SHIDWORD(v420) >= 1)
  {
    v421 = v395;
    [(BWNodeOutput *)v395 node];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v1056[0] = -12780;
      v1034 = 0;
      v1033 = OS_LOG_TYPE_DEFAULT;
      v649 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v650 = v1034;
      if (os_log_type_enabled(v649, v1033))
      {
        v651 = v650;
      }

      else
      {
        v651 = v650 & 0xFFFFFFFE;
      }

      if (v651)
      {
        *v991 = 136315138;
        *&v991[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v951 = 0;
      v661 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(7, v661, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 2734, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:2734", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:2734", 0);
      v662 = v661;
      goto LABEL_1176;
    }

    v422 = +[BWStillImageConditionalRouterStereoPhotoConfiguration stereoPhotoConfiguration];
    v423 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v422];
    [(BWNode *)v423 setName:@"Stereo Photo Conditional Router"];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v423 "outputs")];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v423 "outputs")];
    v424 = v251[65];
    v888.receiver = v342;
    v888.super_class = v424;
    if ((objc_msgSendSuper2(&v888, sel_addNode_error_, v423, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v421 toInput:-[BWNode input](v423 pipelineStage:{"input"), v803}];
    v352 = v758;
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v425 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v423, "outputs"), "objectAtIndexedSubscript:", [v422 mainImageOutputIndex]);
    v426 = [(BWNode *)v423 outputs];
    v427 = [v422 stereoPhotoOutoutIndex];
    v428 = v426;
    v395 = v425;
    v796 = [v428 objectAtIndexedSubscript:v427];
    v391 = a14;
    v418 = v738;
  }

  if (v777)
  {
    v578 = v395;
    *v951 = 0;
    *v991 = 0;
    v830 = [v23 smartStyleReversibilityEnabled];
    v579 = [v23 constantColorConfidenceMapDimensions];
    v580 = [v744 filterRenderingEnabled];
    v581 = [v23 depthDataSourceDimensions];
    v583 = v581 > 0 && SHIDWORD(v581) > 0;
    v665 = v580;
    v352 = v758;
    v1056[0] = [(FigCapturePhotonicEngineSinkPipeline *)v342 _addScalerNodeWithNodeConfiguration:v758 intermediate:1 bravoConstituentPhotoDeliveryEnabled:v753 mainImageDownscalingFactorByAttachedMediaKey:v766 zoomingDepthSupported:v724 ^ 1u smartStyleReversibilityEnabled:v830 constantColorConfidenceMapDimensions:v579 filterRenderingEnabled:v665 enforcesZoomingForPortraitCaptures:v583 backPressureDrivenPipelining:v761 == 2 scalerNodeInputOut:v951 scalerNodeOutputOut:v991];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v584 = v803;
    if (v761 == 2)
    {
      v584 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.intermediateScaler" priority:*(v342 + 48)];
    }

    v1056[0] = [v391 safelyConnectOutput:v578 toInput:*v951 pipelineStage:v584];
    v251 = &classRef_BWDerectificationInferenceProvider;
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v585 = *v991;
    v586 = [[BWPiecemealEncodingNode alloc] initWithNodeConfiguration:v758];
    v887.receiver = v342;
    v887.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v887, sel_addNode_error_, v586, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v585 toInput:-[BWNode input](v586 pipelineStage:{"input"), v584}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v769 = v586;
    v395 = [(BWNode *)v586 output];
    if (v745)
    {
      v587 = objc_alloc_init(BWStillImageSmartStyleUnstyledBufferEmitterNode);
      [v342 addNode:v587 error:0];
      v1056[0] = [v391 safelyConnectOutput:v395 toInput:-[BWNode input](v587 pipelineStage:{"input"), v803}];
      v418 = v738;
      if (v1056[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v395 = [(BWNode *)v587 output];
    }

    else
    {
      v418 = v738;
    }
  }

  else
  {
    v769 = 0;
  }

  if (v750)
  {
    v429 = v395;
    v430 = +[BWStillImageConditionalRouterOptimizedEnhancedDepthConfiguration optimizedEnhancedDepthConfiguration];
    v431 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v430];
    [(BWNode *)v431 setName:@"Optimized Enhanced Depth Router"];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v431 "outputs")];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v431 "outputs")];
    v432 = v251[65];
    v886.receiver = v342;
    v886.super_class = v432;
    if ((objc_msgSendSuper2(&v886, sel_addNode_error_, v431, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v429 toInput:-[BWNode input](v431 pipelineStage:{"input"), v803}];
    v352 = v758;
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v433 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v431, "outputs"), "objectAtIndexedSubscript:", [v430 deepFusionImageOutputIndex]);
    v434 = [(BWNode *)v431 outputs];
    v435 = [v430 mainImageOutputIndex];
    v436 = v434;
    v395 = v433;
    v771 = [v436 objectAtIndexedSubscript:v435];
    v391 = a14;
    v418 = v738;
  }

  else
  {
    v771 = 0;
  }

  if ((v698 & !v726 & 1) == 0 && (v743 > 9 || ((1 << v743) & 0x230) == 0) && (((v734 | v810) & v726 | v418) & 1) == 0)
  {
    v784 = 0;
    v773 = 0;
    v791 = 0;
    if (!v763)
    {
      goto LABEL_739;
    }

    goto LABEL_732;
  }

  if ((v763 & 1) == 0)
  {
    v1056[0] = -12780;
    v614 = FigCaptureGetFrameworkRadarComponent();
    v1034 = 0;
    v1033 = OS_LOG_TYPE_DEFAULT;
    v615 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v616 = v1034;
    if (os_log_type_enabled(v615, v1033))
    {
      v617 = v616;
    }

    else
    {
      v617 = v616 & 0xFFFFFFFE;
    }

    if (v617)
    {
      *v991 = 136316162;
      *&v991[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
      v992 = 1024;
      v618 = v682;
      *v993 = v682;
      *&v993[4] = 1024;
      v619 = (v734 | v810) & v726;
      *&v993[6] = v619;
      v994 = 1024;
      v620 = v687;
      v995 = v687;
      v996 = 1024;
      v621 = v738;
      v997 = v738;
      _os_log_send_and_compose_impl();
    }

    else
    {
      v621 = v738;
      v620 = v687;
      v618 = v682;
      v619 = (v734 | v810) & v726;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *v951 = 67109888;
    *&v951[4] = v618;
    *&v951[8] = 1024;
    *&v951[10] = v619;
    *&v951[14] = 1024;
    *&v951[16] = v620;
    *&v951[20] = 1024;
    *v952 = v621;
    v634 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v614, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 2820, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:2820", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:2820", 0);
    goto LABEL_1175;
  }

  if (v772)
  {
    v1056[0] = -12780;
    v622 = FigCaptureGetFrameworkRadarComponent();
    v1034 = 0;
    v1033 = OS_LOG_TYPE_DEFAULT;
    v623 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v624 = v1034;
    if (os_log_type_enabled(v623, v1033))
    {
      v625 = v624;
    }

    else
    {
      v625 = v624 & 0xFFFFFFFE;
    }

    if (v625)
    {
      *v991 = 136316162;
      *&v991[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
      v992 = 1024;
      v626 = v682;
      *v993 = v682;
      *&v993[4] = 1024;
      v627 = (v734 | v810) & v726;
      *&v993[6] = v627;
      v994 = 1024;
      v628 = v687;
      v995 = v687;
      v996 = 1024;
      v629 = v738;
      v997 = v738;
      _os_log_send_and_compose_impl();
    }

    else
    {
      v629 = v738;
      v628 = v687;
      v626 = v682;
      v627 = (v734 | v810) & v726;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *v951 = 67109888;
    *&v951[4] = v626;
    *&v951[8] = 1024;
    *&v951[10] = v627;
    *&v951[14] = 1024;
    *&v951[16] = v628;
    *&v951[20] = 1024;
    *v952 = v629;
    v634 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v622, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 2821, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:2821", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:2821", 0);
    goto LABEL_1175;
  }

  v813 = v395;
  if (FigCaptureOptimizedBWInferenceScalingPathSupported())
  {
    v437 = objc_alloc_init(BWInferenceProcessingConfiguration);
    [(BWInferenceProcessingConfiguration *)v437 setScalingStrategy:10];
    [(BWInferenceProcessingConfiguration *)v437 setFilterType:2];
  }

  else
  {
    v437 = 0;
  }

  v438 = [v23 pipelineProcessingContext];
  v439 = v438;
  if (v418)
  {
    if (v743 == 10)
    {
      v440 = @"MonaDepth";
    }

    else
    {
      v440 = @"MonocularDepth";
    }
  }

  else
  {
    if ((v698 & !v726 & 1) == 0 && (v743 > 9 || ((1 << v743) & 0x230) == 0))
    {
      goto LABEL_709;
    }

    v440 = @"RGBSegmentation";
  }

  v439 = pesp_appendToName(v438, v440);
LABEL_709:
  v441 = [[BWInferenceNode alloc] initWithScheduler:a10 priority:*(v342 + 52) processingConfiguration:v437 name:v439];
  if (v418)
  {
    if (v743 == 10)
    {
      v442 = 2;
    }

    else
    {
      v442 = 1;
    }

    v443 = BWInferenceVersionMakeMajor(v442);
    v444 = [[BWMonocularDepthConfiguration alloc] initWithInferenceType:106 monocularDepthType:2];
    v445 = [v23 depthDataSourceDimensions];
    v446 = v445;
    if (v709)
    {
      if (v709 != 6)
      {
        v497 = FigCaptureAspectRatioForDimensions(v445);
        v498 = BWAspectRatioValueFromAspectRatio(v709);
        if (v497 <= 1.0 || v498 <= 1.0)
        {
          v499 = v498 < 1.0 && v497 < 1.0;
          v500 = __ROR8__(v446, 32);
          if (!v499)
          {
            v446 = v500;
          }
        }
      }
    }

    [(BWMonocularDepthConfiguration *)v444 setDepthDataDimensions:v446];
    if (v777)
    {
      [(BWMonocularDepthConfiguration *)v444 setAppliesFinalCropRect:1];
    }

    [(BWInferenceNode *)v441 addInferenceOfType:106 version:v443 & 0xFFFFFFFFFFFFLL configuration:v444];
    [(BWInferenceNode *)v441 setInferenceTypesToSkipResolver:v1029];
    [(BWInferenceNode *)v441 setIgnoreInvalidContentInformationForPrimaryMedia:v692];
    if (v708)
    {
      v447 = 2;
    }

    else
    {
      v447 = 0;
    }

    [(BWInferenceNode *)v441 setEndOfDataBehavior:v447];
    v342 = v762;
    v352 = v758;
    if (v688)
    {
      [(BWInferenceNode *)v441 setMaxInputDimensions:0xFC000000FC0];
    }
  }

  else if ((v698 & !v726 & 1) != 0 || v743 <= 9 && ((1 << v743) & 0x230) != 0)
  {
    [(BWInferenceNode *)v441 addInferenceOfType:103 version:+[BWRGBPersonSegmentationInferenceConfiguration portraitVersion]& 0xFFFFFFFFFFFFLL];
  }

  if ([(FigCapturePhotonicEngineSinkPipeline *)v342 _addLandmarksInferenceToNode:v441])
  {
    goto LABEL_1022;
  }

  v885.receiver = v342;
  v885.super_class = FigCapturePhotonicEngineSinkPipeline;
  if ((objc_msgSendSuper2(&v885, sel_addNode_error_, v441, &v1055) & 1) == 0)
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  v1056[0] = [v391 safelyConnectOutput:v813 toInput:-[BWNode input](v441 pipelineStage:{"input"), v803}];
  if (v1056[0])
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  v395 = [(BWNode *)v441 output];
  if (v746)
  {
    v591 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.person-semantics" priority:*(v342 + 48)];
    v592 = [[BWFanOutNode alloc] initWithFanOutCount:2 mediaType:1986618469];
    [(BWNode *)v592 setName:@"Concurrent PersonSemantics / DepthProcessing Fan Out"];
    v884.receiver = v342;
    v884.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v884, sel_addNode_error_, v592, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v395 toInput:-[BWNode input](v592 pipelineStage:{"input"), v728}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v593 = [(NSArray *)[(BWNode *)v592 outputs] objectAtIndexedSubscript:0];
    if (((v682 | v418) & 1) != 0 || v743 <= 9 && ((1 << v743) & 0x230) != 0)
    {
      v594 = [BWAttachedMediaSplitNode alloc];
      v883 = @"PrimaryFormat";
      v595 = -[BWAttachedMediaSplitNode initWithAttachedMediaKeys:](v594, "initWithAttachedMediaKeys:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v883 count:1]);
      [(BWNode *)v595 setName:@"Unprocessed DepthData Discarder"];
      v882.receiver = v342;
      v882.super_class = FigCapturePhotonicEngineSinkPipeline;
      if ((objc_msgSendSuper2(&v882, sel_addNode_error_, v595, &v1055) & 1) == 0)
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v1056[0] = [v391 safelyConnectOutput:v593 toInput:-[BWNode input](v595 pipelineStage:{"input"), v591}];
      if (v1056[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v593 = [(BWNode *)v595 output];
    }

    if (FigCaptureOptimizedBWInferenceScalingPathSupported())
    {
      v596 = objc_alloc_init(BWInferenceProcessingConfiguration);
      [(BWInferenceProcessingConfiguration *)v596 setScalingStrategy:10];
      [(BWInferenceProcessingConfiguration *)v596 setFilterType:2];
    }

    else
    {
      v596 = 0;
    }

    if (v704 < 1)
    {
      v598 = 0;
    }

    else
    {
      v598 = [(BWPersonSemanticsConfiguration *)v718 enabledSemantics]& 1;
    }

    v599 = pesp_appendToName([v23 pipelineProcessingContext], @"PersonSemantics");
    v600 = pesp_appendToName(v599, @"Matting");
    v601 = v600;
    if (v598)
    {
      v601 = pesp_appendToName(v600, @"LearnedMatting");
    }

    v602 = [[BWInferenceNode alloc] initWithScheduler:a10 priority:*(v762 + 52) processingConfiguration:v596 name:v601];
    [(BWInferenceNode *)v602 addInferenceOfType:104 version:Major & 0xFFFFFFFFFFFFLL configuration:v718];
    [v23 portraitEffectsMatteMainImageDownscalingFactor];
    if ([(FigCapturePhotonicEngineSinkPipeline *)v762 _addMattingInferenceToNode:v602 mattingVersion:v684 learnedMattingEnabled:v598 learnedMattingVersion:v704 mainImageDownscalingFactor:v777 targetAspectRatio:[(BWPersonSemanticsConfiguration *)v718 enabledSemantics] appliesFinalCropRect:[(BWStillImageNodeConfiguration *)v758 metalCommandQueue] enabledSemantics:v603 metalCommandQueue:v138 mattingSensorConfigurationsByPortType:v717 clientIsCameraOrDerivative:v754 requiredAdditionalInferenceOutputBuffers:v683])
    {
      goto LABEL_1022;
    }

    [(BWInferenceNode *)v602 setIgnoreInvalidContentInformationForPrimaryMedia:v692];
    [(BWInferenceNode *)v602 setInferenceTypesToSkipResolver:v1029];
    [(BWInferenceNode *)v602 setBackPressureDrivenPipelining:v761 == 2];
    if (v708)
    {
      v604 = 2;
    }

    else
    {
      v604 = 0;
    }

    [(BWInferenceNode *)v602 setEndOfDataBehavior:v604];
    v881.receiver = v762;
    v881.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v881, sel_addNode_error_, v602, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v342 = v762;
    v391 = a14;
    v1056[0] = [a14 safelyConnectOutput:v593 toInput:-[BWNode input](v602 pipelineStage:{"input"), v591}];
    v418 = v738;
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v791 = [(BWNode *)v602 output];
    v784 = 1;
    v395 = [(NSArray *)[(BWNode *)v592 outputs] objectAtIndexedSubscript:1];
    v773 = 1;
    v352 = v758;
  }

  else
  {
    v773 = 0;
    v791 = 0;
    v784 = 1;
  }

  v251 = &classRef_BWDerectificationInferenceProvider;
LABEL_732:
  if (v743 <= 9 && ((1 << v743) & 0x230) != 0)
  {
    v448 = [v23 depthDataSourceDimensions];
    if ([v717 count] != 1)
    {
      v1056[0] = -12780;
      v635 = FigCaptureGetFrameworkRadarComponent();
      v1034 = 0;
      v1033 = OS_LOG_TYPE_DEFAULT;
      v636 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v637 = v1034;
      if (os_log_type_enabled(v636, v1033))
      {
        v638 = v637;
      }

      else
      {
        v638 = v637 & 0xFFFFFFFE;
      }

      if (v638)
      {
        *v991 = 136315138;
        *&v991[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v951 = 0;
      v634 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v635, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 2993, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:2993", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:2993", 0);
      goto LABEL_1175;
    }

    v814 = v395;
    v449 = [objc_msgSend(v717 "allValues")];
    if (!v449)
    {
      v1056[0] = -12780;
      v639 = FigCaptureGetFrameworkRadarComponent();
      v1034 = 0;
      v1033 = OS_LOG_TYPE_DEFAULT;
      v640 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v641 = v1034;
      if (os_log_type_enabled(v640, v1033))
      {
        v642 = v641;
      }

      else
      {
        v642 = v641 & 0xFFFFFFFE;
      }

      if (v642)
      {
        *v991 = 136315138;
        *&v991[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v951 = 0;
      v634 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v639, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 2996, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:2996", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:2996", 0);
      goto LABEL_1175;
    }

    v450 = v449;
    v451 = [BWStillImageFocusPixelDisparityNode alloc];
    *&v452 = v100;
    v453 = [(BWStillImageFocusPixelDisparityNode *)v451 initWithNodeConfiguration:v352 sensorConfiguration:v450 disparityMapWidth:v448 disparityMapHeight:v448 >> 32 depthIsAlwaysHighQuality:v754 defaultZoomFactor:v452];
    v454 = v251[65];
    v880.receiver = v342;
    v880.super_class = v454;
    if ((objc_msgSendSuper2(&v880, sel_addNode_error_, v453, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v814 toInput:-[BWNode input](v453 pipelineStage:{"input"), v728}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v395 = [(BWNode *)v453 output];
    v418 = v738;
  }

LABEL_739:
  if (v752)
  {
    v455 = v251;
    v456 = +[BWStillImageConditionalRouterInferenceConfiguration inferenceConfiguration];
    v457 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v456];
    [(BWNode *)v457 setName:@"Inference Conditional Router"];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v457 "outputs")];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v457 "outputs")];
    v458 = v455[65];
    v879.receiver = v342;
    v879.super_class = v458;
    if ((objc_msgSendSuper2(&v879, sel_addNode_error_, v457, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v395 toInput:-[BWNode input](v457 pipelineStage:{"input"), v803}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v459 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.inference.bravo" priority:*(v342 + 48)];
    if (FigCaptureOptimizedBWInferenceScalingPathSupported())
    {
      v460 = objc_alloc_init(BWInferenceProcessingConfiguration);
      [(BWInferenceProcessingConfiguration *)v460 setScalingStrategy:10];
      [(BWInferenceProcessingConfiguration *)v460 setFilterType:2];
    }

    else
    {
      v460 = 0;
    }

    if (v704 < 1)
    {
      v474 = 0;
    }

    else
    {
      v474 = [(BWPersonSemanticsConfiguration *)v718 enabledSemantics]& 1;
    }

    v475 = [v23 pipelineProcessingContext];
    v476 = v475;
    if (((v730 | v784) & 1) == 0)
    {
      v476 = pesp_appendToName(v475, @"Landmarks");
    }

    if (v746)
    {
      v477 = pesp_appendToName(v476, @"PersonSemantics");
      v478 = pesp_appendToName(v477, @"Matting");
      v476 = v478;
      if (v474)
      {
        v476 = pesp_appendToName(v478, @"LearnedMatting");
      }
    }

    v479 = [BWInferenceNode alloc];
    v480 = v476;
    v342 = v762;
    v481 = [(BWInferenceNode *)v479 initWithScheduler:a10 priority:*(v762 + 52) processingConfiguration:v460 name:v480];
    if (((v730 | v784) & 1) == 0)
    {
      if ([(FigCapturePhotonicEngineSinkPipeline *)v762 _addLandmarksInferenceToNode:v481])
      {
        goto LABEL_1022;
      }

      v784 = 1;
    }

    v418 = v738;
    if (v746)
    {
      [(BWInferenceNode *)v481 addInferenceOfType:104 version:Major & 0xFFFFFFFFFFFFLL configuration:v718];
      [v23 portraitEffectsMatteMainImageDownscalingFactor];
      if ([(FigCapturePhotonicEngineSinkPipeline *)v762 _addMattingInferenceToNode:v481 mattingVersion:v684 learnedMattingEnabled:v474 learnedMattingVersion:v704 mainImageDownscalingFactor:v777 targetAspectRatio:[(BWPersonSemanticsConfiguration *)v718 enabledSemantics] appliesFinalCropRect:[(BWStillImageNodeConfiguration *)v352 metalCommandQueue] enabledSemantics:v597 metalCommandQueue:v138 mattingSensorConfigurationsByPortType:v717 clientIsCameraOrDerivative:v754 requiredAdditionalInferenceOutputBuffers:v683])
      {
        goto LABEL_1022;
      }

      v773 = 1;
      v352 = v758;
    }

    [(BWInferenceNode *)v481 setInferenceTypesToSkipResolver:v1029];
    [(BWInferenceNode *)v481 setBackPressureDrivenPipelining:v761 == 2];
    if (v708)
    {
      v482 = 2;
    }

    else
    {
      v482 = 0;
    }

    [(BWInferenceNode *)v481 setEndOfDataBehavior:v482];
    v878.receiver = v762;
    v878.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v878, sel_addNode_error_, v481, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [a14 safelyConnectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v457 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", objc_msgSend(v456, "inferenceOuputIndex")), -[BWNode input](v481, "input"), v459}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v473 = [[BWInferenceSynchronizerNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:1 indexOfInputProvidingPreferredInferences:1 errorHandlingModel:0];
    [(BWNode *)v473 setName:@"Disparity/Inference Sync"];
    [(BWInferenceSynchronizerNode *)v473 setSynchronizesTopLevelAttachments:1];
    [(BWInferenceSynchronizerNode *)v473 setSynchronizeInferencesResolver:v707];
    v877.receiver = v762;
    v877.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v877, sel_addNode_error_, v473, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [a14 safelyConnectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v457 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", objc_msgSend(v456, "defaultOutputIndex")), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v473, "inputs"), "objectAtIndexedSubscript:", 0), v728}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [a14 safelyConnectOutput:-[BWNode output](v481 toInput:"output") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v473, "inputs"), "objectAtIndexedSubscript:", 1), v728}];
    v216 = v824;
    v391 = a14;
    v251 = &classRef_BWDerectificationInferenceProvider;
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }
  }

  else
  {
    if (!v753)
    {
      goto LABEL_782;
    }

    v815 = [BWStillImageConditionalRouterUBConfiguration configurationWithPortTypes:v764];
    v461 = v251;
    v462 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v815];
    [(BWNode *)v462 setName:@"UB Router for ConstituentPhoto without Depth"];
    v463 = v461[65];
    v876.receiver = v342;
    v876.super_class = v463;
    if ((objc_msgSendSuper2(&v876, sel_addNode_error_, v462, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v395 toInput:-[BWNode input](v462 pipelineStage:{"input"), v803}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v464 = -[BWStillImageMultiCameraDoserNode initWithPortTypes:]([BWStillImageMultiCameraDoserNode alloc], "initWithPortTypes:", [v216 allKeys]);
    v875.receiver = v342;
    v875.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v875, sel_addNode_error_, v464, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v465 = -[BWFunnelNode initWithNumberOfInputs:mediaType:]([BWFunnelNode alloc], "initWithNumberOfInputs:mediaType:", [v764 count], 1986618469);
    v874.receiver = v342;
    v874.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v874, sel_addNode_error_, v465, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v828 = v465;
    [(BWNode *)v465 setName:@"Camera Calibration Data"];
    v873 = 0u;
    v872 = 0u;
    v871 = 0u;
    v870 = 0u;
    v466 = [v764 countByEnumeratingWithState:&v870 objects:v869 count:16];
    if (v466)
    {
      v467 = v466;
      v809 = *v871;
LABEL_751:
      v468 = 0;
      while (1)
      {
        if (*v871 != v809)
        {
          objc_enumerationMutation(v764);
        }

        v469 = *(*(&v870 + 1) + 8 * v468);
        v470 = [(BWStillImageConditionalRouterUBConfiguration *)v815 outputIndexForPortType:v469];
        if (v470 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_1022;
        }

        v472 = v470;
        [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v462 "outputs")];
        v1056[0] = [a14 safelyConnectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v462 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", v472), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v464, "inputs"), "objectAtIndexedSubscript:", v472), v803}];
        if (v1056[0])
        {
          [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
          goto LABEL_964;
        }

        v1056[0] = [a14 safelyConnectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v464 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", v472), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v828, "inputs"), "objectAtIndexedSubscript:", v472), v803}];
        if (v1056[0])
        {
          [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
          goto LABEL_964;
        }

        if (v467 == ++v468)
        {
          v467 = [v764 countByEnumeratingWithState:&v870 objects:v869 count:16];
          if (v467)
          {
            goto LABEL_751;
          }

          break;
        }
      }
    }

    v216 = v824;
    v473 = [[BWStillImageCameraCalibrationDataNode alloc] initWithSensorConfigurationsByPortType:v824];
    [(BWInferenceSynchronizerNode *)v473 setPropagatesDetectedObjects:1];
    -[BWInferenceSynchronizerNode setBaseZoomFactorsByPortType:](v473, "setBaseZoomFactorsByPortType:", [v23 baseZoomFactorsByPortType]);
    [(BWNode *)v473 setName:@"Still Image Camera Calibration Data"];
    v251 = &classRef_BWDerectificationInferenceProvider;
    v342 = v762;
    v868.receiver = v762;
    v868.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v868, sel_addNode_error_, v473, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v391 = a14;
    v1056[0] = [a14 safelyConnectOutput:-[BWNode output](v828 toInput:"output") pipelineStage:{-[BWNode input](v473, "input"), v803}];
    v352 = v758;
    v418 = v738;
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }
  }

  v395 = [(BWNode *)v473 output];
LABEL_782:
  if ((v734 | v418 | v810))
  {
    if ([v717 count] != 1)
    {
      v1056[0] = -12780;
      v652 = FigCaptureGetFrameworkRadarComponent();
      v1034 = 0;
      v1033 = OS_LOG_TYPE_DEFAULT;
      v653 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v654 = v1034;
      if (os_log_type_enabled(v653, v1033))
      {
        v655 = v654;
      }

      else
      {
        v655 = v654 & 0xFFFFFFFE;
      }

      if (v655)
      {
        *v991 = 136315394;
        *&v991[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
        v992 = 2112;
        v656 = v717;
        *v993 = v717;
        _os_log_send_and_compose_impl();
      }

      else
      {
        v656 = v717;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v951 = 138412290;
      *&v951[4] = v656;
      v634 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v652, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 3167, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:3167", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:3167", 0);
      goto LABEL_1175;
    }

    v816 = v395;
    v483 = [objc_msgSend(v717 "allValues")];
    if (!v483)
    {
      v1056[0] = -12780;
      v657 = FigCaptureGetFrameworkRadarComponent();
      v1034 = 0;
      v1033 = OS_LOG_TYPE_DEFAULT;
      v658 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v659 = v1034;
      if (os_log_type_enabled(v658, v1033))
      {
        v660 = v659;
      }

      else
      {
        v660 = v659 & 0xFFFFFFFE;
      }

      if (v660)
      {
        *v991 = 136315138;
        *&v991[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v951 = 0;
      v634 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v657, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 3170, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:3170", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:3170", 0);
      goto LABEL_1175;
    }

    LOBYTE(v664) = v761 == 2;
    v484 = -[BWDepthConverterNode initWithStillImageNodeConfiguration:cameraInfoByPortType:sensorIDDictionary:rgbPersonSegmentationEnabled:depthIsAlwaysHighQuality:depthOriginatesFromNeuralNetwork:backPressureDrivenPipelining:]([BWDepthConverterNode alloc], "initWithStillImageNodeConfiguration:cameraInfoByPortType:sensorIDDictionary:rgbPersonSegmentationEnabled:depthIsAlwaysHighQuality:depthOriginatesFromNeuralNetwork:backPressureDrivenPipelining:", v352, v822, [v483 sensorIDDictionary], (v698 & !v726 | v687) & 1, v754, v738, v664);
    v485 = v251[65];
    v867.receiver = v342;
    v867.super_class = v485;
    if ((objc_msgSendSuper2(&v867, sel_addNode_error_, v484, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    [(BWNode *)v484 setName:@"Still Image Depth Converter"];
    -[BWDepthConverterNode setHorizontalSensorBinningFactor:](v484, "setHorizontalSensorBinningFactor:", [v23 horizontalSensorBinningFactor]);
    -[BWDepthConverterNode setVerticalSensorBinningFactor:](v484, "setVerticalSensorBinningFactor:", [v23 verticalSensorBinningFactor]);
    [(BWDepthConverterNode *)v484 setSkipSmartStyleBuffer:v745];
    v391 = a14;
    v486 = v728;
    if (v724)
    {
      v487 = 0;
    }

    else
    {
      v487 = FigCaptureFrontDepthDataToRGBRotationAngle();
    }

    [(BWDepthConverterNode *)v484 setStillGDRFilteringSupportEnabled:1];
    [(BWDepthConverterNode *)v484 setOutputFormat:1751411059];
    -[BWDepthConverterNode setOutputDimensions:](v484, "setOutputDimensions:", [v23 depthDataTargetDimensions]);
    [(BWDepthConverterNode *)v484 setBaseRotationDegrees:v487];
    v488 = v803;
    if (v761 == 2)
    {
      v488 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.depthConverter" priority:*(v342 + 48)];
    }

    v1056[0] = [a14 safelyConnectOutput:v816 toInput:-[BWNode input](v484 pipelineStage:{"input"), v488}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    *(v342 + 88) = v484;
    v395 = [(BWNode *)v484 output];
  }

  else
  {
    v486 = v728;
  }

  if (v791)
  {
    if (v486 == v803)
    {
      v1056[0] = -12780;
      v630 = FigCaptureGetFrameworkRadarComponent();
      v1034 = 0;
      v1033 = OS_LOG_TYPE_DEFAULT;
      v631 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v632 = v1034;
      if (os_log_type_enabled(v631, v1033))
      {
        v633 = v632;
      }

      else
      {
        v633 = v632 & 0xFFFFFFFE;
      }

      if (v633)
      {
        *v991 = 136315138;
        *&v991[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v951 = 0;
      v634 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v630, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 3215, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:3215", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:3215", 0);
      goto LABEL_1175;
    }

    v489 = [[BWInferenceSynchronizerNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:0 indexOfInputProvidingPreferredInferences:1 errorHandlingModel:0];
    [(BWNode *)v489 setName:@"DepthData Processing / PersonSemantics"];
    v866[0] = MEMORY[0x1E69E9820];
    v866[1] = 3221225472;
    v866[2] = __396__FigCapturePhotonicEngineSinkPipeline__buildStillImageSinkPipelineWithConfiguration_captureDevice_sourceOutputsByPortType_sourceSensorRawOutputsByPortType_highResStillImageDimensions_supplementalPointCloudCaptureDevice_supplementalPointCloudSourceOutput_captureStatusDelegate_inferenceScheduler_cinematicFramingStatesProvider_smartCropHomographyProvider_multiCamClientCompositingCallback_graph___block_invoke_1112;
    v866[3] = &unk_1E7991428;
    v866[4] = v1028;
    v866[5] = v707;
    [(BWInferenceSynchronizerNode *)v489 setSynchronizeInferencesResolver:v866];
    v490 = v251[65];
    v865.receiver = v342;
    v865.super_class = v490;
    if ((objc_msgSendSuper2(&v865, sel_addNode_error_, v489, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v395 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v489 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 0), v486}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v791 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v489 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 1), v486}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v395 = [(BWNode *)v489 output];
  }

  if (!v755)
  {
    if (v771)
    {
      v493 = v750 & v697;
    }

    else
    {
      v493 = 0;
    }

    if (v493 != 1)
    {
      v496 = v705;
      goto LABEL_888;
    }

    v494 = [[BWFunnelNode alloc] initWithNumberOfInputs:2 mediaType:1986618469];
    [(BWNode *)v494 setName:@"Single Camera Depth Funnel"];
    v495 = v251[65];
    v858.receiver = v342;
    v858.super_class = v495;
    v496 = v705;
    if ((objc_msgSendSuper2(&v858, sel_addNode_error_, v494, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v395 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v494 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 0), v803}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v771 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v494 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 1), v803}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    goto LABEL_887;
  }

  if ((v784 & 1) == 0)
  {
    v491 = v395;
    if (FigCaptureOptimizedBWInferenceScalingPathSupported())
    {
      v492 = objc_alloc_init(BWInferenceProcessingConfiguration);
      [(BWInferenceProcessingConfiguration *)v492 setScalingStrategy:10];
      [(BWInferenceProcessingConfiguration *)v492 setFilterType:2];
    }

    else
    {
      v492 = 0;
    }

    v501 = v719 & (v773 ^ 1);
    v502 = pesp_appendToName([v23 pipelineProcessingContext], @"Landmarks");
    v503 = v502;
    if (v501 == 1)
    {
      v503 = pesp_appendToName(v502, @"PersonSemantics");
    }

    v504 = [[BWInferenceNode alloc] initWithScheduler:a10 priority:*(v342 + 52) processingConfiguration:v492 name:v503];
    if ([(FigCapturePhotonicEngineSinkPipeline *)v342 _addLandmarksInferenceToNode:v504])
    {
      goto LABEL_1022;
    }

    if (v501)
    {
      [(BWInferenceNode *)v504 addInferenceOfType:104 version:Major & 0xFFFFFFFFFFFFLL configuration:v718];
      LOBYTE(v773) = 1;
    }

    [(BWInferenceNode *)v504 setInferenceTypesToSkipResolver:v1029];
    if (v708)
    {
      v505 = 2;
    }

    else
    {
      v505 = 0;
    }

    [(BWInferenceNode *)v504 setEndOfDataBehavior:v505];
    v506 = v251[65];
    v864.receiver = v342;
    v864.super_class = v506;
    if ((objc_msgSendSuper2(&v864, sel_addNode_error_, v504, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v491 toInput:-[BWNode input](v504 pipelineStage:{"input"), v803}];
    v352 = v758;
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v395 = [(BWNode *)v504 output];
  }

  if (!v746)
  {
    v515 = +[BWStillImageConditionalRouterPersonSegmentationAndMattingConfiguration personSegmentationAndMattingConfiguration];
    v516 = v251;
    v517 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v515];
    [(BWNode *)v517 setName:@"Matting Conditional Router"];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v517 "outputs")];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v517 "outputs")];
    v518 = v516[65];
    v862.receiver = v342;
    v862.super_class = v518;
    if ((objc_msgSendSuper2(&v862, sel_addNode_error_, v517, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v817 = v395;
    if (FigCaptureOptimizedBWInferenceScalingPathSupported())
    {
      v519 = objc_alloc_init(BWInferenceProcessingConfiguration);
      [(BWInferenceProcessingConfiguration *)v519 setScalingStrategy:10];
      [(BWInferenceProcessingConfiguration *)v519 setFilterType:2];
    }

    else
    {
      v519 = 0;
    }

    if (v704 < 1)
    {
      v520 = 0;
    }

    else
    {
      v520 = [(BWPersonSemanticsConfiguration *)v718 enabledSemantics]& 1;
    }

    v521 = [v23 pipelineProcessingContext];
    if ((v773 & 1) == 0)
    {
      v521 = pesp_appendToName(v521, @"PersonSemantics");
    }

    v522 = pesp_appendToName(v521, @"Matting");
    v523 = v522;
    if (v520)
    {
      v523 = pesp_appendToName(v522, @"LearnedMatting");
    }

    v524 = [[BWInferenceNode alloc] initWithScheduler:a10 priority:*(v762 + 52) processingConfiguration:v519 name:v523];
    v525 = v524;
    if ((v773 & 1) == 0)
    {
      [(BWInferenceNode *)v524 addInferenceOfType:104 version:Major & 0xFFFFFFFFFFFFLL configuration:v718];
    }

    v823 = v515;
    [v23 portraitEffectsMatteMainImageDownscalingFactor];
    if (![(FigCapturePhotonicEngineSinkPipeline *)v762 _addMattingInferenceToNode:v525 mattingVersion:v684 learnedMattingEnabled:v520 learnedMattingVersion:v704 mainImageDownscalingFactor:v777 targetAspectRatio:[(BWPersonSemanticsConfiguration *)v718 enabledSemantics] appliesFinalCropRect:[(BWStillImageNodeConfiguration *)v758 metalCommandQueue] enabledSemantics:v526 metalCommandQueue:v138 mattingSensorConfigurationsByPortType:v717 clientIsCameraOrDerivative:v754 requiredAdditionalInferenceOutputBuffers:v683])
    {
      [(BWInferenceNode *)v525 setIgnoreInvalidContentInformationForPrimaryMedia:v692];
      [(BWInferenceNode *)v525 setInferenceTypesToSkipResolver:v1029];
      if (v708)
      {
        v527 = 2;
      }

      else
      {
        v527 = 0;
      }

      [(BWInferenceNode *)v525 setEndOfDataBehavior:v527];
      v861.receiver = v762;
      v861.super_class = FigCapturePhotonicEngineSinkPipeline;
      if ((objc_msgSendSuper2(&v861, sel_addNode_error_, v525, &v1055) & 1) == 0)
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      if ((v750 & v751 | v750 & v697))
      {
        v528 = 3;
      }

      else
      {
        v528 = 2;
      }

      v512 = [[BWFunnelNode alloc] initWithNumberOfInputs:v528 mediaType:1986618469];
      [(BWNode *)v512 setName:@"Matting Funnel"];
      v860.receiver = v762;
      v860.super_class = FigCapturePhotonicEngineSinkPipeline;
      if ((objc_msgSendSuper2(&v860, sel_addNode_error_, v512, &v1055) & 1) == 0)
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v391 = a14;
      v1056[0] = [a14 safelyConnectOutput:v817 toInput:-[BWNode input](v517 pipelineStage:{"input"), v803}];
      if (v1056[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v1056[0] = [a14 safelyConnectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v517 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", objc_msgSend(v823, "defaultOutputIndex")), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v512, "inputs"), "objectAtIndexedSubscript:", 0), v803}];
      if (v1056[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v1056[0] = [a14 safelyConnectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v517 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", objc_msgSend(v823, "personSegmentationAndMattingOuputIndex")), -[BWNode input](v525, "input"), v803}];
      if (v1056[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v1056[0] = [a14 safelyConnectOutput:-[BWNode output](v525 toInput:"output") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v512, "inputs"), "objectAtIndexedSubscript:", 1), v803}];
      v352 = v758;
      v251 = &classRef_BWDerectificationInferenceProvider;
      if (v1056[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v216 = v824;
      if (v750 & v751)
      {
        v496 = v705;
        v529 = v771;
        if (v771)
        {
          goto LABEL_875;
        }
      }

      else
      {
        v529 = v771;
        if (v771)
        {
          v530 = v750 & v697;
        }

        else
        {
          v530 = 0;
        }

        v496 = v705;
        if (v530)
        {
LABEL_875:
          v1056[0] = [a14 safelyConnectOutput:v529 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v512 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 2), v803}];
          v342 = v762;
          if (v1056[0])
          {
            [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
            goto LABEL_964;
          }

          goto LABEL_882;
        }
      }

      v342 = v762;
      goto LABEL_882;
    }

LABEL_1022:
    v1056[0] = -12780;
    goto LABEL_964;
  }

  v507 = v251;
  v508 = v395;
  if ([(FigCaptureCameraParameters *)v825 complementMatteSuppressionDecisionWithISPDetectedFaces])
  {
    v509 = 4;
  }

  else
  {
    v509 = 2;
  }

  v510 = v509 | v716;
  if ([v23 smartStyleReversibilityEnabled])
  {
    v511 = v510 | 8;
  }

  else
  {
    v511 = v510;
  }

  v512 = [[BWMatteMediaSuppressionNode alloc] initWithBehavior:v511];
  [(BWNode *)v512 setName:@"Matting Media Suppression Node"];
  v513 = v507;
  v514 = v507[65];
  v863.receiver = v342;
  v863.super_class = v514;
  if ((objc_msgSendSuper2(&v863, sel_addNode_error_, v512, &v1055) & 1) == 0)
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  v391 = a14;
  v1056[0] = [a14 safelyConnectOutput:v508 toInput:-[BWNode input](v512 pipelineStage:{"input"), v803}];
  v251 = v513;
  v496 = v705;
  if (v1056[0])
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

LABEL_882:
  v395 = [(BWNode *)v512 output];
  if (v686 && v759 != 1)
  {
    v494 = [[BWMatteMediaScalerNode alloc] initWithBasePoolCapacity:2];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v531 = v251[65];
    v859.receiver = v342;
    v859.super_class = v531;
    if ((objc_msgSendSuper2(&v859, sel_addNode_error_, v494, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    [(BWNode *)v494 setName:@"Portrait Matte Media scaler"];
    [(BWFunnelNode *)v494 setMainImageDownscalingFactorByAttachedMediaKey:v775];
    [(BWFunnelNode *)v494 setPreferMainImageDownscalingFactorByAttachedMediaKeyFromSampleBuffer:1];
    [(BWFunnelNode *)v494 setBackPressureDrivenPipelining:v761 == 2];
    v1056[0] = [v391 safelyConnectOutput:v395 toInput:-[BWNode input](v494 pipelineStage:{"input"), v803}];
    v496 = v705;
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

LABEL_887:
    v395 = [(BWNode *)v494 output];
  }

LABEL_888:
  if (!v750)
  {
    goto LABEL_895;
  }

  if ((v724 & 1) != 0 || v743 <= 9 && ((1 << v743) & 0x230) != 0)
  {
    v532 = v395;
    v533 = [[BWStillImageStandardResolutionAttachmentTransferNode alloc] initWithNodeConfiguration:v352];
    v534 = v251[65];
    v857.receiver = v342;
    v857.super_class = v534;
    if ((objc_msgSendSuper2(&v857, sel_addNode_error_, v533, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v532 toInput:-[BWNode input](v533 pipelineStage:{"input"), v803}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

LABEL_894:
    v395 = [(BWNode *)v533 output];
    goto LABEL_895;
  }

  if ((v751 & 1) == 0)
  {
    v588 = v251;
    v589 = v395;
    v533 = [[BWInferenceSynchronizerNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:0 indexOfInputProvidingPreferredInferences:1 errorHandlingModel:0];
    [(BWNode *)v533 setName:@"24MP/12MP Inference Synchronizer"];
    -[BWStillImageStandardResolutionAttachmentTransferNode setAttachedMediaKeysToSkip:](v533, "setAttachedMediaKeysToSkip:", [MEMORY[0x1E695DFD8] setWithObject:0x1F217BF50]);
    [(BWStillImageStandardResolutionAttachmentTransferNode *)v533 setAllowOutOfOrderInputs:1];
    v856[0] = MEMORY[0x1E69E9820];
    v856[1] = 3221225472;
    v856[2] = __396__FigCapturePhotonicEngineSinkPipeline__buildStillImageSinkPipelineWithConfiguration_captureDevice_sourceOutputsByPortType_sourceSensorRawOutputsByPortType_highResStillImageDimensions_supplementalPointCloudCaptureDevice_supplementalPointCloudSourceOutput_captureStatusDelegate_inferenceScheduler_cinematicFramingStatesProvider_smartCropHomographyProvider_multiCamClientCompositingCallback_graph___block_invoke_2_1147;
    v856[3] = &unk_1E79913E0;
    v856[4] = v707;
    [(BWStillImageStandardResolutionAttachmentTransferNode *)v533 setSynchronizeInferencesResolver:v856];
    v590 = v588[65];
    v855.receiver = v342;
    v855.super_class = v590;
    if ((objc_msgSendSuper2(&v855, sel_addNode_error_, v533, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [a14 safelyConnectOutput:v771 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v533 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 0), v728}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [a14 safelyConnectOutput:v589 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v533 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 1), v728}];
    v251 = v588;
    v391 = a14;
    v496 = v705;
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    goto LABEL_894;
  }

LABEL_895:
  if (v745)
  {
    v535 = [[BWStillImageSmartStyleAttachmentTransferNode alloc] initWithNodeConfiguration:v352];
    v536 = v251[65];
    v854.receiver = v342;
    v854.super_class = v536;
    if ((objc_msgSendSuper2(&v854, sel_addNode_error_, v535, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v395 toInput:-[BWNode input](v535 pipelineStage:{"input"), v803}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v395 = [(BWNode *)v535 output];
  }

  if (v496)
  {
    v537 = [BWStillImagePortraitMetadataNode alloc];
    *&v538 = v100;
    v539 = [(BWStillImagePortraitMetadataNode *)v537 initWithNodeConfiguration:v352 sdofRenderingVersion:v496 sensorConfigurationsByPortType:v717 defaultPortType:v696 defaultZoomFactor:v538];
    v540 = v251[65];
    v853.receiver = v342;
    v853.super_class = v540;
    if ((objc_msgSendSuper2(&v853, sel_addNode_error_, v539, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v395 toInput:-[BWNode input](v539 pipelineStage:{"input"), v803}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v395 = [(BWNode *)v539 output];
  }

  if (v751)
  {
    v541 = [BWStillImageFilterNode alloc];
    LOBYTE(v667) = v761 == 2;
    LODWORD(v664) = v694;
    *&v542 = v138;
    *&v543 = v100;
    v544 = [(BWStillImageFilterNode *)v541 initWithNodeConfiguration:v352 sensorConfigurationsByPortType:v717 statusDelegate:objb depthDataDeliveryEnabled:v763 personSegmentationEnabled:v730 refinedDepthEnabled:0 portraitRenderQuality:v542 targetAspectRatio:v543 defaultPortType:v664 defaultZoomFactor:v696 backPressureDrivenPipelining:v667];
    -[BWStillImageFilterNode setSmartStyleRenderingVersion:](v544, "setSmartStyleRenderingVersion:", [v23 smartStyleRenderingVersion]);
    v545 = v251[65];
    v852.receiver = v342;
    v852.super_class = v545;
    if ((objc_msgSendSuper2(&v852, sel_addNode_error_, v544, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v395 toInput:-[BWNode input](v544 pipelineStage:{"input"), v728}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v395 = [(BWNode *)v544 output];
  }

  if (v761 == 1)
  {
    v546 = [[BWStillImageTurnstileNode alloc] initWithStillImageCoordinator:*(v342 + 56)];
    v547 = v251[65];
    v851.receiver = v342;
    v851.super_class = v547;
    v548 = v715;
    if ((objc_msgSendSuper2(&v851, sel_addNode_error_, v546, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v395 toInput:-[BWNode input](v546 pipelineStage:{"input"), v803}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v395 = [(BWNode *)v546 output];
  }

  else
  {
    v548 = v715;
  }

  LODWORD(v549) = [v23 deviceHasFlash];
  v550 = [(FigCaptureCameraParameters *)v825 gainMapVersion];
  v551 = v741 != 0;
  if (v759 == 1)
  {
    v549 = 1;
  }

  else
  {
    v549 = v549;
  }

  if (v759 == 1)
  {
    v551 = 1;
  }

  v552 = v550 < 0x20000 && v551;
  v553 = (v550 & 0xFFFE0000) != 0 && v551;
  if (v796)
  {
    v829 = v549;
    v554 = [[BWFunnelNode alloc] initWithNumberOfInputs:2 mediaType:1986618469];
    [(BWNode *)v554 setName:@"Stereo Photo Funnel"];
    v850.receiver = v342;
    v850.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v850, sel_addNode_error_, v554, &v1055) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v395 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v554 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 0), v548}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1056[0] = [v391 safelyConnectOutput:v796 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v554 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 1), v548}];
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v395 = [(BWNode *)v554 output];
    v549 = v829;
    v342 = v762;
  }

  v849 = 0;
  v848 = 0;
  v847 = 0;
  v1056[0] = [FigCapturePhotonicEngineSinkPipeline _buildScaleAndEncodeSubPipelineWithPipelineStage:v342 graph:v548 nodeConfiguration:v391 stillImageSinkPipelineWithConfiguration:v758 sensorConfigurationsByPortType:v23 supportsScaling:v216 deferredPearlDepthProcessingEnabled:v777 ^ 1 provideMeteorHeadroom:v810 provideFlexGTC:v552 providePostEncodeInferences:v553 semanticDevelopmentVersion:v695 constituentPhotoDeliveryEnabled:v721 demosaicedRawEnabled:v753 nonPropagatedMainImageDownscalingFactorByAttachedMediaKey:v171 propagatedMainImageDownscalingFactorByAttachedMediaKey:v775 scalingMainImageDownscalingFactorByAttachedMediaKey:v766 inferenceScheduler:a10 subPipelineInputOut:&v849 subPipelineOutputOut:&v848 cameraSupportsFlash:v549 cinematicFramingStatesProvider:a11 smartCropHomographyProvider:a12 multiCamClientCompositingCallback:a13 photoEncoderControllerOut:&v847];
  if (v1056[0])
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  v555 = v847;
  if (objb && v847)
  {
    [(BWPhotonicEngineNode *)objb sharePhotoEncoderControllerForPiecemealEncoding:v847];
    v555 = v847;
  }

  if (v769 && v555)
  {
    [(BWPiecemealEncodingNode *)v769 sharePhotoEncoderControllerForPiecemealEncoding:?];
  }

  v1056[0] = [v391 safelyConnectOutput:v395 toInput:v849 pipelineStage:v548];
  if (v1056[0])
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  v556 = v848;
  if ([v744 optimizesImagesForOfflineVideoStabilization])
  {
    v557 = v549;
    v558 = [MEMORY[0x1E695DF90] dictionary];
    v843 = 0u;
    v844 = 0u;
    v845 = 0u;
    v846 = 0u;
    v559 = [v216 countByEnumeratingWithState:&v843 objects:v842 count:16];
    if (v559)
    {
      v560 = v559;
      v561 = *v844;
      do
      {
        for (i7 = 0; i7 != v560; ++i7)
        {
          if (*v844 != v561)
          {
            objc_enumerationMutation(v216);
          }

          [v558 setObject:objc_msgSend(objc_msgSend(v216 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v843 + 1) + 8 * i7)), "sensorIDDictionary"), *(*(&v843 + 1) + 8 * i7)}];
        }

        v560 = [v216 countByEnumeratingWithState:&v843 objects:v842 count:16];
      }

      while (v560);
    }

    v563 = [v23 horizontalSensorBinningFactor];
    v564 = [v23 verticalSensorBinningFactor];
    [v23 maxSupportedFrameRate];
    v342 = v762;
    v556 = FigCaptureBuildMotionAttachmentsNode(v762, v556, v563, v564, v803, [v23 motionAttachmentsSource], v558, objc_msgSend(v23, "cameraInfoByPortType"), v565, v693, 0, 0, 1, 1, 0, v1056);
    if (v1056[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v391 = a14;
    v549 = v557;
  }

  if (*(v342 + 104) != 1)
  {
    goto LABEL_949;
  }

  v566 = -[BWStillImageSampleBufferSinkNode initWithSinkID:]([BWStillImageSampleBufferSinkNode alloc], "initWithSinkID:", [v342 sinkID]);
  [(BWNode *)v566 setName:@"Still Image Sink"];
  -[BWStillImageSampleBufferSinkNode setPropagatedAttachedMediaKeys:](v566, "setPropagatedAttachedMediaKeys:", [v775 allKeys]);
  [(BWStillImageSampleBufferSinkNode *)v566 setCameraSupportsFlash:v549];
  v841.receiver = v342;
  v841.super_class = FigCapturePhotonicEngineSinkPipeline;
  if ((objc_msgSendSuper2(&v841, sel_addNode_error_, v566, &v1055) & 1) == 0)
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  *(v342 + 72) = v566;
  v1056[0] = [v391 safelyConnectOutput:v556 toInput:-[BWNode input](v566 pipelineStage:{"input"), v548}];
  if (!v1056[0])
  {
LABEL_949:
    v840 = 0u;
    v839 = 0u;
    v838 = 0u;
    v837 = 0u;
    v567 = [v342 nodes];
    v568 = [v567 countByEnumeratingWithState:&v837 objects:v836 count:16];
    if (v568)
    {
      v569 = v568;
      v570 = *v838;
      do
      {
        for (i8 = 0; i8 != v569; ++i8)
        {
          if (*v838 != v570)
          {
            objc_enumerationMutation(v567);
          }

          v572 = *(*(&v837 + 1) + 8 * i8);
          [v572 setDeferredPreparePriority:1];
          v835 = 0u;
          v834 = 0u;
          v833 = 0u;
          v832 = 0u;
          v573 = [v572 inputs];
          v574 = [v573 countByEnumeratingWithState:&v832 objects:v831 count:16];
          if (v574)
          {
            v575 = v574;
            v576 = *v833;
            do
            {
              for (i9 = 0; i9 != v575; ++i9)
              {
                if (*v833 != v576)
                {
                  objc_enumerationMutation(v573);
                }

                [objc_msgSend(*(*(&v832 + 1) + 8 * i9) "connection")];
              }

              v575 = [v573 countByEnumeratingWithState:&v832 objects:v831 count:16];
            }

            while (v575);
          }
        }

        v569 = [v567 countByEnumeratingWithState:&v837 objects:v836 count:16];
      }

      while (v569);
    }

    [*(v762 + 56) setDeferredPreparePriority:4];
    goto LABEL_964;
  }

  [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
LABEL_964:
  result = v1056[0];
  if (!v1056[0])
  {
    if (v1055)
    {
      return [v1055 code];
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCapturePhotonicEngineSinkPipeline;
  [(FigCaptureSinkPipeline *)&v3 dealloc];
}

void *__396__FigCapturePhotonicEngineSinkPipeline__buildStillImageSinkPipelineWithConfiguration_captureDevice_sourceOutputsByPortType_sourceSensorRawOutputsByPortType_highResStillImageDimensions_supplementalPointCloudCaptureDevice_supplementalPointCloudSourceOutput_captureStatusDelegate_inferenceScheduler_cinematicFramingStatesProvider_smartCropHomographyProvider_multiCamClientCompositingCallback_graph___block_invoke_2(uint64_t a1, CMAttachmentBearerRef target)
{
  v4 = CMGetAttachment(target, @"StillSettings", 0);
  v5 = BWStillImageProcessingFlagsForSampleBuffer(target);
  v6 = BWCIFilterArrayContainsPortraitFilters([objc_msgSend(v4 "requestedSettings")]);
  v7 = ([objc_msgSend(v4 "requestedSettings")] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(v4, "requestedSettings"), "enabledSemanticSegmentationMatteURNs"), "count") != 0;
  v8 = (v5 & 0x1000) == 0;
  v9 = v5 & 0x200000;
  v10 = v8 | v6;
  v11 = (([objc_msgSend(v4 "captureSettings")] & 0x800) == 0) | v10 ^ 1 | (v9 >> 21);
  if (v7 && (v10 & 1) != 0 && !v9)
  {
    if ((v11 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if (*(a1 + 32))
  {
    v13 = &unk_1F2248430;
  }

  else
  {
    v13 = &unk_1F2248448;
  }

  v14 = [MEMORY[0x1E695DFA8] setWithArray:v13];
  v12 = v14;
  if (v11)
  {
    if (v14)
    {
LABEL_15:
      [v12 addObject:&unk_1F2243510];
      return v12;
    }

LABEL_14:
    v12 = [MEMORY[0x1E695DFA8] set];
    goto LABEL_15;
  }

  return v12;
}

BOOL __396__FigCapturePhotonicEngineSinkPipeline__buildStillImageSinkPipelineWithConfiguration_captureDevice_sourceOutputsByPortType_sourceSensorRawOutputsByPortType_highResStillImageDimensions_supplementalPointCloudCaptureDevice_supplementalPointCloudSourceOutput_captureStatusDelegate_inferenceScheduler_cinematicFramingStatesProvider_smartCropHomographyProvider_multiCamClientCompositingCallback_graph___block_invoke_953(int a1, CMAttachmentBearerRef target)
{
  v2 = CMGetAttachment(target, @"StillSettings", 0);
  if (([objc_msgSend(v2 "captureSettings")] & 0x800) == 0)
  {
    return 0;
  }

  if ([objc_msgSend(v2 "captureSettings")] != 1 || (objc_msgSend(objc_msgSend(v2, "captureSettings"), "captureFlags") & 0x80) != 0)
  {
    return [objc_msgSend(v2 "captureSettings")] == 7;
  }

  return 1;
}

uint64_t __396__FigCapturePhotonicEngineSinkPipeline__buildStillImageSinkPipelineWithConfiguration_captureDevice_sourceOutputsByPortType_sourceSensorRawOutputsByPortType_highResStillImageDimensions_supplementalPointCloudCaptureDevice_supplementalPointCloudSourceOutput_captureStatusDelegate_inferenceScheduler_cinematicFramingStatesProvider_smartCropHomographyProvider_multiCamClientCompositingCallback_graph___block_invoke_1112(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v3 + 16);

      return v4();
    }

    else
    {
      return 1;
    }
  }

  return result;
}

unint64_t __396__FigCapturePhotonicEngineSinkPipeline__buildStillImageSinkPipelineWithConfiguration_captureDevice_sourceOutputsByPortType_sourceSensorRawOutputsByPortType_highResStillImageDimensions_supplementalPointCloudCaptureDevice_supplementalPointCloudSourceOutput_captureStatusDelegate_inferenceScheduler_cinematicFramingStatesProvider_smartCropHomographyProvider_multiCamClientCompositingCallback_graph___block_invoke_2_1147(uint64_t a1, CMAttachmentBearerRef target)
{
  v3 = [objc_msgSend(CMGetAttachment(target @"StillSettings"];
  v4 = *(a1 + 32);
  if (!v4)
  {
    return (v3 >> 11) & 1;
  }

  if ((v3 & 0x800) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 16);

  return v6();
}

- (void)connectToSecondaryMultiCameraClientCompositingPipeline:(id)a3
{
  if (a3)
  {
    v3 = *(a3 + 15);
    if (v3)
    {
      multiCamClientCompositingNode = self->_multiCamClientCompositingNode;
      if (multiCamClientCompositingNode)
      {
        v6 = [(BWNode *)multiCamClientCompositingNode graph];
        v7 = [(NSArray *)[(BWNode *)self->_multiCamClientCompositingNode inputs] objectAtIndexedSubscript:1];
        v8 = [(BWNodeConnection *)[(BWNodeInput *)[(BWNode *)self->_multiCamClientCompositingNode input] connection] pipelineStage];

        [(BWGraph *)v6 safelyConnectOutput:v3 toInput:v7 pipelineStage:v8];
      }
    }
  }
}

- (uint64_t)_addScalerNodeWithNodeConfiguration:(int)a3 intermediate:(uint64_t)a4 bravoConstituentPhotoDeliveryEnabled:(uint64_t)a5 mainImageDownscalingFactorByAttachedMediaKey:(int)a6 zoomingDepthSupported:(int)a7 smartStyleReversibilityEnabled:(uint64_t)a8 constantColorConfidenceMapDimensions:(unsigned __int8)a9 filterRenderingEnabled:(unsigned __int8)a10 enforcesZoomingForPortraitCaptures:(unsigned __int8)a11 backPressureDrivenPipelining:(void *)a12 scalerNodeInputOut:(uint64_t *)a13 scalerNodeOutputOut:
{
  if (result)
  {
    v20 = result;
    v39 = 0;
    v21 = [a2 deferredPhotoProcessorEnabled] & a6;
    if (v21 == 1 && (a9 & 1) == 0)
    {
      v21 = [a2 optimizedEnhancedResolutionDepthPipelineEnabled];
    }

    if (v21)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    v23 = v22 + (a6 & ~a3 & a9);
    if ([a2 deferredPhotoProcessorEnabled])
    {
      v23 = (v23 << ([a2 pearlModuleType] != 0));
    }

    v24 = [[BWStillImageScalerNode alloc] initWithBasePoolCapacity:v23 nodeConfiguration:a2];
    v25 = v24;
    if (a3)
    {
      v26 = @"Intermediate Scaler";
    }

    else
    {
      v26 = @"Scaler";
    }

    [(BWNode *)v24 setName:v26];
    [(BWStillImageScalerNode *)v25 setBlackFillingRequired:a4];
    [(BWStillImageScalerNode *)v25 setMainImageDownscalingFactorByAttachedMediaKey:a5];
    [(BWStillImageScalerNode *)v25 setPreferMainImageDownscalingFactorByAttachedMediaKeyFromSampleBuffer:1];
    v27 = [MEMORY[0x1E695DF90] dictionary];
    v28 = MEMORY[0x1E695E118];
    if (a6)
    {
      v37 = 0x1F2173130;
      v38 = MEMORY[0x1E695E118];
      [v27 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v38, &v37, 1), @"Depth"}];
    }

    if (a7)
    {
      v35 = 0x1F2173130;
      v36 = v28;
      [v27 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v36, &v35, 1), 0x1F21AAF70}];
      v33 = 0x1F2173130;
      v34 = v28;
      [v27 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v34, &v33, 1), 0x1F21AAFB0}];
      v40.width = 160.0;
      v40.height = 162.0;
      [v27 setObject:CGSizeCreateDictionaryRepresentation(v40) forKeyedSubscript:0x1F21AAFF0];
      v41.width = 32.0;
      v41.height = 32.0;
      v29 = CGSizeCreateDictionaryRepresentation(v41);
      [v27 setObject:v29 forKeyedSubscript:0x1F21AB010];
      [v27 setObject:v29 forKeyedSubscript:0x1F21AB030];
    }

    if (a8 >= 1 && SHIDWORD(a8) >= 1)
    {
      v42.width = a8;
      v42.height = HIDWORD(a8);
      [v27 setObject:CGSizeCreateDictionaryRepresentation(v42) forKeyedSubscript:0x1F21AB170];
    }

    if ([v27 count])
    {
      [(BWStillImageScalerNode *)v25 setOutputSizeByAttachedMediaKey:v27];
    }

    [(BWStillImageScalerNode *)v25 setEnforcesZoomingForPortraitCaptures:a10];
    [(BWStillImageScalerNode *)v25 setBackPressureDrivenPipelining:a11];
    v32.receiver = v20;
    v32.super_class = FigCapturePhotonicEngineSinkPipeline;
    if (objc_msgSendSuper2(&v32, sel_addNode_error_, v25, &v39))
    {
      if (a12)
      {
        *a12 = [(BWNode *)v25 input];
      }

      if (a13)
      {
        v31 = [(BWNode *)v25 output];
        result = 0;
        *a13 = v31;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      return 4294954510;
    }
  }

  return result;
}

- (uint64_t)_addLandmarksInferenceToNode:(uint64_t)result
{
  if (result)
  {
    v3 = +[BWLandmarksInferenceConfiguration configuration];
    [v3 setMaximumNumberOfFaces:{+[BWLandmarksInferenceConfiguration portraitMaximumNumberOfFaces](BWLandmarksInferenceConfiguration, "portraitMaximumNumberOfFaces")}];
    v4 = [a2 addInferenceOfType:801 version:objc_msgSend(v3 configuration:{"landmarksInferenceVersion") & 0xFFFFFFFFFFFFLL, v3}];
    [a2 setIgnoreInvalidContentInformationForPrimaryMedia:1];
    return v4;
  }

  return result;
}

- (uint64_t)_addMattingInferenceToNode:(uint64_t)a3 mattingVersion:(int)a4 learnedMattingEnabled:(uint64_t)a5 learnedMattingVersion:(uint64_t)a6 mainImageDownscalingFactor:(unsigned int)a7 targetAspectRatio:(uint64_t)a8 appliesFinalCropRect:(float)a9 enabledSemantics:(float)a10 metalCommandQueue:(uint64_t)a11 mattingSensorConfigurationsByPortType:(char)a12 clientIsCameraOrDerivative:(unsigned int)a13 requiredAdditionalInferenceOutputBuffers:
{
  if (!a1)
  {
    return 0;
  }

  if (a3 == 1)
  {
    FigCaptureGetFrameworkRadarComponent();
    v18 = OUTLINED_FUNCTION_3_33();
    if (OUTLINED_FUNCTION_11_20(v18))
    {
      v19 = v13;
    }

    else
    {
      v19 = v13 & 0xFFFFFFFE;
    }

    if (v19)
    {
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_6_28();
    }

    OUTLINED_FUNCTION_2_43();
    OUTLINED_FUNCTION_9_17();
    v38 = OUTLINED_FUNCTION_6_0();
    v39 = OUTLINED_FUNCTION_8_9();
    v46 = 4176;
    goto LABEL_28;
  }

  if (!a3)
  {
    FigCaptureGetFrameworkRadarComponent();
    v16 = OUTLINED_FUNCTION_3_33();
    if (OUTLINED_FUNCTION_11_20(v16))
    {
      v17 = v13;
    }

    else
    {
      v17 = v13 & 0xFFFFFFFE;
    }

    if (v17)
    {
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_6_28();
    }

    OUTLINED_FUNCTION_2_43();
    OUTLINED_FUNCTION_9_17();
    v38 = OUTLINED_FUNCTION_6_0();
    v39 = OUTLINED_FUNCTION_8_9();
    v46 = 4170;
LABEL_28:
    FigCapturePleaseFileRadar(v39, v40, v41, v42, v43, v46, v44, v45, 0);
    free(v38);
    v34 = 4294935514;
    goto LABEL_29;
  }

  if (a7)
  {
    v25 = a4;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = 2;
  }

  v27 = a7 & 0x78 | (4 * ((a7 >> 1) & 1)) | v26;
  if (v27)
  {
    v30 = [(BWInferenceConfiguration *)[BWMattingV2InferenceConfiguration alloc] initWithInferenceType:201];
    [(BWMattingV2InferenceConfiguration *)v30 setSensorConfigurationsByPortType:a11];
    [(BWMattingV2InferenceConfiguration *)v30 setEnabledMattes:v27];
    [(BWMattingV2InferenceConfiguration *)v30 setTuningConfiguration:2];
    [(BWInferenceConfiguration *)v30 setPriority:*(a1 + 52)];
    *&v31 = a9;
    [(BWMattingV2InferenceConfiguration *)v30 setMainImageDownscalingFactor:v31];
    *&v32 = a10;
    [(BWMattingV2InferenceConfiguration *)v30 setTargetAspectRatio:v32];
    [(BWMattingV2InferenceConfiguration *)v30 setAppliesFinalCropRect:a6];
    [(BWMattingV2InferenceConfiguration *)v30 setMetalCommandQueue:a8];
    v33 = [a2 addInferenceOfType:201 version:BWInferenceVersionMakeMajor(a3) & 0xFFFFFFFFFFFFLL configuration:v30];
    if (v33)
    {
      return v33;
    }
  }

  if (a4)
  {
    v35 = [(BWInferenceConfiguration *)[BWLearnedMattingInferenceConfiguration alloc] initWithInferenceType:107];
    [(BWTiledEspressoInferenceConfiguration *)v35 setMetalCommandQueue:0];
    *&v36 = a9;
    [(BWLearnedMattingInferenceConfiguration *)v35 setMainImageDownscalingFactor:v36];
    *&v37 = a10;
    [(BWLearnedMattingInferenceConfiguration *)v35 setTargetAspectRatio:v37];
    [(BWLearnedMattingInferenceConfiguration *)v35 setAppliesFinalCropRect:a6];
    v34 = [a2 addInferenceOfType:107 version:BWInferenceVersionMakeMajor(a5) & 0xFFFFFFFFFFFFLL configuration:v35];
    if (v34)
    {
      return v34;
    }
  }

  else
  {
    v34 = 0;
  }

LABEL_29:
  if ((a12 & 1) == 0)
  {
    [a2 setAwaitAsynchronousOutputs:1];
  }

  if (a13)
  {
    [a2 setAdditionalOutputPoolRetainedBufferCount:a13];
  }

  return v34;
}

- (uint64_t)_buildScaleAndEncodeSubPipelineWithPipelineStage:(uint64_t)a1 graph:(uint64_t)a2 nodeConfiguration:(void *)a3 stillImageSinkPipelineWithConfiguration:(void *)a4 sensorConfigurationsByPortType:(void *)a5 supportsScaling:(uint64_t)a6 deferredPearlDepthProcessingEnabled:(int)a7 provideMeteorHeadroom:(int)a8 provideFlexGTC:(char)a9 providePostEncodeInferences:(char)a10 semanticDevelopmentVersion:(char)a11 constituentPhotoDeliveryEnabled:(unsigned int)a12 demosaicedRawEnabled:(unsigned __int8)a13 nonPropagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)a14 propagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)a15 scalingMainImageDownscalingFactorByAttachedMediaKey:(uint64_t)a16 inferenceScheduler:(uint64_t)a17 subPipelineInputOut:(uint64_t)a18 subPipelineOutputOut:(uint64_t)a19 cameraSupportsFlash:(unsigned __int8)a20 cinematicFramingStatesProvider:(void *)a21 smartCropHomographyProvider:(void *)a22 multiCamClientCompositingCallback:(uint64_t)a23 photoEncoderControllerOut:(void *)a24
{
  v154 = a4;
  v157 = a3;
  v159 = a2;
  if (!a1)
  {
    return 0;
  }

  v214[0] = 0;
  if (!a18 || !a19)
  {
    return FigSignalErrorAtGM();
  }

  v28 = a1;
  LODWORD(v149) = a7;
  v144 = a19;
  [a5 sinkConfiguration];
  objc_opt_class();
  v152 = a18;
  if (objc_opt_isKindOfClass())
  {
    v145 = [a5 sinkConfiguration];
  }

  else
  {
    v145 = 0;
  }

  v29 = &selRef__waitForPreviewGenerationGroupToComplete;
  LODWORD(v141) = a8;
  if ([a5 cinematicFramingWarpingRequired])
  {
    v30 = v28;
    v31 = [BWCinematicFramingWarpingNode alloc];
    v32 = [a5 cinematicFramingWarpingOutputDimensions];
    v33 = [a5 maxLossyCompressionLevel];
    v34 = v31;
    v28 = v30;
    v35 = [(BWCinematicFramingWarpingNode *)v34 initWithFramingStatesProvider:a21 outputDimensions:v32 maxLossyCompressionLevel:v33];
    [v35 setName:@"CinematicFramingWarper"];
    v213.receiver = v30;
    v213.super_class = FigCapturePhotonicEngineSinkPipeline;
    if (!objc_msgSendSuper2(&v213, sel_addNode_error_, v35, v214))
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_104;
    }

    v36 = [v35 input];
    v37 = [v35 output];
  }

  else
  {
    v37 = 0;
    v36 = 0;
  }

  v161 = a5;
  v147 = v24;
  if ([a5 smartCropWarpingRequired])
  {
    v138 = a6;
    v38 = -[BWSmartCropWarpingNode initWithHomographyProvider:aspectRatio:formatDimensions:maxLossyCompressionLevel:]([BWSmartCropWarpingNode alloc], a22, [a5 aspectRatio], objc_msgSend(a5, "smartCropWarpingOutputDimensions"), objc_msgSend(a5, "maxLossyCompressionLevel"));
    [v38 setName:@"SmartCrop Warper"];
    v212.receiver = v28;
    v212.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v212, sel_addNode_error_, v38, v214) & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_104;
    }

    if (v37)
    {
      v39 = [v38 input];
      v47 = OUTLINED_FUNCTION_4_33(v39, v40, v41, v42, v43, v44, v45, v46, v132, v134, v136, v138, v141, a19, v145, v24, v149, a18, v154, v157, v159);
      if (v47)
      {
        v129 = v47;
        OUTLINED_FUNCTION_1_5();
        goto LABEL_109;
      }
    }

    if (!v36)
    {
      v36 = [v38 input];
    }

    v37 = [v38 output];

    *(v28 + 128) = v38;
    a6 = v138;
  }

  if (v149)
  {
    v210 = 0;
    v211 = 0;
    v131 = -[FigCapturePhotonicEngineSinkPipeline _addScalerNodeWithNodeConfiguration:intermediate:bravoConstituentPhotoDeliveryEnabled:mainImageDownscalingFactorByAttachedMediaKey:zoomingDepthSupported:smartStyleReversibilityEnabled:constantColorConfidenceMapDimensions:filterRenderingEnabled:enforcesZoomingForPortraitCaptures:backPressureDrivenPipelining:scalerNodeInputOut:scalerNodeOutputOut:](v28, v154, 0, a13, a16, [a5 continuousZoomWithDepthSupported] | v141, objc_msgSend(a5, "smartStyleReversibilityEnabled"), objc_msgSend(a5, "constantColorConfidenceMapDimensions"), objc_msgSend(v145, "filterRenderingEnabled"), 0, 0, &v211, &v210);
    if (v131 || v37 && (v131 = [v157 safelyConnectOutput:v37 toInput:v211 pipelineStage:v159], v131))
    {
      v129 = v131;
      OUTLINED_FUNCTION_1_5();
      goto LABEL_109;
    }

    v37 = v210;
    if (!v36)
    {
      v36 = v211;
    }

    v29 = &selRef__waitForPreviewGenerationGroupToComplete;
  }

  if (a9)
  {
    v48 = [[BWMeteorHeadroomNode alloc] initWithNodeConfiguration:v154 sensorConfigurationsByPortType:a6];
    [(BWNode *)v48 setName:@"Meteor Headroom"];
    -[BWMeteorHeadroomNode setHeadroomProcessingType:](v48, "setHeadroomProcessingType:", [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters meteorHeadroomProcessingType]);
    [a5 gainMapMainImageDownscalingFactor];
    [(BWMeteorHeadroomNode *)v48 setGainMapMainImageDownscalingFactor:?];
    v209.receiver = v28;
    v209.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v209, v29[148], v48, v214) & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_104;
    }

    if (v37)
    {
      v49 = [(BWNode *)v48 input];
      v57 = OUTLINED_FUNCTION_4_33(v49, v50, v51, v52, v53, v54, v55, v56, v132, v134, v136, v138, v141, v144, v145, v147, v149, v152, v154, v157, v159);
      if (v57)
      {
        v129 = v57;
        OUTLINED_FUNCTION_1_5();
        goto LABEL_109;
      }
    }

    if (!v36)
    {
      v36 = [(BWNode *)v48 input];
    }

    v37 = [(BWNode *)v48 output];
  }

  if (a10)
  {
    v58 = [objc_msgSend(MEMORY[0x1E6991778] "metalDevice")];
    if (![a5 stillImageSinkPipelineProcessingMode])
    {
      [a5 pipelineStagePriority];
      v59 = FigDispatchQueueCreateWithPriority();
      [v58 setSubmissionQueue:v59];
      [v58 setCompletionQueue:v59];
    }

    v60 = [[BWFlexGTCNode alloc] initWithNodeConfiguration:v154 sensorConfigurationsByPortType:a6 metalCommandQueue:v58];
    [(BWNode *)v60 setName:@"FlexGTC"];
    v208.receiver = v28;
    v208.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v208, v29[148], v60, v214) & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_104;
    }

    if (v37)
    {
      v61 = [(BWNode *)v60 input];
      v69 = OUTLINED_FUNCTION_4_33(v61, v62, v63, v64, v65, v66, v67, v68, v132, v134, v136, v138, v141, v144, v145, v147, v149, v152, v154, v157, v159);
      if (v69)
      {
        v129 = v69;
        OUTLINED_FUNCTION_1_5();
        goto LABEL_109;
      }
    }

    if (!v36)
    {
      v36 = [(BWNode *)v60 input];
    }

    v37 = [(BWNode *)v60 output];
  }

  if (a23)
  {
    v70 = [BWMultiCamClientCompositingNode alloc];
    [a5 gainMapMainImageDownscalingFactor];
    v72 = [(BWMultiCamClientCompositingNode *)v70 initWithIndexOfInputProvidingOutputSampleBuffer:0 compositingStrategy:1 gainMapSupported:v71 != 0.0 clientCompositingCallback:a23];
    *(v28 + 112) = v72;
    v207.receiver = v28;
    v207.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v207, v29[148], v72, v214) & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_104;
    }

    v73 = [*(v28 + 112) input];
    v81 = OUTLINED_FUNCTION_4_33(v73, v74, v75, v76, v77, v78, v79, v80, v132, v134, v136, v138, v141, v144, v145, v147, v149, v152, v154, v157, v159);
    v82 = v152;
    if (v81)
    {
      v129 = v81;
      OUTLINED_FUNCTION_1_5();
      goto LABEL_109;
    }

    v37 = [*(v28 + 112) output];
    [*(v28 + 112) setName:@"Still Image Client Compositing"];
  }

  else
  {
    v82 = v152;
  }

  if (*(v28 + 104) == 1)
  {
    v139 = v37;
    v142 = v36;
    v150 = v28;
    if ([v145 previewQualityAdjustedPhotoFilterRenderingEnabled])
    {
      v84 = 2;
    }

    else
    {
      v84 = 0;
    }

    v85 = [BWPhotoEncoderNode alloc];
    if (!a11)
    {
      a17 = 0;
    }

    v86 = [v161 stillImageSinkPipelineProcessingMode] == 1;
    BYTE1(v132) = [v161 clientIsCameraOrDerivative];
    LOBYTE(v132) = v86;
    v87 = v84;
    v88 = v161;
    v89 = [BWPhotoEncoderNode initWithNodeConfiguration:v85 sensorConfigurationsByPortType:"initWithNodeConfiguration:sensorConfigurationsByPortType:semanticDevelopmentVersion:inferenceScheduler:alwaysAwaitInference:portraitRenderQuality:deferredPhotoProcessorEnabled:clientIsCameraOrDerivative:" semanticDevelopmentVersion:v154 inferenceScheduler:a6 alwaysAwaitInference:a12 portraitRenderQuality:a17 deferredPhotoProcessorEnabled:a12 > 0 clientIsCameraOrDerivative:v87];
    [(BWNode *)v89 setName:@"Encoder"];
    [(BWPhotoEncoderNode *)v89 setCameraSupportsFlash:a20];
    v155 = v89;
    -[BWPhotoEncoderNode setUsesHighEncodingPriority:](v89, "setUsesHighEncodingPriority:", [v161 usesHighEncodingPriority]);
    v90 = [MEMORY[0x1E695DF90] dictionary];
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    v91 = OUTLINED_FUNCTION_10_17();
    if (v91)
    {
      v99 = v91;
      v100 = *v204;
      do
      {
        v101 = 0;
        do
        {
          if (*v204 != v100)
          {
            objc_enumerationMutation(a14);
          }

          v102 = *(*(&v203 + 1) + 8 * v101);
          v103 = [BWPhotoEncoderNodeAttachedMediaConfiguration alloc];
          [objc_msgSend(a14 objectForKeyedSubscript:{v102), "floatValue"}];
          [v90 setObject:-[BWPhotoEncoderNodeAttachedMediaConfiguration initWithMainImageDownscalingFactor:propagationMode:](v103 forKeyedSubscript:{"initWithMainImageDownscalingFactor:propagationMode:", 1), v102}];
          ++v101;
        }

        while (v99 != v101);
        v91 = OUTLINED_FUNCTION_10_17();
        v99 = v91;
      }

      while (v91);
    }

    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    v104 = OUTLINED_FUNCTION_12_19(v91, v92, v93, v94, v95, v96, v97, v98, v132, v134, v136, v139, v142, v144, v145, v147, v150, v152, v155, v157, v159, v161, v163.receiver, v163.super_class, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, *(&v180 + 1), v181, *(&v181 + 1), v182, *(&v182 + 1), v183, *(&v183 + 1), v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198);
    if (v104)
    {
      v105 = v104;
      v106 = *v200;
      while (2)
      {
        for (i = 0; i != v105; ++i)
        {
          if (*v200 != v106)
          {
            objc_enumerationMutation(a15);
          }

          v108 = *(*(&v199 + 1) + 8 * i);
          v109 = [v90 objectForKeyedSubscript:v108];
          if (v109)
          {
            v110 = v109;
            [v109 mainImageDownscalingFactor];
            v112 = v111;
            [objc_msgSend(a15 objectForKeyedSubscript:{v108), "floatValue"}];
            if (v112 != v113)
            {
              return 4294954516;
            }

            v114 = [v110 setPropagationMode:2];
          }

          else
          {
            v122 = [BWPhotoEncoderNodeAttachedMediaConfiguration alloc];
            [objc_msgSend(a15 objectForKeyedSubscript:{v108), "floatValue"}];
            v114 = [v90 setObject:-[BWPhotoEncoderNodeAttachedMediaConfiguration initWithMainImageDownscalingFactor:propagationMode:](v122 forKeyedSubscript:{"initWithMainImageDownscalingFactor:propagationMode:", 0), v108}];
          }
        }

        v105 = OUTLINED_FUNCTION_12_19(v114, v115, v116, v117, v118, v119, v120, v121, v133, v135, v137, v140, v143, v144, v146, v148, v151, v153, v156, v158, v160, v162, v163.receiver, v163.super_class, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, *(&v180 + 1), v181, *(&v181 + 1), v182, *(&v182 + 1), v183, *(&v183 + 1), v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198);
        if (v105)
        {
          continue;
        }

        break;
      }
    }

    [v156 setSmartStyleRenderingVersion:{objc_msgSend(v88, "smartStyleRenderingVersion")}];
    [v156 setSmartStyleReversibilityEnabled:{objc_msgSend(v88, "smartStyleReversibilityEnabled")}];
    v28 = v151;
    v36 = v143;
    if ([v88 smartStyleReversibilityEnabled])
    {
      [v90 setObject:-[BWPhotoEncoderNodeAttachedMediaConfiguration initWithKeepInputDimensions:propagationMode:]([BWPhotoEncoderNodeAttachedMediaConfiguration alloc] forKeyedSubscript:{"initWithKeepInputDimensions:propagationMode:", 1, 1), 0x1F21AAF70}];
      [v90 setObject:-[BWPhotoEncoderNodeAttachedMediaConfiguration initWithKeepInputDimensions:propagationMode:]([BWPhotoEncoderNodeAttachedMediaConfiguration alloc] forKeyedSubscript:{"initWithKeepInputDimensions:propagationMode:", 1, 1), 0x1F21AAFB0}];
      v182 = 0u;
      v183 = 0u;
      v180 = 0u;
      v181 = 0u;
      v123 = BWSemanticSegmentationMatteAttachedMediaKeysSupportedByDemosaicedRaw();
      v124 = [v123 countByEnumeratingWithState:&v180 objects:&v164 count:16];
      if (v124)
      {
        v125 = v124;
        v126 = *v181;
        do
        {
          for (j = 0; j != v125; ++j)
          {
            if (*v181 != v126)
            {
              objc_enumerationMutation(v123);
            }

            [objc_msgSend(v90 objectForKeyedSubscript:{*(*(&v180 + 1) + 8 * j)), "setPropagationMode:", 2}];
          }

          v125 = [v123 countByEnumeratingWithState:&v180 objects:&v164 count:16];
        }

        while (v125);
      }
    }

    if ([v88 constantColorVersion] >= 1)
    {
      [v90 setObject:-[BWPhotoEncoderNodeAttachedMediaConfiguration initWithDimensions:propagationMode:]([BWPhotoEncoderNodeAttachedMediaConfiguration alloc] forKeyedSubscript:{"initWithDimensions:propagationMode:", objc_msgSend(v88, "constantColorConfidenceMapDimensions"), 2), 0x1F21AB170}];
    }

    if ([v90 count])
    {
      [v156 setAttachedMediaConfigurationByAttachedMediaKey:v90];
    }

    [v156 setPreferMainImageDownscalingFactorByAttachedMediaKeyFromSampleBuffer:1];
    v163.receiver = v151;
    v163.super_class = FigCapturePhotonicEngineSinkPipeline;
    if (objc_msgSendSuper2(&v163, sel_addNode_error_, v156, v214))
    {
      if (!v140 || (v128 = [v158 safelyConnectOutput:v140 toInput:objc_msgSend(v156 pipelineStage:{"input"), v160}], !v128))
      {
        if (!v143)
        {
          v36 = [v156 input];
        }

        v37 = [v156 output];
        v82 = v153;
        if (a24)
        {
          *a24 = [v156 photoEncoderController];
        }

        goto LABEL_83;
      }

      v129 = v128;
      OUTLINED_FUNCTION_1_5();
LABEL_109:
      FigDebugAssert3();
      return v129;
    }

    OUTLINED_FUNCTION_0();
LABEL_104:
    FigDebugAssert3();
    return 4294954510;
  }

LABEL_83:
  if ((*(v28 + 104) & 1) == 0)
  {
    *(v28 + 120) = v37;
  }

  v129 = 4294954516;
  if (v36 && v37)
  {
    v129 = 0;
    *v82 = v36;
    *v144 = v37;
  }

  return v129;
}

- (void)initWithConfiguration:(uint64_t)a1 captureDevice:(void *)a2 sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:isPrimaryStillImagePipeline:graph:name:.cold.1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_1_5();
  FigDebugAssert3();
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:(_DWORD *)a1 captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:.cold.37(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  result = FigDebugAssert3();
  *a1 = -12786;
  return result;
}

@end