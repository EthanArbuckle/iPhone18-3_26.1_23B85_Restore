@interface BWUBNodeConfiguration
- (double)gainMapMainImageDownscalingFactor;
- (double)inferenceMainImageDownscalingFactor;
- (uint64_t)alwaysAllowModifyingInputBuffers;
- (uint64_t)deepFusionSupportEnabled;
- (uint64_t)deepFusionSyntheticsInNRSupportEnabled;
- (uint64_t)deepFusionWaitForPreprocessingToFinish;
- (uint64_t)deepZoomVersion;
- (uint64_t)demosaicedRawEnabled;
- (uint64_t)demosaicedRawPixelFormat;
- (uint64_t)depthDataDeliveryEnabled;
- (uint64_t)digitalFlashSupportEnabled;
- (uint64_t)disparityOutputDimensions;
- (uint64_t)generateLiDARDepth;
- (uint64_t)geometricDistortionCorrectionExpandedImageDimensions;
- (uint64_t)greenGhostMitigationVersion;
- (uint64_t)horizontalSensorBinningFactor;
- (uint64_t)inputIs10Bit;
- (uint64_t)intelligentDistortionCorrectionAppliesFinalDimensions;
- (uint64_t)intelligentDistortionCorrectionVersion;
- (uint64_t)jasperSensorConfiguration;
- (uint64_t)learnedNRMode;
- (uint64_t)maxDeepFusionOutputCount;
- (uint64_t)maxNumberOfBurstCapturesAllowedInFlight;
- (uint64_t)minimumOutputBufferCount;
- (uint64_t)outputBufferCount;
- (uint64_t)outputDimensions;
- (uint64_t)outputPoolBackPressureEnabled;
- (uint64_t)personSemanticsVersion;
- (uint64_t)portTypesWithDepthSegmentationPortraitParameters;
- (uint64_t)portTypesWithGeometricDistortionCorrectionEnabled;
- (uint64_t)portTypesWithIntelligentDistortionCorrectionEnabled;
- (uint64_t)providedInferenceAttachedMediaByMode;
- (uint64_t)rawColorCalibrationsByPortType;
- (uint64_t)rawLensShadingCorrectionCoefficientsByPortType;
- (uint64_t)redEyeReductionEnabled;
- (uint64_t)referenceFrameSelectionDelegate;
- (uint64_t)retainedBufferCount;
- (uint64_t)semanticDevelopmentVersion;
- (uint64_t)semanticRenderingVersion;
- (uint64_t)semanticStyleRenderingEnabled;
- (uint64_t)sensorConfigurationsByPortType;
- (uint64_t)setAlwaysAllowModifyingInputBuffers:(uint64_t)result;
- (uint64_t)setDeepFusionSupportEnabled:(uint64_t)result;
- (uint64_t)setDeepFusionSyntheticsInNRSupportEnabled:(uint64_t)result;
- (uint64_t)setDeepFusionWaitForPreprocessingToFinish:(uint64_t)result;
- (uint64_t)setDeepZoomVersion:(uint64_t)result;
- (uint64_t)setDemosaicedRawEnabled:(uint64_t)result;
- (uint64_t)setDemosaicedRawPixelFormat:(uint64_t)result;
- (uint64_t)setDepthDataDeliveryEnabled:(uint64_t)result;
- (uint64_t)setDigitalFlashSupportEnabled:(uint64_t)result;
- (uint64_t)setDisparityOutputDimensions:(uint64_t)result;
- (uint64_t)setGainMapMainImageDownscalingFactor:(uint64_t)result;
- (uint64_t)setGenerateLiDARDepth:(uint64_t)result;
- (uint64_t)setGeometricDistortionCorrectionExpandedImageDimensions:(uint64_t)result;
- (uint64_t)setGreenGhostMitigationVersion:(uint64_t)result;
- (uint64_t)setHorizontalSensorBinningFactor:(uint64_t)result;
- (uint64_t)setInferenceMainImageDownscalingFactor:(uint64_t)result;
- (uint64_t)setInputIs10Bit:(uint64_t)result;
- (uint64_t)setIntelligentDistortionCorrectionAppliesFinalDimensions:(uint64_t)result;
- (uint64_t)setIntelligentDistortionCorrectionVersion:(uint64_t)result;
- (uint64_t)setLearnedNRMode:(uint64_t)result;
- (uint64_t)setMaxDeepFusionOutputCount:(uint64_t)result;
- (uint64_t)setMaxNumberOfBurstCapturesAllowedInFlight:(uint64_t)result;
- (uint64_t)setMinimumOutputBufferCount:(uint64_t)result;
- (uint64_t)setOutputBufferCount:(uint64_t)result;
- (uint64_t)setOutputDimensions:(uint64_t)result;
- (uint64_t)setOutputPoolBackPressureEnabled:(uint64_t)result;
- (uint64_t)setPersonSemanticsVersion:(uint64_t)result;
- (uint64_t)setRedEyeReductionEnabled:(uint64_t)result;
- (uint64_t)setReferenceFrameSelectionDelegate:(uint64_t)result;
- (uint64_t)setRetainedBufferCount:(uint64_t)result;
- (uint64_t)setSemanticDevelopmentVersion:(uint64_t)result;
- (uint64_t)setSemanticRenderingVersion:(uint64_t)result;
- (uint64_t)setSemanticStyleRenderingEnabled:(uint64_t)result;
- (uint64_t)setShouldComputeDisparityWhenCalibrationFails:(uint64_t)result;
- (uint64_t)setStillImageFusionScheme:(uint64_t)result;
- (uint64_t)setUnifiedBracketingFusionSupportEnabled:(uint64_t)result;
- (uint64_t)setVerticalSensorBinningFactor:(uint64_t)result;
- (uint64_t)shouldComputeDisparityWhenCalibrationFails;
- (uint64_t)stillImageFusionScheme;
- (uint64_t)unifiedBracketingFusionSupportEnabled;
- (uint64_t)verticalSensorBinningFactor;
- (void)dealloc;
- (void)setJasperSensorConfiguration:(uint64_t)a3;
- (void)setPortTypesWithDepthSegmentationPortraitParameters:(uint64_t)a3;
- (void)setPortTypesWithGeometricDistortionCorrectionEnabled:(uint64_t)a3;
- (void)setPortTypesWithIntelligentDistortionCorrectionEnabled:(uint64_t)a3;
- (void)setProvidedInferenceAttachedMediaByMode:(uint64_t)a3;
- (void)setRawColorCalibrationsByPortType:(uint64_t)a3;
- (void)setRawLensShadingCorrectionCoefficientsByPortType:(uint64_t)a3;
- (void)setSensorConfigurationsByPortType:(uint64_t)a3;
@end

