@interface CSRemoteRecordClient
- (BOOL)didPlayEndpointBeep;
- (BOOL)hasPendingTwoShotBeep;
- (BOOL)isConnected;
- (BOOL)isRecording;
- (BOOL)startRecordingWithOptions:(id)a3 error:(id *)a4;
- (BOOL)stopRecording:(id *)a3;
- (BOOL)waitingForConnection:(double)a3 error:(id *)a4;
- (CSRemoteRecordClient)init;
- (CSRemoteRecordClient)initWithDeviceId:(id)a3 audioStreamHandleId:(unint64_t)a4;
- (CSRemoteRecordClient)initWithQueue:(id)a3 IsRemoteRecording:(BOOL)a4;
- (CSRemoteRecordClientDelegate)delegate;
- (id)voiceTriggerEventInfo;
- (void)_handleDidStartRecordingMessage:(id)a3;
- (void)_handleServerError:(id)a3;
- (void)_handleServerEvent:(id)a3;
- (void)_handleServerMessage:(id)a3;
- (void)_handleTwoShotDetectedMessage:(id)a3;
- (void)dealloc;
- (void)didDeviceConnect:(id)a3;
- (void)didDeviceDisconnect:(id)a3;
@end

@implementation CSRemoteRecordClient

- (CSRemoteRecordClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)hasPendingTwoShotBeep
{
  v24[1] = *MEMORY[0x1E69E9840];
  v23 = @"COMMAND";
  v24[0] = @"hasPendingTwoShotBeep";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v4 = dispatch_semaphore_create(0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__CSRemoteRecordClient_hasPendingTwoShotBeep__block_invoke;
  v13[3] = &unk_1E865C858;
  v13[4] = self;
  v6 = v3;
  v14 = v6;
  v16 = &v17;
  v7 = v4;
  v15 = v7;
  dispatch_async(queue, v13);
  v8 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[CSRemoteRecordClient hasPendingTwoShotBeep]";
      _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, "%s Getting reply timed out!!", buf, 0xCu);
    }
  }

  v10 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void __45__CSRemoteRecordClient_hasPendingTwoShotBeep__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    v6 = *(a1 + 48);
    v3 = v6;
    xpc_remote_connection_send_message_with_reply();
  }

  else
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = "[CSRemoteRecordClient hasPendingTwoShotBeep]_block_invoke";
      _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s Cannot ask hasPendingTwoShotBeep while connection does not exist", buf, 0xCu);
    }

    dispatch_semaphore_signal(*(a1 + 48));
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __45__CSRemoteRecordClient_hasPendingTwoShotBeep__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (MEMORY[0x1E12BAC70]() == MEMORY[0x1E69E9E80])
  {
    v3 = objc_alloc(MEMORY[0x1E695DF20]);
    v4 = [v3 _cs_initWithXPCObject:v7];

    if (v4)
    {
      v5 = [v4 objectForKeyedSubscript:@"replyHasPendingTwoShotBeep"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"replyHasPendingTwoShotBeep"];
        *(*(*(a1 + 40) + 8) + 24) = [v6 BOOLValue];
      }
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (id)voiceTriggerEventInfo
{
  v30[1] = *MEMORY[0x1E69E9840];
  v29 = @"COMMAND";
  v30[0] = @"voiceTriggerEventInfo";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v4 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__14137;
  v23 = __Block_byref_object_dispose__14138;
  v24 = 0;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__CSRemoteRecordClient_voiceTriggerEventInfo__block_invoke;
  v15[3] = &unk_1E865C858;
  v15[4] = self;
  v6 = v3;
  v16 = v6;
  v18 = &v19;
  v7 = v4;
  v17 = v7;
  dispatch_async(queue, v15);
  v8 = dispatch_time(0, 1000000000);
  v9 = dispatch_semaphore_wait(v7, v8);
  v10 = CSLogContextFacilityCoreSpeech;
  if (v9 && os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v26 = "[CSRemoteRecordClient voiceTriggerEventInfo]";
    _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, "%s Getting reply timed out!!", buf, 0xCu);
    v10 = CSLogContextFacilityCoreSpeech;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v20[5];
    *buf = 136315394;
    v26 = "[CSRemoteRecordClient voiceTriggerEventInfo]";
    v27 = 2114;
    v28 = v11;
    _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Raw VoiceTriggerEventInfo from remote = %{public}@", buf, 0x16u);
  }

  v12 = v20[5];

  _Block_object_dispose(&v19, 8);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

void __45__CSRemoteRecordClient_voiceTriggerEventInfo__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    v6 = *(a1 + 48);
    v3 = v6;
    xpc_remote_connection_send_message_with_reply();
  }

  else
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = "[CSRemoteRecordClient voiceTriggerEventInfo]_block_invoke";
      _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s Cannot ask VoiceTriggerEventInfo while connection does not exist", buf, 0xCu);
    }

    dispatch_semaphore_signal(*(a1 + 48));
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __45__CSRemoteRecordClient_voiceTriggerEventInfo__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  if (MEMORY[0x1E12BAC70]() == MEMORY[0x1E69E9E80])
  {
    v3 = objc_alloc(MEMORY[0x1E695DF20]);
    v4 = [v3 _cs_initWithXPCObject:v9];

    if (v4)
    {
      v5 = [v4 objectForKeyedSubscript:@"replyVoiceTriggerEventInfo"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"replyVoiceTriggerEventInfo"];
        v7 = *(*(a1 + 40) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;
      }
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (BOOL)isRecording
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__CSRemoteRecordClient_isRecording__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)didPlayEndpointBeep
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSRemoteRecordClient didPlayEndpointBeep]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &buf, 0xCu);
  }

  v23 = @"COMMAND";
  v24[0] = @"didPlayEndpointBeep";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v5 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x2020000000;
  v22 = 0;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __43__CSRemoteRecordClient_didPlayEndpointBeep__block_invoke;
  v14[3] = &unk_1E865C858;
  v14[4] = self;
  v7 = v4;
  v15 = v7;
  p_buf = &buf;
  v8 = v5;
  v16 = v8;
  dispatch_async(queue, v14);
  v9 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *v18 = 136315138;
      v19 = "[CSRemoteRecordClient didPlayEndpointBeep]";
      _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, "%s Getting reply timed out!!", v18, 0xCu);
    }
  }

  v11 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void __43__CSRemoteRecordClient_didPlayEndpointBeep__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    v6 = *(a1 + 48);
    v3 = v6;
    xpc_remote_connection_send_message_with_reply();
  }

  else
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = "[CSRemoteRecordClient didPlayEndpointBeep]_block_invoke";
      _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s Cannot ask didPlayEndpointBeep while connection does not exist", buf, 0xCu);
    }

    dispatch_semaphore_signal(*(a1 + 48));
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __43__CSRemoteRecordClient_didPlayEndpointBeep__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (MEMORY[0x1E12BAC70]() == MEMORY[0x1E69E9E80])
  {
    v3 = objc_alloc(MEMORY[0x1E695DF20]);
    v4 = [v3 _cs_initWithXPCObject:v7];

    if (v4)
    {
      v5 = [v4 objectForKeyedSubscript:@"replyDidPlayEndpointBeep"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"replyDidPlayEndpointBeep"];
        *(*(*(a1 + 40) + 8) + 24) = [v6 BOOLValue];
      }
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (BOOL)stopRecording:(id *)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v25 = @"COMMAND";
  v26[0] = @"stopRecording";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14137;
  v19 = __Block_byref_object_dispose__14138;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CSRemoteRecordClient_stopRecording___block_invoke;
  block[3] = &unk_1E865C808;
  block[4] = self;
  v7 = v5;
  v12 = v7;
  v13 = &v21;
  v14 = &v15;
  dispatch_sync(queue, block);
  if (a3)
  {
    *a3 = v16[5];
  }

  v8 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void __38__CSRemoteRecordClient_stopRecording___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    xpc_remote_connection_send_message();

    v3 = 1;
  }

  else
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[CSRemoteRecordClient stopRecording:]_block_invoke";
      _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s Cannot stop recording while connection does not exist", &v9, 0xCu);
    }

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:302 userInfo:0];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *(*(a1 + 32) + 40) = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)startRecordingWithOptions:(id)a3 error:(id *)a4
{
  v28[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27[0] = @"COMMAND";
  v27[1] = @"startRecordingOptions";
  v28[0] = @"startRecording";
  v28[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__14137;
  v21 = __Block_byref_object_dispose__14138;
  v22 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CSRemoteRecordClient_startRecordingWithOptions_error___block_invoke;
  block[3] = &unk_1E865C808;
  block[4] = self;
  v9 = v7;
  v14 = v9;
  v15 = &v23;
  v16 = &v17;
  dispatch_sync(queue, block);
  if (a4)
  {
    *a4 = v18[5];
  }

  v10 = *(v24 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void __56__CSRemoteRecordClient_startRecordingWithOptions_error___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    xpc_remote_connection_send_message();

    v3 = 1;
  }

  else
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[CSRemoteRecordClient startRecordingWithOptions:error:]_block_invoke";
      _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s Cannot start recording while connection does not exist", &v9, 0xCu);
    }

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:302 userInfo:0];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *(*(a1 + 32) + 40) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handleTwoShotDetectedMessage:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 _cs_initWithXPCObject:v5];

  if (!v7 || ([v7 objectForKeyedSubscript:@"time"], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v15 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v18 = 136315138;
    v19 = "[CSRemoteRecordClient _handleTwoShotDetectedMessage:]";
    v16 = "%s Cannot handle TwoShotDetected message since it failed to decode xpcObject to NSDictionary";
LABEL_9:
    _os_log_error_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_ERROR, v16, &v18, 0xCu);
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0)
  {
    v15 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v18 = 136315138;
    v19 = "[CSRemoteRecordClient _handleTwoShotDetectedMessage:]";
    v16 = "%s Cannot report two shot since delegate doesn't have protocol implemented";
    goto LABEL_9;
  }

  v11 = [v7 objectForKeyedSubscript:@"time"];
  [v11 doubleValue];
  v13 = v12;

  v14 = objc_loadWeakRetained(&self->_delegate);
  [v14 remoteRecordTwoShotDetectedAtTime:v13];

