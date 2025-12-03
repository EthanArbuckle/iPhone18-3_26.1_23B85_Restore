@interface CSAudioProvider
- (BOOL)_activateAudioSessionWithReason:(unint64_t)reason error:(id *)error;
- (BOOL)_canSetContext;
- (BOOL)_clearListeningMicIndicatorProperty;
- (BOOL)_deactivateAudioSession:(unint64_t)session error:(id *)error;
- (BOOL)_didPlayStartAlertSoundForSiri:(id)siri audioStream:(id)stream;
- (BOOL)_isDuckingOnSpeakerOutputSupportedWithCurrentRoute;
- (BOOL)_prepareAudioStreamSync:(id)sync request:(id)request error:(id *)error;
- (BOOL)_setListeningMicIndicatorProperty;
- (BOOL)_setListeningMicIndicatorPropertyIfNeeded;
- (BOOL)_shouldDuckOnBuiltInSpeaker;
- (BOOL)_shouldHandleStartPendingOnStopping:(unint64_t)stopping withStopReason:(int64_t)reason;
- (BOOL)_shouldStopRecording;
- (BOOL)activateAudioSessionWithReason:(unint64_t)reason dynamicAttribute:(unint64_t)attribute bundleID:(id)d error:(id *)error;
- (BOOL)deactivateAudioSession:(unint64_t)session error:(id *)error;
- (BOOL)isNarrowBand;
- (BOOL)isRecording;
- (BOOL)playAlertSoundForType:(int64_t)type;
- (BOOL)playRecordStartingAlertAndResetEndpointerWithAlertOverride:(int64_t)override;
- (BOOL)prepareAudioStreamSync:(id)sync request:(id)request error:(id *)error;
- (BOOL)prewarmAudioSessionWithError:(id *)error;
- (BOOL)setCurrentContext:(id)context error:(id *)error;
- (BOOL)supportsDuckingOnCurrentRouteWithError:(id *)error;
- (CSAudioAlertProvidingDelegate)alertDelegate;
- (CSAudioProvider)initWithAudioStreamHandleId:(unint64_t)id audioStreamType:(int64_t)type audioRecordContext:(id)context audioRecorder:(id)recorder phoneCallStateMonitor:(id)monitor;
- (CSAudioProviderDelegate)providerDelegate;
- (CSAudioSessionProvidingDelegate)sessionDelegate;
- (float)averagePowerForChannel:(unint64_t)channel;
- (float)circularBufferInputRecordingDuration;
- (float)peakPowerForChannel:(unint64_t)channel;
- (id)_acquireListeningMicIndicatorLockFrom:(unint64_t)from;
- (id)_acquireRecordModeLockFrom:(unint64_t)from;
- (id)_audioChunkFrom:(unint64_t)from to:(unint64_t)to;
- (id)_audioChunkFrom:(unint64_t)from to:(unint64_t)to channelIdx:(unint64_t)idx;
- (id)_audioStreamWithRequest:(id)request streamName:(id)name error:(id *)error;
- (id)_streamStateName:(unint64_t)name;
- (id)audioChunkFrom:(unint64_t)from to:(unint64_t)to;
- (id)audioChunkFrom:(unint64_t)from to:(unint64_t)to channelIdx:(unint64_t)idx;
- (id)audioChunkToEndFrom:(unint64_t)from;
- (id)audioChunkToEndFrom:(unint64_t)from channelIdx:(unint64_t)idx;
- (id)audioDeviceInfo;
- (id)audioMetric;
- (id)audioStreamWithRequest:(id)request streamName:(id)name error:(id *)error;
- (id)holdAudioStreamWithDescription:(id)description option:(id)option;
- (id)playbackRoute;
- (id)recordDeviceInfo;
- (id)recordRoute;
- (id)recordSettings;
- (int)circularBufferNumInputChannel;
- (unint64_t)alertStartTime;
- (void)CSAudioServerCrashMonitorDidReceiveServerCrash:(id)crash;
- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)restart;
- (void)CSPhoneCallStateMonitor:(id)monitor didRecievePhoneCallStateChange:(unint64_t)change;
- (void)_cancelAudioPacketWatchDog;
- (void)_cancelAudioStreamHold:(id)hold;
- (void)_clearDidStartRecordingDelegateWatchDog;
- (void)_clearDidStopRecordingDelegateWatchDog;
- (void)_clearListeningMicIndicatorPropertyIfNeeded;
- (void)_createCircularBufferIfNeededWithNumChannel:(unint64_t)channel playbackRoute:(id)route;
- (void)_deliverHistoricalAudioToStreamsWithRemoteVAD:(id)d;
- (void)_deliverPostprocessAudioChunk:(id)chunk toStream:(id)stream lastForwardedSampleCount:(unint64_t)count;
- (void)_didFireStreamHolderTimeout:(id)timeout;
- (void)_didReceiveFinishStartAlertPlaybackAt:(unint64_t)at;
- (void)_fetchHistoricalAudioAndForwardToStream:(id)stream remoteVAD:(id)d;
- (void)_forceReleaseAllListeningMicIndicatorLocks;
- (void)_forceReleaseAllRecordModeLocks;
- (void)_forceReleaseListeningMicIndicatorLockFrom:(unint64_t)from;
- (void)_forceReleaseRecordModeLockFrom:(unint64_t)from;
- (void)_forwardAudioChunk:(id)chunk toStream:(id)stream;
- (void)_forwardAudioChunkForTV:(id)v toStream:(id)stream;
- (void)_handleAudioRecorderStreamHandleIdInvalidated:(unint64_t)invalidated;
- (void)_handleAudioSystemFailure;
- (void)_handleDidStartAudioStreamWithResult:(BOOL)result error:(id)error;
- (void)_handleDidStopAudioStreamWithReason:(int64_t)reason;
- (void)_holdAudioStreamWithHolder:(id)holder option:(id)option;
- (void)_holdRecordingExceptionIfNeeded:(BOOL)needed;
- (void)_holdRecordingTransactionIfNeeded;
- (void)_onAudioPacketWatchdogFire;
- (void)_postEpilogueAudioStream;
- (void)_preEpilogueAudioStream;
- (void)_prepareAudioStream:(id)stream request:(id)request completion:(id)completion;
- (void)_processAudioBuffer:(id)buffer remoteVAD:(id)d atTime:(unint64_t)time arrivalTimestampToAudioRecorder:(unint64_t)recorder numberOfChannels:(int)channels;
- (void)_releaseListeningMicIndicatorLock:(id)lock;
- (void)_releaseListeningMicIndicatorLockFrom:(unint64_t)from;
- (void)_releaseRecordModeLock:(id)lock;
- (void)_releaseRecordingTransactionIfNeeded;
- (void)_resetCircularBufferStartTime;
- (void)_saveRecordingBufferFrom:(unint64_t)from to:(unint64_t)to toURL:(id)l;
- (void)_schduleDidStartRecordingDelegateWatchDogWithToken:(id)token;
- (void)_scheduleAlertFinishTimeout:(double)timeout;
- (void)_scheduleAudioPacketWatchDog;
- (void)_scheduleDidStartRecordingDelegateWatchDog;
- (void)_scheduleDidStopRecordingDelegateWatchDog;
- (void)_scheduleDidStopRecordingDelegateWatchDog:(id)dog;
- (void)_setLatestRecordContext:(id)context;
- (void)_startAudioStream:(id)stream option:(id)option completion:(id)completion;
- (void)_stopAudioStream:(id)stream option:(id)option completion:(id)completion;
- (void)_switchToListeningMode;
- (void)_switchToRecordingMode;
- (void)_updateRemoteDeviceIdFromAVVCIfNeeded;
- (void)attachTandemStream:(id)stream withConfig:(id)config toPrimaryStream:(id)primaryStream completion:(id)completion;
- (void)audioPreprocessor:(id)preprocessor hasAvailableBuffer:(id)buffer atTime:(unint64_t)time arrivalTimestampToAudioRecorder:(unint64_t)recorder numberOfChannels:(int)channels;
- (void)audioRecorderBeginRecordInterruption:(id)interruption;
- (void)audioRecorderBeginRecordInterruption:(id)interruption withContext:(id)context;
- (void)audioRecorderBufferAvailable:(id)available audioStreamHandleId:(unint64_t)id buffer:(id)buffer;
- (void)audioRecorderBufferAvailable:(id)available audioStreamHandleId:(unint64_t)id buffer:(id)buffer remoteVAD:(id)d atTime:(unint64_t)time arrivalTimestampToAudioRecorder:(unint64_t)recorder numberOfChannels:(int)channels;
- (void)audioRecorderBuiltInAudioStreamInvalidated:(id)invalidated error:(id)error;
- (void)audioRecorderDidFinishAlertPlayback:(id)playback ofType:(int64_t)type error:(id)error;
- (void)audioRecorderDidStartRecord:(id)record audioStreamHandleId:(unint64_t)id successfully:(BOOL)successfully error:(id)error;
- (void)audioRecorderDidStopRecord:(id)record audioStreamHandleId:(unint64_t)id reason:(int64_t)reason;
- (void)audioRecorderDisconnected:(id)disconnected;
- (void)audioRecorderEndRecordInterruption:(id)interruption;
- (void)audioRecorderExclaveBufferAvailable:(id)available audioStreamHandleId:(unint64_t)id hostTime:(unint64_t)time arrivalTimestampToAudioRecorder:(unint64_t)recorder;
- (void)audioRecorderRecordHardwareConfigurationDidChange:(id)change toConfiguration:(int64_t)configuration;
- (void)audioRecorderSensorInvalidated:(id)invalidated;
- (void)audioRecorderStreamHandleIdInvalidated:(unint64_t)invalidated;
- (void)audioRecorderWillBeDestroyed:(id)destroyed;
- (void)audioStreamWithRequest:(id)request streamName:(id)name completion:(id)completion;
- (void)cancelAudioStreamHold:(id)hold;
- (void)configureAlertBehavior:(id)behavior;
- (void)dealloc;
- (void)enableMiniDucking:(BOOL)ducking;
- (void)enableSmartRoutingConsideration:(BOOL)consideration;
- (void)notifyProviderContextChanged;
- (void)prepareAudioStream:(id)stream request:(id)request completion:(id)completion;
- (void)saveRecordingBufferFrom:(unint64_t)from to:(unint64_t)to toURL:(id)l;
- (void)saveRecordingBufferToEndFrom:(unint64_t)from toURL:(id)l;
- (void)setAnnounceCallsEnabled:(BOOL)enabled withStreamHandleID:(unint64_t)d;
- (void)setAudioAlertDelegate:(id)delegate;
- (void)setAudioProviderDelegate:(id)delegate;
- (void)setAudioRecorder:(id)recorder;
- (void)setAudioSessionDelegate:(id)delegate;
- (void)setDuckOthersOption:(BOOL)option;
- (void)setLatestRecordContext:(id)context streamType:(int64_t)type;
- (void)setStreamState:(unint64_t)state;
- (void)start;
- (void)startAudioStream:(id)stream option:(id)option completion:(id)completion;
- (void)stopAudioStream:(id)stream option:(id)option completion:(id)completion;
- (void)triggerInfoForContext:(id)context completion:(id)completion;
- (void)updateMeters;
@end

@implementation CSAudioProvider

- (void)_updateRemoteDeviceIdFromAVVCIfNeeded
{
  v17 = *MEMORY[0x1E69E9840];
  if (!+[CSUtils supportRemoteDarwinVoiceTrigger])
  {
LABEL_15:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  v12 = +[CSRemoteDarwinDeviceInfo sharedInstance];
  if ([v12 hasDarwinDeviceConnected] && -[CSAudioRecordDeviceIndicator shouldUseRemoteRecorder](self->_recordDeviceIndicator, "shouldUseRemoteRecorder"))
  {
    deviceId = [(CSAudioRecordDeviceIndicator *)self->_recordDeviceIndicator deviceId];

    if (!deviceId)
    {
      audioRecorder = [(CSAudioProvider *)self audioRecorder];
      audioStreamHandleId = self->_audioStreamHandleId;
      recordDeviceIndicator = [(CSAudioProvider *)self recordDeviceIndicator];
      v7 = [audioRecorder recordDeviceInfoWithStreamHandleId:audioStreamHandleId recordDeviceIndicator:recordDeviceIndicator];

      remoteDeviceUIDString = [v7 remoteDeviceUIDString];
      v9 = CSLogCategoryAudio;
      if (remoteDeviceUIDString)
      {
        if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v14 = "[CSAudioProvider _updateRemoteDeviceIdFromAVVCIfNeeded]";
          v15 = 2114;
          v16 = remoteDeviceUIDString;
          _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Update remote deviceUId fetched from AVVC : %{public}@ (this must be deviceUID of Darwin device only)", buf, 0x16u);
        }

        [(CSAudioRecordDeviceIndicator *)self->_recordDeviceIndicator updateDeviceId:remoteDeviceUIDString];
      }

      else if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v14 = "[CSAudioProvider _updateRemoteDeviceIdFromAVVCIfNeeded]";
        _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, "%s Failed to fetch remote deviceUId from AVVC", buf, 0xCu);
      }
    }

    goto LABEL_15;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)alertStartTime
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  recordQueue = self->_recordQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__CSAudioProvider_alertStartTime__block_invoke;
  v9[3] = &unk_1E865C880;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_async_and_wait(recordQueue, v9);
  if (*(v11 + 24) == 1)
  {
    audioRecorder = CSLogCategoryAudio;
    if (os_log_type_enabled(audioRecorder, OS_LOG_TYPE_ERROR))
    {
      uUID = [(CSAudioProvider *)self UUID];
      *buf = 136315394;
      v15 = "[CSAudioProvider alertStartTime]";
      v16 = 2114;
      v17 = uUID;
      _os_log_error_impl(&dword_1DDA4B000, audioRecorder, OS_LOG_TYPE_ERROR, "%s CSAudioProvider[%{public}@]:AVVC is recovering, ignore command...", buf, 0x16u);
    }

    alertStartTime = 0;
  }

  else
  {
    audioRecorder = [(CSAudioProvider *)self audioRecorder];
    alertStartTime = [audioRecorder alertStartTime];
  }

  _Block_object_dispose(&v10, 8);
  v6 = *MEMORY[0x1E69E9840];
  return alertStartTime;
}

- (CSAudioSessionProvidingDelegate)sessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionDelegate);

  return WeakRetained;
}

- (id)playbackRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7916;
  v10 = __Block_byref_object_dispose__7917;
  v11 = 0;
  recordQueue = self->_recordQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__CSAudioProvider_playbackRoute__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(recordQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_holdRecordingTransactionIfNeeded
{
  v3 = [[CSADPPreventStandbyAssertion alloc] initWithName:@"com.apple.corespeech.recording" clientQueue:self->_recordQueue];
  adpAssertion = self->_adpAssertion;
  self->_adpAssertion = v3;

  if (!self->_recordingTransaction)
  {
    v5 = [[CSOSTransaction alloc] initWithDescription:@"Recording transaction"];
    recordingTransaction = self->_recordingTransaction;
    self->_recordingTransaction = v5;

    [(CSAudioProvider *)self _holdRecordingExceptionIfNeeded:1];
  }
}

- (BOOL)_shouldDuckOnBuiltInSpeaker
{
  v31 = *MEMORY[0x1E69E9840];
  audioRecorder = [(CSAudioProvider *)self audioRecorder];

  if (audioRecorder)
  {
    _isDuckingOnSpeakerOutputSupportedWithCurrentRoute = [(CSAudioProvider *)self _isDuckingOnSpeakerOutputSupportedWithCurrentRoute];
    audioRecorder2 = [(CSAudioProvider *)self audioRecorder];
    v6 = [audioRecorder2 getPlaybackRouteForStreamID:{-[CSAudioProvider audioStreamHandleId](self, "audioStreamHandleId")}];

    v7 = [v6 isEqualToString:*MEMORY[0x1E69581E8]];
    v8 = ([(CSAudioProvider *)self _isAudioStreamTypeBuiltIn]&& _isDuckingOnSpeakerOutputSupportedWithCurrentRoute) & v7;
    v9 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEBUG))
    {
      v12 = v9;
      uUID = [(CSAudioProvider *)self UUID];
      v14 = uUID;
      audioStreamType = self->_audioStreamType;
      v16 = @"NO";
      v19 = 136316418;
      v20 = "[CSAudioProvider _shouldDuckOnBuiltInSpeaker]";
      if (v8)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      if (v7)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      v21 = 2114;
      v22 = uUID;
      v23 = 2114;
      if (_isDuckingOnSpeakerOutputSupportedWithCurrentRoute)
      {
        v16 = @"YES";
      }

      v24 = v17;
      v25 = 2050;
      v26 = audioStreamType;
      v27 = 2114;
      v28 = v18;
      v29 = 2114;
      v30 = v16;
      _os_log_debug_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEBUG, "%s CSAudioProvider[%{public}@]:shouldDuckOnBuiltInSpeaker: %{public}@ (audioStreamType: %{public}lu, isPlaybackRouteBuiltInSpeaker: %{public}@, isDuckingOnSpeakerOutputSupported: %{public}@)", &v19, 0x3Eu);
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_isDuckingOnSpeakerOutputSupportedWithCurrentRoute
{
  v16 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E6958588] supportsDuckingOnSpeakerOutput])
  {
    audioRecorder = [(CSAudioProvider *)self audioRecorder];
    v11 = 0;
    v4 = [audioRecorder isDuckingSupportedOnCurrentRouteWithStreamHandleID:-[CSAudioProvider audioStreamHandleId](self error:{"audioStreamHandleId"), &v11}];
    v5 = v11;

    if (v5)
    {
      v6 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        v9 = v6;
        localizedDescription = [v5 localizedDescription];
        *buf = 136315394;
        v13 = "[CSAudioProvider _isDuckingOnSpeakerOutputSupportedWithCurrentRoute]";
        v14 = 2114;
        v15 = localizedDescription;
        _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, "%s Failed to fetch duckingSupported result : %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)_canSetContext
{
  audioRecorder = [(CSAudioProvider *)self audioRecorder];
  recordDeviceIndicator = [(CSAudioProvider *)self recordDeviceIndicator];
  v5 = [audioRecorder isRecordingWithRecordDeviceIndicator:recordDeviceIndicator];

  if (v5)
  {
    if (CSIsHorseman_onceToken != -1)
    {
      dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
    }

    v6 = CSIsHorseman_isHorseman ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

void __34__CSAudioProvider_audioDeviceInfo__block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) audioRecorder];
  v2 = [*(a1 + 32) audioStreamHandleId];
  v3 = [*(a1 + 32) recordDeviceIndicator];
  v4 = [v7 audioDeviceInfoWithStreamHandleId:v2 recordDeviceIndicator:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)isNarrowBand
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  recordQueue = self->_recordQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__CSAudioProvider_isNarrowBand__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(recordQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __31__CSAudioProvider_isNarrowBand__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioRecorder];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isNarrowBandWithStreamHandleId:{objc_msgSend(*(a1 + 32), "audioStreamHandleId")}];
}

- (id)audioDeviceInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7916;
  v10 = __Block_byref_object_dispose__7917;
  v11 = 0;
  recordQueue = self->_recordQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__CSAudioProvider_audioDeviceInfo__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(recordQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)recordDeviceInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7916;
  v10 = __Block_byref_object_dispose__7917;
  v11 = 0;
  recordQueue = self->_recordQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__CSAudioProvider_recordDeviceInfo__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(recordQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __32__CSAudioProvider_playbackRoute__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) audioRecorder];
  v2 = [v6 getPlaybackRouteForStreamID:{objc_msgSend(*(a1 + 32), "audioStreamHandleId")}];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __30__CSAudioProvider_recordRoute__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) audioRecorder];
  v2 = [*(a1 + 32) recordDeviceIndicator];
  v3 = [v6 recordRouteWithRecordDeviceIndicator:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)recordRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7916;
  v10 = __Block_byref_object_dispose__7917;
  v11 = 0;
  recordQueue = self->_recordQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__CSAudioProvider_recordRoute__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(recordQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__CSAudioProvider_recordDeviceInfo__block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) audioRecorder];
  v2 = [*(a1 + 32) audioStreamHandleId];
  v3 = [*(a1 + 32) recordDeviceIndicator];
  v4 = [v7 recordDeviceInfoWithStreamHandleId:v2 recordDeviceIndicator:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)_setListeningMicIndicatorPropertyIfNeeded
{
  listeningMicIndicatorLocks = [(CSAudioProvider *)self listeningMicIndicatorLocks];
  v4 = [listeningMicIndicatorLocks count];

  if (!v4)
  {
    return 1;
  }

  return [(CSAudioProvider *)self _setListeningMicIndicatorProperty];
}

- (void)_switchToRecordingMode
{
  audioRecorder = [(CSAudioProvider *)self audioRecorder];
  v4 = 0;
  [audioRecorder setRecordMode:1 streamHandleId:-[CSAudioProvider audioStreamHandleId](self error:{"audioStreamHandleId"), &v4}];
}

- (void)_scheduleAudioPacketWatchDog
{
  [(CSAudioProvider *)self _cancelAudioPacketWatchDog];
  self->_audioPacketDeliveryCount = 0;
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_recordQueue);
  audioPacketWatchdog = self->_audioPacketWatchdog;
  self->_audioPacketWatchdog = v3;

  v5 = dispatch_time(0, 0x6FC23B000);
  dispatch_source_set_timer(self->_audioPacketWatchdog, v5, 0x6FC23B000uLL, 0x3B9ACA00uLL);
  objc_initWeak(&location, self);
  v6 = self->_audioPacketWatchdog;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__CSAudioProvider__scheduleAudioPacketWatchDog__block_invoke;
  v7[3] = &unk_1E865CA40;
  objc_copyWeak(&v8, &location);
  dispatch_source_set_event_handler(v6, v7);
  dispatch_resume(self->_audioPacketWatchdog);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_scheduleDidStartRecordingDelegateWatchDog
{
  v20 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  objc_storeStrong(&self->_startRecordingWatchDogToken, v3);
  v4 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    startRecordingWatchDogToken = self->_startRecordingWatchDogToken;
    *buf = 136315650;
    v15 = "[CSAudioProvider _scheduleDidStartRecordingDelegateWatchDog]";
    v16 = 2114;
    v17 = startRecordingWatchDogToken;
    v18 = 2050;
    v19 = 0x4020000000000000;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Schedule didStart WDT %{public}@ for %{public}lf seconds", buf, 0x20u);
  }

  v6 = dispatch_time(0, 8000000000);
  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CSAudioProvider__scheduleDidStartRecordingDelegateWatchDog__block_invoke;
  block[3] = &unk_1E865C300;
  objc_copyWeak(&v12, &location);
  v11 = v3;
  v8 = v3;
  dispatch_after(v6, recordQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  v9 = *MEMORY[0x1E69E9840];
}

void __39__CSAudioProvider__shouldStopRecording__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) streams];
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
        if (v7 && ([v7 isWeakStream] & 1) == 0)
        {
          ++*(*(*(a1 + 40) + 8) + 24);
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

- (void)_scheduleDidStopRecordingDelegateWatchDog
{
  v20 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  objc_storeStrong(&self->_stopRecordingWatchDogToken, v3);
  v4 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    stopRecordingWatchDogToken = self->_stopRecordingWatchDogToken;
    *buf = 136315650;
    v15 = "[CSAudioProvider _scheduleDidStopRecordingDelegateWatchDog]";
    v16 = 2114;
    v17 = stopRecordingWatchDogToken;
    v18 = 2050;
    v19 = 0x4020000000000000;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Schedule didStop WDT %{public}@ for %{public}lf seconds", buf, 0x20u);
  }

  v6 = dispatch_time(0, 8000000000);
  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CSAudioProvider__scheduleDidStopRecordingDelegateWatchDog__block_invoke;
  block[3] = &unk_1E865C300;
  objc_copyWeak(&v12, &location);
  v11 = v3;
  v8 = v3;
  dispatch_after(v6, recordQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_forceReleaseAllListeningMicIndicatorLocks
{
  listeningMicIndicatorLocks = [(CSAudioProvider *)self listeningMicIndicatorLocks];
  [listeningMicIndicatorLocks removeAllObjects];

  [(CSAudioProvider *)self _clearListeningMicIndicatorPropertyIfNeeded];
}

- (void)_clearListeningMicIndicatorPropertyIfNeeded
{
  listeningMicIndicatorLocks = [(CSAudioProvider *)self listeningMicIndicatorLocks];
  v4 = [listeningMicIndicatorLocks count];

  if (!v4)
  {

    [(CSAudioProvider *)self _clearListeningMicIndicatorProperty];
  }
}

- (void)_switchToListeningMode
{
  audioRecorder = [(CSAudioProvider *)self audioRecorder];
  v4 = 0;
  [audioRecorder setRecordMode:2 streamHandleId:-[CSAudioProvider audioStreamHandleId](self error:{"audioStreamHandleId"), &v4}];

  [(CSAudioProvider *)self _setListeningMicIndicatorPropertyIfNeeded];
}

- (void)_clearDidStopRecordingDelegateWatchDog
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    stopRecordingWatchDogToken = self->_stopRecordingWatchDogToken;
    v7 = 136315394;
    v8 = "[CSAudioProvider _clearDidStopRecordingDelegateWatchDog]";
    v9 = 2114;
    v10 = stopRecordingWatchDogToken;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Clearing didStopRecordingDelegate WatchDogTimer : %{public}@", &v7, 0x16u);
  }

  v5 = self->_stopRecordingWatchDogToken;
  self->_stopRecordingWatchDogToken = 0;

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_preEpilogueAudioStream
{
  streamHandleQueue = self->_streamHandleQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CSAudioProvider__preEpilogueAudioStream__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(streamHandleQueue, block);
}

void __42__CSAudioProvider__preEpilogueAudioStream__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) audioPreprocessor];
  [v1 flush];
}

- (void)_postEpilogueAudioStream
{
  streamHandleQueue = self->_streamHandleQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CSAudioProvider__postEpilogueAudioStream__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async_and_wait(streamHandleQueue, block);
  [(CSAudioProvider *)self _releaseRecordingTransactionIfNeeded];
}

- (BOOL)_shouldStopRecording
{
  v24 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  streamHandleQueue = self->_streamHandleQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __39__CSAudioProvider__shouldStopRecording__block_invoke;
  v13[3] = &unk_1E865C880;
  v13[4] = self;
  v13[5] = &v14;
  dispatch_async_and_wait(streamHandleQueue, v13);
  if (v15[3])
  {
    v4 = CSLogCategoryAudio;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [(CSAudioProvider *)self UUID];
      v6 = v15[3];
      *buf = 136315650;
      v19 = "[CSAudioProvider _shouldStopRecording]";
      v20 = 2114;
      v21 = uUID;
      v22 = 2050;
      v23 = v6;
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Shouldn't stop AVVC recording as there are %{public}tu streams", buf, 0x20u);
    }
  }

  else
  {
    streamHolders = [(CSAudioProvider *)self streamHolders];
    v8 = [streamHolders count];

    if (!v8)
    {
      v10 = 1;
      goto LABEL_8;
    }

    v4 = CSLogCategoryAudio;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      uUID2 = [(CSAudioProvider *)self UUID];
      *buf = 136315650;
      v19 = "[CSAudioProvider _shouldStopRecording]";
      v20 = 2114;
      v21 = uUID2;
      v22 = 2050;
      v23 = v8;
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Cannot stopRecording as there are %{public}tu streamHolders", buf, 0x20u);
    }
  }

  v10 = 0;
LABEL_8:
  _Block_object_dispose(&v14, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_clearListeningMicIndicatorProperty
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[CSAudioProvider _clearListeningMicIndicatorProperty]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Clearing listening mic indicator lock property", &v8, 0xCu);
  }

  audioRecorder = [(CSAudioProvider *)self audioRecorder];
  clearListeningMicIndicatorProperty = [audioRecorder clearListeningMicIndicatorProperty];

  v6 = *MEMORY[0x1E69E9840];
  return clearListeningMicIndicatorProperty;
}

- (BOOL)_setListeningMicIndicatorProperty
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[CSAudioProvider _setListeningMicIndicatorProperty]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Setting listening mic indicator lock property", &v8, 0xCu);
  }

  audioRecorder = [(CSAudioProvider *)self audioRecorder];
  v5 = [audioRecorder setListeningMicIndicatorPropertyForStream:{-[CSAudioProvider audioStreamHandleId](self, "audioStreamHandleId")}];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_cancelAudioPacketWatchDog
{
  audioPacketWatchdog = self->_audioPacketWatchdog;
  if (audioPacketWatchdog)
  {
    dispatch_source_cancel(audioPacketWatchdog);
    v4 = self->_audioPacketWatchdog;
    self->_audioPacketWatchdog = 0;
  }
}

