@interface HULiveListenObserver
- (HULiveListenObserver)initWithController:(id)a3;
- (void)_notifyListenersAndPollAudioLevelIfLiveListenIsRunning;
- (void)_pollLiveListenAudioLevelAfterDelay;
- (void)registerUpdateBlock:(id)a3 withListener:(id)a4;
- (void)removeListener:(id)a3;
@end

@implementation HULiveListenObserver

- (HULiveListenObserver)initWithController:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = HULiveListenObserver;
  v6 = [(HULiveListenObserver *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, a3);
    [v5 setDelegate:v7];
    v8 = [MEMORY[0x1E695DF70] array];
    updateBlocks = v7->_updateBlocks;
    v7->_updateBlocks = v8;

    v10 = objc_opt_new();
    updateLock = v7->_updateLock;
    v7->_updateLock = v10;

    liveListenLevelsTimer = v7->_liveListenLevelsTimer;
    v7->_liveListenLevelsTimer = 0;
  }

  return v7;
}

- (void)registerUpdateBlock:(id)a3 withListener:(id)a4
{
  aBlock = a3;
  v6 = a4;
  if (aBlock)
  {
    v7 = [HUIdentifierAndBlockPair alloc];
    v8 = _Block_copy(aBlock);
    v9 = [(HUIdentifierAndBlockPair *)v7 initWithIdentifier:v6 andBlock:v8];

    v10 = [(HULiveListenObserver *)self updateLock];
    [v10 lock];

    v11 = [(HULiveListenObserver *)self updateBlocks];
    [v11 addObject:v9];

    v12 = [(HULiveListenObserver *)self updateLock];
    [v12 unlock];

    v13 = [HUListenerHelper listenerHelperWithListener:v6 andDelegate:self];
  }

  else
  {
    [(HULiveListenObserver *)self removeListener:v6];
  }
}

- (void)removeListener:(id)a3
{
  v4 = a3;
  v5 = [(HULiveListenObserver *)self updateLock];
  [v5 lock];

  v6 = [(HULiveListenObserver *)self updateBlocks];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39__HULiveListenObserver_removeListener___block_invoke;
  v11[3] = &unk_1E85CC0C8;
  v12 = v4;
  v7 = v4;
  v8 = [v6 indexesOfObjectsPassingTest:v11];

  if ([v8 count])
  {
    v9 = [(HULiveListenObserver *)self updateBlocks];
    [v9 removeObjectsAtIndexes:v8];
  }

  v10 = [(HULiveListenObserver *)self updateLock];
  [v10 unlock];
}

BOOL __39__HULiveListenObserver_removeListener___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)_notifyListenersAndPollAudioLevelIfLiveListenIsRunning
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(HULiveListenObserver *)self controller];
  v4 = [v3 isListening];

  v5 = [(HULiveListenObserver *)self controller];
  [v5 audioLevel];
  v7 = v6;

  v8 = [(HULiveListenObserver *)self controller];
  v9 = [v8 isPlayingBack];

  v10 = [(HULiveListenObserver *)self controller];
  v11 = [v10 combinedSessionTranscription];

  v12 = [(HULiveListenObserver *)self updateLock];
  [v12 lock];

  v13 = [(HULiveListenObserver *)self updateBlocks];
  v14 = [v13 copy];

  v15 = [(HULiveListenObserver *)self updateLock];
  [v15 unlock];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v24 + 1) + 8 * v20) block];
        (v21)[2](v21, v4, v9, v11, v7);

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  if (v4)
  {
    [(HULiveListenObserver *)self _pollLiveListenAudioLevelAfterDelay];
  }

  else
  {
    v22 = [(HULiveListenObserver *)self liveListenLevelsTimer];
    [v22 cancel];

    [(HULiveListenObserver *)self setLiveListenLevelsTimer:0];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_pollLiveListenAudioLevelAfterDelay
{
  v3 = [(HULiveListenObserver *)self liveListenLevelsTimer];

  if (!v3)
  {
    v4 = objc_opt_new();
    [(HULiveListenObserver *)self setLiveListenLevelsTimer:v4];
  }

  v5 = [(HULiveListenObserver *)self liveListenLevelsTimer];
  [v5 cancel];

  objc_initWeak(&location, self);
  v6 = [(HULiveListenObserver *)self liveListenLevelsTimer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__HULiveListenObserver__pollLiveListenAudioLevelAfterDelay__block_invoke;
  v7[3] = &unk_1E85C9F10;
  objc_copyWeak(&v8, &location);
  [v6 afterDelay:v7 processBlock:0.05];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __59__HULiveListenObserver__pollLiveListenAudioLevelAfterDelay__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyListenersAndPollAudioLevelIfLiveListenIsRunning];
}

@end