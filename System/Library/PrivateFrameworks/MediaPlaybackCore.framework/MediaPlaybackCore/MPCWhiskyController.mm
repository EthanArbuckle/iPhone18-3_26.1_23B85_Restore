@interface MPCWhiskyController
- (BOOL)shouldAttachAudioTapToItem:(id)a3;
- (MPCWhiskyController)initWithPlaybackEngine:(id)a3;
- (MPCWhiskyController)initWithPlaybackEngine:(id)a3 modelProvider:(id)a4 processor:(id)a5;
- (NSString)description;
- (NSString)modelID;
- (double)renderingTimeLimit;
- (float)_processorLevelForVocalLevel:(float)a3;
- (float)_vocalLevelForProcessorLevel:(float)a3;
- (id)blockingPolicy;
- (unsigned)creationFlags;
- (void)_emitStatisticsEvent;
- (void)_loadModel;
- (void)_tearDownTapData;
- (void)_updateShutdownSequence;
- (void)_updateState:(int64_t)a3;
- (void)dealloc;
- (void)engine:(id)a3 didChangeToState:(unint64_t)a4;
- (void)engine:(id)a3 willChangeToItem:(id)a4 fromItem:(id)a5;
- (void)engineDidReceiveMediaServicesPurge:(id)a3;
- (void)engineDidResetMediaServices:(id)a3;
- (void)finalizeTap:(opaqueMTAudioProcessingTap *)a3;
- (void)isEnabled;
- (void)isVocalAttenuationAvailable;
- (void)prepareForProcessing;
- (void)prepareTap:(opaqueMTAudioProcessingTap *)a3 maxFrames:(int64_t)a4 processingFormat:(const AudioStreamBasicDescription *)a5;
- (void)processTap:(opaqueMTAudioProcessingTap *)a3 sampleIndex:(int64_t)a4 numberFrames:(int64_t)a5 flags:(unsigned int)a6 audioBufferList:(AudioBufferList *)a7 numberFramesOut:(int64_t *)a8 flagsOut:(unsigned int *)a9;
- (void)setEnabled:(void *)a1;
- (void)unprepareTap:(opaqueMTAudioProcessingTap *)a3;
- (void)vocalAttenuationPolicyControllerDidChange:(id)a3;
@end

@implementation MPCWhiskyController

- (void)_loadModel
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v7 = self;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - Loading model", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_setupQueue);
  [(MPCWhiskyController *)self _updateState:1];
  v4 = [(MPCWhiskyController *)self modelProvider];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__MPCWhiskyController__loadModel__block_invoke;
  v5[3] = &unk_1E82318F0;
  v5[4] = self;
  [v4 prepareWithCompletion:v5];
}

- (NSString)description
{
  v2 = self;
  if (!self)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    goto LABEL_59;
  }

  state = self->_state;
  if (state <= 8)
  {
    if (((1 << state) & 0x70) != 0)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      v11 = *(v2 + 72);
      if (v11 >= 9)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", *(v2 + 72)];
      }

      else
      {
        v8 = off_1E8231910[v11];
      }

      v12 = [v2 modelProvider];
      v19 = [v12 state];
      if (v19 >= 4)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", v19];
      }

      else
      {
        v14 = off_1E8231958[v19];
      }

      v15 = [v2 processor];
      v20 = [v15 state];
      if (v20 >= 6)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", v20];
      }

      else
      {
        v17 = off_1E8231978[v20];
      }

      v18 = [*(v2 + 96) modelName];
      [v9 stringWithFormat:@"<%p - %@> - %@ [M:%@ P:%@] - model: %@ - level: %3.2f", v2, v10, v8, v14, v17, v18, *(v2 + 40)];
      goto LABEL_26;
    }

    if (((1 << state) & 0x8C) != 0)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = objc_opt_class();
      v6 = *(v2 + 72);
      v7 = v6 >= 9;
