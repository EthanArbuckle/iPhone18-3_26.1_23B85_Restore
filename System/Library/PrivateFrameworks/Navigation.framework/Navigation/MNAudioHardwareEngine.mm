@interface MNAudioHardwareEngine
- (BOOL)_hardwareIsBusy;
- (BOOL)_stopCurrentEvent;
- (BOOL)speaking;
- (BOOL)vibrateForShortPrompt:(unint64_t)prompt;
- (MNAudioHardwareEngine)initWithAudioSystemOptions:(id)options voiceLanguage:(id)language transportType:(int)type;
- (MNAudioPathwayResourceAccess)pathwayAccess;
- (MNAudioSessionResourceAccess)sessionAccess;
- (MNHapticResourceController)hapticController;
- (MNSoundEffectResourceController)sfxController;
- (MNSpeechResourceController)speechController;
- (double)durationOf:(id)of;
- (void)_finishedProcessingEventWithStatus:(unint64_t)status;
- (void)_mediaSessionServicesWereLost:(id)lost;
- (void)_mediaSessionServicesWereReset:(id)reset;
- (void)_process:(id)_process;
- (void)_processNextEvent;
- (void)_processNextEventIfNecessary;
- (void)_updateForNewGuidanceLevel;
- (void)audioSessionResourceAccess:(id)access didActivateSession:(BOOL)session;
- (void)audioSessionResourceAccess:(id)access didDeactivateSession:(BOOL)session;
- (void)audioSessionResourceAccess:(id)access didFailWhileActivatingSession:(id)session;
- (void)audioSessionResourceAccess:(id)access didFailWhileDeactivatingSession:(id)session;
- (void)audioSystemEventQueue:(id)queue eventWillInterrupt:(id)interrupt;
- (void)audioSystemOptions:(id)options didChangeGuidanceLevel:(unint64_t)level transportType:(int)type;
- (void)cache:(id)cache;
- (void)clearAllEvents;
- (void)dealloc;
- (void)forceStop;
- (void)registerObserver:(id)observer;
- (void)requestSpeech:(id)speech guidanceLevel:(unint64_t)level shortPromptType:(unint64_t)type completionHandler:(id)handler;
- (void)soundEffectResourceController:(id)controller didFailWhilePlayingIndicator:(unint64_t)indicator withError:(id)error;
- (void)soundEffectResourceController:(id)controller didFinishPlayingIndicator:(unint64_t)indicator;
- (void)soundEffectResourceController:(id)controller wasInterruptedWhilePlayingIndicator:(unint64_t)indicator withError:(id)error;
- (void)speechResourceController:(id)controller didFailWhileSpeakingUtterance:(id)utterance withError:(id)error;
- (void)speechResourceController:(id)controller didFinishSpeakingUtterance:(id)utterance withDuration:(double)duration;
- (void)speechResourceController:(id)controller didTimeoutWhileSpeakingUtterance:(id)utterance withError:(id)error;
- (void)speechResourceController:(id)controller wasInterruptedWhileSpeakingUtterance:(id)utterance withError:(id)error;
- (void)speechResourceController:(id)controller willStartSpeakingUtterance:(id)utterance;
- (void)stop;
- (void)unregisterObserver:(id)observer;
@end

@implementation MNAudioHardwareEngine

- (BOOL)speaking
{
  speechController = [(MNAudioHardwareEngine *)self speechController];
  speaking = [speechController speaking];

  return speaking;
}

- (MNSpeechResourceController)speechController
{
  speechController = self->_speechController;
  if (!speechController)
  {
    v4 = [[MNSpeechResourceController alloc] initWithLanguage:self->_voiceLanguage];
    v5 = self->_speechController;
    self->_speechController = v4;

    [(MNSpeechResourceController *)self->_speechController setDelegate:self];
    speechController = self->_speechController;
  }

  return speechController;
}

- (void)_mediaSessionServicesWereReset:(id)reset
{
  v4 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "ⓦ Media services were reset", v7, 2u);
  }

  sessionAccess = [(MNAudioHardwareEngine *)self sessionAccess];
  [sessionAccess updatePropertiesWithOptions:self->_options transportType:self->_transportType error:0];

  pathwayAccess = [(MNAudioHardwareEngine *)self pathwayAccess];
  [pathwayAccess setWantsVolumeControl:1];
}

- (void)_mediaSessionServicesWereLost:(id)lost
{
  v4 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "ⓦ Media services were lost", v6, 2u);
  }

  [(MNAudioHardwareEngine *)self stop];
  pathwayAccess = [(MNAudioHardwareEngine *)self pathwayAccess];
  [pathwayAccess setWantsVolumeControl:0];
}

