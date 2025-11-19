@interface CSAudioRecorder
+ (void)createSharedAudioSession;
+ (void)resetDuckSettings;
- (BOOL)_audioIsFromRemoteAccessory:(unint64_t)a3;
- (BOOL)_hasLocalPendingTwoShot;
- (BOOL)_isDarwinDeviceId:(id)a3;
- (BOOL)_needResetAudioInjectionIndex:(id)a3;
- (BOOL)_shouldInjectAudio;
- (BOOL)_shouldLogResourceNotAvailableError;
- (BOOL)_shouldUseRemoteBuiltInMic:(id)a3;
- (BOOL)_startAudioStreamForAudioInjectionWithAVVCContext:(id)a3;
- (BOOL)activateAudioSessionWithReason:(unint64_t)a3 streamHandleId:(unint64_t)a4 error:(id *)a5;
- (BOOL)clearListeningMicIndicatorProperty;
- (BOOL)deactivateAudioSession:(unint64_t)a3 error:(id *)a4;
- (BOOL)deactivateAudioSession:(unint64_t)a3 streamHandleId:(unint64_t)a4 error:(id *)a5;
- (BOOL)fetchSecureAudioStreamWithRecordDeviceIndicator:(id)a3 from:(unint64_t)a4 numSamples:(unint64_t)a5 hostTime:(unint64_t)a6 error:(id *)a7;
- (BOOL)isDuckingSupportedOnCurrentRouteWithStreamHandleID:(unint64_t)a3 error:(id *)a4;
- (BOOL)isNarrowBandWithStreamHandleId:(unint64_t)a3;
- (BOOL)isRecordingWithRecordDeviceIndicator:(id)a3;
- (BOOL)isSessionCurrentlyActivated;
- (BOOL)playAlertSoundForType:(int64_t)a3 overrideMode:(int64_t)a4;
- (BOOL)playAlertSoundForType:(int64_t)a3 recordDevideIndicator:(id)a4;
- (BOOL)prepareAudioStreamRecord:(id)a3 recordDeviceIndicator:(id)a4 error:(id *)a5;
- (BOOL)prewarmAudioSessionWithStreamHandleId:(unint64_t)a3 error:(id *)a4;
- (BOOL)setAlertSoundFromURL:(id)a3 forType:(int64_t)a4 force:(BOOL)a5;
- (BOOL)setCurrentContext:(id)a3 streamHandleId:(unint64_t)a4 error:(id *)a5;
- (BOOL)setListeningMicIndicatorPropertyForStream:(unint64_t)a3;
- (BOOL)setRecordMode:(int64_t)a3 streamHandleId:(unint64_t)a4 error:(id *)a5;
- (BOOL)startAudioStreamWithOption:(id)a3 recordDeviceIndicator:(id)a4 error:(id *)a5;
- (BOOL)stopAudioStreamWithRecordDeviceIndicator:(id)a3 error:(id *)a4;
- (CSAudioRecorder)init;
- (CSAudioRecorder)initWithQueue:(id)a3 error:(id *)a4;
- (CSAudioSessionEventProvidingDelegate)sessionEventDelegate;
- (float)recordingSampleRateWithStreamHandleId:(unint64_t)a3;
- (id)_compensateChannelDataIfNeeded:(id)a3 receivedNumChannels:(unsigned int)a4;
- (id)_createVoiceControllerWithError:(id *)a3;
- (id)_fetchRemoteRecordClientWithDeviceId:(id)a3 streamHandleId:(unint64_t)a4;
- (id)_getRecordSettingsWithRequest:(id)a3;
- (id)_getVoiceController;
- (id)_recordDeviceInfoWithStreamHandleId:(unint64_t)a3;
- (id)_recordModeString:(int64_t)a3;
- (id)_updateLanguageCodeForRemoteVTEIResult:(id)a3;
- (id)audioDeviceInfoWithStreamHandleId:(unint64_t)a3 recordDeviceIndicator:(id)a4;
- (id)fetchGibraltarVoiceTriggerInfoWithRecordDeviceIndicator:(id)a3;
- (id)getPlaybackRouteForStreamID:(unint64_t)a3;
- (id)metrics;
- (id)recordDeviceInfoWithStreamHandleId:(unint64_t)a3 recordDeviceIndicator:(id)a4;
- (id)recordRouteWithRecordDeviceIndicator:(id)a3;
- (id)recordSettingsWithStreamHandleId:(unint64_t)a3;
- (unint64_t)alertStartTime;
- (unint64_t)sensorStartForStream:(unint64_t)a3;
- (void)CSSystemDaemonAudioCallbackForStream:(unint64_t)a3 butterTimestamp:(unint64_t)a4;
- (void)CSSystemDaemonDidFinishAlertPlaybackOfType:(unint64_t)a3;
- (void)CSSystemDaemonDidStartRecordingForStream:(unint64_t)a3 successfully:(BOOL)a4;
- (void)CSSystemDaemonDidStopRecordingForStream:(unint64_t)a3 forReason:(int64_t)a4;
- (void)CSSystemDaemonDisconnected;
- (void)_audioRecorderDidStopRecordingForReason:(int64_t)a3 streamHandleID:(unint64_t)a4;
- (void)_destroyVoiceController;
- (void)_logResourceNotAvailableErrorIfNeeded:(id)a3;
- (void)_processAudioBuffer:(id)a3 audioStreamHandleId:(unint64_t)a4 arrivalTimestampToAudioRecorder:(unint64_t)a5;
- (void)_processAudioChain:(id)a3 audioStreamHandleId:(unint64_t)a4 remoteVAD:(id)a5 atTime:(unint64_t)a6 arrivalTimestampToAudioRecorder:(unint64_t)a7 numberOfChannels:(int)a8;
- (void)_processExclaveBufferCallbackFrom:(unint64_t)a3 hostTime:(unint64_t)a4;
- (void)_stopTrackingRemoteAccessoryStreamId:(unint64_t)a3;
- (void)_trackRemoteAccessoryStreamIdIfNeeded:(id)a3;
- (void)audioDecoderDidDecodePackets:(id)a3 audioStreamHandleId:(unint64_t)a4 buffer:(id)a5 remoteVAD:(id)a6 timestamp:(unint64_t)a7 arrivalTimestampToAudioRecorder:(unint64_t)a8 wasBuffered:(BOOL)a9 receivedNumChannels:(unsigned int)a10;
- (void)audioFileReaderBufferAvailable:(id)a3 buffer:(id)a4 atTime:(unint64_t)a5;
- (void)audioFileReaderDidStartRecording:(id)a3 successfully:(BOOL)a4 error:(id)a5;
- (void)configureAlertBehavior:(id)a3 audioStreamHandleId:(unint64_t)a4;
- (void)dealloc;
- (void)exclaveRecordClientAudioBuffer:(id)a3 audioStreamHandleId:(unint64_t)a4 audioBuffer:(id)a5 hostTime:(unint64_t)a6;
- (void)registerObserver:(id)a3;
- (void)remoteRecordConnectionDisconnected:(id)a3;
- (void)remoteRecordDidStartRecordingWithStreamHandleId:(unint64_t)a3 error:(id)a4;
- (void)remoteRecordDidStopRecordingWithWithStreamHandleId:(unint64_t)a3 error:(id)a4;
- (void)remoteRecordLPCMBufferAvailable:(id)a3 streamHandleId:(unint64_t)a4;
- (void)setAudioSessionEventDelegate:(id)a3;
- (void)setContext:(id)a3 completion:(id)a4;
- (void)unregisterObserver:(id)a3;
- (void)userSessionActivateMonitor:(id)a3 didReceivedUserSessionActiveHasChanged:(BOOL)a4;
- (void)voiceControllerAudioCallback:(id)a3 forStream:(unint64_t)a4 buffer:(id)a5;
- (void)voiceControllerBeginRecordInterruption:(id)a3;
- (void)voiceControllerBeginRecordInterruption:(id)a3 withContext:(id)a4;
- (void)voiceControllerDidFinishAlertPlayback:(id)a3 ofType:(int)a4 error:(id)a5;
- (void)voiceControllerDidSetAudioSessionActive:(id)a3 isActivated:(BOOL)a4;
- (void)voiceControllerDidStartRecording:(id)a3 forStream:(unint64_t)a4 successfully:(BOOL)a5 error:(id)a6;
- (void)voiceControllerDidStopRecording:(id)a3 forStream:(unint64_t)a4 forReason:(int64_t)a5;
- (void)voiceControllerEncoderErrorDidOccur:(id)a3 error:(id)a4;
- (void)voiceControllerEndRecordInterruption:(id)a3;
- (void)voiceControllerRecordHardwareConfigurationDidChange:(id)a3 toConfiguration:(int)a4;
- (void)voiceControllerStreamInvalidated:(id)a3 forStream:(unint64_t)a4;
- (void)voiceControllerWillSetAudioSessionActive:(id)a3 willActivate:(BOOL)a4;
- (void)willDestroy;
@end

@implementation CSAudioRecorder

- (id)_getVoiceController
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2230;
  v10 = __Block_byref_object_dispose__2231;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__CSAudioRecorder__getVoiceController__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unint64_t)alertStartTime
{
  v2 = [(CSAudioRecorder *)self _getVoiceController];
  v3 = [v2 alertStartTime];

  return v3;
}

- (BOOL)_shouldInjectAudio
{
  v2 = +[CSFPreferences sharedPreferences];
  v3 = [v2 audioInjectionEnabled];

  return v3;
}

- (BOOL)clearListeningMicIndicatorProperty
{
  v16 = *MEMORY[0x1E69E9840];
  if (+[CSUtils supportsSecureSensor])
  {
    [(CSAudioRecorder *)self sensorStop];
  }

  if (+[CSUtils isDarwinOS])
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x1E6958468] sharedInstance];
    v11 = 0;
    v3 = [v4 setMXSessionProperty:@"MicrophoneAttribution" value:MEMORY[0x1E695E110] error:&v11];
    v5 = v11;

    v6 = CSLogCategoryAudio;
    if (v3)
    {
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v13 = "[CSAudioRecorder clearListeningMicIndicatorProperty]";
        _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s success", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v9 = v6;
      v10 = [v5 localizedDescription];
      *buf = 136315394;
      v13 = "[CSAudioRecorder clearListeningMicIndicatorProperty]";
      v14 = 2112;
      v15 = v10;
      _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, "%s Failed to clear listening mic indicator lock property : %@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)isSessionCurrentlyActivated
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [(CSAudioRecorder *)self _getVoiceController];
  v3 = [v2 getCurrentSessionState];

  v4 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[CSAudioRecorder isSessionCurrentlyActivated]";
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Session State = %d", &v9, 0x12u);
    v4 = CSLogCategoryAudio;
  }

  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 6)
  {
    if (v5)
    {
      v9 = 136315138;
      v10 = "[CSAudioRecorder isSessionCurrentlyActivated]";
      v6 = "%s AudioSessionState = YES";
LABEL_8:
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, v6, &v9, 0xCu);
    }
  }

  else if (v5)
  {
    v9 = 136315138;
    v10 = "[CSAudioRecorder isSessionCurrentlyActivated]";
    v6 = "%s AudioSessionState = NO";
    goto LABEL_8;
  }

  result = v3 == 6;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (CSAudioSessionEventProvidingDelegate)sessionEventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionEventDelegate);

  return WeakRetained;
}

- (id)_recordModeString:(int64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 2)
  {
    v3 = @"Listening";
  }

  if (a3 == 1)
  {
    return @"Recording";
  }

  else
  {
    return v3;
  }
}

- (BOOL)_isDarwinDeviceId:(id)a3
{
  v3 = a3;
  v4 = +[CSRemoteDarwinDeviceInfo sharedInstance];
  v5 = [v4 isRemoteDarwinConnectedWithUUID:v3];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = +[CSRemoteDarwinDeviceInfo sharedInstance];
    v8 = [v7 fetchDeviceUUIDStringFromUID:v3];

    v6 = v8 != 0;
  }

  return v6;
}

- (id)_fetchRemoteRecordClientWithDeviceId:(id)a3 streamHandleId:(unint64_t)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (+[CSUtils hasRemoteCoreSpeech](CSUtils, "hasRemoteCoreSpeech") && (v7 = +[CSUtils hasRemoteBuiltInMic], a4 == 1) && v7)
  {
    v8 = @"BuiltInMicrophoneDevice";
    v9 = @"BuiltInMicrophoneDevice";
    v10 = v6;
  }

  else
  {
    v11 = +[CSRemoteDarwinDeviceInfo sharedInstance];
    v12 = [v11 hasDarwinDeviceConnected];

    v8 = v6;
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = +[CSRemoteDarwinDeviceInfo sharedInstance];
    v14 = [v13 fetchDeviceUUIDStringFromUID:v6];

    if (v14)
    {
      v10 = v14;

      v8 = v10;
    }

    else
    {
      v10 = 0;
      v8 = v6;
    }
  }

LABEL_10:
  remoteRecordClient = self->_remoteRecordClient;
  if (!remoteRecordClient)
  {
LABEL_16:
    v23 = [[CSRemoteRecordClient alloc] initWithDeviceId:v8 audioStreamHandleId:a4];
    v24 = self->_remoteRecordClient;
    self->_remoteRecordClient = v23;

    [(CSRemoteRecordClient *)self->_remoteRecordClient setDelegate:self];
    goto LABEL_17;
  }

  v16 = [(CSRemoteRecordClient *)remoteRecordClient deviceId];
  v17 = [v16 isEqualToString:v8];

  if ((v17 & 1) == 0)
  {
    v18 = self->_remoteRecordClient;
    if (v18)
    {
      v19 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [(CSRemoteRecordClient *)v18 deviceId];
        v33 = 136315650;
        v34 = "[CSAudioRecorder _fetchRemoteRecordClientWithDeviceId:streamHandleId:]";
        v35 = 2112;
        v36 = v21;
        v37 = 2112;
        v38 = v6;
        _os_log_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_DEFAULT, "%s Existing remoteRecordClient (deviceId = %@) doesn't match required one (deviceId = %@), create new remoteRecordClient", &v33, 0x20u);

        v18 = self->_remoteRecordClient;
      }

      [(CSRemoteRecordClient *)v18 setDelegate:0];
      v22 = self->_remoteRecordClient;
      self->_remoteRecordClient = 0;
    }

    goto LABEL_16;
  }

