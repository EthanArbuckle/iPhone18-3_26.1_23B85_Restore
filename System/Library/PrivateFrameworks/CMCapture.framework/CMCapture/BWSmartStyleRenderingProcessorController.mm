@interface BWSmartStyleRenderingProcessorController
+ (id)pixelBufferAttributesForSmallLightMap:(int)map aspectRatio:(int)ratio;
+ (id)pixelBufferAttributesWithCapacityForLearntCoefficients:(int)coefficients aspectRatio:(int)ratio;
- (BWSmartStyleRenderingProcessorController)initWithConfiguration:(id)configuration;
- (CMAttachmentBearerRef)_newOutputSampleBufferFromSampleBuffer:(__CVBuffer *)buffer pixelBuffer:(void *)pixelBuffer additionalMetadata:(CFTypeRef *)metadata formatDescriptionInOut:;
- (double)_getDenormalizedFinalCropRectFromSourceForPixelBuffer:(void *)buffer metadata:;
- (double)_getDenormalizedFinalCropRectfromMetadata:(__CVBuffer *)metadata pixelBuffer:;
- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out;
- (int)prepare;
- (int)process;
- (uint64_t)_loadSetupAndPrepareSmartStyleRenderingProcessor:(uint64_t)result;
- (uint64_t)_newLearningCoefficientsPixelBufferWithName:(int)name aspectRatio:;
- (uint64_t)_newPixelBufferWithDimensions:(uint64_t)dimensions pixelFormat:(uint64_t)format name:;
- (uint64_t)_newSmallLightMapPixelBufferWithName:(int)name aspectRatio:;
- (uint64_t)_populateInputLinearPixelBufferColorManagementMetadata:(uint64_t)metadata;
- (uint64_t)_setupConfigurationAndClasses:(uint64_t)classes version:(int)version defaultAspectRatio:;
- (uint64_t)_tuningParameterVariantForCaptureType:(uint64_t)type captureFlags:;
- (void)dealloc;
- (void)updateSmartStyleProcessorConfigurationIfNeededForApplyOnly:(BOOL)only aspectRatio:(int)ratio;
@end

@implementation BWSmartStyleRenderingProcessorController

- (void)updateSmartStyleProcessorConfigurationIfNeededForApplyOnly:(BOOL)only aspectRatio:(int)ratio
{
  smartStyleProcessor = self->_smartStyleProcessor;
  if (only)
  {
    if (![objc_msgSend(-[CMISmartStyleProcessor configuration](smartStyleProcessor configuration])
    {
      return;
    }

    getDefaultProcessorConfigurationForStreaming = [objc_opt_class() getDefaultProcessorConfigurationForStreaming];
  }

  else
  {
    v8 = objc_opt_class();
    v9 = BWAspectRatioValueFromAspectRatio(ratio);
    if (v9 != 0.0 && v9 < 1.0)
    {
      getDefaultProcessorConfigurationForStreaming = [v8 getDefaultProcessorConfigurationForStills3x4];
    }

    else
    {
      getDefaultProcessorConfigurationForStreaming = [v8 getDefaultProcessorConfigurationForStills];
    }
  }

  v11 = getDefaultProcessorConfigurationForStreaming;
  v12 = self->_smartStyleProcessor;

  [(CMISmartStyleProcessor *)v12 setConfiguration:v11];
}

+ (id)pixelBufferAttributesWithCapacityForLearntCoefficients:(int)coefficients aspectRatio:(int)ratio
{
  v5 = *&coefficients;
  v6 = BWStandardProcessorNameForBundleBaseName(@"CMI", @"SmartStyle", *&coefficients);
  v7 = [BWLoadProcessorBundle(@"SmartStyle" v5)];
  v8 = BWAspectRatioValueFromAspectRatio(ratio);
  if (v8 != 0.0 && v8 < 1.0)
  {
    getDefaultProcessorConfigurationForStills3x4 = [v7 getDefaultProcessorConfigurationForStills3x4];
  }

  else
  {
    getDefaultProcessorConfigurationForStills3x4 = [v7 getDefaultProcessorConfigurationForStills];
  }

  return [getDefaultProcessorConfigurationForStills3x4 pixelBufferAttributesWithCapacityForLearntCoefficients];
}

+ (id)pixelBufferAttributesForSmallLightMap:(int)map aspectRatio:(int)ratio
{
  v5 = *&map;
  v6 = BWStandardProcessorNameForBundleBaseName(@"CMI", @"SmartStyle", *&map);
  v7 = [BWLoadProcessorBundle(@"SmartStyle" v5)];
  v8 = BWAspectRatioValueFromAspectRatio(ratio);
  if (v8 != 0.0 && v8 < 1.0)
  {
    getDefaultProcessorConfigurationForStills3x4 = [v7 getDefaultProcessorConfigurationForStills3x4];
  }

  else
  {
    getDefaultProcessorConfigurationForStills3x4 = [v7 getDefaultProcessorConfigurationForStills];
  }

  return [getDefaultProcessorConfigurationForStills3x4 pixelBufferAttributesForSmallLightMap];
}

- (BWSmartStyleRenderingProcessorController)initWithConfiguration:(id)configuration
{
  v8.receiver = self;
  v8.super_class = BWSmartStyleRenderingProcessorController;
  v4 = [(BWStillImageProcessorController *)&v8 initWithName:@"SmartStyle" type:16 configuration:configuration];
  if (v4)
  {
    v6 = objc_autoreleasePoolPush();
    v4->_inferencesNotAvailableForSmartStyleRendering = [configuration inferencesNotAvailableForSmartStyleRendering];
    v7 = [(BWSmartStyleRenderingProcessorController *)v4 _loadSetupAndPrepareSmartStyleRenderingProcessor:configuration];
    v4->_reversibilityEnabled = [configuration reversibilityEnabled];
    v4->_unstyledBufferEmitted = [configuration unstyledBufferEmitted];
    v4->_depthDataDeliveryEnabled = [configuration depthDataDeliveryEnabled];
    objc_autoreleasePoolPop(v6);
    if (v7)
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  [(BWSmartStyleRenderingProcessorController *)self reset];

  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  smartStyleLinearThumbnailFormatDescription = self->_smartStyleLinearThumbnailFormatDescription;
  if (smartStyleLinearThumbnailFormatDescription)
  {
    CFRelease(smartStyleLinearThumbnailFormatDescription);
  }

  smartStyleStyledThumbnailFormatDescription = self->_smartStyleStyledThumbnailFormatDescription;
  if (smartStyleStyledThumbnailFormatDescription)
  {
    CFRelease(smartStyleStyledThumbnailFormatDescription);
  }

  smallLightMapFormatDescription = self->_smallLightMapFormatDescription;
  if (smallLightMapFormatDescription)
  {
    CFRelease(smallLightMapFormatDescription);
  }

  coefficientsFormatDescription = self->_coefficientsFormatDescription;
  if (coefficientsFormatDescription)
  {
    CFRelease(coefficientsFormatDescription);
  }

  reverseCoefficientsFormatDescription = self->_reverseCoefficientsFormatDescription;
  if (reverseCoefficientsFormatDescription)
  {
    CFRelease(reverseCoefficientsFormatDescription);
  }

  personSegmentationFormatDescription = self->_personSegmentationFormatDescription;
  if (personSegmentationFormatDescription)
  {
    CFRelease(personSegmentationFormatDescription);
  }

  skinSegmentationFormatDescription = self->_skinSegmentationFormatDescription;
  if (skinSegmentationFormatDescription)
  {
    CFRelease(skinSegmentationFormatDescription);
  }

  skySegmentationFormatDescription = self->_skySegmentationFormatDescription;
  if (skySegmentationFormatDescription)
  {
    CFRelease(skySegmentationFormatDescription);
  }

  v12.receiver = self;
  v12.super_class = BWSmartStyleRenderingProcessorController;
  [(BWStillImageProcessorController *)&v12 dealloc];
}

- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out
{
  v6 = [(BWStillImageProcessorControllerRequest *)[BWSmartStyleRenderingProcessorControllerRequest alloc] initWithInput:input delegate:delegate];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -12786;
  }

  if (out)
  {
    *out = v7;
  }

  return v6;
}

uint64_t __93__BWSmartStyleRenderingProcessorController__loadSetupAndPrepareSmartStyleRenderingProcessor___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [*(a1 + 32) deferredPhotoProcessorEnabled];
  v5 = @"Still";
  if (v4)
  {
    v5 = @"Still-Deferred";
  }

  [a2 setInstanceLabel:{objc_msgSend(v3, "stringWithFormat:", @"%@", v5)}];
  return 0;
}

- (uint64_t)_loadSetupAndPrepareSmartStyleRenderingProcessor:(uint64_t)result
{
  if (result)
  {
    v4 = result;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __93__BWSmartStyleRenderingProcessorController__loadSetupAndPrepareSmartStyleRenderingProcessor___block_invoke;
    v8[3] = &unk_1E7991C78;
    v8[4] = a2;
    version = [a2 version];
    version2 = [a2 version];
    [a2 sensorConfigurationsByPortType];
    metalCommandQueue = [OUTLINED_FUNCTION_106_0() metalCommandQueue];
    result = BWLoadCreateAndSetupMetalImageBufferProcessor(@"SmartStyle", version, @"CMI", @"SmartStyle", version2, &unk_1F22C45C8, 0, v2, metalCommandQueue, v8, (v4 + 64));
    if (!result)
    {
      result = -[BWSmartStyleRenderingProcessorController _setupConfigurationAndClasses:version:defaultAspectRatio:](v4, *(v4 + 64), [a2 version], objc_msgSend(a2, "defaultAspectRatio"));
      if (!result)
      {
        [*(v4 + 64) setUseLiveMetalAllocations:1];
        return 0;
      }
    }
  }

  return result;
}

- (int)prepare
{
  v3 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor prepareToProcess:13];
  if (!v3)
  {
    [(BWStillImageProcessorController *)self currentRequest];
  }

  return v3;
}