- (void)speechResourceController:(id)controller wasInterruptedWhileSpeakingUtterance:(id)utterance withError:(id)error
{
  v21 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  utteranceCopy = utterance;
  errorCopy = error;
  v11 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315907;
    v14 = "[MNAudioHardwareEngine speechResourceController:wasInterruptedWhileSpeakingUtterance:withError:]";
    v15 = 2112;
    v16 = controllerCopy;
    v17 = 2113;
    v18 = utteranceCopy;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : '%{private}@' : %@", &v13, 0x2Au);
  }

  [(MNAudioHardwareEngine *)self _finishedProcessingEventWithStatus:4];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)speechResourceController:(id)controller didTimeoutWhileSpeakingUtterance:(id)utterance withError:(id)error
{
  v21 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  utteranceCopy = utterance;
  errorCopy = error;
  v11 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315906;
    v14 = "[MNAudioHardwareEngine speechResourceController:didTimeoutWhileSpeakingUtterance:withError:]";
    v15 = 2112;
    v16 = controllerCopy;
    v17 = 2112;
    v18 = utteranceCopy;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : '%@{private}' : %@", &v13, 0x2Au);
  }

  [(MNAudioHardwareEngine *)self _finishedProcessingEventWithStatus:7];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)speechResourceController:(id)controller didFailWhileSpeakingUtterance:(id)utterance withError:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  utteranceCopy = utterance;
  errorCopy = error;
  v11 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315907;
    v15 = "[MNAudioHardwareEngine speechResourceController:didFailWhileSpeakingUtterance:withError:]";
    v16 = 2112;
    v17 = controllerCopy;
    v18 = 2113;
    v19 = utteranceCopy;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : '%{private}@' : %@", &v14, 0x2Au);
  }

  if ([errorCopy code] == 3604 || objc_msgSend(errorCopy, "code") == 3608)
  {
    v12 = 8;
  }

  else
  {
    v12 = 6;
  }

  [(MNAudioHardwareEngine *)self _finishedProcessingEventWithStatus:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)speechResourceController:(id)controller didFinishSpeakingUtterance:(id)utterance withDuration:(double)duration
{
  v20 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  utteranceCopy = utterance;
  v10 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315907;
    v13 = "[MNAudioHardwareEngine speechResourceController:didFinishSpeakingUtterance:withDuration:]";
    v14 = 2112;
    v15 = controllerCopy;
    v16 = 2113;
    v17 = utteranceCopy;
    v18 = 2048;
    durationCopy = duration;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : '%{private}@' : %f", &v12, 0x2Au);
  }

  [(MNAudioHardwareEngine *)self _finishedProcessingEventWithStatus:9];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)speechResourceController:(id)controller willStartSpeakingUtterance:(id)utterance
{
  v16 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  utteranceCopy = utterance;
  v8 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315651;
    v11 = "[MNAudioHardwareEngine speechResourceController:willStartSpeakingUtterance:]";
    v12 = 2112;
    v13 = controllerCopy;
    v14 = 2113;
    v15 = utteranceCopy;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : '%{private}@'", &v10, 0x20u);
  }

  [(GEOObserverHashTable *)self->_observers audioHardwareEngine:self didStartSpeakingPrompt:utteranceCopy];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)soundEffectResourceController:(id)controller wasInterruptedWhilePlayingIndicator:(unint64_t)indicator withError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  errorCopy = error;
  v10 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315906;
    v13 = "[MNAudioHardwareEngine soundEffectResourceController:wasInterruptedWhilePlayingIndicator:withError:]";
    v14 = 2112;
    v15 = controllerCopy;
    v16 = 2048;
    indicatorCopy = indicator;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : %lu : %@", &v12, 0x2Au);
  }

  [(MNAudioHardwareEngine *)self _finishedProcessingEventWithStatus:5];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)soundEffectResourceController:(id)controller didFailWhilePlayingIndicator:(unint64_t)indicator withError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  errorCopy = error;
  v10 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315906;
    v13 = "[MNAudioHardwareEngine soundEffectResourceController:didFailWhilePlayingIndicator:withError:]";
    v14 = 2112;
    v15 = controllerCopy;
    v16 = 2048;
    indicatorCopy = indicator;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : %lu : %@", &v12, 0x2Au);
  }

  [(MNAudioHardwareEngine *)self _finishedProcessingEventWithStatus:6];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)soundEffectResourceController:(id)controller didFinishPlayingIndicator:(unint64_t)indicator
{
  v15 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v7 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[MNAudioHardwareEngine soundEffectResourceController:didFinishPlayingIndicator:]";
    v11 = 2112;
    v12 = controllerCopy;
    v13 = 2048;
    indicatorCopy = indicator;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : %lu", &v9, 0x20u);
  }

  [(MNAudioHardwareEngine *)self _finishedProcessingEventWithStatus:10];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)audioSystemOptions:(id)options didChangeGuidanceLevel:(unint64_t)level transportType:(int)type
{
  if (self->_transportType == type)
  {
    [(MNAudioHardwareEngine *)self _updateForNewGuidanceLevel:options];
  }
}