LABEL_17:
  if ([(CSRemoteRecordClient *)self->_remoteRecordClient audioStreamHandleId]!= a4)
  {
    v25 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_FAULT))
    {
      v30 = self->_remoteRecordClient;
      v31 = v25;
      v32 = [(CSRemoteRecordClient *)v30 audioStreamHandleId];
      v33 = 136315650;
      v34 = "[CSAudioRecorder _fetchRemoteRecordClientWithDeviceId:streamHandleId:]";
      v35 = 2050;
      v36 = a4;
      v37 = 2050;
      v38 = v32;
      _os_log_fault_impl(&dword_1DDA4B000, v31, OS_LOG_TYPE_FAULT, "%s The input streamHandleId(%{public}lu) is not expected(%{public}lu)", &v33, 0x20u);
    }
  }

  v26 = self->_remoteRecordClient;
  v27 = v26;

  v28 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)_getRecordSettingsWithRequest:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 useCustomizedRecordSettings])
  {
    v4 = v3;
  }

  else
  {
    v5 = [v3 recordContext];
    v4 = [CSAudioStreamRequest defaultRequestWithContext:v5];
  }

  v6 = [v4 audioFormat];
  if (v6 >= 3)
  {
    v8 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "[CSAudioRecorder _getRecordSettingsWithRequest:]";
      _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s Unsupported audio format!", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = *&aMcplsupoxeps[4 * v6];
  }

  v9 = [v4 numberOfChannels] > 1;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v7, *MEMORY[0x1E69582B8]}];
  v25[0] = v10;
  v24[1] = *MEMORY[0x1E6958340];
  v11 = MEMORY[0x1E696AD98];
  [v4 sampleRate];
  v12 = [v11 numberWithDouble:?];
  v25[1] = v12;
  v24[2] = *MEMORY[0x1E69582C0];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v4, "lpcmBitDepth")}];
  v25[2] = v13;
  v24[3] = *MEMORY[0x1E69582E0];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "lpcmIsFloat")}];
  v25[3] = v14;
  v24[4] = *MEMORY[0x1E6958308];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v4, "numberOfChannels")}];
  v25[4] = v15;
  v24[5] = *MEMORY[0x1E6958288];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v4, "encoderBitRate")}];
  v17 = *MEMORY[0x1E6958310];
  v18 = *MEMORY[0x1E6958320];
  v25[5] = v16;
  v25[6] = v18;
  v19 = *MEMORY[0x1E69582F8];
  v24[6] = v17;
  v24[7] = v19;
  v20 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  v25[7] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:8];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)audioFileReaderDidStartRecording:(id)a3 successfully:(BOOL)a4 error:(id)a5
{
  v6 = a5;
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__CSAudioRecorder_audioFileReaderDidStartRecording_successfully_error___block_invoke;
  v9[3] = &unk_1E865C970;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, v9);
}

- (void)audioFileReaderBufferAvailable:(id)a3 buffer:(id)a4 atTime:(unint64_t)a5
{
  v7 = a4;
  [(CSAudioRecorder *)self _processAudioChain:v7 audioStreamHandleId:0 remoteVAD:0 atTime:a5 arrivalTimestampToAudioRecorder:0 numberOfChannels:+[CSConfig inputRecordingNumberOfChannels]];
}

- (BOOL)_needResetAudioInjectionIndex:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && (v5 = *MEMORY[0x1E69583A8], [v3 objectForKeyedSubscript:*MEMORY[0x1E69583A8]], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v4 objectForKeyedSubscript:v5];
    v8 = [v7 unsignedIntegerValue];

    v10 = v8 != 1886352244 && v8 != 1635087471;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_hasLocalPendingTwoShot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__CSAudioRecorder__hasLocalPendingTwoShot__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __42__CSAudioRecorder__hasLocalPendingTwoShot__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 88);
  if (v2)
  {
    v3 = +[CSVoiceTriggerEventInfoProvider sharedInstance];
    *(*(*(a1 + 40) + 8) + 24) = v2 == [v3 triggerNotifiedMachTime];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v4 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 40) + 8) + 24);
    v6 = *(*(a1 + 32) + 88);
    v8 = 136315650;
    v9 = "[CSAudioRecorder _hasLocalPendingTwoShot]_block_invoke";
    v10 = 1026;
    v11 = v5;
    v12 = 2050;
    v13 = v6;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s hasLocalPendingTwoShot = %{public}d, token : %{public}llu", &v8, 0x1Cu);
  }

  *(*(a1 + 32) + 88) = 0;
  v7 = *MEMORY[0x1E69E9840];
}

- (void)remoteRecordConnectionDisconnected:(id)a3
{
  v4 = [a3 audioStreamHandleId];
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__CSAudioRecorder_remoteRecordConnectionDisconnected___block_invoke;
  v6[3] = &unk_1E865CC58;
  v6[4] = self;
  v6[5] = v4;
  dispatch_async(queue, v6);
}

void __54__CSAudioRecorder_remoteRecordConnectionDisconnected___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioRecorderDisconnected:{*(a1 + 32), v11}];
        }

        if (objc_opt_respondsToSelector())
        {
          [v7 audioRecorderStreamHandleIdInvalidated:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 48);
  *(v8 + 48) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

- (void)remoteRecordLPCMBufferAvailable:(id)a3 streamHandleId:(unint64_t)a4
{
  v6 = [(CSAudioRecorder *)self _compensateChannelDataIfNeeded:a3 receivedNumChannels:1];
  v7 = v6;
  if (v6 && [v6 length])
  {
    v8 = v7;
    if (+[CSConfig inputRecordingIsFloat])
    {
      v9 = [CSFLPCMTypeConverter convertToFloatLPCMBufFromShortLPCMBuf:v8];

      v8 = v9;
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__CSAudioRecorder_remoteRecordLPCMBufferAvailable_streamHandleId___block_invoke;
    block[3] = &unk_1E865C350;
    v13 = v8;
    v14 = a4;
    block[4] = self;
    v11 = v8;
    dispatch_async(queue, block);
  }
}

void __66__CSAudioRecorder_remoteRecordLPCMBufferAvailable_streamHandleId___block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1[4] + 144);
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v8 = a1[5];
        v7 = a1[6];
        v9 = a1[4];
        v10 = mach_absolute_time();
        v11 = mach_absolute_time();
        LODWORD(v13) = +[CSConfig inputRecordingNumberOfChannels];
        [v6 audioRecorderBufferAvailable:v9 audioStreamHandleId:v7 buffer:v8 remoteVAD:0 atTime:v10 arrivalTimestampToAudioRecorder:v11 numberOfChannels:v13];
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)remoteRecordDidStopRecordingWithWithStreamHandleId:(unint64_t)a3 error:(id)a4
{
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__CSAudioRecorder_remoteRecordDidStopRecordingWithWithStreamHandleId_error___block_invoke;
  v5[3] = &unk_1E865CC58;
  v5[4] = self;
  v5[5] = a3;
  dispatch_async(queue, v5);
}

- (void)remoteRecordDidStartRecordingWithStreamHandleId:(unint64_t)a3 error:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__CSAudioRecorder_remoteRecordDidStartRecordingWithStreamHandleId_error___block_invoke;
  block[3] = &unk_1E865C350;
  v10 = v6;
  v11 = self;
  v12 = a3;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)CSSystemDaemonDisconnected
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CSAudioRecorder_CSSystemDaemonDisconnected__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

void __45__CSAudioRecorder_CSSystemDaemonDisconnected__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioRecorderDisconnected:{*(a1 + 32), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)CSSystemDaemonAudioCallbackForStream:(unint64_t)a3 butterTimestamp:(unint64_t)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E6958390] == a3 && +[CSUtils supportsSystemDaemon])
  {
    v7 = *MEMORY[0x1E69E9840];

    [(CSAudioRecorder *)self _processExclaveBufferCallbackFrom:a3 hostTime:a4];
  }

  else
  {
    v8 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[CSAudioRecorder CSSystemDaemonAudioCallbackForStream:butterTimestamp:]";
      _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s Unexpected audio callback received!!", &v10, 0xCu);
    }

    v9 = *MEMORY[0x1E69E9840];
  }
}

- (void)CSSystemDaemonDidFinishAlertPlaybackOfType:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__CSAudioRecorder_CSSystemDaemonDidFinishAlertPlaybackOfType___block_invoke;
  v4[3] = &unk_1E865CC58;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

void __62__CSAudioRecorder_CSSystemDaemonDidFinishAlertPlaybackOfType___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioRecorderDidFinishAlertPlayback:*(a1 + 32) ofType:*(a1 + 40) error:{0, v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)CSSystemDaemonDidStopRecordingForStream:(unint64_t)a3 forReason:(int64_t)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__CSAudioRecorder_CSSystemDaemonDidStopRecordingForStream_forReason___block_invoke;
  block[3] = &unk_1E865B1F0;
  block[4] = self;
  block[5] = a4;
  block[6] = a3;
  dispatch_async(queue, block);
}

- (void)CSSystemDaemonDidStartRecordingForStream:(unint64_t)a3 successfully:(BOOL)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__CSAudioRecorder_CSSystemDaemonDidStartRecordingForStream_successfully___block_invoke;
  block[3] = &unk_1E865B2B8;
  v6 = a4;
  block[4] = self;
  block[5] = a3;
  dispatch_async(queue, block);
}

- (void)voiceControllerDidSetAudioSessionActive:(id)a3 isActivated:(BOOL)a4
{
  v4 = a4;
  v15 = *MEMORY[0x1E69E9840];
  v6 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[CSAudioRecorder voiceControllerDidSetAudioSessionActive:isActivated:]";
    v13 = 1026;
    v14 = v4;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s activate : %{public}d", buf, 0x12u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__CSAudioRecorder_voiceControllerDidSetAudioSessionActive_isActivated___block_invoke;
  v9[3] = &unk_1E865B178;
  v9[4] = self;
  v10 = v4;
  dispatch_async(queue, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __71__CSAudioRecorder_voiceControllerDidSetAudioSessionActive_isActivated___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioRecorder:*(a1 + 32) didSetAudioSessionActive:{*(a1 + 40), v10}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));
  [WeakRetained audioSessionEventProvidingDidSetAudioSessionActive:*(a1 + 40)];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)voiceControllerWillSetAudioSessionActive:(id)a3 willActivate:(BOOL)a4
{
  v4 = a4;
  v15 = *MEMORY[0x1E69E9840];
  v6 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[CSAudioRecorder voiceControllerWillSetAudioSessionActive:willActivate:]";
    v13 = 1026;
    v14 = v4;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s activate : %{public}d", buf, 0x12u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__CSAudioRecorder_voiceControllerWillSetAudioSessionActive_willActivate___block_invoke;
  v9[3] = &unk_1E865B178;
  v9[4] = self;
  v10 = v4;
  dispatch_async(queue, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __73__CSAudioRecorder_voiceControllerWillSetAudioSessionActive_willActivate___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioRecorder:*(a1 + 32) willSetAudioSessionActive:{*(a1 + 40), v10}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));
  [WeakRetained audioSessionEventProvidingWillSetAudioSessionActive:*(a1 + 40)];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)voiceControllerEndRecordInterruption:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CSAudioRecorder voiceControllerEndRecordInterruption:]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CSAudioRecorder_voiceControllerEndRecordInterruption___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__CSAudioRecorder_voiceControllerEndRecordInterruption___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioRecorderEndRecordInterruption:{*(a1 + 32), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)voiceControllerBeginRecordInterruption:(id)a3 withContext:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[CSAudioRecorder voiceControllerBeginRecordInterruption:withContext:]";
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s withContext : %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__CSAudioRecorder_voiceControllerBeginRecordInterruption_withContext___block_invoke;
  v10[3] = &unk_1E865C970;
  v10[4] = self;
  v11 = v5;
  v8 = v5;
  dispatch_async(queue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __70__CSAudioRecorder_voiceControllerBeginRecordInterruption_withContext___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioRecorderBeginRecordInterruption:*(a1 + 32) withContext:{*(a1 + 40), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)voiceControllerBeginRecordInterruption:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CSAudioRecorder voiceControllerBeginRecordInterruption:]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CSAudioRecorder_voiceControllerBeginRecordInterruption___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
  v6 = *MEMORY[0x1E69E9840];
}

void __58__CSAudioRecorder_voiceControllerBeginRecordInterruption___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioRecorderBeginRecordInterruption:{*(a1 + 32), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)voiceControllerEncoderErrorDidOccur:(id)a3 error:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 localizedDescription];
    *buf = 136315394;
    v15 = "[CSAudioRecorder voiceControllerEncoderErrorDidOccur:error:]";
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Encoder error : %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__CSAudioRecorder_voiceControllerEncoderErrorDidOccur_error___block_invoke;
  v12[3] = &unk_1E865C970;
  v12[4] = self;
  v13 = v5;
  v10 = v5;
  dispatch_async(queue, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __61__CSAudioRecorder_voiceControllerEncoderErrorDidOccur_error___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioRecorderBuiltInAudioStreamInvalidated:*(a1 + 32) error:{*(a1 + 40), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)voiceControllerDidFinishAlertPlayback:(id)a3 ofType:(int)a4 error:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "[CSAudioRecorder voiceControllerDidFinishAlertPlayback:ofType:error:]";
    v17 = 1026;
    v18 = a4;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s type : %{public}d, error : %{public}@", buf, 0x1Cu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__CSAudioRecorder_voiceControllerDidFinishAlertPlayback_ofType_error___block_invoke;
  block[3] = &unk_1E865A9A8;
  v14 = a4;
  block[4] = self;
  v13 = v7;
  v10 = v7;
  dispatch_async(queue, block);

  v11 = *MEMORY[0x1E69E9840];
}

