@interface CAMAnalyticsPreferencesEvent
- (BOOL)_visualIntelligenceCameraControlEnabled;
- (CAMAnalyticsPreferencesEvent)initWithPreferences:(id)preferences;
- (id)_focalLengthStringForCustomLens:(int64_t)lens;
- (id)_selectedOverlayControls;
- (int64_t)_clickCountLaunchGesture;
@end

@implementation CAMAnalyticsPreferencesEvent

- (CAMAnalyticsPreferencesEvent)initWithPreferences:(id)preferences
{
  v249 = *MEMORY[0x1E69E9840];
  preferencesCopy = preferences;
  v245.receiver = self;
  v245.super_class = CAMAnalyticsPreferencesEvent;
  v5 = [(CAMAnalyticsEvent *)&v245 init];

  if (!v5)
  {
    goto LABEL_377;
  }

  v6 = [[CAMCaptureCapabilities alloc] initWithHostProcess:0];
  objc_storeStrong(&v5->__capabilities, v6);
  if ([(CAMCaptureCapabilities *)v6 isHEVCEncodingSupported])
  {
    if ([preferencesCopy usingMostCompatibleEncoding])
    {
      v7 = @"MostCompatible";
    }

    else
    {
      v7 = @"HighEfficiency";
    }

    _eventMap = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap setObject:v7 forKeyedSubscript:@"Encoding"];
  }

  v9 = [(CAMCaptureCapabilities *)v6 isPhotoResolutionSupported:3 forPhotoEncoding:1];
  isLinearDNGSupported = [(CAMCaptureCapabilities *)v6 isLinearDNGSupported];
  v11 = isLinearDNGSupported;
  if (!v9)
  {
    if (!isLinearDNGSupported)
    {
      v18 = 0;
      goto LABEL_28;
    }

    rawControlEnabled = [preferencesCopy rawControlEnabled];
    preserveRAW = [preferencesCopy preserveRAW];
    v18 = 0;
    if (rawControlEnabled)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  photoFormatControlEnabled = [preferencesCopy photoFormatControlEnabled];
  preserveRAW = [preferencesCopy preservePhotoResolution];
  if ((v11 & photoFormatControlEnabled) == 1)
  {
    photoFormatControlSecondaryFormat = [preferencesCopy photoFormatControlSecondaryFormat];
    if (photoFormatControlSecondaryFormat > 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = off_1E76FAA38[photoFormatControlSecondaryFormat];
    }

    if ((v15 - 1) > 2)
    {
      v20 = 0;
    }

    else
    {
      v20 = qword_1A3A688E8[v15 - 1];
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%ld", v16, v20];
    rawControlEnabled = 1;
    goto LABEL_22;
  }

  v18 = 0;
  rawControlEnabled = !v11 & photoFormatControlEnabled;
  if ((rawControlEnabled & 1) == 0)
  {
LABEL_15:
    v19 = @"Off";
    goto LABEL_23;
  }

LABEL_22:
  v19 = @"On";
LABEL_23:
  _eventMap2 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [_eventMap2 setObject:v19 forKeyedSubscript:@"PhotoFormatControl"];

  if (rawControlEnabled)
  {
    if (preserveRAW)
    {
      v22 = @"On";
    }

    else
    {
      v22 = @"Off";
    }

    v23 = v22;
    _eventMap3 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap3 setObject:v23 forKeyedSubscript:@"PreservePhotoFormatControl"];

    _eventMap4 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap4 setObject:v18 forKeyedSubscript:@"PhotoFormatControlDefault"];
  }