- (void)_resetCircularBufferStartTime
{
  [(CSAudioProvider *)self setCircularBufferStartSampleCount:0];

  [(CSAudioProvider *)self setCircularBufferStartHostTime:0];
}

- (void)_clearDidStartRecordingDelegateWatchDog
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    startRecordingWatchDogToken = self->_startRecordingWatchDogToken;
    v7 = 136315394;
    v8 = "[CSAudioProvider _clearDidStartRecordingDelegateWatchDog]";
    v9 = 2114;
    v10 = startRecordingWatchDogToken;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Clearing didStartRecordingDelegate WatchDogTimer : %{public}@", &v7, 0x16u);
  }

  v5 = self->_startRecordingWatchDogToken;
  self->_startRecordingWatchDogToken = 0;

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_forceReleaseAllRecordModeLocks
{
  recordModeLocks = [(CSAudioProvider *)self recordModeLocks];
  [recordModeLocks removeAllObjects];

  [(CSAudioProvider *)self _switchToListeningMode];
}

void __43__CSAudioProvider__postEpilogueAudioStream__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 168);
  if (v2)
  {
    [v2 reset];
  }

  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  *(v4 + 192) = 0;

  objc_autoreleasePoolPop(v3);
}

- (void)_releaseRecordingTransactionIfNeeded
{
  v19 = *MEMORY[0x1E69E9840];
  adpAssertion = self->_adpAssertion;
  if (adpAssertion)
  {
    self->_adpAssertion = 0;
  }

  if (self->_recordingTransaction)
  {
    if (self->_streamState != 3 && ![(CSAudioRecorder *)self->_audioRecorder isSessionCurrentlyActivated])
    {
      v4 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
        uUID = [(CSAudioProvider *)self UUID];
        v7 = [(CSAudioProvider *)self _streamStateName:self->_streamState];
        v13 = 136315650;
        v14 = "[CSAudioProvider _releaseRecordingTransactionIfNeeded]";
        v15 = 2114;
        v16 = uUID;
        v17 = 2114;
        v18 = v7;
        _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Release recording transaction at streamState : %{public}@", &v13, 0x20u);
      }

      recordingTransaction = self->_recordingTransaction;
      self->_recordingTransaction = 0;

      [(CSAudioProvider *)self _holdRecordingExceptionIfNeeded:0];
    }
  }

  else
  {
    v9 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      uUID2 = [(CSAudioProvider *)self UUID];
      v13 = 136315394;
      v14 = "[CSAudioProvider _releaseRecordingTransactionIfNeeded]";
      v15 = 2114;
      v16 = uUID2;
      _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:recordingTransaction already released", &v13, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (CSAudioAlertProvidingDelegate)alertDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_alertDelegate);

  return WeakRetained;
}

- (CSAudioProviderDelegate)providerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_providerDelegate);

  return WeakRetained;
}

- (float)circularBufferInputRecordingDuration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  streamHandleQueue = self->_streamHandleQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__CSAudioProvider_circularBufferInputRecordingDuration__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(streamHandleQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __55__CSAudioProvider_circularBufferInputRecordingDuration__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 168) inputRecordingDuration];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (int)circularBufferNumInputChannel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  streamHandleQueue = self->_streamHandleQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__CSAudioProvider_circularBufferNumInputChannel__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(streamHandleQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __48__CSAudioProvider_circularBufferNumInputChannel__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 168) numInputChannels];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)CSPhoneCallStateMonitor:(id)monitor didRecievePhoneCallStateChange:(unint64_t)change
{
  streamHandleQueue = self->_streamHandleQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__CSAudioProvider_CSPhoneCallStateMonitor_didRecievePhoneCallStateChange___block_invoke;
  v5[3] = &unk_1E865CC58;
  v5[4] = self;
  v5[5] = change;
  dispatch_async(streamHandleQueue, v5);
}

- (BOOL)_shouldHandleStartPendingOnStopping:(unint64_t)stopping withStopReason:(int64_t)reason
{
  v26 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_streamHandleQueue);
  if (reason)
  {
    startPendingOnStoppingStreams = [(CSAudioProvider *)self startPendingOnStoppingStreams];
    [startPendingOnStoppingStreams removeAllObjects];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    startPendingOnStoppingStreamToCompletionDict = [(CSAudioProvider *)self startPendingOnStoppingStreamToCompletionDict];
    objectEnumerator = [startPendingOnStoppingStreamToCompletionDict objectEnumerator];

    v10 = [objectEnumerator countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:958 userInfo:0];
          (*(v14 + 16))(v14, 0, v15);
        }

        v11 = [objectEnumerator countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    startPendingOnStoppingStreamToCompletionDict2 = [(CSAudioProvider *)self startPendingOnStoppingStreamToCompletionDict];
    [startPendingOnStoppingStreamToCompletionDict2 removeAllObjects];

    goto LABEL_12;
  }

  if (stopping != 5)
  {
LABEL_12:
    LOBYTE(v18) = 0;
    goto LABEL_13;
  }

  startPendingOnStoppingStreams2 = [(CSAudioProvider *)self startPendingOnStoppingStreams];
  v18 = [startPendingOnStoppingStreams2 _cs_isHashTableEmpty] ^ 1;

LABEL_13:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)_scheduleDidStopRecordingDelegateWatchDog:(id)dog
{
  v16 = *MEMORY[0x1E69E9840];
  dogCopy = dog;
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    stopRecordingWatchDogToken = self->_stopRecordingWatchDogToken;
    v10 = 136315650;
    v11 = "[CSAudioProvider _scheduleDidStopRecordingDelegateWatchDog:]";
    v12 = 2114;
    v13 = dogCopy;
    v14 = 2114;
    v15 = stopRecordingWatchDogToken;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s stopRecordingWatchDogDidFire : %{public}@, currentToken : %{public}@", &v10, 0x20u);
  }

  if ([dogCopy isEqual:self->_stopRecordingWatchDogToken])
  {
    [(CSAudioProvider *)self _handleDidStopAudioStreamWithReason:5];
    [(CSAudioProvider *)self _handleAudioSystemFailure];
    v7 = +[CSDiagnosticReporter sharedInstance];
    [v7 submitAudioIssueReport:@"didStopWatchDogFire"];
  }

  else
  {
    v8 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[CSAudioProvider _scheduleDidStopRecordingDelegateWatchDog:]";
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s stopRecordingWatchDogToken doesn't match. Ignore this WDT fire", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __60__CSAudioProvider__scheduleDidStopRecordingDelegateWatchDog__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _scheduleDidStopRecordingDelegateWatchDog:*(a1 + 32)];
}

- (void)_schduleDidStartRecordingDelegateWatchDogWithToken:(id)token
{
  v17 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    startRecordingWatchDogToken = self->_startRecordingWatchDogToken;
    v11 = 136315650;
    v12 = "[CSAudioProvider _schduleDidStartRecordingDelegateWatchDogWithToken:]";
    v13 = 2114;
    v14 = tokenCopy;
    v15 = 2114;
    v16 = startRecordingWatchDogToken;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s startRecordingWatchDogDidFire : %{public}@, currentToken : %{public}@", &v11, 0x20u);
  }

  if ([tokenCopy isEqual:self->_startRecordingWatchDogToken])
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:962 userInfo:0];
    [(CSAudioProvider *)self _handleDidStartAudioStreamWithResult:0 error:v7];

    [(CSAudioProvider *)self _handleAudioSystemFailure];
    v8 = +[CSDiagnosticReporter sharedInstance];
    [v8 submitAudioIssueReport:@"didStartWatchDogFire"];
  }

  else
  {
    v9 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[CSAudioProvider _schduleDidStartRecordingDelegateWatchDogWithToken:]";
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s startRecordingWatchDogToken doesn't match. Ignore this WDT fire", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __61__CSAudioProvider__scheduleDidStartRecordingDelegateWatchDog__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _schduleDidStartRecordingDelegateWatchDogWithToken:*(a1 + 32)];
}

- (void)_onAudioPacketWatchdogFire
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_audioPacketDeliveryCount)
  {
    self->_audioPacketDeliveryCount = 0;
  }

  else
  {
    v3 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_FAULT))
    {
      v6 = 136315138;
      v7 = "[CSAudioProvider _onAudioPacketWatchdogFire]";
      _os_log_fault_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_FAULT, "%s Audio Packet Delivery WatchDog fired, trying to recover", &v6, 0xCu);
    }

    [(CSAudioProvider *)self _cancelAudioPacketWatchDog];
    [(CSAudioProvider *)self _handleDidStopAudioStreamWithReason:6];
    [(CSAudioProvider *)self _handleAudioSystemFailure];
    v4 = +[CSDiagnosticReporter sharedInstance];
    [v4 submitAudioIssueReport:@"audioDeliveryWatchDogFire"];
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __47__CSAudioProvider__scheduleAudioPacketWatchDog__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onAudioPacketWatchdogFire];
}

- (void)_holdRecordingExceptionIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  if ([(CSAudioProvider *)self audioStreamHandleId]>= 2)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    uUID = [(CSAudioProvider *)self UUID];
    v11 = [v5 stringWithFormat:@"%@-%@", v7, uUID];

    v9 = +[CSMSNExceptionManager sharedInstance];
    v10 = v9;
    if (neededCopy)
    {
      [v9 beginAnnounceMessageException:@"announcemessage" reason:v11];
    }

    else
    {
      [v9 endAnnounceMessageException:@"announcemessage" reason:v11];
    }
  }
}

- (id)_streamStateName:(unint64_t)name
{
  v12[6] = *MEMORY[0x1E69E9840];
  v11[0] = &unk_1F5916970;
  v11[1] = &unk_1F5916988;
  v12[0] = @"StreamInit";
  v12[1] = @"StreamPrepared";
  v11[2] = &unk_1F59169A0;
  v11[3] = &unk_1F59169B8;
  v12[2] = @"StreamStarting";
  v12[3] = @"StreamStreaming";
  v11[4] = &unk_1F59169D0;
  v11[5] = &unk_1F59169E8;
  v12[4] = @"StreamStopping";
  v12[5] = @"StreamStoppingWithScheduledStart";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:name];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:name];
    name = [v4 objectForKeyedSubscript:v7];
  }

  else
  {
    name = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%tu)", name];
  }

  v9 = *MEMORY[0x1E69E9840];

  return name;
}

- (void)_handleAudioSystemFailure
{
  v16 = *MEMORY[0x1E69E9840];
  [(CSAudioProvider *)self setStreamState:0];
  streamHandleQueue = self->_streamHandleQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CSAudioProvider__handleAudioSystemFailure__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async_and_wait(streamHandleQueue, block);
  [(CSAudioProvider *)self _releaseRecordingTransactionIfNeeded];
  v4 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    uUID = [(CSAudioProvider *)self UUID];
    *buf = 136315394;
    v13 = "[CSAudioProvider _handleAudioSystemFailure]";
    v14 = 2114;
    v15 = uUID;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:AudioRecorder will be destroyed", buf, 0x16u);
  }

  [(CSAudioRecorder *)self->_audioRecorder unregisterObserver:self];
  [(CSAudioRecorder *)self->_audioRecorder willDestroy];
  v7 = objc_autoreleasePoolPush();
  audioRecorder = self->_audioRecorder;
  self->_audioRecorder = 0;

  objc_autoreleasePoolPop(v7);
  circularBuffer = self->_circularBuffer;
  if (circularBuffer)
  {
    [(CSAudioCircularBuffer *)circularBuffer reset];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __44__CSAudioProvider__handleAudioSystemFailure__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 192);
  *(v3 + 192) = 0;

  objc_autoreleasePoolPop(v2);
}

- (void)CSAudioServerCrashMonitorDidReceiveServerRestart:(id)restart
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    uUID = [(CSAudioProvider *)self UUID];
    *buf = 136315394;
    v11 = "[CSAudioProvider CSAudioServerCrashMonitorDidReceiveServerRestart:]";
    v12 = 2114;
    v13 = uUID;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:audiomxd/bridgeaudiod recovered from crash", buf, 0x16u);
  }

  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__CSAudioProvider_CSAudioServerCrashMonitorDidReceiveServerRestart___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(recordQueue, block);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)CSAudioServerCrashMonitorDidReceiveServerCrash:(id)crash
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
  {
    v7 = v4;
    uUID = [(CSAudioProvider *)self UUID];
    *buf = 136315394;
    v11 = "[CSAudioProvider CSAudioServerCrashMonitorDidReceiveServerCrash:]";
    v12 = 2114;
    v13 = uUID;
    _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s CSAudioProvider[%{public}@]:audiomxd/bridgeaudiod crashed", buf, 0x16u);
  }

  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CSAudioProvider_CSAudioServerCrashMonitorDidReceiveServerCrash___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(recordQueue, block);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __66__CSAudioProvider_CSAudioServerCrashMonitorDidReceiveServerCrash___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  [*(a1 + 32) _handleAudioRecorderStreamHandleIdInvalidated:1];
  [*(a1 + 32) _handleDidStopAudioStreamWithReason:-11785];
  v2 = *(a1 + 32);

  return [v2 _handleAudioSystemFailure];
}

- (void)audioRecorderSensorInvalidated:(id)invalidated
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
  {
    v7 = v4;
    uUID = [(CSAudioProvider *)self UUID];
    *buf = 136315394;
    v11 = "[CSAudioProvider audioRecorderSensorInvalidated:]";
    v12 = 2114;
    v13 = uUID;
    _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s CSAudioProvider[%{public}@]:Audio Recorder Secure Sensor Invalidated", buf, 0x16u);
  }

  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CSAudioProvider_audioRecorderSensorInvalidated___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(recordQueue, block);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __50__CSAudioProvider_audioRecorderSensorInvalidated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handleDidStopAudioStreamWithReason:10];
  v2 = *(a1 + 32);

  return [v2 _handleAudioSystemFailure];
}

- (void)audioRecorderDisconnected:(id)disconnected
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
  {
    v7 = v4;
    uUID = [(CSAudioProvider *)self UUID];
    *buf = 136315394;
    v11 = "[CSAudioProvider audioRecorderDisconnected:]";
    v12 = 2114;
    v13 = uUID;
    _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s CSAudioProvider[%{public}@]:Audio Recorder Disconnected", buf, 0x16u);
  }

  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CSAudioProvider_audioRecorderDisconnected___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(recordQueue, block);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __45__CSAudioProvider_audioRecorderDisconnected___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handleDidStopAudioStreamWithReason:-11792];
  v2 = *(a1 + 32);

  return [v2 _handleAudioSystemFailure];
}

- (void)audioRecorderEndRecordInterruption:(id)interruption
{
  sessionDelegate = [(CSAudioProvider *)self sessionDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    sessionDelegate2 = [(CSAudioProvider *)self sessionDelegate];
    [sessionDelegate2 audioSessionProviderEndInterruption:self];
  }
}

- (void)audioRecorderBeginRecordInterruption:(id)interruption withContext:(id)context
{
  contextCopy = context;
  sessionDelegate = [(CSAudioProvider *)self sessionDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    sessionDelegate2 = [(CSAudioProvider *)self sessionDelegate];
    [sessionDelegate2 audioSessionProviderBeginInterruption:self withContext:contextCopy];
  }
}

- (void)audioRecorderBeginRecordInterruption:(id)interruption
{
  sessionDelegate = [(CSAudioProvider *)self sessionDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    sessionDelegate2 = [(CSAudioProvider *)self sessionDelegate];
    [sessionDelegate2 audioSessionProviderBeginInterruption:self];
  }
}

- (void)audioRecorderBuiltInAudioStreamInvalidated:(id)invalidated error:(id)error
{
  errorCopy = error;
  recordQueue = self->_recordQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__CSAudioProvider_audioRecorderBuiltInAudioStreamInvalidated_error___block_invoke;
  v8[3] = &unk_1E865C970;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(recordQueue, v8);
}

void __68__CSAudioProvider_audioRecorderBuiltInAudioStreamInvalidated_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) audioStreamHandleId] == 1)
  {
    v2 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = v2;
      v5 = [v3 localizedDescription];
      *buf = 136315394;
      v16 = "[CSAudioProvider audioRecorderBuiltInAudioStreamInvalidated:error:]_block_invoke";
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Will invalidate current builtIn audio stream : %{public}@", buf, 0x16u);
    }

    v6 = [*(a1 + 32) audioRecorder];
    v7 = [*(a1 + 32) recordDeviceIndicator];
    v14 = 0;
    v8 = [v6 stopAudioStreamWithRecordDeviceIndicator:v7 error:&v14];
    v9 = v14;

    if ((v8 & 1) == 0)
    {
      v10 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        v12 = v10;
        v13 = [v9 localizedDescription];
        *buf = 136315394;
        v16 = "[CSAudioProvider audioRecorderBuiltInAudioStreamInvalidated:error:]_block_invoke";
        v17 = 2114;
        v18 = v13;
        _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, "%s failed to stopAudioStream : %{public}@", buf, 0x16u);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)notifyProviderContextChanged
{
  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CSAudioProvider_notifyProviderContextChanged__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(recordQueue, block);
}

void __47__CSAudioProvider_notifyProviderContextChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) sessionDelegate];
    [v4 audioSessionProvider:*(a1 + 32) didChangeContext:1];
  }
}

- (void)audioRecorderDidFinishAlertPlayback:(id)playback ofType:(int64_t)type error:(id)error
{
  errorCopy = error;
  v8 = mach_absolute_time();
  recordQueue = self->_recordQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CSAudioProvider_audioRecorderDidFinishAlertPlayback_ofType_error___block_invoke;
  v11[3] = &unk_1E865C328;
  typeCopy = type;
  v14 = v8;
  v11[4] = self;
  v12 = errorCopy;
  v10 = errorCopy;
  dispatch_async(recordQueue, v11);
}

void __68__CSAudioProvider_audioRecorderDidFinishAlertPlayback_ofType_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) _didReceiveFinishStartAlertPlaybackAt:*(a1 + 56)];
  }

  v2 = [*(a1 + 32) alertDelegate];
  [v2 audioAlertProvidingDidFinishAlertPlayback:*(a1 + 32) ofType:*(a1 + 48) error:*(a1 + 40)];
}

- (void)_didReceiveFinishStartAlertPlaybackAt:(unint64_t)at
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    streamState = self->_streamState;
    v7 = v5;
    v8 = [(CSAudioProvider *)self _streamStateName:streamState];
    *buf = 136315650;
    v22 = "[CSAudioProvider _didReceiveFinishStartAlertPlaybackAt:]";
    v23 = 2050;
    atCopy = at;
    v25 = 2114;
    v26 = v8;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Received finishStartAlertPlaybackAt:%{public}llu streamState : %{public}@", buf, 0x20u);
  }

  alertPlaybackFinishTimeoutToken = self->_alertPlaybackFinishTimeoutToken;
  self->_alertPlaybackFinishTimeoutToken = 0;

  if (self->_waitingForAlertFinish)
  {
    self->_waitingForAlertFinish = 0;
    v10 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      uUID = [(CSAudioProvider *)self UUID];
      *buf = 136315394;
      v22 = "[CSAudioProvider _didReceiveFinishStartAlertPlaybackAt:]";
      v23 = 2114;
      atCopy = uUID;
      _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Leaving dispatch group for recordingWillStartGroup", buf, 0x16u);
    }

    dispatch_group_leave(self->_recordingWillStartGroup);
  }

  v13 = self->_streamState;
  if (v13 == 3)
  {
    streamHandleQueue = self->_streamHandleQueue;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __57__CSAudioProvider__didReceiveFinishStartAlertPlaybackAt___block_invoke_2;
    v19[3] = &unk_1E865CC58;
    v19[4] = self;
    v19[5] = at;
    v15 = v19;
  }

  else if (v13 == 2)
  {
    streamHandleQueue = self->_streamHandleQueue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __57__CSAudioProvider__didReceiveFinishStartAlertPlaybackAt___block_invoke;
    v20[3] = &unk_1E865CB68;
    v20[4] = self;
    v15 = v20;
  }

  else
  {
    v16 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[CSAudioProvider _didReceiveFinishStartAlertPlaybackAt:]";
      _os_log_error_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_ERROR, "%s Audio Streaming already stopped", buf, 0xCu);
    }

    streamHandleQueue = self->_streamHandleQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__CSAudioProvider__didReceiveFinishStartAlertPlaybackAt___block_invoke_144;
    v18[3] = &unk_1E865CB68;
    v18[4] = self;
    v15 = v18;
  }

  dispatch_async_and_wait(streamHandleQueue, v15);
  v17 = *MEMORY[0x1E69E9840];
}

void __57__CSAudioProvider__didReceiveFinishStartAlertPlaybackAt___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v2 = [*(a1 + 32) alertPlaybackFinishWaitingStreams];
  v3 = [v2 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v35;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v34 + 1) + 8 * i);
        v8 = [v7 streamRequest];
        v9 = [v8 requestRecordModeLock];

        if (v9)
        {
          v10 = *(a1 + 32);
          v11 = [v7 streamRequest];
          v12 = [v10 _acquireRecordModeLockFrom:{objc_msgSend(v11, "clientIdentity")}];
        }

        v13 = [v7 streamRequest];
        v14 = [v13 requestListeningMicIndicatorLock];

        if (v14)
        {
          v15 = *(a1 + 32);
          v16 = [v7 streamRequest];
          v17 = [v15 _acquireListeningMicIndicatorLockFrom:{objc_msgSend(v16, "clientIdentity")}];
        }

        v18 = [*(a1 + 32) startPendingStreams];
        [v18 addObject:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v4);
  }

  v19 = [*(a1 + 32) alertPlaybackFinishWaitingStreams];
  [v19 removeAllObjects];

  [*(a1 + 32) _setListeningMicIndicatorPropertyIfNeeded];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = [*(a1 + 32) alertPlaybackFinishWaitingCompletions];
  v21 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v31;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v30 + 1) + 8 * j);
        v26 = [*(a1 + 32) pendingStartCompletions];
        v27 = MEMORY[0x1E12BA300](v25);
        [v26 addObject:v27];
      }

      v22 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v22);
  }

  v28 = [*(a1 + 32) alertPlaybackFinishWaitingCompletions];
  [v28 removeAllObjects];

  v29 = *MEMORY[0x1E69E9840];
}

void __57__CSAudioProvider__didReceiveFinishStartAlertPlaybackAt___block_invoke_2(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [*(a1 + 32) alertPlaybackFinishWaitingStreams];
  v2 = [obj countByEnumeratingWithState:&v54 objects:v69 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v55;
    v48 = *MEMORY[0x1E6958390];
    *&v3 = 136315394;
    v47 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v55 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v54 + 1) + 8 * i);
        if (+[CSUtils isExclaveHardware])
        {
          if ([*(a1 + 32) audioStreamId] == v48)
          {
            v8 = [v7 streamRequest];
            v9 = [v8 requestExclaveAudio];

            if ((v9 & 1) == 0)
            {
              *(*(a1 + 32) + 280) = *(*(a1 + 32) + 272);
              v10 = CSLogCategoryAudio;
              if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
              {
                v11 = *(*(a1 + 32) + 280);
                *buf = v47;
                v60 = "[CSAudioProvider _didReceiveFinishStartAlertPlaybackAt:]_block_invoke_2";
                v61 = 2048;
                v62 = v11;
                _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Set LastFetchedExclaveAudioSampleCount = %llu", buf, 0x16u);
              }
            }
          }
        }

        v12 = [v7 streamRequest];
        v13 = [v12 requestListeningMicIndicatorLock];

        if (v13)
        {
          v14 = *(a1 + 32);
          v15 = [v7 streamRequest];
          v16 = [v14 _acquireListeningMicIndicatorLockFrom:{objc_msgSend(v15, "clientIdentity")}];
        }

        v17 = [v7 streamRequest];
        v18 = [v17 requestRecordModeLock];

        if (v18)
        {
          v19 = *(a1 + 32);
          v20 = [v7 streamRequest];
          v21 = [v19 _acquireRecordModeLockFrom:{objc_msgSend(v20, "clientIdentity")}];
        }

        v22 = [*(*(a1 + 32) + 168) sampleCount];
        [v7 updateAudioStreamStartTimeInSampleCount:v22];
        v23 = *(a1 + 40);
        v24 = mach_absolute_time();
        +[CSConfig inputRecordingSampleRate];
        v25 = [CSFTimeUtils sampleCountFromHostTime:v23 anchorHostTime:v24 anchorSampleCount:v22 sampleRate:?];
        v26 = CSLogCategoryAudio;
        if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(a1 + 32);
          v28 = v26;
          v29 = [v27 UUID];
          v30 = *(a1 + 40);
          *buf = 136316162;
          v60 = "[CSAudioProvider _didReceiveFinishStartAlertPlaybackAt:]_block_invoke";
          v61 = 2114;
          v62 = v29;
          v63 = 2050;
          v64 = v30;
          v65 = 2050;
          v66 = v25;
          v67 = 2050;
          v68 = v22;
          _os_log_impl(&dword_1DDA4B000, v28, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Requested alertFinishHostTime = %{public}llu, _clientStartSampleCount = %{public}tu, circularBufferSampleCount = %{public}tu", buf, 0x34u);
        }

        if (v25 <= v22)
        {
          [v7 updateAudioStreamStartTimeInSampleCount:v25];
        }

        else
        {
          v31 = CSLogCategoryAudio;
          if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(a1 + 32);
            v33 = v31;
            v34 = [v32 UUID];
            *buf = 136315650;
            v60 = "[CSAudioProvider _didReceiveFinishStartAlertPlaybackAt:]_block_invoke";
            v61 = 2114;
            v62 = v34;
            v63 = 2050;
            v64 = v22;
            _os_log_impl(&dword_1DDA4B000, v33, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Failed to fetch historical audio since _clientStartSampleCount is newer than audioBuffer sample count(%{public}llu)", buf, 0x20u);
          }
        }

        v35 = [*(a1 + 32) streams];
        [v35 addObject:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v54 objects:v69 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) _setListeningMicIndicatorPropertyIfNeeded];
  v36 = +[CSAudioStreamActivityMonitor sharedInstance];
  v37 = [*(a1 + 32) streams];
  v38 = [*(a1 + 32) streamHolders];
  [v36 notifyActiveStreamsChanged:v37 streamHolders:v38 streamId:*(*(a1 + 32) + 216)];

  v39 = [*(a1 + 32) alertPlaybackFinishWaitingStreams];
  [v39 removeAllObjects];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v40 = [*(a1 + 32) alertPlaybackFinishWaitingCompletions];
  v41 = [v40 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v51;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v51 != v43)
        {
          objc_enumerationMutation(v40);
        }

        (*(*(*(&v50 + 1) + 8 * j) + 16))();
      }

      v42 = [v40 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v42);
  }

  v45 = [*(a1 + 32) alertPlaybackFinishWaitingCompletions];
  [v45 removeAllObjects];

  v46 = *MEMORY[0x1E69E9840];
}

void __57__CSAudioProvider__didReceiveFinishStartAlertPlaybackAt___block_invoke_144(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) alertPlaybackFinishWaitingStreams];
  [v2 removeAllObjects];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [*(a1 + 32) alertPlaybackFinishWaitingCompletions];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:959 userInfo:0];
        (*(v8 + 16))(v8, 0, v9);

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [*(a1 + 32) alertPlaybackFinishWaitingCompletions];
  [v10 removeAllObjects];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleAlertFinishTimeout:(double)timeout
{
  v18 = *MEMORY[0x1E69E9840];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  objc_storeStrong(&self->_alertPlaybackFinishTimeoutToken, uUID);
  v6 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[CSAudioProvider _scheduleAlertFinishTimeout:]";
    v16 = 2114;
    v17 = uUID;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s ScheduleAlertFinishTimeout : %{public}@", buf, 0x16u);
  }

  v7 = dispatch_time(0, (timeout * 1000000000.0));
  recordQueue = self->_recordQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__CSAudioProvider__scheduleAlertFinishTimeout___block_invoke;
  v11[3] = &unk_1E865C970;
  v12 = uUID;
  selfCopy = self;
  v9 = uUID;
  dispatch_after(v7, recordQueue, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __47__CSAudioProvider__scheduleAlertFinishTimeout___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isEqual:*(*(a1 + 40) + 224)])
  {
    v2 = *(a1 + 40);
    v3 = mach_absolute_time();
    v4 = *MEMORY[0x1E69E9840];

    [v2 _didReceiveFinishStartAlertPlaybackAt:v3];
  }

  else
  {
    v5 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(*(a1 + 40) + 224);
      v9 = 136315650;
      v10 = "[CSAudioProvider _scheduleAlertFinishTimeout:]_block_invoke";
      v11 = 2114;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s ScheduleAlertFinishTimeout will be ignored : %{public}@, %{public}@", &v9, 0x20u);
    }

    v8 = *MEMORY[0x1E69E9840];
  }
}

