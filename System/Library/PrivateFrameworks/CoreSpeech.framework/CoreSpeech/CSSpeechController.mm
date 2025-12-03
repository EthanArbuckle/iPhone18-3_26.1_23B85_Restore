@interface CSSpeechController
+ (BOOL)isSmartSiriVolumeAvailable;
+ (id)sharedController;
- (AudioStreamBasicDescription)getLPCMAudioStreamBasicDescription;
- (BOOL)_activateAudioSessionWithReason:(unint64_t)reason delay:(double)delay delayRequested:(BOOL)requested error:(id *)error;
- (BOOL)_activateAudioSessionWithReason:(unint64_t)reason error:(id *)error;
- (BOOL)_canDelayStopRecording;
- (BOOL)_canPlayTwoShotFeedbackDuringMediaPlayback;
- (BOOL)_considerSmartRoutingForAudioRecordContext:(id)context;
- (BOOL)_createAudioProviderFromXPCWithContext:(id)context;
- (BOOL)_currentConfigurationSupportsDucking;
- (BOOL)_doActivateAudioSessionWithReason:(unint64_t)reason error:(id *)error;
- (BOOL)_fetchAudioProviderWithContext:(id)context;
- (BOOL)_fetchLastTriggerInfo;
- (BOOL)_isDelayedDuckingSupportedContext;
- (BOOL)_isDuckingAvailableRoute:(id)route;
- (BOOL)_isHubRequestTV;
- (BOOL)_isRecordRouteBuiltinMic;
- (BOOL)_isRecordRouteStudioDisplay;
- (BOOL)_shouldCalculateEstimatedSpeechEndHostTimeFromCachedEPMetrics;
- (BOOL)_shouldResetContextAtPrepare;
- (BOOL)_shouldRunHybridSDSDMitigation;
- (BOOL)_shouldSetStartSampleCount;
- (BOOL)_shouldSetStartSampleCountForRTS;
- (BOOL)_shouldTrackLaunchLatency;
- (BOOL)_shouldUseLanguageDetector:(id)detector;
- (BOOL)_shouldUseSoundPlaybackMonitors;
- (BOOL)_shouldUseSpeakerRecognitionProxy;
- (BOOL)_supportsHybridSDSD;
- (BOOL)initializeRecordSessionWithRecordContext:(id)context;
- (BOOL)isRecording;
- (BOOL)isSmartSiriVolumeAvailable;
- (BOOL)playAlertSoundForType:(int64_t)type;
- (BOOL)playRecordStartingAlertAndResetEndpointerWithAlertOverride:(int64_t)override;
- (BOOL)prepareRecordWithSettings:(id)settings error:(id *)error;
- (BOOL)prewarmAudioSession;
- (BOOL)setCurrentRecordContext:(id)context error:(id *)error;
- (BOOL)startRecordingWithSettings:(id)settings error:(id *)error;
- (CSLanguageDetectorDelegate)languageDetectorDelegate;
- (CSSpeakerIdentificationDelegate)speakerIdDelegate;
- (CSSpeechController)initWithEndpointId:(id)id;
- (CSSpeechController)initWithEndpointId:(id)id xpcClientFactory:(id)factory endpointAnalyzer:(id)analyzer continuousVoiceTrigger:(id)trigger siriVolumeController:(id)controller mediaPlayingMonitor:(id)monitor alarmMonitor:(id)alarmMonitor timerMonitor:(id)self0 audioSessionController:(id)self1 supportPhatic:(BOOL)self2 supportHearstVoiceTrigger:(BOOL)self3 supportTriagleModeSessionActivationRetry:(BOOL)self4 supportSessionActivateDelay:(BOOL)self5 supportsDuckingOnSpeakerEvaluator:(id)self6;
- (CSSpeechControllerDelegate)delegate;
- (float)getVolumeForTTSType:(unint64_t)type;
- (id)_contextToString:(id)string;
- (id)_createAlarmMonitor;
- (id)_createMediaPlayingMonitor;
- (id)_createTimerMonitor;
- (id)_fetchFallbackAudioSessionReleaseProviding;
- (id)_getSerialQueueWithName:(id)name targetQueue:(id)queue;
- (id)_getSpeechIdentifier;
- (id)_languageDetectorOptionFromSettings:(id)settings;
- (id)_mapScoresToSharedSiriId:(id)id;
- (id)_processSpeakerRecognitionResult:(id)result;
- (id)audioDeviceInfo;
- (id)endpointerModelVersion;
- (id)playbackRoute;
- (id)recordDeviceInfo;
- (id)recordRoute;
- (id)recordSettings;
- (id)voiceTriggerInfo;
- (int64_t)_currentAudioRecorderSampleRate;
- (unint64_t)_calculateEstimatedSpeechEndHostTimeWithStopOptions:(id)options;
- (unint64_t)alertStartTime;
- (unint64_t)outputReferenceChannel;
- (void)CSLanguageCodeUpdateMonitor:(id)monitor didReceiveLanguageCodeChanged:(id)changed;
- (void)CSSpeakerRecognitionAssetDownloadMonitor:(id)monitor didInstallNewAsset:(BOOL)asset assetProviderType:(unint64_t)type;
- (void)CSXPCClient:(id)client didDisconnect:(BOOL)disconnect;
- (void)_audioStreamProvider:(id)provider audioBufferAvailable:(id)available;
- (void)_cancelPendingAudioSessionActivateForReason:(id)reason;
- (void)_createAudioPowerMeterIfNeeded;
- (void)_createLanguageDetectorIfNeeded;
- (void)_deviceAudioLoggingWithFileWriter:(id)writer;
- (void)_didStopForReason:(int64_t)reason;
- (void)_fetchMetricsAndLog;
- (void)_initializeAlarmState;
- (void)_initializeMediaPlayingState;
- (void)_initializeTimerState;
- (void)_logRecordingStopErrorIfNeeded:(int64_t)needed;
- (void)_performPendingAudioSessionActivateForReason:(id)reason;
- (void)_refreshSpeakerRecognitionAssets;
- (void)_scheduleActivateAudioSessionWithDelay:(double)delay sessionActivateReason:(unint64_t)reason scheduleReason:(id)scheduleReason validator:(id)validator completion:(id)completion;
- (void)_setAlarmIsPlaying:(BOOL)playing;
- (void)_setSoundPlayingState;
- (void)_setTimerIsPlaying:(BOOL)playing;
- (void)_setupAudioProviderFromXPC:(id)c;
- (void)_setupDownsamplerIfNeeded;
- (void)_setupSpeakerRecognitionController;
- (void)_startFeedbackForTwoShotAtTime:(double)time;
- (void)_startTwoShotFeedbackDecisionForDetectionAtTime:(double)time;
- (void)_teardownAudioProviderIfNeeded;
- (void)_updateRecordContextIfNeeded:(id)needed;
- (void)audioAlertProvidingDidFinishAlertPlayback:(id)playback ofType:(int64_t)type error:(id)error;
- (void)audioConverterDidConvertPackets:(id)packets packets:(id)a4 durationInSec:(float)sec timestamp:(unint64_t)timestamp arrivalTimestampToAudioRecorder:(unint64_t)recorder;
- (void)audioDecoderDidDecodePackets:(id)packets audioStreamHandleId:(unint64_t)id buffer:(id)buffer remoteVAD:(id)d timestamp:(unint64_t)timestamp arrivalTimestampToAudioRecorder:(unint64_t)recorder wasBuffered:(BOOL)buffered receivedNumChannels:(unsigned int)self0;
- (void)audioSessionController:(id)controller didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:(id)info;
- (void)audioSessionProvider:(id)provider didChangeContext:(BOOL)context;
- (void)audioSessionProvider:(id)provider didSetAudioSessionActive:(BOOL)active;
- (void)audioSessionProvider:(id)provider providerInvalidated:(BOOL)invalidated;
- (void)audioSessionProvider:(id)provider willSetAudioSessionActive:(BOOL)active;
- (void)audioSessionProviderBeginInterruption:(id)interruption;
- (void)audioSessionProviderBeginInterruption:(id)interruption withContext:(id)context;
- (void)audioSessionProviderEndInterruption:(id)interruption;
- (void)audioStreamProvider:(id)provider audioBufferAvailable:(id)available;
- (void)audioStreamProvider:(id)provider audioChunkForTVAvailable:(id)available;
- (void)audioStreamProvider:(id)provider didHardwareConfigurationChange:(int64_t)change;
- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly;
- (void)beginWaitingForMyriad;
- (void)cancelCurrentLanguageDetectorRequest;
- (void)clockAlarmObserver:(id)observer alarmDidDismiss:(id)dismiss;
- (void)clockAlarmObserver:(id)observer alarmDidFire:(id)fire;
- (void)clockTimerObserver:(id)observer timerDidDismiss:(id)dismiss;
- (void)clockTimerObserver:(id)observer timerDidFire:(id)fire;
- (void)continuousVoiceTrigger:(id)trigger detectedSilenceAfterVoiceTriggerAt:(double)at;
- (void)continuousVoiceTrigger:(id)trigger detectedVoiceTriggerResult:(id)result;
- (void)detectedTwoShotAtTime:(double)time;
- (void)didFinishSpeakerRecognition:(id)recognition;
- (void)didReceiveSpeakerRecognitionScoreCard:(id)card;
- (void)didTTSVolumeChange:(id)change forReason:(unint64_t)reason;
- (void)endWaitingForMyriadWithDecision:(unint64_t)decision;
- (void)fetchAudioMetricsWithCompletion:(id)completion;
- (void)getMitigationDecisionForRCId:(unint64_t)id requestId:(id)requestId completion:(id)completion;
- (void)handleStopRecordingRequestWithOptions:(id)options;
- (void)keywordDetectorDidDetectKeyword;
- (void)nowPlayingObserver:(id)observer playbackStateDidChangeFrom:(int64_t)from to:(int64_t)to lastPlayingDate:(id)date;
- (void)preheat;
- (void)releaseAudioSession;
- (void)releaseAudioSession:(unint64_t)session;
- (void)reset;
- (void)resetAudioSession;
- (void)setLanguageDetectorInteractionID:(id)d;
- (void)setSmartSiriVolumePercentage:(float)percentage;
- (void)speakerRecognitionController:(id)controller hasSpeakerInfo:(id)info;
- (void)speakerRecognitionFinishedProcessing:(id)processing withFinalSpeakerInfo:(id)info;
- (void)startController;
- (void)stopRecordingWithOptions:(id)options;
- (void)voiceTriggerAssetHandler:(id)handler endpointId:(id)id didChangeCachedAsset:(id)asset;
@end

@implementation CSSpeechController

- (BOOL)_shouldResetContextAtPrepare
{
  xpcClient = self->_xpcClient;
  if (xpcClient)
  {
    return ![(CSXPCClient *)xpcClient isConnected];
  }

  else
  {
    return 1;
  }
}

- (id)audioDeviceInfo
{
  v13 = *MEMORY[0x277D85DE8];
  streamProvider = [(CSSpeechController *)self streamProvider];
  audioDeviceInfo = [streamProvider audioDeviceInfo];

  v4 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [audioDeviceInfo description];
    v9 = 136315394;
    v10 = "[CSSpeechController audioDeviceInfo]";
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];

  return audioDeviceInfo;
}

- (unint64_t)alertStartTime
{
  alertProvider = [(CSSpeechController *)self alertProvider];
  alertStartTime = [alertProvider alertStartTime];

  return alertStartTime;
}

- (BOOL)_isHubRequestTV
{
  v3 = CSIsTV();
  if (v3)
  {
    LOBYTE(v3) = self->_endpointId == 0;
  }

  return v3;
}

- (id)recordSettings
{
  v28[6] = *MEMORY[0x277D85DE8];
  if ([(CSSpeechController *)self _isHubRequestTV])
  {
    streamProvider = [(CSSpeechController *)self streamProvider];
    recordSettings = [streamProvider recordSettings];
  }

  else
  {
    v5 = *MEMORY[0x277CB8280];
    if (self->_isNarrowBand)
    {
      v28[0] = &unk_283667268;
      v6 = *MEMORY[0x277CB82E0];
      v27[0] = v5;
      v27[1] = v6;
      v7 = MEMORY[0x277CCABB0];
      [MEMORY[0x277D016E0] inputRecordingSampleRateNarrowBand];
      streamProvider = [v7 numberWithFloat:?];
      v28[1] = streamProvider;
      v27[2] = *MEMORY[0x277CB8288];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(MEMORY[0x277D016E0], "inputRecordingSampleBitDepth")}];
      v9 = *MEMORY[0x277CB82A0];
      v28[2] = v8;
      v28[3] = MEMORY[0x277CBEC28];
      v10 = *MEMORY[0x277CB82B0];
      v27[3] = v9;
      v27[4] = v10;
      v27[5] = *MEMORY[0x277CB82C0];
      v11 = *MEMORY[0x277CB82D0];
      v28[4] = &unk_283667280;
      v28[5] = v11;
      v12 = MEMORY[0x277CBEAC0];
      v13 = v28;
      v14 = v27;
    }

    else
    {
      v26[0] = &unk_283667268;
      v15 = *MEMORY[0x277CB82E0];
      v25[0] = v5;
      v25[1] = v15;
      v16 = MEMORY[0x277CCABB0];
      [MEMORY[0x277D016E0] inputRecordingSampleRate];
      streamProvider = [v16 numberWithFloat:?];
      v26[1] = streamProvider;
      v25[2] = *MEMORY[0x277CB8288];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(MEMORY[0x277D016E0], "inputRecordingSampleBitDepth")}];
      v17 = *MEMORY[0x277CB82A0];
      v26[2] = v8;
      v26[3] = MEMORY[0x277CBEC28];
      v18 = *MEMORY[0x277CB82B0];
      v25[3] = v17;
      v25[4] = v18;
      v25[5] = *MEMORY[0x277CB82C0];
      v19 = *MEMORY[0x277CB82D0];
      v26[4] = &unk_283667280;
      v26[5] = v19;
      v12 = MEMORY[0x277CBEAC0];
      v13 = v26;
      v14 = v25;
    }

    recordSettings = [v12 dictionaryWithObjects:v13 forKeys:v14 count:6];
  }

  if (self->_supportPhatic)
  {
    v20 = [recordSettings mutableCopy];
    v21 = self->_isMediaPlaying || self->_isTimerPlaying || self->_isAlarmPlaying;
    v22 = [MEMORY[0x277CCABB0] numberWithInt:v21];
    [v20 setObject:v22 forKey:@"CSSpeechRecordSettingsKey_isDucking"];
  }

  else
  {
    v20 = recordSettings;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)_createAudioPowerMeterIfNeeded
{
  v17 = *MEMORY[0x277D85DE8];
  if (CSIsTV() && ![(CSAudioRecordContext *)self->_audioRecordContext isTriggeredFromHearst])
  {
    v8 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      recordRoute = [(CSSpeechController *)self recordRoute];
      v13 = 136315394;
      v14 = "[CSSpeechController _createAudioPowerMeterIfNeeded]";
      v15 = 2114;
      v16 = recordRoute;
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s We don't need Audio Power Meter with record route %{public}@", &v13, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v3 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      recordRoute2 = [(CSSpeechController *)self recordRoute];
      v13 = 136315394;
      v14 = "[CSSpeechController _createAudioPowerMeterIfNeeded]";
      v15 = 2114;
      v16 = recordRoute2;
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s Creating Audio Power Meter with record route %{public}@", &v13, 0x16u);
    }

    v6 = objc_alloc(MEMORY[0x277D01630]);
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    v7 = [v6 initWithSampleRate:?];
  }

  powerMeter = self->_powerMeter;
  self->_powerMeter = v7;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)recordRoute
{
  v11 = *MEMORY[0x277D85DE8];
  streamProvider = [(CSSpeechController *)self streamProvider];
  recordRoute = [streamProvider recordRoute];

  v4 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSSpeechController recordRoute]";
    v9 = 2114;
    v10 = recordRoute;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];

  return recordRoute;
}

- (BOOL)_currentConfigurationSupportsDucking
{
  v20 = *MEMORY[0x277D85DE8];
  streamProvider = [(CSSpeechController *)self streamProvider];

  if (streamProvider)
  {
    streamProvider2 = [(CSSpeechController *)self streamProvider];
    v15 = 0;
    v5 = [streamProvider2 supportsDuckingOnCurrentRouteWithError:&v15];
    v6 = v15;

    v7 = MEMORY[0x277D015C0];
    v8 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[CSSpeechController _currentConfigurationSupportsDucking]";
      v18 = 1026;
      LODWORD(v19) = v5;
      _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s ConfigSupportsDucking: %{public}d", buf, 0x12u);
    }

    if (v6)
    {
      v9 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        v13 = v9;
        localizedDescription = [v6 localizedDescription];
        *buf = 136315394;
        v17 = "[CSSpeechController _currentConfigurationSupportsDucking]";
        v18 = 2112;
        v19 = localizedDescription;
        _os_log_error_impl(&dword_222E4D000, v13, OS_LOG_TYPE_ERROR, "%s Failed due to error %@.", buf, 0x16u);
      }
    }
  }

  else
  {
    v10 = *MEMORY[0x277D015C0];
    LOBYTE(v5) = 0;
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[CSSpeechController _currentConfigurationSupportsDucking]";
      _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_DEFAULT, "%s Stream provider does not exist", buf, 0xCu);
      LOBYTE(v5) = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_isDelayedDuckingSupportedContext
{
  if (([(CSAudioRecordContext *)self->_audioRecordContext isVoiceTriggered]& 1) != 0 || ([(CSAudioRecordContext *)self->_audioRecordContext isServerInvoked]& 1) != 0 || ([(CSAudioRecordContext *)self->_audioRecordContext isHomePressed]& 1) != 0)
  {
    return 1;
  }

  audioRecordContext = self->_audioRecordContext;

  return [(CSAudioRecordContext *)audioRecordContext isTVRemote];
}

+ (BOOL)isSmartSiriVolumeAvailable
{
  if (CSIsHorseman())
  {
    return 1;
  }

  return CSIsHorsemanJunior();
}

- (CSSpeakerIdentificationDelegate)speakerIdDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_speakerIdDelegate);

  return WeakRetained;
}

- (CSLanguageDetectorDelegate)languageDetectorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_languageDetectorDelegate);

  return WeakRetained;
}

- (CSSpeechControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_fetchMetricsAndLog
{
  if (arc4random_uniform(0x64u) <= 9)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:self->_requestMHUUID];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__CSSpeechController__fetchMetricsAndLog__block_invoke;
    v5[3] = &unk_2784C3FF8;
    v6 = v3;
    v4 = v3;
    [(CSSpeechController *)self fetchAudioMetricsWithCompletion:v5];
  }
}

void __41__CSSpeechController__fetchMetricsAndLog__block_invoke(uint64_t a1, void *a2)
{
  v22 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v22;
  if (isKindOfClass)
  {
    v5 = [v22 objectForKey:*MEMORY[0x277CB8328]];
    objc_opt_class();
    v6 = objc_opt_isKindOfClass();
    v7 = MEMORY[0x277CB8338];
    v8 = MEMORY[0x277CB8340];
    if (v6)
    {
      v9 = [v5 objectForKey:*MEMORY[0x277CB8338]];
      v10 = [v5 objectForKey:*v8];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v9 unsignedLongLongValue];
          v12 = [v10 unsignedLongLongValue];
          if (v11)
          {
            if (v12)
            {
              v13 = [MEMORY[0x277D01738] sharedLogger];
              [v13 logMHAssistantDaemonAudioSessionSetActivateContextWithMHUUID:*(a1 + 32) withSetActivateStarted:1];

              v14 = [MEMORY[0x277D01738] sharedLogger];
              [v14 logMHAssistantDaemonAudioSessionSetActivateContextWithMHUUID:*(a1 + 32) withSetActivateStarted:0];
            }
          }
        }
      }
    }

    v15 = [v22 objectForKey:*MEMORY[0x277CB8330]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 objectForKey:*v7];
      v17 = [v15 objectForKey:*v8];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [v16 unsignedLongLongValue];
          v19 = [v17 unsignedLongLongValue];
          if (v18)
          {
            if (v19)
            {
              v20 = [MEMORY[0x277D01738] sharedLogger];
              [v20 logMHAssistantDaemonAudioSessionSetInactiveWithMHUUID:*(a1 + 32) withSetInactiveStarted:1];

              v21 = [MEMORY[0x277D01738] sharedLogger];
              [v21 logMHAssistantDaemonAudioSessionSetInactiveWithMHUUID:*(a1 + 32) withSetInactiveStarted:0];
            }
          }
        }
      }
    }

    v4 = v22;
  }
}

- (void)clockTimerObserver:(id)observer timerDidDismiss:(id)dismiss
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CSSpeechController_clockTimerObserver_timerDidDismiss___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __57__CSSpeechController_clockTimerObserver_timerDidDismiss___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSSpeechController clockTimerObserver:timerDidDismiss:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Timer dismissed", &v5, 0xCu);
  }

  result = [*(a1 + 32) _setTimerIsPlaying:0];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)clockTimerObserver:(id)observer timerDidFire:(id)fire
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CSSpeechController_clockTimerObserver_timerDidFire___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __54__CSSpeechController_clockTimerObserver_timerDidFire___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSSpeechController clockTimerObserver:timerDidFire:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Timer firing", &v5, 0xCu);
  }

  result = [*(a1 + 32) _setTimerIsPlaying:1];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)clockAlarmObserver:(id)observer alarmDidDismiss:(id)dismiss
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CSSpeechController_clockAlarmObserver_alarmDidDismiss___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __57__CSSpeechController_clockAlarmObserver_alarmDidDismiss___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSSpeechController clockAlarmObserver:alarmDidDismiss:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Alarm dismissed", &v5, 0xCu);
  }

  result = [*(a1 + 32) _setAlarmIsPlaying:0];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)clockAlarmObserver:(id)observer alarmDidFire:(id)fire
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CSSpeechController_clockAlarmObserver_alarmDidFire___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __54__CSSpeechController_clockAlarmObserver_alarmDidFire___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSSpeechController clockAlarmObserver:alarmDidFire:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Alarm firing", &v5, 0xCu);
  }

  result = [*(a1 + 32) _setAlarmIsPlaying:1];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)nowPlayingObserver:(id)observer playbackStateDidChangeFrom:(int64_t)from to:(int64_t)to lastPlayingDate:(id)date
{
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__CSSpeechController_nowPlayingObserver_playbackStateDidChangeFrom_to_lastPlayingDate___block_invoke;
  v7[3] = &unk_2784C6EC0;
  v7[4] = self;
  v7[5] = to;
  dispatch_async(queue, v7);
}

uint64_t __87__CSSpeechController_nowPlayingObserver_playbackStateDidChangeFrom_to_lastPlayingDate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v9 = 136315394;
    v10 = "[CSSpeechController nowPlayingObserver:playbackStateDidChangeFrom:to:lastPlayingDate:]_block_invoke";
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Now Playing State has changed %d", &v9, 0x12u);
  }

  v4 = *(a1 + 40);
  if (v4 == 4)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = v4 == 1;
    v6 = 0;
  }

  result = [*(a1 + 32) _setMediaPlaybackState:v5 isInterrupted:v6];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_setTimerIsPlaying:(BOOL)playing
{
  playingCopy = playing;
  v16 = *MEMORY[0x277D85DE8];
  self->_isTimerPlaying = playing;
  v5 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    endpointId = self->_endpointId;
    v10 = 136315651;
    v11 = "[CSSpeechController _setTimerIsPlaying:]";
    v12 = 1026;
    v13 = playingCopy;
    v14 = 2113;
    v15 = endpointId;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Timer is playing: %{public}d on accessory: %{private}@", &v10, 0x1Cu);
  }

  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  uUIDString = [(NSUUID *)self->_endpointId UUIDString];
  [mEMORY[0x277D01788] setIsTimerPlayingOnAccessory:uUIDString isTimerPlaying:self->_isTimerPlaying];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setAlarmIsPlaying:(BOOL)playing
{
  playingCopy = playing;
  v16 = *MEMORY[0x277D85DE8];
  self->_isAlarmPlaying = playing;
  v5 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    endpointId = self->_endpointId;
    v10 = 136315651;
    v11 = "[CSSpeechController _setAlarmIsPlaying:]";
    v12 = 1026;
    v13 = playingCopy;
    v14 = 2113;
    v15 = endpointId;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Alarm is playing: %{public}d on accessory: %{private}@", &v10, 0x1Cu);
  }

  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  uUIDString = [(NSUUID *)self->_endpointId UUIDString];
  [mEMORY[0x277D01788] setIsAlarmPlayingOnAccessory:uUIDString isAlarmPlaying:self->_isAlarmPlaying];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_teardownAudioProviderIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_contextResetQueue);
  xpcClient = self->_xpcClient;
  if (xpcClient)
  {
    [(CSXPCClient *)xpcClient disconnect];
    v4 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[CSSpeechController _teardownAudioProviderIfNeeded]";
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }

    [(CSSpeechController *)self setStreamProvider:0];
    [(CSSpeechController *)self setSessionProvider:0];
    [(CSSpeechController *)self setAlertProvider:0];
    [(CSSpeechController *)self setAudioMeterProvider:0];
    [(CSSpeechController *)self setAudioMetricProvider:0];
    [(CSSpeechController *)self setAudioStream:0];
    [(CSContinuousVoiceTrigger *)self->_continuousVoiceTrigger setAudioTimeConverter:0];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__CSSpeechController__teardownAudioProviderIfNeeded__block_invoke;
    block[3] = &unk_2784C6FD0;
    block[4] = self;
    dispatch_async(queue, block);
  }

  duckAudioXPCClient = self->_duckAudioXPCClient;
  if (duckAudioXPCClient)
  {
    [(CSXPCClient *)duckAudioXPCClient setDelegate:0];
    [(CSXPCClient *)self->_duckAudioXPCClient disconnect];
    v7 = self->_duckAudioXPCClient;
    self->_duckAudioXPCClient = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)CSLanguageCodeUpdateMonitor:(id)monitor didReceiveLanguageCodeChanged:(id)changed
{
  v14 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v6 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSSpeechController CSLanguageCodeUpdateMonitor:didReceiveLanguageCodeChanged:]";
    v12 = 2114;
    v13 = changedCopy;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s _currentLanguageCode changed: %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__CSSpeechController_CSLanguageCodeUpdateMonitor_didReceiveLanguageCodeChanged___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)CSXPCClient:(id)client didDisconnect:(BOOL)disconnect
{
  clientCopy = client;
  contextResetQueue = self->_contextResetQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CSSpeechController_CSXPCClient_didDisconnect___block_invoke;
  block[3] = &unk_2784C6FA8;
  v11 = clientCopy;
  selfCopy = self;
  v7 = clientCopy;
  dispatch_async(contextResetQueue, block);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__CSSpeechController_CSXPCClient_didDisconnect___block_invoke_373;
  v9[3] = &unk_2784C6FD0;
  v9[4] = self;
  dispatch_async(queue, v9);
}

void __48__CSSpeechController_CSXPCClient_didDisconnect___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D015C0];
  v3 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSSpeechController CSXPCClient:didDisconnect:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s XPCConnection disconnected", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  if (*(a1 + 32) == v4[43])
  {
    v5 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSSpeechController CSXPCClient:didDisconnect:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s reset audioProvider since xpcClient disconnected", &v7, 0xCu);
      v4 = *(a1 + 40);
    }

    [v4 _teardownAudioProviderIfNeeded];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)voiceTriggerAssetHandler:(id)handler endpointId:(id)id didChangeCachedAsset:(id)asset
{
  handlerCopy = handler;
  idCopy = id;
  assetCopy = asset;
  endpointId = self->_endpointId;
  if (endpointId)
  {
    uUIDString = [(NSUUID *)endpointId UUIDString];
    if ([uUIDString isEqualToString:idCopy])
    {

LABEL_7:
      [(CSContinuousVoiceTrigger *)self->_continuousVoiceTrigger setAsset:assetCopy];
      queue = self->_queue;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __79__CSSpeechController_voiceTriggerAssetHandler_endpointId_didChangeCachedAsset___block_invoke;
      v15[3] = &unk_2784C6FA8;
      v15[4] = self;
      v16 = assetCopy;
      dispatch_async(queue, v15);

      goto LABEL_8;
    }

    v13 = idCopy | self->_endpointId;

    if (!v13)
    {
      goto LABEL_7;
    }
  }

  else if (!idCopy)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)CSSpeakerRecognitionAssetDownloadMonitor:(id)monitor didInstallNewAsset:(BOOL)asset assetProviderType:(unint64_t)type
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__CSSpeechController_CSSpeakerRecognitionAssetDownloadMonitor_didInstallNewAsset_assetProviderType___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __100__CSSpeechController_CSSpeakerRecognitionAssetDownloadMonitor_didInstallNewAsset_assetProviderType___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _refreshSpeakerRecognitionAssets];
  v2 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 456);
    v5 = 136315394;
    v6 = "[CSSpeechController CSSpeakerRecognitionAssetDownloadMonitor:didInstallNewAsset:assetProviderType:]_block_invoke";
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Received SSR asset download notification, updated asset cache to %{public}@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_mapScoresToSharedSiriId:(id)id
{
  v39 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = MEMORY[0x277CBEB38];
  if ([idCopy count])
  {
    v6 = [idCopy count];
  }

  else
  {
    v6 = 1;
  }

  v7 = [v5 dictionaryWithCapacity:v6];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = idCopy;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v31;
    *&v10 = 136315394;
    v29 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = [v8 objectForKeyedSubscript:{v14, v29, v30}];
        [v15 floatValue];
        v17 = v16;

        if (v17 <= 1.0)
        {
          v18 = v17;
        }

        else
        {
          v18 = 1.0;
        }

        if (v18 < 0.0)
        {
          v18 = 0.0;
        }

        v19 = vcvtpd_s64_f64(v18 * 100.0);
        v20 = [(SSRVoiceProfileManager *)self->_voiceProfileManager voiceProfileForId:v14];
        v21 = v20;
        if (v20)
        {
          siriProfileId = [v20 siriProfileId];

          v23 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
          if (siriProfileId)
          {
            siriProfileId2 = [v21 siriProfileId];
            [v7 setObject:v23 forKey:siriProfileId2];

            goto LABEL_21;
          }
        }

        else
        {
          v25 = *MEMORY[0x277D015C0];
          if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v29;
            v35 = "[CSSpeechController _mapScoresToSharedSiriId:]";
            v36 = 2112;
            v37 = v14;
            _os_log_impl(&dword_222E4D000, v25, OS_LOG_TYPE_DEFAULT, "%s Voice Profile for profileID %@ not found", buf, 0x16u);
          }

          v23 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
        }

        [v7 setObject:v23 forKey:v14];
