@interface CKVoiceController
- (CKVoiceController)initWithActivationMode:(int64_t)mode recordSettings:(id)settings queue:(id)queue;
- (CKVoiceControllerDelegate)delegate;
- (float)averagePower;
- (void)cleanup;
- (void)dealloc;
- (void)messageSent:(id)sent;
- (void)playAlertSoundForType:(int)type;
- (void)record;
- (void)releaseAudioSession;
- (void)setActivationMode:(int64_t)mode;
- (void)startUpdatingPower;
- (void)stop;
- (void)stopUpdatingPower;
- (void)voiceControllerAudioCallback:(id)callback forStream:(unint64_t)stream buffer:(id)buffer;
- (void)voiceControllerDidStartRecording:(id)recording forStream:(unint64_t)stream successfully:(BOOL)successfully error:(id)error;
- (void)voiceControllerDidStopRecording:(id)recording forStream:(unint64_t)stream forReason:(int64_t)reason;
- (void)voiceControllerDidStopRecordingForClientError;
- (void)voiceControllerStreamInvalidated:(id)invalidated forStream:(unint64_t)stream;
@end

@implementation CKVoiceController

- (void)dealloc
{
  [(CKVoiceController *)self cleanup];
  v3.receiver = self;
  v3.super_class = CKVoiceController;
  [(CKVoiceController *)&v3 dealloc];
}

- (void)cleanup
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  voiceController = [(CKVoiceController *)self voiceController];

  if (voiceController)
  {
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x3032000000;
    v7[3] = __Block_byref_object_copy__35;
    v7[4] = __Block_byref_object_dispose__35;
    voiceController2 = [(CKVoiceController *)self voiceController];
    [(CKVoiceController *)self setVoiceController:0];
    queue = [(CKVoiceController *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__CKVoiceController_cleanup__block_invoke;
    block[3] = &unk_1E72EB968;
    block[4] = v7;
    dispatch_async(queue, block);

    _Block_object_dispose(v7, 8);
  }
}

void __28__CKVoiceController_cleanup__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v4 = 0;
  [v1 teardownWithError:&v4];
  v2 = v4;
  if (v2 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v6 = v2;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "[AVVoiceController teardownWithError:...] failed with error %@", buf, 0xCu);
    }
  }
}

- (CKVoiceController)initWithActivationMode:(int64_t)mode recordSettings:(id)settings queue:(id)queue
{
  settingsCopy = settings;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = CKVoiceController;
  v10 = [(CKVoiceController *)&v19 init];
  v11 = v10;
  if (v10)
  {
    [(CKVoiceController *)v10 setQueue:queueCopy];
    [(CKVoiceController *)v11 setRecordSettings:settingsCopy];
    [(CKVoiceController *)v11 _setActivationMode:mode];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel_messageSent_ name:*MEMORY[0x1E69A58E8] object:0];

    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
    [mEMORY[0x1E69A5AF8] _setPostMessageSentNotifications:1];

    queue = [(CKVoiceController *)v11 queue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__CKVoiceController_initWithActivationMode_recordSettings_queue___block_invoke;
    v16[3] = &unk_1E72ED810;
    v17 = v11;
    modeCopy = mode;
    dispatch_async(queue, v16);
  }

  return v11;
}

void __65__CKVoiceController_initWithActivationMode_recordSettings_queue___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v2 = [objc_alloc(MEMORY[0x1E6958580]) initVoiceControllerForClient:3 withError:&v16];
  v3 = v16;
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  v5 = v4;
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = v3;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "[AVVoiceController initWithContext:...] failed with error %@", buf, 0xCu);
      }
    }

    [*(a1 + 32) voiceControllerDidStopRecordingForClientError];
  }

  else
  {
    if (v6)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "[AVVoiceController initWithContext:...] setting up.", buf, 2u);
      }
    }

    [v2 setRecordDelegate:*(a1 + 32)];
    v9 = [MEMORY[0x1E695DFF8] ckURLForResource:@"MessageRecordStart" withExtension:@"caf"];
    [v2 setAlertSoundFromURL:v9 forType:1];
    v10 = [MEMORY[0x1E695DFF8] ckURLForResource:@"MessageRecordStop" withExtension:@"caf"];
    [v2 setAlertSoundFromURL:v10 forType:2];
    [*(a1 + 32) setVoiceController:v2];
    v11 = [objc_alloc(MEMORY[0x1E6958538]) initWithMode:*(a1 + 40) deviceUID:0];
    v14 = 0;
    v15 = 0;
    v12 = [v2 setContext:v11 streamType:&v15 error:&v14];
    v3 = v14;
    if (v3)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v18 = v3;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "[voiceController setContext:streamType:error:] failed with error: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      [*(a1 + 32) setStreamID:v12];
    }
  }
}

