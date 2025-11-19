@interface FigCaptureStillImageUnifiedBracketingSinkPipeline
+ (void)initialize;
- (FigCaptureStillImageUnifiedBracketingSinkPipeline)initWithConfiguration:(id)a3 captureDevice:(id)a4 sourceOutputsByPortType:(id)a5 highResStillImageDimensions:(id)a6 supplementalPointCloudCaptureDevice:(id)a7 supplementalPointCloudSourceOutput:(id)a8 captureStatusDelegate:(id)a9 inferenceScheduler:(id)a10 cinematicFramingStatesProvider:(id)a11 graph:(id)a12 name:(id)a13;
- (uint64_t)_addLandmarksInferenceToNode:(uint64_t)result;
- (uint64_t)_addMattingInferenceToNode:(unsigned int)a3 mattingVersion:(uint64_t)a4 refinedDepthEnabled:(unsigned int)a5 mainImageDownscalingFactor:(uint64_t)a6 enabledSemantics:(void *)a7 metalCommandQueue:(char)a8 mattingsensorConfigurationsByPortType:(float)a9 clientIsCameraOrDerivative:(float)a10 requiredAdditionalInferenceOutputBuffers:(unsigned int)a11 zoomFactorForPortrait:;
- (uint64_t)_buildRedEyeReductionSubPipelineWithName:(uint64_t)a3 pipelineStage:(uint64_t)a4 graph:(uint64_t)a5 sensorConfigurationsByPortType:(uint64_t)a6 inferenceScheduler:(uint64_t *)a7 subPipelineInputOut:(uint64_t *)a8 subPipelineOutputOut:;
- (uint64_t)_buildScaleAndEncodeSubPipelineWithPipelineStage:(uint64_t)result graph:(uint64_t)a2 nodeConfiguration:(void *)a3 stillImageSinkPipelineWithConfiguration:(uint64_t)a4 sensorConfigurationsByPortType:(void *)a5 supportsScaling:(uint64_t)a6 provideMeteorHeadroom:(int)a7 providePostEncodeInferences:(int)a8 semanticDevelopmentVersion:(char)a9 constituentPhotoDeliveryEnabled:(unsigned int)a10 demosaicedRawEnabled:(unsigned __int8)a11 nonPropagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)a12 propagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)a13 inferenceScheduler:(uint64_t)a14 subPipelineInputOut:(uint64_t)a15 subPipelineOutputOut:(uint64_t)a16 cameraSupportsFlash:(unsigned __int8)a17 cinematicFramingStatesProvider:(void *)a18;
- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:(uint64_t)a3 captureDevice:(uint64_t)a4 sourceOutputsByPortType:(uint64_t)a5 highResStillImageDimensions:(uint64_t)a6 supplementalPointCloudCaptureDevice:(uint64_t)a7 supplementalPointCloudSourceOutput:(uint64_t)a8 captureStatusDelegate:(uint64_t)a9 inferenceScheduler:(void *)a10 cinematicFramingStatesProvider:(void *)a11 graph:;
- (void)dealloc;
@end