LABEL_21:
      }

      v11 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v11);
  }

  v26 = [v7 copy];
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_processSpeakerRecognitionResult:(id)result
{
  v28 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v5 = [resultCopy mutableCopy];
  v6 = *MEMORY[0x277D654D0];
  v7 = [resultCopy objectForKeyedSubscript:*MEMORY[0x277D654D0]];

  v8 = [(CSSpeechController *)self _mapScoresToSharedSiriId:v7];

  if (v8)
  {
    v9 = [CSUserIdentityClassifier pickTopScoringProfileIdFromScores:v8];
    if (v9)
    {
      [v5 setObject:v9 forKeyedSubscript:@"userClassified"];
    }

    else
    {
      v10 = *MEMORY[0x277D015C0];
      if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_ERROR))
      {
        v24 = 136315394;
        v25 = "[CSSpeechController _processSpeakerRecognitionResult:]";
        v26 = 2114;
        v27 = v8;
        _os_log_error_impl(&dword_222E4D000, v10, OS_LOG_TYPE_ERROR, "%s ERR: Failed to get classified user from %{public}@", &v24, 0x16u);
      }
    }

    v11 = *MEMORY[0x277D01CF8];
    v12 = [(NSDictionary *)self->_lastVoiceTriggerInfo objectForKey:*MEMORY[0x277D01CF8]];
    if (v12)
    {
      v13 = [(NSDictionary *)self->_lastVoiceTriggerInfo objectForKeyedSubscript:v11];
      integerValue = [v13 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    v15 = [CSUserIdentityClassifier classifyUserIdentityFor:v9 withScores:v8 withAsset:self->_asset withPhId:integerValue];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
    [v5 setObject:v16 forKeyedSubscript:@"userIdentityClassification"];

    [v5 setObject:v8 forKeyedSubscript:v6];
  }

  if (self->_mediaPlayingMonitor)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMediaPlaying];
    [v5 setObject:v17 forKeyedSubscript:@"mediaPlayState"];
  }

  else
  {
    [v5 setObject:&unk_283667298 forKeyedSubscript:@"mediaPlayState"];
  }

  volumeMonitor = self->_volumeMonitor;
  if (volumeMonitor)
  {
    v19 = MEMORY[0x277CCABB0];
    [(CSVolumeMonitor *)volumeMonitor musicVolume];
    v20 = [v19 numberWithFloat:?];
    [v5 setObject:v20 forKeyedSubscript:@"musicVolume"];
  }

  else
  {
    [v5 setObject:&unk_283667298 forKeyedSubscript:@"musicVolume"];
  }

  v21 = [v5 copy];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)didFinishSpeakerRecognition:(id)recognition
{
  recognitionCopy = recognition;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__CSSpeechController_didFinishSpeakerRecognition___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = recognitionCopy;
  v6 = recognitionCopy;
  dispatch_async(queue, v7);
}

void __50__CSSpeechController_didFinishSpeakerRecognition___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  if (WeakRetained)
  {
    v3 = *(*(a1 + 32) + 118);

    if (v3 == 1)
    {
      v4 = *MEMORY[0x277D015C0];
      if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v13 = 136315394;
        v14 = "[CSSpeechController didFinishSpeakerRecognition:]_block_invoke";
        v15 = 2114;
        v16 = v5;
        _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s SSR Final ScoreCard - %{public}@", &v13, 0x16u);
      }

      v6 = objc_loadWeakRetained((*(a1 + 32) + 160));
      [v6 speakerIdentificationDidDetectSpeakerWithScores:*(a1 + 40)];
      goto LABEL_8;
    }
  }

  v7 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v6 = v7;
    v9 = objc_loadWeakRetained((v8 + 160));
    v10 = *(*(a1 + 32) + 118);
    v13 = 136315650;
    v14 = "[CSSpeechController didFinishSpeakerRecognition:]_block_invoke";
    v15 = 2112;
    v16 = v9;
    v17 = 1024;
    v18 = v10;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s Discarded speakerId scores for {%@, %d} activation", &v13, 0x1Cu);

LABEL_8:
  }

  [*(*(a1 + 32) + 232) addContextKey:@"multiuser" withContext:*(a1 + 40)];
  v11 = +[CSP2PService sharedInstance];
  [v11 sendCoreSpeechGradingDataToNearbyPeer];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveSpeakerRecognitionScoreCard:(id)card
{
  cardCopy = card;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__CSSpeechController_didReceiveSpeakerRecognitionScoreCard___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = cardCopy;
  v6 = cardCopy;
  dispatch_async(queue, v7);
}

void __60__CSSpeechController_didReceiveSpeakerRecognitionScoreCard___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  if (WeakRetained && (v3 = *(*(a1 + 32) + 118), WeakRetained, v3 == 1))
  {
    v11 = objc_loadWeakRetained((*(a1 + 32) + 160));
    [v11 speakerIdentificationDidDetectSpeakerWithScores:*(a1 + 40)];
    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = objc_loadWeakRetained((v6 + 160));
      v9 = *(*(a1 + 32) + 118);
      *buf = 136315650;
      v13 = "[CSSpeechController didReceiveSpeakerRecognitionScoreCard:]_block_invoke";
      v14 = 2112;
      v15 = v8;
      v16 = 1024;
      v17 = v9;
      _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s Discarded speakerId scores for {%@, %d} activation", buf, 0x1Cu);
    }

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (void)speakerRecognitionFinishedProcessing:(id)processing withFinalSpeakerInfo:(id)info
{
  processingCopy = processing;
  infoCopy = info;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__CSSpeechController_speakerRecognitionFinishedProcessing_withFinalSpeakerInfo___block_invoke;
  block[3] = &unk_2784C6EE8;
  block[4] = self;
  v12 = processingCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = processingCopy;
  dispatch_async(queue, block);
}

void __80__CSSpeechController_speakerRecognitionFinishedProcessing_withFinalSpeakerInfo___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v2[54];
  if (v4 != v3)
  {
    v5 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v30 = 136315650;
      v31 = "[CSSpeechController speakerRecognitionFinishedProcessing:withFinalSpeakerInfo:]_block_invoke";
      v32 = 2114;
      v33 = v4;
      v34 = 2114;
      v35 = v3;
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s SpeakerIdInfo from incorrect SpeakerRecognizer: expected: %{public}@, spkrRecognizer: %{public}@", &v30, 0x20u);
    }

    goto LABEL_15;
  }

  v6 = [v2 _processSpeakerRecognitionResult:*(a1 + 48)];
  v7 = *(a1 + 32);
  v8 = *(v7 + 264);
  *(v7 + 264) = v6;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  if (WeakRetained)
  {
    v10 = *(*(a1 + 32) + 118);

    if (v10 == 1)
    {
      v11 = [*(*(a1 + 32) + 264) objectForKeyedSubscript:@"userIdentityClassification"];
      v12 = [v11 unsignedIntValue];

      v13 = *MEMORY[0x277D015C8];
      if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        v14 = v12;
        v15 = v13;
        v16 = [CSUserIdentityClassifier stringFromClassificationCategory:v14];
        v17 = [*(*(a1 + 32) + 264) objectForKeyedSubscript:@"userClassified"];
        v18 = [*(*(a1 + 32) + 264) objectForKeyedSubscript:*MEMORY[0x277D654D0]];
        v30 = 136315906;
        v31 = "[CSSpeechController speakerRecognitionFinishedProcessing:withFinalSpeakerInfo:]_block_invoke";
        v32 = 2114;
        v33 = v16;
        v34 = 2114;
        v35 = v17;
        v36 = 2114;
        v37 = v18;
        _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_DEFAULT, "%s UserClassification: %{public}@ UserIdentified: %{public}@ Scores: %{public}@", &v30, 0x2Au);
      }

      v19 = objc_loadWeakRetained((*(a1 + 32) + 160));
      v20 = [*(*(a1 + 32) + 264) copy];
      [v19 speakerIdentificationDidDetectSpeakerWithScores:v20];
      goto LABEL_11;
    }
  }

  v21 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 32);
    v19 = v21;
    v20 = objc_loadWeakRetained((v22 + 160));
    v23 = *(*(a1 + 32) + 118);
    v30 = 136315650;
    v31 = "[CSSpeechController speakerRecognitionFinishedProcessing:withFinalSpeakerInfo:]_block_invoke";
    v32 = 2112;
    v33 = v20;
    v34 = 1024;
    LODWORD(v35) = v23;
    _os_log_impl(&dword_222E4D000, v19, OS_LOG_TYPE_DEFAULT, "%s Discarded speakerId scores for {%@, %d} activation", &v30, 0x1Cu);
LABEL_11:
  }

  v24 = *MEMORY[0x277D654D8];
  v25 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277D654D8]];

  if (v25)
  {
    v26 = *(*(a1 + 32) + 232);
    v27 = [*(a1 + 48) objectForKeyedSubscript:v24];
    [v26 addContextKey:@"ssrmeta" fromMetaFile:v27];
  }

  [*(*(a1 + 32) + 232) addContextKey:@"multiuser" withContext:*(*(a1 + 32) + 264)];
  v28 = +[CSP2PService sharedInstance];
  [v28 sendCoreSpeechGradingDataToNearbyPeer];

LABEL_15:
  v29 = *MEMORY[0x277D85DE8];
}

- (void)speakerRecognitionController:(id)controller hasSpeakerInfo:(id)info
{
  controllerCopy = controller;
  infoCopy = info;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__CSSpeechController_speakerRecognitionController_hasSpeakerInfo___block_invoke;
  block[3] = &unk_2784C6EE8;
  block[4] = self;
  v12 = controllerCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = controllerCopy;
  dispatch_async(queue, block);
}

void __66__CSSpeechController_speakerRecognitionController_hasSpeakerInfo___block_invoke(void *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = v2[54];
  if (v4 == v3)
  {
    v6 = [v2 _processSpeakerRecognitionResult:a1[6]];
    v7 = a1[4];
    v8 = *(v7 + 264);
    *(v7 + 264) = v6;

    v9 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1[4] + 264);
      v28 = 136315394;
      v29 = "[CSSpeechController speakerRecognitionController:hasSpeakerInfo:]_block_invoke";
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s _speakerRecognitionScores:%@", &v28, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1[4] + 160));
    if (WeakRetained && (v12 = *(a1[4] + 118), WeakRetained, v12 == 1))
    {
      v13 = [*(a1[4] + 264) objectForKeyedSubscript:@"userIdentityClassification"];
      v14 = [v13 unsignedIntValue];

      v15 = *MEMORY[0x277D015C8];
      if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        v16 = v14;
        v17 = v15;
        v18 = [CSUserIdentityClassifier stringFromClassificationCategory:v16];
        v19 = [*(a1[4] + 264) objectForKeyedSubscript:@"userClassified"];
        v20 = [*(a1[4] + 264) objectForKeyedSubscript:*MEMORY[0x277D654D0]];
        v28 = 136315906;
        v29 = "[CSSpeechController speakerRecognitionController:hasSpeakerInfo:]_block_invoke";
        v30 = 2114;
        v31 = v18;
        v32 = 2114;
        v33 = v19;
        v34 = 2114;
        v35 = v20;
        _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_DEFAULT, "%s UserClassification: %{public}@ UserIdentified: %{public}@ Scores: %{public}@", &v28, 0x2Au);
      }

      v21 = objc_loadWeakRetained((a1[4] + 160));
      v22 = [*(a1[4] + 264) copy];
      [v21 speakerIdentificationDidDetectSpeakerWithScores:v22];
    }

    else
    {
      v23 = *MEMORY[0x277D015C8];
      if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v24 = a1[4];
      v21 = v23;
      v25 = objc_loadWeakRetained((v24 + 160));
      v26 = *(a1[4] + 118);
      v28 = 136315650;
      v29 = "[CSSpeechController speakerRecognitionController:hasSpeakerInfo:]_block_invoke";
      v30 = 2112;
      v31 = v25;
      v32 = 1024;
      LODWORD(v33) = v26;
      _os_log_impl(&dword_222E4D000, v21, OS_LOG_TYPE_DEFAULT, "%s Discarded speakerId scores for {%@, %d} activation", &v28, 0x1Cu);
    }

    goto LABEL_14;
  }

  v5 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136315650;
    v29 = "[CSSpeechController speakerRecognitionController:hasSpeakerInfo:]_block_invoke";
    v30 = 2114;
    v31 = v4;
    v32 = 2114;
    v33 = v3;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s SpeakerIdInfo from incorrect SpeakerRecognizer: expected: %{public}@, spkrRecognizer: %{public}@", &v28, 0x20u);
  }

LABEL_14:
  v27 = *MEMORY[0x277D85DE8];
}

- (void)_setSoundPlayingState
{
  v18 = *MEMORY[0x277D85DE8];
  isMediaPlaying = self->_isMediaPlaying;
  isAlarmPlaying = self->_isAlarmPlaying;
  isTimerPlaying = self->_isTimerPlaying;
  self->_isSoundPlaying = isAlarmPlaying || isMediaPlaying || isTimerPlaying;
  v5 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = @" NOT";
    v8 = 136316162;
    v9 = "[CSSpeechController _setSoundPlayingState]";
    v10 = 2114;
    if (isAlarmPlaying || isMediaPlaying || isTimerPlaying)
    {
      v6 = &stru_28363DA48;
    }

    v11 = v6;
    v12 = 1024;
    v13 = isMediaPlaying;
    v14 = 1024;
    v15 = isAlarmPlaying;
    v16 = 1024;
    v17 = isTimerPlaying;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Detected sound is%{public}@ playing: media(%d) alarm(%d) timer(%d)", &v8, 0x28u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)endWaitingForMyriadWithDecision:(unint64_t)decision
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSSpeechController endWaitingForMyriadWithDecision:]";
    v9 = 2048;
    decisionCopy = decision;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Received Myriad finished with decision: %tu", &v7, 0x16u);
  }

  if ([MEMORY[0x277D018F8] shouldDelayTwoShotFeedbackForMyriadDecision])
  {
    self->_myriadPreventingTwoShotFeedback = decision > 1;
    dispatch_group_leave(self->_twoShotAudibleFeedbackDecisionGroup);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)beginWaitingForMyriad
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSSpeechController beginWaitingForMyriad]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s Received Myriad started", &v5, 0xCu);
  }

  if ([MEMORY[0x277D018F8] shouldDelayTwoShotFeedbackForMyriadDecision])
  {
    dispatch_group_enter(self->_twoShotAudibleFeedbackDecisionGroup);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setLanguageDetectorInteractionID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__CSSpeechController_setLanguageDetectorInteractionID___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

- (void)cancelCurrentLanguageDetectorRequest
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CSSpeechController_cancelCurrentLanguageDetectorRequest__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __58__CSSpeechController_cancelCurrentLanguageDetectorRequest__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSSpeechController cancelCurrentLanguageDetectorRequest]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Cancelling current language detector request !", &v5, 0xCu);
  }

  *(*(a1 + 32) + 130) = 0;
  result = [*(*(a1 + 32) + 304) cancelCurrentRequest];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setSmartSiriVolumePercentage:(float)percentage
{
  if (!self->_endpointId)
  {
    [(CSSmartSiriVolumeController *)self->_volumeController setSmartSiriVolumePercentage:?];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained speechControllerDidUpdateSmartSiriVolume:self forReason:4];
  }
}

- (float)getVolumeForTTSType:(unint64_t)type
{
  if (self->_endpointId)
  {
    return -1000.0;
  }

  v5 = [(CSSmartSiriVolumeController *)self->_volumeController getVolumeForTTSType:type withContext:0];
  v6 = v5;
  if (v5)
  {
    debugLogPath = [v5 debugLogPath];
    ssvLogFilePath = self->_ssvLogFilePath;
    self->_ssvLogFilePath = debugLogPath;

    [v6 volumeEstimate];
    v3 = v9;
  }

  else
  {
    v3 = -1000.0;
  }

  return v3;
}

- (BOOL)isSmartSiriVolumeAvailable
{
  if (CSIsHorseman())
  {
    return 1;
  }

  return CSIsHorsemanJunior();
}

- (id)endpointerModelVersion
{
  v20 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D018F8] supportHybridEndpointer])
  {
    v3 = MEMORY[0x277D018F8];
    uUIDString = [(NSUUID *)self->_endpointId UUIDString];
    v5 = [v3 getSiriLanguageWithEndpointId:uUIDString fallbackLanguage:@"en-US"];

    if (self->_isAsrOnDevice)
    {
      v6 = *MEMORY[0x277D015C0];
      endpointerModelVersion = @"3";
      if (!os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:

        goto LABEL_21;
      }

      goto LABEL_4;
    }

    if (!CSIsHorseman())
    {
      if (!AFShouldRunAsrOnServerForUOD())
      {
        endpointerModelVersion = [(CSEndpointAnalyzer *)self->_endpointAnalyzer endpointerModelVersion];
        v6 = *MEMORY[0x277D015C0];
        if (!os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        *buf = 136315394;
        v17 = "[CSSpeechController endpointerModelVersion]";
        v18 = 2114;
        v19 = endpointerModelVersion;
        v8 = "%s Queried endpointerModelVersion: %{public}@";
        goto LABEL_5;
      }

      v6 = *MEMORY[0x277D015C0];
      endpointerModelVersion = @"3";
      if (!os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

LABEL_4:
      *buf = 136315394;
      v17 = "[CSSpeechController endpointerModelVersion]";
      v18 = 2114;
      v19 = @"3";
      v8 = "%s return hybrid model version for sirix request: %{public}@";
LABEL_5:
      _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x16u);
      goto LABEL_20;
    }

    v10 = [MEMORY[0x277CBEB98] setWithObjects:{@"de-DE", 0}];
    v11 = [v10 containsObject:v5];
    v12 = *MEMORY[0x277D015C0];
    v13 = os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      endpointerModelVersion = @"4";
      if (v13)
      {
        *buf = 136315394;
        v17 = "[CSSpeechController endpointerModelVersion]";
        v18 = 2114;
        v19 = @"4";
LABEL_18:
        _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_DEFAULT, "%s return hybrid model version for sirix request: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      endpointerModelVersion = @"3";
      if (v13)
      {
        *buf = 136315394;
        v17 = "[CSSpeechController endpointerModelVersion]";
        v18 = 2114;
        v19 = @"3";
        goto LABEL_18;
      }
    }

    goto LABEL_20;
  }

  v9 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[CSSpeechController endpointerModelVersion]";
    _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s endpointerModelVersion called when HEP is not supported", buf, 0xCu);
  }

  endpointerModelVersion = @"NA";
LABEL_21:
  v14 = *MEMORY[0x277D85DE8];

  return endpointerModelVersion;
}

- (BOOL)_canPlayTwoShotFeedbackDuringMediaPlayback
{
  if (([(CSAudioRecordContext *)self->_audioRecordContext isJarvisVoiceTriggered]& 1) != 0)
  {
    return 1;
  }

  audioRecordContext = self->_audioRecordContext;

  return [(CSAudioRecordContext *)audioRecordContext isHearstVoiceTriggered];
}

- (id)_contextToString:(id)string
{
  if (string)
  {
    v4 = [string objectForKeyedSubscript:*MEMORY[0x277CB8310]];
    unsignedIntValue = [v4 unsignedIntValue];

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c%c%c", (unsignedIntValue >> 24), (unsignedIntValue << 8 >> 24), (unsignedIntValue >> 8), unsignedIntValue];
  }

  else
  {
    v6 = @"none";
  }

  return v6;
}

- (void)_deviceAudioLoggingWithFileWriter:(id)writer
{
  if (writer)
  {
    v4 = MEMORY[0x277D01620];
    writerCopy = writer;
    _getSpeechIdentifier = [(CSSpeechController *)self _getSpeechIdentifier];
    [v4 generateDeviceAudioLogging:writerCopy speechId:_getSpeechIdentifier];
  }
}

- (id)_getSpeechIdentifier
{
  v2 = _AFPreferencesValueForKey();
  allKeys = [v2 allKeys];
  v4 = [allKeys count];

  if (v4)
  {
    allKeys2 = [v2 allKeys];
    v6 = [allKeys2 objectAtIndex:0];
    v7 = CSKeychainValueForAccountAndKey(v6, @"Speech Identifier");

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
  }

  else
  {
    v8 = &stru_28363DA48;
  }

  return v8;
}

- (id)_fetchFallbackAudioSessionReleaseProviding
{
  clientForFallbackAudioSessionReleaseProviding = [(CSXPCClientFactory *)self->_xpcClientFactory clientForFallbackAudioSessionReleaseProviding];
  [clientForFallbackAudioSessionReleaseProviding connect];

  return clientForFallbackAudioSessionReleaseProviding;
}

- (void)_setupAudioProviderFromXPC:(id)c
{
  cCopy = c;
  [(CSSpeechController *)self setStreamProvider:cCopy];
  [(CSSpeechController *)self setSessionProvider:cCopy];
  [(CSSpeechController *)self setAlertProvider:cCopy];
  [(CSSpeechController *)self setAudioMeterProvider:cCopy];
  [(CSSpeechController *)self setAudioMetricProvider:cCopy];
  sessionProvider = [(CSSpeechController *)self sessionProvider];
  [sessionProvider setAudioSessionDelegate:self];

  alertProvider = [(CSSpeechController *)self alertProvider];
  [alertProvider setAudioAlertDelegate:self];

  _isHubRequestTV = [(CSSpeechController *)self _isHubRequestTV];
  continuousVoiceTrigger = self->_continuousVoiceTrigger;
  if (_isHubRequestTV)
  {
    mEMORY[0x277D016B8] = [MEMORY[0x277D016B8] sharedInstance];
    defaultConverter = [mEMORY[0x277D016B8] defaultConverter];
    [(CSContinuousVoiceTrigger *)continuousVoiceTrigger setAudioTimeConverter:defaultConverter];
  }

  else
  {
    [(CSContinuousVoiceTrigger *)continuousVoiceTrigger setAudioTimeConverter:cCopy];
  }
}

- (BOOL)_createAudioProviderFromXPCWithContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  xpcClient = self->_xpcClient;
  if (xpcClient)
  {
    if ([(CSXPCClient *)xpcClient isConnected])
    {
      v6 = 1;
      goto LABEL_17;
    }
  }

  else
  {
    v7 = MEMORY[0x277D015C0];
    v8 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[CSSpeechController _createAudioProviderFromXPCWithContext:]";
      _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s Creating xpcClient", &v17, 0xCu);
    }

    clientForAudioProviding = [(CSXPCClientFactory *)self->_xpcClientFactory clientForAudioProviding];
    if (!clientForAudioProviding)
    {
      v14 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315138;
        v18 = "[CSSpeechController _createAudioProviderFromXPCWithContext:]";
        _os_log_error_impl(&dword_222E4D000, v14, OS_LOG_TYPE_ERROR, "%s Unable to setup audioProvider", &v17, 0xCu);
      }

      goto LABEL_16;
    }

    v10 = clientForAudioProviding;
    [(CSSpeechController *)self setXpcClient:clientForAudioProviding];
    [v10 setDelegate:self];
  }

  v11 = MEMORY[0x277D015C0];
  v12 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[CSSpeechController _createAudioProviderFromXPCWithContext:]";
    _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_DEFAULT, "%s Establishing xpcClient connection...", &v17, 0xCu);
  }

  [(CSSpeechController *)self _setupAudioProviderFromXPC:self->_xpcClient];
  [(CSXPCClient *)self->_xpcClient connect];
  v6 = 1;
  if (![(CSXPCClient *)self->_xpcClient prepareAudioProviderWithContext:contextCopy clientType:1 error:0])
  {
    v13 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[CSSpeechController _createAudioProviderFromXPCWithContext:]";
      _os_log_error_impl(&dword_222E4D000, v13, OS_LOG_TYPE_ERROR, "%s Unable to prepareAudioProvider in _xpcClient, teardown XPC connection again", &v17, 0xCu);
    }

    [(CSSpeechController *)self _teardownAudioProviderIfNeeded];
LABEL_16:
    v6 = 0;
  }

LABEL_17:

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_fetchAudioProviderWithContext:(id)context
{
  contextCopy = context;
  dispatch_assert_queue_V2(self->_contextResetQueue);
  xpcClient = self->_xpcClient;
  if (xpcClient && [(CSXPCClient *)xpcClient isConnected])
  {
    v6 = 1;
    if (![(CSXPCClient *)self->_xpcClient prepareAudioProviderWithContext:contextCopy clientType:1 error:0])
    {
      [(CSSpeechController *)self _teardownAudioProviderIfNeeded];
      v6 = 0;
    }
  }

  else
  {
    v6 = [(CSSpeechController *)self _createAudioProviderFromXPCWithContext:contextCopy];
  }

  return v6;
}

- (void)_logRecordingStopErrorIfNeeded:(int64_t)needed
{
  if (needed == -11786)
  {
    supportNonInterruptibleSiri = [MEMORY[0x277D018F8] supportNonInterruptibleSiri];
    mEMORY[0x277D01708] = [MEMORY[0x277D01708] sharedInstance];
    v7 = mEMORY[0x277D01708];
    v6 = MEMORY[0x277D01A20];
    if (!supportNonInterruptibleSiri)
    {
      v6 = MEMORY[0x277D019C0];
    }

    [mEMORY[0x277D01708] submitAudioIssueReport:*v6];
  }
}

- (BOOL)_shouldTrackLaunchLatency
{
  if (!CSIsIOS())
  {
    return 0;
  }

  if (![(CSAudioRecordContext *)self->_audioRecordContext isBuiltInVoiceTriggered])
  {
    return 0;
  }

  if (![(CSSpeechController *)self _isRecordRouteBuiltinMic])
  {
    return 0;
  }

  lastVoiceTriggerInfo = self->_lastVoiceTriggerInfo;
  if (!lastVoiceTriggerInfo)
  {
    return 0;
  }

  v4 = [(NSDictionary *)lastVoiceTriggerInfo objectForKeyedSubscript:*MEMORY[0x277D01ED0]];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_shouldUseSoundPlaybackMonitors
{
  if (self->_supportPhatic)
  {
    return 1;
  }

  else
  {
    return CSIsTV();
  }
}

- (void)getMitigationDecisionForRCId:(unint64_t)id requestId:(id)requestId completion:(id)completion
{
  requestIdCopy = requestId;
  completionCopy = completion;
  if ([(CSSpeechController *)self _shouldRunHybridSDSDMitigation])
  {
    [(CSRCHandlingXPCClient *)self->_rcHandlingClient getMitigationDecisionForRCIdWithCompletion:id requestId:requestIdCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (BOOL)_shouldRunHybridSDSDMitigation
{
  v22 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  v5 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    isHybridUODEnabled = self->_isHybridUODEnabled;
    endpointId = self->_endpointId;
    rcHandlingClient = self->_rcHandlingClient;
    v12 = 136316162;
    v13 = "[CSSpeechController _shouldRunHybridSDSDMitigation]";
    v14 = 1024;
    v15 = isHybridUODEnabled;
    v16 = 2112;
    v17 = endpointId;
    v18 = 2112;
    v19 = rcHandlingClient;
    v20 = 2112;
    v21 = languageCode;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s _isHybridUODEnabled: %d, _endpointId: %@, _rcHandlingClient: %@, languageCode: %@", &v12, 0x30u);
  }

  v9 = self->_isHybridUODEnabled && !self->_endpointId && self->_rcHandlingClient != 0;

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int64_t)_currentAudioRecorderSampleRate
{
  streamProvider = [(CSSpeechController *)self streamProvider];
  recordSettings = [streamProvider recordSettings];

  if (recordSettings && ([recordSettings objectForKeyedSubscript:*MEMORY[0x277CB82E0]], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  else
  {
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    unsignedIntegerValue = v7;
  }

  return unsignedIntegerValue;
}

- (void)fetchAudioMetricsWithCompletion:(id)completion
{
  completionCopy = completion;
  contextResetQueue = self->_contextResetQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__CSSpeechController_fetchAudioMetricsWithCompletion___block_invoke;
  v7[3] = &unk_2784C6E98;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(contextResetQueue, v7);
}

void __54__CSSpeechController_fetchAudioMetricsWithCompletion___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) audioMetricProvider];
    v5 = [v2 audioMetric];

    v3 = *(a1 + 40);
    v4 = [v5 copy];
    (*(v3 + 16))(v3, v4);
  }
}

- (void)keywordDetectorDidDetectKeyword
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CSSpeechController_keywordDetectorDidDetectKeyword__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __53__CSSpeechController_keywordDetectorDidDetectKeyword__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSSpeechController keywordDetectorDidDetectKeyword]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Requesting QuickStop operation upon detecting keyword", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained((*(a1 + 32) + 144));
    [v5 speechControllerRequestsOperation:0 forReason:0];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)detectedTwoShotAtTime:(double)time
{
  kdebug_trace();
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__CSSpeechController_detectedTwoShotAtTime___block_invoke;
  v6[3] = &unk_2784C6EC0;
  *&v6[5] = time;
  v6[4] = self;
  dispatch_async(queue, v6);
}

