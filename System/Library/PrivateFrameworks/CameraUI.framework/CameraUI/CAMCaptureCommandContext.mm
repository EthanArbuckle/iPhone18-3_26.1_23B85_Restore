@interface CAMCaptureCommandContext
- (AVCaptureFileOutputRecordingDelegatePrivate)currentRecordingDelegate;
- (AVCapturePhotoCaptureDelegate)currentStillImageDelegate;
- (AVMomentCaptureMovieRecordingDelegate)currentMomentCaptureMovieRecordingDelegate;
- (BOOL)_shouldEnableApertureSliderForMode:(int64_t)mode devicePosition:(int64_t)position depthSuggestionEnabled:(BOOL)enabled recording:(BOOL)recording;
- (BOOL)_shouldEnableLensSelectorForMode:(int64_t)mode devicePosition:(int64_t)position recording:(BOOL)recording;
- (CAMCaptureCommandContext)initWithCaptureEngine:(id)engine;
- (CAMCaptureEngine)_captureEngine;
- (id)_captureEngineDeviceForMode:(int64_t)mode desiredDevice:(int64_t)device videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength frontRearSimultaneousVideoEnabled:(BOOL)enabled resolvedDevice:(int64_t *)resolvedDevice;
- (id)_metadataOutputForMode:(int64_t)mode;
- (id)audioDeviceInput;
- (id)cachedMomentCaptureSettingsForIdentifier:(id)identifier;
- (id)controlsForGraphConfiguration:(id)configuration recording:(BOOL)recording;
- (id)outputsForGraphConfiguration:(id)configuration;
- (id)primaryOutputForMode:(int64_t)mode graphConfiguration:(id)configuration;
- (id)primaryVideoPreviewLayerForGraphConfiguration:(id)configuration;
- (id)secondaryVideoPreviewLayerForGraphConfiguration:(id)configuration;
- (void)cacheMomentCaptureSettings:(id)settings forIdentifier:(id)identifier;
- (void)clear;
- (void)clearCachedMomentCaptureSettingsForIdentifier:(id)identifier;
- (void)registerStillImageCaptureRequest:(id)request withSettings:(id)settings;
- (void)registerVideoCaptureRequest:(id)request;
- (void)registerVideoEndZoomFactor:(double)factor;
- (void)startPanoramaCaptureWithRequest:(id)request;
- (void)stopPanoramaCaptureInterrupted:(BOOL)interrupted;
- (void)updateControlEnablementForFilters:(id)filters captureMode:(int64_t)mode;
- (void)updateControlEnablementForRecording:(BOOL)recording mode:(int64_t)mode devicePosition:(int64_t)position depthSuggestionEnabled:(BOOL)enabled;
- (void)updateLensSelectorForRecording:(BOOL)recording mode:(int64_t)mode devicePosition:(int64_t)position;
@end

@implementation CAMCaptureCommandContext

- (void)clear
{
  [(CAMCaptureCommandContext *)self setCurrentCaptureSession:0];
  [(CAMCaptureCommandContext *)self setCurrentVideoDevice:0];
  [(CAMCaptureCommandContext *)self setCurrentVideoDeviceFormat:0];
  [(CAMCaptureCommandContext *)self setCurrentDepthDataFormat:0];
  [(CAMCaptureCommandContext *)self setCurrentVideoDevicePreset:0];
  [(CAMCaptureCommandContext *)self setCurrentVideoDeviceInput:0];
  [(CAMCaptureCommandContext *)self setCurrentSecondaryVideoDevice:0];
  [(CAMCaptureCommandContext *)self setCurrentSecondaryVideoDeviceFormat:0];
  [(CAMCaptureCommandContext *)self setCurrentSecondaryVideoDeviceInput:0];
  [(CAMCaptureCommandContext *)self setCurrentAudioDevice:0];
  [(CAMCaptureCommandContext *)self setCurrentAudioDeviceInput:0];
  [(CAMCaptureCommandContext *)self setCurrentStillImageOutput:0];
  [(CAMCaptureCommandContext *)self setCurrentMovieFileOutput:0];
  [(CAMCaptureCommandContext *)self setCurrentPanoramaOutput:0];
  [(CAMCaptureCommandContext *)self setCurrentMetadataOutput:0];
  [(CAMCaptureCommandContext *)self setCurrentEffectsPreviewOutput:0];
  [(CAMCaptureCommandContext *)self setCurrentVideoThumbnailOutput:0];
  [(CAMCaptureCommandContext *)self setSystemZoomSlider:0];
  [(CAMCaptureCommandContext *)self setSystemLensSelector:0];
  [(CAMCaptureCommandContext *)self setSystemExposureBiasSlider:0];
  [(CAMCaptureCommandContext *)self setApertureSlider:0];
  [(CAMCaptureCommandContext *)self setEmulatedZoomSlider:0];
  [(CAMCaptureCommandContext *)self setCurrentVideoPreviewLayer:0];

  [(CAMCaptureCommandContext *)self setCurrentSecondaryVideoPreviewLayer:0];
}