LABEL_28:
  if ([(CAMCaptureCapabilities *)v6 isLinearDNGSupported])
  {
    if ([preferencesCopy rawControlEnabled])
    {
      v26 = @"On";
    }

    else
    {
      v26 = @"Off";
    }

    v27 = v26;
    _eventMap5 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap5 setObject:v27 forKeyedSubscript:@"LinearDNG"];

    if ([preferencesCopy preserveRAW])
    {
      v29 = @"On";
    }

    else
    {
      v29 = @"Off";
    }

    v30 = v29;
    _eventMap6 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap6 setObject:v30 forKeyedSubscript:@"PreserveLinearDNG"];
  }

  if ([(CAMCaptureCapabilities *)v6 isProResVideoSupported])
  {
    v32 = [preferencesCopy isProResControlEnabled] ? @"On" : @"Off";
    _eventMap7 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap7 setObject:v32 forKeyedSubscript:@"ProRes"];

    v34 = [preferencesCopy preserveProRes] ? @"On" : @"Off";
    _eventMap8 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap8 setObject:v34 forKeyedSubscript:@"PreserveProRes"];

    if ([(CAMCaptureCapabilities *)v6 isProResLogColorSpaceSupported])
    {
      if ([preferencesCopy isProResControlEnabled] && objc_msgSend(preferencesCopy, "allowExplicitProResColorSpace"))
      {
        explicitProResColorSpace = [preferencesCopy explicitProResColorSpace];
        if (explicitProResColorSpace > 3)
        {
          v37 = 0;
        }

        else
        {
          v37 = off_1E76FAA50[explicitProResColorSpace];
        }

        _eventMap9 = [(CAMAnalyticsEvent *)v5 _eventMap];
        [_eventMap9 setObject:v37 forKeyedSubscript:@"ExplicitProResColorSpace"];
      }
    }
  }

  if ([(CAMCaptureCapabilities *)v6 isPALVideoSupported])
  {
    isPALVideoEnabled = [preferencesCopy isPALVideoEnabled];
    v40 = [MEMORY[0x1E696AD98] numberWithBool:isPALVideoEnabled];
    _eventMap10 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap10 setObject:v40 forKeyedSubscript:@"ShowPALFormats"];
  }

  v42 = [preferencesCopy usingMostCompatibleEncoding] ^ 1;
  v43 = [preferencesCopy prefersHDR10BitVideoForCapabilities:v6];
  videoConfiguration = [preferencesCopy videoConfiguration];
  LOBYTE(v233) = [preferencesCopy shouldEnableFrontRearSimultaneousVideo];
  v45 = [(CAMCaptureCapabilities *)v6 resolvedVideoConfigurationForMode:1 device:0 videoEncodingBehavior:v42 videoConfiguration:videoConfiguration outputToExternalStorage:0 prefersHDR10BitVideo:v43 frontRearSimultaneousVideoEnabled:v233];
  slomoConfiguration = [preferencesCopy slomoConfiguration];
  LOBYTE(v234) = [preferencesCopy shouldEnableFrontRearSimultaneousVideo];
  v47 = [(CAMCaptureCapabilities *)v6 resolvedVideoConfigurationForMode:2 device:0 videoEncodingBehavior:v42 videoConfiguration:slomoConfiguration outputToExternalStorage:0 prefersHDR10BitVideo:v43 frontRearSimultaneousVideoEnabled:v234];
  if (v45 > 9999)
  {
    v49 = @"ImagePickerVGA";
    v50 = @"ImagePickeriFrame540p";
    if (v45 != 10005)
    {
      v50 = 0;
    }

    if (v45 == 10004)
    {
      v51 = @"ImagePickeriFrame720p";
    }

    else
    {
      v51 = v50;
    }

    if (v45 != 10003)
    {
      v49 = v51;
    }

    v52 = @"ImagePickerMedium";
    v53 = @"ImagePickerLow";
    if (v45 != 10002)
    {
      v53 = 0;
    }

    if (v45 != 10001)
    {
      v52 = v53;
    }

    if (v45 == 10000)
    {
      v54 = @"ImagePickerHigh";
    }

    else
    {
      v54 = v52;
    }

    if (v45 <= 10002)
    {
      v48 = v54;
    }

    else
    {
      v48 = v49;
    }
  }

  else
  {
    switch(v45)
    {
      case 0:
        v48 = @"Auto";
        break;
      case 1:
        v48 = @"1080p60";
        break;
      case 2:
        v48 = @"720p120";
        break;
      case 3:
        v48 = @"720p240";
        break;
      case 4:
        v48 = @"1080p120";
        break;
      case 5:
        v48 = @"4k30";
        break;
      case 6:
        v48 = @"720p30";
        break;
      case 7:
        v48 = @"1080p30";
        break;
      case 8:
        v48 = @"1080p240";
        break;
      case 9:
        v48 = @"4k60";
        break;
      case 10:
        v48 = @"4k24";
        break;
      case 11:
        v48 = @"1080p25";
        break;
      case 12:
        v48 = @"4k25";
        break;
      case 13:
        v48 = @"4k120";
        break;
      case 14:
        v48 = @"4k100";
        break;
      default:
        v48 = 0;
        break;
    }
  }

  _eventMap11 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [_eventMap11 setObject:v48 forKeyedSubscript:@"VideoConfiguration"];

  if (v47 > 9999)
  {
    v58 = @"ImagePickerVGA";
    v59 = @"ImagePickeriFrame540p";
    if (v47 != 10005)
    {
      v59 = 0;
    }

    if (v47 == 10004)
    {
      v60 = @"ImagePickeriFrame720p";
    }

    else
    {
      v60 = v59;
    }

    if (v47 != 10003)
    {
      v58 = v60;
    }

    v61 = @"ImagePickerMedium";
    v62 = @"ImagePickerLow";
    if (v47 != 10002)
    {
      v62 = 0;
    }

    if (v47 != 10001)
    {
      v61 = v62;
    }

    if (v47 == 10000)
    {
      v63 = @"ImagePickerHigh";
    }

    else
    {
      v63 = v61;
    }

    if (v47 <= 10002)
    {
      v57 = v63;
    }

    else
    {
      v57 = v58;
    }

    v56 = 0x1E696A000uLL;
  }

  else
  {
    v56 = 0x1E696A000;
    switch(v47)
    {
      case 0:
        v57 = @"Auto";
        break;
      case 1:
        v57 = @"1080p60";
        break;
      case 2:
        v57 = @"720p120";
        break;
      case 3:
        v57 = @"720p240";
        break;
      case 4:
        v57 = @"1080p120";
        break;
      case 5:
        v57 = @"4k30";
        break;
      case 6:
        v57 = @"720p30";
        break;
      case 7:
        v57 = @"1080p30";
        break;
      case 8:
        v57 = @"1080p240";
        break;
      case 9:
        v57 = @"4k60";
        break;
      case 10:
        v57 = @"4k24";
        break;
      case 11:
        v57 = @"1080p25";
        break;
      case 12:
        v57 = @"4k25";
        break;
      case 13:
        v57 = @"4k120";
        break;
      case 14:
        v57 = @"4k100";
        break;
      default:
        v57 = 0;
        break;
    }
  }

  _eventMap12 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [_eventMap12 setObject:v57 forKeyedSubscript:@"SlomoConfiguration"];

  if ([preferencesCopy usingMostCompatibleEncoding] && -[CAMCaptureCapabilities isHEVCEncodingSupported](v6, "isHEVCEncodingSupported"))
  {
    v65 = [*(v56 + 3480) numberWithBool:{objc_msgSend(preferencesCopy, "didConfirmVideoMostCompatible")}];
    _eventMap13 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap13 setObject:v65 forKeyedSubscript:@"VideoMostCompatible"];

    if ([preferencesCopy didConfirmSlomoMostCompatible])
    {
      v67 = @"On";
    }

    else
    {
      v67 = @"Off";
    }

    _eventMap14 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap14 setObject:v67 forKeyedSubscript:@"1080p240MostCompatible"];
  }

  if ([(CAMCaptureCapabilities *)v6 isProRawJpegXLSupported])
  {
    rawFileFormatBehavior = [preferencesCopy rawFileFormatBehavior];
    if (rawFileFormatBehavior <= 2)
    {
      v70 = off_1E76FAA70[rawFileFormatBehavior];
      _eventMap15 = [(CAMAnalyticsEvent *)v5 _eventMap];
      [_eventMap15 setObject:v70 forKeyedSubscript:@"RawFileFormatBehavior"];
    }
  }

  if (-[CAMCaptureCapabilities isHDR10BitVideoSupportedForVideoConfiguration:videoEncodingBehavior:](v6, "isHDR10BitVideoSupportedForVideoConfiguration:videoEncodingBehavior:", [preferencesCopy videoConfiguration], v42))
  {
    if ([preferencesCopy HDR10BitVideoEnabled])
    {
      v72 = @"On";
    }

    else
    {
      v72 = @"Off";
    }

    _eventMap16 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap16 setObject:v72 forKeyedSubscript:@"HDR10Video"];
  }

  if ([(CAMCaptureCapabilities *)v6 isVariableFramerateVideoSupported])
  {
    vFRMode = [preferencesCopy VFRMode];
    if (vFRMode > 2)
    {
      v75 = 0;
    }

    else
    {
      v75 = off_1E76FAA88[vFRMode];
    }

LABEL_115:
    _eventMap17 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap17 setObject:v75 forKeyedSubscript:@"AutoFPS"];

    goto LABEL_116;
  }

  if (-[CAMCaptureCapabilities isAutoLowLightVideoSupportedForMode:videoConfiguration:videoEncodingBehavior:](v6, "isAutoLowLightVideoSupportedForMode:videoConfiguration:videoEncodingBehavior:", 1, [preferencesCopy videoConfiguration], 1))
  {
    if ([preferencesCopy isLowLightVideoEnabled])
    {
      v75 = @"AutoLowLightVideoOn";
    }

    else
    {
      v75 = @"AutoLowLightVideoOff";
    }

    goto LABEL_115;
  }