LABEL_6:
      if (v7)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", v6];
      }

      else
      {
        v8 = off_1E8231910[v6];
      }

      v12 = [v2 modelProvider];
      v13 = [v12 state];
      if (v13 >= 4)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", v13];
      }

      else
      {
        v14 = off_1E8231958[v13];
      }

      v15 = [v2 processor];
      v16 = [v15 state];
      if (v16 >= 6)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", v16];
      }

      else
      {
        v17 = off_1E8231978[v16];
      }

      v18 = [*(v2 + 96) modelName];
      [v4 stringWithFormat:@"<%p - %@> - %@ [M:%@ P:%@] - model: %@", v2, v5, v8, v14, v17, v18, v29];
      v2 = LABEL_26:;

LABEL_68:
      goto LABEL_69;
    }

    if (state == 8)
    {
      v21 = [(MPCWhiskyController *)self modelProvider];
      v22 = [v21 model];

      v4 = MEMORY[0x1E696AEC0];
      v5 = objc_opt_class();
      v6 = *(v2 + 72);
      v7 = v6 >= 9;
      if (v22)
      {
        goto LABEL_6;
      }

      if (v6 >= 9)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", *(v2 + 72)];
      }

      else
      {
        v8 = off_1E8231910[v6];
      }

      v12 = [v2 modelProvider];
      v24 = [v12 state];
      if (v24 >= 4)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", v24];
      }

      else
      {
        v14 = off_1E8231958[v24];
      }

      v15 = [v2 processor];
      v25 = [v15 state];
      if (v25 >= 6)
      {
        v26 = MEMORY[0x1E696AEC0];
LABEL_66:
        v17 = [v26 stringWithFormat:@"undefined/%ld", v25];
        goto LABEL_67;
      }

      goto LABEL_64;
    }
  }

  if (state < 2)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v23 = *(v2 + 72);
    if (v23 > 3)
    {
      if (v23 <= 5)
      {
        if (v23 == 4)
        {
          v8 = @"ready";
        }

        else
        {
          v8 = @"enabled";
        }

        goto LABEL_60;
      }

      switch(v23)
      {
        case 6:
          v8 = @"disabled";
          goto LABEL_60;
        case 7:
          v8 = @"unloading";
          goto LABEL_60;
        case 8:
          v8 = @"unavailable";
          goto LABEL_60;
      }

      goto LABEL_51;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v8 = @"model ready";
      }

      else
      {
        v8 = @"loading processor";
      }

      goto LABEL_60;
    }

    if (v23)
    {
      if (v23 == 1)
      {
        v8 = @"loading model";
        goto LABEL_60;
      }

LABEL_51:
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", *(v2 + 72)];
      goto LABEL_60;
    }

LABEL_59:
    v8 = @"not loaded";
LABEL_60:
    v12 = [v2 modelProvider];
    v27 = [v12 state];
    if (v27 >= 4)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", v27];
    }

    else
    {
      v14 = off_1E8231958[v27];
    }

    v15 = [v2 processor];
    v25 = [v15 state];
    if (v25 >= 6)
    {
      v26 = MEMORY[0x1E696AEC0];
      goto LABEL_66;
    }

LABEL_64:
    v17 = off_1E8231978[v25];
LABEL_67:
    v2 = [v4 stringWithFormat:@"<%p - %@> - %@ [M:%@ P:%@]", v2, v5, v8, v14, v17];
    goto LABEL_68;
  }

LABEL_69:

  return v2;
}

- (void)isEnabled
{
  if (result)
  {
    v1 = [result processor];
    v2 = [v1 isEnabled];

    return v2;
  }

  return result;
}

void __33__MPCWhiskyController__loadModel__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (a2 == 2)
  {
    v6 = v5;
    v7 = *(a1 + 32);
    if (!v6)
    {
      v8 = 2;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = *(a1 + 32);
  }

  v8 = 8;
LABEL_6:
  [v7 _updateState:v8];
}

