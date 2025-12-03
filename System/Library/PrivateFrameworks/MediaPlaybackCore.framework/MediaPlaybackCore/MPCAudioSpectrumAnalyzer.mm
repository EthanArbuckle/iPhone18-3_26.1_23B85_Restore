@interface MPCAudioSpectrumAnalyzer
- (BOOL)_shouldAttachAudioTap;
- (MPCAudioSpectrumAnalyzer)initWithPlaybackEngine:(id)engine refreshRate:(id)rate;
- (MPCPlaybackEngine)playbackEngine;
- (void)_analyzeAudioData:(void *)data numberOfFrames:(unsigned int)frames;
- (void)_analyzeSamples:(AudioBufferList *)samples numberFrames:(int64_t)frames;
- (void)_createAudioTap;
- (void)_createProcessTap;
- (void)_createQueueTap;
- (void)_destroyAudioTap;
- (void)_prepareTap:(opaqueMTAudioProcessingTap *)tap maxFrames:(int64_t)frames processingFormat:(const AudioStreamBasicDescription *)format;
- (void)_resetObservers;
- (void)configurePlayerItem:(id)item;
- (void)dealloc;
- (void)engine:(id)engine didChangeToState:(unint64_t)state;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation MPCAudioSpectrumAnalyzer

- (void)_createAudioTap
{
  standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
  isProcessTapEnabled = [standardUserDefaults isProcessTapEnabled];

  if (isProcessTapEnabled)
  {

    [(MPCAudioSpectrumAnalyzer *)self _createProcessTap];
  }

  else
  {

    [(MPCAudioSpectrumAnalyzer *)self _createQueueTap];
  }
}

- (void)_createProcessTap
{
  v3 = [[MPCProcessAudioTap alloc] initWithRefreshRate:self->_refreshRate delegate:self];
  processAudioTap = self->_processAudioTap;
  self->_processAudioTap = v3;

  v5 = [_MPCAudioSpectrumAnalyzerStorage alloc];
  numberOfFrames = [(MPCProcessAudioTap *)self->_processAudioTap numberOfFrames];
  *&v7 = [(MPCProcessAudioTap *)self->_processAudioTap sampleRate];
  v8 = [(_MPCAudioSpectrumAnalyzerStorage *)v5 initWithMaximumNumberOfFrames:numberOfFrames sampleRate:v7];
  [(MPCAudioSpectrumAnalyzer *)self setStorage:v8];

  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  [WeakRetained addEngineObserver:self];
}

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (void)_prepareTap:(opaqueMTAudioProcessingTap *)tap maxFrames:(int64_t)frames processingFormat:(const AudioStreamBasicDescription *)format
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  storage = [(MPCAudioSpectrumAnalyzer *)selfCopy storage];
  objc_sync_exit(selfCopy);

  mSampleRate = format->mSampleRate;
  [storage sampleRate];
  v10 = v9;
  if ([storage maxNumberOfFrames] < frames || vabds_f32(v10, mSampleRate) >= 0.00000011921)
  {
    v12 = [_MPCAudioSpectrumAnalyzerStorage alloc];
    *&v13 = mSampleRate;
    v14 = [(_MPCAudioSpectrumAnalyzerStorage *)v12 initWithMaximumNumberOfFrames:frames sampleRate:v13];

    v15 = selfCopy;
    objc_sync_enter(v15);
    [(MPCAudioSpectrumAnalyzer *)v15 setStorage:v14];
    objc_sync_exit(v15);

    v11 = v14;
  }

  else
  {
    v11 = storage;
  }
}

- (void)_analyzeAudioData:(void *)data numberOfFrames:(unsigned int)frames
{
  v4 = *&frames;
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = [(MPCAudioSpectrumAnalyzer *)selfCopy observers];
  v8 = [observers copy];

  storage = [(MPCAudioSpectrumAnalyzer *)selfCopy storage];
  objc_sync_exit(selfCopy);

  if ([v8 count])
  {
    if ([storage maxNumberOfFrames] >= v4)
    {
      [storage analyzeAudioData:data numberFrames:v4 observers:v8];
    }

    else
    {
      v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 134218240;
        v12 = v4;
        v13 = 2048;
        maxNumberOfFrames = [storage maxNumberOfFrames];
        _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_ERROR, "[AP] - Audio tap reported audio samples before we had an appropriately sized buffer (numberOfFrames:%ld storageBufferSize:%ld)", &v11, 0x16u);
      }
    }
  }
}