- (int)process
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
  v5 = v4;
  [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
  v7 = v6;
  [-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
  v9 = v8;
  v321 = 64;
  [-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
  v11 = v10;
  v12 = &dword_1EB58E000;
  ImageBuffer = &dword_1EB58E000;
  if (dword_1EB58E320)
  {
    v339 = 0;
    v338 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_13_45();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  currentRequest = [(BWStillImageProcessorController *)self currentRequest];
  v16 = currentRequest;
  v17 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
  if (!currentRequest)
  {
    OUTLINED_FUNCTION_15_42();
    OUTLINED_FUNCTION_0_121();
    v21 = 0;
LABEL_147:
    OUTLINED_FUNCTION_4_98();
    goto LABEL_148;
  }

  if (([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input] applyOnly]& 1) != 0 || (v18 = [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] captureSettings] captureType], v19 = [(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] captureStreamSettings] captureFlags], v20 = v19, v18 == 2) && !self->_reversibilityEnabled && (v19 & 8) == 0 || (BWStillImageProcessingFlagsForSampleBuffer([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame]) & 0x100000) != 0)
  {
    cf = 0;
    v305 = 0;
    OUTLINED_FUNCTION_0_121();
    v21 = 0;
    OUTLINED_FUNCTION_3_112();
    process = 0;
    HIDWORD(v306) = 1;
    goto LABEL_72;
  }

  v271 = 152;
  v21 = objc_alloc_init(self->_smartStyleProcessorInputOutputClass);
  if (!v21)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    OUTLINED_FUNCTION_15_42();
    OUTLINED_FUNCTION_0_121();
    OUTLINED_FUNCTION_3_112();
    process = -12782;
    goto LABEL_72;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame]);
  if (!ImageBuffer)
  {
    OUTLINED_FUNCTION_15_42();
    OUTLINED_FUNCTION_0_121();
    v313 = 0;
LABEL_148:
    dictionary4 = 0;
LABEL_149:
    process = -12780;
    goto LABEL_72;
  }

  inputFrame = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame];
  key = *off_1E798A3C8;
  v24 = CMGetAttachment(inputFrame, *off_1E798A3C8, 0);
  if (!v24 || (v25 = v24, v26 = [(BWSmartStyleRenderingProcessorController *)self _tuningParameterVariantForCaptureType:v18 captureFlags:v20], [(BWStillImageSmartStyle *)dictionary4 setObject:v26 forKeyedSubscript:*off_1E798A930], v340.origin.x = [(BWSmartStyleRenderingProcessorController *)self _getDenormalizedFinalCropRectfromMetadata:v25 pixelBuffer:ImageBuffer], x = v340.origin.x, y = v340.origin.y, width = v340.size.width, height = v340.size.height, CGRectIsNull(v340)))
  {
    OUTLINED_FUNCTION_15_42();
LABEL_146:
    OUTLINED_FUNCTION_0_121();
    goto LABEL_147;
  }

  v323 = v25;
  v31 = BWStillImageBufferTypeToShortString(46);
  v32 = [(BWSmartStyleRenderingProcessorController *)self _newPixelBufferWithDimensions:1111970369 pixelFormat:v31 name:?];
  if (!v32)
  {
    OUTLINED_FUNCTION_15_42();
LABEL_152:
    OUTLINED_FUNCTION_0_121();
    OUTLINED_FUNCTION_3_112();
LABEL_153:
    process = -12786;
    goto LABEL_72;
  }

  v33 = v32;
  v34 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
  v305 = v33;
  if (v34)
  {
    process = v34;
    OUTLINED_FUNCTION_6_82();
    OUTLINED_FUNCTION_0_121();
    OUTLINED_FUNCTION_3_112();
    goto LABEL_72;
  }

  smartStyle = [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] settings] smartStyle];
  if (!smartStyle)
  {
    OUTLINED_FUNCTION_6_82();
    goto LABEL_146;
  }

  v295 = dictionary4;
  dictionary4 = [[BWStillImageSmartStyle alloc] initWithSmartStyle:smartStyle];
  if (!dictionary4)
  {
    OUTLINED_FUNCTION_6_82();
    OUTLINED_FUNCTION_0_121();
    OUTLINED_FUNCTION_4_98();
    goto LABEL_149;
  }

  v298 = v26;
  [v21 setSemanticStyleSceneType:{objc_msgSend(-[BWStillImageCaptureSettings metadata](-[BWStillImageProcessorControllerInput captureSettings](-[BWStillImageProcessorControllerRequest input](v16, "input"), "captureSettings"), "metadata"), "semanticStyleSceneType")}];
  v36 = ImageBuffer;
  ImageBuffer = 0x1E696A000;
  [v323 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(-[BWStillImageCaptureSettings metadata](-[BWStillImageProcessorControllerInput captureSettings](-[BWStillImageProcessorControllerRequest input](v16, "input"), "captureSettings"), "metadata"), "semanticStyleSceneType")), *off_1E798A898}];
  v37 = CVPixelBufferGetWidth(v36);
  pixelBuffer = v36;
  CVPixelBufferGetHeight(v36);
  [OUTLINED_FUNCTION_352() delegate];
  v324 = [v26 processorController:self newOutputPixelBufferForProcessorInput:objc_msgSend(OUTLINED_FUNCTION_106_0() type:"input") dimensions:{1, v37 | (v36 << 32)}];
  if (!v324)
  {
    OUTLINED_FUNCTION_6_82();
    goto LABEL_152;
  }

  *&v297 = x;
  if (BWIsSmartStyleAllowedForAdjustedImage([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] stillImageSettings]))
  {
    BWStillImageBufferTypeToShortString(42);
    [objc_msgSend(OUTLINED_FUNCTION_9_68() "settings")];
    v203 = OUTLINED_FUNCTION_2_126();
    v309 = [(BWSmartStyleRenderingProcessorController *)v203 _newLearningCoefficientsPixelBufferWithName:v204 aspectRatio:v205];
    if (!v309)
    {
      OUTLINED_FUNCTION_6_82();
      OUTLINED_FUNCTION_0_121();
      OUTLINED_FUNCTION_4_98();
      process = -12786;
LABEL_122:
      dictionary4 = v324;
      goto LABEL_72;
    }
  }

  else
  {
    v309 = 0;
  }

  v38 = *MEMORY[0x1E695F050];
  v317 = *(MEMORY[0x1E695F050] + 16);
  v320 = *(MEMORY[0x1E695F050] + 8);
  v314 = *(MEMORY[0x1E695F050] + 24);
  AttachedMedia = BWSampleBufferGetAttachedMedia([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame], 0x1F21AAF50);
  v307 = *&v38;
  *&v296 = width;
  if (AttachedMedia)
  {
    v40 = AttachedMedia;
    v41 = CMSampleBufferGetImageBuffer(AttachedMedia);
    if (v41)
    {
      v49 = v41;
      v50 = OUTLINED_FUNCTION_17_39(v40, v42, v43, v44, v45, v46, v47, v48, v258, v259, v260, v263, v266, v268, 152, v272, key);
      if (v50)
      {
        v51 = v50;
        v52 = y;
        v53 = v11;
        v54 = v9;
        v341.origin.x = [(BWSmartStyleRenderingProcessorController *)self _getDenormalizedFinalCropRectfromMetadata:v50 pixelBuffer:v49];
        v55 = v341.origin.x;
        v56 = v341.origin.y;
        v57 = v341.size.width;
        v58 = v341.size.height;
        if (!CGRectIsNull(v341))
        {
          v299 = v51;
          v59 = CVPixelBufferGetWidth(v49);
          v60 = CVPixelBufferGetHeight(v49);
          v347.size.width = v59;
          v347.size.height = v60;
          v347.origin.x = 0.0;
          v347.origin.y = 0.0;
          v342.origin.x = v55;
          v342.origin.y = v56;
          v342.size.width = v57;
          v342.size.height = v58;
          v61 = CGRectEqualToRect(v342, v347);
LABEL_32:
          v267 = *&v56;
          [v21 setInputLinearCropRect:{v55, v56, v57, v58}];
          v65 = *&v55;
          *&v38 = v307;
          goto LABEL_33;
        }
      }
    }

    goto LABEL_137;
  }

  v62 = BWSampleBufferGetAttachedMedia([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame], 0x1F21AB110);
  if (!v62 || (v63 = CMSampleBufferGetImageBuffer(v62)) == 0)
  {
LABEL_137:
    HIDWORD(v306) = 0;
    goto LABEL_138;
  }

  v49 = v63;
  v52 = y;
  v53 = v11;
  v54 = v9;
  aspectRatio = [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] settings] aspectRatio];
  if (self->_depthDataDeliveryEnabled || (aspectRatio - 1) <= 5)
  {
    v343.origin.x = [(BWSmartStyleRenderingProcessorController *)self _getDenormalizedFinalCropRectFromSourceForPixelBuffer:v49 metadata:v323];
    v57 = v343.size.width;
    v58 = v343.size.height;
    v55 = v343.origin.x;
    v56 = v343.origin.y;
    v61 = 0;
    if (!CGRectIsNull(v343))
    {
      v299 = v323;
      goto LABEL_32;
    }

    HIDWORD(v306) = 0;
LABEL_138:
    cf = 0;
    v321 = 0;
    v311 = 0;
    v312 = 0;
LABEL_161:
    v317 = 0.0;
    v320 = 0.0;
    v313 = 0;
    goto LABEL_120;
  }

  v61 = 0;
  v58 = v314;
  v57 = v317;
  v267 = *&v320;
  v65 = v38;
  v299 = v323;