- (void)isVocalAttenuationAvailable
{
  if (result)
  {
    v1 = [result processor];
    v2 = [v1 isAvailable];

    return v2;
  }

  return result;
}

- (void)_emitStatisticsEvent
{
  v25[6] = *MEMORY[0x1E69E9840];
  v3 = [(MPCWhiskyController *)self recordingSession];
  v4 = [v3 currentRecorder];
  v5 = [v4 numberOfSamples];

  if (v5)
  {
    v6 = [(MPCWhiskyController *)self recordingSession];
    v7 = [v6 currentRecorder];
    v8 = [v7 dictionaryRepresentation];

    v23 = [(MPCSingleTrackAudioProcessor *)self playbackEngine];
    v9 = [v23 eventStream];
    v24[0] = @"vocal-attenuation-statistics-mean";
    v22 = [v8 objectForKeyedSubscript:@"mean"];
    v25[0] = v22;
    v24[1] = @"vocal-attenuation-statistics-max";
    v21 = [v8 objectForKeyedSubscript:@"max"];
    v25[1] = v21;
    v24[2] = @"vocal-attenuation-statistics-stdev";
    v20 = [v8 objectForKeyedSubscript:@"sigma"];
    v25[2] = v20;
    v24[3] = @"vocal-attenuation-statistics-glitches";
    v10 = [v8 objectForKeyedSubscript:@"glitches"];
    v25[3] = v10;
    v24[4] = @"vocal-attenuation-statistics-samples";
    v11 = MEMORY[0x1E696AD98];
    v12 = [(MPCWhiskyController *)self recordingSession];
    v13 = [v12 currentRecorder];
    v14 = [v11 numberWithInt:{objc_msgSend(v13, "numberOfSamples")}];
    v25[4] = v14;
    v24[5] = @"vocal-attenuation-statistics-thermal";
    v15 = MEMORY[0x1E696AD98];
    v16 = [(MPCWhiskyController *)self recordingSession];
    v17 = [v16 currentRecorder];
    v18 = [v15 numberWithInt:{objc_msgSend(v17, "thermalLevel")}];
    v25[5] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:6];
    [v9 emitEventType:@"vocal-attenuation-statistics" payload:v19];
  }
}

- (void)engineDidReceiveMediaServicesPurge:(id)a3
{
  [(MPCWhiskyController *)self _tearDownTapData];

  [(MPCSingleTrackAudioProcessor *)self recreateAudioTap];
}

- (void)engineDidResetMediaServices:(id)a3
{
  [(MPCWhiskyController *)self _tearDownTapData];

  [(MPCSingleTrackAudioProcessor *)self recreateAudioTap];
}

- (void)engine:(id)a3 willChangeToItem:(id)a4 fromItem:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (v8 && ([v8 isPlaceholder] & 1) == 0)
  {
    v10 = [(MPCWhiskyController *)self processor];
    [v10 resetAudioUnit];

    v11 = [(MPCWhiskyController *)self recordingSession];
    [v11 save];

    [(MPCWhiskyController *)self _emitStatisticsEvent];
  }
}

- (void)engine:(id)a3 didChangeToState:(unint64_t)a4
{
  if (a4 - 2 <= 2)
  {
    v5 = [(MPCWhiskyController *)self recordingSession];
    [v5 save];
  }

  [(MPCWhiskyController *)self _updateShutdownSequence];
}

- (void)vocalAttenuationPolicyControllerDidChange:(id)a3
{
  v4 = a3;
  v5 = [MPCWhiskyControllerDisabledState alloc];
  v6 = [v4 blockingEvaluation];

  v7 = [(MPCWhiskyControllerDisabledState *)v5 initWithPolicyEvaluation:v6];
  disabledState = self->_disabledState;
  self->_disabledState = v7;

  v9 = [(MPCSingleTrackAudioProcessor *)self playbackEngine];
  v10 = self->_disabledState;
  v13 = v9;
  v11 = [v9 eventObserver];
  v12 = v11;
  if (v10)
  {
    [v11 engineDidBlockVocalAttenuation:v13];
  }

  else
  {
    [v11 engineDidUnblockVocalAttenuation:v13];
  }
}

