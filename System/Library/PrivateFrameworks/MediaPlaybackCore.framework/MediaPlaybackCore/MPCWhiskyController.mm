@interface MPCWhiskyController
- (BOOL)shouldAttachAudioTapToItem:(id)item;
- (MPCWhiskyController)initWithPlaybackEngine:(id)engine;
- (MPCWhiskyController)initWithPlaybackEngine:(id)engine modelProvider:(id)provider processor:(id)processor;
- (NSString)description;
- (NSString)modelID;
- (double)renderingTimeLimit;
- (float)_processorLevelForVocalLevel:(float)level;
- (float)_vocalLevelForProcessorLevel:(float)level;
- (id)blockingPolicy;
- (unsigned)creationFlags;
- (void)_emitStatisticsEvent;
- (void)_loadModel;
- (void)_tearDownTapData;
- (void)_updateShutdownSequence;
- (void)_updateState:(int64_t)state;
- (void)dealloc;
- (void)engine:(id)engine didChangeToState:(unint64_t)state;
- (void)engine:(id)engine willChangeToItem:(id)item fromItem:(id)fromItem;
- (void)engineDidReceiveMediaServicesPurge:(id)purge;
- (void)engineDidResetMediaServices:(id)services;
- (void)finalizeTap:(opaqueMTAudioProcessingTap *)tap;
- (void)isEnabled;
- (void)isVocalAttenuationAvailable;
- (void)prepareForProcessing;
- (void)prepareTap:(opaqueMTAudioProcessingTap *)tap maxFrames:(int64_t)frames processingFormat:(const AudioStreamBasicDescription *)format;
- (void)processTap:(opaqueMTAudioProcessingTap *)tap sampleIndex:(int64_t)index numberFrames:(int64_t)frames flags:(unsigned int)flags audioBufferList:(AudioBufferList *)list numberFramesOut:(int64_t *)out flagsOut:(unsigned int *)flagsOut;
- (void)setEnabled:(void *)enabled;
- (void)unprepareTap:(opaqueMTAudioProcessingTap *)tap;
- (void)vocalAttenuationPolicyControllerDidChange:(id)change;
@end

@implementation MPCWhiskyController

- (void)_loadModel
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - Loading model", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_setupQueue);
  [(MPCWhiskyController *)self _updateState:1];
  modelProvider = [(MPCWhiskyController *)self modelProvider];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__MPCWhiskyController__loadModel__block_invoke;
  v5[3] = &unk_1E82318F0;
  v5[4] = self;
  [modelProvider prepareWithCompletion:v5];
}

- (NSString)description
{
  selfCopy = self;
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
      v11 = *(selfCopy + 72);
      if (v11 >= 9)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", *(selfCopy + 72)];
      }

      else
      {
        v8 = off_1E8231910[v11];
      }

      modelProvider = [selfCopy modelProvider];
      state = [modelProvider state];
      if (state >= 4)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", state];
      }

      else
      {
        v14 = off_1E8231958[state];
      }

      processor = [selfCopy processor];
      state2 = [processor state];
      if (state2 >= 6)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", state2];
      }

      else
      {
        v17 = off_1E8231978[state2];
      }

      modelName = [*(selfCopy + 96) modelName];
      [v9 stringWithFormat:@"<%p - %@> - %@ [M:%@ P:%@] - model: %@ - level: %3.2f", selfCopy, v10, v8, v14, v17, modelName, *(selfCopy + 40)];
      goto LABEL_26;
    }

    if (((1 << state) & 0x8C) != 0)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = objc_opt_class();
      v6 = *(selfCopy + 72);
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

      modelProvider = [selfCopy modelProvider];
      state3 = [modelProvider state];
      if (state3 >= 4)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", state3];
      }

      else
      {
        v14 = off_1E8231958[state3];
      }

      processor = [selfCopy processor];
      state4 = [processor state];
      if (state4 >= 6)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", state4];
      }

      else
      {
        v17 = off_1E8231978[state4];
      }

      modelName = [*(selfCopy + 96) modelName];
      [v4 stringWithFormat:@"<%p - %@> - %@ [M:%@ P:%@] - model: %@", selfCopy, v5, v8, v14, v17, modelName, v29];
      selfCopy = LABEL_26:;

