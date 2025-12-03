@interface BWPhotonicEngineNodeConfiguration
+ (void)initialize;
- (BOOL)_isDemosaicedRawCaptureNeedingInferencesWithSettigs:(id)settigs;
- (BOOL)_isInferenceGenerationRequiredForSettings:(id)settings;
- (BOOL)applyingZoomBeforeDeepZoomAllowedWithSampleBuffer:(opaqueCMSampleBuffer *)buffer bufferType:(unint64_t)type portType:(id)portType;
- (BOOL)areInferencesRequiredByProcessorControllersForSettings:(id)settings;
- (BOOL)idcSupportedForCaptureType:(int)type captureFlags:(unint64_t)flags portType:(id)portType;
- (BOOL)isDeepZoomSupportedForStereoPhotosWithSettings:(id)settings;
- (BOOL)isDeferredRawDeepFusionCapture:(id)capture;
- (BOOL)isDeferredRawLearnedNRCapture:(id)capture;
- (BOOL)isDepthCaptureNeedingPersonSegmentationMasksWithSettings:(id)settings;
- (BOOL)isGDCCaptureForPortType:(id)type settings:(id)settings;
- (BOOL)isIDCCaptureForPortType:(id)type settings:(id)settings;
- (BOOL)isInferenceInputImageRequiredForSettings:(id)settings portType:(id)type;
- (BOOL)isRedEyeReductionFlashCapture:(id)capture;
- (BOOL)isReferenceOrClientBracketFrameEmissionNeededForSettings:(id)settings portType:(id)type;
- (BOOL)isSWFRFlashCapture:(id)capture;
- (BOOL)isScalerRequiredForSettings:(id)settings portType:(id)type preNoiseReductionScalerOut:(BOOL *)out;
- (BOOL)isSemanticRenderingCapture:(id)capture;
- (BOOL)isSemanticStylesCaptureNeedingInferencesWithSettings:(id)settings;
- (BOOL)isSmartStyleRenderingCapture:(id)capture;
- (BOOL)isSmartStylesCaptureNeedingInferencesWithSettings:(id)settings;
- (BOOL)requiresResizedOutputDimensionsWithInputDimensions:(id)dimensions;
- (BOOL)shouldProvideInferenceAttachedMediaWithSettings:(id)settings;
- (BOOL)shouldProvideInferencesForAttachedMediaMode:(int)mode settings:(id)settings;
- (NSDictionary)providedInferenceAttachedMediaModesByAttachedMediaKey;
- (double)gainMapMainImageDownscalingFactor;
- (double)inferenceMainImageDownscalingFactor;
- (double)sensorCenterOffset;
- (id)_inferenceAttachedMediaRequiredForDemosaicedRawCaptureWithSettings:(id)settings inferences:(id)inferences;
- (id)_inferenceAttachedMediaRequiredForDepthProcessingWithSettings:(id)settings;
- (id)_inferenceAttachedMediaRequiredForSmartStyleWithSettings:(id)settings;
- (id)demosaicedRawFormatRequirementsWithDimensions:(id)dimensions colorSpaceProperties:(int)properties;
- (id)harvestStillImageInferencesFromSampleBuffer:(opaqueCMSampleBuffer *)buffer stillImageSettings:(id)settings enabledInferenceMasks:(id)masks;
- (id)inferenceAttachedMediaRequiredForSettings:(id)settings inferences:(id)inferences;
- (id)resolvedProcessingResolutionFlavorsForSettings:(id)settings;
- (int)gdcSourceForSettings:(id)settings portType:(id)type;
- (int)prepareSampleBufferForInferenceProcessing:(opaqueCMSampleBuffer *)processing inferenceInput:(id)input stillImageSettings:(id)settings inferenceInputBufferType:(unint64_t)type;
- (int)resolvedProcessingResolutionFlavorForInput:(id)input;
- (int)resolvedProcessingResolutionFlavorForSettings:(id)settings portType:(id)type;
- (uint64_t)constantColorVersion;
- (uint64_t)continuousZoomWithDepthSupported;
- (uint64_t)dcProcessingWithDepthSupported;
- (uint64_t)deepFusionSupportEnabled;
- (uint64_t)deepFusionSyntheticsInNRSupportEnabled;
- (uint64_t)deepZoomMode;
- (uint64_t)deepZoomVersion;
- (uint64_t)demosaicedRawPixelFormat;
- (uint64_t)depthDataDeliveryEnabled;
- (uint64_t)digitalFlashSupportEnabled;
- (uint64_t)dimensionsByResolutionFlavorByPortType;
- (uint64_t)generateInferencesForSemanticProcessingIfNeeded;
- (uint64_t)inputIs10Bit;
- (uint64_t)learnedNRMode;
- (uint64_t)linearYUVPixelFormat;
- (uint64_t)maxDeepFusionOutputCount;
- (uint64_t)maxNumberOfBurstCapturesAllowedInFlight;
- (uint64_t)minimumOutputBufferCount;
- (uint64_t)outputBufferCount;
- (uint64_t)outputColorSpaceProperties;
- (uint64_t)outputDimensions;
- (uint64_t)outputPixelFormat;
- (uint64_t)outputPoolBackPressureEnabled;
- (uint64_t)pointCloudInputRetainedBufferCount;
- (uint64_t)portTypesWithGeometricDistortionCorrectionEnabled;
- (uint64_t)portTypesWithIntelligentDistortionCorrectionEnabled;
- (uint64_t)portTypesWithLearnedFusionEnabled;
- (uint64_t)portTypesWithRawNightModeEnabled;
- (uint64_t)processingAspectRatio;
- (uint64_t)providedInferenceAttachedMediaByMode;
- (uint64_t)rawSensorDimensions;
- (uint64_t)referenceFrameSelectionDelegate;
- (uint64_t)retainedBufferCount;
- (uint64_t)semanticRenderingVersion;
- (uint64_t)semanticStyleRenderingEnabled;
- (uint64_t)sensorConfigurationsByPortType;
- (uint64_t)setAlwaysAllowModifyingInputBuffers:(uint64_t)result;
- (uint64_t)setCmiResourceEnabled:(uint64_t)result;
- (uint64_t)setConstantColorClippingRecoveryEnabled:(uint64_t)result;
- (uint64_t)setConstantColorSaturationBoostEnabled:(uint64_t)result;
- (uint64_t)setConstantColorVersion:(uint64_t)result;
- (uint64_t)setContinuousZoomWithDepthSupported:(uint64_t)result;
- (uint64_t)setDcProcessingWithDepthSupported:(uint64_t)result;
- (uint64_t)setDeepFusionSupportEnabled:(uint64_t)result;
- (uint64_t)setDeepFusionSyntheticsInNRSupportEnabled:(uint64_t)result;
- (uint64_t)setDeepFusionWaitForPreprocessingToFinish:(uint64_t)result;
- (uint64_t)setDeepZoomMode:(uint64_t)result;
- (uint64_t)setDeepZoomVersion:(uint64_t)result;
- (uint64_t)setDemosaicedRawEnabled:(uint64_t)result;
- (uint64_t)setDemosaicedRawPixelFormat:(uint64_t)result;
- (uint64_t)setDepthDataDeliveryEnabled:(uint64_t)result;
- (uint64_t)setDigitalFlashSupportEnabled:(uint64_t)result;
- (uint64_t)setGainMapMainImageDownscalingFactor:(uint64_t)result;
- (uint64_t)setGenerateInferencesForSemanticProcessingIfNeeded:(uint64_t)result;
- (uint64_t)setGeometricDistortionCorrectionExpandedImageDimensions:(uint64_t)result;
- (uint64_t)setGreenGhostMitigationVersion:(uint64_t)result;
- (uint64_t)setHorizontalSensorBinningFactor:(uint64_t)result;
- (uint64_t)setInferenceMainImageDownscalingFactor:(uint64_t)result;
- (uint64_t)setInputIs10Bit:(uint64_t)result;
- (uint64_t)setIntelligentDistortionCorrectionAppliesFinalDimensions:(uint64_t)result;
- (uint64_t)setIntelligentDistortionCorrectionVersion:(uint64_t)result;
- (uint64_t)setLearnedNRMode:(uint64_t)result;
- (uint64_t)setLinearYUVPixelFormat:(uint64_t)result;
- (uint64_t)setMaxDeepFusionOutputCount:(uint64_t)result;
- (uint64_t)setMaxNumberOfBurstCapturesAllowedInFlight:(uint64_t)result;
- (uint64_t)setMinimumOutputBufferCount:(uint64_t)result;
- (uint64_t)setOutputBufferCount:(uint64_t)result;
- (uint64_t)setOutputColorSpaceProperties:(uint64_t)result;
- (uint64_t)setOutputDimensions:(uint64_t)result;
- (uint64_t)setOutputPixelFormat:(uint64_t)result;
- (uint64_t)setOutputPoolBackPressureEnabled:(uint64_t)result;
- (uint64_t)setPersonSemanticsVersion:(uint64_t)result;
- (uint64_t)setPointCloudInputRetainedBufferCount:(uint64_t)result;
- (uint64_t)setProcessingAspectRatio:(uint64_t)result;
- (uint64_t)setQuadraProcessingSupportEnabled:(uint64_t)result;
- (uint64_t)setRawSensorDimensions:(uint64_t)result;
- (uint64_t)setRedEyeReductionEnabled:(uint64_t)result;
- (uint64_t)setReferenceFrameSelectionDelegate:(uint64_t)result;
- (uint64_t)setReplicatePixelsOutsideOfFinalImageDimensionsWithDCProcessing:(uint64_t)result;
- (uint64_t)setRetainedBufferCount:(uint64_t)result;
- (uint64_t)setSemanticDevelopmentVersion:(uint64_t)result;
- (uint64_t)setSemanticRenderingVersion:(uint64_t)result;
- (uint64_t)setSemanticStyleRenderingEnabled:(uint64_t)result;
- (uint64_t)setSensorCenterOffset:(double)offset;
- (uint64_t)setSensorRawPixelFormat:(uint64_t)result;
- (uint64_t)setSfhrMode:(uint64_t)result;
- (uint64_t)setShouldComputeDisparityWhenCalibrationFails:(uint64_t)result;
- (uint64_t)setSmartStyleRenderingEnabled:(uint64_t)result;
- (uint64_t)setSmartStyleRenderingVersion:(uint64_t)result;
- (uint64_t)setSmartStyleReversibilityEnabled:(uint64_t)result;
- (uint64_t)setSoftISPSupportEnabled:(uint64_t)result;
- (uint64_t)setStandardFormatDimensions:(uint64_t)result;
- (uint64_t)setStillImageFusionScheme:(uint64_t)result;
- (uint64_t)setStillImageGDCSourceMode:(uint64_t)result;
- (uint64_t)setSwfrVersion:(uint64_t)result;
- (uint64_t)setUltraHighResolutionProcessingEnabled:(uint64_t)result;
- (uint64_t)setUnifiedBracketingFusionSupportEnabled:(uint64_t)result;
- (uint64_t)setUnstyledBufferEmitted:(uint64_t)result;
- (uint64_t)setVerticalSensorBinningFactor:(uint64_t)result;
- (uint64_t)setZoomingDisparityAllowed:(uint64_t)result;
- (uint64_t)sfhrMode;
- (uint64_t)smartStyleRenderingEnabled;
- (uint64_t)smartStyleRenderingVersion;
- (uint64_t)smartStyleReversibilityEnabled;
- (uint64_t)softISPSupportEnabled;
- (uint64_t)stillImageFusionScheme;
- (uint64_t)stillImageGDCSourceMode;
- (uint64_t)ultraHighResolutionProcessingEnabled;
- (uint64_t)unifiedBracketingFusionSupportEnabled;
- (uint64_t)unstyledBufferEmitted;
- (unint64_t)smartStyleUseCaseForSettings:(id)settings;
- (void)configureInferenceEngineControllerInput:(id)input;
- (void)dealloc;
- (void)setDimensionsByResolutionFlavorByPortType:(uint64_t)type;
- (void)setJasperSensorConfiguration:(uint64_t)configuration;
- (void)setPortTypesWithDepthSegmentationPortraitParameters:(uint64_t)parameters;
- (void)setPortTypesWithGeometricDistortionCorrectionEnabled:(uint64_t)enabled;
- (void)setPortTypesWithIntelligentDistortionCorrectionEnabled:(uint64_t)enabled;
- (void)setPortTypesWithLearnedFusionEnabled:(uint64_t)enabled;
- (void)setPortTypesWithRawNightModeEnabled:(uint64_t)enabled;
- (void)setProvidedInferenceAttachedMediaByMode:(uint64_t)mode;
- (void)setRawColorCalibrationsByPortType:(uint64_t)type;
- (void)setRawLensShadingCorrectionCoefficientsByPortType:(uint64_t)type;
- (void)setSensorConfigurationsByPortType:(uint64_t)type;
- (void)setupProcessorControllerConfigurations;
@end

@implementation BWPhotonicEngineNodeConfiguration

