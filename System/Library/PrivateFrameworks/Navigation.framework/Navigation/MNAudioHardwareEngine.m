@interface MNAudioHardwareEngine
- (BOOL)_hardwareIsBusy;
- (BOOL)_stopCurrentEvent;
- (BOOL)speaking;
- (BOOL)vibrateForShortPrompt:(unint64_t)a3;
- (MNAudioHardwareEngine)initWithAudioSystemOptions:(id)a3 voiceLanguage:(id)a4 transportType:(int)a5;
- (MNAudioPathwayResourceAccess)pathwayAccess;
- (MNAudioSessionResourceAccess)sessionAccess;
- (MNHapticResourceController)hapticController;
- (MNSoundEffectResourceController)sfxController;
- (MNSpeechResourceController)speechController;
- (double)durationOf:(id)a3;
- (void)_finishedProcessingEventWithStatus:(unint64_t)a3;
- (void)_mediaSessionServicesWereLost:(id)a3;
- (void)_mediaSessionServicesWereReset:(id)a3;
- (void)_process:(id)a3;
- (void)_processNextEvent;
- (void)_processNextEventIfNecessary;
- (void)_updateForNewGuidanceLevel;
- (void)audioSessionResourceAccess:(id)a3 didActivateSession:(BOOL)a4;
- (void)audioSessionResourceAccess:(id)a3 didDeactivateSession:(BOOL)a4;
- (void)audioSessionResourceAccess:(id)a3 didFailWhileActivatingSession:(id)a4;
- (void)audioSessionResourceAccess:(id)a3 didFailWhileDeactivatingSession:(id)a4;
- (void)audioSystemEventQueue:(id)a3 eventWillInterrupt:(id)a4;
- (void)audioSystemOptions:(id)a3 didChangeGuidanceLevel:(unint64_t)a4 transportType:(int)a5;
- (void)cache:(id)a3;
- (void)clearAllEvents;
- (void)dealloc;
- (void)forceStop;
- (void)registerObserver:(id)a3;
- (void)requestSpeech:(id)a3 guidanceLevel:(unint64_t)a4 shortPromptType:(unint64_t)a5 completionHandler:(id)a6;
- (void)soundEffectResourceController:(id)a3 didFailWhilePlayingIndicator:(unint64_t)a4 withError:(id)a5;
- (void)soundEffectResourceController:(id)a3 didFinishPlayingIndicator:(unint64_t)a4;
- (void)soundEffectResourceController:(id)a3 wasInterruptedWhilePlayingIndicator:(unint64_t)a4 withError:(id)a5;
- (void)speechResourceController:(id)a3 didFailWhileSpeakingUtterance:(id)a4 withError:(id)a5;
- (void)speechResourceController:(id)a3 didFinishSpeakingUtterance:(id)a4 withDuration:(double)a5;
- (void)speechResourceController:(id)a3 didTimeoutWhileSpeakingUtterance:(id)a4 withError:(id)a5;
- (void)speechResourceController:(id)a3 wasInterruptedWhileSpeakingUtterance:(id)a4 withError:(id)a5;
- (void)speechResourceController:(id)a3 willStartSpeakingUtterance:(id)a4;
- (void)stop;
- (void)unregisterObserver:(id)a3;
@end

@implementation MNAudioHardwareEngine

- (BOOL)speaking
{
  v2 = [(MNAudioHardwareEngine *)self speechController];
  v3 = [v2 speaking];

  return v3;
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

- (void)_mediaSessionServicesWereReset:(id)a3
{
  v4 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "ⓦ Media services were reset", v7, 2u);
  }

  v5 = [(MNAudioHardwareEngine *)self sessionAccess];
  [v5 updatePropertiesWithOptions:self->_options transportType:self->_transportType error:0];

  v6 = [(MNAudioHardwareEngine *)self pathwayAccess];
  [v6 setWantsVolumeControl:1];
}

- (void)_mediaSessionServicesWereLost:(id)a3
{
  v4 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "ⓦ Media services were lost", v6, 2u);
  }

  [(MNAudioHardwareEngine *)self stop];
  v5 = [(MNAudioHardwareEngine *)self pathwayAccess];
  [v5 setWantsVolumeControl:0];
}

