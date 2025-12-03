@interface BWVisionInferenceAdapter
- (BWVisionInferenceAdapter)init;
- (BWVisionInferenceProvider)_newInferenceProviderWithType:(uint64_t)type configuration:(uint64_t)configuration requests:(uint64_t)requests executesRequestsIndividually:(uint64_t)individually executionTarget:(uint64_t)target preventionReasons:(uint64_t)reasons resourceProvider:(uint64_t)provider additionalCacheAttributes:;
- (VNProcessingDevice)espressoBasedRequestProcessingDevice;
- (id)_generateInferenceProviderCacheKeyWithAttributes:(id)result;
- (id)inferenceProviderForType:(int)type version:(id)version configuration:(id)configuration resourceProvider:(id)provider status:(int *)status;
- (void)dealloc;
@end

@implementation BWVisionInferenceAdapter

- (BWVisionInferenceAdapter)init
{
  v4.receiver = self;
  v4.super_class = BWVisionInferenceAdapter;
  v2 = [(BWInferenceAdapter *)&v4 init];
  if (v2)
  {
    v2->_applicationProcessingDevice = [getVNProcessingDeviceClass() defaultCPUDevice];
    v2->_graphicsProcessingDevice = [getVNProcessingDeviceClass() defaultMetalDevice];
    if (+[BWInferenceEngine isNeuralEngineSupported])
    {
      v2->_neuralProcessingDevice = [getVNProcessingDeviceClass() defaultANEDevice];
    }

    v2->_visionRequestByDescriptor = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (VNProcessingDevice)espressoBasedRequestProcessingDevice
{
  graphicsProcessingDevice = [(BWVisionInferenceAdapter *)self graphicsProcessingDevice];
  if (!+[BWInferenceEngine isNeuralEngineSupported])
  {
    return graphicsProcessingDevice;
  }

  return [(BWVisionInferenceAdapter *)self neuralProcessingDevice];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWVisionInferenceAdapter;
  [(BWInferenceAdapter *)&v3 dealloc];
}

uint64_t __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke(uint64_t a1, void *a2)
{
  [a2 setModelFileBackingStore:2];
  if (*(a1 + 32) < 0xDECAF000uLL)
  {
    [a2 setRevision:?];
    return 0;
  }

  else if ([a2 setRevision:? error:?])
  {
    return 0;
  }

  else
  {
    return 4294935514;
  }
}

uint64_t __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 setModelFileBackingStore:2];
  [a2 setRefineMouthRegion:{objc_msgSend(*(a1 + 32), "refinesMouthLandmarks")}];
  [a2 setRefineLeftEyeRegion:{objc_msgSend(*(a1 + 32), "refinesLeftEyeLandmarks")}];
  [a2 setRefineRightEyeRegion:{objc_msgSend(*(a1 + 32), "refinesRightEyeLandmarks")}];
  [a2 setPerformBlinkDetection:{objc_msgSend(*(a1 + 32), "detectsBlinking")}];
  [a2 setCascadeStepCount:{objc_msgSend(*(a1 + 32), "cascadeStepCount")}];
  v4 = *(a1 + 40);
  if (v4 == 65)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * (v4 == 76);
  }

  [a2 setConstellation:v5];
  return 0;
}

id __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v3, "setWidth:", (2 * llroundf(vcvts_n_f32_s32([a2 width] / 4, 1uLL))));
  -[BWVideoFormatRequirements setHeight:](v3, "setHeight:", (2 * llroundf(vcvts_n_f32_s32([a2 height] / 4, 1uLL))));
  [(BWVideoFormatRequirements *)v3 setSupportedPixelFormats:&unk_1F2247F68];
  [(BWVideoFormatRequirements *)v3 setSupportedColorSpaceProperties:&unk_1F2247F80];
  [(BWVideoFormatRequirements *)v3 setBytesPerRowAlignment:64];
  [(BWInferenceVideoFormatRequirements *)v3 setDeviceOriented:0];
  [(BWInferenceVideoFormatRequirements *)v3 setIncludesInvalidContent:0];
  v5 = v3;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1]);
}

id __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_23(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v3, "setWidth:", [a2 width]);
  -[BWVideoFormatRequirements setHeight:](v3, "setHeight:", [a2 height]);
  [(BWVideoFormatRequirements *)v3 setSupportedPixelFormats:&unk_1F2247F98];
  [(BWVideoFormatRequirements *)v3 setSupportedColorSpaceProperties:&unk_1F2247FB0];
  [(BWVideoFormatRequirements *)v3 setBytesPerRowAlignment:64];
  [(BWInferenceVideoFormatRequirements *)v3 setDeviceOriented:0];
  [(BWInferenceVideoFormatRequirements *)v3 setIncludesInvalidContent:0];
  v5 = v3;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1]);
}

