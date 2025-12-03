@interface HULiveListenObserver
- (HULiveListenObserver)initWithController:(id)controller;
- (void)_notifyListenersAndPollAudioLevelIfLiveListenIsRunning;
- (void)_pollLiveListenAudioLevelAfterDelay;
- (void)registerUpdateBlock:(id)block withListener:(id)listener;
- (void)removeListener:(id)listener;
@end

@implementation HULiveListenObserver

- (HULiveListenObserver)initWithController:(id)controller
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = HULiveListenObserver;
  v6 = [(HULiveListenObserver *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
    [controllerCopy setDelegate:v7];
    array = [MEMORY[0x1E695DF70] array];
    updateBlocks = v7->_updateBlocks;
    v7->_updateBlocks = array;

    v10 = objc_opt_new();
    updateLock = v7->_updateLock;
    v7->_updateLock = v10;

    liveListenLevelsTimer = v7->_liveListenLevelsTimer;
    v7->_liveListenLevelsTimer = 0;
  }

  return v7;
}

- (void)registerUpdateBlock:(id)block withListener:(id)listener
{
  aBlock = block;
  listenerCopy = listener;
  if (aBlock)
  {
    v7 = [HUIdentifierAndBlockPair alloc];
    v8 = _Block_copy(aBlock);
    v9 = [(HUIdentifierAndBlockPair *)v7 initWithIdentifier:listenerCopy andBlock:v8];

    updateLock = [(HULiveListenObserver *)self updateLock];
    [updateLock lock];

    updateBlocks = [(HULiveListenObserver *)self updateBlocks];
    [updateBlocks addObject:v9];

    updateLock2 = [(HULiveListenObserver *)self updateLock];
    [updateLock2 unlock];

    v13 = [HUListenerHelper listenerHelperWithListener:listenerCopy andDelegate:self];
  }

  else
  {
    [(HULiveListenObserver *)self removeListener:listenerCopy];
  }
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  updateLock = [(HULiveListenObserver *)self updateLock];
  [updateLock lock];

  updateBlocks = [(HULiveListenObserver *)self updateBlocks];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39__HULiveListenObserver_removeListener___block_invoke;
  v11[3] = &unk_1E85CC0C8;
  v12 = listenerCopy;
  v7 = listenerCopy;
  v8 = [updateBlocks indexesOfObjectsPassingTest:v11];

  if ([v8 count])
  {
    updateBlocks2 = [(HULiveListenObserver *)self updateBlocks];
    [updateBlocks2 removeObjectsAtIndexes:v8];
  }

  updateLock2 = [(HULiveListenObserver *)self updateLock];
  [updateLock2 unlock];
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
  controller = [(HULiveListenObserver *)self controller];
  isListening = [controller isListening];

  controller2 = [(HULiveListenObserver *)self controller];
  [controller2 audioLevel];
  v7 = v6;

  controller3 = [(HULiveListenObserver *)self controller];
  isPlayingBack = [controller3 isPlayingBack];

  controller4 = [(HULiveListenObserver *)self controller];
  combinedSessionTranscription = [controller4 combinedSessionTranscription];

  updateLock = [(HULiveListenObserver *)self updateLock];
  [updateLock lock];

  updateBlocks = [(HULiveListenObserver *)self updateBlocks];
  v14 = [updateBlocks copy];

  updateLock2 = [(HULiveListenObserver *)self updateLock];
  [updateLock2 unlock];

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

        block = [*(*(&v24 + 1) + 8 * v20) block];
        (block)[2](block, isListening, isPlayingBack, combinedSessionTranscription, v7);

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  if (isListening)
  {
    [(HULiveListenObserver *)self _pollLiveListenAudioLevelAfterDelay];
  }

  else
  {
    liveListenLevelsTimer = [(HULiveListenObserver *)self liveListenLevelsTimer];
    [liveListenLevelsTimer cancel];

    [(HULiveListenObserver *)self setLiveListenLevelsTimer:0];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_pollLiveListenAudioLevelAfterDelay
{
  liveListenLevelsTimer = [(HULiveListenObserver *)self liveListenLevelsTimer];

  if (!liveListenLevelsTimer)
  {
    v4 = objc_opt_new();
    [(HULiveListenObserver *)self setLiveListenLevelsTimer:v4];
  }

  liveListenLevelsTimer2 = [(HULiveListenObserver *)self liveListenLevelsTimer];
  [liveListenLevelsTimer2 cancel];

  objc_initWeak(&location, self);
  liveListenLevelsTimer3 = [(HULiveListenObserver *)self liveListenLevelsTimer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__HULiveListenObserver__pollLiveListenAudioLevelAfterDelay__block_invoke;
  v7[3] = &unk_1E85C9F10;
  objc_copyWeak(&v8, &location);
  [liveListenLevelsTimer3 afterDelay:v7 processBlock:0.05];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __59__HULiveListenObserver__pollLiveListenAudioLevelAfterDelay__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyListenersAndPollAudioLevelIfLiveListenIsRunning];
}

@end