LABEL_10:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)_handleDidStartRecordingMessage:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 _cs_initWithXPCObject:v5];

  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[CSRemoteRecordClient _handleDidStartRecordingMessage:]";
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  v9 = [v7 objectForKey:@"didStartRecordingError"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    if (v9)
    {
      v12 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "[CSRemoteRecordClient _handleDidStartRecordingMessage:]";
        v25 = 2114;
        v26 = v9;
        _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, "%s DidStartRecording error : %{public}@", buf, 0x16u);
      }

      v13 = objc_loadWeakRetained(&self->_delegate);
      audioStreamHandleId = self->_audioStreamHandleId;
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:303 userInfo:0];
      [v13 remoteRecordDidStartRecordingWithStreamHandleId:audioStreamHandleId error:v15];

      if (self->_device)
      {
        type = remote_device_get_type();
      }

      else
      {
        type = 0;
      }

      v17 = +[CSDiagnosticReporter sharedInstance];
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{type, @"Device Type"}];
      v21[1] = @"error";
      v22[0] = v18;
      v22[1] = v9;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
      [v17 submitRemoteCoreSpeechIssueReport:@"remoteCoreSpeechSubtypeStartAudioRecordingFailed" context:v19];
    }

    else
    {
      v17 = objc_loadWeakRetained(&self->_delegate);
      [v17 remoteRecordDidStartRecordingWithStreamHandleId:self->_audioStreamHandleId error:0];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_handleServerMessage:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", xpc_dictionary_get_string(v4, "COMMAND")];
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[CSRemoteRecordClient _handleServerMessage:]";
    v19 = 2114;
    v20 = v5;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  if ([v5 isEqualToString:@"didStartRecording"])
  {
    [(CSRemoteRecordClient *)self _handleDidStartRecordingMessage:v4];
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"didStopRecording"])
  {
    self->_isRemoteRecording = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }

    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 remoteRecordDidStopRecordingWithWithStreamHandleId:self->_audioStreamHandleId error:0];
