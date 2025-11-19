@interface CAMCTMInitiateCaptureCommand
- (CAMCTMInitiateCaptureCommand)initWithCoder:(id)a3;
- (CAMCTMInitiateCaptureCommand)initWithSettings:(id)a3;
- (id)_momentSettingsWithContext:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMCTMInitiateCaptureCommand

- (CAMCTMInitiateCaptureCommand)initWithSettings:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CAMCTMInitiateCaptureCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__settings, a3);
    v8 = v7;
  }

  return v7;
}

- (CAMCTMInitiateCaptureCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAMCTMInitiateCaptureCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"CAMCTMInitiateCaptureCommandSettings"];
    settings = v5->__settings;
    v5->__settings = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CAMCTMInitiateCaptureCommand *)self _settings];
  [v4 encodeObject:v5 forKey:@"CAMCTMInitiateCaptureCommandSettings"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CAMCTMInitiateCaptureCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:a3];
  v5 = [(CAMCTMInitiateCaptureCommand *)self _settings];
  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

- (void)executeWithContext:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 currentStillImageOutput];
  v6 = [v4 currentStillImageDelegate];
  v7 = [(CAMCTMInitiateCaptureCommand *)self _momentSettingsWithContext:v4];
  v8 = [(CAMCTMInitiateCaptureCommand *)self _settings];
  if ([v8 needsLivePhotoCaptureResumedOnPhotoOutput:v5])
  {
    [v5 setLivePhotoCaptureSuspended:0];
  }

  v9 = [v8 persistenceUUID];
  [v4 cacheMomentCaptureSettings:v7 forIdentifier:v9];
  if ([v5 isMovieRecordingEnabled])
  {
    [v5 beginMomentCaptureWithSettings:v7 delegate:v6];
    v10 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = [v7 uniqueID];
      _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "captureID:%lld Called beginMomentCaptureWithSettings:", &v11, 0xCu);
    }
  }

  else
  {
    v10 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CAMCTMInitiateCaptureCommand *)v7 executeWithContext:v10];
    }
  }
}

- (id)_momentSettingsWithContext:(id)a3
{
  v4 = a3;
  v5 = [(CAMCTMInitiateCaptureCommand *)self _settings];
  v6 = [v4 currentVideoDevice];
  if ([v6 isTorchAvailable])
  {
    v7 = [v5 torchMode];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 capturePhotoSettingsWithContext:v4];
  v9 = [MEMORY[0x1E69871F8] settingsWithPhotoSettings:v8];
  [v9 setTorchMode:{+[CAMCaptureConversions captureTorchModeForTorchMode:](CAMCaptureConversions, "captureTorchModeForTorchMode:", v7)}];
  v10 = [v9 bravoCameraSelectionBehaviorForRecording];
  if (([v10 isEqualToString:*MEMORY[0x1E69868D8]] & 1) == 0)
  {
    v11 = [v5 disablesCameraSwitchingDuringRecording];
    v12 = MEMORY[0x1E69868C8];
    if (!v11)
    {
      v12 = MEMORY[0x1E69868D0];
    }

    v13 = *v12;

    [v9 setBravoCameraSelectionBehaviorForRecording:v13];
    v10 = v13;
  }

  return v9;
}

- (void)executeWithContext:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = [a1 uniqueID];
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "captureID:%lld Attempting to beginMomentCaptureWithSettings but movieRecordingEnabled = NO!", &v3, 0xCu);
}

@end