void __70__CSAudioRecorder_voiceControllerDidFinishAlertPlayback_ofType_error___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioRecorderDidFinishAlertPlayback:*(a1 + 32) ofType:*(a1 + 48) error:{*(a1 + 40), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)voiceControllerRecordHardwareConfigurationDidChange:(id)a3 toConfiguration:(int)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[CSAudioRecorder voiceControllerRecordHardwareConfigurationDidChange:toConfiguration:]";
    v13 = 1026;
    v14 = a4;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s toConfiguration : %{public}d", buf, 0x12u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__CSAudioRecorder_voiceControllerRecordHardwareConfigurationDidChange_toConfiguration___block_invoke;
  v9[3] = &unk_1E865A980;
  v9[4] = self;
  v10 = a4;
  dispatch_async(queue, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __87__CSAudioRecorder_voiceControllerRecordHardwareConfigurationDidChange_toConfiguration___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioRecorderRecordHardwareConfigurationDidChange:*(a1 + 32) toConfiguration:{*(a1 + 40), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)voiceControllerStreamInvalidated:(id)a3 forStream:(unint64_t)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSAudioRecorder voiceControllerStreamInvalidated:forStream:]";
    v12 = 2050;
    v13 = a4;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Received Stream Invalidated : %{public}llu", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__CSAudioRecorder_voiceControllerStreamInvalidated_forStream___block_invoke;
  v9[3] = &unk_1E865CC58;
  v9[4] = self;
  v9[5] = a4;
  dispatch_async(queue, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __62__CSAudioRecorder_voiceControllerStreamInvalidated_forStream___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioRecorderStreamHandleIdInvalidated:{*(a1 + 40), v15}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v8 = *(*(a1 + 32) + 56);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v10 = [v8 objectForKeyedSubscript:v9];

  [v10 setDelegate:0];
  v11 = *(a1 + 40);
  v12 = *(*(a1 + 32) + 56);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  [v12 removeObjectForKey:v13];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)voiceControllerDidStopRecording:(id)a3 forStream:(unint64_t)a4 forReason:(int64_t)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v14 = "[CSAudioRecorder voiceControllerDidStopRecording:forStream:forReason:]";
    v15 = 2050;
    v16 = v8;
    v17 = 2050;
    v18 = a4;
    v19 = 2050;
    v20 = a5;
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Received didStopRecording : %{public}p forStream:%{public}llu forReason:%{public}ld", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__CSAudioRecorder_voiceControllerDidStopRecording_forStream_forReason___block_invoke;
  block[3] = &unk_1E865B1F0;
  block[4] = self;
  block[5] = a5;
  block[6] = a4;
  dispatch_async(queue, block);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)voiceControllerAudioCallback:(id)a3 forStream:(unint64_t)a4 buffer:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = voiceControllerAudioCallback_forStream_buffer__heartbeat;
  if (!(v8 % +[CSUtils loggingHeartbeatRate]))
  {
    v9 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v12 = 136315906;
      v13 = "[CSAudioRecorder voiceControllerAudioCallback:forStream:buffer:]";
      v14 = 1026;
      v15 = [v7 bytesDataSize];
      v16 = 2050;
      v17 = voiceControllerAudioCallback_forStream_buffer__heartbeat;
      v18 = 2050;
      v19 = a4;
      _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Received audio buffer %{public}d, heartbeat = %{public}llu, streamID (%{public}lu)", &v12, 0x26u);
    }
  }

  ++voiceControllerAudioCallback_forStream_buffer__heartbeat;
  if (*MEMORY[0x1E6958390] == a4 && +[CSUtils isExclaveHardware])
  {
    -[CSAudioRecorder _processExclaveBufferCallbackFrom:hostTime:](self, "_processExclaveBufferCallbackFrom:hostTime:", a4, [v7 timeStamp]);
  }

  else
  {
    [(CSAudioRecorder *)self _processAudioBuffer:v7 audioStreamHandleId:a4 arrivalTimestampToAudioRecorder:mach_absolute_time()];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)voiceControllerDidStartRecording:(id)a3 forStream:(unint64_t)a4 successfully:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = CSLogCategoryAudio;
  if (!v7)
  {
    if (!os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v13 = v12;
    v14 = [v11 localizedDescription];
    *buf = 136316162;
    v23 = "[CSAudioRecorder voiceControllerDidStartRecording:forStream:successfully:error:]";
    v24 = 2050;
    v25 = v10;
    v26 = 2050;
    v27 = a4;
    v28 = 1026;
    v29 = 0;
    v30 = 2114;
    v31 = v14;
    _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, "%s Fail - Received didStartRecording : %{public}p, forStream:%{public}llu, successfully:%{public}d, error:%{public}@", buf, 0x30u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v11 localizedDescription];
    *buf = 136316162;
    v23 = "[CSAudioRecorder voiceControllerDidStartRecording:forStream:successfully:error:]";
    v24 = 2050;
    v25 = v10;
    v26 = 2050;
    v27 = a4;
    v28 = 1026;
    v29 = 1;
    v30 = 2114;
    v31 = v14;
    _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s Received didStartRecording : %{public}p, forStream:%{public}llu, successfully:%{public}d, error:%{public}@", buf, 0x30u);
LABEL_4:
  }

LABEL_6:
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__CSAudioRecorder_voiceControllerDidStartRecording_forStream_successfully_error___block_invoke;
  v18[3] = &unk_1E865B308;
  v21 = v7;
  v19 = v11;
  v20 = a4;
  v18[4] = self;
  v16 = v11;
  dispatch_async(queue, v18);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)exclaveRecordClientAudioBuffer:(id)a3 audioStreamHandleId:(unint64_t)a4 audioBuffer:(id)a5 hostTime:(unint64_t)a6
{
  v9 = a5;
  v10 = [(CSAudioRecorder *)self _compensateChannelDataIfNeeded:v9 receivedNumChannels:+[CSConfig exclaveRecordingNumChannels]];

  [(CSAudioRecorder *)self _processAudioChain:v10 audioStreamHandleId:a4 remoteVAD:0 atTime:a6 arrivalTimestampToAudioRecorder:mach_absolute_time() numberOfChannels:+[CSConfig inputRecordingNumberOfChannels]];
}

- (void)_audioRecorderDidStopRecordingForReason:(int64_t)a3 streamHandleID:(unint64_t)a4
{
  v19 = *MEMORY[0x1E69E9840];
  [(CSAudioRecorder *)self _stopTrackingRemoteAccessoryStreamId:a4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_observers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 audioRecorderDidStopRecord:self audioStreamHandleId:a4 reason:{a3, v14}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  self->_waitingForDidStart = 0;
  v13 = *MEMORY[0x1E69E9840];
}

- (id)metrics
{
  v2 = [(CSAudioRecorder *)self _getVoiceController];
  v3 = [v2 metrics];

  return v3;
}

- (BOOL)playAlertSoundForType:(int64_t)a3 recordDevideIndicator:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = [a4 shouldUseRemoteRecorder];
  if (a3 == 2 && v6 && [(CSRemoteRecordClient *)self->_remoteRecordClient didPlayEndpointBeep])
  {
    v7 = CSLogCategoryAudio;
    v8 = 0;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[CSAudioRecorder playAlertSoundForType:recordDevideIndicator:]";
      _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Ignore playing endpoint beep(record stopped beep) since it already played beep in gibraltar", &v13, 0xCu);
      v8 = 0;
    }
  }

  else
  {
    v9 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[CSAudioRecorder playAlertSoundForType:recordDevideIndicator:]";
      v15 = 2050;
      v16 = a3;
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC playAlertSoundsForType : %{public}ld", &v13, 0x16u);
    }

    v10 = [(CSAudioRecorder *)self _getVoiceController];
    v8 = [v10 playAlertSoundForType:a3 overrideMode:-1];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)playAlertSoundForType:(int64_t)a3 overrideMode:(int64_t)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[CSAudioRecorder playAlertSoundForType:overrideMode:]";
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC playAlertSoundForType to play %ld alert with override %ld", &v13, 0x20u);
  }

  v8 = [CSAudioStartStreamOption avvcAlertOverrideType:a4];
  v9 = [(CSAudioRecorder *)self _getVoiceController];
  v10 = [v9 playAlertSoundForType:a3 overrideMode:v8];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)setAlertSoundFromURL:(id)a3 forType:(int64_t)a4 force:(BOOL)a5
{
  v8 = a3;
  if (a5)
  {
    goto LABEL_4;
  }

  hasSetAlertDictionary = self->_hasSetAlertDictionary;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v11 = [(NSMutableDictionary *)hasSetAlertDictionary objectForKeyedSubscript:v10];
  v12 = [v11 BOOLValue];

  if ((v12 & 1) == 0)
  {
LABEL_4:
    v14 = self->_hasSetAlertDictionary;
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(NSMutableDictionary *)v14 setObject:MEMORY[0x1E695E118] forKey:v15];

    v16 = [(CSAudioRecorder *)self _getVoiceController];
    v13 = [v16 setAlertSoundFromURL:v8 forType:a4];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)_audioIsFromRemoteAccessory:(unint64_t)a3
{
  remoteAccessoryStreamIdSet = self->_remoteAccessoryStreamIdSet;
  if (!remoteAccessoryStreamIdSet)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableSet *)remoteAccessoryStreamIdSet containsObject:v4];

  return v5;
}

- (void)_stopTrackingRemoteAccessoryStreamId:(unint64_t)a3
{
  remoteAccessoryStreamIdSet = self->_remoteAccessoryStreamIdSet;
  if (remoteAccessoryStreamIdSet)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v7 = [(NSMutableSet *)remoteAccessoryStreamIdSet containsObject:v6];

    if (v7)
    {
      v8 = self->_remoteAccessoryStreamIdSet;
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [(NSMutableSet *)v8 removeObject:v9];
    }
  }
}

- (void)_trackRemoteAccessoryStreamIdIfNeeded:(id)a3
{
  v3 = a3;
}

- (void)audioDecoderDidDecodePackets:(id)a3 audioStreamHandleId:(unint64_t)a4 buffer:(id)a5 remoteVAD:(id)a6 timestamp:(unint64_t)a7 arrivalTimestampToAudioRecorder:(unint64_t)a8 wasBuffered:(BOOL)a9 receivedNumChannels:(unsigned int)a10
{
  v15 = a5;
  v16 = a6;
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman == 1)
  {
    v17 = v15;
    v18 = 1;
  }

  else
  {
    v18 = +[CSConfig inputRecordingNumberOfChannels];
    v17 = [(CSAudioRecorder *)self _compensateChannelDataIfNeeded:v15 receivedNumChannels:a10];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __159__CSAudioRecorder_audioDecoderDidDecodePackets_audioStreamHandleId_buffer_remoteVAD_timestamp_arrivalTimestampToAudioRecorder_wasBuffered_receivedNumChannels___block_invoke;
  block[3] = &unk_1E865A958;
  block[4] = self;
  v23 = v17;
  v24 = v16;
  v25 = a4;
  v26 = a7;
  v27 = a8;
  v28 = v18;
  v20 = v16;
  v21 = v17;
  dispatch_async(queue, block);
}

void __159__CSAudioRecorder_audioDecoderDidDecodePackets_audioStreamHandleId_buffer_remoteVAD_timestamp_arrivalTimestampToAudioRecorder_wasBuffered_receivedNumChannels___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        LODWORD(v8) = *(a1 + 80);
        [*(*(&v9 + 1) + 8 * v6++) audioRecorderBufferAvailable:*(a1 + 32) audioStreamHandleId:*(a1 + 56) buffer:*(a1 + 40) remoteVAD:*(a1 + 48) atTime:*(a1 + 64) arrivalTimestampToAudioRecorder:*(a1 + 72) numberOfChannels:v8];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)_compensateChannelDataIfNeeded:(id)a3 receivedNumChannels:(unsigned int)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (+[CSConfig inputRecordingNumberOfChannels]<= a4)
  {
    v6 = v5;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(v5, "length") / a4 * +[CSConfig inputRecordingNumberOfChannels](CSConfig, "inputRecordingNumberOfChannels")}];
    v7 = +[CSConfig inputRecordingNumberOfChannels];
    v8 = _compensateChannelDataIfNeeded_receivedNumChannels__heartbeat;
    if (!(v8 % +[CSUtils loggingHeartbeatRate]))
    {
      v9 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = "[CSAudioRecorder _compensateChannelDataIfNeeded:receivedNumChannels:]";
        v14 = 1026;
        v15 = v7 - a4;
        v16 = 2050;
        v17 = _compensateChannelDataIfNeeded_receivedNumChannels__heartbeat;
        _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Compensating %{public}u channel(s), heartbeat = %{public}lld", &v12, 0x1Cu);
      }
    }

    ++_compensateChannelDataIfNeeded_receivedNumChannels__heartbeat;
    [v6 replaceBytesInRange:0 withBytes:{objc_msgSend(v5, "length"), objc_msgSend(v5, "bytes")}];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_processAudioBuffer:(id)a3 audioStreamHandleId:(unint64_t)a4 arrivalTimestampToAudioRecorder:(unint64_t)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = *([v8 streamDescription] + 8);
  if (v10 == 1869641075)
  {
    v13 = [v8 channels];
    v14 = [v8 packetDescriptionCount];
    v15 = [v8 bytesDataSize];
    v16 = v15;
    if (v14 >= 1 && v15 >= 1 && v13 > 0)
    {
      v43 = a4;
      v44 = a5;
      v17 = _processAudioBuffer_audioStreamHandleId_arrivalTimestampToAudioRecorder__heartbeat_138;
      v42 = self;
      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * _processAudioBuffer_audioStreamHandleId_arrivalTimestampToAudioRecorder__heartbeat_138, 2) <= 0xCCCCCCCCCCCCCCCuLL)
      {
        v18 = CSLogCategoryAudio;
        if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v47 = "[CSAudioRecorder _processAudioBuffer:audioStreamHandleId:arrivalTimestampToAudioRecorder:]";
          v48 = 1026;
          v49 = v14;
          _os_log_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_INFO, "%s packets count %{public}d", buf, 0x12u);
          v17 = _processAudioBuffer_audioStreamHandleId_arrivalTimestampToAudioRecorder__heartbeat_138;
        }
      }

      _processAudioBuffer_audioStreamHandleId_arrivalTimestampToAudioRecorder__heartbeat_138 = v17 + 1;
      v19 = v14;
      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
      v20 = [v8 data];
      v21 = 0;
      while (1)
      {
        v22 = [v8 packetDescriptions];
        v23 = *(v22 + v21 + 12);
        if (v23 > v16)
        {
          break;
        }

        v24 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v20 + *(v22 + v21) length:v23 / v13];
        [v11 addObject:v24];

        v21 += 16;
        if (!--v19)
        {
          goto LABEL_23;
        }
      }

      v30 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v47 = "[CSAudioRecorder _processAudioBuffer:audioStreamHandleId:arrivalTimestampToAudioRecorder:]";
        v48 = 1026;
        v49 = v23;
        _os_log_error_impl(&dword_1DDA4B000, v30, OS_LOG_TYPE_ERROR, "%s Bad packet length %{public}d. Skipping rest of record buffer.", buf, 0x12u);
      }