LABEL_8:

    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"LPCMBufferAvailable"])
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      goto LABEL_16;
    }

    v12 = objc_alloc(MEMORY[0x1E695DF20]);
    v9 = [v12 _cs_initWithXPCObject:v4];

    if (v9)
    {
      v13 = [v9 objectForKeyedSubscript:@"buffer"];

      if (v13)
      {
        v14 = [v9 objectForKeyedSubscript:@"buffer"];
        v15 = objc_loadWeakRetained(&self->_delegate);
        [v15 remoteRecordLPCMBufferAvailable:v14 streamHandleId:self->_audioStreamHandleId];
      }
    }

    goto LABEL_8;
  }

  if ([v5 isEqualToString:@"twoShotDetected"])
  {
    [(CSRemoteRecordClient *)self _handleTwoShotDetectedMessage:v4];
  }

LABEL_16:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handleServerError:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {
    if (v4 == MEMORY[0x1E69E9E20] || v4 == MEMORY[0x1E69E9E18])
    {
      v6 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315138;
        v12 = "[CSRemoteRecordClient _handleServerError:]";
        _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s connection disconnected", &v11, 0xCu);
      }

      if (self->_device)
      {
        remote_device_cancel();
      }
    }

    else
    {
      string = xpc_dictionary_get_string(v4, *MEMORY[0x1E69E9E28]);
      v8 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "[CSRemoteRecordClient _handleServerError:]";
        v13 = 2082;
        v14 = string;
        _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s connection error: %{public}s", &v11, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_handleServerEvent:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {
    v5 = MEMORY[0x1E12BAC70](v4);
    if (MEMORY[0x1E12BAC70](v4) == MEMORY[0x1E69E9E98])
    {
      v8 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315138;
        v11 = "[CSRemoteRecordClient _handleServerEvent:]";
        _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s remoteXPC connection get failed", &v10, 0xCu);
      }

      [(CSRemoteRecordClient *)self _handleServerError:v4];
    }

    else
    {
      if (v5 == MEMORY[0x1E69E9E80])
      {
        [(CSRemoteRecordClient *)self _handleServerMessage:v4];
        goto LABEL_13;
      }

      v6 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315138;
        v11 = "[CSRemoteRecordClient _handleServerEvent:]";
        v7 = "%s Ignore unknown type message";
LABEL_8:
        _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, v7, &v10, 0xCu);
      }
    }
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[CSRemoteRecordClient _handleServerEvent:]";
      v7 = "%s cannot handle server event since event is nil";
      goto LABEL_8;
    }
  }