- (void)audioRecorderRecordHardwareConfigurationDidChange:(id)change toConfiguration:(int64_t)configuration
{
  recordQueue = self->_recordQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__CSAudioProvider_audioRecorderRecordHardwareConfigurationDidChange_toConfiguration___block_invoke;
  v5[3] = &unk_1E865CC58;
  v5[4] = self;
  v5[5] = configuration;
  dispatch_async(recordQueue, v5);
}

void __85__CSAudioProvider_audioRecorderRecordHardwareConfigurationDidChange_toConfiguration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __85__CSAudioProvider_audioRecorderRecordHardwareConfigurationDidChange_toConfiguration___block_invoke_2;
  v4[3] = &unk_1E865CC58;
  v3 = *(a1 + 40);
  v4[4] = v1;
  v4[5] = v3;
  dispatch_async_and_wait(v2, v4);
}

void __85__CSAudioProvider_audioRecorderRecordHardwareConfigurationDidChange_toConfiguration___block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v2 = [*(a1 + 32) startPendingStreams];
  v3 = [v2 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    do
    {
      v6 = 0;
      do
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v29 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioStreamProvider:*(a1 + 32) didHardwareConfigurationChange:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v4);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [*(a1 + 32) stopPendingStreams];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 audioStreamProvider:*(a1 + 32) didHardwareConfigurationChange:*(a1 + 40)];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [*(a1 + 32) streams];
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * v18);
        if (objc_opt_respondsToSelector())
        {
          [v19 audioStreamProvider:*(a1 + 32) didHardwareConfigurationChange:*(a1 + 40)];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)isRecording
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  recordQueue = self->_recordQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__CSAudioProvider_isRecording__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(recordQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __30__CSAudioProvider_isRecording__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) audioRecorder];
  v2 = [*(a1 + 32) recordDeviceIndicator];
  *(*(*(a1 + 40) + 8) + 24) = [v3 isRecordingWithRecordDeviceIndicator:v2];
}

- (void)audioRecorderBufferAvailable:(id)available audioStreamHandleId:(unint64_t)id buffer:(id)buffer
{
  bufferCopy = buffer;
  v8 = bufferCopy;
  if (self->_audioStreamHandleId == id)
  {
    recordQueue = self->_recordQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__CSAudioProvider_audioRecorderBufferAvailable_audioStreamHandleId_buffer___block_invoke;
    v10[3] = &unk_1E865C970;
    v10[4] = self;
    v11 = bufferCopy;
    dispatch_async(recordQueue, v10);
  }
}

void __75__CSAudioProvider_audioRecorderBufferAvailable_audioStreamHandleId_buffer___block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 344);
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__CSAudioProvider_audioRecorderBufferAvailable_audioStreamHandleId_buffer___block_invoke_2;
  v4[3] = &unk_1E865C970;
  v4[4] = v2;
  v5 = v1;
  dispatch_async_and_wait(v3, v4);
}

void __75__CSAudioProvider_audioRecorderBufferAvailable_audioStreamHandleId_buffer___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = [*(a1 + 32) startPendingStreams];
  v3 = [v2 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    do
    {
      v6 = 0;
      do
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _forwardAudioChunkForTV:*(a1 + 40) toStream:*(*(&v26 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v4);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [*(a1 + 32) streams];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(a1 + 32) _forwardAudioChunkForTV:*(a1 + 40) toStream:*(*(&v22 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [*(a1 + 32) stopPendingStreams];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(a1 + 32) _forwardAudioChunkForTV:*(a1 + 40) toStream:*(*(&v18 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v30 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)audioRecorderExclaveBufferAvailable:(id)available audioStreamHandleId:(unint64_t)id hostTime:(unint64_t)time arrivalTimestampToAudioRecorder:(unint64_t)recorder
{
  if (self->_audioStreamHandleId == id)
  {
    block[7] = v6;
    block[8] = v7;
    streamHandleQueue = self->_streamHandleQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __116__CSAudioProvider_audioRecorderExclaveBufferAvailable_audioStreamHandleId_hostTime_arrivalTimestampToAudioRecorder___block_invoke;
    block[3] = &unk_1E865B1F0;
    block[4] = self;
    block[5] = time;
    block[6] = recorder;
    dispatch_async(streamHandleQueue, block);
  }
}

unint64_t __116__CSAudioProvider_audioRecorderExclaveBufferAvailable_audioStreamHandleId_hostTime_arrivalTimestampToAudioRecorder___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 288) processSampleCount:*(*(a1 + 32) + 272) hostTime:*(a1 + 40)];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v2 = [*(a1 + 32) startPendingStreams];
  v3 = [v2 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v41;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v40 + 1) + 8 * i);
        v9 = [v8 streamRequest];
        v10 = [v9 requestExclaveAudio];

        if (v10)
        {
          [v8 audioStreamProvider:*(a1 + 32) numSamplesAvailableInExclave:+[CSConfig exclaveRecordingNumSamples](CSConfig hostTime:"exclaveRecordingNumSamples") arrivalHostTimeToAudioRecorder:*(a1 + 40) exclaveSampleCount:{*(a1 + 48), *(*(a1 + 32) + 272)}];
        }

        else
        {
          v5 = 1;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = [*(a1 + 32) streams];
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v36 + 1) + 8 * j);
        v17 = [v16 streamRequest];
        v18 = [v17 requestExclaveAudio];

        if (v18)
        {
          [v16 audioStreamProvider:*(a1 + 32) numSamplesAvailableInExclave:+[CSConfig exclaveRecordingNumSamples](CSConfig hostTime:"exclaveRecordingNumSamples") arrivalHostTimeToAudioRecorder:*(a1 + 40) exclaveSampleCount:{*(a1 + 48), *(*(a1 + 32) + 272)}];
        }

        else
        {
          v5 = 1;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v13);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = [*(a1 + 32) stopPendingStreams];
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v32 + 1) + 8 * k);
        v25 = [v24 streamRequest];
        v26 = [v25 requestExclaveAudio];

        if (v26)
        {
          [v24 audioStreamProvider:*(a1 + 32) numSamplesAvailableInExclave:+[CSConfig exclaveRecordingNumSamples](CSConfig hostTime:"exclaveRecordingNumSamples") arrivalHostTimeToAudioRecorder:*(a1 + 40) exclaveSampleCount:{*(a1 + 48), *(*(a1 + 32) + 272)}];
        }

        else
        {
          v5 = 1;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v21);
  }

  if (v5)
  {
    while (1)
    {
      v27 = *(a1 + 32);
      if (v27[35] >= v27[34])
      {
        break;
      }

      v28 = [v27 audioRecorder];
      v29 = [*(a1 + 32) recordDeviceIndicator];
      [v28 fetchSecureAudioStreamWithRecordDeviceIndicator:v29 from:*(*(a1 + 32) + 280) numSamples:+[CSConfig exclaveRecordingNumSamples](CSConfig hostTime:"exclaveRecordingNumSamples") error:{objc_msgSend(*(*(a1 + 32) + 288), "hostTimeFromSampleCount:", *(*(a1 + 32) + 280)), 0}];

      *(*(a1 + 32) + 280) += +[CSConfig exclaveRecordingNumSamples];
    }
  }

  result = +[CSConfig exclaveRecordingNumSamples];
  *(*(a1 + 32) + 272) += result;
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_forwardAudioChunkForTV:(id)v toStream:(id)stream
{
  v19 = *MEMORY[0x1E69E9840];
  vCopy = v;
  streamCopy = stream;
  dispatch_assert_queue_V2(self->_streamHandleQueue);
  [streamCopy audioStreamProvider:self audioChunkForTVAvailable:vCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  tandemStreams = [streamCopy tandemStreams];
  v9 = [tandemStreams countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(tandemStreams);
        }

        [(CSAudioProvider *)self _forwardAudioChunkForTV:vCopy toStream:*(*(&v14 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [tandemStreams countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)audioRecorderBufferAvailable:(id)available audioStreamHandleId:(unint64_t)id buffer:(id)buffer remoteVAD:(id)d atTime:(unint64_t)time arrivalTimestampToAudioRecorder:(unint64_t)recorder numberOfChannels:(int)channels
{
  v56 = *MEMORY[0x1E69E9840];
  availableCopy = available;
  bufferCopy = buffer;
  dCopy = d;
  if (self->_audioStreamHandleId == id)
  {
    if (!self->_isWaitingForFirstAudioPacket || id != 1 && *MEMORY[0x1E6958390] != id)
    {
      goto LABEL_18;
    }

    startRecordingHostTime = self->_startRecordingHostTime;
    if (startRecordingHostTime <= time)
    {
      [CSFTimeUtils hostTimeToTimeInterval:time - startRecordingHostTime];
      v30 = v29;
      v21 = CSLogCategoryAudio;
      if (v29 > 0.5)
      {
        if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v53 = "[CSAudioProvider audioRecorderBufferAvailable:audioStreamHandleId:buffer:remoteVAD:atTime:arrivalTimestampToAudioRecorder:numberOfChannels:]";
          v54 = 2048;
          v55 = v30;
          _os_log_fault_impl(&dword_1DDA4B000, v21, OS_LOG_TYPE_FAULT, "%s Requesting historical audio data lost exceeded threshold (%f seconds)", buf, 0x16u);
        }

        goto LABEL_17;
      }

      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v53 = "[CSAudioProvider audioRecorderBufferAvailable:audioStreamHandleId:buffer:remoteVAD:atTime:arrivalTimestampToAudioRecorder:numberOfChannels:]";
        v54 = 2048;
        v55 = v30;
        v22 = "%s Requesting historical audio data lost (%f seconds)";
        goto LABEL_16;
      }
    }

    else
    {
      [CSFTimeUtils hostTimeToTimeInterval:startRecordingHostTime - time];
      v20 = v19;
      v21 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v53 = "[CSAudioProvider audioRecorderBufferAvailable:audioStreamHandleId:buffer:remoteVAD:atTime:arrivalTimestampToAudioRecorder:numberOfChannels:]";
        v54 = 2048;
        v55 = v20;
        v22 = "%s Requesting historical audio data received extra audio (%f seconds)";
LABEL_16:
        _os_log_impl(&dword_1DDA4B000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0x16u);
      }
    }

LABEL_17:
    self->_isWaitingForFirstAudioPacket = 0;
LABEL_18:
    estimatedStartHostTime = self->_estimatedStartHostTime;
    if (estimatedStartHostTime)
    {
      v32 = [bufferCopy length] / channels;
      v33 = (v32 / +[CSConfig inputRecordingSampleByteDepth]);
      +[CSConfig inputRecordingSampleRate];
      *&v35 = v33 / v34;
      self->_estimatedStartHostTime += [CSFTimeUtils secondsToHostTime:v35];
      time = estimatedStartHostTime;
    }

    recordQueue = self->_recordQueue;
    if (dCopy)
    {
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __141__CSAudioProvider_audioRecorderBufferAvailable_audioStreamHandleId_buffer_remoteVAD_atTime_arrivalTimestampToAudioRecorder_numberOfChannels___block_invoke;
      v51[3] = &unk_1E865CB68;
      v51[4] = self;
      dispatch_async(recordQueue, v51);
      streamHandleQueue = self->_streamHandleQueue;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __141__CSAudioProvider_audioRecorderBufferAvailable_audioStreamHandleId_buffer_remoteVAD_atTime_arrivalTimestampToAudioRecorder_numberOfChannels___block_invoke_2;
      v45[3] = &unk_1E865B330;
      v45[4] = self;
      v27 = &v46;
      v46 = bufferCopy;
      v47 = dCopy;
      timeCopy = time;
      recorderCopy = recorder;
      channelsCopy = channels;
      dispatch_async(streamHandleQueue, v45);

LABEL_24:
      goto LABEL_25;
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __141__CSAudioProvider_audioRecorderBufferAvailable_audioStreamHandleId_buffer_remoteVAD_atTime_arrivalTimestampToAudioRecorder_numberOfChannels___block_invoke_3;
    v44[3] = &unk_1E865CB68;
    v44[4] = self;
    dispatch_async(recordQueue, v44);
    v26 = self->_streamHandleQueue;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __141__CSAudioProvider_audioRecorderBufferAvailable_audioStreamHandleId_buffer_remoteVAD_atTime_arrivalTimestampToAudioRecorder_numberOfChannels___block_invoke_4;
    v42[3] = &unk_1E865C328;
    v42[4] = self;
    v27 = v43;
    v43[0] = bufferCopy;
    v43[1] = time;
    v43[2] = recorder;
    v28 = v42;
LABEL_23:
    dispatch_async(v26, v28);
    goto LABEL_24;
  }

  if (!id)
  {
    v23 = +[CSFPreferences sharedPreferences];
    audioInjectionEnabled = [v23 audioInjectionEnabled];

    if (audioInjectionEnabled)
    {
      v25 = self->_recordQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __141__CSAudioProvider_audioRecorderBufferAvailable_audioStreamHandleId_buffer_remoteVAD_atTime_arrivalTimestampToAudioRecorder_numberOfChannels___block_invoke_5;
      block[3] = &unk_1E865CB68;
      block[4] = self;
      dispatch_async(v25, block);
      v26 = self->_streamHandleQueue;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __141__CSAudioProvider_audioRecorderBufferAvailable_audioStreamHandleId_buffer_remoteVAD_atTime_arrivalTimestampToAudioRecorder_numberOfChannels___block_invoke_6;
      v39[3] = &unk_1E865C328;
      v39[4] = self;
      v27 = v40;
      v40[0] = bufferCopy;
      v40[1] = time;
      v40[2] = recorder;
      v28 = v39;
      goto LABEL_23;
    }
  }

LABEL_25:

  v38 = *MEMORY[0x1E69E9840];
}

- (void)_deliverPostprocessAudioChunk:(id)chunk toStream:(id)stream lastForwardedSampleCount:(unint64_t)count
{
  chunkCopy = chunk;
  streamCopy = stream;
  dispatch_assert_queue_V2(self->_streamHandleQueue);
  v13 = chunkCopy;
  gainCompensatedChunk = v13;
  if ([streamCopy needsBoost12dB])
  {
    gainCompensatedChunk = [v13 gainCompensatedChunk];
  }

  streamRequest = [streamCopy streamRequest];
  requestExclaveAudio = [streamRequest requestExclaveAudio];

  if ((requestExclaveAudio & 1) == 0)
  {
    [streamCopy audioStreamProvider:self audioBufferAvailable:gainCompensatedChunk lastForwardedSampleCount:count];
  }
}

- (void)_forwardAudioChunk:(id)chunk toStream:(id)stream
{
  v23 = *MEMORY[0x1E69E9840];
  chunkCopy = chunk;
  streamCopy = stream;
  dispatch_assert_queue_V2(self->_streamHandleQueue);
  startStreamOption = [streamCopy startStreamOption];
  requireSingleChannelLookup = [startStreamOption requireSingleChannelLookup];

  if (requireSingleChannelLookup)
  {
    startStreamOption2 = [streamCopy startStreamOption];
    v11 = [chunkCopy chunkForChannel:{objc_msgSend(startStreamOption2, "selectedChannel")}];
    [(CSAudioProvider *)self _deliverPostprocessAudioChunk:v11 toStream:streamCopy lastForwardedSampleCount:[(CSAudioCircularBuffer *)self->_circularBuffer sampleCount]];
  }

  else
  {
    [(CSAudioProvider *)self _deliverPostprocessAudioChunk:chunkCopy toStream:streamCopy lastForwardedSampleCount:[(CSAudioCircularBuffer *)self->_circularBuffer sampleCount]];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  tandemStreams = [streamCopy tandemStreams];
  v13 = [tandemStreams countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(tandemStreams);
        }

        [(CSAudioProvider *)self _forwardAudioChunk:chunkCopy toStream:*(*(&v18 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [tandemStreams countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_processAudioBuffer:(id)buffer remoteVAD:(id)d atTime:(unint64_t)time arrivalTimestampToAudioRecorder:(unint64_t)recorder numberOfChannels:(int)channels
{
  v54 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  dCopy = d;
  dispatch_assert_queue_V2(self->_streamHandleQueue);
  [(CSAudioProvider *)self _deliverHistoricalAudioToStreamsWithRemoteVAD:dCopy];
  if (bufferCopy)
  {
    v14 = [bufferCopy length] >> 1;
    circularBuffer = self->_circularBuffer;
    v16 = v14 / channels;
    if (circularBuffer)
    {
      sampleCount = [(CSAudioCircularBuffer *)circularBuffer sampleCount];
      -[CSAudioCircularBuffer addSamples:numSamples:atHostTime:](self->_circularBuffer, "addSamples:numSamples:atHostTime:", [bufferCopy bytes], v16, time);
      [(CSAudioTimeConverter *)self->_audioTimeConverter processSampleCount:sampleCount hostTime:time];
    }

    else
    {
      sampleCount = 0;
    }

    v18 = [CSAudioChunk alloc];
    v19 = +[CSConfig inputRecordingSampleByteDepth];
    LOBYTE(v38) = +[CSConfig inputRecordingIsFloat];
    LOBYTE(v37) = 0;
    v20 = [(CSAudioChunk *)v18 initWithData:bufferCopy numChannels:channels numSamples:v16 sampleByteDepth:v19 startSampleCount:sampleCount hostTime:time arrivalHostTimeToAudioRecorder:recorder wasBuffered:v37 remoteVAD:dCopy isFloat:v38];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    startPendingStreams = [(CSAudioProvider *)self startPendingStreams];
    v22 = [startPendingStreams countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v48;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v48 != v24)
          {
            objc_enumerationMutation(startPendingStreams);
          }

          [(CSAudioProvider *)self _forwardAudioChunk:v20 toStream:*(*(&v47 + 1) + 8 * i)];
        }

        v23 = [startPendingStreams countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v23);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    streams = [(CSAudioProvider *)self streams];
    v27 = [streams countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v44;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v44 != v29)
          {
            objc_enumerationMutation(streams);
          }

          [(CSAudioProvider *)self _forwardAudioChunk:v20 toStream:*(*(&v43 + 1) + 8 * j)];
        }

        v28 = [streams countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v28);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    stopPendingStreams = [(CSAudioProvider *)self stopPendingStreams];
    v32 = [stopPendingStreams countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v40;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v40 != v34)
          {
            objc_enumerationMutation(stopPendingStreams);
          }

          [(CSAudioProvider *)self _forwardAudioChunk:v20 toStream:*(*(&v39 + 1) + 8 * k)];
        }

        v33 = [stopPendingStreams countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v33);
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)_deliverHistoricalAudioToStreamsWithRemoteVAD:(id)d
{
  v45 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dispatch_assert_queue_V2(self->_streamHandleQueue);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  startPendingStreams = [(CSAudioProvider *)self startPendingStreams];
  v6 = [startPendingStreams countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(startPendingStreams);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        streamRequest = [v10 streamRequest];
        requestExclaveAudio = [streamRequest requestExclaveAudio];

        if ((requestExclaveAudio & 1) == 0)
        {
          [(CSAudioProvider *)self _fetchHistoricalAudioAndForwardToStream:v10 remoteVAD:dCopy];
        }
      }

      v7 = [startPendingStreams countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v7);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  streams = [(CSAudioProvider *)self streams];
  v14 = [streams countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(streams);
        }

        v18 = *(*(&v34 + 1) + 8 * j);
        streamRequest2 = [v18 streamRequest];
        requestExclaveAudio2 = [streamRequest2 requestExclaveAudio];

        if ((requestExclaveAudio2 & 1) == 0)
        {
          [(CSAudioProvider *)self _fetchHistoricalAudioAndForwardToStream:v18 remoteVAD:dCopy];
        }
      }

      v15 = [streams countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v15);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  stopPendingStreams = [(CSAudioProvider *)self stopPendingStreams];
  v22 = [stopPendingStreams countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v31;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(stopPendingStreams);
        }

        v26 = *(*(&v30 + 1) + 8 * k);
        streamRequest3 = [v26 streamRequest];
        requestExclaveAudio3 = [streamRequest3 requestExclaveAudio];

        if ((requestExclaveAudio3 & 1) == 0)
        {
          [(CSAudioProvider *)self _fetchHistoricalAudioAndForwardToStream:v26 remoteVAD:dCopy];
        }
      }

      v23 = [stopPendingStreams countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v23);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_fetchHistoricalAudioAndForwardToStream:(id)stream remoteVAD:(id)d
{
  v68 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  dCopy = d;
  dispatch_assert_queue_V2(self->_streamHandleQueue);
  circularBuffer = self->_circularBuffer;
  if (!circularBuffer)
  {
LABEL_25:
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    tandemStreams = [streamCopy tandemStreams];
    v37 = [tandemStreams countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v51;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v51 != v39)
          {
            objc_enumerationMutation(tandemStreams);
          }

          [(CSAudioProvider *)self _fetchHistoricalAudioAndForwardToStream:*(*(&v50 + 1) + 8 * i) remoteVAD:dCopy];
        }

        v38 = [tandemStreams countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v38);
    }

    goto LABEL_43;
  }

  sampleCount = [(CSAudioCircularBuffer *)circularBuffer sampleCount];
  sampleCount2 = [(CSAudioCircularBuffer *)self->_circularBuffer sampleCount];
  bufferLength = [(CSAudioCircularBuffer *)self->_circularBuffer bufferLength];
  v12 = self->_circularBuffer;
  if (sampleCount2 >= bufferLength)
  {
    bufferLength2 = [(CSAudioCircularBuffer *)v12 bufferLength];
  }

  else
  {
    bufferLength2 = [(CSAudioCircularBuffer *)v12 sampleCount];
  }

  v14 = [(CSAudioCircularBuffer *)self->_circularBuffer sampleCount]- bufferLength2;
  lastForwardedSampleCount = [streamCopy lastForwardedSampleCount];
  v16 = lastForwardedSampleCount;
  if (lastForwardedSampleCount >= v14)
  {
    v14 = lastForwardedSampleCount;
  }

  else
  {
    v17 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      uUID = [(CSAudioProvider *)self UUID];
      name = [streamCopy name];
      *buf = 136316162;
      v61 = "[CSAudioProvider _fetchHistoricalAudioAndForwardToStream:remoteVAD:]";
      v62 = 2114;
      *v63 = uUID;
      *&v63[8] = 2050;
      *&v63[10] = v16;
      v64 = 2050;
      v65 = v14;
      v66 = 2114;
      v67 = name;
      _os_log_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Buffer underrun!!!!, lastForwardedSampleTime:%{public}lu, oldestSampleTimeInBuffer:%{public}lu, stream:%{public}@", buf, 0x34u);
    }
  }

  if (v14 < sampleCount)
  {
    startStreamOption = [streamCopy startStreamOption];
    requireSingleChannelLookup = [startStreamOption requireSingleChannelLookup];

    v23 = self->_circularBuffer;
    if (requireSingleChannelLookup)
    {
      startStreamOption2 = [streamCopy startStreamOption];
      v25 = -[CSAudioCircularBuffer copySamplesFrom:to:channelIdx:](v23, "copySamplesFrom:to:channelIdx:", v14, sampleCount, [startStreamOption2 selectedChannel]);
    }

    else
    {
      v25 = [(CSAudioCircularBuffer *)self->_circularBuffer copySamplesFrom:v14 to:sampleCount];
    }

    [v25 setRemoteVAD:dCopy];
    v32 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v32;
      numSamples = [v25 numSamples];
      name2 = [streamCopy name];
      *buf = 136315650;
      v61 = "[CSAudioProvider _fetchHistoricalAudioAndForwardToStream:remoteVAD:]";
      v62 = 1024;
      *v63 = numSamples;
      *&v63[4] = 2112;
      *&v63[6] = name2;
      _os_log_impl(&dword_1DDA4B000, v33, OS_LOG_TYPE_DEFAULT, "%s Forward %d samples from historical audio buffer from streamName:%@", buf, 0x1Cu);
    }

    [(CSAudioProvider *)self _deliverPostprocessAudioChunk:v25 toStream:streamCopy lastForwardedSampleCount:sampleCount];

    goto LABEL_25;
  }

  if ([streamCopy scheduledFutureSample])
  {
    v26 = _fetchHistoricalAudioAndForwardToStream_remoteVAD__overrunHeartBeat;
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * _fetchHistoricalAudioAndForwardToStream_remoteVAD__overrunHeartBeat, 1) <= 0x1999999999999999uLL && v14 > sampleCount)
    {
      v28 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        uUID2 = [(CSAudioProvider *)self UUID];
        name3 = [streamCopy name];
        *buf = 136316162;
        v61 = "[CSAudioProvider _fetchHistoricalAudioAndForwardToStream:remoteVAD:]";
        v62 = 2114;
        *v63 = uUID2;
        *&v63[8] = 2114;
        *&v63[10] = name3;
        v64 = 2050;
        v65 = v14;
        v66 = 2050;
        v67 = sampleCount;
        _os_log_impl(&dword_1DDA4B000, v29, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Ignore forwarding stream %{public}@                                        the audio packets until sampleCount == %{public}lu (theMostRecentSampleCount:%{public}lu)", buf, 0x34u);

        v26 = _fetchHistoricalAudioAndForwardToStream_remoteVAD__overrunHeartBeat;
      }
    }

    _fetchHistoricalAudioAndForwardToStream_remoteVAD__overrunHeartBeat = v26 + 1;
  }

  else if (v14 > sampleCount)
  {
    v41 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v41;
      uUID3 = [(CSAudioProvider *)self UUID];
      name4 = [streamCopy name];
      *buf = 136316162;
      v61 = "[CSAudioProvider _fetchHistoricalAudioAndForwardToStream:remoteVAD:]";
      v62 = 2114;
      *v63 = uUID3;
      *&v63[8] = 2050;
      *&v63[10] = v14;
      v64 = 2050;
      v65 = sampleCount;
      v66 = 2114;
      v67 = name4;
      _os_log_impl(&dword_1DDA4B000, v42, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Buffer overrun!!! lastForwardedSampleTime:%{public}lu,                                    theMostRecentSampleCount:%{public}lu, stream:%{public}@", buf, 0x34u);
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  tandemStreams = [streamCopy tandemStreams];
  v45 = [tandemStreams countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v55;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v55 != v47)
        {
          objc_enumerationMutation(tandemStreams);
        }

        [(CSAudioProvider *)self _fetchHistoricalAudioAndForwardToStream:*(*(&v54 + 1) + 8 * j) remoteVAD:dCopy];
      }

      v46 = [tandemStreams countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v46);
  }

LABEL_43:

  v49 = *MEMORY[0x1E69E9840];
}

- (void)audioRecorderWillBeDestroyed:(id)destroyed
{
  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CSAudioProvider_audioRecorderWillBeDestroyed___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(recordQueue, block);
}

void __48__CSAudioProvider_audioRecorderWillBeDestroyed___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 UUID];
    v10 = 136315394;
    v11 = "[CSAudioProvider audioRecorderWillBeDestroyed:]_block_invoke";
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:", &v10, 0x16u);
  }

  [*(a1 + 32) _handleDidStopAudioStreamWithReason:3];
  [*(a1 + 32) setStreamState:0];
  [*(*(a1 + 32) + 48) unregisterObserver:?];
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  *(v7 + 48) = 0;

  objc_autoreleasePoolPop(v6);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_handleAudioRecorderStreamHandleIdInvalidated:(unint64_t)invalidated
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[CSAudioProvider _handleAudioRecorderStreamHandleIdInvalidated:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v13, 0xCu);
  }

  if (self->_audioStreamHandleId == invalidated)
  {
    [(CSAudioProvider *)self _handleDidStopAudioStreamWithReason:-11787];
    sessionDelegate = [(CSAudioProvider *)self sessionDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      sessionDelegate2 = [(CSAudioProvider *)self sessionDelegate];
      [sessionDelegate2 audioSessionProvider:self providerInvalidated:1];
    }

    providerDelegate = [(CSAudioProvider *)self providerDelegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      providerDelegate2 = [(CSAudioProvider *)self providerDelegate];
      [providerDelegate2 audioProviderInvalidated:self streamHandleId:invalidated];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)audioRecorderStreamHandleIdInvalidated:(unint64_t)invalidated
{
  recordQueue = self->_recordQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__CSAudioProvider_audioRecorderStreamHandleIdInvalidated___block_invoke;
  v4[3] = &unk_1E865CC58;
  v4[4] = self;
  v4[5] = invalidated;
  dispatch_async(recordQueue, v4);
}

- (void)audioRecorderDidStopRecord:(id)record audioStreamHandleId:(unint64_t)id reason:(int64_t)reason
{
  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__CSAudioProvider_audioRecorderDidStopRecord_audioStreamHandleId_reason___block_invoke;
  block[3] = &unk_1E865B1F0;
  block[4] = self;
  block[5] = id;
  block[6] = reason;
  dispatch_async(recordQueue, block);
}

void *__73__CSAudioProvider_audioRecorderDidStopRecord_audioStreamHandleId_reason___block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[5];
    v4 = *(a1[4] + 216);
    v5 = a1[6];
    v8 = 136315906;
    v9 = "[CSAudioProvider audioRecorderDidStopRecord:audioStreamHandleId:reason:]_block_invoke";
    v10 = 2048;
    v11 = v3;
    v12 = 2048;
    v13 = v4;
    v14 = 2048;
    v15 = v5;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s audioRecorderDidStopRecord! audioStreamHandleId: %lu, self->_audioStreamHandleId: %lu, stopReason: %lu", &v8, 0x2Au);
  }

  result = a1[4];
  if (a1[5] == result[27])
  {
    result = [result _handleDidStopAudioStreamWithReason:a1[6]];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)audioRecorderDidStartRecord:(id)record audioStreamHandleId:(unint64_t)id successfully:(BOOL)successfully error:(id)error
{
  errorCopy = error;
  recordQueue = self->_recordQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__CSAudioProvider_audioRecorderDidStartRecord_audioStreamHandleId_successfully_error___block_invoke;
  v12[3] = &unk_1E865B308;
  successfullyCopy = successfully;
  v13 = errorCopy;
  selfCopy = self;
  idCopy = id;
  v11 = errorCopy;
  dispatch_async(recordQueue, v12);
}