LABEL_68:
      goto LABEL_69;
    }

    if (state == 8)
    {
      modelProvider2 = [(MPCWhiskyController *)self modelProvider];
      model = [modelProvider2 model];

      v4 = MEMORY[0x1E696AEC0];
      v5 = objc_opt_class();
      v6 = *(selfCopy + 72);
      v7 = v6 >= 9;
      if (model)
      {
        goto LABEL_6;
      }

      if (v6 >= 9)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", *(selfCopy + 72)];
      }

      else
      {
        v8 = off_1E8231910[v6];
      }

      modelProvider = [selfCopy modelProvider];
      state5 = [modelProvider state];
      if (state5 >= 4)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", state5];
      }

      else
      {
        v14 = off_1E8231958[state5];
      }

      processor = [selfCopy processor];
      state6 = [processor state];
      if (state6 >= 6)
      {
        v26 = MEMORY[0x1E696AEC0];
LABEL_66:
        v17 = [v26 stringWithFormat:@"undefined/%ld", state6];
        goto LABEL_67;
      }

      goto LABEL_64;
    }
  }

  if (state < 2)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v23 = *(selfCopy + 72);
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
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", *(selfCopy + 72)];
      goto LABEL_60;
    }

LABEL_59:
    v8 = @"not loaded";
LABEL_60:
    modelProvider = [selfCopy modelProvider];
    state7 = [modelProvider state];
    if (state7 >= 4)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", state7];
    }

    else
    {
      v14 = off_1E8231958[state7];
    }

    processor = [selfCopy processor];
    state6 = [processor state];
    if (state6 >= 6)
    {
      v26 = MEMORY[0x1E696AEC0];
      goto LABEL_66;
    }

LABEL_64:
    v17 = off_1E8231978[state6];
LABEL_67:
    selfCopy = [v4 stringWithFormat:@"<%p - %@> - %@ [M:%@ P:%@]", selfCopy, v5, v8, v14, v17];
    goto LABEL_68;
  }

LABEL_69:

  return selfCopy;
}

- (void)isEnabled
{
  if (result)
  {
    processor = [result processor];
    isEnabled = [processor isEnabled];

    return isEnabled;
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
    processor = [result processor];
    isAvailable = [processor isAvailable];

    return isAvailable;
  }

  return result;
}

- (void)_emitStatisticsEvent
{
  v25[6] = *MEMORY[0x1E69E9840];
  recordingSession = [(MPCWhiskyController *)self recordingSession];
  currentRecorder = [recordingSession currentRecorder];
  numberOfSamples = [currentRecorder numberOfSamples];

  if (numberOfSamples)
  {
    recordingSession2 = [(MPCWhiskyController *)self recordingSession];
    currentRecorder2 = [recordingSession2 currentRecorder];
    dictionaryRepresentation = [currentRecorder2 dictionaryRepresentation];

    playbackEngine = [(MPCSingleTrackAudioProcessor *)self playbackEngine];
    eventStream = [playbackEngine eventStream];
    v24[0] = @"vocal-attenuation-statistics-mean";
    v22 = [dictionaryRepresentation objectForKeyedSubscript:@"mean"];
    v25[0] = v22;
    v24[1] = @"vocal-attenuation-statistics-max";
    v21 = [dictionaryRepresentation objectForKeyedSubscript:@"max"];
    v25[1] = v21;
    v24[2] = @"vocal-attenuation-statistics-stdev";
    v20 = [dictionaryRepresentation objectForKeyedSubscript:@"sigma"];
    v25[2] = v20;
    v24[3] = @"vocal-attenuation-statistics-glitches";
    v10 = [dictionaryRepresentation objectForKeyedSubscript:@"glitches"];
    v25[3] = v10;
    v24[4] = @"vocal-attenuation-statistics-samples";
    v11 = MEMORY[0x1E696AD98];
    recordingSession3 = [(MPCWhiskyController *)self recordingSession];
    currentRecorder3 = [recordingSession3 currentRecorder];
    v14 = [v11 numberWithInt:{objc_msgSend(currentRecorder3, "numberOfSamples")}];
    v25[4] = v14;
    v24[5] = @"vocal-attenuation-statistics-thermal";
    v15 = MEMORY[0x1E696AD98];
    recordingSession4 = [(MPCWhiskyController *)self recordingSession];
    currentRecorder4 = [recordingSession4 currentRecorder];
    v18 = [v15 numberWithInt:{objc_msgSend(currentRecorder4, "thermalLevel")}];
    v25[5] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:6];
    [eventStream emitEventType:@"vocal-attenuation-statistics" payload:v19];
  }
}