LABEL_23:
      opusDecoders = v42->_opusDecoders;
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      v33 = [(NSMutableDictionary *)opusDecoders objectForKeyedSubscript:v32];

      if (v33)
      {
        v34 = v42->_opusDecoders;
        v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
        v12 = [(NSMutableDictionary *)v34 objectForKeyedSubscript:v35];
      }

      else
      {
        v36 = [CSAudioDecoder alloc];
        +[CSFAudioStreamBasicDescriptionFactory opusASBD];
        +[CSFAudioStreamBasicDescriptionFactory lpcmInt16ASBD];
        v12 = [(CSAudioDecoder *)v36 initWithInASBD:buf outASBD:v45];
        [(CSAudioDecoder *)v12 setDelegate:v42];
        v37 = v42->_opusDecoders;
        v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
        [(NSMutableDictionary *)v37 setObject:v12 forKey:v35];
      }

      v38 = mach_absolute_time();
      v39 = [v8 remoteVoiceActivityVADBuffer];
      LODWORD(v41) = *([v8 streamDescription] + 28);
      [(CSAudioDecoder *)v12 addPackets:v11 audioStreamHandleId:v43 remoteVAD:v39 timestamp:v38 arrivalTimestampToAudioRecorder:v44 wasBuffered:0 receivedNumChannels:v41];

      goto LABEL_27;
    }

    v29 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v47 = "[CSAudioRecorder _processAudioBuffer:audioStreamHandleId:arrivalTimestampToAudioRecorder:]";
      v48 = 1026;
      v49 = v14;
      v50 = 1026;
      v51 = v16;
      v52 = 1026;
      v53 = v13;
      v26 = "%s AVVCAudioBuffer contains %{public}d packet descriptions, size %{public}d, channels %{public}d. Ignoring";
      v27 = v29;
      v28 = 30;
      goto LABEL_20;
    }
  }

  else
  {
    if (v10 == 1819304813)
    {
      v11 = -[CSReusableBufferPool dataWithBytes:length:](self->_audioBufferPool, "dataWithBytes:length:", [v8 data], objc_msgSend(v8, "bytesDataSize"));
      if (!v11)
      {
        v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:objc_msgSend(v8 length:{"data"), objc_msgSend(v8, "bytesDataSize")}];
      }

      v12 = -[CSAudioRecorder _compensateChannelDataIfNeeded:receivedNumChannels:](self, "_compensateChannelDataIfNeeded:receivedNumChannels:", v11, *([v8 streamDescription] + 28));
      -[CSAudioRecorder _processAudioChain:audioStreamHandleId:remoteVAD:atTime:arrivalTimestampToAudioRecorder:numberOfChannels:](self, "_processAudioChain:audioStreamHandleId:remoteVAD:atTime:arrivalTimestampToAudioRecorder:numberOfChannels:", v12, a4, 0, [v8 timeStamp], a5, +[CSConfig inputRecordingNumberOfChannels](CSConfig, "inputRecordingNumberOfChannels"));
LABEL_27:

      goto LABEL_28;
    }

    v25 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v47 = "[CSAudioRecorder _processAudioBuffer:audioStreamHandleId:arrivalTimestampToAudioRecorder:]";
      v48 = 1026;
      v49 = v10;
      v26 = "%s Cannot handle audio buffer : unexpected format(%{public}u)";
      v27 = v25;
      v28 = 18;
LABEL_20:
      _os_log_error_impl(&dword_1DDA4B000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
    }
  }

LABEL_28:
  objc_autoreleasePoolPop(v9);

  v40 = *MEMORY[0x1E69E9840];
}

- (void)_processExclaveBufferCallbackFrom:(unint64_t)a3 hostTime:(unint64_t)a4
{
  if ([(CSExclaveAudioProviding *)self->_exclaveAudioClient fetchAndStoreAudioBuffer])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__CSAudioRecorder__processExclaveBufferCallbackFrom_hostTime___block_invoke;
    block[3] = &unk_1E865B1F0;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    dispatch_async(queue, block);
  }
}

void __62__CSAudioRecorder__processExclaveBufferCallbackFrom_hostTime___block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1[4] + 144);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioRecorderExclaveBufferAvailable:a1[4] audioStreamHandleId:a1[5] hostTime:a1[6] arrivalTimestampToAudioRecorder:{mach_absolute_time(), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_processAudioChain:(id)a3 audioStreamHandleId:(unint64_t)a4 remoteVAD:(id)a5 atTime:(unint64_t)a6 arrivalTimestampToAudioRecorder:(unint64_t)a7 numberOfChannels:(int)a8
{
  v14 = a3;
  v15 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __124__CSAudioRecorder__processAudioChain_audioStreamHandleId_remoteVAD_atTime_arrivalTimestampToAudioRecorder_numberOfChannels___block_invoke;
  block[3] = &unk_1E865A958;
  block[4] = self;
  v20 = v14;
  v21 = v15;
  v22 = a4;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v17 = v15;
  v18 = v14;
  dispatch_async(queue, block);
}

void __124__CSAudioRecorder__processAudioChain_audioStreamHandleId_remoteVAD_atTime_arrivalTimestampToAudioRecorder_numberOfChannels___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        LODWORD(v8) = *(a1 + 80);
        [*(*(&v9 + 1) + 8 * v6++) audioRecorderBufferAvailable:*(a1 + 32) audioStreamHandleId:*(a1 + 56) buffer:*(a1 + 40) remoteVAD:*(a1 + 48) atTime:*(a1 + 64) arrivalTimestampToAudioRecorder:*(a1 + 72) numberOfChannels:v8];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (unint64_t)sensorStartForStream:(unint64_t)a3
{
  if (*MEMORY[0x1E6958390] == a3)
  {
    return [(CSExclaveAudioProviding *)self->_exclaveAudioClient startSensor];
  }

  else
  {
    return 0;
  }
}

- (BOOL)setListeningMicIndicatorPropertyForStream:(unint64_t)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (+[CSUtils isDarwinOS])
  {
    v5 = 1;
  }

  else
  {
    v6 = [MEMORY[0x1E6958468] sharedInstance];
    v22 = 0;
    v5 = [v6 setMXSessionProperty:@"MicrophoneAttribution" value:MEMORY[0x1E695E118] error:&v22];
    v7 = v22;

    v8 = CSLogCategoryAudio;
    if (v5)
    {
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v24 = "[CSAudioRecorder setListeningMicIndicatorPropertyForStream:]";
        _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s success", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v20 = v8;
      v21 = [v7 localizedDescription];
      *buf = 136315394;
      v24 = "[CSAudioRecorder setListeningMicIndicatorPropertyForStream:]";
      v25 = 2112;
      v26 = v21;
      _os_log_error_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_ERROR, "%s Failed to set listening mic indicator lock property : %@", buf, 0x16u);
    }
  }

  if (+[CSUtils supportsSecureSensor])
  {
    v9 = *MEMORY[0x1E6958390] == a3;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = [(CSAudioRecorder *)self sensorStartForStream:a3];
    if (v10 == 6)
    {
      v11 = +[CSFPreferences sharedPreferences];
      v12 = [v11 useExclaveFastStart];

      if (v12)
      {
        goto LABEL_23;
      }

      v13 = [MEMORY[0x1E695DF00] date];
      v14 = 0.0;
      v10 = 2;
      while (v14 < 8000.0)
      {
        usleep(0x4E20u);
        v15 = [(CSAudioRecorder *)self currentSensorStatus];
        v16 = [MEMORY[0x1E695DF00] date];
        [v16 timeIntervalSinceDate:v13];
        v14 = v17 * 1000.0;

        if (v15 != 6)
        {
          v10 = v15;
          break;
        }
      }
    }

    if ((v10 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v5 = 0;
    }
  }

LABEL_23:
  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)_shouldUseRemoteBuiltInMic:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 objectForKeyedSubscript:@"useRemoteBuiltInMic"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)_updateLanguageCodeForRemoteVTEIResult:(id)a3
{
  v3 = [a3 mutableCopy];

  return v3;
}

- (BOOL)isDuckingSupportedOnCurrentRouteWithStreamHandleID:(unint64_t)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = [(CSAudioRecorder *)self _getVoiceController];
  v7 = v6;
  if (v6)
  {
    v16 = 0;
    v8 = [v6 isDuckingSupportedOnPickedRouteForStream:a3 error:&v16];
    v9 = v16;
    v10 = v9;
    if (v9)
    {
      if (a4)
      {
        v11 = v9;
        *a4 = v10;
      }
    }

    else
    {
      v12 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        v13 = @"is not";
        v18 = "[CSAudioRecorder isDuckingSupportedOnCurrentRouteWithStreamHandleID:error:]";
        *buf = 136315650;
        if (v8)
        {
          v13 = @"is";
        }

        v19 = 2114;
        v20 = v13;
        v21 = 2050;
        v22 = a3;
        _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s Ducking %{public}@ supported on current route with streamId: %{public}ld", buf, 0x20u);
      }
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)fetchGibraltarVoiceTriggerInfoWithRecordDeviceIndicator:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 shouldUseRemoteRecorder])
  {
    v5 = [v4 deviceId];
    v6 = -[CSAudioRecorder _fetchRemoteRecordClientWithDeviceId:streamHandleId:](self, "_fetchRemoteRecordClientWithDeviceId:streamHandleId:", v5, [v4 streamHandleId]);

    [v6 waitingForConnection:0 error:3.0];
    v7 = [v6 voiceTriggerEventInfo];
    v8 = [(CSAudioRecorder *)self _updateLanguageCodeForRemoteVTEIResult:v7];

    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_FAULT))
    {
      v13 = 136315138;
      v14 = "[CSAudioRecorder fetchGibraltarVoiceTriggerInfoWithRecordDeviceIndicator:]";
      _os_log_fault_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_FAULT, "%s Not using remoteRecorder. Deprecated use of voiceTriggerInfo from AVVC", &v13, 0xCu);
    }
  }

  v10 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "[CSAudioRecorder fetchGibraltarVoiceTriggerInfoWithRecordDeviceIndicator:]";
    _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, "%s VoiceTriggerInfo is nil from AVVC", &v13, 0xCu);
  }

  v8 = 0;
LABEL_9:

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)getPlaybackRouteForStreamID:(unint64_t)a3
{
  v4 = [(CSAudioRecorder *)self _getVoiceController];
  v5 = [v4 getPlaybackRouteForStream:a3 withError:0];

  return v5;
}

- (void)configureAlertBehavior:(id)a3 audioStreamHandleId:(unint64_t)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "[CSAudioRecorder configureAlertBehavior:audioStreamHandleId:]";
    v30 = 2114;
    v31 = v6;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  v9 = [objc_alloc(MEMORY[0x1E6958530]) initWithStreamID:a4];
  v10 = [v6 objectForKeyedSubscript:&unk_1F5916808];

  if (v10)
  {
    v11 = [v6 objectForKeyedSubscript:&unk_1F5916808];
    [v9 setStartAlert:{objc_msgSend(v11, "integerValue")}];
  }

  v12 = [v6 objectForKeyedSubscript:&unk_1F5916820];

  if (v12)
  {
    v13 = [v6 objectForKeyedSubscript:&unk_1F5916820];
    [v9 setStopAlert:{objc_msgSend(v13, "integerValue")}];
  }

  v14 = [v6 objectForKeyedSubscript:&unk_1F5916838];

  if (v14)
  {
    v15 = [v6 objectForKeyedSubscript:&unk_1F5916838];
    [v9 setStopOnErrorAlert:{objc_msgSend(v15, "integerValue")}];
  }

  v16 = [(CSAudioRecorder *)self _getVoiceController];
  v27 = 0;
  v17 = [v16 configureAlertBehaviorForStream:v9 error:&v27];
  v18 = v27;

  if ((v17 & 1) == 0)
  {
    v19 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v25 = v19;
      v26 = [v18 localizedDescription];
      *buf = 136315394;
      v29 = "[CSAudioRecorder configureAlertBehavior:audioStreamHandleId:]";
      v30 = 2114;
      v31 = v26;
      _os_log_error_impl(&dword_1DDA4B000, v25, OS_LOG_TYPE_ERROR, "%s Failed to configureAlertBehaviorForStream : %{public}@", buf, 0x16u);
    }
  }

  v20 = [MEMORY[0x1E695DF00] date];
  v21 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    [v20 timeIntervalSinceDate:v7];
    *buf = 136315394;
    v29 = "[CSAudioRecorder configureAlertBehavior:audioStreamHandleId:]";
    v30 = 2050;
    v31 = v23;
    _os_log_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_DEFAULT, "%s configureAlertBehavior elapsed time = %{public}lf", buf, 0x16u);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)deactivateAudioSession:(unint64_t)a3 streamHandleId:(unint64_t)a4 error:(id *)a5
{
  *&v21[13] = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E695DF00] date];
  v10 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315650;
    v19 = "[CSAudioRecorder deactivateAudioSession:streamHandleId:error:]";
    v20 = 1024;
    *v21 = a4;
    v21[2] = 2050;
    *&v21[3] = a3;
    _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC setSessionActivate for deactivation for stream %d: %{public}tu", &v18, 0x1Cu);
  }

  v11 = [(CSAudioRecorder *)self _getVoiceController];
  [v11 deactivateAudioSessionForStream:a4 withOptions:+[CSAudioRecorder _convertDeactivateOption:](CSAudioRecorder error:{"_convertDeactivateOption:", a3), a5}];

  self->_waitingForDidStart = 0;
  v12 = [MEMORY[0x1E695DF00] date];
  v13 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    [v12 timeIntervalSinceDate:v9];
    v18 = 136315394;
    v19 = "[CSAudioRecorder deactivateAudioSession:streamHandleId:error:]";
    v20 = 2050;
    *v21 = v15;
    _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s setSessionActivate elapsed time = %{public}lf", &v18, 0x16u);
  }

  v16 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)deactivateAudioSession:(unint64_t)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[CSAudioRecorder deactivateAudioSession:error:]";
    v17 = 2050;
    v18 = a3;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC setSessionActivate for deactivation : %{public}tu", &v15, 0x16u);
  }

  v8 = [(CSAudioRecorder *)self _getVoiceController];
  [v8 deactivateAudioSessionWithOptions:{+[CSAudioRecorder _convertDeactivateOption:](CSAudioRecorder, "_convertDeactivateOption:", a3)}];

  self->_waitingForDidStart = 0;
  v9 = [MEMORY[0x1E695DF00] date];
  v10 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    [v9 timeIntervalSinceDate:v6];
    v15 = 136315394;
    v16 = "[CSAudioRecorder deactivateAudioSession:error:]";
    v17 = 2050;
    v18 = v12;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s setSessionActivate elapsed time = %{public}lf", &v15, 0x16u);
  }

  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)activateAudioSessionWithReason:(unint64_t)a3 streamHandleId:(unint64_t)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E695DF00] date];
  v10 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "[CSAudioRecorder activateAudioSessionWithReason:streamHandleId:error:]";
    v34 = 2050;
    v35 = a4;
    _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC setSessionActivate for activation with streamId(%{public}lu)", buf, 0x16u);
  }

  v11 = [(CSAudioRecorder *)self _getVoiceController];
  v12 = v11;
  if (a3 == 2)
  {
    v31 = 0;
    v13 = [v11 activateAudioSessionForStream:a4 isPrewarm:0 recordMode:1 error:&v31];
    v14 = v31;
  }

  else
  {
    v30 = 0;
    v13 = [v11 activateAudioSessionForStream:a4 isPrewarm:0 recordMode:0 error:&v30];
    v14 = v30;
  }

  v15 = v14;

  if (v13)
  {
    v16 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v33 = "[CSAudioRecorder activateAudioSessionWithReason:streamHandleId:error:]";
      _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_DEFAULT, "%s AVVC successfully activated audioSession", buf, 0xCu);
    }

    v17 = 1;
    if (!a5)
    {
      goto LABEL_19;
    }