LABEL_33:
  v308 = v49;
  v66 = [(BWSmartStyleRenderingProcessorController *)self _populateInputLinearPixelBufferColorManagementMetadata:v49];
  if (v66)
  {
    process = v66;
    OUTLINED_FUNCTION_6_82();
    v320 = 0.0;
    v321 = 0;
    v311 = 0;
    v312 = 0;
    v317 = 0.0;
    v313 = 0;
LABEL_163:
    ImageBuffer = 0;
    goto LABEL_121;
  }

  v67 = BWStillImageBufferTypeToShortString(47);
  v68 = [(BWSmartStyleRenderingProcessorController *)self _newPixelBufferWithDimensions:2019963440 pixelFormat:v67 name:?];
  if (!v68)
  {
    OUTLINED_FUNCTION_6_82();
LABEL_157:
    v321 = 0;
    v311 = 0;
    v312 = 0;
LABEL_159:
    v317 = 0.0;
    v320 = 0.0;
    OUTLINED_FUNCTION_4_98();
    process = -12786;
    goto LABEL_121;
  }

  v69 = v68;
  [v21 setInputLinearPixelBuffer:v49];
  cf = v69;
  [v21 setOutputCodedLinearThumbnailPixelBuffer:v69];
  [v21 setOutputCodedLinearThumbnailMetadata:dictionary];
  BWStillImageBufferTypeToShortString(44);
  [objc_msgSend(OUTLINED_FUNCTION_9_68() "settings")];
  v70 = OUTLINED_FUNCTION_2_126();
  v73 = [(BWSmartStyleRenderingProcessorController *)v70 _newSmallLightMapPixelBufferWithName:v71 aspectRatio:v72];
  if (!v73)
  {
    HIDWORD(v306) = 0;
    goto LABEL_157;
  }

  v312 = v73;
  BWStillImageBufferTypeToShortString(45);
  [objc_msgSend(OUTLINED_FUNCTION_9_68() "settings")];
  v74 = OUTLINED_FUNCTION_2_126();
  v77 = [(BWSmartStyleRenderingProcessorController *)v74 _newSmallLightMapPixelBufferWithName:v75 aspectRatio:v76];
  if (!v77)
  {
    HIDWORD(v306) = 0;
    v321 = 0;
    v311 = 0;
    goto LABEL_159;
  }

  v311 = v77;
  [(BWStillImageProcessorControllerRequest *)v16 delegate];
  v313 = [(__CVBuffer *)v69 processorController:self newInferencesForProcessorInput:OUTLINED_FUNCTION_9_68()];
  if (!v313)
  {
    HIDWORD(v306) = 0;
    v321 = 0;
    goto LABEL_161;
  }

  v78 = *off_1E798A8D8;
  v79 = [v323 objectForKeyedSubscript:*off_1E798A8D8];
  v80 = *MEMORY[0x1E6991668];
  HIDWORD(v306) = v61;
  if ([v79 objectForKeyedSubscript:*MEMORY[0x1E6991668]])
  {
    [objc_msgSend(objc_msgSend(v323 objectForKeyedSubscript:{v78), "objectForKeyedSubscript:", v80), "floatValue"}];
  }

  else
  {
    v81 = BWSmartStylePersonMasksValidHint(v323);
  }

  v82 = v81;
  v269 = v78;
  v273 = v80;
  [objc_msgSend(v323 objectForKeyedSubscript:{v78), "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:"), v80}];
  v83 = BWSampleBufferGetAttachedMedia([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame], 0x1F21AABB0);
  if (v83)
  {
    v91 = v83;
    v99 = CMSampleBufferGetImageBuffer(v83);
    if (v99)
    {
      v102 = OUTLINED_FUNCTION_17_39(v91, v92, v93, v94, v95, v96, v97, v98, v258, v259, v260, v263, v267, v78, v271, v273, key);
      goto LABEL_112;
    }

LABEL_45:
    v109 = v314;
    v291 = v320;
    v294 = v317;
    v288 = *&v38;
    v17 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
    goto LABEL_46;
  }

  v101 = [OUTLINED_FUNCTION_7_82(0 v84];
  v99 = v101;
  if (!v101)
  {
    goto LABEL_45;
  }

  v102 = [OUTLINED_FUNCTION_7_82(v101 v102];
LABEL_112:
  v17 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
  v344.origin.x = [(BWSmartStyleRenderingProcessorController *)self _getDenormalizedFinalCropRectfromMetadata:v102 pixelBuffer:v99];
  v109 = v344.size.height;
  v288 = v344.origin.x;
  v291 = v344.origin.y;
  v294 = v344.size.width;
  if (CGRectIsNull(v344))
  {
    goto LABEL_119;
  }

LABEL_46:
  v110 = BWSampleBufferGetAttachedMedia([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame], @"PersonSemanticsSkin");
  v282 = *&v57;
  v285 = *&height;
  v265 = *&v58;
  if (v110)
  {
    v118 = v110;
    v126 = CMSampleBufferGetImageBuffer(v110);
    if (v126)
    {
      v129 = OUTLINED_FUNCTION_17_39(v118, v119, v120, v121, v122, v123, v124, v125, v258, v259, v260, *&v58, v267, v269, v271, v273, key);
      goto LABEL_115;
    }

LABEL_50:
    v137 = v314;
    v136 = v317;
    v138 = v320;
    goto LABEL_51;
  }

  v111 = [OUTLINED_FUNCTION_7_82(0 v111];
  v126 = v111;
  if (!v111)
  {
    goto LABEL_50;
  }

  v129 = [OUTLINED_FUNCTION_7_82(v111 v129];
LABEL_115:
  v345.origin.x = [(BWSmartStyleRenderingProcessorController *)self _getDenormalizedFinalCropRectfromMetadata:v129 pixelBuffer:v126];
  v38 = *&v345.origin.x;
  v138 = v345.origin.y;
  v136 = v345.size.width;
  v137 = v345.size.height;
  if (CGRectIsNull(v345))
  {
    goto LABEL_119;
  }

LABEL_51:
  v139 = BWSampleBufferGetAttachedMedia([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame], 0x1F21AAD30);
  v262 = v65;
  *(&v279 + 1) = v82;
  v278 = v38;
  if (v139)
  {
    v147 = v139;
    v155 = CMSampleBufferGetImageBuffer(v139);
    if (!v155)
    {
      v156 = v136;
      v157 = v109;
      v158 = *&v296;
      v159 = *&v297;
      v17 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
      goto LABEL_56;
    }

    v161 = OUTLINED_FUNCTION_17_39(v147, v148, v149, v150, v151, v152, v153, v154, v258, v259, v65, v265, v267, v269, v271, v273, key);
    v17 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
    goto LABEL_118;
  }

  v140 = [OUTLINED_FUNCTION_7_82(0 v140];
  v155 = v140;
  if (v140)
  {
    v161 = [OUTLINED_FUNCTION_7_82(v140 v161];
LABEL_118:
    v346.origin.x = [(BWSmartStyleRenderingProcessorController *)self _getDenormalizedFinalCropRectfromMetadata:v161 pixelBuffer:v155];
    v307 = v346.origin.x;
    v317 = v346.size.width;
    v320 = v346.origin.y;
    v314 = v346.size.height;
    if (CGRectIsNull(v346))
    {
LABEL_119:
      OUTLINED_FUNCTION_1_133();
LABEL_120:
      ImageBuffer = 0;
      process = -12780;
LABEL_121:
      v12 = v309;
      goto LABEL_122;
    }
  }

  v156 = v136;
  v157 = v109;
  v158 = *&v296;
  v159 = *&v297;
LABEL_56:
  [v21 setInputSmartStyle:objc_alloc_init(self->_smartStyleClass)];
  [objc_msgSend(v21 "inputSmartStyle")];
  [(BWStillImageSmartStyle *)dictionary4 intensity];
  v169 = v168;
  inputSmartStyle = [v21 inputSmartStyle];
  LODWORD(v171) = v169;
  [inputSmartStyle setCastIntensity:v171];
  [(BWStillImageSmartStyle *)dictionary4 toneBias];
  v173 = v172;
  inputSmartStyle2 = [v21 inputSmartStyle];
  LODWORD(v175) = v173;
  [inputSmartStyle2 setToneBias:v175];
  [(BWStillImageSmartStyle *)dictionary4 colorBias];
  v177 = v176;
  inputSmartStyle3 = [v21 inputSmartStyle];
  LODWORD(v179) = v177;
  [inputSmartStyle3 setColorBias:v179];
  [v21 setInputUnstyledPixelBuffer:pixelBuffer];
  [v21 setInputUnstyledCropRect:{v159, v52, v158, *&v285}];
  [v21 setInputMetadataDict:v323];
  [v21 setInputLinearMetadataDict:v299];
  [v21 setInputLinearPixelBuffer:v308];
  [v21 setInputPersonMaskPixelBuffer:v99];
  [v21 setInputPersonMaskCropRect:{v288, v291, v294, v157}];
  [v21 setInputSkinMaskPixelBuffer:v126];
  [v21 setInputSkinMaskCropRect:{*&v278, v138, v156, v137}];
  [v21 setInputSkyMaskPixelBuffer:v155];
  [v21 setInputSkyMaskCropRect:{v307, v320, v317, v314}];
  [v21 setInputTuningType:v298];
  LODWORD(v180) = HIDWORD(v279);
  [v21 setPersonMasksValidHint:v180];
  [v21 setOutputStyledPixelBuffer:v324];
  v181 = OUTLINED_FUNCTION_11_56();
  [v182 setOutputStyledCropRect:v181];
  [v21 setOutputLearnedStyleCoefficientsPixelBuffer:v309];
  [v21 setOutputImageStatistics:dictionary2];
  [v21 setOutputImageStatisticsExtended:dictionary3];
  [v21 setOutputSmallLightMapPixelBuffer:v312];
  [v21 setOutputSmallLinearLightMapPixelBuffer:v311];
  [(CMISmartStyleProcessor *)self->_smartStyleProcessor setInputOutput:v21];
  v183 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor prepareToProcess:29];
  if (v183)
  {
    process = v183;
    OUTLINED_FUNCTION_1_133();
    goto LABEL_163;
  }

  process = [(CMISmartStyleProcessor *)self->_smartStyleProcessor process];
  v12 = v309;
  if (dword_1EB58E320)
  {
    v339 = 0;
    v338 = OS_LOG_TYPE_DEFAULT;
    v184 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_13_45();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v17 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
  }

  if (process)
  {
    OUTLINED_FUNCTION_1_133();
    ImageBuffer = 0;
    goto LABEL_122;
  }

  finishProcessing = [(CMISmartStyleProcessor *)self->_smartStyleProcessor finishProcessing];
  dictionary4 = v324;
  if (finishProcessing)
  {
    process = finishProcessing;
    OUTLINED_FUNCTION_1_133();
    ImageBuffer = 0;
    goto LABEL_72;
  }

  ImageBuffer = [(BWSmartStyleRenderingProcessorController *)self _newOutputSampleBufferFromSampleBuffer:v324 pixelBuffer:v295 additionalMetadata:&self->_outputFormatDescription formatDescriptionInOut:?];
  if (!ImageBuffer)
  {
    OUTLINED_FUNCTION_1_133();
    process = -16807;
    goto LABEL_72;
  }

  if (self->_unstyledBufferEmitted)
  {
    v326 = *off_1E798A788;
    v327 = &unk_1F224A990;
    BWSampleBufferSetAttachedMediaFromPixelBuffer(ImageBuffer, 0x1F21AAF90, pixelBuffer, &self->_outputFormatDescription, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v327 forKeys:&v326 count:1], 0, 1);
  }

  v186 = BWStillImageProcessingFlagsForSampleBuffer(ImageBuffer);
  BWStillImageSetProcessingFlagsForSampleBuffer(ImageBuffer, v186 | 0x200000);
  v187 = 0;
  if ((v186 & 0x1000) != 0 || !self->_reversibilityEnabled)
  {
    v317 = 0.0;
    v188 = 0.0;
    goto LABEL_69;
  }

  if ([(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] settings] smartStyleReversibilitySupported])
  {
    v320 = COERCE_DOUBLE(objc_alloc_init(*(&self->super.super.isa + v271)));
    objc_opt_class();
    v207 = [objc_msgSend(OUTLINED_FUNCTION_9_68() "settings")];
    v208 = BWAspectRatioValueFromAspectRatio(v207);
    if (v208 != 0.0 && v208 < 1.0)
    {
      getDefaultProcessorConfigurationForStills3x4 = [v186 getDefaultProcessorConfigurationForStills3x4];
    }

    else
    {
      getDefaultProcessorConfigurationForStills3x4 = [v186 getDefaultProcessorConfigurationForStills];
    }

    [(CMISmartStyleProcessor *)self->_smartStyleProcessor setConfiguration:getDefaultProcessorConfigurationForStills3x4];
    [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
    v318 = v211;
    [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
    v315 = v212;
    CFRelease(v305);
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v214 = BWStillImageBufferTypeToShortString(46);
    v319 = (v318 | (v315 << 32));
    v215 = [(BWSmartStyleRenderingProcessorController *)self _newPixelBufferWithDimensions:v319 pixelFormat:PixelFormatType name:v214];
    if (v215)
    {
      v216 = v215;
      [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
      v305 = v216;
      v217 = OUTLINED_FUNCTION_11_56();
      v219 = [v218 downScalePixelBuffer:v217 toPixelBuffer:? inputROI:?];
      if (v219)
      {
        process = v219;
        HIDWORD(v306) = 0;
        v321 = 0;
        goto LABEL_174;
      }

      v220 = CVPixelBufferGetPixelFormatType(v324);
      v221 = [(BWSmartStyleRenderingProcessorController *)self _newPixelBufferWithDimensions:v319 pixelFormat:v220 name:@"SmartStyleOutputStyledThumbnail"];
      if (v221)
      {
        v187 = v221;
        [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
        v222 = OUTLINED_FUNCTION_11_56();
        v224 = [v223 downScalePixelBuffer:v222 toPixelBuffer:? inputROI:?];
        if (!v224)
        {
          [*&v320 setInputUnstyledThumbnailPixelBuffer:v187];
          [*&v320 setInputLearningTargetThumbnailPixelBuffer:v216];
          [*&v320 setOutputSmallLightMapPixelBuffer:0];
          [*&v320 setOutputSmallLinearLightMapPixelBuffer:0];
          BWStillImageBufferTypeToShortString(43);
          [objc_msgSend(OUTLINED_FUNCTION_9_68() "settings")];
          v225 = OUTLINED_FUNCTION_2_126();
          *&v228 = COERCE_DOUBLE([(BWSmartStyleRenderingProcessorController *)v225 _newLearningCoefficientsPixelBufferWithName:v226 aspectRatio:v227]);
          if (*&v228 != 0.0)
          {
            v317 = *&v228;
            [*&v320 setOutputLearnedStyleCoefficientsPixelBuffer:?];
            [(CMISmartStyleProcessor *)self->_smartStyleProcessor setInputOutput:*&v320];
            v229 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor prepareToProcess:1];
            if (v229 || (v229 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor process]) != 0 || (v229 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor finishProcessing]) != 0 || (v229 = [(CMISmartStyleProcessor *)self->_smartStyleProcessor resetState]) != 0)
            {
              process = v229;
              v321 = v187;
              HIDWORD(v306) = 0;
              goto LABEL_72;
            }

            if ((v306 & 0x100000000) != 0)
            {
              v230 = OUTLINED_FUNCTION_16_44();
              v233 = cf;
              v234 = v299;
            }

            else
            {
              v316 = [v299 mutableCopy];
              v235 = CVPixelBufferGetWidth(v308);
              v310 = v235 | (CVPixelBufferGetHeight(v308) << 32);
              v322 = v187;
              v236 = CVPixelBufferGetWidth(cf);
              v237 = v236 | (CVPixelBufferGetHeight(cf) << 32);
              v238 = FigCaptureRectFromDimensions();
              v239 = v237;
              v187 = v322;
              FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v316, v310, v239, *&v262, *&v267, *&v282, *&v265, v238, v240, v241, v242);
              FigCaptureMetadataUtilitiesPreventFurtherCropping(v316, v243);
              v230 = OUTLINED_FUNCTION_16_44();
              v233 = cf;
              v234 = v316;
            }

            BWSampleBufferSetAttachedMediaFromPixelBuffer(v230, v231, v233, v232, v234, 0, 0);
            v244 = OUTLINED_FUNCTION_16_44();
            OUTLINED_FUNCTION_7_2(v244, v245, v187, v246);
            v254 = OUTLINED_FUNCTION_17_39(ImageBuffer, v247, v248, v249, v250, v251, v252, v253, v258, v259, v262, v265, v267, v269, v271, v273, key);
            [v254 setObject:dictionary forKeyedSubscript:*off_1E798A900];
            [v254 setObject:dictionary2 forKeyedSubscript:*off_1E798A8D0];
            [v254 setObject:dictionary3 forKeyedSubscript:v270];
            [objc_msgSend(v254 objectForKeyedSubscript:{v270), "setObject:forKeyedSubscript:", objc_msgSend(objc_msgSend(v323, "objectForKeyedSubscript:", v270), "objectForKeyedSubscript:", v274), v274}];
            v255 = OUTLINED_FUNCTION_16_44();
            OUTLINED_FUNCTION_7_2(v255, v256, *&v317, v257);
            OUTLINED_FUNCTION_7_2(ImageBuffer, 0x1F21AB010, v312, &self->_smallLightMapFormatDescription);
            OUTLINED_FUNCTION_7_2(ImageBuffer, 0x1F21AB030, v311, &self->_smallLightMapFormatDescription);
            v188 = v320;
            goto LABEL_69;
          }

          v321 = v187;
          HIDWORD(v306) = 0;
          goto LABEL_176;
        }

        process = v224;
        v321 = v187;
        HIDWORD(v306) = 0;
LABEL_174:
        v317 = 0.0;
        goto LABEL_72;
      }

      HIDWORD(v306) = 0;
    }

    else
    {
      HIDWORD(v306) = 0;
      v305 = 0;
    }

    v321 = 0;
LABEL_176:
    v317 = 0.0;
    goto LABEL_153;
  }

  v187 = 0;
  v317 = 0.0;
  v188 = 0.0;
LABEL_69:
  v320 = v188;
  v321 = v187;
  if (v12)
  {
    v189 = OUTLINED_FUNCTION_16_44();
    OUTLINED_FUNCTION_7_2(v189, v190, v12, v191);
  }

  HIDWORD(v306) = 0;
  process = 0;
LABEL_72:
  BWSampleBufferRemoveAttachedMedia([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame], 0x1F21AB070);
  BWSampleBufferRemoveAttachedMedia([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame], 0x1F21AB110);
  inputFrame2 = [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame];
  v193 = v17[119];
  BWSampleBufferRemoveAttachedMedia(inputFrame2, v193);
  BWSampleBufferRemoveAttachedMedia(ImageBuffer, 0x1F21AB070);
  BWSampleBufferRemoveAttachedMedia(ImageBuffer, v193);
  BWSampleBufferRemoveAttachedMedia(ImageBuffer, 0x1F21AB110);
  BWSampleBufferRemoveAttachedMedia(ImageBuffer, 0x1F21AAED0);
  BWSampleBufferRemoveAttachedMedia(ImageBuffer, 0x1F21AAEF0);
  BWSampleBufferRemoveAttachedMedia(ImageBuffer, 0x1F21AAF30);
  if (process)
  {
    v325 = dictionary4;
    v194 = v12;
    v339 = 0;
    v338 = OS_LOG_TYPE_DEFAULT;
    v195 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v196 = v339;
    if (os_log_type_enabled(v195, v338))
    {
      v197 = v196;
    }

    else
    {
      v197 = v196 & 0xFFFFFFFE;
    }

    if (v197)
    {
      settingsID = [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] settings] settingsID];
      v328 = 136315650;
      v329 = "[BWSmartStyleRenderingProcessorController process]";
      v330 = 1024;
      v331 = process;
      v332 = 2048;
      v333 = settingsID;
      OUTLINED_FUNCTION_17_25();
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    settingsID2 = [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] settings] settingsID];
    v334 = 67109376;
    v335 = process;
    v336 = 2048;
    v337 = settingsID2;
    v200 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(10, v200, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWSmartStyleRenderingProcessorController.m", 816, @"LastShownDate:BWSmartStyleRenderingProcessorController.m:816", @"LastShownBuild:BWSmartStyleRenderingProcessorController.m:816", 0);
    free(v200);
    BWStillImageSetProcessingFlagsForSampleBuffer([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame], 0x800000);
    [(BWStillImageProcessorControllerRequest *)v16 delegate];
    [OUTLINED_FUNCTION_9_68() inputFrame];
    [objc_msgSend(OUTLINED_FUNCTION_352() "input")];
    [OUTLINED_FUNCTION_106_0() input];
    [OUTLINED_FUNCTION_12_55() processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    v201 = v305;
    v12 = v194;
    dictionary4 = v325;
  }

  else
  {
    if (HIDWORD(v306))
    {
      BWStillImageSetProcessingFlagsForSampleBuffer([(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v16 input] inputFrame], 0x2000000);
      [(BWStillImageProcessorControllerRequest *)v16 delegate];
      [OUTLINED_FUNCTION_9_68() inputFrame];
      [objc_msgSend(OUTLINED_FUNCTION_352() "input")];
      [OUTLINED_FUNCTION_106_0() input];
    }

    else
    {
      [(BWStillImageProcessorControllerRequest *)v16 delegate];
      [OUTLINED_FUNCTION_9_68() inputBufferType];
      [OUTLINED_FUNCTION_352() input];
    }

    [OUTLINED_FUNCTION_12_55() processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    v201 = v305;
  }

  if (ImageBuffer)
  {
    CFRelease(ImageBuffer);
  }

  if (dictionary4)
  {
    CFRelease(dictionary4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v317 != 0.0)
  {
    CFRelease(*&v317);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v312)
  {
    CFRelease(v312);
  }

  if (v311)
  {
    CFRelease(v311);
  }

  if (v201)
  {
    CFRelease(v201);
  }

  if (v321)
  {
    CFRelease(v321);
  }

  return 0;
}

- (uint64_t)_tuningParameterVariantForCaptureType:(uint64_t)type captureFlags:
{
  if (result)
  {
    v3 = MEMORY[0x1E6991680];
    switch(a2)
    {
      case 1:
      case 7:
        v3 = MEMORY[0x1E69916B0];
        break;
      case 2:
        v3 = MEMORY[0x1E6991698];
        break;
      case 10:
        v3 = MEMORY[0x1E69916A0];
        break;
      case 11:
        v3 = MEMORY[0x1E6991688];
        if ((type & 0x800000000) == 0)
        {
          v3 = MEMORY[0x1E69916A0];
        }

        break;
      case 12:
      case 13:
        v3 = MEMORY[0x1E6991678];
        break;
      default:
        break;
    }

    if ((~type & 0x100000080) == 0)
    {
      v3 = MEMORY[0x1E6991690];
    }

    return *v3;
  }

  return result;
}

- (double)_getDenormalizedFinalCropRectfromMetadata:(__CVBuffer *)metadata pixelBuffer:
{
  if (!self)
  {
    return 0.0;
  }

  x = *MEMORY[0x1E695F050];
  if (a2)
  {
    if (metadata)
    {
      FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect();
      v8 = v7;
      v10 = v9;
      v12 = v11;
      Width = CVPixelBufferGetWidth(metadata);
      Height = CVPixelBufferGetHeight(metadata);
      [objc_msgSend(objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798A940), "objectForKeyedSubscript:", *off_1E798AA00), "doubleValue"}];
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(Width, Height, FinalCropRect, v8, v10, v12, v15);
      x = v17.origin.x;
      if (CGRectIsNull(v17))
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
      }
    }
  }

  return x;
}

