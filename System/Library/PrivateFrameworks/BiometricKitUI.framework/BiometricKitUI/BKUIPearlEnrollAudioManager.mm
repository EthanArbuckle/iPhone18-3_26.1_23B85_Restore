@interface BKUIPearlEnrollAudioManager
- (BKUIPearlAudioStateDelegate)stateDelegate;
- (id)createEngine;
- (id)hapticEventWithEventType:(unint64_t)type withDelay:(double)delay;
- (void)cleanupHaptics;
- (void)cleanupHapticsAndSound;
- (void)cleanupSound;
- (void)dealloc;
- (void)fadeCurrentSound:(double)sound completion:(id)completion;
- (void)playHaptic:(unint64_t)haptic withDelay:(double)delay;
- (void)playHapticWithEvents:(id)events;
- (void)setUpHaptics;
- (void)setupSound;
- (void)triggerSoundHapticForTransitionToSubstate:(int)substate fromSubstate:(int)fromSubstate;
@end

@implementation BKUIPearlEnrollAudioManager

- (void)cleanupHapticsAndSound
{
  [(BKUIPearlEnrollAudioManager *)self cleanupSound];

  [(BKUIPearlEnrollAudioManager *)self cleanupHaptics];
}

- (void)setupSound
{
  acquireCachedAudioSession = [(BKUIPearlEnrollControllerPreloadedState *)self->_preloadedState acquireCachedAudioSession];
  audioSession = self->_audioSession;
  self->_audioSession = acquireCachedAudioSession;

  v5 = self->_audioSession;
  if (!v5)
  {
    v6 = objc_alloc_init(BKUIPearlAudioSession);
    v7 = self->_audioSession;
    self->_audioSession = v6;

    v5 = self->_audioSession;
  }

  audioEngine = [(BKUIPearlAudioSession *)v5 audioEngine];
  isRunning = [audioEngine isRunning];

  if (isRunning)
  {
    v10 = self->_audioSession;

    [(BKUIPearlAudioSession *)v10 play];
  }

  else
  {
    v11 = _BKUILoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_241B0A000, v11, OS_LOG_TYPE_DEFAULT, "Unable to play sound, audio engine is not running!", v12, 2u);
    }
  }
}

- (void)cleanupSound
{
  v3 = _BKUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "Cleaning up sound.", buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__BKUIPearlEnrollAudioManager_cleanupSound__block_invoke;
  v4[3] = &unk_278D09978;
  v4[4] = self;
  [(BKUIPearlEnrollAudioManager *)self fadeCurrentSound:v4 completion:10.0];
}

void __43__BKUIPearlEnrollAudioManager_cleanupSound__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) stop];
  v2 = [*(*(a1 + 32) + 8) audioEngine];
  [v2 stop];

  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;

  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Sound stopped!", v6, 2u);
  }
}

- (void)setUpHaptics
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    hapticsEngine = [(BKUIPearlEnrollAudioManager *)self hapticsEngine];

    if (!hapticsEngine)
    {
      createEngine = [(BKUIPearlEnrollAudioManager *)self createEngine];
      [(BKUIPearlEnrollAudioManager *)self setHapticsEngine:createEngine];
    }
  }
}

- (void)cleanupHaptics
{
  v3 = _BKUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "Cleaning up Haptics.", v5, 2u);
  }

  hapticsEngine = [(BKUIPearlEnrollAudioManager *)self hapticsEngine];
  [hapticsEngine stopWithCompletionHandler:&__block_literal_global_11];
}

void __45__BKUIPearlEnrollAudioManager_cleanupHaptics__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _BKUILoggingFacility();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [v2 localizedDescription];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "Unable to clean up Haptics %@.", &v7, 0xCu);
    }
  }

  else if (v4)
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "Haptics stopped!", &v7, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __80__BKUIPearlEnrollAudioManager_triggerSoundHapticForTransitionToState_fromState___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 scanSoundBuffer];
  [v2 scheduleBuffer:v3 atTime:0 options:3 completionHandler:0];

  v4 = *(a1 + 32);

  return [v4 playHaptic:20310 withDelay:0.0];
}

