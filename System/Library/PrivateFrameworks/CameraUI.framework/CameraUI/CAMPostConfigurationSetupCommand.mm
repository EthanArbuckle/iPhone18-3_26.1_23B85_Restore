@interface CAMPostConfigurationSetupCommand
- (CAMPostConfigurationSetupCommand)initWithCoder:(id)coder;
- (CAMPostConfigurationSetupCommand)initWithGraphConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_configure48MPZSL:(id)l;
- (void)_configureAudioConfigurationForContext:(id)context;
- (void)_configureAudioSessionForBluetoothHighQualityRecording:(id)recording;
- (void)_configureAudioSessionMixesWithOthersForContext:(id)context;
- (void)_configureAudioWindNoiseRemovalEnabledForContext:(id)context;
- (void)_configureControlCenterVideoEffectsForContext:(id)context;
- (void)_configureLivePhotoPreservationSuspension:(id)suspension;
- (void)_configureSmoothZoomingForContext:(id)context;
- (void)_configureSmudgeDetection:(id)detection;
- (void)_configureSpatialPhotoCaptureEnabled:(id)enabled;
- (void)_configureStereoVideoCaptureEnabled:(id)enabled;
- (void)_configureTrueVideoEnabled:(id)enabled;
- (void)_configureVideoGreenGhostMitigationForContext:(id)context;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMPostConfigurationSetupCommand

- (CAMPostConfigurationSetupCommand)initWithGraphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = CAMPostConfigurationSetupCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphConfiguration, configuration);
    v8 = v7;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CAMPostConfigurationSetupCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:zone];
  graphConfiguration = [(CAMPostConfigurationSetupCommand *)self graphConfiguration];
  v6 = v4[3];
  v4[3] = graphConfiguration;

  return v4;
}

- (CAMPostConfigurationSetupCommand)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CAMPostConfigurationSetupCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:coder];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  [(CAMPostConfigurationSetupCommand *)self _configureControlCenterVideoEffectsForContext:contextCopy];
  [(CAMPostConfigurationSetupCommand *)self _configureSmoothZoomingForContext:contextCopy];
  [(CAMPostConfigurationSetupCommand *)self _configureVideoGreenGhostMitigationForContext:contextCopy];
  [(CAMPostConfigurationSetupCommand *)self _configureLivePhotoPreservationSuspension:contextCopy];
  [(CAMPostConfigurationSetupCommand *)self _configureAudioSessionMixesWithOthersForContext:contextCopy];
  [(CAMPostConfigurationSetupCommand *)self _configureAudioSessionForBluetoothHighQualityRecording:contextCopy];
  [(CAMPostConfigurationSetupCommand *)self _configureStereoVideoCaptureEnabled:contextCopy];
  [(CAMPostConfigurationSetupCommand *)self _configureAudioConfigurationForContext:contextCopy];
  [(CAMPostConfigurationSetupCommand *)self _configureAudioWindNoiseRemovalEnabledForContext:contextCopy];
  [(CAMPostConfigurationSetupCommand *)self _configureSpatialPhotoCaptureEnabled:contextCopy];
  [(CAMPostConfigurationSetupCommand *)self _configureTrueVideoEnabled:contextCopy];
  [(CAMPostConfigurationSetupCommand *)self _configure48MPZSL:contextCopy];
  [(CAMPostConfigurationSetupCommand *)self _configureSmudgeDetection:contextCopy];
}

- (void)_configureControlCenterVideoEffectsForContext:(id)context
{
  currentVideoDeviceInput = [context currentVideoDeviceInput];
  [currentVideoDeviceInput setBackgroundBlurAllowed:0];
  [currentVideoDeviceInput setCenterStageAllowed:0];
}

- (void)_configureSmoothZoomingForContext:(id)context
{
  currentMovieFileOutput = [context currentMovieFileOutput];
  v3 = [currentMovieFileOutput connectionWithMediaType:*MEMORY[0x1E6987608]];
  if ([v3 isVideoZoomSmoothingSupported])
  {
    [v3 setVideoZoomSmoothingEnabled:{objc_msgSend(v3, "isVideoZoomSmoothingSupported")}];
  }
}