- (uint64_t)_newPixelBufferWithDimensions:(uint64_t)dimensions pixelFormat:(uint64_t)format name:
{
  if (!self)
  {
    return 0;
  }

  v4 = +[BWOnDemandPixelBufferAllocator onDemandAllocatorWithDimensions:pixelFormat:name:memoryPool:](BWOnDemandPixelBufferAllocator, "onDemandAllocatorWithDimensions:pixelFormat:name:memoryPool:", a2, dimensions, format, +[BWMemoryPool sharedMemoryPool]);
  if (!v4)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 0;
  }

  return [v4 newPixelBuffer];
}

- (uint64_t)_newLearningCoefficientsPixelBufferWithName:(int)name aspectRatio:
{
  if (result)
  {
    v4 = objc_opt_class();
    v5 = BWAspectRatioValueFromAspectRatio(name);
    if (v5 != 0.0 && v5 < 1.0)
    {
      getDefaultProcessorConfigurationForStills3x4 = [v4 getDefaultProcessorConfigurationForStills3x4];
    }

    else
    {
      getDefaultProcessorConfigurationForStills3x4 = [v4 getDefaultProcessorConfigurationForStills];
    }

    pixelBufferAttributesWithCapacityForLearntCoefficients = [getDefaultProcessorConfigurationForStills3x4 pixelBufferAttributesWithCapacityForLearntCoefficients];
    [objc_msgSend(pixelBufferAttributesWithCapacityForLearntCoefficients objectForKeyedSubscript:{*MEMORY[0x1E6966130]), "intValue"}];
    [objc_msgSend(pixelBufferAttributesWithCapacityForLearntCoefficients objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "intValue"}];
    [objc_msgSend(pixelBufferAttributesWithCapacityForLearntCoefficients objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "intValue"}];
    v9 = OUTLINED_FUNCTION_14_44();

    return [(BWSmartStyleRenderingProcessorController *)v9 _newPixelBufferWithDimensions:v10 pixelFormat:v11 name:v12];
  }

  return result;
}