- (void)audioSessionResourceAccess:(id)access didFailWhileDeactivatingSession:(id)session
{
  v16 = *MEMORY[0x1E69E9840];
  accessCopy = access;
  sessionCopy = session;
  v8 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315650;
    v11 = "[MNAudioHardwareEngine audioSessionResourceAccess:didFailWhileDeactivatingSession:]";
    v12 = 2112;
    v13 = accessCopy;
    v14 = 2112;
    v15 = sessionCopy;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : %@", &v10, 0x20u);
  }

  if ([(MNAudioSystemEventQueue *)self->_queue count])
  {
    [(MNAudioHardwareEngine *)self _processNextEventIfNecessary];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)audioSessionResourceAccess:(id)access didDeactivateSession:(BOOL)session
{
  sessionCopy = session;
  v15 = *MEMORY[0x1E69E9840];
  accessCopy = access;
  v7 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[MNAudioHardwareEngine audioSessionResourceAccess:didDeactivateSession:]";
    v11 = 2112;
    v12 = accessCopy;
    v13 = 1024;
    v14 = sessionCopy;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : %d", &v9, 0x1Cu);
  }

  [(GEOObserverHashTable *)self->_observers audioHardwareEngine:self didActivateAudioSession:0];
  if ([(MNAudioSystemEventQueue *)self->_queue count])
  {
    [(MNAudioHardwareEngine *)self _processNextEventIfNecessary];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)audioSessionResourceAccess:(id)access didFailWhileActivatingSession:(id)session
{
  v16 = *MEMORY[0x1E69E9840];
  accessCopy = access;
  sessionCopy = session;
  v8 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315650;
    v11 = "[MNAudioHardwareEngine audioSessionResourceAccess:didFailWhileActivatingSession:]";
    v12 = 2112;
    v13 = accessCopy;
    v14 = 2112;
    v15 = sessionCopy;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : %@", &v10, 0x20u);
  }

  [(MNAudioHardwareEngine *)self _process:self->_pendingEvent];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)audioSessionResourceAccess:(id)access didActivateSession:(BOOL)session
{
  sessionCopy = session;
  v15 = *MEMORY[0x1E69E9840];
  accessCopy = access;
  v7 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[MNAudioHardwareEngine audioSessionResourceAccess:didActivateSession:]";
    v11 = 2112;
    v12 = accessCopy;
    v13 = 1024;
    v14 = sessionCopy;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : %d", &v9, 0x1Cu);
  }

  [(GEOObserverHashTable *)self->_observers audioHardwareEngine:self didActivateAudioSession:1];
  [(MNAudioHardwareEngine *)self _process:self->_pendingEvent];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)audioSystemEventQueue:(id)queue eventWillInterrupt:(id)interrupt
{
  v16 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  interruptCopy = interrupt;
  v8 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315650;
    v11 = "[MNAudioHardwareEngine audioSystemEventQueue:eventWillInterrupt:]";
    v12 = 2112;
    v13 = queueCopy;
    v14 = 2112;
    v15 = interruptCopy;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : %@", &v10, 0x20u);
  }

  if (![(MNAudioHardwareEngine *)self _stopCurrentEvent])
  {
    [(MNAudioHardwareEngine *)self _processNextEventIfNecessary];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_updateForNewGuidanceLevel
{
  v3 = [(MNAudioSystemOptions *)self->_options guidanceLevelForTransportType:self->_transportType];
  if (v3 == 1)
  {
    if (self->_currentUtteranceGuidanceLevel == 2)
    {
      [(MNAudioHardwareEngine *)self stop];
    }

    if ((GEOConfigGetBOOL() & 1) == 0)
    {
      v4 = _MNStringFromSpokenLocalization(@"Navigation_FirstTimeSwitchToAlertsOnlyGuidanceLevel");
      [(MNAudioHardwareEngine *)self requestSpeech:v4 guidanceLevel:1 shortPromptType:64 completionHandler:0];
      GEOConfigSetBOOL();
    }
  }

  else if (!v3)
  {
    [(MNAudioHardwareEngine *)self stop];
  }

  sessionAccess = [(MNAudioHardwareEngine *)self sessionAccess];
  [sessionAccess updatePropertiesWithOptions:self->_options transportType:self->_transportType error:0];
}

- (BOOL)_stopCurrentEvent
{
  speechController = [(MNAudioHardwareEngine *)self speechController];
  speaking = [speechController speaking];

  if (speaking)
  {
    speechController2 = [(MNAudioHardwareEngine *)self speechController];
    [speechController2 stopSpeakingAndReport:0];
  }

  return speaking;
}

- (BOOL)_hardwareIsBusy
{
  v41 = *MEMORY[0x1E69E9840];
  pendingEvent = self->_pendingEvent;
  speechController = [(MNAudioHardwareEngine *)self speechController];
  speaking = [speechController speaking];

  sfxController = [(MNAudioHardwareEngine *)self sfxController];
  playing = [sfxController playing];

  hapticController = [(MNAudioHardwareEngine *)self hapticController];
  vibrating = [hapticController vibrating];

  sessionAccess = [(MNAudioHardwareEngine *)self sessionAccess];
  vibrating2 = 1;
  if ([sessionAccess state] != 1 && !pendingEvent)
  {
    speechController2 = [(MNAudioHardwareEngine *)self speechController];
    if (([speechController2 speaking] & 1) == 0)
    {
      sfxController2 = [(MNAudioHardwareEngine *)self sfxController];
      if (([sfxController2 playing] & 1) == 0)
      {
        hapticController2 = [(MNAudioHardwareEngine *)self hapticController];
        vibrating2 = [hapticController2 vibrating];
      }
    }
  }

  v15 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v28 = vibrating;
    v16 = playing;
    v17 = speaking;
    if (vibrating2)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    sessionAccess2 = [(MNAudioHardwareEngine *)self sessionAccess];
    state = [sessionAccess2 state];
    if (state >= 3)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", state];
    }

    else
    {
      v21 = *(&off_1E842A850 + state);
    }

    if (pendingEvent)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    *buf = 138413570;
    if (v17)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v30 = v18;
    v31 = 2112;
    if (v16)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v32 = v21;
    if (v28)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v33 = 2112;
    v34 = v22;
    v35 = 2112;
    v36 = v23;
    v37 = 2112;
    v38 = v24;
    v39 = 2112;
    v40 = v25;
    _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_INFO, "ⓦ Is hardware busy? %@, because\n{\n\tSession state: %@\n\tHas pending event: %@\n\tSpeech active: %@\n\tSFX active: %@\n\tHaptics active: %@\n}", buf, 0x3Eu);
  }

  v26 = *MEMORY[0x1E69E9840];
  return vibrating2;
}