- (void)_updateShutdownSequence
{
  v3 = [(MPCWhiskyController *)self shutdownTimer];

  if (v3)
  {
    v4 = [(MPCWhiskyController *)self shutdownTimer];
    [v4 invalidate];

    [(MPCWhiskyController *)self setShutdownTimer:0];
  }

  if ([(MPCWhiskyController *)self isEnabled])
  {
    v5 = [(MPCSingleTrackAudioProcessor *)self playbackEngine];
    v6 = [v5 player];
    v7 = [v6 state];

    if (v7 <= 6 && ((1 << v7) & 0x43) != 0)
    {
      objc_initWeak(&location, self);
      v8 = MEMORY[0x1E69B14D8];
      v9 = [MEMORY[0x1E69708A8] standardUserDefaults];
      [v9 vocalAttenuationGracePeriodAfterPause];
      v11 = v10;
      v12 = MEMORY[0x1E69E96A0];
      v13 = MEMORY[0x1E69E96A0];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __46__MPCWhiskyController__updateShutdownSequence__block_invoke;
      v18 = &unk_1E8239500;
      objc_copyWeak(&v19, &location);
      v14 = [v8 timerWithInterval:0 repeats:v12 queue:&v15 block:v11];
      [(MPCWhiskyController *)self setShutdownTimer:v14, v15, v16, v17, v18];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }
}

void __46__MPCWhiskyController__updateShutdownSequence__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138543362;
      v4 = WeakRetained;
      _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Disabling Vocal Attenuation [paused for a while]", &v3, 0xCu);
    }

    [(MPCWhiskyController *)WeakRetained setEnabled:?];
  }
}

- (void)setEnabled:(void *)a1
{
  if (a1)
  {
    v4 = [a1 processor];
    v5 = [v4 isAvailable];

    if (v5)
    {
      v6 = [a1 processor];
      [v6 setEnabled:a2];

      v7 = [a1 processor];
      if ([v7 isEnabled])
      {
        v8 = 5;
      }

      else
      {
        v8 = 6;
      }

      [a1 _updateState:v8];

      [a1 _updateShutdownSequence];
    }
  }
}

- (float)_vocalLevelForProcessorLevel:(float)a3
{
  v25 = *MEMORY[0x1E69E9840];
  minVocalLevel = self->_minVocalLevel;
  maxVocalLevel = self->_maxVocalLevel;
  [(MPCVocalAttenuationProcessor *)self->_processor minLevel];
  v8 = 100.0 - v7;
  [(MPCVocalAttenuationProcessor *)self->_processor maxLevel];
  v10 = log10f((100.0 - v9) / 100.0) * 20.0;
  v11 = log10f((100.0 - a3) / v8) * 20.0;
  v12 = minVocalLevel + (((maxVocalLevel - minVocalLevel) * (v11 - v10)) / (0.0 - v10));
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 138544386;
    v16 = self;
    v17 = 2048;
    v18 = a3;
    v19 = 2048;
    v20 = (100.0 - a3);
    v21 = 2048;
    v22 = v11;
    v23 = 2048;
    v24 = v12;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - Mapping p->au->db->ui: %3.2fp -> %3.2fau -> %3.2fdB -> %3.2fui", &v15, 0x34u);
  }

  return v12;
}