uint64_t __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_2_34(uint64_t a1, void *a2)
{
  v3 = 0;
  if ([a2 setRevision:*(a1 + 32) error:&v3])
  {
    return 0;
  }

  else
  {
    return 4294935594;
  }
}

uint64_t __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_3_35(uint64_t a1, void *a2)
{
  v3 = 0;
  if ([a2 setRevision:*(a1 + 32) error:&v3])
  {
    return 0;
  }

  else
  {
    return 4294935594;
  }
}

uint64_t __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = 0;
  if ([a2 setRevision:*(a1 + 32) error:&v3])
  {
    return 0;
  }

  else
  {
    return 4294935594;
  }
}

uint64_t __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = 0;
  if ([a2 setRevision:*(a1 + 32) error:&v3])
  {
    return 0;
  }

  else
  {
    return 4294935594;
  }
}

uint64_t __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = 0;
  if ([a2 setRevision:*(a1 + 32) error:&v3])
  {
    return 0;
  }

  else
  {
    return 4294935594;
  }
}

uint64_t __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_8(uint64_t a1, void *a2)
{
  [a2 setModelFileBackingStore:2];
  if (*(a1 + 32) < 0xDECAF000uLL)
  {
    [a2 setRevision:?];
    return 0;
  }

  else if ([a2 setRevision:? error:?])
  {
    return 0;
  }

  else
  {
    return 4294935514;
  }
}

uint64_t __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_9(uint64_t a1, void *a2)
{
  [a2 setModelFileBackingStore:2];
  if (*(a1 + 40) < 0xDECAF000uLL)
  {
    [a2 setRevision:?];
  }

  else if (([a2 setRevision:? error:?] & 1) == 0)
  {
    return 4294935514;
  }

  [a2 setRefineMouthRegion:{objc_msgSend(*(a1 + 32), "refinesMouthLandmarks")}];
  [a2 setRefineLeftEyeRegion:{objc_msgSend(*(a1 + 32), "refinesLeftEyeLandmarks")}];
  [a2 setRefineRightEyeRegion:{objc_msgSend(*(a1 + 32), "refinesRightEyeLandmarks")}];
  [a2 setPerformBlinkDetection:{objc_msgSend(*(a1 + 32), "detectsBlinking")}];
  [a2 setCascadeStepCount:{objc_msgSend(*(a1 + 32), "cascadeStepCount")}];
  v5 = [*(a1 + 32) constellationPointCount];
  if (v5 == 65)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (v5 == 76);
  }

  [a2 setConstellation:v6];
  return 0;
}

uint64_t __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_11(uint64_t a1, void *a2)
{
  [a2 setModelFileBackingStore:2];
  if (*(a1 + 32) < 0xDECAF000uLL)
  {
    [a2 setRevision:?];
    return 0;
  }

  else if ([a2 setRevision:? error:?])
  {
    return 0;
  }

  else
  {
    return 4294935514;
  }
}

uint64_t __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_12(uint64_t a1, void *a2)
{
  [a2 setModelFileBackingStore:2];
  if (*(a1 + 32) < 0xDECAF000uLL)
  {
    [a2 setRevision:?];
    return 0;
  }

  else if ([a2 setRevision:? error:?])
  {
    return 0;
  }

  else
  {
    return 4294935514;
  }
}

uint64_t __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_13(uint64_t a1, void *a2)
{
  [a2 setModelFileBackingStore:2];
  if (*(a1 + 32) < 0xDECAF000uLL)
  {
    [a2 setRevision:?];
    return 0;
  }

  else if ([a2 setRevision:? error:?])
  {
    return 0;
  }

  else
  {
    return 4294935514;
  }
}

id __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_14(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v4, "setWidth:", [a2 width] / *(a1 + 40));
  -[BWVideoFormatRequirements setHeight:](v4, "setHeight:", [a2 height] / *(a1 + 40));
  [(BWVideoFormatRequirements *)v4 setSupportedPixelFormats:&unk_1F2247FC8];
  [(BWVideoFormatRequirements *)v4 setSupportedColorSpaceProperties:&unk_1F2247FE0];
  [(BWVideoFormatRequirements *)v4 setBytesPerRowAlignment:64];
  [(BWInferenceVideoFormatRequirements *)v4 setDeviceOriented:0];
  -[BWInferenceVideoFormatRequirements setIncludesInvalidContent:](v4, "setIncludesInvalidContent:", [*(a1 + 32) includesInvalidContent]);
  v6 = v4;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1]);
}