- (void)_finishedProcessingEventWithStatus:(unint64_t)status
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (status >= 0xB)
    {
      status = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", status];
    }

    else
    {
      status = *(&off_1E842A7F8 + status);
    }

    *buf = 136315394;
    v15 = "[MNAudioHardwareEngine _finishedProcessingEventWithStatus:]";
    v16 = 2112;
    v17 = status;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "ⓦ %s : %@", buf, 0x16u);
  }

  v7 = self->_pendingEvent;
  pendingEvent = self->_pendingEvent;
  self->_pendingEvent = 0;

  self->_currentUtteranceGuidanceLevel = 0;
  handler = [(MNAudioSystemEvent *)v7 handler];

  if (handler)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__MNAudioHardwareEngine__finishedProcessingEventWithStatus___block_invoke;
    block[3] = &unk_1E8430A10;
    v12 = v7;
    statusCopy = status;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  [(MNAudioHardwareEngine *)self _processNextEventIfNecessary];

  v10 = *MEMORY[0x1E69E9840];
}

void __60__MNAudioHardwareEngine__finishedProcessingEventWithStatus___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  v2[2](v2, *(a1 + 40));
}

- (void)_process:(id)_process
{
  v39 = *MEMORY[0x1E69E9840];
  _processCopy = _process;
  v5 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    *v26 = _processCopy;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "ⓦ Processing event - %{private}@", buf, 0xCu);
  }

  promptStyle = 1852992876;
  if (([_processCopy shortPrompt] & 0x40) == 0)
  {
    sessionAccess = [(MNAudioHardwareEngine *)self sessionAccess];
    promptStyle = [sessionAccess promptStyle];
  }

  v8 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    sessionAccess2 = [(MNAudioHardwareEngine *)self sessionAccess];
    v9 = [sessionAccess2 promptStyle] >> 24;
    sessionAccess3 = [(MNAudioHardwareEngine *)self sessionAccess];
    v11 = ([sessionAccess3 promptStyle] >> 16);
    sessionAccess4 = [(MNAudioHardwareEngine *)self sessionAccess];
    v13 = ([sessionAccess4 promptStyle] >> 8);
    sessionAccess5 = [(MNAudioHardwareEngine *)self sessionAccess];
    promptStyle2 = [sessionAccess5 promptStyle];
    *buf = 67110912;
    *v26 = BYTE3(promptStyle);
    *&v26[4] = 1024;
    *&v26[6] = BYTE2(promptStyle);
    v27 = 1024;
    v28 = BYTE1(promptStyle);
    v29 = 1024;
    v30 = promptStyle;
    v31 = 1024;
    v32 = v9;
    v33 = 1024;
    v34 = v11;
    v35 = 1024;
    v36 = v13;
    v37 = 1024;
    v38 = promptStyle2;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_INFO, "ⓦ Processing: Using a prompt style of '%c%c%c%c' - audio session's prompt style: '%c%c%c%c'", buf, 0x32u);
  }

  self->_currentUtteranceGuidanceLevel = 0;
  if (self->_chimeBeforeInstruction)
  {
    if (([_processCopy shortPrompt] & 0x10) != 0)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    sfxController = [(MNAudioHardwareEngine *)self sfxController];
    [sfxController playSound:v16 andReport:0];
  }

  if (promptStyle == 1852992876)
  {
    v18 = [_processCopy isPrivate] ^ 1;
    speechController = [(MNAudioHardwareEngine *)self speechController];
    utterance = [_processCopy utterance];
    [speechController speak:utterance withDisclosure:v18 andReport:0];

    self->_currentUtteranceGuidanceLevel = [_processCopy guidanceLevel];
  }

  else
  {
    if ([_processCopy hasSoundEffect])
    {
      if (([_processCopy shortPrompt] & 0x10) != 0)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }
    }

    else
    {
      v21 = 0;
    }

    sfxController2 = [(MNAudioHardwareEngine *)self sfxController];
    [sfxController2 playSound:v21 andReport:0];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_processNextEvent
{
  v36 = 0;
  v37[0] = &v36;
  v37[1] = 0x3032000000;
  v37[2] = __Block_byref_object_copy__2451;
  v37[3] = __Block_byref_object_dispose__2452;
  v38 = objc_opt_new();
  v33 = 0;
  v34[0] = &v33;
  v34[1] = 0x3032000000;
  v34[2] = __Block_byref_object_copy__2451;
  v34[3] = __Block_byref_object_dispose__2452;
  v35 = objc_opt_new();
  v3 = [(MNAudioSystemOptions *)self->_options guidanceLevelForTransportType:self->_transportType];
  while (1)
  {
    v4 = [(MNAudioSystemEventQueue *)self->_queue count];
    if (!v4)
    {
      break;
    }

    dequeue = [(MNAudioSystemEventQueue *)self->_queue dequeue];
    utterance = [dequeue utterance];
    v7 = [utterance length];

    if (v7)
    {
      _speechMuted = [(MNAudioHardwareEngine *)self _speechMuted];
      v9 = v37;
      if (!_speechMuted)
      {
        guidanceLevel = [dequeue guidanceLevel];
        v9 = v34;
        if (v3 >= guidanceLevel)
        {
          goto LABEL_8;
        }
      }

      [*(*v9 + 40) addObject:dequeue];
    }

    dequeue = 0;
LABEL_8:
    if (dequeue)
    {
      goto LABEL_11;
    }
  }

  dequeue = 0;
LABEL_11:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MNAudioHardwareEngine__processNextEvent__block_invoke;
  block[3] = &unk_1E842A718;
  block[4] = &v36;
  block[5] = &v33;
  block[6] = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  if (!v4)
  {
    v15 = GetAudioLogForMNAudioHardwareEngineCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_INFO, "ⓦ No more events to process; deactivating the audio session", buf, 2u);
    }

    sessionAccess = [(MNAudioHardwareEngine *)self sessionAccess];
    [sessionAccess deactivate];
    goto LABEL_30;
  }

  if (([dequeue shortPrompt] & 0x40) != 0)
  {
    goto LABEL_26;
  }

  sessionAccess2 = [(MNAudioHardwareEngine *)self sessionAccess];
  promptStyle = [sessionAccess2 promptStyle];

  if (promptStyle != 1936224884)
  {
    if (promptStyle == 1852796517)
    {
      handler = [dequeue handler];

      if (handler)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __42__MNAudioHardwareEngine__processNextEvent__block_invoke_68;
        v29[3] = &unk_1E8430ED8;
        v30 = dequeue;
        v14 = MEMORY[0x1E69E96A0];
        dispatch_async(MEMORY[0x1E69E96A0], v29);
      }

      [(MNAudioHardwareEngine *)self _processNextEvent];
      goto LABEL_31;
    }