@implementation BWUBNodeConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWUBNodeConfiguration;
  [(BWStillImageNodeConfiguration *)&v3 dealloc];
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

- (uint64_t)sensorConfigurationsByPortType
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

- (void)setSensorConfigurationsByPortType:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_56(a1, a2, a3, 128);
  }
}

- (uint64_t)jasperSensorConfiguration
{
  if (result)
  {
    return *(result + 144);
  }

  return result;
}

- (void)setJasperSensorConfiguration:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_56(a1, a2, a3, 144);
  }
}

- (uint64_t)alwaysAllowModifyingInputBuffers
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 152));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
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

- (uint64_t)inputIs10Bit
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 153));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setInputIs10Bit:(uint64_t)result
{
  if (result)
  {
    *(result + 153) = a2;
  }

  return result;
}

- (uint64_t)retainedBufferCount
{
  if (result)
  {
    return *(result + 156);
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

- (uint64_t)outputBufferCount
{
  if (result)
  {
    return *(result + 160);
  }

  return result;
}

- (uint64_t)setOutputBufferCount:(uint64_t)result
{
  if (result)
  {
    *(result + 160) = a2;
  }

  return result;
}

- (uint64_t)minimumOutputBufferCount
{
  if (result)
  {
    return *(result + 164);
  }

  return result;
}

- (uint64_t)setMinimumOutputBufferCount:(uint64_t)result
{
  if (result)
  {
    *(result + 164) = a2;
  }

  return result;
}

- (uint64_t)maxNumberOfBurstCapturesAllowedInFlight
{
  if (result)
  {
    return *(result + 168);
  }

  return result;
}

- (uint64_t)setMaxNumberOfBurstCapturesAllowedInFlight:(uint64_t)result
{
  if (result)
  {
    *(result + 168) = a2;
  }

  return result;
}

- (uint64_t)outputPoolBackPressureEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 172));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setOutputPoolBackPressureEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 172) = a2;
  }

  return result;
}