- (void)setActivationMode:(int64_t)mode
{
  [(CKVoiceController *)self _setActivationMode:?];
  queue = [(CKVoiceController *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__CKVoiceController_setActivationMode___block_invoke;
  v6[3] = &unk_1E72ED810;
  v6[4] = self;
  v6[5] = mode;
  dispatch_async(queue, v6);
}

void __39__CKVoiceController_setActivationMode___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) voiceController];
  v3 = [objc_alloc(MEMORY[0x1E6958538]) initWithMode:*(a1 + 40) deviceUID:0];
  v7 = 0;
  v8 = 0;
  v4 = [v2 setContext:v3 streamType:&v8 error:&v7];
  v5 = v7;
  if (v5 || ([*(a1 + 32) setStreamID:v4], !v2))
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v10 = v5;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "[AVVoiceController setCurrentContext:] failed with error %@", buf, 0xCu);
      }
    }

    [*(a1 + 32) voiceControllerDidStopRecordingForClientError];
  }
}

- (void)record
{
  queue = [(CKVoiceController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__CKVoiceController_record__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(queue, block);
}

void __27__CKVoiceController_record__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) voiceController];
  v4 = [*v2 streamID];
  v26 = 0;
  [v3 activateAudioSessionForStream:v4 isPrewarm:0 recordMode:1 error:&v26];
  v5 = v26;

  v6 = objc_alloc(MEMORY[0x1E6958560]);
  v7 = [*v2 streamID];
  v8 = [*v2 recordSettings];
  v9 = [v6 initWithStreamID:v7 settings:v8 bufferDuration:0.1];

  [v9 setMeteringEnabled:1];
  v10 = [*v2 voiceController];
  v25 = v5;
  v11 = [v10 prepareRecordForStream:v9 error:&v25];
  v12 = v25;

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "[AVVoiceController prepareRecordWithSettings:...] succeeded, about to start recording", buf, 2u);
      }
    }

    v15 = [objc_alloc(MEMORY[0x1E6958528]) initWithStreamID:{objc_msgSend(*(a1 + 32), "streamID")}];
    v16 = [*(a1 + 32) voiceController];
    v24 = 0;
    [v16 configureAlertBehaviorForStream:v15 error:&v24];
    v17 = v24;

    if (v17 && IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = v17;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "[voiceController configureAlertBehaviorForStream] failed with error: %@", buf, 0xCu);
      }
    }

    v19 = [objc_alloc(MEMORY[0x1E6958568]) initWithStreamID:objc_msgSend(*(a1 + 32) atStartHostTime:{"streamID"), 0}];
    [v19 setStartAlert:2];

    v20 = [*(a1 + 32) voiceController];
    v23 = 0;
    [v20 startRecordForStream:v19 error:&v23];
    v12 = v23;

    if (v12 && IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = v12;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "[voiceController startRecordForStream] failed with error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    [*(a1 + 32) voiceControllerDidStopRecordingForClientError];
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = v12;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "[voiceController prepareRecordForStream:...] failed with error:%@", buf, 0xCu);
      }
    }
  }
}

- (void)stop
{
  [(CKVoiceController *)self stopUpdatingPower];
  queue = [(CKVoiceController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__CKVoiceController_stop__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(queue, block);
}

void __25__CKVoiceController_stop__block_invoke(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "[AVVoiceController stop] about to stop recording", v4, 2u);
    }
  }

  v3 = [*(a1 + 32) voiceController];
  [v3 stopRecordForStream:objc_msgSend(*(a1 + 32) error:{"streamID"), 0}];
}