LABEL_26:
    sessionAccess3 = [(MNAudioHardwareEngine *)self sessionAccess];
    state = [sessionAccess3 state];

    if (state)
    {
      sessionAccess4 = [(MNAudioHardwareEngine *)self sessionAccess];
      state2 = [sessionAccess4 state];

      if (state2 == 2)
      {
        [(MNAudioHardwareEngine *)self _process:dequeue];
      }

      goto LABEL_31;
    }

    objc_storeStrong(&self->_pendingEvent, dequeue);
    sessionAccess = [(MNAudioHardwareEngine *)self sessionAccess];
    [sessionAccess activate];
LABEL_30:

    goto LABEL_31;
  }

  v17 = [dequeue shortPrompt] & 0xF;
  if (v17 > 3 || v17 == 2)
  {
    goto LABEL_26;
  }

  handler2 = [dequeue handler];

  if (handler2)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __42__MNAudioHardwareEngine__processNextEvent__block_invoke_2;
    v27 = &unk_1E8430ED8;
    v28 = dequeue;
    v19 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], &v24);
  }

  [(MNAudioHardwareEngine *)self _processNextEvent:v24];
LABEL_31:

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v36, 8);
}

void __42__MNAudioHardwareEngine__processNextEvent__block_invoke(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v1 = *(*(a1[4] + 8) + 40);
  v2 = [v1 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v35;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v35 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v34 + 1) + 8 * i);
        v7 = GetAudioLogForMNAudioHardwareEngineCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 138477827;
          v39 = v6;
          _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "ⓦ Speech is muted; dropping event - %{private}@", buf, 0xCu);
        }

        v8 = [v6 handler];

        if (v8)
        {
          v9 = [v6 handler];
          v9[2](v9, 0);
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v3);
  }

  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = *(*(a1[5] + 8) + 40);
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v30 + 1) + 8 * j);
        v18 = GetAudioLogForMNAudioHardwareEngineCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = [v17 guidanceLevel];
          if ((v19 + 1) >= 4)
          {
            v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", v19];
          }

          else
          {
            v20 = *(&off_1E842A7D8 + v19 + 1);
          }

          v21 = v20;
          v22 = a1[6] + 1;
          if (v22 >= 4)
          {
            v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", a1[6]];
          }

          else
          {
            v23 = *(&off_1E842A7D8 + v22);
          }

          *buf = 138412546;
          v39 = v21;
          v40 = 2112;
          v41 = v23;
          _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_INFO, "ⓦ Voice guidance level not met - min required: %@, actual: %@", buf, 0x16u);
        }

        v24 = [v17 handler];

        if (v24)
        {
          v25 = [v17 handler];
          v25[2](v25, 1);
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v14);
  }

  v26 = *(a1[5] + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = 0;

  v28 = *MEMORY[0x1E69E9840];
}

