@interface BWUBCaptureParameters
- (BWUBCaptureParameters)initWithPortType:(id)type sensorIDDictionary:(id)dictionary;
- (int)deepFusionHDREVZeroCountForEffectiveIntegrationTime:(double)time;
- (void)dealloc;
@end

@implementation BWUBCaptureParameters

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWUBCaptureParameters;
  [(BWUBCaptureParameters *)&v3 dealloc];
}

- (BWUBCaptureParameters)initWithPortType:(id)type sensorIDDictionary:(id)dictionary
{
  if (type && (v6 = [dictionary objectForKeyedSubscript:@"UBCaptureParameters"]) != 0)
  {
    v7 = v6;
    v54.receiver = self;
    v54.super_class = BWUBCaptureParameters;
    v8 = [(BWUBCaptureParameters *)&v54 init];
    if (v8)
    {
      v8->_portType = type;
      v8->_nonHDRBrightLightCapturesEnabled = [objc_msgSend(v7 objectForKeyedSubscript:{@"NonHDRBrightLightCapturesEnabled", "BOOLValue"}];
      [objc_msgSend(v7 objectForKeyedSubscript:{@"LowLightEffectiveIntegrationTimeThreshold", "doubleValue"}];
      v8->_lowLightEffectiveIntegrationTimeThreshold = v9;
      [objc_msgSend(v7 objectForKeyedSubscript:{@"SIFRMainEffectiveIntegrationTimeThreshold", "doubleValue"}];
      v8->_sifrMainEffectiveIntegrationTimeThreshold = v10;
      [objc_msgSend(v7 objectForKeyedSubscript:{@"SIFRGainThreshold", "floatValue"}];
      v8->_sifrGainThreshold = v11;
      [objc_msgSend(v7 objectForKeyedSubscript:{@"LowLightHDRWithoutSIFRISPDGainThreshold", "floatValue"}];
      v8->_lowLightHDRWithoutSIFRISPDGainThreshold = v12;
      [objc_msgSend(v7 objectForKeyedSubscript:{@"LongWithoutSphereEffectiveIntegrationTimeThreshold", "doubleValue"}];
      v8->_longWithoutSphereEffectiveIntegrationTimeThreshold = v13;
      v14 = [v7 objectForKeyedSubscript:@"DeepFusionEffectiveIntegrationTimeThreshold"];
      if (!v14)
      {
        v14 = &unk_1F224A8B0;
      }

      [v14 doubleValue];
      v8->_deepFusionEffectiveIntegrationTimeThreshold = v15;
      v16 = [v7 objectForKeyedSubscript:@"DeepFusionBracketedCaptureReferenceFrameIndex"];
      if (!v16)
      {
        v16 = &unk_1F22453B8;
      }

      v8->_deepFusionBracketedCaptureReferenceFrameIndex = [v16 intValue];
      v17 = [v7 objectForKeyedSubscript:@"DeepFusionHDREVZeroCountByEffectiveIntegrationTime"];
      v8->_deepFusionHDREVZeroCountByEffectiveIntegrationTime = v17;
      if (([(NSArray *)v17 count]& 1) != 0)
      {
        [BWUBCaptureParameters initWithPortType:? sensorIDDictionary:?];
      }

      v18 = [v7 objectForKeyedSubscript:@"UpscaledEnhancedResolutionEffectiveIntegrationTimeThreshold"];
      if (!v18)
      {
        v18 = &unk_1F224A8C0;
      }

      [v18 doubleValue];
      v8->_upscaledEnhancedResolutionEffectiveIntegrationTimeThreshold = v19;
      v20 = [v7 objectForKeyedSubscript:@"LearnedNRUltraHighResolutionDowngradeEffectiveIntegrationTimeThreshold"];
      if (!v20)
      {
        v20 = &unk_1F224A8C0;
      }

      [v20 doubleValue];
      v8->_learnedNRUltraHighResolutionDowngradeEffectiveIntegrationTimeThreshold = v21;
      v22 = [v7 objectForKeyedSubscript:@"LearnedNRUltraHighResolutionExposureBias"];
      if (!v22)
      {
        v22 = &unk_1F22453D0;
      }

      [v22 doubleValue];
      *&v23 = v23;
      v8->_learnedNRUltraHighResolutionExposureBias = *&v23;
      v24 = [v7 objectForKeyedSubscript:@"AutoFlashColorConstancyNormalizedSNRThreshold"];
      if (!v24)
      {
        v24 = &unk_1F224A8C0;
      }

      [v24 doubleValue];
      *&v25 = v25;
      v8->_autoFlashColorConstancyNormalizedSNRThreshold = *&v25;
      v26 = [v7 objectForKeyedSubscript:@"AutoFlashMacroNormalizedSNRThreshold"];
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = &unk_1F224A8C0;
      }

      v28 = *off_1E798A0D0;
      [(NSString *)v8->_portType isEqualToString:*off_1E798A0D0];
      [v27 doubleValue];
      *&v29 = v29;
      v8->_autoFlashMacroNormalizedSNRThreshold = *&v29;
      [(NSString *)v8->_portType isEqualToString:v28];
      v8->_macroFlashQSubSwitchingEnabled = [objc_msgSend(v7 objectForKeyedSubscript:{@"MacroFlashQSubSwitchingEnabled", "BOOLValue"}];
      [objc_msgSend(v7 objectForKeyedSubscript:{@"RedSaturationMainEffectiveIntegrationTimeThreshold", "doubleValue"}];
      v8->_redSaturationMainEffectiveIntegrationTimeThreshold = v30;
      [objc_msgSend(v7 objectForKeyedSubscript:{@"RedSaturationSIFRGainThreshold", "floatValue"}];
      v8->_redSaturationSIFRGainThreshold = v31;
      v8->_toneCurveBehavior = [objc_msgSend(v7 objectForKeyedSubscript:{@"ToneCurveBehavior", "intValue"}];
      v8->_preserveBlackLevel = [objc_msgSend(v7 objectForKeyedSubscript:{@"PreserveBlackLevel", "BOOLValue"}];
      [objc_msgSend(v7 objectForKeyedSubscript:{@"NightModeMinGainThreshold", "floatValue"}];
      v8->_nightModeMinGainThreshold = v32;
      v8->_alwaysUseAFTimeout = [objc_msgSend(v7 objectForKeyedSubscript:{@"AlwaysUseAFTimeout", "BOOLValue"}];
      v8->_afWindowParams = [objc_msgSend(v7 objectForKeyedSubscript:{@"AFWindowParams", "copy"}];
      v33 = [v7 objectForKeyedSubscript:@"AdaptiveBracketingParameters"];
      v34 = [objc_msgSend(v33 objectForKeyedSubscript:{@"FirstGroupMaxNumberOfFramesCount", "intValue"}];
      if (v34 <= [objc_msgSend(v33 objectForKeyedSubscript:{@"NextGroupMaxNumberOfFramesCount", "intValue"}])
      {
        v35 = @"NextGroupMaxNumberOfFramesCount";
      }

      else
      {
        v35 = @"FirstGroupMaxNumberOfFramesCount";
      }

      v8->_maxNumberOfFramesForAdaptiveBracketing = [objc_msgSend(v33 objectForKeyedSubscript:{v35), "intValue"}];
      v36 = [v7 objectForKeyedSubscript:@"DigitalFlashAvailableEffectiveIntegrationTimeThreshold"];
      if (!v36)
      {
        v36 = &unk_1F224A8C0;
      }

      [v36 doubleValue];
      v8->_digitalFlashAvailableEffectiveIntegrationTimeThreshold = v37;
      [objc_msgSend(v7 objectForKeyedSubscript:{@"DigitalFlashRecommendedEffectiveIntegrationTimeThreshold", "doubleValue"}];
      v8->_digitalFlashRecommendedEffectiveIntegrationTimeThreshold = v38;
      [objc_msgSend(v7 objectForKeyedSubscript:{@"StationaryDigitalFlashRecommendedEffectiveIntegrationTimeThreshold", "doubleValue"}];
      v8->_stationaryDigitalFlashRecommendedEffectiveIntegrationTimeThreshold = v39;
      v40 = [v7 objectForKeyedSubscript:@"DigitalFlashRecommendRegularFlashSNRThreshold"];
      if (!v40)
      {
        v40 = &unk_1F224A8C0;
      }

      [v40 floatValue];
      v8->_digitalFlashRecommendRegularFlashSNRThreshold = v41;
      v42 = [v7 objectForKeyedSubscript:@"DigitalFlashBacklitRecommendRegularFlashSNRThreshold"];
      if (!v42)
      {
        v42 = &unk_1F224A8C0;
      }

      [v42 floatValue];
      v8->_digitalFlashBacklitRecommendRegularFlashSNRThreshold = v43;
      v44 = [v7 objectForKeyedSubscript:@"DigitalFlashBacklitRecommendRegularFlashAERelativeDifferenceThreshold"];
      if (!v44)
      {
        v44 = &unk_1F224A8C0;
      }

      [v44 floatValue];
      v8->_digitalFlashBacklitRecommendRegularFlashAERelativeDifferenceThreshold = v45;
      v8->_digitalFlashHighlightRecoveryEnabled = [objc_msgSend(v7 objectForKeyedSubscript:{@"DigitalFlashHighlightRecoveryEnabled", "BOOLValue"}];
      v46 = [v7 objectForKeyedSubscript:@"StereoPhotoThresholdSNRThreshold"];
      if (!v46)
      {
        v46 = &unk_1F224A8C0;
      }

      [v46 floatValue];
      v8->_stereoPhotoSNRThreshold = v47;
      v48 = [v7 objectForKeyedSubscript:@"StereoPhotoSNRDifferenceSecondarySNRThreshold"];
      if (!v48)
      {
        v48 = &unk_1F224A8C0;
      }

      [v48 floatValue];
      v8->_stereoPhotoSNRDifferenceSecondarySNRThreshold = v49;
      v50 = [v7 objectForKeyedSubscript:@"StereoPhotoSNRDifferenceThreshold"];
      if (!v50)
      {
        v50 = &unk_1F224A8C0;
      }

      [v50 floatValue];
      v8->_stereoPhotoSNRDifferenceThreshold = v51;
      v52 = [v7 objectForKeyedSubscript:@"ReferenceFrameSelectionParameters"];
      v8->_referenceFrameSelectionMethod = [objc_msgSend(v52 objectForKeyedSubscript:{@"Method", "intValue"}];
      v8->_usePreviousSIFR = [objc_msgSend(v52 objectForKeyedSubscript:{@"UsePreviousSIFR", "BOOLValue"}];
      v8->_motionAndFocusScoreWeights = [v52 objectForKeyedSubscript:@"MotionAndFocusScoreWeights"];
    }
  }

  else
  {

    return 0;
  }

  return v8;
}

- (int)deepFusionHDREVZeroCountForEffectiveIntegrationTime:(double)time
{
  if (![(NSArray *)self->_deepFusionHDREVZeroCountByEffectiveIntegrationTime count])
  {
    return 3;
  }

  if (![(NSArray *)self->_deepFusionHDREVZeroCountByEffectiveIntegrationTime count])
  {
LABEL_6:
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v11 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v11, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWUBCaptureParameters.m", 256, @"LastShownDate:BWUBCaptureParameters.m:256", @"LastShownBuild:BWUBCaptureParameters.m:256", 0);
    free(v11);
    return 3;
  }

  v5 = 0;
  while (1)
  {
    [-[NSArray objectAtIndexedSubscript:](self->_deepFusionHDREVZeroCountByEffectiveIntegrationTime objectAtIndexedSubscript:{v5), "doubleValue"}];
    if (v6 < time)
    {
      break;
    }

    v5 += 2;
    if ([(NSArray *)self->_deepFusionHDREVZeroCountByEffectiveIntegrationTime count]<= v5)
    {
      goto LABEL_6;
    }
  }

  v9 = [(NSArray *)self->_deepFusionHDREVZeroCountByEffectiveIntegrationTime objectAtIndexedSubscript:v5 & 0xFFFFFFFE | 1];

  return [v9 intValue];
}

- (void)initWithPortType:(id *)a1 sensorIDDictionary:.cold.1(id *a1)
{
  fig_log_get_emitter();
  FigDebugAssert3();

  *a1 = 0;
}

@end