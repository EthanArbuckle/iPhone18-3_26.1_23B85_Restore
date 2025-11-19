@interface FigCapturePhotonicEngineSinkPipelineConfiguration
- (BOOL)isEqual:(id)a3;
- (CGPoint)sensorCenterOffset;
- (FigCapturePhotonicEngineSinkPipelineConfiguration)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (FigCapturePhotonicEngineSinkPipelineConfiguration)initWithCoder:(id)a3
{
  v37.receiver = self;
  v37.super_class = FigCapturePhotonicEngineSinkPipelineConfiguration;
  v4 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)&v37 initWithCoder:?];
  if (v4)
  {
    v4->_stillImageSinkPipelineProcessingMode = [a3 decodeInt32ForKey:@"stillImageSinkPipelineProcessingMode"];
    v4->_pipelineProcessingContext = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"pipelineProcessingContext"];
    v4->_pipelineStagePriority = [a3 decodeInt32ForKey:@"pipelineStagePriority"];
    v4->_inferencePriority = [a3 decodeInt32ForKey:@"inferencePriority"];
    v4->_deviceType = [a3 decodeInt32ForKey:@"deviceType"];
    v4->_devicePosition = [a3 decodeInt32ForKey:@"devicePosition"];
    v4->_rawSensorDimensions.height = [a3 decodeInt32ForKey:@"rawSensorDimensionsHeight"];
    v4->_rawSensorDimensions.width = [a3 decodeInt32ForKey:@"rawSensorDimensionsWidth"];
    v4->_sensorCenterOffset.x = [a3 decodeInt32ForKey:@"sensorCenterOffsetX"];
    v4->_sensorCenterOffset.y = [a3 decodeInt32ForKey:@"sensorCenterOffsetY"];
    v4->_outputStillImageDimensions.width = [a3 decodeInt32ForKey:@"outputStillImageDimensionsWidth"];
    v4->_outputStillImageDimensions.height = [a3 decodeInt32ForKey:@"outputStillImageDimensionsHeight"];
    v5 = MEMORY[0x1E695DFD8];
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v4->_sensorIDStringsByPortType = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v36, 2)), @"sensorIDStringsByPortType"}];
    v6 = MEMORY[0x1E695DFD8];
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v35[2] = objc_opt_class();
    v4->_baseZoomFactorsByPortType = [a3 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v35, 3)), @"baseZoomFactorsByPortType"}];
    v4->_aspectRatio = [a3 decodeInt32ForKey:@"aspectRatio"];
    v4->_swfrVersion = [a3 decodeInt32ForKey:@"swfrVersion"];
    v4->_redEyeReductionVersion = [a3 decodeInt32ForKey:@"redEyeReductionVersion"];
    v4->_semanticRenderingVersion = [a3 decodeInt32ForKey:@"semanticRenderingVersion"];
    v4->_semanticDevelopmentVersion = [a3 decodeInt32ForKey:@"semanticDevelopmentVersion"];
    v4->_semanticStyleRenderingEnabled = [a3 decodeBoolForKey:@"semanticStyleRenderingEnabled"];
    v4->_smartStyleRenderingVersion = [a3 decodeInt32ForKey:@"smartStyleRenderingVersion"];
    v4->_smartStyleRenderingEnabled = [a3 decodeBoolForKey:@"smartStyleRenderingEnabled"];
    v4->_smartStyleReversibilityEnabled = [a3 decodeBoolForKey:@"smartStyleReversibilityEnabled"];
    v4->_constantColorVersion = [a3 decodeInt32ForKey:@"constantColorVersion"];
    v4->_constantColorConfidenceMapDimensions.width = [a3 decodeInt32ForKey:@"constantColorConfidenceMapDimensionsWidth"];
    v4->_constantColorConfidenceMapDimensions.height = [a3 decodeInt32ForKey:@"constantColorConfidenceMapDimensionsHeight"];
    v4->_constantColorClippingRecoveryEnabled = [a3 decodeBoolForKey:@"constantColorClippingRecoveryEnabled"];
    v4->_constantColorSaturationBoostEnabled = [a3 decodeBoolForKey:@"constantColorSaturationBoostEnabled"];
    v4->_generateInferencesForSemanticProcessingIfNeeded = [a3 decodeBoolForKey:@"generateInferencesForSemanticProcessingIfNeeded"];
    v7 = MEMORY[0x1E695DFD8];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v4->_portTypesWithGeometricDistortionCorrectionEnabled = [a3 decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v34, 2)), @"portTypesWithGeometricDistortionCorrectionEnabled"}];
    v8 = MEMORY[0x1E695DFD8];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v4->_portTypesWithIntelligentDistortionCorrectionEnabled = [a3 decodeObjectOfClasses:objc_msgSend(v8 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v33, 2)), @"portTypesWithIntelligentDistortionCorrectionEnabled"}];
    v4->_dcProcessorVersion = [a3 decodeInt32ForKey:@"dcProcessorVersion"];
    v4->_gdcInDCProcessorSupported = [a3 decodeBoolForKey:@"gdcInDCProcessorSupported"];
    v4->_gdcInDCProcessorOutputCropDimensions.width = [a3 decodeInt32ForKey:@"gdcInDCProcessorOutputCropDimensionsWidth"];
    v4->_gdcInDCProcessorOutputCropDimensions.height = [a3 decodeInt32ForKey:@"gdcInDCProcessorOutputCropDimensionsHeight"];
    v4->_dcProcessingWithDepthSupported = [a3 decodeBoolForKey:@"dcProcessingWithDepthSupported"];
    v4->_stillImageGDCSourceMode = [a3 decodeInt32ForKey:@"stillImageGDCSourceMode"];
    v4->_greenGhostMitigationVersion = [a3 decodeInt32ForKey:@"greenGhostMitigationVersion"];
    v4->_deepZoomVersion = [a3 decodeInt32ForKey:@"deepZoomVersion"];
    v4->_deepZoomMode = [a3 decodeInt32ForKey:@"deepZoomMode"];
    v4->_demosaicedRawPixelFormat = [a3 decodeInt32ForKey:@"demosaicedRawPixelFormat"];
    v9 = MEMORY[0x1E695DFD8];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v32[2] = objc_opt_class();
    v32[3] = objc_opt_class();
    v4->_rawColorCalibrationsByPortType = [a3 decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v32, 4)), @"rawColorCalibrationsByPortType"}];
    v10 = MEMORY[0x1E695DFD8];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v31[2] = objc_opt_class();
    v31[3] = objc_opt_class();
    v4->_rawLensShadingCorrectionCoefficientsByPortType = [a3 decodeObjectOfClasses:objc_msgSend(v10 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v31, 4)), @"rawLensShadingCorrectionCoefficientsByPortType"}];
    v4->_deferredProcessingSupported = [a3 decodeBoolForKey:@"deferredProcessingSupported"];
    v4->_continuousZoomWithDepthSupported = [a3 decodeBoolForKey:@"continuousZoomWithDepthSupported"];
    v4->_adjustablePortraitLightingEffectStrengthSupported = [a3 decodeBoolForKey:@"adjustablePortraitLightingEffectStrengthSupported"];
    v4->_deepFusionSupported = [a3 decodeBoolForKey:@"deepFusionSupported"];
    v4->_depthWithDeepFusionSupported = [a3 decodeBoolForKey:@"depthWithDeepFusionSupported"];
    v4->_deepFusionEnhancedResolutionDimensions.width = [a3 decodeInt32ForKey:@"deepFusionEnhancedResolutionDimensionsWidth"];
    v4->_deepFusionEnhancedResolutionDimensions.height = [a3 decodeInt32ForKey:@"DeepFusionEnhancedResolutionDimensionsHeight"];
    v4->_downgradedDeepFusionEnhancedResolutionDimensions.width = [a3 decodeInt32ForKey:@"wasDeepFusionEnhancedResolutionDimensionsWidth"];
    v4->_downgradedDeepFusionEnhancedResolutionDimensions.height = [a3 decodeInt32ForKey:@"wasDeepFusionEnhancedResolutionDimensionsHeight"];
    v11 = MEMORY[0x1E695DFD8];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v4->_portTypesWithLearnedFusionEnabled = [a3 decodeObjectOfClasses:objc_msgSend(v11 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v30, 2)), @"portTypesWithLearnedFusionEnabled"}];
    v4->_learnedNRSupported = [a3 decodeBoolForKey:@"learnedNRSupported"];
    v4->_learnedHRNRSupported = [a3 decodeBoolForKey:@"learnedHRNRSupported"];
    v4->_responsiveShutterSupported = [a3 decodeBoolForKey:@"responsiveShutterSupported"];
    v4->_responsiveShutterEnabled = [a3 decodeBoolForKey:@"responsiveShutterEnabled"];
    v4->_fastCapturePrioritizationEnabled = [a3 decodeBoolForKey:@"fastCapturePrioritizationEnabled"];
    v4->_captureTimePhotosCurationSupported = [a3 decodeBoolForKey:@"captureTimePhotosCurationSupported"];
    v4->_depthDataType = [a3 decodeInt32ForKey:@"depthDataType"];
    v4->_pearlModuleType = [a3 decodeInt32ForKey:@"pearlModuleType"];
    v4->_sifrStillImageCaptureEnabledIfAvailable = [a3 decodeBoolForKey:@"sifrStillImageCaptureEnabledIfAvailable"];
    [a3 decodeFloatForKey:@"gainMapMainImageDownscalingFactor"];
    v4->_gainMapMainImageDownscalingFactor = v12;
    [a3 decodeFloatForKey:@"ubInferenceMainImageDownscalingFactor"];
    v4->_ubInferenceMainImageDownscalingFactor = v13;
    v14 = MEMORY[0x1E695DFD8];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v29[2] = objc_opt_class();
    v29[3] = objc_opt_class();
    v29[4] = objc_opt_class();
    v4->_enabledSemanticSegmentationMatteURNs = [a3 decodeObjectOfClasses:objc_msgSend(v14 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v29, 5)), @"enabledSemanticSegmentationMatteURNs"}];
    v15 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v28[2] = objc_opt_class();
    v28[3] = objc_opt_class();
    v28[4] = objc_opt_class();
    v4->_supportedSemanticSegmentationMatteURNs = [a3 decodeObjectOfClasses:objc_msgSend(v15 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v28, 5)), @"supportedSemanticSegmentationMatteURNs"}];
    v4->_maxLossyCompressionLevel = [a3 decodeInt32ForKey:@"maxLossyCompressionLevel"];
    v16 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v27[2] = objc_opt_class();
    v27[3] = objc_opt_class();
    v27[4] = objc_opt_class();
    v4->_cameraInfoByPortType = [a3 decodeObjectOfClasses:objc_msgSend(v16 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v27, 5)), @"cameraInfoByPortType"}];
    v17 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v4->_moduleCalibrationByPortType = [a3 decodeObjectOfClasses:objc_msgSend(v17 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v26, 1)), @"moduleCalibrationByPortType"}];
    v4->_highQualityPhotoCaptureForVideoFormatEnabled = [a3 decodeBoolForKey:@"highQualityPhotoCaptureForVideoFormatEnabled"];
    v4->_softISPSupported = [a3 decodeBoolForKey:@"softISPSupported"];
    v4->_sensorRawPixelFormat = [a3 decodeInt32ForKey:@"sensorRawPixelFormat"];
    v4->_quadraProcessingSupportEnabled = [a3 decodeBoolForKey:@"quadraProcessingSupportEnabled"];
    v18 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v4->_dimensionsByResolutionFlavorByPortType = [a3 decodeObjectOfClasses:objc_msgSend(v18 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v25, 3)), @"dimensionsByResolutionFlavorByPortType"}];
    v4->_ultraHighResolutionProcessingEnabled = [a3 decodeBoolForKey:@"ultraHighResolutionProcessingEnabled"];
    v4->_sfhrMode = [a3 decodeInt32ForKey:@"sfhrMode"];
    v19 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v4->_portTypesWithRawNightModeEnabled = [a3 decodeObjectOfClasses:objc_msgSend(v19 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v24, 2)), @"portTypesWithRawNightModeEnabled"}];
    v20 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v4->_portTypesWithDigitalFlashZeroShutterLagEnabled = [a3 decodeObjectOfClasses:objc_msgSend(v20 forKey:{"setWithArray:", v21, v23[0]), @"portTypesWithDigitalFlashZeroShutterLagEnabled"}];
    v4->_stereoPhotoOutputDimensions.width = [a3 decodeInt32ForKey:@"stereoPhotoOutputDimensionsWidth"];
    v4->_stereoPhotoOutputDimensions.height = [a3 decodeInt32ForKey:@"stereoPhotoOutputDimensionsHeight"];
    v4->_smartCropWarpingRequired = [a3 decodeBoolForKey:@"smartCropWarpingRequired"];
    v4->_smartCropWarpingOutputDimensions.width = [a3 decodeInt32ForKey:@"smartCropWarpingOutputDimensionsWidth"];
    v4->_smartCropWarpingOutputDimensions.height = [a3 decodeInt32ForKey:@"smartCropWarpingOutputDimensionsHeight"];
    v4->_cameraSensorOrientationCompensationDegreesCW = [a3 decodeInt32ForKey:@"cameraSensorOrientationCompensationDegreesCW"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = FigCapturePhotonicEngineSinkPipelineConfiguration;
  [(FigCaptureBaseStillImageSinkPipelineConfiguration *)&v7 encodeWithCoder:?];
  [a3 encodeInt32:self->_stillImageSinkPipelineProcessingMode forKey:@"stillImageSinkPipelineProcessingMode"];
  [a3 encodeObject:self->_pipelineProcessingContext forKey:@"pipelineProcessingContext"];
  [a3 encodeInt32:self->_pipelineStagePriority forKey:@"pipelineStagePriority"];
  [a3 encodeInt32:self->_inferencePriority forKey:@"inferencePriority"];
  [a3 encodeInt32:self->_deviceType forKey:@"deviceType"];
  [a3 encodeInt32:self->_devicePosition forKey:@"devicePosition"];
  [a3 encodeInt32:self->_rawSensorDimensions.height forKey:@"rawSensorDimensionsHeight"];
  [a3 encodeInt32:self->_rawSensorDimensions.width forKey:@"rawSensorDimensionsWidth"];
  [a3 encodeInt32:self->_sensorCenterOffset.x forKey:@"sensorCenterOffsetX"];
  [a3 encodeInt32:self->_sensorCenterOffset.y forKey:@"sensorCenterOffsetY"];
  [a3 encodeInt32:self->_outputStillImageDimensions.width forKey:@"outputStillImageDimensionsWidth"];
  [a3 encodeInt32:self->_outputStillImageDimensions.height forKey:@"outputStillImageDimensionsHeight"];
  [a3 encodeObject:self->_sensorIDStringsByPortType forKey:@"sensorIDStringsByPortType"];
  [a3 encodeObject:self->_baseZoomFactorsByPortType forKey:@"baseZoomFactorsByPortType"];
  [a3 encodeInt32:self->_aspectRatio forKey:@"aspectRatio"];
  [a3 encodeInt32:self->_swfrVersion forKey:@"swfrVersion"];
  [a3 encodeInt32:self->_redEyeReductionVersion forKey:@"redEyeReductionVersion"];
  [a3 encodeInt32:self->_semanticRenderingVersion forKey:@"semanticRenderingVersion"];
  [a3 encodeInt32:self->_semanticDevelopmentVersion forKey:@"semanticDevelopmentVersion"];
  [a3 encodeBool:self->_semanticStyleRenderingEnabled forKey:@"semanticStyleRenderingEnabled"];
  [a3 encodeInt32:self->_smartStyleRenderingVersion forKey:@"smartStyleRenderingVersion"];
  [a3 encodeBool:self->_smartStyleRenderingEnabled forKey:@"smartStyleRenderingEnabled"];
  [a3 encodeBool:self->_smartStyleReversibilityEnabled forKey:@"smartStyleReversibilityEnabled"];
  [a3 encodeInt32:self->_constantColorVersion forKey:@"constantColorVersion"];
  [a3 encodeInt32:self->_constantColorConfidenceMapDimensions.width forKey:@"constantColorConfidenceMapDimensionsWidth"];
  [a3 encodeInt32:self->_constantColorConfidenceMapDimensions.height forKey:@"constantColorConfidenceMapDimensionsHeight"];
  [a3 encodeBool:self->_constantColorClippingRecoveryEnabled forKey:@"constantColorClippingRecoveryEnabled"];
  [a3 encodeBool:self->_constantColorSaturationBoostEnabled forKey:@"constantColorSaturationBoostEnabled"];
  [a3 encodeBool:self->_generateInferencesForSemanticProcessingIfNeeded forKey:@"generateInferencesForSemanticProcessingIfNeeded"];
  [a3 encodeObject:self->_portTypesWithGeometricDistortionCorrectionEnabled forKey:@"portTypesWithGeometricDistortionCorrectionEnabled"];
  [a3 encodeObject:self->_portTypesWithIntelligentDistortionCorrectionEnabled forKey:@"portTypesWithIntelligentDistortionCorrectionEnabled"];
  [a3 encodeInt32:self->_dcProcessorVersion forKey:@"dcProcessorVersion"];
  [a3 encodeBool:self->_gdcInDCProcessorSupported forKey:@"gdcInDCProcessorSupported"];
  [a3 encodeInt32:self->_gdcInDCProcessorOutputCropDimensions.width forKey:@"gdcInDCProcessorOutputCropDimensionsWidth"];
  [a3 encodeInt32:self->_gdcInDCProcessorOutputCropDimensions.height forKey:@"gdcInDCProcessorOutputCropDimensionsHeight"];
  [a3 encodeBool:self->_dcProcessingWithDepthSupported forKey:@"dcProcessingWithDepthSupported"];
  [a3 encodeInt32:self->_stillImageGDCSourceMode forKey:@"stillImageGDCSourceMode"];
  [a3 encodeInt32:self->_greenGhostMitigationVersion forKey:@"greenGhostMitigationVersion"];
  [a3 encodeInt32:self->_deepZoomVersion forKey:@"deepZoomVersion"];
  [a3 encodeInt32:self->_deepZoomMode forKey:@"deepZoomMode"];
  [a3 encodeInt32:self->_demosaicedRawPixelFormat forKey:@"demosaicedRawPixelFormat"];
  [a3 encodeObject:self->_rawColorCalibrationsByPortType forKey:@"rawColorCalibrationsByPortType"];
  [a3 encodeObject:self->_rawLensShadingCorrectionCoefficientsByPortType forKey:@"rawLensShadingCorrectionCoefficientsByPortType"];
  [a3 encodeBool:self->_deferredProcessingSupported forKey:@"deferredProcessingSupported"];
  [a3 encodeBool:self->_continuousZoomWithDepthSupported forKey:@"continuousZoomWithDepthSupported"];
  [a3 encodeBool:self->_adjustablePortraitLightingEffectStrengthSupported forKey:@"adjustablePortraitLightingEffectStrengthSupported"];
  [a3 encodeBool:self->_deepFusionSupported forKey:@"deepFusionSupported"];
  [a3 encodeBool:self->_depthWithDeepFusionSupported forKey:@"depthWithDeepFusionSupported"];
  [a3 encodeInt32:self->_deepFusionEnhancedResolutionDimensions.width forKey:@"deepFusionEnhancedResolutionDimensionsWidth"];
  [a3 encodeInt32:self->_deepFusionEnhancedResolutionDimensions.height forKey:@"DeepFusionEnhancedResolutionDimensionsHeight"];
  [a3 encodeInt32:self->_downgradedDeepFusionEnhancedResolutionDimensions.width forKey:@"wasDeepFusionEnhancedResolutionDimensionsWidth"];
  [a3 encodeInt32:self->_downgradedDeepFusionEnhancedResolutionDimensions.height forKey:@"wasDeepFusionEnhancedResolutionDimensionsHeight"];
  [a3 encodeObject:self->_portTypesWithLearnedFusionEnabled forKey:@"portTypesWithLearnedFusionEnabled"];
  [a3 encodeBool:self->_learnedNRSupported forKey:@"learnedNRSupported"];
  [a3 encodeBool:self->_learnedHRNRSupported forKey:@"learnedHRNRSupported"];
  [a3 encodeBool:self->_responsiveShutterSupported forKey:@"responsiveShutterSupported"];
  [a3 encodeBool:self->_responsiveShutterEnabled forKey:@"responsiveShutterEnabled"];
  [a3 encodeBool:self->_fastCapturePrioritizationEnabled forKey:@"fastCapturePrioritizationEnabled"];
  [a3 encodeBool:self->_captureTimePhotosCurationSupported forKey:@"captureTimePhotosCurationSupported"];
  [a3 encodeInt32:self->_depthDataType forKey:@"depthDataType"];
  [a3 encodeInt32:self->_pearlModuleType forKey:@"pearlModuleType"];
  [a3 encodeBool:self->_sifrStillImageCaptureEnabledIfAvailable forKey:@"sifrStillImageCaptureEnabledIfAvailable"];
  *&v5 = self->_gainMapMainImageDownscalingFactor;
  [a3 encodeFloat:@"gainMapMainImageDownscalingFactor" forKey:v5];
  *&v6 = self->_ubInferenceMainImageDownscalingFactor;
  [a3 encodeFloat:@"ubInferenceMainImageDownscalingFactor" forKey:v6];
  [a3 encodeObject:self->_enabledSemanticSegmentationMatteURNs forKey:@"enabledSemanticSegmentationMatteURNs"];
  [a3 encodeObject:self->_supportedSemanticSegmentationMatteURNs forKey:@"supportedSemanticSegmentationMatteURNs"];
  [a3 encodeInt32:self->_maxLossyCompressionLevel forKey:@"maxLossyCompressionLevel"];
  [a3 encodeObject:self->_cameraInfoByPortType forKey:@"cameraInfoByPortType"];
  [a3 encodeObject:self->_moduleCalibrationByPortType forKey:@"moduleCalibrationByPortType"];
  [a3 encodeBool:self->_highQualityPhotoCaptureForVideoFormatEnabled forKey:@"highQualityPhotoCaptureForVideoFormatEnabled"];
  [a3 encodeBool:self->_softISPSupported forKey:@"softISPSupported"];
  [a3 encodeInt32:self->_sensorRawPixelFormat forKey:@"sensorRawPixelFormat"];
  [a3 encodeBool:self->_quadraProcessingSupportEnabled forKey:@"quadraProcessingSupportEnabled"];
  [a3 encodeObject:self->_dimensionsByResolutionFlavorByPortType forKey:@"dimensionsByResolutionFlavorByPortType"];
  [a3 encodeBool:self->_ultraHighResolutionProcessingEnabled forKey:@"ultraHighResolutionProcessingEnabled"];
  [a3 encodeInt32:self->_sfhrMode forKey:@"sfhrMode"];
  [a3 encodeObject:self->_portTypesWithRawNightModeEnabled forKey:@"portTypesWithRawNightModeEnabled"];
  [a3 encodeObject:self->_portTypesWithDigitalFlashZeroShutterLagEnabled forKey:@"portTypesWithDigitalFlashZeroShutterLagEnabled"];
  [a3 encodeInt32:self->_stereoPhotoOutputDimensions.width forKey:@"stereoPhotoOutputDimensionsWidth"];
  [a3 encodeInt32:self->_stereoPhotoOutputDimensions.height forKey:@"stereoPhotoOutputDimensionsHeight"];
  [a3 encodeBool:self->_smartCropWarpingRequired forKey:@"smartCropWarpingRequired"];
  [a3 encodeInt32:self->_smartCropWarpingOutputDimensions.width forKey:@"smartCropWarpingOutputDimensionsWidth"];
  [a3 encodeInt32:self->_smartCropWarpingOutputDimensions.height forKey:@"smartCropWarpingOutputDimensionsHeight"];
  [a3 encodeInt32:self->_cameraSensorOrientationCompensationDegreesCW forKey:@"cameraSensorOrientationCompensationDegreesCW"];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
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
    v9 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)&v98 isEqual:a3];
    if (!v9)
    {
      return v9;
    }

    v10 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self stillImageSinkPipelineProcessingMode];
    if (v10 != [a3 stillImageSinkPipelineProcessingMode])
    {
      goto LABEL_37;
    }

    v11 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self pipelineProcessingContext];
    if (v11 == [a3 pipelineProcessingContext] || (v9 = -[NSString isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration pipelineProcessingContext](self, "pipelineProcessingContext"), "isEqual:", objc_msgSend(a3, "pipelineProcessingContext"))) != 0)
    {
      v12 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self pipelineStagePriority];
      if (v12 != [a3 pipelineStagePriority])
      {
        goto LABEL_37;
      }

      v13 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self inferencePriority];
      if (v13 != [a3 inferencePriority])
      {
        goto LABEL_37;
      }

      v14 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self deviceType];
      if (v14 != [a3 deviceType])
      {
        goto LABEL_37;
      }

      v15 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self devicePosition];
      if (v15 != [a3 devicePosition])
      {
        goto LABEL_37;
      }

      v16 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self rawSensorDimensions];
      if (v16 != [a3 rawSensorDimensions])
      {
        goto LABEL_37;
      }

      v17 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self rawSensorDimensions];
      if (v17 != [a3 rawSensorDimensions])
      {
        goto LABEL_37;
      }

      v18 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self rawSensorDimensions];
      if (([a3 rawSensorDimensions] ^ *&v18) >> 32)
      {
        goto LABEL_37;
      }

      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self sensorCenterOffset];
      v20 = v19;
      [a3 sensorCenterOffset];
      if (v20 != v21)
      {
        goto LABEL_37;
      }

      [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self sensorCenterOffset];
      v23 = v22;
      [a3 sensorCenterOffset];
      if (v23 != v24)
      {
        goto LABEL_37;
      }

      v25 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self outputStillImageDimensions];
      if (v25 != [a3 outputStillImageDimensions])
      {
        goto LABEL_37;
      }

      v26 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self outputStillImageDimensions];
      if (([a3 outputStillImageDimensions] ^ *&v26) >> 32)
      {
        goto LABEL_37;
      }

      v27 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self sensorIDStringsByPortType];
      if (v27 == [a3 sensorIDStringsByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration sensorIDStringsByPortType](self, "sensorIDStringsByPortType"), "isEqual:", objc_msgSend(a3, "sensorIDStringsByPortType"))) != 0)
      {
        v28 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self baseZoomFactorsByPortType];
        if (v28 == [a3 baseZoomFactorsByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration baseZoomFactorsByPortType](self, "baseZoomFactorsByPortType"), "isEqual:", objc_msgSend(a3, "baseZoomFactorsByPortType"))) != 0)
        {
          v29 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self aspectRatio];
          if (v29 != [a3 aspectRatio])
          {
            goto LABEL_37;
          }

          v30 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self swfrVersion];
          if (v30 != [a3 swfrVersion])
          {
            goto LABEL_37;
          }

          v31 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self redEyeReductionVersion];
          if (v31 != [a3 redEyeReductionVersion])
          {
            goto LABEL_37;
          }

          v32 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self semanticRenderingVersion];
          if (v32 != [a3 semanticRenderingVersion])
          {
            goto LABEL_37;
          }

          v33 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self semanticDevelopmentVersion];
          if (v33 != [a3 semanticDevelopmentVersion])
          {
            goto LABEL_37;
          }

          v34 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self semanticStyleRenderingEnabled];
          if (v34 != [a3 semanticStyleRenderingEnabled])
          {
            goto LABEL_37;
          }

          v35 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self smartStyleRenderingVersion];
          if (v35 != [a3 smartStyleRenderingVersion])
          {
            goto LABEL_37;
          }

          v36 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self smartStyleRenderingEnabled];
          if (v36 != [a3 smartStyleRenderingEnabled])
          {
            goto LABEL_37;
          }

          v37 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self smartStyleReversibilityEnabled];
          if (v37 != [a3 smartStyleReversibilityEnabled])
          {
            goto LABEL_37;
          }

          v38 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self constantColorVersion];
          if (v38 != [a3 constantColorVersion])
          {
            goto LABEL_37;
          }

          v39 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self constantColorConfidenceMapDimensions];
          if (v39 != [a3 constantColorConfidenceMapDimensions])
          {
            goto LABEL_37;
          }

          v40 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self constantColorConfidenceMapDimensions];
          if (([a3 constantColorConfidenceMapDimensions] ^ *&v40) >> 32)
          {
            goto LABEL_37;
          }

          v41 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self constantColorClippingRecoveryEnabled];
          if (v41 != [a3 constantColorClippingRecoveryEnabled])
          {
            goto LABEL_37;
          }

          v42 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self constantColorSaturationBoostEnabled];
          if (v42 != [a3 constantColorSaturationBoostEnabled])
          {
            goto LABEL_37;
          }

          v43 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self generateInferencesForSemanticProcessingIfNeeded];
          if (v43 != [a3 generateInferencesForSemanticProcessingIfNeeded])
          {
            goto LABEL_37;
          }

          v44 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self portTypesWithGeometricDistortionCorrectionEnabled];
          if (v44 == [a3 portTypesWithGeometricDistortionCorrectionEnabled] || (v9 = -[NSArray isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration portTypesWithGeometricDistortionCorrectionEnabled](self, "portTypesWithGeometricDistortionCorrectionEnabled"), "isEqual:", objc_msgSend(a3, "portTypesWithGeometricDistortionCorrectionEnabled"))) != 0)
          {
            v45 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self portTypesWithIntelligentDistortionCorrectionEnabled];
            if (v45 == [a3 portTypesWithIntelligentDistortionCorrectionEnabled] || (v9 = -[NSArray isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration portTypesWithIntelligentDistortionCorrectionEnabled](self, "portTypesWithIntelligentDistortionCorrectionEnabled"), "isEqual:", objc_msgSend(a3, "portTypesWithIntelligentDistortionCorrectionEnabled"))) != 0)
            {
              v46 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self dcProcessorVersion];
              if (v46 != [a3 dcProcessorVersion])
              {
                goto LABEL_37;
              }

              v47 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self gdcInDCProcessorOutputCropDimensions];
              if (v47 != [a3 gdcInDCProcessorOutputCropDimensions])
              {
                goto LABEL_37;
              }

              v48 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self gdcInDCProcessorOutputCropDimensions];
              if (([a3 gdcInDCProcessorOutputCropDimensions] ^ *&v48) >> 32)
              {
                goto LABEL_37;
              }

              v49 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self dcProcessingWithDepthSupported];
              if (v49 != [a3 dcProcessingWithDepthSupported])
              {
                goto LABEL_37;
              }

              v50 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self stillImageGDCSourceMode];
              if (v50 != [a3 stillImageGDCSourceMode])
              {
                goto LABEL_37;
              }

              v51 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self greenGhostMitigationVersion];
              if (v51 != [a3 greenGhostMitigationVersion])
              {
                goto LABEL_37;
              }

              v52 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self deepZoomVersion];
              if (v52 != [a3 deepZoomVersion])
              {
                goto LABEL_37;
              }

              v53 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self deepZoomMode];
              if (v53 != [a3 deepZoomMode])
              {
                goto LABEL_37;
              }

              v54 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self demosaicedRawPixelFormat];
              if (v54 != [a3 demosaicedRawPixelFormat])
              {
                goto LABEL_37;
              }

              v55 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self rawColorCalibrationsByPortType];
              if (v55 == [a3 rawColorCalibrationsByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration rawColorCalibrationsByPortType](self, "rawColorCalibrationsByPortType"), "isEqual:", objc_msgSend(a3, "rawColorCalibrationsByPortType"))) != 0)
              {
                v56 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self rawLensShadingCorrectionCoefficientsByPortType];
                if (v56 == [a3 rawLensShadingCorrectionCoefficientsByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration rawLensShadingCorrectionCoefficientsByPortType](self, "rawLensShadingCorrectionCoefficientsByPortType"), "isEqual:", objc_msgSend(a3, "rawLensShadingCorrectionCoefficientsByPortType"))) != 0)
                {
                  v57 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self deferredProcessingSupported];
                  if (v57 != [a3 deferredProcessingSupported])
                  {
                    goto LABEL_37;
                  }

                  v58 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self continuousZoomWithDepthSupported];
                  if (v58 != [a3 continuousZoomWithDepthSupported])
                  {
                    goto LABEL_37;
                  }

                  v59 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self adjustablePortraitLightingEffectStrengthSupported];
                  if (v59 != [a3 adjustablePortraitLightingEffectStrengthSupported])
                  {
                    goto LABEL_37;
                  }

                  v60 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self deepFusionSupported];
                  if (v60 != [a3 deepFusionSupported])
                  {
                    goto LABEL_37;
                  }

                  v61 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self depthWithDeepFusionSupported];
                  if (v61 != [a3 depthWithDeepFusionSupported])
                  {
                    goto LABEL_37;
                  }

                  v62 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self deepFusionEnhancedResolutionDimensions];
                  if (v62 != [a3 deepFusionEnhancedResolutionDimensions])
                  {
                    goto LABEL_37;
                  }

                  v63 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self downgradedDeepFusionEnhancedResolutionDimensions];
                  if (v63 != [a3 downgradedDeepFusionEnhancedResolutionDimensions])
                  {
                    goto LABEL_37;
                  }

                  v64 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self portTypesWithLearnedFusionEnabled];
                  if (v64 == [a3 portTypesWithLearnedFusionEnabled] || (v9 = -[NSArray isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration portTypesWithLearnedFusionEnabled](self, "portTypesWithLearnedFusionEnabled"), "isEqual:", objc_msgSend(a3, "portTypesWithLearnedFusionEnabled"))) != 0)
                  {
                    v65 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self learnedNRSupported];
                    if (v65 != [a3 learnedNRSupported])
                    {
                      goto LABEL_37;
                    }

                    v66 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self responsiveShutterSupported];
                    if (v66 != [a3 responsiveShutterSupported])
                    {
                      goto LABEL_37;
                    }

                    v67 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self responsiveShutterEnabled];
                    if (v67 != [a3 responsiveShutterEnabled])
                    {
                      goto LABEL_37;
                    }

                    v68 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self fastCapturePrioritizationEnabled];
                    if (v68 != [a3 fastCapturePrioritizationEnabled])
                    {
                      goto LABEL_37;
                    }

                    v69 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self captureTimePhotosCurationSupported];
                    if (v69 != [a3 captureTimePhotosCurationSupported])
                    {
                      goto LABEL_37;
                    }

                    v70 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self depthDataType];
                    if (v70 != [a3 depthDataType])
                    {
                      goto LABEL_37;
                    }

                    v71 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self pearlModuleType];
                    if (v71 != [a3 pearlModuleType])
                    {
                      goto LABEL_37;
                    }

                    v72 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self sifrStillImageCaptureEnabledIfAvailable];
                    if (v72 != [a3 sifrStillImageCaptureEnabledIfAvailable])
                    {
                      goto LABEL_37;
                    }

                    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self gainMapMainImageDownscalingFactor];
                    v74 = v73;
                    [a3 gainMapMainImageDownscalingFactor];
                    if (v74 != v75)
                    {
                      goto LABEL_37;
                    }

                    [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self ubInferenceMainImageDownscalingFactor];
                    v77 = v76;
                    [a3 ubInferenceMainImageDownscalingFactor];
                    if (v77 != v78)
                    {
                      goto LABEL_37;
                    }

                    v79 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self enabledSemanticSegmentationMatteURNs];
                    if (v79 == [a3 enabledSemanticSegmentationMatteURNs] || (v9 = -[NSArray isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration enabledSemanticSegmentationMatteURNs](self, "enabledSemanticSegmentationMatteURNs"), "isEqual:", objc_msgSend(a3, "enabledSemanticSegmentationMatteURNs"))) != 0)
                    {
                      v80 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self supportedSemanticSegmentationMatteURNs];
                      if (v80 == [a3 supportedSemanticSegmentationMatteURNs] || (v9 = -[NSArray isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration supportedSemanticSegmentationMatteURNs](self, "supportedSemanticSegmentationMatteURNs"), "isEqual:", objc_msgSend(a3, "supportedSemanticSegmentationMatteURNs"))) != 0)
                      {
                        v81 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self maxLossyCompressionLevel];
                        if (v81 != [a3 maxLossyCompressionLevel])
                        {
                          goto LABEL_37;
                        }

                        v82 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self cameraInfoByPortType];
                        if (v82 == [a3 cameraInfoByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration cameraInfoByPortType](self, "cameraInfoByPortType"), "isEqual:", objc_msgSend(a3, "cameraInfoByPortType"))) != 0)
                        {
                          v83 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self moduleCalibrationByPortType];
                          if (v83 == [a3 moduleCalibrationByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration moduleCalibrationByPortType](self, "moduleCalibrationByPortType"), "isEqual:", objc_msgSend(a3, "moduleCalibrationByPortType"))) != 0)
                          {
                            v84 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self highQualityPhotoCaptureForVideoFormatEnabled];
                            if (v84 != [a3 highQualityPhotoCaptureForVideoFormatEnabled])
                            {
                              goto LABEL_37;
                            }

                            v85 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self softISPSupported];
                            if (v85 != [a3 softISPSupported])
                            {
                              goto LABEL_37;
                            }

                            v86 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self sensorRawPixelFormat];
                            if (v86 != [a3 sensorRawPixelFormat])
                            {
                              goto LABEL_37;
                            }

                            v87 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self quadraProcessingSupportEnabled];
                            if (v87 != [a3 quadraProcessingSupportEnabled])
                            {
                              goto LABEL_37;
                            }

                            v88 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self dimensionsByResolutionFlavorByPortType];
                            if (v88 == [a3 dimensionsByResolutionFlavorByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration dimensionsByResolutionFlavorByPortType](self, "dimensionsByResolutionFlavorByPortType"), "isEqual:", objc_msgSend(a3, "dimensionsByResolutionFlavorByPortType"))) != 0)
                            {
                              v89 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self ultraHighResolutionProcessingEnabled];
                              if (v89 != [a3 ultraHighResolutionProcessingEnabled])
                              {
                                goto LABEL_37;
                              }

                              v90 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self sfhrMode];
                              if (v90 != [a3 sfhrMode])
                              {
                                goto LABEL_37;
                              }

                              v91 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self portTypesWithRawNightModeEnabled];
                              if (v91 == [a3 portTypesWithRawNightModeEnabled] || (v9 = -[NSArray isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration portTypesWithRawNightModeEnabled](self, "portTypesWithRawNightModeEnabled"), "isEqual:", objc_msgSend(a3, "portTypesWithRawNightModeEnabled"))) != 0)
                              {
                                v92 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self portTypesWithDigitalFlashZeroShutterLagEnabled];
                                if (v92 == [a3 portTypesWithDigitalFlashZeroShutterLagEnabled] || (v9 = -[NSArray isEqual:](-[FigCapturePhotonicEngineSinkPipelineConfiguration portTypesWithDigitalFlashZeroShutterLagEnabled](self, "portTypesWithDigitalFlashZeroShutterLagEnabled"), "isEqual:", objc_msgSend(a3, "portTypesWithDigitalFlashZeroShutterLagEnabled"))) != 0)
                                {
                                  v93 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self stereoPhotoOutputDimensions];
                                  if (v93 == [a3 stereoPhotoOutputDimensions])
                                  {
                                    v94 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self smartCropWarpingRequired];
                                    if (v94 == [a3 smartCropWarpingRequired])
                                    {
                                      v95 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self smartCropWarpingOutputDimensions];
                                      if (v95 == [a3 smartCropWarpingOutputDimensions])
                                      {
                                        v96 = [(FigCapturePhotonicEngineSinkPipelineConfiguration *)self cameraSensorOrientationCompensationDegreesCW];
                                        LOBYTE(v9) = v96 == [a3 cameraSensorOrientationCompensationDegreesCW];
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