- (CAMCaptureEngine)_captureEngine
{
  WeakRetained = objc_loadWeakRetained(&self->__captureEngine);

  return WeakRetained;
}

- (AVCapturePhotoCaptureDelegate)currentStillImageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__captureEngine);

  return WeakRetained;
}

- (CAMCaptureCommandContext)initWithCaptureEngine:(id)engine
{
  engineCopy = engine;
  v9.receiver = self;
  v9.super_class = CAMCaptureCommandContext;
  v5 = [(CAMCaptureCommandContext *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->__captureEngine, engineCopy);
    v7 = v6;
  }

  return v6;
}

- (void)registerStillImageCaptureRequest:(id)request withSettings:(id)settings
{
  settingsCopy = settings;
  requestCopy = request;
  _captureEngine = [(CAMCaptureCommandContext *)self _captureEngine];
  [_captureEngine registerStillImageCaptureRequest:requestCopy withSettings:settingsCopy];
}

- (AVMomentCaptureMovieRecordingDelegate)currentMomentCaptureMovieRecordingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__captureEngine);

  return WeakRetained;
}

- (void)cacheMomentCaptureSettings:(id)settings forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  settingsCopy = settings;
  _captureEngine = [(CAMCaptureCommandContext *)self _captureEngine];
  [_captureEngine cacheMomentCaptureSettings:settingsCopy forIdentifier:identifierCopy];
}

- (id)cachedMomentCaptureSettingsForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _captureEngine = [(CAMCaptureCommandContext *)self _captureEngine];
  v6 = [_captureEngine cachedMomentCaptureSettingsForIdentifier:identifierCopy];

  return v6;
}

- (void)clearCachedMomentCaptureSettingsForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _captureEngine = [(CAMCaptureCommandContext *)self _captureEngine];
  [_captureEngine clearCachedMomentCaptureSettingsForIdentifier:identifierCopy];
}

- (void)registerVideoCaptureRequest:(id)request
{
  requestCopy = request;
  _captureEngine = [(CAMCaptureCommandContext *)self _captureEngine];
  movieFileOutput = [_captureEngine movieFileOutput];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:requestCopy forKey:@"CAMCaptureEngineCurrentRequestKey"];
  [movieFileOutput setUserInfo:v6];
  [_captureEngine registerVideoCaptureRequest:requestCopy];
}

- (AVCaptureFileOutputRecordingDelegatePrivate)currentRecordingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__captureEngine);

  return WeakRetained;
}

- (void)registerVideoEndZoomFactor:(double)factor
{
  _captureEngine = [(CAMCaptureCommandContext *)self _captureEngine];
  [_captureEngine registerVideoEndZoomFactor:factor];
}

- (void)startPanoramaCaptureWithRequest:(id)request
{
  requestCopy = request;
  _captureEngine = [(CAMCaptureCommandContext *)self _captureEngine];
  [_captureEngine startPanoramaCaptureWithRequest:requestCopy];
}

- (void)stopPanoramaCaptureInterrupted:(BOOL)interrupted
{
  interruptedCopy = interrupted;
  _captureEngine = [(CAMCaptureCommandContext *)self _captureEngine];
  [_captureEngine stopPanoramaCaptureInterrupted:interruptedCopy];
}