- (void)playAlertSoundForType:(int)type
{
  _activationMode = [(CKVoiceController *)self _activationMode];
  queue = [(CKVoiceController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CKVoiceController_playAlertSoundForType___block_invoke;
  block[3] = &unk_1E72F3740;
  typeCopy = type;
  block[4] = self;
  block[5] = _activationMode;
  dispatch_async(queue, block);
}

void __43__CKVoiceController_playAlertSoundForType___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 48);
      v9[0] = 67109120;
      v9[1] = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "[AVVoiceController playAlertSoundForType:...] playing alert type: %u", v9, 8u);
    }
  }

  v4 = *(a1 + 48) & 0xFFFFFFFE;
  if (*(a1 + 40) == 1768764005 && v4 == 2)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9[0]) = 0;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "[AVVoiceController playAlertSoundForType:...] activation mode was raise, resetting activation context", v9, 2u);
      }
    }

    v7 = [MEMORY[0x1E6958460] sharedInstance];
    [v7 setActivationContext:MEMORY[0x1E695E0F8] error:0];
  }

  v8 = [*(a1 + 32) voiceController];
  [v8 playAlertSoundForType:*(a1 + 48) overrideMode:-1];

  if (v4 == 2)
  {
    usleep(0xB71B0u);
  }
}

- (void)releaseAudioSession
{
  queue = [(CKVoiceController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CKVoiceController_releaseAudioSession__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(queue, block);
}

void __40__CKVoiceController_releaseAudioSession__block_invoke(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "[AVVoiceController releaseAudioSession]", buf, 2u);
    }
  }

  v3 = [*(a1 + 32) voiceController];
  [v3 deactivateAudioSessionForStream:objc_msgSend(*(a1 + 32) withOptions:"streamID") error:{1, 0}];

  v4 = [MEMORY[0x1E6958460] sharedInstance];
  [v4 setActivationContext:MEMORY[0x1E695E0F8] error:0];

  v5 = [MEMORY[0x1E6958460] sharedInstance];
  v6 = *MEMORY[0x1E6958130];
  v11 = 0;
  v7 = [v5 setMode:v6 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __40__CKVoiceController_releaseAudioSession__block_invoke_cold_1(v8, v9);
    }

    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "reverted audio session back to AVAudioSessionModeDefault", v10, 2u);
    }

LABEL_11:
  }
}

- (void)voiceControllerDidStartRecording:(id)recording forStream:(unint64_t)stream successfully:(BOOL)successfully error:(id)error
{
  successfullyCopy = successfully;
  v15 = *MEMORY[0x1E69E9840];
  recordingCopy = recording;
  errorCopy = error;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v14 = successfullyCopy;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "voiceControllerDidStartRecording:successfully: %d", buf, 8u);
    }
  }

  if (successfullyCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__CKVoiceController_voiceControllerDidStartRecording_forStream_successfully_error___block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    [(CKVoiceController *)self voiceControllerDidStopRecordingForClientError];
  }
}

void __83__CKVoiceController_voiceControllerDidStartRecording_forStream_successfully_error___block_invoke(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "voiceControllerDidStartRecording:successfully:..., about to start updating power", v4, 2u);
    }
  }

  [*(a1 + 32) startUpdatingPower];
  v3 = [*(a1 + 32) delegate];
  [v3 voiceControllerDidStartRecording:*(a1 + 32)];
}

- (void)voiceControllerAudioCallback:(id)callback forStream:(unint64_t)stream buffer:(id)buffer
{
  bufferCopy = buffer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__CKVoiceController_voiceControllerAudioCallback_forStream_buffer___block_invoke;
  v8[3] = &unk_1E72EB8D0;
  v8[4] = self;
  v9 = bufferCopy;
  v7 = bufferCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __67__CKVoiceController_voiceControllerAudioCallback_forStream_buffer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 voiceControllerRecordBufferAvailable:*(a1 + 32) buffer:*(a1 + 40)];
}

- (void)voiceControllerDidStopRecording:(id)recording forStream:(unint64_t)stream forReason:(int64_t)reason
{
  v12 = *MEMORY[0x1E69E9840];
  recordingCopy = recording;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      reasonCopy = reason;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "voiceControllerDidStopRecording:forReason: %d", buf, 8u);
    }
  }

  [(CKVoiceController *)self stopUpdatingPower];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__CKVoiceController_voiceControllerDidStopRecording_forStream_forReason___block_invoke;
  v9[3] = &unk_1E72ED810;
  v9[4] = self;
  v9[5] = reason;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __73__CKVoiceController_voiceControllerDidStopRecording_forStream_forReason___block_invoke(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "voiceControllerDidStopRecording:forReason: block run", v7, 2u);
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = v3 == -11786;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  v6 = [*(a1 + 32) delegate];
  [v6 voiceControllerDidFinishRecording:*(a1 + 32) successfully:v5];
}