- (uint64_t)softISPSupportEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 192));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)processingAspectRatio
{
  if (result)
  {
    return *(result + 236);
  }

  return result;
}

- (uint64_t)inputIs10Bit
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 153));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)semanticStyleRenderingEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 332));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)retainedBufferCount
{
  if (result)
  {
    return *(result + 156);
  }

  return result;
}

- (uint64_t)outputBufferCount
{
  if (result)
  {
    return *(result + 168);
  }

  return result;
}

- (uint64_t)outputPoolBackPressureEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 180));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)outputPixelFormat
{
  if (result)
  {
    return *(result + 160);
  }

  return result;
}

- (uint64_t)sensorConfigurationsByPortType
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

- (uint64_t)demosaicedRawPixelFormat
{
  if (result)
  {
    return *(result + 428);
  }

  return result;
}

- (void)setupProcessorControllerConfigurations
{
  if (self && (OUTLINED_FUNCTION_33(), v4) && (OUTLINED_FUNCTION_6_58(), v5 ^ v6 | v4) && (OUTLINED_FUNCTION_6_58(), v5 ^ v6 | v4))
  {
    OUTLINED_FUNCTION_4_67(objc_alloc_init(BWSoftISPProcessorControllerConfiguration));
    [OUTLINED_FUNCTION_9_45() setSensorRawPixelFormat:?];
    [OUTLINED_FUNCTION_11_38() setInputDimensions:?];
    [learnedNRMode setSensorCenterOffset:{self->_sensorCenterOffset.x, self->_sensorCenterOffset.y}];
    if ([OUTLINED_FUNCTION_8_44() count])
    {
      [OUTLINED_FUNCTION_11_38() setInputDimensionsByResolutionFlavorByPortType:?];
    }

    v7 = OUTLINED_FUNCTION_8_44();
    if ([BWDimensionsWithResolutionFlavor(v7 2)])
    {
      [learnedNRMode setQBinProcessingMode:(self->_learnedNRMode >> 2) & 2];
    }

    [OUTLINED_FUNCTION_10_40() setCmiResourceEnabled:?];
    [learnedNRMode setStandardYUVProcessingEnabled:{-[BWStillImageNodeConfiguration deferredPhotoProcessorEnabled](self, "deferredPhotoProcessorEnabled") ^ 1}];
    [(NSArray *)self->_portTypesWithGeometricDistortionCorrectionEnabled count];
    OUTLINED_FUNCTION_15_29();
    [learnedNRMode setGdcEnabled:?];
    [(NSArray *)self->_portTypesWithRawNightModeEnabled count];
    OUTLINED_FUNCTION_15_29();
    [learnedNRMode setRawNightModeEnabled:?];
    [OUTLINED_FUNCTION_10_40() setDeepFusionEnabled:?];
    [(NSArray *)self->_portTypesWithLearnedFusionEnabled count];
    OUTLINED_FUNCTION_15_29();
    [learnedNRMode setLearnedFusionEnabled:?];
    [learnedNRMode setLearnedNREnabled:(self->_learnedNRMode & 5) != 0];
    if ([learnedNRMode learnedNREnabled])
    {
      if ([+[FigCaptureCameraParameters deviceGeneration]<= 299 sharedInstance]
      {
        [(BWStillImageNodeConfiguration *)self stereoPhotoOutputDimensions];
        OUTLINED_FUNCTION_18_22();
        if (v5 ^ v6 | v4)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9 <= 0;
        }

        v8 = !v10;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }

    [learnedNRMode setLearnedNRDraftDemosaicEnabled:v8];
    [OUTLINED_FUNCTION_10_40() setQuadraProcessingEnabled:?];
    [(BWStillImageNodeConfiguration *)self maxLossyCompressionLevel];
    [learnedNRMode setLossyCompressionLevel:0];
    nrfVersion = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion];
    [learnedNRMode setLinearRGBForDisparityEnabled:{-[BWStillImageNodeConfiguration depthDataType](self, "depthDataType") == 8}];
    [learnedNRMode setAuxiliaryTypesForFocusPixelDisparityEnabled:{-[BWStillImageNodeConfiguration depthDataType](self, "depthDataType") == 9}];
    [learnedNRMode setLtmHDRCurvesEnabled:nrfVersion > 3];
    [learnedNRMode setSfhrSupportEnabled:self->_sfhrMode & 1];
    [learnedNRMode setLowlightSFHRSupportEnabled:(self->_sfhrMode >> 1) & 1];
  }

  else
  {
    learnedNRMode = 0;
  }

  v12 = 0;
  self->_softISPProcessorControllerConfiguration = learnedNRMode;
  stillImageFusionScheme = self->_stillImageFusionScheme;
  v14 = stillImageFusionScheme >= 4;
  v15 = stillImageFusionScheme - 4;
  if (v14)
  {
    if (v15 <= 1)
    {
      v12 = objc_alloc_init(BWNRFProcessorControllerConfiguration);
    }

    penc_setBaseProcessorControllerConfigurationProperties(self, v12);
    [OUTLINED_FUNCTION_2_86() setAlwaysAllowModifyingInputBuffers:?];
    [OUTLINED_FUNCTION_2_86() setCmiResourceEnabled:?];
    [(BWStillImageProcessorControllerConfiguration *)v12 setDeferredCaptureSupportEnabled:[(BWStillImageNodeConfiguration *)self deferredCaptureSupportEnabled]];
    [(BWStillImageProcessorControllerConfiguration *)v12 setDeferredPhotoProcessorEnabled:[(BWStillImageNodeConfiguration *)self deferredPhotoProcessorEnabled]];
    [OUTLINED_FUNCTION_2_86() setQuadraSupportEnabled:?];
    [OUTLINED_FUNCTION_2_86() setUnifiedBracketingFusionEnabled:?];
    [OUTLINED_FUNCTION_5_66() setSemanticRenderingVersion:?];
    OUTLINED_FUNCTION_33();
    if (v4)
    {
      [(NSDictionary *)self->_sensorConfigurationsByPortType allKeys];
      obj = [OUTLINED_FUNCTION_8() setWithArray:?];
      -[BWNRFProcessorControllerConfiguration setLowLightFusionEnabled:](v12, "setLowLightFusionEnabled:", [obj isEqualToSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", self->_portTypesWithRawNightModeEnabled)}] ^ 1);
      [(NSArray *)self->_portTypesWithRawNightModeEnabled count];
      OUTLINED_FUNCTION_15_29();
      [(BWNRFProcessorControllerConfiguration *)v12 setRawNightModeEnabled:?];
    }

    [OUTLINED_FUNCTION_2_86() setDeepFusionEnabled:?];
    [OUTLINED_FUNCTION_2_86() setDeepFusionWaitForProcessingToFinish:?];
    [(NSArray *)self->_portTypesWithLearnedFusionEnabled count];
    OUTLINED_FUNCTION_15_29();
    [(BWNRFProcessorControllerConfiguration *)v12 setLearnedFusionEnabled:?];
    [(BWNRFProcessorControllerConfiguration *)v12 setSwfrEnabled:self->_swfrVersion > 0];
    learnedNRMode = self->_learnedNRMode;
    if ([+[FigCaptureCameraParameters nrfVersion]>= 4 && (learnedNRMode & 5) != 0 sharedInstance]
    {
      [OUTLINED_FUNCTION_5_66() setLearnedNRMode:?];
      if ([+[FigCaptureCameraParameters deviceGeneration]<= 299 sharedInstance]
      {
        [(BWStillImageNodeConfiguration *)self stereoPhotoOutputDimensions];
        OUTLINED_FUNCTION_18_22();
        if (v5 ^ v6 | v4)
        {
          v111 = 1;
        }

        else
        {
          v111 = v110 <= 0;
        }

        v109 = !v111;
      }

      else
      {
        v109 = 1;
      }

      [(BWNRFProcessorControllerConfiguration *)v12 setLearnedNRUsingNRFEnabled:v109];
    }

    [OUTLINED_FUNCTION_2_86() setDepthDataDeliveryEnabled:?];
    *&v112 = self->_gainMapMainImageDownscalingFactor;
    [(BWNRFProcessorControllerConfiguration *)v12 setGainMapMainImageDownscalingFactor:v112];
    [OUTLINED_FUNCTION_5_66() setGreenGhostMitigationVersion:?];
    [OUTLINED_FUNCTION_5_66() setDemosaicedRawPixelFormat:?];
    [OUTLINED_FUNCTION_2_86() setDemosaicedRawEnabled:?];
    [OUTLINED_FUNCTION_116_0() setRawColorCalibrationsByPortType:?];
    [OUTLINED_FUNCTION_116_0() setRawLensShadingCorrectionCoefficientsByPortType:?];
  }

  if ([OUTLINED_FUNCTION_21_22(464) deferredCaptureSupportEnabled])
  {
    OUTLINED_FUNCTION_3_76(objc_alloc_init(BWDeferredCaptureControllerConfiguration));
  }

  else
  {
    v12 = 0;
  }

  if ([OUTLINED_FUNCTION_21_22(472) deferredPhotoProcessorEnabled])
  {
    OUTLINED_FUNCTION_3_76(objc_alloc_init(BWDeferredProcessorControllerConfiguration));
    v16 = OUTLINED_FUNCTION_8_44();
    learnedNRMode = BWDimensionsWithResolutionFlavor(v16, 2);
    if ([learnedNRMode count])
    {
      [(BWNRFProcessorControllerConfiguration *)v12 setUltraHighResolutionSensorRawDimensions:FigCaptureLargestDimensionsFromDimensionsArray(learnedNRMode)];
    }

    *&v17 = self->_inferenceMainImageDownscalingFactor;
    [(BWNRFProcessorControllerConfiguration *)v12 setInferenceMainImageDownscalingFactor:v17];
  }

  else
  {
    v12 = 0;
  }

  self->_deferredProcessorControllerConfiguration = v12;
  OUTLINED_FUNCTION_33();
  if (!v4 || [(BWStillImageNodeConfiguration *)self deferredCaptureSupportEnabled])
  {
    v12 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_3_76(objc_alloc_init(BWDeepFusionProcessorControllerConfiguration));
    [OUTLINED_FUNCTION_2_86() setCmiResourceEnabled:?];
    [OUTLINED_FUNCTION_5_66() setStillImageFusionScheme:?];
    [OUTLINED_FUNCTION_5_66() setSemanticRenderingVersion:?];
    [OUTLINED_FUNCTION_116_0() setRawColorCalibrationsByPortType:?];
    [OUTLINED_FUNCTION_116_0() setRawLensShadingCorrectionCoefficientsByPortType:?];
    [OUTLINED_FUNCTION_2_86() setQuadraSupportEnabled:?];
  }

  self->_deepFusionProcessorControllerConfiguration = v12;
  if ([+[FigCaptureCameraParameters deviceGeneration]<= 299 sharedInstance]
  {
    [(BWStillImageNodeConfiguration *)self stereoPhotoOutputDimensions];
    OUTLINED_FUNCTION_18_22();
    v19 = v5 ^ v6 | v4 || v18 <= 0;
    v20 = !v19;
    if (self && !v20 && (self->_learnedNRMode & 5) != 0)
    {
      OUTLINED_FUNCTION_3_76(objc_alloc_init(BWLearnedNRProcessorControllerConfiguration));
      learnedNRMode = [MEMORY[0x1E695DF90] dictionary];
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      portTypesWithGeometricDistortionCorrectionEnabled = self->_portTypesWithGeometricDistortionCorrectionEnabled;
      v29 = OUTLINED_FUNCTION_22_18(learnedNRMode, v22, v23, v24, v25, v26, v27, v28, v113, v115, v117, v121, obj, v129, v130, v131, 0, 0, 0, 0, 0, 0, 0, 0, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
      if (v29)
      {
        v30 = v29;
        v31 = *v133;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v133 != v31)
            {
              objc_enumerationMutation(portTypesWithGeometricDistortionCorrectionEnabled);
            }

            v33 = [learnedNRMode setObject:&unk_1F224A8D0 forKeyedSubscript:*(*(&v132 + 1) + 8 * i)];
          }

          v30 = OUTLINED_FUNCTION_22_18(v33, v34, v35, v36, v37, v38, v39, v40, v114, v116, v118, v122, obja, v129, v130, v131, v132, *(&v132 + 1), v133, *(&v133 + 1), v134, *(&v134 + 1), v135, *(&v135 + 1), v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
        }

        while (v30);
      }

      [0 setFinalCropRectOverscanMultiplierByPortType:learnedNRMode];
    }
  }

  self->_learnedNRProcessorControllerConfiguration = 0;
  if (self->_generateInferencesForSemanticProcessingIfNeeded && ((OUTLINED_FUNCTION_7_52(), !v41) && !self->_semanticDevelopmentVersion ? (deepFusionSupportEnabled = 0) : !self->_unifiedBracketingFusionSupportEnabled && !self->_learnedNRMode ? (deepFusionSupportEnabled = self->_deepFusionSupportEnabled) : (deepFusionSupportEnabled = 1), (OUTLINED_FUNCTION_6_58(), v5 ^ v6) ? (learnedNRMode = 1) : !self->_unifiedBracketingFusionSupportEnabled && !self->_learnedNRMode && !self->_deepFusionSupportEnabled ? ((OUTLINED_FUNCTION_6_58(), v5 == v6) ? (learnedNRMode = 0) : (learnedNRMode = 1)) : (learnedNRMode = 0), (v43 = [(NSDictionary *)self->_providedInferenceAttachedMediaByMode count], self->_redEyeReductionEnabled || deepFusionSupportEnabled) || ((v43 == 0) & ~self->_semanticStyleRenderingEnabled & learnedNRMode) == 0))
  {
    OUTLINED_FUNCTION_4_67(objc_alloc_init(BWInferenceEngineControllerConfiguration));
    OUTLINED_FUNCTION_6_58();
    if (v5 ^ v6 | v4)
    {
      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v123 = learnedNRMode;
    [learnedNRMode setFastMattingEnabled:v44];
    learnedNRMode = [MEMORY[0x1E695DFA8] set];
    OUTLINED_FUNCTION_7_52();
    if (v45 < 1)
    {
      v50 = 0;
    }

    else
    {
      [learnedNRMode addObject:@"PersonSemanticsSkin"];
      [learnedNRMode addObject:0x1F219E750];
      OUTLINED_FUNCTION_7_52();
      if (v46 < 2 || ([learnedNRMode addObject:0x1F21AAD30], OUTLINED_FUNCTION_7_52(), v47 < 3))
      {
        v50 = 2;
      }

      else
      {
        BWInferenceLowResPersonInstanceMaskKeys();
        [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
        OUTLINED_FUNCTION_7_52();
        if (v48 >= 4)
        {
          [learnedNRMode addObject:0x1F21AABB0];
          [learnedNRMode addObject:@"PersonSemanticsHair"];
          OUTLINED_FUNCTION_7_52();
          if (v49 >= 5)
          {
            [learnedNRMode addObject:0x1F219E7F0];
          }
        }

        v50 = 18;
      }
    }

    if (self->_semanticDevelopmentVersion)
    {
      v51 = v50 | 8;
    }

    else
    {
      v51 = v50;
    }

    OUTLINED_FUNCTION_6_58();
    if (!(v5 ^ v6 | v4))
    {
      v129 = @"PersonSemanticsSkin";
      v130 = 0x1F21AAD30;
      v131 = 0x1F219E750;
      -[BWInferenceEngineControllerConfiguration setSwfrInferenceMasks:](v123, "setSwfrInferenceMasks:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v129 count:3]);
      [(BWInferenceEngineControllerConfiguration *)v123 swfrInferenceMasks];
      [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
    }

    if ([(NSArray *)self->_portTypesWithRawNightModeEnabled count])
    {
      [learnedNRMode addObject:@"PersonSemanticsSkin"];
      [learnedNRMode addObject:@"PersonSemanticsHair"];
      [learnedNRMode addObject:0x1F219E750];
      [learnedNRMode addObject:0x1F21AAD30];
    }

    if (self->_semanticStyleRenderingEnabled || self->_smartStyleRenderingVersion)
    {
      [learnedNRMode addObject:@"PersonSemanticsSkin"];
      [learnedNRMode addObject:0x1F21AAD30];
      OUTLINED_FUNCTION_7_52();
      if (v52 <= 3)
      {
        v53 = &BWInferenceAttachedMediaKey_LowResPersonSegmentationMask;
      }

      else
      {
        v53 = &BWAttachedMediaKey_PersonSegmentationMask;
      }

      [learnedNRMode addObject:*v53];
      [(BWInferenceEngineControllerConfiguration *)v123 setSmartCameraClassificationsEnabled:1];
    }

    if (self->_redEyeReductionEnabled)
    {
      v54 = v51 | 6;
    }

    else
    {
      v54 = v51;
    }

    v119 = v54;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    OUTLINED_FUNCTION_20_17();
    objb = v55;
    v56 = [v55 countByEnumeratingWithState:? objects:? count:?];
    if (v56)
    {
      v57 = v56;
      v58 = *v154;
      do
      {
        for (j = 0; j != v57; ++j)
        {
          if (*v154 != v58)
          {
            objc_enumerationMutation(objb);
          }

          v60 = [(NSDictionary *)self->_providedInferenceAttachedMediaByMode objectForKeyedSubscript:*(*(&v153 + 1) + 8 * j)];
          OUTLINED_FUNCTION_16_32();
          OUTLINED_FUNCTION_19_25();
          v62 = [v61 countByEnumeratingWithState:? objects:? count:?];
          if (v62)
          {
            v63 = v62;
            v64 = *v146;
            do
            {
              for (k = 0; k != v63; ++k)
              {
                if (*v146 != v64)
                {
                  objc_enumerationMutation(v60);
                }

                [learnedNRMode addObject:*(v145 + 8 * k)];
              }

              OUTLINED_FUNCTION_19_25();
              v63 = [v60 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v63);
          }
        }

        OUTLINED_FUNCTION_20_17();
        v57 = [objb countByEnumeratingWithState:? objects:? count:?];
      }

      while (v57);
    }

    [(NSDictionary *)self->_providedInferenceAttachedMediaByMode objectForKeyedSubscript:&unk_1F2245838];
    OUTLINED_FUNCTION_15_29();
    v66 = v123;
    [(BWInferenceEngineControllerConfiguration *)v123 setMattingOutputValidContentDetectionEnabled:?];
    -[BWInferenceEngineControllerConfiguration setEnabledInferenceMasks:](v123, "setEnabledInferenceMasks:", [learnedNRMode allObjects]);
    [(BWInferenceEngineControllerConfiguration *)v123 setEnabledVisionInferences:v119];
    [(BWInferenceEngineControllerConfiguration *)v123 setPersonSemanticsVersion:self->_personSemanticsVersion];
    [(BWStillImageNodeConfiguration *)self stereoPhotoOutputDimensions];
    OUTLINED_FUNCTION_18_22();
    if (v5 ^ v6 | v4)
    {
      v68 = 1;
    }

    else
    {
      v68 = v67 <= 0;
    }

    v69 = !v68;
    [(BWInferenceEngineControllerConfiguration *)v123 setProducesHighQualityInferencesFromZoomRegionWithLargeDigitalZoom:v69];
    [(BWInferenceEngineControllerConfiguration *)v123 setSuppressVisionTimeOutFailure:self->_smartStyleRenderingVersion > 0];
  }

  else
  {
    v66 = 0;
  }

  self->_inferenceControllerConfiguration = v66;
  OUTLINED_FUNCTION_6_58();
  if (v5 != v6)
  {
    learnedNRMode = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_67(objc_alloc_init(BWSWFRProcessorControllerConfiguration));
    [OUTLINED_FUNCTION_9_45() setVersion:?];
    [(BWStillImageNodeConfiguration *)self maxLossyCompressionLevel];
    [learnedNRMode setLossyCompressionLevel:0];
  }

  self->_swfrProcessorControllerConfiguration = learnedNRMode;
  OUTLINED_FUNCTION_6_58();
  if (v5 != v6)
  {
    learnedNRMode = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_67(objc_alloc_init(BWColorConstancyProcessorControllerConfiguration));
    [OUTLINED_FUNCTION_9_45() setVersion:?];
    [(BWStillImageNodeConfiguration *)self maxLossyCompressionLevel];
    [learnedNRMode setLossyCompressionLevel:0];
    [OUTLINED_FUNCTION_10_40() setClippingRecoveryEnabled:?];
    [OUTLINED_FUNCTION_10_40() setSaturationBoostEnabled:?];
  }

  self->_colorConstancyProcessorControllerConfiguration = learnedNRMode;
  OUTLINED_FUNCTION_33();
  if (v4)
  {
    OUTLINED_FUNCTION_4_67(objc_alloc_init(BWStillImageProcessorControllerConfiguration));
  }

  else
  {
    learnedNRMode = 0;
  }

  self->_redEyeProcessorControllerConfiguration = learnedNRMode;
  if ([(NSArray *)self->_portTypesWithIntelligentDistortionCorrectionEnabled count]|| [(NSArray *)self->_portTypesWithGeometricDistortionCorrectionEnabled count])
  {
    OUTLINED_FUNCTION_4_67(objc_alloc_init(BWIntelligentDistortionCorrectionProcessorControllerConfiguration));
    [OUTLINED_FUNCTION_11_38() setPortTypesWithGeometricDistortionCorrectionEnabled:?];
    [OUTLINED_FUNCTION_11_38() setPortTypesWithIntelligentDistortionCorrectionEnabled:?];
    [OUTLINED_FUNCTION_11_38() setGeometricDistortionCorrectionExpandedImageDimensions:?];
    [learnedNRMode setGeometricDistortionCorrectionInputCropOffset:{self->_sensorCenterOffset.x, self->_sensorCenterOffset.y}];
    [OUTLINED_FUNCTION_9_45() setIntelligentDistortionCorrectionVersion:?];
    [OUTLINED_FUNCTION_10_40() setIntelligentDistortionCorrectionAppliesFinalDimensions:?];
    [OUTLINED_FUNCTION_9_45() setHorizontalSensorBinningFactor:?];
    [OUTLINED_FUNCTION_9_45() setVerticalSensorBinningFactor:?];
    [OUTLINED_FUNCTION_11_38() setProvidedInferenceAttachedMediaByMode:?];
    [(BWStillImageNodeConfiguration *)self stereoPhotoOutputDimensions];
    [OUTLINED_FUNCTION_8() setStereoPhotoOutputDimensions:?];
    [OUTLINED_FUNCTION_10_40() setReplicatePixelsOutsideOfFinalImageDimensions:?];
  }

  else
  {
    learnedNRMode = 0;
  }

  self->_intelligentDistortionCorrectionProcessorControllerConfiguration = learnedNRMode;
  OUTLINED_FUNCTION_6_58();
  if (v5 != v6)
  {
    goto LABEL_129;
  }

  if ([(BWStillImageNodeConfiguration *)self deferredPhotoProcessorEnabled])
  {
    deepFusionEnhancedResolutionDimensions = [(BWStillImageNodeConfiguration *)self deepFusionEnhancedResolutionDimensions];
    v105 = 3;
    if (deepFusionEnhancedResolutionDimensions.var0 < 1 || deepFusionEnhancedResolutionDimensions.var1 <= 0)
    {
      stereoPhotoOutputDimensions = [(BWStillImageNodeConfiguration *)self stereoPhotoOutputDimensions];
      if (stereoPhotoOutputDimensions.var1 <= 0 || stereoPhotoOutputDimensions.var0 <= 0)
      {
        v105 = 1;
      }

      else
      {
        v105 = 3;
      }
    }
  }

  else
  {
    if (self->_deepZoomVersion < 2 || [(BWStillImageNodeConfiguration *)self deferredCaptureSupportEnabled])
    {
LABEL_129:
      learnedNRMode = 0;
      goto LABEL_130;
    }

    v105 = 2;
  }

  OUTLINED_FUNCTION_4_67(objc_alloc_init(BWDeepZoomProcessorControllerConfiguration));
  [OUTLINED_FUNCTION_9_45() setVersion:?];
  [learnedNRMode setType:v105];
  [OUTLINED_FUNCTION_9_45() setMode:?];
  [(BWStillImageNodeConfiguration *)self stereoPhotoOutputDimensions];
  [OUTLINED_FUNCTION_8() setStereoPhotoOutputDimensions:?];
LABEL_130:
  self->_deepZoomProcessorControllerConfiguration = learnedNRMode;
  v70 = OUTLINED_FUNCTION_8_44();
  v71 = BWDimensionsWithResolutionFlavor(v70, 1);
  v72 = FigCaptureLargestDimensionsFromDimensionsArray(v71);
  rawSensorDimensions = self->_rawSensorDimensions;
  v10 = v72 <= rawSensorDimensions.width;
  v74 = HIDWORD(*&rawSensorDimensions);
  v76 = (!v10 || v74 < SHIDWORD(v72));
  v77 = OUTLINED_FUNCTION_8_44();
  if (BWResolutionFlavorSupported(v77, 3))
  {
    goto LABEL_142;
  }

  v78 = OUTLINED_FUNCTION_8_44();
  if (BWResolutionFlavorSupported(v78, 4))
  {
    goto LABEL_142;
  }

  v79 = OUTLINED_FUNCTION_8_44();
  if (BWResolutionFlavorSupported(v79, 6))
  {
    goto LABEL_142;
  }

  v80 = OUTLINED_FUNCTION_8_44();
  if (BWResolutionFlavorSupported(v80, 5))
  {
    goto LABEL_142;
  }

  processingAspectRatio = self->_processingAspectRatio;
  if (!processingAspectRatio)
  {
    if (v76)
    {
      goto LABEL_142;
    }

LABEL_203:
    v76 = 0;
    v96 = &OBJC_IVAR___FigCaptureIrisSinkConfiguration__optimizesImagesForOfflineVideoStabilization;
    goto LABEL_174;
  }

  if (!((processingAspectRatio != 6) | v76 & 1))
  {
    goto LABEL_203;
  }

LABEL_142:
  OUTLINED_FUNCTION_3_76(objc_alloc_init(BWScalerProcessorControllerConfiguration));
  [(BWStereoDisparityProcessorControllerConfiguration *)v76 setProvidedInferenceAttachedMediaByMode:self->_providedInferenceAttachedMediaByMode];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_gainMapMainImageDownscalingFactor != 0.0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), 0x1F217BF50}];
  }

  if (self->_demosaicedRawEnabled || self->_smartStyleRenderingVersion)
  {
    [dictionary setObject:&unk_1F224C200 forKeyedSubscript:0x1F21AAE10];
  }

  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  OUTLINED_FUNCTION_20_17();
  v120 = v83;
  objc = [v83 countByEnumeratingWithState:? objects:? count:?];
  if (objc)
  {
    v124 = *v154;
    do
    {
      v84 = 0;
      do
      {
        if (*v154 != v124)
        {
          objc_enumerationMutation(v120);
        }

        v85 = OUTLINED_FUNCTION_16_32();
        if (self)
        {
          providedInferenceAttachedMediaByMode = self->_providedInferenceAttachedMediaByMode;
        }

        else
        {
          providedInferenceAttachedMediaByMode = 0;
        }

        v87 = [(NSDictionary *)providedInferenceAttachedMediaByMode objectForKeyedSubscript:v85];
        OUTLINED_FUNCTION_19_25();
        v89 = [v88 countByEnumeratingWithState:? objects:? count:?];
        if (v89)
        {
          v90 = v89;
          v91 = *v146;
          do
          {
            v92 = 0;
            do
            {
              if (*v146 != v91)
              {
                objc_enumerationMutation(v87);
              }

              if (![dictionary objectForKeyedSubscript:*(v145 + 8 * v92)])
              {
                if (self)
                {
                  *&v93 = self->_inferenceMainImageDownscalingFactor;
                }

                else
                {
                  v93 = 0.0;
                }

                [MEMORY[0x1E696AD98] numberWithFloat:v93];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
              }

              ++v92;
            }

            while (v90 != v92);
            OUTLINED_FUNCTION_19_25();
            v94 = [v87 countByEnumeratingWithState:? objects:? count:?];
            v90 = v94;
          }

          while (v94);
        }

        ++v84;
      }

      while (v84 != objc);
      OUTLINED_FUNCTION_20_17();
      v95 = [v120 countByEnumeratingWithState:? objects:? count:?];
      objc = v95;
    }

    while (v95);
  }

  if ([dictionary count])
  {
    -[BWStereoDisparityProcessorControllerConfiguration setMainImageDownscalingFactorByAttachedMediaKey:](v76, "setMainImageDownscalingFactorByAttachedMediaKey:", [dictionary copy]);
    v96 = &OBJC_IVAR___FigCaptureIrisSinkConfiguration__optimizesImagesForOfflineVideoStabilization;
  }

  else
  {
    v96 = &OBJC_IVAR___FigCaptureIrisSinkConfiguration__optimizesImagesForOfflineVideoStabilization;
  }

LABEL_174:
  depthDataOutputDimensions = [OUTLINED_FUNCTION_21_22(552) depthDataOutputDimensions];
  v98 = depthDataOutputDimensions < 1 || SHIDWORD(depthDataOutputDimensions) < 1;
  if (v98 || [(BWStillImageNodeConfiguration *)self deferredPhotoProcessorEnabled]|| [(BWStillImageNodeConfiguration *)self depthDataType]!= 8)
  {
    v76 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_3_76(objc_alloc_init(BWStereoDisparityProcessorControllerConfiguration));
    [OUTLINED_FUNCTION_116_0() setPortTypesWithDepthSegmentationPortraitParameters:?];
    [(BWStereoDisparityProcessorControllerConfiguration *)v76 setDisparityOutputDimensions:[(BWStillImageNodeConfiguration *)self depthDataOutputDimensions]];
    [(BWStereoDisparityProcessorControllerConfiguration *)v76 setStillImageDepthDataType:[(BWStillImageNodeConfiguration *)self depthDataType]];
    [OUTLINED_FUNCTION_2_86() setZoomingDisparityAllowed:?];
    [OUTLINED_FUNCTION_2_86() setShouldComputeDisparityWhenCalibrationFails:?];
  }

  self->_stereoDisparityProcessorControllerConfiguration = v76;
  OUTLINED_FUNCTION_33();
  if (v4 && self->_jasperSensorConfiguration && (OUTLINED_FUNCTION_33(), v4))
  {
    v99 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->_sensorConfigurationsByPortType];
    jasperSensorConfiguration = self->_jasperSensorConfiguration;
    [v99 setObject:jasperSensorConfiguration forKeyedSubscript:{-[BWJasperDisparityProcessorControllerConfiguration portType](jasperSensorConfiguration, "portType")}];
    OUTLINED_FUNCTION_3_76(objc_alloc_init(BWJasperColorStillsExecutorControllerConfiguration));
    [(BWStillImageProcessorControllerConfiguration *)jasperSensorConfiguration setSensorConfigurationsByPortType:v99];
    [OUTLINED_FUNCTION_5_66() setHorizontalSensorBinningFactor:?];
    [OUTLINED_FUNCTION_5_66() setVerticalSensorBinningFactor:?];
    [OUTLINED_FUNCTION_116_0() setStandardFormatDimensions:?];
    if ([(BWStillImageProcessorControllerConfiguration *)jasperSensorConfiguration postponedProcessorSetupSupported])
    {
      v101 = FigCapturePlatformIdentifier() > 10;
    }

    else
    {
      v101 = 0;
    }

    [(BWStillImageProcessorControllerConfiguration *)jasperSensorConfiguration setPostponeProcessorSetup:v101];
  }

  else
  {
    jasperSensorConfiguration = 0;
  }

  if ([OUTLINED_FUNCTION_21_22(568) depthDataType] == 7)
  {
    OUTLINED_FUNCTION_3_76(objc_alloc_init(BWJasperDisparityProcessorControllerConfiguration));
  }

  else
  {
    jasperSensorConfiguration = 0;
  }

  self->_jasperDisparityProcessorControllerConfiguration = jasperSensorConfiguration;
  OUTLINED_FUNCTION_6_58();
  if (v5 != v6 || (demosaicedRawPixelFormat = self->_demosaicedRawPixelFormat, demosaicedRawPixelFormat != 1751527984) && demosaicedRawPixelFormat)
  {
    jasperSensorConfiguration = 0;
  }

  else
  {
    v103 = !self->_unifiedBracketingFusionSupportEnabled && !*(&self->super.super.isa + v96[903]) && !self->_portTypesWithLearnedFusionEnabled && !self->_deepFusionSupportEnabled;
    OUTLINED_FUNCTION_3_76(objc_alloc_init(BWSmartStyleRenderingProcessorControllerConfiguration));
    [OUTLINED_FUNCTION_5_66() setVersion:?];
    [OUTLINED_FUNCTION_2_86() setReversibilityEnabled:?];
    [(BWJasperDisparityProcessorControllerConfiguration *)jasperSensorConfiguration setLinearYUVPixelFormat:1751527984];
    [(BWJasperDisparityProcessorControllerConfiguration *)jasperSensorConfiguration setInferencesNotAvailableForSmartStyleRendering:v103];
    [OUTLINED_FUNCTION_2_86() setUnstyledBufferEmitted:?];
    [OUTLINED_FUNCTION_5_66() setDefaultAspectRatio:?];
    [OUTLINED_FUNCTION_2_86() setDepthDataDeliveryEnabled:?];
  }

  self->_smartStyleRenderingProcessorControllerConfiguration = jasperSensorConfiguration;
}

- (uint64_t)learnedNRMode
{
  if (result)
  {
    return *(result + 280);
  }

  return result;
}

- (uint64_t)outputDimensions
{
  if (result)
  {
    return *(result + 360);
  }

  return result;
}

- (uint64_t)outputColorSpaceProperties
{
  if (result)
  {
    return *(result + 164);
  }

  return result;
}

- (NSDictionary)providedInferenceAttachedMediaModesByAttachedMediaKey
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  obj = [(BWPhotonicEngineNodeConfiguration *)self providedInferenceAttachedMediaByMode];
  v4 = [obj countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v17 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v8 = [-[BWPhotonicEngineNodeConfiguration providedInferenceAttachedMediaByMode](selfCopy) objectForKeyedSubscript:v7];
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v19 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v21;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v20 + 1) + 8 * j);
              v14 = [(NSDictionary *)dictionary objectForKeyedSubscript:v13];
              if (v14)
              {
                [v14 addObject:v7];
              }

              else
              {
                -[NSDictionary setObject:forKeyedSubscript:](dictionary, "setObject:forKeyedSubscript:", [MEMORY[0x1E695DF70] arrayWithObject:v7], v13);
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v20 objects:v19 count:16];
          }

          while (v10);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v5);
  }

  return dictionary;
}

