@interface CAMAnalyticsPreferencesEvent
- (BOOL)_visualIntelligenceCameraControlEnabled;
- (CAMAnalyticsPreferencesEvent)initWithPreferences:(id)a3;
- (id)_focalLengthStringForCustomLens:(int64_t)a3;
- (id)_selectedOverlayControls;
- (int64_t)_clickCountLaunchGesture;
@end

@implementation CAMAnalyticsPreferencesEvent

- (CAMAnalyticsPreferencesEvent)initWithPreferences:(id)a3
{
  v249 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    if ([v4 usingMostCompatibleEncoding])
    {
      v7 = @"MostCompatible";
    }

    else
    {
      v7 = @"HighEfficiency";
    }

    v8 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v8 setObject:v7 forKeyedSubscript:@"Encoding"];
  }

  v9 = [(CAMCaptureCapabilities *)v6 isPhotoResolutionSupported:3 forPhotoEncoding:1];
  v10 = [(CAMCaptureCapabilities *)v6 isLinearDNGSupported];
  v11 = v10;
  if (!v9)
  {
    if (!v10)
    {
      v18 = 0;
      goto LABEL_28;
    }

    v17 = [v4 rawControlEnabled];
    v13 = [v4 preserveRAW];
    v18 = 0;
    if (v17)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v12 = [v4 photoFormatControlEnabled];
  v13 = [v4 preservePhotoResolution];
  if ((v11 & v12) == 1)
  {
    v14 = [v4 photoFormatControlSecondaryFormat];
    if (v14 > 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = off_1E76FAA38[v14];
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
    v17 = 1;
    goto LABEL_22;
  }

  v18 = 0;
  v17 = !v11 & v12;
  if ((v17 & 1) == 0)
  {
LABEL_15:
    v19 = @"Off";
    goto LABEL_23;
  }

LABEL_22:
  v19 = @"On";
LABEL_23:
  v21 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [v21 setObject:v19 forKeyedSubscript:@"PhotoFormatControl"];

  if (v17)
  {
    if (v13)
    {
      v22 = @"On";
    }

    else
    {
      v22 = @"Off";
    }

    v23 = v22;
    v24 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v24 setObject:v23 forKeyedSubscript:@"PreservePhotoFormatControl"];

    v25 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v25 setObject:v18 forKeyedSubscript:@"PhotoFormatControlDefault"];
  }