- (void)voiceControllerStreamInvalidated:(id)invalidated forStream:(unint64_t)stream
{
  [(CKVoiceController *)self setStreamID:*MEMORY[0x1E6958398], stream];
  _activationMode = [(CKVoiceController *)self _activationMode];

  [(CKVoiceController *)self setActivationMode:_activationMode];
}

- (float)averagePower
{
  powerUpdateTimer = [(CKVoiceController *)self powerUpdateTimer];

  if (powerUpdateTimer)
  {
    voiceController = [(CKVoiceController *)self voiceController];
    [voiceController updateMeterForStream:{-[CKVoiceController streamID](self, "streamID")}];
    [voiceController getAveragePowerForStream:-[CKVoiceController streamID](self forChannel:{"streamID"), 0}];
    v6 = v5;
  }

  else
  {
    voiceController = +[CKUIBehavior sharedBehaviors];
    [voiceController audioRecordingViewMinimumDBLevel];
    v6 = v7;
  }

  return v6;
}

- (void)voiceControllerDidStopRecordingForClientError
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "voiceControllerDidStopRecordingForClientError", v5, 2u);
    }
  }

  voiceController = [(CKVoiceController *)self voiceController];
  [(CKVoiceController *)self voiceControllerDidStopRecording:voiceController forStream:[(CKVoiceController *)self streamID] forReason:-11799];
}

- (void)startUpdatingPower
{
  powerUpdateTimer = [(CKVoiceController *)self powerUpdateTimer];
  if (powerUpdateTimer)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Shouldn't have a power update timer already", buf, 2u);
      }
    }

    [(CKVoiceController *)self stopUpdatingPower];
  }

  queue = [(CKVoiceController *)self queue];
  v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queue);

  dispatch_source_set_timer(v6, 0, 0x3F940AAuLL, 0);
  objc_initWeak(buf, self);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __39__CKVoiceController_startUpdatingPower__block_invoke;
  v10 = &unk_1E72EBB98;
  objc_copyWeak(&v12, buf);
  selfCopy = self;
  dispatch_source_set_event_handler(v6, &v7);
  [(CKVoiceController *)self setPowerUpdateTimer:v6, v7, v8, v9, v10];
  dispatch_resume(v6);
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __39__CKVoiceController_startUpdatingPower__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained voiceController];
  [v3 updateMeterForStream:{objc_msgSend(*(a1 + 32), "streamID")}];
  [v3 getAveragePowerForStream:objc_msgSend(*(a1 + 32) forChannel:{"streamID"), 0}];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__CKVoiceController_startUpdatingPower__block_invoke_2;
  v6[3] = &unk_1E72F3768;
  v7 = WeakRetained;
  v8 = v4;
  v5 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __39__CKVoiceController_startUpdatingPower__block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  LODWORD(v2) = *(a1 + 40);
  [v3 voiceController:*(a1 + 32) didUpdateAveragePower:v2];
}

- (void)stopUpdatingPower
{
  powerUpdateTimer = [(CKVoiceController *)self powerUpdateTimer];
  if (powerUpdateTimer)
  {
    v4 = powerUpdateTimer;
    dispatch_source_cancel(powerUpdateTimer);
    [(CKVoiceController *)self setPowerUpdateTimer:0];
    powerUpdateTimer = v4;
  }
}

- (void)messageSent:(id)sent
{
  sentCopy = sent;
  queue = [(CKVoiceController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CKVoiceController_messageSent___block_invoke;
  block[3] = &unk_1E72EBA18;
  v8 = sentCopy;
  v6 = sentCopy;
  dispatch_async(queue, block);
}

uint64_t __33__CKVoiceController_messageSent___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "messageSent: %@", &v5, 0xCu);
    }
  }

  return usleep(0xB71B0u);
}

- (CKVoiceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __40__CKVoiceController_releaseAudioSession__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "failed to revert audio session back to AVAudioSessionModeDefault: %@", &v2, 0xCu);
}

@end