_BYTE *__44__CSSpeechController_detectedTwoShotAtTime___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 119);
    v7 = 136315650;
    v8 = "[CSSpeechController detectedTwoShotAtTime:]_block_invoke";
    v9 = 2050;
    v10 = v3;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Reported 2-shot at: %{public}f secs, hasRequestedTwoShotFeedback: %d", &v7, 0x1Cu);
  }

  result = *(a1 + 32);
  if ((result[119] & 1) == 0)
  {
    result = [result _startTwoShotFeedbackDecisionForDetectionAtTime:*(a1 + 40)];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_startTwoShotFeedbackDecisionForDetectionAtTime:(double)time
{
  v12 = *MEMORY[0x277D85DE8];
  self->_hasRequestedTwoShotFeedback = 1;
  if ([MEMORY[0x277D018F8] shouldDelayTwoShotFeedbackForMyriadDecision])
  {
    v5 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[CSSpeechController _startTwoShotFeedbackDecisionForDetectionAtTime:]";
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Waiting for myriad decision to continue with two shot", buf, 0xCu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v11 = mach_absolute_time();
    audibleFeedbackQueue = self->_audibleFeedbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__CSSpeechController__startTwoShotFeedbackDecisionForDetectionAtTime___block_invoke;
    block[3] = &unk_2784C50A0;
    block[4] = self;
    block[5] = buf;
    *&block[6] = time;
    dispatch_async(audibleFeedbackQueue, block);
    _Block_object_dispose(buf, 8);
  }

  else if (self->_isSiriClientListening)
  {
    v7 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[CSSpeechController _startTwoShotFeedbackDecisionForDetectionAtTime:]";
      *&buf[12] = 2048;
      *&buf[14] = time;
      _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s Starting two shot feedback at: %lf", buf, 0x16u);
    }

    [(CSSpeechController *)self _startFeedbackForTwoShotAtTime:time];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __70__CSSpeechController__startTwoShotFeedbackDecisionForDetectionAtTime___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 104);
  v3 = dispatch_time(0, 1700000000);
  v4 = dispatch_group_wait(v2, v3);
  v5 = *MEMORY[0x277D015C0];
  if (v4)
  {
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[CSSpeechController _startTwoShotFeedbackDecisionForDetectionAtTime:]_block_invoke";
      _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s Two shot audible feedback decision timed out while waiting for Myriad decision", &v12, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 128);
      LODWORD(v6) = *(v6 + 118);
      v12 = 136315650;
      v13 = "[CSSpeechController _startTwoShotFeedbackDecisionForDetectionAtTime:]_block_invoke";
      v14 = 1024;
      v15 = v7;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Starting two shot feedback decision now: myriadPreventingFeedback %d, Siri Client Listening %d", &v12, 0x18u);
    }

    v8 = *(a1 + 32);
    if ((*(v8 + 128) & 1) == 0 && *(v8 + 118) == 1)
    {
      mach_absolute_time();
      v9 = *(*(*(a1 + 40) + 8) + 24);
      AFMachAbsoluteTimeGetTimeInterval();
      [*(a1 + 32) _startFeedbackForTwoShotAtTime:v10 + *(a1 + 48)];
    }
  }

  *(*(a1 + 32) + 128) = 0;
  v11 = *MEMORY[0x277D85DE8];
}

- (void)continuousVoiceTrigger:(id)trigger detectedSilenceAfterVoiceTriggerAt:(double)at
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__CSSpeechController_continuousVoiceTrigger_detectedSilenceAfterVoiceTriggerAt___block_invoke;
  block[3] = &unk_2784C6430;
  block[4] = self;
  block[5] = a2;
  *&block[6] = at;
  dispatch_async(queue, block);
}

void __80__CSSpeechController_continuousVoiceTrigger_detectedSilenceAfterVoiceTriggerAt___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector(*(a1 + 40));
  [v2 _performPendingAudioSessionActivateForReason:v3];

  v4 = MEMORY[0x277D015C0];
  if (*(*(a1 + 32) + 112) == 1)
  {
    if (CSIsHorseman())
    {
      v5 = *v4;
      if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *v22 = 136315138;
      *&v22[4] = "[CSSpeechController continuousVoiceTrigger:detectedSilenceAfterVoiceTriggerAt:]_block_invoke";
      v6 = "%s Not playing two shot feedback since this is horseman, Phatic will be played";
      goto LABEL_12;
    }

    if ([*(*(a1 + 32) + 176) isDarwinVoiceTriggered])
    {
      v5 = *v4;
      if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *v22 = 136315138;
      *&v22[4] = "[CSSpeechController continuousVoiceTrigger:detectedSilenceAfterVoiceTriggerAt:]_block_invoke";
      v6 = "%s VoiceTrigger from Darwin device, we will rely on CVT for two shot detection";
      goto LABEL_12;
    }

    if (([*(*(a1 + 32) + 176) isHearstVoiceTriggered] & 1) != 0 || objc_msgSend(*(*(a1 + 32) + 176), "isJarvisVoiceTriggered"))
    {
      v5 = *v4;
      if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *v22 = 136315138;
      *&v22[4] = "[CSSpeechController continuousVoiceTrigger:detectedSilenceAfterVoiceTriggerAt:]_block_invoke";
      v6 = "%s Not playing two shot feedback since this is hearst or javis, Phatic will be played";
      goto LABEL_12;
    }

    if ([*(*(a1 + 32) + 176) isRemoraVoiceTriggered])
    {
      v5 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 136315138;
        *&v22[4] = "[CSSpeechController continuousVoiceTrigger:detectedSilenceAfterVoiceTriggerAt:]_block_invoke";
        v6 = "%s Not playing two shot feedback since this is hearst, javis, or remora, Phatic will be played";
LABEL_12:
        _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, v6, v22, 0xCu);
      }
    }

    else if ([MEMORY[0x277D018F8] isIOSDeviceSupportingBargeIn])
    {
      if ([*(*(a1 + 32) + 176) isBuiltInVoiceTriggered])
      {
        v5 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 136315138;
          *&v22[4] = "[CSSpeechController continuousVoiceTrigger:detectedSilenceAfterVoiceTriggerAt:]_block_invoke";
          v6 = "%s Not playing two shot feedback since this is barge-in device, Phatic will be played";
          goto LABEL_12;
        }
      }
    }
  }

LABEL_13:
  v7 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 136315138;
    *&v22[4] = "[CSSpeechController continuousVoiceTrigger:detectedSilenceAfterVoiceTriggerAt:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s State feedback is enabled and we are using hybrid endpointer, use hybrid endpointer for two shot", v22, 0xCu);
  }

  if ([*(*(a1 + 32) + 176) isRTSTriggered])
  {
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 136315138;
      *&v22[4] = "[CSSpeechController continuousVoiceTrigger:detectedSilenceAfterVoiceTriggerAt:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s State feedback is enabled and this is an RTS trigger, using CVT for two shot", v22, 0xCu);
    }

    if (([*(*(a1 + 32) + 176) isGibraltarVoiceTriggered] & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (![*(*(a1 + 32) + 176) isGibraltarVoiceTriggered])
  {
    goto LABEL_38;
  }

  v9 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 136315138;
    *&v22[4] = "[CSSpeechController continuousVoiceTrigger:detectedSilenceAfterVoiceTriggerAt:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s State feedback is enabled and this is Gibraltar VoiceTrigger, using CVT for two shot", v22, 0xCu);
  }

LABEL_23:
  if (([*(*(a1 + 32) + 176) isBuiltInVoiceTriggered] & 1) == 0 && objc_msgSend(*(a1 + 32), "_shouldUseSoundPlaybackMonitors") && (v10 = *(a1 + 32), v10[126] == 1) && (objc_msgSend(v10, "_canPlayTwoShotFeedbackDuringMediaPlayback") & 1) == 0)
  {
    v21 = *v4;
    v11 = 0;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 136315138;
      *&v22[4] = "[CSSpeechController continuousVoiceTrigger:detectedSilenceAfterVoiceTriggerAt:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v21, OS_LOG_TYPE_DEFAULT, "%s Cannot play Phatic since music is being played now", v22, 0xCu);
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a1 + 32);
  if (*(v12 + 119))
  {
    WeakRetained = objc_loadWeakRetained((v12 + 144));
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 48);
        if (*(*(a1 + 32) + 122))
        {
          v17 = @"Yes";
        }

        else
        {
          v17 = @"No";
        }

        *v22 = 136315650;
        *&v22[4] = "[CSSpeechController continuousVoiceTrigger:detectedSilenceAfterVoiceTriggerAt:]_block_invoke";
        *&v22[12] = 2050;
        *&v22[14] = v16;
        v23 = 2114;
        v24 = v17;
        _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_DEFAULT, "%s Two shot is detected at time %{public}.3f, should notify? [%{public}@]", v22, 0x20u);
      }

      v18 = *(a1 + 32);
      if (*(v18 + 122) == 1)
      {
        v19 = objc_loadWeakRetained((v18 + 144));
        [v19 speechControllerDidDetectVoiceTriggerTwoShot:*(a1 + 32) atTime:v11 wantsAudibleFeedback:*(a1 + 48)];
      }
    }
  }

  else
  {
    [v12 _startTwoShotFeedbackDecisionForDetectionAtTime:*(a1 + 48)];
  }

LABEL_38:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)continuousVoiceTrigger:(id)trigger detectedVoiceTriggerResult:(id)result
{
  v17 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  resultCopy = result;
  v8 = resultCopy;
  if (resultCopy && (v9 = *MEMORY[0x277D01EA0], [resultCopy objectForKeyedSubscript:*MEMORY[0x277D01EA0]], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = [v8 objectForKeyedSubscript:v9];
    unsignedLongLongValue = [v11 unsignedLongLongValue];

    if (CSIsHorseman() && !self->_endpointId)
    {
      mach_absolute_time();
      AFSiriActivationContinuousVoiceTriggerDetected();
    }

    else
    {
      [CSMyriadPHash notifyHashlessTrigger:unsignedLongLongValue];
    }
  }

  else
  {
    v13 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[CSSpeechController continuousVoiceTrigger:detectedVoiceTriggerResult:]";
      _os_log_error_impl(&dword_222E4D000, v13, OS_LOG_TYPE_ERROR, "%s Unable to notify to Myriad for continuous VoiceTrigger : Cannot find VTEITriggerEndMachTime from VTEI", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)voiceTriggerInfo
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D015C0];
  v4 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSSpeechController voiceTriggerInfo]";
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8402;
  v21 = __Block_byref_object_dispose__8403;
  v22 = 0;
  date = [MEMORY[0x277CBEAA8] date];
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__CSSpeechController_voiceTriggerInfo__block_invoke;
  v13[3] = &unk_2784C6F30;
  v13[4] = self;
  v13[5] = &buf;
  dispatch_async_and_wait(queue, v13);
  date2 = [MEMORY[0x277CBEAA8] date];
  v8 = *v3;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    [date2 timeIntervalSinceDate:date];
    *v14 = 136315394;
    v15 = "[CSSpeechController voiceTriggerInfo]";
    v16 = 2050;
    v17 = v9;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s fetch lastVoiceTriggerInfo elapsed time = %{public}lf", v14, 0x16u);
  }

  [*(*(&buf + 1) + 40) removeObjectForKey:*MEMORY[0x277D01C08]];
  [*(*(&buf + 1) + 40) removeObjectForKey:*MEMORY[0x277D01BF8]];
  v10 = [MEMORY[0x277D7A8E0] sanitizeEventInfoForLogging:*(*(&buf + 1) + 40)];

  _Block_object_dispose(&buf, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __38__CSSpeechController_voiceTriggerInfo__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) mutableCopy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)outputReferenceChannel
{
  v9 = *MEMORY[0x277D85DE8];
  if (CSIsHorseman())
  {
    v2 = MEMORY[0x277D016E0];
    v3 = *MEMORY[0x277D85DE8];

    return [v2 channelForOutputReference];
  }

  else
  {
    v5 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSSpeechController outputReferenceChannel]";
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Not available", &v7, 0xCu);
    }

    v6 = *MEMORY[0x277D85DE8];
    return -1;
  }
}

- (BOOL)playRecordStartingAlertAndResetEndpointerWithAlertOverride:(int64_t)override
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[CSSpeechController playRecordStartingAlertAndResetEndpointerWithAlertOverride:]";
    v12 = 2048;
    overrideCopy = override;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s playing start recording alert with override: %lu", &v10, 0x16u);
  }

  alertProvider = [(CSSpeechController *)self alertProvider];
  v7 = [alertProvider playRecordStartingAlertAndResetEndpointerWithAlertOverride:override];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)playAlertSoundForType:(int64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[CSSpeechController playAlertSoundForType:]";
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v10, 0xCu);
  }

  alertProvider = [(CSSpeechController *)self alertProvider];
  v7 = [alertProvider playAlertSoundForType:type];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)audioConverterDidConvertPackets:(id)packets packets:(id)a4 durationInSec:(float)sec timestamp:(unint64_t)timestamp arrivalTimestampToAudioRecorder:(unint64_t)recorder
{
  v27 = *MEMORY[0x277D85DE8];
  packetsCopy = packets;
  v12 = a4;
  if (self->_isSiriClientListening)
  {
    if (!self->_didDeliverFirstSpeechPacket)
    {
      self->_didDeliverFirstSpeechPacket = 1;
      if (!self->_audioDeviceInfoImpl)
      {
        streamProvider = [(CSSpeechController *)self streamProvider];
        audioDeviceInfo = [streamProvider audioDeviceInfo];
        audioDeviceInfoImpl = self->_audioDeviceInfoImpl;
        self->_audioDeviceInfoImpl = audioDeviceInfo;
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v17 = objc_opt_respondsToSelector();

    v18 = objc_loadWeakRetained(&self->_delegate);
    v20 = v18;
    if (v17)
    {
      *&v19 = sec;
      [v18 speechControllerRecordBufferAvailable:self buffers:v12 durationInSec:timestamp recordedAt:self->_audioDeviceInfoImpl audioDeviceInfo:v19];
LABEL_11:

      goto LABEL_12;
    }

    v22 = objc_opt_respondsToSelector();

    if (v22)
    {
      v20 = objc_loadWeakRetained(&self->_delegate);
      *&v23 = sec;
      [v20 speechControllerRecordBufferAvailable:self buffers:v12 durationInSec:timestamp recordedAt:v23];
      goto LABEL_11;
    }
  }

  else
  {
    v21 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_ERROR))
    {
      v25 = 136315138;
      v26 = "[CSSpeechController audioConverterDidConvertPackets:packets:durationInSec:timestamp:arrivalTimestampToAudioRecorder:]";
      _os_log_error_impl(&dword_222E4D000, v21, OS_LOG_TYPE_ERROR, "%s SpeechController is trying to forward encoded audio after didStopForwarding, we shouldn't have this", &v25, 0xCu);
    }
  }

LABEL_12:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_setupDownsamplerIfNeeded
{
  if (!self->_downsampler)
  {
    downsampler = [MEMORY[0x277D01660] downsampler];
    downsampler = self->_downsampler;
    self->_downsampler = downsampler;
  }
}

- (void)didTTSVolumeChange:(id)change forReason:(unint64_t)reason
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSSpeechController didTTSVolumeChange:forReason:]";
    v12 = 2048;
    reasonCopy = reason;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolume update reason: %lu", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__CSSpeechController_didTTSVolumeChange_forReason___block_invoke;
  v9[3] = &unk_2784C6EC0;
  v9[4] = self;
  v9[5] = reason;
  dispatch_async(queue, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __51__CSSpeechController_didTTSVolumeChange_forReason___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSSpeechController didTTSVolumeChange:forReason:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
    }

    v5 = objc_loadWeakRetained((*(a1 + 32) + 144));
    [v5 speechControllerDidUpdateSmartSiriVolume:*(a1 + 32) forReason:*(a1 + 40)];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionProvider:(id)provider didSetAudioSessionActive:(BOOL)active
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[CSSpeechController audioSessionProvider:didSetAudioSessionActive:]";
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__CSSpeechController_audioSessionProvider_didSetAudioSessionActive___block_invoke;
  v9[3] = &unk_2784C6390;
  v9[4] = self;
  activeCopy = active;
  dispatch_async(queue, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __68__CSSpeechController_audioSessionProvider_didSetAudioSessionActive___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSSpeechController audioSessionProvider:didSetAudioSessionActive:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
    }

    v5 = objc_loadWeakRetained((*(a1 + 32) + 144));
    [v5 speechController:*(a1 + 32) didSetAudioSessionActive:*(a1 + 40)];
  }

  *(*(a1 + 32) + 121) = *(a1 + 40);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionProvider:(id)provider willSetAudioSessionActive:(BOOL)active
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[CSSpeechController audioSessionProvider:willSetAudioSessionActive:]";
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__CSSpeechController_audioSessionProvider_willSetAudioSessionActive___block_invoke;
  v9[3] = &unk_2784C6390;
  v9[4] = self;
  activeCopy = active;
  dispatch_async(queue, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __69__CSSpeechController_audioSessionProvider_willSetAudioSessionActive___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSSpeechController audioSessionProvider:willSetAudioSessionActive:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
    }

    v5 = objc_loadWeakRetained((*(a1 + 32) + 144));
    [v5 speechController:*(a1 + 32) willSetAudioSessionActive:*(a1 + 40)];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionProviderEndInterruption:(id)interruption
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CSSpeechController audioSessionProviderEndInterruption:]";
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CSSpeechController_audioSessionProviderEndInterruption___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__CSSpeechController_audioSessionProviderEndInterruption___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSSpeechController audioSessionProviderEndInterruption:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
    }

    v5 = objc_loadWeakRetained((*(a1 + 32) + 144));
    [v5 speechControllerEndRecordInterruption:*(a1 + 32)];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionProviderBeginInterruption:(id)interruption withContext:(id)context
{
  v14 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[CSSpeechController audioSessionProviderBeginInterruption:withContext:]";
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__CSSpeechController_audioSessionProviderBeginInterruption_withContext___block_invoke;
  v10[3] = &unk_2784C6FA8;
  v10[4] = self;
  v11 = contextCopy;
  v8 = contextCopy;
  dispatch_async(queue, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __72__CSSpeechController_audioSessionProviderBeginInterruption_withContext___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSSpeechController audioSessionProviderBeginInterruption:withContext:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
    }

    v5 = objc_loadWeakRetained((*(a1 + 32) + 144));
    [v5 speechControllerBeginRecordInterruption:*(a1 + 32) withContext:*(a1 + 40)];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionProviderBeginInterruption:(id)interruption
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CSSpeechController audioSessionProviderBeginInterruption:]";
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CSSpeechController_audioSessionProviderBeginInterruption___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__CSSpeechController_audioSessionProviderBeginInterruption___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSSpeechController audioSessionProviderBeginInterruption:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
    }

    v5 = objc_loadWeakRetained((*(a1 + 32) + 144));
    [v5 speechControllerBeginRecordInterruption:*(a1 + 32)];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioAlertProvidingDidFinishAlertPlayback:(id)playback ofType:(int64_t)type error:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v8 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSSpeechController audioAlertProvidingDidFinishAlertPlayback:ofType:error:]";
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__CSSpeechController_audioAlertProvidingDidFinishAlertPlayback_ofType_error___block_invoke;
  block[3] = &unk_2784C6998;
  v13 = errorCopy;
  typeCopy = type;
  block[4] = self;
  v10 = errorCopy;
  dispatch_async(queue, block);

  v11 = *MEMORY[0x277D85DE8];
}

void __77__CSSpeechController_audioAlertProvidingDidFinishAlertPlayback_ofType_error___block_invoke(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1[4] + 144));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSSpeechController audioAlertProvidingDidFinishAlertPlayback:ofType:error:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
    }

    v5 = objc_loadWeakRetained((a1[4] + 144));
    [v5 speechControllerDidFinishAlertPlayback:a1[4] ofType:a1[6] error:a1[5]];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionController:(id)controller didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:(id)info
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSSpeechController audioSessionController:didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:]";
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionProvider:(id)provider didChangeContext:(BOOL)context
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSSpeechController audioSessionProvider:didChangeContext:]";
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionProvider:(id)provider providerInvalidated:(BOOL)invalidated
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CSSpeechController_audioSessionProvider_providerInvalidated___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __63__CSSpeechController_audioSessionProvider_providerInvalidated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CSSpeechController_audioSessionProvider_providerInvalidated___block_invoke_2;
  block[3] = &unk_2784C6FD0;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t __63__CSSpeechController_audioSessionProvider_providerInvalidated___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSSpeechController audioSessionProvider:providerInvalidated:]_block_invoke_2";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s AudioProvider is invalidated, teardown connection to audioprovider", &v5, 0xCu);
  }

  result = [*(a1 + 32) _teardownAudioProviderIfNeeded];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)audioStreamProvider:(id)provider didHardwareConfigurationChange:(int64_t)change
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[CSSpeechController audioStreamProvider:didHardwareConfigurationChange:]";
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__CSSpeechController_audioStreamProvider_didHardwareConfigurationChange___block_invoke;
  v9[3] = &unk_2784C6EC0;
  v9[4] = self;
  v9[5] = change;
  dispatch_async(queue, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __73__CSSpeechController_audioStreamProvider_didHardwareConfigurationChange___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSSpeechController audioStreamProvider:didHardwareConfigurationChange:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
    }

    v5 = objc_loadWeakRetained((*(a1 + 32) + 144));
    [v5 speechControllerRecordHardwareConfigurationDidChange:*(a1 + 32) toConfiguration:*(a1 + 40)];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioDecoderDidDecodePackets:(id)packets audioStreamHandleId:(unint64_t)id buffer:(id)buffer remoteVAD:(id)d timestamp:(unint64_t)timestamp arrivalTimestampToAudioRecorder:(unint64_t)recorder wasBuffered:(BOOL)buffered receivedNumChannels:(unsigned int)self0
{
  v12 = MEMORY[0x277D016B8];
  bufferCopy = buffer;
  sharedInstance = [v12 sharedInstance];
  defaultConverter = [sharedInstance defaultConverter];
  [defaultConverter processSampleCount:self->_decoderProcessedSampleCountForTV hostTime:timestamp];

  v16 = ([bufferCopy length] >> 1) / channels;
  v17 = objc_alloc(MEMORY[0x277D01600]);
  inputRecordingSampleByteDepth = [MEMORY[0x277D016E0] inputRecordingSampleByteDepth];
  decoderProcessedSampleCountForTV = self->_decoderProcessedSampleCountForTV;
  LOBYTE(v23) = [MEMORY[0x277D016E0] inputRecordingIsFloat];
  LOBYTE(v22) = buffered;
  v25 = [v17 initWithData:bufferCopy numChannels:channels numSamples:v16 sampleByteDepth:inputRecordingSampleByteDepth startSampleCount:decoderProcessedSampleCountForTV hostTime:timestamp arrivalHostTimeToAudioRecorder:recorder wasBuffered:v22 remoteVAD:0 isFloat:v23];

  [(CSContinuousVoiceTrigger *)self->_continuousVoiceTrigger processAudioSamples:v25];
  if ([MEMORY[0x277D018F8] supportsEndpointingOnATV])
  {
    [(CSEndpointAnalyzer *)self->_endpointAnalyzer processAudioSamplesAsynchronously:v25];
  }

  if (CSIsTV())
  {
    speakerRecognitionController = self->_speakerRecognitionController;
    data = [v25 data];
    -[SSRSpeakerRecognitionController processAudio:withNumberOfSamples:](speakerRecognitionController, "processAudio:withNumberOfSamples:", data, [v25 numSamples]);
  }

  self->_decoderProcessedSampleCountForTV += v16;
}

- (void)audioStreamProvider:(id)provider audioChunkForTVAvailable:(id)available
{
  availableCopy = available;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__CSSpeechController_audioStreamProvider_audioChunkForTVAvailable___block_invoke;
  v8[3] = &unk_2784C6FA8;
  v8[4] = self;
  v9 = availableCopy;
  v7 = availableCopy;
  dispatch_async(queue, v8);
}

void __67__CSSpeechController_audioStreamProvider_audioChunkForTVAvailable___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1[118])
  {
    v25 = [v1 _fetchAudioDecoderForTV:{objc_msgSend(*(a1 + 40), "audioFormat")}];
    v3 = [*(a1 + 40) packets];
    v4 = [*(a1 + 40) streamHandleID];
    v5 = [*(a1 + 40) timeStamp];
    v6 = [*(a1 + 40) timeStamp];
    LODWORD(v24) = [*(a1 + 40) numChannels];
    [v25 addPackets:v3 audioStreamHandleId:v4 remoteVAD:0 timestamp:v5 arrivalTimestampToAudioRecorder:v6 wasBuffered:0 receivedNumChannels:v24];

    if (CSIsTV())
    {
      v7 = *(a1 + 32);
      [*(a1 + 40) avgPower];
      [v7 setCachedAvgPower:?];
      v8 = *(a1 + 32);
      [*(a1 + 40) peakPower];
      [v8 setCachedPeakPower:?];
      [*(*(a1 + 32) + 280) addNumSamples:0 hostTime:{objc_msgSend(*(a1 + 40), "timeStamp")}];
    }

    v9 = *(a1 + 32);
    if ((*(v9 + 132) & 1) == 0)
    {
      *(v9 + 132) = 1;
      v9 = *(a1 + 32);
      if (!*(v9 + 512))
      {
        v10 = [v9 streamProvider];
        v11 = [v10 audioDeviceInfo];
        v12 = *(a1 + 32);
        v13 = *(v12 + 512);
        *(v12 + 512) = v11;

        v9 = *(a1 + 32);
      }
    }

    WeakRetained = objc_loadWeakRetained((v9 + 144));
    v15 = objc_opt_respondsToSelector();

    v16 = objc_loadWeakRetained((*(a1 + 32) + 144));
    if (v15)
    {
      v17 = *(a1 + 32);
      v18 = [*(a1 + 40) packets];
      [v16 speechControllerRecordBufferAvailable:v17 buffers:v18 durationInSec:objc_msgSend(*(a1 + 40) recordedAt:"timeStamp") audioDeviceInfo:{*(*(a1 + 32) + 512), 0.0}];
    }

    else
    {
      v21 = objc_opt_respondsToSelector();

      if ((v21 & 1) == 0)
      {
LABEL_15:
        v23 = *MEMORY[0x277D85DE8];

        return;
      }

      v16 = objc_loadWeakRetained((*(a1 + 32) + 144));
      v22 = *(a1 + 32);
      v18 = [*(a1 + 40) packets];
      [v16 speechControllerRecordBufferAvailable:v22 buffers:v18 durationInSec:objc_msgSend(*(a1 + 40) recordedAt:{"timeStamp"), 0.0}];
    }

    goto LABEL_15;
  }

  v19 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v27 = "[CSSpeechController audioStreamProvider:audioChunkForTVAvailable:]_block_invoke";
    _os_log_error_impl(&dword_222E4D000, v19, OS_LOG_TYPE_ERROR, "%s SpeechManager still forwarding audio after didStopForwarding, we shouldn't have this", buf, 0xCu);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_audioStreamProvider:(id)provider audioBufferAvailable:(id)available
{
  v96 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  availableCopy = available;
  if (self->_didDeliverLastBuffer)
  {
    v8 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      *buf = 136315650;
      v87 = "[CSSpeechController _audioStreamProvider:audioBufferAvailable:]";
      v88 = 1024;
      *v89 = 1;
      *&v89[4] = 2048;
      *&v89[6] = [availableCopy numSamples];
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s _didDeliverLastPacket=%d. Dropping Audio packets of size=%lu", buf, 0x1Cu);
    }

    goto LABEL_65;
  }

  if (![(CSSpeechController *)self hasPerformedDelayedStop]&& [(CSAudioStopStreamOption *)self->_requestedStopRecordingOptions expectedStopHostTime]&& [(CSSpeechController *)self canPerformDelayedStop])
  {
    v10 = self->_numTrailingSamplesAfterSchedulingStop + [availableCopy numSamples];
    self->_numTrailingSamplesAfterSchedulingStop = v10;
    v11 = MEMORY[0x277D015C0];
    v12 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      hostTime = [availableCopy hostTime];
      numSamples = [availableCopy numSamples];
      requestedStopRecordingOptions = self->_requestedStopRecordingOptions;
      numTrailingSamplesAfterSchedulingStop = self->_numTrailingSamplesAfterSchedulingStop;
      maxAllowedTrailingSamplesAfterSchedulingStop = self->_maxAllowedTrailingSamplesAfterSchedulingStop;
      *buf = 136316418;
      v87 = "[CSSpeechController _audioStreamProvider:audioBufferAvailable:]";
      v88 = 2050;
      *v89 = hostTime;
      *&v89[8] = 2050;
      *&v89[10] = numSamples;
      v90 = 2114;
      v91 = requestedStopRecordingOptions;
      v92 = 2050;
      v93 = numTrailingSamplesAfterSchedulingStop;
      v94 = 2050;
      v95 = maxAllowedTrailingSamplesAfterSchedulingStop;
      _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_DEFAULT, "%s chunk.hostTime=%{public}llu, chunkSz=%{public}lu, stopOptions=%{public}@, _numTrailingSamplesAfterSchedulingStop=%{public}lu, maxAllowedSamples=%{public}lu", buf, 0x3Eu);

      v10 = self->_numTrailingSamplesAfterSchedulingStop;
    }

    if (v10 > self->_maxAllowedTrailingSamplesAfterSchedulingStop)
    {
      v19 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v87 = "[CSSpeechController _audioStreamProvider:audioBufferAvailable:]";
        _os_log_impl(&dword_222E4D000, v19, OS_LOG_TYPE_DEFAULT, "%s STOPRECORDING: Reached MAX allowed trailing samples AFTER stopRecording was scheduled!", buf, 0xCu);
      }