LABEL_28:
  if ([(CAMCaptureCapabilities *)v6 isLinearDNGSupported])
  {
    if ([v4 rawControlEnabled])
    {
      v26 = @"On";
    }

    else
    {
      v26 = @"Off";
    }

    v27 = v26;
    v28 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v28 setObject:v27 forKeyedSubscript:@"LinearDNG"];

    if ([v4 preserveRAW])
    {
      v29 = @"On";
    }

    else
    {
      v29 = @"Off";
    }

    v30 = v29;
    v31 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v31 setObject:v30 forKeyedSubscript:@"PreserveLinearDNG"];
  }

  if ([(CAMCaptureCapabilities *)v6 isProResVideoSupported])
  {
    v32 = [v4 isProResControlEnabled] ? @"On" : @"Off";
    v33 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v33 setObject:v32 forKeyedSubscript:@"ProRes"];

    v34 = [v4 preserveProRes] ? @"On" : @"Off";
    v35 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v35 setObject:v34 forKeyedSubscript:@"PreserveProRes"];

    if ([(CAMCaptureCapabilities *)v6 isProResLogColorSpaceSupported])
    {
      if ([v4 isProResControlEnabled] && objc_msgSend(v4, "allowExplicitProResColorSpace"))
      {
        v36 = [v4 explicitProResColorSpace];
        if (v36 > 3)
        {
          v37 = 0;
        }

        else
        {
          v37 = off_1E76FAA50[v36];
        }

        v38 = [(CAMAnalyticsEvent *)v5 _eventMap];
        [v38 setObject:v37 forKeyedSubscript:@"ExplicitProResColorSpace"];
      }
    }
  }

  if ([(CAMCaptureCapabilities *)v6 isPALVideoSupported])
  {
    v39 = [v4 isPALVideoEnabled];
    v40 = [MEMORY[0x1E696AD98] numberWithBool:v39];
    v41 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v41 setObject:v40 forKeyedSubscript:@"ShowPALFormats"];
  }

  v42 = [v4 usingMostCompatibleEncoding] ^ 1;
  v43 = [v4 prefersHDR10BitVideoForCapabilities:v6];
  v44 = [v4 videoConfiguration];
  LOBYTE(v233) = [v4 shouldEnableFrontRearSimultaneousVideo];
  v45 = [(CAMCaptureCapabilities *)v6 resolvedVideoConfigurationForMode:1 device:0 videoEncodingBehavior:v42 videoConfiguration:v44 outputToExternalStorage:0 prefersHDR10BitVideo:v43 frontRearSimultaneousVideoEnabled:v233];
  v46 = [v4 slomoConfiguration];
  LOBYTE(v234) = [v4 shouldEnableFrontRearSimultaneousVideo];
  v47 = [(CAMCaptureCapabilities *)v6 resolvedVideoConfigurationForMode:2 device:0 videoEncodingBehavior:v42 videoConfiguration:v46 outputToExternalStorage:0 prefersHDR10BitVideo:v43 frontRearSimultaneousVideoEnabled:v234];
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

  v55 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [v55 setObject:v48 forKeyedSubscript:@"VideoConfiguration"];

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

  v64 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [v64 setObject:v57 forKeyedSubscript:@"SlomoConfiguration"];

  if ([v4 usingMostCompatibleEncoding] && -[CAMCaptureCapabilities isHEVCEncodingSupported](v6, "isHEVCEncodingSupported"))
  {
    v65 = [*(v56 + 3480) numberWithBool:{objc_msgSend(v4, "didConfirmVideoMostCompatible")}];
    v66 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v66 setObject:v65 forKeyedSubscript:@"VideoMostCompatible"];

    if ([v4 didConfirmSlomoMostCompatible])
    {
      v67 = @"On";
    }

    else
    {
      v67 = @"Off";
    }

    v68 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v68 setObject:v67 forKeyedSubscript:@"1080p240MostCompatible"];
  }

  if ([(CAMCaptureCapabilities *)v6 isProRawJpegXLSupported])
  {
    v69 = [v4 rawFileFormatBehavior];
    if (v69 <= 2)
    {
      v70 = off_1E76FAA70[v69];
      v71 = [(CAMAnalyticsEvent *)v5 _eventMap];
      [v71 setObject:v70 forKeyedSubscript:@"RawFileFormatBehavior"];
    }
  }

  if (-[CAMCaptureCapabilities isHDR10BitVideoSupportedForVideoConfiguration:videoEncodingBehavior:](v6, "isHDR10BitVideoSupportedForVideoConfiguration:videoEncodingBehavior:", [v4 videoConfiguration], v42))
  {
    if ([v4 HDR10BitVideoEnabled])
    {
      v72 = @"On";
    }

    else
    {
      v72 = @"Off";
    }

    v73 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v73 setObject:v72 forKeyedSubscript:@"HDR10Video"];
  }

  if ([(CAMCaptureCapabilities *)v6 isVariableFramerateVideoSupported])
  {
    v74 = [v4 VFRMode];
    if (v74 > 2)
    {
      v75 = 0;
    }

    else
    {
      v75 = off_1E76FAA88[v74];
    }

LABEL_115:
    v76 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v76 setObject:v75 forKeyedSubscript:@"AutoFPS"];

    goto LABEL_116;
  }

  if (-[CAMCaptureCapabilities isAutoLowLightVideoSupportedForMode:videoConfiguration:videoEncodingBehavior:](v6, "isAutoLowLightVideoSupportedForMode:videoConfiguration:videoEncodingBehavior:", 1, [v4 videoConfiguration], 1))
  {
    if ([v4 isLowLightVideoEnabled])
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
    if ([v4 shouldDisableCameraSwitchingDuringVideoRecordingForMode:1])
    {
      v77 = @"On";
    }

    else
    {
      v77 = @"Off";
    }

    v78 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v78 setObject:v77 forKeyedSubscript:@"LockCamera"];
  }

  if ([(CAMCaptureCapabilities *)v6 isWhiteBalanceLockingForVideoRecordingSupported])
  {
    if ([v4 shouldLockWhiteBalanceDuringVideoRecording])
    {
      v79 = @"On";
    }

    else
    {
      v79 = @"Off";
    }

    v80 = v79;
    v81 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v81 setObject:v80 forKeyedSubscript:@"LockWhiteBalance"];
  }

  if ([(CAMCaptureCapabilities *)v6 isStereoAudioRecordingSupported]|| [(CAMCaptureCapabilities *)v6 isCinematicAudioSupported])
  {
    v82 = [v4 preferredAudioConfiguration] - 1;
    if (v82 > 2)
    {
      v83 = 0;
    }

    else
    {
      v83 = off_1E76FAAA0[v82];
    }

    v84 = [(CAMAnalyticsEvent *)v5 _eventMap];
    v85 = v84;
    v86 = @"AudioConfiguration";
LABEL_133:
    [v84 setObject:v83 forKeyedSubscript:v86];

    goto LABEL_134;
  }

  if ([(CAMCaptureCapabilities *)v6 isStereoAudioRecordingSupported])
  {
    if ([v4 preferredAudioConfiguration] == 1)
    {
      v83 = @"Off";
    }

    else
    {
      v83 = @"On";
    }

    v84 = [(CAMAnalyticsEvent *)v5 _eventMap];
    v85 = v84;
    v86 = @"StereoAudio";
    goto LABEL_133;
  }