- (uint64_t)referenceFrameSelectionDelegate
{
  if (result)
  {
    return *(result + 176);
  }

  return result;
}

- (uint64_t)setReferenceFrameSelectionDelegate:(uint64_t)result
{
  if (result)
  {
    *(result + 176) = a2;
  }

  return result;
}

- (uint64_t)unifiedBracketingFusionSupportEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 184));
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
    *(result + 184) = a2;
  }

  return result;
}

- (uint64_t)digitalFlashSupportEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 185));
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
    *(result + 185) = a2;
  }

  return result;
}

- (uint64_t)deepFusionSyntheticsInNRSupportEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 186));
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
    *(result + 186) = a2;
  }

  return result;
}

- (uint64_t)deepFusionWaitForPreprocessingToFinish
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 187));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setDeepFusionWaitForPreprocessingToFinish:(uint64_t)result
{
  if (result)
  {
    *(result + 187) = a2;
  }

  return result;
}

- (uint64_t)deepFusionSupportEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 188));
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
    *(result + 188) = a2;
  }

  return result;
}

- (uint64_t)maxDeepFusionOutputCount
{
  if (result)
  {
    return *(result + 192);
  }

  return result;
}

- (uint64_t)setMaxDeepFusionOutputCount:(uint64_t)result
{
  if (result)
  {
    *(result + 192) = a2;
  }

  return result;
}

- (uint64_t)learnedNRMode
{
  if (result)
  {
    return *(result + 196);
  }

  return result;
}

- (uint64_t)setLearnedNRMode:(uint64_t)result
{
  if (result)
  {
    *(result + 196) = a2;
  }

  return result;
}

- (uint64_t)deepZoomVersion
{
  if (result)
  {
    return *(result + 200);
  }

  return result;
}

- (uint64_t)setDeepZoomVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 200) = a2;
  }

  return result;
}

- (double)gainMapMainImageDownscalingFactor
{
  if (!a1)
  {
    return 0.0;
  }

  LODWORD(result) = *(a1 + 204);
  return result;
}

- (uint64_t)setGainMapMainImageDownscalingFactor:(uint64_t)result
{
  if (result)
  {
    *(result + 204) = a2;
  }

  return result;
}

- (double)inferenceMainImageDownscalingFactor
{
  if (!a1)
  {
    return 0.0;
  }

  LODWORD(result) = *(a1 + 208);
  return result;
}

- (uint64_t)setInferenceMainImageDownscalingFactor:(uint64_t)result
{
  if (result)
  {
    *(result + 208) = a2;
  }

  return result;
}

- (uint64_t)providedInferenceAttachedMediaByMode
{
  if (result)
  {
    return *(result + 216);
  }

  return result;
}

- (void)setProvidedInferenceAttachedMediaByMode:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_56(a1, a2, a3, 216);
  }
}

- (uint64_t)redEyeReductionEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 224));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setRedEyeReductionEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 224) = a2;
  }

  return result;
}

- (uint64_t)semanticRenderingVersion
{
  if (result)
  {
    return *(result + 228);
  }

  return result;
}

- (uint64_t)setSemanticRenderingVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 228) = a2;
  }

  return result;
}

- (uint64_t)semanticDevelopmentVersion
{
  if (result)
  {
    return *(result + 232);
  }

  return result;
}

- (uint64_t)setSemanticDevelopmentVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 232) = a2;
  }

  return result;
}

- (uint64_t)personSemanticsVersion
{
  if (result)
  {
    return *(result + 236);
  }

  return result;
}

- (uint64_t)setPersonSemanticsVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 236) = a2;
  }

  return result;
}

- (uint64_t)semanticStyleRenderingEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 240));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setSemanticStyleRenderingEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 240) = a2;
  }

  return result;
}

- (uint64_t)outputDimensions
{
  if (result)
  {
    return *(result + 244);
  }

  return result;
}

- (uint64_t)setOutputDimensions:(uint64_t)result
{
  if (result)
  {
    *(result + 244) = a2;
  }

  return result;
}

- (uint64_t)portTypesWithGeometricDistortionCorrectionEnabled
{
  if (result)
  {
    return *(result + 256);
  }

  return result;
}