- (float)_processorLevelForVocalLevel:(float)a3
{
  v25 = *MEMORY[0x1E69E9840];
  minVocalLevel = self->_minVocalLevel;
  maxVocalLevel = self->_maxVocalLevel;
  [(MPCVocalAttenuationProcessor *)self->_processor minLevel];
  v8 = 100.0 - v7;
  [(MPCVocalAttenuationProcessor *)self->_processor maxLevel];
  v10 = log10f((100.0 - v9) / 100.0);
  v11 = (v10 * 20.0) + (((0.0 - (v10 * 20.0)) / (maxVocalLevel - minVocalLevel)) * (a3 - minVocalLevel));
  v12 = v8 * __exp10f(v11 / 20.0);
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 138544386;
    v16 = self;
    v17 = 2048;
    v18 = a3;
    v19 = 2048;
    v20 = v11;
    v21 = 2048;
    v22 = v12;
    v23 = 2048;
    v24 = (100.0 - v12);
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - Mapping ui->db->au->p: %3.2fui -> %3.2fdB -> %3.2fau -> %3.2fp", &v15, 0x34u);
  }

  return 100.0 - v12;
}

- (void)_tearDownTapData
{
  v2 = [(MPCWhiskyController *)self processor];
  [v2 resetAudioUnit];
}

- (void)_updateState:(int64_t)a3
{
  v35 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state == a3)
  {
    return;
  }

  self->_state = a3;
  if (a3 == 6)
  {
    if (self->_recordingSession)
    {
      v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        if (state >= 9)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", state];
        }

        else
        {
          v20 = off_1E8231910[state];
        }

        v22 = [(MPCRecordingSession *)self->_recordingSession sessionID];
        *buf = 138544130;
        v28 = self;
        v29 = 2114;
        v30 = v20;
        v31 = 2114;
        v32 = @"disabled";
        v33 = 2114;
        v34 = v22;
        _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - State changed: %{public}@ -> %{public}@ - Flushing recording session: %{public}@", buf, 0x2Au);
      }

      [(MPCWhiskyController *)self _emitStatisticsEvent];
      [(MPCRecordingSession *)self->_recordingSession flush];
      recordingSession = self->_recordingSession;
      self->_recordingSession = 0;
      goto LABEL_16;
    }
  }

  else if (a3 == 5)
  {
    v6 = [MPCRecordingSession alloc];
    v7 = [(MPCWhiskyController *)self modelID];
    v8 = [(MPCWhiskyController *)self processor];
    [v8 sampleTime];
    v10 = v9;
    v11 = [(MPCWhiskyController *)self processor];
    [v11 renderingLimit];
    v13 = v12;
    v14 = [MEMORY[0x1E69708A8] standardUserDefaults];
    v15 = -[MPCRecordingSession initWithModelID:samplingTime:renderingLimit:shouldRecordSamples:](v6, "initWithModelID:samplingTime:renderingLimit:shouldRecordSamples:", v7, [v14 shouldRecordVocalAttenuationStatistics], v10, v13);
    v16 = self->_recordingSession;
    self->_recordingSession = v15;

    recordingSession = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(&recordingSession->super, OS_LOG_TYPE_INFO))
    {
      if (state >= 9)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", state];
      }

      else
      {
        v18 = off_1E8231910[state];
      }

      v21 = [(MPCRecordingSession *)self->_recordingSession sessionID];
      *buf = 138544130;
      v28 = self;
      v29 = 2114;
      v30 = v18;
      v31 = 2114;
      v32 = @"enabled";
      v33 = 2114;
      v34 = v21;
      _os_log_impl(&dword_1C5C61000, &recordingSession->super, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - State changed: %{public}@ -> %{public}@ - New recording session: %{public}@", buf, 0x2Au);
    }

LABEL_16:
  }

  v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    if (state >= 9)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", state];
    }

    else
    {
      v24 = off_1E8231910[state];
    }

    v25 = v24;
    if (a3 >= 9)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", a3];
    }

    else
    {
      v26 = off_1E8231910[a3];
    }

    *buf = 138543874;
    v28 = self;
    v29 = 2114;
    v30 = v25;
    v31 = 2114;
    v32 = v26;
    _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - State changed: %{public}@ -> %{public}@", buf, 0x20u);
  }

  msv_dispatch_on_main_queue();
}