- (void)speechResourceController:(id)a3 wasInterruptedWhileSpeakingUtterance:(id)a4 withError:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315907;
    v14 = "[MNAudioHardwareEngine speechResourceController:wasInterruptedWhileSpeakingUtterance:withError:]";
    v15 = 2112;
    v16 = v8;
    v17 = 2113;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : '%{private}@' : %@", &v13, 0x2Au);
  }

  [(MNAudioHardwareEngine *)self _finishedProcessingEventWithStatus:4];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)speechResourceController:(id)a3 didTimeoutWhileSpeakingUtterance:(id)a4 withError:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315906;
    v14 = "[MNAudioHardwareEngine speechResourceController:didTimeoutWhileSpeakingUtterance:withError:]";
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : '%@{private}' : %@", &v13, 0x2Au);
  }

  [(MNAudioHardwareEngine *)self _finishedProcessingEventWithStatus:7];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)speechResourceController:(id)a3 didFailWhileSpeakingUtterance:(id)a4 withError:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315907;
    v15 = "[MNAudioHardwareEngine speechResourceController:didFailWhileSpeakingUtterance:withError:]";
    v16 = 2112;
    v17 = v8;
    v18 = 2113;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : '%{private}@' : %@", &v14, 0x2Au);
  }

  if ([v10 code] == 3604 || objc_msgSend(v10, "code") == 3608)
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

- (void)speechResourceController:(id)a3 didFinishSpeakingUtterance:(id)a4 withDuration:(double)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315907;
    v13 = "[MNAudioHardwareEngine speechResourceController:didFinishSpeakingUtterance:withDuration:]";
    v14 = 2112;
    v15 = v8;
    v16 = 2113;
    v17 = v9;
    v18 = 2048;
    v19 = a5;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : '%{private}@' : %f", &v12, 0x2Au);
  }

  [(MNAudioHardwareEngine *)self _finishedProcessingEventWithStatus:9];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)speechResourceController:(id)a3 willStartSpeakingUtterance:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315651;
    v11 = "[MNAudioHardwareEngine speechResourceController:willStartSpeakingUtterance:]";
    v12 = 2112;
    v13 = v6;
    v14 = 2113;
    v15 = v7;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : '%{private}@'", &v10, 0x20u);
  }

  [(GEOObserverHashTable *)self->_observers audioHardwareEngine:self didStartSpeakingPrompt:v7];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)soundEffectResourceController:(id)a3 wasInterruptedWhilePlayingIndicator:(unint64_t)a4 withError:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315906;
    v13 = "[MNAudioHardwareEngine soundEffectResourceController:wasInterruptedWhilePlayingIndicator:withError:]";
    v14 = 2112;
    v15 = v8;
    v16 = 2048;
    v17 = a4;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : %lu : %@", &v12, 0x2Au);
  }

  [(MNAudioHardwareEngine *)self _finishedProcessingEventWithStatus:5];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)soundEffectResourceController:(id)a3 didFailWhilePlayingIndicator:(unint64_t)a4 withError:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315906;
    v13 = "[MNAudioHardwareEngine soundEffectResourceController:didFailWhilePlayingIndicator:withError:]";
    v14 = 2112;
    v15 = v8;
    v16 = 2048;
    v17 = a4;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : %lu : %@", &v12, 0x2Au);
  }

  [(MNAudioHardwareEngine *)self _finishedProcessingEventWithStatus:6];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)soundEffectResourceController:(id)a3 didFinishPlayingIndicator:(unint64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[MNAudioHardwareEngine soundEffectResourceController:didFinishPlayingIndicator:]";
    v11 = 2112;
    v12 = v6;
    v13 = 2048;
    v14 = a4;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : %lu", &v9, 0x20u);
  }

  [(MNAudioHardwareEngine *)self _finishedProcessingEventWithStatus:10];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)audioSystemOptions:(id)a3 didChangeGuidanceLevel:(unint64_t)a4 transportType:(int)a5
{
  if (self->_transportType == a5)
  {
    [(MNAudioHardwareEngine *)self _updateForNewGuidanceLevel:a3];
  }
}