- (id)_captureEngineDeviceForMode:(int64_t)mode desiredDevice:(int64_t)device videoConfiguration:(int64_t)configuration videoStabilizationStrength:(int64_t)strength frontRearSimultaneousVideoEnabled:(BOOL)enabled resolvedDevice:(int64_t *)resolvedDevice
{
  enabledCopy = enabled;
  v34 = *MEMORY[0x1E69E9840];
  _captureEngine = [(CAMCaptureCommandContext *)self _captureEngine];
  v15 = +[CAMCaptureCapabilities capabilities];
  v16 = [v15 resolvedDeviceForDesiredDevice:device mode:mode videoConfiguration:configuration videoStabilizationStrength:strength frontRearSimultaneousVideoEnabled:enabledCopy];
  v17 = v16;
  if (v16 > 5)
  {
    if (v16 > 8)
    {
      switch(v16)
      {
        case 9:
          frontPearlCameraDevice = [_captureEngine frontPearlCameraDevice];
          break;
        case 10:
          frontPearlCameraDevice = [_captureEngine frontSuperWideCameraDevice];
          break;
        case 11:
          frontPearlCameraDevice = [_captureEngine systemPreferredCameraDevice];
          break;
        default:
          goto LABEL_37;
      }

      goto LABEL_25;
    }

    if (v16 == 6)
    {
      frontPearlCameraDevice = [_captureEngine backWideDualCameraDevice];
    }

    else
    {
      if (v16 != 7)
      {
LABEL_10:
        frontPearlCameraDevice = [_captureEngine frontCameraDevice];
        goto LABEL_25;
      }

      frontPearlCameraDevice = [_captureEngine backTripleCameraDevice];
    }
  }

  else
  {
    if (v16 <= 2)
    {
      if (!v16)
      {
LABEL_6:
        frontPearlCameraDevice = [_captureEngine backCameraDevice];
        goto LABEL_25;
      }

      if (v16 != 1)
      {
        if (v16 != 2)
        {
          goto LABEL_37;
        }

        goto LABEL_6;
      }

      goto LABEL_10;
    }

    if (v16 == 3)
    {
      frontPearlCameraDevice = [_captureEngine backTelephotoCameraDevice];
    }

    else
    {
      if (v16 == 4)
      {
        [_captureEngine backDualCameraDevice];
      }

      else
      {
        [_captureEngine backSuperWideCameraDevice];
      }
      frontPearlCameraDevice = ;
    }
  }

LABEL_25:
  frontCameraDevice = frontPearlCameraDevice;
  if (frontPearlCameraDevice)
  {
    v20 = v17;
    if (!resolvedDevice)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v17 - 8 < 4 || v17 == 1)
  {
    frontCameraDevice = [_captureEngine frontCameraDevice];
    v23 = @"FrontAuto";
    v20 = 1;
    goto LABEL_38;
  }

LABEL_37:
  frontCameraDevice = [_captureEngine backCameraDevice];
  v23 = @"BackWide";
  v20 = 2;
LABEL_38:
  v24 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    if (v17 > 0xB)
    {
      v25 = 0;
    }

    else
    {
      v25 = off_1E76FA498[v17];
    }

    if (mode > 9)
    {
      v26 = 0;
    }

    else
    {
      v26 = off_1E76FA4F8[mode];
    }

    v27 = v23;
    v28 = 138543874;
    v29 = v25;
    v30 = 2114;
    v31 = v26;
    v32 = 2114;
    v33 = v27;
    _os_log_error_impl(&dword_1A3640000, v24, OS_LOG_TYPE_ERROR, "Failed to find device %{public}@ for mode %{public}@. Falling back to %{public}@", &v28, 0x20u);
  }

  if (resolvedDevice)
  {
LABEL_27:
    *resolvedDevice = v20;
  }

LABEL_28:

  return frontCameraDevice;
}

- (id)audioDeviceInput
{
  _captureEngine = [(CAMCaptureCommandContext *)self _captureEngine];
  audioCaptureDeviceInput = [_captureEngine audioCaptureDeviceInput];

  return audioCaptureDeviceInput;
}

- (id)primaryOutputForMode:(int64_t)mode graphConfiguration:(id)configuration
{
  v5 = [(CAMCaptureCommandContext *)self _captureEngine:mode];
  v6 = v5;
  if (mode > 9)
  {
    v8 = 0;
  }

  else
  {
    if (((1 << mode) & 0x271) != 0)
    {
      stillImageOutput = [v5 stillImageOutput];
    }

    else
    {
      if (((1 << mode) & 0x186) != 0)
      {
        [v5 movieFileOutput];
      }

      else
      {
        [v5 panoramaVideoDataOutput];
      }
      stillImageOutput = ;
    }

    v8 = stillImageOutput;
  }

  return v8;
}