LABEL_116:
  if ([(CAMCaptureCapabilities *)v6 isTelephotoSupported]|| [(CAMCaptureCapabilities *)v6 isSuperWideSupported])
  {
    if ([preferencesCopy shouldDisableCameraSwitchingDuringVideoRecordingForMode:1])
    {
      v77 = @"On";
    }

    else
    {
      v77 = @"Off";
    }

    _eventMap18 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap18 setObject:v77 forKeyedSubscript:@"LockCamera"];
  }

  if ([(CAMCaptureCapabilities *)v6 isWhiteBalanceLockingForVideoRecordingSupported])
  {
    if ([preferencesCopy shouldLockWhiteBalanceDuringVideoRecording])
    {
      v79 = @"On";
    }

    else
    {
      v79 = @"Off";
    }

    v80 = v79;
    _eventMap19 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap19 setObject:v80 forKeyedSubscript:@"LockWhiteBalance"];
  }

  if ([(CAMCaptureCapabilities *)v6 isStereoAudioRecordingSupported]|| [(CAMCaptureCapabilities *)v6 isCinematicAudioSupported])
  {
    v82 = [preferencesCopy preferredAudioConfiguration] - 1;
    if (v82 > 2)
    {
      v83 = 0;
    }

    else
    {
      v83 = off_1E76FAAA0[v82];
    }

    _eventMap20 = [(CAMAnalyticsEvent *)v5 _eventMap];
    v85 = _eventMap20;
    v86 = @"AudioConfiguration";
LABEL_133:
    [_eventMap20 setObject:v83 forKeyedSubscript:v86];

    goto LABEL_134;
  }

  if ([(CAMCaptureCapabilities *)v6 isStereoAudioRecordingSupported])
  {
    if ([preferencesCopy preferredAudioConfiguration] == 1)
    {
      v83 = @"Off";
    }

    else
    {
      v83 = @"On";
    }

    _eventMap20 = [(CAMAnalyticsEvent *)v5 _eventMap];
    v85 = _eventMap20;
    v86 = @"StereoAudio";
    goto LABEL_133;
  }