LABEL_64:
      [(CSSpeechController *)self setHasPerformedDelayedStop:1];
      [(CSSpeechController *)self _delayedStopRecordingWithOptions:self->_requestedStopRecordingOptions];
      goto LABEL_65;
    }

    hostTime2 = [availableCopy hostTime];
    if (hostTime2 >= [(CSAudioStopStreamOption *)self->_requestedStopRecordingOptions expectedStopHostTime])
    {
      v72 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        v73 = v72;
        hostTime3 = [availableCopy hostTime];
        v75 = self->_requestedStopRecordingOptions;
        *buf = 136315650;
        v87 = "[CSSpeechController _audioStreamProvider:audioBufferAvailable:]";
        v88 = 2050;
        *v89 = hostTime3;
        *&v89[8] = 2114;
        *&v89[10] = v75;
        _os_log_impl(&dword_222E4D000, v73, OS_LOG_TYPE_DEFAULT, "%s STOPRECORDING: chunk.hostTime=%{public}llu >= stopOptions=%{public}@", buf, 0x20u);
      }

      goto LABEL_64;
    }
  }

  v21 = _audioStreamProvider_audioBufferAvailable__heartbeat_CORESPEECH_SPEECH_MANAGER_LPCM_RECORD_BUFFER_AVAILABLE;
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * _audioStreamProvider_audioBufferAvailable__heartbeat_CORESPEECH_SPEECH_MANAGER_LPCM_RECORD_BUFFER_AVAILABLE, 1) <= 0x888888888888888uLL)
  {
    kdebug_trace();
    v21 = _audioStreamProvider_audioBufferAvailable__heartbeat_CORESPEECH_SPEECH_MANAGER_LPCM_RECORD_BUFFER_AVAILABLE;
  }

  _audioStreamProvider_audioBufferAvailable__heartbeat_CORESPEECH_SPEECH_MANAGER_LPCM_RECORD_BUFFER_AVAILABLE = v21 + 1;
  if (self->_isSiriClientListening)
  {
    v82 = availableCopy;
    v22 = availableCopy;
    data = [v22 data];
    v24 = data;
    if ([MEMORY[0x277D016E0] inputRecordingIsFloat])
    {
      v24 = [MEMORY[0x277D01760] convertToShortLPCMBufFromFloatLPCMBuf:data];
    }

    -[CSAudioZeroCounter getZeroStatisticsFromBuffer:entireSamples:](self->_continuousZeroCounter, "getZeroStatisticsFromBuffer:entireSamples:", data, [data length] / objc_msgSend(v22, "sampleByteDepth"));
    -[CSSpeechEndHostTimeEstimator addNumSamples:hostTime:](self->_speechEndHostTimeEstimator, "addNumSamples:hostTime:", [v22 numSamples], objc_msgSend(v22, "hostTime"));
    inputRecordingIsFloat = [MEMORY[0x277D016E0] inputRecordingIsFloat];
    powerMeter = self->_powerMeter;
    if (inputRecordingIsFloat)
    {
      -[CSAudioPowerMeter processFloatBuffer:stride:inFrameToProcess:](powerMeter, "processFloatBuffer:stride:inFrameToProcess:", [data bytes], 1, objc_msgSend(v22, "numSamples"));
    }

    else
    {
      -[CSAudioPowerMeter processShortBuffer:stride:inFrameToProcess:](powerMeter, "processShortBuffer:stride:inFrameToProcess:", [v24 bytes], 1, objc_msgSend(v22, "numSamples"));
    }

    v28 = self->_powerMeter;
    if (v28)
    {
      [(CSAudioPowerMeter *)v28 getAveragePowerDB];
      *&v29 = v29;
      self->_cachedAvgPower = *&v29;
      [(CSAudioPowerMeter *)self->_powerMeter getPeakPowerDB];
      *&v30 = v30;
      self->_cachedPeakPower = *&v30;
    }

    if (self->_shouldUseLanguageDetectorForCurrentRequest)
    {
      -[CSLanguageDetector addSamples:numSamples:](self->_languageDetector, "addSamples:numSamples:", data, [v22 numSamples]);
    }

    v81 = data;
    v85 = v24;
    if (self->_isNarrowBand)
    {
      downsampler = self->_downsampler;
      data2 = [v22 data];
      data3 = [(CSAudioSampleRateConverter *)downsampler convertSampleRateOfBuffer:data2];

      v80 = providerCopy;
      if ([MEMORY[0x277D016E0] inputRecordingIsFloat])
      {
        v34 = [MEMORY[0x277D01760] convertToShortLPCMBufFromFloatLPCMBuf:data3];
      }

      else
      {
        v34 = data3;
      }

      v79 = v34;
      v36 = [data3 length];
      v84 = v36 / [v22 sampleByteDepth];
      v37 = objc_alloc(MEMORY[0x277D01600]);
      sampleByteDepth = [v22 sampleByteDepth];
      startSampleCount = [v22 startSampleCount];
      hostTime4 = [v22 hostTime];
      arrivalHostTimeToAudioRecorder = [v22 arrivalHostTimeToAudioRecorder];
      wasBuffered = [v22 wasBuffered];
      remoteVAD = [v22 remoteVAD];
      LOBYTE(v78) = [v22 isFloat];
      LOBYTE(v77) = wasBuffered;
      v83 = [v37 initWithData:data3 numChannels:1 numSamples:v84 sampleByteDepth:sampleByteDepth startSampleCount:startSampleCount hostTime:hostTime4 arrivalHostTimeToAudioRecorder:arrivalHostTimeToAudioRecorder wasBuffered:v77 remoteVAD:remoteVAD isFloat:v78];

      v35 = v79;
      providerCopy = v80;
      v24 = v85;
    }

    else
    {
      data3 = [v22 data];
      v35 = v24;
      v83 = v22;
    }

    [(CSContinuousVoiceTrigger *)self->_continuousVoiceTrigger processAudioSamples:v22];
    -[SSRSpeakerRecognitionController processAudio:withNumberOfSamples:](self->_speakerRecognitionController, "processAudio:withNumberOfSamples:", v24, [v22 numSamples]);
    if ([MEMORY[0x277D018F8] supportsEndpointingOnATV])
    {
      [(CSEndpointAnalyzer *)self->_endpointAnalyzer processAudioSamplesAsynchronously:v83];
    }

    v44 = _audioStreamProvider_audioBufferAvailable__heartbeat_CORESPEECH_OPUS_ENCODING_BEGIN;
    if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * _audioStreamProvider_audioBufferAvailable__heartbeat_CORESPEECH_OPUS_ENCODING_BEGIN, 1) <= 0x888888888888888uLL)
    {
      kdebug_trace();
      v44 = _audioStreamProvider_audioBufferAvailable__heartbeat_CORESPEECH_OPUS_ENCODING_BEGIN;
    }

    _audioStreamProvider_audioBufferAvailable__heartbeat_CORESPEECH_OPUS_ENCODING_BEGIN = v44 + 1;
    if (!self->_isAsrOnDevice)
    {
      -[CSAudioConverter addSamples:timestamp:arrivalTimestampToAudioRecorder:](self->_audioConverter, "addSamples:timestamp:arrivalTimestampToAudioRecorder:", data3, [v22 hostTime], objc_msgSend(v22, "arrivalHostTimeToAudioRecorder"));
    }

    v45 = _audioStreamProvider_audioBufferAvailable__heartbeat_CORESPEECH_OPUS_ENCODING_END;
    if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * _audioStreamProvider_audioBufferAvailable__heartbeat_CORESPEECH_OPUS_ENCODING_END, 1) <= 0x888888888888888uLL)
    {
      kdebug_trace();
      v45 = _audioStreamProvider_audioBufferAvailable__heartbeat_CORESPEECH_OPUS_ENCODING_END;
    }

    _audioStreamProvider_audioBufferAvailable__heartbeat_CORESPEECH_OPUS_ENCODING_END = v45 + 1;
    v46 = data3;
    v47 = v46;
    if ([MEMORY[0x277D016E0] inputRecordingIsFloat])
    {
      v47 = v46;
      if ((CSIsOSX() & 1) == 0)
      {
        v47 = v35;
      }
    }

    [(CSUncompressedAudioLogging *)self->_uncompressedAudioLogging appendAudioData:v47];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v49 = objc_opt_respondsToSelector();

    v50 = objc_loadWeakRetained(&self->_delegate);
    if (v49)
    {
      [v50 speechControllerLPCMRecordBufferAvailable:self buffer:v47 recordedAt:{objc_msgSend(v22, "hostTime")}];
    }

    else
    {
      v51 = objc_opt_respondsToSelector();

      if ((v51 & 1) == 0)
      {
LABEL_49:
        if (self->_isRemoteVADAvailableStream)
        {
          [MEMORY[0x277D016E0] remoteVADDuration];
          v53 = v52;
          [MEMORY[0x277D016E0] inputRecordingSampleRate];
          v55 = (v53 * v54);
          LODWORD(v56) = 1176256512;
          v57 = [v22 dataWithRemoteVADWithScaleFactor:v55 numAudioSamplesPerRemoteVAD:v56];
          v58 = v57;
          if (v57)
          {
            -[CSPlainAudioFileWriter addSamples:numSamples:](self->_audioFileWriter, "addSamples:numSamples:", [v57 bytes], objc_msgSend(v22, "numSamples"));
          }
        }

        else
        {
          -[CSPlainAudioFileWriter addSamples:numSamples:](self->_audioFileWriter, "addSamples:numSamples:", [v24 bytes], objc_msgSend(v22, "numSamples"));
        }

        serverLoggingWriter = self->_serverLoggingWriter;
        data4 = [v22 data];
        -[CSSelectiveChannelAudioFileWriter addSamples:numSamples:](serverLoggingWriter, "addSamples:numSamples:", [data4 bytes], objc_msgSend(v22, "numSamples"));

        if (![(CSSpeechController *)self hasPerformedDelayedStop])
        {
          if ([(CSAudioStopStreamOption *)self->_requestedStopRecordingOptions expectedStopHostTime])
          {
            if ([(CSSpeechController *)self canPerformDelayedStop])
            {
              v61 = MEMORY[0x277D01798];
              numSamples2 = [v22 numSamples];
              [MEMORY[0x277D016E0] inputRecordingSampleRate];
              *&v64 = numSamples2 / v63;
              v65 = [v61 secondsToHostTime:v64];
              v66 = [v22 hostTime] + v65;
              if (v66 >= [(CSAudioStopStreamOption *)self->_requestedStopRecordingOptions expectedStopHostTime])
              {
                v67 = v35;
                v68 = *MEMORY[0x277D015C0];
                if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
                {
                  v69 = v68;
                  hostTime5 = [v22 hostTime];
                  v71 = self->_requestedStopRecordingOptions;
                  *buf = 136315650;
                  v87 = "[CSSpeechController _audioStreamProvider:audioBufferAvailable:]";
                  v88 = 2050;
                  *v89 = hostTime5 + v65;
                  *&v89[8] = 2114;
                  *&v89[10] = v71;
                  _os_log_impl(&dword_222E4D000, v69, OS_LOG_TYPE_DEFAULT, "%s STOPRECORDING: chunk.endHostTime=%{public}llu >= stopOptions=%{public}@", buf, 0x20u);
                }

                [(CSSpeechController *)self setHasPerformedDelayedStop:1];
                [(CSSpeechController *)self _delayedStopRecordingWithOptions:self->_requestedStopRecordingOptions];
                v35 = v67;
              }
            }
          }
        }

        availableCopy = v82;
        goto LABEL_65;
      }

      v50 = objc_loadWeakRetained(&self->_delegate);
      [v50 speechControllerLPCMRecordBufferAvailable:self buffer:v47];
    }

    goto LABEL_49;
  }

  v27 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v87 = "[CSSpeechController _audioStreamProvider:audioBufferAvailable:]";
    _os_log_error_impl(&dword_222E4D000, v27, OS_LOG_TYPE_ERROR, "%s SpeechManager still forwarding audio after didStopForwarding, we shouldn't have this", buf, 0xCu);
  }

LABEL_65:

  v76 = *MEMORY[0x277D85DE8];
}

- (void)audioStreamProvider:(id)provider audioBufferAvailable:(id)available
{
  providerCopy = provider;
  availableCopy = available;
  numSamples = [availableCopy numSamples];
  if (numSamples >= 1)
  {
    v8 = numSamples;
    v9 = 0;
    do
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v8;
      [MEMORY[0x277D016E0] inputRecordingBufferDuration];
      v13 = v12;
      [MEMORY[0x277D016E0] inputRecordingSampleRate];
      if (v13 * v14 <= v8)
      {
        [MEMORY[0x277D016E0] inputRecordingBufferDuration];
        v16 = v15;
        [MEMORY[0x277D016E0] inputRecordingSampleRate];
        v11 = v16 * v17;
      }

      v18 = [availableCopy subChunkFrom:v9 numSamples:{v11, providerCopy}];
      remoteVAD = [availableCopy remoteVAD];

      if (remoteVAD)
      {
        [MEMORY[0x277D016E0] remoteVADDuration];
        v21 = v20;
        [MEMORY[0x277D016E0] inputRecordingSampleRate];
        v23 = [availableCopy remoteVADSubChunkFrom:v9 numSamples:v11 numAudioSamplesPerRemoteVAD:(v21 * v22)];
        [v18 setRemoteVAD:v23];
      }

      v8 -= [v18 numSamples];
      v9 += [v18 numSamples];
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__CSSpeechController_audioStreamProvider_audioBufferAvailable___block_invoke;
      block[3] = &unk_2784C6EE8;
      block[4] = self;
      v28 = providerCopy;
      v29 = v18;
      v25 = v18;
      dispatch_async(queue, block);

      objc_autoreleasePoolPop(v10);
    }

    while (v8 > 0);
  }
}

- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v11 = "[CSSpeechController audioStreamProvider:didStopStreamUnexpectedly:]";
    _os_log_error_impl(&dword_222E4D000, v6, OS_LOG_TYPE_ERROR, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__CSSpeechController_audioStreamProvider_didStopStreamUnexpectedly___block_invoke;
  v9[3] = &unk_2784C6EC0;
  v9[4] = self;
  v9[5] = unexpectedly;
  dispatch_async(queue, v9);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __68__CSSpeechController_audioStreamProvider_didStopStreamUnexpectedly___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _didStopForReason:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _logRecordingStopErrorIfNeeded:v3];
}

- (BOOL)_isDuckingAvailableRoute:(id)route
{
  routeCopy = route;
  if (!CSIsIOS())
  {
    if (CSIsWatch())
    {
      if ([routeCopy isEqualToString:*MEMORY[0x277CB8320]])
      {
        goto LABEL_6;
      }
    }

    else if (CSIsHorseman())
    {
      goto LABEL_6;
    }

    v4 = 0;
    goto LABEL_9;
  }

  if ([routeCopy isEqualToString:*MEMORY[0x277CB8320]])
  {
LABEL_6:
    v4 = 1;
    goto LABEL_9;
  }

  v4 = [routeCopy isEqualToString:*MEMORY[0x277CB8348]];
LABEL_9:

  return v4;
}

- (void)_didStopForReason:(int64_t)reason
{
  v80 = *MEMORY[0x277D85DE8];
  if (reason == 2)
  {
    reasonCopy = 0;
  }

  else
  {
    reasonCopy = reason;
  }

  v6 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v73 = "[CSSpeechController _didStopForReason:]";
    v74 = 2050;
    v75 = reasonCopy;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s Reason : %{public}ld", buf, 0x16u);
  }

  if ([(CSAudioStopStreamOption *)self->_requestedStopRecordingOptions stopRecordingReason]== 3)
  {
    estimatedSpeechEndHostTime = 0;
  }

  else if ([(CSSpeechController *)self _shouldCalculateEstimatedSpeechEndHostTimeFromCachedEPMetrics])
  {
    cachedEndpointerMetrics = [(CSEndpointAnalyzer *)self->_endpointAnalyzer cachedEndpointerMetrics];
    speechEndHostTimeEstimator = self->_speechEndHostTimeEstimator;
    [cachedEndpointerMetrics trailingSilenceDurationAtEndpoint];
    [(CSSpeechEndHostTimeEstimator *)speechEndHostTimeEstimator notifyTrailingSilenceDurationAtEndpoint:?];
    additionalMetrics = [cachedEndpointerMetrics additionalMetrics];
    v11 = [additionalMetrics objectForKey:@"lastAudioChunkHostTime"];
    unsignedLongLongValue = [v11 unsignedLongLongValue];

    estimatedSpeechEndHostTime = [(CSSpeechEndHostTimeEstimator *)self->_speechEndHostTimeEstimator estimatedSpeechEndHostTimeWithLastAudioChunkHostTime:unsignedLongLongValue];
    v13 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v73 = "[CSSpeechController _didStopForReason:]";
      v74 = 2112;
      v75 = cachedEndpointerMetrics;
      _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_DEFAULT, "%s SpeechEndEstimation using cached EP metrics : %@", buf, 0x16u);
    }
  }

  else
  {
    v14 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v73 = "[CSSpeechController _didStopForReason:]";
      _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_DEFAULT, "%s SpeechEndEstimation: Should Estimate SpeechEndHostTime", buf, 0xCu);
    }

    v15 = self->_speechEndHostTimeEstimator;
    [(CSAudioStopStreamOption *)self->_requestedStopRecordingOptions trailingSilenceDurationAtEndpoint];
    [(CSSpeechEndHostTimeEstimator *)v15 notifyTrailingSilenceDurationAtEndpoint:?];
    estimatedSpeechEndHostTime = [(CSSpeechEndHostTimeEstimator *)self->_speechEndHostTimeEstimator estimatedSpeechEndHostTime];
  }

  [(CSEndpointAnalyzer *)self->_endpointAnalyzer recordingStoppedForReason:reasonCopy];
  [(SSRSpeakerRecognitionController *)self->_speakerRecognitionController endAudio];
  if ([(CSSpeechController *)self _shouldUseSpeakerRecognitionProxy])
  {
    [(CSSpeakerRecognitionProxy *)self->_speakerRecognitionProxy invalidateXPCConnection];
  }

  if (!self->_isAsrOnDevice)
  {
    [(CSAudioConverter *)self->_audioConverter flush];
  }

  if (self->_shouldUseLanguageDetectorForCurrentRequest)
  {
    [(CSLanguageDetector *)self->_languageDetector endAudio];
  }

  *&self->_isSiriClientListening = 0;
  if (!self->_didDeliverLastBuffer)
  {
    self->_didDeliverLastBuffer = 1;
    v16 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = mach_absolute_time();
      *buf = 136315394;
      v73 = "[CSSpeechController _didStopForReason:]";
      v74 = 2050;
      v75 = v18;
      _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_DEFAULT, "%s Reporting didDeliverLastPacket at: %{public}llu", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = objc_loadWeakRetained(&self->_delegate);
      [v21 speechControllerDidDeliverLastBuffer:self forReason:reasonCopy estimatedSpeechEndHostTime:estimatedSpeechEndHostTime];
    }
  }

  v22 = objc_loadWeakRetained(&self->_delegate);
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    if (reasonCopy != 1)
    {
      streamProvider = [(CSSpeechController *)self streamProvider];
      audioDeviceInfo = [streamProvider audioDeviceInfo];
      audioDeviceInfoImpl = self->_audioDeviceInfoImpl;
      self->_audioDeviceInfoImpl = audioDeviceInfo;
    }

    v27 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
      v29 = mach_absolute_time();
      v30 = [(CSFAudioDeviceInfo *)self->_audioDeviceInfoImpl description];
      *buf = 136315906;
      v73 = "[CSSpeechController _didStopForReason:]";
      v74 = 2050;
      v75 = estimatedSpeechEndHostTime;
      v76 = 2050;
      v77 = v29;
      v78 = 2114;
      v79 = v30;
      _os_log_impl(&dword_222E4D000, v28, OS_LOG_TYPE_DEFAULT, "%s SpeechEndEstimation: Reporting didStop with estimated speech end : %{public}llu, at: %{public}llu, audioDeviceInfo: %{public}@", buf, 0x2Au);
    }

    v31 = objc_loadWeakRetained(&self->_delegate);
    [v31 speechControllerDidStopRecording:self audioDeviceInfo:self->_audioDeviceInfoImpl forReason:reasonCopy estimatedSpeechEndHostTime:estimatedSpeechEndHostTime];
  }

  else
  {
    v32 = objc_loadWeakRetained(&self->_delegate);
    v33 = objc_opt_respondsToSelector();

    if ((v33 & 1) == 0)
    {
      goto LABEL_37;
    }

    v34 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v35 = v34;
      v36 = mach_absolute_time();
      *buf = 136315650;
      v73 = "[CSSpeechController _didStopForReason:]";
      v74 = 2050;
      v75 = estimatedSpeechEndHostTime;
      v76 = 2050;
      v77 = v36;
      _os_log_impl(&dword_222E4D000, v35, OS_LOG_TYPE_DEFAULT, "%s SpeechEndEstimation: Reporting didStop with estimated speech end : %{public}llu, at: %{public}llu", buf, 0x20u);
    }

    v31 = objc_loadWeakRetained(&self->_delegate);
    [v31 speechControllerDidStopRecording:self forReason:reasonCopy estimatedSpeechEndHostTime:estimatedSpeechEndHostTime];
  }

LABEL_37:
  audioFileWriter = self->_audioFileWriter;
  if (audioFileWriter)
  {
    [(CSPlainAudioFileWriter *)audioFileWriter endAudio];
    [(CSPlainAudioFileWriter *)self->_audioFileWriter addContextKey:@"vtei" withContext:self->_lastVoiceTriggerInfo];
    [(CSPlainAudioFileWriter *)self->_audioFileWriter addContextKey:@"ssvmeta" fromMetaFile:self->_ssvLogFilePath];
  }

  [(CSUncompressedAudioLogging *)self->_uncompressedAudioLogging endAudioWithCancellation:reason != 0 completion:0];
  uncompressedAudioLogging = self->_uncompressedAudioLogging;
  self->_uncompressedAudioLogging = 0;

  [(CSSelectiveChannelAudioFileWriter *)self->_serverLoggingWriter endAudio];
  [(CSSpeechController *)self _deviceAudioLoggingWithFileWriter:self->_serverLoggingWriter];
  continuousZeroCounter = self->_continuousZeroCounter;
  mEMORY[0x277D01960] = [MEMORY[0x277D01960] sharedAggregator];
  [(CSAudioZeroCounter *)continuousZeroCounter stopCountingZeroStatisticsWithReporter:mEMORY[0x277D01960]];

  [(CSAudioPowerMeter *)self->_powerMeter reset];
  mEMORY[0x277D01880] = [MEMORY[0x277D01880] sharedInstance];
  [mEMORY[0x277D01880] notifyDidStopStream:0 withEventUUID:self->_recordEventUUID];

  if ([(CSSpeechController *)self _isHubRequestTV])
  {
    [(NSMutableDictionary *)self->_decodersForTV removeAllObjects];
  }

  recordRoute = [(CSSpeechController *)self recordRoute];
  v43 = [(CSSpeechController *)self _isDuckingAvailableRoute:recordRoute];

  if (!v43)
  {
    mEMORY[0x277D01628] = [MEMORY[0x277D01628] sharedMonitor];
    playingApps = [mEMORY[0x277D01628] playingApps];

    v46 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v47 = v46;
      v48 = [playingApps count];
      *buf = 136315394;
      v73 = "[CSSpeechController _didStopForReason:]";
      v74 = 1024;
      LODWORD(v75) = v48;
      _os_log_impl(&dword_222E4D000, v47, OS_LOG_TYPE_DEFAULT, "%s Currently playing App : %d", buf, 0x12u);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v49 = playingApps;
    v50 = [v49 countByEnumeratingWithState:&v67 objects:v71 count:16];
    if (v50)
    {
      v52 = v50;
      v53 = *v68;
      *&v51 = 136315650;
      v66 = v51;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v68 != v53)
          {
            objc_enumerationMutation(v49);
          }

          v55 = *(*(&v67 + 1) + 8 * i);
          appName = [v55 appName];
          version = [v55 version];
          v58 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:self->_requestMHUUID];
          v59 = v58;
          if (appName)
          {
            v60 = version == 0;
          }

          else
          {
            v60 = 1;
          }

          if (!v60 && v58 != 0)
          {
            selfCopy = self;
            v63 = *MEMORY[0x277D015C0];
            if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
            {
              *buf = v66;
              v73 = "[CSSpeechController _didStopForReason:]";
              v74 = 2112;
              v75 = appName;
              v76 = 2112;
              v77 = version;
              _os_log_impl(&dword_222E4D000, v63, OS_LOG_TYPE_DEFAULT, "%s name : %@, version : %@", buf, 0x20u);
            }

            mEMORY[0x277D01738] = [MEMORY[0x277D01738] sharedLogger];
            [mEMORY[0x277D01738] logMHApplicationPlaybackAttemptedWithMHUUID:v59 withAppBundleName:appName withAppBundleVersion:version];

            self = selfCopy;
          }
        }

        v52 = [v49 countByEnumeratingWithState:&v67 objects:v71 count:16];
      }

      while (v52);
    }
  }

  v65 = *MEMORY[0x277D85DE8];
}

- (id)playbackRoute
{
  v11 = *MEMORY[0x277D85DE8];
  streamProvider = [(CSSpeechController *)self streamProvider];
  playbackRoute = [streamProvider playbackRoute];

  v4 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSSpeechController playbackRoute]";
    v9 = 2114;
    v10 = playbackRoute;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];

  return playbackRoute;
}

- (id)recordDeviceInfo
{
  v11 = *MEMORY[0x277D85DE8];
  streamProvider = [(CSSpeechController *)self streamProvider];
  recordDeviceInfo = [streamProvider recordDeviceInfo];

  v4 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSSpeechController recordDeviceInfo]";
    v9 = 2114;
    v10 = recordDeviceInfo;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];

  return recordDeviceInfo;
}

- (BOOL)_canDelayStopRecording
{
  streamProvider = [(CSSpeechController *)self streamProvider];
  recordRoute = [streamProvider recordRoute];

  if ([recordRoute isEqualToString:*MEMORY[0x277CB8190]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [recordRoute isEqualToString:*MEMORY[0x277CB81B8]];
  }

  return v4;
}

- (BOOL)_isRecordRouteStudioDisplay
{
  streamProvider = [(CSSpeechController *)self streamProvider];
  recordRoute = [streamProvider recordRoute];
  v4 = [recordRoute isEqualToString:*MEMORY[0x277CB81B8]];

  return v4;
}

- (BOOL)_isRecordRouteBuiltinMic
{
  streamProvider = [(CSSpeechController *)self streamProvider];
  recordRoute = [streamProvider recordRoute];
  v4 = [recordRoute isEqualToString:*MEMORY[0x277CB8190]];

  return v4;
}

- (BOOL)isRecording
{
  audioStream = [(CSSpeechController *)self audioStream];
  isStreaming = [audioStream isStreaming];

  return isStreaming;
}

- (unint64_t)_calculateEstimatedSpeechEndHostTimeWithStopOptions:(id)options
{
  v19 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if ([(CSSpeechController *)self _shouldCalculateEstimatedSpeechEndHostTimeFromCachedEPMetrics])
  {
    cachedEndpointerMetrics = [(CSEndpointAnalyzer *)self->_endpointAnalyzer cachedEndpointerMetrics];
    speechEndHostTimeEstimator = self->_speechEndHostTimeEstimator;
    [cachedEndpointerMetrics trailingSilenceDurationAtEndpoint];
    [(CSSpeechEndHostTimeEstimator *)speechEndHostTimeEstimator notifyTrailingSilenceDurationAtEndpoint:?];
    additionalMetrics = [cachedEndpointerMetrics additionalMetrics];
    v8 = [additionalMetrics objectForKey:@"lastAudioChunkHostTime"];
    unsignedLongLongValue = [v8 unsignedLongLongValue];

    estimatedSpeechEndHostTime = [(CSSpeechEndHostTimeEstimator *)self->_speechEndHostTimeEstimator estimatedSpeechEndHostTimeWithLastAudioChunkHostTime:unsignedLongLongValue];
    v11 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "[CSSpeechController _calculateEstimatedSpeechEndHostTimeWithStopOptions:]";
      v17 = 2112;
      v18 = cachedEndpointerMetrics;
      _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_DEFAULT, "%s Send estimatedSpeechEndHostTime using cached EP metrics : %@", &v15, 0x16u);
    }
  }

  else
  {
    v12 = self->_speechEndHostTimeEstimator;
    [optionsCopy trailingSilenceDurationAtEndpoint];
    [(CSSpeechEndHostTimeEstimator *)v12 notifyTrailingSilenceDurationAtEndpoint:?];
    estimatedSpeechEndHostTime = [(CSSpeechEndHostTimeEstimator *)self->_speechEndHostTimeEstimator estimatedSpeechEndHostTime];
  }

  v13 = *MEMORY[0x277D85DE8];
  return estimatedSpeechEndHostTime;
}