- (id)outputsForGraphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _captureEngine = [(CAMCaptureCommandContext *)self _captureEngine];
  v6 = +[CAMCaptureCapabilities capabilities];
  videoThumbnailOutputConfiguration = [configurationCopy videoThumbnailOutputConfiguration];

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  mode = [configurationCopy mode];
  if (mode > 3)
  {
    if (mode > 9)
    {
      goto LABEL_20;
    }

    if (((1 << mode) & 0x250) == 0)
    {
      if (((1 << mode) & 0x180) != 0)
      {
        movieFileOutput = [_captureEngine movieFileOutput];
LABEL_19:
        v15 = movieFileOutput;
        [v8 addObject:movieFileOutput];

        goto LABEL_20;
      }

      if (mode != 5)
      {
        goto LABEL_20;
      }

LABEL_17:
      movieFileOutput = [_captureEngine stillImageOutput];
      goto LABEL_19;
    }

LABEL_10:
    stillImageOutput = [_captureEngine stillImageOutput];
    [v8 addObject:stillImageOutput];

    if (![v6 isLiveFilteringSupported])
    {
      goto LABEL_20;
    }

    if (videoThumbnailOutputConfiguration)
    {
      [_captureEngine videoThumbnailOutput];
    }

    else
    {
      [_captureEngine effectsPreviewVideoDataOutput];
    }
    movieFileOutput = ;
    goto LABEL_19;
  }

  if ((mode - 1) >= 2)
  {
    if (mode)
    {
      if (mode != 3)
      {
        goto LABEL_20;
      }

      movieFileOutput = [_captureEngine panoramaVideoDataOutput];
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  movieFileOutput2 = [_captureEngine movieFileOutput];
  [v8 addObject:movieFileOutput2];

  v13 = +[CAMCaptureCapabilities capabilities];
  v14 = [v13 isStillDuringVideoSupportedForVideoEncodingBehavior:{objc_msgSend(configurationCopy, "videoEncodingBehavior")}];

  if (v14)
  {
    goto LABEL_17;
  }

LABEL_20:
  v16 = -[CAMCaptureCommandContext _metadataOutputForMode:](self, "_metadataOutputForMode:", [configurationCopy mode]);
  if (v16)
  {
    [v8 addObject:v16];
  }

  return v8;
}

- (id)primaryVideoPreviewLayerForGraphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _captureEngine = [(CAMCaptureCommandContext *)self _captureEngine];
  mode = [configurationCopy mode];

  if (mode > 9)
  {
    videoPreviewLayer = 0;
  }

  else
  {
    videoPreviewLayer = [_captureEngine videoPreviewLayer];
  }

  return videoPreviewLayer;
}

- (id)secondaryVideoPreviewLayerForGraphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _captureEngine = [(CAMCaptureCommandContext *)self _captureEngine];
  if ([configurationCopy mode] == 1 && objc_msgSend(configurationCopy, "frontRearSimultaneousVideoEnabled"))
  {
    secondaryVideoPreviewLayer = [_captureEngine secondaryVideoPreviewLayer];
  }

  else
  {
    secondaryVideoPreviewLayer = 0;
  }

  return secondaryVideoPreviewLayer;
}