- (void)_analyzeSamples:(AudioBufferList *)samples numberFrames:(int64_t)frames
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = [(MPCAudioSpectrumAnalyzer *)selfCopy observers];
  v8 = [observers copy];

  storage = [(MPCAudioSpectrumAnalyzer *)selfCopy storage];
  objc_sync_exit(selfCopy);

  if ([v8 count])
  {
    if ([storage maxNumberOfFrames] >= frames)
    {
      [storage analyzeFrequencies:samples numberFrames:frames observers:v8];
    }

    else
    {
      v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 134218240;
        framesCopy = frames;
        v13 = 2048;
        maxNumberOfFrames = [storage maxNumberOfFrames];
        _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_ERROR, "[AP] - Audio tap reported audio buffer list samples before we had an appropriately sized buffer (numberOfFrames:%ld storageBufferSize:%ld)", &v11, 0x16u);
      }
    }
  }
}

- (void)_destroyAudioTap
{
  if (self->_processAudioTap)
  {
    [(MPCAudioSpectrumAnalyzer *)self _destroyProcessTap];
  }

  if (self->_audioProcessingTap)
  {

    [(MPCAudioSpectrumAnalyzer *)self _destroyQueueTap];
  }
}

- (void)_createQueueTap
{
  if (!MTMultitrackAudioProcessingTapCreate())
  {
    objc_storeStrong(&self->_selfRef, self);
    self->_audioProcessingTap = 0;
  }
}

- (BOOL)_shouldAttachAudioTap
{
  systemRoute = [MEMORY[0x1E6970490] systemRoute];
  isDeviceRoute = [systemRoute isDeviceRoute];
  v4 = [systemRoute isAirPlayingToDevice] ^ 1;

  return isDeviceRoute & v4;
}

- (void)_resetObservers
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_observers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 beginReport];
        [v7 finishReport];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_observers removeObject:observerCopy];
  if (![(NSMutableArray *)selfCopy->_observers count])
  {
    processAudioTap = [(MPCAudioSpectrumAnalyzer *)selfCopy processAudioTap];
    [processAudioTap stop];
  }

  objc_sync_exit(selfCopy);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = observerCopy;
  observers = selfCopy->_observers;
  if (!observers)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v8 = selfCopy->_observers;
    selfCopy->_observers = v7;

    observers = selfCopy->_observers;
    v5 = observerCopy;
  }

  [(NSMutableArray *)observers addObject:v5];
  processAudioTap = [(MPCAudioSpectrumAnalyzer *)selfCopy processAudioTap];
  [processAudioTap start];

  objc_sync_exit(selfCopy);
}

- (void)engine:(id)engine didChangeToState:(unint64_t)state
{
  engineCopy = engine;
  if (state == 1)
  {
    observers = [(MPCAudioSpectrumAnalyzer *)self observers];
    v7 = [observers count];

    if (v7)
    {
      processAudioTap = [(MPCAudioSpectrumAnalyzer *)self processAudioTap];
      [processAudioTap start];
    }
  }

  else if (state - 2 <= 2)
  {
    processAudioTap2 = [(MPCAudioSpectrumAnalyzer *)self processAudioTap];
    [processAudioTap2 stop];

    [(MPCAudioSpectrumAnalyzer *)self _resetObservers];
  }
}

- (void)configurePlayerItem:(id)item
{
  itemCopy = item;
  if ([(MPCAudioSpectrumAnalyzer *)self _shouldAttachAudioTap])
  {
    [itemCopy setAudioTapProcessor:self->_audioProcessingTap];
  }
}

- (void)dealloc
{
  [(MPCAudioSpectrumAnalyzer *)self setStorage:0];
  [(MPCAudioSpectrumAnalyzer *)self _destroyAudioTap];
  v3.receiver = self;
  v3.super_class = MPCAudioSpectrumAnalyzer;
  [(MPCAudioSpectrumAnalyzer *)&v3 dealloc];
}

- (MPCAudioSpectrumAnalyzer)initWithPlaybackEngine:(id)engine refreshRate:(id)rate
{
  engineCopy = engine;
  rateCopy = rate;
  v13.receiver = self;
  v13.super_class = MPCAudioSpectrumAnalyzer;
  v8 = [(MPCAudioSpectrumAnalyzer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_playbackEngine, engineCopy);
    objc_storeStrong(&v9->_refreshRate, rate);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__MPCAudioSpectrumAnalyzer_initWithPlaybackEngine_refreshRate___block_invoke;
    block[3] = &unk_1E8239298;
    v12 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  return v9;
}

@end