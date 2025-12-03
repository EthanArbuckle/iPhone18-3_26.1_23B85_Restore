@interface FigCaptureStillImageUnifiedBracketingSinkPipeline
+ (void)initialize;
- (FigCaptureStillImageUnifiedBracketingSinkPipeline)initWithConfiguration:(id)configuration captureDevice:(id)device sourceOutputsByPortType:(id)type highResStillImageDimensions:(id)dimensions supplementalPointCloudCaptureDevice:(id)captureDevice supplementalPointCloudSourceOutput:(id)output captureStatusDelegate:(id)delegate inferenceScheduler:(id)self0 cinematicFramingStatesProvider:(id)self1 graph:(id)self2 name:(id)self3;
- (uint64_t)_addLandmarksInferenceToNode:(uint64_t)result;
- (uint64_t)_addMattingInferenceToNode:(unsigned int)node mattingVersion:(uint64_t)version refinedDepthEnabled:(unsigned int)enabled mainImageDownscalingFactor:(uint64_t)factor enabledSemantics:(void *)semantics metalCommandQueue:(char)queue mattingsensorConfigurationsByPortType:(float)type clientIsCameraOrDerivative:(float)self0 requiredAdditionalInferenceOutputBuffers:(unsigned int)self1 zoomFactorForPortrait:;
- (uint64_t)_buildRedEyeReductionSubPipelineWithName:(uint64_t)name pipelineStage:(uint64_t)stage graph:(uint64_t)graph sensorConfigurationsByPortType:(uint64_t)type inferenceScheduler:(uint64_t *)scheduler subPipelineInputOut:(uint64_t *)out subPipelineOutputOut:;
- (uint64_t)_buildScaleAndEncodeSubPipelineWithPipelineStage:(uint64_t)result graph:(uint64_t)graph nodeConfiguration:(void *)configuration stillImageSinkPipelineWithConfiguration:(uint64_t)withConfiguration sensorConfigurationsByPortType:(void *)type supportsScaling:(uint64_t)scaling provideMeteorHeadroom:(int)headroom providePostEncodeInferences:(int)inferences semanticDevelopmentVersion:(char)version constituentPhotoDeliveryEnabled:(unsigned int)self0 demosaicedRawEnabled:(unsigned __int8)self1 nonPropagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)self2 propagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)self3 inferenceScheduler:(uint64_t)self4 subPipelineInputOut:(uint64_t)self5 subPipelineOutputOut:(uint64_t)self6 cameraSupportsFlash:(unsigned __int8)self7 cinematicFramingStatesProvider:(void *)self8;
- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:(uint64_t)configuration captureDevice:(uint64_t)device sourceOutputsByPortType:(uint64_t)type highResStillImageDimensions:(uint64_t)dimensions supplementalPointCloudCaptureDevice:(uint64_t)captureDevice supplementalPointCloudSourceOutput:(uint64_t)output captureStatusDelegate:(uint64_t)delegate inferenceScheduler:(void *)self0 cinematicFramingStatesProvider:(void *)self1 graph:;
- (void)dealloc;
@end

@implementation FigCaptureStillImageUnifiedBracketingSinkPipeline

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (FigCaptureStillImageUnifiedBracketingSinkPipeline)initWithConfiguration:(id)configuration captureDevice:(id)device sourceOutputsByPortType:(id)type highResStillImageDimensions:(id)dimensions supplementalPointCloudCaptureDevice:(id)captureDevice supplementalPointCloudSourceOutput:(id)output captureStatusDelegate:(id)delegate inferenceScheduler:(id)self0 cinematicFramingStatesProvider:(id)self1 graph:(id)self2 name:(id)self3
{
  v23.receiver = self;
  v23.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
  v19 = -[FigCaptureSinkPipeline initWithGraph:name:sinkID:](&v23, sel_initWithGraph_name_sinkID_, graph, name, [objc_msgSend(configuration "sinkConfiguration")]);
  v20 = v19;
  if (v19)
  {
    v22 = [(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v19 _buildStillImageSinkPipelineWithConfiguration:configuration captureDevice:device sourceOutputsByPortType:type highResStillImageDimensions:dimensions supplementalPointCloudCaptureDevice:captureDevice supplementalPointCloudSourceOutput:output captureStatusDelegate:delegate inferenceScheduler:scheduler cinematicFramingStatesProvider:provider graph:graph];
    if (v22)
    {
      [FigCaptureStillImageUnifiedBracketingSinkPipeline initWithConfiguration:v22 captureDevice:v20 sourceOutputsByPortType:? highResStillImageDimensions:? supplementalPointCloudCaptureDevice:? supplementalPointCloudSourceOutput:? captureStatusDelegate:? inferenceScheduler:? cinematicFramingStatesProvider:? graph:? name:?];
      return 0;
    }
  }

  return v20;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
  [(FigCaptureSinkPipeline *)&v3 dealloc];
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:(uint64_t)configuration captureDevice:(uint64_t)device sourceOutputsByPortType:(uint64_t)type highResStillImageDimensions:(uint64_t)dimensions supplementalPointCloudCaptureDevice:(uint64_t)captureDevice supplementalPointCloudSourceOutput:(uint64_t)output captureStatusDelegate:(uint64_t)delegate inferenceScheduler:(void *)self0 cinematicFramingStatesProvider:(void *)self1 graph:
{
  result = MEMORY[0x1EEE9AC00](self);
  v559 = v17;
  v561 = v18;
  if (!result)
  {
    return result;
  }

  v19 = v16;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v12;
  v24 = result;
  v743[0] = 0;
  v742 = 0;
  sinkConfiguration = [v12 sinkConfiguration];
  objc_opt_class();
  sinkConfiguration2 = 0;
  if (objc_opt_isKindOfClass())
  {
    sinkConfiguration2 = [v23 sinkConfiguration];
  }

  if ([sinkConfiguration2 depthDataDeliveryEnabled] && objc_msgSend(v23, "deviceType") == 9)
  {
    goto LABEL_696;
  }

  v525 = v21;
  obj = v22;
  *(v24 + 48) = [v23 pipelineStagePriority];
  *(v24 + 52) = [v23 inferencePriority];
  v27 = objc_alloc_init(BWStillImageNodeConfiguration);
  [OUTLINED_FUNCTION_25_0() stillImageSinkPipelineProcessingMode];
  [OUTLINED_FUNCTION_7() setStillImageProcessingMode:?];
  v28 = [objc_msgSend(MEMORY[0x1E6991778] "metalDevice")];
  [OUTLINED_FUNCTION_7() setMetalCommandQueue:?];
  [v23 pipelineStagePriority];
  FigDispatchQueueCreateWithPriority();
  [objc_msgSend(OUTLINED_FUNCTION_49_8() "metalCommandQueue")];
  dispatch_release(sinkConfiguration);
  v29 = v22;
  [v22 setFigThreadPriority:*(v24 + 48)];
  [v23 depthDataType];
  [OUTLINED_FUNCTION_7() setDepthDataType:?];
  [v23 pearlModuleType];
  [OUTLINED_FUNCTION_7() setPearlModuleType:?];
  [v22 setInferenceScheduler:delegate];
  v565 = v22;
  [v22 setMaxLossyCompressionLevel:{objc_msgSend(v23, "maxLossyCompressionLevel")}];
  v30 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v22];
  v31 = 0;
  depthDataType = [v23 depthDataType];
  if (depthDataType == 7)
  {
    v32 = *off_1E798A0C8;
    v33 = [v29 objectForKeyedSubscript:*off_1E798A0C8];
    v740 = v32;
    v741 = v33;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v741 forKeys:&v740 count:1];
    [v30 setObject:0 forKeyedSubscript:v32];
  }

  v582 = v30;
  allKeys = [v30 allKeys];
  v35 = v29;
  v36 = allKeys;
  allKeys2 = [v35 allKeys];
  v511 = v31;
  v523 = v19;
  if ([v35 count] >= 2)
  {
    switch([v23 deviceType])
    {
      case 4u:
        firstObject = *off_1E798A0C0;
        v739 = *off_1E798A0D8;
        v39 = MEMORY[0x1E695DEC8];
        v40 = &v739;
        goto LABEL_14;
      case 6u:
        firstObject = *off_1E798A0E0;
        v579 = *off_1E798A0E8;
        v738 = *off_1E798A0E8;
        v43 = MEMORY[0x1E695DEC8];
        v44 = &v738;
        goto LABEL_20;
      case 8u:
        firstObject = *off_1E798A0D0;
        v736 = *off_1E798A0C0;
        v39 = MEMORY[0x1E695DEC8];
        v40 = &v736;
LABEL_14:
        v42 = 1;
        goto LABEL_18;
      case 9u:
        firstObject = *off_1E798A0C0;
        v45 = *off_1E798A0D8;
        v735[0] = *off_1E798A0D0;
        v735[1] = v45;
        v39 = MEMORY[0x1E695DEC8];
        v40 = v735;
        v42 = 2;
LABEL_18:
        v41 = [v39 arrayWithObjects:v40 count:v42];
        v579 = 0;
        v573 = v41;
        goto LABEL_21;
      case 0xCu:
        firstObject = *off_1E798A0F8;
        v579 = *off_1E798A0E8;
        v737 = *off_1E798A0E8;
        v43 = MEMORY[0x1E695DEC8];
        v44 = &v737;
        goto LABEL_20;
      case 0xDu:
        firstObject = *off_1E798A0C0;
        v579 = *off_1E798A0C8;
        v734 = *off_1E798A0C8;
        v43 = MEMORY[0x1E695DEC8];
        v44 = &v734;
LABEL_20:
        v573 = [v43 arrayWithObjects:v44 count:1];
        v41 = 0;
LABEL_21:
        v46 = [MEMORY[0x1E695DFD8] setWithArray:allKeys2];
        v47 = [MEMORY[0x1E695DFA8] set];
        v31 = v47;
        if (firstObject)
        {
          [v47 addObject:firstObject];
        }

        if (v41)
        {
          [v31 addObjectsFromArray:v41];
        }

        if (v579)
        {
          [v31 addObject:?];
        }

        if ([v46 isEqualToSet:v31])
        {
          goto LABEL_28;
        }

        goto LABEL_696;
      default:
        goto LABEL_696;
    }
  }

  firstObject = [(BWStillImageConditionalRouterNode *)v36 firstObject];
  v733 = firstObject;
  v573 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v733 count:1];
  if (!firstObject)
  {
    goto LABEL_696;
  }

  v579 = 0;
  v41 = 0;