- (id)controlsForGraphConfiguration:(id)configuration recording:(BOOL)recording
{
  recordingCopy = recording;
  v133[6] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  currentCaptureSession = [(CAMCaptureCommandContext *)self currentCaptureSession];
  v8 = CFPreferencesCopyAppValue(@"CAMUserPreferenceOverlayEnabledControls", @"com.apple.camera");
  keyExistsAndHasValidFormat = 0;
  v9 = 0;
  if (!CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceCameraControlsSelectionDidMigrate", @"com.apple.camera", &keyExistsAndHasValidFormat))
  {
    v132 = @"Cameras";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v132 count:1];
    v9 = [v8 isEqualToArray:v10];
  }

  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v12 = CFPreferencesCopyAppValue(@"CAMUserPreferenceOverlayControlsOrder", @"com.apple.camera");
    if (!v12)
    {
      v133[0] = @"Exposure";
      v133[1] = @"Depth";
      v133[2] = @"Zoom";
      v133[3] = @"Cameras";
      v133[4] = @"Styles";
      v133[5] = @"Tone";
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:6];
    }

    v8 = v12;
  }

  if (!keyExistsAndHasValidFormat)
  {
    CFPreferencesSetAppValue(@"CAMUserPreferenceCameraControlsSelectionDidMigrate", MEMORY[0x1E695E118], @"com.apple.camera");
  }

  v106 = +[CAMCaptureCapabilities capabilities];
  if ([currentCaptureSession supportsControls] && objc_msgSend(v8, "count"))
  {
    v95 = recordingCopy;
    mode = [configurationCopy mode];
    device = [configurationCopy device];
    devicePosition = [configurationCopy devicePosition];
    _captureEngine = [(CAMCaptureCommandContext *)self _captureEngine];
    videoConfiguration = [configurationCopy videoConfiguration];
    videoStabilizationStrength = [configurationCopy videoStabilizationStrength];
    v18 = -[CAMCaptureCommandContext _captureEngineDeviceForMode:desiredDevice:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:resolvedDevice:](self, "_captureEngineDeviceForMode:desiredDevice:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:resolvedDevice:", mode, device, videoConfiguration, videoStabilizationStrength, [configurationCopy frontRearSimultaneousVideoEnabled], 0);
    v110 = _captureEngine;
    if (v18)
    {
      v93 = v8;
      v91 = currentCaptureSession;
      [_captureEngine ensureControlsForGraphConfiguration:configurationCopy];
      v111 = objc_alloc_init(MEMORY[0x1E695DF70]);
      systemZoomSlider = [v18 systemZoomSlider];
      v109 = v18;
      systemLensSelector = [v18 systemLensSelector];
      v126 = 0;
      v127 = 0;
      v103 = videoStabilizationStrength;
      v104 = videoConfiguration;
      v19 = +[CAMZoomControlUtilities shouldApplyContinuousZoomForMode:device:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:zoomFactors:displayZoomFactors:](CAMZoomControlUtilities, "shouldApplyContinuousZoomForMode:device:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:zoomFactors:displayZoomFactors:", mode, device, videoConfiguration, videoStabilizationStrength, [configurationCopy frontRearSimultaneousVideoEnabled], &v127, &v126);
      v107 = v127;
      v20 = v126;
      v97 = configurationCopy;
      v21 = mode;
      v94 = mode;
      selfCopy = self;
      if (v19)
      {
        v99 = device;
        [configurationCopy customLensGroup];
        v22 = v101 = v20;
        v23 = [CAMZoomPoint zoomPointsWithFactors:v107 displayZoomFactors:v20 customLensGroup:?];
        v24 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v23, "count")}];
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        v25 = v23;
        v26 = [v25 countByEnumeratingWithState:&v122 objects:v131 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v123;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v123 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v122 + 1) + 8 * i);
              v31 = MEMORY[0x1E696AD98];
              [v30 displayZoomFactor];
              v32 = [v31 numberWithDouble:?];
              v33 = MEMORY[0x1E696AD98];
              [v30 zoomFactor];
              v34 = [v33 numberWithDouble:?];
              [v24 setObject:v32 forKeyedSubscript:v34];
            }

            v27 = [v25 countByEnumeratingWithState:&v122 objects:v131 count:16];
          }

          while (v27);
        }

        [systemZoomSlider setDisplayValuesByZoomFactorValue:v24];
        configurationCopy = v97;
        self = selfCopy;
        v21 = v94;
        device = v99;
        v20 = v101;
      }

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      if (devicePosition == 1)
      {
        v36 = 0;
      }

      else
      {
        v36 = device;
      }

      v37 = [CAMCaptureCommandContext _shouldEnableLensSelectorForMode:"_shouldEnableLensSelectorForMode:devicePosition:recording:" devicePosition:v21 recording:?];
      if (v37)
      {
        v38 = v36;
      }

      else
      {
        v21 = 0;
        v38 = 0;
      }

      v120 = v20;
      v121 = v107;
      +[CAMZoomControlUtilities shouldApplyContinuousZoomForMode:device:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:zoomFactors:displayZoomFactors:](CAMZoomControlUtilities, "shouldApplyContinuousZoomForMode:device:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:zoomFactors:displayZoomFactors:", v21, v38, v104, v103, [configurationCopy frontRearSimultaneousVideoEnabled], &v121, &v120);
      v39 = v121;

      v40 = v120;
      v89 = v40;
      v90 = v39;
      v41 = [CAMZoomPoint zoomPointsWithFactors:v39 displayZoomFactors:v40 customLensGroup:0];
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v42 = [v41 countByEnumeratingWithState:&v116 objects:v130 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v117;
        do
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v117 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v116 + 1) + 8 * j);
            lastObject = [v41 lastObject];

            if (v46 != lastObject)
            {
              v48 = MEMORY[0x1E696AD98];
              [v46 displayZoomFactor];
              v49 = [v48 numberWithDouble:?];
              v50 = MEMORY[0x1E696AD98];
              if (v37)
              {
                [v46 zoomFactor];
              }

              else
              {
                [v46 displayZoomFactor];
              }

              v51 = [v50 numberWithDouble:?];
              [dictionary setObject:v49 forKeyedSubscript:v51];
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v116 objects:v130 count:16];
        }

        while (v43);
      }

      v52 = [v106 isSupportedMode:v94 withDevice:1];
      v54 = !v95;
      if (devicePosition == 1)
      {
        v54 = 1;
      }

      if (v52 && v54)
      {
        v55 = MEMORY[0x1E69938E8];
        LODWORD(v53) = *MEMORY[0x1E69938E8];
        v56 = [MEMORY[0x1E696AD98] numberWithFloat:v53];
        LODWORD(v57) = *v55;
        v58 = [MEMORY[0x1E696AD98] numberWithFloat:v57];
        [dictionary setObject:v56 forKeyedSubscript:v58];
      }

      [systemLensSelector setDisplayValuesByZoomFactorValue:dictionary];

      v59 = [v106 semanticStyleSupportForMode:v94 devicePosition:devicePosition];
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v60 = v93;
      v61 = [v60 countByEnumeratingWithState:&v112 objects:v129 count:16];
      v62 = v110;
      if (!v61)
      {
        v102 = 0;
        goto LABEL_81;
      }

      v63 = v61;
      v102 = 0;
      v64 = *v113;
      v98 = v59;
      v100 = v59 & 9;
      while (1)
      {
        for (k = 0; k != v63; ++k)
        {
          if (*v113 != v64)
          {
            objc_enumerationMutation(v60);
          }

          v66 = *(*(&v112 + 1) + 8 * k);
          if ([v66 isEqualToString:@"Exposure"])
          {
            systemExposureSlider = [v109 systemExposureSlider];
            [v111 addObject:systemExposureSlider];

            continue;
          }

          apertureSlider = [v62 apertureSlider];
          if (apertureSlider)
          {
            v69 = apertureSlider;
            v70 = [v66 isEqualToString:@"Depth"];

            if (v70)
            {
              v62 = v110;
              apertureSlider2 = [v110 apertureSlider];
LABEL_57:
              intensitySlider = apertureSlider2;
              v73 = v111;
LABEL_58:
              [v73 addObject:intensitySlider];

              continue;
            }
          }

          if ([v66 isEqualToString:@"Zoom"])
          {
            [v111 addObject:systemZoomSlider];
            v62 = v110;
          }

          else
          {
            v62 = v110;
            if ([v66 isEqualToString:@"Cameras"])
            {
              [v111 addObject:systemLensSelector];
            }

            else if ([v66 isEqual:@"Styles"] && objc_msgSend(v106, "smartStylesSupported"))
            {
              if (v100 == 1)
              {
                apertureSlider2 = [v110 systemStylePicker];
                goto LABEL_57;
              }

              smartStyles = [v97 smartStyles];
              v77 = [v110 creativeStylePickerWithStyles:smartStyles];

              [v111 addObject:v77];
              v102 = v77;
            }

            else if ([v66 isEqual:@"Tone"])
            {
              if ([v106 smartStylesSupported])
              {
                toneBiasSlider = [v110 toneBiasSlider];
                [v111 addObject:toneBiasSlider];

                if ((v98 & 8) != 0)
                {
                  if ([v106 smartStylesShowExtraControls])
                  {
                    colorBiasSlider = [v110 colorBiasSlider];
                    [v111 addObject:colorBiasSlider];

                    intensitySlider = [v110 intensitySlider];
                    v73 = v111;
                    goto LABEL_58;
                  }
                }
              }
            }
          }
        }

        v63 = [v60 countByEnumeratingWithState:&v112 objects:v129 count:16];
        if (!v63)
        {
LABEL_81:

          v78 = systemZoomSlider;
          [systemZoomSlider setEnabled:[(CAMCaptureCommandContext *)selfCopy _shouldEnableSystemZoomSliderForMode:v94 devicePosition:devicePosition]];
          [systemLensSelector setEnabled:{-[CAMCaptureCommandContext _shouldEnableLensSelectorForMode:devicePosition:recording:](selfCopy, "_shouldEnableLensSelectorForMode:devicePosition:recording:", v94, devicePosition, v95)}];
          v80 = [(CAMCaptureCommandContext *)selfCopy _shouldEnableSystemExposureForRecording:v95 mode:v94];
          v18 = v109;
          systemExposureSlider2 = [v109 systemExposureSlider];
          [systemExposureSlider2 setEnabled:v80];

          v79 = v62;
          configurationCopy = v97;
          v82 = -[CAMCaptureCommandContext _shouldEnableApertureSliderForMode:devicePosition:depthSuggestionEnabled:recording:](selfCopy, "_shouldEnableApertureSliderForMode:devicePosition:depthSuggestionEnabled:recording:", v94, devicePosition, [v97 enableDepthSuggestion], v95);
          apertureSlider3 = [v79 apertureSlider];
          [apertureSlider3 setEnabled:v82];

          v84 = [(CAMCaptureCommandContext *)selfCopy _shouldEnableSystemStylePickerForMode:v94 recording:v95];
          systemStylePicker = [v79 systemStylePicker];
          [systemStylePicker setEnabled:v84];

          [v102 setEnabled:{-[CAMCaptureCommandContext _shouldEnableCreativeStylePickerForMode:recording:](selfCopy, "_shouldEnableCreativeStylePickerForMode:recording:", v94, v95)}];
          v86 = [(CAMCaptureCommandContext *)selfCopy _shouldEnableToneBiasForMode:v94 recording:v95];
          toneBiasSlider2 = [v79 toneBiasSlider];
          [toneBiasSlider2 setEnabled:v86];

          currentCaptureSession = v91;
          v8 = v93;
          goto LABEL_82;
        }
      }
    }

    v78 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      [CAMCaptureCommandContext controlsForGraphConfiguration:v78 recording:?];
    }

    v111 = MEMORY[0x1E695E0F0];
    v79 = _captureEngine;