LABEL_18:
    v21 = v15;
    *a5 = v15;
    goto LABEL_19;
  }

  v18 = [v15 domain];
  if ([v18 isEqualToString:*MEMORY[0x1E696A768]])
  {
    v19 = [v15 code];

    if (v19 != 561017449)
    {
      goto LABEL_15;
    }

    v18 = +[CSDiagnosticReporter sharedInstance];
    [v18 submitAudioIssueReport:@"InsufficientPriority"];
  }

LABEL_15:
  v20 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
  {
    v28 = v20;
    v29 = [v15 localizedDescription];
    *buf = 136315394;
    v33 = "[CSAudioRecorder activateAudioSessionWithReason:streamHandleId:error:]";
    v34 = 2114;
    v35 = v29;
    _os_log_error_impl(&dword_1DDA4B000, v28, OS_LOG_TYPE_ERROR, "%s AVVC setSessionActivate has failed : %{public}@", buf, 0x16u);
  }

  v17 = 0;
  if (a5)
  {
    goto LABEL_18;
  }

LABEL_19:
  v22 = [MEMORY[0x1E695DF00] date];
  v23 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v23;
    [v22 timeIntervalSinceDate:v9];
    *buf = 136315394;
    v33 = "[CSAudioRecorder activateAudioSessionWithReason:streamHandleId:error:]";
    v34 = 2050;
    v35 = v25;
    _os_log_impl(&dword_1DDA4B000, v24, OS_LOG_TYPE_DEFAULT, "%s setSessionActivate elapsed time = %{public}lf", buf, 0x16u);
  }

  [(CSAudioRecorder *)self _logResourceNotAvailableErrorIfNeeded:v15];

  v26 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)setRecordMode:(int64_t)a3 streamHandleId:(unint64_t)a4 error:(id *)a5
{
  v39 = *MEMORY[0x1E69E9840];
  if (+[CSUtils supportsSystemDaemon])
  {
    v9 = *MEMORY[0x1E6958390] == a4;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = [MEMORY[0x1E695DF00] date];
    v11 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(CSAudioRecorder *)self _recordModeString:a3];
      *buf = 136315650;
      v34 = "[CSAudioRecorder setRecordMode:streamHandleId:error:]";
      v35 = 2114;
      v36 = v13;
      v37 = 2050;
      v38 = a4;
      _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC setRecordMode to mode : %{public}@, streamId: %{public}lu", buf, 0x20u);
    }

    v14 = [(CSAudioRecorder *)self _getVoiceController];
    v32 = 0;
    v15 = [v14 setRecordModeForStream:a4 recordMode:a3 error:&v32];
    v16 = v32;

    if (v15)
    {
      v17 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v34 = "[CSAudioRecorder setRecordMode:streamHandleId:error:]";
        _os_log_impl(&dword_1DDA4B000, v17, OS_LOG_TYPE_DEFAULT, "%s AVVC successfully setRecordMode", buf, 0xCu);
        if (!a5)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v21 = [v16 domain];
    if ([v21 isEqualToString:*MEMORY[0x1E696A768]])
    {
      v22 = [v16 code];

      if (v22 == -11780)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v23 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v30 = v23;
      v31 = [v16 localizedDescription];
      *buf = 136315394;
      v34 = "[CSAudioRecorder setRecordMode:streamHandleId:error:]";
      v35 = 2114;
      v36 = v31;
      _os_log_error_impl(&dword_1DDA4B000, v30, OS_LOG_TYPE_ERROR, "%s AVVC setRecordMode has failed : %{public}@", buf, 0x16u);

      if (!a5)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_19:
    if (!a5)
    {
LABEL_21:
      v25 = [MEMORY[0x1E695DF00] date];
      v26 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
        [v25 timeIntervalSinceDate:v10];
        *buf = 136315394;
        v34 = "[CSAudioRecorder setRecordMode:streamHandleId:error:]";
        v35 = 2050;
        v36 = v28;
        _os_log_impl(&dword_1DDA4B000, v27, OS_LOG_TYPE_DEFAULT, "%s setRecordMode elapsed time = %{public}lf", buf, 0x16u);
      }

      v29 = *MEMORY[0x1E69E9840];
      return v15;
    }

LABEL_20:
    v24 = v16;
    *a5 = v16;
    goto LABEL_21;
  }

  launchAgentAudioClient = self->_launchAgentAudioClient;
  v19 = *MEMORY[0x1E69E9840];

  return [(CSLaunchAgentXPCClient *)launchAgentAudioClient setRecordModeForStreamId:a4 avvcRecordMode:a3 error:a5];
}

- (void)_logResourceNotAvailableErrorIfNeeded:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [v4 domain];
    if (![v5 isEqualToString:*MEMORY[0x1E696A768]])
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = [v7 code];

    if (v6 == 561145203 && [(CSAudioRecorder *)self _shouldLogResourceNotAvailableError])
    {
      v5 = +[CSDiagnosticReporter sharedInstance];
      [v5 submitAudioIssueReport:@"resourceNotAvailable"];
      goto LABEL_6;
    }
  }

LABEL_7:

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)_shouldLogResourceNotAvailableError
{
  if (_shouldLogResourceNotAvailableError_onceToken != -1)
  {
    dispatch_once(&_shouldLogResourceNotAvailableError_onceToken, &__block_literal_global_91);
  }

  return _shouldLogResourceNotAvailableError_answer;
}

void __54__CSAudioRecorder__shouldLogResourceNotAvailableError__block_invoke()
{
  v0 = +[CSUtils deviceProductVersion];
  if ([v0 isEqualToString:{@"iPhone9, 1"}])
  {
    goto LABEL_6;
  }

  v1 = +[CSUtils deviceProductVersion];
  if ([v1 isEqualToString:{@"iPhone9, 2"}])
  {
LABEL_5:

LABEL_6:
LABEL_7:
    _shouldLogResourceNotAvailableError_answer = 1;
    return;
  }

  v2 = +[CSUtils deviceProductVersion];
  if ([v2 isEqualToString:{@"iPhone9, 3"}])
  {

    goto LABEL_5;
  }

  v3 = +[CSUtils deviceProductVersion];
  v4 = [v3 isEqualToString:{@"iPhone9, 4"}];

  if (v4)
  {
    goto LABEL_7;
  }
}

- (BOOL)prewarmAudioSessionWithStreamHandleId:(unint64_t)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v7 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[CSAudioRecorder prewarmAudioSessionWithStreamHandleId:error:]";
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC setSessionActive for Prewarm", buf, 0xCu);
  }

  v8 = [(CSAudioRecorder *)self _getVoiceController];
  v17 = 0;
  v9 = [v8 activateAudioSessionForStream:a3 isPrewarm:1 error:&v17];
  v10 = v17;

  if ((v9 & 1) == 0)
  {
    v11 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v15 = v11;
      v16 = [v10 localizedDescription];
      *buf = 136315394;
      v19 = "[CSAudioRecorder prewarmAudioSessionWithStreamHandleId:error:]";
      v20 = 2114;
      v21 = v16;
      _os_log_error_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_ERROR, "%s Prewarm AudioSession has failed : %{public}@", buf, 0x16u);
    }
  }

  kdebug_trace();
  if (a4)
  {
    v12 = v10;
    *a4 = v10;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)isNarrowBandWithStreamHandleId:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (+[CSUtils isDarwinOS])
  {
    v5 = CSLogCategoryAudio;
    LOBYTE(v6) = 0;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[CSAudioRecorder isNarrowBandWithStreamHandleId:]";
      v14 = 2050;
      v15 = a3;
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s (darwinOS) : isNarrowBand = NO for streamHandleId = %{public}lu", &v12, 0x16u);
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    v7 = [(CSAudioRecorder *)self _recordDeviceInfoWithStreamHandleId:a3];
    v6 = [v7 isNarrowBand];
    v8 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      v13 = "[CSAudioRecorder isNarrowBandWithStreamHandleId:]";
      v12 = 136315650;
      if (v6)
      {
        v9 = @"YES";
      }

      v14 = 2114;
      v15 = v9;
      v16 = 2050;
      v17 = a3;
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s isNarrowBand = %{public}@ for streamHandleId = %{public}lu", &v12, 0x20u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)recordSettingsWithStreamHandleId:(unint64_t)a3
{
  v4 = [(CSAudioRecorder *)self _getVoiceController];
  v5 = [v4 getRecordSettingsForStream:a3];

  return v5;
}

- (float)recordingSampleRateWithStreamHandleId:(unint64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(CSAudioRecorder *)self recordSettingsWithStreamHandleId:a3];
  v4 = v3;
  if (v3 && (v5 = *MEMORY[0x1E6958340], [v3 objectForKeyedSubscript:*MEMORY[0x1E6958340]], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v4 objectForKeyedSubscript:v5];
    [v7 floatValue];
    v9 = v8;

    v10 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[CSAudioRecorder recordingSampleRateWithStreamHandleId:]";
      v20 = 2050;
      v21 = v9;
      v11 = "%s AVVC sampling rate = %{public}f";
      v12 = v10;
      v13 = 22;
LABEL_7:
      _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, v11, &v18, v13);
    }
  }

  else
  {
    +[CSConfig inputRecordingSampleRate];
    v9 = v14;
    v15 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[CSAudioRecorder recordingSampleRateWithStreamHandleId:]";
      v11 = "%s AVVC doesn't return sampleRate, assume it is default sample rate";
      v12 = v15;
      v13 = 12;
      goto LABEL_7;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)audioDeviceInfoWithStreamHandleId:(unint64_t)a3 recordDeviceIndicator:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = [(CSAudioRecorder *)self recordDeviceInfoWithStreamHandleId:a3 recordDeviceIndicator:a4];
  v7 = [(CSAudioRecorder *)self getPlaybackRouteForStreamID:a3];
  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [MEMORY[0x1E695DF70] array];
  if (([v7 isEqualToString:*MEMORY[0x1E69581B0]] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E69581C0]))
  {
    v27 = v8;
    v10 = [MEMORY[0x1E6958468] sharedInstance];
    v11 = [v10 currentRoute];
    v12 = [v11 outputs];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v28 + 1) + 8 * i) endpointType];
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v18];
          [v9 addObject:v19];
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v15);
    }

    v8 = v27;
  }

  v20 = [MEMORY[0x1E695DF00] date];
  v21 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    [v20 timeIntervalSinceDate:v8];
    *buf = 136315394;
    v33 = "[CSAudioRecorder audioDeviceInfoWithStreamHandleId:recordDeviceIndicator:]";
    v34 = 2050;
    v35 = v23;
    _os_log_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_DEFAULT, "%s fetch EndpointDeviceType elapsed time = %{public}lf", buf, 0x16u);
  }

  v24 = [[CSFAudioDeviceInfo alloc] initWithRecordDeviceInfo:v6 playbackRoute:v7 playbackDeviceTypeList:v9];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)_recordDeviceInfoWithStreamHandleId:(unint64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [(CSAudioRecorder *)self _getVoiceController];
  v7 = [v6 getRecordDeviceInfoForStream:a3];

  if (v7)
  {
    v8 = [[CSFAudioRecordDeviceInfo alloc] initWithAVVCRecordDeviceInfo:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E695DF00] date];
  v10 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    [v9 timeIntervalSinceDate:v5];
    v15 = 136315394;
    v16 = "[CSAudioRecorder _recordDeviceInfoWithStreamHandleId:]";
    v17 = 2050;
    v18 = v12;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s fetch recordDeviceInfo elapsed time = %{public}lf", &v15, 0x16u);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)recordDeviceInfoWithStreamHandleId:(unint64_t)a3 recordDeviceIndicator:(id)a4
{
  v6 = a4;
  if (+[CSUtils isDarwinOS])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(CSAudioRecorder *)self _recordDeviceInfoWithStreamHandleId:a3];
    if ([v6 shouldUseRemoteRecorder] && -[CSRemoteRecordClient isRemoteDeviceDarwin](self->_remoteRecordClient, "isRemoteDeviceDarwin"))
    {
      v9 = [CSFAudioRecordDeviceInfo alloc];
      v10 = *MEMORY[0x1E69581F8];
      v11 = objc_alloc(MEMORY[0x1E696AFB0]);
      v12 = [(CSRemoteRecordClient *)self->_remoteRecordClient deviceId];
      v13 = [v11 initWithUUIDString:v12];
      v14 = [v8 remoteDeviceProductIdentifier];
      v15 = [v8 remoteDeviceUIDString];
      v7 = -[CSFAudioRecordDeviceInfo initWithRoute:isRemoteDevice:remoteDeviceUID:remoteDeviceProductIdentifier:remoteDeviceUIDString:isNarrowBand:](v9, "initWithRoute:isRemoteDevice:remoteDeviceUID:remoteDeviceProductIdentifier:remoteDeviceUIDString:isNarrowBand:", v10, 1, v13, v14, v15, [v8 isNarrowBand]);
    }

    else
    {
      v7 = v8;
    }
  }

  return v7;
}

- (id)recordRouteWithRecordDeviceIndicator:(id)a3
{
  v4 = a3;
  if ([v4 shouldUseRemoteRecorder] && -[CSRemoteRecordClient isRemoteDeviceGibraltar](self->_remoteRecordClient, "isRemoteDeviceGibraltar"))
  {
    goto LABEL_7;
  }

  if ([v4 shouldUseRemoteRecorder] && -[CSRemoteRecordClient isRemoteDeviceDarwin](self->_remoteRecordClient, "isRemoteDeviceDarwin"))
  {
    v5 = *MEMORY[0x1E69581F8];
    goto LABEL_9;
  }

  if (+[CSUtils isDarwinOS])
  {
LABEL_7:
    v5 = @"Builtin Microphone";
  }

  else
  {
    v6 = -[CSAudioRecorder _recordDeviceInfoWithStreamHandleId:](self, "_recordDeviceInfoWithStreamHandleId:", [v4 streamHandleId]);
    v5 = [v6 route];
  }

LABEL_9:

  return v5;
}

