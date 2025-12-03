@interface CAMStopVideoRecordingCommand
- (void)executeWithContext:(id)context;
@end

@implementation CAMStopVideoRecordingCommand

- (void)executeWithContext:(id)context
{
  v12 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  currentVideoDevice = [contextCopy currentVideoDevice];
  [currentVideoDevice videoZoomFactor];
  v6 = v5;

  [contextCopy registerVideoEndZoomFactor:v6];
  currentMovieFileOutput = [contextCopy currentMovieFileOutput];

  v8 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    outputFileURL = [currentMovieFileOutput outputFileURL];
    v10 = 138543362;
    v11 = outputFileURL;
    _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "stopRecording: url=%{public}@", &v10, 0xCu);
  }

  [currentMovieFileOutput stopRecording];
}

@end