LABEL_134:
  if ([(CAMCaptureCapabilities *)v6 isMixAudioWithOthersSupported])
  {
    v87 = [*(v56 + 3480) numberWithBool:{objc_msgSend(preferencesCopy, "shouldMixAudioWithOthers")}];
    _eventMap21 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap21 setObject:v87 forKeyedSubscript:@"MixAudioWithOthers"];
  }

  if ([(CAMCaptureCapabilities *)v6 isWindRemovalSupported])
  {
    v89 = [*(v56 + 3480) numberWithBool:{objc_msgSend(preferencesCopy, "shouldEnableWindRemoval")}];
    _eventMap22 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap22 setObject:v89 forKeyedSubscript:@"WindRemoval"];
  }

  if ([preferencesCopy preserveCaptureMode])
  {
    v91 = @"On";
  }

  else
  {
    v91 = @"Off";
  }

  _eventMap23 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [_eventMap23 setObject:v91 forKeyedSubscript:@"PreserveCaptureMode"];

  if ([(CAMCaptureCapabilities *)v6 isPreserveCreativeControlsSupported])
  {
    if ([preferencesCopy preserveEffectFilter])
    {
      v93 = @"On";
    }

    else
    {
      v93 = @"Off";
    }

    _eventMap24 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap24 setObject:v93 forKeyedSubscript:@"PreserveCreativeControls"];
  }

  if ([(CAMCaptureCapabilities *)v6 isPreserveCreativeControlsSupported])
  {
    v95 = [*(v56 + 3480) numberWithBool:{objc_msgSend(preferencesCopy, "preserveSmartStyle")}];
    _eventMap25 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap25 setObject:v95 forKeyedSubscript:@"PreserveSmartStyle"];
  }

  if ([(CAMCaptureCapabilities *)v6 isExposureSliderSupported])
  {
    if ([preferencesCopy preserveExposure])
    {
      v97 = @"On";
    }

    else
    {
      v97 = @"Off";
    }

    _eventMap26 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap26 setObject:v97 forKeyedSubscript:@"PreserveExposure"];
  }

  if ([(CAMCaptureCapabilities *)v6 isLivePhotoSupported])
  {
    if ([preferencesCopy preserveLivePhoto])
    {
      v99 = @"On";
    }

    else
    {
      v99 = @"Off";
    }

    _eventMap27 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap27 setObject:v99 forKeyedSubscript:@"PreserveLivePhoto"];
  }

  if ([(CAMCaptureCapabilities *)v6 isLongPressVideoCaptureFromPhotoModeSupported])
  {
    if ([preferencesCopy shouldUseVolumeUpBurst])
    {
      v101 = @"On";
    }

    else
    {
      v101 = @"Off";
    }

    _eventMap28 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap28 setObject:v101 forKeyedSubscript:@"VolumeUpForBurst"];
  }

  if ([preferencesCopy QRBannersEnabledInSettings])
  {
    v103 = @"On";
  }

  else
  {
    v103 = @"Off";
  }

  _eventMap29 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [_eventMap29 setObject:v103 forKeyedSubscript:@"ScanQRCodes"];

  if ([(CAMCaptureCapabilities *)v6 isImageAnalysisSupported])
  {
    if ([preferencesCopy isImageAnalysisEnabled])
    {
      v105 = @"On";
    }

    else
    {
      v105 = @"Off";
    }

    _eventMap30 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap30 setObject:v105 forKeyedSubscript:@"LiveText"];
  }

  if ([preferencesCopy shouldShowGridView])
  {
    v107 = @"On";
  }

  else
  {
    v107 = @"Off";
  }

  _eventMap31 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [_eventMap31 setObject:v107 forKeyedSubscript:@"Grid"];

  v109 = [*(v56 + 3480) numberWithBool:{objc_msgSend(preferencesCopy, "shouldShowHorizonLevelView")}];
  _eventMap32 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [_eventMap32 setObject:v109 forKeyedSubscript:@"Level"];

  if ([(CAMCaptureCapabilities *)v6 isMirroredFrontCapturesSupported])
  {
    if ([preferencesCopy shouldMirrorFrontCameraCaptures])
    {
      v111 = @"On";
    }

    else
    {
      v111 = @"Off";
    }

    _eventMap33 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap33 setObject:v111 forKeyedSubscript:@"MirrorFrontCamera"];
  }

  if ([(CAMCaptureCapabilities *)v6 isSpatialOverCaptureSupported])
  {
    if ([preferencesCopy isOverCapturePreviewEnabled])
    {
      v113 = @"On";
    }

    else
    {
      v113 = @"Off";
    }

    _eventMap34 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap34 setObject:v113 forKeyedSubscript:@"OvercapturePreview"];
  }

  if ([(CAMCaptureCapabilities *)v6 semanticStylesSupport])
  {
    captureConfiguration = [preferencesCopy captureConfiguration];
    selectedSemanticStyleIndex = [captureConfiguration selectedSemanticStyleIndex];

    captureConfiguration2 = [preferencesCopy captureConfiguration];
    semanticStyles = [captureConfiguration2 semanticStyles];

    if (selectedSemanticStyleIndex >= [semanticStyles count])
    {
      v119 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        [(CAMAnalyticsPreferencesEvent *)semanticStyles initWithPreferences:selectedSemanticStyleIndex, v119];
      }
    }

    else
    {
      v119 = [semanticStyles objectAtIndexedSubscript:selectedSemanticStyleIndex];
      _eventMap35 = [(CAMAnalyticsEvent *)v5 _eventMap];
      analyticsDictionaryForPreferences = [v119 analyticsDictionaryForPreferences];
      [_eventMap35 addEntriesFromDictionary:analyticsDictionaryForPreferences];

      v56 = 0x1E696A000;
    }
  }

  if ([(CAMCaptureCapabilities *)v6 smartStylesSupported])
  {
    v122 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v123 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMSmartStylesOnboardingSettingsDidSelectAssets"])
    {
      [v123 addObject:@"SelectedAssets"];
    }

    if ([CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMSmartStylesOnboardingSettingsDidTapCustomize"])
    {
      [v123 addObject:@"Customize"];
    }

    if ([CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMSmartStylesOnboardingSettingsDidTapCancel"])
    {
      [v123 addObject:@"Cancel"];
    }

    if ([CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMSmartStylesOnboardingSettingsDidTapComplete"])
    {
      [v123 addObject:@"Complete"];
    }

    if ([CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMSmartStylesOnboardingCameraAppDidDismissForAction"])
    {
      [v122 addObject:@"DismissForAction"];
    }

    if ([CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMSmartStylesOnboardingCameraAppDidTapSetUpLater"])
    {
      [v122 addObject:@"SetUpLater"];
    }

    if ([CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMSmartStylesOnboardingCameraAppDidTapChooseStyle"])
    {
      [v122 addObject:@"ChooseStyle"];
    }

    if ([CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMSmartStylesOnboardingCameraAppDidSelectAssets"])
    {
      [v122 addObject:@"SelectedAssets"];
    }

    if ([CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMSmartStylesOnboardingCameraAppDidTapCustomize"])
    {
      [v122 addObject:@"Customize"];
    }

    if ([CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMSmartStylesOnboardingCameraAppDidTapCancel"])
    {
      [v122 addObject:@"Cancel"];
    }

    if ([CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMSmartStylesOnboardingCameraAppDidTapComplete"])
    {
      [v122 addObject:@"Complete"];
    }

    if ([v122 count])
    {
      v124 = [v122 componentsJoinedByString:{@", "}];
      _eventMap36 = [(CAMAnalyticsEvent *)v5 _eventMap];
      [_eventMap36 setObject:v124 forKeyedSubscript:@"SmartStylesSetup"];
    }

    if ([v123 count])
    {
      v126 = [v123 componentsJoinedByString:{@", "}];
      _eventMap37 = [(CAMAnalyticsEvent *)v5 _eventMap];
      [_eventMap37 setObject:v126 forKeyedSubscript:@"SmartStylesSettingsSetup"];
    }

    v128 = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMSmartStylesTipWasPresented"];
    v129 = [MEMORY[0x1E696AD98] numberWithBool:v128];
    _eventMap38 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap38 setObject:v129 forKeyedSubscript:@"SmartStylesTipPresented"];

    v56 = 0x1E696A000uLL;
  }

  if ([(CAMCaptureCapabilities *)v6 semanticDevelopmentSupported])
  {
    if ([preferencesCopy semanticDevelopmentEnabled])
    {
      v131 = @"On";
    }

    else
    {
      v131 = @"Off";
    }

    _eventMap39 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap39 setObject:v131 forKeyedSubscript:@"SemanticDevelopment"];
  }

  if ([(CAMCaptureCapabilities *)v6 responsiveShutterSupported])
  {
    if ([preferencesCopy responsiveShutterEnabled])
    {
      v133 = @"On";
    }

    else
    {
      v133 = @"Off";
    }

    _eventMap40 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap40 setObject:v133 forKeyedSubscript:@"DynamicShutter"];
  }

  if ([(CAMCaptureCapabilities *)v6 contentAwareDistortionCorrectionSupported])
  {
    if ([preferencesCopy shouldUseContentAwareDistortionCorrection])
    {
      v135 = @"On";
    }

    else
    {
      v135 = @"Off";
    }

    _eventMap41 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap41 setObject:v135 forKeyedSubscript:@"LensCorrection"];
  }

  if ([(CAMCaptureCapabilities *)v6 isSuperWideAutoMacroSupported])
  {
    if ([preferencesCopy isSuperWideAutoMacroControlAllowed])
    {
      v137 = @"On";
    }

    else
    {
      v137 = @"Off";
    }

    _eventMap42 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap42 setObject:v137 forKeyedSubscript:@"AutoMacro"];

    if ([preferencesCopy preserveSuperWideAutoMacro])
    {
      v139 = @"On";
    }

    else
    {
      v139 = @"Off";
    }

    _eventMap43 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap43 setObject:v139 forKeyedSubscript:@"PreserveAutoMacro"];
  }

  if (-[CAMCaptureCapabilities enhancedRAWResolutionSupported](v6, "enhancedRAWResolutionSupported") && [preferencesCopy rawControlEnabled])
  {
    v141 = *(v56 + 3480);
    v142 = [preferencesCopy maximumRAWPhotoResolution] - 1;
    if (v142 > 2)
    {
      v143 = 0;
    }

    else
    {
      v143 = qword_1A3A688E8[v142];
    }

    v144 = [v141 numberWithInteger:v143];
    _eventMap44 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap44 setObject:v144 forKeyedSubscript:@"RAWResolution"];
  }

  if ([(CAMCaptureCapabilities *)v6 isPhotoResolutionSupported:2 forPhotoEncoding:1])
  {
    v146 = *(v56 + 3480);
    v147 = [preferencesCopy preferredHEICPhotoResolutionForDevicePosition:0];
    v148 = 0;
    if ((v147 - 1) <= 2)
    {
      v148 = qword_1A3A688E8[v147 - 1];
    }

    v149 = [v146 numberWithInteger:v148];
    _eventMap45 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap45 setObject:v149 forKeyedSubscript:@"BackPreferredPhotoResolution"];
  }

  if ([(CAMCaptureCapabilities *)v6 isHDRSettingAllowed])
  {
    isModernHDRSupported = [(CAMCaptureCapabilities *)v6 isModernHDRSupported];
    isSmartHDRSupported = [(CAMCaptureCapabilities *)v6 isSmartHDRSupported];
    isHDREV0CaptureSupported = [(CAMCaptureCapabilities *)v6 isHDREV0CaptureSupported];
    if (isModernHDRSupported || isSmartHDRSupported)
    {
      if ([preferencesCopy shouldUseModernHDRBehavior])
      {
        v154 = @"On";
      }

      else
      {
        v154 = @"Off";
      }

      _eventMap46 = [(CAMAnalyticsEvent *)v5 _eventMap];
      [_eventMap46 setObject:v154 forKeyedSubscript:@"SmartHDR"];
    }

    if (isHDREV0CaptureSupported)
    {
      if ([preferencesCopy shouldCaptureHDREV0])
      {
        v156 = @"On";
      }

      else
      {
        v156 = @"Off";
      }

      _eventMap47 = [(CAMAnalyticsEvent *)v5 _eventMap];
      [_eventMap47 setObject:v156 forKeyedSubscript:@"HDRKeepNormalPhoto"];
    }
  }

  if ([(CAMCaptureCapabilities *)v6 isEnhancedStabilizationSupported])
  {
    if ([preferencesCopy enhancedVideoStabilization])
    {
      v158 = @"On";
    }

    else
    {
      v158 = @"Off";
    }

    _eventMap48 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap48 setObject:v158 forKeyedSubscript:@"EnhancedVideoStabilization"];
  }

  if ([(CAMCaptureCapabilities *)v6 isActionModeControlSupported])
  {
    if ([preferencesCopy actionModeLowLightEnabled])
    {
      v160 = @"On";
    }

    else
    {
      v160 = @"Off";
    }

    _eventMap49 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap49 setObject:v160 forKeyedSubscript:@"ActionModeLowLight"];
  }

  if ([CAMUserPreferences isSharedLibrarySupportedAndEnabledForCapabilities:v6])
  {
    sharedLibraryEnabled = [preferencesCopy sharedLibraryEnabled];
    _eventMap50 = [(CAMAnalyticsEvent *)v5 _eventMap];
    v164 = _eventMap50;
    if (sharedLibraryEnabled)
    {
      v165 = @"On";
      [_eventMap50 setObject:@"On" forKeyedSubscript:@"SharedLibraryShareFromCamera"];

      sharedLibraryAutoBehaviorEnabled = [preferencesCopy sharedLibraryAutoBehaviorEnabled];
      _eventMap51 = [(CAMAnalyticsEvent *)v5 _eventMap];
      v164 = _eventMap51;
      if (sharedLibraryAutoBehaviorEnabled)
      {
        [_eventMap51 setObject:@"Automatic" forKeyedSubscript:@"SharedLibraryMode"];

        if (![preferencesCopy shareWhenAtHomeEnabled])
        {
          v165 = @"Off";
        }

        _eventMap52 = [(CAMAnalyticsEvent *)v5 _eventMap];
        v164 = _eventMap52;
        v169 = @"SharedLibraryWhenAtHome";
        v170 = v165;
        goto LABEL_287;
      }

      v170 = @"Manual";
      v169 = @"SharedLibraryMode";
    }

    else
    {
      v170 = @"Off";
      v169 = @"SharedLibraryShareFromCamera";
    }

    _eventMap52 = v164;
LABEL_287:
    [_eventMap52 setObject:v170 forKeyedSubscript:v169];
  }

  if (-[CAMCaptureCapabilities isCustomLensSupportedForPhotoResolution:](v6, "isCustomLensSupportedForPhotoResolution:", [preferencesCopy preferredHEICPhotoResolutionForDevicePosition:0]))
  {
    customLensGroup = [preferencesCopy customLensGroup];
    v172 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v241 = 0u;
    v242 = 0u;
    v243 = 0u;
    v244 = 0u;
    v173 = customLensGroup;
    v174 = [v173 countByEnumeratingWithState:&v241 objects:v247 count:16];
    if (v174)
    {
      v175 = v174;
      v176 = *v242;
      do
      {
        for (i = 0; i != v175; ++i)
        {
          if (*v242 != v176)
          {
            objc_enumerationMutation(v173);
          }

          integerValue = [*(*(&v241 + 1) + 8 * i) integerValue];
          if (integerValue)
          {
            v179 = [(CAMAnalyticsPreferencesEvent *)v5 _focalLengthStringForCustomLens:integerValue];
            [v172 addObject:v179];
          }
        }

        v175 = [v173 countByEnumeratingWithState:&v241 objects:v247 count:16];
      }

      while (v175);
    }

    if ([v172 count])
    {
      v180 = [v172 componentsJoinedByString:{@", "}];
      _eventMap53 = [(CAMAnalyticsEvent *)v5 _eventMap];
      [_eventMap53 setObject:v180 forKeyedSubscript:@"CustomLenses"];

      _eventMap55 = -[CAMAnalyticsPreferencesEvent _focalLengthStringForCustomLens:](v5, "_focalLengthStringForCustomLens:", [preferencesCopy defaultCustomLens]);
      _eventMap54 = [(CAMAnalyticsEvent *)v5 _eventMap];
      [_eventMap54 setObject:_eventMap55 forKeyedSubscript:@"DefaultCustomLens"];
    }

    else
    {
      _eventMap55 = [(CAMAnalyticsEvent *)v5 _eventMap];
      [_eventMap55 setObject:@"None" forKeyedSubscript:@"CustomLenses"];
    }

    v56 = 0x1E696A000uLL;
  }

  if ([(CAMCaptureCapabilities *)v6 photoModeDepthSuggestionSupported])
  {
    v184 = [*(v56 + 3480) numberWithBool:{objc_msgSend(preferencesCopy, "shouldUseDepthSuggestionInPhotoMode")}];
    _eventMap56 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap56 setObject:v184 forKeyedSubscript:@"PortraitInPhotoControl"];
  }

  if (![(CAMCaptureCapabilities *)v6 isCameraButtonSupported])
  {
    goto LABEL_374;
  }

  v186 = [*(v56 + 3480) numberWithInteger:{-[CAMAnalyticsPreferencesEvent _clickCountLaunchGesture](v5, "_clickCountLaunchGesture")}];
  _eventMap57 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [_eventMap57 setObject:v186 forKeyedSubscript:@"ClickCountLaunchGesture"];

  v188 = [*(v56 + 3480) numberWithBool:{-[CAMAnalyticsPreferencesEvent _hidesControlsForCameraButton](v5, "_hidesControlsForCameraButton")}];
  _eventMap58 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [_eventMap58 setObject:v188 forKeyedSubscript:@"CameraControlQuietUIToggle"];

  v190 = [*(v56 + 3480) numberWithBool:{-[CAMAnalyticsPreferencesEvent _lockToFocus](v5, "_lockToFocus")}];
  _eventMap59 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [_eventMap59 setObject:v190 forKeyedSubscript:@"CameraControlLockToFocus"];

  v192 = [*(v56 + 3480) numberWithBool:{-[CAMAnalyticsPreferencesEvent _visualIntelligenceCameraControlEnabled](v5, "_visualIntelligenceCameraControlEnabled")}];
  _eventMap60 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [_eventMap60 setObject:v192 forKeyedSubscript:@"VisualIntelligencePressAndHoldToggle"];

  _selectedOverlayControls = [(CAMAnalyticsPreferencesEvent *)v5 _selectedOverlayControls];
  _eventMap61 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [_eventMap61 setObject:_selectedOverlayControls forKeyedSubscript:@"CameraControlSelectedOverlayControls"];

  v196 = *(v56 + 3480);
  keyExistsAndHasValidFormat = 0;
  v197 = CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceCameraAdjustmentsEnabled", @"com.apple.camera", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    v198 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v198, OS_LOG_TYPE_DEFAULT, "Inspecting defaults for Camera Control usage history", buf, 2u);
    }

    v199 = CFPreferencesCopyAppValue(@"systemOverlay.swipeToPresentEnabled", @"com.apple.camera");
    v200 = CFPreferencesCopyAppValue(@"systemOverlay.halfPressGestureEnabled", @"com.apple.camera");
    bOOLValue = [v199 BOOLValue];
    bOOLValue2 = [v200 BOOLValue];
    if (v199 && (bOOLValue & 1) == 0 && v200 && (bOOLValue2 & 1) == 0)
    {
      v203 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v203, OS_LOG_TYPE_DEFAULT, "Disabling camera adjustments by default due to disabled gestures", buf, 2u);
      }

      v197 = 0;
      goto LABEL_372;
    }

    if ((bOOLValue | bOOLValue2))
    {
      v203 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v203, OS_LOG_TYPE_DEFAULT, "Enabling camera adjustments by default due to explicitly enabled gestures", buf, 2u);
      }

      v197 = 1;
      goto LABEL_372;
    }

    v203 = CFPreferencesCopyAppValue(@"systemOverlay.hidesClientControls", @"com.apple.camera");
    v204 = CFPreferencesCopyAppValue(@"systemOverlay.menuToggleMaxIntervalMilliseconds", @"com.apple.camera");
    v205 = CFPreferencesCopyAppValue(@"CameraButtonSensitivity", @"com.apple.Accessibility");
    v239 = v205;
    v240 = v204;
    if (v203 || v205 || v204)
    {
      v209 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3640000, v209, OS_LOG_TYPE_DEFAULT, "Enabling camera adjustments by default due to behavior defaults written", buf, 2u);
      }

      v197 = 1;
      goto LABEL_371;
    }

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    logb = [bundleIdentifier isEqualToString:@"com.apple.CameraOverlayAngel"];

    if (logb)
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v209 = [standardUserDefaults objectForKey:@"systemOverlay.lastUsedControl"];
    }

    else
    {
      *buf = 0;
      v210 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:@"com.apple.CameraOverlayAngel" allowPlaceholder:0 error:buf];
      v211 = *buf;
      v235 = v210;
      log = v211;
      if (!v210 || v211)
      {
        path = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(path, OS_LOG_TYPE_ERROR))
        {
          [(CAMAnalyticsPreferencesEvent *)log initWithPreferences:path];
        }

        v214 = 0;
      }

      else
      {
        dataContainerURL = [v210 dataContainerURL];
        path = [dataContainerURL path];

        v214 = _CFPreferencesCopyAppValueWithContainer();
      }

      v209 = v214;
      standardUserDefaults = log;
    }

    v197 = v209 != 0;
    loga = os_log_create("com.apple.camera", "Camera");
    v215 = os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT);
    if (v209)
    {
      if (v215)
      {
        *buf = 138412290;
        *&buf[4] = v209;
        v216 = "Enabling camera adjustments by default due to last-used control data: %@";
        v217 = loga;
        v218 = 12;
LABEL_369:
        _os_log_impl(&dword_1A3640000, v217, OS_LOG_TYPE_DEFAULT, v216, buf, v218);
      }
    }

    else if (v215)
    {
      *buf = 0;
      v216 = "Disabling camera adjustments by default due to lack of usage history";
      v217 = loga;
      v218 = 2;
      goto LABEL_369;
    }