- (BOOL)isRecordingWithRecordDeviceIndicator:(id)a3
{
  v4 = a3;
  if ([v4 shouldUseRemoteRecorder])
  {
    v5 = [(CSRemoteRecordClient *)self->_remoteRecordClient isRecording];
  }

  else
  {
    v6 = [(CSAudioRecorder *)self _getVoiceController];
    v7 = [v6 getCurrentStreamState:{objc_msgSend(v4, "streamHandleId")}];

    v5 = v7 > 3;
  }

  return v5;
}

- (BOOL)fetchSecureAudioStreamWithRecordDeviceIndicator:(id)a3 from:(unint64_t)a4 numSamples:(unint64_t)a5 hostTime:(unint64_t)a6 error:(id *)a7
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = a3;
  if ((++fetchSecureAudioStreamWithRecordDeviceIndicator_from_numSamples_hostTime_error__heartbeat & 0xF) == 0 && [(CSAudioRecorder *)self currentSensorStatus]== 2)
  {
    v12 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[CSAudioRecorder fetchSecureAudioStreamWithRecordDeviceIndicator:from:numSamples:hostTime:error:]";
      _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, "%s Secure sensor status invalidated", &v15, 0xCu);
    }
  }

  -[CSExclaveAudioProviding requestHistoricalAudioBufferFor:startSample:numSamples:hostTime:](self->_exclaveAudioClient, "requestHistoricalAudioBufferFor:startSample:numSamples:hostTime:", [v11 streamHandleId], a4, a5, a6);

  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)stopAudioStreamWithRecordDeviceIndicator:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  audioFileReader = self->_audioFileReader;
  if (!audioFileReader)
  {
    v9 = [MEMORY[0x1E695DF00] date];
    if ([v6 shouldUseRemoteRecorder])
    {
      remoteRecordClient = self->_remoteRecordClient;
      v38 = 0;
      v8 = [(CSRemoteRecordClient *)remoteRecordClient stopRecording:&v38];
      v11 = v38;
      if ((v8 & 1) == 0 && (v12 = CSLogCategoryAudio, os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR)))
      {
        v32 = v12;
        v33 = [v11 localizedDescription];
        *buf = 136315394;
        v40 = "[CSAudioRecorder stopAudioStreamWithRecordDeviceIndicator:error:]";
        v41 = 2114;
        v42 = v33;
        _os_log_error_impl(&dword_1DDA4B000, v32, OS_LOG_TYPE_ERROR, "%s Failed to stopRecording to remoteRecordClient : %{public}@", buf, 0x16u);

        if (!a4)
        {
LABEL_8:
          v14 = [MEMORY[0x1E695DF00] date];
          v15 = CSLogCategoryAudio;
          if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v15;
            [v14 timeIntervalSinceDate:v9];
            *buf = 136315394;
            v40 = "[CSAudioRecorder stopAudioStreamWithRecordDeviceIndicator:error:]";
            v41 = 2050;
            v42 = v17;
            v18 = "%s stopRecording elapsed time = %{public}lf";
LABEL_25:
            _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0x16u);

            goto LABEL_26;
          }

          goto LABEL_26;
        }
      }

      else if (!a4)
      {
        goto LABEL_8;
      }

      v13 = v11;
      *a4 = v11;
      goto LABEL_8;
    }

    v19 = [v6 shouldUseSystemDaemonRecorder];
    v20 = CSLogCategoryAudio;
    v21 = os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v21)
      {
        *buf = 136315138;
        v40 = "[CSAudioRecorder stopAudioStreamWithRecordDeviceIndicator:error:]";
        _os_log_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC in system daemon stopRecordForStream", buf, 0xCu);
      }

      launchAgentAudioClient = self->_launchAgentAudioClient;
      v36 = 0;
      v23 = [(CSLaunchAgentXPCClient *)launchAgentAudioClient stopAudioStreamWithError:&v36];
      v11 = v36;
      if (v23)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v21)
      {
        *buf = 136315138;
        v40 = "[CSAudioRecorder stopAudioStreamWithRecordDeviceIndicator:error:]";
        _os_log_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC stopRecordForStream", buf, 0xCu);
      }

      v24 = [(CSAudioRecorder *)self _getVoiceController];
      v37 = 0;
      v25 = [v24 stopRecordForStream:objc_msgSend(v6 error:{"streamHandleId"), &v37}];
      v11 = v37;

      if (v25)
      {
LABEL_14:
        v8 = 1;
        if (!a4)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    v26 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v34 = v26;
      v35 = [v11 localizedDescription];
      *buf = 136315394;
      v40 = "[CSAudioRecorder stopAudioStreamWithRecordDeviceIndicator:error:]";
      v41 = 2114;
      v42 = v35;
      _os_log_error_impl(&dword_1DDA4B000, v34, OS_LOG_TYPE_ERROR, "%s Failed to stopRecordForStream : %{public}@", buf, 0x16u);
    }

    v8 = 0;
    if (!a4)
    {
LABEL_23:
      v14 = [MEMORY[0x1E695DF00] date];
      v28 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v28;
        [v14 timeIntervalSinceDate:v9];
        *buf = 136315394;
        v40 = "[CSAudioRecorder stopAudioStreamWithRecordDeviceIndicator:error:]";
        v41 = 2050;
        v42 = v29;
        v18 = "%s stopRecordForStream elapsed time = %{public}lf";
        goto LABEL_25;
      }

LABEL_26:
      self->_waitingForDidStart = 0;

      goto LABEL_27;
    }

LABEL_22:
    v27 = v11;
    *a4 = v11;
    goto LABEL_23;
  }

  [(CSAudioFileReader *)audioFileReader stopRecording];
  v8 = 1;
LABEL_27:

  v30 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)startAudioStreamWithOption:(id)a3 recordDeviceIndicator:(id)a4 error:(id *)a5
{
  v93 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = 0x1E695D000uLL;
  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [v9 recordContext];
  v13 = [v12 avvcContext];

  if ([v9 shouldUseRemoteRecorder])
  {
    v14 = [v9 recordContext];
    v15 = [v14 type];

    if ((-[CSRemoteRecordClient hasPendingTwoShotBeep](self->_remoteRecordClient, "hasPendingTwoShotBeep") || -[CSAudioRecorder _hasLocalPendingTwoShot](self, "_hasLocalPendingTwoShot")) && v15 != 27 || [v8 startAlertBehavior] == 2 && (objc_msgSend(v8, "skipAlertBehavior") & 1) == 0)
    {
      v16 = [(CSAudioRecorder *)self _getVoiceController];
      [v16 playAlertSoundForType:1 overrideMode:-1];
    }

    v80 = v13;
    v18 = v13;
    v19 = v18;
    if ([CSUtils isRecordContextVoiceTrigger:v18])
    {
      if (v15 == 27)
      {
        +[CSAudioRecordContext contextForHomeButton];
      }

      else
      {
        +[CSAudioRecordContext contextForBuiltInVoiceTrigger];
      }
      v28 = ;
      v19 = [v28 avvcContext];
    }

    v29 = CSLogCategoryAudio;
    if (v19)
    {
      v30 = a5;
      v31 = v8;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v88 = "[CSAudioRecorder startAudioStreamWithOption:recordDeviceIndicator:error:]";
        v89 = 2114;
        v90 = v19;
        v91 = 2114;
        v92 = v18;
        _os_log_impl(&dword_1DDA4B000, v29, OS_LOG_TYPE_DEFAULT, "%s Asking startRecording to remote device with context : %{public}@ (original context : %{public}@)", buf, 0x20u);
      }

      remoteRecordClient = self->_remoteRecordClient;
      v85 = @"context";
      v86 = v19;
      v17 = 1;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      v84 = 0;
      v34 = [(CSRemoteRecordClient *)remoteRecordClient startRecordingWithOptions:v33 error:&v84];
      v35 = v84;

      if (v34)
      {
        self->_waitingForDidStart = 1;
        v8 = v31;
        a5 = v30;
        v10 = 0x1E695D000;
        if (!a5)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v8 = v31;
      a5 = v30;
      v10 = 0x1E695D000uLL;
    }

    else
    {
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v88 = "[CSAudioRecorder startAudioStreamWithOption:recordDeviceIndicator:error:]";
        _os_log_error_impl(&dword_1DDA4B000, v29, OS_LOG_TYPE_ERROR, "%s Failed to fetch valid context", buf, 0xCu);
      }

      v35 = 0;
    }

    v36 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v50 = a5;
      v51 = v36;
      v52 = [v35 localizedDescription];
      *buf = 136315394;
      v88 = "[CSAudioRecorder startAudioStreamWithOption:recordDeviceIndicator:error:]";
      v89 = 2114;
      v90 = v52;
      _os_log_error_impl(&dword_1DDA4B000, v51, OS_LOG_TYPE_ERROR, "%s Failed to startRecording : %{public}@", buf, 0x16u);

      a5 = v50;
      v10 = 0x1E695D000uLL;
    }

    v17 = 0;
    if (!a5)
    {
      goto LABEL_33;
    }

LABEL_32:
    v37 = v35;
    *a5 = v35;
LABEL_33:
    v38 = [*(v10 + 3840) date];
    v39 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v39;
      [v38 timeIntervalSinceDate:v11];
      *buf = 136315394;
      v88 = "[CSAudioRecorder startAudioStreamWithOption:recordDeviceIndicator:error:]";
      v89 = 2050;
      v90 = v41;
      _os_log_impl(&dword_1DDA4B000, v40, OS_LOG_TYPE_DEFAULT, "%s startRecordingWithOptions elapsed time = %{public}lf", buf, 0x16u);
    }

LABEL_63:
    v13 = v80;
    goto LABEL_64;
  }

  if (![(CSAudioRecorder *)self _shouldInjectAudio])
  {
    v79 = a5;
    mach_absolute_time();
    kdebug_trace();
    v20 = [v9 streamHandleId];
    if (v8)
    {
      v21 = v11;
      v22 = +[CSCarKitUtils sharedInstance];
      v23 = [v22 isCarPlayConnected];

      if (v23)
      {
        v24 = +[CSCarKitUtils sharedInstance];
        v25 = [(CSAudioRecorder *)self _getVoiceController];
        [v24 potentiallyAddHWLatencyToOption:v8 streamHandle:v20 voiceController:v25];
        v27 = v26 = v20;

        v8 = v27;
        v20 = v26;
      }

      v11 = v21;
    }

    else
    {
      v8 = +[CSAudioStartStreamOption noAlertOption];
    }

    v42 = [v9 streamHandleId];
    if (v42 == *MEMORY[0x1E6958390] && +[CSUtils isExclaveHardware])
    {
      if (!+[CSUtils isDarwinOS])
      {
        v78 = v20;
        v43 = v8;
        v44 = [MEMORY[0x1E6958468] sharedInstance];
        v45 = MEMORY[0x1E696AD98];
        +[CSConfig inputRecordingDurationInSecs];
        v46 = [v45 numberWithFloat:?];
        v83 = 0;
        v47 = [v44 setMXSessionProperty:@"PreferredMinimumMicrophoneIndicatorLightOnTime" value:v46 error:&v83];
        v48 = v83;

        v49 = CSLogCategoryAudio;
        if (v47)
        {
          if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v88 = "[CSAudioRecorder startAudioStreamWithOption:recordDeviceIndicator:error:]";
            _os_log_impl(&dword_1DDA4B000, v49, OS_LOG_TYPE_DEFAULT, "%s success", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
        {
          v76 = v49;
          v77 = [v48 localizedDescription];
          *buf = 136315394;
          v88 = "[CSAudioRecorder startAudioStreamWithOption:recordDeviceIndicator:error:]";
          v89 = 2112;
          v90 = v77;
          _os_log_error_impl(&dword_1DDA4B000, v76, OS_LOG_TYPE_ERROR, "%s Failed to set preferred mic indicator light time : %@", buf, 0x16u);
        }

        v8 = v43;
        v20 = v78;
      }

      [(CSExclaveAudioProviding *)self->_exclaveAudioClient prepare];
    }

    v80 = v13;
    if ([v9 shouldUseSystemDaemonRecorder])
    {
      v53 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        v54 = v53;
        v55 = [v8 localizedDescription];
        *buf = 136315394;
        v88 = "[CSAudioRecorder startAudioStreamWithOption:recordDeviceIndicator:error:]";
        v89 = 2114;
        v90 = v55;
        _os_log_impl(&dword_1DDA4B000, v54, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC startRecordForStream in system daemon : %{public}@", buf, 0x16u);
      }

      launchAgentAudioClient = self->_launchAgentAudioClient;
      v81 = 0;
      v57 = [(CSLaunchAgentXPCClient *)launchAgentAudioClient startAudioStreamWithOption:v8 error:&v81];
      v58 = v81;
      v59 = 0;
      if (!v57)
      {
LABEL_51:
        v60 = CSLogCategoryAudio;
        if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
        {
          v74 = v60;
          v75 = [v58 localizedDescription];
          *buf = 136315394;
          v88 = "[CSAudioRecorder startAudioStreamWithOption:recordDeviceIndicator:error:]";
          v89 = 2114;
          v90 = v75;
          _os_log_error_impl(&dword_1DDA4B000, v74, OS_LOG_TYPE_ERROR, "%s startRecordForStream failed : %{public}@", buf, 0x16u);
        }

        v17 = 0;
        goto LABEL_58;
      }
    }

    else
    {
      v59 = [v8 avvcStartRecordSettingsWithAudioStreamHandleId:v20];
      v61 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        v62 = v61;
        v63 = [v59 debugDescription];
        *buf = 136315394;
        v88 = "[CSAudioRecorder startAudioStreamWithOption:recordDeviceIndicator:error:]";
        v89 = 2114;
        v90 = v63;
        _os_log_impl(&dword_1DDA4B000, v62, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC startRecordForStream : %{public}@", buf, 0x16u);
      }

      v64 = [(CSAudioRecorder *)self _getVoiceController];
      v82 = 0;
      v65 = [v64 startRecordForStream:v59 error:&v82];
      v58 = v82;

      if ((v65 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    v17 = 1;
    self->_waitingForDidStart = 1;
LABEL_58:
    v66 = v8;
    if (v79)
    {
      v67 = v58;
      *v79 = v58;
    }

    v68 = [MEMORY[0x1E695DF00] date];
    v69 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v70 = v69;
      [v68 timeIntervalSinceDate:v11];
      *buf = 136315394;
      v88 = "[CSAudioRecorder startAudioStreamWithOption:recordDeviceIndicator:error:]";
      v89 = 2050;
      v90 = v71;
      _os_log_impl(&dword_1DDA4B000, v70, OS_LOG_TYPE_DEFAULT, "%s startRecordForStream elapsed time = %{public}lf", buf, 0x16u);
    }

    [(CSAudioRecorder *)self _logResourceNotAvailableErrorIfNeeded:v58];

    v8 = v66;
    goto LABEL_63;
  }

  v17 = [(CSAudioRecorder *)self _startAudioStreamForAudioInjectionWithAVVCContext:v13];
LABEL_64:

  v72 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)_startAudioStreamForAudioInjectionWithAVVCContext:(id)a3
{
  *&v38[13] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CSAudioRecorder *)self _shouldInjectAudio])
  {
    v5 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 136315138;
      v36 = "[CSAudioRecorder _startAudioStreamForAudioInjectionWithAVVCContext:]";
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s ::: CSAudioRecord will inject audio file instead of recording", &v35, 0xCu);
    }

    if ([(CSAudioRecorder *)self _needResetAudioInjectionIndex:v4])
    {
      v6 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 136315138;
        v36 = "[CSAudioRecorder _startAudioStreamForAudioInjectionWithAVVCContext:]";
        _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Resetting AudioFilePathIndex", &v35, 0xCu);
      }

      self->_audioFilePathIndex = 0;
    }

    else
    {
      v8 = self->_audioFilePathIndex + 1;
      self->_audioFilePathIndex = v8;
      v9 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 136315394;
        v36 = "[CSAudioRecorder _startAudioStreamForAudioInjectionWithAVVCContext:]";
        v37 = 1024;
        *v38 = v8;
        _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Increase AudioFilePathIndex = %d", &v35, 0x12u);
      }
    }

    v10 = +[CSFPreferences sharedPreferences];
    v11 = [v10 audioInjectionFilePath];

    audioFilePathIndex = self->_audioFilePathIndex;
    if (audioFilePathIndex >= [v11 count])
    {
      v14 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        v32 = self->_audioFilePathIndex;
        v33 = v14;
        v34 = [v11 count];
        v35 = 136315650;
        v36 = "[CSAudioRecorder _startAudioStreamForAudioInjectionWithAVVCContext:]";
        v37 = 1024;
        *v38 = v32;
        v38[2] = 1024;
        *&v38[3] = v34;
        _os_log_error_impl(&dword_1DDA4B000, v33, OS_LOG_TYPE_ERROR, "%s AudioFilePathIndex is out-of-boundary _audioFilePathIndex:%d injectAudioFilePaths:%d", &v35, 0x18u);
      }

      v13 = [v11 count] - 1;
      self->_audioFilePathIndex = v13;
    }

    else
    {
      v13 = self->_audioFilePathIndex;
    }

    v15 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v11 objectAtIndex:v13];
      v35 = 136315650;
      v36 = "[CSAudioRecorder _startAudioStreamForAudioInjectionWithAVVCContext:]";
      v37 = 1024;
      *v38 = v13;
      v38[2] = 2112;
      *&v38[3] = v17;
      _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_DEFAULT, "%s AudioFilePathIndex:%d accessing:%@", &v35, 0x1Cu);

      v13 = self->_audioFilePathIndex;
    }

    v18 = [v11 objectAtIndex:v13];
    if (v18 && ([MEMORY[0x1E696AC08] defaultManager], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "fileExistsAtPath:", v18), v19, (v20 & 1) != 0))
    {
      v21 = [CSAudioFileReader alloc];
      v22 = [MEMORY[0x1E695DFF8] URLWithString:v18];
      v23 = [(CSAudioFileReader *)v21 initWithURL:v22];
      audioFileReader = self->_audioFileReader;
      self->_audioFileReader = v23;

      [(CSAudioFileReader *)self->_audioFileReader setDelegate:self];
      v25 = self->_audioFileReader;
      +[CSConfig inputRecordingBufferDuration];
      [(CSAudioFileReader *)v25 setRecordBufferDuration:?];
      v26 = [CSAudioStreamRequest requestForLpcmRecordSettingsWithContext:0];
      v27 = [(CSAudioRecorder *)self _getRecordSettingsWithRequest:v26];
      v28 = [(CSAudioFileReader *)self->_audioFileReader prepareRecording:v27];

      if (v28)
      {
        v7 = [(CSAudioFileReader *)self->_audioFileReader startRecording];
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      v29 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        v35 = 136315394;
        v36 = "[CSAudioRecorder _startAudioStreamForAudioInjectionWithAVVCContext:]";
        v37 = 2112;
        *v38 = v18;
        _os_log_error_impl(&dword_1DDA4B000, v29, OS_LOG_TYPE_ERROR, "%s Unable to find injectAudioFilePath = %@", &v35, 0x16u);
      }
    }

    v7 = 0;
    goto LABEL_25;
  }

  v7 = 0;