- (uint64_t)providedInferenceAttachedMediaByMode
{
  if (result)
  {
    return *(result + 304);
  }

  return result;
}

- (double)gainMapMainImageDownscalingFactor
{
  if (!self)
  {
    return 0.0;
  }

  LODWORD(result) = *(self + 292);
  return result;
}

- (uint64_t)constantColorVersion
{
  if (result)
  {
    return *(result + 344);
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWPhotonicEngineNodeConfiguration;
  [(BWStillImageNodeConfiguration *)&v3 dealloc];
}

- (BOOL)requiresResizedOutputDimensionsWithInputDimensions:(id)dimensions
{
  outputDimensions = [(BWPhotonicEngineNodeConfiguration *)self outputDimensions];
  result = 0;
  if (outputDimensions >= 1 && SHIDWORD(outputDimensions) >= 1)
  {
    return [(BWPhotonicEngineNodeConfiguration *)self outputDimensions]!= dimensions;
  }

  return result;
}

- (int)resolvedProcessingResolutionFlavorForInput:(id)input
{
  stillImageSettings = [input stillImageSettings];
  portType = [input portType];

  return [(BWPhotonicEngineNodeConfiguration *)self resolvedProcessingResolutionFlavorForSettings:stillImageSettings portType:portType];
}

- (int)resolvedProcessingResolutionFlavorForSettings:(id)settings portType:(id)type
{
  v7 = [objc_msgSend(settings "captureSettings")];
  resolutionFlavor = [v7 resolutionFlavor];
  v9 = [objc_msgSend(-[BWPhotonicEngineNodeConfiguration dimensionsByResolutionFlavorByPortType](self) objectForKeyedSubscript:{type), "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", resolutionFlavor)}];
  v10 = FigCaptureDimensionsFromDictionaryRepresentation(v9);
  if (v10 > [(BWPhotonicEngineNodeConfiguration *)self rawSensorDimensions])
  {
    v11 = resolutionFlavor == 1;
LABEL_4:
    v13 = 1;
    goto LABEL_6;
  }

  v12 = [(BWPhotonicEngineNodeConfiguration *)self rawSensorDimensions]>> 32;
  v11 = resolutionFlavor == 1;
  if (SHIDWORD(v10) > v12)
  {
    goto LABEL_4;
  }

  v13 = 0;
LABEL_6:
  if (v11)
  {
    LODWORD(resolutionFlavor) = v13;
  }

  if (resolutionFlavor == 2)
  {
    if ([objc_msgSend(settings "captureSettings")])
    {
      LODWORD(resolutionFlavor) = 0;
    }

    else
    {
      LODWORD(resolutionFlavor) = 2;
    }
  }

  if ([objc_msgSend(settings "captureSettings")] && (objc_msgSend(type, "isEqualToString:", objc_msgSend(objc_msgSend(settings, "captureSettings"), "masterPortType")) & 1) == 0 && objc_msgSend(v7, "expectedUltraHighResFrameCaptureCount") > 0)
  {
    LODWORD(resolutionFlavor) = 2;
  }

  if (([v7 captureFlags] & 4) != 0)
  {
    v15 = [objc_msgSend(settings "requestedSettings")];
    requestedSettings = [settings requestedSettings];
    if (v15)
    {
      aspectRatio = [requestedSettings aspectRatio];
      if (aspectRatio > 6)
      {
        v14 = 3;
      }

      else
      {
        v14 = dword_1AD056754[aspectRatio];
      }

      dimensionsByResolutionFlavorByPortType = [(BWPhotonicEngineNodeConfiguration *)self dimensionsByResolutionFlavorByPortType];
      if (!BWResolutionFlavorSupported(dimensionsByResolutionFlavorByPortType, v14))
      {
        LODWORD(v14) = resolutionFlavor;
      }
    }

    else
    {
      v18 = FigCaptureAspectRatioForDimensions([requestedSettings outputDimensions]);
      dimensionsByResolutionFlavorByPortType2 = [(BWPhotonicEngineNodeConfiguration *)self dimensionsByResolutionFlavorByPortType];
      LODWORD(v14) = 3;
      if (!BWResolutionFlavorSupported(dimensionsByResolutionFlavorByPortType2, 3) || v18 <= 1.0)
      {
        dimensionsByResolutionFlavorByPortType3 = [(BWPhotonicEngineNodeConfiguration *)self dimensionsByResolutionFlavorByPortType];
        if ((BWResolutionFlavorSupported(dimensionsByResolutionFlavorByPortType3, 4) & (v18 < 1.0)) != 0)
        {
          LODWORD(v14) = 4;
        }

        else
        {
          LODWORD(v14) = resolutionFlavor;
        }
      }
    }
  }

  else
  {
    LODWORD(v14) = resolutionFlavor;
  }

  return v14;
}

