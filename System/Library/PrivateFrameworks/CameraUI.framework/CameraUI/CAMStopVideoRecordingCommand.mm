@interface CAMStopVideoRecordingCommand
- (void)executeWithContext:(id)a3;
@end

@implementation CAMStopVideoRecordingCommand

- (void)executeWithContext:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 currentVideoDevice];
  [v4 videoZoomFactor];
  v6 = v5;

  [v3 registerVideoEndZoomFactor:v6];
  v7 = [v3 currentMovieFileOutput];

  v8 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 outputFileURL];
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "stopRecording: url=%{public}@", &v10, 0xCu);
  }

  [v7 stopRecording];
}

@end