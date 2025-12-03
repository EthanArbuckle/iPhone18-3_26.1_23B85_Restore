@interface CAMUserPreferences
+ (BOOL)_fallBackToCameraDefaultsForBundleIdentifier:(id)identifier;
+ (BOOL)_preferenceBoolValueForKey:(id)key defaultValue:(BOOL)value;
+ (BOOL)canShowSmartStylesOnboardingForCapabilities:(id)capabilities;
+ (BOOL)hasSharedLibraryAlgorithmsPreferences;
+ (BOOL)isSharedLibrarySupportedAndEnabledForCapabilities:(id)capabilities;
+ (BOOL)shouldEnableHDR10BitVideoForHEVCEnabled:(BOOL)enabled capabilities:(id)capabilities;
+ (CAMUserPreferences)preferences;
+ (id)_captureModeNumberForPersistenceString:(id)string;
+ (id)_convertDictionary:(id)dictionary expectedKeyClass:(Class)class expectedValueClass:(Class)valueClass keyConverter:(id)converter valueConverter:(id)valueConverter;
+ (id)_createMappingFromStringsToIntegers:(id)integers;
+ (id)_defaultCaptureConfiguration;
+ (id)_defaultExposureBiasesByMode;
+ (id)_drawerControlTypeNumberForPersistenceString:(id)string;
+ (id)_persistenceDictionaryForPreferredDrawerControlByMode:(id)mode;
+ (id)_preferredDrawerControlByModeForPersistenceDictionary:(id)dictionary;
+ (id)_stringForGroupingType:(int64_t)type;
+ (id)defaultCaptureConfiguration;
+ (int64_t)_groupingTypeForString:(id)string;
+ (int64_t)_preferenceIntegerValueForKey:(id)key defaultValue:(int64_t)value;
+ (int64_t)defaultDevicePosition;
+ (int64_t)defaultLightingTypeForMode:(int64_t)mode;
+ (int64_t)solCamGroupingType;
+ (unint64_t)selectedAudioConfigurationForCapabilities:(id)capabilities;
+ (void)_setPreferenceValue:(id)value forKey:(id)key;
+ (void)performApertureMigrationWithCapabilities:(id)capabilities;
+ (void)performAudioConfigurationMigrationWithCapabilities:(id)capabilities;
+ (void)performHorizonLevelUpgradeWithCapabilities:(id)capabilities;
+ (void)performLowLightVideoMigrationWithCapabilities:(id)capabilities;
+ (void)performMostCompatibleConfirmationMigrationWithCapabilities:(id)capabilities;
+ (void)performResponsiveShutterMigrationWithCapabilities:(id)capabilities;
+ (void)performSmartStylesOnboardingAcknowledgementResetWithCapabilities:(id)capabilities;
+ (void)performSuperWideAutoMacroMigrationWithCapabilities:(id)capabilities;
+ (void)removeSharedLibraryAlgorithmsPreferences;
+ (void)resetSmudgeDetectionDisplay;
+ (void)setBottomOverCaptureGradientEnabled:(BOOL)enabled;
+ (void)setSolCamDebugMenuEnabled:(BOOL)enabled;
+ (void)setSolCamGroupingType:(int64_t)type;
+ (void)setSolCamOnboardingEnabled:(BOOL)enabled;
+ (void)setSolCamSelectedZoomCenteredEnabled:(BOOL)enabled;
+ (void)setSolCamShutterButtonCenterMaterialEnabled:(BOOL)enabled;
+ (void)setTopOverCaptureGradientEnabled:(BOOL)enabled;
+ (void)updateLastViewedSettingsDate;
- ($0AC6E346AE4835514AAA8AC86D8F4844)fallbackPhotoFormatForDesiredFormat:(id)format mode:(int64_t)mode device:(int64_t)device;
- ($0AC6E346AE4835514AAA8AC86D8F4844)photoFormatControlSecondaryFormat;
- ($0AC6E346AE4835514AAA8AC86D8F4844)resolvedPhotoFormatForResolvedResolution:(int64_t)resolution rawMode:(int64_t)mode;
- (BOOL)_shouldReconfigureCurrentConfigurationForSettingsChange;
- (BOOL)_shouldResetPreferencesForTimeout;
- (BOOL)allowExplicitProResColorSpace;
- (BOOL)isAutoFPSVideoEnabledForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration encodingBehavior:(int64_t)behavior outputToExternalStorage:(BOOL)storage frontRearSimultaneousVideoEnabled:(BOOL)enabled;
- (BOOL)isPhotoFormat:(id)format enabledForMode:(int64_t)mode device:(int64_t)device;
- (BOOL)mirrorCameraCapturesForDevicePosition:(int64_t)position mode:(int64_t)mode;
- (BOOL)prefersHDR10BitVideoForCapabilities:(id)capabilities;
- (BOOL)readPreferencesWithOverrides:(id)overrides emulationMode:(int64_t)mode callActive:(BOOL)active shouldResetCaptureConfiguration:(BOOL *)configuration bypassXPCWhenReadingSystemStyle:(BOOL)style;
- (BOOL)shouldDisableCameraSwitchingDuringVideoRecordingForMode:(int64_t)mode;
- (BOOL)shouldShowQRBanners;
- (BOOL)shouldUsePhotoFormatControlForMode:(int64_t)mode;
- (BOOL)smudgeDetectionDisplayWasResetBySettingsToggle;
- (NSDate)resetTimeoutDate;
- (double)_resetTimeoutSeconds;
- (double)defaultZoomFactorForGraphConfiguration:(id)configuration captureOrientation:(int64_t)orientation outputToExternalStorage:(BOOL)storage;
- (id)_devicePositionString:(int64_t)string;
- (id)_semanticStylesKey;
- (id)filterTypesForMode:(int64_t)mode;
- (id)smudgeAcknowledgementDateForDevicePosition:(int64_t)position;
- (id)smudgeAnalyticsDictionaryForDevicePosition:(int64_t)position;
- (id)videoThumbnailOutputConfigurationForMode:(int64_t)mode devicePosition:(int64_t)position;
- (int64_t)_findIndexOfSmartStylePresetString:(id)string inStyles:(id)styles;
- (int64_t)_sanitizeEffectFilterType:(int64_t)type forMode:(int64_t)mode;
- (int64_t)_sanitizeLightingType:(int64_t)type forMode:(int64_t)mode;
- (int64_t)colorSpaceForMode:(int64_t)mode videoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior device:(int64_t)device preferredProResColorSpace:(int64_t)space;
- (int64_t)defaultDeviceForModeChange:(int64_t)change devicePosition:(int64_t)position;
- (int64_t)maximumPhotoResolutionForMode:(int64_t)mode device:(int64_t)device;
- (int64_t)photoEncodingBehavior;
- (int64_t)photoEncodingBehaviorForMode:(int64_t)mode resolvedRAWMode:(int64_t)wMode isCapturingVideo:(BOOL)video isTrueVideo:(BOOL)trueVideo;
- (int64_t)ppt_readPortraitLightingType;
- (int64_t)preferredHEICPhotoResolutionForDevicePosition:(int64_t)position;
- (int64_t)previewViewAspectModeForMode:(int64_t)mode isFullScreen:(BOOL)screen;
- (int64_t)smudgeAcknowledgementCountForDevicePosition:(int64_t)position;
- (int64_t)smudgeNotDetectedCountForDevicePosition:(int64_t)position;
- (int64_t)videoEncodingBehaviorForConfiguration:(int64_t)configuration mode:(int64_t)mode desiredProResVideoMode:(int64_t)videoMode outputToExternalStorage:(BOOL)storage frontRearSimultaneousVideoEnabled:(BOOL)enabled;
- (int64_t)videoStabilizationStrengthForVideoStabilizationMode:(int64_t)mode captureMode:(int64_t)captureMode;
- (unint64_t)_updateEntryForPresetType:(int64_t)type inSmartStyles:(id)styles withStyle:(id)style;
- (unint64_t)audioConfigurationForMode:(int64_t)mode device:(int64_t)device emulationMode:(int64_t)emulationMode duringCall:(BOOL)call;
- (void)_publishAnalyticsIfNeeded;
- (void)_publishAnalyticsIfNeededAfterAppLaunch;
- (void)_resetSharedLibraryAlgorithmsPreferences;
- (void)_updateLastWrittenSettingsDate;
- (void)_writeSmartStylePresetStringForIndex:(int64_t)index inStyles:(id)styles key:(id)key;
- (void)clearSmudgeDetectionDisplayWasResetBySettingsToggle;
- (void)removeSmudgeAnalyticsDictionaryForDevicePosition:(int64_t)position;
- (void)resolveDesiredPhotoResolution:(int64_t)resolution livePhotoMode:(int64_t)mode rawMode:(int64_t)rawMode conflicts:(unint64_t)conflicts mode:(int64_t)a7 device:(int64_t)device resolvedPhotoResolution:(int64_t *)photoResolution resolvedLivePhotoMode:(int64_t *)self0;
- (void)setDidAcknowledgeCTMDescription:(BOOL)description;
- (void)setDidAcknowledgeCinematicModeDescription:(BOOL)description;
- (void)setDidAcknowledgeDepthInPhotoModeDescription:(BOOL)description;
- (void)setDidAcknowledgePortraitModeDescription:(BOOL)description;
- (void)setDidAcknowledgeSemanticStylesDescription:(BOOL)description;
- (void)setDidAcknowledgeSmartStylesDescription:(BOOL)description;
- (void)setDidAcknowledgeSolCamDescription:(BOOL)description;
- (void)setDidAcknowledgeSpatialModeOverlayDescription:(BOOL)description;
- (void)setExplicitProResColorSpace:(int64_t)space;
- (void)setPreviewViewAspectMode:(int64_t)mode forMode:(int64_t)forMode isFullScreen:(BOOL)screen;
- (void)setSmudgeAcknowledgementCount:(int64_t)count forDevicePosition:(int64_t)position;
- (void)setSmudgeAcknowledgementDate:(id)date forDevicePosition:(int64_t)position;
- (void)setSmudgeAnalyticsDictionary:(id)dictionary forDevicePosition:(int64_t)position;
- (void)setSmudgeNotDetectedCount:(int64_t)count forDevicePosition:(int64_t)position;
- (void)writeAvailableDevicesWithCompletion:(id)completion;
- (void)writePreferences;
@end

@implementation CAMUserPreferences

+ (CAMUserPreferences)preferences
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CAMUserPreferences_preferences__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
    isBackFlashSupported = [v3 isBackFlashSupported];
    v4 = 2;
    if (!isBackFlashSupported)
    {
      v4 = 0;
    }
  }

  v34 = v4;
  isLivePhotoSupported = [v3 isLivePhotoSupported];
  isLivePhotoAutoModeSupported = [v3 isLivePhotoAutoModeSupported];
  isSuperWideAutoMacroSupported = [v3 isSuperWideAutoMacroSupported];
  defaultMode = [self defaultMode];
  defaultDevice = [self defaultDevice];
  v33 = [self defaultFilterTypeForMode:0];
  v32 = [self defaultFilterTypeForMode:4];
  v30 = [self defaultFilterTypeForMode:6];
  v29 = [self defaultLightingTypeForMode:6];
  semanticStylesVersion = [v3 semanticStylesVersion];
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (semanticStylesVersion == 1)
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
    if (semanticStylesVersion)
    {
      v12 = 0;
    }

    else
    {
      v12 = +[CAMSemanticStyle defaultStyles];
    }

    v28 = 0;
  }

  if ((defaultDevice - 1) > 0xA)
  {
    v15 = 0;
  }

  else
  {
    v15 = qword_1A3A68210[defaultDevice - 1];
  }

  if (isLivePhotoAutoModeSupported)
  {
    v16 = 2;
  }

  else
  {
    v16 = isLivePhotoSupported;
  }

  v17 = [v3 defaultPhotoResolutionForMode:defaultMode devicePosition:v15 encodingBehavior:1];
  v18 = [CAMCaptureConfiguration alloc];
  v19 = +[CAMCaptureCapabilities capabilities];
  [v19 defaultPortraitEffectIntensity];
  v21 = v20;
  _defaultExposureBiasesByMode = [self _defaultExposureBiasesByMode];
  LOBYTE(v27) = 0;
  LOWORD(v26) = [v3 isZoomPIPSupported];
  LOBYTE(v25) = 0;
  v23 = [(CAMCaptureConfiguration *)v18 initWithCaptureMode:defaultMode captureDevice:defaultDevice videoConfiguration:0 audioConfiguration:0 mixAudioWithOthers:1 flashMode:v34 torchMode:0.0 HDRMode:v21 irisMode:0 timerDuration:1 photoModeAspectRatioCrop:v16 photoModeEffectFilterType:0 squareModeEffectFilterType:0 portraitModeEffectFilterType:v33 portraitModeLightingEffectType:v32 portraitModeApertureValue:v30 portraitModeIntensityValue:v29 mirrorFrontCameraCaptures:v25 exposureBiasesByMode:_defaultExposureBiasesByMode macroMode:isSuperWideAutoMacroSupported photoResolution:v17 rawMode:0 proResVideoMode:0 semanticStyles:v12 selectedSemanticStyleIndex:v28 smartStyleSystemStyleIndex:v11 videoStabilizationMode:0 zoomPIPEnabled:v26 optionalDepthEffectEnabled:0 sharedLibraryMode:v27 frontRearSimultaneousVideoEnabled:?];

  return v23;
}

