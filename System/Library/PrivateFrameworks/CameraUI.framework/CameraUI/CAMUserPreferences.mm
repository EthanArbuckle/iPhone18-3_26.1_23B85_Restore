@interface CAMUserPreferences
+ (BOOL)_fallBackToCameraDefaultsForBundleIdentifier:(id)a3;
+ (BOOL)_preferenceBoolValueForKey:(id)a3 defaultValue:(BOOL)a4;
+ (BOOL)canShowSmartStylesOnboardingForCapabilities:(id)a3;
+ (BOOL)hasSharedLibraryAlgorithmsPreferences;
+ (BOOL)isSharedLibrarySupportedAndEnabledForCapabilities:(id)a3;
+ (BOOL)shouldEnableHDR10BitVideoForHEVCEnabled:(BOOL)a3 capabilities:(id)a4;
+ (CAMUserPreferences)preferences;
+ (id)_captureModeNumberForPersistenceString:(id)a3;
+ (id)_convertDictionary:(id)a3 expectedKeyClass:(Class)a4 expectedValueClass:(Class)a5 keyConverter:(id)a6 valueConverter:(id)a7;
+ (id)_createMappingFromStringsToIntegers:(id)a3;
+ (id)_defaultCaptureConfiguration;
+ (id)_defaultExposureBiasesByMode;
+ (id)_drawerControlTypeNumberForPersistenceString:(id)a3;
+ (id)_persistenceDictionaryForPreferredDrawerControlByMode:(id)a3;
+ (id)_preferredDrawerControlByModeForPersistenceDictionary:(id)a3;
+ (id)_stringForGroupingType:(int64_t)a3;
+ (id)defaultCaptureConfiguration;
+ (int64_t)_groupingTypeForString:(id)a3;
+ (int64_t)_preferenceIntegerValueForKey:(id)a3 defaultValue:(int64_t)a4;
+ (int64_t)defaultDevicePosition;
+ (int64_t)defaultLightingTypeForMode:(int64_t)a3;
+ (int64_t)solCamGroupingType;
+ (unint64_t)selectedAudioConfigurationForCapabilities:(id)a3;
+ (void)_setPreferenceValue:(id)a3 forKey:(id)a4;
+ (void)performApertureMigrationWithCapabilities:(id)a3;
+ (void)performAudioConfigurationMigrationWithCapabilities:(id)a3;
+ (void)performHorizonLevelUpgradeWithCapabilities:(id)a3;
+ (void)performLowLightVideoMigrationWithCapabilities:(id)a3;
+ (void)performMostCompatibleConfirmationMigrationWithCapabilities:(id)a3;
+ (void)performResponsiveShutterMigrationWithCapabilities:(id)a3;
+ (void)performSmartStylesOnboardingAcknowledgementResetWithCapabilities:(id)a3;
+ (void)performSuperWideAutoMacroMigrationWithCapabilities:(id)a3;
+ (void)removeSharedLibraryAlgorithmsPreferences;
+ (void)resetSmudgeDetectionDisplay;
+ (void)setBottomOverCaptureGradientEnabled:(BOOL)a3;
+ (void)setSolCamDebugMenuEnabled:(BOOL)a3;
+ (void)setSolCamGroupingType:(int64_t)a3;
+ (void)setSolCamOnboardingEnabled:(BOOL)a3;
+ (void)setSolCamSelectedZoomCenteredEnabled:(BOOL)a3;
+ (void)setSolCamShutterButtonCenterMaterialEnabled:(BOOL)a3;
+ (void)setTopOverCaptureGradientEnabled:(BOOL)a3;
+ (void)updateLastViewedSettingsDate;
- ($0AC6E346AE4835514AAA8AC86D8F4844)fallbackPhotoFormatForDesiredFormat:(id)a3 mode:(int64_t)a4 device:(int64_t)a5;
- ($0AC6E346AE4835514AAA8AC86D8F4844)photoFormatControlSecondaryFormat;
- ($0AC6E346AE4835514AAA8AC86D8F4844)resolvedPhotoFormatForResolvedResolution:(int64_t)a3 rawMode:(int64_t)a4;
- (BOOL)_shouldReconfigureCurrentConfigurationForSettingsChange;
- (BOOL)_shouldResetPreferencesForTimeout;
- (BOOL)allowExplicitProResColorSpace;
- (BOOL)isAutoFPSVideoEnabledForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 encodingBehavior:(int64_t)a6 outputToExternalStorage:(BOOL)a7 frontRearSimultaneousVideoEnabled:(BOOL)a8;
- (BOOL)isPhotoFormat:(id)a3 enabledForMode:(int64_t)a4 device:(int64_t)a5;
- (BOOL)mirrorCameraCapturesForDevicePosition:(int64_t)a3 mode:(int64_t)a4;
- (BOOL)prefersHDR10BitVideoForCapabilities:(id)a3;
- (BOOL)readPreferencesWithOverrides:(id)a3 emulationMode:(int64_t)a4 callActive:(BOOL)a5 shouldResetCaptureConfiguration:(BOOL *)a6 bypassXPCWhenReadingSystemStyle:(BOOL)a7;
- (BOOL)shouldDisableCameraSwitchingDuringVideoRecordingForMode:(int64_t)a3;
- (BOOL)shouldShowQRBanners;
- (BOOL)shouldUsePhotoFormatControlForMode:(int64_t)a3;
- (BOOL)smudgeDetectionDisplayWasResetBySettingsToggle;
- (NSDate)resetTimeoutDate;
- (double)_resetTimeoutSeconds;
- (double)defaultZoomFactorForGraphConfiguration:(id)a3 captureOrientation:(int64_t)a4 outputToExternalStorage:(BOOL)a5;
- (id)_devicePositionString:(int64_t)a3;
- (id)_semanticStylesKey;
- (id)filterTypesForMode:(int64_t)a3;
- (id)smudgeAcknowledgementDateForDevicePosition:(int64_t)a3;
- (id)smudgeAnalyticsDictionaryForDevicePosition:(int64_t)a3;
- (id)videoThumbnailOutputConfigurationForMode:(int64_t)a3 devicePosition:(int64_t)a4;
- (int64_t)_findIndexOfSmartStylePresetString:(id)a3 inStyles:(id)a4;
- (int64_t)_sanitizeEffectFilterType:(int64_t)a3 forMode:(int64_t)a4;
- (int64_t)_sanitizeLightingType:(int64_t)a3 forMode:(int64_t)a4;
- (int64_t)colorSpaceForMode:(int64_t)a3 videoConfiguration:(int64_t)a4 videoEncodingBehavior:(int64_t)a5 device:(int64_t)a6 preferredProResColorSpace:(int64_t)a7;
- (int64_t)defaultDeviceForModeChange:(int64_t)a3 devicePosition:(int64_t)a4;
- (int64_t)maximumPhotoResolutionForMode:(int64_t)a3 device:(int64_t)a4;
- (int64_t)photoEncodingBehavior;
- (int64_t)photoEncodingBehaviorForMode:(int64_t)a3 resolvedRAWMode:(int64_t)a4 isCapturingVideo:(BOOL)a5 isTrueVideo:(BOOL)a6;
- (int64_t)ppt_readPortraitLightingType;
- (int64_t)preferredHEICPhotoResolutionForDevicePosition:(int64_t)a3;
- (int64_t)previewViewAspectModeForMode:(int64_t)a3 isFullScreen:(BOOL)a4;
- (int64_t)smudgeAcknowledgementCountForDevicePosition:(int64_t)a3;
- (int64_t)smudgeNotDetectedCountForDevicePosition:(int64_t)a3;
- (int64_t)videoEncodingBehaviorForConfiguration:(int64_t)a3 mode:(int64_t)a4 desiredProResVideoMode:(int64_t)a5 outputToExternalStorage:(BOOL)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7;
- (int64_t)videoStabilizationStrengthForVideoStabilizationMode:(int64_t)a3 captureMode:(int64_t)a4;
- (unint64_t)_updateEntryForPresetType:(int64_t)a3 inSmartStyles:(id)a4 withStyle:(id)a5;
- (unint64_t)audioConfigurationForMode:(int64_t)a3 device:(int64_t)a4 emulationMode:(int64_t)a5 duringCall:(BOOL)a6;
- (void)_publishAnalyticsIfNeeded;
- (void)_publishAnalyticsIfNeededAfterAppLaunch;
- (void)_resetSharedLibraryAlgorithmsPreferences;
- (void)_updateLastWrittenSettingsDate;
- (void)_writeSmartStylePresetStringForIndex:(int64_t)a3 inStyles:(id)a4 key:(id)a5;
- (void)clearSmudgeDetectionDisplayWasResetBySettingsToggle;
- (void)removeSmudgeAnalyticsDictionaryForDevicePosition:(int64_t)a3;
- (void)resolveDesiredPhotoResolution:(int64_t)a3 livePhotoMode:(int64_t)a4 rawMode:(int64_t)a5 conflicts:(unint64_t)a6 mode:(int64_t)a7 device:(int64_t)a8 resolvedPhotoResolution:(int64_t *)a9 resolvedLivePhotoMode:(int64_t *)a10;
- (void)setDidAcknowledgeCTMDescription:(BOOL)a3;
- (void)setDidAcknowledgeCinematicModeDescription:(BOOL)a3;
- (void)setDidAcknowledgeDepthInPhotoModeDescription:(BOOL)a3;
- (void)setDidAcknowledgePortraitModeDescription:(BOOL)a3;
- (void)setDidAcknowledgeSemanticStylesDescription:(BOOL)a3;
- (void)setDidAcknowledgeSmartStylesDescription:(BOOL)a3;
- (void)setDidAcknowledgeSolCamDescription:(BOOL)a3;
- (void)setDidAcknowledgeSpatialModeOverlayDescription:(BOOL)a3;
- (void)setExplicitProResColorSpace:(int64_t)a3;
- (void)setPreviewViewAspectMode:(int64_t)a3 forMode:(int64_t)a4 isFullScreen:(BOOL)a5;
- (void)setSmudgeAcknowledgementCount:(int64_t)a3 forDevicePosition:(int64_t)a4;
- (void)setSmudgeAcknowledgementDate:(id)a3 forDevicePosition:(int64_t)a4;
- (void)setSmudgeAnalyticsDictionary:(id)a3 forDevicePosition:(int64_t)a4;
- (void)setSmudgeNotDetectedCount:(int64_t)a3 forDevicePosition:(int64_t)a4;
- (void)writeAvailableDevicesWithCompletion:(id)a3;
- (void)writePreferences;
@end

@implementation CAMUserPreferences

+ (CAMUserPreferences)preferences
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CAMUserPreferences_preferences__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (preferences_onceToken != -1)
  {
    dispatch_once(&preferences_onceToken, block);
  }

  v2 = preferences_sharedInstance;

  return v2;
}

void __33__CAMUserPreferences_preferences__block_invoke(uint64_t a1)
{
  v42 = objc_alloc_init(CAMUserPreferences);
  v56 = +[CAMCaptureCapabilities capabilities];
  v43 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v43 bundleIdentifier];
  if ([*(a1 + 32) _fallBackToCameraDefaultsForBundleIdentifier:v2])
  {
    v40 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v40 addSuiteNamed:@"com.apple.camera"];
  }

  else
  {
    if ([v2 isEqualToString:@"com.apple.camera.lockscreen"])
    {
      v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.camera"];
    }

    else
    {
      v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    }

    v40 = v3;
  }

  v4 = [*(a1 + 32) defaultCaptureConfiguration];
  v5 = [v4 device];
  v41 = v2;
  if ((v5 - 1) > 0xA)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1A3A68210[v5 - 1];
  }

  v39 = objc_alloc(MEMORY[0x1E695DF90]);
  v37 = *MEMORY[0x1E69C0630];
  v36 = *MEMORY[0x1E69C0628];
  v55 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v56, "isImageAnalysisSupported")}];
  v54 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "mode")}];
  v53 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  v52 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "flashMode")}];
  v50 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "torchMode")}];
  v49 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "HDRMode")}];
  v47 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "timerDuration")}];
  v51 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "photoModeAspectRatioCrop")}];
  v48 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "photoModeEffectFilterType")}];
  v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "squareModeEffectFilterType")}];
  v27 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "portraitModeEffectFilterType")}];
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "photoModeEffectFilterType")}];
  v25 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "squareModeEffectFilterType")}];
  v46 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "portraitModeEffectFilterType")}];
  v45 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "portraitModeLightingEffectType")}];
  v7 = MEMORY[0x1E696AD98];
  [v4 portraitModeApertureValue];
  v24 = [v7 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [v4 portraitModeIntensityValue];
  v44 = [v8 numberWithDouble:?];
  v35 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "mirrorFrontCameraCaptures")}];
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v56, "semanticDevelopmentSupported")}];
  v33 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "rawMode")}];
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v56, "macroControlEnabledByDefault") ^ 1}];
  v31 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "macroMode")}];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "optionalDepthEffectEnabled")}];
  v29 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v56, "resolvedDefaultCustomLens")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "videoStabilizationMode")}];
  [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "zoomPIPEnabled")}];
  v23 = v37;
  v10 = v38 = v4;
  v11 = [v39 initWithObjectsAndKeys:{@"CAMUserPreferenceHDREV0", MEMORY[0x1E695E110], @"CAMUserPreferenceModernHDRKeepNormalPhoto", MEMORY[0x1E695E118], @"CAMUserPreferenceModernHDRBehavior", &unk_1F16C7400, v23, &unk_1F16C7400, v36, &unk_1F16C7400, @"CAMUserPreferenceCinematicConfiguration", MEMORY[0x1E695E110], @"CAMUserPreferenceShowGridOverlay", MEMORY[0x1E695E110], @"CAMUserPreferenceShowHorizonLevelPlumb", MEMORY[0x1E695E118], @"CAMUserPreferenceShowQRCodeBanners", v55, @"CAMUserPreferenceShowImageAnalysis", MEMORY[0x1E695E110], @"CAMUserPreferenceCTMDidAcknowledgeDescription", &unk_1F16C7400, @"CAMUserPreferencePreviewAspectModeForPhotoModes", &unk_1F16C7400, @"CAMUserPreferencePreviewViewAspectMode", &unk_1F16C7418, @"CAMUserPreferenceWindowedPreviewAspectModeForPhotoModes", &unk_1F16C7418, @"CAMUserPreferenceWindowedPreviewAspectModeForVideoModes", MEMORY[0x1E695E110], @"CAMUserPreferenceDidMigrate", v54, @"CAMUserPreferenceCaptureMode", v53, @"CAMUserPreferenceCaptureDevice", v52, @"CAMUserPreferenceDesiredFlashMode", v50, @"CAMUserPreferenceTorchMode", v49, @"CAMUserPreferenceDesiredHDRMode", v47, @"CAMUserPreferenceTimerDuration", v51, @"CAMUserPreferenceAspectRatioCrop", v48, @"CAMUserPreferenceDesiredPhotoModeEffectFilterType", v28, @"CAMUserPreferenceSquareModeEffectFilterType", v27, @"CAMUserPreferencePortraitModeEffectFilterType", v26, @"CAMUserPreferencePhotoModeLastCapturedEffectFilterType", v25, @"CAMUserPreferenceSquareModeLastCapturedEffectFilterType", v46, @"CAMUserPreferencePortraitModeLastCapturedEffectFilterType", v45, @"CAMUserPreferencePortraitModeLightingEffectType", v24, @"CAMUserPreferencePortraitModeApertureValue"}];

  if ([v56 isLivePhotoSupported])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v38, "irisMode")}];
    [v11 setObject:v12 forKeyedSubscript:@"CAMUserPreferenceDesiredIrisMode"];
  }

  if (([v56 isDualSupported] & 1) != 0 || (objc_msgSend(v56, "isWideDualSupported") & 1) != 0 || objc_msgSend(v56, "isTripleCameraSupported"))
  {
    v13 = MEMORY[0x1E695E110];
    [v11 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"CAMUserPreferenceDisableCameraSwitchingDuringVideoRecording"];
    [v11 setObject:v13 forKeyedSubscript:@"CAMUserPreferencePortraitModeDidAcknowledgeDescription_12"];
  }

  if ([v56 isAutoLowLightVideoSupported])
  {
    [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"CAMUserPreferenceAutoLowLightVideoEnabled"];
  }

  if ([v56 isNightModeSupported])
  {
    v14 = &unk_1F16C7490;
  }

  else
  {
    v14 = &unk_1F16C7430;
  }

  [v11 setObject:v14 forKeyedSubscript:@"CAMUserPreferenceDesiredNightMode"];
  [v11 setObject:&unk_1F16C7430 forKeyedSubscript:@"CAMUserPreferenceNightModeConflicts"];
  [v11 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"CAMUserPreferencePreserveNightMode"];
  v15 = [v56 defaultPhotoResolutionForMode:0 devicePosition:0 encodingBehavior:1];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
  [v11 setObject:v16 forKeyedSubscript:@"CAMUserPreferenceMaximumHEICPhotoResolution"];

  [v11 setObject:&unk_1F16C7400 forKeyedSubscript:@"CAMUserPreferenceProRawFileFormat"];
  v17 = [v56 defaultPhotoResolutionForMode:0 devicePosition:0 encodingBehavior:2];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
  [v11 setObject:v18 forKeyedSubscript:@"CAMUserPreferenceMaximumRAWPhotoResolution"];

  LODWORD(v22) = 0;
  [v56 defaultZoomFactorForMode:6 device:objc_msgSend(v56 videoConfiguration:"preferredDeviceForPosition:mode:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:" captureOrientation:0 videoStabilizationStrength:6 videoEncodingBehavior:0 customLens:0 outputToExternalStorage:0) isTrueVideo:0 frontRearSimultaneousVideoEnabled:1 prefersHDR10BitVideo:0 smartFramingFieldOfView:1 overrodeWithForcedZoomValue:{0, v22, 0, 0}];
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [v11 setObject:v19 forKeyedSubscript:@"CAMUserPreferencePortraitModeRearZoomValue"];

  if ([v56 photoModeDepthSuggestionSupported])
  {
    [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"CAMUserPreferenceEnableDepthSuggestion"];
  }

  if ([v56 isInternalInstall])
  {
    v20 = MEMORY[0x1E695E110];
    [v11 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"CAMUserPreferenceEnableLockAsShutter"];
    [v11 setObject:v20 forKeyedSubscript:@"CAMUserPreferenceDebugTransientAssets"];
    [v11 setObject:v20 forKeyedSubscript:@"CAMUserPreferenceDebugBurstRespectsEncodingSettings"];
  }

  [v40 registerDefaults:v11];
  [(CAMUserPreferences *)v42 _setUnderlyingUserDefaults:v40];
  v21 = preferences_sharedInstance;
  preferences_sharedInstance = v42;
}

+ (id)_defaultCaptureConfiguration
{
  v3 = +[CAMCaptureCapabilities capabilities];
  if ([v3 isFrontFlashSupported])
  {
    v4 = 2;
  }

  else
  {
    v5 = [v3 isBackFlashSupported];
    v4 = 2;
    if (!v5)
    {
      v4 = 0;
    }
  }

  v34 = v4;
  v6 = [v3 isLivePhotoSupported];
  v7 = [v3 isLivePhotoAutoModeSupported];
  v31 = [v3 isSuperWideAutoMacroSupported];
  v8 = [a1 defaultMode];
  v9 = [a1 defaultDevice];
  v33 = [a1 defaultFilterTypeForMode:0];
  v32 = [a1 defaultFilterTypeForMode:4];
  v30 = [a1 defaultFilterTypeForMode:6];
  v29 = [a1 defaultLightingTypeForMode:6];
  v10 = [v3 semanticStylesVersion];
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (v10 == 1)
  {
    v12 = [MEMORY[0x1E6993890] defaultStylesIncludingSystemStyles:objc_msgSend(v3 systemStylePlaceholder:"allowSystemSmartStylesInPicker") creativeStyles:{1, 1}];
    v13 = [v12 indexOfObjectPassingTest:&__block_literal_global_12];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    v28 = v14;
    v11 = v13;
  }

  else
  {
    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = +[CAMSemanticStyle defaultStyles];
    }

    v28 = 0;
  }

  if ((v9 - 1) > 0xA)
  {
    v15 = 0;
  }

  else
  {
    v15 = qword_1A3A68210[v9 - 1];
  }

  if (v7)
  {
    v16 = 2;
  }

  else
  {
    v16 = v6;
  }

  v17 = [v3 defaultPhotoResolutionForMode:v8 devicePosition:v15 encodingBehavior:1];
  v18 = [CAMCaptureConfiguration alloc];
  v19 = +[CAMCaptureCapabilities capabilities];
  [v19 defaultPortraitEffectIntensity];
  v21 = v20;
  v22 = [a1 _defaultExposureBiasesByMode];
  LOBYTE(v27) = 0;
  LOWORD(v26) = [v3 isZoomPIPSupported];
  LOBYTE(v25) = 0;
  v23 = [(CAMCaptureConfiguration *)v18 initWithCaptureMode:v8 captureDevice:v9 videoConfiguration:0 audioConfiguration:0 mixAudioWithOthers:1 flashMode:v34 torchMode:0.0 HDRMode:v21 irisMode:0 timerDuration:1 photoModeAspectRatioCrop:v16 photoModeEffectFilterType:0 squareModeEffectFilterType:0 portraitModeEffectFilterType:v33 portraitModeLightingEffectType:v32 portraitModeApertureValue:v30 portraitModeIntensityValue:v29 mirrorFrontCameraCaptures:v25 exposureBiasesByMode:v22 macroMode:v31 photoResolution:v17 rawMode:0 proResVideoMode:0 semanticStyles:v12 selectedSemanticStyleIndex:v28 smartStyleSystemStyleIndex:v11 videoStabilizationMode:0 zoomPIPEnabled:v26 optionalDepthEffectEnabled:0 sharedLibraryMode:v27 frontRearSimultaneousVideoEnabled:?];

  return v23;
}