void __42__MNAudioHardwareEngine__processNextEvent__block_invoke_68(uint64_t a1)
{
  v1 = [*(a1 + 32) handler];
  v1[2](v1, 2);
}

void __42__MNAudioHardwareEngine__processNextEvent__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) handler];
  v1[2](v1, 3);
}

- (void)_processNextEventIfNecessary
{
  if (![(MNAudioHardwareEngine *)self _hardwareIsBusy])
  {

    [(MNAudioHardwareEngine *)self _processNextEvent];
  }
}

- (double)durationOf:(id)of
{
  ofCopy = of;
  if ([ofCopy length])
  {
    speechController = [(MNAudioHardwareEngine *)self speechController];
    [speechController durationOf:ofCopy];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (BOOL)vibrateForShortPrompt:(unint64_t)prompt
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = prompt & 0xF;
  v4 = v3 - 3;
  if (v3 - 3 > 2)
  {
    hapticController = GetAudioLogForMNAudioHardwareEngineCategory();
    if (os_log_type_enabled(hapticController, OS_LOG_TYPE_DEFAULT))
    {
      if (v3 >= 6)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", v3];
      }

      else
      {
        v6 = *(&off_1E842A7A8 + v3);
      }

      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1D311E000, hapticController, OS_LOG_TYPE_DEFAULT, "ⓦ Vibration ignored: short prompt type - %@", buf, 0xCu);
    }
  }

  else
  {
    hapticController = [(MNAudioHardwareEngine *)self hapticController];
    [hapticController triggerVibration];
  }

  result = v4 < 3;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)clearAllEvents
{
  [(MNAudioHardwareEngine *)self _stopCurrentEvent];
  queue = self->_queue;

  [(MNAudioSystemEventQueue *)queue clear];
}

