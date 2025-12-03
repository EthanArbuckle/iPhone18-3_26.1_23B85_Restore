@interface FigCaptureSourceCommonSettings
- (void)dealloc;
- (void)initWithCommonSettingsDictionary:(void *)dictionary;
@end

@implementation FigCaptureSourceCommonSettings

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSourceCommonSettings;
  [(FigCaptureSourceCommonSettings *)&v3 dealloc];
}

- (void)initWithCommonSettingsDictionary:(void *)dictionary
{
  if (!dictionary)
  {
    return 0;
  }

  v6.receiver = dictionary;
  v6.super_class = FigCaptureSourceCommonSettings;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  if (v3)
  {
    v3[1] = [a2 objectForKeyedSubscript:@"initialMemoryPoolSizeDistributionsMB"];
    *(v3 + 16) = [objc_msgSend(a2 objectForKeyedSubscript:{@"livePhotoVitalityScoringSupported", "BOOLValue"}];
    [objc_msgSend(a2 objectForKeyedSubscript:{@"livePhotoJPEGIntermediateCompressionRatioDefaultOverride", "floatValue"}];
    *(v3 + 5) = v4;
    *(v3 + 6) = [objc_msgSend(a2 objectForKeyedSubscript:{@"PreviewRegistrationType", "intValue"}];
    *(v3 + 28) = [objc_msgSend(a2 objectForKeyedSubscript:{@"PreviewRegistrationExcludeStaticComponentFromAlignmentShiftsEnabled", "BOOLValue"}];
    v3[4] = [a2 objectForKeyedSubscript:@"PhotoProcessingTimeRangesInMS"];
    *(v3 + 40) = [objc_msgSend(a2 objectForKeyedSubscript:{@"RGBIRStereoFusionThresholdsEnabled", "BOOLValue"}];
    *(v3 + 41) = [objc_msgSend(a2 objectForKeyedSubscript:{@"flashMitigationRequired", "BOOLValue"}];
    *(v3 + 13) = [objc_msgSend(a2 objectForKeyedSubscript:{@"SWFRVersion", "intValue"}];
    *(v3 + 14) = [objc_msgSend(a2 objectForKeyedSubscript:{@"SemanticRenderingVersion", "intValue"}];
    *(v3 + 42) = [objc_msgSend(a2 objectForKeyedSubscript:{@"realtimeFSDNetSupported", "BOOLValue"}];
    *(v3 + 43) = [objc_msgSend(a2 objectForKeyedSubscript:{@"FrameRateSwitchBasedOnMotionForVFRDisabled", "BOOLValue"}];
    *(v3 + 44) = [objc_msgSend(a2 objectForKeyedSubscript:{@"VideoStabilizationAdaptiveOverscanSupported", "BOOLValue"}];
    *(v3 + 45) = [objc_msgSend(a2 objectForKeyedSubscript:{@"VariableFrameRateVideoCaptureFromFWSupported", "BOOLValue"}];
    *(v3 + 46) = [objc_msgSend(a2 objectForKeyedSubscript:{@"TeleAutoVideoFrameRateAllows24FPS", "BOOLValue"}];
    *(v3 + 47) = [objc_msgSend(a2 objectForKeyedSubscript:{@"HighPriorityLaunchFromLockScreenSupported", "BOOLValue"}];
    *(v3 + 48) = [objc_msgSend(a2 objectForKeyedSubscript:{@"MetadataCameraHostingSupported", "BOOLValue"}];
    *(v3 + 15) = [objc_msgSend(a2 objectForKeyedSubscript:{@"SmartStyleRenderingVersion", "intValue"}];
    *(v3 + 16) = [objc_msgSend(a2 objectForKeyedSubscript:{@"SubjectRelightingPreviewVersion", "intValue"}];
    *(v3 + 68) = [objc_msgSend(a2 objectForKeyedSubscript:{@"FineGrainThermalMonitoringEnabled", "BOOLValue"}];
  }

  return v3;
}

@end