- (int64_t)photoEncodingBehavior
{
  v3 = +[CAMCaptureCapabilities capabilities];
  if ([v3 isHEVCEncodingSupported])
  {
    v4 = [(CAMUserPreferences *)self _preferHEVCWhenAvailable];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldShowQRBanners
{
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = ([v3 hostProcess] & 0xFFFFFFFFFFFFFFFBLL) == 0;
  if (![(CAMUserPreferences *)self QRBannersEnabledInSettings]&& ![(CAMUserPreferences *)self forceEnableQRBanners])
  {
    v4 = 0;
  }

  return v4;
}

- (void)writePreferences
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 fallbackCameraEnabled];

  if (v4)
  {
    v5 = os_log_create("com.apple.camera", "UserPreferences");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Skip writePreferences since we are in a fallback state", buf, 2u);
    }
  }

  else
  {
    v5 = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [v5 setInteger:[(CAMUserPreferences *)self _previewAspectModeForPhotoModes] forKey:@"CAMUserPreferencePreviewAspectModeForPhotoModes"];
    [v5 setInteger:[(CAMUserPreferences *)self _previewAspectModeForVideoModes] forKey:@"CAMUserPreferencePreviewViewAspectMode"];
    [v5 setInteger:[(CAMUserPreferences *)self _windowedPreviewAspectModeForPhotoModes] forKey:@"CAMUserPreferenceWindowedPreviewAspectModeForPhotoModes"];
    [v5 setInteger:[(CAMUserPreferences *)self _windowedPreviewAspectModeForVideoModes] forKey:@"CAMUserPreferenceWindowedPreviewAspectModeForVideoModes"];
    v6 = [(CAMUserPreferences *)self captureConfiguration];
    v7 = [(CAMUserPreferences *)self conflictingControlConfiguration];
    -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v7 desiredFlashMode], @"CAMUserPreferenceDesiredFlashMode");
    -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v7 desiredHDRMode], @"CAMUserPreferenceDesiredHDRMode");
    v8 = [v6 device] - 1;
    if (v8 > 0xA)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_1A3A68210[v8];
    }

    v10 = +[CAMCaptureCapabilities capabilities];
    if ([v10 isLivePhotoSupported])
    {
      -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v6 irisMode], @"CAMUserPreferenceDesiredIrisMode");
    }

    v11 = [v10 hostProcess];
    if (v11 <= 4 && v11 != 3)
    {
      -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v6 mode], @"CAMUserPreferenceCaptureMode");
      [v5 setInteger:v9 forKey:@"CAMUserPreferenceCaptureDevice"];
    }

    -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v6 torchMode], @"CAMUserPreferenceTorchMode");
    -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v6 timerDuration], @"CAMUserPreferenceTimerDuration");
    if ([v10 isAspectRatioCropSupported])
    {
      -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v6 photoModeAspectRatioCrop], @"CAMUserPreferenceAspectRatioCrop");
    }

    if ([v10 isLiveFilteringSupported])
    {
      -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v6 photoModeEffectFilterType], @"CAMUserPreferenceDesiredPhotoModeEffectFilterType");
      -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v6 squareModeEffectFilterType], @"CAMUserPreferenceSquareModeEffectFilterType");
      [v5 setInteger:[(CAMUserPreferences *)self photoModeLastCapturedEffectFilterType] forKey:@"CAMUserPreferencePhotoModeLastCapturedEffectFilterType"];
      [v5 setInteger:[(CAMUserPreferences *)self squareModeLastCapturedEffectFilterType] forKey:@"CAMUserPreferenceSquareModeLastCapturedEffectFilterType"];
      -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v6 portraitModeEffectFilterType], @"CAMUserPreferencePortraitModeEffectFilterType");
      [v5 setInteger:[(CAMUserPreferences *)self portraitModeLastCapturedEffectFilterType] forKey:@"CAMUserPreferencePortraitModeLastCapturedEffectFilterType"];
    }

    [v5 setInteger:[(CAMUserPreferences *)self portraitModeRearDevice] forKey:@"CAMUserPreferencePortraitModeRearDevice"];
    [(CAMUserPreferences *)self portraitModeRearZoomValue];
    *&v12 = v12;
    [v5 setFloat:@"CAMUserPreferencePortraitModeRearZoomValue" forKey:v12];
    if ([v10 arePortraitEffectsSupported])
    {
      -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v6 portraitModeLightingEffectType], @"CAMUserPreferencePortraitModeLightingEffectType");
    }

    if ([v10 isDepthEffectApertureSupported])
    {
      [v6 portraitModeApertureValue];
      *&v13 = v13;
      [v5 setFloat:@"CAMUserPreferencePortraitModeApertureValue" forKey:v13];
      [v6 portraitModeIntensityValue];
      *&v14 = v14;
      [v5 setFloat:@"CAMUserPreferencePortraitEffectIntensityValue" forKey:v14];
    }

    if ([v10 isExposureSliderSupported])
    {
      v15 = [v6 exposureBiasesByMode];
      [CAMPreferencesUtilities setDictionary:v15 forKey:@"CAMUserPreferenceExposureBiasByMode" defaults:v5];
    }

    if ([v10 isSuperWideAutoMacroSupported])
    {
      -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v7 desiredMacroMode], @"CAMUserPreferenceAutoMacroMode");
    }

    if ([(CAMUserPreferences *)self shouldUseDepthSuggestionInPhotoMode])
    {
      -[NSObject setBool:forKey:](v5, "setBool:forKey:", [v6 optionalDepthEffectEnabled], @"CAMUserPreferenceOptionalDepthEffectEnabled");
    }

    if ([(CAMUserPreferences *)self rawControlEnabled])
    {
      -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v7 desiredRAWMode], @"CAMUserPreferencesDesiredRAWMode");
    }

    if ([(CAMUserPreferences *)self rawControlEnabled]|| [(CAMUserPreferences *)self photoFormatControlEnabled])
    {
      -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v7 photoFormatConflicts], @"CAMUserPreferencesRAWConflicts");
    }

    if ([(CAMUserPreferences *)self photoFormatControlEnabled])
    {
      if ([v7 desiredPhotoResolution] > 2 || -[CAMUserPreferences rawControlEnabled](self, "rawControlEnabled") && objc_msgSend(v7, "desiredRAWMode") == 1)
      {
        -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v7 desiredPhotoResolution], @"CAMUserPreferencesDesiredPhotoResolution");
      }

      else
      {
        [v5 removeObjectForKey:@"CAMUserPreferencesDesiredPhotoResolution"];
      }
    }

    if ([v10 isProResVideoSupported] && -[CAMUserPreferences isProResControlEnabled](self, "isProResControlEnabled"))
    {
      -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v6 proResVideoMode], @"CAMUserPreferenceDesiredProResVideoMode");
    }

    if ([v10 isNightModeSupported])
    {
      -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v7 desiredNightModeControlMode], @"CAMUserPreferenceDesiredNightMode");
      -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v7 nightModeConflicts], @"CAMUserPreferenceNightModeConflicts");
    }

    if (([v10 semanticStylesSupport] & 8) != 0)
    {
      v16 = [v10 smartStylesSupported];
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v18 = [v6 semanticStyles];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __38__CAMUserPreferences_writePreferences__block_invoke;
      v56[3] = &unk_1E76F91F0;
      v59 = v16;
      v19 = v6;
      v57 = v19;
      v20 = v17;
      v58 = v20;
      [v18 enumerateObjectsUsingBlock:v56];

      CFPreferencesSetAppValue([(CAMUserPreferences *)self _semanticStylesKey], v20, @"com.apple.camera");
      if (v16)
      {
        v21 = [v19 smartStyleSystemStyleIndex];
        v22 = [v19 semanticStyles];
        v54 = v7;
        if (v21 >= [v22 count])
        {
          v24 = 0;
        }

        else
        {
          v23 = [v19 semanticStyles];
          v24 = [v23 objectAtIndexedSubscript:{objc_msgSend(v19, "smartStyleSystemStyleIndex")}];
        }

        v25 = [(CAMUserPreferences *)self lastReadSystemStyle];
        v26 = 0;
        v55 = v25;
        v27 = 0;
        if (v24 && v25)
        {
          if ([v24 isEqualToSmartStyle:v25])
          {
            v26 = 0;
            v27 = 0;
          }

          else
          {
            v27 = [v24 dictionaryRepresentation];
            v26 = [v55 dictionaryRepresentation];
          }
        }

        v53 = v24;
        CFPreferencesSetAppValue(@"CAMUserPreferenceSmartStylesSystemStyleOverride", v27, @"com.apple.camera");
        CFPreferencesSetAppValue(@"CAMUserPreferenceSmartStylesSystemStyleOverrideReference", v26, @"com.apple.camera");
        v28 = [v19 selectedSemanticStyleIndex];
        if (v28 == [v19 smartStyleSystemStyleIndex])
        {
          CFPreferencesSetAppValue(@"CAMUserPreferenceSmartStylesSelectedPreset", 0, @"com.apple.camera");
        }

        else
        {
          v29 = [v19 selectedSemanticStyleIndex];
          v30 = [v19 semanticStyles];
          [(CAMUserPreferences *)self _writeSmartStylePresetStringForIndex:v29 inStyles:v30 key:@"CAMUserPreferenceSmartStylesSelectedPreset"];
        }

        v7 = v54;
      }

      else
      {
        CFPreferencesSetAppValue(@"CAMUserPreferenceSelectedSemanticStyleIndex", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v19, "selectedSemanticStyleIndex")}], @"com.apple.camera");
      }

      CFPreferencesAppSynchronize(@"com.apple.camera");
    }

    if ([objc_opt_class() isSharedLibrarySupportedAndEnabledForCapabilities:v10])
    {
      v31 = [v6 sharedLibraryMode];
      [v5 setInteger:v31 forKey:@"CAMUserPreferenceSharedLibraryMode"];
      v32 = os_log_create("com.apple.camera", "SharedLibrary");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = CAMSharedLibraryModeDescription(v31);
        *buf = 138543362;
        v61 = v33;
        _os_log_impl(&dword_1A3640000, v32, OS_LOG_TYPE_DEFAULT, "[CAMUserPreferences] write sharedLibraryMode:%{public}@", buf, 0xCu);
      }

      v34 = [(CAMUserPreferences *)self sharedLibraryLastLocation];
      if (v34)
      {
        v35 = MEMORY[0x1E696ACC8];
        v36 = [(CAMUserPreferences *)self sharedLibraryLastLocation];
        v37 = [v35 archivedDataWithRootObject:v36 requiringSecureCoding:1 error:0];
      }

      else
      {
        v37 = 0;
      }

      [v5 setObject:v37 forKey:@"CAMUserPreferenceSharedLibraryLastLocation"];
      [v5 setBool:[(CAMUserPreferences *)self sharedLibraryLastLocationAcquiredDuringTrip] forKey:@"CAMUserPreferenceSharedLibraryLastLocationAcquiredDuringTrip"];
      v38 = [(CAMUserPreferences *)self sharedLibraryLastDiscoveryDate];
      [v5 setObject:v38 forKey:@"CAMUserPreferenceSharedLibraryLastDiscoveryDate"];

      v39 = [(CAMUserPreferences *)self sharedLibraryLastDiscoveryLocation];
      if (v39)
      {
        v40 = MEMORY[0x1E696ACC8];
        v41 = [(CAMUserPreferences *)self sharedLibraryLastDiscoveryLocation];
        v42 = [v40 archivedDataWithRootObject:v41 requiringSecureCoding:1 error:0];
      }

      else
      {
        v42 = 0;
      }

      [v5 setObject:v42 forKey:@"CAMUserPreferenceSharedLibraryLastDiscoveryLocation"];
      v43 = [(CAMUserPreferences *)self sharedLibraryLastUserActionDate];
      [v5 setObject:v43 forKey:@"CAMUserPreferenceSharedLibraryLastUserActionDate"];

      v44 = [(CAMUserPreferences *)self sharedLibraryLastUserActionLocation];
      if (v44)
      {
        v45 = MEMORY[0x1E696ACC8];
        v46 = [(CAMUserPreferences *)self sharedLibraryLastUserActionLocation];
        v47 = [v45 archivedDataWithRootObject:v46 requiringSecureCoding:1 error:0];
      }

      else
      {
        v47 = 0;
      }

      [v5 setObject:v47 forKey:@"CAMUserPreferenceSharedLibraryLastUserActionLocation"];
    }

    else
    {
      [v5 removeObjectForKey:@"CAMUserPreferenceSharedLibraryLastLocation"];
      [v5 removeObjectForKey:@"CAMUserPreferenceSharedLibraryLastLocationAcquiredDuringTrip"];
      [v5 removeObjectForKey:@"CAMUserPreferenceSharedLibraryLastDiscoveryDate"];
      [v5 removeObjectForKey:@"CAMUserPreferenceSharedLibraryLastDiscoveryLocation"];
      [v5 removeObjectForKey:@"CAMUserPreferenceSharedLibraryLastUserActionDate"];
      [v5 removeObjectForKey:@"CAMUserPreferenceSharedLibraryLastUserActionLocation"];
      [v5 removeObjectForKey:@"CAMUserPreferenceSharedLibraryMode"];
    }

    if ([v10 isActionModeControlSupported])
    {
      -[NSObject setInteger:forKey:](v5, "setInteger:forKey:", [v6 videoStabilizationMode], @"CAMUserPreferenceVideoStabilizationMode");
    }

    if ([v10 isHalfPressSupported])
    {
      v48 = [(CAMUserPreferences *)self openHalfPressSpotlightControls];
      v49 = [v48 allObjects];
      [v5 setObject:v49 forKey:@"CAMUserPreferenceOpenHalfPressSpotlightControls"];
    }

    if ([v10 isFrontRearSimultaneousVideoSupported])
    {
      [v5 setBool:[(CAMUserPreferences *)self shouldEnableFrontRearSimultaneousVideo] forKey:@"CAMUserPreferenceEnableFrontRearSimultaneousVideo"];
    }

    if ([v10 allowControlDrawer])
    {
      v50 = objc_opt_class();
      v51 = [(CAMUserPreferences *)self preferredDrawerControlByMode];
      v52 = [v50 _persistenceDictionaryForPreferredDrawerControlByMode:v51];

      [v5 setObject:v52 forKey:@"CAMUserPreferencesPreferredDrawerControlByMode"];
    }

    if ([v10 isSmartFramingSupported])
    {
      [v5 setBool:[(CAMUserPreferences *)self wantsSmartFramingAutoZoomDefault] forKey:@"CAMUserPreferencesWantsSmartFramingAutoZoomDefault"];
      [v5 setBool:[(CAMUserPreferences *)self wantsSmartFramingAutoRotationDefault] forKey:@"CAMUserPreferencesWantsSmartFramingAutoRotationDefault"];
    }

    [(CAMUserPreferences *)self _updateLastWrittenSettingsDate];
    [(CAMUserPreferences *)self _setHasReadLastWrittenValues:0];
  }
}

+ (BOOL)_fallBackToCameraDefaultsForBundleIdentifier:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v5 = [v3 setWithObjects:{@"com.apple.MobileSMS", @"com.apple.camera.CameraMessagesApp", @"com.apple.Camera-API", @"com.apple.AssetExplorerTester", 0}];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (int64_t)defaultDevicePosition
{
  v2 = +[CAMCaptureCapabilities capabilities];
  v3 = [v2 isBackCameraSupported] ^ 1;

  return v3;
}

+ (id)defaultCaptureConfiguration
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CAMUserPreferences_defaultCaptureConfiguration__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultCaptureConfiguration_onceToken != -1)
  {
    dispatch_once(&defaultCaptureConfiguration_onceToken, block);
  }

  v2 = defaultCaptureConfiguration_configuration;

  return v2;
}

uint64_t __49__CAMUserPreferences_defaultCaptureConfiguration__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _defaultCaptureConfiguration];
  v2 = defaultCaptureConfiguration_configuration;
  defaultCaptureConfiguration_configuration = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)filterTypesForMode:(int64_t)a3
{
  v4 = +[CAMCaptureCapabilities capabilities];
  if ([v4 isLiveFilteringSupported])
  {
    v5 = a3 > 6;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1E76F9308[a3];
  }

  return v6;
}

- (int64_t)_sanitizeEffectFilterType:(int64_t)a3 forMode:(int64_t)a4
{
  v6 = [(CAMUserPreferences *)self filterTypesForMode:a4];
  if (!v6 || ([MEMORY[0x1E696AD98] numberWithInteger:a3], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "indexOfObject:", v7), v7, v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    a3 = [CAMUserPreferences defaultFilterTypeForMode:a4];
  }

  return a3;
}

+ (int64_t)defaultLightingTypeForMode:(int64_t)a3
{
  v4 = +[CAMCaptureCapabilities capabilities];
  LODWORD(a3) = [v4 isLightingControlSupportedForMode:a3];

  return a3;
}

- (int64_t)ppt_readPortraitLightingType
{
  v3 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  v4 = -[CAMUserPreferences _sanitizeLightingType:forMode:](self, "_sanitizeLightingType:forMode:", [v3 integerForKey:@"CAMUserPreferencePortraitModeLightingEffectType"], 6);

  return v4;
}

- (int64_t)_sanitizeLightingType:(int64_t)a3 forMode:(int64_t)a4
{
  v5 = [objc_opt_class() defaultLightingTypeForMode:a4];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = +[CAMCaptureCapabilities capabilities];
  v8 = [v7 supportedEffectSetForDevicePosition:0];
  v9 = [v7 supportedEffectSetForDevicePosition:1];
  v10 = 0;
  if (v8 <= 3)
  {
    v10 = qword_1E76F9340[v8];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v12 = [v10 containsObject:v11];

  if ((v12 & 1) == 0)
  {
    if (v9 > 3)
    {
      v13 = 0;
    }

    else
    {
      v13 = qword_1E76F9340[v9];
    }

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v15 = [v13 containsObject:v14];

    if (!v15)
    {
      a3 = v6;
    }
  }

  return a3;
}

+ (id)_defaultExposureBiasesByMode
{
  v5[8] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F16C7400;
  v4[1] = &unk_1F16C7598;
  v5[0] = &unk_1F16C7580;
  v5[1] = &unk_1F16C7580;
  v4[2] = &unk_1F16C7448;
  v4[3] = &unk_1F16C75B0;
  v5[2] = &unk_1F16C7580;
  v5[3] = &unk_1F16C7580;
  v4[4] = &unk_1F16C7418;
  v4[5] = &unk_1F16C75C8;
  v5[4] = &unk_1F16C7580;
  v5[5] = &unk_1F16C7580;
  v4[6] = &unk_1F16C75E0;
  v4[7] = &unk_1F16C74A8;
  v5[6] = &unk_1F16C7580;
  v5[7] = &unk_1F16C7580;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:8];

  return v2;
}