- (void)audioSessionResourceAccess:(id)a3 didFailWhileDeactivatingSession:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315650;
    v11 = "[MNAudioHardwareEngine audioSessionResourceAccess:didFailWhileDeactivatingSession:]";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : %@", &v10, 0x20u);
  }

  if ([(MNAudioSystemEventQueue *)self->_queue count])
  {
    [(MNAudioHardwareEngine *)self _processNextEventIfNecessary];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)audioSessionResourceAccess:(id)a3 didDeactivateSession:(BOOL)a4
{
  v4 = a4;
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[MNAudioHardwareEngine audioSessionResourceAccess:didDeactivateSession:]";
    v11 = 2112;
    v12 = v6;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : %d", &v9, 0x1Cu);
  }

  [(GEOObserverHashTable *)self->_observers audioHardwareEngine:self didActivateAudioSession:0];
  if ([(MNAudioSystemEventQueue *)self->_queue count])
  {
    [(MNAudioHardwareEngine *)self _processNextEventIfNecessary];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)audioSessionResourceAccess:(id)a3 didFailWhileActivatingSession:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315650;
    v11 = "[MNAudioHardwareEngine audioSessionResourceAccess:didFailWhileActivatingSession:]";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : %@", &v10, 0x20u);
  }

  [(MNAudioHardwareEngine *)self _process:self->_pendingEvent];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)audioSessionResourceAccess:(id)a3 didActivateSession:(BOOL)a4
{
  v4 = a4;
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "[MNAudioHardwareEngine audioSessionResourceAccess:didActivateSession:]";
    v11 = 2112;
    v12 = v6;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEBUG, "ⓦ %s : %@ : %d", &v9, 0x1Cu);
  }

  [(GEOObserverHashTable *)self->_observers audioHardwareEngine:self didActivateAudioSession:1];
  [(MNAudioHardwareEngine *)self _process:self->_pendingEvent];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)audioSystemEventQueue:(id)a3 eventWillInterrupt:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315650;
    v11 = "[MNAudioHardwareEngine audioSystemEventQueue:eventWillInterrupt:]";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
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

  v5 = [(MNAudioHardwareEngine *)self sessionAccess];
  [v5 updatePropertiesWithOptions:self->_options transportType:self->_transportType error:0];
}

- (BOOL)_stopCurrentEvent
{
  v3 = [(MNAudioHardwareEngine *)self speechController];
  v4 = [v3 speaking];

  if (v4)
  {
    v5 = [(MNAudioHardwareEngine *)self speechController];
    [v5 stopSpeakingAndReport:0];
  }

  return v4;
}

- (BOOL)_hardwareIsBusy
{
  v41 = *MEMORY[0x1E69E9840];
  pendingEvent = self->_pendingEvent;
  v4 = [(MNAudioHardwareEngine *)self speechController];
  v5 = [v4 speaking];

  v6 = [(MNAudioHardwareEngine *)self sfxController];
  v7 = [v6 playing];

  v8 = [(MNAudioHardwareEngine *)self hapticController];
  v9 = [v8 vibrating];

  v10 = [(MNAudioHardwareEngine *)self sessionAccess];
  v11 = 1;
  if ([v10 state] != 1 && !pendingEvent)
  {
    v12 = [(MNAudioHardwareEngine *)self speechController];
    if (([v12 speaking] & 1) == 0)
    {
      v13 = [(MNAudioHardwareEngine *)self sfxController];
      if (([v13 playing] & 1) == 0)
      {
        v14 = [(MNAudioHardwareEngine *)self hapticController];
        v11 = [v14 vibrating];
      }
    }
  }

  v15 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v28 = v9;
    v16 = v7;
    v17 = v5;
    if (v11)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v19 = [(MNAudioHardwareEngine *)self sessionAccess];
    v20 = [v19 state];
    if (v20 >= 3)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", v20];
    }

    else
    {
      v21 = *(&off_1E842A850 + v20);
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
  return v11;
}

- (void)_finishedProcessingEventWithStatus:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (a3 >= 0xB)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", a3];
    }

    else
    {
      v6 = *(&off_1E842A7F8 + a3);
    }

    *buf = 136315394;
    v15 = "[MNAudioHardwareEngine _finishedProcessingEventWithStatus:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "ⓦ %s : %@", buf, 0x16u);
  }

  v7 = self->_pendingEvent;
  pendingEvent = self->_pendingEvent;
  self->_pendingEvent = 0;

  self->_currentUtteranceGuidanceLevel = 0;
  v9 = [(MNAudioSystemEvent *)v7 handler];

  if (v9)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__MNAudioHardwareEngine__finishedProcessingEventWithStatus___block_invoke;
    block[3] = &unk_1E8430A10;
    v12 = v7;
    v13 = a3;
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