void __36__MPCWhiskyController__updateState___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) playbackEngine];
  [v3 setVocalAttenuationEnabled:-[MPCWhiskyController isEnabled](*(a1 + 32))];
  v2 = [v3 eventObserver];
  [v2 engineDidChangeVocalAttenuationState:v3];
}

- (double)renderingTimeLimit
{
  v2 = [(MPCWhiskyController *)self processor];
  [v2 renderingLimit];
  v4 = v3;

  return v4;
}

- (id)blockingPolicy
{
  v2 = [(MPCWhiskyController *)self policyController];
  v3 = [v2 blockingEvaluation];

  return v3;
}

- (NSString)modelID
{
  v2 = [(MPCWhiskyController *)self modelProvider];
  v3 = [v2 modelName];

  return v3;
}

- (void)finalizeTap:(opaqueMTAudioProcessingTap *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = MPCWhiskyController;
  [(MPCSingleTrackAudioProcessor *)&v5 finalizeTap:a3];
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = self;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Finalizing tap", buf, 0xCu);
  }
}

- (void)processTap:(opaqueMTAudioProcessingTap *)a3 sampleIndex:(int64_t)a4 numberFrames:(int64_t)a5 flags:(unsigned int)a6 audioBufferList:(AudioBufferList *)a7 numberFramesOut:(int64_t *)a8 flagsOut:(unsigned int *)a9
{
  v34 = *MEMORY[0x1E69E9840];
  v13 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v14 = [v13 disableAudioProcessing];

  if ((v14 & 1) == 0)
  {
    v15 = [(MPCWhiskyController *)self processor];
    v16 = [v15 isEnabled];

    if (v16)
    {
      v17 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      processor = self->_processor;
      v29 = 0;
      v19 = [(MPCVocalAttenuationProcessor *)processor processAudioBuffer:a7 sampleIndex:a4 numberFrames:a5 error:&v29];
      v20 = v29;
      if ((v19 & 1) == 0)
      {
        v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v31 = self;
          v32 = 2114;
          v33 = v20;
          _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_ERROR, "[AP] - %{public}@ - Rendering error: %{public}@", buf, 0x16u);
        }
      }

      v22 = (clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) - v17) / 1000000000.0 * 1000.0;
      v23 = [MPCSample alloc];
      vocalLevel = self->_vocalLevel;
      v25 = [(MPCSingleTrackAudioProcessor *)self playbackEngine];
      v26 = [v25 player];
      v27 = -[MPCSample initWithLevel:time:state:](v23, "initWithLevel:time:state:", [v26 state], vocalLevel, v22);

      v28 = [(MPCWhiskyController *)self recordingSession];
      [v28 recordSample:v27];
    }
  }
}

- (void)unprepareTap:(opaqueMTAudioProcessingTap *)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Unpreparing tap", &v5, 0xCu);
  }

  [(MPCWhiskyController *)self _tearDownTapData];
}

- (void)prepareTap:(opaqueMTAudioProcessingTap *)a3 maxFrames:(int64_t)a4 processingFormat:(const AudioStreamBasicDescription *)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v18[0]) = 138543362;
    *(v18 + 4) = self;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Preparing tap", v18, 0xCu);
  }

  v9 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v10 = [v9 disableAudioProcessing];

  if (v10)
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v18[0]) = 138543362;
      *(v18 + 4) = self;
      v12 = "[AP] - %{public}@ - Preparing tap - Canceling [audio processing disabled]";