void *__86__CSAudioProvider_audioRecorderDidStartRecord_audioStreamHandleId_successfully_error___block_invoke(uint64_t a1)
{
  if ((*(a1 + 56) & 1) != 0 || [*(a1 + 32) code] != 205)
  {
    result = *(a1 + 40);
    if (*(a1 + 48) != result[27])
    {
      return result;
    }

    v4 = *(a1 + 56);
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = *(a1 + 32);
    result = *(a1 + 40);
    v4 = 0;
  }

  return [result _handleDidStartAudioStreamWithResult:v4 error:v3];
}

- (void)audioPreprocessor:(id)preprocessor hasAvailableBuffer:(id)buffer atTime:(unint64_t)time arrivalTimestampToAudioRecorder:(unint64_t)recorder numberOfChannels:(int)channels
{
  bufferCopy = buffer;
  streamHandleQueue = self->_streamHandleQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__CSAudioProvider_audioPreprocessor_hasAvailableBuffer_atTime_arrivalTimestampToAudioRecorder_numberOfChannels___block_invoke;
  block[3] = &unk_1E865B2E0;
  block[4] = self;
  v15 = bufferCopy;
  timeCopy = time;
  recorderCopy = recorder;
  channelsCopy = channels;
  v13 = bufferCopy;
  dispatch_async(streamHandleQueue, block);
}

- (void)triggerInfoForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CSAudioProvider_triggerInfoForContext_completion___block_invoke;
  block[3] = &unk_1E865C678;
  selfCopy = self;
  v14 = completionCopy;
  v12 = contextCopy;
  v9 = completionCopy;
  v10 = contextCopy;
  dispatch_async(recordQueue, block);
}

void __52__CSAudioProvider_triggerInfoForContext_completion___block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [CSVoiceTriggerEventInfoProvider isVoiceTriggerInfoAvailableLocally:a1[4]];
  v3 = CSLogCategoryAudio;
  if (v2)
  {
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[CSAudioProvider triggerInfoForContext:completion:]_block_invoke";
      _os_log_error_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_ERROR, "%s Not handled by this function", &v11, 0xCu);
    }

    v4 = a1[6];
    if (v4)
    {
      (*(v4 + 16))(v4, 0, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[CSAudioProvider triggerInfoForContext:completion:]_block_invoke";
      _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Fetching voiceTriggerInfo from audioRecorder", &v11, 0xCu);
    }

    v5 = a1[6];
    if (v5)
    {
      v6 = a1[5];
      v7 = v6[6];
      v8 = [v6 recordDeviceIndicator];
      v9 = [v7 fetchGibraltarVoiceTriggerInfoWithRecordDeviceIndicator:v8];
      (*(v5 + 16))(v5, v9, 0);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (float)averagePowerForChannel:(unint64_t)channel
{
  audioRecorder = [(CSAudioProvider *)self audioRecorder];
  [audioRecorder averagePowerForChannel:channel];
  v6 = v5;

  return v6;
}

- (float)peakPowerForChannel:(unint64_t)channel
{
  audioRecorder = [(CSAudioProvider *)self audioRecorder];
  [audioRecorder peakPowerForChannel:channel];
  v6 = v5;

  return v6;
}

- (void)updateMeters
{
  audioRecorder = [(CSAudioProvider *)self audioRecorder];
  [audioRecorder updateMeters];
}

- (id)audioMetric
{
  audioRecorder = [(CSAudioProvider *)self audioRecorder];
  metrics = [audioRecorder metrics];

  return metrics;
}

- (void)configureAlertBehavior:(id)behavior
{
  behaviorCopy = behavior;
  recordQueue = self->_recordQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__CSAudioProvider_configureAlertBehavior___block_invoke;
  v7[3] = &unk_1E865C970;
  v7[4] = self;
  v8 = behaviorCopy;
  v6 = behaviorCopy;
  dispatch_async(recordQueue, v7);
}

void __42__CSAudioProvider_configureAlertBehavior___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioRecorder];
  [v2 configureAlertBehavior:*(a1 + 40) audioStreamHandleId:*(*(a1 + 32) + 216)];
}

- (BOOL)playRecordStartingAlertAndResetEndpointerWithAlertOverride:(int64_t)override
{
  v23 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__CSAudioProvider_playRecordStartingAlertAndResetEndpointerWithAlertOverride___block_invoke;
  block[3] = &unk_1E865C880;
  block[4] = self;
  block[5] = &v15;
  dispatch_async_and_wait(recordQueue, block);
  if (*(v16 + 24) == 1)
  {
    v6 = CSLogCategoryAudio;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      uUID = [(CSAudioProvider *)self UUID];
      *buf = 136315394;
      v20 = "[CSAudioProvider playRecordStartingAlertAndResetEndpointerWithAlertOverride:]";
      v21 = 2114;
      v22 = uUID;
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s CSAudioProvider[%{public}@]:AVVC is recovering, ignore command...", buf, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    audioRecorder = [(CSAudioProvider *)self audioRecorder];
    v7 = [audioRecorder playRecordStartingAlertAndResetEndpointerFromStream:self->_audioStreamHandleId withAlertOverride:override];

    v9 = self->_recordQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__CSAudioProvider_playRecordStartingAlertAndResetEndpointerWithAlertOverride___block_invoke_134;
    v13[3] = &unk_1E865CB68;
    v13[4] = self;
    dispatch_async(v9, v13);
  }

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

void __78__CSAudioProvider_playRecordStartingAlertAndResetEndpointerWithAlertOverride___block_invoke_134(uint64_t a1)
{
  v2 = [*(a1 + 32) audioRecorder];
  v3 = [v2 getPlaybackRouteForStreamID:{objc_msgSend(*(a1 + 32), "audioStreamHandleId")}];

  v4 = [*(a1 + 32) audioRecorder];
  v5 = [*(a1 + 32) recordDeviceIndicator];
  v6 = [v4 recordRouteWithRecordDeviceIndicator:v5];

  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__CSAudioProvider_playRecordStartingAlertAndResetEndpointerWithAlertOverride___block_invoke_2;
  block[3] = &unk_1E865C778;
  block[4] = v7;
  v12 = v6;
  v13 = v3;
  v9 = v3;
  v10 = v6;
  dispatch_async(v8, block);
}

- (BOOL)_didPlayStartAlertSoundForSiri:(id)siri audioStream:(id)stream
{
  v56 = *MEMORY[0x1E69E9840];
  siriCopy = siri;
  streamCopy = stream;
  dispatch_assert_queue_V2(self->_recordQueue);
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman != 1)
  {
    if (self->_waitingForAlertFinish)
    {
      goto LABEL_11;
    }

    streamRequest = [streamCopy streamRequest];
    clientIdentity = [streamRequest clientIdentity];

    if (clientIdentity != 1)
    {
      goto LABEL_11;
    }

    if (self->_audioSystemRecovering)
    {
      v13 = CSLogCategoryAudio;
      if (!os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v9 = v13;
      uUID = [(CSAudioProvider *)self UUID];
      *buf = 136315394;
      v53 = "[CSAudioProvider _didPlayStartAlertSoundForSiri:audioStream:]";
      v54 = 2114;
      v55 = uUID;
      _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, "%s CSAudioProvider[%{public}@]:AVVC is recovering, ignore command...", buf, 0x16u);
      goto LABEL_6;
    }

    avvcAlertBehavior = [siriCopy avvcAlertBehavior];
    if (avvcAlertBehavior)
    {
      audioRecorder = [(CSAudioProvider *)self audioRecorder];
      [audioRecorder configureAlertBehavior:avvcAlertBehavior audioStreamHandleId:self->_audioStreamHandleId];
    }

    streamRequest2 = [streamCopy streamRequest];
    recordContext = [streamRequest2 recordContext];
    if ([recordContext type] == 11)
    {
      goto LABEL_25;
    }

    streamRequest3 = [streamCopy streamRequest];
    recordContext2 = [streamRequest3 recordContext];
    if ([recordContext2 type] == 6)
    {
LABEL_24:

LABEL_25:
      goto LABEL_26;
    }

    streamRequest4 = [streamCopy streamRequest];
    recordContext3 = [streamRequest4 recordContext];
    if ([recordContext3 type] == 20)
    {

      goto LABEL_24;
    }

    v50 = recordContext3;
    v51 = streamRequest4;
    streamRequest5 = [streamCopy streamRequest];
    recordContext4 = [streamRequest5 recordContext];
    if ([recordContext4 type] == 22)
    {

LABEL_23:
      goto LABEL_24;
    }

    v48 = recordContext4;
    v49 = streamRequest5;
    streamRequest6 = [streamCopy streamRequest];
    recordContext5 = [streamRequest6 recordContext];
    if ([recordContext5 type] == 23)
    {

      goto LABEL_23;
    }

    streamRequest7 = [streamCopy streamRequest];
    recordContext6 = [streamRequest7 recordContext];
    type = [recordContext6 type];

    if (type == 27)
    {
      goto LABEL_26;
    }

    startAlertBehavior = [siriCopy startAlertBehavior];
    streamRequest8 = [streamCopy streamRequest];
    recordContext7 = [streamRequest8 recordContext];
    isServerInvoked = [recordContext7 isServerInvoked];

    if (isServerInvoked)
    {
      v33 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v53 = "[CSAudioProvider _didPlayStartAlertSoundForSiri:audioStream:]";
        _os_log_impl(&dword_1DDA4B000, v33, OS_LOG_TYPE_DEFAULT, "%s Skip predictStartAlertBehavior for serverInvoke here", buf, 0xCu);
      }
    }

    else
    {
      if ((startAlertBehavior - 5) > 0xFFFFFFFFFFFFFFFBLL)
      {
LABEL_36:
        audioRecorder2 = [(CSAudioProvider *)self audioRecorder];
        v42 = [audioRecorder2 playAlertSoundForType:1 recordDevideIndicator:self->_recordDeviceIndicator];

        v14 = 0;
        if ((startAlertBehavior & 0xFFFFFFFFFFFFFFFDLL) == 1)
        {
          goto LABEL_27;
        }

        if (!v42)
        {
          goto LABEL_27;
        }

        allowRecordWhileBeep = [siriCopy allowRecordWhileBeep];
        v14 = 1;
        if (startAlertBehavior != 2 || !allowRecordWhileBeep)
        {
          goto LABEL_27;
        }

        v44 = CSLogCategoryAudio;
        if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v53 = "[CSAudioProvider _didPlayStartAlertSoundForSiri:audioStream:]";
          _os_log_impl(&dword_1DDA4B000, v44, OS_LOG_TYPE_DEFAULT, "%s Skip waiting for alert playing as we are allowing record during beep playing", buf, 0xCu);
        }

LABEL_26:
        v14 = 0;
LABEL_27:

        goto LABEL_12;
      }

      audioRecorder3 = [(CSAudioProvider *)self audioRecorder];
      recordDeviceIndicator = [(CSAudioProvider *)self recordDeviceIndicator];
      v36 = [audioRecorder3 recordRouteWithRecordDeviceIndicator:recordDeviceIndicator];

      audioRecorder4 = [(CSAudioProvider *)self audioRecorder];
      v38 = [audioRecorder4 getPlaybackRouteForStreamID:{-[CSAudioProvider audioStreamHandleId](self, "audioStreamHandleId")}];

      streamRequest9 = [streamCopy streamRequest];
      recordContext8 = [streamRequest9 recordContext];
      startAlertBehavior = +[CSAlertBehaviorPredictor predictStartAlertBehaviorFor:recordRoute:playbackRoute:](CSAlertBehaviorPredictor, "predictStartAlertBehaviorFor:recordRoute:playbackRoute:", [recordContext8 type], v36, v38);
    }

    if (!startAlertBehavior)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

  v8 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    uUID = [(CSAudioProvider *)self UUID];
    *buf = 136315394;
    v53 = "[CSAudioProvider _didPlayStartAlertSoundForSiri:audioStream:]";
    v54 = 2114;
    v55 = uUID;
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Skip running alert logic for ATV/HomePod", buf, 0x16u);
LABEL_6:
  }

LABEL_11:
  v14 = 0;
LABEL_12:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)playAlertSoundForType:(int64_t)type
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  recordQueue = self->_recordQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__CSAudioProvider_playAlertSoundForType___block_invoke;
  v11[3] = &unk_1E865C880;
  v11[4] = self;
  v11[5] = &v12;
  dispatch_async_and_wait(recordQueue, v11);
  if (*(v13 + 24) == 1)
  {
    audioRecorder = CSLogCategoryAudio;
    if (os_log_type_enabled(audioRecorder, OS_LOG_TYPE_ERROR))
    {
      uUID = [(CSAudioProvider *)self UUID];
      *buf = 136315394;
      v17 = "[CSAudioProvider playAlertSoundForType:]";
      v18 = 2114;
      v19 = uUID;
      _os_log_error_impl(&dword_1DDA4B000, audioRecorder, OS_LOG_TYPE_ERROR, "%s CSAudioProvider[%{public}@]:AVVC is recovering, ignore command...", buf, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    audioRecorder = [(CSAudioProvider *)self audioRecorder];
    v7 = [audioRecorder playAlertSoundForType:type recordDevideIndicator:self->_recordDeviceIndicator];
  }

  _Block_object_dispose(&v12, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)setAudioAlertDelegate:(id)delegate
{
  delegateCopy = delegate;
  recordQueue = self->_recordQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CSAudioProvider_setAudioAlertDelegate___block_invoke;
  v7[3] = &unk_1E865C970;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(recordQueue, v7);
}

- (void)setAnnounceCallsEnabled:(BOOL)enabled withStreamHandleID:(unint64_t)d
{
  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__CSAudioProvider_setAnnounceCallsEnabled_withStreamHandleID___block_invoke;
  block[3] = &unk_1E865B2B8;
  enabledCopy = enabled;
  block[4] = self;
  block[5] = d;
  dispatch_async(recordQueue, block);
}

void __62__CSAudioProvider_setAnnounceCallsEnabled_withStreamHandleID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioRecorder];
  [v2 setAnnounceCallsEnabled:*(a1 + 48) withStreamHandleID:*(a1 + 40)];
}

- (void)enableMiniDucking:(BOOL)ducking
{
  recordQueue = self->_recordQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__CSAudioProvider_enableMiniDucking___block_invoke;
  v4[3] = &unk_1E865B178;
  v4[4] = self;
  duckingCopy = ducking;
  dispatch_async(recordQueue, v4);
}

void __37__CSAudioProvider_enableMiniDucking___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioRecorder];
  [v2 enableMiniDucking:*(a1 + 40)];
}

- (void)setDuckOthersOption:(BOOL)option
{
  v12 = *MEMORY[0x1E69E9840];
  if (option)
  {
    goto LABEL_7;
  }

  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman != 1)
  {
LABEL_7:
    recordQueue = self->_recordQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__CSAudioProvider_setDuckOthersOption___block_invoke;
    v8[3] = &unk_1E865B178;
    v8[4] = self;
    optionCopy = option;
    dispatch_async(recordQueue, v8);
  }

  else
  {
    v5 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = "[CSAudioProvider setDuckOthersOption:]";
      _os_log_error_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_ERROR, "%s Unable to disable duckOthers in HomePod", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __39__CSAudioProvider_setDuckOthersOption___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioRecorder];
  [v2 setDuckMixWithOthersForStream:objc_msgSend(*(a1 + 32) duckOthers:"audioStreamHandleId") duckToLevelInDB:*(a1 + 40) mixWithOthers:{0, *(a1 + 40)}];
}

- (void)enableSmartRoutingConsideration:(BOOL)consideration
{
  recordQueue = self->_recordQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__CSAudioProvider_enableSmartRoutingConsideration___block_invoke;
  v4[3] = &unk_1E865B178;
  v4[4] = self;
  considerationCopy = consideration;
  dispatch_async(recordQueue, v4);
}

void __51__CSAudioProvider_enableSmartRoutingConsideration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioRecorder];
  [v2 enableSmartRoutingConsiderationForStream:objc_msgSend(*(a1 + 32) enable:{"audioStreamHandleId"), *(a1 + 40)}];
}

- (BOOL)_deactivateAudioSession:(unint64_t)session error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_recordQueue);
  v7 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    uUID = [(CSAudioProvider *)self UUID];
    v10 = [(CSAudioProvider *)self _streamStateName:self->_streamState];
    *buf = 136315650;
    v27 = "[CSAudioProvider _deactivateAudioSession:error:]";
    v28 = 2114;
    v29 = uUID;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Deactivating Audio Session under : %{public}@", buf, 0x20u);
  }

  [(CSAudioProvider *)self _switchToListeningMode];
  audioRecorder = [(CSAudioProvider *)self audioRecorder];

  if (audioRecorder)
  {
    if (CSIsHorseman_onceToken != -1)
    {
      dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
    }

    v12 = CSIsHorseman_isHorseman;
    audioRecorder2 = [(CSAudioProvider *)self audioRecorder];
    v14 = audioRecorder2;
    if (v12 == 1)
    {
      v25 = 0;
      v15 = [audioRecorder2 deactivateAudioSession:session streamHandleId:-[CSAudioProvider audioStreamHandleId](self error:{"audioStreamHandleId"), &v25}];
      v16 = v25;
    }

    else
    {
      v24 = 0;
      v15 = [audioRecorder2 deactivateAudioSession:session error:&v24];
      v16 = v24;
    }

    v17 = v16;
  }

  else
  {
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:951 userInfo:0];
    v15 = 0;
  }

  if (self->_currentSessionShouldDuckOnBuiltInSpeaker)
  {
    +[CSAudioRecorder resetDuckSettings];
    self->_currentSessionShouldDuckOnBuiltInSpeaker = 0;
  }

  if (v15)
  {
    [(CSAudioProvider *)self _releaseRecordingTransactionIfNeeded];
    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v18 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
  {
    v22 = v18;
    localizedDescription = [v17 localizedDescription];
    *buf = 136315394;
    v27 = "[CSAudioProvider _deactivateAudioSession:error:]";
    v28 = 2114;
    v29 = localizedDescription;
    _os_log_error_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_ERROR, "%s Failed to deactivateAudioSession : %{public}@", buf, 0x16u);

    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (error)
  {
LABEL_18:
    v19 = v17;
    *error = v17;
  }

LABEL_19:

  v20 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)deactivateAudioSession:(unint64_t)session error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7916;
  v16 = __Block_byref_object_dispose__7917;
  v17 = 0;
  recordQueue = self->_recordQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__CSAudioProvider_deactivateAudioSession_error___block_invoke;
  v11[3] = &unk_1E865B290;
  v11[4] = self;
  v11[5] = &v18;
  v11[6] = &v12;
  v11[7] = session;
  dispatch_async_and_wait(recordQueue, v11);
  if ((v19[3] & 1) == 0)
  {
    v6 = CSLogCategoryAudio;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v13[5] localizedDescription];
      *buf = 136315394;
      v23 = "[CSAudioProvider deactivateAudioSession:error:]";
      v24 = 2114;
      v25 = localizedDescription;
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s Failed to deactivate audio session : %{public}@", buf, 0x16u);
    }
  }

  if (error)
  {
    *error = v13[5];
  }

  v7 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void __48__CSAudioProvider_deactivateAudioSession_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[7];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _deactivateAudioSession:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[5] + 8) + 24) = v5;
}

- (BOOL)_activateAudioSessionWithReason:(unint64_t)reason error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_recordQueue);
  v7 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    uUID = [(CSAudioProvider *)self UUID];
    v10 = [(CSAudioProvider *)self _streamStateName:self->_streamState];
    *buf = 136315650;
    v30 = "[CSAudioProvider _activateAudioSessionWithReason:error:]";
    v31 = 2114;
    v32 = uUID;
    v33 = 2114;
    v34 = v10;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Activating Audio Session under : %{public}@", buf, 0x20u);
  }

  self->_currentSessionShouldDuckOnBuiltInSpeaker = 0;
  v11 = AFDeviceSupportsSystemAssistantExperience();
  audioRecorder = [(CSAudioProvider *)self audioRecorder];
  [audioRecorder setEnableInterruptionByRecordingClientsForStream:-[CSAudioProvider audioStreamId](self enable:{"audioStreamId"), v11}];

  audioRecorder2 = [(CSAudioProvider *)self audioRecorder];

  if (audioRecorder2)
  {
    _shouldDuckOnBuiltInSpeaker = [(CSAudioProvider *)self _shouldDuckOnBuiltInSpeaker];
    self->_currentSessionShouldDuckOnBuiltInSpeaker = _shouldDuckOnBuiltInSpeaker;
    if (_shouldDuckOnBuiltInSpeaker)
    {
      audioRecorder3 = [(CSAudioProvider *)self audioRecorder];
      audioStreamHandleId = [(CSAudioProvider *)self audioStreamHandleId];
      v17 = MEMORY[0x1E696AD98];
      +[CSConfig defaultSpeakerOutDuckToLevelInDB];
      v18 = [v17 numberWithFloat:?];
      [audioRecorder3 setDuckMixWithOthersForStream:audioStreamHandleId duckOthers:1 duckToLevelInDB:v18 mixWithOthers:1];
    }

    audioRecorder4 = [(CSAudioProvider *)self audioRecorder];
    v28 = 0;
    LODWORD(audioRecorder2) = [audioRecorder4 activateAudioSessionWithReason:reason streamHandleId:-[CSAudioProvider audioStreamHandleId](self error:{"audioStreamHandleId"), &v28}];
    v20 = v28;
  }

  else
  {
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:958 userInfo:0];
  }

  if (+[CSUtils supportNonInterruptibleSiri]&& [(CSAudioProvider *)self _isAudioStreamTypeBuiltIn]&& reason - 2 <= 2 && (!self->_currentSessionShouldDuckOnBuiltInSpeaker & audioRecorder2 & 1) != 0)
  {
    audioRecorder5 = [(CSAudioProvider *)self audioRecorder];
    [audioRecorder5 setDuckMixWithOthersForStream:-[CSAudioProvider audioStreamHandleId](self duckOthers:"audioStreamHandleId") duckToLevelInDB:1 mixWithOthers:{0, 1}];
  }

  if (audioRecorder2)
  {
    [(CSAudioProvider *)self _holdRecordingTransactionIfNeeded];
    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v22 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
  {
    v26 = v22;
    localizedDescription = [v20 localizedDescription];
    *buf = 136315394;
    v30 = "[CSAudioProvider _activateAudioSessionWithReason:error:]";
    v31 = 2114;
    v32 = localizedDescription;
    _os_log_error_impl(&dword_1DDA4B000, v26, OS_LOG_TYPE_ERROR, "%s Failed to activateAudioSession : %{public}@", buf, 0x16u);

    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (error)
  {
LABEL_18:
    v23 = v20;
    *error = v20;
  }

LABEL_19:

  v24 = *MEMORY[0x1E69E9840];
  return audioRecorder2;
}

- (BOOL)activateAudioSessionWithReason:(unint64_t)reason dynamicAttribute:(unint64_t)attribute bundleID:(id)d error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7916;
  v21 = __Block_byref_object_dispose__7917;
  v22 = 0;
  recordQueue = self->_recordQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82__CSAudioProvider_activateAudioSessionWithReason_dynamicAttribute_bundleID_error___block_invoke;
  v16[3] = &unk_1E865B290;
  v16[4] = self;
  v16[5] = &v23;
  v16[6] = &v17;
  v16[7] = reason;
  dispatch_async_and_wait(recordQueue, v16);
  if ((v24[3] & 1) == 0)
  {
    v11 = CSLogCategoryAudio;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v18[5] localizedDescription];
      *buf = 136315394;
      v28 = "[CSAudioProvider activateAudioSessionWithReason:dynamicAttribute:bundleID:error:]";
      v29 = 2114;
      v30 = localizedDescription;
      _os_log_error_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_ERROR, "%s Failed to activateAudioSessionWithReason: %{public}@", buf, 0x16u);
    }
  }

  if (error)
  {
    *error = v18[5];
  }

  v12 = *(v24 + 24);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  v13 = *MEMORY[0x1E69E9840];
  return v12 & 1;
}

void __82__CSAudioProvider_activateAudioSessionWithReason_dynamicAttribute_bundleID_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[7];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _activateAudioSessionWithReason:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[5] + 8) + 24) = v5;
}

- (BOOL)prewarmAudioSessionWithError:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7916;
  v15 = __Block_byref_object_dispose__7917;
  v16 = 0;
  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CSAudioProvider_prewarmAudioSessionWithError___block_invoke;
  block[3] = &unk_1E865C080;
  block[4] = self;
  block[5] = &v17;
  block[6] = &v11;
  dispatch_async_and_wait(recordQueue, block);
  if ((v18[3] & 1) == 0)
  {
    v5 = CSLogCategoryAudio;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v12[5] localizedDescription];
      *buf = 136315394;
      v22 = "[CSAudioProvider prewarmAudioSessionWithError:]";
      v23 = 2114;
      v24 = localizedDescription;
      _os_log_error_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_ERROR, "%s Failed to prewarmAudioSessionWithError : %{public}@", buf, 0x16u);
    }
  }

  if (error)
  {
    *error = v12[5];
  }

  v6 = *(v18 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

void __48__CSAudioProvider_prewarmAudioSessionWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioRecorder];
  v3 = [*(a1 + 32) audioStreamHandleId];
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v2 prewarmAudioSessionWithStreamHandleId:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v5;
}

- (void)setAudioSessionDelegate:(id)delegate
{
  delegateCopy = delegate;
  recordQueue = self->_recordQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CSAudioProvider_setAudioSessionDelegate___block_invoke;
  v7[3] = &unk_1E865C970;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(recordQueue, v7);
}