- (id)resolvedProcessingResolutionFlavorsForSettings:(id)settings
{
  v5 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [objc_msgSend(settings "captureSettings")];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = -[BWPhotonicEngineNodeConfiguration resolvedProcessingResolutionFlavorForSettings:portType:](self, "resolvedProcessingResolutionFlavorForSettings:portType:", settings, [*(*(&v14 + 1) + 8 * v10) portType]);
        [v5 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v11)}];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)demosaicedRawFormatRequirementsWithDimensions:(id)dimensions colorSpaceProperties:(int)properties
{
  v7 = objc_alloc_init(BWVideoFormatRequirements);
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:-[BWPhotonicEngineNodeConfiguration linearYUVPixelFormat](self)];
  -[BWVideoFormatRequirements setSupportedPixelFormats:](v7, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
  [(BWVideoFormatRequirements *)v7 setWidth:dimensions.var0];
  [(BWVideoFormatRequirements *)v7 setHeight:*&dimensions >> 32];
  [(BWVideoFormatRequirements *)v7 setWidthAlignment:16];
  [(BWVideoFormatRequirements *)v7 setHeightAlignment:16];
  v8 = &unk_1F2249858;
  if (properties == 2 || properties == 4)
  {
    goto LABEL_5;
  }

  if ((properties & 0xFFFFFFFD) == 1)
  {
    v8 = &unk_1F2249870;
LABEL_5:
    [(BWVideoFormatRequirements *)v7 setSupportedColorSpaceProperties:v8];
  }

  return v7;
}