LABEL_26:

  v30 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)prepareAudioStreamRecord:(id)a3 recordDeviceIndicator:(id)a4 error:(id *)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = MEMORY[0x1E695DF00];
  v10 = a3;
  v11 = [v9 date];
  v12 = [(CSAudioRecorder *)self _getRecordSettingsWithRequest:v10];

  kdebug_trace();
  v13 = 0;
  if (![v8 shouldUseRemoteRecorder])
  {
    goto LABEL_4;
  }

  v14 = [v8 deviceId];
  v15 = -[CSAudioRecorder _fetchRemoteRecordClientWithDeviceId:streamHandleId:](self, "_fetchRemoteRecordClientWithDeviceId:streamHandleId:", v14, [v8 streamHandleId]);

  if (!v15)
  {
    v29 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v43 = v29;
      v44 = [v8 deviceId];
      *buf = 136315395;
      v51 = "[CSAudioRecorder prepareAudioStreamRecord:recordDeviceIndicator:error:]";
      v52 = 2113;
      v53 = v44;
      _os_log_error_impl(&dword_1DDA4B000, v43, OS_LOG_TYPE_ERROR, "%s Remote device with device id: %{private}@ not found", buf, 0x16u);
    }

    if ([v8 streamHandleId] == 1)
    {
      v30 = 305;
    }

    else
    {
      v30 = 307;
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:v30 userInfo:0];
LABEL_18:
    v31 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v41 = v31;
      v42 = [v17 localizedDescription];
      *buf = 136315394;
      v51 = "[CSAudioRecorder prepareAudioStreamRecord:recordDeviceIndicator:error:]";
      v52 = 2114;
      v53 = v42;
      _os_log_error_impl(&dword_1DDA4B000, v41, OS_LOG_TYPE_ERROR, "%s Failed to prepare remote device : %{public}@", buf, 0x16u);

      if (a5)
      {
        goto LABEL_20;
      }
    }

    else if (a5)
    {
LABEL_20:
      v32 = v17;
      v23 = 0;
      *a5 = v17;
      goto LABEL_30;
    }

    v23 = 0;
    goto LABEL_30;
  }

  v49 = 0;
  v16 = [v15 waitingForConnection:&v49 error:3.0];
  v17 = v49;

  v13 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_4:
  v18 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    v20 = [v8 streamHandleId];
    *buf = 136315650;
    v51 = "[CSAudioRecorder prepareAudioStreamRecord:recordDeviceIndicator:error:]";
    v52 = 2050;
    v53 = v20;
    v54 = 2114;
    v55 = v12;
    _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC prepareRecordForStream(%{public}llu) : %{public}@", buf, 0x20u);
  }

  if ([v8 shouldUseSystemDaemonRecorder])
  {
    v21 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v51 = "[CSAudioRecorder prepareAudioStreamRecord:recordDeviceIndicator:error:]";
      _os_log_impl(&dword_1DDA4B000, v21, OS_LOG_TYPE_DEFAULT, "%s Preparing Audio record in System Daemon", buf, 0xCu);
    }

    launchAgentAudioClient = self->_launchAgentAudioClient;
    v47 = v13;
    v23 = -[CSLaunchAgentXPCClient prepareAudioRecordWithStreamHandleId:settings:error:](launchAgentAudioClient, "prepareAudioRecordWithStreamHandleId:settings:error:", [v8 streamHandleId], v12, &v47);
    v17 = v47;
  }

  else
  {
    v24 = objc_alloc(MEMORY[0x1E6958558]);
    v25 = [v8 streamHandleId];
    +[CSConfig inputRecordingBufferDuration];
    v26 = [v24 initWithStreamID:v25 settings:v12 bufferDuration:?];
    [v26 setMeteringEnabled:1];
    v27 = [(CSAudioRecorder *)self _getVoiceController];
    v48 = v13;
    v28 = [v27 prepareRecordForStream:v26 error:&v48];
    v17 = v48;

    if (v28)
    {
      [(CSAudioRecorder *)self _trackRemoteAccessoryStreamIdIfNeeded:v8];
      v23 = 1;
    }

    else
    {
      v33 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        v45 = v33;
        v46 = [v17 localizedDescription];
        *buf = 136315394;
        v51 = "[CSAudioRecorder prepareAudioStreamRecord:recordDeviceIndicator:error:]";
        v52 = 2114;
        v53 = v46;
        _os_log_error_impl(&dword_1DDA4B000, v45, OS_LOG_TYPE_ERROR, "%s AVVC prepareRecordForStream failed : %{public}@", buf, 0x16u);
      }

      v23 = 0;
    }

    v13 = v26;
  }

  if (a5)
  {
    v34 = v17;
    *a5 = v17;
  }

  v35 = [MEMORY[0x1E695DF00] date];
  v36 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v37 = v36;
    [v35 timeIntervalSinceDate:v11];
    *buf = 136315394;
    v51 = "[CSAudioRecorder prepareAudioStreamRecord:recordDeviceIndicator:error:]";
    v52 = 2050;
    v53 = v38;
    _os_log_impl(&dword_1DDA4B000, v37, OS_LOG_TYPE_DEFAULT, "%s prepareRecordForStream elapsed time = %{public}lf", buf, 0x16u);
  }

  [(CSAudioRecorder *)self _logResourceNotAvailableErrorIfNeeded:v17];

LABEL_30:
  v39 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)setCurrentContext:(id)a3 streamHandleId:(unint64_t)a4 error:(id *)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [MEMORY[0x1E695DF00] date];
  if ([v8 type] == 5 && objc_msgSend(v8, "isRequestDuringActiveCall"))
  {
    v10 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[CSAudioRecorder setCurrentContext:streamHandleId:error:]";
      _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Will skip setting current record context because we were in active call and context was post or auto", buf, 0xCu);
    }

    v11 = 1;
  }

  else
  {
    v12 = [v8 avvcContextSettings];
    v13 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v12 debugDescription];
      *buf = 136315394;
      v31 = "[CSAudioRecorder setCurrentContext:streamHandleId:error:]";
      v32 = 2114;
      v33 = v15;
      _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC setContextForStream : %{public}@", buf, 0x16u);
    }

    audioFileReader = self->_audioFileReader;
    self->_audioFileReader = 0;

    if ([v12 activationMode] == 1886352244 || objc_msgSend(v12, "activationMode") == 1635087471)
    {
      v17 = [(CSAudioRecorder *)self _getVoiceController];
      v29 = 0;
      v11 = [v17 setContextForStream:v12 forStream:a4 error:&v29];
      v18 = v29;

      v19 = [MEMORY[0x1E695DF00] date];
      v20 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        [v19 timeIntervalSinceDate:v9];
        *buf = 136315394;
        v31 = "[CSAudioRecorder setCurrentContext:streamHandleId:error:]";
        v32 = 2050;
        v33 = v22;
        _os_log_impl(&dword_1DDA4B000, v21, OS_LOG_TYPE_DEFAULT, "%s setCurrentContext elapsed time = %{public}lf", buf, 0x16u);
      }

      if (a5)
      {
        v23 = v18;
        *a5 = v18;
      }
    }

    else
    {
      v24 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
        v26 = [v12 activationMode];
        *buf = 136315394;
        v31 = "[CSAudioRecorder setCurrentContext:streamHandleId:error:]";
        v32 = 2048;
        v33 = v26;
        _os_log_impl(&dword_1DDA4B000, v25, OS_LOG_TYPE_DEFAULT, "%s Tried to setCurrentContext with mode %ld. This method can only be used for auto and post", buf, 0x16u);
      }

      v11 = 1;
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)setContext:(id)a3 completion:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__2230;
  v40 = __Block_byref_object_dispose__2231;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [v6 avvcContextSettings];
  v10 = CSLogCategoryAudio;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 debugDescription];
    *buf = 136315394;
    v43 = "[CSAudioRecorder setContext:completion:]";
    v44 = 2112;
    v45 = v11;
    _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC setContext : %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CSAudioRecorder_setContext_completion___block_invoke;
  block[3] = &unk_1E865A930;
  v25 = &v32;
  block[4] = self;
  v13 = v9;
  v24 = v13;
  v26 = &v28;
  v27 = &v36;
  dispatch_async_and_wait(queue, block);
  if (!v33[3])
  {
    v14 = CSLogCategoryAudio;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v22 = [v37[5] localizedDescription];
      *buf = 136315394;
      v43 = "[CSAudioRecorder setContext:completion:]";
      v44 = 2114;
      v45 = v22;
      _os_log_error_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_ERROR, "%s Failed to get handle id : %{public}@", buf, 0x16u);
    }
  }

  if (+[CSUtils supportsSystemDaemon]&& v33[3] == *MEMORY[0x1E6958390])
  {
    [(CSLaunchAgentXPCClient *)self->_launchAgentAudioClient setContext:v6];
  }

  audioFileReader = self->_audioFileReader;
  self->_audioFileReader = 0;

  v16 = [MEMORY[0x1E695DF00] date];
  v17 = CSLogCategoryAudio;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    [v16 timeIntervalSinceDate:v8];
    v18 = v33[3];
    v19 = v29[3];
    *buf = 136315906;
    v43 = "[CSAudioRecorder setContext:completion:]";
    v44 = 2050;
    v45 = v20;
    v46 = 2050;
    v47 = v18;
    v48 = 2050;
    v49 = v19;
    _os_log_impl(&dword_1DDA4B000, v17, OS_LOG_TYPE_DEFAULT, "%s setContext elapsed time = %{public}lf, streamHandleId = %{public}lu, streamType = %{public}lu", buf, 0x2Au);
  }

  if (v7)
  {
    v7[2](v7, v33[3], v29[3], v37[5]);
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  v21 = *MEMORY[0x1E69E9840];
}

void __41__CSAudioRecorder_setContext_completion___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v4 = *(a1[7] + 8);
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v3 setContext:v2 streamType:v4 + 24 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[6] + 8) + 24) = v6;
}

