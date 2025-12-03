@interface CAMCTMInitiateCaptureCommand
- (CAMCTMInitiateCaptureCommand)initWithCoder:(id)coder;
- (CAMCTMInitiateCaptureCommand)initWithSettings:(id)settings;
- (id)_momentSettingsWithContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMCTMInitiateCaptureCommand

- (CAMCTMInitiateCaptureCommand)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v10.receiver = self;
  v10.super_class = CAMCTMInitiateCaptureCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__settings, settings);
    v8 = v7;
  }

  return v7;
}

- (CAMCTMInitiateCaptureCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CAMCTMInitiateCaptureCommand;
  v5 = [(CAMCaptureCommand *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"CAMCTMInitiateCaptureCommandSettings"];
    settings = v5->__settings;
    v5->__settings = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  _settings = [(CAMCTMInitiateCaptureCommand *)self _settings];
  [coderCopy encodeObject:_settings forKey:@"CAMCTMInitiateCaptureCommandSettings"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CAMCTMInitiateCaptureCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:zone];
  _settings = [(CAMCTMInitiateCaptureCommand *)self _settings];
  v6 = v4[3];
  v4[3] = _settings;

  return v4;
}

- (void)executeWithContext:(id)context
{
  v13 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  currentStillImageOutput = [contextCopy currentStillImageOutput];
  currentStillImageDelegate = [contextCopy currentStillImageDelegate];
  v7 = [(CAMCTMInitiateCaptureCommand *)self _momentSettingsWithContext:contextCopy];
  _settings = [(CAMCTMInitiateCaptureCommand *)self _settings];
  if ([_settings needsLivePhotoCaptureResumedOnPhotoOutput:currentStillImageOutput])
  {
    [currentStillImageOutput setLivePhotoCaptureSuspended:0];
  }

  persistenceUUID = [_settings persistenceUUID];
  [contextCopy cacheMomentCaptureSettings:v7 forIdentifier:persistenceUUID];
  if ([currentStillImageOutput isMovieRecordingEnabled])
  {
    [currentStillImageOutput beginMomentCaptureWithSettings:v7 delegate:currentStillImageDelegate];
    v10 = os_log_create("com.apple.camera", "Capture");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      uniqueID = [v7 uniqueID];
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

- (id)_momentSettingsWithContext:(id)context
{
  contextCopy = context;
  _settings = [(CAMCTMInitiateCaptureCommand *)self _settings];
  currentVideoDevice = [contextCopy currentVideoDevice];
  if ([currentVideoDevice isTorchAvailable])
  {
    torchMode = [_settings torchMode];
  }

  else
  {
    torchMode = 0;
  }

  v8 = [_settings capturePhotoSettingsWithContext:contextCopy];
  v9 = [MEMORY[0x1E69871F8] settingsWithPhotoSettings:v8];
  [v9 setTorchMode:{+[CAMCaptureConversions captureTorchModeForTorchMode:](CAMCaptureConversions, "captureTorchModeForTorchMode:", torchMode)}];
  bravoCameraSelectionBehaviorForRecording = [v9 bravoCameraSelectionBehaviorForRecording];
  if (([bravoCameraSelectionBehaviorForRecording isEqualToString:*MEMORY[0x1E69868D8]] & 1) == 0)
  {
    disablesCameraSwitchingDuringRecording = [_settings disablesCameraSwitchingDuringRecording];
    v12 = MEMORY[0x1E69868C8];
    if (!disablesCameraSwitchingDuringRecording)
    {
      v12 = MEMORY[0x1E69868D0];
    }

    v13 = *v12;

    [v9 setBravoCameraSelectionBehaviorForRecording:v13];
    bravoCameraSelectionBehaviorForRecording = v13;
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