- (int64_t)photoEncodingBehavior
{
  v3 = +[CAMCaptureCapabilities capabilities];
  if ([v3 isHEVCEncodingSupported])
  {
    _preferHEVCWhenAvailable = [(CAMUserPreferences *)self _preferHEVCWhenAvailable];
  }

  else
  {
    _preferHEVCWhenAvailable = 0;
  }

  return _preferHEVCWhenAvailable;
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
  fallbackCameraEnabled = [v3 fallbackCameraEnabled];

  if (fallbackCameraEnabled)
  {
    _underlyingUserDefaults = os_log_create("com.apple.camera", "UserPreferences");
    if (os_log_type_enabled(_underlyingUserDefaults, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, _underlyingUserDefaults, OS_LOG_TYPE_DEFAULT, "Skip writePreferences since we are in a fallback state", buf, 2u);
    }
  }

  else
  {
    _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [_underlyingUserDefaults setInteger:[(CAMUserPreferences *)self _previewAspectModeForPhotoModes] forKey:@"CAMUserPreferencePreviewAspectModeForPhotoModes"];
    [_underlyingUserDefaults setInteger:[(CAMUserPreferences *)self _previewAspectModeForVideoModes] forKey:@"CAMUserPreferencePreviewViewAspectMode"];
    [_underlyingUserDefaults setInteger:[(CAMUserPreferences *)self _windowedPreviewAspectModeForPhotoModes] forKey:@"CAMUserPreferenceWindowedPreviewAspectModeForPhotoModes"];
    [_underlyingUserDefaults setInteger:[(CAMUserPreferences *)self _windowedPreviewAspectModeForVideoModes] forKey:@"CAMUserPreferenceWindowedPreviewAspectModeForVideoModes"];
    captureConfiguration = [(CAMUserPreferences *)self captureConfiguration];
    conflictingControlConfiguration = [(CAMUserPreferences *)self conflictingControlConfiguration];
    -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [conflictingControlConfiguration desiredFlashMode], @"CAMUserPreferenceDesiredFlashMode");
    -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [conflictingControlConfiguration desiredHDRMode], @"CAMUserPreferenceDesiredHDRMode");
    v8 = [captureConfiguration device] - 1;
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
      -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [captureConfiguration irisMode], @"CAMUserPreferenceDesiredIrisMode");
    }

    hostProcess = [v10 hostProcess];
    if (hostProcess <= 4 && hostProcess != 3)
    {
      -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [captureConfiguration mode], @"CAMUserPreferenceCaptureMode");
      [_underlyingUserDefaults setInteger:v9 forKey:@"CAMUserPreferenceCaptureDevice"];
    }

    -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [captureConfiguration torchMode], @"CAMUserPreferenceTorchMode");
    -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [captureConfiguration timerDuration], @"CAMUserPreferenceTimerDuration");
    if ([v10 isAspectRatioCropSupported])
    {
      -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [captureConfiguration photoModeAspectRatioCrop], @"CAMUserPreferenceAspectRatioCrop");
    }

    if ([v10 isLiveFilteringSupported])
    {
      -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [captureConfiguration photoModeEffectFilterType], @"CAMUserPreferenceDesiredPhotoModeEffectFilterType");
      -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [captureConfiguration squareModeEffectFilterType], @"CAMUserPreferenceSquareModeEffectFilterType");
      [_underlyingUserDefaults setInteger:[(CAMUserPreferences *)self photoModeLastCapturedEffectFilterType] forKey:@"CAMUserPreferencePhotoModeLastCapturedEffectFilterType"];
      [_underlyingUserDefaults setInteger:[(CAMUserPreferences *)self squareModeLastCapturedEffectFilterType] forKey:@"CAMUserPreferenceSquareModeLastCapturedEffectFilterType"];
      -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [captureConfiguration portraitModeEffectFilterType], @"CAMUserPreferencePortraitModeEffectFilterType");
      [_underlyingUserDefaults setInteger:[(CAMUserPreferences *)self portraitModeLastCapturedEffectFilterType] forKey:@"CAMUserPreferencePortraitModeLastCapturedEffectFilterType"];
    }

    [_underlyingUserDefaults setInteger:[(CAMUserPreferences *)self portraitModeRearDevice] forKey:@"CAMUserPreferencePortraitModeRearDevice"];
    [(CAMUserPreferences *)self portraitModeRearZoomValue];
    *&v12 = v12;
    [_underlyingUserDefaults setFloat:@"CAMUserPreferencePortraitModeRearZoomValue" forKey:v12];
    if ([v10 arePortraitEffectsSupported])
    {
      -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [captureConfiguration portraitModeLightingEffectType], @"CAMUserPreferencePortraitModeLightingEffectType");
    }

    if ([v10 isDepthEffectApertureSupported])
    {
      [captureConfiguration portraitModeApertureValue];
      *&v13 = v13;
      [_underlyingUserDefaults setFloat:@"CAMUserPreferencePortraitModeApertureValue" forKey:v13];
      [captureConfiguration portraitModeIntensityValue];
      *&v14 = v14;
      [_underlyingUserDefaults setFloat:@"CAMUserPreferencePortraitEffectIntensityValue" forKey:v14];
    }

    if ([v10 isExposureSliderSupported])
    {
      exposureBiasesByMode = [captureConfiguration exposureBiasesByMode];
      [CAMPreferencesUtilities setDictionary:exposureBiasesByMode forKey:@"CAMUserPreferenceExposureBiasByMode" defaults:_underlyingUserDefaults];
    }

    if ([v10 isSuperWideAutoMacroSupported])
    {
      -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [conflictingControlConfiguration desiredMacroMode], @"CAMUserPreferenceAutoMacroMode");
    }

    if ([(CAMUserPreferences *)self shouldUseDepthSuggestionInPhotoMode])
    {
      -[NSObject setBool:forKey:](_underlyingUserDefaults, "setBool:forKey:", [captureConfiguration optionalDepthEffectEnabled], @"CAMUserPreferenceOptionalDepthEffectEnabled");
    }

    if ([(CAMUserPreferences *)self rawControlEnabled])
    {
      -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [conflictingControlConfiguration desiredRAWMode], @"CAMUserPreferencesDesiredRAWMode");
    }

    if ([(CAMUserPreferences *)self rawControlEnabled]|| [(CAMUserPreferences *)self photoFormatControlEnabled])
    {
      -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [conflictingControlConfiguration photoFormatConflicts], @"CAMUserPreferencesRAWConflicts");
    }

    if ([(CAMUserPreferences *)self photoFormatControlEnabled])
    {
      if ([conflictingControlConfiguration desiredPhotoResolution] > 2 || -[CAMUserPreferences rawControlEnabled](self, "rawControlEnabled") && objc_msgSend(conflictingControlConfiguration, "desiredRAWMode") == 1)
      {
        -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [conflictingControlConfiguration desiredPhotoResolution], @"CAMUserPreferencesDesiredPhotoResolution");
      }

      else
      {
        [_underlyingUserDefaults removeObjectForKey:@"CAMUserPreferencesDesiredPhotoResolution"];
      }
    }

    if ([v10 isProResVideoSupported] && -[CAMUserPreferences isProResControlEnabled](self, "isProResControlEnabled"))
    {
      -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [captureConfiguration proResVideoMode], @"CAMUserPreferenceDesiredProResVideoMode");
    }

    if ([v10 isNightModeSupported])
    {
      -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [conflictingControlConfiguration desiredNightModeControlMode], @"CAMUserPreferenceDesiredNightMode");
      -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [conflictingControlConfiguration nightModeConflicts], @"CAMUserPreferenceNightModeConflicts");
    }

    if (([v10 semanticStylesSupport] & 8) != 0)
    {
      smartStylesSupported = [v10 smartStylesSupported];
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      semanticStyles = [captureConfiguration semanticStyles];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __38__CAMUserPreferences_writePreferences__block_invoke;
      v56[3] = &unk_1E76F91F0;
      v59 = smartStylesSupported;
      v19 = captureConfiguration;
      v57 = v19;
      v20 = v17;
      v58 = v20;
      [semanticStyles enumerateObjectsUsingBlock:v56];

      CFPreferencesSetAppValue([(CAMUserPreferences *)self _semanticStylesKey], v20, @"com.apple.camera");
      if (smartStylesSupported)
      {
        smartStyleSystemStyleIndex = [v19 smartStyleSystemStyleIndex];
        semanticStyles2 = [v19 semanticStyles];
        v54 = conflictingControlConfiguration;
        if (smartStyleSystemStyleIndex >= [semanticStyles2 count])
        {
          v24 = 0;
        }

        else
        {
          semanticStyles3 = [v19 semanticStyles];
          v24 = [semanticStyles3 objectAtIndexedSubscript:{objc_msgSend(v19, "smartStyleSystemStyleIndex")}];
        }

        lastReadSystemStyle = [(CAMUserPreferences *)self lastReadSystemStyle];
        dictionaryRepresentation2 = 0;
        v55 = lastReadSystemStyle;
        dictionaryRepresentation = 0;
        if (v24 && lastReadSystemStyle)
        {
          if ([v24 isEqualToSmartStyle:lastReadSystemStyle])
          {
            dictionaryRepresentation2 = 0;
            dictionaryRepresentation = 0;
          }

          else
          {
            dictionaryRepresentation = [v24 dictionaryRepresentation];
            dictionaryRepresentation2 = [v55 dictionaryRepresentation];
          }
        }

        v53 = v24;
        CFPreferencesSetAppValue(@"CAMUserPreferenceSmartStylesSystemStyleOverride", dictionaryRepresentation, @"com.apple.camera");
        CFPreferencesSetAppValue(@"CAMUserPreferenceSmartStylesSystemStyleOverrideReference", dictionaryRepresentation2, @"com.apple.camera");
        selectedSemanticStyleIndex = [v19 selectedSemanticStyleIndex];
        if (selectedSemanticStyleIndex == [v19 smartStyleSystemStyleIndex])
        {
          CFPreferencesSetAppValue(@"CAMUserPreferenceSmartStylesSelectedPreset", 0, @"com.apple.camera");
        }

        else
        {
          selectedSemanticStyleIndex2 = [v19 selectedSemanticStyleIndex];
          semanticStyles4 = [v19 semanticStyles];
          [(CAMUserPreferences *)self _writeSmartStylePresetStringForIndex:selectedSemanticStyleIndex2 inStyles:semanticStyles4 key:@"CAMUserPreferenceSmartStylesSelectedPreset"];
        }

        conflictingControlConfiguration = v54;
      }

      else
      {
        CFPreferencesSetAppValue(@"CAMUserPreferenceSelectedSemanticStyleIndex", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v19, "selectedSemanticStyleIndex")}], @"com.apple.camera");
      }

      CFPreferencesAppSynchronize(@"com.apple.camera");
    }

    if ([objc_opt_class() isSharedLibrarySupportedAndEnabledForCapabilities:v10])
    {
      sharedLibraryMode = [captureConfiguration sharedLibraryMode];
      [_underlyingUserDefaults setInteger:sharedLibraryMode forKey:@"CAMUserPreferenceSharedLibraryMode"];
      v32 = os_log_create("com.apple.camera", "SharedLibrary");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = CAMSharedLibraryModeDescription(sharedLibraryMode);
        *buf = 138543362;
        v61 = v33;
        _os_log_impl(&dword_1A3640000, v32, OS_LOG_TYPE_DEFAULT, "[CAMUserPreferences] write sharedLibraryMode:%{public}@", buf, 0xCu);
      }

      sharedLibraryLastLocation = [(CAMUserPreferences *)self sharedLibraryLastLocation];
      if (sharedLibraryLastLocation)
      {
        v35 = MEMORY[0x1E696ACC8];
        sharedLibraryLastLocation2 = [(CAMUserPreferences *)self sharedLibraryLastLocation];
        v37 = [v35 archivedDataWithRootObject:sharedLibraryLastLocation2 requiringSecureCoding:1 error:0];
      }

      else
      {
        v37 = 0;
      }

      [_underlyingUserDefaults setObject:v37 forKey:@"CAMUserPreferenceSharedLibraryLastLocation"];
      [_underlyingUserDefaults setBool:[(CAMUserPreferences *)self sharedLibraryLastLocationAcquiredDuringTrip] forKey:@"CAMUserPreferenceSharedLibraryLastLocationAcquiredDuringTrip"];
      sharedLibraryLastDiscoveryDate = [(CAMUserPreferences *)self sharedLibraryLastDiscoveryDate];
      [_underlyingUserDefaults setObject:sharedLibraryLastDiscoveryDate forKey:@"CAMUserPreferenceSharedLibraryLastDiscoveryDate"];

      sharedLibraryLastDiscoveryLocation = [(CAMUserPreferences *)self sharedLibraryLastDiscoveryLocation];
      if (sharedLibraryLastDiscoveryLocation)
      {
        v40 = MEMORY[0x1E696ACC8];
        sharedLibraryLastDiscoveryLocation2 = [(CAMUserPreferences *)self sharedLibraryLastDiscoveryLocation];
        v42 = [v40 archivedDataWithRootObject:sharedLibraryLastDiscoveryLocation2 requiringSecureCoding:1 error:0];
      }

      else
      {
        v42 = 0;
      }

      [_underlyingUserDefaults setObject:v42 forKey:@"CAMUserPreferenceSharedLibraryLastDiscoveryLocation"];
      sharedLibraryLastUserActionDate = [(CAMUserPreferences *)self sharedLibraryLastUserActionDate];
      [_underlyingUserDefaults setObject:sharedLibraryLastUserActionDate forKey:@"CAMUserPreferenceSharedLibraryLastUserActionDate"];

      sharedLibraryLastUserActionLocation = [(CAMUserPreferences *)self sharedLibraryLastUserActionLocation];
      if (sharedLibraryLastUserActionLocation)
      {
        v45 = MEMORY[0x1E696ACC8];
        sharedLibraryLastUserActionLocation2 = [(CAMUserPreferences *)self sharedLibraryLastUserActionLocation];
        v47 = [v45 archivedDataWithRootObject:sharedLibraryLastUserActionLocation2 requiringSecureCoding:1 error:0];
      }

      else
      {
        v47 = 0;
      }

      [_underlyingUserDefaults setObject:v47 forKey:@"CAMUserPreferenceSharedLibraryLastUserActionLocation"];
    }

    else
    {
      [_underlyingUserDefaults removeObjectForKey:@"CAMUserPreferenceSharedLibraryLastLocation"];
      [_underlyingUserDefaults removeObjectForKey:@"CAMUserPreferenceSharedLibraryLastLocationAcquiredDuringTrip"];
      [_underlyingUserDefaults removeObjectForKey:@"CAMUserPreferenceSharedLibraryLastDiscoveryDate"];
      [_underlyingUserDefaults removeObjectForKey:@"CAMUserPreferenceSharedLibraryLastDiscoveryLocation"];
      [_underlyingUserDefaults removeObjectForKey:@"CAMUserPreferenceSharedLibraryLastUserActionDate"];
      [_underlyingUserDefaults removeObjectForKey:@"CAMUserPreferenceSharedLibraryLastUserActionLocation"];
      [_underlyingUserDefaults removeObjectForKey:@"CAMUserPreferenceSharedLibraryMode"];
    }

    if ([v10 isActionModeControlSupported])
    {
      -[NSObject setInteger:forKey:](_underlyingUserDefaults, "setInteger:forKey:", [captureConfiguration videoStabilizationMode], @"CAMUserPreferenceVideoStabilizationMode");
    }

    if ([v10 isHalfPressSupported])
    {
      openHalfPressSpotlightControls = [(CAMUserPreferences *)self openHalfPressSpotlightControls];
      allObjects = [openHalfPressSpotlightControls allObjects];
      [_underlyingUserDefaults setObject:allObjects forKey:@"CAMUserPreferenceOpenHalfPressSpotlightControls"];
    }

    if ([v10 isFrontRearSimultaneousVideoSupported])
    {
      [_underlyingUserDefaults setBool:[(CAMUserPreferences *)self shouldEnableFrontRearSimultaneousVideo] forKey:@"CAMUserPreferenceEnableFrontRearSimultaneousVideo"];
    }

    if ([v10 allowControlDrawer])
    {
      v50 = objc_opt_class();
      preferredDrawerControlByMode = [(CAMUserPreferences *)self preferredDrawerControlByMode];
      v52 = [v50 _persistenceDictionaryForPreferredDrawerControlByMode:preferredDrawerControlByMode];

      [_underlyingUserDefaults setObject:v52 forKey:@"CAMUserPreferencesPreferredDrawerControlByMode"];
    }

    if ([v10 isSmartFramingSupported])
    {
      [_underlyingUserDefaults setBool:[(CAMUserPreferences *)self wantsSmartFramingAutoZoomDefault] forKey:@"CAMUserPreferencesWantsSmartFramingAutoZoomDefault"];
      [_underlyingUserDefaults setBool:[(CAMUserPreferences *)self wantsSmartFramingAutoRotationDefault] forKey:@"CAMUserPreferencesWantsSmartFramingAutoRotationDefault"];
    }

    [(CAMUserPreferences *)self _updateLastWrittenSettingsDate];
    [(CAMUserPreferences *)self _setHasReadLastWrittenValues:0];
  }
}

