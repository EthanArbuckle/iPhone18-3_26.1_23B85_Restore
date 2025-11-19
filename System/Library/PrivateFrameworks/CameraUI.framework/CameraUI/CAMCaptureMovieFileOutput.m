@interface CAMCaptureMovieFileOutput
- (AVCaptureFileOutputRecordingDelegatePrivate)wrappedDelegate;
- (CAMCaptureEngine)_captureEngine;
- (CAMCaptureMovieFileOutput)initWithEngine:(id)a3;
- (NSDictionary)userInfo;
- (void)captureOutput:(id)a3 didFinishRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5 error:(id)a6;
- (void)captureOutput:(id)a3 didPauseRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5;
- (void)captureOutput:(id)a3 didResumeRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5;
- (void)captureOutput:(id)a3 didStartRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5;
- (void)captureOutput:(id)a3 readyForClientCompositingForOutputFileAtURL:(id)a4 compositingData:(id)a5;
- (void)handleNotification:(id)a3 payload:(id)a4;
- (void)setUserInfo:(id)a3;
- (void)startRecordingToOutputFileURL:(id)a3 recordingDelegate:(id)a4;
- (void)stopRecording;
@end

@implementation CAMCaptureMovieFileOutput

- (CAMCaptureMovieFileOutput)initWithEngine:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CAMCaptureMovieFileOutput;
  v5 = [(AVCaptureMovieFileOutput *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->__captureEngine, v4);
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("com.apple.camera.movie-file-output.user-info", v7);
    userInfoQueue = v6->__userInfoQueue;
    v6->__userInfoQueue = v8;

    v10 = v6->__userInfoQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__CAMCaptureMovieFileOutput_initWithEngine___block_invoke;
    block[3] = &unk_1E76F77B0;
    v11 = v6;
    v15 = v11;
    dispatch_sync(v10, block);
    v12 = v11;
  }

  return v6;
}

uint64_t __44__CAMCaptureMovieFileOutput_initWithEngine___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

- (void)startRecordingToOutputFileURL:(id)a3 recordingDelegate:(id)a4
{
  v6 = a3;
  [(CAMCaptureMovieFileOutput *)self setWrappedDelegate:a4];
  v7.receiver = self;
  v7.super_class = CAMCaptureMovieFileOutput;
  [(AVCaptureMovieFileOutput *)&v7 startRecordingToOutputFileURL:v6 recordingDelegate:self];
}

- (void)stopRecording
{
  v4.receiver = self;
  v4.super_class = CAMCaptureMovieFileOutput;
  [(AVCaptureMovieFileOutput *)&v4 stopRecording];
  v3 = [(CAMCaptureMovieFileOutput *)self _captureEngine];
  [v3 stopRecording];
}

- (NSDictionary)userInfo
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = 0;
  v3 = [(CAMCaptureMovieFileOutput *)self _userInfoQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__CAMCaptureMovieFileOutput_userInfo__block_invoke;
  v6[3] = &unk_1E76FAFF0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __37__CAMCaptureMovieFileOutput_userInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentUserInfo];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setUserInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 copy];
    v7 = [(CAMCaptureMovieFileOutput *)self _userInfoQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__CAMCaptureMovieFileOutput_setUserInfo___block_invoke;
    block[3] = &unk_1E76F7938;
    block[4] = self;
    v10 = v5;
    v11 = v6;
    v8 = v6;
    dispatch_sync(v7, block);
  }
}

uint64_t __41__CAMCaptureMovieFileOutput_setUserInfo___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentUserInfo:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 setUserInfoForNextCapture:v3];
}

- (void)handleNotification:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = [v7 objectForKey:@"SettingsID"];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = [v20[5] longLongValue];
  v8 = [(CAMCaptureMovieFileOutput *)self _userInfoQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CAMCaptureMovieFileOutput_handleNotification_payload___block_invoke;
  block[3] = &unk_1E76FB018;
  v9 = v6;
  v14 = v9;
  v15 = self;
  v16 = v18;
  v17 = &v19;
  dispatch_sync(v8, block);

  v12.receiver = self;
  v12.super_class = CAMCaptureMovieFileOutput;
  [(AVCaptureMovieFileOutput *)&v12 handleNotification:v9 payload:v7];
  if ([v9 isEqualToString:@"DidStopRecording"])
  {
    v10 = [(CAMCaptureMovieFileOutput *)self _userInfoQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__CAMCaptureMovieFileOutput_handleNotification_payload___block_invoke_17;
    v11[3] = &unk_1E76FB040;
    v11[4] = self;
    v11[5] = &v19;
    dispatch_sync(v10, v11);
  }

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v19, 8);
}