- (BOOL)_shouldCalculateEstimatedSpeechEndHostTimeFromCachedEPMetrics
{
  isContinuousConversationSupported = [MEMORY[0x277D018F8] isContinuousConversationSupported];
  if (isContinuousConversationSupported)
  {
    audioRecordContext = self->_audioRecordContext;

    LOBYTE(isContinuousConversationSupported) = [(CSAudioRecordContext *)audioRecordContext isContinuousConversation];
  }

  return isContinuousConversationSupported;
}

- (void)stopRecordingWithOptions:(id)options
{
  optionsCopy = options;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CSSpeechController_stopRecordingWithOptions___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v8 = optionsCopy;
  selfCopy = self;
  v6 = optionsCopy;
  dispatch_async(queue, v7);
}

void __47__CSSpeechController_stopRecordingWithOptions___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __47__CSSpeechController_stopRecordingWithOptions___block_invoke_2;
  v27 = &unk_2784C3FA8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v28 = v2;
  v29 = v3;
  v4 = MEMORY[0x223DD26C0](&v24);
  if ([*(a1 + 32) stopRecordingReason] == 3)
  {
    [*(*(a1 + 40) + 544) cancelAudioLogging];
  }

  v5 = MEMORY[0x277D015C0];
  v6 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = mach_absolute_time();
    *buf = 136315650;
    v31 = "[CSSpeechController stopRecordingWithOptions:]_block_invoke";
    v32 = 2114;
    v33 = v7;
    v34 = 2050;
    v35 = v9;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s Options: %{public}@ at: %{public}llu", buf, 0x20u);
  }

  v10 = [*(a1 + 32) copy];
  v11 = *(a1 + 40);
  v12 = *(v11 + 376);
  *(v11 + 376) = v10;

  v13 = [*(a1 + 32) stopRecordingReason];
  if (([*(a1 + 40) _shouldCalculateEstimatedSpeechEndHostTimeFromCachedEPMetrics] & 1) != 0 || v13 == 1)
  {
    if ([*(a1 + 40) _isRecordRouteStudioDisplay] && objc_msgSend(*(a1 + 40), "canPerformDelayedStop") && objc_msgSend(*(a1 + 32), "expectedStopHostTime"))
    {
      v4[2](v4, 1);
      goto LABEL_22;
    }

    *(*(a1 + 40) + 131) = 1;
    v15 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = mach_absolute_time();
      *buf = 136315394;
      v31 = "[CSSpeechController stopRecordingWithOptions:]_block_invoke";
      v32 = 2050;
      v33 = v17;
      _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_DEFAULT, "%s Reporting didDeliverLastPacket at: %{public}llu", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 144));
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = [*(a1 + 40) _calculateEstimatedSpeechEndHostTimeWithStopOptions:*(a1 + 32)];
      v21 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v31 = "[CSSpeechController stopRecordingWithOptions:]_block_invoke";
        v32 = 2050;
        v33 = v20;
        _os_log_impl(&dword_222E4D000, v21, OS_LOG_TYPE_DEFAULT, "%s SpeechEndEstimation: %{public}llu", buf, 0x16u);
      }

      v22 = objc_loadWeakRetained((*(a1 + 40) + 144));
      [v22 speechControllerDidDeliverLastBuffer:*(a1 + 40) forReason:0 estimatedSpeechEndHostTime:v20];
    }

    goto LABEL_21;
  }

  if (![*(a1 + 32) expectedStopHostTime] || !objc_msgSend(*(a1 + 40), "canPerformDelayedStop"))
  {
LABEL_21:
    [*(a1 + 40) handleStopRecordingRequestWithOptions:*(a1 + 32)];
    goto LABEL_22;
  }

  [MEMORY[0x277D016E0] inputRecordingBufferDuration];
  v4[2](v4, (v14 * 3.0));
LABEL_22:

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __47__CSSpeechController_stopRecordingWithOptions___block_invoke_2(uint64_t a1, unint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v10 = 136315394;
    v11 = "[CSSpeechController stopRecordingWithOptions:]_block_invoke_2";
    v12 = 2050;
    v13 = [v5 expectedStopHostTime];
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s Scheduling StopRecording After HostTime=%{public}llu", &v10, 0x16u);
  }

  *(*(a1 + 40) + 384) = 0;
  result = [MEMORY[0x277D016E0] inputRecordingSampleRate];
  *(*(a1 + 40) + 392) = (v8 * a2);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleStopRecordingRequestWithOptions:(id)options
{
  v21 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v6 = MEMORY[0x277D015C0];
  v7 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[CSSpeechController handleStopRecordingRequestWithOptions:]";
    v19 = 2112;
    v20 = optionsCopy;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s options :%@", buf, 0x16u);
  }

  kdebug_trace();
  v8 = NSStringFromSelector(a2);
  [(CSSpeechController *)self _cancelPendingAudioSessionActivateForReason:v8];

  audioStream = [(CSSpeechController *)self audioStream];

  if (audioStream)
  {
    mEMORY[0x277D01880] = [MEMORY[0x277D01880] sharedInstance];
    [mEMORY[0x277D01880] notifyWillStopStream:0 reason:0 withEventUUID:self->_recordEventUUID];

    audioStream2 = [(CSSpeechController *)self audioStream];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__CSSpeechController_handleStopRecordingRequestWithOptions___block_invoke;
    v16[3] = &unk_2784C6DA8;
    v16[4] = self;
    [audioStream2 stopAudioStreamWithOption:optionsCopy completion:v16];
  }

  else
  {
    v12 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = "[CSSpeechController handleStopRecordingRequestWithOptions:]";
      _os_log_error_impl(&dword_222E4D000, v12, OS_LOG_TYPE_ERROR, "%s Asking stopRecording when audio stream is not existing", buf, 0xCu);
    }

    queue = self->_queue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__CSSpeechController_handleStopRecordingRequestWithOptions___block_invoke_301;
    v15[3] = &unk_2784C6FD0;
    v15[4] = self;
    dispatch_async(queue, v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __60__CSSpeechController_handleStopRecordingRequestWithOptions___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CSSpeechController_handleStopRecordingRequestWithOptions___block_invoke_2;
  block[3] = &unk_2784C6FD0;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (BOOL)_shouldSetStartSampleCountForRTS
{
  if (![(CSAudioRecordContext *)self->_audioRecordContext isRTSTriggered])
  {
    return 0;
  }

  lastRTSTriggerInfo = self->_lastRTSTriggerInfo;
  if (!lastRTSTriggerInfo)
  {
    return 0;
  }

  v4 = [(NSDictionary *)lastRTSTriggerInfo objectForKeyedSubscript:*MEMORY[0x277D01AE8]];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_shouldSetStartSampleCount
{
  if ((-[CSAudioRecordContext isBuiltInVoiceTriggered](self->_audioRecordContext, "isBuiltInVoiceTriggered") && ([MEMORY[0x277D018F8] isLocalVoiceTriggerAvailable] & 1) != 0 || (-[CSAudioRecordContext isHearstVoiceTriggered](self->_audioRecordContext, "isHearstVoiceTriggered") & 1) != 0 || -[CSAudioRecordContext isJarvisVoiceTriggered](self->_audioRecordContext, "isJarvisVoiceTriggered")) && (lastVoiceTriggerInfo = self->_lastVoiceTriggerInfo) != 0)
  {
    v4 = [(NSDictionary *)lastVoiceTriggerInfo objectForKeyedSubscript:*MEMORY[0x277D01F00]];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  if ([(CSAudioRecordContext *)self->_audioRecordContext isRemoraVoiceTriggered])
  {
    v6 = self->_lastVoiceTriggerInfo;
    if (v6)
    {
      v7 = [(NSDictionary *)v6 objectForKeyedSubscript:*MEMORY[0x277D01F00]];
      v8 = v7 != 0;

      v5 |= v8;
    }
  }

  return v5 & 1;
}

- (BOOL)_shouldUseLanguageDetector:(id)detector
{
  detectorCopy = detector;
  v4 = detectorCopy;
  if (!detectorCopy)
  {
    goto LABEL_6;
  }

  v5 = [detectorCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_LanguageDetectorDictationLanguages"];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v4 objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_LanguageDetectorDictationLanguages"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_LanguageDetectorDictationLanguages"];
  v10 = [v9 count];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

  return v11;
}

- (void)_createLanguageDetectorIfNeeded
{
  if (!self->_languageDetector)
  {
    v4 = objc_alloc_init(CSLanguageDetector);
    languageDetector = self->_languageDetector;
    self->_languageDetector = v4;
  }
}

- (void)_startFeedbackForTwoShotAtTime:(double)time
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a2);
  [(CSSpeechController *)self _performPendingAudioSessionActivateForReason:v5];

  if (self->_isSoundPlaying && ![(CSSpeechController *)self _canPlayTwoShotFeedbackDuringMediaPlayback])
  {
    v14 = *MEMORY[0x277D015C0];
    if (!os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v16 = 136315138;
    v17 = "[CSSpeechController _startFeedbackForTwoShotAtTime:]";
    v12 = "%s Will not play two shot feedback for this request";
    v13 = v14;
    goto LABEL_15;
  }

  isSiriClientListening = self->_isSiriClientListening;
  v7 = *MEMORY[0x277D015C0];
  v8 = os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT);
  if (!isSiriClientListening)
  {
    if (!v8)
    {
      goto LABEL_16;
    }

    v16 = 136315138;
    v17 = "[CSSpeechController _startFeedbackForTwoShotAtTime:]";
    v12 = "%s Siri Client is no longer listening, don't play two shot feedback";
    v13 = v7;
LABEL_15:
    _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_DEFAULT, v12, &v16, 0xCu);
    goto LABEL_16;
  }

  if (v8)
  {
    twoShotNotificationEnabled = self->_twoShotNotificationEnabled;
    v17 = "[CSSpeechController _startFeedbackForTwoShotAtTime:]";
    v16 = 136315650;
    if (twoShotNotificationEnabled)
    {
      v10 = @"Yes";
    }

    else
    {
      v10 = @"No";
    }

    v18 = 2050;
    timeCopy = time;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s Two shot is detected at time %{public}.3f, should notify? [%{public}@]", &v16, 0x20u);
  }

  if (self->_twoShotNotificationEnabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained speechControllerDidDetectVoiceTriggerTwoShot:self atTime:1 wantsAudibleFeedback:time];
  }

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldUseSpeakerRecognitionProxy
{
  isAttentiveSiriEnabled = CSIsCommunalDevice();
  if (isAttentiveSiriEnabled)
  {
    isAttentiveSiriEnabled = [MEMORY[0x277D018F8] isAttentiveSiriEnabled];
    if (isAttentiveSiriEnabled)
    {
      LOBYTE(isAttentiveSiriEnabled) = [MEMORY[0x277D018F8] shouldDisableSpeakerRecognition] ^ 1;
    }
  }

  return isAttentiveSiriEnabled;
}

- (BOOL)startRecordingWithSettings:(id)settings error:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v7 = MEMORY[0x277D015C0];
  v8 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[CSSpeechController startRecordingWithSettings:error:]";
    *&buf[12] = 2114;
    *&buf[14] = settingsCopy;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s settings : %{public}@", buf, 0x16u);
  }

  speakerRecognitionScores = self->_speakerRecognitionScores;
  self->_speakerRecognitionScores = 0;

  mach_absolute_time();
  kdebug_trace();
  v10 = *MEMORY[0x277CB8350];
  v11 = [settingsCopy objectForKey:*MEMORY[0x277CB8350]];

  if (v11)
  {
    v12 = mach_absolute_time();
    v13 = [settingsCopy objectForKey:v10];
    unsignedLongLongValue = [v13 unsignedLongLongValue];

    v15 = *v7;
    v16 = *v7;
    v17 = v12 - unsignedLongLongValue;
    if (v12 >= unsignedLongLongValue)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v22 = MEMORY[0x277D01798];
        v23 = v15;
        [v22 hostTimeToSeconds:v17];
        *buf = 136315394;
        *&buf[4] = "[CSSpeechController startRecordingWithSettings:error:]";
        *&buf[12] = 2048;
        *&buf[14] = v24;
        _os_log_impl(&dword_222E4D000, v23, OS_LOG_TYPE_DEFAULT, "%s historical audio buffer Siri requested in seconds: %f", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = unsignedLongLongValue - v12;
      v19 = MEMORY[0x277D01798];
      v20 = v15;
      [v19 hostTimeToSeconds:v18];
      *buf = 136315394;
      *&buf[4] = "[CSSpeechController startRecordingWithSettings:error:]";
      *&buf[12] = 2048;
      *&buf[14] = v21;
      _os_log_error_impl(&dword_222E4D000, v20, OS_LOG_TYPE_ERROR, "%s requestedAudioStartHostTime is greater than startRecordingRequestHostTime. TimeDiff in seconds :%f", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v66 = __Block_byref_object_copy__8402;
  v67 = __Block_byref_object_dispose__8403;
  v68 = objc_alloc_init(MEMORY[0x277D01678]);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CSSpeechController_startRecordingWithSettings_error___block_invoke;
  block[3] = &unk_2784C5948;
  block[4] = self;
  v60 = buf;
  v26 = settingsCopy;
  v59 = v26;
  dispatch_async_and_wait(queue, block);
  v27 = self->_queue;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __55__CSSpeechController_startRecordingWithSettings_error___block_invoke_279;
  v57[3] = &unk_2784C6F30;
  v57[4] = self;
  v57[5] = buf;
  dispatch_async(v27, v57);
  [(CSContinuousVoiceTrigger *)self->_continuousVoiceTrigger resetWithAudioRecordContext:self->_audioRecordContext];
  if ([MEMORY[0x277D018F8] supportCSTwoShotDecision])
  {
    if ([(CSAudioRecordContext *)self->_audioRecordContext isVoiceTriggered])
    {
      lastVoiceTriggerInfo = self->_lastVoiceTriggerInfo;
LABEL_12:
      [(CSContinuousVoiceTrigger *)self->_continuousVoiceTrigger startDetectTwoShot:lastVoiceTriggerInfo];
      goto LABEL_16;
    }

    if (CSIsWatch() && [(CSAudioRecordContext *)self->_audioRecordContext isRTSTriggered])
    {
      lastVoiceTriggerInfo = 0;
      goto LABEL_12;
    }
  }

LABEL_16:
  v29 = self->_queue;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __55__CSSpeechController_startRecordingWithSettings_error___block_invoke_2;
  v55[3] = &unk_2784C6FA8;
  v55[4] = self;
  v30 = v26;
  v56 = v30;
  dispatch_async(v29, v55);
  v31 = 0;
  v32 = 0.0;
  if (v30 && self->_supportSessionActivateDelay)
  {
    v33 = [v30 objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_AudioSessionActiveDelay"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v35 = [v30 objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_AudioSessionActiveDelay"];
      [v35 doubleValue];
      v32 = v36;

      v37 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        *v61 = 136315394;
        v62 = "[CSSpeechController startRecordingWithSettings:error:]";
        v63 = 2050;
        v64 = v32;
        _os_log_impl(&dword_222E4D000, v37, OS_LOG_TYPE_DEFAULT, "%s Ask delay audio session active by %{public}f seconds", v61, 0x16u);
      }

      v31 = 1;
    }

    else
    {
      v31 = 0;
    }
  }

  mach_absolute_time();
  kdebug_trace();
  if (-[CSAudioRecordContext isTVRemote](self->_audioRecordContext, "isTVRemote") && ![*(*&buf[8] + 40) isAlertBehaviorOverridedBeep])
  {
    v41 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      *v61 = 136315138;
      v62 = "[CSSpeechController startRecordingWithSettings:error:]";
      _os_log_impl(&dword_222E4D000, v41, OS_LOG_TYPE_DEFAULT, "%s Postpone calling audio session activation til we receive didStart", v61, 0xCu);
    }

    v38 = 1;
  }

  else
  {
    if (![(CSSpeechController *)self _activateAudioSessionWithReason:2 delay:v31 delayRequested:error error:v32])
    {
      v39 = *v7;
      if (!os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
LABEL_35:
        v49 = 0;
        goto LABEL_36;
      }

      *v61 = 136315138;
      v62 = "[CSSpeechController startRecordingWithSettings:error:]";
      v40 = "%s _activateAudioSessionWithDelay has failed. startRecordWithSettings has failed";
LABEL_38:
      _os_log_error_impl(&dword_222E4D000, v39, OS_LOG_TYPE_ERROR, v40, v61, 0xCu);
      goto LABEL_35;
    }

    v38 = 0;
  }

  audioStream = [(CSSpeechController *)self audioStream];

  if (!audioStream)
  {
    v39 = *v7;
    if (!os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *v61 = 136315138;
    v62 = "[CSSpeechController startRecordingWithSettings:error:]";
    v40 = "%s audioStream not existing";
    goto LABEL_38;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  recordEventUUID = self->_recordEventUUID;
  self->_recordEventUUID = uUIDString;

  mEMORY[0x277D01880] = [MEMORY[0x277D01880] sharedInstance];
  [mEMORY[0x277D01880] notifyWillStartStreamWithContext:self->_audioRecordContext option:*(*&buf[8] + 40) withEventUUID:self->_recordEventUUID];

  audioStream2 = [(CSSpeechController *)self audioStream];
  v48 = *(*&buf[8] + 40);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __55__CSSpeechController_startRecordingWithSettings_error___block_invoke_287;
  v52[3] = &unk_2784C3F80;
  v53 = v38;
  *&v52[6] = v32;
  v54 = v31;
  v52[4] = self;
  v52[5] = buf;
  [audioStream2 startAudioStreamWithOption:v48 completion:v52];

  v49 = 1;
LABEL_36:
  mach_absolute_time();
  kdebug_trace();
  mach_absolute_time();
  kdebug_trace();

  _Block_object_dispose(buf, 8);
  v50 = *MEMORY[0x277D85DE8];
  return v49;
}

void __55__CSSpeechController_startRecordingWithSettings_error___block_invoke(uint64_t a1)
{
  v127 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 131) = 0;
  *(*(a1 + 32) + 132) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 368);
  *(v2 + 368) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 376);
  *(v4 + 376) = 0;

  *(*(a1 + 32) + 384) = 0;
  *(*(a1 + 32) + 133) = [*(a1 + 32) _canDelayStopRecording];
  *(*(a1 + 32) + 134) = 0;
  [MEMORY[0x277D016E0] inputRecordingBufferDuration];
  v7 = v6;
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  *(*(a1 + 32) + 392) = (v7 * v8 * 3.0);
  v9 = *(a1 + 32);
  v10 = *(v9 + 512);
  *(v9 + 512) = 0;

  *(*(a1 + 32) + 136) = 0;
  *(*(a1 + 32) + 140) = 0;
  v11 = *(*(*(a1 + 48) + 8) + 40);
  v12 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277CB8318]];
  [v11 setAVVCAlertBehavior:v12];

  v13 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_shouldSkipStartRecordingAlert"];

  if (v13)
  {
    v14 = *(*(*(a1 + 48) + 8) + 40);
    v15 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_shouldSkipStartRecordingAlert"];
    [v14 setSkipAlertBehavior:{objc_msgSend(v15, "BOOLValue")}];
  }

  v16 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_allowRecordWhileBeep"];

  if (v16)
  {
    v17 = *(*(*(a1 + 48) + 8) + 40);
    v18 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_allowRecordWhileBeep"];
    [v17 setAllowRecordWhileBeep:{objc_msgSend(v18, "BOOLValue")}];
  }

  if (!CSIsMac())
  {
    goto LABEL_9;
  }

  if (CSIsAppleSiliconMac())
  {
    v19 = [MEMORY[0x277D01788] sharedPreferences];
    if (![v19 isFlexibleFollowupsSupported])
    {
LABEL_14:

      goto LABEL_15;
    }

    v20 = [*(*(a1 + 32) + 176) isServerInvoked];

    if (v20)
    {
LABEL_9:
      v21 = *MEMORY[0x277CB8350];
      v22 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277CB8350]];

      if (v22)
      {
        v23 = [MEMORY[0x277D018F8] supportOpportunisticZLL];
        v24 = *(*(*(a1 + 48) + 8) + 40);
        if (v23)
        {
          [v24 setUseOpportunisticZLL:1];
        }

        else
        {
          [v24 setRequestHistoricalAudioDataWithHostTime:1];
        }

        v25 = *(*(*(a1 + 48) + 8) + 40);
        v19 = [*(a1 + 40) objectForKeyedSubscript:v21];
        [v25 setStartRecordingHostTime:{objc_msgSend(v19, "unsignedLongLongValue")}];
        goto LABEL_14;
      }
    }
  }

LABEL_15:
  v26 = *(a1 + 40);
  v27 = MEMORY[0x277D015C0];
  if (!v26)
  {
    goto LABEL_37;
  }

  v28 = [v26 objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_requestMHUUID"];
  if (v28)
  {
    v29 = v28;
    v30 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_requestMHUUID"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v32 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_requestMHUUID"];
      v33 = *(a1 + 32);
      v34 = *(v33 + 368);
      *(v33 + 368) = v32;

      v35 = *(*(*(a1 + 48) + 8) + 40);
      v36 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_requestMHUUID"];
      [v35 setRequestMHUUID:v36];

      v37 = *v27;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_requestMHUUID"];
        *v125 = 136315394;
        *&v125[4] = "[CSSpeechController startRecordingWithSettings:error:]_block_invoke";
        *&v125[12] = 2112;
        *&v125[14] = v38;
        _os_log_impl(&dword_222E4D000, v37, OS_LOG_TYPE_DEFAULT, "%s Ask start recording with requestMHUUID: %@", v125, 0x16u);
      }
    }
  }

  v39 = *(a1 + 40);
  if (!v39)
  {
    goto LABEL_37;
  }

  v40 = [v39 objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_siriSessionUUID"];
  if (v40)
  {
    v41 = v40;
    v42 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_siriSessionUUID"];
    objc_opt_class();
    v43 = objc_opt_isKindOfClass();

    if (v43)
    {
      v44 = *(*(*(a1 + 48) + 8) + 40);
      v45 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_siriSessionUUID"];
      [v44 setSiriSessionUUID:v45];
    }
  }

  v46 = *(a1 + 40);
  if (!v46)
  {
    goto LABEL_37;
  }

  v47 = [v46 objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_disableEndpointer"];

  if (v47)
  {
    v48 = *(*(*(a1 + 48) + 8) + 40);
    v49 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_disableEndpointer"];
    [v48 setDisableEndpointer:{objc_msgSend(v49, "BOOLValue")}];
  }

  v50 = *(a1 + 40);
  if (!v50)
  {
    goto LABEL_37;
  }

  v51 = [v50 objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_disableLocalSpeechRecognizer"];

  if (v51)
  {
    v52 = *(*(*(a1 + 48) + 8) + 40);
    v53 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_disableLocalSpeechRecognizer"];
    [v52 setDisableLocalSpeechRecognizer:{objc_msgSend(v53, "BOOLValue")}];
  }

  v54 = *(a1 + 40);
  if (!v54)
  {
    goto LABEL_37;
  }

  v55 = [v54 objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_asrOnDevice"];
  if (!v55)
  {
    goto LABEL_37;
  }

  v56 = v55;
  v57 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_asrOnDevice"];
  v58 = [v57 BOOLValue];

  if (v58)
  {
    v59 = *v27;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *v125 = 136315138;
      *&v125[4] = "[CSSpeechController startRecordingWithSettings:error:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v59, OS_LOG_TYPE_DEFAULT, "%s Disable audio converter since local asr is going to be used", v125, 0xCu);
    }

    *(*(a1 + 32) + 116) = 1;
    [*(*(*(a1 + 48) + 8) + 40) setDisableRCSelection:1];
  }

  else
  {
LABEL_37:
    v60 = *v27;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *v125 = 136315138;
      *&v125[4] = "[CSSpeechController startRecordingWithSettings:error:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v60, OS_LOG_TYPE_DEFAULT, "%s Enable audio converter", v125, 0xCu);
    }

    *(*(a1 + 32) + 116) = 0;
  }

  v61 = *(a1 + 40);
  if (!v61)
  {
    goto LABEL_44;
  }

  v62 = [v61 objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_hybridUODEnabled"];
  if (!v62)
  {
    goto LABEL_44;
  }

  v63 = v62;
  v64 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_hybridUODEnabled"];
  v65 = [v64 BOOLValue];

  if (v65)
  {
    v66 = 1;
  }

  else
  {
LABEL_44:
    v66 = 0;
  }

  *(*(a1 + 32) + 129) = v66;
  v67 = *(a1 + 40);
  if (v67)
  {
    v68 = [v67 objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_disablePrewarmLocalAsrAtStartRecording"];
    if (v68)
    {
      v69 = v68;
      v70 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_disablePrewarmLocalAsrAtStartRecording"];
      v71 = [v70 BOOLValue];

      if (v71)
      {
        v72 = *v27;
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *v125 = 136315138;
          *&v125[4] = "[CSSpeechController startRecordingWithSettings:error:]_block_invoke";
          _os_log_impl(&dword_222E4D000, v72, OS_LOG_TYPE_DEFAULT, "%s Disable prewarming local asr at startRecording", v125, 0xCu);
        }

        v73 = *(*(*(a1 + 48) + 8) + 40);
        v74 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_disablePrewarmLocalAsrAtStartRecording"];
        [v73 setDisablePrewarmLocalAsrAtStartRecording:{objc_msgSend(v74, "BOOLValue")}];
      }
    }
  }

  if ([*(a1 + 32) _shouldSetStartSampleCount])
  {
    v75 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:*MEMORY[0x277D01D30]];
    v76 = [v75 unsignedIntegerValue];

    [*(*(*(a1 + 48) + 8) + 40) setRequestHistoricalAudioDataSampleCount:1];
    [*(*(*(a1 + 48) + 8) + 40) setStartRecordingSampleCount:v76];
    v77 = *v27;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      *v125 = 136315394;
      *&v125[4] = "[CSSpeechController startRecordingWithSettings:error:]_block_invoke";
      *&v125[12] = 2050;
      *&v125[14] = v76;
      _os_log_impl(&dword_222E4D000, v77, OS_LOG_TYPE_DEFAULT, "%s Ask start recording from: %{public}tu", v125, 0x16u);
    }
  }

  v78 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_DictationStartSampleId"];

  if (v78)
  {
    v79 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_DictationStartSampleId"];
    v80 = [v79 unsignedIntegerValue];

    [*(*(*(a1 + 48) + 8) + 40) setRequestHistoricalAudioDataSampleCount:1];
    [*(*(*(a1 + 48) + 8) + 40) setStartRecordingSampleCount:v80];
    v81 = *v27;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      *v125 = 136315394;
      *&v125[4] = "[CSSpeechController startRecordingWithSettings:error:]_block_invoke";
      *&v125[12] = 2050;
      *&v125[14] = v80;
      _os_log_impl(&dword_222E4D000, v81, OS_LOG_TYPE_DEFAULT, "%s TriggerlessDictation: Ask start recording from: %{public}tu", v125, 0x16u);
    }
  }

  if ([*(a1 + 32) _shouldSetStartSampleCountForRTS])
  {
    v82 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:*MEMORY[0x277D01AE8]];
    v83 = [v82 unsignedIntegerValue];

    [*(*(*(a1 + 48) + 8) + 40) setRequestHistoricalAudioDataSampleCount:1];
    [*(*(*(a1 + 48) + 8) + 40) setStartRecordingSampleCount:v83];
    v84 = *v27;
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      *v125 = 136315394;
      *&v125[4] = "[CSSpeechController startRecordingWithSettings:error:]_block_invoke";
      *&v125[12] = 2050;
      *&v125[14] = v83;
      _os_log_impl(&dword_222E4D000, v84, OS_LOG_TYPE_DEFAULT, "%s Ask start recording from: %{public}tu", v125, 0x16u);
    }
  }

  v85 = [*(*(a1 + 32) + 176) activationMetadata];
  if ([*(*(a1 + 32) + 176) isContinuousConversation])
  {
    if (v85)
    {
      v86 = *MEMORY[0x277D01D30];
      v87 = [v85 objectForKeyedSubscript:*MEMORY[0x277D01D30]];

      if (v87)
      {
        v88 = [*(*(a1 + 32) + 176) activationMetadata];
        v89 = [v88 objectForKeyedSubscript:v86];
        v90 = [v89 unsignedIntegerValue];

        [*(*(*(a1 + 48) + 8) + 40) setRequestHistoricalAudioDataSampleCount:1];
        [*(*(*(a1 + 48) + 8) + 40) setStartRecordingSampleCount:v90];
        v91 = *v27;
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          *v125 = 136315650;
          *&v125[4] = "[CSSpeechController startRecordingWithSettings:error:]_block_invoke";
          *&v125[12] = 2114;
          *&v125[14] = v85;
          *&v125[22] = 2050;
          v126 = v90;
          _os_log_impl(&dword_222E4D000, v91, OS_LOG_TYPE_DEFAULT, "%s ContinuousConversation trigger Info: %{public}@ ask start recording from: %{public}tu", v125, 0x20u);
        }
      }
    }
  }

  *(*(a1 + 32) + 118) = 1;
  v92 = [*(*(a1 + 32) + 176) isVoiceTriggered];
  v93 = *(a1 + 32);
  if (v92)
  {
    v94 = *(v93 + 72);
    if (v94)
    {
      v95 = *MEMORY[0x277D01D10];
      v96 = [v94 objectForKeyedSubscript:*MEMORY[0x277D01D10]];

      v93 = *(a1 + 32);
      if (v96)
      {
        v97 = [*(v93 + 72) objectForKeyedSubscript:v95];
        *(*(a1 + 32) + 272) = [v97 unsignedIntegerValue];

        v98 = *v27;
        if (os_log_type_enabled(*v27, OS_LOG_TYPE_DEFAULT))
        {
          v99 = *(*(a1 + 32) + 272);
          *v125 = 136315394;
          *&v125[4] = "[CSSpeechController startRecordingWithSettings:error:]_block_invoke";
          *&v125[12] = 2050;
          *&v125[14] = v99;
          v100 = "%s Voice trigger to use the current voice triggered channel: %{public}tu";
LABEL_79:
          _os_log_impl(&dword_222E4D000, v98, OS_LOG_TYPE_DEFAULT, v100, v125, 0x16u);
          goto LABEL_87;
        }

        goto LABEL_87;
      }
    }
  }

  v101 = [*(v93 + 176) isServerInvoked];
  v102 = *(a1 + 32);
  if (!v101 || !v102[9] || (v103 = *MEMORY[0x277D01D10], [v102[9] objectForKeyedSubscript:*MEMORY[0x277D01D10]], v104 = objc_claimAutoreleasedReturnValue(), v104, v102 = *(a1 + 32), !v104))
  {
    if ([v102 _shouldUseVoiceIsolationChannel])
    {
      *(*(a1 + 32) + 272) = [MEMORY[0x277D016E0] channelForVoiceIsolation];
      v107 = *(a1 + 32);
      v108 = *(v107 + 72);
      *(v107 + 72) = 0;

      v109 = *v27;
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        v110 = *(*(a1 + 32) + 272);
        *v125 = 136315394;
        *&v125[4] = "[CSSpeechController startRecordingWithSettings:error:]_block_invoke";
        *&v125[12] = 2050;
        *&v125[14] = v110;
        v111 = "%s SpeechController to receive data from VoiceIsolation Channel: %{public}tu";
        v112 = v109;
        v113 = 22;
LABEL_85:
        _os_log_impl(&dword_222E4D000, v112, OS_LOG_TYPE_DEFAULT, v111, v125, v113);
      }
    }

    else
    {
      *(*(a1 + 32) + 272) = [MEMORY[0x277D016E0] channelForProcessedInput];
      v114 = *(a1 + 32);
      v115 = *(v114 + 72);
      *(v114 + 72) = 0;

      v109 = *v27;
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        *v125 = 136315138;
        *&v125[4] = "[CSSpeechController startRecordingWithSettings:error:]_block_invoke";
        v111 = "%s SpeechController to receive data from default channel";
        v112 = v109;
        v113 = 12;
        goto LABEL_85;
      }
    }

    goto LABEL_87;
  }

  v105 = [v102[9] objectForKeyedSubscript:v103];
  *(*(a1 + 32) + 272) = [v105 unsignedIntegerValue];

  v98 = *v27;
  if (os_log_type_enabled(*v27, OS_LOG_TYPE_DEFAULT))
  {
    v106 = *(*(a1 + 32) + 272);
    *v125 = 136315394;
    *&v125[4] = "[CSSpeechController startRecordingWithSettings:error:]_block_invoke";
    *&v125[12] = 2050;
    *&v125[14] = v106;
    v100 = "%s Auto prompt to use the last voice triggered channel: %{public}tu";
    goto LABEL_79;
  }