uint64_t __80__BKUIPearlEnrollAudioManager_triggerSoundHapticForTransitionToState_fromState___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) audioEngine];
  v3 = [v2 mainMixerNode];
  LODWORD(v4) = 1.0;
  [v3 setOutputVolume:v4];

  v5 = *(*(a1 + 32) + 8);
  v6 = [v5 endSoundBuffer];
  [v5 scheduleBuffer:v6 atTime:0 options:2 completionHandler:0];

  v7 = *(a1 + 32);

  return [v7 playHaptic:20310 withDelay:135.0];
}

void __80__BKUIPearlEnrollAudioManager_triggerSoundHapticForTransitionToState_fromState___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) stateDelegate];
  v3 = [v2 state];

  if (v3 == 7)
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = [v4 scanSoundBuffer];
    [v4 scheduleBuffer:v5 atTime:0 options:3 completionHandler:0];
  }
}

uint64_t __80__BKUIPearlEnrollAudioManager_triggerSoundHapticForTransitionToState_fromState___block_invoke_4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) audioEngine];
  v3 = [v2 mainMixerNode];
  LODWORD(v4) = 1.0;
  [v3 setOutputVolume:v4];

  v5 = *(*(a1 + 32) + 8);
  v6 = [v5 completeSoundBuffer];
  [v5 scheduleBuffer:v6 atTime:0 options:2 completionHandler:0];

  v7 = *(a1 + 32);

  return [v7 playHaptic:20310 withDelay:131.0];
}

- (void)triggerSoundHapticForTransitionToSubstate:(int)substate fromSubstate:(int)fromSubstate
{
  if (fromSubstate)
  {
    if (substate == 11 || !substate)
    {
      stateDelegate = [(BKUIPearlEnrollAudioManager *)self stateDelegate];
      if ([stateDelegate state] == 5)
      {
      }

      else
      {
        stateDelegate2 = [(BKUIPearlEnrollAudioManager *)self stateDelegate];
        state = [stateDelegate2 state];

        if (state != 7)
        {
          return;
        }
      }

      audioSession = self->_audioSession;
      scanSoundBuffer = [(BKUIPearlAudioSession *)audioSession scanSoundBuffer];
      [(BKUIPearlAudioSession *)audioSession scheduleBuffer:scanSoundBuffer atTime:0 options:3 completionHandler:0];

      [(BKUIPearlEnrollAudioManager *)self playHaptic:20310 withDelay:0.0];
    }
  }

  else if (substate <= 9 && ((1 << substate) & 0x396) != 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__BKUIPearlEnrollAudioManager_triggerSoundHapticForTransitionToSubstate_fromSubstate___block_invoke;
    v10[3] = &unk_278D09978;
    v10[4] = self;
    [(BKUIPearlEnrollAudioManager *)self fadeCurrentSound:v10 completion:10.0];
  }
}