LABEL_371:
LABEL_372:

    v56 = 0x1E696A000uLL;
  }

  v219 = [v196 numberWithBool:v197];
  _eventMap62 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [_eventMap62 setObject:v219 forKeyedSubscript:@"CameraControlAdjustmentsEnabled"];

LABEL_374:
  v221 = [*(v56 + 3480) numberWithBool:{objc_msgSend(preferencesCopy, "saveMessagesCapturesPhotoLibrary")}];
  _eventMap63 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [_eventMap63 setObject:v221 forKeyedSubscript:@"SaveMessagesCapturesPhotoLibrary"];

  v223 = [*(v56 + 3480) numberWithBool:{objc_msgSend(preferencesCopy, "areSmudgeNotificationsEnabled")}];
  _eventMap64 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [_eventMap64 setObject:v223 forKeyedSubscript:@"SmudgedCameraNotifications"];

  v225 = [*(v56 + 3480) numberWithBool:{objc_msgSend(preferencesCopy, "preservePreferredDrawerControl")}];
  _eventMap65 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [_eventMap65 setObject:v225 forKeyedSubscript:@"PreserveLastUsedControl"];

  if ([(CAMCaptureCapabilities *)v6 isSmartFramingSupported])
  {
    v227 = [*(v56 + 3480) numberWithBool:{objc_msgSend(preferencesCopy, "wantsSmartFramingAutoZoomDefault")}];
    _eventMap66 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap66 setObject:v227 forKeyedSubscript:@"SmartFramingAutoZoomEnabled"];

    v229 = [*(v56 + 3480) numberWithBool:{objc_msgSend(preferencesCopy, "wantsSmartFramingAutoRotationDefault")}];
    _eventMap67 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [_eventMap67 setObject:v229 forKeyedSubscript:@"SmartFramingAutoRotateEnabled"];
  }

  v231 = v5;