LABEL_12:
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, v12, v18, 0xCu);
    }
  }

  else
  {
    v13 = [(MPCWhiskyController *)self processor];
    v14 = [v13 isAvailable];

    if (v14)
    {
      v15 = [(MPCWhiskyController *)self processor];
      v16 = *&a5->mBytesPerPacket;
      v18[0] = *&a5->mSampleRate;
      v18[1] = v16;
      v19 = *&a5->mBitsPerChannel;
      v17 = [v15 isCompatibleWithAudioFormat:v18 maxFrames:a4];

      if (v17)
      {
        return;
      }

      v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v18[0]) = 138543362;
        *(v18 + 4) = self;
        v12 = "[AP] - %{public}@ - Preparing tap - Canceling [audio format not compatible with processor]";
        goto LABEL_12;
      }
    }

    else
    {
      v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v18[0]) = 138543362;
        *(v18 + 4) = self;
        v12 = "[AP] - %{public}@ - Preparing tap - Canceling [processor not ready]";
        goto LABEL_12;
      }
    }
  }
}

- (unsigned)creationFlags
{
  if (MSVDeviceIsROSDevice())
  {
    return 1;
  }

  else
  {
    return 9;
  }
}

- (BOOL)shouldAttachAudioTapToItem:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([(MPCWhiskyController *)self isVocalAttenuationAvailable]& 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v4;
      v8 = "[AP] - %{public}@ - Not attaching tap [VA is not available] - item: %{public}@";
      goto LABEL_13;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v5 = [(MPCWhiskyController *)self processor];
  v6 = [v5 isAvailable];

  if ((v6 & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v4;
      v8 = "[AP] - %{public}@ - Not attaching tap [processor is not ready] - item: %{public}@";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (([v4 supportsVocalAttenuation] & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v4;
      v8 = "[AP] - %{public}@ - Not attaching tap [VA not supported] - item: %{public}@";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if ([v4 loadedAudioAssetType] >= 3)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v4;
      v8 = "[AP] - %{public}@ - Not attaching tap [hls playback] - item: %{public}@";
LABEL_13:
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, v8, &v13, 0x16u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v11 = [v4 isDownloadedAsset];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v12 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_14;
    }

    v13 = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v4;
    v8 = "[AP] - %{public}@ - Not attaching tap [download playback] - item: %{public}@";
    goto LABEL_13;
  }

  if (v12)
  {
    v13 = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Attaching tap to %{public}@", &v13, 0x16u);
  }

  v9 = 1;
LABEL_15:

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MPCWhiskyController;
  [(MPCSingleTrackAudioProcessor *)&v4 dealloc];
}

- (MPCWhiskyController)initWithPlaybackEngine:(id)a3 modelProvider:(id)a4 processor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v37.receiver = self;
  v37.super_class = MPCWhiskyController;
  v11 = [(MPCSingleTrackAudioProcessor *)&v37 initWithPlaybackEngine:v8];
  v12 = v11;
  if (v11)
  {
    v11->_state = 0;
    objc_storeStrong(&v11->_modelProvider, a4);
    objc_storeStrong(&v12->_processor, a5);
    [v8 addEngineObserver:v12];
    v13 = [MEMORY[0x1E69708A8] standardUserDefaults];
    [v13 minVocalLevel];
    v12->_minVocalLevel = v14;

    v12->_maxVocalLevel = 100.0;
    v15 = [MEMORY[0x1E69708A8] standardUserDefaults];
    [v15 defaultVocalLevel];
    v12->_vocalLevel = v16;

    v17 = dispatch_queue_create("com.apple.MediaPlaybackCore.VAControllerSetupQueue", 0);
    setupQueue = v12->_setupQueue;
    v12->_setupQueue = v17;

    v19 = objc_opt_new();
    modelProvider = v12->_modelProvider;
    v12->_modelProvider = v19;

    v21 = [MPCVocalAttenuationProcessorImplementation alloc];
    if (v21)
    {
      v22 = 100.0 - v12->_minVocalLevel;
      v23 = [objc_alloc(MEMORY[0x1E6958418]) initWithCommonFormat:1 sampleRate:2 channels:0 interleaved:44100.0];
      v24 = [v23 streamDescription];
      v25 = *v24;
      v26 = *(v24 + 16);
      v39 = *(v24 + 32);
      v38[0] = v25;
      v38[1] = v26;
      *&v25 = v22;
      v21 = [(MPCVocalAttenuationProcessorImplementation *)v21 initWithMaxAttenuationLevel:v38 audioFormat:0x2000 maxFrames:*&v25];
    }

    processor = v12->_processor;
    v12->_processor = v21;

    v28 = objc_opt_new();
    v29 = [MEMORY[0x1E69E4428] sharedMonitor];
    [v28 setThermalMonitor:v29];

    v30 = [MEMORY[0x1E696AE30] processInfo];
    [v28 setLowPowerModeMonitor:v30];

    [(MPCVocalAttenuationProcessor *)v12->_processor renderingLimit];
    [v28 setRenderingTimeLimit:?];
    v31 = [[MPCVocalAttenuationPolicyController alloc] initWithDelegate:v12 parameters:v28];
    policyController = v12->_policyController;
    v12->_policyController = v31;

    v33 = v12->_setupQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__MPCWhiskyController_initWithPlaybackEngine_modelProvider_processor___block_invoke;
    block[3] = &unk_1E8239298;
    v36 = v12;
    dispatch_async(v33, block);
  }

  return v12;
}

- (MPCWhiskyController)initWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(MPCWhiskyController *)self initWithPlaybackEngine:v4 modelProvider:v5 processor:v6];

  return v7;
}