LABEL_82:
  }

  else
  {
    v111 = MEMORY[0x1E695E0F0];
  }

  return v111;
}

- (void)updateControlEnablementForRecording:(BOOL)recording mode:(int64_t)mode devicePosition:(int64_t)position depthSuggestionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  recordingCopy = recording;
  currentCaptureSession = [(CAMCaptureCommandContext *)self currentCaptureSession];
  if ([currentCaptureSession supportsControls])
  {
    _captureEngine = [(CAMCaptureCommandContext *)self _captureEngine];
    v12 = [(CAMCaptureCommandContext *)self _shouldEnableApertureSliderForMode:mode devicePosition:position depthSuggestionEnabled:enabledCopy recording:recordingCopy];
    apertureSlider = [_captureEngine apertureSlider];
    [apertureSlider setEnabled:v12];

    v14 = [(CAMCaptureCommandContext *)self _shouldEnableSystemExposureForRecording:recordingCopy mode:mode];
    systemExposureBiasSlider = [(CAMCaptureCommandContext *)self systemExposureBiasSlider];
    [systemExposureBiasSlider setEnabled:v14];

    v16 = [(CAMCaptureCommandContext *)self _shouldEnableLensSelectorForMode:mode devicePosition:position recording:recordingCopy];
    systemLensSelector = [(CAMCaptureCommandContext *)self systemLensSelector];
    [systemLensSelector setEnabled:v16];

    v18 = [(CAMCaptureCommandContext *)self _shouldEnableSystemStylePickerForMode:mode recording:recordingCopy];
    systemStylePicker = [_captureEngine systemStylePicker];
    [systemStylePicker setEnabled:v18];

    v20 = [(CAMCaptureCommandContext *)self _shouldEnableCreativeStylePickerForMode:mode recording:recordingCopy];
    creativeStylePicker = [_captureEngine creativeStylePicker];
    [creativeStylePicker setEnabled:v20];

    v22 = [(CAMCaptureCommandContext *)self _shouldEnableToneBiasForMode:mode recording:recordingCopy];
    toneBiasSlider = [_captureEngine toneBiasSlider];
    [toneBiasSlider setEnabled:v22];
  }
}