id __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_15(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v4, "setWidth:", [a2 width]);
  -[BWVideoFormatRequirements setHeight:](v4, "setHeight:", [a2 height]);
  [(BWVideoFormatRequirements *)v4 setSupportedPixelFormats:&unk_1F2247FF8];
  [(BWVideoFormatRequirements *)v4 setSupportedColorSpaceProperties:&unk_1F2248010];
  [(BWVideoFormatRequirements *)v4 setBytesPerRowAlignment:64];
  [(BWInferenceVideoFormatRequirements *)v4 setDeviceOriented:0];
  -[BWInferenceVideoFormatRequirements setIncludesInvalidContent:](v4, "setIncludesInvalidContent:", [*(a1 + 32) includesInvalidContent]);
  v6 = v4;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1]);
}

id __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_16(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v4, "setWidth:", [a2 width]);
  -[BWVideoFormatRequirements setHeight:](v4, "setHeight:", [a2 height]);
  [(BWVideoFormatRequirements *)v4 setSupportedPixelFormats:&unk_1F2248028];
  [(BWVideoFormatRequirements *)v4 setSupportedColorSpaceProperties:&unk_1F2248040];
  [(BWVideoFormatRequirements *)v4 setBytesPerRowAlignment:64];
  [(BWInferenceVideoFormatRequirements *)v4 setDeviceOriented:0];
  -[BWInferenceVideoFormatRequirements setIncludesInvalidContent:](v4, "setIncludesInvalidContent:", [*(a1 + 32) includesInvalidContent]);
  v6 = v4;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1]);
}

id __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v3, "setWidth:", [a2 width]);
  -[BWVideoFormatRequirements setHeight:](v3, "setHeight:", [a2 height]);
  [(BWVideoFormatRequirements *)v3 setSupportedPixelFormats:&unk_1F2248058];
  [(BWVideoFormatRequirements *)v3 setSupportedColorSpaceProperties:&unk_1F2248070];
  [(BWVideoFormatRequirements *)v3 setBytesPerRowAlignment:64];
  [(BWInferenceVideoFormatRequirements *)v3 setDeviceOriented:0];
  v5 = v3;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1]);
}

id __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(BWInferenceVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v3, "setWidth:", [a2 width]);
  -[BWVideoFormatRequirements setHeight:](v3, "setHeight:", [a2 height]);
  [(BWVideoFormatRequirements *)v3 setSupportedPixelFormats:&unk_1F2248088];
  [(BWVideoFormatRequirements *)v3 setSupportedColorSpaceProperties:&unk_1F22480A0];
  [(BWVideoFormatRequirements *)v3 setBytesPerRowAlignment:64];
  [(BWInferenceVideoFormatRequirements *)v3 setDeviceOriented:0];
  v5 = v3;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1]);
}