@implementation FigCaptureStillImageUnifiedBracketingSinkPipeline

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (FigCaptureStillImageUnifiedBracketingSinkPipeline)initWithConfiguration:(id)a3 captureDevice:(id)a4 sourceOutputsByPortType:(id)a5 highResStillImageDimensions:(id)a6 supplementalPointCloudCaptureDevice:(id)a7 supplementalPointCloudSourceOutput:(id)a8 captureStatusDelegate:(id)a9 inferenceScheduler:(id)a10 cinematicFramingStatesProvider:(id)a11 graph:(id)a12 name:(id)a13
{
  v23.receiver = self;
  v23.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
  v19 = -[FigCaptureSinkPipeline initWithGraph:name:sinkID:](&v23, sel_initWithGraph_name_sinkID_, a12, a13, [objc_msgSend(a3 "sinkConfiguration")]);
  v20 = v19;
  if (v19)
  {
    v22 = [(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v19 _buildStillImageSinkPipelineWithConfiguration:a3 captureDevice:a4 sourceOutputsByPortType:a5 highResStillImageDimensions:a6 supplementalPointCloudCaptureDevice:a7 supplementalPointCloudSourceOutput:a8 captureStatusDelegate:a9 inferenceScheduler:a10 cinematicFramingStatesProvider:a11 graph:a12];
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

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:(uint64_t)a3 captureDevice:(uint64_t)a4 sourceOutputsByPortType:(uint64_t)a5 highResStillImageDimensions:(uint64_t)a6 supplementalPointCloudCaptureDevice:(uint64_t)a7 supplementalPointCloudSourceOutput:(uint64_t)a8 captureStatusDelegate:(uint64_t)a9 inferenceScheduler:(void *)a10 cinematicFramingStatesProvider:(void *)a11 graph:
{
  result = MEMORY[0x1EEE9AC00](a1);
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
  v25 = [v12 sinkConfiguration];
  objc_opt_class();
  v26 = 0;
  if (objc_opt_isKindOfClass())
  {
    v26 = [v23 sinkConfiguration];
  }

  if ([v26 depthDataDeliveryEnabled] && objc_msgSend(v23, "deviceType") == 9)
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
  dispatch_release(v25);
  v29 = v22;
  [v22 setFigThreadPriority:*(v24 + 48)];
  [v23 depthDataType];
  [OUTLINED_FUNCTION_7() setDepthDataType:?];
  [v23 pearlModuleType];
  [OUTLINED_FUNCTION_7() setPearlModuleType:?];
  [v22 setInferenceScheduler:a9];
  v565 = v22;
  [v22 setMaxLossyCompressionLevel:{objc_msgSend(v23, "maxLossyCompressionLevel")}];
  v30 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v22];
  v31 = 0;
  v549 = [v23 depthDataType];
  if (v549 == 7)
  {
    v32 = *off_1E798A0C8;
    v33 = [v29 objectForKeyedSubscript:*off_1E798A0C8];
    v740 = v32;
    v741 = v33;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v741 forKeys:&v740 count:1];
    [v30 setObject:0 forKeyedSubscript:v32];
  }

  v582 = v30;
  v34 = [v30 allKeys];
  v35 = v29;
  v36 = v34;
  v37 = [v35 allKeys];
  v511 = v31;
  v523 = v19;
  if ([v35 count] >= 2)
  {
    switch([v23 deviceType])
    {
      case 4u:
        v38 = *off_1E798A0C0;
        v739 = *off_1E798A0D8;
        v39 = MEMORY[0x1E695DEC8];
        v40 = &v739;
        goto LABEL_14;
      case 6u:
        v38 = *off_1E798A0E0;
        v579 = *off_1E798A0E8;
        v738 = *off_1E798A0E8;
        v43 = MEMORY[0x1E695DEC8];
        v44 = &v738;
        goto LABEL_20;
      case 8u:
        v38 = *off_1E798A0D0;
        v736 = *off_1E798A0C0;
        v39 = MEMORY[0x1E695DEC8];
        v40 = &v736;
LABEL_14:
        v42 = 1;
        goto LABEL_18;
      case 9u:
        v38 = *off_1E798A0C0;
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
        v38 = *off_1E798A0F8;
        v579 = *off_1E798A0E8;
        v737 = *off_1E798A0E8;
        v43 = MEMORY[0x1E695DEC8];
        v44 = &v737;
        goto LABEL_20;
      case 0xDu:
        v38 = *off_1E798A0C0;
        v579 = *off_1E798A0C8;
        v734 = *off_1E798A0C8;
        v43 = MEMORY[0x1E695DEC8];
        v44 = &v734;
LABEL_20:
        v573 = [v43 arrayWithObjects:v44 count:1];
        v41 = 0;
LABEL_21:
        v46 = [MEMORY[0x1E695DFD8] setWithArray:v37];
        v47 = [MEMORY[0x1E695DFA8] set];
        v31 = v47;
        if (v38)
        {
          [v47 addObject:v38];
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

  v38 = [(BWStillImageConditionalRouterNode *)v36 firstObject];
  v733 = v38;
  v573 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v733 count:1];
  if (!v38)
  {
    goto LABEL_696;
  }

  v579 = 0;
  v41 = 0;
LABEL_28:
  v528 = v20;
  v587 = v41;
  v556 = v38;
  v564 = v36;
  v509 = v37;
  v566 = v26;
  v589 = v24;
  +[FigCaptureCameraParameters sharedInstance];
  v48 = [OUTLINED_FUNCTION_25_0() sensorIDStringsByPortType];
  v597 = [v23 cameraInfoByPortType];
  v598 = [MEMORY[0x1E695DF90] dictionary];
  v49 = [v23 outputStillImageDimensions];
  v51 = v49 > 0 && SHIDWORD(v49) > 0;
  v602 = v51;
  v52 = [v23 gdcInDCProcessorOutputCropDimensions];
  v729 = 0u;
  v730 = 0u;
  v54 = v52 > 0 && SHIDWORD(v52) > 0;
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
        v61 = [v48 objectForKeyedSubscript:v60];
        [v598 setObject:-[BWSensorConfiguration initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:]([BWSensorConfiguration alloc] forKeyedSubscript:{"initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:", v60, v61, objc_msgSend(v31, "sensorIDDictionaryForPortType:sensorIDString:", v60, v61), objc_msgSend(v597, "objectForKeyedSubscript:", v60)), v60}];
        if (v602)
        {
          v31 = v600;
          if (([v60 isEqualToString:v606] & 1) == 0 && (objc_msgSend(v60, "isEqualToString:", v594) & 1) == 0)
          {
            v62 = [objc_msgSend(obj objectForKeyedSubscript:{v60), "formatRequirements"}];
            v63 = [v62 width];
            v64 = v63;
            if (v57 < 1 || v599 <= 0)
            {
              v66 = [v62 height];
              v599 = v66;
              v67 = v64 < 1 || v66 <= 0;
              v57 = v64;
              if (v67)
              {
                goto LABEL_644;
              }
            }

            else if (v57 != v63 || v599 != [v62 height])
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
  v69 = [MEMORY[0x1E695DF90] dictionary];
  v725 = 0u;
  v726 = 0u;
  v727 = 0u;
  v728 = 0u;
  OUTLINED_FUNCTION_39_11();
  v70 = v598;
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
          objc_enumerationMutation(v598);
        }

        v79 = *(*(&v725 + 1) + 8 * i);
        if ([v573 containsObject:v79])
        {
          [v69 setObject:objc_msgSend(v598 forKeyedSubscript:{"objectForKeyedSubscript:", v79), v79}];
        }
      }

      OUTLINED_FUNCTION_39_11();
      v77 = OUTLINED_FUNCTION_37_2(v80, v81, v82, v83);
    }

    while (v77);
  }

  v534 = [v573 firstObject];
  v557 = [v69 objectForKeyedSubscript:?];
  v84 = [v582 objectForKeyedSubscript:v579];
  v551 = [v579 isEqualToString:*off_1E798A0E8];
  v538 = v69;
  v607 = [v23 depthDataType] == 3 && objc_msgSend(v23, "pearlModuleType") == 2;
  v85 = v566;
  v86 = [v566 bravoConstituentPhotoDeliveryEnabled];
  v522 = [v23 deferredProcessingSupported];
  v87 = [v23 stillImageSinkPipelineProcessingMode];
  v88 = [v566 depthDataDeliveryEnabled];
  v532 = [v23 depthDataType];
  v552 = [v566 filterRenderingEnabled];
  v89 = 0.0;
  v570 = v88;
  if (v88)
  {
    [v561 requestedZoomFactorRelativeToPortType:{objc_msgSend(v557, "portType")}];
    v89 = v90;
  }

  if ([v23 highQualityPhotoCaptureForVideoFormatEnabled])
  {
    if ((v88 | v86))
    {
      v91 = 0;
    }

    else
    {
      v91 = 2;
    }
  }

  else
  {
    v91 = [v23 stillImageStabilizationSupported];
  }

  v521 = v87 != 1;
  v574 = v87 == 1;
  v548 = [v23 learnedNRSupported];
  v546 = v91 == 2;
  v571 = [v23 deepFusionSupported];
  v555 = v91;
  v520 = v91 == 1;
  v554 = [v566 digitalFlashCaptureEnabled];
  [v23 depthDataType];
  v550 = [v566 portraitEffectsMatteDeliveryEnabled];
  v92 = (v550 & 1) != 0 || [objc_msgSend(v23 "enabledSemanticSegmentationMatteURNs")] != 0;
  if ([v600 personSemanticsVersion])
  {
    v93 = [v600 personSemanticsVersion];
  }

  else
  {
    v93 = 3;
  }

  Major = BWInferenceVersionMakeMajor(v93);
  v540 = v87;
  v558 = v92;
  if (v92)
  {
    v94 = [(BWInferenceConfiguration *)[BWPersonSemanticsConfiguration alloc] initWithInferenceType:104];
    [(BWInferenceConfiguration *)v94 setPriority:*(v589 + 52)];
    if (v550)
    {
      [(BWPersonSemanticsConfiguration *)v94 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v94 enabledSemantics]| 1];
    }

    v95 = [v23 enabledSemanticSegmentationMatteURNs];
    if ([v95 containsObject:*MEMORY[0x1E69917E0]])
    {
      [(BWPersonSemanticsConfiguration *)v94 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v94 enabledSemantics]| 2];
    }

    v96 = [v23 enabledSemanticSegmentationMatteURNs];
    if ([v96 containsObject:*MEMORY[0x1E69917E8]])
    {
      [(BWPersonSemanticsConfiguration *)v94 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v94 enabledSemantics]| 8];
    }

    v97 = [v23 enabledSemanticSegmentationMatteURNs];
    if ([v97 containsObject:*MEMORY[0x1E69917F8]])
    {
      [(BWPersonSemanticsConfiguration *)v94 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v94 enabledSemantics]| 0x10];
    }

    v98 = [v23 supportedSemanticSegmentationMatteURNs];
    v99 = *MEMORY[0x1E69917D8];
    if (![v98 containsObject:*MEMORY[0x1E69917D8]])
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

  v541 = v88 & v552;
  v507 = v100;
  if (v88)
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

  v104 = [v600 learnedMattingVersion];
  v105 = v104;
  if ((v92 & v570) == 1)
  {
    v106 = v104 <= 0 || v549 == 7;
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
  v562 = [v23 redEyeReductionVersion];
  if (v562 > 0)
  {
    v114 = v86;
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
    v116 = v550;
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
    v122 = [v23 allowedToModifyInputBuffers];
    v123 = [v23 semanticRenderingVersion];
    v608 = [MEMORY[0x1E695DF90] dictionary];
    v536 = v123;
    if (v123)
    {
      v542 = [v23 semanticDevelopmentVersion];
    }

    else
    {
      v542 = 0;
    }

    v544 = [v85 demosaicedRawEnabled];
    if (v544)
    {
      [v608 setObject:BWSemanticSegmentationMatteAttachedMediaKeysSupportedByDemosaicedRaw() forKeyedSubscript:&unk_1F2244728];
    }

    if (v120)
    {
      v124 = [MEMORY[0x1E695DF70] array];
      [v124 addObject:0x1F219E750];
      BWInferenceLowResPersonInstanceMaskKeys();
      [OUTLINED_FUNCTION_4() addObjectsFromArray:?];
      v125 = v124;
      v92 = v558;
      [v608 setObject:v125 forKeyedSubscript:&unk_1F2244740];
    }

    v519 = v122;
    if ([objc_msgSend(v23 "portTypesWithGeometricDistortionCorrectionEnabled")])
    {
      if ((v570 ^ 1 | v86))
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

    v560 = v548 & v546;
    v518 = [objc_msgSend(v23 "portTypesWithIntelligentDistortionCorrectionEnabled")] != 0;
    v530 = v120;
    v516 = v602 & v127;
    if (v595 >= [v23 rawSensorDimensions] && (v599 >= (objc_msgSend(v23, "rawSensorDimensions") >> 32) ? (v128 = v602 & v127) : (v128 = 0), v128 == 1))
    {
      if (v567)
      {
        v129 = [v23 gdcInDCProcessorOutputCropDimensions];
      }

      else
      {
        v129 = [v23 outputStillImageDimensions];
      }

      v505 = v129;
    }

    else
    {
      v505 = 0;
    }

    if ([v23 clientIsCameraOrDerivative] && +[BWInferenceEngine isNeuralEngineSupported](BWInferenceEngine, "isNeuralEngineSupported"))
    {
      v514 = [v23 captureTimePhotosCurationSupported];
    }

    else
    {
      v514 = 0;
    }

    if (v92)
    {
      v130 = [v23 clientIsCameraOrDerivative];
      if (v130)
      {
        v131 = 0;
      }

      else
      {
        v131 = 7;
      }

      if ((v130 & 1) == 0)
      {
        v132 = v555;
        if (((v86 ^ 1) & 1) == 0)
        {
          v131 = 8 * [v582 count] - 1;
        }

LABEL_201:
        v568 = v86 | v545;
        v553 = (v571 | v560) & v574 ^ 1;
        v503 = v131;
        if (v569 == 2)
        {
          v537 = [v23 responsiveShutterSupported];
        }

        else
        {
          v537 = 0;
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
        [v561 setDigitalFlashEnabled:v554 & v553];
        [v561 setRedSaturationMitigationEnabled:{objc_msgSend(v566, "optimizesImagesForOfflineVideoStabilization") ^ 1}];
        [v561 registerForAEMatrixMetadata];
        [v561 setRedEyeReductionEnabled:v562 > 0];
        if (v587)
        {
          v133 = v570 & (v86 ^ 1);
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
        if ((v86 | v545))
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
            if (v537)
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
        v533 = v86;
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
        v508 = [v559 cameraInfoByPortType];
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
            [(BWStillImageCoordinatorNode *)v145 setResponsiveShutterEnabled:v537];
            if ([v23 responsiveShutterSupported])
            {
              v149 = [v23 responsiveShutterEnabled];
            }

            else
            {
              v149 = 0;
            }

            [(BWStillImageCoordinatorNode *)v145 setResponsiveShutterEnabledViaAPI:v149];
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
                if (([a11 connectOutput:v153 toInput:-[BWStillImageCoordinatorNode inputForPortType:](v145 pipelineStage:{"inputForPortType:", v152), v575}] & 1) == 0)
                {
                  goto LABEL_242;
                }

                v143 = v582;
                if (([a11 connectOutput:-[BWStillImageCoordinatorNode outputForPortType:](v145 toInput:"outputForPortType:" pipelineStage:{v152), objc_msgSend(OUTLINED_FUNCTION_12_31(), "inputForPortType:"), v596}] & 1) == 0)
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
          v155 = [v23 deepFusionSupported];
          if (v555)
          {
            v156 = 2;
          }

          else
          {
            v156 = 1;
          }

          if (v155)
          {
            v157 = 3;
          }

          else
          {
            v157 = v156;
          }

          [(FigCaptureIrisPreparedSettings *)v154 setQualityPrioritization:v157];
          [(FigCaptureIrisPreparedSettings *)v154 setDigitalFlashMode:v554 & v553];
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
          v70 = v598;
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
          v70 = v598;
          v139 = &selRef__waitForPreviewGenerationGroupToComplete;
        }

        v163 = [MEMORY[0x1E695DF70] array];
        v164 = objc_alloc_init(BWPixelTransferNode);
        [(BWNode *)v164 setName:@"Still Image Format Converter"];
        [v23 outputColorSpaceProperties];
        [OUTLINED_FUNCTION_7() setOutputColorSpaceProperties:?];
        [(BWPixelTransferNode *)v164 setCropMode:3];
        [(BWPixelTransferNode *)v164 setMaxInputLossyCompressionLevel:3];
        [v23 maxLossyCompressionLevel];
        [OUTLINED_FUNCTION_7() setMaxOutputLossyCompressionLevel:?];
        [(BWPixelTransferNode *)v164 setConversionMethodForStillImagesDuringHDRVideos:2];
        objb = v163;
        [v163 addObject:v164];
        v526 = v164;
        if (v562 == 1)
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

          v175 = [v587 firstObject];
          v722[0] = 0;
          v724[0] = 0;
          v159 = v589;
          v70 = v598;
          v743[0] = [(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v589 _buildRedEyeReductionSubPipelineWithName:v596 pipelineStage:a11 graph:v598 sensorConfigurationsByPortType:a9 inferenceScheduler:v722 subPipelineInputOut:v724 subPipelineOutputOut:?];
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
            v743[0] = [(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v589 _buildRedEyeReductionSubPipelineWithName:v512 pipelineStage:a11 graph:v598 sensorConfigurationsByPortType:a9 inferenceScheduler:&v704 subPipelineInputOut:type subPipelineOutputOut:?];
            if (v743[0])
            {
              OUTLINED_FUNCTION_2_64();
              goto LABEL_486;
            }

            v488 = [v144 objectForKeyedSubscript:v556];
            if (([a11 connectOutput:v488 toInput:v722[0] pipelineStage:v596] & 1) == 0 || (objc_msgSend(v144, "setObject:forKeyedSubscript:", v724[0], v556), v489 = objc_msgSend(v144, "objectForKeyedSubscript:", v175), (objc_msgSend(a11, "connectOutput:toInput:pipelineStage:", v489, v704, v512) & 1) == 0))
            {
              OUTLINED_FUNCTION_0_61();
              goto LABEL_486;
            }

            v177 = *type;
            goto LABEL_289;
          }

          if (v568)
          {
            v176 = [v144 objectForKeyedSubscript:v175];
            if ([a11 connectOutput:v176 toInput:v722[0] pipelineStage:v512])
            {
              v177 = v724[0];
LABEL_289:
              [v144 setObject:v177 forKeyedSubscript:v175];
              goto LABEL_297;
            }

LABEL_765:
            OUTLINED_FUNCTION_0_61();
            goto LABEL_486;
          }

          v178 = [v144 objectForKeyedSubscript:v556];
          if (([a11 connectOutput:v178 toInput:v722[0] pipelineStage:v596] & 1) == 0)
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

        v583 = [v144 objectForKeyedSubscript:v556];
        v524 = [v587 firstObject];
        v181 = [MEMORY[0x1E695DF90] dictionary];
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

        if (v549 == 7)
        {
          [v70 objectForKeyedSubscript:*off_1E798A0C8];
          [OUTLINED_FUNCTION_24_1() setObject:? forKeyedSubscript:?];
        }

        if (v568)
        {
          v185 = [BWFunnelNode alloc];
          [v181 count];
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

          v583 = [v186 output];
          v139 = &selRef__waitForPreviewGenerationGroupToComplete;
        }

        if (v562 != 1)
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

          v583 = [(BWNode *)v526 output];
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
            v198 = 8 * [v181 count];
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
        [(BWUBNodeConfiguration *)v203 setSensorConfigurationsByPortType:v181, v204];
        [v23 inputIs10Bit];
        v205 = OUTLINED_FUNCTION_10_29();
        [(BWUBNodeConfiguration *)v205 setInputIs10Bit:v206];
        [(BWUBNodeConfiguration *)v203 setRetainedBufferCount:v576];
        v577 = v202;
        [(BWUBNodeConfiguration *)v203 setOutputBufferCount:v202];
        [(BWUBNodeConfiguration *)v203 setMinimumOutputBufferCount:v198];
        [(BWUBNodeConfiguration *)v203 setMaxNumberOfBurstCapturesAllowedInFlight:?];
        [(BWUBNodeConfiguration *)v203 setOutputPoolBackPressureEnabled:?];
        [(BWStillImageNodeConfiguration *)v203 setDeferredCaptureSupportEnabled:v522];
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
        v211 = [v23 deepFusionSupported];
        if (v569 == 2)
        {
          v212 = 0;
        }

        else
        {
          v212 = v522;
        }

        if (v211)
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
          v216 = v548;
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
          v217 = v522;
        }

        if ((v217 & 1) != 0 || v216)
        {
          v218 = [v23 deepZoomVersion];
        }

        else
        {
          v218 = 0;
        }

        v219 = v539;
        [(BWUBNodeConfiguration *)v203 setDeepZoomVersion:v218];
        [(BWUBNodeConfiguration *)v203 setMaxDeepFusionOutputCount:?];
        [(BWUBNodeConfiguration *)v203 setLearnedNRMode:v560];
        [(BWUBNodeConfiguration *)v203 setDepthDataDeliveryEnabled:v570];
        if (v559)
        {
          v220 = [BWSensorConfiguration alloc];
          v221 = [objc_msgSend(v559 "captureStream")];
          v222 = [objc_msgSend(v559 "captureStream")];
          v223 = [objc_msgSend(v559 "captureStream")];
          v224 = [v508 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(v559, "captureStream"), "portType")}];
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
        [(BWUBNodeConfiguration *)v203 setProvidedInferenceAttachedMediaByMode:v608, v232];
        [(BWUBNodeConfiguration *)v203 setSemanticRenderingVersion:v536];
        [(BWUBNodeConfiguration *)v203 setSemanticDevelopmentVersion:v542];
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
          if (v549 != 7)
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
        [(BWUBNodeConfiguration *)v203 setDemosaicedRawEnabled:v544];
        if (v544)
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
            v255 = [v23 portTypesWithGeometricDistortionCorrectionEnabled];
          }

          else
          {
            v255 = 0;
          }

          [(BWUBNodeConfiguration *)v203 setPortTypesWithGeometricDistortionCorrectionEnabled:v255, v254];
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
        if (([OUTLINED_FUNCTION_44_10() connectOutput:v583 toInput:? pipelineStage:?] & 1) == 0)
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

        v272 = [(BWNode *)v266 output];
        v273 = v272;
        v581 = k;
        if (!(v539 & 1 | !v602))
        {
          v584 = v272;
          v274 = [MEMORY[0x1E695DF90] dictionary];
          [v23 gainMapMainImageDownscalingFactor];
          if (v275 != 0.0)
          {
            v276 = MEMORY[0x1E696AD98];
            [v23 gainMapMainImageDownscalingFactor];
            [v274 setObject:objc_msgSend(v276 forKeyedSubscript:{"numberWithFloat:"), 0x1F217BF50}];
          }

          v277 = [MEMORY[0x1E695DF70] array];
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
                  objc_enumerationMutation(v608);
                }

                [v277 addObjectsFromArray:{objc_msgSend(v608, "objectForKeyedSubscript:", *(*(&v688 + 1) + 8 * k))}];
              }

              v279 = OUTLINED_FUNCTION_51_10();
            }

            while (v279);
          }

          v603 = v238;
          if (v544)
          {
            [v274 setObject:&unk_1F224A860 forKeyedSubscript:0x1F21AAE10];
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
                    objc_enumerationMutation(v277);
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
          [(BWStillImageScalerNode *)v283 setMainImageDownscalingFactorByAttachedMediaKey:v274];
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

          v273 = [(BWNode *)v283 output];
        }

        if ((v587 == 0) | (v570 ^ 1) & 1 | v238 & 1)
        {
          v585 = v273;
          v286 = 0;
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
          if (([OUTLINED_FUNCTION_15_21() connectOutput:v273 toInput:? pipelineStage:?] & 1) == 0)
          {
            goto LABEL_384;
          }

          if ([v587 count] >= 2)
          {
            OUTLINED_FUNCTION_0_61();
            FigDebugAssert3();
          }

          v291 = [(BWStillImageConditionalRouterUBConfiguration *)v287 outputIndexForPortType:v524];
          v292 = [(BWStillImageConditionalRouterUBConfiguration *)v287 outputIndexForPortType:v556];
          if (v291 == 0x7FFFFFFFFFFFFFFFLL || v292 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_696;
          }

          v585 = [(NSArray *)[(BWNode *)v288 outputs] objectAtIndexedSubscript:v292];
          v286 = [(NSArray *)[(BWNode *)v288 outputs] objectAtIndexedSubscript:v291];
        }

        v294 = [(BWNodeInput *)[(BWNode *)v266 input] formatRequirements];
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
              [(BWFormatRequirements *)v294 supportedPixelFormats];
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
            v302 = v532;
            if (([OUTLINED_FUNCTION_12_31() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
            {
              goto LABEL_384;
            }

            v286 = [*(v589 + 96) output];
          }

          else
          {
            v302 = v532;
            if ((v551 & 1) == 0)
            {
              if (v532 > 9 || (OUTLINED_FUNCTION_13_25(), v106))
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

            v585 = [*(v589 + 96) output];
          }

          v303 = v558;
        }

        else
        {
          v303 = v558;
          v302 = v532;
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
            v461 = [[BWInferenceNode alloc] initWithScheduler:a9 priority:*(v589 + 52)];
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

            v467 = [(BWNode *)v462 input];
            v303 = v558;
            if (v568)
            {
              if (([a11 connectOutput:v286 toInput:v467 pipelineStage:v596] & 1) == 0)
              {
                goto LABEL_384;
              }
            }

            else if ((OUTLINED_FUNCTION_29_10(a11, v465, v466, v467) & 1) == 0)
            {
              goto LABEL_384;
            }

            v468 = [(BWNode *)v462 output];
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
              if (([OUTLINED_FUNCTION_6_44() connectOutput:v468 toInput:? pipelineStage:?] & 1) == 0)
              {
                goto LABEL_384;
              }

              v474 = [objc_msgSend(v471 "outputs")];
              v475 = v551;
              if (v532 == 6)
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
                if (([OUTLINED_FUNCTION_6_44() connectOutput:v474 toInput:? pipelineStage:?] & 1) == 0)
                {
                  goto LABEL_470;
                }

                v474 = [v477 output];
              }

              v480 = [[BWInferenceNode alloc] initWithScheduler:a9 priority:*(v589 + 52)];
              OUTLINED_FUNCTION_5_50();
              [v481 addInferenceOfType:104 version:? configuration:?];
              [(BWNode *)v480 setName:@"Person Semantics"];
              if (v513 >= 1)
              {
                [v23 portraitEffectsMatteMainImageDownscalingFactor];
                v492 = v491;
                v605 = [(BWPersonSemanticsConfiguration *)v507 enabledSemantics];
                v493 = [v565 metalCommandQueue];
                [v23 clientIsCameraOrDerivative];
                OUTLINED_FUNCTION_25_12();
                if ([(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v589 _addMattingInferenceToNode:v480 mattingVersion:v494 refinedDepthEnabled:v495 mainImageDownscalingFactor:v605 enabledSemantics:v493 metalCommandQueue:v538 mattingsensorConfigurationsByPortType:v496 clientIsCameraOrDerivative:v492 requiredAdditionalInferenceOutputBuffers:v89 zoomFactorForPortrait:v499])
                {
                  goto LABEL_696;
                }
              }

              v674[12] = v589;
              v674[13] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
              OUTLINED_FUNCTION_9_34();
              if ((objc_msgSendSuper2(v482, v483, v480) & 1) == 0 || (-[BWNode input](v480, "input"), v303 = v558, ([OUTLINED_FUNCTION_6_44() connectOutput:v474 toInput:? pipelineStage:?] & 1) == 0))
              {
LABEL_470:
                OUTLINED_FUNCTION_0_61();
                goto LABEL_486;
              }

              v578 = [(BWNode *)v480 output];
              v468 = [objc_msgSend(v471 "outputs")];
              k = v581;
            }

            else
            {
              v578 = 0;
            }

            if (v568)
            {
              v286 = v468;
            }

            v484 = v585;
            if ((v568 & 1) == 0)
            {
              v484 = v468;
            }

            v585 = v484;
            v302 = v532;
          }

          else
          {
            v578 = 0;
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
                  if (v578)
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
                    if (([OUTLINED_FUNCTION_6_44() connectOutput:v578 toInput:? pipelineStage:?] & 1) == 0)
                    {
                      goto LABEL_561;
                    }

                    v585 = [(BWNode *)v386 output];
                  }

                  if (v515)
                  {
                    v389 = [BWStillImagePortraitMetadataNode alloc];
                    *&v390 = v89;
                    v391 = [(BWStillImagePortraitMetadataNode *)v389 initWithNodeConfiguration:v565 sdofRenderingVersion:v515 sensorConfigurationsByPortType:v286 defaultPortType:v534 defaultZoomFactor:v390];
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

                    v585 = [(BWNode *)v391 output];
                  }

                  if (!v303)
                  {
LABEL_573:
                    if (v552)
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
                      v416 = [(BWStillImageFilterNode *)v414 initWithNodeConfiguration:v565 sensorConfigurationsByPortType:v286 statusDelegate:0 depthDataDeliveryEnabled:v570 personSegmentationEnabled:v550 refinedDepthEnabled:v550 & v510 portraitRenderQuality:0.0 targetAspectRatio:v415 defaultPortType:v499 defaultZoomFactor:v534 backPressureDrivenPipelining:v501];
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

                      v419 = [(BWNode *)v416 output];
                    }

                    else
                    {
                      v419 = v585;
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
                      if ([OUTLINED_FUNCTION_6_44() connectOutput:v419 toInput:? pipelineStage:?])
                      {
                        v419 = [(BWNode *)v420 output];
LABEL_585:
                        v586 = v419;
                        v423 = [MEMORY[0x1E695DF90] dictionary];
                        [v23 gainMapMainImageDownscalingFactor];
                        if (v424 != 0.0)
                        {
                          v425 = MEMORY[0x1E696AD98];
                          [v23 gainMapMainImageDownscalingFactor];
                          [v423 setObject:objc_msgSend(v425 forKeyedSubscript:{"numberWithFloat:"), 0x1F217BF50}];
                        }

                        if (v544)
                        {
                          [v423 setObject:&unk_1F224A860 forKeyedSubscript:0x1F21AAE10];
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
                                  objc_enumerationMutation(v608);
                                }

                                v427 = *(*(&v631 + 1) + 8 * m);
                                v627 = 0u;
                                v628 = 0u;
                                v629 = 0u;
                                v630 = 0u;
                                v428 = [v608 objectForKeyedSubscript:v427];
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

                        v434 = [MEMORY[0x1E695DF90] dictionary];
                        [v23 portraitEffectsMatteMainImageDownscalingFactor];
                        if (v435 != 0.0)
                        {
                          if (v550)
                          {
                            v436 = MEMORY[0x1E696AD98];
                            [v23 portraitEffectsMatteMainImageDownscalingFactor];
                            [v434 setObject:objc_msgSend(v436 forKeyedSubscript:{"numberWithFloat:"), 0x1F21AABB0}];
                          }

                          memset(v625, 0, sizeof(v625));
                          v437 = [v23 enabledSemanticSegmentationMatteURNs];
                          v438 = [v437 countByEnumeratingWithState:v625 objects:v624 count:16];
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
                                  objc_enumerationMutation(v437);
                                }

                                if (BWPhotoEncoderAttachedMediaKeyForSemanticSegmentationMatteURN(*(*(&v625[0] + 1) + 8 * ii)))
                                {
                                  v441 = MEMORY[0x1E696AD98];
                                  [v23 portraitEffectsMatteMainImageDownscalingFactor];
                                  [v441 numberWithFloat:?];
                                  [OUTLINED_FUNCTION_24_1() setObject:? forKeyedSubscript:?];
                                }
                              }

                              v439 = [v437 countByEnumeratingWithState:v625 objects:v624 count:16];
                            }

                            while (v439);
                          }
                        }

                        v442 = [v23 deviceHasFlash];
                        if (v540 == 1)
                        {
                          v443 = 1;
                        }

                        else
                        {
                          v443 = v442;
                        }

                        v623 = 0;
                        v622 = 0;
                        v743[0] = [FigCaptureStillImageUnifiedBracketingSinkPipeline _buildScaleAndEncodeSubPipelineWithPipelineStage:v589 graph:v535 nodeConfiguration:a11 stillImageSinkPipelineWithConfiguration:v565 sensorConfigurationsByPortType:v23 supportsScaling:v598 provideMeteorHeadroom:1 providePostEncodeInferences:v547 & 1u | (v540 == 1) semanticDevelopmentVersion:v514 constituentPhotoDeliveryEnabled:v542 demosaicedRawEnabled:v533 nonPropagatedMainImageDownscalingFactorByAttachedMediaKey:v423 propagatedMainImageDownscalingFactorByAttachedMediaKey:v434 inferenceScheduler:a9 subPipelineInputOut:&v623 subPipelineOutputOut:&v622 cameraSupportsFlash:v443 cinematicFramingStatesProvider:a10];
                        if (v743[0])
                        {
                          OUTLINED_FUNCTION_2_64();
                        }

                        else
                        {
                          if ([a11 connectOutput:v586 toInput:v623 pipelineStage:v535])
                          {
                            v444 = v622;
                            if ([v566 optimizesImagesForOfflineVideoStabilization])
                            {
                              v445 = [MEMORY[0x1E695DF90] dictionary];
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
                                    objc_enumerationMutation(v598);
                                  }

                                  [v445 setObject:objc_msgSend(objc_msgSend(v598 forKeyedSubscript:{"objectForKeyedSubscript:", **(&v618 + 1)), "sensorIDDictionary"), **(&v618 + 1)}];
                                  OUTLINED_FUNCTION_46_10();
                                }

                                while (!v106 || OUTLINED_FUNCTION_53_8());
                              }

                              v446 = [v23 horizontalSensorBinningFactor];
                              v447 = [v23 verticalSensorBinningFactor];
                              [v23 maxSupportedFrameRate];
                              v449 = FigCaptureBuildMotionAttachmentsNode(v589, v444, v446, v447, v596, [v23 motionAttachmentsSource], v445, objc_msgSend(v23, "cameraInfoByPortType"), v448, v509, 0, 0, 1, 1, 0, v743);
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
                            [v434 allKeys];
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
                                v454 = [v589 nodes];
                                v455 = [v454 countByEnumeratingWithState:&v612 objects:v611 count:16];
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
                                        objc_enumerationMutation(v454);
                                      }

                                      v459 = *(*(&v612 + 1) + 8 * jj);
                                      [v459 setDeferredPreparePriority:1];
                                      memset(v610, 0, sizeof(v610));
                                      v460 = [v459 inputs];
                                      if ([v460 countByEnumeratingWithState:v610 objects:v609 count:16])
                                      {
                                        do
                                        {
                                          OUTLINED_FUNCTION_30_6();
                                          if (!v106)
                                          {
                                            objc_enumerationMutation(v460);
                                          }

                                          [objc_msgSend(**(&v610[0] + 1) "connection")];
                                          OUTLINED_FUNCTION_46_10();
                                        }

                                        while (!v106 || [v460 countByEnumeratingWithState:v610 objects:v609 count:16]);
                                      }
                                    }

                                    v456 = [v454 countByEnumeratingWithState:&v612 objects:v611 count:16];
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

                      v396 = [[BWMatteMediaSuppressionNode alloc] initWithBehavior:v395 | v541];
                      [(BWNode *)v396 setName:@"Matting Media Suppression Node"];
                      v639 = v319;
                      v640 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                      OUTLINED_FUNCTION_9_34();
                      if ((objc_msgSendSuper2(v397, v398, v396) & 1) == 0)
                      {
                        goto LABEL_561;
                      }

                      [(BWNode *)v396 input];
                      if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                      {
                        goto LABEL_561;
                      }