- (void)stop
{
  [(MNAudioHardwareEngine *)self clearAllEvents];
  sfxController = [(MNAudioHardwareEngine *)self sfxController];
  [sfxController stop];

  hapticController = [(MNAudioHardwareEngine *)self hapticController];
  [hapticController stopVibrating];
}

- (void)forceStop
{
  [(MNAudioHardwareEngine *)self clearAllEvents];
  sfxController = [(MNAudioHardwareEngine *)self sfxController];
  [sfxController stop];

  hapticController = [(MNAudioHardwareEngine *)self hapticController];
  [hapticController stopVibrating];

  sessionAccess = [(MNAudioHardwareEngine *)self sessionAccess];
  [sessionAccess deactivateWithForce:1];
}

- (void)requestSpeech:(id)speech guidanceLevel:(unint64_t)level shortPromptType:(unint64_t)type completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  speechCopy = speech;
  handlerCopy = handler;
  if ([speechCopy length])
  {
    v12 = [[MNAudioSystemEvent alloc] initWithUtterance:speechCopy andShortPrompt:type andVoiceGuidanceLevel:level andCompletion:handlerCopy];
    if (v12)
    {
      queue = self->_queue;
      v18 = 0;
      v14 = [(MNAudioSystemEventQueue *)queue enqueue:v12 withOptions:8 andReport:&v18];
      v15 = v18;
      if (v14)
      {
        [(MNAudioHardwareEngine *)self _processNextEventIfNecessary];
      }

      else
      {
        v16 = GetAudioLogForMNAudioHardwareEngineCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138477827;
          v20 = v12;
          _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_INFO, "⒲ Could not enqueue event : %{private}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v15 = GetAudioLogForMNAudioHardwareEngineCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_INFO, "⒲ Could not create event", buf, 2u);
      }
    }
  }

  else
  {
    v12 = GetAudioLogForMNAudioHardwareEngineCategory();
    if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[MNAudioHardwareEngine requestSpeech:guidanceLevel:shortPromptType:completionHandler:]";
      _os_log_impl(&dword_1D311E000, &v12->super, OS_LOG_TYPE_INFO, "⒲ %s : string is empty", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)cache:(id)cache
{
  v13 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v5 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315395;
    v10 = "[MNAudioHardwareEngine cache:]";
    v11 = 2113;
    v12 = cacheCopy;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEBUG, "%s : '%{private}@'", &v9, 0x16u);
  }

  if ([cacheCopy length])
  {
    v6 = [cacheCopy _navigation_isPrivate] ^ 1;
    speechController = [(MNAudioHardwareEngine *)self speechController];
    [speechController cache:cacheCopy withDisclosure:v6 andReport:0];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)unregisterObserver:(id)observer
{
  [(GEOObserverHashTable *)self->_observers unregisterObserver:observer];
  if (([(GEOObserverHashTable *)self->_observers hasObservers]& 1) == 0)
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_1F4F02810])
  {
    observers = self->_observers;
    if (!observers)
    {
      v5 = objc_alloc(MEMORY[0x1E69A22D8]);
      v6 = MNNavigationQueue();
      v7 = [v5 initWithProtocol:&unk_1F4F02810 queue:v6];
      v8 = self->_observers;
      self->_observers = v7;

      observers = self->_observers;
    }

    [(GEOObserverHashTable *)observers registerObserver:observerCopy];
  }
}

- (MNSoundEffectResourceController)sfxController
{
  sfxController = self->_sfxController;
  if (!sfxController)
  {
    v4 = objc_opt_new();
    v5 = self->_sfxController;
    self->_sfxController = v4;

    [(MNSoundEffectResourceController *)self->_sfxController setDelegate:self];
    sfxController = self->_sfxController;
  }

  return sfxController;
}

- (MNHapticResourceController)hapticController
{
  hapticController = self->_hapticController;
  if (!hapticController)
  {
    v4 = objc_opt_new();
    v5 = self->_hapticController;
    self->_hapticController = v4;

    [(MNHapticResourceController *)self->_hapticController setDelegate:self];
    hapticController = self->_hapticController;
  }

  return hapticController;
}