LABEL_13:

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isConnected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__CSRemoteRecordClient_isConnected__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __35__CSRemoteRecordClient_isConnected__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 16))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)waitingForConnection:(double)a3 error:(id *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = [(CSDispatchGroup *)self->_deviceWaitingGroup waitWithTimeout:dispatch_time(0, (a3 * 1000000000.0))];
  if (!v6)
  {
    if ([(CSRemoteRecordClient *)self isConnected])
    {
      v9 = 1;
      goto LABEL_15;
    }

    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[CSRemoteRecordClient waitingForConnection:error:]";
      _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, "%s Device is connected but RemoteXPC service is not connected", &v14, 0xCu);
      if (!a4)
      {
        goto LABEL_14;
      }
    }

    else if (!a4)
    {
      goto LABEL_14;
    }

    v8 = 302;
    goto LABEL_10;
  }

  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315138;
    v15 = "[CSRemoteRecordClient waitingForConnection:error:]";
    _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Device connection waiting timed out", &v14, 0xCu);
    if (a4)
    {
      goto LABEL_4;
    }
  }

  else if (a4)
  {
LABEL_4:
    v8 = 301;
LABEL_10:
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:v8 userInfo:0];
    v9 = 0;
    *a4 = v11;
    goto LABEL_15;
  }

LABEL_14:
  v9 = 0;
LABEL_15:
  if (v6)
  {
    result = 0;
  }

  else
  {
    result = v9;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)didDeviceDisconnect:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CSRemoteRecordClient didDeviceDisconnect:]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CSRemoteRecordClient_didDeviceDisconnect___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
  v6 = *MEMORY[0x1E69E9840];
}

void __44__CSRemoteRecordClient_didDeviceDisconnect___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained((*(a1 + 32) + 48));
    [v6 remoteRecordConnectionDisconnected:*(a1 + 32)];
  }
}

- (void)didDeviceConnect:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[CSRemoteRecordClient didDeviceConnect:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__CSRemoteRecordClient_didDeviceConnect___block_invoke;
  v9[3] = &unk_1E865C970;
  v10 = v4;
  v11 = self;
  v7 = v4;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __41__CSRemoteRecordClient_didDeviceConnect___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  remote_device_get_type();
  v3 = *(a1 + 32);
  v4 = remote_device_copy_service();
  if (v4)
  {
    v5 = *(*(a1 + 40) + 8);
    v6 = xpc_remote_connection_create_with_remote_service();
    objc_initWeak(location, *(a1 + 40));
    objc_copyWeak(&v9, location);
    xpc_remote_connection_set_event_handler();
    xpc_remote_connection_activate();
    objc_storeStrong((*(a1 + 40) + 16), v6);
    [*(*(a1 + 40) + 32) leave];
    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *location = 136315394;
      *&location[4] = "[CSRemoteRecordClient didDeviceConnect:]_block_invoke";
      v11 = 2082;
      v12 = "com.apple.corespeech.xpc.remote.record";
      _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Service: %{public}s not found", location, 0x16u);
    }

    [*(*(a1 + 40) + 32) leave];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __41__CSRemoteRecordClient_didDeviceConnect___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleServerEvent:v3];
}