+ (BOOL)_fallBackToCameraDefaultsForBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E695DFD8];
  identifierCopy = identifier;
  v5 = [v3 setWithObjects:{@"com.apple.MobileSMS", @"com.apple.camera.CameraMessagesApp", @"com.apple.Camera-API", @"com.apple.AssetExplorerTester", 0}];
  v6 = [v5 containsObject:identifierCopy];

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
  block[4] = self;
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

- (id)filterTypesForMode:(int64_t)mode
{
  v4 = +[CAMCaptureCapabilities capabilities];
  if ([v4 isLiveFilteringSupported])
  {
    v5 = mode > 6;
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
    v6 = qword_1E76F9308[mode];
  }

  return v6;
}

- (int64_t)_sanitizeEffectFilterType:(int64_t)type forMode:(int64_t)mode
{
  v6 = [(CAMUserPreferences *)self filterTypesForMode:mode];
  if (!v6 || ([MEMORY[0x1E696AD98] numberWithInteger:type], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "indexOfObject:", v7), v7, v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    type = [CAMUserPreferences defaultFilterTypeForMode:mode];
  }

  return type;
}

+ (int64_t)defaultLightingTypeForMode:(int64_t)mode
{
  v4 = +[CAMCaptureCapabilities capabilities];
  LODWORD(mode) = [v4 isLightingControlSupportedForMode:mode];

  return mode;
}

- (int64_t)ppt_readPortraitLightingType
{
  _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
  v4 = -[CAMUserPreferences _sanitizeLightingType:forMode:](self, "_sanitizeLightingType:forMode:", [_underlyingUserDefaults integerForKey:@"CAMUserPreferencePortraitModeLightingEffectType"], 6);

  return v4;
}

- (int64_t)_sanitizeLightingType:(int64_t)type forMode:(int64_t)mode
{
  v5 = [objc_opt_class() defaultLightingTypeForMode:mode];
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

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:type];
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

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v15 = [v13 containsObject:v14];

    if (!v15)
    {
      type = v6;
    }
  }

  return type;
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
  mEMORY[0x1E69C4598] = [MEMORY[0x1E69C4598] sharedScheduler];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__CAMUserPreferences__publishAnalyticsIfNeededAfterAppLaunch__block_invoke;
  v3[3] = &unk_1E76F8580;
  objc_copyWeak(&v4, &location);
  [mEMORY[0x1E69C4598] scheduleDeferredMainQueueTask:v3];

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