- (double)_getDenormalizedFinalCropRectFromSourceForPixelBuffer:(void *)buffer metadata:
{
  if (!self)
  {
    return 0.0;
  }

  result = *MEMORY[0x1E695F050];
  if (pixelBuffer)
  {
    if (buffer)
    {
      Width = CVPixelBufferGetWidth(pixelBuffer);
      Height = CVPixelBufferGetHeight(pixelBuffer);
      [objc_msgSend(objc_msgSend(buffer objectForKeyedSubscript:{*off_1E798A940), "objectForKeyedSubscript:", *off_1E798AA00), "doubleValue"}];
      v9 = v8;
      FinalCropRectFromSource = FigCaptureMetadataUtilitiesGetFinalCropRectFromSource();
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(Width, Height, FinalCropRectFromSource, v11, v12, v13, v9);
    }
  }

  return result;
}

- (uint64_t)_populateInputLinearPixelBufferColorManagementMetadata:(uint64_t)metadata
{
  if (!metadata)
  {
    return 0;
  }

  if (pixelBuffer)
  {
    CVPixelBufferGetPixelFormatType(pixelBuffer);
    v3 = CMIGetPixelFormatInfo();
    v4 = *MEMORY[0x1E6965D88];
    if (CMGetAttachment(pixelBuffer, *MEMORY[0x1E6965D88], 0))
    {
      if ((v3 & 0x100) == 0)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_3_19();
        if (!CMGetAttachment(v10, v11, 0))
        {
          v12 = OUTLINED_FUNCTION_3_19();
          CVBufferSetAttachment(v12, v13, v14, kCVAttachmentMode_ShouldPropagate);
        }

        return 0;
      }
    }

    else
    {
      CVBufferSetAttachment(pixelBuffer, v4, *MEMORY[0x1E6965DD0], kCVAttachmentMode_ShouldPropagate);
      if ((v3 & 0x100) == 0)
      {
        goto LABEL_9;
      }
    }

    v5 = OUTLINED_FUNCTION_3_19();
    if (!CMGetAttachment(v5, v6, 0))
    {
      v7 = OUTLINED_FUNCTION_3_19();
      CVBufferSetAttachment(v7, v8, v9, kCVAttachmentMode_ShouldPropagate);
    }

    goto LABEL_9;
  }

  FigDebugAssert3();

  return FigSignalErrorAtGM();
}