- (id)inferenceProviderForType:(int)type version:(id)version configuration:(id)configuration resourceProvider:(id)provider status:(int *)status
{
  v9 = *&version.var0;
  poolIdentifier = [+[BWMemoryPool sharedMemoryPool](BWMemoryPool poolIdentifier];
  if (!poolIdentifier)
  {
    v174[0] = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (type == 803)
  {
    statusCopy3 = status;
    array = [MEMORY[0x1E695DF70] array];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    configurationCopy = configuration;
    if ((isKindOfClass & 1) == 0)
    {
      configurationCopy = +[BWPhotosCurationInferenceConfiguration configuration];
    }

    v148 = configurationCopy;
    v41 = v9;
    if (v9 == 1)
    {
      v42 = 3737841667;
    }

    else
    {
      v42 = 3737841672;
    }

    v43 = 3737841670;
    if (v9 == 1)
    {
      v43 = 3737841664;
    }

    v149 = v42;
    v150 = v43;
    if (v9 == 1)
    {
      v44 = 3737841664;
    }

    else
    {
      v44 = 3737841668;
    }

    v45 = [BWVisionRequestInferenceDescriptor alloc];
    getVNClassifyImageAestheticsRequestClass();
    [OUTLINED_FUNCTION_7_7() espressoBasedRequestProcessingDevice];
    v46 = OUTLINED_FUNCTION_1_15();
    v49 = OUTLINED_FUNCTION_3_3(v46, v47, &OBJC_METACLASS___EGStillImageDeepFusionNode, v48);
    OUTLINED_FUNCTION_2_13();
    v168[0] = MEMORY[0x1E69E9820];
    v168[1] = 3221225472;
    v168[2] = __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_2_34;
    v168[3] = &__block_descriptor_40_e19_i16__0__VNRequest_8l;
    v168[4] = v44;
    v53 = OUTLINED_FUNCTION_4_14(BWVisionRequestInferenceCreator, v50, v51, v52, v168);
    if (!v53)
    {
      goto LABEL_113;
    }

    v147 = v53;
    [array addObject:v53];
    v54 = [BWVisionRequestInferenceDescriptor alloc];
    getVNGenerateAttentionBasedSaliencyImageRequestClass();
    [OUTLINED_FUNCTION_10_2() espressoBasedRequestProcessingDevice];
    v55 = OUTLINED_FUNCTION_1_15();
    v58 = OUTLINED_FUNCTION_3_3(v55, v56, &OBJC_METACLASS___EGStillImageDeepFusionNode, v57);
    v173[0] = 0;
    v167[0] = MEMORY[0x1E69E9820];
    v167[1] = 3221225472;
    v167[2] = __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_3_35;
    v167[3] = &__block_descriptor_40_e19_i16__0__VNRequest_8l;
    v167[4] = v44;
    v59 = [BWVisionRequestInferenceCreator requestForDescriptor:v58 adapter:self requestInitializationCustomizer:v167 outStatus:v173];
    if (!v59)
    {
      goto LABEL_113;
    }

    v146 = v59;
    [array addObject:v59];
    v60 = [BWVisionRequestInferenceDescriptor alloc];
    getVNClassifyJunkImageRequestClass();
    [OUTLINED_FUNCTION_10_2() espressoBasedRequestProcessingDevice];
    v61 = OUTLINED_FUNCTION_1_15();
    v64 = OUTLINED_FUNCTION_3_3(v61, v62, &OBJC_METACLASS___EGStillImageDeepFusionNode, v63);
    v174[0] = 0;
    v166[0] = MEMORY[0x1E69E9820];
    v166[1] = 3221225472;
    v166[2] = __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_4;
    v166[3] = &__block_descriptor_40_e19_i16__0__VNRequest_8l;
    v166[4] = v150;
    v65 = [BWVisionRequestInferenceCreator requestForDescriptor:v64 adapter:self requestInitializationCustomizer:v166 outStatus:v174];
    if (!v65)
    {
      goto LABEL_113;
    }

    v151 = v65;
    [array addObject:v65];
    v66 = [BWVisionRequestInferenceDescriptor alloc];
    getVNCreateSceneprintRequestClass();
    [OUTLINED_FUNCTION_10_2() espressoBasedRequestProcessingDevice];
    v67 = OUTLINED_FUNCTION_1_15();
    v70 = OUTLINED_FUNCTION_3_3(v67, v68, &OBJC_METACLASS___EGStillImageDeepFusionNode, v69);
    *type = 0;
    v164[0] = MEMORY[0x1E69E9820];
    v164[1] = 3221225472;
    v164[2] = __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_5;
    v164[3] = &__block_descriptor_40_e19_i16__0__VNRequest_8l;
    v164[4] = v149;
    v71 = [BWVisionRequestInferenceCreator requestForDescriptor:v70 adapter:self requestInitializationCustomizer:v164 outStatus:type];
    if (!v71)
    {
      goto LABEL_113;
    }

    [array addObject:v71];
    if (v41 == 1)
    {
      v72 = [BWVisionRequestInferenceDescriptor alloc];
      getVNCreateSceneprintRequestClass();
      v73 = OUTLINED_FUNCTION_5_9();
      v75 = OUTLINED_FUNCTION_3_3(v72, v74, 1, v73);
      v163 = 0;
      v162[0] = MEMORY[0x1E69E9820];
      v162[1] = 3221225472;
      v162[2] = __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_6;
      v162[3] = &__block_descriptor_40_e19_i16__0__VNRequest_8l;
      v162[4] = 3737841668;
      v76 = [BWVisionRequestInferenceCreator requestForDescriptor:v75 adapter:self requestInitializationCustomizer:v162 outStatus:&v163];
      if (!v76)
      {
        goto LABEL_113;
      }

      v77 = v76;
      [array addObject:v76];
    }

    else
    {
      v77 = 0;
    }

    if ([v148 semanticDevelopmentVersion] < 1)
    {
      v83 = 0;
    }

    else
    {
      v78 = [BWVisionRequestInferenceDescriptor alloc];
      getVN5kJNH3eYuyaLxNpZr5Z7ziClass();
      espressoBasedRequestProcessingDevice = [OUTLINED_FUNCTION_7_7() espressoBasedRequestProcessingDevice];
      v81 = OUTLINED_FUNCTION_3_3(v78, v80, &OBJC_METACLASS___EGStillImageDeepFusionNode, espressoBasedRequestProcessingDevice);
      v163 = 0;
      v161[0] = MEMORY[0x1E69E9820];
      v161[1] = 3221225472;
      v161[2] = __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_7;
      v161[3] = &__block_descriptor_40_e19_i16__0__VNRequest_8l;
      v161[4] = v44;
      v82 = [BWVisionRequestInferenceCreator requestForDescriptor:v81 adapter:self requestInitializationCustomizer:v161 outStatus:&v163];
      if (!v82)
      {
        goto LABEL_113;
      }

      v83 = v82;
      [array addObject:v82];
    }

    v36 = -[BWVisionInferenceAdapter _newInferenceProviderWithType:configuration:requests:executesRequestsIndividually:executionTarget:preventionReasons:resourceProvider:additionalCacheAttributes:](self, 803, configuration, array, 0, 3, [MEMORY[0x1E695DFD8] set], provider, 0);
    if (v36)
    {
      [OUTLINED_FUNCTION_8_8() bindIdealInputForRequest:? fromAttachedMediaUsingKey:?];
      [(BWVisionInferenceProvider *)v36 bindOutputForRequest:v147 asMetadataUsingKey:@"VisionAestheticsObservation"];
      [(BWVisionInferenceProvider *)v36 bindOutputForRequest:v146 asMetadataUsingKey:@"VisionImageSaliencyObservation"];
      [OUTLINED_FUNCTION_8_8() bindOutputForRequest:? asMetadataUsingKey:?];
      [(BWVisionInferenceProvider *)v36 bindOutputForRequest:v151 asMetadataUsingKey:@"VisionJunkImageClassificationObservation"];
      if (v77)
      {
        [(BWVisionInferenceProvider *)v36 bindOutputForRequest:v77 asMetadataUsingKey:@"VisionPCAPrintObservation"];
      }

      if (!v83)
      {
        goto LABEL_107;
      }

LABEL_105:
      v112 = OUTLINED_FUNCTION_9_0();
LABEL_106:
      [v112 bindOutputForRequest:? asMetadataUsingKey:?];
      goto LABEL_107;
    }

LABEL_115:
    v37 = 0;
    goto LABEL_114;
  }

  if (type == 802)
  {
    array2 = [MEMORY[0x1E695DF70] array];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      configuration = +[BWFaceSegmentsWithLandmarksInferenceConfiguration configuration];
    }

    if ((v9 & 0xFFFFFFFF0000) != 0 || (v9 - 1) > 2u)
    {
      goto LABEL_19;
    }

    statusCopy3 = status;
    v32 = (v9 - 1);
    v33 = qword_1ACF06230[v32];
    v34 = qword_1ACF06248[v32];
    v35 = qword_1ACF06260[v32];
    if ([configuration requestTypes])
    {
      v84 = [BWVisionRequestInferenceDescriptor alloc];
      getVNDetectFaceRectanglesRequestClass();
      OUTLINED_FUNCTION_5_9();
      v85 = [OUTLINED_FUNCTION_0_11() initWithRequestClass:? processingDevice:? ioSurfaceMemoryPoolId:? revision:?];
      OUTLINED_FUNCTION_2_13();
      v160[0] = MEMORY[0x1E69E9820];
      v160[1] = 3221225472;
      v160[2] = __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_8;
      v160[3] = &__block_descriptor_40_e19_i16__0__VNRequest_8l;
      v160[4] = v33;
      v89 = OUTLINED_FUNCTION_4_14(BWVisionRequestInferenceCreator, v86, v87, v88, v160);
      if (!v89)
      {
        goto LABEL_113;
      }

      v153 = v89;
      [array2 addObject:?];
    }

    else
    {
      v153 = 0;
    }

    if (([configuration requestTypes] & 2) != 0)
    {
      v91 = [BWVisionRequestInferenceDescriptor alloc];
      getVNDetectFaceLandmarksRequestClass();
      OUTLINED_FUNCTION_5_9();
      v92 = [OUTLINED_FUNCTION_0_11() initWithRequestClass:? processingDevice:? ioSurfaceMemoryPoolId:? revision:?];
      OUTLINED_FUNCTION_2_13();
      v159[0] = MEMORY[0x1E69E9820];
      v159[1] = 3221225472;
      v159[2] = __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_9;
      v159[3] = &unk_1E798F770;
      v159[4] = configuration;
      v159[5] = v34;
      v96 = OUTLINED_FUNCTION_4_14(BWVisionRequestInferenceCreator, v93, v94, v95, v159);
      if (!v96)
      {
        goto LABEL_113;
      }

      v90 = v96;
      [array2 addObject:?];
    }

    else
    {
      v90 = 0;
    }

    if (([configuration requestTypes] & 4) != 0)
    {
      v98 = [BWVisionRequestInferenceDescriptor alloc];
      getVNGenerateFaceSegmentsRequestClass();
      OUTLINED_FUNCTION_5_9();
      v99 = [OUTLINED_FUNCTION_0_11() initWithRequestClass:? processingDevice:? ioSurfaceMemoryPoolId:? revision:?];
      OUTLINED_FUNCTION_2_13();
      v103 = OUTLINED_FUNCTION_4_14(BWVisionRequestInferenceCreator, v100, v101, v102, &__block_literal_global_38);
      if (!v103)
      {
        goto LABEL_113;
      }

      v97 = v103;
      [array2 addObject:v103];
    }

    else
    {
      v97 = 0;
    }

    if (([configuration requestTypes] & 0x10) != 0)
    {
      v113 = [BWVisionRequestInferenceDescriptor alloc];
      getVNClassifyFaceAttributesRequestClass();
      OUTLINED_FUNCTION_5_9();
      v114 = [OUTLINED_FUNCTION_0_11() initWithRequestClass:? processingDevice:? ioSurfaceMemoryPoolId:? revision:?];
      OUTLINED_FUNCTION_2_13();
      v158[0] = MEMORY[0x1E69E9820];
      v158[1] = 3221225472;
      v158[2] = __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_11;
      v158[3] = &__block_descriptor_40_e19_i16__0__VNRequest_8l;
      v158[4] = 3737841664;
      v118 = OUTLINED_FUNCTION_4_14(BWVisionRequestInferenceCreator, v115, v116, v117, v158);
      if (!v118)
      {
        goto LABEL_113;
      }

      v104 = v118;
      [array2 addObject:v118];
    }

    else
    {
      v104 = 0;
    }

    if (([configuration requestTypes] & 8) != 0)
    {
      v120 = [BWVisionRequestInferenceDescriptor alloc];
      getVNRecognizeFoodAndDrinkRequestClass();
      OUTLINED_FUNCTION_5_9();
      v121 = [OUTLINED_FUNCTION_0_11() initWithRequestClass:? processingDevice:? ioSurfaceMemoryPoolId:? revision:?];
      OUTLINED_FUNCTION_2_13();
      v157[0] = MEMORY[0x1E69E9820];
      v157[1] = 3221225472;
      v157[2] = __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_12;
      v157[3] = &__block_descriptor_40_e19_i16__0__VNRequest_8l;
      v157[4] = v35;
      v125 = OUTLINED_FUNCTION_4_14(BWVisionRequestInferenceCreator, v122, v123, v124, v157);
      if (!v125)
      {
        goto LABEL_113;
      }

      v119 = v125;
      [array2 addObject:v125];
    }

    else
    {
      v119 = 0;
    }

    if (([configuration requestTypes] & 0x20) != 0)
    {
      v126 = [BWVisionRequestInferenceDescriptor alloc];
      getVNDetectFaceCaptureQualityRequestClass();
      OUTLINED_FUNCTION_5_9();
      v127 = [OUTLINED_FUNCTION_0_11() initWithRequestClass:? processingDevice:? ioSurfaceMemoryPoolId:? revision:?];
      OUTLINED_FUNCTION_2_13();
      v156[0] = MEMORY[0x1E69E9820];
      v156[1] = 3221225472;
      v156[2] = __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_13;
      v156[3] = &__block_descriptor_40_e19_i16__0__VNRequest_8l;
      v156[4] = 3;
      v131 = OUTLINED_FUNCTION_4_14(BWVisionRequestInferenceCreator, v128, v129, v130, v156);
      if (!v131)
      {
        goto LABEL_113;
      }

      v132 = v131;
      [array2 addObject:v131];
    }

    else
    {
      v132 = 0;
    }

    processingDevice = [v97 processingDevice];
    if (self)
    {
      v134 = processingDevice;
      v135 = [(BWVisionInferenceAdapter *)self graphicsProcessingDevice]== processingDevice;
      if ([(BWVisionInferenceAdapter *)self neuralProcessingDevice]== v134)
      {
        v136 = 3;
      }

      else
      {
        v136 = v135;
      }
    }

    else
    {
      v136 = 0;
    }

    v36 = -[BWVisionInferenceAdapter _newInferenceProviderWithType:configuration:requests:executesRequestsIndividually:executionTarget:preventionReasons:resourceProvider:additionalCacheAttributes:](self, 802, configuration, array2, 1, v136, [MEMORY[0x1E695DFD8] set], provider, 0);
    if (v36)
    {
      [configuration detectFacesInFullSizeInput];
      OUTLINED_FUNCTION_6_6(v36, v137, v153);
      if (v90 && ([configuration detectFacesInFullSizeInput] & 1) == 0 && objc_msgSend(configuration, "detectLandmarksInFullSizeInput"))
      {
        OUTLINED_FUNCTION_6_6(v36, v138, v90);
      }

      if (([configuration detectFacesInFullSizeInput] & 1) == 0 && (objc_msgSend(configuration, "detectLandmarksInFullSizeInput") & 1) == 0)
      {
        OUTLINED_FUNCTION_6_6(v36, v139, v97);
      }

      if (v104)
      {
        OUTLINED_FUNCTION_6_6(v36, v139, v104);
      }

      if (v132)
      {
        v140 = OUTLINED_FUNCTION_9_0();
        OUTLINED_FUNCTION_6_6(v140, v141, v142);
      }

      if (v153)
      {
        [(BWVisionInferenceProvider *)v36 bindOutputForRequest:v153 asMetadataUsingKey:@"VisionFaceDetectionObservations"];
        [(BWVisionInferenceProvider *)v36 bindOutputForRequest:v153 asMetadataUsingKey:0x1F219E5F0];
      }

      if (v90)
      {
        [(BWVisionInferenceProvider *)v36 bindOutputForRequest:v90 asMetadataUsingKey:0x1F219E5F0];
      }

      if (v97)
      {
        [(BWVisionInferenceProvider *)v36 bindOutputForRequest:v97 asMetadataUsingKey:0x1F219E5F0];
      }

      if (v104)
      {
        [(BWVisionInferenceProvider *)v36 bindOutputForRequest:v104 asMetadataUsingKey:0x1F219E6F0];
      }

      if (v119)
      {
        [(BWVisionInferenceProvider *)v36 bindOutputForRequest:v119 asMetadataUsingKey:0x1F219E610];
      }

      status = statusCopy3;
      if (!v132)
      {
        goto LABEL_107;
      }

      goto LABEL_105;
    }

    goto LABEL_115;
  }

  if (type != 801)
  {
    v36 = 0;
LABEL_107:
    v37 = 0;
    goto LABEL_108;
  }

  if ((v9 & 0xFFFFFFFF0000) != 0)
  {
    goto LABEL_19;
  }

  if ([configuration inferenceType] != 801)
  {
    configuration = +[BWLandmarksInferenceConfiguration configuration];
  }

  constellationPointCount = [configuration constellationPointCount];
  if ((v9 - 1) > 3u)
  {
LABEL_19:
    v36 = 0;
    v37 = -31782;
    goto LABEL_108;
  }

  v15 = constellationPointCount;
  v16 = (v9 - 1);
  v152 = qword_1ACF061F0[v16];
  statusCopy3 = status;
  v17 = qword_1ACF06210[v16];
  v18 = [BWVisionRequestInferenceDescriptor alloc];
  getVNDetectFaceRectanglesRequestClass();
  [OUTLINED_FUNCTION_7_7() espressoBasedRequestProcessingDevice];
  v19 = OUTLINED_FUNCTION_1_15();
  v22 = OUTLINED_FUNCTION_3_3(v19, v20, &OBJC_METACLASS___EGStillImageDeepFusionNode, v21);
  OUTLINED_FUNCTION_2_13();
  v172[0] = MEMORY[0x1E69E9820];
  v172[1] = 3221225472;
  v172[2] = __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke;
  v172[3] = &__block_descriptor_40_e19_i16__0__VNRequest_8l;
  v172[4] = v17;
  v26 = OUTLINED_FUNCTION_4_14(BWVisionRequestInferenceCreator, v23, v24, v25, v172);
  if (!v26)
  {
LABEL_113:
    v36 = 0;
    v37 = -31702;
LABEL_114:
    status = statusCopy3;
    goto LABEL_108;
  }

  v27 = v26;
  v28 = [BWVisionRequestInferenceDescriptor alloc];
  getVNDetectFaceLandmarksRequestClass();
  v29 = OUTLINED_FUNCTION_10_2();
  if (v9 > 1)
  {
    espressoBasedRequestProcessingDevice2 = [v29 espressoBasedRequestProcessingDevice];
  }

  else
  {
    espressoBasedRequestProcessingDevice2 = [v29 applicationProcessingDevice];
  }

  status = statusCopy3;
  v105 = [(BWVisionRequestInferenceDescriptor *)v28 initWithRequestClass:&OBJC_METACLASS___EGStillImageDeepFusionNode processingDevice:espressoBasedRequestProcessingDevice2 ioSurfaceMemoryPoolId:poolIdentifier revision:v152];
  v173[0] = 0;
  v170[0] = MEMORY[0x1E69E9820];
  v170[1] = 3221225472;
  v170[2] = __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_2;
  v170[3] = &unk_1E798F728;
  v170[4] = configuration;
  v171 = v15;
  v106 = [BWVisionRequestInferenceCreator requestForDescriptor:v105 adapter:self requestInitializationCustomizer:v170 outStatus:v173];
  if (v106)
  {
    v107 = v106;
    v169[0] = v27;
    v169[1] = v106;
    v108 = [MEMORY[0x1E695DEC8] arrayWithObjects:v169 count:2];
    v109 = [MEMORY[0x1E695DFD8] set];
    [v107 processingDevice];
    if (self)
    {
      v110 = [OUTLINED_FUNCTION_7_7() graphicsProcessingDevice] == v28;
      if ([(BWVisionInferenceAdapter *)self neuralProcessingDevice]== v28)
      {
        v111 = 3;
      }

      else
      {
        v111 = v110;
      }
    }

    else
    {
      v111 = 0;
    }

    v36 = [(BWVisionInferenceAdapter *)self _newInferenceProviderWithType:configuration configuration:v108 requests:1 executesRequestsIndividually:v111 executionTarget:v109 preventionReasons:provider resourceProvider:0 additionalCacheAttributes:?];
    if (!v36)
    {
      goto LABEL_107;
    }

    [OUTLINED_FUNCTION_8_8() bindInputForRequest:? fromAttachedMediaUsingKey:? preparedByAttachedMediaKey:? withVideoFormatProvider:?];
    if ([configuration detectLandmarksInFullSizeInput])
    {
      [OUTLINED_FUNCTION_9_0() bindInputForRequest:? fromAttachedMediaUsingKey:? preparedByAttachedMediaKey:? withVideoFormatProvider:?];
    }

    [OUTLINED_FUNCTION_8_8() bindOutputForRequest:? asMetadataUsingKey:?];
    v112 = OUTLINED_FUNCTION_9_0();
    goto LABEL_106;
  }

  v36 = 0;
  v37 = -31702;
LABEL_108:
  if (status)
  {
    *status = v37;
  }

  return v36;
}

- (BWVisionInferenceProvider)_newInferenceProviderWithType:(uint64_t)type configuration:(uint64_t)configuration requests:(uint64_t)requests executesRequestsIndividually:(uint64_t)individually executionTarget:(uint64_t)target preventionReasons:(uint64_t)reasons resourceProvider:(uint64_t)provider additionalCacheAttributes:
{
  if (!self)
  {
    return 0;
  }

  v15 = a2;
  v17 = MEMORY[0x1E695DF90];
  v32 = @"InferenceType";
  v33 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v18 = [v17 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v33, &v32, 1)}];
  v19 = v18;
  if (provider)
  {
    [v18 addEntriesFromDictionary:provider];
  }

  v20 = [(BWVisionInferenceAdapter *)self _generateInferenceProviderCacheKeyWithAttributes:v19];
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  v31.receiver = self;
  v31.super_class = BWVisionInferenceAdapter;
  v22 = objc_msgSendSuper2(&v31, sel_shouldCacheInferenceProvider);
  if ((v15 - 804) >= 0xFFFFFFFD)
  {
    if (v22)
    {
      v30.receiver = self;
      v30.super_class = BWVisionInferenceAdapter;
      v23 = [objc_msgSendSuper2(&v30 cachedInferenceProviderByCacheKey)];
      if (v23)
      {
        return v23;
      }
    }
  }

  v25 = [[BWVisionInferenceProvider alloc] initWithConfiguration:type requests:configuration executesRequestsIndividually:requests executionTarget:individually preventionReasons:target resourceProvider:reasons];
  v24 = v25;
  if (v25)
  {
    [(BWVisionInferenceProvider *)v25 setCustomInferenceIdentifier:v21];
    v29.receiver = self;
    v29.super_class = BWVisionInferenceAdapter;
    v26 = objc_msgSendSuper2(&v29, sel_shouldCacheInferenceProvider);
    if ((v15 - 804) >= 0xFFFFFFFD)
    {
      if (v26)
      {
        v28.receiver = self;
        v28.super_class = BWVisionInferenceAdapter;
        [objc_msgSendSuper2(&v28 cachedInferenceProviderByCacheKey)];
      }
    }
  }

  return v24;
}