- (id)recordSettings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7916;
  v10 = __Block_byref_object_dispose__7917;
  v11 = 0;
  recordQueue = self->_recordQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__CSAudioProvider_recordSettings__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(recordQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __33__CSAudioProvider_recordSettings__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) audioRecorder];
  v2 = [v6 recordSettingsWithStreamHandleId:{objc_msgSend(*(a1 + 32), "audioStreamHandleId")}];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)cancelAudioStreamHold:(id)hold
{
  v19 = *MEMORY[0x1E69E9840];
  holdCopy = hold;
  if (holdCopy)
  {
    v5 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      uUID = [(CSAudioProvider *)self UUID];
      name = [holdCopy name];
      *buf = 136315650;
      v14 = "[CSAudioProvider cancelAudioStreamHold:]";
      v15 = 2114;
      v16 = uUID;
      v17 = 2114;
      v18 = name;
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:%{public}@ ask for cancel hold stream", buf, 0x20u);
    }

    recordQueue = self->_recordQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__CSAudioProvider_cancelAudioStreamHold___block_invoke;
    v11[3] = &unk_1E865C970;
    v11[4] = self;
    v12 = holdCopy;
    dispatch_async(recordQueue, v11);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_cancelAudioStreamHold:(id)hold
{
  v29 = *MEMORY[0x1E69E9840];
  holdCopy = hold;
  streamHolders = [(CSAudioProvider *)self streamHolders];
  v6 = [streamHolders containsObject:holdCopy];

  v7 = CSLogCategoryAudio;
  v8 = os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = v7;
      uUID = [(CSAudioProvider *)self UUID];
      name = [holdCopy name];
      v23 = 136315650;
      v24 = "[CSAudioProvider _cancelAudioStreamHold:]";
      v25 = 2114;
      v26 = uUID;
      v27 = 2114;
      v28 = name;
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Removing %{public}@ from stream holders", &v23, 0x20u);
    }

    streamHolders2 = [(CSAudioProvider *)self streamHolders];
    [streamHolders2 removeObject:holdCopy];

    listeningMicIndicatorLockUUIDString = [holdCopy listeningMicIndicatorLockUUIDString];

    if (listeningMicIndicatorLockUUIDString)
    {
      listeningMicIndicatorLockUUIDString2 = [holdCopy listeningMicIndicatorLockUUIDString];
      [(CSAudioProvider *)self _releaseListeningMicIndicatorLock:listeningMicIndicatorLockUUIDString2];
    }

    recordModeLockUUIDString = [holdCopy recordModeLockUUIDString];

    if (recordModeLockUUIDString)
    {
      recordModeLockUUIDString2 = [holdCopy recordModeLockUUIDString];
      [(CSAudioProvider *)self _releaseRecordModeLock:recordModeLockUUIDString2];
    }

    [(CSAudioProvider *)self _stopAudioStream:0 option:0 completion:0];
    v17 = +[CSAudioStreamActivityMonitor sharedInstance];
    streams = [(CSAudioProvider *)self streams];
    streamHolders3 = [(CSAudioProvider *)self streamHolders];
    [v17 notifyActiveStreamsChanged:streams streamHolders:streamHolders3 streamId:self->_audioStreamHandleId];

    goto LABEL_11;
  }

  if (v8)
  {
    v17 = v7;
    uUID2 = [(CSAudioProvider *)self UUID];
    name2 = [holdCopy name];
    v23 = 136315650;
    v24 = "[CSAudioProvider _cancelAudioStreamHold:]";
    v25 = 2114;
    v26 = uUID2;
    v27 = 2114;
    v28 = name2;
    _os_log_impl(&dword_1DDA4B000, v17, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:%{public}@ stream holder was already removed from stream holders", &v23, 0x20u);

LABEL_11:
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_didFireStreamHolderTimeout:(id)timeout
{
  v16 = *MEMORY[0x1E69E9840];
  timeoutCopy = timeout;
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uUID = [(CSAudioProvider *)self UUID];
    name = [timeoutCopy name];
    v10 = 136315650;
    v11 = "[CSAudioProvider _didFireStreamHolderTimeout:]";
    v12 = 2114;
    v13 = uUID;
    v14 = 2114;
    v15 = name;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Timeout for %{public}@ has fired", &v10, 0x20u);
  }

  [(CSAudioProvider *)self _cancelAudioStreamHold:timeoutCopy];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_holdAudioStreamWithHolder:(id)holder option:(id)option
{
  holderCopy = holder;
  optionCopy = option;
  [optionCopy timeout];
  if (v8 > 0.0)
  {
    if ([optionCopy requireListeningMicIndicatorLock])
    {
      v9 = -[CSAudioProvider _acquireListeningMicIndicatorLockFrom:](self, "_acquireListeningMicIndicatorLockFrom:", [optionCopy clientIdentity]);
      uUIDString = [v9 UUIDString];
      [holderCopy setListeningMicIndicatorLockUUIDString:uUIDString];
    }

    if ([optionCopy requireRecordModeLock])
    {
      v11 = -[CSAudioProvider _acquireRecordModeLockFrom:](self, "_acquireRecordModeLockFrom:", [optionCopy clientIdentity]);
      uUIDString2 = [v11 UUIDString];
      [holderCopy setRecordModeLockUUIDString:uUIDString2];
    }

    streamHolders = [(CSAudioProvider *)self streamHolders];
    [streamHolders addObject:holderCopy];

    v14 = +[CSAudioStreamActivityMonitor sharedInstance];
    streams = [(CSAudioProvider *)self streams];
    streamHolders2 = [(CSAudioProvider *)self streamHolders];
    [v14 notifyActiveStreamsChanged:streams streamHolders:streamHolders2 streamId:self->_audioStreamHandleId];

    objc_initWeak(&location, self);
    [optionCopy timeout];
    v18 = dispatch_time(0, (v17 * 1000000000.0));
    recordQueue = self->_recordQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__CSAudioProvider__holdAudioStreamWithHolder_option___block_invoke;
    block[3] = &unk_1E865C300;
    objc_copyWeak(&v22, &location);
    v21 = holderCopy;
    dispatch_after(v18, recordQueue, block);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

void __53__CSAudioProvider__holdAudioStreamWithHolder_option___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didFireStreamHolderTimeout:*(a1 + 32)];
}

- (id)holdAudioStreamWithDescription:(id)description option:(id)option
{
  v31 = *MEMORY[0x1E69E9840];
  optionCopy = option;
  descriptionCopy = description;
  v8 = -[CSAudioStreamHolding initWithName:clientIdentity:]([CSAudioStreamHolding alloc], "initWithName:clientIdentity:", descriptionCopy, [optionCopy clientIdentity]);

  v9 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    uUID = [(CSAudioProvider *)self UUID];
    name = [(CSAudioStreamHolding *)v8 name];
    *buf = 136315906;
    v24 = "[CSAudioProvider holdAudioStreamWithDescription:option:]";
    v25 = 2114;
    v26 = uUID;
    v27 = 2114;
    v28 = name;
    v29 = 2050;
    clientIdentity = [optionCopy clientIdentity];
    _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:%{public}@ ask for audio hold stream for %{public}f", buf, 0x2Au);
  }

  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CSAudioProvider_holdAudioStreamWithDescription_option___block_invoke;
  block[3] = &unk_1E865C778;
  block[4] = self;
  v14 = v8;
  v21 = v14;
  v22 = optionCopy;
  v15 = optionCopy;
  dispatch_async(recordQueue, block);
  v16 = v22;
  v17 = v14;

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)_saveRecordingBufferFrom:(unint64_t)from to:(unint64_t)to toURL:(id)l
{
  lCopy = l;
  dispatch_assert_queue_V2(self->_streamHandleQueue);
  v9 = [(CSAudioCircularBuffer *)self->_circularBuffer copySamplesFrom:from to:to];
  v10 = v9;
  if (v9)
  {
    loggingQueue = self->_loggingQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__CSAudioProvider__saveRecordingBufferFrom_to_toURL___block_invoke;
    v12[3] = &unk_1E865C328;
    fromCopy = from;
    toCopy = to;
    v13 = v9;
    v14 = lCopy;
    dispatch_async(loggingQueue, v12);
  }
}

uint64_t __53__CSAudioProvider__saveRecordingBufferFrom_to_toURL___block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[6];
    v4 = a1[7];
    v7 = 136315650;
    v8 = "[CSAudioProvider _saveRecordingBufferFrom:to:toURL:]_block_invoke";
    v9 = 2050;
    v10 = v3;
    v11 = 2050;
    v12 = v4;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Saving circular buffer from %{public}lu to %{public}lu", &v7, 0x20u);
  }

  result = [CSPlainAudioFileWriter saveAudioChunck:a1[4] toURL:a1[5]];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)saveRecordingBufferFrom:(unint64_t)from to:(unint64_t)to toURL:(id)l
{
  lCopy = l;
  streamHandleQueue = self->_streamHandleQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__CSAudioProvider_saveRecordingBufferFrom_to_toURL___block_invoke;
  v11[3] = &unk_1E865C328;
  fromCopy = from;
  toCopy = to;
  v11[4] = self;
  v12 = lCopy;
  v10 = lCopy;
  dispatch_async(streamHandleQueue, v11);
}

- (void)saveRecordingBufferToEndFrom:(unint64_t)from toURL:(id)l
{
  lCopy = l;
  streamHandleQueue = self->_streamHandleQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CSAudioProvider_saveRecordingBufferToEndFrom_toURL___block_invoke;
  block[3] = &unk_1E865C350;
  v10 = lCopy;
  fromCopy = from;
  block[4] = self;
  v8 = lCopy;
  dispatch_async(streamHandleQueue, block);
}

void *__54__CSAudioProvider_saveRecordingBufferToEndFrom_toURL___block_invoke(void *a1)
{
  v2 = a1[4];
  result = v2[21];
  if (result)
  {
    v4 = a1[6];
    v5 = [result sampleCount];
    v6 = a1[5];

    return [v2 _saveRecordingBufferFrom:v4 to:v5 toURL:v6];
  }

  return result;
}

- (id)_audioChunkFrom:(unint64_t)from to:(unint64_t)to channelIdx:(unint64_t)idx
{
  dispatch_assert_queue_V2(self->_streamHandleQueue);
  if (from >= to)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(CSAudioCircularBuffer *)self->_circularBuffer copySamplesFrom:from to:to channelIdx:idx];
  }

  return v9;
}

- (id)_audioChunkFrom:(unint64_t)from to:(unint64_t)to
{
  dispatch_assert_queue_V2(self->_streamHandleQueue);
  if (from >= to)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(CSAudioCircularBuffer *)self->_circularBuffer copySamplesFrom:from to:to];
  }

  return v7;
}

- (id)audioChunkToEndFrom:(unint64_t)from channelIdx:(unint64_t)idx
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7916;
  v12 = __Block_byref_object_dispose__7917;
  v13 = 0;
  streamHandleQueue = self->_streamHandleQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CSAudioProvider_audioChunkToEndFrom_channelIdx___block_invoke;
  v7[3] = &unk_1E865B268;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = from;
  v7[7] = idx;
  dispatch_async_and_wait(streamHandleQueue, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void *__50__CSAudioProvider_audioChunkToEndFrom_channelIdx___block_invoke(void *a1)
{
  v2 = a1[4];
  result = v2[21];
  if (result)
  {
    v4 = [v2 _audioChunkFrom:a1[6] to:objc_msgSend(result channelIdx:{"sampleCount"), a1[7]}];
    v5 = *(a1[5] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (id)audioChunkToEndFrom:(unint64_t)from
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7916;
  v11 = __Block_byref_object_dispose__7917;
  v12 = 0;
  streamHandleQueue = self->_streamHandleQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CSAudioProvider_audioChunkToEndFrom___block_invoke;
  block[3] = &unk_1E865C920;
  block[4] = self;
  block[5] = &v7;
  block[6] = from;
  dispatch_async_and_wait(streamHandleQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void *__39__CSAudioProvider_audioChunkToEndFrom___block_invoke(void *a1)
{
  v2 = a1[4];
  result = v2[21];
  if (result)
  {
    v4 = [v2 _audioChunkFrom:a1[6] to:{objc_msgSend(result, "sampleCount")}];
    v5 = *(a1[5] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (id)audioChunkFrom:(unint64_t)from to:(unint64_t)to channelIdx:(unint64_t)idx
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__7916;
  v13 = __Block_byref_object_dispose__7917;
  v14 = 0;
  streamHandleQueue = self->_streamHandleQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CSAudioProvider_audioChunkFrom_to_channelIdx___block_invoke;
  block[3] = &unk_1E865B240;
  block[4] = self;
  block[5] = &v9;
  block[6] = from;
  block[7] = to;
  block[8] = idx;
  dispatch_async_and_wait(streamHandleQueue, block);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void *__48__CSAudioProvider_audioChunkFrom_to_channelIdx___block_invoke(void *a1)
{
  result = a1[4];
  if (result[21])
  {
    v3 = [result _audioChunkFrom:a1[6] to:a1[7] channelIdx:a1[8]];
    v4 = *(a1[5] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (id)audioChunkFrom:(unint64_t)from to:(unint64_t)to
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7916;
  v12 = __Block_byref_object_dispose__7917;
  v13 = 0;
  recordQueue = self->_recordQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__CSAudioProvider_audioChunkFrom_to___block_invoke;
  v7[3] = &unk_1E865B268;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = from;
  v7[7] = to;
  dispatch_async_and_wait(recordQueue, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __37__CSAudioProvider_audioChunkFrom_to___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _audioChunkFrom:*(a1 + 48) to:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)_stopAudioStream:(id)stream option:(id)option completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  optionCopy = option;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_recordQueue);
  v11 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    uUID = [(CSAudioProvider *)self UUID];
    *buf = 136315394;
    v25 = "[CSAudioProvider _stopAudioStream:option:completion:]";
    v26 = 2114;
    v27 = uUID;
    _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Waiting for recordingWillStartGroup before scheduling stopAudioStream", buf, 0x16u);
  }

  recordingWillStartGroup = self->_recordingWillStartGroup;
  recordQueue = self->_recordQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke;
  v20[3] = &unk_1E865B218;
  v20[4] = self;
  v21 = streamCopy;
  v22 = optionCopy;
  v23 = completionCopy;
  v16 = optionCopy;
  v17 = completionCopy;
  v18 = streamCopy;
  dispatch_group_notify(recordingWillStartGroup, recordQueue, v20);

  v19 = *MEMORY[0x1E69E9840];
}

void __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke(id *a1)
{
  v118 = *MEMORY[0x1E69E9840];
  v2 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = v2;
    v5 = [v3 UUID];
    v6 = [a1[5] name];
    v7 = [a1[4] _streamStateName:*(a1[4] + 7)];
    *buf = 136315906;
    v111 = "[CSAudioProvider _stopAudioStream:option:completion:]_block_invoke";
    v112 = 2114;
    v113 = v5;
    v114 = 2114;
    v115 = v6;
    v116 = 2114;
    v117 = v7;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Scheduled stopAudioStream after waiting for recordingWillStartGroup - stopAudioStream %{public}@ with streamState : %{public}@", buf, 0x2Au);
  }

  v108[0] = MEMORY[0x1E69E9820];
  v108[1] = 3221225472;
  v108[2] = __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke_108;
  v108[3] = &unk_1E865CAB8;
  v109 = a1[7];
  v8 = MEMORY[0x1E12BA300](v108);
  v9 = [a1[6] holdRequest];

  if (v9)
  {
    v10 = [CSAudioStreamHolding alloc];
    v11 = [a1[6] holdRequest];
    v12 = -[CSAudioStreamHolding initWithName:clientIdentity:](v10, "initWithName:clientIdentity:", @"Requested at stop", [v11 clientIdentity]);

    v13 = a1[4];
    v14 = [a1[6] holdRequest];
    [v13 _holdAudioStreamWithHolder:v12 option:v14];
  }

  v15 = [a1[5] streamRequest];
  v16 = [v15 clientIdentity] == 1;

  if (v16)
  {
    v18 = a1[4];
    v17 = a1[5];
    v19 = *(v18 + 5);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke_2;
    block[3] = &unk_1E865C970;
    block[4] = v18;
    v107 = v17;
    dispatch_async(v19, block);
  }

  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v105 = 0;
  v20 = a1[4];
  v21 = *(v20 + 5);
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke_3;
  v99[3] = &unk_1E865CC08;
  v101 = &v102;
  v99[4] = v20;
  v100 = a1[5];
  dispatch_async_and_wait(v21, v99);
  v22 = a1[4];
  if (*(v22 + 7) != 5 || *(v103 + 24) != 1)
  {
    v93 = 0;
    v94 = &v93;
    v95 = 0x2020000000;
    v96 = 0;
    v28 = *(v22 + 5);
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke_2_115;
    v90[3] = &unk_1E865CC08;
    v92 = &v93;
    v90[4] = v22;
    v91 = a1[5];
    dispatch_async_and_wait(v28, v90);
    v29 = a1[5];
    if (v29 && (v94[3] & 1) == 0 && ([v29 isStreaming] & 1) == 0)
    {
      v50 = CSLogCategoryAudio;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = [a1[4] UUID];
        v52 = [a1[5] name];
        v53 = [a1[4] _streamStateName:*(a1[4] + 7)];
        *buf = 136315906;
        v111 = "[CSAudioProvider _stopAudioStream:option:completion:]_block_invoke_3";
        v112 = 2114;
        v113 = v51;
        v114 = 2114;
        v115 = v52;
        v116 = 2114;
        v117 = v53;
        _os_log_impl(&dword_1DDA4B000, v50, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Stream %{public}@ is not streaming on stream state : %{public}@, ignore the stopAudioStream request", buf, 0x2Au);
      }

      v54 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:961 userInfo:0];
      (v8)[2](v8, 1, v54);

      goto LABEL_47;
    }

    v30 = a1[4];
    v31 = *(v30 + 7);
    if (v31 > 2)
    {
      if ((v31 - 4) < 2)
      {
        v32 = CSLogCategoryAudio;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [a1[4] UUID];
          *buf = 136315394;
          v111 = "[CSAudioProvider _stopAudioStream:option:completion:]_block_invoke";
          v112 = 2114;
          v113 = v33;
          _os_log_impl(&dword_1DDA4B000, v32, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:requested stop audio stream while stopping, adding audio stream into stop pending", buf, 0x16u);
        }

        v35 = a1[4];
        v34 = a1[5];
        v36 = *(v35 + 5);
        v87[0] = MEMORY[0x1E69E9820];
        v87[1] = 3221225472;
        v87[2] = __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke_119;
        v87[3] = &unk_1E865C678;
        v87[4] = v35;
        v88 = v34;
        v89 = a1[7];
        dispatch_async_and_wait(v36, v87);

        goto LABEL_47;
      }

      if (v31 == 3)
      {
        v37 = *(v30 + 5);
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke_2_120;
        v85[3] = &unk_1E865C970;
        v85[4] = v30;
        v86 = a1[5];
        dispatch_async_and_wait(v37, v85);
        if ([a1[4] _shouldStopRecording])
        {
          v39 = a1[4];
          v38 = a1[5];
          v40 = *(v39 + 5);
          v82[0] = MEMORY[0x1E69E9820];
          v82[1] = 3221225472;
          v82[2] = __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke_3_121;
          v82[3] = &unk_1E865C678;
          v82[4] = v39;
          v83 = v38;
          v84 = a1[7];
          dispatch_async_and_wait(v40, v82);
          [a1[4] _scheduleDidStopRecordingDelegateWatchDog];
          v41 = [a1[4] audioRecorder];
          v42 = [a1[4] recordDeviceIndicator];
          v81 = 0;
          v43 = [v41 stopAudioStreamWithRecordDeviceIndicator:v42 error:&v81];
          v44 = v81;

          if (v43)
          {
            [a1[4] setStreamState:4];
            v45 = CSLogCategoryAudio;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = [a1[4] UUID];
              v47 = [a1[4] _streamStateName:*(a1[4] + 7)];
              *buf = 136315650;
              v111 = "[CSAudioProvider _stopAudioStream:option:completion:]_block_invoke_4";
              v112 = 2114;
              v113 = v46;
              v114 = 2114;
              v115 = v47;
              _os_log_impl(&dword_1DDA4B000, v45, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Stop all recordings, moving stream state to %{public}@", buf, 0x20u);
            }
          }

          else
          {
            v63 = CSLogCategoryAudio;
            if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
            {
              v76 = [a1[4] UUID];
              v77 = [v44 localizedDescription];
              *buf = 136315650;
              v111 = "[CSAudioProvider _stopAudioStream:option:completion:]_block_invoke";
              v112 = 2114;
              v113 = v76;
              v114 = 2114;
              v115 = v77;
              _os_log_fault_impl(&dword_1DDA4B000, v63, OS_LOG_TYPE_FAULT, "%s CSAudioProvider[%{public}@]:Failed to stop audioStream : %{public}@", buf, 0x20u);
            }

            [a1[4] _preEpilogueAudioStream];
            [a1[4] setStreamState:1];
            v65 = a1[4];
            v64 = a1[5];
            v66 = *(v65 + 5);
            v78[0] = MEMORY[0x1E69E9820];
            v78[1] = 3221225472;
            v78[2] = __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke_122;
            v78[3] = &unk_1E865C778;
            v78[4] = v65;
            v79 = v64;
            v80 = v44;
            dispatch_async_and_wait(v66, v78);
            [a1[4] _postEpilogueAudioStream];
          }
        }

        else
        {
          v55 = [a1[5] streamRequest];
          v56 = [v55 requestListeningMicIndicatorLock];

          if (v56)
          {
            v57 = a1[4];
            v58 = [a1[5] streamRequest];
            [v57 _forceReleaseListeningMicIndicatorLockFrom:{objc_msgSend(v58, "clientIdentity")}];
          }

          v59 = [a1[5] streamRequest];
          v60 = [v59 requestRecordModeLock];

          if (v60)
          {
            v61 = a1[4];
            v62 = [a1[5] streamRequest];
            [v61 _forceReleaseRecordModeLockFrom:{objc_msgSend(v62, "clientIdentity")}];
          }

          v8[2](v8, 1, 0);
        }

        goto LABEL_47;
      }
    }

    else
    {
      switch(v31)
      {
        case 0:
          v48 = CSLogCategoryAudio;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
          {
            v74 = [a1[4] UUID];
            v75 = [a1[4] _streamStateName:*(a1[4] + 7)];
            *buf = 136315650;
            v111 = "[CSAudioProvider _stopAudioStream:option:completion:]_block_invoke";
            v112 = 2114;
            v113 = v74;
            v114 = 2114;
            v115 = v75;
            _os_log_fault_impl(&dword_1DDA4B000, v48, OS_LOG_TYPE_FAULT, "%s CSAudioProvider[%{public}@]:Cannot handle stop audio stream on : %{public}@", buf, 0x20u);
          }

          v49 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:952 userInfo:0];
          (v8)[2](v8, 0, v49);

          goto LABEL_47;
        case 1:
LABEL_20:
          v8[2](v8, 1, 0);
LABEL_47:

          _Block_object_dispose(&v93, 8);
          goto LABEL_48;
        case 2:
          if (!a1[5])
          {
            goto LABEL_20;
          }

          v68 = CSLogCategoryAudio;
          if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
          {
            v69 = [a1[4] UUID];
            v70 = [a1[4] _streamStateName:*(a1[4] + 7)];
            *buf = 136315650;
            v111 = "[CSAudioProvider _stopAudioStream:option:completion:]_block_invoke";
            v112 = 2114;
            v113 = v69;
            v114 = 2114;
            v115 = v70;
            _os_log_fault_impl(&dword_1DDA4B000, v68, OS_LOG_TYPE_FAULT, "%s CSAudioProvider[%{public}@]:Cannot handle stop audio stream on : %{public}@", buf, 0x20u);
          }

          v71 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:953 userInfo:0];
          (v8)[2](v8, 0, v71);
          v72 = 1519;
          v73 = "[CSAudioProvider _stopAudioStream:option:completion:]_block_invoke";
LABEL_52:

          __assert_rtn(v73, "CSAudioProvider.m", v72, "NO");
      }
    }

    v71 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:951 userInfo:0];
    (v8)[2](v8, 0, v71);
    v72 = 1625;
    v73 = "[CSAudioProvider _stopAudioStream:option:completion:]_block_invoke_2";
    goto LABEL_52;
  }

  v23 = CSLogCategoryAudio;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [a1[4] UUID];
    *buf = 136315394;
    v111 = "[CSAudioProvider _stopAudioStream:option:completion:]_block_invoke_4";
    v112 = 2114;
    v113 = v24;
    _os_log_impl(&dword_1DDA4B000, v23, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:requested stop audio stream while stoppingWithScheduledStart, take out audio stream from schedule", buf, 0x16u);
  }

  v26 = a1[4];
  v25 = a1[5];
  v27 = *(v26 + 5);
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke_114;
  v97[3] = &unk_1E865C970;
  v97[4] = v26;
  v98 = v25;
  dispatch_async_and_wait(v27, v97);
  v8[2](v8, 1, 0);

LABEL_48:
  _Block_object_dispose(&v102, 8);

  v67 = *MEMORY[0x1E69E9840];
}

uint64_t __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke_108(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) audioPreprocessor];
  v2 = [*(a1 + 40) startStreamOption];
  v3 = [v2 requestMHUUID];
  [v4 reportMetricsForSiriRequestWithUUID:v3];
}

void __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) startPendingOnStoppingStreams];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

void __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke_114(uint64_t a1)
{
  v2 = [*(a1 + 32) startPendingOnStoppingStreamToCompletionDict];
  v3 = [*(a1 + 40) name];
  v10 = [v2 objectForKey:v3];

  if (v10)
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:961 userInfo:0];
    v10[2](v10, 0, v4);

    v5 = [*(a1 + 32) startPendingOnStoppingStreamToCompletionDict];
    v6 = [*(a1 + 40) name];
    [v5 removeObjectForKey:v6];
  }

  v7 = [*(a1 + 32) startPendingOnStoppingStreams];
  [v7 removeObject:*(a1 + 40)];

  v8 = [*(a1 + 32) startPendingOnStoppingStreams];
  v9 = [v8 _cs_isHashTableEmpty];

  if (v9)
  {
    [*(a1 + 32) setStreamState:4];
  }
}

void __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke_2_115(uint64_t a1)
{
  v2 = [*(a1 + 32) streams];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

void __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke_119(uint64_t a1)
{
  v2 = [*(a1 + 32) streams];
  [v2 removeObject:*(a1 + 40)];

  v3 = +[CSAudioStreamActivityMonitor sharedInstance];
  v4 = [*(a1 + 32) streams];
  v5 = [*(a1 + 32) streamHolders];
  [v3 notifyActiveStreamsChanged:v4 streamHolders:v5 streamId:*(*(a1 + 32) + 216)];

  v6 = [*(a1 + 32) stopPendingStreams];
  [v6 addObject:*(a1 + 40)];

  if (*(a1 + 48))
  {
    v8 = [*(a1 + 32) pendingStopCompletions];
    v7 = MEMORY[0x1E12BA300](*(a1 + 48));
    [v8 addObject:v7];
  }
}

void __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke_2_120(uint64_t a1)
{
  v2 = [*(a1 + 32) streams];
  [v2 removeObject:*(a1 + 40)];

  v5 = +[CSAudioStreamActivityMonitor sharedInstance];
  v3 = [*(a1 + 32) streams];
  v4 = [*(a1 + 32) streamHolders];
  [v5 notifyActiveStreamsChanged:v3 streamHolders:v4 streamId:*(*(a1 + 32) + 216)];
}

void __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke_3_121(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(a1 + 32) streams];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        if (v7 && [*(*(&v17 + 1) + 8 * v6) isWeakStream])
        {
          v8 = [*(a1 + 32) stopPendingStreams];
          [v8 addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v9 = [*(a1 + 32) streams];
  [v9 removeAllObjects];

  v10 = +[CSAudioStreamActivityMonitor sharedInstance];
  v11 = [*(a1 + 32) streams];
  v12 = [*(a1 + 32) streamHolders];
  [v10 notifyActiveStreamsChanged:v11 streamHolders:v12 streamId:*(*(a1 + 32) + 216)];

  v13 = [*(a1 + 32) stopPendingStreams];
  [v13 addObject:*(a1 + 40)];

  if (*(a1 + 48))
  {
    v14 = [*(a1 + 32) pendingStopCompletions];
    v15 = MEMORY[0x1E12BA300](*(a1 + 48));
    [v14 addObject:v15];
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __54__CSAudioProvider__stopAudioStream_option_completion___block_invoke_122(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = [*(a1 + 32) stopPendingStreams];
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      v6 = 0;
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * v6);
        if (v7 && [v7 isWeakStream])
        {
          [*(a1 + 40) audioStreamProvider:*(a1 + 32) didStopStreamUnexpectedly:4];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  v8 = [*(a1 + 32) stopPendingStreams];
  [v8 removeAllObjects];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [*(a1 + 32) pendingStopCompletions];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(a1 + 48);
        (*(*(*(&v17 + 1) + 8 * v13++) + 16))();
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v11);
  }

  v15 = [*(a1 + 32) pendingStopCompletions];
  [v15 removeAllObjects];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)stopAudioStream:(id)stream option:(id)option completion:(id)completion
{
  streamCopy = stream;
  optionCopy = option;
  completionCopy = completion;
  recordQueue = self->_recordQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__CSAudioProvider_stopAudioStream_option_completion___block_invoke;
  v15[3] = &unk_1E865B218;
  v15[4] = self;
  v16 = streamCopy;
  v17 = optionCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = optionCopy;
  v14 = streamCopy;
  dispatch_async(recordQueue, v15);
}

- (void)_handleDidStopAudioStreamWithReason:(int64_t)reason
{
  v38[2] = *MEMORY[0x1E69E9840];
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uUID = [(CSAudioProvider *)self UUID];
    v8 = [(CSAudioProvider *)self _streamStateName:self->_streamState];
    *buf = 136315906;
    v34 = "[CSAudioProvider _handleDidStopAudioStreamWithReason:]";
    v35 = 2114;
    v36 = uUID;
    v37 = 1026;
    LODWORD(v38[0]) = reason;
    WORD2(v38[0]) = 2114;
    *(v38 + 6) = v8;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Received didStopRecording reason : %{public}d, streamState : %{public}@", buf, 0x26u);
  }

  [(CSAudioProvider *)self _forceReleaseAllListeningMicIndicatorLocks];
  [(CSAudioProvider *)self _forceReleaseAllRecordModeLocks];
  [(CSAudioProvider *)self _cancelAudioPacketWatchDog];
  [(CSAudioProvider *)self _clearDidStopRecordingDelegateWatchDog];
  [(CSAudioProvider *)self _preEpilogueAudioStream];
  v9 = +[CSSecureSessionHandler sharedHandler];
  [v9 releaseSecureSessionAssertionWithUUID:self->_secureSessionAssertionUUID];

  streamState = self->_streamState;
  if (streamState - 4 < 2)
  {
    v13 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v34 = "[CSAudioProvider _handleDidStopAudioStreamWithReason:]";
      _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s Calling unexpected didStop for all weak streams", buf, 0xCu);
    }

    streamHandleQueue = self->_streamHandleQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__CSAudioProvider__handleDidStopAudioStreamWithReason___block_invoke;
    block[3] = &unk_1E865CB68;
    block[4] = self;
    v12 = block;
    goto LABEL_10;
  }

  if (streamState != 2)
  {
    if (streamState != 3)
    {
LABEL_11:
      [(CSAudioProvider *)self setStreamState:1];
      [(CSAudioProvider *)self _postEpilogueAudioStream];
      v14 = self->_streamHandleQueue;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __55__CSAudioProvider__handleDidStopAudioStreamWithReason___block_invoke_2;
      v29[3] = &unk_1E865B1F0;
      v29[4] = self;
      v29[5] = streamState;
      v29[6] = reason;
      dispatch_async_and_wait(v14, v29);
      goto LABEL_12;
    }

    streamHandleQueue = self->_streamHandleQueue;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __55__CSAudioProvider__handleDidStopAudioStreamWithReason___block_invoke_107;
    v30[3] = &unk_1E865CC58;
    v30[4] = self;
    v30[5] = reason;
    v12 = v30;
LABEL_10:
    dispatch_async_and_wait(streamHandleQueue, v12);
    goto LABEL_11;
  }

  shouldUseRemoteRecorder = [(CSAudioRecordDeviceIndicator *)self->_recordDeviceIndicator shouldUseRemoteRecorder];
  if (reason != 2 || !shouldUseRemoteRecorder)
  {
    [(CSAudioProvider *)self _clearDidStartRecordingDelegateWatchDog];
    v21 = self->_streamHandleQueue;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __55__CSAudioProvider__handleDidStopAudioStreamWithReason___block_invoke_106;
    v31[3] = &unk_1E865CB68;
    v31[4] = self;
    dispatch_async_and_wait(v21, v31);
    v22 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      uUID2 = [(CSAudioProvider *)self UUID];
      *buf = 136315394;
      v34 = "[CSAudioProvider _handleDidStopAudioStreamWithReason:]";
      v35 = 2114;
      v36 = uUID2;
      _os_log_impl(&dword_1DDA4B000, v23, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Leaving dispatch group for recordingWillStartGroup", buf, 0x16u);
    }

    dispatch_group_leave(self->_recordingWillStartGroup);
    v25 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_FAULT))
    {
      v26 = v25;
      uUID3 = [(CSAudioProvider *)self UUID];
      v28 = [(CSAudioProvider *)self _streamStateName:self->_streamState];
      *buf = 136315650;
      v34 = "[CSAudioProvider _handleDidStopAudioStreamWithReason:]";
      v35 = 2114;
      v36 = uUID3;
      v37 = 2114;
      v38[0] = v28;
      _os_log_fault_impl(&dword_1DDA4B000, v26, OS_LOG_TYPE_FAULT, "%s CSAudioProvider[%{public}@]:Received didStopRecording while %{public}@", buf, 0x20u);
    }

    goto LABEL_11;
  }

  v17 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_FAULT))
  {
    v18 = v17;
    uUID4 = [(CSAudioProvider *)self UUID];
    v20 = [(CSAudioProvider *)self _streamStateName:self->_streamState];
    *buf = 136315650;
    v34 = "[CSAudioProvider _handleDidStopAudioStreamWithReason:]";
    v35 = 2114;
    v36 = uUID4;
    v37 = 2114;
    v38[0] = v20;
    _os_log_fault_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_FAULT, "%s CSAudioProvider[%{public}@]:Received didStopRecording while %{public}@", buf, 0x20u);
  }

