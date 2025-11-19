@interface BWNondisruptiveSwitchingFormatSelector
+ (void)initialize;
- (BWNondisruptiveSwitchingFormatSelector)initWithPortType:(id)a3 quadraSubPixelSwitchingParameters:(id)a4 baseZoomFactor:(float)a5 zoomFactorToNondisruptiveSwitchingFormatIndexSIFRBinned:(id)a6 zoomFactorToNondisruptiveSwitchingFormatIndexSIFRNonBinned:(id)a7 ultraHighResolutionNondisruptiveStreamingFormatIndex:(int)a8 mainFormatSIFRBinningFactor:(int)a9;
- (int)formatIndexForZoomFactor:(float)lastZoomFactor frameStatistics:(id)a4 imageControlMode:(int)a5 stillImageDigitalFlashMode:(int)a6 isStationary:(BOOL)a7 isSecondaryStream:(BOOL)a8 binnedSIFROnSecondaryStreamAllowed:(BOOL)a9 ignoreZoomFactorAndQuadraSubPixelSceneMonitoring:(BOOL)a10 ultraHighResolutionZeroShutterLagEnabled:(BOOL)a11;
- (uint64_t)_updateQuadraSubPixelSwitchingParametersWithVideoStabilizationStrength:(int)a3 imageControlMode:(int)a4 stillImageDigitalFlashMode:(int)a5 isStationary:(char *)a6 quadraSubPixelSwitchingParametersChangedOut:;
- (void)dealloc;
@end

@implementation BWNondisruptiveSwitchingFormatSelector

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNondisruptiveSwitchingFormatSelector;
  [(BWNondisruptiveSwitchingFormatSelector *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWNondisruptiveSwitchingFormatSelector)initWithPortType:(id)a3 quadraSubPixelSwitchingParameters:(id)a4 baseZoomFactor:(float)a5 zoomFactorToNondisruptiveSwitchingFormatIndexSIFRBinned:(id)a6 zoomFactorToNondisruptiveSwitchingFormatIndexSIFRNonBinned:(id)a7 ultraHighResolutionNondisruptiveStreamingFormatIndex:(int)a8 mainFormatSIFRBinningFactor:(int)a9
{
  v26.receiver = self;
  v26.super_class = BWNondisruptiveSwitchingFormatSelector;
  v16 = [(BWNondisruptiveSwitchingFormatSelector *)&v26 init];
  v17 = v16;
  if (v16)
  {
    if (a6 | a7)
    {
      v16->_portType = a3;
      v16->_baseZoomFactor = a5;
      v16->_zoomFactorToNondisruptiveSwitchingFormatIndexSIFRBinned = a6;
      v17->_zoomFactorToNondisruptiveSwitchingFormatIndexSIFRNonBinned = a7;
      v17->_ultraHighResolutionNondisruptiveStreamingFormatIndex = a8;
      v17->_mainFormatSIFRBinningFactor = a9;
      v17->_lastNondisruptiveSwitchingFormatIndex = -1;
      v18 = a4;
      v17->_quadraSubPixelSwitchingParameters = v18;
      if (v18)
      {
        v19 = [(NSDictionary *)v18 allKeys];
        -[NSArray count](-[NSArray filteredArrayUsingPredicate:](v19, "filteredArrayUsingPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self BEGINSWITH %@", @"ActionCamera"]), "count");
        OUTLINED_FUNCTION_1_54();
        v17->_quadraSubPixelSceneMonitoringForActionCameraEnabled = v20;
        v21 = [(NSDictionary *)v17->_quadraSubPixelSwitchingParameters allKeys];
        -[NSArray count](-[NSArray filteredArrayUsingPredicate:](v21, "filteredArrayUsingPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self BEGINSWITH %@", @"DigitalFlash"]), "count");
        OUTLINED_FUNCTION_1_54();
        v17->_quadraSubPixelSceneMonitoringForDigitalFlashEnabled = v22;
        [(NSDictionary *)v17->_quadraSubPixelSwitchingParameters objectForKeyedSubscript:@"Video"];
        OUTLINED_FUNCTION_1_54();
        v17->_quadraSubPixelSceneMonitoringForVideoEnabled = v23;
        [(NSDictionary *)v17->_quadraSubPixelSwitchingParameters objectForKeyedSubscript:@"Photo"];
        OUTLINED_FUNCTION_1_54();
        v17->_quadraSubPixelSceneMonitoringForPhotoEnabled = v24;
      }
    }

    else
    {
      FigDebugAssert3();

      return 0;
    }
  }

  return v17;
}