- (void)updateLensSelectorForRecording:(BOOL)recording mode:(int64_t)mode devicePosition:(int64_t)position
{
  recordingCopy = recording;
  systemLensSelector = [(CAMCaptureCommandContext *)self systemLensSelector];
  displayValuesByZoomFactorValue = [systemLensSelector displayValuesByZoomFactorValue];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:displayValuesByZoomFactorValue];
  v10 = +[CAMCaptureCapabilities capabilities];
  v11 = MEMORY[0x1E69938E8];
  LODWORD(v12) = *MEMORY[0x1E69938E8];
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v14 = [displayValuesByZoomFactorValue objectForKeyedSubscript:v13];

  v15 = [v10 isSupportedMode:mode withDevice:1];
  v17 = position != 1 && recordingCopy;
  v18 = v17 | v15 ^ 1;
  if ((v18 & 1) == 0 && !v14)
  {
    LODWORD(v16) = *v11;
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    LODWORD(v20) = *v11;
    v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
    [v9 setObject:v19 forKeyedSubscript:v21];

LABEL_11:
    goto LABEL_12;
  }

  if (!v14)
  {
    v18 = 0;
  }

  if (v18 == 1)
  {
    LODWORD(v16) = *v11;
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    [v9 setObject:0 forKeyedSubscript:v19];
    goto LABEL_11;
  }