LABEL_28:
  v528 = v20;
  v587 = v41;
  v556 = firstObject;
  v564 = v36;
  v509 = allKeys2;
  v566 = sinkConfiguration2;
  v589 = v24;
  +[FigCaptureCameraParameters sharedInstance];
  sensorIDStringsByPortType = [OUTLINED_FUNCTION_25_0() sensorIDStringsByPortType];
  cameraInfoByPortType = [v23 cameraInfoByPortType];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  outputStillImageDimensions = [v23 outputStillImageDimensions];
  v51 = outputStillImageDimensions > 0 && SHIDWORD(outputStillImageDimensions) > 0;
  v602 = v51;
  gdcInDCProcessorOutputCropDimensions = [v23 gdcInDCProcessorOutputCropDimensions];
  v729 = 0u;
  v730 = 0u;
  v54 = gdcInDCProcessorOutputCropDimensions > 0 && SHIDWORD(gdcInDCProcessorOutputCropDimensions) > 0;
  v567 = v54;
  v731 = 0uLL;
  v732 = 0uLL;
  v55 = OUTLINED_FUNCTION_28_10();
  v600 = v31;
  if (v55)
  {
    v56 = v55;
    v599 = 0;
    v57 = 0;
    v58 = *v730;
    v606 = *off_1E798A0E8;
    v594 = *off_1E798A0C8;
    do
    {
      v59 = 0;
      do
      {
        if (*v730 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v60 = *(*(&v729 + 1) + 8 * v59);
        v61 = [sensorIDStringsByPortType objectForKeyedSubscript:v60];
        [dictionary setObject:-[BWSensorConfiguration initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:]([BWSensorConfiguration alloc] forKeyedSubscript:{"initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:", v60, v61, objc_msgSend(v31, "sensorIDDictionaryForPortType:sensorIDString:", v60, v61), objc_msgSend(cameraInfoByPortType, "objectForKeyedSubscript:", v60)), v60}];
        if (v602)
        {
          v31 = v600;
          if (([v60 isEqualToString:v606] & 1) == 0 && (objc_msgSend(v60, "isEqualToString:", v594) & 1) == 0)
          {
            v62 = [objc_msgSend(obj objectForKeyedSubscript:{v60), "formatRequirements"}];
            width = [v62 width];
            v64 = width;
            if (v57 < 1 || v599 <= 0)
            {
              height = [v62 height];
              v599 = height;
              v67 = v64 < 1 || height <= 0;
              v57 = v64;
              if (v67)
              {
                goto LABEL_644;
              }
            }

            else if (v57 != width || v599 != [v62 height])
            {
              goto LABEL_644;
            }
          }
        }

        else
        {
          v31 = v600;
        }

        ++v59;
      }

      while (v56 != v59);
      v68 = OUTLINED_FUNCTION_28_10();
      v56 = v68;
    }

    while (v68);
  }

  else
  {
    v599 = 0;
    v57 = 0;
  }

  v595 = v57;
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v725 = 0u;
  v726 = 0u;
  v727 = 0u;
  v728 = 0u;
  OUTLINED_FUNCTION_39_11();
  v70 = dictionary;
  v75 = OUTLINED_FUNCTION_37_2(v71, v72, v73, v74);
  v76 = v589;
  if (v75)
  {
    v77 = v75;
    do
    {
      for (i = 0; i != v77; ++i)
      {
        OUTLINED_FUNCTION_42();
        if (!v106)
        {
          objc_enumerationMutation(dictionary);
        }

        v79 = *(*(&v725 + 1) + 8 * i);
        if ([v573 containsObject:v79])
        {
          [dictionary2 setObject:objc_msgSend(dictionary forKeyedSubscript:{"objectForKeyedSubscript:", v79), v79}];
        }
      }

      OUTLINED_FUNCTION_39_11();
      v77 = OUTLINED_FUNCTION_37_2(v80, v81, v82, v83);
    }

    while (v77);
  }

  firstObject2 = [v573 firstObject];
  v557 = [dictionary2 objectForKeyedSubscript:?];
  v84 = [v582 objectForKeyedSubscript:v579];
  v551 = [v579 isEqualToString:*off_1E798A0E8];
  v538 = dictionary2;
  v607 = [v23 depthDataType] == 3 && objc_msgSend(v23, "pearlModuleType") == 2;
  v85 = v566;
  bravoConstituentPhotoDeliveryEnabled = [v566 bravoConstituentPhotoDeliveryEnabled];
  deferredProcessingSupported = [v23 deferredProcessingSupported];
  stillImageSinkPipelineProcessingMode = [v23 stillImageSinkPipelineProcessingMode];
  depthDataDeliveryEnabled = [v566 depthDataDeliveryEnabled];
  depthDataType2 = [v23 depthDataType];
  filterRenderingEnabled = [v566 filterRenderingEnabled];
  v89 = 0.0;
  v570 = depthDataDeliveryEnabled;
  if (depthDataDeliveryEnabled)
  {
    [v561 requestedZoomFactorRelativeToPortType:{objc_msgSend(v557, "portType")}];
    v89 = v90;
  }

  if ([v23 highQualityPhotoCaptureForVideoFormatEnabled])
  {
    if ((depthDataDeliveryEnabled | bravoConstituentPhotoDeliveryEnabled))
    {
      stillImageStabilizationSupported = 0;
    }

    else
    {
      stillImageStabilizationSupported = 2;
    }
  }

  else
  {
    stillImageStabilizationSupported = [v23 stillImageStabilizationSupported];
  }

  v521 = stillImageSinkPipelineProcessingMode != 1;
  v574 = stillImageSinkPipelineProcessingMode == 1;
  learnedNRSupported = [v23 learnedNRSupported];
  v546 = stillImageStabilizationSupported == 2;
  deepFusionSupported = [v23 deepFusionSupported];
  v555 = stillImageStabilizationSupported;
  v520 = stillImageStabilizationSupported == 1;
  digitalFlashCaptureEnabled = [v566 digitalFlashCaptureEnabled];
  [v23 depthDataType];
  portraitEffectsMatteDeliveryEnabled = [v566 portraitEffectsMatteDeliveryEnabled];
  v92 = (portraitEffectsMatteDeliveryEnabled & 1) != 0 || [objc_msgSend(v23 "enabledSemanticSegmentationMatteURNs")] != 0;
  if ([v600 personSemanticsVersion])
  {
    personSemanticsVersion = [v600 personSemanticsVersion];
  }

  else
  {
    personSemanticsVersion = 3;
  }

  Major = BWInferenceVersionMakeMajor(personSemanticsVersion);
  v540 = stillImageSinkPipelineProcessingMode;
  v558 = v92;
  if (v92)
  {
    v94 = [(BWInferenceConfiguration *)[BWPersonSemanticsConfiguration alloc] initWithInferenceType:104];
    [(BWInferenceConfiguration *)v94 setPriority:*(v589 + 52)];
    if (portraitEffectsMatteDeliveryEnabled)
    {
      [(BWPersonSemanticsConfiguration *)v94 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v94 enabledSemantics]| 1];
    }

    enabledSemanticSegmentationMatteURNs = [v23 enabledSemanticSegmentationMatteURNs];
    if ([enabledSemanticSegmentationMatteURNs containsObject:*MEMORY[0x1E69917E0]])
    {
      [(BWPersonSemanticsConfiguration *)v94 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v94 enabledSemantics]| 2];
    }

    enabledSemanticSegmentationMatteURNs2 = [v23 enabledSemanticSegmentationMatteURNs];
    if ([enabledSemanticSegmentationMatteURNs2 containsObject:*MEMORY[0x1E69917E8]])
    {
      [(BWPersonSemanticsConfiguration *)v94 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v94 enabledSemantics]| 8];
    }

    enabledSemanticSegmentationMatteURNs3 = [v23 enabledSemanticSegmentationMatteURNs];
    if ([enabledSemanticSegmentationMatteURNs3 containsObject:*MEMORY[0x1E69917F8]])
    {
      [(BWPersonSemanticsConfiguration *)v94 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v94 enabledSemantics]| 0x10];
    }

    supportedSemanticSegmentationMatteURNs = [v23 supportedSemanticSegmentationMatteURNs];
    v99 = *MEMORY[0x1E69917D8];
    if (![supportedSemanticSegmentationMatteURNs containsObject:*MEMORY[0x1E69917D8]])
    {
      goto LABEL_108;
    }

    if ((Major & 0xFFFC) == 0)
    {
      BWInferenceVersionMakeMajor(4);
    }

    if ([objc_msgSend(v23 "enabledSemanticSegmentationMatteURNs")])
    {
      v100 = v94;
      [(BWPersonSemanticsConfiguration *)v94 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v94 enabledSemantics]| 0x20];
    }

    else
    {
LABEL_108:
      v100 = v94;
    }

    v92 = v558;
  }

  else
  {
    v100 = 0;
  }

  v541 = depthDataDeliveryEnabled & filterRenderingEnabled;
  v507 = v100;
  if (depthDataDeliveryEnabled)
  {
    [v557 portType];
    [OUTLINED_FUNCTION_49_8() sensorIDString];
    v101 = OUTLINED_FUNCTION_6_44();
    *&v102 = v89;
    v103 = [v101 sdofRenderingVersionForPortType:v100 sensorIDString:v102 zoomFactor:?];
  }

  else
  {
    v103 = 0;
  }

  learnedMattingVersion = [v600 learnedMattingVersion];
  v105 = learnedMattingVersion;
  if ((v92 & v570) == 1)
  {
    v106 = learnedMattingVersion <= 0 || depthDataType == 7;
    v107 = !v106;
    v527 = v107 | v541;
  }

  else
  {
    v527 = 0;
  }

  if ([v23 clientIsCameraOrDerivative])
  {
    [v23 stillImageStabilizationSupported];
    OUTLINED_FUNCTION_23_13();
    if (v106)
    {
      v109 = 0;
    }

    else
    {
      v109 = v108;
    }

    v531 = v109;
  }

  else
  {
    v531 = 0;
  }

  if (v587)
  {
    v110 = v570;
  }

  else
  {
    v110 = 0;
  }

  v545 = v110;
  if ([v23 allowsMultipleInflightCaptures])
  {
    v569 = 1;
    if ([v23 responsiveShutterSupported])
    {
      if ([v23 responsiveShutterEnabled])
      {
        v111 = 2;
      }

      else
      {
        v111 = 1;
      }

      v569 = v111;
    }

    if ([v23 clientIsCameraOrDerivative])
    {
      [v23 responsiveShutterSupported];
      OUTLINED_FUNCTION_41_10();
      if (v106)
      {
        v113 = v112;
      }

      else
      {
        v113 = v569;
      }

      v569 = v113;
    }
  }

  else
  {
    v569 = 0;
  }

  v515 = v103;
  redEyeReductionVersion = [v23 redEyeReductionVersion];
  if (redEyeReductionVersion > 0)
  {
    v114 = bravoConstituentPhotoDeliveryEnabled;
  }

  else
  {
    v114 = 0;
  }

  v502 = v114;
  if (!v92)
  {
    v117 = 0;
    goto LABEL_156;
  }

  [v557 portType];
  v115 = [v600 mattingVersionForPortType:v105 sensorIDString:{objc_msgSend(OUTLINED_FUNCTION_49_8(), "sensorIDString")}];
  if (v115)
  {
    v116 = 0;
  }

  else
  {
    v116 = portraitEffectsMatteDeliveryEnabled;
  }

  if (v116 == 1)
  {
    goto LABEL_712;
  }

  v117 = v115;
  if (![objc_msgSend(v23 "enabledSemanticSegmentationMatteURNs")])
  {
    v76 = v589;
    v85 = v566;
LABEL_156:
    v513 = v105;
    v504 = v117;
    if (v570)
    {
      [v557 portType];
      [OUTLINED_FUNCTION_49_8() sensorIDString];
      v118 = OUTLINED_FUNCTION_6_44();
      *&v119 = v89;
      v510 = [v118 disparityRefinementTypeForPortType:v105 sensorIDString:v119 zoomFactor:?] == 1;
    }

    else
    {
      v510 = 0;
    }

    if (v551)
    {
      v120 = [v600 personSemanticsVersion] > 4 && v607;
    }

    else
    {
      v120 = 0;
    }

    OUTLINED_FUNCTION_23_13();
    v121 = v106;
    v517 = v121;
    allowedToModifyInputBuffers = [v23 allowedToModifyInputBuffers];
    semanticRenderingVersion = [v23 semanticRenderingVersion];
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v536 = semanticRenderingVersion;
    if (semanticRenderingVersion)
    {
      semanticDevelopmentVersion = [v23 semanticDevelopmentVersion];
    }

    else
    {
      semanticDevelopmentVersion = 0;
    }

    demosaicedRawEnabled = [v85 demosaicedRawEnabled];
    if (demosaicedRawEnabled)
    {
      [dictionary3 setObject:BWSemanticSegmentationMatteAttachedMediaKeysSupportedByDemosaicedRaw() forKeyedSubscript:&unk_1F2244728];
    }

    if (v120)
    {
      array = [MEMORY[0x1E695DF70] array];
      [array addObject:0x1F219E750];
      BWInferenceLowResPersonInstanceMaskKeys();
      [OUTLINED_FUNCTION_4() addObjectsFromArray:?];
      v125 = array;
      v92 = v558;
      [dictionary3 setObject:v125 forKeyedSubscript:&unk_1F2244740];
    }

    v519 = allowedToModifyInputBuffers;
    if ([objc_msgSend(v23 "portTypesWithGeometricDistortionCorrectionEnabled")])
    {
      if ((v570 ^ 1 | bravoConstituentPhotoDeliveryEnabled))
      {
        v126 = 1;
      }

      else
      {
        v126 = [objc_msgSend(v23 "portTypesWithGeometricDistortionCorrectionEnabled")];
      }

      v127 = [v23 gdcInDCProcessorSupported] & v126;
      v92 = v558;
    }

    else
    {
      v127 = 0;
    }

    v560 = learnedNRSupported & v546;
    v518 = [objc_msgSend(v23 "portTypesWithIntelligentDistortionCorrectionEnabled")] != 0;
    v530 = v120;
    v516 = v602 & v127;
    if (v595 >= [v23 rawSensorDimensions] && (v599 >= (objc_msgSend(v23, "rawSensorDimensions") >> 32) ? (v128 = v602 & v127) : (v128 = 0), v128 == 1))
    {
      if (v567)
      {
        gdcInDCProcessorOutputCropDimensions2 = [v23 gdcInDCProcessorOutputCropDimensions];
      }

      else
      {
        gdcInDCProcessorOutputCropDimensions2 = [v23 outputStillImageDimensions];
      }

      v505 = gdcInDCProcessorOutputCropDimensions2;
    }

    else
    {
      v505 = 0;
    }

    if ([v23 clientIsCameraOrDerivative] && +[BWInferenceEngine isNeuralEngineSupported](BWInferenceEngine, "isNeuralEngineSupported"))
    {
      captureTimePhotosCurationSupported = [v23 captureTimePhotosCurationSupported];
    }

    else
    {
      captureTimePhotosCurationSupported = 0;
    }

    if (v92)
    {
      clientIsCameraOrDerivative = [v23 clientIsCameraOrDerivative];
      if (clientIsCameraOrDerivative)
      {
        v131 = 0;
      }

      else
      {
        v131 = 7;
      }

      if ((clientIsCameraOrDerivative & 1) == 0)
      {
        v132 = v555;
        if (((bravoConstituentPhotoDeliveryEnabled ^ 1) & 1) == 0)
        {
          v131 = 8 * [v582 count] - 1;
        }

LABEL_201:
        v568 = bravoConstituentPhotoDeliveryEnabled | v545;
        v553 = (deepFusionSupported | v560) & v574 ^ 1;
        v503 = v131;
        if (v569 == 2)
        {
          responsiveShutterSupported = [v23 responsiveShutterSupported];
        }

        else
        {
          responsiveShutterSupported = 0;
        }

        [v561 setStillImageCaptureEnabled:1];
        [v566 irisFrameHarvestingEnabled];
        [OUTLINED_FUNCTION_17() setIrisFrameHarvestingEnabled:?];
        [v23 noiseReductionAndFusionScheme];
        [OUTLINED_FUNCTION_17() setStillImageFusionScheme:?];
        [v561 setUnifiedBracketingMode:v132];
        [v23 sifrStillImageCaptureEnabledIfAvailable];
        [OUTLINED_FUNCTION_17() setSifrStillImageCaptureEnabledIfAvailable:?];
        [v23 deepFusionSupported];
        [OUTLINED_FUNCTION_17() setDeepFusionEnabled:?];
        [v561 setLearnedNRMode:v560];
        [v561 setDigitalFlashEnabled:digitalFlashCaptureEnabled & v553];
        [v561 setRedSaturationMitigationEnabled:{objc_msgSend(v566, "optimizesImagesForOfflineVideoStabilization") ^ 1}];
        [v561 registerForAEMatrixMetadata];
        [v561 setRedEyeReductionEnabled:redEyeReductionVersion > 0];
        if (v587)
        {
          v133 = v570 & (bravoConstituentPhotoDeliveryEnabled ^ 1);
        }

        else
        {
          v133 = 0;
        }

        v506 = v133;
        [v561 setDisparityGenerationFromReferenceFramesSupported:?];
        [v561 setSupplementalPointCloudCaptureDevice:v559];
        v134 = [OUTLINED_FUNCTION_14_22() pipelineStageWithName:@"com.apple.coremedia.capture.stillimage" priority:?];
        v135 = v134;
        v596 = v134;
        if ((bravoConstituentPhotoDeliveryEnabled | v545))
        {
          [OUTLINED_FUNCTION_14_22() pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.ub.default" priority:?];
          v512 = [OUTLINED_FUNCTION_14_22() pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.ub.telephoto" priority:?];
          v543 = [OUTLINED_FUNCTION_14_22() pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.multi" priority:?];
          v136 = v135;
          v575 = v135;
        }

        else
        {
          v136 = v134;
          v543 = v134;
          v512 = v134;
          v575 = v134;
          if (v569 == 2)
          {
            v136 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.scale-and-encode" priority:v76[12]];
            if (responsiveShutterSupported)
            {
              v575 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.buffer-servicing" priority:v76[12]];
              OUTLINED_FUNCTION_48_11();
            }

            else
            {
              OUTLINED_FUNCTION_48_11();
              v575 = v137;
            }
          }
        }

        v535 = v136;
        v533 = bravoConstituentPhotoDeliveryEnabled;
        v539 = v127;
        if (dword_1EB58E2A0)
        {
          LODWORD(v704) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v139 = &selRef__waitForPreviewGenerationGroupToComplete;
        if (v84)
        {
          v140 = [BWAttachedMediaSplitNode alloc];
          v721 = @"Depth";
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v721 count:1];
          v141 = [OUTLINED_FUNCTION_4() initWithAttachedMediaKeys:?];
          v720.receiver = v76;
          v720.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
          if ((objc_msgSendSuper2(&v720, sel_addNode_error_, v141, &v742) & 1) == 0 || ([v141 input], v142 = objc_msgSend(OUTLINED_FUNCTION_1_15(), "connectOutput:toInput:pipelineStage:", v84), v143 = v582, (v142 & 1) == 0))
          {
            OUTLINED_FUNCTION_0_61();
            goto LABEL_486;
          }

          [v141 setName:@"Still Image IR-Depth Splitter"];
          [v141 setEmitsNodeErrorsForMissingAttachedMedia:1];
          obja = [objc_msgSend(v141 "outputs")];
        }

        else
        {
          obja = 0;
          v143 = v582;
        }

        [v143 count];
        v144 = [OUTLINED_FUNCTION_4() dictionaryWithCapacity:?];
        cameraInfoByPortType2 = [v559 cameraInfoByPortType];
        if ([v23 stillImageSinkPipelineProcessingMode] && objc_msgSend(v23, "stillImageSinkPipelineProcessingMode") != 2)
        {
          v144 = [v143 mutableCopy];
          if (v579)
          {
            v580 = [v143 objectForKeyedSubscript:?];
            v576 = 0;
          }

          else
          {
            v576 = 0;
            v580 = 0;
          }

          v159 = v589;
        }

        else
        {
          if ([v23 stillImageSinkPipelineProcessingMode])
          {
            v145 = 0;
            v146 = v589;
            v147 = &classRef_BWDerectificationInferenceProvider;
            v148 = v564;
          }

          else
          {
            v148 = v564;
            v145 = [[BWStillImageCoordinatorNode alloc] initWithNodeConfiguration:v565 captureDevice:v561 inputPortTypes:v564 sensorRawInputPortTypes:0 highResStillImageDimensions:v525];
            v147 = &classRef_BWDerectificationInferenceProvider;
            v719.receiver = v589;
            v719.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
            if ((objc_msgSendSuper2(&v719, sel_addNode_error_, v145, &v742) & 1) == 0)
            {
              OUTLINED_FUNCTION_0_61();
              goto LABEL_486;
            }

            [(BWNode *)v145 setName:@"Still Image Coordinator"];
            [(BWStillImageCoordinatorNode *)v145 setStillImageCaptureStatusDelegate:v523];
            [(BWStillImageCoordinatorNode *)v145 setResponsiveShutterEnabled:responsiveShutterSupported];
            if ([v23 responsiveShutterSupported])
            {
              responsiveShutterEnabled = [v23 responsiveShutterEnabled];
            }

            else
            {
              responsiveShutterEnabled = 0;
            }

            [(BWStillImageCoordinatorNode *)v145 setResponsiveShutterEnabledViaAPI:responsiveShutterEnabled];
            -[BWStillImageCoordinatorNode setFastCapturePrioritizationEnabled:](v145, "setFastCapturePrioritizationEnabled:", [v23 fastCapturePrioritizationEnabled]);
            [(BWStillImageCoordinatorNode *)v145 setStillImageCapturePipeliningMode:v569];
            -[BWStillImageCoordinatorNode setCinematicFramingWarpingRequired:](v145, "setCinematicFramingWarpingRequired:", [v23 cinematicFramingWarpingRequired]);
            if (v569 == 1)
            {
              [(BWStillImageCoordinatorNode *)v145 setMaxNumberOfBurstCapturesAllowedInFlight:2];
            }

            v146 = v589;
            *(v589 + 56) = v145;
          }

          v150 = [[BWStillImageFrameCoordinatorNode alloc] initWithNodeConfiguration:v565 inputPortTypes:v148 sensorRawInputPortTypes:0];
          v151 = v147[251];
          v718.receiver = v146;
          v718.super_class = v151;
          if ((objc_msgSendSuper2(&v718, sel_addNode_error_, v150, &v742) & 1) == 0)
          {
LABEL_242:
            OUTLINED_FUNCTION_0_61();
            goto LABEL_486;
          }

          [(BWNode *)v150 setName:@"Still Image Frame Coordinator"];
          v717 = 0u;
          v716 = 0u;
          v715 = 0u;
          v714 = 0u;
          if (OUTLINED_FUNCTION_27_11())
          {
            do
            {
              OUTLINED_FUNCTION_42();
              if (!v106)
              {
                objc_enumerationMutation(v143);
              }

              v152 = **(&v714 + 1);
              v153 = [v143 objectForKeyedSubscript:**(&v714 + 1)];
              if ([v152 isEqualToString:v579])
              {
                v153 = obja;
              }

              if (v145)
              {
                if (([provider connectOutput:v153 toInput:-[BWStillImageCoordinatorNode inputForPortType:](v145 pipelineStage:{"inputForPortType:", v152), v575}] & 1) == 0)
                {
                  goto LABEL_242;
                }

                v143 = v582;
                if (([provider connectOutput:-[BWStillImageCoordinatorNode outputForPortType:](v145 toInput:"outputForPortType:" pipelineStage:{v152), objc_msgSend(OUTLINED_FUNCTION_12_31(), "inputForPortType:"), v596}] & 1) == 0)
                {
                  goto LABEL_242;
                }
              }

              else
              {
                [OUTLINED_FUNCTION_12_31() inputForPortType:?];
                if (([OUTLINED_FUNCTION_15_21() connectOutput:v153 toInput:? pipelineStage:?] & 1) == 0)
                {
                  goto LABEL_242;
                }
              }

              [OUTLINED_FUNCTION_12_31() outputForPortType:?];
              [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
              OUTLINED_FUNCTION_46_10();
            }

            while (!v106 || OUTLINED_FUNCTION_27_11());
          }

          v580 = [(BWStillImageFrameCoordinatorNode *)v150 outputForPortType:v579];
          v154 = objc_alloc_init(FigCaptureIrisPreparedSettings);
          deepFusionSupported2 = [v23 deepFusionSupported];
          if (v555)
          {
            v156 = 2;
          }

          else
          {
            v156 = 1;
          }

          if (deepFusionSupported2)
          {
            v157 = 3;
          }

          else
          {
            v157 = v156;
          }

          [(FigCaptureIrisPreparedSettings *)v154 setQualityPrioritization:v157];
          [(FigCaptureIrisPreparedSettings *)v154 setDigitalFlashMode:digitalFlashCaptureEnabled & v553];
          v722[1] = 0;
          v722[0] = 0;
          v723 = 0;
          [BWStillImageCoordinatorNode worstCaseMaxBracketedCaptureBufferCountForPreparedSettings:v154 stillImageCaptureSettings:0 captureDevice:v561];
          v158 = v722[0];
          if (SLODWORD(v722[0]) <= SHIDWORD(v722[0]))
          {
            v158 = HIDWORD(v722[0]);
          }

          v576 = v158;
          v159 = v589;
          v70 = dictionary;
          v139 = &selRef__waitForPreviewGenerationGroupToComplete;
        }

        if (!((v587 == 0) | v568 & 1))
        {
          v160 = -[BWCrossoverNode initWithMediaType:numberOfInputs:]([BWCrossoverNode alloc], "initWithMediaType:numberOfInputs:", 1986618469, [v582 count]);
          v713.receiver = v159;
          v713.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
          if ((objc_msgSendSuper2(&v713, v139[148], v160, &v742) & 1) == 0)
          {
            OUTLINED_FUNCTION_0_61();
            goto LABEL_486;
          }

          memset(v712, 0, sizeof(v712));
          if ([v582 countByEnumeratingWithState:v712 objects:v711 count:16])
          {
            v161 = 0;
            while (1)
            {
              OUTLINED_FUNCTION_30_6();
              if (!v106)
              {
                objc_enumerationMutation(v582);
              }

              v162 = [v144 objectForKeyedSubscript:**(&v712[0] + 1)];
              [(NSArray *)[(BWNode *)v160 inputs] objectAtIndexedSubscript:v161];
              if (![OUTLINED_FUNCTION_15_21() connectOutput:v162 toInput:? pipelineStage:?])
              {
                break;
              }

              ++v161;
              OUTLINED_FUNCTION_46_10();
              if (v106 && ![v582 countByEnumeratingWithState:v712 objects:v711 count:16])
              {
                goto LABEL_268;
              }
            }

            OUTLINED_FUNCTION_0_61();
            goto LABEL_486;
          }

LABEL_268:
          [(BWNode *)v160 output];
          [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
          v70 = dictionary;
          v139 = &selRef__waitForPreviewGenerationGroupToComplete;
        }

        array2 = [MEMORY[0x1E695DF70] array];
        v164 = objc_alloc_init(BWPixelTransferNode);
        [(BWNode *)v164 setName:@"Still Image Format Converter"];
        [v23 outputColorSpaceProperties];
        [OUTLINED_FUNCTION_7() setOutputColorSpaceProperties:?];
        [(BWPixelTransferNode *)v164 setCropMode:3];
        [(BWPixelTransferNode *)v164 setMaxInputLossyCompressionLevel:3];
        [v23 maxLossyCompressionLevel];
        [OUTLINED_FUNCTION_7() setMaxOutputLossyCompressionLevel:?];
        [(BWPixelTransferNode *)v164 setConversionMethodForStillImagesDuringHDRVideos:2];
        objb = array2;
        [array2 addObject:v164];
        v526 = v164;
        if (redEyeReductionVersion == 1)
        {
          v710.receiver = v159;
          v710.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
          v165 = v139[148];
          if ((objc_msgSendSuper2(&v710, v165, v164, &v742) & 1) == 0 || (v166 = [v144 objectForKeyedSubscript:v556], -[BWNode input](v164, "input"), (objc_msgSend(OUTLINED_FUNCTION_1_15(), "connectOutput:toInput:pipelineStage:", v166) & 1) == 0))
          {
            OUTLINED_FUNCTION_0_61();
            goto LABEL_486;
          }

          [(BWNode *)v164 output];
          [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
          if (v568)
          {
            v709 = 0u;
            v708 = 0u;
            v707 = 0u;
            v706 = 0u;
            v167 = OUTLINED_FUNCTION_52_10();
            if (v167)
            {
              v168 = v167;
LABEL_275:
              v169 = 0;
              while (1)
              {
                OUTLINED_FUNCTION_30_6();
                if (!v106)
                {
                  objc_enumerationMutation(v587);
                }

                v170 = *(*(&v706 + 1) + 8 * v169);
                v171 = objc_alloc_init(BWPixelTransferNode);
                v172 = MEMORY[0x1E696AEC0];
                v499 = BWPortTypeToDisplayString(v170, v173);
                [v172 stringWithFormat:@"%@ Format Converter"];
                [OUTLINED_FUNCTION_4() setName:?];
                [v23 outputColorSpaceProperties];
                [OUTLINED_FUNCTION_4() setOutputColorSpaceProperties:?];
                [(BWPixelTransferNode *)v171 setCropMode:3];
                [v23 maxLossyCompressionLevel];
                [OUTLINED_FUNCTION_4() setMaxLossyCompressionLevel:?];
                v705.receiver = v589;
                v705.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                if ((objc_msgSendSuper2(&v705, v165, v171, &v742) & 1) == 0)
                {
                  goto LABEL_765;
                }

                v174 = [v144 objectForKeyedSubscript:v170];
                [(BWNode *)v171 input];
                if (([OUTLINED_FUNCTION_15_21() connectOutput:v174 toInput:? pipelineStage:?] & 1) == 0)
                {
                  goto LABEL_765;
                }

                [(BWNode *)v171 output];
                [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
                [objb addObject:v171];
                if (v168 == ++v169)
                {
                  v168 = OUTLINED_FUNCTION_52_10();
                  if (v168)
                  {
                    goto LABEL_275;
                  }

                  break;
                }
              }
            }
          }

          if ([v587 count] >= 2)
          {
            OUTLINED_FUNCTION_0_61();
            FigDebugAssert3();
          }

          firstObject3 = [v587 firstObject];
          v722[0] = 0;
          v724[0] = 0;
          v159 = v589;
          v70 = dictionary;
          v743[0] = [(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v589 _buildRedEyeReductionSubPipelineWithName:v596 pipelineStage:provider graph:dictionary sensorConfigurationsByPortType:delegate inferenceScheduler:v722 subPipelineInputOut:v724 subPipelineOutputOut:?];
          v139 = &selRef__waitForPreviewGenerationGroupToComplete;
          if (v743[0])
          {
            OUTLINED_FUNCTION_2_64();
            goto LABEL_486;
          }

          if (v502)
          {
            v704 = 0;
            *type = 0;
            v743[0] = [(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v589 _buildRedEyeReductionSubPipelineWithName:v512 pipelineStage:provider graph:dictionary sensorConfigurationsByPortType:delegate inferenceScheduler:&v704 subPipelineInputOut:type subPipelineOutputOut:?];
            if (v743[0])
            {
              OUTLINED_FUNCTION_2_64();
              goto LABEL_486;
            }

            v488 = [v144 objectForKeyedSubscript:v556];
            if (([provider connectOutput:v488 toInput:v722[0] pipelineStage:v596] & 1) == 0 || (objc_msgSend(v144, "setObject:forKeyedSubscript:", v724[0], v556), v489 = objc_msgSend(v144, "objectForKeyedSubscript:", firstObject3), (objc_msgSend(provider, "connectOutput:toInput:pipelineStage:", v489, v704, v512) & 1) == 0))
            {
              OUTLINED_FUNCTION_0_61();
              goto LABEL_486;
            }

            v177 = *type;
            goto LABEL_289;
          }

          if (v568)
          {
            v176 = [v144 objectForKeyedSubscript:firstObject3];
            if ([provider connectOutput:v176 toInput:v722[0] pipelineStage:v512])
            {
              v177 = v724[0];
LABEL_289:
              [v144 setObject:v177 forKeyedSubscript:firstObject3];
              goto LABEL_297;
            }

LABEL_765:
            OUTLINED_FUNCTION_0_61();
            goto LABEL_486;
          }

          v178 = [v144 objectForKeyedSubscript:v556];
          if (([provider connectOutput:v178 toInput:v722[0] pipelineStage:v596] & 1) == 0)
          {
            goto LABEL_765;
          }

          [v144 setObject:v724[0] forKeyedSubscript:v556];
        }

LABEL_297:
        if (v580)
        {
          v179 = [[BWDepthSynchronizerNode alloc] initForStreaming:0 separateDepthComponentsEnabled:0];
          v702.receiver = v159;
          v702.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
          if ((objc_msgSendSuper2(&v702, v139[148], v179, &v742) & 1) == 0 || ([v179 setName:@"Still Image YUV Depth Synchronizer"], v180 = objc_msgSend(v144, "objectForKeyedSubscript:", v556), objc_msgSend(v179, "imageInput"), (objc_msgSend(OUTLINED_FUNCTION_1_15(), "connectOutput:toInput:pipelineStage:", v180) & 1) == 0) || (objc_msgSend(v179, "depthInput"), (objc_msgSend(OUTLINED_FUNCTION_1_15(), "connectOutput:toInput:pipelineStage:", v580) & 1) == 0))
          {
            OUTLINED_FUNCTION_0_61();
            goto LABEL_486;
          }

          [v179 output];
          [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
        }

        output = [v144 objectForKeyedSubscript:v556];
        firstObject4 = [v587 firstObject];
        dictionary4 = [MEMORY[0x1E695DF90] dictionary];
        [v70 objectForKeyedSubscript:v556];
        [OUTLINED_FUNCTION_24_1() setObject:? forKeyedSubscript:?];
        memset(v701, 0, sizeof(v701));
        v182 = [v587 countByEnumeratingWithState:v701 objects:v700 count:16];
        if (v182)
        {
          v183 = v182;
          do
          {
            for (j = 0; j != v183; ++j)
            {
              OUTLINED_FUNCTION_42();
              if (!v106)
              {
                objc_enumerationMutation(v587);
              }

              [v70 objectForKeyedSubscript:*(v701[0].super_class + j)];
              [OUTLINED_FUNCTION_24_1() setObject:? forKeyedSubscript:?];
            }

            v183 = [v587 countByEnumeratingWithState:v701 objects:v700 count:16];
          }

          while (v183);
        }

        if (depthDataType == 7)
        {
          [v70 objectForKeyedSubscript:*off_1E798A0C8];
          [OUTLINED_FUNCTION_24_1() setObject:? forKeyedSubscript:?];
        }

        if (v568)
        {
          v185 = [BWFunnelNode alloc];
          [dictionary4 count];
          v186 = [OUTLINED_FUNCTION_4() initWithNumberOfInputs:? mediaType:?];
          v699.receiver = v589;
          v699.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
          if ((objc_msgSendSuper2(&v699, v139[148], v186, &v742) & 1) == 0)
          {
LABEL_485:
            OUTLINED_FUNCTION_0_61();
            goto LABEL_486;
          }

          [v186 setName:@"UB Funnel"];
          v698 = 0u;
          v697 = 0u;
          v696 = 0u;
          v695 = 0u;
          v187 = OUTLINED_FUNCTION_57_8();
          if (v187)
          {
            v188 = v187;
            v189 = 0;
LABEL_315:
            v190 = 0;
            while (1)
            {
              OUTLINED_FUNCTION_30_6();
              if (!v106)
              {
                objc_enumerationMutation(v144);
              }

              v191 = [v144 objectForKeyedSubscript:*(*(&v695 + 1) + 8 * v190)];
              [objc_msgSend(v186 "inputs")];
              if (![OUTLINED_FUNCTION_15_21() connectOutput:v191 toInput:? pipelineStage:?])
              {
                goto LABEL_485;
              }

              ++v189;
              if (v188 == ++v190)
              {
                v188 = OUTLINED_FUNCTION_57_8();
                if (v188)
                {
                  goto LABEL_315;
                }

                break;
              }
            }
          }

          output = [v186 output];
          v139 = &selRef__waitForPreviewGenerationGroupToComplete;
        }

        if (redEyeReductionVersion != 1)
        {
          v694.receiver = v589;
          v694.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
          if ((objc_msgSendSuper2(&v694, v139[148], v526, &v742) & 1) == 0)
          {
            goto LABEL_384;
          }

          [(BWNode *)v526 input];
          v192 = OUTLINED_FUNCTION_1_15();
          if ((OUTLINED_FUNCTION_29_10(v192, v193, v194, v195) & 1) == 0)
          {
            goto LABEL_384;
          }

          output = [(BWNode *)v526 output];
        }

        if ([v23 clientIsCameraOrDerivative])
        {
          if (v531)
          {
            v196 = 2;
          }

          else
          {
            v196 = 1;
          }

          v197 = v540;
          if (v540 == 1)
          {
            v198 = 1;
          }

          else
          {
            v198 = v196;
          }
        }

        else
        {
          if (v533)
          {
            v198 = 8 * [dictionary4 count];
          }

          else
          {
            v198 = 8;
          }

          v197 = v540;
        }

        v199 = v520 | v546 ^ v560;
        v200 = v197 == 1;
        if (v198 <= 2)
        {
          v201 = 2;
        }

        else
        {
          v201 = v198;
        }

        if (v569 == 1)
        {
          v202 = v201;
        }

        else
        {
          v202 = v198;
        }

        v203 = objc_alloc_init(BWUBNodeConfiguration);
        [v565 metalCommandQueue];
        [OUTLINED_FUNCTION_4() setMetalCommandQueue:?];
        [v565 figThreadPriority];
        [OUTLINED_FUNCTION_4() setFigThreadPriority:?];
        [v565 depthDataType];
        [OUTLINED_FUNCTION_4() setDepthDataType:?];
        [v565 pearlModuleType];
        [OUTLINED_FUNCTION_4() setPearlModuleType:?];
        [v565 inferenceScheduler];
        [OUTLINED_FUNCTION_4() setInferenceScheduler:?];
        [v565 maxLossyCompressionLevel];
        [OUTLINED_FUNCTION_4() setMaxLossyCompressionLevel:?];
        [(BWUBNodeConfiguration *)v203 setSensorConfigurationsByPortType:dictionary4, v204];
        [v23 inputIs10Bit];
        v205 = OUTLINED_FUNCTION_10_29();
        [(BWUBNodeConfiguration *)v205 setInputIs10Bit:v206];
        [(BWUBNodeConfiguration *)v203 setRetainedBufferCount:v576];
        v577 = v202;
        [(BWUBNodeConfiguration *)v203 setOutputBufferCount:v202];
        [(BWUBNodeConfiguration *)v203 setMinimumOutputBufferCount:v198];
        [(BWUBNodeConfiguration *)v203 setMaxNumberOfBurstCapturesAllowedInFlight:?];
        [(BWUBNodeConfiguration *)v203 setOutputPoolBackPressureEnabled:?];
        [(BWStillImageNodeConfiguration *)v203 setDeferredCaptureSupportEnabled:deferredProcessingSupported];
        [(BWStillImageNodeConfiguration *)v203 setDeferredPhotoProcessorEnabled:v200];
        [v23 noiseReductionAndFusionScheme];
        v207 = OUTLINED_FUNCTION_10_29();
        [(BWUBNodeConfiguration *)v207 setStillImageFusionScheme:v208];
        [(BWStillImageNodeConfiguration *)v203 setFigThreadPriority:*(v589 + 48)];
        [(BWUBNodeConfiguration *)v203 setReferenceFrameSelectionDelegate:?];
        if (v516)
        {
          [v23 outputStillImageDimensions];
          v209 = OUTLINED_FUNCTION_10_29();
          [(BWUBNodeConfiguration *)v209 setOutputDimensions:v210];
        }

        v547 = v520 | v546 ^ v560;
        [(BWUBNodeConfiguration *)v203 setUnifiedBracketingFusionSupportEnabled:?];
        [(BWUBNodeConfiguration *)v203 setDigitalFlashSupportEnabled:?];
        -[BWUBNodeConfiguration setDeepFusionSyntheticsInNRSupportEnabled:](v203, [v23 deepFusionSupported] & v521);
        deepFusionSupported3 = [v23 deepFusionSupported];
        if (v569 == 2)
        {
          v212 = 0;
        }

        else
        {
          v212 = deferredProcessingSupported;
        }

        if (deepFusionSupported3)
        {
          v213 = v212;
        }

        else
        {
          v213 = 0;
        }

        [(BWUBNodeConfiguration *)v203 setDeepFusionWaitForPreprocessingToFinish:v213];
        [v23 deepFusionSupported];
        v214 = OUTLINED_FUNCTION_10_29();
        [(BWUBNodeConfiguration *)v214 setDeepFusionSupportEnabled:v215];
        [v23 deepFusionEnhancedResolutionDimensions];
        [OUTLINED_FUNCTION_4() setDeepFusionEnhancedResolutionDimensions:?];
        if (v555 == 2)
        {
          v216 = learnedNRSupported;
        }

        else
        {
          v216 = 0;
        }

        if (v540 == 1)
        {
          v217 = 1;
        }

        else
        {
          v217 = deferredProcessingSupported;
        }

        if ((v217 & 1) != 0 || v216)
        {
          deepZoomVersion = [v23 deepZoomVersion];
        }

        else
        {
          deepZoomVersion = 0;
        }

        v219 = v539;
        [(BWUBNodeConfiguration *)v203 setDeepZoomVersion:deepZoomVersion];
        [(BWUBNodeConfiguration *)v203 setMaxDeepFusionOutputCount:?];
        [(BWUBNodeConfiguration *)v203 setLearnedNRMode:v560];
        [(BWUBNodeConfiguration *)v203 setDepthDataDeliveryEnabled:v570];
        if (v559)
        {
          v220 = [BWSensorConfiguration alloc];
          v221 = [objc_msgSend(v559 "captureStream")];
          v222 = [objc_msgSend(v559 "captureStream")];
          v223 = [objc_msgSend(v559 "captureStream")];
          v224 = [cameraInfoByPortType2 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(v559, "captureStream"), "portType")}];
          v225 = v221;
          v219 = v539;
          v226 = v223;
          v139 = &selRef__waitForPreviewGenerationGroupToComplete;
          v227 = [(BWSensorConfiguration *)v220 initWithPortType:v225 sensorIDString:v222 sensorIDDictionary:v226 cameraInfo:v224];
          v228 = OUTLINED_FUNCTION_10_29();
          [(BWUBNodeConfiguration *)v228 setJasperSensorConfiguration:v229, v230];
        }

        [(BWUBNodeConfiguration *)v203 setAlwaysAllowModifyingInputBuffers:?];
        [v23 ubInferenceMainImageDownscalingFactor];
        [(BWUBNodeConfiguration *)v203 setInferenceMainImageDownscalingFactor:v231];
        [(BWUBNodeConfiguration *)v203 setProvidedInferenceAttachedMediaByMode:dictionary3, v232];
        [(BWUBNodeConfiguration *)v203 setSemanticRenderingVersion:v536];
        [(BWUBNodeConfiguration *)v203 setSemanticDevelopmentVersion:semanticDevelopmentVersion];
        [v600 personSemanticsVersion];
        v233 = OUTLINED_FUNCTION_10_29();
        [(BWUBNodeConfiguration *)v233 setPersonSemanticsVersion:v234];
        [v23 semanticStyleRenderingEnabled];
        v235 = OUTLINED_FUNCTION_10_29();
        [(BWUBNodeConfiguration *)v235 setSemanticStyleRenderingEnabled:v236];
        OUTLINED_FUNCTION_23_13();
        if (v106)
        {
          v237 = v589;
          if ([v600 disparityVersion] >= 5)
          {
            [v538 allKeys];
            v239 = OUTLINED_FUNCTION_10_29();
            [(BWUBNodeConfiguration *)v239 setPortTypesWithDepthSegmentationPortraitParameters:v240, v241];
            [v23 depthDataType];
            [OUTLINED_FUNCTION_4() setDepthDataType:?];
            [(BWUBNodeConfiguration *)v203 setShouldComputeDisparityWhenCalibrationFails:?];
          }

          [(BWUBNodeConfiguration *)v203 setGenerateLiDARDepth:?];
        }

        else
        {
          [(BWUBNodeConfiguration *)v203 setGenerateLiDARDepth:?];
          v237 = v589;
          if (depthDataType != 7)
          {
            v238 = 0;
            goto LABEL_373;
          }
        }

        OUTLINED_FUNCTION_23_13();
        v238 = v106;
        [v23 depthDataTargetDimensions];
        v242 = OUTLINED_FUNCTION_10_29();
        [(BWUBNodeConfiguration *)v242 setDisparityOutputDimensions:v243];
LABEL_373:
        [(BWUBNodeConfiguration *)v203 setDemosaicedRawEnabled:demosaicedRawEnabled];
        if (demosaicedRawEnabled)
        {
          [v23 demosaicedRawPixelFormat];
          v244 = OUTLINED_FUNCTION_10_29();
          [(BWUBNodeConfiguration *)v244 setDemosaicedRawPixelFormat:v245];
        }

        [v23 rawColorCalibrationsByPortType];
        v246 = OUTLINED_FUNCTION_10_29();
        [(BWUBNodeConfiguration *)v246 setRawColorCalibrationsByPortType:v247, v248];
        [v23 rawLensShadingCorrectionCoefficientsByPortType];
        v249 = OUTLINED_FUNCTION_10_29();
        [(BWUBNodeConfiguration *)v249 setRawLensShadingCorrectionCoefficientsByPortType:v250, v251];
        if ((v518 | v219))
        {
          [v23 dcProcessorVersion];
          v252 = OUTLINED_FUNCTION_10_29();
          [(BWUBNodeConfiguration *)v252 setIntelligentDistortionCorrectionVersion:v253];
          if (v539)
          {
            portTypesWithGeometricDistortionCorrectionEnabled = [v23 portTypesWithGeometricDistortionCorrectionEnabled];
          }

          else
          {
            portTypesWithGeometricDistortionCorrectionEnabled = 0;
          }

          [(BWUBNodeConfiguration *)v203 setPortTypesWithGeometricDistortionCorrectionEnabled:portTypesWithGeometricDistortionCorrectionEnabled, v254];
          [(BWUBNodeConfiguration *)v203 setGeometricDistortionCorrectionExpandedImageDimensions:v505];
          [v23 portTypesWithIntelligentDistortionCorrectionEnabled];
          v256 = OUTLINED_FUNCTION_10_29();
          [(BWUBNodeConfiguration *)v256 setPortTypesWithIntelligentDistortionCorrectionEnabled:v257, v258];
          [(BWUBNodeConfiguration *)v203 setIntelligentDistortionCorrectionAppliesFinalDimensions:?];
        }

        [v23 greenGhostMitigationVersion];
        v259 = OUTLINED_FUNCTION_10_29();
        [(BWUBNodeConfiguration *)v259 setGreenGhostMitigationVersion:v260];
        [(BWUBNodeConfiguration *)v203 setRedEyeReductionEnabled:?];
        [v23 gainMapMainImageDownscalingFactor];
        [(BWUBNodeConfiguration *)v203 setGainMapMainImageDownscalingFactor:v261];
        [v23 horizontalSensorBinningFactor];
        v262 = OUTLINED_FUNCTION_10_29();
        [(BWUBNodeConfiguration *)v262 setHorizontalSensorBinningFactor:v263];
        [v23 verticalSensorBinningFactor];
        v264 = OUTLINED_FUNCTION_10_29();
        [(BWUBNodeConfiguration *)v264 setVerticalSensorBinningFactor:v265];
        v266 = [[BWUBNode alloc] initWithNodeConfiguration:v203 captureDevice:v561];
        v692 = v237;
        v693 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
        k = v139[148];
        OUTLINED_FUNCTION_11_30();
        if ((objc_msgSendSuper2(v268, v269, v266) & 1) == 0)
        {
          goto LABEL_384;
        }

        [(BWNode *)v266 setName:@"UB"];
        [v561 setStillImageProcessingSupportProvider:v266];
        [*(v237 + 56) setStillImageProcessingSupportProvider:v266];
        [(BWNode *)v266 input];
        if (([OUTLINED_FUNCTION_44_10() connectOutput:output toInput:? pipelineStage:?] & 1) == 0)
        {
          goto LABEL_384;
        }

        if (v528)
        {
          [(BWUBNode *)v266 pointCloudInput];
          if (([OUTLINED_FUNCTION_44_10() connectOutput:v528 toInput:? pipelineStage:?] & 1) == 0)
          {
LABEL_384:
            OUTLINED_FUNCTION_0_61();
            goto LABEL_486;
          }
        }

        else
        {
          v270 = *off_1E798A0C8;
          if ([v511 objectForKeyedSubscript:*off_1E798A0C8])
          {
            v271 = [v511 objectForKeyedSubscript:v270];
            [(BWUBNode *)v266 pointCloudInput];
            if (([OUTLINED_FUNCTION_44_10() connectOutput:v271 toInput:? pipelineStage:?] & 1) == 0)
            {
              goto LABEL_384;
            }
          }
        }

        output2 = [(BWNode *)v266 output];
        output3 = output2;
        v581 = k;
        if (!(v539 & 1 | !v602))
        {
          v584 = output2;
          dictionary5 = [MEMORY[0x1E695DF90] dictionary];
          [v23 gainMapMainImageDownscalingFactor];
          if (v275 != 0.0)
          {
            v276 = MEMORY[0x1E696AD98];
            [v23 gainMapMainImageDownscalingFactor];
            [dictionary5 setObject:objc_msgSend(v276 forKeyedSubscript:{"numberWithFloat:"), 0x1F217BF50}];
          }

          array3 = [MEMORY[0x1E695DF70] array];
          v688 = 0u;
          v689 = 0u;
          v690 = 0u;
          v691 = 0u;
          v278 = OUTLINED_FUNCTION_51_10();
          if (v278)
          {
            v279 = v278;
            do
            {
              for (k = 0; k != v279; k = (k + 1))
              {
                OUTLINED_FUNCTION_10_18();
                if (!v106)
                {
                  objc_enumerationMutation(dictionary3);
                }

                [array3 addObjectsFromArray:{objc_msgSend(dictionary3, "objectForKeyedSubscript:", *(*(&v688 + 1) + 8 * k))}];
              }

              v279 = OUTLINED_FUNCTION_51_10();
            }

            while (v279);
          }

          v603 = v238;
          if (demosaicedRawEnabled)
          {
            [dictionary5 setObject:&unk_1F224A860 forKeyedSubscript:0x1F21AAE10];
            v687 = 0u;
            v686 = 0u;
            v685 = 0u;
            v684 = 0u;
            v280 = OUTLINED_FUNCTION_50_11();
            if (v280)
            {
              v281 = v280;
              do
              {
                for (k = 0; k != v281; k = (k + 1))
                {
                  OUTLINED_FUNCTION_10_18();
                  if (!v106)
                  {
                    objc_enumerationMutation(array3);
                  }

                  v282 = MEMORY[0x1E696AD98];
                  [v23 ubInferenceMainImageDownscalingFactor];
                  [v282 numberWithFloat:?];
                  [OUTLINED_FUNCTION_24_1() setObject:? forKeyedSubscript:?];
                }

                v281 = OUTLINED_FUNCTION_50_11();
              }

              while (v281);
            }
          }

          v283 = [[BWStillImageScalerNode alloc] initWithBasePoolCapacity:v577 nodeConfiguration:v565];
          [(BWNode *)v283 setName:@"Resizing"];
          [v23 outputStillImageDimensions];
          [OUTLINED_FUNCTION_7() setResizedOutputDimensions:?];
          [(BWStillImageScalerNode *)v283 setBlackFillingRequired:0];
          [(BWStillImageScalerNode *)v283 setMainImageDownscalingFactorByAttachedMediaKey:dictionary5];
          v682 = v589;
          v683 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
          OUTLINED_FUNCTION_7_40();
          if ((objc_msgSendSuper2(v284, v285, v283) & 1) == 0)
          {
            OUTLINED_FUNCTION_0_61();
            FigDebugAssert3();
            v497 = -12786;
            goto LABEL_697;
          }

          [(BWNode *)v283 input];
          v238 = v603;
          if (([OUTLINED_FUNCTION_15_21() connectOutput:v584 toInput:? pipelineStage:?] & 1) == 0)
          {
            goto LABEL_384;
          }

          output3 = [(BWNode *)v283 output];
        }

        if ((v587 == 0) | (v570 ^ 1) & 1 | v238 & 1)
        {
          output5 = output3;
          output4 = 0;
        }

        else
        {
          v287 = [BWStillImageConditionalRouterUBConfiguration configurationWithPortTypes:v564];
          v288 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v287];
          v680 = v589;
          v681 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
          OUTLINED_FUNCTION_11_30();
          if ((objc_msgSendSuper2(v289, v290, v288) & 1) == 0)
          {
            goto LABEL_384;
          }

          [(BWNode *)v288 setName:@"UB Router"];
          [(BWNode *)v288 input];
          if (([OUTLINED_FUNCTION_15_21() connectOutput:output3 toInput:? pipelineStage:?] & 1) == 0)
          {
            goto LABEL_384;
          }

          if ([v587 count] >= 2)
          {
            OUTLINED_FUNCTION_0_61();
            FigDebugAssert3();
          }

          v291 = [(BWStillImageConditionalRouterUBConfiguration *)v287 outputIndexForPortType:firstObject4];
          v292 = [(BWStillImageConditionalRouterUBConfiguration *)v287 outputIndexForPortType:v556];
          if (v291 == 0x7FFFFFFFFFFFFFFFLL || v292 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_696;
          }

          output5 = [(NSArray *)[(BWNode *)v288 outputs] objectAtIndexedSubscript:v292];
          output4 = [(NSArray *)[(BWNode *)v288 outputs] objectAtIndexedSubscript:v291];
        }

        formatRequirements = [(BWNodeInput *)[(BWNode *)v266 input] formatRequirements];
        v676 = 0u;
        v677 = 0u;
        v678 = 0u;
        v679 = 0u;
        v295 = OUTLINED_FUNCTION_56_9();
        if (v295)
        {
          v296 = v295;
          do
          {
            for (k = 0; k != v296; k = (k + 1))
            {
              OUTLINED_FUNCTION_10_18();
              if (!v106)
              {
                objc_enumerationMutation(objb);
              }

              v297 = *(*(&v676 + 1) + 8 * k);
              [(BWFormatRequirements *)formatRequirements supportedPixelFormats];
              [OUTLINED_FUNCTION_37_0() setPreferredOutputPixelFormats:?];
              [v297 setConverting10BitVideoRangeTo8BitFullRangeEncouraged:1];
            }

            v296 = OUTLINED_FUNCTION_56_9();
          }

          while (v296);
        }

        if ((v531 & v541) == 1)
        {
          v298 = objc_alloc_init(BWPortraitHDRStagingNode);
          v675[6] = v589;
          v675[7] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
          OUTLINED_FUNCTION_7_40();
          if ((objc_msgSendSuper2(v299, v300, v298) & 1) == 0)
          {
            goto LABEL_384;
          }

          v301 = v298;
          *(v589 + 96) = v301;
          if (v587)
          {
            [(BWNode *)v301 input];
            OUTLINED_FUNCTION_31_12();
            v302 = depthDataType2;
            if (([OUTLINED_FUNCTION_12_31() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
            {
              goto LABEL_384;
            }

            output4 = [*(v589 + 96) output];
          }

          else
          {
            v302 = depthDataType2;
            if ((v551 & 1) == 0)
            {
              if (depthDataType2 > 9 || (OUTLINED_FUNCTION_13_25(), v106))
              {
                v303 = v558;
                goto LABEL_440;
              }
            }

            [(BWNode *)v301 input];
            if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
            {
              goto LABEL_384;
            }

            output5 = [*(v589 + 96) output];
          }

          v303 = v558;
        }

        else
        {
          v303 = v558;
          v302 = depthDataType2;
          k = v581;
        }

        if (!v570)
        {
          v304 = 0;
LABEL_444:
          if (v302 == 6)
          {
            v305 = 1;
          }

          else
          {
            v305 = v304;
          }

          v572 = v305 | v530;
          v563 = v304;
          if ((v305 | v530))
          {
            v461 = [[BWInferenceNode alloc] initWithScheduler:delegate priority:*(v589 + 52)];
            v462 = v461;
            if (v302 == 6)
            {
              [(BWNode *)v461 setName:@"MonocularDepth"];
              [(BWInferenceNode *)v462 addInferenceOfType:106 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:[[BWMonocularDepthConfiguration alloc] initWithInferenceType:106 monocularDepthType:2]];
            }

            else if (v304)
            {
              [(BWNode *)v461 setName:@"RGB Segmentation"];
              [(BWInferenceNode *)v462 addInferenceOfType:103 version:+[BWRGBPersonSegmentationInferenceConfiguration portraitVersion]& 0xFFFFFFFFFFFFLL];
            }

            if ([(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v589 _addLandmarksInferenceToNode:v462])
            {
              goto LABEL_696;
            }

            v675[4] = v589;
            v675[5] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
            OUTLINED_FUNCTION_11_30();
            if ((objc_msgSendSuper2(v463, v464, v462) & 1) == 0)
            {
              goto LABEL_384;
            }

            input = [(BWNode *)v462 input];
            v303 = v558;
            if (v568)
            {
              if (([provider connectOutput:output4 toInput:input pipelineStage:v596] & 1) == 0)
              {
                goto LABEL_384;
              }
            }

            else if ((OUTLINED_FUNCTION_29_10(provider, v465, v466, input) & 1) == 0)
            {
              goto LABEL_384;
            }

            output6 = [(BWNode *)v462 output];
            if (v527)
            {
              [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.person-semantics" priority:*(v589 + 48)];
              v469 = [BWFanOutNode alloc];
              OUTLINED_FUNCTION_26_12();
              v471 = [v470 initWithFanOutCount:? mediaType:?];
              [v471 setName:@"Concurrent PersonSemantics / DepthProcessing Fan Out"];
              v675[2] = v589;
              v675[3] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
              OUTLINED_FUNCTION_11_30();
              if ((objc_msgSendSuper2(v472, v473, v471) & 1) == 0)
              {
                goto LABEL_384;
              }

              [v471 input];
              if (([OUTLINED_FUNCTION_6_44() connectOutput:output6 toInput:? pipelineStage:?] & 1) == 0)
              {
                goto LABEL_384;
              }

              output7 = [objc_msgSend(v471 "outputs")];
              v475 = v551;
              if (depthDataType2 == 6)
              {
                v475 = 1;
              }

              if (v475 == 1)
              {
                v476 = [BWAttachedMediaSplitNode alloc];
                v675[0] = @"PrimaryFormat";
                v675[1] = @"Depth";
                [MEMORY[0x1E695DEC8] arrayWithObjects:v675 count:2];
                v477 = [OUTLINED_FUNCTION_7() initWithAttachedMediaKeys:?];
                [v477 setName:@"Unprocessed DepthData Discarder"];
                v674[14] = v589;
                v674[15] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                OUTLINED_FUNCTION_9_34();
                if ((objc_msgSendSuper2(v478, v479, v477) & 1) == 0)
                {
                  goto LABEL_470;
                }

                [v477 input];
                if (([OUTLINED_FUNCTION_6_44() connectOutput:output7 toInput:? pipelineStage:?] & 1) == 0)
                {
                  goto LABEL_470;
                }

                output7 = [v477 output];
              }

              v480 = [[BWInferenceNode alloc] initWithScheduler:delegate priority:*(v589 + 52)];
              OUTLINED_FUNCTION_5_50();
              [v481 addInferenceOfType:104 version:? configuration:?];
              [(BWNode *)v480 setName:@"Person Semantics"];
              if (v513 >= 1)
              {
                [v23 portraitEffectsMatteMainImageDownscalingFactor];
                v492 = v491;
                enabledSemantics = [(BWPersonSemanticsConfiguration *)v507 enabledSemantics];
                metalCommandQueue = [v565 metalCommandQueue];
                [v23 clientIsCameraOrDerivative];
                OUTLINED_FUNCTION_25_12();
                if ([(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v589 _addMattingInferenceToNode:v480 mattingVersion:v494 refinedDepthEnabled:v495 mainImageDownscalingFactor:enabledSemantics enabledSemantics:metalCommandQueue metalCommandQueue:v538 mattingsensorConfigurationsByPortType:v496 clientIsCameraOrDerivative:v492 requiredAdditionalInferenceOutputBuffers:v89 zoomFactorForPortrait:v499])
                {
                  goto LABEL_696;
                }
              }

              v674[12] = v589;
              v674[13] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
              OUTLINED_FUNCTION_9_34();
              if ((objc_msgSendSuper2(v482, v483, v480) & 1) == 0 || (-[BWNode input](v480, "input"), v303 = v558, ([OUTLINED_FUNCTION_6_44() connectOutput:output7 toInput:? pipelineStage:?] & 1) == 0))
              {
LABEL_470:
                OUTLINED_FUNCTION_0_61();
                goto LABEL_486;
              }

              output8 = [(BWNode *)v480 output];
              output6 = [objc_msgSend(v471 "outputs")];
              k = v581;
            }

            else
            {
              output8 = 0;
            }

            if (v568)
            {
              output4 = output6;
            }

            v484 = output5;
            if ((v568 & 1) == 0)
            {
              v484 = output6;
            }

            output5 = v484;
            v302 = depthDataType2;
          }

          else
          {
            output8 = 0;
          }

          if (!v570 || v302 > 9 || (OUTLINED_FUNCTION_13_25(), v106))
          {
            if ((v568 & 1) == 0)
            {
              v319 = v589;
              OUTLINED_FUNCTION_21_19();
              goto LABEL_540;
            }

            OUTLINED_FUNCTION_23_13();
            if (!v106)
            {
              if (!v570)
              {
                if (!v533)
                {
                  v319 = v589;
                  OUTLINED_FUNCTION_21_19();
LABEL_544:
                  if (output8)
                  {
                    v386 = [[BWInferenceSynchronizerNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:0 indexOfInputProvidingPreferredInferences:1 errorHandlingModel:0];
                    [(BWNode *)v386 setName:@"DepthData Processing / PersonSemantics"];
                    v649 = v319;
                    v650 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                    OUTLINED_FUNCTION_9_34();
                    if ((objc_msgSendSuper2(v387, v388, v386) & 1) == 0)
                    {
                      goto LABEL_561;
                    }

                    [(NSArray *)[(BWNode *)v386 inputs] objectAtIndexedSubscript:0];
                    if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                    {
                      goto LABEL_561;
                    }

                    [(NSArray *)[(BWNode *)v386 inputs] objectAtIndexedSubscript:1];
                    if (([OUTLINED_FUNCTION_6_44() connectOutput:output8 toInput:? pipelineStage:?] & 1) == 0)
                    {
                      goto LABEL_561;
                    }

                    output5 = [(BWNode *)v386 output];
                  }

                  if (v515)
                  {
                    v389 = [BWStillImagePortraitMetadataNode alloc];
                    *&v390 = v89;
                    v391 = [(BWStillImagePortraitMetadataNode *)v389 initWithNodeConfiguration:v565 sdofRenderingVersion:v515 sensorConfigurationsByPortType:output4 defaultPortType:firstObject2 defaultZoomFactor:v390];
                    v647 = v319;
                    v648 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                    OUTLINED_FUNCTION_9_34();
                    if ((objc_msgSendSuper2(v392, v393, v391) & 1) == 0)
                    {
                      goto LABEL_561;
                    }

                    [(BWNode *)v391 input];
                    if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                    {
                      goto LABEL_561;
                    }

                    output5 = [(BWNode *)v391 output];
                  }

                  if (!v303)
                  {
LABEL_573:
                    if (filterRenderingEnabled)
                    {
                      [(BWStillImageConditionalRouterNode *)k previewQualityAdjustedPhotoFilterRenderingEnabled];
                      OUTLINED_FUNCTION_41_10();
                      if (v106)
                      {
                        v413 = 0;
                      }

                      else
                      {
                        v413 = v412;
                      }

                      v414 = [BWStillImageFilterNode alloc];
                      LOBYTE(v501) = 0;
                      LODWORD(v499) = v413;
                      *&v415 = v89;
                      v416 = [(BWStillImageFilterNode *)v414 initWithNodeConfiguration:v565 sensorConfigurationsByPortType:output4 statusDelegate:0 depthDataDeliveryEnabled:v570 personSegmentationEnabled:portraitEffectsMatteDeliveryEnabled refinedDepthEnabled:portraitEffectsMatteDeliveryEnabled & v510 portraitRenderQuality:0.0 targetAspectRatio:v415 defaultPortType:v499 defaultZoomFactor:firstObject2 backPressureDrivenPipelining:v501];
                      v637 = v319;
                      v638 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                      OUTLINED_FUNCTION_7_40();
                      if ((objc_msgSendSuper2(v417, v418, v416) & 1) == 0)
                      {
                        goto LABEL_726;
                      }

                      [(BWNode *)v416 input];
                      if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                      {
                        goto LABEL_726;
                      }

                      output9 = [(BWNode *)v416 output];
                    }

                    else
                    {
                      output9 = output5;
                    }

                    if (v569 != 1)
                    {
                      goto LABEL_585;
                    }

                    v420 = [[BWStillImageTurnstileNode alloc] initWithStillImageCoordinator:*(v319 + 56)];
                    v635 = v319;
                    v636 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                    OUTLINED_FUNCTION_11_30();
                    if (objc_msgSendSuper2(v421, v422, v420))
                    {
                      [(BWNode *)v420 input];
                      if ([OUTLINED_FUNCTION_6_44() connectOutput:output9 toInput:? pipelineStage:?])
                      {
                        output9 = [(BWNode *)v420 output];
LABEL_585:
                        v586 = output9;
                        dictionary6 = [MEMORY[0x1E695DF90] dictionary];
                        [v23 gainMapMainImageDownscalingFactor];
                        if (v424 != 0.0)
                        {
                          v425 = MEMORY[0x1E696AD98];
                          [v23 gainMapMainImageDownscalingFactor];
                          [dictionary6 setObject:objc_msgSend(v425 forKeyedSubscript:{"numberWithFloat:"), 0x1F217BF50}];
                        }

                        if (demosaicedRawEnabled)
                        {
                          [dictionary6 setObject:&unk_1F224A860 forKeyedSubscript:0x1F21AAE10];
                          v634 = 0u;
                          v633 = 0u;
                          v632 = 0u;
                          v631 = 0u;
                          v604 = OUTLINED_FUNCTION_55_9();
                          if (v604)
                          {
                            v601 = *v632;
                            do
                            {
                              for (m = 0; m != v604; ++m)
                              {
                                if (*v632 != v601)
                                {
                                  objc_enumerationMutation(dictionary3);
                                }

                                v427 = *(*(&v631 + 1) + 8 * m);
                                v627 = 0u;
                                v628 = 0u;
                                v629 = 0u;
                                v630 = 0u;
                                v428 = [dictionary3 objectForKeyedSubscript:v427];
                                v429 = [v428 countByEnumeratingWithState:&v627 objects:v626 count:16];
                                if (v429)
                                {
                                  v430 = v429;
                                  v431 = *v628;
                                  do
                                  {
                                    for (n = 0; n != v430; ++n)
                                    {
                                      if (*v628 != v431)
                                      {
                                        objc_enumerationMutation(v428);
                                      }

                                      v433 = MEMORY[0x1E696AD98];
                                      [v23 ubInferenceMainImageDownscalingFactor];
                                      [v433 numberWithFloat:?];
                                      [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
                                    }

                                    v430 = [v428 countByEnumeratingWithState:&v627 objects:v626 count:16];
                                  }

                                  while (v430);
                                }
                              }

                              v604 = OUTLINED_FUNCTION_55_9();
                            }

                            while (v604);
                          }
                        }

                        dictionary7 = [MEMORY[0x1E695DF90] dictionary];
                        [v23 portraitEffectsMatteMainImageDownscalingFactor];
                        if (v435 != 0.0)
                        {
                          if (portraitEffectsMatteDeliveryEnabled)
                          {
                            v436 = MEMORY[0x1E696AD98];
                            [v23 portraitEffectsMatteMainImageDownscalingFactor];
                            [dictionary7 setObject:objc_msgSend(v436 forKeyedSubscript:{"numberWithFloat:"), 0x1F21AABB0}];
                          }

                          memset(v625, 0, sizeof(v625));
                          enabledSemanticSegmentationMatteURNs4 = [v23 enabledSemanticSegmentationMatteURNs];
                          v438 = [enabledSemanticSegmentationMatteURNs4 countByEnumeratingWithState:v625 objects:v624 count:16];
                          if (v438)
                          {
                            v439 = v438;
                            do
                            {
                              for (ii = 0; ii != v439; ++ii)
                              {
                                OUTLINED_FUNCTION_10_18();
                                if (!v106)
                                {
                                  objc_enumerationMutation(enabledSemanticSegmentationMatteURNs4);
                                }

                                if (BWPhotoEncoderAttachedMediaKeyForSemanticSegmentationMatteURN(*(*(&v625[0] + 1) + 8 * ii)))
                                {
                                  v441 = MEMORY[0x1E696AD98];
                                  [v23 portraitEffectsMatteMainImageDownscalingFactor];
                                  [v441 numberWithFloat:?];
                                  [OUTLINED_FUNCTION_24_1() setObject:? forKeyedSubscript:?];
                                }
                              }

                              v439 = [enabledSemanticSegmentationMatteURNs4 countByEnumeratingWithState:v625 objects:v624 count:16];
                            }

                            while (v439);
                          }
                        }

                        deviceHasFlash = [v23 deviceHasFlash];
                        if (v540 == 1)
                        {
                          v443 = 1;
                        }

                        else
                        {
                          v443 = deviceHasFlash;
                        }

                        v623 = 0;
                        v622 = 0;
                        v743[0] = [FigCaptureStillImageUnifiedBracketingSinkPipeline _buildScaleAndEncodeSubPipelineWithPipelineStage:v589 graph:v535 nodeConfiguration:provider stillImageSinkPipelineWithConfiguration:v565 sensorConfigurationsByPortType:v23 supportsScaling:dictionary provideMeteorHeadroom:1 providePostEncodeInferences:v547 & 1u | (v540 == 1) semanticDevelopmentVersion:captureTimePhotosCurationSupported constituentPhotoDeliveryEnabled:semanticDevelopmentVersion demosaicedRawEnabled:v533 nonPropagatedMainImageDownscalingFactorByAttachedMediaKey:dictionary6 propagatedMainImageDownscalingFactorByAttachedMediaKey:dictionary7 inferenceScheduler:delegate subPipelineInputOut:&v623 subPipelineOutputOut:&v622 cameraSupportsFlash:v443 cinematicFramingStatesProvider:scheduler];
                        if (v743[0])
                        {
                          OUTLINED_FUNCTION_2_64();
                        }

                        else
                        {
                          if ([provider connectOutput:v586 toInput:v623 pipelineStage:v535])
                          {
                            v444 = v622;
                            if ([v566 optimizesImagesForOfflineVideoStabilization])
                            {
                              dictionary8 = [MEMORY[0x1E695DF90] dictionary];
                              v618 = 0u;
                              v619 = 0u;
                              v620 = 0u;
                              v621 = 0u;
                              if (OUTLINED_FUNCTION_53_8())
                              {
                                do
                                {
                                  OUTLINED_FUNCTION_42();
                                  if (!v106)
                                  {
                                    objc_enumerationMutation(dictionary);
                                  }

                                  [dictionary8 setObject:objc_msgSend(objc_msgSend(dictionary forKeyedSubscript:{"objectForKeyedSubscript:", **(&v618 + 1)), "sensorIDDictionary"), **(&v618 + 1)}];
                                  OUTLINED_FUNCTION_46_10();
                                }

                                while (!v106 || OUTLINED_FUNCTION_53_8());
                              }

                              horizontalSensorBinningFactor = [v23 horizontalSensorBinningFactor];
                              verticalSensorBinningFactor = [v23 verticalSensorBinningFactor];
                              [v23 maxSupportedFrameRate];
                              v449 = FigCaptureBuildMotionAttachmentsNode(v589, v444, horizontalSensorBinningFactor, verticalSensorBinningFactor, v596, [v23 motionAttachmentsSource], dictionary8, objc_msgSend(v23, "cameraInfoByPortType"), v448, v509, 0, 0, 1, 1, 0, v743);
                              if (v743[0])
                              {
                                goto LABEL_486;
                              }

                              v444 = v449;
                            }

                            v450 = [BWStillImageSampleBufferSinkNode alloc];
                            [v589 sinkID];
                            v451 = [OUTLINED_FUNCTION_8() initWithSinkID:?];
                            [v451 setName:@"Still Image Sink"];
                            [dictionary7 allKeys];
                            [OUTLINED_FUNCTION_8() setPropagatedAttachedMediaKeys:?];
                            [v451 setCameraSupportsFlash:v443];
                            v616 = v589;
                            v617 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                            OUTLINED_FUNCTION_9_34();
                            if (objc_msgSendSuper2(v452, v453, v451))
                            {
                              *(v589 + 72) = v451;
                              [v451 input];
                              if ([OUTLINED_FUNCTION_44_10() connectOutput:v444 toInput:? pipelineStage:?])
                              {
                                v615 = 0u;
                                v614 = 0u;
                                v613 = 0u;
                                v612 = 0u;
                                nodes = [v589 nodes];
                                v455 = [nodes countByEnumeratingWithState:&v612 objects:v611 count:16];
                                if (v455)
                                {
                                  v456 = v455;
                                  v457 = *v613;
                                  do
                                  {
                                    for (jj = 0; jj != v456; ++jj)
                                    {
                                      if (*v613 != v457)
                                      {
                                        objc_enumerationMutation(nodes);
                                      }

                                      v459 = *(*(&v612 + 1) + 8 * jj);
                                      [v459 setDeferredPreparePriority:1];
                                      memset(v610, 0, sizeof(v610));
                                      inputs = [v459 inputs];
                                      if ([inputs countByEnumeratingWithState:v610 objects:v609 count:16])
                                      {
                                        do
                                        {
                                          OUTLINED_FUNCTION_30_6();
                                          if (!v106)
                                          {
                                            objc_enumerationMutation(inputs);
                                          }

                                          [objc_msgSend(**(&v610[0] + 1) "connection")];
                                          OUTLINED_FUNCTION_46_10();
                                        }

                                        while (!v106 || [inputs countByEnumeratingWithState:v610 objects:v609 count:16]);
                                      }
                                    }

                                    v456 = [nodes countByEnumeratingWithState:&v612 objects:v611 count:16];
                                  }

                                  while (v456);
                                }

                                [*(v589 + 56) setDeferredPreparePriority:4];
                                goto LABEL_644;
                              }
                            }
                          }

                          OUTLINED_FUNCTION_0_61();
                        }

LABEL_486:
                        FigDebugAssert3();
                        goto LABEL_644;
                      }
                    }

LABEL_726:
                    OUTLINED_FUNCTION_0_61();
                    goto LABEL_486;
                  }

                  if (v572)
                  {
LABEL_555:
                    if ((v527 & (v513 > 0)) != 0)
                    {
                      [v600 complementMatteSuppressionDecisionWithISPDetectedFaces];
                      OUTLINED_FUNCTION_41_10();
                      if (v106)
                      {
                        v395 = v394;
                      }

                      else
                      {
                        v395 = 4;
                      }

                      v541 = [[BWMatteMediaSuppressionNode alloc] initWithBehavior:v395 | v541];
                      [(BWNode *)v541 setName:@"Matting Media Suppression Node"];
                      v639 = v319;
                      v640 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                      OUTLINED_FUNCTION_9_34();
                      if ((objc_msgSendSuper2(v397, v398, v541) & 1) == 0)
                      {
                        goto LABEL_561;
                      }

                      [(BWNode *)v541 input];
                      if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                      {
                        goto LABEL_561;
                      }

LABEL_572:
                      output5 = [(BWNode *)v541 output];
                      v319 = v589;
                      goto LABEL_573;
                    }

                    v399 = +[BWStillImageConditionalRouterPersonSegmentationAndMattingConfiguration personSegmentationAndMattingConfiguration];
                    k = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v399];
                    [(BWNode *)k setName:@"Matting Conditional Router"];
                    v643 = v319;
                    v644 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                    OUTLINED_FUNCTION_9_34();
                    if (objc_msgSendSuper2(v400, v401, k))
                    {
                      output4 = [[BWInferenceNode alloc] initWithScheduler:delegate priority:*(v319 + 52)];
                      if ((v527 & 1) == 0)
                      {
                        OUTLINED_FUNCTION_5_50();
                        [output4 addInferenceOfType:104 version:? configuration:?];
                        [output4 setName:@"PersonSemantics"];
                      }

                      [v23 portraitEffectsMatteMainImageDownscalingFactor];
                      v403 = v402;
                      enabledSemantics2 = [(BWPersonSemanticsConfiguration *)v507 enabledSemantics];
                      metalCommandQueue2 = [v565 metalCommandQueue];
                      [v23 clientIsCameraOrDerivative];
                      OUTLINED_FUNCTION_25_12();
                      if ([(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v319 _addMattingInferenceToNode:output4 mattingVersion:v406 refinedDepthEnabled:v407 mainImageDownscalingFactor:enabledSemantics2 enabledSemantics:metalCommandQueue2 metalCommandQueue:v538 mattingsensorConfigurationsByPortType:v408 clientIsCameraOrDerivative:v403 requiredAdditionalInferenceOutputBuffers:v89 zoomFactorForPortrait:v499])
                      {
                        goto LABEL_696;
                      }

                      v642.receiver = v319;
                      v642.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                      if ((objc_msgSendSuper2(&v642, v581, output4, &v742) & 1) == 0)
                      {
                        OUTLINED_FUNCTION_0_61();
                        goto LABEL_486;
                      }

                      v409 = [BWFunnelNode alloc];
                      OUTLINED_FUNCTION_26_12();
                      v541 = [v410 initWithNumberOfInputs:? mediaType:?];
                      [(BWNode *)v541 setName:@"Matting Funnel"];
                      v641.receiver = v319;
                      v641.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                      if ((objc_msgSendSuper2(&v641, v581, v541, &v742) & 1) == 0)
                      {
                        goto LABEL_726;
                      }

                      [(BWNode *)k input];
                      if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                      {
                        goto LABEL_726;
                      }

                      -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](k, "outputs"), "objectAtIndexedSubscript:", [v399 defaultOutputIndex]);
                      [objc_msgSend(OUTLINED_FUNCTION_45_1() "inputs")];
                      if (([OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                      {
                        goto LABEL_726;
                      }

                      -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](k, "outputs"), "objectAtIndexedSubscript:", [v399 personSegmentationAndMattingOuputIndex]);
                      [output4 input];
                      if (([OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                      {
                        goto LABEL_726;
                      }

                      [output4 output];
                      [objc_msgSend(OUTLINED_FUNCTION_45_1() "inputs")];
                      [OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?];
                      OUTLINED_FUNCTION_21_19();
                      if ((v411 & 1) == 0)
                      {
                        goto LABEL_726;
                      }

                      goto LABEL_572;
                    }

LABEL_561:
                    OUTLINED_FUNCTION_0_61();
                    goto LABEL_486;
                  }

                  v485 = [[BWInferenceNode alloc] initWithScheduler:delegate priority:*(v319 + 52)];
                  if (![(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v319 _addLandmarksInferenceToNode:v485])
                  {
                    v645 = v319;
                    v646 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                    OUTLINED_FUNCTION_9_34();
                    if ((objc_msgSendSuper2(v486, v487, v485) & 1) == 0)
                    {
                      goto LABEL_561;
                    }

                    [(BWNode *)v485 input];
                    if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                    {
                      goto LABEL_561;
                    }

                    [(BWNode *)v485 output];
                    goto LABEL_555;
                  }

LABEL_696:
                  v497 = -12780;
LABEL_697:
                  v743[0] = v497;
                  goto LABEL_644;
                }

                k = v564;
                objc = [BWStillImageConditionalRouterUBConfiguration configurationWithPortTypes:v564];
                output4 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:objc];
                v662 = v589;
                v663 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                OUTLINED_FUNCTION_9_34();
                if (objc_msgSendSuper2(v364, v365, output4))
                {
                  [output4 setName:@"UB Router for ConstituentPhoto without Depth"];
                  [output4 input];
                  if ([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?])
                  {
                    v366 = [BWStillImageMultiCameraDoserNode alloc];
                    [dictionary allKeys];
                    v367 = [OUTLINED_FUNCTION_4() initWithPortTypes:?];
                    v661.receiver = v589;
                    v661.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                    if ((objc_msgSendSuper2(&v661, v581, v367, &v742) & 1) == 0)
                    {
                      OUTLINED_FUNCTION_0_61();
                      goto LABEL_486;
                    }

                    v588 = output4;
                    v368 = [BWFunnelNode alloc];
                    [(BWStillImageConditionalRouterNode *)v564 count];
                    v369 = [OUTLINED_FUNCTION_4() initWithNumberOfInputs:? mediaType:?];
                    v660.receiver = v589;
                    v660.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                    if ((objc_msgSendSuper2(&v660, v581, v369, &v742) & 1) == 0)
                    {
                      OUTLINED_FUNCTION_0_61();
                      goto LABEL_486;
                    }

                    v370 = [v369 setName:@"Camera Calibration Data"];
                    v659 = 0u;
                    v658 = 0u;
                    v657 = 0u;
                    v656 = 0u;
                    v372 = OUTLINED_FUNCTION_37_2(v370, v371, &v656, v655);
                    if (v372)
                    {
                      v373 = v372;
                      k = *v657;
LABEL_529:
                      output4 = 0;
                      while (1)
                      {
                        OUTLINED_FUNCTION_30_6();
                        if (!v106)
                        {
                          objc_enumerationMutation(v564);
                        }

                        v374 = [(BWStillImageConditionalRouterUBConfiguration *)objc outputIndexForPortType:*(*(&v656 + 1) + 8 * output4)];
                        if (v374 == 0x7FFFFFFFFFFFFFFFLL)
                        {
                          goto LABEL_696;
                        }

                        v375 = v374;
                        if (([provider connectOutput:objc_msgSend(objc_msgSend(v588 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", v374), objc_msgSend(objc_msgSend(v367, "inputs"), "objectAtIndexedSubscript:", v374), v596}] & 1) == 0 || (objc_msgSend(provider, "connectOutput:toInput:pipelineStage:", objc_msgSend(objc_msgSend(v367, "outputs"), "objectAtIndexedSubscript:", v375), objc_msgSend(objc_msgSend(v369, "inputs"), "objectAtIndexedSubscript:", v375), v596) & 1) == 0)
                        {
                          goto LABEL_561;
                        }

                        if (v373 == ++output4)
                        {
                          v373 = [(BWStillImageConditionalRouterNode *)v564 countByEnumeratingWithState:&v656 objects:v655 count:16];
                          if (v373)
                          {
                            goto LABEL_529;
                          }

                          break;
                        }
                      }
                    }

                    v309 = [[BWStillImageCameraCalibrationDataNode alloc] initWithSensorConfigurationsByPortType:dictionary];
                    [(BWStillImageCameraCalibrationDataNode *)v309 setPropagatesDetectedObjects:1];
                    -[BWStillImageCameraCalibrationDataNode setBaseZoomFactorsByPortType:](v309, "setBaseZoomFactorsByPortType:", [v23 baseZoomFactorsByPortType]);
                    [(BWNode *)v309 setName:@"Still Image Camera Calibration Data"];
                    v653 = v589;
                    v654 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                    OUTLINED_FUNCTION_9_34();
                    if ((objc_msgSendSuper2(v376, v377, v309) & 1) == 0)
                    {
                      goto LABEL_561;
                    }

                    [v369 output];
                    [OUTLINED_FUNCTION_45_1() input];
                    [OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?];
                    OUTLINED_FUNCTION_21_19();
                    v303 = v558;
                    LODWORD(v302) = depthDataType2;
                    if ((v378 & 1) == 0)
                    {
                      goto LABEL_561;
                    }

                    goto LABEL_539;
                  }
                }

                goto LABEL_470;
              }

              goto LABEL_460;
            }
          }

          else
          {
            [v23 depthDataTargetDimensions];
            clientIsCameraOrDerivative2 = [OUTLINED_FUNCTION_25_0() clientIsCameraOrDerivative];
            v307 = [BWStillImageFocusPixelDisparityNode alloc];
            *&v308 = v89;
            v309 = [(BWStillImageFocusPixelDisparityNode *)v307 initWithNodeConfiguration:v565 sensorConfiguration:v557 disparityMapWidth:v302 disparityMapHeight:v302 >> 32 depthIsAlwaysHighQuality:clientIsCameraOrDerivative2 defaultZoomFactor:v308];
            v674[10] = v589;
            v674[11] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
            OUTLINED_FUNCTION_11_30();
            if ((objc_msgSendSuper2(v310, v311, v309) & 1) == 0)
            {
              goto LABEL_470;
            }

            [(BWNode *)v309 input];
            OUTLINED_FUNCTION_31_12();
            if ((v568 & 1) == 0)
            {
              OUTLINED_FUNCTION_29_10(clientIsCameraOrDerivative2, v312, v313, v314);
              OUTLINED_FUNCTION_21_19();
              LODWORD(v302) = depthDataType2;
              if (v325)
              {
                goto LABEL_539;
              }

              goto LABEL_470;
            }

            if (([OUTLINED_FUNCTION_12_31() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
            {
              goto LABEL_470;
            }

            [(BWNode *)v309 output];
            OUTLINED_FUNCTION_23_13();
            if (!v106)
            {
              output4 = v315;
LABEL_460:
              if (!v506)
              {
                v316 = 0;
                goto LABEL_488;
              }

              v316 = objc_alloc_init(BWStillImageDisparitySplitterNode);
              [(BWNode *)v316 setName:@"Disparity/UB Splitter"];
              v674[2] = v589;
              v674[3] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
              OUTLINED_FUNCTION_7_40();
              if (objc_msgSendSuper2(v317, v318, v316))
              {
                [(BWNode *)v316 input];
                if ([OUTLINED_FUNCTION_6_44() connectOutput:output4 toInput:? pipelineStage:?])
                {
                  output4 = [(BWStillImageDisparitySplitterNode *)v316 disparityOutput];
LABEL_488:
                  v674[0] = v556;
                  v674[1] = firstObject4;
                  v337 = [MEMORY[0x1E695DEC8] arrayWithObjects:v674 count:2];
                  v338 = [[BWStillImageMultiCameraDoserNode alloc] initWithPortTypes:v337];
                  v672 = v589;
                  v673 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                  OUTLINED_FUNCTION_11_30();
                  if (objc_msgSendSuper2(v339, v340, v338))
                  {
                    v341 = [v337 indexOfObject:v556];
                    if (v341 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      goto LABEL_696;
                    }

                    v342 = v341;
                    v343 = [v337 indexOfObject:firstObject4];
                    if (v343 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      goto LABEL_696;
                    }

                    v344 = v343;
                    if ([provider connectOutput:output5 toInput:objc_msgSend(-[BWPipelineStage inputs](v338 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", v342), v543}] & 1) != 0 && (objc_msgSend(provider, "connectOutput:toInput:pipelineStage:", output4, objc_msgSend(-[BWPipelineStage inputs](v338, "inputs"), "objectAtIndexedSubscript:", v344), v543))
                    {
                      v345 = [(BWPipelineStage *)v338 outputIndexForPortType:v556];
                      if (v345 == 0x7FFFFFFFFFFFFFFFLL)
                      {
                        goto LABEL_696;
                      }

                      v346 = v345;
                      v347 = [(BWPipelineStage *)v338 outputIndexForPortType:firstObject4];
                      if (v347 == 0x7FFFFFFFFFFFFFFFLL)
                      {
                        goto LABEL_696;
                      }

                      v348 = v347;
                      output4 = [-[BWPipelineStage outputs](v338 "outputs")];
                      [-[BWPipelineStage outputs](v338 "outputs")];
                      if (v533)
                      {
                        v349 = [BWStillImageDualPhotoFacePropagatorNode alloc];
                        [objc_msgSend(OUTLINED_FUNCTION_25_0() "baseZoomFactorsByPortType")];
                        v338 = [OUTLINED_FUNCTION_7() initWithBaseZoomFactors:?];
                        v670 = v589;
                        v671 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                        OUTLINED_FUNCTION_11_30();
                        if ((objc_msgSendSuper2(v350, v351, v338) & 1) == 0)
                        {
                          goto LABEL_520;
                        }

                        [-[BWPipelineStage inputs](v338 "inputs")];
                        if (([OUTLINED_FUNCTION_6_44() connectOutput:output4 toInput:? pipelineStage:?] & 1) == 0)
                        {
                          goto LABEL_520;
                        }

                        [-[BWPipelineStage inputs](v338 "inputs")];
                        if (([OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                        {
                          goto LABEL_520;
                        }

                        output4 = [-[BWPipelineStage outputs](v338 "outputs")];
                        [-[BWPipelineStage outputs](v338 "outputs")];
                      }

                      if (!v506)
                      {
                        v352 = 0;
                        goto LABEL_510;
                      }

                      v338 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.inference.bravo" priority:*(v589 + 48)];
                      v352 = [[BWInferenceNode alloc] initWithScheduler:delegate priority:*(v589 + 52)];
                      [(BWNode *)v352 setName:@"Disparity"];
                      if ((v572 & 1) == 0 && [(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v589 _addLandmarksInferenceToNode:v352])
                      {
                        goto LABEL_696;
                      }

                      if (v527)
                      {
                        name = [(BWNode *)v352 name];
                        if ([(NSString *)name length])
                        {
                          v499 = @"Person Semantics";
                          [(NSString *)name stringByAppendingFormat:@" + %@"];
                        }

                        OUTLINED_FUNCTION_5_50();
                        [BWInferenceNode addInferenceOfType:v352 version:"addInferenceOfType:version:configuration:" configuration:104];
                      }

                      v668 = v589;
                      v669 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                      OUTLINED_FUNCTION_11_30();
                      if (objc_msgSendSuper2(v354, v355, v352))
                      {
                        processedOutput = [(BWStillImageDisparitySplitterNode *)v316 processedOutput];
                        [(BWNode *)v352 input];
                        if ([OUTLINED_FUNCTION_15_21() connectOutput:processedOutput toInput:? pipelineStage:?])
                        {
                          v572 = 1;
LABEL_510:
                          k = v589;
                          [v23 depthDataTargetDimensions];
                          if ([OUTLINED_FUNCTION_25_0() clientIsCameraOrDerivative])
                          {
                            v357 = 0;
                          }

                          else
                          {
                            v357 = 8;
                          }

                          v358 = [[BWStillImageBravoDisparityNode alloc] initWithNodeConfiguration:v565 sensorConfigurationsByPortType:dictionary disparityMapWidth:v338 disparityMapHeight:v338 >> 32 outputDisparityBufferCount:v357];
                          v666 = v589;
                          v667 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                          OUTLINED_FUNCTION_9_34();
                          if ((objc_msgSendSuper2(v359, v360, v358) & 1) == 0)
                          {
                            goto LABEL_520;
                          }

                          *(v589 + 80) = v358;
                          [(BWStillImageBravoDisparityNode *)v358 setShouldComputeDisparityWhenCalibrationFails:v541 ^ 1];
                          [(BWStillImageBravoDisparityNode *)v358 wideInput];
                          OUTLINED_FUNCTION_31_12();
                          if (([OUTLINED_FUNCTION_12_31() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                          {
                            goto LABEL_520;
                          }

                          [(BWStillImageBravoDisparityNode *)v358 telephotoInput];
                          [OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?];
                          OUTLINED_FUNCTION_21_19();
                          if ((v361 & 1) == 0)
                          {
                            goto LABEL_520;
                          }

                          output5 = [(BWNode *)v358 output];
                          v303 = v558;
                          if (!v506)
                          {
                            v319 = v589;
                            LODWORD(v302) = depthDataType2;
                            goto LABEL_540;
                          }

                          v309 = [[BWInferenceSynchronizerNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:1 indexOfInputProvidingPreferredInferences:1 errorHandlingModel:0];
                          [(BWNode *)v309 setName:@"Disparity/Landmarks Sync"];
                          [(BWStillImageCameraCalibrationDataNode *)v309 setSynchronizesTopLevelAttachments:1];
                          v664 = v589;
                          v665 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                          OUTLINED_FUNCTION_9_34();
                          LODWORD(v302) = depthDataType2;
                          if ((objc_msgSendSuper2(v362, v363, v309) & 1) == 0)
                          {
                            goto LABEL_520;
                          }

                          [(NSArray *)[(BWNode *)v309 inputs] objectAtIndexedSubscript:0];
                          if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                          {
                            goto LABEL_520;
                          }

                          [(BWNode *)v352 output];
                          [objc_msgSend(OUTLINED_FUNCTION_45_1() "inputs")];
                          v303 = v558;
                          if (([OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                          {
                            goto LABEL_520;
                          }

LABEL_539:
                          output5 = [(BWNode *)v309 output];
                          v319 = v589;
LABEL_540:
                          if ((v570 & (v551 | (v302 == 6))) == 1)
                          {
                            LOBYTE(v499) = 0;
                            v379 = -[BWDepthConverterNode initWithStillImageNodeConfiguration:cameraInfoByPortType:sensorIDDictionary:rgbPersonSegmentationEnabled:depthIsAlwaysHighQuality:depthOriginatesFromNeuralNetwork:backPressureDrivenPipelining:]([BWDepthConverterNode alloc], "initWithStillImageNodeConfiguration:cameraInfoByPortType:sensorIDDictionary:rgbPersonSegmentationEnabled:depthIsAlwaysHighQuality:depthOriginatesFromNeuralNetwork:backPressureDrivenPipelining:", v565, cameraInfoByPortType, [v557 sensorIDDictionary], v563, objc_msgSend(v23, "clientIsCameraOrDerivative"), v302 == 6);
                            v651 = v319;
                            v652 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                            OUTLINED_FUNCTION_9_34();
                            if ((objc_msgSendSuper2(v380, v381, v379) & 1) == 0)
                            {
                              goto LABEL_561;
                            }

                            [(BWNode *)v379 setName:@"Still Image Depth Converter"];
                            [v23 horizontalSensorBinningFactor];
                            [OUTLINED_FUNCTION_7() setHorizontalSensorBinningFactor:?];
                            [v23 verticalSensorBinningFactor];
                            [OUTLINED_FUNCTION_7() setVerticalSensorBinningFactor:?];
                            v382 = FigCaptureFrontDepthDataToRGBRotationAngle();
                            [(BWDepthConverterNode *)v379 setStillGDRFilteringSupportEnabled:1];
                            [(BWDepthConverterNode *)v379 setOutputFormat:1751411059];
                            [v23 depthDataTargetDimensions];
                            [OUTLINED_FUNCTION_7() setOutputDimensions:?];
                            [(BWDepthConverterNode *)v379 setBaseRotationDegrees:v382];
                            [(BWNode *)v379 input];
                            OUTLINED_FUNCTION_31_12();
                            if ((OUTLINED_FUNCTION_29_10(v382, v383, v384, v385) & 1) == 0)
                            {
                              goto LABEL_561;
                            }

                            *(v319 + 88) = v379;
                            output5 = [(BWNode *)v379 output];
                          }

                          goto LABEL_544;
                        }
                      }
                    }
                  }

LABEL_520:
                  OUTLINED_FUNCTION_0_61();
                  goto LABEL_486;
                }
              }

              goto LABEL_470;
            }
          }

          v320 = +[BWStillImageConditionalRouterInferenceConfiguration inferenceConfiguration];
          output4 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v320];
          k = v589;
          v674[8] = v589;
          v674[9] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
          OUTLINED_FUNCTION_9_34();
          if ((objc_msgSendSuper2(v321, v322, output4) & 1) == 0)
          {
            goto LABEL_470;
          }

          [output4 setName:@"Inference Conditional Router"];
          [output4 input];
          if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
          {
            goto LABEL_470;
          }

          [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.inference.bravo" priority:*(v589 + 48)];
          v323 = [[BWInferenceNode alloc] initWithScheduler:delegate priority:*(v589 + 52)];
          if ((v572 & 1) == 0)
          {
            v326 = portraitEffectsMatteDeliveryEnabled;
            if (v513 <= 0)
            {
              v326 = 0;
            }

            if (v326)
            {
              v324 = 0;
              goto LABEL_475;
            }

            if ([(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v589 _addLandmarksInferenceToNode:v323])
            {
              goto LABEL_696;
            }
          }

          v324 = 1;
LABEL_475:
          if ((v558 & v527) == 1)
          {
            name2 = [(BWNode *)v323 name];
            v328 = [(NSString *)name2 length];
            v329 = @"Person Semantics";
            if (v328)
            {
              v499 = @"Person Semantics";
              v329 = [(NSString *)name2 stringByAppendingFormat:@" + %@"];
            }

            [(BWNode *)v323 setName:v329];
            OUTLINED_FUNCTION_5_50();
            [BWInferenceNode addInferenceOfType:v323 version:"addInferenceOfType:version:configuration:" configuration:104];
            if (v513 >= 1)
            {
              [v23 portraitEffectsMatteMainImageDownscalingFactor];
              if (-[FigCaptureStillImageUnifiedBracketingSinkPipeline _addMattingInferenceToNode:mattingVersion:refinedDepthEnabled:mainImageDownscalingFactor:enabledSemantics:metalCommandQueue:mattingsensorConfigurationsByPortType:clientIsCameraOrDerivative:requiredAdditionalInferenceOutputBuffers:zoomFactorForPortrait:](v589, v323, v504, 0, -[BWPersonSemanticsConfiguration enabledSemantics](v507, "enabledSemantics"), [v565 metalCommandQueue], v538, objc_msgSend(v23, "clientIsCameraOrDerivative"), v490, v89, v503))
              {
                goto LABEL_696;
              }
            }
          }

          v674[6] = v589;
          v674[7] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
          OUTLINED_FUNCTION_7_40();
          if (objc_msgSendSuper2(v330, v331, v323))
          {
            v572 = v324;
            v332 = [objc_msgSend(output4 "outputs")];
            [(BWNode *)v323 input];
            if ([OUTLINED_FUNCTION_15_21() connectOutput:v332 toInput:? pipelineStage:?])
            {
              [(BWNode *)v323 output];
              v309 = [[BWInferenceSynchronizerNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:1 indexOfInputProvidingPreferredInferences:1 errorHandlingModel:0];
              [(BWNode *)v309 setName:@"Disparity/Inference Sync"];
              [(BWStillImageCameraCalibrationDataNode *)v309 setSynchronizesTopLevelAttachments:1];
              v674[4] = v589;
              v674[5] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
              OUTLINED_FUNCTION_11_30();
              if (objc_msgSendSuper2(v333, v334, v309))
              {
                v335 = [objc_msgSend(output4 "outputs")];
                [(NSArray *)[(BWNode *)v309 inputs] objectAtIndexedSubscript:0];
                OUTLINED_FUNCTION_31_12();
                if (([BWInferenceNode connectOutput:v323 toInput:"connectOutput:toInput:pipelineStage:" pipelineStage:v335]& 1) != 0)
                {
                  [(NSArray *)[(BWNode *)v309 inputs] objectAtIndexedSubscript:1];
                  [OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?];
                  OUTLINED_FUNCTION_21_19();
                  v303 = v558;
                  LODWORD(v302) = depthDataType2;
                  if (v336)
                  {
                    goto LABEL_539;
                  }
                }
              }
            }
          }

          goto LABEL_470;
        }

        if (v551)
        {
LABEL_442:
          v304 = v530 ^ 1;
          goto LABEL_444;
        }

LABEL_440:
        v304 = 0;
        if (v302 > 9)
        {
          goto LABEL_444;
        }

        OUTLINED_FUNCTION_13_25();
        if (v106)
        {
          goto LABEL_444;
        }

        goto LABEL_442;
      }
    }

    else
    {
      v131 = 0;
    }

    v132 = v555;
    goto LABEL_201;
  }

  v76 = v589;
  v85 = v566;
  if (v117 > 1)
  {
    goto LABEL_156;
  }

LABEL_712:
  v743[0] = FigSignalErrorAtGM();
LABEL_644:
  result = v743[0];
  if (!v743[0])
  {
    if (v742)
    {
      return [v742 code];
    }
  }

  return result;
}

- (uint64_t)_buildRedEyeReductionSubPipelineWithName:(uint64_t)name pipelineStage:(uint64_t)stage graph:(uint64_t)graph sensorConfigurationsByPortType:(uint64_t)type inferenceScheduler:(uint64_t *)scheduler subPipelineInputOut:(uint64_t *)out subPipelineOutputOut:
{
  if (result)
  {
    v10 = result;
    v11 = +[BWLandmarksInferenceConfiguration configuration];
    [v11 setDetectLandmarksInFullSizeInput:1];
    v12 = +[BWStillImageConditionalRouterLandmarksConfiguration landmarksConfiguration];
    v13 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v12];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Landmarks Input Routing Node", a2];
    [OUTLINED_FUNCTION_4() setName:?];
    OUTLINED_FUNCTION_40_11();
    if (objc_msgSendSuper2(v14, v15, v13) & 1) != 0 && (v16 = -[BWInferenceNode initWithScheduler:priority:]([BWInferenceNode alloc], "initWithScheduler:priority:", type, *(v10 + 52)), v34 = a2, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Landmarks Node", a2], objc_msgSend(OUTLINED_FUNCTION_8(), "setName:"), -[BWInferenceNode addInferenceOfType:version:configuration:](v16, "addInferenceOfType:version:configuration:", 801, objc_msgSend(v11, "landmarksInferenceVersion") & 0xFFFFFFFFFFFFLL, v11), OUTLINED_FUNCTION_40_11(), (objc_msgSendSuper2(v17, v18, v16)) && (v19 = [BWFunnelNode alloc], OUTLINED_FUNCTION_26_12(), v21 = objc_msgSend(v20, "initWithNumberOfInputs:mediaType:holdMessages:"), OUTLINED_FUNCTION_40_11(), (objc_msgSendSuper2(v22, v23, v21)) && (v24 = -[BWNode input](v13, "input"), v25 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v13, "outputs"), "objectAtIndexedSubscript:", objc_msgSend(v12, "defaultOutputIndex")), objc_msgSend(objc_msgSend(v21, "inputs"), "objectAtIndexedSubscript:", 0), (objc_msgSend(OUTLINED_FUNCTION_6_44(), "connectOutput:toInput:pipelineStage:", v25)) && (v26 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v13, "outputs"), "objectAtIndexedSubscript:", objc_msgSend(v12, "landmarksOutputIndex")), -[BWNode input](v16, "input"), (objc_msgSend(OUTLINED_FUNCTION_6_44(), "connectOutput:toInput:pipelineStage:", v26)) && (v27 = -[BWNode output](v16, "output"), objc_msgSend(objc_msgSend(v21, "inputs"), "objectAtIndexedSubscript:", 1), (objc_msgSend(OUTLINED_FUNCTION_6_44(), "connectOutput:toInput:pipelineStage:", v27)) && (objc_msgSend(v21, "output"), v28 = -[BWRedEyeReducerNode initWithVersion:sensorConfigurationsByPortType:]([BWRedEyeReducerNode alloc], "initWithVersion:sensorConfigurationsByPortType:", 1, graph), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@ Red Eye Reducer", v34), objc_msgSend(OUTLINED_FUNCTION_8(), "setName:"), -[BWRedEyeReducerNode setInferenceType:](v28, "setInferenceType:", 801), -[BWRedEyeReducerNode setInferenceAttachmentKey:](v28, "setInferenceAttachmentKey:", 0x1F219E5F0), OUTLINED_FUNCTION_40_11(), (objc_msgSendSuper2(v29, v30, v28)) && (-[BWNode input](v28, "input"), (objc_msgSend(OUTLINED_FUNCTION_4_51(), "connectOutput:toInput:pipelineStage:")))
    {
      output = [(BWNode *)v28 output];
      result = 4294954516;
      if (v24)
      {
        if (output)
        {
          result = 0;
          *scheduler = v24;
          *out = output;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      return 4294954516;
    }
  }

  return result;
}

- (uint64_t)_addLandmarksInferenceToNode:(uint64_t)result
{
  if (result)
  {
    name = [a2 name];
    v4 = [name length];
    v5 = @"Landmarks";
    if (v4)
    {
      v5 = [name stringByAppendingFormat:@" + %@", @"Landmarks"];
    }

    [a2 setName:v5];
    v6 = +[BWLandmarksInferenceConfiguration configuration];
    +[BWLandmarksInferenceConfiguration portraitMaximumNumberOfFaces];
    [OUTLINED_FUNCTION_4() setMaximumNumberOfFaces:?];
    [v6 landmarksInferenceVersion];
    v7 = OUTLINED_FUNCTION_38();

    return [v7 addInferenceOfType:801 version:? configuration:?];
  }

  return result;
}

- (uint64_t)_addMattingInferenceToNode:(unsigned int)node mattingVersion:(uint64_t)version refinedDepthEnabled:(unsigned int)enabled mainImageDownscalingFactor:(uint64_t)factor enabledSemantics:(void *)semantics metalCommandQueue:(char)queue mattingsensorConfigurationsByPortType:(float)type clientIsCameraOrDerivative:(float)self0 requiredAdditionalInferenceOutputBuffers:(unsigned int)self1 zoomFactorForPortrait:
{
  if (!self)
  {
    return 0;
  }

  name = [a2 name];
  v21 = [name length];
  v22 = @"Matting";
  factorCopy = factor;
  if (v21)
  {
    v22 = [name stringByAppendingFormat:@" + %@", @"Matting"];
  }

  [a2 setName:v22];
  v23 = [objc_msgSend(semantics "allKeys")];
  v24 = [objc_msgSend(semantics objectForKeyedSubscript:{v23), "sensorIDDictionary"}];
  v25 = +[FigCaptureCameraParameters sharedInstance];
  v26 = [objc_msgSend(semantics objectForKeyedSubscript:{v23), "sensorIDString"}];
  *&v27 = derivative;
  if ([(FigCaptureCameraParameters *)v25 sdofRenderingVersionForPortType:v23 sensorIDString:v26 zoomFactor:v27])
  {
    *&v28 = derivative;
    v29 = [FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v24 zoomFactor:v28];
  }

  else
  {
    v29 = 0;
  }

  if (node == 1)
  {
    v30 = [(BWInferenceConfiguration *)[BWMattingInferenceConfiguration alloc] initWithInferenceType:201];
    [(BWInferenceConfiguration *)v30 setPriority:*(self + 52)];
    [(BWInferenceConfiguration *)v30 setTuningParameters:v24];
    [(BWMattingInferenceConfiguration *)v30 setSdofRenderingTuningParameters:v29];
    *&v31 = type;
    [(BWMattingInferenceConfiguration *)v30 setMainImageDownscalingFactor:v31];
    [(BWMattingInferenceConfiguration *)v30 setRefinedDepthDeliveryEnabled:version];
    [(BWMattingInferenceConfiguration *)v30 setMetalCommandQueue:factor];
    BWInferenceVersionMakeMajor(1);
    v32 = [OUTLINED_FUNCTION_38() addInferenceOfType:201 version:? configuration:?];
LABEL_27:
    if ((queue & 1) == 0)
    {
      [a2 setAwaitAsynchronousOutputs:1];
    }

    if (buffers)
    {
      [a2 setAdditionalOutputPoolRetainedBufferCount:buffers];
    }

    return v32;
  }

  queueCopy = queue;
  if ([(FigCaptureCameraParameters *)v25 learnedMattingVersion]< 1)
  {
    versionCopy = 1;
  }

  else
  {
    versionCopy = version;
  }

  versionCopy3 = version | 2;
  if (!versionCopy)
  {
    versionCopy3 = version;
  }

  if ((enabled & 1) == 0)
  {
    versionCopy3 = version;
  }

  v35 = enabled & 0x78 | (4 * ((enabled >> 1) & 1)) | versionCopy3;
  if (v35)
  {
    v36 = [(BWInferenceConfiguration *)[BWMattingV2InferenceConfiguration alloc] initWithInferenceType:201];
    [(BWMattingV2InferenceConfiguration *)v36 setSensorConfigurationsByPortType:semantics];
    [(BWMattingV2InferenceConfiguration *)v36 setEnabledMattes:v35];
    [(BWMattingV2InferenceConfiguration *)v36 setTuningConfiguration:2];
    [(BWInferenceConfiguration *)v36 setPriority:*(self + 52)];
    [(BWMattingV2InferenceConfiguration *)v36 setSdofRenderingTuningParameters:v29];
    *&v37 = type;
    [(BWMattingV2InferenceConfiguration *)v36 setMainImageDownscalingFactor:v37];
    [(BWMattingV2InferenceConfiguration *)v36 setDepthDataDeliveryEnabled:version];
    [(BWMattingV2InferenceConfiguration *)v36 setMetalCommandQueue:factorCopy];
    BWInferenceVersionMakeMajor(node);
    v38 = [OUTLINED_FUNCTION_38() addInferenceOfType:201 version:? configuration:?];
    if (v38)
    {
      return v38;
    }
  }

  if (enabled)
  {
    v39 = versionCopy;
  }

  else
  {
    v39 = 1;
  }

  if (v39)
  {
    v32 = 0;
    queue = queueCopy;
    goto LABEL_27;
  }

  name2 = [a2 name];
  v41 = [name2 length];
  v42 = @"Learned Matting";
  queue = queueCopy;
  if (v41)
  {
    v42 = [name2 stringByAppendingFormat:@" + %@", @"Learned Matting"];
  }

  [a2 setName:v42];
  v43 = [(BWInferenceConfiguration *)[BWLearnedMattingInferenceConfiguration alloc] initWithInferenceType:107];
  [(BWTiledEspressoInferenceConfiguration *)v43 setMetalCommandQueue:0];
  *&v44 = type;
  [(BWLearnedMattingInferenceConfiguration *)v43 setMainImageDownscalingFactor:v44];
  BWInferenceVersionMakeMajor([(FigCaptureCameraParameters *)v25 learnedMattingVersion]);
  v32 = [OUTLINED_FUNCTION_38() addInferenceOfType:107 version:? configuration:?];
  if (!v32)
  {
    goto LABEL_27;
  }

  return v32;
}

- (uint64_t)_buildScaleAndEncodeSubPipelineWithPipelineStage:(uint64_t)result graph:(uint64_t)graph nodeConfiguration:(void *)configuration stillImageSinkPipelineWithConfiguration:(uint64_t)withConfiguration sensorConfigurationsByPortType:(void *)type supportsScaling:(uint64_t)scaling provideMeteorHeadroom:(int)headroom providePostEncodeInferences:(int)inferences semanticDevelopmentVersion:(char)version constituentPhotoDeliveryEnabled:(unsigned int)self0 demosaicedRawEnabled:(unsigned __int8)self1 nonPropagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)self2 propagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)self3 inferenceScheduler:(uint64_t)self4 subPipelineInputOut:(uint64_t)self5 subPipelineOutputOut:(uint64_t)self6 cameraSupportsFlash:(unsigned __int8)self7 cinematicFramingStatesProvider:(void *)self8
{
  v90 = result;
  if (!result)
  {
    return result;
  }

  v123[0] = 0;
  if (!out || !outputOut)
  {
    return FigSignalErrorAtGM();
  }

  [type sinkConfiguration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sinkConfiguration = [type sinkConfiguration];
  }

  else
  {
    sinkConfiguration = 0;
  }

  if ([type cinematicFramingWarpingRequired])
  {
    v24 = -[BWCinematicFramingWarpingNode initWithFramingStatesProvider:outputDimensions:maxLossyCompressionLevel:]([BWCinematicFramingWarpingNode alloc], provider, [type cinematicFramingWarpingOutputDimensions], objc_msgSend(type, "maxLossyCompressionLevel"));
    [v24 setName:@"CinematicFramingWarper"];
    v122.receiver = v90;
    v122.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    if (!objc_msgSendSuper2(&v122, &selRef_acquireWithError_, v24, v123))
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_62;
    }

    input = [v24 input];
    output = [v24 output];
  }

  else
  {
    output = 0;
    input = 0;
  }

  if (headroom)
  {
    inferencesCopy = inferences;
    v26 = sinkConfiguration;
    v27 = input;
    v28 = [[BWStillImageScalerNode alloc] initWithBasePoolCapacity:1 nodeConfiguration:withConfiguration];
    [(BWNode *)v28 setName:@"Scaler"];
    [(BWStillImageScalerNode *)v28 setBlackFillingRequired:rawEnabled];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary addEntriesFromDictionary:key];
    [dictionary addEntriesFromDictionary:mediaKey];
    [OUTLINED_FUNCTION_18_17() setMainImageDownscalingFactorByAttachedMediaKey:?];
    v121.receiver = v90;
    v121.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    if ((objc_msgSendSuper2(&v121, sel_addNode_error_, v28, v123) & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_62;
    }

    if (output && ([configuration connectOutput:output toInput:-[BWNode input](v28 pipelineStage:{"input"), graph}] & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_65;
    }

    input = v27;
    if (!v27)
    {
      input = [(BWNode *)v28 input];
    }

    output = [(BWNode *)v28 output];
    sinkConfiguration = v26;
    inferences = inferencesCopy;
  }

  if (inferences)
  {
    v30 = [[BWMeteorHeadroomNode alloc] initWithNodeConfiguration:withConfiguration sensorConfigurationsByPortType:scaling];
    [(BWNode *)v30 setName:@"Meteor Headroom"];
    [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters meteorHeadroomProcessingType];
    [OUTLINED_FUNCTION_4() setHeadroomProcessingType:?];
    [type gainMapMainImageDownscalingFactor];
    [(BWMeteorHeadroomNode *)v30 setGainMapMainImageDownscalingFactor:?];
    v120.receiver = v90;
    v120.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    if ((objc_msgSendSuper2(&v120, sel_addNode_error_, v30, v123) & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_62;
    }

    if (output && ([configuration connectOutput:output toInput:-[BWNode input](v30 pipelineStage:{"input"), graph}] & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_65;
    }

    if (!input)
    {
      input = [(BWNode *)v30 input];
    }

    v81 = input;
    output = [(BWNode *)v30 output];
  }

  else
  {
    v81 = input;
  }

  [sinkConfiguration previewQualityAdjustedPhotoFilterRenderingEnabled];
  OUTLINED_FUNCTION_41_10();
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  v35 = [BWPhotoEncoderNode alloc];
  if (!version)
  {
    scheduler = 0;
  }

  v36 = [type stillImageSinkPipelineProcessingMode] == 1;
  BYTE1(v73) = [type clientIsCameraOrDerivative];
  LOBYTE(v73) = v36;
  v37 = [BWPhotoEncoderNode initWithNodeConfiguration:v35 sensorConfigurationsByPortType:"initWithNodeConfiguration:sensorConfigurationsByPortType:semanticDevelopmentVersion:inferenceScheduler:alwaysAwaitInference:portraitRenderQuality:deferredPhotoProcessorEnabled:clientIsCameraOrDerivative:" semanticDevelopmentVersion:withConfiguration inferenceScheduler:scaling alwaysAwaitInference:enabled portraitRenderQuality:scheduler deferredPhotoProcessorEnabled:enabled > 0 clientIsCameraOrDerivative:v34];
  [(BWNode *)v37 setName:@"Encoder"];
  [(BWPhotoEncoderNode *)v37 setCameraSupportsFlash:flash];
  [type usesHighEncodingPriority];
  [OUTLINED_FUNCTION_17() setUsesHighEncodingPriority:?];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v46 = OUTLINED_FUNCTION_54_6(dictionary2, v39, v40, v41, v42, v43, v44, v45, v73, v75, v18, outputOut, out, v81, graph, configuration, scaling, withConfiguration, v90, output, v94.receiver, v94.super_class, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, *(&v111 + 1), v112, *(&v112 + 1), v113, *(&v113 + 1), v114, *(&v114 + 1), v115);
  if (v46)
  {
    v48 = v46;
    v49 = *v117;
    do
    {
      v50 = 0;
      do
      {
        if (*v117 != v49)
        {
          objc_enumerationMutation(key);
        }

        v51 = *(*(&v116 + 1) + 8 * v50);
        v52 = [BWPhotoEncoderNodeAttachedMediaConfiguration alloc];
        [objc_msgSend(key objectForKeyedSubscript:{v51), "floatValue"}];
        v53 = [(BWPhotoEncoderNodeAttachedMediaConfiguration *)v52 initWithMainImageDownscalingFactor:1 propagationMode:?];
        v54 = [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
        ++v50;
      }

      while (v48 != v50);
      v46 = OUTLINED_FUNCTION_54_6(v54, v55, v56, v57, v58, v59, v60, v61, v74, v76, v77, v78, v79, v82, v83, v85, v87, v89, v91, v93, v94.receiver, v94.super_class, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, *(&v111 + 1), v112, *(&v112 + 1), v113, *(&v113 + 1), v114, *(&v114 + 1), v115);
      v48 = v46;
    }

    while (v46);
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v62 = OUTLINED_FUNCTION_37_2(v46, v47, &v111, &v95);
  if (v62)
  {
    v63 = v62;
    v64 = *v112;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v112 != v64)
        {
          objc_enumerationMutation(mediaKey);
        }

        v66 = *(*(&v111 + 1) + 8 * i);
        v67 = [BWPhotoEncoderNodeAttachedMediaConfiguration alloc];
        [objc_msgSend(mediaKey objectForKeyedSubscript:{v66), "floatValue"}];
        v68 = [(BWPhotoEncoderNodeAttachedMediaConfiguration *)v67 initWithMainImageDownscalingFactor:0 propagationMode:?];
        v69 = [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
      }

      v63 = OUTLINED_FUNCTION_37_2(v69, v70, &v111, &v95);
    }

    while (v63);
  }

  if ([dictionary2 count])
  {
    [(BWPhotoEncoderNode *)v37 setAttachedMediaConfigurationByAttachedMediaKey:dictionary2];
  }

  v94.receiver = v91;
  v94.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
  if ((objc_msgSendSuper2(&v94, sel_addNode_error_, v37, v123) & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
LABEL_62:
    FigDebugAssert3();
    return 4294954510;
  }

  if (v93 && ([v85 connectOutput:v93 toInput:-[BWNode input](v37 pipelineStage:{"input"), v83}] & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
LABEL_65:
    FigDebugAssert3();
    return 4294954516;
  }

  input2 = v82;
  if (!v82)
  {
    input2 = [(BWNode *)v37 input];
  }

  output2 = [(BWNode *)v37 output];
  result = 4294954516;
  if (input2)
  {
    if (output2)
    {
      result = 0;
      *v79 = input2;
      *v78 = output2;
    }
  }

  return result;
}

@end