- (void)_configureVideoGreenGhostMitigationForContext:(id)context
{
  currentMovieFileOutput = [context currentMovieFileOutput];
  v3 = [currentMovieFileOutput connectionWithMediaType:*MEMORY[0x1E6987608]];
  if ([v3 isVideoGreenGhostMitigationSupported])
  {
    [v3 setVideoGreenGhostMitigationEnabled:1];
  }
}

- (void)_configureLivePhotoPreservationSuspension:(id)suspension
{
  currentStillImageOutput = [suspension currentStillImageOutput];
  if ([currentStillImageOutput isLivePhotoCaptureSupported] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [currentStillImageOutput setPreservesLivePhotoCaptureSuspendedOnSessionStop:1];
  }
}

- (void)_configureAudioSessionMixesWithOthersForContext:(id)context
{
  currentCaptureSession = [context currentCaptureSession];
  if (objc_opt_respondsToSelector())
  {
    graphConfiguration = [(CAMPostConfigurationSetupCommand *)self graphConfiguration];
    [currentCaptureSession setConfiguresApplicationAudioSessionToMixWithOthers:{objc_msgSend(graphConfiguration, "mixAudioWithOthers")}];
  }
}

- (void)_configureAudioSessionForBluetoothHighQualityRecording:(id)recording
{
  currentCaptureSession = [recording currentCaptureSession];
  [currentCaptureSession setConfiguresApplicationAudioSessionForBluetoothHighQualityRecording:1];
}

- (void)_configureStereoVideoCaptureEnabled:(id)enabled
{
  enabledCopy = enabled;
  currentMovieFileOutput = [enabledCopy currentMovieFileOutput];
  currentVideoDeviceInput = [enabledCopy currentVideoDeviceInput];

  if (currentMovieFileOutput && currentVideoDeviceInput)
  {
    v6 = +[CAMCaptureCapabilities capabilities];
    isSpatialModeSupported = [v6 isSpatialModeSupported];

    if (isSpatialModeSupported)
    {
      graphConfiguration = [(CAMPostConfigurationSetupCommand *)self graphConfiguration];
      mode = [graphConfiguration mode];

      v10 = mode == 8;
    }

    else
    {
      v10 = 0;
    }

    if ([currentMovieFileOutput isSpatialVideoCaptureSupported])
    {
      [currentMovieFileOutput setSpatialVideoCaptureEnabled:v10];
    }
  }
}

- (void)_configureAudioConfigurationForContext:(id)context
{
  v14 = *MEMORY[0x1E69E9840];
  currentAudioDeviceInput = [context currentAudioDeviceInput];
  if (currentAudioDeviceInput)
  {
    graphConfiguration = [(CAMPostConfigurationSetupCommand *)self graphConfiguration];
    audioConfiguration = [graphConfiguration audioConfiguration];

    v7 = [CAMCaptureConversions AVCaptureDeviceAudioCaptureModeForCAMAudioConfiguration:audioConfiguration];
    v8 = [currentAudioDeviceInput isAudioCaptureModeSupported:v7];
    if (v8)
    {
      v9 = audioConfiguration == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if ((v8 & 1) == 0)
      {
        v10 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
          v12 = 138543362;
          v13 = v11;
          _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "Requested audio capture mode not supported: %{public}@", &v12, 0xCu);
        }
      }
    }

    else
    {
      [currentAudioDeviceInput setAudioCaptureMode:v7];
    }
  }
}