- (void)_publishAnalyticsIfNeeded
{
  v7 = CFPreferencesCopyAppValue(@"CAMUserPreferenceLastCoreAnalyticsPublishDate", @"com.apple.camera");
  v3 = [MEMORY[0x1E695DF00] now];
  if (!v7 || ([MEMORY[0x1E695DEE8] currentCalendar], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isDate:inSameDayAsDate:", v7, v3), v4, (v5 & 1) == 0))
  {
    v6 = [[CAMAnalyticsPreferencesEvent alloc] initWithPreferences:self];
    [(CAMAnalyticsEvent *)v6 publish];
    CFPreferencesSetAppValue(@"CAMUserPreferenceLastCoreAnalyticsPublishDate", v3, @"com.apple.camera");
    CFPreferencesAppSynchronize(@"com.apple.camera");
  }
}

- (void)_publishAnalyticsIfNeededAfterAppLaunch
{
  objc_initWeak(&location, self);
  v2 = [MEMORY[0x1E69C4598] sharedScheduler];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__CAMUserPreferences__publishAnalyticsIfNeededAfterAppLaunch__block_invoke;
  v3[3] = &unk_1E76F8580;
  objc_copyWeak(&v4, &location);
  [v2 scheduleDeferredMainQueueTask:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __61__CAMUserPreferences__publishAnalyticsIfNeededAfterAppLaunch__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _publishAnalyticsIfNeeded];
    WeakRetained = v2;
  }
}

- (int64_t)defaultDeviceForModeChange:(int64_t)a3 devicePosition:(int64_t)a4
{
  if (a4 == 1)
  {
    return 1;
  }

  if (a4)
  {
    return 0;
  }

  if (a3 != 6)
  {
    if (a3 == 8)
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  if (![(CAMUserPreferences *)self preservePortraitZoom])
  {
    return 0;
  }

  return [(CAMUserPreferences *)self portraitModeRearDevice];
}

- (double)defaultZoomFactorForGraphConfiguration:(id)a3 captureOrientation:(int64_t)a4 outputToExternalStorage:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = +[CAMCaptureCapabilities capabilities];
  v21 = 0;
  [v9 defaultZoomFactorForGraphConfiguration:v8 captureOrientation:a4 customLens:-[CAMUserPreferences defaultCustomLens](self outputToExternalStorage:"defaultCustomLens") overrodeWithForcedZoomValue:{v5, &v21}];
  v11 = v10;
  v12 = [v8 mode];
  v13 = [v8 device];
  v14 = [v8 videoConfiguration];
  v15 = [v8 videoStabilizationStrength];
  v16 = [v8 frontRearSimultaneousVideoEnabled];

  v17 = [v9 resolvedDeviceForDesiredDevice:v13 mode:v12 videoConfiguration:v14 videoStabilizationStrength:v15 frontRearSimultaneousVideoEnabled:v16];
  if ((v21 & 1) == 0 && v12 == 6)
  {
    v18 = v17;
    if ([(CAMUserPreferences *)self preservePortraitZoom])
    {
      if (v18 == [(CAMUserPreferences *)self portraitModeRearDevice])
      {
        [(CAMUserPreferences *)self portraitModeRearZoomValue];
        v11 = v19;
      }
    }
  }

  return v11;
}

- (id)videoThumbnailOutputConfigurationForMode:(int64_t)a3 devicePosition:(int64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [(CAMUserPreferences *)self filterTypesForMode:a3, a4];
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = +[CAMEffectFilterManager filtersForFilterType:lightingType:applyDepthEffect:](CAMEffectFilterManager, "filtersForFilterType:lightingType:applyDepthEffect:", [*(*(&v17 + 1) + 8 * i) integerValue], 0, 0);
          v12 = [v11 firstObject];

          if (v12)
          {
            [v5 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    [MEMORY[0x1E69938A8] defaultScreenScaleContentSize];
    v15 = [[CAMVideoThumbnailOutputConfiguration alloc] initWithThumbnailSize:v5 filters:v13, v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)resolveDesiredPhotoResolution:(int64_t)a3 livePhotoMode:(int64_t)a4 rawMode:(int64_t)a5 conflicts:(unint64_t)a6 mode:(int64_t)a7 device:(int64_t)a8 resolvedPhotoResolution:(int64_t *)a9 resolvedLivePhotoMode:(int64_t *)a10
{
  v11 = a6 & 2;
  v12 = 2;
  if ((a6 & 2) == 0)
  {
    v12 = 3;
  }

  if (a3 == 3)
  {
    v13 = v12;
  }

  else
  {
    v13 = a3;
  }

  [(CAMUserPreferences *)self fallbackPhotoFormatForDesiredFormat:[(CAMUserPreferences *)self photoEncodingBehaviorForMode:a7 resolvedRAWMode:a5 isCapturingVideo:0 isTrueVideo:0] mode:v13 device:a7, a8];
  if (v14 == 3 && v11 == 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = a4;
  }

  if (a9)
  {
    *a9 = v14;
  }

  if (a10)
  {
    *a10 = v16;
  }
}

- (BOOL)readPreferencesWithOverrides:(id)a3 emulationMode:(int64_t)a4 callActive:(BOOL)a5 shouldResetCaptureConfiguration:(BOOL *)a6 bypassXPCWhenReadingSystemStyle:(BOOL)a7
{
  v319 = a7;
  v7 = a5;
  v424 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = +[CAMCaptureCapabilities capabilities];
  v11 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  if (([v11 BOOLForKey:@"CAMUserPreferenceDidMigrate"] & 1) == 0)
  {
    +[CAMUserPreferencesMigrator migrateLegacyPreferences];
  }

  [objc_opt_class() performSmartStylesOnboardingAcknowledgementResetWithCapabilities:v10];
  v12 = [objc_opt_class() defaultCaptureConfiguration];
  v345 = [v11 BOOLForKey:@"CAMUserPreferencePreserveAllSettings"];
  self->_preserveCaptureMode = [v11 BOOLForKey:@"CAMUserPreferencePreserveCaptureMode"];
  v13 = [v10 isPreserveCreativeControlsSupported];
  if (v13)
  {
    LOBYTE(v13) = [v11 BOOLForKey:@"CAMUserPreferencePreserveEffectFilter"];
  }

  self->_preserveEffectFilter = v13;
  v14 = [v10 smartStylesSupported];
  if (v14)
  {
    LOBYTE(v14) = [v11 BOOLForKey:@"CAMUserPreferencePreserveSmartStyle"];
  }

  self->_preserveSmartStyle = v14;
  self->_preserveLivePhoto = [v11 BOOLForKey:@"CAMUserPreferencePreserveLivePhoto"];
  self->_preserveExposure = [v11 BOOLForKey:@"CAMUserPreferencePreserveExposure"];
  self->_preserveNightMode = [v11 BOOLForKey:@"CAMUserPreferencePreserveNightMode"];
  [v10 _forcedInitialZoomDisplayFactor];
  if (v15 == 0.0)
  {
    v16 = [v11 BOOLForKey:@"CAMUserPreferencePreservePortraitZoom"];
  }

  else
  {
    v16 = 0;
  }

  self->_preservePortraitZoom = v16;
  if ([v10 fallbackCameraEnabled])
  {
    self->_preservePortraitZoom = 0;
  }

  self->_preserveRAW = [v11 BOOLForKey:@"CAMUserPreferencePreserveRAW"];
  self->_preserveProRes = [v11 BOOLForKey:@"CAMUserPreferencePreserveProRes"];
  v17 = [v10 isEnhancedStabilizationSupported];
  if (v17)
  {
    LOBYTE(v17) = [v11 BOOLForKey:@"CAMUserPreferenceEnhancedVideoStabilization"];
  }

  self->_enhancedVideoStabilization = v17;
  v18 = [v10 isActionModeControlSupported];
  if (v18)
  {
    LOBYTE(v18) = [v11 BOOLForKey:@"CAMUserPreferenceActionModeLowLightEnabled"];
  }

  self->_actionModeLowLightEnabled = v18;
  self->_preserveVideoStabilization = [v11 BOOLForKey:@"CAMUserPreferencePreserveVideoStabilization"];
  v19 = [v10 isFrontRearSimultaneousVideoSupported];
  if (v19)
  {
    LOBYTE(v19) = [v11 BOOLForKey:@"CAMUserPreferencePreserveFrontRearSimultaneousVideoEnabled"];
  }

  self->__preserveFrontRearSimultaneousVideoEnabled = v19;
  if ([v10 isLinearDNGSupported])
  {
    preserveRAW = self->_preserveRAW;
  }

  else
  {
    preserveRAW = [v11 BOOLForKey:@"CAMUserPreferencePreservePhotoResolution"];
  }

  self->_preservePhotoResolution = preserveRAW;
  [objc_opt_class() performApertureMigrationWithCapabilities:v10];
  self->_preserveAperture = [v11 BOOLForKey:@"CAMUserPreferencePreserveAperture"];
  self->_videoConfiguration = [v11 integerForKey:*MEMORY[0x1E69C0630]];
  self->_slomoConfiguration = [v11 integerForKey:*MEMORY[0x1E69C0628]];
  self->_videoConfigurationControlEnabled = [v11 BOOLForKey:@"CAMUserPreferenceEnableVideoConfigurationControl"];
  v21 = [v10 isPALVideoSupported];
  v370 = v9;
  if (v21)
  {
    LOBYTE(v21) = [v11 BOOLForKey:@"CAMUserPreferenceEnablePALVideoFormats"];
  }

  self->_PALVideoEnabled = v21;
  self->_cinematicConfiguration = [v11 integerForKey:@"CAMUserPreferenceCinematicConfiguration"];
  v22 = [v10 defaultPhotoResolutionForMode:0 devicePosition:1 encodingBehavior:1];
  if ([v10 isPhotoResolutionSupported:2 forPhotoEncoding:1])
  {
    v23 = [v11 integerForKey:@"CAMUserPreferenceMaximumHEICPhotoResolution"];
    if ([v10 dynamicAspectRatioSupported])
    {
      v22 = v23;
    }
  }

  else
  {
    v23 = [v10 defaultPhotoResolutionForMode:0 devicePosition:0 encodingBehavior:1];
  }

  if (![v10 isPhotoResolutionSupported:v23 forPhotoEncoding:1])
  {
    v23 = 0;
  }

  self->__backPreferredHEICPhotoResolution = v23;
  self->__frontPreferredHEICPhotoResolution = v22;
  if ([v10 enhancedRAWResolutionSupported] && objc_msgSend(v10, "isLinearDNGSupported"))
  {
    v24 = [v11 integerForKey:@"CAMUserPreferenceMaximumRAWPhotoResolution"];
  }

  else
  {
    v24 = 0;
  }

  if ([v10 isPhotoResolutionSupported:v24 forMode:0 device:0 photoEncoding:2])
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v341 = v25;
  self->_maximumRAWPhotoResolution = v25;
  if ([v10 isCustomLensSupportedForPhotoResolution:v23])
  {
    v26 = [v11 arrayForKey:@"CAMUserPreferencesSelectedCustomLensGroup"];
    v27 = [v10 supportedCustomLensGroupForGroup:v26];
    customLensGroup = self->_customLensGroup;
    self->_customLensGroup = v27;

    self->_defaultCustomLens = [v10 supportedCustomLensForLens:objc_msgSend(v11 inGroup:{"integerForKey:", @"CAMUserPreferencesDefaultCustomLens", self->_customLensGroup}];
  }

  else
  {
    v29 = self->_customLensGroup;
    self->_customLensGroup = 0;

    self->_defaultCustomLens = 0;
  }

  if (a4)
  {
    v30 = 0;
    LOBYTE(v31) = 0;
  }

  else
  {
    v31 = [v10 isAutoLowLightVideoSupported];
    if (v31)
    {
      LOBYTE(v31) = [v11 BOOLForKey:@"CAMUserPreferenceAutoLowLightVideoEnabled"];
      v30 = 1;
    }

    else
    {
      v30 = 0;
    }
  }

  self->_lowLightVideoEnabled = v31;
  if ([v10 isVariableFramerateVideoSupported])
  {
    [objc_opt_class() performLowLightVideoMigrationWithCapabilities:v10];
  }

  if (v30)
  {
    v32 = [v11 integerForKey:@"CAMUserPreferenceVFRMode"];
  }

  else
  {
    v32 = 0;
  }

  self->_VFRMode = v32;
  if ([v10 responsiveShutterSupported])
  {
    [objc_opt_class() performResponsiveShutterMigrationWithCapabilities:v10];
  }

  v33 = [v10 responsiveShutterSupported];
  if (v33)
  {
    LOBYTE(v33) = [v11 BOOLForKey:@"CAMUserPreferenceEnableResponsiveShutter"];
  }

  self->_responsiveShutterEnabled = v33;
  v34 = [v10 isSuperWideAutoMacroSupported];
  if (v34)
  {
    [objc_opt_class() performSuperWideAutoMacroMigrationWithCapabilities:v10];
  }

  [objc_opt_class() performHorizonLevelUpgradeWithCapabilities:v10];
  [objc_opt_class() performMostCompatibleConfirmationMigrationWithCapabilities:v10];
  self->_preserveSuperWideAutoMacro = [v11 BOOLForKey:@"CAMUserPreferencePreserveSuperWideAutoMacro"];
  if (v34)
  {
    v35 = [v11 BOOLForKey:@"CAMUserPreferenceEnableSuperWideAutoMacro"];
    self->_superWideAutoMacroControlAllowed = v35 ^ 1;
    if ((v35 & 1) == 0)
    {
      v36 = [v11 integerForKey:@"CAMUserPreferenceAutoMacroMode"];
      goto LABEL_61;
    }
  }

  else
  {
    self->_superWideAutoMacroControlAllowed = 0;
  }

  v36 = [v12 macroMode];
LABEL_61:
  v371 = v36;
  [CAMUserPreferences performAudioConfigurationMigrationWithCapabilities:v10];
  self->_preferredAudioConfiguration = [CAMUserPreferences selectedAudioConfigurationForCapabilities:v10];
  v37 = [v10 isMixAudioWithOthersSupported];
  if (v37)
  {
    LOBYTE(v37) = [v11 BOOLForKey:@"CAMUserPreferenceMixAudioWithOthers"];
  }

  self->_shouldMixAudioWithOthers = v37;
  v38 = [v10 isWindRemovalSupported];
  if (v38)
  {
    LOBYTE(v38) = [v11 BOOLForKey:@"CAMUserPreferenceAudioWindRemoval"];
  }

  self->_shouldEnableWindRemoval = v38;
  v39 = [v10 isWhiteBalanceLockingForVideoRecordingSupported];
  v367 = v7;
  if (v39)
  {
    LOBYTE(v39) = [v11 BOOLForKey:@"CAMUserPreferenceLockWhiteBalanceDuringVideoRecording"];
  }

  self->_shouldLockWhiteBalanceDuringVideoRecording = v39;
  self->_lockAsShutterEnabled = [v11 BOOLForKey:@"CAMUserPreferenceEnableLockAsShutter"];
  self->_shouldShowGridView = CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceShowGridOverlay", @"com.apple.camera", 0) != 0;
  v40 = [v11 BOOLForKey:@"CAMUserPreferenceShowHorizonLevelPlumb"];
  self->_shouldShowHorizonLevelView = v40;
  self->_shouldShowLevelView = v40;
  self->_QRBannersEnabledInSettings = [v11 BOOLForKey:@"CAMUserPreferenceShowQRCodeBanners"];
  v343 = v23;
  if ([v11 BOOLForKey:@"CAMUserPreferenceShowImageAnalysis"] && objc_msgSend(v10, "isImageAnalysisSupported"))
  {
    v41 = [MEMORY[0x1E695E000] standardUserDefaults];
    v42 = [v41 objectForKey:@"AppleLiveTextEnabled" inDomain:*MEMORY[0x1E696A400]];

    if (v42)
    {
      v43 = [v42 BOOLValue];
    }

    else
    {
      v44 = MEMORY[0x1E695DF58];
      v45 = [MEMORY[0x1E695DF58] _deviceLanguage];
      *buf = v45;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
      v47 = [v44 matchedLanguagesFromAvailableLanguages:&unk_1F16C9290 forPreferredLanguages:v46];

      v43 = [v47 count] != 0;
    }
  }

  else
  {
    v43 = 0;
  }

  self->_imageAnalysisEnabled = v43;
  self->_alwaysShowFlashIndicator = [v11 BOOLForKey:@"CAMUserPreferenceAlwaysShowFlashIndicator"];
  self->_alwaysShowLivePhotoIndicator = [v11 BOOLForKey:@"CAMUserPreferenceAlwaysShowLivePhotoIndicator"];
  self->_alwaysShowActionModeIndicator = [v11 BOOLForKey:@"CAMUserPreferenceAlwaysShowActionModeIndicator"];
  self->_alwaysShowFrontPIPIndicator = [v11 BOOLForKey:@"CAMUserPreferenceAlwaysShowFrontPIPIndicator"];
  if ([v10 isPreviewAspectRatioToggleSupportedForMode:0])
  {
    self->__previewAspectModeForPhotoModes = [v11 integerForKey:@"CAMUserPreferencePreviewAspectModeForPhotoModes"];
    v48 = [v11 integerForKey:@"CAMUserPreferencePreviewAspectModeForPhotoModes"];
  }

  else
  {
    self->__previewAspectModeForPhotoModes = 0;
    v48 = 1;
  }

  self->__windowedPreviewAspectModeForPhotoModes = v48;
  if ([v10 isPreviewAspectRatioToggleSupportedForMode:1])
  {
    self->__previewAspectModeForVideoModes = [v11 integerForKey:@"CAMUserPreferencePreviewViewAspectMode"];
    v49 = [v11 integerForKey:@"CAMUserPreferenceWindowedPreviewAspectModeForVideoModes"];
  }

  else
  {
    self->__previewAspectModeForVideoModes = 0;
    v49 = 1;
  }

  self->__windowedPreviewAspectModeForVideoModes = v49;
  self->__shouldDisableCameraSwitchingDuringVideoRecording = [v11 BOOLForKey:@"CAMUserPreferenceDisableCameraSwitchingDuringVideoRecording"];
  self->_didAcknowledgeCTMDescription = [v11 BOOLForKey:@"CAMUserPreferenceCTMDidAcknowledgeDescription"];
  self->_shouldUseVolumeUpBurst = [v11 BOOLForKey:@"CAMUserPreferenceVolumeUpBurst"];
  self->_overCapturePreviewEnabled = [v11 BOOLForKey:@"CAMUserPreferenceEnableViewOutsideTheFrame"];
  v50 = [v10 isMirroredFrontCapturesSupported];
  if (v50)
  {
    LOBYTE(v50) = [v11 BOOLForKey:@"CAMUserPreferenceMirrorFrontCameraCaptures"];
  }

  self->_shouldMirrorFrontCameraCaptures = v50;
  v51 = [v10 contentAwareDistortionCorrectionSupported];
  if (v51)
  {
    LOBYTE(v51) = [v11 BOOLForKey:@"CAMUserPreferenceContentAwareDistortionCorrection"];
  }

  self->_shouldUseContentAwareDistortionCorrection = v51;
  if ([(CAMUserPreferences *)self allowExplicitProResColorSpace])
  {
    v52 = [v11 integerForKey:@"CAMUserPreferenceExplicitProResColorSpace"];
    v53 = [v10 supportedProResColorSpaces];
    v54 = [MEMORY[0x1E696AD98] numberWithInteger:v52];
    v55 = [v53 containsObject:v54];

    if ((v55 & 1) == 0)
    {
      v56 = [v53 firstObject];
      v52 = [v56 integerValue];
    }
  }

  else
  {
    v52 = 1;
  }

  self->_explicitProResColorSpace = v52;
  v57 = [v10 isZoomPIPSupported];
  if (v57)
  {
    LOBYTE(v57) = [v11 BOOLForKey:@"CAMUserPreferenceEnableZoomPIP"];
  }

  v347 = v57;
  self->_zoomPIPEnabled = v57;
  if ([v10 isHalfPressSupported])
  {
    v58 = [v11 objectForKey:@"CAMUserPreferenceOpenHalfPressSpotlightControls"];
    v59 = v58;
    v60 = MEMORY[0x1E695E0F0];
    if (v58)
    {
      v60 = v58;
    }

    v61 = v60;

    v62 = [MEMORY[0x1E695DFD8] setWithArray:v61];
    openHalfPressSpotlightControls = self->_openHalfPressSpotlightControls;
    self->_openHalfPressSpotlightControls = v62;
  }

  v348 = [v10 isInternalInstall];
  if (v348)
  {
    self->_shouldDelayRemotePersistence = [v11 BOOLForKey:@"CAMUserPreferenceDebugTransientAssets"];
  }

  self->__lastViewedSettingsInterfaceDate = [v11 objectForKey:@"CAMUserPreferencesLastViewedSettingsInterfaceDate"];
  self->__lastWrittenSettingsDate = [v11 objectForKey:@"CAMUserPreferencesLastWrittenSettingsDate"];
  if ([v10 allowControlDrawer])
  {
    v64 = [v11 dictionaryForKey:@"CAMUserPreferencesPreferredDrawerControlByMode"];
    v65 = [objc_opt_class() _preferredDrawerControlByModeForPersistenceDictionary:v64];
    preferredDrawerControlByMode = self->_preferredDrawerControlByMode;
    self->_preferredDrawerControlByMode = v65;

    self->_preservePreferredDrawerControl = [v11 BOOLForKey:@"CAMUserPreferencePreservePreferredDrawerControl"];
  }

  self->_saveMessagesCapturesPhotoLibrary = [v11 BOOLForKey:@"CAMUserPreferencesSaveMessagesCapturesPhotoLibrary"];
  v67 = [v10 isFrontRearSimultaneousVideoSupported];
  if (v67)
  {
    LOBYTE(v67) = [v11 BOOLForKey:@"CAMUserPreferenceEnableFrontRearSimultaneousVideo"];
  }

  self->_shouldEnableFrontRearSimultaneousVideo = v67;
  v68 = [v10 isSmartFramingSupported];
  if (v68)
  {
    LOBYTE(v68) = [v11 BOOLForKey:@"CAMUserPreferencesWantsSmartFramingAutoZoomDefault"];
  }

  self->_wantsSmartFramingAutoZoomDefault = v68;
  v69 = [v10 isSmartFramingSupported];
  if (v69)
  {
    LOBYTE(v69) = [v11 BOOLForKey:@"CAMUserPreferencesWantsSmartFramingAutoRotationDefault"];
  }

  self->_wantsSmartFramingAutoRotationDefault = v69;
  if ([v10 isFrontHDRSupported] & 1) != 0 || (objc_msgSend(v10, "isBackHDRSupported"))
  {
    v70 = [v10 isModernHDRSupported];
    v71 = @"CAMUserPreferenceHDREV0";
    if (v70)
    {
      v71 = @"CAMUserPreferenceModernHDRKeepNormalPhoto";
    }

    v72 = v71;
    if ([v10 isSpatialOverCaptureSupported])
    {
      v73 = [v11 objectForKey:@"CAMUserPreferenceDidPerformSpatialOverCaptureEV0Disable13_0"];

      if (!v73)
      {
        if ([v11 BOOLForKey:v72])
        {
          [v11 setBool:0 forKey:v72];
          v74 = os_log_create("com.apple.camera", "UserPreferences");
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A3640000, v74, OS_LOG_TYPE_DEFAULT, "Performing one-time upgrade of Keep EV0 from On to Off for HDR Keep Orignal Photo!", buf, 2u);
          }
        }

        [v11 setObject:MEMORY[0x1E695E118] forKey:@"CAMUserPreferenceDidPerformSpatialOverCaptureEV0Disable13_0"];
      }
    }

    if ([v10 isHDRSettingAllowed])
    {
      v75 = [v10 isHDREV0CaptureSupported];
      if (v75)
      {
        LOBYTE(v75) = [v11 BOOLForKey:v72];
      }

      self->_shouldCaptureHDREV0 = v75;
      if (v70)
      {
        v76 = [v11 BOOLForKey:@"CAMUserPreferenceModernHDRBehavior"];
      }

      else
      {
        v76 = 0;
      }

      self->_shouldUseModernHDRBehavior = v76;
    }

    else
    {
      self->_shouldCaptureHDREV0 = 0;
      self->_shouldUseModernHDRBehavior = v70;
    }

    v384 = 1;
  }

  else
  {
    v384 = 0;
    self->_shouldCaptureHDREV0 = 0;
  }

  if ([v10 isSmartHDRSupported])
  {
    v77 = [v11 integerForKey:@"CAMUserPreferenceDesiredHDRMode"];
    if ([v10 isHDRSettingAllowed])
    {
      if (!self->_shouldUseModernHDRBehavior && v77 >= 2)
      {
        v78 = os_log_create("com.apple.camera", "UserPreferences");
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3640000, v78, OS_LOG_TYPE_DEFAULT, "Performing an upgrade of HDRMode from Auto to On for Smart HDR!", buf, 2u);
        }

        [v11 setInteger:1 forKey:@"CAMUserPreferenceDesiredHDRMode"];
      }
    }
  }

  v331 = [v10 isLivePhotoSupported];
  if ([v10 isFrontPortraitModeSupported])
  {
    v79 = 1;
  }

  else
  {
    v79 = [v10 isBackPortraitModeSupported];
  }

  self->_didAcknowledgePortraitModeDescription = v79 & [v11 BOOLForKey:@"CAMUserPreferencePortraitModeDidAcknowledgeDescription_12"];
  v80 = [v10 isCinematicModeSupported];
  self->_didAcknowledgeCinematicModeDescription = v80 & [v11 BOOLForKey:@"CAMUserPreferenceCinematicModeDidAcknowledgeDescription"];
  v393 = [v11 integerForKey:@"CAMUserPreferenceCaptureMode"];
  v358 = [v11 integerForKey:@"CAMUserPreferenceCaptureDevice"];
  v380 = [v11 integerForKey:@"CAMUserPreferenceDesiredFlashMode"];
  v81 = [v11 integerForKey:@"CAMUserPreferenceTorchMode"];
  v378 = [v11 integerForKey:@"CAMUserPreferenceDesiredHDRMode"];
  v389 = [v11 integerForKey:@"CAMUserPreferenceDesiredIrisMode"];
  v82 = [v11 integerForKey:@"CAMUserPreferenceTimerDuration"];
  obj = [v11 integerForKey:@"CAMUserPreferenceAspectRatioCrop"];
  v364 = [v11 integerForKey:@"CAMUserPreferenceDesiredPhotoModeEffectFilterType"];
  v355 = [v11 integerForKey:@"CAMUserPreferenceSquareModeEffectFilterType"];
  v352 = [v11 integerForKey:@"CAMUserPreferencePortraitModeEffectFilterType"];
  v337 = [v11 integerForKey:@"CAMUserPreferencePhotoModeLastCapturedEffectFilterType"];
  v335 = [v11 integerForKey:@"CAMUserPreferenceSquareModeLastCapturedEffectFilterType"];
  v333 = [v11 integerForKey:@"CAMUserPreferencePortraitModeLastCapturedEffectFilterType"];
  v350 = [v11 integerForKey:@"CAMUserPreferencePortraitModeLightingEffectType"];
  [v11 floatForKey:@"CAMUserPreferencePortraitModeApertureValue"];
  v84 = v83;
  [v11 floatForKey:@"CAMUserPreferencePortraitEffectIntensityValue"];
  v86 = v85;
  v354 = [v11 integerForKey:@"CAMUserPreferenceDesiredNightMode"];
  v361 = [v11 integerForKey:@"CAMUserPreferenceNightModeConflicts"];
  v87 = [v12 exposureBiasesByMode];
  v362 = v82;
  if ([v10 isExposureSliderSupported])
  {
    v88 = [CAMPreferencesUtilities numericDictionaryForKey:@"CAMUserPreferenceExposureBiasByMode" defaults:v11];
    v89 = v88;
    if (v88)
    {
      v90 = v88;
    }

    else
    {
      v90 = v87;
    }

    v91 = v90;

    v363 = v91;
  }

  else
  {
    v363 = v87;
  }

  if ([v10 continuousZoomSupportedForPortraitMode])
  {
    v92 = [v11 objectForKey:@"CAMUserPreferenceDidPerformPortraitModeTripleCameraUpgrade"];

    if (!v92)
    {
      [v11 setInteger:0 forKey:@"CAMUserPreferencePortraitModeRearDevice"];
      LODWORD(v310) = 0;
      [v10 defaultZoomFactorForMode:6 device:0 videoConfiguration:0 captureOrientation:1 videoStabilizationStrength:0 videoEncodingBehavior:1 customLens:0 outputToExternalStorage:v310 isTrueVideo:0 frontRearSimultaneousVideoEnabled:0 prefersHDR10BitVideo:? smartFramingFieldOfView:? overrodeWithForcedZoomValue:?];
      *&v93 = v93;
      [v11 setFloat:@"CAMUserPreferencePortraitModeRearZoomValue" forKey:v93];
      [v11 setObject:MEMORY[0x1E695E118] forKey:@"CAMUserPreferenceDidPerformPortraitModeTripleCameraUpgrade"];
      v94 = os_log_create("com.apple.camera", "UserPreferences");
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v94, OS_LOG_TYPE_DEFAULT, "Performing one-time reset for portrait mode's device to the triple camera with default zoom!", buf, 2u);
      }
    }
  }

  if ([v10 isPhotoModeDepthSuggestionSupportedForDevicePosition:0])
  {
    v95 = 1;
  }

  else
  {
    v95 = [v10 isPhotoModeDepthSuggestionSupportedForDevicePosition:1];
  }

  self->_didAcknowledgeDepthInPhotoModeDescription = v95 & [v11 BOOLForKey:@"CAMUserPreferenceDidAcknowledgeDepthInPhotoModeDescription"];
  v96 = [v11 integerForKey:@"CAMUserPreferencePortraitModeRearDevice"];
  self->_portraitModeRearDevice = v96;
  p_portraitModeRearDevice = &self->_portraitModeRearDevice;
  if ((v96 - 8) < 4 || (v98 = v96, v96 == 1))
  {
    v99 = os_log_create("com.apple.camera", "UserPreferences");
    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      [(CAMUserPreferences *)&self->_portraitModeRearDevice readPreferencesWithOverrides:v99 emulationMode:v100 callActive:v101 shouldResetCaptureConfiguration:v102 bypassXPCWhenReadingSystemStyle:v103, v104, v105];
    }

    v98 = 0;
    *p_portraitModeRearDevice = 0;
  }

  if (![v10 isSupportedMode:6 withDevice:v98] || objc_msgSend(v10, "continuousZoomSupportedForPortraitMode"))
  {
    v106 = [v10 resolvedDeviceForDesiredDevice:0 mode:6 videoConfiguration:0 videoStabilizationStrength:0 frontRearSimultaneousVideoEnabled:0];
    if ((v106 - 8) >= 4 && v106 != 1)
    {
      *p_portraitModeRearDevice = v106;
    }
  }

  [v11 floatForKey:@"CAMUserPreferencePortraitModeRearZoomValue"];
  self->_portraitModeRearZoomValue = v107;
  v108 = [v10 significantZoomFactorsForMode:6 device:self->_portraitModeRearDevice];
  [v10 maximumZoomFactorForMode:6 device:self->_portraitModeRearDevice videoConfiguration:0 videoStabilizationStrength:0 shouldResolveDevice:1];
  v110 = v109;
  v111 = [v10 continuousZoomSupportedForPortraitMode];
  portraitModeRearZoomValue = self->_portraitModeRearZoomValue;
  if (portraitModeRearZoomValue <= v110)
  {
    v113 = v111;
  }

  else
  {
    v113 = 0;
  }

  if (portraitModeRearZoomValue >= 2.0)
  {
    v114 = v113;
  }

  else
  {
    v114 = 0;
  }

  v115 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v340 = v108;
  v116 = [v108 containsObject:v115];

  if ((v114 & 1) == 0 && (v116 & 1) == 0)
  {
    LODWORD(v310) = 0;
    [v10 defaultZoomFactorForMode:6 device:self->_portraitModeRearDevice videoConfiguration:0 captureOrientation:1 videoStabilizationStrength:0 videoEncodingBehavior:1 customLens:0 outputToExternalStorage:v310 isTrueVideo:0 frontRearSimultaneousVideoEnabled:0 prefersHDR10BitVideo:? smartFramingFieldOfView:? overrodeWithForcedZoomValue:?];
    self->_portraitModeRearZoomValue = v117;
  }

  v118 = [v10 isSpatialModeSupported];
  if (v118)
  {
    LOBYTE(v118) = [v11 BOOLForKey:@"CAMUserPreferenceDidAcknowledgeSpatialModeOverlayDescription"];
  }

  self->_didAcknowledgeSpatialModeOverlayDescription = v118;
  self->_didAcknowledgeSolCamDescription = [v11 BOOLForKey:@"CAMUserPreferenceDidAcknowledgeSolCamModeOverlayDescription"];
  v119 = [v10 semanticDevelopmentSupported];
  if (v119)
  {
    LOBYTE(v119) = [v11 BOOLForKey:@"CAMUserPreferenceEnableSemanticDevelopment"];
  }

  self->_semanticDevelopmentEnabled = v119;
  v120 = [v10 isLinearDNGSupported];
  if (v120)
  {
    LOBYTE(v120) = [v11 BOOLForKey:@"CAMUserPreferenceEnableLinearDNGControl"];
  }

  self->_rawControlEnabled = v120;
  if ([v10 photoModeDepthSuggestionSupported])
  {
    v121 = [v11 BOOLForKey:@"CAMUserPreferenceEnableDepthSuggestion"];
    self->_shouldUseDepthSuggestionInPhotoMode = v121;
    if (v121)
    {
      v387 = [v11 BOOLForKey:@"CAMUserPreferenceOptionalDepthEffectEnabled"];
    }

    else
    {
      v387 = 0;
    }
  }

  else
  {
    v387 = 0;
    self->_shouldUseDepthSuggestionInPhotoMode = 0;
  }

  v122 = [v11 BOOLForKey:@"CAMUserPreferencePreserveOptionalDepthEffect"];
  self->_shouldAlwaysShowDepthSuggestionWhenDepthIsAvailable = v122;
  if ([v10 isPhotoResolutionSupported:3 forPhotoEncoding:1])
  {
    if ([v10 isLinearDNGSupported])
    {
      rawControlEnabled = self->_rawControlEnabled;
    }

    else
    {
      rawControlEnabled = [v11 BOOLForKey:@"CAMUserPreferenceEnablePhotoFormatControl"];
    }
  }

  else
  {
    rawControlEnabled = 0;
  }

  self->_photoFormatControlEnabled = rawControlEnabled & 1;
  v374 = [v11 integerForKey:@"CAMUserPreferencesDesiredRAWMode"];
  if (!self->_rawControlEnabled && (rawControlEnabled & 1) == 0)
  {
    v373 = 0;
LABEL_188:
    v391 = 0;
    goto LABEL_191;
  }

  v373 = [v11 integerForKey:@"CAMUserPreferencesRAWConflicts"];
  if ((rawControlEnabled & 1) == 0)
  {
    goto LABEL_188;
  }

  v391 = [v11 integerForKey:@"CAMUserPreferencesDesiredPhotoResolution"];