- (uint64_t)_newSmallLightMapPixelBufferWithName:(int)name aspectRatio:
{
  if (result)
  {
    v4 = objc_opt_class();
    v5 = BWAspectRatioValueFromAspectRatio(name);
    if (v5 != 0.0 && v5 < 1.0)
    {
      getDefaultProcessorConfigurationForStills3x4 = [v4 getDefaultProcessorConfigurationForStills3x4];
    }

    else
    {
      getDefaultProcessorConfigurationForStills3x4 = [v4 getDefaultProcessorConfigurationForStills];
    }

    pixelBufferAttributesForSmallLightMap = [getDefaultProcessorConfigurationForStills3x4 pixelBufferAttributesForSmallLightMap];
    [objc_msgSend(pixelBufferAttributesForSmallLightMap objectForKeyedSubscript:{*MEMORY[0x1E6966130]), "intValue"}];
    [objc_msgSend(pixelBufferAttributesForSmallLightMap objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "intValue"}];
    [objc_msgSend(pixelBufferAttributesForSmallLightMap objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "intValue"}];
    v9 = OUTLINED_FUNCTION_14_44();

    return [(BWSmartStyleRenderingProcessorController *)v9 _newPixelBufferWithDimensions:v10 pixelFormat:v11 name:v12];
  }

  return result;
}