void __86__BKUIPearlEnrollAudioManager_triggerSoundHapticForTransitionToSubstate_fromSubstate___block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) audioEngine];
  v3 = [v2 mainMixerNode];
  LODWORD(v4) = 1.0;
  [v3 setOutputVolume:v4];

  v5 = *(*(a1 + 32) + 8);
  v6 = [v5 failSoundBuffer];
  [v5 scheduleBuffer:v6 atTime:0 options:2 completionHandler:0];

  v7 = *(a1 + 32);
  v8 = [v7 hapticEventWithEventType:26454 withDelay:12.0];
  v9 = [*(a1 + 32) hapticEventWithEventType:20310 withDelay:{134.0, v8}];
  v13[1] = v9;
  v10 = [*(a1 + 32) hapticEventWithEventType:20311 withDelay:239.0];
  v13[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  [v7 playHapticWithEvents:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)playHaptic:(unint64_t)haptic withDelay:(double)delay
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = [(BKUIPearlEnrollAudioManager *)self hapticEventWithEventType:haptic withDelay:delay];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(BKUIPearlEnrollAudioManager *)self playHapticWithEvents:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)hapticEventWithEventType:(unint64_t)type withDelay:(double)delay
{
  v29 = *MEMORY[0x277D85DE8];
  hapticsEngine = [(BKUIPearlEnrollAudioManager *)self hapticsEngine];

  if (!hapticsEngine)
  {
    createEngine = [(BKUIPearlEnrollAudioManager *)self createEngine];
    [(BKUIPearlEnrollAudioManager *)self setHapticsEngine:createEngine];
  }

  v9 = 0.598999977;
  if (type > 20310)
  {
    switch(type)
    {
      case 0x4F57uLL:
        goto LABEL_12;
      case 0x6756uLL:
        v9 = 1.0;
        break;
      case 0x6757uLL:
        break;
      default:
        goto LABEL_11;
    }

    v10 = 0.779999971;
  }

  else
  {
    switch(type)
    {
      case 0x2B57uLL:
        v10 = 0.0500000007;
        break;
      case 0x4357uLL:
        v10 = 0.319999993;
        break;
      case 0x4F56uLL:
        v9 = 1.0;
LABEL_12:
        v10 = 0.409999996;
        break;
      default:
LABEL_11:
        [BKUIPearlEnrollAudioManager hapticEventWithEventType:withDelay:];
    }
  }

  v11 = _BKUILoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v26 = v9;
    v27 = 2048;
    v28 = v10;
    _os_log_impl(&dword_241B0A000, v11, OS_LOG_TYPE_DEFAULT, "Created Haptic event with intensity %f sharpness %f", buf, 0x16u);
  }

  v12 = objc_alloc(MEMORY[0x277CBF6C0]);
  *&v13 = v9;
  v14 = [v12 initWithParameterID:*MEMORY[0x277CBF638] value:v13];
  v15 = objc_alloc(MEMORY[0x277CBF6C0]);
  *&v16 = v10;
  v17 = [v15 initWithParameterID:*MEMORY[0x277CBF640] value:v16];
  v18 = objc_alloc(MEMORY[0x277CBF6B8]);
  v19 = *MEMORY[0x277CBF650];
  v24[0] = v14;
  v24[1] = v17;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v21 = [v18 initWithEventType:v19 parameters:v20 relativeTime:delay / 1000.0];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)playHapticWithEvents:(id)events
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBF6D0];
  eventsCopy = events;
  v6 = [v4 alloc];
  v21 = 0;
  v7 = [v6 initWithEvents:eventsCopy parameters:MEMORY[0x277CBEBF8] error:&v21];

  v8 = v21;
  if (!v8)
  {
    hapticsEngine = [(BKUIPearlEnrollAudioManager *)self hapticsEngine];
    v20 = 0;
    [hapticsEngine startAndReturnError:&v20];
    v9 = v20;

    if (v9)
    {
      v11 = _BKUILoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v9;
        _os_log_impl(&dword_241B0A000, v11, OS_LOG_TYPE_DEFAULT, "Unable to start Haptic Engine %@", buf, 0xCu);
      }

      goto LABEL_15;
    }

    hapticsEngine2 = [(BKUIPearlEnrollAudioManager *)self hapticsEngine];
    v19 = 0;
    v11 = [hapticsEngine2 createPlayerWithPattern:v7 error:&v19];
    v13 = v19;

    if (v13)
    {
      v14 = _BKUILoggingFacility();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v13;
        v15 = "Unable to create CHHapticPatternPlayer error: %@";
LABEL_13:
        _os_log_impl(&dword_241B0A000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
      }
    }

    else
    {
      v18 = 0;
      [v11 startAtTime:&v18 error:0.0];
      v16 = v18;
      if (!v16)
      {
LABEL_15:

        goto LABEL_16;
      }

      v13 = v16;
      v14 = _BKUILoggingFacility();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v13;
        v15 = "Unable to create start HapticsPlayer error: %@";
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

  v9 = _BKUILoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v8;
    _os_log_impl(&dword_241B0A000, v9, OS_LOG_TYPE_DEFAULT, "Unable to create CHHapticPattern error: %@", buf, 0xCu);
  }