LABEL_191:
  if ([v10 isProResVideoSupported])
  {
    v124 = [v11 BOOLForKey:@"CAMUserPreferenceEnableProResControl"];
    self->_proResControlEnabled = v124;
    if (v124)
    {
      v369 = [v11 integerForKey:@"CAMUserPreferenceDesiredProResVideoMode"];
    }

    else
    {
      v369 = 0;
    }
  }

  else
  {
    v369 = 0;
    self->_proResControlEnabled = 0;
  }

  if ([v10 isActionModeControlSupported])
  {
    v125 = [v11 integerForKey:@"CAMUserPreferenceVideoStabilizationMode"];
    if (v125 >= 2)
    {
      v126 = 0;
    }

    else
    {
      v126 = v125;
    }

    v386 = v126;
  }

  else
  {
    v386 = 0;
  }

  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"CameraSharingEnabled", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat))
  {
    v127 = 1;
  }

  else
  {
    v127 = keyExistsAndHasValidFormat == 0;
  }

  v128 = [objc_opt_class() isSharedLibrarySupportedAndEnabledForCapabilities:v10];
  self->_sharedLibraryEnabled = v128 & v127;
  v372 = v12;
  if ((v128 & v127) != 1)
  {
    sharedLibraryLastLocation = self->_sharedLibraryLastLocation;
    self->_sharedLibraryLastLocation = 0;

    self->_sharedLibraryLastLocationAcquiredDuringTrip = 0;
    sharedLibraryLastDiscoveryLocation = self->_sharedLibraryLastDiscoveryLocation;
    self->_sharedLibraryLastDiscoveryLocation = 0;

    sharedLibraryLastDiscoveryDate = self->_sharedLibraryLastDiscoveryDate;
    self->_sharedLibraryLastDiscoveryDate = 0;

    sharedLibraryLastUserActionLocation = self->_sharedLibraryLastUserActionLocation;
    self->_sharedLibraryLastUserActionLocation = 0;

    sharedLibraryLastUserActionDate = self->_sharedLibraryLastUserActionDate;
    self->_sharedLibraryLastUserActionDate = 0;

    *&self->_sharedLibraryAutoBehaviorEnabled = 0;
    self->_defaultToSharedLibraryEnabled = 0;
    v144 = v380;
    v138 = v358;
    goto LABEL_213;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __140__CAMUserPreferences_readPreferencesWithOverrides_emulationMode_callActive_shouldResetCaptureConfiguration_bypassXPCWhenReadingSystemStyle___block_invoke;
  aBlock[3] = &unk_1E76F9180;
  v129 = v11;
  v415 = v129;
  v130 = _Block_copy(aBlock);
  v131 = v130[2](v130, @"CAMUserPreferenceSharedLibraryLastLocation");
  [(CAMUserPreferences *)self setSharedLibraryLastLocation:v131];

  -[CAMUserPreferences setSharedLibraryLastLocationAcquiredDuringTrip:](self, "setSharedLibraryLastLocationAcquiredDuringTrip:", [v129 BOOLForKey:@"CAMUserPreferenceSharedLibraryLastLocationAcquiredDuringTrip"]);
  v132 = v130[2](v130, @"CAMUserPreferenceSharedLibraryLastDiscoveryLocation");
  [(CAMUserPreferences *)self setSharedLibraryLastDiscoveryLocation:v132];

  v133 = [v129 objectForKey:@"CAMUserPreferenceSharedLibraryLastDiscoveryDate"];
  [(CAMUserPreferences *)self setSharedLibraryLastDiscoveryDate:v133];

  v134 = v130[2](v130, @"CAMUserPreferenceSharedLibraryLastUserActionLocation");
  [(CAMUserPreferences *)self setSharedLibraryLastUserActionLocation:v134];

  v135 = [v129 objectForKey:@"CAMUserPreferenceSharedLibraryLastUserActionDate"];
  [(CAMUserPreferences *)self setSharedLibraryLastUserActionDate:v135];

  v136 = +[CAMCaptureCapabilities capabilities];
  if (![v136 peopleProximityDetectionSupported])
  {
    self->_sharedLibraryAutoBehaviorEnabled = 0;
    v138 = v358;
LABEL_211:
    v137 = [v129 BOOLForKey:@"CAMUserPreferencesDefaultToSharedLibrary"];
    goto LABEL_212;
  }

  if ((PXPreferencesIsCameraAutoShareEnabled() & 1) == 0)
  {
    v185 = [v136 librarySelectionMockAutomationModeEnabled];
    self->_sharedLibraryAutoBehaviorEnabled = v185;
    v138 = v358;
    if (v185)
    {
      v137 = 0;
      goto LABEL_212;
    }

    goto LABEL_211;
  }

  v137 = 0;
  self->_sharedLibraryAutoBehaviorEnabled = 1;
  v138 = v358;
LABEL_212:
  self->_defaultToSharedLibraryEnabled = v137;
  self->_shareWhenAtHomeEnabled = CFPreferencesGetAppBooleanValue(@"CameraShareFromHomeEnabled", @"com.apple.mobileslideshow", 0) != 0;
  self->_sharedLibrarySwitchEnabled = self->_sharedLibraryEnabled;

  v12 = v372;
  v144 = v380;
LABEL_213:
  v145 = v84;
  v146 = v86;
  v339 = [v11 integerForKey:@"CAMUserPreferenceSharedLibraryMode"];
  v323 = [(CAMUserPreferences *)self _shouldReconfigureCurrentConfigurationForSettingsChange];
  v147 = [(CAMUserPreferences *)self _shouldResetPreferencesForTimeout];
  v322 = v147;
  if (a4)
  {
    v148 = 0;
  }

  else
  {
    v148 = v147;
  }

  v149 = [(CAMUserPreferences *)self defaultDeviceForModeChange:v393 devicePosition:v138];
  v317 = v148;
  if (!v148)
  {
    v359 = 0;
    goto LABEL_256;
  }

  if (!self->_preserveCaptureMode)
  {
    v393 = [v12 mode];
    v149 = [v12 device];
    self->_spatialModeHasVideoSelected = 0;
  }

  if (v144 == 1)
  {
    v144 = [v12 flashMode];
  }

  v359 = v81 == 1;
  if (v81 == 1)
  {
    v81 = [v12 torchMode];
  }

  if (v378 == 1)
  {
    v378 = [v12 HDRMode];
  }

  v329 = v81;
  if (!self->_preserveLivePhoto)
  {
    v389 = [v12 irisMode];
    v373 &= ~2uLL;
  }

  v150 = v149;
  if (!self->_preserveNightMode)
  {
    v354 = [v10 isNightModeSupported];
  }

  v151 = [v12 timerDuration];
  if (!self->_preserveEffectFilter)
  {
    obj = [v12 photoModeAspectRatioCrop];
    v364 = [v12 photoModeEffectFilterType];
    v355 = [v12 squareModeEffectFilterType];
    v352 = [v12 portraitModeEffectFilterType];
    v350 = [v12 portraitModeLightingEffectType];
    [v12 portraitModeIntensityValue];
    v146 = v152;
  }

  v362 = v151;
  if (!self->_preserveExposure)
  {
    v153 = [v12 exposureBiasesByMode];

    v363 = v153;
  }

  v149 = v150;
  if (!self->_preserveSuperWideAutoMacro)
  {
    v371 = [v12 macroMode];
  }

  if (!self->_preserveRAW)
  {
    v374 = [v12 rawMode];
  }

  preservePhotoResolution = self->_preservePhotoResolution;
  v155 = v391;
  if (!self->_preservePhotoResolution)
  {
    v155 = 0;
  }

  v391 = v155;
  v81 = v329;
  if (self->_rawControlEnabled)
  {
    if (self->_preserveRAW && ((rawControlEnabled ^ 1 | preservePhotoResolution) & 1) != 0)
    {
      goto LABEL_247;
    }
  }

  else if ((rawControlEnabled & 1) == 0 || preservePhotoResolution)
  {
    goto LABEL_247;
  }

  v373 = 0;
LABEL_247:
  v156 = v369;
  if (!self->_preserveProRes)
  {
    v156 = 0;
  }

  v369 = v156;
  v157 = v386;
  if (!self->_preserveVideoStabilization)
  {
    v157 = 0;
  }

  v386 = v157;
  if (!self->_preserveAperture)
  {
    [v12 portraitModeApertureValue];
    v145 = v158;
  }

  v387 &= v122;
  if (!self->__preserveFrontRearSimultaneousVideoEnabled)
  {
    self->_shouldEnableFrontRearSimultaneousVideo = 0;
  }

  [(CAMUserPreferences *)self setDidRecentlyUseActionMode:0];
  [(CAMUserPreferences *)self setDidRecentlyUseFrontPIP:0];
  v361 = 0;
LABEL_256:
  v159 = v367;
  if (v370 && [v370 hasOverrides])
  {
    v160 = v149;
    v161 = [v370 captureMode];

    if (v161)
    {
      v162 = [v370 captureMode];
      v393 = [v162 integerValue];
    }

    v163 = [v370 captureDevice];

    if (v163)
    {
      v164 = [v370 captureDevice];
      v160 = [v164 integerValue];
    }

    v165 = [v370 videoConfiguration];

    if (v165)
    {
      v166 = [v370 videoConfiguration];
      self->_videoConfiguration = [v166 integerValue];
    }

    v167 = [v370 slomoConfiguration];

    if (v167)
    {
      v168 = [v370 slomoConfiguration];
      self->_slomoConfiguration = [v168 integerValue];
    }

    v169 = [v370 cinematicConfiguration];

    if (v169)
    {
      v170 = [v370 cinematicConfiguration];
      self->_cinematicConfiguration = [v170 integerValue];
    }

    v171 = [v370 wantsQRCodes];

    if (v171)
    {
      v172 = [v370 wantsQRCodes];
      v173 = [v172 BOOLValue];

      if (v173)
      {
        self->_forceEnableQRBanners = 1;
        v174 = os_log_create("com.apple.camera", "UserPreferences");
        if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3640000, v174, OS_LOG_TYPE_DEFAULT, "Launched with a URL request or shortcut to force enable QR scanning", buf, 2u);
        }
      }
    }

    v175 = [v370 flashMode];

    if (v175)
    {
      v176 = [v370 flashMode];
      v144 = [v176 integerValue];
    }

    v177 = [v370 torchMode];

    if (v177)
    {
      v178 = [v370 torchMode];
      v81 = [v178 integerValue];
    }

    v179 = [v370 aspectRatioCrop];

    if (v179)
    {
      v180 = [v370 aspectRatioCrop];
      v181 = [v180 integerValue];

      v182 = v393;
      if (v393)
      {
        if (v181)
        {
          v183 = os_log_create("com.apple.camera", "UserPreferences");
          if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
          {
            if (v181 > 6)
            {
              v184 = 0;
            }

            else
            {
              v184 = off_1E76F93C0[v181 - 1];
            }

            if (v393 > 9)
            {
              v186 = 0;
            }

            else
            {
              v186 = off_1E76F93F0[v393 - 1];
            }

            *buf = 138543618;
            *&buf[4] = v184;
            v418 = 2114;
            v419 = v186;
            _os_log_impl(&dword_1A3640000, v183, OS_LOG_TYPE_DEFAULT, "Trying to set aspect ratio crop %{public}@ on unsupported mode: %{public}@", buf, 0x16u);
          }
        }

        v324 = 1;
      }

      else
      {
        v324 = 1;
        obj = v181;
      }

      v159 = v367;
    }

    else
    {
      v324 = 1;
      v159 = v367;
      v182 = v393;
    }

    v149 = v160;
  }

  else
  {
    v324 = 0;
    v182 = v393;
  }

  if (([v10 isCameraSupportedForDevice:v149] & 1) == 0)
  {
    v149 = [v12 device];
  }

  v187 = [v10 isSupportedMode:v182 withDevice:v149];
  v188 = 0;
  if (v182 <= 8 && ((1 << v182) & 0x186) != 0)
  {
    v188 = v159;
  }

  if (v188 || v187 != 1)
  {
    v182 = [v12 mode];
  }

  if ([v10 isFrontFlashSupported])
  {
    v189 = (v144 - 1) < 2;
LABEL_309:
    v191 = v144;
    goto LABEL_311;
  }

  v190 = [v10 isBackFlashSupported];
  v189 = (v144 - 1) < 2;
  if (v190)
  {
    goto LABEL_309;
  }

  v191 = 0;
