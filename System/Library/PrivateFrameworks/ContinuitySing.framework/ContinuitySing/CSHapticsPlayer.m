@interface CSHapticsPlayer
- (CSHapticsPlayer)init;
- (float)_hapticIntensityValueForIntensity:(unint64_t)a3;
- (float)_reverbHapticSharpnessValueForIntensity:(unint64_t)a3;
- (void)_onEngineReset;
- (void)_onEngineStopsWithReason:(int64_t)a3;
- (void)_playButtonFeedbackWithIntensity:(float)a3 andSharpness:(float)a4;
- (void)_setupHapticEngine;
- (void)_startHapticsEngineWithCompletion:(id)a3;
- (void)playButtonFeedback;
- (void)playReverbButtonFeedbackWithIntensity:(unint64_t)a3;
- (void)playVocalButtonFeedbackWithIntensity:(unint64_t)a3;
@end

@implementation CSHapticsPlayer

- (CSHapticsPlayer)init
{
  v5.receiver = self;
  v5.super_class = CSHapticsPlayer;
  v2 = [(CSHapticsPlayer *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBF6B0] capabilitiesForHardware];
    v2->_supportsHaptics = [v3 supportsHaptics];

    [(CSHapticsPlayer *)v2 _setupHapticEngine];
  }

  return v2;
}

- (void)playButtonFeedback
{
  if ([(CSHapticsPlayer *)self supportsHaptics])
  {
    LODWORD(v3) = 1.0;
    LODWORD(v4) = 1.0;

    [(CSHapticsPlayer *)self _playButtonFeedbackWithIntensity:v3 andSharpness:v4];
  }

  else
  {
    v5 = ContinuitySingLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(CSHapticsPlayer *)v5 playButtonFeedback:v6];
    }
  }
}

- (void)playVocalButtonFeedbackWithIntensity:(unint64_t)a3
{
  if ([(CSHapticsPlayer *)self supportsHaptics])
  {
    [(CSHapticsPlayer *)self _hapticIntensityValueForIntensity:a3];

    [CSHapticsPlayer _playButtonFeedbackWithIntensity:"_playButtonFeedbackWithIntensity:andSharpness:" andSharpness:?];
  }

  else
  {
    v5 = ContinuitySingLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(CSHapticsPlayer *)v5 playVocalButtonFeedbackWithIntensity:v6, v7, v8, v9, v10, v11, v12];
    }
  }
}

- (void)playReverbButtonFeedbackWithIntensity:(unint64_t)a3
{
  if ([(CSHapticsPlayer *)self supportsHaptics])
  {
    [(CSHapticsPlayer *)self _hapticIntensityValueForIntensity:a3];
    v6 = v5;
    [(CSHapticsPlayer *)self _reverbHapticSharpnessValueForIntensity:a3];
    LODWORD(v7) = LODWORD(v8);
    LODWORD(v8) = v6;

    [(CSHapticsPlayer *)self _playButtonFeedbackWithIntensity:v8 andSharpness:v7];
  }

  else
  {
    v9 = ContinuitySingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(CSHapticsPlayer *)v9 playReverbButtonFeedbackWithIntensity:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

- (void)_setupHapticEngine
{
  if ([(CSHapticsPlayer *)self supportsHaptics])
  {
    v25 = 0;
    v3 = [objc_alloc(MEMORY[0x277CBF6B0]) initWithAudioSession:0 sessionIsShared:0 options:0 error:&v25];
    v4 = v25;
    engine = self->_engine;
    self->_engine = v3;

    if (v4)
    {
      v6 = ContinuitySingLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CSHapticsPlayer _setupHapticEngine];
      }

      self->_state = 3;
    }

    else
    {
      objc_initWeak(&location, self);
      v15 = self->_engine;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __37__CSHapticsPlayer__setupHapticEngine__block_invoke;
      v22[3] = &unk_278E0ABD0;
      objc_copyWeak(&v23, &location);
      [(CHHapticEngine *)v15 setResetHandler:v22];
      v16 = self->_engine;
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __37__CSHapticsPlayer__setupHapticEngine__block_invoke_2;
      v20 = &unk_278E0ABF8;
      objc_copyWeak(&v21, &location);
      [(CHHapticEngine *)v16 setStoppedHandler:&v17];
      [(CHHapticEngine *)self->_engine setPlaysHapticsOnly:1, v17, v18, v19, v20];
      [(CHHapticEngine *)self->_engine setMuteHapticsWhileRecordingAudio:0];
      self->_state = 0;
      objc_destroyWeak(&v21);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v7 = ContinuitySingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(CSHapticsPlayer *)v7 _setupHapticEngine:v8];
    }

    self->_state = 3;
  }
}