- (void)engineDidReceiveMediaServicesPurge:(id)purge
{
  [(MPCWhiskyController *)self _tearDownTapData];

  [(MPCSingleTrackAudioProcessor *)self recreateAudioTap];
}

- (void)engineDidResetMediaServices:(id)services
{
  [(MPCWhiskyController *)self _tearDownTapData];

  [(MPCSingleTrackAudioProcessor *)self recreateAudioTap];
}

- (void)engine:(id)engine willChangeToItem:(id)item fromItem:(id)fromItem
{
  engineCopy = engine;
  itemCopy = item;
  fromItemCopy = fromItem;
  if (itemCopy && ([itemCopy isPlaceholder] & 1) == 0)
  {
    processor = [(MPCWhiskyController *)self processor];
    [processor resetAudioUnit];

    recordingSession = [(MPCWhiskyController *)self recordingSession];
    [recordingSession save];

    [(MPCWhiskyController *)self _emitStatisticsEvent];
  }
}

- (void)engine:(id)engine didChangeToState:(unint64_t)state
{
  if (state - 2 <= 2)
  {
    recordingSession = [(MPCWhiskyController *)self recordingSession];
    [recordingSession save];
  }

  [(MPCWhiskyController *)self _updateShutdownSequence];
}

- (void)vocalAttenuationPolicyControllerDidChange:(id)change
{
  changeCopy = change;
  v5 = [MPCWhiskyControllerDisabledState alloc];
  blockingEvaluation = [changeCopy blockingEvaluation];

  v7 = [(MPCWhiskyControllerDisabledState *)v5 initWithPolicyEvaluation:blockingEvaluation];
  disabledState = self->_disabledState;
  self->_disabledState = v7;

  playbackEngine = [(MPCSingleTrackAudioProcessor *)self playbackEngine];
  v10 = self->_disabledState;
  v13 = playbackEngine;
  eventObserver = [playbackEngine eventObserver];
  v12 = eventObserver;
  if (v10)
  {
    [eventObserver engineDidBlockVocalAttenuation:v13];
  }

  else
  {
    [eventObserver engineDidUnblockVocalAttenuation:v13];
  }
}

