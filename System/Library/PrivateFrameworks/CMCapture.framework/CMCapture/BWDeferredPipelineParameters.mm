@interface BWDeferredPipelineParameters
- (BOOL)areCompatibleWith:(id)with;
- (BOOL)isEqual:(id)equal;
- (BWDeferredPipelineParameters)initWithCoder:(id)coder;
- (CGPoint)sensorCenterOffset;
- (char)_initWithLegacyCaptureSettings:(void *)settings;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BWDeferredPipelineParameters

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeferredPipelineParameters;
  [(BWDeferredPipelineParameters *)&v3 dealloc];
}

- (BWDeferredPipelineParameters)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = BWDeferredPipelineParameters;
  v4 = [(BWDeferredPipelineParameters *)&v12 init];
  if (v4)
  {
    v4->_rawSensorDimensions.width = [coder decodeInt32ForKey:@"rawSensorDimensionsWidth"];
    v4->_rawSensorDimensions.height = [coder decodeInt32ForKey:@"rawSensorDimensionsHeight"];
    v5 = MEMORY[0x1E695DFD8];
    v11[0] = objc_opt_class();
    v11[1] = objc_opt_class();
    v11[2] = objc_opt_class();
    v4->_dimensionsByResolutionFlavorByPortType = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 3)), @"dimensionsByResolutionFlavorByPortType"}];
    v4->_nrfVersion = [coder decodeInt32ForKey:@"nrfVersion"];
    v4->_noiseReductionAndFusionScheme = [coder decodeInt32ForKey:@"noiseReductionAndFusionScheme"];
    v4->_distortionCorrectionVersion = [coder decodeInt32ForKey:@"distortionCorrectionVersion"];
    v4->_intelligentDistortionCorrectionEnabled = [coder decodeBoolForKey:@"intelligentDistortionCorrectionEnabled"];
    v4->_geometricDistortionCorrectionEnabled = [coder decodeBoolForKey:@"geometricDistortionCorrectionEnabled"];
    v4->_dcProcessingWithDepthSupported = [coder decodeBoolForKey:@"dcProcessingWithDepthSupported"];
    v4->_stillImageGDCSourceMode = [coder decodeInt32ForKey:@"stillImageGDCSourceMode"];
    v4->_deepZoomVersion = [coder decodeInt32ForKey:@"deepZoomVersion"];
    v4->_deepZoomMode = [coder decodeInt32ForKey:@"deepZoomMode"];
    v4->_semanticRenderingVersion = [coder decodeInt32ForKey:@"semanticRenderingVersion"];
    v4->_smartStyleRenderingVersion = [coder decodeInt32ForKey:@"SmartStyleRenderingVersion"];
    v4->_smartStyleRenderingEnabled = [coder decodeBoolForKey:@"SmartStyleRenderingEnabled"];
    v4->_smartStyleReversibilityEnabled = [coder decodeBoolForKey:@"SmartStyleReversibilityEnabled"];
    v4->_generateInferencesForSemanticProcessingIfNeeded = [coder decodeBoolForKey:@"generateInferencesForSemanticProcessingIfNeeded"];
    v4->_quadraProcessingSupportEnabled = [coder decodeBoolForKey:@"quadraProcessingSupportEnabled"];
    v4->_canProcessEnhancedResolution = [coder decodeBoolForKey:@"canProcessEnhancedResolution"];
    v4->_continuousZoomWithDepthSupported = [coder decodeBoolForKey:@"continuousZoomWithDepthSupported"];
    v4->_depthDataType = [coder decodeInt32ForKey:@"depthDataType"];
    v4->_depthDataDimensions.width = [coder decodeInt32ForKey:@"depthDataDimensionsWidth"];
    v4->_depthDataDimensions.height = [coder decodeInt32ForKey:@"depthDataDimensionsHeight"];
    v4->_pearlModuleType = [coder decodeInt32ForKey:@"PearlModuleType"];
    v4->_sfhrMode = [coder decodeInt32ForKey:@"sfhrMode"];
    v6 = MEMORY[0x1E695DFD8];
    v10[0] = objc_opt_class();
    v10[1] = objc_opt_class();
    v10[2] = objc_opt_class();
    if (!CGPointMakeWithDictionaryRepresentation([coder decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 3)), @"sensorCenterOffset"}], &v4->_sensorCenterOffset))
    {
      v4->_sensorCenterOffset = *MEMORY[0x1E695EFF8];
    }

    v4->_cameraSensorOrientationCompensationDegreesCW = [coder decodeInt32ForKey:@"cameraSensorOrientationCompensationDegreesCW"];
    if (!v4->_dimensionsByResolutionFlavorByPortType && [coder containsValueForKey:@"dimensionsByQSubResolutionFlavorByPortType"])
    {
      v7 = MEMORY[0x1E695DFD8];
      v9[0] = objc_opt_class();
      v9[1] = objc_opt_class();
      v9[2] = objc_opt_class();
      v4->_dimensionsByResolutionFlavorByPortType = [coder decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v9, 3)), @"dimensionsByQSubResolutionFlavorByPortType"}];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt32:self->_rawSensorDimensions.width forKey:@"rawSensorDimensionsWidth"];
  [coder encodeInt32:self->_rawSensorDimensions.height forKey:@"rawSensorDimensionsHeight"];
  [coder encodeObject:self->_dimensionsByResolutionFlavorByPortType forKey:@"dimensionsByResolutionFlavorByPortType"];
  [coder encodeInt32:self->_nrfVersion forKey:@"nrfVersion"];
  [coder encodeInt32:self->_noiseReductionAndFusionScheme forKey:@"noiseReductionAndFusionScheme"];
  [coder encodeInt32:self->_distortionCorrectionVersion forKey:@"distortionCorrectionVersion"];
  [coder encodeBool:self->_intelligentDistortionCorrectionEnabled forKey:@"intelligentDistortionCorrectionEnabled"];
  [coder encodeBool:self->_geometricDistortionCorrectionEnabled forKey:@"geometricDistortionCorrectionEnabled"];
  [coder encodeBool:self->_dcProcessingWithDepthSupported forKey:@"dcProcessingWithDepthSupported"];
  [coder encodeInt32:self->_stillImageGDCSourceMode forKey:@"stillImageGDCSourceMode"];
  [coder encodeInt32:self->_deepZoomVersion forKey:@"deepZoomVersion"];
  [coder encodeInt32:self->_deepZoomMode forKey:@"deepZoomMode"];
  [coder encodeInt32:self->_semanticRenderingVersion forKey:@"semanticRenderingVersion"];
  [coder encodeInt32:self->_smartStyleRenderingVersion forKey:@"SmartStyleRenderingVersion"];
  [coder encodeBool:self->_smartStyleRenderingEnabled forKey:@"SmartStyleRenderingEnabled"];
  [coder encodeBool:self->_smartStyleReversibilityEnabled forKey:@"SmartStyleReversibilityEnabled"];
  [coder encodeBool:self->_generateInferencesForSemanticProcessingIfNeeded forKey:@"generateInferencesForSemanticProcessingIfNeeded"];
  [coder encodeBool:self->_quadraProcessingSupportEnabled forKey:@"quadraProcessingSupportEnabled"];
  [coder encodeBool:self->_canProcessEnhancedResolution forKey:@"canProcessEnhancedResolution"];
  [coder encodeBool:self->_continuousZoomWithDepthSupported forKey:@"continuousZoomWithDepthSupported"];
  [coder encodeInt32:self->_depthDataType forKey:@"depthDataType"];
  [coder encodeInt32:self->_depthDataDimensions.width forKey:@"depthDataDimensionsWidth"];
  [coder encodeInt32:self->_depthDataDimensions.height forKey:@"depthDataDimensionsHeight"];
  [coder encodeInt32:self->_pearlModuleType forKey:@"PearlModuleType"];
  [coder encodeInt32:self->_sfhrMode forKey:@"sfhrMode"];
  [coder encodeObject:CGPointCreateDictionaryRepresentation(self->_sensorCenterOffset) forKey:@"sensorCenterOffset"];
  cameraSensorOrientationCompensationDegreesCW = self->_cameraSensorOrientationCompensationDegreesCW;

  [coder encodeInt32:cameraSensorOrientationCompensationDegreesCW forKey:@"cameraSensorOrientationCompensationDegreesCW"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setRawSensorDimensions:*&self->_rawSensorDimensions];
  [v4 setDimensionsByResolutionFlavorByPortType:self->_dimensionsByResolutionFlavorByPortType];
  [v4 setNrfVersion:self->_nrfVersion];
  [v4 setNoiseReductionAndFusionScheme:self->_noiseReductionAndFusionScheme];
  [v4 setDistortionCorrectionVersion:self->_distortionCorrectionVersion];
  [v4 setIntelligentDistortionCorrectionEnabled:self->_intelligentDistortionCorrectionEnabled];
  [v4 setGeometricDistortionCorrectionEnabled:self->_geometricDistortionCorrectionEnabled];
  [v4 setDcProcessingWithDepthSupported:self->_dcProcessingWithDepthSupported];
  [v4 setStillImageGDCSourceMode:self->_stillImageGDCSourceMode];
  [v4 setDeepZoomVersion:self->_deepZoomVersion];
  [v4 setDeepZoomMode:self->_deepZoomMode];
  [v4 setSemanticRenderingVersion:self->_semanticRenderingVersion];
  [v4 setSmartStyleRenderingVersion:self->_smartStyleRenderingVersion];
  [v4 setSmartStyleRenderingEnabled:self->_smartStyleRenderingEnabled];
  [v4 setSmartStyleReversibilityEnabled:self->_smartStyleReversibilityEnabled];
  [v4 setGenerateInferencesForSemanticProcessingIfNeeded:self->_generateInferencesForSemanticProcessingIfNeeded];
  [v4 setQuadraProcessingSupportEnabled:self->_quadraProcessingSupportEnabled];
  [v4 setCanProcessEnhancedResolution:self->_canProcessEnhancedResolution];
  [v4 setContinuousZoomWithDepthSupported:self->_continuousZoomWithDepthSupported];
  [v4 setDepthDataType:self->_depthDataType];
  [v4 setDepthDataDimensions:*&self->_depthDataDimensions];
  [v4 setPearlModuleType:self->_pearlModuleType];
  [v4 setSfhrMode:self->_sfhrMode];
  [v4 setCameraSensorOrientationCompensationDegreesCW:self->_cameraSensorOrientationCompensationDegreesCW];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v13) = 1;
    return v13;
  }

  v37 = v5;
  v38 = v4;
  v39 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_28;
  }

  rawSensorDimensions = [(BWDeferredPipelineParameters *)self rawSensorDimensions];
  if (rawSensorDimensions != [equal rawSensorDimensions])
  {
    goto LABEL_28;
  }

  dimensionsByResolutionFlavorByPortType = [(BWDeferredPipelineParameters *)self dimensionsByResolutionFlavorByPortType];
  if (dimensionsByResolutionFlavorByPortType == [equal dimensionsByResolutionFlavorByPortType] || (v13 = -[NSDictionary isEqual:](-[BWDeferredPipelineParameters dimensionsByResolutionFlavorByPortType](self, "dimensionsByResolutionFlavorByPortType"), "isEqual:", objc_msgSend(equal, "dimensionsByResolutionFlavorByPortType"))) != 0)
  {
    v14 = [(BWDeferredPipelineParameters *)self nrfVersion:v6];
    if (v14 == [equal nrfVersion])
    {
      noiseReductionAndFusionScheme = [(BWDeferredPipelineParameters *)self noiseReductionAndFusionScheme];
      if (noiseReductionAndFusionScheme == [equal noiseReductionAndFusionScheme])
      {
        distortionCorrectionVersion = [(BWDeferredPipelineParameters *)self distortionCorrectionVersion];
        if (distortionCorrectionVersion == [equal distortionCorrectionVersion])
        {
          intelligentDistortionCorrectionEnabled = [(BWDeferredPipelineParameters *)self intelligentDistortionCorrectionEnabled];
          if (intelligentDistortionCorrectionEnabled == [equal intelligentDistortionCorrectionEnabled])
          {
            geometricDistortionCorrectionEnabled = [(BWDeferredPipelineParameters *)self geometricDistortionCorrectionEnabled];
            if (geometricDistortionCorrectionEnabled == [equal geometricDistortionCorrectionEnabled])
            {
              dcProcessingWithDepthSupported = [(BWDeferredPipelineParameters *)self dcProcessingWithDepthSupported];
              if (dcProcessingWithDepthSupported == [equal dcProcessingWithDepthSupported])
              {
                stillImageGDCSourceMode = [(BWDeferredPipelineParameters *)self stillImageGDCSourceMode];
                if (stillImageGDCSourceMode == [equal stillImageGDCSourceMode])
                {
                  deepZoomVersion = [(BWDeferredPipelineParameters *)self deepZoomVersion];
                  if (deepZoomVersion == [equal deepZoomVersion])
                  {
                    deepZoomMode = [(BWDeferredPipelineParameters *)self deepZoomMode];
                    if (deepZoomMode == [equal deepZoomMode])
                    {
                      semanticRenderingVersion = [(BWDeferredPipelineParameters *)self semanticRenderingVersion];
                      if (semanticRenderingVersion == [equal semanticRenderingVersion])
                      {
                        smartStyleRenderingVersion = [(BWDeferredPipelineParameters *)self smartStyleRenderingVersion];
                        if (smartStyleRenderingVersion == [equal smartStyleRenderingVersion])
                        {
                          smartStyleRenderingEnabled = [(BWDeferredPipelineParameters *)self smartStyleRenderingEnabled];
                          if (smartStyleRenderingEnabled == [equal smartStyleRenderingEnabled])
                          {
                            smartStyleReversibilityEnabled = [(BWDeferredPipelineParameters *)self smartStyleReversibilityEnabled];
                            if (smartStyleReversibilityEnabled == [equal smartStyleReversibilityEnabled])
                            {
                              generateInferencesForSemanticProcessingIfNeeded = [(BWDeferredPipelineParameters *)self generateInferencesForSemanticProcessingIfNeeded];
                              if (generateInferencesForSemanticProcessingIfNeeded == [equal generateInferencesForSemanticProcessingIfNeeded])
                              {
                                quadraProcessingSupportEnabled = [(BWDeferredPipelineParameters *)self quadraProcessingSupportEnabled];
                                if (quadraProcessingSupportEnabled == [equal quadraProcessingSupportEnabled])
                                {
                                  canProcessEnhancedResolution = [(BWDeferredPipelineParameters *)self canProcessEnhancedResolution];
                                  if (canProcessEnhancedResolution == [equal canProcessEnhancedResolution])
                                  {
                                    continuousZoomWithDepthSupported = [(BWDeferredPipelineParameters *)self continuousZoomWithDepthSupported];
                                    if (continuousZoomWithDepthSupported == [equal continuousZoomWithDepthSupported])
                                    {
                                      depthDataType = [(BWDeferredPipelineParameters *)self depthDataType];
                                      if (depthDataType == [equal depthDataType])
                                      {
                                        depthDataDimensions = [(BWDeferredPipelineParameters *)self depthDataDimensions];
                                        if (depthDataDimensions == [equal depthDataDimensions])
                                        {
                                          pearlModuleType = [(BWDeferredPipelineParameters *)self pearlModuleType];
                                          if (pearlModuleType == [equal pearlModuleType])
                                          {
                                            sfhrMode = [(BWDeferredPipelineParameters *)self sfhrMode];
                                            if (sfhrMode == [equal sfhrMode])
                                            {
                                              cameraSensorOrientationCompensationDegreesCW = [(BWDeferredPipelineParameters *)self cameraSensorOrientationCompensationDegreesCW];
                                              LOBYTE(v13) = cameraSensorOrientationCompensationDegreesCW == [equal cameraSensorOrientationCompensationDegreesCW];
                                              return v13;
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
            }
          }
        }
      }
    }

LABEL_28:
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (BOOL)areCompatibleWith:(id)with
{
  if (with == self)
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  rawSensorDimensions = [(BWDeferredPipelineParameters *)self rawSensorDimensions];
  if (rawSensorDimensions != [with rawSensorDimensions])
  {
    goto LABEL_39;
  }

  dimensionsByResolutionFlavorByPortType = [(BWDeferredPipelineParameters *)self dimensionsByResolutionFlavorByPortType];
  if (dimensionsByResolutionFlavorByPortType == [with dimensionsByResolutionFlavorByPortType] || (v7 = -[NSDictionary isEqual:](-[BWDeferredPipelineParameters dimensionsByResolutionFlavorByPortType](self, "dimensionsByResolutionFlavorByPortType"), "isEqual:", objc_msgSend(with, "dimensionsByResolutionFlavorByPortType"))) != 0)
  {
    nrfVersion = [(BWDeferredPipelineParameters *)self nrfVersion];
    if (nrfVersion != [with nrfVersion])
    {
      goto LABEL_39;
    }

    noiseReductionAndFusionScheme = [(BWDeferredPipelineParameters *)self noiseReductionAndFusionScheme];
    if (noiseReductionAndFusionScheme != [with noiseReductionAndFusionScheme])
    {
      goto LABEL_39;
    }

    distortionCorrectionVersion = [(BWDeferredPipelineParameters *)self distortionCorrectionVersion];
    if (distortionCorrectionVersion != [with distortionCorrectionVersion])
    {
      goto LABEL_39;
    }

    stillImageGDCSourceMode = [(BWDeferredPipelineParameters *)self stillImageGDCSourceMode];
    if (stillImageGDCSourceMode != [with stillImageGDCSourceMode])
    {
      goto LABEL_39;
    }

    semanticRenderingVersion = [(BWDeferredPipelineParameters *)self semanticRenderingVersion];
    if (semanticRenderingVersion != [with semanticRenderingVersion])
    {
      goto LABEL_39;
    }

    if ((![with intelligentDistortionCorrectionEnabled] || (v7 = -[BWDeferredPipelineParameters intelligentDistortionCorrectionEnabled](self, "intelligentDistortionCorrectionEnabled")) != 0) && (!objc_msgSend(with, "geometricDistortionCorrectionEnabled") || (v7 = -[BWDeferredPipelineParameters geometricDistortionCorrectionEnabled](self, "geometricDistortionCorrectionEnabled")) != 0) && (!objc_msgSend(with, "dcProcessingWithDepthSupported") || (v7 = -[BWDeferredPipelineParameters dcProcessingWithDepthSupported](self, "dcProcessingWithDepthSupported")) != 0) && (!objc_msgSend(with, "continuousZoomWithDepthSupported") || (v7 = -[BWDeferredPipelineParameters continuousZoomWithDepthSupported](self, "continuousZoomWithDepthSupported")) != 0))
    {
      depthDataType = [(BWDeferredPipelineParameters *)self depthDataType];
      if (depthDataType != [with depthDataType])
      {
        goto LABEL_39;
      }

      depthDataDimensions = [(BWDeferredPipelineParameters *)self depthDataDimensions];
      if (depthDataDimensions != [with depthDataDimensions])
      {
        goto LABEL_39;
      }

      if (![with pearlModuleType] || (v7 = -[BWDeferredPipelineParameters pearlModuleType](self, "pearlModuleType")) != 0)
      {
        if ([with deepZoomMode])
        {
          deepZoomVersion = [(BWDeferredPipelineParameters *)self deepZoomVersion];
          if (deepZoomVersion != [with deepZoomVersion])
          {
            goto LABEL_39;
          }

          deepZoomMode = [(BWDeferredPipelineParameters *)self deepZoomMode];
          if (deepZoomMode != [with deepZoomMode])
          {
            goto LABEL_39;
          }
        }

        if (![with smartStyleRenderingVersion])
        {
          goto LABEL_45;
        }

        smartStyleRenderingVersion = [(BWDeferredPipelineParameters *)self smartStyleRenderingVersion];
        if (smartStyleRenderingVersion != [with smartStyleRenderingVersion])
        {
          goto LABEL_39;
        }

        smartStyleRenderingEnabled = [(BWDeferredPipelineParameters *)self smartStyleRenderingEnabled];
        if (smartStyleRenderingEnabled != [with smartStyleRenderingEnabled])
        {
          goto LABEL_39;
        }

        if (![with smartStyleReversibilityEnabled] || (v7 = -[BWDeferredPipelineParameters smartStyleReversibilityEnabled](self, "smartStyleReversibilityEnabled")) != 0)
        {
LABEL_45:
          if ((![with generateInferencesForSemanticProcessingIfNeeded] || (v7 = -[BWDeferredPipelineParameters generateInferencesForSemanticProcessingIfNeeded](self, "generateInferencesForSemanticProcessingIfNeeded")) != 0) && (!objc_msgSend(with, "quadraProcessingSupportEnabled") || (v7 = -[BWDeferredPipelineParameters quadraProcessingSupportEnabled](self, "quadraProcessingSupportEnabled")) != 0) && (!objc_msgSend(with, "canProcessEnhancedResolution") || (v7 = -[BWDeferredPipelineParameters canProcessEnhancedResolution](self, "canProcessEnhancedResolution")) != 0))
          {
            if (![with sfhrMode] || (v19 = -[BWDeferredPipelineParameters sfhrMode](self, "sfhrMode"), v19 == objc_msgSend(with, "sfhrMode")))
            {
              LOBYTE(v7) = 1;
              return v7;
            }

LABEL_39:
            LOBYTE(v7) = 0;
          }
        }
      }
    }
  }

  return v7;
}

- (id)description
{
  v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rawSensorDimensions:%@", BWStringFromDimensions()];
  dimensionsByResolutionFlavorByPortType = self->_dimensionsByResolutionFlavorByPortType;
  if (dimensionsByResolutionFlavorByPortType)
  {
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@", dimensionsByResolutionFlavorByPortType.count:%lu", -[NSDictionary count](dimensionsByResolutionFlavorByPortType, "count")];
  }

  else
  {
    v39 = &stru_1F216A3D0;
  }

  v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@", nrfVersion:%d", self->_nrfVersion];
  v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@", noiseReductionAndFusionScheme:%d", self->_noiseReductionAndFusionScheme];
  if (self->_distortionCorrectionVersion)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@", dcProcessorVersion:%d", self->_distortionCorrectionVersion];
  }

  else
  {
    v36 = &stru_1F216A3D0;
  }

  intelligentDistortionCorrectionEnabled = self->_intelligentDistortionCorrectionEnabled;
  geometricDistortionCorrectionEnabled = self->_geometricDistortionCorrectionEnabled;
  dcProcessingWithDepthSupported = self->_dcProcessingWithDepthSupported;
  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@", gdcSourceMode:%d", self->_stillImageGDCSourceMode];
  if (self->_deepZoomVersion)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@", deepZoomVersion:%d", self->_deepZoomVersion];
  }

  else
  {
    v33 = &stru_1F216A3D0;
  }

  if (self->_deepZoomMode)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@", deepZoomMode:%d", self->_deepZoomMode];
  }

  else
  {
    v32 = &stru_1F216A3D0;
  }

  if (self->_semanticRenderingVersion)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@", semanticRenderingVersion:%d", self->_semanticRenderingVersion];
  }

  else
  {
    v31 = &stru_1F216A3D0;
  }

  if (self->_smartStyleRenderingVersion)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@", smartStyleRenderingVersion:%d", self->_smartStyleRenderingVersion];
  }

  else
  {
    v30 = &stru_1F216A3D0;
  }

  if (self->_smartStyleReversibilityEnabled)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@", smartStyleReversibilityEnabled:%d", 1];
  }

  else
  {
    v29 = &stru_1F216A3D0;
  }

  generateInferencesForSemanticProcessingIfNeeded = self->_generateInferencesForSemanticProcessingIfNeeded;
  quadraProcessingSupportEnabled = self->_quadraProcessingSupportEnabled;
  canProcessEnhancedResolution = self->_canProcessEnhancedResolution;
  continuousZoomWithDepthSupported = self->_continuousZoomWithDepthSupported;
  depthDataType = self->_depthDataType;
  if (depthDataType)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@", depthDataType:%@", BWPhotoEncoderStringFromEncodingScheme(depthDataType)];
  }

  else
  {
    v27 = &stru_1F216A3D0;
  }

  depthDataDimensions = self->_depthDataDimensions;
  v11 = &stru_1F216A3D0;
  if (depthDataDimensions.width >= 1 && depthDataDimensions.height >= 1)
  {
    v12 = dcProcessingWithDepthSupported;
    v13 = MEMORY[0x1E696AEC0];
    v24 = BWStringFromDimensions();
    v14 = v13;
    dcProcessingWithDepthSupported = v12;
    v11 = [v14 stringWithFormat:@", depthDataDimensions:%@", v24];
  }

  v26 = v11;
  if (self->_pearlModuleType)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@", pearlModuleType %d", self->_pearlModuleType];
  }

  else
  {
    v25 = &stru_1F216A3D0;
  }

  v15 = &stru_1F216A3D0;
  if (self->_cameraSensorOrientationCompensationDegreesCW)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@", csoCompensation %d", self->_cameraSensorOrientationCompensationDegreesCW];
  }

  else
  {
    v16 = &stru_1F216A3D0;
  }

  if (continuousZoomWithDepthSupported)
  {
    v17 = @", continuousZoomWithDepthSupported:1";
  }

  else
  {
    v17 = &stru_1F216A3D0;
  }

  if (canProcessEnhancedResolution)
  {
    v18 = @", canProcessEnhancedResolution:1";
  }

  else
  {
    v18 = &stru_1F216A3D0;
  }

  if (quadraProcessingSupportEnabled)
  {
    v19 = @", quadraProcessingSupportEnabled:1";
  }

  else
  {
    v19 = &stru_1F216A3D0;
  }

  if (generateInferencesForSemanticProcessingIfNeeded)
  {
    v20 = @", generateInferencesForSemanticProcessingIfNeeded:1";
  }

  else
  {
    v20 = &stru_1F216A3D0;
  }

  if (dcProcessingWithDepthSupported)
  {
    v21 = @", dcProcessingWithDepth:1";
  }

  else
  {
    v21 = &stru_1F216A3D0;
  }

  if (geometricDistortionCorrectionEnabled)
  {
    v22 = @", gdcEnabled:1";
  }

  else
  {
    v22 = &stru_1F216A3D0;
  }

  if (intelligentDistortionCorrectionEnabled)
  {
    v15 = @", idcEnabled:1";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ %p>: %@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@%@", objc_opt_class(), self, v40, v39, v38, v37, v36, v15, v22, v21, v35, v33, v32, v31, v30, v29, v20, v19, v18, v17, v27, v26, v25, v16];
}

- (CGPoint)sensorCenterOffset
{
  x = self->_sensorCenterOffset.x;
  y = self->_sensorCenterOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (char)_initWithLegacyCaptureSettings:(void *)settings
{
  if (!settings)
  {
    return 0;
  }

  v6.receiver = settings;
  v6.super_class = BWDeferredPipelineParameters;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  if (v3)
  {
    nrfVersion = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion];
    if (([a2 captureFlags] & 4) != 0 || nrfVersion <= 2)
    {
      *(v3 + 6) = nrfVersion;
    }

    *(v3 + 7) = 4;
    *(v3 + 8) = [objc_msgSend(a2 "metadata")];
    v3[36] = [objc_msgSend(a2 "metadata")];
    v3[37] = [objc_msgSend(a2 "metadata")];
    v3[38] = 0;
    *(v3 + 10) = 0;
    *(v3 + 11) = [objc_msgSend(a2 "metadata")];
    *(v3 + 52) = 0;
    *(v3 + 59) = 0;
    v3[63] = *(v3 + 6) > 2;
    v3[64] = ([a2 captureFlags] & 0x200000000) != 0;
    *(v3 + 21) = *(v3 + 6) > 3;
  }

  return v3;
}

@end