LABEL_377:
  return v5;
}

- (id)_focalLengthStringForCustomLens:(int64_t)lens
{
  _capabilities = [(CAMAnalyticsPreferencesEvent *)self _capabilities];
  v5 = [_capabilities effectiveFocalLengthForCustomLens:lens];

  v6 = 0;
  if (v5 <= 3)
  {
    v6 = qword_1A3A68900[v5];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%.fmm", v6];
}

- (int64_t)_clickCountLaunchGesture
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"SBCaptureButtonClickCount", @"com.apple.springboard", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 1;
  }

  return result;
}

- (BOOL)_visualIntelligenceCameraControlEnabled
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getAFPreferencesClass_softClass;
  v11 = getAFPreferencesClass_softClass;
  if (!getAFPreferencesClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getAFPreferencesClass_block_invoke;
    v7[3] = &unk_1E76F8100;
    v7[4] = &v8;
    __getAFPreferencesClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  sharedPreferences = [v2 sharedPreferences];
  visualIntelligenceCameraControlEnabled = [sharedPreferences visualIntelligenceCameraControlEnabled];

  return visualIntelligenceCameraControlEnabled;
}

- (id)_selectedOverlayControls
{
  v12[6] = *MEMORY[0x1E69E9840];
  v2 = CFPreferencesCopyAppValue(@"CAMUserPreferenceOverlayEnabledControls", @"com.apple.camera");
  keyExistsAndHasValidFormat = 0;
  v3 = 0;
  if (!CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceCameraControlsSelectionDidMigrate", @"com.apple.camera", &keyExistsAndHasValidFormat))
  {
    v11 = @"Cameras";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    v3 = [v2 isEqualToArray:v4];
  }

  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = CFPreferencesCopyAppValue(@"CAMUserPreferenceOverlayControlsOrder", @"com.apple.camera");
    if (!v6)
    {
      v12[0] = @"Exposure";
      v12[1] = @"Depth";
      v12[2] = @"Zoom";
      v12[3] = @"Cameras";
      v12[4] = @"Styles";
      v12[5] = @"Tone";
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:6];
    }

    v2 = v6;
  }

  if (!keyExistsAndHasValidFormat)
  {
    CFPreferencesSetAppValue(@"CAMUserPreferenceCameraControlsSelectionDidMigrate", MEMORY[0x1E695E118], @"com.apple.camera");
  }

  if ([v2 count])
  {
    v7 = [v2 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
    v8 = [v7 componentsJoinedByString:{@", "}];
  }

  else
  {
    v8 = @"None";
  }

  return v8;
}

- (void)initWithPreferences:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = [a1 count] - 1;
  _os_log_error_impl(&dword_1A3640000, a3, OS_LOG_TYPE_ERROR, "Selected semantic style index %ld is out of range 0-%ld", &v4, 0x16u);
}

- (void)initWithPreferences:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Could not find CameraOverlayAngel bundle record: %{public}@", &v2, 0xCu);
}

@end