LABEL_12:
  v15 = *MEMORY[0x1E69E9840];
}

void __55__CSAudioProvider__handleDidStopAudioStreamWithReason___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [*(a1 + 32) stopPendingStreams];
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * v6);
        if (v7 && [*(*(&v20 + 1) + 8 * v6) isWeakStream])
        {
          [v7 audioStreamProvider:*(a1 + 32) didStopStreamUnexpectedly:4];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  v8 = [*(a1 + 32) stopPendingStreams];
  [v8 removeAllObjects];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [*(a1 + 32) pendingStopCompletions];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v16 + 1) + 8 * v13++) + 16))();
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }

  v14 = [*(a1 + 32) pendingStopCompletions];
  [v14 removeAllObjects];

  v15 = *MEMORY[0x1E69E9840];
}

void __55__CSAudioProvider__handleDidStopAudioStreamWithReason___block_invoke_106(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) startPendingStreams];
  [v2 removeAllObjects];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [*(a1 + 32) pendingStartCompletions];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:956 userInfo:0];
        (*(v8 + 16))(v8, 0, v9);

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [*(a1 + 32) pendingStartCompletions];
  [v10 removeAllObjects];

  v11 = *MEMORY[0x1E69E9840];
}

void __55__CSAudioProvider__handleDidStopAudioStreamWithReason___block_invoke_107(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) streams];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v12 + 1) + 8 * v6++) audioStreamProvider:*(a1 + 32) didStopStreamUnexpectedly:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 32) streams];
  [v7 removeAllObjects];

  v8 = +[CSAudioStreamActivityMonitor sharedInstance];
  v9 = [*(a1 + 32) streams];
  v10 = [*(a1 + 32) streamHolders];
  [v8 notifyActiveStreamsChanged:v9 streamHolders:v10 streamId:*(*(a1 + 32) + 216)];

  v11 = *MEMORY[0x1E69E9840];
}

void __55__CSAudioProvider__handleDidStopAudioStreamWithReason___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _shouldHandleStartPendingOnStopping:*(a1 + 40) withStopReason:*(a1 + 48)])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v2 = [*(a1 + 32) startPendingOnStoppingStreams];
    v3 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v22;
      do
      {
        v6 = 0;
        do
        {
          if (*v22 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v21 + 1) + 8 * v6);
          if (v7)
          {
            v8 = [*(a1 + 32) startPendingOnStoppingStreamToCompletionDict];
            v9 = [v7 name];
            v10 = [v8 objectForKey:v9];

            v11 = [*(a1 + 32) startPendingOnStoppingStreamToCompletionDict];
            v12 = [v7 name];
            [v11 removeObjectForKey:v12];

            v13 = *(a1 + 32);
            v14 = *(v13 + 24);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __55__CSAudioProvider__handleDidStopAudioStreamWithReason___block_invoke_3;
            block[3] = &unk_1E865C678;
            block[4] = v13;
            block[5] = v7;
            v20 = v10;
            v15 = v10;
            dispatch_async(v14, block);
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v4);
    }

    v16 = [*(a1 + 32) startPendingOnStoppingStreams];
    [v16 removeAllObjects];

    v17 = [*(a1 + 32) startPendingOnStoppingStreamToCompletionDict];
    [v17 removeAllObjects];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __55__CSAudioProvider__handleDidStopAudioStreamWithReason___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [v3 startStreamOption];
  [v2 _startAudioStream:v3 option:v4 completion:a1[6]];
}

- (void)_handleDidStartAudioStreamWithResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  v28 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!resultCopy)
  {
    [(CSAudioProvider *)self _cancelAudioPacketWatchDog];
    [(CSAudioProvider *)self _forceReleaseAllListeningMicIndicatorLocks];
    [(CSAudioProvider *)self _forceReleaseAllRecordModeLocks];
    v7 = +[CSSecureSessionHandler sharedHandler];
    [v7 releaseSecureSessionAssertionWithUUID:self->_secureSessionAssertionUUID];
  }

  [(CSAudioProvider *)self _clearDidStartRecordingDelegateWatchDog];
  if (self->_streamState == 2)
  {
    streamHandleQueue = self->_streamHandleQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__CSAudioProvider__handleDidStartAudioStreamWithResult_error___block_invoke;
    block[3] = &unk_1E865B970;
    v21 = resultCopy;
    block[4] = self;
    v20 = errorCopy;
    dispatch_async_and_wait(streamHandleQueue, block);
    if (resultCopy)
    {
      [(CSAudioProvider *)self setStreamState:3];
    }

    else
    {
      [(CSAudioProvider *)self setStreamState:1];
      v13 = self->_streamHandleQueue;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __62__CSAudioProvider__handleDidStartAudioStreamWithResult_error___block_invoke_2;
      v18[3] = &unk_1E865CB68;
      v18[4] = self;
      dispatch_async(v13, v18);
      [(CSAudioProvider *)self _releaseRecordingTransactionIfNeeded];
    }

    v14 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      uUID = [(CSAudioProvider *)self UUID];
      *buf = 136315394;
      v23 = "[CSAudioProvider _handleDidStartAudioStreamWithResult:error:]";
      v24 = 2114;
      v25 = uUID;
      _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Leaving dispatch group for recordingWillStartGroup", buf, 0x16u);
    }

    dispatch_group_leave(self->_recordingWillStartGroup);
  }

  else
  {
    v9 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_FAULT))
    {
      v10 = v9;
      uUID2 = [(CSAudioProvider *)self UUID];
      v12 = [(CSAudioProvider *)self _streamStateName:self->_streamState];
      *buf = 136315650;
      v23 = "[CSAudioProvider _handleDidStartAudioStreamWithResult:error:]";
      v24 = 2114;
      v25 = uUID2;
      v26 = 2114;
      v27 = v12;
      _os_log_fault_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_FAULT, "%s CSAudioProvider[%{public}@]:Received didStartRecording while %{public}@", buf, 0x20u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __62__CSAudioProvider__handleDidStartAudioStreamWithResult_error___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v2 = [*(a1 + 32) startPendingStreams];
    v3 = [v2 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v27;
      do
      {
        v6 = 0;
        do
        {
          if (*v27 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v26 + 1) + 8 * v6);
          v8 = [*(a1 + 32) streams];
          [v8 addObject:v7];

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v4);
    }

    v9 = +[CSAudioStreamActivityMonitor sharedInstance];
    v10 = [*(a1 + 32) streams];
    v11 = [*(a1 + 32) streamHolders];
    [v9 notifyActiveStreamsChanged:v10 streamHolders:v11 streamId:*(*(a1 + 32) + 216)];
  }

  v12 = [*(a1 + 32) startPendingStreams];
  [v12 removeAllObjects];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [*(a1 + 32) pendingStartCompletions];
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(a1 + 48);
        v19 = *(a1 + 40);
        (*(*(*(&v22 + 1) + 8 * v17++) + 16))();
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  v20 = [*(a1 + 32) pendingStartCompletions];
  [v20 removeAllObjects];

  v21 = *MEMORY[0x1E69E9840];
}

void __62__CSAudioProvider__handleDidStartAudioStreamWithResult_error___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 192);
  *(v3 + 192) = 0;

  objc_autoreleasePoolPop(v2);
}

- (void)_forceReleaseRecordModeLockFrom:(unint64_t)from
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[CSAudioProvider _forceReleaseRecordModeLockFrom:]";
    v29 = 1024;
    LODWORD(v30) = from;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Releasing recordModeLock from : %d", buf, 0x12u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  recordModeLocks = [(CSAudioProvider *)self recordModeLocks];
  allKeys = [recordModeLocks allKeys];

  v8 = [allKeys countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v24;
    *&v9 = 136315394;
    v22 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        recordModeLocks2 = [(CSAudioProvider *)self recordModeLocks];
        v15 = [recordModeLocks2 objectForKey:v13];
        clientIdentity = [v15 clientIdentity];

        if (clientIdentity == from)
        {
          v17 = CSLogCategoryAudio;
          if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v22;
            v28 = "[CSAudioProvider _forceReleaseRecordModeLockFrom:]";
            v29 = 2112;
            v30 = v13;
            _os_log_impl(&dword_1DDA4B000, v17, OS_LOG_TYPE_DEFAULT, "%s Releasing recordModeLock lock %@", buf, 0x16u);
          }

          recordModeLocks3 = [(CSAudioProvider *)self recordModeLocks];
          [recordModeLocks3 removeObjectForKey:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [allKeys countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v10);
  }

  recordModeLocks4 = [(CSAudioProvider *)self recordModeLocks];
  v20 = [recordModeLocks4 count];

  if (!v20)
  {
    [(CSAudioProvider *)self _switchToListeningMode];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_releaseRecordModeLock:(id)lock
{
  v16 = *MEMORY[0x1E69E9840];
  lockCopy = lock;
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[CSAudioProvider _releaseRecordModeLock:]";
    v14 = 2112;
    v15 = lockCopy;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Releasing recordModeLock lock UUID = %@", &v12, 0x16u);
  }

  if (lockCopy)
  {
    recordModeLocks = [(CSAudioProvider *)self recordModeLocks];
    v7 = [recordModeLocks objectForKey:lockCopy];

    if (v7)
    {
      recordModeLocks2 = [(CSAudioProvider *)self recordModeLocks];
      [recordModeLocks2 removeObjectForKey:lockCopy];
    }
  }

  recordModeLocks3 = [(CSAudioProvider *)self recordModeLocks];
  v10 = [recordModeLocks3 count];

  if (!v10)
  {
    [(CSAudioProvider *)self _switchToListeningMode];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_acquireRecordModeLockFrom:(unint64_t)from
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[CSAudioProvider _acquireRecordModeLockFrom:]";
    v13 = 1024;
    fromCopy = from;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Acquiring recordModeLock from : %d", &v11, 0x12u);
  }

  v6 = [(CSAudioProviderRequestLock *)[CSAudioProviderRecordModeLock alloc] initWithClientIdentity:from];
  recordModeLocks = [(CSAudioProvider *)self recordModeLocks];
  uUIDString = [(CSAudioProviderRequestLock *)v6 UUIDString];
  [recordModeLocks setObject:v6 forKey:uUIDString];

  [(CSAudioProvider *)self _switchToRecordingMode];
  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_forceReleaseListeningMicIndicatorLockFrom:(unint64_t)from
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "[CSAudioProvider _forceReleaseListeningMicIndicatorLockFrom:]";
    v27 = 1024;
    LODWORD(v28) = from;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Releasing listening mic indicator lock from : %d", buf, 0x12u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  listeningMicIndicatorLocks = [(CSAudioProvider *)self listeningMicIndicatorLocks];
  allKeys = [listeningMicIndicatorLocks allKeys];

  v8 = [allKeys countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v22;
    *&v9 = 136315394;
    v20 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        listeningMicIndicatorLocks2 = [(CSAudioProvider *)self listeningMicIndicatorLocks];
        v15 = [listeningMicIndicatorLocks2 objectForKey:v13];
        clientIdentity = [v15 clientIdentity];

        if (clientIdentity == from)
        {
          v17 = CSLogCategoryAudio;
          if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v20;
            v26 = "[CSAudioProvider _forceReleaseListeningMicIndicatorLockFrom:]";
            v27 = 2112;
            v28 = v13;
            _os_log_impl(&dword_1DDA4B000, v17, OS_LOG_TYPE_DEFAULT, "%s Releasing listening mic indicator lock %@", buf, 0x16u);
          }

          listeningMicIndicatorLocks3 = [(CSAudioProvider *)self listeningMicIndicatorLocks];
          [listeningMicIndicatorLocks3 removeObjectForKey:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [allKeys countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v10);
  }

  [(CSAudioProvider *)self _clearListeningMicIndicatorPropertyIfNeeded];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)_releaseListeningMicIndicatorLockFrom:(unint64_t)from
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[CSAudioProvider _releaseListeningMicIndicatorLockFrom:]";
    *&buf[12] = 1024;
    *&buf[14] = from;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Releasing listening mic indicator lock from = %d", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v11 = __Block_byref_object_copy__7916;
  v12 = __Block_byref_object_dispose__7917;
  v13 = 0;
  listeningMicIndicatorLocks = [(CSAudioProvider *)self listeningMicIndicatorLocks];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__CSAudioProvider__releaseListeningMicIndicatorLockFrom___block_invoke;
  v9[3] = &unk_1E865B1C8;
  v9[4] = buf;
  v9[5] = from;
  [listeningMicIndicatorLocks enumerateKeysAndObjectsUsingBlock:v9];

  if (*(*&buf[8] + 40))
  {
    listeningMicIndicatorLocks2 = [(CSAudioProvider *)self listeningMicIndicatorLocks];
    [listeningMicIndicatorLocks2 removeObjectForKey:*(*&buf[8] + 40)];
  }

  [(CSAudioProvider *)self _clearListeningMicIndicatorPropertyIfNeeded];
  _Block_object_dispose(buf, 8);

  v8 = *MEMORY[0x1E69E9840];
}

void __57__CSAudioProvider__releaseListeningMicIndicatorLockFrom___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 clientIdentity] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_releaseListeningMicIndicatorLock:(id)lock
{
  v14 = *MEMORY[0x1E69E9840];
  lockCopy = lock;
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[CSAudioProvider _releaseListeningMicIndicatorLock:]";
    v12 = 2112;
    v13 = lockCopy;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Releasing listening mic indicator lock UUID = %@", &v10, 0x16u);
  }

  if (lockCopy)
  {
    listeningMicIndicatorLocks = [(CSAudioProvider *)self listeningMicIndicatorLocks];
    v7 = [listeningMicIndicatorLocks objectForKey:lockCopy];

    if (v7)
    {
      listeningMicIndicatorLocks2 = [(CSAudioProvider *)self listeningMicIndicatorLocks];
      [listeningMicIndicatorLocks2 removeObjectForKey:lockCopy];
    }
  }

  [(CSAudioProvider *)self _clearListeningMicIndicatorPropertyIfNeeded];

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_acquireListeningMicIndicatorLockFrom:(unint64_t)from
{
  fromCopy = from;
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(CSAudioProviderRequestLock *)[CSAudioProviderListeningMicIndicatorLock alloc] initWithClientIdentity:from];
  listeningMicIndicatorLocks = [(CSAudioProvider *)self listeningMicIndicatorLocks];
  uUIDString = [(CSAudioProviderRequestLock *)v5 UUIDString];
  [listeningMicIndicatorLocks setObject:v5 forKey:uUIDString];

  v8 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    uUIDString2 = [(CSAudioProviderRequestLock *)v5 UUIDString];
    v13 = 136315650;
    v14 = "[CSAudioProvider _acquireListeningMicIndicatorLockFrom:]";
    v15 = 1024;
    v16 = fromCopy;
    v17 = 2112;
    v18 = uUIDString2;
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Acquiring listening mic indicator lock from : %d %@", &v13, 0x1Cu);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_startAudioStream:(id)stream option:(id)option completion:(id)completion
{
  v188 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  optionCopy = option;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_recordQueue);
  v176[0] = MEMORY[0x1E69E9820];
  v176[1] = 3221225472;
  v176[2] = __55__CSAudioProvider__startAudioStream_option_completion___block_invoke;
  v176[3] = &unk_1E865B128;
  v11 = streamCopy;
  v177 = v11;
  selfCopy = self;
  v12 = completionCopy;
  v179 = v12;
  v13 = MEMORY[0x1E12BA300](v176);
  if (self->_streamState)
  {
    if (([optionCopy disableBoostForDoAP] & 1) != 0 || -[CSAudioProvider audioStreamType](self, "audioStreamType") != 1)
    {
      v17 = 0;
    }

    else
    {
      audioRecorder = [(CSAudioProvider *)self audioRecorder];
      recordDeviceIndicator = [(CSAudioProvider *)self recordDeviceIndicator];
      v16 = [audioRecorder recordRouteWithRecordDeviceIndicator:recordDeviceIndicator];

      v17 = [v16 isEqualToString:*MEMORY[0x1E69583B0]];
    }

    [v11 setNeedsBoost12dB:v17];
    streamHandleQueue = self->_streamHandleQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_86;
    block[3] = &unk_1E865B178;
    v19 = v11;
    v174 = v19;
    v175 = v17;
    dispatch_async(streamHandleQueue, block);
    if (self->_streamState == 4)
    {
      [(CSAudioProvider *)self setStreamState:5];
      v20 = self->_streamHandleQueue;
      v170[0] = MEMORY[0x1E69E9820];
      v170[1] = 3221225472;
      v170[2] = __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_2;
      v170[3] = &unk_1E865C678;
      v170[4] = self;
      v171 = v19;
      v172 = v12;
      dispatch_async_and_wait(v20, v170);

      v21 = v171;
LABEL_104:

LABEL_105:
      v23 = v174;
      goto LABEL_106;
    }

    if (self->_audioSystemRecovering)
    {
      v24 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        v81 = v24;
        uUID = [(CSAudioProvider *)self UUID];
        *buf = 136315394;
        v181 = "[CSAudioProvider _startAudioStream:option:completion:]";
        v182 = 2114;
        v183 = uUID;
        _os_log_error_impl(&dword_1DDA4B000, v81, OS_LOG_TYPE_ERROR, "%s CSAudioProvider[%{public}@]:Cannot startAudioStream, audio system is recovering", buf, 0x16u);
      }

      v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:957 userInfo:0];
      (v13)[2](v13, 0, v25);

      goto LABEL_105;
    }

    if (([optionCopy requestHistoricalAudioDataWithHostTime] & 1) != 0 || objc_msgSend(optionCopy, "requestHistoricalAudioDataSampleCount"))
    {
      historicalBufferRequestStreams = [(CSAudioProvider *)self historicalBufferRequestStreams];
      v27 = [historicalBufferRequestStreams containsObject:v19];

      if ((v27 & 1) == 0)
      {
        historicalBufferRequestStreams2 = [(CSAudioProvider *)self historicalBufferRequestStreams];
        [historicalBufferRequestStreams2 addObject:v19];
      }
    }

    v29 = self->_streamHandleQueue;
    v168[0] = MEMORY[0x1E69E9820];
    v168[1] = 3221225472;
    v168[2] = __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_87;
    v168[3] = &unk_1E865C970;
    v168[4] = self;
    v30 = v19;
    v169 = v30;
    dispatch_async_and_wait(v29, v168);
    streamState = self->_streamState;
    if (streamState == 1)
    {
      streamRequest = [v30 streamRequest];
      requestListeningMicIndicatorLock = [streamRequest requestListeningMicIndicatorLock];

      if (requestListeningMicIndicatorLock)
      {
        streamRequest2 = [v30 streamRequest];
        v48 = -[CSAudioProvider _acquireListeningMicIndicatorLockFrom:](self, "_acquireListeningMicIndicatorLockFrom:", [streamRequest2 clientIdentity]);
      }

      streamRequest3 = [v30 streamRequest];
      requestRecordModeLock = [streamRequest3 requestRecordModeLock];

      if (requestRecordModeLock)
      {
        streamRequest4 = [v30 streamRequest];
        v52 = -[CSAudioProvider _acquireRecordModeLockFrom:](self, "_acquireRecordModeLockFrom:", [streamRequest4 clientIdentity]);
      }

      if ([(CSAudioProvider *)self _setListeningMicIndicatorPropertyIfNeeded])
      {
        type = [(CSAudioRecordContext *)self->_lastAudioRecorderContext type];
        v131 = type == 6;
        if (type == 6 && !+[CSUtils isLocalVoiceTriggerAvailable])
        {
          audioRecorder = self->_audioRecorder;
          recordDeviceIndicator2 = [(CSAudioProvider *)self recordDeviceIndicator];
          v54 = [(CSAudioRecorder *)audioRecorder fetchGibraltarVoiceTriggerInfoWithRecordDeviceIndicator:recordDeviceIndicator2];
        }

        else
        {
          v54 = 0;
        }

        [(CSAudioProvider *)self _holdRecordingTransactionIfNeeded];
        v85 = +[CSConfig inputRecordingNumberOfChannels];
        if (self->_audioStreamType == 1)
        {
          if (CSIsHorseman_onceToken != -1)
          {
            dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
          }

          if (CSIsHorseman_isHorseman)
          {
            v85 = 1;
          }
        }

        audioRecorder2 = [(CSAudioProvider *)self audioRecorder];
        v87 = [audioRecorder2 getPlaybackRouteForStreamID:{-[CSAudioProvider audioStreamHandleId](self, "audioStreamHandleId")}];

        v88 = self->_streamHandleQueue;
        v156[0] = MEMORY[0x1E69E9820];
        v156[1] = 3221225472;
        v156[2] = __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_2_91;
        v156[3] = &unk_1E865B1A0;
        v156[4] = self;
        v160 = v85;
        v133 = v87;
        v157 = v133;
        v130 = v30;
        v158 = v130;
        v161 = v131;
        v132 = v54;
        v159 = v132;
        dispatch_async_and_wait(v88, v156);
        estimatedStartHostTime = [optionCopy estimatedStartHostTime];
        if (estimatedStartHostTime)
        {
          estimatedStartHostTime = [optionCopy estimatedStartHostTime];
        }

        self->_estimatedStartHostTime = estimatedStartHostTime;
        if ([optionCopy allowRecordWhileBeep] && objc_msgSend(optionCopy, "startAlertBehavior") == 2)
        {
          v90 = CSLogCategoryAudio;
          if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
          {
            v91 = v90;
            uUID2 = [(CSAudioProvider *)self UUID];
            *buf = 136315394;
            v181 = "[CSAudioProvider _startAudioStream:option:completion:]";
            v182 = 2114;
            v183 = uUID2;
            _os_log_impl(&dword_1DDA4B000, v91, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Skipping start alert to start recording", buf, 0x16u);
          }

          [optionCopy setStartAlertBehavior:0];
          v129 = 1;
        }

        else
        {
          v129 = 0;
        }

        uUID3 = [MEMORY[0x1E696AFB0] UUID];
        secureSessionAssertionUUID = self->_secureSessionAssertionUUID;
        self->_secureSessionAssertionUUID = uUID3;

        v95 = +[CSSecureSessionHandler sharedHandler];
        [v95 acquireSecureSessionAssertionWithUUID:self->_secureSessionAssertionUUID];

        self->_isWaitingForFirstAudioPacket = 1;
        startRecordingHostTime = [optionCopy startRecordingHostTime];
        self->_startRecordingHostTime = startRecordingHostTime;
        if (!startRecordingHostTime)
        {
          self->_startRecordingHostTime = mach_absolute_time();
        }

        audioRecorder3 = [(CSAudioProvider *)self audioRecorder];
        recordDeviceIndicator3 = [(CSAudioProvider *)self recordDeviceIndicator];
        v155 = 0;
        v99 = [audioRecorder3 startAudioStreamWithOption:optionCopy recordDeviceIndicator:recordDeviceIndicator3 error:&v155];
        v100 = v155;

        if (v99)
        {
          if (v129)
          {
            audioRecorder4 = [(CSAudioProvider *)self audioRecorder];
            [audioRecorder4 playAlertSoundForType:1 overrideMode:2];
          }

          if (!+[CSUtils isExclaveHardware]|| (v102 = [(CSAudioProvider *)self audioStreamId], v102 != *MEMORY[0x1E6958390]))
          {
            [(CSAudioProvider *)self _scheduleAudioPacketWatchDog];
          }

          [(CSAudioProvider *)self _scheduleDidStartRecordingDelegateWatchDog];
          [(CSAudioProvider *)self setStreamState:2];
          [(CSAudioProvider *)self _resetCircularBufferStartTime];
          v103 = self->_streamHandleQueue;
          v153[0] = MEMORY[0x1E69E9820];
          v153[1] = 3221225472;
          v153[2] = __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_94;
          v153[3] = &unk_1E865C970;
          v153[4] = self;
          v154 = optionCopy;
          dispatch_async_and_wait(v103, v153);
          v104 = CSLogCategoryAudio;
          if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
          {
            v105 = v104;
            uUID4 = [(CSAudioProvider *)self UUID];
            *buf = 136315394;
            v181 = "[CSAudioProvider _startAudioStream:option:completion:]";
            v182 = 2114;
            v183 = uUID4;
            _os_log_impl(&dword_1DDA4B000, v105, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Entering dispatch group for recordingWillStartGroup, stream is started", buf, 0x16u);
          }

          dispatch_group_enter(self->_recordingWillStartGroup);
          v107 = self->_streamHandleQueue;
          v150[0] = MEMORY[0x1E69E9820];
          v150[1] = 3221225472;
          v150[2] = __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_95;
          v150[3] = &unk_1E865C678;
          v150[4] = self;
          v151 = v130;
          v152 = v12;
          dispatch_async_and_wait(v107, v150);
        }

        else
        {
          v108 = +[CSSecureSessionHandler sharedHandler];
          [v108 releaseSecureSessionAssertionWithUUID:self->_secureSessionAssertionUUID];

          (v13)[2](v13, 0, v100);
        }

        v36 = v132;
        goto LABEL_102;
      }

      goto LABEL_61;
    }

    if (streamState != 3)
    {
      if (streamState != 2)
      {
        v55 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:955 userInfo:0];
LABEL_62:
        v80 = v55;
        v13[2](v13, 0, v55);

LABEL_103:
        v21 = v169;
        goto LABEL_104;
      }

      if ([(CSAudioProvider *)self _didPlayStartAlertSoundForSiri:optionCopy audioStream:v30])
      {
        v32 = self->_streamHandleQueue;
        v165[0] = MEMORY[0x1E69E9820];
        v165[1] = 3221225472;
        v165[2] = __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_2_88;
        v165[3] = &unk_1E865C678;
        v165[4] = self;
        v166 = v30;
        v167 = v12;
        dispatch_async_and_wait(v32, v165);
        self->_waitingForAlertFinish = 1;
        v33 = CSLogCategoryAudio;
        if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v33;
          uUID5 = [(CSAudioProvider *)self UUID];
          *buf = 136315394;
          v181 = "[CSAudioProvider _startAudioStream:option:completion:]";
          v182 = 2114;
          v183 = uUID5;
          _os_log_impl(&dword_1DDA4B000, v34, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Entering dispatch group for recordingWillStartGroup when CSAudioProviderStreamStateStarting", buf, 0x16u);
        }

        dispatch_group_enter(self->_recordingWillStartGroup);
        [(CSAudioProvider *)self _scheduleAlertFinishTimeout:0.400000006];

        v36 = v166;
LABEL_102:

        goto LABEL_103;
      }

      streamRequest5 = [v30 streamRequest];
      requestListeningMicIndicatorLock2 = [streamRequest5 requestListeningMicIndicatorLock];

      if (requestListeningMicIndicatorLock2)
      {
        streamRequest6 = [v30 streamRequest];
        v73 = -[CSAudioProvider _acquireListeningMicIndicatorLockFrom:](self, "_acquireListeningMicIndicatorLockFrom:", [streamRequest6 clientIdentity]);
      }

      streamRequest7 = [v30 streamRequest];
      requestRecordModeLock2 = [streamRequest7 requestRecordModeLock];

      if (requestRecordModeLock2)
      {
        streamRequest8 = [v30 streamRequest];
        v77 = -[CSAudioProvider _acquireRecordModeLockFrom:](self, "_acquireRecordModeLockFrom:", [streamRequest8 clientIdentity]);
      }

      if ([(CSAudioProvider *)self _setListeningMicIndicatorPropertyIfNeeded])
      {
        if ([(CSAudioProvider *)self circularBufferStartHostTime])
        {
          if ([optionCopy requestHistoricalAudioDataWithHostTime])
          {
            startRecordingHostTime2 = [optionCopy startRecordingHostTime];
          }

          else
          {
            startRecordingHostTime2 = mach_absolute_time();
          }

          v114 = startRecordingHostTime2;
          if (startRecordingHostTime2 >= [(CSAudioProvider *)self circularBufferStartHostTime])
          {
            circularBufferStartHostTime = [(CSAudioProvider *)self circularBufferStartHostTime];
            circularBufferStartSampleCount = [(CSAudioProvider *)self circularBufferStartSampleCount];
            +[CSConfig inputRecordingSampleRate];
            v121 = [CSFTimeUtils sampleCountFromHostTime:v114 anchorHostTime:circularBufferStartHostTime anchorSampleCount:circularBufferStartSampleCount sampleRate:?];
            [v30 updateAudioStreamStartTimeInSampleCount:v121];
            [v30 setScheduledFutureSample:1];
            v122 = CSLogCategoryAudio;
            if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
            {
              v123 = v122;
              uUID6 = [(CSAudioProvider *)self UUID];
              *buf = 136315906;
              v181 = "[CSAudioProvider _startAudioStream:option:completion:]";
              v182 = 2114;
              v183 = uUID6;
              v184 = 2050;
              v185 = v114;
              v186 = 2050;
              v187 = v121;
              _os_log_impl(&dword_1DDA4B000, v123, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Requested startHostTime = %{public}llu, _clientStartSampleCount = %{public}tu", buf, 0x2Au);
            }
          }

          else
          {
            v115 = CSLogCategoryAudio;
            if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
            {
              v116 = v115;
              uUID7 = [(CSAudioProvider *)self UUID];
              name = [v30 name];
              *buf = 136315650;
              v181 = "[CSAudioProvider _startAudioStream:option:completion:]";
              v182 = 2114;
              v183 = uUID7;
              v184 = 2114;
              v185 = name;
              _os_log_impl(&dword_1DDA4B000, v116, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:%{public}@ is requesting earlier audio than asked, we can't deliver earlier audio", buf, 0x20u);
            }
          }
        }

        v125 = self->_streamHandleQueue;
        v162[0] = MEMORY[0x1E69E9820];
        v162[1] = 3221225472;
        v162[2] = __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_90;
        v162[3] = &unk_1E865C678;
        v162[4] = self;
        v163 = v30;
        v164 = v12;
        dispatch_async_and_wait(v125, v162);

        v36 = v163;
        goto LABEL_102;
      }

LABEL_61:
      v55 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.corespeech" code:206 userInfo:0];
      goto LABEL_62;
    }

    v37 = [(CSAudioProvider *)self _didPlayStartAlertSoundForSiri:optionCopy audioStream:v30];
    v38 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
      uUID8 = [(CSAudioProvider *)self UUID];
      *buf = 136315650;
      v181 = "[CSAudioProvider _startAudioStream:option:completion:]";
      v182 = 2114;
      v183 = uUID8;
      v184 = 1024;
      LODWORD(v185) = v37;
      _os_log_impl(&dword_1DDA4B000, v39, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:shouldWaitForAlertFinish:%u", buf, 0x1Cu);
    }

    if (v37)
    {
      v41 = self->_streamHandleQueue;
      v147[0] = MEMORY[0x1E69E9820];
      v147[1] = 3221225472;
      v147[2] = __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_96;
      v147[3] = &unk_1E865C678;
      v147[4] = self;
      v148 = v30;
      v149 = v13;
      dispatch_async_and_wait(v41, v147);
      self->_waitingForAlertFinish = 1;
      v42 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
        uUID9 = [(CSAudioProvider *)self UUID];
        *buf = 136315394;
        v181 = "[CSAudioProvider _startAudioStream:option:completion:]";
        v182 = 2114;
        v183 = uUID9;
        _os_log_impl(&dword_1DDA4B000, v43, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Entering dispatch group for recordingWillStartGroup when CSAudioProviderStreamStateStreaming", buf, 0x16u);
      }

      dispatch_group_enter(self->_recordingWillStartGroup);
      [(CSAudioProvider *)self _scheduleAlertFinishTimeout:0.400000006];

      v36 = v148;
      goto LABEL_102;
    }

    streamRequest9 = [v30 streamRequest];
    requestListeningMicIndicatorLock3 = [streamRequest9 requestListeningMicIndicatorLock];

    if (requestListeningMicIndicatorLock3)
    {
      streamRequest10 = [v30 streamRequest];
      v62 = -[CSAudioProvider _acquireListeningMicIndicatorLockFrom:](self, "_acquireListeningMicIndicatorLockFrom:", [streamRequest10 clientIdentity]);
    }

    streamRequest11 = [v30 streamRequest];
    requestRecordModeLock3 = [streamRequest11 requestRecordModeLock];

    if (requestRecordModeLock3)
    {
      streamRequest12 = [v30 streamRequest];
      v66 = -[CSAudioProvider _acquireRecordModeLockFrom:](self, "_acquireRecordModeLockFrom:", [streamRequest12 clientIdentity]);
    }

    if (![(CSAudioProvider *)self _setListeningMicIndicatorPropertyIfNeeded])
    {
      v79 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v181 = "[CSAudioProvider _startAudioStream:option:completion:]";
        _os_log_error_impl(&dword_1DDA4B000, v79, OS_LOG_TYPE_ERROR, "%s startAudioStream failed due to invalid MicIndicator status", buf, 0xCu);
      }

      goto LABEL_61;
    }

    if (+[CSUtils isExclaveHardware](CSUtils, "isExclaveHardware") && (v67 = -[CSAudioProvider audioStreamId](self, "audioStreamId"), v67 == *MEMORY[0x1E6958390]) && ([v30 streamRequest], v68 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend(v68, "requestExclaveAudio"), v68, (v69 & 1) == 0))
    {
      requestHistoricalAudioDataSampleCount = [optionCopy requestHistoricalAudioDataSampleCount];
      v128 = self->_streamHandleQueue;
      if (requestHistoricalAudioDataSampleCount)
      {
        v144[0] = MEMORY[0x1E69E9820];
        v144[1] = 3221225472;
        v144[2] = __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_97;
        v144[3] = &unk_1E865C778;
        v144[4] = self;
        v145 = optionCopy;
        v146 = v30;
        dispatch_async_and_wait(v128, v144);

        v110 = v145;
      }

      else
      {
        v142[0] = MEMORY[0x1E69E9820];
        v142[1] = 3221225472;
        v142[2] = __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_98;
        v142[3] = &unk_1E865C970;
        v142[4] = self;
        v143 = v30;
        dispatch_async_and_wait(v128, v142);
        v110 = v143;
      }
    }

    else
    {
      if ([optionCopy requestHistoricalAudioDataSampleCount])
      {
        [v30 updateAudioStreamStartTimeInSampleCount:{objc_msgSend(optionCopy, "startRecordingSampleCount")}];
LABEL_92:
        v111 = self->_streamHandleQueue;
        v135[0] = MEMORY[0x1E69E9820];
        v135[1] = 3221225472;
        v135[2] = __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_2_100;
        v135[3] = &unk_1E865C778;
        v136 = optionCopy;
        v137 = v30;
        selfCopy2 = self;
        dispatch_async_and_wait(v111, v135);
        v13[2](v13, 1, 0);
        v112 = CSLogCategoryAudio;
        if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v181 = "[CSAudioProvider _startAudioStream:option:completion:]";
          _os_log_impl(&dword_1DDA4B000, v112, OS_LOG_TYPE_DEFAULT, "%s Start deliver historical audio buffer immediately", buf, 0xCu);
        }

        v113 = self->_streamHandleQueue;
        v134[0] = MEMORY[0x1E69E9820];
        v134[1] = 3221225472;
        v134[2] = __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_102;
        v134[3] = &unk_1E865CB68;
        v134[4] = self;
        dispatch_async_and_wait(v113, v134);

        v36 = v136;
        goto LABEL_102;
      }

      v109 = self->_streamHandleQueue;
      v139[0] = MEMORY[0x1E69E9820];
      v139[1] = 3221225472;
      v139[2] = __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_99;
      v139[3] = &unk_1E865C970;
      v140 = v30;
      selfCopy3 = self;
      dispatch_async_and_wait(v109, v139);
      v110 = v140;
    }

    goto LABEL_92;
  }

  v22 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
  {
    v56 = v22;
    uUID10 = [(CSAudioProvider *)self UUID];
    v58 = [(CSAudioProvider *)self _streamStateName:self->_streamState];
    *buf = 136315650;
    v181 = "[CSAudioProvider _startAudioStream:option:completion:]";
    v182 = 2114;
    v183 = uUID10;
    v184 = 2114;
    v185 = v58;
    _os_log_error_impl(&dword_1DDA4B000, v56, OS_LOG_TYPE_ERROR, "%s CSAudioProvider[%{public}@]:Cannot handle start audio stream on : %{public}@", buf, 0x20u);
  }

  v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:952 userInfo:0];
  (v13)[2](v13, 0, v23);