void __56__CAMCaptureMovieFileOutput_handleNotification_payload___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isEqualToString:@"DidStartRecording"])
  {
    v2 = [*(a1 + 40) userInfoForNextCapture];
    v3 = [*(a1 + 40) _userInfoBySettingsID];
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(*(a1 + 48) + 8) + 24)];
    [v3 setObject:v2 forKeyedSubscript:v4];

    [*(a1 + 40) setUserInfoForNextCapture:0];
  }

  v5 = [*(a1 + 40) _userInfoBySettingsID];
  v6 = v5;
  v7 = *(*(*(a1 + 56) + 8) + 40);
  if (!v7)
  {
    v8 = [v5 allKeys];
    v9 = [v8 firstObject];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *(*(*(a1 + 48) + 8) + 24) = [*(*(*(a1 + 56) + 8) + 40) longLongValue];
    v7 = *(*(*(a1 + 56) + 8) + 40);
  }

  v12 = [v6 objectForKey:v7];
  if (!v12)
  {
    v12 = [*(a1 + 40) userInfoForNextCapture];
    if (v12)
    {
      v13 = os_log_create("com.apple.camera", "Capture");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(*(*(a1 + 48) + 8) + 24);
        v17 = 134217984;
        v18 = v14;
        _os_log_impl(&dword_1A3640000, v13, OS_LOG_TYPE_DEFAULT, "Falling back to userInfoForNextCapture due to missing user info for settingsID %lld", &v17, 0xCu);
      }

      v15 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(*(a1 + 48) + 8) + 24)];
      [v6 setObject:v12 forKeyedSubscript:v15];

      v16 = v12;
      [*(a1 + 40) setUserInfoForNextCapture:0];
    }
  }

  [*(a1 + 40) setCurrentUserInfo:v12];
}

void __56__CAMCaptureMovieFileOutput_handleNotification_payload___block_invoke_17(uint64_t a1)
{
  v2 = [*(a1 + 32) _removeOnCompletionSettingsIDs];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = v2;
    [v2 addObject:?];
    v2 = v3;
  }
}

- (void)captureOutput:(id)a3 didStartRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(CAMCaptureMovieFileOutput *)self wrappedDelegate];
  v12 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "AVCaptureFileOutputRecordingDelegate didStartRecordingToOutputFileAtURL: url=%{public}@", &v13, 0xCu);
  }

  [v11 captureOutput:v10 didStartRecordingToOutputFileAtURL:v8 fromConnections:v9];
}

- (void)captureOutput:(id)a3 didFinishRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5 error:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [(CAMCaptureMovieFileOutput *)self wrappedDelegate];
  v15 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, "AVCaptureFileOutputRecordingDelegate didFinishRecordingToOutputFileAtURL: url=%{public}@, error=%{public}@", buf, 0x16u);
  }

  [v14 captureOutput:v13 didFinishRecordingToOutputFileAtURL:v10 fromConnections:v12 error:v11];
  [(CAMCaptureMovieFileOutput *)self setWrappedDelegate:0];
  v16 = [(CAMCaptureMovieFileOutput *)self _userInfoQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__CAMCaptureMovieFileOutput_captureOutput_didFinishRecordingToOutputFileAtURL_fromConnections_error___block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_sync(v16, block);
}

void __101__CAMCaptureMovieFileOutput_captureOutput_didFinishRecordingToOutputFileAtURL_fromConnections_error___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _removeOnCompletionSettingsIDs];
  v2 = [v4 firstObject];
  if (v2)
  {
    v3 = [*(a1 + 32) _userInfoBySettingsID];
    [v3 removeObjectForKey:v2];
  }

  [v4 removeObject:v2];
}

- (void)captureOutput:(id)a3 didPauseRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "AVCaptureFileOutputRecordingDelegate didPauseRecordingToOutputFileAtURL: url=%{public}@", &v13, 0xCu);
  }

  v12 = [(CAMCaptureMovieFileOutput *)self wrappedDelegate];
  [v12 captureOutput:v10 didPauseRecordingToOutputFileAtURL:v8 fromConnections:v9];
}

- (void)captureOutput:(id)a3 didResumeRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = os_log_create("com.apple.camera", "Capture");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "AVCaptureFileOutputRecordingDelegate didResumeRecordingToOutputFileAtURL: url=%{public}@", &v13, 0xCu);
  }

  v12 = [(CAMCaptureMovieFileOutput *)self wrappedDelegate];
  [v12 captureOutput:v10 didResumeRecordingToOutputFileAtURL:v8 fromConnections:v9];
}

- (void)captureOutput:(id)a3 readyForClientCompositingForOutputFileAtURL:(id)a4 compositingData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CAMCaptureMovieFileOutput *)self wrappedDelegate];
  [v11 captureOutput:v10 readyForClientCompositingForOutputFileAtURL:v9 compositingData:v8];
}

- (CAMCaptureEngine)_captureEngine
{
  WeakRetained = objc_loadWeakRetained(&self->__captureEngine);

  return WeakRetained;
}

- (AVCaptureFileOutputRecordingDelegatePrivate)wrappedDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_wrappedDelegate);

  return WeakRetained;
}

@end