LABEL_87:
  [*(*(*(a1 + 48) + 8) + 40) setRequireSingleChannelLookup:{1, *v125, *&v125[16]}];
  [*(*(*(a1 + 48) + 8) + 40) setSelectedChannel:*(*(a1 + 32) + 272)];
  [*(*(*(a1 + 48) + 8) + 40) setPotentiallyNeedsCarPlayLatencyCorrection:1];
  [*(a1 + 32) _setupSpeakerRecognitionController];
  if ([*(a1 + 32) _shouldUseSpeakerRecognitionProxy])
  {
    v116 = *(a1 + 32);
    if (!*(v116 + 520))
    {
      v117 = *(v116 + 424);
      if (!v117)
      {
        v118 = [[CSSpeakerRecognitionProxy alloc] initWithDelegate:*(a1 + 32)];
        v119 = *(a1 + 32);
        v120 = *(v119 + 424);
        *(v119 + 424) = v118;

        v117 = *(*(a1 + 32) + 424);
      }

      [v117 startXPCConnection];
    }
  }

  v121 = *v27;
  if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
  {
    v122 = *(*(a1 + 32) + 272);
    *v125 = 136315394;
    *&v125[4] = "[CSSpeechController startRecordingWithSettings:error:]_block_invoke";
    *&v125[12] = 2050;
    *&v125[14] = v122;
    _os_log_impl(&dword_222E4D000, v121, OS_LOG_TYPE_DEFAULT, "%s SpeechController to receive data from channel %{public}tu", v125, 0x16u);
  }

  v123 = *(a1 + 32);
  if ((*(v123 + 116) & 1) == 0)
  {
    [*(v123 + 48) reset];
    v123 = *(a1 + 32);
  }

  [*(v123 + 280) reset];

  v124 = *MEMORY[0x277D85DE8];
}

uint64_t __55__CSSpeechController_startRecordingWithSettings_error___block_invoke_279(uint64_t a1)
{
  kdebug_trace();
  [*(*(a1 + 32) + 168) resetForNewRequestWithSampleRate:objc_msgSend(*(a1 + 32) recordContext:"_currentAudioRecorderSampleRate") recordOption:*(*(a1 + 32) + 176) voiceTriggerInfo:{*(*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 72)}];
  [*(*(a1 + 32) + 168) setActiveChannel:{objc_msgSend(MEMORY[0x277D016E0], "channelForProcessedInput")}];

  return kdebug_trace();
}

void __55__CSSpeechController_startRecordingWithSettings_error___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 127) = 0;
  v2 = [*(a1 + 32) recordRoute];
  v3 = [v2 isEqualToString:*MEMORY[0x277CB8320]];

  if (v3)
  {
    *(*(a1 + 32) + 127) = 1;
  }

  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];
  v6 = *(a1 + 32);
  v7 = *(v6 + 416);
  *(v6 + 416) = v5;

  v8 = MEMORY[0x277D01620];
  if (*(*(a1 + 32) + 127) == 1)
  {
    [MEMORY[0x277D01748] lpcmMonoNonInterleavedWithRemoteVADASBD];
    [MEMORY[0x277D01748] lpcmMonoInterleavedWithRemoteVADASBD];
    [v8 createAudioFileWriterForRemoteVADWithInputFormat:buf outputFormat:v30 withLoggingUUID:*(*(a1 + 32) + 416)];
  }

  else
  {
    [MEMORY[0x277D01748] lpcmInt16ASBD];
    [MEMORY[0x277D01748] lpcmInt16ASBD];
    [v8 createAudioFileWriterWithInputFormat:buf outputFormat:v30 withLoggingUUID:*(*(a1 + 32) + 416)];
  }
  v9 = ;
  v10 = *(a1 + 32);
  v11 = *(v10 + 232);
  *(v10 + 232) = v9;

  *(*(a1 + 32) + 130) = [*(a1 + 32) _shouldUseLanguageDetector:*(a1 + 40)];
  v12 = *(a1 + 32);
  if (v12[130] == 1)
  {
    [v12 _createLanguageDetectorIfNeeded];
    v13 = [*(a1 + 32) _languageDetectorOptionFromSettings:*(a1 + 40)];
    *&v14 = [*(a1 + 32) _currentAudioRecorderSampleRate];
    [v13 setSamplingRate:v14];
    v15 = *(a1 + 32);
    v16 = v15[38];
    v17 = [v15 languageDetectorDelegate];
    [v16 setDelegate:v17];

    [*(*(a1 + 32) + 304) resetForNewRequest:v13];
  }

  v18 = [*(a1 + 40) objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_siriSessionUUID"];
  if (v18 && (*(*(a1 + 32) + 116) & 1) == 0 && CSIsHorseman())
  {
    v19 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[CSSpeechController startRecordingWithSettings:error:]_block_invoke_2";
      _os_log_impl(&dword_222E4D000, v19, OS_LOG_TYPE_DEFAULT, "%s Trying to prepare uncompressed audio logging", buf, 0xCu);
    }

    v20 = objc_alloc(MEMORY[0x277D018E0]);
    v21 = [MEMORY[0x277CEF368] sharedPreferences];
    v22 = [v21 languageCode];
    v23 = [v20 initWithRequestId:v18 languageCode:v22 task:&stru_28363DA48];
    v24 = *(a1 + 32);
    v25 = *(v24 + 544);
    *(v24 + 544) = v23;

    [*(*(a1 + 32) + 544) prepareLogging:0];
  }

  else
  {
    v26 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[CSSpeechController startRecordingWithSettings:error:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v26, OS_LOG_TYPE_DEFAULT, "%s Local ASR is used, uncompressed audio logging is disabled", buf, 0xCu);
    }

    v27 = *(a1 + 32);
    v28 = *(v27 + 544);
    *(v27 + 544) = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __55__CSSpeechController_startRecordingWithSettings_error___block_invoke_287(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CSSpeechController_startRecordingWithSettings_error___block_invoke_2_288;
  block[3] = &unk_2784C3F58;
  v13 = a2;
  block[4] = v6;
  v10 = v5;
  v14 = *(a1 + 56);
  v12 = *(a1 + 48);
  v11 = *(a1 + 40);
  v8 = v5;
  dispatch_async(v7, block);
}

void __55__CSSpeechController_startRecordingWithSettings_error___block_invoke_2_288(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v2 = *(a1 + 32);
  if (!*(v2 + 512))
  {
    v3 = [v2 streamProvider];
    v4 = [v3 audioDeviceInfo];
    v5 = *(a1 + 32);
    v6 = *(v5 + 512);
    *(v5 + 512) = v4;

    v2 = *(a1 + 32);
  }

  WeakRetained = objc_loadWeakRetained((v2 + 144));
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 64))
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = *(*(a1 + 32) + 512);
      v12 = v9;
      v13 = [v11 description];
      v30 = 136315650;
      v31 = "[CSSpeechController startRecordingWithSettings:error:]_block_invoke_2";
      v32 = 2112;
      v33 = *&v10;
      v34 = 2114;
      v35 = v13;
      _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_DEFAULT, "%s Sending client speechControllerDidStartRecording successfully? %{pubic}@, audioDeviceInfo = %{public}@", &v30, 0x20u);
    }

    v14 = objc_loadWeakRetained((*(a1 + 32) + 144));
    [v14 speechControllerDidStartRecording:*(a1 + 32) audioDeviceInfo:*(*(a1 + 32) + 512) successfully:*(a1 + 64) error:*(a1 + 40)];
LABEL_16:

    goto LABEL_17;
  }

  v15 = objc_loadWeakRetained((*(a1 + 32) + 144));
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v18 = @"NO";
      if (*(a1 + 64))
      {
        v18 = @"YES";
      }

      v30 = 136315394;
      v31 = "[CSSpeechController startRecordingWithSettings:error:]_block_invoke";
      v32 = 2112;
      v33 = *&v18;
      _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_DEFAULT, "%s Sending client speechControllerDidStartRecording successfully? %{pubic}@", &v30, 0x16u);
    }

    v14 = objc_loadWeakRetained((*(a1 + 32) + 144));
    [v14 speechControllerDidStartRecording:*(a1 + 32) successfully:*(a1 + 64) error:*(a1 + 40)];
    goto LABEL_16;
  }

LABEL_17:
  if (*(a1 + 64) == 1 && *(a1 + 65) == 1)
  {
    v19 = [*(a1 + 32) audioStream];
    v20 = [v19 isStreaming];

    if (v20)
    {
      [*(a1 + 32) _activateAudioSessionWithReason:2 delay:*(a1 + 66) delayRequested:0 error:*(a1 + 56)];
    }
  }

  if ([*(a1 + 32) _shouldTrackLaunchLatency])
  {
    v21 = MEMORY[0x277D01798];
    v22 = mach_absolute_time();
    v23 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:*MEMORY[0x277D01ED0]];
    [v21 hostTimeToTimeInterval:{v22 - objc_msgSend(v23, "unsignedLongLongValue")}];
    v25 = v24;

    if (v25 >= 1.79999995)
    {
      v26 = *MEMORY[0x277D015C0];
      if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_ERROR))
      {
        v30 = 136315394;
        v31 = "[CSSpeechController startRecordingWithSettings:error:]_block_invoke";
        v32 = 2048;
        v33 = v25;
        _os_log_error_impl(&dword_222E4D000, v26, OS_LOG_TYPE_ERROR, "%s Report unexpectedly long launch latency %{publlic}.3f", &v30, 0x16u);
      }

      v27 = [MEMORY[0x277D01708] sharedInstance];
      [v27 submitVoiceTriggerIssueReport:*MEMORY[0x277D01AB0]];
    }
  }

  v28 = [MEMORY[0x277D01880] sharedInstance];
  [v28 notifyDidStartStreamWithContext:*(*(a1 + 32) + 176) successfully:*(a1 + 64) option:*(*(*(a1 + 48) + 8) + 40) withEventUUID:*(*(a1 + 32) + 256)];

  v29 = *MEMORY[0x277D85DE8];
}

- (id)_languageDetectorOptionFromSettings:(id)settings
{
  if (settings)
  {
    settingsCopy = settings;
    v4 = objc_alloc_init(CSLanguageDetectorOption);
    v5 = [settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_LanguageDetectorDictationLanguages"];
    v6 = objc_opt_class();
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke_2;
    v66[3] = &unk_2784C6FA8;
    v7 = v4;
    v67 = v7;
    v68 = v5;
    __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke(v5, v6, v66);
    v8 = [settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_LanguageDetectorCurrentKeyboard"];
    v9 = objc_opt_class();
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke_3;
    v63[3] = &unk_2784C6FA8;
    v10 = v7;
    v64 = v10;
    v65 = v8;
    __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke(v8, v9, v63);
    v11 = [settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_LanguageDetectorWasLanguageToggled"];
    v12 = objc_opt_class();
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke_4;
    v60[3] = &unk_2784C6FA8;
    v13 = v10;
    v61 = v13;
    v62 = v11;
    __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke(v11, v12, v60);
    v14 = [settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_LanguageDetectorMultilingualKeyboardLanguages"];
    v15 = objc_opt_class();
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke_5;
    v57[3] = &unk_2784C6FA8;
    v16 = v13;
    v58 = v16;
    v59 = v14;
    __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke(v14, v15, v57);
    v17 = [settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_LanguageDetectorKeyboardConvoLanguagePriors"];
    v18 = objc_opt_class();
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke_6;
    v54[3] = &unk_2784C6FA8;
    v19 = v16;
    v55 = v19;
    v56 = v17;
    __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke(v17, v18, v54);
    v20 = [settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_LanguageDetectorKeyboardGlobalLanguagePriors"];
    v21 = objc_opt_class();
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke_7;
    v51[3] = &unk_2784C6FA8;
    v22 = v19;
    v52 = v22;
    v53 = v20;
    __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke(v20, v21, v51);
    v23 = [settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_LanguageDetectorPreviousMessageLanguage"];
    v24 = objc_opt_class();
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke_8;
    v48[3] = &unk_2784C6FA8;
    v25 = v22;
    v49 = v25;
    v50 = v23;
    __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke(v23, v24, v48);
    v26 = [settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_LanguageDetectorGlobalLastKeyboardUsed"];
    v27 = objc_opt_class();
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke_9;
    v45[3] = &unk_2784C6FA8;
    v28 = v25;
    v46 = v28;
    v47 = v26;
    __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke(v26, v27, v45);
    v29 = [settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_LanguageDetectorDictationLanguagePriors"];
    v30 = objc_opt_class();
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke_10;
    v42[3] = &unk_2784C6FA8;
    v31 = v28;
    v43 = v31;
    v44 = v29;
    __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke(v29, v30, v42);
    v32 = [settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_LanguageDetectorConversationalMessages"];

    v33 = objc_opt_class();
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke_11;
    v39[3] = &unk_2784C6FA8;
    v34 = v31;
    v40 = v34;
    v41 = v32;
    v35 = v32;
    __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke(v35, v33, v39);
    v36 = v41;
    v37 = v34;
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

void __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v6 = a1;
  v4 = a3;
  if (v6)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (v4)
    {
      if (isKindOfClass)
      {
        v4[2](v4);
      }
    }
  }
}

uint64_t __58__CSSpeechController__languageDetectorOptionFromSettings___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) BOOLValue];

  return [v1 setWasLanguageToggled:v2];
}

- (void)_setupSpeakerRecognitionController
{
  v55 = *MEMORY[0x277D85DE8];
  if ((![MEMORY[0x277D018F8] isAttentiveSiriEnabled] || self->_endpointId) && CSIsCommunalDevice())
  {
    v3 = MEMORY[0x277D018F8];
    uUIDString = [(NSUUID *)self->_endpointId UUIDString];
    v5 = [v3 getSiriLanguageWithEndpointId:uUIDString fallbackLanguage:@"en-US"];

    v6 = +[CSVoiceTriggerAssetHandler sharedHandlerDisabledOnDeviceCompilation];
    uUIDString2 = [(NSUUID *)self->_endpointId UUIDString];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __56__CSSpeechController__setupSpeakerRecognitionController__block_invoke;
    v44[3] = &unk_2784C6B78;
    v44[4] = self;
    [v6 getVoiceTriggerAssetWithEndpointId:uUIDString2 completion:v44];

    v8 = [(SSRVoiceProfileManager *)self->_voiceProfileManager provisionedVoiceProfilesForAppDomain:*MEMORY[0x277D65450] withLocale:v5];
    v9 = v8;
    if (!v8 || ![v8 count])
    {
      v18 = *MEMORY[0x277D015C0];
      if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v46 = "[CSSpeechController _setupSpeakerRecognitionController]";
        v47 = 2114;
        v48 = v5;
        _os_log_impl(&dword_222E4D000, v18, OS_LOG_TYPE_DEFAULT, "%s Voice Profiles not present for %{public}@ - Bailing out", buf, 0x16u);
      }

      goto LABEL_39;
    }

    if (CSIsInternalBuild())
    {
      v10 = [(SSRVoiceProfileManager *)self->_voiceProfileManager provisionedVoiceProfilesForAppDomain:*MEMORY[0x277D65460] withLocale:v5];
      if (v10)
      {
        v11 = [v9 arrayByAddingObjectsFromArray:v10];

        v9 = v11;
      }
    }

    isBuiltInVoiceTriggered = [(CSAudioRecordContext *)self->_audioRecordContext isBuiltInVoiceTriggered];
    v13 = 4.0;
    if (isBuiltInVoiceTriggered)
    {
      lastVoiceTriggerInfo = self->_lastVoiceTriggerInfo;
      if (lastVoiceTriggerInfo)
      {
        v15 = [(NSDictionary *)lastVoiceTriggerInfo objectForKeyedSubscript:*MEMORY[0x277D01EB0]];
        [v15 floatValue];
        v13 = v16 + 4.0;
      }

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    v19 = MEMORY[0x277D015C0];
    v20 = *MEMORY[0x277D015C0];
    v21 = *MEMORY[0x277D015C0];
    if (!self->_ssrAssets)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v46 = "[CSSpeechController _setupSpeakerRecognitionController]";
        _os_log_error_impl(&dword_222E4D000, v20, OS_LOG_TYPE_ERROR, "%s Unable to setup SSR due to missing ssr assets", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      if (isBuiltInVoiceTriggered)
      {
        v22 = @"VT";
      }

      else
      {
        v22 = @"BP";
      }

      v23 = v20;
      v24 = [v9 count];
      *buf = 136316162;
      v46 = "[CSSpeechController _setupSpeakerRecognitionController]";
      v47 = 2114;
      v48 = v22;
      v49 = 2114;
      v50 = v5;
      v51 = 2050;
      v52 = v24;
      v53 = 2050;
      v54 = v13;
      _os_log_impl(&dword_222E4D000, v23, OS_LOG_TYPE_DEFAULT, "%s Setting up SSR controller with {%{public}@, %{public}@, %{public}ldusers, %{public}fsecs}", buf, 0x34u);
    }

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
    [v25 setObject:v26 forKey:*MEMORY[0x277D65468]];

    [v25 setObject:v5 forKey:*MEMORY[0x277D65430]];
    [v25 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D65470]];
    [v25 setObject:v9 forKey:*MEMORY[0x277D65448]];
    if (self->_lastVoiceTriggerInfo)
    {
      v27 = self->_lastVoiceTriggerInfo;
    }

    else
    {
      v27 = MEMORY[0x277CBEC10];
    }

    [v25 setObject:v27 forKey:*MEMORY[0x277D65478]];
    *&v28 = v13;
    v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
    [v25 setObject:v29 forKey:*MEMORY[0x277D65438]];

    [v25 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D65440]];
    [v25 setObject:self->_ssrAssets forKey:*MEMORY[0x277D65418]];
    endpointId = self->_endpointId;
    if (endpointId)
    {
      [v25 setObject:endpointId forKey:*MEMORY[0x277D65428]];
    }

    v43 = 0;
    v31 = [objc_alloc(MEMORY[0x277D653C8]) initWithVoiceRecognitionContext:v25 error:&v43];
    v32 = v43;
    v33 = v32;
    if (!v31 || v32)
    {
      v40 = *v19;
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        v37 = v40;
        localizedDescription = [v33 localizedDescription];
        *buf = 136315394;
        v46 = "[CSSpeechController _setupSpeakerRecognitionController]";
        v47 = 2112;
        v48 = localizedDescription;
        v39 = "%s ERR: Failed to create SSR context with error %@";
        goto LABEL_42;
      }
    }

    else
    {
      v42 = 0;
      v34 = [objc_alloc(MEMORY[0x277D653D0]) initWithContext:v31 withDelegate:self error:&v42];
      v33 = v42;
      speakerRecognitionController = self->_speakerRecognitionController;
      self->_speakerRecognitionController = v34;

      if (self->_speakerRecognitionController && !v33)
      {
        goto LABEL_38;
      }

      v36 = *v19;
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        v37 = v36;
        localizedDescription = [v33 localizedDescription];
        *buf = 136315394;
        v46 = "[CSSpeechController _setupSpeakerRecognitionController]";
        v47 = 2112;
        v48 = localizedDescription;
        v39 = "%s ERR: Failed to create SSR controller with error %@";
LABEL_42:
        _os_log_error_impl(&dword_222E4D000, v37, OS_LOG_TYPE_ERROR, v39, buf, 0x16u);
      }
    }

LABEL_38:
LABEL_39:
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __56__CSSpeechController__setupSpeakerRecognitionController__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CSSpeechController__setupSpeakerRecognitionController__block_invoke_2;
  block[3] = &unk_2784C6EE8;
  v12 = v6;
  v13 = v5;
  v14 = v7;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __56__CSSpeechController__setupSpeakerRecognitionController__block_invoke_2(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  if (v1 || (v5 = a1[5]) == 0)
  {
    v2 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[CSSpeechController _setupSpeakerRecognitionController]_block_invoke_2";
      v12 = 2114;
      v13 = v1;
      _os_log_error_impl(&dword_222E4D000, v2, OS_LOG_TYPE_ERROR, "%s Failed to get asset with %{public}@", &v10, 0x16u);
    }
  }

  else
  {
    objc_storeStrong((a1[6] + 448), v5);
    v6 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1[6] + 448);
      v8 = v6;
      v9 = [v7 configVersion];
      v10 = 136315394;
      v11 = "[CSSpeechController _setupSpeakerRecognitionController]_block_invoke";
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s MU using asset with version %{public}@", &v10, 0x16u);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_refreshSpeakerRecognitionAssets
{
  v17 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D018F8] supportsSpeakerRecognitionAssets])
  {
    array = [MEMORY[0x277CBEB18] array];
    v4 = MEMORY[0x277D018F8];
    uUIDString = [(NSUUID *)self->_endpointId UUIDString];
    v6 = [v4 getSiriLanguageWithEndpointId:uUIDString fallbackLanguage:@"en-US"];

    v7 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[CSSpeechController _refreshSpeakerRecognitionAssets]";
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s languageCode:%@", &v13, 0x16u);
    }

    mEMORY[0x277D65380] = [MEMORY[0x277D65380] sharedManager];
    v9 = [mEMORY[0x277D65380] allInstalledSpeakerRecognitionAssetsForLanguage:v6];

    if (v9)
    {
      [(NSArray *)array addObjectsFromArray:v9];
    }

    ssrAssets = self->_ssrAssets;
    self->_ssrAssets = array;
  }

  else
  {
    v11 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[CSSpeechController _refreshSpeakerRecognitionAssets]";
      _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_DEFAULT, "%s SpeakerRecognitionAssets not supported", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (AudioStreamBasicDescription)getLPCMAudioStreamBasicDescription
{
  v4 = CSIsOSX();
  isNarrowBand = self->_isNarrowBand;
  v6 = MEMORY[0x277D01748];
  if (v4)
  {
    if (self->_isNarrowBand)
    {

      return [v6 lpcmNarrowBandASBD];
    }

    else
    {

      return [v6 lpcmASBD];
    }
  }

  else if (self->_isNarrowBand)
  {

    return [v6 lpcmInt16NarrowBandASBD];
  }

  else
  {

    return [v6 lpcmInt16ASBD];
  }
}

- (void)releaseAudioSession:(unint64_t)session
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[CSSpeechController releaseAudioSession:]";
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  sessionProvider = [(CSSpeechController *)self sessionProvider];

  if (sessionProvider)
  {
    sessionProvider2 = [(CSSpeechController *)self sessionProvider];
    [sessionProvider2 deactivateAudioSession:session error:0];
  }

  else
  {
    sessionProvider2 = [(CSSpeechController *)self _fetchFallbackAudioSessionReleaseProviding];
    [sessionProvider2 fallbackDeactivateAudioSession:session error:0];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CSSpeechController_releaseAudioSession___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
  v9 = *MEMORY[0x277D85DE8];
}

_BYTE *__42__CSSpeechController_releaseAudioSession___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[121] == 1)
  {
    return [result _fetchMetricsAndLog];
  }

  return result;
}

- (void)releaseAudioSession
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[CSSpeechController releaseAudioSession]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  sessionProvider = [(CSSpeechController *)self sessionProvider];

  if (sessionProvider)
  {
    sessionProvider2 = [(CSSpeechController *)self sessionProvider];
    [sessionProvider2 deactivateAudioSession:0 error:0];
  }

  else
  {
    sessionProvider2 = [(CSSpeechController *)self _fetchFallbackAudioSessionReleaseProviding];
    [sessionProvider2 fallbackDeactivateAudioSession:0 error:0];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CSSpeechController_releaseAudioSession__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
  v7 = *MEMORY[0x277D85DE8];
}

_BYTE *__41__CSSpeechController_releaseAudioSession__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[121] == 1)
  {
    return [result _fetchMetricsAndLog];
  }

  return result;
}