- (void)_updateShutdownSequence
{
  shutdownTimer = [(MPCWhiskyController *)self shutdownTimer];

  if (shutdownTimer)
  {
    shutdownTimer2 = [(MPCWhiskyController *)self shutdownTimer];
    [shutdownTimer2 invalidate];

    [(MPCWhiskyController *)self setShutdownTimer:0];
  }

  if ([(MPCWhiskyController *)self isEnabled])
  {
    playbackEngine = [(MPCSingleTrackAudioProcessor *)self playbackEngine];
    player = [playbackEngine player];
    state = [player state];

    if (state <= 6 && ((1 << state) & 0x43) != 0)
    {
      objc_initWeak(&location, self);
      v8 = MEMORY[0x1E69B14D8];
      standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
      [standardUserDefaults vocalAttenuationGracePeriodAfterPause];
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

- (void)setEnabled:(void *)enabled
{
  if (enabled)
  {
    processor = [enabled processor];
    isAvailable = [processor isAvailable];

    if (isAvailable)
    {
      processor2 = [enabled processor];
      [processor2 setEnabled:a2];

      processor3 = [enabled processor];
      if ([processor3 isEnabled])
      {
        v8 = 5;
      }

      else
      {
        v8 = 6;
      }

      [enabled _updateState:v8];

      [enabled _updateShutdownSequence];
    }
  }
}

- (float)_vocalLevelForProcessorLevel:(float)level
{
  v25 = *MEMORY[0x1E69E9840];
  minVocalLevel = self->_minVocalLevel;
  maxVocalLevel = self->_maxVocalLevel;
  [(MPCVocalAttenuationProcessor *)self->_processor minLevel];
  v8 = 100.0 - v7;
  [(MPCVocalAttenuationProcessor *)self->_processor maxLevel];
  v10 = log10f((100.0 - v9) / 100.0) * 20.0;
  v11 = log10f((100.0 - level) / v8) * 20.0;
  v12 = minVocalLevel + (((maxVocalLevel - minVocalLevel) * (v11 - v10)) / (0.0 - v10));
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 138544386;
    selfCopy = self;
    v17 = 2048;
    levelCopy = level;
    v19 = 2048;
    v20 = (100.0 - level);
    v21 = 2048;
    v22 = v11;
    v23 = 2048;
    v24 = v12;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - Mapping p->au->db->ui: %3.2fp -> %3.2fau -> %3.2fdB -> %3.2fui", &v15, 0x34u);
  }

  return v12;
}

- (float)_processorLevelForVocalLevel:(float)level
{
  v25 = *MEMORY[0x1E69E9840];
  minVocalLevel = self->_minVocalLevel;
  maxVocalLevel = self->_maxVocalLevel;
  [(MPCVocalAttenuationProcessor *)self->_processor minLevel];
  v8 = 100.0 - v7;
  [(MPCVocalAttenuationProcessor *)self->_processor maxLevel];
  v10 = log10f((100.0 - v9) / 100.0);
  v11 = (v10 * 20.0) + (((0.0 - (v10 * 20.0)) / (maxVocalLevel - minVocalLevel)) * (level - minVocalLevel));
  v12 = v8 * __exp10f(v11 / 20.0);
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 138544386;
    selfCopy = self;
    v17 = 2048;
    levelCopy = level;
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
  processor = [(MPCWhiskyController *)self processor];
  [processor resetAudioUnit];
}

- (void)_updateState:(int64_t)state
{
  v35 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state == state)
  {
    return;
  }

  self->_state = state;
  if (state == 6)
  {
    if (self->_recordingSession)
    {
      v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        if (state >= 9)
        {
          state = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", state];
        }

        else
        {
          state = off_1E8231910[state];
        }

        sessionID = [(MPCRecordingSession *)self->_recordingSession sessionID];
        *buf = 138544130;
        selfCopy3 = self;
        v29 = 2114;
        v30 = state;
        v31 = 2114;
        v32 = @"disabled";
        v33 = 2114;
        v34 = sessionID;
        _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - State changed: %{public}@ -> %{public}@ - Flushing recording session: %{public}@", buf, 0x2Au);
      }

      [(MPCWhiskyController *)self _emitStatisticsEvent];
      [(MPCRecordingSession *)self->_recordingSession flush];
      recordingSession = self->_recordingSession;
      self->_recordingSession = 0;
      goto LABEL_16;
    }
  }

  else if (state == 5)
  {
    v6 = [MPCRecordingSession alloc];
    modelID = [(MPCWhiskyController *)self modelID];
    processor = [(MPCWhiskyController *)self processor];
    [processor sampleTime];
    v10 = v9;
    processor2 = [(MPCWhiskyController *)self processor];
    [processor2 renderingLimit];
    v13 = v12;
    standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
    v15 = -[MPCRecordingSession initWithModelID:samplingTime:renderingLimit:shouldRecordSamples:](v6, "initWithModelID:samplingTime:renderingLimit:shouldRecordSamples:", modelID, [standardUserDefaults shouldRecordVocalAttenuationStatistics], v10, v13);
    v16 = self->_recordingSession;
    self->_recordingSession = v15;

    recordingSession = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(&recordingSession->super, OS_LOG_TYPE_INFO))
    {
      if (state >= 9)
      {
        state2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", state];
      }

      else
      {
        state2 = off_1E8231910[state];
      }

      sessionID2 = [(MPCRecordingSession *)self->_recordingSession sessionID];
      *buf = 138544130;
      selfCopy3 = self;
      v29 = 2114;
      v30 = state2;
      v31 = 2114;
      v32 = @"enabled";
      v33 = 2114;
      v34 = sessionID2;
      _os_log_impl(&dword_1C5C61000, &recordingSession->super, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - State changed: %{public}@ -> %{public}@ - New recording session: %{public}@", buf, 0x2Au);
    }

LABEL_16:
  }

  v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    if (state >= 9)
    {
      state3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", state];
    }

    else
    {
      state3 = off_1E8231910[state];
    }

    v25 = state3;
    if (state >= 9)
    {
      state4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", state];
    }

    else
    {
      state4 = off_1E8231910[state];
    }

    *buf = 138543874;
    selfCopy3 = self;
    v29 = 2114;
    v30 = v25;
    v31 = 2114;
    v32 = state4;
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
  processor = [(MPCWhiskyController *)self processor];
  [processor renderingLimit];
  v4 = v3;

  return v4;
}