LABEL_572:
                      v585 = [(BWNode *)v396 output];
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
                      v286 = [[BWInferenceNode alloc] initWithScheduler:a9 priority:*(v319 + 52)];
                      if ((v527 & 1) == 0)
                      {
                        OUTLINED_FUNCTION_5_50();
                        [v286 addInferenceOfType:104 version:? configuration:?];
                        [v286 setName:@"PersonSemantics"];
                      }

                      [v23 portraitEffectsMatteMainImageDownscalingFactor];
                      v403 = v402;
                      v404 = [(BWPersonSemanticsConfiguration *)v507 enabledSemantics];
                      v405 = [v565 metalCommandQueue];
                      [v23 clientIsCameraOrDerivative];
                      OUTLINED_FUNCTION_25_12();
                      if ([(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v319 _addMattingInferenceToNode:v286 mattingVersion:v406 refinedDepthEnabled:v407 mainImageDownscalingFactor:v404 enabledSemantics:v405 metalCommandQueue:v538 mattingsensorConfigurationsByPortType:v408 clientIsCameraOrDerivative:v403 requiredAdditionalInferenceOutputBuffers:v89 zoomFactorForPortrait:v499])
                      {
                        goto LABEL_696;
                      }

                      v642.receiver = v319;
                      v642.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                      if ((objc_msgSendSuper2(&v642, v581, v286, &v742) & 1) == 0)
                      {
                        OUTLINED_FUNCTION_0_61();
                        goto LABEL_486;
                      }

                      v409 = [BWFunnelNode alloc];
                      OUTLINED_FUNCTION_26_12();
                      v396 = [v410 initWithNumberOfInputs:? mediaType:?];
                      [(BWNode *)v396 setName:@"Matting Funnel"];
                      v641.receiver = v319;
                      v641.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                      if ((objc_msgSendSuper2(&v641, v581, v396, &v742) & 1) == 0)
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
                      [v286 input];
                      if (([OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                      {
                        goto LABEL_726;
                      }

                      [v286 output];
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

                  v485 = [[BWInferenceNode alloc] initWithScheduler:a9 priority:*(v319 + 52)];
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
                v286 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:objc];
                v662 = v589;
                v663 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                OUTLINED_FUNCTION_9_34();
                if (objc_msgSendSuper2(v364, v365, v286))
                {
                  [v286 setName:@"UB Router for ConstituentPhoto without Depth"];
                  [v286 input];
                  if ([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?])
                  {
                    v366 = [BWStillImageMultiCameraDoserNode alloc];
                    [v598 allKeys];
                    v367 = [OUTLINED_FUNCTION_4() initWithPortTypes:?];
                    v661.receiver = v589;
                    v661.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                    if ((objc_msgSendSuper2(&v661, v581, v367, &v742) & 1) == 0)
                    {
                      OUTLINED_FUNCTION_0_61();
                      goto LABEL_486;
                    }

                    v588 = v286;
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
                      v286 = 0;
                      while (1)
                      {
                        OUTLINED_FUNCTION_30_6();
                        if (!v106)
                        {
                          objc_enumerationMutation(v564);
                        }

                        v374 = [(BWStillImageConditionalRouterUBConfiguration *)objc outputIndexForPortType:*(*(&v656 + 1) + 8 * v286)];
                        if (v374 == 0x7FFFFFFFFFFFFFFFLL)
                        {
                          goto LABEL_696;
                        }

                        v375 = v374;
                        if (([a11 connectOutput:objc_msgSend(objc_msgSend(v588 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", v374), objc_msgSend(objc_msgSend(v367, "inputs"), "objectAtIndexedSubscript:", v374), v596}] & 1) == 0 || (objc_msgSend(a11, "connectOutput:toInput:pipelineStage:", objc_msgSend(objc_msgSend(v367, "outputs"), "objectAtIndexedSubscript:", v375), objc_msgSend(objc_msgSend(v369, "inputs"), "objectAtIndexedSubscript:", v375), v596) & 1) == 0)
                        {
                          goto LABEL_561;
                        }

                        if (v373 == ++v286)
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

                    v309 = [[BWStillImageCameraCalibrationDataNode alloc] initWithSensorConfigurationsByPortType:v598];
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
                    LODWORD(v302) = v532;
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
            v306 = [OUTLINED_FUNCTION_25_0() clientIsCameraOrDerivative];
            v307 = [BWStillImageFocusPixelDisparityNode alloc];
            *&v308 = v89;
            v309 = [(BWStillImageFocusPixelDisparityNode *)v307 initWithNodeConfiguration:v565 sensorConfiguration:v557 disparityMapWidth:v302 disparityMapHeight:v302 >> 32 depthIsAlwaysHighQuality:v306 defaultZoomFactor:v308];
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
              OUTLINED_FUNCTION_29_10(v306, v312, v313, v314);
              OUTLINED_FUNCTION_21_19();
              LODWORD(v302) = v532;
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
              v286 = v315;
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
                if ([OUTLINED_FUNCTION_6_44() connectOutput:v286 toInput:? pipelineStage:?])
                {
                  v286 = [(BWStillImageDisparitySplitterNode *)v316 disparityOutput];
LABEL_488:
                  v674[0] = v556;
                  v674[1] = v524;
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
                    v343 = [v337 indexOfObject:v524];
                    if (v343 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      goto LABEL_696;
                    }

                    v344 = v343;
                    if ([a11 connectOutput:v585 toInput:objc_msgSend(-[BWPipelineStage inputs](v338 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", v342), v543}] & 1) != 0 && (objc_msgSend(a11, "connectOutput:toInput:pipelineStage:", v286, objc_msgSend(-[BWPipelineStage inputs](v338, "inputs"), "objectAtIndexedSubscript:", v344), v543))
                    {
                      v345 = [(BWPipelineStage *)v338 outputIndexForPortType:v556];
                      if (v345 == 0x7FFFFFFFFFFFFFFFLL)
                      {
                        goto LABEL_696;
                      }

                      v346 = v345;
                      v347 = [(BWPipelineStage *)v338 outputIndexForPortType:v524];
                      if (v347 == 0x7FFFFFFFFFFFFFFFLL)
                      {
                        goto LABEL_696;
                      }

                      v348 = v347;
                      v286 = [-[BWPipelineStage outputs](v338 "outputs")];
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
                        if (([OUTLINED_FUNCTION_6_44() connectOutput:v286 toInput:? pipelineStage:?] & 1) == 0)
                        {
                          goto LABEL_520;
                        }

                        [-[BWPipelineStage inputs](v338 "inputs")];
                        if (([OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                        {
                          goto LABEL_520;
                        }

                        v286 = [-[BWPipelineStage outputs](v338 "outputs")];
                        [-[BWPipelineStage outputs](v338 "outputs")];
                      }

                      if (!v506)
                      {
                        v352 = 0;
                        goto LABEL_510;
                      }

                      v338 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.inference.bravo" priority:*(v589 + 48)];
                      v352 = [[BWInferenceNode alloc] initWithScheduler:a9 priority:*(v589 + 52)];
                      [(BWNode *)v352 setName:@"Disparity"];
                      if ((v572 & 1) == 0 && [(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v589 _addLandmarksInferenceToNode:v352])
                      {
                        goto LABEL_696;
                      }

                      if (v527)
                      {
                        v353 = [(BWNode *)v352 name];
                        if ([(NSString *)v353 length])
                        {
                          v499 = @"Person Semantics";
                          [(NSString *)v353 stringByAppendingFormat:@" + %@"];
                        }

                        OUTLINED_FUNCTION_5_50();
                        [BWInferenceNode addInferenceOfType:v352 version:"addInferenceOfType:version:configuration:" configuration:104];
                      }

                      v668 = v589;
                      v669 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                      OUTLINED_FUNCTION_11_30();
                      if (objc_msgSendSuper2(v354, v355, v352))
                      {
                        v356 = [(BWStillImageDisparitySplitterNode *)v316 processedOutput];
                        [(BWNode *)v352 input];
                        if ([OUTLINED_FUNCTION_15_21() connectOutput:v356 toInput:? pipelineStage:?])
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

                          v358 = [[BWStillImageBravoDisparityNode alloc] initWithNodeConfiguration:v565 sensorConfigurationsByPortType:v598 disparityMapWidth:v338 disparityMapHeight:v338 >> 32 outputDisparityBufferCount:v357];
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

                          v585 = [(BWNode *)v358 output];
                          v303 = v558;
                          if (!v506)
                          {
                            v319 = v589;
                            LODWORD(v302) = v532;
                            goto LABEL_540;
                          }

                          v309 = [[BWInferenceSynchronizerNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:1 indexOfInputProvidingPreferredInferences:1 errorHandlingModel:0];
                          [(BWNode *)v309 setName:@"Disparity/Landmarks Sync"];
                          [(BWStillImageCameraCalibrationDataNode *)v309 setSynchronizesTopLevelAttachments:1];
                          v664 = v589;
                          v665 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                          OUTLINED_FUNCTION_9_34();
                          LODWORD(v302) = v532;
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
                          v585 = [(BWNode *)v309 output];
                          v319 = v589;
LABEL_540:
                          if ((v570 & (v551 | (v302 == 6))) == 1)
                          {
                            LOBYTE(v499) = 0;
                            v379 = -[BWDepthConverterNode initWithStillImageNodeConfiguration:cameraInfoByPortType:sensorIDDictionary:rgbPersonSegmentationEnabled:depthIsAlwaysHighQuality:depthOriginatesFromNeuralNetwork:backPressureDrivenPipelining:]([BWDepthConverterNode alloc], "initWithStillImageNodeConfiguration:cameraInfoByPortType:sensorIDDictionary:rgbPersonSegmentationEnabled:depthIsAlwaysHighQuality:depthOriginatesFromNeuralNetwork:backPressureDrivenPipelining:", v565, v597, [v557 sensorIDDictionary], v563, objc_msgSend(v23, "clientIsCameraOrDerivative"), v302 == 6);
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
                            v585 = [(BWNode *)v379 output];
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
          v286 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v320];
          k = v589;
          v674[8] = v589;
          v674[9] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
          OUTLINED_FUNCTION_9_34();
          if ((objc_msgSendSuper2(v321, v322, v286) & 1) == 0)
          {
            goto LABEL_470;
          }

          [v286 setName:@"Inference Conditional Router"];
          [v286 input];
          if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
          {
            goto LABEL_470;
          }

          [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.inference.bravo" priority:*(v589 + 48)];
          v323 = [[BWInferenceNode alloc] initWithScheduler:a9 priority:*(v589 + 52)];
          if ((v572 & 1) == 0)
          {
            v326 = v550;
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
            v327 = [(BWNode *)v323 name];
            v328 = [(NSString *)v327 length];
            v329 = @"Person Semantics";
            if (v328)
            {
              v499 = @"Person Semantics";
              v329 = [(NSString *)v327 stringByAppendingFormat:@" + %@"];
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
            v332 = [objc_msgSend(v286 "outputs")];
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
                v335 = [objc_msgSend(v286 "outputs")];
                [(NSArray *)[(BWNode *)v309 inputs] objectAtIndexedSubscript:0];
                OUTLINED_FUNCTION_31_12();
                if (([BWInferenceNode connectOutput:v323 toInput:"connectOutput:toInput:pipelineStage:" pipelineStage:v335]& 1) != 0)
                {
                  [(NSArray *)[(BWNode *)v309 inputs] objectAtIndexedSubscript:1];
                  [OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?];
                  OUTLINED_FUNCTION_21_19();
                  v303 = v558;
                  LODWORD(v302) = v532;
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

- (uint64_t)_buildRedEyeReductionSubPipelineWithName:(uint64_t)a3 pipelineStage:(uint64_t)a4 graph:(uint64_t)a5 sensorConfigurationsByPortType:(uint64_t)a6 inferenceScheduler:(uint64_t *)a7 subPipelineInputOut:(uint64_t *)a8 subPipelineOutputOut:
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
    if (objc_msgSendSuper2(v14, v15, v13) & 1) != 0 && (v16 = -[BWInferenceNode initWithScheduler:priority:]([BWInferenceNode alloc], "initWithScheduler:priority:", a6, *(v10 + 52)), v34 = a2, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Landmarks Node", a2], objc_msgSend(OUTLINED_FUNCTION_8(), "setName:"), -[BWInferenceNode addInferenceOfType:version:configuration:](v16, "addInferenceOfType:version:configuration:", 801, objc_msgSend(v11, "landmarksInferenceVersion") & 0xFFFFFFFFFFFFLL, v11), OUTLINED_FUNCTION_40_11(), (objc_msgSendSuper2(v17, v18, v16)) && (v19 = [BWFunnelNode alloc], OUTLINED_FUNCTION_26_12(), v21 = objc_msgSend(v20, "initWithNumberOfInputs:mediaType:holdMessages:"), OUTLINED_FUNCTION_40_11(), (objc_msgSendSuper2(v22, v23, v21)) && (v24 = -[BWNode input](v13, "input"), v25 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v13, "outputs"), "objectAtIndexedSubscript:", objc_msgSend(v12, "defaultOutputIndex")), objc_msgSend(objc_msgSend(v21, "inputs"), "objectAtIndexedSubscript:", 0), (objc_msgSend(OUTLINED_FUNCTION_6_44(), "connectOutput:toInput:pipelineStage:", v25)) && (v26 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v13, "outputs"), "objectAtIndexedSubscript:", objc_msgSend(v12, "landmarksOutputIndex")), -[BWNode input](v16, "input"), (objc_msgSend(OUTLINED_FUNCTION_6_44(), "connectOutput:toInput:pipelineStage:", v26)) && (v27 = -[BWNode output](v16, "output"), objc_msgSend(objc_msgSend(v21, "inputs"), "objectAtIndexedSubscript:", 1), (objc_msgSend(OUTLINED_FUNCTION_6_44(), "connectOutput:toInput:pipelineStage:", v27)) && (objc_msgSend(v21, "output"), v28 = -[BWRedEyeReducerNode initWithVersion:sensorConfigurationsByPortType:]([BWRedEyeReducerNode alloc], "initWithVersion:sensorConfigurationsByPortType:", 1, a5), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@ Red Eye Reducer", v34), objc_msgSend(OUTLINED_FUNCTION_8(), "setName:"), -[BWRedEyeReducerNode setInferenceType:](v28, "setInferenceType:", 801), -[BWRedEyeReducerNode setInferenceAttachmentKey:](v28, "setInferenceAttachmentKey:", 0x1F219E5F0), OUTLINED_FUNCTION_40_11(), (objc_msgSendSuper2(v29, v30, v28)) && (-[BWNode input](v28, "input"), (objc_msgSend(OUTLINED_FUNCTION_4_51(), "connectOutput:toInput:pipelineStage:")))
    {
      v31 = [(BWNode *)v28 output];
      result = 4294954516;
      if (v24)
      {
        if (v31)
        {
          result = 0;
          *a7 = v24;
          *a8 = v31;
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
    v3 = [a2 name];
    v4 = [v3 length];
    v5 = @"Landmarks";
    if (v4)
    {
      v5 = [v3 stringByAppendingFormat:@" + %@", @"Landmarks"];
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

- (uint64_t)_addMattingInferenceToNode:(unsigned int)a3 mattingVersion:(uint64_t)a4 refinedDepthEnabled:(unsigned int)a5 mainImageDownscalingFactor:(uint64_t)a6 enabledSemantics:(void *)a7 metalCommandQueue:(char)a8 mattingsensorConfigurationsByPortType:(float)a9 clientIsCameraOrDerivative:(float)a10 requiredAdditionalInferenceOutputBuffers:(unsigned int)a11 zoomFactorForPortrait:
{
  if (!a1)
  {
    return 0;
  }

  v20 = [a2 name];
  v21 = [v20 length];
  v22 = @"Matting";
  v47 = a6;
  if (v21)
  {
    v22 = [v20 stringByAppendingFormat:@" + %@", @"Matting"];
  }

  [a2 setName:v22];
  v23 = [objc_msgSend(a7 "allKeys")];
  v24 = [objc_msgSend(a7 objectForKeyedSubscript:{v23), "sensorIDDictionary"}];
  v25 = +[FigCaptureCameraParameters sharedInstance];
  v26 = [objc_msgSend(a7 objectForKeyedSubscript:{v23), "sensorIDString"}];
  *&v27 = a10;
  if ([(FigCaptureCameraParameters *)v25 sdofRenderingVersionForPortType:v23 sensorIDString:v26 zoomFactor:v27])
  {
    *&v28 = a10;
    v29 = [FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v24 zoomFactor:v28];
  }

  else
  {
    v29 = 0;
  }

  if (a3 == 1)
  {
    v30 = [(BWInferenceConfiguration *)[BWMattingInferenceConfiguration alloc] initWithInferenceType:201];
    [(BWInferenceConfiguration *)v30 setPriority:*(a1 + 52)];
    [(BWInferenceConfiguration *)v30 setTuningParameters:v24];
    [(BWMattingInferenceConfiguration *)v30 setSdofRenderingTuningParameters:v29];
    *&v31 = a9;
    [(BWMattingInferenceConfiguration *)v30 setMainImageDownscalingFactor:v31];
    [(BWMattingInferenceConfiguration *)v30 setRefinedDepthDeliveryEnabled:a4];
    [(BWMattingInferenceConfiguration *)v30 setMetalCommandQueue:a6];
    BWInferenceVersionMakeMajor(1);
    v32 = [OUTLINED_FUNCTION_38() addInferenceOfType:201 version:? configuration:?];
LABEL_27:
    if ((a8 & 1) == 0)
    {
      [a2 setAwaitAsynchronousOutputs:1];
    }

    if (a11)
    {
      [a2 setAdditionalOutputPoolRetainedBufferCount:a11];
    }

    return v32;
  }

  v46 = a8;
  if ([(FigCaptureCameraParameters *)v25 learnedMattingVersion]< 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = a4;
  }

  v34 = a4 | 2;
  if (!v33)
  {
    v34 = a4;
  }

  if ((a5 & 1) == 0)
  {
    v34 = a4;
  }

  v35 = a5 & 0x78 | (4 * ((a5 >> 1) & 1)) | v34;
  if (v35)
  {
    v36 = [(BWInferenceConfiguration *)[BWMattingV2InferenceConfiguration alloc] initWithInferenceType:201];
    [(BWMattingV2InferenceConfiguration *)v36 setSensorConfigurationsByPortType:a7];
    [(BWMattingV2InferenceConfiguration *)v36 setEnabledMattes:v35];
    [(BWMattingV2InferenceConfiguration *)v36 setTuningConfiguration:2];
    [(BWInferenceConfiguration *)v36 setPriority:*(a1 + 52)];
    [(BWMattingV2InferenceConfiguration *)v36 setSdofRenderingTuningParameters:v29];
    *&v37 = a9;
    [(BWMattingV2InferenceConfiguration *)v36 setMainImageDownscalingFactor:v37];
    [(BWMattingV2InferenceConfiguration *)v36 setDepthDataDeliveryEnabled:a4];
    [(BWMattingV2InferenceConfiguration *)v36 setMetalCommandQueue:v47];
    BWInferenceVersionMakeMajor(a3);
    v38 = [OUTLINED_FUNCTION_38() addInferenceOfType:201 version:? configuration:?];
    if (v38)
    {
      return v38;
    }
  }

  if (a5)
  {
    v39 = v33;
  }

  else
  {
    v39 = 1;
  }

  if (v39)
  {
    v32 = 0;
    a8 = v46;
    goto LABEL_27;
  }

  v40 = [a2 name];
  v41 = [v40 length];
  v42 = @"Learned Matting";
  a8 = v46;
  if (v41)
  {
    v42 = [v40 stringByAppendingFormat:@" + %@", @"Learned Matting"];
  }

  [a2 setName:v42];
  v43 = [(BWInferenceConfiguration *)[BWLearnedMattingInferenceConfiguration alloc] initWithInferenceType:107];
  [(BWTiledEspressoInferenceConfiguration *)v43 setMetalCommandQueue:0];
  *&v44 = a9;
  [(BWLearnedMattingInferenceConfiguration *)v43 setMainImageDownscalingFactor:v44];
  BWInferenceVersionMakeMajor([(FigCaptureCameraParameters *)v25 learnedMattingVersion]);
  v32 = [OUTLINED_FUNCTION_38() addInferenceOfType:107 version:? configuration:?];
  if (!v32)
  {
    goto LABEL_27;
  }

  return v32;
}

- (uint64_t)_buildScaleAndEncodeSubPipelineWithPipelineStage:(uint64_t)result graph:(uint64_t)a2 nodeConfiguration:(void *)a3 stillImageSinkPipelineWithConfiguration:(uint64_t)a4 sensorConfigurationsByPortType:(void *)a5 supportsScaling:(uint64_t)a6 provideMeteorHeadroom:(int)a7 providePostEncodeInferences:(int)a8 semanticDevelopmentVersion:(char)a9 constituentPhotoDeliveryEnabled:(unsigned int)a10 demosaicedRawEnabled:(unsigned __int8)a11 nonPropagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)a12 propagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)a13 inferenceScheduler:(uint64_t)a14 subPipelineInputOut:(uint64_t)a15 subPipelineOutputOut:(uint64_t)a16 cameraSupportsFlash:(unsigned __int8)a17 cinematicFramingStatesProvider:(void *)a18
{
  v90 = result;
  if (!result)
  {
    return result;
  }

  v123[0] = 0;
  if (!a15 || !a16)
  {
    return FigSignalErrorAtGM();
  }

  [a5 sinkConfiguration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [a5 sinkConfiguration];
  }

  else
  {
    v23 = 0;
  }

  if ([a5 cinematicFramingWarpingRequired])
  {
    v24 = -[BWCinematicFramingWarpingNode initWithFramingStatesProvider:outputDimensions:maxLossyCompressionLevel:]([BWCinematicFramingWarpingNode alloc], a18, [a5 cinematicFramingWarpingOutputDimensions], objc_msgSend(a5, "maxLossyCompressionLevel"));
    [v24 setName:@"CinematicFramingWarper"];
    v122.receiver = v90;
    v122.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    if (!objc_msgSendSuper2(&v122, &selRef_acquireWithError_, v24, v123))
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_62;
    }

    v25 = [v24 input];
    v92 = [v24 output];
  }

  else
  {
    v92 = 0;
    v25 = 0;
  }

  if (a7)
  {
    v80 = a8;
    v26 = v23;
    v27 = v25;
    v28 = [[BWStillImageScalerNode alloc] initWithBasePoolCapacity:1 nodeConfiguration:a4];
    [(BWNode *)v28 setName:@"Scaler"];
    [(BWStillImageScalerNode *)v28 setBlackFillingRequired:a11];
    v29 = [MEMORY[0x1E695DF90] dictionary];
    [v29 addEntriesFromDictionary:a12];
    [v29 addEntriesFromDictionary:a13];
    [OUTLINED_FUNCTION_18_17() setMainImageDownscalingFactorByAttachedMediaKey:?];
    v121.receiver = v90;
    v121.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    if ((objc_msgSendSuper2(&v121, sel_addNode_error_, v28, v123) & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_62;
    }

    if (v92 && ([a3 connectOutput:v92 toInput:-[BWNode input](v28 pipelineStage:{"input"), a2}] & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_65;
    }

    v25 = v27;
    if (!v27)
    {
      v25 = [(BWNode *)v28 input];
    }

    v92 = [(BWNode *)v28 output];
    v23 = v26;
    a8 = v80;
  }

  if (a8)
  {
    v30 = [[BWMeteorHeadroomNode alloc] initWithNodeConfiguration:a4 sensorConfigurationsByPortType:a6];
    [(BWNode *)v30 setName:@"Meteor Headroom"];
    [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters meteorHeadroomProcessingType];
    [OUTLINED_FUNCTION_4() setHeadroomProcessingType:?];
    [a5 gainMapMainImageDownscalingFactor];
    [(BWMeteorHeadroomNode *)v30 setGainMapMainImageDownscalingFactor:?];
    v120.receiver = v90;
    v120.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    if ((objc_msgSendSuper2(&v120, sel_addNode_error_, v30, v123) & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_62;
    }

    if (v92 && ([a3 connectOutput:v92 toInput:-[BWNode input](v30 pipelineStage:{"input"), a2}] & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_65;
    }

    if (!v25)
    {
      v25 = [(BWNode *)v30 input];
    }

    v81 = v25;
    v92 = [(BWNode *)v30 output];
  }

  else
  {
    v81 = v25;
  }

  [v23 previewQualityAdjustedPhotoFilterRenderingEnabled];
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
  if (!a9)
  {
    a14 = 0;
  }

  v36 = [a5 stillImageSinkPipelineProcessingMode] == 1;
  BYTE1(v73) = [a5 clientIsCameraOrDerivative];
  LOBYTE(v73) = v36;
  v37 = [BWPhotoEncoderNode initWithNodeConfiguration:v35 sensorConfigurationsByPortType:"initWithNodeConfiguration:sensorConfigurationsByPortType:semanticDevelopmentVersion:inferenceScheduler:alwaysAwaitInference:portraitRenderQuality:deferredPhotoProcessorEnabled:clientIsCameraOrDerivative:" semanticDevelopmentVersion:a4 inferenceScheduler:a6 alwaysAwaitInference:a10 portraitRenderQuality:a14 deferredPhotoProcessorEnabled:a10 > 0 clientIsCameraOrDerivative:v34];
  [(BWNode *)v37 setName:@"Encoder"];
  [(BWPhotoEncoderNode *)v37 setCameraSupportsFlash:a17];
  [a5 usesHighEncodingPriority];
  [OUTLINED_FUNCTION_17() setUsesHighEncodingPriority:?];
  v38 = [MEMORY[0x1E695DF90] dictionary];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v46 = OUTLINED_FUNCTION_54_6(v38, v39, v40, v41, v42, v43, v44, v45, v73, v75, v18, a16, a15, v81, a2, a3, a6, a4, v90, v92, v94.receiver, v94.super_class, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, *(&v111 + 1), v112, *(&v112 + 1), v113, *(&v113 + 1), v114, *(&v114 + 1), v115);
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
          objc_enumerationMutation(a12);
        }

        v51 = *(*(&v116 + 1) + 8 * v50);
        v52 = [BWPhotoEncoderNodeAttachedMediaConfiguration alloc];
        [objc_msgSend(a12 objectForKeyedSubscript:{v51), "floatValue"}];
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
          objc_enumerationMutation(a13);
        }

        v66 = *(*(&v111 + 1) + 8 * i);
        v67 = [BWPhotoEncoderNodeAttachedMediaConfiguration alloc];
        [objc_msgSend(a13 objectForKeyedSubscript:{v66), "floatValue"}];
        v68 = [(BWPhotoEncoderNodeAttachedMediaConfiguration *)v67 initWithMainImageDownscalingFactor:0 propagationMode:?];
        v69 = [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
      }

      v63 = OUTLINED_FUNCTION_37_2(v69, v70, &v111, &v95);
    }

    while (v63);
  }

  if ([v38 count])
  {
    [(BWPhotoEncoderNode *)v37 setAttachedMediaConfigurationByAttachedMediaKey:v38];
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

  v71 = v82;
  if (!v82)
  {
    v71 = [(BWNode *)v37 input];
  }

  v72 = [(BWNode *)v37 output];
  result = 4294954516;
  if (v71)
  {
    if (v72)
    {
      result = 0;
      *v79 = v71;
      *v78 = v72;
    }
  }

  return result;
}

@end