- (BOOL)isSemanticRenderingCapture:(id)capture
{
  v5 = [objc_msgSend(capture "captureSettings")];
  v6 = [objc_msgSend(capture "captureSettings")];
  if ([(BWPhotonicEngineNodeConfiguration *)self semanticRenderingVersion]< 1)
  {
    return 0;
  }

  if (v5 > 0xD)
  {
    return v5 == 11 || v6 < 0;
  }

  result = 1;
  if (((1 << v5) & 0x3400) == 0)
  {
    return v5 == 11 || v6 < 0;
  }

  return result;
}

- (BOOL)isSWFRFlashCapture:(id)capture
{
  swfrProcessorControllerConfiguration = [(BWPhotonicEngineNodeConfiguration *)self swfrProcessorControllerConfiguration];
  if (swfrProcessorControllerConfiguration)
  {
    if ([objc_msgSend(capture "captureSettings")] == 2)
    {
      return ([objc_msgSend(capture "captureSettings")] >> 3) & 1;
    }

    else
    {
      LOBYTE(swfrProcessorControllerConfiguration) = 0;
    }
  }

  return swfrProcessorControllerConfiguration;
}

- (BOOL)isSmartStyleRenderingCapture:(id)capture
{
  smartStyleRenderingProcessorControllerConfiguration = [(BWPhotonicEngineNodeConfiguration *)self smartStyleRenderingProcessorControllerConfiguration];
  if (smartStyleRenderingProcessorControllerConfiguration)
  {

    LOBYTE(smartStyleRenderingProcessorControllerConfiguration) = BWIsSmartStyleCapture(capture);
  }

  return smartStyleRenderingProcessorControllerConfiguration;
}