- (void)_configureAudioWindNoiseRemovalEnabledForContext:(id)context
{
  currentAudioDeviceInput = [context currentAudioDeviceInput];
  v5 = currentAudioDeviceInput;
  if (currentAudioDeviceInput)
  {
    v7 = currentAudioDeviceInput;
    currentAudioDeviceInput = [currentAudioDeviceInput isWindNoiseRemovalSupported];
    v5 = v7;
    if (currentAudioDeviceInput)
    {
      graphConfiguration = [(CAMPostConfigurationSetupCommand *)self graphConfiguration];
      [v7 setWindNoiseRemovalEnabled:{objc_msgSend(graphConfiguration, "windNoiseRemovalEnabled")}];

      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](currentAudioDeviceInput, v5);
}

- (void)_configureSpatialPhotoCaptureEnabled:(id)enabled
{
  currentStillImageOutput = [enabled currentStillImageOutput];
  if (currentStillImageOutput)
  {
    graphConfiguration = [(CAMPostConfigurationSetupCommand *)self graphConfiguration];
    mode = [graphConfiguration mode];

    if ([currentStillImageOutput isSpatialPhotoCaptureSupported])
    {
      [currentStillImageOutput setSpatialPhotoCaptureEnabled:mode == 9];
    }
  }
}

- (void)_configureTrueVideoEnabled:(id)enabled
{
  currentMovieFileOutput = [enabled currentMovieFileOutput];
  v5 = currentMovieFileOutput;
  if (currentMovieFileOutput)
  {
    v7 = currentMovieFileOutput;
    currentMovieFileOutput = [currentMovieFileOutput isTrueVideoCaptureSupported];
    v5 = v7;
    if (currentMovieFileOutput)
    {
      graphConfiguration = [(CAMPostConfigurationSetupCommand *)self graphConfiguration];
      [v7 setTrueVideoCaptureEnabled:{objc_msgSend(graphConfiguration, "trueVideoEnabled")}];

      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](currentMovieFileOutput, v5);
}

- (void)_configure48MPZSL:(id)l
{
  currentStillImageOutput = [l currentStillImageOutput];
  v5 = currentStillImageOutput;
  if (currentStillImageOutput)
  {
    v7 = currentStillImageOutput;
    currentStillImageOutput = [currentStillImageOutput isUltraHighResolutionZeroShutterLagSupported];
    v5 = v7;
    if (currentStillImageOutput)
    {
      graphConfiguration = [(CAMPostConfigurationSetupCommand *)self graphConfiguration];
      [v7 setUltraHighResolutionZeroShutterLagSupportEnabled:{objc_msgSend(graphConfiguration, "maximumPhotoResolution") == 3}];

      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](currentStillImageOutput, v5);
}

- (void)_configureSmudgeDetection:(id)detection
{
  detectionCopy = detection;
  graphConfiguration = [(CAMPostConfigurationSetupCommand *)self graphConfiguration];
  mode = [graphConfiguration mode];

  if (mode <= 9)
  {
    if (((1 << mode) & 0x3EE) != 0)
    {
      currentVideoDevice = [detectionCopy currentVideoDevice];
      activeFormat = [currentVideoDevice activeFormat];
      isCameraLensSmudgeDetectionSupported = [activeFormat isCameraLensSmudgeDetectionSupported];

      if (isCameraLensSmudgeDetectionSupported)
      {
        currentVideoDevice2 = [detectionCopy currentVideoDevice];
        v11 = currentVideoDevice2;
        v16 = *MEMORY[0x1E6960C70];
        v17 = *(MEMORY[0x1E6960C70] + 16);
        v12 = 0;
LABEL_7:
        [currentVideoDevice2 setCameraLensSmudgeDetectionEnabled:v12 detectionInterval:{&v16, v16, v17}];
      }
    }

    else
    {
      currentVideoDevice3 = [detectionCopy currentVideoDevice];
      activeFormat2 = [currentVideoDevice3 activeFormat];
      isCameraLensSmudgeDetectionSupported2 = [activeFormat2 isCameraLensSmudgeDetectionSupported];

      if (isCameraLensSmudgeDetectionSupported2)
      {
        currentVideoDevice2 = [detectionCopy currentVideoDevice];
        v11 = currentVideoDevice2;
        v16 = *MEMORY[0x1E6960C70];
        v17 = *(MEMORY[0x1E6960C70] + 16);
        v12 = 1;
        goto LABEL_7;
      }
    }
  }
}

@end