LABEL_311:
  if (v189)
  {
    v192 = v191;
  }

  else
  {
    v192 = v144;
  }

  v368 = v192;
  if ([v10 isFrontTorchSupported])
  {
    v193 = (v81 - 1) < 2;
    v194 = v389;
    v195 = v359;
LABEL_318:
    v197 = v81;
    v198 = v195;
    goto LABEL_320;
  }

  v196 = [v10 isBackTorchSupported];
  v193 = (v81 - 1) < 2;
  v195 = v359;
  if (v196)
  {
    v194 = v389;
    goto LABEL_318;
  }

  v197 = 0;
  v198 = 1;
  v194 = v389;
LABEL_320:
  if (v193)
  {
    v199 = v197;
  }

  else
  {
    v199 = v81;
  }

  if (v193)
  {
    v200 = v198;
  }

  else
  {
    v200 = v195;
  }

  v360 = v200;
  if (v378 == 1)
  {
    v201 = v384;
  }

  else
  {
    v201 = v378;
  }

  v394 = v182;
  if (v194 == 2)
  {
    if ([v10 isLivePhotoAutoModeSupported])
    {
      v194 = 2;
    }

    else
    {
      v194 = [v12 irisMode];
    }
  }

  else if (v194 == 1)
  {
    v194 = v331;
  }

  v390 = v194;
  v202 = [v10 isSpatialOverCaptureSupported];
  v203 = MEMORY[0x1E69C0620];
  v385 = v149;
  if (v202)
  {
    v204 = [v11 objectForKey:@"CAMUserPreferenceDidPerformSpatialOverCaptureHighEfficiencyUpgrade"];

    v205 = *v203;
    if (!v204)
    {
      if ([v11 integerForKey:v205] == 1)
      {
        v206 = os_log_create("com.apple.camera", "UserPreferences");
        if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3640000, v206, OS_LOG_TYPE_DEFAULT, "Performing one-time upgrade of Most Compatible to High Efficiency!", buf, 2u);
        }

        [MEMORY[0x1E69C0700] setNewFormatsConfiguration:0 fromSource:3];
      }

      [v11 setObject:MEMORY[0x1E695E118] forKey:@"CAMUserPreferenceDidPerformSpatialOverCaptureHighEfficiencyUpgrade"];
    }
  }

  else
  {
    v205 = *MEMORY[0x1E69C0620];
  }

  v207 = [v11 integerForKey:v205];
  self->__preferHEVCWhenAvailable = v207 != 1;
  if (v207 == 1)
  {
    v208 = 0;
  }

  else
  {
    v208 = [v10 isHEVCEncodingSupported];
  }

  v209 = [v11 integerForKey:@"CAMUserPreferenceSecondaryPhotoFormat"];
  v210 = 0;
  if (v209 <= 1)
  {
    if (v209)
    {
      v211 = 0;
      if (v209 != 1)
      {
        goto LABEL_358;
      }

      v210 = 2;
    }

    else
    {
      v210 = 1;
    }

    goto LABEL_357;
  }

  if (v209 == 2)
  {
    v210 = 3;
LABEL_357:
    v211 = v208;
    goto LABEL_358;
  }

  if (v209 == 3)
  {
    v211 = 2;
    v210 = 1;
  }

  else
  {
    v211 = 0;
    if (v209 == 4)
    {
      v211 = 2;
      v210 = 3;
    }
  }

LABEL_358:
  self->_photoFormatControlSecondaryFormat.encoding = v211;
  self->_photoFormatControlSecondaryFormat.resolution = v210;
  if ([v10 isProRawJpegXLSupported])
  {
    v212 = [v11 integerForKey:@"CAMUserPreferenceProRawFileFormat"];
  }

  else
  {
    v212 = 0;
  }

  self->_rawFileFormatBehavior = v212;
  self->_HDR10BitVideoEnabled = [objc_opt_class() shouldEnableHDR10BitVideoForHEVCEnabled:self->__preferHEVCWhenAvailable capabilities:v10];
  v213 = +[CAMCaptureCapabilities capabilities];
  v214 = [v213 isAspectRatioCropSupported];

  v215 = obj;
  if (!v214)
  {
    v215 = 0;
  }

  v332 = v215;
  v330 = [(CAMUserPreferences *)self _sanitizeEffectFilterType:v364 forMode:0];
  v328 = [(CAMUserPreferences *)self _sanitizeEffectFilterType:v355 forMode:4];
  v327 = [(CAMUserPreferences *)self _sanitizeEffectFilterType:v352 forMode:6];
  v338 = [(CAMUserPreferences *)self _sanitizeEffectFilterType:v337 forMode:0];
  v336 = [(CAMUserPreferences *)self _sanitizeEffectFilterType:v335 forMode:4];
  v334 = [(CAMUserPreferences *)self _sanitizeEffectFilterType:v333 forMode:6];
  v351 = [(CAMUserPreferences *)self _sanitizeLightingType:v350 forMode:6];
  if (([v10 isSupportedVideoConfiguration:self->_videoConfiguration forMode:1 device:1] & 1) == 0 && (objc_msgSend(v10, "isSupportedVideoConfiguration:forMode:device:", self->_videoConfiguration, 1, 0) & 1) == 0)
  {
    self->_videoConfiguration = 0;
  }

  v216 = v394;
  if (!self->_PALVideoEnabled && [CAMCaptureCapabilities isPALVideoConfiguration:self->_videoConfiguration])
  {
    v217 = os_log_create("com.apple.camera", "UserPreferences");
    if (os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT))
    {
      v218 = 0;
      videoConfiguration = self->_videoConfiguration;
      if (videoConfiguration > 9999)
      {
        if (videoConfiguration > 10002)
        {
          switch(videoConfiguration)
          {
            case 10003:
              v218 = @"ImagePickerVGA";
              break;
            case 10004:
              v218 = @"ImagePickeriFrame720p";
              break;
            case 10005:
              v218 = @"ImagePickeriFrame540p";
              break;
          }
        }

        else if (videoConfiguration == 10000)
        {
          v218 = @"ImagePickerHigh";
        }

        else if (videoConfiguration == 10001)
        {
          v218 = @"ImagePickerMedium";
        }

        else
        {
          v218 = @"ImagePickerLow";
        }
      }

      else
      {
        switch(videoConfiguration)
        {
          case 0:
            v218 = @"Auto";
            break;
          case 1:
            v218 = @"1080p60";
            break;
          case 2:
            v218 = @"720p120";
            break;
          case 3:
            v218 = @"720p240";
            break;
          case 4:
            v218 = @"1080p120";
            break;
          case 5:
            v218 = @"4k30";
            break;
          case 6:
            v218 = @"720p30";
            break;
          case 7:
            v218 = @"1080p30";
            break;
          case 8:
            v218 = @"1080p240";
            break;
          case 9:
            v218 = @"4k60";
            break;
          case 10:
            v218 = @"4k24";
            break;
          case 11:
            v218 = @"1080p25";
            break;
          case 12:
            v218 = @"4k25";
            break;
          case 13:
            v218 = @"4k120";
            break;
          case 14:
            v218 = @"4k100";
            break;
          default:
            break;
        }
      }

      *buf = 138543362;
      *&buf[4] = v218;
      _os_log_impl(&dword_1A3640000, v217, OS_LOG_TYPE_DEFAULT, "Resetting PAL video configuration %{public}@ to Auto since PAL not enabled", buf, 0xCu);
    }

    self->_videoConfiguration = 0;
    v216 = v394;
  }

  if (([v10 isSupportedVideoConfiguration:self->_slomoConfiguration forMode:2 device:1] & 1) == 0 && (objc_msgSend(v10, "isSupportedVideoConfiguration:forMode:device:", self->_slomoConfiguration, 2, 0) & 1) == 0)
  {
    self->_slomoConfiguration = 0;
  }

  if (([v10 isSupportedVideoConfiguration:self->_cinematicConfiguration forMode:7 device:1] & 1) == 0 && (objc_msgSend(v10, "isSupportedVideoConfiguration:forMode:device:", self->_cinematicConfiguration, 7, 0) & 1) == 0)
  {
    self->_cinematicConfiguration = 0;
  }

  v379 = 0;
  if (v216 > 6)
  {
    if (v216 == 7)
    {
      v220 = [(CAMUserPreferences *)self cinematicConfiguration];
      goto LABEL_415;
    }

    if (v216 == 8)
    {
      v379 = 7;
      goto LABEL_416;
    }

    if (v216 != 9)
    {
      goto LABEL_416;
    }

LABEL_414:
    v220 = [(CAMUserPreferences *)self videoConfiguration];
    goto LABEL_415;
  }

  if ((v216 - 3) < 4 || v216 < 2)
  {
    goto LABEL_414;
  }

  if (v216 == 2)
  {
    v220 = [(CAMUserPreferences *)self slomoConfiguration];
LABEL_415:
    v379 = v220;
  }

LABEL_416:
  v326 = [(CAMUserPreferences *)self audioConfigurationForMode:v216 device:v385 emulationMode:a4 duringCall:v159];
  if ((v199 != 1) | v345 & 1)
  {
    v353 = v199;
  }

  else
  {
    v353 = [v12 torchMode];
    v360 = 1;
  }

  if ([(CAMUserPreferences *)self shouldUseModernHDRBehavior])
  {
    v221 = 1;
  }

  else
  {
    v221 = v201;
  }

  v346 = v221;
  v412 = v390;
  v413 = v368;
  v411 = 0;
  if ([(CAMUserPreferences *)self rawControlEnabled])
  {
    v222 = v374;
    [CAMConflictingControlConfiguration resolveDesiredRAWMode:v374 photoFormatConflicts:v373 desiredLivePhotoMode:v390 desiredFlashMode:v368 toRAWMode:&v411 toLivePhotoMode:&v412 toFlashMode:&v413];
  }

  else
  {
    v222 = 0;
    v411 = 0;
  }

  v375 = v222;
  if (v222 == 1)
  {
    v223 = 2;
  }

  else
  {
    v223 = 1;
  }

  if (v222 == 1)
  {
    v224 = v341;
  }

  else
  {
    v224 = v343;
  }

  if ([v10 isPhotoResolutionSupported:v391 forMode:0 device:0 photoEncoding:v223])
  {
    v225 = v391;
  }

  else
  {
    v225 = 0;
  }

  if (v225)
  {
    v226 = v225;
  }

  else
  {
    v226 = v224;
  }

  v410 = v226;
  v344 = v226;
  [CAMUserPreferences resolveDesiredPhotoResolution:"resolveDesiredPhotoResolution:livePhotoMode:rawMode:conflicts:mode:device:resolvedPhotoResolution:resolvedLivePhotoMode:" livePhotoMode:&v410 rawMode:&v412 conflicts:? mode:? device:? resolvedPhotoResolution:? resolvedLivePhotoMode:?];
  v227 = [(CAMUserPreferences *)self resolvedPhotoFormatForResolvedResolution:v410 rawMode:v411];
  LOWORD(v311) = v387;
  v342 = [CAMConflictingControlConfiguration resolveDesiredMacroMode:v371 forMode:v394 device:v385 videoConfiguration:v379 videoStabilizationStrength:[(CAMUserPreferences *)self videoStabilizationStrengthForVideoStabilizationMode:v386 captureMode:v394] photoFormat:v227 optionalDepthEffectEnabled:v228 frontRearSimultaneousVideoEnabled:v311];
  v229 = [(CAMUserPreferences *)self shouldMirrorFrontCameraCaptures];
  v230 = 0;
  if (v229)
  {
    v230 = [v10 mirroredFrontCapturesSupportedForMode:v394];
  }

  v325 = v230;
  v231 = [v10 semanticStylesSupport];
  self->_didAcknowledgeSemanticStylesDescription = [v11 BOOLForKey:@"CAMUserPreferenceSemanticStylesDidAcknowledgeDescription"] & ((v231 & 8) >> 3);
  if ((v231 & 8) != 0)
  {
    v232 = [v10 smartStylesSupported];
    if (v232)
    {
      LOBYTE(v232) = [v11 BOOLForKey:@"CAMUserPreferenceSmartStylesDidAcknowledgeDescription"];
    }
  }

  else
  {
    LOBYTE(v232) = 0;
  }

  self->_didAcknowledgeSmartStylesDescription = v232;
  v365 = [v372 selectedSemanticStyleIndex];
  v381 = [v372 semanticStyles];
  v356 = [v372 smartStyleSystemStyleIndex];
  if ((v231 & 8) == 0)
  {
    v250 = v381;
    goto LABEL_528;
  }

  v233 = v11;
  v234 = +[CAMCaptureCapabilities capabilities];
  v235 = [v234 hostProcess];

  if (v235)
  {
    v236 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.camera"];

    v233 = v236;
  }

  v237 = [(CAMUserPreferences *)self _semanticStylesKey];
  v321 = v233;
  v238 = [v233 arrayForKey:v237];

  v392 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v238, "count")}];
  v406 = 0u;
  v407 = 0u;
  v408 = 0u;
  v409 = 0u;
  obja = v238;
  v239 = [obja countByEnumeratingWithState:&v406 objects:v423 count:16];
  if (!v239)
  {
    goto LABEL_471;
  }

  v240 = v239;
  v241 = *v407;
  while (2)
  {
    for (i = 0; i != v240; ++i)
    {
      if (*v407 != v241)
      {
        objc_enumerationMutation(obja);
      }

      v243 = *(*(&v406 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v249 = os_log_create("com.apple.camera", "UserPreferences");
        if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
        {
          [CAMUserPreferences readPreferencesWithOverrides:v249 emulationMode:? callActive:? shouldResetCaptureConfiguration:? bypassXPCWhenReadingSystemStyle:?];
        }

        goto LABEL_470;
      }

      v244 = [v10 semanticStylesVersion];
      if (v244 == 1)
      {
        v245 = MEMORY[0x1E6993890];
        v404 = 0;
        v246 = &v404;
        v247 = &v404;
        goto LABEL_456;
      }

      if (v244)
      {
        v248 = 0;
        v249 = 0;
LABEL_467:
        v251 = os_log_create("com.apple.camera", "UserPreferences");
        if (os_log_type_enabled(v251, OS_LOG_TYPE_ERROR))
        {
          [CAMUserPreferences readPreferencesWithOverrides:emulationMode:callActive:shouldResetCaptureConfiguration:bypassXPCWhenReadingSystemStyle:];
        }

LABEL_470:
        goto LABEL_471;
      }

      v245 = CAMSemanticStyle;
      v405 = 0;
      v246 = &v405;
      v247 = &v405;
LABEL_456:
      v248 = [(__objc2_class *)v245 styleWithDictionary:v243 error:v247];
      v249 = *v246;
      if (v249 || !v248)
      {
        goto LABEL_467;
      }

      [v392 addObject:v248];
    }

    v240 = [obja countByEnumeratingWithState:&v406 objects:v423 count:16];
    if (v240)
    {
      continue;
    }

    break;
  }

LABEL_471:

  if ([v10 smartStylesSupported])
  {
    v250 = [v381 mutableCopy];

    Current = CFAbsoluteTimeGetCurrent();
    v253 = [CAMSmartStyleUtilities readAVCaptureSystemStyleBypassXPC:v319 allowNil:0];
    v254 = CFAbsoluteTimeGetCurrent() - Current;
    if (v254 > 0.002)
    {
      v255 = os_log_create("com.apple.camera", "UserPreferences");
      if (os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v254;
        _os_log_impl(&dword_1A3640000, v255, OS_LOG_TYPE_DEFAULT, "Reading AVSmartStyleSettingsGetSystemStyleFast took %.3f seconds", buf, 0xCu);
      }
    }

    v320 = v253;
    v382 = [CAMCaptureConversions CEKSmartStyleForAVCaptureSmartStyle:v253];
    [(CAMUserPreferences *)self _setLastReadSystemStyle:?];
    v402 = 0u;
    v403 = 0u;
    v400 = 0u;
    v401 = 0u;
    v256 = v392;
    v257 = [v256 countByEnumeratingWithState:&v400 objects:v422 count:16];
    if (v257)
    {
      v258 = v257;
      v259 = *v401;
      do
      {
        for (j = 0; j != v258; ++j)
        {
          if (*v401 != v259)
          {
            objc_enumerationMutation(v256);
          }

          -[CAMUserPreferences _updateEntryForPresetType:inSmartStyles:withStyle:](self, "_updateEntryForPresetType:inSmartStyles:withStyle:", [*(*(&v400 + 1) + 8 * j) presetType], v250, *(*(&v400 + 1) + 8 * j));
        }

        v258 = [v256 countByEnumeratingWithState:&v400 objects:v422 count:16];
      }

      while (v258);
    }

    if (v317)
    {
      v261 = [(CAMUserPreferences *)self preserveSmartStyle];
      v262 = v382;
      v263 = v382;
      v264 = v321;
      if (!v261)
      {
        v265 = v263;
        v266 = 1;
        goto LABEL_519;
      }
    }

    else
    {
      v262 = v382;
      v269 = v382;
      v264 = v321;
    }

    v270 = [v264 dictionaryForKey:@"CAMUserPreferenceSmartStylesSystemStyleOverride"];
    v271 = [v264 dictionaryForKey:@"CAMUserPreferenceSmartStylesSystemStyleOverrideReference"];
    v272 = v271;
    v265 = v262;
    if (v270)
    {
      v265 = v262;
      if (v271)
      {
        v399 = 0;
        v357 = [MEMORY[0x1E6993890] styleWithDictionary:v270 error:&v399];
        v273 = v399;
        v398 = 0;
        v274 = [MEMORY[0x1E6993890] styleWithDictionary:v272 error:&v398];
        v275 = v398;
        v366 = v274;
        if (v273)
        {
          v276 = os_log_create("com.apple.camera", "UserPreferences");
          if (os_log_type_enabled(v276, OS_LOG_TYPE_ERROR))
          {
            [CAMUserPreferences readPreferencesWithOverrides:emulationMode:callActive:shouldResetCaptureConfiguration:bypassXPCWhenReadingSystemStyle:];
          }

          v274 = v366;
        }

        if (v275)
        {
          v277 = os_log_create("com.apple.camera", "UserPreferences");
          if (os_log_type_enabled(v277, OS_LOG_TYPE_ERROR))
          {
            [CAMUserPreferences readPreferencesWithOverrides:emulationMode:callActive:shouldResetCaptureConfiguration:bypassXPCWhenReadingSystemStyle:];
          }

          v274 = v366;
        }

        v316 = v275;
        v318 = v273;
        v315 = v272;
        if (v357 && v274 && [(__CFString *)v274 isEqualToSmartStyle:v382])
        {
          v278 = os_log_create("com.apple.camera", "SmartStyle");
          v279 = v357;
          if (os_log_type_enabled(v278, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v357;
            v418 = 2114;
            v419 = v382;
            _os_log_impl(&dword_1A3640000, v278, OS_LOG_TYPE_DEFAULT, "Using customized System Style %{public}@ instead of system style %{public}@", buf, 0x16u);
          }

          v265 = v357;
          v280 = v382;
LABEL_516:
          v283 = v366;
        }

        else
        {
          v280 = os_log_create("com.apple.camera", "SmartStyle");
          if (!os_log_type_enabled(v280, OS_LOG_TYPE_DEFAULT))
          {
            v265 = v382;
            v279 = v357;
            goto LABEL_516;
          }

          *buf = 138543874;
          v279 = v357;
          *&buf[4] = v357;
          v418 = 2114;
          v283 = v366;
          v419 = v366;
          v420 = 2114;
          v265 = v382;
          v421 = v382;
          _os_log_impl(&dword_1A3640000, v280, OS_LOG_TYPE_DEFAULT, "Discarding customized System Style %{public}@ since the reference style was %{public}@ but is now %{public}@", buf, 0x20u);
        }

        v272 = v315;
      }
    }

    v266 = 0;
    v264 = v321;
LABEL_519:
    v396[0] = MEMORY[0x1E69E9820];
    v396[1] = 3221225472;
    v396[2] = __140__CAMUserPreferences_readPreferencesWithOverrides_emulationMode_callActive_shouldResetCaptureConfiguration_bypassXPCWhenReadingSystemStyle___block_invoke_622;
    v396[3] = &unk_1E76F91A8;
    v284 = v265;
    v397 = v284;
    v285 = [v250 indexOfObjectPassingTest:v396];
    if (v285 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v250 removeObjectAtIndex:v285];
    }

    v286 = [(CAMUserPreferences *)self _updateEntryForPresetType:0 inSmartStyles:v250 withStyle:v284];
    v287 = [v264 stringForKey:@"CAMUserPreferenceSmartStylesSelectedPreset"];
    v288 = [(CAMUserPreferences *)self _findIndexOfSmartStylePresetString:v287 inStyles:v250];
    v356 = v286;
    if ((v266 & 1) == 0)
    {
      v286 = v288;
      if (v288 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v356 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v286 = 0;
        }

        else
        {
          v286 = v356;
        }
      }
    }

    v365 = v286;
  }

  else
  {
    v264 = v321;
    v267 = [v321 integerForKey:@"CAMUserPreferenceSelectedSemanticStyleIndex"];
    v268 = [v381 count];
    if ([v392 count] == v268)
    {
      if (v267 < v268)
      {
        v250 = v392;

        v365 = v267;
        goto LABEL_527;
      }
    }

    else
    {
      v281 = v267 < v268 && obja == 0;
      v282 = v365;
      if (v281)
      {
        v282 = v267;
      }

      v365 = v282;
    }

    v250 = v381;
  }