- (int64_t)defaultDeviceForModeChange:(int64_t)change devicePosition:(int64_t)position
{
  if (position == 1)
  {
    return 1;
  }

  if (position)
  {
    return 0;
  }

  if (change != 6)
  {
    if (change == 8)
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

- (double)defaultZoomFactorForGraphConfiguration:(id)configuration captureOrientation:(int64_t)orientation outputToExternalStorage:(BOOL)storage
{
  storageCopy = storage;
  configurationCopy = configuration;
  v9 = +[CAMCaptureCapabilities capabilities];
  v21 = 0;
  [v9 defaultZoomFactorForGraphConfiguration:configurationCopy captureOrientation:orientation customLens:-[CAMUserPreferences defaultCustomLens](self outputToExternalStorage:"defaultCustomLens") overrodeWithForcedZoomValue:{storageCopy, &v21}];
  v11 = v10;
  mode = [configurationCopy mode];
  device = [configurationCopy device];
  videoConfiguration = [configurationCopy videoConfiguration];
  videoStabilizationStrength = [configurationCopy videoStabilizationStrength];
  frontRearSimultaneousVideoEnabled = [configurationCopy frontRearSimultaneousVideoEnabled];

  v17 = [v9 resolvedDeviceForDesiredDevice:device mode:mode videoConfiguration:videoConfiguration videoStabilizationStrength:videoStabilizationStrength frontRearSimultaneousVideoEnabled:frontRearSimultaneousVideoEnabled];
  if ((v21 & 1) == 0 && mode == 6)
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

- (id)videoThumbnailOutputConfigurationForMode:(int64_t)mode devicePosition:(int64_t)position
{
  v22 = *MEMORY[0x1E69E9840];
  position = [(CAMUserPreferences *)self filterTypesForMode:mode, position];
  if ([position count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = position;
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
          firstObject = [v11 firstObject];

          if (firstObject)
          {
            [array addObject:firstObject];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    [MEMORY[0x1E69938A8] defaultScreenScaleContentSize];
    v15 = [[CAMVideoThumbnailOutputConfiguration alloc] initWithThumbnailSize:array filters:v13, v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)resolveDesiredPhotoResolution:(int64_t)resolution livePhotoMode:(int64_t)mode rawMode:(int64_t)rawMode conflicts:(unint64_t)conflicts mode:(int64_t)a7 device:(int64_t)device resolvedPhotoResolution:(int64_t *)photoResolution resolvedLivePhotoMode:(int64_t *)self0
{
  v11 = conflicts & 2;
  v12 = 2;
  if ((conflicts & 2) == 0)
  {
    v12 = 3;
  }

  if (resolution == 3)
  {
    resolutionCopy = v12;
  }

  else
  {
    resolutionCopy = resolution;
  }

  [(CAMUserPreferences *)self fallbackPhotoFormatForDesiredFormat:[(CAMUserPreferences *)self photoEncodingBehaviorForMode:a7 resolvedRAWMode:rawMode isCapturingVideo:0 isTrueVideo:0] mode:resolutionCopy device:a7, device];
  if (v14 == 3 && v11 == 0)
  {
    modeCopy = 0;
  }

  else
  {
    modeCopy = mode;
  }

  if (photoResolution)
  {
    *photoResolution = v14;
  }

  if (photoMode)
  {
    *photoMode = modeCopy;
  }
}

- (BOOL)readPreferencesWithOverrides:(id)overrides emulationMode:(int64_t)mode callActive:(BOOL)active shouldResetCaptureConfiguration:(BOOL *)configuration bypassXPCWhenReadingSystemStyle:(BOOL)style
{
  styleCopy = style;
  activeCopy = active;
  v424 = *MEMORY[0x1E69E9840];
  overridesCopy = overrides;
  v10 = +[CAMCaptureCapabilities capabilities];
  _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
  if (([_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceDidMigrate"] & 1) == 0)
  {
    +[CAMUserPreferencesMigrator migrateLegacyPreferences];
  }

  [objc_opt_class() performSmartStylesOnboardingAcknowledgementResetWithCapabilities:v10];
  defaultCaptureConfiguration = [objc_opt_class() defaultCaptureConfiguration];
  v345 = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePreserveAllSettings"];
  self->_preserveCaptureMode = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePreserveCaptureMode"];
  isPreserveCreativeControlsSupported = [v10 isPreserveCreativeControlsSupported];
  if (isPreserveCreativeControlsSupported)
  {
    LOBYTE(isPreserveCreativeControlsSupported) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePreserveEffectFilter"];
  }

  self->_preserveEffectFilter = isPreserveCreativeControlsSupported;
  smartStylesSupported = [v10 smartStylesSupported];
  if (smartStylesSupported)
  {
    LOBYTE(smartStylesSupported) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePreserveSmartStyle"];
  }

  self->_preserveSmartStyle = smartStylesSupported;
  self->_preserveLivePhoto = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePreserveLivePhoto"];
  self->_preserveExposure = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePreserveExposure"];
  self->_preserveNightMode = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePreserveNightMode"];
  [v10 _forcedInitialZoomDisplayFactor];
  if (v15 == 0.0)
  {
    v16 = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePreservePortraitZoom"];
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

  self->_preserveRAW = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePreserveRAW"];
  self->_preserveProRes = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePreserveProRes"];
  isEnhancedStabilizationSupported = [v10 isEnhancedStabilizationSupported];
  if (isEnhancedStabilizationSupported)
  {
    LOBYTE(isEnhancedStabilizationSupported) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceEnhancedVideoStabilization"];
  }

  self->_enhancedVideoStabilization = isEnhancedStabilizationSupported;
  isActionModeControlSupported = [v10 isActionModeControlSupported];
  if (isActionModeControlSupported)
  {
    LOBYTE(isActionModeControlSupported) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceActionModeLowLightEnabled"];
  }

  self->_actionModeLowLightEnabled = isActionModeControlSupported;
  self->_preserveVideoStabilization = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePreserveVideoStabilization"];
  isFrontRearSimultaneousVideoSupported = [v10 isFrontRearSimultaneousVideoSupported];
  if (isFrontRearSimultaneousVideoSupported)
  {
    LOBYTE(isFrontRearSimultaneousVideoSupported) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePreserveFrontRearSimultaneousVideoEnabled"];
  }

  self->__preserveFrontRearSimultaneousVideoEnabled = isFrontRearSimultaneousVideoSupported;
  if ([v10 isLinearDNGSupported])
  {
    preserveRAW = self->_preserveRAW;
  }

  else
  {
    preserveRAW = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePreservePhotoResolution"];
  }

  self->_preservePhotoResolution = preserveRAW;
  [objc_opt_class() performApertureMigrationWithCapabilities:v10];
  self->_preserveAperture = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePreserveAperture"];
  self->_videoConfiguration = [_underlyingUserDefaults integerForKey:*MEMORY[0x1E69C0630]];
  self->_slomoConfiguration = [_underlyingUserDefaults integerForKey:*MEMORY[0x1E69C0628]];
  self->_videoConfigurationControlEnabled = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceEnableVideoConfigurationControl"];
  isPALVideoSupported = [v10 isPALVideoSupported];
  v370 = overridesCopy;
  if (isPALVideoSupported)
  {
    LOBYTE(isPALVideoSupported) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceEnablePALVideoFormats"];
  }

  self->_PALVideoEnabled = isPALVideoSupported;
  self->_cinematicConfiguration = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceCinematicConfiguration"];
  v22 = [v10 defaultPhotoResolutionForMode:0 devicePosition:1 encodingBehavior:1];
  if ([v10 isPhotoResolutionSupported:2 forPhotoEncoding:1])
  {
    v23 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceMaximumHEICPhotoResolution"];
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
    v24 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceMaximumRAWPhotoResolution"];
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
    v26 = [_underlyingUserDefaults arrayForKey:@"CAMUserPreferencesSelectedCustomLensGroup"];
    v27 = [v10 supportedCustomLensGroupForGroup:v26];
    customLensGroup = self->_customLensGroup;
    self->_customLensGroup = v27;

    self->_defaultCustomLens = [v10 supportedCustomLensForLens:objc_msgSend(_underlyingUserDefaults inGroup:{"integerForKey:", @"CAMUserPreferencesDefaultCustomLens", self->_customLensGroup}];
  }

  else
  {
    v29 = self->_customLensGroup;
    self->_customLensGroup = 0;

    self->_defaultCustomLens = 0;
  }

  if (mode)
  {
    v30 = 0;
    LOBYTE(isAutoLowLightVideoSupported) = 0;
  }

  else
  {
    isAutoLowLightVideoSupported = [v10 isAutoLowLightVideoSupported];
    if (isAutoLowLightVideoSupported)
    {
      LOBYTE(isAutoLowLightVideoSupported) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceAutoLowLightVideoEnabled"];
      v30 = 1;
    }

    else
    {
      v30 = 0;
    }
  }

  self->_lowLightVideoEnabled = isAutoLowLightVideoSupported;
  if ([v10 isVariableFramerateVideoSupported])
  {
    [objc_opt_class() performLowLightVideoMigrationWithCapabilities:v10];
  }

  if (v30)
  {
    v32 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceVFRMode"];
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

  responsiveShutterSupported = [v10 responsiveShutterSupported];
  if (responsiveShutterSupported)
  {
    LOBYTE(responsiveShutterSupported) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceEnableResponsiveShutter"];
  }

  self->_responsiveShutterEnabled = responsiveShutterSupported;
  isSuperWideAutoMacroSupported = [v10 isSuperWideAutoMacroSupported];
  if (isSuperWideAutoMacroSupported)
  {
    [objc_opt_class() performSuperWideAutoMacroMigrationWithCapabilities:v10];
  }

  [objc_opt_class() performHorizonLevelUpgradeWithCapabilities:v10];
  [objc_opt_class() performMostCompatibleConfirmationMigrationWithCapabilities:v10];
  self->_preserveSuperWideAutoMacro = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePreserveSuperWideAutoMacro"];
  if (isSuperWideAutoMacroSupported)
  {
    v35 = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceEnableSuperWideAutoMacro"];
    self->_superWideAutoMacroControlAllowed = v35 ^ 1;
    if ((v35 & 1) == 0)
    {
      macroMode = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceAutoMacroMode"];
      goto LABEL_61;
    }
  }

  else
  {
    self->_superWideAutoMacroControlAllowed = 0;
  }

  macroMode = [defaultCaptureConfiguration macroMode];
LABEL_61:
  macroMode2 = macroMode;
  [CAMUserPreferences performAudioConfigurationMigrationWithCapabilities:v10];
  self->_preferredAudioConfiguration = [CAMUserPreferences selectedAudioConfigurationForCapabilities:v10];
  isMixAudioWithOthersSupported = [v10 isMixAudioWithOthersSupported];
  if (isMixAudioWithOthersSupported)
  {
    LOBYTE(isMixAudioWithOthersSupported) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceMixAudioWithOthers"];
  }

  self->_shouldMixAudioWithOthers = isMixAudioWithOthersSupported;
  isWindRemovalSupported = [v10 isWindRemovalSupported];
  if (isWindRemovalSupported)
  {
    LOBYTE(isWindRemovalSupported) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceAudioWindRemoval"];
  }

  self->_shouldEnableWindRemoval = isWindRemovalSupported;
  isWhiteBalanceLockingForVideoRecordingSupported = [v10 isWhiteBalanceLockingForVideoRecordingSupported];
  v367 = activeCopy;
  if (isWhiteBalanceLockingForVideoRecordingSupported)
  {
    LOBYTE(isWhiteBalanceLockingForVideoRecordingSupported) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceLockWhiteBalanceDuringVideoRecording"];
  }

  self->_shouldLockWhiteBalanceDuringVideoRecording = isWhiteBalanceLockingForVideoRecordingSupported;
  self->_lockAsShutterEnabled = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceEnableLockAsShutter"];
  self->_shouldShowGridView = CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceShowGridOverlay", @"com.apple.camera", 0) != 0;
  v40 = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceShowHorizonLevelPlumb"];
  self->_shouldShowHorizonLevelView = v40;
  self->_shouldShowLevelView = v40;
  self->_QRBannersEnabledInSettings = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceShowQRCodeBanners"];
  v343 = v23;
  if ([_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceShowImageAnalysis"] && objc_msgSend(v10, "isImageAnalysisSupported"))
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v42 = [standardUserDefaults objectForKey:@"AppleLiveTextEnabled" inDomain:*MEMORY[0x1E696A400]];

    if (v42)
    {
      bOOLValue = [v42 BOOLValue];
    }

    else
    {
      v44 = MEMORY[0x1E695DF58];
      _deviceLanguage = [MEMORY[0x1E695DF58] _deviceLanguage];
      *buf = _deviceLanguage;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
      v47 = [v44 matchedLanguagesFromAvailableLanguages:&unk_1F16C9290 forPreferredLanguages:v46];

      bOOLValue = [v47 count] != 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  self->_imageAnalysisEnabled = bOOLValue;
  self->_alwaysShowFlashIndicator = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceAlwaysShowFlashIndicator"];
  self->_alwaysShowLivePhotoIndicator = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceAlwaysShowLivePhotoIndicator"];
  self->_alwaysShowActionModeIndicator = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceAlwaysShowActionModeIndicator"];
  self->_alwaysShowFrontPIPIndicator = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceAlwaysShowFrontPIPIndicator"];
  if ([v10 isPreviewAspectRatioToggleSupportedForMode:0])
  {
    self->__previewAspectModeForPhotoModes = [_underlyingUserDefaults integerForKey:@"CAMUserPreferencePreviewAspectModeForPhotoModes"];
    v48 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferencePreviewAspectModeForPhotoModes"];
  }

  else
  {
    self->__previewAspectModeForPhotoModes = 0;
    v48 = 1;
  }

  self->__windowedPreviewAspectModeForPhotoModes = v48;
  if ([v10 isPreviewAspectRatioToggleSupportedForMode:1])
  {
    self->__previewAspectModeForVideoModes = [_underlyingUserDefaults integerForKey:@"CAMUserPreferencePreviewViewAspectMode"];
    v49 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceWindowedPreviewAspectModeForVideoModes"];
  }

  else
  {
    self->__previewAspectModeForVideoModes = 0;
    v49 = 1;
  }

  self->__windowedPreviewAspectModeForVideoModes = v49;
  self->__shouldDisableCameraSwitchingDuringVideoRecording = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceDisableCameraSwitchingDuringVideoRecording"];
  self->_didAcknowledgeCTMDescription = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceCTMDidAcknowledgeDescription"];
  self->_shouldUseVolumeUpBurst = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceVolumeUpBurst"];
  self->_overCapturePreviewEnabled = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceEnableViewOutsideTheFrame"];
  isMirroredFrontCapturesSupported = [v10 isMirroredFrontCapturesSupported];
  if (isMirroredFrontCapturesSupported)
  {
    LOBYTE(isMirroredFrontCapturesSupported) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceMirrorFrontCameraCaptures"];
  }

  self->_shouldMirrorFrontCameraCaptures = isMirroredFrontCapturesSupported;
  contentAwareDistortionCorrectionSupported = [v10 contentAwareDistortionCorrectionSupported];
  if (contentAwareDistortionCorrectionSupported)
  {
    LOBYTE(contentAwareDistortionCorrectionSupported) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceContentAwareDistortionCorrection"];
  }

  self->_shouldUseContentAwareDistortionCorrection = contentAwareDistortionCorrectionSupported;
  if ([(CAMUserPreferences *)self allowExplicitProResColorSpace])
  {
    integerValue = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceExplicitProResColorSpace"];
    supportedProResColorSpaces = [v10 supportedProResColorSpaces];
    v54 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
    v55 = [supportedProResColorSpaces containsObject:v54];

    if ((v55 & 1) == 0)
    {
      firstObject = [supportedProResColorSpaces firstObject];
      integerValue = [firstObject integerValue];
    }
  }

  else
  {
    integerValue = 1;
  }

  self->_explicitProResColorSpace = integerValue;
  isZoomPIPSupported = [v10 isZoomPIPSupported];
  if (isZoomPIPSupported)
  {
    LOBYTE(isZoomPIPSupported) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceEnableZoomPIP"];
  }

  v347 = isZoomPIPSupported;
  self->_zoomPIPEnabled = isZoomPIPSupported;
  if ([v10 isHalfPressSupported])
  {
    v58 = [_underlyingUserDefaults objectForKey:@"CAMUserPreferenceOpenHalfPressSpotlightControls"];
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

  isInternalInstall = [v10 isInternalInstall];
  if (isInternalInstall)
  {
    self->_shouldDelayRemotePersistence = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceDebugTransientAssets"];
  }

  self->__lastViewedSettingsInterfaceDate = [_underlyingUserDefaults objectForKey:@"CAMUserPreferencesLastViewedSettingsInterfaceDate"];
  self->__lastWrittenSettingsDate = [_underlyingUserDefaults objectForKey:@"CAMUserPreferencesLastWrittenSettingsDate"];
  if ([v10 allowControlDrawer])
  {
    v64 = [_underlyingUserDefaults dictionaryForKey:@"CAMUserPreferencesPreferredDrawerControlByMode"];
    v65 = [objc_opt_class() _preferredDrawerControlByModeForPersistenceDictionary:v64];
    preferredDrawerControlByMode = self->_preferredDrawerControlByMode;
    self->_preferredDrawerControlByMode = v65;

    self->_preservePreferredDrawerControl = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePreservePreferredDrawerControl"];
  }

  self->_saveMessagesCapturesPhotoLibrary = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencesSaveMessagesCapturesPhotoLibrary"];
  isFrontRearSimultaneousVideoSupported2 = [v10 isFrontRearSimultaneousVideoSupported];
  if (isFrontRearSimultaneousVideoSupported2)
  {
    LOBYTE(isFrontRearSimultaneousVideoSupported2) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceEnableFrontRearSimultaneousVideo"];
  }

  self->_shouldEnableFrontRearSimultaneousVideo = isFrontRearSimultaneousVideoSupported2;
  isSmartFramingSupported = [v10 isSmartFramingSupported];
  if (isSmartFramingSupported)
  {
    LOBYTE(isSmartFramingSupported) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencesWantsSmartFramingAutoZoomDefault"];
  }

  self->_wantsSmartFramingAutoZoomDefault = isSmartFramingSupported;
  isSmartFramingSupported2 = [v10 isSmartFramingSupported];
  if (isSmartFramingSupported2)
  {
    LOBYTE(isSmartFramingSupported2) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencesWantsSmartFramingAutoRotationDefault"];
  }

  self->_wantsSmartFramingAutoRotationDefault = isSmartFramingSupported2;
  if ([v10 isFrontHDRSupported] & 1) != 0 || (objc_msgSend(v10, "isBackHDRSupported"))
  {
    isModernHDRSupported = [v10 isModernHDRSupported];
    v71 = @"CAMUserPreferenceHDREV0";
    if (isModernHDRSupported)
    {
      v71 = @"CAMUserPreferenceModernHDRKeepNormalPhoto";
    }

    v72 = v71;
    if ([v10 isSpatialOverCaptureSupported])
    {
      v73 = [_underlyingUserDefaults objectForKey:@"CAMUserPreferenceDidPerformSpatialOverCaptureEV0Disable13_0"];

      if (!v73)
      {
        if ([_underlyingUserDefaults BOOLForKey:v72])
        {
          [_underlyingUserDefaults setBool:0 forKey:v72];
          v74 = os_log_create("com.apple.camera", "UserPreferences");
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A3640000, v74, OS_LOG_TYPE_DEFAULT, "Performing one-time upgrade of Keep EV0 from On to Off for HDR Keep Orignal Photo!", buf, 2u);
          }
        }

        [_underlyingUserDefaults setObject:MEMORY[0x1E695E118] forKey:@"CAMUserPreferenceDidPerformSpatialOverCaptureEV0Disable13_0"];
      }
    }

    if ([v10 isHDRSettingAllowed])
    {
      isHDREV0CaptureSupported = [v10 isHDREV0CaptureSupported];
      if (isHDREV0CaptureSupported)
      {
        LOBYTE(isHDREV0CaptureSupported) = [_underlyingUserDefaults BOOLForKey:v72];
      }

      self->_shouldCaptureHDREV0 = isHDREV0CaptureSupported;
      if (isModernHDRSupported)
      {
        v76 = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceModernHDRBehavior"];
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
      self->_shouldUseModernHDRBehavior = isModernHDRSupported;
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
    v77 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceDesiredHDRMode"];
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

        [_underlyingUserDefaults setInteger:1 forKey:@"CAMUserPreferenceDesiredHDRMode"];
      }
    }
  }

  isLivePhotoSupported = [v10 isLivePhotoSupported];
  if ([v10 isFrontPortraitModeSupported])
  {
    isBackPortraitModeSupported = 1;
  }

  else
  {
    isBackPortraitModeSupported = [v10 isBackPortraitModeSupported];
  }

  self->_didAcknowledgePortraitModeDescription = isBackPortraitModeSupported & [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePortraitModeDidAcknowledgeDescription_12"];
  isCinematicModeSupported = [v10 isCinematicModeSupported];
  self->_didAcknowledgeCinematicModeDescription = isCinematicModeSupported & [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceCinematicModeDidAcknowledgeDescription"];
  mode = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceCaptureMode"];
  v358 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceCaptureDevice"];
  v380 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceDesiredFlashMode"];
  torchMode = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceTorchMode"];
  hDRMode = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceDesiredHDRMode"];
  irisMode = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceDesiredIrisMode"];
  v82 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceTimerDuration"];
  obj = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceAspectRatioCrop"];
  photoModeEffectFilterType = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceDesiredPhotoModeEffectFilterType"];
  squareModeEffectFilterType = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceSquareModeEffectFilterType"];
  portraitModeEffectFilterType = [_underlyingUserDefaults integerForKey:@"CAMUserPreferencePortraitModeEffectFilterType"];
  v337 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferencePhotoModeLastCapturedEffectFilterType"];
  v335 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceSquareModeLastCapturedEffectFilterType"];
  v333 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferencePortraitModeLastCapturedEffectFilterType"];
  portraitModeLightingEffectType = [_underlyingUserDefaults integerForKey:@"CAMUserPreferencePortraitModeLightingEffectType"];
  [_underlyingUserDefaults floatForKey:@"CAMUserPreferencePortraitModeApertureValue"];
  v84 = v83;
  [_underlyingUserDefaults floatForKey:@"CAMUserPreferencePortraitEffectIntensityValue"];
  v86 = v85;
  isNightModeSupported = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceDesiredNightMode"];
  v361 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceNightModeConflicts"];
  exposureBiasesByMode = [defaultCaptureConfiguration exposureBiasesByMode];
  v362 = v82;
  if ([v10 isExposureSliderSupported])
  {
    v88 = [CAMPreferencesUtilities numericDictionaryForKey:@"CAMUserPreferenceExposureBiasByMode" defaults:_underlyingUserDefaults];
    v89 = v88;
    if (v88)
    {
      v90 = v88;
    }

    else
    {
      v90 = exposureBiasesByMode;
    }

    v91 = v90;

    v363 = v91;
  }

  else
  {
    v363 = exposureBiasesByMode;
  }

  if ([v10 continuousZoomSupportedForPortraitMode])
  {
    v92 = [_underlyingUserDefaults objectForKey:@"CAMUserPreferenceDidPerformPortraitModeTripleCameraUpgrade"];

    if (!v92)
    {
      [_underlyingUserDefaults setInteger:0 forKey:@"CAMUserPreferencePortraitModeRearDevice"];
      LODWORD(v310) = 0;
      [v10 defaultZoomFactorForMode:6 device:0 videoConfiguration:0 captureOrientation:1 videoStabilizationStrength:0 videoEncodingBehavior:1 customLens:0 outputToExternalStorage:v310 isTrueVideo:0 frontRearSimultaneousVideoEnabled:0 prefersHDR10BitVideo:? smartFramingFieldOfView:? overrodeWithForcedZoomValue:?];
      *&v93 = v93;
      [_underlyingUserDefaults setFloat:@"CAMUserPreferencePortraitModeRearZoomValue" forKey:v93];
      [_underlyingUserDefaults setObject:MEMORY[0x1E695E118] forKey:@"CAMUserPreferenceDidPerformPortraitModeTripleCameraUpgrade"];
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

  self->_didAcknowledgeDepthInPhotoModeDescription = v95 & [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceDidAcknowledgeDepthInPhotoModeDescription"];
  v96 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferencePortraitModeRearDevice"];
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

  [_underlyingUserDefaults floatForKey:@"CAMUserPreferencePortraitModeRearZoomValue"];
  self->_portraitModeRearZoomValue = v107;
  v108 = [v10 significantZoomFactorsForMode:6 device:self->_portraitModeRearDevice];
  [v10 maximumZoomFactorForMode:6 device:self->_portraitModeRearDevice videoConfiguration:0 videoStabilizationStrength:0 shouldResolveDevice:1];
  v110 = v109;
  continuousZoomSupportedForPortraitMode = [v10 continuousZoomSupportedForPortraitMode];
  portraitModeRearZoomValue = self->_portraitModeRearZoomValue;
  if (portraitModeRearZoomValue <= v110)
  {
    v113 = continuousZoomSupportedForPortraitMode;
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

  isSpatialModeSupported = [v10 isSpatialModeSupported];
  if (isSpatialModeSupported)
  {
    LOBYTE(isSpatialModeSupported) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceDidAcknowledgeSpatialModeOverlayDescription"];
  }

  self->_didAcknowledgeSpatialModeOverlayDescription = isSpatialModeSupported;
  self->_didAcknowledgeSolCamDescription = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceDidAcknowledgeSolCamModeOverlayDescription"];
  semanticDevelopmentSupported = [v10 semanticDevelopmentSupported];
  if (semanticDevelopmentSupported)
  {
    LOBYTE(semanticDevelopmentSupported) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceEnableSemanticDevelopment"];
  }

  self->_semanticDevelopmentEnabled = semanticDevelopmentSupported;
  isLinearDNGSupported = [v10 isLinearDNGSupported];
  if (isLinearDNGSupported)
  {
    LOBYTE(isLinearDNGSupported) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceEnableLinearDNGControl"];
  }

  self->_rawControlEnabled = isLinearDNGSupported;
  if ([v10 photoModeDepthSuggestionSupported])
  {
    v121 = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceEnableDepthSuggestion"];
    self->_shouldUseDepthSuggestionInPhotoMode = v121;
    if (v121)
    {
      v387 = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceOptionalDepthEffectEnabled"];
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

  v122 = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePreserveOptionalDepthEffect"];
  self->_shouldAlwaysShowDepthSuggestionWhenDepthIsAvailable = v122;
  if ([v10 isPhotoResolutionSupported:3 forPhotoEncoding:1])
  {
    if ([v10 isLinearDNGSupported])
    {
      rawControlEnabled = self->_rawControlEnabled;
    }

    else
    {
      rawControlEnabled = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceEnablePhotoFormatControl"];
    }
  }

  else
  {
    rawControlEnabled = 0;
  }

  self->_photoFormatControlEnabled = rawControlEnabled & 1;
  rawMode = [_underlyingUserDefaults integerForKey:@"CAMUserPreferencesDesiredRAWMode"];
  if (!self->_rawControlEnabled && (rawControlEnabled & 1) == 0)
  {
    v373 = 0;
LABEL_188:
    v391 = 0;
    goto LABEL_191;
  }

  v373 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferencesRAWConflicts"];
  if ((rawControlEnabled & 1) == 0)
  {
    goto LABEL_188;
  }

  v391 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferencesDesiredPhotoResolution"];
LABEL_191:
  if ([v10 isProResVideoSupported])
  {
    v124 = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceEnableProResControl"];
    self->_proResControlEnabled = v124;
    if (v124)
    {
      v369 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceDesiredProResVideoMode"];
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
    v125 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceVideoStabilizationMode"];
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
  v372 = defaultCaptureConfiguration;
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
    flashMode = v380;
    v138 = v358;
    goto LABEL_213;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __140__CAMUserPreferences_readPreferencesWithOverrides_emulationMode_callActive_shouldResetCaptureConfiguration_bypassXPCWhenReadingSystemStyle___block_invoke;
  aBlock[3] = &unk_1E76F9180;
  v129 = _underlyingUserDefaults;
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
    librarySelectionMockAutomationModeEnabled = [v136 librarySelectionMockAutomationModeEnabled];
    self->_sharedLibraryAutoBehaviorEnabled = librarySelectionMockAutomationModeEnabled;
    v138 = v358;
    if (librarySelectionMockAutomationModeEnabled)
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

  defaultCaptureConfiguration = v372;
  flashMode = v380;
LABEL_213:
  v145 = v84;
  v146 = v86;
  v339 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceSharedLibraryMode"];
  _shouldReconfigureCurrentConfigurationForSettingsChange = [(CAMUserPreferences *)self _shouldReconfigureCurrentConfigurationForSettingsChange];
  _shouldResetPreferencesForTimeout = [(CAMUserPreferences *)self _shouldResetPreferencesForTimeout];
  v322 = _shouldResetPreferencesForTimeout;
  if (mode)
  {
    v148 = 0;
  }

  else
  {
    v148 = _shouldResetPreferencesForTimeout;
  }

  device = [(CAMUserPreferences *)self defaultDeviceForModeChange:mode devicePosition:v138];
  v317 = v148;
  if (!v148)
  {
    v359 = 0;
    goto LABEL_256;
  }

  if (!self->_preserveCaptureMode)
  {
    mode = [defaultCaptureConfiguration mode];
    device = [defaultCaptureConfiguration device];
    self->_spatialModeHasVideoSelected = 0;
  }

  if (flashMode == 1)
  {
    flashMode = [defaultCaptureConfiguration flashMode];
  }

  v359 = torchMode == 1;
  if (torchMode == 1)
  {
    torchMode = [defaultCaptureConfiguration torchMode];
  }

  if (hDRMode == 1)
  {
    hDRMode = [defaultCaptureConfiguration HDRMode];
  }

  v329 = torchMode;
  if (!self->_preserveLivePhoto)
  {
    irisMode = [defaultCaptureConfiguration irisMode];
    v373 &= ~2uLL;
  }

  v150 = device;
  if (!self->_preserveNightMode)
  {
    isNightModeSupported = [v10 isNightModeSupported];
  }

  timerDuration = [defaultCaptureConfiguration timerDuration];
  if (!self->_preserveEffectFilter)
  {
    obj = [defaultCaptureConfiguration photoModeAspectRatioCrop];
    photoModeEffectFilterType = [defaultCaptureConfiguration photoModeEffectFilterType];
    squareModeEffectFilterType = [defaultCaptureConfiguration squareModeEffectFilterType];
    portraitModeEffectFilterType = [defaultCaptureConfiguration portraitModeEffectFilterType];
    portraitModeLightingEffectType = [defaultCaptureConfiguration portraitModeLightingEffectType];
    [defaultCaptureConfiguration portraitModeIntensityValue];
    v146 = v152;
  }

  v362 = timerDuration;
  if (!self->_preserveExposure)
  {
    exposureBiasesByMode2 = [defaultCaptureConfiguration exposureBiasesByMode];

    v363 = exposureBiasesByMode2;
  }

  device = v150;
  if (!self->_preserveSuperWideAutoMacro)
  {
    macroMode2 = [defaultCaptureConfiguration macroMode];
  }

  if (!self->_preserveRAW)
  {
    rawMode = [defaultCaptureConfiguration rawMode];
  }

  preservePhotoResolution = self->_preservePhotoResolution;
  v155 = v391;
  if (!self->_preservePhotoResolution)
  {
    v155 = 0;
  }

  v391 = v155;
  torchMode = v329;
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
    [defaultCaptureConfiguration portraitModeApertureValue];
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
    integerValue2 = device;
    captureMode = [v370 captureMode];

    if (captureMode)
    {
      captureMode2 = [v370 captureMode];
      mode = [captureMode2 integerValue];
    }

    captureDevice = [v370 captureDevice];

    if (captureDevice)
    {
      captureDevice2 = [v370 captureDevice];
      integerValue2 = [captureDevice2 integerValue];
    }

    videoConfiguration = [v370 videoConfiguration];

    if (videoConfiguration)
    {
      videoConfiguration2 = [v370 videoConfiguration];
      self->_videoConfiguration = [videoConfiguration2 integerValue];
    }

    slomoConfiguration = [v370 slomoConfiguration];

    if (slomoConfiguration)
    {
      slomoConfiguration2 = [v370 slomoConfiguration];
      self->_slomoConfiguration = [slomoConfiguration2 integerValue];
    }

    cinematicConfiguration = [v370 cinematicConfiguration];

    if (cinematicConfiguration)
    {
      cinematicConfiguration2 = [v370 cinematicConfiguration];
      self->_cinematicConfiguration = [cinematicConfiguration2 integerValue];
    }

    wantsQRCodes = [v370 wantsQRCodes];

    if (wantsQRCodes)
    {
      wantsQRCodes2 = [v370 wantsQRCodes];
      bOOLValue2 = [wantsQRCodes2 BOOLValue];

      if (bOOLValue2)
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

    flashMode2 = [v370 flashMode];

    if (flashMode2)
    {
      flashMode3 = [v370 flashMode];
      flashMode = [flashMode3 integerValue];
    }

    torchMode2 = [v370 torchMode];

    if (torchMode2)
    {
      torchMode3 = [v370 torchMode];
      torchMode = [torchMode3 integerValue];
    }

    aspectRatioCrop = [v370 aspectRatioCrop];

    if (aspectRatioCrop)
    {
      aspectRatioCrop2 = [v370 aspectRatioCrop];
      integerValue3 = [aspectRatioCrop2 integerValue];

      mode2 = mode;
      if (mode)
      {
        if (integerValue3)
        {
          v183 = os_log_create("com.apple.camera", "UserPreferences");
          if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
          {
            if (integerValue3 > 6)
            {
              v184 = 0;
            }

            else
            {
              v184 = off_1E76F93C0[integerValue3 - 1];
            }

            if (mode > 9)
            {
              v186 = 0;
            }

            else
            {
              v186 = off_1E76F93F0[mode - 1];
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
        obj = integerValue3;
      }

      v159 = v367;
    }

    else
    {
      v324 = 1;
      v159 = v367;
      mode2 = mode;
    }

    device = integerValue2;
  }

  else
  {
    v324 = 0;
    mode2 = mode;
  }

  if (([v10 isCameraSupportedForDevice:device] & 1) == 0)
  {
    device = [defaultCaptureConfiguration device];
  }

  v187 = [v10 isSupportedMode:mode2 withDevice:device];
  v188 = 0;
  if (mode2 <= 8 && ((1 << mode2) & 0x186) != 0)
  {
    v188 = v159;
  }

  if (v188 || v187 != 1)
  {
    mode2 = [defaultCaptureConfiguration mode];
  }

  if ([v10 isFrontFlashSupported])
  {
    v189 = (flashMode - 1) < 2;
LABEL_309:
    v191 = flashMode;
    goto LABEL_311;
  }

  isBackFlashSupported = [v10 isBackFlashSupported];
  v189 = (flashMode - 1) < 2;
  if (isBackFlashSupported)
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
    v192 = flashMode;
  }

  v368 = v192;
  if ([v10 isFrontTorchSupported])
  {
    v193 = (torchMode - 1) < 2;
    irisMode2 = irisMode;
    v195 = v359;
LABEL_318:
    v197 = torchMode;
    v198 = v195;
    goto LABEL_320;
  }

  isBackTorchSupported = [v10 isBackTorchSupported];
  v193 = (torchMode - 1) < 2;
  v195 = v359;
  if (isBackTorchSupported)
  {
    irisMode2 = irisMode;
    goto LABEL_318;
  }

  v197 = 0;
  v198 = 1;
  irisMode2 = irisMode;
LABEL_320:
  if (v193)
  {
    v199 = v197;
  }

  else
  {
    v199 = torchMode;
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
  if (hDRMode == 1)
  {
    v201 = v384;
  }

  else
  {
    v201 = hDRMode;
  }

  v394 = mode2;
  if (irisMode2 == 2)
  {
    if ([v10 isLivePhotoAutoModeSupported])
    {
      irisMode2 = 2;
    }

    else
    {
      irisMode2 = [defaultCaptureConfiguration irisMode];
    }
  }

  else if (irisMode2 == 1)
  {
    irisMode2 = isLivePhotoSupported;
  }

  v390 = irisMode2;
  isSpatialOverCaptureSupported = [v10 isSpatialOverCaptureSupported];
  v203 = MEMORY[0x1E69C0620];
  v385 = device;
  if (isSpatialOverCaptureSupported)
  {
    v204 = [_underlyingUserDefaults objectForKey:@"CAMUserPreferenceDidPerformSpatialOverCaptureHighEfficiencyUpgrade"];

    v205 = *v203;
    if (!v204)
    {
      if ([_underlyingUserDefaults integerForKey:v205] == 1)
      {
        v206 = os_log_create("com.apple.camera", "UserPreferences");
        if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3640000, v206, OS_LOG_TYPE_DEFAULT, "Performing one-time upgrade of Most Compatible to High Efficiency!", buf, 2u);
        }

        [MEMORY[0x1E69C0700] setNewFormatsConfiguration:0 fromSource:3];
      }

      [_underlyingUserDefaults setObject:MEMORY[0x1E695E118] forKey:@"CAMUserPreferenceDidPerformSpatialOverCaptureHighEfficiencyUpgrade"];
    }
  }

  else
  {
    v205 = *MEMORY[0x1E69C0620];
  }

  v207 = [_underlyingUserDefaults integerForKey:v205];
  self->__preferHEVCWhenAvailable = v207 != 1;
  if (v207 == 1)
  {
    isHEVCEncodingSupported = 0;
  }

  else
  {
    isHEVCEncodingSupported = [v10 isHEVCEncodingSupported];
  }

  v209 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceSecondaryPhotoFormat"];
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
    v211 = isHEVCEncodingSupported;
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
    v212 = [_underlyingUserDefaults integerForKey:@"CAMUserPreferenceProRawFileFormat"];
  }

  else
  {
    v212 = 0;
  }

  self->_rawFileFormatBehavior = v212;
  self->_HDR10BitVideoEnabled = [objc_opt_class() shouldEnableHDR10BitVideoForHEVCEnabled:self->__preferHEVCWhenAvailable capabilities:v10];
  v213 = +[CAMCaptureCapabilities capabilities];
  isAspectRatioCropSupported = [v213 isAspectRatioCropSupported];

  v215 = obj;
  if (!isAspectRatioCropSupported)
  {
    v215 = 0;
  }

  v332 = v215;
  v330 = [(CAMUserPreferences *)self _sanitizeEffectFilterType:photoModeEffectFilterType forMode:0];
  v328 = [(CAMUserPreferences *)self _sanitizeEffectFilterType:squareModeEffectFilterType forMode:4];
  v327 = [(CAMUserPreferences *)self _sanitizeEffectFilterType:portraitModeEffectFilterType forMode:6];
  v338 = [(CAMUserPreferences *)self _sanitizeEffectFilterType:v337 forMode:0];
  v336 = [(CAMUserPreferences *)self _sanitizeEffectFilterType:v335 forMode:4];
  v334 = [(CAMUserPreferences *)self _sanitizeEffectFilterType:v333 forMode:6];
  v351 = [(CAMUserPreferences *)self _sanitizeLightingType:portraitModeLightingEffectType forMode:6];
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
      cinematicConfiguration3 = [(CAMUserPreferences *)self cinematicConfiguration];
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
    cinematicConfiguration3 = [(CAMUserPreferences *)self videoConfiguration];
    goto LABEL_415;
  }

  if ((v216 - 3) < 4 || v216 < 2)
  {
    goto LABEL_414;
  }

  if (v216 == 2)
  {
    cinematicConfiguration3 = [(CAMUserPreferences *)self slomoConfiguration];
LABEL_415:
    v379 = cinematicConfiguration3;
  }

LABEL_416:
  v326 = [(CAMUserPreferences *)self audioConfigurationForMode:v216 device:v385 emulationMode:mode duringCall:v159];
  if ((v199 != 1) | v345 & 1)
  {
    torchMode4 = v199;
  }

  else
  {
    torchMode4 = [defaultCaptureConfiguration torchMode];
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
    v222 = rawMode;
    [CAMConflictingControlConfiguration resolveDesiredRAWMode:rawMode photoFormatConflicts:v373 desiredLivePhotoMode:v390 desiredFlashMode:v368 toRAWMode:&v411 toLivePhotoMode:&v412 toFlashMode:&v413];
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
  v342 = [CAMConflictingControlConfiguration resolveDesiredMacroMode:macroMode2 forMode:v394 device:v385 videoConfiguration:v379 videoStabilizationStrength:[(CAMUserPreferences *)self videoStabilizationStrengthForVideoStabilizationMode:v386 captureMode:v394] photoFormat:v227 optionalDepthEffectEnabled:v228 frontRearSimultaneousVideoEnabled:v311];
  shouldMirrorFrontCameraCaptures = [(CAMUserPreferences *)self shouldMirrorFrontCameraCaptures];
  v230 = 0;
  if (shouldMirrorFrontCameraCaptures)
  {
    v230 = [v10 mirroredFrontCapturesSupportedForMode:v394];
  }

  v325 = v230;
  semanticStylesSupport = [v10 semanticStylesSupport];
  self->_didAcknowledgeSemanticStylesDescription = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceSemanticStylesDidAcknowledgeDescription"] & ((semanticStylesSupport & 8) >> 3);
  if ((semanticStylesSupport & 8) != 0)
  {
    smartStylesSupported2 = [v10 smartStylesSupported];
    if (smartStylesSupported2)
    {
      LOBYTE(smartStylesSupported2) = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceSmartStylesDidAcknowledgeDescription"];
    }
  }

  else
  {
    LOBYTE(smartStylesSupported2) = 0;
  }

  self->_didAcknowledgeSmartStylesDescription = smartStylesSupported2;
  selectedSemanticStyleIndex = [v372 selectedSemanticStyleIndex];
  semanticStyles = [v372 semanticStyles];
  smartStyleSystemStyleIndex = [v372 smartStyleSystemStyleIndex];
  if ((semanticStylesSupport & 8) == 0)
  {
    v250 = semanticStyles;
    goto LABEL_528;
  }

  v233 = _underlyingUserDefaults;
  v234 = +[CAMCaptureCapabilities capabilities];
  hostProcess = [v234 hostProcess];

  if (hostProcess)
  {
    v236 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.camera"];

    v233 = v236;
  }

  _semanticStylesKey = [(CAMUserPreferences *)self _semanticStylesKey];
  v321 = v233;
  v238 = [v233 arrayForKey:_semanticStylesKey];

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

      semanticStylesVersion = [v10 semanticStylesVersion];
      if (semanticStylesVersion == 1)
      {
        v245 = MEMORY[0x1E6993890];
        v404 = 0;
        v246 = &v404;
        v247 = &v404;
        goto LABEL_456;
      }

      if (semanticStylesVersion)
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
    v250 = [semanticStyles mutableCopy];

    Current = CFAbsoluteTimeGetCurrent();
    v253 = [CAMSmartStyleUtilities readAVCaptureSystemStyleBypassXPC:styleCopy allowNil:0];
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
      preserveSmartStyle = [(CAMUserPreferences *)self preserveSmartStyle];
      v262 = v382;
      v263 = v382;
      v264 = v321;
      if (!preserveSmartStyle)
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
    smartStyleSystemStyleIndex = v286;
    if ((v266 & 1) == 0)
    {
      v286 = v288;
      if (v288 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (smartStyleSystemStyleIndex == 0x7FFFFFFFFFFFFFFFLL)
        {
          v286 = 0;
        }

        else
        {
          v286 = smartStyleSystemStyleIndex;
        }
      }
    }

    selectedSemanticStyleIndex = v286;
  }

  else
  {
    v264 = v321;
    v267 = [v321 integerForKey:@"CAMUserPreferenceSelectedSemanticStyleIndex"];
    v268 = [semanticStyles count];
    if ([v392 count] == v268)
    {
      if (v267 < v268)
      {
        v250 = v392;

        selectedSemanticStyleIndex = v267;
        goto LABEL_527;
      }
    }

    else
    {
      v281 = v267 < v268 && obja == 0;
      v282 = selectedSemanticStyleIndex;
      if (v281)
      {
        v282 = v267;
      }

      selectedSemanticStyleIndex = v282;
    }

    v250 = semanticStyles;
  }

LABEL_527:

LABEL_528:
  v289 = [CAMCaptureConfiguration alloc];
  shouldMixAudioWithOthers = [(CAMUserPreferences *)self shouldMixAudioWithOthers];
  v292 = v412;
  v291 = v413;
  v293 = v410;
  v294 = v411;
  LOBYTE(v314) = [(CAMUserPreferences *)self shouldEnableFrontRearSimultaneousVideo];
  BYTE1(v313) = v387;
  LOBYTE(v313) = v347;
  v383 = v250;
  LOBYTE(v312) = v325;
  v295 = [(CAMCaptureConfiguration *)v289 initWithCaptureMode:v394 captureDevice:v385 videoConfiguration:v379 audioConfiguration:v326 mixAudioWithOthers:shouldMixAudioWithOthers flashMode:v291 torchMode:v145 HDRMode:v146 irisMode:torchMode4 timerDuration:v346 photoModeAspectRatioCrop:v292 photoModeEffectFilterType:v362 squareModeEffectFilterType:v332 portraitModeEffectFilterType:v330 portraitModeLightingEffectType:v328 portraitModeApertureValue:v327 portraitModeIntensityValue:v351 mirrorFrontCameraCaptures:v312 exposureBiasesByMode:v363 macroMode:v342 photoResolution:v293 rawMode:v294 proResVideoMode:v369 semanticStyles:v250 selectedSemanticStyleIndex:selectedSemanticStyleIndex smartStyleSystemStyleIndex:smartStyleSystemStyleIndex videoStabilizationMode:v386 zoomPIPEnabled:v313 optionalDepthEffectEnabled:v339 sharedLibraryMode:v314 frontRearSimultaneousVideoEnabled:?];
  v296 = [[CAMConflictingControlConfiguration alloc] initWithDesiredFlashMode:v368 desiredHDRMode:v346 desiredLivePhotoMode:v390 desiredRAWMode:v375 desiredPhotoResolution:v344 photoFormatConflicts:v373 desiredNightModeControlMode:isNightModeSupported nightModeConflicts:v361 desiredMacroMode:macroMode2];
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
  self->_classicModeSwitchingEnabled = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceClassicModeSwitchingEnabled"];
  if (isInternalInstall)
  {
    self->_overriddenBackCaptureInterval = [_underlyingUserDefaults integerForKey:@"CAMInternalPreferenceOverriddenBackBurstCaptureInterval"];
    overriddenFrontCaptureInterval = [_underlyingUserDefaults integerForKey:@"CAMInternalPreferenceOverriddenFrontBurstCaptureInterval"];
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

    self->_burstFollowsEncoderSettings = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceDebugBurstRespectsEncodingSettings"];
    [_underlyingUserDefaults doubleForKey:@"CAMDebugResetTimeoutSeconds"];
    self->__resetTimeoutOverride = v307;
    self->_preferredMinimumFreeBytes = [_underlyingUserDefaults integerForKey:@"CAMInternalPreferenceOverridenPreferredStorageThreshold"];
    if ([v10 featureDevelopmentSmudgeDetectionBaseTimeoutSeconds])
    {
      self->_smudgeNotificationBaseTimeoutInSeconds = [v10 featureDevelopmentSmudgeDetectionBaseTimeoutSeconds];
    }
  }

  hostProcess2 = [v10 hostProcess];
  if (hostProcess2 <= 4 && ((1 << hostProcess2) & 0x15) != 0)
  {
    [(CAMUserPreferences *)self _publishAnalyticsIfNeededAfterAppLaunch];
  }

  [(CAMUserPreferences *)self _setHasReadLastWrittenValues:1];
  if (configuration)
  {
    *configuration = mode == 0 && (_shouldReconfigureCurrentConfigurationForSettingsChange || v322);
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

- (unint64_t)_updateEntryForPresetType:(int64_t)type inSmartStyles:(id)styles withStyle:(id)style
{
  stylesCopy = styles;
  styleCopy = style;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__CAMUserPreferences__updateEntryForPresetType_inSmartStyles_withStyle___block_invoke;
  v11[3] = &__block_descriptor_40_e30_B32__0__CEKSmartStyle_8Q16_B24l;
  v11[4] = type;
  v9 = [stylesCopy indexOfObjectPassingTest:v11];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [stylesCopy setObject:styleCopy atIndexedSubscript:v9];
  }

  return v9;
}

- (id)_semanticStylesKey
{
  v2 = +[CAMCaptureCapabilities capabilities];
  semanticStylesVersion = [v2 semanticStylesVersion];

  v4 = @"CAMUserPreferenceSmartStylesCustomizedStyles";
  if (semanticStylesVersion != 1)
  {
    v4 = 0;
  }

  if (semanticStylesVersion)
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

- (void)_writeSmartStylePresetStringForIndex:(int64_t)index inStyles:(id)styles key:(id)key
{
  stylesCopy = styles;
  keyCopy = key;
  if ([stylesCopy count] <= index)
  {
    v9 = 0;
  }

  else
  {
    v8 = [stylesCopy objectAtIndexedSubscript:index];
    v9 = [MEMORY[0x1E6993890] persistenceStringForPresetType:{objc_msgSend(v8, "presetType")}];
  }

  CFPreferencesSetAppValue(keyCopy, v9, @"com.apple.camera");
}

- (int64_t)_findIndexOfSmartStylePresetString:(id)string inStyles:(id)styles
{
  stylesCopy = styles;
  v10 = 0;
  v6 = [MEMORY[0x1E6993890] presetTypeFromPersistenceString:string success:&v10];
  if (v10 == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__CAMUserPreferences__findIndexOfSmartStylePresetString_inStyles___block_invoke;
    v9[3] = &__block_descriptor_40_e34_B32__0___CEKCaptureStyle__8Q16_B24l;
    v9[4] = v6;
    v7 = [stylesCopy indexOfObjectPassingTest:v9];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (void)_updateLastWrittenSettingsDate
{
  _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
  v3 = [MEMORY[0x1E695DF00] now];
  [_underlyingUserDefaults setObject:v3 forKey:@"CAMUserPreferencesLastWrittenSettingsDate"];
  [(CAMUserPreferences *)self _setLastWrittenSettingsDate:v3];
}

+ (void)updateLastViewedSettingsDate
{
  v2 = [MEMORY[0x1E695DF00] now];
  CFPreferencesSetAppValue(@"CAMUserPreferencesLastViewedSettingsInterfaceDate", v2, @"com.apple.camera");
}

- (BOOL)_shouldReconfigureCurrentConfigurationForSettingsChange
{
  _lastViewedSettingsInterfaceDate = [(CAMUserPreferences *)self _lastViewedSettingsInterfaceDate];
  _lastWrittenSettingsDate = [(CAMUserPreferences *)self _lastWrittenSettingsDate];
  v5 = !-[CAMUserPreferences _hasReadLastWrittenValues](self, "_hasReadLastWrittenValues") && [_lastWrittenSettingsDate compare:_lastViewedSettingsInterfaceDate] == -1;

  return v5;
}

- (NSDate)resetTimeoutDate
{
  _lastWrittenSettingsDate = [(CAMUserPreferences *)self _lastWrittenSettingsDate];
  [(CAMUserPreferences *)self _resetTimeoutSeconds];
  if (_lastWrittenSettingsDate)
  {
    [MEMORY[0x1E695DF00] dateWithTimeInterval:_lastWrittenSettingsDate sinceDate:?];
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
  resetTimeoutDate = [(CAMUserPreferences *)self resetTimeoutDate];
  _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
  v5 = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferencePreserveAllSettings"];

  if ((v5 & 1) != 0 || [(CAMUserPreferences *)self _hasReadLastWrittenValues])
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E695DF00] now];
    v6 = [resetTimeoutDate compare:v7] == -1;
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

- (int64_t)videoEncodingBehaviorForConfiguration:(int64_t)configuration mode:(int64_t)mode desiredProResVideoMode:(int64_t)videoMode outputToExternalStorage:(BOOL)storage frontRearSimultaneousVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  storageCopy = storage;
  v13 = +[CAMCaptureCapabilities capabilities];
  v14 = v13;
  if (videoMode != 1 || ([v13 isProResVideoSupportedForMode:mode videoConfiguration:configuration outputToExternalStorage:storageCopy frontRearSimultaneousVideoEnabled:enabledCopy] & 1) == 0)
  {
    if ([v14 isHEVCEncodingSupported])
    {
      if ((mode - 7) < 3)
      {
        v16 = 1;
      }

      else
      {
        v16 = (configuration < 0xF) & (0x6300u >> configuration);
      }

      if (-[CAMUserPreferences HDR10BitVideoEnabled](self, "HDR10BitVideoEnabled") && [v14 isHDR10BitVideoSupportedForMode:mode])
      {
        if ((v16 | [v14 isHDR10BitVideoSupportedForVideoConfiguration:configuration videoEncodingBehavior:1]))
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

- (int64_t)photoEncodingBehaviorForMode:(int64_t)mode resolvedRAWMode:(int64_t)wMode isCapturingVideo:(BOOL)video isTrueVideo:(BOOL)trueVideo
{
  result = 0;
  if (!video && !trueVideo)
  {
    if (wMode == 1)
    {
      result = 2;
    }

    else
    {
      result = [(CAMUserPreferences *)self photoEncodingBehavior];
    }
  }

  if (mode == 9)
  {
    return 1;
  }

  return result;
}

+ (BOOL)shouldEnableHDR10BitVideoForHEVCEnabled:(BOOL)enabled capabilities:(id)capabilities
{
  isHDR10BitVideoSupported = [capabilities isHDR10BitVideoSupported];
  if (isHDR10BitVideoSupported)
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceHDR10BitVideoEnabled", @"com.apple.camera", &keyExistsAndHasValidFormat);
    v7 = AppBooleanValue;
    if (enabled)
    {
      if (AppBooleanValue)
      {
        v8 = 1;
      }

      else
      {
        v8 = keyExistsAndHasValidFormat == 0;
      }

      LOBYTE(isHDR10BitVideoSupported) = v8;
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

      LOBYTE(isHDR10BitVideoSupported) = !v10;
    }
  }

  return isHDR10BitVideoSupported;
}

- (BOOL)prefersHDR10BitVideoForCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  LOBYTE(self) = [objc_opt_class() shouldEnableHDR10BitVideoForHEVCEnabled:-[CAMUserPreferences _preferHEVCWhenAvailable](self capabilities:{"_preferHEVCWhenAvailable"), capabilitiesCopy}];

  return self;
}

- (BOOL)shouldDisableCameraSwitchingDuringVideoRecordingForMode:(int64_t)mode
{
  if (mode > 9)
  {
    return 0;
  }

  if (((1 << mode) & 0x86) != 0)
  {
    return [(CAMUserPreferences *)self _shouldDisableCameraSwitchingDuringVideoRecording];
  }

  return ((1 << mode) & 0x300) != 0;
}

- (void)setDidAcknowledgePortraitModeDescription:(BOOL)description
{
  descriptionCopy = description;
  v6 = +[CAMCaptureCapabilities capabilities];
  if ((([v6 isFrontPortraitModeSupported] & 1) != 0 || objc_msgSend(v6, "isBackPortraitModeSupported")) && self->_didAcknowledgePortraitModeDescription != descriptionCopy)
  {
    self->_didAcknowledgePortraitModeDescription = descriptionCopy;
    _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [_underlyingUserDefaults setBool:descriptionCopy forKey:@"CAMUserPreferencePortraitModeDidAcknowledgeDescription_12"];
  }
}

- (void)setDidAcknowledgeCinematicModeDescription:(BOOL)description
{
  descriptionCopy = description;
  v5 = +[CAMCaptureCapabilities capabilities];
  isCinematicModeSupported = [v5 isCinematicModeSupported];

  if (isCinematicModeSupported && self->_didAcknowledgeCinematicModeDescription != descriptionCopy)
  {
    self->_didAcknowledgeCinematicModeDescription = descriptionCopy;
    _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [_underlyingUserDefaults setBool:descriptionCopy forKey:@"CAMUserPreferenceCinematicModeDidAcknowledgeDescription"];
  }
}

- (void)setDidAcknowledgeSemanticStylesDescription:(BOOL)description
{
  descriptionCopy = description;
  v5 = +[CAMCaptureCapabilities capabilities];
  semanticStylesSupport = [v5 semanticStylesSupport];

  if ((semanticStylesSupport & 8) != 0 && self->_didAcknowledgeSemanticStylesDescription != descriptionCopy)
  {
    self->_didAcknowledgeSemanticStylesDescription = descriptionCopy;
    _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [_underlyingUserDefaults setBool:descriptionCopy forKey:@"CAMUserPreferenceSemanticStylesDidAcknowledgeDescription"];
  }
}

+ (BOOL)canShowSmartStylesOnboardingForCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v4 = ([capabilitiesCopy semanticStylesSupport] >> 3) & 1;
  smartStylesSupported = [capabilitiesCopy smartStylesSupported];

  return smartStylesSupported & v4;
}

- (void)setDidAcknowledgeSmartStylesDescription:(BOOL)description
{
  descriptionCopy = description;
  v5 = objc_opt_class();
  v6 = +[CAMCaptureCapabilities capabilities];
  LODWORD(v5) = [v5 canShowSmartStylesOnboardingForCapabilities:v6];

  if (v5 && self->_didAcknowledgeSmartStylesDescription != descriptionCopy)
  {
    self->_didAcknowledgeSmartStylesDescription = descriptionCopy;
    _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [_underlyingUserDefaults setBool:descriptionCopy forKey:@"CAMUserPreferenceSmartStylesDidAcknowledgeDescription"];
  }
}

- (BOOL)mirrorCameraCapturesForDevicePosition:(int64_t)position mode:(int64_t)mode
{
  if (position != 1 || ![(CAMUserPreferences *)self shouldMirrorFrontCameraCaptures])
  {
    return 0;
  }

  v5 = +[CAMCaptureCapabilities capabilities];
  v6 = [v5 mirroredFrontCapturesSupportedForMode:mode];

  return v6;
}

- (int64_t)maximumPhotoResolutionForMode:(int64_t)mode device:(int64_t)device
{
  v7 = +[CAMCaptureCapabilities capabilities];
  if ((device - 1) > 0xA)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_1A3A68210[device - 1];
  }

  v9 = [(CAMUserPreferences *)self preferredHEICPhotoResolutionForDevicePosition:v8];
  maximumRAWPhotoResolution = [(CAMUserPreferences *)self maximumRAWPhotoResolution];
  if ([(CAMUserPreferences *)self shouldUsePhotoFormatControlForMode:mode])
  {
    v9 = [v7 maximumPhotoResolutionForMode:mode device:device encoding:1];
    maximumRAWPhotoResolution = [v7 maximumPhotoResolutionForMode:mode device:device encoding:2];
  }

  v11 = [v7 isPhotoResolutionSupported:maximumRAWPhotoResolution forMode:mode device:device photoEncoding:2];
  v12 = [v7 isPhotoResolutionSupported:v9 forMode:mode device:device photoEncoding:1];
  if ((maximumRAWPhotoResolution - 1) > 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = qword_1A3A681F8[maximumRAWPhotoResolution - 1];
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
      maximumRAWPhotoResolution = v9;
    }

    else
    {
      maximumRAWPhotoResolution = 0;
    }
  }

  return maximumRAWPhotoResolution;
}

- (int64_t)preferredHEICPhotoResolutionForDevicePosition:(int64_t)position
{
  if (position == 1)
  {
    return [(CAMUserPreferences *)self _frontPreferredHEICPhotoResolution];
  }

  if (position)
  {
    return 0;
  }

  return [(CAMUserPreferences *)self _backPreferredHEICPhotoResolution];
}

- (int64_t)videoStabilizationStrengthForVideoStabilizationMode:(int64_t)mode captureMode:(int64_t)captureMode
{
  if (mode == 1)
  {
    actionModeLowLightEnabled = [(CAMUserPreferences *)self actionModeLowLightEnabled];
    enhancedVideoStabilization = 2;
    if (!actionModeLowLightEnabled)
    {
      enhancedVideoStabilization = 3;
    }
  }

  else if (mode)
  {
    enhancedVideoStabilization = 0;
  }

  else
  {
    enhancedVideoStabilization = [(CAMUserPreferences *)self enhancedVideoStabilization];
  }

  if (captureMode == 8)
  {
    return 1;
  }

  else
  {
    return enhancedVideoStabilization;
  }
}

- (BOOL)isAutoFPSVideoEnabledForMode:(int64_t)mode device:(int64_t)device videoConfiguration:(int64_t)configuration encodingBehavior:(int64_t)behavior outputToExternalStorage:(BOOL)storage frontRearSimultaneousVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  storageCopy = storage;
  v15 = +[CAMCaptureCapabilities capabilities];
  v16 = +[CAMCaptureCapabilities capabilities];
  v28 = [v15 isAutoFPSVideoSupportedForMode:mode videoConfiguration:configuration videoEncodingBehavior:behavior outputToExternalStorage:storageCopy prefersHDR10BitVideo:-[CAMUserPreferences prefersHDR10BitVideoForCapabilities:](self frontRearSimultaneousVideoEnabled:{"prefersHDR10BitVideoForCapabilities:", v16), enabledCopy}];

  v17 = +[CAMCaptureCapabilities capabilities];
  v18 = +[CAMCaptureCapabilities capabilities];
  LOBYTE(v27) = enabledCopy;
  v19 = [v17 resolvedVideoConfigurationForMode:mode device:device videoEncodingBehavior:behavior videoConfiguration:configuration outputToExternalStorage:storageCopy prefersHDR10BitVideo:-[CAMUserPreferences prefersHDR10BitVideoForCapabilities:](self frontRearSimultaneousVideoEnabled:{"prefersHDR10BitVideoForCapabilities:", v18), v27}];

  if ((v19 - 5) >= 3)
  {
    isLowLightVideoEnabled = v23 && (+[CAMCaptureCapabilities capabilities](CAMCaptureCapabilities, "capabilities"), v24 = v23 = v19 == 9 || v19 == 1;
  }

  else
  {
    v20 = +[CAMCaptureCapabilities capabilities];
    isVariableFramerateVideoSupported = [v20 isVariableFramerateVideoSupported];

    if (isVariableFramerateVideoSupported)
    {
      isLowLightVideoEnabled = ([(CAMUserPreferences *)self VFRMode]- 1) < 2;
    }

    else
    {
      isLowLightVideoEnabled = [(CAMUserPreferences *)self isLowLightVideoEnabled];
    }
  }

  return v28 & isLowLightVideoEnabled;
}

+ (void)performLowLightVideoMigrationWithCapabilities:(id)capabilities
{
  v18 = *MEMORY[0x1E69E9840];
  capabilitiesCopy = capabilities;
  if (![capabilitiesCopy shouldPersistPreferences])
  {
    goto LABEL_27;
  }

  defaultVFRMode = [capabilitiesCopy defaultVFRMode];
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

      if (defaultVFRMode > 2)
      {
        v6 = 0;
      }

      else
      {
        v6 = off_1E76F9438[defaultVFRMode];
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"Performing one-time upgrade of auto low light from On to %@ for variable frame rate video", v6];
    }

    else
    {
      if (defaultVFRMode > 2)
      {
        v7 = 0;
      }

      else
      {
        v7 = off_1E76F9438[defaultVFRMode];
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempted one-time upgrade of auto low light. Key doesn't exist. Using %@ for variable frame rate video", v7];
    }
    v8 = ;
    CFPreferencesSetAppValue(@"CAMUserPreferenceVFRMode", [MEMORY[0x1E696AD98] numberWithInteger:defaultVFRMode], @"com.apple.camera");
    goto LABEL_15;
  }

LABEL_18:
  v14 = 0;
  CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceDidPerformVFRUpgrade2", @"com.apple.camera", &v14);
  if (!v14 && defaultVFRMode == 2)
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

+ (void)performResponsiveShutterMigrationWithCapabilities:(id)capabilities
{
  if ([capabilities shouldPersistPreferences])
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

- (void)writeAvailableDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[CAMCaptureCapabilities capabilities];
  fallbackCameraSupported = [v5 fallbackCameraSupported];

  if (fallbackCameraSupported)
  {
    if ([(CAMUserPreferences *)self writingAvailableDevices])
    {
      v7 = os_log_create("com.apple.camera", "UserPreferences");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "writeAvailableDevices already writing", buf, 2u);
      }

      completionCopy[2](completionCopy, 0);
    }

    else
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __58__CAMUserPreferences_writeAvailableDevicesWithCompletion___block_invoke;
      v8[3] = &unk_1E76F9260;
      v8[4] = self;
      v9 = completionCopy;
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

+ (void)performSuperWideAutoMacroMigrationWithCapabilities:(id)capabilities
{
  v11 = *MEMORY[0x1E69E9840];
  capabilitiesCopy = capabilities;
  if ([capabilitiesCopy shouldPersistPreferences])
  {
    if ([capabilitiesCopy shouldPerformSuperWideAutoMacroMigration])
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

+ (void)performAudioConfigurationMigrationWithCapabilities:(id)capabilities
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

+ (void)performHorizonLevelUpgradeWithCapabilities:(id)capabilities
{
  if ([capabilities shouldPersistPreferences])
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

+ (void)performMostCompatibleConfirmationMigrationWithCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  if ([capabilitiesCopy shouldPersistPreferences])
  {
    isHEVCEncodingSupported = [capabilitiesCopy isHEVCEncodingSupported];
    newFormatsConfiguration = [MEMORY[0x1E69C0700] newFormatsConfiguration];
    if (isHEVCEncodingSupported)
    {
      if (newFormatsConfiguration == 1)
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

+ (void)performApertureMigrationWithCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  if ([capabilitiesCopy isDepthEffectApertureSupported])
  {
    if ([capabilitiesCopy shouldPersistPreferences])
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

+ (void)performSmartStylesOnboardingAcknowledgementResetWithCapabilities:(id)capabilities
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

- (BOOL)shouldUsePhotoFormatControlForMode:(int64_t)mode
{
  if ([(CAMUserPreferences *)self photoFormatControlEnabled])
  {
    v4 = +[CAMCaptureCapabilities capabilities];
    v5 = [v4 isPhotoResolutionSupported:3 forMode:mode device:0 photoEncoding:1];
    v6 = v5 | [v4 isPhotoResolutionSupported:3 forMode:mode device:1 photoEncoding:1];
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)isPhotoFormat:(id)format enabledForMode:(int64_t)mode device:(int64_t)device
{
  var1 = format.var1;
  var0 = format.var0;
  v10 = +[CAMCaptureCapabilities capabilities];
  v11 = v10;
  if (var0 < 2)
  {
    if ((device - 1) > 0xA)
    {
      v12 = 0;
    }

    else
    {
      v12 = qword_1A3A68210[device - 1];
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

  if (var0 != 2 || ![v10 isLinearDNGSupportedForMode:mode] || !-[CAMUserPreferences rawControlEnabled](self, "rawControlEnabled"))
  {
    goto LABEL_14;
  }

LABEL_13:
  v14 = [v11 isPhotoFormatSupported:var0 forMode:var1 device:{mode, device}];
LABEL_15:

  return v14;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)fallbackPhotoFormatForDesiredFormat:(id)format mode:(int64_t)mode device:(int64_t)device
{
  var1 = format.var1;
  var0 = format.var0;
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
    photoEncodingBehavior = [(CAMUserPreferences *)self photoEncodingBehavior];
    if ((device - 1) > 0xA)
    {
      v12 = 0;
    }

    else
    {
      v12 = qword_1A3A68210[device - 1];
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
        if ([(CAMUserPreferences *)self isPhotoFormat:*&v20[v14] enabledForMode:*(&v20[v14] + 1) device:mode, device])
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
    v11 = photoEncodingBehavior;
  }

LABEL_18:
  v17 = v11;
  v18 = v10;
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)resolvedPhotoFormatForResolvedResolution:(int64_t)resolution rawMode:(int64_t)mode
{
  if (resolution <= 1)
  {
    resolutionCopy = 1;
  }

  else
  {
    resolutionCopy = resolution;
  }

  photoEncodingBehavior = [(CAMUserPreferences *)self photoEncodingBehavior];
  if (mode == 1)
  {
    photoEncodingBehavior = 2;
  }

  v7 = resolutionCopy;
  result.var1 = v7;
  result.var0 = photoEncodingBehavior;
  return result;
}

- (void)setDidAcknowledgeCTMDescription:(BOOL)description
{
  if (self->_didAcknowledgeCTMDescription != description)
  {
    descriptionCopy = description;
    self->_didAcknowledgeCTMDescription = description;
    _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [_underlyingUserDefaults setBool:descriptionCopy forKey:@"CAMUserPreferenceCTMDidAcknowledgeDescription"];
  }
}

- (int64_t)previewViewAspectModeForMode:(int64_t)mode isFullScreen:(BOOL)screen
{
  if (mode > 9)
  {
    return 0;
  }

  if (((1 << mode) & 0x1A6) != 0)
  {
    if (screen)
    {
      return [(CAMUserPreferences *)self _previewAspectModeForVideoModes];
    }

    else
    {
      return [(CAMUserPreferences *)self _windowedPreviewAspectModeForVideoModes];
    }
  }

  if (((1 << mode) & 0x241) == 0)
  {
    return 0;
  }

  if (screen)
  {
    return [(CAMUserPreferences *)self _previewAspectModeForPhotoModes];
  }

  else
  {
    return [(CAMUserPreferences *)self _windowedPreviewAspectModeForPhotoModes];
  }
}

- (void)setPreviewViewAspectMode:(int64_t)mode forMode:(int64_t)forMode isFullScreen:(BOOL)screen
{
  if (forMode <= 9)
  {
    if (((1 << forMode) & 0x1A6) != 0)
    {
      if (screen)
      {
        [(CAMUserPreferences *)self _setPreviewAspectModeForVideoModes:mode];
      }

      else
      {
        [(CAMUserPreferences *)self _setWindowedPreviewAspectModeForVideoModes:mode];
      }
    }

    else if (((1 << forMode) & 0x241) != 0)
    {
      if (screen)
      {
        [(CAMUserPreferences *)self _setPreviewAspectModeForPhotoModes:mode];
      }

      else
      {
        [(CAMUserPreferences *)self _setWindowedPreviewAspectModeForPhotoModes:mode];
      }
    }
  }
}

+ (BOOL)isSharedLibrarySupportedAndEnabledForCapabilities:(id)capabilities
{
  librarySelectionSupported = [capabilities librarySelectionSupported];
  if (librarySelectionSupported)
  {
    LOBYTE(librarySelectionSupported) = CFPreferencesGetAppBooleanValue(*MEMORY[0x1E6978E88], @"com.apple.mobileslideshow", 0) != 0;
  }

  return librarySelectionSupported;
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
  captureConfiguration = [(CAMUserPreferences *)self captureConfiguration];
  [captureConfiguration setSharedLibraryMode:0];
}

- (BOOL)allowExplicitProResColorSpace
{
  v2 = +[CAMCaptureCapabilities capabilities];
  isProResLogColorSpaceSupported = [v2 isProResLogColorSpaceSupported];

  return isProResLogColorSpaceSupported;
}

- (int64_t)colorSpaceForMode:(int64_t)mode videoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior device:(int64_t)device preferredProResColorSpace:(int64_t)space
{
  v13 = +[CAMCaptureCapabilities capabilities];
  spaceCopy = 1;
  if (mode > 4)
  {
    if (mode == 8)
    {
      spaceCopy = 0;
      goto LABEL_22;
    }

    if (mode != 7)
    {
      spaceCopy = mode != 5;
      goto LABEL_22;
    }

LABEL_12:
    hDR10BitVideoEnabled = [(CAMUserPreferences *)self HDR10BitVideoEnabled];
    v19 = [v13 isHDR10BitVideoSupportedForMode:mode];
    v20 = hDR10BitVideoEnabled & v19 & [v13 isHDR10BitVideoSupportedForVideoConfiguration:configuration videoEncodingBehavior:behavior];
    if (behavior == 2)
    {
      allowExplicitProResColorSpace = [(CAMUserPreferences *)self allowExplicitProResColorSpace];
      if (allowExplicitProResColorSpace)
      {
        spaceCopy = space;
      }

      else
      {
        spaceCopy = 2;
      }

      if ((allowExplicitProResColorSpace | v20))
      {
        goto LABEL_22;
      }
    }

    else if (v20)
    {
      spaceCopy = 2;
      goto LABEL_22;
    }

    spaceCopy = (hDR10BitVideoEnabled | ~v19) & 1;
    goto LABEL_22;
  }

  if (mode == 1)
  {
    goto LABEL_12;
  }

  if (mode == 2)
  {
    if (!configuration)
    {
      LOBYTE(v23) = 0;
      configuration = [v13 resolvedVideoConfigurationForMode:2 device:device videoEncodingBehavior:behavior videoConfiguration:0 outputToExternalStorage:0 prefersHDR10BitVideo:-[CAMUserPreferences prefersHDR10BitVideoForCapabilities:](self frontRearSimultaneousVideoEnabled:{"prefersHDR10BitVideoForCapabilities:", v13), v23}];
    }

    hDR10BitVideoEnabled2 = [(CAMUserPreferences *)self HDR10BitVideoEnabled];
    v16 = [v13 isHDR10BitVideoSupportedForMode:2];
    v17 = [v13 isHDR10BitVideoSupportedForVideoConfiguration:configuration videoEncodingBehavior:behavior];
    if ((hDR10BitVideoEnabled2 & v16 & v17 & [v13 isHDR10BitSlomoSupportedForDevice:device]) != 0)
    {
      spaceCopy = 2;
    }

    else
    {
      spaceCopy = 1;
    }
  }

LABEL_22:

  return spaceCopy;
}

- (void)setExplicitProResColorSpace:(int64_t)space
{
  v5 = +[CAMCaptureCapabilities capabilities];
  supportedProResColorSpaces = [v5 supportedProResColorSpaces];

  if (supportedProResColorSpaces && self->_explicitProResColorSpace != space)
  {
    self->_explicitProResColorSpace = space;
    _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [_underlyingUserDefaults setInteger:space forKey:@"CAMUserPreferenceExplicitProResColorSpace"];
  }
}

- (void)setDidAcknowledgeDepthInPhotoModeDescription:(BOOL)description
{
  if (self->_didAcknowledgeDepthInPhotoModeDescription != description)
  {
    descriptionCopy = description;
    self->_didAcknowledgeDepthInPhotoModeDescription = description;
    _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [_underlyingUserDefaults setBool:descriptionCopy forKey:@"CAMUserPreferenceDidAcknowledgeDepthInPhotoModeDescription"];
  }
}

- (unint64_t)audioConfigurationForMode:(int64_t)mode device:(int64_t)device emulationMode:(int64_t)emulationMode duringCall:(BOOL)call
{
  v8 = 0;
  if (mode <= 9)
  {
    if (((1 << mode) & 0x186) != 0)
    {
      v8 = 1;
    }

    else if (((1 << mode) & 0x211) != 0)
    {
      callCopy = call;
      if ((device - 1) > 0xA)
      {
        v11 = 0;
      }

      else
      {
        v11 = qword_1A3A68210[device - 1];
      }

      v12 = +[CAMCaptureCapabilities capabilities];
      v13 = [v12 isLivePhotoSupportedForDevicePosition:v11];

      if (v13)
      {
        if (emulationMode)
        {
          v8 = 0;
        }

        else
        {
          v8 = !callCopy;
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  v14 = +[CAMCaptureCapabilities capabilities];
  disableAudio = [v14 disableAudio];

  v16 = +[CAMCaptureCapabilities capabilities];
  v17 = [v16 isStereoAudioRecordingSupportedForMode:mode];
  v18 = [v16 isCinematicAudioSupportedForMode:mode];
  preferredAudioConfiguration = [(CAMUserPreferences *)self preferredAudioConfiguration];
  v20 = 0;
  if (v8 && !disableAudio)
  {
    if (preferredAudioConfiguration == 3)
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

    else if (preferredAudioConfiguration == 2)
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
      v20 = preferredAudioConfiguration == 1;
    }
  }

  return v20;
}

+ (unint64_t)selectedAudioConfigurationForCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CAMUserPreferenceAudioConfiguration", @"com.apple.camera", &keyExistsAndHasValidFormat);
  v5 = AppIntegerValue;
  if (AppIntegerValue != 1)
  {
    if (AppIntegerValue == 3)
    {
      LOBYTE(AppIntegerValue) = [capabilitiesCopy isCinematicAudioSupported];
    }

    else
    {
      if (AppIntegerValue != 2)
      {
LABEL_8:
        if ([capabilitiesCopy isCinematicAudioSupported])
        {
          v5 = 3;
        }

        else if ([capabilitiesCopy isStereoAudioRecordingSupported])
        {
          v5 = 2;
        }

        else
        {
          v5 = 1;
        }

        goto LABEL_13;
      }

      LOBYTE(AppIntegerValue) = [capabilitiesCopy isStereoAudioRecordingSupported];
    }
  }

  if (!keyExistsAndHasValidFormat || (AppIntegerValue & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:

  return v5;
}

- (void)setDidAcknowledgeSpatialModeOverlayDescription:(BOOL)description
{
  if (self->_didAcknowledgeSpatialModeOverlayDescription != description)
  {
    descriptionCopy = description;
    self->_didAcknowledgeSpatialModeOverlayDescription = description;
    _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [_underlyingUserDefaults setBool:descriptionCopy forKey:@"CAMUserPreferenceDidAcknowledgeSpatialModeOverlayDescription"];
  }
}

- (void)setDidAcknowledgeSolCamDescription:(BOOL)description
{
  if (self->_didAcknowledgeSolCamDescription != description)
  {
    descriptionCopy = description;
    self->_didAcknowledgeSolCamDescription = description;
    _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
    [_underlyingUserDefaults setBool:descriptionCopy forKey:@"CAMUserPreferenceDidAcknowledgeSolCamModeOverlayDescription"];
  }
}

+ (id)_convertDictionary:(id)dictionary expectedKeyClass:(Class)class expectedValueClass:(Class)valueClass keyConverter:(id)converter valueConverter:(id)valueConverter
{
  converterCopy = converter;
  valueConverterCopy = valueConverter;
  v13 = MEMORY[0x1E695DF90];
  dictionaryCopy = dictionary;
  v15 = [[v13 alloc] initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __105__CAMUserPreferences__convertDictionary_expectedKeyClass_expectedValueClass_keyConverter_valueConverter___block_invoke;
  v22[3] = &unk_1E76F9288;
  classCopy = class;
  valueClassCopy = valueClass;
  v24 = converterCopy;
  v25 = valueConverterCopy;
  v16 = v15;
  v23 = v16;
  v17 = valueConverterCopy;
  v18 = converterCopy;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v22];

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

+ (id)_createMappingFromStringsToIntegers:(id)integers
{
  integersCopy = integers;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = integersCopy[2](integersCopy, 0);
  if ([v5 length])
  {
    v6 = 0;
    do
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
      [v4 setObject:v7 forKeyedSubscript:v5];

      v5 = integersCopy[2](integersCopy, ++v6);
    }

    while ([v5 length]);
  }

  return v4;
}

+ (id)_persistenceDictionaryForPreferredDrawerControlByMode:(id)mode
{
  modeCopy = mode;
  v5 = objc_opt_class();
  v6 = [self _convertDictionary:modeCopy expectedKeyClass:v5 expectedValueClass:objc_opt_class() keyConverter:&__block_literal_global_666 valueConverter:&__block_literal_global_668];

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

+ (id)_preferredDrawerControlByModeForPersistenceDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v9[4] = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__CAMUserPreferences__preferredDrawerControlByModeForPersistenceDictionary___block_invoke;
  v10[3] = &__block_descriptor_40_e28___NSNumber_16__0__NSString_8l;
  v10[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__CAMUserPreferences__preferredDrawerControlByModeForPersistenceDictionary___block_invoke_2;
  v9[3] = &__block_descriptor_40_e28___NSNumber_16__0__NSString_8l;
  v7 = [self _convertDictionary:dictionaryCopy expectedKeyClass:v5 expectedValueClass:v6 keyConverter:v10 valueConverter:v9];

  return v7;
}

+ (id)_captureModeNumberForPersistenceString:(id)string
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CAMUserPreferences__captureModeNumberForPersistenceString___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = _captureModeNumberForPersistenceString__onceToken;
  stringCopy = string;
  if (v3 != -1)
  {
    dispatch_once(&_captureModeNumberForPersistenceString__onceToken, block);
  }

  v5 = [_captureModeNumberForPersistenceString__stringToIntegerMap objectForKeyedSubscript:stringCopy];

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

+ (id)_drawerControlTypeNumberForPersistenceString:(id)string
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CAMUserPreferences__drawerControlTypeNumberForPersistenceString___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = _drawerControlTypeNumberForPersistenceString__onceToken;
  stringCopy = string;
  if (v3 != -1)
  {
    dispatch_once(&_drawerControlTypeNumberForPersistenceString__onceToken, block);
  }

  v5 = [_drawerControlTypeNumberForPersistenceString__stringToIntegerMap objectForKeyedSubscript:stringCopy];

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

- (id)smudgeAcknowledgementDateForDevicePosition:(int64_t)position
{
  v4 = [(CAMUserPreferences *)self _devicePositionString:position];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMUserPreferenceLastAcknowledged%@SmudgeDetection", v4];
  _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
  v7 = [_underlyingUserDefaults objectForKey:v5];

  return v7;
}

- (void)setSmudgeAcknowledgementDate:(id)date forDevicePosition:(int64_t)position
{
  dateCopy = date;
  v10 = [(CAMUserPreferences *)self _devicePositionString:position];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMUserPreferenceLastAcknowledged%@SmudgeDetection", v10];
  _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [_underlyingUserDefaults setObject:dateCopy forKey:v7];

  _underlyingUserDefaults2 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [_underlyingUserDefaults2 synchronize];
}

- (int64_t)smudgeAcknowledgementCountForDevicePosition:(int64_t)position
{
  v4 = [(CAMUserPreferences *)self _devicePositionString:position];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMUserPreference%@SmudgeDetectionAcknowledgedCount", v4];
  _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
  v7 = [_underlyingUserDefaults integerForKey:v5];

  return v7;
}

- (void)setSmudgeAcknowledgementCount:(int64_t)count forDevicePosition:(int64_t)position
{
  v9 = [(CAMUserPreferences *)self _devicePositionString:position];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMUserPreference%@SmudgeDetectionAcknowledgedCount", v9];
  _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [_underlyingUserDefaults setInteger:count forKey:v6];

  _underlyingUserDefaults2 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [_underlyingUserDefaults2 synchronize];
}

- (int64_t)smudgeNotDetectedCountForDevicePosition:(int64_t)position
{
  v4 = [(CAMUserPreferences *)self _devicePositionString:position];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMUserPreference%@SmudgeNotDetectedCount", v4];
  _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
  v7 = [_underlyingUserDefaults integerForKey:v5];

  return v7;
}

- (void)setSmudgeNotDetectedCount:(int64_t)count forDevicePosition:(int64_t)position
{
  v9 = [(CAMUserPreferences *)self _devicePositionString:position];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMUserPreference%@SmudgeNotDetectedCount", v9];
  _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [_underlyingUserDefaults setInteger:count forKey:v6];

  _underlyingUserDefaults2 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [_underlyingUserDefaults2 synchronize];
}

- (id)smudgeAnalyticsDictionaryForDevicePosition:(int64_t)position
{
  v4 = [(CAMUserPreferences *)self _devicePositionString:position];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMUserPreference%@SmudgeAnalyticsDictionary", v4];
  _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
  v7 = [_underlyingUserDefaults objectForKey:v5];

  return v7;
}

- (void)setSmudgeAnalyticsDictionary:(id)dictionary forDevicePosition:(int64_t)position
{
  dictionaryCopy = dictionary;
  v10 = [(CAMUserPreferences *)self _devicePositionString:position];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMUserPreference%@SmudgeAnalyticsDictionary", v10];
  _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [_underlyingUserDefaults setObject:dictionaryCopy forKey:v7];

  _underlyingUserDefaults2 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [_underlyingUserDefaults2 synchronize];
}

- (void)removeSmudgeAnalyticsDictionaryForDevicePosition:(int64_t)position
{
  v7 = [(CAMUserPreferences *)self _devicePositionString:position];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CAMUserPreference%@SmudgeAnalyticsDictionary", v7];
  _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [_underlyingUserDefaults removeObjectForKey:v4];

  _underlyingUserDefaults2 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [_underlyingUserDefaults2 synchronize];
}

- (BOOL)smudgeDetectionDisplayWasResetBySettingsToggle
{
  _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
  v3 = [_underlyingUserDefaults BOOLForKey:@"CAMUserPreferenceSmudgeDetectionResetBySettingsToggle"];

  return v3;
}

- (void)clearSmudgeDetectionDisplayWasResetBySettingsToggle
{
  _underlyingUserDefaults = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [_underlyingUserDefaults setBool:0 forKey:@"CAMUserPreferenceSmudgeDetectionResetBySettingsToggle"];

  _underlyingUserDefaults2 = [(CAMUserPreferences *)self _underlyingUserDefaults];
  [_underlyingUserDefaults2 synchronize];
}

- (id)_devicePositionString:(int64_t)string
{
  v3 = @"FrontFacing";
  if (string != 1)
  {
    v3 = 0;
  }

  if (string)
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

+ (void)setSolCamGroupingType:(int64_t)type
{
  v3 = [CAMUserPreferences _stringForGroupingType:type];
  [CAMUserPreferences _setPreferenceValue:v3 forKey:@"CAMUserPreferenceSolCamGroupingType"];
}

+ (void)setSolCamShutterButtonCenterMaterialEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [CAMUserPreferences _setPreferenceValue:v3 forKey:@"CAMUserPreferenceSolCamShutterButtonCenterMaterialEnabled"];
}

+ (void)setSolCamDebugMenuEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [CAMUserPreferences _setPreferenceValue:v3 forKey:@"CAMUserPreferenceValueSolariumDebugMenuEnabled"];
}

+ (id)_stringForGroupingType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    return @"None";
  }

  else
  {
    return off_1E76F9520[type - 1];
  }
}

+ (int64_t)_groupingTypeForString:(id)string
{
  stringCopy = string;
  if (([stringCopy isEqualToString:@"None"] & 1) == 0)
  {
    if ([stringCopy isEqualToString:@"Split"])
    {
      v4 = 1;
      goto LABEL_9;
    }

    if ([stringCopy isEqualToString:@"Complete"])
    {
      v4 = 2;
      goto LABEL_9;
    }

    if ([stringCopy isEqualToString:@"TopGroupsBottom"])
    {
      v4 = 3;
      goto LABEL_9;
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Invalid grouping type string %@", stringCopy}];
  }

  v4 = 0;
LABEL_9:

  return v4;
}

+ (void)setSolCamSelectedZoomCenteredEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [CAMUserPreferences _setPreferenceValue:v3 forKey:@"CAMUserPreferenceSolCamSelectedZoomCenteredEnabled"];
}

+ (void)setSolCamOnboardingEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [CAMUserPreferences _setPreferenceValue:v3 forKey:@"CAMUserPreferenceSolCamOnboardingEnabled"];
}

+ (int64_t)_preferenceIntegerValueForKey:(id)key defaultValue:(int64_t)value
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(key, @"com.apple.camera", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return value;
  }

  return result;
}

+ (BOOL)_preferenceBoolValueForKey:(id)key defaultValue:(BOOL)value
{
  keyExistsAndHasValidFormat = 0;
  v5 = CFPreferencesGetAppBooleanValue(key, @"com.apple.camera", &keyExistsAndHasValidFormat) != 0;
  if (keyExistsAndHasValidFormat)
  {
    return v5;
  }

  else
  {
    return value;
  }
}

+ (void)_setPreferenceValue:(id)value forKey:(id)key
{
  CFPreferencesSetAppValue(key, value, @"com.apple.camera");

  CFPreferencesAppSynchronize(@"com.apple.camera");
}

+ (void)setTopOverCaptureGradientEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [CAMUserPreferences _setPreferenceValue:v3 forKey:@"CAMUserPreferenceTopOverCaptureGradientEnabled"];
}

+ (void)setBottomOverCaptureGradientEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
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