LABEL_16:

  v17 = *MEMORY[0x277D85DE8];
}

- (id)createEngine
{
  v13 = *MEMORY[0x277D85DE8];
  capabilitiesForHardware = [MEMORY[0x277CBF6B0] capabilitiesForHardware];
  if ([capabilitiesForHardware supportsHaptics] & 1) != 0 || (objc_msgSend(capabilitiesForHardware, "supportsAudio"))
  {
    v10 = 0;
    v3 = [objc_alloc(MEMORY[0x277CBF6B0]) initAndReturnError:&v10];
    v4 = v10;
    [v3 setMuteHapticsWhileRecordingAudio:0];
    [v3 setAutoShutdownEnabled:1];
    v5 = _BKUILoggingFacility();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (!v3 || v4)
    {
      if (v6)
      {
        *buf = 138412290;
        v12 = v4;
        _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Could not create CHHapticEngine: %@", buf, 0xCu);
      }

      v7 = 0;
    }

    else
    {
      if (v6)
      {
        *buf = 138412290;
        v12 = v3;
        _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Created CHHapticEngine %@", buf, 0xCu);
      }

      v7 = v3;
    }
  }

  else
  {
    v4 = _BKUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "Haptics and audio not supported", buf, 2u);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)fadeCurrentSound:(double)sound completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v7 = dispatch_get_global_queue(2, 0);
  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v7);

  dispatch_source_set_timer(v8, 0, 0xF4240uLL, 0);
  v9 = CACurrentMediaTime();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__BKUIPearlEnrollAudioManager_fadeCurrentSound_completion___block_invoke;
  v12[3] = &unk_278D0AA48;
  *&v15[1] = v9 * 1000.0;
  objc_copyWeak(v15, &location);
  v15[2] = *&sound;
  v13 = v8;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = v8;
  dispatch_source_set_event_handler(v11, v12);
  dispatch_resume(v11);

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void __59__BKUIPearlEnrollAudioManager_fadeCurrentSound_completion___block_invoke(uint64_t a1)
{
  v2 = -(*(a1 + 56) - CACurrentMediaTime() * 1000.0);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = fmax(fmin(v2 / *(a1 + 64), 1.0), 0.0);
  v9 = WeakRetained;
  v5 = [WeakRetained[1] audioEngine];
  v6 = [v5 mainMixerNode];
  *&v2 = 1.0 - v4;
  LODWORD(v7) = LODWORD(v2);
  [v6 setOutputVolume:v7];

  if (v4 >= 1.0)
  {
    dispatch_source_cancel(*(a1 + 32));
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))();
    }
  }
}

- (void)dealloc
{
  [(BKUIPearlEnrollAudioManager *)self cleanupHaptics];
  [(BKUIPearlAudioSession *)self->_audioSession stop];
  audioEngine = [(BKUIPearlAudioSession *)self->_audioSession audioEngine];
  [audioEngine stop];

  audioEngine2 = [(BKUIPearlAudioSession *)self->_audioSession audioEngine];
  [audioEngine2 reset];

  v5.receiver = self;
  v5.super_class = BKUIPearlEnrollAudioManager;
  [(BKUIPearlEnrollAudioManager *)&v5 dealloc];
}

- (BKUIPearlAudioStateDelegate)stateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stateDelegate);

  return WeakRetained;
}

@end