LABEL_527:

LABEL_528:
  v289 = [CAMCaptureConfiguration alloc];
  v290 = [(CAMUserPreferences *)self shouldMixAudioWithOthers];
  v292 = v412;
  v291 = v413;
  v293 = v410;
  v294 = v411;
  LOBYTE(v314) = [(CAMUserPreferences *)self shouldEnableFrontRearSimultaneousVideo];
  BYTE1(v313) = v387;
  LOBYTE(v313) = v347;
  v383 = v250;
  LOBYTE(v312) = v325;
  v295 = [(CAMCaptureConfiguration *)v289 initWithCaptureMode:v394 captureDevice:v385 videoConfiguration:v379 audioConfiguration:v326 mixAudioWithOthers:v290 flashMode:v291 torchMode:v145 HDRMode:v146 irisMode:v353 timerDuration:v346 photoModeAspectRatioCrop:v292 photoModeEffectFilterType:v362 squareModeEffectFilterType:v332 portraitModeEffectFilterType:v330 portraitModeLightingEffectType:v328 portraitModeApertureValue:v327 portraitModeIntensityValue:v351 mirrorFrontCameraCaptures:v312 exposureBiasesByMode:v363 macroMode:v342 photoResolution:v293 rawMode:v294 proResVideoMode:v369 semanticStyles:v250 selectedSemanticStyleIndex:v365 smartStyleSystemStyleIndex:v356 videoStabilizationMode:v386 zoomPIPEnabled:v313 optionalDepthEffectEnabled:v339 sharedLibraryMode:v314 frontRearSimultaneousVideoEnabled:?];
  v296 = [[CAMConflictingControlConfiguration alloc] initWithDesiredFlashMode:v368 desiredHDRMode:v346 desiredLivePhotoMode:v390 desiredRAWMode:v375 desiredPhotoResolution:v344 photoFormatConflicts:v373 desiredNightModeControlMode:v354 nightModeConflicts:v361 desiredMacroMode:v371];
  objc_storeStrong(&self->_captureConfiguration, v295);
  objc_storeStrong(&self->_conflictingControlConfiguration, v296);
  self->_photoModeLastCapturedEffectFilterType = v338;
  self->_squareModeLastCapturedEffectFilterType = v336;
  self->_portraitModeLastCapturedEffectFilterType = v334;
  if (v394 == 8)
  {
    v299 = 1;
    v297 = v360;
    v298 = v372;
LABEL_532:
    self->_spatialModeHasVideoSelected = v299;
  }

  else
  {
    v297 = v360;
    v298 = v372;
    if (v394 == 9)
    {
      v299 = 0;
      goto LABEL_532;
    }
  }

  self->_smudgeNotificationBaseTimeoutInSeconds = 3600.0;
  v395 = 0;
  if (CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceEnableSmudgeNotifications", @"com.apple.camera", &v395))
  {
    v300 = 1;
  }

  else
  {
    v300 = v395 == 0;
  }

  v301 = v300;
  self->_smudgeNotificationsEnabled = v301;
  [(CAMUserPreferences *)self _setDidResetTorchMode:v297];
  self->_classicModeSwitchingEnabled = [v11 BOOLForKey:@"CAMUserPreferenceClassicModeSwitchingEnabled"];
  if (v348)
  {
    self->_overriddenBackCaptureInterval = [v11 integerForKey:@"CAMInternalPreferenceOverriddenBackBurstCaptureInterval"];
    overriddenFrontCaptureInterval = [v11 integerForKey:@"CAMInternalPreferenceOverriddenFrontBurstCaptureInterval"];
    self->_overriddenFrontCaptureInterval = overriddenFrontCaptureInterval;
    if (self->_overriddenBackCaptureInterval >= 1)
    {
      v303 = os_log_create("com.apple.camera", "UserPreferences");
      if (os_log_type_enabled(v303, OS_LOG_TYPE_DEFAULT))
      {
        overriddenBackCaptureInterval = self->_overriddenBackCaptureInterval;
        *buf = 134217984;
        *&buf[4] = overriddenBackCaptureInterval;
        _os_log_impl(&dword_1A3640000, v303, OS_LOG_TYPE_DEFAULT, "Using overridden back capture interval: %ld", buf, 0xCu);
      }

      overriddenFrontCaptureInterval = self->_overriddenFrontCaptureInterval;
    }

    if (overriddenFrontCaptureInterval >= 1)
    {
      v305 = os_log_create("com.apple.camera", "UserPreferences");
      if (os_log_type_enabled(v305, OS_LOG_TYPE_DEFAULT))
      {
        v306 = self->_overriddenFrontCaptureInterval;
        *buf = 134217984;
        *&buf[4] = v306;
        _os_log_impl(&dword_1A3640000, v305, OS_LOG_TYPE_DEFAULT, "Using overridden front capture interval: %ld", buf, 0xCu);
      }
    }

    self->_burstFollowsEncoderSettings = [v11 BOOLForKey:@"CAMUserPreferenceDebugBurstRespectsEncodingSettings"];
    [v11 doubleForKey:@"CAMDebugResetTimeoutSeconds"];
    self->__resetTimeoutOverride = v307;
    self->_preferredMinimumFreeBytes = [v11 integerForKey:@"CAMInternalPreferenceOverridenPreferredStorageThreshold"];
    if ([v10 featureDevelopmentSmudgeDetectionBaseTimeoutSeconds])
    {
      self->_smudgeNotificationBaseTimeoutInSeconds = [v10 featureDevelopmentSmudgeDetectionBaseTimeoutSeconds];
    }
  }

  v308 = [v10 hostProcess];
  if (v308 <= 4 && ((1 << v308) & 0x15) != 0)
  {
    [(CAMUserPreferences *)self _publishAnalyticsIfNeededAfterAppLaunch];
  }

  [(CAMUserPreferences *)self _setHasReadLastWrittenValues:1];
  if (a6)
  {
    *a6 = a4 == 0 && (v323 || v322);
  }

  return v324;
}

id __140__CAMUserPreferences_readPreferencesWithOverrides_emulationMode_callActive_shouldResetCaptureConfiguration_bypassXPCWhenReadingSystemStyle___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  if (!v2)
  {
    v3 = 0;
    goto LABEL_5;
  }

  v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];
  v4 = [v3 timestamp];
  [v4 timeIntervalSinceNow];
  v6 = fabs(v5);

  v7 = 0;
  if (v6 <= 86400.0)
  {
LABEL_5:
    v3 = v3;
    v7 = v3;
  }

  return v7;
}

- (unint64_t)_updateEntryForPresetType:(int64_t)a3 inSmartStyles:(id)a4 withStyle:(id)a5
{
  v7 = a4;
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__CAMUserPreferences__updateEntryForPresetType_inSmartStyles_withStyle___block_invoke;
  v11[3] = &__block_descriptor_40_e30_B32__0__CEKSmartStyle_8Q16_B24l;
  v11[4] = a3;
  v9 = [v7 indexOfObjectPassingTest:v11];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v7 setObject:v8 atIndexedSubscript:v9];
  }

  return v9;
}

- (id)_semanticStylesKey
{
  v2 = +[CAMCaptureCapabilities capabilities];
  v3 = [v2 semanticStylesVersion];

  v4 = @"CAMUserPreferenceSmartStylesCustomizedStyles";
  if (v3 != 1)
  {
    v4 = 0;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return @"CAMUserPreferenceSemanticStyles";
  }
}

uint64_t __38__CAMUserPreferences_writePreferences__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10 = v5;
  if (*(a1 + 48) != 1 || [*(a1 + 32) smartStyleSystemStyleIndex] != a3 && (v6 = objc_msgSend(v10, "isCustomized"), v5 = v10, v6))
  {
    v7 = *(a1 + 40);
    v8 = [v5 dictionaryRepresentation];
    [v7 addObject:v8];
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)_writeSmartStylePresetStringForIndex:(int64_t)a3 inStyles:(id)a4 key:(id)a5
{
  v10 = a4;
  v7 = a5;
  if ([v10 count] <= a3)
  {
    v9 = 0;
  }

  else
  {
    v8 = [v10 objectAtIndexedSubscript:a3];
    v9 = [MEMORY[0x1E6993890] persistenceStringForPresetType:{objc_msgSend(v8, "presetType")}];
  }

  CFPreferencesSetAppValue(v7, v9, @"com.apple.camera");
}

- (int64_t)_findIndexOfSmartStylePresetString:(id)a3 inStyles:(id)a4
{
  v5 = a4;
  v10 = 0;
  v6 = [MEMORY[0x1E6993890] presetTypeFromPersistenceString:a3 success:&v10];
  if (v10 == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__CAMUserPreferences__findIndexOfSmartStylePresetString_inStyles___block_invoke;
    v9[3] = &__block_descriptor_40_e34_B32__0___CEKCaptureStyle__8Q16_B24l;
    v9[4] = v6;
    v7 = [v5 indexOfObjectPassingTest:v9];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (void)_updateLastWrittenSettingsDate
{
  v4 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  v3 = [MEMORY[0x1E695DF00] now];
  [v4 setObject:v3 forKey:@"CAMUserPreferencesLastWrittenSettingsDate"];
  [(CAMUserPreferences *)self _setLastWrittenSettingsDate:v3];
}

+ (void)updateLastViewedSettingsDate
{
  v2 = [MEMORY[0x1E695DF00] now];
  CFPreferencesSetAppValue(@"CAMUserPreferencesLastViewedSettingsInterfaceDate", v2, @"com.apple.camera");
}

- (BOOL)_shouldReconfigureCurrentConfigurationForSettingsChange
{
  v3 = [(CAMUserPreferences *)self _lastViewedSettingsInterfaceDate];
  v4 = [(CAMUserPreferences *)self _lastWrittenSettingsDate];
  v5 = !-[CAMUserPreferences _hasReadLastWrittenValues](self, "_hasReadLastWrittenValues") && [v4 compare:v3] == -1;

  return v5;
}

- (NSDate)resetTimeoutDate
{
  v3 = [(CAMUserPreferences *)self _lastWrittenSettingsDate];
  [(CAMUserPreferences *)self _resetTimeoutSeconds];
  if (v3)
  {
    [MEMORY[0x1E695DF00] dateWithTimeInterval:v3 sinceDate:?];
  }

  else
  {
    [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
  }
  v4 = ;

  return v4;
}

- (BOOL)_shouldResetPreferencesForTimeout
{
  v3 = [(CAMUserPreferences *)self resetTimeoutDate];
  v4 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  v5 = [v4 BOOLForKey:@"CAMUserPreferencePreserveAllSettings"];

  if ((v5 & 1) != 0 || [(CAMUserPreferences *)self _hasReadLastWrittenValues])
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E695DF00] now];
    v6 = [v3 compare:v7] == -1;
  }

  return v6;
}

- (double)_resetTimeoutSeconds
{
  v8 = *MEMORY[0x1E69E9840];
  [(CAMUserPreferences *)self _resetTimeoutOverride];
  v3 = v2;
  result = 30.0;
  if (v3 > 0.0)
  {
    v5 = os_log_create("com.apple.camera", "UserPreferences");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "DEBUG: overriding reset timeout as %f seconds", &v6, 0xCu);
    }

    return v3;
  }

  return result;
}

- (int64_t)videoEncodingBehaviorForConfiguration:(int64_t)a3 mode:(int64_t)a4 desiredProResVideoMode:(int64_t)a5 outputToExternalStorage:(BOOL)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v13 = +[CAMCaptureCapabilities capabilities];
  v14 = v13;
  if (a5 != 1 || ([v13 isProResVideoSupportedForMode:a4 videoConfiguration:a3 outputToExternalStorage:v8 frontRearSimultaneousVideoEnabled:v7] & 1) == 0)
  {
    if ([v14 isHEVCEncodingSupported])
    {
      if ((a4 - 7) < 3)
      {
        v16 = 1;
      }

      else
      {
        v16 = (a3 < 0xF) & (0x6300u >> a3);
      }

      if (-[CAMUserPreferences HDR10BitVideoEnabled](self, "HDR10BitVideoEnabled") && [v14 isHDR10BitVideoSupportedForMode:a4])
      {
        if ((v16 | [v14 isHDR10BitVideoSupportedForVideoConfiguration:a3 videoEncodingBehavior:1]))
        {
          goto LABEL_14;
        }
      }

      else if (v16)
      {
LABEL_14:
        v15 = 1;
        goto LABEL_16;
      }

      if ([(CAMUserPreferences *)self _preferHEVCWhenAvailable])
      {
        goto LABEL_14;
      }
    }

    v15 = 0;
    goto LABEL_16;
  }

  v15 = 2;
LABEL_16:

  return v15;
}

- (int64_t)photoEncodingBehaviorForMode:(int64_t)a3 resolvedRAWMode:(int64_t)a4 isCapturingVideo:(BOOL)a5 isTrueVideo:(BOOL)a6
{
  result = 0;
  if (!a5 && !a6)
  {
    if (a4 == 1)
    {
      result = 2;
    }

    else
    {
      result = [(CAMUserPreferences *)self photoEncodingBehavior];
    }
  }

  if (a3 == 9)
  {
    return 1;
  }

  return result;
}

+ (BOOL)shouldEnableHDR10BitVideoForHEVCEnabled:(BOOL)a3 capabilities:(id)a4
{
  v5 = [a4 isHDR10BitVideoSupported];
  if (v5)
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceHDR10BitVideoEnabled", @"com.apple.camera", &keyExistsAndHasValidFormat);
    v7 = AppBooleanValue;
    if (a3)
    {
      if (AppBooleanValue)
      {
        v8 = 1;
      }

      else
      {
        v8 = keyExistsAndHasValidFormat == 0;
      }

      LOBYTE(v5) = v8;
    }

    else
    {
      v9 = CFPreferencesGetAppBooleanValue(@"CAMUserPreferencesDidConfirmHDR10BitVideoMostCompatiblePreference", @"com.apple.camera", 0);
      if (v7)
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 1;
      }

      LOBYTE(v5) = !v10;
    }
  }

  return v5;
}

- (BOOL)prefersHDR10BitVideoForCapabilities:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [objc_opt_class() shouldEnableHDR10BitVideoForHEVCEnabled:-[CAMUserPreferences _preferHEVCWhenAvailable](self capabilities:{"_preferHEVCWhenAvailable"), v4}];

  return self;
}

- (BOOL)shouldDisableCameraSwitchingDuringVideoRecordingForMode:(int64_t)a3
{
  if (a3 > 9)
  {
    return 0;
  }

  if (((1 << a3) & 0x86) != 0)
  {
    return [(CAMUserPreferences *)self _shouldDisableCameraSwitchingDuringVideoRecording];
  }

  return ((1 << a3) & 0x300) != 0;
}

- (void)setDidAcknowledgePortraitModeDescription:(BOOL)a3
{
  v3 = a3;
  v6 = +[CAMCaptureCapabilities capabilities];
  if ((([v6 isFrontPortraitModeSupported] & 1) != 0 || objc_msgSend(v6, "isBackPortraitModeSupported")) && self->_didAcknowledgePortraitModeDescription != v3)
  {
    self->_didAcknowledgePortraitModeDescription = v3;
    v5 = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [v5 setBool:v3 forKey:@"CAMUserPreferencePortraitModeDidAcknowledgeDescription_12"];
  }
}

- (void)setDidAcknowledgeCinematicModeDescription:(BOOL)a3
{
  v3 = a3;
  v5 = +[CAMCaptureCapabilities capabilities];
  v6 = [v5 isCinematicModeSupported];

  if (v6 && self->_didAcknowledgeCinematicModeDescription != v3)
  {
    self->_didAcknowledgeCinematicModeDescription = v3;
    v7 = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [v7 setBool:v3 forKey:@"CAMUserPreferenceCinematicModeDidAcknowledgeDescription"];
  }
}

- (void)setDidAcknowledgeSemanticStylesDescription:(BOOL)a3
{
  v3 = a3;
  v5 = +[CAMCaptureCapabilities capabilities];
  v6 = [v5 semanticStylesSupport];

  if ((v6 & 8) != 0 && self->_didAcknowledgeSemanticStylesDescription != v3)
  {
    self->_didAcknowledgeSemanticStylesDescription = v3;
    v7 = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [v7 setBool:v3 forKey:@"CAMUserPreferenceSemanticStylesDidAcknowledgeDescription"];
  }
}

+ (BOOL)canShowSmartStylesOnboardingForCapabilities:(id)a3
{
  v3 = a3;
  v4 = ([v3 semanticStylesSupport] >> 3) & 1;
  v5 = [v3 smartStylesSupported];

  return v5 & v4;
}

- (void)setDidAcknowledgeSmartStylesDescription:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();
  v6 = +[CAMCaptureCapabilities capabilities];
  LODWORD(v5) = [v5 canShowSmartStylesOnboardingForCapabilities:v6];

  if (v5 && self->_didAcknowledgeSmartStylesDescription != v3)
  {
    self->_didAcknowledgeSmartStylesDescription = v3;
    v7 = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [v7 setBool:v3 forKey:@"CAMUserPreferenceSmartStylesDidAcknowledgeDescription"];
  }
}

- (BOOL)mirrorCameraCapturesForDevicePosition:(int64_t)a3 mode:(int64_t)a4
{
  if (a3 != 1 || ![(CAMUserPreferences *)self shouldMirrorFrontCameraCaptures])
  {
    return 0;
  }

  v5 = +[CAMCaptureCapabilities capabilities];
  v6 = [v5 mirroredFrontCapturesSupportedForMode:a4];

  return v6;
}