LABEL_106:

  v126 = *MEMORY[0x1E69E9840];
}

uint64_t __55__CSAudioProvider__startAudioStream_option_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v16 = v5;
  if ((a2 & 1) == 0)
  {
    v6 = [*(a1 + 32) streamRequest];
    v7 = [v6 requestListeningMicIndicatorLock];

    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) streamRequest];
      [v8 _releaseListeningMicIndicatorLockFrom:{objc_msgSend(v9, "clientIdentity")}];
    }

    v10 = [*(a1 + 32) streamRequest];
    v11 = [v10 requestRecordModeLock];

    if (v11)
    {
      v12 = *(a1 + 40);
      v13 = [*(a1 + 32) streamRequest];
      [v12 _forceReleaseRecordModeLockFrom:{objc_msgSend(v13, "clientIdentity")}];
    }
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, a2, v16);
  }

  return MEMORY[0x1EEE66BE0]();
}

void __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_86(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) tandemStreams];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setNeedsBoost12dB:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) startPendingOnStoppingStreams];
  [v2 addObject:*(a1 + 40)];

  if (*(a1 + 48))
  {
    v5 = [*(a1 + 32) startPendingOnStoppingStreamToCompletionDict];
    v3 = MEMORY[0x1E12BA300](*(a1 + 48));
    v4 = [*(a1 + 40) name];
    [v5 setObject:v3 forKey:v4];
  }
}

void *__55__CSAudioProvider__startAudioStream_option_completion___block_invoke_87(uint64_t a1)
{
  result = *(*(a1 + 32) + 168);
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = [result sampleCount];

    return [v3 updateAudioStreamStartTimeInSampleCount:v4];
  }

  return result;
}

void __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_2_88(uint64_t a1)
{
  v2 = [*(a1 + 32) alertPlaybackFinishWaitingStreams];
  [v2 addObject:*(a1 + 40)];

  if (*(a1 + 48))
  {
    v4 = [*(a1 + 32) alertPlaybackFinishWaitingCompletions];
    v3 = MEMORY[0x1E12BA300](*(a1 + 48));
    [v4 addObject:v3];
  }
}

void __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_90(uint64_t a1)
{
  v2 = [*(a1 + 32) startPendingStreams];
  [v2 addObject:*(a1 + 40)];

  if (*(a1 + 48))
  {
    v4 = [*(a1 + 32) pendingStartCompletions];
    v3 = MEMORY[0x1E12BA300](*(a1 + 48));
    [v4 addObject:v3];
  }
}

void __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_2_91(uint64_t a1)
{
  [*(a1 + 32) _createCircularBufferIfNeededWithNumChannel:*(a1 + 64) playbackRoute:*(a1 + 40)];
  v2 = [CSAudioPreprocessor alloc];
  +[CSConfig inputRecordingSampleRate];
  v4 = v3;
  v5 = *(a1 + 64);
  v6 = [*(a1 + 48) streamRequest];
  v7 = [v6 recordContext];
  v8 = [v7 type];
  LODWORD(v9) = v4;
  v10 = [(CSAudioPreprocessor *)v2 initWithSampleRate:v5 withNumberOfChannels:v8 recordType:v9];
  v11 = *(a1 + 32);
  v12 = *(v11 + 192);
  *(v11 + 192) = v10;

  [*(*(a1 + 32) + 192) setDelegate:?];
  v13 = *(a1 + 32);
  v14 = v13[24];
  v15 = [v13 audioRecorder];
  [v15 recordingSampleRateWithStreamHandleId:{objc_msgSend(*(a1 + 32), "audioStreamHandleId")}];
  [v14 resetWithSampleRate:*(a1 + 68) containsVoiceTrigger:*(a1 + 56) voiceTriggerInfo:?];

  *(*(a1 + 32) + 272) = 0;
  *(*(a1 + 32) + 280) = 0;
}

void __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_94(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 168))
  {
    if ([*(a1 + 40) requestHistoricalAudioDataWithHostTime])
    {
      [*(a1 + 32) setCircularBufferStartHostTime:{objc_msgSend(*(a1 + 40), "startRecordingHostTime")}];
      [*(a1 + 32) setCircularBufferStartSampleCount:{objc_msgSend(*(*(a1 + 32) + 168), "sampleCount")}];
      v2 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(a1 + 32);
        v4 = v2;
        v5 = [v3 UUID];
        v6 = *(a1 + 32);
        v8 = *(v6 + 256);
        v7 = *(v6 + 264);
        v10 = 136315906;
        v11 = "[CSAudioProvider _startAudioStream:option:completion:]_block_invoke";
        v12 = 2114;
        v13 = v5;
        v14 = 2050;
        v15 = v8;
        v16 = 2050;
        v17 = v7;
        _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Set circularBufferStartHostTime = %{public}llu, circularBufferStartSampleCount = %{public}lu", &v10, 0x2Au);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_95(uint64_t a1)
{
  v2 = [*(a1 + 32) startPendingStreams];
  [v2 addObject:*(a1 + 40)];

  if (*(a1 + 48))
  {
    v4 = [*(a1 + 32) pendingStartCompletions];
    v3 = MEMORY[0x1E12BA300](*(a1 + 48));
    [v4 addObject:v3];
  }
}

void __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_96(uint64_t a1)
{
  v2 = [*(a1 + 32) alertPlaybackFinishWaitingStreams];
  [v2 addObject:*(a1 + 40)];

  v4 = [*(a1 + 32) alertPlaybackFinishWaitingCompletions];
  v3 = MEMORY[0x1E12BA300](*(a1 + 48));
  [v4 addObject:v3];
}

uint64_t __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_97(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 280) = [*(a1 + 40) startRecordingSampleCount];
  v2 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 280);
    v6 = 136315394;
    v7 = "[CSAudioProvider _startAudioStream:option:completion:]_block_invoke";
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Set LastFetchedExclaveAudioSampleCount = %llu", &v6, 0x16u);
  }

  result = [*(a1 + 48) updateAudioStreamStartTimeInSampleCount:{objc_msgSend(*(*(a1 + 32) + 168), "sampleCount")}];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_98(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 280) = *(*(a1 + 32) + 272);
  v2 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 280);
    v6 = 136315394;
    v7 = "[CSAudioProvider _startAudioStream:option:completion:]_block_invoke";
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Set LastFetchedExclaveAudioSampleCount = %llu", &v6, 0x16u);
  }

  result = [*(a1 + 40) updateAudioStreamStartTimeInSampleCount:{objc_msgSend(*(*(a1 + 32) + 168), "sampleCount")}];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_99(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 168) sampleCount];

  return [v1 updateAudioStreamStartTimeInSampleCount:v2];
}

void __55__CSAudioProvider__startAudioStream_option_completion___block_invoke_2_100(id *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (([a1[4] requestHistoricalAudioDataWithHostTime] & 1) == 0)
  {
    v10 = [a1[5] streamRequest];
    v11 = [v10 recordContext];
    if ([v11 type] == 11 && !objc_msgSend(a1[4], "startRecordingSampleCount"))
    {
    }

    else
    {
      if (([a1[4] useOpportunisticZLL] & 1) == 0)
      {
        goto LABEL_12;
      }

      v13 = +[CSUtils supportOpportunisticZLL];

      if (!v13)
      {
        goto LABEL_14;
      }
    }
  }

  v2 = [a1[4] startRecordingHostTime];
  v3 = [*(a1[6] + 37) sampleCountFromHostTime:v2];
  v4 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[6];
    v6 = v4;
    v7 = [v5 UUID];
    v19 = 136315906;
    v20 = "[CSAudioProvider _startAudioStream:option:completion:]_block_invoke_2";
    v21 = 2114;
    v22 = v7;
    v23 = 2050;
    v24 = v2;
    v25 = 2050;
    v26 = v3;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Requested startHostTime = %{public}llu, _clientStartSampleCount = %{public}tu", &v19, 0x2Au);
  }

  if (v3 <= [*(a1[6] + 21) sampleCount])
  {
    [a1[5] updateAudioStreamStartTimeInSampleCount:v3];
    goto LABEL_14;
  }

  v8 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[6];
    v10 = v8;
    v11 = [v9 UUID];
    v12 = [*(a1[6] + 21) sampleCount];
    v19 = 136315650;
    v20 = "[CSAudioProvider _startAudioStream:option:completion:]_block_invoke";
    v21 = 2114;
    v22 = v11;
    v23 = 2050;
    v24 = v12;
    _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Failed to fetch historical audio since _clientStartSampleCount is newer than audioBuffer sample count(%{public}llu)", &v19, 0x20u);
LABEL_12:
  }

LABEL_14:
  v14 = [a1[6] streams];
  [v14 addObject:a1[5]];

  v15 = +[CSAudioStreamActivityMonitor sharedInstance];
  v16 = [a1[6] streams];
  v17 = [a1[6] streamHolders];
  [v15 notifyActiveStreamsChanged:v16 streamHolders:v17 streamId:*(a1[6] + 27)];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)prepareAudioStream:(id)stream request:(id)request completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  requestCopy = request;
  completionCopy = completion;
  v11 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    uUID = [(CSAudioProvider *)self UUID];
    name = [streamCopy name];
    v15 = [(CSAudioProvider *)self _streamStateName:self->_streamState];
    *buf = 136315906;
    v26 = "[CSAudioProvider prepareAudioStream:request:completion:]";
    v27 = 2114;
    v28 = uUID;
    v29 = 2114;
    v30 = name;
    v31 = 2114;
    v32 = v15;
    _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:prepareAudioStream with stream : %{public}@ with stream state : %{public}@", buf, 0x2Au);
  }

  recordQueue = self->_recordQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __57__CSAudioProvider_prepareAudioStream_request_completion___block_invoke;
  v21[3] = &unk_1E865B218;
  v21[4] = self;
  v22 = streamCopy;
  v23 = requestCopy;
  v24 = completionCopy;
  v17 = completionCopy;
  v18 = requestCopy;
  v19 = streamCopy;
  dispatch_async(recordQueue, v21);

  v20 = *MEMORY[0x1E69E9840];
}

void __57__CSAudioProvider_prepareAudioStream_request_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__CSAudioProvider_prepareAudioStream_request_completion___block_invoke_2;
  v4[3] = &unk_1E865CAB8;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _prepareAudioStream:v2 request:v3 completion:v4];
}

uint64_t __57__CSAudioProvider_prepareAudioStream_request_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)prepareAudioStreamSync:(id)sync request:(id)request error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  requestCopy = request;
  v10 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    uUID = [(CSAudioProvider *)self UUID];
    name = [syncCopy name];
    v14 = [(CSAudioProvider *)self _streamStateName:self->_streamState];
    v15 = [requestCopy description];
    *buf = 136316162;
    *&buf[4] = "[CSAudioProvider prepareAudioStreamSync:request:error:]";
    *&buf[12] = 2114;
    *&buf[14] = uUID;
    *&buf[22] = 2114;
    v32 = name;
    *v33 = 2114;
    *&v33[2] = v14;
    *&v33[10] = 2114;
    *&v33[12] = v15;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:prepareAudioStreamSync with stream : %{public}@ with stream state : %{public}@, request : %{public}@", buf, 0x34u);
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v32 = __Block_byref_object_copy__7916;
  *v33 = __Block_byref_object_dispose__7917;
  *&v33[8] = 0;
  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CSAudioProvider_prepareAudioStreamSync_request_error___block_invoke;
  block[3] = &unk_1E865B0D8;
  v25 = &v27;
  block[4] = self;
  v17 = syncCopy;
  v23 = v17;
  v18 = requestCopy;
  v24 = v18;
  v26 = buf;
  dispatch_async_and_wait(recordQueue, block);
  if (error)
  {
    *error = *(*&buf[8] + 40);
  }

  v19 = *(v28 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v27, 8);

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

void __56__CSAudioProvider_prepareAudioStreamSync_request_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 _prepareAudioStreamSync:v3 request:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

- (void)startAudioStream:(id)stream option:(id)option completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  optionCopy = option;
  completionCopy = completion;
  v11 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    uUID = [(CSAudioProvider *)self UUID];
    name = [streamCopy name];
    v15 = [(CSAudioProvider *)self _streamStateName:self->_streamState];
    localizedDescription = [optionCopy localizedDescription];
    audioStreamHandleId = self->_audioStreamHandleId;
    *buf = 136316418;
    v28 = "[CSAudioProvider startAudioStream:option:completion:]";
    v29 = 2114;
    v30 = uUID;
    v31 = 2114;
    v32 = name;
    v33 = 2114;
    v34 = v15;
    v35 = 2114;
    v36 = localizedDescription;
    v37 = 2050;
    v38 = audioStreamHandleId;
    _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:startAudioStream with stream : %{public}@ with stream state : %{public}@, option : %{public}@, streamId : %{public}llu", buf, 0x3Eu);
  }

  recordQueue = self->_recordQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __54__CSAudioProvider_startAudioStream_option_completion___block_invoke;
  v23[3] = &unk_1E865B218;
  v23[4] = self;
  v24 = streamCopy;
  v25 = optionCopy;
  v26 = completionCopy;
  v19 = completionCopy;
  v20 = optionCopy;
  v21 = streamCopy;
  dispatch_async(recordQueue, v23);

  v22 = *MEMORY[0x1E69E9840];
}

void __54__CSAudioProvider_startAudioStream_option_completion___block_invoke(id *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1[4] + 5);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CSAudioProvider_startAudioStream_option_completion___block_invoke_2;
  block[3] = &unk_1E865C970;
  v19 = a1[5];
  v20 = a1[6];
  dispatch_async(v2, block);
  v3 = a1[4];
  if (v3[7])
  {
    [a1[4] _startAudioStream:a1[5] option:a1[6] completion:a1[7]];
  }

  else
  {
    v4 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [v3 UUID];
      v7 = [a1[4] _streamStateName:*(a1[4] + 7)];
      *buf = 136315650;
      v22 = "[CSAudioProvider startAudioStream:option:completion:]_block_invoke";
      v23 = 2114;
      v24 = v6;
      v25 = 2114;
      v26 = v7;
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:state was %{public}@, prepareAudioStream first", buf, 0x20u);

      v3 = a1[4];
    }

    v8 = a1[5];
    v9 = [v8 streamRequest];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__CSAudioProvider_startAudioStream_option_completion___block_invoke_85;
    v15[3] = &unk_1E865B150;
    v10 = a1[7];
    v14 = *(a1 + 2);
    v11 = *(&v14 + 1);
    *&v12 = a1[6];
    *(&v12 + 1) = v10;
    v16 = v14;
    v17 = v12;
    [v3 _prepareAudioStream:v8 request:v9 completion:v15];
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __54__CSAudioProvider_startAudioStream_option_completion___block_invoke_85(uint64_t a1, char a2, void *a3)
{
  a3;
  if (a2)
  {
    [*(a1 + 32) _startAudioStream:*(a1 + 40) option:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)_createCircularBufferIfNeededWithNumChannel:(unint64_t)channel playbackRoute:(id)route
{
  v31 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  if (+[CSUtils allowExtendedRingBufferSize]&& self->_audioStreamType == 2 && routeCopy && self->_phoneCallState != 3)
  {
    v7 = [routeCopy isEqualToString:*MEMORY[0x1E69581E8]];
    +[CSConfig inputRecordingDurationInSecs];
    if ((v7 & 1) == 0)
    {
      +[CSConfig inputRecordingDurationInSecsExtended];
    }
  }

  else
  {
    +[CSConfig inputRecordingDurationInSecs];
  }

  v9 = v8;
  circularBuffer = self->_circularBuffer;
  if (!circularBuffer || ([(CSAudioCircularBuffer *)circularBuffer inputRecordingDuration], v11 != v9) || (v22 = self->_circularBuffer) != 0 && [(CSAudioCircularBuffer *)v22 numInputChannels]!= channel)
  {
    v12 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      uUID = [(CSAudioProvider *)self UUID];
      v23 = 136315906;
      v24 = "[CSAudioProvider _createCircularBufferIfNeededWithNumChannel:playbackRoute:]";
      v25 = 2114;
      v26 = uUID;
      v27 = 1024;
      channelCopy = channel;
      v29 = 2048;
      v30 = v9;
      _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Create circular buffer : numChannels(%d), duration(%f)", &v23, 0x26u);
    }

    v15 = [CSAudioCircularBuffer alloc];
    +[CSConfig inputRecordingSampleRate];
    LODWORD(v17) = v16;
    *&v18 = v9;
    v19 = [(CSAudioCircularBuffer *)v15 initWithNumChannels:channel recordingDuration:self->_audioTimeConverter samplingRate:v18 audioTimeConverter:v17];
    v20 = self->_circularBuffer;
    self->_circularBuffer = v19;
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_prepareAudioStream:(id)stream request:(id)request completion:(id)completion
{
  completionCopy = completion;
  recordQueue = self->_recordQueue;
  requestCopy = request;
  streamCopy = stream;
  dispatch_assert_queue_V2(recordQueue);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__CSAudioProvider__prepareAudioStream_request_completion___block_invoke;
  v17[3] = &unk_1E865CAB8;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = MEMORY[0x1E12BA300](v17);
  v16 = 0;
  v14 = [(CSAudioProvider *)self _prepareAudioStreamSync:streamCopy request:requestCopy error:&v16];

  v15 = v16;
  (v13)[2](v13, v14, v15);
}

uint64_t __58__CSAudioProvider__prepareAudioStream_request_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_prepareAudioStreamSync:(id)sync request:(id)request error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  recordQueue = self->_recordQueue;
  syncCopy = sync;
  dispatch_assert_queue_V2(recordQueue);
  [syncCopy setStreamRequest:requestCopy];
  tandemStreams = [syncCopy tandemStreams];

  [tandemStreams removeAllObjects];
  if (self->_streamState < 2)
  {
    if (self->_audioSystemRecovering)
    {
      v12 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        v34 = v12;
        uUID = [(CSAudioProvider *)self UUID];
        *buf = 136315394;
        v42 = "[CSAudioProvider _prepareAudioStreamSync:request:error:]";
        v43 = 2114;
        v44 = uUID;
        _os_log_error_impl(&dword_1DDA4B000, v34, OS_LOG_TYPE_ERROR, "%s CSAudioProvider[%{public}@]:Cannot prepare, audio system is recovering", buf, 0x16u);

        if (!error)
        {
          goto LABEL_6;
        }
      }

      else if (!error)
      {
LABEL_6:
        [(CSAudioProvider *)self _handleAudioSystemFailure];
LABEL_7:
        LOBYTE(v13) = 0;
        goto LABEL_27;
      }

      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:957 userInfo:0];
      goto LABEL_6;
    }

    audioRecorder = [(CSAudioProvider *)self audioRecorder];

    if (!audioRecorder)
    {
      if (error)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:958 userInfo:0];
        *error = LOBYTE(v13) = 0;
        goto LABEL_27;
      }

      goto LABEL_7;
    }

    v19 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      uUID2 = [(CSAudioProvider *)self UUID];
      *buf = 136315394;
      v42 = "[CSAudioProvider _prepareAudioStreamSync:request:error:]";
      v43 = 2114;
      v44 = uUID2;
      _os_log_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Asking AudioRecorder prepareAudioStreamRecord", buf, 0x16u);
    }

    audioRecorder2 = [(CSAudioProvider *)self audioRecorder];
    recordDeviceIndicator = [(CSAudioProvider *)self recordDeviceIndicator];
    v40 = 0;
    v13 = [audioRecorder2 prepareAudioStreamRecord:requestCopy recordDeviceIndicator:recordDeviceIndicator error:&v40];
    v24 = v40;

    if (v13)
    {
      [(CSAudioProvider *)self setStreamState:1];
      if ([(CSAudioRecordContext *)self->_lastAudioRecorderContext type]== 6 && !+[CSUtils isLocalVoiceTriggerAvailable])
      {
        v25 = +[CSVoiceTriggerEventInfoProvider sharedInstance];
        audioRecorder3 = [(CSAudioProvider *)self audioRecorder];
        recordDeviceIndicator2 = [(CSAudioProvider *)self recordDeviceIndicator];
        v27 = [audioRecorder3 fetchGibraltarVoiceTriggerInfoWithRecordDeviceIndicator:recordDeviceIndicator2];
        recordDeviceIndicator3 = [(CSAudioProvider *)self recordDeviceIndicator];
        deviceId = [recordDeviceIndicator3 deviceId];
        [v25 setVoiceTriggerInfo:v27 deviceId:deviceId];

        if (!error)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v30 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        v36 = v30;
        uUID3 = [(CSAudioProvider *)self UUID];
        localizedDescription = [v24 localizedDescription];
        *buf = 136315650;
        v42 = "[CSAudioProvider _prepareAudioStreamSync:request:error:]";
        v43 = 2114;
        v44 = uUID3;
        v45 = 2114;
        v46 = localizedDescription;
        _os_log_error_impl(&dword_1DDA4B000, v36, OS_LOG_TYPE_ERROR, "%s CSAudioProvider[%{public}@]:prepareAudioStreamRecord failed : %{public}@", buf, 0x20u);

        if (!error)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    if (!error)
    {
LABEL_24:
      if ((v13 & 1) == 0)
      {
        [(CSAudioProvider *)self _handleAudioSystemFailure];
      }

      goto LABEL_27;
    }

LABEL_23:
    v31 = v24;
    *error = v24;
    goto LABEL_24;
  }

  v14 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    uUID4 = [(CSAudioProvider *)self UUID];
    v17 = [(CSAudioProvider *)self _streamStateName:self->_streamState];
    *buf = 136315650;
    v42 = "[CSAudioProvider _prepareAudioStreamSync:request:error:]";
    v43 = 2114;
    v44 = uUID4;
    v45 = 2114;
    v46 = v17;
    _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Prepare audio stream reuqested while state is %{public}@", buf, 0x20u);
  }

  LOBYTE(v13) = 1;