- (BOOL)isSmartStylesCaptureNeedingInferencesWithSettings:(id)settings
{
  v5 = [objc_msgSend(settings "requestedSettings")];
  v6 = [objc_msgSend(settings "captureSettings")];
  v7 = [objc_msgSend(settings "captureSettings")];
  v8 = 1;
  if ((v6 - 12) >= 2 && v6 != 10)
  {
    v9 = v7;
    if (v6 != 2 || ([(BWPhotonicEngineNodeConfiguration *)self smartStyleRenderingEnabled]& 1) == 0)
    {
      v10 = [(BWPhotonicEngineNodeConfiguration *)self isSWFRFlashCapture:settings]| (v9 >> 7) & 1;
      if (v6 == 11)
      {
        v8 = 1;
      }

      else
      {
        v8 = v10;
      }
    }
  }

  if ([(BWPhotonicEngineNodeConfiguration *)self smartStyleRenderingVersion])
  {
    return (v5 != 0) & v8;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)smartStyleUseCaseForSettings:(id)settings
{
  if (FigCaptureAspectRatioForDimensions([objc_msgSend(settings "requestedSettings")]) >= 1.0)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (BOOL)isDeferredRawLearnedNRCapture:(id)capture
{
  if (([objc_msgSend(capture "captureSettings")] & 0x80) == 0 || (objc_msgSend(objc_msgSend(capture, "captureSettings"), "captureFlags") & 4) == 0)
  {
    return 0;
  }

  captureSettings = [capture captureSettings];

  return [captureSettings deliverDeferredPhotoProxyImage];
}

- (BOOL)isDeferredRawDeepFusionCapture:(id)capture
{
  if ([objc_msgSend(capture "captureSettings")] != 12 && objc_msgSend(objc_msgSend(capture, "captureSettings"), "captureType") != 13 || (objc_msgSend(objc_msgSend(capture, "captureSettings"), "captureFlags") & 4) == 0)
  {
    return 0;
  }

  captureSettings = [capture captureSettings];

  return [captureSettings deliverDeferredPhotoProxyImage];
}

- (BOOL)isRedEyeReductionFlashCapture:(id)capture
{
  redEyeProcessorControllerConfiguration = [(BWPhotonicEngineNodeConfiguration *)self redEyeProcessorControllerConfiguration];
  if (redEyeProcessorControllerConfiguration)
  {
    return ([objc_msgSend(capture "captureSettings")] >> 16) & 1;
  }

  return redEyeProcessorControllerConfiguration;
}

- (BOOL)isSemanticStylesCaptureNeedingInferencesWithSettings:(id)settings
{
  [settings requestedSettings];
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(settings "requestedSettings")] != 0;
  v6 = [(BWPhotonicEngineNodeConfiguration *)self isSemanticRenderingCapture:settings];
  v7 = [objc_msgSend(settings "captureSettings")];
  return [(BWPhotonicEngineNodeConfiguration *)self semanticStyleRenderingEnabled]&& v5 && (v6 || v7 == 2);
}

- (BOOL)_isDemosaicedRawCaptureNeedingInferencesWithSettigs:(id)settigs
{
  if (![objc_msgSend(settigs "processingSettings")])
  {
    return 0;
  }

  if (![objc_msgSend(-[BWPhotonicEngineNodeConfiguration providedInferenceAttachedMediaByMode](self) objectForKeyedSubscript:{&unk_1F22463F0), "count"}])
  {
    return 0;
  }

  inferenceMainImageDownscalingFactor = [(BWPhotonicEngineNodeConfiguration *)self inferenceMainImageDownscalingFactor];
  if (*&inferenceMainImageDownscalingFactor == 0.0)
  {
    return 0;
  }

  return [(BWPhotonicEngineNodeConfiguration *)self isSemanticRenderingCapture:settigs];
}

- (BOOL)isDepthCaptureNeedingPersonSegmentationMasksWithSettings:(id)settings
{
  if (![objc_msgSend(-[BWPhotonicEngineNodeConfiguration providedInferenceAttachedMediaByMode](self) objectForKeyedSubscript:{&unk_1F2246408), "count"}] || (objc_msgSend(objc_msgSend(settings, "captureSettings"), "captureFlags") & 0x800) == 0)
  {
    return 0;
  }

  requestedSettings = [settings requestedSettings];

  return [requestedSettings depthDataFiltered];
}

- (BOOL)areInferencesRequiredByProcessorControllersForSettings:(id)settings
{
  v5 = [(BWPhotonicEngineNodeConfiguration *)self isSemanticRenderingCapture:?];
  if ([(BWPhotonicEngineNodeConfiguration *)self isSWFRFlashCapture:settings])
  {
    v6 = [objc_msgSend(-[BWPhotonicEngineNodeConfiguration inferenceControllerConfiguration](self "inferenceControllerConfiguration")] != 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BWPhotonicEngineNodeConfiguration *)self isRedEyeReductionFlashCapture:settings];
  v8 = [(BWPhotonicEngineNodeConfiguration *)self isSemanticStylesCaptureNeedingInferencesWithSettings:settings];
  return ((v5 || v6 || v7 || v8) | [(BWPhotonicEngineNodeConfiguration *)self isSmartStylesCaptureNeedingInferencesWithSettings:settings]) & 1;
}

- (BOOL)isInferenceInputImageRequiredForSettings:(id)settings portType:(id)type
{
  if ([objc_msgSend(settings "captureSettings")])
  {
    LOBYTE(v7) = [objc_msgSend(objc_msgSend(settings "captureSettings")] ^ 1;
  }

  else
  {
    v7 = [(BWPhotonicEngineNodeConfiguration *)self _isInferenceGenerationRequiredForSettings:settings];
    if (v7)
    {
      if ([(BWPhotonicEngineNodeConfiguration *)self isRedEyeReductionFlashCapture:settings])
      {

        LOBYTE(v7) = [(BWPhotonicEngineNodeConfiguration *)self isSWFRFlashCapture:settings];
      }

      else
      {
        LOBYTE(v7) = 1;
      }
    }
  }

  return v7;
}

- (BOOL)shouldProvideInferencesForAttachedMediaMode:(int)mode settings:(id)settings
{
  switch(mode)
  {
    case 3:
      return [(BWPhotonicEngineNodeConfiguration *)self isSmartStylesCaptureNeedingInferencesWithSettings:settings];
    case 2:
      return [(BWPhotonicEngineNodeConfiguration *)self isDepthCaptureNeedingPersonSegmentationMasksWithSettings:settings];
    case 1:
      return [(BWPhotonicEngineNodeConfiguration *)self _isDemosaicedRawCaptureNeedingInferencesWithSettigs:settings];
  }

  return 0;
}

- (BOOL)shouldProvideInferenceAttachedMediaWithSettings:(id)settings
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  providedInferenceAttachedMediaByMode = [(BWPhotonicEngineNodeConfiguration *)self providedInferenceAttachedMediaByMode];
  v6 = [providedInferenceAttachedMediaByMode countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(providedInferenceAttachedMediaByMode);
        }

        if (-[BWPhotonicEngineNodeConfiguration shouldProvideInferencesForAttachedMediaMode:settings:](self, "shouldProvideInferencesForAttachedMediaMode:settings:", [*(*(&v12 + 1) + 8 * v9) intValue], settings))
        {
          LOBYTE(v6) = 1;
          return v6;
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [providedInferenceAttachedMediaByMode countByEnumeratingWithState:&v12 objects:v11 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (BOOL)isIDCCaptureForPortType:(id)type settings:(id)settings
{
  v7 = [objc_msgSend(objc_msgSend(settings "captureSettings")];
  if (!-[BWPhotonicEngineNodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration](self, "intelligentDistortionCorrectionProcessorControllerConfiguration") || ![objc_msgSend(settings "processingSettings")])
  {
    return 0;
  }

  v8 = [objc_msgSend(settings "captureSettings")];

  return [(BWPhotonicEngineNodeConfiguration *)self idcSupportedForCaptureType:v8 captureFlags:v7 portType:type];
}

- (BOOL)isGDCCaptureForPortType:(id)type settings:(id)settings
{
  intelligentDistortionCorrectionProcessorControllerConfiguration = [(BWPhotonicEngineNodeConfiguration *)self intelligentDistortionCorrectionProcessorControllerConfiguration];
  if (intelligentDistortionCorrectionProcessorControllerConfiguration)
  {
    LOBYTE(intelligentDistortionCorrectionProcessorControllerConfiguration) = [(BWPhotonicEngineNodeConfiguration *)self gdcSourceForSettings:settings portType:type]== 2;
  }

  return intelligentDistortionCorrectionProcessorControllerConfiguration;
}

- (BOOL)isReferenceOrClientBracketFrameEmissionNeededForSettings:(id)settings portType:(id)type
{
  v7 = [objc_msgSend(settings "captureSettings")];
  v8 = ([v7 captureFlags] & 0x20000) != 0 || -[BWPhotonicEngineNodeConfiguration stereoDisparityProcessorControllerConfiguration](self, "stereoDisparityProcessorControllerConfiguration") != 0;
  captureFlags = [v7 captureFlags];
  LOBYTE(v10) = (captureFlags & 0x4000000000) == 0 && v8;
  if ((captureFlags & 0x4000000000) != 0 && v8)
  {
    if ([type isEqualToString:{objc_msgSend(objc_msgSend(settings, "captureSettings"), "masterPortType")}])
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      return ([v7 captureFlags] >> 11) & 1;
    }
  }

  return v10;
}

- (id)_inferenceAttachedMediaRequiredForDepthProcessingWithSettings:(id)settings
{
  if (![(BWPhotonicEngineNodeConfiguration *)self isDepthCaptureNeedingPersonSegmentationMasksWithSettings:settings])
  {
    return 0;
  }

  providedInferenceAttachedMediaByMode = [(BWPhotonicEngineNodeConfiguration *)self providedInferenceAttachedMediaByMode];

  return [providedInferenceAttachedMediaByMode objectForKeyedSubscript:&unk_1F2246408];
}

- (id)_inferenceAttachedMediaRequiredForSmartStyleWithSettings:(id)settings
{
  if (![(BWPhotonicEngineNodeConfiguration *)self isSmartStylesCaptureNeedingInferencesWithSettings:settings])
  {
    return 0;
  }

  providedInferenceAttachedMediaByMode = [(BWPhotonicEngineNodeConfiguration *)self providedInferenceAttachedMediaByMode];

  return [providedInferenceAttachedMediaByMode objectForKeyedSubscript:&unk_1F2246420];
}

- (id)inferenceAttachedMediaRequiredForSettings:(id)settings inferences:(id)inferences
{
  v7 = [MEMORY[0x1E695DFA8] set];
  [v7 addObjectsFromArray:{-[BWPhotonicEngineNodeConfiguration _inferenceAttachedMediaRequiredForDemosaicedRawCaptureWithSettings:inferences:](self, "_inferenceAttachedMediaRequiredForDemosaicedRawCaptureWithSettings:inferences:", settings, inferences)}];
  [v7 addObjectsFromArray:{-[BWPhotonicEngineNodeConfiguration _inferenceAttachedMediaRequiredForDepthProcessingWithSettings:](self, "_inferenceAttachedMediaRequiredForDepthProcessingWithSettings:", settings)}];
  [v7 addObjectsFromArray:{-[BWPhotonicEngineNodeConfiguration _inferenceAttachedMediaRequiredForSmartStyleWithSettings:](self, "_inferenceAttachedMediaRequiredForSmartStyleWithSettings:", settings)}];

  return [v7 allObjects];
}

- (void)configureInferenceEngineControllerInput:(id)input
{
  v24 = [MEMORY[0x1E695DFA8] set];
  stillImageSettings = [input stillImageSettings];
  v6 = [(BWPhotonicEngineNodeConfiguration *)self isSemanticRenderingCapture:stillImageSettings];
  v7 = [(BWPhotonicEngineNodeConfiguration *)self isSWFRFlashCapture:stillImageSettings];
  v8 = [(BWPhotonicEngineNodeConfiguration *)self isRedEyeReductionFlashCapture:stillImageSettings];
  v9 = [(BWPhotonicEngineNodeConfiguration *)self isSemanticStylesCaptureNeedingInferencesWithSettings:stillImageSettings];
  [(BWPhotonicEngineNodeConfiguration *)self shouldProvideInferenceAttachedMediaWithSettings:stillImageSettings];
  if (v8)
  {
    if (([-[BWPhotonicEngineNodeConfiguration inferenceControllerConfiguration](self "inferenceControllerConfiguration")] & 2) != 0)
    {
      [input setEnabledVisionInferences:{objc_msgSend(input, "enabledVisionInferences") | 2}];
    }

    if (([-[BWPhotonicEngineNodeConfiguration inferenceControllerConfiguration](self "inferenceControllerConfiguration")] & 4) != 0)
    {
      [input setEnabledVisionInferences:{objc_msgSend(input, "enabledVisionInferences") | 4}];
    }

    if (([-[BWPhotonicEngineNodeConfiguration inferenceControllerConfiguration](self "inferenceControllerConfiguration")] & 8) != 0)
    {
      [input setEnabledVisionInferences:{objc_msgSend(input, "enabledVisionInferences") | 8}];
    }
  }

  if (v6)
  {
    [v24 addObjectsFromArray:{objc_msgSend(-[BWPhotonicEngineNodeConfiguration inferenceControllerConfiguration](self, "inferenceControllerConfiguration"), "enabledInferenceMasks")}];
    if (([-[BWPhotonicEngineNodeConfiguration inferenceControllerConfiguration](self "inferenceControllerConfiguration")] & 2) != 0)
    {
      [input setEnabledVisionInferences:{objc_msgSend(input, "enabledVisionInferences") | 2}];
    }

    if (([-[BWPhotonicEngineNodeConfiguration inferenceControllerConfiguration](self "inferenceControllerConfiguration")] & 8) != 0)
    {
      [input setEnabledVisionInferences:{objc_msgSend(input, "enabledVisionInferences") | 8}];
    }

    if (([-[BWPhotonicEngineNodeConfiguration inferenceControllerConfiguration](self "inferenceControllerConfiguration")] & 0x10) != 0)
    {
      [input setEnabledVisionInferences:{objc_msgSend(input, "enabledVisionInferences") | 0x10}];
    }
  }

  if (v7 && [objc_msgSend(-[BWPhotonicEngineNodeConfiguration inferenceControllerConfiguration](self "inferenceControllerConfiguration")])
  {
    [v24 addObjectsFromArray:{objc_msgSend(-[BWPhotonicEngineNodeConfiguration inferenceControllerConfiguration](self, "inferenceControllerConfiguration"), "swfrInferenceMasks")}];
  }

  if (([objc_msgSend(stillImageSettings "captureSettings")] & 0x800000000) != 0)
  {
    [v24 addObject:@"PersonSemanticsSkin"];
    [v24 addObject:@"PersonSemanticsHair"];
    [v24 addObject:0x1F219E750];
    [v24 addObject:0x1F21AAD30];
  }

  if (v9 || [(BWPhotonicEngineNodeConfiguration *)self isSmartStylesCaptureNeedingInferencesWithSettings:stillImageSettings])
  {
    [v24 addObject:@"PersonSemanticsSkin"];
    [v24 addObject:0x1F21AAD30];
    semanticRenderingVersion = [(BWPhotonicEngineNodeConfiguration *)self semanticRenderingVersion];
    v11 = &BWAttachedMediaKey_PersonSegmentationMask;
    if (semanticRenderingVersion <= 3)
    {
      v11 = &BWInferenceAttachedMediaKey_LowResPersonSegmentationMask;
    }

    [v24 addObject:*v11];
    if ([-[BWPhotonicEngineNodeConfiguration inferenceControllerConfiguration](self "inferenceControllerConfiguration")])
    {
      v12 = [objc_msgSend(objc_msgSend(stillImageSettings "captureSettings")] == 0;
    }

    else
    {
      v12 = 0;
    }

    [input setSmartCameraClassificationsEnabled:v12];
  }

  inputCopy = input;
  providedInferenceAttachedMediaModesByAttachedMediaKey = [(BWPhotonicEngineNodeConfiguration *)self providedInferenceAttachedMediaModesByAttachedMediaKey];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = [(NSDictionary *)providedInferenceAttachedMediaModesByAttachedMediaKey countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v25 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(providedInferenceAttachedMediaModesByAttachedMediaKey);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v18 = [(NSDictionary *)providedInferenceAttachedMediaModesByAttachedMediaKey objectForKeyedSubscript:v17];
        v19 = [v18 countByEnumeratingWithState:&v27 objects:v26 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v28;
          while (2)
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v28 != v21)
              {
                objc_enumerationMutation(v18);
              }

              if (-[BWPhotonicEngineNodeConfiguration shouldProvideInferencesForAttachedMediaMode:settings:](self, "shouldProvideInferencesForAttachedMediaMode:settings:", [*(*(&v27 + 1) + 8 * j) intValue], stillImageSettings))
              {
                [v24 addObject:v17];
                goto LABEL_43;
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v27 objects:v26 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

LABEL_43:
        ;
      }

      v15 = [(NSDictionary *)providedInferenceAttachedMediaModesByAttachedMediaKey countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v15);
  }

  [inputCopy setEnabledInferenceMasks:{objc_msgSend(v24, "allObjects")}];
}

- (id)harvestStillImageInferencesFromSampleBuffer:(opaqueCMSampleBuffer *)buffer stillImageSettings:(id)settings enabledInferenceMasks:(id)masks
{
  v52 = objc_alloc_init(BWStillImageInferences);
  if (v52)
  {
    settingsCopy = settings;
    selfCopy = self;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v9 = [masks countByEnumeratingWithState:&v60 objects:v59 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v61;
      key = *off_1E798A3C8;
      v49 = *v61;
      bufferCopy = buffer;
      do
      {
        v12 = 0;
        v50 = v10;
        do
        {
          if (*v61 != v11)
          {
            objc_enumerationMutation(masks);
          }

          v13 = *(*(&v60 + 1) + 8 * v12);
          v14 = [BWInferenceEngineController inferenceMaskSbufFromSbuf:buffer attachedMediaKey:v13];
          if (v14)
          {
            v15 = v14;
            ImageBuffer = CMSampleBufferGetImageBuffer(v14);
            [(BWStillImageInferences *)v52 addInferenceBuffer:ImageBuffer metadata:CMGetAttachment(v15 inferenceAttachedMediaKey:key, 0), v13];
          }

          else
          {
            FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
            LODWORD(v69[0]) = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v19 = v69[0];
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
            {
              v20 = v19;
            }

            else
            {
              v20 = v19 & 0xFFFFFFFE;
            }

            if (v20)
            {
              LODWORD(v68[0]) = 136315394;
              *(v68 + 4) = "[BWPhotonicEngineNodeConfiguration(Utilities) harvestStillImageInferencesFromSampleBuffer:stillImageSettings:enabledInferenceMasks:]";
              WORD6(v68[0]) = 2112;
              *(v68 + 14) = v13;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            LODWORD(v64) = 138412290;
            *(&v64 + 4) = v13;
            v21 = _os_log_send_and_compose_impl();
            FigCapturePleaseFileRadar(FrameworkRadarComponent, v21, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNodeUtilities.m", 1240, @"LastShownDate:BWPhotonicEngineNodeUtilities.m:1240", @"LastShownBuild:BWPhotonicEngineNodeUtilities.m:1240", 0);
            free(v21);
            buffer = bufferCopy;
            v11 = v49;
            v10 = v50;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [masks countByEnumeratingWithState:&v60 objects:v59 count:16];
      }

      while (v10);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    *&v64 = 0x1F219E990;
    *(&v64 + 1) = 0x1F219E9B0;
    v65 = 0x1F219E5F0;
    v66 = 0x1F219E6F0;
    v67 = 0x1F219E710;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:5];
    v23 = [v22 countByEnumeratingWithState:&v54 objects:v53 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v55;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v55 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v54 + 1) + 8 * i);
          v28 = BWInferenceTypeForInferenceAttachmentKey(v27);
          AttachedInference = BWInferenceGetAttachedInference(buffer, v28, v27);
          if ([v27 isEqualToString:0x1F219E5F0] && !objc_msgSend(AttachedInference, "count"))
          {
            v30 = BWInferenceTypeForInferenceAttachmentKey(v27);
            AttachedInference = BWInferenceGetAttachedInference(buffer, v30, @"VisionFaceDetectionObservations");
          }

          [(BWStillImageInferences *)v52 addInference:AttachedInference inferenceAttachmentKey:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v54 objects:v53 count:16];
      }

      while (v24);
    }

    v31 = [(BWPhotonicEngineNodeConfiguration *)selfCopy inferenceAttachedMediaRequiredForSettings:settingsCopy inferences:v52];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v69[0] = @"PersonSemanticsSkin";
    v69[1] = 0x1F21AAD30;
    v69[2] = 0x1F21AABB0;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:3];
    memset(v68, 0, sizeof(v68));
    v34 = [v33 countByEnumeratingWithState:v68 objects:&v64 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = **&v68[1];
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (**&v68[1] != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v68[0] + 1) + 8 * j);
          if ([v31 containsObject:v38])
          {
            v39 = [BWInferenceEngineController inferenceMaskSbufFromSbuf:buffer attachedMediaKey:v38];
            v40 = BWMetadataAttachmentKeyForAttachedMediaKey(v38);
            v41 = CMGetAttachment(v39, v40, 0);
            if (v41)
            {
              [dictionary setObject:v41 forKeyedSubscript:v38];
            }
          }
        }

        v35 = [v33 countByEnumeratingWithState:v68 objects:&v64 count:16];
      }

      while (v35);
    }

    if ([dictionary count])
    {
      v42 = dictionary;
    }

    else
    {
      v42 = 0;
    }

    [(BWStillImageInferences *)v52 addInferenceAttachedMediaMetadata:v42];
    v43 = [CMGetAttachment(buffer @"StillSettings"];
    if (([(BWPhotonicEngineNodeConfiguration *)selfCopy semanticStyleRenderingEnabled]& 1) != 0 || [(BWPhotonicEngineNodeConfiguration *)selfCopy smartStyleRenderingVersion]>= 1)
    {
      v44 = [objc_msgSend(v43 "metadata")];
      if (!v44)
      {
        v44 = [BWInferenceEngineController smartCameraClassificationsFromSbuf:buffer];
      }

      [objc_msgSend(v43 "metadata")];
      if ([objc_msgSend(v43 "metadata")])
      {
        [objc_msgSend(v43 "metadata")];
      }
    }
  }

  else
  {
    [BWPhotonicEngineNodeConfiguration(Utilities) harvestStillImageInferencesFromSampleBuffer:stillImageSettings:enabledInferenceMasks:];
  }

  return v52;
}

- (uint64_t)stillImageFusionScheme
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

- (uint64_t)setStillImageFusionScheme:(uint64_t)result
{
  if (result)
  {
    *(result + 120) = a2;
  }

  return result;
}

- (void)setSensorConfigurationsByPortType:(uint64_t)type
{
  if (self)
  {
    OUTLINED_FUNCTION_0_56(self, a2, type, 128);
  }
}

- (void)setJasperSensorConfiguration:(uint64_t)configuration
{
  if (self)
  {
    OUTLINED_FUNCTION_0_56(self, a2, configuration, 144);
  }
}

- (uint64_t)setAlwaysAllowModifyingInputBuffers:(uint64_t)result
{
  if (result)
  {
    *(result + 152) = a2;
  }

  return result;
}

- (uint64_t)setInputIs10Bit:(uint64_t)result
{
  if (result)
  {
    *(result + 153) = a2;
  }

  return result;
}

- (uint64_t)setRetainedBufferCount:(uint64_t)result
{
  if (result)
  {
    *(result + 156) = a2;
  }

  return result;
}

- (uint64_t)setOutputPixelFormat:(uint64_t)result
{
  if (result)
  {
    *(result + 160) = a2;
  }

  return result;
}

- (uint64_t)setOutputColorSpaceProperties:(uint64_t)result
{
  if (result)
  {
    *(result + 164) = a2;
  }

  return result;
}

- (uint64_t)setOutputBufferCount:(uint64_t)result
{
  if (result)
  {
    *(result + 168) = a2;
  }

  return result;
}

- (uint64_t)minimumOutputBufferCount
{
  if (result)
  {
    return *(result + 172);
  }

  return result;
}

- (uint64_t)setMinimumOutputBufferCount:(uint64_t)result
{
  if (result)
  {
    *(result + 172) = a2;
  }

  return result;
}

- (uint64_t)maxNumberOfBurstCapturesAllowedInFlight
{
  if (result)
  {
    return *(result + 176);
  }

  return result;
}

- (uint64_t)setMaxNumberOfBurstCapturesAllowedInFlight:(uint64_t)result
{
  if (result)
  {
    *(result + 176) = a2;
  }

  return result;
}

- (uint64_t)setOutputPoolBackPressureEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 180) = a2;
  }

  return result;
}

- (uint64_t)referenceFrameSelectionDelegate
{
  if (result)
  {
    return *(result + 184);
  }

  return result;
}

- (uint64_t)setReferenceFrameSelectionDelegate:(uint64_t)result
{
  if (result)
  {
    *(result + 184) = a2;
  }

  return result;
}

- (uint64_t)setSoftISPSupportEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 192) = a2;
  }

  return result;
}

- (uint64_t)setQuadraProcessingSupportEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 193) = a2;
  }

  return result;
}

- (uint64_t)setSensorRawPixelFormat:(uint64_t)result
{
  if (result)
  {
    *(result + 196) = a2;
  }

  return result;
}

- (uint64_t)rawSensorDimensions
{
  if (result)
  {
    return *(result + 200);
  }

  return result;
}

- (uint64_t)setRawSensorDimensions:(uint64_t)result
{
  if (result)
  {
    *(result + 200) = a2;
  }

  return result;
}

- (double)sensorCenterOffset
{
  if (self)
  {
    return *(self + 208);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)setSensorCenterOffset:(double)offset
{
  if (result)
  {
    *(result + 208) = a2;
    *(result + 216) = offset;
  }

  return result;
}

- (uint64_t)dimensionsByResolutionFlavorByPortType
{
  if (result)
  {
    return *(result + 224);
  }

  return result;
}

- (void)setDimensionsByResolutionFlavorByPortType:(uint64_t)type
{
  if (self)
  {
    OUTLINED_FUNCTION_0_56(self, a2, type, 224);
  }
}

- (uint64_t)ultraHighResolutionProcessingEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 232));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setUltraHighResolutionProcessingEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 232) = a2;
  }

  return result;
}

- (uint64_t)setProcessingAspectRatio:(uint64_t)result
{
  if (result)
  {
    *(result + 236) = a2;
  }

  return result;
}

- (uint64_t)stillImageGDCSourceMode
{
  if (result)
  {
    return *(result + 240);
  }

  return result;
}

- (uint64_t)setStillImageGDCSourceMode:(uint64_t)result
{
  if (result)
  {
    *(result + 240) = a2;
  }

  return result;
}

- (uint64_t)sfhrMode
{
  if (result)
  {
    return *(result + 244);
  }

  return result;
}

- (uint64_t)setSfhrMode:(uint64_t)result
{
  if (result)
  {
    *(result + 244) = a2;
  }

  return result;
}

- (uint64_t)unifiedBracketingFusionSupportEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 248));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setUnifiedBracketingFusionSupportEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 248) = a2;
  }

  return result;
}

- (uint64_t)digitalFlashSupportEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 249));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setDigitalFlashSupportEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 249) = a2;
  }

  return result;
}

- (uint64_t)portTypesWithRawNightModeEnabled
{
  if (result)
  {
    return *(result + 256);
  }

  return result;
}

- (void)setPortTypesWithRawNightModeEnabled:(uint64_t)enabled
{
  if (self)
  {
    OUTLINED_FUNCTION_0_56(self, a2, enabled, 256);
  }
}

- (uint64_t)deepFusionSyntheticsInNRSupportEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 264));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setDeepFusionSyntheticsInNRSupportEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 264) = a2;
  }

  return result;
}

- (uint64_t)setDeepFusionWaitForPreprocessingToFinish:(uint64_t)result
{
  if (result)
  {
    *(result + 265) = a2;
  }

  return result;
}

- (uint64_t)deepFusionSupportEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 266));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setDeepFusionSupportEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 266) = a2;
  }

  return result;
}

- (uint64_t)maxDeepFusionOutputCount
{
  if (result)
  {
    return *(result + 268);
  }

  return result;
}

- (uint64_t)setMaxDeepFusionOutputCount:(uint64_t)result
{
  if (result)
  {
    *(result + 268) = a2;
  }

  return result;
}

- (uint64_t)portTypesWithLearnedFusionEnabled
{
  if (result)
  {
    return *(result + 272);
  }

  return result;
}

- (void)setPortTypesWithLearnedFusionEnabled:(uint64_t)enabled
{
  if (self)
  {
    OUTLINED_FUNCTION_0_56(self, a2, enabled, 272);
  }
}

- (uint64_t)setLearnedNRMode:(uint64_t)result
{
  if (result)
  {
    *(result + 280) = a2;
  }

  return result;
}

- (uint64_t)deepZoomVersion
{
  if (result)
  {
    return *(result + 284);
  }

  return result;
}

- (uint64_t)setDeepZoomVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 284) = a2;
  }

  return result;
}

- (uint64_t)deepZoomMode
{
  if (result)
  {
    return *(result + 288);
  }

  return result;
}

- (uint64_t)setDeepZoomMode:(uint64_t)result
{
  if (result)
  {
    *(result + 288) = a2;
  }

  return result;
}

- (uint64_t)setGainMapMainImageDownscalingFactor:(uint64_t)result
{
  if (result)
  {
    *(result + 292) = a2;
  }

  return result;
}

- (double)inferenceMainImageDownscalingFactor
{
  if (!self)
  {
    return 0.0;
  }

  LODWORD(result) = *(self + 296);
  return result;
}

- (uint64_t)setInferenceMainImageDownscalingFactor:(uint64_t)result
{
  if (result)
  {
    *(result + 296) = a2;
  }

  return result;
}

- (void)setProvidedInferenceAttachedMediaByMode:(uint64_t)mode
{
  if (self)
  {
    OUTLINED_FUNCTION_0_56(self, a2, mode, 304);
  }
}

- (uint64_t)setSwfrVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 312) = a2;
  }

  return result;
}

- (uint64_t)setRedEyeReductionEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 316) = a2;
  }

  return result;
}

- (uint64_t)semanticRenderingVersion
{
  if (result)
  {
    return *(result + 320);
  }

  return result;
}

- (uint64_t)setSemanticRenderingVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 320) = a2;
  }

  return result;
}

- (uint64_t)setSemanticDevelopmentVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 324) = a2;
  }

  return result;
}

- (uint64_t)setPersonSemanticsVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 328) = a2;
  }

  return result;
}

- (uint64_t)setSemanticStyleRenderingEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 332) = a2;
  }

  return result;
}

- (uint64_t)smartStyleRenderingVersion
{
  if (result)
  {
    return *(result + 336);
  }

  return result;
}

- (uint64_t)setSmartStyleRenderingVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 336) = a2;
  }

  return result;
}

- (uint64_t)smartStyleRenderingEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 340));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setSmartStyleRenderingEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 340) = a2;
  }

  return result;
}

- (uint64_t)smartStyleReversibilityEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 341));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setSmartStyleReversibilityEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 341) = a2;
  }

  return result;
}

- (uint64_t)unstyledBufferEmitted
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 342));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setUnstyledBufferEmitted:(uint64_t)result
{
  if (result)
  {
    *(result + 342) = a2;
  }

  return result;
}

- (uint64_t)setConstantColorVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 344) = a2;
  }

  return result;
}

- (uint64_t)setConstantColorClippingRecoveryEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 348) = a2;
  }

  return result;
}

- (uint64_t)setConstantColorSaturationBoostEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 349) = a2;
  }

  return result;
}

- (uint64_t)generateInferencesForSemanticProcessingIfNeeded
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 350));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setGenerateInferencesForSemanticProcessingIfNeeded:(uint64_t)result
{
  if (result)
  {
    *(result + 350) = a2;
  }

  return result;
}

- (uint64_t)setStandardFormatDimensions:(uint64_t)result
{
  if (result)
  {
    *(result + 352) = a2;
  }

  return result;
}

- (uint64_t)setOutputDimensions:(uint64_t)result
{
  if (result)
  {
    *(result + 360) = a2;
  }

  return result;
}

- (uint64_t)portTypesWithGeometricDistortionCorrectionEnabled
{
  if (result)
  {
    return *(result + 368);
  }

  return result;
}

- (void)setPortTypesWithGeometricDistortionCorrectionEnabled:(uint64_t)enabled
{
  if (self)
  {
    OUTLINED_FUNCTION_0_56(self, a2, enabled, 368);
  }
}

- (uint64_t)setGeometricDistortionCorrectionExpandedImageDimensions:(uint64_t)result
{
  if (result)
  {
    *(result + 376) = a2;
  }

  return result;
}

- (uint64_t)portTypesWithIntelligentDistortionCorrectionEnabled
{
  if (result)
  {
    return *(result + 384);
  }

  return result;
}

- (void)setPortTypesWithIntelligentDistortionCorrectionEnabled:(uint64_t)enabled
{
  if (self)
  {
    OUTLINED_FUNCTION_0_56(self, a2, enabled, 384);
  }
}

- (uint64_t)setIntelligentDistortionCorrectionVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 392) = a2;
  }

  return result;
}

- (uint64_t)setIntelligentDistortionCorrectionAppliesFinalDimensions:(uint64_t)result
{
  if (result)
  {
    *(result + 396) = a2;
  }

  return result;
}

- (uint64_t)dcProcessingWithDepthSupported
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 397));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setDcProcessingWithDepthSupported:(uint64_t)result
{
  if (result)
  {
    *(result + 397) = a2;
  }

  return result;
}

- (uint64_t)setReplicatePixelsOutsideOfFinalImageDimensionsWithDCProcessing:(uint64_t)result
{
  if (result)
  {
    *(result + 398) = a2;
  }

  return result;
}

- (uint64_t)setHorizontalSensorBinningFactor:(uint64_t)result
{
  if (result)
  {
    *(result + 400) = a2;
  }

  return result;
}

- (uint64_t)setVerticalSensorBinningFactor:(uint64_t)result
{
  if (result)
  {
    *(result + 404) = a2;
  }

  return result;
}

- (uint64_t)setGreenGhostMitigationVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 408) = a2;
  }

  return result;
}

- (uint64_t)depthDataDeliveryEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 412));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setDepthDataDeliveryEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 412) = a2;
  }

  return result;
}

- (void)setPortTypesWithDepthSegmentationPortraitParameters:(uint64_t)parameters
{
  if (self)
  {
    OUTLINED_FUNCTION_0_56(self, a2, parameters, 416);
  }
}