- (void)reset
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSSpeechController reset]";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Resetting CoreSpeech frameworks", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)resetAudioSession
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSSpeechController resetAudioSession]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  contextResetQueue = self->_contextResetQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CSSpeechController_resetAudioSession__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(contextResetQueue, block);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)prewarmAudioSession
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[CSSpeechController prewarmAudioSession]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  sessionProvider = [(CSSpeechController *)self sessionProvider];
  v5 = [sessionProvider prewarmAudioSessionWithError:0];

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)preheat
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSSpeechController preheat]";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (BOOL)setCurrentRecordContext:(id)context error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = MEMORY[0x277D015C0];
  v8 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [contextCopy description];
    *buf = 136315394;
    *&buf[4] = "[CSSpeechController setCurrentRecordContext:error:]";
    *&buf[12] = 2114;
    *&buf[14] = v10;
    _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s recordContext : %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v40 = 0;
  if ([MEMORY[0x277D018F8] supportHomeKitAccessory])
  {
    [(CSSpeechController *)self _updateRecordContextIfNeeded:contextCopy];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CSSpeechController_setCurrentRecordContext_error___block_invoke;
  block[3] = &unk_2784C6FA8;
  block[4] = self;
  v12 = contextCopy;
  v36 = v12;
  dispatch_async_and_wait(queue, block);
  if ([v12 isTriggeredFromHearst])
  {
    deviceId = [v12 deviceId];
    v14 = deviceId == 0;

    if (v14)
    {
      v15 = +[CSOpportuneSpeakListenerDeviceManager sharedManager];
      deviceId2 = [v15 deviceId];
      [v12 setDeviceId:deviceId2];
    }
  }

  if ([v12 type] != 14 || !objc_msgSend(v12, "isRequestDuringActiveCall"))
  {
    if ([v12 type] == 14 || objc_msgSend(v12, "type") == 5)
    {
      streamProvider = [(CSSpeechController *)self streamProvider];

      if (streamProvider)
      {
        streamProvider2 = [(CSSpeechController *)self streamProvider];
        v34 = 0;
        v22 = [streamProvider2 setCurrentContext:v12 error:&v34];
        v18 = v34;
        *(*&buf[8] + 24) = v22;

        if (!error)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      contextResetQueue = self->_contextResetQueue;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __52__CSSpeechController_setCurrentRecordContext_error___block_invoke_249;
      v31[3] = &unk_2784C5948;
      v33 = buf;
      v31[4] = self;
      v32 = v12;
      dispatch_async_and_wait(contextResetQueue, v31);
    }

    else
    {
      v24 = self->_contextResetQueue;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __52__CSSpeechController_setCurrentRecordContext_error___block_invoke_2;
      v28[3] = &unk_2784C5948;
      v30 = buf;
      v28[4] = self;
      v29 = v12;
      dispatch_async_and_wait(v24, v28);
    }

    v18 = 0;
    if (!error)
    {
LABEL_22:
      v19 = *(*&buf[8] + 24);
      goto LABEL_23;
    }

LABEL_21:
    v25 = v18;
    *error = v18;
    goto LABEL_22;
  }

  v17 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 136315138;
    v38 = "[CSSpeechController setCurrentRecordContext:error:]";
    _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_DEFAULT, "%s Will skip setting current record context because we were in active call and context was post or auto", v37, 0xCu);
  }

  v18 = 0;
  v19 = 1;
LABEL_23:

  _Block_object_dispose(buf, 8);
  v26 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

uint64_t __52__CSSpeechController_setCurrentRecordContext_error___block_invoke_249(uint64_t a1)
{
  result = [*(a1 + 32) _fetchAudioProviderWithContext:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __52__CSSpeechController_setCurrentRecordContext_error___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _fetchAudioProviderWithContext:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_updateRecordContextIfNeeded:(id)needed
{
  v14 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v5 = neededCopy;
  if (self->_endpointId && ([neededCopy isAudioRecordTypeSupportedByRemora] & 1) == 0)
  {
    v6 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_FAULT))
    {
      endpointId = self->_endpointId;
      v10 = 136315395;
      v11 = "[CSSpeechController _updateRecordContextIfNeeded:]";
      v12 = 2113;
      v13 = endpointId;
      _os_log_fault_impl(&dword_222E4D000, v6, OS_LOG_TYPE_FAULT, "%s Falling back to button record type for context whose record type previously is set to unspecified for accessory %{private}@.", &v10, 0x16u);
    }

    [v5 setType:18];
    uUIDString = [(NSUUID *)self->_endpointId UUIDString];
    [v5 setDeviceId:uUIDString];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_doActivateAudioSessionWithReason:(unint64_t)reason error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D015C0];
  v8 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[CSSpeechController _doActivateAudioSessionWithReason:error:]";
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s Activating audio session now", buf, 0xCu);
  }

  sessionProvider = [(CSSpeechController *)self sessionProvider];

  if (sessionProvider)
  {
    if ([(CSAudioRecordContext *)self->_audioRecordContext isDictation])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    if (reason == 3)
    {
      if (self->_isSiriClientListening)
      {
        reason = 4;
      }

      else
      {
        reason = 3;
      }
    }

    sessionProvider2 = [(CSSpeechController *)self sessionProvider];
    bundleIdFromDictation = self->_bundleIdFromDictation;
    v21 = 0;
    v13 = [sessionProvider2 activateAudioSessionWithReason:reason dynamicAttribute:v10 bundleID:bundleIdFromDictation error:&v21];
    v14 = v21;

    v15 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      if (v13)
      {
        v16 = @"YES";
      }

      *buf = 136315394;
      v23 = "[CSSpeechController _doActivateAudioSessionWithReason:error:]";
      v24 = 2114;
      v25 = v16;
      _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_DEFAULT, "%s AudioSession activated successfully ? %{public}@", buf, 0x16u);
    }

    if (error)
    {
LABEL_16:
      v17 = v14;
      *error = v14;
    }
  }

  else
  {
    v20 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[CSSpeechController _doActivateAudioSessionWithReason:error:]";
      _os_log_error_impl(&dword_222E4D000, v20, OS_LOG_TYPE_ERROR, "%s AudioSession Provider not available", buf, 0xCu);
    }

    LOBYTE(v13) = 0;
    v14 = 0;
    if (error)
    {
      goto LABEL_16;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_activateAudioSessionWithReason:(unint64_t)reason error:(id *)error
{
  v7 = NSStringFromSelector(a2);
  [(CSSpeechController *)self _cancelPendingAudioSessionActivateForReason:v7];

  return [(CSSpeechController *)self _doActivateAudioSessionWithReason:reason error:error];
}

- (void)_performPendingAudioSessionActivateForReason:(id)reason
{
  v24 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  pendingAudioSessionActivationToken = self->_pendingAudioSessionActivationToken;
  if (pendingAudioSessionActivationToken)
  {
    v6 = MEMORY[0x277D015C0];
    v7 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v19 = "[CSSpeechController _performPendingAudioSessionActivateForReason:]";
      v20 = 2114;
      v21 = pendingAudioSessionActivationToken;
      v22 = 2114;
      v23 = reasonCopy;
      _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s Delayed audio session activate: Consumed token %{public}@ in advance for reason %{public}@.", buf, 0x20u);
      pendingAudioSessionActivationToken = self->_pendingAudioSessionActivationToken;
    }

    self->_pendingAudioSessionActivationToken = 0;

    pendingAudioSessionActivationReason = self->_pendingAudioSessionActivationReason;
    self->_pendingAudioSessionActivationReason = 0;
    v9 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "[CSSpeechController _performPendingAudioSessionActivateForReason:]";
      v20 = 2114;
      v21 = reasonCopy;
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s Delayed audio session activate: Activating audio session for reason %{public}@.", buf, 0x16u);
    }

    v17 = 0;
    v10 = [(CSSpeechController *)self _activateAudioSessionWithReason:pendingAudioSessionActivationReason error:&v17];
    v11 = v17;
    v12 = v11;
    v13 = *v6;
    if (!v10 || v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v19 = "[CSSpeechController _performPendingAudioSessionActivateForReason:]";
        v20 = 2114;
        v21 = reasonCopy;
        v22 = 2112;
        v23 = v12;
        _os_log_error_impl(&dword_222E4D000, v13, OS_LOG_TYPE_ERROR, "%s Delayed audio session activate: Failed to activate audio session for reason %{public}@ due to error %@.", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "[CSSpeechController _performPendingAudioSessionActivateForReason:]";
      v20 = 2114;
      v21 = reasonCopy;
      _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_DEFAULT, "%s Delayed audio session activate: Successfully activate audio session for reason %{public}@.", buf, 0x16u);
    }

    pendingAudioSessionActivationCompletion = self->_pendingAudioSessionActivationCompletion;
    if (pendingAudioSessionActivationCompletion)
    {
      pendingAudioSessionActivationCompletion[2](pendingAudioSessionActivationCompletion, v10, v12);
      v15 = self->_pendingAudioSessionActivationCompletion;
      self->_pendingAudioSessionActivationCompletion = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_cancelPendingAudioSessionActivateForReason:(id)reason
{
  v16 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  pendingAudioSessionActivationToken = self->_pendingAudioSessionActivationToken;
  if (pendingAudioSessionActivationToken)
  {
    v6 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "[CSSpeechController _cancelPendingAudioSessionActivateForReason:]";
      v12 = 2114;
      v13 = pendingAudioSessionActivationToken;
      v14 = 2114;
      v15 = reasonCopy;
      _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s Delayed audio session activate: Cancelled token %{public}@ for reason %{public}@.", &v10, 0x20u);
      pendingAudioSessionActivationToken = self->_pendingAudioSessionActivationToken;
    }

    self->_pendingAudioSessionActivationToken = 0;

    self->_pendingAudioSessionActivationReason = 0;
  }

  pendingAudioSessionActivationCompletion = self->_pendingAudioSessionActivationCompletion;
  if (pendingAudioSessionActivationCompletion)
  {
    (*(pendingAudioSessionActivationCompletion + 2))(pendingAudioSessionActivationCompletion, 0, 0);
    v8 = self->_pendingAudioSessionActivationCompletion;
    self->_pendingAudioSessionActivationCompletion = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleActivateAudioSessionWithDelay:(double)delay sessionActivateReason:(unint64_t)reason scheduleReason:(id)scheduleReason validator:(id)validator completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  scheduleReasonCopy = scheduleReason;
  validatorCopy = validator;
  completionCopy = completion;
  [(CSSpeechController *)self _cancelPendingAudioSessionActivateForReason:scheduleReasonCopy];
  v15 = objc_alloc_init(MEMORY[0x277CCAD78]);
  objc_storeStrong(&self->_pendingAudioSessionActivationToken, v15);
  self->_pendingAudioSessionActivationReason = reason;
  v16 = [completionCopy copy];

  pendingAudioSessionActivationCompletion = self->_pendingAudioSessionActivationCompletion;
  self->_pendingAudioSessionActivationCompletion = v16;

  v18 = dispatch_time(0, (delay * 1000000000.0));
  queue = self->_queue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __119__CSSpeechController__scheduleActivateAudioSessionWithDelay_sessionActivateReason_scheduleReason_validator_completion___block_invoke;
  v25[3] = &unk_2784C4700;
  v25[4] = self;
  v20 = v15;
  v26 = v20;
  delayCopy = delay;
  v21 = scheduleReasonCopy;
  v27 = v21;
  v22 = validatorCopy;
  v28 = v22;
  reasonCopy = reason;
  dispatch_after(v18, queue, v25);
  v23 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v32 = "[CSSpeechController _scheduleActivateAudioSessionWithDelay:sessionActivateReason:scheduleReason:validator:completion:]";
    v33 = 2114;
    v34 = v20;
    v35 = 2050;
    delayCopy2 = delay;
    v37 = 2114;
    v38 = v21;
    _os_log_impl(&dword_222E4D000, v23, OS_LOG_TYPE_DEFAULT, "%s Delayed active audio session: Scheduled new token %{public}@ with %{public}f seconds delay for reason %{public}@.", buf, 0x2Au);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __119__CSSpeechController__scheduleActivateAudioSessionWithDelay_sessionActivateReason_scheduleReason_validator_completion___block_invoke(void *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 312) isEqual:a1[5]];
  v3 = MEMORY[0x277D015C0];
  v4 = *MEMORY[0x277D015C0];
  v5 = os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT);
  if (!v2)
  {
    if (v5)
    {
      v22 = a1[5];
      v21 = a1[6];
      v23 = *(a1[4] + 312);
      *buf = 136315906;
      v36 = "[CSSpeechController _scheduleActivateAudioSessionWithDelay:sessionActivateReason:scheduleReason:validator:completion:]_block_invoke";
      v37 = 2114;
      v38 = v21;
      v39 = 2114;
      v40 = v22;
      v41 = 2114;
      v42 = v23;
      v24 = "%s Delayed active audio session: Ignored activate audio session for reason %{public}@ because the scheduled token %{public}@ does not match the current token %{public}@.";
      v25 = v4;
      v26 = 42;
LABEL_19:
      _os_log_impl(&dword_222E4D000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    }

LABEL_20:
    v18 = 0;
    v16 = 0;
    goto LABEL_21;
  }

  if (v5)
  {
    v6 = a1[8];
    v7 = a1[5];
    v8 = a1[6];
    *buf = 136315906;
    v36 = "[CSSpeechController _scheduleActivateAudioSessionWithDelay:sessionActivateReason:scheduleReason:validator:completion:]_block_invoke";
    v37 = 2114;
    v38 = v7;
    v39 = 2050;
    v40 = v6;
    v41 = 2114;
    v42 = v8;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s Delayed active audio session: Consumed token %{public}@ with %{public}f seconds delay for reason %{public}@.", buf, 0x2Au);
  }

  v9 = a1[4];
  v10 = *(v9 + 312);
  *(v9 + 312) = 0;

  *(a1[4] + 328) = 0;
  v11 = a1[7];
  if (v11 && !(*(v11 + 16))())
  {
    v28 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v29 = a1[6];
      *buf = 136315394;
      v36 = "[CSSpeechController _scheduleActivateAudioSessionWithDelay:sessionActivateReason:scheduleReason:validator:completion:]_block_invoke";
      v37 = 2114;
      v38 = v29;
      v24 = "%s Delayed active audio session: Ignored activating audio session for reason %{public}@ because the validator rejected.";
      v25 = v28;
      v26 = 22;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v12 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = a1[6];
    *buf = 136315394;
    v36 = "[CSSpeechController _scheduleActivateAudioSessionWithDelay:sessionActivateReason:scheduleReason:validator:completion:]_block_invoke";
    v37 = 2114;
    v38 = v13;
    _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_DEFAULT, "%s Delayed active audio session: Activating audio session for reason %{public}@.", buf, 0x16u);
  }

  v14 = a1[4];
  v15 = a1[9];
  v34 = 0;
  v16 = [v14 _activateAudioSessionWithReason:v15 error:&v34];
  v17 = v34;
  v18 = v17;
  v19 = *v3;
  if (!v16 || v17)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v27 = a1[6];
      *buf = 136315650;
      v36 = "[CSSpeechController _scheduleActivateAudioSessionWithDelay:sessionActivateReason:scheduleReason:validator:completion:]_block_invoke";
      v37 = 2114;
      v38 = v27;
      v39 = 2112;
      v40 = v18;
      _os_log_error_impl(&dword_222E4D000, v19, OS_LOG_TYPE_ERROR, "%s Delayed active audio session: Failed to activate audio session for reason %{public}@ due to error %@.", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = a1[6];
      *buf = 136315394;
      v36 = "[CSSpeechController _scheduleActivateAudioSessionWithDelay:sessionActivateReason:scheduleReason:validator:completion:]_block_invoke";
      v37 = 2114;
      v38 = v20;
      _os_log_impl(&dword_222E4D000, v19, OS_LOG_TYPE_DEFAULT, "%s Delayed active audio session: Successfully activate audio session for reason %{public}@.", buf, 0x16u);
    }

    v18 = 0;
    v16 = 1;
  }

LABEL_21:
  v30 = *(a1[4] + 320);
  if (v30)
  {
    (*(v30 + 16))(v30, v16, v18);
    v31 = a1[4];
    v32 = *(v31 + 320);
    *(v31 + 320) = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)_activateAudioSessionWithReason:(unint64_t)reason delay:(double)delay delayRequested:(BOOL)requested error:(id *)error
{
  requestedCopy = requested;
  v54 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__8402;
  v42 = __Block_byref_object_dispose__8403;
  v43 = 0;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __81__CSSpeechController__activateAudioSessionWithReason_delay_delayRequested_error___block_invoke;
  v37[3] = &unk_2784C5F18;
  v37[4] = self;
  v37[5] = &v44;
  v37[6] = &v38;
  v37[7] = reason;
  v12 = MEMORY[0x223DD26C0](v37);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __81__CSSpeechController__activateAudioSessionWithReason_delay_delayRequested_error___block_invoke_235;
  v36[3] = &unk_2784C5F18;
  v36[4] = self;
  v36[5] = &v44;
  v36[6] = &v38;
  v36[7] = reason;
  v13 = MEMORY[0x223DD26C0](v36);
  if (!self->_supportSessionActivateDelay)
  {
    v12[2](v12);
    goto LABEL_24;
  }

  supportsDuckingOnSpeakerOutputEvaluator = self->_supportsDuckingOnSpeakerOutputEvaluator;
  if (supportsDuckingOnSpeakerOutputEvaluator && supportsDuckingOnSpeakerOutputEvaluator[2]())
  {
    v15 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v49 = "[CSSpeechController _activateAudioSessionWithReason:delay:delayRequested:error:]";
      _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_DEFAULT, "%s Device supports ducking on speaker output we should check config.", buf, 0xCu);
    }

    _currentConfigurationSupportsDucking = [(CSSpeechController *)self _currentConfigurationSupportsDucking];
  }

  else
  {
    _currentConfigurationSupportsDucking = 1;
  }

  v17 = [(CSSpeechController *)self _isDelayedDuckingSupportedContext]&& _currentConfigurationSupportsDucking;
  v18 = v12;
  if (v17 != 1)
  {
    goto LABEL_23;
  }

  if (delay <= -1.0)
  {
LABEL_19:
    *(v45 + 24) = 1;
    goto LABEL_24;
  }

  if (delay <= 0.0)
  {
    if (requestedCopy)
    {
      v18 = v13;
    }

    else
    {
      v18 = v12;
    }

LABEL_23:
    (v18[2])();
    goto LABEL_24;
  }

  dispatch_async_and_wait(self->_queue, &__block_literal_global_239);
  v19 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v49 = "[CSSpeechController _activateAudioSessionWithReason:delay:delayRequested:error:]";
    _os_log_impl(&dword_222E4D000, v19, OS_LOG_TYPE_DEFAULT, "%s StreamProvider is already recording", buf, 0xCu);
  }

  v20 = [(NSDictionary *)self->_lastVoiceTriggerInfo objectForKeyedSubscript:*MEMORY[0x277D01EA0]];
  unsignedLongLongValue = [v20 unsignedLongLongValue];

  [MEMORY[0x277D01798] hostTimeToTimeInterval:mach_absolute_time() - unsignedLongLongValue];
  v23 = v22;
  v24 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v49 = "[CSSpeechController _activateAudioSessionWithReason:delay:delayRequested:error:]";
    v50 = 2050;
    delayCopy = delay;
    v52 = 2050;
    v53 = v23;
    _os_log_impl(&dword_222E4D000, v24, OS_LOG_TYPE_DEFAULT, "%s duckingDelayedTime = %{public}f, timeIntervalSinceLastTriggerEnd = %{public}lf", buf, 0x20u);
  }

  if (v23 < delay)
  {
    endpointAnalyzer = self->_endpointAnalyzer;
    v26 = +[CSAssetManager sharedManager];
    currentLanguageCode = [v26 currentLanguageCode];
    [(CSEndpointAnalyzer *)endpointAnalyzer logFeaturesWithEvent:@"com.apple.corespeech.ducking" locale:currentLanguageCode];

    v28 = NSStringFromSelector(a2);
    v29 = delay - v23;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __81__CSSpeechController__activateAudioSessionWithReason_delay_delayRequested_error___block_invoke_245;
    v35[3] = &unk_2784C5820;
    v35[4] = self;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __81__CSSpeechController__activateAudioSessionWithReason_delay_delayRequested_error___block_invoke_2;
    v34[3] = &__block_descriptor_40_e20_v20__0B8__NSError_12l;
    *&v34[4] = v29;
    [(CSSpeechController *)self _scheduleActivateAudioSessionWithDelay:reason sessionActivateReason:v28 scheduleReason:v35 validator:v34 completion:v29];

    v30 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v49 = "[CSSpeechController _activateAudioSessionWithReason:delay:delayRequested:error:]";
      v50 = 2050;
      delayCopy = v29;
      _os_log_impl(&dword_222E4D000, v30, OS_LOG_TYPE_DEFAULT, "%s Scheduled activateAudioSession with %{public}f seconds delay in prepareRecordWithSettings.", buf, 0x16u);
    }

    goto LABEL_19;
  }

  v13[2](v13);
LABEL_24:
  if (error)
  {
    *error = v39[5];
  }

  v31 = *(v45 + 24);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);
  v32 = *MEMORY[0x277D85DE8];
  return v31 & 1;
}

void __81__CSSpeechController__activateAudioSessionWithReason_delay_delayRequested_error___block_invoke(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[CSSpeechController _activateAudioSessionWithReason:delay:delayRequested:error:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Activating Audio Session Now Sync.", buf, 0xCu);
  }

  v3 = a1[4];
  v4 = a1[7];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [v3 _activateAudioSessionWithReason:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[5] + 8) + 24) = v6;
  v7 = *MEMORY[0x277D85DE8];
}

void __81__CSSpeechController__activateAudioSessionWithReason_delay_delayRequested_error___block_invoke_235(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CSSpeechController _activateAudioSessionWithReason:delay:delayRequested:error:]_block_invoke";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Activating Audio Session Now Async.", buf, 0xCu);
  }

  *(*(a1[5] + 8) + 24) = 1;
  v3 = a1[4];
  v4 = *(v3 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__CSSpeechController__activateAudioSessionWithReason_delay_delayRequested_error___block_invoke_236;
  block[3] = &unk_2784C50A0;
  v5 = a1[7];
  block[5] = a1[6];
  block[6] = v5;
  block[4] = v3;
  dispatch_async(v4, block);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__CSSpeechController__activateAudioSessionWithReason_delay_delayRequested_error___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277D015C0];
  if (!v5)
  {
    v8 = os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v9 = *(a1 + 32);
      v13 = 136315394;
      v14 = "[CSSpeechController _activateAudioSessionWithReason:delay:delayRequested:error:]_block_invoke";
      v15 = 2050;
      v16 = v9;
      v10 = "%s Finished activate audio session with %{public}f seconds delay from prepareRecordWithSettings.";
    }

    else
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v11 = *(a1 + 32);
      v13 = 136315394;
      v14 = "[CSSpeechController _activateAudioSessionWithReason:delay:delayRequested:error:]_block_invoke";
      v15 = 2050;
      v16 = v11;
      v10 = "%s Cancelled activate audio session with %{public}f seconds delay from prepareRecordWithSettings.";
    }

    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, v10, &v13, 0x16u);
    goto LABEL_10;
  }

  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v13 = 136315650;
    v14 = "[CSSpeechController _activateAudioSessionWithReason:delay:delayRequested:error:]_block_invoke_2";
    v15 = 2050;
    v16 = v7;
    v17 = 2114;
    v18 = v5;
    _os_log_error_impl(&dword_222E4D000, v6, OS_LOG_TYPE_ERROR, "%s Failed activate audio session with %{public}f seconds delay from prepareRecordWithSettings due to error %{public}@.", &v13, 0x20u);
  }

LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
}

void __81__CSSpeechController__activateAudioSessionWithReason_delay_delayRequested_error___block_invoke_236(void *a1)
{
  v1 = a1[6];
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  obj = *(v3 + 40);
  [v2 _activateAudioSessionWithReason:v1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
}

- (BOOL)_fetchLastTriggerInfo
{
  v11 = *MEMORY[0x277D85DE8];
  xpcClient = [(CSSpeechController *)self xpcClient];

  if (xpcClient)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__CSSpeechController__fetchLastTriggerInfo__block_invoke;
    block[3] = &unk_2784C6FD0;
    block[4] = self;
    dispatch_async(queue, block);
  }

  else
  {
    v5 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "[CSSpeechController _fetchLastTriggerInfo]";
      _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s xpcClient not existing", buf, 0xCu);
    }
  }

  result = xpcClient != 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __43__CSSpeechController__fetchLastTriggerInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcClient];
  v3 = [*(a1 + 32) audioRecordContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__CSSpeechController__fetchLastTriggerInfo__block_invoke_2;
  v4[3] = &unk_2784C3F10;
  v4[4] = *(a1 + 32);
  [v2 triggerInfoForContext:v3 completion:v4];
}