- (int64_t)maximumPhotoResolutionForMode:(int64_t)a3 device:(int64_t)a4
{
  v7 = +[CAMCaptureCapabilities capabilities];
  if ((a4 - 1) > 0xA)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_1A3A68210[a4 - 1];
  }

  v9 = [(CAMUserPreferences *)self preferredHEICPhotoResolutionForDevicePosition:v8];
  v10 = [(CAMUserPreferences *)self maximumRAWPhotoResolution];
  if ([(CAMUserPreferences *)self shouldUsePhotoFormatControlForMode:a3])
  {
    v9 = [v7 maximumPhotoResolutionForMode:a3 device:a4 encoding:1];
    v10 = [v7 maximumPhotoResolutionForMode:a3 device:a4 encoding:2];
  }

  v11 = [v7 isPhotoResolutionSupported:v10 forMode:a3 device:a4 photoEncoding:2];
  v12 = [v7 isPhotoResolutionSupported:v9 forMode:a3 device:a4 photoEncoding:1];
  if ((v10 - 1) > 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = qword_1A3A681F8[v10 - 1];
  }

  if ((v9 - 1) > 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = qword_1A3A681F8[v9 - 1];
  }

  v15 = v13 > v14;
  v16 = v11 ^ 1;
  if (!v15)
  {
    v16 = 1;
  }

  if ((v16 & 1) != 0 || ![(CAMUserPreferences *)self rawControlEnabled])
  {
    if (v12)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (int64_t)preferredHEICPhotoResolutionForDevicePosition:(int64_t)a3
{
  if (a3 == 1)
  {
    return [(CAMUserPreferences *)self _frontPreferredHEICPhotoResolution];
  }

  if (a3)
  {
    return 0;
  }

  return [(CAMUserPreferences *)self _backPreferredHEICPhotoResolution];
}

- (int64_t)videoStabilizationStrengthForVideoStabilizationMode:(int64_t)a3 captureMode:(int64_t)a4
{
  if (a3 == 1)
  {
    v6 = [(CAMUserPreferences *)self actionModeLowLightEnabled];
    v5 = 2;
    if (!v6)
    {
      v5 = 3;
    }
  }

  else if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CAMUserPreferences *)self enhancedVideoStabilization];
  }

  if (a4 == 8)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (BOOL)isAutoFPSVideoEnabledForMode:(int64_t)a3 device:(int64_t)a4 videoConfiguration:(int64_t)a5 encodingBehavior:(int64_t)a6 outputToExternalStorage:(BOOL)a7 frontRearSimultaneousVideoEnabled:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v15 = +[CAMCaptureCapabilities capabilities];
  v16 = +[CAMCaptureCapabilities capabilities];
  v28 = [v15 isAutoFPSVideoSupportedForMode:a3 videoConfiguration:a5 videoEncodingBehavior:a6 outputToExternalStorage:v9 prefersHDR10BitVideo:-[CAMUserPreferences prefersHDR10BitVideoForCapabilities:](self frontRearSimultaneousVideoEnabled:{"prefersHDR10BitVideoForCapabilities:", v16), v8}];

  v17 = +[CAMCaptureCapabilities capabilities];
  v18 = +[CAMCaptureCapabilities capabilities];
  LOBYTE(v27) = v8;
  v19 = [v17 resolvedVideoConfigurationForMode:a3 device:a4 videoEncodingBehavior:a6 videoConfiguration:a5 outputToExternalStorage:v9 prefersHDR10BitVideo:-[CAMUserPreferences prefersHDR10BitVideoForCapabilities:](self frontRearSimultaneousVideoEnabled:{"prefersHDR10BitVideoForCapabilities:", v18), v27}];

  if ((v19 - 5) >= 3)
  {
    v22 = v23 && (+[CAMCaptureCapabilities capabilities](CAMCaptureCapabilities, "capabilities"), v24 = v23 = v19 == 9 || v19 == 1;
  }

  else
  {
    v20 = +[CAMCaptureCapabilities capabilities];
    v21 = [v20 isVariableFramerateVideoSupported];

    if (v21)
    {
      v22 = ([(CAMUserPreferences *)self VFRMode]- 1) < 2;
    }

    else
    {
      v22 = [(CAMUserPreferences *)self isLowLightVideoEnabled];
    }
  }

  return v28 & v22;
}

+ (void)performLowLightVideoMigrationWithCapabilities:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (![v3 shouldPersistPreferences])
  {
    goto LABEL_27;
  }

  v4 = [v3 defaultVFRMode];
  keyExistsAndHasValidFormat = 0;
  CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceDidPerformVFRUpgrade", @"com.apple.camera", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    v14 = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceAutoLowLightVideoEnabled", @"com.apple.camera", &v14);
    if (v14)
    {
      if (!AppBooleanValue)
      {
        CFPreferencesSetAppValue(@"CAMUserPreferenceVFRMode", &unk_1F16C7400, @"com.apple.camera");
        v8 = @"Performing one-time upgrade of auto low light from Off to VFRModeOff for variable frame rate video";
LABEL_15:
        v9 = os_log_create("com.apple.camera", "UserPreferences");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v17 = v8;
          _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        CFPreferencesSetAppValue(@"CAMUserPreferenceDidPerformVFRUpgrade", MEMORY[0x1E695E118], @"com.apple.camera");
        CFPreferencesAppSynchronize(@"com.apple.camera");

        goto LABEL_18;
      }

      if (v4 > 2)
      {
        v6 = 0;
      }

      else
      {
        v6 = off_1E76F9438[v4];
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"Performing one-time upgrade of auto low light from On to %@ for variable frame rate video", v6];
    }

    else
    {
      if (v4 > 2)
      {
        v7 = 0;
      }

      else
      {
        v7 = off_1E76F9438[v4];
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempted one-time upgrade of auto low light. Key doesn't exist. Using %@ for variable frame rate video", v7];
    }
    v8 = ;
    CFPreferencesSetAppValue(@"CAMUserPreferenceVFRMode", [MEMORY[0x1E696AD98] numberWithInteger:v4], @"com.apple.camera");
    goto LABEL_15;
  }

LABEL_18:
  v14 = 0;
  CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceDidPerformVFRUpgrade2", @"com.apple.camera", &v14);
  if (!v14 && v4 == 2)
  {
    v13 = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CAMUserPreferenceVFRMode", @"com.apple.camera", &v13);
    if (!v13 || AppIntegerValue)
    {
      CFPreferencesSetAppValue(@"CAMUserPreferenceVFRMode", [MEMORY[0x1E696AD98] numberWithInteger:2], @"com.apple.camera");
      v11 = @"Performing one-time upgrade to VFRMode30And60";
    }

    else
    {
      v11 = @"Not upgrading to VFRMode30And60 because user value was set to VFRModeOff";
    }

    v12 = os_log_create("com.apple.camera", "UserPreferences");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    CFPreferencesSetAppValue(@"CAMUserPreferenceDidPerformVFRUpgrade2", MEMORY[0x1E695E118], @"com.apple.camera");
    CFPreferencesAppSynchronize(@"com.apple.camera");
  }

LABEL_27:
}

+ (void)performResponsiveShutterMigrationWithCapabilities:(id)a3
{
  if ([a3 shouldPersistPreferences])
  {
    keyExistsAndHasValidFormat = 0;
    CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceEnableResponsiveShutterMigrationFromCoreMedia", @"com.apple.camera", &keyExistsAndHasValidFormat);
    if (!keyExistsAndHasValidFormat)
    {
      v9 = 0;
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"responsiveShutter.adaptiveQuality.enabled", @"com.apple.coremedia", &v9);
      if (v9)
      {
        CFPreferencesSetAppValue(@"CAMUserPreferenceEnableResponsiveShutter", [MEMORY[0x1E696AD98] numberWithBool:AppBooleanValue != 0], @"com.apple.camera");
        v4 = os_log_create("com.apple.camera", "UserPreferences");
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 0;
          v5 = "Performing one-time migration of responsiveShutter.adaptiveQuality.enabled | com.apple.coremedia to CAMUserPreferenceEnableResponsiveShutter";
          v6 = &v8;
LABEL_8:
          _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
        }
      }

      else
      {
        v4 = os_log_create("com.apple.camera", "UserPreferences");
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 0;
          v5 = "When attempting one-time migration of responsiveShutter.adaptiveQuality.enabled | com.apple.coremedia, no value found. Not updating CAMUserPreferenceEnableResponsiveShutter";
          v6 = &v7;
          goto LABEL_8;
        }
      }

      CFPreferencesSetAppValue(@"CAMUserPreferenceEnableResponsiveShutterMigrationFromCoreMedia", MEMORY[0x1E695E118], @"com.apple.camera");
    }
  }
}

- (void)writeAvailableDevicesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[CAMCaptureCapabilities capabilities];
  v6 = [v5 fallbackCameraSupported];

  if (v6)
  {
    if ([(CAMUserPreferences *)self writingAvailableDevices])
    {
      v7 = os_log_create("com.apple.camera", "UserPreferences");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "writeAvailableDevices already writing", buf, 2u);
      }

      v4[2](v4, 0);
    }

    else
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __58__CAMUserPreferences_writeAvailableDevicesWithCompletion___block_invoke;
      v8[3] = &unk_1E76F9260;
      v8[4] = self;
      v9 = v4;
      [CAMFallbackConfiguration getAvailableFallbackDevicesWithCompletion:v8];
    }
  }
}

void __58__CAMUserPreferences_writeAvailableDevicesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__CAMUserPreferences_writeAvailableDevicesWithCompletion___block_invoke_2;
  v6[3] = &unk_1E76F9238;
  objc_copyWeak(&v9, &location);
  v4 = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__CAMUserPreferences_writeAvailableDevicesWithCompletion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setWritingAvailableDevices:0];
    v4 = *(a1 + 32);
    v5 = MEMORY[0x1E695DFF8];
    v6 = +[CAMFallbackConfiguration getPathOfFallbackDevicesFile];
    v7 = [v5 fileURLWithPath:v6];
    v11 = 0;
    [v4 writeToURL:v7 error:&v11];
    v8 = v11;

    v9 = os_log_create("com.apple.camera", "UserPreferences");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "writeAvailableDevicesWithCompletion failed with error %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v8 == 0);
  }

  else
  {
    v10 = os_log_create("com.apple.camera", "UserPreferences");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __58__CAMUserPreferences_writeAvailableDevicesWithCompletion___block_invoke_2_cold_1(v10);
    }

    (*(*(a1 + 40) + 16))();
  }
}

+ (void)performSuperWideAutoMacroMigrationWithCapabilities:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 shouldPersistPreferences])
  {
    if ([v3 shouldPerformSuperWideAutoMacroMigration])
    {
      keyExistsAndHasValidFormat = 0;
      CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceDidPerformSuperWideAutoMacroUpgrade", @"com.apple.camera", &keyExistsAndHasValidFormat);
      if (!keyExistsAndHasValidFormat)
      {
        v7 = 0;
        AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceEnableSuperWideAutoMacro", @"com.apple.camera", &v7);
        v5 = @"Attemped one-time upgrade of Auto Macro, which isn't disabled. Leaving default behavior.";
        if (v7 && !AppBooleanValue)
        {
          CFPreferencesSetAppValue(@"CAMUserPreferenceAutoMacroMode", &unk_1F16C7400, @"com.apple.camera");
          CFPreferencesSetAppValue(@"CAMUserPreferencePreserveSuperWideAutoMacro", MEMORY[0x1E695E118], @"com.apple.camera");
          v5 = @"Performing one-time upgrade of Auto Macro Off to CAMMacroModeOff with preserve Off.";
        }

        v6 = os_log_create("com.apple.camera", "UserPreferences");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v10 = v5;
          _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        CFPreferencesSetAppValue(@"CAMUserPreferenceDidPerformSuperWideAutoMacroUpgrade", MEMORY[0x1E695E118], @"com.apple.camera");
        CFPreferencesAppSynchronize(@"com.apple.camera");
      }
    }
  }
}

+ (void)performAudioConfigurationMigrationWithCapabilities:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesGetAppIntegerValue(@"CAMUserPreferenceAudioConfiguration", @"com.apple.camera", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    if (CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceForceMonoAudioRecording", @"com.apple.camera", 0))
    {
      CFPreferencesSetAppValue(@"CAMUserPreferenceAudioConfiguration", &unk_1F16C7490, @"com.apple.camera");
      CFPreferencesAppSynchronize(@"com.apple.camera");
    }
  }
}

+ (void)performHorizonLevelUpgradeWithCapabilities:(id)a3
{
  if ([a3 shouldPersistPreferences])
  {
    keyExistsAndHasValidFormat = 0;
    CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceDidPerformHorizonLevelUpgrade", @"com.apple.camera", &keyExistsAndHasValidFormat);
    if (!keyExistsAndHasValidFormat)
    {
      if (CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceShowGridOverlay", @"com.apple.camera", 0))
      {
        CFPreferencesSetAppValue(@"CAMUserPreferenceShowHorizonLevelPlumb", MEMORY[0x1E695E118], @"com.apple.camera");
      }

      CFPreferencesSetAppValue(@"CAMUserPreferenceDidPerformHorizonLevelUpgrade", MEMORY[0x1E695E118], @"com.apple.camera");
      CFPreferencesAppSynchronize(@"com.apple.camera");
    }
  }
}

+ (void)performMostCompatibleConfirmationMigrationWithCapabilities:(id)a3
{
  v8 = a3;
  if ([v8 shouldPersistPreferences])
  {
    v3 = [v8 isHEVCEncodingSupported];
    v4 = [MEMORY[0x1E69C0700] newFormatsConfiguration];
    if (v3)
    {
      if (v4 == 1)
      {
        AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CAMUserPreferencesDidConfirmVideoMostCompatible", @"com.apple.camera", 0);
        v6 = CFPreferencesGetAppBooleanValue(@"CAMUserPreferencesDidConfirmVideoMostCompatible", @"com.apple.camera", 0);
        if (AppBooleanValue && v6 == 0)
        {
          CFPreferencesSetAppValue(@"CAMUserPreferencesDidConfirmVideoMostCompatible", MEMORY[0x1E695E118], @"com.apple.camera");
          CFPreferencesAppSynchronize(@"com.apple.camera");
        }
      }
    }
  }
}

+ (void)performApertureMigrationWithCapabilities:(id)a3
{
  v3 = a3;
  if ([v3 isDepthEffectApertureSupported])
  {
    if ([v3 shouldPersistPreferences])
    {
      keyExistsAndHasValidFormat = 0;
      CFPreferencesGetAppBooleanValue(@"CAMUserPreferencePreserveApertureDidMigrate", @"com.apple.camera", &keyExistsAndHasValidFormat);
      if (!keyExistsAndHasValidFormat)
      {
        if (CFPreferencesGetAppBooleanValue(@"CAMUserPreferencePreserveEffectFilter", @"com.apple.camera", 0))
        {
          CFPreferencesSetAppValue(@"CAMUserPreferencePreserveAperture", MEMORY[0x1E695E118], @"com.apple.camera");
        }

        CFPreferencesSetAppValue(@"CAMUserPreferencePreserveApertureDidMigrate", MEMORY[0x1E695E118], @"com.apple.camera");
        CFPreferencesAppSynchronize(@"com.apple.camera");
      }
    }
  }
}

+ (void)performSmartStylesOnboardingAcknowledgementResetWithCapabilities:(id)a3
{
  v3 = objc_opt_class();
  v4 = +[CAMCaptureCapabilities capabilities];
  LODWORD(v3) = [v3 canShowSmartStylesOnboardingForCapabilities:v4];

  if (v3 && !CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceSmartStylesOnboardingDidPerformReset", @"com.apple.camera", 0))
  {
    v5 = [CAMSmartStyleUtilities readAVCaptureSystemStyleBypassXPC:1 allowNil:1];
    if (!v5 && CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceSmartStylesDidAcknowledgeDescription", @"com.apple.camera", 0))
    {
      v6 = os_log_create("com.apple.camera", "UserPreferences");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Performing one-time reset of Styles onboarding", v7, 2u);
      }

      CFPreferencesSetAppValue(@"CAMUserPreferenceSmartStylesDidAcknowledgeDescription", 0, @"com.apple.camera");
    }

    CFPreferencesSetAppValue(@"CAMUserPreferenceSmartStylesOnboardingDidPerformReset", MEMORY[0x1E695E118], @"com.apple.camera");
    CFPreferencesAppSynchronize(@"com.apple.camera");
  }
}

- (BOOL)shouldUsePhotoFormatControlForMode:(int64_t)a3
{
  if ([(CAMUserPreferences *)self photoFormatControlEnabled])
  {
    v4 = +[CAMCaptureCapabilities capabilities];
    v5 = [v4 isPhotoResolutionSupported:3 forMode:a3 device:0 photoEncoding:1];
    v6 = v5 | [v4 isPhotoResolutionSupported:3 forMode:a3 device:1 photoEncoding:1];
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)isPhotoFormat:(id)a3 enabledForMode:(int64_t)a4 device:(int64_t)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v10 = +[CAMCaptureCapabilities capabilities];
  v11 = v10;
  if (var0 < 2)
  {
    if ((a5 - 1) > 0xA)
    {
      v12 = 0;
    }

    else
    {
      v12 = qword_1A3A68210[a5 - 1];
    }

    v13 = [(CAMUserPreferences *)self preferredHEICPhotoResolutionForDevicePosition:v12];
    if (var0 == -[CAMUserPreferences photoEncodingBehavior](self, "photoEncodingBehavior") && (var1 == 3 || var1 == v13 || [v11 featureDevelopmentAllowAllHEICOptionsInPhotoPicker]))
    {
      goto LABEL_13;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  if (var0 != 2 || ![v10 isLinearDNGSupportedForMode:a4] || !-[CAMUserPreferences rawControlEnabled](self, "rawControlEnabled"))
  {
    goto LABEL_14;
  }

LABEL_13:
  v14 = [v11 isPhotoFormatSupported:var0 forMode:var1 device:{a4, a5}];
LABEL_15:

  return v14;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)fallbackPhotoFormatForDesiredFormat:(id)a3 mode:(int64_t)a4 device:(int64_t)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v21 = *MEMORY[0x1E69E9840];
  if ([CAMUserPreferences isPhotoFormat:"isPhotoFormat:enabledForMode:device:" enabledForMode:? device:?])
  {
    v10 = var1;
    v11 = var0;
  }

  else
  {
    v20[0] = xmmword_1A3A67B00;
    v20[1] = xmmword_1A3A681A0;
    v20[2] = xmmword_1A3A681B0;
    v20[3] = xmmword_1A3A681C0;
    v20[4] = vdupq_n_s64(1uLL);
    v20[5] = xmmword_1A3A681D0;
    v20[6] = xmmword_1A3A681E0;
    v20[7] = xmmword_1A3A67B10;
    v19 = [(CAMUserPreferences *)self photoEncodingBehavior];
    if ((a5 - 1) > 0xA)
    {
      v12 = 0;
    }

    else
    {
      v12 = qword_1A3A68210[a5 - 1];
    }

    v13 = [(CAMUserPreferences *)self preferredHEICPhotoResolutionForDevicePosition:v12];
    v14 = 0;
    v15 = 0;
    do
    {
      v11 = *&v20[v14];
      v10 = *(&v20[v14] + 1);
      if (v15)
      {
        if ([(CAMUserPreferences *)self isPhotoFormat:*&v20[v14] enabledForMode:*(&v20[v14] + 1) device:a4, a5])
        {
          goto LABEL_18;
        }

        v15 = 1;
      }

      else
      {
        v15 = var0 == v11 && var1 == v10;
      }

      ++v14;
    }

    while (v14 != 8);
    v10 = v13;
    v11 = v19;
  }

LABEL_18:
  v17 = v11;
  v18 = v10;
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)resolvedPhotoFormatForResolvedResolution:(int64_t)a3 rawMode:(int64_t)a4
{
  if (a3 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a3;
  }

  v6 = [(CAMUserPreferences *)self photoEncodingBehavior];
  if (a4 == 1)
  {
    v6 = 2;
  }

  v7 = v5;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (void)setDidAcknowledgeCTMDescription:(BOOL)a3
{
  if (self->_didAcknowledgeCTMDescription != a3)
  {
    v4 = a3;
    self->_didAcknowledgeCTMDescription = a3;
    v5 = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [v5 setBool:v4 forKey:@"CAMUserPreferenceCTMDidAcknowledgeDescription"];
  }
}

- (int64_t)previewViewAspectModeForMode:(int64_t)a3 isFullScreen:(BOOL)a4
{
  if (a3 > 9)
  {
    return 0;
  }

  if (((1 << a3) & 0x1A6) != 0)
  {
    if (a4)
    {
      return [(CAMUserPreferences *)self _previewAspectModeForVideoModes];
    }

    else
    {
      return [(CAMUserPreferences *)self _windowedPreviewAspectModeForVideoModes];
    }
  }

  if (((1 << a3) & 0x241) == 0)
  {
    return 0;
  }

  if (a4)
  {
    return [(CAMUserPreferences *)self _previewAspectModeForPhotoModes];
  }

  else
  {
    return [(CAMUserPreferences *)self _windowedPreviewAspectModeForPhotoModes];
  }
}

- (void)setPreviewViewAspectMode:(int64_t)a3 forMode:(int64_t)a4 isFullScreen:(BOOL)a5
{
  if (a4 <= 9)
  {
    if (((1 << a4) & 0x1A6) != 0)
    {
      if (a5)
      {
        [(CAMUserPreferences *)self _setPreviewAspectModeForVideoModes:a3];
      }

      else
      {
        [(CAMUserPreferences *)self _setWindowedPreviewAspectModeForVideoModes:a3];
      }
    }

    else if (((1 << a4) & 0x241) != 0)
    {
      if (a5)
      {
        [(CAMUserPreferences *)self _setPreviewAspectModeForPhotoModes:a3];
      }

      else
      {
        [(CAMUserPreferences *)self _setWindowedPreviewAspectModeForPhotoModes:a3];
      }
    }
  }
}

+ (BOOL)isSharedLibrarySupportedAndEnabledForCapabilities:(id)a3
{
  v3 = [a3 librarySelectionSupported];
  if (v3)
  {
    LOBYTE(v3) = CFPreferencesGetAppBooleanValue(*MEMORY[0x1E6978E88], @"com.apple.mobileslideshow", 0) != 0;
  }

  return v3;
}

+ (BOOL)hasSharedLibraryAlgorithmsPreferences
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesGetAppIntegerValue(@"CAMUserPreferenceSharedLibraryMode", @"com.apple.camera", &keyExistsAndHasValidFormat);
  return keyExistsAndHasValidFormat != 0;
}

+ (void)removeSharedLibraryAlgorithmsPreferences
{
  CFPreferencesSetAppValue(@"CAMUserPreferenceSharedLibraryMode", 0, @"com.apple.camera");
  CFPreferencesSetAppValue(@"CAMUserPreferenceSharedLibraryLastLocation", 0, @"com.apple.camera");
  CFPreferencesSetAppValue(@"CAMUserPreferenceSharedLibraryLastLocationAcquiredDuringTrip", 0, @"com.apple.camera");
  CFPreferencesSetAppValue(@"CAMUserPreferenceSharedLibraryLastDiscoveryDate", 0, @"com.apple.camera");
  CFPreferencesSetAppValue(@"CAMUserPreferenceSharedLibraryLastDiscoveryLocation", 0, @"com.apple.camera");
  CFPreferencesSetAppValue(@"CAMUserPreferenceSharedLibraryLastUserActionDate", 0, @"com.apple.camera");
  CFPreferencesSetAppValue(@"CAMUserPreferenceSharedLibraryLastUserActionLocation", 0, @"com.apple.camera");

  CFPreferencesAppSynchronize(@"com.apple.camera");
}

- (void)_resetSharedLibraryAlgorithmsPreferences
{
  [(CAMUserPreferences *)self setSharedLibraryLastLocation:0];
  [(CAMUserPreferences *)self setSharedLibraryLastLocationAcquiredDuringTrip:0];
  [(CAMUserPreferences *)self setSharedLibraryLastDiscoveryDate:0];
  [(CAMUserPreferences *)self setSharedLibraryLastDiscoveryLocation:0];
  [(CAMUserPreferences *)self setSharedLibraryLastUserActionDate:0];
  [(CAMUserPreferences *)self setSharedLibraryLastUserActionLocation:0];
  v3 = [(CAMUserPreferences *)self captureConfiguration];
  [v3 setSharedLibraryMode:0];
}

- (BOOL)allowExplicitProResColorSpace
{
  v2 = +[CAMCaptureCapabilities capabilities];
  v3 = [v2 isProResLogColorSpaceSupported];

  return v3;
}

- (int64_t)colorSpaceForMode:(int64_t)a3 videoConfiguration:(int64_t)a4 videoEncodingBehavior:(int64_t)a5 device:(int64_t)a6 preferredProResColorSpace:(int64_t)a7
{
  v13 = +[CAMCaptureCapabilities capabilities];
  v14 = 1;
  if (a3 > 4)
  {
    if (a3 == 8)
    {
      v14 = 0;
      goto LABEL_22;
    }

    if (a3 != 7)
    {
      v14 = a3 != 5;
      goto LABEL_22;
    }

LABEL_12:
    v18 = [(CAMUserPreferences *)self HDR10BitVideoEnabled];
    v19 = [v13 isHDR10BitVideoSupportedForMode:a3];
    v20 = v18 & v19 & [v13 isHDR10BitVideoSupportedForVideoConfiguration:a4 videoEncodingBehavior:a5];
    if (a5 == 2)
    {
      v21 = [(CAMUserPreferences *)self allowExplicitProResColorSpace];
      if (v21)
      {
        v14 = a7;
      }

      else
      {
        v14 = 2;
      }

      if ((v21 | v20))
      {
        goto LABEL_22;
      }
    }

    else if (v20)
    {
      v14 = 2;
      goto LABEL_22;
    }

    v14 = (v18 | ~v19) & 1;
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    goto LABEL_12;
  }

  if (a3 == 2)
  {
    if (!a4)
    {
      LOBYTE(v23) = 0;
      a4 = [v13 resolvedVideoConfigurationForMode:2 device:a6 videoEncodingBehavior:a5 videoConfiguration:0 outputToExternalStorage:0 prefersHDR10BitVideo:-[CAMUserPreferences prefersHDR10BitVideoForCapabilities:](self frontRearSimultaneousVideoEnabled:{"prefersHDR10BitVideoForCapabilities:", v13), v23}];
    }

    v15 = [(CAMUserPreferences *)self HDR10BitVideoEnabled];
    v16 = [v13 isHDR10BitVideoSupportedForMode:2];
    v17 = [v13 isHDR10BitVideoSupportedForVideoConfiguration:a4 videoEncodingBehavior:a5];
    if ((v15 & v16 & v17 & [v13 isHDR10BitSlomoSupportedForDevice:a6]) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }
  }

LABEL_22:

  return v14;
}

- (void)setExplicitProResColorSpace:(int64_t)a3
{
  v5 = +[CAMCaptureCapabilities capabilities];
  v6 = [v5 supportedProResColorSpaces];

  if (v6 && self->_explicitProResColorSpace != a3)
  {
    self->_explicitProResColorSpace = a3;
    v7 = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [v7 setInteger:a3 forKey:@"CAMUserPreferenceExplicitProResColorSpace"];
  }
}

- (void)setDidAcknowledgeDepthInPhotoModeDescription:(BOOL)a3
{
  if (self->_didAcknowledgeDepthInPhotoModeDescription != a3)
  {
    v4 = a3;
    self->_didAcknowledgeDepthInPhotoModeDescription = a3;
    v5 = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [v5 setBool:v4 forKey:@"CAMUserPreferenceDidAcknowledgeDepthInPhotoModeDescription"];
  }
}

- (unint64_t)audioConfigurationForMode:(int64_t)a3 device:(int64_t)a4 emulationMode:(int64_t)a5 duringCall:(BOOL)a6
{
  v8 = 0;
  if (a3 <= 9)
  {
    if (((1 << a3) & 0x186) != 0)
    {
      v8 = 1;
    }

    else if (((1 << a3) & 0x211) != 0)
    {
      v9 = a6;
      if ((a4 - 1) > 0xA)
      {
        v11 = 0;
      }

      else
      {
        v11 = qword_1A3A68210[a4 - 1];
      }

      v12 = +[CAMCaptureCapabilities capabilities];
      v13 = [v12 isLivePhotoSupportedForDevicePosition:v11];

      if (v13)
      {
        if (a5)
        {
          v8 = 0;
        }

        else
        {
          v8 = !v9;
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  v14 = +[CAMCaptureCapabilities capabilities];
  v15 = [v14 disableAudio];

  v16 = +[CAMCaptureCapabilities capabilities];
  v17 = [v16 isStereoAudioRecordingSupportedForMode:a3];
  v18 = [v16 isCinematicAudioSupportedForMode:a3];
  v19 = [(CAMUserPreferences *)self preferredAudioConfiguration];
  v20 = 0;
  if (v8 && !v15)
  {
    if (v19 == 3)
    {
      v21 = 1;
      if (v17)
      {
        v21 = 2;
      }

      if (v18)
      {
        v20 = 3;
      }

      else
      {
        v20 = v21;
      }
    }

    else if (v19 == 2)
    {
      if (v17)
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = v19 == 1;
    }
  }

  return v20;
}

+ (unint64_t)selectedAudioConfigurationForCapabilities:(id)a3
{
  v3 = a3;
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CAMUserPreferenceAudioConfiguration", @"com.apple.camera", &keyExistsAndHasValidFormat);
  v5 = AppIntegerValue;
  if (AppIntegerValue != 1)
  {
    if (AppIntegerValue == 3)
    {
      LOBYTE(AppIntegerValue) = [v3 isCinematicAudioSupported];
    }

    else
    {
      if (AppIntegerValue != 2)
      {
LABEL_8:
        if ([v3 isCinematicAudioSupported])
        {
          v5 = 3;
        }

        else if ([v3 isStereoAudioRecordingSupported])
        {
          v5 = 2;
        }

        else
        {
          v5 = 1;
        }

        goto LABEL_13;
      }

      LOBYTE(AppIntegerValue) = [v3 isStereoAudioRecordingSupported];
    }
  }

  if (!keyExistsAndHasValidFormat || (AppIntegerValue & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:

  return v5;
}

- (void)setDidAcknowledgeSpatialModeOverlayDescription:(BOOL)a3
{
  if (self->_didAcknowledgeSpatialModeOverlayDescription != a3)
  {
    v4 = a3;
    self->_didAcknowledgeSpatialModeOverlayDescription = a3;
    v5 = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [v5 setBool:v4 forKey:@"CAMUserPreferenceDidAcknowledgeSpatialModeOverlayDescription"];
  }
}

- (void)setDidAcknowledgeSolCamDescription:(BOOL)a3
{
  if (self->_didAcknowledgeSolCamDescription != a3)
  {
    v4 = a3;
    self->_didAcknowledgeSolCamDescription = a3;
    v5 = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [v5 setBool:v4 forKey:@"CAMUserPreferenceDidAcknowledgeSolCamModeOverlayDescription"];
  }
}

+ (id)_convertDictionary:(id)a3 expectedKeyClass:(Class)a4 expectedValueClass:(Class)a5 keyConverter:(id)a6 valueConverter:(id)a7
{
  v11 = a6;
  v12 = a7;
  v13 = MEMORY[0x1E695DF90];
  v14 = a3;
  v15 = [[v13 alloc] initWithCapacity:{objc_msgSend(v14, "count")}];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __105__CAMUserPreferences__convertDictionary_expectedKeyClass_expectedValueClass_keyConverter_valueConverter___block_invoke;
  v22[3] = &unk_1E76F9288;
  v26 = a4;
  v27 = a5;
  v24 = v11;
  v25 = v12;
  v16 = v15;
  v23 = v16;
  v17 = v12;
  v18 = v11;
  [v14 enumerateKeysAndObjectsUsingBlock:v22];

  v19 = v23;
  v20 = v16;

  return v16;
}

void __105__CAMUserPreferences__convertDictionary_expectedKeyClass_expectedValueClass_keyConverter_valueConverter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_isKindOfClass())
  {
    v7 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = 0;
  }

  if (objc_opt_isKindOfClass())
  {
    v8 = (*(*(a1 + 48) + 16))();
    v9 = v8;
    if (v7 && v8)
    {
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
      goto LABEL_19;
    }

    if (v7)
    {
      if (v8)
      {
        goto LABEL_19;
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (v7)
    {
LABEL_9:
      v10 = os_log_create("com.apple.camera", "UserPreferences");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __105__CAMUserPreferences__convertDictionary_expectedKeyClass_expectedValueClass_keyConverter_valueConverter___block_invoke_cold_2();
      }

      v9 = 0;
      goto LABEL_19;
    }

    v9 = 0;
  }

  v11 = os_log_create("com.apple.camera", "UserPreferences");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __105__CAMUserPreferences__convertDictionary_expectedKeyClass_expectedValueClass_keyConverter_valueConverter___block_invoke_cold_1();
  }

LABEL_19:
}

+ (id)_createMappingFromStringsToIntegers:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v3[2](v3, 0);
  if ([v5 length])
  {
    v6 = 0;
    do
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
      [v4 setObject:v7 forKeyedSubscript:v5];

      v5 = v3[2](v3, ++v6);
    }

    while ([v5 length]);
  }

  return v4;
}

+ (id)_persistenceDictionaryForPreferredDrawerControlByMode:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [a1 _convertDictionary:v4 expectedKeyClass:v5 expectedValueClass:objc_opt_class() keyConverter:&__block_literal_global_666 valueConverter:&__block_literal_global_668];

  return v6;
}

__CFString *__76__CAMUserPreferences__persistenceDictionaryForPreferredDrawerControlByMode___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 9)
  {
    return 0;
  }

  else
  {
    return off_1E76F9450[v2];
  }
}

__CFString *__76__CAMUserPreferences__persistenceDictionaryForPreferredDrawerControlByMode___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 0xF)
  {
    return 0;
  }

  else
  {
    return off_1E76F94A0[v2];
  }
}