- (CMAttachmentBearerRef)_newOutputSampleBufferFromSampleBuffer:(__CVBuffer *)buffer pixelBuffer:(void *)pixelBuffer additionalMetadata:(CFTypeRef *)metadata formatDescriptionInOut:
{
  if (result)
  {
    v6 = 0;
    target = 0;
    v7 = 1;
    if (a2 && buffer)
    {
      if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(a2, buffer, metadata, &target))
      {
        v6 = 0;
      }

      else
      {
        v9 = *off_1E798A3C8;
        v6 = [CMGetAttachment(target *off_1E798A3C8];
        if ([pixelBuffer count])
        {
          [v6 addEntriesFromDictionary:pixelBuffer];
        }

        CMSetAttachment(target, v9, v6, 1u);
        BWSampleBufferPropagateAttachedMedia(a2, target);
        v7 = 0;
      }
    }

    result = target;
    if (v7)
    {
      if (target)
      {
        CFRelease(target);
        return 0;
      }
    }
  }

  return result;
}

- (uint64_t)_setupConfigurationAndClasses:(uint64_t)classes version:(int)version defaultAspectRatio:
{
  if (result)
  {
    v7 = result;
    v8 = *(result + 161);
    v9 = objc_opt_class();
    v10 = v9;
    if (v8 == 1)
    {
      getDefaultProcessorConfigurationForStreaming = [v9 getDefaultProcessorConfigurationForStreaming];
    }

    else
    {
      v12 = BWAspectRatioValueFromAspectRatio(version);
      if (v12 != 0.0 && v12 < 1.0)
      {
        getDefaultProcessorConfigurationForStreaming = [v10 getDefaultProcessorConfigurationForStills3x4];
      }

      else
      {
        getDefaultProcessorConfigurationForStreaming = [v10 getDefaultProcessorConfigurationForStills];
      }
    }

    [a2 setConfiguration:getDefaultProcessorConfigurationForStreaming];
    if ([a2 configuration] && (objc_msgSend(a2, "setShouldFlushCVMTLTextureCacheAfterProcessing:", 1), v14 = NSClassFromString(objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CMISmartStyleV%d", classes)), (*(v7 + 144) = v14) != 0) && (v15 = NSClassFromString(objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CMISmartStyleProcessorInputOutputV%d", classes)), (*(v7 + 152) = v15) != 0))
    {
      return 0;
    }

    else
    {
      return 4294954510;
    }
  }

  return result;
}

@end