LABEL_12:
  [systemLensSelector setDisplayValuesByZoomFactorValue:v9];
}

- (void)updateControlEnablementForFilters:(id)filters captureMode:(int64_t)mode
{
  filtersCopy = filters;
  currentCaptureSession = [(CAMCaptureCommandContext *)self currentCaptureSession];
  if ([currentCaptureSession supportsControls])
  {
    _captureEngine = [(CAMCaptureCommandContext *)self _captureEngine];
    v8 = [CAMEffectFilterManager isLightingEffectInFilters:filtersCopy];
    if (v8)
    {
      systemStylePicker = [_captureEngine systemStylePicker];
      [systemStylePicker setEnabled:0];

      v10 = 0;
    }

    else
    {
      v11 = [(CAMCaptureCommandContext *)self _shouldEnableSystemStylePickerForMode:mode recording:0];
      systemStylePicker2 = [_captureEngine systemStylePicker];
      [systemStylePicker2 setEnabled:v11];

      v10 = [(CAMCaptureCommandContext *)self _shouldEnableCreativeStylePickerForMode:mode recording:0];
    }

    creativeStylePicker = [_captureEngine creativeStylePicker];
    [creativeStylePicker setEnabled:v10];

    v14 = !v8 && [(CAMCaptureCommandContext *)self _shouldEnableToneBiasForMode:mode recording:0];
    toneBiasSlider = [_captureEngine toneBiasSlider];
    [toneBiasSlider setEnabled:v14];
  }
}

- (id)_metadataOutputForMode:(int64_t)mode
{
  _captureEngine = [(CAMCaptureCommandContext *)self _captureEngine];
  metadataOutput = 0;
  if (mode <= 9)
  {
    if (((1 << mode) & 0x3D7) != 0 || mode == 5 && (+[CAMCaptureCapabilities capabilities](CAMCaptureCapabilities, "capabilities"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isExposureClippingIndicatorSupportedForMode:5 videoConfiguration:0], v7, metadataOutput = 0, v8))
    {
      metadataOutput = [_captureEngine metadataOutput];
    }
  }

  return metadataOutput;
}

- (BOOL)_shouldEnableApertureSliderForMode:(int64_t)mode devicePosition:(int64_t)position depthSuggestionEnabled:(BOOL)enabled recording:(BOOL)recording
{
  enabledCopy = enabled;
  v10 = +[CAMCaptureCapabilities capabilities];
  LOBYTE(enabledCopy) = [v10 isDepthEffectApertureSupportedForMode:mode devicePosition:position depthSuggestionEnabled:enabledCopy];

  return !recording & enabledCopy;
}

- (BOOL)_shouldEnableLensSelectorForMode:(int64_t)mode devicePosition:(int64_t)position recording:(BOOL)recording
{
  v7 = 1;
  if (mode <= 9)
  {
    if (((1 << mode) & 0x2C) != 0 || ((1 << mode) & 0x300) != 0)
    {
      v7 = 0;
    }

    else if (mode == 1 && recording)
    {
      currentMovieFileOutput = [(CAMCaptureCommandContext *)self currentMovieFileOutput];
      bravoCameraSelectionBehaviorForRecording = [currentMovieFileOutput bravoCameraSelectionBehaviorForRecording];
      v7 = bravoCameraSelectionBehaviorForRecording != *MEMORY[0x1E69868C8];
    }
  }

  return ((position != 1) | ~recording) & v7;
}

@end