- (uint64_t)_updateQuadraSubPixelSwitchingParametersWithVideoStabilizationStrength:(int)a3 imageControlMode:(int)a4 stillImageDigitalFlashMode:(int)a5 isStationary:(char *)a6 quadraSubPixelSwitchingParametersChangedOut:
{
  if (result)
  {
    v7 = result;
    if (!*(result + 56))
    {
      goto LABEL_37;
    }

    if (a2 == 3)
    {
      v8 = @"ActionCameraHighStrength";
    }

    else if (a2 == 4)
    {
      v8 = @"ActionCameraUltraStrength";
    }

    else if (a4 != 1 || a5)
    {
      if (a4 != 2 || a5)
      {
        if (a4 != 1 || a5 != 1)
        {
          v9 = a5;
          if (a4 != 2)
          {
            v9 = 0;
          }

          v10 = @"Video";
          if (!a3)
          {
            v10 = @"Photo";
          }

          v8 = (v9 & 1) != 0 ? @"DigitalFlashMaxTripod" : v10;
        }

        else
        {
          v8 = @"DigitalFlashMinTripod";
        }
      }

      else
      {
        v8 = @"DigitalFlashMaxHandheld";
      }
    }

    else
    {
      v8 = @"DigitalFlashMinHandheld";
    }

    result = [(__CFString *)v8 isEqualToString:*(result + 208)];
    if (result & 1) != 0 || (v11 = *(v7 + 208), *(v7 + 208) = v8, v12 = [*(v7 + 56) objectForKeyedSubscript:v8], result = objc_msgSend(v12, "isEqualToDictionary:", objc_msgSend(*(v7 + 56), "objectForKeyedSubscript:", v11)), (result))
    {
LABEL_37:
      v21 = 0;
      if (!a6)
      {
        return result;
      }
    }

    else
    {
      if ([v12 objectForKeyedSubscript:@"NormalizedSNRThreshold"])
      {
        [objc_msgSend(v12 objectForKeyedSubscript:{@"NormalizedSNRThreshold", "floatValue"}];
        [objc_msgSend(v12 objectForKeyedSubscript:{@"NormalizedSNRHysteresisLag", "floatValue"}];
        OUTLINED_FUNCTION_0_43(v7 + 64, v16, *&v16, 0.9, v13, v14, v15, "Quadra SubPixel - Scene(Normalized SNR)");
      }

      else
      {
        *(v7 + 64) = 0;
      }

      if ([v12 objectForKeyedSubscript:@"LuxLevelThreshold"])
      {
        [objc_msgSend(v12 objectForKeyedSubscript:{@"LuxLevelThreshold", "floatValue"}];
        [objc_msgSend(v12 objectForKeyedSubscript:{@"LuxLevelHysteresisLag", "floatValue"}];
        OUTLINED_FUNCTION_0_43(v7 + 104, v20, *&v20, 0.9, v17, v18, v19, "Quadra SubPixel - Scene(Lux Level)");
      }

      else
      {
        *(v7 + 104) = 0;
      }

      result = [v12 objectForKeyedSubscript:@"GainThreshold"];
      if (result)
      {
        [objc_msgSend(v12 objectForKeyedSubscript:{@"GainThreshold", "floatValue"}];
        [objc_msgSend(v12 objectForKeyedSubscript:{@"GainHysteresisLag", "floatValue"}];
        v21 = 1;
        result = OUTLINED_FUNCTION_0_43(v7 + 144, v25, *&v25, 0.9, v22, v23, v24, "Quadra SubPixel - Scene(Gain)");
        if (!a6)
        {
          return result;
        }
      }

      else
      {
        *(v7 + 144) = 0;
        v21 = 1;
        if (!a6)
        {
          return result;
        }
      }
    }

    *a6 = v21;
  }

  return result;
}

- (int)formatIndexForZoomFactor:(float)lastZoomFactor frameStatistics:(id)a4 imageControlMode:(int)a5 stillImageDigitalFlashMode:(int)a6 isStationary:(BOOL)a7 isSecondaryStream:(BOOL)a8 binnedSIFROnSecondaryStreamAllowed:(BOOL)a9 ignoreZoomFactorAndQuadraSubPixelSceneMonitoring:(BOOL)a10 ultraHighResolutionZeroShutterLagEnabled:(BOOL)a11
{
  v14 = self;
  LODWORD(v56) = a10;
  if (a10 && self->_lastZoomFactor != 0.0)
  {
    lastZoomFactor = self->_lastZoomFactor;
  }

  v15 = self->_mainFormatSIFRBinningFactor == 2;
  v16 = self->_mainFormatSIFRBinningFactor == 2 || !a8;
  v17 = v16 || !a9;
  v58 = __PAIR64__(a7, a6);
  HIDWORD(v56) = a5;
  if (!v17)
  {
    self = [(NSDictionary *)self->_zoomFactorToNondisruptiveSwitchingFormatIndexSIFRBinned count:a4];
    v15 = self != 0;
  }

  v60 = a4;
  v16 = !v15;
  v18 = 32;
  if (!v16)
  {
    v18 = 24;
  }

  v19 = *(&v14->super.isa + v18);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v20 = OUTLINED_FUNCTION_5_4(self, a2, a4, *&a5, *&a6, a7, a8, a9, v56, v58, v60, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, 0);
  if (v20)
  {
    v21 = v20;
    v22 = *v80;
    ultraHighResolutionNondisruptiveStreamingFormatIndex = -1;
    v24 = 0.0;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v80 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v79 + 1) + 8 * i);
        v27 = [v26 floatValue];
        if (v35 <= lastZoomFactor && v35 > v24)
        {
          ultraHighResolutionNondisruptiveStreamingFormatIndex = [objc_msgSend(v19 objectForKeyedSubscript:{v26), "intValue"}];
          v27 = [v26 floatValue];
          v24 = v37;
        }
      }

      v21 = OUTLINED_FUNCTION_5_4(v27, v28, v29, v30, v31, v32, v33, v34, v57, v59, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    }

    while (v21);
    if (a11)
    {
      goto LABEL_27;
    }

LABEL_36:
    v38 = v59;
    v39 = HIDWORD(v59);
    v40 = HIDWORD(v57);
    goto LABEL_37;
  }

  ultraHighResolutionNondisruptiveStreamingFormatIndex = -1;
  v24 = 0.0;
  if (!a11)
  {
    goto LABEL_36;
  }

LABEL_27:
  v38 = v59;
  v39 = HIDWORD(v59);
  v40 = HIDWORD(v57);
  if (!a8 && v24 <= v14->_baseZoomFactor && v14->_ultraHighResolutionNondisruptiveStreamingFormatIndex != -1 && v59 == 0)
  {
    ultraHighResolutionNondisruptiveStreamingFormatIndex = v14->_ultraHighResolutionNondisruptiveStreamingFormatIndex;
  }

LABEL_37:
  v42 = v14->_lastZoomFactor;
  v44 = v42 != 0.0 && lastZoomFactor != v42 && ultraHighResolutionNondisruptiveStreamingFormatIndex != v14->_lastNondisruptiveSwitchingFormatIndex;
  v14->_lastZoomFactor = lastZoomFactor;
  if ((v57 & 1) == 0)
  {
    v45 = v14->_quadraSubPixelSceneMonitoringForActionCameraEnabled && v14->_videoStabilizationStrength > 2;
    v46 = 0;
    v47 = v38 != 0 && v14->_quadraSubPixelSceneMonitoringForDigitalFlashEnabled;
    if (v40 <= 6 && ((1 << v40) & 0x6E) != 0)
    {
      v46 = !v45 && (v38 == 0 || !v14->_quadraSubPixelSceneMonitoringForDigitalFlashEnabled) && v14->_quadraSubPixelSceneMonitoringForVideoEnabled;
    }

    v48 = v40 == 0 && v14->_quadraSubPixelSceneMonitoringForPhotoEnabled;
    if (v38)
    {
      v49 = 0;
    }

    else
    {
      v49 = v40 == 0 && v14->_quadraSubPixelSceneMonitoringForPhotoEnabled;
    }

    if (!v44 && (v49 & 1) != 0)
    {
      v49 = v14->_lastDigitalFlashMode != 0;
    }

    v50 = v38 != 0 && v14->_quadraSubPixelSceneMonitoringForDigitalFlashEnabled && (v14->_lastDigitalFlashMode != v38 || v14->_lastStationary != v39 || v44);
    v14->_lastDigitalFlashMode = v38;
    v14->_lastStationary = v39;
    if (v61)
    {
      if (v24 > v14->_baseZoomFactor && (((v45 || v46) | v47 | v48) & 1) != 0)
      {
        HIBYTE(v62) = 0;
        if ((v49 | v50))
        {
          [(BWNondisruptiveSwitchingFormatSelector *)v14 _updateQuadraSubPixelSwitchingParametersWithVideoStabilizationStrength:v40 imageControlMode:v38 stillImageDigitalFlashMode:v39 isStationary:&v62 + 7 quadraSubPixelSwitchingParametersChangedOut:?];
          if (!v44)
          {
LABEL_67:
            if (HIBYTE(v62) != 1)
            {
              goto LABEL_69;
            }
          }
        }

        else if (!v44)
        {
          goto LABEL_67;
        }

        v14->_quadraSubPixelSceneBasedOnNormalizedSNR.confident = 0;
        BWSmartCameraSceneUpdateResetTemporalHysteresisAndFiltering(&v14->_quadraSubPixelSceneBasedOnNormalizedSNR.enabled);
        v14->_quadraSubPixelSceneBasedOnLuxLevel.confident = 0;
        BWSmartCameraSceneUpdateResetTemporalHysteresisAndFiltering(&v14->_quadraSubPixelSceneBasedOnLuxLevel.enabled);
        v14->_quadraSubPixelSceneBasedOnGain.confident = 0;
        BWSmartCameraSceneUpdateResetTemporalHysteresisAndFiltering(&v14->_quadraSubPixelSceneBasedOnGain.enabled);
LABEL_69:
        [v61 normalizedQsumSNR];
        BWSmartCameraSceneUpdateWithConfidence(&v14->_quadraSubPixelSceneBasedOnNormalizedSNR, v51);
        BWSmartCameraSceneUpdateWithConfidence(&v14->_quadraSubPixelSceneBasedOnLuxLevel, [v61 luxLevel]);
        [v61 gain];
        BWSmartCameraSceneUpdateWithConfidence(&v14->_quadraSubPixelSceneBasedOnGain, v52);
        if (v14->_quadraSubPixelSceneBasedOnNormalizedSNR.enabled && !v14->_quadraSubPixelSceneBasedOnNormalizedSNR.confident || v14->_quadraSubPixelSceneBasedOnLuxLevel.enabled && !v14->_quadraSubPixelSceneBasedOnLuxLevel.confident || v14->_quadraSubPixelSceneBasedOnGain.enabled && v14->_quadraSubPixelSceneBasedOnGain.confident)
        {
          *&v53 = v14->_baseZoomFactor;
          v54 = [v19 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v53)}];
          if (v54)
          {
            ultraHighResolutionNondisruptiveStreamingFormatIndex = [v54 intValue];
          }

          else
          {
            ultraHighResolutionNondisruptiveStreamingFormatIndex = -1;
          }
        }
      }
    }
  }

  v14->_lastNondisruptiveSwitchingFormatIndex = ultraHighResolutionNondisruptiveStreamingFormatIndex;
  return ultraHighResolutionNondisruptiveStreamingFormatIndex;
}

@end