uint64_t __43__CSSpeechController__fetchLastTriggerInfo__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(a1 + 32);
  v8 = *(v7 + 72);
  *(v7 + 72) = v6;

  v9 = [v5 copy];
  v10 = *(a1 + 32);
  v11 = *(v10 + 80);
  *(v10 + 80) = v9;

  v12 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v15 = *(v13 + 72);
    v14 = *(v13 + 80);
    v18 = 136315650;
    v19 = "[CSSpeechController _fetchLastTriggerInfo]_block_invoke_2";
    v20 = 2114;
    v21 = v15;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_DEFAULT, "%s received lastVoiceTriggerInfo %{public}@, lastRTSTriggerInfo %{public}@", &v18, 0x20u);
  }

  result = [*(a1 + 32) _setSoundPlayingState];
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)prepareRecordWithSettings:(id)settings error:(id *)error
{
  v107 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v7 = MEMORY[0x277D015C0];
  v8 = *MEMORY[0x277D015C0];
  v9 = &off_222FB8000;
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v102 = "[CSSpeechController prepareRecordWithSettings:error:]";
    v103 = 2114;
    v104 = settingsCopy;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s settings : %{public}@", buf, 0x16u);
  }

  kdebug_trace();
  if (!settingsCopy)
  {
    goto LABEL_7;
  }

  v10 = [(__CFString *)settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_DictationRequestAppBundleID"];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v12 = [(__CFString *)settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_DictationRequestAppBundleID"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(__CFString *)settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_DictationRequestAppBundleID"];
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

LABEL_8:
  bundleIdFromDictation = self->_bundleIdFromDictation;
  self->_bundleIdFromDictation = v10;

  if ([(CSSpeechController *)self _isHubRequestTV])
  {
    self->_decoderProcessedSampleCountForTV = 0;
  }

  v15 = 0;
  v16 = 0.0;
  if (settingsCopy && self->_supportSessionActivateDelay)
  {
    v17 = [(__CFString *)settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_AudioSessionActiveDelay"];
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();

    if (v18)
    {
      v19 = [(__CFString *)settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_AudioSessionActiveDelay"];
      [v19 floatValue];
      v16 = v20;

      v15 = 1;
    }

    else
    {
      v15 = 0;
    }
  }

  contextResetQueue = self->_contextResetQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CSSpeechController_prepareRecordWithSettings_error___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async_and_wait(contextResetQueue, block);
  sessionProvider = [(CSSpeechController *)self sessionProvider];

  if (sessionProvider)
  {
    audioRecordContext = [(CSSpeechController *)self audioRecordContext];
    v24 = [(CSSpeechController *)self _considerSmartRoutingForAudioRecordContext:audioRecordContext];

    sessionProvider2 = [(CSSpeechController *)self sessionProvider];
    [sessionProvider2 enableSmartRoutingConsideration:v24];
  }

  sessionProvider3 = [(CSSpeechController *)self sessionProvider];

  errorCopy = error;
  if (!sessionProvider3)
  {
    v31 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v102 = "[CSSpeechController prepareRecordWithSettings:error:]";
      _os_log_error_impl(&dword_222E4D000, v31, OS_LOG_TYPE_ERROR, "%s Session Provider does not exist", buf, 0xCu);
      if (!settingsCopy)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

LABEL_25:
    if (!settingsCopy)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  if (!settingsCopy || !self->_supportHearstVoiceTrigger)
  {
    goto LABEL_25;
  }

  v27 = [(__CFString *)settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_AudioSessionActiveReason"];
  objc_opt_class();
  v28 = objc_opt_isKindOfClass();

  if ((v28 & 1) == 0)
  {
    goto LABEL_26;
  }

  v29 = [(__CFString *)settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_AudioSessionActiveReason"];
  integerValue = [v29 integerValue];

  if (integerValue == 2)
  {
    if (([(CSAudioRecordContext *)self->_audioRecordContext isTriggeredFromHearst]& 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v36 = [(__CFString *)settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_AudioSessionActiveReason"];
    integerValue2 = [v36 integerValue];

    if (integerValue2 != 3)
    {
      goto LABEL_26;
    }
  }

  sessionProvider4 = [(CSSpeechController *)self sessionProvider];
  [sessionProvider4 enableMiniDucking:integerValue == 2];

LABEL_26:
  v32 = [(__CFString *)settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_AudioSessionActiveReason"];
  objc_opt_class();
  v33 = objc_opt_isKindOfClass();

  if (v33)
  {
    v34 = [(__CFString *)settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_AudioSessionActiveReason"];
    integerValue3 = [v34 integerValue];

    goto LABEL_32;
  }

LABEL_31:
  integerValue3 = 0;
LABEL_32:
  if (([(CSSpeechController *)self _shouldFetchVoiceTriggerInfo]|| [(CSSpeechController *)self _shouldFetchRaiseToSpeakInfo]) && ![(CSSpeechController *)self _fetchLastTriggerInfo])
  {
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v99 = 0;
    v39 = [(CSSpeechController *)self _activateAudioSessionWithReason:integerValue3 delay:v15 delayRequested:&v99 error:v16];
    v40 = v99;
  }

  supportTriagleModeSessionActivationRetry = self->_supportTriagleModeSessionActivationRetry;
  v42 = supportTriagleModeSessionActivationRetry || v39;
  if (!supportTriagleModeSessionActivationRetry || v39)
  {
    goto LABEL_46;
  }

  domain = [v40 domain];
  if (([domain isEqualToString:*MEMORY[0x277CCA590]] & 1) == 0)
  {

    goto LABEL_45;
  }

  code = [v40 code];

  if (code != -11795)
  {
LABEL_45:
    v42 = 0;
    goto LABEL_46;
  }

  v45 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v102 = "[CSSpeechController prepareRecordWithSettings:error:]";
    _os_log_impl(&dword_222E4D000, v45, OS_LOG_TYPE_DEFAULT, "%s Received special error code that corespeech needs to setContext and activate audio session again", buf, 0xCu);
  }

  v46 = self->_contextResetQueue;
  v98[0] = MEMORY[0x277D85DD0];
  v98[1] = 3221225472;
  v98[2] = __54__CSSpeechController_prepareRecordWithSettings_error___block_invoke_224;
  v98[3] = &unk_2784C6FD0;
  v98[4] = self;
  dispatch_async_and_wait(v46, v98);
  v97 = v40;
  v42 = [(CSSpeechController *)self _activateAudioSessionWithReason:integerValue3 error:&v97];
  v47 = v97;

  v40 = v47;
LABEL_46:
  isContinuousConversation = [(CSAudioRecordContext *)self->_audioRecordContext isContinuousConversation];
  if (isContinuousConversation)
  {
    v49 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v102 = "[CSSpeechController prepareRecordWithSettings:error:]";
      _os_log_impl(&dword_222E4D000, v49, OS_LOG_TYPE_DEFAULT, "%s We will skip Siri Client monitor update since it is FF", buf, 0xCu);
    }
  }

  if (!v42)
  {
    v55 = 0;
    goto LABEL_79;
  }

  audioStream = [(CSSpeechController *)self audioStream];
  if (audioStream)
  {
    v51 = audioStream;
    audioStream2 = [(CSSpeechController *)self audioStream];
    isStreaming = [audioStream2 isStreaming];

    if (isStreaming)
    {
      v54 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v102 = "[CSSpeechController prepareRecordWithSettings:error:]";
        _os_log_impl(&dword_222E4D000, v54, OS_LOG_TYPE_DEFAULT, "%s CSSpeechController is already streaming audio.., we don't need to create another audio stream here", buf, 0xCu);
      }

      v55 = 1;
      goto LABEL_79;
    }
  }

  audioStream3 = [(CSSpeechController *)self audioStream];

  if (audioStream3)
  {
    v57 = MEMORY[0x277D016A0];
    audioRecordContext2 = [(CSSpeechController *)self audioRecordContext];
    v59 = [v57 defaultRequestWithContext:audioRecordContext2];

    [v59 setClientIdentity:1];
    [v59 setRequestSkipClientMonitorUpdate:isContinuousConversation];
    [v59 setRequestRecordModeLock:1];
    [v59 setRequestListeningMicIndicatorLock:1];
    audioStream4 = [(CSSpeechController *)self audioStream];
    v96 = 0;
    v55 = [audioStream4 prepareAudioStreamSyncWithRequest:v59 error:&v96];
    v61 = v96;

    v62 = *v7;
    if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_78:

      goto LABEL_79;
    }

    if (v55)
    {
      v63 = @"YES";
    }

    else
    {
      v63 = @"NO";
    }

    v64 = v62;
    localizedDescription = [v61 localizedDescription];
    *buf = 136315650;
    v102 = "[CSSpeechController prepareRecordWithSettings:error:]";
    v103 = 2114;
    v104 = v63;
    v9 = &off_222FB8000;
    v105 = 2114;
    v106 = localizedDescription;
    _os_log_impl(&dword_222E4D000, v64, OS_LOG_TYPE_DEFAULT, "%s Prepare audio stream succeeded ? %{public}@, error - %{public}@", buf, 0x20u);

    goto LABEL_76;
  }

  streamProvider = [(CSSpeechController *)self streamProvider];

  if (streamProvider)
  {
    v67 = MEMORY[0x277D016A0];
    audioRecordContext3 = [(CSSpeechController *)self audioRecordContext];
    v59 = [v67 defaultRequestWithContext:audioRecordContext3];

    [v59 setClientIdentity:1];
    [v59 setRequestSkipClientMonitorUpdate:isContinuousConversation];
    [v59 setRequestRecordModeLock:1];
    [v59 setRequestListeningMicIndicatorLock:1];
    streamProvider2 = [(CSSpeechController *)self streamProvider];
    v70 = objc_opt_class();
    v71 = NSStringFromClass(v70);
    v95 = 0;
    v64 = [streamProvider2 audioStreamWithRequest:v59 streamName:v71 error:&v95];
    v61 = v95;

    v7 = MEMORY[0x277D015C0];
    v72 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v64)
      {
        v73 = @"YES";
      }

      else
      {
        v73 = @"NO";
      }

      v74 = v72;
      localizedDescription2 = [v61 localizedDescription];
      *buf = 136315650;
      v102 = "[CSSpeechController prepareRecordWithSettings:error:]";
      v103 = 2114;
      v104 = v73;
      v9 = &off_222FB8000;
      v105 = 2114;
      v106 = localizedDescription2;
      _os_log_impl(&dword_222E4D000, v74, OS_LOG_TYPE_DEFAULT, "%s audioStreamWithRequest succeeded ? %{public}@, error - %{public}@", buf, 0x20u);

      v7 = MEMORY[0x277D015C0];
    }

    v55 = v64 != 0;
    if (v64)
    {
      [(CSSpeechController *)self setAudioStream:v64];
      [v64 setDelegate:self];
LABEL_77:

      goto LABEL_78;
    }

    v78 = *v7;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      v91 = v78;
      localizedDescription3 = [v61 localizedDescription];
      *buf = 136315394;
      v102 = "[CSSpeechController prepareRecordWithSettings:error:]";
      v103 = 2114;
      v104 = localizedDescription3;
      _os_log_error_impl(&dword_222E4D000, v91, OS_LOG_TYPE_ERROR, "%s Failed to get audioStream : %{public}@", buf, 0x16u);
    }

    v79 = v61;

    v40 = v79;
LABEL_76:
    v7 = MEMORY[0x277D015C0];
    goto LABEL_77;
  }

  v76 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v102 = "[CSSpeechController prepareRecordWithSettings:error:]";
    _os_log_error_impl(&dword_222E4D000, v76, OS_LOG_TYPE_ERROR, "%s AudioStreamProvider is not existing?", buf, 0xCu);
  }

  v77 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1552 userInfo:0];

  v55 = 0;
  v40 = v77;
LABEL_79:
  streamProvider3 = [(CSSpeechController *)self streamProvider];
  self->_isNarrowBand = [streamProvider3 isNarrowBand];

  if (self->_isNarrowBand)
  {
    [(CSSpeechController *)self _setupDownsamplerIfNeeded];
  }

  if (settingsCopy)
  {
    v81 = [(__CFString *)settingsCopy objectForKeyedSubscript:@"CSSpeechRecordSettingsKey_asrOnDevice"];
    bOOLValue = [v81 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  if (!v55 || (bOOLValue & 1) != 0)
  {
    v84 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v102 = "[CSSpeechController prepareRecordWithSettings:error:]";
      _os_log_impl(&dword_222E4D000, v84, OS_LOG_TYPE_DEFAULT, "%s Skipping audio converter setup", buf, 0xCu);
    }
  }

  else
  {
    v55 = 1;
    if (![(CSSpeechController *)self _setupAudioConverter:1 isNarrowBand:self->_isNarrowBand])
    {
      v83 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:1551 userInfo:0];

      v55 = 0;
      v40 = v83;
    }
  }

  kdebug_trace();
  if (errorCopy)
  {
    v85 = v40;
    *errorCopy = v40;
  }

  if (v55)
  {
    queue = self->_queue;
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __54__CSSpeechController_prepareRecordWithSettings_error___block_invoke_233;
    v94[3] = &unk_2784C6FD0;
    v94[4] = self;
    dispatch_async(queue, v94);
  }

  v87 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v88 = @"NO";
    if (v55)
    {
      v88 = @"YES";
    }

    *buf = *(v9 + 11);
    v102 = "[CSSpeechController prepareRecordWithSettings:error:]";
    v103 = 2114;
    v104 = v88;
    _os_log_impl(&dword_222E4D000, v87, OS_LOG_TYPE_DEFAULT, "%s Done prepareRecord with result: %{public}@.", buf, 0x16u);
  }

  v89 = *MEMORY[0x277D85DE8];
  return v55;
}

void __54__CSSpeechController_prepareRecordWithSettings_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _shouldResetContextAtPrepare])
  {
    v2 = *(a1 + 32);
    v3 = [v2 audioRecordContext];
    [v2 _fetchAudioProviderWithContext:v3];
  }
}

void __54__CSSpeechController_prepareRecordWithSettings_error___block_invoke_224(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 audioRecordContext];
  [v1 _fetchAudioProviderWithContext:v2];
}

- (BOOL)_considerSmartRoutingForAudioRecordContext:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (![MEMORY[0x277D018F8] supportsHearstSmartRoutingImprovements])
  {
    goto LABEL_13;
  }

  if ([contextCopy isHearstDoubleTapTriggered])
  {
    v4 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[CSSpeechController _considerSmartRoutingForAudioRecordContext:]";
      v5 = "%s Opting into smart routing for stem click activation";
LABEL_11:
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, v5, &v9, 0xCu);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (![contextCopy isHearstVoiceTriggered])
  {
    [contextCopy speechEvent];
    if (AFSpeechEventIsSmartRoutingEligible())
    {
      v4 = *MEMORY[0x277D015C0];
      if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[CSSpeechController _considerSmartRoutingForAudioRecordContext:]";
        v5 = "%s Opting into smart routing for hearst speech event";
        goto LABEL_11;
      }

      goto LABEL_12;
    }

LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v4 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSSpeechController _considerSmartRoutingForAudioRecordContext:]";
    v5 = "%s Opting into smart routing for hearst voice activation";
    goto LABEL_11;
  }

LABEL_12:
  v6 = 1;
LABEL_14:

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)startController
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D015C0];
  v4 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[CSSpeechController startController]";
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEFAULT, "%s Calling startController", buf, 0xCu);
  }

  if (self->_setupStarted)
  {
    v5 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[CSSpeechController startController]";
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Ignore request since it is already started", buf, 0xCu);
    }
  }

  else
  {
    v6 = +[CSVoiceTriggerAssetHandler sharedHandlerDisabledOnDeviceCompilation];
    uUIDString = [(NSUUID *)self->_endpointId UUIDString];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__CSSpeechController_startController__block_invoke;
    v10[3] = &unk_2784C6B78;
    v10[4] = self;
    [v6 getVoiceTriggerAssetWithEndpointId:uUIDString completion:v10];

    v8 = +[CSVoiceTriggerAssetHandler sharedHandlerDisabledOnDeviceCompilation];
    [v8 registerObserver:self];

    if (!self->_endpointId)
    {
      [(CSSmartSiriVolumeController *)self->_volumeController setDelegate:self];
    }

    [(CSAudioSessionController *)self->_audioSessionController registerObserver:self];
    if (![MEMORY[0x277D018F8] isAttentiveSiriEnabled] || self->_endpointId)
    {
      [(CSSpeechController *)self _refreshSpeakerRecognitionAssets];
    }

    self->_setupStarted = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __37__CSSpeechController_startController__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(*(a1 + 32) + 296) setAsset:v5];
  }

  else
  {
    v7 = *MEMORY[0x277D015C0];
    if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = [v6 localizedDescription];
      v11 = 136315394;
      v12 = "[CSSpeechController startController]_block_invoke";
      v13 = 2114;
      v14 = v10;
      _os_log_error_impl(&dword_222E4D000, v9, OS_LOG_TYPE_ERROR, "%s Cannot reinitialize ContinuousVoiceTrigger since we cannot look-up VoiceTrigger asset : %{public}@", &v11, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)initializeRecordSessionWithRecordContext:(id)context
{
  v13 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277D015C0];
  if (os_log_type_enabled(*MEMORY[0x277D015C0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[CSSpeechController initializeRecordSessionWithRecordContext:]";
    v11 = 2114;
    v12 = contextCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Record Context: %{public}@", &v9, 0x16u);
  }

  kdebug_trace();
  v6 = [(CSSpeechController *)self setCurrentRecordContext:contextCopy error:0];
  kdebug_trace();

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_initializeTimerState
{
  [(SOClockTimerObserver *)self->_timerMonitor addListener:self];
  objc_initWeak(&location, self);
  timerMonitor = self->_timerMonitor;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__CSSpeechController__initializeTimerState__block_invoke;
  v4[3] = &unk_2784C3EE8;
  objc_copyWeak(&v5, &location);
  [(SOClockTimerObserver *)timerMonitor getFiringTimerIDsWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __43__CSSpeechController__initializeTimerState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained[2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__CSSpeechController__initializeTimerState__block_invoke_2;
  v7[3] = &unk_2784C6FA8;
  v8 = v3;
  v9 = WeakRetained;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __43__CSSpeechController__initializeTimerState__block_invoke_2(uint64_t a1)
{
  [*(a1 + 40) _setTimerIsPlaying:{objc_msgSend(*(a1 + 32), "count") != 0}];
  v2 = *(a1 + 40);

  return [v2 _setSoundPlayingState];
}

- (void)_initializeAlarmState
{
  [(SOClockAlarmObserver *)self->_alarmMonitor addListener:self];
  objc_initWeak(&location, self);
  alarmMonitor = self->_alarmMonitor;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__CSSpeechController__initializeAlarmState__block_invoke;
  v4[3] = &unk_2784C3EE8;
  objc_copyWeak(&v5, &location);
  [(SOClockAlarmObserver *)alarmMonitor getFiringAlarmIDsWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __43__CSSpeechController__initializeAlarmState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained[2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__CSSpeechController__initializeAlarmState__block_invoke_2;
  v7[3] = &unk_2784C6FA8;
  v8 = v3;
  v9 = WeakRetained;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __43__CSSpeechController__initializeAlarmState__block_invoke_2(uint64_t a1)
{
  [*(a1 + 40) _setAlarmIsPlaying:{objc_msgSend(*(a1 + 32), "count") != 0}];
  v2 = *(a1 + 40);

  return [v2 _setSoundPlayingState];
}

- (void)_initializeMediaPlayingState
{
  [(SOMediaNowPlayingObserver *)self->_mediaPlayingMonitor addListener:self];
  objc_initWeak(&location, self);
  mediaPlayingMonitor = self->_mediaPlayingMonitor;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__CSSpeechController__initializeMediaPlayingState__block_invoke;
  v4[3] = &unk_2784C56A0;
  objc_copyWeak(&v5, &location);
  [(SOMediaNowPlayingObserver *)mediaPlayingMonitor getPlaybackStateWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __50__CSSpeechController__initializeMediaPlayingState__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained[2];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__CSSpeechController__initializeMediaPlayingState__block_invoke_2;
  v5[3] = &unk_2784C6EC0;
  v5[4] = WeakRetained;
  v5[5] = a2;
  dispatch_async(v4, v5);
}

uint64_t __50__CSSpeechController__initializeMediaPlayingState__block_invoke_2(uint64_t a1)
{
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  if (v3 == 4)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = v3 == 1;
    v6 = 0;
  }

  [v2 _setMediaPlaybackState:v5 isInterrupted:v6];
  v7 = *(a1 + 32);

  return [v7 _setSoundPlayingState];
}

- (id)_createTimerMonitor
{
  if (self->_endpointId)
  {
    v2 = objc_alloc(MEMORY[0x277D5E1C8]);
    currentContext = [MEMORY[0x277CEF2C8] currentContext];
    v4 = [v2 initWithInstanceContext:currentContext];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D5E1C8]);
  }

  return v4;
}

- (id)_createAlarmMonitor
{
  if (self->_endpointId)
  {
    v2 = objc_alloc(MEMORY[0x277D5E1C0]);
    currentContext = [MEMORY[0x277CEF2C8] currentContext];
    v4 = [v2 initWithInstanceContext:currentContext];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D5E1C0]);
  }

  return v4;
}

- (id)_createMediaPlayingMonitor
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v4 = dispatch_queue_create("MediaPlayingObserverQueue", v3);
  mediaPlayingObserverQueue = self->_mediaPlayingObserverQueue;
  self->_mediaPlayingObserverQueue = v4;

  endpointId = self->_endpointId;
  v7 = objc_alloc(MEMORY[0x277D5E1D8]);
  v8 = v7;
  v9 = self->_mediaPlayingObserverQueue;
  if (endpointId)
  {
    currentContext = [MEMORY[0x277CEF2C8] currentContext];
    v11 = [v8 initWithQueue:v9 instanceContext:currentContext];
  }

  else
  {
    v11 = [v7 initWithQueue:v9];
  }

  return v11;
}

- (BOOL)_supportsHybridSDSD
{
  if (AFDeviceSupportsSiriUOD())
  {
    return 0;
  }

  return MEMORY[0x2821416B0]();
}

- (id)_getSerialQueueWithName:(id)name targetQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy)
  {
    v6 = dispatch_queue_create_with_target_V2([name UTF8String], 0, queueCopy);
  }

  else
  {
    v6 = [MEMORY[0x277D018F8] getSerialQueueWithQOS:33 name:name fixedPriority:*MEMORY[0x277D019B0]];
  }

  v7 = v6;

  return v7;
}

- (CSSpeechController)initWithEndpointId:(id)id xpcClientFactory:(id)factory endpointAnalyzer:(id)analyzer continuousVoiceTrigger:(id)trigger siriVolumeController:(id)controller mediaPlayingMonitor:(id)monitor alarmMonitor:(id)alarmMonitor timerMonitor:(id)self0 audioSessionController:(id)self1 supportPhatic:(BOOL)self2 supportHearstVoiceTrigger:(BOOL)self3 supportTriagleModeSessionActivationRetry:(BOOL)self4 supportSessionActivateDelay:(BOOL)self5 supportsDuckingOnSpeakerEvaluator:(id)self6
{
  idCopy = id;
  factoryCopy = factory;
  analyzerCopy = analyzer;
  triggerCopy = trigger;
  controllerCopy = controller;
  monitorCopy = monitor;
  alarmMonitorCopy = alarmMonitor;
  timerMonitorCopy = timerMonitor;
  sessionControllerCopy = sessionController;
  evaluatorCopy = evaluator;
  v96.receiver = self;
  v96.super_class = CSSpeechController;
  v30 = [(CSSpeechController *)&v96 init];
  if (!v30)
  {
    goto LABEL_59;
  }

  v90 = sessionControllerCopy;
  v91 = evaluatorCopy;
  v88 = timerMonitorCopy;
  v31 = alarmMonitorCopy;
  v32 = controllerCopy;
  v33 = triggerCopy;
  v34 = analyzerCopy;
  v35 = factoryCopy;
  CSLogInitIfNeeded();
  v30->_supportPhatic = phatic;
  v30->_supportHearstVoiceTrigger = voiceTrigger;
  v30->_supportTriagleModeSessionActivationRetry = retry;
  v30->_supportSessionActivateDelay = delay;
  if ([MEMORY[0x277D018F8] supportsDispatchWorkloop])
  {
    v36 = 0;
  }

  else
  {
    v36 = [MEMORY[0x277D018F8] rootQueueWithFixedPriority:*MEMORY[0x277D019B0]];
  }

  v37 = [(CSSpeechController *)v30 _getSerialQueueWithName:@"CSSpeechController" targetQueue:v36];
  queue = v30->_queue;
  v30->_queue = v37;

  v89 = v36;
  v39 = [(CSSpeechController *)v30 _getSerialQueueWithName:@"CSSpeechController ContextReset" targetQueue:v36];
  contextResetQueue = v30->_contextResetQueue;
  v30->_contextResetQueue = v39;

  v30->_isSiriClientListening = 0;
  v30->_isNarrowBand = 0;
  bundleIdFromDictation = v30->_bundleIdFromDictation;
  v30->_bundleIdFromDictation = 0;

  v42 = [idCopy copy];
  endpointId = v30->_endpointId;
  v30->_endpointId = v42;

  factoryCopy = v35;
  analyzerCopy = v34;
  if (v34)
  {
    v44 = v34;
    endpointAnalyzer = v30->_endpointAnalyzer;
    v30->_endpointAnalyzer = v44;
    triggerCopy = v33;
    controllerCopy = v32;
    alarmMonitorCopy = v31;
    timerMonitorCopy = v88;
LABEL_12:

    goto LABEL_13;
  }

  triggerCopy = v33;
  controllerCopy = v32;
  alarmMonitorCopy = v31;
  timerMonitorCopy = v88;
  if (!CSIsTV() || ([MEMORY[0x277D018F8] supportsEndpointingOnATV] & 1) != 0 || objc_msgSend(MEMORY[0x277D018F8], "supportHomeKitAccessory") && v30->_endpointId)
  {
    v46 = [CSEndpointerFactory endpointAnalyzer:v30->_endpointId != 0];
    endpointAnalyzer = v30->_endpointAnalyzer;
    v30->_endpointAnalyzer = v46;
    goto LABEL_12;
  }

LABEL_13:
  if ([(CSSpeechController *)v30 _supportsHybridSDSD])
  {
    v47 = objc_alloc_init(CSRCHandlingXPCClient);
    rcHandlingClient = v30->_rcHandlingClient;
    v30->_rcHandlingClient = v47;
  }

  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  v30->_twoShotNotificationEnabled = [mEMORY[0x277D01788] twoShotNotificationEnabled];

  if (CSIsInternalBuild())
  {
    v50 = objc_alloc(MEMORY[0x277D016C0]);
    v51 = objc_opt_class();
    v52 = NSStringFromClass(v51);
    *&v53 = [(CSSpeechController *)v30 _currentAudioRecorderSampleRate];
    v54 = [v50 initWithToken:v52 sampleRate:1 numChannels:v53];
    continuousZeroCounter = v30->_continuousZeroCounter;
    v30->_continuousZeroCounter = v54;

    sessionControllerCopy = v90;
  }

  if (v30->_supportPhatic)
  {
    v56 = [(CSSpeechController *)v30 _getSerialQueueWithName:@"com.apple.corespeech.twoShotAudibleFeedback" targetQueue:v89];
    audibleFeedbackQueue = v30->_audibleFeedbackQueue;
    v30->_audibleFeedbackQueue = v56;

    v58 = dispatch_group_create();
    twoShotAudibleFeedbackDecisionGroup = v30->_twoShotAudibleFeedbackDecisionGroup;
    v30->_twoShotAudibleFeedbackDecisionGroup = v58;
  }

  if ([(CSSpeechController *)v30 _shouldUseSoundPlaybackMonitors])
  {
    if (monitorCopy)
    {
      _createMediaPlayingMonitor = monitorCopy;
    }

    else
    {
      _createMediaPlayingMonitor = [(CSSpeechController *)v30 _createMediaPlayingMonitor];
    }

    mediaPlayingMonitor = v30->_mediaPlayingMonitor;
    v30->_mediaPlayingMonitor = _createMediaPlayingMonitor;

    [(CSSpeechController *)v30 _initializeMediaPlayingState];
    if (alarmMonitorCopy)
    {
      _createAlarmMonitor = alarmMonitorCopy;
    }

    else
    {
      _createAlarmMonitor = [(CSSpeechController *)v30 _createAlarmMonitor];
    }

    alarmMonitor = v30->_alarmMonitor;
    v30->_alarmMonitor = _createAlarmMonitor;

    [(CSSpeechController *)v30 _initializeAlarmState];
    if (timerMonitorCopy)
    {
      _createTimerMonitor = timerMonitorCopy;
    }

    else
    {
      _createTimerMonitor = [(CSSpeechController *)v30 _createTimerMonitor];
    }

    timerMonitor = v30->_timerMonitor;
    v30->_timerMonitor = _createTimerMonitor;

    [(CSSpeechController *)v30 _initializeTimerState];
    mEMORY[0x277D01968] = [MEMORY[0x277D01968] sharedInstance];
    volumeMonitor = v30->_volumeMonitor;
    v30->_volumeMonitor = mEMORY[0x277D01968];

    [(CSVolumeMonitor *)v30->_volumeMonitor addObserver:v30];
  }

  if (v30->_supportHearstVoiceTrigger || CSIsHorseman())
  {
    v68 = objc_alloc_init(CSSpeechEndHostTimeEstimator);
    speechEndHostTimeEstimator = v30->_speechEndHostTimeEstimator;
    v30->_speechEndHostTimeEstimator = v68;
  }

  if (controllerCopy)
  {
    v70 = controllerCopy;
LABEL_35:
    volumeController = v30->_volumeController;
    v30->_volumeController = v70;

    [(CSSmartSiriVolumeController *)v30->_volumeController setDelegate:v30];
    goto LABEL_38;
  }

  if ([MEMORY[0x277D018F8] supportSmartVolume] && !v30->_endpointId)
  {
    v70 = objc_alloc_init(CSSmartSiriVolumeController);
    goto LABEL_35;
  }

LABEL_38:
  if (triggerCopy)
  {
    v72 = triggerCopy;
LABEL_42:
    continuousVoiceTrigger = v30->_continuousVoiceTrigger;
    v30->_continuousVoiceTrigger = v72;

    [(CSContinuousVoiceTrigger *)v30->_continuousVoiceTrigger setDelegate:v30];
    goto LABEL_43;
  }

  if ([MEMORY[0x277D018F8] supportContinuousVoiceTrigger])
  {
    v72 = objc_alloc_init(CSContinuousVoiceTrigger);
    goto LABEL_42;
  }

LABEL_43:
  if ([(CSSpeechController *)v30 _isHubRequestTV])
  {
    v30->_decoderProcessedSampleCountForTV = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    decodersForTV = v30->_decodersForTV;
    v30->_decodersForTV = dictionary;
  }

  v30->_isAudioSessionActivated = 0;
  if (CSIsCommunalDevice() && (![MEMORY[0x277D018F8] isAttentiveSiriEnabled] || v30->_endpointId))
  {
    v76 = +[CSSpeakerRecognitionAssetDownloadMonitor sharedInstance];
    [v76 addObserver:v30];
  }

  v77 = [MEMORY[0x277D65400] sharedInstanceWithEndpointId:v30->_endpointId];
  voiceProfileManager = v30->_voiceProfileManager;
  v30->_voiceProfileManager = v77;

  mEMORY[0x277D017D8] = [MEMORY[0x277D017D8] sharedInstance];
  [mEMORY[0x277D017D8] addObserver:v30];

  v30->_setupStarted = 0;
  if (factoryCopy)
  {
    v80 = factoryCopy;
  }

  else
  {
    v80 = +[CSXPCClientFactory defaultFactory];
  }

  xpcClientFactory = v30->_xpcClientFactory;
  v30->_xpcClientFactory = v80;

  if (sessionControllerCopy)
  {
    v82 = sessionControllerCopy;
  }

  else
  {
    v82 = +[CSAudioSessionController sharedInstance];
  }

  audioSessionController = v30->_audioSessionController;
  v30->_audioSessionController = v82;

  if (v91)
  {
    v84 = MEMORY[0x223DD26C0](v91);
  }

  else
  {
    v84 = &__block_literal_global_211;
  }

  supportsDuckingOnSpeakerOutputEvaluator = v30->_supportsDuckingOnSpeakerOutputEvaluator;
  v30->_supportsDuckingOnSpeakerOutputEvaluator = v84;

  v86 = v30->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __331__CSSpeechController_initWithEndpointId_xpcClientFactory_endpointAnalyzer_continuousVoiceTrigger_siriVolumeController_mediaPlayingMonitor_alarmMonitor_timerMonitor_audioSessionController_supportPhatic_supportHearstVoiceTrigger_supportTriagleModeSessionActivationRetry_supportSessionActivateDelay_supportsDuckingOnSpeakerEvaluator___block_invoke_2;
  block[3] = &unk_2784C6FD0;
  v95 = v30;
  dispatch_async(v86, block);

  evaluatorCopy = v91;
LABEL_59:

  return v30;
}

- (CSSpeechController)initWithEndpointId:(id)id
{
  v4 = MEMORY[0x277D018F8];
  idCopy = id;
  supportPhatic = [v4 supportPhatic];
  supportHearstVoiceTrigger = [MEMORY[0x277D018F8] supportHearstVoiceTrigger];
  if (CSIsIOS())
  {
    v8 = CSIsHorseman() ^ 1;
  }

  else
  {
    v8 = 0;
  }

  BYTE3(v11) = [MEMORY[0x277D018F8] supportSessionActivateDelay];
  BYTE2(v11) = v8;
  BYTE1(v11) = supportHearstVoiceTrigger;
  LOBYTE(v11) = supportPhatic;
  v9 = [CSSpeechController initWithEndpointId:"initWithEndpointId:xpcClientFactory:endpointAnalyzer:continuousVoiceTrigger:siriVolumeController:mediaPlayingMonitor:alarmMonitor:timerMonitor:audioSessionController:supportPhatic:supportHearstVoiceTrigger:supportTriagleModeSessionActivationRetry:supportSessionActivateDelay:supportsDuckingOnSpeakerEvaluator:" xpcClientFactory:idCopy endpointAnalyzer:0 continuousVoiceTrigger:0 siriVolumeController:0 mediaPlayingMonitor:0 alarmMonitor:0 timerMonitor:0 audioSessionController:0 supportPhatic:0 supportHearstVoiceTrigger:v11 supportTriagleModeSessionActivationRetry:0 supportSessionActivateDelay:? supportsDuckingOnSpeakerEvaluator:?];

  return v9;
}

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, &__block_literal_global_8574);
  }

  v3 = sharedController_sharedController;

  return v3;
}

uint64_t __38__CSSpeechController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(CSSpeechController);
  v1 = sharedController_sharedController;
  sharedController_sharedController = v0;

  v2 = sharedController_sharedController;

  return [v2 startController];
}

@end