- (void)_process:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    *v26 = v4;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "ⓦ Processing event - %{private}@", buf, 0xCu);
  }

  v6 = 1852992876;
  if (([v4 shortPrompt] & 0x40) == 0)
  {
    v7 = [(MNAudioHardwareEngine *)self sessionAccess];
    v6 = [v7 promptStyle];
  }

  v8 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v24 = [(MNAudioHardwareEngine *)self sessionAccess];
    v9 = [v24 promptStyle] >> 24;
    v10 = [(MNAudioHardwareEngine *)self sessionAccess];
    v11 = ([v10 promptStyle] >> 16);
    v12 = [(MNAudioHardwareEngine *)self sessionAccess];
    v13 = ([v12 promptStyle] >> 8);
    v14 = [(MNAudioHardwareEngine *)self sessionAccess];
    v15 = [v14 promptStyle];
    *buf = 67110912;
    *v26 = BYTE3(v6);
    *&v26[4] = 1024;
    *&v26[6] = BYTE2(v6);
    v27 = 1024;
    v28 = BYTE1(v6);
    v29 = 1024;
    v30 = v6;
    v31 = 1024;
    v32 = v9;
    v33 = 1024;
    v34 = v11;
    v35 = 1024;
    v36 = v13;
    v37 = 1024;
    v38 = v15;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_INFO, "ⓦ Processing: Using a prompt style of '%c%c%c%c' - audio session's prompt style: '%c%c%c%c'", buf, 0x32u);
  }

  self->_currentUtteranceGuidanceLevel = 0;
  if (self->_chimeBeforeInstruction)
  {
    if (([v4 shortPrompt] & 0x10) != 0)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    v17 = [(MNAudioHardwareEngine *)self sfxController];
    [v17 playSound:v16 andReport:0];
  }

  if (v6 == 1852992876)
  {
    v18 = [v4 isPrivate] ^ 1;
    v19 = [(MNAudioHardwareEngine *)self speechController];
    v20 = [v4 utterance];
    [v19 speak:v20 withDisclosure:v18 andReport:0];

    self->_currentUtteranceGuidanceLevel = [v4 guidanceLevel];
  }

  else
  {
    if ([v4 hasSoundEffect])
    {
      if (([v4 shortPrompt] & 0x10) != 0)
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

    v22 = [(MNAudioHardwareEngine *)self sfxController];
    [v22 playSound:v21 andReport:0];
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

    v5 = [(MNAudioSystemEventQueue *)self->_queue dequeue];
    v6 = [v5 utterance];
    v7 = [v6 length];

    if (v7)
    {
      v8 = [(MNAudioHardwareEngine *)self _speechMuted];
      v9 = v37;
      if (!v8)
      {
        v10 = [v5 guidanceLevel];
        v9 = v34;
        if (v3 >= v10)
        {
          goto LABEL_8;
        }
      }

      [*(*v9 + 40) addObject:v5];
    }

    v5 = 0;
LABEL_8:
    if (v5)
    {
      goto LABEL_11;
    }
  }

  v5 = 0;
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

    v16 = [(MNAudioHardwareEngine *)self sessionAccess];
    [v16 deactivate];
    goto LABEL_30;
  }

  if (([v5 shortPrompt] & 0x40) != 0)
  {
    goto LABEL_26;
  }

  v11 = [(MNAudioHardwareEngine *)self sessionAccess];
  v12 = [v11 promptStyle];

  if (v12 != 1936224884)
  {
    if (v12 == 1852796517)
    {
      v13 = [v5 handler];

      if (v13)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __42__MNAudioHardwareEngine__processNextEvent__block_invoke_68;
        v29[3] = &unk_1E8430ED8;
        v30 = v5;
        v14 = MEMORY[0x1E69E96A0];
        dispatch_async(MEMORY[0x1E69E96A0], v29);
      }

      [(MNAudioHardwareEngine *)self _processNextEvent];
      goto LABEL_31;
    }

LABEL_26:
    v20 = [(MNAudioHardwareEngine *)self sessionAccess];
    v21 = [v20 state];

    if (v21)
    {
      v22 = [(MNAudioHardwareEngine *)self sessionAccess];
      v23 = [v22 state];

      if (v23 == 2)
      {
        [(MNAudioHardwareEngine *)self _process:v5];
      }

      goto LABEL_31;
    }

    objc_storeStrong(&self->_pendingEvent, v5);
    v16 = [(MNAudioHardwareEngine *)self sessionAccess];
    [v16 activate];
LABEL_30:

    goto LABEL_31;
  }

  v17 = [v5 shortPrompt] & 0xF;
  if (v17 > 3 || v17 == 2)
  {
    goto LABEL_26;
  }

  v18 = [v5 handler];

  if (v18)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __42__MNAudioHardwareEngine__processNextEvent__block_invoke_2;
    v27 = &unk_1E8430ED8;
    v28 = v5;
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