- (id)_createVoiceControllerWithError:(id *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2230;
  v19 = __Block_byref_object_dispose__2231;
  v20 = 0;
  voiceController = self->_voiceController;
  if (!voiceController)
  {
    [(CSAudioRecorder *)self clearListeningMicIndicatorProperty];
    kdebug_trace();
    if (CSIsHorseman_onceToken != -1)
    {
      dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
    }

    if (CSIsHorseman_isHorseman == 1)
    {
      voiceControllerCreationQueue = self->_voiceControllerCreationQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__CSAudioRecorder__createVoiceControllerWithError___block_invoke;
      block[3] = &unk_1E865C880;
      block[4] = self;
      block[5] = &v15;
      dispatch_sync(voiceControllerCreationQueue, block);
    }

    queue = self->_queue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__CSAudioRecorder__createVoiceControllerWithError___block_invoke_2;
    v13[3] = &unk_1E865C880;
    v13[4] = self;
    v13[5] = &v15;
    dispatch_async_and_wait(queue, v13);
    if (a3)
    {
      *a3 = v16[5];
    }

    v8 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_voiceController;
      *buf = 136315394;
      v22 = "[CSAudioRecorder _createVoiceControllerWithError:]";
      v23 = 2050;
      v24 = v9;
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Successfully create AVVC : %{public}p", buf, 0x16u);
    }

    voiceController = self->_voiceController;
  }

  v10 = voiceController;
  _Block_object_dispose(&v15, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __51__CSAudioRecorder__createVoiceControllerWithError___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E6958578]);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 initWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;
}

void __51__CSAudioRecorder__createVoiceControllerWithError___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 8))
  {
    v2 = objc_alloc(MEMORY[0x1E6958578]);
    v3 = *(*(a1 + 40) + 8);
    obj = *(v3 + 40);
    v4 = [v2 initWithError:&obj];
    objc_storeStrong((v3 + 40), obj);
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    *(v5 + 8) = v4;
  }

  kdebug_trace();
  v7 = *(*(a1 + 32) + 8);
  if (v7)
  {
    [v7 setRecordDelegate:?];
  }

  else
  {
    v8 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[CSAudioRecorder _createVoiceControllerWithError:]_block_invoke_2";
      _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s AVVC initialization failed", buf, 0xCu);
    }

    v9 = *(*(*(a1 + 40) + 8) + 40);
    if (v9)
    {
      v10 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        v12 = v10;
        v13 = [v9 localizedDescription];
        *buf = 136315394;
        v16 = "[CSAudioRecorder _createVoiceControllerWithError:]_block_invoke";
        v17 = 2114;
        v18 = v13;
        _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_destroyVoiceController
{
  v18 = *MEMORY[0x1E69E9840];
  voiceController = self->_voiceController;
  if (voiceController)
  {
    v4 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[CSAudioRecorder _destroyVoiceController]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
      voiceController = self->_voiceController;
    }

    v13 = 0;
    [(AVVoiceController *)voiceController teardownWithError:&v13];
    v5 = v13;
    if (v5)
    {
      v6 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        v11 = v6;
        v12 = [v5 localizedDescription];
        *buf = 136315394;
        v15 = "[CSAudioRecorder _destroyVoiceController]";
        v16 = 2114;
        v17 = v12;
        _os_log_error_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_ERROR, "%s Failed to teardown AVVC : %{public}@", buf, 0x16u);
      }
    }

    v7 = objc_autoreleasePoolPush();
    v8 = self->_voiceController;
    self->_voiceController = 0;

    objc_autoreleasePoolPop(v7);
    launchAgentAudioClient = self->_launchAgentAudioClient;
    if (launchAgentAudioClient)
    {
      [(CSLaunchAgentXPCClient *)launchAgentAudioClient resetAVVC];
    }
  }

  [(NSMutableDictionary *)self->_hasSetAlertDictionary removeAllObjects];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  [(CSAudioRecorder *)self _destroyVoiceController];
  pNonInterleavedABL = self->_pNonInterleavedABL;
  if (pNonInterleavedABL)
  {
    free(pNonInterleavedABL);
  }

  v4 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[CSAudioRecorder dealloc]";
    v9 = 2050;
    v10 = self;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s CSAudioRecorder %{public}p deallocated", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = CSAudioRecorder;
  [(CSAudioRecorder *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)willDestroy
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[CSAudioRecorder willDestroy]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CSAudioRecorder_willDestroy__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async_and_wait(queue, block);
  if (self->_waitingForDidStart)
  {
    v5 = self->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__CSAudioRecorder_willDestroy__block_invoke_2;
    v9[3] = &unk_1E865CB68;
    v9[4] = self;
    dispatch_async(v5, v9);
  }

  v6 = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__CSAudioRecorder_willDestroy__block_invoke_3;
  v8[3] = &unk_1E865CB68;
  v8[4] = self;
  dispatch_async(v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __30__CSAudioRecorder_willDestroy__block_invoke(uint64_t a1)
{
  [*(a1 + 32) clearListeningMicIndicatorProperty];
  v2 = *(a1 + 32);

  return [v2 _destroyVoiceController];
}

void __30__CSAudioRecorder_willDestroy__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:205 userInfo:0];
  [v1 _audioRecorderDidStartRecordingSuccessfully:0 streamHandleID:0 error:v2];
}

void __30__CSAudioRecorder_willDestroy__block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioRecorderWillBeDestroyed:{*(a1 + 32), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)userSessionActivateMonitor:(id)a3 didReceivedUserSessionActiveHasChanged:(BOOL)a4
{
  if (!a4)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__CSAudioRecorder_userSessionActivateMonitor_didReceivedUserSessionActiveHasChanged___block_invoke;
    block[3] = &unk_1E865CB68;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __85__CSAudioRecorder_userSessionActivateMonitor_didReceivedUserSessionActiveHasChanged___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSAudioRecorder userSessionActivateMonitor:didReceivedUserSessionActiveHasChanged:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Tear down _remoteRecordClient if needed", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  if (v4)
  {
    *(v3 + 48) = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setAudioSessionEventDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CSAudioRecorder_setAudioSessionEventDelegate___block_invoke;
  v7[3] = &unk_1E865C970;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CSAudioRecorder_unregisterObserver___block_invoke;
  v7[3] = &unk_1E865C970;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CSAudioRecorder_registerObserver___block_invoke;
  v7[3] = &unk_1E865C970;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (CSAudioRecorder)initWithQueue:(id)a3 error:(id *)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v52.receiver = self;
  v52.super_class = CSAudioRecorder;
  v7 = [(CSAudioRecorder *)&v52 init];
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      [(CSAudioRecorder *)v7 setQueue:v6];
    }

    else
    {
      v9 = [objc_opt_class() description];
      v10 = [CSUtils getSerialQueue:v9 qualityOfService:33];
      queue = v8->_queue;
      v8->_queue = v10;
    }

    v12 = [objc_opt_class() description];
    v13 = [CSUtils getSerialQueue:v12 qualityOfService:9];
    voiceControllerCreationQueue = v8->_voiceControllerCreationQueue;
    v8->_voiceControllerCreationQueue = v13;

    v51 = 0;
    v15 = [(CSAudioRecorder *)v8 _createVoiceControllerWithError:&v51];
    v16 = v51;
    voiceController = v8->_voiceController;
    v8->_voiceController = v15;

    if (+[CSUtils isExclaveHardware])
    {
      v18 = +[CSExclaveMessageHandlingFactory exclaveAudioProvider];
      exclaveAudioClient = v8->_exclaveAudioClient;
      v8->_exclaveAudioClient = v18;

      [(CSExclaveAudioProviding *)v8->_exclaveAudioClient setDelegate:v8];
      if (+[CSUtils supportsSystemDaemon])
      {
        objc_storeStrong(&v8->_launchAgentAudioClient, v8->_exclaveAudioClient);
        launchAgentAudioClient = v8->_launchAgentAudioClient;
        v50 = 0;
        v21 = [(CSLaunchAgentXPCClient *)launchAgentAudioClient initAudioRecorderWithError:&v50];
        v22 = v50;
        if (!v21)
        {
          v23 = CSLogCategoryAudio;
          if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
          {
            v48 = v23;
            v49 = [v22 localizedDescription];
            *buf = 136315394;
            v54 = "[CSAudioRecorder initWithQueue:error:]";
            v55 = 2114;
            v56 = v49;
            _os_log_error_impl(&dword_1DDA4B000, v48, OS_LOG_TYPE_ERROR, "%s Failed to create audio recorder in system daemon : %{public}@", buf, 0x16u);
          }
        }
      }
    }

    if (v8->_voiceController && !v16)
    {
      v24 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      observers = v8->_observers;
      v8->_observers = v24;

      v26 = [MEMORY[0x1E695DF90] dictionary];
      opusDecoders = v8->_opusDecoders;
      v8->_opusDecoders = v26;

      v8->_audioFilePathIndex = 0;
      v8->_waitingForDidStart = 0;
      v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      remoteAccessoryStreamIdSet = v8->_remoteAccessoryStreamIdSet;
      v8->_remoteAccessoryStreamIdSet = v28;

      v30 = +[CSUserSessionActiveMonitor sharedInstance];
      [v30 addObserver:v8];

      if (CSIsHorseman_onceToken != -1)
      {
        dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
      }

      if (CSIsHorseman_isHorseman == 1)
      {
        +[CSConfig inputRecordingSampleRate];
        v32 = (v31 * +[CSConfig inputRecordingSampleByteDepth]);
        +[CSConfig inputRecordingBufferDuration];
        v34 = [[CSReusableBufferPoolConfiguration alloc] initWithBackingStoreCapacity:(v33 * v32 * +[CSConfig minimalNumberOfBackingStores:"inputRecordingNumberOfChannels"]) maximumNumberOfBackingStores:4 backingStoreIdleTimeout:32, 10.0];
        if (v34)
        {
          v35 = v34;
          v36 = [[CSReusableBufferPool alloc] initWithConfiguration:v34];
          audioBufferPool = v8->_audioBufferPool;
          v8->_audioBufferPool = v36;
        }
      }

      v38 = [MEMORY[0x1E695DF90] dictionary];
      hasSetAlertDictionary = v8->_hasSetAlertDictionary;
      v8->_hasSetAlertDictionary = v38;

      dispatch_async(v8->_queue, &__block_literal_global_2247);
      v40 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v54 = "[CSAudioRecorder initWithQueue:error:]";
        v55 = 2050;
        v56 = v8;
        _os_log_impl(&dword_1DDA4B000, v40, OS_LOG_TYPE_DEFAULT, "%s Create new CSAudioRecorder = %{public}p", buf, 0x16u);
      }

      goto LABEL_20;
    }

    v42 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v44 = v42;
      v45 = [v16 localizedDescription];
      *buf = 136315394;
      v54 = "[CSAudioRecorder initWithQueue:error:]";
      v55 = 2114;
      v56 = v45;
      _os_log_error_impl(&dword_1DDA4B000, v44, OS_LOG_TYPE_ERROR, "%s Failed to create AVVC : %{public}@", buf, 0x16u);

      if (a4)
      {
        goto LABEL_25;
      }
    }

    else if (a4)
    {
LABEL_25:
      v43 = v16;
      v41 = 0;
      *a4 = v16;
      goto LABEL_28;
    }

    v41 = 0;
    goto LABEL_28;
  }

LABEL_20:
  if (a4)
  {
    *a4 = 0;
  }

  v41 = v8;
  v16 = 0;
LABEL_28:

  v46 = *MEMORY[0x1E69E9840];
  return v41;
}

void __39__CSAudioRecorder_initWithQueue_error___block_invoke()
{
  v0 = +[CSSiriEnabledMonitor sharedInstance];
  v1 = [v0 isEnabled];

  v3 = +[CSSecureSessionHandler sharedHandler];
  v2 = +[CSSecureSessionHandler siriEnablementSessionAssertionUUID];
  if (v1)
  {
    [v3 acquireSecureSessionAssertionWithUUID:v2];
  }

  else
  {
    [v3 releaseSecureSessionAssertionWithUUID:v2];
  }
}

- (CSAudioRecorder)init
{
  v7.receiver = self;
  v7.super_class = CSAudioRecorder;
  v2 = [(CSAudioRecorder *)&v7 init];
  if (v2)
  {
    v3 = [objc_opt_class() description];
    v4 = [CSUtils getSerialQueue:v3 qualityOfService:33];
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

+ (void)resetDuckSettings
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "+[CSAudioRecorder resetDuckSettings]";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Calling audio session reset ducking settings", buf, 0xCu);
  }

  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [MEMORY[0x1E6958468] sharedInstance];
  v14 = 0;
  [v4 setDuckToLevelDB:0 error:&v14];
  v5 = v14;

  v6 = [MEMORY[0x1E695DF00] date];
  v7 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    [v6 timeIntervalSinceDate:v3];
    *buf = 136315394;
    v16 = "+[CSAudioRecorder resetDuckSettings]";
    v17 = 2050;
    v18 = v9;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s resetDuckSettings elapsed time = %{public}lf", buf, 0x16u);
  }

  if (v5)
  {
    v10 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v12 = v10;
      v13 = [v5 localizedDescription];
      *buf = 136315394;
      v16 = "+[CSAudioRecorder resetDuckSettings]";
      v17 = 2114;
      v18 = v13;
      _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, "%s Failed to setDuckToLevelDB : %{public}@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)createSharedAudioSession
{
  v21 = *MEMORY[0x1E69E9840];
  if (!+[CSUtils isDarwinOS])
  {
    v2 = [MEMORY[0x1E6958468] sharedInstance];
    v16 = 0;
    v3 = [v2 setIAmTheAssistant:1 error:&v16];
    v4 = v16;

    v5 = CSLogCategoryAudio;
    if ((v3 & 1) == 0 && os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v11 = v5;
      v12 = [v4 localizedDescription];
      *buf = 136315394;
      v18 = "+[CSAudioRecorder createSharedAudioSession]";
      v19 = 2114;
      v20 = v12;
      _os_log_error_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_ERROR, "%s Failed to setIamTheAssistant : %{public}@", buf, 0x16u);

      v5 = CSLogCategoryAudio;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "+[CSAudioRecorder createSharedAudioSession]";
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Creating audio session with allow mixable audio while recording to YES", buf, 0xCu);
    }

    v6 = [MEMORY[0x1E6958468] sharedInstance];
    v15 = 0;
    v7 = [v6 setAllowMixableAudioWhileRecording:1 error:&v15];
    v8 = v15;

    if ((v7 & 1) == 0)
    {
      v9 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        v13 = v9;
        v14 = [v8 localizedDescription];
        *buf = 136315394;
        v18 = "+[CSAudioRecorder createSharedAudioSession]";
        v19 = 2114;
        v20 = v14;
        _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, "%s Failed to setAllowMixableAudioWhileRecording : %{public}@", buf, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end