uint64_t __99__BWVisionInferenceAdapter_inferenceProviderForType_version_configuration_resourceProvider_status___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = 0;
  if (![a2 setRevision:*(a1 + 32) error:&v4])
  {
    return 4294935594;
  }

  [a2 setReturnAllResults:1];
  return 0;
}

- (id)_generateInferenceProviderCacheKeyWithAttributes:(id)result
{
  if (result)
  {
    v3 = [a2 count];
    if (v3)
    {
      array = [MEMORY[0x1E695DF70] array];
      v12 = OUTLINED_FUNCTION_11_2(array, v5, v6, v7, v8, v9, v10, v11, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, 0);
      if (v12)
      {
        v13 = v12;
        v14 = MEMORY[0];
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (MEMORY[0] != v14)
            {
              objc_enumerationMutation(a2);
            }

            v16 = MEMORY[0x1E696AEC0];
            v26 = *(8 * i);
            v28 = [a2 objectForKeyedSubscript:v26];
            v17 = [array addObject:{objc_msgSend(v16, "stringWithFormat:", @"%@:%@"}];
          }

          v13 = OUTLINED_FUNCTION_11_2(v17, v18, v19, v20, v21, v22, v23, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v61);
        }

        while (v13);
      }

      v3 = [array componentsJoinedByString:@"|"];
    }

    return v3;
  }

  return result;
}

@end