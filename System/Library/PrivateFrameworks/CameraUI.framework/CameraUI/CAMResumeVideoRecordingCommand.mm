@interface CAMResumeVideoRecordingCommand
- (void)executeWithContext:(id)a3;
@end

@implementation CAMResumeVideoRecordingCommand

- (void)executeWithContext:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a3 currentMovieFileOutput];
  if ([v3 isRecordingPaused])
  {
    v4 = dispatch_semaphore_create(0);
    Current = CFAbsoluteTimeGetCurrent();
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __53__CAMResumeVideoRecordingCommand_executeWithContext___block_invoke;
    v15 = &unk_1E76F7A38;
    v17 = Current;
    v6 = v4;
    v16 = v6;
    AudioServicesPlaySystemSoundWithCompletion(0x45Du, &v12);
    v7 = dispatch_time(0, 1200000000);
    if (dispatch_semaphore_wait(v6, v7))
    {
      v8 = CFAbsoluteTimeGetCurrent();
      v9 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v19 = v8 - Current;
        _os_log_error_impl(&dword_1A3640000, v9, OS_LOG_TYPE_ERROR, "resumeRecording: timed out while waiting for system sound (after %.3f seconds)", buf, 0xCu);
      }
    }

    v10 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [v3 outputFileURL];
      v11 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138543362;
      v19 = v11;
      _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "resumeRecording: url=%{public}@", buf, 0xCu);
    }

    [v3 resumeRecording];
  }

  else
  {
    v6 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring request to resume capturing video because we weren't paused.", buf, 2u);
    }
  }
}

intptr_t __53__CAMResumeVideoRecordingCommand_executeWithContext___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CFAbsoluteTimeGetCurrent() - *(a1 + 40);
  if (v2 > 0.1)
  {
    v3 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = v2;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "Resume video recording sound took %.3f seconds", &v5, 0xCu);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

@end