void __37__CSHapticsPlayer__setupHapticEngine__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onEngineReset];
}

void __37__CSHapticsPlayer__setupHapticEngine__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onEngineStopsWithReason:a2];
}

- (void)_startHapticsEngineWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  [(CHHapticEngine *)self->_engine setPlaysHapticsOnly:1];
  engine = self->_engine;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__CSHapticsPlayer__startHapticsEngineWithCompletion___block_invoke;
  v7[3] = &unk_278E0AC20;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(CHHapticEngine *)engine startWithCompletionHandler:v7];
  self->_state = 1;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __53__CSHapticsPlayer__startHapticsEngineWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained state] == 1)
    {
      v6 = ContinuitySingLog();
      v7 = v6;
      if (v3)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __53__CSHapticsPlayer__startHapticsEngineWithCompletion___block_invoke_cold_2();
        }

        [v5 setState:0];
      }

      else
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315138;
          v11 = "[CSHapticsPlayer _startHapticsEngineWithCompletion:]_block_invoke";
          _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: Successfully started the CHHapticEngine.", &v10, 0xCu);
        }

        [v5 setState:2];
        v9 = *(a1 + 32);
        if (v9)
        {
          (*(v9 + 16))();
        }
      }
    }

    else
    {
      v8 = ContinuitySingLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __53__CSHapticsPlayer__startHapticsEngineWithCompletion___block_invoke_cold_1(v5);
      }
    }
  }
}

- (void)_onEngineReset
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSHapticsPlayer _onEngineReset]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: CHHapticEngine reset", &v4, 0xCu);
  }

  if (self->_state - 1 <= 1)
  {
    self->_state = 0;
  }
}

- (void)_onEngineStopsWithReason:(int64_t)a3
{
  v5 = ContinuitySingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[CSHapticsPlayer _onEngineStopsWithReason:]";
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: HapticsEngine stopped! Reason: %ld", &v9, 0x16u);
  }

  state = self->_state;
  p_state = &self->_state;
  if (state != 2)
  {
    v8 = ContinuitySingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CSHapticsPlayer _onEngineStopsWithReason:?];
    }
  }

  *p_state = 0;
}

- (void)_playButtonFeedbackWithIntensity:(float)a3 andSharpness:(float)a4
{
  v7 = ContinuitySingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v40 = "[CSHapticsPlayer _playButtonFeedbackWithIntensity:andSharpness:]";
    _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: Trying to play haptics.", buf, 0xCu);
  }

  v8 = objc_alloc(MEMORY[0x277CBF6C0]);
  *&v9 = a3;
  v10 = [v8 initWithParameterID:*MEMORY[0x277CBF638] value:v9];
  v38[0] = v10;
  v11 = objc_alloc(MEMORY[0x277CBF6C0]);
  *&v12 = a4;
  v13 = [v11 initWithParameterID:*MEMORY[0x277CBF640] value:v12];
  v38[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];

  v15 = objc_alloc(MEMORY[0x277CBF6B8]);
  v16 = [v15 initWithEventType:*MEMORY[0x277CBF650] parameters:v14 relativeTime:0.0 duration:1.0];
  v17 = objc_alloc(MEMORY[0x277CBF6D0]);
  v37 = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  v36 = 0;
  v19 = [v17 initWithEvents:v18 parameters:MEMORY[0x277CBEBF8] error:&v36];
  v20 = v36;

  if (v20)
  {
    v21 = ContinuitySingLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CSHapticsPlayer _playButtonFeedbackWithIntensity:andSharpness:];
    }

    goto LABEL_30;
  }

  engine = self->_engine;
  v35 = 0;
  v23 = [(CHHapticEngine *)engine createPlayerWithPattern:v19 error:&v35];
  v21 = v35;
  player = self->_player;
  self->_player = v23;

  if (!v21)
  {
    objc_initWeak(&location, self);
    state = self->_state;
    if (state > 1)
    {
      if (state == 2)
      {
        [(CHHapticEngine *)self->_engine notifyWhenPlayersFinished:&__block_literal_global_20];
        v29 = self->_player;
        v31 = 0;
        [(CHHapticPatternPlayer *)v29 startAtTime:&v31 error:0.0];
        v27 = v31;
        if (v27)
        {
          v30 = ContinuitySingLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [CSHapticsPlayer _playButtonFeedbackWithIntensity:andSharpness:];
          }
        }

        else
        {
          v30 = ContinuitySingLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v40 = "[CSHapticsPlayer _playButtonFeedbackWithIntensity:andSharpness:]";
            _os_log_impl(&dword_2441FB000, v30, OS_LOG_TYPE_DEFAULT, "%s: Haptics player starting", buf, 0xCu);
          }
        }

        goto LABEL_28;
      }

      if (state == 3)
      {
        v27 = ContinuitySingLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [CSHapticsPlayer _playButtonFeedbackWithIntensity:v27 andSharpness:?];
        }

        goto LABEL_28;
      }
    }

    else
    {
      if (!state)
      {
        v28 = ContinuitySingLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v40 = "[CSHapticsPlayer _playButtonFeedbackWithIntensity:andSharpness:]";
          _os_log_impl(&dword_2441FB000, v28, OS_LOG_TYPE_DEFAULT, "%s: Restarting the haptics engine.", buf, 0xCu);
        }

        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __65__CSHapticsPlayer__playButtonFeedbackWithIntensity_andSharpness___block_invoke;
        v32[3] = &unk_278E0ABD0;
        objc_copyWeak(&v33, &location);
        [(CSHapticsPlayer *)self _startHapticsEngineWithCompletion:v32];
        objc_destroyWeak(&v33);
        goto LABEL_29;
      }

      if (state == 1)
      {
        v27 = ContinuitySingLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [CSHapticsPlayer _playButtonFeedbackWithIntensity:v27 andSharpness:?];
        }