+ (id)_preferredDrawerControlByModeForPersistenceDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v9[4] = a1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__CAMUserPreferences__preferredDrawerControlByModeForPersistenceDictionary___block_invoke;
  v10[3] = &__block_descriptor_40_e28___NSNumber_16__0__NSString_8l;
  v10[4] = a1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__CAMUserPreferences__preferredDrawerControlByModeForPersistenceDictionary___block_invoke_2;
  v9[3] = &__block_descriptor_40_e28___NSNumber_16__0__NSString_8l;
  v7 = [a1 _convertDictionary:v4 expectedKeyClass:v5 expectedValueClass:v6 keyConverter:v10 valueConverter:v9];

  return v7;
}

+ (id)_captureModeNumberForPersistenceString:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CAMUserPreferences__captureModeNumberForPersistenceString___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v3 = _captureModeNumberForPersistenceString__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&_captureModeNumberForPersistenceString__onceToken, block);
  }

  v5 = [_captureModeNumberForPersistenceString__stringToIntegerMap objectForKeyedSubscript:v4];

  return v5;
}

uint64_t __61__CAMUserPreferences__captureModeNumberForPersistenceString___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _createMappingFromStringsToIntegers:&__block_literal_global_673];
  v2 = _captureModeNumberForPersistenceString__stringToIntegerMap;
  _captureModeNumberForPersistenceString__stringToIntegerMap = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

__CFString *__61__CAMUserPreferences__captureModeNumberForPersistenceString___block_invoke_2(uint64_t a1, unint64_t a2)
{
  if (a2 > 9)
  {
    return 0;
  }

  else
  {
    return off_1E76F9450[a2];
  }
}

+ (id)_drawerControlTypeNumberForPersistenceString:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CAMUserPreferences__drawerControlTypeNumberForPersistenceString___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v3 = _drawerControlTypeNumberForPersistenceString__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&_drawerControlTypeNumberForPersistenceString__onceToken, block);
  }

  v5 = [_drawerControlTypeNumberForPersistenceString__stringToIntegerMap objectForKeyedSubscript:v4];

  return v5;
}

uint64_t __67__CAMUserPreferences__drawerControlTypeNumberForPersistenceString___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _createMappingFromStringsToIntegers:&__block_literal_global_675];
  v2 = _drawerControlTypeNumberForPersistenceString__stringToIntegerMap;
  _drawerControlTypeNumberForPersistenceString__stringToIntegerMap = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

__CFString *__67__CAMUserPreferences__drawerControlTypeNumberForPersistenceString___block_invoke_2(uint64_t a1, unint64_t a2)
{
  if (a2 > 0xF)
  {
    return 0;
  }

  else
  {
    return off_1E76F94A0[a2];
  }
}

+ (void)resetSmudgeDetectionDisplay
{
  CFPreferencesSetAppValue(@"CAMUserPreferenceRearFacingSmudgeDetectionAcknowledgedCount", 0, @"com.apple.camera");
  CFPreferencesSetAppValue(@"CAMUserPreferenceFrontFacingSmudgeDetectionAcknowledgedCount", 0, @"com.apple.camera");
  CFPreferencesSetAppValue(@"CAMUserPreferenceRearFacingSmudgeNotDetectedCount", 0, @"com.apple.camera");
  CFPreferencesSetAppValue(@"CAMUserPreferenceFrontFacingSmudgeNotDetectedCount", 0, @"com.apple.camera");
  CFPreferencesSetAppValue(@"CAMUserPreferenceSmudgeDetectionResetBySettingsToggle", MEMORY[0x1E695E118], @"com.apple.camera");

  CFPreferencesAppSynchronize(@"com.apple.camera");
}

- (id)smudgeAcknowledgementDateForDevicePosition:(int64_t)a3
{
  v4 = [(CAMUserPreferences *)self _devicePositionString:a3];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMUserPreferenceLastAcknowledged%@SmudgeDetection", v4];
  v6 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  v7 = [v6 objectForKey:v5];

  return v7;
}

- (void)setSmudgeAcknowledgementDate:(id)a3 forDevicePosition:(int64_t)a4
{
  v6 = a3;
  v10 = [(CAMUserPreferences *)self _devicePositionString:a4];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMUserPreferenceLastAcknowledged%@SmudgeDetection", v10];
  v8 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [v8 setObject:v6 forKey:v7];

  v9 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [v9 synchronize];
}

- (int64_t)smudgeAcknowledgementCountForDevicePosition:(int64_t)a3
{
  v4 = [(CAMUserPreferences *)self _devicePositionString:a3];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMUserPreference%@SmudgeDetectionAcknowledgedCount", v4];
  v6 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  v7 = [v6 integerForKey:v5];

  return v7;
}

- (void)setSmudgeAcknowledgementCount:(int64_t)a3 forDevicePosition:(int64_t)a4
{
  v9 = [(CAMUserPreferences *)self _devicePositionString:a4];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMUserPreference%@SmudgeDetectionAcknowledgedCount", v9];
  v7 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [v7 setInteger:a3 forKey:v6];

  v8 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [v8 synchronize];
}

- (int64_t)smudgeNotDetectedCountForDevicePosition:(int64_t)a3
{
  v4 = [(CAMUserPreferences *)self _devicePositionString:a3];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMUserPreference%@SmudgeNotDetectedCount", v4];
  v6 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  v7 = [v6 integerForKey:v5];

  return v7;
}

- (void)setSmudgeNotDetectedCount:(int64_t)a3 forDevicePosition:(int64_t)a4
{
  v9 = [(CAMUserPreferences *)self _devicePositionString:a4];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMUserPreference%@SmudgeNotDetectedCount", v9];
  v7 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [v7 setInteger:a3 forKey:v6];

  v8 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [v8 synchronize];
}

- (id)smudgeAnalyticsDictionaryForDevicePosition:(int64_t)a3
{
  v4 = [(CAMUserPreferences *)self _devicePositionString:a3];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMUserPreference%@SmudgeAnalyticsDictionary", v4];
  v6 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  v7 = [v6 objectForKey:v5];

  return v7;
}

- (void)setSmudgeAnalyticsDictionary:(id)a3 forDevicePosition:(int64_t)a4
{
  v6 = a3;
  v10 = [(CAMUserPreferences *)self _devicePositionString:a4];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMUserPreference%@SmudgeAnalyticsDictionary", v10];
  v8 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [v8 setObject:v6 forKey:v7];

  v9 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [v9 synchronize];
}

- (void)removeSmudgeAnalyticsDictionaryForDevicePosition:(int64_t)a3
{
  v7 = [(CAMUserPreferences *)self _devicePositionString:a3];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMUserPreference%@SmudgeAnalyticsDictionary", v7];
  v5 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [v5 removeObjectForKey:v4];

  v6 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [v6 synchronize];
}

- (BOOL)smudgeDetectionDisplayWasResetBySettingsToggle
{
  v2 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  v3 = [v2 BOOLForKey:@"CAMUserPreferenceSmudgeDetectionResetBySettingsToggle"];

  return v3;
}

- (void)clearSmudgeDetectionDisplayWasResetBySettingsToggle
{
  v3 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [v3 setBool:0 forKey:@"CAMUserPreferenceSmudgeDetectionResetBySettingsToggle"];

  v4 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [v4 synchronize];
}

- (id)_devicePositionString:(int64_t)a3
{
  v3 = @"FrontFacing";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"RearFacing";
  }
}

+ (int64_t)solCamGroupingType
{
  v2 = CFPreferencesCopyAppValue(@"CAMUserPreferenceSolCamGroupingType", @"com.apple.camera");
  if (v2)
  {
    v3 = [CAMUserPreferences _groupingTypeForString:v2];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

+ (void)setSolCamGroupingType:(int64_t)a3
{
  v3 = [CAMUserPreferences _stringForGroupingType:a3];
  [CAMUserPreferences _setPreferenceValue:v3 forKey:@"CAMUserPreferenceSolCamGroupingType"];
}

+ (void)setSolCamShutterButtonCenterMaterialEnabled:(BOOL)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [CAMUserPreferences _setPreferenceValue:v3 forKey:@"CAMUserPreferenceSolCamShutterButtonCenterMaterialEnabled"];
}

+ (void)setSolCamDebugMenuEnabled:(BOOL)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [CAMUserPreferences _setPreferenceValue:v3 forKey:@"CAMUserPreferenceValueSolariumDebugMenuEnabled"];
}

+ (id)_stringForGroupingType:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"None";
  }

  else
  {
    return off_1E76F9520[a3 - 1];
  }
}

+ (int64_t)_groupingTypeForString:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"None"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"Split"])
    {
      v4 = 1;
      goto LABEL_9;
    }

    if ([v3 isEqualToString:@"Complete"])
    {
      v4 = 2;
      goto LABEL_9;
    }

    if ([v3 isEqualToString:@"TopGroupsBottom"])
    {
      v4 = 3;
      goto LABEL_9;
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid grouping type string %@", v3}];
  }

  v4 = 0;
LABEL_9:

  return v4;
}

+ (void)setSolCamSelectedZoomCenteredEnabled:(BOOL)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [CAMUserPreferences _setPreferenceValue:v3 forKey:@"CAMUserPreferenceSolCamSelectedZoomCenteredEnabled"];
}

+ (void)setSolCamOnboardingEnabled:(BOOL)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [CAMUserPreferences _setPreferenceValue:v3 forKey:@"CAMUserPreferenceSolCamOnboardingEnabled"];
}

+ (int64_t)_preferenceIntegerValueForKey:(id)a3 defaultValue:(int64_t)a4
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(a3, @"com.apple.camera", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return a4;
  }

  return result;
}

+ (BOOL)_preferenceBoolValueForKey:(id)a3 defaultValue:(BOOL)a4
{
  keyExistsAndHasValidFormat = 0;
  v5 = CFPreferencesGetAppBooleanValue(a3, @"com.apple.camera", &keyExistsAndHasValidFormat) != 0;
  if (keyExistsAndHasValidFormat)
  {
    return v5;
  }

  else
  {
    return a4;
  }
}

+ (void)_setPreferenceValue:(id)a3 forKey:(id)a4
{
  CFPreferencesSetAppValue(a4, a3, @"com.apple.camera");

  CFPreferencesAppSynchronize(@"com.apple.camera");
}

+ (void)setTopOverCaptureGradientEnabled:(BOOL)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [CAMUserPreferences _setPreferenceValue:v3 forKey:@"CAMUserPreferenceTopOverCaptureGradientEnabled"];
}

+ (void)setBottomOverCaptureGradientEnabled:(BOOL)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [CAMUserPreferences _setPreferenceValue:v3 forKey:@"CAMUserPreferenceBottomOverCaptureGradientEnabled"];
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)photoFormatControlSecondaryFormat
{
  resolution = self->_photoFormatControlSecondaryFormat.resolution;
  encoding = self->_photoFormatControlSecondaryFormat.encoding;
  result.var1 = resolution;
  result.var0 = encoding;
  return result;
}

@end