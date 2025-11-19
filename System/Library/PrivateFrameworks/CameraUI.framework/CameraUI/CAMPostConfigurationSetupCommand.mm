@interface CAMPostConfigurationSetupCommand
- (CAMPostConfigurationSetupCommand)initWithCoder:(id)a3;
- (CAMPostConfigurationSetupCommand)initWithGraphConfiguration:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_configure48MPZSL:(id)a3;
- (void)_configureAudioConfigurationForContext:(id)a3;
- (void)_configureAudioSessionForBluetoothHighQualityRecording:(id)a3;
- (void)_configureAudioSessionMixesWithOthersForContext:(id)a3;
- (void)_configureAudioWindNoiseRemovalEnabledForContext:(id)a3;
- (void)_configureControlCenterVideoEffectsForContext:(id)a3;
- (void)_configureLivePhotoPreservationSuspension:(id)a3;
- (void)_configureSmoothZoomingForContext:(id)a3;
- (void)_configureSmudgeDetection:(id)a3;
- (void)_configureSpatialPhotoCaptureEnabled:(id)a3;
- (void)_configureStereoVideoCaptureEnabled:(id)a3;
- (void)_configureTrueVideoEnabled:(id)a3;
- (void)_configureVideoGreenGhostMitigationForContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMPostConfigurationSetupCommand

- (CAMPostConfigurationSetupCommand)initWithGraphConfiguration:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CAMPostConfigurationSetupCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphConfiguration, a3);
    v8 = v7;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CAMPostConfigurationSetupCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:a3];
  v5 = [(CAMPostConfigurationSetupCommand *)self graphConfiguration];
  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

- (CAMPostConfigurationSetupCommand)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CAMPostConfigurationSetupCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:a3];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  [(CAMPostConfigurationSetupCommand *)self _configureControlCenterVideoEffectsForContext:v4];
  [(CAMPostConfigurationSetupCommand *)self _configureSmoothZoomingForContext:v4];
  [(CAMPostConfigurationSetupCommand *)self _configureVideoGreenGhostMitigationForContext:v4];
  [(CAMPostConfigurationSetupCommand *)self _configureLivePhotoPreservationSuspension:v4];
  [(CAMPostConfigurationSetupCommand *)self _configureAudioSessionMixesWithOthersForContext:v4];
  [(CAMPostConfigurationSetupCommand *)self _configureAudioSessionForBluetoothHighQualityRecording:v4];
  [(CAMPostConfigurationSetupCommand *)self _configureStereoVideoCaptureEnabled:v4];
  [(CAMPostConfigurationSetupCommand *)self _configureAudioConfigurationForContext:v4];
  [(CAMPostConfigurationSetupCommand *)self _configureAudioWindNoiseRemovalEnabledForContext:v4];
  [(CAMPostConfigurationSetupCommand *)self _configureSpatialPhotoCaptureEnabled:v4];
  [(CAMPostConfigurationSetupCommand *)self _configureTrueVideoEnabled:v4];
  [(CAMPostConfigurationSetupCommand *)self _configure48MPZSL:v4];
  [(CAMPostConfigurationSetupCommand *)self _configureSmudgeDetection:v4];
}

- (void)_configureControlCenterVideoEffectsForContext:(id)a3
{
  v3 = [a3 currentVideoDeviceInput];
  [v3 setBackgroundBlurAllowed:0];
  [v3 setCenterStageAllowed:0];
}

- (void)_configureSmoothZoomingForContext:(id)a3
{
  v4 = [a3 currentMovieFileOutput];
  v3 = [v4 connectionWithMediaType:*MEMORY[0x1E6987608]];
  if ([v3 isVideoZoomSmoothingSupported])
  {
    [v3 setVideoZoomSmoothingEnabled:{objc_msgSend(v3, "isVideoZoomSmoothingSupported")}];
  }
}

- (void)_configureVideoGreenGhostMitigationForContext:(id)a3
{
  v4 = [a3 currentMovieFileOutput];
  v3 = [v4 connectionWithMediaType:*MEMORY[0x1E6987608]];
  if ([v3 isVideoGreenGhostMitigationSupported])
  {
    [v3 setVideoGreenGhostMitigationEnabled:1];
  }
}

- (void)_configureLivePhotoPreservationSuspension:(id)a3
{
  v3 = [a3 currentStillImageOutput];
  if ([v3 isLivePhotoCaptureSupported] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 setPreservesLivePhotoCaptureSuspendedOnSessionStop:1];
  }
}

- (void)_configureAudioSessionMixesWithOthersForContext:(id)a3
{
  v5 = [a3 currentCaptureSession];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(CAMPostConfigurationSetupCommand *)self graphConfiguration];
    [v5 setConfiguresApplicationAudioSessionToMixWithOthers:{objc_msgSend(v4, "mixAudioWithOthers")}];
  }
}