- (id)blockingPolicy
{
  policyController = [(MPCWhiskyController *)self policyController];
  blockingEvaluation = [policyController blockingEvaluation];

  return blockingEvaluation;
}

- (NSString)modelID
{
  modelProvider = [(MPCWhiskyController *)self modelProvider];
  modelName = [modelProvider modelName];

  return modelName;
}

- (void)finalizeTap:(opaqueMTAudioProcessingTap *)tap
{
  v8 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = MPCWhiskyController;
  [(MPCSingleTrackAudioProcessor *)&v5 finalizeTap:tap];
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Finalizing tap", buf, 0xCu);
  }
}

- (void)processTap:(opaqueMTAudioProcessingTap *)tap sampleIndex:(int64_t)index numberFrames:(int64_t)frames flags:(unsigned int)flags audioBufferList:(AudioBufferList *)list numberFramesOut:(int64_t *)out flagsOut:(unsigned int *)flagsOut
{
  v34 = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
  disableAudioProcessing = [standardUserDefaults disableAudioProcessing];

  if ((disableAudioProcessing & 1) == 0)
  {
    processor = [(MPCWhiskyController *)self processor];
    isEnabled = [processor isEnabled];

    if (isEnabled)
    {
      v17 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      processor = self->_processor;
      v29 = 0;
      v19 = [(MPCVocalAttenuationProcessor *)processor processAudioBuffer:list sampleIndex:index numberFrames:frames error:&v29];
      v20 = v29;
      if ((v19 & 1) == 0)
      {
        v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy = self;
          v32 = 2114;
          v33 = v20;
          _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_ERROR, "[AP] - %{public}@ - Rendering error: %{public}@", buf, 0x16u);
        }
      }

      v22 = (clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) - v17) / 1000000000.0 * 1000.0;
      v23 = [MPCSample alloc];
      vocalLevel = self->_vocalLevel;
      playbackEngine = [(MPCSingleTrackAudioProcessor *)self playbackEngine];
      player = [playbackEngine player];
      v27 = -[MPCSample initWithLevel:time:state:](v23, "initWithLevel:time:state:", [player state], vocalLevel, v22);

      recordingSession = [(MPCWhiskyController *)self recordingSession];
      [recordingSession recordSample:v27];
    }
  }
}

- (void)unprepareTap:(opaqueMTAudioProcessingTap *)tap
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Unpreparing tap", &v5, 0xCu);
  }

  [(MPCWhiskyController *)self _tearDownTapData];
}