LABEL_134:
  if ([(CAMCaptureCapabilities *)v6 isMixAudioWithOthersSupported])
  {
    v87 = [*(v56 + 3480) numberWithBool:{objc_msgSend(v4, "shouldMixAudioWithOthers")}];
    v88 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v88 setObject:v87 forKeyedSubscript:@"MixAudioWithOthers"];
  }

  if ([(CAMCaptureCapabilities *)v6 isWindRemovalSupported])
  {
    v89 = [*(v56 + 3480) numberWithBool:{objc_msgSend(v4, "shouldEnableWindRemoval")}];
    v90 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v90 setObject:v89 forKeyedSubscript:@"WindRemoval"];
  }

  if ([v4 preserveCaptureMode])
  {
    v91 = @"On";
  }

  else
  {
    v91 = @"Off";
  }

  v92 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [v92 setObject:v91 forKeyedSubscript:@"PreserveCaptureMode"];

  if ([(CAMCaptureCapabilities *)v6 isPreserveCreativeControlsSupported])
  {
    if ([v4 preserveEffectFilter])
    {
      v93 = @"On";
    }

    else
    {
      v93 = @"Off";
    }

    v94 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v94 setObject:v93 forKeyedSubscript:@"PreserveCreativeControls"];
  }

  if ([(CAMCaptureCapabilities *)v6 isPreserveCreativeControlsSupported])
  {
    v95 = [*(v56 + 3480) numberWithBool:{objc_msgSend(v4, "preserveSmartStyle")}];
    v96 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v96 setObject:v95 forKeyedSubscript:@"PreserveSmartStyle"];
  }

  if ([(CAMCaptureCapabilities *)v6 isExposureSliderSupported])
  {
    if ([v4 preserveExposure])
    {
      v97 = @"On";
    }

    else
    {
      v97 = @"Off";
    }

    v98 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v98 setObject:v97 forKeyedSubscript:@"PreserveExposure"];
  }

  if ([(CAMCaptureCapabilities *)v6 isLivePhotoSupported])
  {
    if ([v4 preserveLivePhoto])
    {
      v99 = @"On";
    }

    else
    {
      v99 = @"Off";
    }

    v100 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v100 setObject:v99 forKeyedSubscript:@"PreserveLivePhoto"];
  }

  if ([(CAMCaptureCapabilities *)v6 isLongPressVideoCaptureFromPhotoModeSupported])
  {
    if ([v4 shouldUseVolumeUpBurst])
    {
      v101 = @"On";
    }

    else
    {
      v101 = @"Off";
    }

    v102 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v102 setObject:v101 forKeyedSubscript:@"VolumeUpForBurst"];
  }

  if ([v4 QRBannersEnabledInSettings])
  {
    v103 = @"On";
  }

  else
  {
    v103 = @"Off";
  }

  v104 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [v104 setObject:v103 forKeyedSubscript:@"ScanQRCodes"];

  if ([(CAMCaptureCapabilities *)v6 isImageAnalysisSupported])
  {
    if ([v4 isImageAnalysisEnabled])
    {
      v105 = @"On";
    }

    else
    {
      v105 = @"Off";
    }

    v106 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v106 setObject:v105 forKeyedSubscript:@"LiveText"];
  }

  if ([v4 shouldShowGridView])
  {
    v107 = @"On";
  }

  else
  {
    v107 = @"Off";
  }

  v108 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [v108 setObject:v107 forKeyedSubscript:@"Grid"];

  v109 = [*(v56 + 3480) numberWithBool:{objc_msgSend(v4, "shouldShowHorizonLevelView")}];
  v110 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [v110 setObject:v109 forKeyedSubscript:@"Level"];

  if ([(CAMCaptureCapabilities *)v6 isMirroredFrontCapturesSupported])
  {
    if ([v4 shouldMirrorFrontCameraCaptures])
    {
      v111 = @"On";
    }

    else
    {
      v111 = @"Off";
    }

    v112 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v112 setObject:v111 forKeyedSubscript:@"MirrorFrontCamera"];
  }

  if ([(CAMCaptureCapabilities *)v6 isSpatialOverCaptureSupported])
  {
    if ([v4 isOverCapturePreviewEnabled])
    {
      v113 = @"On";
    }

    else
    {
      v113 = @"Off";
    }

    v114 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v114 setObject:v113 forKeyedSubscript:@"OvercapturePreview"];
  }

  if ([(CAMCaptureCapabilities *)v6 semanticStylesSupport])
  {
    v115 = [v4 captureConfiguration];
    v116 = [v115 selectedSemanticStyleIndex];

    v117 = [v4 captureConfiguration];
    v118 = [v117 semanticStyles];

    if (v116 >= [v118 count])
    {
      v119 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        [(CAMAnalyticsPreferencesEvent *)v118 initWithPreferences:v116, v119];
      }
    }

    else
    {
      v119 = [v118 objectAtIndexedSubscript:v116];
      v120 = [(CAMAnalyticsEvent *)v5 _eventMap];
      v121 = [v119 analyticsDictionaryForPreferences];
      [v120 addEntriesFromDictionary:v121];

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
      v125 = [(CAMAnalyticsEvent *)v5 _eventMap];
      [v125 setObject:v124 forKeyedSubscript:@"SmartStylesSetup"];
    }

    if ([v123 count])
    {
      v126 = [v123 componentsJoinedByString:{@", "}];
      v127 = [(CAMAnalyticsEvent *)v5 _eventMap];
      [v127 setObject:v126 forKeyedSubscript:@"SmartStylesSettingsSetup"];
    }

    v128 = [CAMPreferencesUtilities BOOLInCameraDomainForKey:@"CAMSmartStylesTipWasPresented"];
    v129 = [MEMORY[0x1E696AD98] numberWithBool:v128];
    v130 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v130 setObject:v129 forKeyedSubscript:@"SmartStylesTipPresented"];

    v56 = 0x1E696A000uLL;
  }

  if ([(CAMCaptureCapabilities *)v6 semanticDevelopmentSupported])
  {
    if ([v4 semanticDevelopmentEnabled])
    {
      v131 = @"On";
    }

    else
    {
      v131 = @"Off";
    }

    v132 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v132 setObject:v131 forKeyedSubscript:@"SemanticDevelopment"];
  }

  if ([(CAMCaptureCapabilities *)v6 responsiveShutterSupported])
  {
    if ([v4 responsiveShutterEnabled])
    {
      v133 = @"On";
    }

    else
    {
      v133 = @"Off";
    }

    v134 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v134 setObject:v133 forKeyedSubscript:@"DynamicShutter"];
  }

  if ([(CAMCaptureCapabilities *)v6 contentAwareDistortionCorrectionSupported])
  {
    if ([v4 shouldUseContentAwareDistortionCorrection])
    {
      v135 = @"On";
    }

    else
    {
      v135 = @"Off";
    }

    v136 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v136 setObject:v135 forKeyedSubscript:@"LensCorrection"];
  }

  if ([(CAMCaptureCapabilities *)v6 isSuperWideAutoMacroSupported])
  {
    if ([v4 isSuperWideAutoMacroControlAllowed])
    {
      v137 = @"On";
    }

    else
    {
      v137 = @"Off";
    }

    v138 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v138 setObject:v137 forKeyedSubscript:@"AutoMacro"];

    if ([v4 preserveSuperWideAutoMacro])
    {
      v139 = @"On";
    }

    else
    {
      v139 = @"Off";
    }

    v140 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v140 setObject:v139 forKeyedSubscript:@"PreserveAutoMacro"];
  }

  if (-[CAMCaptureCapabilities enhancedRAWResolutionSupported](v6, "enhancedRAWResolutionSupported") && [v4 rawControlEnabled])
  {
    v141 = *(v56 + 3480);
    v142 = [v4 maximumRAWPhotoResolution] - 1;
    if (v142 > 2)
    {
      v143 = 0;
    }

    else
    {
      v143 = qword_1A3A688E8[v142];
    }

    v144 = [v141 numberWithInteger:v143];
    v145 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v145 setObject:v144 forKeyedSubscript:@"RAWResolution"];
  }

  if ([(CAMCaptureCapabilities *)v6 isPhotoResolutionSupported:2 forPhotoEncoding:1])
  {
    v146 = *(v56 + 3480);
    v147 = [v4 preferredHEICPhotoResolutionForDevicePosition:0];
    v148 = 0;
    if ((v147 - 1) <= 2)
    {
      v148 = qword_1A3A688E8[v147 - 1];
    }

    v149 = [v146 numberWithInteger:v148];
    v150 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v150 setObject:v149 forKeyedSubscript:@"BackPreferredPhotoResolution"];
  }

  if ([(CAMCaptureCapabilities *)v6 isHDRSettingAllowed])
  {
    v151 = [(CAMCaptureCapabilities *)v6 isModernHDRSupported];
    v152 = [(CAMCaptureCapabilities *)v6 isSmartHDRSupported];
    v153 = [(CAMCaptureCapabilities *)v6 isHDREV0CaptureSupported];
    if (v151 || v152)
    {
      if ([v4 shouldUseModernHDRBehavior])
      {
        v154 = @"On";
      }

      else
      {
        v154 = @"Off";
      }

      v155 = [(CAMAnalyticsEvent *)v5 _eventMap];
      [v155 setObject:v154 forKeyedSubscript:@"SmartHDR"];
    }

    if (v153)
    {
      if ([v4 shouldCaptureHDREV0])
      {
        v156 = @"On";
      }

      else
      {
        v156 = @"Off";
      }

      v157 = [(CAMAnalyticsEvent *)v5 _eventMap];
      [v157 setObject:v156 forKeyedSubscript:@"HDRKeepNormalPhoto"];
    }
  }

  if ([(CAMCaptureCapabilities *)v6 isEnhancedStabilizationSupported])
  {
    if ([v4 enhancedVideoStabilization])
    {
      v158 = @"On";
    }

    else
    {
      v158 = @"Off";
    }

    v159 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v159 setObject:v158 forKeyedSubscript:@"EnhancedVideoStabilization"];
  }

  if ([(CAMCaptureCapabilities *)v6 isActionModeControlSupported])
  {
    if ([v4 actionModeLowLightEnabled])
    {
      v160 = @"On";
    }

    else
    {
      v160 = @"Off";
    }

    v161 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v161 setObject:v160 forKeyedSubscript:@"ActionModeLowLight"];
  }

  if ([CAMUserPreferences isSharedLibrarySupportedAndEnabledForCapabilities:v6])
  {
    v162 = [v4 sharedLibraryEnabled];
    v163 = [(CAMAnalyticsEvent *)v5 _eventMap];
    v164 = v163;
    if (v162)
    {
      v165 = @"On";
      [v163 setObject:@"On" forKeyedSubscript:@"SharedLibraryShareFromCamera"];

      v166 = [v4 sharedLibraryAutoBehaviorEnabled];
      v167 = [(CAMAnalyticsEvent *)v5 _eventMap];
      v164 = v167;
      if (v166)
      {
        [v167 setObject:@"Automatic" forKeyedSubscript:@"SharedLibraryMode"];

        if (![v4 shareWhenAtHomeEnabled])
        {
          v165 = @"Off";
        }

        v168 = [(CAMAnalyticsEvent *)v5 _eventMap];
        v164 = v168;
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

    v168 = v164;
LABEL_287:
    [v168 setObject:v170 forKeyedSubscript:v169];
  }

  if (-[CAMCaptureCapabilities isCustomLensSupportedForPhotoResolution:](v6, "isCustomLensSupportedForPhotoResolution:", [v4 preferredHEICPhotoResolutionForDevicePosition:0]))
  {
    v171 = [v4 customLensGroup];
    v172 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v241 = 0u;
    v242 = 0u;
    v243 = 0u;
    v244 = 0u;
    v173 = v171;
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

          v178 = [*(*(&v241 + 1) + 8 * i) integerValue];
          if (v178)
          {
            v179 = [(CAMAnalyticsPreferencesEvent *)v5 _focalLengthStringForCustomLens:v178];
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
      v181 = [(CAMAnalyticsEvent *)v5 _eventMap];
      [v181 setObject:v180 forKeyedSubscript:@"CustomLenses"];

      v182 = -[CAMAnalyticsPreferencesEvent _focalLengthStringForCustomLens:](v5, "_focalLengthStringForCustomLens:", [v4 defaultCustomLens]);
      v183 = [(CAMAnalyticsEvent *)v5 _eventMap];
      [v183 setObject:v182 forKeyedSubscript:@"DefaultCustomLens"];
    }

    else
    {
      v182 = [(CAMAnalyticsEvent *)v5 _eventMap];
      [v182 setObject:@"None" forKeyedSubscript:@"CustomLenses"];
    }

    v56 = 0x1E696A000uLL;
  }

  if ([(CAMCaptureCapabilities *)v6 photoModeDepthSuggestionSupported])
  {
    v184 = [*(v56 + 3480) numberWithBool:{objc_msgSend(v4, "shouldUseDepthSuggestionInPhotoMode")}];
    v185 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v185 setObject:v184 forKeyedSubscript:@"PortraitInPhotoControl"];
  }

  if (![(CAMCaptureCapabilities *)v6 isCameraButtonSupported])
  {
    goto LABEL_374;
  }

  v186 = [*(v56 + 3480) numberWithInteger:{-[CAMAnalyticsPreferencesEvent _clickCountLaunchGesture](v5, "_clickCountLaunchGesture")}];
  v187 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [v187 setObject:v186 forKeyedSubscript:@"ClickCountLaunchGesture"];

  v188 = [*(v56 + 3480) numberWithBool:{-[CAMAnalyticsPreferencesEvent _hidesControlsForCameraButton](v5, "_hidesControlsForCameraButton")}];
  v189 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [v189 setObject:v188 forKeyedSubscript:@"CameraControlQuietUIToggle"];

  v190 = [*(v56 + 3480) numberWithBool:{-[CAMAnalyticsPreferencesEvent _lockToFocus](v5, "_lockToFocus")}];
  v191 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [v191 setObject:v190 forKeyedSubscript:@"CameraControlLockToFocus"];

  v192 = [*(v56 + 3480) numberWithBool:{-[CAMAnalyticsPreferencesEvent _visualIntelligenceCameraControlEnabled](v5, "_visualIntelligenceCameraControlEnabled")}];
  v193 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [v193 setObject:v192 forKeyedSubscript:@"VisualIntelligencePressAndHoldToggle"];

  v194 = [(CAMAnalyticsPreferencesEvent *)v5 _selectedOverlayControls];
  v195 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [v195 setObject:v194 forKeyedSubscript:@"CameraControlSelectedOverlayControls"];

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
    v201 = [v199 BOOLValue];
    v202 = [v200 BOOLValue];
    if (v199 && (v201 & 1) == 0 && v200 && (v202 & 1) == 0)
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

    if ((v201 | v202))
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

    v206 = [MEMORY[0x1E696AAE8] mainBundle];
    v207 = [v206 bundleIdentifier];
    logb = [v207 isEqualToString:@"com.apple.CameraOverlayAngel"];

    if (logb)
    {
      v208 = [MEMORY[0x1E695E000] standardUserDefaults];
      v209 = [v208 objectForKey:@"systemOverlay.lastUsedControl"];
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
        v213 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
        {
          [(CAMAnalyticsPreferencesEvent *)log initWithPreferences:v213];
        }

        v214 = 0;
      }

      else
      {
        v212 = [v210 dataContainerURL];
        v213 = [v212 path];

        v214 = _CFPreferencesCopyAppValueWithContainer();
      }

      v209 = v214;
      v208 = log;
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
  v220 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [v220 setObject:v219 forKeyedSubscript:@"CameraControlAdjustmentsEnabled"];

LABEL_374:
  v221 = [*(v56 + 3480) numberWithBool:{objc_msgSend(v4, "saveMessagesCapturesPhotoLibrary")}];
  v222 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [v222 setObject:v221 forKeyedSubscript:@"SaveMessagesCapturesPhotoLibrary"];

  v223 = [*(v56 + 3480) numberWithBool:{objc_msgSend(v4, "areSmudgeNotificationsEnabled")}];
  v224 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [v224 setObject:v223 forKeyedSubscript:@"SmudgedCameraNotifications"];

  v225 = [*(v56 + 3480) numberWithBool:{objc_msgSend(v4, "preservePreferredDrawerControl")}];
  v226 = [(CAMAnalyticsEvent *)v5 _eventMap];
  [v226 setObject:v225 forKeyedSubscript:@"PreserveLastUsedControl"];

  if ([(CAMCaptureCapabilities *)v6 isSmartFramingSupported])
  {
    v227 = [*(v56 + 3480) numberWithBool:{objc_msgSend(v4, "wantsSmartFramingAutoZoomDefault")}];
    v228 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v228 setObject:v227 forKeyedSubscript:@"SmartFramingAutoZoomEnabled"];

    v229 = [*(v56 + 3480) numberWithBool:{objc_msgSend(v4, "wantsSmartFramingAutoRotationDefault")}];
    v230 = [(CAMAnalyticsEvent *)v5 _eventMap];
    [v230 setObject:v229 forKeyedSubscript:@"SmartFramingAutoRotateEnabled"];
  }

  v231 = v5;

LABEL_377:
  return v5;
}

- (id)_focalLengthStringForCustomLens:(int64_t)a3
{
  v4 = [(CAMAnalyticsPreferencesEvent *)self _capabilities];
  v5 = [v4 effectiveFocalLengthForCustomLens:a3];

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
  v4 = [v2 sharedPreferences];
  v5 = [v4 visualIntelligenceCameraControlEnabled];

  return v5;
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