- (void)prepareForProcessing
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v6 = a1;
      _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Preparing for processing", buf, 0xCu);
    }

    if (a1[9] == 2)
    {
      [a1 _updateState:3];
      v3 = a1[4];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __43__MPCWhiskyController_prepareForProcessing__block_invoke;
      block[3] = &unk_1E8239298;
      block[4] = a1;
      dispatch_async(v3, block);
    }
  }
}

void __43__MPCWhiskyController_prepareForProcessing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) processor];
  v3 = [*(a1 + 32) modelProvider];
  v4 = [v3 model];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__MPCWhiskyController_prepareForProcessing__block_invoke_2;
  v5[3] = &unk_1E82318F0;
  v5[4] = *(a1 + 32);
  [v2 prepareWithModel:v4 completion:v5];
}

void __43__MPCWhiskyController_prepareForProcessing__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2 != 2)
  {
    v8 = *(a1 + 32);
    goto LABEL_5;
  }

  v7 = *(a1 + 32);
  if (v5)
  {
    v8 = *(a1 + 32);
LABEL_5:
    v9 = 8;
    goto LABEL_6;
  }

  v10 = [*(a1 + 32) processor];
  [v10 maxLevel];
  [v7 _vocalLevelForProcessorLevel:?];
  *(*(a1 + 32) + 56) = v11;

  v12 = *(a1 + 32);
  v13 = [v12 processor];
  [v13 minLevel];
  [v12 _vocalLevelForProcessorLevel:?];
  *(*(a1 + 32) + 60) = v14;

  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = *(v16 + 56);
    v18 = *(v16 + 60);
    v27 = 138543874;
    v28 = v16;
    v29 = 2048;
    v30 = v17;
    v31 = 2048;
    v32 = v18;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Vocal level range: [%3.2f, %3.2f]", &v27, 0x20u);
  }

  v19 = [MEMORY[0x1E69708A8] standardUserDefaults];
  [v19 defaultVocalLevel];
  *(*(a1 + 32) + 40) = v20;

  v21 = *(a1 + 32);
  LODWORD(v22) = v21[10];
  [v21 _processorLevelForVocalLevel:v22];
  v24 = v23;
  v25 = [*(a1 + 32) processor];
  LODWORD(v26) = v24;
  [v25 setLevel:v26];

  v8 = *(a1 + 32);
  v9 = 4;
LABEL_6:
  [v8 _updateState:v9];
}

void __37__MPCWhiskyController_setVocalLevel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackEngine];
  v1 = [v2 eventObserver];
  [v1 engineDidChangeVocalAttenuationLevel:v2];
}

@end