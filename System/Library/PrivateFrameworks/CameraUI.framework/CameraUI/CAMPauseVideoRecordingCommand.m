@interface CAMPauseVideoRecordingCommand
- (void)executeWithContext:(id)a3;
@end

@implementation CAMPauseVideoRecordingCommand

- (void)executeWithContext:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a3 currentMovieFileOutput];
  v4 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 outputFileURL];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "pauseRecording: url=%{public}@", &v6, 0xCu);
  }

  [v3 pauseRecording];
}

@end