- (double)durationOf:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(MNAudioHardwareEngine *)self speechController];
    [v5 durationOf:v4];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (BOOL)vibrateForShortPrompt:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3 & 0xF;
  v4 = v3 - 3;
  if (v3 - 3 > 2)
  {
    v5 = GetAudioLogForMNAudioHardwareEngineCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "ⓦ Vibration ignored: short prompt type - %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = [(MNAudioHardwareEngine *)self hapticController];
    [v5 triggerVibration];
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
  v3 = [(MNAudioHardwareEngine *)self sfxController];
  [v3 stop];

  v4 = [(MNAudioHardwareEngine *)self hapticController];
  [v4 stopVibrating];
}

- (void)forceStop
{
  [(MNAudioHardwareEngine *)self clearAllEvents];
  v3 = [(MNAudioHardwareEngine *)self sfxController];
  [v3 stop];

  v4 = [(MNAudioHardwareEngine *)self hapticController];
  [v4 stopVibrating];

  v5 = [(MNAudioHardwareEngine *)self sessionAccess];
  [v5 deactivateWithForce:1];
}

- (void)requestSpeech:(id)a3 guidanceLevel:(unint64_t)a4 shortPromptType:(unint64_t)a5 completionHandler:(id)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  if ([v10 length])
  {
    v12 = [[MNAudioSystemEvent alloc] initWithUtterance:v10 andShortPrompt:a5 andVoiceGuidanceLevel:a4 andCompletion:v11];
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

- (void)cache:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315395;
    v10 = "[MNAudioHardwareEngine cache:]";
    v11 = 2113;
    v12 = v4;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEBUG, "%s : '%{private}@'", &v9, 0x16u);
  }

  if ([v4 length])
  {
    v6 = [v4 _navigation_isPrivate] ^ 1;
    v7 = [(MNAudioHardwareEngine *)self speechController];
    [v7 cache:v4 withDisclosure:v6 andReport:0];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)unregisterObserver:(id)a3
{
  [(GEOObserverHashTable *)self->_observers unregisterObserver:a3];
  if (([(GEOObserverHashTable *)self->_observers hasObservers]& 1) == 0)
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (void)registerObserver:(id)a3
{
  v9 = a3;
  if ([v9 conformsToProtocol:&unk_1F4F02810])
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

    [(GEOObserverHashTable *)observers registerObserver:v9];
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
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = MNAudioHardwareEngine;
  [(MNAudioHardwareEngine *)&v5 dealloc];
}

- (MNAudioHardwareEngine)initWithAudioSystemOptions:(id)a3 voiceLanguage:(id)a4 transportType:(int)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9 || ![v10 length])
  {
    goto LABEL_11;
  }

  v12 = 0;
  if (a5 > 3 || a5 == 1)
  {
    goto LABEL_15;
  }

  v33.receiver = self;
  v33.super_class = MNAudioHardwareEngine;
  self = [(MNAudioHardwareEngine *)&v33 init];
  if (!self)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_15;
  }

  v13 = [v11 copy];
  voiceLanguage = self->_voiceLanguage;
  self->_voiceLanguage = v13;

  self->_transportType = a5;
  objc_storeStrong(&self->_options, a3);
  v15 = GetAudioLogForMNAudioHardwareEngineCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    options = self->_options;
    *buf = 138412290;
    v35 = options;
    _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_INFO, "ⓜ Setting audio system options : %@", buf, 0xCu);
  }

  v17 = [(MNAudioSystemOptions *)self->_options useHFP];
  v18 = [(MNAudioHardwareEngine *)self pathwayAccess];
  [v18 setEnableHFPUse:v17];

  v19 = [(MNAudioHardwareEngine *)self pathwayAccess];
  [v19 setWantsVolumeControl:1];

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
    v35 = v21;
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
  v29 = [MEMORY[0x1E696AD88] defaultCenter];
  [v29 addObserver:self selector:sel__mediaSessionServicesWereLost_ name:*MEMORY[0x1E698D5B0] object:0];
  [v29 addObserver:self selector:sel__mediaSessionServicesWereReset_ name:*MEMORY[0x1E698D5C0] object:0];
  self = self;

  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);
  v12 = self;
LABEL_15:

  v30 = *MEMORY[0x1E69E9840];
  return v12;
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