- (uint64_t)continuousZoomWithDepthSupported
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 424));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setContinuousZoomWithDepthSupported:(uint64_t)result
{
  if (result)
  {
    *(result + 424) = a2;
  }

  return result;
}

- (uint64_t)setZoomingDisparityAllowed:(uint64_t)result
{
  if (result)
  {
    *(result + 425) = a2;
  }

  return result;
}

- (uint64_t)setShouldComputeDisparityWhenCalibrationFails:(uint64_t)result
{
  if (result)
  {
    *(result + 426) = a2;
  }

  return result;
}

- (uint64_t)setDemosaicedRawEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 427) = a2;
  }

  return result;
}

- (uint64_t)setDemosaicedRawPixelFormat:(uint64_t)result
{
  if (result)
  {
    *(result + 428) = a2;
  }

  return result;
}

- (void)setRawColorCalibrationsByPortType:(uint64_t)type
{
  if (self)
  {
    OUTLINED_FUNCTION_0_56(self, a2, type, 432);
  }
}

- (void)setRawLensShadingCorrectionCoefficientsByPortType:(uint64_t)type
{
  if (self)
  {
    OUTLINED_FUNCTION_0_56(self, a2, type, 440);
  }
}

- (uint64_t)linearYUVPixelFormat
{
  if (result)
  {
    return *(result + 448);
  }

  return result;
}

- (uint64_t)setLinearYUVPixelFormat:(uint64_t)result
{
  if (result)
  {
    *(result + 448) = a2;
  }

  return result;
}

- (uint64_t)pointCloudInputRetainedBufferCount
{
  if (result)
  {
    return *(result + 452);
  }

  return result;
}

- (uint64_t)setPointCloudInputRetainedBufferCount:(uint64_t)result
{
  if (result)
  {
    *(result + 452) = a2;
  }

  return result;
}

- (uint64_t)setCmiResourceEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 592) = a2;
  }

  return result;
}

- (BOOL)idcSupportedForCaptureType:(int)type captureFlags:(unint64_t)flags portType:(id)portType
{
  v7 = *&type;
  if (!-[BWPhotonicEngineNodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration](self, "intelligentDistortionCorrectionProcessorControllerConfiguration") || ![-[BWPhotonicEngineNodeConfiguration portTypesWithIntelligentDistortionCorrectionEnabled](self) containsObject:portType])
  {
    return 0;
  }

  return [BWIntelligentDistortionCorrectionProcessorController idcSupportedForCaptureType:v7 captureFlags:flags];
}

- (BOOL)_isInferenceGenerationRequiredForSettings:(id)settings
{
  if ([(BWPhotonicEngineNodeConfiguration *)self generateInferencesForSemanticProcessingIfNeeded])
  {
    v5 = [(BWPhotonicEngineNodeConfiguration *)self areInferencesRequiredByProcessorControllersForSettings:settings];
    v6 = v5 | [(BWPhotonicEngineNodeConfiguration *)self shouldProvideInferenceAttachedMediaWithSettings:settings];
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)isScalerRequiredForSettings:(id)settings portType:(id)type preNoiseReductionScalerOut:(BOOL *)out
{
  v8 = [(BWPhotonicEngineNodeConfiguration *)self resolvedProcessingResolutionFlavorForSettings:settings portType:type];
  scalerProcessorControllerConfiguration = [(BWPhotonicEngineNodeConfiguration *)self scalerProcessorControllerConfiguration];
  if (scalerProcessorControllerConfiguration)
  {
    if (v8 > 6)
    {
      LOBYTE(scalerProcessorControllerConfiguration) = 0;
      return scalerProcessorControllerConfiguration;
    }

    if (((1 << v8) & 0x7A) != 0)
    {
      if (![(BWPhotonicEngineNodeConfiguration *)self processingAspectRatio]|| [(BWPhotonicEngineNodeConfiguration *)self processingAspectRatio]== 6)
      {
        LOBYTE(scalerProcessorControllerConfiguration) = 1;
        return scalerProcessorControllerConfiguration;
      }

      v11 = [objc_msgSend(settings "captureSettings")];
      LOBYTE(scalerProcessorControllerConfiguration) = 1;
      if (out && v11 == 10)
      {
LABEL_14:
        LOBYTE(scalerProcessorControllerConfiguration) = 1;
        *out = 1;
      }
    }

    else
    {
      LODWORD(scalerProcessorControllerConfiguration) = [(BWPhotonicEngineNodeConfiguration *)self processingAspectRatio];
      if (scalerProcessorControllerConfiguration)
      {
        LODWORD(scalerProcessorControllerConfiguration) = [(BWPhotonicEngineNodeConfiguration *)self processingAspectRatio];
        v10 = scalerProcessorControllerConfiguration == 6;
        LOBYTE(scalerProcessorControllerConfiguration) = scalerProcessorControllerConfiguration != 6;
        if (out)
        {
          if (!v10)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  return scalerProcessorControllerConfiguration;
}

- (BOOL)isDeepZoomSupportedForStereoPhotosWithSettings:(id)settings
{
  v5 = [-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](self "deepZoomProcessorControllerConfiguration")];
  if (v5 < 1 || SHIDWORD(v5) < 1)
  {
LABEL_11:
    LOBYTE(deepZoomProcessorControllerConfiguration) = 0;
    return deepZoomProcessorControllerConfiguration;
  }

  deepZoomProcessorControllerConfiguration = [objc_msgSend(settings "captureSettings")];
  if (deepZoomProcessorControllerConfiguration)
  {
    deepZoomProcessorControllerConfiguration = [(BWPhotonicEngineNodeConfiguration *)self deepZoomProcessorControllerConfiguration];
    if (deepZoomProcessorControllerConfiguration)
    {
      if ([-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](self "deepZoomProcessorControllerConfiguration")] == 3 && objc_msgSend(objc_msgSend(settings, "captureSettings"), "captureType") == 12)
      {
        LOBYTE(deepZoomProcessorControllerConfiguration) = [objc_msgSend(objc_msgSend(settings "captureSettings")] == 2;
        return deepZoomProcessorControllerConfiguration;
      }

      goto LABEL_11;
    }
  }

  return deepZoomProcessorControllerConfiguration;
}

- (int)gdcSourceForSettings:(id)settings portType:(id)type
{
  result = [objc_msgSend(-[BWPhotonicEngineNodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration](self "intelligentDistortionCorrectionProcessorControllerConfiguration")];
  if (result)
  {
    v8 = [objc_msgSend(settings "captureSettings")];
    softISPProcessorControllerConfiguration = [(BWPhotonicEngineNodeConfiguration *)self softISPProcessorControllerConfiguration];
    captureFlags = [v8 captureFlags];
    captureFlags2 = [v8 captureFlags];
    captureType = [v8 captureType];
    captureType2 = [v8 captureType];
    v14 = [(BWPhotonicEngineNodeConfiguration *)self isSWFRFlashCapture:settings];
    captureFlags3 = [v8 captureFlags];
    stillImageGDCSourceMode = [(BWPhotonicEngineNodeConfiguration *)self stillImageGDCSourceMode];
    v17 = !softISPProcessorControllerConfiguration || stillImageGDCSourceMode == 1;
    result = v17 ? 2 : 0;
    if (!v17 && (captureFlags & 4) != 0)
    {
      result = 2;
      if ((captureFlags2 & 0x800000000) == 0)
      {
        if (captureFlags3 < 0)
        {
          v18 = 2;
        }

        else
        {
          v18 = 3;
        }

        if (v14)
        {
          v18 = 2;
        }

        if (captureType == 12 || captureType2 == 13)
        {
          return 2;
        }

        else
        {
          return v18;
        }
      }
    }
  }

  return result;
}

- (id)_inferenceAttachedMediaRequiredForDemosaicedRawCaptureWithSettings:(id)settings inferences:(id)inferences
{
  if (![(BWPhotonicEngineNodeConfiguration *)self _isDemosaicedRawCaptureNeedingInferencesWithSettigs:settings])
  {
    return 0;
  }

  v6 = [-[BWPhotonicEngineNodeConfiguration providedInferenceAttachedMediaByMode](self) objectForKeyedSubscript:&unk_1F22463F0];
  v7 = [inferences inferenceForAttachmentKey:0x1F219E710];
  v8 = [MEMORY[0x1E695DF70] arrayWithArray:v6];
  v16 = OUTLINED_FUNCTION_2_0(v8, v9, v10, v11, v12, v13, v14, v15, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, 0);
  if (v16)
  {
    v17 = v16;
    v18 = MEMORY[0];
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (MEMORY[0] != v18)
        {
          objc_enumerationMutation(v6);
        }

        v20 = *(8 * i);
        v21 = [objc_msgSend(v7 objectForKeyedSubscript:{v20), "BOOLValue"}];
        if ((v21 & 1) == 0)
        {
          v21 = [v8 removeObject:v20];
        }
      }

      v17 = OUTLINED_FUNCTION_2_0(v21, v22, v23, v24, v25, v26, v27, v28, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v62);
    }

    while (v17);
  }

  return v8;
}

- (int)prepareSampleBufferForInferenceProcessing:(opaqueCMSampleBuffer *)processing inferenceInput:(id)input stillImageSettings:(id)settings inferenceInputBufferType:(unint64_t)type
{
  v10 = [(BWPhotonicEngineNodeConfiguration *)self isSemanticRenderingCapture:settings];
  v11 = [(BWPhotonicEngineNodeConfiguration *)self isSemanticStylesCaptureNeedingInferencesWithSettings:settings];
  inferenceMainImageDownscalingFactor = [(BWPhotonicEngineNodeConfiguration *)self inferenceMainImageDownscalingFactor];
  v13 = *&inferenceMainImageDownscalingFactor;
  if ((v10 || v11) && !+[BWInferenceEngine isNeuralEngineSupported](BWInferenceEngine, "isNeuralEngineSupported") && ([objc_msgSend(CMGetAttachment(processing @"StillSettings"] & 0x2000) != 0 && (BWSampleBufferHasDetectedFaces(processing, 0, 0, 0, 1, 0) & 1) == 0)
  {
    [input setEnabledVisionInferences:{objc_msgSend(input, "enabledVisionInferences") ^ 0x13}];
  }

  v14 = CMGetAttachment(processing, *off_1E798A3C8, 0);
  v30 = *(MEMORY[0x1E695F050] + 16);
  v31 = *MEMORY[0x1E695F050];
  v32 = *MEMORY[0x1E695F050];
  CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
  v16 = (CGRectIfPresent | FigCFDictionaryGetCGRectIfPresent());
  v17 = BWPixelBufferDimensionsFromSampleBuffer(processing);
  if (v16)
  {
    v18 = v17;
    v19 = (v13 * v17) | ((v13 * SHIDWORD(v17)) << 32);
    FigCaptureMetadataUtilitiesNormalizeCropRect(*&v31, *(&v31 + 1), *&v30, *(&v30 + 1));
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v20, v21, v22, v23);
    FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v14, v19, v18, *&v32, *(&v32 + 1), *&v30, *(&v30 + 1), v24, v25, v26, v27);
  }

  if (([objc_msgSend(settings captureSettings] & 1) == 0 && (objc_msgSend(objc_msgSend(settings, "captureSettings"), "captureFlags") & 0x100000000) != 0)
  {
    v13 = v13 + v13;
  }

  *&v28 = v13;
  [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v28), *off_1E798A708}];
  return 0;
}

- (BOOL)applyingZoomBeforeDeepZoomAllowedWithSampleBuffer:(opaqueCMSampleBuffer *)buffer bufferType:(unint64_t)type portType:(id)portType
{
  deepZoomProcessorControllerConfiguration = [(BWPhotonicEngineNodeConfiguration *)self deepZoomProcessorControllerConfiguration];
  result = 1;
  if (type != 38 && deepZoomProcessorControllerConfiguration)
  {
    return [-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](self "deepZoomProcessorControllerConfiguration")] != 1 && objc_msgSend(-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](self, "deepZoomProcessorControllerConfiguration"), "type") != 2 || !+[BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForSampleBuffer:type:sensorConfiguration:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:](BWDeepZoomProcessorControllerConfiguration, "doDeepZoomStandardOrLiteForSampleBuffer:type:sensorConfiguration:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:", buffer, objc_msgSend(-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](self, "deepZoomProcessorControllerConfiguration"), "type"), objc_msgSend(-[BWPhotonicEngineNodeConfiguration sensorConfigurationsByPortType](self), "objectForKeyedSubscript:", portType), 0, 0) || +[BWDeepZoomProcessorControllerConfiguration deepZoomProcessingModeForType:sensorConfiguration:](BWDeepZoomProcessorControllerConfiguration, "deepZoomProcessingModeForType:sensorConfiguration:", objc_msgSend(-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](self, "deepZoomProcessorControllerConfiguration"), "type"), objc_msgSend(-[BWPhotonicEngineNodeConfiguration sensorConfigurationsByPortType](self), "objectForKeyedSubscript:", portType)) == 2;
  }

  return result;
}

@end