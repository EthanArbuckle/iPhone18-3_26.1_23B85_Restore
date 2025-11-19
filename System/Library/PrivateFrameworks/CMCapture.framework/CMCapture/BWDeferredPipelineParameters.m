@interface BWDeferredPipelineParameters
- (BOOL)areCompatibleWith:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BWDeferredPipelineParameters)initWithCoder:(id)a3;
- (CGPoint)sensorCenterOffset;
- (char)_initWithLegacyCaptureSettings:(void *)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BWDeferredPipelineParameters

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeferredPipelineParameters;
  [(BWDeferredPipelineParameters *)&v3 dealloc];
}

- (BWDeferredPipelineParameters)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = BWDeferredPipelineParameters;
  v4 = [(BWDeferredPipelineParameters *)&v12 init];
  if (v4)
  {
    v4->_rawSensorDimensions.width = [a3 decodeInt32ForKey:@"rawSensorDimensionsWidth"];
    v4->_rawSensorDimensions.height = [a3 decodeInt32ForKey:@"rawSensorDimensionsHeight"];
    v5 = MEMORY[0x1E695DFD8];
    v11[0] = objc_opt_class();
    v11[1] = objc_opt_class();
    v11[2] = objc_opt_class();
    v4->_dimensionsByResolutionFlavorByPortType = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 3)), @"dimensionsByResolutionFlavorByPortType"}];
    v4->_nrfVersion = [a3 decodeInt32ForKey:@"nrfVersion"];
    v4->_noiseReductionAndFusionScheme = [a3 decodeInt32ForKey:@"noiseReductionAndFusionScheme"];
    v4->_distortionCorrectionVersion = [a3 decodeInt32ForKey:@"distortionCorrectionVersion"];
    v4->_intelligentDistortionCorrectionEnabled = [a3 decodeBoolForKey:@"intelligentDistortionCorrectionEnabled"];
    v4->_geometricDistortionCorrectionEnabled = [a3 decodeBoolForKey:@"geometricDistortionCorrectionEnabled"];
    v4->_dcProcessingWithDepthSupported = [a3 decodeBoolForKey:@"dcProcessingWithDepthSupported"];
    v4->_stillImageGDCSourceMode = [a3 decodeInt32ForKey:@"stillImageGDCSourceMode"];
    v4->_deepZoomVersion = [a3 decodeInt32ForKey:@"deepZoomVersion"];
    v4->_deepZoomMode = [a3 decodeInt32ForKey:@"deepZoomMode"];
    v4->_semanticRenderingVersion = [a3 decodeInt32ForKey:@"semanticRenderingVersion"];
    v4->_smartStyleRenderingVersion = [a3 decodeInt32ForKey:@"SmartStyleRenderingVersion"];
    v4->_smartStyleRenderingEnabled = [a3 decodeBoolForKey:@"SmartStyleRenderingEnabled"];
    v4->_smartStyleReversibilityEnabled = [a3 decodeBoolForKey:@"SmartStyleReversibilityEnabled"];
    v4->_generateInferencesForSemanticProcessingIfNeeded = [a3 decodeBoolForKey:@"generateInferencesForSemanticProcessingIfNeeded"];
    v4->_quadraProcessingSupportEnabled = [a3 decodeBoolForKey:@"quadraProcessingSupportEnabled"];
    v4->_canProcessEnhancedResolution = [a3 decodeBoolForKey:@"canProcessEnhancedResolution"];
    v4->_continuousZoomWithDepthSupported = [a3 decodeBoolForKey:@"continuousZoomWithDepthSupported"];
    v4->_depthDataType = [a3 decodeInt32ForKey:@"depthDataType"];
    v4->_depthDataDimensions.width = [a3 decodeInt32ForKey:@"depthDataDimensionsWidth"];
    v4->_depthDataDimensions.height = [a3 decodeInt32ForKey:@"depthDataDimensionsHeight"];
    v4->_pearlModuleType = [a3 decodeInt32ForKey:@"PearlModuleType"];
    v4->_sfhrMode = [a3 decodeInt32ForKey:@"sfhrMode"];
    v6 = MEMORY[0x1E695DFD8];
    v10[0] = objc_opt_class();
    v10[1] = objc_opt_class();
    v10[2] = objc_opt_class();
    if (!CGPointMakeWithDictionaryRepresentation([a3 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 3)), @"sensorCenterOffset"}], &v4->_sensorCenterOffset))
    {
      v4->_sensorCenterOffset = *MEMORY[0x1E695EFF8];
    }

    v4->_cameraSensorOrientationCompensationDegreesCW = [a3 decodeInt32ForKey:@"cameraSensorOrientationCompensationDegreesCW"];
    if (!v4->_dimensionsByResolutionFlavorByPortType && [a3 containsValueForKey:@"dimensionsByQSubResolutionFlavorByPortType"])
    {
      v7 = MEMORY[0x1E695DFD8];
      v9[0] = objc_opt_class();
      v9[1] = objc_opt_class();
      v9[2] = objc_opt_class();
      v4->_dimensionsByResolutionFlavorByPortType = [a3 decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v9, 3)), @"dimensionsByQSubResolutionFlavorByPortType"}];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt32:self->_rawSensorDimensions.width forKey:@"rawSensorDimensionsWidth"];
  [a3 encodeInt32:self->_rawSensorDimensions.height forKey:@"rawSensorDimensionsHeight"];
  [a3 encodeObject:self->_dimensionsByResolutionFlavorByPortType forKey:@"dimensionsByResolutionFlavorByPortType"];
  [a3 encodeInt32:self->_nrfVersion forKey:@"nrfVersion"];
  [a3 encodeInt32:self->_noiseReductionAndFusionScheme forKey:@"noiseReductionAndFusionScheme"];
  [a3 encodeInt32:self->_distortionCorrectionVersion forKey:@"distortionCorrectionVersion"];
  [a3 encodeBool:self->_intelligentDistortionCorrectionEnabled forKey:@"intelligentDistortionCorrectionEnabled"];
  [a3 encodeBool:self->_geometricDistortionCorrectionEnabled forKey:@"geometricDistortionCorrectionEnabled"];
  [a3 encodeBool:self->_dcProcessingWithDepthSupported forKey:@"dcProcessingWithDepthSupported"];
  [a3 encodeInt32:self->_stillImageGDCSourceMode forKey:@"stillImageGDCSourceMode"];
  [a3 encodeInt32:self->_deepZoomVersion forKey:@"deepZoomVersion"];
  [a3 encodeInt32:self->_deepZoomMode forKey:@"deepZoomMode"];
  [a3 encodeInt32:self->_semanticRenderingVersion forKey:@"semanticRenderingVersion"];
  [a3 encodeInt32:self->_smartStyleRenderingVersion forKey:@"SmartStyleRenderingVersion"];
  [a3 encodeBool:self->_smartStyleRenderingEnabled forKey:@"SmartStyleRenderingEnabled"];
  [a3 encodeBool:self->_smartStyleReversibilityEnabled forKey:@"SmartStyleReversibilityEnabled"];
  [a3 encodeBool:self->_generateInferencesForSemanticProcessingIfNeeded forKey:@"generateInferencesForSemanticProcessingIfNeeded"];
  [a3 encodeBool:self->_quadraProcessingSupportEnabled forKey:@"quadraProcessingSupportEnabled"];
  [a3 encodeBool:self->_canProcessEnhancedResolution forKey:@"canProcessEnhancedResolution"];
  [a3 encodeBool:self->_continuousZoomWithDepthSupported forKey:@"continuousZoomWithDepthSupported"];
  [a3 encodeInt32:self->_depthDataType forKey:@"depthDataType"];
  [a3 encodeInt32:self->_depthDataDimensions.width forKey:@"depthDataDimensionsWidth"];
  [a3 encodeInt32:self->_depthDataDimensions.height forKey:@"depthDataDimensionsHeight"];
  [a3 encodeInt32:self->_pearlModuleType forKey:@"PearlModuleType"];
  [a3 encodeInt32:self->_sfhrMode forKey:@"sfhrMode"];
  [a3 encodeObject:CGPointCreateDictionaryRepresentation(self->_sensorCenterOffset) forKey:@"sensorCenterOffset"];
  cameraSensorOrientationCompensationDegreesCW = self->_cameraSensorOrientationCompensationDegreesCW;

  [a3 encodeInt32:cameraSensorOrientationCompensationDegreesCW forKey:@"cameraSensorOrientationCompensationDegreesCW"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
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

  v11 = [(BWDeferredPipelineParameters *)self rawSensorDimensions];
  if (v11 != [a3 rawSensorDimensions])
  {
    goto LABEL_28;
  }

  v12 = [(BWDeferredPipelineParameters *)self dimensionsByResolutionFlavorByPortType];
  if (v12 == [a3 dimensionsByResolutionFlavorByPortType] || (v13 = -[NSDictionary isEqual:](-[BWDeferredPipelineParameters dimensionsByResolutionFlavorByPortType](self, "dimensionsByResolutionFlavorByPortType"), "isEqual:", objc_msgSend(a3, "dimensionsByResolutionFlavorByPortType"))) != 0)
  {
    v14 = [(BWDeferredPipelineParameters *)self nrfVersion:v6];
    if (v14 == [a3 nrfVersion])
    {
      v15 = [(BWDeferredPipelineParameters *)self noiseReductionAndFusionScheme];
      if (v15 == [a3 noiseReductionAndFusionScheme])
      {
        v16 = [(BWDeferredPipelineParameters *)self distortionCorrectionVersion];
        if (v16 == [a3 distortionCorrectionVersion])
        {
          v17 = [(BWDeferredPipelineParameters *)self intelligentDistortionCorrectionEnabled];
          if (v17 == [a3 intelligentDistortionCorrectionEnabled])
          {
            v18 = [(BWDeferredPipelineParameters *)self geometricDistortionCorrectionEnabled];
            if (v18 == [a3 geometricDistortionCorrectionEnabled])
            {
              v19 = [(BWDeferredPipelineParameters *)self dcProcessingWithDepthSupported];
              if (v19 == [a3 dcProcessingWithDepthSupported])
              {
                v20 = [(BWDeferredPipelineParameters *)self stillImageGDCSourceMode];
                if (v20 == [a3 stillImageGDCSourceMode])
                {
                  v21 = [(BWDeferredPipelineParameters *)self deepZoomVersion];
                  if (v21 == [a3 deepZoomVersion])
                  {
                    v22 = [(BWDeferredPipelineParameters *)self deepZoomMode];
                    if (v22 == [a3 deepZoomMode])
                    {
                      v23 = [(BWDeferredPipelineParameters *)self semanticRenderingVersion];
                      if (v23 == [a3 semanticRenderingVersion])
                      {
                        v24 = [(BWDeferredPipelineParameters *)self smartStyleRenderingVersion];
                        if (v24 == [a3 smartStyleRenderingVersion])
                        {
                          v25 = [(BWDeferredPipelineParameters *)self smartStyleRenderingEnabled];
                          if (v25 == [a3 smartStyleRenderingEnabled])
                          {
                            v26 = [(BWDeferredPipelineParameters *)self smartStyleReversibilityEnabled];
                            if (v26 == [a3 smartStyleReversibilityEnabled])
                            {
                              v27 = [(BWDeferredPipelineParameters *)self generateInferencesForSemanticProcessingIfNeeded];
                              if (v27 == [a3 generateInferencesForSemanticProcessingIfNeeded])
                              {
                                v28 = [(BWDeferredPipelineParameters *)self quadraProcessingSupportEnabled];
                                if (v28 == [a3 quadraProcessingSupportEnabled])
                                {
                                  v29 = [(BWDeferredPipelineParameters *)self canProcessEnhancedResolution];
                                  if (v29 == [a3 canProcessEnhancedResolution])
                                  {
                                    v30 = [(BWDeferredPipelineParameters *)self continuousZoomWithDepthSupported];
                                    if (v30 == [a3 continuousZoomWithDepthSupported])
                                    {
                                      v31 = [(BWDeferredPipelineParameters *)self depthDataType];
                                      if (v31 == [a3 depthDataType])
                                      {
                                        v32 = [(BWDeferredPipelineParameters *)self depthDataDimensions];
                                        if (v32 == [a3 depthDataDimensions])
                                        {
                                          v33 = [(BWDeferredPipelineParameters *)self pearlModuleType];
                                          if (v33 == [a3 pearlModuleType])
                                          {
                                            v34 = [(BWDeferredPipelineParameters *)self sfhrMode];
                                            if (v34 == [a3 sfhrMode])
                                            {
                                              v35 = [(BWDeferredPipelineParameters *)self cameraSensorOrientationCompensationDegreesCW];
                                              LOBYTE(v13) = v35 == [a3 cameraSensorOrientationCompensationDegreesCW];
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

- (BOOL)areCompatibleWith:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  v5 = [(BWDeferredPipelineParameters *)self rawSensorDimensions];
  if (v5 != [a3 rawSensorDimensions])
  {
    goto LABEL_39;
  }

  v6 = [(BWDeferredPipelineParameters *)self dimensionsByResolutionFlavorByPortType];
  if (v6 == [a3 dimensionsByResolutionFlavorByPortType] || (v7 = -[NSDictionary isEqual:](-[BWDeferredPipelineParameters dimensionsByResolutionFlavorByPortType](self, "dimensionsByResolutionFlavorByPortType"), "isEqual:", objc_msgSend(a3, "dimensionsByResolutionFlavorByPortType"))) != 0)
  {
    v8 = [(BWDeferredPipelineParameters *)self nrfVersion];
    if (v8 != [a3 nrfVersion])
    {
      goto LABEL_39;
    }

    v9 = [(BWDeferredPipelineParameters *)self noiseReductionAndFusionScheme];
    if (v9 != [a3 noiseReductionAndFusionScheme])
    {
      goto LABEL_39;
    }

    v10 = [(BWDeferredPipelineParameters *)self distortionCorrectionVersion];
    if (v10 != [a3 distortionCorrectionVersion])
    {
      goto LABEL_39;
    }

    v11 = [(BWDeferredPipelineParameters *)self stillImageGDCSourceMode];
    if (v11 != [a3 stillImageGDCSourceMode])
    {
      goto LABEL_39;
    }

    v12 = [(BWDeferredPipelineParameters *)self semanticRenderingVersion];
    if (v12 != [a3 semanticRenderingVersion])
    {
      goto LABEL_39;
    }

    if ((![a3 intelligentDistortionCorrectionEnabled] || (v7 = -[BWDeferredPipelineParameters intelligentDistortionCorrectionEnabled](self, "intelligentDistortionCorrectionEnabled")) != 0) && (!objc_msgSend(a3, "geometricDistortionCorrectionEnabled") || (v7 = -[BWDeferredPipelineParameters geometricDistortionCorrectionEnabled](self, "geometricDistortionCorrectionEnabled")) != 0) && (!objc_msgSend(a3, "dcProcessingWithDepthSupported") || (v7 = -[BWDeferredPipelineParameters dcProcessingWithDepthSupported](self, "dcProcessingWithDepthSupported")) != 0) && (!objc_msgSend(a3, "continuousZoomWithDepthSupported") || (v7 = -[BWDeferredPipelineParameters continuousZoomWithDepthSupported](self, "continuousZoomWithDepthSupported")) != 0))
    {
      v13 = [(BWDeferredPipelineParameters *)self depthDataType];
      if (v13 != [a3 depthDataType])
      {
        goto LABEL_39;
      }

      v14 = [(BWDeferredPipelineParameters *)self depthDataDimensions];
      if (v14 != [a3 depthDataDimensions])
      {
        goto LABEL_39;
      }

      if (![a3 pearlModuleType] || (v7 = -[BWDeferredPipelineParameters pearlModuleType](self, "pearlModuleType")) != 0)
      {
        if ([a3 deepZoomMode])
        {
          v15 = [(BWDeferredPipelineParameters *)self deepZoomVersion];
          if (v15 != [a3 deepZoomVersion])
          {
            goto LABEL_39;
          }

          v16 = [(BWDeferredPipelineParameters *)self deepZoomMode];
          if (v16 != [a3 deepZoomMode])
          {
            goto LABEL_39;
          }
        }

        if (![a3 smartStyleRenderingVersion])
        {
          goto LABEL_45;
        }

        v17 = [(BWDeferredPipelineParameters *)self smartStyleRenderingVersion];
        if (v17 != [a3 smartStyleRenderingVersion])
        {
          goto LABEL_39;
        }

        v18 = [(BWDeferredPipelineParameters *)self smartStyleRenderingEnabled];
        if (v18 != [a3 smartStyleRenderingEnabled])
        {
          goto LABEL_39;
        }

        if (![a3 smartStyleReversibilityEnabled] || (v7 = -[BWDeferredPipelineParameters smartStyleReversibilityEnabled](self, "smartStyleReversibilityEnabled")) != 0)
        {
LABEL_45:
          if ((![a3 generateInferencesForSemanticProcessingIfNeeded] || (v7 = -[BWDeferredPipelineParameters generateInferencesForSemanticProcessingIfNeeded](self, "generateInferencesForSemanticProcessingIfNeeded")) != 0) && (!objc_msgSend(a3, "quadraProcessingSupportEnabled") || (v7 = -[BWDeferredPipelineParameters quadraProcessingSupportEnabled](self, "quadraProcessingSupportEnabled")) != 0) && (!objc_msgSend(a3, "canProcessEnhancedResolution") || (v7 = -[BWDeferredPipelineParameters canProcessEnhancedResolution](self, "canProcessEnhancedResolution")) != 0))
          {
            if (![a3 sfhrMode] || (v19 = -[BWDeferredPipelineParameters sfhrMode](self, "sfhrMode"), v19 == objc_msgSend(a3, "sfhrMode")))
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

- (char)_initWithLegacyCaptureSettings:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = BWDeferredPipelineParameters;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  if (v3)
  {
    v4 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion];
    if (([a2 captureFlags] & 4) != 0 || v4 <= 2)
    {
      *(v3 + 6) = v4;
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