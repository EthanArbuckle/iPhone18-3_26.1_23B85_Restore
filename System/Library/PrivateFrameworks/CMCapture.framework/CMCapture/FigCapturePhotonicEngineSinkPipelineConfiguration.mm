@interface FigCapturePhotonicEngineSinkPipelineConfiguration
- (BOOL)isEqual:(id)equal;
- (CGPoint)sensorCenterOffset;
- (FigCapturePhotonicEngineSinkPipelineConfiguration)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FigCapturePhotonicEngineSinkPipelineConfiguration

- (CGPoint)sensorCenterOffset
{
  x = self->_sensorCenterOffset.x;
  y = self->_sensorCenterOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCapturePhotonicEngineSinkPipelineConfiguration;
  [(FigCaptureBaseStillImageSinkPipelineConfiguration *)&v3 dealloc];
}

- (FigCapturePhotonicEngineSinkPipelineConfiguration)initWithCoder:(id)coder
{
  v37.receiver = self;
  v37.super_class = FigCapturePhotonicEngineSinkPipelineConfiguration;
  v4 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)&v37 initWithCoder:?];
  if (v4)
  {
    v4->_stillImageSinkPipelineProcessingMode = [coder decodeInt32ForKey:@"stillImageSinkPipelineProcessingMode"];
    v4->_pipelineProcessingContext = [coder decodeObjectOfClass:objc_opt_class() forKey:@"pipelineProcessingContext"];
    v4->_pipelineStagePriority = [coder decodeInt32ForKey:@"pipelineStagePriority"];
    v4->_inferencePriority = [coder decodeInt32ForKey:@"inferencePriority"];
    v4->_deviceType = [coder decodeInt32ForKey:@"deviceType"];
    v4->_devicePosition = [coder decodeInt32ForKey:@"devicePosition"];
    v4->_rawSensorDimensions.height = [coder decodeInt32ForKey:@"rawSensorDimensionsHeight"];
    v4->_rawSensorDimensions.width = [coder decodeInt32ForKey:@"rawSensorDimensionsWidth"];
    v4->_sensorCenterOffset.x = [coder decodeInt32ForKey:@"sensorCenterOffsetX"];
    v4->_sensorCenterOffset.y = [coder decodeInt32ForKey:@"sensorCenterOffsetY"];
    v4->_outputStillImageDimensions.width = [coder decodeInt32ForKey:@"outputStillImageDimensionsWidth"];
    v4->_outputStillImageDimensions.height = [coder decodeInt32ForKey:@"outputStillImageDimensionsHeight"];
    v5 = MEMORY[0x1E695DFD8];
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v4->_sensorIDStringsByPortType = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v36, 2)), @"sensorIDStringsByPortType"}];
    v6 = MEMORY[0x1E695DFD8];
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v35[2] = objc_opt_class();
    v4->_baseZoomFactorsByPortType = [coder decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v35, 3)), @"baseZoomFactorsByPortType"}];
    v4->_aspectRatio = [coder decodeInt32ForKey:@"aspectRatio"];
    v4->_swfrVersion = [coder decodeInt32ForKey:@"swfrVersion"];
    v4->_redEyeReductionVersion = [coder decodeInt32ForKey:@"redEyeReductionVersion"];
    v4->_semanticRenderingVersion = [coder decodeInt32ForKey:@"semanticRenderingVersion"];
    v4->_semanticDevelopmentVersion = [coder decodeInt32ForKey:@"semanticDevelopmentVersion"];
    v4->_semanticStyleRenderingEnabled = [coder decodeBoolForKey:@"semanticStyleRenderingEnabled"];
    v4->_smartStyleRenderingVersion = [coder decodeInt32ForKey:@"smartStyleRenderingVersion"];
    v4->_smartStyleRenderingEnabled = [coder decodeBoolForKey:@"smartStyleRenderingEnabled"];
    v4->_smartStyleReversibilityEnabled = [coder decodeBoolForKey:@"smartStyleReversibilityEnabled"];
    v4->_constantColorVersion = [coder decodeInt32ForKey:@"constantColorVersion"];
    v4->_constantColorConfidenceMapDimensions.width = [coder decodeInt32ForKey:@"constantColorConfidenceMapDimensionsWidth"];
    v4->_constantColorConfidenceMapDimensions.height = [coder decodeInt32ForKey:@"constantColorConfidenceMapDimensionsHeight"];
    v4->_constantColorClippingRecoveryEnabled = [coder decodeBoolForKey:@"constantColorClippingRecoveryEnabled"];
    v4->_constantColorSaturationBoostEnabled = [coder decodeBoolForKey:@"constantColorSaturationBoostEnabled"];
    v4->_generateInferencesForSemanticProcessingIfNeeded = [coder decodeBoolForKey:@"generateInferencesForSemanticProcessingIfNeeded"];
    v7 = MEMORY[0x1E695DFD8];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v4->_portTypesWithGeometricDistortionCorrectionEnabled = [coder decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v34, 2)), @"portTypesWithGeometricDistortionCorrectionEnabled"}];
    v8 = MEMORY[0x1E695DFD8];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v4->_portTypesWithIntelligentDistortionCorrectionEnabled = [coder decodeObjectOfClasses:objc_msgSend(v8 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v33, 2)), @"portTypesWithIntelligentDistortionCorrectionEnabled"}];
    v4->_dcProcessorVersion = [coder decodeInt32ForKey:@"dcProcessorVersion"];
    v4->_gdcInDCProcessorSupported = [coder decodeBoolForKey:@"gdcInDCProcessorSupported"];
    v4->_gdcInDCProcessorOutputCropDimensions.width = [coder decodeInt32ForKey:@"gdcInDCProcessorOutputCropDimensionsWidth"];
    v4->_gdcInDCProcessorOutputCropDimensions.height = [coder decodeInt32ForKey:@"gdcInDCProcessorOutputCropDimensionsHeight"];
    v4->_dcProcessingWithDepthSupported = [coder decodeBoolForKey:@"dcProcessingWithDepthSupported"];
    v4->_stillImageGDCSourceMode = [coder decodeInt32ForKey:@"stillImageGDCSourceMode"];
    v4->_greenGhostMitigationVersion = [coder decodeInt32ForKey:@"greenGhostMitigationVersion"];
    v4->_deepZoomVersion = [coder decodeInt32ForKey:@"deepZoomVersion"];
    v4->_deepZoomMode = [coder decodeInt32ForKey:@"deepZoomMode"];
    v4->_demosaicedRawPixelFormat = [coder decodeInt32ForKey:@"demosaicedRawPixelFormat"];
    v9 = MEMORY[0x1E695DFD8];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v32[2] = objc_opt_class();
    v32[3] = objc_opt_class();
    v4->_rawColorCalibrationsByPortType = [coder decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v32, 4)), @"rawColorCalibrationsByPortType"}];
    v10 = MEMORY[0x1E695DFD8];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v31[2] = objc_opt_class();
    v31[3] = objc_opt_class();
    v4->_rawLensShadingCorrectionCoefficientsByPortType = [coder decodeObjectOfClasses:objc_msgSend(v10 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v31, 4)), @"rawLensShadingCorrectionCoefficientsByPortType"}];
    v4->_deferredProcessingSupported = [coder decodeBoolForKey:@"deferredProcessingSupported"];
    v4->_continuousZoomWithDepthSupported = [coder decodeBoolForKey:@"continuousZoomWithDepthSupported"];
    v4->_adjustablePortraitLightingEffectStrengthSupported = [coder decodeBoolForKey:@"adjustablePortraitLightingEffectStrengthSupported"];
    v4->_deepFusionSupported = [coder decodeBoolForKey:@"deepFusionSupported"];
    v4->_depthWithDeepFusionSupported = [coder decodeBoolForKey:@"depthWithDeepFusionSupported"];
    v4->_deepFusionEnhancedResolutionDimensions.width = [coder decodeInt32ForKey:@"deepFusionEnhancedResolutionDimensionsWidth"];
    v4->_deepFusionEnhancedResolutionDimensions.height = [coder decodeInt32ForKey:@"DeepFusionEnhancedResolutionDimensionsHeight"];
    v4->_downgradedDeepFusionEnhancedResolutionDimensions.width = [coder decodeInt32ForKey:@"wasDeepFusionEnhancedResolutionDimensionsWidth"];
    v4->_downgradedDeepFusionEnhancedResolutionDimensions.height = [coder decodeInt32ForKey:@"wasDeepFusionEnhancedResolutionDimensionsHeight"];
    v11 = MEMORY[0x1E695DFD8];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v4->_portTypesWithLearnedFusionEnabled = [coder decodeObjectOfClasses:objc_msgSend(v11 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v30, 2)), @"portTypesWithLearnedFusionEnabled"}];
    v4->_learnedNRSupported = [coder decodeBoolForKey:@"learnedNRSupported"];
    v4->_learnedHRNRSupported = [coder decodeBoolForKey:@"learnedHRNRSupported"];
    v4->_responsiveShutterSupported = [coder decodeBoolForKey:@"responsiveShutterSupported"];
    v4->_responsiveShutterEnabled = [coder decodeBoolForKey:@"responsiveShutterEnabled"];
    v4->_fastCapturePrioritizationEnabled = [coder decodeBoolForKey:@"fastCapturePrioritizationEnabled"];
    v4->_captureTimePhotosCurationSupported = [coder decodeBoolForKey:@"captureTimePhotosCurationSupported"];
    v4->_depthDataType = [coder decodeInt32ForKey:@"depthDataType"];
    v4->_pearlModuleType = [coder decodeInt32ForKey:@"pearlModuleType"];
    v4->_sifrStillImageCaptureEnabledIfAvailable = [coder decodeBoolForKey:@"sifrStillImageCaptureEnabledIfAvailable"];
    [coder decodeFloatForKey:@"gainMapMainImageDownscalingFactor"];
    v4->_gainMapMainImageDownscalingFactor = v12;
    [coder decodeFloatForKey:@"ubInferenceMainImageDownscalingFactor"];
    v4->_ubInferenceMainImageDownscalingFactor = v13;
    v14 = MEMORY[0x1E695DFD8];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v29[2] = objc_opt_class();
    v29[3] = objc_opt_class();
    v29[4] = objc_opt_class();
    v4->_enabledSemanticSegmentationMatteURNs = [coder decodeObjectOfClasses:objc_msgSend(v14 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v29, 5)), @"enabledSemanticSegmentationMatteURNs"}];
    v15 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v28[2] = objc_opt_class();
    v28[3] = objc_opt_class();
    v28[4] = objc_opt_class();
    v4->_supportedSemanticSegmentationMatteURNs = [coder decodeObjectOfClasses:objc_msgSend(v15 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v28, 5)), @"supportedSemanticSegmentationMatteURNs"}];
    v4->_maxLossyCompressionLevel = [coder decodeInt32ForKey:@"maxLossyCompressionLevel"];
    v16 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v27[2] = objc_opt_class();
    v27[3] = objc_opt_class();
    v27[4] = objc_opt_class();
    v4->_cameraInfoByPortType = [coder decodeObjectOfClasses:objc_msgSend(v16 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v27, 5)), @"cameraInfoByPortType"}];
    v17 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v4->_moduleCalibrationByPortType = [coder decodeObjectOfClasses:objc_msgSend(v17 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v26, 1)), @"moduleCalibrationByPortType"}];
    v4->_highQualityPhotoCaptureForVideoFormatEnabled = [coder decodeBoolForKey:@"highQualityPhotoCaptureForVideoFormatEnabled"];
    v4->_softISPSupported = [coder decodeBoolForKey:@"softISPSupported"];
    v4->_sensorRawPixelFormat = [coder decodeInt32ForKey:@"sensorRawPixelFormat"];
    v4->_quadraProcessingSupportEnabled = [coder decodeBoolForKey:@"quadraProcessingSupportEnabled"];
    v18 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v4->_dimensionsByResolutionFlavorByPortType = [coder decodeObjectOfClasses:objc_msgSend(v18 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v25, 3)), @"dimensionsByResolutionFlavorByPortType"}];
    v4->_ultraHighResolutionProcessingEnabled = [coder decodeBoolForKey:@"ultraHighResolutionProcessingEnabled"];
    v4->_sfhrMode = [coder decodeInt32ForKey:@"sfhrMode"];
    v19 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v4->_portTypesWithRawNightModeEnabled = [coder decodeObjectOfClasses:objc_msgSend(v19 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v24, 2)), @"portTypesWithRawNightModeEnabled"}];
    v20 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v4->_portTypesWithDigitalFlashZeroShutterLagEnabled = [coder decodeObjectOfClasses:objc_msgSend(v20 forKey:{"setWithArray:", v21, v23[0]), @"portTypesWithDigitalFlashZeroShutterLagEnabled"}];
    v4->_stereoPhotoOutputDimensions.width = [coder decodeInt32ForKey:@"stereoPhotoOutputDimensionsWidth"];
    v4->_stereoPhotoOutputDimensions.height = [coder decodeInt32ForKey:@"stereoPhotoOutputDimensionsHeight"];
    v4->_smartCropWarpingRequired = [coder decodeBoolForKey:@"smartCropWarpingRequired"];
    v4->_smartCropWarpingOutputDimensions.width = [coder decodeInt32ForKey:@"smartCropWarpingOutputDimensionsWidth"];
    v4->_smartCropWarpingOutputDimensions.height = [coder decodeInt32ForKey:@"smartCropWarpingOutputDimensionsHeight"];
    v4->_cameraSensorOrientationCompensationDegreesCW = [coder decodeInt32ForKey:@"cameraSensorOrientationCompensationDegreesCW"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = FigCapturePhotonicEngineSinkPipelineConfiguration;
  [(FigCaptureBaseStillImageSinkPipelineConfiguration *)&v7 encodeWithCoder:?];
  [coder encodeInt32:self->_stillImageSinkPipelineProcessingMode forKey:@"stillImageSinkPipelineProcessingMode"];
  [coder encodeObject:self->_pipelineProcessingContext forKey:@"pipelineProcessingContext"];
  [coder encodeInt32:self->_pipelineStagePriority forKey:@"pipelineStagePriority"];
  [coder encodeInt32:self->_inferencePriority forKey:@"inferencePriority"];
  [coder encodeInt32:self->_deviceType forKey:@"deviceType"];
  [coder encodeInt32:self->_devicePosition forKey:@"devicePosition"];
  [coder encodeInt32:self->_rawSensorDimensions.height forKey:@"rawSensorDimensionsHeight"];
  [coder encodeInt32:self->_rawSensorDimensions.width forKey:@"rawSensorDimensionsWidth"];
  [coder encodeInt32:self->_sensorCenterOffset.x forKey:@"sensorCenterOffsetX"];
  [coder encodeInt32:self->_sensorCenterOffset.y forKey:@"sensorCenterOffsetY"];
  [coder encodeInt32:self->_outputStillImageDimensions.width forKey:@"outputStillImageDimensionsWidth"];
  [coder encodeInt32:self->_outputStillImageDimensions.height forKey:@"outputStillImageDimensionsHeight"];
  [coder encodeObject:self->_sensorIDStringsByPortType forKey:@"sensorIDStringsByPortType"];
  [coder encodeObject:self->_baseZoomFactorsByPortType forKey:@"baseZoomFactorsByPortType"];
  [coder encodeInt32:self->_aspectRatio forKey:@"aspectRatio"];
  [coder encodeInt32:self->_swfrVersion forKey:@"swfrVersion"];
  [coder encodeInt32:self->_redEyeReductionVersion forKey:@"redEyeReductionVersion"];
  [coder encodeInt32:self->_semanticRenderingVersion forKey:@"semanticRenderingVersion"];
  [coder encodeInt32:self->_semanticDevelopmentVersion forKey:@"semanticDevelopmentVersion"];
  [coder encodeBool:self->_semanticStyleRenderingEnabled forKey:@"semanticStyleRenderingEnabled"];
  [coder encodeInt32:self->_smartStyleRenderingVersion forKey:@"smartStyleRenderingVersion"];
  [coder encodeBool:self->_smartStyleRenderingEnabled forKey:@"smartStyleRenderingEnabled"];
  [coder encodeBool:self->_smartStyleReversibilityEnabled forKey:@"smartStyleReversibilityEnabled"];
  [coder encodeInt32:self->_constantColorVersion forKey:@"constantColorVersion"];
  [coder encodeInt32:self->_constantColorConfidenceMapDimensions.width forKey:@"constantColorConfidenceMapDimensionsWidth"];
  [coder encodeInt32:self->_constantColorConfidenceMapDimensions.height forKey:@"constantColorConfidenceMapDimensionsHeight"];
  [coder encodeBool:self->_constantColorClippingRecoveryEnabled forKey:@"constantColorClippingRecoveryEnabled"];
  [coder encodeBool:self->_constantColorSaturationBoostEnabled forKey:@"constantColorSaturationBoostEnabled"];
  [coder encodeBool:self->_generateInferencesForSemanticProcessingIfNeeded forKey:@"generateInferencesForSemanticProcessingIfNeeded"];
  [coder encodeObject:self->_portTypesWithGeometricDistortionCorrectionEnabled forKey:@"portTypesWithGeometricDistortionCorrectionEnabled"];
  [coder encodeObject:self->_portTypesWithIntelligentDistortionCorrectionEnabled forKey:@"portTypesWithIntelligentDistortionCorrectionEnabled"];
  [coder encodeInt32:self->_dcProcessorVersion forKey:@"dcProcessorVersion"];
  [coder encodeBool:self->_gdcInDCProcessorSupported forKey:@"gdcInDCProcessorSupported"];
  [coder encodeInt32:self->_gdcInDCProcessorOutputCropDimensions.width forKey:@"gdcInDCProcessorOutputCropDimensionsWidth"];
  [coder encodeInt32:self->_gdcInDCProcessorOutputCropDimensions.height forKey:@"gdcInDCProcessorOutputCropDimensionsHeight"];
  [coder encodeBool:self->_dcProcessingWithDepthSupported forKey:@"dcProcessingWithDepthSupported"];
  [coder encodeInt32:self->_stillImageGDCSourceMode forKey:@"stillImageGDCSourceMode"];
  [coder encodeInt32:self->_greenGhostMitigationVersion forKey:@"greenGhostMitigationVersion"];
  [coder encodeInt32:self->_deepZoomVersion forKey:@"deepZoomVersion"];
  [coder encodeInt32:self->_deepZoomMode forKey:@"deepZoomMode"];
  [coder encodeInt32:self->_demosaicedRawPixelFormat forKey:@"demosaicedRawPixelFormat"];
  [coder encodeObject:self->_rawColorCalibrationsByPortType forKey:@"rawColorCalibrationsByPortType"];
  [coder encodeObject:self->_rawLensShadingCorrectionCoefficientsByPortType forKey:@"rawLensShadingCorrectionCoefficientsByPortType"];
  [coder encodeBool:self->_deferredProcessingSupported forKey:@"deferredProcessingSupported"];
  [coder encodeBool:self->_continuousZoomWithDepthSupported forKey:@"continuousZoomWithDepthSupported"];
  [coder encodeBool:self->_adjustablePortraitLightingEffectStrengthSupported forKey:@"adjustablePortraitLightingEffectStrengthSupported"];
  [coder encodeBool:self->_deepFusionSupported forKey:@"deepFusionSupported"];
  [coder encodeBool:self->_depthWithDeepFusionSupported forKey:@"depthWithDeepFusionSupported"];
  [coder encodeInt32:self->_deepFusionEnhancedResolutionDimensions.width forKey:@"deepFusionEnhancedResolutionDimensionsWidth"];
  [coder encodeInt32:self->_deepFusionEnhancedResolutionDimensions.height forKey:@"DeepFusionEnhancedResolutionDimensionsHeight"];
  [coder encodeInt32:self->_downgradedDeepFusionEnhancedResolutionDimensions.width forKey:@"wasDeepFusionEnhancedResolutionDimensionsWidth"];
  [coder encodeInt32:self->_downgradedDeepFusionEnhancedResolutionDimensions.height forKey:@"wasDeepFusionEnhancedResolutionDimensionsHeight"];
  [coder encodeObject:self->_portTypesWithLearnedFusionEnabled forKey:@"portTypesWithLearnedFusionEnabled"];
  [coder encodeBool:self->_learnedNRSupported forKey:@"learnedNRSupported"];
  [coder encodeBool:self->_learnedHRNRSupported forKey:@"learnedHRNRSupported"];
  [coder encodeBool:self->_responsiveShutterSupported forKey:@"responsiveShutterSupported"];
  [coder encodeBool:self->_responsiveShutterEnabled forKey:@"responsiveShutterEnabled"];
  [coder encodeBool:self->_fastCapturePrioritizationEnabled forKey:@"fastCapturePrioritizationEnabled"];
  [coder encodeBool:self->_captureTimePhotosCurationSupported forKey:@"captureTimePhotosCurationSupported"];
  [coder encodeInt32:self->_depthDataType forKey:@"depthDataType"];
  [coder encodeInt32:self->_pearlModuleType forKey:@"pearlModuleType"];
  [coder encodeBool:self->_sifrStillImageCaptureEnabledIfAvailable forKey:@"sifrStillImageCaptureEnabledIfAvailable"];
  *&v5 = self->_gainMapMainImageDownscalingFactor;
  [coder encodeFloat:@"gainMapMainImageDownscalingFactor" forKey:v5];
  *&v6 = self->_ubInferenceMainImageDownscalingFactor;
  [coder encodeFloat:@"ubInferenceMainImageDownscalingFactor" forKey:v6];
  [coder encodeObject:self->_enabledSemanticSegmentationMatteURNs forKey:@"enabledSemanticSegmentationMatteURNs"];
  [coder encodeObject:self->_supportedSemanticSegmentationMatteURNs forKey:@"supportedSemanticSegmentationMatteURNs"];
  [coder encodeInt32:self->_maxLossyCompressionLevel forKey:@"maxLossyCompressionLevel"];
  [coder encodeObject:self->_cameraInfoByPortType forKey:@"cameraInfoByPortType"];
  [coder encodeObject:self->_moduleCalibrationByPortType forKey:@"moduleCalibrationByPortType"];
  [coder encodeBool:self->_highQualityPhotoCaptureForVideoFormatEnabled forKey:@"highQualityPhotoCaptureForVideoFormatEnabled"];
  [coder encodeBool:self->_softISPSupported forKey:@"softISPSupported"];
  [coder encodeInt32:self->_sensorRawPixelFormat forKey:@"sensorRawPixelFormat"];
  [coder encodeBool:self->_quadraProcessingSupportEnabled forKey:@"quadraProcessingSupportEnabled"];
  [coder encodeObject:self->_dimensionsByResolutionFlavorByPortType forKey:@"dimensionsByResolutionFlavorByPortType"];
  [coder encodeBool:self->_ultraHighResolutionProcessingEnabled forKey:@"ultraHighResolutionProcessingEnabled"];
  [coder encodeInt32:self->_sfhrMode forKey:@"sfhrMode"];
  [coder encodeObject:self->_portTypesWithRawNightModeEnabled forKey:@"portTypesWithRawNightModeEnabled"];
  [coder encodeObject:self->_portTypesWithDigitalFlashZeroShutterLagEnabled forKey:@"portTypesWithDigitalFlashZeroShutterLagEnabled"];
  [coder encodeInt32:self->_stereoPhotoOutputDimensions.width forKey:@"stereoPhotoOutputDimensionsWidth"];
  [coder encodeInt32:self->_stereoPhotoOutputDimensions.height forKey:@"stereoPhotoOutputDimensionsHeight"];
  [coder encodeBool:self->_smartCropWarpingRequired forKey:@"smartCropWarpingRequired"];
  [coder encodeInt32:self->_smartCropWarpingOutputDimensions.width forKey:@"smartCropWarpingOutputDimensionsWidth"];
  [coder encodeInt32:self->_smartCropWarpingOutputDimensions.height forKey:@"smartCropWarpingOutputDimensionsHeight"];
  [coder encodeInt32:self->_cameraSensorOrientationCompensationDegreesCW forKey:@"cameraSensorOrientationCompensationDegreesCW"];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v99 = v6;
    v100 = v5;
    v101 = v3;
    v102 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_37;
    }

    v98.receiver = self;
    v98.super_class = FigCapturePhotonicEngineSinkPipelineConfiguration;
    v9 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)&v98 isEqual:equal];
    if (!v9)
    {
      return v9;
    }

    stillImageSinkPipelineProcessingMode = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self stillImageSinkPipelineProcessingMode];
    if (stillImageSinkPipelineProcessingMode != [equal stillImageSinkPipelineProcessingMode])
    {
      goto LABEL_37;
    }

    pipelineProcessingContext = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self pipelineProcessingContext];
    if (pipelineProcessingContext == [equal pipelineProcessingContext] || (v9 = -[NSString isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration pipelineProcessingContext](self, "pipelineProcessingContext"), "isEqual:", objc_msgSend(equal, "pipelineProcessingContext"))) != 0)
    {
      pipelineStagePriority = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self pipelineStagePriority];
      if (pipelineStagePriority != [equal pipelineStagePriority])
      {
        goto LABEL_37;
      }

      inferencePriority = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self inferencePriority];
      if (inferencePriority != [equal inferencePriority])
      {
        goto LABEL_37;
      }

      deviceType = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self deviceType];
      if (deviceType != [equal deviceType])
      {
        goto LABEL_37;
      }

      devicePosition = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self devicePosition];
      if (devicePosition != [equal devicePosition])
      {
        goto LABEL_37;
      }

      rawSensorDimensions = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self rawSensorDimensions];
      if (rawSensorDimensions != [equal rawSensorDimensions])
      {
        goto LABEL_37;
      }

      rawSensorDimensions2 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self rawSensorDimensions];
      if (rawSensorDimensions2 != [equal rawSensorDimensions])
      {
        goto LABEL_37;
      }

      rawSensorDimensions3 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self rawSensorDimensions];
      if (([equal rawSensorDimensions] ^ *&rawSensorDimensions3) >> 32)
      {
        goto LABEL_37;
      }

      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self sensorCenterOffset];
      v20 = v19;
      [equal sensorCenterOffset];
      if (v20 != v21)
      {
        goto LABEL_37;
      }

      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self sensorCenterOffset];
      v23 = v22;
      [equal sensorCenterOffset];
      if (v23 != v24)
      {
        goto LABEL_37;
      }

      outputStillImageDimensions = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self outputStillImageDimensions];
      if (outputStillImageDimensions != [equal outputStillImageDimensions])
      {
        goto LABEL_37;
      }

      outputStillImageDimensions2 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self outputStillImageDimensions];
      if (([equal outputStillImageDimensions] ^ *&outputStillImageDimensions2) >> 32)
      {
        goto LABEL_37;
      }

      sensorIDStringsByPortType = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self sensorIDStringsByPortType];
      if (sensorIDStringsByPortType == [equal sensorIDStringsByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration sensorIDStringsByPortType](self, "sensorIDStringsByPortType"), "isEqual:", objc_msgSend(equal, "sensorIDStringsByPortType"))) != 0)
      {
        baseZoomFactorsByPortType = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self baseZoomFactorsByPortType];
        if (baseZoomFactorsByPortType == [equal baseZoomFactorsByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration baseZoomFactorsByPortType](self, "baseZoomFactorsByPortType"), "isEqual:", objc_msgSend(equal, "baseZoomFactorsByPortType"))) != 0)
        {
          aspectRatio = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self aspectRatio];
          if (aspectRatio != [equal aspectRatio])
          {
            goto LABEL_37;
          }

          swfrVersion = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self swfrVersion];
          if (swfrVersion != [equal swfrVersion])
          {
            goto LABEL_37;
          }

          redEyeReductionVersion = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self redEyeReductionVersion];
          if (redEyeReductionVersion != [equal redEyeReductionVersion])
          {
            goto LABEL_37;
          }

          semanticRenderingVersion = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self semanticRenderingVersion];
          if (semanticRenderingVersion != [equal semanticRenderingVersion])
          {
            goto LABEL_37;
          }

          semanticDevelopmentVersion = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self semanticDevelopmentVersion];
          if (semanticDevelopmentVersion != [equal semanticDevelopmentVersion])
          {
            goto LABEL_37;
          }

          semanticStyleRenderingEnabled = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self semanticStyleRenderingEnabled];
          if (semanticStyleRenderingEnabled != [equal semanticStyleRenderingEnabled])
          {
            goto LABEL_37;
          }

          smartStyleRenderingVersion = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self smartStyleRenderingVersion];
          if (smartStyleRenderingVersion != [equal smartStyleRenderingVersion])
          {
            goto LABEL_37;
          }

          smartStyleRenderingEnabled = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self smartStyleRenderingEnabled];
          if (smartStyleRenderingEnabled != [equal smartStyleRenderingEnabled])
          {
            goto LABEL_37;
          }

          smartStyleReversibilityEnabled = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self smartStyleReversibilityEnabled];
          if (smartStyleReversibilityEnabled != [equal smartStyleReversibilityEnabled])
          {
            goto LABEL_37;
          }

          constantColorVersion = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self constantColorVersion];
          if (constantColorVersion != [equal constantColorVersion])
          {
            goto LABEL_37;
          }

          constantColorConfidenceMapDimensions = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self constantColorConfidenceMapDimensions];
          if (constantColorConfidenceMapDimensions != [equal constantColorConfidenceMapDimensions])
          {
            goto LABEL_37;
          }

          constantColorConfidenceMapDimensions2 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self constantColorConfidenceMapDimensions];
          if (([equal constantColorConfidenceMapDimensions] ^ *&constantColorConfidenceMapDimensions2) >> 32)
          {
            goto LABEL_37;
          }

          constantColorClippingRecoveryEnabled = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self constantColorClippingRecoveryEnabled];
          if (constantColorClippingRecoveryEnabled != [equal constantColorClippingRecoveryEnabled])
          {
            goto LABEL_37;
          }

          constantColorSaturationBoostEnabled = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self constantColorSaturationBoostEnabled];
          if (constantColorSaturationBoostEnabled != [equal constantColorSaturationBoostEnabled])
          {
            goto LABEL_37;
          }

          generateInferencesForSemanticProcessingIfNeeded = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self generateInferencesForSemanticProcessingIfNeeded];
          if (generateInferencesForSemanticProcessingIfNeeded != [equal generateInferencesForSemanticProcessingIfNeeded])
          {
            goto LABEL_37;
          }

          portTypesWithGeometricDistortionCorrectionEnabled = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self portTypesWithGeometricDistortionCorrectionEnabled];
          if (portTypesWithGeometricDistortionCorrectionEnabled == [equal portTypesWithGeometricDistortionCorrectionEnabled] || (v9 = -[NSArray isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration portTypesWithGeometricDistortionCorrectionEnabled](self, "portTypesWithGeometricDistortionCorrectionEnabled"), "isEqual:", objc_msgSend(equal, "portTypesWithGeometricDistortionCorrectionEnabled"))) != 0)
          {
            portTypesWithIntelligentDistortionCorrectionEnabled = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self portTypesWithIntelligentDistortionCorrectionEnabled];
            if (portTypesWithIntelligentDistortionCorrectionEnabled == [equal portTypesWithIntelligentDistortionCorrectionEnabled] || (v9 = -[NSArray isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration portTypesWithIntelligentDistortionCorrectionEnabled](self, "portTypesWithIntelligentDistortionCorrectionEnabled"), "isEqual:", objc_msgSend(equal, "portTypesWithIntelligentDistortionCorrectionEnabled"))) != 0)
            {
              dcProcessorVersion = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self dcProcessorVersion];
              if (dcProcessorVersion != [equal dcProcessorVersion])
              {
                goto LABEL_37;
              }

              gdcInDCProcessorOutputCropDimensions = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self gdcInDCProcessorOutputCropDimensions];
              if (gdcInDCProcessorOutputCropDimensions != [equal gdcInDCProcessorOutputCropDimensions])
              {
                goto LABEL_37;
              }

              gdcInDCProcessorOutputCropDimensions2 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self gdcInDCProcessorOutputCropDimensions];
              if (([equal gdcInDCProcessorOutputCropDimensions] ^ *&gdcInDCProcessorOutputCropDimensions2) >> 32)
              {
                goto LABEL_37;
              }

              dcProcessingWithDepthSupported = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self dcProcessingWithDepthSupported];
              if (dcProcessingWithDepthSupported != [equal dcProcessingWithDepthSupported])
              {
                goto LABEL_37;
              }

              stillImageGDCSourceMode = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self stillImageGDCSourceMode];
              if (stillImageGDCSourceMode != [equal stillImageGDCSourceMode])
              {
                goto LABEL_37;
              }

              greenGhostMitigationVersion = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self greenGhostMitigationVersion];
              if (greenGhostMitigationVersion != [equal greenGhostMitigationVersion])
              {
                goto LABEL_37;
              }

              deepZoomVersion = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self deepZoomVersion];
              if (deepZoomVersion != [equal deepZoomVersion])
              {
                goto LABEL_37;
              }

              deepZoomMode = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self deepZoomMode];
              if (deepZoomMode != [equal deepZoomMode])
              {
                goto LABEL_37;
              }

              demosaicedRawPixelFormat = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self demosaicedRawPixelFormat];
              if (demosaicedRawPixelFormat != [equal demosaicedRawPixelFormat])
              {
                goto LABEL_37;
              }

              rawColorCalibrationsByPortType = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self rawColorCalibrationsByPortType];
              if (rawColorCalibrationsByPortType == [equal rawColorCalibrationsByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration rawColorCalibrationsByPortType](self, "rawColorCalibrationsByPortType"), "isEqual:", objc_msgSend(equal, "rawColorCalibrationsByPortType"))) != 0)
              {
                rawLensShadingCorrectionCoefficientsByPortType = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self rawLensShadingCorrectionCoefficientsByPortType];
                if (rawLensShadingCorrectionCoefficientsByPortType == [equal rawLensShadingCorrectionCoefficientsByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration rawLensShadingCorrectionCoefficientsByPortType](self, "rawLensShadingCorrectionCoefficientsByPortType"), "isEqual:", objc_msgSend(equal, "rawLensShadingCorrectionCoefficientsByPortType"))) != 0)
                {
                  deferredProcessingSupported = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self deferredProcessingSupported];
                  if (deferredProcessingSupported != [equal deferredProcessingSupported])
                  {
                    goto LABEL_37;
                  }

                  continuousZoomWithDepthSupported = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self continuousZoomWithDepthSupported];
                  if (continuousZoomWithDepthSupported != [equal continuousZoomWithDepthSupported])
                  {
                    goto LABEL_37;
                  }

                  adjustablePortraitLightingEffectStrengthSupported = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self adjustablePortraitLightingEffectStrengthSupported];
                  if (adjustablePortraitLightingEffectStrengthSupported != [equal adjustablePortraitLightingEffectStrengthSupported])
                  {
                    goto LABEL_37;
                  }

                  deepFusionSupported = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self deepFusionSupported];
                  if (deepFusionSupported != [equal deepFusionSupported])
                  {
                    goto LABEL_37;
                  }

                  depthWithDeepFusionSupported = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self depthWithDeepFusionSupported];
                  if (depthWithDeepFusionSupported != [equal depthWithDeepFusionSupported])
                  {
                    goto LABEL_37;
                  }

                  deepFusionEnhancedResolutionDimensions = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self deepFusionEnhancedResolutionDimensions];
                  if (deepFusionEnhancedResolutionDimensions != [equal deepFusionEnhancedResolutionDimensions])
                  {
                    goto LABEL_37;
                  }

                  downgradedDeepFusionEnhancedResolutionDimensions = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self downgradedDeepFusionEnhancedResolutionDimensions];
                  if (downgradedDeepFusionEnhancedResolutionDimensions != [equal downgradedDeepFusionEnhancedResolutionDimensions])
                  {
                    goto LABEL_37;
                  }

                  portTypesWithLearnedFusionEnabled = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self portTypesWithLearnedFusionEnabled];
                  if (portTypesWithLearnedFusionEnabled == [equal portTypesWithLearnedFusionEnabled] || (v9 = -[NSArray isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration portTypesWithLearnedFusionEnabled](self, "portTypesWithLearnedFusionEnabled"), "isEqual:", objc_msgSend(equal, "portTypesWithLearnedFusionEnabled"))) != 0)
                  {
                    learnedNRSupported = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self learnedNRSupported];
                    if (learnedNRSupported != [equal learnedNRSupported])
                    {
                      goto LABEL_37;
                    }

                    responsiveShutterSupported = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self responsiveShutterSupported];
                    if (responsiveShutterSupported != [equal responsiveShutterSupported])
                    {
                      goto LABEL_37;
                    }

                    responsiveShutterEnabled = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self responsiveShutterEnabled];
                    if (responsiveShutterEnabled != [equal responsiveShutterEnabled])
                    {
                      goto LABEL_37;
                    }

                    fastCapturePrioritizationEnabled = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self fastCapturePrioritizationEnabled];
                    if (fastCapturePrioritizationEnabled != [equal fastCapturePrioritizationEnabled])
                    {
                      goto LABEL_37;
                    }

                    captureTimePhotosCurationSupported = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self captureTimePhotosCurationSupported];
                    if (captureTimePhotosCurationSupported != [equal captureTimePhotosCurationSupported])
                    {
                      goto LABEL_37;
                    }

                    depthDataType = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self depthDataType];
                    if (depthDataType != [equal depthDataType])
                    {
                      goto LABEL_37;
                    }

                    pearlModuleType = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self pearlModuleType];
                    if (pearlModuleType != [equal pearlModuleType])
                    {
                      goto LABEL_37;
                    }

                    sifrStillImageCaptureEnabledIfAvailable = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self sifrStillImageCaptureEnabledIfAvailable];
                    if (sifrStillImageCaptureEnabledIfAvailable != [equal sifrStillImageCaptureEnabledIfAvailable])
                    {
                      goto LABEL_37;
                    }

                    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self gainMapMainImageDownscalingFactor];
                    v74 = v73;
                    [equal gainMapMainImageDownscalingFactor];
                    if (v74 != v75)
                    {
                      goto LABEL_37;
                    }

                    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self ubInferenceMainImageDownscalingFactor];
                    v77 = v76;
                    [equal ubInferenceMainImageDownscalingFactor];
                    if (v77 != v78)
                    {
                      goto LABEL_37;
                    }

                    enabledSemanticSegmentationMatteURNs = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self enabledSemanticSegmentationMatteURNs];
                    if (enabledSemanticSegmentationMatteURNs == [equal enabledSemanticSegmentationMatteURNs] || (v9 = -[NSArray isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration enabledSemanticSegmentationMatteURNs](self, "enabledSemanticSegmentationMatteURNs"), "isEqual:", objc_msgSend(equal, "enabledSemanticSegmentationMatteURNs"))) != 0)
                    {
                      supportedSemanticSegmentationMatteURNs = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self supportedSemanticSegmentationMatteURNs];
                      if (supportedSemanticSegmentationMatteURNs == [equal supportedSemanticSegmentationMatteURNs] || (v9 = -[NSArray isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration supportedSemanticSegmentationMatteURNs](self, "supportedSemanticSegmentationMatteURNs"), "isEqual:", objc_msgSend(equal, "supportedSemanticSegmentationMatteURNs"))) != 0)
                      {
                        maxLossyCompressionLevel = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self maxLossyCompressionLevel];
                        if (maxLossyCompressionLevel != [equal maxLossyCompressionLevel])
                        {
                          goto LABEL_37;
                        }

                        cameraInfoByPortType = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self cameraInfoByPortType];
                        if (cameraInfoByPortType == [equal cameraInfoByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration cameraInfoByPortType](self, "cameraInfoByPortType"), "isEqual:", objc_msgSend(equal, "cameraInfoByPortType"))) != 0)
                        {
                          moduleCalibrationByPortType = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self moduleCalibrationByPortType];
                          if (moduleCalibrationByPortType == [equal moduleCalibrationByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration moduleCalibrationByPortType](self, "moduleCalibrationByPortType"), "isEqual:", objc_msgSend(equal, "moduleCalibrationByPortType"))) != 0)
                          {
                            highQualityPhotoCaptureForVideoFormatEnabled = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self highQualityPhotoCaptureForVideoFormatEnabled];
                            if (highQualityPhotoCaptureForVideoFormatEnabled != [equal highQualityPhotoCaptureForVideoFormatEnabled])
                            {
                              goto LABEL_37;
                            }

                            softISPSupported = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self softISPSupported];
                            if (softISPSupported != [equal softISPSupported])
                            {
                              goto LABEL_37;
                            }

                            sensorRawPixelFormat = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self sensorRawPixelFormat];
                            if (sensorRawPixelFormat != [equal sensorRawPixelFormat])
                            {
                              goto LABEL_37;
                            }

                            quadraProcessingSupportEnabled = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self quadraProcessingSupportEnabled];
                            if (quadraProcessingSupportEnabled != [equal quadraProcessingSupportEnabled])
                            {
                              goto LABEL_37;
                            }

                            dimensionsByResolutionFlavorByPortType = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self dimensionsByResolutionFlavorByPortType];
                            if (dimensionsByResolutionFlavorByPortType == [equal dimensionsByResolutionFlavorByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration dimensionsByResolutionFlavorByPortType](self, "dimensionsByResolutionFlavorByPortType"), "isEqual:", objc_msgSend(equal, "dimensionsByResolutionFlavorByPortType"))) != 0)
                            {
                              ultraHighResolutionProcessingEnabled = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self ultraHighResolutionProcessingEnabled];
                              if (ultraHighResolutionProcessingEnabled != [equal ultraHighResolutionProcessingEnabled])
                              {
                                goto LABEL_37;
                              }

                              sfhrMode = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self sfhrMode];
                              if (sfhrMode != [equal sfhrMode])
                              {
                                goto LABEL_37;
                              }

                              portTypesWithRawNightModeEnabled = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self portTypesWithRawNightModeEnabled];
                              if (portTypesWithRawNightModeEnabled == [equal portTypesWithRawNightModeEnabled] || (v9 = -[NSArray isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration portTypesWithRawNightModeEnabled](self, "portTypesWithRawNightModeEnabled"), "isEqual:", objc_msgSend(equal, "portTypesWithRawNightModeEnabled"))) != 0)
                              {
                                portTypesWithDigitalFlashZeroShutterLagEnabled = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self portTypesWithDigitalFlashZeroShutterLagEnabled];
                                if (portTypesWithDigitalFlashZeroShutterLagEnabled == [equal portTypesWithDigitalFlashZeroShutterLagEnabled] || (v9 = -[NSArray isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration portTypesWithDigitalFlashZeroShutterLagEnabled](self, "portTypesWithDigitalFlashZeroShutterLagEnabled"), "isEqual:", objc_msgSend(equal, "portTypesWithDigitalFlashZeroShutterLagEnabled"))) != 0)
                                {
                                  stereoPhotoOutputDimensions = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self stereoPhotoOutputDimensions];
                                  if (stereoPhotoOutputDimensions == [equal stereoPhotoOutputDimensions])
                                  {
                                    smartCropWarpingRequired = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self smartCropWarpingRequired];
                                    if (smartCropWarpingRequired == [equal smartCropWarpingRequired])
                                    {
                                      smartCropWarpingOutputDimensions = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self smartCropWarpingOutputDimensions];
                                      if (smartCropWarpingOutputDimensions == [equal smartCropWarpingOutputDimensions])
                                      {
                                        cameraSensorOrientationCompensationDegreesCW = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self cameraSensorOrientationCompensationDegreesCW];
                                        LOBYTE(v9) = cameraSensorOrientationCompensationDegreesCW == [equal cameraSensorOrientationCompensationDegreesCW];
                                        return v9;
                                      }
                                    }
                                  }

LABEL_37:
                                  LOBYTE(v9) = 0;
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
        }
      }
    }
  }

  return v9;
}

@end