- (MNAudioSessionResourceAccess)sessionAccess
{
  sessionAccess = self->_sessionAccess;
  if (!sessionAccess)
  {
    v4 = objc_opt_new();
    v5 = self->_sessionAccess;
    self->_sessionAccess = v4;

    [(MNAudioSessionResourceAccess *)self->_sessionAccess setDelegate:self];
    sessionAccess = self->_sessionAccess;
  }

  return sessionAccess;
}

- (MNAudioPathwayResourceAccess)pathwayAccess
{
  pathwayAccess = self->_pathwayAccess;
  if (!pathwayAccess)
  {
    v4 = [[MNAudioPathwayResourceAccess alloc] initWithHFPEnabled:[(MNAudioSystemOptions *)self->_options useHFP]];
    v5 = self->_pathwayAccess;
    self->_pathwayAccess = v4;

    pathwayAccess = self->_pathwayAccess;
  }

  return pathwayAccess;
}

- (void)dealloc
{
  chimeBeforeInstructionListenerHandle = self->_chimeBeforeInstructionListenerHandle;
  GEOConfigRemoveBlockListener();
  [(MNAudioSystemOptions *)self->_options unregisterObserver:self];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = MNAudioHardwareEngine;
  [(MNAudioHardwareEngine *)&v5 dealloc];
}

- (MNAudioHardwareEngine)initWithAudioSystemOptions:(id)options voiceLanguage:(id)language transportType:(int)type
{
  v38 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  languageCopy = language;
  v11 = languageCopy;
  if (!optionsCopy || ![languageCopy length])
  {
    goto LABEL_11;
  }

  selfCopy = 0;
  if (type > 3 || type == 1)
  {
    goto LABEL_15;
  }

  v33.receiver = self;
  v33.super_class = MNAudioHardwareEngine;
  self = [(MNAudioHardwareEngine *)&v33 init];
  if (!self)
  {
LABEL_11:
    selfCopy = 0;
    goto LABEL_15;
  }

  v13 = [v11 copy];
  voiceLanguage = self->_voiceLanguage;
  self->_voiceLanguage = v13;

  self->_transportType = type;
  objc_storeStrong(&self->_options, options);
  v15 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    options = self->_options;
    *buf = 138412290;
    optionsCopy2 = options;
    _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_INFO, "ⓜ Setting audio system options : %@", buf, 0xCu);
  }

  useHFP = [(MNAudioSystemOptions *)self->_options useHFP];
  pathwayAccess = [(MNAudioHardwareEngine *)self pathwayAccess];
  [pathwayAccess setEnableHFPUse:useHFP];

  pathwayAccess2 = [(MNAudioHardwareEngine *)self pathwayAccess];
  [pathwayAccess2 setWantsVolumeControl:1];

  [(MNAudioHardwareEngine *)self _updateForNewGuidanceLevel];
  v20 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = self->_voiceLanguage;
    transportType = self->_transportType;
    if (transportType >= 7)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_transportType];
    }

    else
    {
      v23 = *(&off_1E842A738 + transportType);
    }

    *buf = 138412546;
    optionsCopy2 = v21;
    v36 = 2112;
    v37 = v23;
    _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_INFO, "ⓦ Initialization: using voice language : %@, and transport type : %@", buf, 0x16u);
  }

  self->_currentUtteranceGuidanceLevel = 0;
  v24 = [[MNAudioSystemEventQueue alloc] initWithCapacity:32];
  queue = self->_queue;
  self->_queue = v24;

  [(MNAudioSystemEventQueue *)self->_queue setDelegate:self];
  self->_chimeBeforeInstruction = GEOConfigGetBOOL();
  objc_initWeak(buf, self);
  v26 = MEMORY[0x1E69E96A0];
  objc_copyWeak(&v32, buf);
  v27 = _GEOConfigAddBlockListenerForKey();
  chimeBeforeInstructionListenerHandle = self->_chimeBeforeInstructionListenerHandle;
  self->_chimeBeforeInstructionListenerHandle = v27;

  [(MNAudioSystemOptions *)self->_options registerObserver:self];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__mediaSessionServicesWereLost_ name:*MEMORY[0x1E698D5B0] object:0];
  [defaultCenter addObserver:self selector:sel__mediaSessionServicesWereReset_ name:*MEMORY[0x1E698D5C0] object:0];
  self = self;

  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);
  selfCopy = self;
LABEL_15:

  v30 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

void __80__MNAudioHardwareEngine_initWithAudioSystemOptions_voiceLanguage_transportType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    WeakRetained[64] = GEOConfigGetBOOL();
    WeakRetained = v2;
  }
}

@end