@interface MPCAudioSpectrumAnalyzer
- (BOOL)_shouldAttachAudioTap;
- (MPCAudioSpectrumAnalyzer)initWithPlaybackEngine:(id)a3 refreshRate:(id)a4;
- (MPCPlaybackEngine)playbackEngine;
- (void)_analyzeAudioData:(void *)a3 numberOfFrames:(unsigned int)a4;
- (void)_analyzeSamples:(AudioBufferList *)a3 numberFrames:(int64_t)a4;
- (void)_createAudioTap;
- (void)_createProcessTap;
- (void)_createQueueTap;
- (void)_destroyAudioTap;
- (void)_prepareTap:(opaqueMTAudioProcessingTap *)a3 maxFrames:(int64_t)a4 processingFormat:(const AudioStreamBasicDescription *)a5;
- (void)_resetObservers;
- (void)configurePlayerItem:(id)a3;
- (void)dealloc;
- (void)engine:(id)a3 didChangeToState:(unint64_t)a4;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation MPCAudioSpectrumAnalyzer

- (void)_createAudioTap
{
  v3 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v4 = [v3 isProcessTapEnabled];

  if (v4)
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
  v6 = [(MPCProcessAudioTap *)self->_processAudioTap numberOfFrames];
  *&v7 = [(MPCProcessAudioTap *)self->_processAudioTap sampleRate];
  v8 = [(_MPCAudioSpectrumAnalyzerStorage *)v5 initWithMaximumNumberOfFrames:v6 sampleRate:v7];
  [(MPCAudioSpectrumAnalyzer *)self setStorage:v8];

  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  [WeakRetained addEngineObserver:self];
}

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (void)_prepareTap:(opaqueMTAudioProcessingTap *)a3 maxFrames:(int64_t)a4 processingFormat:(const AudioStreamBasicDescription *)a5
{
  v7 = self;
  objc_sync_enter(v7);
  v16 = [(MPCAudioSpectrumAnalyzer *)v7 storage];
  objc_sync_exit(v7);

  mSampleRate = a5->mSampleRate;
  [v16 sampleRate];
  v10 = v9;
  if ([v16 maxNumberOfFrames] < a4 || vabds_f32(v10, mSampleRate) >= 0.00000011921)
  {
    v12 = [_MPCAudioSpectrumAnalyzerStorage alloc];
    *&v13 = mSampleRate;
    v14 = [(_MPCAudioSpectrumAnalyzerStorage *)v12 initWithMaximumNumberOfFrames:a4 sampleRate:v13];

    v15 = v7;
    objc_sync_enter(v15);
    [(MPCAudioSpectrumAnalyzer *)v15 setStorage:v14];
    objc_sync_exit(v15);

    v11 = v14;
  }

  else
  {
    v11 = v16;
  }
}

- (void)_analyzeAudioData:(void *)a3 numberOfFrames:(unsigned int)a4
{
  v4 = *&a4;
  v15 = *MEMORY[0x1E69E9840];
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(MPCAudioSpectrumAnalyzer *)v6 observers];
  v8 = [v7 copy];

  v9 = [(MPCAudioSpectrumAnalyzer *)v6 storage];
  objc_sync_exit(v6);

  if ([v8 count])
  {
    if ([v9 maxNumberOfFrames] >= v4)
    {
      [v9 analyzeAudioData:a3 numberFrames:v4 observers:v8];
    }

    else
    {
      v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 134218240;
        v12 = v4;
        v13 = 2048;
        v14 = [v9 maxNumberOfFrames];
        _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_ERROR, "[AP] - Audio tap reported audio samples before we had an appropriately sized buffer (numberOfFrames:%ld storageBufferSize:%ld)", &v11, 0x16u);
      }
    }
  }
}

- (void)_analyzeSamples:(AudioBufferList *)a3 numberFrames:(int64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(MPCAudioSpectrumAnalyzer *)v6 observers];
  v8 = [v7 copy];

  v9 = [(MPCAudioSpectrumAnalyzer *)v6 storage];
  objc_sync_exit(v6);

  if ([v8 count])
  {
    if ([v9 maxNumberOfFrames] >= a4)
    {
      [v9 analyzeFrequencies:a3 numberFrames:a4 observers:v8];
    }

    else
    {
      v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 134218240;
        v12 = a4;
        v13 = 2048;
        v14 = [v9 maxNumberOfFrames];
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
  v2 = [MEMORY[0x1E6970490] systemRoute];
  v3 = [v2 isDeviceRoute];
  v4 = [v2 isAirPlayingToDevice] ^ 1;

  return v3 & v4;
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

- (void)unregisterObserver:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableArray *)v4->_observers removeObject:v6];
  if (![(NSMutableArray *)v4->_observers count])
  {
    v5 = [(MPCAudioSpectrumAnalyzer *)v4 processAudioTap];
    [v5 stop];
  }

  objc_sync_exit(v4);
}

- (void)registerObserver:(id)a3
{
  v10 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = v10;
  observers = v4->_observers;
  if (!observers)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v8 = v4->_observers;
    v4->_observers = v7;

    observers = v4->_observers;
    v5 = v10;
  }

  [(NSMutableArray *)observers addObject:v5];
  v9 = [(MPCAudioSpectrumAnalyzer *)v4 processAudioTap];
  [v9 start];

  objc_sync_exit(v4);
}

- (void)engine:(id)a3 didChangeToState:(unint64_t)a4
{
  v10 = a3;
  if (a4 == 1)
  {
    v6 = [(MPCAudioSpectrumAnalyzer *)self observers];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [(MPCAudioSpectrumAnalyzer *)self processAudioTap];
      [v8 start];
    }
  }

  else if (a4 - 2 <= 2)
  {
    v9 = [(MPCAudioSpectrumAnalyzer *)self processAudioTap];
    [v9 stop];

    [(MPCAudioSpectrumAnalyzer *)self _resetObservers];
  }
}

- (void)configurePlayerItem:(id)a3
{
  v4 = a3;
  if ([(MPCAudioSpectrumAnalyzer *)self _shouldAttachAudioTap])
  {
    [v4 setAudioTapProcessor:self->_audioProcessingTap];
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

- (MPCAudioSpectrumAnalyzer)initWithPlaybackEngine:(id)a3 refreshRate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MPCAudioSpectrumAnalyzer;
  v8 = [(MPCAudioSpectrumAnalyzer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_playbackEngine, v6);
    objc_storeStrong(&v9->_refreshRate, a4);
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