- (void)_configureAudioSessionForBluetoothHighQualityRecording:(id)a3
{
  v3 = [a3 currentCaptureSession];
  [v3 setConfiguresApplicationAudioSessionForBluetoothHighQualityRecording:1];
}

- (void)_configureStereoVideoCaptureEnabled:(id)a3
{
  v4 = a3;
  v11 = [v4 currentMovieFileOutput];
  v5 = [v4 currentVideoDeviceInput];

  if (v11 && v5)
  {
    v6 = +[CAMCaptureCapabilities capabilities];
    v7 = [v6 isSpatialModeSupported];

    if (v7)
    {
      v8 = [(CAMPostConfigurationSetupCommand *)self graphConfiguration];
      v9 = [v8 mode];

      v10 = v9 == 8;
    }

    else
    {
      v10 = 0;
    }

    if ([v11 isSpatialVideoCaptureSupported])
    {
      [v11 setSpatialVideoCaptureEnabled:v10];
    }
  }
}

- (void)_configureAudioConfigurationForContext:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [a3 currentAudioDeviceInput];
  if (v4)
  {
    v5 = [(CAMPostConfigurationSetupCommand *)self graphConfiguration];
    v6 = [v5 audioConfiguration];

    v7 = [CAMCaptureConversions AVCaptureDeviceAudioCaptureModeForCAMAudioConfiguration:v6];
    v8 = [v4 isAudioCaptureModeSupported:v7];
    if (v8)
    {
      v9 = v6 == 0;
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
      [v4 setAudioCaptureMode:v7];
    }
  }
}

- (void)_configureAudioWindNoiseRemovalEnabledForContext:(id)a3
{
  v4 = [a3 currentAudioDeviceInput];
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v4 = [v4 isWindNoiseRemovalSupported];
    v5 = v7;
    if (v4)
    {
      v6 = [(CAMPostConfigurationSetupCommand *)self graphConfiguration];
      [v7 setWindNoiseRemovalEnabled:{objc_msgSend(v6, "windNoiseRemovalEnabled")}];

      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_configureSpatialPhotoCaptureEnabled:(id)a3
{
  v6 = [a3 currentStillImageOutput];
  if (v6)
  {
    v4 = [(CAMPostConfigurationSetupCommand *)self graphConfiguration];
    v5 = [v4 mode];

    if ([v6 isSpatialPhotoCaptureSupported])
    {
      [v6 setSpatialPhotoCaptureEnabled:v5 == 9];
    }
  }
}

- (void)_configureTrueVideoEnabled:(id)a3
{
  v4 = [a3 currentMovieFileOutput];
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v4 = [v4 isTrueVideoCaptureSupported];
    v5 = v7;
    if (v4)
    {
      v6 = [(CAMPostConfigurationSetupCommand *)self graphConfiguration];
      [v7 setTrueVideoCaptureEnabled:{objc_msgSend(v6, "trueVideoEnabled")}];

      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_configure48MPZSL:(id)a3
{
  v4 = [a3 currentStillImageOutput];
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v4 = [v4 isUltraHighResolutionZeroShutterLagSupported];
    v5 = v7;
    if (v4)
    {
      v6 = [(CAMPostConfigurationSetupCommand *)self graphConfiguration];
      [v7 setUltraHighResolutionZeroShutterLagSupportEnabled:{objc_msgSend(v6, "maximumPhotoResolution") == 3}];

      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_configureSmudgeDetection:(id)a3
{
  v4 = a3;
  v5 = [(CAMPostConfigurationSetupCommand *)self graphConfiguration];
  v6 = [v5 mode];

  if (v6 <= 9)
  {
    if (((1 << v6) & 0x3EE) != 0)
    {
      v7 = [v4 currentVideoDevice];
      v8 = [v7 activeFormat];
      v9 = [v8 isCameraLensSmudgeDetectionSupported];

      if (v9)
      {
        v10 = [v4 currentVideoDevice];
        v11 = v10;
        v16 = *MEMORY[0x1E6960C70];
        v17 = *(MEMORY[0x1E6960C70] + 16);
        v12 = 0;
LABEL_7:
        [v10 setCameraLensSmudgeDetectionEnabled:v12 detectionInterval:{&v16, v16, v17}];
      }
    }

    else
    {
      v13 = [v4 currentVideoDevice];
      v14 = [v13 activeFormat];
      v15 = [v14 isCameraLensSmudgeDetectionSupported];

      if (v15)
      {
        v10 = [v4 currentVideoDevice];
        v11 = v10;
        v16 = *MEMORY[0x1E6960C70];
        v17 = *(MEMORY[0x1E6960C70] + 16);
        v12 = 1;
        goto LABEL_7;
      }
    }
  }
}

@end