LABEL_27:

  v32 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)attachTandemStream:(id)stream withConfig:(id)config toPrimaryStream:(id)primaryStream completion:(id)completion
{
  streamCopy = stream;
  configCopy = config;
  primaryStreamCopy = primaryStream;
  completionCopy = completion;
  streamHandleQueue = self->_streamHandleQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__CSAudioProvider_attachTandemStream_withConfig_toPrimaryStream_completion___block_invoke;
  block[3] = &unk_1E865BEA0;
  v20 = streamCopy;
  v21 = primaryStreamCopy;
  v23 = configCopy;
  v24 = completionCopy;
  selfCopy = self;
  v15 = configCopy;
  v16 = completionCopy;
  v17 = primaryStreamCopy;
  v18 = streamCopy;
  dispatch_async(streamHandleQueue, block);
}

void __76__CSAudioProvider_attachTandemStream_withConfig_toPrimaryStream_completion___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __76__CSAudioProvider_attachTandemStream_withConfig_toPrimaryStream_completion___block_invoke_2;
  v24[3] = &unk_1E865B128;
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  v27 = *(a1 + 64);
  v2 = MEMORY[0x1E12BA300](v24);
  v3 = *(a1 + 32);
  if (!v3 || !*(a1 + 40))
  {
    v10 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "[CSAudioProvider attachTandemStream:withConfig:toPrimaryStream:completion:]_block_invoke";
      _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, "%s Invalid input streams", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v4 = [v3 tandemStreams];
  v5 = [v4 containsObject:*(a1 + 40)];

  if (v5)
  {
    v6 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 name];
      *buf = 136315394;
      v29 = "[CSAudioProvider attachTandemStream:withConfig:toPrimaryStream:completion:]_block_invoke";
      v30 = 2114;
      v31 = v9;
      _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s PrimaryStream is already tandem of stream %{public}@, can't add mutual tandem relation here!", buf, 0x16u);
    }

LABEL_8:
    v11 = MEMORY[0x1E696ABC0];
    v12 = 114;
LABEL_9:
    v13 = [v11 errorWithDomain:@"com.apple.corespeech" code:v12 userInfo:0];
    (v2)[2](v2, 0, v13);

    goto LABEL_10;
  }

  if (![*(a1 + 48) streamState])
  {
    v21 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "[CSAudioProvider attachTandemStream:withConfig:toPrimaryStream:completion:]_block_invoke";
      _os_log_error_impl(&dword_1DDA4B000, v21, OS_LOG_TYPE_ERROR, "%s PrimaryStream is not prepared, cannot attach tandem stream", buf, 0xCu);
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = 964;
    goto LABEL_9;
  }

  [*(a1 + 32) setNeedsBoost12dB:{objc_msgSend(*(a1 + 40), "needsBoost12dB")}];
  [*(a1 + 32) updateAudioStreamStartTimeInSampleCount:{objc_msgSend(*(a1 + 40), "startSampleCount")}];
  [*(a1 + 32) setScheduledFutureSample:{objc_msgSend(*(a1 + 40), "scheduledFutureSample")}];
  v15 = *(a1 + 56);
  v16 = *(a1 + 32);
  v17 = [CSAudioStartStreamOption alloc];
  if (v15)
  {
    v18 = *(a1 + 56);
    v19 = [*(a1 + 40) startStreamOption];
    v20 = [(CSAudioStartStreamOption *)v17 initTandemWithTandemAttachConfig:v18 primaryStreamOption:v19];
  }

  else
  {
    v19 = [*(a1 + 40) startStreamOption];
    v20 = [(CSAudioStartStreamOption *)v17 initTandemWithOption:v19];
  }

  v22 = v20;
  [v16 setStartStreamOption:v20];

  v23 = [*(a1 + 40) tandemStreams];
  [v23 addObject:*(a1 + 32)];

  v2[2](v2, 1, 0);
LABEL_10:

  v14 = *MEMORY[0x1E69E9840];
}

void __76__CSAudioProvider_attachTandemStream_withConfig_toPrimaryStream_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 name];
    v10 = [*(a1 + 40) name];
    if (v5)
    {
      v11 = @"failed";
    }

    else
    {
      v11 = @"successfully";
    }

    v12 = [v5 localizedDescription];
    v15 = 136316162;
    v16 = "[CSAudioProvider attachTandemStream:withConfig:toPrimaryStream:completion:]_block_invoke_2";
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Attached stream %{public}@ as tandem to master stream %{public}@ %{public}@, error : %{public}@", &v15, 0x34u);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, a2, v5);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)audioStreamWithRequest:(id)request streamName:(id)name completion:(id)completion
{
  requestCopy = request;
  nameCopy = name;
  completionCopy = completion;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __64__CSAudioProvider_audioStreamWithRequest_streamName_completion___block_invoke;
  v21[3] = &unk_1E865B100;
  v22 = completionCopy;
  v11 = completionCopy;
  v12 = MEMORY[0x1E12BA300](v21);
  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CSAudioProvider_audioStreamWithRequest_streamName_completion___block_invoke_2;
  block[3] = &unk_1E865B218;
  block[4] = self;
  v18 = requestCopy;
  v19 = nameCopy;
  v20 = v12;
  v14 = v12;
  v15 = nameCopy;
  v16 = requestCopy;
  dispatch_async(recordQueue, block);
}

uint64_t __64__CSAudioProvider_audioStreamWithRequest_streamName_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __64__CSAudioProvider_audioStreamWithRequest_streamName_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v7 = 0;
  v5 = [v2 _audioStreamWithRequest:v3 streamName:v4 error:&v7];
  v6 = v7;
  (*(a1[7] + 16))();
}

- (id)audioStreamWithRequest:(id)request streamName:(id)name error:(id *)error
{
  requestCopy = request;
  nameCopy = name;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7916;
  v30 = __Block_byref_object_dispose__7917;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7916;
  v24 = __Block_byref_object_dispose__7917;
  v25 = 0;
  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CSAudioProvider_audioStreamWithRequest_streamName_error___block_invoke;
  block[3] = &unk_1E865B0D8;
  v18 = &v26;
  block[4] = self;
  v11 = requestCopy;
  v16 = v11;
  v12 = nameCopy;
  v17 = v12;
  v19 = &v20;
  dispatch_async_and_wait(recordQueue, block);
  if (error)
  {
    *error = v21[5];
  }

  v13 = v27[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

void __59__CSAudioProvider_audioStreamWithRequest_streamName_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 _audioStreamWithRequest:v3 streamName:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)_audioStreamWithRequest:(id)request streamName:(id)name error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  recordQueue = self->_recordQueue;
  nameCopy = name;
  dispatch_assert_queue_V2(recordQueue);
  v11 = [[CSAudioStream alloc] initWithAudioStreamProvider:self streamName:nameCopy streamRequest:requestCopy];

  v12 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    uUID = [(CSAudioProvider *)self UUID];
    name = [(CSAudioStream *)v11 name];
    *buf = 136315650;
    v29 = "[CSAudioProvider _audioStreamWithRequest:streamName:error:]";
    v30 = 2114;
    v31 = uUID;
    v32 = 2114;
    v33 = name;
    _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:audioStreamWithRequest for stream <%{public}@>", buf, 0x20u);
  }

  v27 = 0;
  v16 = [(CSAudioProvider *)self _prepareAudioStreamSync:v11 request:requestCopy error:&v27];
  v17 = v27;
  v18 = v17;
  if (error)
  {
    v19 = v17;
    *error = v18;
  }

  if (v16)
  {
    if ([requestCopy requiresHistoricalBuffer])
    {
      historicalBufferRequestStreams = [(CSAudioProvider *)self historicalBufferRequestStreams];
      [historicalBufferRequestStreams addObject:v11];
    }

    v21 = v11;
  }

  else
  {
    v22 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v25 = v22;
      localizedDescription = [v18 localizedDescription];
      *buf = 136315394;
      v29 = "[CSAudioProvider _audioStreamWithRequest:streamName:error:]";
      v30 = 2114;
      v31 = localizedDescription;
      _os_log_error_impl(&dword_1DDA4B000, v25, OS_LOG_TYPE_ERROR, "%s Failed to _prepareAudioStreamSync : %{public}@", buf, 0x16u);
    }

    v21 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)setCurrentContext:(id)context error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    uUID = [(CSAudioProvider *)self UUID];
    v10 = [contextCopy description];
    *buf = 136315650;
    *&buf[4] = "[CSAudioProvider setCurrentContext:error:]";
    *&buf[12] = 2114;
    *&buf[14] = uUID;
    *&buf[22] = 2114;
    v25 = v10;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:setCurrentContext : %{public}@", buf, 0x20u);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v25 = __Block_byref_object_copy__7916;
  v26 = __Block_byref_object_dispose__7917;
  v27 = 0;
  recordQueue = self->_recordQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __43__CSAudioProvider_setCurrentContext_error___block_invoke;
  v16[3] = &unk_1E865C808;
  v16[4] = self;
  v18 = &v20;
  v12 = contextCopy;
  v17 = v12;
  v19 = buf;
  dispatch_async_and_wait(recordQueue, v16);
  if (error)
  {
    *error = *(*&buf[8] + 40);
  }

  v13 = *(v21 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v20, 8);

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void __43__CSAudioProvider_setCurrentContext_error___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) _canSetContext] & 1) == 0)
  {
    v7 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 UUID];
      *buf = 136315394;
      v18 = "[CSAudioProvider setCurrentContext:error:]_block_invoke";
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Cannot change context since audio recorder is currently recording", buf, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_7;
  }

  [*(a1 + 32) _setLatestRecordContext:*(a1 + 40)];
  v2 = [*(a1 + 32) audioRecorder];

  if (v2)
  {
    v3 = [*(a1 + 32) audioRecorder];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) audioStreamHandleId];
    v6 = *(*(a1 + 56) + 8);
    obj = *(v6 + 40);
    LOBYTE(v4) = [v3 setCurrentContext:v4 streamHandleId:v5 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v4;

LABEL_7:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:958 userInfo:0];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
  v15 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)supportsDuckingOnCurrentRouteWithError:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uUID = [(CSAudioProvider *)self UUID];
    *buf = 136315394;
    *&buf[4] = "[CSAudioProvider supportsDuckingOnCurrentRouteWithError:]";
    *&buf[12] = 2114;
    *&buf[14] = uUID;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:", buf, 0x16u);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = __Block_byref_object_copy__7916;
  v19 = __Block_byref_object_dispose__7917;
  v20 = 0;
  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CSAudioProvider_supportsDuckingOnCurrentRouteWithError___block_invoke;
  block[3] = &unk_1E865C080;
  block[4] = self;
  block[5] = &v13;
  block[6] = buf;
  dispatch_async_and_wait(recordQueue, block);
  if (error)
  {
    *error = *(*&buf[8] + 40);
  }

  v9 = *(v14 + 24);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v13, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void __58__CSAudioProvider_supportsDuckingOnCurrentRouteWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioRecorder];

  if (v2)
  {
    v3 = [*(a1 + 32) audioRecorder];
    v4 = [*(a1 + 32) audioStreamHandleId];
    v5 = *(*(a1 + 48) + 8);
    obj = *(v5 + 40);
    v6 = [v3 isDuckingSupportedOnCurrentRouteWithStreamHandleID:v4 error:&obj];
    objc_storeStrong((v5 + 40), obj);
    *(*(*(a1 + 40) + 8) + 24) = v6;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:958 userInfo:0];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)_setLatestRecordContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  objc_storeStrong(&self->_lastAudioRecorderContext, context);
  recordDeviceIndicator = self->_recordDeviceIndicator;
  if (recordDeviceIndicator)
  {
    [(CSAudioRecordDeviceIndicator *)recordDeviceIndicator updateWithLatestRecordContext:contextCopy];
  }

  else
  {
    if (+[CSUtils supportsSystemDaemon])
    {
      v7 = self->_audioStreamHandleId == *MEMORY[0x1E6958390];
    }

    else
    {
      v7 = 0;
    }

    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"No";
      if (v7)
      {
        v9 = @"Yes";
      }

      v15 = 136315394;
      v16 = "[CSAudioProvider _setLatestRecordContext:]";
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s shouldUseSystemDaemon? %@", &v15, 0x16u);
    }

    v10 = [CSAudioRecordDeviceIndicator alloc];
    deviceId = [contextCopy deviceId];
    v12 = [(CSAudioRecordDeviceIndicator *)v10 initWithRecordContext:contextCopy deviceId:deviceId shouldUseRemoteRecorder:self->_audioStreamType == 3 streamHandleId:self->_audioStreamHandleId shouldUseSystemDaemonRecorder:v7];
    v13 = self->_recordDeviceIndicator;
    self->_recordDeviceIndicator = v12;
  }

  [(CSAudioProvider *)self _updateRemoteDeviceIdFromAVVCIfNeeded];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setLatestRecordContext:(id)context streamType:(int64_t)type
{
  contextCopy = context;
  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CSAudioProvider_setLatestRecordContext_streamType___block_invoke;
  block[3] = &unk_1E865C350;
  v10 = contextCopy;
  typeCopy = type;
  block[4] = self;
  v8 = contextCopy;
  dispatch_async(recordQueue, block);
}

- (void)setAudioProviderDelegate:(id)delegate
{
  delegateCopy = delegate;
  recordQueue = self->_recordQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CSAudioProvider_setAudioProviderDelegate___block_invoke;
  v7[3] = &unk_1E865C970;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(recordQueue, v7);
}

- (void)setAudioRecorder:(id)recorder
{
  recorderCopy = recorder;
  recordQueue = self->_recordQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CSAudioProvider_setAudioRecorder___block_invoke;
  v7[3] = &unk_1E865C970;
  v7[4] = self;
  v8 = recorderCopy;
  v6 = recorderCopy;
  dispatch_async(recordQueue, v7);
}

void __36__CSAudioProvider_setAudioRecorder___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 UUID];
    v6 = *(a1 + 40);
    v11 = 136315650;
    v12 = "[CSAudioProvider setAudioRecorder:]_block_invoke";
    v13 = 2114;
    v14 = v5;
    v15 = 2050;
    v16 = v6;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:Setting audioRecorder : %{public}p", &v11, 0x20u);
  }

  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  [*(*(a1 + 32) + 48) registerObserver:?];
  v7 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[CSAudioProvider setAudioRecorder:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Reset recordDeviceIndicator as we have new audioRecorder", &v11, 0xCu);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 328);
  *(v8 + 328) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setStreamState:(unint64_t)state
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uUID = [(CSAudioProvider *)self UUID];
    v8 = [(CSAudioProvider *)self _streamStateName:self->_streamState];
    v9 = [(CSAudioProvider *)self _streamStateName:state];
    v11 = 136315906;
    v12 = "[CSAudioProvider setStreamState:]";
    v13 = 2114;
    v14 = uUID;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider[%{public}@]:StreamState changed from : %{public}@ to : %{public}@", &v11, 0x2Au);
  }

  self->_streamState = state;
  v10 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  v3 = +[CSAudioServerCrashMonitor sharedInstance];
  [v3 addObserver:self];

  if (+[CSUtils allowExtendedRingBufferSize])
  {
    [(CSEventMonitor *)self->_phoneCallStateMonitor addObserver:self];
    self->_phoneCallState = [(CSPhoneCallStateMonitor *)self->_phoneCallStateMonitor phoneCallState];
  }

  recordQueue = self->_recordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__CSAudioProvider_start__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(recordQueue, block);
  objc_initWeak(&location, self);
  [(CSStateCapture *)self->_stateCapture start];
  stateCapture = self->_stateCapture;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__CSAudioProvider_start__block_invoke_2;
  v6[3] = &unk_1E865B0B0;
  objc_copyWeak(&v7, &location);
  [(CSStateCapture *)stateCapture setStateCaptureBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

CSStateCaptureOptions *__24__CSAudioProvider_start__block_invoke_2(uint64_t a1)
{
  v2 = [CSStateCaptureOptions alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__CSAudioProvider_start__block_invoke_3;
  v5[3] = &unk_1E865B088;
  objc_copyWeak(&v6, (a1 + 32));
  v3 = [(CSStateCaptureOptions *)v2 initWithMutableBuilder:v5];
  objc_destroyWeak(&v6);

  return v3;
}

void __24__CSAudioProvider_start__block_invoke_3(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v5 = [WeakRetained recordQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__CSAudioProvider_start__block_invoke_4;
  block[3] = &unk_1E865C880;
  v42 = &v43;
  v6 = WeakRetained;
  v41 = v6;
  dispatch_sync(v5, block);

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__7916;
  v38 = __Block_byref_object_dispose__7917;
  v39 = 0;
  v7 = [v6 streamHandleQueue];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __24__CSAudioProvider_start__block_invoke_52;
  v31[3] = &unk_1E865C880;
  v33 = &v34;
  v8 = v6;
  v32 = v8;
  dispatch_sync(v7, v31);

  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v44[3]];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [v8 UUID];
  v13 = [v11 stringWithFormat:@"StreamState[CSAudioProvider-%@]", v12];
  [v9 setValue:v10 forKey:v13];

  v14 = [MEMORY[0x1E695DF70] array];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v35[5];
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v47 count:16];
  if (v16)
  {
    v17 = *v28;
    do
    {
      v18 = 0;
      do
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [*(*(&v27 + 1) + 8 * v18) name];
        [v14 addObject:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v27 objects:v47 count:16];
    }

    while (v16);
  }

  if ([v14 count])
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = [v8 UUID];
    v22 = [v20 stringWithFormat:@"activeStreams[CSAudioProvider-%@]", v21];
    [v9 setValue:v14 forKey:v22];
  }

  [v3 setStateData:v9];
  v23 = MEMORY[0x1E696AEC0];
  v24 = [v8 UUID];
  v25 = [v23 stringWithFormat:@"CoreSpeech-AudioStates[CSAudioProvider-%@]", v24];
  [v3 setStateDataTitle:v25];

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v43, 8);

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t __24__CSAudioProvider_start__block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) streamState];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __24__CSAudioProvider_start__block_invoke_52(uint64_t a1)
{
  v5 = [*(a1 + 32) streams];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  [(CSAudioProvider *)self _holdRecordingExceptionIfNeeded:0];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSAudioProvider dealloc]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s CSAudioProvider is deallocated", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = CSAudioProvider;
  [(CSAudioProvider *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (CSAudioProvider)initWithAudioStreamHandleId:(unint64_t)id audioStreamType:(int64_t)type audioRecordContext:(id)context audioRecorder:(id)recorder phoneCallStateMonitor:(id)monitor
{
  contextCopy = context;
  recorderCopy = recorder;
  monitorCopy = monitor;
  v81.receiver = self;
  v81.super_class = CSAudioProvider;
  v15 = [(CSAudioProvider *)&v81 init];
  v16 = v15;
  if (v15)
  {
    v15->_audioStreamHandleId = id;
    if (CSIsHorseman_onceToken != -1)
    {
      dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
    }

    if (type == 1 && (CSIsHorseman_isHorseman & 1) != 0)
    {
      v17 = [CSUtils getSerialQueueWithQOS:33 name:@"CSAudioProvider" fixedPriority:60];
      recordQueue = v16->_recordQueue;
      v16->_recordQueue = v17;

      v19 = [CSUtils getSerialQueueWithQOS:33 name:@"CSAudioProvider Stream Handle Queue" fixedPriority:60];
      streamHandleQueue = v16->_streamHandleQueue;
      v16->_streamHandleQueue = v19;
    }

    else
    {
      v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v22 = dispatch_queue_create("CSAudioProvider", v21);
      v23 = v16->_recordQueue;
      v16->_recordQueue = v22;

      streamHandleQueue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v24 = dispatch_queue_create("CSAudioProvider Stream Handle Queue", streamHandleQueue);
      v25 = v16->_streamHandleQueue;
      v16->_streamHandleQueue = v24;
    }

    v26 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, -2);
    v27 = dispatch_queue_create("CSAudioProvider logging", v26);
    loggingQueue = v16->_loggingQueue;
    v16->_loggingQueue = v27;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    startPendingStreams = v16->_startPendingStreams;
    v16->_startPendingStreams = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    startPendingOnStoppingStreams = v16->_startPendingOnStoppingStreams;
    v16->_startPendingOnStoppingStreams = weakObjectsHashTable2;

    weakObjectsHashTable3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    alertPlaybackFinishWaitingStreams = v16->_alertPlaybackFinishWaitingStreams;
    v16->_alertPlaybackFinishWaitingStreams = weakObjectsHashTable3;

    weakObjectsHashTable4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    streams = v16->_streams;
    v16->_streams = weakObjectsHashTable4;

    weakObjectsHashTable5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    stopPendingStreams = v16->_stopPendingStreams;
    v16->_stopPendingStreams = weakObjectsHashTable5;

    weakObjectsHashTable6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    historicalBufferRequestStreams = v16->_historicalBufferRequestStreams;
    v16->_historicalBufferRequestStreams = weakObjectsHashTable6;

    array = [MEMORY[0x1E695DF70] array];
    pendingStartCompletions = v16->_pendingStartCompletions;
    v16->_pendingStartCompletions = array;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    startPendingOnStoppingStreamToCompletionDict = v16->_startPendingOnStoppingStreamToCompletionDict;
    v16->_startPendingOnStoppingStreamToCompletionDict = dictionary;

    array2 = [MEMORY[0x1E695DF70] array];
    alertPlaybackFinishWaitingCompletions = v16->_alertPlaybackFinishWaitingCompletions;
    v16->_alertPlaybackFinishWaitingCompletions = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    pendingStopCompletions = v16->_pendingStopCompletions;
    v16->_pendingStopCompletions = array3;

    array4 = [MEMORY[0x1E695DF70] array];
    streamHolders = v16->_streamHolders;
    v16->_streamHolders = array4;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    recordModeLocks = v16->_recordModeLocks;
    v16->_recordModeLocks = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    listeningMicIndicatorLocks = v16->_listeningMicIndicatorLocks;
    v16->_listeningMicIndicatorLocks = dictionary3;

    [(CSAudioProvider *)v16 setStreamState:0];
    objc_storeStrong(&v16->_audioRecorder, recorder);
    [(CSAudioRecorder *)v16->_audioRecorder registerObserver:v16];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    UUID = v16->_UUID;
    v16->_UUID = uUIDString;

    v16->_audioSystemRecovering = 0;
    v58 = dispatch_group_create();
    recordingWillStartGroup = v16->_recordingWillStartGroup;
    v16->_recordingWillStartGroup = v58;

    v16->_audioStreamType = type;
    v60 = +[CSUtils supportsSystemDaemon];
    v61 = *MEMORY[0x1E6958390] == id && v60;
    v62 = [CSAudioRecordDeviceIndicator alloc];
    deviceId = [contextCopy deviceId];
    v64 = [(CSAudioRecordDeviceIndicator *)v62 initWithRecordContext:contextCopy deviceId:deviceId shouldUseRemoteRecorder:type == 3 streamHandleId:id shouldUseSystemDaemonRecorder:v61];
    recordDeviceIndicator = v16->_recordDeviceIndicator;
    v16->_recordDeviceIndicator = v64;

    v66 = +[CSAudioTimeConverterPool sharedInstance];
    v67 = [v66 converterForAudioStreamId:id];
    audioTimeConverter = v16->_audioTimeConverter;
    v16->_audioTimeConverter = v67;

    if (+[CSUtils isExclaveHardware])
    {
      v69 = +[CSAudioTimeConverterPool sharedInstance];
      defaultExclaveConverter = [v69 defaultExclaveConverter];
      exclaveAudioTimeConverter = v16->_exclaveAudioTimeConverter;
      v16->_exclaveAudioTimeConverter = defaultExclaveConverter;
    }

    v72 = objc_alloc_init(CSMicUsageReporter);
    micUsageReporter = v16->_micUsageReporter;
    v16->_micUsageReporter = v72;

    v16->_currentSessionShouldDuckOnBuiltInSpeaker = 0;
    v74 = +[CSConfig inputRecordingNumberOfChannels];
    if (type == 1)
    {
      if (CSIsHorseman_onceToken != -1)
      {
        dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
      }

      if (CSIsHorseman_isHorseman)
      {
        v74 = 1;
      }
    }

    if (+[CSUtils allowExtendedRingBufferSize])
    {
      if (monitorCopy)
      {
        v75 = monitorCopy;
      }

      else
      {
        v75 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
      }

      phoneCallStateMonitor = v16->_phoneCallStateMonitor;
      v16->_phoneCallStateMonitor = v75;
    }

    v16->_phoneCallState = 0;
    [(CSAudioProvider *)v16 _createCircularBufferIfNeededWithNumChannel:v74 playbackRoute:0];
    secureSessionAssertionUUID = v16->_secureSessionAssertionUUID;
    v16->_secureSessionAssertionUUID = 0;

    v78 = objc_alloc_init(CSStateCapture);
    stateCapture = v16->_stateCapture;
    v16->_stateCapture = v78;
  }

  return v16;
}

@end