- (void)setPortTypesWithGeometricDistortionCorrectionEnabled:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_56(a1, a2, a3, 256);
  }
}

- (uint64_t)geometricDistortionCorrectionExpandedImageDimensions
{
  if (result)
  {
    return *(result + 264);
  }

  return result;
}

- (uint64_t)setGeometricDistortionCorrectionExpandedImageDimensions:(uint64_t)result
{
  if (result)
  {
    *(result + 264) = a2;
  }

  return result;
}

- (uint64_t)portTypesWithIntelligentDistortionCorrectionEnabled
{
  if (result)
  {
    return *(result + 272);
  }

  return result;
}

- (void)setPortTypesWithIntelligentDistortionCorrectionEnabled:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_56(a1, a2, a3, 272);
  }
}

- (uint64_t)intelligentDistortionCorrectionVersion
{
  if (result)
  {
    return *(result + 280);
  }

  return result;
}

- (uint64_t)setIntelligentDistortionCorrectionVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 280) = a2;
  }

  return result;
}

- (uint64_t)intelligentDistortionCorrectionAppliesFinalDimensions
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 284));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setIntelligentDistortionCorrectionAppliesFinalDimensions:(uint64_t)result
{
  if (result)
  {
    *(result + 284) = a2;
  }

  return result;
}

- (uint64_t)horizontalSensorBinningFactor
{
  if (result)
  {
    return *(result + 288);
  }

  return result;
}

- (uint64_t)setHorizontalSensorBinningFactor:(uint64_t)result
{
  if (result)
  {
    *(result + 288) = a2;
  }

  return result;
}

- (uint64_t)verticalSensorBinningFactor
{
  if (result)
  {
    return *(result + 292);
  }

  return result;
}

- (uint64_t)setVerticalSensorBinningFactor:(uint64_t)result
{
  if (result)
  {
    *(result + 292) = a2;
  }

  return result;
}

- (uint64_t)greenGhostMitigationVersion
{
  if (result)
  {
    return *(result + 296);
  }

  return result;
}

- (uint64_t)setGreenGhostMitigationVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 296) = a2;
  }

  return result;
}

- (uint64_t)depthDataDeliveryEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 300));
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
    *(result + 300) = a2;
  }

  return result;
}

- (uint64_t)portTypesWithDepthSegmentationPortraitParameters
{
  if (result)
  {
    return *(result + 304);
  }

  return result;
}

- (void)setPortTypesWithDepthSegmentationPortraitParameters:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_56(a1, a2, a3, 304);
  }
}

- (uint64_t)disparityOutputDimensions
{
  if (result)
  {
    return *(result + 312);
  }

  return result;
}

- (uint64_t)setDisparityOutputDimensions:(uint64_t)result
{
  if (result)
  {
    *(result + 312) = a2;
  }

  return result;
}

- (uint64_t)shouldComputeDisparityWhenCalibrationFails
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 320));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setShouldComputeDisparityWhenCalibrationFails:(uint64_t)result
{
  if (result)
  {
    *(result + 320) = a2;
  }

  return result;
}

- (uint64_t)demosaicedRawEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 321));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setDemosaicedRawEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 321) = a2;
  }

  return result;
}

- (uint64_t)demosaicedRawPixelFormat
{
  if (result)
  {
    return *(result + 324);
  }

  return result;
}

- (uint64_t)setDemosaicedRawPixelFormat:(uint64_t)result
{
  if (result)
  {
    *(result + 324) = a2;
  }

  return result;
}

- (uint64_t)rawColorCalibrationsByPortType
{
  if (result)
  {
    return *(result + 328);
  }

  return result;
}

- (void)setRawColorCalibrationsByPortType:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_56(a1, a2, a3, 328);
  }
}

- (uint64_t)rawLensShadingCorrectionCoefficientsByPortType
{
  if (result)
  {
    return *(result + 336);
  }

  return result;
}

- (void)setRawLensShadingCorrectionCoefficientsByPortType:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_56(a1, a2, a3, 336);
  }
}

- (uint64_t)generateLiDARDepth
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 344));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setGenerateLiDARDepth:(uint64_t)result
{
  if (result)
  {
    *(result + 344) = a2;
  }

  return result;
}

@end