LABEL_28:
      }
    }

LABEL_29:
    objc_destroyWeak(&location);
    goto LABEL_30;
  }

  v25 = ContinuitySingLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [CSHapticsPlayer _playButtonFeedbackWithIntensity:andSharpness:];
  }

LABEL_30:
}

void __65__CSHapticsPlayer__playButtonFeedbackWithIntensity_andSharpness___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] notifyWhenPlayersFinished:&__block_literal_global];
    v3 = [v2 player];
    v9 = 0;
    [v3 startAtTime:&v9 error:0.0];
    v4 = v9;

    v5 = ContinuitySingLog();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __65__CSHapticsPlayer__playButtonFeedbackWithIntensity_andSharpness___block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSHapticsPlayer _playButtonFeedbackWithIntensity:andSharpness:]_block_invoke";
      _os_log_impl(&dword_2441FB000, v6, OS_LOG_TYPE_DEFAULT, "%s: Haptics player starting", &v7, 0xCu);
    }
  }
}

- (float)_hapticIntensityValueForIntensity:(unint64_t)a3
{
  result = 0.5;
  if (a3 == 1)
  {
    result = 0.75;
  }

  if (a3 == 2)
  {
    return 1.0;
  }

  return result;
}

- (float)_reverbHapticSharpnessValueForIntensity:(unint64_t)a3
{
  result = 0.3;
  if (a3 != 1)
  {
    result = 1.0;
  }

  if (a3 == 2)
  {
    return 0.1;
  }

  return result;
}

void __53__CSHapticsPlayer__startHapticsEngineWithCompletion___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 16) - 1;
  if (v1 <= 2)
  {
    v2 = off_278E0AC60[v1];
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v3, v4, "%s: Unexpected state: %@", v5, v6, v7, v8, 2u);
}

- (void)_onEngineStopsWithReason:(void *)a1 .cold.1(void *a1)
{
  v1 = *a1 - 1;
  if (v1 <= 2)
  {
    v2 = off_278E0AC60[v1];
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v3, v4, "%s: Unexpected state: %@", v5, v6, v7, v8, 2u);
}

- (void)_playButtonFeedbackWithIntensity:(os_log_t)log andSharpness:.cold.3(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CSHapticsPlayer _playButtonFeedbackWithIntensity:andSharpness:]";
  _os_log_error_impl(&dword_2441FB000, log, OS_LOG_TYPE_ERROR, "%s: Trying to play haptics but we haptic engine failed to create.", &v1, 0xCu);
}

- (void)_playButtonFeedbackWithIntensity:(os_log_t)log andSharpness:.cold.5(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CSHapticsPlayer _playButtonFeedbackWithIntensity:andSharpness:]";
  _os_log_error_impl(&dword_2441FB000, log, OS_LOG_TYPE_ERROR, "%s: Trying to play haptics but we haptics engine is starting. Nothing will happen.", &v1, 0xCu);
}

@end