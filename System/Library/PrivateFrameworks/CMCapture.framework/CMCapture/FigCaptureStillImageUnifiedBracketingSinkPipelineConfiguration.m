@interface FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration
- (BOOL)isEqual:(id)a3;
- (FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration

- (FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration)initWithCoder:(id)a3
{
  v31.receiver = self;
  v31.super_class = FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration;
  v4 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)&v31 initWithCoder:?];
  if (v4)
  {
    v4->_stillImageSinkPipelineProcessingMode = [a3 decodeInt32ForKey:@"stillImageSinkPipelineProcessingMode"];
    v4->_pipelineStagePriority = [a3 decodeInt32ForKey:@"pipelineStagePriority"];
    v4->_inferencePriority = [a3 decodeInt32ForKey:@"inferencePriority"];
    v4->_deviceType = [a3 decodeInt32ForKey:@"deviceType"];
    v4->_rawSensorDimensions.height = [a3 decodeInt32ForKey:@"rawSensorDimensionsHeight"];
    v4->_rawSensorDimensions.width = [a3 decodeInt32ForKey:@"rawSensorDimensionsWidth"];
    v4->_outputStillImageDimensions.width = [a3 decodeInt32ForKey:@"outputStillImageDimensionsWidth"];
    v4->_outputStillImageDimensions.height = [a3 decodeInt32ForKey:@"outputStillImageDimensionsHeight"];
    v5 = MEMORY[0x1E695DFD8];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v4->_sensorIDStringsByPortType = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v30, 2)), @"sensorIDStringsByPortType"}];
    v6 = MEMORY[0x1E695DFD8];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v29[2] = objc_opt_class();
    v4->_baseZoomFactorsByPortType = [a3 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v29, 3)), @"baseZoomFactorsByPortType"}];
    v4->_redEyeReductionVersion = [a3 decodeInt32ForKey:@"redEyeReductionVersion"];
    v4->_semanticRenderingVersion = [a3 decodeInt32ForKey:@"semanticRenderingVersion"];
    v4->_semanticDevelopmentVersion = [a3 decodeInt32ForKey:@"semanticDevelopmentVersion"];
    v4->_semanticStyleRenderingEnabled = [a3 decodeBoolForKey:@"semanticStyleRenderingEnabled"];
    v7 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v4->_portTypesWithGeometricDistortionCorrectionEnabled = [a3 decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v28, 2)), @"portTypesWithGeometricDistortionCorrectionEnabled"}];
    v8 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v4->_portTypesWithIntelligentDistortionCorrectionEnabled = [a3 decodeObjectOfClasses:objc_msgSend(v8 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v27, 2)), @"portTypesWithIntelligentDistortionCorrectionEnabled"}];
    v4->_dcProcessorVersion = [a3 decodeInt32ForKey:@"dcProcessorVersion"];
    v4->_gdcInDCProcessorSupported = [a3 decodeBoolForKey:@"gdcInDCProcessorSupported"];
    v4->_gdcInDCProcessorOutputCropDimensions.width = [a3 decodeInt32ForKey:@"gdcInDCProcessorOutputCropDimensionsWidth"];
    v4->_gdcInDCProcessorOutputCropDimensions.height = [a3 decodeInt32ForKey:@"gdcInDCProcessorOutputCropDimensionsHeight"];
    v4->_greenGhostMitigationVersion = [a3 decodeInt32ForKey:@"greenGhostMitigationVersion"];
    v4->_deepZoomVersion = [a3 decodeInt32ForKey:@"deepZoomVersion"];
    v4->_demosaicedRawPixelFormat = [a3 decodeInt32ForKey:@"demosaicedRawPixelFormat"];
    v9 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v26[2] = objc_opt_class();
    v26[3] = objc_opt_class();
    v4->_rawColorCalibrationsByPortType = [a3 decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v26, 4)), @"rawColorCalibrationsByPortType"}];
    v10 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v25[3] = objc_opt_class();
    v4->_rawLensShadingCorrectionCoefficientsByPortType = [a3 decodeObjectOfClasses:objc_msgSend(v10 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v25, 4)), @"rawLensShadingCorrectionCoefficientsByPortType"}];
    v4->_deferredProcessingSupported = [a3 decodeBoolForKey:@"deferredProcessingSupported"];
    v4->_adjustablePortraitLightingEffectStrengthSupported = [a3 decodeBoolForKey:@"adjustablePortraitLightingEffectStrengthSupported"];
    v4->_deepFusionSupported = [a3 decodeBoolForKey:@"deepFusionSupported"];
    v4->_deepFusionEnhancedResolutionDimensions.width = [a3 decodeInt32ForKey:@"deepFusionEnhancedResolutionDimensionsWidth"];
    v4->_deepFusionEnhancedResolutionDimensions.height = [a3 decodeInt32ForKey:@"deepFusionEnhancedResolutionDimensionsHeight"];
    v4->_learnedNRSupported = [a3 decodeBoolForKey:@"learnedNRSupported"];
    v4->_responsiveShutterSupported = [a3 decodeBoolForKey:@"responsiveShutterSupported"];
    v4->_responsiveShutterEnabled = [a3 decodeBoolForKey:@"responsiveShutterEnabled"];
    v4->_fastCapturePrioritizationEnabled = [a3 decodeBoolForKey:@"fastCapturePrioritizationEnabled"];
    v4->_captureTimePhotosCurationSupported = [a3 decodeBoolForKey:@"captureTimePhotosCurationSupported"];
    v4->_depthDataType = [a3 decodeInt32ForKey:@"depthDataType"];
    v4->_pearlModuleType = [a3 decodeInt32ForKey:@"pearlModuleType"];
    v4->_sifrStillImageCaptureEnabledIfAvailable = [a3 decodeBoolForKey:@"sifrStillImageCaptureEnabledIfAvailable"];
    [a3 decodeFloatForKey:@"gainMapMainImageDownscalingFactor"];
    v4->_gainMapMainImageDownscalingFactor = v11;
    [a3 decodeFloatForKey:@"ubInferenceMainImageDownscalingFactor"];
    v4->_ubInferenceMainImageDownscalingFactor = v12;
    v13 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v24[2] = objc_opt_class();
    v24[3] = objc_opt_class();
    v24[4] = objc_opt_class();
    v4->_enabledSemanticSegmentationMatteURNs = [a3 decodeObjectOfClasses:objc_msgSend(v13 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v24, 5)), @"enabledSemanticSegmentationMatteURNs"}];
    v14 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v23[2] = objc_opt_class();
    v23[3] = objc_opt_class();
    v23[4] = objc_opt_class();
    v4->_supportedSemanticSegmentationMatteURNs = [a3 decodeObjectOfClasses:objc_msgSend(v14 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v23, 5)), @"supportedSemanticSegmentationMatteURNs"}];
    v4->_maxLossyCompressionLevel = [a3 decodeInt32ForKey:@"maxLossyCompressionLevel"];
    v15 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:5];
    v4->_cameraInfoByPortType = [a3 decodeObjectOfClasses:objc_msgSend(v15 forKey:{"setWithArray:", v16, v18, v19, v20, v21), @"cameraInfoByPortType"}];
    v4->_highQualityPhotoCaptureForVideoFormatEnabled = [a3 decodeBoolForKey:@"highQualityPhotoCaptureForVideoFormatEnabled"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration;
  [(FigCaptureBaseStillImageSinkPipelineConfiguration *)&v7 encodeWithCoder:?];
  [a3 encodeInt32:self->_stillImageSinkPipelineProcessingMode forKey:@"stillImageSinkPipelineProcessingMode"];
  [a3 encodeInt32:self->_pipelineStagePriority forKey:@"pipelineStagePriority"];
  [a3 encodeInt32:self->_inferencePriority forKey:@"inferencePriority"];
  [a3 encodeInt32:self->_deviceType forKey:@"deviceType"];
  [a3 encodeInt32:self->_rawSensorDimensions.height forKey:@"rawSensorDimensionsHeight"];
  [a3 encodeInt32:self->_rawSensorDimensions.width forKey:@"rawSensorDimensionsWidth"];
  [a3 encodeInt32:self->_outputStillImageDimensions.width forKey:@"outputStillImageDimensionsWidth"];
  [a3 encodeInt32:self->_outputStillImageDimensions.height forKey:@"outputStillImageDimensionsHeight"];
  [a3 encodeObject:self->_sensorIDStringsByPortType forKey:@"sensorIDStringsByPortType"];
  [a3 encodeObject:self->_baseZoomFactorsByPortType forKey:@"baseZoomFactorsByPortType"];
  [a3 encodeInt32:self->_redEyeReductionVersion forKey:@"redEyeReductionVersion"];
  [a3 encodeInt32:self->_semanticRenderingVersion forKey:@"semanticRenderingVersion"];
  [a3 encodeInt32:self->_semanticDevelopmentVersion forKey:@"semanticDevelopmentVersion"];
  [a3 encodeBool:self->_semanticStyleRenderingEnabled forKey:@"semanticStyleRenderingEnabled"];
  [a3 encodeObject:self->_portTypesWithGeometricDistortionCorrectionEnabled forKey:@"portTypesWithGeometricDistortionCorrectionEnabled"];
  [a3 encodeObject:self->_portTypesWithIntelligentDistortionCorrectionEnabled forKey:@"portTypesWithIntelligentDistortionCorrectionEnabled"];
  [a3 encodeInt32:self->_dcProcessorVersion forKey:@"dcProcessorVersion"];
  [a3 encodeBool:self->_gdcInDCProcessorSupported forKey:@"gdcInDCProcessorSupported"];
  [a3 encodeInt32:self->_gdcInDCProcessorOutputCropDimensions.width forKey:@"gdcInDCProcessorOutputCropDimensionsWidth"];
  [a3 encodeInt32:self->_gdcInDCProcessorOutputCropDimensions.height forKey:@"gdcInDCProcessorOutputCropDimensionsHeight"];
  [a3 encodeInt32:self->_greenGhostMitigationVersion forKey:@"greenGhostMitigationVersion"];
  [a3 encodeInt32:self->_deepZoomVersion forKey:@"deepZoomVersion"];
  [a3 encodeInt32:self->_demosaicedRawPixelFormat forKey:@"demosaicedRawPixelFormat"];
  [a3 encodeObject:self->_rawColorCalibrationsByPortType forKey:@"rawColorCalibrationsByPortType"];
  [a3 encodeObject:self->_rawLensShadingCorrectionCoefficientsByPortType forKey:@"rawLensShadingCorrectionCoefficientsByPortType"];
  [a3 encodeBool:self->_deferredProcessingSupported forKey:@"deferredProcessingSupported"];
  [a3 encodeBool:self->_adjustablePortraitLightingEffectStrengthSupported forKey:@"adjustablePortraitLightingEffectStrengthSupported"];
  [a3 encodeBool:self->_deepFusionSupported forKey:@"deepFusionSupported"];
  [a3 encodeInt32:self->_deepFusionEnhancedResolutionDimensions.width forKey:@"deepFusionEnhancedResolutionDimensionsWidth"];
  [a3 encodeInt32:self->_deepFusionEnhancedResolutionDimensions.height forKey:@"deepFusionEnhancedResolutionDimensionsHeight"];
  [a3 encodeBool:self->_learnedNRSupported forKey:@"learnedNRSupported"];
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
  [a3 encodeBool:self->_highQualityPhotoCaptureForVideoFormatEnabled forKey:@"highQualityPhotoCaptureForVideoFormatEnabled"];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
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
  v9 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)&v59 isEqual:a3];
  if (v9)
  {
    v10 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self stillImageSinkPipelineProcessingMode];
    if (v10 != [a3 stillImageSinkPipelineProcessingMode])
    {
      goto LABEL_21;
    }

    v11 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self pipelineStagePriority];
    if (v11 != [a3 pipelineStagePriority])
    {
      goto LABEL_21;
    }

    v12 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self inferencePriority];
    if (v12 != [a3 inferencePriority])
    {
      goto LABEL_21;
    }

    v13 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self deviceType];
    if (v13 != [a3 deviceType])
    {
      goto LABEL_21;
    }

    v14 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self rawSensorDimensions];
    if (v14 != [a3 rawSensorDimensions])
    {
      goto LABEL_21;
    }

    v15 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self rawSensorDimensions];
    if (v15 != [a3 rawSensorDimensions])
    {
      goto LABEL_21;
    }

    v16 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self rawSensorDimensions];
    if (([a3 rawSensorDimensions] ^ *&v16) >> 32)
    {
      goto LABEL_21;
    }

    v17 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self outputStillImageDimensions];
    if (v17 != [a3 outputStillImageDimensions])
    {
      goto LABEL_21;
    }

    v18 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self outputStillImageDimensions];
    if (([a3 outputStillImageDimensions] ^ *&v18) >> 32)
    {
      goto LABEL_21;
    }

    v19 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self sensorIDStringsByPortType];
    if (v19 == [a3 sensorIDStringsByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration sensorIDStringsByPortType](self, "sensorIDStringsByPortType"), "isEqual:", objc_msgSend(a3, "sensorIDStringsByPortType"))) != 0)
    {
      v20 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self baseZoomFactorsByPortType];
      if (v20 == [a3 baseZoomFactorsByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration baseZoomFactorsByPortType](self, "baseZoomFactorsByPortType"), "isEqual:", objc_msgSend(a3, "baseZoomFactorsByPortType"))) != 0)
      {
        v21 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self redEyeReductionVersion];
        if (v21 != [a3 redEyeReductionVersion])
        {
          goto LABEL_21;
        }

        v22 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self semanticRenderingVersion];
        if (v22 != [a3 semanticRenderingVersion])
        {
          goto LABEL_21;
        }

        v23 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self semanticDevelopmentVersion];
        if (v23 != [a3 semanticDevelopmentVersion])
        {
          goto LABEL_21;
        }

        v24 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self semanticStyleRenderingEnabled];
        if (v24 != [a3 semanticStyleRenderingEnabled])
        {
          goto LABEL_21;
        }

        v25 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self portTypesWithGeometricDistortionCorrectionEnabled];
        if (v25 == [a3 portTypesWithGeometricDistortionCorrectionEnabled] || (v9 = -[NSArray isEqual:](-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration portTypesWithGeometricDistortionCorrectionEnabled](self, "portTypesWithGeometricDistortionCorrectionEnabled"), "isEqual:", objc_msgSend(a3, "portTypesWithGeometricDistortionCorrectionEnabled"))) != 0)
        {
          v26 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self portTypesWithIntelligentDistortionCorrectionEnabled];
          if (v26 == [a3 portTypesWithIntelligentDistortionCorrectionEnabled] || (v9 = -[NSArray isEqual:](-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration portTypesWithIntelligentDistortionCorrectionEnabled](self, "portTypesWithIntelligentDistortionCorrectionEnabled"), "isEqual:", objc_msgSend(a3, "portTypesWithIntelligentDistortionCorrectionEnabled"))) != 0)
          {
            v27 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self dcProcessorVersion];
            if (v27 != [a3 dcProcessorVersion])
            {
              goto LABEL_21;
            }

            v28 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self gdcInDCProcessorOutputCropDimensions];
            if (v28 != [a3 gdcInDCProcessorOutputCropDimensions])
            {
              goto LABEL_21;
            }

            v29 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self gdcInDCProcessorOutputCropDimensions];
            if (([a3 gdcInDCProcessorOutputCropDimensions] ^ *&v29) >> 32)
            {
              goto LABEL_21;
            }

            v30 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self greenGhostMitigationVersion];
            if (v30 != [a3 greenGhostMitigationVersion])
            {
              goto LABEL_21;
            }

            v31 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self deepZoomVersion];
            if (v31 != [a3 deepZoomVersion])
            {
              goto LABEL_21;
            }

            v32 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self demosaicedRawPixelFormat];
            if (v32 != [a3 demosaicedRawPixelFormat])
            {
              goto LABEL_21;
            }

            v33 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self rawColorCalibrationsByPortType];
            if (v33 == [a3 rawColorCalibrationsByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration rawColorCalibrationsByPortType](self, "rawColorCalibrationsByPortType"), "isEqual:", objc_msgSend(a3, "rawColorCalibrationsByPortType"))) != 0)
            {
              v34 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self rawLensShadingCorrectionCoefficientsByPortType];
              if (v34 == [a3 rawLensShadingCorrectionCoefficientsByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration rawLensShadingCorrectionCoefficientsByPortType](self, "rawLensShadingCorrectionCoefficientsByPortType"), "isEqual:", objc_msgSend(a3, "rawLensShadingCorrectionCoefficientsByPortType"))) != 0)
              {
                v35 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self deferredProcessingSupported];
                if (v35 != [a3 deferredProcessingSupported])
                {
                  goto LABEL_21;
                }

                v36 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self adjustablePortraitLightingEffectStrengthSupported];
                if (v36 != [a3 adjustablePortraitLightingEffectStrengthSupported])
                {
                  goto LABEL_21;
                }

                v37 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self deepFusionSupported];
                if (v37 != [a3 deepFusionSupported])
                {
                  goto LABEL_21;
                }

                v38 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self deepFusionEnhancedResolutionDimensions];
                if (v38 != [a3 deepFusionEnhancedResolutionDimensions])
                {
                  goto LABEL_21;
                }

                v39 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self learnedNRSupported];
                if (v39 != [a3 learnedNRSupported])
                {
                  goto LABEL_21;
                }

                v40 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self responsiveShutterSupported];
                if (v40 != [a3 responsiveShutterSupported])
                {
                  goto LABEL_21;
                }

                v41 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self responsiveShutterEnabled];
                if (v41 != [a3 responsiveShutterEnabled])
                {
                  goto LABEL_21;
                }

                v42 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self fastCapturePrioritizationEnabled];
                if (v42 != [a3 fastCapturePrioritizationEnabled])
                {
                  goto LABEL_21;
                }

                v43 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self captureTimePhotosCurationSupported];
                if (v43 != [a3 captureTimePhotosCurationSupported])
                {
                  goto LABEL_21;
                }

                v44 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self depthDataType];
                if (v44 != [a3 depthDataType])
                {
                  goto LABEL_21;
                }

                v45 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self pearlModuleType];
                if (v45 != [a3 pearlModuleType])
                {
                  goto LABEL_21;
                }

                v46 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self sifrStillImageCaptureEnabledIfAvailable];
                if (v46 != [a3 sifrStillImageCaptureEnabledIfAvailable])
                {
                  goto LABEL_21;
                }

                [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self gainMapMainImageDownscalingFactor];
                v48 = v47;
                [a3 gainMapMainImageDownscalingFactor];
                if (v48 != v49)
                {
                  goto LABEL_21;
                }

                [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self ubInferenceMainImageDownscalingFactor];
                v51 = v50;
                [a3 ubInferenceMainImageDownscalingFactor];
                if (v51 != v52)
                {
                  goto LABEL_21;
                }

                v53 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self enabledSemanticSegmentationMatteURNs];
                if (v53 == [a3 enabledSemanticSegmentationMatteURNs] || (v9 = -[NSArray isEqual:](-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration enabledSemanticSegmentationMatteURNs](self, "enabledSemanticSegmentationMatteURNs"), "isEqual:", objc_msgSend(a3, "enabledSemanticSegmentationMatteURNs"))) != 0)
                {
                  v54 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self supportedSemanticSegmentationMatteURNs];
                  if (v54 == [a3 supportedSemanticSegmentationMatteURNs] || (v9 = -[NSArray isEqual:](-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration supportedSemanticSegmentationMatteURNs](self, "supportedSemanticSegmentationMatteURNs"), "isEqual:", objc_msgSend(a3, "supportedSemanticSegmentationMatteURNs"))) != 0)
                  {
                    v55 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self maxLossyCompressionLevel];
                    if (v55 == [a3 maxLossyCompressionLevel])
                    {
                      v56 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self cameraInfoByPortType];
                      if (v56 == [a3 cameraInfoByPortType] || (v9 = -[NSDictionary isEqual:](-[FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration cameraInfoByPortType](self, "cameraInfoByPortType"), "isEqual:", objc_msgSend(a3, "cameraInfoByPortType"))) != 0)
                      {
                        v57 = [(FigCaptureStillImageUnifiedBracketingSinkPipelineConfiguration *)self highQualityPhotoCaptureForVideoFormatEnabled];
                        LOBYTE(v9) = v57 ^ [a3 highQualityPhotoCaptureForVideoFormatEnabled] ^ 1;
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