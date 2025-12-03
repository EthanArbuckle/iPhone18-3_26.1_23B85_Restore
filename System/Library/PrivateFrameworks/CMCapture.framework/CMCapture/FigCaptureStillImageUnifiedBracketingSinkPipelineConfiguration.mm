@interface FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration
- (BOOL)isEqual:(id)equal;
- (FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration

- (FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration)initWithCoder:(id)coder
{
  v31.receiver = self;
  v31.super_class = FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration;
  v4 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)&v31 initWithCoder:?];
  if (v4)
  {
    v4->_stillImageSinkPipelineProcessingMode = [coder decodeInt32ForKey:@"stillImageSinkPipelineProcessingMode"];
    v4->_pipelineStagePriority = [coder decodeInt32ForKey:@"pipelineStagePriority"];
    v4->_inferencePriority = [coder decodeInt32ForKey:@"inferencePriority"];
    v4->_deviceType = [coder decodeInt32ForKey:@"deviceType"];
    v4->_rawSensorDimensions.height = [coder decodeInt32ForKey:@"rawSensorDimensionsHeight"];
    v4->_rawSensorDimensions.width = [coder decodeInt32ForKey:@"rawSensorDimensionsWidth"];
    v4->_outputStillImageDimensions.width = [coder decodeInt32ForKey:@"outputStillImageDimensionsWidth"];
    v4->_outputStillImageDimensions.height = [coder decodeInt32ForKey:@"outputStillImageDimensionsHeight"];
    v5 = MEMORY[0x1E695DFD8];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v4->_sensorIDStringsByPortType = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v30, 2)), @"sensorIDStringsByPortType"}];
    v6 = MEMORY[0x1E695DFD8];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v29[2] = objc_opt_class();
    v4->_baseZoomFactorsByPortType = [coder decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v29, 3)), @"baseZoomFactorsByPortType"}];
    v4->_redEyeReductionVersion = [coder decodeInt32ForKey:@"redEyeReductionVersion"];
    v4->_semanticRenderingVersion = [coder decodeInt32ForKey:@"semanticRenderingVersion"];
    v4->_semanticDevelopmentVersion = [coder decodeInt32ForKey:@"semanticDevelopmentVersion"];
    v4->_semanticStyleRenderingEnabled = [coder decodeBoolForKey:@"semanticStyleRenderingEnabled"];
    v7 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v4->_portTypesWithGeometricDistortionCorrectionEnabled = [coder decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v28, 2)), @"portTypesWithGeometricDistortionCorrectionEnabled"}];
    v8 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v4->_portTypesWithIntelligentDistortionCorrectionEnabled = [coder decodeObjectOfClasses:objc_msgSend(v8 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v27, 2)), @"portTypesWithIntelligentDistortionCorrectionEnabled"}];
    v4->_dcProcessorVersion = [coder decodeInt32ForKey:@"dcProcessorVersion"];
    v4->_gdcInDCProcessorSupported = [coder decodeBoolForKey:@"gdcInDCProcessorSupported"];
    v4->_gdcInDCProcessorOutputCropDimensions.width = [coder decodeInt32ForKey:@"gdcInDCProcessorOutputCropDimensionsWidth"];
    v4->_gdcInDCProcessorOutputCropDimensions.height = [coder decodeInt32ForKey:@"gdcInDCProcessorOutputCropDimensionsHeight"];
    v4->_greenGhostMitigationVersion = [coder decodeInt32ForKey:@"greenGhostMitigationVersion"];
    v4->_deepZoomVersion = [coder decodeInt32ForKey:@"deepZoomVersion"];
    v4->_demosaicedRawPixelFormat = [coder decodeInt32ForKey:@"demosaicedRawPixelFormat"];
    v9 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v26[2] = objc_opt_class();
    v26[3] = objc_opt_class();
    v4->_rawColorCalibrationsByPortType = [coder decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v26, 4)), @"rawColorCalibrationsByPortType"}];
    v10 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v25[3] = objc_opt_class();
    v4->_rawLensShadingCorrectionCoefficientsByPortType = [coder decodeObjectOfClasses:objc_msgSend(v10 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v25, 4)), @"rawLensShadingCorrectionCoefficientsByPortType"}];
    v4->_deferredProcessingSupported = [coder decodeBoolForKey:@"deferredProcessingSupported"];
    v4->_adjustablePortraitLightingEffectStrengthSupported = [coder decodeBoolForKey:@"adjustablePortraitLightingEffectStrengthSupported"];
    v4->_deepFusionSupported = [coder decodeBoolForKey:@"deepFusionSupported"];
    v4->_deepFusionEnhancedResolutionDimensions.width = [coder decodeInt32ForKey:@"deepFusionEnhancedResolutionDimensionsWidth"];
    v4->_deepFusionEnhancedResolutionDimensions.height = [coder decodeInt32ForKey:@"deepFusionEnhancedResolutionDimensionsHeight"];
    v4->_learnedNRSupported = [coder decodeBoolForKey:@"learnedNRSupported"];
    v4->_responsiveShutterSupported = [coder decodeBoolForKey:@"responsiveShutterSupported"];
    v4->_responsiveShutterEnabled = [coder decodeBoolForKey:@"responsiveShutterEnabled"];
    v4->_fastCapturePrioritizationEnabled = [coder decodeBoolForKey:@"fastCapturePrioritizationEnabled"];
    v4->_captureTimePhotosCurationSupported = [coder decodeBoolForKey:@"captureTimePhotosCurationSupported"];
    v4->_depthDataType = [coder decodeInt32ForKey:@"depthDataType"];
    v4->_pearlModuleType = [coder decodeInt32ForKey:@"pearlModuleType"];
    v4->_sifrStillImageCaptureEnabledIfAvailable = [coder decodeBoolForKey:@"sifrStillImageCaptureEnabledIfAvailable"];
    [coder decodeFloatForKey:@"gainMapMainImageDownscalingFactor"];
    v4->_gainMapMainImageDownscalingFactor = v11;
    [coder decodeFloatForKey:@"ubInferenceMainImageDownscalingFactor"];
    v4->_ubInferenceMainImageDownscalingFactor = v12;
    v13 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v24[2] = objc_opt_class();
    v24[3] = objc_opt_class();
    v24[4] = objc_opt_class();
    v4->_enabledSemanticSegmentationMatteURNs = [coder decodeObjectOfClasses:objc_msgSend(v13 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v24, 5)), @"enabledSemanticSegmentationMatteURNs"}];
    v14 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v23[2] = objc_opt_class();
    v23[3] = objc_opt_class();
    v23[4] = objc_opt_class();
    v4->_supportedSemanticSegmentationMatteURNs = [coder decodeObjectOfClasses:objc_msgSend(v14 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v23, 5)), @"supportedSemanticSegmentationMatteURNs"}];
    v4->_maxLossyCompressionLevel = [coder decodeInt32ForKey:@"maxLossyCompressionLevel"];
    v15 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:5];
    v4->_cameraInfoByPortType = [coder decodeObjectOfClasses:objc_msgSend(v15 forKey:{"setWithArray:", v16, v18, v19, v20, v21), @"cameraInfoByPortType"}];
    v4->_highQualityPhotoCaptureForVideoFormatEnabled = [coder decodeBoolForKey:@"highQualityPhotoCaptureForVideoFormatEnabled"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration;
  [(FigCaptureBaseStillImageSinkPipelineConfiguration *)&v7 encodeWithCoder:?];
  [coder encodeInt32:self->_stillImageSinkPipelineProcessingMode forKey:@"stillImageSinkPipelineProcessingMode"];
  [coder encodeInt32:self->_pipelineStagePriority forKey:@"pipelineStagePriority"];
  [coder encodeInt32:self->_inferencePriority forKey:@"inferencePriority"];
  [coder encodeInt32:self->_deviceType forKey:@"deviceType"];
  [coder encodeInt32:self->_rawSensorDimensions.height forKey:@"rawSensorDimensionsHeight"];
  [coder encodeInt32:self->_rawSensorDimensions.width forKey:@"rawSensorDimensionsWidth"];
  [coder encodeInt32:self->_outputStillImageDimensions.width forKey:@"outputStillImageDimensionsWidth"];
  [coder encodeInt32:self->_outputStillImageDimensions.height forKey:@"outputStillImageDimensionsHeight"];
  [coder encodeObject:self->_sensorIDStringsByPortType forKey:@"sensorIDStringsByPortType"];
  [coder encodeObject:self->_baseZoomFactorsByPortType forKey:@"baseZoomFactorsByPortType"];
  [coder encodeInt32:self->_redEyeReductionVersion forKey:@"redEyeReductionVersion"];
  [coder encodeInt32:self->_semanticRenderingVersion forKey:@"semanticRenderingVersion"];
  [coder encodeInt32:self->_semanticDevelopmentVersion forKey:@"semanticDevelopmentVersion"];
  [coder encodeBool:self->_semanticStyleRenderingEnabled forKey:@"semanticStyleRenderingEnabled"];
  [coder encodeObject:self->_portTypesWithGeometricDistortionCorrectionEnabled forKey:@"portTypesWithGeometricDistortionCorrectionEnabled"];
  [coder encodeObject:self->_portTypesWithIntelligentDistortionCorrectionEnabled forKey:@"portTypesWithIntelligentDistortionCorrectionEnabled"];
  [coder encodeInt32:self->_dcProcessorVersion forKey:@"dcProcessorVersion"];
  [coder encodeBool:self->_gdcInDCProcessorSupported forKey:@"gdcInDCProcessorSupported"];
  [coder encodeInt32:self->_gdcInDCProcessorOutputCropDimensions.width forKey:@"gdcInDCProcessorOutputCropDimensionsWidth"];
  [coder encodeInt32:self->_gdcInDCProcessorOutputCropDimensions.height forKey:@"gdcInDCProcessorOutputCropDimensionsHeight"];
  [coder encodeInt32:self->_greenGhostMitigationVersion forKey:@"greenGhostMitigationVersion"];
  [coder encodeInt32:self->_deepZoomVersion forKey:@"deepZoomVersion"];
  [coder encodeInt32:self->_demosaicedRawPixelFormat forKey:@"demosaicedRawPixelFormat"];
  [coder encodeObject:self->_rawColorCalibrationsByPortType forKey:@"rawColorCalibrationsByPortType"];
  [coder encodeObject:self->_rawLensShadingCorrectionCoefficientsByPortType forKey:@"rawLensShadingCorrectionCoefficientsByPortType"];
  [coder encodeBool:self->_deferredProcessingSupported forKey:@"deferredProcessingSupported"];
  [coder encodeBool:self->_adjustablePortraitLightingEffectStrengthSupported forKey:@"adjustablePortraitLightingEffectStrengthSupported"];
  [coder encodeBool:self->_deepFusionSupported forKey:@"deepFusionSupported"];
  [coder encodeInt32:self->_deepFusionEnhancedResolutionDimensions.width forKey:@"deepFusionEnhancedResolutionDimensionsWidth"];
  [coder encodeInt32:self->_deepFusionEnhancedResolutionDimensions.height forKey:@"deepFusionEnhancedResolutionDimensionsHeight"];
  [coder encodeBool:self->_learnedNRSupported forKey:@"learnedNRSupported"];
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
  [coder encodeBool:self->_highQualityPhotoCaptureForVideoFormatEnabled forKey:@"highQualityPhotoCaptureForVideoFormatEnabled"];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v9) = 1;
    return v9;
  }

  v60 = v6;
  v61 = v5;
  v62 = v3;
  v63 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  v59.receiver = self;
  v59.super_class = FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration;
  v9 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)&v59 isEqual:equal];
  if (v9)
  {
    stillImageSinkPipelineProcessingMode = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self stillImageSinkPipelineProcessingMode];
    if (stillImageSinkPipelineProcessingMode != [equal stillImageSinkPipelineProcessingMode])
    {
      goto LABEL_21;
    }

    pipelineStagePriority = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self pipelineStagePriority];
    if (pipelineStagePriority != [equal pipelineStagePriority])
    {
      goto LABEL_21;
    }

    inferencePriority = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self inferencePriority];
    if (inferencePriority != [equal inferencePriority])
    {
      goto LABEL_21;
    }

    deviceType = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self deviceType];
    if (deviceType != [equal deviceType])
    {
      goto LABEL_21;
    }

    rawSensorDimensions = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self rawSensorDimensions];
    if (rawSensorDimensions != [equal rawSensorDimensions])
    {
      goto LABEL_21;
    }

    rawSensorDimensions2 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self rawSensorDimensions];
    if (rawSensorDimensions2 != [equal rawSensorDimensions])
    {
      goto LABEL_21;
    }

    rawSensorDimensions3 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self rawSensorDimensions];
    if (([equal rawSensorDimensions] ^ *&rawSensorDimensions3) >> 32)
    {
      goto LABEL_21;
    }

    outputStillImageDimensions = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self outputStillImageDimensions];
    if (outputStillImageDimensions != [equal outputStillImageDimensions])
    {
      goto LABEL_21;
    }

    outputStillImageDimensions2 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self outputStillImageDimensions];
    if (([equal outputStillImageDimensions] ^ *&outputStillImageDimensions2) >> 32)
    {
      goto LABEL_21;
    }

    sensorIDStringsByPortType = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self sensorIDStringsByPortType];
    if (sensorIDStringsByPortType == [equal sensorIDStringsByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration sensorIDStringsByPortType](self, "sensorIDStringsByPortType"), "isEqual:", objc_msgSend(equal, "sensorIDStringsByPortType"))) != 0)
    {
      baseZoomFactorsByPortType = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self baseZoomFactorsByPortType];
      if (baseZoomFactorsByPortType == [equal baseZoomFactorsByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration baseZoomFactorsByPortType](self, "baseZoomFactorsByPortType"), "isEqual:", objc_msgSend(equal, "baseZoomFactorsByPortType"))) != 0)
      {
        redEyeReductionVersion = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self redEyeReductionVersion];
        if (redEyeReductionVersion != [equal redEyeReductionVersion])
        {
          goto LABEL_21;
        }

        semanticRenderingVersion = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self semanticRenderingVersion];
        if (semanticRenderingVersion != [equal semanticRenderingVersion])
        {
          goto LABEL_21;
        }

        semanticDevelopmentVersion = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self semanticDevelopmentVersion];
        if (semanticDevelopmentVersion != [equal semanticDevelopmentVersion])
        {
          goto LABEL_21;
        }

        semanticStyleRenderingEnabled = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self semanticStyleRenderingEnabled];
        if (semanticStyleRenderingEnabled != [equal semanticStyleRenderingEnabled])
        {
          goto LABEL_21;
        }

        portTypesWithGeometricDistortionCorrectionEnabled = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self portTypesWithGeometricDistortionCorrectionEnabled];
        if (portTypesWithGeometricDistortionCorrectionEnabled == [equal portTypesWithGeometricDistortionCorrectionEnabled] || (v9 = -[NSArray isEqual:](-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration portTypesWithGeometricDistortionCorrectionEnabled](self, "portTypesWithGeometricDistortionCorrectionEnabled"), "isEqual:", objc_msgSend(equal, "portTypesWithGeometricDistortionCorrectionEnabled"))) != 0)
        {
          portTypesWithIntelligentDistortionCorrectionEnabled = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self portTypesWithIntelligentDistortionCorrectionEnabled];
          if (portTypesWithIntelligentDistortionCorrectionEnabled == [equal portTypesWithIntelligentDistortionCorrectionEnabled] || (v9 = -[NSArray isEqual:](-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration portTypesWithIntelligentDistortionCorrectionEnabled](self, "portTypesWithIntelligentDistortionCorrectionEnabled"), "isEqual:", objc_msgSend(equal, "portTypesWithIntelligentDistortionCorrectionEnabled"))) != 0)
          {
            dcProcessorVersion = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self dcProcessorVersion];
            if (dcProcessorVersion != [equal dcProcessorVersion])
            {
              goto LABEL_21;
            }

            gdcInDCProcessorOutputCropDimensions = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self gdcInDCProcessorOutputCropDimensions];
            if (gdcInDCProcessorOutputCropDimensions != [equal gdcInDCProcessorOutputCropDimensions])
            {
              goto LABEL_21;
            }

            gdcInDCProcessorOutputCropDimensions2 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self gdcInDCProcessorOutputCropDimensions];
            if (([equal gdcInDCProcessorOutputCropDimensions] ^ *&gdcInDCProcessorOutputCropDimensions2) >> 32)
            {
              goto LABEL_21;
            }

            greenGhostMitigationVersion = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self greenGhostMitigationVersion];
            if (greenGhostMitigationVersion != [equal greenGhostMitigationVersion])
            {
              goto LABEL_21;
            }

            deepZoomVersion = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self deepZoomVersion];
            if (deepZoomVersion != [equal deepZoomVersion])
            {
              goto LABEL_21;
            }

            demosaicedRawPixelFormat = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self demosaicedRawPixelFormat];
            if (demosaicedRawPixelFormat != [equal demosaicedRawPixelFormat])
            {
              goto LABEL_21;
            }

            rawColorCalibrationsByPortType = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self rawColorCalibrationsByPortType];
            if (rawColorCalibrationsByPortType == [equal rawColorCalibrationsByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration rawColorCalibrationsByPortType](self, "rawColorCalibrationsByPortType"), "isEqual:", objc_msgSend(equal, "rawColorCalibrationsByPortType"))) != 0)
            {
              rawLensShadingCorrectionCoefficientsByPortType = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self rawLensShadingCorrectionCoefficientsByPortType];
              if (rawLensShadingCorrectionCoefficientsByPortType == [equal rawLensShadingCorrectionCoefficientsByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration rawLensShadingCorrectionCoefficientsByPortType](self, "rawLensShadingCorrectionCoefficientsByPortType"), "isEqual:", objc_msgSend(equal, "rawLensShadingCorrectionCoefficientsByPortType"))) != 0)
              {
                deferredProcessingSupported = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self deferredProcessingSupported];
                if (deferredProcessingSupported != [equal deferredProcessingSupported])
                {
                  goto LABEL_21;
                }

                adjustablePortraitLightingEffectStrengthSupported = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self adjustablePortraitLightingEffectStrengthSupported];
                if (adjustablePortraitLightingEffectStrengthSupported != [equal adjustablePortraitLightingEffectStrengthSupported])
                {
                  goto LABEL_21;
                }

                deepFusionSupported = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self deepFusionSupported];
                if (deepFusionSupported != [equal deepFusionSupported])
                {
                  goto LABEL_21;
                }

                deepFusionEnhancedResolutionDimensions = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self deepFusionEnhancedResolutionDimensions];
                if (deepFusionEnhancedResolutionDimensions != [equal deepFusionEnhancedResolutionDimensions])
                {
                  goto LABEL_21;
                }

                learnedNRSupported = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self learnedNRSupported];
                if (learnedNRSupported != [equal learnedNRSupported])
                {
                  goto LABEL_21;
                }

                responsiveShutterSupported = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self responsiveShutterSupported];
                if (responsiveShutterSupported != [equal responsiveShutterSupported])
                {
                  goto LABEL_21;
                }

                responsiveShutterEnabled = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self responsiveShutterEnabled];
                if (responsiveShutterEnabled != [equal responsiveShutterEnabled])
                {
                  goto LABEL_21;
                }

                fastCapturePrioritizationEnabled = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self fastCapturePrioritizationEnabled];
                if (fastCapturePrioritizationEnabled != [equal fastCapturePrioritizationEnabled])
                {
                  goto LABEL_21;
                }

                captureTimePhotosCurationSupported = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self captureTimePhotosCurationSupported];
                if (captureTimePhotosCurationSupported != [equal captureTimePhotosCurationSupported])
                {
                  goto LABEL_21;
                }

                depthDataType = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self depthDataType];
                if (depthDataType != [equal depthDataType])
                {
                  goto LABEL_21;
                }

                pearlModuleType = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self pearlModuleType];
                if (pearlModuleType != [equal pearlModuleType])
                {
                  goto LABEL_21;
                }

                sifrStillImageCaptureEnabledIfAvailable = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self sifrStillImageCaptureEnabledIfAvailable];
                if (sifrStillImageCaptureEnabledIfAvailable != [equal sifrStillImageCaptureEnabledIfAvailable])
                {
                  goto LABEL_21;
                }

                [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self gainMapMainImageDownscalingFactor];
                v48 = v47;
                [equal gainMapMainImageDownscalingFactor];
                if (v48 != v49)
                {
                  goto LABEL_21;
                }

                [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self ubInferenceMainImageDownscalingFactor];
                v51 = v50;
                [equal ubInferenceMainImageDownscalingFactor];
                if (v51 != v52)
                {
                  goto LABEL_21;
                }

                enabledSemanticSegmentationMatteURNs = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self enabledSemanticSegmentationMatteURNs];
                if (enabledSemanticSegmentationMatteURNs == [equal enabledSemanticSegmentationMatteURNs] || (v9 = -[NSArray isEqual:](-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration enabledSemanticSegmentationMatteURNs](self, "enabledSemanticSegmentationMatteURNs"), "isEqual:", objc_msgSend(equal, "enabledSemanticSegmentationMatteURNs"))) != 0)
                {
                  supportedSemanticSegmentationMatteURNs = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self supportedSemanticSegmentationMatteURNs];
                  if (supportedSemanticSegmentationMatteURNs == [equal supportedSemanticSegmentationMatteURNs] || (v9 = -[NSArray isEqual:](-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration supportedSemanticSegmentationMatteURNs](self, "supportedSemanticSegmentationMatteURNs"), "isEqual:", objc_msgSend(equal, "supportedSemanticSegmentationMatteURNs"))) != 0)
                  {
                    maxLossyCompressionLevel = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self maxLossyCompressionLevel];
                    if (maxLossyCompressionLevel == [equal maxLossyCompressionLevel])
                    {
                      cameraInfoByPortType = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self cameraInfoByPortType];
                      if (cameraInfoByPortType == [equal cameraInfoByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration cameraInfoByPortType](self, "cameraInfoByPortType"), "isEqual:", objc_msgSend(equal, "cameraInfoByPortType"))) != 0)
                      {
                        highQualityPhotoCaptureForVideoFormatEnabled = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self highQualityPhotoCaptureForVideoFormatEnabled];
                        LOBYTE(v9) = highQualityPhotoCaptureForVideoFormatEnabled ^ [equal highQualityPhotoCaptureForVideoFormatEnabled] ^ 1;
                      }

                      return v9;
                    }

LABEL_21:
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

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration;
  [(FigCaptureBaseStillImageSinkPipelineConfiguration *)&v3 dealloc];
}

@end