- (void)prepareTap:(opaqueMTAudioProcessingTap *)tap maxFrames:(int64_t)frames processingFormat:(const AudioStreamBasicDescription *)format
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v18[0]) = 138543362;
    *(v18 + 4) = self;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Preparing tap", v18, 0xCu);
  }

  standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
  disableAudioProcessing = [standardUserDefaults disableAudioProcessing];

  if (disableAudioProcessing)
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
    processor = [(MPCWhiskyController *)self processor];
    isAvailable = [processor isAvailable];

    if (isAvailable)
    {
      processor2 = [(MPCWhiskyController *)self processor];
      v16 = *&format->mBytesPerPacket;
      v18[0] = *&format->mSampleRate;
      v18[1] = v16;
      v19 = *&format->mBitsPerChannel;
      v17 = [processor2 isCompatibleWithAudioFormat:v18 maxFrames:frames];

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

- (BOOL)shouldAttachAudioTapToItem:(id)item
{
  v17 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (([(MPCWhiskyController *)self isVocalAttenuationAvailable]& 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      selfCopy6 = self;
      v15 = 2114;
      v16 = itemCopy;
      v8 = "[AP] - %{public}@ - Not attaching tap [VA is not available] - item: %{public}@";
      goto LABEL_13;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  processor = [(MPCWhiskyController *)self processor];
  isAvailable = [processor isAvailable];

  if ((isAvailable & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      selfCopy6 = self;
      v15 = 2114;
      v16 = itemCopy;
      v8 = "[AP] - %{public}@ - Not attaching tap [processor is not ready] - item: %{public}@";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (([itemCopy supportsVocalAttenuation] & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      selfCopy6 = self;
      v15 = 2114;
      v16 = itemCopy;
      v8 = "[AP] - %{public}@ - Not attaching tap [VA not supported] - item: %{public}@";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if ([itemCopy loadedAudioAssetType] >= 3)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      selfCopy6 = self;
      v15 = 2114;
      v16 = itemCopy;
      v8 = "[AP] - %{public}@ - Not attaching tap [hls playback] - item: %{public}@";
LABEL_13:
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, v8, &v13, 0x16u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  isDownloadedAsset = [itemCopy isDownloadedAsset];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v12 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (isDownloadedAsset)
  {
    if (!v12)
    {
      goto LABEL_14;
    }

    v13 = 138543618;
    selfCopy6 = self;
    v15 = 2114;
    v16 = itemCopy;
    v8 = "[AP] - %{public}@ - Not attaching tap [download playback] - item: %{public}@";
    goto LABEL_13;
  }

  if (v12)
  {
    v13 = 138543618;
    selfCopy6 = self;
    v15 = 2114;
    v16 = itemCopy;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Attaching tap to %{public}@", &v13, 0x16u);
  }

  v9 = 1;
LABEL_15:

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MPCWhiskyController;
  [(MPCSingleTrackAudioProcessor *)&v4 dealloc];
}

- (MPCWhiskyController)initWithPlaybackEngine:(id)engine modelProvider:(id)provider processor:(id)processor
{
  engineCopy = engine;
  providerCopy = provider;
  processorCopy = processor;
  v37.receiver = self;
  v37.super_class = MPCWhiskyController;
  v11 = [(MPCSingleTrackAudioProcessor *)&v37 initWithPlaybackEngine:engineCopy];
  v12 = v11;
  if (v11)
  {
    v11->_state = 0;
    objc_storeStrong(&v11->_modelProvider, provider);
    objc_storeStrong(&v12->_processor, processor);
    [engineCopy addEngineObserver:v12];
    standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
    [standardUserDefaults minVocalLevel];
    v12->_minVocalLevel = v14;

    v12->_maxVocalLevel = 100.0;
    standardUserDefaults2 = [MEMORY[0x1E69708A8] standardUserDefaults];
    [standardUserDefaults2 defaultVocalLevel];
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
      streamDescription = [v23 streamDescription];
      v25 = *streamDescription;
      v26 = *(streamDescription + 16);
      v39 = *(streamDescription + 32);
      v38[0] = v25;
      v38[1] = v26;
      *&v25 = v22;
      v21 = [(MPCVocalAttenuationProcessorImplementation *)v21 initWithMaxAttenuationLevel:v38 audioFormat:0x2000 maxFrames:*&v25];
    }

    processor = v12->_processor;
    v12->_processor = v21;

    v28 = objc_opt_new();
    mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
    [v28 setThermalMonitor:mEMORY[0x1E69E4428]];

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [v28 setLowPowerModeMonitor:processInfo];

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

- (MPCWhiskyController)initWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(MPCWhiskyController *)self initWithPlaybackEngine:engineCopy modelProvider:v5 processor:v6];

  return v7;
}

- (void)prepareForProcessing
{
  v7 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Preparing for processing", buf, 0xCu);
    }

    if (self[9] == 2)
    {
      [self _updateState:3];
      v3 = self[4];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __43__MPCWhiskyController_prepareForProcessing__block_invoke;
      block[3] = &unk_1E8239298;
      block[4] = self;
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