- (CSRemoteRecordClient)initWithQueue:(id)a3 IsRemoteRecording:(BOOL)a4
{
  v7 = a3;
  if (v7)
  {
    v12.receiver = self;
    v12.super_class = CSRemoteRecordClient;
    v8 = [(CSRemoteRecordClient *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_queue, a3);
      v9->_isRemoteRecording = a4;
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSRemoteRecordClient dealloc]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (self->_connection)
  {
    xpc_remote_connection_cancel();
  }

  if (self->_device)
  {
    remote_device_cancel();
  }

  v5.receiver = self;
  v5.super_class = CSRemoteRecordClient;
  [(CSRemoteRecordClient *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (CSRemoteRecordClient)init
{
  v3 = [[CSRemoteRecordClient alloc] initWithDeviceId:0 audioStreamHandleId:1];

  return v3;
}

- (CSRemoteRecordClient)initWithDeviceId:(id)a3 audioStreamHandleId:(unint64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!+[CSUtils isDarwinOS])
  {
    v27.receiver = self;
    v27.super_class = CSRemoteRecordClient;
    self = [(CSRemoteRecordClient *)&v27 init];
    if (self)
    {
      v9 = dispatch_queue_create("CSRemoteRecordClient Queue", 0);
      queue = self->_queue;
      self->_queue = v9;

      v11 = objc_alloc_init(CSDispatchGroup);
      deviceWaitingGroup = self->_deviceWaitingGroup;
      self->_deviceWaitingGroup = v11;

      objc_initWeak(&location, self);
      v13 = self->_queue;
      if (+[CSUtils hasRemoteBuiltInMic](CSUtils, "hasRemoteBuiltInMic") && (!v7 || [v7 isEqualToString:@"BuiltInMicrophoneDevice"]))
      {
        v14 = remote_device_copy_unique_of_type();
        device = self->_device;
        self->_device = v14;
      }

      else
      {
        *buf = 0uLL;
        v16 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
        [v16 getUUIDBytes:buf];
        v17 = remote_device_copy_device_with_uuid();
        v18 = self->_device;
        self->_device = v17;
      }

      if (!self->_device)
      {
        v23 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "[CSRemoteRecordClient initWithDeviceId:audioStreamHandleId:]";
          _os_log_error_impl(&dword_1DDA4B000, v23, OS_LOG_TYPE_ERROR, "%s There is no remote device", buf, 0xCu);
        }

        objc_destroyWeak(&location);
        goto LABEL_2;
      }

      [(CSDispatchGroup *)self->_deviceWaitingGroup enter];
      v19 = self->_device;
      v24[1] = MEMORY[0x1E69E9820];
      v24[2] = 3221225472;
      v24[3] = __61__CSRemoteRecordClient_initWithDeviceId_audioStreamHandleId___block_invoke;
      v24[4] = &unk_1E865C7D8;
      objc_copyWeak(&v25, &location);
      remote_device_set_connected_callback();
      v20 = self->_device;
      objc_copyWeak(v24, &location);
      remote_device_set_disconnected_callback();
      self->_audioStreamHandleId = a4;
      objc_storeStrong(&self->_deviceId, a3);
      objc_destroyWeak(v24);
      objc_destroyWeak(&v25);

      objc_destroyWeak(&location);
    }

    self = self;
    v8 = self;
    goto LABEL_12;
  }

LABEL_2:
  v8 = 0;
LABEL_12:

  v21 = *MEMORY[0x1E69E9840];
  return v8;
}

void __61__CSRemoteRecordClient_initWithDeviceId_audioStreamHandleId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didDeviceConnect:v3];
}

void __61__CSRemoteRecordClient_initWithDeviceId_audioStreamHandleId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didDeviceDisconnect:v3];
}

@end